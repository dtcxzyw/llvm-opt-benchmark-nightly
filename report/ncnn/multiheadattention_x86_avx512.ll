Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/multiheadattention_x86_avx512?download=true
inline.NumInlined: 160
inline.NumDeleted: 77
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZNK4ncnn29MultiHeadAttention_x86_avx5127forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE:bb.a
  %i.akj = icmp eq i32 %i.aki, 1
  br i1 %i.akj, label %bb.lg, label %_ZN4ncnn3MatD2Ev.exit202

bb.lg:                                            ; preds = %bb.lf
  %i.akk = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.akl = load ptr, ptr %i.akk, align 16, !tbaa !19 ; 3 uses
  %.not3.i378 = icmp eq ptr %i.akl, null
  %i.akm = load ptr, ptr %5, align 16, !tbaa !20  ; 3 uses
  br i1 %.not3.i378, label %bb.li, label %bb.lh

bb.lh:                                            ; preds = %bb.lg
  %i.akn = load ptr, ptr %i.akl, align 8, !tbaa !12
  %i.ako = getelementptr inbounds nuw i8, ptr %i.akn, i64 24
  %i.akp = load ptr, ptr %i.ako, align 8
  invoke void %i.akp(ptr noundef nonnull align 8 dereferenceable(8) %i.akl, ptr noundef %i.akm)
          to label %_ZN4ncnn3MatD2Ev.exit202 unwind label %bb.lk, !inline_history !0

bb.li:                                            ; preds = %bb.lg
  %.not.i410 = icmp eq ptr %i.akm, null
  br i1 %.not.i410, label %_ZN4ncnn3MatD2Ev.exit202, label %bb.lj

bb.lj:                                            ; preds = %bb.li
  call void @free(ptr noundef nonnull %i.akm) #9
  br label %_ZN4ncnn3MatD2Ev.exit202

bb.lk:                                            ; preds = %bb.lh
  %i.akq = landingpad { ptr, i32 }
          catch ptr null
  %i.akr = extractvalue { ptr, i32 } %i.akq, 0
  call void @__clang_call_terminate(ptr %i.akr) #16
  unreachable

_ZN4ncnn3MatD2Ev.exit202:                         ; preds = %bb.lf, %_ZN4ncnn3MatD2Ev.exit203, %bb.lh, %bb.li, %bb.lj
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  %i.aks = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.akt = load ptr, ptr %i.aks, align 8, !tbaa !18 ; 2 uses
  %.not.i381 = icmp eq ptr %i.akt, null
  br i1 %.not.i381, label %_ZN4ncnn3MatD2Ev.exit, label %bb.ll

bb.ll:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit202
  %i.aku = atomicrmw add ptr %i.akt, i32 -1 acq_rel, align 4
  %i.akv = icmp eq i32 %i.aku, 1
  br i1 %i.akv, label %bb.lm, label %_ZN4ncnn3MatD2Ev.exit

bb.lm:                                            ; preds = %bb.ll
  %i.akw = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.akx = load ptr, ptr %i.akw, align 16, !tbaa !19 ; 3 uses
  %.not3.i382 = icmp eq ptr %i.akx, null
  %i.aky = load ptr, ptr %4, align 16, !tbaa !20  ; 3 uses
  br i1 %.not3.i382, label %bb.lo, label %bb.ln

bb.ln:                                            ; preds = %bb.lm
  %i.akz = load ptr, ptr %i.akx, align 8, !tbaa !12
  %i.ala = getelementptr inbounds nuw i8, ptr %i.akz, i64 24
  %i.alb = load ptr, ptr %i.ala, align 8
  invoke void %i.alb(ptr noundef nonnull align 8 dereferenceable(8) %i.akx, ptr noundef %i.aky)
          to label %_ZN4ncnn3MatD2Ev.exit unwind label %bb.lq, !inline_history !0

bb.lo:                                            ; preds = %bb.lm
  %.not.i408 = icmp eq ptr %i.aky, null
  br i1 %.not.i408, label %_ZN4ncnn3MatD2Ev.exit, label %bb.lp

bb.lp:                                            ; preds = %bb.lo
  call void @free(ptr noundef nonnull %i.aky) #9
  br label %_ZN4ncnn3MatD2Ev.exit

bb.lq:                                            ; preds = %bb.ln
  %i.alc = landingpad { ptr, i32 }
          catch ptr null
  %i.ald = extractvalue { ptr, i32 } %i.alc, 0
  call void @__clang_call_terminate(ptr %i.ald) #16
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.ll, %_ZN4ncnn3MatD2Ev.exit202, %bb.ln, %bb.lo, %bb.lp
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn
}

declare noundef i32 @_ZNK4ncnn5Layer7forwardERKNS_3MatERS1_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #1

declare noundef i32 @_ZNK4ncnn5Layer15forward_inplaceERSt6vectorINS_3MatESaIS2_EERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #1

declare noundef i32 @_ZNK4ncnn5Layer15forward_inplaceERNS_3MatERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4ncnn29MultiHeadAttention_x86_avx512C2Ev(ptr noundef nonnull align 8 dereferenceable(1104) %0) unnamed_addr #2 align 2 {
bb.a:
  tail call void @_ZN4ncnn18MultiHeadAttentionC2Ev(ptr noundef nonnull align 8 dereferenceable(1044) %0)
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN4ncnn29MultiHeadAttention_x86_avx512E, i64 16), ptr %0, align 8, !tbaa !12
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 11
  store i8 1, ptr %i.a, align 1, !tbaa !44
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 1, ptr %i.b, align 4, !tbaa !45
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1048
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.c, i8 0, i64 56, i1 false)
  ret void
}

declare void @_ZN4ncnn18MultiHeadAttentionC2Ev(ptr noundef nonnull align 8 dereferenceable(1044)) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

declare noundef ptr @_ZN4ncnn16create_layer_cpuEi(i32 noundef) local_unnamed_addr #1

declare void @_ZN4ncnn9ParamDictC1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #1

declare void @_ZN4ncnn9ParamDict3setEii(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

declare void @_ZN4ncnn20ModelBinFromMatArrayC1EPKNS_3MatE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN4ncnn20ModelBinFromMatArrayD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nounwind
declare void @_ZN4ncnn9ParamDictD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #4

declare void @_ZN4ncnn9ParamDict3setEif(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, float noundef nofpclass(nan inf)) local_unnamed_addr #1

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #9 ; 0 uses
  tail call void @_ZSt9terminatev() #16
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #6

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #7

declare void @_ZN4ncnn3Mat6createEimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

declare void @_ZNK4ncnn18MultiHeadAttention25resolve_bottom_blob_indexEiRiS1_S1_S1_S1_S1_(ptr noundef nonnull align 8 dereferenceable(1044), i32 noundef, ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #1

declare void @_ZN4ncnn15convert_packingERKNS_3MatERS0_iRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #1

declare void @_ZN4ncnn3Mat6createEiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIiSaIiEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !74   ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !73     ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = ashr exact i64 %i.f, 2                   ; 3 uses
  %i.h = icmp ugt i64 %1, %i.g
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = sub nuw i64 %1, %i.g
  tail call void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.i)
  br label %_ZNSt6vectorIiSaIiEE15_M_erase_at_endEPi.exit

bb.c:                                             ; preds = %bb.a
  %i.j = icmp ult i64 %1, %i.g
  br i1 %i.j, label %bb.d, label %_ZNSt6vectorIiSaIiEE15_M_erase_at_endEPi.exit

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %1 ; 2 uses
  %.not.i = icmp eq ptr %i.b, %i.k
  br i1 %.not.i, label %_ZNSt6vectorIiSaIiEE15_M_erase_at_endEPi.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i:          ; preds = %bb.d
  store ptr %i.k, ptr %i.a, align 8, !tbaa !74
  br label %_ZNSt6vectorIiSaIiEE15_M_erase_at_endEPi.exit

_ZNSt6vectorIiSaIiEE15_M_erase_at_endEPi.exit:    ; preds = %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i, %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn29MultiHeadAttention_x86_avx5127forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %10) #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %11 = alloca %"class.std::vector.3", align 8    ; 10 uses
  %12 = alloca %"class.ncnn::Mat", align 16       ; 14 uses
  %13 = alloca %"class.std::vector.3", align 8    ; 9 uses
  %14 = alloca %"class.ncnn::Option", align 8     ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 212
  %i.f = load i32, ptr %i.e, align 4, !tbaa !69   ; 2 uses
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.ad

bb.b:                                             ; preds = %bb.a
  %i.h = add nsw i32 %i.f, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i32 0, ptr %i.a, align 4, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store i32 %i.h, ptr %i.b, align 4, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  store i32 1, ptr %i.c, align 4, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  store i32 0, ptr %i.d, align 4, !tbaa !24
  %i.i = load i32, ptr %0, align 4, !tbaa !24     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.i, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.j = load i32, ptr %i.b, align 4, !tbaa !24
  %i.k = call i32 @llvm.smin.i32(i32 %i.j, i32 %i.h) ; 2 uses
  store i32 %i.k, ptr %i.b, align 4, !tbaa !24
  %i.l = load i32, ptr %i.a, align 4, !tbaa !24   ; 2 uses
  %.not105 = icmp sgt i32 %i.l, %i.k
  br i1 %.not105, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 44
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 228
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %12, i64 24 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %12, i64 40 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 44 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 52
  %i.ak = getelementptr inbounds nuw i8, ptr %12, i64 56 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.am = getelementptr inbounds nuw i8, ptr %12, i64 64 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %7, i64 44
  %i.ar = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.at = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.au = getelementptr inbounds nuw i8, ptr %14, i64 4
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 1080
  %i.aw = sext i32 %i.l to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN4ncnn3MatESaIS1_EED2Ev.exit102
  %indvars.iv = phi i64 [ %i.aw, %.lr.ph ], [ %indvars.iv.next, %_ZNSt6vectorIN4ncnn3MatESaIS1_EED2Ev.exit102 ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  %i.ax = invoke noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #19
          to label %.noexc29 unwind label %bb.ae  ; 19 uses

.noexc29:                                         ; preds = %bb.c
  store ptr %i.ax, ptr %11, align 8, !tbaa !68
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 144
  store ptr %i.ay, ptr %i.m, align 8, !tbaa !76
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 64
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 72
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 144 ; 3 uses
  store ptr %i.bc, ptr %i.n, align 8, !tbaa !67
  %i.bd = load i32, ptr %4, align 4, !tbaa !24    ; 3 uses
  %i.be = sext i32 %i.bd to i64                   ; 3 uses
  %i.bf = mul nsw i64 %indvars.iv, %i.be          ; 2 uses
  %i.bg = load i32, ptr %i.o, align 4, !tbaa !71, !noalias !101 ; 2 uses
  %i.bh = load ptr, ptr %3, align 8, !tbaa !20, !noalias !101
  %i.bi = sext i32 %i.bg to i64                   ; 2 uses
  %i.bj = mul nsw i64 %i.bf, %i.bi
  %i.bk = load i64, ptr %i.p, align 8, !tbaa !54, !noalias !101 ; 2 uses
  %i.bl = mul i64 %i.bj, %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bl
  %i.bn = load i32, ptr %i.q, align 8, !tbaa !55, !noalias !101
  %i.bo = load ptr, ptr %i.r, align 8, !tbaa !19, !noalias !101
  %i.bp = mul nsw i64 %i.bi, %i.be
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %.pre = load i32, ptr %i.s, align 4, !tbaa !71, !noalias !102 ; 2 uses
  %.pre113 = load i64, ptr %i.t, align 8, !tbaa !54, !noalias !102 ; 2 uses
  %.pre114 = load i32, ptr %i.u, align 8, !tbaa !55, !noalias !102
  %.pre115 = load ptr, ptr %i.v, align 8, !tbaa !19, !noalias !102
  %.pre112 = load ptr, ptr %5, align 8, !tbaa !20, !noalias !102
  %i.br = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ax, i64 40
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ax, i64 56
  store ptr %i.bm, ptr %i.ax, align 8, !tbaa !20
  store ptr null, ptr %i.bq, align 8, !tbaa !18
  store i64 %i.bk, ptr %i.br, align 8, !tbaa !54
  store i32 %i.bn, ptr %i.bs, align 8, !tbaa !55
  store ptr %i.bo, ptr %i.az, align 8, !tbaa !19
  %i.bv = insertelement <4 x i32> <i32 2, i32 poison, i32 poison, i32 1>, i32 %i.bg, i64 1
  %i.bw = insertelement <4 x i32> %i.bv, i32 %i.bd, i64 2
  store <4 x i32> %i.bw, ptr %i.bt, align 8, !tbaa !24
  store i32 1, ptr %i.bu, align 8, !tbaa !56
  store i64 %i.bp, ptr %i.ba, align 8, !tbaa !21
  %i.bx = sext i32 %.pre to i64                   ; 2 uses
  %i.by = mul nsw i64 %i.bf, %i.bx
  %i.bz = mul i64 %i.by, %.pre113
  %i.ca = getelementptr inbounds nuw i8, ptr %.pre112, i64 %i.bz
  %i.cb = mul nsw i64 %i.bx, %i.be
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ax, i64 80
  %.pre119 = load i32, ptr %i.w, align 4, !tbaa !64
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ax, i64 88
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ax, i64 96
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ax, i64 112
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ax, i64 128
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ax, i64 136
  store ptr %i.ca, ptr %i.bb, align 8, !tbaa !20
  store ptr null, ptr %i.cc, align 8, !tbaa !18
  store i64 %.pre113, ptr %i.cd, align 8, !tbaa !54
  store i32 %.pre114, ptr %i.ce, align 8, !tbaa !55
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ax, i64 104
  store ptr %.pre115, ptr %i.ci, align 8, !tbaa !19
  %i.cj = insertelement <4 x i32> <i32 2, i32 poison, i32 poison, i32 1>, i32 %.pre, i64 1
  %i.ck = insertelement <4 x i32> %i.cj, i32 %i.bd, i64 2
  store <4 x i32> %i.ck, ptr %i.cf, align 8, !tbaa !24
  store i32 1, ptr %i.cg, align 8, !tbaa !56
  store i64 %i.cb, ptr %i.ch, align 8, !tbaa !21
  %.not24 = icmp eq i32 %.pre119, 0
  br i1 %.not24, label %bb.n, label %bb.d

bb.d:                                             ; preds = %.noexc29
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #9
  %i.cl = load i32, ptr %i.x, align 8, !tbaa !103
  %i.cm = icmp eq i32 %i.cl, 3
  br i1 %i.cm, label %_ZN4ncnn3Mat7channelEi.exit, label %bb.e

_ZN4ncnn3Mat7channelEi.exit:                      ; preds = %bb.d
  %i.cn = load i32, ptr %i.aj, align 4, !tbaa !104, !noalias !105
  %i.co = load ptr, ptr %6, align 8, !tbaa !20, !noalias !105
  %i.cp = load i64, ptr %i.an, align 8, !tbaa !21, !noalias !105
  %i.cq = mul i64 %i.cp, %indvars.iv
  %i.cr = load i64, ptr %i.ab, align 8, !tbaa !54, !noalias !105 ; 4 uses
  %i.cs = mul i64 %i.cq, %i.cr
  %i.ct = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.cs
  %i.cu = load i32, ptr %i.ad, align 8, !tbaa !55, !noalias !105
  %i.cv = load ptr, ptr %i.af, align 8, !tbaa !19, !noalias !105
  store ptr %i.ct, ptr %12, align 16, !tbaa !20
  store ptr null, ptr %i.y, align 8, !tbaa !18
  store i64 %i.cr, ptr %i.aa, align 16, !tbaa !54
  store i32 %i.cu, ptr %i.ac, align 8, !tbaa !55
  store ptr %i.cv, ptr %i.ae, align 16, !tbaa !19
  store i32 %i.cn, ptr %i.ak, align 8, !tbaa !56
  %i.cw = load <2 x i32>, ptr %i.ah, align 4, !tbaa !24, !noalias !105
  %i.cx = load i32, ptr %i.ai, align 8, !tbaa !70, !noalias !105
  %i.cy = load i32, ptr %i.ah, align 4, !tbaa !71, !noalias !105
  %i.cz = sext i32 %i.cy to i64
  %i.da = sext i32 %i.cx to i64
  %i.db = mul nsw i64 %i.da, %i.cz
  %i.dc = mul i64 %i.db, %i.cr
  %i.dd = add i64 %i.dc, 15
  %i.de = and i64 %i.dd, -16
  %i.df = udiv i64 %i.de, %i.cr
  store i64 %i.df, ptr %i.am, align 16, !tbaa !21
  %i.dg = shufflevector <2 x i32> %i.cw, <2 x i32> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.dh = shufflevector <4 x i32> <i32 2, i32 poison, i32 poison, i32 1>, <4 x i32> %i.dg, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  store <4 x i32> %i.dh, ptr %i.ag, align 8, !tbaa !24
  br label %_ZN4ncnn3Mat6addrefEv.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.di = load ptr, ptr %i.z, align 8, !tbaa !18  ; 2 uses
  %i.dj = load <2 x ptr>, ptr %6, align 8, !tbaa !53
  store <2 x ptr> %i.dj, ptr %12, align 16, !tbaa !53
  %i.dk = load i64, ptr %i.ab, align 8, !tbaa !54
  store i64 %i.dk, ptr %i.aa, align 16, !tbaa !54
  %i.dl = load i32, ptr %i.ad, align 8, !tbaa !55
  store i32 %i.dl, ptr %i.ac, align 8, !tbaa !55
  %i.dm = load ptr, ptr %i.af, align 8, !tbaa !19
  store ptr %i.dm, ptr %i.ae, align 16, !tbaa !19
  %15 = load <4 x i32>, ptr %i.x, align 8, !tbaa !24
  store <4 x i32> %15, ptr %i.ag, align 8, !tbaa !24
  %16 = load i32, ptr %i.al, align 8, !tbaa !56
  store i32 %16, ptr %i.ak, align 8, !tbaa !56
  %i.dn = load i64, ptr %i.an, align 8, !tbaa !21
  store i64 %i.dn, ptr %i.am, align 16, !tbaa !21
  %.not.i78 = icmp eq ptr %i.di, null
  br i1 %.not.i78, label %_ZN4ncnn3Mat6addrefEv.exit.thread, label %_ZN4ncnn3Mat6addrefEv.exit

_ZN4ncnn3Mat6addrefEv.exit:                       ; preds = %bb.e
  %i.do = atomicrmw add ptr %i.di, i32 1 acq_rel, align 4 ; 0 uses
  %.pre120 = load ptr, ptr %i.n, align 8, !tbaa !67 ; 10 uses
  %.pre121 = load ptr, ptr %i.m, align 8, !tbaa !76
  %i.dp = icmp eq ptr %.pre120, %.pre121
  br i1 %i.dp, label %_ZN4ncnn3Mat6addrefEv.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZN4ncnn3Mat6addrefEv.exit
  %i.dq = load ptr, ptr %i.y, align 8, !tbaa !18  ; 2 uses
  %i.dr = load <2 x ptr>, ptr %12, align 16, !tbaa !53
  store <2 x ptr> %i.dr, ptr %.pre120, align 8, !tbaa !53
  %i.ds = getelementptr inbounds nuw i8, ptr %.pre120, i64 16
  %i.dt = load i64, ptr %i.aa, align 16, !tbaa !54
  store i64 %i.dt, ptr %i.ds, align 8, !tbaa !54
  %i.du = getelementptr inbounds nuw i8, ptr %.pre120, i64 24
  %i.dv = load i32, ptr %i.ac, align 8, !tbaa !55
  store i32 %i.dv, ptr %i.du, align 8, !tbaa !55
  %i.dw = getelementptr inbounds nuw i8, ptr %.pre120, i64 32
  %i.dx = load ptr, ptr %i.ae, align 16, !tbaa !19
  store ptr %i.dx, ptr %i.dw, align 8, !tbaa !19
  %i.dy = getelementptr inbounds nuw i8, ptr %.pre120, i64 40
  %i.dz = load <4 x i32>, ptr %i.ag, align 8, !tbaa !24
  store <4 x i32> %i.dz, ptr %i.dy, align 8, !tbaa !24
  %i.ea = getelementptr inbounds nuw i8, ptr %.pre120, i64 56
  %i.eb = load i32, ptr %i.ak, align 8, !tbaa !56
  store i32 %i.eb, ptr %i.ea, align 8, !tbaa !56
  %i.ec = getelementptr inbounds nuw i8, ptr %.pre120, i64 64
  %i.ed = load i64, ptr %i.am, align 16, !tbaa !21
  store i64 %i.ed, ptr %i.ec, align 8, !tbaa !21
  %.not.i.i.i = icmp eq ptr %i.dq, null
  br i1 %.not.i.i.i, label %_ZNSt15__new_allocatorIN4ncnn3MatEE9constructIS1_JRKS1_EEEvPT_DpOT0_.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ee = atomicrmw add ptr %i.dq, i32 1 acq_rel, align 4 ; 0 uses
  %.pre.i = load ptr, ptr %i.n, align 8, !tbaa !67
  br label %_ZNSt15__new_allocatorIN4ncnn3MatEE9constructIS1_JRKS1_EEEvPT_DpOT0_.exit.i

_ZNSt15__new_allocatorIN4ncnn3MatEE9constructIS1_JRKS1_EEEvPT_DpOT0_.exit.i: ; preds = %bb.g, %bb.f
  %i.ef = phi ptr [ %.pre120, %bb.f ], [ %.pre.i, %bb.g ]
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 72
  store ptr %i.eg, ptr %i.n, align 8, !tbaa !67
  br label %_ZNSt6vectorIN4ncnn3MatESaIS1_EE9push_backERKS1_.exit

_ZN4ncnn3Mat6addrefEv.exit.thread:                ; preds = %_ZN4ncnn3Mat7channelEi.exit, %bb.e, %_ZN4ncnn3Mat6addrefEv.exit
  %i.eh = phi ptr [ %.pre120, %_ZN4ncnn3Mat6addrefEv.exit ], [ %i.bc, %bb.e ], [ %i.bc, %_ZN4ncnn3Mat7channelEi.exit ]
  invoke void @_ZNSt6vectorIN4ncnn3MatESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr %i.eh, ptr noundef nonnull align 8 dereferenceable(72) %12)
          to label %_ZNSt6vectorIN4ncnn3MatESaIS1_EE9push_backERKS1_.exit unwind label %bb.ae

_ZNSt6vectorIN4ncnn3MatESaIS1_EE9push_backERKS1_.exit: ; preds = %_ZNSt15__new_allocatorIN4ncnn3MatEE9constructIS1_JRKS1_EEEvPT_DpOT0_.exit.i, %_ZN4ncnn3Mat6addrefEv.exit.thread
  %i.ei = load ptr, ptr %i.y, align 8, !tbaa !18  ; 2 uses
  %.not.i52 = icmp eq ptr %i.ei, null
  br i1 %.not.i52, label %_ZN4ncnn3MatD2Ev.exit25, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIN4ncnn3MatESaIS1_EE9push_backERKS1_.exit
  %i.ej = atomicrmw add ptr %i.ei, i32 -1 acq_rel, align 4
  %i.ek = icmp eq i32 %i.ej, 1
  br i1 %i.ek, label %bb.i, label %_ZN4ncnn3MatD2Ev.exit25

bb.i:                                             ; preds = %bb.h
  %i.el = load ptr, ptr %i.ae, align 16, !tbaa !19 ; 3 uses
  %.not3.i53 = icmp eq ptr %i.el, null
  %i.em = load ptr, ptr %12, align 16, !tbaa !20  ; 3 uses
  br i1 %.not3.i53, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.en = load ptr, ptr %i.el, align 8, !tbaa !12
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 24
  %i.ep = load ptr, ptr %i.eo, align 8
  invoke void %i.ep(ptr noundef nonnull align 8 dereferenceable(8) %i.el, ptr noundef %i.em)
          to label %_ZN4ncnn3MatD2Ev.exit25 unwind label %bb.m, !inline_history !0

bb.k:                                             ; preds = %bb.i
  %.not.i61 = icmp eq ptr %i.em, null
  br i1 %.not.i61, label %_ZN4ncnn3MatD2Ev.exit25, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @free(ptr noundef nonnull %i.em) #9
  br label %_ZN4ncnn3MatD2Ev.exit25

bb.m:                                             ; preds = %bb.j
  %i.eq = landingpad { ptr, i32 }
          catch ptr null
  %i.er = extractvalue { ptr, i32 } %i.eq, 0
  call void @__clang_call_terminate(ptr %i.er) #16
  unreachable

_ZN4ncnn3MatD2Ev.exit25:                          ; preds = %bb.h, %_ZNSt6vectorIN4ncnn3MatESaIS1_EE9push_backERKS1_.exit, %bb.j, %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #9
  br label %bb.n

bb.n:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit25, %.noexc29
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false)
  %i.es = invoke noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #19
          to label %_ZN4ncnn3MatD2Ev.exit unwind label %bb.ae ; 10 uses

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.n
  store ptr %i.es, ptr %13, align 8, !tbaa !68
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 72 ; 2 uses
  store ptr %i.et, ptr %i.ao, align 8, !tbaa !76
  %i.eu = getelementptr inbounds nuw i8, ptr %i.es, i64 32
  %i.ev = getelementptr inbounds nuw i8, ptr %i.es, i64 64
  store ptr %i.et, ptr %i.ap, align 8, !tbaa !67
  %i.ew = load i32, ptr %8, align 4, !tbaa !24    ; 2 uses
  %i.ex = sext i32 %i.ew to i64                   ; 2 uses
  %i.ey = mul nsw i64 %indvars.iv, %i.ex
  %i.ez = load i32, ptr %i.aq, align 4, !tbaa !71, !noalias !106 ; 2 uses
  %i.fa = load ptr, ptr %7, align 8, !tbaa !20, !noalias !106
  %i.fb = sext i32 %i.ez to i64                   ; 2 uses
  %i.fc = mul nsw i64 %i.ey, %i.fb
  %i.fd = load i64, ptr %i.ar, align 8, !tbaa !54, !noalias !106 ; 2 uses
  %i.fe = mul i64 %i.fc, %i.fd
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fa, i64 %i.fe
  %i.fg = load i32, ptr %i.as, align 8, !tbaa !55, !noalias !106
  %i.fh = load ptr, ptr %i.at, align 8, !tbaa !19, !noalias !106
  %i.fi = mul nsw i64 %i.fb, %i.ex
  %i.fj = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  %.pre124 = load ptr, ptr %i.av, align 8, !tbaa !63 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  %i.fl = getelementptr inbounds nuw i8, ptr %i.es, i64 24
  %i.fm = getelementptr inbounds nuw i8, ptr %i.es, i64 40
  %i.fn = getelementptr inbounds nuw i8, ptr %i.es, i64 56
  store ptr %i.ff, ptr %i.es, align 8, !tbaa !20
  store ptr null, ptr %i.fj, align 8, !tbaa !18
  store i64 %i.fd, ptr %i.fk, align 8, !tbaa !54
  store i32 %i.fg, ptr %i.fl, align 8, !tbaa !55
  store ptr %i.fh, ptr %i.eu, align 8, !tbaa !19
  %i.fo = insertelement <4 x i32> <i32 2, i32 poison, i32 poison, i32 1>, i32 %i.ez, i64 1
  %i.fp = insertelement <4 x i32> %i.fo, i32 %i.ew, i64 2
  store <4 x i32> %i.fp, ptr %i.fm, align 8, !tbaa !24
  store i32 1, ptr %i.fn, align 8, !tbaa !56
  store i64 %i.fi, ptr %i.ev, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %14, ptr noundef nonnull align 8 dereferenceable(64) %9, i64 64, i1 false), !tbaa.struct !27
  store i32 1, ptr %i.au, align 4, !tbaa !65
  %i.fq = load ptr, ptr %.pre124, align 8, !tbaa !12
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 48
  %i.fs = load ptr, ptr %i.fr, align 8
  %i.ft = invoke noundef i32 %i.fs(ptr noundef nonnull align 8 dereferenceable(208) %.pre124, ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(24) %13, ptr noundef nonnull align 8 dereferenceable(64) %14)
          to label %bb.o unwind label %bb.ae

bb.o:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit
  %i.fu = load ptr, ptr %10, align 8, !tbaa !73
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.fu, i64 %indvars.iv
  store i32 %i.ft, ptr %i.fv, align 4, !tbaa !24
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #9
  %i.fw = load ptr, ptr %13, align 8, !tbaa !68   ; 3 uses
  %i.fx = load ptr, ptr %i.ap, align 8, !tbaa !67 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.fw, %i.fx
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN4ncnn3MatES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.o, %_ZSt8_DestroyIN4ncnn3MatEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.gm, %_ZSt8_DestroyIN4ncnn3MatEEvPT_.exit.i.i.i ], [ %i.fw, %bb.o ] ; 7 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !18 ; 2 uses
  %.not.i.i.i.i.i88 = icmp eq ptr %i.fz, null
  br i1 %.not.i.i.i.i.i88, label %_ZSt8_DestroyIN4ncnn3MatEEvPT_.exit.i.i.i, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i.i.i
  %i.ga = atomicrmw add ptr %i.fz, i32 -1 acq_rel, align 4
  %i.gb = icmp eq i32 %i.ga, 1
  br i1 %i.gb, label %bb.q, label %_ZSt8_DestroyIN4ncnn3MatEEvPT_.exit.i.i.i

bb.q:                                             ; preds = %bb.p
  %i.gc = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !19 ; 3 uses
  %.not3.i.i.i.i.i = icmp eq ptr %i.gd, null
  %i.ge = load ptr, ptr %.05.i.i.i, align 8, !tbaa !20 ; 3 uses
  br i1 %.not3.i.i.i.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.gf = load ptr, ptr %i.gd, align 8, !tbaa !12
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 24
  %i.gh = load ptr, ptr %i.gg, align 8
  invoke void %i.gh(ptr noundef nonnull align 8 dereferenceable(8) %i.gd, ptr noundef %i.ge)
          to label %_ZSt8_DestroyIN4ncnn3MatEEvPT_.exit.i.i.i unwind label %bb.u, !inline_history !0

bb.s:                                             ; preds = %bb.q
  %.not.i1.i.i.i.i = icmp eq ptr %i.ge, null
  br i1 %.not.i1.i.i.i.i, label %_ZSt8_DestroyIN4ncnn3MatEEvPT_.exit.i.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @free(ptr noundef nonnull %i.ge) #9
  br label %_ZSt8_DestroyIN4ncnn3MatEEvPT_.exit.i.i.i

bb.u:                                             ; preds = %bb.r
  %i.gi = landingpad { ptr, i32 }
          catch ptr null
  %i.gj = extractvalue { ptr, i32 } %i.gi, 0
  call void @__clang_call_terminate(ptr %i.gj) #16
  unreachable

_ZSt8_DestroyIN4ncnn3MatEEvPT_.exit.i.i.i:        ; preds = %bb.t, %bb.s, %bb.r, %bb.p, %.lr.ph.i.i.i
  %i.gk = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 40
  %i.gl = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 64
  store i64 0, ptr %i.gl, align 8, !tbaa !21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %.05.i.i.i, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.gk, i8 0, i64 20, i1 false)
  %i.gm = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 72 ; 2 uses
  %.not.i.i.i89 = icmp eq ptr %i.gm, %i.fx
  br i1 %.not.i.i.i89, label %_ZSt8_DestroyIPN4ncnn3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPN4ncnn3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN4ncnn3MatEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %13, align 8, !tbaa !68
  br label %_ZSt8_DestroyIPN4ncnn3MatES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN4ncnn3MatES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN4ncnn3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %bb.o
  %i.gn = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN4ncnn3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.fw, %bb.o ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.gn, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN4ncnn3MatESaIS1_EED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %_ZSt8_DestroyIPN4ncnn3MatES1_EvT_S3_RSaIT0_E.exit.i
  %i.go = load ptr, ptr %i.ao, align 8, !tbaa !76
  %i.gp = ptrtoint ptr %i.go to i64
  %i.gq = ptrtoint ptr %i.gn to i64
  %i.gr = sub i64 %i.gp, %i.gq
  call void @_ZdlPvm(ptr noundef nonnull %i.gn, i64 noundef %i.gr) #17
  br label %_ZNSt6vectorIN4ncnn3MatESaIS1_EED2Ev.exit

_ZNSt6vectorIN4ncnn3MatESaIS1_EED2Ev.exit:        ; preds = %_ZSt8_DestroyIPN4ncnn3MatES1_EvT_S3_RSaIT0_E.exit.i, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #9
  %i.gs = load ptr, ptr %11, align 8, !tbaa !68   ; 3 uses
  %i.gt = load ptr, ptr %i.n, align 8, !tbaa !67  ; 2 uses
  %.not4.i.i.i90 = icmp eq ptr %i.gs, %i.gt
  br i1 %.not4.i.i.i90, label %_ZSt8_DestroyIPN4ncnn3MatES1_EvT_S3_RSaIT0_E.exit.i98, label %.lr.ph.i.i.i91
end_hunk_0
