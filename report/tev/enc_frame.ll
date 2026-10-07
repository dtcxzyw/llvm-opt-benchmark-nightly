Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/enc_frame?download=true
inline.NumInlined: 8030
inline.NumDeleted: 4373
loop-unroll.NumCompletelyUnrolled: 35
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 49
begin_hunk_0_@_ZN3jxl8ACImageTIiE4MakeEP22JxlMemoryManagerStructmm:bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 2 uses
  %i.p = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN3jxl13AlignedMemoryaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.o) #30 ; 0 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 104
  %i.r = load i64, ptr %i.q, align 8, !tbaa !494, !noalias !1263
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 104 ; 2 uses
  store i64 %i.r, ptr %i.s, align 8, !tbaa !494, !alias.scope !1263
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 112
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 112 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.u, ptr noundef nonnull align 8 dereferenceable(56) %i.t, i64 24, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 136 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 136 ; 2 uses
  %i.x = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN3jxl13AlignedMemoryaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull align 8 dereferenceable(24) %i.w) #30 ; 0 uses
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 160
  %i.z = load i64, ptr %i.y, align 8, !tbaa !494, !noalias !1263
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 160 ; 2 uses
  store i64 %i.z, ptr %i.aa, align 8, !tbaa !494, !alias.scope !1263
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.b, ptr noundef nonnull align 8 dereferenceable(168) %5, i64 24, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.ac = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN3jxl13AlignedMemoryaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %i.f) #30 ; 0 uses
  %i.ad = load i64, ptr %i.k, align 8, !tbaa !494
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !494
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.af, ptr noundef nonnull align 8 dereferenceable(56) %i.m, i64 24, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.ah = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN3jxl13AlignedMemoryaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %i.n) #30 ; 0 uses
  %i.ai = load i64, ptr %i.s, align 8, !tbaa !494
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store i64 %i.ai, ptr %i.aj, align 8, !tbaa !494
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ak, ptr noundef nonnull align 8 dereferenceable(56) %i.u, i64 24, i1 false)
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %i.am = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN3jxl13AlignedMemoryaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.al, ptr noundef nonnull align 8 dereferenceable(24) %i.v) #30 ; 0 uses
  %i.an = load i64, ptr %i.aa, align 8, !tbaa !494
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  store i64 %i.an, ptr %i.ao, align 8, !tbaa !494
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.v) #30
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.n) #30
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.f) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.ap, align 8, !tbaa !561
  store ptr %i.a, ptr %0, align 8, !tbaa !565
  %.pr = load i32, ptr %i.c, align 8, !tbaa !669
  %i.aq = icmp eq i32 %.pr, 0
  br i1 %i.aq, label %bb.c, label %_ZN3jxl8StatusOrINS_6Image3IiEEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.w) #30
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.o) #30
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.g) #30
  br label %_ZN3jxl8StatusOrINS_6Image3IiEEED2Ev.exit.thread

_ZN3jxl8StatusOrINS_6Image3IiEEED2Ev.exit.thread: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %_ZNSt3__110unique_ptrIN3jxl8ACImageTIiEENS_14default_deleteIS3_EEED2B8nn180100Ev.exit

_ZNKSt3__114default_deleteIN3jxl8ACImageTIiEEEclB8nn180100EPS3_.exit.i.i: ; preds = %bb.a
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.d, ptr %i.ar, align 8, !tbaa !561
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.as) #30
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.at) #30
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.au) #30
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 176) #33
  br label %_ZNSt3__110unique_ptrIN3jxl8ACImageTIiEENS_14default_deleteIS3_EEED2B8nn180100Ev.exit

_ZNSt3__110unique_ptrIN3jxl8ACImageTIiEENS_14default_deleteIS3_EEED2B8nn180100Ev.exit: ; preds = %_ZN3jxl8StatusOrINS_6Image3IiEEED2Ev.exit.thread, %_ZNKSt3__114default_deleteIN3jxl8ACImageTIiEEEclB8nn180100EPS3_.exit.i.i
  ret void
}

declare i32 @_ZN3jxl26DequantMatricesSetCustomDCEP22JxlMemoryManagerStructPNS_15DequantMatricesEPKf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(560) ptr @_ZN3jxl13QuantEncodingaSERKS0_(ptr noundef nonnull align 8 dereferenceable(560) %0, ptr noundef nonnull align 8 dereferenceable(560) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !587
  %i.b = icmp eq i32 %i.a, 7
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !279  ; 5 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !582  ; 4 uses
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8nn180100Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.e, ptr %i.f, align 8, !tbaa !583
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !111
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.e to i64
  %i.k = sub i64 %i.i, %i.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.k) #33
  br label %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8nn180100Ev.exit

_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8nn180100Ev.exit: ; preds = %bb.c, %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 24) #33
  br label %bb.e

bb.e:                                             ; preds = %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8nn180100Ev.exit, %bb.b, %bb.a
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(553) %0, ptr noundef nonnull align 8 dereferenceable(553) %1, i64 553, i1 false)
  %i.l = load i32, ptr %0, align 8, !tbaa !587
  %i.m = icmp eq i32 %i.l, 7
  br i1 %i.m, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !279
  %.not3 = icmp eq ptr %i.o, null
  br i1 %.not3, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #32 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !279  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, i8 0, i64 24, i1 false)
  %i.u = load ptr, ptr %i.r, align 8, !tbaa !582  ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !583  ; 2 uses
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.u to i64
  %i.z = sub i64 %i.x, %i.y                       ; 4 uses
  %.not.i.i4 = icmp eq ptr %i.w, %i.u
  br i1 %.not.i.i4, label %_ZNSt3__16vectorIiNS_9allocatorIiEEEC2ERKS3_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = icmp slt i64 %i.z, 0
  br i1 %i.aa, label %bb.i, label %_ZNSt3__16vectorIiNS_9allocatorIiEEE11__vallocateB8nn180100Em.exit.i.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZNKSt3__16vectorIiNS_9allocatorIiEEE20__throw_length_errorB8nn180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.p) #31
  unreachable

_ZNSt3__16vectorIiNS_9allocatorIiEEE11__vallocateB8nn180100Em.exit.i.i: ; preds = %bb.h
  %i.ab = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.z) #32 ; 3 uses
  store ptr %i.ab, ptr %i.p, align 8, !tbaa !582
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.z ; 2 uses
  store ptr %i.ac, ptr %i.t, align 8, !tbaa !111
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ab, ptr align 4 %i.u, i64 %i.z, i1 false)
  store ptr %i.ac, ptr %i.s, align 8, !tbaa !583
  br label %_ZNSt3__16vectorIiNS_9allocatorIiEEEC2ERKS3_.exit

_ZNSt3__16vectorIiNS_9allocatorIiEEEC2ERKS3_.exit: ; preds = %bb.g, %_ZNSt3__16vectorIiNS_9allocatorIiEEE11__vallocateB8nn180100Em.exit.i.i
  store ptr %i.p, ptr %i.n, align 8, !tbaa !279
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt3__16vectorIiNS_9allocatorIiEEEC2ERKS3_.exit, %bb.f, %bb.e
  ret ptr %0
}

declare i32 @_ZN3jxl24DequantMatricesSetCustomEPNS_15DequantMatricesERKNSt3__16vectorINS_13QuantEncodingENS2_9allocatorIS4_EEEEPNS_19ModularFrameEncoderE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #6

declare void @_ZN3jxl9QuantizerC1ERKNS_15DequantMatricesEii(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(744), i32 noundef, i32 noundef) unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3jxl13ZeroFillImageIfEEvPNS_6Image3IT_EE(ptr noundef %0) local_unnamed_addr #2 comdat {
.preheader:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load i32, ptr %i.a, align 4, !tbaa !418  ; 2 uses
  %.not13 = icmp eq i32 %i.c, 0
  br i1 %.not13, label %._crit_edge.2, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load i32, ptr %0, align 8, !tbaa !403    ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %._crit_edge.2, label %.lr.ph.split

._crit_edge:                                      ; preds = %bb.f
  %.not13.1 = icmp eq i32 %i.as, 0
  br i1 %.not13.1, label %._crit_edge.2, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %._crit_edge
  %.pr = load i32, ptr %0, align 8, !tbaa !403    ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.h = icmp eq i32 %.pr, 0
  br i1 %i.h, label %._crit_edge.2, label %.lr.ph.split.1

.lr.ph.split.1:                                   ; preds = %.lr.ph.1, %bb.b
  %i.i = phi i32 [ %i.q, %bb.b ], [ %i.as, %.lr.ph.1 ]
  %i.j = phi i32 [ %i.r, %bb.b ], [ %.pr, %.lr.ph.1 ] ; 2 uses
  %.011.1 = phi i64 [ %i.s, %bb.b ], [ 0, %.lr.ph.1 ] ; 2 uses
  %.not.1 = icmp eq i32 %i.j, 0
  br i1 %.not.1, label %bb.b, label %bb.a

bb.a:                                             ; preds = %.lr.ph.split.1
  %i.k = zext i32 %i.j to i64
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !344  ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.l, i64 64) ]
  %i.m = load i64, ptr %i.b, align 8, !tbaa !542
  %i.n = mul i64 %i.m, %.011.1
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.n ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.o, i64 64) ]
  %i.p = shl nuw nsw i64 %i.k, 2
  tail call void @llvm.memset.p0.i64(ptr align 64 %i.o, i8 0, i64 %i.p, i1 false)
  %.pre17 = load i32, ptr %0, align 8, !tbaa !403
  %.pre19 = load i32, ptr %i.a, align 4, !tbaa !418
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.lr.ph.split.1
  %i.q = phi i32 [ %.pre19, %bb.a ], [ %i.i, %.lr.ph.split.1 ] ; 4 uses
  %i.r = phi i32 [ %.pre17, %bb.a ], [ 0, %.lr.ph.split.1 ]
  %i.s = add nuw nsw i64 %.011.1, 1               ; 2 uses
  %i.t = zext i32 %i.q to i64
  %i.u = icmp samesign ult i64 %i.s, %i.t
  br i1 %i.u, label %.lr.ph.split.1, label %._crit_edge.1, !llvm.loop !1264

._crit_edge.1:                                    ; preds = %bb.b
  %.not13.2 = icmp eq i32 %i.q, 0
  br i1 %.not13.2, label %._crit_edge.2, label %.lr.ph.2

.lr.ph.2:                                         ; preds = %._crit_edge.1
  %.pr41 = load i32, ptr %0, align 8, !tbaa !403  ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.w = icmp eq i32 %.pr41, 0
  br i1 %i.w, label %._crit_edge.2, label %.lr.ph.split.2

.lr.ph.split.2:                                   ; preds = %.lr.ph.2, %bb.d
  %i.x = phi i32 [ %i.af, %bb.d ], [ %i.q, %.lr.ph.2 ]
  %i.y = phi i32 [ %i.ag, %bb.d ], [ %.pr41, %.lr.ph.2 ] ; 2 uses
  %.011.2 = phi i64 [ %i.ah, %bb.d ], [ 0, %.lr.ph.2 ] ; 2 uses
  %.not.2 = icmp eq i32 %i.y, 0
  br i1 %.not.2, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph.split.2
  %i.z = zext i32 %i.y to i64
  %i.aa = load ptr, ptr %i.v, align 8, !tbaa !344 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.aa, i64 64) ]
  %i.ab = load i64, ptr %i.b, align 8, !tbaa !542
  %i.ac = mul i64 %i.ab, %.011.2
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ac ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ad, i64 64) ]
  %i.ae = shl nuw nsw i64 %i.z, 2
  tail call void @llvm.memset.p0.i64(ptr align 64 %i.ad, i8 0, i64 %i.ae, i1 false)
  %.pre20 = load i32, ptr %0, align 8, !tbaa !403
  %.pre22 = load i32, ptr %i.a, align 4, !tbaa !418
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph.split.2
  %i.af = phi i32 [ %.pre22, %bb.c ], [ %i.x, %.lr.ph.split.2 ] ; 2 uses
  %i.ag = phi i32 [ %.pre20, %bb.c ], [ 0, %.lr.ph.split.2 ]
  %i.ah = add nuw nsw i64 %.011.2, 1              ; 2 uses
  %i.ai = zext i32 %i.af to i64
  %i.aj = icmp samesign ult i64 %i.ah, %i.ai
  br i1 %i.aj, label %.lr.ph.split.2, label %._crit_edge.2, !llvm.loop !1264

._crit_edge.2:                                    ; preds = %bb.d, %.lr.ph.1, %.lr.ph, %.preheader, %._crit_edge, %.lr.ph.2, %._crit_edge.1
  ret void

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.f
  %i.ak = phi i32 [ %i.as, %bb.f ], [ %i.c, %.lr.ph ]
  %i.al = phi i32 [ %i.at, %bb.f ], [ %i.e, %.lr.ph ] ; 2 uses
  %.011 = phi i64 [ %i.au, %bb.f ], [ 0, %.lr.ph ] ; 2 uses
  %.not = icmp eq i32 %i.al, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph.split
  %i.am = zext i32 %i.al to i64
  %i.an = load ptr, ptr %i.d, align 8, !tbaa !344 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.an, i64 64) ]
  %i.ao = load i64, ptr %i.b, align 8, !tbaa !542
  %i.ap = mul i64 %i.ao, %.011
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ap ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.aq, i64 64) ]
  %i.ar = shl nuw nsw i64 %i.am, 2
  tail call void @llvm.memset.p0.i64(ptr align 64 %i.aq, i8 0, i64 %i.ar, i1 false)
  %.pre = load i32, ptr %0, align 8, !tbaa !403
  %.pre16 = load i32, ptr %i.a, align 4, !tbaa !418
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph.split
  %i.as = phi i32 [ %.pre16, %bb.e ], [ %i.ak, %.lr.ph.split ] ; 4 uses
  %i.at = phi i32 [ %.pre, %bb.e ], [ 0, %.lr.ph.split ]
  %i.au = add nuw nsw i64 %.011, 1                ; 2 uses
  %i.av = zext i32 %i.as to i64
  %i.aw = icmp samesign ult i64 %i.au, %i.av
  br i1 %i.aw, label %.lr.ph.split, label %._crit_edge, !llvm.loop !1264
}

declare void @_ZN3jxl19ProgressiveSplitter19SplitACCoefficientsIiEEvPKT_RKNS_10AcStrategyEmmPrPS2_(ptr noundef nonnull align 8 dereferenceable(272), ptr noundef, ptr noundef nonnull align 4 dereferenceable(5), i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @"_ZN3jxl9RunOnPoolIZNS_12_GLOBAL__N_126ComputeJPEGTranscodingDataERKNS_4jpeg8JPEGDataERKNS_11FrameHeaderEPNS_10ThreadPoolEPNS_19ModularFrameEncoderEPNS_18PassesEncoderStateEE3$_1EENS_6StatusESA_jjRKNS_16ThreadPoolNoInitERKT_PKc"(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #2 {
bb.a:
  %3 = alloca %"class.jxl::ThreadPool::RunCallState.563", align 8 ; 7 uses
  %4 = alloca %"class.jxl::ThreadPool::RunCallState.563", align 8 ; 6 uses
  %5 = alloca %"class.jxl::ThreadPool", align 8   ; 5 uses
  %6 = alloca %class.anon.561, align 1            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  store ptr null, ptr %5, align 8, !tbaa !139
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %5, ptr %i.b, align 8, !tbaa !140
  %i.c = icmp eq i32 %1, 0
  br i1 %i.c, label %"_ZN3jxl10ThreadPool3RunIZNS_9RunOnPoolIZNS_12_GLOBAL__N_126ComputeJPEGTranscodingDataERKNS_4jpeg8JPEGDataERKNS_11FrameHeaderEPS0_PNS_19ModularFrameEncoderEPNS_18PassesEncoderStateEE3$_1EENS_6StatusESB_jjRKNS_16ThreadPoolNoInitERKT_PKcEUlmE_SG_EESH_jjSN_RKT0_SP_.exit.i", label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  store ptr %6, ptr %4, align 8, !tbaa !133
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %2, ptr %i.d, align 8, !tbaa !133
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store i32 0, ptr %i.e, align 8, !tbaa !594
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i, %bb.c
  %.07.i.i = phi i32 [ %i.f, %.preheader.i.i ], [ 0, %bb.c ] ; 2 uses
  call void @"_ZN3jxl10ThreadPool12RunCallStateIZNS_9RunOnPoolIZNS_12_GLOBAL__N_126ComputeJPEGTranscodingDataERKNS_4jpeg8JPEGDataERKNS_11FrameHeaderEPS0_PNS_19ModularFrameEncoderEPNS_18PassesEncoderStateEE3$_1EENS_6StatusESB_jjRKNS_16ThreadPoolNoInitERKT_PKcEUlmE_SG_E12CallDataFuncEPvjm"(ptr noundef nonnull %4, i32 noundef %.07.i.i, i64 poison) #29
  %i.f = add nuw i32 %.07.i.i, 1                  ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.f, %1
  br i1 %exitcond.not.i.i, label %.sink.split.i.i, label %.preheader.i.i, !llvm.loop !1265

.sink.split.i.i:                                  ; preds = %.preheader.i.i
  %i.g = load atomic i32, ptr %i.e seq_cst, align 8
  %.not5.i.i = icmp ne i32 %i.g, 0
  %i.h = zext i1 %.not5.i.i to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %"_ZN3jxl10ThreadPool3RunIZNS_9RunOnPoolIZNS_12_GLOBAL__N_126ComputeJPEGTranscodingDataERKNS_4jpeg8JPEGDataERKNS_11FrameHeaderEPS0_PNS_19ModularFrameEncoderEPNS_18PassesEncoderStateEE3$_1EENS_6StatusESB_jjRKNS_16ThreadPoolNoInitERKT_PKcEUlmE_SG_EESH_jjSN_RKT0_SP_.exit.i"

"_ZN3jxl10ThreadPool3RunIZNS_9RunOnPoolIZNS_12_GLOBAL__N_126ComputeJPEGTranscodingDataERKNS_4jpeg8JPEGDataERKNS_11FrameHeaderEPS0_PNS_19ModularFrameEncoderEPNS_18PassesEncoderStateEE3$_1EENS_6StatusESB_jjRKNS_16ThreadPoolNoInitERKT_PKcEUlmE_SG_EESH_jjSN_RKT0_SP_.exit.i": ; preds = %.sink.split.i.i, %bb.b
  %.sroa.03.1.i.i = phi i32 [ %i.h, %.sink.split.i.i ], [ 0, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %"_ZN3jxl9RunOnPoolIZNS_9RunOnPoolIZNS_12_GLOBAL__N_126ComputeJPEGTranscodingDataERKNS_4jpeg8JPEGDataERKNS_11FrameHeaderEPNS_10ThreadPoolEPNS_19ModularFrameEncoderEPNS_18PassesEncoderStateEE3$_1EENS_6StatusESB_jjRKNS_16ThreadPoolNoInitERKT_PKcEUlmE_SG_EESH_SB_jjSN_RKT0_SP_.exit"

bb.d:                                             ; preds = %bb.a
  %.val.i = load ptr, ptr %0, align 8             ; 2 uses
  %i.i = getelementptr i8, ptr %0, i64 8
  %.val11.i = load ptr, ptr %i.i, align 8
  %i.j = icmp eq i32 %1, 0
  br i1 %i.j, label %"_ZN3jxl9RunOnPoolIZNS_9RunOnPoolIZNS_12_GLOBAL__N_126ComputeJPEGTranscodingDataERKNS_4jpeg8JPEGDataERKNS_11FrameHeaderEPNS_10ThreadPoolEPNS_19ModularFrameEncoderEPNS_18PassesEncoderStateEE3$_1EENS_6StatusESB_jjRKNS_16ThreadPoolNoInitERKT_PKcEUlmE_SG_EESH_SB_jjSN_RKT0_SP_.exit", label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  store ptr %6, ptr %3, align 8, !tbaa !133
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %2, ptr %i.k, align 8, !tbaa !133
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store i32 0, ptr %i.l, align 8, !tbaa !594
  %.not.i.i = icmp eq ptr %.val.i, null
  br i1 %.not.i.i, label %.preheader.i17.i, label %bb.f

.preheader.i17.i:                                 ; preds = %bb.e, %.preheader.i17.i
  %.07.i18.i = phi i32 [ %i.m, %.preheader.i17.i ], [ 0, %bb.e ] ; 2 uses
  call void @"_ZN3jxl10ThreadPool12RunCallStateIZNS_9RunOnPoolIZNS_12_GLOBAL__N_126ComputeJPEGTranscodingDataERKNS_4jpeg8JPEGDataERKNS_11FrameHeaderEPS0_PNS_19ModularFrameEncoderEPNS_18PassesEncoderStateEE3$_1EENS_6StatusESB_jjRKNS_16ThreadPoolNoInitERKT_PKcEUlmE_SG_E12CallDataFuncEPvjm"(ptr noundef nonnull %3, i32 noundef %.07.i18.i, i64 poison) #29
  %i.m = add nuw i32 %.07.i18.i, 1                ; 2 uses
  %exitcond.not.i19.i = icmp eq i32 %i.m, %1
  br i1 %exitcond.not.i19.i, label %.sink.split.i15.i, label %.preheader.i17.i, !llvm.loop !1265

bb.f:                                             ; preds = %bb.e
  %i.n = call noundef i32 %.val.i(ptr noundef %.val11.i, ptr noundef nonnull %3, ptr noundef nonnull @"_ZN3jxl10ThreadPool12RunCallStateIZNS_9RunOnPoolIZNS_12_GLOBAL__N_126ComputeJPEGTranscodingDataERKNS_4jpeg8JPEGDataERKNS_11FrameHeaderEPS0_PNS_19ModularFrameEncoderEPNS_18PassesEncoderStateEE3$_1EENS_6StatusESB_jjRKNS_16ThreadPoolNoInitERKT_PKcEUlmE_SG_E12CallInitFuncEPvm", ptr noundef nonnull @"_ZN3jxl10ThreadPool12RunCallStateIZNS_9RunOnPoolIZNS_12_GLOBAL__N_126ComputeJPEGTranscodingDataERKNS_4jpeg8JPEGDataERKNS_11FrameHeaderEPS0_PNS_19ModularFrameEncoderEPNS_18PassesEncoderStateEE3$_1EENS_6StatusESB_jjRKNS_16ThreadPoolNoInitERKT_PKcEUlmE_SG_E12CallDataFuncEPvjm", i32 noundef 0, i32 noundef %1) #30, !inline_history !1266
  %.not25.i.i = icmp eq i32 %i.n, 0
  br i1 %.not25.i.i, label %.sink.split.i15.i, label %bb.g

.sink.split.i15.i:                                ; preds = %.preheader.i17.i, %bb.f
  %i.o = load atomic i32, ptr %i.l seq_cst, align 8
  %.not5.i16.i = icmp ne i32 %i.o, 0
  %i.p = zext i1 %.not5.i16.i to i32
  br label %bb.g

bb.g:                                             ; preds = %.sink.split.i15.i, %bb.f
  %.sroa.03.0.shrunk.i.i = phi i32 [ 1, %bb.f ], [ %i.p, %.sink.split.i15.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %"_ZN3jxl9RunOnPoolIZNS_9RunOnPoolIZNS_12_GLOBAL__N_126ComputeJPEGTranscodingDataERKNS_4jpeg8JPEGDataERKNS_11FrameHeaderEPNS_10ThreadPoolEPNS_19ModularFrameEncoderEPNS_18PassesEncoderStateEE3$_1EENS_6StatusESB_jjRKNS_16ThreadPoolNoInitERKT_PKcEUlmE_SG_EESH_SB_jjSN_RKT0_SP_.exit"

"_ZN3jxl9RunOnPoolIZNS_9RunOnPoolIZNS_12_GLOBAL__N_126ComputeJPEGTranscodingDataERKNS_4jpeg8JPEGDataERKNS_11FrameHeaderEPNS_10ThreadPoolEPNS_19ModularFrameEncoderEPNS_18PassesEncoderStateEE3$_1EENS_6StatusESB_jjRKNS_16ThreadPoolNoInitERKT_PKcEUlmE_SG_EESH_SB_jjSN_RKT0_SP_.exit": ; preds = %"_ZN3jxl10ThreadPool3RunIZNS_9RunOnPoolIZNS_12_GLOBAL__N_126ComputeJPEGTranscodingDataERKNS_4jpeg8JPEGDataERKNS_11FrameHeaderEPS0_PNS_19ModularFrameEncoderEPNS_18PassesEncoderStateEE3$_1EENS_6StatusESB_jjRKNS_16ThreadPoolNoInitERKT_PKcEUlmE_SG_EESH_jjSN_RKT0_SP_.exit.i", %bb.d, %bb.g
  %.sroa.0.0.i = phi i32 [ %.sroa.03.1.i.i, %"_ZN3jxl10ThreadPool3RunIZNS_9RunOnPoolIZNS_12_GLOBAL__N_126ComputeJPEGTranscodingDataERKNS_4jpeg8JPEGDataERKNS_11FrameHeaderEPS0_PNS_19ModularFrameEncoderEPNS_18PassesEncoderStateEE3$_1EENS_6StatusESB_jjRKNS_16ThreadPoolNoInitERKT_PKcEUlmE_SG_EESH_jjSN_RKT0_SP_.exit.i" ], [ %.sroa.03.0.shrunk.i.i, %bb.g ], [ 0, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  ret i32 %.sroa.0.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3jxl6Image3IiE6CreateEP22JxlMemoryManagerStructmm(ptr dead_on_unwind noalias writable sret(%"class.jxl::StatusOr.530") align 8 %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %4 = alloca %"class.jxl::Plane.156", align 8    ; 8 uses
  %5 = alloca %"class.jxl::Plane.156", align 8    ; 8 uses
  %6 = alloca %"class.jxl::Plane.156", align 8    ; 8 uses
  %7 = alloca %"class.jxl::StatusOr.368", align 8 ; 10 uses
  %8 = alloca %"class.jxl::Plane.156", align 8    ; 6 uses
  %9 = alloca %"class.jxl::StatusOr.368", align 8 ; 10 uses
  %10 = alloca %"class.jxl::Plane.156", align 8   ; 6 uses
  %11 = alloca %"class.jxl::StatusOr.368", align 8 ; 10 uses
  %12 = alloca %"class.jxl::Plane.156", align 8   ; 6 uses
  %13 = alloca %"class.jxl::Image3.531", align 8  ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1279)
  %i.a = trunc nuw i64 %2 to i32                  ; 3 uses
  %i.b = trunc nuw i64 %3 to i32                  ; 3 uses
  %i.c = or i64 %2, %3
  %or.cond = icmp ult i64 %i.c, 4294967296
  br i1 %or.cond, label %bb.b, label %.thread45

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28, !noalias !1279
  call void @_ZN3jxl6detail9PlaneBaseC2Ejjm(ptr noundef nonnull align 8 dereferenceable(56) %6, i32 noundef %i.a, i32 noundef %i.b, i64 noundef 4) #30, !noalias !1279
  %i.d = call i32 @_ZN3jxl6detail9PlaneBase8AllocateEP22JxlMemoryManagerStructm(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef %1, i64 noundef 0) #30, !noalias !1279 ; 2 uses
  %i.e = icmp eq i32 %i.d, 0
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 56 ; 3 uses
  br i1 %i.e, label %.critedge.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 %i.d, ptr %i.f, align 8, !tbaa !496, !alias.scope !1279
  br label %_ZN3jxl5PlaneIiE6CreateEP22JxlMemoryManagerStructmmm.exit

.critedge.i:                                      ; preds = %bb.b
  store i32 0, ptr %i.f, align 8, !tbaa !496, !alias.scope !1279
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(60) %7, ptr noundef nonnull align 8 dereferenceable(56) %6, i64 24, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 24
  call void @_ZN3jxl13AlignedMemoryC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.h) #30
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.k = load i64, ptr %i.j, align 8, !tbaa !494, !noalias !1279
  store i64 %i.k, ptr %i.i, align 8, !tbaa !494, !alias.scope !1279
  br label %_ZN3jxl5PlaneIiE6CreateEP22JxlMemoryManagerStructmmm.exit

_ZN3jxl5PlaneIiE6CreateEP22JxlMemoryManagerStructmmm.exit: ; preds = %bb.c, %.critedge.i
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 24
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.l) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28, !noalias !1279
  %.pre = load i32, ptr %i.f, align 8, !tbaa !496 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 56
  %i.n = icmp eq i32 %.pre, 0
  br i1 %i.n, label %bb.d, label %.thread45

.thread45:                                        ; preds = %bb.a, %_ZN3jxl5PlaneIiE6CreateEP22JxlMemoryManagerStructmmm.exit
  %i.o = phi i32 [ %.pre, %_ZN3jxl5PlaneIiE6CreateEP22JxlMemoryManagerStructmmm.exit ], [ 1, %bb.a ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 %i.o, ptr %i.p, align 8, !tbaa !669
  br label %_ZN3jxl8StatusOrINS_5PlaneIiEEED2Ev.exit30

bb.d:                                             ; preds = %_ZN3jxl5PlaneIiE6CreateEP22JxlMemoryManagerStructmmm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  call void @llvm.experimental.noalias.scope.decl(metadata !1280)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %8, ptr noundef nonnull align 8 dereferenceable(60) %7, i64 24, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  call void @_ZN3jxl13AlignedMemoryC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.r) #30
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 48 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.u = load i64, ptr %i.t, align 8, !tbaa !494, !noalias !1280
  store i64 %i.u, ptr %i.s, align 8, !tbaa !494, !alias.scope !1280
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  call void @llvm.experimental.noalias.scope.decl(metadata !1281)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28, !noalias !1281
  call void @_ZN3jxl6detail9PlaneBaseC2Ejjm(ptr noundef nonnull align 8 dereferenceable(56) %5, i32 noundef %i.a, i32 noundef %i.b, i64 noundef 4) #30, !noalias !1281
  %i.v = call i32 @_ZN3jxl6detail9PlaneBase8AllocateEP22JxlMemoryManagerStructm(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef %1, i64 noundef 0) #30, !noalias !1281 ; 2 uses
  %i.w = icmp eq i32 %i.v, 0
  %i.x = getelementptr inbounds nuw i8, ptr %9, i64 56 ; 3 uses
  br i1 %i.w, label %.critedge.i25, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 %i.v, ptr %i.x, align 8, !tbaa !496, !alias.scope !1281
  br label %_ZN3jxl5PlaneIiE6CreateEP22JxlMemoryManagerStructmmm.exit26

.critedge.i25:                                    ; preds = %bb.d
  store i32 0, ptr %i.x, align 8, !tbaa !496, !alias.scope !1281
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(60) %9, ptr noundef nonnull align 8 dereferenceable(56) %5, i64 24, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 24
  call void @_ZN3jxl13AlignedMemoryC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %i.z) #30
  %i.aa = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 48
end_hunk_0
begin_hunk_1_@_ZN3jxl6Image3IiE6CreateEP22JxlMemoryManagerStructmm:bb.a
  call void @_ZN3jxl13AlignedMemoryC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.ay, ptr noundef nonnull align 8 dereferenceable(24) %i.az) #30
  %i.ba = getelementptr inbounds nuw i8, ptr %12, i64 48 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %11, i64 48
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !494, !noalias !1284
  store i64 %i.bc, ptr %i.ba, align 8, !tbaa !494, !alias.scope !1284
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #28
  %i.bd = getelementptr inbounds nuw i8, ptr %13, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.bd, i8 0, i64 144, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %13, ptr noundef nonnull align 8 dereferenceable(56) %8, i64 24, i1 false)
  %i.be = getelementptr inbounds nuw i8, ptr %13, i64 24 ; 3 uses
  %i.bf = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN3jxl13AlignedMemoryaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.be, ptr noundef nonnull align 8 dereferenceable(24) %i.q) #30 ; 0 uses
  %i.bg = load i64, ptr %i.s, align 8, !tbaa !494
  %i.bh = getelementptr inbounds nuw i8, ptr %13, i64 48 ; 2 uses
  store i64 %i.bg, ptr %i.bh, align 8, !tbaa !494
  %i.bi = getelementptr inbounds nuw i8, ptr %13, i64 56 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bi, ptr noundef nonnull align 8 dereferenceable(56) %10, i64 24, i1 false)
  %i.bj = getelementptr inbounds nuw i8, ptr %13, i64 80 ; 3 uses
  %i.bk = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN3jxl13AlignedMemoryaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.bj, ptr noundef nonnull align 8 dereferenceable(24) %i.ah) #30 ; 0 uses
  %i.bl = load i64, ptr %i.aj, align 8, !tbaa !494
  %i.bm = getelementptr inbounds nuw i8, ptr %13, i64 104 ; 2 uses
  store i64 %i.bl, ptr %i.bm, align 8, !tbaa !494
  %i.bn = getelementptr inbounds nuw i8, ptr %13, i64 112 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bn, ptr noundef nonnull align 8 dereferenceable(56) %12, i64 24, i1 false)
  %i.bo = getelementptr inbounds nuw i8, ptr %13, i64 136 ; 3 uses
  %i.bp = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN3jxl13AlignedMemoryaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.bo, ptr noundef nonnull align 8 dereferenceable(24) %i.ay) #30 ; 0 uses
  %i.bq = load i64, ptr %i.ba, align 8, !tbaa !494
  %i.br = getelementptr inbounds nuw i8, ptr %13, i64 160 ; 2 uses
  store i64 %i.bq, ptr %i.br, align 8, !tbaa !494
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(148) %i.bs, i8 0, i64 148, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(172) %0, ptr noundef nonnull align 8 dereferenceable(168) %13, i64 24, i1 false)
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bu = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN3jxl13AlignedMemoryaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.bt, ptr noundef nonnull align 8 dereferenceable(24) %i.be) #30 ; 0 uses
  %i.bv = load i64, ptr %i.bh, align 8, !tbaa !494
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.bv, ptr %i.bw, align 8, !tbaa !494
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bx, ptr noundef nonnull align 8 dereferenceable(56) %i.bi, i64 24, i1 false)
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bz = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN3jxl13AlignedMemoryaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.by, ptr noundef nonnull align 8 dereferenceable(24) %i.bj) #30 ; 0 uses
  %i.ca = load i64, ptr %i.bm, align 8, !tbaa !494
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 %i.ca, ptr %i.cb, align 8, !tbaa !494
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.cc, ptr noundef nonnull align 8 dereferenceable(56) %i.bn, i64 24, i1 false)
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ce = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN3jxl13AlignedMemoryaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.cd, ptr noundef nonnull align 8 dereferenceable(24) %i.bo) #30 ; 0 uses
  %i.cf = load i64, ptr %i.br, align 8, !tbaa !494
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i64 %i.cf, ptr %i.cg, align 8, !tbaa !494
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.bo) #30
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.bj) #30
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.be) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ay) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  %.pr = load i32, ptr %i.ax, align 8, !tbaa !496
  %i.ch = icmp eq i32 %.pr, 0
  br i1 %i.ch, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.az) #30
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ah) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  %.pr42 = load i32, ptr %i.ae, align 8, !tbaa !496
  %i.ci = icmp eq i32 %.pr42, 0
  br i1 %i.ci, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ai) #30
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %.thread43
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.q) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  %.pr44 = load i32, ptr %i.m, align 8, !tbaa !496
  %i.cj = icmp eq i32 %.pr44, 0
  br i1 %i.cj, label %bb.m, label %_ZN3jxl8StatusOrINS_5PlaneIiEEED2Ev.exit30

bb.m:                                             ; preds = %bb.l
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.r) #30
  br label %_ZN3jxl8StatusOrINS_5PlaneIiEEED2Ev.exit30

_ZN3jxl8StatusOrINS_5PlaneIiEEED2Ev.exit30:       ; preds = %.thread45, %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3jxl8ACImageTIiED2Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  tail call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.a) #30
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.b) #30
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.c) #30
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3jxl8ACImageTIiED0Ev(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  tail call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.a) #30
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.b) #30
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.c) #30
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 176) #33
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK3jxl8ACImageTIiE4TypeEv(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  ret i32 1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZN3jxl8ACImageTIiE8PlaneRowEmmm(ptr noundef nonnull align 8 dereferenceable(176) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !542
  %i.c = mul i64 %i.b, %2
  %i.d = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %1
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !344  ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.f, i64 64) ]
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.c ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.g, i64 64) ]
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %3
  ret ptr %i.h
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZNK3jxl8ACImageTIiE8PlaneRowEmmm(ptr noundef nonnull align 8 dereferenceable(176) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !542
  %i.c = mul i64 %i.b, %2
  %i.d = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %1
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !344  ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.f, i64 64) ]
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.c ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.g, i64 64) ]
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %3
  ret ptr %i.h
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZNK3jxl8ACImageTIiE12PixelsPerRowEv(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !542
  %i.c = lshr i64 %i.b, 2
  ret i64 %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3jxl8ACImageTIiE8ZeroFillEv(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.d = load i32, ptr %i.b, align 4, !tbaa !418  ; 2 uses
  %.not13.i = icmp eq i32 %i.d, 0
  br i1 %.not13.i, label %_ZN3jxl13ZeroFillImageIiEEvPNS_6Image3IT_EE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load i32, ptr %i.a, align 8, !tbaa !403  ; 3 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %_ZN3jxl13ZeroFillImageIiEEvPNS_6Image3IT_EE.exit, label %.lr.ph.split.i

._crit_edge.i:                                    ; preds = %bb.g
  %.not13.1.i = icmp eq i32 %i.at, 0
  br i1 %.not13.1.i, label %_ZN3jxl13ZeroFillImageIiEEvPNS_6Image3IT_EE.exit, label %.lr.ph.1.i

.lr.ph.1.i:                                       ; preds = %._crit_edge.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.i = icmp eq i32 %.pr.i, 0
  br i1 %i.i, label %_ZN3jxl13ZeroFillImageIiEEvPNS_6Image3IT_EE.exit, label %.lr.ph.split.1.i

.lr.ph.split.1.i:                                 ; preds = %.lr.ph.1.i, %bb.c
  %.pr41.i5 = phi i32 [ %.pr41.i, %bb.c ], [ %.pr.i, %.lr.ph.1.i ]
  %i.j = phi i32 [ %i.r, %bb.c ], [ %i.at, %.lr.ph.1.i ]
  %i.k = phi i32 [ %i.s, %bb.c ], [ %.pr.i, %.lr.ph.1.i ] ; 2 uses
  %.011.1.i = phi i64 [ %i.t, %bb.c ], [ 0, %.lr.ph.1.i ] ; 2 uses
  %.not.1.i = icmp eq i32 %i.k, 0
  br i1 %.not.1.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.1.i
  %i.l = zext i32 %i.k to i64
  %i.m = load ptr, ptr %i.h, align 8, !tbaa !344  ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.m, i64 64) ]
  %i.n = load i64, ptr %i.c, align 8, !tbaa !542
  %i.o = mul i64 %i.n, %.011.1.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.o ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.p, i64 64) ]
  %i.q = shl nuw nsw i64 %i.l, 2
  tail call void @llvm.memset.p0.i64(ptr align 64 %i.p, i8 0, i64 %i.q, i1 false)
  %.pre17.i = load i32, ptr %i.a, align 8, !tbaa !403 ; 2 uses
  %.pre19.i = load i32, ptr %i.b, align 4, !tbaa !418
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.split.1.i
  %.pr41.i = phi i32 [ %.pre17.i, %bb.b ], [ %.pr41.i5, %.lr.ph.split.1.i ] ; 3 uses
  %i.r = phi i32 [ %.pre19.i, %bb.b ], [ %i.j, %.lr.ph.split.1.i ] ; 4 uses
  %i.s = phi i32 [ %.pre17.i, %bb.b ], [ 0, %.lr.ph.split.1.i ]
  %i.t = add nuw nsw i64 %.011.1.i, 1             ; 2 uses
  %i.u = zext i32 %i.r to i64
  %i.v = icmp samesign ult i64 %i.t, %i.u
  br i1 %i.v, label %.lr.ph.split.1.i, label %._crit_edge.1.i, !llvm.loop !1285

._crit_edge.1.i:                                  ; preds = %bb.c
  %.not13.2.i = icmp eq i32 %i.r, 0
  br i1 %.not13.2.i, label %_ZN3jxl13ZeroFillImageIiEEvPNS_6Image3IT_EE.exit, label %.lr.ph.2.i

.lr.ph.2.i:                                       ; preds = %._crit_edge.1.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.x = icmp eq i32 %.pr41.i, 0
  br i1 %i.x, label %_ZN3jxl13ZeroFillImageIiEEvPNS_6Image3IT_EE.exit, label %.lr.ph.split.2.i

.lr.ph.split.2.i:                                 ; preds = %.lr.ph.2.i, %bb.e
  %i.y = phi i32 [ %i.ag, %bb.e ], [ %i.r, %.lr.ph.2.i ]
  %i.z = phi i32 [ %i.ah, %bb.e ], [ %.pr41.i, %.lr.ph.2.i ] ; 2 uses
  %.011.2.i = phi i64 [ %i.ai, %bb.e ], [ 0, %.lr.ph.2.i ] ; 2 uses
  %.not.2.i = icmp eq i32 %i.z, 0
  br i1 %.not.2.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.split.2.i
  %i.aa = zext i32 %i.z to i64
  %i.ab = load ptr, ptr %i.w, align 8, !tbaa !344 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ab, i64 64) ]
  %i.ac = load i64, ptr %i.c, align 8, !tbaa !542
  %i.ad = mul i64 %i.ac, %.011.2.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ad ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ae, i64 64) ]
  %i.af = shl nuw nsw i64 %i.aa, 2
  tail call void @llvm.memset.p0.i64(ptr align 64 %i.ae, i8 0, i64 %i.af, i1 false)
  %.pre20.i = load i32, ptr %i.a, align 8, !tbaa !403
  %.pre22.i = load i32, ptr %i.b, align 4, !tbaa !418
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.split.2.i
  %i.ag = phi i32 [ %.pre22.i, %bb.d ], [ %i.y, %.lr.ph.split.2.i ] ; 2 uses
  %i.ah = phi i32 [ %.pre20.i, %bb.d ], [ 0, %.lr.ph.split.2.i ]
  %i.ai = add nuw nsw i64 %.011.2.i, 1            ; 2 uses
  %i.aj = zext i32 %i.ag to i64
  %i.ak = icmp samesign ult i64 %i.ai, %i.aj
  br i1 %i.ak, label %.lr.ph.split.2.i, label %_ZN3jxl13ZeroFillImageIiEEvPNS_6Image3IT_EE.exit, !llvm.loop !1285

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %bb.g
  %.pr.i3 = phi i32 [ %.pr.i, %bb.g ], [ %i.f, %.lr.ph.i ]
  %i.al = phi i32 [ %i.at, %bb.g ], [ %i.d, %.lr.ph.i ]
  %i.am = phi i32 [ %i.au, %bb.g ], [ %i.f, %.lr.ph.i ] ; 2 uses
  %.011.i = phi i64 [ %i.av, %bb.g ], [ 0, %.lr.ph.i ] ; 2 uses
  %.not.i = icmp eq i32 %i.am, 0
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph.split.i
  %i.an = zext i32 %i.am to i64
  %i.ao = load ptr, ptr %i.e, align 8, !tbaa !344 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ao, i64 64) ]
  %i.ap = load i64, ptr %i.c, align 8, !tbaa !542
  %i.aq = mul i64 %i.ap, %.011.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.aq ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ar, i64 64) ]
  %i.as = shl nuw nsw i64 %i.an, 2
  tail call void @llvm.memset.p0.i64(ptr align 64 %i.ar, i8 0, i64 %i.as, i1 false)
  %.pre.i = load i32, ptr %i.a, align 8, !tbaa !403 ; 2 uses
  %.pre16.i = load i32, ptr %i.b, align 4, !tbaa !418
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph.split.i
  %.pr.i = phi i32 [ %.pre.i, %bb.f ], [ %.pr.i3, %.lr.ph.split.i ] ; 4 uses
  %i.at = phi i32 [ %.pre16.i, %bb.f ], [ %i.al, %.lr.ph.split.i ] ; 4 uses
  %i.au = phi i32 [ %.pre.i, %bb.f ], [ 0, %.lr.ph.split.i ]
  %i.av = add nuw nsw i64 %.011.i, 1              ; 2 uses
  %i.aw = zext i32 %i.at to i64
  %i.ax = icmp samesign ult i64 %i.av, %i.aw
  br i1 %i.ax, label %.lr.ph.split.i, label %._crit_edge.i, !llvm.loop !1285

_ZN3jxl13ZeroFillImageIiEEvPNS_6Image3IT_EE.exit: ; preds = %bb.e, %bb.a, %.lr.ph.i, %._crit_edge.i, %.lr.ph.1.i, %._crit_edge.1.i, %.lr.ph.2.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3jxl8ACImageTIiE13ZeroFillPlaneEm(ptr noundef nonnull align 8 dereferenceable(176) %0, i64 noundef %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw [56 x i8], ptr %i.a, i64 %1 ; 5 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !403
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %_ZN3jxl13ZeroFillImageIiEEvPNS_5PlaneIT_EE.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !418
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %_ZN3jxl13ZeroFillImageIiEEvPNS_5PlaneIT_EE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i
  %.07.i = phi i64 [ 0, %.lr.ph.i ], [ %i.p, %bb.b ] ; 2 uses
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !344
  %i.j = load i64, ptr %i.h, align 8, !tbaa !542
  %i.k = mul i64 %i.j, %.07.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.k ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.l, i64 64) ]
  %i.m = load i32, ptr %i.b, align 8, !tbaa !403
  %i.n = zext i32 %i.m to i64
  %i.o = shl nuw nsw i64 %i.n, 2
  tail call void @llvm.memset.p0.i64(ptr align 64 %i.l, i8 0, i64 %i.o, i1 false)
  %i.p = add nuw nsw i64 %.07.i, 1                ; 2 uses
  %i.q = load i32, ptr %i.e, align 4, !tbaa !418
  %i.r = zext i32 %i.q to i64
  %i.s = icmp samesign ult i64 %i.p, %i.r
  br i1 %i.s, label %bb.b, label %_ZN3jxl13ZeroFillImageIiEEvPNS_5PlaneIT_EE.exit, !llvm.loop !1286

_ZN3jxl13ZeroFillImageIiEEvPNS_5PlaneIT_EE.exit:  ; preds = %bb.b, %bb.a, %.preheader.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK3jxl8ACImageTIiE7IsEmptyEv(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !403
  %i.c = icmp eq i32 %i.b, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.e = load i32, ptr %i.d, align 4
  %i.f = icmp eq i32 %i.e, 0
  %i.g = select i1 %i.c, i1 true, i1 %i.f
  ret i1 %i.g
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__16vectorINS_10unique_ptrIN3jxl7ACImageENS_14default_deleteIS3_EEEENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS1_INS2_8ACImageTIiEENS4_ISC_EEEEEEEPS6_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !556
  %i.c = load ptr, ptr %0, align 8, !tbaa !557
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr exact i64 %i.f, 3
  %i.h = add nsw i64 %i.g, 1                      ; 2 uses
  %i.i = icmp ugt i64 %i.h, 2305843009213693951
  br i1 %i.i, label %bb.b, label %_ZNKSt3__16vectorINS_10unique_ptrIN3jxl7ACImageENS_14default_deleteIS3_EEEENS_9allocatorIS6_EEE11__recommendB8nn180100Em.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNKSt3__16vectorINS_10unique_ptrIN3jxl7ACImageENS_14default_deleteIS3_EEEENS_9allocatorIS6_EEE20__throw_length_errorB8nn180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #31
  unreachable

_ZNKSt3__16vectorINS_10unique_ptrIN3jxl7ACImageENS_14default_deleteIS3_EEEENS_9allocatorIS6_EEE11__recommendB8nn180100Em.exit: ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !566
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = sub i64 %i.l, %i.e                       ; 2 uses
  %.not.i = icmp ult i64 %i.m, 9223372036854775800
  %i.n = ashr exact i64 %i.m, 2
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.n, i64 %i.h)
  %.0.i = select i1 %.not.i, i64 %.sroa.speculated.i, i64 2305843009213693951 ; 4 uses
  %i.o = icmp ne i64 %.0.i, 0
  tail call void @llvm.assume(i1 %i.o)
  %i.p = icmp ugt i64 %.0.i, 2305843009213693951
  br i1 %i.p, label %bb.c, label %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorINS_10unique_ptrIN3jxl7ACImageENS_14default_deleteIS4_EEEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERSB_m.exit.i

bb.c:                                             ; preds = %_ZNKSt3__16vectorINS_10unique_ptrIN3jxl7ACImageENS_14default_deleteIS3_EEEENS_9allocatorIS6_EEE11__recommendB8nn180100Em.exit
  tail call void @_ZSt28__throw_bad_array_new_lengthB8nn180100v() #31
  unreachable

_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorINS_10unique_ptrIN3jxl7ACImageENS_14default_deleteIS4_EEEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERSB_m.exit.i: ; preds = %_ZNKSt3__16vectorINS_10unique_ptrIN3jxl7ACImageENS_14default_deleteIS3_EEEENS_9allocatorIS6_EEE11__recommendB8nn180100Em.exit
  %i.q = shl nuw i64 %.0.i, 3
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #32 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.f ; 4 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.0.i ; 2 uses
  %i.u = load ptr, ptr %1, align 8, !tbaa !563
  store ptr null, ptr %1, align 8, !tbaa !563
  store ptr %i.u, ptr %i.s, align 8, !tbaa !568
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 3 uses
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !556  ; 3 uses
  %i.x = load ptr, ptr %0, align 8, !tbaa !557    ; 6 uses
  %.not13.i.i = icmp eq ptr %i.w, %i.x
  br i1 %.not13.i.i, label %_ZNSt3__16vectorINS_10unique_ptrIN3jxl7ACImageENS_14default_deleteIS3_EEEENS_9allocatorIS6_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS6_RS8_EE.exit.thread, label %.lr.ph.i.i

_ZNSt3__16vectorINS_10unique_ptrIN3jxl7ACImageENS_14default_deleteIS3_EEEENS_9allocatorIS6_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS6_RS8_EE.exit.thread: ; preds = %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorINS_10unique_ptrIN3jxl7ACImageENS_14default_deleteIS4_EEEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERSB_m.exit.i
  store ptr %i.s, ptr %0, align 8, !tbaa !566
  store ptr %i.v, ptr %i.a, align 8, !tbaa !566
  %i.y = load ptr, ptr %i.j, align 8, !tbaa !566
  store ptr %i.t, ptr %i.j, align 8, !tbaa !566
  br label %_ZNSt3__114__split_bufferINS_10unique_ptrIN3jxl7ACImageENS_14default_deleteIS3_EEEERNS_9allocatorIS6_EEE5clearB8nn180100Ev.exit.i

.lr.ph.i.i:                                       ; preds = %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorINS_10unique_ptrIN3jxl7ACImageENS_14default_deleteIS4_EEEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERSB_m.exit.i, %.lr.ph.i.i
  %i.z = phi ptr [ %i.aa, %.lr.ph.i.i ], [ %i.s, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorINS_10unique_ptrIN3jxl7ACImageENS_14default_deleteIS4_EEEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERSB_m.exit.i ]
  %.sroa.18.014.i.i = phi ptr [ %i.ab, %.lr.ph.i.i ], [ %i.w, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorINS_10unique_ptrIN3jxl7ACImageENS_14default_deleteIS4_EEEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERSB_m.exit.i ]
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 -8 ; 3 uses
  %i.ab = getelementptr inbounds i8, ptr %.sroa.18.014.i.i, i64 -8 ; 4 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !559
  store ptr null, ptr %i.ab, align 8, !tbaa !559
  store ptr %i.ac, ptr %i.aa, align 8, !tbaa !568
  %.not.i.i = icmp eq ptr %i.ab, %i.x
  br i1 %.not.i.i, label %_ZNSt3__16vectorINS_10unique_ptrIN3jxl7ACImageENS_14default_deleteIS3_EEEENS_9allocatorIS6_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS6_RS8_EE.exit, label %.lr.ph.i.i, !llvm.loop !1287

_ZNSt3__16vectorINS_10unique_ptrIN3jxl7ACImageENS_14default_deleteIS3_EEEENS_9allocatorIS6_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS6_RS8_EE.exit: ; preds = %.lr.ph.i.i
  store ptr %i.aa, ptr %0, align 8, !tbaa !566
  store ptr %i.v, ptr %i.a, align 8, !tbaa !566
  %i.ad = load ptr, ptr %i.j, align 8, !tbaa !566
  store ptr %i.t, ptr %i.j, align 8, !tbaa !566
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt3__16vectorINS_10unique_ptrIN3jxl7ACImageENS_14default_deleteIS3_EEEENS_9allocatorIS6_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS6_RS8_EE.exit, %_ZNSt3__116allocator_traitsINS_9allocatorINS_10unique_ptrIN3jxl7ACImageENS_14default_deleteIS4_EEEEEEE7destroyB8nn180100IS7_vEEvRS8_PT_.exit.i.i.i.i
  %i.ae = phi ptr [ %i.af, %_ZNSt3__116allocator_traitsINS_9allocatorINS_10unique_ptrIN3jxl7ACImageENS_14default_deleteIS4_EEEEEEE7destroyB8nn180100IS7_vEEvRS8_PT_.exit.i.i.i.i ], [ %i.w, %_ZNSt3__16vectorINS_10unique_ptrIN3jxl7ACImageENS_14default_deleteIS3_EEEENS_9allocatorIS6_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS6_RS8_EE.exit ]
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 -8 ; 4 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !559 ; 3 uses
  store ptr null, ptr %i.af, align 8, !tbaa !559
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt3__116allocator_traitsINS_9allocatorINS_10unique_ptrIN3jxl7ACImageENS_14default_deleteIS4_EEEEEEE7destroyB8nn180100IS7_vEEvRS8_PT_.exit.i.i.i.i, label %_ZNKSt3__114default_deleteIN3jxl7ACImageEEclB8nn180100EPS2_.exit.i.i.i.i.i.i.i.i

_ZNKSt3__114default_deleteIN3jxl7ACImageEEclB8nn180100EPS2_.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !325
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8
  tail call void %i.aj(ptr noundef nonnull align 8 dereferenceable(8) %i.ag) #30, !inline_history !1288
  br label %_ZNSt3__116allocator_traitsINS_9allocatorINS_10unique_ptrIN3jxl7ACImageENS_14default_deleteIS4_EEEEEEE7destroyB8nn180100IS7_vEEvRS8_PT_.exit.i.i.i.i

_ZNSt3__116allocator_traitsINS_9allocatorINS_10unique_ptrIN3jxl7ACImageENS_14default_deleteIS4_EEEEEEE7destroyB8nn180100IS7_vEEvRS8_PT_.exit.i.i.i.i: ; preds = %_ZNKSt3__114default_deleteIN3jxl7ACImageEEclB8nn180100EPS2_.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %.not.i.i.i.i = icmp eq ptr %i.x, %i.af
  br i1 %.not.i.i.i.i, label %_ZNSt3__114__split_bufferINS_10unique_ptrIN3jxl7ACImageENS_14default_deleteIS3_EEEERNS_9allocatorIS6_EEE5clearB8nn180100Ev.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !1289

_ZNSt3__114__split_bufferINS_10unique_ptrIN3jxl7ACImageENS_14default_deleteIS3_EEEERNS_9allocatorIS6_EEE5clearB8nn180100Ev.exit.i: ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorINS_10unique_ptrIN3jxl7ACImageENS_14default_deleteIS4_EEEEEEE7destroyB8nn180100IS7_vEEvRS8_PT_.exit.i.i.i.i, %_ZNSt3__16vectorINS_10unique_ptrIN3jxl7ACImageENS_14default_deleteIS3_EEEENS_9allocatorIS6_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS6_RS8_EE.exit.thread
  %i.ak = phi ptr [ %i.y, %_ZNSt3__16vectorINS_10unique_ptrIN3jxl7ACImageENS_14default_deleteIS3_EEEENS_9allocatorIS6_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS6_RS8_EE.exit.thread ], [ %i.ad, %_ZNSt3__116allocator_traitsINS_9allocatorINS_10unique_ptrIN3jxl7ACImageENS_14default_deleteIS4_EEEEEEE7destroyB8nn180100IS7_vEEvRS8_PT_.exit.i.i.i.i ]
  %.not.i4 = icmp eq ptr %i.x, null
  br i1 %.not.i4, label %_ZNSt3__114__split_bufferINS_10unique_ptrIN3jxl7ACImageENS_14default_deleteIS3_EEEERNS_9allocatorIS6_EEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt3__114__split_bufferINS_10unique_ptrIN3jxl7ACImageENS_14default_deleteIS3_EEEERNS_9allocatorIS6_EEE5clearB8nn180100Ev.exit.i
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = ptrtoint ptr %i.x to i64
  %i.an = sub i64 %i.al, %i.am
  tail call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef %i.an) #33
  br label %_ZNSt3__114__split_bufferINS_10unique_ptrIN3jxl7ACImageENS_14default_deleteIS3_EEEERNS_9allocatorIS6_EEED2Ev.exit

_ZNSt3__114__split_bufferINS_10unique_ptrIN3jxl7ACImageENS_14default_deleteIS3_EEEERNS_9allocatorIS6_EEED2Ev.exit: ; preds = %_ZNSt3__114__split_bufferINS_10unique_ptrIN3jxl7ACImageENS_14default_deleteIS3_EEEERNS_9allocatorIS6_EEE5clearB8nn180100Ev.exit.i, %bb.d
  ret ptr %i.v
}

; Function Attrs: mustprogress noreturn nounwind uwtable
define linkonce_odr hidden void @_ZNKSt3__16vectorINS_10unique_ptrIN3jxl7ACImageENS_14default_deleteIS3_EEEENS_9allocatorIS6_EEE20__throw_length_errorB8nn180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @_ZNSt3__120__throw_length_errorB8nn180100EPKc(ptr noundef nonnull @.str.22) #31
  unreachable
}

; Function Attrs: mustprogress noreturn nounwind uwtable
define linkonce_odr hidden void @_ZNKSt3__16vectorIiNS_9allocatorIiEEE20__throw_length_errorB8nn180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @_ZNSt3__120__throw_length_errorB8nn180100EPKc(ptr noundef nonnull @.str.22) #31
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3__16vectorIiNS_9allocatorIiEEE18__assign_with_sizeB8nn180100IPiS5_EEvT_T0_l(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !111  ; 2 uses
end_hunk_1
