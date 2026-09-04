Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/auto_tune_compressor?download=true
inline.NumInlined: 1076
inline.NumDeleted: 658
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN7rocksdb25AutoSkipCompressorManager19GetCompressorForSSTERKNS_21FilterBuildingContextERKNS_18CompressionOptionsENS_15CompressionTypeE:bb.a
          to label %bb.b unwind label %bb.c, !noalias !143, !inline_history !1

bb.b:                                             ; preds = %.noexc
  %i.h = load ptr, ptr %5, align 8, !tbaa !40, !noalias !143 ; 3 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN7rocksdb25AutoSkipCompressorWrapperESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN7rocksdb10CompressorEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN7rocksdb10CompressorEEclEPS1_.exit.i.i: ; preds = %bb.b
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !42, !noalias !143
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !noalias !143
  call void %i.k(ptr noundef nonnull align 8 dereferenceable(8) %i.h) #27, !noalias !143, !inline_history !2
  br label %_ZNSt10unique_ptrIN7rocksdb25AutoSkipCompressorWrapperESt14default_deleteIS1_EED2Ev.exit

bb.c:                                             ; preds = %.noexc
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %5, align 8, !tbaa !40, !noalias !143 ; 3 uses
  %.not.i4.i = icmp eq ptr %i.m, null
  br i1 %.not.i4.i, label %_ZNSt10unique_ptrIN7rocksdb10CompressorESt14default_deleteIS1_EED2Ev.exit6.i, label %_ZNKSt14default_deleteIN7rocksdb10CompressorEEclEPS1_.exit.i5.i

_ZNKSt14default_deleteIN7rocksdb10CompressorEEclEPS1_.exit.i5.i: ; preds = %bb.c
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !42, !noalias !143
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !noalias !143
  call void %i.p(ptr noundef nonnull align 8 dereferenceable(8) %i.m) #27, !noalias !143, !inline_history !2
  br label %_ZNSt10unique_ptrIN7rocksdb10CompressorESt14default_deleteIS1_EED2Ev.exit6.i

_ZNSt10unique_ptrIN7rocksdb10CompressorESt14default_deleteIS1_EED2Ev.exit6.i: ; preds = %_ZNKSt14default_deleteIN7rocksdb10CompressorEEclEPS1_.exit.i5.i, %bb.c
  call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef 72) #26, !noalias !143, !inline_history !1
  br label %.body

_ZNSt10unique_ptrIN7rocksdb25AutoSkipCompressorWrapperESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.b, %_ZNKSt14default_deleteIN7rocksdb10CompressorEEclEPS1_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  store ptr %i.f, ptr %0, align 8, !tbaa !49
  %i.q = load ptr, ptr %6, align 8, !tbaa !40     ; 3 uses
  %.not.i6 = icmp eq ptr %i.q, null
  br i1 %.not.i6, label %_ZNSt10unique_ptrIN7rocksdb10CompressorESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN7rocksdb10CompressorEEclEPS1_.exit.i

_ZNKSt14default_deleteIN7rocksdb10CompressorEEclEPS1_.exit.i: ; preds = %_ZNSt10unique_ptrIN7rocksdb25AutoSkipCompressorWrapperESt14default_deleteIS1_EED2Ev.exit
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !42
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8
  call void %i.t(ptr noundef nonnull align 8 dereferenceable(8) %i.q) #27, !inline_history !3
  br label %_ZNSt10unique_ptrIN7rocksdb10CompressorESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN7rocksdb10CompressorESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN7rocksdb25AutoSkipCompressorWrapperESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt14default_deleteIN7rocksdb10CompressorEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  ret void

bb.d:                                             ; preds = %bb.a
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt10unique_ptrIN7rocksdb10CompressorESt14default_deleteIS1_EED2Ev.exit6.i, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.u, %bb.d ], [ %i.l, %_ZNSt10unique_ptrIN7rocksdb10CompressorESt14default_deleteIS1_EED2Ev.exit6.i ]
  %i.v = load ptr, ptr %6, align 8, !tbaa !40     ; 3 uses
  %.not.i7 = icmp eq ptr %i.v, null
  br i1 %.not.i7, label %_ZNSt10unique_ptrIN7rocksdb10CompressorESt14default_deleteIS1_EED2Ev.exit9, label %_ZNKSt14default_deleteIN7rocksdb10CompressorEEclEPS1_.exit.i8

_ZNKSt14default_deleteIN7rocksdb10CompressorEEclEPS1_.exit.i8: ; preds = %.body
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !42
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8
  call void %i.y(ptr noundef nonnull align 8 dereferenceable(8) %i.v) #27, !inline_history !3
  br label %_ZNSt10unique_ptrIN7rocksdb10CompressorESt14default_deleteIS1_EED2Ev.exit9

_ZNSt10unique_ptrIN7rocksdb10CompressorESt14default_deleteIS1_EED2Ev.exit9: ; preds = %.body, %_ZNKSt14default_deleteIN7rocksdb10CompressorEEclEPS1_.exit.i8
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb19CostAwareCompressorC2ERKNS_18CompressionOptionsE(ptr noundef nonnull align 8 dereferenceable(112) initializes((0, 112)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(49) %1) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::shared_ptr.29", align 16 ; 7 uses
  %3 = alloca %"class.std::vector.47", align 16   ; 13 uses
  %4 = alloca %"struct.rocksdb::CompressionOptions", align 8 ; 6 uses
  %5 = alloca %"class.std::unique_ptr", align 8   ; 9 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN7rocksdb19CostAwareCompressorE, i64 16), ptr %0, align 8, !tbaa !42
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false), !tbaa.struct !47
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, i8 0, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.d = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN7rocksdb30GetBuiltinV2CompressionManagerEv()
          to label %bb.b unwind label %bb.l       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !59   ; 2 uses
  %i.h = load <2 x ptr>, ptr %i.d, align 8, !tbaa !68
  store <2 x ptr> %i.h, ptr %2, align 16, !tbaa !68
  %.not.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN7rocksdb18CompressionManagerEEC2ERKS2_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  %i.j = load i8, ptr @__libc_single_threaded, align 1, !tbaa !60
  %.not.i.i.i.i = icmp eq i8 %i.j, 0
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = load i32, ptr %i.i, align 4, !tbaa !43
  %i.l = add nsw i32 %i.k, 1
  store i32 %i.l, ptr %i.i, align 4, !tbaa !43
  br label %_ZNSt10shared_ptrIN7rocksdb18CompressionManagerEEC2ERKS2_.exit

bb.e:                                             ; preds = %bb.c
  %i.m = atomicrmw volatile add ptr %i.i, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN7rocksdb18CompressionManagerEEC2ERKS2_.exit

_ZNSt10shared_ptrIN7rocksdb18CompressionManagerEEC2ERKS2_.exit: ; preds = %bb.b, %bb.d, %bb.e
  %i.n = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN7rocksdb24GetSupportedCompressionsEv()
          to label %.preheader unwind label %bb.m ; 2 uses

.preheader:                                       ; preds = %_ZNSt10shared_ptrIN7rocksdb18CompressionManagerEEC2ERKS2_.exit
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdb19CostAwareCompressor18kCompressionLevelsE, i64 8), align 8, !tbaa !26
  %i.p = load ptr, ptr @_ZN7rocksdb19CostAwareCompressor18kCompressionLevelsE, align 8, !tbaa !25 ; 2 uses
  %.not = icmp eq ptr %i.o, %i.p
  br i1 %.not, label %._crit_edge84, label %.lr.ph83

.lr.ph83:                                         ; preds = %.preheader
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 8 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  br label %bb.n

._crit_edge84:                                    ; preds = %_ZNSt6vectorIS_ISt10unique_ptrIN7rocksdb10CompressorESt14default_deleteIS2_EESaIS5_EESaIS7_EE12emplace_backIJEEERS7_DpOT_.exit, %.preheader
  %i.y = load ptr, ptr %i.e, align 8, !tbaa !59   ; 8 uses
  %.not.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN7rocksdb18CompressionManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %._crit_edge84
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 4 uses
  %i.aa = load atomic i64, ptr %i.z acquire, align 8 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 4294967297
  %i.ac = trunc i64 %i.aa to i32                  ; 2 uses
  br i1 %i.ab, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.z, align 8, !tbaa !65
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  store i32 0, ptr %i.ad, align 4, !tbaa !66
  %i.ae = load ptr, ptr %i.y, align 8, !tbaa !42
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load ptr, ptr %i.af, align 8
  call void %i.ag(ptr noundef nonnull align 8 dereferenceable(16) %i.y) #27, !inline_history !7
  %i.ah = load ptr, ptr %i.y, align 8, !tbaa !42
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8
  call void %i.aj(ptr noundef nonnull align 8 dereferenceable(16) %i.y) #27, !inline_history !7
  br label %_ZNSt12__shared_ptrIN7rocksdb18CompressionManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.h:                                             ; preds = %bb.f
  %i.ak = load i8, ptr @__libc_single_threaded, align 1, !tbaa !60
  %.not.i.i.i25 = icmp eq i8 %i.ak, 0
  br i1 %.not.i.i.i25, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.al = add nsw i32 %i.ac, -1
  store i32 %i.al, ptr %i.z, align 8, !tbaa !43
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.am = atomicrmw volatile add ptr %i.z, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i = phi i32 [ %i.ac, %bb.i ], [ %i.am, %bb.j ]
  %i.an = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.an, label %bb.k, label %_ZNSt12__shared_ptrIN7rocksdb18CompressionManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !67

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.y) #27
  br label %_ZNSt12__shared_ptrIN7rocksdb18CompressionManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN7rocksdb18CompressionManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %._crit_edge84, %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  ret void

bb.l:                                             ; preds = %bb.a
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.m:                                             ; preds = %_ZNSt10shared_ptrIN7rocksdb18CompressionManagerEEC2ERKS2_.exit
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.n:                                             ; preds = %.lr.ph83, %_ZNSt6vectorIS_ISt10unique_ptrIN7rocksdb10CompressorESt14default_deleteIS2_EESaIS5_EESaIS7_EE12emplace_backIJEEERS7_DpOT_.exit
  %i.aq = phi ptr [ %i.p, %.lr.ph83 ], [ %i.ho, %_ZNSt6vectorIS_ISt10unique_ptrIN7rocksdb10CompressorESt14default_deleteIS2_EESaIS5_EESaIS7_EE12emplace_backIJEEERS7_DpOT_.exit ] ; 2 uses
  %storemerge81 = phi i64 [ 0, %.lr.ph83 ], [ %i.hm, %_ZNSt6vectorIS_ISt10unique_ptrIN7rocksdb10CompressorESt14default_deleteIS2_EESaIS5_EESaIS7_EE12emplace_backIJEEERS7_DpOT_.exit ] ; 4 uses
  %i.ar = trunc i64 %storemerge81 to i8
  %i.as = add i8 %i.ar, 1                         ; 10 uses
  %i.at = icmp eq i8 %i.as, 0
  br i1 %i.at, label %_ZNSt6vectorIS_ISt10unique_ptrIN7rocksdb10CompressorESt14default_deleteIS2_EESaIS5_EESaIS7_EE12emplace_backIJEEERS7_DpOT_.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.au = zext i8 %i.as to i64                    ; 3 uses
  %i.av = add nuw nsw i64 %i.au, 4294967295
  %6 = and i64 %i.av, 4294967295
  %i.aw = getelementptr inbounds nuw [24 x i8], ptr %i.aq, i64 %6 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !73
  %i.az = load ptr, ptr %i.aw, align 8, !tbaa !29
  %i.ba = icmp eq ptr %i.ay, %i.az
  br i1 %i.ba, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  %i.bb = load ptr, ptr %i.w, align 8, !tbaa !76  ; 3 uses
  %i.bc = load ptr, ptr %i.x, align 8, !tbaa !77
  %.not.i = icmp eq ptr %i.bb, %i.bc
  br i1 %.not.i, label %.invoke, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bb, i8 0, i64 24, i1 false)
  %i.bd = load ptr, ptr %i.w, align 8, !tbaa !76
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  store ptr %i.be, ptr %i.w, align 8, !tbaa !76
  br label %_ZNSt6vectorIS_ISt10unique_ptrIN7rocksdb10CompressorESt14default_deleteIS2_EESaIS5_EESaIS7_EE12emplace_backIJEEERS7_DpOT_.exit

bb.r:                                             ; preds = %.invoke
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.s:                                             ; preds = %bb.o
  %i.bg = load ptr, ptr %i.n, align 8, !tbaa !68  ; 4 uses
  %i.bh = load ptr, ptr %i.q, align 8, !tbaa !68  ; 3 uses
  %i.bi = ptrtoint ptr %i.bh to i64               ; 2 uses
  %i.bj = ptrtoint ptr %i.bg to i64               ; 2 uses
  %i.bk = sub i64 %i.bi, %i.bj                    ; 2 uses
  %i.bl = ashr i64 %i.bk, 2                       ; 2 uses
  %i.bm = icmp sgt i64 %i.bl, 0
  br i1 %i.bm, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.s
  %i.bn = and i64 %i.bk, -4
  %scevgep.i.i.i = getelementptr i8, ptr %i.bg, i64 %i.bn ; 2 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.x, %.lr.ph.i.i.i
  %.052.i.i.i = phi i64 [ %i.bl, %.lr.ph.i.i.i ], [ %i.ca, %bb.x ] ; 2 uses
  %.sroa.032.051.i.i.i = phi ptr [ %i.bg, %.lr.ph.i.i.i ], [ %i.bz, %bb.x ] ; 9 uses
  %i.bo = load i8, ptr %.sroa.032.051.i.i.i, align 1, !tbaa !62
  %i.bp = icmp eq i8 %i.bo, %i.as
  br i1 %i.bp, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKN7rocksdb15CompressionTypeESt6vectorIS3_SaIS3_EEEES3_ET_SA_SA_RKT0_.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 1
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !62
  %i.bs = icmp eq i8 %i.br, %i.as
  br i1 %i.bs, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKN7rocksdb15CompressionTypeESt6vectorIS3_SaIS3_EEEES3_ET_SA_SA_RKT0_.exit.loopexit.split.loop.exit127, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 2
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !62
  %i.bv = icmp eq i8 %i.bu, %i.as
  br i1 %i.bv, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKN7rocksdb15CompressionTypeESt6vectorIS3_SaIS3_EEEES3_ET_SA_SA_RKT0_.exit.loopexit.split.loop.exit125, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 3
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !62
  %i.by = icmp eq i8 %i.bx, %i.as
  br i1 %i.by, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKN7rocksdb15CompressionTypeESt6vectorIS3_SaIS3_EEEES3_ET_SA_SA_RKT0_.exit.loopexit.split.loop.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 4
  %i.ca = add nsw i64 %.052.i.i.i, -1
  %i.cb = icmp sgt i64 %.052.i.i.i, 1
  br i1 %i.cb, label %bb.t, label %._crit_edge.loopexit.i.i.i, !llvm.loop !144

._crit_edge.loopexit.i.i.i:                       ; preds = %bb.x
  %.pre59.i.i.i = ptrtoint ptr %scevgep.i.i.i to i64
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %bb.s
  %.pre-phi.i.i.i = phi i64 [ %.pre59.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.bj, %bb.s ]
  %.sroa.032.0.lcssa.i.i.i = phi ptr [ %scevgep.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.bg, %bb.s ] ; 5 uses
  %i.cc = sub i64 %i.bi, %.pre-phi.i.i.i
  switch i64 %i.cc, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKN7rocksdb15CompressionTypeESt6vectorIS3_SaIS3_EEEES3_ET_SA_SA_RKT0_.exit.thread [
    i64 3, label %bb.y
    i64 2, label %._crit_edge._crit_edge.i.i.i
    i64 1, label %._crit_edge._crit_edge57.i.i.i
  ]

bb.y:                                             ; preds = %._crit_edge.i.i.i
  %i.cd = load i8, ptr %.sroa.032.0.lcssa.i.i.i, align 1, !tbaa !62
  %i.ce = icmp eq i8 %i.cd, %i.as
  br i1 %i.ce, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKN7rocksdb15CompressionTypeESt6vectorIS3_SaIS3_EEEES3_ET_SA_SA_RKT0_.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa.i.i.i, i64 1
  br label %._crit_edge._crit_edge.i.i.i

._crit_edge._crit_edge.i.i.i:                     ; preds = %._crit_edge.i.i.i, %bb.z
  %.sroa.032.1.i.i.i = phi ptr [ %i.cf, %bb.z ], [ %.sroa.032.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.cg = load i8, ptr %.sroa.032.1.i.i.i, align 1, !tbaa !62
  %i.ch = icmp eq i8 %i.cg, %i.as
  br i1 %i.ch, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKN7rocksdb15CompressionTypeESt6vectorIS3_SaIS3_EEEES3_ET_SA_SA_RKT0_.exit, label %bb.aa

bb.aa:                                            ; preds = %._crit_edge._crit_edge.i.i.i
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i.i, i64 1
  br label %._crit_edge._crit_edge57.i.i.i

._crit_edge._crit_edge57.i.i.i:                   ; preds = %._crit_edge.i.i.i, %bb.aa
  %.sroa.032.2.i.i.i = phi ptr [ %i.ci, %bb.aa ], [ %.sroa.032.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 2 uses
  %i.cj = load i8, ptr %.sroa.032.2.i.i.i, align 1, !tbaa !62
  %i.ck = icmp eq i8 %i.cj, %i.as
  %spec.select.i.i.i = select i1 %i.ck, ptr %.sroa.032.2.i.i.i, ptr %i.bh
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKN7rocksdb15CompressionTypeESt6vectorIS3_SaIS3_EEEES3_ET_SA_SA_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKN7rocksdb15CompressionTypeESt6vectorIS3_SaIS3_EEEES3_ET_SA_SA_RKT0_.exit.loopexit.split.loop.exit: ; preds = %bb.w
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 3
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKN7rocksdb15CompressionTypeESt6vectorIS3_SaIS3_EEEES3_ET_SA_SA_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKN7rocksdb15CompressionTypeESt6vectorIS3_SaIS3_EEEES3_ET_SA_SA_RKT0_.exit.loopexit.split.loop.exit125: ; preds = %bb.v
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 2
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKN7rocksdb15CompressionTypeESt6vectorIS3_SaIS3_EEEES3_ET_SA_SA_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKN7rocksdb15CompressionTypeESt6vectorIS3_SaIS3_EEEES3_ET_SA_SA_RKT0_.exit.loopexit.split.loop.exit127: ; preds = %bb.u
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 1
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKN7rocksdb15CompressionTypeESt6vectorIS3_SaIS3_EEEES3_ET_SA_SA_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKN7rocksdb15CompressionTypeESt6vectorIS3_SaIS3_EEEES3_ET_SA_SA_RKT0_.exit: ; preds = %bb.t, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKN7rocksdb15CompressionTypeESt6vectorIS3_SaIS3_EEEES3_ET_SA_SA_RKT0_.exit.loopexit.split.loop.exit, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKN7rocksdb15CompressionTypeESt6vectorIS3_SaIS3_EEEES3_ET_SA_SA_RKT0_.exit.loopexit.split.loop.exit125, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKN7rocksdb15CompressionTypeESt6vectorIS3_SaIS3_EEEES3_ET_SA_SA_RKT0_.exit.loopexit.split.loop.exit127, %._crit_edge._crit_edge57.i.i.i, %._crit_edge._crit_edge.i.i.i, %bb.y
  %.sroa.08.0.in.sroa.speculated.i.i.i = phi ptr [ %.sroa.032.1.i.i.i, %._crit_edge._crit_edge.i.i.i ], [ %spec.select.i.i.i, %._crit_edge._crit_edge57.i.i.i ], [ %.sroa.032.0.lcssa.i.i.i, %bb.y ], [ %i.cn, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKN7rocksdb15CompressionTypeESt6vectorIS3_SaIS3_EEEES3_ET_SA_SA_RKT0_.exit.loopexit.split.loop.exit127 ], [ %i.cm, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKN7rocksdb15CompressionTypeESt6vectorIS3_SaIS3_EEEES3_ET_SA_SA_RKT0_.exit.loopexit.split.loop.exit125 ], [ %i.cl, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKN7rocksdb15CompressionTypeESt6vectorIS3_SaIS3_EEEES3_ET_SA_SA_RKT0_.exit.loopexit.split.loop.exit ], [ %.sroa.032.051.i.i.i, %bb.t ]
  %i.co = icmp eq ptr %.sroa.08.0.in.sroa.speculated.i.i.i, %i.bh
  br i1 %i.co, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKN7rocksdb15CompressionTypeESt6vectorIS3_SaIS3_EEEES3_ET_SA_SA_RKT0_.exit.thread, label %bb.ac

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKN7rocksdb15CompressionTypeESt6vectorIS3_SaIS3_EEEES3_ET_SA_SA_RKT0_.exit.thread: ; preds = %._crit_edge.i.i.i, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKN7rocksdb15CompressionTypeESt6vectorIS3_SaIS3_EEEES3_ET_SA_SA_RKT0_.exit
  %i.cp = load ptr, ptr %i.w, align 8, !tbaa !76  ; 3 uses
  %i.cq = load ptr, ptr %i.x, align 8, !tbaa !77
  %.not.i26 = icmp eq ptr %i.cp, %i.cq
  br i1 %.not.i26, label %.invoke, label %bb.ab

bb.ab:                                            ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKN7rocksdb15CompressionTypeESt6vectorIS3_SaIS3_EEEES3_ET_SA_SA_RKT0_.exit.thread
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cp, i8 0, i64 24, i1 false)
  %i.cr = load ptr, ptr %i.w, align 8, !tbaa !76
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 24
  store ptr %i.cs, ptr %i.w, align 8, !tbaa !76
  br label %_ZNSt6vectorIS_ISt10unique_ptrIN7rocksdb10CompressorESt14default_deleteIS2_EESaIS5_EESaIS7_EE12emplace_backIJEEERS7_DpOT_.exit

.invoke:                                          ; preds = %bb.p, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKN7rocksdb15CompressionTypeESt6vectorIS3_SaIS3_EEEES3_ET_SA_SA_RKT0_.exit.thread
  %i.ct = phi ptr [ %i.cp, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKN7rocksdb15CompressionTypeESt6vectorIS3_SaIS3_EEEES3_ET_SA_SA_RKT0_.exit.thread ], [ %i.bb, %bb.p ]
  invoke void @_ZNSt6vectorIS_ISt10unique_ptrIN7rocksdb10CompressorESt14default_deleteIS2_EESaIS5_EESaIS7_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr %i.ct)
          to label %_ZNSt6vectorIS_ISt10unique_ptrIN7rocksdb10CompressorESt14default_deleteIS2_EESaIS5_EESaIS7_EE12emplace_backIJEEERS7_DpOT_.exit unwind label %bb.r

bb.ac:                                            ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKN7rocksdb15CompressionTypeESt6vectorIS3_SaIS3_EEEES3_ET_SA_SA_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %7 = getelementptr [24 x i8], ptr %i.aq, i64 %i.au ; 2 uses
  %8 = getelementptr i8, ptr %7, i64 -24
  %9 = getelementptr i8, ptr %7, i64 -16
  %i.cu = load ptr, ptr %9, align 8, !tbaa !73
  %i.cv = load ptr, ptr %8, align 8, !tbaa !29    ; 2 uses
  %.not85 = icmp eq ptr %i.cu, %i.cv
  br i1 %.not85, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.ac
  %.pre = load ptr, ptr %2, align 16, !tbaa !72   ; 2 uses
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt6vectorISt4pairImmESaIS1_EE12emplace_backIJRmS5_EEERS1_DpOT_.exit, %bb.ac
  %i.cw = load ptr, ptr %i.w, align 8, !tbaa !76  ; 5 uses
  %i.cx = load ptr, ptr %i.x, align 8, !tbaa !77
  %.not.i.i30 = icmp eq ptr %i.cw, %i.cx
  br i1 %.not.i.i30, label %bb.ad, label %_ZSt8_DestroyIPSt10unique_ptrIN7rocksdb10CompressorESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.thread

_ZSt8_DestroyIPSt10unique_ptrIN7rocksdb10CompressorESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.thread: ; preds = %._crit_edge
  %i.cy = load <2 x ptr>, ptr %3, align 16, !tbaa !79
  store <2 x ptr> %i.cy, ptr %i.cw, align 8, !tbaa !79
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %i.da = load ptr, ptr %i.t, align 16, !tbaa !81
  store ptr %i.da, ptr %i.cz, align 8, !tbaa !81
  %i.db = getelementptr inbounds nuw i8, ptr %i.cw, i64 24
  store ptr %i.db, ptr %i.w, align 8, !tbaa !76
  br label %_ZNSt6vectorISt10unique_ptrIN7rocksdb10CompressorESt14default_deleteIS2_EESaIS5_EED2Ev.exit

bb.ad:                                            ; preds = %._crit_edge
  invoke void @_ZNSt6vectorIS_ISt10unique_ptrIN7rocksdb10CompressorESt14default_deleteIS2_EESaIS5_EESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr %i.cw, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %_ZNSt6vectorIS_ISt10unique_ptrIN7rocksdb10CompressorESt14default_deleteIS2_EESaIS5_EESaIS7_EE9push_backEOS7_.exit unwind label %bb.aq

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNSt6vectorISt4pairImmESaIS1_EE12emplace_backIJRmS5_EEERS1_DpOT_.exit
  %i.dc = phi ptr [ %i.gq, %_ZNSt6vectorISt4pairImmESaIS1_EE12emplace_backIJRmS5_EEERS1_DpOT_.exit ], [ %i.cv, %.lr.ph.preheader ]
  %storemerge1680 = phi i64 [ %i.gl, %_ZNSt6vectorISt4pairImmESaIS1_EE12emplace_backIJRmS5_EEERS1_DpOT_.exit ], [ 0, %.lr.ph.preheader ] ; 4 uses
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %storemerge1680
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false), !tbaa.struct !47
  store i32 %i.de, ptr %i.r, align 4, !tbaa !162
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  %i.df = load ptr, ptr %.pre, align 8, !tbaa !42
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 192
  %i.dh = load ptr, ptr %i.dg, align 8
  invoke void %i.dh(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %5, ptr noundef nonnull align 8 dereferenceable(48) %.pre, ptr noundef nonnull align 8 dereferenceable(49) %4, i8 noundef zeroext %i.as)
          to label %bb.ae unwind label %bb.am

bb.ae:                                            ; preds = %.lr.ph
  %i.di = load ptr, ptr %i.s, align 8, !tbaa !82  ; 6 uses
  %i.dj = load ptr, ptr %i.t, align 16, !tbaa !81
  %.not.i.i32 = icmp eq ptr %i.di, %i.dj
  br i1 %.not.i.i32, label %bb.af, label %_ZNSt6vectorISt10unique_ptrIN7rocksdb10CompressorESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorISt10unique_ptrIN7rocksdb10CompressorESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.ae
  %i.dk = load i64, ptr %5, align 8, !tbaa !40
  store i64 %i.dk, ptr %i.di, align 8, !tbaa !40
  %i.dl = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  store ptr %i.dl, ptr %i.s, align 8, !tbaa !82
  br label %_ZNSt10unique_ptrIN7rocksdb10CompressorESt14default_deleteIS1_EED2Ev.exit

bb.af:                                            ; preds = %bb.ae
  %i.dm = load ptr, ptr %3, align 16, !tbaa !83   ; 12 uses
  %i.dn = ptrtoint ptr %i.di to i64               ; 3 uses
  %i.do = ptrtoint ptr %i.dm to i64               ; 4 uses
  %i.dp = sub i64 %i.dn, %i.do                    ; 3 uses
  %i.dq = icmp eq i64 %i.dp, 9223372036854775800
  br i1 %i.dq, label %bb.ag, label %_ZNKSt6vectorISt10unique_ptrIN7rocksdb10CompressorESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i

bb.ag:                                            ; preds = %bb.af
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #30
          to label %.noexc47 unwind label %.loopexit.split-lp

.noexc47:                                         ; preds = %bb.ag
  unreachable

_ZNKSt6vectorISt10unique_ptrIN7rocksdb10CompressorESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.af
  %i.dr = ashr exact i64 %i.dp, 3                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.dr, i64 1)
  %i.ds = add nsw i64 %.sroa.speculated.i.i, %i.dr ; 2 uses
  %i.dt = icmp ult i64 %i.ds, %i.dr
  %i.du = call i64 @llvm.umin.i64(i64 %i.ds, i64 1152921504606846975)
  %i.dv = select i1 %i.dt, i64 1152921504606846975, i64 %i.du ; 3 uses
  %.not.i.i45 = icmp ne i64 %i.dv, 0
  call void @llvm.assume(i1 %.not.i.i45)
  %i.dw = shl nuw nsw i64 %i.dv, 3
  %i.dx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dw) #28
          to label %.noexc48 unwind label %.loopexit ; 12 uses

.noexc48:                                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN7rocksdb10CompressorESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 %i.dp
  %i.dz = load i64, ptr %5, align 8, !tbaa !40
  store i64 %i.dz, ptr %i.dy, align 8, !tbaa !40
  store ptr null, ptr %5, align 8, !tbaa !40
  %.not10.i.i.i.i = icmp eq ptr %i.dm, %i.di
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN7rocksdb10CompressorESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %iter.check

iter.check:                                       ; preds = %.noexc48
  %i.ea = add i64 %i.dn, -8
  %i.eb = sub i64 %i.ea, %i.do                    ; 3 uses
  %i.ec = lshr i64 %i.eb, 3
  %i.ed = add nuw nsw i64 %i.ec, 1                ; 5 uses
  %min.iters.check = icmp ult i64 %i.eb, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep = getelementptr i8, ptr %i.dx, i64 8
  %i.ee = add i64 %i.dn, -8
  %i.ef = sub i64 %i.ee, %i.do
  %i.eg = and i64 %i.ef, -8                       ; 2 uses
  %scevgep138 = getelementptr i8, ptr %scevgep, i64 %i.eg
  %scevgep139 = getelementptr i8, ptr %i.dm, i64 8
  %scevgep140 = getelementptr i8, ptr %scevgep139, i64 %i.eg
  %bound0 = icmp ult ptr %i.dx, %scevgep140
  %bound1 = icmp ult ptr %i.dm, %scevgep138
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check141 = icmp ult i64 %i.eb, 120
  br i1 %min.iters.check141, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.eh = and i64 %i.ed, 12
  %n.vec = and i64 %i.ed, 4611686018427387888     ; 4 uses
  %i.ei = shl i64 %n.vec, 3                       ; 2 uses
  %i.ej = getelementptr i8, ptr %i.dx, i64 %i.ei  ; 2 uses
  %i.ek = getelementptr i8, ptr %i.dm, i64 %i.ei
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.el = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.dx, i64 %i.el ; 4 uses
  %next.gep142 = getelementptr i8, ptr %i.dm, i64 %i.el ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !163)
  call void @llvm.experimental.noalias.scope.decl(metadata !164)
  %i.em = getelementptr i8, ptr %next.gep142, i64 32
  %i.en = getelementptr i8, ptr %next.gep142, i64 64
  %i.eo = getelementptr i8, ptr %next.gep142, i64 96
  %wide.load = load <4 x i64>, ptr %next.gep142, align 8, !tbaa !40, !alias.scope !165, !noalias !163
  %wide.load143 = load <4 x i64>, ptr %i.em, align 8, !tbaa !40, !alias.scope !165, !noalias !163
  %wide.load144 = load <4 x i64>, ptr %i.en, align 8, !tbaa !40, !alias.scope !165, !noalias !163
  %wide.load145 = load <4 x i64>, ptr %i.eo, align 8, !tbaa !40, !alias.scope !165, !noalias !163
  %i.ep = getelementptr i8, ptr %next.gep, i64 32
  %i.eq = getelementptr i8, ptr %next.gep, i64 64
  %i.er = getelementptr i8, ptr %next.gep, i64 96
  store <4 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !40, !alias.scope !166, !noalias !165
  store <4 x i64> %wide.load143, ptr %i.ep, align 8, !tbaa !40, !alias.scope !166, !noalias !165
  store <4 x i64> %wide.load144, ptr %i.eq, align 8, !tbaa !40, !alias.scope !166, !noalias !165
  store <4 x i64> %wide.load145, ptr %i.er, align 8, !tbaa !40, !alias.scope !166, !noalias !165
  %i.es = getelementptr i8, ptr %next.gep142, i64 32
  %i.et = getelementptr i8, ptr %next.gep142, i64 64
  %i.eu = getelementptr i8, ptr %next.gep142, i64 96
  store <4 x ptr> splat (ptr null), ptr %next.gep142, align 8, !tbaa !40, !alias.scope !165, !noalias !163
  store <4 x ptr> splat (ptr null), ptr %i.es, align 8, !tbaa !40, !alias.scope !165, !noalias !163
  store <4 x ptr> splat (ptr null), ptr %i.et, align 8, !tbaa !40, !alias.scope !165, !noalias !163
  store <4 x ptr> splat (ptr null), ptr %i.eu, align 8, !tbaa !40, !alias.scope !165, !noalias !163
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ev = icmp eq i64 %index.next, %n.vec
  br i1 %i.ev, label %middle.block, label %vector.body, !llvm.loop !151

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ed, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN7rocksdb10CompressorESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.eh, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.preheader, label %vec.epilog.ph, !prof !169

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec147 = and i64 %i.ed, 4611686018427387900  ; 3 uses
  %i.ew = shl i64 %n.vec147, 3                    ; 2 uses
  %i.ex = getelementptr i8, ptr %i.dx, i64 %i.ew  ; 2 uses
  %i.ey = getelementptr i8, ptr %i.dm, i64 %i.ew
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index148 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next152, %vec.epilog.vector.body ] ; 2 uses
  %i.ez = shl i64 %index148, 3                    ; 2 uses
  %next.gep149 = getelementptr i8, ptr %i.dx, i64 %i.ez
  %next.gep150 = getelementptr i8, ptr %i.dm, i64 %i.ez ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !163)
  call void @llvm.experimental.noalias.scope.decl(metadata !164)
  %wide.load151 = load <4 x i64>, ptr %next.gep150, align 8, !tbaa !40, !alias.scope !165, !noalias !163
  store <4 x i64> %wide.load151, ptr %next.gep149, align 8, !tbaa !40, !alias.scope !166, !noalias !165
  store <4 x ptr> splat (ptr null), ptr %next.gep150, align 8, !tbaa !40, !alias.scope !165, !noalias !163
  %index.next152 = add nuw i64 %index148, 4       ; 2 uses
  %i.fa = icmp eq i64 %index.next152, %n.vec147
  br i1 %i.fa, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !152

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n153 = icmp eq i64 %i.ed, %n.vec147
  br i1 %cmp.n153, label %_ZNSt6vectorISt10unique_ptrIN7rocksdb10CompressorESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.dx, %iter.check ], [ %i.dx, %vector.memcheck ], [ %i.ej, %vec.epilog.iter.check ], [ %i.ex, %vec.epilog.middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.dm, %iter.check ], [ %i.dm, %vector.memcheck ], [ %i.ek, %vec.epilog.iter.check ], [ %i.ey, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.fd, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.fc, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !163)
  call void @llvm.experimental.noalias.scope.decl(metadata !164)
  %i.fb = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !40, !alias.scope !164, !noalias !163
  store i64 %i.fb, ptr %.012.i.i.i.i, align 8, !tbaa !40, !alias.scope !163, !noalias !164
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !40, !alias.scope !164, !noalias !163
  %i.fc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i46 = icmp eq ptr %i.fc, %i.di
  br i1 %.not.i.i.i.i46, label %_ZNSt6vectorISt10unique_ptrIN7rocksdb10CompressorESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !153

_ZNSt6vectorISt10unique_ptrIN7rocksdb10CompressorESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %vec.epilog.middle.block, %.noexc48
  %.0.lcssa.i.i.i.i = phi ptr [ %i.dx, %.noexc48 ], [ %i.ex, %vec.epilog.middle.block ], [ %i.ej, %middle.block ], [ %i.fd, %.lr.ph.i.i.i.i ]
  %i.fe = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.dm, null
  br i1 %.not.i23.i, label %_ZNSt6vectorISt10unique_ptrIN7rocksdb10CompressorESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN7rocksdb10CompressorESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i
  %i.ff = load ptr, ptr %i.t, align 16, !tbaa !81
  %i.fg = ptrtoint ptr %i.ff to i64
  %i.fh = sub i64 %i.fg, %i.do
  call void @_ZdlPvm(ptr noundef nonnull %i.dm, i64 noundef %i.fh) #26
  br label %_ZNSt6vectorISt10unique_ptrIN7rocksdb10CompressorESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorISt10unique_ptrIN7rocksdb10CompressorESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN7rocksdb10CompressorESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, %bb.ah
  store ptr %i.dx, ptr %3, align 16, !tbaa !83
  store ptr %i.fe, ptr %i.s, align 8, !tbaa !82
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %i.dv
  store ptr %i.fi, ptr %i.t, align 16, !tbaa !81
  %.pr = load ptr, ptr %5, align 8, !tbaa !40     ; 3 uses
  %.not.i34 = icmp eq ptr %.pr, null
  br i1 %.not.i34, label %_ZNSt10unique_ptrIN7rocksdb10CompressorESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN7rocksdb10CompressorEEclEPS1_.exit.i

_ZNKSt14default_deleteIN7rocksdb10CompressorEEclEPS1_.exit.i: ; preds = %_ZNSt6vectorISt10unique_ptrIN7rocksdb10CompressorESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit
  %i.fj = load ptr, ptr %.pr, align 8, !tbaa !42
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  %i.fl = load ptr, ptr %i.fk, align 8
  call void %i.fl(ptr noundef nonnull align 8 dereferenceable(8) %.pr) #27, !inline_history !3
  br label %_ZNSt10unique_ptrIN7rocksdb10CompressorESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN7rocksdb10CompressorESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN7rocksdb10CompressorESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit.thread, %_ZNSt6vectorISt10unique_ptrIN7rocksdb10CompressorESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit, %_ZNKSt14default_deleteIN7rocksdb10CompressorEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  %i.fm = load ptr, ptr %i.u, align 8, !tbaa !170 ; 7 uses
  %i.fn = load ptr, ptr %i.v, align 8, !tbaa !86
  %.not.i35 = icmp eq ptr %i.fm, %i.fn
  br i1 %.not.i35, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt10unique_ptrIN7rocksdb10CompressorESt14default_deleteIS1_EED2Ev.exit
  store i64 %storemerge81, ptr %i.fm, align 8, !tbaa !172
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  store i64 %storemerge1680, ptr %i.fo, align 8, !tbaa !173
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  store ptr %i.fp, ptr %i.u, align 8, !tbaa !170
  br label %_ZNSt6vectorISt4pairImmESaIS1_EE12emplace_backIJRmS5_EEERS1_DpOT_.exit

bb.aj:                                            ; preds = %_ZNSt10unique_ptrIN7rocksdb10CompressorESt14default_deleteIS1_EED2Ev.exit
  %i.fq = load ptr, ptr %i.c, align 8, !tbaa !87  ; 5 uses
  %i.fr = ptrtoint ptr %i.fm to i64
  %i.fs = ptrtoint ptr %i.fq to i64               ; 2 uses
  %i.ft = sub i64 %i.fr, %i.fs                    ; 3 uses
  %i.fu = icmp eq i64 %i.ft, 9223372036854775792
  br i1 %i.fu, label %bb.ak, label %_ZNKSt6vectorISt4pairImmESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.ak:                                            ; preds = %bb.aj
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #30
          to label %.noexc37 unwind label %.loopexit.split-lp67

.noexc37:                                         ; preds = %bb.ak
  unreachable

_ZNKSt6vectorISt4pairImmESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.aj
  %i.fv = ashr exact i64 %i.ft, 4                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.fv, i64 1)
  %i.fw = add nsw i64 %.sroa.speculated.i.i.i, %i.fv ; 2 uses
  %i.fx = icmp ult i64 %i.fw, %i.fv
  %i.fy = call i64 @llvm.umin.i64(i64 %i.fw, i64 576460752303423487)
  %i.fz = select i1 %i.fx, i64 576460752303423487, i64 %i.fy ; 3 uses
  %.not.i.i.i36 = icmp ne i64 %i.fz, 0
  call void @llvm.assume(i1 %.not.i.i.i36)
  %i.ga = shl nuw nsw i64 %i.fz, 4
  %i.gb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ga) #28
          to label %.noexc38 unwind label %.loopexit66 ; 5 uses

.noexc38:                                         ; preds = %_ZNKSt6vectorISt4pairImmESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 %i.ft ; 2 uses
  store i64 %storemerge81, ptr %i.gc, align 8, !tbaa !172
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  store i64 %storemerge1680, ptr %i.gd, align 8, !tbaa !173
  %.not10.i.i.i.i.i = icmp eq ptr %i.fq, %i.fm
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt4pairImmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit23.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc38, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.gf, %.lr.ph.i.i.i.i.i ], [ %i.gb, %.noexc38 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ge, %.lr.ph.i.i.i.i.i ], [ %i.fq, %.noexc38 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i, i64 16, i1 false), !alias.scope !174
  %i.ge = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 16 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ge, %i.fm
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt4pairImmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit23.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !157

_ZNSt6vectorISt4pairImmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit23.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc38
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.gb, %.noexc38 ], [ %i.gf, %.lr.ph.i.i.i.i.i ]
  %i.gg = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 16
  %.not.i24.i.i = icmp eq ptr %i.fq, null
  br i1 %.not.i24.i.i, label %_ZNSt6vectorISt4pairImmESaIS1_EE17_M_realloc_insertIJRmS5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.al

bb.al:                                            ; preds = %_ZNSt6vectorISt4pairImmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit23.i.i
  %i.gh = load ptr, ptr %i.v, align 8, !tbaa !86
  %i.gi = ptrtoint ptr %i.gh to i64
  %i.gj = sub i64 %i.gi, %i.fs
  call void @_ZdlPvm(ptr noundef nonnull %i.fq, i64 noundef %i.gj) #26
  br label %_ZNSt6vectorISt4pairImmESaIS1_EE17_M_realloc_insertIJRmS5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorISt4pairImmESaIS1_EE17_M_realloc_insertIJRmS5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.al, %_ZNSt6vectorISt4pairImmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit23.i.i
  store ptr %i.gb, ptr %i.c, align 8, !tbaa !87
  store ptr %i.gg, ptr %i.u, align 8, !tbaa !170
  %i.gk = getelementptr inbounds nuw [16 x i8], ptr %i.gb, i64 %i.fz
  store ptr %i.gk, ptr %i.v, align 8, !tbaa !86
  br label %_ZNSt6vectorISt4pairImmESaIS1_EE12emplace_backIJRmS5_EEERS1_DpOT_.exit

_ZNSt6vectorISt4pairImmESaIS1_EE12emplace_backIJRmS5_EEERS1_DpOT_.exit: ; preds = %_ZNSt6vectorISt4pairImmESaIS1_EE17_M_realloc_insertIJRmS5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %i.gl = add nuw i64 %storemerge1680, 1          ; 2 uses
  %i.gm = load ptr, ptr @_ZN7rocksdb19CostAwareCompressor18kCompressionLevelsE, align 8, !tbaa !25
  %i.gn = getelementptr [24 x i8], ptr %i.gm, i64 %i.au ; 2 uses
  %10 = getelementptr i8, ptr %i.gn, i64 -24
  %i.go = getelementptr i8, ptr %i.gn, i64 -16
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !73
  %i.gq = load ptr, ptr %10, align 8, !tbaa !29   ; 2 uses
  %i.gr = ptrtoint ptr %i.gp to i64
  %i.gs = ptrtoint ptr %i.gq to i64
  %i.gt = sub i64 %i.gr, %i.gs
  %i.gu = ashr exact i64 %i.gt, 2
  %i.gv = icmp ult i64 %i.gl, %i.gu
  br i1 %i.gv, label %.lr.ph, label %._crit_edge, !llvm.loop !158

bb.am:                                            ; preds = %.lr.ph
  %i.gw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN7rocksdb10CompressorESt14default_deleteIS1_EED2Ev.exit41

.loopexit:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN7rocksdb10CompressorESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

.loopexit.split-lp:                               ; preds = %bb.ag
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.an:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.gx = load ptr, ptr %5, align 8, !tbaa !40    ; 3 uses
  %.not.i39 = icmp eq ptr %i.gx, null
  br i1 %.not.i39, label %_ZNSt10unique_ptrIN7rocksdb10CompressorESt14default_deleteIS1_EED2Ev.exit41, label %_ZNKSt14default_deleteIN7rocksdb10CompressorEEclEPS1_.exit.i40

_ZNKSt14default_deleteIN7rocksdb10CompressorEEclEPS1_.exit.i40: ; preds = %bb.an
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !42
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 8
  %i.ha = load ptr, ptr %i.gz, align 8
  call void %i.ha(ptr noundef nonnull align 8 dereferenceable(8) %i.gx) #27, !inline_history !3
  br label %_ZNSt10unique_ptrIN7rocksdb10CompressorESt14default_deleteIS1_EED2Ev.exit41

_ZNSt10unique_ptrIN7rocksdb10CompressorESt14default_deleteIS1_EED2Ev.exit41: ; preds = %_ZNKSt14default_deleteIN7rocksdb10CompressorEEclEPS1_.exit.i40, %bb.an, %bb.am
  %.pn = phi { ptr, i32 } [ %i.gw, %bb.am ], [ %lpad.phi, %bb.an ], [ %lpad.phi, %_ZNKSt14default_deleteIN7rocksdb10CompressorEEclEPS1_.exit.i40 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %bb.ao

.loopexit66:                                      ; preds = %_ZNKSt6vectorISt4pairImmESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit68 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

.loopexit.split-lp67:                             ; preds = %bb.ak
  %lpad.loopexit.split-lp69 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.ao:                                            ; preds = %.loopexit66, %.loopexit.split-lp67, %_ZNSt10unique_ptrIN7rocksdb10CompressorESt14default_deleteIS1_EED2Ev.exit41
  %.pn18 = phi { ptr, i32 } [ %.pn, %_ZNSt10unique_ptrIN7rocksdb10CompressorESt14default_deleteIS1_EED2Ev.exit41 ], [ %lpad.loopexit68, %.loopexit66 ], [ %lpad.loopexit.split-lp69, %.loopexit.split-lp67 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %bb.ar

_ZNSt6vectorIS_ISt10unique_ptrIN7rocksdb10CompressorESt14default_deleteIS2_EESaIS5_EESaIS7_EE9push_backEOS7_.exit: ; preds = %bb.ad
  %.pre91 = load ptr, ptr %3, align 16, !tbaa !83 ; 3 uses
  %.pre92 = load ptr, ptr %i.s, align 8, !tbaa !82 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %.pre91, %.pre92
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN7rocksdb10CompressorESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i42

.lr.ph.i.i.i42:                                   ; preds = %_ZNSt6vectorIS_ISt10unique_ptrIN7rocksdb10CompressorESt14default_deleteIS2_EESaIS5_EESaIS7_EE9push_backEOS7_.exit, %_ZSt8_DestroyISt10unique_ptrIN7rocksdb10CompressorESt14default_deleteIS2_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.hf, %_ZSt8_DestroyISt10unique_ptrIN7rocksdb10CompressorESt14default_deleteIS2_EEEvPT_.exit.i.i.i ], [ %.pre91, %_ZNSt6vectorIS_ISt10unique_ptrIN7rocksdb10CompressorESt14default_deleteIS2_EESaIS5_EESaIS7_EE9push_backEOS7_.exit ] ; 2 uses
  %i.hb = load ptr, ptr %.05.i.i.i, align 8, !tbaa !40 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.hb, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN7rocksdb10CompressorESt14default_deleteIS2_EEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIN7rocksdb10CompressorEEclEPS1_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN7rocksdb10CompressorEEclEPS1_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i42
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !42
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 8
  %i.he = load ptr, ptr %i.hd, align 8
  call void %i.he(ptr noundef nonnull align 8 dereferenceable(8) %i.hb) #27, !inline_history !159
  br label %_ZSt8_DestroyISt10unique_ptrIN7rocksdb10CompressorESt14default_deleteIS2_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10unique_ptrIN7rocksdb10CompressorESt14default_deleteIS2_EEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN7rocksdb10CompressorEEclEPS1_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i42
  %i.hf = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i43 = icmp eq ptr %i.hf, %.pre92
  br i1 %.not.i.i.i43, label %_ZSt8_DestroyIPSt10unique_ptrIN7rocksdb10CompressorESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i42, !llvm.loop !8

_ZSt8_DestroyIPSt10unique_ptrIN7rocksdb10CompressorESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN7rocksdb10CompressorESt14default_deleteIS2_EEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %3, align 16, !tbaa !83
  br label %_ZSt8_DestroyIPSt10unique_ptrIN7rocksdb10CompressorESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt10unique_ptrIN7rocksdb10CompressorESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN7rocksdb10CompressorESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorIS_ISt10unique_ptrIN7rocksdb10CompressorESt14default_deleteIS2_EESaIS5_EESaIS7_EE9push_backEOS7_.exit
  %i.hg = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt10unique_ptrIN7rocksdb10CompressorESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %.pre91, %_ZNSt6vectorIS_ISt10unique_ptrIN7rocksdb10CompressorESt14default_deleteIS2_EESaIS5_EESaIS7_EE9push_backEOS7_.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.hg, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10unique_ptrIN7rocksdb10CompressorESt14default_deleteIS2_EESaIS5_EED2Ev.exit, label %bb.ap

bb.ap:                                            ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN7rocksdb10CompressorESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i
  %i.hh = load ptr, ptr %i.t, align 16, !tbaa !81
  %i.hi = ptrtoint ptr %i.hh to i64
  %i.hj = ptrtoint ptr %i.hg to i64
  %i.hk = sub i64 %i.hi, %i.hj
  call void @_ZdlPvm(ptr noundef nonnull %i.hg, i64 noundef %i.hk) #26
  br label %_ZNSt6vectorISt10unique_ptrIN7rocksdb10CompressorESt14default_deleteIS2_EESaIS5_EED2Ev.exit

_ZNSt6vectorISt10unique_ptrIN7rocksdb10CompressorESt14default_deleteIS2_EESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN7rocksdb10CompressorESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.thread, %_ZSt8_DestroyIPSt10unique_ptrIN7rocksdb10CompressorESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %_ZNSt6vectorIS_ISt10unique_ptrIN7rocksdb10CompressorESt14default_deleteIS2_EESaIS5_EESaIS7_EE12emplace_backIJEEERS7_DpOT_.exit

bb.aq:                                            ; preds = %bb.ad
  %i.hl = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ao
  %.pn18.pn = phi { ptr, i32 } [ %.pn18, %bb.ao ], [ %i.hl, %bb.aq ]
  call void @_ZNSt6vectorISt10unique_ptrIN7rocksdb10CompressorESt14default_deleteIS2_EESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %bb.as

_ZNSt6vectorIS_ISt10unique_ptrIN7rocksdb10CompressorESt14default_deleteIS2_EESaIS5_EESaIS7_EE12emplace_backIJEEERS7_DpOT_.exit: ; preds = %.invoke, %bb.ab, %bb.q, %bb.n, %_ZNSt6vectorISt10unique_ptrIN7rocksdb10CompressorESt14default_deleteIS2_EESaIS5_EED2Ev.exit
  %i.hm = add nuw i64 %storemerge81, 1            ; 2 uses
  %i.hn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdb19CostAwareCompressor18kCompressionLevelsE, i64 8), align 8, !tbaa !26
  %i.ho = load ptr, ptr @_ZN7rocksdb19CostAwareCompressor18kCompressionLevelsE, align 8, !tbaa !25 ; 2 uses
  %i.hp = ptrtoint ptr %i.hn to i64
  %i.hq = ptrtoint ptr %i.ho to i64
  %i.hr = sub i64 %i.hp, %i.hq
  %i.hs = sdiv exact i64 %i.hr, 24
  %i.ht = icmp ult i64 %i.hm, %i.hs
  br i1 %i.ht, label %bb.n, label %._crit_edge84, !llvm.loop !160

bb.as:                                            ; preds = %bb.r, %bb.ar, %bb.m
  %.pn21.pn = phi { ptr, i32 } [ %i.ap, %bb.m ], [ %i.bf, %bb.r ], [ %.pn18.pn, %bb.ar ]
  call void @_ZNSt12__shared_ptrIN7rocksdb18CompressionManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #27
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.l
  %.pn21.pn.pn = phi { ptr, i32 } [ %.pn21.pn, %bb.as ], [ %i.ao, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  %i.hu = load ptr, ptr %i.c, align 8, !tbaa !87  ; 3 uses
  %.not.i.i.i44 = icmp eq ptr %i.hu, null
  br i1 %.not.i.i.i44, label %_ZNSt6vectorISt4pairImmESaIS1_EED2Ev.exit, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !86
  %i.hx = ptrtoint ptr %i.hw to i64
  %i.hy = ptrtoint ptr %i.hu to i64
  %i.hz = sub i64 %i.hx, %i.hy
  call void @_ZdlPvm(ptr noundef nonnull %i.hu, i64 noundef %i.hz) #26
  br label %_ZNSt6vectorISt4pairImmESaIS1_EED2Ev.exit

_ZNSt6vectorISt4pairImmESaIS1_EED2Ev.exit:        ; preds = %bb.at, %bb.au
  call void @_ZNSt6vectorIS_ISt10unique_ptrIN7rocksdb10CompressorESt14default_deleteIS2_EESaIS5_EESaIS7_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.b) #27
  resume { ptr, i32 } %.pn21.pn.pn
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN7rocksdb30GetBuiltinV2CompressionManagerEv() local_unnamed_addr #8

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZN7rocksdb24GetSupportedCompressionsEv() local_unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorISt10unique_ptrIN7rocksdb10CompressorESt14default_deleteIS2_EESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !83     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !82   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN7rocksdb10CompressorESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt10unique_ptrIN7rocksdb10CompressorESt14default_deleteIS2_EEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.h, %_ZSt8_DestroyISt10unique_ptrIN7rocksdb10CompressorESt14default_deleteIS2_EEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !40 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN7rocksdb10CompressorESt14default_deleteIS2_EEEvPT_.exit.i.i, label %_ZNKSt14default_deleteIN7rocksdb10CompressorEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN7rocksdb10CompressorEEclEPS1_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !42
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(8) %i.d) #27, !inline_history !175
  br label %_ZSt8_DestroyISt10unique_ptrIN7rocksdb10CompressorESt14default_deleteIS2_EEEvPT_.exit.i.i

_ZSt8_DestroyISt10unique_ptrIN7rocksdb10CompressorESt14default_deleteIS2_EEEvPT_.exit.i.i: ; preds = %_ZNKSt14default_deleteIN7rocksdb10CompressorEEclEPS1_.exit.i.i.i.i.i, %.lr.ph.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN7rocksdb10CompressorESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !8

_ZSt8_DestroyIPSt10unique_ptrIN7rocksdb10CompressorESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt10unique_ptrIN7rocksdb10CompressorESt14default_deleteIS2_EEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !83
  br label %_ZSt8_DestroyIPSt10unique_ptrIN7rocksdb10CompressorESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit

_ZSt8_DestroyIPSt10unique_ptrIN7rocksdb10CompressorESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN7rocksdb10CompressorESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.i = phi ptr [ %.pr, %_ZSt8_DestroyIPSt10unique_ptrIN7rocksdb10CompressorESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.i, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt10unique_ptrIN7rocksdb10CompressorESt14default_deleteIS2_EESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN7rocksdb10CompressorESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !81
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #26
  br label %_ZNSt12_Vector_baseISt10unique_ptrIN7rocksdb10CompressorESt14default_deleteIS2_EESaIS5_EED2Ev.exit

_ZNSt12_Vector_baseISt10unique_ptrIN7rocksdb10CompressorESt14default_deleteIS2_EESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN7rocksdb10CompressorESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit, %bb.b
  ret void
}
end_hunk_0
