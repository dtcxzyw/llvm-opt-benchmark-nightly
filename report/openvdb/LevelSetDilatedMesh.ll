Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openvdb/original/LevelSetDilatedMesh?download=true
inline.NumInlined: 79535
inline.NumDeleted: 25229
loop-unroll.NumCompletelyUnrolled: 202
loop-unroll.NumRuntimeUnrolled: 278
loop-unroll.NumUnrolled: 951
begin_hunk_0_@_ZN7openvdb5v13_05tools26point_partitioner_internal9partitionIjsNS1_6lvlset10PointArrayINS0_4math4Vec3IfEEEEEEvRKT1_RKNS6_9TransformEjRSt10unique_ptrIA_T_St14default_deleteISI_EESM_RSG_IA_NS6_5CoordESJ_ISO_EERSH_RSG_IA_T0_SJ_ISU_EEbb:bb.a
  call void @_ZdaPv(ptr noundef nonnull %i.iv) #31
  br label %_ZNKSt14default_deleteIN7openvdb5v13_05tools26point_partitioner_internal5ArrayIjEEEclEPS5_.exit.i.i.i

_ZNKSt14default_deleteIN7openvdb5v13_05tools26point_partitioner_internal5ArrayIjEEEclEPS5_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i, %bb.ar
  call void @_ZdlPvm(ptr noundef nonnull %i.it, i64 noundef 16) #31
  br label %_ZNSt10unique_ptrIN7openvdb5v13_05tools26point_partitioner_internal5ArrayIjEESt14default_deleteIS5_EED2Ev.exit.i.i

_ZNSt10unique_ptrIN7openvdb5v13_05tools26point_partitioner_internal5ArrayIjEESt14default_deleteIS5_EED2Ev.exit.i.i: ; preds = %_ZNKSt14default_deleteIN7openvdb5v13_05tools26point_partitioner_internal5ArrayIjEEEclEPS5_.exit.i.i.i, %.preheader.i.i116
  %i.iw = icmp eq ptr %i.is, %i.im
  br i1 %i.iw, label %_ZNKSt14default_deleteIA_St10unique_ptrIN7openvdb5v13_05tools26point_partitioner_internal5ArrayIjEES_IS6_EEEclIS8_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS9_EE5valueEvE4typeEPSD_.exit.i, label %.preheader.i.i116

_ZNKSt14default_deleteIA_St10unique_ptrIN7openvdb5v13_05tools26point_partitioner_internal5ArrayIjEES_IS6_EEEclIS8_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS9_EE5valueEvE4typeEPSD_.exit.i: ; preds = %_ZNSt10unique_ptrIN7openvdb5v13_05tools26point_partitioner_internal5ArrayIjEESt14default_deleteIS5_EED2Ev.exit.i.i, %bb.aq
  %i.ix = add i64 %.idx.i.i114, 8
  call void @_ZdaPvm(ptr noundef nonnull %i.in, i64 noundef %i.ix) #31
  br label %_ZNSt10unique_ptrIA_S_IN7openvdb5v13_05tools26point_partitioner_internal5ArrayIjEESt14default_deleteIS5_EES6_IS9_EED2Ev.exit

_ZNSt10unique_ptrIA_S_IN7openvdb5v13_05tools26point_partitioner_internal5ArrayIjEESt14default_deleteIS5_EES6_IS9_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIA_S_IA_jSt14default_deleteIS0_EES1_IS4_EED2Ev.exit112, %_ZNKSt14default_deleteIA_St10unique_ptrIN7openvdb5v13_05tools26point_partitioner_internal5ArrayIjEES_IS6_EEEclIS8_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS9_EE5valueEvE4typeEPSD_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24
  %i.iy = load ptr, ptr %14, align 8, !tbaa !2049 ; 4 uses
  %.not.i118 = icmp eq ptr %i.iy, null
  br i1 %.not.i118, label %_ZNSt10unique_ptrIA_S_IN7openvdb5v13_05tools26point_partitioner_internal5ArrayIjEESt14default_deleteIS5_EES6_IS9_EED2Ev.exit128, label %bb.as

bb.as:                                            ; preds = %_ZNSt10unique_ptrIA_S_IN7openvdb5v13_05tools26point_partitioner_internal5ArrayIjEESt14default_deleteIS5_EES6_IS9_EED2Ev.exit
  %i.iz = getelementptr inbounds i8, ptr %i.iy, i64 -8 ; 2 uses
  %i.ja = load i64, ptr %i.iz, align 8            ; 2 uses
  %.idx.i.i119 = shl i64 %i.ja, 3                 ; 2 uses
  %i.jb = icmp eq i64 %i.ja, 0
  br i1 %i.jb, label %_ZNKSt14default_deleteIA_St10unique_ptrIN7openvdb5v13_05tools26point_partitioner_internal5ArrayIjEES_IS6_EEEclIS8_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS9_EE5valueEvE4typeEPSD_.exit.i127, label %.preheader.preheader.i.i120

.preheader.preheader.i.i120:                      ; preds = %bb.as
  %i.jc = getelementptr inbounds i8, ptr %i.iy, i64 %.idx.i.i119
  br label %.preheader.i.i121

.preheader.i.i121:                                ; preds = %_ZNSt10unique_ptrIN7openvdb5v13_05tools26point_partitioner_internal5ArrayIjEESt14default_deleteIS5_EED2Ev.exit.i.i126, %.preheader.preheader.i.i120
  %i.jd = phi ptr [ %i.je, %_ZNSt10unique_ptrIN7openvdb5v13_05tools26point_partitioner_internal5ArrayIjEESt14default_deleteIS5_EED2Ev.exit.i.i126 ], [ %i.jc, %.preheader.preheader.i.i120 ]
  %i.je = getelementptr inbounds i8, ptr %i.jd, i64 -8 ; 3 uses
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !2057 ; 3 uses
  %.not.i.i.i122 = icmp eq ptr %i.jf, null
  br i1 %.not.i.i.i122, label %_ZNSt10unique_ptrIN7openvdb5v13_05tools26point_partitioner_internal5ArrayIjEESt14default_deleteIS5_EED2Ev.exit.i.i126, label %bb.at

bb.at:                                            ; preds = %.preheader.i.i121
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 8
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !1971 ; 2 uses
  %.not.i.i.i.i.i.i123 = icmp eq ptr %i.jh, null
  br i1 %.not.i.i.i.i.i.i123, label %_ZNKSt14default_deleteIN7openvdb5v13_05tools26point_partitioner_internal5ArrayIjEEEclEPS5_.exit.i.i.i125, label %_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i124

_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i124: ; preds = %bb.at
  call void @_ZdaPv(ptr noundef nonnull %i.jh) #31
  br label %_ZNKSt14default_deleteIN7openvdb5v13_05tools26point_partitioner_internal5ArrayIjEEEclEPS5_.exit.i.i.i125

_ZNKSt14default_deleteIN7openvdb5v13_05tools26point_partitioner_internal5ArrayIjEEEclEPS5_.exit.i.i.i125: ; preds = %_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i124, %bb.at
  call void @_ZdlPvm(ptr noundef nonnull %i.jf, i64 noundef 16) #31
  br label %_ZNSt10unique_ptrIN7openvdb5v13_05tools26point_partitioner_internal5ArrayIjEESt14default_deleteIS5_EED2Ev.exit.i.i126

_ZNSt10unique_ptrIN7openvdb5v13_05tools26point_partitioner_internal5ArrayIjEESt14default_deleteIS5_EED2Ev.exit.i.i126: ; preds = %_ZNKSt14default_deleteIN7openvdb5v13_05tools26point_partitioner_internal5ArrayIjEEEclEPS5_.exit.i.i.i125, %.preheader.i.i121
  %i.ji = icmp eq ptr %i.je, %i.iy
  br i1 %i.ji, label %_ZNKSt14default_deleteIA_St10unique_ptrIN7openvdb5v13_05tools26point_partitioner_internal5ArrayIjEES_IS6_EEEclIS8_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS9_EE5valueEvE4typeEPSD_.exit.i127, label %.preheader.i.i121

_ZNKSt14default_deleteIA_St10unique_ptrIN7openvdb5v13_05tools26point_partitioner_internal5ArrayIjEES_IS6_EEEclIS8_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS9_EE5valueEvE4typeEPSD_.exit.i127: ; preds = %_ZNSt10unique_ptrIN7openvdb5v13_05tools26point_partitioner_internal5ArrayIjEESt14default_deleteIS5_EED2Ev.exit.i.i126, %bb.as
  %i.jj = add i64 %.idx.i.i119, 8
  call void @_ZdaPvm(ptr noundef nonnull %i.iz, i64 noundef %i.jj) #31
  br label %_ZNSt10unique_ptrIA_S_IN7openvdb5v13_05tools26point_partitioner_internal5ArrayIjEESt14default_deleteIS5_EES6_IS9_EED2Ev.exit128

_ZNSt10unique_ptrIA_S_IN7openvdb5v13_05tools26point_partitioner_internal5ArrayIjEESt14default_deleteIS5_EES6_IS9_EED2Ev.exit128: ; preds = %_ZNSt10unique_ptrIA_S_IN7openvdb5v13_05tools26point_partitioner_internal5ArrayIjEESt14default_deleteIS5_EES6_IS9_EED2Ev.exit, %_ZNKSt14default_deleteIA_St10unique_ptrIN7openvdb5v13_05tools26point_partitioner_internal5ArrayIjEES_IS6_EEEclIS8_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS9_EE5valueEvE4typeEPSD_.exit.i127
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24
  %i.jk = load ptr, ptr %13, align 8, !tbaa !2046 ; 3 uses
  %.not.i.i.i129 = icmp eq ptr %i.jk, null
  br i1 %.not.i.i.i129, label %_ZNSt6vectorIN7openvdb5v13_04math5CoordESaIS3_EED2Ev.exit, label %bb.au

bb.au:                                            ; preds = %_ZNSt10unique_ptrIA_S_IN7openvdb5v13_05tools26point_partitioner_internal5ArrayIjEESt14default_deleteIS5_EES6_IS9_EED2Ev.exit128
  %i.jl = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !2072
  %i.jn = ptrtoint ptr %i.jm to i64
  %i.jo = ptrtoint ptr %i.jk to i64
  %i.jp = sub i64 %i.jn, %i.jo
  call void @_ZdlPvm(ptr noundef nonnull %i.jk, i64 noundef %i.jp) #31
  br label %_ZNSt6vectorIN7openvdb5v13_04math5CoordESaIS3_EED2Ev.exit

_ZNSt6vectorIN7openvdb5v13_04math5CoordESaIS3_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIA_S_IN7openvdb5v13_05tools26point_partitioner_internal5ArrayIjEESt14default_deleteIS5_EES6_IS9_EED2Ev.exit128, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  ret void

bb.av:                                            ; preds = %._crit_edge192
  %i.jq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.aw:                                            ; preds = %_ZNSt10unique_ptrIA_N7openvdb5v13_04math5CoordESt14default_deleteIS4_EE5resetIPS3_vEEvT_.exit
  %i.jr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #24
  br label %bb.ay

bb.ax:                                            ; preds = %bb.ak
  %i.js = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #24
  br label %bb.ay

bb.ay:                                            ; preds = %.loopexit156, %.loopexit.split-lp, %bb.av, %bb.aw, %bb.ax
  %.sroa.0.0170 = phi ptr [ %.sroa.0.0.lcssa, %bb.av ], [ %.sroa.0.0.lcssa, %bb.aw ], [ %.sroa.0.0.lcssa, %bb.ax ], [ %.sroa.0.0186, %.loopexit156 ], [ %.sroa.0.0186, %.loopexit.split-lp ] ; 3 uses
  %.sroa.18.0166 = phi ptr [ %.sroa.18.0.lcssa, %bb.av ], [ %.sroa.18.0.lcssa, %bb.aw ], [ %.sroa.18.0.lcssa, %bb.ax ], [ %.sroa.18.0188, %.loopexit156 ], [ %.sroa.18.0188, %.loopexit.split-lp ]
  %.pn.pn = phi { ptr, i32 } [ %i.jq, %bb.av ], [ %i.jr, %bb.aw ], [ %i.js, %bb.ax ], [ %lpad.loopexit, %.loopexit156 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %.not.i.i.i130 = icmp eq ptr %.sroa.0.0170, null
  br i1 %.not.i.i.i130, label %_ZNSt6vectorIPjSaIS0_EED2Ev.exit131, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.jt = ptrtoint ptr %.sroa.18.0166 to i64
  %i.ju = ptrtoint ptr %.sroa.0.0170 to i64
  %i.jv = sub i64 %i.jt, %i.ju
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0170, i64 noundef %i.jv) #31
  br label %_ZNSt6vectorIPjSaIS0_EED2Ev.exit131

_ZNSt6vectorIPjSaIS0_EED2Ev.exit131:              ; preds = %.loopexit157, %.loopexit.split-lp158, %bb.az, %bb.ay, %.thread, %bb.ad, %bb.r
  %.pn73 = phi { ptr, i32 } [ %.pn.pn, %bb.az ], [ %i.cd, %bb.r ], [ %i.gb, %bb.ad ], [ %i.gc, %.thread ], [ %.pn.pn, %bb.ay ], [ %lpad.loopexit159, %.loopexit157 ], [ %lpad.loopexit.split-lp160, %.loopexit.split-lp158 ]
  %i.jw = load ptr, ptr %20, align 8, !tbaa !1953 ; 3 uses
  %.not.i.i.i132 = icmp eq ptr %i.jw, null
  br i1 %.not.i.i.i132, label %_ZNSt6vectorIjSaIjEED2Ev.exit133, label %bb.ba

bb.ba:                                            ; preds = %_ZNSt6vectorIPjSaIS0_EED2Ev.exit131
  %i.jx = getelementptr inbounds nuw i8, ptr %20, i64 16
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !1954
  %i.jz = ptrtoint ptr %i.jy to i64
  %i.ka = ptrtoint ptr %i.jw to i64
  %i.kb = sub i64 %i.jz, %i.ka
  call void @_ZdlPvm(ptr noundef nonnull %i.jw, i64 noundef %i.kb) #31
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit133

_ZNSt6vectorIjSaIjEED2Ev.exit133:                 ; preds = %_ZNSt6vectorIPjSaIS0_EED2Ev.exit131, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #24
  br label %bb.bb

bb.bb:                                            ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit133, %bb.q
  %.pn73.pn = phi { ptr, i32 } [ %.pn73, %_ZNSt6vectorIjSaIjEED2Ev.exit133 ], [ %i.cc, %bb.q ]
  call void @_ZNSt10unique_ptrIA_S_IA_jSt14default_deleteIS0_EES1_IS4_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %18) #24
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.p
  %.pn73.pn.pn = phi { ptr, i32 } [ %.pn73.pn, %bb.bb ], [ %i.cb, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #24
  call void @_ZNSt10unique_ptrIA_S_IA_jSt14default_deleteIS0_EES1_IS4_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %17) #24
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.o
  %.pn73.pn.pn.pn = phi { ptr, i32 } [ %.pn73.pn.pn, %bb.bc ], [ %i.ca, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #24
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.n
  %.pn73.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn73.pn.pn.pn, %bb.bd ], [ %i.bz, %bb.n ]
  call void @_ZNSt10unique_ptrIA_S_IN7openvdb5v13_05tools26point_partitioner_internal5ArrayIjEESt14default_deleteIS5_EES6_IS9_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24
  call void @_ZNSt10unique_ptrIA_S_IN7openvdb5v13_05tools26point_partitioner_internal5ArrayIjEESt14default_deleteIS5_EES6_IS9_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %14) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24
  %i.kc = load ptr, ptr %13, align 8, !tbaa !2046 ; 3 uses
  %.not.i.i.i134 = icmp eq ptr %i.kc, null
  br i1 %.not.i.i.i134, label %_ZNSt6vectorIN7openvdb5v13_04math5CoordESaIS3_EED2Ev.exit135, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.kd = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !2072
  %i.kf = ptrtoint ptr %i.ke to i64
  %i.kg = ptrtoint ptr %i.kc to i64
  %i.kh = sub i64 %i.kf, %i.kg
  call void @_ZdlPvm(ptr noundef nonnull %i.kc, i64 noundef %i.kh) #31
  br label %_ZNSt6vectorIN7openvdb5v13_04math5CoordESaIS3_EED2Ev.exit135

_ZNSt6vectorIN7openvdb5v13_04math5CoordESaIS3_EED2Ev.exit135: ; preds = %bb.be, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  resume { ptr, i32 } %.pn73.pn.pn.pn.pn
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_05tools26point_partitioner_internal13binAndSegmentIjsNS1_6lvlset10PointArrayINS0_4math4Vec3IfEEEEEEvRKT1_RKNS6_9TransformERSt10unique_ptrIA_NS2_5ArrayIT_E3PtrESt14default_deleteISL_EESP_RSt6vectorINS6_5CoordESaISR_EEjjPT0_b(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, i32 noundef %5, i32 noundef %6, ptr noundef %7, i1 noundef zeroext %8) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.tbb::detail::d1::auto_partitioner", align 1 ; 3 uses
  %10 = alloca %"class.tbb::detail::d1::task_group_context", align 8 ; 12 uses
  %11 = alloca %"class.tbb::detail::d1::auto_partitioner", align 1 ; 3 uses
  %12 = alloca %"class.std::unique_ptr.1128", align 8 ; 9 uses
  %13 = alloca %"class.tbb::detail::d1::blocked_range.803", align 8 ; 10 uses
  %14 = alloca %"struct.openvdb::v13_0::tools::point_partitioner_internal::BinPointIndicesOp", align 8 ; 14 uses
  %15 = alloca %"class.std::set", align 8         ; 11 uses
  %16 = alloca %"class.tbb::detail::d1::blocked_range.803", align 8 ; 10 uses
  %17 = alloca %"struct.openvdb::v13_0::tools::point_partitioner_internal::MergeBinsOp", align 8 ; 9 uses
  %i.a = tail call noundef i32 @_ZN3tbb6detail2r115max_concurrencyEPKNS0_2d115task_arena_baseE(ptr noundef null)
  %i.b = sext i32 %i.a to i64                     ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !2042, !nonnull !789, !align !844 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1854
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !1791
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = sdiv exact i64 %i.i, 12                  ; 2 uses
  %i.k = shl nsw i64 %i.b, 1                      ; 2 uses
  %i.l = icmp ugt i64 %i.j, %i.k
  br i1 %i.l, label %bb.b, label %18

18:                                               ; preds = %bb.a
  %19 = icmp ugt i64 %i.j, %i.b
  br i1 %19, label %bb.b, label %.thread

.thread:                                          ; preds = %18
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24
  br label %.thread92

bb.b:                                             ; preds = %18, %bb.a
  %.0 = phi i64 [ %i.k, %bb.a ], [ %i.b, %18 ]    ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24
  %i.m = icmp ugt i64 %.0, 1152921504606846975
  br i1 %i.m, label %.thread92, label %select.unfold

.thread92:                                        ; preds = %.thread, %bb.b
  %.090.ph = phi i64 [ 1, %.thread ], [ %.0, %bb.b ] ; 3 uses
  %.ph = phi i64 [ 24, %.thread ], [ -1, %bb.b ]
  %i.n = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %.ph) #30 ; 2 uses
  store i64 %.090.ph, ptr %i.n, align 16
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.pre106 = shl nsw i64 %.090.ph, 4
  br label %.split41

select.unfold:                                    ; preds = %bb.b
  %i.p = shl nuw nsw i64 %.0, 4                   ; 2 uses
  %i.q = or disjoint i64 %i.p, 8
  %i.r = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.q) #30 ; 2 uses
  store i64 %.0, ptr %i.r, align 16
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 3 uses
  %i.t = icmp eq i64 %.0, 0
  br i1 %i.t, label %.split, label %.split41

.split:                                           ; preds = %select.unfold
  store ptr %i.s, ptr %12, align 8, !tbaa !2074
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24
  %i.u = getelementptr inbounds nuw i8, ptr %13, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %13, i8 0, i64 16, i1 false)
  store i64 1, ptr %i.u, align 8, !tbaa !1781
  br label %bb.c

.split41:                                         ; preds = %.thread92, %select.unfold
  %.pre-phi = phi i64 [ %.pre106, %.thread92 ], [ %i.p, %select.unfold ]
  %i.v = phi ptr [ %i.o, %.thread92 ], [ %i.s, %select.unfold ] ; 3 uses
  %.09195 = phi i64 [ %.090.ph, %.thread92 ], [ %.0, %select.unfold ] ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.v, i8 0, i64 %.pre-phi, i1 false)
  store ptr %i.v, ptr %12, align 8, !tbaa !2074
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24
  store i64 %.09195, ptr %13, align 8, !tbaa !1779
  %i.w = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 0, ptr %i.w, align 8, !tbaa !1780
  %i.x = getelementptr inbounds nuw i8, ptr %13, i64 16
  store i64 1, ptr %i.x, align 8, !tbaa !1781
  br label %bb.c

bb.c:                                             ; preds = %.split41, %.split
  %i.y = phi ptr [ %i.v, %.split41 ], [ %i.s, %.split ]
  %.09194 = phi i64 [ %.09195, %.split41 ], [ 0, %.split ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #24
  store ptr %i.y, ptr %14, align 8, !tbaa !2081
  %i.z = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %0, ptr %i.z, align 8, !tbaa !2082
  %i.aa = getelementptr inbounds nuw i8, ptr %14, i64 16
  store ptr %7, ptr %i.aa, align 8, !tbaa !2083
  %i.ab = getelementptr inbounds nuw i8, ptr %14, i64 24
  invoke void @_ZN7openvdb5v13_04math9TransformC1ERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %bb.d unwind label %bb.p

bb.d:                                             ; preds = %bb.c
  %i.ac = zext i1 %8 to i8
  %i.ad = getelementptr inbounds nuw i8, ptr %14, i64 40
  store i32 %5, ptr %i.ad, align 8, !tbaa !2084
  %i.ae = getelementptr inbounds nuw i8, ptr %14, i64 44
  store i32 %6, ptr %i.ae, align 4, !tbaa !2085
  %i.af = getelementptr inbounds nuw i8, ptr %14, i64 48
  store i64 %.09194, ptr %i.af, align 8, !tbaa !2086
  %i.ag = getelementptr inbounds nuw i8, ptr %14, i64 56
  store i8 %i.ac, ptr %i.ag, align 8, !tbaa !2087
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  %i.ah = getelementptr inbounds nuw i8, ptr %10, i64 12
  store i8 1, ptr %i.ah, align 4, !tbaa !1997
  %i.ai = getelementptr inbounds nuw i8, ptr %10, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, i8 0, i64 16, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %10, i64 64
  store i64 1, ptr %i.aj, align 8, !tbaa !1998
  %i.ak = getelementptr inbounds nuw i8, ptr %10, i64 13
  store i8 4, ptr %i.ak, align 1, !tbaa !768
  invoke void @_ZN3tbb6detail2r110initializeERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %10)
          to label %.noexc unwind label %bb.q

.noexc:                                           ; preds = %bb.d
  invoke void @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools26point_partitioner_internal17BinPointIndicesOpINS7_6lvlset10PointArrayINS6_4math4Vec3IfEEEEjsEEKNS1_16auto_partitionerEE3runERKS4_RKSG_RSI_RNS1_18task_group_contextE(ptr noundef nonnull align 8 dereferenceable(24) %13, ptr noundef nonnull align 8 dereferenceable(57) %14, ptr noundef nonnull align 1 dereferenceable(1) %11, ptr noundef nonnull align 8 dereferenceable(128) %10)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %.noexc
  %i.al = getelementptr inbounds nuw i8, ptr %10, i64 15
  %i.am = load atomic i8, ptr %i.al monotonic, align 1
  %i.an = icmp eq i8 %i.am, -1
  br i1 %i.an, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN3tbb6detail2r17destroyERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %10)
          to label %bb.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ao = landingpad { ptr, i32 }
          catch ptr null
  %i.ap = extractvalue { ptr, i32 } %i.ao, 0
  call void @__clang_call_terminate(ptr %i.ap) #33
  unreachable

bb.h:                                             ; preds = %.noexc
  %i.aq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3tbb6detail2d118task_group_contextD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %10) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  br label %.body

bb.i:                                             ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  %i.ar = getelementptr inbounds nuw i8, ptr %14, i64 32
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !786 ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i.i, label %_ZN7openvdb5v13_05tools26point_partitioner_internal17BinPointIndicesOpINS1_6lvlset10PointArrayINS0_4math4Vec3IfEEEEjsED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 4 uses
  %i.au = load atomic i64, ptr %i.at acquire, align 8 ; 2 uses
  %i.av = icmp eq i64 %i.au, 4294967297
  %i.aw = trunc i64 %i.au to i32                  ; 2 uses
  br i1 %i.av, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.at, align 8, !tbaa !798
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 12
  store i32 0, ptr %i.ax, align 4, !tbaa !799
  %i.ay = load ptr, ptr %i.as, align 8, !tbaa !743
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = load ptr, ptr %i.az, align 8
  call void %i.ba(ptr noundef nonnull align 8 dereferenceable(16) %i.as) #24, !inline_history !133
  %i.bb = load ptr, ptr %i.as, align 8, !tbaa !743
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8
  call void %i.bd(ptr noundef nonnull align 8 dereferenceable(16) %i.as) #24, !inline_history !133
  br label %_ZN7openvdb5v13_05tools26point_partitioner_internal17BinPointIndicesOpINS1_6lvlset10PointArrayINS0_4math4Vec3IfEEEEjsED2Ev.exit

bb.l:                                             ; preds = %bb.j
  %i.be = load i8, ptr @__libc_single_threaded, align 1, !tbaa !768
  %.not.i.i.i.i.i = icmp eq i8 %i.be, 0
  br i1 %.not.i.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bf = add nsw i32 %i.aw, -1
  store i32 %i.bf, ptr %i.at, align 8, !tbaa !741
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.bg = atomicrmw volatile add ptr %i.at, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i.i.i = phi i32 [ %i.aw, %bb.m ], [ %i.bg, %bb.n ]
  %i.bh = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.bh, label %bb.o, label %_ZN7openvdb5v13_05tools26point_partitioner_internal17BinPointIndicesOpINS1_6lvlset10PointArrayINS0_4math4Vec3IfEEEEjsED2Ev.exit, !prof !800

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.as) #24
  br label %_ZN7openvdb5v13_05tools26point_partitioner_internal17BinPointIndicesOpINS1_6lvlset10PointArrayINS0_4math4Vec3IfEEEEjsED2Ev.exit

_ZN7openvdb5v13_05tools26point_partitioner_internal17BinPointIndicesOpINS1_6lvlset10PointArrayINS0_4math4Vec3IfEEEEjsED2Ev.exit: ; preds = %bb.i, %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #24
  %i.bi = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 10 uses
  store i32 0, ptr %i.bi, align 8, !tbaa !812
  %i.bj = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 5 uses
  store ptr null, ptr %i.bj, align 8, !tbaa !813
  %i.bk = getelementptr inbounds nuw i8, ptr %15, i64 24 ; 4 uses
  store ptr %i.bi, ptr %i.bk, align 8, !tbaa !814
  %i.bl = getelementptr inbounds nuw i8, ptr %15, i64 32 ; 2 uses
  store ptr %i.bi, ptr %i.bl, align 8, !tbaa !815
  %i.bm = getelementptr inbounds nuw i8, ptr %15, i64 40 ; 4 uses
  store i64 0, ptr %i.bm, align 8, !tbaa !816
  %.not104 = icmp eq i64 %.09194, 0
  br i1 %.not104, label %._crit_edge103, label %.lr.ph102

._crit_edge103.loopexit:                          ; preds = %._crit_edge
  %.pre = load ptr, ptr %i.bk, align 8, !tbaa !814
  br label %._crit_edge103

._crit_edge103:                                   ; preds = %._crit_edge103.loopexit, %_ZN7openvdb5v13_05tools26point_partitioner_internal17BinPointIndicesOpINS1_6lvlset10PointArrayINS0_4math4Vec3IfEEEEjsED2Ev.exit
  %i.bn = phi ptr [ %.pre, %._crit_edge103.loopexit ], [ %i.bi, %_ZN7openvdb5v13_05tools26point_partitioner_internal17BinPointIndicesOpINS1_6lvlset10PointArrayINS0_4math4Vec3IfEEEEjsED2Ev.exit ]
  invoke void @_ZNSt6vectorIN7openvdb5v13_04math5CoordESaIS3_EE13_M_assign_auxISt23_Rb_tree_const_iteratorIS3_EEEvT_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr %i.bn, ptr nonnull %i.bi)
          to label %_ZNSt6vectorIN7openvdb5v13_04math5CoordESaIS3_EE6assignISt23_Rb_tree_const_iteratorIS3_EvEEvT_S9_.exit unwind label %bb.ba

bb.p:                                             ; preds = %bb.c
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.q:                                             ; preds = %bb.d
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.h, %bb.q
  %eh.lpad-body = phi { ptr, i32 } [ %i.bp, %bb.q ], [ %i.aq, %bb.h ]
  call void @_ZN7openvdb5v13_05tools26point_partitioner_internal17BinPointIndicesOpINS1_6lvlset10PointArrayINS0_4math4Vec3IfEEEEjsED2Ev(ptr noundef nonnull align 8 dead_on_return(57) dereferenceable(57) %14) #24
  br label %bb.r

bb.r:                                             ; preds = %.body, %bb.p
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.bo, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  br label %bb.be

.lr.ph102:                                        ; preds = %_ZN7openvdb5v13_05tools26point_partitioner_internal17BinPointIndicesOpINS1_6lvlset10PointArrayINS0_4math4Vec3IfEEEEjsED2Ev.exit, %._crit_edge
  %.040101 = phi i64 [ %i.bw, %._crit_edge ], [ 0, %_ZN7openvdb5v13_05tools26point_partitioner_internal17BinPointIndicesOpINS1_6lvlset10PointArrayINS0_4math4Vec3IfEEEEjsED2Ev.exit ] ; 2 uses
  %i.bq = load ptr, ptr %12, align 8, !tbaa !2074
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %i.bq, i64 %.040101
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !2090 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !814 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 8 ; 2 uses
  %.not98 = icmp eq ptr %i.bu, %i.bv
  br i1 %.not98, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.af, %.lr.ph102
  %i.bw = add nuw i64 %.040101, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.bw, %.09194
  br i1 %exitcond.not, label %._crit_edge103.loopexit, label %.lr.ph102, !llvm.loop !6223

.lr.ph:                                           ; preds = %.lr.ph102, %bb.af
  %.sroa.086.099 = phi ptr [ %i.ee, %bb.af ], [ %i.bu, %.lr.ph102 ] ; 8 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.086.099, i64 32 ; 4 uses
  %.02126.i.i = load ptr, ptr %i.bj, align 8, !tbaa !902 ; 2 uses
  %.not27.i.i = icmp eq ptr %.02126.i.i, null
  br i1 %.not27.i.i, label %._crit_edge.thread.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !741 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.086.099, i64 36
  %i.ca = load i32, ptr %i.bz, align 4            ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.086.099, i64 40
end_hunk_0
