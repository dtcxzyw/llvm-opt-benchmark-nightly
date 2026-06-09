inline.NumInlined: 119
inline.NumDeleted: 80
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.llvh::ErrorOr" = type { %union.anon, i8, [7 x i8] }
%union.anon = type { %"struct.llvh::AlignedCharArrayUnion" }
%"struct.llvh::AlignedCharArrayUnion" = type { %"struct.llvh::AlignedCharArray" }
%"struct.llvh::AlignedCharArray" = type { [32 x i8] }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon.2 }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon.2 = type { i64, [8 x i8] }
%"class.llvh::Optional" = type { %"struct.llvh::optional_detail::OptionalStorage" }
%"struct.llvh::optional_detail::OptionalStorage" = type { %"struct.llvh::AlignedCharArrayUnion.7", i8, [7 x i8] }
%"struct.llvh::AlignedCharArrayUnion.7" = type { %"struct.llvh::AlignedCharArray.1" }
%"struct.llvh::AlignedCharArray.1" = type { [16 x i8] }

@.str.1 = private unnamed_addr constant [24 x i8] c"Error: Unable to find `\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"' in PATH: \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"Error: \00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"vector::reserve\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1

; Function Attrs: mustprogress norecurse nounwind uwtable
define hidden noundef range(i32 0, 2) i32 @main(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %"class.llvh::ErrorOr", align 8     ; 12 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.llvh::Optional", align 8    ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = add nsw i32 %0, -1                       ; 3 uses
  %i.c = icmp sgt i32 %0, 1                       ; 3 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !8    ; 5 uses
  %.not.i28 = icmp eq ptr %i.d, null
  br i1 %.not.i28, label %.thread.thread126, label %_ZN4llvh9StringRefC2EPKc.exit29

.thread.thread126:                                ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  br label %_ZN4llvh9StringRefC2EPKc.exit27

_ZN4llvh9StringRefC2EPKc.exit29:                  ; preds = %bb.b
  %i.e = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.d) #11
  %i.f = icmp eq i64 %i.e, 7
  br i1 %i.f, label %_ZNK4llvh9StringRef6equalsES0_.exit, label %.thread.thread

_ZNK4llvh9StringRef6equalsES0_.exit:              ; preds = %_ZN4llvh9StringRefC2EPKc.exit29
  %i.g = load i32, ptr %i.d, align 1
  %i.h = xor i32 %i.g, 1919102253
  %i.i = getelementptr i8, ptr %i.d, i64 3
  %i.j = load i32, ptr %i.i, align 1
  %i.k = xor i32 %i.j, 1752392050
  %i.l = or i32 %i.h, %i.k
  %i.m = icmp ne i32 %i.l, 0
  %i.n = zext i1 %i.m to i32
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread82, label %.thread.thread

_ZNK4llvh9StringRef6equalsES0_.exit.thread82:     ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.q = add nsw i32 %0, -2
  br label %bb.c

bb.c:                                             ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.thread82, %bb.a
  %.022 = phi i32 [ %i.q, %_ZNK4llvh9StringRef6equalsES0_.exit.thread82 ], [ %i.b, %bb.a ] ; 3 uses
  %.021 = phi ptr [ %i.p, %_ZNK4llvh9StringRef6equalsES0_.exit.thread82 ], [ %i.a, %bb.a ] ; 3 uses
  %i.r = icmp eq i32 %.022, 0
  br i1 %i.r, label %bb.ae, label %.thread

.thread.thread:                                   ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit, %_ZN4llvh9StringRefC2EPKc.exit29
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  br label %bb.d

.thread:                                          ; preds = %bb.c
  %.pre = load ptr, ptr %.021, align 8, !tbaa !8  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  %.not.i26 = icmp eq ptr %.pre, null
  br i1 %.not.i26, label %_ZN4llvh9StringRefC2EPKc.exit27, label %bb.d

bb.d:                                             ; preds = %.thread.thread, %.thread
  %.02287124 = phi i32 [ %i.b, %.thread.thread ], [ %.022, %.thread ]
  %.02188122 = phi ptr [ %i.a, %.thread.thread ], [ %.021, %.thread ]
  %.02089120 = phi i1 [ false, %.thread.thread ], [ %i.c, %.thread ]
  %i.s = phi ptr [ %i.d, %.thread.thread ], [ %.pre, %.thread ] ; 2 uses
  %i.t = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.s) #11
  br label %_ZN4llvh9StringRefC2EPKc.exit27

_ZN4llvh9StringRefC2EPKc.exit27:                  ; preds = %.thread.thread126, %.thread, %bb.d
  %.02287125 = phi i32 [ %.02287124, %bb.d ], [ %.022, %.thread ], [ %i.b, %.thread.thread126 ] ; 3 uses
  %.02188123 = phi ptr [ %.02188122, %bb.d ], [ %.021, %.thread ], [ %i.a, %.thread.thread126 ] ; 2 uses
  %.02089121 = phi i1 [ %.02089120, %bb.d ], [ %i.c, %.thread ], [ false, %.thread.thread126 ] ; 2 uses
  %i.u = phi ptr [ %i.s, %bb.d ], [ null, %.thread ], [ null, %.thread.thread126 ]
  %i.v = phi i64 [ %i.t, %bb.d ], [ 0, %.thread ], [ 0, %.thread.thread126 ]
  call void @_ZN4llvh3sys17findProgramByNameB5cxx11ENS_9StringRefENS_8ArrayRefIS1_EE(ptr dead_on_unwind nonnull writable sret(%"class.llvh::ErrorOr") align 8 %2, ptr %i.u, i64 %i.v, ptr null, i64 0) #10
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  %i.x = load i8, ptr %i.w, align 8
  %i.y = trunc i8 %i.x to i1
  br i1 %i.y, label %bb.e, label %bb.q

bb.e:                                             ; preds = %_ZN4llvh9StringRefC2EPKc.exit27
  %i.z = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh4errsEv() #10 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !11
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 24 ; 3 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !14 ; 2 uses
  %i.ae = ptrtoint ptr %i.ab to i64
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = icmp ult i64 %i.ag, 23
  br i1 %i.ah, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ai = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.z, ptr noundef nonnull @.str.1, i64 noundef 23) #10
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit

bb.g:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %i.ad, ptr noundef nonnull align 1 dereferenceable(23) @.str.1, i64 23, i1 false)
  %i.aj = load ptr, ptr %i.ac, align 8, !tbaa !14
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 23
  store ptr %i.ak, ptr %i.ac, align 8, !tbaa !14
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit

_ZN4llvh11raw_ostreamlsEPKc.exit:                 ; preds = %bb.f, %bb.g
  %.0.i.i = phi ptr [ %i.ai, %bb.f ], [ %i.z, %bb.g ] ; 6 uses
  %i.al = load ptr, ptr %.02188123, align 8, !tbaa !8 ; 4 uses
  %.not.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i, label %_ZN4llvh11raw_ostreamlsEPKc.exit32, label %_ZN4llvh9StringRefC2EPKc.exit.i

_ZN4llvh9StringRefC2EPKc.exit.i:                  ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit
  %i.am = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.al) #11 ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !11
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 24 ; 3 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !14 ; 2 uses
  %i.ar = ptrtoint ptr %i.ao to i64
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = sub i64 %i.ar, %i.as
  %i.au = icmp ugt i64 %i.am, %i.at
  br i1 %i.au, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN4llvh9StringRefC2EPKc.exit.i
  %i.av = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i, ptr noundef nonnull %i.al, i64 noundef %i.am) #10
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit32

bb.i:                                             ; preds = %_ZN4llvh9StringRefC2EPKc.exit.i
  %.not.i2.i30 = icmp eq i64 %i.am, 0
  br i1 %.not.i2.i30, label %_ZN4llvh11raw_ostreamlsEPKc.exit32, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aq, ptr nonnull align 1 %i.al, i64 %i.am, i1 false)
  %i.aw = load ptr, ptr %i.ap, align 8, !tbaa !14
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.am
  store ptr %i.ax, ptr %i.ap, align 8, !tbaa !14
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit32

_ZN4llvh11raw_ostreamlsEPKc.exit32:               ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit, %bb.h, %bb.i, %bb.j
  %.0.i.i31 = phi ptr [ %i.av, %bb.h ], [ %.0.i.i, %bb.j ], [ %.0.i.i, %bb.i ], [ %.0.i.i, %_ZN4llvh11raw_ostreamlsEPKc.exit ] ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.0.i.i31, i64 16
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !11
  %i.ba = getelementptr inbounds nuw i8, ptr %.0.i.i31, i64 24 ; 3 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !14 ; 2 uses
  %i.bc = ptrtoint ptr %i.az to i64
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = sub i64 %i.bc, %i.bd
  %i.bf = icmp ult i64 %i.be, 11
  br i1 %i.bf, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit32
  %i.bg = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i31, ptr noundef nonnull @.str.2, i64 noundef 11) #10
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit36

bb.l:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.bb, ptr noundef nonnull align 1 dereferenceable(11) @.str.2, i64 11, i1 false)
  %i.bh = load ptr, ptr %i.ba, align 8, !tbaa !14
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 11
  store ptr %i.bi, ptr %i.ba, align 8, !tbaa !14
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit36

_ZN4llvh11raw_ostreamlsEPKc.exit36:               ; preds = %bb.k, %bb.l
  %.0.i.i35 = phi ptr [ %i.bg, %bb.k ], [ %.0.i.i31, %bb.l ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  %i.bj = load i8, ptr %i.w, align 8
  %i.bk = trunc i8 %i.bj to i1
  br i1 %i.bk, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit36
  %.sroa.0.0.copyload.i = load i32, ptr %2, align 8, !tbaa !4
  %.sroa.31.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.31.0.copyload.i = load ptr, ptr %.sroa.31.0..sroa_idx.i, align 8, !tbaa !15
  br label %_ZNK4llvh7ErrorOrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8getErrorEv.exit

bb.n:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit36
  %i.bl = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() #12
  br label %_ZNK4llvh7ErrorOrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8getErrorEv.exit

_ZNK4llvh7ErrorOrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8getErrorEv.exit: ; preds = %bb.m, %bb.n
  %.sroa.31.0.i = phi ptr [ %.sroa.31.0.copyload.i, %bb.m ], [ %i.bl, %bb.n ] ; 2 uses
  %.sroa.0.0.i = phi i32 [ %.sroa.0.0.copyload.i, %bb.m ], [ 0, %bb.n ]
  %i.bm = load ptr, ptr %.sroa.31.0.i, align 8, !tbaa !17, !noalias !19
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  %i.bo = load ptr, ptr %i.bn, align 8, !noalias !19
  call void %i.bo(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.31.0.i, i32 noundef %.sroa.0.0.i) #10, !inline_history !22
  %i.bp = load ptr, ptr %3, align 8, !tbaa !23
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !27
  %i.bs = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i35, ptr noundef %i.bp, i64 noundef %i.br) #10 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !11
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 24 ; 3 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !14 ; 2 uses
  %i.bx = icmp eq ptr %i.bu, %i.bw
  br i1 %i.bx, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZNK4llvh7ErrorOrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8getErrorEv.exit
  %i.by = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.bs, ptr noundef nonnull @.str.3, i64 noundef 1) #10 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit40

bb.p:                                             ; preds = %_ZNK4llvh7ErrorOrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8getErrorEv.exit
  store i8 10, ptr %i.bw, align 1
  %i.bz = load ptr, ptr %i.bv, align 8, !tbaa !14
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 1
  store ptr %i.ca, ptr %i.bv, align 8, !tbaa !14
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit40

_ZN4llvh11raw_ostreamlsEPKc.exit40:               ; preds = %bb.o, %bb.p
  %i.cb = load ptr, ptr %3, align 8, !tbaa !23    ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.cd = icmp eq ptr %i.cb, %i.cc
  br i1 %i.cd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit40
  %i.ce = load i64, ptr %i.cc, align 8, !tbaa !28
  %i.cf = add i64 %i.ce, 1
  call void @_ZdlPvm(ptr noundef %i.cb, i64 noundef %i.cf) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit40, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  br label %_ZNSt6vectorIN4llvh9StringRefESaIS1_EED2Ev.exit

bb.q:                                             ; preds = %_ZN4llvh9StringRefC2EPKc.exit27
  %i.cg = icmp slt i32 %.02287125, 0
  br i1 %i.cg, label %bb.r, label %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE7reserveEm.exit

bb.r:                                             ; preds = %bb.q
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #14
  unreachable

_ZNSt6vectorIN4llvh9StringRefESaIS1_EE7reserveEm.exit: ; preds = %bb.q
  %i.ch = zext nneg i32 %.02287125 to i64         ; 3 uses
  %i.ci = shl nuw nsw i64 %i.ch, 4
  %i.cj = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ci) #15 ; 5 uses
  %i.ck = getelementptr inbounds nuw [16 x i8], ptr %i.cj, i64 %i.ch ; 2 uses
  %.not = icmp eq i32 %.02287125, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE9push_backEOS1_.exit, %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE7reserveEm.exit
  %.sroa.16.0.lcssa = phi ptr [ %i.ck, %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE7reserveEm.exit ], [ %.sroa.16.2, %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE9push_backEOS1_.exit ]
  %.sroa.9.0.lcssa = phi ptr [ %i.cj, %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE7reserveEm.exit ], [ %.sroa.9.2, %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE9push_backEOS1_.exit ]
  %.sroa.061.0.lcssa = phi ptr [ %i.cj, %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE7reserveEm.exit ], [ %.sroa.061.2, %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE9push_backEOS1_.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  %i.cl = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store ptr %i.cl, ptr %4, align 8, !tbaa !29
  %i.cm = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 0, ptr %i.cm, align 8, !tbaa !27
  store i8 0, ptr %i.cl, align 8, !tbaa !28
  %i.cn = load ptr, ptr %2, align 8, !tbaa !23
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !27
  %i.cq = ptrtoint ptr %.sroa.9.0.lcssa to i64
  %i.cr = ptrtoint ptr %.sroa.061.0.lcssa to i64  ; 2 uses
  %i.cs = sub i64 %i.cq, %i.cr
  %i.ct = ashr exact i64 %i.cs, 4
  %i.cu = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i8 0, ptr %i.cu, align 8, !tbaa !30
  %i.cv = call noundef i32 @_ZN4llvh3sys14ExecuteAndWaitENS_9StringRefENS_8ArrayRefIS1_EENS_8OptionalIS3_EENS2_INS4_IS1_EEEEjjPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPb(ptr %i.cn, i64 %i.cp, ptr %.sroa.061.0.lcssa, i64 %i.ct, ptr noundef nonnull byval(%"class.llvh::Optional") align 8 %5, ptr null, i64 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %4, ptr noundef null) #10 ; 2 uses
  %i.cw = icmp slt i32 %i.cv, 0
  br i1 %i.cw, label %bb.w, label %bb.ab

.lr.ph:                                           ; preds = %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE7reserveEm.exit, %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE9push_backEOS1_.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE9push_backEOS1_.exit ], [ 0, %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE7reserveEm.exit ] ; 2 uses
  %.sroa.061.095 = phi ptr [ %.sroa.061.2, %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE9push_backEOS1_.exit ], [ %i.cj, %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE7reserveEm.exit ] ; 5 uses
  %.sroa.9.094 = phi ptr [ %.sroa.9.2, %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE9push_backEOS1_.exit ], [ %i.cj, %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE7reserveEm.exit ] ; 7 uses
  %.sroa.16.093 = phi ptr [ %.sroa.16.2, %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE9push_backEOS1_.exit ], [ %i.ck, %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE7reserveEm.exit ] ; 2 uses
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %.02188123, i64 %indvars.iv
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !8  ; 4 uses
  %.not.i = icmp eq ptr %i.cy, null
  br i1 %.not.i, label %_ZN4llvh9StringRefC2EPKc.exit, label %bb.s

bb.s:                                             ; preds = %.lr.ph
  %i.cz = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.cy) #11
  br label %_ZN4llvh9StringRefC2EPKc.exit

_ZN4llvh9StringRefC2EPKc.exit:                    ; preds = %.lr.ph, %bb.s
  %i.da = phi i64 [ %i.cz, %bb.s ], [ 0, %.lr.ph ] ; 2 uses
  %.not.i.i41 = icmp eq ptr %.sroa.9.094, %.sroa.16.093
  br i1 %.not.i.i41, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_ZN4llvh9StringRefC2EPKc.exit
  store ptr %i.cy, ptr %.sroa.9.094, align 8, !tbaa !8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.9.094, i64 8
  store i64 %i.da, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !35
  br label %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE9push_backEOS1_.exit

bb.u:                                             ; preds = %_ZN4llvh9StringRefC2EPKc.exit
  %i.db = ptrtoint ptr %.sroa.9.094 to i64
  %i.dc = ptrtoint ptr %.sroa.061.095 to i64
  %i.dd = sub i64 %i.db, %i.dc                    ; 4 uses
  %i.de = icmp eq i64 %i.dd, 9223372036854775792
  br i1 %i.de, label %bb.v, label %_ZNKSt6vectorIN4llvh9StringRefESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.v:                                             ; preds = %bb.u
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #14
  unreachable

_ZNKSt6vectorIN4llvh9StringRefESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.u
  %i.df = ashr exact i64 %i.dd, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.df, i64 1)
  %i.dg = add nsw i64 %.sroa.speculated.i.i.i.i, %i.df ; 2 uses
  %i.dh = icmp ult i64 %i.dg, %i.df
  %i.di = call i64 @llvm.umin.i64(i64 %i.dg, i64 576460752303423487)
  %i.dj = select i1 %i.dh, i64 576460752303423487, i64 %i.di ; 3 uses
  %.not.i.i.i.i42 = icmp ne i64 %i.dj, 0
  call void @llvm.assume(i1 %.not.i.i.i.i42)
  %i.dk = shl nuw nsw i64 %i.dj, 4
  %i.dl = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dk) #15 ; 5 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.dd ; 2 uses
  store ptr %i.cy, ptr %i.dm, align 8, !tbaa !8
  %.sroa.5.0..sroa_idx59 = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  store i64 %i.da, ptr %.sroa.5.0..sroa_idx59, align 8, !tbaa !35
  %.not10.i.i.i.i.i.i = icmp eq ptr %.sroa.061.095, %.sroa.9.094
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNKSt6vectorIN4llvh9StringRefESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.do, %.lr.ph.i.i.i.i.i.i ], [ %i.dl, %_ZNKSt6vectorIN4llvh9StringRefESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.dn, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.061.095, %_ZNKSt6vectorIN4llvh9StringRefESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !36, !alias.scope !37
  %i.dn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.dn, %.sroa.9.094
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !41

_ZNSt6vectorIN4llvh9StringRefESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt6vectorIN4llvh9StringRefESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.dl, %_ZNKSt6vectorIN4llvh9StringRefESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.do, %.lr.ph.i.i.i.i.i.i ]
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.061.095, i64 noundef %i.dd) #13
  %i.dp = getelementptr inbounds nuw [16 x i8], ptr %i.dl, i64 %i.dj
  br label %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE9push_backEOS1_.exit

_ZNSt6vectorIN4llvh9StringRefESaIS1_EE9push_backEOS1_.exit: ; preds = %bb.t, %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i
  %.sroa.16.2 = phi ptr [ %i.dp, %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.16.093, %bb.t ] ; 2 uses
  %.0.lcssa.i.i.i.i.i.i.pn = phi ptr [ %.0.lcssa.i.i.i.i.i.i, %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.9.094, %bb.t ]
  %.sroa.061.2 = phi ptr [ %i.dl, %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.061.095, %bb.t ] ; 2 uses
  %.sroa.9.2 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.pn, i64 16 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.ch
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !43

bb.w:                                             ; preds = %._crit_edge
  %i.dq = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh4errsEv() #10 ; 4 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !11
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dq, i64 24 ; 3 uses
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !14 ; 2 uses
  %i.dv = ptrtoint ptr %i.ds to i64
  %i.dw = ptrtoint ptr %i.du to i64
  %i.dx = sub i64 %i.dv, %i.dw
  %i.dy = icmp ult i64 %i.dx, 7
  br i1 %i.dy, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.dz = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.dq, ptr noundef nonnull @.str.4, i64 noundef 7) #10
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit46

bb.y:                                             ; preds = %bb.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.du, ptr noundef nonnull align 1 dereferenceable(7) @.str.4, i64 7, i1 false)
  %i.ea = load ptr, ptr %i.dt, align 8, !tbaa !14
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 7
  store ptr %i.eb, ptr %i.dt, align 8, !tbaa !14
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit46

_ZN4llvh11raw_ostreamlsEPKc.exit46:               ; preds = %bb.x, %bb.y
  %.0.i.i45 = phi ptr [ %i.dz, %bb.x ], [ %i.dq, %bb.y ]
  %i.ec = load ptr, ptr %4, align 8, !tbaa !23
  %i.ed = load i64, ptr %i.cm, align 8, !tbaa !27
  %i.ee = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i45, ptr noundef %i.ec, i64 noundef %i.ed) #10 ; 3 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !11
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ee, i64 24 ; 3 uses
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !14 ; 2 uses
  %i.ej = icmp eq ptr %i.eg, %i.ei
  br i1 %i.ej, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit46
  %i.ek = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.ee, ptr noundef nonnull @.str.3, i64 noundef 1) #10 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit50

bb.aa:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit46
  store i8 10, ptr %i.ei, align 1
  %i.el = load ptr, ptr %i.eh, align 8, !tbaa !14
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 1
  store ptr %i.em, ptr %i.eh, align 8, !tbaa !14
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit50

_ZN4llvh11raw_ostreamlsEPKc.exit50:               ; preds = %bb.z, %bb.aa
  %not..02089 = xor i1 %.02089121, true
  br label %bb.ac

bb.ab:                                            ; preds = %._crit_edge
  %i.en = icmp eq i32 %i.cv, 0
  %spec.select = or i1 %.02089121, %i.en
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %_ZN4llvh11raw_ostreamlsEPKc.exit50
  %.0.shrunk = phi i1 [ %not..02089, %_ZN4llvh11raw_ostreamlsEPKc.exit50 ], [ %spec.select, %bb.ab ]
  %i.eo = load ptr, ptr %4, align 8, !tbaa !23    ; 2 uses
  %i.ep = icmp eq ptr %i.eo, %i.cl
  br i1 %i.ep, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i52, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51: ; preds = %bb.ac
  %i.eq = load i64, ptr %i.cl, align 8, !tbaa !28
  %i.er = add i64 %i.eq, 1
  call void @_ZdlPvm(ptr noundef %i.eo, i64 noundef %i.er) #13
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i52

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i52: ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  %i.es = ptrtoint ptr %.sroa.16.0.lcssa to i64
  %i.et = sub i64 %i.es, %i.cr
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.061.0.lcssa, i64 noundef %i.et) #13
  %i.eu = zext i1 %.0.shrunk to i32
  br label %_ZNSt6vectorIN4llvh9StringRefESaIS1_EED2Ev.exit

_ZNSt6vectorIN4llvh9StringRefESaIS1_EED2Ev.exit:  ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i52, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.1.shrunk = phi i32 [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.eu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i52 ]
  %i.ev = load i8, ptr %i.w, align 8
  %i.ew = trunc i8 %i.ev to i1
  br i1 %i.ew, label %_ZN4llvh7ErrorOrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorIN4llvh9StringRefESaIS1_EED2Ev.exit
  %i.ex = load ptr, ptr %2, align 8, !tbaa !23    ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ez = icmp eq ptr %i.ex, %i.ey
  br i1 %i.ez, label %_ZN4llvh7ErrorOrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.ad
  %i.fa = load i64, ptr %i.ey, align 8, !tbaa !28
  %i.fb = add i64 %i.fa, 1
  call void @_ZdlPvm(ptr noundef %i.ex, i64 noundef %i.fb) #13
  br label %_ZN4llvh7ErrorOrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit

_ZN4llvh7ErrorOrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit: ; preds = %bb.ad, %_ZNSt6vectorIN4llvh9StringRefESaIS1_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  br label %bb.ae

bb.ae:                                            ; preds = %bb.c, %_ZN4llvh7ErrorOrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit
  %.2 = phi i32 [ %.1.shrunk, %_ZN4llvh7ErrorOrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit ], [ 1, %bb.c ]
  ret i32 %.2
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @_ZN4llvh3sys17findProgramByNameB5cxx11ENS_9StringRefENS_8ArrayRefIS1_EE(ptr dead_on_unwind writable sret(%"class.llvh::ErrorOr") align 8, ptr, i64, ptr, i64) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh4errsEv() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare noundef i32 @_ZN4llvh3sys14ExecuteAndWaitENS_9StringRefENS_8ArrayRefIS1_EENS_8OptionalIS3_EENS2_INS4_IS1_EEEEjjPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPb(ptr, i64, ptr, i64, ptr noundef byval(%"class.llvh::Optional") align 8, ptr, i64, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() local_unnamed_addr #5

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #6

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #9

attributes #0 = { mustprogress norecurse nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind }
attributes #11 = { nounwind willreturn memory(read) }
attributes #12 = { nounwind willreturn memory(none) }
attributes #13 = { builtin nounwind }
attributes #14 = { noreturn nounwind }
attributes #15 = { builtin nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"p1 omnipotent char", !10, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!12, !9, i64 16}
!12 = !{!"_ZTSN4llvh11raw_ostreamE", !9, i64 8, !9, i64 16, !9, i64 24, !13, i64 32}
!13 = !{!"_ZTSN4llvh11raw_ostream10BufferKindE", !6, i64 0}
!14 = !{!12, !9, i64 24}
!15 = !{!16, !16, i64 0}
!16 = !{!"p1 _ZTSNSt3_V214error_categoryE", !10, i64 0}
!17 = !{!18, !18, i64 0}
!18 = !{!"vtable pointer", !7, i64 0}
!19 = !{!20}
!20 = distinct !{!20, !21, !"_ZNKSt10error_code7messageB5cxx11Ev: argument 0"}
!21 = distinct !{!21, !"_ZNKSt10error_code7messageB5cxx11Ev"}
!22 = distinct !{null}
!23 = !{!24, !9, i64 0}
!24 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !25, i64 0, !26, i64 8, !6, i64 16}
!25 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !9, i64 0}
!26 = !{!"long", !6, i64 0}
!27 = !{!24, !26, i64 8}
!28 = !{!6, !6, i64 0}
!29 = !{!25, !9, i64 0}
!30 = !{!31, !34, i64 16}
!31 = !{!"_ZTSN4llvh15optional_detail15OptionalStorageINS_8ArrayRefINS_9StringRefEEELb1EEE", !32, i64 0, !34, i64 16}
!32 = !{!"_ZTSN4llvh21AlignedCharArrayUnionINS_8ArrayRefINS_9StringRefEEEcccccccccEE", !33, i64 0}
!33 = !{!"_ZTSN4llvh16AlignedCharArrayILm8ELm16EEE", !6, i64 0}
!34 = !{!"bool", !6, i64 0}
!35 = !{!26, !26, i64 0}
!36 = !{i64 0, i64 8, !8, i64 8, i64 8, !35}
!37 = !{!38, !40}
!38 = distinct !{!38, !39, !"_ZSt19__relocate_object_aIN4llvh9StringRefES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!39 = distinct !{!39, !"_ZSt19__relocate_object_aIN4llvh9StringRefES1_SaIS1_EEvPT_PT0_RT1_"}
!40 = distinct !{!40, !39, !"_ZSt19__relocate_object_aIN4llvh9StringRefES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!41 = distinct !{!41, !42}
!42 = !{!"llvm.loop.mustprogress"}
!43 = distinct !{!43, !42}
end_hunk_0
