inline.NumInlined: 1712
inline.NumDeleted: 796
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN6hermes2vm6GCBase18runtimeWillExecuteEv:bb.a
  %i.m = tail call noundef zeroext i1 @_ZN6hermes8oscompat20num_context_switchesERlS1_(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull align 8 dereferenceable(8) %i.l) #31 ; 0 uses
  store i8 1, ptr %i.d, align 1, !tbaa !82
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
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !69
  %.not.i.i.not = icmp eq ptr %i.c, null
  br i1 %.not.i.i.not, label %bb.d, label %bb.b, !prof !127

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.e = load i32, ptr %i.d, align 8, !tbaa !118
  %i.f = zext i32 %i.e to i64
  %i.g = icmp ult i64 %1, %i.f
  br i1 %i.g, label %bb.d, label %bb.c, !prof !127

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 716 ; 2 uses
  %i.i = load i8, ptr %i.h, align 4, !tbaa !119, !range !77, !noundef !78
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.d, label %_ZNKSt8functionIFvRN6hermes2vm17GCTripwireContextEEEclES3_.exit

_ZNKSt8functionIFvRN6hermes2vm17GCTripwireContextEEEclES3_.exit: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVZN6hermes2vm6GCBase13checkTripwireEmE3Ctx, i64 16), ptr %2, align 8, !tbaa !7
  store i8 1, ptr %i.h, align 4, !tbaa !119
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !128
  call void %i.l(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %2) #31, !inline_history !129
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
  %i.b = load i8, ptr %i.a, align 8, !tbaa !79, !range !77, !noundef !78
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !7
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(717) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, i1 noundef zeroext false) #31
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !130
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 6 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !133  ; 2 uses
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
  %i.p = load ptr, ptr %i.i, align 8, !tbaa !133
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 10
  store ptr %i.q, ptr %i.i, align 8, !tbaa !133
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit

_ZN4llvh11raw_ostreamlsEPKc.exit:                 ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.r, ptr %2, align 8, !tbaa !134
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 0, ptr %i.s, align 8, !tbaa !136
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 8, ptr %i.t, align 4, !tbaa !137
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 56
  store ptr %1, ptr %i.u, align 8, !tbaa !138
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i8 1, ptr %i.v, align 8, !tbaa !140
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 68
  store i32 0, ptr %i.w, align 4, !tbaa !147
  call void @_ZN6hermes11JSONEmitter8openDictEv(ptr noundef nonnull align 8 dereferenceable(72) %2) #31
  %i.x = load ptr, ptr %0, align 8, !tbaa !7
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 152
  %i.z = load ptr, ptr %i.y, align 8
  call void %i.z(ptr noundef nonnull align 8 dereferenceable(717) %0, ptr noundef nonnull align 8 dereferenceable(72) %2) #31
  call void @_ZN6hermes11JSONEmitter9closeDictEv(ptr noundef nonnull align 8 dereferenceable(72) %2) #31
  %i.aa = load ptr, ptr %i.g, align 8, !tbaa !130
  %i.ab = load ptr, ptr %i.i, align 8, !tbaa !133 ; 2 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit
  %i.ad = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull @.str.1, i64 noundef 1) #31 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit7

bb.f:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit
  store i8 10, ptr %i.ab, align 1
  %i.ae = load ptr, ptr %i.i, align 8, !tbaa !133
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 1
  store ptr %i.af, ptr %i.i, align 8, !tbaa !133
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit7

_ZN4llvh11raw_ostreamlsEPKc.exit7:                ; preds = %bb.e, %bb.f
  %i.ag = load ptr, ptr %2, align 8, !tbaa !134   ; 2 uses
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
  %i.b = load i32, ptr %i.a, align 8, !tbaa !148
  store i32 %i.b, ptr %1, align 8, !tbaa !149
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.c, ptr noundef nonnull align 8 dereferenceable(160) %i.a, i64 160, i1 false), !tbaa.struct !151
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN6hermes2vm6GCBase25getHeapInfoWithMallocSizeERNS1_8HeapInfoE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(717) %0, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(544) initializes((32, 36)) %1) unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.b = load i64, ptr %i.a, align 8, !tbaa !153
  %.tr2 = trunc i64 %i.b to i32
  %.tr = shl i32 %.tr2, 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i32 %.tr, ptr %i.c, align 8, !tbaa !154
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
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !126, !nonnull !78, !align !124 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 8 dereferenceable(72) %1) #31
  %i.h = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #31
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 136
  %.sroa.0.0.copyload.i2.i = load i64, ptr %i.i, align 8, !tbaa !91
  %i.j = sub nsw i64 %i.h, %.sroa.0.0.copyload.i2.i
  %i.k = sitofp i64 %i.j to double
  %3 = fdiv double %i.k, 1.000000e+09
  %4 = tail call i64 @_ZN6hermes8oscompat15thread_cpu_timeEv() #31
  %5 = sitofp i64 %4 to double
  %6 = fdiv double %5, 1.000000e+06
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.m = load i64, ptr %i.l, align 8, !tbaa !155
  %i.n = sitofp i64 %i.m to double
  %i.o = fdiv double %i.n, 1.000000e+06
  %i.p = fsub double %6, %i.o
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i32 0, ptr %i.r, align 8, !tbaa !156
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 72
  store i32 0, ptr %i.s, align 8, !tbaa !83
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 160
  store i32 0, ptr %i.v, align 8, !tbaa !84
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 168
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 200
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.t, i8 0, i64 36, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.u, i8 0, i64 36, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.w, i8 0, i64 28, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 232
  store i32 0, ptr %i.y, align 8, !tbaa !83
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 240
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 280
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 320
  store i32 0, ptr %i.ab, align 8, !tbaa !84
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 328
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 360
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.z, i8 0, i64 36, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.aa, i8 0, i64 36, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.ac, i8 0, i64 28, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 392
  store i32 0, ptr %i.ae, align 8, !tbaa !83
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 400
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 440
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 480
  store i32 0, ptr %i.ah, align 8, !tbaa !84
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 488
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 520
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, i8 0, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.af, i8 0, i64 36, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.ag, i8 0, i64 36, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.ai, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(544) %2, i8 0, i64 36, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.q, i8 0, i64 20, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.x, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.ad, i8 0, i64 28, i1 false)
  %i.ak = load ptr, ptr %0, align 8, !tbaa !7
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 56
  %i.am = load ptr, ptr %i.al, align 8
  call void %i.am(ptr noundef nonnull align 8 dereferenceable(717) %0, ptr noundef nonnull align 8 dereferenceable(544) %2) #31
  %i.an = load ptr, ptr %0, align 8, !tbaa !7
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 48
  %i.ap = load ptr, ptr %i.ao, align 8
  call void %i.ap(ptr noundef nonnull align 8 dereferenceable(717) %0, ptr noundef nonnull align 8 dereferenceable(544) %2) #31
  call void @_ZN6hermes11JSONEmitter7emitKeyEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr nonnull @.str.5, i64 8) #31
  call void @_ZN6hermes11JSONEmitter8openDictEv(ptr noundef nonnull align 8 dereferenceable(72) %1) #31
  %i.aq = call noundef i64 @_ZN6hermes8oscompat8peak_rssEv() #31
  call void @_ZN6hermes11JSONEmitter7emitKeyEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr nonnull @.str.6, i64 8) #31
  call void @_ZN6hermes11JSONEmitter9emitValueEm(ptr noundef nonnull align 8 dereferenceable(72) %1, i64 noundef %i.aq) #31
  %i.ar = call noundef i64 @_ZN6hermes8oscompat11current_rssEv() #31
  call void @_ZN6hermes11JSONEmitter7emitKeyEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr nonnull @.str.7, i64 11) #31
  call void @_ZN6hermes11JSONEmitter9emitValueEm(ptr noundef nonnull align 8 dereferenceable(72) %1, i64 noundef %i.ar) #31
  %i.as = call noundef i64 @_ZN6hermes8oscompat21current_private_dirtyEv() #31
  call void @_ZN6hermes11JSONEmitter7emitKeyEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr nonnull @.str.8, i64 13) #31
  call void @_ZN6hermes11JSONEmitter9emitValueEm(ptr noundef nonnull align 8 dereferenceable(72) %1, i64 noundef %i.as) #31
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @_ZN6hermes11JSONEmitter7emitKeyEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr nonnull @.str.9, i64 9) #31
  %i.au = load i64, ptr %i.at, align 8, !tbaa !91
  call void @_ZN6hermes11JSONEmitter9emitValueEm(ptr noundef nonnull align 8 dereferenceable(72) %1, i64 noundef %i.au) #31
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @_ZN6hermes11JSONEmitter7emitKeyEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr nonnull @.str.10, i64 15) #31
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !91
  call void @_ZN6hermes11JSONEmitter9emitValueEm(ptr noundef nonnull align 8 dereferenceable(72) %1, i64 noundef %i.aw) #31
  call void @_ZN6hermes11JSONEmitter7emitKeyEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr nonnull @.str.11, i64 15) #31
  %i.ax = load i32, ptr %2, align 8, !tbaa !3
  call void @_ZN6hermes11JSONEmitter9emitValueEj(ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %i.ax) #31
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @_ZN6hermes11JSONEmitter7emitKeyEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr nonnull @.str.12, i64 11) #31
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !3
  call void @_ZN6hermes11JSONEmitter9emitValueEj(ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %i.az) #31
  call void @_ZN6hermes11JSONEmitter9closeDictEv(ptr noundef nonnull align 8 dereferenceable(72) %1) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  store i64 -1, ptr %i.a, align 8, !tbaa !91
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #31
  store i64 -1, ptr %i.b, align 8, !tbaa !91
  %i.ba = call noundef zeroext i1 @_ZN6hermes8oscompat20num_context_switchesERlS1_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b) #31
  br i1 %i.ba, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !157
  %i.bd = load i64, ptr %i.a, align 8, !tbaa !91
  %i.be = sub nsw i64 %i.bd, %i.bc
  store i64 %i.be, ptr %i.a, align 8, !tbaa !91
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !158
  %i.bh = load i64, ptr %i.b, align 8, !tbaa !91
  %i.bi = sub nsw i64 %i.bh, %i.bg
  store i64 %i.bi, ptr %i.b, align 8, !tbaa !91
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @_ZN6hermes11JSONEmitter7emitKeyEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr nonnull @.str.13, i64 7) #31
  call void @_ZN6hermes11JSONEmitter8openDictEv(ptr noundef nonnull align 8 dereferenceable(72) %1) #31
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 168
  call void @_ZN6hermes11JSONEmitter7emitKeyEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr nonnull @.str.14, i64 14) #31
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !3
  call void @_ZN6hermes11JSONEmitter9emitValueEj(ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %i.bk) #31
  call void @_ZN6hermes11JSONEmitter7emitKeyEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr nonnull @.str.15, i64 9) #31
  call void @_ZN6hermes11JSONEmitter9emitValueEd(ptr noundef nonnull align 8 dereferenceable(72) %1, double noundef %3) #31
  call void @_ZN6hermes11JSONEmitter7emitKeyEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr nonnull @.str.16, i64 12) #31
  call void @_ZN6hermes11JSONEmitter9emitValueEd(ptr noundef nonnull align 8 dereferenceable(72) %1, double noundef %i.p) #31
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !159
  call void @_ZN6hermes11JSONEmitter7emitKeyEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr nonnull @.str.17, i64 11) #31
  call void @_ZN6hermes11JSONEmitter9emitValueEd(ptr noundef nonnull align 8 dereferenceable(72) %1, double noundef %i.bn) #31
  call void @_ZN6hermes11JSONEmitter7emitKeyEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr nonnull @.str.18, i64 12) #31
  %i.bo = load i64, ptr %i.a, align 8, !tbaa !91
  call void @_ZN6hermes11JSONEmitter9emitValueEl(ptr noundef nonnull align 8 dereferenceable(72) %1, i64 noundef %i.bo) #31
  call void @_ZN6hermes11JSONEmitter7emitKeyEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr nonnull @.str.19, i64 14) #31
  %i.bp = load i64, ptr %i.b, align 8, !tbaa !91
  call void @_ZN6hermes11JSONEmitter9emitValueEl(ptr noundef nonnull align 8 dereferenceable(72) %1, i64 noundef %i.bp) #31
  %i.bq = load i32, ptr %i.bl, align 8, !tbaa !83 ; 2 uses
  %i.br = icmp eq i32 %i.bq, 0
  %i.bs = load double, ptr %i.bm, align 8
  %i.bt = uitofp i32 %i.bq to double
  %i.bu = fdiv double %i.bs, %i.bt
  %i.bv = select i1 %i.br, double 0.000000e+00, double %i.bu
  call void @_ZN6hermes11JSONEmitter7emitKeyEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr nonnull @.str.20, i64 10) #31
  call void @_ZN6hermes11JSONEmitter9emitValueEd(ptr noundef nonnull align 8 dereferenceable(72) %1, double noundef %i.bv) #31
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !160
  call void @_ZN6hermes11JSONEmitter7emitKeyEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr nonnull @.str.21, i64 10) #31
  call void @_ZN6hermes11JSONEmitter9emitValueEd(ptr noundef nonnull align 8 dereferenceable(72) %1, double noundef %i.bx) #31
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !159
  call void @_ZN6hermes11JSONEmitter7emitKeyEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr nonnull @.str.22, i64 14) #31
  call void @_ZN6hermes11JSONEmitter9emitValueEd(ptr noundef nonnull align 8 dereferenceable(72) %1, double noundef %i.ca) #31
  %i.cb = load i32, ptr %i.by, align 8, !tbaa !83 ; 2 uses
  %i.cc = icmp eq i32 %i.cb, 0
  %i.cd = load double, ptr %i.bz, align 8
  %i.ce = uitofp i32 %i.cb to double
  %i.cf = fdiv double %i.cd, %i.ce
  %i.cg = select i1 %i.cc, double 0.000000e+00, double %i.cf
  call void @_ZN6hermes11JSONEmitter7emitKeyEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr nonnull @.str.23, i64 13) #31
  call void @_ZN6hermes11JSONEmitter9emitValueEd(ptr noundef nonnull align 8 dereferenceable(72) %1, double noundef %i.cg) #31
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.ci = load double, ptr %i.ch, align 8, !tbaa !160
  call void @_ZN6hermes11JSONEmitter7emitKeyEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr nonnull @.str.24, i64 13) #31
  call void @_ZN6hermes11JSONEmitter9emitValueEd(ptr noundef nonnull align 8 dereferenceable(72) %1, double noundef %i.ci) #31
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !161
  %i.cl = zext i32 %i.ck to i64
  call void @_ZN6hermes11JSONEmitter7emitKeyEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr nonnull @.str.25, i64 13) #31
  call void @_ZN6hermes11JSONEmitter9emitValueEm(ptr noundef nonnull align 8 dereferenceable(72) %1, i64 noundef %i.cl) #31
  %i.cm = load ptr, ptr %0, align 8, !tbaa !7
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 32
  %i.co = load ptr, ptr %i.cn, align 8
  %i.cp = call noundef i64 %i.co(ptr noundef nonnull align 8 dereferenceable(717) %0) #31
  call void @_ZN6hermes11JSONEmitter7emitKeyEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr nonnull @.str.26, i64 18) #31
  call void @_ZN6hermes11JSONEmitter9emitValueEm(ptr noundef nonnull align 8 dereferenceable(72) %1, i64 noundef %i.cp) #31
  %i.cq = load ptr, ptr %0, align 8, !tbaa !7
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 40
  %i.cs = load ptr, ptr %i.cr, align 8
  %i.ct = call noundef i64 %i.cs(ptr noundef nonnull align 8 dereferenceable(717) %0) #31
  call void @_ZN6hermes11JSONEmitter7emitKeyEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr nonnull @.str.27, i64 15) #31
  call void @_ZN6hermes11JSONEmitter9emitValueEm(ptr noundef nonnull align 8 dereferenceable(72) %1, i64 noundef %i.ct) #31
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !162
  call void @_ZN6hermes11JSONEmitter7emitKeyEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr nonnull @.str.28, i64 19) #31
  call void @_ZN6hermes11JSONEmitter9emitValueEm(ptr noundef nonnull align 8 dereferenceable(72) %1, i64 noundef %i.cv) #31
  call void @_ZN6hermes11JSONEmitter9closeDictEv(ptr noundef nonnull align 8 dereferenceable(72) %1) #31
  call void @_ZN6hermes11JSONEmitter7emitKeyEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr nonnull @.str.29, i64 11) #31
  call void @_ZN6hermes11JSONEmitter9openArrayEv(ptr noundef nonnull align 8 dereferenceable(72) %1) #31
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !163 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !163 ; 2 uses
  %.not187 = icmp eq ptr %i.cx, %i.cz
  br i1 %.not187, label %._crit_edge191, label %.lr.ph190

._crit_edge191:                                   ; preds = %._crit_edge, %bb.c
  call void @_ZN6hermes11JSONEmitter10closeArrayEv(ptr noundef nonnull align 8 dereferenceable(72) %1) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  ret void

.lr.ph190:                                        ; preds = %bb.c, %._crit_edge
  %.sroa.0106.0188 = phi ptr [ %i.el, %._crit_edge ], [ %i.cx, %bb.c ] ; 20 uses
  call void @_ZN6hermes11JSONEmitter8openDictEv(ptr noundef nonnull align 8 dereferenceable(72) %1) #31
  call void @_ZN6hermes11JSONEmitter7emitKeyEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr nonnull @.str.30, i64 18) #31
  %i.da = load ptr, ptr %.sroa.0106.0188, align 8, !tbaa !89
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.0106.0188, i64 8
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !90
  call void @_ZN6hermes11JSONEmitter9emitValueEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr %i.da, i64 %i.dc) #31
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.0106.0188, i64 32
  call void @_ZN6hermes11JSONEmitter7emitKeyEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr nonnull @.str.31, i64 6) #31
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !89
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.0106.0188, i64 40
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !90
  call void @_ZN6hermes11JSONEmitter9emitValueEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr %i.de, i64 %i.dg) #31
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.0106.0188, i64 64
  call void @_ZN6hermes11JSONEmitter7emitKeyEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr nonnull @.str.32, i64 14) #31
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !89
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.0106.0188, i64 72
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !90
  call void @_ZN6hermes11JSONEmitter9emitValueEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr %i.di, i64 %i.dk) #31
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.0106.0188, i64 96
  call void @_ZN6hermes11JSONEmitter7emitKeyEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr nonnull @.str.33, i64 5) #31
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !89
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.0106.0188, i64 104
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !90
  call void @_ZN6hermes11JSONEmitter9emitValueEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr %i.dm, i64 %i.do) #31
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.0106.0188, i64 128
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !164
  call void @_ZN6hermes11JSONEmitter7emitKeyEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr nonnull @.str.34, i64 8) #31
  call void @_ZN6hermes11JSONEmitter9emitValueEl(ptr noundef nonnull align 8 dereferenceable(72) %1, i64 noundef %i.dq) #31
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.0106.0188, i64 136
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !164
  call void @_ZN6hermes11JSONEmitter7emitKeyEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr nonnull @.str.35, i64 11) #31
  call void @_ZN6hermes11JSONEmitter9emitValueEl(ptr noundef nonnull align 8 dereferenceable(72) %1, i64 noundef %i.ds) #31
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.0106.0188, i64 144
  call void @_ZN6hermes11JSONEmitter7emitKeyEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr nonnull @.str.36, i64 12) #31
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !91
  call void @_ZN6hermes11JSONEmitter9emitValueEm(ptr noundef nonnull align 8 dereferenceable(72) %1, i64 noundef %i.du) #31
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.0106.0188, i64 152
  call void @_ZN6hermes11JSONEmitter7emitKeyEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr nonnull @.str.37, i64 13) #31
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !91
  call void @_ZN6hermes11JSONEmitter9emitValueEm(ptr noundef nonnull align 8 dereferenceable(72) %1, i64 noundef %i.dw) #31
  %i.dx = getelementptr inbounds nuw i8, ptr %.sroa.0106.0188, i64 160
  call void @_ZN6hermes11JSONEmitter7emitKeyEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr nonnull @.str.38, i64 7) #31
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !91
  call void @_ZN6hermes11JSONEmitter9emitValueEm(ptr noundef nonnull align 8 dereferenceable(72) %1, i64 noundef %i.dy) #31
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.0106.0188, i64 168
  call void @_ZN6hermes11JSONEmitter7emitKeyEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr nonnull @.str.39, i64 8) #31
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !91
  call void @_ZN6hermes11JSONEmitter9emitValueEm(ptr noundef nonnull align 8 dereferenceable(72) %1, i64 noundef %i.ea) #31
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.0106.0188, i64 176
  call void @_ZN6hermes11JSONEmitter7emitKeyEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr nonnull @.str.40, i64 11) #31
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !91
  call void @_ZN6hermes11JSONEmitter9emitValueEm(ptr noundef nonnull align 8 dereferenceable(72) %1, i64 noundef %i.ec) #31
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.0106.0188, i64 184
  call void @_ZN6hermes11JSONEmitter7emitKeyEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr nonnull @.str.41, i64 12) #31
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !91
  call void @_ZN6hermes11JSONEmitter9emitValueEm(ptr noundef nonnull align 8 dereferenceable(72) %1, i64 noundef %i.ee) #31
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.0106.0188, i64 192
  call void @_ZN6hermes11JSONEmitter7emitKeyEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr nonnull @.str.42, i64 13) #31
  %i.eg = load double, ptr %i.ef, align 8, !tbaa !152
  call void @_ZN6hermes11JSONEmitter9emitValueEd(ptr noundef nonnull align 8 dereferenceable(72) %1, double noundef %i.eg) #31
  call void @_ZN6hermes11JSONEmitter7emitKeyEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr nonnull @.str.43, i64 4) #31
  call void @_ZN6hermes11JSONEmitter9openArrayEv(ptr noundef nonnull align 8 dereferenceable(72) %1) #31
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.0106.0188, i64 200
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !166 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.0106.0188, i64 208
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !166 ; 2 uses
  %.not184185 = icmp eq ptr %i.ei, %i.ek
  br i1 %.not184185, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %.lr.ph190
  call void @_ZN6hermes11JSONEmitter10closeArrayEv(ptr noundef nonnull align 8 dereferenceable(72) %1) #31
  call void @_ZN6hermes11JSONEmitter9closeDictEv(ptr noundef nonnull align 8 dereferenceable(72) %1) #31
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.0106.0188, i64 224 ; 2 uses
  %.not = icmp eq ptr %i.el, %i.cz
  br i1 %.not, label %._crit_edge191, label %.lr.ph190

.lr.ph:                                           ; preds = %.lr.ph190, %.lr.ph
  %.sroa.074.0186 = phi ptr [ %i.ep, %.lr.ph ], [ %i.ei, %.lr.ph190 ] ; 3 uses
  %i.em = load ptr, ptr %.sroa.074.0186, align 8, !tbaa !89
  %i.en = getelementptr inbounds nuw i8, ptr %.sroa.074.0186, i64 8
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !90
  call void @_ZN6hermes11JSONEmitter9emitValueEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr %i.em, i64 %i.eo) #31
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.074.0186, i64 32 ; 2 uses
  %.not184 = icmp eq ptr %i.ep, %i.ek
  br i1 %.not184, label %._crit_edge, label %.lr.ph
}

declare void @_ZN6hermes11JSONEmitter7emitKeyEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(72), ptr, i64) local_unnamed_addr #2

declare noundef i64 @_ZN6hermes8oscompat8peak_rssEv() local_unnamed_addr #2

declare noundef i64 @_ZN6hermes8oscompat11current_rssEv() local_unnamed_addr #2

declare noundef i64 @_ZN6hermes8oscompat21current_private_dirtyEv() local_unnamed_addr #2

declare void @_ZN6hermes11JSONEmitter9openArrayEv(ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #2

declare void @_ZN6hermes11JSONEmitter9emitValueEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(72), ptr, i64) local_unnamed_addr #2

declare void @_ZN6hermes11JSONEmitter10closeArrayEv(ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN6hermes2vm6GCBase13recordGCStatsERKNS0_16GCAnalyticsEventEPNS1_19CumulativeHeapStatsEb(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(224) %1, ptr nofree noundef captures(none) initializes((88, 92)) %2, i1 noundef zeroext %3) local_unnamed_addr #4 align 2 {
bb.a:
  br i1 %3, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.c = load i64, ptr %i.b, align 8, !tbaa !164
  %i.d = sitofp i64 %i.c to double
  %i.e = fdiv double %i.d, 1.000000e+03           ; 9 uses
  %i.f = load i32, ptr %i.a, align 8, !tbaa !83   ; 2 uses
  %i.g = icmp eq i32 %i.f, 0
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
end_hunk_0
