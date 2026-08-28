Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/openssl-6daa30ed99a8cb8b.openssl.cb7886fb561cc593-cgu.03?download=true
inline.NumInlined: 211
inline.NumDeleted: 59
begin_hunk_0_@"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h70ecac23f49aed3dE":bb.a
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.h, %bb.d ], [ %i.i, %bb.e ], [ %i.g, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hf0b19778811d591aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha612ea0c54ab8df4E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd1dc994645a5ac49E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
          to label %"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17hb302520e33e0e899E.exit" unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd1dc994645a5ac49E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #11
  unreachable

"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17hb302520e33e0e899E.exit": ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal void @"_ZN4core3ptr48drop_in_place$LT$alloc..ffi..c_str..NulError$GT$17h50697b76f8ac5c34E"(ptr noalias noundef align 8 dereferenceable(32) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha612ea0c54ab8df4E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hf0b19778811d591aE.exit" unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd1dc994645a5ac49E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17hb302520e33e0e899E.exit.i" unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #11
  unreachable

"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17hb302520e33e0e899E.exit.i": ; preds = %bb.b
  resume { ptr, i32 } %i.a

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hf0b19778811d591aE.exit": ; preds = %bb.a
  tail call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd1dc994645a5ac49E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN57_$LT$openssl..dsa..DsaSig$u20$as$u20$core..fmt..Debug$GT$3fmt17h46ce9c8fec0b62f3E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_ZN4core3fmt9Formatter12debug_struct17h1e7fed6a090e7031E(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2, i64 noundef 6)
  %i.d = load ptr, ptr %0, align 8, !noundef !3   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr null, ptr %i.b, align 8
  call void @DSA_SIG_get0(ptr noundef nonnull align 1 %i.d, ptr noundef nonnull %i.b, ptr noundef null) #12
  %i.e = load ptr, ptr %i.b, align 8, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.f = call noundef align 8 dereferenceable(16) ptr @_ZN4core3fmt8builders11DebugStruct5field17h00201168a26291d3E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @4, i64 noundef 1, ptr noundef nonnull align 1 %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr null, ptr %i.a, align 8
  call void @DSA_SIG_get0(ptr noundef nonnull align 1 %i.d, ptr noundef null, ptr noundef nonnull %i.a) #12
  %i.g = load ptr, ptr %i.a, align 8, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.h = call noundef align 8 dereferenceable(16) ptr @_ZN4core3fmt8builders11DebugStruct5field17h00201168a26291d3E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.f, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @5, i64 noundef 1, ptr noundef nonnull align 1 %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3)
  %i.i = call noundef zeroext i1 @_ZN4core3fmt8builders11DebugStruct6finish17h85c161700f9add69E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret i1 %i.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN64_$LT$alloc..ffi..c_str..NulError$u20$as$u20$core..fmt..Debug$GT$3fmt17h69e13d2ada4dc246E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field2_finish17h2d7de1980c478392E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @8, i64 noundef 8, ptr noundef nonnull align 1 %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @6, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @7)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define void @_ZN7openssl2md2Md5fetch17h02cf31a8dfd7246cE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef align 1 %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2, i64 noundef %3, ptr noalias noundef readonly align 1 captures(address, read_provenance) %4, i64 %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  tail call void @_ZN11openssl_sys7openssl4init17h4e20513a74f605afE()
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @"_ZN72_$LT$$RF$str$u20$as$u20$alloc..ffi..c_str..CString..new..SpecNewImpl$GT$13spec_new_impl17h8ef4e6bcbe04ca1dE"(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.e, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2, i64 noundef %3)
  call void @llvm.experimental.noalias.scope.decl(metadata !4)
  %i.f = load i64, ptr %i.e, align 8, !range !7, !alias.scope !4, !noalias !8, !noundef !3
  %.not.i31 = icmp eq i64 %i.f, -9223372036854775808
  br i1 %.not.i31, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h5dba90d1d1ee9d75E.exit32", label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.e, i64 32, i1 false), !noalias !8
  invoke void @_ZN4core6result13unwrap_failed17h8e46864fd8bf13c6E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #13
          to label %bb.d unwind label %bb.c, !noalias !4

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr48drop_in_place$LT$alloc..ffi..c_str..NulError$GT$17h50697b76f8ac5c34E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a) #14
          to label %common.resume unwind label %bb.e, !noalias !4

bb.d:                                             ; preds = %bb.b
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #11, !noalias !4
  unreachable

common.resume:                                    ; preds = %.body, %bb.g, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.g, %bb.c ], [ %.pn, %bb.g ], [ %.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h5dba90d1d1ee9d75E.exit32": ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !4, !noalias !8, !nonnull !3, !align !12, !noundef !3 ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !4, !noalias !8, !noundef !3 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.not = icmp eq ptr %4, null                    ; 4 uses
  br i1 %.not, label %"_ZN4core6option15Option$LT$T$GT$6map_or17h765e68e151e9b886E.exit", label %bb.f

bb.f:                                             ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h5dba90d1d1ee9d75E.exit32"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @"_ZN72_$LT$$RF$str$u20$as$u20$alloc..ffi..c_str..CString..new..SpecNewImpl$GT$13spec_new_impl17h8ef4e6bcbe04ca1dE"(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.d, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %4, i64 noundef %5)
          to label %bb.i unwind label %bb.h

.body:                                            ; preds = %bb.p, %bb.o, %bb.n, %bb.k, %bb.h
  %.pn = phi { ptr, i32 } [ %i.p, %bb.k ], [ %i.n, %bb.h ], [ %i.r, %bb.n ], [ %i.r, %bb.o ], [ %i.r, %bb.p ] ; 2 uses
  store i8 0, ptr %i.j, align 1
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %common.resume, label %bb.g

bb.g:                                             ; preds = %.body
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef range(i64 1, 0) %i.l, i64 noundef 1) #12
  br label %common.resume

bb.h:                                             ; preds = %bb.f
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.i:                                             ; preds = %bb.f
  call void @llvm.experimental.noalias.scope.decl(metadata !13)
  %i.o = load i64, ptr %i.d, align 8, !range !7, !alias.scope !13, !noalias !16, !noundef !3
  %.not.i = icmp eq i64 %i.o, -9223372036854775808
  br i1 %.not.i, label %.cont, label %bb.j, !prof !10

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.d, i64 32, i1 false), !noalias !16
  invoke void @_ZN4core6result13unwrap_failed17h8e46864fd8bf13c6E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1, i64 noundef 43, ptr noundef nonnull align 1 %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #13
          to label %bb.l unwind label %bb.k, !noalias !13

bb.k:                                             ; preds = %bb.j
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr48drop_in_place$LT$alloc..ffi..c_str..NulError$GT$17h50697b76f8ac5c34E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b) #14
          to label %.body unwind label %bb.m, !noalias !13

bb.l:                                             ; preds = %bb.j
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #11, !noalias !13
  unreachable

bb.n:                                             ; preds = %bb.q
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  br i1 %.not, label %.body, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i8 0, ptr %.sroa.051.057, align 1
  %i.s = icmp eq i64 %.sroa.10.058, 0
  br i1 %i.s, label %.body, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.051.057, i64 noundef range(i64 1, 0) %.sroa.10.058, i64 noundef 1) #12
  br label %.body

.cont:                                            ; preds = %bb.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !alias.scope !13, !noalias !16, !nonnull !3, !align !12, !noundef !3
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !13, !noalias !16, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %"_ZN4core6option15Option$LT$T$GT$6map_or17h765e68e151e9b886E.exit"

"_ZN4core6option15Option$LT$T$GT$6map_or17h765e68e151e9b886E.exit": ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h5dba90d1d1ee9d75E.exit32", %.cont
  %.sroa.10.058 = phi i64 [ %i.w, %.cont ], [ undef, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h5dba90d1d1ee9d75E.exit32" ] ; 6 uses
  %.sroa.051.057 = phi ptr [ %i.u, %.cont ], [ null, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h5dba90d1d1ee9d75E.exit32" ] ; 7 uses
  %i.x = call noundef ptr @EVP_MD_fetch(ptr noundef %1, ptr noundef nonnull %i.j, ptr noundef %.sroa.051.057) #12 ; 2 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.q, label %bb.r

bb.q:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6map_or17h765e68e151e9b886E.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_ZN7openssl5error10ErrorStack3get17hbdb82c7a54f620f4E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c)
          to label %bb.u unwind label %bb.n

bb.r:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6map_or17h765e68e151e9b886E.exit"
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.x, ptr %i.z, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  br i1 %.not, label %"_ZN4core3ptr75drop_in_place$LT$core..option..Option$LT$alloc..ffi..c_str..CString$GT$$GT$17h6fcf3a065d70696cE.exit45", label %bb.s

bb.s:                                             ; preds = %bb.r
  store i8 0, ptr %.sroa.051.057, align 1
  %i.aa = icmp eq i64 %.sroa.10.058, 0
  br i1 %i.aa, label %"_ZN4core3ptr75drop_in_place$LT$core..option..Option$LT$alloc..ffi..c_str..CString$GT$$GT$17h6fcf3a065d70696cE.exit45", label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.051.057, i64 noundef range(i64 1, 0) %.sroa.10.058, i64 noundef 1) #12
  br label %"_ZN4core3ptr75drop_in_place$LT$core..option..Option$LT$alloc..ffi..c_str..CString$GT$$GT$17h6fcf3a065d70696cE.exit45"

bb.u:                                             ; preds = %bb.q
  %.sroa.09.0.copyload = load i64, ptr %i.c, align 8
  %.sroa.611.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.611.0.copyload = load ptr, ptr %.sroa.611.0..sroa_idx, align 8
  %.sroa.814.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.814.0.copyload = load i64, ptr %.sroa.814.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i64 %.sroa.09.0.copyload, ptr %0, align 8
  %.sroa.225.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.611.0.copyload, ptr %.sroa.225.0..sroa_idx, align 8
  %.sroa.326.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.814.0.copyload, ptr %.sroa.326.0..sroa_idx, align 8
  br i1 %.not, label %"_ZN4core3ptr75drop_in_place$LT$core..option..Option$LT$alloc..ffi..c_str..CString$GT$$GT$17h6fcf3a065d70696cE.exit46", label %bb.v

bb.v:                                             ; preds = %bb.u
  store i8 0, ptr %.sroa.051.057, align 1
  %i.ab = icmp eq i64 %.sroa.10.058, 0
  br i1 %i.ab, label %"_ZN4core3ptr75drop_in_place$LT$core..option..Option$LT$alloc..ffi..c_str..CString$GT$$GT$17h6fcf3a065d70696cE.exit46", label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.051.057, i64 noundef range(i64 1, 0) %.sroa.10.058, i64 noundef 1) #12
  br label %"_ZN4core3ptr75drop_in_place$LT$core..option..Option$LT$alloc..ffi..c_str..CString$GT$$GT$17h6fcf3a065d70696cE.exit46"

"_ZN4core3ptr75drop_in_place$LT$core..option..Option$LT$alloc..ffi..c_str..CString$GT$$GT$17h6fcf3a065d70696cE.exit46": ; preds = %bb.w, %bb.v, %bb.u
  store i8 0, ptr %i.j, align 1
  %i.ac = icmp eq i64 %i.l, 0
  br i1 %i.ac, label %"_ZN4core3ptr47drop_in_place$LT$alloc..ffi..c_str..CString$GT$17heb17545013bfb36bE.exit47", label %"_ZN4core3ptr47drop_in_place$LT$alloc..ffi..c_str..CString$GT$17heb17545013bfb36bE.exit47.sink.split"

"_ZN4core3ptr47drop_in_place$LT$alloc..ffi..c_str..CString$GT$17heb17545013bfb36bE.exit47.sink.split": ; preds = %"_ZN4core3ptr75drop_in_place$LT$core..option..Option$LT$alloc..ffi..c_str..CString$GT$$GT$17h6fcf3a065d70696cE.exit46", %"_ZN4core3ptr75drop_in_place$LT$core..option..Option$LT$alloc..ffi..c_str..CString$GT$$GT$17h6fcf3a065d70696cE.exit45"
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef range(i64 1, 0) %i.l, i64 noundef 1) #12
  br label %"_ZN4core3ptr47drop_in_place$LT$alloc..ffi..c_str..CString$GT$17heb17545013bfb36bE.exit47"

"_ZN4core3ptr47drop_in_place$LT$alloc..ffi..c_str..CString$GT$17heb17545013bfb36bE.exit47": ; preds = %"_ZN4core3ptr47drop_in_place$LT$alloc..ffi..c_str..CString$GT$17heb17545013bfb36bE.exit47.sink.split", %"_ZN4core3ptr75drop_in_place$LT$core..option..Option$LT$alloc..ffi..c_str..CString$GT$$GT$17h6fcf3a065d70696cE.exit45", %"_ZN4core3ptr75drop_in_place$LT$core..option..Option$LT$alloc..ffi..c_str..CString$GT$$GT$17h6fcf3a065d70696cE.exit46"
  ret void

"_ZN4core3ptr75drop_in_place$LT$core..option..Option$LT$alloc..ffi..c_str..CString$GT$$GT$17h6fcf3a065d70696cE.exit45": ; preds = %bb.t, %bb.s, %bb.r
  store i8 0, ptr %i.j, align 1
  %i.ad = icmp eq i64 %i.l, 0
  br i1 %i.ad, label %"_ZN4core3ptr47drop_in_place$LT$alloc..ffi..c_str..CString$GT$17heb17545013bfb36bE.exit47", label %"_ZN4core3ptr47drop_in_place$LT$alloc..ffi..c_str..CString$GT$17heb17545013bfb36bE.exit47.sink.split"
}

; Function Attrs: nonlazybind uwtable
define noundef align 1 ptr @_ZN7openssl2md2Md8from_nid17hd4a2f4e0e3923f6dE(i32 noundef %0) unnamed_addr #1 {
bb.a:
  tail call void @_ZN11openssl_sys7openssl4init17h4e20513a74f605afE()
  %i.a = tail call noundef ptr @_ZN11openssl_sys7openssl3evp19EVP_get_digestbynid17h969f4f7d43644626E(i32 noundef %0)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN7openssl3dsa32Dsa$LT$openssl..pkey..Params$GT$12generate_key17he691195e5f6342aaE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = tail call noundef i32 @DSA_generate_key(ptr noundef %1) #12
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.d, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_ZN7openssl5error10ErrorStack3get17hbdb82c7a54f620f4E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.e unwind label %bb.f

bb.d:                                             ; preds = %bb.e, %bb.b
  ret void

bb.e:                                             ; preds = %bb.c
  %.sroa.05.0.copyload = load i64, ptr %i.a, align 8
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.67.0.copyload = load i32, ptr %.sroa.67.0..sroa_idx, align 8
  %.sroa.810.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %.sroa.319.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.319.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.810.0..sroa_idx, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %.sroa.05.0.copyload, ptr %0, align 8
  %.sroa.218.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.67.0.copyload, ptr %.sroa.218.0..sroa_idx, align 8
  call void @DSA_free(ptr noundef %1) #12
  br label %bb.d

bb.f:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @DSA_free(ptr noundef %1) #12
  resume { ptr, i32 } %i.e
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN7openssl3dsa32Dsa$LT$openssl..pkey..Params$GT$15generate_params17h6c712144a2fadc00E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i32 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  tail call void @_ZN11openssl_sys7openssl4init17h4e20513a74f605afE()
  %i.c = tail call noundef ptr @DSA_new() #12     ; 5 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_ZN7openssl5error10ErrorStack3get17hbdb82c7a54f620f4E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b)
  %.sroa.06.0.copyload = load i64, ptr %i.b, align 8
  %.sroa.68.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.68.0.copyload = load ptr, ptr %.sroa.68.0..sroa_idx, align 8
  %.sroa.811.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.811.0.copyload = load i64, ptr %.sroa.811.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %.sroa.06.0.copyload, ptr %0, align 8
  %.sroa.237.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.68.0.copyload, ptr %.sroa.237.0..sroa_idx, align 8
  %.sroa.338.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.811.0.copyload, ptr %.sroa.338.0..sroa_idx, align 8
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef i32 @DSA_generate_parameters_ex(ptr noundef nonnull %i.c, i32 noundef %1, ptr noundef null, i32 noundef 0, ptr noundef null, ptr noundef null, ptr noundef null) #12
  %i.f = icmp slt i32 %i.e, 1
  br i1 %i.f, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %i.g, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_ZN7openssl5error10ErrorStack3get17hbdb82c7a54f620f4E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.g unwind label %bb.h

bb.f:                                             ; preds = %bb.b, %bb.g, %bb.d
  ret void

bb.g:                                             ; preds = %bb.e
  %.sroa.022.0.copyload = load i64, ptr %i.a, align 8
  %.sroa.624.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.624.0.copyload = load i32, ptr %.sroa.624.0..sroa_idx, align 8
  %.sroa.827.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %.sroa.347.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.347.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.827.0..sroa_idx, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %.sroa.022.0.copyload, ptr %0, align 8
  %.sroa.246.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.624.0.copyload, ptr %.sroa.246.0..sroa_idx, align 8
  call void @DSA_free(ptr noundef nonnull %i.c) #12
  br label %bb.f

bb.h:                                             ; preds = %bb.e
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @DSA_free(ptr noundef nonnull %i.c) #12
  resume { ptr, i32 } %i.h
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN7openssl3dsa32Dsa$LT$openssl..pkey..Params$GT$8from_pqg17h77d7630d36b65494E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = tail call noundef ptr @DSA_new() #12     ; 5 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_ZN7openssl5error10ErrorStack3get17hbdb82c7a54f620f4E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b)
          to label %bb.f unwind label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef i32 @DSA_set0_pqg(ptr noundef nonnull %i.c, ptr noundef %1, ptr noundef %2, ptr noundef %3) #12
  %i.f = icmp slt i32 %i.e, 1
  br i1 %i.f, label %bb.h, label %bb.g

bb.d:                                             ; preds = %bb.j, %bb.e
  %.pn = phi { ptr, i32 } [ %i.g, %bb.e ], [ %i.i, %bb.j ]
  call void @BN_free(ptr noundef %3) #12
  call void @BN_free(ptr noundef %2) #12
  call void @BN_free(ptr noundef %1) #12
  resume { ptr, i32 } %.pn

bb.e:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.f:                                             ; preds = %bb.b
  %.sroa.06.0.copyload = load i64, ptr %i.b, align 8
  %.sroa.68.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.68.0.copyload = load ptr, ptr %.sroa.68.0..sroa_idx, align 8
  %.sroa.811.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.811.0.copyload = load i64, ptr %.sroa.811.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %.sroa.06.0.copyload, ptr %0, align 8
  %.sroa.237.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.68.0.copyload, ptr %.sroa.237.0..sroa_idx, align 8
  %.sroa.338.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.811.0.copyload, ptr %.sroa.338.0..sroa_idx, align 8
  br label %bb.l

bb.g:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %i.h, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.i

bb.h:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_ZN7openssl5error10ErrorStack3get17hbdb82c7a54f620f4E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.k unwind label %bb.j

bb.i:                                             ; preds = %bb.l, %bb.g
  ret void

bb.j:                                             ; preds = %bb.h
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @DSA_free(ptr noundef nonnull %i.c) #12
end_hunk_0
