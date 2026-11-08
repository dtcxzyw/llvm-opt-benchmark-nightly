Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/b3GpuSapBroadphase?download=true
inline.NumInlined: 649
inline.NumDeleted: 180
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 51
loop-unroll.NumUnrolled: 67
begin_hunk_0_@_ZNK13b3OpenCLArrayI6b3Int4E10copyToHostER20b3AlignedObjectArrayIS0_Eb:bb.a
  %i.bi = tail call i32 %i.bc(ptr noundef %i.be, ptr noundef %i.bg, i32 noundef 0, i64 noundef 0, i64 noundef %i.bh, ptr noundef nonnull %i.bb, i32 noundef 0, ptr noundef null, ptr noundef null), !inline_history !197 ; 0 uses
  br i1 %2, label %bb.i, label %_ZNK13b3OpenCLArrayI6b3Int4E17copyToHostPointerEPS0_mmb.exit

bb.i:                                             ; preds = %bb.h
  %i.bj = load ptr, ptr @__clewFinish, align 8, !tbaa !101
  %i.bk = load ptr, ptr %i.bd, align 8, !tbaa !70
  %i.bl = tail call i32 %i.bj(ptr noundef %i.bk), !inline_history !197 ; 0 uses
  br label %_ZNK13b3OpenCLArrayI6b3Int4E17copyToHostPointerEPS0_mmb.exit

bb.j:                                             ; preds = %bb.g
  tail call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.44, i32 noundef 285)
  tail call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.46)
  br label %_ZNK13b3OpenCLArrayI6b3Int4E17copyToHostPointerEPS0_mmb.exit

_ZNK13b3OpenCLArrayI6b3Int4E17copyToHostPointerEPS0_mmb.exit: ; preds = %bb.j, %bb.i, %bb.h, %_ZN20b3AlignedObjectArrayI6b3Int4E6resizeEiRKS0_.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal noundef zeroext i1 @_ZL9b3PairCmpRK6b3Int4S1_(ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(16) %1) #10 {
bb.a:
  %i.a = load i32, ptr %0, align 16, !tbaa !113   ; 2 uses
  %i.b = load i32, ptr %1, align 16, !tbaa !113   ; 2 uses
  %i.c = icmp slt i32 %i.a, %i.b
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq i32 %i.a, %i.b
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !113
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !113
  %i.i = icmp slt i32 %i.f, %i.h
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %i.j = phi i1 [ true, %bb.a ], [ false, %bb.b ], [ %i.i, %bb.c ]
  ret i1 %i.j
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN13b3OpenCLArrayI6b3Int4E12copyFromHostERK20b3AlignedObjectArrayIS0_Eb(ptr noundef nonnull align 8 dereferenceable(50) %0, ptr noundef nonnull align 8 dereferenceable(25) %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !123  ; 2 uses
  %i.d = sext i32 %i.c to i64                     ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !129
  %i.g = icmp ult i64 %i.f, %i.d
  br i1 %i.g, label %bb.b, label %_ZN13b3OpenCLArrayI6b3Int4E6resizeEmb.exit

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !130
  %i.j = icmp ult i64 %i.i, %i.d
  br i1 %i.j, label %bb.c, label %_ZN13b3OpenCLArrayI6b3Int4E6resizeEmb.exit

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 49
  %i.l = load i8, ptr %i.k, align 1, !tbaa !71, !range !99, !noundef !116
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.n = shl nsw i64 %i.d, 4
  %i.o = load ptr, ptr @__clewCreateBuffer, align 8, !tbaa !101
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !69
  %i.r = call ptr %i.o(ptr noundef %i.q, i64 noundef 1, i64 noundef %i.n, ptr noundef null, ptr noundef nonnull %i.a), !inline_history !198
  %i.s = load i32, ptr %i.a, align 4, !tbaa !90
  %.not.i.i = icmp eq i32 %i.s, 0                 ; 2 uses
  br i1 %.not.i.i, label %_ZNK13b3OpenCLArrayI6b3Int4E8copyToCLEP7_cl_memmmm.exit.i.i, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.d
  call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.44, i32 noundef 166)
  call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.45)
  br label %_ZNK13b3OpenCLArrayI6b3Int4E8copyToCLEP7_cl_memmmm.exit.i.i

_ZNK13b3OpenCLArrayI6b3Int4E8copyToCLEP7_cl_memmmm.exit.i.i: ; preds = %bb.d, %.thread.i.i
  %.01017.i.i = phi i64 [ 0, %.thread.i.i ], [ %i.d, %bb.d ]
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !103  ; 2 uses
  %.not.i.i.i = icmp ne ptr %i.u, null
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.w = load i8, ptr %i.v, align 8, !range !99
  %i.x = trunc nuw i8 %i.w to i1
  %or.cond.i.i.i = select i1 %.not.i.i.i, i1 %i.x, i1 false
  br i1 %or.cond.i.i.i, label %bb.e, label %_ZN13b3OpenCLArrayI6b3Int4E7reserveEmb.exit.i

bb.e:                                             ; preds = %_ZNK13b3OpenCLArrayI6b3Int4E8copyToCLEP7_cl_memmmm.exit.i.i
  %i.y = load ptr, ptr @__clewReleaseMemObject, align 8, !tbaa !101
  %i.z = call i32 %i.y(ptr noundef nonnull %i.u), !inline_history !199 ; 0 uses
  br label %_ZN13b3OpenCLArrayI6b3Int4E7reserveEmb.exit.i

bb.f:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !103 ; 2 uses
  %.not.i12.i.i = icmp ne ptr %i.ab, null
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ad = load i8, ptr %i.ac, align 8, !range !99
  %i.ae = trunc nuw i8 %i.ad to i1
  %or.cond.i13.i.i = select i1 %.not.i12.i.i, i1 %i.ae, i1 false
  br i1 %or.cond.i13.i.i, label %bb.g, label %_ZN13b3OpenCLArrayI6b3Int4E7reserveEmb.exit.thread12.i

bb.g:                                             ; preds = %bb.f
  %i.af = load ptr, ptr @__clewReleaseMemObject, align 8, !tbaa !101
  %i.ag = tail call i32 %i.af(ptr noundef nonnull %i.ab), !inline_history !199 ; 0 uses
  br label %_ZN13b3OpenCLArrayI6b3Int4E7reserveEmb.exit.thread12.i

_ZN13b3OpenCLArrayI6b3Int4E7reserveEmb.exit.thread12.i: ; preds = %bb.g, %bb.f
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  br label %bb.h

_ZN13b3OpenCLArrayI6b3Int4E7reserveEmb.exit.i:    ; preds = %bb.e, %_ZNK13b3OpenCLArrayI6b3Int4E8copyToCLEP7_cl_memmmm.exit.i.i
  store ptr %i.r, ptr %i.t, align 8, !tbaa !103
  store i64 %.01017.i.i, ptr %i.h, align 8, !tbaa !130
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br i1 %.not.i.i, label %_ZN13b3OpenCLArrayI6b3Int4E6resizeEmb.exit, label %bb.h

bb.h:                                             ; preds = %_ZN13b3OpenCLArrayI6b3Int4E7reserveEmb.exit.i, %_ZN13b3OpenCLArrayI6b3Int4E7reserveEmb.exit.thread12.i
  br label %_ZN13b3OpenCLArrayI6b3Int4E6resizeEmb.exit

_ZN13b3OpenCLArrayI6b3Int4E6resizeEmb.exit:       ; preds = %bb.a, %bb.b, %_ZN13b3OpenCLArrayI6b3Int4E7reserveEmb.exit.i, %bb.h
  %storemerge.i = phi i64 [ 0, %bb.h ], [ %i.d, %bb.b ], [ %i.d, %bb.a ], [ %i.d, %_ZN13b3OpenCLArrayI6b3Int4E7reserveEmb.exit.i ]
  store i64 %storemerge.i, ptr %i.e, align 8, !tbaa !129
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %_ZN13b3OpenCLArrayI6b3Int4E19copyFromHostPointerEPKS0_mmb.exit, label %bb.i

bb.i:                                             ; preds = %_ZN13b3OpenCLArrayI6b3Int4E6resizeEmb.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !122
  %i.aj = shl nsw i64 %i.d, 4
  %i.ak = load ptr, ptr @__clewEnqueueWriteBuffer, align 8, !tbaa !101
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !70
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !103
  %i.ap = call i32 %i.ak(ptr noundef %i.am, ptr noundef %i.ao, i32 noundef 0, i64 noundef 0, i64 noundef %i.aj, ptr noundef nonnull %i.ai, i32 noundef 0, ptr noundef null, ptr noundef null), !inline_history !200 ; 0 uses
  br i1 %2, label %bb.j, label %_ZN13b3OpenCLArrayI6b3Int4E19copyFromHostPointerEPKS0_mmb.exit

bb.j:                                             ; preds = %bb.i
  %i.aq = load ptr, ptr @__clewFinish, align 8, !tbaa !101
  %i.ar = load ptr, ptr %i.al, align 8, !tbaa !70
  %i.as = call i32 %i.aq(ptr noundef %i.ar), !inline_history !200 ; 0 uses
  br label %_ZN13b3OpenCLArrayI6b3Int4E19copyFromHostPointerEPKS0_mmb.exit

_ZN13b3OpenCLArrayI6b3Int4E19copyFromHostPointerEPKS0_mmb.exit: ; preds = %bb.j, %bb.i, %_ZN13b3OpenCLArrayI6b3Int4E6resizeEmb.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN18b3GpuSapBroadphase29calculateOverlappingPairsHostEi(ptr noundef nonnull align 8 dereferenceable(2040) %0, i32 noundef %1) unnamed_addr #12 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge:
  %2 = alloca %class.b3AlignedObjectArray.23, align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1432
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1488
  tail call void @_ZNK13b3OpenCLArrayI9b3SapAabbE10copyToHostER20b3AlignedObjectArrayIS0_Eb(ptr noundef nonnull align 8 dereferenceable(50) %i.a, ptr noundef nonnull align 8 dereferenceable(25) %i.b, i1 noundef zeroext true)
  tail call void @b3EnterProfileZone(ptr noundef nonnull @.str.30)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1748 ; 2 uses
  invoke void @b3LeaveProfileZone()
          to label %_ZN13b3ProfileZoneD2Ev.exit unwind label %bb.a

bb.a:                                             ; preds = %._crit_edge
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #22
  unreachable

_ZN13b3ProfileZoneD2Ev.exit:                      ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 6 uses
  store i8 1, ptr %i.f, align 8, !tbaa !125
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 10 uses
  store ptr null, ptr %i.g, align 8, !tbaa !122
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 12 uses
  store i32 0, ptr %i.h, align 4, !tbaa !123
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  store i32 0, ptr %i.i, align 8, !tbaa !124
  %i.j = load i32, ptr %i.c, align 4, !tbaa !88   ; 3 uses
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %.lr.ph270, label %._crit_edge279

.lr.ph270:                                        ; preds = %_ZN13b3ProfileZoneD2Ev.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1760 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1504 ; 2 uses
  %i.n = zext nneg i32 %i.j to i64
  %wide.trip.count291 = zext nneg i32 %i.j to i64 ; 2 uses
  br label %bb.b

.loopexit257:                                     ; preds = %bb.i, %bb.b
  %i.o = phi i32 [ %i.w, %bb.b ], [ %i.bx, %bb.i ] ; 4 uses
  %exitcond292.not = icmp eq i64 %indvars.iv.next289, %wide.trip.count291
  br i1 %exitcond292.not, label %._crit_edge271, label %bb.b, !llvm.loop !201

._crit_edge271:                                   ; preds = %.loopexit257
  %.pre306.a = load i32, ptr %i.c, align 4, !tbaa !88 ; 2 uses
  %i.p = icmp sgt i32 %.pre306.a, 0
  br i1 %i.p, label %.lr.ph278, label %._crit_edge279

.lr.ph278:                                        ; preds = %._crit_edge271
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1760
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1504 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1836 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1848
  %i.u = load i32, ptr %i.s, align 4, !tbaa !88
  %i.v = icmp sgt i32 %i.u, 0
  br i1 %i.v, label %.lr.ph278.split.preheader, label %._crit_edge279

.lr.ph278.split.preheader:                        ; preds = %.lr.ph278
  %wide.trip.count301 = zext nneg i32 %.pre306.a to i64
  br label %.lr.ph278.split

bb.b:                                             ; preds = %.lr.ph270, %.loopexit257
  %i.w = phi i32 [ 0, %.lr.ph270 ], [ %i.o, %.loopexit257 ] ; 2 uses
  %indvars.iv.a = phi i64 [ 0, %.lr.ph270 ], [ %indvars.iv.next289, %.loopexit257 ] ; 2 uses
  %i.x = load ptr, ptr %i.l, align 8, !tbaa !87
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv.a
  %i.z = load i32, ptr %i.y, align 4, !tbaa !90
  %i.aa = load ptr, ptr %i.m, align 8, !tbaa !80
  %i.ab = sext i32 %i.z to i64
  %i.ac = getelementptr inbounds [32 x i8], ptr %i.aa, i64 %i.ab ; 7 uses
  %.sroa.0186.0.copyload = load float, ptr %i.ac, align 16
  %.sroa.5187.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  %.sroa.5187.0.copyload = load float, ptr %.sroa.5187.0..sroa_idx, align 4
  %.sroa.6188.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %.sroa.6188.0.copyload = load float, ptr %.sroa.6188.0..sroa_idx, align 8
  %.sroa.7189.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 12
  %.sroa.7189.0.copyload = load i32, ptr %.sroa.7189.0..sroa_idx, align 4 ; 2 uses
  %.sroa.8190.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %.sroa.8190.0.copyload = load float, ptr %.sroa.8190.0..sroa_idx, align 16
  %.sroa.9191.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 20
  %.sroa.9191.0.copyload = load float, ptr %.sroa.9191.0..sroa_idx, align 4
  %.sroa.10192.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %.sroa.10192.0.copyload = load float, ptr %.sroa.10192.0..sroa_idx, align 8
  %indvars.iv.next289 = add nuw nsw i64 %indvars.iv.a, 1 ; 4 uses
  %i.ad = icmp samesign ult i64 %indvars.iv.next289, %i.n
  br i1 %i.ad, label %.lr.ph268, label %.loopexit257

.lr.ph268:                                        ; preds = %bb.b, %bb.i
  %i.ae = phi i32 [ %i.bx, %bb.i ], [ %i.w, %bb.b ] ; 7 uses
  %indvars.iv285 = phi i64 [ %indvars.iv.next286, %bb.i ], [ %indvars.iv.next289, %bb.b ] ; 2 uses
  %i.af = load ptr, ptr %i.l, align 8, !tbaa !87
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv285
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !90
  %i.ai = load ptr, ptr %i.m, align 8, !tbaa !80
  %i.aj = sext i32 %i.ah to i64
  %i.ak = getelementptr inbounds [32 x i8], ptr %i.ai, i64 %i.aj ; 7 uses
  %.sroa.0178.0.copyload = load float, ptr %i.ak, align 16
  %.sroa.5179.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %.sroa.5179.0.copyload = load float, ptr %.sroa.5179.0..sroa_idx, align 4
  %.sroa.6180.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %.sroa.6180.0.copyload = load float, ptr %.sroa.6180.0..sroa_idx, align 8
  %.sroa.8182.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %.sroa.8182.0.copyload = load float, ptr %.sroa.8182.0..sroa_idx, align 16
  %.sroa.9183.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 20
  %.sroa.9183.0.copyload = load float, ptr %.sroa.9183.0..sroa_idx, align 4
  %.sroa.10184.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %.sroa.10184.0.copyload = load float, ptr %.sroa.10184.0..sroa_idx, align 8
  %i.al = fcmp ule float %.sroa.0186.0.copyload, %.sroa.8182.0.copyload
  %i.am = fcmp uge float %.sroa.8190.0.copyload, %.sroa.0178.0.copyload
  %i.an = fcmp ule float %.sroa.6188.0.copyload, %.sroa.10184.0.copyload
  %i.ao = fcmp uge float %.sroa.10192.0.copyload, %.sroa.6180.0.copyload
  %i.ap = fcmp ule float %.sroa.5187.0.copyload, %.sroa.9183.0.copyload
  %i.aq = fcmp uge float %.sroa.9191.0.copyload, %.sroa.5179.0.copyload
  %i.ar = select i1 %i.ap, i1 %i.aq, i1 false
  %i.as = select i1 %i.ar, i1 %i.an, i1 false
  %i.at = select i1 %i.as, i1 %i.ao, i1 false
  %i.au = select i1 %i.at, i1 %i.al, i1 false
  %i.av = select i1 %i.au, i1 %i.am, i1 false
  br i1 %i.av, label %bb.c, label %bb.i

bb.c:                                             ; preds = %.lr.ph268
  %.sroa.7181.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 12
  %.sroa.7181.0.copyload = load i32, ptr %.sroa.7181.0..sroa_idx, align 4 ; 2 uses
  %spec.select = tail call i32 @llvm.smax.i32(i32 %.sroa.7189.0.copyload, i32 %.sroa.7181.0.copyload)
  %spec.select251 = tail call i32 @llvm.smin.i32(i32 %.sroa.7189.0.copyload, i32 %.sroa.7181.0.copyload)
  %i.aw = load i32, ptr %i.i, align 8, !tbaa !124
  %i.ax = icmp eq i32 %i.ae, %i.aw
  br i1 %i.ax, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %.not.i.i = icmp eq i32 %i.ae, 0
  %i.ay = shl nsw i32 %i.ae, 1
  %i.az = select i1 %.not.i.i, i32 1, i32 %i.ay   ; 6 uses
  %i.ba = icmp slt i32 %i.ae, %i.az
  br i1 %i.ba, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %.not.i.i.i = icmp eq i32 %i.az, 0
  br i1 %.not.i.i.i, label %.split7.i.i, label %_ZN20b3AlignedObjectArrayI6b3Int4E8allocateEi.exit.i.i

_ZN20b3AlignedObjectArrayI6b3Int4E8allocateEi.exit.i.i: ; preds = %bb.e
  %i.bb = sext i32 %i.az to i64
  %i.bc = shl nsw i64 %i.bb, 4
  %i.bd = invoke noundef ptr @_Z22b3AlignedAllocInternalmi(i64 noundef %i.bc, i32 noundef 16)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 7 uses

.noexc:                                           ; preds = %_ZN20b3AlignedObjectArrayI6b3Int4E8allocateEi.exit.i.i
  %i.be = icmp eq ptr %i.bd, null
  br i1 %i.be, label %.split7.i.i, label %.split.i.i

.split.i.i:                                       ; preds = %.noexc
  %i.bf = load i32, ptr %i.h, align 4, !tbaa !123 ; 7 uses
  %i.bg = icmp sgt i32 %i.bf, 0
  %.pre303 = load ptr, ptr %i.g, align 8, !tbaa !122 ; 6 uses
  br i1 %i.bg, label %.lr.ph.i.i.i, label %_ZNK20b3AlignedObjectArrayI6b3Int4E4copyEiiPS0_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %.split.i.i
  %wide.trip.count.i.i.i = zext nneg i32 %i.bf to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 1
  %i.bh = icmp eq i32 %i.bf, 1
  br i1 %i.bh, label %.epil.preheader, label %.lr.ph.i.i.i.new

.lr.ph.i.i.i.new:                                 ; preds = %.lr.ph.i.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i.i, 2147483646
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.i.i.i.new
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %indvars.iv.next.i.i.i.1, %bb.f ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %niter.next.1, %bb.f ]
  %i.bi = getelementptr inbounds nuw [16 x i8], ptr %i.bd, i64 %indvars.iv.i.i.i
  %i.bj = getelementptr inbounds nuw [16 x i8], ptr %.pre303, i64 %indvars.iv.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.bi, ptr noundef nonnull align 16 dereferenceable(16) %i.bj, i64 16, i1 false), !tbaa.struct !126
  %indvars.iv.next.i.i.i = or disjoint i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.bk = getelementptr inbounds nuw [16 x i8], ptr %i.bd, i64 %indvars.iv.next.i.i.i
  %i.bl = getelementptr inbounds nuw [16 x i8], ptr %.pre303, i64 %indvars.iv.next.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.bk, ptr noundef nonnull align 16 dereferenceable(16) %i.bl, i64 16, i1 false), !tbaa.struct !126
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK20b3AlignedObjectArrayI6b3Int4E4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, label %bb.f, !llvm.loop !11

.split7.i.i:                                      ; preds = %.noexc, %bb.e
  invoke void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.47, i32 noundef 301)
          to label %.noexc113 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc113:                                        ; preds = %.split7.i.i
  invoke void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.48)
          to label %.noexc114 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc114:                                        ; preds = %.noexc113
  store i32 0, ptr %i.h, align 4, !tbaa !123
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !122
  br label %_ZNK20b3AlignedObjectArrayI6b3Int4E4copyEiiPS0_.exit.i.i

_ZNK20b3AlignedObjectArrayI6b3Int4E4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa: ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK20b3AlignedObjectArrayI6b3Int4E4copyEiiPS0_.exit.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZNK20b3AlignedObjectArrayI6b3Int4E4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i
  %indvars.iv.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i.1, %_ZNK20b3AlignedObjectArrayI6b3Int4E4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod345 = trunc i32 %i.bf to i1
  tail call void @llvm.assume(i1 %lcmp.mod345)
  %i.bm = getelementptr inbounds nuw [16 x i8], ptr %i.bd, i64 %indvars.iv.i.i.i.epil.init
  %i.bn = getelementptr inbounds nuw [16 x i8], ptr %.pre303, i64 %indvars.iv.i.i.i.epil.init
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.bm, ptr noundef nonnull align 16 dereferenceable(16) %i.bn, i64 16, i1 false), !tbaa.struct !126
  br label %_ZNK20b3AlignedObjectArrayI6b3Int4E4copyEiiPS0_.exit.i.i

_ZNK20b3AlignedObjectArrayI6b3Int4E4copyEiiPS0_.exit.i.i: ; preds = %.epil.preheader, %_ZNK20b3AlignedObjectArrayI6b3Int4E4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, %.noexc114, %.split.i.i
  %.pre.i305 = phi i32 [ 0, %.noexc114 ], [ %i.bf, %.split.i.i ], [ %i.bf, %_ZNK20b3AlignedObjectArrayI6b3Int4E4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa ], [ %i.bf, %.epil.preheader ]
  %i.bo = phi ptr [ %.pre, %.noexc114 ], [ %.pre303, %.split.i.i ], [ %.pre303, %_ZNK20b3AlignedObjectArrayI6b3Int4E4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa ], [ %.pre303, %.epil.preheader ] ; 2 uses
  %.0.i12.i.i = phi ptr [ null, %.noexc114 ], [ %i.bd, %.split.i.i ], [ %i.bd, %_ZNK20b3AlignedObjectArrayI6b3Int4E4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa ], [ %i.bd, %.epil.preheader ]
  %.0.i.i = phi i32 [ 0, %.noexc114 ], [ %i.az, %.split.i.i ], [ %i.az, %_ZNK20b3AlignedObjectArrayI6b3Int4E4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa ], [ %i.az, %.epil.preheader ]
  %.not.i10.i.i = icmp ne ptr %i.bo, null
  %i.bp = load i8, ptr %i.f, align 8, !range !99
  %i.bq = trunc nuw i8 %i.bp to i1
  %or.cond = select i1 %.not.i10.i.i, i1 %i.bq, i1 false
  br i1 %or.cond, label %bb.g, label %_ZN20b3AlignedObjectArrayI6b3Int4E10deallocateEv.exit.i.i

bb.g:                                             ; preds = %_ZNK20b3AlignedObjectArrayI6b3Int4E4copyEiiPS0_.exit.i.i
  invoke void @_Z21b3AlignedFreeInternalPv(ptr noundef nonnull %i.bo)
          to label %._ZN20b3AlignedObjectArrayI6b3Int4E10deallocateEv.exit.i.i_crit_edge unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

._ZN20b3AlignedObjectArrayI6b3Int4E10deallocateEv.exit.i.i_crit_edge: ; preds = %bb.g
  %.pre.i.pre = load i32, ptr %i.h, align 4, !tbaa !123
  br label %_ZN20b3AlignedObjectArrayI6b3Int4E10deallocateEv.exit.i.i

_ZN20b3AlignedObjectArrayI6b3Int4E10deallocateEv.exit.i.i: ; preds = %._ZN20b3AlignedObjectArrayI6b3Int4E10deallocateEv.exit.i.i_crit_edge, %_ZNK20b3AlignedObjectArrayI6b3Int4E4copyEiiPS0_.exit.i.i
  %.pre.i = phi i32 [ %.pre.i.pre, %._ZN20b3AlignedObjectArrayI6b3Int4E10deallocateEv.exit.i.i_crit_edge ], [ %.pre.i305, %_ZNK20b3AlignedObjectArrayI6b3Int4E4copyEiiPS0_.exit.i.i ]
  store i8 1, ptr %i.f, align 8, !tbaa !125
  store ptr %.0.i12.i.i, ptr %i.g, align 8, !tbaa !122
  store i32 %.0.i.i, ptr %i.i, align 8, !tbaa !124
  br label %bb.h

bb.h:                                             ; preds = %_ZN20b3AlignedObjectArrayI6b3Int4E10deallocateEv.exit.i.i, %bb.d, %bb.c
  %i.br = phi i32 [ %.pre.i, %_ZN20b3AlignedObjectArrayI6b3Int4E10deallocateEv.exit.i.i ], [ %i.ae, %bb.d ], [ %i.ae, %bb.c ]
  %i.bs = load ptr, ptr %i.g, align 8, !tbaa !122
  %i.bt = sext i32 %i.br to i64
  %i.bu = getelementptr inbounds [16 x i8], ptr %i.bs, i64 %i.bt ; 2 uses
  store i32 %spec.select251, ptr %i.bu, align 16
  %.sroa.6176.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bu, i64 4
  store i32 %spec.select, ptr %.sroa.6176.0..sroa_idx, align 4
  %i.bv = load i32, ptr %i.h, align 4, !tbaa !123
  %i.bw = add nsw i32 %i.bv, 1                    ; 2 uses
  store i32 %i.bw, ptr %i.h, align 4, !tbaa !123
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph268
  %i.bx = phi i32 [ %i.bw, %bb.h ], [ %i.ae, %.lr.ph268 ] ; 2 uses
  %indvars.iv.next286 = add nuw nsw i64 %indvars.iv285, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next286, %wide.trip.count291
  br i1 %exitcond.not, label %.loopexit257, label %.lr.ph268, !llvm.loop !202

._crit_edge279:                                   ; preds = %._crit_edge275, %_ZN13b3ProfileZoneD2Ev.exit, %.lr.ph278, %._crit_edge271
  %i.by = phi i32 [ 0, %_ZN13b3ProfileZoneD2Ev.exit ], [ %i.o, %.lr.ph278 ], [ %i.o, %._crit_edge271 ], [ %i.cj, %._crit_edge275 ] ; 2 uses
  %i.bz = icmp sgt i32 %i.by, %1
  br i1 %i.bz, label %bb.q, label %bb.r

.lr.ph278.split:                                  ; preds = %.lr.ph278.split.preheader, %._crit_edge275
  %i.ca = phi i32 [ %i.o, %.lr.ph278.split.preheader ], [ %i.cj, %._crit_edge275 ] ; 2 uses
  %indvars.iv298 = phi i64 [ 0, %.lr.ph278.split.preheader ], [ %indvars.iv.next299, %._crit_edge275 ] ; 2 uses
  %i.cb = load ptr, ptr %i.q, align 8, !tbaa !87
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %indvars.iv298
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !90
  %i.ce = load ptr, ptr %i.r, align 8, !tbaa !80
  %i.cf = sext i32 %i.cd to i64
  %i.cg = getelementptr inbounds [32 x i8], ptr %i.ce, i64 %i.cf ; 7 uses
  %.sroa.0167.0.copyload = load float, ptr %i.cg, align 16
  %.sroa.5168.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cg, i64 4
  %.sroa.5168.0.copyload = load float, ptr %.sroa.5168.0..sroa_idx, align 4
  %.sroa.6169.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %.sroa.6169.0.copyload = load float, ptr %.sroa.6169.0..sroa_idx, align 8
  %.sroa.7170.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cg, i64 12
  %.sroa.7170.0.copyload = load i32, ptr %.sroa.7170.0..sroa_idx, align 4 ; 2 uses
  %.sroa.8171.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %.sroa.8171.0.copyload = load float, ptr %.sroa.8171.0..sroa_idx, align 16
  %.sroa.9172.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cg, i64 20
  %.sroa.9172.0.copyload = load float, ptr %.sroa.9172.0..sroa_idx, align 4
  %.sroa.10173.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  %.sroa.10173.0.copyload = load float, ptr %.sroa.10173.0..sroa_idx, align 8
  %i.ch = load i32, ptr %i.s, align 4, !tbaa !88  ; 2 uses
  %i.ci = icmp sgt i32 %i.ch, 0
  br i1 %i.ci, label %.lr.ph274.preheader, label %._crit_edge275

.lr.ph274.preheader:                              ; preds = %.lr.ph278.split
  %wide.trip.count296 = zext nneg i32 %i.ch to i64
  br label %.lr.ph274

._crit_edge275:                                   ; preds = %bb.p, %.lr.ph278.split
  %i.cj = phi i32 [ %i.ca, %.lr.ph278.split ], [ %i.ed, %bb.p ] ; 2 uses
  %indvars.iv.next299 = add nuw nsw i64 %indvars.iv298, 1 ; 2 uses
end_hunk_0
