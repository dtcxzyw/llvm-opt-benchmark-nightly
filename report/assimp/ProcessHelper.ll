Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/ProcessHelper?download=true
inline.NumInlined: 318
inline.NumDeleted: 153
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN6Assimp20ConvertListToStringsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS0_4listIS5_SaIS5_EEE:bb.a
  %i.as = sub i64 %i.h, %i.ar
  %scevgep.i.i.i = getelementptr i8, ptr %.0.lcssa.i.i, i64 %i.as
  br label %bb.n

bb.n:                                             ; preds = %bb.p, %bb.m
  %.0.i.i.i = phi ptr [ %.0.lcssa.i.i, %bb.m ], [ %i.au, %bb.p ] ; 4 uses
  %i.at = load i8, ptr %.0.i.i.i, align 1, !noalias !12
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
  %i.au = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 1
  br label %bb.n, !llvm.loop !6

_ZN6Assimp20SkipSpacesAndLineEndIcEEbPPKT_S3_.exit.i: ; preds = %bb.o, %bb.n
  %.0.lcssa.i.i.i = phi ptr [ %.0.i.i.i, %bb.n ], [ %scevgep.i.i.i, %bb.o ] ; 4 uses
  br label %bb.q

bb.q:                                             ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i, %_ZN6Assimp20SkipSpacesAndLineEndIcEEbPPKT_S3_.exit.i
  %storemerge.i = phi ptr [ %.0.lcssa.i.i.i, %_ZN6Assimp20SkipSpacesAndLineEndIcEEbPPKT_S3_.exit.i ], [ %i.aw, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i ] ; 4 uses
  %i.av = load i8, ptr %storemerge.i, align 1, !noalias !12
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
  br label %bb.q, !llvm.loop !10

bb.r:                                             ; preds = %bb.q, %bb.q, %bb.q, %bb.q, %bb.q, %bb.q
  %i.ax = ptrtoint ptr %storemerge.i to i64
  %i.ay = ptrtoint ptr %.0.lcssa.i.i.i to i64
  %i.az = sub i64 %i.ax, %i.ay                    ; 4 uses
  store ptr %i.i, ptr %2, align 8, !alias.scope !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17, !noalias !12
  store i64 %i.az, ptr %i.b, align 8, !noalias !12
  %i.ba = icmp ugt i64 %i.az, 15
  br i1 %i.ba, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.r
  %i.bb = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.bb, ptr %2, align 8, !alias.scope !12
  %i.bc = load i64, ptr %i.b, align 8, !noalias !12
  store i64 %i.bc, ptr %i.i, align 8, !alias.scope !12
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
  %i.bf = load i64, ptr %i.b, align 8, !noalias !12 ; 2 uses
  store i64 %i.bf, ptr %i.j, align 8, !alias.scope !12
  %i.bg = load ptr, ptr %2, align 8, !alias.scope !12
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bf
  store i8 0, ptr %i.bh, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17, !noalias !12
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
  br i1 %.not, label %.loopexit, label %bb.b, !llvm.loop !11

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
  %i.i = getelementptr inbounds nuw [12 x i8], ptr %i.h, i64 %indvars.iv ; 2 uses
  %i.j = load float, ptr %i.d, align 4
  %i.k = load float, ptr %i.e, align 4
  %i.l = load float, ptr %i.f, align 4
  %i.m = load float, ptr %i.g, align 4
  %4 = load <3 x float>, ptr %i.i, align 4        ; 5 uses
  %i.n = load float, ptr %i.i, align 4
  %i.o = load <8 x float>, ptr %3, align 4        ; 4 uses
  %5 = shufflevector <3 x float> %4, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.p = shufflevector <8 x float> %i.o, <8 x float> poison, <2 x i32> <i32 1, i32 5>
  %i.q = fmul <2 x float> %5, %i.p
  %i.r = shufflevector <8 x float> %i.o, <8 x float> poison, <2 x i32> <i32 0, i32 4>
  %i.s = shufflevector <3 x float> %4, <3 x float> poison, <2 x i32> zeroinitializer
  %i.t = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.r, <2 x float> %i.s, <2 x float> %i.q)
  %i.u = shufflevector <8 x float> %i.o, <8 x float> poison, <2 x i32> <i32 2, i32 6>
  %6 = shufflevector <3 x float> %4, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.v = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.u, <2 x float> %6, <2 x float> %i.t)
  %i.w = shufflevector <8 x float> %i.o, <8 x float> poison, <2 x i32> <i32 3, i32 7>
  %i.x = fadd <2 x float> %i.v, %i.w              ; 4 uses
  %7 = extractelement <3 x float> %4, i64 1
  %i.y = fmul float %7, %i.k
  %i.z = tail call float @llvm.fmuladd.f32(float %i.j, float %i.n, float %i.y)
  %8 = extractelement <3 x float> %4, i64 2
  %i.aa = tail call float @llvm.fmuladd.f32(float %i.l, float %8, float %i.z)
  %i.ab = fadd float %i.m, %i.aa                  ; 4 uses
  %i.ac = load <2 x float>, ptr %1, align 4       ; 2 uses
  %i.ad = fcmp olt <2 x float> %i.ac, %i.x
  %i.ae = select <2 x i1> %i.ad, <2 x float> %i.ac, <2 x float> %i.x
  %i.af = load float, ptr %.sroa.539.0..sroa_idx, align 4 ; 2 uses
  %i.ag = fcmp olt float %i.af, %i.ab
  %i.ah = select i1 %i.ag, float %i.af, float %i.ab
  store <2 x float> %i.ae, ptr %1, align 4
  store float %i.ah, ptr %.sroa.539.0..sroa_idx, align 4
  %i.ai = load <2 x float>, ptr %2, align 4       ; 2 uses
  %i.aj = fcmp olt <2 x float> %i.x, %i.ai
  %i.ak = select <2 x i1> %i.aj, <2 x float> %i.ai, <2 x float> %i.x
  %i.al = load float, ptr %.sroa.5.0..sroa_idx, align 4 ; 2 uses
  %i.am = fcmp olt float %i.ab, %i.al
  %i.an = select i1 %i.am, float %i.al, float %i.ab
  store <2 x float> %i.ak, ptr %2, align 4
  store float %i.an, ptr %.sroa.5.0..sroa_idx, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ao = load i32, ptr %i.a, align 4
  %i.ap = zext i32 %i.ao to i64
  %i.aq = icmp samesign ult i64 %indvars.iv.next, %i.ap
  br i1 %i.aq, label %bb.b, label %._crit_edge, !llvm.loop !0
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
  br i1 %exitcond.not.i, label %_ZN6Assimp11ArrayBoundsI10aiVector3tIfEEEvPKT_jRS3_S6_.exit.loopexit, label %.lr.ph.i, !llvm.loop !1

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
  %.sroa.046.0 = phi <2 x float> [ splat (float -1.000000e+10), %.lr.ph.preheader.i.i ], [ %i.ar, %.lr.ph.i.i ] ; 2 uses
  %.sroa.067.0 = phi <2 x float> [ splat (float 1.000000e+10), %.lr.ph.preheader.i.i ], [ %i.ap, %.lr.ph.i.i ] ; 2 uses
  %.sroa.1586.0 = phi float [ 1.000000e+10, %.lr.ph.preheader.i.i ], [ %i.am, %.lr.ph.i.i ] ; 2 uses
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %.lr.ph.i.i ] ; 2 uses
  %i.ai = getelementptr inbounds nuw [12 x i8], ptr %i.af, i64 %indvars.iv.i.i ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = load float, ptr %i.aj, align 4          ; 4 uses
  %i.al = fcmp olt float %.sroa.1586.0, %i.ak
  %i.am = select i1 %i.al, float %.sroa.1586.0, float %i.ak ; 2 uses
  %i.an = load <2 x float>, ptr %i.ai, align 4    ; 4 uses
  %i.ao = fcmp olt <2 x float> %.sroa.067.0, %i.an
  %i.ap = select <2 x i1> %i.ao, <2 x float> %.sroa.067.0, <2 x float> %i.an ; 2 uses
  %i.aq = fcmp olt <2 x float> %i.an, %.sroa.046.0
  %i.ar = select <2 x i1> %i.aq, <2 x float> %.sroa.046.0, <2 x float> %i.an ; 2 uses
  %i.as = fcmp olt float %i.ak, %.sroa.15.0
  %i.at = select i1 %i.as, float %.sroa.15.0, float %i.ak ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %_ZN6Assimp14FindMeshCenterEP6aiMeshR10aiVector3tIfES4_S4_.exit, label %.lr.ph.i.i, !llvm.loop !1

_ZN6Assimp14FindMeshCenterEP6aiMeshR10aiVector3tIfES4_S4_.exit: ; preds = %.lr.ph.i.i, %bb.d
  %.sroa.15.1 = phi float [ -1.000000e+10, %bb.d ], [ %i.at, %.lr.ph.i.i ] ; 3 uses
  %.sroa.046.1 = phi <2 x float> [ splat (float -1.000000e+10), %bb.d ], [ %i.ar, %.lr.ph.i.i ] ; 2 uses
  %.sroa.067.1 = phi <2 x float> [ splat (float 1.000000e+10), %bb.d ], [ %i.ap, %.lr.ph.i.i ] ; 2 uses
  %.sroa.1586.1 = phi float [ 1.000000e+10, %bb.d ], [ %i.am, %.lr.ph.i.i ] ; 2 uses
  %i.au = load float, ptr %2, align 4
  %.sroa.067.0.vec.extract74 = extractelement <2 x float> %.sroa.067.1, i64 0 ; 2 uses
  %i.av = fcmp ogt float %i.au, %.sroa.067.0.vec.extract74
  br i1 %i.av, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN6Assimp14FindMeshCenterEP6aiMeshR10aiVector3tIfES4_S4_.exit
  store float %.sroa.067.0.vec.extract74, ptr %2, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN6Assimp14FindMeshCenterEP6aiMeshR10aiVector3tIfES4_S4_.exit
  %i.aw = load float, ptr %i.l, align 4
  %.sroa.067.4.vec.extract83 = extractelement <2 x float> %.sroa.067.1, i64 1 ; 2 uses
  %i.ax = fcmp ogt float %i.aw, %.sroa.067.4.vec.extract83
  br i1 %i.ax, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store float %.sroa.067.4.vec.extract83, ptr %i.l, align 4
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ay = load float, ptr %i.m, align 4
  %i.az = fcmp ogt float %i.ay, %.sroa.1586.1
  br i1 %i.az, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store float %.sroa.1586.1, ptr %i.m, align 4
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ba = load float, ptr %3, align 4             ; 2 uses
  %.sroa.046.0.vec.extract53 = extractelement <2 x float> %.sroa.046.1, i64 0 ; 3 uses
  %i.bb = fcmp olt float %i.ba, %.sroa.046.0.vec.extract53
  br i1 %i.bb, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store float %.sroa.046.0.vec.extract53, ptr %3, align 4
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bc = phi float [ %.sroa.046.0.vec.extract53, %bb.k ], [ %i.ba, %bb.j ]
  %i.bd = load float, ptr %i.n, align 4           ; 2 uses
  %.sroa.046.4.vec.extract62 = extractelement <2 x float> %.sroa.046.1, i64 1 ; 3 uses
  %i.be = fcmp olt float %i.bd, %.sroa.046.4.vec.extract62
  br i1 %i.be, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store float %.sroa.046.4.vec.extract62, ptr %i.n, align 4
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bf = phi float [ %.sroa.046.4.vec.extract62, %bb.m ], [ %i.bd, %bb.l ]
  %i.bg = load float, ptr %i.j, align 4           ; 2 uses
  %i.bh = fcmp olt float %i.bg, %.sroa.15.1
  br i1 %i.bh, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store float %.sroa.15.1, ptr %i.j, align 4
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.bi = phi float [ %.sroa.15.1, %bb.o ], [ %i.bg, %bb.n ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bj = load i32, ptr %i.b, align 8
  %i.bk = zext i32 %i.bj to i64
  %i.bl = icmp samesign ult i64 %indvars.iv.next, %i.bk
  br i1 %i.bl, label %bb.d, label %._crit_edge.loopexit, !llvm.loop !13

bb.q:                                             ; preds = %bb.b, %bb.a, %._crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN6Assimp25FindMeshCenterTransformedEP6aiMeshR10aiVector3tIfES4_S4_RK12aiMatrix4x4tIfE(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(12) initializes((0, 12)) %1, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(12) initializes((0, 12)) %2, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(12) initializes((0, 12)) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %4) local_unnamed_addr #3 {
bb.a:
  tail call void @_ZN6Assimp19FindAABBTransformedEPK6aiMeshR10aiVector3tIfES5_RK12aiMatrix4x4tIfE(ptr noundef %0, ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 4 dereferenceable(12) %3, ptr noundef nonnull align 4 dereferenceable(64) %4)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load float, ptr %i.a, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load float, ptr %i.c, align 4            ; 2 uses
  %i.e = fsub float %i.b, %i.d
  %i.f = fmul float %i.e, 5.000000e-01
  %i.g = load <2 x float>, ptr %3, align 4
  %i.h = load <2 x float>, ptr %2, align 4        ; 2 uses
  %i.i = fsub <2 x float> %i.g, %i.h
  %i.j = fmul <2 x float> %i.i, splat (float 5.000000e-01)
  %i.k = fadd <2 x float> %i.h, %i.j
  %i.l = fadd float %i.d, %i.f
  store <2 x float> %i.k, ptr %1, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  store float %i.l, ptr %.sroa.4.0..sroa_idx, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN6Assimp14FindMeshCenterEP6aiMeshR10aiVector3tIfE(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(12) %1) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4              ; 2 uses
  %.not.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i, label %_ZN6Assimp14FindMeshCenterEP6aiMeshR10aiVector3tIfES4_S4_.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.a
  %wide.trip.count.i.i = zext i32 %i.d to i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %.sroa.1123.0 = phi float [ 1.000000e+10, %.lr.ph.preheader.i.i ], [ %i.i, %.lr.ph.i.i ] ; 2 uses
  %.sroa.012.0 = phi <2 x float> [ splat (float 1.000000e+10), %.lr.ph.preheader.i.i ], [ %i.q, %.lr.ph.i.i ] ; 2 uses
  %.sroa.11.0 = phi float [ -1.000000e+10, %.lr.ph.preheader.i.i ], [ %i.s, %.lr.ph.i.i ] ; 2 uses
  %.sroa.0.0 = phi <2 x float> [ splat (float -1.000000e+10), %.lr.ph.preheader.i.i ], [ %i.t, %.lr.ph.i.i ] ; 2 uses
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %.lr.ph.i.i ] ; 2 uses
  %i.e = getelementptr inbounds nuw [12 x i8], ptr %i.b, i64 %indvars.iv.i.i ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load float, ptr %i.f, align 4            ; 4 uses
  %i.h = fcmp olt float %.sroa.1123.0, %i.g
  %i.i = select i1 %i.h, float %.sroa.1123.0, float %i.g ; 2 uses
  %i.j = load <2 x float>, ptr %i.e, align 4      ; 3 uses
  %i.k = shufflevector <2 x float> %i.j, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0>
  %i.l = shufflevector <2 x float> %.sroa.012.0, <2 x float> %i.j, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.m = shufflevector <2 x float> %.sroa.0.0, <2 x float> %i.j, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.n = fcmp olt <4 x float> %i.l, %i.m
  %i.o = shufflevector <2 x float> %.sroa.0.0, <2 x float> %.sroa.012.0, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.p = select <4 x i1> %i.n, <4 x float> %i.o, <4 x float> %i.k ; 3 uses
  %i.q = shufflevector <4 x float> %i.p, <4 x float> poison, <2 x i32> <i32 3, i32 2>
  %i.r = fcmp olt float %i.g, %.sroa.11.0
  %i.s = select i1 %i.r, float %.sroa.11.0, float %i.g ; 2 uses
  %i.t = shufflevector <4 x float> %i.p, <4 x float> poison, <2 x i32> <i32 1, i32 0>
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %_ZN6Assimp14FindMeshCenterEP6aiMeshR10aiVector3tIfES4_S4_.exit, label %.lr.ph.i.i, !llvm.loop !1

_ZN6Assimp14FindMeshCenterEP6aiMeshR10aiVector3tIfES4_S4_.exit: ; preds = %.lr.ph.i.i, %bb.a
  %i.u = phi float [ 1.000000e+10, %bb.a ], [ %i.i, %.lr.ph.i.i ] ; 2 uses
  %i.v = phi float [ -1.000000e+10, %bb.a ], [ %i.s, %.lr.ph.i.i ]
  %i.w = phi <4 x float> [ <float -1.000000e+10, float -1.000000e+10, float 1.000000e+10, float 1.000000e+10>, %bb.a ], [ %i.p, %.lr.ph.i.i ] ; 2 uses
  %i.x = fsub float %i.v, %i.u
  %i.y = fmul float %i.x, 5.000000e-01
  %i.z = shufflevector <4 x float> %i.w, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.aa = shufflevector <4 x float> %i.w, <4 x float> poison, <2 x i32> <i32 2, i32 3> ; 2 uses
  %i.ab = fsub <2 x float> %i.z, %i.aa
  %i.ac = fmul <2 x float> %i.ab, splat (float 5.000000e-01)
  %i.ad = fadd <2 x float> %i.aa, %i.ac
  %i.ae = fadd float %i.u, %i.y
  %i.af = shufflevector <2 x float> %i.ad, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %i.af, ptr %1, align 4
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  store float %i.ae, ptr %.sroa.4.0..sroa_idx.i, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN6Assimp25FindMeshCenterTransformedEP6aiMeshR10aiVector3tIfERK12aiMatrix4x4tIfE(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(12) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %2) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4              ; 2 uses
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %_ZN6Assimp19FindAABBTransformedEPK6aiMeshR10aiVector3tIfES5_RK12aiMatrix4x4tIfE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.h = load ptr, ptr %i.c, align 8
  %i.i = load <8 x float>, ptr %2, align 4        ; 4 uses
  %i.j = load float, ptr %i.d, align 4
  %i.k = load float, ptr %i.e, align 4
  %i.l = load float, ptr %i.f, align 4
  %i.m = load float, ptr %i.g, align 4
  %i.n = zext i32 %i.b to i64
  %i.o = shufflevector <8 x float> %i.i, <8 x float> poison, <2 x i32> <i32 2, i32 6>
  %i.p = shufflevector <8 x float> %i.i, <8 x float> poison, <2 x i32> <i32 0, i32 4>
  %i.q = shufflevector <8 x float> %i.i, <8 x float> poison, <2 x i32> <i32 1, i32 5>
  %i.r = shufflevector <8 x float> %i.i, <8 x float> poison, <2 x i32> <i32 3, i32 7>
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i
  %.sroa.1125.0 = phi float [ f0x51BA43B7, %.lr.ph.i ], [ %i.ae, %bb.b ] ; 2 uses
  %.sroa.014.0 = phi <2 x float> [ splat (float f0x51BA43B7), %.lr.ph.i ], [ %i.ac, %bb.b ] ; 2 uses
  %.sroa.11.0 = phi float [ f0xD1BA43B7, %.lr.ph.i ], [ %i.ai, %bb.b ] ; 2 uses
  %.sroa.0.0 = phi <2 x float> [ splat (float f0xD1BA43B7), %.lr.ph.i ], [ %i.ag, %bb.b ] ; 2 uses
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.b ] ; 2 uses
  %i.s = getelementptr inbounds nuw [12 x i8], ptr %i.h, i64 %indvars.iv.i ; 2 uses
  %3 = load <3 x float>, ptr %i.s, align 4        ; 5 uses
  %i.t = load float, ptr %i.s, align 4
  %4 = shufflevector <3 x float> %3, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.u = fmul <2 x float> %4, %i.q
  %i.v = shufflevector <3 x float> %3, <3 x float> poison, <2 x i32> zeroinitializer
  %i.w = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.p, <2 x float> %i.v, <2 x float> %i.u)
  %5 = shufflevector <3 x float> %3, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %6 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.o, <2 x float> %5, <2 x float> %i.w)
  %7 = fadd <2 x float> %6, %i.r                  ; 4 uses
  %8 = extractelement <3 x float> %3, i64 1
  %i.x = fmul float %8, %i.k
  %i.y = tail call float @llvm.fmuladd.f32(float %i.j, float %i.t, float %i.x)
  %9 = extractelement <3 x float> %3, i64 2
  %i.z = tail call float @llvm.fmuladd.f32(float %i.l, float %9, float %i.y)
  %i.aa = fadd float %i.m, %i.z                   ; 4 uses
  %i.ab = fcmp olt <2 x float> %.sroa.014.0, %7
  %i.ac = select <2 x i1> %i.ab, <2 x float> %.sroa.014.0, <2 x float> %7 ; 2 uses
  %i.ad = fcmp olt float %.sroa.1125.0, %i.aa
  %i.ae = select i1 %i.ad, float %.sroa.1125.0, float %i.aa ; 2 uses
  %i.af = fcmp olt <2 x float> %7, %.sroa.0.0
  %i.ag = select <2 x i1> %i.af, <2 x float> %.sroa.0.0, <2 x float> %7 ; 2 uses
  %i.ah = fcmp olt float %i.aa, %.sroa.11.0
  %i.ai = select i1 %i.ah, float %.sroa.11.0, float %i.aa ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next.i, %i.n
  br i1 %exitcond.not, label %_ZN6Assimp19FindAABBTransformedEPK6aiMeshR10aiVector3tIfES5_RK12aiMatrix4x4tIfE.exit, label %bb.b, !llvm.loop !0

_ZN6Assimp19FindAABBTransformedEPK6aiMeshR10aiVector3tIfES5_RK12aiMatrix4x4tIfE.exit: ; preds = %bb.b, %bb.a
  %.sroa.1125.1 = phi float [ f0x51BA43B7, %bb.a ], [ %i.ae, %bb.b ] ; 2 uses
  %.sroa.014.1 = phi <2 x float> [ splat (float f0x51BA43B7), %bb.a ], [ %i.ac, %bb.b ] ; 2 uses
  %.sroa.11.1 = phi float [ f0xD1BA43B7, %bb.a ], [ %i.ai, %bb.b ]
  %.sroa.0.1 = phi <2 x float> [ splat (float f0xD1BA43B7), %bb.a ], [ %i.ag, %bb.b ]
  %i.aj = fsub float %.sroa.11.1, %.sroa.1125.1
  %i.ak = fmul float %i.aj, 5.000000e-01
  %i.al = fsub <2 x float> %.sroa.0.1, %.sroa.014.1
  %i.am = fmul <2 x float> %i.al, splat (float 5.000000e-01)
  %i.an = fadd <2 x float> %.sroa.014.1, %i.am
  %i.ao = fadd float %.sroa.1125.1, %i.ak
  store <2 x float> %i.an, ptr %1, align 4
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  store float %i.ao, ptr %.sroa.4.0..sroa_idx.i, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef float @_ZN6Assimp22ComputePositionEpsilonEPK6aiMesh(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4              ; 2 uses
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %_ZN6Assimp11ArrayBoundsI10aiVector3tIfEEEvPKT_jRS3_S6_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %wide.trip.count.i = zext i32 %i.d to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %.sroa.11.0 = phi float [ -1.000000e+10, %.lr.ph.preheader.i ], [ %i.p, %.lr.ph.i ] ; 2 uses
  %.sroa.02.0 = phi <2 x float> [ splat (float -1.000000e+10), %.lr.ph.preheader.i ], [ %i.n, %.lr.ph.i ] ; 2 uses
  %.sroa.014.0 = phi <2 x float> [ splat (float 1.000000e+10), %.lr.ph.preheader.i ], [ %i.l, %.lr.ph.i ] ; 2 uses
  %.sroa.1125.0 = phi float [ 1.000000e+10, %.lr.ph.preheader.i ], [ %i.i, %.lr.ph.i ] ; 2 uses
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 2 uses
  %i.e = getelementptr inbounds nuw [12 x i8], ptr %i.b, i64 %indvars.iv.i ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load float, ptr %i.f, align 4            ; 4 uses
  %i.h = fcmp olt float %.sroa.1125.0, %i.g
  %i.i = select i1 %i.h, float %.sroa.1125.0, float %i.g ; 2 uses
  %i.j = load <2 x float>, ptr %i.e, align 4      ; 4 uses
  %i.k = fcmp olt <2 x float> %.sroa.014.0, %i.j
  %i.l = select <2 x i1> %i.k, <2 x float> %.sroa.014.0, <2 x float> %i.j ; 2 uses
  %i.m = fcmp olt <2 x float> %i.j, %.sroa.02.0
  %i.n = select <2 x i1> %i.m, <2 x float> %.sroa.02.0, <2 x float> %i.j ; 2 uses
  %i.o = fcmp olt float %i.g, %.sroa.11.0
  %i.p = select i1 %i.o, float %.sroa.11.0, float %i.g ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN6Assimp11ArrayBoundsI10aiVector3tIfEEEvPKT_jRS3_S6_.exit.loopexit, label %.lr.ph.i, !llvm.loop !1

_ZN6Assimp11ArrayBoundsI10aiVector3tIfEEEvPKT_jRS3_S6_.exit.loopexit: ; preds = %.lr.ph.i
  %i.q = fsub float %i.p, %i.i
  br label %_ZN6Assimp11ArrayBoundsI10aiVector3tIfEEEvPKT_jRS3_S6_.exit

_ZN6Assimp11ArrayBoundsI10aiVector3tIfEEEvPKT_jRS3_S6_.exit: ; preds = %_ZN6Assimp11ArrayBoundsI10aiVector3tIfEEEvPKT_jRS3_S6_.exit.loopexit, %bb.a
  %.sroa.02.1 = phi <2 x float> [ splat (float -1.000000e+10), %bb.a ], [ %i.n, %_ZN6Assimp11ArrayBoundsI10aiVector3tIfEEEvPKT_jRS3_S6_.exit.loopexit ] ; 2 uses
  %.sroa.014.1 = phi <2 x float> [ splat (float 1.000000e+10), %bb.a ], [ %i.l, %_ZN6Assimp11ArrayBoundsI10aiVector3tIfEEEvPKT_jRS3_S6_.exit.loopexit ] ; 2 uses
  %i.r = phi float [ -2.000000e+10, %bb.a ], [ %i.q, %_ZN6Assimp11ArrayBoundsI10aiVector3tIfEEEvPKT_jRS3_S6_.exit.loopexit ] ; 2 uses
  %foldExtExtBinop = fsub <2 x float> %.sroa.02.1, %.sroa.014.1
  %i.s = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %foldExtExtBinop32 = fsub <2 x float> %.sroa.02.1, %.sroa.014.1 ; 2 uses
  %foldExtExtBinop34 = fmul <2 x float> %foldExtExtBinop32, %foldExtExtBinop32
  %i.t = extractelement <2 x float> %foldExtExtBinop34, i64 1
  %i.u = tail call float @llvm.fmuladd.f32(float %i.s, float %i.s, float %i.t)
  %i.v = tail call noundef float @llvm.fmuladd.f32(float %i.r, float %i.r, float %i.u)
  %sqrt.i = tail call noundef float @llvm.sqrt.f32(float %i.v)
  %i.w = fmul float %sqrt.i, f0x38D1B717
  ret float %i.w
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef float @_ZN6Assimp22ComputePositionEpsilonEPKPK6aiMeshm(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #5 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %_ZN6Assimp11ArrayBoundsI10aiVector3tIfEEEvPKT_jRS3_S6_.exit
  %i.a = fsub float %i.ag, %i.ac
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.sroa.051.0.lcssa = phi <2 x float> [ splat (float -1.000000e+10), %bb.a ], [ %i.ae, %._crit_edge.loopexit ] ; 2 uses
  %.sroa.064.0.lcssa = phi <2 x float> [ splat (float 1.000000e+10), %bb.a ], [ %i.aa, %._crit_edge.loopexit ] ; 2 uses
  %i.b = phi float [ -2.000000e+10, %bb.a ], [ %i.a, %._crit_edge.loopexit ] ; 2 uses
  %foldExtExtBinop = fsub <2 x float> %.sroa.051.0.lcssa, %.sroa.064.0.lcssa
  %i.c = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %foldExtExtBinop98 = fsub <2 x float> %.sroa.051.0.lcssa, %.sroa.064.0.lcssa ; 2 uses
  %foldExtExtBinop100 = fmul <2 x float> %foldExtExtBinop98, %foldExtExtBinop98
  %i.d = extractelement <2 x float> %foldExtExtBinop100, i64 1
  %i.e = tail call float @llvm.fmuladd.f32(float %i.c, float %i.c, float %i.d)
  %i.f = tail call noundef float @llvm.fmuladd.f32(float %i.b, float %i.b, float %i.e)
  %sqrt.i = tail call noundef float @llvm.sqrt.f32(float %i.f)
  %i.g = fmul float %sqrt.i, f0x38D1B717
  ret float %i.g

.lr.ph:                                           ; preds = %bb.a, %_ZN6Assimp11ArrayBoundsI10aiVector3tIfEEEvPKT_jRS3_S6_.exit
  %.082 = phi i64 [ %i.ah, %_ZN6Assimp11ArrayBoundsI10aiVector3tIfEEEvPKT_jRS3_S6_.exit ], [ 0, %bb.a ] ; 2 uses
  %.sroa.1175.081 = phi float [ %i.ac, %_ZN6Assimp11ArrayBoundsI10aiVector3tIfEEEvPKT_jRS3_S6_.exit ], [ 1.000000e+10, %bb.a ] ; 2 uses
  %.sroa.064.080 = phi <2 x float> [ %i.aa, %_ZN6Assimp11ArrayBoundsI10aiVector3tIfEEEvPKT_jRS3_S6_.exit ], [ splat (float 1.000000e+10), %bb.a ] ; 2 uses
  %.sroa.1162.079 = phi float [ %i.ag, %_ZN6Assimp11ArrayBoundsI10aiVector3tIfEEEvPKT_jRS3_S6_.exit ], [ -1.000000e+10, %bb.a ] ; 2 uses
  %.sroa.051.078 = phi <2 x float> [ %i.ae, %_ZN6Assimp11ArrayBoundsI10aiVector3tIfEEEvPKT_jRS3_S6_.exit ], [ splat (float -1.000000e+10), %bb.a ] ; 2 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.082
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.m = load i32, ptr %i.l, align 4              ; 2 uses
  %.not.i = icmp eq i32 %i.m, 0
  br i1 %.not.i, label %_ZN6Assimp11ArrayBoundsI10aiVector3tIfEEEvPKT_jRS3_S6_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.lr.ph
  %wide.trip.count.i = zext i32 %i.m to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %.sroa.1149.0 = phi float [ 1.000000e+10, %.lr.ph.preheader.i ], [ %i.r, %.lr.ph.i ] ; 2 uses
  %.sroa.038.1 = phi <2 x float> [ splat (float 1.000000e+10), %.lr.ph.preheader.i ], [ %i.u, %.lr.ph.i ] ; 2 uses
  %.sroa.11.0 = phi float [ -1.000000e+10, %.lr.ph.preheader.i ], [ %i.y, %.lr.ph.i ] ; 2 uses
  %.sroa.026.1 = phi <2 x float> [ splat (float -1.000000e+10), %.lr.ph.preheader.i ], [ %i.w, %.lr.ph.i ] ; 2 uses
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 2 uses
  %i.n = getelementptr inbounds nuw [12 x i8], ptr %i.k, i64 %indvars.iv.i ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load float, ptr %i.o, align 4            ; 4 uses
  %i.q = fcmp olt float %.sroa.1149.0, %i.p
  %i.r = select i1 %i.q, float %.sroa.1149.0, float %i.p ; 2 uses
  %i.s = load <2 x float>, ptr %i.n, align 4      ; 4 uses
  %i.t = fcmp olt <2 x float> %.sroa.038.1, %i.s
  %i.u = select <2 x i1> %i.t, <2 x float> %.sroa.038.1, <2 x float> %i.s ; 2 uses
  %i.v = fcmp olt <2 x float> %i.s, %.sroa.026.1
  %i.w = select <2 x i1> %i.v, <2 x float> %.sroa.026.1, <2 x float> %i.s ; 2 uses
  %i.x = fcmp olt float %i.p, %.sroa.11.0
  %i.y = select i1 %i.x, float %.sroa.11.0, float %i.p ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN6Assimp11ArrayBoundsI10aiVector3tIfEEEvPKT_jRS3_S6_.exit, label %.lr.ph.i, !llvm.loop !1

_ZN6Assimp11ArrayBoundsI10aiVector3tIfEEEvPKT_jRS3_S6_.exit: ; preds = %.lr.ph.i, %.lr.ph
  %.sroa.1149.1 = phi float [ 1.000000e+10, %.lr.ph ], [ %i.r, %.lr.ph.i ] ; 2 uses
  %.sroa.038.2 = phi <2 x float> [ splat (float 1.000000e+10), %.lr.ph ], [ %i.u, %.lr.ph.i ] ; 2 uses
  %.sroa.11.1 = phi float [ -1.000000e+10, %.lr.ph ], [ %i.y, %.lr.ph.i ] ; 2 uses
  %.sroa.026.2 = phi <2 x float> [ splat (float -1.000000e+10), %.lr.ph ], [ %i.w, %.lr.ph.i ] ; 2 uses
  %i.z = fcmp olt <2 x float> %.sroa.038.2, %.sroa.064.080
  %i.aa = select <2 x i1> %i.z, <2 x float> %.sroa.038.2, <2 x float> %.sroa.064.080 ; 2 uses
  %i.ab = fcmp olt float %.sroa.1149.1, %.sroa.1175.081
  %i.ac = select i1 %i.ab, float %.sroa.1149.1, float %.sroa.1175.081 ; 2 uses
  %i.ad = fcmp olt <2 x float> %.sroa.051.078, %.sroa.026.2
  %i.ae = select <2 x i1> %i.ad, <2 x float> %.sroa.026.2, <2 x float> %.sroa.051.078 ; 2 uses
  %i.af = fcmp olt float %.sroa.1162.079, %.sroa.11.1
  %i.ag = select i1 %i.af, float %.sroa.11.1, float %.sroa.1162.079 ; 2 uses
  %i.ah = add nuw i64 %.082, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.ah, %1
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !14
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef range(i32 -16777216, -2147483648) i32 @_ZN6Assimp20GetMeshVFormatUniqueEPK6aiMesh(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #6 {
_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit.thread:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8
  %.not.i = icmp ne ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4
  %.fr = freeze i32 %i.d
  %i.e = icmp ne i32 %.fr, 0                      ; 3 uses
  %i.f = and i1 %.not.i, %i.e
  %spec.select = select i1 %i.f, i32 3, i32 1     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load ptr, ptr %i.g, align 8
  %.not.i19 = icmp eq ptr %i.h, null
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load ptr, ptr %i.i, align 8
  %.not1.i = icmp eq ptr %i.j, null
  %or.cond.i = select i1 %.not.i19, i1 true, i1 %.not1.i
  %i.k = or disjoint i32 %spec.select, 4
  %spec.select25 = select i1 %i.e, i32 %i.k, i32 1
  %i.l = select i1 %or.cond.i, i32 %spec.select, i32 %spec.select25 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 176
  br i1 %i.e, label %.split.preheader, label %_ZNK6aiMesh15HasVertexColorsEj.exit.thread

.split.preheader:                                 ; preds = %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit.thread
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.o = load ptr, ptr %i.n, align 8
  %.not.i20.not = icmp eq ptr %i.o, null
  br i1 %.not.i20.not, label %_ZNK6aiMesh15HasVertexColorsEj.exit.preheader, label %.split.1

_ZNK6aiMesh15HasVertexColorsEj.exit.preheader:    ; preds = %.split.preheader, %.split.1, %.split.2, %.split.3, %.split.4, %.split.5, %.split.6, %.split.7, %bb.a
  %.us-phi.ph = phi i32 [ %.3.3, %.split.4 ], [ %.3.5, %.split.6 ], [ %.3.2, %.split.3 ], [ %.3.4, %.split.5 ], [ %.3.1, %.split.2 ], [ %.3.6, %.split.7 ], [ %.3, %.split.1 ], [ %i.l, %.split.preheader ], [ %.3.7, %bb.a ] ; 8 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.q = load ptr, ptr %i.p, align 8
  %.not.i21.not = icmp eq ptr %i.q, null
  br i1 %.not.i21.not, label %_ZNK6aiMesh15HasVertexColorsEj.exit.thread, label %_ZNK6aiMesh16HasTextureCoordsEj.exit
end_hunk_0
