Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lief/original/BinaryParser?download=true
inline.NumInlined: 15251
inline.NumDeleted: 5384
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 35
loop-unroll.NumUnrolled: 40
begin_hunk_0_@_ZN4LIEF5MachO12BinaryParser13process_fixupINS0_7details7MachO64EEENS_10ok_error_tERNS0_14SegmentCommandEmmRKNS3_30dyld_chained_starts_in_segmentE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %18)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  store i64 %i.n, ptr %20, align 8, !tbaa !253
  %i.q = load i64, ptr %i.a, align 8, !tbaa !118
  %i.r = trunc i64 %i.q to i32
  %i.s = call i64 @_ZN4LIEF5MachO12BinaryParser16do_chained_fixupERNS0_14SegmentCommandEmjRKNS0_7details30dyld_chained_starts_in_segmentERKNS4_23dyld_chained_ptr_arm64eE(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef nonnull align 8 dereferenceable(216) %1, i64 noundef %2, i32 noundef %i.r, ptr noundef nonnull align 1 dereferenceable(22) %4, ptr noundef nonnull align 8 dereferenceable(8) %20) ; 2 uses
  %.not102 = icmp samesign ult i64 %i.s, 4294967296
  br i1 %.not102, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.t = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.142) #26
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.v = load ptr, ptr %i.t, align 8, !tbaa !173
  call void @llvm.lifetime.start.p0(ptr nonnull %17)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %17, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKmEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.v, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %17, i32 noundef 3, ptr nonnull @.str.374, i64 34, ptr noundef nonnull align 8 dereferenceable(32) %i.u, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %17)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.sroa.081.2 = phi i64 [ 1, %bb.c ], [ %i.s, %bb.e ], [ 0, %bb.d ]
  %.sroa.11.2 = phi i64 [ 0, %bb.c ], [ 0, %bb.e ], [ 4294967296, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #26
  br label %bb.v

bb.g:                                             ; preds = %bb.a, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #26
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !254  ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 3 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !331
  store i64 %3, ptr %i.y, align 8, !tbaa !331
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #26
  store i64 0, ptr %16, align 8
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !117
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 96
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = call i64 %i.ac(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull %16, i64 noundef %3, i64 noundef 8, i64 noundef 0) #26, !inline_history !93
  %i.ae = and i64 %i.ad, 4294967296
  %.not.not.i.i35 = icmp eq i64 %i.ae, 0
  %i.af = load i64, ptr %16, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  store i64 %i.z, ptr %i.y, align 8, !tbaa !331
  br i1 %.not.not.i.i35, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ag = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.142) #26
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !173
  call void @llvm.lifetime.start.p0(ptr nonnull %15)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRKmEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.ah, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %15, i32 noundef 4, ptr nonnull @.str.373, i64 34, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  store i64 %i.af, ptr %21, align 8, !tbaa !253
  %i.ai = load i64, ptr %i.a, align 8, !tbaa !118
  %i.aj = trunc i64 %i.ai to i32
  %i.ak = call i64 @_ZN4LIEF5MachO12BinaryParser16do_chained_fixupERNS0_14SegmentCommandEmjRKNS0_7details30dyld_chained_starts_in_segmentERKNS4_26dyld_chained_ptr_generic64E(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef nonnull align 8 dereferenceable(216) %1, i64 noundef %2, i32 noundef %i.aj, ptr noundef nonnull align 1 dereferenceable(22) %4, ptr noundef nonnull align 8 dereferenceable(8) %21) ; 2 uses
  %.not99 = icmp samesign ult i64 %i.ak, 4294967296
  br i1 %.not99, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.al = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.142) #26
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.an = load ptr, ptr %i.al, align 8, !tbaa !173
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKmEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.an, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %14, i32 noundef 3, ptr nonnull @.str.374, i64 34, ptr noundef nonnull align 8 dereferenceable(32) %i.am, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %.sroa.081.5 = phi i64 [ 1, %bb.h ], [ %i.ak, %bb.j ], [ 0, %bb.i ]
  %.sroa.11.5 = phi i64 [ 0, %bb.h ], [ 0, %bb.j ], [ 4294967296, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #26
  br label %bb.v

bb.l:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #26
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !254 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 3 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !331
  store i64 %3, ptr %i.aq, align 8, !tbaa !331
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  store i32 0, ptr %13, align 4
  %i.as = load ptr, ptr %i.ap, align 8, !tbaa !117
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 96
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = call i64 %i.au(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, ptr noundef nonnull %13, i64 noundef %3, i64 noundef 4, i64 noundef 0) #26, !inline_history !94
  %i.aw = and i64 %i.av, 4294967296
  %.not.i.i = icmp eq i64 %i.aw, 0
  %i.ax = load i32, ptr %13, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  store i64 %i.ar, ptr %i.aq, align 8, !tbaa !331
  br i1 %.not.i.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ay = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.142) #26
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !173
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRKmEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.az, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %12, i32 noundef 4, ptr nonnull @.str.373, i64 34, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  br label %bb.p

bb.n:                                             ; preds = %bb.l
  store i32 %i.ax, ptr %22, align 4, !tbaa !253
  %i.ba = load i64, ptr %i.a, align 8, !tbaa !118
  %i.bb = trunc i64 %i.ba to i32
  %i.bc = call i64 @_ZN4LIEF5MachO12BinaryParser16do_chained_fixupERNS0_14SegmentCommandEmjRKNS0_7details30dyld_chained_starts_in_segmentERKNS4_26dyld_chained_ptr_generic32E(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef nonnull align 8 dereferenceable(216) %1, i64 noundef %2, i32 noundef %i.bb, ptr noundef nonnull align 1 dereferenceable(22) %4, ptr noundef nonnull align 4 dereferenceable(4) %22) ; 2 uses
  %.not96 = icmp samesign ult i64 %i.bc, 4294967296
  br i1 %.not96, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bd = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.142) #26
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bf = load ptr, ptr %i.bd, align 8, !tbaa !173
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKmEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.bf, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %11, i32 noundef 3, ptr nonnull @.str.374, i64 34, ptr noundef nonnull align 8 dereferenceable(32) %i.be, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m
  %.sroa.081.8 = phi i64 [ 1, %bb.m ], [ %i.bc, %bb.o ], [ 0, %bb.n ]
  %.sroa.11.8 = phi i64 [ 0, %bb.m ], [ 0, %bb.o ], [ 4294967296, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #26
  br label %bb.v

bb.q:                                             ; preds = %bb.a, %bb.a, %bb.a
  %i.bg = zext nneg i16 %i.d to i32
  %i.bh = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.142) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  %i.bi = tail call noundef ptr @_ZN4LIEF5MachO9to_stringENS0_23DYLD_CHAINED_PTR_FORMATE(i32 noundef %i.bg) #26
  store ptr %i.bi, ptr %i.b, align 8, !tbaa !260
  %i.bj = load ptr, ptr %i.bh, align 8, !tbaa !173
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRKPKcEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.bj, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %10, i32 noundef 2, ptr nonnull @.str.375, i64 105, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  br label %bb.v

bb.r:                                             ; preds = %bb.a
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !254 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 3 uses
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !331
  store i64 %3, ptr %i.bm, align 8, !tbaa !331
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  store i64 0, ptr %9, align 8
  %i.bo = load ptr, ptr %i.bl, align 8, !tbaa !117
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 96
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = call i64 %i.bq(ptr noundef nonnull align 8 dereferenceable(24) %i.bl, ptr noundef nonnull %9, i64 noundef %3, i64 noundef 8, i64 noundef 0) #26, !inline_history !95
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  store i64 %i.bn, ptr %i.bm, align 8, !tbaa !331
  %i.bs = and i64 %i.br, 4294967296
  %.not = icmp eq i64 %i.bs, 0
  %i.bt = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.142) #26
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !173 ; 2 uses
  br i1 %.not, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRKmEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.bu, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %8, i32 noundef 4, ptr nonnull @.str.373, i64 34, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %bb.v

bb.t:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.bu, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %7, i32 noundef 4, ptr nonnull @.str.6, i64 41)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.bv = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.142) #26
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bx = load ptr, ptr %i.bv, align 8, !tbaa !173
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKmEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.bx, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %6, i32 noundef 3, ptr nonnull @.str.374, i64 34, ptr noundef nonnull align 8 dereferenceable(32) %i.bw, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %bb.v

bb.u:                                             ; preds = %bb.a
  %i.by = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.142) #26
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !173
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  tail call void @_ZN6spdlog6logger4log_IJRKtEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.bz, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %5, i32 noundef 4, ptr nonnull @.str.376, i64 31, ptr noundef nonnull align 2 dereferenceable(2) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.s, %bb.u, %bb.q, %bb.p, %bb.k, %bb.f
  %.sroa.081.12 = phi i64 [ 4, %bb.u ], [ %.sroa.081.2, %bb.f ], [ %.sroa.081.5, %bb.k ], [ %.sroa.081.8, %bb.p ], [ 3, %bb.q ], [ 4, %bb.t ], [ 1, %bb.s ]
  %.sroa.11.12 = phi i64 [ 0, %bb.u ], [ %.sroa.11.2, %bb.f ], [ %.sroa.11.5, %bb.k ], [ %.sroa.11.8, %bb.p ], [ 0, %bb.q ], [ 0, %bb.t ], [ 0, %bb.s ]
  %.sroa.11.0.insert.ext = and i64 %.sroa.11.12, 1095216660480
  %.sroa.081.0.insert.ext = and i64 %.sroa.081.12, 4294967295
  %.sroa.081.0.insert.insert = or disjoint i64 %.sroa.11.0.insert.ext, %.sroa.081.0.insert.ext
  ret i64 %.sroa.081.0.insert.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { i64, i8 } @_ZN4LIEF5MachO12BinaryParser10next_chainINS0_7details7MachO64EEENS_6resultImEERmmRKNS3_30dyld_chained_starts_in_segmentE(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %2, ptr noundef nonnull align 1 dereferenceable(22) %3) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %4 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %5 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %6 = alloca %"struct.LIEF::MachO::details::dyld_chained_ptr_arm64e_segmented_rebase", align 8 ; 5 uses
  %7 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %8 = alloca %"struct.LIEF::MachO::details::dyld_chained_ptr_firm32", align 4 ; 5 uses
  %9 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %10 = alloca %"struct.LIEF::MachO::details::dyld_chained_ptr_kernel64", align 8 ; 5 uses
  %11 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %12 = alloca %"union.LIEF::MachO::details::dyld_chained_ptr_generic32", align 4 ; 5 uses
  %13 = alloca %"union.LIEF::MachO::details::dyld_chained_ptr_generic32", align 4 ; 5 uses
  %14 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %15 = alloca %"union.LIEF::MachO::details::dyld_chained_ptr_generic32", align 4 ; 5 uses
  %16 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %17 = alloca %"union.LIEF::MachO::details::dyld_chained_ptr_generic64", align 8 ; 5 uses
  %18 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %19 = alloca %"union.LIEF::MachO::details::dyld_chained_ptr_arm64e", align 8 ; 5 uses
  %i.a = alloca i64, align 8                      ; 19 uses
  store i64 %2, ptr %i.a, align 8, !tbaa !118
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 6 ; 2 uses
  %i.c = load i16, ptr %i.b, align 1, !tbaa !112  ; 2 uses
  switch i16 %i.c, label %bb.c [
    i16 11, label %_ZN4LIEF5MachO22ChainedPointerAnalysis6strideENS0_23DYLD_CHAINED_PTR_FORMATE.exit.thread
    i16 1, label %_ZN4LIEF5MachO22ChainedPointerAnalysis6strideENS0_23DYLD_CHAINED_PTR_FORMATE.exit
    i16 9, label %_ZN4LIEF5MachO22ChainedPointerAnalysis6strideENS0_23DYLD_CHAINED_PTR_FORMATE.exit
    i16 12, label %_ZN4LIEF5MachO22ChainedPointerAnalysis6strideENS0_23DYLD_CHAINED_PTR_FORMATE.exit
    i16 13, label %_ZN4LIEF5MachO22ChainedPointerAnalysis6strideENS0_23DYLD_CHAINED_PTR_FORMATE.exit
    i16 7, label %bb.b
    i16 10, label %bb.b
    i16 5, label %bb.b
    i16 2, label %bb.b
    i16 6, label %bb.b
    i16 3, label %bb.b
    i16 4, label %bb.b
    i16 8, label %bb.b
    i16 14, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  br label %_ZN4LIEF5MachO22ChainedPointerAnalysis6strideENS0_23DYLD_CHAINED_PTR_FORMATE.exit

bb.c:                                             ; preds = %bb.a
  br label %_ZN4LIEF5MachO22ChainedPointerAnalysis6strideENS0_23DYLD_CHAINED_PTR_FORMATE.exit

_ZN4LIEF5MachO22ChainedPointerAnalysis6strideENS0_23DYLD_CHAINED_PTR_FORMATE.exit: ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.b, %bb.c
  %.0.i = phi i64 [ 0, %bb.c ], [ 8, %bb.a ], [ 4, %bb.b ], [ 8, %bb.a ], [ 8, %bb.a ], [ 8, %bb.a ] ; 7 uses
  switch i16 %i.c, label %bb.ae [
    i16 1, label %bb.d
    i16 7, label %bb.d
    i16 9, label %bb.d
    i16 12, label %bb.d
    i16 10, label %bb.d
    i16 2, label %bb.h
    i16 6, label %bb.h
    i16 3, label %bb.l
    i16 8, label %_ZN4LIEF5MachO22ChainedPointerAnalysis6strideENS0_23DYLD_CHAINED_PTR_FORMATE.exit.thread
    i16 11, label %_ZN4LIEF5MachO22ChainedPointerAnalysis6strideENS0_23DYLD_CHAINED_PTR_FORMATE.exit.thread
    i16 5, label %bb.w
    i16 14, label %bb.aa
  ]

bb.d:                                             ; preds = %_ZN4LIEF5MachO22ChainedPointerAnalysis6strideENS0_23DYLD_CHAINED_PTR_FORMATE.exit, %_ZN4LIEF5MachO22ChainedPointerAnalysis6strideENS0_23DYLD_CHAINED_PTR_FORMATE.exit, %_ZN4LIEF5MachO22ChainedPointerAnalysis6strideENS0_23DYLD_CHAINED_PTR_FORMATE.exit, %_ZN4LIEF5MachO22ChainedPointerAnalysis6strideENS0_23DYLD_CHAINED_PTR_FORMATE.exit, %_ZN4LIEF5MachO22ChainedPointerAnalysis6strideENS0_23DYLD_CHAINED_PTR_FORMATE.exit
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !254  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !331
  store i64 %2, ptr %i.f, align 8, !tbaa !331
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #26
  store i64 0, ptr %19, align 8
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !117
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 96
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = call i64 %i.j(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull %19, i64 noundef %2, i64 noundef 8, i64 noundef 0) #26, !inline_history !92
  %i.l = and i64 %i.k, 4294967296
  %.not.not.i.i = icmp eq i64 %i.l, 0
  %i.m = load i64, ptr %19, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  store i64 %i.g, ptr %i.f, align 8, !tbaa !331
  br i1 %.not.not.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.n = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.142) #26
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !173
  call void @llvm.lifetime.start.p0(ptr nonnull %18)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRKmEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.o, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %18, i32 noundef 4, ptr nonnull @.str.373, i64 34, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %18)
  br label %.loopexit

bb.f:                                             ; preds = %bb.d
  %i.p = lshr i64 %i.m, 51
  %i.q = and i64 %i.p, 2047                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = mul nuw nsw i64 %i.q, %.0.i              ; 2 uses
  %i.t = load i64, ptr %1, align 8, !tbaa !118
  %i.u = add i64 %i.t, %i.s
  store i64 %i.u, ptr %1, align 8, !tbaa !118
  %i.v = load i64, ptr %i.a, align 8, !tbaa !118
  %i.w = add i64 %i.v, %i.s                       ; 2 uses
  %.sroa.23.0.extract.shift = and i64 %i.w, -4294967296
  br label %.loopexit

bb.h:                                             ; preds = %_ZN4LIEF5MachO22ChainedPointerAnalysis6strideENS0_23DYLD_CHAINED_PTR_FORMATE.exit, %_ZN4LIEF5MachO22ChainedPointerAnalysis6strideENS0_23DYLD_CHAINED_PTR_FORMATE.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !254  ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 3 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !331
  store i64 %2, ptr %i.z, align 8, !tbaa !331
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #26
  store i64 0, ptr %17, align 8
  %i.ab = load ptr, ptr %i.y, align 8, !tbaa !117
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 96
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = call i64 %i.ad(ptr noundef nonnull align 8 dereferenceable(24) %i.y, ptr noundef nonnull %17, i64 noundef %2, i64 noundef 8, i64 noundef 0) #26, !inline_history !93
  %i.af = and i64 %i.ae, 4294967296
  %.not.not.i.i89 = icmp eq i64 %i.af, 0
  %i.ag = load i64, ptr %17, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  store i64 %i.aa, ptr %i.z, align 8, !tbaa !331
  br i1 %.not.not.i.i89, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ah = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.142) #26
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !173
  call void @llvm.lifetime.start.p0(ptr nonnull %16)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %16, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRKmEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.ai, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %16, i32 noundef 4, ptr nonnull @.str.373, i64 34, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %16)
  br label %.loopexit

bb.j:                                             ; preds = %bb.h
  %i.aj = lshr i64 %i.ag, 51
  %i.ak = and i64 %i.aj, 4095                     ; 2 uses
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.am = mul nuw nsw i64 %i.ak, %.0.i            ; 2 uses
  %i.an = load i64, ptr %1, align 8, !tbaa !118
  %i.ao = add i64 %i.an, %i.am
  store i64 %i.ao, ptr %1, align 8, !tbaa !118
  %i.ap = load i64, ptr %i.a, align 8, !tbaa !118
  %i.aq = add i64 %i.ap, %i.am                    ; 2 uses
  %.sroa.23.0.extract.shift153 = and i64 %i.aq, -4294967296
  br label %.loopexit

bb.l:                                             ; preds = %_ZN4LIEF5MachO22ChainedPointerAnalysis6strideENS0_23DYLD_CHAINED_PTR_FORMATE.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !254 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 3 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !331
  store i64 %2, ptr %i.at, align 8, !tbaa !331
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #26
  store i32 0, ptr %15, align 4
  %i.av = load ptr, ptr %i.as, align 8, !tbaa !117
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 96
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = call i64 %i.ax(ptr noundef nonnull align 8 dereferenceable(24) %i.as, ptr noundef nonnull %15, i64 noundef %2, i64 noundef 4, i64 noundef 0) #26, !inline_history !94
  %i.az = and i64 %i.ay, 4294967296
  %.not.i.i = icmp eq i64 %i.az, 0
  %i.ba = load i32, ptr %15, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  store i64 %i.au, ptr %i.at, align 8, !tbaa !331
  br i1 %.not.i.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bb = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.142) #26
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !173
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRKmEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.bc, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %14, i32 noundef 4, ptr nonnull @.str.373, i64 34, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  br label %.loopexit

bb.n:                                             ; preds = %bb.l
  %i.bd = lshr i32 %i.ba, 26
  %i.be = and i32 %i.bd, 31                       ; 2 uses
  %i.bf = icmp eq i32 %i.be, 0
  br i1 %i.bf, label %.loopexit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bg = trunc nuw nsw i64 %.0.i to i32          ; 2 uses
  %i.bh = mul nuw nsw i32 %i.be, %i.bg
  %i.bi = zext nneg i32 %i.bh to i64              ; 2 uses
  %i.bj = load i64, ptr %i.a, align 8, !tbaa !118
  %i.bk = add i64 %i.bj, %i.bi                    ; 3 uses
  store i64 %i.bk, ptr %i.a, align 8, !tbaa !118
  %i.bl = load i64, ptr %1, align 8, !tbaa !118
  %i.bm = add i64 %i.bl, %i.bi
  store i64 %i.bm, ptr %1, align 8, !tbaa !118
  %i.bn = load ptr, ptr %i.ar, align 8, !tbaa !254 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN4LIEF5MachO12BinaryParser13process_fixupINS0_7details7MachO32EEENS_10ok_error_tERNS0_14SegmentCommandEmmRKNS3_30dyld_chained_starts_in_segmentE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %18)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  store i64 %i.n, ptr %20, align 8, !tbaa !253
  %i.q = load i64, ptr %i.a, align 8, !tbaa !118
  %i.r = trunc i64 %i.q to i32
  %i.s = call i64 @_ZN4LIEF5MachO12BinaryParser16do_chained_fixupERNS0_14SegmentCommandEmjRKNS0_7details30dyld_chained_starts_in_segmentERKNS4_23dyld_chained_ptr_arm64eE(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef nonnull align 8 dereferenceable(216) %1, i64 noundef %2, i32 noundef %i.r, ptr noundef nonnull align 1 dereferenceable(22) %4, ptr noundef nonnull align 8 dereferenceable(8) %20) ; 2 uses
  %.not102 = icmp samesign ult i64 %i.s, 4294967296
  br i1 %.not102, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.t = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.142) #26
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.v = load ptr, ptr %i.t, align 8, !tbaa !173
  call void @llvm.lifetime.start.p0(ptr nonnull %17)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %17, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKmEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.v, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %17, i32 noundef 3, ptr nonnull @.str.374, i64 34, ptr noundef nonnull align 8 dereferenceable(32) %i.u, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %17)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.sroa.081.2 = phi i64 [ 1, %bb.c ], [ %i.s, %bb.e ], [ 0, %bb.d ]
  %.sroa.11.2 = phi i64 [ 0, %bb.c ], [ 0, %bb.e ], [ 4294967296, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #26
  br label %bb.v

bb.g:                                             ; preds = %bb.a, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #26
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !254  ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 3 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !331
  store i64 %3, ptr %i.y, align 8, !tbaa !331
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #26
  store i64 0, ptr %16, align 8
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !117
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 96
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = call i64 %i.ac(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull %16, i64 noundef %3, i64 noundef 8, i64 noundef 0) #26, !inline_history !93
  %i.ae = and i64 %i.ad, 4294967296
  %.not.not.i.i35 = icmp eq i64 %i.ae, 0
  %i.af = load i64, ptr %16, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  store i64 %i.z, ptr %i.y, align 8, !tbaa !331
  br i1 %.not.not.i.i35, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ag = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.142) #26
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !173
  call void @llvm.lifetime.start.p0(ptr nonnull %15)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRKmEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.ah, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %15, i32 noundef 4, ptr nonnull @.str.373, i64 34, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  store i64 %i.af, ptr %21, align 8, !tbaa !253
  %i.ai = load i64, ptr %i.a, align 8, !tbaa !118
  %i.aj = trunc i64 %i.ai to i32
  %i.ak = call i64 @_ZN4LIEF5MachO12BinaryParser16do_chained_fixupERNS0_14SegmentCommandEmjRKNS0_7details30dyld_chained_starts_in_segmentERKNS4_26dyld_chained_ptr_generic64E(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef nonnull align 8 dereferenceable(216) %1, i64 noundef %2, i32 noundef %i.aj, ptr noundef nonnull align 1 dereferenceable(22) %4, ptr noundef nonnull align 8 dereferenceable(8) %21) ; 2 uses
  %.not99 = icmp samesign ult i64 %i.ak, 4294967296
  br i1 %.not99, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.al = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.142) #26
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.an = load ptr, ptr %i.al, align 8, !tbaa !173
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKmEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.an, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %14, i32 noundef 3, ptr nonnull @.str.374, i64 34, ptr noundef nonnull align 8 dereferenceable(32) %i.am, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %.sroa.081.5 = phi i64 [ 1, %bb.h ], [ %i.ak, %bb.j ], [ 0, %bb.i ]
  %.sroa.11.5 = phi i64 [ 0, %bb.h ], [ 0, %bb.j ], [ 4294967296, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #26
  br label %bb.v

bb.l:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #26
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !254 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 3 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !331
  store i64 %3, ptr %i.aq, align 8, !tbaa !331
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  store i32 0, ptr %13, align 4
  %i.as = load ptr, ptr %i.ap, align 8, !tbaa !117
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 96
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = call i64 %i.au(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, ptr noundef nonnull %13, i64 noundef %3, i64 noundef 4, i64 noundef 0) #26, !inline_history !94
  %i.aw = and i64 %i.av, 4294967296
  %.not.i.i = icmp eq i64 %i.aw, 0
  %i.ax = load i32, ptr %13, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  store i64 %i.ar, ptr %i.aq, align 8, !tbaa !331
  br i1 %.not.i.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ay = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.142) #26
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !173
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRKmEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.az, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %12, i32 noundef 4, ptr nonnull @.str.373, i64 34, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  br label %bb.p

bb.n:                                             ; preds = %bb.l
  store i32 %i.ax, ptr %22, align 4, !tbaa !253
  %i.ba = load i64, ptr %i.a, align 8, !tbaa !118
  %i.bb = trunc i64 %i.ba to i32
  %i.bc = call i64 @_ZN4LIEF5MachO12BinaryParser16do_chained_fixupERNS0_14SegmentCommandEmjRKNS0_7details30dyld_chained_starts_in_segmentERKNS4_26dyld_chained_ptr_generic32E(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef nonnull align 8 dereferenceable(216) %1, i64 noundef %2, i32 noundef %i.bb, ptr noundef nonnull align 1 dereferenceable(22) %4, ptr noundef nonnull align 4 dereferenceable(4) %22) ; 2 uses
  %.not96 = icmp samesign ult i64 %i.bc, 4294967296
  br i1 %.not96, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bd = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.142) #26
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bf = load ptr, ptr %i.bd, align 8, !tbaa !173
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKmEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.bf, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %11, i32 noundef 3, ptr nonnull @.str.374, i64 34, ptr noundef nonnull align 8 dereferenceable(32) %i.be, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m
  %.sroa.081.8 = phi i64 [ 1, %bb.m ], [ %i.bc, %bb.o ], [ 0, %bb.n ]
  %.sroa.11.8 = phi i64 [ 0, %bb.m ], [ 0, %bb.o ], [ 4294967296, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #26
  br label %bb.v

bb.q:                                             ; preds = %bb.a, %bb.a, %bb.a
  %i.bg = zext nneg i16 %i.d to i32
  %i.bh = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.142) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  %i.bi = tail call noundef ptr @_ZN4LIEF5MachO9to_stringENS0_23DYLD_CHAINED_PTR_FORMATE(i32 noundef %i.bg) #26
  store ptr %i.bi, ptr %i.b, align 8, !tbaa !260
  %i.bj = load ptr, ptr %i.bh, align 8, !tbaa !173
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRKPKcEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.bj, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %10, i32 noundef 2, ptr nonnull @.str.375, i64 105, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  br label %bb.v

bb.r:                                             ; preds = %bb.a
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !254 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 3 uses
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !331
  store i64 %3, ptr %i.bm, align 8, !tbaa !331
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  store i64 0, ptr %9, align 8
  %i.bo = load ptr, ptr %i.bl, align 8, !tbaa !117
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 96
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = call i64 %i.bq(ptr noundef nonnull align 8 dereferenceable(24) %i.bl, ptr noundef nonnull %9, i64 noundef %3, i64 noundef 8, i64 noundef 0) #26, !inline_history !95
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  store i64 %i.bn, ptr %i.bm, align 8, !tbaa !331
  %i.bs = and i64 %i.br, 4294967296
  %.not = icmp eq i64 %i.bs, 0
  %i.bt = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.142) #26
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !173 ; 2 uses
  br i1 %.not, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRKmEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.bu, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %8, i32 noundef 4, ptr nonnull @.str.373, i64 34, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %bb.v

bb.t:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.bu, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %7, i32 noundef 4, ptr nonnull @.str.6, i64 41)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.bv = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.142) #26
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bx = load ptr, ptr %i.bv, align 8, !tbaa !173
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKmEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.bx, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %6, i32 noundef 3, ptr nonnull @.str.374, i64 34, ptr noundef nonnull align 8 dereferenceable(32) %i.bw, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %bb.v

bb.u:                                             ; preds = %bb.a
  %i.by = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.142) #26
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !173
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  tail call void @_ZN6spdlog6logger4log_IJRKtEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.bz, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %5, i32 noundef 4, ptr nonnull @.str.376, i64 31, ptr noundef nonnull align 2 dereferenceable(2) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.s, %bb.u, %bb.q, %bb.p, %bb.k, %bb.f
  %.sroa.081.12 = phi i64 [ 4, %bb.u ], [ %.sroa.081.2, %bb.f ], [ %.sroa.081.5, %bb.k ], [ %.sroa.081.8, %bb.p ], [ 3, %bb.q ], [ 4, %bb.t ], [ 1, %bb.s ]
  %.sroa.11.12 = phi i64 [ 0, %bb.u ], [ %.sroa.11.2, %bb.f ], [ %.sroa.11.5, %bb.k ], [ %.sroa.11.8, %bb.p ], [ 0, %bb.q ], [ 0, %bb.t ], [ 0, %bb.s ]
  %.sroa.11.0.insert.ext = and i64 %.sroa.11.12, 1095216660480
  %.sroa.081.0.insert.ext = and i64 %.sroa.081.12, 4294967295
  %.sroa.081.0.insert.insert = or disjoint i64 %.sroa.11.0.insert.ext, %.sroa.081.0.insert.ext
  ret i64 %.sroa.081.0.insert.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { i64, i8 } @_ZN4LIEF5MachO12BinaryParser10next_chainINS0_7details7MachO32EEENS_6resultImEERmmRKNS3_30dyld_chained_starts_in_segmentE(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %2, ptr noundef nonnull align 1 dereferenceable(22) %3) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %4 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %5 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %6 = alloca %"struct.LIEF::MachO::details::dyld_chained_ptr_arm64e_segmented_rebase", align 8 ; 5 uses
  %7 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %8 = alloca %"struct.LIEF::MachO::details::dyld_chained_ptr_firm32", align 4 ; 5 uses
  %9 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %10 = alloca %"struct.LIEF::MachO::details::dyld_chained_ptr_kernel64", align 8 ; 5 uses
  %11 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %12 = alloca %"union.LIEF::MachO::details::dyld_chained_ptr_generic32", align 4 ; 5 uses
  %13 = alloca %"union.LIEF::MachO::details::dyld_chained_ptr_generic32", align 4 ; 5 uses
  %14 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %15 = alloca %"union.LIEF::MachO::details::dyld_chained_ptr_generic32", align 4 ; 5 uses
  %16 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %17 = alloca %"union.LIEF::MachO::details::dyld_chained_ptr_generic64", align 8 ; 5 uses
  %18 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %19 = alloca %"union.LIEF::MachO::details::dyld_chained_ptr_arm64e", align 8 ; 5 uses
  %i.a = alloca i64, align 8                      ; 19 uses
  store i64 %2, ptr %i.a, align 8, !tbaa !118
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 6 ; 2 uses
  %i.c = load i16, ptr %i.b, align 1, !tbaa !112  ; 2 uses
  switch i16 %i.c, label %bb.c [
    i16 11, label %_ZN4LIEF5MachO22ChainedPointerAnalysis6strideENS0_23DYLD_CHAINED_PTR_FORMATE.exit.thread
    i16 1, label %_ZN4LIEF5MachO22ChainedPointerAnalysis6strideENS0_23DYLD_CHAINED_PTR_FORMATE.exit
    i16 9, label %_ZN4LIEF5MachO22ChainedPointerAnalysis6strideENS0_23DYLD_CHAINED_PTR_FORMATE.exit
    i16 12, label %_ZN4LIEF5MachO22ChainedPointerAnalysis6strideENS0_23DYLD_CHAINED_PTR_FORMATE.exit
    i16 13, label %_ZN4LIEF5MachO22ChainedPointerAnalysis6strideENS0_23DYLD_CHAINED_PTR_FORMATE.exit
    i16 7, label %bb.b
    i16 10, label %bb.b
    i16 5, label %bb.b
    i16 2, label %bb.b
    i16 6, label %bb.b
    i16 3, label %bb.b
    i16 4, label %bb.b
    i16 8, label %bb.b
    i16 14, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  br label %_ZN4LIEF5MachO22ChainedPointerAnalysis6strideENS0_23DYLD_CHAINED_PTR_FORMATE.exit

bb.c:                                             ; preds = %bb.a
  br label %_ZN4LIEF5MachO22ChainedPointerAnalysis6strideENS0_23DYLD_CHAINED_PTR_FORMATE.exit

_ZN4LIEF5MachO22ChainedPointerAnalysis6strideENS0_23DYLD_CHAINED_PTR_FORMATE.exit: ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.b, %bb.c
  %.0.i = phi i64 [ 0, %bb.c ], [ 8, %bb.a ], [ 4, %bb.b ], [ 8, %bb.a ], [ 8, %bb.a ], [ 8, %bb.a ] ; 7 uses
  switch i16 %i.c, label %bb.ae [
    i16 1, label %bb.d
    i16 7, label %bb.d
    i16 9, label %bb.d
    i16 12, label %bb.d
    i16 10, label %bb.d
    i16 2, label %bb.h
    i16 6, label %bb.h
    i16 3, label %bb.l
    i16 8, label %_ZN4LIEF5MachO22ChainedPointerAnalysis6strideENS0_23DYLD_CHAINED_PTR_FORMATE.exit.thread
    i16 11, label %_ZN4LIEF5MachO22ChainedPointerAnalysis6strideENS0_23DYLD_CHAINED_PTR_FORMATE.exit.thread
    i16 5, label %bb.w
    i16 14, label %bb.aa
  ]

bb.d:                                             ; preds = %_ZN4LIEF5MachO22ChainedPointerAnalysis6strideENS0_23DYLD_CHAINED_PTR_FORMATE.exit, %_ZN4LIEF5MachO22ChainedPointerAnalysis6strideENS0_23DYLD_CHAINED_PTR_FORMATE.exit, %_ZN4LIEF5MachO22ChainedPointerAnalysis6strideENS0_23DYLD_CHAINED_PTR_FORMATE.exit, %_ZN4LIEF5MachO22ChainedPointerAnalysis6strideENS0_23DYLD_CHAINED_PTR_FORMATE.exit, %_ZN4LIEF5MachO22ChainedPointerAnalysis6strideENS0_23DYLD_CHAINED_PTR_FORMATE.exit
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !254  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !331
  store i64 %2, ptr %i.f, align 8, !tbaa !331
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #26
  store i64 0, ptr %19, align 8
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !117
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 96
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = call i64 %i.j(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull %19, i64 noundef %2, i64 noundef 8, i64 noundef 0) #26, !inline_history !92
  %i.l = and i64 %i.k, 4294967296
  %.not.not.i.i = icmp eq i64 %i.l, 0
  %i.m = load i64, ptr %19, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  store i64 %i.g, ptr %i.f, align 8, !tbaa !331
  br i1 %.not.not.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.n = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.142) #26
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !173
  call void @llvm.lifetime.start.p0(ptr nonnull %18)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRKmEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.o, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %18, i32 noundef 4, ptr nonnull @.str.373, i64 34, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %18)
  br label %.loopexit

bb.f:                                             ; preds = %bb.d
  %i.p = lshr i64 %i.m, 51
  %i.q = and i64 %i.p, 2047                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = mul nuw nsw i64 %i.q, %.0.i              ; 2 uses
  %i.t = load i64, ptr %1, align 8, !tbaa !118
  %i.u = add i64 %i.t, %i.s
  store i64 %i.u, ptr %1, align 8, !tbaa !118
  %i.v = load i64, ptr %i.a, align 8, !tbaa !118
  %i.w = add i64 %i.v, %i.s                       ; 2 uses
  %.sroa.23.0.extract.shift = and i64 %i.w, -4294967296
  br label %.loopexit

bb.h:                                             ; preds = %_ZN4LIEF5MachO22ChainedPointerAnalysis6strideENS0_23DYLD_CHAINED_PTR_FORMATE.exit, %_ZN4LIEF5MachO22ChainedPointerAnalysis6strideENS0_23DYLD_CHAINED_PTR_FORMATE.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !254  ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 3 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !331
  store i64 %2, ptr %i.z, align 8, !tbaa !331
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #26
  store i64 0, ptr %17, align 8
  %i.ab = load ptr, ptr %i.y, align 8, !tbaa !117
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 96
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = call i64 %i.ad(ptr noundef nonnull align 8 dereferenceable(24) %i.y, ptr noundef nonnull %17, i64 noundef %2, i64 noundef 8, i64 noundef 0) #26, !inline_history !93
  %i.af = and i64 %i.ae, 4294967296
  %.not.not.i.i89 = icmp eq i64 %i.af, 0
  %i.ag = load i64, ptr %17, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  store i64 %i.aa, ptr %i.z, align 8, !tbaa !331
  br i1 %.not.not.i.i89, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ah = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.142) #26
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !173
  call void @llvm.lifetime.start.p0(ptr nonnull %16)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %16, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRKmEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.ai, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %16, i32 noundef 4, ptr nonnull @.str.373, i64 34, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %16)
  br label %.loopexit

bb.j:                                             ; preds = %bb.h
  %i.aj = lshr i64 %i.ag, 51
  %i.ak = and i64 %i.aj, 4095                     ; 2 uses
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.am = mul nuw nsw i64 %i.ak, %.0.i            ; 2 uses
  %i.an = load i64, ptr %1, align 8, !tbaa !118
  %i.ao = add i64 %i.an, %i.am
  store i64 %i.ao, ptr %1, align 8, !tbaa !118
  %i.ap = load i64, ptr %i.a, align 8, !tbaa !118
  %i.aq = add i64 %i.ap, %i.am                    ; 2 uses
  %.sroa.23.0.extract.shift153 = and i64 %i.aq, -4294967296
  br label %.loopexit

bb.l:                                             ; preds = %_ZN4LIEF5MachO22ChainedPointerAnalysis6strideENS0_23DYLD_CHAINED_PTR_FORMATE.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !254 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 3 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !331
  store i64 %2, ptr %i.at, align 8, !tbaa !331
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #26
  store i32 0, ptr %15, align 4
  %i.av = load ptr, ptr %i.as, align 8, !tbaa !117
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 96
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = call i64 %i.ax(ptr noundef nonnull align 8 dereferenceable(24) %i.as, ptr noundef nonnull %15, i64 noundef %2, i64 noundef 4, i64 noundef 0) #26, !inline_history !94
  %i.az = and i64 %i.ay, 4294967296
  %.not.i.i = icmp eq i64 %i.az, 0
  %i.ba = load i32, ptr %15, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  store i64 %i.au, ptr %i.at, align 8, !tbaa !331
  br i1 %.not.i.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bb = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.142) #26
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !173
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRKmEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.bc, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %14, i32 noundef 4, ptr nonnull @.str.373, i64 34, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  br label %.loopexit

bb.n:                                             ; preds = %bb.l
  %i.bd = lshr i32 %i.ba, 26
  %i.be = and i32 %i.bd, 31                       ; 2 uses
  %i.bf = icmp eq i32 %i.be, 0
  br i1 %i.bf, label %.loopexit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bg = trunc nuw nsw i64 %.0.i to i32          ; 2 uses
  %i.bh = mul nuw nsw i32 %i.be, %i.bg
  %i.bi = zext nneg i32 %i.bh to i64              ; 2 uses
  %i.bj = load i64, ptr %i.a, align 8, !tbaa !118
  %i.bk = add i64 %i.bj, %i.bi                    ; 3 uses
  store i64 %i.bk, ptr %i.a, align 8, !tbaa !118
  %i.bl = load i64, ptr %1, align 8, !tbaa !118
  %i.bm = add i64 %i.bl, %i.bi
  store i64 %i.bm, ptr %1, align 8, !tbaa !118
  %i.bn = load ptr, ptr %i.ar, align 8, !tbaa !254 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 3 uses
end_hunk_1
