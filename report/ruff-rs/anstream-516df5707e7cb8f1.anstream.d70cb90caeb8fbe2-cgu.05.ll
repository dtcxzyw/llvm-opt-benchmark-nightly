Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/anstream-516df5707e7cb8f1.anstream.d70cb90caeb8fbe2-cgu.05?download=true
inline.NumInlined: 19
inline.NumDeleted: 9
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [14 x i8] c"CLICOLOR_FORCE", align 1
@1 = private unnamed_addr constant [4 x i8] c"TERM", align 1
@2 = private unnamed_addr constant [8 x i8] c"CLICOLOR", align 1
@3 = private unnamed_addr constant [8 x i8] c"NO_COLOR", align 1
@4 = private unnamed_addr constant [2 x i8] c"CI", align 1

; Function Attrs: nonlazybind uwtable
define noundef range(i8 1, 4) i8 @_RNvNtCsisHG5ZUm6CA_8anstream4auto6choice(ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(88) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 9 uses
  %i.d = alloca [24 x i8], align 8                ; 9 uses
  %i.e = alloca [24 x i8], align 8                ; 9 uses
  %i.f = alloca [24 x i8], align 8                ; 9 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 9 uses
  %i.i = alloca [24 x i8], align 8                ; 7 uses
  %i.j = tail call noundef i8 @_RNvMCsbOXrUdIOZ6o_11colorchoiceNtB2_11ColorChoice6global() ; 2 uses
  %i.k = icmp eq i8 %i.j, 0
  br i1 %i.k, label %bb.b, label %bb.ai

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @_RINvNtCs2AWtUsOyxgP_3std3env6var_osReECsisHG5ZUm6CA_8anstream(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 8)
  %i.l = load i64, ptr %i.g, align 8, !range !3, !noundef !4
  %.not.i = icmp eq i64 %i.l, -1
  br i1 %.not.i, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.val2.i = load i64, ptr %i.m, align 8, !noundef !4
  %i.n = icmp eq i64 %.val2.i, 1
  br i1 %i.n, label %bb.d, label %_RNvXsd_NtNtCs2AWtUsOyxgP_3std3ffi6os_strNtB5_8OsStringINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqReE2eq.exit.i

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.val.i = load ptr, ptr %i.o, align 8, !nonnull !4, !noundef !4
  %lhsc.i = load i8, ptr %.val.i, align 1
  %2 = icmp ne i8 %lhsc.i, 48
  %3 = zext i1 %2 to i8
  br label %_RNvXsd_NtNtCs2AWtUsOyxgP_3std3ffi6os_strNtB5_8OsStringINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqReE2eq.exit.i

_RNvXsd_NtNtCs2AWtUsOyxgP_3std3ffi6os_strNtB5_8OsStringINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqReE2eq.exit.i: ; preds = %bb.d, %bb.c
  %.sroa.0.0.i.i = phi i8 [ %3, %bb.d ], [ 1, %bb.c ] ; 2 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsisHG5ZUm6CA_8anstream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %bb.g unwind label %bb.e

bb.e:                                             ; preds = %_RNvXsd_NtNtCs2AWtUsOyxgP_3std3ffi6os_strNtB5_8OsStringINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqReE2eq.exit.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsisHG5ZUm6CA_8anstream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %common.resume unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #4
  unreachable

common.resume:                                    ; preds = %bb.ag, %bb.z, %bb.ac, %bb.v, %bb.q, %bb.m, %bb.i, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.ay, %bb.ac ], [ %i.p, %bb.e ], [ %i.u, %bb.i ], [ %i.z, %bb.m ], [ %i.ae, %bb.q ], [ %i.am, %bb.v ], [ %i.aw, %bb.z ], [ %i.bb, %bb.ag ]
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %_RNvXsd_NtNtCs2AWtUsOyxgP_3std3ffi6os_strNtB5_8OsStringINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqReE2eq.exit.i
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsisHG5ZUm6CA_8anstream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %4 = trunc nuw i8 %.sroa.0.0.i.i to i1          ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @_RINvNtCs2AWtUsOyxgP_3std3env6var_osReECsisHG5ZUm6CA_8anstream(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 8)
  %i.r = load i64, ptr %i.f, align 8, !range !3, !noundef !4
  %.not.not.i = icmp eq i64 %i.r, -1
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.t = load i64, ptr %i.s, align 8
  %.not = icmp eq i64 %i.t, 0
  br i1 %.not.not.i, label %_RNvCsiqzR8FqrXFS_13anstyle_query8no_color.exit.thread, label %bb.h

_RNvCsiqzR8FqrXFS_13anstyle_query8no_color.exit.thread: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.t

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsisHG5ZUm6CA_8anstream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RNvCsiqzR8FqrXFS_13anstyle_query8no_color.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsisHG5ZUm6CA_8anstream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %common.resume unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #4
  unreachable

_RNvCsiqzR8FqrXFS_13anstyle_query8no_color.exit:  ; preds = %bb.h
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsisHG5ZUm6CA_8anstream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br i1 %.not, label %bb.t, label %bb.ai

bb.k:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @_RINvNtCs2AWtUsOyxgP_3std3env6var_osReECsisHG5ZUm6CA_8anstream(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 8)
  %i.w = load i64, ptr %i.e, align 8, !range !3, !noundef !4
  %.not.not.i16 = icmp eq i64 %i.w, -1
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.y = load i64, ptr %i.x, align 8
  %.not47 = icmp eq i64 %i.y, 0
  br i1 %.not.not.i16, label %_RNvCsiqzR8FqrXFS_13anstyle_query8no_color.exit20.thread, label %bb.l

_RNvCsiqzR8FqrXFS_13anstyle_query8no_color.exit20.thread: ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.o

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsisHG5ZUm6CA_8anstream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RNvCsiqzR8FqrXFS_13anstyle_query8no_color.exit20 unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsisHG5ZUm6CA_8anstream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #4
  unreachable

_RNvCsiqzR8FqrXFS_13anstyle_query8no_color.exit20: ; preds = %bb.l
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsisHG5ZUm6CA_8anstream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br i1 %.not47, label %bb.o, label %bb.ai

bb.o:                                             ; preds = %_RNvCsiqzR8FqrXFS_13anstyle_query8no_color.exit20.thread, %_RNvCsiqzR8FqrXFS_13anstyle_query8no_color.exit20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RINvNtCs2AWtUsOyxgP_3std3env6var_osReECsisHG5ZUm6CA_8anstream(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 14)
  %i.ab = load i64, ptr %i.d, align 8, !range !3, !noundef !4
  %.not.not.i21 = icmp eq i64 %i.ab, -1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.ad = load i64, ptr %i.ac, align 8
  %.not48 = icmp eq i64 %i.ad, 0
  br i1 %.not.not.i21, label %_RNvCsiqzR8FqrXFS_13anstyle_query14clicolor_force.exit.thread, label %bb.p

_RNvCsiqzR8FqrXFS_13anstyle_query14clicolor_force.exit.thread: ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.s

bb.p:                                             ; preds = %bb.o
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsisHG5ZUm6CA_8anstream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RNvCsiqzR8FqrXFS_13anstyle_query14clicolor_force.exit unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsisHG5ZUm6CA_8anstream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %common.resume unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #4
  unreachable

_RNvCsiqzR8FqrXFS_13anstyle_query14clicolor_force.exit: ; preds = %bb.p
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsisHG5ZUm6CA_8anstream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br i1 %.not48, label %bb.s, label %bb.ai

bb.s:                                             ; preds = %_RNvCsiqzR8FqrXFS_13anstyle_query14clicolor_force.exit29, %_RNvCsiqzR8FqrXFS_13anstyle_query14clicolor_force.exit29.thread, %_RNvCsiqzR8FqrXFS_13anstyle_query14clicolor_force.exit.thread, %_RNvCsiqzR8FqrXFS_13anstyle_query14clicolor_force.exit
  %.sroa.06.0 = phi i8 [ 1, %_RNvCsiqzR8FqrXFS_13anstyle_query14clicolor_force.exit29.thread ], [ 0, %_RNvCsiqzR8FqrXFS_13anstyle_query14clicolor_force.exit ], [ 0, %_RNvCsiqzR8FqrXFS_13anstyle_query14clicolor_force.exit.thread ], [ %..sroa.0.0.i.i, %_RNvCsiqzR8FqrXFS_13anstyle_query14clicolor_force.exit29 ]
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ah = load ptr, ptr %i.ag, align 8, !invariant.load !4, !nonnull !4
  %i.ai = call noundef zeroext i1 %i.ah(ptr noundef nonnull %0)
  br i1 %i.ai, label %bb.x, label %bb.ai

bb.t:                                             ; preds = %_RNvCsiqzR8FqrXFS_13anstyle_query8no_color.exit.thread, %_RNvCsiqzR8FqrXFS_13anstyle_query8no_color.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RINvNtCs2AWtUsOyxgP_3std3env6var_osReECsisHG5ZUm6CA_8anstream(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 14)
  %i.aj = load i64, ptr %i.c, align 8, !range !3, !noundef !4
  %.not.not.i25 = icmp eq i64 %i.aj, -1
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.al = load i64, ptr %i.ak, align 8
  %.fr = freeze i64 %i.al
  %5 = icmp eq i64 %.fr, 0                        ; 3 uses
  br i1 %.not.not.i25, label %_RNvCsiqzR8FqrXFS_13anstyle_query14clicolor_force.exit29.thread, label %bb.u

_RNvCsiqzR8FqrXFS_13anstyle_query14clicolor_force.exit29.thread: ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br i1 %4, label %bb.s, label %bb.ai

bb.u:                                             ; preds = %bb.t
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsisHG5ZUm6CA_8anstream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RNvCsiqzR8FqrXFS_13anstyle_query14clicolor_force.exit29 unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.am = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsisHG5ZUm6CA_8anstream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %common.resume unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #4
  unreachable

_RNvCsiqzR8FqrXFS_13anstyle_query14clicolor_force.exit29: ; preds = %bb.u
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsisHG5ZUm6CA_8anstream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %brmerge.not = select i1 %5, i1 %4, i1 false
  %. = select i1 %5, i8 3, i8 2
  %..sroa.0.0.i.i = select i1 %5, i8 %.sroa.0.0.i.i, i8 1
  br i1 %brmerge.not, label %bb.s, label %bb.ai

bb.x:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RINvNtCs2AWtUsOyxgP_3std3env6var_osReECsisHG5ZUm6CA_8anstream(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef 4)
  %i.ao = load i64, ptr %i.b, align 8, !range !3, !noundef !4
  %.not.i30 = icmp eq i64 %i.ao, -1
  br i1 %.not.i30, label %_RNvCsiqzR8FqrXFS_13anstyle_query19term_supports_color.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.val2.i31 = load i64, ptr %i.ap, align 8, !noundef !4
  %i.aq = icmp eq i64 %.val2.i31, 4
  br i1 %i.aq, label %_RNvXsd_NtNtCs2AWtUsOyxgP_3std3ffi6os_strNtB5_8OsStringINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqReE2eq.exit.i32, label %_RNvXsd_NtNtCs2AWtUsOyxgP_3std3ffi6os_strNtB5_8OsStringINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqReE2eq.exit.thread.i

_RNvXsd_NtNtCs2AWtUsOyxgP_3std3ffi6os_strNtB5_8OsStringINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqReE2eq.exit.i32: ; preds = %bb.y
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.val.i33 = load ptr, ptr %i.ar, align 8, !nonnull !4, !noundef !4
  %i.as = load i32, ptr %.val.i33, align 1
  %i.at = icmp ne i32 %i.as, 1651340644
  %i.au = zext i1 %i.at to i32
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %bb.ab, label %_RNvXsd_NtNtCs2AWtUsOyxgP_3std3ffi6os_strNtB5_8OsStringINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqReE2eq.exit.thread.i

_RNvXsd_NtNtCs2AWtUsOyxgP_3std3ffi6os_strNtB5_8OsStringINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqReE2eq.exit.thread.i: ; preds = %_RNvXsd_NtNtCs2AWtUsOyxgP_3std3ffi6os_strNtB5_8OsStringINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqReE2eq.exit.i32, %bb.y
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsisHG5ZUm6CA_8anstream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.sink.split.i unwind label %bb.z

bb.z:                                             ; preds = %_RNvXsd_NtNtCs2AWtUsOyxgP_3std3ffi6os_strNtB5_8OsStringINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqReE2eq.exit.thread.i
  %i.aw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsisHG5ZUm6CA_8anstream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %common.resume unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #4
  unreachable

bb.ab:                                            ; preds = %_RNvXsd_NtNtCs2AWtUsOyxgP_3std3ffi6os_strNtB5_8OsStringINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqReE2eq.exit.i32
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsisHG5ZUm6CA_8anstream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.sink.split.i unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ay = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsisHG5ZUm6CA_8anstream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %common.resume unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #4
  unreachable

.sink.split.i:                                    ; preds = %bb.ab, %_RNvXsd_NtNtCs2AWtUsOyxgP_3std3ffi6os_strNtB5_8OsStringINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqReE2eq.exit.thread.i
  %.sroa.0.1.ph.i = phi i1 [ true, %_RNvXsd_NtNtCs2AWtUsOyxgP_3std3ffi6os_strNtB5_8OsStringINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqReE2eq.exit.thread.i ], [ false, %bb.ab ]
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsisHG5ZUm6CA_8anstream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RNvCsiqzR8FqrXFS_13anstyle_query19term_supports_color.exit

_RNvCsiqzR8FqrXFS_13anstyle_query19term_supports_color.exit: ; preds = %bb.x, %.sink.split.i
  %.sroa.0.1.i = phi i1 [ false, %bb.x ], [ %.sroa.0.1.ph.i, %.sink.split.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %6 = trunc nuw i8 %.sroa.06.0 to i1
  %or.cond = select i1 %.sroa.0.1.i, i1 true, i1 %6
  br i1 %or.cond, label %bb.ai, label %bb.ae

bb.ae:                                            ; preds = %_RNvCsiqzR8FqrXFS_13anstyle_query19term_supports_color.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @_RINvNtCs2AWtUsOyxgP_3std3env6var_osReECsisHG5ZUm6CA_8anstream(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @4, i64 noundef 2)
  %i.ba = load i64, ptr %i.i, align 8, !range !3, !noundef !4
  %.not14 = icmp eq i64 %i.ba, -1
  br i1 %.not14, label %.sink.split, label %bb.af

bb.af:                                            ; preds = %bb.ae
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsisHG5ZUm6CA_8anstream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEECsisHG5ZUm6CA_8anstream.exit unwind label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.bb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsisHG5ZUm6CA_8anstream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %common.resume unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.bc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #4
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEECsisHG5ZUm6CA_8anstream.exit: ; preds = %bb.af
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsisHG5ZUm6CA_8anstream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
  br label %.sink.split

.sink.split:                                      ; preds = %bb.ae, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEECsisHG5ZUm6CA_8anstream.exit
  %.sroa.0.2.ph = phi i8 [ 2, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEECsisHG5ZUm6CA_8anstream.exit ], [ 3, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.ai

bb.ai:                                            ; preds = %.sink.split, %_RNvCsiqzR8FqrXFS_13anstyle_query14clicolor_force.exit29, %_RNvCsiqzR8FqrXFS_13anstyle_query19term_supports_color.exit, %_RNvCsiqzR8FqrXFS_13anstyle_query14clicolor_force.exit29.thread, %_RNvCsiqzR8FqrXFS_13anstyle_query8no_color.exit20, %_RNvCsiqzR8FqrXFS_13anstyle_query8no_color.exit, %bb.s, %_RNvCsiqzR8FqrXFS_13anstyle_query14clicolor_force.exit, %bb.a
  %.sroa.0.2 = phi i8 [ %i.j, %bb.a ], [ 3, %_RNvCsiqzR8FqrXFS_13anstyle_query8no_color.exit ], [ 3, %_RNvCsiqzR8FqrXFS_13anstyle_query8no_color.exit20 ], [ 3, %bb.s ], [ 2, %_RNvCsiqzR8FqrXFS_13anstyle_query14clicolor_force.exit ], [ 3, %_RNvCsiqzR8FqrXFS_13anstyle_query14clicolor_force.exit29.thread ], [ 2, %_RNvCsiqzR8FqrXFS_13anstyle_query19term_supports_color.exit ], [ %., %_RNvCsiqzR8FqrXFS_13anstyle_query14clicolor_force.exit29 ], [ %.sroa.0.2.ph, %.sink.split ]
  ret i8 %.sroa.0.2
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsisHG5ZUm6CA_8anstream(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsisHG5ZUm6CA_8anstream(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCs2AWtUsOyxgP_3std3env6var_osReECsisHG5ZUm6CA_8anstream(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nonlazybind uwtable
declare noundef range(i8 0, 4) i8 @_RNvMCsbOXrUdIOZ6o_11colorchoiceNtB2_11ColorChoice6global() unnamed_addr #0

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { cold noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!"rustc version 1.97.1 (8bab26f4f 2026-07-14)"}
!3 = !{i64 -1, i64 -9223372036854775808}
!4 = !{}
end_hunk_0
