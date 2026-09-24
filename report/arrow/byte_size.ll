Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/arrow/original/byte_size?download=true
inline.NumInlined: 1682
inline.NumDeleted: 750
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN5arrow4util15TotalBufferSizeERKNS_11RecordBatchE:bb.a
.noexc2:                                          ; preds = %.lr.ph.i
  %i.q = add nsw i64 %i.p, %.010.i                ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.06.09.i, i64 16 ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.l
  br i1 %i.s, label %_ZN5arrow4util12_GLOBAL__N_117DoTotalBufferSizeERKNS_11RecordBatchEPSt13unordered_setIPKhSt4hashIS7_ESt8equal_toIS7_ESaIS7_EE.exit, label %.lr.ph.i

_ZN5arrow4util12_GLOBAL__N_117DoTotalBufferSizeERKNS_11RecordBatchEPSt13unordered_setIPKhSt4hashIS7_ESt8equal_toIS7_ESaIS7_EE.exit: ; preds = %.noexc2, %.noexc
  %.0.lcssa.i = phi i64 [ 0, %.noexc ], [ %i.q, %.noexc2 ]
  %i.t = load ptr, ptr %i.c, align 8, !tbaa !52   ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableIPKhS1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN5arrow4util12_GLOBAL__N_117DoTotalBufferSizeERKNS_11RecordBatchEPSt13unordered_setIPKhSt4hashIS7_ESt8equal_toIS7_ESaIS7_EE.exit, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.u, %.lr.ph.i.i.i.i ], [ %i.t, %_ZN5arrow4util12_GLOBAL__N_117DoTotalBufferSizeERKNS_11RecordBatchEPSt13unordered_setIPKhSt4hashIS7_ESt8equal_toIS7_ESaIS7_EE.exit ] ; 2 uses
  %i.u = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !53 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i, i64 noundef 16) #21
  %.not.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_HashtableIPKhS1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZNSt10_HashtableIPKhS1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZN5arrow4util12_GLOBAL__N_117DoTotalBufferSizeERKNS_11RecordBatchEPSt13unordered_setIPKhSt4hashIS7_ESt8equal_toIS7_ESaIS7_EE.exit
  %i.v = load ptr, ptr %1, align 8, !tbaa !49
  %i.w = load i64, ptr %i.b, align 8, !tbaa !50
  %i.x = shl i64 %i.w, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.v, i8 0, i64 %i.x, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  %i.y = load ptr, ptr %1, align 8, !tbaa !49     ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.a
  br i1 %i.z, label %_ZNSt13unordered_setIPKhSt4hashIS1_ESt8equal_toIS1_ESaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10_HashtableIPKhS1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i
  %i.aa = load i64, ptr %i.b, align 8, !tbaa !50
  %i.ab = shl i64 %i.aa, 3
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ab) #21
  br label %_ZNSt13unordered_setIPKhSt4hashIS1_ESt8equal_toIS1_ESaIS1_EED2Ev.exit

_ZNSt13unordered_setIPKhSt4hashIS1_ESt8equal_toIS1_ESaIS1_EED2Ev.exit: ; preds = %_ZNSt10_HashtableIPKhS1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  ret i64 %.0.lcssa.i

.loopexit:                                        ; preds = %.lr.ph.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

.loopexit.split-lp:                               ; preds = %bb.a
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

bb.c:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZNSt13unordered_setIPKhSt4hashIS1_ESt8equal_toIS1_ESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %1) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN5arrow4util15TotalBufferSizeERKNS_5TableE(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::unordered_set", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  store ptr %i.a, ptr %1, align 8, !tbaa !49
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  store i64 1, ptr %i.b, align 8, !tbaa !50
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.d, align 8, !tbaa !51
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  %i.f = load ptr, ptr %0, align 8, !tbaa !85
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = invoke noundef nonnull align 8 dereferenceable(24) ptr %i.h(ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %.noexc unwind label %.loopexit.split-lp, !inline_history !246 ; 2 uses

.noexc:                                           ; preds = %bb.a
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !87   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !87   ; 2 uses
  %i.m = icmp eq ptr %i.j, %i.l
  br i1 %i.m, label %_ZN5arrow4util12_GLOBAL__N_117DoTotalBufferSizeERKNS_5TableEPSt13unordered_setIPKhSt4hashIS7_ESt8equal_toIS7_ESaIS7_EE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.noexc, %_ZN5arrow4util12_GLOBAL__N_117DoTotalBufferSizeERKNS_12ChunkedArrayEPSt13unordered_setIPKhSt4hashIS7_ESt8equal_toIS7_ESaIS7_EE.exit.i
  %.011.i = phi i64 [ %i.w, %_ZN5arrow4util12_GLOBAL__N_117DoTotalBufferSizeERKNS_12ChunkedArrayEPSt13unordered_setIPKhSt4hashIS7_ESt8equal_toIS7_ESaIS7_EE.exit.i ], [ 0, %.noexc ]
  %.sroa.07.010.i = phi ptr [ %i.x, %_ZN5arrow4util12_GLOBAL__N_117DoTotalBufferSizeERKNS_12ChunkedArrayEPSt13unordered_setIPKhSt4hashIS7_ESt8equal_toIS7_ESaIS7_EE.exit.i ], [ %i.j, %.noexc ] ; 2 uses
  %i.n = load ptr, ptr %.sroa.07.010.i, align 8, !tbaa !90 ; 2 uses
  %.val.i = load ptr, ptr %i.n, align 8, !tbaa !80 ; 2 uses
  %i.o = getelementptr i8, ptr %i.n, i64 8
  %.val6.i = load ptr, ptr %i.o, align 8, !tbaa !80 ; 2 uses
  %i.p = icmp eq ptr %.val.i, %.val6.i
  br i1 %i.p, label %_ZN5arrow4util12_GLOBAL__N_117DoTotalBufferSizeERKNS_12ChunkedArrayEPSt13unordered_setIPKhSt4hashIS7_ESt8equal_toIS7_ESaIS7_EE.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i, %.noexc2
  %.05.i.i = phi i64 [ %i.t, %.noexc2 ], [ 0, %.lr.ph.i ]
  %.sroa.01.04.i.i = phi ptr [ %i.u, %.noexc2 ], [ %.val.i, %.lr.ph.i ] ; 2 uses
  %i.q = load ptr, ptr %.sroa.01.04.i.i, align 8, !tbaa !83
  %i.r = getelementptr i8, ptr %i.q, i64 8
  %.val.i.i = load ptr, ptr %i.r, align 8, !tbaa !78
  %i.s = invoke fastcc noundef i64 @_ZN5arrow4util12_GLOBAL__N_117DoTotalBufferSizeERKNS_9ArrayDataEPSt13unordered_setIPKhSt4hashIS7_ESt8equal_toIS7_ESaIS7_EE(ptr noundef nonnull readonly align 8 dereferenceable(120) %.val.i.i, ptr noundef nonnull %1)
          to label %.noexc2 unwind label %.loopexit

.noexc2:                                          ; preds = %.lr.ph.i.i
  %i.t = add nsw i64 %i.s, %.05.i.i               ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.01.04.i.i, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.u, %.val6.i
  br i1 %i.v, label %_ZN5arrow4util12_GLOBAL__N_117DoTotalBufferSizeERKNS_12ChunkedArrayEPSt13unordered_setIPKhSt4hashIS7_ESt8equal_toIS7_ESaIS7_EE.exit.i, label %.lr.ph.i.i

_ZN5arrow4util12_GLOBAL__N_117DoTotalBufferSizeERKNS_12ChunkedArrayEPSt13unordered_setIPKhSt4hashIS7_ESt8equal_toIS7_ESaIS7_EE.exit.i: ; preds = %.noexc2, %.lr.ph.i
  %.0.lcssa.i.i = phi i64 [ 0, %.lr.ph.i ], [ %i.t, %.noexc2 ]
  %i.w = add nsw i64 %.0.lcssa.i.i, %.011.i       ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.07.010.i, i64 16 ; 2 uses
  %i.y = icmp eq ptr %i.x, %i.l
  br i1 %i.y, label %_ZN5arrow4util12_GLOBAL__N_117DoTotalBufferSizeERKNS_5TableEPSt13unordered_setIPKhSt4hashIS7_ESt8equal_toIS7_ESaIS7_EE.exit, label %.lr.ph.i

_ZN5arrow4util12_GLOBAL__N_117DoTotalBufferSizeERKNS_5TableEPSt13unordered_setIPKhSt4hashIS7_ESt8equal_toIS7_ESaIS7_EE.exit: ; preds = %_ZN5arrow4util12_GLOBAL__N_117DoTotalBufferSizeERKNS_12ChunkedArrayEPSt13unordered_setIPKhSt4hashIS7_ESt8equal_toIS7_ESaIS7_EE.exit.i, %.noexc
  %.0.lcssa.i = phi i64 [ 0, %.noexc ], [ %i.w, %_ZN5arrow4util12_GLOBAL__N_117DoTotalBufferSizeERKNS_12ChunkedArrayEPSt13unordered_setIPKhSt4hashIS7_ESt8equal_toIS7_ESaIS7_EE.exit.i ]
  %i.z = load ptr, ptr %i.c, align 8, !tbaa !52   ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableIPKhS1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN5arrow4util12_GLOBAL__N_117DoTotalBufferSizeERKNS_5TableEPSt13unordered_setIPKhSt4hashIS7_ESt8equal_toIS7_ESaIS7_EE.exit, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.aa, %.lr.ph.i.i.i.i ], [ %i.z, %_ZN5arrow4util12_GLOBAL__N_117DoTotalBufferSizeERKNS_5TableEPSt13unordered_setIPKhSt4hashIS7_ESt8equal_toIS7_ESaIS7_EE.exit ] ; 2 uses
  %i.aa = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !53 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i, i64 noundef 16) #21
  %.not.i.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_HashtableIPKhS1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZNSt10_HashtableIPKhS1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZN5arrow4util12_GLOBAL__N_117DoTotalBufferSizeERKNS_5TableEPSt13unordered_setIPKhSt4hashIS7_ESt8equal_toIS7_ESaIS7_EE.exit
  %i.ab = load ptr, ptr %1, align 8, !tbaa !49
  %i.ac = load i64, ptr %i.b, align 8, !tbaa !50
  %i.ad = shl i64 %i.ac, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.ab, i8 0, i64 %i.ad, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  %i.ae = load ptr, ptr %1, align 8, !tbaa !49    ; 2 uses
  %i.af = icmp eq ptr %i.ae, %i.a
  br i1 %i.af, label %_ZNSt13unordered_setIPKhSt4hashIS1_ESt8equal_toIS1_ESaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10_HashtableIPKhS1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i
  %i.ag = load i64, ptr %i.b, align 8, !tbaa !50
  %i.ah = shl i64 %i.ag, 3
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ah) #21
  br label %_ZNSt13unordered_setIPKhSt4hashIS1_ESt8equal_toIS1_ESaIS1_EED2Ev.exit

_ZNSt13unordered_setIPKhSt4hashIS1_ESt8equal_toIS1_ESaIS1_EED2Ev.exit: ; preds = %_ZNSt10_HashtableIPKhS1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  ret i64 %.0.lcssa.i

.loopexit:                                        ; preds = %.lr.ph.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

.loopexit.split-lp:                               ; preds = %bb.a
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

bb.c:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZNSt13unordered_setIPKhSt4hashIS1_ESt8equal_toIS1_ESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %1) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow4util16ReferencedRangesERKNS_9ArrayDataE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result") align 8 %0, ptr noundef nonnull align 8 dereferenceable(120) %1) local_unnamed_addr #1 {
bb.a:
  tail call fastcc void @_ZN5arrow4util12_GLOBAL__N_118GetByteRangesArray4ExecERKNS_9ArrayDataE(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(120) %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow4util12_GLOBAL__N_118GetByteRangesArray4ExecERKNS_9ArrayDataE(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(120) %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::shared_ptr.44", align 16 ; 9 uses
  %3 = alloca %"class.std::shared_ptr.44", align 16 ; 9 uses
  %4 = alloca %"class.std::shared_ptr.44", align 16 ; 9 uses
  %5 = alloca %"class.arrow::Status", align 8     ; 8 uses
  %6 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %7 = alloca %"class.arrow::Status", align 8     ; 8 uses
  %8 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %9 = alloca %"class.arrow::Status", align 8     ; 8 uses
  %10 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %11 = alloca %"class.arrow::Result.204", align 8 ; 11 uses
  %12 = alloca %"class.std::vector.23", align 8   ; 13 uses
  %13 = alloca [3 x %"class.std::shared_ptr.44"], align 16 ; 11 uses
  %14 = alloca %"class.std::vector.82", align 8   ; 13 uses
  %15 = alloca [3 x %"class.std::shared_ptr.187"], align 16 ; 15 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %17 = alloca %"class.std::shared_ptr", align 16 ; 6 uses
  %18 = alloca %"class.std::shared_ptr.192", align 8 ; 6 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %20 = alloca %"class.std::shared_ptr", align 16 ; 6 uses
  %21 = alloca %"class.std::shared_ptr.192", align 8 ; 6 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %23 = alloca %"class.std::shared_ptr", align 16 ; 6 uses
  %24 = alloca %"class.std::shared_ptr.192", align 8 ; 6 uses
  %25 = alloca %"class.std::shared_ptr.57", align 8 ; 6 uses
  %26 = alloca %"class.arrow::NumericBuilder", align 8 ; 26 uses
  %27 = alloca %"class.arrow::NumericBuilder", align 8 ; 26 uses
  %28 = alloca %"class.arrow::NumericBuilder", align 8 ; 26 uses
  %29 = alloca %"struct.arrow::util::(anonymous namespace)::GetByteRangesArray", align 8 ; 10 uses
  %30 = alloca %"class.arrow::Status", align 8    ; 8 uses
  %31 = alloca %"class.arrow::Status", align 8    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #20
  %i.a = tail call noundef ptr @_ZN5arrow19default_memory_poolEv() ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %26, i64 8
  store ptr %i.a, ptr %i.b, align 8, !tbaa !265
  %i.c = getelementptr inbounds nuw i8, ptr %26, i64 16
  store i64 64, ptr %i.c, align 8, !tbaa !266
  %i.d = getelementptr inbounds nuw i8, ptr %26, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.d, i8 0, i64 16, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %26, i64 40
  store ptr %i.a, ptr %i.e, align 8, !tbaa !103
  %i.f = getelementptr inbounds nuw i8, ptr %26, i64 48
  store ptr @_ZN5arrow4util8internalL14kNonNullFillerE, ptr %i.f, align 8, !tbaa !104
  %i.g = getelementptr inbounds nuw i8, ptr %26, i64 56
  %i.h = getelementptr inbounds nuw i8, ptr %26, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  store i64 64, ptr %i.h, align 8, !tbaa !105
  %i.i = getelementptr inbounds nuw i8, ptr %26, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.i, i8 0, i64 64, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN5arrow14NumericBuilderINS_10UInt64TypeEEE, i64 16), ptr %26, align 8, !tbaa !85
  tail call void @llvm.experimental.noalias.scope.decl(metadata !267)
  %i.j = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow6uint64Ev()
          to label %.noexc.i unwind label %bb.e   ; 2 uses

.noexc.i:                                         ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %26, i64 144
  %i.l = getelementptr inbounds nuw i8, ptr %26, i64 152
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !106, !noalias !267 ; 2 uses
  %i.o = load <2 x ptr>, ptr %i.j, align 8, !tbaa !107, !noalias !267
  store <2 x ptr> %i.o, ptr %i.k, align 8, !tbaa !107, !alias.scope !267
  %.not.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i.i, label %_ZN5arrow14NumericBuilderINS_10UInt64TypeEEC2IS1_EENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEPNS_10MemoryPoolEE4typeEl.exit, label %bb.b

bb.b:                                             ; preds = %.noexc.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 3 uses
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !108, !noalias !267
  %.not.i.i.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = load i32, ptr %i.p, align 4, !tbaa !21, !noalias !267
  %i.s = add nsw i32 %i.r, 1
  store i32 %i.s, ptr %i.p, align 4, !tbaa !21, !noalias !267
  br label %_ZN5arrow14NumericBuilderINS_10UInt64TypeEEC2IS1_EENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEPNS_10MemoryPoolEE4typeEl.exit

bb.d:                                             ; preds = %bb.b
  %i.t = atomicrmw volatile add ptr %i.p, i32 1 acq_rel, align 4, !noalias !267 ; 0 uses
  br label %_ZN5arrow14NumericBuilderINS_10UInt64TypeEEC2IS1_EENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEPNS_10MemoryPoolEE4typeEl.exit

common.resume:                                    ; preds = %.body, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.u, %bb.e ], [ %.pn12.pn.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.a
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow12ArrayBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(216) %26) #20
  br label %common.resume

_ZN5arrow14NumericBuilderINS_10UInt64TypeEEC2IS1_EENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEPNS_10MemoryPoolEE4typeEl.exit: ; preds = %.noexc.i, %bb.c, %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %26, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.v, i8 0, i64 16, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %26, i64 176
  store ptr %i.a, ptr %i.w, align 8, !tbaa !103
  %i.x = getelementptr inbounds nuw i8, ptr %26, i64 184
  store ptr @_ZN5arrow4util8internalL14kNonNullFillerE, ptr %i.x, align 8, !tbaa !104
  %i.y = getelementptr inbounds nuw i8, ptr %26, i64 192
  %i.z = getelementptr inbounds nuw i8, ptr %26, i64 208
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, i8 0, i64 16, i1 false)
  store i64 64, ptr %i.z, align 8, !tbaa !105
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #20
  %i.aa = invoke noundef ptr @_ZN5arrow19default_memory_poolEv()
          to label %bb.f unwind label %bb.u       ; 3 uses

bb.f:                                             ; preds = %_ZN5arrow14NumericBuilderINS_10UInt64TypeEEC2IS1_EENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEPNS_10MemoryPoolEE4typeEl.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %27, i64 8
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !265
  %i.ac = getelementptr inbounds nuw i8, ptr %27, i64 16
  store i64 64, ptr %i.ac, align 8, !tbaa !266
  %i.ad = getelementptr inbounds nuw i8, ptr %27, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ad, i8 0, i64 16, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %27, i64 40
  store ptr %i.aa, ptr %i.ae, align 8, !tbaa !103
  %i.af = getelementptr inbounds nuw i8, ptr %27, i64 48
  store ptr @_ZN5arrow4util8internalL14kNonNullFillerE, ptr %i.af, align 8, !tbaa !104
  %i.ag = getelementptr inbounds nuw i8, ptr %27, i64 56
  %i.ah = getelementptr inbounds nuw i8, ptr %27, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ag, i8 0, i64 16, i1 false)
  store i64 64, ptr %i.ah, align 8, !tbaa !105
  %i.ai = getelementptr inbounds nuw i8, ptr %27, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ai, i8 0, i64 64, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN5arrow14NumericBuilderINS_10UInt64TypeEEE, i64 16), ptr %27, align 8, !tbaa !85
  tail call void @llvm.experimental.noalias.scope.decl(metadata !268)
  %i.aj = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow6uint64Ev()
          to label %.noexc.i16 unwind label %bb.j ; 2 uses

.noexc.i16:                                       ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %27, i64 144
  %i.al = getelementptr inbounds nuw i8, ptr %27, i64 152
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !106, !noalias !268 ; 2 uses
  %i.ao = load <2 x ptr>, ptr %i.aj, align 8, !tbaa !107, !noalias !268
  store <2 x ptr> %i.ao, ptr %i.ak, align 8, !tbaa !107, !alias.scope !268
  %.not.i.i.i.i.i17 = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i.i.i17, label %bb.k, label %bb.g

bb.g:                                             ; preds = %.noexc.i16
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 3 uses
  %i.aq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !108, !noalias !268
  %.not.i.i.i.i.i.i18 = icmp eq i8 %i.aq, 0
  br i1 %.not.i.i.i.i.i.i18, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ar = load i32, ptr %i.ap, align 4, !tbaa !21, !noalias !268
  %i.as = add nsw i32 %i.ar, 1
  store i32 %i.as, ptr %i.ap, align 4, !tbaa !21, !noalias !268
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.at = atomicrmw volatile add ptr %i.ap, i32 1 acq_rel, align 4, !noalias !268 ; 0 uses
  br label %bb.k

bb.j:                                             ; preds = %bb.f
  %i.au = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow12ArrayBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(216) %27) #20
  br label %.body

bb.k:                                             ; preds = %bb.i, %bb.h, %.noexc.i16
  %i.av = getelementptr inbounds nuw i8, ptr %27, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.av, i8 0, i64 16, i1 false)
  %i.aw = getelementptr inbounds nuw i8, ptr %27, i64 176
  store ptr %i.aa, ptr %i.aw, align 8, !tbaa !103
  %i.ax = getelementptr inbounds nuw i8, ptr %27, i64 184
  store ptr @_ZN5arrow4util8internalL14kNonNullFillerE, ptr %i.ax, align 8, !tbaa !104
  %i.ay = getelementptr inbounds nuw i8, ptr %27, i64 192
  %i.az = getelementptr inbounds nuw i8, ptr %27, i64 208
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ay, i8 0, i64 16, i1 false)
  store i64 64, ptr %i.az, align 8, !tbaa !105
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #20
  %i.ba = invoke noundef ptr @_ZN5arrow19default_memory_poolEv()
          to label %bb.l unwind label %bb.v       ; 3 uses

bb.l:                                             ; preds = %bb.k
  %i.bb = getelementptr inbounds nuw i8, ptr %28, i64 8
  store ptr %i.ba, ptr %i.bb, align 8, !tbaa !265
  %i.bc = getelementptr inbounds nuw i8, ptr %28, i64 16
  store i64 64, ptr %i.bc, align 8, !tbaa !266
  %i.bd = getelementptr inbounds nuw i8, ptr %28, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.bd, i8 0, i64 16, i1 false)
  %i.be = getelementptr inbounds nuw i8, ptr %28, i64 40
  store ptr %i.ba, ptr %i.be, align 8, !tbaa !103
  %i.bf = getelementptr inbounds nuw i8, ptr %28, i64 48
  store ptr @_ZN5arrow4util8internalL14kNonNullFillerE, ptr %i.bf, align 8, !tbaa !104
  %i.bg = getelementptr inbounds nuw i8, ptr %28, i64 56
  %i.bh = getelementptr inbounds nuw i8, ptr %28, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bg, i8 0, i64 16, i1 false)
  store i64 64, ptr %i.bh, align 8, !tbaa !105
  %i.bi = getelementptr inbounds nuw i8, ptr %28, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bi, i8 0, i64 64, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN5arrow14NumericBuilderINS_10UInt64TypeEEE, i64 16), ptr %28, align 8, !tbaa !85
  tail call void @llvm.experimental.noalias.scope.decl(metadata !269)
  %i.bj = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow6uint64Ev()
          to label %.noexc.i20 unwind label %bb.p ; 2 uses

.noexc.i20:                                       ; preds = %bb.l
  %i.bk = getelementptr inbounds nuw i8, ptr %28, i64 144
  %i.bl = getelementptr inbounds nuw i8, ptr %28, i64 152
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !106, !noalias !269 ; 2 uses
  %i.bo = load <2 x ptr>, ptr %i.bj, align 8, !tbaa !107, !noalias !269
  store <2 x ptr> %i.bo, ptr %i.bk, align 8, !tbaa !107, !alias.scope !269
  %.not.i.i.i.i.i21 = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i.i.i21, label %bb.q, label %bb.m

bb.m:                                             ; preds = %.noexc.i20
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 3 uses
  %i.bq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !108, !noalias !269
  %.not.i.i.i.i.i.i22 = icmp eq i8 %i.bq, 0
  br i1 %.not.i.i.i.i.i.i22, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.br = load i32, ptr %i.bp, align 4, !tbaa !21, !noalias !269
  %i.bs = add nsw i32 %i.br, 1
  store i32 %i.bs, ptr %i.bp, align 4, !tbaa !21, !noalias !269
  br label %bb.q

bb.o:                                             ; preds = %bb.m
  %i.bt = atomicrmw volatile add ptr %i.bp, i32 1 acq_rel, align 4, !noalias !269 ; 0 uses
  br label %bb.q

bb.p:                                             ; preds = %bb.l
  %i.bu = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow12ArrayBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(216) %28) #20
  br label %.body23

bb.q:                                             ; preds = %bb.o, %bb.n, %.noexc.i20
  %i.bv = getelementptr inbounds nuw i8, ptr %28, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bv, i8 0, i64 16, i1 false)
  %i.bw = getelementptr inbounds nuw i8, ptr %28, i64 176
  store ptr %i.ba, ptr %i.bw, align 8, !tbaa !103
  %i.bx = getelementptr inbounds nuw i8, ptr %28, i64 184
  store ptr @_ZN5arrow4util8internalL14kNonNullFillerE, ptr %i.bx, align 8, !tbaa !104
  %i.by = getelementptr inbounds nuw i8, ptr %28, i64 192
  %i.bz = getelementptr inbounds nuw i8, ptr %28, i64 208
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.by, i8 0, i64 16, i1 false)
  store i64 64, ptr %i.bz, align 8, !tbaa !105
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #20
  store ptr %1, ptr %29, align 8, !tbaa !109
  %i.ca = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !128
  store i64 %i.cc, ptr %i.ca, align 8, !tbaa !131
  %i.cd = getelementptr inbounds nuw i8, ptr %29, i64 16
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !132
  store i64 %i.cf, ptr %i.cd, align 8, !tbaa !133
  %i.cg = getelementptr inbounds nuw i8, ptr %29, i64 24
  store ptr %26, ptr %i.cg, align 8, !tbaa !134
  %i.ch = getelementptr inbounds nuw i8, ptr %29, i64 32
  store ptr %27, ptr %i.ch, align 8, !tbaa !135
  %i.ci = getelementptr inbounds nuw i8, ptr %29, i64 40
  store ptr %28, ptr %i.ci, align 8, !tbaa !136
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #20
  %i.cj = load ptr, ptr %1, align 8, !tbaa !137
  invoke fastcc void @_ZN5arrow15VisitTypeInlineINS_4util12_GLOBAL__N_118GetByteRangesArrayEJEEENS_6StatusERKNS_8DataTypeEPT_DpOT0_(ptr dead_on_unwind noalias writable align 8 %31, ptr noundef nonnull align 8 dereferenceable(72) %i.cj, ptr noundef %29)
          to label %_ZN5arrow6StatusD2Ev.exit unwind label %bb.w

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.q
  %i.ck = load ptr, ptr %31, align 8, !tbaa !140  ; 2 uses
  store ptr %i.ck, ptr %30, align 8, !tbaa !140
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #20
  %i.cl = icmp eq ptr %i.ck, null
  br i1 %i.cl, label %_ZN5arrow6StatusD2Ev.exit31, label %bb.r, !prof !73

bb.r:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit
  call void @_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %30) #20
  %i.cm = load ptr, ptr %30, align 8, !tbaa !140  ; 2 uses
  %.not.i26 = icmp eq ptr %i.cm, null
  br i1 %.not.i26, label %_ZN5arrow6StatusD2Ev.exit27, label %bb.s, !prof !73

bb.s:                                             ; preds = %bb.r
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 1
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !148, !range !71, !noundef !72
  %i.cp = trunc nuw i8 %i.co to i1
  br i1 %i.cp, label %_ZN5arrow6StatusD2Ev.exit27, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %30) #20
  br label %_ZN5arrow6StatusD2Ev.exit27

_ZN5arrow6StatusD2Ev.exit27:                      ; preds = %bb.r, %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #20
  br label %bb.he

bb.u:                                             ; preds = %_ZN5arrow14NumericBuilderINS_10UInt64TypeEEC2IS1_EENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEPNS_10MemoryPoolEE4typeEl.exit
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.v:                                             ; preds = %bb.k
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %.body23

bb.w:                                             ; preds = %bb.q
  %i.cs = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #20
  br label %.body34

_ZN5arrow6StatusD2Ev.exit31:                      ; preds = %_ZN5arrow6StatusD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !270)
  call void @llvm.lifetime.start.p0(ptr nonnull %16)
  call void @llvm.lifetime.start.p0(ptr nonnull %17)
  call void @llvm.lifetime.start.p0(ptr nonnull %18)
  call void @llvm.lifetime.start.p0(ptr nonnull %19)
  call void @llvm.lifetime.start.p0(ptr nonnull %20)
  call void @llvm.lifetime.start.p0(ptr nonnull %21)
  call void @llvm.lifetime.start.p0(ptr nonnull %22)
  call void @llvm.lifetime.start.p0(ptr nonnull %23)
  call void @llvm.lifetime.start.p0(ptr nonnull %24)
  call void @llvm.lifetime.start.p0(ptr nonnull %25)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20, !noalias !270
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %2, i8 0, i64 16, i1 false), !noalias !270
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20, !noalias !270
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %3, i8 0, i64 16, i1 false), !noalias !270
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20, !noalias !270
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %4, i8 0, i64 16, i1 false), !noalias !270
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20, !noalias !270
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20, !noalias !270
  invoke void @_ZN5arrow12ArrayBuilder6FinishEPSt10shared_ptrINS_5ArrayEE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %6, ptr noundef nonnull align 8 dereferenceable(144) %26, ptr noundef nonnull %2)
          to label %_ZN5arrow6StatusD2Ev.exit.i unwind label %bb.aa, !noalias !270

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %_ZN5arrow6StatusD2Ev.exit31
  %i.ct = load ptr, ptr %6, align 8, !tbaa !140, !noalias !270 ; 2 uses
  store ptr %i.ct, ptr %5, align 8, !tbaa !140, !noalias !270
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20, !noalias !270
  %i.cu = icmp eq ptr %i.ct, null
  br i1 %i.cu, label %_ZN5arrow6StatusD2Ev.exit72.i, label %bb.x, !prof !73

bb.x:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit.i
  call void @_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %5) #20
  %i.cv = load ptr, ptr %5, align 8, !tbaa !140, !noalias !270 ; 2 uses
  %.not.i67.i = icmp eq ptr %i.cv, null
  br i1 %.not.i67.i, label %_ZN5arrow6StatusD2Ev.exit68.i, label %bb.y, !prof !73

bb.y:                                             ; preds = %bb.x
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 1
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !148, !range !71, !noundef !72
  %i.cy = trunc nuw i8 %i.cx to i1
  br i1 %i.cy, label %_ZN5arrow6StatusD2Ev.exit68.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #20
  br label %_ZN5arrow6StatusD2Ev.exit68.i

_ZN5arrow6StatusD2Ev.exit68.i:                    ; preds = %bb.z, %bb.y, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20, !noalias !270
  br label %bb.gk

bb.aa:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit31
  %i.cz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20, !noalias !270
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20, !noalias !270
  br label %bb.hd

_ZN5arrow6StatusD2Ev.exit72.i:                    ; preds = %_ZN5arrow6StatusD2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20, !noalias !270
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20, !noalias !270
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20, !noalias !270
  invoke void @_ZN5arrow12ArrayBuilder6FinishEPSt10shared_ptrINS_5ArrayEE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %8, ptr noundef nonnull align 8 dereferenceable(144) %27, ptr noundef nonnull %3)
          to label %_ZN5arrow6StatusD2Ev.exit74.i unwind label %bb.ae

_ZN5arrow6StatusD2Ev.exit74.i:                    ; preds = %_ZN5arrow6StatusD2Ev.exit72.i
  %i.da = load ptr, ptr %8, align 8, !tbaa !140, !noalias !270 ; 2 uses
  store ptr %i.da, ptr %7, align 8, !tbaa !140, !noalias !270
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20, !noalias !270
  %i.db = icmp eq ptr %i.da, null
  br i1 %i.db, label %_ZN5arrow6StatusD2Ev.exit80.i, label %bb.ab, !prof !73

bb.ab:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit74.i
  call void @_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %7) #20
  %i.dc = load ptr, ptr %7, align 8, !tbaa !140, !noalias !270 ; 2 uses
  %.not.i75.i = icmp eq ptr %i.dc, null
  br i1 %.not.i75.i, label %_ZN5arrow6StatusD2Ev.exit76.i, label %bb.ac, !prof !73

bb.ac:                                            ; preds = %bb.ab
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 1
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !148, !range !71, !noundef !72
  %i.df = trunc nuw i8 %i.de to i1
  br i1 %i.df, label %_ZN5arrow6StatusD2Ev.exit76.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #20
  br label %_ZN5arrow6StatusD2Ev.exit76.i

_ZN5arrow6StatusD2Ev.exit76.i:                    ; preds = %bb.ad, %bb.ac, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20, !noalias !270
  br label %bb.gk

bb.ae:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit72.i
  %i.dg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20, !noalias !270
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20, !noalias !270
  br label %bb.hd

_ZN5arrow6StatusD2Ev.exit80.i:                    ; preds = %_ZN5arrow6StatusD2Ev.exit74.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20, !noalias !270
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20, !noalias !270
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20, !noalias !270
  invoke void @_ZN5arrow12ArrayBuilder6FinishEPSt10shared_ptrINS_5ArrayEE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %10, ptr noundef nonnull align 8 dereferenceable(144) %28, ptr noundef nonnull %4)
          to label %_ZN5arrow6StatusD2Ev.exit82.i unwind label %bb.ai

_ZN5arrow6StatusD2Ev.exit82.i:                    ; preds = %_ZN5arrow6StatusD2Ev.exit80.i
  %i.dh = load ptr, ptr %10, align 8, !tbaa !140, !noalias !270 ; 2 uses
  store ptr %i.dh, ptr %9, align 8, !tbaa !140, !noalias !270
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20, !noalias !270
  %i.di = icmp eq ptr %i.dh, null
  br i1 %i.di, label %_ZN5arrow6StatusD2Ev.exit88.i, label %bb.af, !prof !73

bb.af:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit82.i
  call void @_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %9) #20
  %i.dj = load ptr, ptr %9, align 8, !tbaa !140, !noalias !270 ; 2 uses
  %.not.i83.i = icmp eq ptr %i.dj, null
  br i1 %.not.i83.i, label %_ZN5arrow6StatusD2Ev.exit84.i, label %bb.ag, !prof !73

bb.ag:                                            ; preds = %bb.af
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 1
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !148, !range !71, !noundef !72
  %i.dm = trunc nuw i8 %i.dl to i1
  br i1 %i.dm, label %_ZN5arrow6StatusD2Ev.exit84.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %9) #20
  br label %_ZN5arrow6StatusD2Ev.exit84.i

_ZN5arrow6StatusD2Ev.exit84.i:                    ; preds = %bb.ah, %bb.ag, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20, !noalias !270
  br label %bb.gk

bb.ai:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit80.i
  %i.dn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20, !noalias !270
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20, !noalias !270
  br label %bb.hd

_ZN5arrow6StatusD2Ev.exit88.i:                    ; preds = %_ZN5arrow6StatusD2Ev.exit82.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20, !noalias !270
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20, !noalias !270
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20, !noalias !270
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #20, !noalias !270
  %i.do = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !106, !noalias !270 ; 2 uses
  %i.dr = load <2 x ptr>, ptr %2, align 16, !tbaa !107, !noalias !270
  store <2 x ptr> %i.dr, ptr %13, align 16, !tbaa !107, !noalias !270
  %.not.i.i.i.i = icmp eq ptr %i.dq, null
  br i1 %.not.i.i.i.i, label %_ZNSt10shared_ptrIN5arrow5ArrayEEC2ERKS2_.exit.i, label %bb.aj

bb.aj:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit88.i
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dq, i64 8 ; 3 uses
  %i.dt = load i8, ptr @__libc_single_threaded, align 1, !tbaa !108, !noalias !270
  %.not.i.i.i.i.i32 = icmp eq i8 %i.dt, 0
  br i1 %.not.i.i.i.i.i32, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.du = load i32, ptr %i.ds, align 4, !tbaa !21
  %i.dv = add nsw i32 %i.du, 1
  store i32 %i.dv, ptr %i.ds, align 4, !tbaa !21
  br label %_ZNSt10shared_ptrIN5arrow5ArrayEEC2ERKS2_.exit.i

bb.al:                                            ; preds = %bb.aj
  %i.dw = atomicrmw volatile add ptr %i.ds, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow5ArrayEEC2ERKS2_.exit.i

_ZNSt10shared_ptrIN5arrow5ArrayEEC2ERKS2_.exit.i: ; preds = %bb.al, %bb.ak, %_ZN5arrow6StatusD2Ev.exit88.i
  %i.dx = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %13, i64 24 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !106, !noalias !270 ; 2 uses
  %i.eb = load <2 x ptr>, ptr %3, align 16, !tbaa !107, !noalias !270
  store <2 x ptr> %i.eb, ptr %i.dx, align 16, !tbaa !107, !noalias !270
  %.not.i.i.i89.i = icmp eq ptr %i.ea, null
  br i1 %.not.i.i.i89.i, label %_ZNSt10shared_ptrIN5arrow5ArrayEEC2ERKS2_.exit91.i, label %bb.am

bb.am:                                            ; preds = %_ZNSt10shared_ptrIN5arrow5ArrayEEC2ERKS2_.exit.i
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ea, i64 8 ; 3 uses
  %i.ed = load i8, ptr @__libc_single_threaded, align 1, !tbaa !108, !noalias !270
  %.not.i.i.i.i90.i = icmp eq i8 %i.ed, 0
  br i1 %.not.i.i.i.i90.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ee = load i32, ptr %i.ec, align 4, !tbaa !21
  %i.ef = add nsw i32 %i.ee, 1
  store i32 %i.ef, ptr %i.ec, align 4, !tbaa !21
  br label %_ZNSt10shared_ptrIN5arrow5ArrayEEC2ERKS2_.exit91.i

bb.ao:                                            ; preds = %bb.am
  %i.eg = atomicrmw volatile add ptr %i.ec, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow5ArrayEEC2ERKS2_.exit91.i

_ZNSt10shared_ptrIN5arrow5ArrayEEC2ERKS2_.exit91.i: ; preds = %bb.ao, %bb.an, %_ZNSt10shared_ptrIN5arrow5ArrayEEC2ERKS2_.exit.i
  %i.eh = getelementptr inbounds nuw i8, ptr %13, i64 32 ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %13, i64 40 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !106, !noalias !270 ; 2 uses
  %i.el = load <2 x ptr>, ptr %4, align 16, !tbaa !107, !noalias !270
  store <2 x ptr> %i.el, ptr %i.eh, align 16, !tbaa !107, !noalias !270
  %.not.i.i.i92.i = icmp eq ptr %i.ek, null
  br i1 %.not.i.i.i92.i, label %_ZNSt10shared_ptrIN5arrow5ArrayEEC2ERKS2_.exit94.i, label %bb.ap

bb.ap:                                            ; preds = %_ZNSt10shared_ptrIN5arrow5ArrayEEC2ERKS2_.exit91.i
  %i.em = getelementptr inbounds nuw i8, ptr %i.ek, i64 8 ; 3 uses
  %i.en = load i8, ptr @__libc_single_threaded, align 1, !tbaa !108, !noalias !270
  %.not.i.i.i.i93.i = icmp eq i8 %i.en, 0
  br i1 %.not.i.i.i.i93.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.eo = load i32, ptr %i.em, align 4, !tbaa !21
  %i.ep = add nsw i32 %i.eo, 1
  store i32 %i.ep, ptr %i.em, align 4, !tbaa !21
  br label %_ZNSt10shared_ptrIN5arrow5ArrayEEC2ERKS2_.exit94.i

bb.ar:                                            ; preds = %bb.ap
  %i.eq = atomicrmw volatile add ptr %i.em, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow5ArrayEEC2ERKS2_.exit94.i

_ZNSt10shared_ptrIN5arrow5ArrayEEC2ERKS2_.exit94.i: ; preds = %bb.ar, %bb.aq, %_ZNSt10shared_ptrIN5arrow5ArrayEEC2ERKS2_.exit91.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false), !noalias !270
  %i.er = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #22
          to label %.noexc3.i.i unwind label %bb.bb ; 5 uses

.noexc3.i.i:                                      ; preds = %_ZNSt10shared_ptrIN5arrow5ArrayEEC2ERKS2_.exit94.i
  store ptr %i.er, ptr %12, align 8, !tbaa !150, !noalias !270
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 48 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  store ptr %i.es, ptr %i.et, align 8, !tbaa !151, !noalias !270
  %i.eu = load ptr, ptr %i.do, align 8, !tbaa !106, !noalias !270 ; 2 uses
  %i.ev = load <2 x ptr>, ptr %13, align 16, !tbaa !107, !noalias !270
  store <2 x ptr> %i.ev, ptr %i.er, align 8, !tbaa !107
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.eu, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i, label %bb.as

bb.as:                                            ; preds = %.noexc3.i.i
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eu, i64 8 ; 3 uses
  %i.ex = load i8, ptr @__libc_single_threaded, align 1, !tbaa !108, !noalias !270
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.ex, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ey = load i32, ptr %i.ew, align 4, !tbaa !21
  %i.ez = add nsw i32 %i.ey, 1
  store i32 %i.ez, ptr %i.ew, align 4, !tbaa !21
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i

bb.au:                                            ; preds = %bb.as
  %i.fa = atomicrmw volatile add ptr %i.ew, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i

_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i: ; preds = %bb.au, %bb.at, %.noexc3.i.i
  %i.fb = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  %i.fc = load ptr, ptr %i.dy, align 8, !tbaa !106, !noalias !270 ; 2 uses
  %i.fd = load <2 x ptr>, ptr %i.dx, align 16, !tbaa !107, !noalias !270
  store <2 x ptr> %i.fd, ptr %i.fb, align 8, !tbaa !107
  %.not.i.i.i.i.i.i.i.i.i.i.1.i = icmp eq ptr %i.fc, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.1.i, label %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.1.i, label %bb.av

bb.av:                                            ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fc, i64 8 ; 3 uses
  %i.ff = load i8, ptr @__libc_single_threaded, align 1, !tbaa !108, !noalias !270
  %.not.i.i.i.i.i.i.i.i.i.i.i.1.i = icmp eq i8 %i.ff, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.1.i, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.fg = load i32, ptr %i.fe, align 4, !tbaa !21
  %i.fh = add nsw i32 %i.fg, 1
  store i32 %i.fh, ptr %i.fe, align 4, !tbaa !21
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.1.i

bb.ax:                                            ; preds = %bb.av
  %i.fi = atomicrmw volatile add ptr %i.fe, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.1.i

_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.1.i: ; preds = %bb.ax, %bb.aw, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i
  %i.fj = getelementptr inbounds nuw i8, ptr %i.er, i64 32
  %i.fk = load ptr, ptr %i.ei, align 8, !tbaa !106, !noalias !270 ; 2 uses
  %i.fl = load <2 x ptr>, ptr %i.eh, align 16, !tbaa !107, !noalias !270
  store <2 x ptr> %i.fl, ptr %i.fj, align 8, !tbaa !107
  %.not.i.i.i.i.i.i.i.i.i.i.2.i = icmp eq ptr %i.fk, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.2.i, label %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.2.i, label %bb.ay

bb.ay:                                            ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.1.i
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fk, i64 8 ; 3 uses
  %i.fn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !108, !noalias !270
  %.not.i.i.i.i.i.i.i.i.i.i.i.2.i = icmp eq i8 %i.fn, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.2.i, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.fo = load i32, ptr %i.fm, align 4, !tbaa !21
  %i.fp = add nsw i32 %i.fo, 1
  store i32 %i.fp, ptr %i.fm, align 4, !tbaa !21
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.2.i

bb.ba:                                            ; preds = %bb.ay
  %i.fq = atomicrmw volatile add ptr %i.fm, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.2.i

_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.2.i: ; preds = %bb.ba, %bb.az, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.1.i
  %i.fr = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  store ptr %i.es, ptr %i.fr, align 8, !tbaa !152, !noalias !270
end_hunk_0
begin_hunk_1_@_ZNSt10_HashtableIPKhS1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb0ELb1ELb1EEEE21_M_insert_unique_nodeEmmPNS3_10_Hash_nodeIS1_Lb0EEEm:bb.a
bb.e:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.o

bb.f:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  tail call void @__clang_call_terminate(ptr %i.q) #23
  unreachable

bb.g:                                             ; preds = %bb.c
  unreachable

_ZNSt10_HashtableIPKhS1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb0ELb1ELb1EEEE9_M_rehashEmRKm.exit: ; preds = %bb.b
  %i.r = load i64, ptr %i.d, align 8, !tbaa !50
  %i.s = urem i64 %2, %i.r
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt10_HashtableIPKhS1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb0ELb1ELb1EEEE9_M_rehashEmRKm.exit, %bb.a
  %.0 = phi i64 [ %i.s, %_ZNSt10_HashtableIPKhS1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb0ELb1ELb1EEEE9_M_rehashEmRKm.exit ], [ %1, %bb.a ]
  %i.t = load ptr, ptr %0, align 8, !tbaa !49     ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.0 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !185  ; 2 uses
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !53
  store ptr %i.w, ptr %3, align 8, !tbaa !53
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !185
  store ptr %3, ptr %i.x, align 8, !tbaa !53
  br label %_ZNSt10_HashtableIPKhS1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb0ELb1ELb1EEEE22_M_insert_bucket_beginEmPNS3_10_Hash_nodeIS1_Lb0EEE.exit

bb.j:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !52
  store ptr %i.z, ptr %3, align 8, !tbaa !53
  store ptr %3, ptr %i.y, align 8, !tbaa !52
  %i.aa = load ptr, ptr %3, align 8, !tbaa !53    ; 2 uses
  %.not11.i = icmp eq ptr %i.aa, null
  br i1 %.not11.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load i64, ptr %i.d, align 8, !tbaa !50
  %i.ad = load ptr, ptr %i.ab, align 8, !tbaa !74
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = urem i64 %i.ae, %i.ac
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.af
  store ptr %3, ptr %i.ag, align 8, !tbaa !185
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  store ptr %i.y, ptr %i.u, align 8, !tbaa !185
  br label %_ZNSt10_HashtableIPKhS1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb0ELb1ELb1EEEE22_M_insert_bucket_beginEmPNS3_10_Hash_nodeIS1_Lb0EEE.exit

_ZNSt10_HashtableIPKhS1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb0ELb1ELb1EEEE22_M_insert_bucket_beginEmPNS3_10_Hash_nodeIS1_Lb0EEE.exit: ; preds = %bb.i, %bb.l
  %i.ah = load i64, ptr %i.f, align 8, !tbaa !184
  %i.ai = add i64 %i.ah, 1
  store i64 %i.ai, ptr %i.f, align 8, !tbaa !184
  ret ptr %3
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #20 ; 0 uses
  tail call void @_ZSt9terminatev() #23
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #5

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #6

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #6

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #7

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #8

declare { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16), i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt10_HashtableIPKhS1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb0ELb1ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq i64 %1, 1
  br i1 %i.a, label %bb.b, label %bb.c, !prof !164

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !311
  br label %_ZNSt10_HashtableIPKhS1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.c, label %bb.d, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIPKhLb0EEEEE19_M_allocate_bucketsEm.exit.i, !prof !164

bb.d:                                             ; preds = %bb.c
  %i.d = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.d, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #24
  unreachable

bb.f:                                             ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #24
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIPKhLb0EEEEE19_M_allocate_bucketsEm.exit.i: ; preds = %bb.c
  %i.e = shl nuw nsw i64 %1, 3                    ; 2 uses
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #22 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.f, i8 0, i64 %i.e, i1 false)
  br label %_ZNSt10_HashtableIPKhS1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit

_ZNSt10_HashtableIPKhS1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit: ; preds = %bb.b, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIPKhLb0EEEEE19_M_allocate_bucketsEm.exit.i
  %.0.i = phi ptr [ %i.b, %bb.b ], [ %i.f, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIPKhLb0EEEEE19_M_allocate_bucketsEm.exit.i ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !52   ; 2 uses
  store ptr null, ptr %i.g, align 8, !tbaa !52
  %.not29 = icmp eq ptr %i.h, null
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt10_HashtableIPKhS1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit, %bb.j
  %.031 = phi i64 [ %.1, %bb.j ], [ 0, %_ZNSt10_HashtableIPKhS1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 2 uses
  %.02530 = phi ptr [ %i.i, %bb.j ], [ %i.h, %_ZNSt10_HashtableIPKhS1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 8 uses
  %i.i = load ptr, ptr %.02530, align 8, !tbaa !53 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.02530, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !74
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = urem i64 %i.l, %1                        ; 3 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.m ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !185  ; 2 uses
  %.not27 = icmp eq ptr %i.o, null
  br i1 %.not27, label %bb.g, label %bb.i

bb.g:                                             ; preds = %.lr.ph
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !52
  store ptr %i.p, ptr %.02530, align 8, !tbaa !53
  store ptr %.02530, ptr %i.g, align 8, !tbaa !52
  store ptr %i.g, ptr %i.n, align 8, !tbaa !185
  %i.q = load ptr, ptr %.02530, align 8, !tbaa !53
  %.not28 = icmp eq ptr %i.q, null
  br i1 %.not28, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %.031
  store ptr %.02530, ptr %i.r, align 8, !tbaa !185
  br label %bb.j

bb.i:                                             ; preds = %.lr.ph
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !53
  store ptr %i.s, ptr %.02530, align 8, !tbaa !53
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !185
  store ptr %.02530, ptr %i.t, align 8, !tbaa !53
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.h, %bb.i
  %.1 = phi i64 [ %.031, %bb.i ], [ %i.m, %bb.h ], [ %i.m, %bb.g ]
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !310

._crit_edge:                                      ; preds = %bb.j, %_ZNSt10_HashtableIPKhS1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit
  %i.u = load ptr, ptr %0, align 8, !tbaa !49     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt10_HashtableIPKhS1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb0ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.k

bb.k:                                             ; preds = %._crit_edge
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !50
  %i.z = shl i64 %i.y, 3
  tail call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.z) #21
  br label %_ZNSt10_HashtableIPKhS1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb0ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableIPKhS1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb0ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %._crit_edge, %bb.k
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.aa, align 8, !tbaa !50
  store ptr %.0.i, ptr %0, align 8, !tbaa !49
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

declare noundef ptr @_ZN5arrow19default_memory_poolEv() local_unnamed_addr #9

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZN5arrow15VisitTypeInlineINS_4util12_GLOBAL__N_118GetByteRangesArrayEJEEENS_6StatusERKNS_8DataTypeEPT_DpOT0_(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr nofree noundef nonnull readonly captures(none) %2) unnamed_addr #11 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %4 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %5 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %6 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %7 = alloca %"struct.arrow::util::(anonymous namespace)::GetByteRangesArray", align 8 ; 8 uses
  %8 = alloca %"struct.arrow::util::(anonymous namespace)::GetByteRangesArray", align 8 ; 7 uses
  %9 = alloca %"struct.arrow::ArraySpan", align 8 ; 13 uses
  %10 = alloca %"struct.arrow::util::(anonymous namespace)::GetByteRangesArray", align 8 ; 8 uses
  %11 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %12 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %13 = alloca %"class.std::shared_ptr.195", align 8 ; 8 uses
  %14 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %15 = alloca %"class.std::shared_ptr.195", align 8 ; 7 uses
  %16 = alloca %"class.std::vector.28", align 8   ; 10 uses
  %17 = alloca %"class.std::allocator.30", align 1 ; 4 uses
  %18 = alloca %"class.std::vector.28", align 8   ; 10 uses
  %19 = alloca %"class.std::allocator.30", align 1 ; 4 uses
  %20 = alloca %"struct.arrow::util::(anonymous namespace)::GetByteRangesArray", align 8 ; 9 uses
  %21 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %22 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %23 = alloca %"class.std::shared_ptr.195", align 8 ; 8 uses
  %24 = alloca %"struct.arrow::util::(anonymous namespace)::GetByteRangesArray", align 8 ; 8 uses
  %25 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %26 = alloca %"struct.arrow::util::(anonymous namespace)::GetByteRangesArray", align 8 ; 8 uses
  %27 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %28 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %29 = alloca %"struct.arrow::util::(anonymous namespace)::GetByteRangesArray", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load i32, ptr %i.a, align 8, !tbaa !183
  switch i32 %i.b, label %bb.ch [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.d
    i32 2, label %bb.e
    i32 5, label %bb.f
    i32 4, label %bb.g
    i32 7, label %bb.h
    i32 6, label %bb.i
    i32 9, label %bb.j
    i32 8, label %bb.k
    i32 10, label %bb.l
    i32 11, label %bb.m
    i32 12, label %bb.n
    i32 13, label %bb.o
    i32 39, label %bb.p
    i32 14, label %bb.q
    i32 40, label %bb.r
    i32 34, label %bb.s
    i32 35, label %bb.t
    i32 15, label %bb.u
    i32 33, label %bb.v
    i32 16, label %bb.w
    i32 17, label %bb.x
    i32 18, label %bb.y
    i32 19, label %bb.z
    i32 20, label %bb.aa
    i32 37, label %bb.ab
    i32 21, label %bb.ac
    i32 22, label %bb.ad
    i32 43, label %bb.ae
    i32 44, label %bb.af
    i32 23, label %bb.ag
    i32 24, label %bb.ah
    i32 25, label %bb.ai
    i32 36, label %_ZN5arrow6StatusD2Ev.exit.i
    i32 41, label %bb.ak
    i32 42, label %bb.al
    i32 30, label %bb.am
    i32 32, label %_ZN5arrow6StatusD2Ev.exit107
    i32 26, label %.preheader
    i32 27, label %bb.ao
    i32 28, label %bb.az
    i32 29, label %bb.ca
    i32 38, label %bb.cb
    i32 31, label %bb.cg
  ]

.preheader:                                       ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !159
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !157  ; 2 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = lshr exact i64 %i.i, 4
  %i.k = trunc i64 %i.j to i32
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %_ZN5arrow6StatusD2Ev.exit113.lr.ph, label %._crit_edge192

_ZN5arrow6StatusD2Ev.exit113.lr.ph:               ; preds = %.preheader
  %i.m = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %26, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %26, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %26, i64 40
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 40
  br label %_ZN5arrow6StatusD2Ev.exit113

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !140, !alias.scope !373
  br label %_ZNK5arrow4util12_GLOBAL__N_118GetByteRangesArray13VisitBaseListINS_13LargeListTypeEEENS_6StatusERKT_.exit

bb.c:                                             ; preds = %bb.a
  tail call fastcc void @_ZNK5arrow4util12_GLOBAL__N_118GetByteRangesArray5VisitERKNS_14FixedWidthTypeE(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(72) %1)
  br label %_ZNK5arrow4util12_GLOBAL__N_118GetByteRangesArray13VisitBaseListINS_13LargeListTypeEEENS_6StatusERKT_.exit

bb.d:                                             ; preds = %bb.a
  tail call fastcc void @_ZNK5arrow4util12_GLOBAL__N_118GetByteRangesArray5VisitERKNS_14FixedWidthTypeE(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(72) %1)
  br label %_ZNK5arrow4util12_GLOBAL__N_118GetByteRangesArray13VisitBaseListINS_13LargeListTypeEEENS_6StatusERKT_.exit

bb.e:                                             ; preds = %bb.a
  tail call fastcc void @_ZNK5arrow4util12_GLOBAL__N_118GetByteRangesArray5VisitERKNS_14FixedWidthTypeE(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(72) %1)
  br label %_ZNK5arrow4util12_GLOBAL__N_118GetByteRangesArray13VisitBaseListINS_13LargeListTypeEEENS_6StatusERKT_.exit

bb.f:                                             ; preds = %bb.a
  tail call fastcc void @_ZNK5arrow4util12_GLOBAL__N_118GetByteRangesArray5VisitERKNS_14FixedWidthTypeE(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(72) %1)
  br label %_ZNK5arrow4util12_GLOBAL__N_118GetByteRangesArray13VisitBaseListINS_13LargeListTypeEEENS_6StatusERKT_.exit

bb.g:                                             ; preds = %bb.a
  tail call fastcc void @_ZNK5arrow4util12_GLOBAL__N_118GetByteRangesArray5VisitERKNS_14FixedWidthTypeE(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(72) %1)
  br label %_ZNK5arrow4util12_GLOBAL__N_118GetByteRangesArray13VisitBaseListINS_13LargeListTypeEEENS_6StatusERKT_.exit

bb.h:                                             ; preds = %bb.a
  tail call fastcc void @_ZNK5arrow4util12_GLOBAL__N_118GetByteRangesArray5VisitERKNS_14FixedWidthTypeE(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(72) %1)
  br label %_ZNK5arrow4util12_GLOBAL__N_118GetByteRangesArray13VisitBaseListINS_13LargeListTypeEEENS_6StatusERKT_.exit

bb.i:                                             ; preds = %bb.a
  tail call fastcc void @_ZNK5arrow4util12_GLOBAL__N_118GetByteRangesArray5VisitERKNS_14FixedWidthTypeE(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(72) %1)
  br label %_ZNK5arrow4util12_GLOBAL__N_118GetByteRangesArray13VisitBaseListINS_13LargeListTypeEEENS_6StatusERKT_.exit

bb.j:                                             ; preds = %bb.a
  tail call fastcc void @_ZNK5arrow4util12_GLOBAL__N_118GetByteRangesArray5VisitERKNS_14FixedWidthTypeE(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(72) %1)
  br label %_ZNK5arrow4util12_GLOBAL__N_118GetByteRangesArray13VisitBaseListINS_13LargeListTypeEEENS_6StatusERKT_.exit

bb.k:                                             ; preds = %bb.a
  tail call fastcc void @_ZNK5arrow4util12_GLOBAL__N_118GetByteRangesArray5VisitERKNS_14FixedWidthTypeE(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(72) %1)
  br label %_ZNK5arrow4util12_GLOBAL__N_118GetByteRangesArray13VisitBaseListINS_13LargeListTypeEEENS_6StatusERKT_.exit

bb.l:                                             ; preds = %bb.a
  tail call fastcc void @_ZNK5arrow4util12_GLOBAL__N_118GetByteRangesArray5VisitERKNS_14FixedWidthTypeE(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(72) %1)
  br label %_ZNK5arrow4util12_GLOBAL__N_118GetByteRangesArray13VisitBaseListINS_13LargeListTypeEEENS_6StatusERKT_.exit

bb.m:                                             ; preds = %bb.a
  tail call fastcc void @_ZNK5arrow4util12_GLOBAL__N_118GetByteRangesArray5VisitERKNS_14FixedWidthTypeE(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(72) %1)
  br label %_ZNK5arrow4util12_GLOBAL__N_118GetByteRangesArray13VisitBaseListINS_13LargeListTypeEEENS_6StatusERKT_.exit

bb.n:                                             ; preds = %bb.a
  tail call fastcc void @_ZNK5arrow4util12_GLOBAL__N_118GetByteRangesArray5VisitERKNS_14FixedWidthTypeE(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(72) %1)
  br label %_ZNK5arrow4util12_GLOBAL__N_118GetByteRangesArray13VisitBaseListINS_13LargeListTypeEEENS_6StatusERKT_.exit

bb.o:                                             ; preds = %bb.a
  tail call fastcc void @_ZNK5arrow4util12_GLOBAL__N_118GetByteRangesArray5VisitERKNS_10BinaryTypeE(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %2)
  br label %_ZNK5arrow4util12_GLOBAL__N_118GetByteRangesArray13VisitBaseListINS_13LargeListTypeEEENS_6StatusERKT_.exit

bb.p:                                             ; preds = %bb.a
  tail call fastcc void @_ZNK5arrow4util12_GLOBAL__N_118GetByteRangesArray5VisitERKNS_8DataTypeE(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(72) %1)
  br label %_ZNK5arrow4util12_GLOBAL__N_118GetByteRangesArray13VisitBaseListINS_13LargeListTypeEEENS_6StatusERKT_.exit

bb.q:                                             ; preds = %bb.a
  tail call fastcc void @_ZNK5arrow4util12_GLOBAL__N_118GetByteRangesArray5VisitERKNS_10BinaryTypeE(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %2)
  br label %_ZNK5arrow4util12_GLOBAL__N_118GetByteRangesArray13VisitBaseListINS_13LargeListTypeEEENS_6StatusERKT_.exit

bb.r:                                             ; preds = %bb.a
  tail call fastcc void @_ZNK5arrow4util12_GLOBAL__N_118GetByteRangesArray5VisitERKNS_8DataTypeE(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(72) %1)
  br label %_ZNK5arrow4util12_GLOBAL__N_118GetByteRangesArray13VisitBaseListINS_13LargeListTypeEEENS_6StatusERKT_.exit

bb.s:                                             ; preds = %bb.a
  tail call fastcc void @_ZNK5arrow4util12_GLOBAL__N_118GetByteRangesArray5VisitERKNS_15LargeBinaryTypeE(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %2)
  br label %_ZNK5arrow4util12_GLOBAL__N_118GetByteRangesArray13VisitBaseListINS_13LargeListTypeEEENS_6StatusERKT_.exit

bb.t:                                             ; preds = %bb.a
  tail call fastcc void @_ZNK5arrow4util12_GLOBAL__N_118GetByteRangesArray5VisitERKNS_15LargeBinaryTypeE(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %2)
  br label %_ZNK5arrow4util12_GLOBAL__N_118GetByteRangesArray13VisitBaseListINS_13LargeListTypeEEENS_6StatusERKT_.exit

bb.u:                                             ; preds = %bb.a
  tail call fastcc void @_ZNK5arrow4util12_GLOBAL__N_118GetByteRangesArray5VisitERKNS_14FixedWidthTypeE(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(72) %1)
  br label %_ZNK5arrow4util12_GLOBAL__N_118GetByteRangesArray13VisitBaseListINS_13LargeListTypeEEENS_6StatusERKT_.exit

bb.v:                                             ; preds = %bb.a
  tail call fastcc void @_ZNK5arrow4util12_GLOBAL__N_118GetByteRangesArray5VisitERKNS_14FixedWidthTypeE(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(72) %1)
  br label %_ZNK5arrow4util12_GLOBAL__N_118GetByteRangesArray13VisitBaseListINS_13LargeListTypeEEENS_6StatusERKT_.exit

bb.w:                                             ; preds = %bb.a
  tail call fastcc void @_ZNK5arrow4util12_GLOBAL__N_118GetByteRangesArray5VisitERKNS_14FixedWidthTypeE(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(72) %1)
  br label %_ZNK5arrow4util12_GLOBAL__N_118GetByteRangesArray13VisitBaseListINS_13LargeListTypeEEENS_6StatusERKT_.exit

bb.x:                                             ; preds = %bb.a
  tail call fastcc void @_ZNK5arrow4util12_GLOBAL__N_118GetByteRangesArray5VisitERKNS_14FixedWidthTypeE(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(72) %1)
  br label %_ZNK5arrow4util12_GLOBAL__N_118GetByteRangesArray13VisitBaseListINS_13LargeListTypeEEENS_6StatusERKT_.exit

bb.y:                                             ; preds = %bb.a
  tail call fastcc void @_ZNK5arrow4util12_GLOBAL__N_118GetByteRangesArray5VisitERKNS_14FixedWidthTypeE(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(72) %1)
  br label %_ZNK5arrow4util12_GLOBAL__N_118GetByteRangesArray13VisitBaseListINS_13LargeListTypeEEENS_6StatusERKT_.exit

bb.z:                                             ; preds = %bb.a
  tail call fastcc void @_ZNK5arrow4util12_GLOBAL__N_118GetByteRangesArray5VisitERKNS_14FixedWidthTypeE(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(72) %1)
end_hunk_1
