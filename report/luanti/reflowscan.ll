Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/reflowscan?download=true
inline.NumInlined: 214
inline.NumDeleted: 129
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN10ReflowScanC2EP3MapPK14NodeDefManager:bb.a

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN10ReflowScan4scanEP8MapBlockP11UniqueQueueIN4core8vector3dIsEEE(ptr noundef nonnull align 8 dereferenceable(260) initializes((16, 28), (32, 260)) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 2
  %.sroa.0.0.copyload.i = load i48, ptr %i.a, align 2, !tbaa !19
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i48 %.sroa.0.0.copyload.i, ptr %i.b, align 8, !tbaa !19
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i24 = load i48, ptr %i.c, align 8, !tbaa !19
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 22
  store i48 %.sroa.0.0.copyload.i24, ptr %i.d, align 2, !tbaa !19
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %2, ptr %i.e, align 8, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %i.f, i8 0, i64 216, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr %1, ptr %i.g, align 8, !tbaa !21
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 256
  store i32 8192, ptr %i.h, align 8, !tbaa !22
  br label %.preheader25

.preheader25:                                     ; preds = %bb.a, %.preheader25
  %indvars.iv = phi i32 [ 0, %bb.a ], [ %indvars.iv.next, %.preheader25 ] ; 17 uses
  tail call void @_ZN10ReflowScan10scanColumnEii(ptr noundef nonnull align 8 dereferenceable(260) %0, i32 noundef 0, i32 noundef %indvars.iv)
  tail call void @_ZN10ReflowScan10scanColumnEii(ptr noundef nonnull align 8 dereferenceable(260) %0, i32 noundef 1, i32 noundef %indvars.iv)
  tail call void @_ZN10ReflowScan10scanColumnEii(ptr noundef nonnull align 8 dereferenceable(260) %0, i32 noundef 2, i32 noundef %indvars.iv)
  tail call void @_ZN10ReflowScan10scanColumnEii(ptr noundef nonnull align 8 dereferenceable(260) %0, i32 noundef 3, i32 noundef %indvars.iv)
  tail call void @_ZN10ReflowScan10scanColumnEii(ptr noundef nonnull align 8 dereferenceable(260) %0, i32 noundef 4, i32 noundef %indvars.iv)
  tail call void @_ZN10ReflowScan10scanColumnEii(ptr noundef nonnull align 8 dereferenceable(260) %0, i32 noundef 5, i32 noundef %indvars.iv)
  tail call void @_ZN10ReflowScan10scanColumnEii(ptr noundef nonnull align 8 dereferenceable(260) %0, i32 noundef 6, i32 noundef %indvars.iv)
  tail call void @_ZN10ReflowScan10scanColumnEii(ptr noundef nonnull align 8 dereferenceable(260) %0, i32 noundef 7, i32 noundef %indvars.iv)
  tail call void @_ZN10ReflowScan10scanColumnEii(ptr noundef nonnull align 8 dereferenceable(260) %0, i32 noundef 8, i32 noundef %indvars.iv)
  tail call void @_ZN10ReflowScan10scanColumnEii(ptr noundef nonnull align 8 dereferenceable(260) %0, i32 noundef 9, i32 noundef %indvars.iv)
  tail call void @_ZN10ReflowScan10scanColumnEii(ptr noundef nonnull align 8 dereferenceable(260) %0, i32 noundef 10, i32 noundef %indvars.iv)
  tail call void @_ZN10ReflowScan10scanColumnEii(ptr noundef nonnull align 8 dereferenceable(260) %0, i32 noundef 11, i32 noundef %indvars.iv)
  tail call void @_ZN10ReflowScan10scanColumnEii(ptr noundef nonnull align 8 dereferenceable(260) %0, i32 noundef 12, i32 noundef %indvars.iv)
  tail call void @_ZN10ReflowScan10scanColumnEii(ptr noundef nonnull align 8 dereferenceable(260) %0, i32 noundef 13, i32 noundef %indvars.iv)
  tail call void @_ZN10ReflowScan10scanColumnEii(ptr noundef nonnull align 8 dereferenceable(260) %0, i32 noundef 14, i32 noundef %indvars.iv)
  tail call void @_ZN10ReflowScan10scanColumnEii(ptr noundef nonnull align 8 dereferenceable(260) %0, i32 noundef 15, i32 noundef %indvars.iv)
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i32 %indvars.iv.next, 16
  br i1 %exitcond.not, label %.preheader.preheader, label %.preheader25, !llvm.loop !140

.preheader.preheader:                             ; preds = %.preheader25
  tail call void @_ZN10ReflowScan10scanColumnEii(ptr noundef nonnull align 8 dereferenceable(260) %0, i32 noundef 0, i32 noundef -1)
  tail call void @_ZN10ReflowScan10scanColumnEii(ptr noundef nonnull align 8 dereferenceable(260) %0, i32 noundef 0, i32 noundef 16)
  tail call void @_ZN10ReflowScan10scanColumnEii(ptr noundef nonnull align 8 dereferenceable(260) %0, i32 noundef -1, i32 noundef 0)
  tail call void @_ZN10ReflowScan10scanColumnEii(ptr noundef nonnull align 8 dereferenceable(260) %0, i32 noundef 16, i32 noundef 0)
  tail call void @_ZN10ReflowScan10scanColumnEii(ptr noundef nonnull align 8 dereferenceable(260) %0, i32 noundef 1, i32 noundef -1)
  tail call void @_ZN10ReflowScan10scanColumnEii(ptr noundef nonnull align 8 dereferenceable(260) %0, i32 noundef 1, i32 noundef 16)
  tail call void @_ZN10ReflowScan10scanColumnEii(ptr noundef nonnull align 8 dereferenceable(260) %0, i32 noundef -1, i32 noundef 1)
  tail call void @_ZN10ReflowScan10scanColumnEii(ptr noundef nonnull align 8 dereferenceable(260) %0, i32 noundef 16, i32 noundef 1)
  tail call void @_ZN10ReflowScan10scanColumnEii(ptr noundef nonnull align 8 dereferenceable(260) %0, i32 noundef 2, i32 noundef -1)
  tail call void @_ZN10ReflowScan10scanColumnEii(ptr noundef nonnull align 8 dereferenceable(260) %0, i32 noundef 2, i32 noundef 16)
  tail call void @_ZN10ReflowScan10scanColumnEii(ptr noundef nonnull align 8 dereferenceable(260) %0, i32 noundef -1, i32 noundef 2)
  tail call void @_ZN10ReflowScan10scanColumnEii(ptr noundef nonnull align 8 dereferenceable(260) %0, i32 noundef 16, i32 noundef 2)
  tail call void @_ZN10ReflowScan10scanColumnEii(ptr noundef nonnull align 8 dereferenceable(260) %0, i32 noundef 3, i32 noundef -1)
  tail call void @_ZN10ReflowScan10scanColumnEii(ptr noundef nonnull align 8 dereferenceable(260) %0, i32 noundef 3, i32 noundef 16)
  tail call void @_ZN10ReflowScan10scanColumnEii(ptr noundef nonnull align 8 dereferenceable(260) %0, i32 noundef -1, i32 noundef 3)
  tail call void @_ZN10ReflowScan10scanColumnEii(ptr noundef nonnull align 8 dereferenceable(260) %0, i32 noundef 16, i32 noundef 3)
  tail call void @_ZN10ReflowScan10scanColumnEii(ptr noundef nonnull align 8 dereferenceable(260) %0, i32 noundef 4, i32 noundef -1)
  tail call void @_ZN10ReflowScan10scanColumnEii(ptr noundef nonnull align 8 dereferenceable(260) %0, i32 noundef 4, i32 noundef 16)
  tail call void @_ZN10ReflowScan10scanColumnEii(ptr noundef nonnull align 8 dereferenceable(260) %0, i32 noundef -1, i32 noundef 4)
  tail call void @_ZN10ReflowScan10scanColumnEii(ptr noundef nonnull align 8 dereferenceable(260) %0, i32 noundef 16, i32 noundef 4)
  tail call void @_ZN10ReflowScan10scanColumnEii(ptr noundef nonnull align 8 dereferenceable(260) %0, i32 noundef 5, i32 noundef -1)
  tail call void @_ZN10ReflowScan10scanColumnEii(ptr noundef nonnull align 8 dereferenceable(260) %0, i32 noundef 5, i32 noundef 16)
  tail call void @_ZN10ReflowScan10scanColumnEii(ptr noundef nonnull align 8 dereferenceable(260) %0, i32 noundef -1, i32 noundef 5)
  tail call void @_ZN10ReflowScan10scanColumnEii(ptr noundef nonnull align 8 dereferenceable(260) %0, i32 noundef 16, i32 noundef 5)
  tail call void @_ZN10ReflowScan10scanColumnEii(ptr noundef nonnull align 8 dereferenceable(260) %0, i32 noundef 6, i32 noundef -1)
  tail call void @_ZN10ReflowScan10scanColumnEii(ptr noundef nonnull align 8 dereferenceable(260) %0, i32 noundef 6, i32 noundef 16)
  tail call void @_ZN10ReflowScan10scanColumnEii(ptr noundef nonnull align 8 dereferenceable(260) %0, i32 noundef -1, i32 noundef 6)
  tail call void @_ZN10ReflowScan10scanColumnEii(ptr noundef nonnull align 8 dereferenceable(260) %0, i32 noundef 16, i32 noundef 6)
  tail call void @_ZN10ReflowScan10scanColumnEii(ptr noundef nonnull align 8 dereferenceable(260) %0, i32 noundef 7, i32 noundef -1)
  tail call void @_ZN10ReflowScan10scanColumnEii(ptr noundef nonnull align 8 dereferenceable(260) %0, i32 noundef 7, i32 noundef 16)
  tail call void @_ZN10ReflowScan10scanColumnEii(ptr noundef nonnull align 8 dereferenceable(260) %0, i32 noundef -1, i32 noundef 7)
  tail call void @_ZN10ReflowScan10scanColumnEii(ptr noundef nonnull align 8 dereferenceable(260) %0, i32 noundef 16, i32 noundef 7)
  tail call void @_ZN10ReflowScan10scanColumnEii(ptr noundef nonnull align 8 dereferenceable(260) %0, i32 noundef 8, i32 noundef -1)
  tail call void @_ZN10ReflowScan10scanColumnEii(ptr noundef nonnull align 8 dereferenceable(260) %0, i32 noundef 8, i32 noundef 16)
  tail call void @_ZN10ReflowScan10scanColumnEii(ptr noundef nonnull align 8 dereferenceable(260) %0, i32 noundef -1, i32 noundef 8)
  tail call void @_ZN10ReflowScan10scanColumnEii(ptr noundef nonnull align 8 dereferenceable(260) %0, i32 noundef 16, i32 noundef 8)
  tail call void @_ZN10ReflowScan10scanColumnEii(ptr noundef nonnull align 8 dereferenceable(260) %0, i32 noundef 9, i32 noundef -1)
  tail call void @_ZN10ReflowScan10scanColumnEii(ptr noundef nonnull align 8 dereferenceable(260) %0, i32 noundef 9, i32 noundef 16)
  tail call void @_ZN10ReflowScan10scanColumnEii(ptr noundef nonnull align 8 dereferenceable(260) %0, i32 noundef -1, i32 noundef 9)
  tail call void @_ZN10ReflowScan10scanColumnEii(ptr noundef nonnull align 8 dereferenceable(260) %0, i32 noundef 16, i32 noundef 9)
  tail call void @_ZN10ReflowScan10scanColumnEii(ptr noundef nonnull align 8 dereferenceable(260) %0, i32 noundef 10, i32 noundef -1)
  tail call void @_ZN10ReflowScan10scanColumnEii(ptr noundef nonnull align 8 dereferenceable(260) %0, i32 noundef 10, i32 noundef 16)
  tail call void @_ZN10ReflowScan10scanColumnEii(ptr noundef nonnull align 8 dereferenceable(260) %0, i32 noundef -1, i32 noundef 10)
  tail call void @_ZN10ReflowScan10scanColumnEii(ptr noundef nonnull align 8 dereferenceable(260) %0, i32 noundef 16, i32 noundef 10)
  tail call void @_ZN10ReflowScan10scanColumnEii(ptr noundef nonnull align 8 dereferenceable(260) %0, i32 noundef 11, i32 noundef -1)
  tail call void @_ZN10ReflowScan10scanColumnEii(ptr noundef nonnull align 8 dereferenceable(260) %0, i32 noundef 11, i32 noundef 16)
  tail call void @_ZN10ReflowScan10scanColumnEii(ptr noundef nonnull align 8 dereferenceable(260) %0, i32 noundef -1, i32 noundef 11)
  tail call void @_ZN10ReflowScan10scanColumnEii(ptr noundef nonnull align 8 dereferenceable(260) %0, i32 noundef 16, i32 noundef 11)
  tail call void @_ZN10ReflowScan10scanColumnEii(ptr noundef nonnull align 8 dereferenceable(260) %0, i32 noundef 12, i32 noundef -1)
  tail call void @_ZN10ReflowScan10scanColumnEii(ptr noundef nonnull align 8 dereferenceable(260) %0, i32 noundef 12, i32 noundef 16)
  tail call void @_ZN10ReflowScan10scanColumnEii(ptr noundef nonnull align 8 dereferenceable(260) %0, i32 noundef -1, i32 noundef 12)
  tail call void @_ZN10ReflowScan10scanColumnEii(ptr noundef nonnull align 8 dereferenceable(260) %0, i32 noundef 16, i32 noundef 12)
  tail call void @_ZN10ReflowScan10scanColumnEii(ptr noundef nonnull align 8 dereferenceable(260) %0, i32 noundef 13, i32 noundef -1)
  tail call void @_ZN10ReflowScan10scanColumnEii(ptr noundef nonnull align 8 dereferenceable(260) %0, i32 noundef 13, i32 noundef 16)
  tail call void @_ZN10ReflowScan10scanColumnEii(ptr noundef nonnull align 8 dereferenceable(260) %0, i32 noundef -1, i32 noundef 13)
  tail call void @_ZN10ReflowScan10scanColumnEii(ptr noundef nonnull align 8 dereferenceable(260) %0, i32 noundef 16, i32 noundef 13)
  tail call void @_ZN10ReflowScan10scanColumnEii(ptr noundef nonnull align 8 dereferenceable(260) %0, i32 noundef 14, i32 noundef -1)
  tail call void @_ZN10ReflowScan10scanColumnEii(ptr noundef nonnull align 8 dereferenceable(260) %0, i32 noundef 14, i32 noundef 16)
  tail call void @_ZN10ReflowScan10scanColumnEii(ptr noundef nonnull align 8 dereferenceable(260) %0, i32 noundef -1, i32 noundef 14)
  tail call void @_ZN10ReflowScan10scanColumnEii(ptr noundef nonnull align 8 dereferenceable(260) %0, i32 noundef 16, i32 noundef 14)
  tail call void @_ZN10ReflowScan10scanColumnEii(ptr noundef nonnull align 8 dereferenceable(260) %0, i32 noundef 15, i32 noundef -1)
  tail call void @_ZN10ReflowScan10scanColumnEii(ptr noundef nonnull align 8 dereferenceable(260) %0, i32 noundef 15, i32 noundef 16)
  tail call void @_ZN10ReflowScan10scanColumnEii(ptr noundef nonnull align 8 dereferenceable(260) %0, i32 noundef -1, i32 noundef 15)
  tail call void @_ZN10ReflowScan10scanColumnEii(ptr noundef nonnull align 8 dereferenceable(260) %0, i32 noundef 16, i32 noundef 15)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN10ReflowScan10scanColumnEii(ptr noundef nonnull align 8 dereferenceable(260) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #1 align 2 {
bb.a:
  %3 = alloca %"struct.std::__detail::_AllocNode", align 8 ; 4 uses
  %4 = alloca %"struct.std::__detail::_AllocNode", align 8 ; 4 uses
  %5 = alloca %"struct.std::__detail::_AllocNode", align 8 ; 4 uses
  %6 = alloca %"struct.std::__detail::_AllocNode", align 8 ; 4 uses
  %7 = alloca %"class.core::vector3d", align 8    ; 7 uses
  %8 = alloca %"class.core::vector3d", align 8    ; 7 uses
  %9 = alloca %"class.core::vector3d", align 8    ; 7 uses
  %10 = alloca %"class.core::vector3d", align 8   ; 7 uses
  %i.a = add nsw i32 %1, 16                       ; 4 uses
  %i.b = sdiv i32 %i.a, 16                        ; 4 uses
  %i.c = srem i32 %i.a, 16                        ; 2 uses
  %i.d = add nsw i32 %2, 16                       ; 4 uses
  %i.e = sdiv i32 %i.d, 16                        ; 6 uses
  %i.f = srem i32 %i.d, 16                        ; 2 uses
  %i.g = mul nsw i32 %i.e, 3                      ; 3 uses
  %i.h = add nsw i32 %i.g, %i.b                   ; 4 uses
  %i.i = add nsw i32 %i.h, 9                      ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.k = sext i32 %i.i to i64
  %i.l = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.k ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !21   ; 2 uses
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %bb.b, label %_ZN10ReflowScan11lookupBlockEiii.exit.thread193

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !22
  %i.p = shl nuw i32 1, %i.i                      ; 2 uses
  %i.q = and i32 %i.o, %i.p
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %_ZN10ReflowScan11lookupBlockEiii.exit, label %_ZN10ReflowScan11lookupBlockEiii.exit.thread

_ZN10ReflowScan11lookupBlockEiii.exit:            ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = trunc i32 %i.b to i16
  %i.u = add i16 %i.t, -1
  %i.v = trunc i32 %i.e to i16
  %i.w = add i16 %i.v, -1
  %i.x = load i16, ptr %i.s, align 8, !tbaa !24
  %i.y = add i16 %i.u, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !25
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ac = load i16, ptr %i.ab, align 4, !tbaa !26
  %i.ad = add i16 %i.w, %i.ac
  %.sroa.3.0.insert.ext.i.i = zext i16 %i.ad to i48
  %.sroa.3.0.insert.shift.i.i = shl nuw i48 %.sroa.3.0.insert.ext.i.i, 32
  %.sroa.2.0.insert.ext.i.i = zext i16 %i.aa to i48
  %.sroa.2.0.insert.shift.i.i = shl nuw nsw i48 %.sroa.2.0.insert.ext.i.i, 16
  %.sroa.2.0.insert.insert.i.i = or disjoint i48 %.sroa.3.0.insert.shift.i.i, %.sroa.2.0.insert.shift.i.i
  %.sroa.0.0.insert.ext.i.i = zext i16 %i.y to i48
  %.sroa.0.0.insert.insert.i.i = or disjoint i48 %.sroa.2.0.insert.insert.i.i, %.sroa.0.0.insert.ext.i.i
  %i.ae = load ptr, ptr %0, align 8, !tbaa !16
  %i.af = tail call noundef ptr @_ZN3Map20getBlockNoCreateNoExEN4core8vector3dIsEE(ptr noundef nonnull align 8 dereferenceable(144) %i.ae, i48 %.sroa.0.0.insert.insert.i.i) ; 3 uses
  store ptr %i.af, ptr %i.l, align 8, !tbaa !21
  %i.ag = load i32, ptr %i.n, align 8, !tbaa !22
  %i.ah = or i32 %i.ag, %i.p
  store i32 %i.ah, ptr %i.n, align 8, !tbaa !22
  %.not = icmp eq ptr %i.af, null
  br i1 %.not, label %_ZN10ReflowScan11lookupBlockEiii.exit.thread, label %_ZN10ReflowScan11lookupBlockEiii.exit.thread193

_ZN10ReflowScan11lookupBlockEiii.exit.thread193:  ; preds = %bb.a, %_ZN10ReflowScan11lookupBlockEiii.exit
  %.0.i196 = phi ptr [ %i.af, %_ZN10ReflowScan11lookupBlockEiii.exit ], [ %i.m, %bb.a ] ; 5 uses
  %i.ai = add nsw i32 %i.h, 18                    ; 2 uses
  %i.aj = sext i32 %i.ai to i64
  %i.ak = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.aj ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !21 ; 2 uses
  %.not.i92 = icmp eq ptr %i.al, null
  br i1 %.not.i92, label %bb.c, label %_ZN10ReflowScan11lookupBlockEiii.exit101.thread199

_ZN10ReflowScan11lookupBlockEiii.exit101.thread199: ; preds = %_ZN10ReflowScan11lookupBlockEiii.exit.thread193
  %i.am = srem i32 %i.a, 16
  %i.an = srem i32 %i.d, 16
  br label %11

bb.c:                                             ; preds = %_ZN10ReflowScan11lookupBlockEiii.exit.thread193
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !22
  %i.aq = shl nuw i32 1, %i.ai                    ; 2 uses
  %i.ar = and i32 %i.ap, %i.aq
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %_ZN10ReflowScan11lookupBlockEiii.exit101, label %_ZN10ReflowScan11lookupBlockEiii.exit101.thread

_ZN10ReflowScan11lookupBlockEiii.exit101.thread:  ; preds = %bb.c
  %i.at = srem i32 %i.a, 16
  %i.au = srem i32 %i.d, 16
  br label %.thread

_ZN10ReflowScan11lookupBlockEiii.exit101:         ; preds = %bb.c
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aw = trunc i32 %i.b to i16
  %i.ax = add i16 %i.aw, -1
  %i.ay = trunc i32 %i.e to i16
  %i.az = add i16 %i.ay, -1
  %i.ba = load i16, ptr %i.av, align 8, !tbaa !24
  %i.bb = add i16 %i.ax, %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.bd = load i16, ptr %i.bc, align 2, !tbaa !25
  %i.be = add i16 %i.bd, 1
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.bg = load i16, ptr %i.bf, align 4, !tbaa !26
  %i.bh = add i16 %i.az, %i.bg
  %.sroa.3.0.insert.ext.i.i94 = zext i16 %i.bh to i48
  %.sroa.3.0.insert.shift.i.i95 = shl nuw i48 %.sroa.3.0.insert.ext.i.i94, 32
  %.sroa.2.0.insert.ext.i.i96 = zext i16 %i.be to i48
  %.sroa.2.0.insert.shift.i.i97 = shl nuw nsw i48 %.sroa.2.0.insert.ext.i.i96, 16
  %.sroa.2.0.insert.insert.i.i98 = or disjoint i48 %.sroa.3.0.insert.shift.i.i95, %.sroa.2.0.insert.shift.i.i97
  %.sroa.0.0.insert.ext.i.i99 = zext i16 %i.bb to i48
  %.sroa.0.0.insert.insert.i.i100 = or disjoint i48 %.sroa.2.0.insert.insert.i.i98, %.sroa.0.0.insert.ext.i.i99
  %i.bi = load ptr, ptr %0, align 8, !tbaa !16
  %i.bj = tail call noundef ptr @_ZN3Map20getBlockNoCreateNoExEN4core8vector3dIsEE(ptr noundef nonnull align 8 dereferenceable(144) %i.bi, i48 %.sroa.0.0.insert.insert.i.i100) ; 3 uses
  store ptr %i.bj, ptr %i.ak, align 8, !tbaa !21
  %i.bk = load i32, ptr %i.ao, align 8, !tbaa !22
  %i.bl = or i32 %i.bk, %i.aq
  store i32 %i.bl, ptr %i.ao, align 8, !tbaa !22
  %.not86 = icmp eq ptr %i.bj, null
  br i1 %.not86, label %.thread, label %11

11:                                               ; preds = %_ZN10ReflowScan11lookupBlockEiii.exit101.thread199, %_ZN10ReflowScan11lookupBlockEiii.exit101
  %12 = phi i32 [ %i.an, %_ZN10ReflowScan11lookupBlockEiii.exit101.thread199 ], [ %i.f, %_ZN10ReflowScan11lookupBlockEiii.exit101 ] ; 3 uses
  %13 = phi i32 [ %i.am, %_ZN10ReflowScan11lookupBlockEiii.exit101.thread199 ], [ %i.c, %_ZN10ReflowScan11lookupBlockEiii.exit101 ] ; 3 uses
  %.0.i93202 = phi ptr [ %i.al, %_ZN10ReflowScan11lookupBlockEiii.exit101.thread199 ], [ %i.bj, %_ZN10ReflowScan11lookupBlockEiii.exit101 ] ; 2 uses
  %14 = getelementptr inbounds nuw i8, ptr %.0.i93202, i64 16
  %15 = load ptr, ptr %14, align 8, !tbaa !69
  %16 = getelementptr inbounds nuw i8, ptr %.0.i93202, i64 36
  %17 = load i8, ptr %16, align 4, !tbaa !70, !range !71, !noundef !72
  %18 = trunc nuw i8 %17 to i1
  br i1 %18, label %_ZN8MapBlock14getNodeNoCheckEsss.exit, label %19

19:                                               ; preds = %11
  %20 = zext i32 %12 to i64
  %21 = zext i32 %13 to i64
  %sext = shl i64 %20, 48
  %22 = ashr exact i64 %sext, 40
  %sext218 = shl i64 %21, 48
  %23 = ashr exact i64 %sext218, 48
  %24 = add nsw i64 %23, %22
  %25 = and i64 %24, 4294967295
  br label %_ZN8MapBlock14getNodeNoCheckEsss.exit

_ZN8MapBlock14getNodeNoCheckEsss.exit:            ; preds = %11, %19
  %26 = phi i64 [ %25, %19 ], [ 0, %11 ]
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %15, i64 %26
  %.sroa.0.0.copyload.i = load i32, ptr %i.bm, align 4
  %i.bn = and i32 %.sroa.0.0.copyload.i, 65535    ; 2 uses
  %i.bo = icmp eq i32 %i.bn, 127                  ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !17 ; 2 uses
  %i.br = zext nneg i32 %i.bn to i64              ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !75
  %i.bu = load ptr, ptr %i.bq, align 8, !tbaa !76 ; 3 uses
  %i.bv = ptrtoint ptr %i.bt to i64
  %i.bw = ptrtoint ptr %i.bu to i64
  %i.bx = sub i64 %i.bv, %i.bw
  %i.by = sdiv exact i64 %i.bx, 2072
  %i.bz = icmp ugt i64 %i.by, %i.br
  br i1 %i.bz, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN8MapBlock14getNodeNoCheckEsss.exit
  %i.ca = getelementptr inbounds nuw [2072 x i8], ptr %i.bu, i64 %i.br ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !80
  %i.cd = icmp eq i64 %i.cc, 0
  br i1 %i.cd, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %_ZN8MapBlock14getNodeNoCheckEsss.exit
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bu, i64 259000
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.cf = phi ptr [ %i.ce, %bb.e ], [ %i.ca, %bb.d ]
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 1449
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !142
  %.not219 = icmp eq i8 %i.ch, 0
  br i1 %.not219, label %.thread, label %bb.h

.thread:                                          ; preds = %_ZN10ReflowScan11lookupBlockEiii.exit101.thread, %_ZN10ReflowScan11lookupBlockEiii.exit101, %bb.f
  %.079206 = phi i1 [ %i.bo, %bb.f ], [ true, %_ZN10ReflowScan11lookupBlockEiii.exit101 ], [ true, %_ZN10ReflowScan11lookupBlockEiii.exit101.thread ]
  %i.ci = phi i32 [ %13, %bb.f ], [ %i.c, %_ZN10ReflowScan11lookupBlockEiii.exit101 ], [ %i.at, %_ZN10ReflowScan11lookupBlockEiii.exit101.thread ] ; 2 uses
  %i.cj = phi i32 [ %12, %bb.f ], [ %i.f, %_ZN10ReflowScan11lookupBlockEiii.exit101 ], [ %i.au, %_ZN10ReflowScan11lookupBlockEiii.exit101.thread ] ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.0.i196, i64 65
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !143, !range !71, !noundef !72
  %i.cm = trunc nuw i8 %i.cl to i1
  br i1 %i.cm, label %bb.g, label %_ZN8MapBlock5isAirEv.exit

bb.g:                                             ; preds = %.thread
  tail call void @_ZN8MapBlock19actuallyUpdateIsAirEv(ptr noundef nonnull align 8 dereferenceable(328) %.0.i196)
  br label %_ZN8MapBlock5isAirEv.exit

_ZN8MapBlock5isAirEv.exit:                        ; preds = %.thread, %bb.g
  %i.cn = getelementptr inbounds nuw i8, ptr %.0.i196, i64 64
  %i.co = load i8, ptr %i.cn, align 8, !tbaa !144, !range !71, !noundef !72
  %i.cp = trunc nuw i8 %i.co to i1
  br i1 %i.cp, label %bb.ad, label %bb.h

bb.h:                                             ; preds = %_ZN8MapBlock5isAirEv.exit, %bb.f
  %.076209 = phi i1 [ false, %_ZN8MapBlock5isAirEv.exit ], [ true, %bb.f ]
  %.079207 = phi i1 [ %.079206, %_ZN8MapBlock5isAirEv.exit ], [ %i.bo, %bb.f ]
  %i.cq = phi i32 [ %i.ci, %_ZN8MapBlock5isAirEv.exit ], [ %13, %bb.f ] ; 2 uses
  %i.cr = phi i32 [ %i.cj, %_ZN8MapBlock5isAirEv.exit ], [ %12, %bb.f ] ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.0.i196, i64 16
  %i.ct = getelementptr inbounds nuw i8, ptr %.0.i196, i64 36
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 8
  %27 = zext i32 %i.cr to i64
  %28 = zext i32 %i.cq to i64
  %sext220 = shl i64 %27, 48
  %29 = ashr exact i64 %sext220, 40
  %sext221 = shl i64 %28, 48
  %30 = ashr exact i64 %sext221, 48
  %i.cv = add nsw i64 %29, %30
  %i.cw = add nsw i32 %1, -1                      ; 2 uses
  %i.cx = add nsw i32 %1, 1                       ; 2 uses
  %i.cy = add nsw i32 %2, -1                      ; 2 uses
  %i.cz = add nsw i32 %2, 1                       ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 22 ; 2 uses
  %i.dc = trunc i32 %1 to i16                     ; 2 uses
  %i.dd = trunc i32 %2 to i16                     ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 26 ; 2 uses
  br label %_ZN8MapBlock14getNodeNoCheckEsss.exit103

bb.i:                                             ; preds = %bb.ac
  %i.dg = trunc nuw i8 %.1 to i1
  %i.dh = trunc nuw i8 %.174 to i1
  br label %bb.ad

_ZN8MapBlock14getNodeNoCheckEsss.exit103:         ; preds = %bb.h, %bb.ac
  %indvars.iv = phi i64 [ 15, %bb.h ], [ %indvars.iv.next, %bb.ac ] ; 5 uses
  %i.di = phi i32 [ 15, %bb.h ], [ %i.gm, %bb.ac ] ; 5 uses
  %.072227 = phi i8 [ 0, %bb.h ], [ %.1, %bb.ac ]
  %.073226 = phi i8 [ 0, %bb.h ], [ %.174, %bb.ac ] ; 3 uses
  %.177225 = phi i1 [ %.076209, %bb.h ], [ %i.ek, %bb.ac ]
  %.180224 = phi i1 [ %.079207, %bb.h ], [ %i.eh, %bb.ac ]
  %i.dj = load ptr, ptr %i.cs, align 8, !tbaa !69
  %i.dk = load i8, ptr %i.ct, align 4, !tbaa !70, !range !71, !noundef !72
  %i.dl = trunc nuw i8 %i.dk to i1
  %i.dm = shl nuw nsw i64 %indvars.iv, 4
  %i.dn = add nsw i64 %i.cv, %i.dm
  %i.do = and i64 %i.dn, 4294967295
  %i.dp = select i1 %i.dl, i64 0, i64 %i.do
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %i.dp
  %.sroa.0.0.copyload.i102 = load i32, ptr %i.dq, align 4
  %i.dr = load ptr, ptr %i.cu, align 8, !tbaa !17 ; 2 uses
  %.sroa.0181.0.extract.trunc.mask = and i32 %.sroa.0.0.copyload.i102, 65535 ; 2 uses
  %i.ds = zext nneg i32 %.sroa.0181.0.extract.trunc.mask to i64 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !75
  %i.dv = load ptr, ptr %i.dr, align 8, !tbaa !76 ; 3 uses
  %i.dw = ptrtoint ptr %i.du to i64
  %i.dx = ptrtoint ptr %i.dv to i64
  %i.dy = sub i64 %i.dw, %i.dx
  %i.dz = sdiv exact i64 %i.dy, 2072
  %i.ea = icmp ugt i64 %i.dz, %i.ds
  br i1 %i.ea, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZN8MapBlock14getNodeNoCheckEsss.exit103
  %i.eb = getelementptr inbounds nuw [2072 x i8], ptr %i.dv, i64 %i.ds ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !80
  %i.ee = icmp eq i64 %i.ed, 0
  br i1 %i.ee, label %bb.k, label %_ZNK14NodeDefManager3getERK7MapNode.exit104

bb.k:                                             ; preds = %bb.j, %_ZN8MapBlock14getNodeNoCheckEsss.exit103
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dv, i64 259000
  br label %_ZNK14NodeDefManager3getERK7MapNode.exit104

_ZNK14NodeDefManager3getERK7MapNode.exit104:      ; preds = %bb.j, %bb.k
  %i.eg = phi ptr [ %i.ef, %bb.k ], [ %i.eb, %bb.j ] ; 2 uses
  %i.eh = icmp eq i32 %.sroa.0181.0.extract.trunc.mask, 127 ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eg, i64 1449
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !142 ; 2 uses
  %i.ek = icmp ne i8 %i.ej, 0                     ; 4 uses
  %or.cond = or i1 %.180224, %i.eh
  %or.cond.not = xor i1 %or.cond, true
  %i.el = xor i1 %.177225, %i.ek
  %or.cond89 = and i1 %i.el, %or.cond.not
  br i1 %or.cond89, label %bb.l, label %bb.ac

bb.l:                                             ; preds = %_ZNK14NodeDefManager3getERK7MapNode.exit104
  br i1 %i.ek, label %bb.m, label %bb.t

bb.m:                                             ; preds = %bb.l
  %i.em = icmp eq i8 %i.ej, 1
  br i1 %i.em, label %_ZN10ReflowScan28isLiquidHorizontallyFlowableEiii.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.en = call noundef zeroext i1 @_ZN10ReflowScan18isLiquidFlowableToEiii(ptr noundef nonnull align 8 dereferenceable(260) %0, i32 noundef %i.cw, i32 noundef %i.di, i32 noundef %2)
  br i1 %i.en, label %_ZN10ReflowScan28isLiquidHorizontallyFlowableEiii.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.eo = call noundef zeroext i1 @_ZN10ReflowScan18isLiquidFlowableToEiii(ptr noundef nonnull align 8 dereferenceable(260) %0, i32 noundef %i.cx, i32 noundef %i.di, i32 noundef %2)
  br i1 %i.eo, label %_ZN10ReflowScan28isLiquidHorizontallyFlowableEiii.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ep = call noundef zeroext i1 @_ZN10ReflowScan18isLiquidFlowableToEiii(ptr noundef nonnull align 8 dereferenceable(260) %0, i32 noundef %1, i32 noundef %i.di, i32 noundef %i.cy)
  br i1 %i.ep, label %_ZN10ReflowScan28isLiquidHorizontallyFlowableEiii.exit.thread, label %_ZN10ReflowScan28isLiquidHorizontallyFlowableEiii.exit

_ZN10ReflowScan28isLiquidHorizontallyFlowableEiii.exit: ; preds = %bb.p
  %i.eq = call noundef zeroext i1 @_ZN10ReflowScan18isLiquidFlowableToEiii(ptr noundef nonnull align 8 dereferenceable(260) %0, i32 noundef %1, i32 noundef %i.di, i32 noundef %i.cz)
  br i1 %i.eq, label %_ZN10ReflowScan28isLiquidHorizontallyFlowableEiii.exit.thread, label %bb.ac

_ZN10ReflowScan28isLiquidHorizontallyFlowableEiii.exit.thread: ; preds = %bb.n, %bb.o, %bb.p, %_ZN10ReflowScan28isLiquidHorizontallyFlowableEiii.exit, %bb.m
  %i.er = load ptr, ptr %i.da, align 8, !tbaa !18 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  %i.es = load i16, ptr %i.db, align 2, !tbaa !24
  %i.et = add i16 %i.es, %i.dc
  %i.eu = load i16, ptr %i.de, align 8, !tbaa !25
  %i.ev = trunc nuw nsw i64 %indvars.iv to i16
  %i.ew = add i16 %i.eu, %i.ev
  %i.ex = load i16, ptr %i.df, align 2, !tbaa !26
  %i.ey = add i16 %i.ex, %i.dd
  %.sroa.3.0.insert.ext.i = zext i16 %i.ey to i48
  %.sroa.3.0.insert.shift.i = shl nuw i48 %.sroa.3.0.insert.ext.i, 32
  %.sroa.2.0.insert.ext.i = zext i16 %i.ew to i48
  %.sroa.2.0.insert.shift.i = shl nuw nsw i48 %.sroa.2.0.insert.ext.i, 16
  %.sroa.2.0.insert.insert.i = or disjoint i48 %.sroa.3.0.insert.shift.i, %.sroa.2.0.insert.shift.i
  %.sroa.0.0.insert.ext.i = zext i16 %i.et to i48
  %.sroa.0.0.insert.insert.i = or disjoint i48 %.sroa.2.0.insert.insert.i, %.sroa.0.0.insert.ext.i
  store i48 %.sroa.0.0.insert.insert.i, ptr %7, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  store ptr %i.er, ptr %6, align 8, !tbaa !146
  %i.ez = call { ptr, i8 } @_ZNSt10_HashtableIN4core8vector3dIsEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_insert_uniqueIRKS2_SI_NS4_10_AllocNodeISaINS4_10_Hash_nodeIS2_Lb1EEEEEEEESt4pairINS4_14_Node_iteratorIS2_Lb1ELb1EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(136) %i.er, ptr noundef nonnull align 2 dereferenceable(6) %7, ptr noundef nonnull align 2 dereferenceable(6) %7, ptr noundef nonnull align 8 dereferenceable(8) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  %.fca.1.extract.i = extractvalue { ptr, i8 } %i.ez, 1
  %i.fa = trunc i8 %.fca.1.extract.i to i1
  br i1 %i.fa, label %bb.q, label %_ZN11UniqueQueueIN4core8vector3dIsEEE9push_backERKS2_.exit

bb.q:                                             ; preds = %_ZN10ReflowScan28isLiquidHorizontallyFlowableEiii.exit.thread
  %i.fb = getelementptr inbounds nuw i8, ptr %i.er, i64 104 ; 3 uses
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !120 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.er, i64 120
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !147
  %i.ff = getelementptr inbounds i8, ptr %i.fe, i64 -6
  %.not.i.i.i = icmp eq ptr %i.fc, %i.ff
  br i1 %.not.i.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %i.fc, ptr noundef nonnull align 8 dereferenceable(6) %7, i64 6, i1 false), !tbaa.struct !121
  %i.fg = load ptr, ptr %i.fb, align 8, !tbaa !120
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 6
  store ptr %i.fh, ptr %i.fb, align 8, !tbaa !120
  br label %_ZN11UniqueQueueIN4core8vector3dIsEEE9push_backERKS2_.exit

bb.s:                                             ; preds = %bb.q
  %i.fi = getelementptr inbounds nuw i8, ptr %i.er, i64 56
  call void @_ZNSt5dequeIN4core8vector3dIsEESaIS2_EE16_M_push_back_auxIJRKS2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.fi, ptr noundef nonnull align 2 dereferenceable(6) %7)
  br label %_ZN11UniqueQueueIN4core8vector3dIsEEE9push_backERKS2_.exit

_ZN11UniqueQueueIN4core8vector3dIsEEE9push_backERKS2_.exit: ; preds = %_ZN10ReflowScan28isLiquidHorizontallyFlowableEiii.exit.thread, %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  br label %bb.ac

bb.t:                                             ; preds = %bb.l
  %i.fj = trunc nuw i8 %.072227 to i1
  br i1 %i.fj, label %bb.ac, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.fk = getelementptr inbounds nuw i8, ptr %i.eg, i64 1534
  %i.fl = load i8, ptr %i.fk, align 2, !tbaa !122, !range !71, !noundef !72
  %i.fm = trunc nuw i8 %i.fl to i1
  br i1 %i.fm, label %_ZN10ReflowScan28isLiquidHorizontallyFlowableEiii.exit105.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fn = trunc nuw i8 %.073226 to i1
  br i1 %i.fn, label %bb.ac, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.fo = add nuw nsw i32 %i.di, 1                ; 4 uses
  %i.fp = call noundef zeroext i1 @_ZN10ReflowScan18isLiquidFlowableToEiii(ptr noundef nonnull align 8 dereferenceable(260) %0, i32 noundef %i.cw, i32 noundef %i.fo, i32 noundef %2)
  br i1 %i.fp, label %_ZN10ReflowScan28isLiquidHorizontallyFlowableEiii.exit105.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fq = call noundef zeroext i1 @_ZN10ReflowScan18isLiquidFlowableToEiii(ptr noundef nonnull align 8 dereferenceable(260) %0, i32 noundef %i.cx, i32 noundef %i.fo, i32 noundef %2)
  br i1 %i.fq, label %_ZN10ReflowScan28isLiquidHorizontallyFlowableEiii.exit105.thread, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fr = call noundef zeroext i1 @_ZN10ReflowScan18isLiquidFlowableToEiii(ptr noundef nonnull align 8 dereferenceable(260) %0, i32 noundef %1, i32 noundef %i.fo, i32 noundef %i.cy)
  br i1 %i.fr, label %_ZN10ReflowScan28isLiquidHorizontallyFlowableEiii.exit105.thread, label %_ZN10ReflowScan28isLiquidHorizontallyFlowableEiii.exit105

_ZN10ReflowScan28isLiquidHorizontallyFlowableEiii.exit105: ; preds = %bb.y
  %i.fs = call noundef zeroext i1 @_ZN10ReflowScan18isLiquidFlowableToEiii(ptr noundef nonnull align 8 dereferenceable(260) %0, i32 noundef %1, i32 noundef %i.fo, i32 noundef %i.cz)
  br i1 %i.fs, label %_ZN10ReflowScan28isLiquidHorizontallyFlowableEiii.exit105.thread, label %bb.ac

_ZN10ReflowScan28isLiquidHorizontallyFlowableEiii.exit105.thread: ; preds = %bb.w, %bb.x, %bb.y, %_ZN10ReflowScan28isLiquidHorizontallyFlowableEiii.exit105, %bb.u
  %i.ft = load ptr, ptr %i.da, align 8, !tbaa !18 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #12
  %i.fu = load i16, ptr %i.db, align 2, !tbaa !24
  %i.fv = add i16 %i.fu, %i.dc
  %i.fw = load i16, ptr %i.de, align 8, !tbaa !25
  %i.fx = trunc i64 %indvars.iv to i16
  %i.fy = add i16 %i.fx, 1
  %i.fz = add i16 %i.fy, %i.fw
  %i.ga = load i16, ptr %i.df, align 2, !tbaa !26
  %i.gb = add i16 %i.ga, %i.dd
  %.sroa.3.0.insert.ext.i106 = zext i16 %i.gb to i48
  %.sroa.3.0.insert.shift.i107 = shl nuw i48 %.sroa.3.0.insert.ext.i106, 32
  %.sroa.2.0.insert.ext.i108 = zext i16 %i.fz to i48
  %.sroa.2.0.insert.shift.i109 = shl nuw nsw i48 %.sroa.2.0.insert.ext.i108, 16
  %.sroa.2.0.insert.insert.i110 = or disjoint i48 %.sroa.3.0.insert.shift.i107, %.sroa.2.0.insert.shift.i109
  %.sroa.0.0.insert.ext.i111 = zext i16 %i.fv to i48
  %.sroa.0.0.insert.insert.i112 = or disjoint i48 %.sroa.2.0.insert.insert.i110, %.sroa.0.0.insert.ext.i111
  store i48 %.sroa.0.0.insert.insert.i112, ptr %8, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  store ptr %i.ft, ptr %5, align 8, !tbaa !146
  %i.gc = call { ptr, i8 } @_ZNSt10_HashtableIN4core8vector3dIsEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_insert_uniqueIRKS2_SI_NS4_10_AllocNodeISaINS4_10_Hash_nodeIS2_Lb1EEEEEEEESt4pairINS4_14_Node_iteratorIS2_Lb1ELb1EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(136) %i.ft, ptr noundef nonnull align 2 dereferenceable(6) %8, ptr noundef nonnull align 2 dereferenceable(6) %8, ptr noundef nonnull align 8 dereferenceable(8) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  %.fca.1.extract.i113 = extractvalue { ptr, i8 } %i.gc, 1
  %i.gd = trunc i8 %.fca.1.extract.i113 to i1
  br i1 %i.gd, label %bb.z, label %_ZN11UniqueQueueIN4core8vector3dIsEEE9push_backERKS2_.exit115

bb.z:                                             ; preds = %_ZN10ReflowScan28isLiquidHorizontallyFlowableEiii.exit105.thread
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ft, i64 104 ; 3 uses
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !120 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ft, i64 120
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !147
  %i.gi = getelementptr inbounds i8, ptr %i.gh, i64 -6
  %.not.i.i.i114 = icmp eq ptr %i.gf, %i.gi
  br i1 %.not.i.i.i114, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %i.gf, ptr noundef nonnull align 8 dereferenceable(6) %8, i64 6, i1 false), !tbaa.struct !121
  %i.gj = load ptr, ptr %i.ge, align 8, !tbaa !120
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 6
  store ptr %i.gk, ptr %i.ge, align 8, !tbaa !120
  br label %_ZN11UniqueQueueIN4core8vector3dIsEEE9push_backERKS2_.exit115

bb.ab:                                            ; preds = %bb.z
  %i.gl = getelementptr inbounds nuw i8, ptr %i.ft, i64 56
  call void @_ZNSt5dequeIN4core8vector3dIsEESaIS2_EE16_M_push_back_auxIJRKS2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.gl, ptr noundef nonnull align 2 dereferenceable(6) %8)
  br label %_ZN11UniqueQueueIN4core8vector3dIsEEE9push_backERKS2_.exit115

_ZN11UniqueQueueIN4core8vector3dIsEEE9push_backERKS2_.exit115: ; preds = %_ZN10ReflowScan28isLiquidHorizontallyFlowableEiii.exit105.thread, %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  br label %bb.ac

bb.ac:                                            ; preds = %_ZN10ReflowScan28isLiquidHorizontallyFlowableEiii.exit, %_ZN11UniqueQueueIN4core8vector3dIsEEE9push_backERKS2_.exit, %_ZNK14NodeDefManager3getERK7MapNode.exit104, %_ZN11UniqueQueueIN4core8vector3dIsEEE9push_backERKS2_.exit115, %_ZN10ReflowScan28isLiquidHorizontallyFlowableEiii.exit105, %bb.v, %bb.t
  %.174 = phi i8 [ 0, %_ZN10ReflowScan28isLiquidHorizontallyFlowableEiii.exit105 ], [ 0, %_ZNK14NodeDefManager3getERK7MapNode.exit104 ], [ %.073226, %bb.t ], [ %.073226, %_ZN11UniqueQueueIN4core8vector3dIsEEE9push_backERKS2_.exit115 ], [ 1, %bb.v ], [ 1, %_ZN11UniqueQueueIN4core8vector3dIsEEE9push_backERKS2_.exit ], [ 1, %_ZN10ReflowScan28isLiquidHorizontallyFlowableEiii.exit ] ; 2 uses
  %.1 = phi i8 [ 0, %_ZN10ReflowScan28isLiquidHorizontallyFlowableEiii.exit105 ], [ 0, %_ZNK14NodeDefManager3getERK7MapNode.exit104 ], [ 1, %bb.t ], [ 0, %_ZN11UniqueQueueIN4core8vector3dIsEEE9push_backERKS2_.exit115 ], [ 0, %bb.v ], [ 1, %_ZN11UniqueQueueIN4core8vector3dIsEEE9push_backERKS2_.exit ], [ 0, %_ZN10ReflowScan28isLiquidHorizontallyFlowableEiii.exit ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.gm = trunc nsw i64 %indvars.iv.next to i32
  %.not252 = icmp eq i64 %indvars.iv, 0
  br i1 %.not252, label %bb.i, label %_ZN8MapBlock14getNodeNoCheckEsss.exit103, !llvm.loop !141

bb.ad:                                            ; preds = %_ZN8MapBlock5isAirEv.exit, %bb.i
  %i.gn = phi i32 [ %i.cq, %bb.i ], [ %i.ci, %_ZN8MapBlock5isAirEv.exit ]
  %i.go = phi i32 [ %i.cr, %bb.i ], [ %i.cj, %_ZN8MapBlock5isAirEv.exit ] ; 3 uses
  %.281 = phi i1 [ %i.eh, %bb.i ], [ false, %_ZN8MapBlock5isAirEv.exit ]
  %.278 = phi i1 [ %i.ek, %bb.i ], [ false, %_ZN8MapBlock5isAirEv.exit ]
  %.275 = phi i1 [ %i.dh, %bb.i ], [ false, %_ZN8MapBlock5isAirEv.exit ]
  %.2 = phi i1 [ %i.dg, %bb.i ], [ false, %_ZN8MapBlock5isAirEv.exit ]
  %i.gp = sext i32 %i.h to i64
  %i.gq = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.gp ; 2 uses
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !21 ; 2 uses
  %.not.i116 = icmp eq ptr %i.gr, null
  br i1 %.not.i116, label %bb.ae, label %_ZN10ReflowScan11lookupBlockEiii.exit125.thread212

bb.ae:                                            ; preds = %bb.ad
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %i.gt = load i32, ptr %i.gs, align 8, !tbaa !22
  %i.gu = shl nuw i32 1, %i.h                     ; 2 uses
  %i.gv = and i32 %i.gt, %i.gu
  %i.gw = icmp eq i32 %i.gv, 0
  br i1 %i.gw, label %_ZN10ReflowScan11lookupBlockEiii.exit125, label %_ZN10ReflowScan11lookupBlockEiii.exit.thread

_ZN10ReflowScan11lookupBlockEiii.exit125:         ; preds = %bb.ae
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.gy = trunc i32 %i.b to i16
  %i.gz = add i16 %i.gy, -1
  %i.ha = trunc i32 %i.e to i16
  %i.hb = add i16 %i.ha, -1
  %i.hc = load i16, ptr %i.gx, align 8, !tbaa !24
  %i.hd = add i16 %i.gz, %i.hc
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.hf = load i16, ptr %i.he, align 2, !tbaa !25
  %i.hg = add i16 %i.hf, -1
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.hi = load i16, ptr %i.hh, align 4, !tbaa !26
  %i.hj = add i16 %i.hb, %i.hi
  %.sroa.3.0.insert.ext.i.i118 = zext i16 %i.hj to i48
  %.sroa.3.0.insert.shift.i.i119 = shl nuw i48 %.sroa.3.0.insert.ext.i.i118, 32
  %.sroa.2.0.insert.ext.i.i120 = zext i16 %i.hg to i48
  %.sroa.2.0.insert.shift.i.i121 = shl nuw nsw i48 %.sroa.2.0.insert.ext.i.i120, 16
  %.sroa.2.0.insert.insert.i.i122 = or disjoint i48 %.sroa.3.0.insert.shift.i.i119, %.sroa.2.0.insert.shift.i.i121
  %.sroa.0.0.insert.ext.i.i123 = zext i16 %i.hd to i48
  %.sroa.0.0.insert.insert.i.i124 = or disjoint i48 %.sroa.2.0.insert.insert.i.i122, %.sroa.0.0.insert.ext.i.i123
  %i.hk = load ptr, ptr %0, align 8, !tbaa !16
  %i.hl = call noundef ptr @_ZN3Map20getBlockNoCreateNoExEN4core8vector3dIsEE(ptr noundef nonnull align 8 dereferenceable(144) %i.hk, i48 %.sroa.0.0.insert.insert.i.i124) ; 3 uses
  store ptr %i.hl, ptr %i.gq, align 8, !tbaa !21
  %i.hm = load i32, ptr %i.gs, align 8, !tbaa !22
  %i.hn = or i32 %i.hm, %i.gu
  store i32 %i.hn, ptr %i.gs, align 8, !tbaa !22
  %.not87 = icmp eq ptr %i.hl, null
  br i1 %.not87, label %_ZN10ReflowScan11lookupBlockEiii.exit.thread, label %_ZN10ReflowScan11lookupBlockEiii.exit125.thread212

_ZN10ReflowScan11lookupBlockEiii.exit125.thread212: ; preds = %bb.ad, %_ZN10ReflowScan11lookupBlockEiii.exit125
  %.0.i117215 = phi ptr [ %i.hl, %_ZN10ReflowScan11lookupBlockEiii.exit125 ], [ %i.gr, %bb.ad ] ; 2 uses
  %31 = getelementptr inbounds nuw i8, ptr %.0.i117215, i64 16
  %32 = load ptr, ptr %31, align 8, !tbaa !69
  %33 = getelementptr inbounds nuw i8, ptr %.0.i117215, i64 36
  %34 = load i8, ptr %33, align 4, !tbaa !70, !range !71, !noundef !72
  %35 = trunc nuw i8 %34 to i1
  br i1 %35, label %_ZN8MapBlock14getNodeNoCheckEsss.exit127, label %36

36:                                               ; preds = %_ZN10ReflowScan11lookupBlockEiii.exit125.thread212
  %37 = zext i32 %i.go to i64
  %38 = zext i32 %i.gn to i64
  %sext222 = shl i64 %37, 48
  %39 = ashr exact i64 %sext222, 40
  %sext223 = shl i64 %38, 48
  %40 = ashr exact i64 %sext223, 48
  %41 = add nsw i64 %40, 240
  %42 = add nsw i64 %41, %39
  %43 = and i64 %42, 4294967295
  br label %_ZN8MapBlock14getNodeNoCheckEsss.exit127

_ZN8MapBlock14getNodeNoCheckEsss.exit127:         ; preds = %_ZN10ReflowScan11lookupBlockEiii.exit125.thread212, %36
  %44 = phi i64 [ %43, %36 ], [ 0, %_ZN10ReflowScan11lookupBlockEiii.exit125.thread212 ]
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %32, i64 %44
  %.sroa.0.0.copyload.i126 = load i32, ptr %i.ho, align 4
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !17 ; 2 uses
  %.sroa.0173.0.extract.trunc.mask = and i32 %.sroa.0.0.copyload.i126, 65535 ; 2 uses
  %i.hr = zext nneg i32 %.sroa.0173.0.extract.trunc.mask to i64 ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hq, i64 8
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !75
  %i.hu = load ptr, ptr %i.hq, align 8, !tbaa !76 ; 3 uses
  %i.hv = ptrtoint ptr %i.ht to i64
  %i.hw = ptrtoint ptr %i.hu to i64
  %i.hx = sub i64 %i.hv, %i.hw
  %i.hy = sdiv exact i64 %i.hx, 2072
  %i.hz = icmp ugt i64 %i.hy, %i.hr
  br i1 %i.hz, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %_ZN8MapBlock14getNodeNoCheckEsss.exit127
  %i.ia = getelementptr inbounds nuw [2072 x i8], ptr %i.hu, i64 %i.hr ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 16
  %i.ic = load i64, ptr %i.ib, align 8, !tbaa !80
  %i.id = icmp eq i64 %i.ic, 0
  br i1 %i.id, label %bb.ag, label %_ZNK14NodeDefManager3getERK7MapNode.exit128

bb.ag:                                            ; preds = %bb.af, %_ZN8MapBlock14getNodeNoCheckEsss.exit127
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hu, i64 259000
  br label %_ZNK14NodeDefManager3getERK7MapNode.exit128

_ZNK14NodeDefManager3getERK7MapNode.exit128:      ; preds = %bb.af, %bb.ag
  %i.if = phi ptr [ %i.ie, %bb.ag ], [ %i.ia, %bb.af ] ; 2 uses
  %i.ig = icmp eq i32 %.sroa.0173.0.extract.trunc.mask, 127
  %i.ih = getelementptr inbounds nuw i8, ptr %i.if, i64 1449
  %i.ii = load i8, ptr %i.ih, align 1, !tbaa !142 ; 2 uses
  %i.ij = icmp ne i8 %i.ii, 0                     ; 2 uses
  %or.cond3 = or i1 %.281, %i.ig
  %or.cond3.not = xor i1 %or.cond3, true
  %i.ik = xor i1 %.278, %i.ij
  %or.cond91 = and i1 %i.ik, %or.cond3.not
  br i1 %or.cond91, label %bb.ah, label %_ZN10ReflowScan11lookupBlockEiii.exit.thread

bb.ah:                                            ; preds = %_ZNK14NodeDefManager3getERK7MapNode.exit128
  br i1 %i.ij, label %bb.ai, label %bb.ax

bb.ai:                                            ; preds = %bb.ah
  %i.il = icmp eq i8 %i.ii, 1
  br i1 %i.il, label %_ZN10ReflowScan28isLiquidHorizontallyFlowableEiii.exit129.thread, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.im = add nsw i32 %1, 15                      ; 2 uses
  %i.in = sdiv i32 %i.im, 16                      ; 2 uses
  %i.io = srem i32 %i.im, 16
  %i.ip = add nsw i32 %i.g, %i.in                 ; 2 uses
  %i.iq = sext i32 %i.ip to i64
  %i.ir = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.iq ; 2 uses
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !21 ; 2 uses
  %.not.i.i151 = icmp eq ptr %i.is, null
  br i1 %.not.i.i151, label %bb.ak, label %_ZN10ReflowScan11lookupBlockEiii.exit.thread20.i152

bb.ak:                                            ; preds = %bb.aj
  %i.it = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %i.iu = load i32, ptr %i.it, align 8, !tbaa !22
  %i.iv = shl nuw i32 1, %i.ip                    ; 2 uses
  %i.iw = and i32 %i.iu, %i.iv
  %i.ix = icmp eq i32 %i.iw, 0
  br i1 %i.ix, label %_ZN10ReflowScan11lookupBlockEiii.exit.i160, label %_ZN10ReflowScan18isLiquidFlowableToEiii.exit169.thread

_ZN10ReflowScan11lookupBlockEiii.exit.i160:       ; preds = %bb.ak
  %i.iy = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.iz = trunc i32 %i.in to i16
  %i.ja = add i16 %i.iz, -1
  %i.jb = trunc i32 %i.e to i16
  %i.jc = add i16 %i.jb, -1
  %i.jd = load i16, ptr %i.iy, align 8, !tbaa !24
  %i.je = add i16 %i.ja, %i.jd
  %i.jf = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.jg = load i16, ptr %i.jf, align 2, !tbaa !25
  %i.jh = add i16 %i.jg, -1
  %i.ji = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.jj = load i16, ptr %i.ji, align 4, !tbaa !26
  %i.jk = add i16 %i.jc, %i.jj
  %.sroa.3.0.insert.ext.i.i.i161 = zext i16 %i.jk to i48
  %.sroa.3.0.insert.shift.i.i.i162 = shl nuw i48 %.sroa.3.0.insert.ext.i.i.i161, 32
  %.sroa.2.0.insert.ext.i.i.i163 = zext i16 %i.jh to i48
  %.sroa.2.0.insert.shift.i.i.i164 = shl nuw nsw i48 %.sroa.2.0.insert.ext.i.i.i163, 16
  %.sroa.2.0.insert.insert.i.i.i165 = or disjoint i48 %.sroa.3.0.insert.shift.i.i.i162, %.sroa.2.0.insert.shift.i.i.i164
  %.sroa.0.0.insert.ext.i.i.i166 = zext i16 %i.je to i48
  %.sroa.0.0.insert.insert.i.i.i167 = or disjoint i48 %.sroa.2.0.insert.insert.i.i.i165, %.sroa.0.0.insert.ext.i.i.i166
  %i.jl = load ptr, ptr %0, align 8, !tbaa !16
  %i.jm = call noundef ptr @_ZN3Map20getBlockNoCreateNoExEN4core8vector3dIsEE(ptr noundef nonnull align 8 dereferenceable(144) %i.jl, i48 %.sroa.0.0.insert.insert.i.i.i167) ; 3 uses
  store ptr %i.jm, ptr %i.ir, align 8, !tbaa !21
  %i.jn = load i32, ptr %i.it, align 8, !tbaa !22
  %i.jo = or i32 %i.jn, %i.iv
  store i32 %i.jo, ptr %i.it, align 8, !tbaa !22
  %.not.i168 = icmp eq ptr %i.jm, null
  br i1 %.not.i168, label %_ZN10ReflowScan18isLiquidFlowableToEiii.exit169.thread, label %_ZN10ReflowScan11lookupBlockEiii.exit.thread20.i152

_ZN10ReflowScan11lookupBlockEiii.exit.thread20.i152: ; preds = %_ZN10ReflowScan11lookupBlockEiii.exit.i160, %bb.aj
  %.0.i23.i153 = phi ptr [ %i.jm, %_ZN10ReflowScan11lookupBlockEiii.exit.i160 ], [ %i.is, %bb.aj ] ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %.0.i23.i153, i64 16
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !69
  %i.jr = getelementptr inbounds nuw i8, ptr %.0.i23.i153, i64 36
  %i.js = load i8, ptr %i.jr, align 4, !tbaa !70, !range !71, !noundef !72
  %i.jt = trunc nuw i8 %i.js to i1
  br i1 %i.jt, label %_ZN8MapBlock14getNodeNoCheckEsss.exit.i156, label %bb.al

bb.al:                                            ; preds = %_ZN10ReflowScan11lookupBlockEiii.exit.thread20.i152
  %45 = zext i32 %i.go to i64
  %46 = zext i32 %i.io to i64
  %sext.i154 = shl i64 %45, 48
  %47 = ashr exact i64 %sext.i154, 40
  %sext26.i155 = shl i64 %46, 48
  %48 = ashr exact i64 %sext26.i155, 48
  %i.ju = add nsw i64 %48, 240
  %i.jv = add nsw i64 %i.ju, %47
  %i.jw = and i64 %i.jv, 4294967295
  br label %_ZN8MapBlock14getNodeNoCheckEsss.exit.i156

_ZN8MapBlock14getNodeNoCheckEsss.exit.i156:       ; preds = %bb.al, %_ZN10ReflowScan11lookupBlockEiii.exit.thread20.i152
  %i.jx = phi i64 [ %i.jw, %bb.al ], [ 0, %_ZN10ReflowScan11lookupBlockEiii.exit.thread20.i152 ]
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %i.jq, i64 %i.jx
  %.sroa.0.0.copyload.i.i157 = load i32, ptr %i.jy, align 4
  %i.jz = and i32 %.sroa.0.0.copyload.i.i157, 65535 ; 2 uses
  %.not16.i158 = icmp eq i32 %i.jz, 127
  br i1 %.not16.i158, label %_ZN10ReflowScan18isLiquidFlowableToEiii.exit169.thread, label %bb.am

bb.am:                                            ; preds = %_ZN8MapBlock14getNodeNoCheckEsss.exit.i156
  %i.ka = load ptr, ptr %i.hp, align 8, !tbaa !17 ; 2 uses
  %i.kb = zext nneg i32 %i.jz to i64              ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %i.ka, i64 8
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !75
  %i.ke = load ptr, ptr %i.ka, align 8, !tbaa !76 ; 3 uses
  %i.kf = ptrtoint ptr %i.kd to i64
  %i.kg = ptrtoint ptr %i.ke to i64
  %i.kh = sub i64 %i.kf, %i.kg
  %i.ki = sdiv exact i64 %i.kh, 2072
  %i.kj = icmp ugt i64 %i.ki, %i.kb
  br i1 %i.kj, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.kk = getelementptr inbounds nuw [2072 x i8], ptr %i.ke, i64 %i.kb ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 16
  %i.km = load i64, ptr %i.kl, align 8, !tbaa !80
  %i.kn = icmp eq i64 %i.km, 0
  br i1 %i.kn, label %bb.ao, label %_ZN10ReflowScan18isLiquidFlowableToEiii.exit169

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.ko = getelementptr inbounds nuw i8, ptr %i.ke, i64 259000
  br label %_ZN10ReflowScan18isLiquidFlowableToEiii.exit169

_ZN10ReflowScan18isLiquidFlowableToEiii.exit169:  ; preds = %bb.an, %bb.ao
  %i.kp = phi ptr [ %i.ko, %bb.ao ], [ %i.kk, %bb.an ]
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 1534
  %i.kr = load i8, ptr %i.kq, align 2, !tbaa !122, !range !71, !noundef !72
  %i.ks = trunc nuw i8 %i.kr to i1
  br i1 %i.ks, label %_ZN10ReflowScan28isLiquidHorizontallyFlowableEiii.exit129.thread, label %_ZN10ReflowScan18isLiquidFlowableToEiii.exit169.thread

_ZN10ReflowScan18isLiquidFlowableToEiii.exit169.thread: ; preds = %_ZN8MapBlock14getNodeNoCheckEsss.exit.i156, %_ZN10ReflowScan11lookupBlockEiii.exit.i160, %bb.ak, %_ZN10ReflowScan18isLiquidFlowableToEiii.exit169
  %i.kt = add nsw i32 %1, 17                      ; 2 uses
  %i.ku = sdiv i32 %i.kt, 16                      ; 2 uses
  %i.kv = srem i32 %i.kt, 16
  %i.kw = add nsw i32 %i.g, %i.ku                 ; 2 uses
  %i.kx = sext i32 %i.kw to i64
  %i.ky = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.kx ; 2 uses
  %i.kz = load ptr, ptr %i.ky, align 8, !tbaa !21 ; 2 uses
  %.not.i.i = icmp eq ptr %i.kz, null
  br i1 %.not.i.i, label %bb.ap, label %_ZN10ReflowScan11lookupBlockEiii.exit.thread20.i

bb.ap:                                            ; preds = %_ZN10ReflowScan18isLiquidFlowableToEiii.exit169.thread
  %i.la = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %i.lb = load i32, ptr %i.la, align 8, !tbaa !22
  %i.lc = shl nuw i32 1, %i.kw                    ; 2 uses
  %i.ld = and i32 %i.lb, %i.lc
  %i.le = icmp eq i32 %i.ld, 0
  br i1 %i.le, label %_ZN10ReflowScan11lookupBlockEiii.exit.i, label %_ZN10ReflowScan18isLiquidFlowableToEiii.exit.thread

_ZN10ReflowScan11lookupBlockEiii.exit.i:          ; preds = %bb.ap
  %i.lf = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.lg = trunc i32 %i.ku to i16
  %i.lh = add i16 %i.lg, -1
  %i.li = trunc i32 %i.e to i16
  %i.lj = add i16 %i.li, -1
  %i.lk = load i16, ptr %i.lf, align 8, !tbaa !24
  %i.ll = add i16 %i.lh, %i.lk
  %i.lm = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.ln = load i16, ptr %i.lm, align 2, !tbaa !25
  %i.lo = add i16 %i.ln, -1
  %i.lp = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.lq = load i16, ptr %i.lp, align 4, !tbaa !26
  %i.lr = add i16 %i.lj, %i.lq
  %.sroa.3.0.insert.ext.i.i.i = zext i16 %i.lr to i48
  %.sroa.3.0.insert.shift.i.i.i = shl nuw i48 %.sroa.3.0.insert.ext.i.i.i, 32
  %.sroa.2.0.insert.ext.i.i.i = zext i16 %i.lo to i48
  %.sroa.2.0.insert.shift.i.i.i = shl nuw nsw i48 %.sroa.2.0.insert.ext.i.i.i, 16
  %.sroa.2.0.insert.insert.i.i.i = or disjoint i48 %.sroa.3.0.insert.shift.i.i.i, %.sroa.2.0.insert.shift.i.i.i
  %.sroa.0.0.insert.ext.i.i.i = zext i16 %i.ll to i48
  %.sroa.0.0.insert.insert.i.i.i = or disjoint i48 %.sroa.2.0.insert.insert.i.i.i, %.sroa.0.0.insert.ext.i.i.i
  %i.ls = load ptr, ptr %0, align 8, !tbaa !16
  %i.lt = call noundef ptr @_ZN3Map20getBlockNoCreateNoExEN4core8vector3dIsEE(ptr noundef nonnull align 8 dereferenceable(144) %i.ls, i48 %.sroa.0.0.insert.insert.i.i.i) ; 3 uses
  store ptr %i.lt, ptr %i.ky, align 8, !tbaa !21
  %i.lu = load i32, ptr %i.la, align 8, !tbaa !22
  %i.lv = or i32 %i.lu, %i.lc
  store i32 %i.lv, ptr %i.la, align 8, !tbaa !22
  %.not.i150 = icmp eq ptr %i.lt, null
  br i1 %.not.i150, label %_ZN10ReflowScan18isLiquidFlowableToEiii.exit.thread, label %_ZN10ReflowScan11lookupBlockEiii.exit.thread20.i

_ZN10ReflowScan11lookupBlockEiii.exit.thread20.i: ; preds = %_ZN10ReflowScan11lookupBlockEiii.exit.i, %_ZN10ReflowScan18isLiquidFlowableToEiii.exit169.thread
  %.0.i23.i = phi ptr [ %i.lt, %_ZN10ReflowScan11lookupBlockEiii.exit.i ], [ %i.kz, %_ZN10ReflowScan18isLiquidFlowableToEiii.exit169.thread ] ; 2 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %.0.i23.i, i64 16
  %i.lx = load ptr, ptr %i.lw, align 8, !tbaa !69
  %i.ly = getelementptr inbounds nuw i8, ptr %.0.i23.i, i64 36
  %i.lz = load i8, ptr %i.ly, align 4, !tbaa !70, !range !71, !noundef !72
  %i.ma = trunc nuw i8 %i.lz to i1
  br i1 %i.ma, label %_ZN8MapBlock14getNodeNoCheckEsss.exit.i, label %bb.aq

bb.aq:                                            ; preds = %_ZN10ReflowScan11lookupBlockEiii.exit.thread20.i
  %49 = zext i32 %i.go to i64
  %50 = zext i32 %i.kv to i64
  %sext.i = shl i64 %49, 48
  %51 = ashr exact i64 %sext.i, 40
  %sext26.i = shl i64 %50, 48
  %52 = ashr exact i64 %sext26.i, 48
  %i.mb = add nsw i64 %52, 240
  %i.mc = add nsw i64 %i.mb, %51
  %i.md = and i64 %i.mc, 4294967295
  br label %_ZN8MapBlock14getNodeNoCheckEsss.exit.i

_ZN8MapBlock14getNodeNoCheckEsss.exit.i:          ; preds = %bb.aq, %_ZN10ReflowScan11lookupBlockEiii.exit.thread20.i
  %i.me = phi i64 [ %i.md, %bb.aq ], [ 0, %_ZN10ReflowScan11lookupBlockEiii.exit.thread20.i ]
  %i.mf = getelementptr inbounds nuw [4 x i8], ptr %i.lx, i64 %i.me
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.mf, align 4
  %i.mg = and i32 %.sroa.0.0.copyload.i.i, 65535  ; 2 uses
  %.not16.i = icmp eq i32 %i.mg, 127
  br i1 %.not16.i, label %_ZN10ReflowScan18isLiquidFlowableToEiii.exit.thread, label %bb.ar

bb.ar:                                            ; preds = %_ZN8MapBlock14getNodeNoCheckEsss.exit.i
  %i.mh = load ptr, ptr %i.hp, align 8, !tbaa !17 ; 2 uses
  %i.mi = zext nneg i32 %i.mg to i64              ; 2 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mh, i64 8
  %i.mk = load ptr, ptr %i.mj, align 8, !tbaa !75
  %i.ml = load ptr, ptr %i.mh, align 8, !tbaa !76 ; 3 uses
  %i.mm = ptrtoint ptr %i.mk to i64
  %i.mn = ptrtoint ptr %i.ml to i64
  %i.mo = sub i64 %i.mm, %i.mn
  %i.mp = sdiv exact i64 %i.mo, 2072
  %i.mq = icmp ugt i64 %i.mp, %i.mi
  br i1 %i.mq, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.mr = getelementptr inbounds nuw [2072 x i8], ptr %i.ml, i64 %i.mi ; 2 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 16
  %i.mt = load i64, ptr %i.ms, align 8, !tbaa !80
  %i.mu = icmp eq i64 %i.mt, 0
  br i1 %i.mu, label %bb.at, label %_ZN10ReflowScan18isLiquidFlowableToEiii.exit

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.mv = getelementptr inbounds nuw i8, ptr %i.ml, i64 259000
  br label %_ZN10ReflowScan18isLiquidFlowableToEiii.exit

_ZN10ReflowScan18isLiquidFlowableToEiii.exit:     ; preds = %bb.as, %bb.at
  %i.mw = phi ptr [ %i.mv, %bb.at ], [ %i.mr, %bb.as ]
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 1534
  %i.my = load i8, ptr %i.mx, align 2, !tbaa !122, !range !71, !noundef !72
  %i.mz = trunc nuw i8 %i.my to i1
  br i1 %i.mz, label %_ZN10ReflowScan28isLiquidHorizontallyFlowableEiii.exit129.thread, label %_ZN10ReflowScan18isLiquidFlowableToEiii.exit.thread

_ZN10ReflowScan18isLiquidFlowableToEiii.exit.thread: ; preds = %_ZN8MapBlock14getNodeNoCheckEsss.exit.i, %_ZN10ReflowScan11lookupBlockEiii.exit.i, %bb.ap, %_ZN10ReflowScan18isLiquidFlowableToEiii.exit
  %i.na = add nsw i32 %2, -1
  %i.nb = call noundef zeroext i1 @_ZN10ReflowScan18isLiquidFlowableToEiii(ptr noundef nonnull align 8 dereferenceable(260) %0, i32 noundef %1, i32 noundef -1, i32 noundef %i.na)
  br i1 %i.nb, label %_ZN10ReflowScan28isLiquidHorizontallyFlowableEiii.exit129.thread, label %_ZN10ReflowScan28isLiquidHorizontallyFlowableEiii.exit129

_ZN10ReflowScan28isLiquidHorizontallyFlowableEiii.exit129: ; preds = %_ZN10ReflowScan18isLiquidFlowableToEiii.exit.thread
  %i.nc = add nsw i32 %2, 1
  %i.nd = call noundef zeroext i1 @_ZN10ReflowScan18isLiquidFlowableToEiii(ptr noundef nonnull align 8 dereferenceable(260) %0, i32 noundef %1, i32 noundef -1, i32 noundef %i.nc)
  br i1 %i.nd, label %_ZN10ReflowScan28isLiquidHorizontallyFlowableEiii.exit129.thread, label %_ZN10ReflowScan11lookupBlockEiii.exit.thread

_ZN10ReflowScan28isLiquidHorizontallyFlowableEiii.exit129.thread: ; preds = %_ZN10ReflowScan18isLiquidFlowableToEiii.exit169, %_ZN10ReflowScan18isLiquidFlowableToEiii.exit, %_ZN10ReflowScan18isLiquidFlowableToEiii.exit.thread, %_ZN10ReflowScan28isLiquidHorizontallyFlowableEiii.exit129, %bb.ai
  %i.ne = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.nf = load ptr, ptr %i.ne, align 8, !tbaa !18 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #12
  %i.ng = getelementptr inbounds nuw i8, ptr %0, i64 22
  %i.nh = trunc i32 %1 to i16
  %i.ni = trunc i32 %2 to i16
  %i.nj = load i16, ptr %i.ng, align 2, !tbaa !24
  %i.nk = add i16 %i.nj, %i.nh
  %i.nl = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.nm = load i16, ptr %i.nl, align 8, !tbaa !25
  %i.nn = add i16 %i.nm, -1
  %i.no = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.np = load i16, ptr %i.no, align 2, !tbaa !26
  %i.nq = add i16 %i.np, %i.ni
  %.sroa.3.0.insert.ext.i130 = zext i16 %i.nq to i48
  %.sroa.3.0.insert.shift.i131 = shl nuw i48 %.sroa.3.0.insert.ext.i130, 32
  %.sroa.2.0.insert.ext.i132 = zext i16 %i.nn to i48
  %.sroa.2.0.insert.shift.i133 = shl nuw nsw i48 %.sroa.2.0.insert.ext.i132, 16
  %.sroa.2.0.insert.insert.i134 = or disjoint i48 %.sroa.3.0.insert.shift.i131, %.sroa.2.0.insert.shift.i133
  %.sroa.0.0.insert.ext.i135 = zext i16 %i.nk to i48
  %.sroa.0.0.insert.insert.i136 = or disjoint i48 %.sroa.2.0.insert.insert.i134, %.sroa.0.0.insert.ext.i135
  store i48 %.sroa.0.0.insert.insert.i136, ptr %9, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  store ptr %i.nf, ptr %4, align 8, !tbaa !146
  %i.nr = call { ptr, i8 } @_ZNSt10_HashtableIN4core8vector3dIsEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_insert_uniqueIRKS2_SI_NS4_10_AllocNodeISaINS4_10_Hash_nodeIS2_Lb1EEEEEEEESt4pairINS4_14_Node_iteratorIS2_Lb1ELb1EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(136) %i.nf, ptr noundef nonnull align 2 dereferenceable(6) %9, ptr noundef nonnull align 2 dereferenceable(6) %9, ptr noundef nonnull align 8 dereferenceable(8) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  %.fca.1.extract.i137 = extractvalue { ptr, i8 } %i.nr, 1
  %i.ns = trunc i8 %.fca.1.extract.i137 to i1
  br i1 %i.ns, label %bb.au, label %_ZN11UniqueQueueIN4core8vector3dIsEEE9push_backERKS2_.exit139

bb.au:                                            ; preds = %_ZN10ReflowScan28isLiquidHorizontallyFlowableEiii.exit129.thread
  %i.nt = getelementptr inbounds nuw i8, ptr %i.nf, i64 104 ; 3 uses
  %i.nu = load ptr, ptr %i.nt, align 8, !tbaa !120 ; 2 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nf, i64 120
  %i.nw = load ptr, ptr %i.nv, align 8, !tbaa !147
  %i.nx = getelementptr inbounds i8, ptr %i.nw, i64 -6
  %.not.i.i.i138 = icmp eq ptr %i.nu, %i.nx
  br i1 %.not.i.i.i138, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %i.nu, ptr noundef nonnull align 8 dereferenceable(6) %9, i64 6, i1 false), !tbaa.struct !121
  %i.ny = load ptr, ptr %i.nt, align 8, !tbaa !120
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ny, i64 6
  store ptr %i.nz, ptr %i.nt, align 8, !tbaa !120
  br label %_ZN11UniqueQueueIN4core8vector3dIsEEE9push_backERKS2_.exit139

bb.aw:                                            ; preds = %bb.au
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nf, i64 56
  call void @_ZNSt5dequeIN4core8vector3dIsEESaIS2_EE16_M_push_back_auxIJRKS2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.oa, ptr noundef nonnull align 2 dereferenceable(6) %9)
  br label %_ZN11UniqueQueueIN4core8vector3dIsEEE9push_backERKS2_.exit139

_ZN11UniqueQueueIN4core8vector3dIsEEE9push_backERKS2_.exit139: ; preds = %_ZN10ReflowScan28isLiquidHorizontallyFlowableEiii.exit129.thread, %bb.av, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  br label %_ZN10ReflowScan11lookupBlockEiii.exit.thread

bb.ax:                                            ; preds = %bb.ah
  br i1 %.2, label %_ZN10ReflowScan11lookupBlockEiii.exit.thread, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ob = getelementptr inbounds nuw i8, ptr %i.if, i64 1534
  %i.oc = load i8, ptr %i.ob, align 2, !tbaa !122, !range !71, !noundef !72
  %i.od = trunc nuw i8 %i.oc to i1
  br i1 %i.od, label %bb.bb, label %bb.az

bb.az:                                            ; preds = %bb.ay
  br i1 %.275, label %_ZN10ReflowScan11lookupBlockEiii.exit.thread, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.oe = call noundef zeroext i1 @_ZN10ReflowScan28isLiquidHorizontallyFlowableEiii(ptr noundef nonnull align 8 dereferenceable(260) %0, i32 noundef %1, i32 noundef 0, i32 noundef %2)
  br i1 %i.oe, label %bb.bb, label %_ZN10ReflowScan11lookupBlockEiii.exit.thread

bb.bb:                                            ; preds = %bb.ba, %bb.ay
  %i.of = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.og = load ptr, ptr %i.of, align 8, !tbaa !18 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #12
  %i.oh = getelementptr inbounds nuw i8, ptr %0, i64 22
  %i.oi = trunc i32 %1 to i16
  %i.oj = trunc i32 %2 to i16
  %i.ok = load i16, ptr %i.oh, align 2, !tbaa !24
  %i.ol = add i16 %i.ok, %i.oi
  %i.om = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.on = load i16, ptr %i.om, align 8, !tbaa !25
  %i.oo = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.op = load i16, ptr %i.oo, align 2, !tbaa !26
  %i.oq = add i16 %i.op, %i.oj
  %.sroa.3.0.insert.ext.i140 = zext i16 %i.oq to i48
  %.sroa.3.0.insert.shift.i141 = shl nuw i48 %.sroa.3.0.insert.ext.i140, 32
  %.sroa.2.0.insert.ext.i142 = zext i16 %i.on to i48
  %.sroa.2.0.insert.shift.i143 = shl nuw nsw i48 %.sroa.2.0.insert.ext.i142, 16
  %.sroa.2.0.insert.insert.i144 = or disjoint i48 %.sroa.3.0.insert.shift.i141, %.sroa.2.0.insert.shift.i143
  %.sroa.0.0.insert.ext.i145 = zext i16 %i.ol to i48
  %.sroa.0.0.insert.insert.i146 = or disjoint i48 %.sroa.2.0.insert.insert.i144, %.sroa.0.0.insert.ext.i145
  store i48 %.sroa.0.0.insert.insert.i146, ptr %10, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  store ptr %i.og, ptr %3, align 8, !tbaa !146
  %i.or = call { ptr, i8 } @_ZNSt10_HashtableIN4core8vector3dIsEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_insert_uniqueIRKS2_SI_NS4_10_AllocNodeISaINS4_10_Hash_nodeIS2_Lb1EEEEEEEESt4pairINS4_14_Node_iteratorIS2_Lb1ELb1EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(136) %i.og, ptr noundef nonnull align 2 dereferenceable(6) %10, ptr noundef nonnull align 2 dereferenceable(6) %10, ptr noundef nonnull align 8 dereferenceable(8) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  %.fca.1.extract.i147 = extractvalue { ptr, i8 } %i.or, 1
  %i.os = trunc i8 %.fca.1.extract.i147 to i1
  br i1 %i.os, label %bb.bc, label %_ZN11UniqueQueueIN4core8vector3dIsEEE9push_backERKS2_.exit149

bb.bc:                                            ; preds = %bb.bb
  %i.ot = getelementptr inbounds nuw i8, ptr %i.og, i64 104 ; 3 uses
  %i.ou = load ptr, ptr %i.ot, align 8, !tbaa !120 ; 2 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %i.og, i64 120
  %i.ow = load ptr, ptr %i.ov, align 8, !tbaa !147
  %i.ox = getelementptr inbounds i8, ptr %i.ow, i64 -6
  %.not.i.i.i148 = icmp eq ptr %i.ou, %i.ox
  br i1 %.not.i.i.i148, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %i.ou, ptr noundef nonnull align 8 dereferenceable(6) %10, i64 6, i1 false), !tbaa.struct !121
  %i.oy = load ptr, ptr %i.ot, align 8, !tbaa !120
  %i.oz = getelementptr inbounds nuw i8, ptr %i.oy, i64 6
  store ptr %i.oz, ptr %i.ot, align 8, !tbaa !120
  br label %_ZN11UniqueQueueIN4core8vector3dIsEEE9push_backERKS2_.exit149

bb.be:                                            ; preds = %bb.bc
  %i.pa = getelementptr inbounds nuw i8, ptr %i.og, i64 56
  call void @_ZNSt5dequeIN4core8vector3dIsEESaIS2_EE16_M_push_back_auxIJRKS2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.pa, ptr noundef nonnull align 2 dereferenceable(6) %10)
  br label %_ZN11UniqueQueueIN4core8vector3dIsEEE9push_backERKS2_.exit149

_ZN11UniqueQueueIN4core8vector3dIsEEE9push_backERKS2_.exit149: ; preds = %bb.bb, %bb.bd, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #12
  br label %_ZN10ReflowScan11lookupBlockEiii.exit.thread

_ZN10ReflowScan11lookupBlockEiii.exit.thread:     ; preds = %bb.ae, %bb.b, %_ZNK14NodeDefManager3getERK7MapNode.exit128, %bb.ax, %bb.az, %bb.ba, %_ZN11UniqueQueueIN4core8vector3dIsEEE9push_backERKS2_.exit149, %_ZN10ReflowScan28isLiquidHorizontallyFlowableEiii.exit129, %_ZN11UniqueQueueIN4core8vector3dIsEEE9push_backERKS2_.exit139, %_ZN10ReflowScan11lookupBlockEiii.exit125, %_ZN10ReflowScan11lookupBlockEiii.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN10ReflowScan28isLiquidHorizontallyFlowableEiii(ptr noundef nonnull align 8 dereferenceable(260) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = add nsw i32 %1, -1
  %i.b = tail call noundef zeroext i1 @_ZN10ReflowScan18isLiquidFlowableToEiii(ptr noundef nonnull align 8 dereferenceable(260) %0, i32 noundef %i.a, i32 noundef %2, i32 noundef %3)
  br i1 %i.b, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = add nsw i32 %1, 1
  %i.d = tail call noundef zeroext i1 @_ZN10ReflowScan18isLiquidFlowableToEiii(ptr noundef nonnull align 8 dereferenceable(260) %0, i32 noundef %i.c, i32 noundef %2, i32 noundef %3)
  br i1 %i.d, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = add nsw i32 %3, -1
  %i.f = tail call noundef zeroext i1 @_ZN10ReflowScan18isLiquidFlowableToEiii(ptr noundef nonnull align 8 dereferenceable(260) %0, i32 noundef %1, i32 noundef %2, i32 noundef %i.e)
  br i1 %i.f, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = add nsw i32 %3, 1
  %i.h = tail call noundef zeroext i1 @_ZN10ReflowScan18isLiquidFlowableToEiii(ptr noundef nonnull align 8 dereferenceable(260) %0, i32 noundef %1, i32 noundef %2, i32 noundef %i.g)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.i = phi i1 [ true, %bb.c ], [ true, %bb.b ], [ true, %bb.a ], [ %i.h, %bb.d ]
  ret i1 %i.i
}

declare noundef ptr @_ZN3Map20getBlockNoCreateNoExEN4core8vector3dIsEE(ptr noundef nonnull align 8 dereferenceable(144), i48) local_unnamed_addr #5

declare void @_ZN8MapBlock19actuallyUpdateIsAirEv(ptr noundef nonnull align 8 dereferenceable(328)) local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN10ReflowScan18isLiquidFlowableToEiii(ptr noundef nonnull align 8 dereferenceable(260) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = add nsw i32 %1, 16                       ; 2 uses
  %i.b = sdiv i32 %i.a, 16                        ; 2 uses
  %i.c = srem i32 %i.a, 16
  %i.d = add nsw i32 %2, 16                       ; 2 uses
  %i.e = sdiv i32 %i.d, 16                        ; 2 uses
  %i.f = srem i32 %i.d, 16
  %i.g = add nsw i32 %3, 16                       ; 2 uses
  %i.h = sdiv i32 %i.g, 16                        ; 2 uses
  %i.i = srem i32 %i.g, 16
  %i.j = mul nsw i32 %i.e, 9
  %i.k = add nsw i32 %i.j, %i.b
  %i.l = mul nsw i32 %i.h, 3
  %i.m = add nsw i32 %i.k, %i.l                   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.o = sext i32 %i.m to i64
  %i.p = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.o ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !21   ; 2 uses
  %.not.i = icmp eq ptr %i.q, null
  br i1 %.not.i, label %bb.b, label %_ZN10ReflowScan11lookupBlockEiii.exit.thread20

bb.b:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !22
  %i.t = shl nuw i32 1, %i.m                      ; 2 uses
  %i.u = and i32 %i.s, %i.t
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %_ZN10ReflowScan11lookupBlockEiii.exit, label %_ZN10ReflowScan11lookupBlockEiii.exit.thread

_ZN10ReflowScan11lookupBlockEiii.exit:            ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = trunc i32 %i.b to i16
  %i.y = add i16 %i.x, -1
  %i.z = trunc i32 %i.e to i16
  %i.aa = add i16 %i.z, -1
  %i.ab = trunc i32 %i.h to i16
  %i.ac = add i16 %i.ab, -1
  %i.ad = load i16, ptr %i.w, align 8, !tbaa !24
  %i.ae = add i16 %i.y, %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.ag = load i16, ptr %i.af, align 2, !tbaa !25
  %i.ah = add i16 %i.aa, %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.aj = load i16, ptr %i.ai, align 4, !tbaa !26
  %i.ak = add i16 %i.ac, %i.aj
  %.sroa.3.0.insert.ext.i.i = zext i16 %i.ak to i48
  %.sroa.3.0.insert.shift.i.i = shl nuw i48 %.sroa.3.0.insert.ext.i.i, 32
  %.sroa.2.0.insert.ext.i.i = zext i16 %i.ah to i48
  %.sroa.2.0.insert.shift.i.i = shl nuw nsw i48 %.sroa.2.0.insert.ext.i.i, 16
  %.sroa.2.0.insert.insert.i.i = or disjoint i48 %.sroa.3.0.insert.shift.i.i, %.sroa.2.0.insert.shift.i.i
  %.sroa.0.0.insert.ext.i.i = zext i16 %i.ae to i48
  %.sroa.0.0.insert.insert.i.i = or disjoint i48 %.sroa.2.0.insert.insert.i.i, %.sroa.0.0.insert.ext.i.i
  %i.al = load ptr, ptr %0, align 8, !tbaa !16
  %i.am = tail call noundef ptr @_ZN3Map20getBlockNoCreateNoExEN4core8vector3dIsEE(ptr noundef nonnull align 8 dereferenceable(144) %i.al, i48 %.sroa.0.0.insert.insert.i.i) ; 3 uses
  store ptr %i.am, ptr %i.p, align 8, !tbaa !21
  %i.an = load i32, ptr %i.r, align 8, !tbaa !22
  %i.ao = or i32 %i.an, %i.t
  store i32 %i.ao, ptr %i.r, align 8, !tbaa !22
  %.not = icmp eq ptr %i.am, null
  br i1 %.not, label %_ZN10ReflowScan11lookupBlockEiii.exit.thread, label %_ZN10ReflowScan11lookupBlockEiii.exit.thread20

_ZN10ReflowScan11lookupBlockEiii.exit.thread20:   ; preds = %bb.a, %_ZN10ReflowScan11lookupBlockEiii.exit
  %.0.i23 = phi ptr [ %i.am, %_ZN10ReflowScan11lookupBlockEiii.exit ], [ %i.q, %bb.a ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.i23, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !69
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.i23, i64 36
  %i.as = load i8, ptr %i.ar, align 4, !tbaa !70, !range !71, !noundef !72
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %_ZN8MapBlock14getNodeNoCheckEsss.exit, label %bb.c

bb.c:                                             ; preds = %_ZN10ReflowScan11lookupBlockEiii.exit.thread20
  %4 = zext i32 %i.i to i64
  %5 = zext i32 %i.f to i64
  %6 = zext i32 %i.c to i64
  %sext = shl i64 %4, 48
  %7 = ashr exact i64 %sext, 40
  %sext25 = shl i64 %5, 48
  %8 = ashr exact i64 %sext25, 44
  %sext26 = shl i64 %6, 48
  %9 = ashr exact i64 %sext26, 48
  %i.au = add nsw i64 %8, %9
  %i.av = add nsw i64 %i.au, %7
  %i.aw = and i64 %i.av, 4294967295
  br label %_ZN8MapBlock14getNodeNoCheckEsss.exit

_ZN8MapBlock14getNodeNoCheckEsss.exit:            ; preds = %_ZN10ReflowScan11lookupBlockEiii.exit.thread20, %bb.c
  %i.ax = phi i64 [ %i.aw, %bb.c ], [ 0, %_ZN10ReflowScan11lookupBlockEiii.exit.thread20 ]
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.ax
  %.sroa.0.0.copyload.i = load i32, ptr %i.ay, align 4
  %i.az = and i32 %.sroa.0.0.copyload.i, 65535    ; 2 uses
  %.not16 = icmp eq i32 %i.az, 127
  br i1 %.not16, label %_ZN10ReflowScan11lookupBlockEiii.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZN8MapBlock14getNodeNoCheckEsss.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !17 ; 2 uses
  %i.bc = zext nneg i32 %i.az to i64              ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !75
  %i.bf = load ptr, ptr %i.bb, align 8, !tbaa !76 ; 3 uses
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = ptrtoint ptr %i.bf to i64
  %i.bi = sub i64 %i.bg, %i.bh
  %i.bj = sdiv exact i64 %i.bi, 2072
  %i.bk = icmp ugt i64 %i.bj, %i.bc
  br i1 %i.bk, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bl = getelementptr inbounds nuw [2072 x i8], ptr %i.bf, i64 %i.bc ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !80
  %i.bo = icmp eq i64 %i.bn, 0
  br i1 %i.bo, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bf, i64 259000
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.bq = phi ptr [ %i.bp, %bb.f ], [ %i.bl, %bb.e ]
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 1534
  %i.bs = load i8, ptr %i.br, align 2, !tbaa !122, !range !71, !noundef !72
  %i.bt = trunc nuw i8 %i.bs to i1
  br label %_ZN10ReflowScan11lookupBlockEiii.exit.thread

_ZN10ReflowScan11lookupBlockEiii.exit.thread:     ; preds = %_ZN8MapBlock14getNodeNoCheckEsss.exit, %bb.b, %_ZN10ReflowScan11lookupBlockEiii.exit, %bb.g
  %.1 = phi i1 [ %i.bt, %bb.g ], [ false, %bb.b ], [ false, %_ZN10ReflowScan11lookupBlockEiii.exit ], [ false, %_ZN8MapBlock14getNodeNoCheckEsss.exit ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { ptr, i8 } @_ZNSt10_HashtableIN4core8vector3dIsEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_insert_uniqueIRKS2_SI_NS4_10_AllocNodeISaINS4_10_Hash_nodeIS2_Lb1EEEEEEEESt4pairINS4_14_Node_iteratorIS2_Lb1ELb1EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 2 dereferenceable(6) %1, ptr noundef nonnull align 2 dereferenceable(6) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !124
  %.not.not = icmp eq i64 %i.b, 0                 ; 2 uses
  br i1 %.not.not, label %bb.b, label %..thread_crit_edge

..thread_crit_edge:                               ; preds = %bb.a
  %.pre = load i16, ptr %1, align 2, !tbaa !24
  br label %.thread

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.028.039 = load ptr, ptr %i.c, align 8, !tbaa !125 ; 2 uses
  %.not40 = icmp eq ptr %.sroa.028.039, null
  %.pre45 = load i16, ptr %1, align 2, !tbaa !24  ; 3 uses
  br i1 %.not40, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.e = load i16, ptr %i.d, align 2
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.g = load i16, ptr %i.f, align 2
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_key_equals_trIS3_EEbRKT_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread
  %.sroa.028.041 = phi ptr [ %.sroa.028.039, %.lr.ph ], [ %.sroa.028.0, %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_key_equals_trIS3_EEbRKT_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread ] ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.028.041, i64 8
  %i.i = load i16, ptr %i.h, align 2, !tbaa !24
  %i.j = icmp eq i16 %.pre45, %i.i
  br i1 %i.j, label %bb.d, label %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_key_equals_trIS3_EEbRKT_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.028.041, i64 10
  %i.l = load i16, ptr %i.k, align 2, !tbaa !25
  %i.m = icmp eq i16 %i.e, %i.l
  br i1 %i.m, label %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_key_equals_trIS3_EEbRKT_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit, label %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_key_equals_trIS3_EEbRKT_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread

_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_key_equals_trIS3_EEbRKT_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit: ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.028.041, i64 12
  %i.o = load i16, ptr %i.n, align 2, !tbaa !26
  %i.p = icmp eq i16 %i.g, %i.o
  br i1 %i.p, label %_ZNKSt10_HashtableIN4core8vector3dIsEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE15_M_find_node_trIS2_EEPNS4_10_Hash_nodeIS2_Lb1EEEmRKT_m.exit, label %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_key_equals_trIS3_EEbRKT_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread

_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_key_equals_trIS3_EEbRKT_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread: ; preds = %bb.c, %bb.d, %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_key_equals_trIS3_EEbRKT_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit
  %.sroa.028.0 = load ptr, ptr %.sroa.028.041, align 8, !tbaa !125 ; 2 uses
  %.not = icmp eq ptr %.sroa.028.0, null
  br i1 %.not, label %.thread, label %bb.c, !llvm.loop !148

.thread:                                          ; preds = %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_key_equals_trIS3_EEbRKT_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread, %..thread_crit_edge, %bb.b
  %i.q = phi i16 [ %.pre, %..thread_crit_edge ], [ %.pre45, %bb.b ], [ %.pre45, %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_key_equals_trIS3_EEbRKT_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread ] ; 2 uses
  %i.r = sext i16 %i.q to i64                     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.t = load i16, ptr %i.s, align 2, !tbaa !25   ; 2 uses
  %i.u = sext i16 %i.t to i64                     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.w = load i16, ptr %i.v, align 2, !tbaa !26   ; 2 uses
  %i.x = sext i16 %i.w to i64
  %i.y = tail call i64 @llvm.fshl.i64(i64 %i.r, i64 %i.r, i64 40)
  %i.z = tail call i64 @llvm.fshl.i64(i64 %i.u, i64 %i.u, i64 16)
  %i.aa = xor i64 %i.z, %i.y
  %i.ab = xor i64 %i.aa, %i.x                     ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !126 ; 2 uses
  %i.ae = urem i64 %i.ab, %i.ad                   ; 3 uses
  br i1 %.not.not, label %.critedge, label %bb.e

bb.e:                                             ; preds = %.thread
  %i.af = load ptr, ptr %0, align 8, !tbaa !127
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.ae
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !128 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !125 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !130
  br label %bb.g

bb.g:                                             ; preds = %bb.j, %bb.f
  %i.aj = phi i64 [ %.pre.i.i, %bb.f ], [ %i.ax, %bb.j ]
  %i.ak = phi ptr [ %i.ai, %bb.f ], [ %i.av, %bb.j ] ; 5 uses
  %i.al = icmp eq i64 %i.ab, %i.aj
  br i1 %i.al, label %bb.h, label %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_equals_trIS3_EEbRKT_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread.i.i

bb.h:                                             ; preds = %bb.g
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.an = load i16, ptr %i.am, align 2, !tbaa !24
  %i.ao = icmp eq i16 %i.q, %i.an
  br i1 %i.ao, label %bb.i, label %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_equals_trIS3_EEbRKT_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread.i.i

bb.i:                                             ; preds = %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 10
  %i.aq = load i16, ptr %i.ap, align 2, !tbaa !25
  %i.ar = icmp eq i16 %i.t, %i.aq
  br i1 %i.ar, label %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_equals_trIS3_EEbRKT_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i.i, label %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_equals_trIS3_EEbRKT_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread.i.i

_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_equals_trIS3_EEbRKT_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i.i: ; preds = %bb.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.ak, i64 12
  %i.at = load i16, ptr %i.as, align 2, !tbaa !26
  %i.au = icmp eq i16 %i.w, %i.at
  br i1 %i.au, label %_ZNKSt10_HashtableIN4core8vector3dIsEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE15_M_find_node_trIS2_EEPNS4_10_Hash_nodeIS2_Lb1EEEmRKT_m.exit, label %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_equals_trIS3_EEbRKT_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread.i.i

_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_equals_trIS3_EEbRKT_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread.i.i: ; preds = %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_equals_trIS3_EEbRKT_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i.i, %bb.i, %bb.h, %bb.g
  %i.av = load ptr, ptr %i.ak, align 8, !tbaa !125 ; 3 uses
  %.not18.i.i = icmp eq ptr %i.av, null
  br i1 %.not18.i.i, label %.critedge, label %bb.j

bb.j:                                             ; preds = %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_equals_trIS3_EEbRKT_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !130 ; 2 uses
  %i.ay = urem i64 %i.ax, %i.ad
  %.not19.i.i = icmp eq i64 %i.ay, %i.ae
  br i1 %.not19.i.i, label %bb.g, label %.critedge, !llvm.loop !149

.critedge:                                        ; preds = %bb.j, %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_equals_trIS3_EEbRKT_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread.i.i, %bb.e, %.thread
  %i.az = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #13 ; 4 uses
  store ptr null, ptr %i.az, align 8, !tbaa !125
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.ba, ptr noundef nonnull align 2 dereferenceable(6) %1, i64 6, i1 false), !tbaa.struct !121
  %i.bb = invoke ptr @_ZNSt10_HashtableIN4core8vector3dIsEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_insert_unique_nodeEmmPNS4_10_Hash_nodeIS2_Lb1EEEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.ae, i64 noundef %i.ab, ptr noundef nonnull %i.az, i64 noundef 1)
          to label %_ZNKSt10_HashtableIN4core8vector3dIsEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE15_M_find_node_trIS2_EEPNS4_10_Hash_nodeIS2_Lb1EEEmRKT_m.exit unwind label %_ZNSt10_HashtableIN4core8vector3dIsEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit20

_ZNSt10_HashtableIN4core8vector3dIsEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit20: ; preds = %.critedge
  %i.bc = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.az, i64 noundef 24) #14
  resume { ptr, i32 } %i.bc

_ZNKSt10_HashtableIN4core8vector3dIsEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE15_M_find_node_trIS2_EEPNS4_10_Hash_nodeIS2_Lb1EEEmRKT_m.exit: ; preds = %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_key_equals_trIS3_EEbRKT_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit, %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_equals_trIS3_EEbRKT_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i.i, %.critedge
  %.sroa.031.1 = phi ptr [ %i.bb, %.critedge ], [ %i.ak, %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_equals_trIS3_EEbRKT_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i.i ], [ %.sroa.028.041, %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_key_equals_trIS3_EEbRKT_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit ]
  %.sroa.432.1 = phi i8 [ 1, %.critedge ], [ 0, %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_equals_trIS3_EEbRKT_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i.i ], [ 0, %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_key_equals_trIS3_EEbRKT_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.031.1, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.432.1, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZNSt10_HashtableIN4core8vector3dIsEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_insert_unique_nodeEmmPNS4_10_Hash_nodeIS2_Lb1EEEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !150
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !126
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !124
  %i.h = tail call { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 noundef %i.e, i64 noundef %i.g, i64 noundef %4) ; 2 uses
  %i.i = extractvalue { i8, i64 } %i.h, 0
  %i.j = trunc i8 %i.i to i1
end_hunk_0
