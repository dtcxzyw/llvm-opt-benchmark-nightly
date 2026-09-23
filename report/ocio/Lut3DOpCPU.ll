Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ocio/original/Lut3DOpCPU?download=true
inline.NumInlined: 813
inline.NumDeleted: 378
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRendererESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info:bb.a

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9RangeTreeD2Ev(ptr nofree noundef nonnull align 8 captures(none) dead_on_return(128) dereferenceable(128) initializes((0, 8)) %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9RangeTreeE, i64 16), ptr %0, align 8, !tbaa !23
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !59   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !60
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #26
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.val = load ptr, ptr %i.h, align 8             ; 3 uses
  %.not.i.i.i2 = icmp eq ptr %.val, null
  br i1 %.not.i.i.i2, label %_ZNSt6vectorIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESaIS3_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.val1 = load ptr, ptr %i.i, align 8
  %i.j = ptrtoint ptr %.val1 to i64
  %i.k = ptrtoint ptr %.val to i64
  %i.l = sub i64 %i.j, %i.k
  tail call void @_ZdlPvm(ptr noundef nonnull %.val, i64 noundef %i.l) #26
  br label %_ZNSt6vectorIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESaIS3_EED2Ev.exit

_ZNSt6vectorIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESaIS3_EED2Ev.exit: ; preds = %_ZNSt6vectorImSaImEED2Ev.exit, %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !61   ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !62   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.n, %i.p
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9treeLevelES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESaIS3_EED2Ev.exit, %_ZSt8_DestroyIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9treeLevelEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.as, %_ZSt8_DestroyIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9treeLevelEEvPT_.exit.i.i.i ], [ %i.n, %_ZNSt6vectorIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESaIS3_EED2Ev.exit ] ; 9 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 88
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !59   ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 104
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !60
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.r to i64
  %i.w = sub i64 %i.u, %i.v
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.w) #26
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i

_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i:          ; preds = %bb.d, %.lr.ph.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 64
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !59   ; 3 uses
  %.not.i.i.i1.i.i.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i1.i.i.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit2.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 80
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !60
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.y to i64
  %i.ad = sub i64 %i.ab, %i.ac
  tail call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.ad) #26
  br label %_ZNSt6vectorImSaImEED2Ev.exit2.i.i.i.i.i

_ZNSt6vectorImSaImEED2Ev.exit2.i.i.i.i.i:         ; preds = %bb.e, %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 40
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !47 ; 3 uses
  %.not.i.i.i3.i.i.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i3.i.i.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit2.i.i.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 56
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !48
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = ptrtoint ptr %i.af to i64
  %i.ak = sub i64 %i.ai, %i.aj
  tail call void @_ZdlPvm(ptr noundef nonnull %i.af, i64 noundef %i.ak) #26
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit.i.i.i.i.i

_ZNSt6vectorIfSaIfEED2Ev.exit.i.i.i.i.i:          ; preds = %bb.f, %_ZNSt6vectorImSaImEED2Ev.exit2.i.i.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !47 ; 3 uses
  %.not.i.i.i4.i.i.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i4.i.i.i.i.i, label %_ZSt8_DestroyIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9treeLevelEEvPT_.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit.i.i.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !48
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = ptrtoint ptr %i.am to i64
  %i.ar = sub i64 %i.ap, %i.aq
  tail call void @_ZdlPvm(ptr noundef nonnull %i.am, i64 noundef %i.ar) #26
  br label %_ZSt8_DestroyIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9treeLevelEEvPT_.exit.i.i.i

_ZSt8_DestroyIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9treeLevelEEvPT_.exit.i.i.i: ; preds = %bb.g, %_ZNSt6vectorIfSaIfEED2Ev.exit.i.i.i.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 112 ; 2 uses
  %.not.i.i.i3 = icmp eq ptr %i.as, %i.p
  br i1 %.not.i.i.i3, label %_ZSt8_DestroyIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9treeLevelES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9treeLevelES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9treeLevelEEvPT_.exit.i.i.i
  %.val.pr.i = load ptr, ptr %i.m, align 8, !tbaa !61
  br label %_ZSt8_DestroyIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9treeLevelES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9treeLevelES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9treeLevelES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESaIS3_EED2Ev.exit
  %.val.i = phi ptr [ %.val.pr.i, %_ZSt8_DestroyIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9treeLevelES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %i.n, %_ZNSt6vectorIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESaIS3_EED2Ev.exit ] ; 3 uses
  %.not.i.i2.i = icmp eq ptr %.val.i, null
  br i1 %.not.i.i2.i, label %_ZNSt6vectorIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9treeLevelESaIS3_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9treeLevelES3_EvT_S5_RSaIT0_E.exit.i
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.val1.i = load ptr, ptr %i.at, align 8, !tbaa !63
  %i.au = ptrtoint ptr %.val1.i to i64
  %i.av = ptrtoint ptr %.val.i to i64
  %i.aw = sub i64 %i.au, %i.av
  tail call void @_ZdlPvm(ptr noundef nonnull %.val.i, i64 noundef %i.aw) #26
  br label %_ZNSt6vectorIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9treeLevelESaIS3_EED2Ev.exit

_ZNSt6vectorIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9treeLevelESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9treeLevelES3_EvT_S5_RSaIT0_E.exit.i, %bb.h
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRendererD2Ev(ptr nofree noundef nonnull align 8 captures(none) dead_on_return(176) dereferenceable(176) initializes((0, 8), (24, 32)) %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRendererE, i64 16), ptr %0, align 8, !tbaa !23
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !47   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !48
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #26
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_ZN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9RangeTreeD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %i.h) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRendererD0Ev(ptr noundef nonnull align 8 dereferenceable(176) initializes((0, 8), (24, 32)) %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRendererE, i64 16), ptr %0, align 8, !tbaa !23
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !47   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRendererD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !48
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #26, !inline_history !130
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRendererD2Ev.exit

_ZN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRendererD2Ev.exit: ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_ZN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9RangeTreeD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %i.h) #25, !inline_history !130
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 176) #26
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_ZNK16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer5applyEPKvPvl(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(176) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) unnamed_addr #19 align 2 {
.preheader151:
  %i.a = alloca [4 x i64], align 16               ; 22 uses
  %i.b = alloca [4 x i64], align 16               ; 19 uses
  %i.c = alloca [20 x i64], align 16              ; 7 uses
  %i.d = alloca [20 x i64], align 16              ; 7 uses
  %i.e = alloca [4 x double], align 16            ; 13 uses
  %i.f = alloca [4 x [4 x double]], align 16      ; 20 uses
  %i.g = alloca [20 x double], align 16           ; 7 uses
  %i.h = alloca [4 x double], align 16            ; 9 uses
  %i.i = alloca [4 x double], align 16            ; 12 uses
  %i.j = alloca [3 x i64], align 16               ; 8 uses
  %i.k = alloca [8 x i64], align 16               ; 7 uses
  %i.l = alloca [8 x i64], align 16               ; 9 uses
  %i.m = alloca [8 x i64], align 16               ; 11 uses
  %i.n = alloca [16 x i64], align 16              ; 7 uses
  %i.o = alloca [16 x i64], align 16              ; 12 uses
  %i.p = alloca [16 x i64], align 16              ; 6 uses
  %i.q = alloca [3 x i64], align 16               ; 6 uses
  %i.r = alloca [3 x float], align 4              ; 10 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.t = load i64, ptr %i.s, align 8, !tbaa !64
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val = load i64, ptr %i.u, align 8, !tbaa !65  ; 9 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.val120 = load i64, ptr %i.v, align 8, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #25
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.x = load i64, ptr %i.w, align 8, !tbaa !64   ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.z = load i64, ptr %i.y, align 8, !tbaa !64
  %i.aa = mul i64 %i.z, %i.x                      ; 5 uses
  store i64 %i.aa, ptr %i.j, align 16, !tbaa !64
  %i.ab = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  store i64 %i.x, ptr %i.ab, align 8, !tbaa !64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  store i64 1, ptr %i.ac, align 16, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.k, i8 0, i64 16, i1 false)
  %4 = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store <4 x i64> splat (i64 1), ptr %4, align 16
  %5 = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  store i64 1, ptr %5, align 16
  %i.ad = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  store i64 1, ptr %i.ad, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #25
  %i.ae = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.ae, i8 0, i64 48, i1 false)
  store i64 2, ptr %i.l, align 16
  %i.af = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 1, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store i64 2, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  store i64 2, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  store i64 2, ptr %i.ai, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #25
  store i64 %i.aa, ptr %i.m, align 16, !tbaa !64
  %i.aj = add i64 %i.x, %i.aa                     ; 2 uses
  %i.ak = add i64 %i.aj, 1
  %i.al = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 %i.ak, ptr %i.al, align 8, !tbaa !64
  %i.am = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i64 %i.aj, ptr %i.am, align 16, !tbaa !64
  %i.an = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store i64 %i.x, ptr %i.an, align 8, !tbaa !64
  %i.ao = add i64 %i.x, 1
  %i.ap = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store i64 %i.ao, ptr %i.ap, align 16, !tbaa !64
  %i.aq = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  store i64 1, ptr %i.aq, align 8, !tbaa !64
  %i.ar = add i64 %i.aa, 1
  %i.as = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  store i64 %i.ar, ptr %i.as, align 16, !tbaa !64
  %i.at = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  store i64 %i.aa, ptr %i.at, align 8, !tbaa !64
  %i.au = add i64 %i.t, -3
  %i.av = uitofp i64 %i.au to float               ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.not = icmp eq i64 %.val, 0                    ; 2 uses
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader151
  %min.iters.check = icmp ult i64 %.val, 4
  br i1 %min.iters.check, label %.lr.ph.preheader250, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %.val, -4                      ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %.val, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %index ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.ay, align 16, !tbaa !64
  %wide.load241 = load <2 x i64>, ptr %i.az, align 16, !tbaa !64
  %i.ba = mul <2 x i64> %wide.load, %broadcast.splat
  %i.bb = mul <2 x i64> %wide.load241, %broadcast.splat
  store <2 x i64> %i.ba, ptr %i.ay, align 16, !tbaa !64
  store <2 x i64> %i.bb, ptr %i.az, align 16, !tbaa !64
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bc = icmp eq i64 %index.next, %n.vec
  br i1 %i.bc, label %middle.block, label %vector.body, !llvm.loop !131

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.val, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader250

.lr.ph.preheader250:                              ; preds = %.lr.ph.preheader, %middle.block
  %.0113164.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %.preheader151
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.n, i8 0, i64 128, i1 false), !tbaa !64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.p, i8 0, i64 128, i1 false), !tbaa !64
  %i.bd = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store <4 x i64> splat (i64 1), ptr %i.bd, align 8, !tbaa !64
  %i.be = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  store <4 x i64> splat (i64 1), ptr %i.be, align 8, !tbaa !64
  %i.bf = getelementptr inbounds nuw i8, ptr %i.o, i64 72
  store <4 x i64> splat (i64 1), ptr %i.bf, align 8, !tbaa !64
  %i.bg = getelementptr inbounds nuw i8, ptr %i.o, i64 104
  store i64 1, ptr %i.bg, align 8, !tbaa !64
  %i.bh = getelementptr inbounds nuw i8, ptr %i.o, i64 112
  store i64 1, ptr %i.bh, align 16, !tbaa !64
  %i.bi = getelementptr inbounds nuw i8, ptr %i.o, i64 120
  store i64 1, ptr %i.bi, align 8, !tbaa !64
  %i.bj = icmp sgt i64 %3, 0
  br i1 %i.bj, label %.lr.ph175, label %._crit_edge176

.lr.ph:                                           ; preds = %.lr.ph.preheader250, %.lr.ph
  %.0113164 = phi i64 [ %i.bn, %.lr.ph ], [ %.0113164.ph, %.lr.ph.preheader250 ] ; 2 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.0113164 ; 2 uses
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !64
  %i.bm = mul i64 %i.bl, %.val
  store i64 %i.bm, ptr %i.bk, align 8, !tbaa !64
  %i.bn = add nuw nsw i64 %.0113164, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.bn, %.val
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !132

.lr.ph175:                                        ; preds = %._crit_edge
  %i.bo = add i64 %.val120, -1                    ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.r, i64 4 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.bt = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 5 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.f, i64 48 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 4 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.f, i64 64 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.f, i64 80 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.cg = shl nuw i64 %.val, 3
  %.val129.pre = load ptr, ptr %i.aw, align 8, !tbaa !61 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.val129.pre, i64 64
  %i.ci = getelementptr inbounds nuw i8, ptr %.val129.pre, i64 72
  %i.cj = insertelement <2 x float> poison, float %i.av, i64 0
  %i.ck = shufflevector <2 x float> %i.cj, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %.8..8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %bb.a

._crit_edge176:                                   ; preds = %bb.ac, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #25
  ret void

bb.a:                                             ; preds = %.lr.ph175, %bb.ac
  %.0109174 = phi i64 [ 0, %.lr.ph175 ], [ %i.td, %bb.ac ]
  %.0110173 = phi ptr [ %2, %.lr.ph175 ], [ %i.tc, %bb.ac ] ; 5 uses
  %.0111172 = phi ptr [ %1, %.lr.ph175 ], [ %i.tb, %bb.ac ] ; 4 uses
  %i.cm = load <2 x float>, ptr %.0111172, align 4, !tbaa !56 ; 2 uses
  %i.cn = fcmp ogt <2 x float> %i.cm, zeroinitializer
  %i.co = select <2 x i1> %i.cn, <2 x float> %i.cm, <2 x float> zeroinitializer ; 2 uses
  %i.cp = fcmp ogt <2 x float> %i.co, splat (float 1.000000e+00)
  %i.cq = select <2 x i1> %i.cp, <2 x float> splat (float 1.000000e+00), <2 x float> %i.co ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.0111172, i64 8
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !56 ; 2 uses
  %i.ct = fcmp ogt float %i.cs, 0.000000e+00
  %.sroa.speculated2.i133 = select i1 %i.ct, float %i.cs, float 0.000000e+00 ; 2 uses
  %i.cu = fcmp ogt float %.sroa.speculated2.i133, 1.000000e+00
  %.sroa.speculated.i134 = select i1 %i.cu, float 1.000000e+00, float %.sroa.speculated2.i133 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.q, i8 0, i64 24, i1 false)
  %i.cv = load ptr, ptr %i.ci, align 8, !tbaa !69
  %i.cw = load ptr, ptr %i.ch, align 8, !tbaa !59
  %i.cx = ptrtoint ptr %i.cv to i64
  %i.cy = ptrtoint ptr %i.cw to i64
  %i.cz = sub i64 %i.cx, %i.cy
  %i.da = ashr exact i64 %i.cz, 3
  store i64 %i.da, ptr %i.o, align 16, !tbaa !64
  store i64 0, ptr %i.n, align 16, !tbaa !64
  store i64 0, ptr %i.p, align 16, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.r, i8 0, i64 12, i1 false)
  %i.db = getelementptr inbounds nuw i8, ptr %.0110173, i64 4
  %i.dc = getelementptr inbounds nuw i8, ptr %.0110173, i64 8
  %i.dd = getelementptr inbounds nuw i8, ptr %.0111172, i64 12
  %i.de = getelementptr inbounds nuw i8, ptr %.0110173, i64 12
  %i.df = fpext <2 x float> %i.cq to <2 x double>
  %i.dg = fpext float %.sroa.speculated.i134 to double
  %i.dh = extractelement <2 x float> %i.cq, i64 0 ; 2 uses
  %i.di = extractelement <2 x float> %i.cq, i64 1 ; 2 uses
  br label %.preheader149

.preheader149:                                    ; preds = %bb.a, %.loopexit
  %i.dj = phi float [ 0.000000e+00, %bb.a ], [ %i.sf, %.loopexit ] ; 3 uses
  %.0.195 = phi i64 [ 0, %bb.a ], [ %.0.196, %.loopexit ] ; 2 uses
  %.0106171 = phi i64 [ 0, %bb.a ], [ %i.si, %.loopexit ] ; 4 uses
  %i.dk = phi <2 x float> [ zeroinitializer, %bb.a ], [ %i.sg, %.loopexit ] ; 3 uses
  %i.dl = phi <2 x i64> [ zeroinitializer, %bb.a ], [ %i.sh, %.loopexit ] ; 2 uses
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.0106171 ; 2 uses
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !64 ; 2 uses
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.0106171
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !64
  %i.dq = icmp ult i64 %i.dn, %i.dp
  br i1 %i.dq, label %.lr.ph170, label %.loopexit

.lr.ph170:                                        ; preds = %.preheader149
  %i.dr = load i64, ptr %i.j, align 16
  %i.ds = load i64, ptr %i.ab, align 8
  %i.dt = load i64, ptr %i.ac, align 16
  %.val130 = load ptr, ptr %i.ax, align 8
  %i.du = load ptr, ptr %i.bs, align 8
  br label %bb.b

end_hunk_0
begin_hunk_1_@_ZN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer10updateDataERSt10shared_ptrIKNS_11Lut3DOpDataEE:bb.a

bb.am:                                            ; preds = %bb.ap
  %exitcond263.not.i = icmp eq i64 %i.dd, %i.r
  br i1 %exitcond263.not.i, label %bb.al, label %.preheader202.i, !llvm.loop !163

bb.an:                                            ; preds = %bb.ap, %.preheader202.i
  %.0172240.i = phi i64 [ 0, %.preheader202.i ], [ %i.do, %bb.ap ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #25
  invoke void @_ZNK16OpenColorIO_v2_511Lut3DOpData10Lut3DArray6getRGBElllPf(ptr noundef nonnull align 8 dereferenceable(48) %i.u, i64 noundef %.0174242.i, i64 noundef %.0173241.i, i64 noundef %.0172240.i, ptr noundef nonnull %i.k)
          to label %bb.ao unwind label %bb.aq

bb.ao:                                            ; preds = %bb.an
  %i.dg = icmp eq i64 %.0172240.i, 0
  %i.dh = select i1 %i.dg, i64 0, i64 %i.w
  %i.di = load <2 x float>, ptr %i.k, align 8, !tbaa !56
  %i.dj = fadd <2 x float> %i.di, splat (float -5.000000e-01)
  %i.dk = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dj, <2 x float> splat (float 4.000000e+00), <2 x float> splat (float 5.000000e-01))
  store <2 x float> %i.dk, ptr %i.k, align 8, !tbaa !56
  %i.dl = load float, ptr %i.ck, align 8, !tbaa !56
  %i.dm = fadd float %i.dl, -5.000000e-01
  %i.dn = call float @llvm.fmuladd.f32(float %i.dm, float 4.000000e+00, float 5.000000e-01)
  store float %i.dn, ptr %i.ck, align 8, !tbaa !56
  invoke void @_ZN16OpenColorIO_v2_511Lut3DOpData10Lut3DArray6setRGBElllPf(ptr noundef nonnull align 8 dereferenceable(48) %4, i64 noundef %i.db, i64 noundef %i.dd, i64 noundef %i.dh, ptr noundef nonnull %i.k)
          to label %bb.ap unwind label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #25
  %i.do = add i64 %.0172240.i, %i.y               ; 2 uses
  %i.dp = icmp ult i64 %i.do, %i.r
  br i1 %i.dp, label %bb.an, label %bb.am, !llvm.loop !164

bb.aq:                                            ; preds = %bb.ao, %bb.an
  %i.dq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #25
  br label %bb.ay

.preheader200.i:                                  ; preds = %bb.ar, %.preheader200.lr.ph.i
  %.0171245.i = phi i64 [ 0, %.preheader200.lr.ph.i ], [ %i.dy, %bb.ar ] ; 3 uses
  %i.dr = icmp eq i64 %.0171245.i, 0
  %i.ds = select i1 %i.dr, i64 0, i64 %i.w
  br label %.preheader.i

._crit_edge.i:                                    ; preds = %bb.ar, %bb.a
  %i.dt = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.dv = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIfSaIfEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.du, ptr noundef nonnull align 8 dereferenceable(24) %i.dt)
          to label %_ZN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer18extrapolate3DArrayERSt10shared_ptrIKNS_11Lut3DOpDataEE.exit unwind label %bb.ax ; 0 uses

.preheader.i:                                     ; preds = %bb.as, %.preheader200.i
  %.0170244.i = phi i64 [ 0, %.preheader200.i ], [ %i.ea, %bb.as ] ; 3 uses
  %i.dw = icmp eq i64 %.0170244.i, 0
  %i.dx = select i1 %i.dw, i64 0, i64 %i.w
  br label %bb.at

bb.ar:                                            ; preds = %bb.as
  %i.dy = add i64 %.0171245.i, %i.y               ; 2 uses
  %i.dz = icmp ult i64 %i.dy, %i.r
  br i1 %i.dz, label %.preheader200.i, label %._crit_edge.i, !llvm.loop !165

bb.as:                                            ; preds = %bb.av
  %i.ea = add i64 %.0170244.i, %i.y               ; 2 uses
  %i.eb = icmp ult i64 %i.ea, %i.r
  br i1 %i.eb, label %.preheader.i, label %bb.ar, !llvm.loop !166

bb.at:                                            ; preds = %bb.av, %.preheader.i
  %.0243.i = phi i64 [ 0, %.preheader.i ], [ %i.ek, %bb.av ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #25
  invoke void @_ZNK16OpenColorIO_v2_511Lut3DOpData10Lut3DArray6getRGBElllPf(ptr noundef nonnull align 8 dereferenceable(48) %i.u, i64 noundef %.0171245.i, i64 noundef %.0170244.i, i64 noundef %.0243.i, ptr noundef nonnull %i.l)
          to label %bb.au unwind label %bb.aw

bb.au:                                            ; preds = %bb.at
  %i.ec = icmp eq i64 %.0243.i, 0
  %i.ed = select i1 %i.ec, i64 0, i64 %i.w
  %i.ee = load <2 x float>, ptr %i.l, align 8, !tbaa !56
  %i.ef = fadd <2 x float> %i.ee, splat (float -5.000000e-01)
  %i.eg = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ef, <2 x float> splat (float 4.000000e+00), <2 x float> splat (float 5.000000e-01))
  store <2 x float> %i.eg, ptr %i.l, align 8, !tbaa !56
  %i.eh = load float, ptr %i.dc, align 8, !tbaa !56
  %i.ei = fadd float %i.eh, -5.000000e-01
  %i.ej = call float @llvm.fmuladd.f32(float %i.ei, float 4.000000e+00, float 5.000000e-01)
  store float %i.ej, ptr %i.dc, align 8, !tbaa !56
  invoke void @_ZN16OpenColorIO_v2_511Lut3DOpData10Lut3DArray6setRGBElllPf(ptr noundef nonnull align 8 dereferenceable(48) %4, i64 noundef %i.ds, i64 noundef %i.dx, i64 noundef %i.ed, ptr noundef nonnull %i.l)
          to label %bb.av unwind label %bb.aw

bb.av:                                            ; preds = %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #25
  %i.ek = add i64 %.0243.i, %i.y                  ; 2 uses
  %i.el = icmp ult i64 %i.ek, %i.r
  br i1 %i.el, label %bb.at, label %bb.as, !llvm.loop !167

bb.aw:                                            ; preds = %bb.au, %bb.at
  %i.em = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #25
  br label %bb.ay

bb.ax:                                            ; preds = %._crit_edge.i
  %i.en = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

common.resume:                                    ; preds = %.body.i, %bb.dy, %bb.ay
  %common.resume.op = phi { ptr, i32 } [ %.pn198.i, %bb.ay ], [ %.pn.pn.i, %bb.dy ], [ %.pn.pn.i, %.body.i ]
  resume { ptr, i32 } %common.resume.op

bb.ay:                                            ; preds = %bb.ax, %bb.aw, %bb.aq, %bb.ak, %bb.ae, %bb.y, %bb.s, %bb.m, %bb.g
  %.pn198.i = phi { ptr, i32 } [ %i.ab, %bb.g ], [ %i.ap, %bb.m ], [ %i.bd, %bb.s ], [ %i.br, %bb.y ], [ %i.ci, %bb.ae ], [ %i.cz, %bb.ak ], [ %i.dq, %bb.aq ], [ %i.em, %bb.aw ], [ %i.en, %bb.ax ]
  call void @_ZN16OpenColorIO_v2_511Lut3DOpData10Lut3DArrayD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %common.resume

_ZN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer18extrapolate3DArrayERSt10shared_ptrIKNS_11Lut3DOpDataEE.exit: ; preds = %._crit_edge.i
  call void @_ZN16OpenColorIO_v2_511Lut3DOpData10Lut3DArrayD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.eo = load ptr, ptr %1, align 8, !tbaa !14
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 176 ; 2 uses
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !23
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 32
  %i.es = load ptr, ptr %i.er, align 8
  %i.et = call noundef i64 %i.es(ptr noundef nonnull align 8 dereferenceable(48) %i.ep)
  %i.eu = add i64 %i.et, 2                        ; 5 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i64 %i.eu, ptr %i.ev, align 8, !tbaa !46
  %i.ew = load ptr, ptr %i.du, align 8, !tbaa !47 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 12 uses
  store i64 3, ptr %i.ex, align 8, !tbaa !65
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  store i64 %i.eu, ptr %i.ez, align 8, !tbaa !64
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  store i64 %i.eu, ptr %i.fa, align 8, !tbaa !64
  store i64 %i.eu, ptr %i.ey, align 8, !tbaa !64
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 0, ptr %i.fb, align 8, !tbaa !64
  %i.fc = uitofp i64 %i.eu to float
  %.sink114.i.sroa.gep.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %.sink114.i.sroa.gep133.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.sink111.i.sroa.gep.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %.sink111.i.sroa.gep134.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.fd = fadd float %i.fc, -2.000000e+00
  %i.fe = call { float, i32 } @llvm.frexp.f32.i32(float %i.fd)
  %i.ff = extractvalue { float, i32 } %i.fe, 1    ; 2 uses
  %i.fg = sext i32 %i.ff to i64                   ; 5 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 7 uses
  store i64 %i.fg, ptr %i.fh, align 8, !tbaa !66
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 12 uses
  %.val7.i.i = load ptr, ptr %i.fi, align 8, !tbaa !61 ; 6 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %.val8.i.i = load ptr, ptr %i.fj, align 8, !tbaa !62 ; 7 uses
  %i.fk = ptrtoint ptr %.val8.i.i to i64          ; 2 uses
  %i.fl = ptrtoint ptr %.val7.i.i to i64          ; 2 uses
  %i.fm = sub i64 %i.fk, %i.fl                    ; 2 uses
  %i.fn = sdiv exact i64 %i.fm, 112               ; 7 uses
  %i.fo = icmp ult i64 %i.fn, %i.fg
  br i1 %i.fo, label %bb.az, label %bb.bd

bb.az:                                            ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer18extrapolate3DArrayERSt10shared_ptrIKNS_11Lut3DOpDataEE.exit
  %i.fp = sub nuw nsw i64 %i.fg, %i.fn            ; 5 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !63
  %i.fs = ptrtoint ptr %i.fr to i64
  %i.ft = sub i64 %i.fs, %i.fk
  %i.fu = sdiv exact i64 %i.ft, 112               ; 2 uses
  %i.fv = icmp ult i64 %i.fn, 82351536043346213
  call void @llvm.assume(i1 %i.fv)
  %i.fw = sub nuw nsw i64 82351536043346212, %i.fn
  %i.fx = icmp ule i64 %i.fu, %i.fw
  call void @llvm.assume(i1 %i.fx)
  %.not28.i.i.i = icmp ult i64 %i.fu, %i.fp
  br i1 %.not28.i.i.i, label %bb.ba, label %_ZSt27__uninitialized_default_n_aIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9treeLevelEmS3_ET_S5_T0_RSaIT1_E.exit.i.i.i

_ZSt27__uninitialized_default_n_aIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9treeLevelEmS3_ET_S5_T0_RSaIT1_E.exit.i.i.i: ; preds = %bb.az
  %i.fy = mul nuw nsw i64 %i.fp, 112              ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 8 %.val8.i.i, i8 0, i64 %i.fy, i1 false)
  %scevgep.i.i.i.i.i.i = getelementptr i8, ptr %.val8.i.i, i64 %i.fy
  store ptr %scevgep.i.i.i.i.i.i, ptr %i.fj, align 8, !tbaa !62
  br label %_ZNSt6vectorIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9treeLevelESaIS3_EE6resizeEm.exit.i

bb.ba:                                            ; preds = %bb.az
  %i.fz = icmp slt i32 %i.ff, 0
  br i1 %i.fz, label %bb.bb, label %_ZNKSt6vectorIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9treeLevelESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.bb:                                            ; preds = %bb.ba
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #27
  unreachable

_ZNKSt6vectorIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9treeLevelESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ba
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.fn, i64 range(i64 -82351538190829860, 82351538190829860) %i.fp)
  %i.ga = add nuw nsw i64 %.sroa.speculated.i.i.i.i, %i.fn
  %i.gb = call i64 @llvm.umin.i64(i64 %i.ga, i64 82351536043346212) ; 2 uses
  %i.gc = mul nuw nsw i64 %i.gb, 112
  %i.gd = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gc) #24 ; 4 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 %i.fm ; 2 uses
  %i.gf = mul nuw nsw i64 %i.fp, 112
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ge, i8 0, i64 %i.gf, i1 false)
  %.not1.i.i.i.i.i.i = icmp eq ptr %.val7.i.i, %.val8.i.i
  br i1 %.not1.i.i.i.i.i.i, label %_ZNSt6vectorIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9treeLevelESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNKSt6vectorIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9treeLevelESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.03.i.i.i.i.i.i = phi ptr [ %i.hb, %.lr.ph.i.i.i.i.i.i ], [ %i.gd, %_ZNKSt6vectorIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9treeLevelESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 9 uses
  %.092.i.i.i.i.i.i = phi ptr [ %i.ha, %.lr.ph.i.i.i.i.i.i ], [ %.val7.i.i, %_ZNKSt6vectorIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9treeLevelESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 11 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !217)
  call void @llvm.experimental.noalias.scope.decl(metadata !218)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.03.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(112) %.092.i.i.i.i.i.i, i64 16, i1 false), !alias.scope !219
  %i.gg = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i, i64 16
  %i.gh = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.gi = load <2 x ptr>, ptr %i.gh, align 8, !tbaa !220, !alias.scope !218, !noalias !217
  store <2 x ptr> %i.gi, ptr %i.gg, align 8, !tbaa !220, !alias.scope !217, !noalias !218
  %5 = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i, i64 32
  %6 = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i, i64 32
  %i.gj = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i, i64 40 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i, i64 48
  %7 = load ptr, ptr %6, align 8, !tbaa !48, !alias.scope !218, !noalias !217
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gh, i8 0, i64 24, i1 false), !alias.scope !218, !noalias !217
  %i.gl = load ptr, ptr %i.gj, align 8, !tbaa !47, !alias.scope !218, !noalias !217
  %8 = load <2 x ptr>, ptr %i.gk, align 8, !tbaa !220, !alias.scope !218, !noalias !217
  %9 = insertelement <4 x ptr> poison, ptr %7, i64 0
  %10 = insertelement <4 x ptr> %9, ptr %i.gl, i64 1
  %11 = shufflevector <2 x ptr> %8, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %12 = shufflevector <4 x ptr> %10, <4 x ptr> %11, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  store <4 x ptr> %12, ptr %5, align 8, !tbaa !220, !alias.scope !217, !noalias !218
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gj, i8 0, i64 24, i1 false), !alias.scope !218, !noalias !217
  %i.gm = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i, i64 64
  %i.gn = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i, i64 64 ; 2 uses
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !59, !alias.scope !218, !noalias !217
  store ptr %i.go, ptr %i.gm, align 8, !tbaa !59, !alias.scope !217, !noalias !218
  %i.gp = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i, i64 72
  %i.gq = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i, i64 72
  %13 = load ptr, ptr %i.gq, align 8, !tbaa !69, !alias.scope !218, !noalias !217
  store ptr %13, ptr %i.gp, align 8, !tbaa !69, !alias.scope !217, !noalias !218
  %i.gr = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i, i64 80
  %i.gs = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i, i64 80
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !60, !alias.scope !218, !noalias !217
  store ptr %i.gt, ptr %i.gr, align 8, !tbaa !60, !alias.scope !217, !noalias !218
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gn, i8 0, i64 24, i1 false), !alias.scope !218, !noalias !217
  %i.gu = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i, i64 88
  %i.gv = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i, i64 88 ; 2 uses
  %i.gw = load <2 x ptr>, ptr %i.gv, align 8, !tbaa !221, !alias.scope !218, !noalias !217
  store <2 x ptr> %i.gw, ptr %i.gu, align 8, !tbaa !221, !alias.scope !217, !noalias !218
  %i.gx = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i, i64 104
  %i.gy = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i, i64 104
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !60, !alias.scope !218, !noalias !217
  store ptr %i.gz, ptr %i.gx, align 8, !tbaa !60, !alias.scope !217, !noalias !218
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gv, i8 0, i64 24, i1 false), !alias.scope !218, !noalias !217
  %i.ha = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i, i64 112 ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i, i64 112
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ha, %.val8.i.i
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9treeLevelESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !171

_ZNSt6vectorIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9treeLevelESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt6vectorIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9treeLevelESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %.not.i39.i.i.i = icmp eq ptr %.val7.i.i, null
  br i1 %.not.i39.i.i.i, label %_ZNSt12_Vector_baseIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9treeLevelESaIS3_EE13_M_deallocateEPS3_m.exit40.i.i.i, label %bb.bc

bb.bc:                                            ; preds = %_ZNSt6vectorIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9treeLevelESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i.i.i
  %i.hc = load ptr, ptr %i.fq, align 8, !tbaa !63
  %i.hd = ptrtoint ptr %i.hc to i64
  %i.he = sub i64 %i.hd, %i.fl
  call void @_ZdlPvm(ptr noundef nonnull %.val7.i.i, i64 noundef %i.he) #26
  br label %_ZNSt12_Vector_baseIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9treeLevelESaIS3_EE13_M_deallocateEPS3_m.exit40.i.i.i

_ZNSt12_Vector_baseIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9treeLevelESaIS3_EE13_M_deallocateEPS3_m.exit40.i.i.i: ; preds = %bb.bc, %_ZNSt6vectorIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9treeLevelESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i.i.i
  store ptr %i.gd, ptr %i.fi, align 8, !tbaa !61
  %i.hf = getelementptr inbounds nuw [112 x i8], ptr %i.ge, i64 %i.fp
  store ptr %i.hf, ptr %i.fj, align 8, !tbaa !62
  %i.hg = getelementptr inbounds nuw [112 x i8], ptr %i.gd, i64 %i.gb
  store ptr %i.hg, ptr %i.fq, align 8, !tbaa !63
  br label %_ZNSt6vectorIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9treeLevelESaIS3_EE6resizeEm.exit.i

bb.bd:                                            ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer18extrapolate3DArrayERSt10shared_ptrIKNS_11Lut3DOpDataEE.exit
  %i.hh = icmp ugt i64 %i.fn, %i.fg
  br i1 %i.hh, label %bb.be, label %_ZNSt6vectorIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9treeLevelESaIS3_EE6resizeEm.exit.i

bb.be:                                            ; preds = %bb.bd
  %i.hi = getelementptr inbounds nuw [112 x i8], ptr %.val7.i.i, i64 %i.fg ; 3 uses
  %.not.i9.i.i = icmp eq ptr %.val8.i.i, %i.hi
  br i1 %.not.i9.i.i, label %_ZNSt6vectorIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9treeLevelESaIS3_EE6resizeEm.exit.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.be, %_ZSt8_DestroyIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9treeLevelEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.il, %_ZSt8_DestroyIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9treeLevelEEvPT_.exit.i.i.i.i.i ], [ %i.hi, %bb.be ] ; 9 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 88
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !59 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.hk, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i.i.i, label %bb.bf

bb.bf:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.hl = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 104
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !60
  %i.hn = ptrtoint ptr %i.hm to i64
  %i.ho = ptrtoint ptr %i.hk to i64
  %i.hp = sub i64 %i.hn, %i.ho
  call void @_ZdlPvm(ptr noundef nonnull %i.hk, i64 noundef %i.hp) #26
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i.i.i

_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i.i.i:      ; preds = %bb.bf, %.lr.ph.i.i.i.i.i
  %i.hq = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 64
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !59 ; 3 uses
  %.not.i.i.i1.i.i.i.i.i.i.i = icmp eq ptr %i.hr, null
  br i1 %.not.i.i.i1.i.i.i.i.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit2.i.i.i.i.i.i.i, label %bb.bg

bb.bg:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i.i.i
  %i.hs = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 80
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !60
  %i.hu = ptrtoint ptr %i.ht to i64
  %i.hv = ptrtoint ptr %i.hr to i64
  %i.hw = sub i64 %i.hu, %i.hv
  call void @_ZdlPvm(ptr noundef nonnull %i.hr, i64 noundef %i.hw) #26
  br label %_ZNSt6vectorImSaImEED2Ev.exit2.i.i.i.i.i.i.i

_ZNSt6vectorImSaImEED2Ev.exit2.i.i.i.i.i.i.i:     ; preds = %bb.bg, %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i.i.i
  %i.hx = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 40
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !47 ; 3 uses
  %.not.i.i.i3.i.i.i.i.i.i.i = icmp eq ptr %i.hy, null
  br i1 %.not.i.i.i3.i.i.i.i.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit.i.i.i.i.i.i.i, label %bb.bh

bb.bh:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit2.i.i.i.i.i.i.i
  %i.hz = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 56
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !48
  %i.ib = ptrtoint ptr %i.ia to i64
  %i.ic = ptrtoint ptr %i.hy to i64
  %i.id = sub i64 %i.ib, %i.ic
  call void @_ZdlPvm(ptr noundef nonnull %i.hy, i64 noundef %i.id) #26
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit.i.i.i.i.i.i.i

_ZNSt6vectorIfSaIfEED2Ev.exit.i.i.i.i.i.i.i:      ; preds = %bb.bh, %_ZNSt6vectorImSaImEED2Ev.exit2.i.i.i.i.i.i.i
  %i.ie = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 16
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !47 ; 3 uses
  %.not.i.i.i4.i.i.i.i.i.i.i = icmp eq ptr %i.if, null
  br i1 %.not.i.i.i4.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9treeLevelEEvPT_.exit.i.i.i.i.i, label %bb.bi

bb.bi:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit.i.i.i.i.i.i.i
  %i.ig = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 32
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !48
  %i.ii = ptrtoint ptr %i.ih to i64
  %i.ij = ptrtoint ptr %i.if to i64
  %i.ik = sub i64 %i.ii, %i.ij
  call void @_ZdlPvm(ptr noundef nonnull %i.if, i64 noundef %i.ik) #26
  br label %_ZSt8_DestroyIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9treeLevelEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9treeLevelEEvPT_.exit.i.i.i.i.i: ; preds = %bb.bi, %_ZNSt6vectorIfSaIfEED2Ev.exit.i.i.i.i.i.i.i
  %i.il = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 112 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.il, %.val8.i.i
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9treeLevelES3_EvT_S5_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9treeLevelES3_EvT_S5_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9treeLevelEEvPT_.exit.i.i.i.i.i
  store ptr %i.hi, ptr %i.fj, align 8, !tbaa !62
  br label %_ZNSt6vectorIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9treeLevelESaIS3_EE6resizeEm.exit.i

_ZNSt6vectorIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9treeLevelESaIS3_EE6resizeEm.exit.i: ; preds = %_ZSt8_DestroyIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9treeLevelES3_EvT_S5_RSaIT0_E.exit.i.i.i, %bb.be, %bb.bd, %_ZNSt12_Vector_baseIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9treeLevelESaIS3_EE13_M_deallocateEPS3_m.exit40.i.i.i, %_ZSt27__uninitialized_default_n_aIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9treeLevelEmS3_ET_S5_T0_RSaIT1_E.exit.i.i.i
  %i.im = load i64, ptr %i.fh, align 8, !tbaa !66 ; 10 uses
  %.not.i3 = icmp eq i64 %i.im, 0
  br i1 %.not.i3, label %._crit_edge159.i, label %.preheader.lr.ph.i

.preheader.lr.ph.i:                               ; preds = %_ZNSt6vectorIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9treeLevelESaIS3_EE6resizeEm.exit.i
  %i.in = load i64, ptr %i.ex, align 8, !tbaa !65 ; 6 uses
  %.not183.i = icmp eq i64 %i.in, 0
  %i.io = shl i64 %i.im, 32
  %sext.i = add i64 %i.io, -4294967296
  %i.ip = ashr exact i64 %sext.i, 32
  %.val71.i = load ptr, ptr %i.fi, align 8, !tbaa !61
  %min.iters.check = icmp ult i64 %i.in, 4
  %n.vec = and i64 %i.in, -4                      ; 3 uses
  %cmp.n = icmp eq i64 %i.in, %n.vec
  br label %.preheader.i4

.preheader.i4:                                    ; preds = %._crit_edge.i6, %.preheader.lr.ph.i
  %.057158.i = phi i64 [ 0, %.preheader.lr.ph.i ], [ %i.jt, %._crit_edge.i6 ] ; 3 uses
  br i1 %.not183.i, label %._crit_edge.i6, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i4
  %i.iq = sub i64 %i.ip, %.057158.i               ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.iq, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ splat (i64 1), %vector.ph ], [ %i.iz, %vector.body ]
  %vec.phi173 = phi <2 x i64> [ splat (i64 1), %vector.ph ], [ %i.ja, %vector.body ]
  %i.ir = getelementptr inbounds nuw [8 x i8], ptr %i.ey, i64 %index ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 16
  %wide.load = load <2 x i64>, ptr %i.ir, align 8, !tbaa !64
  %wide.load174 = load <2 x i64>, ptr %i.is, align 8, !tbaa !64
  %i.it = add <2 x i64> %wide.load, splat (i64 -2)
  %i.iu = add <2 x i64> %wide.load174, splat (i64 -2)
  %i.iv = lshr <2 x i64> %i.it, %broadcast.splat
  %i.iw = lshr <2 x i64> %i.iu, %broadcast.splat
  %i.ix = add <2 x i64> %i.iv, splat (i64 1)
  %i.iy = add <2 x i64> %i.iw, splat (i64 1)
  %i.iz = mul <2 x i64> %i.ix, %vec.phi           ; 2 uses
  %i.ja = mul <2 x i64> %i.iy, %vec.phi173        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.jb = icmp eq i64 %index.next, %n.vec
  br i1 %i.jb, label %middle.block, label %vector.body, !llvm.loop !172

middle.block:                                     ; preds = %vector.body
  %bin.rdx = mul <2 x i64> %i.ja, %i.iz
  %i.jc = call i64 @llvm.vector.reduce.mul.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  br i1 %cmp.n, label %._crit_edge.i6, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block
  %.059156.i.ph = phi i64 [ 1, %.lr.ph.i ], [ %i.jc, %middle.block ]
  %.060155.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

._crit_edge159.i:                                 ; preds = %._crit_edge.i6, %_ZNSt6vectorIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9treeLevelESaIS3_EE6resizeEm.exit.i
  %i.jd = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 5 uses
  %i.je = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !69 ; 2 uses
  %i.jg = load ptr, ptr %i.jd, align 8, !tbaa !59 ; 2 uses
  %i.jh = ptrtoint ptr %i.jf to i64
  %i.ji = ptrtoint ptr %i.jg to i64
  %i.jj = sub i64 %i.jh, %i.ji
  %i.jk = ashr exact i64 %i.jj, 3                 ; 3 uses
  %i.jl = icmp ugt i64 %i.im, %i.jk
  br i1 %i.jl, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %._crit_edge159.i
  %i.jm = sub nuw i64 %i.im, %i.jk
  call void @_ZNSt6vectorImSaImEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.jd, i64 noundef %i.jm)
  %.pre.i = load i64, ptr %i.fh, align 8, !tbaa !66
  br label %_ZNSt6vectorImSaImEE6resizeEm.exit.i

bb.bk:                                            ; preds = %._crit_edge159.i
  %i.jn = icmp ult i64 %i.im, %i.jk
  br i1 %i.jn, label %bb.bl, label %_ZNSt6vectorImSaImEE6resizeEm.exit.i

bb.bl:                                            ; preds = %bb.bk
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %i.jg, i64 %i.im ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.jf, %i.jo
  br i1 %.not.i.i.i, label %_ZNSt6vectorImSaImEE6resizeEm.exit.i, label %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i.i:      ; preds = %bb.bl
end_hunk_1
