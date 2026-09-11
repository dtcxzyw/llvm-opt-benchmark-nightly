Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/NNDescent?download=true
inline.NumInlined: 1107
inline.NumDeleted: 428
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN5faiss9NNDescent5buildERNS_16DistanceComputerEib:bb.a

._crit_edge52:                                    ; preds = %._crit_edge, %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !83 ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !84
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !85
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bn, i8 0, i64 24, i1 false)
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN5faiss9nndescent5NhoodEEEvT_S6_(ptr noundef %i.bo, ptr noundef %i.bq)
          to label %_ZSt8_DestroyIPN5faiss9nndescent5NhoodES2_EvT_S4_RSaIT0_E.exit.i unwind label %bb.z

_ZSt8_DestroyIPN5faiss9nndescent5NhoodES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %._crit_edge52
  %.not.i.i.i = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN5faiss9nndescent5NhoodESaIS2_EED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %_ZSt8_DestroyIPN5faiss9nndescent5NhoodES2_EvT_S4_RSaIT0_E.exit.i
  %i.bt = ptrtoint ptr %i.bs to i64
  %i.bu = ptrtoint ptr %i.bo to i64
  %i.bv = sub i64 %i.bt, %i.bu
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bo, i64 noundef %i.bv) #25
  br label %_ZNSt6vectorIN5faiss9nndescent5NhoodESaIS2_EED2Ev.exit

bb.z:                                             ; preds = %._crit_edge52
  %i.bw = landingpad { ptr, i32 }
          catch ptr null
  %i.bx = extractvalue { ptr, i32 } %i.bw, 0
  tail call void @__clang_call_terminate(ptr %i.bx) #28
  unreachable

_ZNSt6vectorIN5faiss9nndescent5NhoodESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5faiss9nndescent5NhoodES2_EvT_S4_RSaIT0_E.exit.i, %bb.y
  store i8 1, ptr %0, align 8, !tbaa !78
  br i1 %3, label %bb.af, label %bb.ag

bb.aa:                                            ; preds = %.lr.ph51, %._crit_edge
  %indvars.iv54 = phi i64 [ 0, %.lr.ph51 ], [ %indvars.iv.next55, %._crit_edge ] ; 4 uses
  %i.by = load ptr, ptr %i.bm, align 8, !tbaa !83
  %i.bz = getelementptr inbounds nuw [168 x i8], ptr %i.by, i64 %indvars.iv54 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 40
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !62 ; 4 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 48
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !62 ; 4 uses
  %i.ce = icmp eq ptr %i.cb, %i.cd
  br i1 %i.ce, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cf = ptrtoint ptr %i.cd to i64
  %i.cg = ptrtoint ptr %i.cb to i64
  %i.ch = sub i64 %i.cf, %i.cg
  %i.ci = sdiv exact i64 %i.ch, 12
  %i.cj = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ci, i1 true)
  %i.ck = shl nuw nsw i64 %i.cj, 1
  %i.cl = xor i64 %i.ck, 126
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_less_iterEEvT_SC_T0_T1_(ptr %i.cb, ptr %i.cd, i64 noundef %i.cl)
  tail call void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_(ptr %i.cb, ptr %i.cd)
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit: ; preds = %bb.aa, %bb.ab
  %i.cm = load i32, ptr %i.c, align 8, !tbaa !80  ; 2 uses
  %i.cn = icmp sgt i32 %i.cm, 0
  br i1 %i.cn, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit
  %i.co = load ptr, ptr %i.bm, align 8, !tbaa !83
  %i.cp = getelementptr inbounds nuw [168 x i8], ptr %i.co, i64 %indvars.iv54
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 40
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !40
  %i.cs = trunc nuw nsw i64 %indvars.iv54 to i32
  br label %bb.ac

._crit_edge:                                      ; preds = %bb.ae, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit
  %indvars.iv.next55 = add nuw nsw i64 %indvars.iv54, 1 ; 2 uses
  %i.ct = load i32, ptr %i.as, align 4, !tbaa !87
  %i.cu = sext i32 %i.ct to i64
  %i.cv = icmp slt i64 %indvars.iv.next55, %i.cu
  br i1 %i.cv, label %bb.aa, label %._crit_edge52, !llvm.loop !149

bb.ac:                                            ; preds = %.lr.ph, %bb.ae
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.ae ] ; 3 uses
  %i.cw = phi i32 [ %i.cm, %.lr.ph ], [ %i.dj, %bb.ae ]
  %i.cx = getelementptr inbounds nuw [12 x i8], ptr %i.cr, i64 %indvars.iv
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !66 ; 2 uses
  %i.cz = load i32, ptr %i.as, align 4, !tbaa !87
  %i.da = icmp slt i32 %i.cy, %i.cz
  br i1 %i.da, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.db = load ptr, ptr @stderr, align 8, !tbaa !152
  %i.dc = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.db, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5faiss9NNDescent5buildERNS_16DistanceComputerEib, ptr noundef nonnull @.str.4, i32 noundef 454) #29 ; 0 uses
  tail call void @abort() #28
  unreachable

bb.ae:                                            ; preds = %bb.ac
  %i.dd = mul nuw nsw i32 %i.cw, %i.cs
  %i.de = trunc nuw nsw i64 %indvars.iv to i32
  %i.df = add nsw i32 %i.dd, %i.de
  %i.dg = sext i32 %i.df to i64
  %i.dh = load ptr, ptr %i.at, align 8, !tbaa !37
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %i.dg
  store i32 %i.cy, ptr %i.di, align 4, !tbaa !50
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.dj = load i32, ptr %i.c, align 8, !tbaa !80  ; 2 uses
  %i.dk = sext i32 %i.dj to i64
  %i.dl = icmp slt i64 %indvars.iv.next, %i.dk
  br i1 %i.dl, label %bb.ac, label %._crit_edge, !llvm.loop !150

bb.af:                                            ; preds = %_ZNSt6vectorIN5faiss9nndescent5NhoodESaIS2_EED2Ev.exit
  %i.dm = load i32, ptr %i.as, align 4, !tbaa !87
  %i.dn = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.21, i32 noundef %i.dm) ; 0 uses
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %_ZNSt6vectorIN5faiss9nndescent5NhoodESaIS2_EED2Ev.exit
  ret void

bb.ah:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn39.pn = phi { ptr, i32 } [ %.pn39, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %.pn39.pn

bb.ai:                                            ; preds = %bb.p, %bb.g
  unreachable
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #11

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #22

; Function Attrs: mustprogress uwtable
define void @_ZNK5faiss9NNDescent6searchERNS_16DistanceComputerEiPlPfRNS_12VisitedTableE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.std::mersenne_twister_engine", align 8 ; 9 uses
  %i.a = load i8, ptr %0, align 8, !tbaa !78, !range !92, !noundef !93
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  store ptr %i.c, ptr %6, align 8, !tbaa !44
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i64 0, ptr %i.d, align 8, !tbaa !47
  store i8 0, ptr %i.c, align 8, !tbaa !48
  %i.e = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23) #19 ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.g = zext nneg i32 %i.e to i64                ; 2 uses
  %i.h = add nuw nsw i64 %i.g, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef %i.h)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = load ptr, ptr %6, align 8, !tbaa !49
  %i.j = load i64, ptr %i.d, align 8, !tbaa !47
  %i.k = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.i, i64 noundef %i.j, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23) #19 ; 0 uses
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef %i.g)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d, %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.f:                                             ; preds = %bb.d, %bb.b
  %i.m = call ptr @__cxa_allocate_exception(i64 40) #19 ; 3 uses
  invoke void @_ZN5faiss14FaissExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSA_i(ptr noundef nonnull align 8 dereferenceable(40) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK5faiss9NNDescent6searchERNS_16DistanceComputerEiPlPfRNS_12VisitedTableE, ptr noundef nonnull @.str.4, i32 noundef 472)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  invoke void @__cxa_throw(ptr nonnull %i.m, ptr nonnull @_ZTIN5faiss14FaissExceptionE, ptr nonnull @_ZN5faiss14FaissExceptionD2Ev) #26
          to label %bb.al unwind label %bb.e

bb.h:                                             ; preds = %bb.f
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.m) #19
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  %.pn = phi { ptr, i32 } [ %i.l, %bb.e ], [ %i.n, %bb.h ]
  %i.o = load ptr, ptr %6, align 8, !tbaa !49     ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.c
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  %i.q = load i64, ptr %i.c, align 8, !tbaa !48
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.r) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %_ZNSt6vectorIN5faiss9nndescent8NeighborESaIS2_EED2Ev.exit103

bb.j:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = load i32, ptr %i.s, align 8, !tbaa !50
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %i.t, i32 %2) ; 13 uses
  %i.u = add nsw i32 %.sroa.speculated, 1         ; 5 uses
  %i.v = sext i32 %i.u to i64                     ; 4 uses
  %i.w = icmp slt i32 %.sroa.speculated, -1
  br i1 %i.w, label %.noexc, label %_ZNSt6vectorIN5faiss9nndescent8NeighborESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i

.noexc:                                           ; preds = %bb.j
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #26
  unreachable

_ZNSt6vectorIN5faiss9nndescent8NeighborESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i: ; preds = %bb.j
  %.not.i.i.i.i = icmp eq i32 %i.u, 0
  br i1 %.not.i.i.i.i, label %.noexc95, label %.noexc91

.noexc91:                                         ; preds = %_ZNSt6vectorIN5faiss9nndescent8NeighborESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i
  %i.x = mul nuw nsw i64 %i.v, 12
  %i.y = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.x) #27 ; 23 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.y, i8 0, i64 12, i1 false)
  %i.z = add nsw i64 %i.v, -1                     ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i, label %bb.k

bb.k:                                             ; preds = %.noexc91
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 12 ; 2 uses
  %.idx.i.i.i.i.i.i.i = mul nuw nsw i64 %i.z, 12
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.idx.i.i.i.i.i.i.i
  br label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %bb.k
  %.06.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.ab, %bb.k ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %.06.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(9) %i.y, i64 9, i1 false), !tbaa.struct !61
  %i.ad = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 12 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ad, %i.ac
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !153

.noexc95:                                         ; preds = %_ZNSt6vectorIN5faiss9nndescent8NeighborESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #26
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %.noexc91
  %i.ae = zext nneg i32 %.sroa.speculated to i64  ; 5 uses
  %.not.i.i.i.i92 = icmp eq i32 %.sroa.speculated, 0 ; 2 uses
  br i1 %.not.i.i.i.i92, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %i.af = shl nuw nsw i64 %i.ae, 2
  %i.ag = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.af) #27
          to label %.noexc96 unwind label %_ZNSt6vectorIiSaIiEED2Ev.exit101 ; 5 uses

.noexc96:                                         ; preds = %bb.l
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.ae ; 2 uses
  store i32 0, ptr %i.ag, align 4, !tbaa !50
  %i.ai = add nsw i64 %i.ae, -1                   ; 2 uses
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc96
  %i.ak = getelementptr i8, ptr %i.ag, i64 4
  %.idx.i.i.i.i.i.i.i93 = shl nuw nsw i64 %i.ai, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ak, i8 0, i64 %.idx.i.i.i.i.i.i.i93, i1 false), !tbaa !50
  br label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit

_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc96, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.11.0 = phi ptr [ %i.ah, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.ah, %.noexc96 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %.sroa.0108.0 = phi ptr [ %i.ag, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.ag, %.noexc96 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ] ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.am = load i32, ptr %i.al, align 4, !tbaa !79
  %i.an = zext i32 %i.am to i64                   ; 2 uses
  store i64 %i.an, ptr %7, align 8, !tbaa !71
  br label %bb.m

bb.m:                                             ; preds = %bb.n, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit
  %store_forwarded = phi i64 [ %i.an, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit ], [ %i.ba, %bb.n ] ; 2 uses
  %.011.i.i = phi i64 [ 1, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit ], [ %i.bb, %bb.n ] ; 4 uses
  %i.ao = getelementptr [8 x i8], ptr %7, i64 %.011.i.i
  %i.ap = lshr i64 %store_forwarded, 30
  %i.aq = xor i64 %i.ap, %store_forwarded
  %i.ar = mul nuw nsw i64 %i.aq, 1812433253
  %i.as = add nuw i64 %i.ar, %.011.i.i            ; 2 uses
  %i.at = and i64 %i.as, 4294967295               ; 2 uses
  store i64 %i.at, ptr %i.ao, align 8, !tbaa !71
  %i.au = add nuw nsw i64 %.011.i.i, 1            ; 3 uses
  %exitcond.not.i.i = icmp eq i64 %i.au, 624
  br i1 %exitcond.not.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.av = getelementptr [8 x i8], ptr %7, i64 %i.au
  %i.aw = lshr i64 %i.at, 30
  %i.ax = xor i64 %i.aw, %i.as
  %i.ay = mul i64 %i.ax, 1812433253
  %i.az = add i64 %i.ay, %i.au
  %i.ba = and i64 %i.az, 4294967295               ; 2 uses
  store i64 %i.ba, ptr %i.av, align 8, !tbaa !71
  %i.bb = add nuw nsw i64 %.011.i.i, 2
  br label %bb.m

bb.o:                                             ; preds = %bb.m
  %i.bc = getelementptr inbounds nuw i8, ptr %7, i64 4992
  store i64 624, ptr %i.bc, align 8, !tbaa !70
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !87
  invoke void @_ZN5faiss9nndescent10gen_randomERSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEPiii(ptr noundef nonnull align 8 dereferenceable(5000) %7, ptr noundef %.sroa.0108.0, i32 noundef %.sroa.speculated, i32 noundef %i.be)
          to label %.preheader134 unwind label %bb.p

.preheader134:                                    ; preds = %bb.o
  br i1 %.not.i.i.i.i92, label %.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader134
  %wide.trip.count = zext nneg i32 %.sroa.speculated to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.q
  %.idx = mul nuw nsw i64 %i.ae, 12               ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.y, i64 %.idx ; 2 uses
  %i.bg = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ae, i1 true)
  %i.bh = shl nuw nsw i64 %i.bg, 1
  %i.bi = xor i64 %i.bh, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_less_iterEEvT_SC_T0_T1_(ptr nonnull %i.y, ptr nonnull %i.bf, i64 noundef %i.bi)
          to label %.noexc97 unwind label %.thread180

.noexc97:                                         ; preds = %._crit_edge
  invoke void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_(ptr nonnull %i.y, ptr nonnull %i.bf)
          to label %.lr.ph143 unwind label %.thread180

bb.p:                                             ; preds = %bb.o
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.q
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.q ] ; 3 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0108.0, i64 %indvars.iv
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !50 ; 2 uses
  %i.bm = sext i32 %i.bl to i64
  %i.bn = load ptr, ptr %1, align 8, !tbaa !68
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8
  %i.bq = invoke noundef float %i.bp(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %i.bm)
          to label %bb.q unwind label %.thread

bb.q:                                             ; preds = %.lr.ph
  %i.br = getelementptr inbounds nuw [12 x i8], ptr %i.y, i64 %indvars.iv ; 3 uses
  store i32 %i.bl, ptr %i.br, align 4, !tbaa !50
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.br, i64 4
  store float %i.bq, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !58
  %.sroa.5105.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  store i8 1, ptr %.sroa.5105.0..sroa_idx, align 4, !tbaa !60
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !154

.thread:                                          ; preds = %.lr.ph
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

.lr.ph143:                                        ; preds = %.noexc97
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bv = add nsw i32 %.sroa.speculated, -1       ; 3 uses
  %i.bw = zext nneg i32 %i.bv to i64
  %i.bx = getelementptr inbounds nuw [12 x i8], ptr %i.y, i64 %i.bw
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 4
  %i.bz = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.ca = icmp sgt i32 %.sroa.speculated, 2
  %i.cb = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  br label %bb.r

.preheader:                                       ; preds = %.loopexit, %.preheader134
  %i.cc = icmp sgt i32 %2, 0
  br i1 %i.cc, label %.lr.ph145.preheader, label %._crit_edge146

.lr.ph145.preheader:                              ; preds = %.preheader
  %wide.trip.count.a = zext nneg i32 %2 to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count.a, 1
  %i.cd = icmp eq i32 %2, 1
  br i1 %i.cd, label %.lr.ph145.epil.preheader, label %.lr.ph145.preheader.new

.lr.ph145.preheader.new:                          ; preds = %.lr.ph145.preheader
  %unroll_iter = and i64 %wide.trip.count.a, 2147483646
  br label %.lr.ph145

bb.r:                                             ; preds = %.lr.ph143, %.loopexit
  %.074142 = phi i32 [ 0, %.lr.ph143 ], [ %.175, %.loopexit ] ; 3 uses
  %i.ce = sext i32 %.074142 to i64
  %i.cf = getelementptr inbounds nuw [12 x i8], ptr %i.y, i64 %i.ce ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8 ; 2 uses
  %i.ch = load i8, ptr %i.cg, align 4, !tbaa !91, !range !92, !noundef !93
  %i.ci = trunc nuw i8 %i.ch to i1
  br i1 %i.ci, label %bb.s, label %.loopexit

bb.s:                                             ; preds = %bb.r
  store i8 0, ptr %i.cg, align 4, !tbaa !91
  %i.cj = load i32, ptr %i.cf, align 4, !tbaa !66
  %i.ck = load i32, ptr %i.bt, align 8, !tbaa !80 ; 2 uses
  %i.cl = icmp sgt i32 %i.ck, 0
  br i1 %i.cl, label %.lr.ph141, label %.loopexit

.thread180:                                       ; preds = %._crit_edge, %.noexc97
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

.lr.ph141:                                        ; preds = %bb.s, %bb.af
  %i.cn = phi i32 [ %i.er, %bb.af ], [ %i.ck, %bb.s ]
  %.068139 = phi i32 [ %i.eq, %bb.af ], [ 0, %bb.s ] ; 2 uses
  %.069138 = phi i32 [ %.372, %bb.af ], [ %.sroa.speculated, %bb.s ] ; 3 uses
  %i.co = mul nsw i32 %i.cn, %i.cj
  %i.cp = add nsw i32 %i.co, %.068139
  %i.cq = sext i32 %i.cp to i64
  %i.cr = load ptr, ptr %i.bu, align 8, !tbaa !37
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %i.cq
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !50 ; 5 uses
  %i.cu = sext i32 %i.ct to i64                   ; 3 uses
  %i.cv = load ptr, ptr %5, align 8, !tbaa !68
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 24
  %i.cx = load ptr, ptr %i.cw, align 8
  %i.cy = invoke noundef zeroext i1 %i.cx(ptr noundef nonnull align 8 dereferenceable(8) %5, i64 noundef %i.cu)
          to label %bb.t unwind label %bb.u

bb.t:                                             ; preds = %.lr.ph141
  br i1 %i.cy, label %bb.af, label %bb.v

bb.u:                                             ; preds = %bb.v, %.lr.ph141
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.v:                                             ; preds = %bb.t
  %i.da = load ptr, ptr %5, align 8, !tbaa !68
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %i.dc = load ptr, ptr %i.db, align 8
  %i.dd = invoke noundef zeroext i1 %i.dc(ptr noundef nonnull align 8 dereferenceable(8) %5, i64 noundef %i.cu)
          to label %bb.w unwind label %bb.u       ; 0 uses

bb.w:                                             ; preds = %bb.v
  %i.de = load ptr, ptr %1, align 8, !tbaa !68
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.dg = load ptr, ptr %i.df, align 8
  %i.dh = invoke noundef float %i.dg(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %i.cu)
          to label %bb.x unwind label %bb.y       ; 5 uses

bb.x:                                             ; preds = %bb.w
  %i.di = load float, ptr %i.by, align 4, !tbaa !65
  %i.dj = fcmp ult float %i.dh, %i.di
  br i1 %i.dj, label %bb.z, label %bb.af

bb.y:                                             ; preds = %bb.w
  %i.dk = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.z:                                             ; preds = %bb.x
  %i.dl = bitcast float %i.dh to i32
  %.sroa.0.sroa.4.0.insert.ext = zext i32 %i.dl to i64
  %.sroa.0.sroa.4.0.insert.shift = shl nuw i64 %.sroa.0.sroa.4.0.insert.ext, 32
  %.sroa.0.sroa.0.0.insert.ext = zext i32 %i.ct to i64
  %.sroa.0.sroa.0.0.insert.insert = or disjoint i64 %.sroa.0.sroa.4.0.insert.shift, %.sroa.0.sroa.0.0.insert.ext ; 2 uses
  %i.dm = load float, ptr %i.bz, align 4, !tbaa !65
  %i.dn = fcmp ogt float %i.dm, %i.dh
  br i1 %i.dn, label %bb.aa, label %.preheader68.i

bb.aa:                                            ; preds = %bb.z
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.cb, ptr nonnull align 4 %i.y, i64 %.idx, i1 false)
  store i64 %.sroa.0.sroa.0.0.insert.insert, ptr %i.y, align 4
  store i8 1, ptr %.sroa.12.0..sroa_idx.i, align 4, !tbaa !60
  br label %_ZN5faiss9nndescent16insert_into_poolEPNS0_8NeighborEiS1_.exit

.preheader68.i:                                   ; preds = %bb.z
  br i1 %i.ca, label %.lr.ph.i, label %._crit_edge.i

.preheader.i:                                     ; preds = %.lr.ph.i
  %.not168 = icmp eq i32 %.063..i, 0
  br i1 %.not168, label %._crit_edge.i, label %.lr.ph74.i.preheader

.lr.ph74.i.preheader:                             ; preds = %.preheader.i
  %i.do = zext nneg i32 %.063..i to i64
  br label %.lr.ph74.i

.lr.ph.i:                                         ; preds = %.preheader68.i, %.lr.ph.i
  %.071.i = phi i32 [ %..0.i, %.lr.ph.i ], [ %i.bv, %.preheader68.i ] ; 2 uses
  %.06370.i = phi i32 [ %.063..i, %.lr.ph.i ], [ 0, %.preheader68.i ] ; 2 uses
  %i.dp = add nuw nsw i32 %.06370.i, %.071.i
  %i.dq = lshr i32 %i.dp, 1                       ; 3 uses
  %i.dr = zext nneg i32 %i.dq to i64
  %i.ds = getelementptr inbounds nuw [12 x i8], ptr %i.y, i64 %i.dr
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 4
  %i.du = load float, ptr %i.dt, align 4, !tbaa !65
  %i.dv = fcmp ogt float %i.du, %i.dh             ; 2 uses
  %.063..i = select i1 %i.dv, i32 %.06370.i, i32 %i.dq ; 4 uses
  %..0.i = select i1 %i.dv, i32 %i.dq, i32 %.071.i ; 5 uses
  %i.dw = add nsw i32 %..0.i, -1
  %i.dx = icmp slt i32 %.063..i, %i.dw
  br i1 %i.dx, label %.lr.ph.i, label %.preheader.i, !llvm.loop !4

.lr.ph74.i:                                       ; preds = %.lr.ph74.i.preheader, %bb.ac
  %indvars.iv151 = phi i64 [ %i.do, %.lr.ph74.i.preheader ], [ %indvars.iv.next152, %bb.ac ] ; 4 uses
  %i.dy = getelementptr inbounds nuw [12 x i8], ptr %i.y, i64 %indvars.iv151 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 4
  %i.ea = load float, ptr %i.dz, align 4, !tbaa !65
  %i.eb = fcmp olt float %i.ea, %i.dh
  br i1 %i.eb, label %._crit_edge.i, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph74.i
  %i.ec = load i32, ptr %i.dy, align 4, !tbaa !66
  %i.ed = icmp eq i32 %i.ec, %i.ct
  br i1 %i.ed, label %_ZN5faiss9nndescent16insert_into_poolEPNS0_8NeighborEiS1_.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %indvars.iv.next152 = add nsw i64 %indvars.iv151, -1
  %i.ee = icmp sgt i64 %indvars.iv151, 1
  br i1 %i.ee, label %.lr.ph74.i, label %._crit_edge.i, !llvm.loop !5

._crit_edge.i:                                    ; preds = %bb.ac, %.lr.ph74.i, %.preheader.i, %.preheader68.i
  %.0.lcssa80.i = phi i32 [ %..0.i, %.preheader.i ], [ %i.bv, %.preheader68.i ], [ %..0.i, %.lr.ph74.i ], [ %..0.i, %bb.ac ] ; 3 uses
  %.2.lcssa.i = phi i64 [ 0, %.preheader.i ], [ 0, %.preheader68.i ], [ 0, %bb.ac ], [ %indvars.iv151, %.lr.ph74.i ]
  %i.ef = getelementptr inbounds [12 x i8], ptr %i.y, i64 %.2.lcssa.i
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !66
  %i.eh = icmp eq i32 %i.eg, %i.ct
  br i1 %i.eh, label %_ZN5faiss9nndescent16insert_into_poolEPNS0_8NeighborEiS1_.exit, label %bb.ad

bb.ad:                                            ; preds = %._crit_edge.i
  %i.ei = zext nneg i32 %.0.lcssa80.i to i64
  %i.ej = getelementptr inbounds nuw [12 x i8], ptr %i.y, i64 %i.ei ; 5 uses
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !66
  %i.el = icmp eq i32 %i.ek, %i.ct
  br i1 %i.el, label %_ZN5faiss9nndescent16insert_into_poolEPNS0_8NeighborEiS1_.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.em = getelementptr i8, ptr %i.ej, i64 12
  %i.en = sub nsw i32 %.sroa.speculated, %.0.lcssa80.i
  %i.eo = sext i32 %i.en to i64
  %i.ep = mul nsw i64 %i.eo, 12
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.em, ptr nonnull align 4 %i.ej, i64 %i.ep, i1 false)
  store i64 %.sroa.0.sroa.0.0.insert.insert, ptr %i.ej, align 4
  %.sroa.12.0..sroa_idx60.i = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  store i8 1, ptr %.sroa.12.0..sroa_idx60.i, align 4, !tbaa !60
  br label %_ZN5faiss9nndescent16insert_into_poolEPNS0_8NeighborEiS1_.exit

_ZN5faiss9nndescent16insert_into_poolEPNS0_8NeighborEiS1_.exit: ; preds = %bb.ab, %._crit_edge.i, %bb.ad, %bb.aa, %bb.ae
  %.065.i = phi i32 [ 0, %bb.aa ], [ %i.u, %bb.ad ], [ %i.u, %._crit_edge.i ], [ %.0.lcssa80.i, %bb.ae ], [ %i.u, %bb.ab ]
  %spec.select = call i32 @llvm.smin.i32(i32 %.065.i, i32 %.069138)
  br label %bb.af

bb.af:                                            ; preds = %_ZN5faiss9nndescent16insert_into_poolEPNS0_8NeighborEiS1_.exit, %bb.x, %bb.t
  %.372 = phi i32 [ %.069138, %bb.t ], [ %spec.select, %_ZN5faiss9nndescent16insert_into_poolEPNS0_8NeighborEiS1_.exit ], [ %.069138, %bb.x ] ; 2 uses
  %i.eq = add nuw nsw i32 %.068139, 1             ; 2 uses
  %i.er = load i32, ptr %i.bt, align 8, !tbaa !80 ; 2 uses
  %i.es = icmp slt i32 %i.eq, %i.er
end_hunk_0
