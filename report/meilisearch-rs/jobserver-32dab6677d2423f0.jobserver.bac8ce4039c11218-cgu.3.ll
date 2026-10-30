Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/jobserver-32dab6677d2423f0.jobserver.bac8ce4039c11218-cgu.3?download=true
inline.NumInlined: 46
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
@9 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @8, [16 x i8] c"`\00\00\00\00\00\00\008\02\00\00\1B\00\00\00" }>, align 8
@10 = private unnamed_addr constant <{ [24 x i8], ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00", ptr @"_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17h8770446f38c4e8cfE", ptr @"_ZN9jobserver3imp6Client9configure28_$u7b$$u7b$closure$u7d$$u7d$17hef77183d67a12255E" }>, align 8
@11 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @8, [16 x i8] c"`\00\00\00\00\00\00\00P\02\00\00-\00\00\00" }>, align 8
@12 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @8, [16 x i8] c"`\00\00\00\00\00\00\00>\02\00\00\1A\00\00\00" }>, align 8
@13 = private unnamed_addr constant [17 x i8] c"--jobserver-auth=", align 1
@14 = private unnamed_addr constant [16 x i8] c"--jobserver-fds=", align 1
@15 = private unnamed_addr constant [19 x i8] c"-j --jobserver-fds=", align 1
@16 = private unnamed_addr constant [18 x i8] c" --jobserver-auth=", align 1
@17 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @15, [8 x i8] c"\13\00\00\00\00\00\00\00", ptr @16, [8 x i8] c"\12\00\00\00\00\00\00\00" }>, align 8
@18 = private unnamed_addr constant <{ [2 x i8], [14 x i8], [2 x i8], [14 x i8], [12 x i8], [4 x i8], [2 x i8], [14 x i8], [2 x i8], [14 x i8], [12 x i8], [4 x i8] }> <{ [2 x i8] c"\02\00", [14 x i8] undef, [2 x i8] c"\02\00", [14 x i8] undef, [12 x i8] c"\00\00\00\00\00\00\00\00 \00\00\E0", [4 x i8] undef, [2 x i8] c"\02\00", [14 x i8] undef, [2 x i8] c"\02\00", [14 x i8] undef, [12 x i8] c"\00\00\00\00\00\00\00\00 \00\00\E0", [4 x i8] undef }>, align 8
@19 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @8, [16 x i8] c"`\00\00\00\00\00\00\00\04\02\00\00\09\00\00\00" }>, align 8
@20 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @8, [16 x i8] c"`\00\00\00\00\00\00\00\0E\02\00\00\09\00\00\00" }>, align 8
@21 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @8, [16 x i8] c"`\00\00\00\00\00\00\00X\01\00\00\13\00\00\00" }>, align 8
@22 = private unnamed_addr constant [15 x i8] c"CARGO_MAKEFLAGS", align 1
@23 = private unnamed_addr constant [9 x i8] c"MAKEFLAGS", align 1
@24 = private unnamed_addr constant [6 x i8] c"MFLAGS", align 1
@25 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @22, [8 x i8] c"\0F\00\00\00\00\00\00\00", ptr @23, [8 x i8] c"\09\00\00\00\00\00\00\00", ptr @24, [8 x i8] c"\06\00\00\00\00\00\00\00" }>, align 8
@26 = private unnamed_addr constant [15 x i8] c"not valid UTF-8", align 1
@27 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @8, [16 x i8] c"`\00\00\00\00\00\00\00\D2\00\00\00\1D\00\00\00" }>, align 8
@28 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @8, [16 x i8] c"`\00\00\00\00\00\00\00?\01\00\00\14\00\00\00" }>, align 8
@switch.table._ZN3std3sys3pal4unix17decode_error_kind17h2777aae04c7c5f8dE = private unnamed_addr constant [122 x i8] c"\01\00)#))\22)))\0D&\01))\1C\0C\1F)\0E\0F\14)))\1D\1B\18\19\11 \0B))\1E!)$\10\12))))))))))))))))))))))))))))))))))))))))))))))))))))))$))\08\09\0A\05)\06\03))\07))\16\02)\04)'\13)))))\1A", align 1

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define align 1 ptr @"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h85a1516369a9f669E"(ptr nofree align 8 captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = load ptr, ptr %0, align 8
  %i.d = icmp eq ptr %i.c, %i.b
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds i8, ptr %i.b, i64 -1 ; 2 uses
  store ptr %i.e, ptr %i.a, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi ptr [ %i.e, %bb.b ], [ null, %bb.a ]
  ret ptr %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_ZN3std2fs11OpenOptions3new17he583071424659be3E(ptr nofree writeonly sret([16 x i8]) align 4 captures(none) initializes((0, 14)) %0) unnamed_addr #1 {
bb.a:
  store i32 0, ptr %0, align 4
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 438, ptr %.sroa.2.0..sroa_idx, align 4
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(6) %.sroa.3.0..sroa_idx, i8 0, i64 6, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_ZN3std2fs11OpenOptions4open17h94d8d6bdc28097b3E(ptr sret([16 x i8]) align 8 %0, ptr align 4 %1, ptr align 8 %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = invoke { ptr, i64 } @"_ZN3std4path95_$LT$impl$u20$core..convert..AsRef$LT$std..path..Path$GT$$u20$for$u20$alloc..string..String$GT$6as_ref17h2201af2eda8637e1E"(ptr align 8 %2)
          to label %bb.c unwind label %bb.b       ; 2 uses

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hac1e1e3627c65915E"(ptr align 8 %2) #22
          to label %bb.f unwind label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.c = extractvalue { ptr, i64 } %i.a, 0
  %i.d = extractvalue { ptr, i64 } %i.a, 1
  invoke void @_ZN3std2fs11OpenOptions5_open17h005de3b10d8796e4E(ptr sret([16 x i8]) align 8 %0, ptr align 4 %1, ptr align 1 %i.c, i64 %i.d)
          to label %bb.d unwind label %bb.b

bb.d:                                             ; preds = %bb.c
  tail call void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hac1e1e3627c65915E"(ptr align 8 %2)
  ret void

bb.e:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #23
  unreachable

bb.f:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.b
}

; Function Attrs: nonlazybind uwtable
define void @_ZN3std2fs11OpenOptions4open17hfadfcb3dbd757d1bE(ptr sret([16 x i8]) align 8 %0, ptr align 4 %1, ptr align 1 %2, i64 %3) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_ZN3std2fs11OpenOptions5_open17h005de3b10d8796e4E(ptr sret([16 x i8]) align 8 %0, ptr align 4 %1, ptr align 1 %2, i64 %3)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden align 4 ptr @_ZN3std2fs11OpenOptions4read17h7770b541af2e2126E(ptr nofree returned writeonly align 4 captures(ret: address, provenance) initializes((8, 9)) %0, i1 zeroext %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = zext i1 %1 to i8
  store i8 %i.b, ptr %i.a, align 4
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden align 4 ptr @_ZN3std2fs11OpenOptions5write17hadbca005e20451a8E(ptr nofree returned writeonly align 4 captures(ret: address, provenance) initializes((9, 10)) %0, i1 zeroext %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.b = zext i1 %1 to i8
  store i8 %i.b, ptr %i.a, align 1
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define void @_ZN3std2fs4File4open17h8514722aea0c4465E(ptr sret([16 x i8]) align 8 %0, ptr align 8 %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 4                ; 4 uses
  store i32 0, ptr %i.a, align 4
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 438, ptr %.sroa.2.0..sroa_idx, align 4
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(6) %.sroa.3.0..sroa_idx, i8 0, i64 6, i1 false)
  store i8 1, ptr %.sroa.3.0..sroa_idx, align 4
  %i.b = invoke { ptr, i64 } @"_ZN3std4path95_$LT$impl$u20$core..convert..AsRef$LT$std..path..Path$GT$$u20$for$u20$alloc..string..String$GT$6as_ref17h2201af2eda8637e1E"(ptr align 8 %1)
          to label %bb.c unwind label %bb.b       ; 2 uses

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hac1e1e3627c65915E"(ptr align 8 %1) #22
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = extractvalue { ptr, i64 } %i.b, 0
  %i.e = extractvalue { ptr, i64 } %i.b, 1
  invoke void @_ZN3std2fs11OpenOptions5_open17h005de3b10d8796e4E(ptr sret([16 x i8]) align 8 %0, ptr nonnull align 4 %i.a, ptr align 1 %i.d, i64 %i.e)
          to label %_ZN3std2fs11OpenOptions4open17hfadfcb3dbd757d1bE.exit unwind label %bb.b

_ZN3std2fs11OpenOptions4open17hfadfcb3dbd757d1bE.exit: ; preds = %bb.c
  call void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hac1e1e3627c65915E"(ptr align 8 %1)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #23
  unreachable

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.c
}

; Function Attrs: nonlazybind uwtable
define ptr @_ZN3std2io5Write9write_all17h548896476e9823a9E(ptr align 8 %0, ptr align 1 %1, i64 %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = icmp eq i64 %2, 0
  br i1 %i.c, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.n
  %.sroa.0.015 = phi ptr [ %1, %.lr.ph ], [ %.sroa.0.1, %bb.n ] ; 6 uses
  %.sroa.5.014 = phi i64 [ %2, %.lr.ph ], [ %.sroa.5.1.a, %bb.n ] ; 6 uses
  %i.h = call { i64, ptr } @"_ZN52_$LT$$RF$std..fs..File$u20$as$u20$std..io..Write$GT$5write17h67386e57384e2d63E"(ptr align 8 %0, ptr align 1 %.sroa.0.015, i64 %.sroa.5.014) ; 2 uses
  %i.i = extractvalue { i64, ptr } %i.h, 0        ; 2 uses
  %i.j = extractvalue { i64, ptr } %i.h, 1        ; 4 uses
  store i64 %i.i, ptr %i.b, align 8
  store ptr %i.j, ptr %i.d, align 8
  %i.k = trunc nuw i64 %i.i to i1
  %i.l = ptrtoint ptr %i.j to i64
  br i1 %i.k, label %bb.c, label %bb.d

.loopexit:                                        ; preds = %bb.n, %bb.d, %bb.a, %bb.l
  %.sroa.05.0 = phi ptr [ %i.ai, %bb.l ], [ null, %bb.a ], [ null, %bb.n ], [ @1, %bb.d ]
  ret ptr %.sroa.05.0

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN3std2io5error14repr_bitpacked11decode_repr17h130da1666caa5b63E(ptr nonnull sret([16 x i8]) align 8 %i.a, ptr %i.j)
          to label %bb.i unwind label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.m = icmp eq ptr %i.j, null
  br i1 %i.m, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = invoke { ptr, i64 } @"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17h7cf3d0ccb097fe1fE"(i64 %i.l, ptr align 1 %.sroa.0.015, i64 %.sroa.5.014, ptr nonnull align 8 @3)
          to label %bb.g unwind label %bb.f       ; 2 uses

bb.f:                                             ; preds = %bb.e, %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = load i64, ptr %i.b, align 8
  %i.q = icmp eq i64 %i.p, 1
  br i1 %i.q, label %bb.o, label %bb.p

bb.g:                                             ; preds = %bb.e
  %i.r = extractvalue { ptr, i64 } %i.n, 0
  %i.s = extractvalue { ptr, i64 } %i.n, 1
  br label %bb.h

bb.h:                                             ; preds = %.split11, %.split10, %.split, %bb.k, %bb.g
  %.sroa.5.1.a = phi i64 [ %.sroa.5.014, %bb.k ], [ %i.s, %bb.g ], [ %.sroa.5.014, %.split ], [ %.sroa.5.014, %.split10 ], [ %.sroa.5.014, %.split11 ] ; 2 uses
  %.sroa.0.1 = phi ptr [ %.sroa.0.015, %bb.k ], [ %i.r, %bb.g ], [ %.sroa.0.015, %.split ], [ %.sroa.0.015, %.split10 ], [ %.sroa.0.015, %.split11 ]
  %i.t = load i64, ptr %i.b, align 8
  %i.u = trunc nuw i64 %i.t to i1
  br i1 %i.u, label %bb.m, label %bb.n

bb.i:                                             ; preds = %bb.c
  %i.v = load i8, ptr %i.a, align 8
  switch i8 %i.v, label %bb.j [
    i8 0, label %.split
    i8 1, label %bb.k
    i8 2, label %.split11
    i8 3, label %.split10
  ]

bb.j:                                             ; preds = %bb.i
  unreachable

.split:                                           ; preds = %bb.i
  %i.w = load i32, ptr %i.g, align 4
  %i.x = icmp eq i32 %i.w, 4
  br i1 %i.x, label %bb.h, label %bb.l

.split11:                                         ; preds = %bb.i
  %i.y = load ptr, ptr %i.e, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load i8, ptr %i.z, align 8
  %i.ab = icmp eq i8 %i.aa, 35
  br i1 %i.ab, label %bb.h, label %bb.l

.split10:                                         ; preds = %bb.i
  %i.ac = load ptr, ptr %i.e, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load i8, ptr %i.ad, align 8
  %i.af = icmp eq i8 %i.ae, 35
  br i1 %i.af, label %bb.h, label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.ag = load i8, ptr %i.f, align 1
  %i.ah = icmp eq i8 %i.ag, 35
  br i1 %i.ah, label %bb.h, label %bb.l

bb.l:                                             ; preds = %.split11, %.split10, %.split, %bb.k
  %i.ai = load ptr, ptr %i.d, align 8
  br label %.loopexit

bb.m:                                             ; preds = %bb.h
  call void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hf4189814bdca878fE"(ptr nonnull align 8 %i.d)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.h
  %3 = icmp eq i64 %.sroa.5.1.a, 0
  br i1 %3, label %.loopexit, label %bb.b

bb.o:                                             ; preds = %bb.f
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hf4189814bdca878fE"(ptr nonnull align 8 %i.d) #22
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %bb.o, %bb.f
  resume { ptr, i32 } %i.o

bb.q:                                             ; preds = %bb.o
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #23
  unreachable
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden i32 @"_ZN3std2os2fd5owned98_$LT$impl$u20$core..convert..From$LT$std..os..fd..owned..OwnedFd$GT$$u20$for$u20$std..fs..File$GT$4from17ha7ec481a69256ce1E"(i32 returned %0) unnamed_addr #3 {
bb.a:
  ret i32 %0
}

; Function Attrs: nonlazybind uwtable
define void @_ZN3std3env6var_os17h4ad5d1b5a445f681E(ptr sret([24 x i8]) align 8 %0, ptr align 1 %1, i64 %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %2, ptr %i.b, align 8
  %i.c = call { ptr, i64 } @"_ZN55_$LT$$RF$T$u20$as$u20$core..convert..AsRef$LT$U$GT$$GT$6as_ref17h62a93cc30acbc4feE"(ptr nonnull align 8 %i.a) ; 2 uses
  %i.d = extractvalue { ptr, i64 } %i.c, 0
  %i.e = extractvalue { ptr, i64 } %i.c, 1
  call void @_ZN3std3env7_var_os17h5af5bd490bdba3d6E(ptr sret([24 x i8]) align 8 %0, ptr align 1 %i.d, i64 %i.e)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden range(i8 0, 42) i8 @_ZN3std3sys3pal4unix17decode_error_kind17h2777aae04c7c5f8dE(i32 %0) unnamed_addr #4 {
bb.a:
  %switch.tableidx = add i32 %0, -1               ; 2 uses
  %i.a = icmp ult i32 %switch.tableidx, 122
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN3std3sys3pal4unix17decode_error_kind17h2777aae04c7c5f8dE, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.sroa.0.0 = phi i8 [ %switch.load, %switch.lookup ], [ 41, %bb.a ]
  ret i8 %.sroa.0.0
}

; Function Attrs: noinline nonlazybind uwtable
define void @_ZN3std3sys9backtrace28__rust_begin_short_backtrace17h6efb7ceb27ae1263E(ptr align 8 %0) unnamed_addr #5 {
bb.a:
  tail call void @"_ZN3std6thread7Builder16spawn_unchecked_28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h359f9b8d8513663cE"(ptr align 8 %0)
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !3
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define void @_ZN3std3sys9backtrace28__rust_begin_short_backtrace17hefac7f37eceabaeeE(ptr align 8 %0) unnamed_addr #5 {
bb.a:
  tail call void @"_ZN9jobserver3imp12spawn_helper28_$u7b$$u7b$closure$u7d$$u7d$17h2e551f4b5490e25fE"(ptr align 8 %0)
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !3
  ret void
}

; Function Attrs: nonlazybind uwtable
define { ptr, i64 } @_ZN3std4path4Path3new17h71a8db7f79444545E(ptr align 1 %0, i64 %1) unnamed_addr #2 {
bb.a:
  %i.a = tail call { ptr, i64 } @"_ZN3std3ffi6os_str85_$LT$impl$u20$core..convert..AsRef$LT$std..ffi..os_str..OsStr$GT$$u20$for$u20$str$GT$6as_ref17h2557d58e99d1ea8eE"(ptr align 1 %0, i64 %1)
  ret { ptr, i64 } %i.a
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, i64 } @_ZN3std4path4Path7display17h6a87bac4c7f0d1d8E(ptr align 1 %0, i64 %1) unnamed_addr #3 {
bb.a:
  %i.a = insertvalue { ptr, i64 } poison, ptr %0, 0
  %i.b = insertvalue { ptr, i64 } %i.a, i64 %1, 1
  ret { ptr, i64 } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_ZN3std4sync6poison10map_result17h32b2bdf7b740ba5fE(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 17)) %0, i1 zeroext %1, i8 %2, ptr align 8 %3) unnamed_addr #1 {
bb.a:
  %spec.select = zext i1 %1 to i64
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %3, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %2, ptr %i.b, align 8
  store i64 %spec.select, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @"_ZN3std4sync6poison20PoisonError$LT$T$GT$10into_inner17h432d397cf7e25ee2E"(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #6 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { ptr, i1 } @"_ZN3std4sync6poison20PoisonError$LT$T$GT$10into_inner17he091b9764e062239E"(ptr align 8 %0, i1 zeroext %1) unnamed_addr #4 {
bb.a:
  %i.a = insertvalue { ptr, i1 } poison, ptr %0, 0
  %i.b = insertvalue { ptr, i1 } %i.a, i1 %1, 1
  ret { ptr, i1 } %i.b
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17hd5ff34213cd4d036E"(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 17)) %0, ptr align 8 %1) unnamed_addr #2 {
bb.a:
  %i.a = tail call { i32, i32 } @_ZN4core4sync6atomic23atomic_compare_exchange17hab2e87b0b177ba83E(ptr %1, i32 0, i32 1, i8 2, i8 0)
  %i.b = extractvalue { i32, i32 } %i.a, 0
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN3std3sys4sync5mutex5futex5Mutex14lock_contended17h12c639f5f1e6de5eE(ptr align 4 %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = tail call i64 @_ZN4core4sync6atomic11atomic_load17h763a74c016e8ca72E(ptr nonnull @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E, i8 0)
  %i.d = and i64 %i.c, 9223372036854775807
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_ZN3std4sync6poison4Flag5guard17hb671e68850314a12E.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = tail call zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE()
  %i.g = xor i1 %i.f, true
  %i.h = zext i1 %i.g to i8
  br label %_ZN3std4sync6poison4Flag5guard17hb671e68850314a12E.exit

_ZN3std4sync6poison4Flag5guard17hb671e68850314a12E.exit: ; preds = %bb.c, %bb.d
  %.sroa.01.0.i = phi i8 [ %i.h, %bb.d ], [ 0, %bb.c ]
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.j = tail call i8 @_ZN4core4sync6atomic11atomic_load17hf790599737673bc2E(ptr nonnull align 1 %i.i, i8 0)
  %i.k = icmp ne i8 %i.j, 0
  %spec.select.i = zext i1 %i.k to i64
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sroa.01.0.i, ptr %i.m, align 8
  store i64 %spec.select.i, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { ptr, i1 } @"_ZN3std4sync6poison5mutex19MutexGuard$LT$T$GT$3new28_$u7b$$u7b$closure$u7d$$u7d$17h0adb359236905e4dE"(ptr align 8 %0, i1 zeroext %1) unnamed_addr #3 {
bb.a:
  %i.a = insertvalue { ptr, i1 } poison, ptr %0, 0
  %i.b = insertvalue { ptr, i1 } %i.a, i1 %1, 1
  ret { ptr, i1 } %i.b
}

; Function Attrs: nonlazybind uwtable
define void @_ZN3std4sync6poison7condvar7Condvar12wait_timeout17hb60d17d1054b5dc7E(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) %0, ptr align 4 %1, ptr align 8 %2, i1 zeroext %3, i64 %4, i32 %5) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  store ptr %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = zext i1 %3 to i8                         ; 2 uses
  store i8 %i.c, ptr %i.b, align 8
  %i.d = invoke zeroext i1 @_ZN3std3sys4sync7condvar5futex7Condvar12wait_timeout17h7a8f72362d0cd241E(ptr align 4 %1, ptr align 4 %2, i64 %4, i32 %5)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr87drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$jobserver..HelperInner$GT$$GT$17h2e9f00b37d97c45dE"(ptr nonnull align 8 %i.a) #22
          to label %bb.f unwind label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.g = invoke i8 @_ZN4core4sync6atomic11atomic_load17hf790599737673bc2E(ptr nonnull %i.f, i8 0)
          to label %bb.d unwind label %bb.b

bb.d:                                             ; preds = %bb.c
  %i.h = icmp ne i8 %i.g, 0
  %spec.select = zext i1 %i.h to i64
  %i.i = xor i1 %i.d, true
  %.sink = zext i1 %i.i to i8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %i.c, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %.sink, ptr %i.l, align 8
  store i64 %spec.select, ptr %0, align 8
  ret void

bb.e:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #23
  unreachable

bb.f:                                             ; preds = %bb.b
end_hunk_0
begin_hunk_1_@"_ZN89_$LT$alloc..boxed..Box$LT$F$C$A$GT$$u20$as$u20$core..ops..function..FnMut$LT$Args$GT$$GT$8call_mut17h3ebc0faa3acd5f18E":bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !invariant.load !4, !nonnull !4
  call void %i.f(ptr align 1 %i.b, ptr nonnull align 8 %i.a)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define nonnull align 8 ptr @"_ZN89_$LT$std..sync..poison..mutex..MutexGuard$LT$T$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h6494de2aa284006eE"(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #11 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  ret ptr %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define { ptr, i64 } @"_ZN90_$LT$core..str..iter..Split$LT$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd70443282be1026bE"(ptr align 8 %0) unnamed_addr #8 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 65 ; 3 uses
  %i.c = load i8, ptr %i.b, align 1
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %"_ZN4core3str4iter22SplitInternal$LT$P$GT$4next17h476a47c693e6d239E.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = tail call { ptr, i64 } @"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$8haystack17hbed35e71e3e5fa4fE"(ptr nonnull align 8 %i.e)
  call void @"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17hda0bcb530722436cE"(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr nonnull align 8 %i.e)
  %i.g = load i64, ptr %i.a, align 8
  %i.h = trunc nuw i64 %i.g to i1
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = extractvalue { ptr, i64 } %i.f, 0
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.k = load i64, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.m = load i64, ptr %i.l, align 8
  %i.n = load i64, ptr %0, align 8                ; 2 uses
  %i.o = sub nuw i64 %i.k, %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.n
  store i64 %i.m, ptr %0, align 8
  br label %"_ZN4core3str4iter22SplitInternal$LT$P$GT$4next17h476a47c693e6d239E.exit"

bb.d:                                             ; preds = %bb.b
  %i.q = load i8, ptr %i.b, align 1
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %"_ZN4core3str4iter22SplitInternal$LT$P$GT$4next17h476a47c693e6d239E.exit", label %bb.e

bb.e:                                             ; preds = %bb.d
  store i8 1, ptr %i.b, align 1
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.t = load i8, ptr %i.s, align 8
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load i64, ptr %i.v, align 8
  %i.x = load i64, ptr %0, align 8
  %.not.i.i = icmp eq i64 %i.w, %i.x
  br i1 %.not.i.i, label %"_ZN4core3str4iter22SplitInternal$LT$P$GT$4next17h476a47c693e6d239E.exit", label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.y = call { ptr, i64 } @"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$8haystack17hbed35e71e3e5fa4fE"(ptr nonnull align 8 %i.e)
  %i.z = extractvalue { ptr, i64 } %i.y, 0
  %i.aa = load i64, ptr %0, align 8               ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = sub nuw i64 %i.ac, %i.aa
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.aa
  br label %"_ZN4core3str4iter22SplitInternal$LT$P$GT$4next17h476a47c693e6d239E.exit"

"_ZN4core3str4iter22SplitInternal$LT$P$GT$4next17h476a47c693e6d239E.exit": ; preds = %bb.a, %bb.c, %bb.d, %bb.f, %bb.g
  %.sroa.4.0.i = phi i64 [ undef, %bb.a ], [ %i.o, %bb.c ], [ %i.ad, %bb.g ], [ undef, %bb.f ], [ undef, %bb.d ]
  %.sroa.0.0.i = phi ptr [ null, %bb.a ], [ %i.p, %bb.c ], [ %i.ae, %bb.g ], [ null, %bb.f ], [ null, %bb.d ]
  %i.af = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.i, 0
  %i.ag = insertvalue { ptr, i64 } %i.af, i64 %.sroa.4.0.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret { ptr, i64 } %i.ag
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define align 8 ptr @"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha44eed472dc28510E"(ptr nofree align 8 captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.e, ptr %0, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi ptr [ %i.a, %bb.b ], [ null, %bb.a ]
  ret ptr %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define { ptr, i64 } @"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8find_map17hecfca7193995ed1eE"(ptr nofree align 8 captures(none) %0, ptr align 1 %1, i64 %2) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [104 x i8], align 8               ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.32.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  br label %bb.b

bb.b:                                             ; preds = %"_ZN9jobserver19find_jobserver_auth28_$u7b$$u7b$closure$u7d$$u7d$17h7607d0ac142e3e55E.exit", %bb.a
  %i.g = load ptr, ptr %0, align 8                ; 5 uses
  %i.h = load ptr, ptr %i.d, align 8
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha44eed472dc28510E.exit.thread", label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha44eed472dc28510E.exit"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha44eed472dc28510E.exit": ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.j, ptr %0, align 8
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha44eed472dc28510E.exit.thread", label %bb.c

bb.c:                                             ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha44eed472dc28510E.exit"
  %.val11 = load ptr, ptr %i.g, align 8
  %i.k = getelementptr i8, ptr %i.g, i64 8
  %.val12 = load i64, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hf3d14f3267cac7fdE"(ptr nonnull sret([104 x i8]) align 8 %i.a, ptr align 1 %.val11, i64 %.val12, ptr align 1 %1, i64 %2)
  call void @"_ZN87_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..ReverseSearcher$GT$15next_match_back17hd08d7ea919cf28d3E"(ptr nonnull sret([24 x i8]) align 8 %i.b, ptr nonnull align 8 %i.a)
  %i.l = load i64, ptr %i.b, align 8
  %i.m = trunc nuw i64 %i.l to i1
  br i1 %i.m, label %bb.d, label %"_ZN9jobserver19find_jobserver_auth28_$u7b$$u7b$closure$u7d$$u7d$17h7607d0ac142e3e55E.exit"

bb.d:                                             ; preds = %bb.c
  %i.n = load i64, ptr %i.e, align 8
  %i.o = load i64, ptr %i.f, align 8              ; 2 uses
  %i.p = sub nuw i64 %2, %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %i.o
  store i64 %i.n, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  store ptr %i.q, ptr %.sroa.32.0..sroa_idx.i.i, align 8
  store i64 %i.p, ptr %.sroa.4.0..sroa_idx.i.i, align 8
  br label %"_ZN9jobserver19find_jobserver_auth28_$u7b$$u7b$closure$u7d$$u7d$17h7607d0ac142e3e55E.exit"

"_ZN9jobserver19find_jobserver_auth28_$u7b$$u7b$closure$u7d$$u7d$17h7607d0ac142e3e55E.exit": ; preds = %bb.c, %bb.d
  %.sink.i.i = phi ptr [ %1, %bb.d ], [ null, %bb.c ]
  store ptr %.sink.i.i, ptr %i.c, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.r = call { ptr, i64 } @"_ZN4core6option15Option$LT$T$GT$3map17h7e677e59b98c57c8E"(ptr nonnull align 8 %i.c) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.s = extractvalue { ptr, i64 } %i.r, 0        ; 2 uses
  %.not9 = icmp eq ptr %i.s, null
  br i1 %.not9, label %bb.b, label %bb.e

bb.e:                                             ; preds = %"_ZN9jobserver19find_jobserver_auth28_$u7b$$u7b$closure$u7d$$u7d$17h7607d0ac142e3e55E.exit"
  %i.t = extractvalue { ptr, i64 } %i.r, 1
  br label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha44eed472dc28510E.exit.thread"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha44eed472dc28510E.exit.thread": ; preds = %bb.b, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha44eed472dc28510E.exit", %bb.e
  %.sroa.3.0 = phi i64 [ %i.t, %bb.e ], [ undef, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha44eed472dc28510E.exit" ], [ undef, %bb.b ]
  %.sroa.0.0 = phi ptr [ %i.s, %bb.e ], [ null, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha44eed472dc28510E.exit" ], [ null, %bb.b ]
  %i.u = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %i.v = insertvalue { ptr, i64 } %i.u, i64 %.sroa.3.0, 1
  ret { ptr, i64 } %i.v
}

; Function Attrs: inlinehint nonlazybind uwtable
define { ptr, i64 } @"_ZN91_$LT$core..str..iter..SplitN$LT$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5aeeef924c18d687E"(ptr align 8 %0) unnamed_addr #8 {
bb.a:
  %i.a = tail call { ptr, i64 } @"_ZN4core3str4iter23SplitNInternal$LT$P$GT$4next17h0fccd29b562e5d88E"(ptr align 8 %0)
  ret { ptr, i64 } %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define nonnull align 8 ptr @"_ZN92_$LT$std..sync..poison..mutex..MutexGuard$LT$T$GT$$u20$as$u20$core..ops..deref..DerefMut$GT$9deref_mut17h6f7c32385700dd95E"(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #11 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  ret ptr %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN9jobserver11HelperState16for_each_request17h7fb9986155282a86E(ptr align 8 %0, ptr align 8 %1, ptr align 8 %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 3 uses
  store ptr %1, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %2, ptr %i.e, align 8
  %i.f = tail call { ptr, i1 } @_ZN9jobserver11HelperState4lock17h1fe799baea22d1d8E(ptr align 8 %0) ; 2 uses
  %i.g = extractvalue { ptr, i1 } %i.f, 0         ; 4 uses
  %i.h = extractvalue { ptr, i1 } %i.f, 1
  store ptr %i.g, ptr %i.c, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.j = zext i1 %i.h to i8                       ; 2 uses
  store i8 %i.j, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.l = load i8, ptr %i.k, align 8
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %bb.b

.body.thread:                                     ; preds = %bb.d, %bb.j
  %eh.lpad-body5 = phi { ptr, i32 } [ %i.w, %bb.d ], [ %lpad.thr_comm.split-lp, %bb.j ]
  resume { ptr, i32 } %eh.lpad-body5

bb.b:                                             ; preds = %.lr.ph, %.backedge
  %i.r = phi i8 [ %i.j, %.lr.ph ], [ %storemerge, %.backedge ] ; 3 uses
  %i.s = phi ptr [ %i.g, %.lr.ph ], [ %storemerge10, %.backedge ] ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8              ; 2 uses
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.s, ptr %i.a, align 8
  store i8 %i.r, ptr %i.o, align 8
  invoke void @_ZN3std3sys4sync7condvar5futex7Condvar4wait17hb2e22a6285007b8dE(ptr nonnull align 4 %i.n, ptr nonnull align 8 %i.s)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr87drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$jobserver..HelperInner$GT$$GT$17h2e9f00b37d97c45dE"(ptr nonnull align 8 %i.a) #22
          to label %.body.thread unwind label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.y = invoke i8 @_ZN4core4sync6atomic11atomic_load17hf790599737673bc2E(ptr nonnull %i.x, i8 0)
          to label %bb.g unwind label %bb.d

bb.f:                                             ; preds = %bb.d
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #23
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.aa = icmp ne i8 %i.y, 0
  %spec.select.i = zext i1 %i.aa to i64
  store ptr %i.s, ptr %i.p, align 8
  store i8 %i.r, ptr %i.q, align 8
  store i64 %spec.select.i, ptr %i.b, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ab = call { ptr, i1 } @"_ZN4core6result19Result$LT$T$C$E$GT$14unwrap_or_else17h82199f96b9b6fc42E"(ptr nonnull align 8 %i.b, ptr nonnull align 8 @11)
  br label %.backedge

bb.h:                                             ; preds = %bb.b
  %i.ac = add i64 %i.u, -1
  store i64 %i.ac, ptr %i.t, align 8
  %3 = trunc nuw i8 %i.r to i1
  call void @_ZN4core3mem4drop17h69fd03ac8640b519E(ptr nonnull align 8 %i.s, i1 zeroext %3)
  call void @"_ZN9jobserver3imp12spawn_helper28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h056449ae10c0a7c4E"(ptr nonnull align 8 %i.d, ptr align 8 %0)
  %i.ad = call { ptr, i1 } @_ZN9jobserver11HelperState4lock17h1fe799baea22d1d8E(ptr align 8 %0)
  br label %.backedge

.backedge:                                        ; preds = %bb.h, %bb.g
  %.pn = phi { ptr, i1 } [ %i.ad, %bb.h ], [ %i.ab, %bb.g ] ; 2 uses
  %storemerge10 = extractvalue { ptr, i1 } %.pn, 0 ; 4 uses
  store ptr %storemerge10, ptr %i.c, align 8
  %storemerge.in = extractvalue { ptr, i1 } %.pn, 1
  %storemerge = zext i1 %storemerge.in to i8      ; 2 uses
  store i8 %storemerge, ptr %i.i, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %storemerge10, i64 16
  %i.af = load i8, ptr %i.ae, align 8
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %.backedge, %bb.a
  %.lcssa = phi ptr [ %i.g, %bb.a ], [ %storemerge10, %.backedge ]
  %i.ah = getelementptr inbounds nuw i8, ptr %.lcssa, i64 17
  store i8 1, ptr %i.ah, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke void @_ZN3std4sync6poison7condvar7Condvar10notify_one17ha6742700240ec527E(ptr nonnull align 4 %i.ai)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %._crit_edge
  call void @"_ZN4core3ptr87drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$jobserver..HelperInner$GT$$GT$17h2e9f00b37d97c45dE"(ptr nonnull align 8 %i.c)
  ret void

bb.j:                                             ; preds = %._crit_edge
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr87drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$jobserver..HelperInner$GT$$GT$17h2e9f00b37d97c45dE"(ptr nonnull align 8 %i.c) #22
          to label %.body.thread unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #23
  unreachable
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, i1 } @"_ZN9jobserver11HelperState16for_each_request28_$u7b$$u7b$closure$u7d$$u7d$17h5174174155b88962E"(ptr align 8 %0, i1 zeroext %1) unnamed_addr #3 {
bb.a:
  %i.a = insertvalue { ptr, i1 } poison, ptr %0, 0
  %i.b = insertvalue { ptr, i1 } %i.a, i1 %1, 1
  ret { ptr, i1 } %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i1 } @_ZN9jobserver11HelperState4lock17h1fe799baea22d1d8E(ptr align 8 %0) unnamed_addr #2 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = tail call { i32, i32 } @_ZN4core4sync6atomic23atomic_compare_exchange17hab2e87b0b177ba83E(ptr align 8 %0, i32 0, i32 1, i8 2, i8 0)
  %i.c = extractvalue { i32, i32 } %i.b, 0
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN3std3sys4sync5mutex5futex5Mutex14lock_contended17h12c639f5f1e6de5eE(ptr align 8 %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = tail call i64 @_ZN4core4sync6atomic11atomic_load17h763a74c016e8ca72E(ptr nonnull @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E, i8 0)
  %i.e = and i64 %i.d, 9223372036854775807
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17hd5ff34213cd4d036E.exit", label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = tail call zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE()
  %i.h = xor i1 %i.g, true
  %i.i = zext i1 %i.h to i8
  br label %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17hd5ff34213cd4d036E.exit"

"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17hd5ff34213cd4d036E.exit": ; preds = %bb.c, %bb.d
  %.sroa.01.0.i.i = phi i8 [ %i.i, %bb.d ], [ 0, %bb.c ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.k = tail call i8 @_ZN4core4sync6atomic11atomic_load17hf790599737673bc2E(ptr nonnull align 1 %i.j, i8 0)
  %i.l = icmp ne i8 %i.k, 0
  %spec.select.i.i = zext i1 %i.l to i64
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %0, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i8 %.sroa.01.0.i.i, ptr %i.n, align 8
  store i64 %spec.select.i.i, ptr %i.a, align 8
  %i.o = call { ptr, i1 } @"_ZN4core6result19Result$LT$T$C$E$GT$14unwrap_or_else17h8133b4ce24874ce1E"(ptr nonnull align 8 %i.a, ptr nonnull align 8 @12)
  ret { ptr, i1 } %i.o
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, i1 } @"_ZN9jobserver11HelperState4lock28_$u7b$$u7b$closure$u7d$$u7d$17h2fec262a0a1cf781E"(ptr align 8 %0, i1 zeroext %1) unnamed_addr #3 {
bb.a:
  %i.a = insertvalue { ptr, i1 } poison, ptr %0, 0
  %i.b = insertvalue { ptr, i1 } %i.a, i1 %1, 1
  ret { ptr, i1 } %i.b
}

; Function Attrs: nonlazybind uwtable
define void @_ZN9jobserver12HelperThread13request_token17h67a0110d42e929cbE(ptr align 8 %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = tail call align 8 ptr @"_ZN73_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h1ab0911ccff2debdE"(ptr align 8 %0)
  %i.c = tail call { ptr, i1 } @_ZN9jobserver11HelperState4lock17h1fe799baea22d1d8E(ptr align 8 %i.b) ; 2 uses
  %i.d = extractvalue { ptr, i1 } %i.c, 0         ; 2 uses
  %i.e = extractvalue { ptr, i1 } %i.c, 1
  store ptr %i.d, ptr %i.a, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = zext i1 %i.e to i8
  store i8 %i.g, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8
  %i.j = add i64 %i.i, 1
  store i64 %i.j, ptr %i.h, align 8
  call void @"_ZN4core3ptr87drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$jobserver..HelperInner$GT$$GT$17h2e9f00b37d97c45dE"(ptr nonnull align 8 %i.a)
  %i.k = call align 8 ptr @"_ZN73_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h1ab0911ccff2debdE"(ptr align 8 %0)
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  call void @_ZN3std4sync6poison7condvar7Condvar10notify_one17ha6742700240ec527E(ptr nonnull align 4 %i.l)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden { ptr, i64 } @"_ZN9jobserver19find_jobserver_auth28_$u7b$$u7b$closure$u7d$$u7d$17hbe3aa75528f2abcbE"(ptr align 1 %0, i64 %1) unnamed_addr #8 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [72 x i8], align 8                ; 8 uses
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 4 uses
  call void @"_ZN52_$LT$char$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17h7ead211667ca03f6E"(ptr nonnull sret([48 x i8]) align 8 %.sroa.3.0..sroa_idx.i, i32 32, ptr align 1 %0, i64 %1)
  store i64 0, ptr %i.b, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  store i64 %1, ptr %.sroa.2.0..sroa_idx.i, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  store i8 1, ptr %.sroa.4.0..sroa_idx.i, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 65 ; 3 uses
  store i8 0, ptr %.sroa.5.0..sroa_idx.i, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = call { ptr, i64 } @"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$8haystack17hbed35e71e3e5fa4fE"(ptr nonnull align 8 %.sroa.3.0..sroa_idx.i)
  call void @"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17hda0bcb530722436cE"(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr nonnull align 8 %.sroa.3.0..sroa_idx.i)
  %i.d = load i64, ptr %i.a, align 8
  %i.e = trunc nuw i64 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = extractvalue { ptr, i64 } %i.c, 0
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.h = load i64, ptr %i.g, align 8
  %i.i = load i64, ptr %i.b, align 8              ; 2 uses
  %i.j = sub nuw i64 %i.h, %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.i
  br label %"_ZN90_$LT$core..str..iter..Split$LT$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd70443282be1026bE.exit"

bb.c:                                             ; preds = %bb.a
  %i.l = load i8, ptr %.sroa.5.0..sroa_idx.i, align 1
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %"_ZN90_$LT$core..str..iter..Split$LT$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd70443282be1026bE.exit", label %bb.d

bb.d:                                             ; preds = %bb.c
  store i8 1, ptr %.sroa.5.0..sroa_idx.i, align 1
  %i.n = load i8, ptr %.sroa.4.0..sroa_idx.i, align 8
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.q = load i64, ptr %i.b, align 8
  %.not.i.i.i = icmp eq i64 %i.p, %i.q
  br i1 %.not.i.i.i, label %"_ZN90_$LT$core..str..iter..Split$LT$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd70443282be1026bE.exit", label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.r = call { ptr, i64 } @"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$8haystack17hbed35e71e3e5fa4fE"(ptr nonnull align 8 %.sroa.3.0..sroa_idx.i)
  %i.s = extractvalue { ptr, i64 } %i.r, 0
  %i.t = load i64, ptr %i.b, align 8              ; 2 uses
  %i.u = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.v = sub nuw i64 %i.u, %i.t
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.t
  br label %"_ZN90_$LT$core..str..iter..Split$LT$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd70443282be1026bE.exit"

"_ZN90_$LT$core..str..iter..Split$LT$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd70443282be1026bE.exit": ; preds = %bb.b, %bb.c, %bb.e, %bb.f
  %.sroa.4.0.i.i = phi i64 [ undef, %bb.c ], [ %i.j, %bb.b ], [ %i.v, %bb.f ], [ undef, %bb.e ]
  %.sroa.0.0.i.i = phi ptr [ null, %bb.c ], [ %i.k, %bb.b ], [ %i.w, %bb.f ], [ null, %bb.e ]
  %i.x = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.i.i, 0
  %i.y = insertvalue { ptr, i64 } %i.x, i64 %.sroa.4.0.i.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret { ptr, i64 } %i.y
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden { ptr, i64 } @"_ZN9jobserver19find_jobserver_auth28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17hcaf07ba528896e88E"(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = insertvalue { ptr, i64 } poison, ptr %i.b, 0
  %i.f = insertvalue { ptr, i64 } %i.e, i64 %i.d, 1
  ret { ptr, i64 } %i.f
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN9jobserver6Client10mflags_env17hff3e05a69962e7eeE(ptr noalias nofree nonnull writeonly align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 2 uses
  %i.b = alloca [16 x i8], align 8                ; 2 uses
  %i.c = alloca [48 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 2 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = tail call align 8 ptr @"_ZN73_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h27f43b7f59ea692aE"(ptr align 8 %1)
  call void @_ZN9jobserver3imp6Client10string_arg17h7a45458e23f3af2cE(ptr nonnull sret([24 x i8]) align 8 %i.e, ptr align 8 %i.f)
  invoke void @_ZN4core3fmt2rt8Argument11new_display17h768a32b1b1494419E(ptr nonnull sret([16 x i8]) align 8 %i.a, ptr nonnull align 8 %i.e)
          to label %bb.c unwind label %bb.b
end_hunk_1
