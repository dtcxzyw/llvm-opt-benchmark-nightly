Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/multiheadattention_x86_fma?download=true
inline.NumInlined: 160
inline.NumDeleted: 77
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZNK4ncnn26MultiHeadAttention_x86_fma7forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE:bb.a
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
  call void @__clang_call_terminate(ptr %i.ald) #17
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
define hidden void @_ZN4ncnn26MultiHeadAttention_x86_fmaC2Ev(ptr noundef nonnull align 8 dereferenceable(1104) %0) unnamed_addr #2 align 2 {
bb.a:
  tail call void @_ZN4ncnn18MultiHeadAttentionC2Ev(ptr noundef nonnull align 8 dereferenceable(1044) %0)
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN4ncnn26MultiHeadAttention_x86_fmaE, i64 16), ptr %0, align 8, !tbaa !12
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
  tail call void @_ZSt9terminatev() #17
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
define internal void @_ZNK4ncnn26MultiHeadAttention_x86_fma7forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %10) #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %11 = alloca %"class.std::vector.3", align 8    ; 10 uses
  %12 = alloca %"class.ncnn::Mat", align 16       ; 17 uses
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
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.y = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %12, i64 24 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %12, i64 40 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %12, i64 44 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 44 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %12, i64 48
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.al = getelementptr inbounds nuw i8, ptr %12, i64 52
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 52
  %i.an = getelementptr inbounds nuw i8, ptr %12, i64 56 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %12, i64 64 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 44
  %i.at = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.au = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.av = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.aw = getelementptr inbounds nuw i8, ptr %14, i64 4
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 1080
  %i.ay = sext i32 %i.l to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN4ncnn3MatESaIS1_EED2Ev.exit102
  %indvars.iv = phi i64 [ %i.ay, %.lr.ph ], [ %indvars.iv.next, %_ZNSt6vectorIN4ncnn3MatESaIS1_EED2Ev.exit102 ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  %i.az = invoke noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #20
          to label %.noexc29 unwind label %bb.ae  ; 19 uses

.noexc29:                                         ; preds = %bb.c
  store ptr %i.az, ptr %11, align 8, !tbaa !68
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 144
  store ptr %i.ba, ptr %i.m, align 8, !tbaa !76
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 32
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 64
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 72
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 144 ; 3 uses
  store ptr %i.be, ptr %i.n, align 8, !tbaa !67
  %i.bf = load i32, ptr %4, align 4, !tbaa !24    ; 3 uses
  %i.bg = sext i32 %i.bf to i64                   ; 3 uses
  %i.bh = mul nsw i64 %indvars.iv, %i.bg          ; 2 uses
  %i.bi = load i32, ptr %i.o, align 4, !tbaa !71, !noalias !101 ; 2 uses
  %i.bj = load ptr, ptr %3, align 8, !tbaa !20, !noalias !101
  %i.bk = sext i32 %i.bi to i64                   ; 2 uses
  %i.bl = mul nsw i64 %i.bh, %i.bk
  %i.bm = load i64, ptr %i.p, align 8, !tbaa !54, !noalias !101 ; 2 uses
  %i.bn = mul i64 %i.bl, %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bn
  %i.bp = load i32, ptr %i.q, align 8, !tbaa !55, !noalias !101
  %i.bq = load ptr, ptr %i.r, align 8, !tbaa !19, !noalias !101
  %i.br = mul nsw i64 %i.bk, %i.bg
  %i.bs = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %.pre = load i32, ptr %i.s, align 4, !tbaa !71, !noalias !102 ; 2 uses
  %.pre113 = load i64, ptr %i.t, align 8, !tbaa !54, !noalias !102 ; 2 uses
  %.pre114 = load i32, ptr %i.u, align 8, !tbaa !55, !noalias !102
  %.pre115 = load ptr, ptr %i.v, align 8, !tbaa !19, !noalias !102
  %.pre112 = load ptr, ptr %5, align 8, !tbaa !20, !noalias !102
  %i.bt = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bu = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %i.bv = getelementptr inbounds nuw i8, ptr %i.az, i64 40
  %i.bw = getelementptr inbounds nuw i8, ptr %i.az, i64 56
  store ptr %i.bo, ptr %i.az, align 8, !tbaa !20
  store ptr null, ptr %i.bs, align 8, !tbaa !18
  store i64 %i.bm, ptr %i.bt, align 8, !tbaa !54
  store i32 %i.bp, ptr %i.bu, align 8, !tbaa !55
  store ptr %i.bq, ptr %i.bb, align 8, !tbaa !19
  %i.bx = insertelement <4 x i32> <i32 2, i32 poison, i32 poison, i32 1>, i32 %i.bi, i64 1
  %i.by = insertelement <4 x i32> %i.bx, i32 %i.bf, i64 2
  store <4 x i32> %i.by, ptr %i.bv, align 8, !tbaa !24
  store i32 1, ptr %i.bw, align 8, !tbaa !56
  store i64 %i.br, ptr %i.bc, align 8, !tbaa !21
  %i.bz = sext i32 %.pre to i64                   ; 2 uses
  %i.ca = mul nsw i64 %i.bh, %i.bz
  %i.cb = mul i64 %i.ca, %.pre113
  %i.cc = getelementptr inbounds nuw i8, ptr %.pre112, i64 %i.cb
  %i.cd = mul nsw i64 %i.bz, %i.bg
  %i.ce = getelementptr inbounds nuw i8, ptr %i.az, i64 80
  %.pre119 = load i32, ptr %i.w, align 4, !tbaa !64
  %i.cf = getelementptr inbounds nuw i8, ptr %i.az, i64 88
  %i.cg = getelementptr inbounds nuw i8, ptr %i.az, i64 96
  %i.ch = getelementptr inbounds nuw i8, ptr %i.az, i64 112
  %i.ci = getelementptr inbounds nuw i8, ptr %i.az, i64 128
  %i.cj = getelementptr inbounds nuw i8, ptr %i.az, i64 136
  store ptr %i.cc, ptr %i.bd, align 8, !tbaa !20
  store ptr null, ptr %i.ce, align 8, !tbaa !18
  store i64 %.pre113, ptr %i.cf, align 8, !tbaa !54
  store i32 %.pre114, ptr %i.cg, align 8, !tbaa !55
  %i.ck = getelementptr inbounds nuw i8, ptr %i.az, i64 104
  store ptr %.pre115, ptr %i.ck, align 8, !tbaa !19
  %i.cl = insertelement <4 x i32> <i32 2, i32 poison, i32 poison, i32 1>, i32 %.pre, i64 1
  %i.cm = insertelement <4 x i32> %i.cl, i32 %i.bf, i64 2
  store <4 x i32> %i.cm, ptr %i.ch, align 8, !tbaa !24
  store i32 1, ptr %i.ci, align 8, !tbaa !56
  store i64 %i.cd, ptr %i.cj, align 8, !tbaa !21
  %.not24 = icmp eq i32 %.pre119, 0
  br i1 %.not24, label %bb.n, label %bb.d

bb.d:                                             ; preds = %.noexc29
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #9
  %i.cn = load i32, ptr %i.x, align 8, !tbaa !103 ; 2 uses
  %i.co = icmp eq i32 %i.cn, 3
  br i1 %i.co, label %_ZN4ncnn3Mat7channelEi.exit, label %bb.e

_ZN4ncnn3Mat7channelEi.exit:                      ; preds = %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !104)
  %i.cp = load i32, ptr %i.ai, align 4, !tbaa !71, !noalias !104 ; 2 uses
  %i.cq = load i32, ptr %i.ak, align 8, !tbaa !70, !noalias !104 ; 2 uses
  %i.cr = load i32, ptr %i.am, align 4, !tbaa !105, !noalias !104
  %i.cs = load ptr, ptr %6, align 8, !tbaa !20, !noalias !104
  %i.ct = load i64, ptr %i.ap, align 8, !tbaa !21, !noalias !104
  %i.cu = mul i64 %i.ct, %indvars.iv
  %i.cv = load i64, ptr %i.ab, align 8, !tbaa !54, !noalias !104 ; 4 uses
  %i.cw = mul i64 %i.cu, %i.cv
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.cw
  %i.cy = load i32, ptr %i.ad, align 8, !tbaa !55, !noalias !104
  %i.cz = load ptr, ptr %i.af, align 8, !tbaa !19, !noalias !104
  store ptr %i.cx, ptr %12, align 16, !tbaa !20
  store ptr null, ptr %i.y, align 8, !tbaa !18
  store i64 %i.cv, ptr %i.aa, align 16, !tbaa !54
  store i32 %i.cy, ptr %i.ac, align 8, !tbaa !55
  store ptr %i.cz, ptr %i.ae, align 16, !tbaa !19
  store i32 %i.cp, ptr %i.ah, align 4, !tbaa !71
  store i32 %i.cq, ptr %i.aj, align 16, !tbaa !70
  store i32 1, ptr %i.al, align 4, !tbaa !105
  store i32 %i.cr, ptr %i.an, align 8, !tbaa !56
  %i.da = sext i32 %i.cp to i64
  %i.db = sext i32 %i.cq to i64
  %i.dc = mul nsw i64 %i.db, %i.da
  %i.dd = mul i64 %i.dc, %i.cv
  %i.de = add i64 %i.dd, 15
  %i.df = and i64 %i.de, -16
  %i.dg = udiv i64 %i.df, %i.cv
  store i64 %i.dg, ptr %i.ao, align 16, !tbaa !21
  store i32 2, ptr %i.ag, align 8, !tbaa !103, !alias.scope !104
  br label %_ZN4ncnn3Mat6addrefEv.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.dh = load ptr, ptr %i.z, align 8, !tbaa !18  ; 2 uses
  %i.di = load <2 x ptr>, ptr %6, align 8, !tbaa !53
  store <2 x ptr> %i.di, ptr %12, align 16, !tbaa !53
  %i.dj = load i64, ptr %i.ab, align 8, !tbaa !54
  store i64 %i.dj, ptr %i.aa, align 16, !tbaa !54
  %i.dk = load i32, ptr %i.ad, align 8, !tbaa !55
  store i32 %i.dk, ptr %i.ac, align 8, !tbaa !55
  %i.dl = load ptr, ptr %i.af, align 8, !tbaa !19
  store ptr %i.dl, ptr %i.ae, align 16, !tbaa !19
  store i32 %i.cn, ptr %i.ag, align 8, !tbaa !103
  %15 = load <4 x i32>, ptr %i.ai, align 4, !tbaa !24
  store <4 x i32> %15, ptr %i.ah, align 4, !tbaa !24
  %i.dm = load i64, ptr %i.ap, align 8, !tbaa !21
  store i64 %i.dm, ptr %i.ao, align 16, !tbaa !21
  %.not.i78 = icmp eq ptr %i.dh, null
  br i1 %.not.i78, label %_ZN4ncnn3Mat6addrefEv.exit.thread, label %_ZN4ncnn3Mat6addrefEv.exit

_ZN4ncnn3Mat6addrefEv.exit:                       ; preds = %bb.e
  %i.dn = atomicrmw add ptr %i.dh, i32 1 acq_rel, align 4 ; 0 uses
  %.pre120 = load ptr, ptr %i.n, align 8, !tbaa !67 ; 10 uses
  %.pre121 = load ptr, ptr %i.m, align 8, !tbaa !76
  %i.do = icmp eq ptr %.pre120, %.pre121
  br i1 %i.do, label %_ZN4ncnn3Mat6addrefEv.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZN4ncnn3Mat6addrefEv.exit
  %i.dp = load ptr, ptr %i.y, align 8, !tbaa !18  ; 2 uses
  %i.dq = load <2 x ptr>, ptr %12, align 16, !tbaa !53
  store <2 x ptr> %i.dq, ptr %.pre120, align 8, !tbaa !53
  %i.dr = getelementptr inbounds nuw i8, ptr %.pre120, i64 16
  %i.ds = load i64, ptr %i.aa, align 16, !tbaa !54
  store i64 %i.ds, ptr %i.dr, align 8, !tbaa !54
  %i.dt = getelementptr inbounds nuw i8, ptr %.pre120, i64 24
  %i.du = load i32, ptr %i.ac, align 8, !tbaa !55
  store i32 %i.du, ptr %i.dt, align 8, !tbaa !55
  %i.dv = getelementptr inbounds nuw i8, ptr %.pre120, i64 32
  %i.dw = load ptr, ptr %i.ae, align 16, !tbaa !19
  store ptr %i.dw, ptr %i.dv, align 8, !tbaa !19
  %i.dx = getelementptr inbounds nuw i8, ptr %.pre120, i64 40
  %i.dy = load <4 x i32>, ptr %i.ag, align 8, !tbaa !24
  store <4 x i32> %i.dy, ptr %i.dx, align 8, !tbaa !24
  %i.dz = getelementptr inbounds nuw i8, ptr %.pre120, i64 56
  %i.ea = load i32, ptr %i.an, align 8, !tbaa !56
  store i32 %i.ea, ptr %i.dz, align 8, !tbaa !56
  %i.eb = getelementptr inbounds nuw i8, ptr %.pre120, i64 64
  %i.ec = load i64, ptr %i.ao, align 16, !tbaa !21
  store i64 %i.ec, ptr %i.eb, align 8, !tbaa !21
  %.not.i.i.i = icmp eq ptr %i.dp, null
  br i1 %.not.i.i.i, label %_ZNSt15__new_allocatorIN4ncnn3MatEE9constructIS1_JRKS1_EEEvPT_DpOT0_.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ed = atomicrmw add ptr %i.dp, i32 1 acq_rel, align 4 ; 0 uses
  %.pre.i = load ptr, ptr %i.n, align 8, !tbaa !67
  br label %_ZNSt15__new_allocatorIN4ncnn3MatEE9constructIS1_JRKS1_EEEvPT_DpOT0_.exit.i

_ZNSt15__new_allocatorIN4ncnn3MatEE9constructIS1_JRKS1_EEEvPT_DpOT0_.exit.i: ; preds = %bb.g, %bb.f
  %i.ee = phi ptr [ %.pre120, %bb.f ], [ %.pre.i, %bb.g ]
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 72
  store ptr %i.ef, ptr %i.n, align 8, !tbaa !67
  br label %_ZNSt6vectorIN4ncnn3MatESaIS1_EE9push_backERKS1_.exit

_ZN4ncnn3Mat6addrefEv.exit.thread:                ; preds = %_ZN4ncnn3Mat7channelEi.exit, %bb.e, %_ZN4ncnn3Mat6addrefEv.exit
  %i.eg = phi ptr [ %.pre120, %_ZN4ncnn3Mat6addrefEv.exit ], [ %i.be, %bb.e ], [ %i.be, %_ZN4ncnn3Mat7channelEi.exit ]
  invoke void @_ZNSt6vectorIN4ncnn3MatESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr %i.eg, ptr noundef nonnull align 8 dereferenceable(72) %12)
          to label %_ZNSt6vectorIN4ncnn3MatESaIS1_EE9push_backERKS1_.exit unwind label %bb.ae

_ZNSt6vectorIN4ncnn3MatESaIS1_EE9push_backERKS1_.exit: ; preds = %_ZNSt15__new_allocatorIN4ncnn3MatEE9constructIS1_JRKS1_EEEvPT_DpOT0_.exit.i, %_ZN4ncnn3Mat6addrefEv.exit.thread
  %i.eh = load ptr, ptr %i.y, align 8, !tbaa !18  ; 2 uses
  %.not.i52 = icmp eq ptr %i.eh, null
  br i1 %.not.i52, label %_ZN4ncnn3MatD2Ev.exit25, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIN4ncnn3MatESaIS1_EE9push_backERKS1_.exit
  %i.ei = atomicrmw add ptr %i.eh, i32 -1 acq_rel, align 4
  %i.ej = icmp eq i32 %i.ei, 1
  br i1 %i.ej, label %bb.i, label %_ZN4ncnn3MatD2Ev.exit25

bb.i:                                             ; preds = %bb.h
  %i.ek = load ptr, ptr %i.ae, align 16, !tbaa !19 ; 3 uses
  %.not3.i53 = icmp eq ptr %i.ek, null
  %i.el = load ptr, ptr %12, align 16, !tbaa !20  ; 3 uses
  br i1 %.not3.i53, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.em = load ptr, ptr %i.ek, align 8, !tbaa !12
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 24
  %i.eo = load ptr, ptr %i.en, align 8
  invoke void %i.eo(ptr noundef nonnull align 8 dereferenceable(8) %i.ek, ptr noundef %i.el)
          to label %_ZN4ncnn3MatD2Ev.exit25 unwind label %bb.m, !inline_history !0

bb.k:                                             ; preds = %bb.i
  %.not.i61 = icmp eq ptr %i.el, null
  br i1 %.not.i61, label %_ZN4ncnn3MatD2Ev.exit25, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @free(ptr noundef nonnull %i.el) #9
  br label %_ZN4ncnn3MatD2Ev.exit25

bb.m:                                             ; preds = %bb.j
  %i.ep = landingpad { ptr, i32 }
          catch ptr null
  %i.eq = extractvalue { ptr, i32 } %i.ep, 0
  call void @__clang_call_terminate(ptr %i.eq) #17
  unreachable

_ZN4ncnn3MatD2Ev.exit25:                          ; preds = %bb.h, %_ZNSt6vectorIN4ncnn3MatESaIS1_EE9push_backERKS1_.exit, %bb.j, %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #9
  br label %bb.n

bb.n:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit25, %.noexc29
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false)
  %i.er = invoke noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #20
          to label %_ZN4ncnn3MatD2Ev.exit unwind label %bb.ae ; 10 uses

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.n
  store ptr %i.er, ptr %13, align 8, !tbaa !68
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 72 ; 2 uses
  store ptr %i.es, ptr %i.aq, align 8, !tbaa !76
  %i.et = getelementptr inbounds nuw i8, ptr %i.er, i64 32
  %i.eu = getelementptr inbounds nuw i8, ptr %i.er, i64 64
  store ptr %i.es, ptr %i.ar, align 8, !tbaa !67
  %i.ev = load i32, ptr %8, align 4, !tbaa !24    ; 2 uses
  %i.ew = sext i32 %i.ev to i64                   ; 2 uses
  %i.ex = mul nsw i64 %indvars.iv, %i.ew
  %i.ey = load i32, ptr %i.as, align 4, !tbaa !71, !noalias !106 ; 2 uses
  %i.ez = load ptr, ptr %7, align 8, !tbaa !20, !noalias !106
  %i.fa = sext i32 %i.ey to i64                   ; 2 uses
  %i.fb = mul nsw i64 %i.ex, %i.fa
  %i.fc = load i64, ptr %i.at, align 8, !tbaa !54, !noalias !106 ; 2 uses
  %i.fd = mul i64 %i.fb, %i.fc
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ez, i64 %i.fd
  %i.ff = load i32, ptr %i.au, align 8, !tbaa !55, !noalias !106
  %i.fg = load ptr, ptr %i.av, align 8, !tbaa !19, !noalias !106
  %i.fh = mul nsw i64 %i.fa, %i.ew
  %i.fi = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  %.pre124 = load ptr, ptr %i.ax, align 8, !tbaa !63 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  %i.fk = getelementptr inbounds nuw i8, ptr %i.er, i64 24
  %i.fl = getelementptr inbounds nuw i8, ptr %i.er, i64 40
  %i.fm = getelementptr inbounds nuw i8, ptr %i.er, i64 56
  store ptr %i.fe, ptr %i.er, align 8, !tbaa !20
  store ptr null, ptr %i.fi, align 8, !tbaa !18
  store i64 %i.fc, ptr %i.fj, align 8, !tbaa !54
  store i32 %i.ff, ptr %i.fk, align 8, !tbaa !55
  store ptr %i.fg, ptr %i.et, align 8, !tbaa !19
  %i.fn = insertelement <4 x i32> <i32 2, i32 poison, i32 poison, i32 1>, i32 %i.ey, i64 1
  %i.fo = insertelement <4 x i32> %i.fn, i32 %i.ev, i64 2
  store <4 x i32> %i.fo, ptr %i.fl, align 8, !tbaa !24
  store i32 1, ptr %i.fm, align 8, !tbaa !56
  store i64 %i.fh, ptr %i.eu, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %14, ptr noundef nonnull align 8 dereferenceable(64) %9, i64 64, i1 false), !tbaa.struct !27
  store i32 1, ptr %i.aw, align 4, !tbaa !65
  %i.fp = load ptr, ptr %.pre124, align 8, !tbaa !12
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 48
  %i.fr = load ptr, ptr %i.fq, align 8
  %i.fs = invoke noundef i32 %i.fr(ptr noundef nonnull align 8 dereferenceable(208) %.pre124, ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(24) %13, ptr noundef nonnull align 8 dereferenceable(64) %14)
          to label %bb.o unwind label %bb.ae

bb.o:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit
  %i.ft = load ptr, ptr %10, align 8, !tbaa !73
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.ft, i64 %indvars.iv
  store i32 %i.fs, ptr %i.fu, align 4, !tbaa !24
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #9
  %i.fv = load ptr, ptr %13, align 8, !tbaa !68   ; 3 uses
  %i.fw = load ptr, ptr %i.ar, align 8, !tbaa !67 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.fv, %i.fw
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN4ncnn3MatES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.o, %_ZSt8_DestroyIN4ncnn3MatEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.gl, %_ZSt8_DestroyIN4ncnn3MatEEvPT_.exit.i.i.i ], [ %i.fv, %bb.o ] ; 7 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !18 ; 2 uses
  %.not.i.i.i.i.i88 = icmp eq ptr %i.fy, null
  br i1 %.not.i.i.i.i.i88, label %_ZSt8_DestroyIN4ncnn3MatEEvPT_.exit.i.i.i, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i.i.i
  %i.fz = atomicrmw add ptr %i.fy, i32 -1 acq_rel, align 4
  %i.ga = icmp eq i32 %i.fz, 1
  br i1 %i.ga, label %bb.q, label %_ZSt8_DestroyIN4ncnn3MatEEvPT_.exit.i.i.i

bb.q:                                             ; preds = %bb.p
  %i.gb = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !19 ; 3 uses
  %.not3.i.i.i.i.i = icmp eq ptr %i.gc, null
  %i.gd = load ptr, ptr %.05.i.i.i, align 8, !tbaa !20 ; 3 uses
  br i1 %.not3.i.i.i.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ge = load ptr, ptr %i.gc, align 8, !tbaa !12
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 24
  %i.gg = load ptr, ptr %i.gf, align 8
  invoke void %i.gg(ptr noundef nonnull align 8 dereferenceable(8) %i.gc, ptr noundef %i.gd)
          to label %_ZSt8_DestroyIN4ncnn3MatEEvPT_.exit.i.i.i unwind label %bb.u, !inline_history !0

bb.s:                                             ; preds = %bb.q
  %.not.i1.i.i.i.i = icmp eq ptr %i.gd, null
  br i1 %.not.i1.i.i.i.i, label %_ZSt8_DestroyIN4ncnn3MatEEvPT_.exit.i.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @free(ptr noundef nonnull %i.gd) #9
  br label %_ZSt8_DestroyIN4ncnn3MatEEvPT_.exit.i.i.i

bb.u:                                             ; preds = %bb.r
  %i.gh = landingpad { ptr, i32 }
          catch ptr null
  %i.gi = extractvalue { ptr, i32 } %i.gh, 0
  call void @__clang_call_terminate(ptr %i.gi) #17
  unreachable

_ZSt8_DestroyIN4ncnn3MatEEvPT_.exit.i.i.i:        ; preds = %bb.t, %bb.s, %bb.r, %bb.p, %.lr.ph.i.i.i
  %i.gj = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 40
  %i.gk = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 64
  store i64 0, ptr %i.gk, align 8, !tbaa !21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %.05.i.i.i, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.gj, i8 0, i64 20, i1 false)
  %i.gl = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 72 ; 2 uses
  %.not.i.i.i89 = icmp eq ptr %i.gl, %i.fw
  br i1 %.not.i.i.i89, label %_ZSt8_DestroyIPN4ncnn3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPN4ncnn3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN4ncnn3MatEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %13, align 8, !tbaa !68
  br label %_ZSt8_DestroyIPN4ncnn3MatES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN4ncnn3MatES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN4ncnn3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %bb.o
  %i.gm = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN4ncnn3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.fv, %bb.o ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.gm, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN4ncnn3MatESaIS1_EED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %_ZSt8_DestroyIPN4ncnn3MatES1_EvT_S3_RSaIT0_E.exit.i
  %i.gn = load ptr, ptr %i.aq, align 8, !tbaa !76
  %i.go = ptrtoint ptr %i.gn to i64
  %i.gp = ptrtoint ptr %i.gm to i64
  %i.gq = sub i64 %i.go, %i.gp
  call void @_ZdlPvm(ptr noundef nonnull %i.gm, i64 noundef %i.gq) #18
  br label %_ZNSt6vectorIN4ncnn3MatESaIS1_EED2Ev.exit

_ZNSt6vectorIN4ncnn3MatESaIS1_EED2Ev.exit:        ; preds = %_ZSt8_DestroyIPN4ncnn3MatES1_EvT_S3_RSaIT0_E.exit.i, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #9
  %i.gr = load ptr, ptr %11, align 8, !tbaa !68   ; 3 uses
  %i.gs = load ptr, ptr %i.n, align 8, !tbaa !67  ; 2 uses
  %.not4.i.i.i90 = icmp eq ptr %i.gr, %i.gs
  br i1 %.not4.i.i.i90, label %_ZSt8_DestroyIPN4ncnn3MatES1_EvT_S3_RSaIT0_E.exit.i98, label %.lr.ph.i.i.i91
end_hunk_0
