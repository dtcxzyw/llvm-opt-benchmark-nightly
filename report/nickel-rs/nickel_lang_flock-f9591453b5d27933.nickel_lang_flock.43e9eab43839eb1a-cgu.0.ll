Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nickel-rs/original/nickel_lang_flock-f9591453b5d27933.nickel_lang_flock.43e9eab43839eb1a-cgu.0?download=true
inline.NumInlined: 68
inline.NumDeleted: 46
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [48 x i8] c" appears to be an NFS mount, not trying to lock\0A", align 1, !guid !3
@1 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr inttoptr (i64 1 to ptr), [8 x i8] zeroinitializer, ptr @0, [8 x i8] c"0\00\00\00\00\00\00\00" }>, align 8, !guid !3
@2 = private unnamed_addr constant [17 x i8] c"flock/src/lib.rs\00", align 1, !guid !3
@3 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"\10\00\00\00\00\00\00\00)\00\00\003\00\00\00" }>, align 8, !guid !3
@4 = private unnamed_addr constant [25 x i8] c"Waiting for file lock on ", align 1, !guid !3
@5 = private unnamed_addr constant [1 x i8] c"\0A", align 1, !guid !3
@6 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @4, [8 x i8] c"\19\00\00\00\00\00\00\00", ptr @5, [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8, !guid !3
@7 = private unnamed_addr constant [23 x i8] c"failed to release lock ", align 1, !guid !3
@8 = private unnamed_addr constant [2 x i8] c": ", align 1, !guid !3
@9 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @7, [8 x i8] c"\17\00\00\00\00\00\00\00", ptr @8, [8 x i8] c"\02\00\00\00\00\00\00\00", ptr @5, [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8, !guid !3

; Function Attrs: nounwind nonlazybind uwtable
define noundef ptr @_ZN17nickel_lang_flock3sys11lock_shared17h6c7b9c4d08119745E(ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %0) unnamed_addr #0 !guid !8 {
bb.a:
  %.val = load i32, ptr %0, align 4, !range !4, !noundef !5
  %i.a = tail call noundef i32 @flock(i32 noundef %.val, i32 noundef 1) #11
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN17nickel_lang_flock3sys5flock17h0b268bde0823f845E.exit

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef ptr @__errno_location() #11
  %i.d = load i32, ptr %i.c, align 4, !noundef !5
  %i.e = sext i32 %i.d to i64
  %i.f = shl nsw i64 %i.e, 32
  %i.g = or disjoint i64 %i.f, 2
  %i.h = inttoptr i64 %i.g to ptr
  br label %_ZN17nickel_lang_flock3sys5flock17h0b268bde0823f845E.exit

_ZN17nickel_lang_flock3sys5flock17h0b268bde0823f845E.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi ptr [ %i.h, %bb.b ], [ null, %bb.a ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nounwind nonlazybind uwtable
define noundef ptr @_ZN17nickel_lang_flock3sys14lock_exclusive17hebb818f4892c8565E(ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %0) unnamed_addr #0 !guid !9 {
bb.a:
  %.val = load i32, ptr %0, align 4, !range !4, !noundef !5
  %i.a = tail call noundef i32 @flock(i32 noundef %.val, i32 noundef 2) #11
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN17nickel_lang_flock3sys5flock17h0b268bde0823f845E.exit

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef ptr @__errno_location() #11
  %i.d = load i32, ptr %i.c, align 4, !noundef !5
  %i.e = sext i32 %i.d to i64
  %i.f = shl nsw i64 %i.e, 32
  %i.g = or disjoint i64 %i.f, 2
  %i.h = inttoptr i64 %i.g to ptr
  br label %_ZN17nickel_lang_flock3sys5flock17h0b268bde0823f845E.exit

_ZN17nickel_lang_flock3sys5flock17h0b268bde0823f845E.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi ptr [ %i.h, %bb.b ], [ null, %bb.a ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nounwind nonlazybind uwtable
define noundef ptr @_ZN17nickel_lang_flock3sys15try_lock_shared17h593fc4925b644b10E(ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %0) unnamed_addr #0 !guid !10 {
bb.a:
  %.val = load i32, ptr %0, align 4, !range !4, !noundef !5
  %i.a = tail call noundef i32 @flock(i32 noundef %.val, i32 noundef 5) #11
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN17nickel_lang_flock3sys5flock17h0b268bde0823f845E.exit

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef ptr @__errno_location() #11
  %i.d = load i32, ptr %i.c, align 4, !noundef !5
  %i.e = sext i32 %i.d to i64
  %i.f = shl nsw i64 %i.e, 32
  %i.g = or disjoint i64 %i.f, 2
  %i.h = inttoptr i64 %i.g to ptr
  br label %_ZN17nickel_lang_flock3sys5flock17h0b268bde0823f845E.exit

_ZN17nickel_lang_flock3sys5flock17h0b268bde0823f845E.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi ptr [ %i.h, %bb.b ], [ null, %bb.a ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nounwind nonlazybind uwtable
define noundef ptr @_ZN17nickel_lang_flock3sys18try_lock_exclusive17h4df390cd8784d15eE(ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %0) unnamed_addr #0 !guid !11 {
bb.a:
  %.val = load i32, ptr %0, align 4, !range !4, !noundef !5
  %i.a = tail call noundef i32 @flock(i32 noundef %.val, i32 noundef 6) #11
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN17nickel_lang_flock3sys5flock17h0b268bde0823f845E.exit

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef ptr @__errno_location() #11
  %i.d = load i32, ptr %i.c, align 4, !noundef !5
  %i.e = sext i32 %i.d to i64
  %i.f = shl nsw i64 %i.e, 32
  %i.g = or disjoint i64 %i.f, 2
  %i.h = inttoptr i64 %i.g to ptr
  br label %_ZN17nickel_lang_flock3sys5flock17h0b268bde0823f845E.exit

_ZN17nickel_lang_flock3sys5flock17h0b268bde0823f845E.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi ptr [ %i.h, %bb.b ], [ null, %bb.a ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define void @_ZN17nickel_lang_flock4open17h47f8b0687a083114E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %3, i1 noundef zeroext %4) unnamed_addr #1 personality ptr @rust_eh_personality !guid !17 {
bb.a:
  %i.a = alloca [8 x i8], align 4                 ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  call void @_ZN3std2fs11OpenOptions5_open17h005de3b10d8796e4E(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.c, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %3, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2)
  %i.d = load i32, ptr %i.c, align 8, !range !18, !noundef !5
  %i.e = trunc nuw i32 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.t

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !5, !noundef !5 ; 9 uses
  %i.h = ptrtoint ptr %i.g to i64                 ; 3 uses
  %i.i = and i64 %i.h, 3
  switch i64 %i.i, label %default.unreachable [
    i64 2, label %bb.c
    i64 3, label %bb.d
    i64 0, label %bb.e
    i64 1, label %bb.f
  ], !prof !6

default.unreachable:                              ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %.mask.i = and i64 %i.h, -4294967296
  %cond.i = icmp eq i64 %.mask.i, 8589934592
  %brmerge11.not = and i1 %4, %cond.i
  br i1 %brmerge11.not, label %bb.h, label %bb.u

bb.d:                                             ; preds = %bb.b
  %i.j = lshr i64 %i.h, 32
  %i.k = trunc nuw i64 %i.j to i32
  %spec.select43.i.i.i.i = call i32 @llvm.umin.i32(i32 %i.k, i32 42)
  %spec.select.i.i.i.i = trunc nuw nsw i32 %spec.select43.i.i.i.i to i8
  %i.l = icmp ult ptr %i.g, inttoptr (i64 180388626432 to ptr)
  call void @llvm.assume(i1 %i.l)
  br label %_ZN3std2io5error5Error4kind17hcef9c5606d2f7459E.exit.i

bb.e:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.n = load i8, ptr %i.m, align 8, !range !19, !noalias !20, !noundef !5
  br label %_ZN3std2io5error5Error4kind17hcef9c5606d2f7459E.exit.i

bb.f:                                             ; preds = %bb.b
  %i.o = getelementptr i8, ptr %i.g, i64 15
  %i.p = load i8, ptr %i.o, align 8, !range !19, !noalias !20, !noundef !5
  br label %_ZN3std2io5error5Error4kind17hcef9c5606d2f7459E.exit.i

bb.g:                                             ; preds = %bb.n, %bb.k, %bb.j, %bb.h
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hf602db3b4a7ead6bE"(ptr nonnull %i.g) #12
          to label %bb.s unwind label %bb.r, !noalias !20

_ZN3std2io5error5Error4kind17hcef9c5606d2f7459E.exit.i: ; preds = %bb.f, %bb.e, %bb.d
  %.sroa.0.0.i.i = phi i8 [ %i.p, %bb.f ], [ %spec.select.i.i.i.i, %bb.d ], [ %i.n, %bb.e ]
  %i.r = icmp eq i8 %.sroa.0.0.i.i, 0
  %brmerge.not = and i1 %4, %i.r
  br i1 %brmerge.not, label %bb.h, label %bb.u

bb.h:                                             ; preds = %bb.c, %_ZN3std2io5error5Error4kind17hcef9c5606d2f7459E.exit.i
  %i.s = invoke { ptr, i64 } @_ZN3std4path4Path6parent17h3c6e49002294403cE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2)
          to label %bb.i unwind label %bb.g, !noalias !20 ; 2 uses

bb.i:                                             ; preds = %bb.h
  %i.t = extractvalue { ptr, i64 } %i.s, 0        ; 2 uses
  %.not.i = icmp eq ptr %i.t, null
  br i1 %.not.i, label %bb.k, label %bb.j, !prof !21

bb.j:                                             ; preds = %bb.i
  %i.u = extractvalue { ptr, i64 } %i.s, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !22
  store i32 511, ptr %i.a, align 4, !noalias !22
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i8 1, ptr %i.v, align 4, !noalias !22
  %i.w = invoke noundef ptr @_ZN3std2fs10DirBuilder7_create17h70f652d231a39496E(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.t, i64 noundef %i.u)
          to label %bb.m unwind label %bb.g, !noalias !20 ; 2 uses

bb.k:                                             ; preds = %bb.i
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #13
          to label %bb.l unwind label %bb.g, !noalias !20

bb.l:                                             ; preds = %bb.k
  unreachable

bb.m:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !22
  %.not9.i = icmp eq ptr %i.w, null
  br i1 %.not9.i, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !20
  invoke void @_ZN3std2fs11OpenOptions5_open17h005de3b10d8796e4E(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %3, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2)
          to label %_ZN3std2fs11OpenOptions4open17h18c31ee2962df8a0E.exit.i unwind label %bb.g, !noalias !20

_ZN3std2fs11OpenOptions4open17h18c31ee2962df8a0E.exit.i: ; preds = %bb.n
  %i.x = load i32, ptr %i.b, align 8, !range !18, !noalias !20, !noundef !5
  %i.y = trunc nuw i32 %i.x to i1
  br i1 %i.y, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZN3std2fs11OpenOptions4open17h18c31ee2962df8a0E.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !noalias !20, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !20
  br label %bb.q

bb.p:                                             ; preds = %_ZN3std2fs11OpenOptions4open17h18c31ee2962df8a0E.exit.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.ac = load i32, ptr %i.ab, align 4, !range !4, !noalias !20, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !20
  call fastcc void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hf602db3b4a7ead6bE"(ptr nonnull %i.g), !noalias !20
  br label %"_ZN17nickel_lang_flock4open28_$u7b$$u7b$closure$u7d$$u7d$17h524cef15955060efE.exit"

bb.q:                                             ; preds = %bb.o, %bb.m
  %.sink.i = phi ptr [ %i.aa, %bb.o ], [ %i.w, %bb.m ]
  call fastcc void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hf602db3b4a7ead6bE"(ptr nonnull %i.g), !noalias !20
  br label %bb.u

bb.r:                                             ; preds = %bb.g
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #14, !noalias !20
  unreachable

bb.s:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.q

bb.t:                                             ; preds = %bb.a
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %.sroa.8.0.copyload = load i32, ptr %.sroa.8.0..sroa_idx, align 4
  br label %"_ZN17nickel_lang_flock4open28_$u7b$$u7b$closure$u7d$$u7d$17h524cef15955060efE.exit"

bb.u:                                             ; preds = %bb.c, %_ZN3std2io5error5Error4kind17hcef9c5606d2f7459E.exit.i, %bb.q
  %.sroa.10.0.ph = phi ptr [ %i.g, %bb.c ], [ %i.g, %_ZN3std2io5error5Error4kind17hcef9c5606d2f7459E.exit.i ], [ %.sink.i, %bb.q ]
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.10.0.ph, ptr %i.ae, align 8
  br label %bb.v

"_ZN17nickel_lang_flock4open28_$u7b$$u7b$closure$u7d$$u7d$17h524cef15955060efE.exit": ; preds = %bb.t, %bb.p
  %.sroa.8.0 = phi i32 [ %.sroa.8.0.copyload, %bb.t ], [ %i.ac, %bb.p ]
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.8.0, ptr %i.af, align 4
  br label %bb.v

bb.v:                                             ; preds = %"_ZN17nickel_lang_flock4open28_$u7b$$u7b$closure$u7d$$u7d$17h524cef15955060efE.exit", %bb.u
  %storemerge = phi i32 [ 0, %"_ZN17nickel_lang_flock4open28_$u7b$$u7b$closure$u7d$$u7d$17h524cef15955060efE.exit" ], [ 1, %bb.u ]
  store i32 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef ptr @_ZN17nickel_lang_flock7acquire17hde4a3736e1009897E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, i64 noundef %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2, i64 noundef %3, ptr noundef nonnull align 1 %4, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %5, ptr noundef nonnull align 1 %6, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %7) unnamed_addr #1 personality ptr @rust_eh_personality !guid !31 {
bb.a:
  %i.a = alloca [120 x i8], align 8               ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 8 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [48 x i8], align 8                ; 8 uses
  %i.e = alloca [16 x i8], align 8                ; 7 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [48 x i8], align 8                ; 8 uses
  %i.h = alloca [16 x i8], align 8                ; 3 uses
  store ptr %0, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %1, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 40
  %.val = load ptr, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %2, ptr %i.e, align 8, !noalias !32
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %3, ptr %i.k, align 8, !noalias !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !33
  call void @"_ZN81_$LT$$RF$$u5b$u8$u5d$$u20$as$u20$alloc..ffi..c_str..CString..new..SpecNewImpl$GT$13spec_new_impl17hfbbfe5651ec9f208E"(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2, i64 noundef %3), !noalias !34
  %i.l = load i64, ptr %i.b, align 8, !range !35, !noalias !33, !noundef !5 ; 3 uses
  %.not.i.i = icmp eq i64 %i.l, -9223372036854775808
  br i1 %.not.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !noalias !33, !nonnull !5, !align !7, !noundef !5 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.p = load i64, ptr %i.o, align 8, !noalias !33, !noundef !5 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.a, i8 0, i64 120, i1 false), !noalias !33
  %i.q = call noundef i32 @statfs(ptr noundef nonnull %i.n, ptr noundef nonnull %i.a) #11, !noalias !34
  %i.r = icmp eq i32 %i.q, 0
  %i.s = load i64, ptr %i.a, align 8, !noalias !33
  %i.t = and i64 %i.s, 4294967295
  %i.u = icmp eq i64 %i.t, 26985
  %.sroa.0.0.i.i = select i1 %i.r, i1 %i.u, i1 false ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !33
  store i8 0, ptr %i.n, align 1, !noalias !34
  %i.v = icmp eq i64 %i.p, 0
  br i1 %i.v, label %_ZN17nickel_lang_flock15is_on_nfs_mount17h79495bfe54d33524E.exit.i, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i5.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i5.i.i.i": ; preds = %bb.b
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.n, i64 noundef %i.p, i64 noundef 1) #11, !noalias !34
  br i1 %.sroa.0.0.i.i, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !36)
  %cond.i.i = icmp eq i64 %i.l, 0
  br i1 %cond.i.i, label %_ZN17nickel_lang_flock15is_on_nfs_mount17h79495bfe54d33524E.exit.thread.i, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i4.i.i.i11.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i4.i.i.i11.i.i": ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val3.i12.i.i = load ptr, ptr %i.w, align 8, !alias.scope !36, !noalias !33, !nonnull !5, !noundef !5
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i12.i.i, i64 noundef %i.l, i64 noundef range(i64 1, -9223372036854775807) 1) #11, !noalias !37
  br label %_ZN17nickel_lang_flock15is_on_nfs_mount17h79495bfe54d33524E.exit.thread.i

_ZN17nickel_lang_flock15is_on_nfs_mount17h79495bfe54d33524E.exit.thread.i: ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i4.i.i.i11.i.i", %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !33
  br label %bb.d

_ZN17nickel_lang_flock15is_on_nfs_mount17h79495bfe54d33524E.exit.i: ; preds = %bb.b
  br i1 %.sroa.0.0.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN17nickel_lang_flock15is_on_nfs_mount17h79495bfe54d33524E.exit.i, %_ZN17nickel_lang_flock15is_on_nfs_mount17h79495bfe54d33524E.exit.thread.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i5.i.i.i"
  %i.x = call noundef ptr %.val(ptr noundef nonnull align 1 %4), !noalias !34, !inline_history !30 ; 6 uses
  %.not.i = icmp eq ptr %i.x, null
  br i1 %.not.i, label %.thread, label %bb.f

bb.e:                                             ; preds = %_ZN17nickel_lang_flock15is_on_nfs_mount17h79495bfe54d33524E.exit.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i5.i.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !32
  store ptr %i.e, ptr %i.c, align 8, !noalias !32
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h912108de98649851E", ptr %.sroa.44.0..sroa_idx.i, align 8, !noalias !32
  store ptr @1, ptr %i.d, align 8, !noalias !32
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 2, ptr %i.y, align 8, !noalias !32
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr null, ptr %i.z, align 8, !noalias !32
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.c, ptr %i.aa, align 8, !noalias !32
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 1, ptr %i.ab, align 8, !noalias !32
  call void @_ZN3std2io5stdio7_eprint17h4ba3eb92d5d637abE(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.d), !noalias !34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !32
  br label %.thread

bb.f:                                             ; preds = %bb.d
  %i.ac = ptrtoint ptr %i.x to i64                ; 3 uses
  %i.ad = and i64 %i.ac, 3
  switch i64 %i.ad, label %default.unreachable [
    i64 2, label %_ZN17nickel_lang_flock3sys17error_unsupported17he6e5a2b4a77d741bE.exit.i
    i64 3, label %.thread7.i
    i64 0, label %bb.h
    i64 1, label %bb.h
  ], !prof !6

default.unreachable:                              ; preds = %bb.f
  unreachable

.thread7.i:                                       ; preds = %bb.f
  %i.ae = icmp ult ptr %i.x, inttoptr (i64 180388626432 to ptr)
  call void @llvm.assume(i1 %i.ae)
  br label %bb.h

_ZN17nickel_lang_flock3sys17error_unsupported17he6e5a2b4a77d741bE.exit.i: ; preds = %bb.f
  %i.af = lshr i64 %i.ac, 32
  %trunc.i = trunc nuw i64 %i.af to i32
  switch i32 %trunc.i, label %.thread.i [
    i32 95, label %bb.g
    i32 38, label %bb.g
  ]

.thread.i:                                        ; preds = %_ZN17nickel_lang_flock3sys17error_unsupported17he6e5a2b4a77d741bE.exit.i
  %.mask.i.i = and i64 %i.ac, -4294967296
  %i.ag = icmp eq i64 %.mask.i.i, 47244640256
  br i1 %i.ag, label %bb.i, label %bb.h

bb.g:                                             ; preds = %_ZN17nickel_lang_flock3sys17error_unsupported17he6e5a2b4a77d741bE.exit.i, %_ZN17nickel_lang_flock3sys17error_unsupported17he6e5a2b4a77d741bE.exit.i
  call fastcc void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hf602db3b4a7ead6bE"(ptr nonnull %i.x), !noalias !34
  br label %.thread

bb.h:                                             ; preds = %.thread.i, %.thread7.i, %bb.f, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.j

.thread:                                          ; preds = %bb.d, %bb.g, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.j

bb.i:                                             ; preds = %.thread.i
  call fastcc void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hf602db3b4a7ead6bE"(ptr nonnull %i.x), !noalias !34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.h, ptr %i.f, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h2fec6c912c08adf0E", ptr %.sroa.48.0..sroa_idx, align 8
  store ptr @6, ptr %i.g, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 2, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr null, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.f, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i64 1, ptr %i.ak, align 8
  call void @_ZN3std2io5stdio7_eprint17h4ba3eb92d5d637abE(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.al = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.am = load ptr, ptr %i.al, align 8, !invariant.load !5, !nonnull !5
  %i.an = call noundef ptr %i.am(ptr noundef nonnull align 1 %6)
  br label %bb.j

bb.j:                                             ; preds = %.thread, %bb.i, %bb.h
  %.sroa.0.0 = phi ptr [ %i.x, %bb.h ], [ %i.an, %bb.i ], [ null, %.thread ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h912108de98649851E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 !guid !38 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !7, !noundef !5
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !5
  %i.d = tail call noundef zeroext i1 @"_ZN52_$LT$std..path..Path$u20$as$u20$core..fmt..Debug$GT$3fmt17he351d6cf9c0de846E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.a, i64 noundef %i.c, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h2fec6c912c08adf0E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 !guid !39 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !7, !noundef !5
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !5
  %i.d = tail call noundef zeroext i1 @"_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17hc26b542d45893745E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.a, i64 noundef %i.c, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hf602db3b4a7ead6bE"(ptr %.0.val) unnamed_addr #1 personality ptr @rust_eh_personality !guid !40 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = ptrtoint ptr %.0.val to i64
  %i.b = and i64 %i.a, 3
  switch i64 %i.b, label %default.unreachable [
    i64 2, label %"_ZN4core3ptr57drop_in_place$LT$std..io..error..repr_bitpacked..Repr$GT$17h429ab7a74ffd4886E.exit"
    i64 3, label %bb.b
    i64 0, label %"_ZN4core3ptr57drop_in_place$LT$std..io..error..repr_bitpacked..Repr$GT$17h429ab7a74ffd4886E.exit"
    i64 1, label %bb.c
  ], !prof !6

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ult ptr %.0.val, inttoptr (i64 180388626432 to ptr)
  tail call void @llvm.assume(i1 %i.c)
  br label %"_ZN4core3ptr57drop_in_place$LT$std..io..error..repr_bitpacked..Repr$GT$17h429ab7a74ffd4886E.exit"

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %.0.val, i64 -1    ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.d) ]
  %.val.i.i.i.i = load ptr, ptr %i.d, align 8     ; 5 uses
  %i.e = getelementptr i8, ptr %.0.val, i64 7
  %.val1.i.i.i.i = load ptr, ptr %i.e, align 8, !nonnull !5, !align !41, !noundef !5 ; 5 uses
  %i.f = load ptr, ptr %.val1.i.i.i.i, align 8, !invariant.load !5 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i) ]
  invoke void %i.f(ptr noundef nonnull %.val.i.i.i.i)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 8
  %i.h = load i64, ptr %i.g, align 8, !range !42, !invariant.load !5 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 16
  %i.j = load i64, ptr %i.i, align 8, !range !43, !invariant.load !5 ; 2 uses
  %i.k = icmp ult i64 %i.j, -9223372036854775807
  tail call void @llvm.assume(i1 %i.k)
  %i.l = icmp eq i64 %i.h, 0
  br i1 %i.l, label %"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17hfab5a38579bc5f2dE.exit.i.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i": ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef %i.h, i64 noundef range(i64 1, -9223372036854775807) %i.j) #11
  br label %"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17hfab5a38579bc5f2dE.exit.i.i.i"

bb.f:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 8
  %i.o = load i64, ptr %i.n, align 8, !range !42, !invariant.load !5 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 16
  %i.q = load i64, ptr %i.p, align 8, !range !43, !invariant.load !5 ; 2 uses
  %i.r = icmp ult i64 %i.q, -9223372036854775807
  tail call void @llvm.assume(i1 %i.r)
  %i.s = icmp eq i64 %i.o, 0
  br i1 %i.s, label %bb.g, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i": ; preds = %bb.f
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef %i.o, i64 noundef range(i64 1, -9223372036854775807) %i.q) #11
  br label %bb.g

bb.g:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i", %bb.f
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef 24, i64 noundef 8) #11
  resume { ptr, i32 } %i.m

"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17hfab5a38579bc5f2dE.exit.i.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i", %bb.e
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef 24, i64 noundef 8) #11
  br label %"_ZN4core3ptr57drop_in_place$LT$std..io..error..repr_bitpacked..Repr$GT$17h429ab7a74ffd4886E.exit"

"_ZN4core3ptr57drop_in_place$LT$std..io..error..repr_bitpacked..Repr$GT$17h429ab7a74ffd4886E.exit": ; preds = %bb.a, %bb.a, %bb.b, %"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17hfab5a38579bc5f2dE.exit.i.i.i"
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN69_$LT$nickel_lang_flock..FileLock$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha4340033474b2d7bE"(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0) unnamed_addr #1 personality ptr @rust_eh_personality !guid !44 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [48 x i8], align 8                ; 8 uses
  %i.d = alloca [8 x i8], align 8                 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !noundef !5 ; 5 uses
  store i32 -1, ptr %i.e, align 8
  %.not = icmp eq i32 %i.f, -1
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef i32 @flock(i32 noundef %i.f, i32 noundef 8) #11
  %i.h = icmp slt i32 %i.g, 0
  br i1 %i.h, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.g
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.d:                                             ; preds = %bb.b
  %i.j = tail call noundef ptr @__errno_location() #11
  %i.k = load i32, ptr %i.j, align 4, !noundef !5
  %i.l = sext i32 %i.k to i64
  %i.m = shl nsw i64 %i.l, 32
  %i.n = or disjoint i64 %i.m, 2
  %i.o = inttoptr i64 %i.n to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.o, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !5, !noundef !5
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load i64, ptr %i.r, align 8, !noundef !5
  store ptr %i.q, ptr %i.b, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.s, ptr %i.t, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @"_ZN57_$LT$std..path..Display$u20$as$u20$core..fmt..Display$GT$3fmt17hdd6e065e2a6605deE", ptr %.sroa.46.0..sroa_idx, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.d, ptr %i.u, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @"_ZN58_$LT$std..io..error..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17h62ceb23194058131E", ptr %.sroa.410.0..sroa_idx, align 8
  store ptr @9, ptr %i.c, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 3, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr null, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.a, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 2, ptr %i.y, align 8
  invoke void @_ZN3std2io5stdio7_eprint17h4ba3eb92d5d637abE(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.c)
          to label %bb.g unwind label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.z = tail call noundef i32 @close(i32 noundef %i.f) #11 ; 0 uses
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.aa = landingpad { ptr, i32 }
          cleanup
  %.val14 = load ptr, ptr %i.d, align 8, !nonnull !5, !noundef !5
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hf602db3b4a7ead6bE"(ptr nonnull %.val14) #12
          to label %bb.k unwind label %bb.j

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.val = load ptr, ptr %i.d, align 8, !nonnull !5, !noundef !5
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hf602db3b4a7ead6bE"(ptr nonnull %.val)
          to label %bb.h unwind label %bb.c

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.ab = call noundef i32 @close(i32 noundef %i.f) #11 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %bb.e, %bb.h
  ret void

bb.j:                                             ; preds = %bb.f
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #14
  unreachable

bb.k:                                             ; preds = %bb.c, %bb.f
  %.pn = phi { ptr, i32 } [ %i.i, %bb.c ], [ %i.aa, %bb.f ]
  %i.ad = call noundef i32 @close(i32 noundef %i.f) #11 ; 0 uses
  resume { ptr, i32 } %.pn
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #3

; Function Attrs: nonlazybind uwtable
declare void @_ZN3std2io5stdio7_eprint17h4ba3eb92d5d637abE(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(48)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @"_ZN81_$LT$$RF$$u5b$u8$u5d$$u20$as$u20$alloc..ffi..c_str..CString..new..SpecNewImpl$GT$13spec_new_impl17hfbbfe5651ec9f208E"(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nounwind nonlazybind uwtable
declare noundef i32 @statfs(ptr noundef, ptr noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef i32 @flock(i32 noundef, i32 noundef) unnamed_addr #0

; Function Attrs: nofree nosync nounwind nonlazybind memory(none) uwtable
declare noundef ptr @__errno_location() unnamed_addr #5

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_ZN3std4path4Path6parent17h3c6e49002294403cE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #6

; Function Attrs: nonlazybind uwtable
declare noundef ptr @_ZN3std2fs10DirBuilder7_create17h70f652d231a39496E(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_ZN3std2fs11OpenOptions5_open17h005de3b10d8796e4E(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN52_$LT$std..path..Path$u20$as$u20$core..fmt..Debug$GT$3fmt17he351d6cf9c0de846E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17hc26b542d45893745E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr allocptr noundef, i64 noundef, i64 noundef) unnamed_addr #7

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN57_$LT$std..path..Display$u20$as$u20$core..fmt..Display$GT$3fmt17hdd6e065e2a6605deE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN58_$LT$std..io..error..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17h62ceb23194058131E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare noundef i32 @close(i32 noundef) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #10

attributes #0 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nofree nosync nounwind nonlazybind memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind }
attributes #12 = { cold }
attributes #13 = { noreturn }
attributes #14 = { cold noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!"rustc version 1.91.1 (ed61e7d7e 2025-11-07)"}
!3 = !{i64 4861447946628955093}
!4 = !{i32 0, i32 -1}
!5 = !{}
!6 = !{!"branch_weights", i32 1, i32 2000, i32 2000, i32 2000, i32 2000}
!7 = !{i64 1}
!8 = !{i64 -5467575468163437530}
!9 = !{i64 8345168181298882181}
!10 = !{i64 -7445129208732784561}
!11 = !{i64 4700759507264423716}
!12 = distinct !{!12, i1 true, !"_ZN17nickel_lang_flock4open28_$u7b$$u7b$closure$u7d$$u7d$17h524cef15955060efE"}
!13 = distinct !{!13, !12, !"_ZN17nickel_lang_flock4open28_$u7b$$u7b$closure$u7d$$u7d$17h524cef15955060efE: argument 1"}
!14 = distinct !{!14, !12, !"_ZN17nickel_lang_flock4open28_$u7b$$u7b$closure$u7d$$u7d$17h524cef15955060efE: argument 0"}
!15 = distinct !{!15, i1 true, !"_ZN3std2fs14create_dir_all17h2397e7fd03cc7288E"}
!16 = distinct !{!16, !15, !"_ZN3std2fs14create_dir_all17h2397e7fd03cc7288E: argument 0"}
!17 = !{i64 297116811700427241}
!18 = !{i32 0, i32 2}
!19 = !{i8 0, i8 42}
!20 = !{!14, !13}
!21 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!22 = !{!16, !14, !13}
!23 = distinct !{!23, i1 true, !"_ZN17nickel_lang_flock11try_acquire17hea8fca0dd0063352E"}
!24 = distinct !{!24, !23, !"_ZN17nickel_lang_flock11try_acquire17hea8fca0dd0063352E: argument 1"}
!25 = distinct !{!25, !23, !"_ZN17nickel_lang_flock11try_acquire17hea8fca0dd0063352E: argument 0"}
!26 = distinct !{!26, i1 true, !"_ZN17nickel_lang_flock15is_on_nfs_mount17h79495bfe54d33524E"}
!27 = distinct !{!27, !26, !"_ZN17nickel_lang_flock15is_on_nfs_mount17h79495bfe54d33524E: argument 0"}
!28 = distinct !{!28, i1 true, !"_ZN4core3ptr105drop_in_place$LT$core..result..Result$LT$alloc..ffi..c_str..CString$C$alloc..ffi..c_str..NulError$GT$$GT$17ha7dfffb03f9ebd76E"}
!29 = distinct !{!29, !28, !"_ZN4core3ptr105drop_in_place$LT$core..result..Result$LT$alloc..ffi..c_str..CString$C$alloc..ffi..c_str..NulError$GT$$GT$17ha7dfffb03f9ebd76E: argument 0"}
!30 = distinct !{null}
!31 = !{i64 -427251060392806726}
!32 = !{!25, !24}
!33 = !{!27, !25, !24}
!34 = !{!25}
!35 = !{i64 0, i64 -9223372036854775807}
!36 = !{!29}
!37 = !{!29, !25}
!38 = !{i64 -187917837156827741}
!39 = !{i64 -8435118722064195825}
!40 = !{i64 -8187140066110229258}
!41 = !{i64 8}
!42 = !{i64 0, i64 -9223372036854775808}
!43 = !{i64 1, i64 0}
!44 = !{i64 -6544175254126213923}
end_hunk_0
