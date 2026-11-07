Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/folly/original/Compression?download=true
inline.NumInlined: 1607
inline.NumDeleted: 824
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN5folly11compression11StreamCodec10doCompressEPKNS_5IOBufE:_ZNKR5folly8OptionalImE5valueEv.exit.i.i.i
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !2435
  %i.an = icmp eq ptr %i.am, %2
  %spec.select = select i1 %i.an, i32 2, i32 %.019 ; 2 uses
  %i.ao = load ptr, ptr %3, align 8, !tbaa !2921
  %i.ap = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !2922
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %bb.d, label %bb.j

bb.d:                                             ; preds = %.critedge
  %i.ar = load ptr, ptr %0, align 8, !tbaa !2420
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !3054)
  invoke void @_ZN5folly5IOBuf6createEm(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %5, i64 noundef 4194304)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.as = load ptr, ptr %5, align 8, !tbaa !2420, !alias.scope !3054 ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.au = load i64, ptr %i.at, align 8, !tbaa !2916
  %i.av = load i64, ptr %i.as, align 8, !tbaa !2438
  %i.aw = add i64 %i.av, %i.au                    ; 2 uses
  store i64 %i.aw, ptr %i.as, align 8, !tbaa !2438
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !2437 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.aw
  store ptr %i.ay, ptr %3, align 8, !tbaa !2429, !noalias !3054
  store ptr %i.az, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !2429, !noalias !3054
  invoke void @_ZN5folly5IOBuf13appendToChainEOSt10unique_ptrIS0_St14default_deleteIS0_EE(ptr noundef nonnull align 8 dereferenceable(56) %i.ar, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %_ZN5folly5IOBuf12prependChainEOSt10unique_ptrIS0_St14default_deleteIS0_EE.exit unwind label %bb.h

_ZN5folly5IOBuf12prependChainEOSt10unique_ptrIS0_St14default_deleteIS0_EE.exit: ; preds = %bb.e
  %i.ba = load ptr, ptr %5, align 8, !tbaa !2420  ; 3 uses
  %.not.i = icmp eq ptr %i.ba, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN5folly5IOBufESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN5folly5IOBufEEclEPS1_.exit.i

_ZNKSt14default_deleteIN5folly5IOBufEEclEPS1_.exit.i: ; preds = %_ZN5folly5IOBuf12prependChainEOSt10unique_ptrIS0_St14default_deleteIS0_EE.exit
  call void @_ZN5folly5IOBufD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.ba) #31
  call void @_ZN5folly5IOBufdlEPv(ptr noundef nonnull %i.ba) #31
  br label %_ZNSt10unique_ptrIN5folly5IOBufESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN5folly5IOBufESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZN5folly5IOBuf12prependChainEOSt10unique_ptrIS0_St14default_deleteIS0_EE.exit, %_ZNKSt14default_deleteIN5folly5IOBufEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  br label %bb.j

bb.f:                                             ; preds = %bb.j
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.g:                                             ; preds = %bb.d
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.h:                                             ; preds = %bb.e
  %i.bd = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN5folly5IOBufESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #31
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.pn = phi { ptr, i32 } [ %i.bd, %bb.h ], [ %i.bc, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  br label %bb.l

bb.j:                                             ; preds = %_ZNSt10unique_ptrIN5folly5IOBufESt14default_deleteIS1_EED2Ev.exit, %.critedge
  %i.be = invoke noundef zeroext i1 @_ZN5folly11compression11StreamCodec14compressStreamERNS_5RangeIPKhEERNS2_IPhEENS1_7FlushOpE(ptr noundef nonnull align 8 dereferenceable(49) %1, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %3, i32 noundef %spec.select)
          to label %bb.b unwind label %bb.f, !llvm.loop !3051

bb.k:                                             ; preds = %bb.b
  %i.bf = load ptr, ptr %0, align 8, !tbaa !2420
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 40
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !2923 ; 2 uses
  %i.bi = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !2922
  %i.bj = load ptr, ptr %3, align 8, !tbaa !2921
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = ptrtoint ptr %i.bj to i64
  %.neg = sub i64 %i.bl, %i.bk
  %i.bm = load i64, ptr %i.bh, align 8, !tbaa !2438
  %i.bn = add i64 %.neg, %i.bm
  store i64 %i.bn, ptr %i.bh, align 8, !tbaa !2438
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  ret void

bb.l:                                             ; preds = %bb.i, %bb.f
  %.pn27 = phi { ptr, i32 } [ %i.bb, %bb.f ], [ %.pn, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  call void @_ZNSt10unique_ptrIN5folly5IOBufESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  resume { ptr, i32 } %.pn27
}

; Function Attrs: mustprogress uwtable
define void @_ZN5folly11compression11StreamCodec12doUncompressEPKNS_5IOBufENS_8OptionalImEE(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(49) %1, ptr noundef nonnull %2, ptr nofree noundef align 8 captures(address) dead_on_return %3) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.folly::Optional", align 8   ; 6 uses
  %5 = alloca %"class.folly::Optional", align 8   ; 10 uses
  %.sroa.439 = alloca [7 x i8], align 1           ; 2 uses
  %6 = alloca %"class.folly::Range.18", align 8   ; 9 uses
  %7 = alloca %"class.folly::Range.14", align 8   ; 8 uses
  %8 = alloca %"class.std::unique_ptr", align 8   ; 8 uses
  %i.a = tail call noundef i64 @_ZNK5folly5IOBuf22computeChainDataLengthEv(ptr noundef nonnull align 8 dereferenceable(56) %2) #31
  %.sroa.speculated5.i = tail call i64 @llvm.umax.i64(i64 %i.a, i64 131072)
  %i.b = shl i64 %.sroa.speculated5.i, 2
  %.sroa.speculated.i = tail call noundef range(i64 0, 4194305) i64 @llvm.umin.i64(i64 %i.b, i64 4194304) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  %.sroa.034.0.copyload = load i64, ptr %3, align 8 ; 2 uses
  %.sroa.336.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 7 uses
  %.sroa.336.0.copyload = load i8, ptr %.sroa.336.0..sroa_idx, align 8 ; 2 uses
  %.sroa.439.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.439, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.439.0..sroa_idx, i64 7, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3063)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.c = tail call noundef i64 @_ZNK5folly5IOBuf22computeChainDataLengthEv(ptr noundef nonnull align 8 dereferenceable(56) %2) #31, !noalias !3063
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.e = trunc nuw i8 %.sroa.336.0.copyload to i1
  %.not6.i = icmp ne i64 %.sroa.034.0.copyload, 0
  %.not.not.i = select i1 %i.e, i1 %.not6.i, i1 false
  br i1 %.not.not.i, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.f = tail call ptr @__cxa_allocate_exception(i64 16) #31, !noalias !3063 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull @.str.10)
          to label %bb.d unwind label %bb.e, !noalias !3063

bb.d:                                             ; preds = %bb.c
  tail call void @__cxa_throw(ptr nonnull %i.f, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #33, !noalias !3063
  unreachable

common.resume:                                    ; preds = %.loopexit.split-lp, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.g, %bb.e ], [ %.pn28, %.loopexit.split-lp ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.f) #31, !noalias !3063
  br label %common.resume

bb.f:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %5, align 8, !tbaa !2445, !alias.scope !3063
  store i8 1, ptr %i.h, align 8, !tbaa !2443, !alias.scope !3063
  br label %_ZNK5folly11compression5Codec21getUncompressedLengthEPKNS_5IOBufENS_8OptionalImEE.exit

bb.g:                                             ; preds = %bb.a
  store i64 %.sroa.034.0.copyload, ptr %4, align 8, !noalias !3063
  %.sroa.336.0..sroa_idx37 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i8 %.sroa.336.0.copyload, ptr %.sroa.336.0..sroa_idx37, align 8, !noalias !3063
  %.sroa.439.0..sroa_idx40 = getelementptr inbounds nuw i8, ptr %4, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.439.0..sroa_idx40, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.439, i64 7, i1 false), !noalias !3063
  %i.i = load ptr, ptr %1, align 8, !tbaa !117, !noalias !3063
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 88
  %i.k = load ptr, ptr %i.j, align 8, !noalias !3063
  call void %i.k(ptr dead_on_unwind nonnull writable sret(%"class.folly::Optional") align 8 %5, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef nonnull %2, ptr noundef nonnull align 8 dead_on_return %4), !call_target !539, !inline_history !2924
  br label %_ZNK5folly11compression5Codec21getUncompressedLengthEPKNS_5IOBufENS_8OptionalImEE.exit

_ZNK5folly11compression5Codec21getUncompressedLengthEPKNS_5IOBufENS_8OptionalImEE.exit: ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %.not.i.i = icmp eq ptr %3, %5
  br i1 %.not.i.i, label %_ZN5folly8OptionalImEaSEOS1_.exit, label %bb.h

bb.h:                                             ; preds = %_ZNK5folly11compression5Codec21getUncompressedLengthEPKNS_5IOBufENS_8OptionalImEE.exit
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.m = load i8, ptr %i.l, align 8, !tbaa !2443, !range !2444, !noundef !209
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %_ZNR5folly8OptionalImE5valueEv.exit.i.i, label %_ZN5folly8OptionalImEaSEOS1_.exit.thread57

_ZNR5folly8OptionalImE5valueEv.exit.i.i:          ; preds = %bb.h
  %i.o = load i8, ptr %.sroa.336.0..sroa_idx, align 8, !tbaa !2443, !range !2444, !noundef !209
  %i.p = trunc nuw i8 %i.o to i1
  %i.q = load i64, ptr %5, align 8, !tbaa !2445   ; 2 uses
  br i1 %i.p, label %_ZN5folly8OptionalImEaSEOS1_.exit.thread.a, label %bb.i

bb.i:                                             ; preds = %_ZNR5folly8OptionalImE5valueEv.exit.i.i
  store i8 1, ptr %.sroa.336.0..sroa_idx, align 8, !tbaa !2443
  br label %_ZN5folly8OptionalImEaSEOS1_.exit.thread.a

_ZN5folly8OptionalImEaSEOS1_.exit.thread.a:       ; preds = %_ZNR5folly8OptionalImE5valueEv.exit.i.i, %bb.i
  store i64 %i.q, ptr %3, align 8, !tbaa !2427
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 0, ptr %i.r, align 4, !tbaa !2453
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 40
  br label %_ZNKR5folly8OptionalImE5valueEv.exit.i.i.i

_ZN5folly8OptionalImEaSEOS1_.exit.thread57:       ; preds = %bb.h
  store i8 0, ptr %.sroa.336.0..sroa_idx, align 8, !tbaa !2441
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 0, ptr %i.t, align 4, !tbaa !2453
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 40
  br label %bb.k

_ZN5folly8OptionalImEaSEOS1_.exit:                ; preds = %_ZNK5folly11compression5Codec21getUncompressedLengthEPKNS_5IOBufENS_8OptionalImEE.exit
  %.sroa.2.0.copyload.pre = load i8, ptr %.sroa.336.0..sroa_idx, align 8
  %9 = trunc nuw i8 %.sroa.2.0.copyload.pre to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  %.sroa.033.0.copyload = load i64, ptr %3, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 0, ptr %i.v, align 4, !tbaa !2453
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  br i1 %9, label %_ZNKR5folly8OptionalImE5valueEv.exit.i.i.i, label %bb.k

_ZNKR5folly8OptionalImE5valueEv.exit.i.i.i:       ; preds = %_ZN5folly8OptionalImEaSEOS1_.exit.thread.a, %_ZN5folly8OptionalImEaSEOS1_.exit
  %i.x = phi ptr [ %i.s, %_ZN5folly8OptionalImEaSEOS1_.exit.thread.a ], [ %i.w, %_ZN5folly8OptionalImEaSEOS1_.exit ] ; 2 uses
  %.sroa.033.0.copyload56 = phi i64 [ %i.q, %_ZN5folly8OptionalImEaSEOS1_.exit.thread.a ], [ %.sroa.033.0.copyload, %_ZN5folly8OptionalImEaSEOS1_.exit ]
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.z = load i8, ptr %i.x, align 8, !tbaa !2443, !range !2444, !noundef !209
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %_ZN5folly8OptionalImE6assignERKm.exit.i.i.i, label %bb.j

bb.j:                                             ; preds = %_ZNKR5folly8OptionalImE5valueEv.exit.i.i.i
  store i8 1, ptr %i.x, align 8, !tbaa !2443
  br label %_ZN5folly8OptionalImE6assignERKm.exit.i.i.i

_ZN5folly8OptionalImE6assignERKm.exit.i.i.i:      ; preds = %bb.j, %_ZNKR5folly8OptionalImE5valueEv.exit.i.i.i
  store i64 %.sroa.033.0.copyload56, ptr %i.y, align 8, !tbaa !2427
  br label %_ZN5folly11compression11StreamCodec11resetStreamENS_8OptionalImEE.exit

bb.k:                                             ; preds = %_ZN5folly8OptionalImEaSEOS1_.exit.thread57, %_ZN5folly8OptionalImEaSEOS1_.exit
  %i.ab = phi ptr [ %i.u, %_ZN5folly8OptionalImEaSEOS1_.exit.thread57 ], [ %i.w, %_ZN5folly8OptionalImEaSEOS1_.exit ]
  store i8 0, ptr %i.ab, align 8, !tbaa !2441
  br label %_ZN5folly11compression11StreamCodec11resetStreamENS_8OptionalImEE.exit

_ZN5folly11compression11StreamCodec11resetStreamENS_8OptionalImEE.exit: ; preds = %_ZN5folly8OptionalImE6assignERKm.exit.i.i.i, %bb.k
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i8 1, ptr %i.ac, align 8, !tbaa !2454
  %i.ad = load ptr, ptr %1, align 8, !tbaa !117
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 104
  %i.af = load ptr, ptr %i.ae, align 8
  call void %i.af(ptr noundef nonnull align 8 dereferenceable(49) %1), !call_target !2458, !inline_history !2915
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  %i.ag = load i8, ptr %.sroa.336.0..sroa_idx, align 8, !tbaa !2443, !range !2444, !noundef !209
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %_ZNR5folly8OptionalImEdeEv.exit, label %_ZNR5folly8OptionalImEdeEv.exit30

_ZNR5folly8OptionalImEdeEv.exit:                  ; preds = %_ZN5folly11compression11StreamCodec11resetStreamENS_8OptionalImEE.exit
  %i.ai = load i64, ptr %3, align 8, !tbaa !2445  ; 2 uses
  %i.aj = icmp ult i64 %i.ai, 67108865
  %spec.select41 = select i1 %i.aj, i64 %i.ai, i64 %.sroa.speculated.i
  br label %_ZNR5folly8OptionalImEdeEv.exit30

_ZNR5folly8OptionalImEdeEv.exit30:                ; preds = %_ZNR5folly8OptionalImEdeEv.exit, %_ZN5folly11compression11StreamCodec11resetStreamENS_8OptionalImEE.exit
  %i.ak = phi i64 [ %.sroa.speculated.i, %_ZN5folly11compression11StreamCodec11resetStreamENS_8OptionalImEE.exit ], [ %spec.select41, %_ZNR5folly8OptionalImEdeEv.exit ]
  call void @llvm.experimental.noalias.scope.decl(metadata !3064)
  call void @_ZN5folly5IOBuf6createEm(ptr dead_on_unwind writable sret(%"class.std::unique_ptr") align 8 %0, i64 noundef %i.ak)
  %i.al = load ptr, ptr %0, align 8, !tbaa !2420, !alias.scope !3064 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = load i64, ptr %i.am, align 8, !tbaa !2916
  %i.ao = load i64, ptr %i.al, align 8, !tbaa !2438
  %i.ap = add i64 %i.ao, %i.an                    ; 2 uses
  store i64 %i.ap, ptr %i.al, align 8, !tbaa !2438
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !2437 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.ap
  store ptr %i.ar, ptr %6, align 8, !tbaa !2429, !noalias !3064
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  store ptr %i.as, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !2429, !noalias !3064
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !2437 ; 2 uses
  %i.av = load i64, ptr %2, align 8, !tbaa !2438
  store ptr %i.au, ptr %7, align 8, !tbaa !2917
  %i.aw = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.av
  store ptr %i.ax, ptr %i.aw, align 8, !tbaa !2918
  br label %bb.l

bb.l:                                             ; preds = %bb.s, %_ZNR5folly8OptionalImEdeEv.exit30
  %.024 = phi ptr [ %2, %_ZNR5folly8OptionalImEdeEv.exit30 ], [ %.125.lcssa, %bb.s ] ; 2 uses
  %.019 = phi i32 [ 0, %_ZNR5folly8OptionalImEdeEv.exit30 ], [ %spec.select, %bb.s ]
  %.0 = phi i1 [ false, %_ZNR5folly8OptionalImEdeEv.exit30 ], [ %i.ca, %bb.s ]
  %i.ay = load ptr, ptr %7, align 8, !tbaa !2429
  %i.az = load ptr, ptr %i.aw, align 8, !tbaa !2429
  %i.ba = icmp eq ptr %i.ay, %i.az                ; 2 uses
  br i1 %.0, label %bb.t, label %.preheader

.preheader:                                       ; preds = %bb.l
  br i1 %i.ba, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %.preheader, %bb.m
  %.12544 = phi ptr [ %i.bc, %bb.m ], [ %.024, %.preheader ] ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.12544, i64 32
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !2435 ; 5 uses
  %.not26 = icmp eq ptr %i.bc, %2
  br i1 %.not26, label %.critedge, label %bb.m

bb.m:                                             ; preds = %.lr.ph
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !2437 ; 2 uses
  %i.bf = load i64, ptr %i.bc, align 8, !tbaa !2438 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bf
  store ptr %i.be, ptr %7, align 8, !tbaa !2429
  store ptr %i.bg, ptr %i.aw, align 8, !tbaa !2429
  %i.bh = icmp samesign eq i64 %i.bf, 0
  br i1 %i.bh, label %.lr.ph, label %.critedge, !llvm.loop !3059

.critedge:                                        ; preds = %.lr.ph, %bb.m, %.preheader
  %.125.lcssa = phi ptr [ %.024, %.preheader ], [ %i.bc, %bb.m ], [ %.12544, %.lr.ph ] ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.125.lcssa, i64 32
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !2435
  %i.bk = icmp eq ptr %i.bj, %2
  %spec.select = select i1 %i.bk, i32 2, i32 %.019 ; 2 uses
  %i.bl = load ptr, ptr %6, align 8, !tbaa !2921
  %i.bm = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !2922
  %i.bn = icmp eq ptr %i.bl, %i.bm
  br i1 %i.bn, label %bb.n, label %bb.s

bb.n:                                             ; preds = %.critedge
  %i.bo = load ptr, ptr %0, align 8, !tbaa !2420
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !3065)
  invoke void @_ZN5folly5IOBuf6createEm(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %8, i64 noundef %.sroa.speculated.i)
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bp = load ptr, ptr %8, align 8, !tbaa !2420, !alias.scope !3065 ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !2916
  %i.bs = load i64, ptr %i.bp, align 8, !tbaa !2438
  %i.bt = add i64 %i.bs, %i.br                    ; 2 uses
  store i64 %i.bt, ptr %i.bp, align 8, !tbaa !2438
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !2437 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bt
  store ptr %i.bv, ptr %6, align 8, !tbaa !2429, !noalias !3065
  store ptr %i.bw, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !2429, !noalias !3065
  invoke void @_ZN5folly5IOBuf13appendToChainEOSt10unique_ptrIS0_St14default_deleteIS0_EE(ptr noundef nonnull align 8 dereferenceable(56) %i.bo, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %_ZN5folly5IOBuf12prependChainEOSt10unique_ptrIS0_St14default_deleteIS0_EE.exit unwind label %bb.q

_ZN5folly5IOBuf12prependChainEOSt10unique_ptrIS0_St14default_deleteIS0_EE.exit: ; preds = %bb.o
  %i.bx = load ptr, ptr %8, align 8, !tbaa !2420  ; 3 uses
  %.not.i = icmp eq ptr %i.bx, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN5folly5IOBufESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN5folly5IOBufEEclEPS1_.exit.i

_ZNKSt14default_deleteIN5folly5IOBufEEclEPS1_.exit.i: ; preds = %_ZN5folly5IOBuf12prependChainEOSt10unique_ptrIS0_St14default_deleteIS0_EE.exit
  call void @_ZN5folly5IOBufD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.bx) #31
  call void @_ZN5folly5IOBufdlEPv(ptr noundef nonnull %i.bx) #31
  br label %_ZNSt10unique_ptrIN5folly5IOBufESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN5folly5IOBufESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZN5folly5IOBuf12prependChainEOSt10unique_ptrIS0_St14default_deleteIS0_EE.exit, %_ZNKSt14default_deleteIN5folly5IOBufEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  br label %bb.s

bb.p:                                             ; preds = %bb.n
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.bz = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN5folly5IOBufESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #31
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.pn = phi { ptr, i32 } [ %i.bz, %bb.q ], [ %i.by, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  br label %.loopexit.split-lp

bb.s:                                             ; preds = %_ZNSt10unique_ptrIN5folly5IOBufESt14default_deleteIS1_EED2Ev.exit, %.critedge
  %i.ca = invoke noundef zeroext i1 @_ZN5folly11compression11StreamCodec16uncompressStreamERNS_5RangeIPKhEERNS2_IPhEENS1_7FlushOpE(ptr noundef nonnull align 8 dereferenceable(49) %1, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %6, i32 noundef %spec.select)
          to label %bb.l unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !llvm.loop !3062

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.s, %.invoke
  %lpad.loopexit.split-lp63 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.t:                                             ; preds = %bb.l
  br i1 %i.ba, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cb = call ptr @__cxa_allocate_exception(i64 16) #31 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.cb, ptr noundef nonnull @.str.24)
          to label %.invoke unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cc = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.cb) #31
  br label %.loopexit.split-lp

bb.w:                                             ; preds = %bb.t
  %i.cd = load ptr, ptr %0, align 8, !tbaa !2420  ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 40
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !2923 ; 2 uses
  %i.cg = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !2922
  %i.ch = load ptr, ptr %6, align 8, !tbaa !2921
  %i.ci = ptrtoint ptr %i.cg to i64
  %i.cj = ptrtoint ptr %i.ch to i64
  %.neg = sub i64 %i.cj, %i.ci
  %i.ck = load i64, ptr %i.cf, align 8, !tbaa !2438
  %i.cl = add i64 %.neg, %i.ck
  store i64 %i.cl, ptr %i.cf, align 8, !tbaa !2438
  %i.cm = load i8, ptr %.sroa.336.0..sroa_idx, align 8, !tbaa !2443, !range !2444, !noundef !209
  %i.cn = trunc nuw i8 %i.cm to i1
  br i1 %i.cn, label %_ZNR5folly8OptionalImEdeEv.exit32, label %bb.z

_ZNR5folly8OptionalImEdeEv.exit32:                ; preds = %bb.w
  %i.co = load i64, ptr %3, align 8, !tbaa !2445
  %i.cp = call noundef i64 @_ZNK5folly5IOBuf22computeChainDataLengthEv(ptr noundef nonnull align 8 dereferenceable(56) %i.cd) #31
  %.not = icmp eq i64 %i.co, %i.cp
  br i1 %.not, label %bb.z, label %bb.x

bb.x:                                             ; preds = %_ZNR5folly8OptionalImEdeEv.exit32
end_hunk_0
begin_hunk_1_@_ZN5folly11compression12_GLOBAL__N_116LZMA2StreamCodec16doCompressStreamERNS_5RangeIPKhEERNS3_IPhEENS0_11StreamCodec7FlushOpE:bb.a

_ZNO5folly8OptionalImEdeEv.exit:                  ; preds = %bb.k
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.029.0.copyload = load i64, ptr %i.x, align 8 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 5 uses
  %i.z = icmp ugt i64 %.sroa.029.0.copyload, 127
  br i1 %i.z, label %.lr.ph.i, label %_ZN5folly12encodeVarintEmPh.exit

.lr.ph.i:                                         ; preds = %_ZNO5folly8OptionalImEdeEv.exit, %.lr.ph.i
  %.010.i = phi ptr [ %i.ac, %.lr.ph.i ], [ %i.y, %_ZNO5folly8OptionalImEdeEv.exit ] ; 2 uses
  %.089.i = phi i64 [ %i.ad, %.lr.ph.i ], [ %.sroa.029.0.copyload, %_ZNO5folly8OptionalImEdeEv.exit ] ; 3 uses
  %i.aa = trunc i64 %.089.i to i8
  %i.ab = or i8 %i.aa, -128
  %i.ac = getelementptr inbounds nuw i8, ptr %.010.i, i64 1 ; 2 uses
  store i8 %i.ab, ptr %.010.i, align 1, !tbaa !2427
  %i.ad = lshr i64 %.089.i, 7                     ; 2 uses
  %i.ae = icmp ugt i64 %.089.i, 16383
  br i1 %i.ae, label %.lr.ph.i, label %_ZN5folly12encodeVarintEmPh.exit, !llvm.loop !3080

_ZN5folly12encodeVarintEmPh.exit:                 ; preds = %.lr.ph.i, %_ZNO5folly8OptionalImEdeEv.exit
  %.08.lcssa.i = phi i64 [ %.sroa.029.0.copyload, %_ZNO5folly8OptionalImEdeEv.exit ], [ %i.ad, %.lr.ph.i ]
  %.0.lcssa.i = phi ptr [ %i.y, %_ZNO5folly8OptionalImEdeEv.exit ], [ %i.ac, %.lr.ph.i ] ; 2 uses
  %i.af = trunc nuw nsw i64 %.08.lcssa.i to i8
  %i.ag = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 1
  store i8 %i.af, ptr %.0.lcssa.i, align 1, !tbaa !2427
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = ptrtoint ptr %i.y to i64
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 360
  store ptr %i.y, ptr %i.al, align 8, !tbaa !2429
  %.sroa.428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 368
  store ptr %i.ak, ptr %.sroa.428.0..sroa_idx, align 8, !tbaa !2429
  br label %bb.m

bb.m:                                             ; preds = %_ZN5folly12encodeVarintEmPh.exit, %_ZN5folly11compression12_GLOBAL__N_116LZMA2StreamCodec12resetCStreamEv.exit
  store i8 0, ptr %i.b, align 4, !tbaa !2964
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.a
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 4 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !2917 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !2918 ; 3 uses
  %i.aq = icmp eq ptr %i.an, %i.ap
  br i1 %i.aq, label %_ZN5folly11compression12_GLOBAL__N_116LZMA2StreamCodec17flushVarintBufferERNS_5RangeIPhEE.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = ptrtoint ptr %i.an to i64
  %i.at = sub i64 %i.ar, %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !2922 ; 2 uses
  %i.aw = load ptr, ptr %2, align 8, !tbaa !2921  ; 4 uses
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = sub i64 %i.ax, %i.ay
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.az, i64 %i.at) ; 6 uses
  %.not.i17 = icmp eq ptr %i.av, %i.aw
  br i1 %.not.i17, label %_ZN5folly5RangeIPKhE7advanceEm.exit.i.thread, label %bb.p

_ZN5folly5RangeIPKhE7advanceEm.exit.i.thread:     ; preds = %bb.o
  %i.ba = getelementptr inbounds nuw i8, ptr %i.an, i64 %.sroa.speculated.i ; 2 uses
  store ptr %i.ba, ptr %i.am, align 8, !tbaa !2917
  br label %_ZN5folly11compression12_GLOBAL__N_116LZMA2StreamCodec17flushVarintBufferERNS_5RangeIPhEE.exit

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aw, ptr align 1 %i.an, i64 %.sroa.speculated.i, i1 false)
  %.pre.i = load ptr, ptr %i.ao, align 8, !tbaa !2918 ; 2 uses
  %.pre12.i = load ptr, ptr %i.am, align 8, !tbaa !2917 ; 2 uses
  %.pre13.i = ptrtoint ptr %.pre.i to i64
  %.pre14.i = ptrtoint ptr %.pre12.i to i64
  %.pre16.i = sub i64 %.pre13.i, %.pre14.i
  %i.bb = icmp ugt i64 %.sroa.speculated.i, %.pre16.i
  br i1 %i.bb, label %bb.q, label %_ZN5folly5RangeIPKhE7advanceEm.exit.i, !prof !2933

bb.q:                                             ; preds = %bb.p
  tail call void @_ZN5folly6detail16throw_exception_ISt12out_of_rangeJPKcEEEvDpT0_(ptr noundef nonnull @.str.44) #7
  unreachable

_ZN5folly5RangeIPKhE7advanceEm.exit.i:            ; preds = %bb.p
  %.pre = load ptr, ptr %i.au, align 8, !tbaa !2922
  %.pre40 = load ptr, ptr %2, align 8, !tbaa !2921 ; 2 uses
  %.pre41 = ptrtoint ptr %.pre to i64
  %.pre42 = ptrtoint ptr %.pre40 to i64
  %.pre44 = sub i64 %.pre41, %.pre42
  %i.bc = icmp ugt i64 %.sroa.speculated.i, %.pre44
  %i.bd = getelementptr inbounds nuw i8, ptr %.pre12.i, i64 %.sroa.speculated.i ; 2 uses
  store ptr %i.bd, ptr %i.am, align 8, !tbaa !2917
  br i1 %i.bc, label %bb.r, label %_ZN5folly11compression12_GLOBAL__N_116LZMA2StreamCodec17flushVarintBufferERNS_5RangeIPhEE.exit, !prof !3083

bb.r:                                             ; preds = %_ZN5folly5RangeIPKhE7advanceEm.exit.i
  tail call void @_ZN5folly6detail16throw_exception_ISt12out_of_rangeJPKcEEEvDpT0_(ptr noundef nonnull @.str.44) #7
  unreachable

_ZN5folly11compression12_GLOBAL__N_116LZMA2StreamCodec17flushVarintBufferERNS_5RangeIPhEE.exit: ; preds = %_ZN5folly5RangeIPKhE7advanceEm.exit.i.thread, %_ZN5folly5RangeIPKhE7advanceEm.exit.i
  %i.be = phi ptr [ %i.ba, %_ZN5folly5RangeIPKhE7advanceEm.exit.i.thread ], [ %i.bd, %_ZN5folly5RangeIPKhE7advanceEm.exit.i ]
  %i.bf = phi ptr [ %i.ap, %_ZN5folly5RangeIPKhE7advanceEm.exit.i.thread ], [ %.pre.i, %_ZN5folly5RangeIPKhE7advanceEm.exit.i ]
  %i.bg = phi ptr [ %i.aw, %_ZN5folly5RangeIPKhE7advanceEm.exit.i.thread ], [ %.pre40, %_ZN5folly5RangeIPKhE7advanceEm.exit.i ]
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %.sroa.speculated.i
  store ptr %i.bh, ptr %2, align 8, !tbaa !2921
  %i.bi = icmp eq ptr %i.be, %i.bf
  br i1 %i.bi, label %_ZN5folly11compression12_GLOBAL__N_116LZMA2StreamCodec17flushVarintBufferERNS_5RangeIPhEE.exit.thread, label %bb.ae

_ZN5folly11compression12_GLOBAL__N_116LZMA2StreamCodec17flushVarintBufferERNS_5RangeIPhEE.exit.thread: ; preds = %bb.n, %_ZN5folly11compression12_GLOBAL__N_116LZMA2StreamCodec17flushVarintBufferERNS_5RangeIPhEE.exit
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %i.bl = load i8, ptr %i.bk, align 8, !tbaa !2967, !range !2444, !noundef !209
  %i.bm = trunc nuw i8 %i.bl to i1
  br i1 %i.bm, label %_ZN5folly8OptionalI11lzma_streamEptEv.exit21, label %bb.s

bb.s:                                             ; preds = %_ZN5folly11compression12_GLOBAL__N_116LZMA2StreamCodec17flushVarintBufferERNS_5RangeIPhEE.exit.thread
  tail call void @_ZN5folly6detail16throw_exception_INS_22OptionalEmptyExceptionEJEEEvDpT0_() #7
  unreachable

_ZN5folly8OptionalI11lzma_streamEptEv.exit21:     ; preds = %_ZN5folly11compression12_GLOBAL__N_116LZMA2StreamCodec17flushVarintBufferERNS_5RangeIPhEE.exit.thread
  %i.bn = load ptr, ptr %1, align 8, !tbaa !2917  ; 2 uses
  store ptr %i.bn, ptr %i.bj, align 8, !tbaa !2985
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !2918
  %i.bq = ptrtoint ptr %i.bp to i64
  %i.br = ptrtoint ptr %i.bn to i64
  %i.bs = sub i64 %i.bq, %i.br
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  store i64 %i.bs, ptr %i.bt, align 8, !tbaa !2986
  %i.bu = load ptr, ptr %2, align 8, !tbaa !2921  ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %i.bu, ptr %i.bv, align 8, !tbaa !2987
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !2922
  %i.by = ptrtoint ptr %i.bx to i64
  %i.bz = ptrtoint ptr %i.bu to i64
  %i.ca = sub i64 %i.by, %i.bz
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  store i64 %i.ca, ptr %i.cb, align 8, !tbaa !2988
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  store i8 0, ptr %5, align 8, !tbaa !2990, !alias.scope !3084
  %i.cc = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %1, ptr %i.cc, align 8, !tbaa !2992
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %0, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !2943
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %2, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !2994
  %i.cd = icmp ult i32 %3, 3
  br i1 %i.cd, label %switch.lookup, label %bb.t

bb.t:                                             ; preds = %_ZN5folly8OptionalI11lzma_streamEptEv.exit21
  %i.ce = tail call ptr @__cxa_allocate_exception(i64 16) #31 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ce, ptr noundef nonnull @.str.46)
          to label %bb.u unwind label %bb.v

bb.u:                                             ; preds = %bb.t
  invoke void @__cxa_throw(ptr nonnull %i.ce, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #33
          to label %.noexc unwind label %bb.x

.noexc:                                           ; preds = %bb.u
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.cf = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.ce) #31
  br label %.body

switch.lookup:                                    ; preds = %_ZN5folly8OptionalI11lzma_streamEptEv.exit21
  %i.cg = zext nneg i32 %3 to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN5folly11compression12_GLOBAL__N_116LZMA2StreamCodec16doCompressStreamERNS_5RangeIPKhEERNS3_IPhEENS0_11StreamCodec7FlushOpE, i64 %i.cg
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  %i.ch = tail call i32 @lzma_code(ptr noundef nonnull %i.bj, i32 noundef %switch.ext) #31 ; 2 uses
  %i.ci = invoke fastcc noundef i32 @_ZN5folly11compression12_GLOBAL__N_116lzmaThrowOnErrorE8lzma_ret(i32 noundef %i.ch)
          to label %bb.w unwind label %bb.x       ; 0 uses

bb.w:                                             ; preds = %switch.lookup
  switch i32 %3, label %default.unreachable [
    i32 0, label %bb.ab
    i32 1, label %bb.y
    i32 2, label %bb.aa
  ]

bb.x:                                             ; preds = %bb.z, %bb.u, %switch.lookup
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.y:                                             ; preds = %bb.w
  %i.ck = load i8, ptr %i.bk, align 8, !tbaa !2967, !range !2444, !noundef !209
  %i.cl = trunc nuw i8 %i.ck to i1
  br i1 %i.cl, label %_ZN5folly8OptionalI11lzma_streamEptEv.exit24, label %bb.z

bb.z:                                             ; preds = %bb.y
  invoke void @_ZN5folly6detail16throw_exception_INS_22OptionalEmptyExceptionEJEEEvDpT0_() #7
          to label %.noexc23 unwind label %bb.x

.noexc23:                                         ; preds = %bb.z
  unreachable

_ZN5folly8OptionalI11lzma_streamEptEv.exit24:     ; preds = %bb.y
  %i.cm = load i64, ptr %i.bt, align 8, !tbaa !2986
  %i.cn = icmp eq i64 %i.cm, 0
  br i1 %i.cn, label %_ZN5folly8OptionalI11lzma_streamEptEv.exit26, label %bb.ab

_ZN5folly8OptionalI11lzma_streamEptEv.exit26:     ; preds = %_ZN5folly8OptionalI11lzma_streamEptEv.exit24
  %i.co = load i64, ptr %i.cb, align 8, !tbaa !2988
  %i.cp = icmp ne i64 %i.co, 0
  br label %bb.ab

bb.aa:                                            ; preds = %bb.w
  %i.cq = icmp eq i32 %i.ch, 1
  br label %bb.ab

default.unreachable:                              ; preds = %bb.w
  unreachable

bb.ab:                                            ; preds = %bb.aa, %bb.w, %_ZN5folly8OptionalI11lzma_streamEptEv.exit26, %_ZN5folly8OptionalI11lzma_streamEptEv.exit24
  %.015 = phi i1 [ %i.cq, %bb.aa ], [ false, %bb.w ], [ false, %_ZN5folly8OptionalI11lzma_streamEptEv.exit24 ], [ %i.cp, %_ZN5folly8OptionalI11lzma_streamEptEv.exit26 ]
  %i.cr = load i8, ptr %i.bk, align 8, !tbaa !2967, !range !2444, !noundef !209
  %i.cs = trunc nuw i8 %i.cr to i1
  br i1 %i.cs, label %"_ZN5folly6detail14ScopeGuardImplIZNS_11compression12_GLOBAL__N_116LZMA2StreamCodec16doCompressStreamERNS_5RangeIPKhEERNS5_IPhEENS2_11StreamCodec7FlushOpEE3$_0Lb1EED2Ev.exit", label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  invoke void @_ZN5folly6detail16throw_exception_INS_22OptionalEmptyExceptionEJEEEvDpT0_() #7
          to label %.noexc.i.i.i unwind label %bb.ad

.noexc.i.i.i:                                     ; preds = %bb.ac
  unreachable

bb.ad:                                            ; preds = %bb.ac
  %i.ct = landingpad { ptr, i32 }
          catch ptr null
  %i.cu = extractvalue { ptr, i32 } %i.ct, 0
  tail call void @__clang_call_terminate(ptr %i.cu) #30
  unreachable

"_ZN5folly6detail14ScopeGuardImplIZNS_11compression12_GLOBAL__N_116LZMA2StreamCodec16doCompressStreamERNS_5RangeIPKhEERNS5_IPhEENS2_11StreamCodec7FlushOpEE3$_0Lb1EED2Ev.exit": ; preds = %bb.ab
  %i.cv = load ptr, ptr %i.bo, align 8, !tbaa !2918
  %i.cw = ptrtoint ptr %i.cv to i64
  %i.cx = load ptr, ptr %1, align 8, !tbaa !2917  ; 2 uses
  %i.cy = ptrtoint ptr %i.cx to i64
  %i.cz = load i64, ptr %i.bt, align 8, !tbaa !2986
  %i.da = add i64 %i.cz, %i.cy
  %i.db = sub i64 %i.cw, %i.da
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.db
  store ptr %i.dc, ptr %1, align 8, !tbaa !2917
  %i.dd = load ptr, ptr %i.bw, align 8, !tbaa !2922
  %i.de = load ptr, ptr %2, align 8, !tbaa !2921  ; 2 uses
  %i.df = ptrtoint ptr %i.dd to i64
  %i.dg = ptrtoint ptr %i.de to i64
  %i.dh = load i64, ptr %i.cb, align 8, !tbaa !2988
  %i.di = add i64 %i.dh, %i.dg
  %i.dj = sub i64 %i.df, %i.di
  %i.dk = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.dj
  store ptr %i.dk, ptr %2, align 8, !tbaa !2921
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  br label %bb.ae

.body:                                            ; preds = %bb.x, %bb.v
  %.pn = phi { ptr, i32 } [ %i.cf, %bb.v ], [ %i.cj, %bb.x ]
  call fastcc void @"_ZN5folly6detail14ScopeGuardImplIZNS_11compression12_GLOBAL__N_116LZMA2StreamCodec16doCompressStreamERNS_5RangeIPKhEERNS5_IPhEENS2_11StreamCodec7FlushOpEE3$_0Lb1EED2Ev"(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %5) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  br label %common.resume

bb.ae:                                            ; preds = %_ZN5folly11compression12_GLOBAL__N_116LZMA2StreamCodec17flushVarintBufferERNS_5RangeIPhEE.exit, %"_ZN5folly6detail14ScopeGuardImplIZNS_11compression12_GLOBAL__N_116LZMA2StreamCodec16doCompressStreamERNS_5RangeIPKhEERNS5_IPhEENS2_11StreamCodec7FlushOpEE3$_0Lb1EED2Ev.exit"
  %.1 = phi i1 [ %.015, %"_ZN5folly6detail14ScopeGuardImplIZNS_11compression12_GLOBAL__N_116LZMA2StreamCodec16doCompressStreamERNS_5RangeIPKhEERNS5_IPhEENS2_11StreamCodec7FlushOpEE3$_0Lb1EED2Ev.exit" ], [ false, %_ZN5folly11compression12_GLOBAL__N_116LZMA2StreamCodec17flushVarintBufferERNS_5RangeIPhEE.exit ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZN5folly11compression12_GLOBAL__N_116LZMA2StreamCodec18doUncompressStreamERNS_5RangeIPKhEERNS3_IPhEENS0_11StreamCodec7FlushOpE(ptr noundef nonnull align 8 dereferenceable(392) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %3) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.folly::Range.14", align 8   ; 8 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.folly::detail::ScopeGuardImpl.63", align 8 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 388 ; 2 uses
  %i.c = load i8, ptr %i.b, align 4, !tbaa !2964, !range !2444, !noundef !209
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %i.g = load i8, ptr %i.f, align 8, !tbaa !2967, !range !2444, !noundef !209
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.c, label %_ZN5folly8OptionalI11lzma_streamE6assignEOS1_.exit.i

_ZN5folly8OptionalI11lzma_streamE6assignEOS1_.exit.i: ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.e, i8 0, i64 136, i1 false)
  store i8 1, ptr %i.f, align 8, !tbaa !2967
  br label %bb.c

bb.c:                                             ; preds = %_ZN5folly8OptionalI11lzma_streamE6assignEOS1_.exit.i, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  %i.i = tail call i32 @lzma_auto_decoder(ptr noundef nonnull %i.e, i64 noundef -1, i32 noundef 0) #31 ; 2 uses
  store i32 %i.i, ptr %i.a, align 4, !tbaa !2980
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %_ZN5folly11compression12_GLOBAL__N_116LZMA2StreamCodec12resetDStreamEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = tail call ptr @__cxa_allocate_exception(i64 16) #31 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  invoke void @_ZN5folly2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJA44_c8lzma_retETnNSt9enable_ifIXaasr12IsSomeStringIT_EE5valueoonesZT0_Li1Entsr3std7is_sameISA_19__type_pack_elementIXmisPvDpT0_ELi1EEJvSD_EEEE5valueEiE4typeELi0EEESA_DpRKSC_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 1 dereferenceable(44) @.str.48, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.e unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.e:                                             ; preds = %bb.d
  invoke void @_ZNSt13runtime_errorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #33
          to label %bb.j unwind label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  br label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0.i = phi i1 [ false, %bb.f ], [ true, %bb.e ] ; 2 uses
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.m = load ptr, ptr %5, align 8, !tbaa !2428   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.g
  %i.p = load i64, ptr %i.n, align 8, !tbaa !2427
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  br i1 %.0.i, label %bb.h, label %bb.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  br i1 %.0.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn9.i = phi { ptr, i32 } [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.j) #31
  br label %bb.i

common.resume:                                    ; preds = %bb.al, %bb.y, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %.pn8.i, %bb.i ], [ %.pn.i, %bb.y ], [ %.pn, %bb.al ]
  resume { ptr, i32 } %common.resume.op

bb.i:                                             ; preds = %bb.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn8.i = phi { ptr, i32 } [ %.pn9.i, %bb.h ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  br label %common.resume

bb.j:                                             ; preds = %bb.f
  unreachable

_ZN5folly11compression12_GLOBAL__N_116LZMA2StreamCodec12resetDStreamEv.exit: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  store i8 0, ptr %i.b, align 4, !tbaa !2964
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val16 = load i32, ptr %i.r, align 8, !tbaa !2925
  %i.s = icmp eq i32 %.val16, 7                   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 389
  %i.u = zext i1 %i.s to i8
  store i8 %i.u, ptr %i.t, align 1, !tbaa !2965
  br i1 %i.s, label %.thread, label %.thread33

.thread:                                          ; preds = %_ZN5folly11compression12_GLOBAL__N_116LZMA2StreamCodec12resetDStreamEv.exit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 376
  store i64 0, ptr %i.v, align 8, !tbaa !2981
  br label %bb.l

bb.k:                                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 389
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !tbaa !2965, !range !2444
  %i.w = trunc nuw i8 %.pre to i1
  br i1 %i.w, label %bb.l, label %.thread33

bb.l:                                             ; preds = %.thread, %bb.k
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 389
  %i.y = load ptr, ptr %1, align 8, !tbaa !2917   ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !2918 ; 2 uses
  %i.ab = icmp eq ptr %i.y, %i.aa
  br i1 %i.ab, label %_ZN5folly11compression12_GLOBAL__N_116LZMA2StreamCodec20decodeAndCheckVarintERNS_5RangeIPKhEE.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 5 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !2981 ; 2 uses
  %i.ae = sub i64 10, %i.ad
  %i.af = ptrtoint ptr %i.aa to i64
  %i.ag = ptrtoint ptr %i.y to i64
  %i.ah = sub i64 %i.af, %i.ag
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.ah, i64 %i.ae) ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ad
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aj, ptr align 1 %i.y, i64 %.sroa.speculated.i, i1 false)
  %i.ak = load i64, ptr %i.ac, align 8, !tbaa !2981
  %i.al = add i64 %i.ak, %.sroa.speculated.i      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  store ptr %i.ai, ptr %4, align 8, !tbaa !2917
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.al
  store ptr %i.an, ptr %i.am, align 8, !tbaa !2918
  %i.ao = call { i64, i64 } @_ZN5folly15tryDecodeVarintIKhEENS_8ExpectedImNS_17DecodeVarintErrorEEERNS_5RangeIPT_EE(ptr noundef nonnull align 8 dereferenceable(16) %4) ; 2 uses
  %i.ap = extractvalue { i64, i64 } %i.ao, 0      ; 2 uses
  %i.aq = extractvalue { i64, i64 } %i.ao, 1
  %.sroa.021.0.extract.trunc.i = trunc i64 %i.ap to i8
  switch i8 %.sroa.021.0.extract.trunc.i, label %bb.s [
    i8 1, label %bb.n
    i8 2, label %_ZNKR5folly8ExpectedImNS_17DecodeVarintErrorEE5errorEv.exit.i
  ], !prof !3087

bb.n:                                             ; preds = %bb.m
  %i.ar = load ptr, ptr %i.am, align 8, !tbaa !2918
  %i.as = load ptr, ptr %4, align 8, !tbaa !2917
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = load i64, ptr %i.ac, align 8, !tbaa !2981
  %i.aw = add i64 %i.al, %i.au
  %i.ax = add i64 %i.av, %i.at
  %i.ay = sub i64 %i.aw, %i.ax                    ; 2 uses
  %i.az = load ptr, ptr %i.z, align 8, !tbaa !2918
  %i.ba = load ptr, ptr %1, align 8, !tbaa !2917  ; 2 uses
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = sub i64 %i.bb, %i.bc
  %i.be = icmp ugt i64 %i.ay, %i.bd
  br i1 %i.be, label %bb.o, label %_ZN5folly5RangeIPKhE7advanceEm.exit.i, !prof !2928

bb.o:                                             ; preds = %bb.n
  call void @_ZN5folly6detail16throw_exception_ISt12out_of_rangeJPKcEEEvDpT0_(ptr noundef nonnull @.str.44) #7
  unreachable

_ZN5folly5RangeIPKhE7advanceEm.exit.i:            ; preds = %bb.n
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.ay
  store ptr %i.bf, ptr %1, align 8, !tbaa !2917
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.4.0.copyload.i = load i8, ptr %.sroa.4.0..sroa_idx.i, align 8
  %i.bg = trunc nuw i8 %.sroa.4.0.copyload.i to i1
  br i1 %i.bg, label %_ZNKR5folly8ExpectedImNS_17DecodeVarintErrorEE5valueEv.exit.i, label %bb.z

_ZNKR5folly8ExpectedImNS_17DecodeVarintErrorEE5valueEv.exit.i: ; preds = %_ZN5folly5RangeIPKhE7advanceEm.exit.i
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.0.0.copyload.i = load i64, ptr %i.bh, align 8
  %.not.i17 = icmp eq i64 %.sroa.0.0.copyload.i, %i.aq
  br i1 %.not.i17, label %bb.z, label %bb.p

bb.p:                                             ; preds = %_ZNKR5folly8ExpectedImNS_17DecodeVarintErrorEE5valueEv.exit.i
  %i.bi = call ptr @__cxa_allocate_exception(i64 16) #31 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.bi, ptr noundef nonnull @.str.49)
          to label %bb.q unwind label %bb.r

bb.q:                                             ; preds = %bb.p
  call void @__cxa_throw(ptr nonnull %i.bi, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #33
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.s:                                             ; preds = %bb.m
  call void @_ZN5folly6detail16throw_exception_INS_17BadExpectedAccessIvEEJEEEvDpT0_() #7
  unreachable
end_hunk_1
begin_hunk_2_@_ZNK5folly11compression12_GLOBAL__N_116Bzip2StreamCodec13validPrefixesB5cxx11Ev:bb.a

.thread:                                          ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.d, ptr %0, align 8, !tbaa !2969
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.g, ptr %i.h, align 8, !tbaa !2970
  %i.i = invoke noundef ptr @_ZSt16__do_uninit_copyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS5_ET0_T_SA_S9_(ptr noundef nonnull %2, ptr noundef nonnull %i.f, ptr noundef nonnull %i.d)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 32) #32
  br label %.body

bb.c:                                             ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.i, ptr %i.k, align 8, !tbaa !2971
  %i.l = load ptr, ptr %2, align 8, !tbaa !2428   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.o = load i64, ptr %i.m, align 8, !tbaa !2427
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  ret void

.body:                                            ; preds = %.thread, %bb.b
  %i.q = phi { ptr, i32 } [ %i.e, %.thread ], [ %i.j, %bb.b ]
  %i.r = load ptr, ptr %2, align 8, !tbaa !2428   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %.body
  %i.u = load i64, ptr %i.s, align 8, !tbaa !2427
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  resume { ptr, i32 } %i.q
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZNK5folly11compression12_GLOBAL__N_116Bzip2StreamCodec13canUncompressEPKNS_5IOBufENS_8OptionalImEE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, ptr nofree readnone align 8 captures(none) dead_on_return %2) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %3 = alloca %"class.folly::io::Cursor", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  store ptr %1, ptr %3, align 8, !tbaa !2973
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %1, ptr %i.b, align 8, !tbaa !2974
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, i8 0, i64 32, i1 false)
  store i64 -1, ptr %i.d, align 8, !tbaa !2975
  %.not.i.i.i = icmp eq ptr %1, null
  br i1 %.not.i.i.i, label %_ZN5folly2io6CursorC2EPKNS_5IOBufE.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !2437 ; 4 uses
  store ptr %i.h, ptr %i.c, align 8, !tbaa !2976
  store ptr %i.h, ptr %i.e, align 8, !tbaa !2977
  %i.i = load i64, ptr %1, align 8, !tbaa !2438
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.i ; 2 uses
  store ptr %i.j, ptr %i.f, align 8, !tbaa !2978
  %i.k = ptrtoint ptr %i.j to i64
  br label %_ZN5folly2io6CursorC2EPKNS_5IOBufE.exit.i

_ZN5folly2io6CursorC2EPKNS_5IOBufE.exit.i:        ; preds = %bb.b, %bb.a
  %i.l = phi i64 [ 0, %bb.a ], [ %i.k, %bb.b ]
  %i.m = phi ptr [ null, %bb.a ], [ %i.h, %bb.b ] ; 2 uses
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = add i64 %i.n, 4
  %.not.i.i6.i = icmp ugt i64 %i.o, %i.l
  br i1 %.not.i.i6.i, label %_ZN5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE9tryReadLEIjEEbRT_.exit.i, label %_ZN5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE9tryReadLEIjEEbRT_.exit.thread.i, !prof !2928

_ZN5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE9tryReadLEIjEEbRT_.exit.i: ; preds = %_ZN5folly2io6CursorC2EPKNS_5IOBufE.exit.i
  %i.p = call noundef i64 @_ZN5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE14pullAtMostSlowEPvm(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i64 noundef 4)
  %i.q = icmp eq i64 %i.p, 4
  br i1 %i.q, label %_ZN5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE9tryReadLEIjEEbRT_.exit.thread.i, label %_ZN5folly11compression6detail16dataStartsWithLEIjEENSt9enable_ifIXsr3std11is_unsignedIT_EE5valueEbE4typeEPKNS_5IOBufES4_m.exit

_ZN5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE9tryReadLEIjEEbRT_.exit.thread.i: ; preds = %_ZN5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE9tryReadLEIjEEbRT_.exit.i, %_ZN5folly2io6CursorC2EPKNS_5IOBufE.exit.i
  %.in.i = phi ptr [ %i.m, %_ZN5folly2io6CursorC2EPKNS_5IOBufE.exit.i ], [ %i.a, %_ZN5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE9tryReadLEIjEEbRT_.exit.i ]
  %i.r = load i32, ptr %.in.i, align 1
  %i.s = and i32 %i.r, 16777215
  %i.t = icmp eq i32 %i.s, 6838850
  br label %_ZN5folly11compression6detail16dataStartsWithLEIjEENSt9enable_ifIXsr3std11is_unsignedIT_EE5valueEbE4typeEPKNS_5IOBufES4_m.exit

_ZN5folly11compression6detail16dataStartsWithLEIjEENSt9enable_ifIXsr3std11is_unsignedIT_EE5valueEbE4typeEPKNS_5IOBufES4_m.exit: ; preds = %_ZN5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE9tryReadLEIjEEbRT_.exit.i, %_ZN5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE9tryReadLEIjEEbRT_.exit.thread.i
  %.0.i = phi i1 [ %i.t, %_ZN5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE9tryReadLEIjEEbRT_.exit.thread.i ], [ false, %_ZN5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE9tryReadLEIjEEbRT_.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  ret i1 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i64 @_ZNK5folly11compression12_GLOBAL__N_116Bzip2StreamCodec21doMaxCompressedLengthEm(ptr nofree nonnull readnone align 8 captures(none) %0, i64 noundef %1) unnamed_addr #2 align 2 {
bb.a:
  %i.a = udiv i64 %1, 100
  %i.b = add i64 %1, 600
  %i.c = add i64 %i.b, %i.a
  ret i64 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @_ZN5folly11compression12_GLOBAL__N_116Bzip2StreamCodec13doResetStreamEv(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(240) initializes((236, 237)) %0) unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 236
  store i8 1, ptr %i.a, align 4, !tbaa !2954
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZN5folly11compression12_GLOBAL__N_116Bzip2StreamCodec16doCompressStreamERNS_5RangeIPKhEERNS3_IPhEENS0_11StreamCodec7FlushOpE(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %2, i32 noundef %3) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.folly::detail::ScopeGuardImpl.87", align 8 ; 8 uses
  %5 = alloca %"class.folly::Range.14", align 8   ; 9 uses
  %6 = alloca %"class.folly::Range.18", align 8   ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 236 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 5 uses
  %.sroa.4.0..sroa_idx.i4.i.i = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %.sroa.51.0..sroa_idx.i5.i.i = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %.sroa.6.0..sroa_idx.i6.i.i = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !2918
  %.pre28.i = load ptr, ptr %1, align 8, !tbaa !2917
  %.pre29.i = load ptr, ptr %i.b, align 8, !tbaa !2922
  %.pre30.i = load ptr, ptr %2, align 8, !tbaa !2921
  br label %bb.b

bb.b:                                             ; preds = %bb.y, %bb.a
  %i.k = phi ptr [ %i.cv, %bb.y ], [ %.pre30.i, %bb.a ] ; 3 uses
  %i.l = phi ptr [ %i.cp, %bb.y ], [ %.pre29.i, %bb.a ]
  %i.m = phi ptr [ %i.co, %bb.y ], [ %.pre28.i, %bb.a ] ; 4 uses
  %i.n = phi ptr [ %i.ci, %bb.y ], [ %.pre.i, %bb.a ]
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.m to i64
  %i.q = sub i64 %i.o, %i.p                       ; 2 uses
  %.sroa.speculated3.i = call i64 @llvm.umin.i64(i64 %i.q, i64 4194304) ; 3 uses
  %i.r = ptrtoint ptr %i.l to i64
  %i.s = ptrtoint ptr %i.k to i64
  %i.t = sub i64 %i.r, %i.s
  %.sroa.speculated.i = call i64 @llvm.umin.i64(i64 %i.t, i64 4194304) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 %.sroa.speculated3.i ; 2 uses
  store ptr %i.m, ptr %5, align 8
  store ptr %i.u, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 %.sroa.speculated.i
  store ptr %i.k, ptr %6, align 8
  store ptr %i.v, ptr %i.d, align 8
  %i.w = icmp ult i64 %i.q, 4194305
  %i.x = select i1 %i.w, i32 %3, i32 0            ; 3 uses
  %i.y = load i8, ptr %i.e, align 4, !tbaa !2954, !range !2444, !noundef !209
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.aa = load i8, ptr %i.g, align 8, !tbaa !2996, !range !2444, !noundef !209
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %bb.d, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.c
  store ptr null, ptr %i.f, align 8
  store i32 0, ptr %.sroa.4.0..sroa_idx.i4.i.i, align 8
  store ptr null, ptr %.sroa.51.0..sroa_idx.i5.i.i, align 8
  store i32 0, ptr %.sroa.6.0..sroa_idx.i6.i.i, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i8 0, i64 24, i1 false)
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ac = call i32 @BZ2_bzCompressEnd(ptr noundef nonnull %i.f) ; 0 uses
  %.pre.i.i.i = load i8, ptr %i.g, align 8, !tbaa !2996, !range !2444
  %i.ad = trunc nuw i8 %.pre.i.i.i to i1
  store ptr null, ptr %i.f, align 8
  store i32 0, ptr %.sroa.4.0..sroa_idx.i4.i.i, align 8
  store ptr null, ptr %.sroa.51.0..sroa_idx.i5.i.i, align 8
  store i32 0, ptr %.sroa.6.0..sroa_idx.i6.i.i, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i8 0, i64 24, i1 false)
  br i1 %i.ad, label %_ZN5folly11compression12_GLOBAL__N_116Bzip2StreamCodec12resetCStreamEv.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d, %.thread.i.i
  store i8 1, ptr %i.g, align 8, !tbaa !2996
  br label %_ZN5folly11compression12_GLOBAL__N_116Bzip2StreamCodec12resetCStreamEv.exit.i.i

_ZN5folly11compression12_GLOBAL__N_116Bzip2StreamCodec12resetCStreamEv.exit.i.i: ; preds = %bb.e, %bb.d
  %i.ae = load i32, ptr %i.i, align 8, !tbaa !2955
  %i.af = call i32 @BZ2_bzCompressInit(ptr noundef nonnull %i.f, i32 noundef %i.ae, i32 noundef 0, i32 noundef 0)
  %i.ag = call fastcc noundef i32 @_ZN5folly11compression12_GLOBAL__N_17bzCheckEi(i32 noundef %i.af) ; 0 uses
  store i8 0, ptr %i.e, align 4, !tbaa !2954
  %.pre31.i = load ptr, ptr %5, align 8, !tbaa !2917
  %.pre32.i = load ptr, ptr %i.c, align 8, !tbaa !2918
  br label %bb.f

bb.f:                                             ; preds = %_ZN5folly11compression12_GLOBAL__N_116Bzip2StreamCodec12resetCStreamEv.exit.i.i, %bb.b
  %i.ah = phi ptr [ %.pre32.i, %_ZN5folly11compression12_GLOBAL__N_116Bzip2StreamCodec12resetCStreamEv.exit.i.i ], [ %i.u, %bb.b ] ; 3 uses
  %i.ai = phi ptr [ %.pre31.i, %_ZN5folly11compression12_GLOBAL__N_116Bzip2StreamCodec12resetCStreamEv.exit.i.i ], [ %i.m, %bb.b ] ; 3 uses
  %i.aj = icmp eq ptr %i.ai, %i.ah
  br i1 %i.aj, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ak = load ptr, ptr %6, align 8, !tbaa !2921  ; 2 uses
  %i.al = load ptr, ptr %i.d, align 8, !tbaa !2922
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %"._ZZN5folly11compression12_GLOBAL__N_116Bzip2StreamCodec16doCompressStreamERNS_5RangeIPKhEERNS3_IPhEENS0_11StreamCodec7FlushOpEENK3$_0clIS6_S9_SC_EEDaRT_RT0_T1_.exit_crit_edge.i", label %bb.h

"._ZZN5folly11compression12_GLOBAL__N_116Bzip2StreamCodec16doCompressStreamERNS_5RangeIPKhEERNS3_IPhEENS0_11StreamCodec7FlushOpEENK3$_0clIS6_S9_SC_EEDaRT_RT0_T1_.exit_crit_edge.i": ; preds = %bb.g
  %.pre33.i = ptrtoint ptr %i.ah to i64           ; 2 uses
  %.pre36.i = ptrtoint ptr %i.ak to i64           ; 2 uses
  br label %"_ZZN5folly11compression12_GLOBAL__N_116Bzip2StreamCodec16doCompressStreamERNS_5RangeIPKhEERNS3_IPhEENS0_11StreamCodec7FlushOpEENK3$_0clIS6_S9_SC_EEDaRT_RT0_T1_.exit.i"

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.an = load i8, ptr %i.g, align 8, !tbaa !2996, !range !2444, !noundef !209
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %_ZN5folly8OptionalI9bz_streamEptEv.exit20.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZN5folly6detail16throw_exception_INS_22OptionalEmptyExceptionEJEEEvDpT0_() #7
  unreachable

_ZN5folly8OptionalI9bz_streamEptEv.exit20.i.i:    ; preds = %bb.h
  store ptr %i.ai, ptr %i.f, align 8, !tbaa !2998
  %i.ap = ptrtoint ptr %i.ah to i64
  %i.aq = ptrtoint ptr %i.ai to i64
  %i.ar = sub i64 %i.ap, %i.aq
  %i.as = trunc i64 %i.ar to i32
  store i32 %i.as, ptr %.sroa.4.0..sroa_idx.i4.i.i, align 8, !tbaa !2999
  %i.at = load ptr, ptr %6, align 8, !tbaa !2921  ; 2 uses
  store ptr %i.at, ptr %.sroa.51.0..sroa_idx.i5.i.i, align 8, !tbaa !3000
  %i.au = load ptr, ptr %i.d, align 8, !tbaa !2922
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = ptrtoint ptr %i.at to i64
  %i.ax = sub i64 %i.av, %i.aw
  %i.ay = trunc i64 %i.ax to i32
  store i32 %i.ay, ptr %.sroa.6.0..sroa_idx.i6.i.i, align 8, !tbaa !3001
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  store i8 0, ptr %4, align 8, !tbaa !2990, !alias.scope !3106
  store ptr %5, ptr %i.j, align 8, !tbaa !2992
  store ptr %0, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !3003
  store ptr %6, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !2994
  switch i32 %i.x, label %bb.l [
    i32 0, label %_ZN5folly11compression12_GLOBAL__N_119bzip2TranslateFlushENS0_11StreamCodec7FlushOpE.exit.i.i
    i32 2, label %_ZN5folly11compression12_GLOBAL__N_119bzip2TranslateFlushENS0_11StreamCodec7FlushOpE.exit.i.i
    i32 1, label %bb.j
  ]

bb.j:                                             ; preds = %_ZN5folly8OptionalI9bz_streamEptEv.exit20.i.i
  %i.az = call ptr @__cxa_allocate_exception(i64 16) #31 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.az, ptr noundef nonnull @.str.62)
          to label %.invoke.i.i unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.l:                                             ; preds = %_ZN5folly8OptionalI9bz_streamEptEv.exit20.i.i
  %i.bb = call ptr @__cxa_allocate_exception(i64 16) #31 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.bb, ptr noundef nonnull @.str.63)
          to label %.invoke.i.i unwind label %bb.m

.invoke.i.i:                                      ; preds = %bb.l, %bb.j
  %i.bc = phi ptr [ %i.az, %bb.j ], [ %i.bb, %bb.l ]
  invoke void @__cxa_throw(ptr nonnull %i.bc, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #33
          to label %.cont.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

bb.m:                                             ; preds = %bb.l
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.k
  %.sink.i.i.i = phi ptr [ %i.bb, %bb.m ], [ %i.az, %bb.k ]
  %.pn.i.i.i = phi { ptr, i32 } [ %i.bd, %bb.m ], [ %i.ba, %bb.k ]
  call void @__cxa_free_exception(ptr nonnull %.sink.i.i.i) #31
  br label %.body.i.i

_ZN5folly11compression12_GLOBAL__N_119bzip2TranslateFlushENS0_11StreamCodec7FlushOpE.exit.i.i: ; preds = %_ZN5folly8OptionalI9bz_streamEptEv.exit20.i.i, %_ZN5folly8OptionalI9bz_streamEptEv.exit20.i.i
  %i.be = invoke i32 @BZ2_bzCompress(ptr noundef nonnull %i.f, i32 noundef %i.x)
          to label %bb.o unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.o:                                             ; preds = %_ZN5folly11compression12_GLOBAL__N_119bzip2TranslateFlushENS0_11StreamCodec7FlushOpE.exit.i.i
  %i.bf = invoke fastcc noundef i32 @_ZN5folly11compression12_GLOBAL__N_17bzCheckEi(i32 noundef %i.be)
          to label %bb.p unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.p:                                             ; preds = %bb.o
  switch i32 %i.x, label %default.unreachable.i.i [
    i32 0, label %bb.s
    i32 1, label %bb.q
    i32 2, label %bb.r
  ]

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.o, %_ZN5folly11compression12_GLOBAL__N_119bzip2TranslateFlushENS0_11StreamCodec7FlushOpE.exit.i.i, %.invoke.i.i
  %lpad.loopexit.split-lp30 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

bb.q:                                             ; preds = %bb.p
  %i.bg = icmp eq i32 %i.be, 1
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.bh = icmp eq i32 %i.be, 4
  br label %bb.s

default.unreachable.i.i:                          ; preds = %bb.p
  unreachable

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p
  %.016.i.i = phi i1 [ %i.bh, %bb.r ], [ %i.bg, %bb.q ], [ false, %bb.p ]
  %i.bi = load i8, ptr %i.g, align 8, !tbaa !2996, !range !2444, !noundef !209
  %i.bj = trunc nuw i8 %i.bi to i1
  br i1 %i.bj, label %"_ZN5folly6detail14ScopeGuardImplIZZNS_11compression12_GLOBAL__N_116Bzip2StreamCodec16doCompressStreamERNS_5RangeIPKhEERNS5_IPhEENS2_11StreamCodec7FlushOpEENK3$_0clIS8_SB_SE_EEDaRT_RT0_T1_EUlvE_Lb1EED2Ev.exit.i.i", label %bb.t

bb.t:                                             ; preds = %bb.s
  invoke void @_ZN5folly6detail16throw_exception_INS_22OptionalEmptyExceptionEJEEEvDpT0_() #7
          to label %.noexc.i.i.i.i.i unwind label %bb.u

.noexc.i.i.i.i.i:                                 ; preds = %bb.t
  unreachable

bb.u:                                             ; preds = %bb.t
  %i.bk = landingpad { ptr, i32 }
          catch ptr null
  %i.bl = extractvalue { ptr, i32 } %i.bk, 0
  call void @__clang_call_terminate(ptr %i.bl) #30
  unreachable

"_ZN5folly6detail14ScopeGuardImplIZZNS_11compression12_GLOBAL__N_116Bzip2StreamCodec16doCompressStreamERNS_5RangeIPKhEERNS5_IPhEENS2_11StreamCodec7FlushOpEENK3$_0clIS8_SB_SE_EEDaRT_RT0_T1_EUlvE_Lb1EED2Ev.exit.i.i": ; preds = %bb.s
  %i.bm = load ptr, ptr %i.c, align 8, !tbaa !2918
  %i.bn = ptrtoint ptr %i.bm to i64               ; 2 uses
  %i.bo = load ptr, ptr %5, align 8, !tbaa !2917  ; 2 uses
  %i.bp = ptrtoint ptr %i.bo to i64
  %i.bq = load i32, ptr %.sroa.4.0..sroa_idx.i4.i.i, align 8, !tbaa !2999
  %i.br = zext i32 %i.bq to i64
  %i.bs = add i64 %i.bp, %i.br
  %i.bt = sub i64 %i.bn, %i.bs
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bt ; 2 uses
  store ptr %i.bu, ptr %5, align 8, !tbaa !2917
  %i.bv = load ptr, ptr %i.d, align 8, !tbaa !2922
  %i.bw = load ptr, ptr %6, align 8, !tbaa !2921  ; 2 uses
  %i.bx = ptrtoint ptr %i.bv to i64               ; 2 uses
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = load i32, ptr %.sroa.6.0..sroa_idx.i6.i.i, align 8, !tbaa !3001
  %i.ca = zext i32 %i.bz to i64
  %i.cb = add i64 %i.by, %i.ca
  %i.cc = sub i64 %i.bx, %i.cb
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.cc ; 2 uses
  store ptr %i.cd, ptr %6, align 8, !tbaa !2921
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  %.pre34.i = ptrtoint ptr %i.bu to i64
  %.pre38.i = ptrtoint ptr %i.cd to i64
  br label %"_ZZN5folly11compression12_GLOBAL__N_116Bzip2StreamCodec16doCompressStreamERNS_5RangeIPKhEERNS3_IPhEENS0_11StreamCodec7FlushOpEENK3$_0clIS6_S9_SC_EEDaRT_RT0_T1_.exit.i"

.body.i.i:                                        ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.n
  %.pn.i.i = phi { ptr, i32 } [ %.pn.i.i.i, %bb.n ], [ %lpad.loopexit.split-lp30, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call fastcc void @"_ZN5folly6detail14ScopeGuardImplIZZNS_11compression12_GLOBAL__N_116Bzip2StreamCodec16doCompressStreamERNS_5RangeIPKhEERNS5_IPhEENS2_11StreamCodec7FlushOpEENK3$_0clIS8_SB_SE_EEDaRT_RT0_T1_EUlvE_Lb1EED2Ev"(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %4) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  resume { ptr, i32 } %.pn.i.i

"_ZZN5folly11compression12_GLOBAL__N_116Bzip2StreamCodec16doCompressStreamERNS_5RangeIPKhEERNS3_IPhEENS0_11StreamCodec7FlushOpEENK3$_0clIS6_S9_SC_EEDaRT_RT0_T1_.exit.i": ; preds = %"_ZN5folly6detail14ScopeGuardImplIZZNS_11compression12_GLOBAL__N_116Bzip2StreamCodec16doCompressStreamERNS_5RangeIPKhEERNS5_IPhEENS2_11StreamCodec7FlushOpEENK3$_0clIS8_SB_SE_EEDaRT_RT0_T1_EUlvE_Lb1EED2Ev.exit.i.i", %"._ZZN5folly11compression12_GLOBAL__N_116Bzip2StreamCodec16doCompressStreamERNS_5RangeIPKhEERNS3_IPhEENS0_11StreamCodec7FlushOpEENK3$_0clIS6_S9_SC_EEDaRT_RT0_T1_.exit_crit_edge.i"
  %.pre-phi39.i = phi i64 [ %.pre36.i, %"._ZZN5folly11compression12_GLOBAL__N_116Bzip2StreamCodec16doCompressStreamERNS_5RangeIPKhEERNS3_IPhEENS0_11StreamCodec7FlushOpEENK3$_0clIS6_S9_SC_EEDaRT_RT0_T1_.exit_crit_edge.i" ], [ %.pre38.i, %"_ZN5folly6detail14ScopeGuardImplIZZNS_11compression12_GLOBAL__N_116Bzip2StreamCodec16doCompressStreamERNS_5RangeIPKhEERNS5_IPhEENS2_11StreamCodec7FlushOpEENK3$_0clIS8_SB_SE_EEDaRT_RT0_T1_EUlvE_Lb1EED2Ev.exit.i.i" ]
  %.pre-phi37.i = phi i64 [ %.pre36.i, %"._ZZN5folly11compression12_GLOBAL__N_116Bzip2StreamCodec16doCompressStreamERNS_5RangeIPKhEERNS3_IPhEENS0_11StreamCodec7FlushOpEENK3$_0clIS6_S9_SC_EEDaRT_RT0_T1_.exit_crit_edge.i" ], [ %i.bx, %"_ZN5folly6detail14ScopeGuardImplIZZNS_11compression12_GLOBAL__N_116Bzip2StreamCodec16doCompressStreamERNS_5RangeIPKhEERNS5_IPhEENS2_11StreamCodec7FlushOpEENK3$_0clIS8_SB_SE_EEDaRT_RT0_T1_EUlvE_Lb1EED2Ev.exit.i.i" ]
  %.pre-phi35.i = phi i64 [ %.pre33.i, %"._ZZN5folly11compression12_GLOBAL__N_116Bzip2StreamCodec16doCompressStreamERNS_5RangeIPKhEERNS3_IPhEENS0_11StreamCodec7FlushOpEENK3$_0clIS6_S9_SC_EEDaRT_RT0_T1_.exit_crit_edge.i" ], [ %.pre34.i, %"_ZN5folly6detail14ScopeGuardImplIZZNS_11compression12_GLOBAL__N_116Bzip2StreamCodec16doCompressStreamERNS_5RangeIPKhEERNS5_IPhEENS2_11StreamCodec7FlushOpEENK3$_0clIS8_SB_SE_EEDaRT_RT0_T1_EUlvE_Lb1EED2Ev.exit.i.i" ]
  %.pre-phi.i = phi i64 [ %.pre33.i, %"._ZZN5folly11compression12_GLOBAL__N_116Bzip2StreamCodec16doCompressStreamERNS_5RangeIPKhEERNS3_IPhEENS0_11StreamCodec7FlushOpEENK3$_0clIS6_S9_SC_EEDaRT_RT0_T1_.exit_crit_edge.i" ], [ %i.bn, %"_ZN5folly6detail14ScopeGuardImplIZZNS_11compression12_GLOBAL__N_116Bzip2StreamCodec16doCompressStreamERNS_5RangeIPKhEERNS5_IPhEENS2_11StreamCodec7FlushOpEENK3$_0clIS8_SB_SE_EEDaRT_RT0_T1_EUlvE_Lb1EED2Ev.exit.i.i" ]
  %.1.i.i = phi i1 [ false, %"._ZZN5folly11compression12_GLOBAL__N_116Bzip2StreamCodec16doCompressStreamERNS_5RangeIPKhEERNS3_IPhEENS0_11StreamCodec7FlushOpEENK3$_0clIS6_S9_SC_EEDaRT_RT0_T1_.exit_crit_edge.i" ], [ %.016.i.i, %"_ZN5folly6detail14ScopeGuardImplIZZNS_11compression12_GLOBAL__N_116Bzip2StreamCodec16doCompressStreamERNS_5RangeIPKhEERNS5_IPhEENS2_11StreamCodec7FlushOpEENK3$_0clIS8_SB_SE_EEDaRT_RT0_T1_EUlvE_Lb1EED2Ev.exit.i.i" ] ; 2 uses
  %i.ce = sub i64 %.pre-phi.i, %.pre-phi35.i      ; 2 uses
  %i.cf = sub i64 %.sroa.speculated3.i, %i.ce     ; 2 uses
  %i.cg = sub i64 %.pre-phi37.i, %.pre-phi39.i    ; 2 uses
  %i.ch = sub i64 %.sroa.speculated.i, %i.cg      ; 2 uses
  %i.ci = load ptr, ptr %i.a, align 8, !tbaa !2918 ; 3 uses
  %i.cj = load ptr, ptr %1, align 8, !tbaa !2917  ; 2 uses
  %i.ck = ptrtoint ptr %i.ci to i64
  %i.cl = ptrtoint ptr %i.cj to i64
  %i.cm = sub i64 %i.ck, %i.cl
  %i.cn = icmp ugt i64 %i.cf, %i.cm
  br i1 %i.cn, label %bb.v, label %_ZN5folly5RangeIPKhE7advanceEm.exit.i, !prof !2928

bb.v:                                             ; preds = %"_ZZN5folly11compression12_GLOBAL__N_116Bzip2StreamCodec16doCompressStreamERNS_5RangeIPKhEERNS3_IPhEENS0_11StreamCodec7FlushOpEENK3$_0clIS6_S9_SC_EEDaRT_RT0_T1_.exit.i"
  call void @_ZN5folly6detail16throw_exception_ISt12out_of_rangeJPKcEEEvDpT0_(ptr noundef nonnull @.str.44) #7
  unreachable

_ZN5folly5RangeIPKhE7advanceEm.exit.i:            ; preds = %"_ZZN5folly11compression12_GLOBAL__N_116Bzip2StreamCodec16doCompressStreamERNS_5RangeIPKhEERNS3_IPhEENS0_11StreamCodec7FlushOpEENK3$_0clIS6_S9_SC_EEDaRT_RT0_T1_.exit.i"
  %i.co = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.cf ; 3 uses
  store ptr %i.co, ptr %1, align 8, !tbaa !2917
  %i.cp = load ptr, ptr %i.b, align 8, !tbaa !2922 ; 3 uses
  %i.cq = load ptr, ptr %2, align 8, !tbaa !2921  ; 2 uses
  %i.cr = ptrtoint ptr %i.cp to i64
  %i.cs = ptrtoint ptr %i.cq to i64
  %i.ct = sub i64 %i.cr, %i.cs
  %i.cu = icmp ugt i64 %i.ch, %i.ct
  br i1 %i.cu, label %bb.w, label %_ZN5folly5RangeIPhE7advanceEm.exit.i, !prof !2928

bb.w:                                             ; preds = %_ZN5folly5RangeIPKhE7advanceEm.exit.i
  call void @_ZN5folly6detail16throw_exception_ISt12out_of_rangeJPKcEEEvDpT0_(ptr noundef nonnull @.str.44) #7
  unreachable

_ZN5folly5RangeIPhE7advanceEm.exit.i:             ; preds = %_ZN5folly5RangeIPKhE7advanceEm.exit.i
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.ch ; 3 uses
  store ptr %i.cv, ptr %2, align 8, !tbaa !2921
  br i1 %.1.i.i, label %.thread.i, label %bb.x

bb.x:                                             ; preds = %_ZN5folly5RangeIPhE7advanceEm.exit.i
  %i.cw = icmp eq ptr %i.co, %i.ci
  %i.cx = icmp eq ptr %i.cv, %i.cp
  %or.cond13.i = select i1 %i.cw, i1 true, i1 %i.cx
  br i1 %or.cond13.i, label %.thread.i, label %bb.y

.thread.i:                                        ; preds = %bb.x, %_ZN5folly5RangeIPhE7advanceEm.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  br label %"_ZN5folly11compression6detail13chunkedStreamIZNS0_12_GLOBAL__N_116Bzip2StreamCodec16doCompressStreamERNS_5RangeIPKhEERNS5_IPhEENS0_11StreamCodec7FlushOpEE3$_0EEbmS9_SC_SE_OT_.exit"

bb.y:                                             ; preds = %bb.x
  %i.cy = icmp ne i64 %.sroa.speculated3.i, %i.ce
  %i.cz = icmp ne i64 %.sroa.speculated.i, %i.cg
  %or.cond.not.i = select i1 %i.cy, i1 true, i1 %i.cz
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  br i1 %or.cond.not.i, label %bb.b, label %"_ZN5folly11compression6detail13chunkedStreamIZNS0_12_GLOBAL__N_116Bzip2StreamCodec16doCompressStreamERNS_5RangeIPKhEERNS5_IPhEENS0_11StreamCodec7FlushOpEE3$_0EEbmS9_SC_SE_OT_.exit"

"_ZN5folly11compression6detail13chunkedStreamIZNS0_12_GLOBAL__N_116Bzip2StreamCodec16doCompressStreamERNS_5RangeIPKhEERNS5_IPhEENS0_11StreamCodec7FlushOpEE3$_0EEbmS9_SC_SE_OT_.exit": ; preds = %bb.y, %.thread.i
  %.1.i.i26 = phi i1 [ %.1.i.i, %.thread.i ], [ false, %bb.y ]
  ret i1 %.1.i.i26
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZN5folly11compression12_GLOBAL__N_116Bzip2StreamCodec18doUncompressStreamERNS_5RangeIPKhEERNS3_IPhEENS0_11StreamCodec7FlushOpE(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %2, i32 noundef %3) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.folly::detail::ScopeGuardImpl.91", align 8 ; 8 uses
  %5 = alloca %"class.folly::Range.14", align 8   ; 9 uses
  %6 = alloca %"class.folly::Range.18", align 8   ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.e = icmp eq i32 %3, 1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 236 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 5 uses
  %.sroa.4.0..sroa_idx.i4.i.i = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 4 uses
  %.sroa.51.0..sroa_idx.i5.i.i = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  %.sroa.6.0..sroa_idx.i6.i.i = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !2918
  %.pre26.i = load ptr, ptr %1, align 8, !tbaa !2917
  %.pre27.i = load ptr, ptr %i.b, align 8, !tbaa !2922
  %.pre28.i = load ptr, ptr %2, align 8, !tbaa !2921
  br label %bb.b

bb.b:                                             ; preds = %bb.u, %bb.a
  %i.k = phi ptr [ %i.co, %bb.u ], [ %.pre28.i, %bb.a ] ; 3 uses
  %i.l = phi ptr [ %i.ci, %bb.u ], [ %.pre27.i, %bb.a ]
  %i.m = phi ptr [ %i.ch, %bb.u ], [ %.pre26.i, %bb.a ] ; 3 uses
  %i.n = phi ptr [ %i.cb, %bb.u ], [ %.pre.i, %bb.a ]
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.m to i64
  %i.q = sub i64 %i.o, %i.p                       ; 2 uses
  %.sroa.speculated3.i = call i64 @llvm.umin.i64(i64 %i.q, i64 4194304) ; 3 uses
  %i.r = ptrtoint ptr %i.l to i64
  %i.s = ptrtoint ptr %i.k to i64
  %i.t = sub i64 %i.r, %i.s
  %.sroa.speculated.i = call i64 @llvm.umin.i64(i64 %i.t, i64 4194304) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 %.sroa.speculated3.i
  store ptr %i.m, ptr %5, align 8
  store ptr %i.u, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 %.sroa.speculated.i
  store ptr %i.k, ptr %6, align 8
  store ptr %i.v, ptr %i.d, align 8
  %i.w = icmp ult i64 %i.q, 4194305
  %i.x = and i1 %i.e, %i.w
  br i1 %i.x, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.y = call ptr @__cxa_allocate_exception(i64 16) #31 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull @.str.62)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @__cxa_throw(ptr nonnull %i.y, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #33
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.z = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.y) #31
  br label %bb.q

bb.f:                                             ; preds = %bb.b
  %i.aa = load i8, ptr %i.f, align 4, !tbaa !2954, !range !2444, !noundef !209
  %i.ab = trunc nuw i8 %i.aa to i1
  %.pre30.i = load i8, ptr %i.h, align 8, !tbaa !2996, !range !2444 ; 2 uses
  br i1 %i.ab, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.ac = trunc nuw i8 %.pre30.i to i1
  br i1 %i.ac, label %bb.h, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.g
  store ptr null, ptr %i.g, align 8
  store i32 0, ptr %.sroa.4.0..sroa_idx.i4.i.i, align 8
  store ptr null, ptr %.sroa.51.0..sroa_idx.i5.i.i, align 8
  store i32 0, ptr %.sroa.6.0..sroa_idx.i6.i.i, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i8 0, i64 24, i1 false)
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ad = call i32 @BZ2_bzDecompressEnd(ptr noundef nonnull %i.g) ; 0 uses
  %.pre.i.i.i = load i8, ptr %i.h, align 8, !tbaa !2996, !range !2444
  %i.ae = trunc nuw i8 %.pre.i.i.i to i1
  store ptr null, ptr %i.g, align 8
  store i32 0, ptr %.sroa.4.0..sroa_idx.i4.i.i, align 8
  store ptr null, ptr %.sroa.51.0..sroa_idx.i5.i.i, align 8
  store i32 0, ptr %.sroa.6.0..sroa_idx.i6.i.i, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i8 0, i64 24, i1 false)
  br i1 %i.ae, label %_ZN5folly11compression12_GLOBAL__N_116Bzip2StreamCodec12resetDStreamEv.exit.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h, %.thread.i.i
  store i8 1, ptr %i.h, align 8, !tbaa !2996
  br label %_ZN5folly11compression12_GLOBAL__N_116Bzip2StreamCodec12resetDStreamEv.exit.i.i

_ZN5folly11compression12_GLOBAL__N_116Bzip2StreamCodec12resetDStreamEv.exit.i.i: ; preds = %bb.i, %bb.h
  %i.af = call i32 @BZ2_bzDecompressInit(ptr noundef nonnull %i.g, i32 noundef 0, i32 noundef 0)
  %i.ag = call fastcc noundef i32 @_ZN5folly11compression12_GLOBAL__N_17bzCheckEi(i32 noundef %i.af) ; 0 uses
  store i8 0, ptr %i.f, align 4, !tbaa !2954
  %.pre29.i = load i8, ptr %i.h, align 8, !tbaa !2996, !range !2444
  br label %bb.j

bb.j:                                             ; preds = %_ZN5folly11compression12_GLOBAL__N_116Bzip2StreamCodec12resetDStreamEv.exit.i.i, %bb.f
  %i.ah = phi i8 [ %.pre29.i, %_ZN5folly11compression12_GLOBAL__N_116Bzip2StreamCodec12resetDStreamEv.exit.i.i ], [ %.pre30.i, %bb.f ]
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %_ZN5folly8OptionalI9bz_streamEptEv.exit14.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_ZN5folly6detail16throw_exception_INS_22OptionalEmptyExceptionEJEEEvDpT0_() #7
  unreachable

_ZN5folly8OptionalI9bz_streamEptEv.exit14.i.i:    ; preds = %bb.j
  %i.aj = load ptr, ptr %5, align 8, !tbaa !2917  ; 2 uses
  store ptr %i.aj, ptr %i.g, align 8, !tbaa !2998
  %i.ak = load ptr, ptr %i.c, align 8, !tbaa !2918
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = ptrtoint ptr %i.aj to i64
  %i.an = sub i64 %i.al, %i.am
  %i.ao = trunc i64 %i.an to i32
  store i32 %i.ao, ptr %.sroa.4.0..sroa_idx.i4.i.i, align 8, !tbaa !2999
  %i.ap = load ptr, ptr %6, align 8, !tbaa !2921  ; 2 uses
  store ptr %i.ap, ptr %.sroa.51.0..sroa_idx.i5.i.i, align 8, !tbaa !3000
  %i.aq = load ptr, ptr %i.d, align 8, !tbaa !2922
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = ptrtoint ptr %i.ap to i64
  %i.at = sub i64 %i.ar, %i.as
  %i.au = trunc i64 %i.at to i32
  store i32 %i.au, ptr %.sroa.6.0..sroa_idx.i6.i.i, align 8, !tbaa !3001
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  store i8 0, ptr %4, align 8, !tbaa !2990, !alias.scope !3109
  store ptr %5, ptr %i.j, align 8, !tbaa !2992
  store ptr %0, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !3003
  store ptr %6, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !2994
  %i.av = invoke i32 @BZ2_bzDecompress(ptr noundef nonnull %i.g)
          to label %bb.l unwind label %bb.p       ; 2 uses

bb.l:                                             ; preds = %_ZN5folly8OptionalI9bz_streamEptEv.exit14.i.i
  %i.aw = invoke fastcc noundef i32 @_ZN5folly11compression12_GLOBAL__N_17bzCheckEi(i32 noundef %i.av)
          to label %bb.m unwind label %bb.p       ; 0 uses

bb.m:                                             ; preds = %bb.l
  %i.ax = load i8, ptr %i.h, align 8, !tbaa !2996, !range !2444, !noundef !209
  %i.ay = trunc nuw i8 %i.ax to i1
  br i1 %i.ay, label %"_ZZN5folly11compression12_GLOBAL__N_116Bzip2StreamCodec18doUncompressStreamERNS_5RangeIPKhEERNS3_IPhEENS0_11StreamCodec7FlushOpEENK3$_0clIS6_S9_SC_EEDaRT_RT0_T1_.exit.i", label %bb.n

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN5folly6detail16throw_exception_INS_22OptionalEmptyExceptionEJEEEvDpT0_() #7
          to label %.noexc.i.i.i.i.i unwind label %bb.o

.noexc.i.i.i.i.i:                                 ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %bb.n
  %i.az = landingpad { ptr, i32 }
          catch ptr null
  %i.ba = extractvalue { ptr, i32 } %i.az, 0
  call void @__clang_call_terminate(ptr %i.ba) #30
  unreachable

bb.p:                                             ; preds = %bb.l, %_ZN5folly8OptionalI9bz_streamEptEv.exit14.i.i
  %i.bb = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN5folly6detail14ScopeGuardImplIZZNS_11compression12_GLOBAL__N_116Bzip2StreamCodec18doUncompressStreamERNS_5RangeIPKhEERNS5_IPhEENS2_11StreamCodec7FlushOpEENK3$_0clIS8_SB_SE_EEDaRT_RT0_T1_EUlvE_Lb1EED2Ev"(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %4) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.e
  %.pn.i.i = phi { ptr, i32 } [ %i.z, %bb.e ], [ %i.bb, %bb.p ]
  resume { ptr, i32 } %.pn.i.i

"_ZZN5folly11compression12_GLOBAL__N_116Bzip2StreamCodec18doUncompressStreamERNS_5RangeIPKhEERNS3_IPhEENS0_11StreamCodec7FlushOpEENK3$_0clIS6_S9_SC_EEDaRT_RT0_T1_.exit.i": ; preds = %bb.m
  %i.bc = icmp eq i32 %i.av, 4                    ; 2 uses
  %i.bd = load ptr, ptr %i.c, align 8, !tbaa !2918
  %i.be = ptrtoint ptr %i.bd to i64               ; 2 uses
  %i.bf = load ptr, ptr %5, align 8, !tbaa !2917  ; 2 uses
  %i.bg = ptrtoint ptr %i.bf to i64
  %i.bh = load i32, ptr %.sroa.4.0..sroa_idx.i4.i.i, align 8, !tbaa !2999
  %i.bi = zext i32 %i.bh to i64
  %i.bj = add i64 %i.bg, %i.bi
  %i.bk = sub i64 %i.be, %i.bj
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.bk ; 2 uses
  store ptr %i.bl, ptr %5, align 8, !tbaa !2917
  %i.bm = load ptr, ptr %i.d, align 8, !tbaa !2922
  %i.bn = load ptr, ptr %6, align 8, !tbaa !2921  ; 2 uses
  %i.bo = ptrtoint ptr %i.bm to i64               ; 2 uses
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = load i32, ptr %.sroa.6.0..sroa_idx.i6.i.i, align 8, !tbaa !3001
  %i.br = zext i32 %i.bq to i64
  %i.bs = add i64 %i.bp, %i.br
  %i.bt = sub i64 %i.bo, %i.bs
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bt ; 2 uses
  store ptr %i.bu, ptr %6, align 8, !tbaa !2921
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  %i.bv = ptrtoint ptr %i.bl to i64
  %i.bw = sub i64 %i.be, %i.bv                    ; 2 uses
  %i.bx = sub i64 %.sroa.speculated3.i, %i.bw     ; 2 uses
  %i.by = ptrtoint ptr %i.bu to i64
  %i.bz = sub i64 %i.bo, %i.by                    ; 2 uses
  %i.ca = sub i64 %.sroa.speculated.i, %i.bz      ; 2 uses
  %i.cb = load ptr, ptr %i.a, align 8, !tbaa !2918 ; 3 uses
  %i.cc = load ptr, ptr %1, align 8, !tbaa !2917  ; 2 uses
  %i.cd = ptrtoint ptr %i.cb to i64
  %i.ce = ptrtoint ptr %i.cc to i64
  %i.cf = sub i64 %i.cd, %i.ce
  %i.cg = icmp ugt i64 %i.bx, %i.cf
  br i1 %i.cg, label %bb.r, label %_ZN5folly5RangeIPKhE7advanceEm.exit.i, !prof !2928

bb.r:                                             ; preds = %"_ZZN5folly11compression12_GLOBAL__N_116Bzip2StreamCodec18doUncompressStreamERNS_5RangeIPKhEERNS3_IPhEENS0_11StreamCodec7FlushOpEENK3$_0clIS6_S9_SC_EEDaRT_RT0_T1_.exit.i"
  call void @_ZN5folly6detail16throw_exception_ISt12out_of_rangeJPKcEEEvDpT0_(ptr noundef nonnull @.str.44) #7
  unreachable

_ZN5folly5RangeIPKhE7advanceEm.exit.i:            ; preds = %"_ZZN5folly11compression12_GLOBAL__N_116Bzip2StreamCodec18doUncompressStreamERNS_5RangeIPKhEERNS3_IPhEENS0_11StreamCodec7FlushOpEENK3$_0clIS6_S9_SC_EEDaRT_RT0_T1_.exit.i"
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.bx ; 3 uses
  store ptr %i.ch, ptr %1, align 8, !tbaa !2917
  %i.ci = load ptr, ptr %i.b, align 8, !tbaa !2922 ; 3 uses
  %i.cj = load ptr, ptr %2, align 8, !tbaa !2921  ; 2 uses
  %i.ck = ptrtoint ptr %i.ci to i64
  %i.cl = ptrtoint ptr %i.cj to i64
  %i.cm = sub i64 %i.ck, %i.cl
  %i.cn = icmp ugt i64 %i.ca, %i.cm
  br i1 %i.cn, label %bb.s, label %_ZN5folly5RangeIPhE7advanceEm.exit.i, !prof !2928

bb.s:                                             ; preds = %_ZN5folly5RangeIPKhE7advanceEm.exit.i
  call void @_ZN5folly6detail16throw_exception_ISt12out_of_rangeJPKcEEEvDpT0_(ptr noundef nonnull @.str.44) #7
  unreachable

_ZN5folly5RangeIPhE7advanceEm.exit.i:             ; preds = %_ZN5folly5RangeIPKhE7advanceEm.exit.i
  %i.co = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.ca ; 3 uses
  store ptr %i.co, ptr %2, align 8, !tbaa !2921
  br i1 %i.bc, label %.thread.i, label %bb.t

bb.t:                                             ; preds = %_ZN5folly5RangeIPhE7advanceEm.exit.i
  %i.cp = icmp eq ptr %i.ch, %i.cb
  %i.cq = icmp eq ptr %i.co, %i.ci
  %or.cond13.i = select i1 %i.cp, i1 true, i1 %i.cq
  br i1 %or.cond13.i, label %.thread.i, label %bb.u

.thread.i:                                        ; preds = %bb.t, %_ZN5folly5RangeIPhE7advanceEm.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  br label %"_ZN5folly11compression6detail13chunkedStreamIZNS0_12_GLOBAL__N_116Bzip2StreamCodec18doUncompressStreamERNS_5RangeIPKhEERNS5_IPhEENS0_11StreamCodec7FlushOpEE3$_0EEbmS9_SC_SE_OT_.exit"

bb.u:                                             ; preds = %bb.t
  %i.cr = icmp ne i64 %.sroa.speculated3.i, %i.bw
  %i.cs = icmp ne i64 %.sroa.speculated.i, %i.bz
  %or.cond.not.i = select i1 %i.cr, i1 true, i1 %i.cs
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  br i1 %or.cond.not.i, label %bb.b, label %"_ZN5folly11compression6detail13chunkedStreamIZNS0_12_GLOBAL__N_116Bzip2StreamCodec18doUncompressStreamERNS_5RangeIPKhEERNS5_IPhEENS0_11StreamCodec7FlushOpEE3$_0EEbmS9_SC_SE_OT_.exit"

"_ZN5folly11compression6detail13chunkedStreamIZNS0_12_GLOBAL__N_116Bzip2StreamCodec18doUncompressStreamERNS_5RangeIPKhEERNS5_IPhEENS0_11StreamCodec7FlushOpEE3$_0EEbmS9_SC_SE_OT_.exit": ; preds = %bb.u, %.thread.i
  %i.ct = phi i1 [ %i.bc, %.thread.i ], [ false, %bb.u ]
  ret i1 %i.ct
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly11toAppendFitIJA23_ciPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEETnNSt9enable_ifIXsr12IsSomeStringINSt14remove_pointerI19__type_pack_elementIXmisPDpT_ELi1EEJSD_EEE4typeEEE5valueEiE4typeELi0EEEvDpRKSC_(ptr noundef nonnull align 1 dereferenceable(23) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !2932
  %i.b = load i32, ptr %1, align 4, !tbaa !2938   ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZN5folly6detail15reserveInTargetIA23_ciJPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvRKT_RKT0_DpRKT1_.exit, label %bb.b, !prof !2928

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @llvm.abs.i32(i32 %i.b, i1 false)
  %i.d = zext i32 %i.c to i64                     ; 2 uses
  %i.e = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.d, i1 true)
  %i.f = sub nuw nsw i64 64, %i.e
  %i.g = mul nuw nsw i64 %i.f, 39
  %i.h = lshr i64 %i.g, 7                         ; 2 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 %i.h
  %i.j = load i64, ptr %i.i, align 8, !tbaa !2445
  %i.k = icmp ule i64 %i.j, %i.d
  %i.l = zext i1 %i.k to i64
  %i.m = add nuw nsw i64 %i.h, %i.l
  br label %_ZN5folly6detail15reserveInTargetIA23_ciJPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvRKT_RKT0_DpRKT1_.exit

_ZN5folly6detail15reserveInTargetIA23_ciJPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvRKT_RKT0_DpRKT1_.exit: ; preds = %bb.a, %bb.b
  %.0.i.i.i.i.i.i = phi i64 [ %i.m, %bb.b ], [ 1, %bb.a ]
  %.lobit.i.i.i = lshr i32 %i.b, 31
  %narrow.i = add nuw nsw i32 %.lobit.i.i.i, 23
  %i.n = zext nneg i32 %narrow.i to i64
  %i.o = add nuw nsw i64 %.0.i.i.i.i.i.i, %i.n
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 noundef %i.o)
end_hunk_2
