Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/enc_ans?download=true
inline.NumInlined: 3179
inline.NumDeleted: 1812
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZNSt3__16vectorIN3jxl16HybridUintConfigENS_9allocatorIS2_EEE6assignEmRKS2_:bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.08.i.i.prol, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !276
  %i.n = getelementptr inbounds nuw i8, ptr %.08.i.i.prol, i64 16 ; 2 uses
  %i.o = add i64 %.057.i.i.prol, -1               ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !272

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.08.i.i.unr = phi ptr [ %i.c, %.lr.ph.i.i.preheader ], [ %i.n, %.lr.ph.i.i.prol ]
  %.057.i.i.unr = phi i64 [ %.sroa.speculated, %.lr.ph.i.i.preheader ], [ %i.o, %.lr.ph.i.i.prol ]
  %i.p = icmp ult i64 %.sroa.speculated, 4
  br i1 %i.p, label %_ZNSt3__16fill_nB8nn180100IPN3jxl16HybridUintConfigEmS2_EET_S4_T0_RKT1_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.08.i.i = phi ptr [ %i.t, %.lr.ph.i.i ], [ %.08.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  %.057.i.i = phi i64 [ %i.u, %.lr.ph.i.i ], [ %.057.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.08.i.i, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !276
  %i.q = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.q, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !276
  %i.r = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.r, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !276
  %i.s = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.s, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !276
  %i.t = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 64
  %i.u = add i64 %.057.i.i, -4                    ; 2 uses
  %.not.i.i.3 = icmp eq i64 %i.u, 0
  br i1 %.not.i.i.3, label %_ZNSt3__16fill_nB8nn180100IPN3jxl16HybridUintConfigEmS2_EET_S4_T0_RKT1_.exit, label %.lr.ph.i.i, !llvm.loop !273

_ZNSt3__16fill_nB8nn180100IPN3jxl16HybridUintConfigEmS2_EET_S4_T0_RKT1_.exit: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.b
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNSt3__16fill_nB8nn180100IPN3jxl16HybridUintConfigEmS2_EET_S4_T0_RKT1_.exit
  %i.v = sub nuw i64 %1, %i.l
  %i.w = load ptr, ptr %i.h, align 8, !tbaa !22   ; 2 uses
  %.idx.i = shl nuw nsw i64 %i.v, 4
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %.idx.i ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.sroa.4.08.i = phi ptr [ %i.y, %.lr.ph.i ], [ %i.w, %bb.c ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.4.08.i, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !276
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.4.08.i, i64 16 ; 2 uses
  %.not.i = icmp eq ptr %i.y, %i.x
  br i1 %.not.i, label %_ZNSt3__16vectorIN3jxl16HybridUintConfigENS_9allocatorIS2_EEE18__construct_at_endEmRKS2_.exit, label %.lr.ph.i, !llvm.loop !274

_ZNSt3__16vectorIN3jxl16HybridUintConfigENS_9allocatorIS2_EEE18__construct_at_endEmRKS2_.exit: ; preds = %.lr.ph.i
  store ptr %i.x, ptr %i.h, align 8, !tbaa !22
  br label %bb.i

bb.d:                                             ; preds = %_ZNSt3__16fill_nB8nn180100IPN3jxl16HybridUintConfigEmS2_EET_S4_T0_RKT1_.exit
  %i.z = load ptr, ptr %0, align 8, !tbaa !21
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %1
  store ptr %i.aa, ptr %i.h, align 8, !tbaa !22
  br label %bb.i

bb.e:                                             ; preds = %bb.a
  %.not.i5 = icmp eq ptr %i.c, null
  br i1 %.not.i5, label %_ZNSt3__16vectorIN3jxl16HybridUintConfigENS_9allocatorIS2_EEE13__vdeallocateEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %i.ab, align 8, !tbaa !22
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.f) #24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %_ZNSt3__16vectorIN3jxl16HybridUintConfigENS_9allocatorIS2_EEE13__vdeallocateEv.exit

_ZNSt3__16vectorIN3jxl16HybridUintConfigENS_9allocatorIS2_EEE13__vdeallocateEv.exit: ; preds = %bb.e, %bb.f
  %i.ac = phi ptr [ %i.b, %bb.e ], [ null, %bb.f ] ; 2 uses
  %i.ad = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.ad, label %bb.g, label %_ZNKSt3__16vectorIN3jxl16HybridUintConfigENS_9allocatorIS2_EEE11__recommendB8nn180100Em.exit

bb.g:                                             ; preds = %_ZNSt3__16vectorIN3jxl16HybridUintConfigENS_9allocatorIS2_EEE13__vdeallocateEv.exit
  tail call void @_ZNKSt3__16vectorIN3jxl16HybridUintConfigENS_9allocatorIS2_EEE20__throw_length_errorB8nn180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #26
  unreachable

_ZNKSt3__16vectorIN3jxl16HybridUintConfigENS_9allocatorIS2_EEE11__recommendB8nn180100Em.exit: ; preds = %_ZNSt3__16vectorIN3jxl16HybridUintConfigENS_9allocatorIS2_EEE13__vdeallocateEv.exit
  %i.ae = ptrtoint ptr %i.ac to i64
  %.not.i6 = icmp ult ptr %i.ac, inttoptr (i64 9223372036854775792 to ptr)
  %i.af = ashr exact i64 %i.ae, 3
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.af, i64 %1)
  %.0.i = select i1 %.not.i6, i64 %.sroa.speculated.i, i64 1152921504606846975 ; 3 uses
  %i.ag = icmp ugt i64 %.0.i, 1152921504606846975
  br i1 %i.ag, label %bb.h, label %_ZNSt3__16vectorIN3jxl16HybridUintConfigENS_9allocatorIS2_EEE11__vallocateB8nn180100Em.exit

bb.h:                                             ; preds = %_ZNKSt3__16vectorIN3jxl16HybridUintConfigENS_9allocatorIS2_EEE11__recommendB8nn180100Em.exit
  tail call void @_ZNKSt3__16vectorIN3jxl16HybridUintConfigENS_9allocatorIS2_EEE20__throw_length_errorB8nn180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #26
  unreachable

_ZNSt3__16vectorIN3jxl16HybridUintConfigENS_9allocatorIS2_EEE11__vallocateB8nn180100Em.exit: ; preds = %_ZNKSt3__16vectorIN3jxl16HybridUintConfigENS_9allocatorIS2_EEE11__recommendB8nn180100Em.exit
  %i.ah = shl nuw i64 %.0.i, 4
  %i.ai = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ah) #25 ; 6 uses
  store ptr %i.ai, ptr %0, align 8, !tbaa !21
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !22
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %i.ai, i64 %.0.i
  store ptr %i.ak, ptr %i.a, align 8, !tbaa !164
  %.idx.i7 = shl nuw nsw i64 %1, 4                ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 %.idx.i7 ; 2 uses
  %i.am = add nsw i64 %.idx.i7, -16               ; 2 uses
  %i.an = lshr exact i64 %i.am, 4
  %i.ao = add nuw nsw i64 %i.an, 1
  %xtraiter26 = and i64 %i.ao, 3                  ; 2 uses
  %lcmp.mod27.not = icmp eq i64 %xtraiter26, 0
  br i1 %lcmp.mod27.not, label %.lr.ph.i9.prol.loopexit, label %.lr.ph.i9.prol

.lr.ph.i9.prol:                                   ; preds = %_ZNSt3__16vectorIN3jxl16HybridUintConfigENS_9allocatorIS2_EEE11__vallocateB8nn180100Em.exit, %.lr.ph.i9.prol
  %.sroa.4.08.i10.prol = phi ptr [ %i.ap, %.lr.ph.i9.prol ], [ %i.ai, %_ZNSt3__16vectorIN3jxl16HybridUintConfigENS_9allocatorIS2_EEE11__vallocateB8nn180100Em.exit ] ; 2 uses
  %prol.iter28 = phi i64 [ %prol.iter28.next, %.lr.ph.i9.prol ], [ 0, %_ZNSt3__16vectorIN3jxl16HybridUintConfigENS_9allocatorIS2_EEE11__vallocateB8nn180100Em.exit ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.4.08.i10.prol, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !276
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.4.08.i10.prol, i64 16 ; 2 uses
  %prol.iter28.next = add i64 %prol.iter28, 1     ; 2 uses
  %prol.iter28.cmp.not = icmp eq i64 %prol.iter28.next, %xtraiter26
  br i1 %prol.iter28.cmp.not, label %.lr.ph.i9.prol.loopexit, label %.lr.ph.i9.prol, !llvm.loop !275

.lr.ph.i9.prol.loopexit:                          ; preds = %.lr.ph.i9.prol, %_ZNSt3__16vectorIN3jxl16HybridUintConfigENS_9allocatorIS2_EEE11__vallocateB8nn180100Em.exit
  %.sroa.4.08.i10.unr = phi ptr [ %i.ai, %_ZNSt3__16vectorIN3jxl16HybridUintConfigENS_9allocatorIS2_EEE11__vallocateB8nn180100Em.exit ], [ %i.ap, %.lr.ph.i9.prol ]
  %i.aq = icmp ult i64 %i.am, 48
  br i1 %i.aq, label %_ZNSt3__16vectorIN3jxl16HybridUintConfigENS_9allocatorIS2_EEE18__construct_at_endEmRKS2_.exit13, label %.lr.ph.i9

.lr.ph.i9:                                        ; preds = %.lr.ph.i9.prol.loopexit, %.lr.ph.i9
  %.sroa.4.08.i10 = phi ptr [ %i.au, %.lr.ph.i9 ], [ %.sroa.4.08.i10.unr, %.lr.ph.i9.prol.loopexit ] ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.4.08.i10, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !276
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.4.08.i10, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ar, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !276
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.4.08.i10, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.as, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !276
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.4.08.i10, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.at, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !276
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.4.08.i10, i64 64 ; 2 uses
  %.not.i11.3 = icmp eq ptr %i.au, %i.al
  br i1 %.not.i11.3, label %_ZNSt3__16vectorIN3jxl16HybridUintConfigENS_9allocatorIS2_EEE18__construct_at_endEmRKS2_.exit13, label %.lr.ph.i9, !llvm.loop !274

_ZNSt3__16vectorIN3jxl16HybridUintConfigENS_9allocatorIS2_EEE18__construct_at_endEmRKS2_.exit13: ; preds = %.lr.ph.i9, %.lr.ph.i9.prol.loopexit
  store ptr %i.al, ptr %i.aj, align 8, !tbaa !22
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt3__16vectorIN3jxl16HybridUintConfigENS_9allocatorIS2_EEE18__construct_at_endEmRKS2_.exit, %bb.d, %_ZNSt3__16vectorIN3jxl16HybridUintConfigENS_9allocatorIS2_EEE18__construct_at_endEmRKS2_.exit13
  ret void
}

declare noundef i64 @_ZN3jxl13MaxVectorSizeEv() local_unnamed_addr #2

declare noundef i32 @_ZN3jxl8MaxValueEPjm(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @_ZN3jxl13AlignedMemory6CreateEP22JxlMemoryManagerStructmm(ptr dead_on_unwind writable sret(%"class.jxl::StatusOr.90") align 8, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare noundef i32 @_ZN3jxl17EstimateTokenCostEPjmNS_16HybridUintConfigERNS_13AlignedMemoryE(ptr noundef, i64 noundef, i64, i64, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare void @_ZN3jxl9Histogram9ConditionEv(ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24)) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN3jxl19EntropyEncodingData25BuildAndStoreEntropyCodesEP22JxlMemoryManagerStructRKNS_15HistogramParamsERKNSt3__16vectorINS7_INS_5TokenENS6_9allocatorIS8_EEEENS9_ISB_EEEERKNS7_INS_9HistogramENS9_ISG_EEEEPNS_9BitWriterENS_9LayerTypeEPNS_6AuxOutE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.jxl::StatusOr.15") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(160) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(53) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef %6, i8 noundef zeroext %7, ptr noundef %8) local_unnamed_addr #0 align 2 {
bb.a:
  %9 = alloca %"class.jxl::StatusOr.15", align 8  ; 6 uses
  %i.a = alloca ptr, align 8                      ; 6 uses
  %10 = alloca %"class.std::__1::vector.67", align 8 ; 27 uses
  %11 = alloca %"struct.jxl::Histogram", align 16 ; 12 uses
  %12 = alloca %"class.std::__1::vector.45", align 8 ; 12 uses
  %i.b = alloca i64, align 8                      ; 9 uses
  %i.c = alloca i64, align 8                      ; 8 uses
  %i.d = alloca ptr, align 8                      ; 7 uses
  %13 = alloca %"class.std::__1::function", align 16 ; 5 uses
  store ptr %2, ptr %i.a, align 8, !tbaa !165
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !57   ; 2 uses
  %i.g = load ptr, ptr %1, align 8, !tbaa !166    ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = sdiv exact i64 %i.j, 24                  ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  %.not215 = icmp eq ptr %i.f, %i.g
  br i1 %.not215, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  br label %bb.e

._crit_edge:                                      ; preds = %_ZN3jxl9HistogramD2Ev.exit, %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !89
  %i.u = load ptr, ptr %i.r, align 8, !tbaa !86   ; 2 uses
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w                       ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !142
  %i.aa = load ptr, ptr %5, align 8, !tbaa !143   ; 3 uses
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac                    ; 3 uses
  %i.ae = sdiv exact i64 %i.ad, 40                ; 2 uses
  %i.af = add i64 %i.ae, %i.x                     ; 3 uses
  %i.ag = icmp ult i64 %i.x, %i.af
  br i1 %i.ag, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge
  call void @_ZNSt3__16vectorIhNS_9allocatorIhEEE8__appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 noundef %i.ae) #23
  %.pre = load ptr, ptr %i.y, align 8, !tbaa !142
  %.pre225 = load ptr, ptr %5, align 8, !tbaa !143 ; 2 uses
  %.pre229 = ptrtoint ptr %.pre to i64
  %.pre230 = ptrtoint ptr %.pre225 to i64
  %.pre232 = sub i64 %.pre229, %.pre230
  br label %_ZNSt3__16vectorIhNS_9allocatorIhEEE6resizeEm.exit

bb.c:                                             ; preds = %._crit_edge
  %i.ah = icmp ugt i64 %i.x, %i.af
  br i1 %i.ah, label %bb.d, label %_ZNSt3__16vectorIhNS_9allocatorIhEEE6resizeEm.exit

bb.d:                                             ; preds = %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.af
  store ptr %i.ai, ptr %i.s, align 8, !tbaa !89
  br label %_ZNSt3__16vectorIhNS_9allocatorIhEEE6resizeEm.exit

_ZNSt3__16vectorIhNS_9allocatorIhEEE6resizeEm.exit: ; preds = %bb.b, %bb.c, %bb.d
  %.pre-phi235 = phi i64 [ %.pre232, %bb.b ], [ %i.ad, %bb.c ], [ %i.ad, %bb.d ]
  %i.aj = phi ptr [ %.pre225, %bb.b ], [ %i.aa, %bb.c ], [ %i.aa, %bb.d ] ; 4 uses
  %i.ak = icmp ugt i64 %.pre-phi235, 40
  br i1 %i.ak, label %bb.h, label %bb.n

bb.e:                                             ; preds = %.lr.ph, %_ZN3jxl9HistogramD2Ev.exit
  %.0200 = phi i64 [ 0, %.lr.ph ], [ %i.ei, %_ZN3jxl9HistogramD2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  %i.al = load ptr, ptr %1, align 8, !tbaa !166
  %i.am = getelementptr inbounds nuw [24 x i8], ptr %i.al, i64 %.0200 ; 3 uses
  %i.an = load i8, ptr %i.l, align 8, !tbaa !76, !range !77, !noundef !78
  %i.ao = trunc nuw i8 %i.an to i1
  call void @llvm.experimental.noalias.scope.decl(metadata !285)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(36) %11, i8 0, i64 36, i1 false), !alias.scope !285
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !167, !noalias !285 ; 2 uses
  %i.ar = load ptr, ptr %i.am, align 8, !tbaa !62, !noalias !285 ; 2 uses
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = sdiv exact i64 %i.au, 48                ; 2 uses
  %i.aw = add nsw i64 %i.av, 7
  %i.ax = and i64 %i.aw, -8                       ; 2 uses
  %.not28.i = icmp eq i64 %i.ax, 0
  br i1 %.not28.i, label %_ZNSt3__16vectorIiNS_9allocatorIiEEE6resizeEm.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZNSt3__16vectorIiNS_9allocatorIiEEE8__appendEm(ptr noundef nonnull align 8 dereferenceable(24) %11, i64 noundef %i.ax) #23
  %.pre.i = load ptr, ptr %i.ap, align 8, !tbaa !167, !noalias !285 ; 2 uses
  %.pre19.i = load ptr, ptr %i.am, align 8, !tbaa !62, !noalias !285 ; 2 uses
  %.pre20.i = ptrtoint ptr %.pre.i to i64
  %.pre21.i = ptrtoint ptr %.pre19.i to i64
  %.pre23.i = sub i64 %.pre20.i, %.pre21.i
  %.pre25.i = sdiv exact i64 %.pre23.i, 48
  br label %_ZNSt3__16vectorIiNS_9allocatorIiEEE6resizeEm.exit.i

_ZNSt3__16vectorIiNS_9allocatorIiEEE6resizeEm.exit.i: ; preds = %bb.f, %bb.e
  %.pre-phi26.i = phi i64 [ %.pre25.i, %bb.f ], [ %i.av, %bb.e ] ; 3 uses
  %i.ay = phi ptr [ %.pre19.i, %bb.f ], [ %i.ar, %bb.e ] ; 9 uses
  %i.az = phi ptr [ %.pre.i, %bb.f ], [ %i.aq, %bb.e ]
  store i64 0, ptr %i.m, align 8, !tbaa !46, !alias.scope !285
  %.not.i = icmp eq ptr %i.az, %i.ay
  br i1 %.not.i, label %_ZN3jxl12_GLOBAL__N_123HistogramFromSymbolInfoERKNSt3__16vectorINS_16ANSEncSymbolInfoENS1_9allocatorIS3_EEEEb.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt3__16vectorIiNS_9allocatorIiEEE6resizeEm.exit.i
  %i.ba = load ptr, ptr %11, align 16, !tbaa !28, !alias.scope !285 ; 8 uses
  %umax17.i = call i64 @llvm.umax.i64(i64 %.pre-phi26.i, i64 1) ; 5 uses
  br i1 %i.ao, label %.lr.ph.split.us.i.preheader, label %.lr.ph.split.i.preheader

.lr.ph.split.i.preheader:                         ; preds = %.lr.ph.i
  %xtraiter = and i64 %umax17.i, 3                ; 3 uses
  %i.bb = icmp ult i64 %.pre-phi26.i, 4
  br i1 %i.bb, label %.lr.ph.split.i.epil.preheader, label %.lr.ph.split.i.preheader.new

.lr.ph.split.i.preheader.new:                     ; preds = %.lr.ph.split.i.preheader
  %unroll_iter = and i64 %umax17.i, -4
  br label %.lr.ph.split.i

.lr.ph.split.us.i.preheader:                      ; preds = %.lr.ph.i
  %xtraiter308 = and i64 %umax17.i, 1
  %i.bc = icmp ult i64 %.pre-phi26.i, 2
  br i1 %i.bc, label %.lr.ph.split.us.i.epil.preheader, label %.lr.ph.split.us.i.preheader.new

.lr.ph.split.us.i.preheader.new:                  ; preds = %.lr.ph.split.us.i.preheader
  %unroll_iter315 = and i64 %umax17.i, -2
  br label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.split.us.i, %.lr.ph.split.us.i.preheader.new
  %i.bd = phi i64 [ 0, %.lr.ph.split.us.i.preheader.new ], [ %i.by, %.lr.ph.split.us.i ]
  %.014.us.i = phi i64 [ 0, %.lr.ph.split.us.i.preheader.new ], [ %i.bz, %.lr.ph.split.us.i ] ; 4 uses
  %niter316 = phi i64 [ 0, %.lr.ph.split.us.i.preheader.new ], [ %niter316.next.1, %.lr.ph.split.us.i ]
  %i.be = getelementptr inbounds nuw [48 x i8], ptr %i.ay, i64 %.014.us.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 40
  %i.bg = load i8, ptr %i.bf, align 8, !tbaa !123 ; 2 uses
  %.not.us.i = icmp eq i8 %i.bg, 0
  %i.bh = zext i8 %i.bg to i32
  %i.bi = sub nsw i32 15, %i.bh
  %i.bj = shl nuw nsw i32 1, %i.bi
  %i.bk = select i1 %.not.us.i, i32 0, i32 %i.bj  ; 2 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %.014.us.i
  store i32 %i.bk, ptr %i.bl, align 4, !tbaa !35
  %i.bm = zext nneg i32 %i.bk to i64
  %i.bn = add i64 %i.bd, %i.bm
  %i.bo = or disjoint i64 %.014.us.i, 1           ; 2 uses
  %i.bp = getelementptr inbounds nuw [48 x i8], ptr %i.ay, i64 %i.bo
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 40
  %i.br = load i8, ptr %i.bq, align 8, !tbaa !123 ; 2 uses
  %.not.us.i.1 = icmp eq i8 %i.br, 0
  %i.bs = zext i8 %i.br to i32
  %i.bt = sub nsw i32 15, %i.bs
  %i.bu = shl nuw nsw i32 1, %i.bt
  %i.bv = select i1 %.not.us.i.1, i32 0, i32 %i.bu ; 2 uses
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %i.bo
  store i32 %i.bv, ptr %i.bw, align 4, !tbaa !35
  %i.bx = zext nneg i32 %i.bv to i64
  %i.by = add i64 %i.bn, %i.bx                    ; 3 uses
  %i.bz = add nuw i64 %.014.us.i, 2               ; 2 uses
  %niter316.next.1 = add i64 %niter316, 2         ; 2 uses
  %niter316.ncmp.1 = icmp eq i64 %niter316.next.1, %unroll_iter315
  br i1 %niter316.ncmp.1, label %._crit_edge.i.loopexit.unr-lcssa, label %.lr.ph.split.us.i, !llvm.loop !279

.lr.ph.split.i:                                   ; preds = %.lr.ph.split.i, %.lr.ph.split.i.preheader.new
  %i.ca = phi i64 [ 0, %.lr.ph.split.i.preheader.new ], [ %i.db, %.lr.ph.split.i ]
  %.014.i = phi i64 [ 0, %.lr.ph.split.i.preheader.new ], [ %i.dc, %.lr.ph.split.i ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.split.i.preheader.new ], [ %niter.next.3, %.lr.ph.split.i ]
  %i.cb = getelementptr inbounds nuw [48 x i8], ptr %i.ay, i64 %.014.i
  %i.cc = load i16, ptr %i.cb, align 8, !tbaa !126 ; 2 uses
  %i.cd = zext i16 %i.cc to i32
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %.014.i
  store i32 %i.cd, ptr %i.ce, align 4, !tbaa !35
  %i.cf = zext i16 %i.cc to i64
  %i.cg = add i64 %i.ca, %i.cf
  %i.ch = or disjoint i64 %.014.i, 1              ; 2 uses
  %i.ci = getelementptr inbounds nuw [48 x i8], ptr %i.ay, i64 %i.ch
  %i.cj = load i16, ptr %i.ci, align 8, !tbaa !126 ; 2 uses
  %i.ck = zext i16 %i.cj to i32
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %i.ch
  store i32 %i.ck, ptr %i.cl, align 4, !tbaa !35
  %i.cm = zext i16 %i.cj to i64
  %i.cn = add i64 %i.cg, %i.cm
  %i.co = or disjoint i64 %.014.i, 2              ; 2 uses
  %i.cp = getelementptr inbounds nuw [48 x i8], ptr %i.ay, i64 %i.co
  %i.cq = load i16, ptr %i.cp, align 8, !tbaa !126 ; 2 uses
  %i.cr = zext i16 %i.cq to i32
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %i.co
  store i32 %i.cr, ptr %i.cs, align 4, !tbaa !35
  %i.ct = zext i16 %i.cq to i64
  %i.cu = add i64 %i.cn, %i.ct
  %i.cv = or disjoint i64 %.014.i, 3              ; 2 uses
  %i.cw = getelementptr inbounds nuw [48 x i8], ptr %i.ay, i64 %i.cv
  %i.cx = load i16, ptr %i.cw, align 8, !tbaa !126 ; 2 uses
  %i.cy = zext i16 %i.cx to i32
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %i.cv
  store i32 %i.cy, ptr %i.cz, align 4, !tbaa !35
  %i.da = zext i16 %i.cx to i64
  %i.db = add i64 %i.cu, %i.da                    ; 3 uses
  %i.dc = add nuw i64 %.014.i, 4                  ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.i.loopexit303.unr-lcssa, label %.lr.ph.split.i, !llvm.loop !279

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph.split.us.i
  %lcmp.mod312.not = icmp eq i64 %xtraiter308, 0
  br i1 %lcmp.mod312.not, label %._crit_edge.i, label %.lr.ph.split.us.i.epil.preheader

.lr.ph.split.us.i.epil.preheader:                 ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.split.us.i.preheader
  %.epil.init311 = phi i64 [ 0, %.lr.ph.split.us.i.preheader ], [ %i.by, %._crit_edge.i.loopexit.unr-lcssa ]
  %.014.us.i.epil.init = phi i64 [ 0, %.lr.ph.split.us.i.preheader ], [ %i.bz, %._crit_edge.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod314 = trunc i64 %umax17.i to i1
  call void @llvm.assume(i1 %lcmp.mod314)
  %i.dd = getelementptr inbounds nuw [48 x i8], ptr %i.ay, i64 %.014.us.i.epil.init
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 40
  %i.df = load i8, ptr %i.de, align 8, !tbaa !123 ; 2 uses
  %.not.us.i.epil = icmp eq i8 %i.df, 0
  %i.dg = zext i8 %i.df to i32
  %i.dh = sub nsw i32 15, %i.dg
  %i.di = shl nuw nsw i32 1, %i.dh
  %i.dj = select i1 %.not.us.i.epil, i32 0, i32 %i.di ; 2 uses
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %.014.us.i.epil.init
  store i32 %i.dj, ptr %i.dk, align 4, !tbaa !35
  %i.dl = zext nneg i32 %i.dj to i64
  %i.dm = add i64 %.epil.init311, %i.dl
  br label %._crit_edge.i

._crit_edge.i.loopexit303.unr-lcssa:              ; preds = %.lr.ph.split.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.lr.ph.split.i.epil.preheader

.lr.ph.split.i.epil.preheader:                    ; preds = %._crit_edge.i.loopexit303.unr-lcssa, %.lr.ph.split.i.preheader
  %.epil.init = phi i64 [ 0, %.lr.ph.split.i.preheader ], [ %i.db, %._crit_edge.i.loopexit303.unr-lcssa ]
  %.014.i.epil.init = phi i64 [ 0, %.lr.ph.split.i.preheader ], [ %i.dc, %._crit_edge.i.loopexit303.unr-lcssa ]
  %lcmp.mod307 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod307)
  br label %.lr.ph.split.i.epil

.lr.ph.split.i.epil:                              ; preds = %.lr.ph.split.i.epil, %.lr.ph.split.i.epil.preheader
  %i.dn = phi i64 [ %i.dt, %.lr.ph.split.i.epil ], [ %.epil.init, %.lr.ph.split.i.epil.preheader ]
  %.014.i.epil = phi i64 [ %i.du, %.lr.ph.split.i.epil ], [ %.014.i.epil.init, %.lr.ph.split.i.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.split.i.epil ], [ 0, %.lr.ph.split.i.epil.preheader ]
  %i.do = getelementptr inbounds nuw [48 x i8], ptr %i.ay, i64 %.014.i.epil
  %i.dp = load i16, ptr %i.do, align 8, !tbaa !126 ; 2 uses
  %i.dq = zext i16 %i.dp to i32
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %.014.i.epil
  store i32 %i.dq, ptr %i.dr, align 4, !tbaa !35
  %i.ds = zext i16 %i.dp to i64
  %i.dt = add i64 %i.dn, %i.ds                    ; 2 uses
  %i.du = add nuw i64 %.014.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.i, label %.lr.ph.split.i.epil, !llvm.loop !280

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit303.unr-lcssa, %.lr.ph.split.i.epil, %.lr.ph.split.us.i.epil.preheader, %._crit_edge.i.loopexit.unr-lcssa
  %.us-phi.i = phi i64 [ %i.dm, %.lr.ph.split.us.i.epil.preheader ], [ %i.by, %._crit_edge.i.loopexit.unr-lcssa ], [ %i.db, %._crit_edge.i.loopexit303.unr-lcssa ], [ %i.dt, %.lr.ph.split.i.epil ]
  store i64 %.us-phi.i, ptr %i.m, align 8, !tbaa !46, !alias.scope !285
  br label %_ZN3jxl12_GLOBAL__N_123HistogramFromSymbolInfoERKNSt3__16vectorINS_16ANSEncSymbolInfoENS1_9allocatorIS3_EEEEb.exit

_ZN3jxl12_GLOBAL__N_123HistogramFromSymbolInfoERKNSt3__16vectorINS_16ANSEncSymbolInfoENS1_9allocatorIS3_EEEEb.exit: ; preds = %_ZNSt3__16vectorIiNS_9allocatorIiEEE6resizeEm.exit.i, %._crit_edge.i
  %i.dv = load ptr, ptr %i.n, align 8, !tbaa !142 ; 6 uses
  %i.dw = load ptr, ptr %i.o, align 8, !tbaa !52
  %i.dx = icmp ult ptr %i.dv, %i.dw
  br i1 %i.dx, label %_ZNSt3__16vectorIN3jxl9HistogramENS_9allocatorIS2_EEE9push_backB8nn180100EOS2_.exit.thread, label %_ZNSt3__16vectorIN3jxl9HistogramENS_9allocatorIS2_EEE9push_backB8nn180100EOS2_.exit

_ZNSt3__16vectorIN3jxl9HistogramENS_9allocatorIS2_EEE9push_backB8nn180100EOS2_.exit.thread: ; preds = %_ZN3jxl12_GLOBAL__N_123HistogramFromSymbolInfoERKNSt3__16vectorINS_16ANSEncSymbolInfoENS1_9allocatorIS3_EEEEb.exit
end_hunk_0
