Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/pattern?download=true
inline.NumInlined: 2769
inline.NumDeleted: 1670
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZNK5boost4urls6detail17ip_literal_rule_t5parseERPKcS4_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  br label %_ZNKR5boost6system6resultINS_4urls6detail17ipv6_addrz_rule_t10value_typeENS0_10error_codeEE5errorEv.exit

bb.p:                                             ; preds = %_ZNKR5boost6system6resultIvNS0_10error_codeEE5errorEv.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  %i.ca = icmp eq i8 %.sroa.1112.8.copyload.i, 2
  br i1 %i.ca, label %_ZNKR5boost6system6resultINS_4urls6detail17ipv6_addrz_rule_t10value_typeENS0_10error_codeEE5errorEv.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  br label %_ZNKR5boost6system6resultINS_4urls6detail17ipv6_addrz_rule_t10value_typeENS0_10error_codeEE5errorEv.exit

_ZNKR5boost6system6resultINS_4urls6detail17ipv6_addrz_rule_t10value_typeENS0_10error_codeEE5errorEv.exit: ; preds = %bb.p, %.thread90, %bb.q
  %.sroa.059.0 = phi i64 [ 0, %bb.q ], [ %.sroa.07.sroa.0.0.ph.i.i.i.i.i.i.i, %.thread90 ], [ %.sroa.5.8.copyload.i, %bb.p ]
  %.sroa.560.0 = phi ptr [ null, %bb.q ], [ @_ZN5boost4urls7grammar6detail9error_catE, %.thread90 ], [ %.sroa.9.8.copyload.i, %bb.p ]
  %.sroa.661.0 = phi i64 [ 0, %bb.q ], [ %.sink24.i.ph.i.i.i.i.i.i.i, %.thread90 ], [ %.sroa.10.8.copyload.i, %bb.p ]
  store i64 %.sroa.059.0, ptr %0, align 8
  %.sroa.560.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.560.0, ptr %.sroa.560.0..sroa_idx, align 8, !tbaa !17
  %.sroa.661.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.661.0, ptr %.sroa.661.0..sroa_idx, align 8, !tbaa !12
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 2, ptr %i.cb, align 8, !tbaa !73
  br label %bb.ab

bb.r:                                             ; preds = %_ZNKR5boost6system6resultINS_4core17basic_string_viewIcEENS0_10error_codeEE5errorEv.exit.i.i.i.i.i.i.i, %_ZNKR5boost6system6resultINS_4core17basic_string_viewIcEENS0_10error_codeEE5errorEv.exit.thread.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  store i8 1, ptr %0, align 8, !tbaa !60
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i64 %.sroa.5.8.copyload.i, ptr %.sroa.9.0..sroa_idx, align 1
  %.sroa.9.sroa.8.0..sroa.9.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  store ptr %.sroa.9.8.copyload.i, ptr %.sroa.9.sroa.8.0..sroa.9.0..sroa_idx.sroa_idx, align 1, !tbaa !17
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cc, i8 0, i64 16, i1 false)
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 1, ptr %i.cd, align 8, !tbaa !73
  br label %bb.ab

bb.s:                                             ; preds = %_ZNKR5boost6system6resultINS_4core17basic_string_viewIcEENS0_10error_codeEE5errorEv.exit.i.i.i.i.i.i.i.i, %_ZNKR5boost6system6resultINS_4core17basic_string_viewIcEENS0_10error_codeEE5errorEv.exit.thread.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  store i8 1, ptr %0, align 8, !tbaa !60
  %.sroa.9.0..sroa_idx39 = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i64 %.sroa.5.8.copyload.i.i, ptr %.sroa.9.0..sroa_idx39, align 1
  %.sroa.9.sroa.8.0..sroa.9.0..sroa_idx39.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  store ptr %.sroa.9.8.copyload.i.i, ptr %.sroa.9.sroa.8.0..sroa.9.0..sroa_idx39.sroa_idx, align 1, !tbaa !17
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ce, i8 0, i64 16, i1 false)
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 1, ptr %i.cf, align 8, !tbaa !73
  br label %bb.ab

bb.t:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  store i8 93, ptr %12, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22, !noalias !336
  store ptr %12, ptr %6, align 8, !tbaa !337, !noalias !336
  %i.cg = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cg, i8 0, i64 24, i1 false), !noalias !336
  %i.ch = getelementptr inbounds nuw i8, ptr %6, i64 56
  store i8 2, ptr %i.ch, align 8, !tbaa !338, !noalias !336
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22, !noalias !336
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22, !noalias !336
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22, !noalias !336
  invoke void @_ZN5boost4urls7grammar6detail14parse_sequenceILb0ENS0_6detail16ipvfuture_rule_tEJNS1_22implementation_defined14squelch_rule_tINS6_13ch_delim_ruleEEEEE5applyILm0ELm0EEEvRPKcSD_RKSt17integral_constantImXT_EERKSF_ImXT0_EERKSF_IbLb0EE(ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.v unwind label %bb.u, !noalias !336

bb.u:                                             ; preds = %bb.t
  %i.ci = landingpad { ptr, i32 }
          catch ptr null
  %i.cj = extractvalue { ptr, i32 } %i.ci, 0
  call void @__clang_call_terminate(ptr %i.cj) #23, !noalias !336
  unreachable

bb.v:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22, !noalias !336
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22, !noalias !336
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22, !noalias !336
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(48) %i.cg, i64 48, i1 false)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 56
  %.sroa.5.0.copyload = load i8, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22, !noalias !336
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  %i.ck = icmp eq i8 %.sroa.5.0.copyload, 1
  br i1 %i.ck, label %bb.z, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  %i.cl = icmp eq i8 %.sroa.5.0.copyload, 2
  br i1 %i.cl, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0, i64 24, i1 false), !tbaa.struct !74
  br label %_ZNKR5boost6system6resultINS_4urls6detail16ipvfuture_rule_t10value_typeENS0_10error_codeEE5errorEv.exit

bb.y:                                             ; preds = %bb.w
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false), !alias.scope !339
  br label %_ZNKR5boost6system6resultINS_4urls6detail16ipvfuture_rule_t10value_typeENS0_10error_codeEE5errorEv.exit

_ZNKR5boost6system6resultINS_4urls6detail16ipvfuture_rule_t10value_typeENS0_10error_codeEE5errorEv.exit: ; preds = %bb.x, %bb.y
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(24) %13, i64 24, i1 false), !tbaa.struct !74
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 2, ptr %i.cm, align 8, !tbaa !73
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  br label %bb.aa

bb.z:                                             ; preds = %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.11.7..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0, i64 16, i1 false), !tbaa.struct !83
  %.sroa.11.0..sroa_idx42 = getelementptr inbounds nuw i8, ptr %0, i64 17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %0, i8 0, i64 17, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.11.0..sroa_idx42, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.11, i64 23, i1 false), !tbaa.struct !340
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 1, ptr %i.cn, align 8, !tbaa !73
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %_ZNKR5boost6system6resultINS_4urls6detail16ipvfuture_rule_t10value_typeENS0_10error_codeEE5errorEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.s, %bb.r, %_ZNKR5boost6system6resultINS_4urls6detail17ipv6_addrz_rule_t10value_typeENS0_10error_codeEE5errorEv.exit, %_ZNKR5boost6system6resultINS_4core17basic_string_viewIcEENS0_10error_codeEE5errorEv.exit, %bb.aa, %_ZN5boost6system10error_codeC2ERKS1_PKNS_15source_locationE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11)
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK5boost4urls22implementation_defined19ipv6_address_rule_t5parseERPKcS4_(ptr dead_on_unwind noalias writable sret(%"class.boost::system::result.119") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.std::array", align 1       ; 21 uses
  %.sroa.11 = alloca [22 x i8], align 2           ; 7 uses
  %5 = alloca %"class.boost::system::result.181", align 8 ; 6 uses
  %.sroa.5372 = alloca [22 x i8], align 2         ; 5 uses
  %6 = alloca %"class.boost::system::result.88", align 8 ; 7 uses
  %7 = alloca %"class.boost::system::error_code", align 8 ; 5 uses
  %8 = alloca %"class.boost::urls::ipv4_address", align 4 ; 4 uses
  %9 = alloca %"class.boost::system::result.181", align 8 ; 10 uses
  %.sroa.5 = alloca [22 x i8], align 2            ; 5 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !16     ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11)
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 2
  %.sroa.11355.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 24
  %.sroa.11.0..sroa_idx352 = getelementptr inbounds nuw i8, ptr %9, i64 2 ; 2 uses
  %.sroa.11355.0..sroa_idx356 = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 2 uses
  %i.b = icmp eq ptr %i.a, %3
  br i1 %i.b, label %.loopexit, label %.lr.ph.peel

.lr.ph.peel:                                      ; preds = %bb.a
  %i.c = load i8, ptr %i.a, align 1, !tbaa !17
  switch i8 %i.c, label %_ZN5boost4urls7grammar12hexdig_valueEc.exit.thread.thread.peel [
    i8 58, label %bb.b
    i8 46, label %.loopexit330
  ]

bb.b:                                             ; preds = %.lr.ph.peel
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 3 uses
  store ptr %i.d, ptr %2, align 8, !tbaa !16
  %i.e = icmp eq ptr %i.d, %3
  br i1 %i.e, label %.loopexit331, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !17
  %i.g = icmp eq i8 %i.f, 58
  br i1 %i.g, label %.peel.next.peel, label %.loopexit332.thread

.peel.next.peel:                                  ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 2 ; 25 uses
  store ptr %i.h, ptr %2, align 8, !tbaa !16
  %i.i = icmp eq ptr %i.h, %3
  br i1 %i.i, label %.thread215.thread, label %bb.d

bb.d:                                             ; preds = %.peel.next.peel
  %i.j = load i8, ptr %i.h, align 1, !tbaa !17
  switch i8 %i.j, label %.thread215.thread [
    i8 58, label %.loopexit603
    i8 46, label %.thread395
    i8 48, label %_ZN5boost4urls7grammar12hexdig_valueEc.exit.thread.thread.peel
    i8 49, label %_ZN5boost4urls7grammar12hexdig_valueEc.exit.thread.thread.peel
    i8 50, label %_ZN5boost4urls7grammar12hexdig_valueEc.exit.thread.thread.peel
    i8 51, label %_ZN5boost4urls7grammar12hexdig_valueEc.exit.thread.thread.peel
    i8 52, label %_ZN5boost4urls7grammar12hexdig_valueEc.exit.thread.thread.peel
    i8 53, label %_ZN5boost4urls7grammar12hexdig_valueEc.exit.thread.thread.peel
    i8 54, label %_ZN5boost4urls7grammar12hexdig_valueEc.exit.thread.thread.peel
    i8 55, label %_ZN5boost4urls7grammar12hexdig_valueEc.exit.thread.thread.peel
    i8 56, label %_ZN5boost4urls7grammar12hexdig_valueEc.exit.thread.thread.peel
    i8 57, label %_ZN5boost4urls7grammar12hexdig_valueEc.exit.thread.thread.peel
    i8 97, label %_ZN5boost4urls7grammar12hexdig_valueEc.exit.thread.thread.peel
    i8 65, label %_ZN5boost4urls7grammar12hexdig_valueEc.exit.thread.thread.peel
    i8 98, label %_ZN5boost4urls7grammar12hexdig_valueEc.exit.thread.thread.peel
    i8 66, label %_ZN5boost4urls7grammar12hexdig_valueEc.exit.thread.thread.peel
    i8 99, label %_ZN5boost4urls7grammar12hexdig_valueEc.exit.thread.thread.peel
    i8 67, label %_ZN5boost4urls7grammar12hexdig_valueEc.exit.thread.thread.peel
    i8 100, label %_ZN5boost4urls7grammar12hexdig_valueEc.exit.thread.thread.peel
    i8 68, label %_ZN5boost4urls7grammar12hexdig_valueEc.exit.thread.thread.peel
    i8 101, label %_ZN5boost4urls7grammar12hexdig_valueEc.exit.thread.thread.peel
    i8 69, label %_ZN5boost4urls7grammar12hexdig_valueEc.exit.thread.thread.peel
    i8 102, label %_ZN5boost4urls7grammar12hexdig_valueEc.exit.thread.thread.peel
    i8 70, label %_ZN5boost4urls7grammar12hexdig_valueEc.exit.thread.thread.peel
  ]

_ZN5boost4urls7grammar12hexdig_valueEc.exit.thread.thread.peel: ; preds = %.lr.ph.peel, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d
  %.0286411.peel = phi i32 [ 7, %bb.d ], [ 7, %bb.d ], [ 7, %bb.d ], [ 7, %bb.d ], [ 7, %bb.d ], [ 7, %bb.d ], [ 7, %bb.d ], [ 7, %bb.d ], [ 7, %bb.d ], [ 7, %bb.d ], [ 7, %bb.d ], [ 7, %bb.d ], [ 7, %bb.d ], [ 7, %bb.d ], [ 7, %bb.d ], [ 7, %bb.d ], [ 7, %bb.d ], [ 7, %bb.d ], [ 7, %bb.d ], [ 7, %bb.d ], [ 7, %bb.d ], [ 7, %bb.d ], [ 8, %.lr.ph.peel ] ; 2 uses
  %.073297410.peel = phi i32 [ 7, %bb.d ], [ 7, %bb.d ], [ 7, %bb.d ], [ 7, %bb.d ], [ 7, %bb.d ], [ 7, %bb.d ], [ 7, %bb.d ], [ 7, %bb.d ], [ 7, %bb.d ], [ 7, %bb.d ], [ 7, %bb.d ], [ 7, %bb.d ], [ 7, %bb.d ], [ 7, %bb.d ], [ 7, %bb.d ], [ 7, %bb.d ], [ 7, %bb.d ], [ 7, %bb.d ], [ 7, %bb.d ], [ 7, %bb.d ], [ 7, %bb.d ], [ 7, %bb.d ], [ -1, %.lr.ph.peel ] ; 3 uses
  %i.k = phi ptr [ %i.h, %bb.d ], [ %i.h, %bb.d ], [ %i.h, %bb.d ], [ %i.h, %bb.d ], [ %i.h, %bb.d ], [ %i.h, %bb.d ], [ %i.h, %bb.d ], [ %i.h, %bb.d ], [ %i.h, %bb.d ], [ %i.h, %bb.d ], [ %i.h, %bb.d ], [ %i.h, %bb.d ], [ %i.h, %bb.d ], [ %i.h, %bb.d ], [ %i.h, %bb.d ], [ %i.h, %bb.d ], [ %i.h, %bb.d ], [ %i.h, %bb.d ], [ %i.h, %bb.d ], [ %i.h, %bb.d ], [ %i.h, %bb.d ], [ %i.h, %bb.d ], [ %i.a, %.lr.ph.peel ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  call void @_ZNK5boost4urls6detail10h16_rule_t5parseERPKcS4_(ptr dead_on_unwind nonnull writable sret(%"class.boost::system::result.181") align 8 %9, ptr noundef nonnull align 1 dereferenceable(1) @_ZN5boost4urls6detailL8h16_ruleE, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3) #22
  %.sroa.0345.0.copyload347.peel = load i16, ptr %9, align 8 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %.sroa.11, ptr noundef nonnull align 2 dereferenceable(22) %.sroa.11.0..sroa_idx352, i64 22, i1 false)
  %.sroa.11355.0.copyload357.peel = load i8, ptr %.sroa.11355.0..sroa_idx356, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  %i.l = icmp eq i8 %.sroa.11355.0.copyload357.peel, 1
  br i1 %i.l, label %bb.e, label %.loopexit605

bb.e:                                             ; preds = %_ZN5boost4urls7grammar12hexdig_valueEc.exit.thread.thread.peel
  %.sroa.0345.sroa.0.0.extract.trunc360.peel = trunc i16 %.sroa.0345.0.copyload347.peel to i8
  %.sroa.0345.sroa.9.0.extract.shift364.peel = lshr i16 %.sroa.0345.0.copyload347.peel, 8
  %.sroa.0345.sroa.9.0.extract.trunc365.peel = trunc nuw i16 %.sroa.0345.sroa.9.0.extract.shift364.peel to i8
  %i.m = shl nuw nsw i32 %.0286411.peel, 1        ; 2 uses
  %i.n = sub nsw i32 16, %i.m
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 %i.o
  store i8 %.sroa.0345.sroa.0.0.extract.trunc360.peel, ptr %i.p, align 1, !tbaa !17
  %i.q = sub nsw i32 17, %i.m
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 %i.r
  store i8 %.sroa.0345.sroa.9.0.extract.trunc365.peel, ptr %i.s, align 1, !tbaa !17
  %i.t = add nsw i32 %.0286411.peel, -1           ; 3 uses
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %.thread209, label %.outer.backedge.peel

.outer.backedge.peel:                             ; preds = %bb.e
  %.promoted.pre.peel = load ptr, ptr %2, align 8, !tbaa !16 ; 2 uses
  %10 = icmp eq ptr %.promoted.pre.peel, %3
  br i1 %10, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.outer.backedge.peel, %.outer.backedge
  %.0.ph539 = phi i32 [ %.0.ph.be, %.outer.backedge ], [ %i.t, %.outer.backedge.peel ] ; 5 uses
  %.073.ph538 = phi i32 [ %.073298, %.outer.backedge ], [ %.073297410.peel, %.outer.backedge.peel ] ; 6 uses
  %.077.ph536 = phi ptr [ %.077.ph.be, %.outer.backedge ], [ %i.k, %.outer.backedge.peel ]
  %.promoted535 = phi ptr [ %.promoted.pre, %.outer.backedge ], [ %.promoted.pre.peel, %.outer.backedge.peel ] ; 4 uses
  %i.v = load i8, ptr %.promoted535, align 1, !tbaa !17
  switch i8 %i.v, label %_ZN5boost4urls7grammar12hexdig_valueEc.exit [
    i8 58, label %bb.f
    i8 46, label %.loopexit330
    i8 48, label %.loopexit604
    i8 49, label %.loopexit604
    i8 50, label %.loopexit604
    i8 51, label %.loopexit604
    i8 52, label %.loopexit604
    i8 53, label %.loopexit604
    i8 54, label %.loopexit604
    i8 55, label %.loopexit604
    i8 56, label %.loopexit604
    i8 57, label %.loopexit604
    i8 97, label %.loopexit604
    i8 65, label %.loopexit604
    i8 98, label %.loopexit604
    i8 66, label %.loopexit604
    i8 99, label %.loopexit604
    i8 67, label %.loopexit604
    i8 100, label %.loopexit604
    i8 68, label %.loopexit604
    i8 101, label %.loopexit604
    i8 69, label %.loopexit604
    i8 102, label %.loopexit604
    i8 70, label %.loopexit604
  ]

bb.f:                                             ; preds = %.lr.ph
  %i.w = getelementptr inbounds nuw i8, ptr %.promoted535, i64 1 ; 4 uses
  store ptr %i.w, ptr %2, align 8, !tbaa !16
  %i.x = icmp eq ptr %i.w, %3
  br i1 %i.x, label %.loopexit331, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = load i8, ptr %i.w, align 1, !tbaa !17
  %i.z = icmp eq i8 %i.y, 58
  br i1 %i.z, label %bb.h, label %.loopexit332

bb.h:                                             ; preds = %bb.g
  %i.aa = icmp eq i32 %.073.ph538, -1
  br i1 %i.aa, label %bb.i, label %.loopexit333

bb.i:                                             ; preds = %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %.promoted535, i64 2 ; 4 uses
  store ptr %i.ab, ptr %2, align 8, !tbaa !16
  %i.ac = add nsw i32 %.0.ph539, -1               ; 7 uses
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %.thread215.thread, label %.peel.next

.peel.next:                                       ; preds = %bb.i
  %i.ae = icmp eq ptr %i.ab, %3
  br i1 %i.ae, label %.thread215.thread, label %bb.k

.loopexit:                                        ; preds = %.outer.backedge.peel, %.outer.backedge, %bb.a
  %.073.ph.lcssa = phi i32 [ -1, %bb.a ], [ %.073297410.peel, %.outer.backedge.peel ], [ %.073298, %.outer.backedge ] ; 2 uses
  %.0.ph.lcssa = phi i32 [ 8, %bb.a ], [ %i.t, %.outer.backedge.peel ], [ %.0.ph.be, %.outer.backedge ]
  %.not = icmp eq i32 %.073.ph.lcssa, -1
  br i1 %.not, label %bb.j, label %.thread215

bb.j:                                             ; preds = %.loopexit
  %i.af = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost4urls7grammar6detail9error_catE, i64 8), align 8, !tbaa !59, !noalias !364
  %i.ag = and i64 %i.af, -2
  %switch.i.i.i.i = icmp eq i64 %i.ag, -5572340897628102704
  br i1 %switch.i.i.i.i, label %_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread, label %_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit

_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit: ; preds = %bb.j
  %i.ah = load ptr, ptr @_ZN5boost4urls7grammar6detail9error_catE, align 8, !tbaa !28, !noalias !364
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 48
  %i.aj = load ptr, ptr %i.ai, align 8, !noalias !364
  %i.ak = call noundef zeroext i1 %i.aj(ptr noundef nonnull align 8 dereferenceable(52) @_ZN5boost4urls7grammar6detail9error_catE, i32 noundef 5) #22, !noalias !364, !inline_history !1
  br i1 %i.ak, label %_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread, label %_ZN5boost6system10error_codeC2ERKS1_PKNS_15source_locationE.exit

_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread: ; preds = %bb.j, %_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit
  br label %_ZN5boost6system10error_codeC2ERKS1_PKNS_15source_locationE.exit

_ZN5boost6system10error_codeC2ERKS1_PKNS_15source_locationE.exit: ; preds = %_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit, %_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread
  %i.al = phi i64 [ 1, %_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread ], [ 0, %_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit ]
  %i.am = or disjoint i64 %i.al, ptrtoint (ptr @_ZZNK5boost4urls22implementation_defined19ipv6_address_rule_t5parseERPKcS4_E11loc__LINE__ to i64)
  store i64 5, ptr %0, align 8
  %.sroa.5190.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @_ZN5boost4urls7grammar6detail9error_catE, ptr %.sroa.5190.0..sroa_idx, align 8, !tbaa !17
  %.sroa.6191.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.am, ptr %.sroa.6191.0..sroa_idx, align 8, !tbaa !12
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 2, ptr %i.an, align 8, !tbaa !85
  br label %.thread203

bb.k:                                             ; preds = %.peel.next
  %i.ao = load i8, ptr %i.ab, align 1, !tbaa !17
  switch i8 %i.ao, label %.thread215.thread [
    i8 58, label %.loopexit603
    i8 46, label %.thread395
    i8 48, label %_ZN5boost4urls7grammar12hexdig_valueEc.exit.thread.thread
    i8 49, label %_ZN5boost4urls7grammar12hexdig_valueEc.exit.thread.thread
    i8 50, label %_ZN5boost4urls7grammar12hexdig_valueEc.exit.thread.thread
    i8 51, label %_ZN5boost4urls7grammar12hexdig_valueEc.exit.thread.thread
    i8 52, label %_ZN5boost4urls7grammar12hexdig_valueEc.exit.thread.thread
    i8 53, label %_ZN5boost4urls7grammar12hexdig_valueEc.exit.thread.thread
    i8 54, label %_ZN5boost4urls7grammar12hexdig_valueEc.exit.thread.thread
    i8 55, label %_ZN5boost4urls7grammar12hexdig_valueEc.exit.thread.thread
    i8 56, label %_ZN5boost4urls7grammar12hexdig_valueEc.exit.thread.thread
    i8 57, label %_ZN5boost4urls7grammar12hexdig_valueEc.exit.thread.thread
    i8 97, label %_ZN5boost4urls7grammar12hexdig_valueEc.exit.thread.thread
    i8 65, label %_ZN5boost4urls7grammar12hexdig_valueEc.exit.thread.thread
    i8 98, label %_ZN5boost4urls7grammar12hexdig_valueEc.exit.thread.thread
    i8 66, label %_ZN5boost4urls7grammar12hexdig_valueEc.exit.thread.thread
    i8 99, label %_ZN5boost4urls7grammar12hexdig_valueEc.exit.thread.thread
    i8 67, label %_ZN5boost4urls7grammar12hexdig_valueEc.exit.thread.thread
    i8 100, label %_ZN5boost4urls7grammar12hexdig_valueEc.exit.thread.thread
    i8 68, label %_ZN5boost4urls7grammar12hexdig_valueEc.exit.thread.thread
    i8 101, label %_ZN5boost4urls7grammar12hexdig_valueEc.exit.thread.thread
    i8 69, label %_ZN5boost4urls7grammar12hexdig_valueEc.exit.thread.thread
    i8 102, label %_ZN5boost4urls7grammar12hexdig_valueEc.exit.thread.thread
    i8 70, label %_ZN5boost4urls7grammar12hexdig_valueEc.exit.thread.thread
  ]

.loopexit603:                                     ; preds = %bb.k, %bb.d
  %.promoted535.lcssa547 = phi ptr [ %i.a, %bb.d ], [ %.promoted535, %bb.k ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.promoted535.lcssa547, i64 3 ; 3 uses
  store ptr %i.ap, ptr %2, align 8, !tbaa !16
  %i.aq = icmp eq ptr %i.ap, %3
  br i1 %i.aq, label %.loopexit331, label %bb.l

.loopexit331:                                     ; preds = %bb.b, %bb.f, %.loopexit603
  %i.ar = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost4urls7grammar6detail9error_catE, i64 8), align 8, !tbaa !59, !noalias !365
  %i.as = and i64 %i.ar, -2
  %switch.i.i.i.i92 = icmp eq i64 %i.as, -5572340897628102704
  br i1 %switch.i.i.i.i92, label %_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit95.thread, label %_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit95

_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit95: ; preds = %.loopexit331
  %i.at = load ptr, ptr @_ZN5boost4urls7grammar6detail9error_catE, align 8, !tbaa !28, !noalias !365
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 48
  %i.av = load ptr, ptr %i.au, align 8, !noalias !365
  %i.aw = call noundef zeroext i1 %i.av(ptr noundef nonnull align 8 dereferenceable(52) @_ZN5boost4urls7grammar6detail9error_catE, i32 noundef 5) #22, !noalias !365, !inline_history !1
  br i1 %i.aw, label %_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit95.thread, label %_ZN5boost6system10error_codeC2ERKS1_PKNS_15source_locationE.exit97

_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit95.thread: ; preds = %.loopexit331, %_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit95
  br label %_ZN5boost6system10error_codeC2ERKS1_PKNS_15source_locationE.exit97

_ZN5boost6system10error_codeC2ERKS1_PKNS_15source_locationE.exit97: ; preds = %_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit95, %_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit95.thread
  %i.ax = phi i64 [ 1, %_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit95.thread ], [ 0, %_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit95 ]
  %i.ay = or disjoint i64 %i.ax, ptrtoint (ptr @_ZZNK5boost4urls22implementation_defined19ipv6_address_rule_t5parseERPKcS4_E11loc__LINE___0 to i64)
  store i64 5, ptr %0, align 8
  %.sroa.5184.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @_ZN5boost4urls7grammar6detail9error_catE, ptr %.sroa.5184.0..sroa_idx, align 8, !tbaa !17
  %.sroa.6185.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ay, ptr %.sroa.6185.0..sroa_idx, align 8, !tbaa !12
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 2, ptr %i.az, align 8, !tbaa !85
  br label %.thread203

bb.l:                                             ; preds = %.loopexit603
  %i.ba = load i8, ptr %i.ap, align 1, !tbaa !17
  %i.bb = icmp eq i8 %i.ba, 58
  br i1 %i.bb, label %.loopexit333, label %.loopexit332.thread

.loopexit333:                                     ; preds = %bb.h, %bb.l
  %i.bc = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost4urls7grammar6detail9error_catE, i64 8), align 8, !tbaa !59, !noalias !366
  %i.bd = and i64 %i.bc, -2
  %switch.i.i.i.i98 = icmp eq i64 %i.bd, -5572340897628102704
  br i1 %switch.i.i.i.i98, label %_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit101.thread, label %_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit101

_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit101: ; preds = %.loopexit333
  %i.be = load ptr, ptr @_ZN5boost4urls7grammar6detail9error_catE, align 8, !tbaa !28, !noalias !366
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 48
  %i.bg = load ptr, ptr %i.bf, align 8, !noalias !366
  %i.bh = call noundef zeroext i1 %i.bg(ptr noundef nonnull align 8 dereferenceable(52) @_ZN5boost4urls7grammar6detail9error_catE, i32 noundef 5) #22, !noalias !366, !inline_history !1
  br i1 %i.bh, label %_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit101.thread, label %_ZN5boost6system10error_codeC2ERKS1_PKNS_15source_locationE.exit103

_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit101.thread: ; preds = %.loopexit333, %_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit101
  br label %_ZN5boost6system10error_codeC2ERKS1_PKNS_15source_locationE.exit103

_ZN5boost6system10error_codeC2ERKS1_PKNS_15source_locationE.exit103: ; preds = %_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit101, %_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit101.thread
  %i.bi = phi i64 [ 1, %_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit101.thread ], [ 0, %_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit101 ]
  %i.bj = or disjoint i64 %i.bi, ptrtoint (ptr @_ZZNK5boost4urls22implementation_defined19ipv6_address_rule_t5parseERPKcS4_E11loc__LINE___1 to i64)
  store i64 5, ptr %0, align 8
  %.sroa.5178.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @_ZN5boost4urls7grammar6detail9error_catE, ptr %.sroa.5178.0..sroa_idx, align 8, !tbaa !17
  %.sroa.6179.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.bj, ptr %.sroa.6179.0..sroa_idx, align 8, !tbaa !12
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 2, ptr %i.bk, align 8, !tbaa !85
  br label %.thread203

.loopexit332:                                     ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @_ZNK5boost4urls6detail10h16_rule_t5parseERPKcS4_(ptr dead_on_unwind nonnull writable sret(%"class.boost::system::result.181") align 8 %5, ptr noundef nonnull align 1 dereferenceable(1) @_ZN5boost4urls6detailL8h16_ruleE, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3) #22
  %.sroa.0345.0.copyload = load i16, ptr %5, align 8 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %.sroa.11, ptr noundef nonnull align 2 dereferenceable(22) %.sroa.11.0..sroa_idx, i64 22, i1 false)
  %.sroa.11355.0.copyload = load i8, ptr %.sroa.11355.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.bl = icmp eq i8 %.sroa.11355.0.copyload, 1
  br i1 %i.bl, label %bb.o, label %.loopexit602

.loopexit602:                                     ; preds = %.loopexit332
  %i.bm = icmp eq i8 %.sroa.11355.0.copyload, 2
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5372)
  br i1 %i.bm, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.loopexit602
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %.sroa.5372, ptr noundef nonnull align 2 dereferenceable(22) %.sroa.11, i64 22, i1 false), !tbaa.struct !367
  br label %_ZNKR5boost6system6resultINS_4urls6detail10h16_rule_t10value_typeENS0_10error_codeEE5errorEv.exit

bb.n:                                             ; preds = %.loopexit602
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %.sroa.5372, i8 0, i64 22, i1 false), !alias.scope !368
  br label %_ZNKR5boost6system6resultINS_4urls6detail10h16_rule_t10value_typeENS0_10error_codeEE5errorEv.exit

_ZNKR5boost6system6resultINS_4urls6detail10h16_rule_t10value_typeENS0_10error_codeEE5errorEv.exit: ; preds = %bb.m, %bb.n
  %.sroa.0371.0 = phi i16 [ %.sroa.0345.0.copyload, %bb.m ], [ 0, %bb.n ]
  store i16 %.sroa.0371.0, ptr %0, align 8
  %.sroa.5372.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %.sroa.5372.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(22) %.sroa.5372, i64 22, i1 false), !tbaa.struct !367
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 2, ptr %i.bn, align 8, !tbaa !85
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5372)
  br label %.thread203

bb.o:                                             ; preds = %.loopexit332
  %.sroa.0345.sroa.0.0.extract.trunc = trunc i16 %.sroa.0345.0.copyload to i8
  %.sroa.0345.sroa.9.0.extract.shift = lshr i16 %.sroa.0345.0.copyload, 8
  %.sroa.0345.sroa.9.0.extract.trunc = trunc nuw i16 %.sroa.0345.sroa.9.0.extract.shift to i8
  %i.bo = shl i32 %.0.ph539, 1                    ; 2 uses
  %i.bp = sub i32 16, %i.bo
  %i.bq = sext i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw i8, ptr %4, i64 %i.bq
  store i8 %.sroa.0345.sroa.0.0.extract.trunc, ptr %i.br, align 1, !tbaa !17
  %i.bs = sub i32 17, %i.bo
  %i.bt = sext i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw i8, ptr %4, i64 %i.bt
  store i8 %.sroa.0345.sroa.9.0.extract.trunc, ptr %i.bu, align 1, !tbaa !17
  %i.bv = add nsw i32 %.0.ph539, -1               ; 2 uses
  %i.bw = icmp eq i32 %i.bv, 0
  br i1 %i.bw, label %.thread209, label %.outer.backedge

.outer.backedge:                                  ; preds = %bb.o, %bb.ab
  %.073298 = phi i32 [ %i.ac, %bb.ab ], [ %.073.ph538, %bb.o ] ; 2 uses
  %.077.ph.be = phi ptr [ %i.ab, %bb.ab ], [ %i.w, %bb.o ]
  %.0.ph.be = phi i32 [ %i.fb, %bb.ab ], [ %i.bv, %bb.o ] ; 2 uses
  %.promoted.pre = load ptr, ptr %2, align 8, !tbaa !16 ; 2 uses
  %i.bx = icmp eq ptr %.promoted.pre, %3
  br i1 %i.bx, label %.loopexit, label %.lr.ph, !llvm.loop !349

.loopexit332.thread:                              ; preds = %bb.c, %bb.l
  %i.by = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost4urls7grammar6detail9error_catE, i64 8), align 8, !tbaa !59, !noalias !370
  %i.bz = and i64 %i.by, -2
  %switch.i.i.i.i106 = icmp eq i64 %i.bz, -5572340897628102704
  br i1 %switch.i.i.i.i106, label %_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit109.thread, label %_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit109

_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit109: ; preds = %.loopexit332.thread
  %i.ca = load ptr, ptr @_ZN5boost4urls7grammar6detail9error_catE, align 8, !tbaa !28, !noalias !370
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 48
  %i.cc = load ptr, ptr %i.cb, align 8, !noalias !370
  %i.cd = call noundef zeroext i1 %i.cc(ptr noundef nonnull align 8 dereferenceable(52) @_ZN5boost4urls7grammar6detail9error_catE, i32 noundef 5) #22, !noalias !370, !inline_history !1
  br i1 %i.cd, label %_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit109.thread, label %_ZN5boost6system10error_codeC2ERKS1_PKNS_15source_locationE.exit111

_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit109.thread: ; preds = %.loopexit332.thread, %_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit109
end_hunk_0
begin_hunk_1_@_ZNK5boost4urls22implementation_defined19ipv6_address_rule_t5parseERPKcS4_:bb.a
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 2, ptr %i.da, align 8, !tbaa !85
  br label %.thread203

bb.r:                                             ; preds = %bb.q
  %i.db = shl i32 %.0.ph539.lcssa, 1              ; 4 uses
  %i.dc = sub i32 14, %i.db
  %i.dd = sext i32 %i.dc to i64
  %i.de = getelementptr inbounds nuw i8, ptr %4, i64 %i.dd ; 3 uses
  %i.df = load i8, ptr %i.de, align 1, !tbaa !17
  %i.dg = zext i8 %i.df to i32
  %i.dh = shl nuw nsw i32 %i.dg, 8
  %i.di = getelementptr inbounds nuw i8, ptr %i.de, i64 1
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !17  ; 2 uses
  %i.dk = zext i8 %i.dj to i32                    ; 2 uses
  %i.dl = or disjoint i32 %i.dh, %i.dk
  %i.dm = icmp samesign ult i32 %i.dl, 598
  %i.dn = icmp ult i8 %i.dj, -96
  %or.cond.not.i = and i1 %i.dn, %i.dm
  %i.do = and i32 %i.dk, 14
  %i.dp = icmp samesign ult i32 %i.do, 10
  %.0.i = select i1 %or.cond.not.i, i1 %i.dp, i1 false
  br i1 %.0.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dq = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost4urls7grammar6detail9error_catE, i64 8), align 8, !tbaa !59, !noalias !373
  %i.dr = and i64 %i.dq, -2
  %switch.i.i.i.i124 = icmp eq i64 %i.dr, -5572340897628102704
  br i1 %switch.i.i.i.i124, label %_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit127.thread, label %_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit127

_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit127: ; preds = %bb.s
  %i.ds = load ptr, ptr @_ZN5boost4urls7grammar6detail9error_catE, align 8, !tbaa !28, !noalias !373
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 48
  %i.du = load ptr, ptr %i.dt, align 8, !noalias !373
  %i.dv = call noundef zeroext i1 %i.du(ptr noundef nonnull align 8 dereferenceable(52) @_ZN5boost4urls7grammar6detail9error_catE, i32 noundef 5) #22, !noalias !373, !inline_history !1
  br i1 %i.dv, label %_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit127.thread, label %_ZN5boost6system10error_codeC2ERKS1_PKNS_15source_locationE.exit129

_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit127.thread: ; preds = %bb.s, %_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit127
  br label %_ZN5boost6system10error_codeC2ERKS1_PKNS_15source_locationE.exit129

_ZN5boost6system10error_codeC2ERKS1_PKNS_15source_locationE.exit129: ; preds = %_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit127, %_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit127.thread
  %i.dw = phi i64 [ 1, %_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit127.thread ], [ 0, %_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit127 ]
  %i.dx = or disjoint i64 %i.dw, ptrtoint (ptr @_ZZNK5boost4urls22implementation_defined19ipv6_address_rule_t5parseERPKcS4_E11loc__LINE___5 to i64)
  store i64 5, ptr %0, align 8
  %.sroa.5154.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @_ZN5boost4urls7grammar6detail9error_catE, ptr %.sroa.5154.0..sroa_idx, align 8, !tbaa !17
  %.sroa.6155.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.dx, ptr %.sroa.6155.0..sroa_idx, align 8, !tbaa !12
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 2, ptr %i.dy, align 8, !tbaa !85
  br label %.thread203

bb.t:                                             ; preds = %bb.r
  store ptr %.077.ph536.lcssa, ptr %2, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  call void @_ZN5boost4urls7grammar5parseINS0_22implementation_defined19ipv4_address_rule_tEEENS_6system6resultINT_10value_typeENS5_10error_codeEEERPKcSC_RKS7_(ptr dead_on_unwind nonnull writable sret(%"class.boost::system::result.88") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, ptr noundef nonnull align 1 dereferenceable(1) @_ZN5boost4urlsL17ipv4_address_ruleE)
  %i.dz = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.ea = load i8, ptr %i.dz, align 8, !tbaa !78  ; 2 uses
  %i.eb = icmp eq i8 %i.ea, 1
  br i1 %i.eb, label %bb.x, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %i.ec = icmp eq i8 %i.ea, 2
  br i1 %i.ec, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 24, i1 false), !tbaa.struct !74
  br label %bb.y

bb.w:                                             ; preds = %bb.u
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false), !alias.scope !374
  br label %bb.y

bb.x:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  %i.ed = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZNR5boost6system6resultINS_4urls12ipv4_addressENS0_10error_codeEEdeEv(ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %.thread unwind label %bb.ah

.thread:                                          ; preds = %bb.x
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !39
  store i32 %i.ee, ptr %8, align 4, !tbaa !39
  %i.ef = call i32 @_ZNK5boost4urls12ipv4_address8to_bytesEv(ptr noundef nonnull align 4 dereferenceable(4) %8) #22 ; 4 uses
  %.sroa.0147.0.extract.trunc = trunc i32 %i.ef to i8
  %.sroa.4.0.extract.shift = lshr i32 %i.ef, 8
  %.sroa.4.0.extract.trunc = trunc i32 %.sroa.4.0.extract.shift to i8
  %.sroa.5148.0.extract.shift = lshr i32 %i.ef, 16
  %.sroa.5148.0.extract.trunc = trunc i32 %.sroa.5148.0.extract.shift to i8
  %.sroa.6149.0.extract.shift = lshr i32 %i.ef, 24
  %.sroa.6149.0.extract.trunc = trunc nuw i32 %.sroa.6149.0.extract.shift to i8
  store i8 %.sroa.0147.0.extract.trunc, ptr %i.de, align 1, !tbaa !17
  %i.eg = sub i32 15, %i.db
  %i.eh = sext i32 %i.eg to i64
  %i.ei = getelementptr inbounds nuw i8, ptr %4, i64 %i.eh
  store i8 %.sroa.4.0.extract.trunc, ptr %i.ei, align 1, !tbaa !17
  %i.ej = sub i32 16, %i.db
  %i.ek = sext i32 %i.ej to i64
  %i.el = getelementptr inbounds nuw i8, ptr %4, i64 %i.ek
  store i8 %.sroa.5148.0.extract.trunc, ptr %i.el, align 1, !tbaa !17
  %i.em = sub i32 17, %i.db
  %i.en = sext i32 %i.em to i64
  %i.eo = getelementptr inbounds nuw i8, ptr %4, i64 %i.en
  store i8 %.sroa.6149.0.extract.trunc, ptr %i.eo, align 1, !tbaa !17
  %i.ep = add nsw i32 %.0.ph539.lcssa, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %.thread209

bb.y:                                             ; preds = %bb.w, %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false), !tbaa.struct !74
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 2, ptr %i.eq, align 8, !tbaa !85
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %.thread203

_ZN5boost4urls7grammar12hexdig_valueEc.exit:      ; preds = %.lr.ph
  %.not225 = icmp eq i32 %.073.ph538, -1
  br i1 %.not225, label %.loopexit604, label %.thread215

_ZN5boost4urls7grammar12hexdig_valueEc.exit.thread.thread: ; preds = %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  call void @_ZNK5boost4urls6detail10h16_rule_t5parseERPKcS4_(ptr dead_on_unwind nonnull writable sret(%"class.boost::system::result.181") align 8 %9, ptr noundef nonnull align 1 dereferenceable(1) @_ZN5boost4urls6detailL8h16_ruleE, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3) #22
  %.sroa.0345.0.copyload347 = load i16, ptr %9, align 8 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %.sroa.11, ptr noundef nonnull align 2 dereferenceable(22) %.sroa.11.0..sroa_idx352, i64 22, i1 false)
  %.sroa.11355.0.copyload357 = load i8, ptr %.sroa.11355.0..sroa_idx356, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  %i.er = icmp eq i8 %.sroa.11355.0.copyload357, 1
  br i1 %i.er, label %bb.ab, label %.loopexit605

.loopexit605:                                     ; preds = %_ZN5boost4urls7grammar12hexdig_valueEc.exit.thread.thread, %_ZN5boost4urls7grammar12hexdig_valueEc.exit.thread.thread.peel
  %.sroa.0345.0.copyload347.lcssa = phi i16 [ %.sroa.0345.0.copyload347.peel, %_ZN5boost4urls7grammar12hexdig_valueEc.exit.thread.thread.peel ], [ %.sroa.0345.0.copyload347, %_ZN5boost4urls7grammar12hexdig_valueEc.exit.thread.thread ]
  %.sroa.11355.0.copyload357.lcssa = phi i8 [ %.sroa.11355.0.copyload357.peel, %_ZN5boost4urls7grammar12hexdig_valueEc.exit.thread.thread.peel ], [ %.sroa.11355.0.copyload357, %_ZN5boost4urls7grammar12hexdig_valueEc.exit.thread.thread ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %i.es = icmp eq i8 %.sroa.11355.0.copyload357.lcssa, 2
  br i1 %i.es, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %.loopexit605
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %.sroa.5, ptr noundef nonnull align 2 dereferenceable(22) %.sroa.11, i64 22, i1 false), !tbaa.struct !367
  br label %_ZNKR5boost6system6resultINS_4urls6detail10h16_rule_t10value_typeENS0_10error_codeEE5errorEv.exit131

bb.aa:                                            ; preds = %.loopexit605
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %.sroa.5, i8 0, i64 22, i1 false), !alias.scope !375
  br label %_ZNKR5boost6system6resultINS_4urls6detail10h16_rule_t10value_typeENS0_10error_codeEE5errorEv.exit131

_ZNKR5boost6system6resultINS_4urls6detail10h16_rule_t10value_typeENS0_10error_codeEE5errorEv.exit131: ; preds = %bb.z, %bb.aa
  %.sroa.0370.0 = phi i16 [ %.sroa.0345.0.copyload347.lcssa, %bb.z ], [ 0, %bb.aa ]
  store i16 %.sroa.0370.0, ptr %0, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(22) %.sroa.5, i64 22, i1 false), !tbaa.struct !367
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 2, ptr %i.et, align 8, !tbaa !85
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  br label %.thread203

bb.ab:                                            ; preds = %_ZN5boost4urls7grammar12hexdig_valueEc.exit.thread.thread
  %.sroa.0345.sroa.0.0.extract.trunc360 = trunc i16 %.sroa.0345.0.copyload347 to i8
  %.sroa.0345.sroa.9.0.extract.shift364 = lshr i16 %.sroa.0345.0.copyload347, 8
  %.sroa.0345.sroa.9.0.extract.trunc365 = trunc nuw i16 %.sroa.0345.sroa.9.0.extract.shift364 to i8
  %i.eu = shl i32 %i.ac, 1                        ; 2 uses
  %i.ev = sub i32 16, %i.eu
  %i.ew = sext i32 %i.ev to i64
  %i.ex = getelementptr inbounds nuw i8, ptr %4, i64 %i.ew
  store i8 %.sroa.0345.sroa.0.0.extract.trunc360, ptr %i.ex, align 1, !tbaa !17
  %i.ey = sub i32 17, %i.eu
  %i.ez = sext i32 %i.ey to i64
  %i.fa = getelementptr inbounds nuw i8, ptr %4, i64 %i.ez
  store i8 %.sroa.0345.sroa.9.0.extract.trunc365, ptr %i.fa, align 1, !tbaa !17
  %i.fb = add nsw i32 %i.ac, -1                   ; 2 uses
  %i.fc = icmp eq i32 %i.fb, 0
  br i1 %i.fc, label %.thread209, label %.outer.backedge

.loopexit604:                                     ; preds = %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %_ZN5boost4urls7grammar12hexdig_valueEc.exit
  %i.fd = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost4urls7grammar6detail9error_catE, i64 8), align 8, !tbaa !59, !noalias !376
  %i.fe = and i64 %i.fd, -2
  %switch.i.i.i.i136 = icmp eq i64 %i.fe, -5572340897628102704
  br i1 %switch.i.i.i.i136, label %_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit139.thread, label %_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit139

_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit139: ; preds = %.loopexit604
  %i.ff = load ptr, ptr @_ZN5boost4urls7grammar6detail9error_catE, align 8, !tbaa !28, !noalias !376
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 48
  %i.fh = load ptr, ptr %i.fg, align 8, !noalias !376
  %i.fi = call noundef zeroext i1 %i.fh(ptr noundef nonnull align 8 dereferenceable(52) @_ZN5boost4urls7grammar6detail9error_catE, i32 noundef 5) #22, !noalias !376, !inline_history !1
  br i1 %i.fi, label %_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit139.thread, label %_ZN5boost6system10error_codeC2ERKS1_PKNS_15source_locationE.exit141

_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit139.thread: ; preds = %.loopexit604, %_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit139
  br label %_ZN5boost6system10error_codeC2ERKS1_PKNS_15source_locationE.exit141

_ZN5boost6system10error_codeC2ERKS1_PKNS_15source_locationE.exit141: ; preds = %_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit139, %_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit139.thread
  %i.fj = phi i64 [ 1, %_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit139.thread ], [ 0, %_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit139 ]
  %i.fk = or disjoint i64 %i.fj, ptrtoint (ptr @_ZZNK5boost4urls22implementation_defined19ipv6_address_rule_t5parseERPKcS4_E11loc__LINE___6 to i64)
  store i64 5, ptr %0, align 8
  %.sroa.5145.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @_ZN5boost4urls7grammar6detail9error_catE, ptr %.sroa.5145.0..sroa_idx, align 8, !tbaa !17
  %.sroa.6146.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.fk, ptr %.sroa.6146.0..sroa_idx, align 8, !tbaa !12
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 2, ptr %i.fl, align 8, !tbaa !85
  br label %.thread203

.thread209:                                       ; preds = %bb.e, %bb.ab, %bb.o, %.thread
  %.073295 = phi i32 [ %.073.ph538.lcssa, %.thread ], [ %.073297410.peel, %bb.e ], [ %.073.ph538, %bb.o ], [ %i.ac, %bb.ab ] ; 2 uses
  %.3 = phi i32 [ %i.ep, %.thread ], [ 0, %bb.o ], [ 0, %bb.ab ], [ 0, %bb.e ]
  %i.fm = icmp eq i32 %.073295, -1
  br i1 %i.fm, label %bb.ac, label %.thread215

bb.ac:                                            ; preds = %.thread209
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(16) %4, i64 16, i1 false)
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 1, ptr %i.fn, align 8, !tbaa !85
  br label %.thread203

.thread215:                                       ; preds = %_ZN5boost4urls7grammar12hexdig_valueEc.exit, %.loopexit, %.thread209
  %.073294 = phi i32 [ %.073295, %.thread209 ], [ %.073.ph.lcssa, %.loopexit ], [ %.073.ph538, %_ZN5boost4urls7grammar12hexdig_valueEc.exit ] ; 5 uses
  %.3219 = phi i32 [ %.3, %.thread209 ], [ %.0.ph.lcssa, %.loopexit ], [ %.0.ph539, %_ZN5boost4urls7grammar12hexdig_valueEc.exit ] ; 3 uses
  %i.fo = icmp eq i32 %.073294, %.3219
  br i1 %i.fo, label %.thread215.thread, label %bb.ad

.thread215.thread:                                ; preds = %.peel.next.peel, %bb.d, %bb.k, %.peel.next, %bb.i, %.thread215
  %.3219224 = phi i32 [ %.073294, %.thread215 ], [ 7, %bb.d ], [ 7, %.peel.next.peel ], [ 0, %bb.i ], [ %i.ac, %.peel.next ], [ %i.ac, %bb.k ]
  %i.fp = shl i32 %.3219224, 1                    ; 2 uses
  %i.fq = sub i32 14, %i.fp
  %i.fr = sext i32 %i.fq to i64
  %i.fs = getelementptr inbounds nuw i8, ptr %4, i64 %i.fr
  %i.ft = add i32 %i.fp, 2
  %i.fu = sext i32 %i.ft to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.fs, i8 0, i64 %i.fu, i1 false)
  br label %bb.ag

bb.ad:                                            ; preds = %.thread215
  %i.fv = icmp eq i32 %.073294, 7
  br i1 %i.fv, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.fw = shl i32 %.3219, 1                       ; 2 uses
  %i.fx = sub i32 14, %i.fw
  %i.fy = add i32 %i.fw, 2
  %i.fz = sext i32 %i.fy to i64                   ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %4, i64 %i.fz
  %i.gb = getelementptr inbounds nuw i8, ptr %4, i64 2
  %i.gc = sext i32 %i.fx to i64
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ga, ptr nonnull align 1 %i.gb, i64 %i.gc, i1 false)
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %4, i8 0, i64 %i.fz, i1 false)
  br label %bb.ag

bb.af:                                            ; preds = %bb.ad
  %i.gd = shl i32 %.073294, 1                     ; 3 uses
  %i.ge = sub i32 14, %i.gd
  %i.gf = sub nsw i32 %.073294, %.3219
  %i.gg = shl nsw i32 %i.gf, 1                    ; 3 uses
  %i.gh = sub nsw i32 16, %i.gg
  %i.gi = sext i32 %i.gh to i64
  %i.gj = getelementptr inbounds nuw i8, ptr %4, i64 %i.gi
  %i.gk = sub i32 16, %i.gd
  %i.gl = sext i32 %i.gk to i64
  %i.gm = getelementptr inbounds nuw i8, ptr %4, i64 %i.gl
  %i.gn = sext i32 %i.gg to i64
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.gj, ptr nonnull align 1 %i.gm, i64 %i.gn, i1 false)
  %i.go = sext i32 %i.ge to i64
  %i.gp = getelementptr inbounds nuw i8, ptr %4, i64 %i.go
  %.neg227 = add i32 %i.gd, 2
  %i.gq = sub i32 %.neg227, %i.gg
  %i.gr = sext i32 %i.gq to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.gp, i8 0, i64 %i.gr, i1 false)
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ae, %bb.af, %.thread215.thread
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(16) %4, i64 16, i1 false)
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 1, ptr %i.gs, align 8, !tbaa !85
  br label %.thread203

.thread203:                                       ; preds = %_ZN5boost6system10error_codeC2ERKS1_PKNS_15source_locationE.exit141, %_ZNKR5boost6system6resultINS_4urls6detail10h16_rule_t10value_typeENS0_10error_codeEE5errorEv.exit131, %bb.y, %bb.ag, %bb.ac, %_ZN5boost6system10error_codeC2ERKS1_PKNS_15source_locationE.exit129, %_ZN5boost6system10error_codeC2ERKS1_PKNS_15source_locationE.exit123, %_ZN5boost6system10error_codeC2ERKS1_PKNS_15source_locationE.exit117, %_ZN5boost6system10error_codeC2ERKS1_PKNS_15source_locationE.exit111, %_ZNKR5boost6system6resultINS_4urls6detail10h16_rule_t10value_typeENS0_10error_codeEE5errorEv.exit, %_ZN5boost6system10error_codeC2ERKS1_PKNS_15source_locationE.exit103, %_ZN5boost6system10error_codeC2ERKS1_PKNS_15source_locationE.exit97, %_ZN5boost6system10error_codeC2ERKS1_PKNS_15source_locationE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  ret void

bb.ah:                                            ; preds = %bb.x
  %i.gt = landingpad { ptr, i32 }
          catch ptr null
  %i.gu = extractvalue { ptr, i32 } %i.gt, 0
  call void @__clang_call_terminate(ptr %i.gu) #23
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 4 dereferenceable(4) ptr @_ZNR5boost6system6resultINS_4urls12ipv4_addressENS0_10error_codeEEdeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %1 = alloca %"struct.boost::source_location", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  store ptr @.str.12, ptr %1, align 8, !tbaa !46
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr @.str.28, ptr %i.a, align 8, !tbaa !47
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 348, ptr %i.b, align 8, !tbaa !48
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i32 16, ptr %i.c, align 4, !tbaa !49
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i8, ptr %i.d, align 8, !tbaa !78
  %i.f = icmp eq i8 %i.e, 1
  br i1 %i.f, label %_ZNR5boost6system6resultINS_4urls12ipv4_addressENS0_10error_codeEE5valueERKNS_15source_locationE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_ZN5boost6system26throw_exception_from_errorERKNS0_10error_codeERKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #24
  unreachable

_ZNR5boost6system6resultINS_4urls12ipv4_addressENS0_10error_codeEE5valueERKNS_15source_locationE.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK5boost4urls6detail10h16_rule_t5parseERPKcS4_(ptr dead_on_unwind noalias writable sret(%"class.boost::system::result.181") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !16     ; 6 uses
  %i.b = icmp eq ptr %i.a, %3
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost4urls7grammar6detail9error_catE, i64 8), align 8, !tbaa !59, !noalias !381
  %i.d = and i64 %i.c, -2
  %switch.i.i.i.i = icmp eq i64 %i.d, -5572340897628102704
  br i1 %switch.i.i.i.i, label %_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread, label %_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit

_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit: ; preds = %bb.b
  %i.e = load ptr, ptr @_ZN5boost4urls7grammar6detail9error_catE, align 8, !tbaa !28, !noalias !381
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !noalias !381
  %i.h = tail call noundef zeroext i1 %i.g(ptr noundef nonnull align 8 dereferenceable(52) @_ZN5boost4urls7grammar6detail9error_catE, i32 noundef 5) #22, !noalias !381, !inline_history !1
  br i1 %i.h, label %_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread, label %_ZN5boost6system10error_codeC2ERKS1_PKNS_15source_locationE.exit

_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread: ; preds = %bb.b, %_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit
  br label %_ZN5boost6system10error_codeC2ERKS1_PKNS_15source_locationE.exit

_ZN5boost6system10error_codeC2ERKS1_PKNS_15source_locationE.exit: ; preds = %_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit, %_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread
  %i.i = phi i64 [ 1, %_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread ], [ 0, %_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit ]
  %i.j = or disjoint i64 %i.i, ptrtoint (ptr @_ZZNK5boost4urls6detail10h16_rule_t5parseERPKcS4_E11loc__LINE__ to i64)
  store i64 5, ptr %0, align 8
  %.sroa.558.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @_ZN5boost4urls7grammar6detail9error_catE, ptr %.sroa.558.0..sroa_idx, align 8, !tbaa !17
  %.sroa.659.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.j, ptr %.sroa.659.0..sroa_idx, align 8, !tbaa !12
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.k = load i8, ptr %i.a, align 1, !tbaa !17
  %switch.tableidx = add i8 %i.k, -48             ; 3 uses
  %i.l = icmp ult i8 %switch.tableidx, 55
  br i1 %i.l, label %switch.hole_check, label %_ZN5boost4urls7grammar12hexdig_valueEc.exit

_ZN5boost4urls7grammar12hexdig_valueEc.exit:      ; preds = %switch.hole_check, %bb.c
  %i.m = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost4urls7grammar6detail9error_catE, i64 8), align 8, !tbaa !59, !noalias !382
  %i.n = and i64 %i.m, -2
  %switch.i.i.i.i38 = icmp eq i64 %i.n, -5572340897628102704
  br i1 %switch.i.i.i.i38, label %_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit41.thread, label %_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit41

_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit41: ; preds = %_ZN5boost4urls7grammar12hexdig_valueEc.exit
  %i.o = load ptr, ptr @_ZN5boost4urls7grammar6detail9error_catE, align 8, !tbaa !28, !noalias !382
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %i.q = load ptr, ptr %i.p, align 8, !noalias !382
  %i.r = tail call noundef zeroext i1 %i.q(ptr noundef nonnull align 8 dereferenceable(52) @_ZN5boost4urls7grammar6detail9error_catE, i32 noundef 5) #22, !noalias !382, !inline_history !1
  br i1 %i.r, label %_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit41.thread, label %_ZN5boost4urls7grammar12hexdig_valueEc.exit45

_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit41.thread: ; preds = %_ZN5boost4urls7grammar12hexdig_valueEc.exit, %_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit41
  br label %_ZN5boost4urls7grammar12hexdig_valueEc.exit45

switch.hole_check:                                ; preds = %bb.c
  %switch.maskindex = zext nneg i8 %switch.tableidx to i64
  %switch.shifted = lshr i64 35465847073801215, %switch.maskindex
  %switch.lobit = trunc i64 %switch.shifted to i1
  br i1 %switch.lobit, label %switch.lookup, label %_ZN5boost4urls7grammar12hexdig_valueEc.exit

switch.lookup:                                    ; preds = %switch.hole_check
  %i.s = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZNK5boost4urls6detail10h16_rule_t5parseERPKcS4_.3, i64 %i.s
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i16       ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 3 uses
  store ptr %i.t, ptr %2, align 8, !tbaa !16
  %i.u = icmp eq ptr %i.t, %3
  br i1 %i.u, label %bb.g, label %bb.d

bb.d:                                             ; preds = %switch.lookup
  %i.v = load i8, ptr %i.t, align 1, !tbaa !17
  %switch.tableidx79 = add i8 %i.v, -48           ; 3 uses
  %i.w = icmp ult i8 %switch.tableidx79, 55
  br i1 %i.w, label %switch.hole_check81, label %bb.g

switch.hole_check81:                              ; preds = %bb.d
  %switch.maskindex83 = zext nneg i8 %switch.tableidx79 to i64
  %switch.shifted84 = lshr i64 35465847073801215, %switch.maskindex83
  %switch.lobit85 = trunc i64 %switch.shifted84 to i1
  br i1 %switch.lobit85, label %switch.lookup82, label %bb.g

switch.lookup82:                                  ; preds = %switch.hole_check81
  %i.x = zext nneg i8 %switch.tableidx79 to i64
  %switch.gep86 = getelementptr inbounds nuw i8, ptr @switch.table._ZNK5boost4urls6detail10h16_rule_t5parseERPKcS4_.3, i64 %i.x
  %switch.load87 = load i8, ptr %switch.gep86, align 1
  %switch.ext88 = zext i8 %switch.load87 to i16
  %i.y = shl nuw nsw i16 %switch.ext, 4
  %i.z = or disjoint i16 %i.y, %switch.ext88      ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 2 ; 3 uses
  store ptr %i.aa, ptr %2, align 8, !tbaa !16
end_hunk_1
