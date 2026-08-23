Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/IndexIVFRaBitQFastScan?download=true
inline.NumInlined: 862
inline.NumDeleted: 408
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN5faiss22IndexIVFRaBitQFastScanC2ERKNS_14IndexIVFRaBitQEi.omp_outlined:bb.a
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 48
  %i.cx = load ptr, ptr %i.cw, align 8
  invoke void %i.cx(ptr noundef nonnull align 8 dereferenceable(25) %i.cg, i64 noundef %.05197, ptr noundef %i.ck)
          to label %_ZNSt10unique_ptrIN5faiss10CodePackerESt14default_deleteIS1_EED2Ev.exit unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cy = landingpad { ptr, i32 }
          catch ptr null
  %i.cz = extractvalue { ptr, i32 } %i.cy, 0
  call void @__clang_call_terminate(ptr %i.cz) #35
  unreachable

_ZNSt10unique_ptrIN5faiss10CodePackerESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.q
  call void @free(ptr noundef %.sroa.067.0) #18
  %i.da = load ptr, ptr %i.ar, align 8, !tbaa !9
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 48
  %i.dc = load ptr, ptr %i.db, align 8
  call void %i.dc(ptr noundef nonnull align 8 dereferenceable(32) %i.ar) #18, !inline_history !193
  %i.dd = load ptr, ptr %i.aj, align 8, !tbaa !9
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 40
  %i.df = load ptr, ptr %i.de, align 8
  invoke void %i.df(ptr noundef nonnull align 8 dereferenceable(25) %i.aj, i64 noundef %.05197, ptr noundef %i.an)
          to label %_ZN5faiss13InvertedLists11ScopedCodesD2Ev.exit unwind label %bb.s

bb.s:                                             ; preds = %_ZNSt10unique_ptrIN5faiss10CodePackerESt14default_deleteIS1_EED2Ev.exit
  %i.dg = landingpad { ptr, i32 }
          catch ptr null
  %i.dh = extractvalue { ptr, i32 } %i.dg, 0
  call void @__clang_call_terminate(ptr %i.dh) #35
  unreachable

_ZN5faiss13InvertedLists11ScopedCodesD2Ev.exit:   ; preds = %_ZNSt10unique_ptrIN5faiss10CodePackerESt14default_deleteIS1_EED2Ev.exit
  call void @free(ptr noundef %.sroa.080.0) #18
  br label %bb.t

bb.t:                                             ; preds = %bb.d, %_ZN5faiss13InvertedLists11ScopedCodesD2Ev.exit
  %i.di = add nsw i64 %.05197, 1
  %i.dj = load i64, ptr %i.d, align 8, !tbaa !18
  %.not.not = icmp slt i64 %.05197, %i.dj
  br i1 %.not.not, label %bb.c, label %._crit_edge100

._crit_edge100:                                   ; preds = %bb.t, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  br label %bb.u

bb.u:                                             ; preds = %._crit_edge100, %bb.a
  ret void

.loopexit:                                        ; preds = %bb.i
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr null
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %bb.o
  %lpad.loopexit88 = landingpad { ptr, i32 }
          catch ptr null
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %bb.c, %bb.h, %_ZN5faiss13InvertedLists9ScopedIdsC2EPKS0_m.exit, %_ZN5faiss12AlignedTableIhLi32EEC2Em.exit, %bb.n
  %lpad.loopexit91 = landingpad { ptr, i32 }
          catch ptr null
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.invoke
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit88, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit91, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.dk = extractvalue { ptr, i32 } %lpad.phi, 0
  call void @__clang_call_terminate(ptr %i.dk) #35
  unreachable
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_8(ptr, i32, i32, ptr, ptr, ptr, ptr, i64, i64) local_unnamed_addr #18

declare void @_ZN5faiss12rabitq_utils16set_bit_fastscanEPhm(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) local_unnamed_addr #18

; Function Attrs: nounwind
declare !callback !194 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #18

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) local_unnamed_addr #18

; Function Attrs: nounwind
declare void @__kmpc_serialized_parallel(ptr, i32) local_unnamed_addr #18

; Function Attrs: nounwind
declare void @__kmpc_end_serialized_parallel(ptr, i32) local_unnamed_addr #18

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5faiss9QuantizerD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #19 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5faiss9QuantizerD0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #19 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #35
  unreachable
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #20

; Function Attrs: nofree nounwind
declare i32 @posix_memalign(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: nounwind
declare void @_ZNSt9bad_allocD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #7

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #21

declare noundef i64 @_ZN5faiss12rabitq_utils31compute_per_vector_storage_sizeEmm(i64 noundef, i64 noundef) local_unnamed_addr #1

declare void @_ZN5faiss16CodePackerRaBitQC1Emmm(ptr noundef nonnull align 8 dereferenceable(48), i64 noundef, i64 noundef, i64 noundef) unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare ptr @__dynamic_cast(ptr, ptr, ptr, i64) local_unnamed_addr #22

declare noundef i64 @_ZNK5faiss16IndexIVFFastScan16get_block_strideEv(ptr noundef nonnull align 8 dereferenceable(352)) local_unnamed_addr #1

declare void @_ZN5faiss14RaBitQuantizer5trainEmPKf(ptr noundef nonnull align 8 dereferenceable(48), i64 noundef, ptr noundef) unnamed_addr #1

declare void @_ZN5faiss16IndexIVFFastScan16init_code_packerEv(ptr noundef nonnull align 8 dereferenceable(352)) local_unnamed_addr #1

declare noundef i64 @_ZNK5faiss15Level1Quantizer16coarse_code_sizeEv(ptr noundef nonnull align 8 dereferenceable(88)) local_unnamed_addr #1

; Function Attrs: noinline norecurse nounwind uwtable
define internal void @_ZNK5faiss22IndexIVFRaBitQFastScan14encode_vectorsElPKfPKlPhb.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr noundef %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %8, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %9, ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(1) %10) #23 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %11 = alloca %"struct.faiss::rabitq_utils::ExtraBitsFactors", align 8 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !55   ; 3 uses
  %i.g = sext i32 %i.f to i64                     ; 3 uses
  %i.h = icmp slt i32 %i.f, 0
  br i1 %i.h, label %.invoke, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %i.i = shl nuw nsw i64 %i.g, 2
  %i.j = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #34
          to label %.noexc58 unwind label %.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc58:                                         ; preds = %bb.b
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.g ; 2 uses
  store float 0.000000e+00, ptr %i.j, align 4, !tbaa !59
  %i.l = add nsw i64 %i.g, -1                     ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc58
  %i.n = getelementptr i8, ptr %i.j, i64 4
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.l, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.n, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !59
  br label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit

_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc58, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.12.0 = phi ptr [ %i.k, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.k, %.noexc58 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ]
  %.sroa.074.0 = phi ptr [ %i.j, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.j, %.noexc58 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ] ; 14 uses
  %.sroa.074.0115 = ptrtoaddr ptr %.sroa.074.0 to i64
  %i.o = load i64, ptr %3, align 8, !tbaa !18     ; 2 uses
  %i.p = icmp sgt i64 %i.o, 0
  %.pre97 = load i32, ptr %0, align 4, !tbaa !61  ; 3 uses
  br i1 %i.p, label %bb.c, label %bb.q

bb.c:                                             ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit
  %i.q = add nsw i64 %i.o, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i64 0, ptr %i.a, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  store i64 %i.q, ptr %i.b, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  store i64 1, ptr %i.c, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  store i32 0, ptr %i.d, align 4, !tbaa !61
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %.pre97, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i64 1, i64 1)
  %i.r = load i64, ptr %i.b, align 8, !tbaa !18
  %i.s = call i64 @llvm.smin.i64(i64 %i.r, i64 %i.q) ; 2 uses
  store i64 %i.s, ptr %i.b, align 8, !tbaa !18
  %i.t = load i64, ptr %i.a, align 8, !tbaa !18   ; 2 uses
  %.not88 = icmp sgt i64 %i.t, %i.s
  br i1 %.not88, label %._crit_edge92, label %.lr.ph91

.lr.ph91:                                         ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 384 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 392
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph91, %bb.p
  %.05389 = phi i64 [ %i.t, %.lr.ph91 ], [ %i.el, %bb.p ] ; 6 uses
  %i.x = shl i64 %.05389, 2
  %i.y = load ptr, ptr %4, align 8, !tbaa !62
  %i.z = getelementptr inbounds [8 x i8], ptr %i.y, i64 %.05389
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !18  ; 3 uses
  %i.ab = icmp sgt i64 %i.aa, -1
  br i1 %i.ab, label %bb.e, label %bb.p

bb.e:                                             ; preds = %bb.d
  %i.ac = load ptr, ptr %5, align 8, !tbaa !20    ; 2 uses
  %i.ad = ptrtoaddr ptr %i.ac to i64
  %i.ae = load i32, ptr %i.e, align 8, !tbaa !55
  %i.af = sext i32 %i.ae to i64                   ; 2 uses
  %i.ag = mul nsw i64 %.05389, %i.af
  %i.ah = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.ag ; 8 uses
  %i.ai = load ptr, ptr %6, align 8, !tbaa !19
  %i.aj = load i64, ptr %7, align 8, !tbaa !18
  %i.ak = mul i64 %i.aj, %.05389
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ak ; 2 uses
  %i.am = load i64, ptr %8, align 8, !tbaa !18
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.am ; 3 uses
  %i.ao = load ptr, ptr %i.u, align 8, !tbaa !157 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !9
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 128
  %i.ar = load ptr, ptr %i.aq, align 8
  invoke void %i.ar(ptr noundef nonnull align 8 dereferenceable(36) %i.ao, i64 noundef %i.aa, ptr noundef %.sroa.074.0)
          to label %bb.f unwind label %.loopexit.split-lp.loopexit

bb.f:                                             ; preds = %bb.e
  %i.as = load i32, ptr %i.e, align 8, !tbaa !55  ; 3 uses
  %i.at = add nsw i32 %i.as, 7
  %i.au = sdiv i32 %i.at, 8
  %i.av = sext i32 %i.au to i64                   ; 2 uses
  %.not93 = icmp eq i32 %i.as, 0
  br i1 %.not93, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.h, %bb.f
  %.lcssa = phi i64 [ 0, %bb.f ], [ %i.bi, %bb.h ]
  %i.aw = load i32, ptr %i.v, align 8, !tbaa !196
  %i.ax = load i64, ptr %9, align 8, !tbaa !18
  %i.ay = icmp ne i64 %i.ax, 0
  %i.az = invoke { <2 x float>, float } @_ZN5faiss12rabitq_utils22compute_vector_factorsEPKfmS2_NS_10MetricTypeEb(ptr noundef %i.ah, i64 noundef %.lcssa, ptr noundef %.sroa.074.0, i32 noundef %i.aw, i1 noundef zeroext %i.ay)
          to label %bb.i unwind label %.loopexit.split-lp.loopexit ; 2 uses

.lr.ph:                                           ; preds = %bb.f, %bb.h
  %i.ba = phi i32 [ %i.bg, %bb.h ], [ %i.as, %bb.f ]
  %.05484 = phi i64 [ %i.bh, %bb.h ], [ 0, %bb.f ] ; 4 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %.05484
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !59
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.074.0, i64 %.05484
  %i.be = load float, ptr %i.bd, align 4, !tbaa !59
  %i.bf = fcmp ogt float %i.bc, %i.be
  br i1 %i.bf, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph
  invoke void @_ZN5faiss12rabitq_utils16set_bit_fastscanEPhm(ptr noundef %i.an, i64 noundef %.05484)
          to label %._crit_edge96 unwind label %.loopexit

._crit_edge96:                                    ; preds = %bb.g
  %.pre = load i32, ptr %i.e, align 8, !tbaa !55
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge96, %.lr.ph
  %i.bg = phi i32 [ %.pre, %._crit_edge96 ], [ %i.ba, %.lr.ph ] ; 2 uses
  %i.bh = add nuw i64 %.05484, 1                  ; 2 uses
  %i.bi = sext i32 %i.bg to i64                   ; 2 uses
  %i.bj = icmp ult i64 %i.bh, %i.bi
  br i1 %i.bj, label %.lr.ph, label %._crit_edge, !llvm.loop !197

bb.i:                                             ; preds = %._crit_edge
  %.fca.0.extract = extractvalue { <2 x float>, float } %i.az, 0 ; 2 uses
  %i.bk = load i64, ptr %9, align 8, !tbaa !18
  %i.bl = icmp eq i64 %i.bk, 0
  br i1 %i.bl, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.av
  store <2 x float> %.fca.0.extract, ptr %i.bm, align 1
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

bb.k:                                             ; preds = %bb.i
  %.fca.1.extract = extractvalue { <2 x float>, float } %i.az, 1
  %i.bn = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.av ; 3 uses
  store <2 x float> %.fca.0.extract, ptr %i.bn, align 1
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store float %.fca.1.extract, ptr %.sroa.5.0..sroa_idx, align 1
  %i.bo = load i32, ptr %i.e, align 8, !tbaa !55  ; 5 uses
  %i.bp = sext i32 %i.bo to i64                   ; 10 uses
  %i.bq = icmp slt i32 %i.bo, 0
  br i1 %i.bq, label %.invoke, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i59

.invoke:                                          ; preds = %bb.k, %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.26) #33
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i59: ; preds = %bb.k
  %.not.i.i.i.i60 = icmp eq i32 %i.bo, 0
  br i1 %.not.i.i.i.i60, label %._crit_edge87, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i59
  %i.br = shl nuw nsw i64 %i.bp, 2
  %i.bs = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.br) #34
          to label %.noexc66 unwind label %.loopexit.split-lp.loopexit ; 11 uses

.noexc66:                                         ; preds = %bb.l
  %i.bt = ptrtoaddr ptr %i.bs to i64              ; 2 uses
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %i.bp
  store float 0.000000e+00, ptr %i.bs, align 4, !tbaa !59
  %i.bv = add nsw i64 %i.bp, -1                   ; 2 uses
  %i.bw = icmp eq i64 %i.bv, 0
  br i1 %i.bw, label %.lr.ph86.preheader, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i61

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i61: ; preds = %.noexc66
  %i.bx = getelementptr i8, ptr %i.bs, i64 4
  %.idx.i.i.i.i.i.i.i62 = shl nuw nsw i64 %i.bv, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.bx, i8 0, i64 %.idx.i.i.i.i.i.i.i62, i1 false), !tbaa !59
  br label %.lr.ph86.preheader

.lr.ph86.preheader:                               ; preds = %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i61, %.noexc66
  %min.iters.check = icmp ult i32 %i.bo, 8
  br i1 %min.iters.check, label %.lr.ph86.preheader120, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph86.preheader
  %i.by = mul i64 %i.x, %i.af
  %i.bz = add i64 %i.by, %i.ad
  %i.ca = sub i64 %i.bz, %i.bt
  %diff.check = icmp ugt i64 %i.ca, -32
  %i.cb = sub i64 %.sroa.074.0115, %i.bt
  %diff.check116 = icmp ugt i64 %i.cb, -32
  %conflict.rdx = or i1 %diff.check, %diff.check116
  br i1 %conflict.rdx, label %.lr.ph86.preheader120, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bp, 2147483640              ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %index ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %wide.load = load <4 x float>, ptr %i.cc, align 4, !tbaa !59
  %wide.load117 = load <4 x float>, ptr %i.cd, align 4, !tbaa !59
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %.sroa.074.0, i64 %index ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %wide.load118 = load <4 x float>, ptr %i.ce, align 4, !tbaa !59
  %wide.load119 = load <4 x float>, ptr %i.cf, align 4, !tbaa !59
  %i.cg = fsub <4 x float> %wide.load, %wide.load118
  %i.ch = fsub <4 x float> %wide.load117, %wide.load119
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %index ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  store <4 x float> %i.cg, ptr %i.ci, align 4, !tbaa !59
  store <4 x float> %i.ch, ptr %i.cj, align 4, !tbaa !59
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ck = icmp eq i64 %index.next, %n.vec
  br i1 %i.ck, label %middle.block, label %vector.body, !llvm.loop !198

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.bp
  br i1 %cmp.n, label %._crit_edge87.loopexit, label %.lr.ph86.preheader120

.lr.ph86.preheader120:                            ; preds = %vector.memcheck, %.lr.ph86.preheader, %middle.block
  %.085.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph86.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.bp, 3
  %i.cl = and i32 %i.bo, 3
  %lcmp.mod.not = icmp eq i32 %i.cl, 0
  br i1 %lcmp.mod.not, label %.lr.ph86.prol.loopexit, label %.lr.ph86.prol

.lr.ph86.prol:                                    ; preds = %.lr.ph86.preheader120, %.lr.ph86.prol
  %.085.prol = phi i64 [ %i.cs, %.lr.ph86.prol ], [ %.085.ph, %.lr.ph86.preheader120 ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph86.prol ], [ 0, %.lr.ph86.preheader120 ]
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %.085.prol
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !59
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %.sroa.074.0, i64 %.085.prol
  %i.cp = load float, ptr %i.co, align 4, !tbaa !59
  %i.cq = fsub float %i.cn, %i.cp
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %.085.prol
  store float %i.cq, ptr %i.cr, align 4, !tbaa !59
  %i.cs = add nuw i64 %.085.prol, 1               ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph86.prol.loopexit, label %.lr.ph86.prol, !llvm.loop !199

.lr.ph86.prol.loopexit:                           ; preds = %.lr.ph86.prol, %.lr.ph86.preheader120
  %.085.unr = phi i64 [ %.085.ph, %.lr.ph86.preheader120 ], [ %i.cs, %.lr.ph86.prol ]
  %i.ct = sub nsw i64 %.085.ph, %i.bp
  %i.cu = icmp ugt i64 %i.ct, -4
  br i1 %i.cu, label %._crit_edge87.loopexit, label %.lr.ph86

._crit_edge87.loopexit:                           ; preds = %.lr.ph86.prol.loopexit, %.lr.ph86, %middle.block
  %i.cv = ptrtoint ptr %i.bu to i64
  br label %._crit_edge87

._crit_edge87:                                    ; preds = %._crit_edge87.loopexit, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i59
  %.sroa.9.0112 = phi i64 [ 0, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i59 ], [ %i.cv, %._crit_edge87.loopexit ]
  %.sroa.070.0110 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i59 ], [ %i.bs, %._crit_edge87.loopexit ] ; 4 uses
  %i.cw = load i64, ptr %9, align 8, !tbaa !18
  %i.cx = getelementptr inbounds nuw i8, ptr %i.bn, i64 12 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  store <2 x float> zeroinitializer, ptr %11, align 8, !tbaa !59
  %i.cy = load i64, ptr %i.w, align 8, !tbaa !64
  %i.cz = load i32, ptr %i.v, align 8, !tbaa !196
  invoke void @_ZN5faiss15rabitq_multibit16quantize_ex_bitsEPKfmmPhRNS_12rabitq_utils16ExtraBitsFactorsENS_10MetricTypeES2_(ptr noundef %.sroa.070.0110, i64 noundef %i.bp, i64 noundef %i.cy, ptr noundef nonnull %i.cx, ptr noundef nonnull align 1 dereferenceable(8) %11, i32 noundef %i.cz, ptr noundef %.sroa.074.0)
          to label %bb.m unwind label %.loopexit.split-lp.loopexit

.lr.ph86:                                         ; preds = %.lr.ph86.prol.loopexit, %.lr.ph86
  %.085 = phi i64 [ %i.eb, %.lr.ph86 ], [ %.085.unr, %.lr.ph86.prol.loopexit ] ; 7 uses
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %.085
  %i.db = load float, ptr %i.da, align 4, !tbaa !59
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %.sroa.074.0, i64 %.085
  %i.dd = load float, ptr %i.dc, align 4, !tbaa !59
  %i.de = fsub float %i.db, %i.dd
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %.085
  store float %i.de, ptr %i.df, align 4, !tbaa !59
  %i.dg = add nuw i64 %.085, 1                    ; 3 uses
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.dg
  %i.di = load float, ptr %i.dh, align 4, !tbaa !59
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.074.0, i64 %i.dg
  %i.dk = load float, ptr %i.dj, align 4, !tbaa !59
  %i.dl = fsub float %i.di, %i.dk
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %i.dg
  store float %i.dl, ptr %i.dm, align 4, !tbaa !59
  %i.dn = add nuw i64 %.085, 2                    ; 3 uses
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.dn
  %i.dp = load float, ptr %i.do, align 4, !tbaa !59
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.074.0, i64 %i.dn
  %i.dr = load float, ptr %i.dq, align 4, !tbaa !59
  %i.ds = fsub float %i.dp, %i.dr
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %i.dn
  store float %i.ds, ptr %i.dt, align 4, !tbaa !59
  %i.du = add nuw i64 %.085, 3                    ; 3 uses
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.du
  %i.dw = load float, ptr %i.dv, align 4, !tbaa !59
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %.sroa.074.0, i64 %i.du
  %i.dy = load float, ptr %i.dx, align 4, !tbaa !59
  %i.dz = fsub float %i.dw, %i.dy
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %i.du
  store float %i.dz, ptr %i.ea, align 4, !tbaa !59
  %i.eb = add nuw i64 %.085, 4                    ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.eb, %i.bp
  br i1 %exitcond.not.3, label %._crit_edge87.loopexit, label %.lr.ph86, !llvm.loop !200

bb.m:                                             ; preds = %._crit_edge87
  %i.ec = mul i64 %i.cw, %i.bp
  %i.ed = add i64 %i.ec, 7
  %i.ee = lshr i64 %i.ed, 3
  %i.ef = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.ee
  %i.eg = load i64, ptr %11, align 8
  store i64 %i.eg, ptr %i.ef, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  %.not.i.i.i = icmp eq ptr %.sroa.070.0110, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.eh = ptrtoint ptr %.sroa.070.0110 to i64
  %i.ei = sub i64 %.sroa.9.0112, %i.eh
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.070.0110, i64 noundef %i.ei) #32
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %bb.n, %bb.m, %bb.j
  %i.ej = load i8, ptr %10, align 1, !tbaa !63, !range !27, !noundef !28
  %i.ek = trunc nuw i8 %i.ej to i1
  br i1 %i.ek, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit
  invoke void @_ZNK5faiss15Level1Quantizer13encode_listnoElPh(ptr noundef nonnull align 8 dereferenceable(88) %i.u, i64 noundef %i.aa, ptr noundef nonnull %i.al)
          to label %bb.p unwind label %.loopexit.split-lp.loopexit

bb.p:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit, %bb.o, %bb.d
  %i.el = add nsw i64 %.05389, 1
  %i.em = load i64, ptr %i.b, align 8, !tbaa !18
  %.not.not = icmp slt i64 %.05389, %i.em
  br i1 %.not.not, label %bb.d, label %._crit_edge92

._crit_edge92:                                    ; preds = %bb.p, %bb.c
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %.pre97)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge92, %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit
  call void @__kmpc_barrier(ptr nonnull @3, i32 %.pre97)
  %.not.i.i.i68 = icmp eq ptr %.sroa.074.0, null
  br i1 %.not.i.i.i68, label %_ZNSt6vectorIfSaIfEED2Ev.exit69, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.en = ptrtoint ptr %.sroa.12.0 to i64
  %i.eo = ptrtoint ptr %.sroa.074.0 to i64
  %i.ep = sub i64 %i.en, %i.eo
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.074.0, i64 noundef %i.ep) #32
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit69

_ZNSt6vectorIfSaIfEED2Ev.exit69:                  ; preds = %bb.q, %bb.r
  ret void

.loopexit:                                        ; preds = %bb.g
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr null
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %bb.l, %bb.o, %._crit_edge87, %._crit_edge, %bb.e
  %lpad.loopexit80 = landingpad { ptr, i32 }
          catch ptr null
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %.invoke, %bb.b
  %lpad.loopexit.split-lp81 = landingpad { ptr, i32 }
          catch ptr null
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit80, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp81, %.loopexit.split-lp.loopexit.split-lp ]
  %i.eq = extractvalue { ptr, i32 } %lpad.phi, 0
  call void @__clang_call_terminate(ptr %i.eq) #35
  unreachable
}

declare { <2 x float>, float } @_ZN5faiss12rabitq_utils22compute_vector_factorsEPKfmS2_NS_10MetricTypeEb(ptr noundef, i64 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

declare void @_ZN5faiss15rabitq_multibit16quantize_ex_bitsEPKfmmPhRNS_12rabitq_utils16ExtraBitsFactorsENS_10MetricTypeES2_(ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef nonnull align 1 dereferenceable(8), i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @_ZNK5faiss15Level1Quantizer13encode_listnoElPh(ptr noundef nonnull align 8 dereferenceable(88), i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: convergent nounwind
declare void @__kmpc_barrier(ptr, i32) local_unnamed_addr #24

; Function Attrs: mustprogress uwtable
define void @_ZNK5faiss22IndexIVFRaBitQFastScan20compute_residual_LUTEPKflRNS_12rabitq_utils16QueryFactorsDataEPfhbRSt6vectorIfSaIfEESA_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(402) %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(56) %3, ptr nofree noundef writeonly captures(none) %4, i8 noundef zeroext %5, i1 noundef zeroext %6, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %8) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %"class.std::vector.33", align 8   ; 10 uses
  %11 = alloca %"struct.faiss::rabitq_utils::QueryFactorsData", align 8 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !55   ; 5 uses
  %i.d = sext i32 %i.c to i64                     ; 27 uses
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  %i.e = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  store ptr %i.e, ptr %9, align 8, !tbaa !29
  %i.f = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store i64 0, ptr %i.f, align 8, !tbaa !30
  store i8 0, ptr %i.e, align 8, !tbaa !17
  %i.g = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.27) #18 ; 2 uses
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.i = zext nneg i32 %i.g to i64                ; 2 uses
  %i.j = add nuw nsw i64 %i.i, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %9, i64 noundef %i.j)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %9, align 8, !tbaa !11
  %i.l = load i64, ptr %i.f, align 8, !tbaa !30
  %i.m = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.k, i64 noundef %i.l, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.27) #18 ; 0 uses
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %9, i64 noundef %i.i)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d, %bb.c
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.f:                                             ; preds = %bb.d, %bb.b
  %i.o = call ptr @__cxa_allocate_exception(i64 40) #18 ; 3 uses
  invoke void @_ZN5faiss14FaissExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSA_i(ptr noundef nonnull align 8 dereferenceable(40) %i.o, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK5faiss22IndexIVFRaBitQFastScan20compute_residual_LUTEPKflRNS_12rabitq_utils16QueryFactorsDataEPfhbRSt6vectorIfSaIfEESA_, ptr noundef nonnull @.str.2, i32 noundef 406)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  invoke void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTIN5faiss14FaissExceptionE, ptr nonnull @_ZN5faiss14FaissExceptionD2Ev) #33
          to label %bb.bb unwind label %bb.e

bb.h:                                             ; preds = %bb.f
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.o) #18
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  %.pn = phi { ptr, i32 } [ %i.n, %bb.e ], [ %i.p, %bb.h ]
  %i.q = load ptr, ptr %9, align 8, !tbaa !11     ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.e
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  %i.s = load i64, ptr %i.e, align 8, !tbaa !17
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  br label %bb.ba

bb.j:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !60   ; 2 uses
  %i.w = load ptr, ptr %7, align 8, !tbaa !56     ; 2 uses
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = ashr exact i64 %i.z, 2                  ; 3 uses
  %i.ab = icmp ult i64 %i.aa, %i.d
  br i1 %i.ab, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ac = sub nuw nsw i64 %i.d, %i.aa
  tail call void @_ZNSt6vectorIfSaIfEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %7, i64 noundef %i.ac)
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit

bb.l:                                             ; preds = %bb.j
  %i.ad = icmp ugt i64 %i.aa, %i.d
  br i1 %i.ad, label %bb.m, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit

bb.m:                                             ; preds = %bb.l
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.d ; 2 uses
  %.not.i.i = icmp eq ptr %i.v, %i.ae
  br i1 %.not.i.i, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit, label %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.m
  store ptr %i.ae, ptr %i.u, align 8, !tbaa !60
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit

_ZNSt6vectorIfSaIfEE6resizeEm.exit:               ; preds = %bb.k, %bb.l, %bb.m, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !60 ; 2 uses
  %i.ah = load ptr, ptr %8, align 8, !tbaa !56    ; 2 uses
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = ashr exact i64 %i.ak, 2                 ; 3 uses
  %i.am = icmp ult i64 %i.al, %i.d
  br i1 %i.am, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit
  %i.an = sub nuw nsw i64 %i.d, %i.al
  tail call void @_ZNSt6vectorIfSaIfEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %8, i64 noundef %i.an)
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit148

bb.o:                                             ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit
  %i.ao = icmp ugt i64 %i.al, %i.d
  br i1 %i.ao, label %bb.p, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit148

bb.p:                                             ; preds = %bb.o
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.d ; 2 uses
  %.not.i.i146 = icmp eq ptr %i.ag, %i.ap
  br i1 %.not.i.i146, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit148, label %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i147

_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i147:     ; preds = %bb.p
  store ptr %i.ap, ptr %i.af, align 8, !tbaa !60
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit148

_ZNSt6vectorIfSaIfEE6resizeEm.exit148:            ; preds = %bb.n, %bb.o, %bb.p, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i147
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  %i.aq = icmp slt i32 %i.c, 0
  br i1 %i.aq, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit148
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.26) #33
          to label %.noexc unwind label %bb.u

.noexc:                                           ; preds = %bb.q
  unreachable

bb.r:                                             ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit148
end_hunk_0
begin_hunk_1_@_ZN5faiss6rabitq24lut_quantize_16_to_uint8ILNS_9SIMDLevelE0EEEvPKfffPh:bb.a
  br label %_ZN5faiss6rabitq29round_nonnegative_byte_scalarEf.exit.9

_ZN5faiss6rabitq29round_nonnegative_byte_scalarEf.exit.9: ; preds = %bb.u, %bb.t, %_ZN5faiss6rabitq29round_nonnegative_byte_scalarEf.exit.8
  %.0.i.i.9 = phi i8 [ %i.cs, %bb.u ], [ 0, %_ZN5faiss6rabitq29round_nonnegative_byte_scalarEf.exit.8 ], [ -1, %bb.t ]
  %i.ct = getelementptr inbounds nuw i8, ptr %3, i64 9
  store i8 %.0.i.i.9, ptr %i.ct, align 1, !tbaa !17
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !59
  %i.cw = fsub float %i.cv, %1
  %i.cx = fmul float %2, %i.cw                    ; 3 uses
  %i.cy = fcmp ugt float %i.cx, 0.000000e+00
  br i1 %i.cy, label %bb.v, label %_ZN5faiss6rabitq29round_nonnegative_byte_scalarEf.exit.10

bb.v:                                             ; preds = %_ZN5faiss6rabitq29round_nonnegative_byte_scalarEf.exit.9
  %i.cz = fcmp ult float %i.cx, 2.550000e+02
  br i1 %i.cz, label %bb.w, label %_ZN5faiss6rabitq29round_nonnegative_byte_scalarEf.exit.10

bb.w:                                             ; preds = %bb.v
  %i.da = fadd float %i.cx, 5.000000e-01
  %i.db = fptosi float %i.da to i32
  %i.dc = trunc i32 %i.db to i8
  br label %_ZN5faiss6rabitq29round_nonnegative_byte_scalarEf.exit.10

_ZN5faiss6rabitq29round_nonnegative_byte_scalarEf.exit.10: ; preds = %bb.w, %bb.v, %_ZN5faiss6rabitq29round_nonnegative_byte_scalarEf.exit.9
  %.0.i.i.10 = phi i8 [ %i.dc, %bb.w ], [ 0, %_ZN5faiss6rabitq29round_nonnegative_byte_scalarEf.exit.9 ], [ -1, %bb.v ]
  %i.dd = getelementptr inbounds nuw i8, ptr %3, i64 10
  store i8 %.0.i.i.10, ptr %i.dd, align 1, !tbaa !17
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.df = load float, ptr %i.de, align 4, !tbaa !59
  %i.dg = fsub float %i.df, %1
  %i.dh = fmul float %2, %i.dg                    ; 3 uses
  %i.di = fcmp ugt float %i.dh, 0.000000e+00
  br i1 %i.di, label %bb.x, label %_ZN5faiss6rabitq29round_nonnegative_byte_scalarEf.exit.11

bb.x:                                             ; preds = %_ZN5faiss6rabitq29round_nonnegative_byte_scalarEf.exit.10
  %i.dj = fcmp ult float %i.dh, 2.550000e+02
  br i1 %i.dj, label %bb.y, label %_ZN5faiss6rabitq29round_nonnegative_byte_scalarEf.exit.11

bb.y:                                             ; preds = %bb.x
  %i.dk = fadd float %i.dh, 5.000000e-01
  %i.dl = fptosi float %i.dk to i32
  %i.dm = trunc i32 %i.dl to i8
  br label %_ZN5faiss6rabitq29round_nonnegative_byte_scalarEf.exit.11

_ZN5faiss6rabitq29round_nonnegative_byte_scalarEf.exit.11: ; preds = %bb.y, %bb.x, %_ZN5faiss6rabitq29round_nonnegative_byte_scalarEf.exit.10
  %.0.i.i.11 = phi i8 [ %i.dm, %bb.y ], [ 0, %_ZN5faiss6rabitq29round_nonnegative_byte_scalarEf.exit.10 ], [ -1, %bb.x ]
  %i.dn = getelementptr inbounds nuw i8, ptr %3, i64 11
  store i8 %.0.i.i.11, ptr %i.dn, align 1, !tbaa !17
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.dp = load float, ptr %i.do, align 4, !tbaa !59
  %i.dq = fsub float %i.dp, %1
  %i.dr = fmul float %2, %i.dq                    ; 3 uses
  %i.ds = fcmp ugt float %i.dr, 0.000000e+00
  br i1 %i.ds, label %bb.z, label %_ZN5faiss6rabitq29round_nonnegative_byte_scalarEf.exit.12

bb.z:                                             ; preds = %_ZN5faiss6rabitq29round_nonnegative_byte_scalarEf.exit.11
  %i.dt = fcmp ult float %i.dr, 2.550000e+02
  br i1 %i.dt, label %bb.aa, label %_ZN5faiss6rabitq29round_nonnegative_byte_scalarEf.exit.12

bb.aa:                                            ; preds = %bb.z
  %i.du = fadd float %i.dr, 5.000000e-01
  %i.dv = fptosi float %i.du to i32
  %i.dw = trunc i32 %i.dv to i8
  br label %_ZN5faiss6rabitq29round_nonnegative_byte_scalarEf.exit.12

_ZN5faiss6rabitq29round_nonnegative_byte_scalarEf.exit.12: ; preds = %bb.aa, %bb.z, %_ZN5faiss6rabitq29round_nonnegative_byte_scalarEf.exit.11
  %.0.i.i.12 = phi i8 [ %i.dw, %bb.aa ], [ 0, %_ZN5faiss6rabitq29round_nonnegative_byte_scalarEf.exit.11 ], [ -1, %bb.z ]
  %i.dx = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i8 %.0.i.i.12, ptr %i.dx, align 1, !tbaa !17
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.dz = load float, ptr %i.dy, align 4, !tbaa !59
  %i.ea = fsub float %i.dz, %1
  %i.eb = fmul float %2, %i.ea                    ; 3 uses
  %i.ec = fcmp ugt float %i.eb, 0.000000e+00
  br i1 %i.ec, label %bb.ab, label %_ZN5faiss6rabitq29round_nonnegative_byte_scalarEf.exit.13

bb.ab:                                            ; preds = %_ZN5faiss6rabitq29round_nonnegative_byte_scalarEf.exit.12
  %i.ed = fcmp ult float %i.eb, 2.550000e+02
  br i1 %i.ed, label %bb.ac, label %_ZN5faiss6rabitq29round_nonnegative_byte_scalarEf.exit.13

bb.ac:                                            ; preds = %bb.ab
  %i.ee = fadd float %i.eb, 5.000000e-01
  %i.ef = fptosi float %i.ee to i32
  %i.eg = trunc i32 %i.ef to i8
  br label %_ZN5faiss6rabitq29round_nonnegative_byte_scalarEf.exit.13

_ZN5faiss6rabitq29round_nonnegative_byte_scalarEf.exit.13: ; preds = %bb.ac, %bb.ab, %_ZN5faiss6rabitq29round_nonnegative_byte_scalarEf.exit.12
  %.0.i.i.13 = phi i8 [ %i.eg, %bb.ac ], [ 0, %_ZN5faiss6rabitq29round_nonnegative_byte_scalarEf.exit.12 ], [ -1, %bb.ab ]
  %i.eh = getelementptr inbounds nuw i8, ptr %3, i64 13
  store i8 %.0.i.i.13, ptr %i.eh, align 1, !tbaa !17
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ej = load float, ptr %i.ei, align 4, !tbaa !59
  %i.ek = fsub float %i.ej, %1
  %i.el = fmul float %2, %i.ek                    ; 3 uses
  %i.em = fcmp ugt float %i.el, 0.000000e+00
  br i1 %i.em, label %bb.ad, label %_ZN5faiss6rabitq29round_nonnegative_byte_scalarEf.exit.14

bb.ad:                                            ; preds = %_ZN5faiss6rabitq29round_nonnegative_byte_scalarEf.exit.13
  %i.en = fcmp ult float %i.el, 2.550000e+02
  br i1 %i.en, label %bb.ae, label %_ZN5faiss6rabitq29round_nonnegative_byte_scalarEf.exit.14

bb.ae:                                            ; preds = %bb.ad
  %i.eo = fadd float %i.el, 5.000000e-01
  %i.ep = fptosi float %i.eo to i32
  %i.eq = trunc i32 %i.ep to i8
  br label %_ZN5faiss6rabitq29round_nonnegative_byte_scalarEf.exit.14

_ZN5faiss6rabitq29round_nonnegative_byte_scalarEf.exit.14: ; preds = %bb.ae, %bb.ad, %_ZN5faiss6rabitq29round_nonnegative_byte_scalarEf.exit.13
  %.0.i.i.14 = phi i8 [ %i.eq, %bb.ae ], [ 0, %_ZN5faiss6rabitq29round_nonnegative_byte_scalarEf.exit.13 ], [ -1, %bb.ad ]
  %i.er = getelementptr inbounds nuw i8, ptr %3, i64 14
  store i8 %.0.i.i.14, ptr %i.er, align 1, !tbaa !17
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.et = load float, ptr %i.es, align 4, !tbaa !59
  %i.eu = fsub float %i.et, %1
  %i.ev = fmul float %2, %i.eu                    ; 3 uses
  %i.ew = fcmp ugt float %i.ev, 0.000000e+00
  br i1 %i.ew, label %bb.af, label %_ZN5faiss6rabitq29round_nonnegative_byte_scalarEf.exit.15

bb.af:                                            ; preds = %_ZN5faiss6rabitq29round_nonnegative_byte_scalarEf.exit.14
  %i.ex = fcmp ult float %i.ev, 2.550000e+02
  br i1 %i.ex, label %bb.ag, label %_ZN5faiss6rabitq29round_nonnegative_byte_scalarEf.exit.15

bb.ag:                                            ; preds = %bb.af
  %i.ey = fadd float %i.ev, 5.000000e-01
  %i.ez = fptosi float %i.ey to i32
  %i.fa = trunc i32 %i.ez to i8
  br label %_ZN5faiss6rabitq29round_nonnegative_byte_scalarEf.exit.15

_ZN5faiss6rabitq29round_nonnegative_byte_scalarEf.exit.15: ; preds = %bb.ag, %bb.af, %_ZN5faiss6rabitq29round_nonnegative_byte_scalarEf.exit.14
  %.0.i.i.15 = phi i8 [ %i.fa, %bb.ag ], [ 0, %_ZN5faiss6rabitq29round_nonnegative_byte_scalarEf.exit.14 ], [ -1, %bb.af ]
  %i.fb = getelementptr inbounds nuw i8, ptr %3, i64 15
  store i8 %.0.i.i.15, ptr %i.fb, align 1, !tbaa !17
  ret void
}

declare noundef zeroext i8 @_ZN5faiss22pq4_get_packed_elementEPKhmmmm(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_ZNK5faiss22IndexIVFRaBitQFastScan27decode_fastscan_to_residualEPKhPff(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(402) %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2, float noundef %3) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !55
  %i.c = sext i32 %i.b to i64
  %i.d = shl nsw i64 %i.c, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %2, i8 0, i64 %i.d, i1 false)
  %i.e = load i32, ptr %i.a, align 8, !tbaa !55   ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.g = sitofp i32 %i.e to float
  %i.h = tail call noundef float @sqrtf(float noundef %i.g) #18
  %i.i = fdiv float 1.000000e+00, %i.h
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.012 = phi i64 [ %i.p, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %i.j = tail call noundef zeroext i1 @_ZN5faiss12rabitq_utils20extract_bit_fastscanEPKhm(ptr noundef %1, i64 noundef %.012)
  %i.k = select i1 %i.j, float 5.000000e-01, float -5.000000e-01
  %i.l = fmul float %3, %i.k
  %i.m = fmul float %i.l, 2.000000e+00
  %i.n = fmul float %i.i, %i.m
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.012
  store float %i.n, ptr %i.o, align 4, !tbaa !59
  %i.p = add nuw i64 %.012, 1                     ; 2 uses
  %i.q = load i32, ptr %i.a, align 8, !tbaa !55
  %i.r = sext i32 %i.q to i64
  %i.s = icmp ult i64 %i.p, %i.r
  br i1 %i.s, label %.lr.ph, label %._crit_edge, !llvm.loop !164
}

; Function Attrs: noinline norecurse nounwind uwtable
define internal void @_ZNK5faiss22IndexIVFRaBitQFastScan9sa_decodeElPKhPf.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5, ptr noundef %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %8, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %10) #17 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i64, ptr %2, align 8, !tbaa !18     ; 2 uses
  %i.f = icmp sgt i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i64 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i64 0, ptr %i.a, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  store i64 %i.g, ptr %i.b, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  store i64 1, ptr %i.c, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  store i32 0, ptr %i.d, align 4, !tbaa !61
  %i.h = load i32, ptr %0, align 4, !tbaa !61     ; 2 uses
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i64 1, i64 1)
  %i.i = load i64, ptr %i.b, align 8, !tbaa !18
  %i.j = call i64 @llvm.smin.i64(i64 %i.i, i64 %i.g) ; 2 uses
  store i64 %i.j, ptr %i.b, align 8, !tbaa !18
  %i.k = load i64, ptr %i.a, align 8, !tbaa !18   ; 2 uses
  %.not40 = icmp sgt i64 %i.k, %i.j
  br i1 %.not40, label %._crit_edge, label %.lr.ph42

.lr.ph42:                                         ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 56
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph42, %.loopexit
  %.03641 = phi i64 [ %i.k, %.lr.ph42 ], [ %i.do, %.loopexit ] ; 5 uses
  %i.o = shl i64 %.03641, 2
  %i.p = load ptr, ptr %3, align 8, !tbaa !19
  %i.q = load i64, ptr %4, align 8, !tbaa !18
  %i.r = mul i64 %i.q, %.03641
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.r ; 2 uses
  %i.t = load ptr, ptr %5, align 8, !tbaa !20     ; 2 uses
  %i.u = ptrtoaddr ptr %i.t to i64
  %i.v = load i32, ptr %i.l, align 8, !tbaa !55
  %i.w = sext i32 %i.v to i64                     ; 2 uses
  %i.x = mul nsw i64 %.03641, %i.w
  %i.y = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.x ; 7 uses
  %i.z = invoke noundef i64 @_ZNK5faiss15Level1Quantizer13decode_listnoEPKh(ptr noundef nonnull align 8 dereferenceable(88) %i.m, ptr noundef %i.s)
          to label %bb.d unwind label %.loopexit.split-lp ; 3 uses

bb.d:                                             ; preds = %bb.c
  %i.aa = icmp sgt i64 %i.z, -1
  br i1 %i.aa, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.ab = load i64, ptr %i.n, align 8, !tbaa !180
  %i.ac = icmp slt i64 %i.z, %i.ab
  br i1 %i.ac, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ad = load ptr, ptr %i.m, align 8, !tbaa !157 ; 2 uses
  %i.ae = load ptr, ptr %7, align 8, !tbaa !56
  %i.af = load ptr, ptr %i.ad, align 8, !tbaa !9
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 128
  %i.ah = load ptr, ptr %i.ag, align 8
  invoke void %i.ah(ptr noundef nonnull align 8 dereferenceable(36) %i.ad, i64 noundef %i.z, ptr noundef %i.ae)
          to label %bb.g unwind label %.loopexit.split-lp

bb.g:                                             ; preds = %bb.f
  %i.ai = load i64, ptr %8, align 8, !tbaa !18
  %i.aj = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.ai ; 2 uses
  %i.ak = load i64, ptr %9, align 8, !tbaa !18
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ak
  %i.am = load ptr, ptr %10, align 8, !tbaa !56   ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  %i.ao = load float, ptr %i.an, align 1, !tbaa !162
  %i.ap = load i32, ptr %i.l, align 8, !tbaa !55
  %i.aq = sext i32 %i.ap to i64
  %i.ar = shl nsw i64 %i.aq, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.am, i8 0, i64 %i.ar, i1 false)
  %i.as = load i32, ptr %i.l, align 8, !tbaa !55  ; 2 uses
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %.loopexit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.g
  %i.au = sitofp i32 %i.as to float
  %i.av = call noundef float @sqrtf(float noundef %i.au) #18
  %i.aw = fdiv float 1.000000e+00, %i.av
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.noexc, %.lr.ph.preheader.i
  %.012.i = phi i64 [ %i.bd, %.noexc ], [ 0, %.lr.ph.preheader.i ] ; 3 uses
  %i.ax = invoke noundef zeroext i1 @_ZN5faiss12rabitq_utils20extract_bit_fastscanEPKhm(ptr noundef %i.aj, i64 noundef %.012.i)
          to label %.noexc unwind label %.loopexit38

.noexc:                                           ; preds = %.lr.ph.i
  %i.ay = select i1 %i.ax, float 5.000000e-01, float -5.000000e-01
  %i.az = fmul float %i.ao, %i.ay
  %i.ba = fmul float %i.az, 2.000000e+00
  %i.bb = fmul float %i.aw, %i.ba
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %.012.i
  store float %i.bb, ptr %i.bc, align 4, !tbaa !59
  %i.bd = add nuw i64 %.012.i, 1                  ; 2 uses
  %i.be = load i32, ptr %i.l, align 8, !tbaa !55  ; 5 uses
  %i.bf = sext i32 %i.be to i64                   ; 5 uses
  %i.bg = icmp ult i64 %i.bd, %i.bf
  br i1 %i.bg, label %.lr.ph.i, label %_ZNK5faiss22IndexIVFRaBitQFastScan27decode_fastscan_to_residualEPKhPff.exit, !llvm.loop !164

_ZNK5faiss22IndexIVFRaBitQFastScan27decode_fastscan_to_residualEPKhPff.exit: ; preds = %.noexc
  %i.bh = sext i32 %i.be to i64
  %.not43 = icmp eq i32 %i.be, 0
  br i1 %.not43, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK5faiss22IndexIVFRaBitQFastScan27decode_fastscan_to_residualEPKhPff.exit
  %i.bi = load ptr, ptr %7, align 8, !tbaa !56    ; 7 uses
  %i.bj = load ptr, ptr %10, align 8, !tbaa !56   ; 7 uses
  %min.iters.check = icmp ult i32 %i.be, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.bk = ptrtoaddr ptr %i.bj to i64
  %i.bl = ptrtoaddr ptr %i.bi to i64
  %i.bm = mul i64 %i.o, %i.w
  %i.bn = add i64 %i.bm, %i.u                     ; 2 uses
  %i.bo = sub i64 %i.bl, %i.bn
  %diff.check = icmp ugt i64 %i.bo, -32
  %i.bp = sub i64 %i.bk, %i.bn
  %diff.check49 = icmp ugt i64 %i.bp, -32
  %conflict.rdx = or i1 %diff.check, %diff.check49
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bf, -8                      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %index ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %wide.load = load <4 x float>, ptr %i.bq, align 4, !tbaa !59
  %wide.load50 = load <4 x float>, ptr %i.br, align 4, !tbaa !59
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %index ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %wide.load51 = load <4 x float>, ptr %i.bs, align 4, !tbaa !59
  %wide.load52 = load <4 x float>, ptr %i.bt, align 4, !tbaa !59
  %i.bu = fadd <4 x float> %wide.load, %wide.load51
  %i.bv = fadd <4 x float> %wide.load50, %wide.load52
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %index ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  store <4 x float> %i.bu, ptr %i.bw, align 4, !tbaa !59
  store <4 x float> %i.bv, ptr %i.bx, align 4, !tbaa !59
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.by = icmp eq i64 %index.next, %n.vec
  br i1 %i.by, label %middle.block, label %vector.body, !llvm.loop !230

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.bf
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %.039.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.bf, 3
  %i.bz = and i32 %i.be, 3
  %lcmp.mod.not = icmp eq i32 %i.bz, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.039.prol = phi i64 [ %i.cg, %scalar.ph.prol ], [ %.039.ph, %scalar.ph.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %.039.prol
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !59
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %.039.prol
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !59
  %i.ce = fadd float %i.cb, %i.cd
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %.039.prol
  store float %i.ce, ptr %i.cf, align 4, !tbaa !59
  %i.cg = add nuw i64 %.039.prol, 1               ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !231

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.039.unr = phi i64 [ %.039.ph, %scalar.ph.preheader ], [ %i.cg, %scalar.ph.prol ]
  %i.ch = sub nsw i64 %.039.ph, %i.bf
  %i.ci = icmp ugt i64 %i.ch, -4
  br i1 %i.ci, label %.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.039 = phi i64 [ %i.dk, %scalar.ph ], [ %.039.unr, %scalar.ph.prol.loopexit ] ; 7 uses
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %.039
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !59
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %.039
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !59
  %i.cn = fadd float %i.ck, %i.cm
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %.039
  store float %i.cn, ptr %i.co, align 4, !tbaa !59
  %i.cp = add nuw i64 %.039, 1                    ; 3 uses
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %i.cp
  %i.cr = load float, ptr %i.cq, align 4, !tbaa !59
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %i.cp
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !59
  %i.cu = fadd float %i.cr, %i.ct
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.cp
  store float %i.cu, ptr %i.cv, align 4, !tbaa !59
  %i.cw = add nuw i64 %.039, 2                    ; 3 uses
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %i.cw
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !59
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %i.cw
  %i.da = load float, ptr %i.cz, align 4, !tbaa !59
  %i.db = fadd float %i.cy, %i.da
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.cw
  store float %i.db, ptr %i.dc, align 4, !tbaa !59
  %i.dd = add nuw i64 %.039, 3                    ; 3 uses
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %i.dd
  %i.df = load float, ptr %i.de, align 4, !tbaa !59
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %i.dd
  %i.dh = load float, ptr %i.dg, align 4, !tbaa !59
  %i.di = fadd float %i.df, %i.dh
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.dd
  store float %i.di, ptr %i.dj, align 4, !tbaa !59
  %i.dk = add nuw i64 %.039, 4                    ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.dk, %i.bh
  br i1 %exitcond.not.3, label %.loopexit, label %scalar.ph, !llvm.loop !232

bb.h:                                             ; preds = %bb.e, %bb.d
  %i.dl = load i32, ptr %i.l, align 8, !tbaa !55
  %i.dm = sext i32 %i.dl to i64
  %i.dn = shl nsw i64 %i.dm, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.y, i8 0, i64 %i.dn, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.g, %_ZNK5faiss22IndexIVFRaBitQFastScan27decode_fastscan_to_residualEPKhPff.exit, %bb.h
  %i.do = add nsw i64 %.03641, 1
  %i.dp = load i64, ptr %i.b, align 8, !tbaa !18
  %.not.not = icmp slt i64 %.03641, %i.dp
  br i1 %.not.not, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %.loopexit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge, %bb.a
  ret void

.loopexit38:                                      ; preds = %.lr.ph.i
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.j

.loopexit.split-lp:                               ; preds = %bb.c, %bb.f
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.j

bb.j:                                             ; preds = %.loopexit.split-lp, %.loopexit38
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit38 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.dq = extractvalue { ptr, i32 } %lpad.phi, 0
  call void @__clang_call_terminate(ptr %i.dq) #35
  unreachable
}

declare noundef i64 @_ZNK5faiss15Level1Quantizer13decode_listnoEPKh(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN5faiss12rabitq_utils20extract_bit_fastscanEPKhm(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sqrtf(float noundef) local_unnamed_addr #28

declare void @_ZN5faiss27rabitq_ivf_make_knn_scannerEbPKNS_22IndexIVFRaBitQFastScanEmmPfPlPKNS_10IDSelectorEPKNS_30FastScanDistancePostProcessingEb(ptr dead_on_unwind writable sret(%"class.std::unique_ptr") align 8, i1 noundef zeroext, ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @_ZN5faiss12_GLOBAL__N_124IVFRaBitQFastScanScanner9set_queryEPKf(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(336) initializes((56, 64)) %0, ptr noundef %1) unnamed_addr #29 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %1, ptr %i.a, align 8, !tbaa !233
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN5faiss12_GLOBAL__N_124IVFRaBitQFastScanScanner8set_listElf(ptr noundef nonnull align 8 dereferenceable(336) initializes((8, 16)) %0, i64 noundef %1, float %2) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.a, align 8, !tbaa !107
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !234, !nonnull !28, !align !235
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !233
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !150
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.j = load i8, ptr %i.i, align 8, !tbaa !115
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 49 ; 2 uses
  %i.l = load i8, ptr %i.k, align 1, !tbaa !137, !range !27, !noundef !28
  %i.m = trunc nuw i8 %i.l to i1
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  tail call void @_ZNK5faiss22IndexIVFRaBitQFastScan20compute_residual_LUTEPKflRNS_12rabitq_utils16QueryFactorsDataEPfhbRSt6vectorIfSaIfEESA_(ptr noundef nonnull align 8 dereferenceable(402) %i.c, ptr noundef %i.e, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(56) %i.f, ptr noundef %i.h, i8 noundef zeroext %i.j, i1 noundef zeroext %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.o)
  %i.p = load ptr, ptr %i.b, align 8, !tbaa !234, !nonnull !28, !align !235 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 280
  %i.r = load i64, ptr %i.q, align 8, !tbaa !138  ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 304
  %i.t = load i64, ptr %i.s, align 8, !tbaa !144
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 296
  %i.v = load i64, ptr %i.u, align 8, !tbaa !170
  %i.w = icmp eq i64 %i.v, 16
  br i1 %i.w, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.x = load ptr, ptr @stderr, align 8, !tbaa !171
  %i.y = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.x, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.37, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5faiss12_GLOBAL__N_124IVFRaBitQFastScanScanner8set_listElf, ptr noundef nonnull @.str.2, i32 noundef 933) #36 ; 0 uses
  tail call void @abort() #35
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !56  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !151 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.r, 0
  br i1 %.not.i.i.i, label %_ZN5faiss25with_selected_simd_levelsILi7EZNS_12_GLOBAL__N_124IVFRaBitQFastScanScanner8set_listElfEUlTnNS_9SIMDLevelEvE_EEDaOT0_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c
  %i.ad = load ptr, ptr %i.g, align 8, !tbaa !150
  br label %bb.d

.lr.ph54.i.i.i:                                   ; preds = %bb.d
  %i.ae = insertelement <2 x float> poison, float %i.eb, i64 0
  %i.af = insertelement <2 x float> %i.ae, float %.sroa.speculated15.i.i.i, i64 1
  %i.ag = fdiv <2 x float> <float 6.553500e+04, float 2.550000e+02>, %i.af ; 2 uses
  %i.ah = extractelement <2 x float> %i.ag, i64 0 ; 2 uses
  %i.ai = extractelement <2 x float> %i.ag, i64 1 ; 2 uses
  %i.aj = fcmp olt float %i.ah, %i.ai
  %.sroa.speculated.i.i.i = select i1 %i.aj, float %i.ah, float %i.ai ; 2 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.d, %.lr.ph.i.i.i
  %.027 = phi float [ -inf, %.lr.ph.i.i.i ], [ %.sroa.speculated15.i.i.i, %bb.d ] ; 2 uses
  %.025 = phi float [ 0.000000e+00, %.lr.ph.i.i.i ], [ %i.eb, %bb.d ]
  %.0 = phi float [ 0.000000e+00, %.lr.ph.i.i.i ], [ %i.ec, %bb.d ]
  %.051.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.ed, %bb.d ] ; 3 uses
  %.idx = shl i64 %.051.i.i.i, 6
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.idx ; 16 uses
  %i.al = load float, ptr %i.ak, align 4, !tbaa !59 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %i.an = load float, ptr %i.am, align 4, !tbaa !59 ; 4 uses
  %i.ao = fcmp olt float %i.an, %i.al
  %i.ap = select i1 %i.ao, float %i.an, float %i.al ; 2 uses
  %i.aq = fcmp olt float %i.al, %i.an
  %i.ar = select i1 %i.aq, float %i.an, float %i.al ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.at = load float, ptr %i.as, align 4, !tbaa !59 ; 4 uses
  %i.au = fcmp olt float %i.at, %i.ap
  %i.av = select i1 %i.au, float %i.at, float %i.ap ; 2 uses
  %i.aw = fcmp olt float %i.ar, %i.at
  %i.ax = select i1 %i.aw, float %i.at, float %i.ar ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ak, i64 12
  %i.az = load float, ptr %i.ay, align 4, !tbaa !59 ; 4 uses
  %i.ba = fcmp olt float %i.az, %i.av
  %i.bb = select i1 %i.ba, float %i.az, float %i.av ; 2 uses
  %i.bc = fcmp olt float %i.ax, %i.az
  %i.bd = select i1 %i.bc, float %i.az, float %i.ax ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.bf = load float, ptr %i.be, align 4, !tbaa !59 ; 4 uses
  %i.bg = fcmp olt float %i.bf, %i.bb
  %i.bh = select i1 %i.bg, float %i.bf, float %i.bb ; 2 uses
  %i.bi = fcmp olt float %i.bd, %i.bf
  %i.bj = select i1 %i.bi, float %i.bf, float %i.bd ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ak, i64 20
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !59 ; 4 uses
  %i.bm = fcmp olt float %i.bl, %i.bh
  %i.bn = select i1 %i.bm, float %i.bl, float %i.bh ; 2 uses
  %i.bo = fcmp olt float %i.bj, %i.bl
  %i.bp = select i1 %i.bo, float %i.bl, float %i.bj ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.br = load float, ptr %i.bq, align 4, !tbaa !59 ; 4 uses
  %i.bs = fcmp olt float %i.br, %i.bn
  %i.bt = select i1 %i.bs, float %i.br, float %i.bn ; 2 uses
  %i.bu = fcmp olt float %i.bp, %i.br
  %i.bv = select i1 %i.bu, float %i.br, float %i.bp ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ak, i64 28
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !59 ; 4 uses
  %i.by = fcmp olt float %i.bx, %i.bt
  %i.bz = select i1 %i.by, float %i.bx, float %i.bt ; 2 uses
  %i.ca = fcmp olt float %i.bv, %i.bx
  %i.cb = select i1 %i.ca, float %i.bx, float %i.bv ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !59 ; 4 uses
  %i.ce = fcmp olt float %i.cd, %i.bz
  %i.cf = select i1 %i.ce, float %i.cd, float %i.bz ; 2 uses
  %i.cg = fcmp olt float %i.cb, %i.cd
  %i.ch = select i1 %i.cg, float %i.cd, float %i.cb ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ak, i64 36
  %i.cj = load float, ptr %i.ci, align 4, !tbaa !59 ; 4 uses
  %i.ck = fcmp olt float %i.cj, %i.cf
  %i.cl = select i1 %i.ck, float %i.cj, float %i.cf ; 2 uses
  %i.cm = fcmp olt float %i.ch, %i.cj
  %i.cn = select i1 %i.cm, float %i.cj, float %i.ch ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.ak, i64 40
  %i.cp = load float, ptr %i.co, align 4, !tbaa !59 ; 4 uses
  %i.cq = fcmp olt float %i.cp, %i.cl
  %i.cr = select i1 %i.cq, float %i.cp, float %i.cl ; 2 uses
  %i.cs = fcmp olt float %i.cn, %i.cp
  %i.ct = select i1 %i.cs, float %i.cp, float %i.cn ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ak, i64 44
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !59 ; 4 uses
  %i.cw = fcmp olt float %i.cv, %i.cr
  %i.cx = select i1 %i.cw, float %i.cv, float %i.cr ; 2 uses
  %i.cy = fcmp olt float %i.ct, %i.cv
  %i.cz = select i1 %i.cy, float %i.cv, float %i.ct ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.ak, i64 48
  %i.db = load float, ptr %i.da, align 4, !tbaa !59 ; 4 uses
  %i.dc = fcmp olt float %i.db, %i.cx
  %i.dd = select i1 %i.dc, float %i.db, float %i.cx ; 2 uses
  %i.de = fcmp olt float %i.cz, %i.db
  %i.df = select i1 %i.de, float %i.db, float %i.cz ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ak, i64 52
  %i.dh = load float, ptr %i.dg, align 4, !tbaa !59 ; 4 uses
  %i.di = fcmp olt float %i.dh, %i.dd
  %i.dj = select i1 %i.di, float %i.dh, float %i.dd ; 2 uses
  %i.dk = fcmp olt float %i.df, %i.dh
  %i.dl = select i1 %i.dk, float %i.dh, float %i.df ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.ak, i64 56
  %i.dn = load float, ptr %i.dm, align 4, !tbaa !59 ; 4 uses
  %i.do = fcmp olt float %i.dn, %i.dj
  %i.dp = select i1 %i.do, float %i.dn, float %i.dj ; 2 uses
  %i.dq = fcmp olt float %i.dl, %i.dn
  %i.dr = select i1 %i.dq, float %i.dn, float %i.dl ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.ak, i64 60
  %i.dt = load float, ptr %i.ds, align 4, !tbaa !59 ; 4 uses
  %i.du = fcmp olt float %i.dt, %i.dp
end_hunk_1
