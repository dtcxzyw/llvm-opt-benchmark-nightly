Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/EDENQuantizer?download=true
inline.NumInlined: 299
inline.NumDeleted: 166
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN5faiss10eden_utils6decodeERKNS_15ScalarQuantizerEPKhPfmPKf:bb.a
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.x = load ptr, ptr %5, align 8, !tbaa !16
  %i.y = load i64, ptr %i.s, align 8, !tbaa !20
  %i.z = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.x, i64 noundef %i.y, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12) #18 ; 0 uses
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.v)
          to label %bb.j unwind label %bb.i

bb.i:                                             ; preds = %bb.k, %bb.h, %bb.g
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.j:                                             ; preds = %bb.h, %bb.f
  %i.ab = call ptr @__cxa_allocate_exception(i64 40) #18 ; 3 uses
  invoke void @_ZN5faiss14FaissExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSA_i(ptr noundef nonnull align 8 dereferenceable(40) %i.ab, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5faiss10eden_utils6decodeERKNS_15ScalarQuantizerEPKhPfmPKf, ptr noundef nonnull @.str.1, i32 noundef 830)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  invoke void @__cxa_throw(ptr nonnull %i.ab, ptr nonnull @_ZTIN5faiss14FaissExceptionE, ptr nonnull @_ZN5faiss14FaissExceptionD2Ev) #26
          to label %bb.r unwind label %bb.i

bb.l:                                             ; preds = %bb.j
  %i.ac = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ab) #18
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.i
  %.pn = phi { ptr, i32 } [ %i.aa, %bb.i ], [ %i.ac, %bb.l ]
  %i.ad = load ptr, ptr %5, align 8, !tbaa !16    ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.r
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.m
  %i.af = load i64, ptr %i.r, align 8, !tbaa !17
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ag) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  resume { ptr, i32 } %.pn

bb.n:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #18
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !43 ; 2 uses
  store i64 %i.ai, ptr %i.e, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #18
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !45
  store i64 %i.ak, ptr %i.f, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #18
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.am = load i64, ptr %i.al, align 8, !tbaa !44
  %i.an = tail call noundef i64 @_ZN5faiss10eden_utils16packed_code_sizeEmm(i64 noundef %i.ai, i64 noundef %i.am)
  %i.ao = add nuw nsw i64 %i.an, 8
  store i64 %i.ao, ptr %i.g, align 8, !tbaa !29
  %i.ap = icmp ugt i64 %3, 1000
  br i1 %i.ap, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @3, i32 8, ptr nonnull @_ZN5faiss10eden_utils6decodeERKNS_15ScalarQuantizerEPKhPfmPKf.omp_outlined, ptr nonnull %0, ptr nonnull %i.e, ptr nonnull %i.c, ptr nonnull %i.a, ptr nonnull %i.g, ptr nonnull %i.f, ptr nonnull %i.b, ptr nonnull %i.d)
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  tail call void @__kmpc_serialized_parallel(ptr nonnull @3, i32 %i.i)
  store i32 %i.i, ptr %i.h, align 4, !tbaa !47
  call void @_ZN5faiss10eden_utils6decodeERKNS_15ScalarQuantizerEPKhPfmPKf.omp_outlined(ptr nonnull %i.h, ptr nonnull poison, ptr %0, ptr %i.e, ptr %i.c, ptr %i.a, ptr %i.g, ptr %i.f, ptr %i.b, ptr %i.d) #18
  tail call void @__kmpc_end_serialized_parallel(ptr nonnull @3, i32 %i.i)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #18
  ret void

bb.r:                                             ; preds = %bb.k
  unreachable
}

; Function Attrs: noinline norecurse nounwind uwtable
define internal void @_ZN5faiss10eden_utils6decodeERKNS_15ScalarQuantizerEPKhPfmPKf.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr noundef nonnull align 8 dereferenceable(160) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %8, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %9) #17 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = invoke noundef ptr @_ZNK5faiss15ScalarQuantizer16select_quantizerEv(ptr noundef nonnull align 8 dereferenceable(160) %2)
          to label %bb.b unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

bb.b:                                             ; preds = %bb.a
  %i.f = load i64, ptr %3, align 8, !tbaa !29     ; 5 uses
  %i.g = icmp ugt i64 %i.f, 2305843009213693951
  br i1 %i.g, label %bb.c, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #26
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.c
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.b
  %.not.i.i.i.i = icmp eq i64 %i.f, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %i.h = shl nuw nsw i64 %i.f, 2
  %i.i = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #28
          to label %.noexc34 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc34:                                         ; preds = %bb.d
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.f ; 2 uses
  store float 0.000000e+00, ptr %i.i, align 4, !tbaa !46
  %i.k = add nsw i64 %i.f, -1                     ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc34
  %i.m = getelementptr i8, ptr %i.i, i64 4
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.k, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.m, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !46
  br label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit

_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc34, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.035.0 = phi ptr [ %i.i, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.i, %.noexc34 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ] ; 16 uses
  %.sroa.9.0 = phi ptr [ %i.j, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.j, %.noexc34 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ]
  %i.n = load i64, ptr %4, align 8, !tbaa !29     ; 2 uses
  %i.o = icmp sgt i64 %i.n, 0
  %.pre50 = load i32, ptr %0, align 4, !tbaa !47  ; 3 uses
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit
  %i.p = add nsw i64 %i.n, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i64 0, ptr %i.a, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  store i64 %i.p, ptr %i.b, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  store i64 1, ptr %i.c, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  store i32 0, ptr %i.d, align 4, !tbaa !47
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %.pre50, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i64 1, i64 1)
  %i.q = load i64, ptr %i.b, align 8, !tbaa !29
  %i.r = call i64 @llvm.smin.i64(i64 %i.q, i64 %i.p) ; 2 uses
  store i64 %i.r, ptr %i.b, align 8, !tbaa !29
  %i.s = load i64, ptr %i.a, align 8, !tbaa !29   ; 4 uses
  %.not41 = icmp sgt i64 %i.s, %i.r
  br i1 %.not41, label %._crit_edge45, label %.lr.ph44.preheader

.lr.ph44.preheader:                               ; preds = %bb.e
  %.pre = load i64, ptr %3, align 8, !tbaa !29
  br label %.lr.ph44

.lr.ph44:                                         ; preds = %.lr.ph44.preheader, %._crit_edge
  %indvar = phi i64 [ 0, %.lr.ph44.preheader ], [ %indvar.next, %._crit_edge ] ; 3 uses
  %i.t = phi i64 [ %.pre, %.lr.ph44.preheader ], [ %i.ag, %._crit_edge ] ; 3 uses
  %.03142 = phi i64 [ %i.s, %.lr.ph44.preheader ], [ %i.cu, %._crit_edge ] ; 4 uses
  %i.u = load ptr, ptr %5, align 8, !tbaa !28     ; 3 uses
  %i.v = load i64, ptr %6, align 8, !tbaa !29
  %i.w = mul i64 %i.v, %.03142                    ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.w ; 2 uses
  %i.y = load i64, ptr %7, align 8, !tbaa !29     ; 3 uses
  %i.z = getelementptr i8, ptr %i.x, i64 %i.y
  %i.aa = load ptr, ptr %8, align 8, !tbaa !27    ; 3 uses
  %i.ab = mul i64 %i.t, %.03142
  %i.ac = getelementptr [4 x i8], ptr %i.aa, i64 %i.ab ; 13 uses
  %i.ad = load ptr, ptr %i.e, align 8, !tbaa !22
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load ptr, ptr %i.ae, align 8
  invoke void %i.af(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef %i.x, ptr noundef %.sroa.035.0)
          to label %.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.preheader:                                       ; preds = %.lr.ph44
  %i.ag = load i64, ptr %3, align 8, !tbaa !29    ; 15 uses
  %.not46 = icmp eq i64 %i.ag, 0
  br i1 %.not46, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.ah = load ptr, ptr %9, align 8, !tbaa !27    ; 7 uses
  %.not33 = icmp eq ptr %i.ah, null
  %i.ai = getelementptr i8, ptr %i.z, i64 4       ; 10 uses
  %min.iters.check = icmp ult i64 %i.ag, 8        ; 2 uses
  br i1 %.not33, label %.lr.ph.split.us.preheader, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  br i1 %min.iters.check, label %.lr.ph.split.preheader114, label %vector.memcheck87

vector.memcheck87:                                ; preds = %.lr.ph.split.preheader
  %i.aj = add i64 %i.s, %indvar
  %i.ak = shl i64 %i.aj, 2
  %i.al = mul i64 %i.t, %i.ak
  %i.am = shl i64 %i.ag, 2                        ; 3 uses
  %i.an = getelementptr i8, ptr %i.aa, i64 %i.al
  %i.ao = getelementptr i8, ptr %i.an, i64 %i.am  ; 3 uses
  %i.ap = getelementptr i8, ptr %i.ah, i64 %i.am
  %10 = getelementptr i8, ptr %i.u, i64 %i.y
  %11 = getelementptr i8, ptr %10, i64 %i.w
  %12 = getelementptr i8, ptr %11, i64 8
  %i.aq = getelementptr i8, ptr %.sroa.035.0, i64 %i.am
  %bound088 = icmp ult ptr %i.ac, %i.ap
  %bound189 = icmp ult ptr %i.ah, %i.ao
  %found.conflict90 = and i1 %bound088, %bound189
  %bound091 = icmp ult ptr %i.ac, %12
  %bound192 = icmp ult ptr %i.ai, %i.ao
  %found.conflict93 = and i1 %bound091, %bound192
  %conflict.rdx94 = or i1 %found.conflict90, %found.conflict93
  %bound095 = icmp ult ptr %i.ac, %i.aq
  %bound196 = icmp ult ptr %.sroa.035.0, %i.ao
  %found.conflict97 = and i1 %bound095, %bound196
  %conflict.rdx98 = or i1 %conflict.rdx94, %found.conflict97
  br i1 %conflict.rdx98, label %.lr.ph.split.preheader114, label %vector.ph99

vector.ph99:                                      ; preds = %vector.memcheck87
  %n.vec100 = and i64 %i.ag, -8                   ; 3 uses
  %i.ar = load float, ptr %i.ai, align 1, !tbaa !52, !alias.scope !94
  %broadcast.splatinsert107 = insertelement <4 x float> poison, float %i.ar, i64 0
  %broadcast.splat108 = shufflevector <4 x float> %broadcast.splatinsert107, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body101

vector.body101:                                   ; preds = %vector.body101, %vector.ph99
  %index102 = phi i64 [ 0, %vector.ph99 ], [ %index.next109, %vector.body101 ] ; 4 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %index102 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %wide.load103 = load <4 x float>, ptr %i.as, align 4, !tbaa !46, !alias.scope !95
  %wide.load104 = load <4 x float>, ptr %i.at, align 4, !tbaa !46, !alias.scope !95
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %.sroa.035.0, i64 %index102 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %wide.load105 = load <4 x float>, ptr %i.au, align 4, !tbaa !46, !alias.scope !96
  %wide.load106 = load <4 x float>, ptr %i.av, align 4, !tbaa !46, !alias.scope !96
  %i.aw = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat108, <4 x float> %wide.load105, <4 x float> %wide.load103)
  %i.ax = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat108, <4 x float> %wide.load106, <4 x float> %wide.load104)
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %index102 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  store <4 x float> %i.aw, ptr %i.ay, align 4, !tbaa !46, !alias.scope !97, !noalias !98
  store <4 x float> %i.ax, ptr %i.az, align 4, !tbaa !46, !alias.scope !97, !noalias !98
  %index.next109 = add nuw i64 %index102, 8       ; 2 uses
  %i.ba = icmp eq i64 %index.next109, %n.vec100
  br i1 %i.ba, label %middle.block110, label %vector.body101, !llvm.loop !86

middle.block110:                                  ; preds = %vector.body101
  %cmp.n111 = icmp eq i64 %i.ag, %n.vec100
  br i1 %cmp.n111, label %._crit_edge, label %.lr.ph.split.preheader114

.lr.ph.split.preheader114:                        ; preds = %vector.memcheck87, %.lr.ph.split.preheader, %middle.block110
  %.040.ph = phi i64 [ 0, %vector.memcheck87 ], [ 0, %.lr.ph.split.preheader ], [ %n.vec100, %middle.block110 ] ; 6 uses
  %.neg = or disjoint i64 %.040.ph, 1
  %xtraiter = and i64 %i.ag, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.split.prol.loopexit, label %.lr.ph.split.prol

.lr.ph.split.prol:                                ; preds = %.lr.ph.split.preheader114
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %.040.ph
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !46
  %i.bd = load float, ptr %i.ai, align 1, !tbaa !52
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %.sroa.035.0, i64 %.040.ph
  %i.bf = load float, ptr %i.be, align 4, !tbaa !46
  %i.bg = call float @llvm.fmuladd.f32(float %i.bd, float %i.bf, float %i.bc)
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %.040.ph
  store float %i.bg, ptr %i.bh, align 4, !tbaa !46
  %i.bi = or disjoint i64 %.040.ph, 1
  br label %.lr.ph.split.prol.loopexit

.lr.ph.split.prol.loopexit:                       ; preds = %.lr.ph.split.prol, %.lr.ph.split.preheader114
  %.040.unr = phi i64 [ %.040.ph, %.lr.ph.split.preheader114 ], [ %i.bi, %.lr.ph.split.prol ]
  %i.bj = icmp eq i64 %i.ag, %.neg
  br i1 %i.bj, label %._crit_edge, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  br i1 %min.iters.check, label %.lr.ph.split.us.preheader113, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.split.us.preheader
  %i.bk = add i64 %i.s, %indvar
  %i.bl = shl i64 %i.bk, 2
  %i.bm = mul i64 %i.t, %i.bl
  %i.bn = shl i64 %i.ag, 2                        ; 2 uses
  %i.bo = getelementptr i8, ptr %i.aa, i64 %i.bm
  %i.bp = getelementptr i8, ptr %i.bo, i64 %i.bn  ; 2 uses
  %i.bq = getelementptr i8, ptr %i.u, i64 %i.y
  %i.br = getelementptr i8, ptr %i.bq, i64 %i.w
  %i.bs = getelementptr i8, ptr %i.br, i64 8
  %13 = getelementptr i8, ptr %.sroa.035.0, i64 %i.bn
  %bound0.a = icmp ult ptr %i.ac, %i.bs
  %bound1 = icmp ult ptr %i.ai, %i.bp
  %found.conflict = and i1 %bound0.a, %bound1
  %bound065 = icmp ult ptr %i.ac, %13
  %bound166 = icmp ult ptr %.sroa.035.0, %i.bp
  %found.conflict67 = and i1 %bound065, %bound166
  %conflict.rdx = or i1 %found.conflict, %found.conflict67
  br i1 %conflict.rdx, label %.lr.ph.split.us.preheader113, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ag, -8                      ; 3 uses
  %i.bt = load float, ptr %i.ai, align 1, !tbaa !52, !alias.scope !99
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.bt, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %.sroa.035.0, i64 %index ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %wide.load = load <4 x float>, ptr %i.bu, align 4, !tbaa !46, !alias.scope !100
  %wide.load68 = load <4 x float>, ptr %i.bv, align 4, !tbaa !46, !alias.scope !100
  %i.bw = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %wide.load, <4 x float> zeroinitializer)
  %i.bx = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %wide.load68, <4 x float> zeroinitializer)
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %index ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  store <4 x float> %i.bw, ptr %i.by, align 4, !tbaa !46, !alias.scope !101, !noalias !102
  store <4 x float> %i.bx, ptr %i.bz, align 4, !tbaa !46, !alias.scope !101, !noalias !102
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ca = icmp eq i64 %index.next, %n.vec
  br i1 %i.ca, label %middle.block, label %vector.body, !llvm.loop !91

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ag, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.split.us.preheader113

.lr.ph.split.us.preheader113:                     ; preds = %vector.memcheck, %.lr.ph.split.us.preheader, %middle.block
  %.040.us.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.split.us.preheader ], [ %n.vec, %middle.block ] ; 5 uses
  %.neg119 = or disjoint i64 %.040.us.ph, 1
  %xtraiter117 = and i64 %i.ag, 1
  %lcmp.mod118.not = icmp eq i64 %xtraiter117, 0
  br i1 %lcmp.mod118.not, label %.lr.ph.split.us.prol.loopexit, label %.lr.ph.split.us.prol

.lr.ph.split.us.prol:                             ; preds = %.lr.ph.split.us.preheader113
  %i.cb = load float, ptr %i.ai, align 1, !tbaa !52
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %.sroa.035.0, i64 %.040.us.ph
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !46
  %i.ce = call float @llvm.fmuladd.f32(float %i.cb, float %i.cd, float 0.000000e+00)
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %.040.us.ph
  store float %i.ce, ptr %i.cf, align 4, !tbaa !46
  %i.cg = or disjoint i64 %.040.us.ph, 1
  br label %.lr.ph.split.us.prol.loopexit

.lr.ph.split.us.prol.loopexit:                    ; preds = %.lr.ph.split.us.prol, %.lr.ph.split.us.preheader113
  %.040.us.unr = phi i64 [ %.040.us.ph, %.lr.ph.split.us.preheader113 ], [ %i.cg, %.lr.ph.split.us.prol ]
  %i.ch = icmp eq i64 %i.ag, %.neg119
  br i1 %i.ch, label %._crit_edge, label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.prol.loopexit, %.lr.ph.split.us
  %.040.us = phi i64 [ %i.ct, %.lr.ph.split.us ], [ %.040.us.unr, %.lr.ph.split.us.prol.loopexit ] ; 4 uses
  %i.ci = load float, ptr %i.ai, align 1, !tbaa !52
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.035.0, i64 %.040.us
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !46
  %i.cl = call float @llvm.fmuladd.f32(float %i.ci, float %i.ck, float 0.000000e+00)
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %.040.us
  store float %i.cl, ptr %i.cm, align 4, !tbaa !46
  %i.cn = add nuw i64 %.040.us, 1                 ; 2 uses
  %i.co = load float, ptr %i.ai, align 1, !tbaa !52
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %.sroa.035.0, i64 %i.cn
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !46
  %i.cr = call float @llvm.fmuladd.f32(float %i.co, float %i.cq, float 0.000000e+00)
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.cn
  store float %i.cr, ptr %i.cs, align 4, !tbaa !46
  %i.ct = add nuw i64 %.040.us, 2                 ; 2 uses
  %exitcond49.not.1 = icmp eq i64 %i.ct, %i.ag
  br i1 %exitcond49.not.1, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !92

._crit_edge:                                      ; preds = %.lr.ph.split.prol.loopexit, %.lr.ph.split, %.lr.ph.split.us.prol.loopexit, %.lr.ph.split.us, %middle.block110, %middle.block, %.preheader
  %i.cu = add nsw i64 %.03142, 1
  %i.cv = load i64, ptr %i.b, align 8, !tbaa !29
  %.not.not = icmp slt i64 %.03142, %i.cv
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.not, label %.lr.ph44, label %._crit_edge45

.lr.ph.split:                                     ; preds = %.lr.ph.split.prol.loopexit, %.lr.ph.split
  %.040 = phi i64 [ %i.dl, %.lr.ph.split ], [ %.040.unr, %.lr.ph.split.prol.loopexit ] ; 5 uses
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %.040
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !46
  %i.cy = load float, ptr %i.ai, align 1, !tbaa !52
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %.sroa.035.0, i64 %.040
  %i.da = load float, ptr %i.cz, align 4, !tbaa !46
  %i.db = call float @llvm.fmuladd.f32(float %i.cy, float %i.da, float %i.cx)
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %.040
  store float %i.db, ptr %i.dc, align 4, !tbaa !46
  %i.dd = add nuw i64 %.040, 1                    ; 3 uses
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.dd
  %i.df = load float, ptr %i.de, align 4, !tbaa !46
  %i.dg = load float, ptr %i.ai, align 1, !tbaa !52
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %.sroa.035.0, i64 %i.dd
  %i.di = load float, ptr %i.dh, align 4, !tbaa !46
  %i.dj = call float @llvm.fmuladd.f32(float %i.dg, float %i.di, float %i.df)
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.dd
  store float %i.dj, ptr %i.dk, align 4, !tbaa !46
  %i.dl = add nuw i64 %.040, 2                    ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.dl, %i.ag
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph.split, !llvm.loop !93

._crit_edge45:                                    ; preds = %._crit_edge, %bb.e
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %.pre50)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge45, %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit
  call void @__kmpc_barrier(ptr nonnull @2, i32 %.pre50)
  %.not.i.i.i = icmp eq ptr %.sroa.035.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.dm = ptrtoint ptr %.sroa.9.0 to i64
  %i.dn = ptrtoint ptr %.sroa.035.0 to i64
  %i.do = sub i64 %i.dm, %i.dn
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.035.0, i64 noundef %i.do) #27
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %bb.f, %bb.g
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN5faiss15ScalarQuantizer10SQuantizerESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN5faiss15ScalarQuantizer10SQuantizerEEclEPS2_.exit.i

_ZNKSt14default_deleteIN5faiss15ScalarQuantizer10SQuantizerEEclEPS2_.exit.i: ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit
  %i.dp = load ptr, ptr %i.e, align 8, !tbaa !22
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 24
  %i.dr = load ptr, ptr %i.dq, align 8
  call void %i.dr(ptr noundef nonnull align 8 dereferenceable(8) %i.e) #18, !inline_history !1
  br label %_ZNSt10unique_ptrIN5faiss15ScalarQuantizer10SQuantizerESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN5faiss15ScalarQuantizer10SQuantizerESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit, %_ZNKSt14default_deleteIN5faiss15ScalarQuantizer10SQuantizerEEclEPS2_.exit.i
  ret void

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph44, %bb.d, %bb.c, %bb.a
  %lpad.loopexit.split-lp116 = landingpad { ptr, i32 }
          catch ptr null
  %i.ds = extractvalue { ptr, i32 } %lpad.loopexit.split-lp116, 0
  call void @__clang_call_terminate(ptr %i.ds) #29
  unreachable
}

; Function Attrs: mustprogress uwtable
define noundef nonnull ptr @_ZN5faiss10eden_utils21get_distance_computerERKNS_15ScalarQuantizerENS_10MetricTypeEPKf(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(160) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !42
  %i.c = add i32 %i.b, -19
  %i.d = icmp ult i32 %i.c, 8
  br i1 %i.d, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.e, ptr %3, align 8, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 0, ptr %i.f, align 8, !tbaa !20
  store i8 0, ptr %i.e, align 8, !tbaa !17
  %i.g = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12) #18 ; 2 uses
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.i = zext nneg i32 %i.g to i64                ; 2 uses
  %i.j = add nuw nsw i64 %i.i, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.j)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %3, align 8, !tbaa !16
  %i.l = load i64, ptr %i.f, align 8, !tbaa !20
  %i.m = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.k, i64 noundef %i.l, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12) #18 ; 0 uses
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.i)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d, %bb.c
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.f:                                             ; preds = %bb.d, %bb.b
  %i.o = call ptr @__cxa_allocate_exception(i64 40) #18 ; 3 uses
  invoke void @_ZN5faiss14FaissExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSA_i(ptr noundef nonnull align 8 dereferenceable(40) %i.o, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5faiss10eden_utils21get_distance_computerERKNS_15ScalarQuantizerENS_10MetricTypeEPKf, ptr noundef nonnull @.str.1, i32 noundef 869)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  invoke void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTIN5faiss14FaissExceptionE, ptr nonnull @_ZN5faiss14FaissExceptionD2Ev) #26
          to label %bb.t unwind label %bb.e

bb.h:                                             ; preds = %bb.f
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.o) #18
  br label %bb.i
end_hunk_0
