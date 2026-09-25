Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/GCBase?download=true
inline.NumInlined: 1712
inline.NumDeleted: 796
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN6hermes2vm6GCBase18runtimeWillExecuteEv:bb.a
  store i8 1, ptr %i.d, align 1, !tbaa !74
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind
declare i64 @_ZNSt6chrono3_V212steady_clock3nowEv() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

declare i64 @_ZN6hermes8oscompat15thread_cpu_timeEv() local_unnamed_addr #2

declare noundef zeroext i1 @_ZN6hermes8oscompat20num_context_switchesERlS1_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes2vm6GCBase13checkTripwireEm(ptr noundef nonnull align 8 dereferenceable(717) %0, i64 noundef %1) local_unnamed_addr #1 align 2 {
bb.a:
  %2 = alloca %class.Ctx, align 8                 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 696
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !68
  %.not.i.i.not = icmp eq ptr %i.c, null
  br i1 %.not.i.i.not, label %bb.d, label %bb.b, !prof !100

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.e = load i32, ptr %i.d, align 8, !tbaa !91
  %i.f = zext i32 %i.e to i64
  %i.g = icmp ult i64 %1, %i.f
  br i1 %i.g, label %bb.d, label %bb.c, !prof !100

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 716 ; 2 uses
  %i.i = load i8, ptr %i.h, align 4, !tbaa !92, !range !69, !noundef !70
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.d, label %_ZNKSt8functionIFvRN6hermes2vm17GCTripwireContextEEEclES3_.exit

_ZNKSt8functionIFvRN6hermes2vm17GCTripwireContextEEEclES3_.exit: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVZN6hermes2vm6GCBase13checkTripwireEmE3Ctx, i64 16), ptr %2, align 8, !tbaa !14
  store i8 1, ptr %i.h, align 4, !tbaa !92
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !246
  call void %i.l(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %2) #31, !inline_history !245
  call void @_ZN6hermes2vm17GCTripwireContextD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c, %_ZNKSt8functionIFvRN6hermes2vm17GCTripwireContextEEEclES3_.exit
  ret void
}

; Function Attrs: nounwind
declare void @_ZN6hermes2vm17GCTripwireContextD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes2vm6GCBase22printAllCollectedStatsERN4llvh11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(717) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %2 = alloca %"class.hermes::JSONEmitter", align 8 ; 13 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = load i8, ptr %i.a, align 8, !tbaa !71, !range !69, !noundef !70
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !14
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(717) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, i1 noundef zeroext false) #31
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !103
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 6 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !104  ; 2 uses
  %i.k = ptrtoint ptr %i.h to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = icmp ult i64 %i.m, 10
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.o = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull @.str, i64 noundef 10) #31 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.j, ptr noundef nonnull align 1 dereferenceable(10) @.str, i64 10, i1 false)
  %i.p = load ptr, ptr %i.i, align 8, !tbaa !104
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 10
  store ptr %i.q, ptr %i.i, align 8, !tbaa !104
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit

_ZN4llvh11raw_ostreamlsEPKc.exit:                 ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.r, ptr %2, align 8, !tbaa !106
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 0, ptr %i.s, align 8, !tbaa !107
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 8, ptr %i.t, align 4, !tbaa !108
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 56
  store ptr %1, ptr %i.u, align 8, !tbaa !248
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i8 1, ptr %i.v, align 8, !tbaa !255
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 68
  store i32 0, ptr %i.w, align 4, !tbaa !256
  call void @_ZN6hermes11JSONEmitter8openDictEv(ptr noundef nonnull align 8 dereferenceable(72) %2) #31
  %i.x = load ptr, ptr %0, align 8, !tbaa !14
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 152
  %i.z = load ptr, ptr %i.y, align 8
  call void %i.z(ptr noundef nonnull align 8 dereferenceable(717) %0, ptr noundef nonnull align 8 dereferenceable(72) %2) #31
  call void @_ZN6hermes11JSONEmitter9closeDictEv(ptr noundef nonnull align 8 dereferenceable(72) %2) #31
  %i.aa = load ptr, ptr %i.g, align 8, !tbaa !103
  %i.ab = load ptr, ptr %i.i, align 8, !tbaa !104 ; 2 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit
  %i.ad = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull @.str.1, i64 noundef 1) #31 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit7

bb.f:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit
  store i8 10, ptr %i.ab, align 1
  %i.ae = load ptr, ptr %i.i, align 8, !tbaa !104
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 1
  store ptr %i.af, ptr %i.i, align 8, !tbaa !104
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit7

_ZN4llvh11raw_ostreamlsEPKc.exit7:                ; preds = %bb.e, %bb.f
  %i.ag = load ptr, ptr %2, align 8, !tbaa !106   ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.r
  br i1 %i.ah, label %_ZN6hermes11JSONEmitterD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit7
  call void @free(ptr noundef %i.ag) #31
  br label %_ZN6hermes11JSONEmitterD2Ev.exit

_ZN6hermes11JSONEmitterD2Ev.exit:                 ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit7, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %_ZN6hermes11JSONEmitterD2Ev.exit
  ret void
}

declare void @_ZN6hermes11JSONEmitter8openDictEv(ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #2

declare void @_ZN6hermes11JSONEmitter9closeDictEv(ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN6hermes2vm6GCBase11getHeapInfoERNS1_8HeapInfoE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(717) %0, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(544) initializes((0, 4), (64, 224)) %1) unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !257
  store i32 %i.b, ptr %1, align 8, !tbaa !110
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.c, ptr noundef nonnull align 8 dereferenceable(160) %i.a, i64 160, i1 false), !tbaa.struct !258
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN6hermes2vm6GCBase25getHeapInfoWithMallocSizeERNS1_8HeapInfoE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(717) %0, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(544) initializes((32, 36)) %1) unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.b = load i64, ptr %i.a, align 8, !tbaa !112
  %.tr2 = trunc i64 %i.b to i32
  %.tr = shl i32 %.tr2, 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i32 %.tr, ptr %i.c, align 8, !tbaa !259
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden void @_ZN6hermes2vm6GCBase4dumpERN4llvh11raw_ostreamEb(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, i1 zeroext %2) unnamed_addr #5 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes2vm6GCBase10printStatsERNS_11JSONEmitterE(ptr noundef nonnull align 8 dereferenceable(717) %0, ptr noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #1 align 2 {
bb.a:
  %2 = alloca %"struct.hermes::vm::GCBase::HeapInfo", align 8 ; 30 uses
  %i.a = alloca i64, align 8                      ; 7 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  tail call void @_ZN6hermes11JSONEmitter7emitKeyEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr nonnull @.str.2, i64 4) #31
  tail call void @_ZN6hermes11JSONEmitter9emitValueEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr nonnull @.str.3, i64 6) #31
  tail call void @_ZN6hermes11JSONEmitter7emitKeyEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr nonnull @.str.4, i64 7) #31
  tail call void @_ZN6hermes11JSONEmitter9emitValueEi(ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef 0) #31
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !99, !nonnull !70, !align !97 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !14
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 8 dereferenceable(72) %1) #31
  %i.h = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #31
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 136
  %.sroa.0.0.copyload.i2.i = load i64, ptr %i.i, align 8, !tbaa !80
  %i.j = sub nsw i64 %i.h, %.sroa.0.0.copyload.i2.i
  %i.k = tail call i64 @_ZN6hermes8oscompat15thread_cpu_timeEv() #31
  %i.l = sitofp i64 %i.k to double
  %i.m = sitofp i64 %i.j to double
  %i.n = insertelement <2 x double> poison, double %i.m, i64 0
  %i.o = insertelement <2 x double> %i.n, double %i.l, i64 1
  %i.p = fdiv <2 x double> %i.o, <double 1.000000e+09, double 1.000000e+06> ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.r = load i64, ptr %i.q, align 8, !tbaa !260
  %i.s = sitofp i64 %i.r to double
  %i.t = fdiv double %i.s, 1.000000e+06
  %i.u = extractelement <2 x double> %i.p, i64 1
  %i.v = fsub double %i.u, %i.t
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i32 0, ptr %i.x, align 8, !tbaa !113
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 72
  store i32 0, ptr %i.y, align 8, !tbaa !75
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 160
  store i32 0, ptr %i.ab, align 8, !tbaa !76
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 168
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 200
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.z, i8 0, i64 36, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.aa, i8 0, i64 36, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.ac, i8 0, i64 28, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 232
  store i32 0, ptr %i.ae, align 8, !tbaa !75
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 240
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 280
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 320
  store i32 0, ptr %i.ah, align 8, !tbaa !76
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 328
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 360
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.af, i8 0, i64 36, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.ag, i8 0, i64 36, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.ai, i8 0, i64 28, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 392
  store i32 0, ptr %i.ak, align 8, !tbaa !75
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 400
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 440
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 480
  store i32 0, ptr %i.an, align 8, !tbaa !76
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 488
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 520
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, i8 0, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.al, i8 0, i64 36, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.am, i8 0, i64 36, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.ao, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(544) %2, i8 0, i64 36, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.w, i8 0, i64 20, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.ad, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.aj, i8 0, i64 28, i1 false)
  %i.aq = load ptr, ptr %0, align 8, !tbaa !14
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 56
  %i.as = load ptr, ptr %i.ar, align 8
  call void %i.as(ptr noundef nonnull align 8 dereferenceable(717) %0, ptr noundef nonnull align 8 dereferenceable(544) %2) #31
  %i.at = load ptr, ptr %0, align 8, !tbaa !14
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 48
  %i.av = load ptr, ptr %i.au, align 8
  call void %i.av(ptr noundef nonnull align 8 dereferenceable(717) %0, ptr noundef nonnull align 8 dereferenceable(544) %2) #31
  call void @_ZN6hermes11JSONEmitter7emitKeyEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr nonnull @.str.5, i64 8) #31
  call void @_ZN6hermes11JSONEmitter8openDictEv(ptr noundef nonnull align 8 dereferenceable(72) %1) #31
  %i.aw = call noundef i64 @_ZN6hermes8oscompat8peak_rssEv() #31
  call void @_ZN6hermes11JSONEmitter7emitKeyEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr nonnull @.str.6, i64 8) #31
  call void @_ZN6hermes11JSONEmitter9emitValueEm(ptr noundef nonnull align 8 dereferenceable(72) %1, i64 noundef %i.aw) #31
  %i.ax = call noundef i64 @_ZN6hermes8oscompat11current_rssEv() #31
  call void @_ZN6hermes11JSONEmitter7emitKeyEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr nonnull @.str.7, i64 11) #31
  call void @_ZN6hermes11JSONEmitter9emitValueEm(ptr noundef nonnull align 8 dereferenceable(72) %1, i64 noundef %i.ax) #31
  %i.ay = call noundef i64 @_ZN6hermes8oscompat21current_private_dirtyEv() #31
  call void @_ZN6hermes11JSONEmitter7emitKeyEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr nonnull @.str.8, i64 13) #31
  call void @_ZN6hermes11JSONEmitter9emitValueEm(ptr noundef nonnull align 8 dereferenceable(72) %1, i64 noundef %i.ay) #31
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @_ZN6hermes11JSONEmitter7emitKeyEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr nonnull @.str.9, i64 9) #31
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !80
  call void @_ZN6hermes11JSONEmitter9emitValueEm(ptr noundef nonnull align 8 dereferenceable(72) %1, i64 noundef %i.ba) #31
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @_ZN6hermes11JSONEmitter7emitKeyEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr nonnull @.str.10, i64 15) #31
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !80
  call void @_ZN6hermes11JSONEmitter9emitValueEm(ptr noundef nonnull align 8 dereferenceable(72) %1, i64 noundef %i.bc) #31
  call void @_ZN6hermes11JSONEmitter7emitKeyEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr nonnull @.str.11, i64 15) #31
  %i.bd = load i32, ptr %2, align 8, !tbaa !12
  call void @_ZN6hermes11JSONEmitter9emitValueEj(ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %i.bd) #31
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @_ZN6hermes11JSONEmitter7emitKeyEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr nonnull @.str.12, i64 11) #31
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !12
  call void @_ZN6hermes11JSONEmitter9emitValueEj(ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %i.bf) #31
  call void @_ZN6hermes11JSONEmitter9closeDictEv(ptr noundef nonnull align 8 dereferenceable(72) %1) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  store i64 -1, ptr %i.a, align 8, !tbaa !80
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #31
  store i64 -1, ptr %i.b, align 8, !tbaa !80
  %i.bg = call noundef zeroext i1 @_ZN6hermes8oscompat20num_context_switchesERlS1_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b) #31
  br i1 %i.bg, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !261
  %i.bj = load i64, ptr %i.a, align 8, !tbaa !80
  %i.bk = sub nsw i64 %i.bj, %i.bi
  store i64 %i.bk, ptr %i.a, align 8, !tbaa !80
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !262
  %i.bn = load i64, ptr %i.b, align 8, !tbaa !80
  %i.bo = sub nsw i64 %i.bn, %i.bm
  store i64 %i.bo, ptr %i.b, align 8, !tbaa !80
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @_ZN6hermes11JSONEmitter7emitKeyEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr nonnull @.str.13, i64 7) #31
  call void @_ZN6hermes11JSONEmitter8openDictEv(ptr noundef nonnull align 8 dereferenceable(72) %1) #31
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 168
  call void @_ZN6hermes11JSONEmitter7emitKeyEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr nonnull @.str.14, i64 14) #31
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !12
  call void @_ZN6hermes11JSONEmitter9emitValueEj(ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %i.bq) #31
  call void @_ZN6hermes11JSONEmitter7emitKeyEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr nonnull @.str.15, i64 9) #31
  %i.br = extractelement <2 x double> %i.p, i64 0
  call void @_ZN6hermes11JSONEmitter9emitValueEd(ptr noundef nonnull align 8 dereferenceable(72) %1, double noundef %i.br) #31
  call void @_ZN6hermes11JSONEmitter7emitKeyEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr nonnull @.str.16, i64 12) #31
  call void @_ZN6hermes11JSONEmitter9emitValueEd(ptr noundef nonnull align 8 dereferenceable(72) %1, double noundef %i.v) #31
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !114
  call void @_ZN6hermes11JSONEmitter7emitKeyEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr nonnull @.str.17, i64 11) #31
  call void @_ZN6hermes11JSONEmitter9emitValueEd(ptr noundef nonnull align 8 dereferenceable(72) %1, double noundef %i.bu) #31
  call void @_ZN6hermes11JSONEmitter7emitKeyEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr nonnull @.str.18, i64 12) #31
  %i.bv = load i64, ptr %i.a, align 8, !tbaa !80
  call void @_ZN6hermes11JSONEmitter9emitValueEl(ptr noundef nonnull align 8 dereferenceable(72) %1, i64 noundef %i.bv) #31
  call void @_ZN6hermes11JSONEmitter7emitKeyEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr nonnull @.str.19, i64 14) #31
  %i.bw = load i64, ptr %i.b, align 8, !tbaa !80
  call void @_ZN6hermes11JSONEmitter9emitValueEl(ptr noundef nonnull align 8 dereferenceable(72) %1, i64 noundef %i.bw) #31
  %i.bx = load i32, ptr %i.bs, align 8, !tbaa !75 ; 2 uses
  %i.by = icmp eq i32 %i.bx, 0
  %i.bz = load double, ptr %i.bt, align 8
  %i.ca = uitofp i32 %i.bx to double
  %i.cb = fdiv double %i.bz, %i.ca
  %i.cc = select i1 %i.by, double 0.000000e+00, double %i.cb
  call void @_ZN6hermes11JSONEmitter7emitKeyEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr nonnull @.str.20, i64 10) #31
  call void @_ZN6hermes11JSONEmitter9emitValueEd(ptr noundef nonnull align 8 dereferenceable(72) %1, double noundef %i.cc) #31
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !115
  call void @_ZN6hermes11JSONEmitter7emitKeyEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr nonnull @.str.21, i64 10) #31
  call void @_ZN6hermes11JSONEmitter9emitValueEd(ptr noundef nonnull align 8 dereferenceable(72) %1, double noundef %i.ce) #31
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !114
  call void @_ZN6hermes11JSONEmitter7emitKeyEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr nonnull @.str.22, i64 14) #31
  call void @_ZN6hermes11JSONEmitter9emitValueEd(ptr noundef nonnull align 8 dereferenceable(72) %1, double noundef %i.ch) #31
  %i.ci = load i32, ptr %i.cf, align 8, !tbaa !75 ; 2 uses
  %i.cj = icmp eq i32 %i.ci, 0
  %i.ck = load double, ptr %i.cg, align 8
  %i.cl = uitofp i32 %i.ci to double
  %i.cm = fdiv double %i.ck, %i.cl
  %i.cn = select i1 %i.cj, double 0.000000e+00, double %i.cm
  call void @_ZN6hermes11JSONEmitter7emitKeyEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr nonnull @.str.23, i64 13) #31
  call void @_ZN6hermes11JSONEmitter9emitValueEd(ptr noundef nonnull align 8 dereferenceable(72) %1, double noundef %i.cn) #31
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.cp = load double, ptr %i.co, align 8, !tbaa !115
  call void @_ZN6hermes11JSONEmitter7emitKeyEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr nonnull @.str.24, i64 13) #31
  call void @_ZN6hermes11JSONEmitter9emitValueEd(ptr noundef nonnull align 8 dereferenceable(72) %1, double noundef %i.cp) #31
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !263
  %i.cs = zext i32 %i.cr to i64
  call void @_ZN6hermes11JSONEmitter7emitKeyEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr nonnull @.str.25, i64 13) #31
  call void @_ZN6hermes11JSONEmitter9emitValueEm(ptr noundef nonnull align 8 dereferenceable(72) %1, i64 noundef %i.cs) #31
  %i.ct = load ptr, ptr %0, align 8, !tbaa !14
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 32
  %i.cv = load ptr, ptr %i.cu, align 8
  %i.cw = call noundef i64 %i.cv(ptr noundef nonnull align 8 dereferenceable(717) %0) #31
  call void @_ZN6hermes11JSONEmitter7emitKeyEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr nonnull @.str.26, i64 18) #31
  call void @_ZN6hermes11JSONEmitter9emitValueEm(ptr noundef nonnull align 8 dereferenceable(72) %1, i64 noundef %i.cw) #31
  %i.cx = load ptr, ptr %0, align 8, !tbaa !14
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 40
  %i.cz = load ptr, ptr %i.cy, align 8
  %i.da = call noundef i64 %i.cz(ptr noundef nonnull align 8 dereferenceable(717) %0) #31
  call void @_ZN6hermes11JSONEmitter7emitKeyEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr nonnull @.str.27, i64 15) #31
  call void @_ZN6hermes11JSONEmitter9emitValueEm(ptr noundef nonnull align 8 dereferenceable(72) %1, i64 noundef %i.da) #31
  %i.db = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !264
  call void @_ZN6hermes11JSONEmitter7emitKeyEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr nonnull @.str.28, i64 19) #31
  call void @_ZN6hermes11JSONEmitter9emitValueEm(ptr noundef nonnull align 8 dereferenceable(72) %1, i64 noundef %i.dc) #31
  call void @_ZN6hermes11JSONEmitter9closeDictEv(ptr noundef nonnull align 8 dereferenceable(72) %1) #31
  call void @_ZN6hermes11JSONEmitter7emitKeyEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr nonnull @.str.29, i64 11) #31
  call void @_ZN6hermes11JSONEmitter9openArrayEv(ptr noundef nonnull align 8 dereferenceable(72) %1) #31
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !265 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !265 ; 2 uses
  %.not187 = icmp eq ptr %i.de, %i.dg
  br i1 %.not187, label %._crit_edge191, label %.lr.ph190

._crit_edge191:                                   ; preds = %._crit_edge, %bb.c
  call void @_ZN6hermes11JSONEmitter10closeArrayEv(ptr noundef nonnull align 8 dereferenceable(72) %1) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  ret void

.lr.ph190:                                        ; preds = %bb.c, %._crit_edge
  %.sroa.0106.0188 = phi ptr [ %i.es, %._crit_edge ], [ %i.de, %bb.c ] ; 20 uses
  call void @_ZN6hermes11JSONEmitter8openDictEv(ptr noundef nonnull align 8 dereferenceable(72) %1) #31
  call void @_ZN6hermes11JSONEmitter7emitKeyEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr nonnull @.str.30, i64 18) #31
  %i.dh = load ptr, ptr %.sroa.0106.0188, align 8, !tbaa !78
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.0106.0188, i64 8
end_hunk_0
