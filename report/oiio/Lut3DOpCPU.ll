inline.NumInlined: 813
inline.NumDeleted: 378
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRendererESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info:bb.a
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9RangeTreeD2Ev(ptr nofree noundef nonnull align 8 captures(none) dead_on_return(128) dereferenceable(128) initializes((0, 8)) %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9RangeTreeE, i64 16), ptr %0, align 8, !tbaa !51
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !110  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !111
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
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !112  ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !113  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.n, %i.p
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9treeLevelES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESaIS3_EED2Ev.exit, %_ZSt8_DestroyIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9treeLevelEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.as, %_ZSt8_DestroyIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9treeLevelEEvPT_.exit.i.i.i ], [ %i.n, %_ZNSt6vectorIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESaIS3_EED2Ev.exit ] ; 9 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 88
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !110  ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 104
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !111
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.r to i64
  %i.w = sub i64 %i.u, %i.v
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.w) #26
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i

_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i:          ; preds = %bb.d, %.lr.ph.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 64
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !110  ; 3 uses
  %.not.i.i.i1.i.i.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i1.i.i.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit2.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 80
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !111
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.y to i64
  %i.ad = sub i64 %i.ab, %i.ac
  tail call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.ad) #26
  br label %_ZNSt6vectorImSaImEED2Ev.exit2.i.i.i.i.i

_ZNSt6vectorImSaImEED2Ev.exit2.i.i.i.i.i:         ; preds = %bb.e, %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 40
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !87 ; 3 uses
  %.not.i.i.i3.i.i.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i3.i.i.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit2.i.i.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 56
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !88
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = ptrtoint ptr %i.af to i64
  %i.ak = sub i64 %i.ai, %i.aj
  tail call void @_ZdlPvm(ptr noundef nonnull %i.af, i64 noundef %i.ak) #26
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit.i.i.i.i.i

_ZNSt6vectorIfSaIfEED2Ev.exit.i.i.i.i.i:          ; preds = %bb.f, %_ZNSt6vectorImSaImEED2Ev.exit2.i.i.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !87 ; 3 uses
  %.not.i.i.i4.i.i.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i4.i.i.i.i.i, label %_ZSt8_DestroyIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9treeLevelEEvPT_.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit.i.i.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !88
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = ptrtoint ptr %i.am to i64
  %i.ar = sub i64 %i.ap, %i.aq
  tail call void @_ZdlPvm(ptr noundef nonnull %i.am, i64 noundef %i.ar) #26
  br label %_ZSt8_DestroyIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9treeLevelEEvPT_.exit.i.i.i

_ZSt8_DestroyIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9treeLevelEEvPT_.exit.i.i.i: ; preds = %bb.g, %_ZNSt6vectorIfSaIfEED2Ev.exit.i.i.i.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 112 ; 2 uses
  %.not.i.i.i3 = icmp eq ptr %i.as, %i.p
  br i1 %.not.i.i.i3, label %_ZSt8_DestroyIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9treeLevelES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !114

_ZSt8_DestroyIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9treeLevelES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9treeLevelEEvPT_.exit.i.i.i
  %.val.pr.i = load ptr, ptr %i.m, align 8, !tbaa !112
  br label %_ZSt8_DestroyIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9treeLevelES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9treeLevelES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9treeLevelES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESaIS3_EED2Ev.exit
  %.val.i = phi ptr [ %.val.pr.i, %_ZSt8_DestroyIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9treeLevelES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %i.n, %_ZNSt6vectorIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESaIS3_EED2Ev.exit ] ; 3 uses
  %.not.i.i2.i = icmp eq ptr %.val.i, null
  br i1 %.not.i.i2.i, label %_ZNSt6vectorIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9treeLevelESaIS3_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9treeLevelES3_EvT_S5_RSaIT0_E.exit.i
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.val1.i = load ptr, ptr %i.at, align 8, !tbaa !115
  %i.au = ptrtoint ptr %.val1.i to i64
  %i.av = ptrtoint ptr %.val.i to i64
  %i.aw = sub i64 %i.au, %i.av
  tail call void @_ZdlPvm(ptr noundef nonnull %.val.i, i64 noundef %i.aw) #26
  br label %_ZNSt6vectorIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9treeLevelESaIS3_EED2Ev.exit

_ZNSt6vectorIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9treeLevelESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9treeLevelES3_EvT_S5_RSaIT0_E.exit.i, %bb.h
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRendererD2Ev(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(176) initializes((0, 8), (24, 32)) %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRendererE, i64 16), ptr %0, align 8, !tbaa !51
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !87   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !88
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
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRendererE, i64 16), ptr %0, align 8, !tbaa !51
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !87   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRendererD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !88
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #26, !inline_history !116
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRendererD2Ev.exit

_ZN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRendererD2Ev.exit: ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_ZN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9RangeTreeD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %i.h) #25, !inline_history !116
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
  %i.k = alloca [8 x i64], align 16               ; 5 uses
  %i.l = alloca [8 x i64], align 16               ; 9 uses
  %i.m = alloca [8 x i64], align 16               ; 11 uses
  %i.n = alloca [16 x i64], align 16              ; 7 uses
  %i.o = alloca [16 x i64], align 16              ; 12 uses
  %i.p = alloca [16 x i64], align 16              ; 6 uses
  %i.q = alloca [3 x i64], align 16               ; 7 uses
  %i.r = alloca [3 x float], align 4              ; 10 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.t = load i64, ptr %i.s, align 8, !tbaa !117
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val = load i64, ptr %i.u, align 8, !tbaa !118 ; 9 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.val120 = load i64, ptr %i.v, align 8, !tbaa !119
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #25
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.x = load i64, ptr %i.w, align 8, !tbaa !117  ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.z = load i64, ptr %i.y, align 8, !tbaa !117
  %i.aa = mul i64 %i.z, %i.x                      ; 5 uses
  store i64 %i.aa, ptr %i.j, align 16, !tbaa !117
  %i.ab = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  store i64 %i.x, ptr %i.ab, align 8, !tbaa !117
  %i.ac = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  store i64 1, ptr %i.ac, align 16, !tbaa !117
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.k, i8 0, i64 16, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store <6 x i64> splat (i64 1), ptr %i.ad, align 16
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
  store i64 %i.aa, ptr %i.m, align 16, !tbaa !117
  %i.aj = add i64 %i.x, %i.aa                     ; 2 uses
  %i.ak = add i64 %i.aj, 1
  %i.al = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 %i.ak, ptr %i.al, align 8, !tbaa !117
  %i.am = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i64 %i.aj, ptr %i.am, align 16, !tbaa !117
  %i.an = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store i64 %i.x, ptr %i.an, align 8, !tbaa !117
  %i.ao = add i64 %i.x, 1
  %i.ap = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store i64 %i.ao, ptr %i.ap, align 16, !tbaa !117
  %i.aq = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  store i64 1, ptr %i.aq, align 8, !tbaa !117
  %i.ar = add i64 %i.aa, 1
  %i.as = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  store i64 %i.ar, ptr %i.as, align 16, !tbaa !117
  %i.at = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  store i64 %i.aa, ptr %i.at, align 8, !tbaa !117
  %i.au = add i64 %i.t, -3
  %i.av = uitofp i64 %i.au to float               ; 6 uses
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
  %wide.load = load <2 x i64>, ptr %i.ay, align 16, !tbaa !117
  %wide.load241 = load <2 x i64>, ptr %i.az, align 16, !tbaa !117
  %i.ba = mul <2 x i64> %wide.load, %broadcast.splat
  %i.bb = mul <2 x i64> %wide.load241, %broadcast.splat
  store <2 x i64> %i.ba, ptr %i.ay, align 16, !tbaa !117
  store <2 x i64> %i.bb, ptr %i.az, align 16, !tbaa !117
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bc = icmp eq i64 %index.next, %n.vec
  br i1 %i.bc, label %middle.block, label %vector.body, !llvm.loop !120

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.val, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader250

.lr.ph.preheader250:                              ; preds = %.lr.ph.preheader, %middle.block
  %.0106164.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %.preheader151
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.n, i8 0, i64 128, i1 false), !tbaa !117
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.p, i8 0, i64 128, i1 false), !tbaa !117
  %i.bd = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store <4 x i64> splat (i64 1), ptr %i.bd, align 8, !tbaa !117
  %i.be = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  store <4 x i64> splat (i64 1), ptr %i.be, align 8, !tbaa !117
  %i.bf = getelementptr inbounds nuw i8, ptr %i.o, i64 72
  store <4 x i64> splat (i64 1), ptr %i.bf, align 8, !tbaa !117
  %i.bg = getelementptr inbounds nuw i8, ptr %i.o, i64 104
  store i64 1, ptr %i.bg, align 8, !tbaa !117
  %i.bh = getelementptr inbounds nuw i8, ptr %i.o, i64 112
  store i64 1, ptr %i.bh, align 16, !tbaa !117
  %i.bi = getelementptr inbounds nuw i8, ptr %i.o, i64 120
  store i64 1, ptr %i.bi, align 8, !tbaa !117
  %i.bj = icmp sgt i64 %3, 0
  br i1 %i.bj, label %.lr.ph175, label %._crit_edge176

.lr.ph:                                           ; preds = %.lr.ph.preheader250, %.lr.ph
  %.0106164 = phi i64 [ %i.bn, %.lr.ph ], [ %.0106164.ph, %.lr.ph.preheader250 ] ; 2 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.0106164 ; 2 uses
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !117
  %i.bm = mul i64 %i.bl, %.val
  store i64 %i.bm, ptr %i.bk, align 8, !tbaa !117
  %i.bn = add nuw i64 %.0106164, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.bn, %.val
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !123

.lr.ph175:                                        ; preds = %._crit_edge
  %i.bo = add i64 %.val120, -1                    ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %4 = getelementptr inbounds nuw i8, ptr %i.r, i64 4 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.bs = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 5 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.f, i64 48 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.f, i64 64 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.f, i64 80 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.cf = shl nuw i64 %.val, 3
  %.val129.pre = load ptr, ptr %i.aw, align 8, !tbaa !112 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.val129.pre, i64 64
  %i.ch = getelementptr inbounds nuw i8, ptr %.val129.pre, i64 72
  %.8..8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.16..16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.ci = getelementptr inbounds nuw i8, ptr %i.b, i64 16
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
  %.0109174 = phi ptr [ %1, %.lr.ph175 ], [ %i.rz, %bb.ac ] ; 4 uses
  %.0111173 = phi ptr [ %2, %.lr.ph175 ], [ %i.sa, %bb.ac ] ; 5 uses
  %.0112172 = phi i64 [ 0, %.lr.ph175 ], [ %i.sb, %bb.ac ]
  %i.cj = load <2 x float>, ptr %.0109174, align 4, !tbaa !102 ; 2 uses
  %i.ck = fcmp ogt <2 x float> %i.cj, zeroinitializer
  %i.cl = select <2 x i1> %i.ck, <2 x float> %i.cj, <2 x float> zeroinitializer ; 2 uses
  %i.cm = fcmp ogt <2 x float> %i.cl, splat (float 1.000000e+00)
  %i.cn = select <2 x i1> %i.cm, <2 x float> splat (float 1.000000e+00), <2 x float> %i.cl ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.0109174, i64 8
  %i.cp = load float, ptr %i.co, align 4, !tbaa !102 ; 2 uses
  %i.cq = fcmp ogt float %i.cp, 0.000000e+00
  %.sroa.speculated2.i133 = select i1 %i.cq, float %i.cp, float 0.000000e+00 ; 2 uses
  %i.cr = fcmp ogt float %.sroa.speculated2.i133, 1.000000e+00
  %.sroa.speculated.i134 = select i1 %i.cr, float 1.000000e+00, float %.sroa.speculated2.i133 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.q, i8 0, i64 24, i1 false)
  %i.cs = load ptr, ptr %i.ch, align 8, !tbaa !124
  %i.ct = load ptr, ptr %i.cg, align 8, !tbaa !110
  %i.cu = ptrtoint ptr %i.cs to i64
  %i.cv = ptrtoint ptr %i.ct to i64
  %i.cw = sub i64 %i.cu, %i.cv
  %i.cx = ashr exact i64 %i.cw, 3
  store i64 %i.cx, ptr %i.o, align 16, !tbaa !117
  store i64 0, ptr %i.n, align 16, !tbaa !117
  store i64 0, ptr %i.p, align 16, !tbaa !117
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.r, i8 0, i64 12, i1 false)
  %i.cy = getelementptr inbounds nuw i8, ptr %.0111173, i64 4
  %i.cz = getelementptr inbounds nuw i8, ptr %.0111173, i64 8
  %i.da = getelementptr inbounds nuw i8, ptr %.0109174, i64 12
  %i.db = getelementptr inbounds nuw i8, ptr %.0111173, i64 12
  %i.dc = fpext <2 x float> %i.cn to <2 x double>
  %i.dd = fpext float %.sroa.speculated.i134 to double
  %i.de = extractelement <2 x float> %i.cn, i64 0 ; 2 uses
  %i.df = extractelement <2 x float> %i.cn, i64 1 ; 2 uses
  br label %.preheader149

.preheader149:                                    ; preds = %bb.a, %.loopexit
  %5 = phi float [ 0.000000e+00, %bb.a ], [ %14, %.loopexit ] ; 3 uses
  %6 = phi float [ 0.000000e+00, %bb.a ], [ %15, %.loopexit ] ; 3 uses
  %i.dg = phi float [ 0.000000e+00, %bb.a ], [ %i.ro, %.loopexit ] ; 3 uses
  %.16.205 = phi i64 [ 0, %bb.a ], [ %.16.206, %.loopexit ] ; 2 uses
  %.0110171.a = phi i64 [ 0, %bb.a ], [ %.5.a, %.loopexit ] ; 2 uses
  %.0.195 = phi i64 [ 0, %bb.a ], [ %.0.196, %.loopexit ] ; 2 uses
  %.0110171 = phi i64 [ 0, %bb.a ], [ %i.rp, %.loopexit ] ; 4 uses
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.0110171 ; 2 uses
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !117 ; 2 uses
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.0110171
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !117
  %i.dl = icmp ult i64 %i.di, %i.dk
  br i1 %i.dl, label %.lr.ph170, label %.loopexit

.lr.ph170:                                        ; preds = %.preheader149
  %i.dm = load i64, ptr %i.j, align 16
  %i.dn = load i64, ptr %i.ab, align 8
  %i.do = load i64, ptr %i.ac, align 16
  %.val130 = load ptr, ptr %i.ax, align 8
  %i.dp = load ptr, ptr %i.br, align 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph170, %bb.ab
  %.16.204 = phi i64 [ %.16.205, %.lr.ph170 ], [ %.16.203, %bb.ab ] ; 4 uses
  %i.dq = phi i64 [ %.0110171.a, %.lr.ph170 ], [ %.8.198, %bb.ab ] ; 4 uses
  %.0.194 = phi i64 [ %.0.195, %.lr.ph170 ], [ %.4.a, %bb.ab ] ; 4 uses
  %.1169.a = phi i64 [ %i.di, %.lr.ph170 ], [ %i.rk, %bb.ab ] ; 2 uses
  %7 = phi ptr [ %i.dh, %.lr.ph170 ], [ %i.rj, %bb.ab ] ; 2 uses
  %.1169 = phi i64 [ %.0110171, %.lr.ph170 ], [ %.4, %bb.ab ] ; 6 uses
  %i.dr = getelementptr inbounds [8 x i8], ptr %i.p, i64 %.1169 ; 3 uses
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !117 ; 6 uses
  %i.dt = getelementptr inbounds nuw [112 x i8], ptr %.val129.pre, i64 %.1169 ; 4 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  %i.dv = mul i64 %i.ds, %.val                    ; 4 uses
  %i.dw = load ptr, ptr %i.du, align 8, !tbaa !87 ; 3 uses
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %i.dv
  %i.dy = load float, ptr %i.dx, align 4, !tbaa !102
  %i.dz = fcmp ult float %i.de, %i.dy
  br i1 %i.dz, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ea = add i64 %i.dv, 1                        ; 2 uses
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %i.ea
  %i.ec = load float, ptr %i.eb, align 4, !tbaa !102
  %i.ed = fcmp ult float %i.df, %i.ec
  br i1 %i.ed, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ee = add i64 %i.dv, 2                        ; 2 uses
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %i.ee
  %i.eg = load float, ptr %i.ef, align 4, !tbaa !102
  %i.eh = fcmp ult float %.sroa.speculated.i134, %i.eg
  br i1 %i.eh, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dt, i64 40
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !87 ; 3 uses
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %i.dv
  %i.el = load float, ptr %i.ek, align 4, !tbaa !102
  %i.em = fcmp ugt float %i.de, %i.el
  br i1 %i.em, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %i.ea
  %i.eo = load float, ptr %i.en, align 4, !tbaa !102
  %i.ep = fcmp ugt float %i.df, %i.eo
  br i1 %i.ep, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %i.ee
  %i.er = load float, ptr %i.eq, align 4, !tbaa !102
  %i.es = fcmp ugt float %.sroa.speculated.i134, %i.er
  %i.et = add nuw i64 %.1169.a, 1
  store i64 %i.et, ptr %7, align 8, !tbaa !117
  %i.eu = add i64 %i.ds, 1
  store i64 %i.eu, ptr %i.dr, align 8, !tbaa !117
  br i1 %i.es, label %bb.ab, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ev = icmp eq i64 %.1169, %i.bo
  br i1 %i.ev, label %.preheader, label %bb.aa

.preheader:                                       ; preds = %bb.h
  br i1 %.not, label %._crit_edge168, label %.lr.ph167

.lr.ph167:                                        ; preds = %.preheader
  %i.ew = getelementptr inbounds nuw [32 x i8], ptr %.val130, i64 %i.ds
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.q, ptr align 8 %i.ew, i64 %i.cf, i1 false), !tbaa !117
  %.0..0..pre = load i64, ptr %i.q, align 16, !tbaa !117
  %.8..8..pre = load i64, ptr %.8..8..sroa_idx, align 8, !tbaa !117
  %.16..16..pre = load i64, ptr %.16..16..sroa_idx, align 16, !tbaa !117
  br label %._crit_edge168

._crit_edge168:                                   ; preds = %.lr.ph167, %.preheader
  %.16. = phi i64 [ %.16..16..pre, %.lr.ph167 ], [ %.16.204, %.preheader ] ; 4 uses
  %.8. = phi i64 [ %.8..8..pre, %.lr.ph167 ], [ %i.dq, %.preheader ] ; 4 uses
  %.0. = phi i64 [ %.0..0..pre, %.lr.ph167 ], [ %.0.194, %.preheader ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #25
  %i.ex = mul i64 %i.dm, %.0.
  %i.ey = mul i64 %i.dn, %.8.
  %i.ez = mul i64 %i.do, %.16.
  %i.fa = getelementptr [4 x i8], ptr %i.dp, i64 %i.ez
  %i.fb = getelementptr [4 x i8], ptr %i.fa, i64 %i.ey
  %i.fc = getelementptr [4 x i8], ptr %i.fb, i64 %i.ex ; 3 uses
  store i64 0, ptr %i.a, align 16, !tbaa !117
  store i64 0, ptr %i.b, align 16, !tbaa !117
  %i.fd = load float, ptr %i.fc, align 4, !tbaa !102
  %i.fe = fpext float %i.fd to double             ; 2 uses
  store double 1.000000e+00, ptr %i.f, align 16, !tbaa !125
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bs, i8 0, i64 16, i1 false)
  store i64 1, ptr %i.bt, align 8, !tbaa !117
  store i64 1, ptr %i.bu, align 8, !tbaa !117
  %i.ff = getelementptr i8, ptr %i.fc, i64 4
  store <2 x double> <double 0.000000e+00, double 1.000000e+00>, ptr %i.bv, align 16, !tbaa !125
  store double 0.000000e+00, ptr %i.bw, align 16, !tbaa !125
  store i64 2, ptr %i.bx, align 16, !tbaa !117
  store i64 2, ptr %i.by, align 16, !tbaa !117
  %i.fg = load <2 x float>, ptr %i.ff, align 4, !tbaa !102
  %i.fh = fpext <2 x float> %i.fg to <2 x double> ; 3 uses
  %i.fi = shufflevector <2 x double> %i.fh, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.fj = insertelement <2 x double> %i.fi, double %i.fe, i64 0
  %i.fk = fsub <2 x double> %i.dc, %i.fj          ; 2 uses
  store <2 x double> %i.fk, ptr %i.e, align 16, !tbaa !125
  %i.fl = extractelement <2 x double> %i.fh, i64 1
  %i.fm = fsub double %i.dd, %i.fl                ; 2 uses
  store double %i.fm, ptr %i.bz, align 16, !tbaa !125
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ca, i8 0, i64 16, i1 false)
  store double 1.000000e+00, ptr %i.cb, align 16, !tbaa !125
  br label %bb.i

bb.i:                                             ; preds = %.thread336.i, %._crit_edge168
  %.0255436.i = phi i64 [ 0, %._crit_edge168 ], [ %.7.ph.i, %.thread336.i ]
  %.0259435.i = phi i64 [ 0, %._crit_edge168 ], [ %.2261.lcssa.i, %.thread336.i ]
  %.0290433.i = phi i64 [ 0, %._crit_edge168 ], [ %i.qp, %.thread336.i ] ; 5 uses
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.0290433.i
  %i.fo = load i64, ptr %i.fn, align 8, !tbaa !117 ; 2 uses
  %i.fp = icmp slt i64 %i.fo, 0
  br i1 %i.fp, label %.preheader363.preheader.i, label %.loopexit364.i

.preheader363.preheader.i:                        ; preds = %bb.i
  store <2 x double> %i.fk, ptr %i.e, align 16, !tbaa !125
  store double %i.fm, ptr %i.bz, align 16, !tbaa !125
  store i64 0, ptr %i.a, align 16, !tbaa !117
  store i64 0, ptr %i.b, align 16, !tbaa !117
  store double 1.000000e+00, ptr %i.f, align 16, !tbaa !125
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bs, i8 0, i64 16, i1 false)
  store i64 1, ptr %i.bt, align 8, !tbaa !117
  store i64 1, ptr %i.bu, align 8, !tbaa !117
  store <2 x double> <double 0.000000e+00, double 1.000000e+00>, ptr %i.bv, align 16, !tbaa !125
  store double 0.000000e+00, ptr %i.bw, align 16, !tbaa !125
  store i64 2, ptr %i.bx, align 16, !tbaa !117
  store i64 2, ptr %i.by, align 16, !tbaa !117
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ca, i8 0, i64 16, i1 false)
  store double 1.000000e+00, ptr %i.cb, align 16, !tbaa !125
  br label %.loopexit364.i

.loopexit364.i:                                   ; preds = %.preheader363.preheader.i, %bb.i
  %.1260.i = phi i64 [ %.0259435.i, %bb.i ], [ 0, %.preheader363.preheader.i ] ; 7 uses
  %.0251.i = phi i64 [ %i.fo, %bb.i ], [ 0, %.preheader363.preheader.i ]
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.0290433.i
  %i.fr = load i64, ptr %i.fq, align 8, !tbaa !117 ; 4 uses
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.0290433.i
  %i.ft = load i64, ptr %i.fs, align 8, !tbaa !117
  %.idx.i = mul i64 %i.ft, 12
  %i.fu = getelementptr i8, ptr %i.fc, i64 %.idx.i ; 2 uses
  %i.fv = load float, ptr %i.fu, align 4, !tbaa !102
  %i.fw = fpext float %i.fv to double
  %i.fx = fsub double %i.fw, %i.fe                ; 2 uses
  store double %i.fx, ptr %i.i, align 16, !tbaa !125
  %i.fy = getelementptr i8, ptr %i.fu, i64 4
  %i.fz = load <2 x float>, ptr %i.fy, align 4, !tbaa !102
  %i.ga = fpext <2 x float> %i.fz to <2 x double>
  %i.gb = fsub <2 x double> %i.ga, %i.fh          ; 2 uses
  store <2 x double> %i.gb, ptr %i.cc, align 8, !tbaa !125
  %.not441.i = icmp eq i64 %.1260.i, 0
  br i1 %.not441.i, label %.preheader361.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.loopexit364.i
  %xtraiter = and i64 %.1260.i, 1
  %i.gc = icmp eq i64 %.1260.i, 1
  br i1 %i.gc, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %.1260.i, -2
  br label %.lr.ph.i

.preheader361.loopexit.i.unr-lcssa:               ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader361.loopexit.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.preheader361.loopexit.i.unr-lcssa, %.lr.ph.i.preheader
  %.0297378.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.ib, %.preheader361.loopexit.i.unr-lcssa ] ; 3 uses
  %lcmp.mod251 = trunc i64 %.1260.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod251)
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.0297378.i.epil.init
  %i.ge = load double, ptr %i.gd, align 8, !tbaa !125
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.0297378.i.epil.init
  %i.gg = load i64, ptr %i.gf, align 8, !tbaa !117
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.gg
  %i.gi = load double, ptr %i.gh, align 8, !tbaa !125
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.0297378.i.epil.init
  %i.gk = load i64, ptr %i.gj, align 8, !tbaa !117
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.gk ; 2 uses
  %i.gm = load double, ptr %i.gl, align 8, !tbaa !125
  %i.gn = fneg double %i.ge
  %i.go = tail call double @llvm.fmuladd.f64(double %i.gn, double %i.gi, double %i.gm)
  store double %i.go, ptr %i.gl, align 8, !tbaa !125
  br label %.preheader361.loopexit.i

.preheader361.loopexit.i:                         ; preds = %.preheader361.loopexit.i.unr-lcssa, %.lr.ph.i.epil.preheader
  %.pre.i = load double, ptr %i.i, align 16, !tbaa !125
  %i.gp = load <2 x double>, ptr %i.cc, align 8, !tbaa !125
  br label %.preheader361.i

.preheader361.i:                                  ; preds = %.preheader361.loopexit.i, %.loopexit364.i
  %i.gq = phi double [ %.pre.i, %.preheader361.loopexit.i ], [ %i.fx, %.loopexit364.i ]
  %i.gr = phi <2 x double> [ %i.gp, %.preheader361.loopexit.i ], [ %i.gb, %.loopexit364.i ] ; 2 uses
  %invariant.gep.i = getelementptr [8 x i8], ptr %i.f, i64 %i.fr ; 3 uses
  store double %i.gq, ptr %invariant.gep.i, align 8, !tbaa !125
  %i.gs = load i64, ptr %i.b, align 16, !tbaa !117 ; 2 uses
  %i.gt = icmp eq i64 %i.gs, %i.fr
  %spec.select.i = zext i1 %i.gt to i64
  %gep.1.i = getelementptr i8, ptr %invariant.gep.i, i64 32
  %i.gu = extractelement <2 x double> %i.gr, i64 0
  store double %i.gu, ptr %gep.1.i, align 8, !tbaa !125
  %i.gv = load i64, ptr %i.bu, align 8, !tbaa !117 ; 2 uses
  %i.gw = icmp eq i64 %i.gv, %i.fr
  %spec.select.1.i = select i1 %i.gw, i64 2, i64 %spec.select.i
  %gep.2.i = getelementptr i8, ptr %invariant.gep.i, i64 64
  %i.gx = extractelement <2 x double> %i.gr, i64 1
  store double %i.gx, ptr %gep.2.i, align 8, !tbaa !125
  %i.gy = load i64, ptr %i.by, align 16, !tbaa !117
  %i.gz = icmp eq i64 %i.gy, %i.fr
  %spec.select.2.i = select i1 %i.gz, i64 3, i64 %spec.select.1.i ; 2 uses
  %i.ha = icmp samesign ult i64 %spec.select.2.i, 2
  %i.hb = add nsw i64 %spec.select.2.i, -1        ; 4 uses
  br i1 %i.ha, label %bb.j, label %.preheader361._crit_edge.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.0297378.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.ib, %.lr.ph.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.0297378.i
  %i.hd = load double, ptr %i.hc, align 16, !tbaa !125
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.0297378.i
  %i.hf = load i64, ptr %i.he, align 16, !tbaa !117
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.hf
  %i.hh = load double, ptr %i.hg, align 8, !tbaa !125
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.0297378.i
  %i.hj = load i64, ptr %i.hi, align 16, !tbaa !117
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.hj ; 2 uses
  %i.hl = load double, ptr %i.hk, align 8, !tbaa !125
  %i.hm = fneg double %i.hd
  %i.hn = tail call double @llvm.fmuladd.f64(double %i.hm, double %i.hh, double %i.hl)
  store double %i.hn, ptr %i.hk, align 8, !tbaa !125
  %i.ho = or disjoint i64 %.0297378.i, 1          ; 3 uses
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.ho
  %i.hq = load double, ptr %i.hp, align 8, !tbaa !125
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.ho
  %i.hs = load i64, ptr %i.hr, align 8, !tbaa !117
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.hs
  %i.hu = load double, ptr %i.ht, align 8, !tbaa !125
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.ho
  %i.hw = load i64, ptr %i.hv, align 8, !tbaa !117
  %i.hx = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.hw ; 2 uses
  %i.hy = load double, ptr %i.hx, align 8, !tbaa !125
  %i.hz = fneg double %i.hq
  %i.ia = tail call double @llvm.fmuladd.f64(double %i.hz, double %i.hu, double %i.hy)
  store double %i.ia, ptr %i.hx, align 8, !tbaa !125
  %i.ib = add nuw i64 %.0297378.i, 2              ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader361.loopexit.i.unr-lcssa, label %.lr.ph.i, !llvm.loop !127

bb.j:                                             ; preds = %.preheader361.i
  %i.ic = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.hb
  %i.id = load i64, ptr %i.ic, align 8, !tbaa !117
  %i.ie = icmp eq i64 %i.hb, 0
  %.lcssa.i = select i1 %i.ie, i64 %i.gv, i64 %i.gs
  store i64 %.lcssa.i, ptr %i.b, align 16
  store i64 %i.id, ptr %i.bu, align 8, !tbaa !117
  br label %.preheader361._crit_edge.i

.preheader361._crit_edge.i:                       ; preds = %bb.j, %.preheader361.i
  %i.if = icmp ult i64 %i.hb, 2
  br i1 %i.if, label %.lr.ph389.preheader.i, label %._crit_edge424.i

.loopexit357.i:                                   ; preds = %bb.v
  %i.ig = icmp eq i64 %.0291419.i, 0
  br i1 %i.ig, label %.lr.ph389.preheader.i, label %._crit_edge424.i, !llvm.loop !128

._crit_edge424.i:                                 ; preds = %.loopexit357.i, %.preheader361._crit_edge.i
  %.2261.lcssa.i = phi i64 [ %.1260.i, %.preheader361._crit_edge.i ], [ %.4263.i, %.loopexit357.i ]
  %.not.i = icmp eq i64 %.0251.i, 0
  br i1 %.not.i, label %.thread336.i, label %.preheader360.preheader.i

.preheader360.preheader.i:                        ; preds = %._crit_edge424.i
  %i.ih = load i64, ptr %i.bx, align 16, !tbaa !117 ; 2 uses
  %i.ii = getelementptr inbounds nuw [32 x i8], ptr %i.f, i64 %i.ih
  %i.ij = load i64, ptr %i.by, align 16, !tbaa !117 ; 4 uses
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %i.ii, i64 %i.ij
end_hunk_0
begin_hunk_1_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer5applyEPKvPvl:.preheader151
  %i.mc = getelementptr inbounds nuw [8 x i8], ptr %i.ma, i64 %i.mb
  %i.md = load double, ptr %i.mc, align 8, !tbaa !125
  %i.me = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.lz
  %lcmp.mod256.not = icmp eq i64 %.0291419.i, 0
  %i.mf = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.iq
  %i.mg = or disjoint i64 %.0291419.i, 2
  %.not258.not = icmp eq i64 %.0291419.i, 1
  br label %bb.u

bb.u:                                             ; preds = %bb.v, %.lr.ph417.i
  %.3262415.i = phi i64 [ %.2261421.i, %.lr.ph417.i ], [ %.4263.i, %bb.v ] ; 5 uses
  %.0264414.i = phi i64 [ %i.iq, %.lr.ph417.i ], [ 2, %bb.v ] ; 2 uses
  %i.mh = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.0264414.i
  %i.mi = load i64, ptr %i.mh, align 8, !tbaa !117 ; 3 uses
  %i.mj = getelementptr inbounds nuw [32 x i8], ptr %i.f, i64 %i.mi ; 4 uses
  %i.mk = getelementptr inbounds nuw [8 x i8], ptr %i.mj, i64 %i.mb ; 2 uses
  %i.ml = load double, ptr %i.mk, align 8, !tbaa !125 ; 2 uses
  %i.mm = tail call double @llvm.fabs.f64(double %i.ml)
  %i.mn = fcmp ult double %i.mm, 1.000000e-09
  br i1 %i.mn, label %bb.v, label %.lr.ph412.i

.lr.ph412.i:                                      ; preds = %bb.u
  %i.mo = fdiv double %i.ml, %i.md                ; 2 uses
  store double 0.000000e+00, ptr %i.mk, align 8, !tbaa !125
  %i.mp = fneg double %i.mo                       ; 4 uses
  br i1 %lcmp.mod256.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph412.i
  %i.mq = load i64, ptr %i.mf, align 8, !tbaa !117 ; 2 uses
  %i.mr = getelementptr inbounds nuw [8 x i8], ptr %i.ma, i64 %i.mq
  %i.ms = load double, ptr %i.mr, align 8, !tbaa !125
  %i.mt = getelementptr inbounds nuw [8 x i8], ptr %i.mj, i64 %i.mq ; 2 uses
  %i.mu = load double, ptr %i.mt, align 8, !tbaa !125
  %i.mv = tail call double @llvm.fmuladd.f64(double %i.mp, double %i.ms, double %i.mu)
  store double %i.mv, ptr %i.mt, align 8, !tbaa !125
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph412.i
  %.0254410.i.unr = phi i64 [ %i.iq, %.lr.ph412.i ], [ %i.mg, %.prol.loopexit.unr-lcssa ]
  br i1 %.not258.not, label %._crit_edge413.i, label %.lr.ph412.i.new

._crit_edge413.i:                                 ; preds = %.lr.ph412.i.new, %.prol.loopexit
  %i.mw = load double, ptr %i.me, align 8, !tbaa !125
  %i.mx = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.mi ; 2 uses
  %i.my = load double, ptr %i.mx, align 8, !tbaa !125
  %i.mz = tail call double @llvm.fmuladd.f64(double %i.mp, double %i.mw, double %i.my)
  store double %i.mz, ptr %i.mx, align 8, !tbaa !125
  %i.na = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.3262415.i
  store i64 %i.mi, ptr %i.na, align 8, !tbaa !117
  %i.nb = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.3262415.i
  store i64 %i.lz, ptr %i.nb, align 8, !tbaa !117
  %i.nc = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.3262415.i
  store double %i.mo, ptr %i.nc, align 8, !tbaa !125
  %i.nd = add i64 %.3262415.i, 1
  br label %bb.v

.lr.ph412.i.new:                                  ; preds = %.prol.loopexit, %.lr.ph412.i.new
  %.0254410.i = phi i64 [ %i.nt, %.lr.ph412.i.new ], [ %.0254410.i.unr, %.prol.loopexit ] ; 3 uses
  %i.ne = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.0254410.i
  %i.nf = load i64, ptr %i.ne, align 8, !tbaa !117 ; 2 uses
  %i.ng = getelementptr inbounds nuw [8 x i8], ptr %i.ma, i64 %i.nf
  %i.nh = load double, ptr %i.ng, align 8, !tbaa !125
  %i.ni = getelementptr inbounds nuw [8 x i8], ptr %i.mj, i64 %i.nf ; 2 uses
  %i.nj = load double, ptr %i.ni, align 8, !tbaa !125
  %i.nk = tail call double @llvm.fmuladd.f64(double %i.mp, double %i.nh, double %i.nj)
  store double %i.nk, ptr %i.ni, align 8, !tbaa !125
  %i.nl = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.0254410.i
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nl, i64 8
  %i.nn = load i64, ptr %i.nm, align 8, !tbaa !117 ; 2 uses
  %i.no = getelementptr inbounds nuw [8 x i8], ptr %i.ma, i64 %i.nn
  %i.np = load double, ptr %i.no, align 8, !tbaa !125
  %i.nq = getelementptr inbounds nuw [8 x i8], ptr %i.mj, i64 %i.nn ; 2 uses
  %i.nr = load double, ptr %i.nq, align 8, !tbaa !125
  %i.ns = tail call double @llvm.fmuladd.f64(double %i.mp, double %i.np, double %i.nr)
  store double %i.ns, ptr %i.nq, align 8, !tbaa !125
  %i.nt = add nuw i64 %.0254410.i, 2              ; 2 uses
  %exitcond452.not.i.1 = icmp eq i64 %i.nt, 3
  br i1 %exitcond452.not.i.1, label %._crit_edge413.i, label %.lr.ph412.i.new, !llvm.loop !130

bb.v:                                             ; preds = %._crit_edge413.i, %bb.u
  %.4263.i = phi i64 [ %i.nd, %._crit_edge413.i ], [ %.3262415.i, %bb.u ] ; 3 uses
  %exitcond453.not.i = icmp eq i64 %.0264414.i, 2
  br i1 %exitcond453.not.i, label %.loopexit357.i, label %bb.u, !llvm.loop !131

bb.w:                                             ; preds = %.preheader360.preheader.i
  %i.nu = tail call double @llvm.fabs.f64(double %i.ip)
  %i.nv = fcmp ogt double %i.nu, 1.000000e-09
  br i1 %i.nv, label %.thread336.i, label %.preheader360.1.i

._crit_edge429.i:                                 ; preds = %.preheader360.preheader.i
  %i.nw = fdiv double %i.ip, %i.il                ; 4 uses
  %i.nx = fcmp olt double %i.nw, -1.000000e-09
  %i.ny = fcmp ogt double %i.nw, f0x3FF000000044B830
  %or.cond.i = or i1 %i.nx, %i.ny
  br i1 %or.cond.i, label %.thread336.i, label %bb.x

bb.x:                                             ; preds = %._crit_edge429.i
  %i.nz = fadd double %i.nw, 0.000000e+00
  br label %.preheader360.1.i

.preheader360.1.i:                                ; preds = %bb.x, %bb.w
  %.sroa.9.0.i = phi double [ %i.nw, %bb.x ], [ 0.000000e+00, %bb.w ] ; 3 uses
  %.3.ph.i = phi double [ %i.nz, %bb.x ], [ 0.000000e+00, %bb.w ] ; 2 uses
  %i.oa = load i64, ptr %i.bt, align 8, !tbaa !117 ; 3 uses
  %i.ob = getelementptr inbounds nuw [32 x i8], ptr %i.f, i64 %i.oa ; 2 uses
  %i.oc = load i64, ptr %i.bu, align 8, !tbaa !117 ; 3 uses
  %i.od = getelementptr inbounds nuw [8 x i8], ptr %i.ob, i64 %i.oc
  %i.oe = load double, ptr %i.od, align 8, !tbaa !125 ; 2 uses
  %i.of = tail call double @llvm.fabs.f64(double %i.oe)
  %i.og = fcmp olt double %i.of, 1.000000e-09
  br i1 %i.og, label %bb.y, label %._crit_edge429.1.i

._crit_edge429.1.i:                               ; preds = %.preheader360.1.i
  %i.oh = getelementptr inbounds nuw [8 x i8], ptr %i.ob, i64 %i.ij
  %i.oi = load double, ptr %i.oh, align 8, !tbaa !125
  %i.oj = tail call double @llvm.fmuladd.f64(double %i.oi, double %.sroa.9.0.i, double 0.000000e+00)
  %i.ok = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.oa
  %i.ol = load double, ptr %i.ok, align 8, !tbaa !125
  %i.om = fsub double %i.ol, %i.oj
  %i.on = fdiv double %i.om, %i.oe                ; 3 uses
  %i.oo = fcmp olt double %i.on, -1.000000e-09
  %i.op = fadd double %.3.ph.i, %i.on             ; 2 uses
  %i.oq = fcmp ogt double %i.op, f0x3FF000000044B830
  %or.cond487.i = or i1 %i.oo, %i.oq
  br i1 %or.cond487.i, label %.thread336.i, label %.preheader360.2.i

bb.y:                                             ; preds = %.preheader360.1.i
  %i.or = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.oa
  %i.os = load double, ptr %i.or, align 8, !tbaa !125
  %i.ot = tail call double @llvm.fabs.f64(double %i.os)
  %i.ou = fcmp ogt double %i.ot, 1.000000e-09
  br i1 %i.ou, label %.thread336.i, label %.preheader360.2.i

.preheader360.2.i:                                ; preds = %bb.y, %._crit_edge429.1.i
  %.sroa.5463.0.i = phi double [ %i.on, %._crit_edge429.1.i ], [ 0.000000e+00, %bb.y ] ; 2 uses
  %.3.ph.1.i = phi double [ %i.op, %._crit_edge429.1.i ], [ %.3.ph.i, %bb.y ]
  %i.ov = load i64, ptr %i.a, align 16, !tbaa !117 ; 3 uses
  %i.ow = getelementptr inbounds nuw [32 x i8], ptr %i.f, i64 %i.ov ; 3 uses
  %i.ox = load i64, ptr %i.b, align 16, !tbaa !117 ; 2 uses
  %i.oy = getelementptr inbounds nuw [8 x i8], ptr %i.ow, i64 %i.ox
  %i.oz = load double, ptr %i.oy, align 8, !tbaa !125 ; 2 uses
  %i.pa = tail call double @llvm.fabs.f64(double %i.oz)
  %i.pb = fcmp olt double %i.pa, 1.000000e-09
  br i1 %i.pb, label %bb.z, label %._crit_edge429.2.i

._crit_edge429.2.i:                               ; preds = %.preheader360.2.i
  %i.pc = getelementptr inbounds nuw [8 x i8], ptr %i.ow, i64 %i.ij
  %i.pd = load double, ptr %i.pc, align 8, !tbaa !125
  %i.pe = getelementptr inbounds nuw [8 x i8], ptr %i.ow, i64 %i.oc
  %i.pf = load double, ptr %i.pe, align 8, !tbaa !125
  %i.pg = tail call double @llvm.fmuladd.f64(double %i.pf, double %.sroa.5463.0.i, double 0.000000e+00)
  %i.ph = tail call double @llvm.fmuladd.f64(double %i.pd, double %.sroa.9.0.i, double %i.pg)
  %i.pi = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.ov
  %i.pj = load double, ptr %i.pi, align 8, !tbaa !125
  %i.pk = fsub double %i.pj, %i.ph
  %i.pl = fdiv double %i.pk, %i.oz                ; 3 uses
  %i.pm = fcmp olt double %i.pl, -1.000000e-09
  %i.pn = fadd double %.3.ph.1.i, %i.pl
  %i.po = fcmp ogt double %i.pn, f0x3FF000000044B830
  %or.cond489.i = or i1 %i.pm, %i.po
  br i1 %or.cond489.i, label %.thread336.i, label %.thread347.thread.i

bb.z:                                             ; preds = %.preheader360.2.i
  %i.pp = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.ov
  %i.pq = load double, ptr %i.pp, align 8, !tbaa !125
  %i.pr = tail call double @llvm.fabs.f64(double %i.pq)
  %i.ps = fcmp ogt double %i.pr, 1.000000e-09
  br i1 %i.ps, label %.thread336.i, label %.thread347.thread.i

.thread347.thread.i:                              ; preds = %bb.z, %._crit_edge429.2.i
  %.sroa.0462.0.i = phi double [ %i.pl, %._crit_edge429.2.i ], [ 0.000000e+00, %bb.z ]
  %i.pt = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.ox
  store double %.sroa.0462.0.i, ptr %i.pt, align 8, !tbaa !125
  %i.pu = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.oc
  store double %.sroa.5463.0.i, ptr %i.pu, align 8, !tbaa !125
  %i.pv = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.ij
  store double %.sroa.9.0.i, ptr %i.pv, align 8, !tbaa !125
  %i.pw = load double, ptr %i.cd, align 8, !tbaa !125
  %i.px = fptrunc double %i.pw to float           ; 2 uses
  %.idx = mul i64 %.0290433.i, 24
  %i.py = getelementptr i8, ptr @__const._ZNK16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer5applyEPKvPvl.path_list, i64 %.idx ; 3 uses
  %i.pz = getelementptr inbounds nuw i8, ptr %i.py, i64 16
  %i.qa = load i64, ptr %i.pz, align 8, !tbaa !117
  %i.qb = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.qa
  store float %i.px, ptr %i.qb, align 4, !tbaa !102
  %i.qc = load double, ptr %i.h, align 16, !tbaa !125
  %i.qd = getelementptr i8, ptr %i.py, i64 8
  %i.qe = fpext float %i.px to double
  %i.qf = fadd double %i.qc, %i.qe
  %i.qg = fptrunc double %i.qf to float           ; 2 uses
  %i.qh = load i64, ptr %i.qd, align 8, !tbaa !117
  %i.qi = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.qh
  store float %i.qg, ptr %i.qi, align 4, !tbaa !102
  %i.qj = load double, ptr %i.ce, align 16, !tbaa !125
  %i.qk = fpext float %i.qg to double
  %i.ql = fadd double %i.qj, %i.qk
  %i.qm = fptrunc double %i.ql to float
  %i.qn = load i64, ptr %i.py, align 8, !tbaa !117
  %i.qo = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.qn
  store float %i.qm, ptr %i.qo, align 4, !tbaa !102
  %.pre = load float, ptr %i.r, align 4, !tbaa !102
  %.pre208 = load float, ptr %4, align 4, !tbaa !102
  %.pre209 = load float, ptr %i.bq, align 4, !tbaa !102
  br label %.thread

.thread336.i:                                     ; preds = %bb.z, %._crit_edge429.2.i, %bb.y, %._crit_edge429.1.i, %._crit_edge429.i, %bb.w, %._crit_edge424.i
  %.7.ph.i = phi i64 [ %.0255436.i, %._crit_edge424.i ], [ 1, %bb.z ], [ 1, %bb.w ], [ 1, %._crit_edge429.2.i ], [ 1, %bb.y ], [ 1, %._crit_edge429.i ], [ 1, %._crit_edge429.1.i ] ; 2 uses
  %i.qp = add nuw nsw i64 %.0290433.i, 1          ; 2 uses
  %exitcond458.not.i = icmp eq i64 %i.qp, 8
  br i1 %exitcond458.not.i, label %.thread347.i, label %bb.i, !llvm.loop !132

.thread347.i:                                     ; preds = %.thread336.i
  %i.qq = icmp eq i64 %.7.ph.i, 0
  br i1 %i.qq, label %.thread, label %select.unfold

.thread:                                          ; preds = %.thread347.i, %.thread347.thread.i
  %8 = phi float [ %.pre209, %.thread347.thread.i ], [ %5, %.thread347.i ]
  %9 = phi float [ %.pre208, %.thread347.thread.i ], [ %6, %.thread347.i ]
  %i.qr = phi float [ %.pre, %.thread347.thread.i ], [ %i.dg, %.thread347.i ]
  %10 = uitofp i64 %.0. to float
  %11 = fadd float %i.qr, %10                     ; 2 uses
  store float %11, ptr %i.r, align 4, !tbaa !102
  %12 = uitofp i64 %.8. to float
  %13 = fadd float %9, %12                        ; 2 uses
  store float %13, ptr %4, align 4, !tbaa !102
  %i.qs = uitofp i64 %.16. to float
  %i.qt = fadd float %8, %i.qs                    ; 2 uses
  store float %i.qt, ptr %i.bq, align 4, !tbaa !102
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %.loopexit

bb.aa:                                            ; preds = %bb.h
  %i.qu = getelementptr inbounds nuw i8, ptr %i.dt, i64 88
  %i.qv = load ptr, ptr %i.qu, align 8, !tbaa !110
  %i.qw = getelementptr inbounds nuw [8 x i8], ptr %i.qv, i64 %i.ds
  %i.qx = load i64, ptr %i.qw, align 8, !tbaa !117
  %i.qy = shl i64 %.1169, 32
  %sext = add i64 %i.qy, 4294967296
  %i.qz = ashr exact i64 %sext, 32                ; 4 uses
  %i.ra = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.qz
  store i64 %i.qx, ptr %i.ra, align 8, !tbaa !117
  %i.rb = getelementptr inbounds nuw i8, ptr %i.dt, i64 64
  %i.rc = load ptr, ptr %i.rb, align 8, !tbaa !110
  %i.rd = getelementptr inbounds nuw [8 x i8], ptr %i.rc, i64 %i.ds
  %i.re = load i64, ptr %i.rd, align 8, !tbaa !117
  %i.rf = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.qz
  store i64 %i.re, ptr %i.rf, align 8, !tbaa !117
  %i.rg = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.qz
  store i64 0, ptr %i.rg, align 8, !tbaa !117
  br label %bb.ab

.critedge:                                        ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f
  %i.rh = add nuw i64 %.1169.a, 1
  store i64 %i.rh, ptr %7, align 8, !tbaa !117
  %i.ri = add i64 %i.ds, 1
  store i64 %i.ri, ptr %i.dr, align 8, !tbaa !117
  br label %bb.ab

select.unfold:                                    ; preds = %.thread347.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %bb.ab

bb.ab:                                            ; preds = %select.unfold, %bb.g, %bb.aa, %.critedge
  %.16.203 = phi i64 [ %.16., %select.unfold ], [ %.16.204, %bb.aa ], [ %.16.204, %bb.g ], [ %.16.204, %.critedge ] ; 2 uses
  %.8.198 = phi i64 [ %.8., %select.unfold ], [ %i.dq, %bb.aa ], [ %i.dq, %bb.g ], [ %i.dq, %.critedge ] ; 2 uses
  %.4.a = phi i64 [ %.0., %select.unfold ], [ %.0.194, %bb.aa ], [ %.0.194, %bb.g ], [ %.0.194, %.critedge ] ; 2 uses
  %.4 = phi i64 [ %i.bo, %select.unfold ], [ %i.qz, %bb.aa ], [ %.1169, %bb.g ], [ %.1169, %.critedge ] ; 4 uses
  %i.rj = getelementptr inbounds [8 x i8], ptr %i.n, i64 %.4 ; 2 uses
  %i.rk = load i64, ptr %i.rj, align 8, !tbaa !117 ; 2 uses
  %i.rl = getelementptr inbounds [8 x i8], ptr %i.o, i64 %.4
  %i.rm = load i64, ptr %i.rl, align 8, !tbaa !117
  %i.rn = icmp ult i64 %i.rk, %i.rm
  br i1 %i.rn, label %bb.b, label %.loopexit

.loopexit:                                        ; preds = %bb.ab, %.preheader149, %.thread
  %14 = phi float [ %i.qt, %.thread ], [ %5, %.preheader149 ], [ %5, %bb.ab ] ; 2 uses
  %15 = phi float [ %13, %.thread ], [ %6, %.preheader149 ], [ %6, %bb.ab ] ; 2 uses
  %i.ro = phi float [ %11, %.thread ], [ %i.dg, %.preheader149 ], [ %i.dg, %bb.ab ] ; 2 uses
  %.16.206 = phi i64 [ %.16., %.thread ], [ %.16.205, %.preheader149 ], [ %.16.203, %bb.ab ]
  %.5.a = phi i64 [ %.8., %.thread ], [ %.0110171.a, %.preheader149 ], [ %.8.198, %bb.ab ]
  %.0.196 = phi i64 [ %.0., %.thread ], [ %.0.195, %.preheader149 ], [ %.4.a, %bb.ab ]
  %.5 = phi i64 [ 0, %.thread ], [ %.0110171, %.preheader149 ], [ %.4, %bb.ab ] ; 2 uses
  %i.rp = add nsw i64 %.5, -1
  %16 = fadd float %i.ro, -1.000000e+00           ; 2 uses
  %17 = fcmp ogt float %16, 0.000000e+00
  %.sroa.speculated2.i135 = select i1 %17, float %16, float 0.000000e+00 ; 2 uses
  %18 = fcmp ogt float %.sroa.speculated2.i135, %i.av
  %.sroa.speculated.i136 = select i1 %18, float %i.av, float %.sroa.speculated2.i135
  %19 = load float, ptr %i.bp, align 8, !tbaa !68
  %20 = fmul float %19, %.sroa.speculated.i136
  store float %20, ptr %.0111173, align 4, !tbaa !102
  %21 = fadd float %15, -1.000000e+00             ; 2 uses
  %22 = fcmp ogt float %21, 0.000000e+00
  %.sroa.speculated2.i137 = select i1 %22, float %21, float 0.000000e+00 ; 2 uses
  %23 = fcmp ogt float %.sroa.speculated2.i137, %i.av
  %.sroa.speculated.i138 = select i1 %23, float %i.av, float %.sroa.speculated2.i137
  %i.rq = load float, ptr %i.bp, align 8, !tbaa !68
  %i.rr = fmul float %i.rq, %.sroa.speculated.i138
  store float %i.rr, ptr %i.cy, align 4, !tbaa !102
  %i.rs = fadd float %14, -1.000000e+00           ; 2 uses
  %i.rt = fcmp ogt float %i.rs, 0.000000e+00
  %.sroa.speculated2.i139 = select i1 %i.rt, float %i.rs, float 0.000000e+00 ; 2 uses
  %i.ru = fcmp ogt float %.sroa.speculated2.i139, %i.av
  %.sroa.speculated.i140 = select i1 %i.ru, float %i.av, float %.sroa.speculated2.i139
  %i.rv = load float, ptr %i.bp, align 8, !tbaa !68
  %i.rw = fmul float %i.rv, %.sroa.speculated.i140
  store float %i.rw, ptr %i.cz, align 4, !tbaa !102
  %i.rx = load float, ptr %i.da, align 4, !tbaa !102
  store float %i.rx, ptr %i.db, align 4, !tbaa !102
  %i.ry = icmp sgt i64 %.5, 0
  br i1 %i.ry, label %.preheader149, label %bb.ac, !llvm.loop !133

bb.ac:                                            ; preds = %.loopexit
  %i.rz = getelementptr inbounds nuw i8, ptr %.0109174, i64 16
  %i.sa = getelementptr inbounds nuw i8, ptr %.0111173, i64 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  %i.sb = add nuw nsw i64 %.0112172, 1            ; 2 uses
  %exitcond189.not = icmp eq i64 %i.sb, %3
  br i1 %exitcond189.not, label %._crit_edge176, label %bb.a, !llvm.loop !134
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer10updateDataERSt10shared_ptrIKNS_11Lut3DOpDataEE(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [8 x i64], align 16               ; 12 uses
  %i.b = alloca [4 x float], align 16             ; 10 uses
  %i.c = alloca [4 x float], align 16             ; 10 uses
  %i.d = alloca [16 x i64], align 16              ; 24 uses
  %.sroa.06.i.i20.i.i.i.i = alloca [3 x i64], align 8 ; 4 uses
  %2 = alloca %"struct.OpenColorIO_v2_5::(anonymous namespace)::InvLut3DRenderer::baseInd", align 8 ; 4 uses
  %.sroa.06.i.i9.i.i.i.i = alloca [3 x i64], align 8 ; 4 uses
  %.sroa.06.i.i.i.i.i.i = alloca [3 x i64], align 8 ; 4 uses
  %3 = alloca %"struct.OpenColorIO_v2_5::(anonymous namespace)::InvLut3DRenderer::baseInd", align 8 ; 4 uses
  %4 = alloca %"class.OpenColorIO_v2_5::Lut3DOpData::Lut3DArray", align 8 ; 15 uses
  %i.e = alloca [3 x float], align 4              ; 5 uses
  %i.f = alloca [3 x float], align 8              ; 8 uses
  %i.g = alloca [3 x float], align 8              ; 8 uses
  %i.h = alloca [3 x float], align 8              ; 8 uses
  %i.i = alloca [3 x float], align 8              ; 8 uses
  %i.j = alloca [3 x float], align 8              ; 8 uses
  %i.k = alloca [3 x float], align 8              ; 8 uses
  %i.l = alloca [3 x float], align 8              ; 8 uses
  %i.m = load ptr, ptr %1, align 8, !tbaa !7
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 176 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !51
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = tail call noundef i64 %i.q(ptr noundef nonnull align 8 dereferenceable(48) %i.n), !inline_history !135 ; 28 uses
  %i.s = add i64 %i.r, 2
  %i.t = load ptr, ptr %1, align 8, !tbaa !7
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 176 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @_ZN16OpenColorIO_v2_511Lut3DOpData10Lut3DArrayC1Em(ptr noundef nonnull align 8 dereferenceable(48) %4, i64 noundef %i.s)
  %.not.i = icmp eq i64 %i.r, 0
  br i1 %.not.i, label %._crit_edge.i, label %.preheader221.i

.preheader221.i:                                  ; preds = %bb.a, %bb.b
  %.0224.i = phi i64 [ %i.v, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.v = add nuw i64 %.0224.i, 1                  ; 3 uses
  br label %.preheader220.i

.preheader218.lr.ph.i:                            ; preds = %bb.b
  %i.w = add i64 %i.r, 1                          ; 12 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.y = add i64 %i.r, -1                         ; 12 uses
  br label %.preheader218.i

.preheader220.i:                                  ; preds = %bb.c, %.preheader221.i
  %.0170223.i = phi i64 [ 0, %.preheader221.i ], [ %i.z, %bb.c ] ; 2 uses
  %i.z = add nuw i64 %.0170223.i, 1               ; 3 uses
  br label %bb.d

bb.b:                                             ; preds = %bb.c
  %exitcond254.not.i = icmp eq i64 %i.v, %i.r
  br i1 %exitcond254.not.i, label %.preheader218.lr.ph.i, label %.preheader221.i, !llvm.loop !136

bb.c:                                             ; preds = %bb.f
  %exitcond253.not.i = icmp eq i64 %i.z, %i.r
  br i1 %exitcond253.not.i, label %bb.b, label %.preheader220.i, !llvm.loop !137

bb.d:                                             ; preds = %bb.f, %.preheader220.i
  %.0174222.i = phi i64 [ 0, %.preheader220.i ], [ %i.aa, %bb.f ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #25
  invoke void @_ZNK16OpenColorIO_v2_511Lut3DOpData10Lut3DArray6getRGBElllPf(ptr noundef nonnull align 8 dereferenceable(48) %i.u, i64 noundef %.0224.i, i64 noundef %.0170223.i, i64 noundef %.0174222.i, ptr noundef nonnull %i.e)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.aa = add nuw i64 %.0174222.i, 1              ; 3 uses
  invoke void @_ZN16OpenColorIO_v2_511Lut3DOpData10Lut3DArray6setRGBElllPf(ptr noundef nonnull align 8 dereferenceable(48) %4, i64 noundef %i.v, i64 noundef %i.z, i64 noundef %i.aa, ptr noundef nonnull %i.e)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #25
  %exitcond.not.i = icmp eq i64 %i.aa, %i.r
  br i1 %exitcond.not.i, label %bb.c, label %bb.d, !llvm.loop !138

bb.g:                                             ; preds = %bb.e, %bb.d
  %i.ab = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #25
  br label %bb.ay

.preheader218.i:                                  ; preds = %bb.h, %.preheader218.lr.ph.i
  %.0181227.i = phi i64 [ 0, %.preheader218.lr.ph.i ], [ %i.ac, %bb.h ] ; 2 uses
  %i.ac = add nuw i64 %.0181227.i, 1              ; 3 uses
  br label %.preheader217.i

.preheader215.lr.ph.i:                            ; preds = %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  br label %.preheader215.i

.preheader217.i:                                  ; preds = %bb.i, %.preheader218.i
  %.0185226.i = phi i64 [ 0, %.preheader218.i ], [ %i.ae, %bb.i ] ; 2 uses
  %i.ae = add nuw i64 %.0185226.i, 1              ; 3 uses
  br label %bb.j

bb.h:                                             ; preds = %bb.i
  %exitcond256.not.i = icmp eq i64 %i.ac, %i.r
  br i1 %exitcond256.not.i, label %.preheader215.lr.ph.i, label %.preheader218.i, !llvm.loop !139

bb.i:                                             ; preds = %bb.l
  %exitcond255.not.i = icmp eq i64 %i.ae, %i.r
  br i1 %exitcond255.not.i, label %bb.h, label %.preheader217.i, !llvm.loop !140

bb.j:                                             ; preds = %bb.l, %.preheader217.i
  %.0186225.i = phi i64 [ 0, %.preheader217.i ], [ %i.an, %bb.l ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #25
  invoke void @_ZNK16OpenColorIO_v2_511Lut3DOpData10Lut3DArray6getRGBElllPf(ptr noundef nonnull align 8 dereferenceable(48) %i.u, i64 noundef %.0181227.i, i64 noundef %.0185226.i, i64 noundef %.0186225.i, ptr noundef nonnull %i.f)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.af = icmp eq i64 %.0186225.i, 0
  %i.ag = select i1 %i.af, i64 0, i64 %i.w
  %i.ah = load <2 x float>, ptr %i.f, align 8, !tbaa !102
  %i.ai = fadd <2 x float> %i.ah, splat (float -5.000000e-01)
  %i.aj = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ai, <2 x float> splat (float 4.000000e+00), <2 x float> splat (float 5.000000e-01))
  store <2 x float> %i.aj, ptr %i.f, align 8, !tbaa !102
  %i.ak = load float, ptr %i.x, align 8, !tbaa !102
  %i.al = fadd float %i.ak, -5.000000e-01
  %i.am = call float @llvm.fmuladd.f32(float %i.al, float 4.000000e+00, float 5.000000e-01)
  store float %i.am, ptr %i.x, align 8, !tbaa !102
  invoke void @_ZN16OpenColorIO_v2_511Lut3DOpData10Lut3DArray6setRGBElllPf(ptr noundef nonnull align 8 dereferenceable(48) %4, i64 noundef %i.ac, i64 noundef %i.ae, i64 noundef %i.ag, ptr noundef nonnull %i.f)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #25
  %i.an = add i64 %.0186225.i, %i.y               ; 2 uses
  %i.ao = icmp ult i64 %i.an, %i.r
  br i1 %i.ao, label %bb.j, label %bb.i, !llvm.loop !141

bb.m:                                             ; preds = %bb.k, %bb.j
  %i.ap = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #25
  br label %bb.ay

.preheader215.i:                                  ; preds = %bb.n, %.preheader215.lr.ph.i
  %.0190230.i = phi i64 [ 0, %.preheader215.lr.ph.i ], [ %i.aq, %bb.n ] ; 2 uses
  %i.aq = add nuw i64 %.0190230.i, 1              ; 3 uses
  br label %.preheader214.i

.preheader212.lr.ph.i:                            ; preds = %bb.n
  %i.ar = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  br label %.preheader212.i

.preheader214.i:                                  ; preds = %bb.o, %.preheader215.i
  %.0194229.i = phi i64 [ 0, %.preheader215.i ], [ %i.au, %bb.o ] ; 3 uses
  %i.as = icmp eq i64 %.0194229.i, 0
  %i.at = select i1 %i.as, i64 0, i64 %i.w
  br label %bb.p

bb.n:                                             ; preds = %bb.o
  %exitcond258.not.i = icmp eq i64 %i.aq, %i.r
  br i1 %exitcond258.not.i, label %.preheader212.lr.ph.i, label %.preheader215.i, !llvm.loop !142

bb.o:                                             ; preds = %bb.r
  %i.au = add i64 %.0194229.i, %i.y               ; 2 uses
  %i.av = icmp ult i64 %i.au, %i.r
  br i1 %i.av, label %.preheader214.i, label %bb.n, !llvm.loop !143

bb.p:                                             ; preds = %bb.r, %.preheader214.i
  %.0195228.i = phi i64 [ 0, %.preheader214.i ], [ %i.aw, %bb.r ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #25
  invoke void @_ZNK16OpenColorIO_v2_511Lut3DOpData10Lut3DArray6getRGBElllPf(ptr noundef nonnull align 8 dereferenceable(48) %i.u, i64 noundef %.0190230.i, i64 noundef %.0194229.i, i64 noundef %.0195228.i, ptr noundef nonnull %i.g)
          to label %bb.q unwind label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.aw = add nuw i64 %.0195228.i, 1              ; 3 uses
  %i.ax = load <2 x float>, ptr %i.g, align 8, !tbaa !102
  %i.ay = fadd <2 x float> %i.ax, splat (float -5.000000e-01)
  %i.az = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ay, <2 x float> splat (float 4.000000e+00), <2 x float> splat (float 5.000000e-01))
  store <2 x float> %i.az, ptr %i.g, align 8, !tbaa !102
  %i.ba = load float, ptr %i.ad, align 8, !tbaa !102
  %i.bb = fadd float %i.ba, -5.000000e-01
  %i.bc = call float @llvm.fmuladd.f32(float %i.bb, float 4.000000e+00, float 5.000000e-01)
  store float %i.bc, ptr %i.ad, align 8, !tbaa !102
  invoke void @_ZN16OpenColorIO_v2_511Lut3DOpData10Lut3DArray6setRGBElllPf(ptr noundef nonnull align 8 dereferenceable(48) %4, i64 noundef %i.aq, i64 noundef %i.at, i64 noundef %i.aw, ptr noundef nonnull %i.g)
          to label %bb.r unwind label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #25
  %exitcond257.not.i = icmp eq i64 %i.aw, %i.r
  br i1 %exitcond257.not.i, label %bb.o, label %bb.p, !llvm.loop !144

bb.s:                                             ; preds = %bb.q, %bb.p
  %i.bd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #25
  br label %bb.ay
end_hunk_1
