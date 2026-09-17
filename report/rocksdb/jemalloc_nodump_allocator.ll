Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/jemalloc_nodump_allocator?download=true
inline.NumInlined: 839
inline.NumDeleted: 440
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN7rocksdb23JemallocNodumpAllocator12DestroyArenaEj:bb.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40: ; preds = %_ZN7rocksdb6Status10IncompleteERKNS_5SliceES3_.exit
  %i.fl = load i64, ptr %i.eu, align 8, !tbaa !22
  %i.fm = add i64 %i.fl, 1
  call void @_ZdlPvm(ptr noundef %i.fj, i64 noundef %i.fm) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42: ; preds = %_ZN7rocksdb6Status10IncompleteERKNS_5SliceES3_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40
  %i.fn = load ptr, ptr %7, align 8, !tbaa !21    ; 2 uses
  %i.fo = icmp eq ptr %i.fn, %i.df
  br i1 %i.fo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42
  %i.fp = load i64, ptr %i.df, align 8, !tbaa !22
  %i.fq = add i64 %i.fp, 1
  call void @_ZdlPvm(ptr noundef %i.fn, i64 noundef %i.fq) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  br label %bb.ar

bb.am:                                            ; preds = %_ZNSt7__cxx119to_stringEj.exit
  %i.fr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48

bb.an:                                            ; preds = %bb.t, %bb.r
  %i.fs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ft = load ptr, ptr %3, align 8, !tbaa !21    ; 2 uses
  %i.fu = icmp eq ptr %i.ft, %i.bd
  br i1 %i.fu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46: ; preds = %bb.an
  %i.fv = load i64, ptr %i.bd, align 8, !tbaa !22
  %i.fw = add i64 %i.fv, 1
  call void @_ZdlPvm(ptr noundef %i.ft, i64 noundef %i.fw) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48: ; preds = %bb.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46, %bb.am
  %.pn = phi { ptr, i32 } [ %i.fr, %bb.am ], [ %i.fs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46 ], [ %i.fs, %bb.an ]
  %i.fx = load ptr, ptr %4, align 8, !tbaa !21    ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.fz = icmp eq ptr %i.fx, %i.fy
  br i1 %i.fz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48
  %i.ga = load i64, ptr %i.fy, align 8, !tbaa !22
  %i.gb = add i64 %i.ga, 1
  call void @_ZdlPvm(ptr noundef %i.fx, i64 noundef %i.gb) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63

bb.ao:                                            ; preds = %_ZNSt7__cxx119to_stringEi.exit
  %i.gc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54

bb.ap:                                            ; preds = %bb.al
  %i.gd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  %i.ge = load ptr, ptr %6, align 8, !tbaa !21    ; 2 uses
  %i.gf = icmp eq ptr %i.ge, %i.eu
  br i1 %i.gf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52: ; preds = %bb.ap
  %i.gg = load i64, ptr %i.eu, align 8, !tbaa !22
  %i.gh = add i64 %i.gg, 1
  call void @_ZdlPvm(ptr noundef %i.ge, i64 noundef %i.gh) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54: ; preds = %bb.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52, %bb.ao
  %.pn10 = phi { ptr, i32 } [ %i.gc, %bb.ao ], [ %i.gd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52 ], [ %i.gd, %bb.ap ] ; 2 uses
  %i.gi = load ptr, ptr %7, align 8, !tbaa !21    ; 2 uses
  %i.gj = icmp eq ptr %i.gi, %i.df
  br i1 %i.gj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54
  %i.gk = load i64, ptr %i.df, align 8, !tbaa !22
  %i.gl = add i64 %i.gk, 1
  call void @_ZdlPvm(ptr noundef %i.gi, i64 noundef %i.gl) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  %i.gm = load ptr, ptr %2, align 8, !tbaa !21    ; 2 uses
  %i.gn = icmp eq ptr %i.gm, %i.cb
  br i1 %i.gn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61

bb.aq:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.go, align 8, !tbaa !76, !alias.scope !167
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 6, i1 false), !alias.scope !167
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45
  %i.gp = load ptr, ptr %2, align 8, !tbaa !21    ; 2 uses
  %i.gq = icmp eq ptr %i.gp, %i.cb
  br i1 %i.gq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58: ; preds = %bb.ar
  %i.gr = load i64, ptr %i.cb, align 8, !tbaa !22
  %i.gs = add i64 %i.gr, 1
  call void @_ZdlPvm(ptr noundef %i.gp, i64 noundef %i.gs) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60: ; preds = %bb.ar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  ret void

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57
  %i.gt = load i64, ptr %i.cb, align 8, !tbaa !22
  %i.gu = add i64 %i.gt, 1
  call void @_ZdlPvm(ptr noundef %i.gm, i64 noundef %i.gu) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51
  %.pn10.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51 ], [ %.pn10, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61 ], [ %.pn10, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  resume { ptr, i32 } %.pn10.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN7rocksdb23JemallocNodumpAllocatorD0Ev(ptr noundef nonnull align 8 dereferenceable(121) %0) unnamed_addr #3 align 2 {
bb.a:
  tail call void @_ZN7rocksdb23JemallocNodumpAllocatorD1Ev(ptr noundef nonnull align 8 dead_on_return(121) dereferenceable(121) %0) #29
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 128) #32
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nounwind uwtable
define noundef i64 @_ZNK7rocksdb23JemallocNodumpAllocator10UsableSizeEPvm(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, i64 %2) unnamed_addr #3 align 2 {
bb.a:
  %i.a = tail call i64 @malloc_usable_size(ptr noundef %1) #29
  ret i64 %i.a
}

; Function Attrs: nounwind
declare extern_weak i64 @malloc_usable_size(ptr noundef) #6

; Function Attrs: mustprogress uwtable
define noalias noundef ptr @_ZN7rocksdb23JemallocNodumpAllocator8AllocateEm(ptr noundef nonnull align 8 dereferenceable(121) %0, i64 noundef %1) unnamed_addr #1 align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZN7rocksdb23JemallocNodumpAllocator22GetThreadSpecificCacheEm(ptr noundef nonnull align 8 dereferenceable(121) %0, i64 noundef %1)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !77
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !56   ; 3 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g                       ; 2 uses
  %i.i = icmp eq i64 %i.h, 4
  br i1 %i.i, label %_ZNK7rocksdb23JemallocNodumpAllocator13GetArenaIndexEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.b.i = load i1, ptr @_ZGVZNK7rocksdb23JemallocNodumpAllocator13GetArenaIndexEvE9tl_random, align 1
  br i1 %.b.i, label %bb.d, label %bb.c, !prof !78

bb.c:                                             ; preds = %bb.b
  %i.j = atomicrmw add ptr @_ZZNK7rocksdb23JemallocNodumpAllocator13GetArenaIndexEvE9next_seed, i32 1 seq_cst, align 4
  %i.k = and i32 %i.j, 2147483647
  %i.l = tail call noundef i32 @llvm.umax.i32(i32 %i.k, i32 1)
  store i32 %i.l, ptr @_ZZNK7rocksdb23JemallocNodumpAllocator13GetArenaIndexEvE9tl_random, align 4, !tbaa !80
  store i1 true, ptr @_ZGVZNK7rocksdb23JemallocNodumpAllocator13GetArenaIndexEvE9tl_random, align 1
  %.pre.i = load ptr, ptr %i.c, align 8, !tbaa !77
  %.pre1.i = load ptr, ptr %i.b, align 8, !tbaa !56 ; 2 uses
  %.pre2.i = ptrtoint ptr %.pre.i to i64
  %.pre3.i = ptrtoint ptr %.pre1.i to i64
  %.pre5.i = sub i64 %.pre2.i, %.pre3.i
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pre-phi6.i = phi i64 [ %.pre5.i, %bb.c ], [ %i.h, %bb.b ]
  %i.m = phi ptr [ %.pre1.i, %bb.c ], [ %i.e, %bb.b ]
  %i.n = tail call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @_ZZNK7rocksdb23JemallocNodumpAllocator13GetArenaIndexEvE9tl_random) ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !80
  %i.p = zext i32 %i.o to i64
  %i.q = mul nuw nsw i64 %i.p, 16807              ; 2 uses
  %i.r = lshr i64 %i.q, 31
  %i.s = and i64 %i.q, 2147483647
  %i.t = add nuw nsw i64 %i.r, %i.s
  %i.u = trunc nuw i64 %i.t to i32                ; 3 uses
  %i.v = icmp slt i32 %i.u, 0
  %i.w = add i32 %i.u, -2147483647
  %spec.select.i.i = select i1 %i.v, i32 %i.w, i32 %i.u ; 2 uses
  store i32 %spec.select.i.i, ptr %i.n, align 4, !tbaa !80
  %i.x = lshr exact i64 %.pre-phi6.i, 2
  %2 = and i64 %i.x, 4294967295
  %3 = zext i32 %spec.select.i.i to i64
  %4 = mul nuw i64 %2, %3
  %5 = lshr i64 %4, 32
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %5
  br label %_ZNK7rocksdb23JemallocNodumpAllocator13GetArenaIndexEv.exit

_ZNK7rocksdb23JemallocNodumpAllocator13GetArenaIndexEv.exit: ; preds = %bb.a, %bb.d
  %.0.in.i = phi ptr [ %i.y, %bb.d ], [ %i.e, %bb.a ]
  %.0.i = load i32, ptr %.0.in.i, align 4, !tbaa !70
  %i.z = shl i32 %.0.i, 20
  %i.aa = add i32 %i.z, 1048576
  %i.ab = or i32 %i.aa, %i.a
  %i.ac = tail call noalias ptr @mallocx(i64 noundef %1, i32 noundef %i.ab) #33
  ret ptr %i.ac
}

; Function Attrs: mustprogress uwtable
define noundef range(i32 0, -255) i32 @_ZN7rocksdb23JemallocNodumpAllocator22GetThreadSpecificCacheEm(ptr noundef nonnull align 8 dereferenceable(121) %0, i64 noundef %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load i8, ptr %i.b, align 8, !tbaa !97, !range !98, !noundef !99
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load i64, ptr %i.e, align 8, !tbaa !100
  %.not = icmp ule i64 %1, %i.f
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = load i64, ptr %i.g, align 8
  %i.i = icmp ugt i64 %1, %i.h
  %or.cond = select i1 %.not, i1 true, i1 %i.i
  br i1 %or.cond, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.k = tail call noundef ptr @_ZNK7rocksdb14ThreadLocalPtr3GetEv(ptr noundef nonnull align 4 dereferenceable(4) %i.j) ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.d, label %bb.f, !prof !18

bb.d:                                             ; preds = %bb.c
  %i.m = tail call noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #30 ; 5 uses
  store i32 0, ptr %i.m, align 4, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i64 4, ptr %i.a, align 8, !tbaa !53
  %i.n = call i32 @mallctl(ptr noundef nonnull @.str.14, ptr noundef nonnull %i.m, ptr noundef nonnull %i.a, ptr noundef null, i64 noundef 0) #29
  %.not14 = icmp eq i32 %i.n, 0
  br i1 %.not14, label %.thread, label %bb.e

.thread:                                          ; preds = %bb.d
  call void @_ZN7rocksdb14ThreadLocalPtr5ResetEPv(ptr noundef nonnull align 4 dereferenceable(4) %i.j, ptr noundef nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef 4) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  br label %bb.g

bb.f:                                             ; preds = %.thread, %bb.c
  %.010 = phi ptr [ %i.m, %.thread ], [ %i.k, %bb.c ]
  %i.o = load i32, ptr %.010, align 4, !tbaa !70
  %i.p = shl i32 %i.o, 8
  %i.q = add i32 %i.p, 512
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.b
  %.2 = phi i32 [ 256, %bb.b ], [ %i.q, %bb.f ], [ 256, %bb.e ]
  ret i32 %.2
}

; Function Attrs: mustprogress norecurse nounwind willreturn uwtable
define noundef i32 @_ZNK7rocksdb23JemallocNodumpAllocator13GetArenaIndexEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(121) %0) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !77
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !56   ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = icmp eq i64 %i.g, 4
  br i1 %i.h, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.b = load i1, ptr @_ZGVZNK7rocksdb23JemallocNodumpAllocator13GetArenaIndexEvE9tl_random, align 1
  br i1 %.b, label %bb.d, label %bb.c, !prof !78

bb.c:                                             ; preds = %bb.b
  %i.i = atomicrmw add ptr @_ZZNK7rocksdb23JemallocNodumpAllocator13GetArenaIndexEvE9next_seed, i32 1 seq_cst, align 4
  %i.j = and i32 %i.i, 2147483647
  %i.k = tail call noundef i32 @llvm.umax.i32(i32 %i.j, i32 1)
  store i32 %i.k, ptr @_ZZNK7rocksdb23JemallocNodumpAllocator13GetArenaIndexEvE9tl_random, align 4, !tbaa !80
  store i1 true, ptr @_ZGVZNK7rocksdb23JemallocNodumpAllocator13GetArenaIndexEvE9tl_random, align 1
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !77
  %.pre1 = load ptr, ptr %i.a, align 8, !tbaa !56 ; 2 uses
  %.pre2 = ptrtoint ptr %.pre to i64
  %.pre3 = ptrtoint ptr %.pre1 to i64
  %.pre5 = sub i64 %.pre2, %.pre3
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pre-phi6 = phi i64 [ %.pre5, %bb.c ], [ %i.g, %bb.b ]
  %i.l = phi ptr [ %.pre1, %bb.c ], [ %i.d, %bb.b ]
  %i.m = tail call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @_ZZNK7rocksdb23JemallocNodumpAllocator13GetArenaIndexEvE9tl_random) ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !80
  %i.o = zext i32 %i.n to i64
  %i.p = mul nuw nsw i64 %i.o, 16807              ; 2 uses
  %i.q = lshr i64 %i.p, 31
  %i.r = and i64 %i.p, 2147483647
  %i.s = add nuw nsw i64 %i.q, %i.r
  %i.t = trunc nuw i64 %i.s to i32                ; 3 uses
  %i.u = icmp slt i32 %i.t, 0
  %i.v = add i32 %i.t, -2147483647
  %spec.select.i = select i1 %i.u, i32 %i.v, i32 %i.t ; 2 uses
  store i32 %spec.select.i, ptr %i.m, align 4, !tbaa !80
  %i.w = lshr exact i64 %.pre-phi6, 2
  %1 = and i64 %i.w, 4294967295
  %2 = zext i32 %spec.select.i to i64
  %3 = mul nuw i64 %1, %2
  %4 = lshr i64 %3, 32
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %4
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  %.0.in = phi ptr [ %i.x, %bb.d ], [ %i.d, %bb.a ]
  %.0 = load i32, ptr %.0.in, align 4, !tbaa !70
  ret i32 %.0
}

; Function Attrs: nounwind allocsize(0)
declare extern_weak noalias ptr @mallocx(i64 noundef, i32 noundef) #11

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb23JemallocNodumpAllocator10DeallocateEPv(ptr noundef nonnull align 8 dereferenceable(121) %0, ptr noundef %1) unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i8, ptr %i.a, align 8, !tbaa !97, !range !98, !noundef !99
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i64 @malloc_usable_size(ptr noundef %1) #29
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i64 [ %i.d, %bb.b ], [ 0, %bb.a ]
  %i.e = tail call noundef i32 @_ZN7rocksdb23JemallocNodumpAllocator22GetThreadSpecificCacheEm(ptr noundef nonnull align 8 dereferenceable(121) %0, i64 noundef %.0)
  tail call void @dallocx(ptr noundef %1, i32 noundef %i.e) #29
  ret void
}

; Function Attrs: nounwind
declare extern_weak void @dallocx(ptr noundef, i32 noundef) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #12

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb23JemallocNodumpAllocator16InitializeArenasEv(ptr dead_on_unwind noalias writable sret(%"class.rocksdb::Status") align 8 %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(121) initializes((120, 121)) %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 10 uses
  %i.b = alloca i64, align 8                      ; 9 uses
  %2 = alloca %"class.rocksdb::Slice", align 8    ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %5 = alloca %"class.rocksdb::Slice", align 8    ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.c = alloca ptr, align 8                      ; 9 uses
  %i.d = alloca i64, align 8                      ; 8 uses
  %9 = alloca %"class.rocksdb::Slice", align 8    ; 6 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %12 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %13 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %14 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %i.e = alloca ptr, align 8                      ; 6 uses
  %15 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %18 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 120
  store i8 1, ptr %i.f, align 8, !tbaa !101
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !102
  %.not270 = icmp eq i64 %i.h, 0
  br i1 %.not270, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 11 uses
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 12 uses
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 14 uses
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i183
  %.029269 = phi i64 [ 0, %.lr.ph ], [ %i.rv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i183 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  store i64 4, ptr %i.b, align 8, !tbaa !53
  %i.u = call i32 @mallctl(ptr noundef nonnull @.str.5, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef null, i64 noundef 0) #29 ; 3 uses
  %.not = icmp eq i32 %i.u, 0
  br i1 %.not, label %bb.v, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  call void @llvm.experimental.noalias.scope.decl(metadata !198)
  %i.v = call i32 @llvm.abs.i32(i32 %i.u, i1 false) ; 5 uses
  %i.w = icmp ult i32 %i.v, 10
  br i1 %i.w, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %bb.i
  %.030.i.i = phi i32 [ %i.ae, %bb.i ], [ 1, %bb.c ] ; 4 uses
  %.02329.i.i = phi i32 [ %i.ad, %bb.i ], [ %i.v, %bb.c ] ; 5 uses
  %i.x = icmp ult i32 %.02329.i.i, 100
  br i1 %i.x, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.y = add i32 %.030.i.i, 1
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.z = icmp ult i32 %.02329.i.i, 1000
  br i1 %i.z, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aa = add i32 %.030.i.i, 2
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i

bb.g:                                             ; preds = %bb.e
  %i.ab = icmp ult i32 %.02329.i.i, 10000
  br i1 %i.ab, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ac = add i32 %.030.i.i, 3
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i

bb.i:                                             ; preds = %bb.g
  %i.ad = udiv i32 %.02329.i.i, 10000
  %i.ae = add i32 %.030.i.i, 4                    ; 2 uses
  %i.af = icmp ult i32 %.02329.i.i, 100000
  br i1 %i.af, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i, label %.lr.ph.i.i, !llvm.loop !3

_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i:    ; preds = %bb.i, %bb.h, %bb.f, %bb.d, %bb.c
  %.022.i.i = phi i32 [ %i.ac, %bb.h ], [ %i.y, %bb.d ], [ %i.aa, %bb.f ], [ 1, %bb.c ], [ %i.ae, %bb.i ] ; 2 uses
  %.lobit.i = lshr i32 %i.u, 31                   ; 2 uses
  %i.ag = add i32 %.022.i.i, %.lobit.i            ; 3 uses
  %i.ah = zext i32 %i.ag to i64                   ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 10 uses
  store ptr %i.ai, ptr %4, align 8, !tbaa !17, !alias.scope !198
  %i.aj = icmp ugt i32 %i.ag, 15
  br i1 %i.aj, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i
  %i.ak = add nuw nsw i64 %i.ah, 1
  %i.al = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ak) #30
          to label %.noexc.i unwind label %bb.q   ; 2 uses

.noexc.i:                                         ; preds = %bb.j
  store ptr %i.al, ptr %4, align 8, !tbaa !21, !alias.scope !198
  store i64 %i.ah, ptr %i.ai, align 8, !tbaa !22, !alias.scope !198
  br label %bb.m

bb.k:                                             ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i
  switch i32 %i.ag, label %bb.m [
    i32 0, label %bb.n
    i32 1, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k
  store i8 45, ptr %i.ai, align 8, !tbaa !22, !alias.scope !198
  br label %bb.n

bb.m:                                             ; preds = %bb.k, %.noexc.i
  %i.am = phi ptr [ %i.al, %.noexc.i ], [ %i.ai, %bb.k ] ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.am, i8 45, i64 %i.ah, i1 false)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k
  %i.an = phi ptr [ %i.ai, %bb.k ], [ %i.am, %bb.m ], [ %i.ai, %bb.l ]
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.ah, ptr %i.ao, align 8, !tbaa !23, !alias.scope !198
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ah
  store i8 0, ptr %i.ap, align 1, !tbaa !22
  %i.aq = zext nneg i32 %.lobit.i to i64
  %i.ar = load ptr, ptr %4, align 8, !tbaa !21, !alias.scope !198
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.aq ; 4 uses
  %i.at = icmp ugt i32 %i.v, 99
  br i1 %i.at, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.n
  %i.au = add i32 %.022.i.i, -1
  br label %.lr.ph.i11.i

.lr.ph.i11.i:                                     ; preds = %.lr.ph.i11.i, %.lr.ph.preheader.i.i
  %.020.i.i = phi i32 [ %i.ax, %.lr.ph.i11.i ], [ %i.v, %.lr.ph.preheader.i.i ] ; 3 uses
  %.01819.i.i = phi i32 [ %i.bi, %.lr.ph.i11.i ], [ %i.au, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.av = urem i32 %.020.i.i, 100
  %i.aw = shl nuw nsw i32 %i.av, 1
  %i.ax = udiv i32 %.020.i.i, 100                 ; 2 uses
  %i.ay = zext nneg i32 %i.aw to i64
  %i.az = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.ay ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 1
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !22, !noalias !198
  %i.bc = zext i32 %.01819.i.i to i64
  %i.bd = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.bc
  store i8 %i.bb, ptr %i.bd, align 1, !tbaa !22
  %i.be = load i8, ptr %i.az, align 2, !tbaa !22, !noalias !198
  %i.bf = add i32 %.01819.i.i, -1
  %i.bg = zext i32 %i.bf to i64
end_hunk_0
begin_hunk_1_@_GLOBAL__sub_I_jemalloc_nodump_allocator.cc:bb.a

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124.i: ; preds = %_ZNSt14_Function_baseD2Ev.exit121.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i122.i, %bb.aj
  %.230.i = phi ptr [ %i.j, %bb.aj ], [ %.129.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i122.i ], [ %.129.i, %_ZNSt14_Function_baseD2Ev.exit121.i ]
  %.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %i.du, %bb.aj ], [ %.pn.pn.pn.pn.pn.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i122.i ], [ %.pn.pn.pn.pn.pn.i, %_ZNSt14_Function_baseD2Ev.exit121.i ]
  %.5.i = phi i1 [ false, %bb.aj ], [ %.4.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i122.i ], [ %.4.i, %_ZNSt14_Function_baseD2Ev.exit121.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  br label %bb.bd

bb.bd:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124.i, %bb.ai
  %.331.i = phi ptr [ %.230.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124.i ], [ %i.e, %bb.ai ]
  %.pn.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124.i ], [ %i.dt, %bb.ai ]
  %.6.i = phi i1 [ %.5.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124.i ], [ false, %bb.ai ]
  call void @_ZN7rocksdb14OptionTypeInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(180) dereferenceable(180) %7) #29
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.ah
  %.432.i = phi ptr [ %.331.i, %bb.bd ], [ %i.e, %bb.ah ] ; 2 uses
  %.pn.pn.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.i, %bb.bd ], [ %i.ds, %bb.ah ] ; 2 uses
  %.7.i = phi i1 [ %.6.i, %bb.bd ], [ false, %bb.ah ] ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !35 ; 2 uses
  %.not.i125.i = icmp eq ptr %i.fo, null
  br i1 %.not.i125.i, label %_ZNSt14_Function_baseD2Ev.exit126.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.fp = invoke noundef zeroext i1 %i.fo(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %10, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit126.i unwind label %bb.bg ; 0 uses

bb.bg:                                            ; preds = %bb.bf
  %i.fq = landingpad { ptr, i32 }
          catch ptr null
  %i.fr = extractvalue { ptr, i32 } %i.fq, 0
  call void @__clang_call_terminate(ptr %i.fr) #31
  unreachable

_ZNSt14_Function_baseD2Ev.exit126.i:              ; preds = %bb.bf, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  %i.fs = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !35 ; 2 uses
  %.not.i127.i = icmp eq ptr %i.ft, null
  br i1 %.not.i127.i, label %_ZNSt14_Function_baseD2Ev.exit128.i, label %bb.bh

bb.bh:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit126.i
  %i.fu = invoke noundef zeroext i1 %i.ft(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %9, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit128.i unwind label %bb.bi ; 0 uses

bb.bi:                                            ; preds = %bb.bh
  %i.fv = landingpad { ptr, i32 }
          catch ptr null
  %i.fw = extractvalue { ptr, i32 } %i.fv, 0
  call void @__clang_call_terminate(ptr %i.fw) #31
  unreachable

_ZNSt14_Function_baseD2Ev.exit128.i:              ; preds = %bb.bh, %_ZNSt14_Function_baseD2Ev.exit126.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  %i.fx = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !35 ; 2 uses
  %.not.i129.i = icmp eq ptr %i.fy, null
  br i1 %.not.i129.i, label %_ZNSt14_Function_baseD2Ev.exit130.i, label %bb.bj

bb.bj:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit128.i
  %i.fz = invoke noundef zeroext i1 %i.fy(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %8, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit130.i unwind label %bb.bk ; 0 uses

bb.bk:                                            ; preds = %bb.bj
  %i.ga = landingpad { ptr, i32 }
          catch ptr null
  %i.gb = extractvalue { ptr, i32 } %i.ga, 0
  call void @__clang_call_terminate(ptr %i.gb) #31
  unreachable

_ZNSt14_Function_baseD2Ev.exit130.i:              ; preds = %bb.bj, %_ZNSt14_Function_baseD2Ev.exit128.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  %i.gc = load ptr, ptr %6, align 8, !tbaa !21    ; 2 uses
  %i.gd = icmp eq ptr %i.gc, %i.f
  br i1 %i.gd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131.i: ; preds = %_ZNSt14_Function_baseD2Ev.exit130.i
  %i.ge = load i64, ptr %i.f, align 8, !tbaa !22
  %i.gf = add i64 %i.ge, 1
  call void @_ZdlPvm(ptr noundef %i.gc, i64 noundef %i.gf) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133.i: ; preds = %_ZNSt14_Function_baseD2Ev.exit130.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131.i, %bb.ag
  %.533.i = phi ptr [ %i.e, %bb.ag ], [ %.432.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131.i ], [ %.432.i, %_ZNSt14_Function_baseD2Ev.exit130.i ]
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %i.dr, %bb.ag ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131.i ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.i, %_ZNSt14_Function_baseD2Ev.exit130.i ]
  %.8.i = phi i1 [ false, %bb.ag ], [ %.7.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131.i ], [ %.7.i, %_ZNSt14_Function_baseD2Ev.exit130.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  br label %bb.bl

bb.bl:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133.i, %bb.af
  %.634.i = phi ptr [ %.533.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133.i ], [ %0, %bb.af ]
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133.i ], [ %i.dq, %bb.af ]
  %.9.i = phi i1 [ %.8.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133.i ], [ false, %bb.af ]
  call void @_ZN7rocksdb14OptionTypeInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(180) dereferenceable(180) %2) #29
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.ae
  %.735.i = phi ptr [ %.634.i, %bb.bl ], [ %0, %bb.ae ] ; 2 uses
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i, %bb.bl ], [ %i.dp, %bb.ae ]
  %.10.i = phi i1 [ %.9.i, %bb.bl ], [ false, %bb.ae ]
  %i.gg = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !35 ; 2 uses
  %.not.i134.i = icmp eq ptr %i.gh, null
  br i1 %.not.i134.i, label %_ZNSt14_Function_baseD2Ev.exit135.i, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.gi = invoke noundef zeroext i1 %i.gh(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit135.i unwind label %bb.bo ; 0 uses

bb.bo:                                            ; preds = %bb.bn
  %i.gj = landingpad { ptr, i32 }
          catch ptr null
  %i.gk = extractvalue { ptr, i32 } %i.gj, 0
  call void @__clang_call_terminate(ptr %i.gk) #31
  unreachable

_ZNSt14_Function_baseD2Ev.exit135.i:              ; preds = %bb.bn, %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  %i.gl = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !35 ; 2 uses
  %.not.i136.i = icmp eq ptr %i.gm, null
  br i1 %.not.i136.i, label %_ZNSt14_Function_baseD2Ev.exit137.i, label %bb.bp

bb.bp:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit135.i
  %i.gn = invoke noundef zeroext i1 %i.gm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit137.i unwind label %bb.bq ; 0 uses

bb.bq:                                            ; preds = %bb.bp
  %i.go = landingpad { ptr, i32 }
          catch ptr null
  %i.gp = extractvalue { ptr, i32 } %i.go, 0
  call void @__clang_call_terminate(ptr %i.gp) #31
  unreachable

_ZNSt14_Function_baseD2Ev.exit137.i:              ; preds = %bb.bp, %_ZNSt14_Function_baseD2Ev.exit135.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  %i.gq = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !35 ; 2 uses
  %.not.i138.i = icmp eq ptr %i.gr, null
  br i1 %.not.i138.i, label %_ZNSt14_Function_baseD2Ev.exit139.i, label %bb.br

bb.br:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit137.i
  %i.gs = invoke noundef zeroext i1 %i.gr(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit139.i unwind label %bb.bs ; 0 uses

bb.bs:                                            ; preds = %bb.br
  %i.gt = landingpad { ptr, i32 }
          catch ptr null
  %i.gu = extractvalue { ptr, i32 } %i.gt, 0
  call void @__clang_call_terminate(ptr %i.gu) #31
  unreachable

_ZNSt14_Function_baseD2Ev.exit139.i:              ; preds = %bb.br, %_ZNSt14_Function_baseD2Ev.exit137.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  %i.gv = load ptr, ptr %1, align 8, !tbaa !21    ; 2 uses
  %i.gw = icmp eq ptr %i.gv, %i.a
  br i1 %i.gw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i140.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i140.i: ; preds = %_ZNSt14_Function_baseD2Ev.exit139.i
  %i.gx = load i64, ptr %i.a, align 8, !tbaa !22
  %i.gy = add i64 %i.gx, 1
  call void @_ZdlPvm(ptr noundef %i.gv, i64 noundef %i.gy) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142.i: ; preds = %_ZNSt14_Function_baseD2Ev.exit139.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i140.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  %i.gz = icmp eq ptr %0, %.735.i
  %or.cond.i = select i1 %.10.i, i1 true, i1 %i.gz
  br i1 %or.cond.i, label %.loopexit.i, label %.preheader.i

.preheader.i:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142.i, %.preheader.i
  %i.ha = phi ptr [ %i.hb, %.preheader.i ], [ %.735.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142.i ]
  %i.hb = getelementptr inbounds i8, ptr %i.ha, i64 -216 ; 3 uses
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7rocksdb14OptionTypeInfoEED2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216) %i.hb) #29
  %i.hc = icmp eq ptr %i.hb, %0
  br i1 %i.hc, label %.loopexit.i, label %.preheader.i

.loopexit.i:                                      ; preds = %.preheader.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142.i
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #29
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i

__cxx_global_var_init.exit:                       ; preds = %_ZNSt14_Function_baseD2Ev.exit103.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #29
  %i.hd = call i32 @__cxa_atexit(ptr nonnull @_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7rocksdb14OptionTypeInfoESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S7_EEED2Ev, ptr nonnull @_ZN7rocksdbL18jemalloc_type_infoB5cxx11E, ptr nonnull @__dso_handle) #29 ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #24

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #25

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #25

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #25

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { mustprogress uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #2 = { inlinehint mustprogress nounwind uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #3 = { mustprogress nounwind uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { nofree nounwind }
attributes #5 = { "frame-pointer"="non-leaf-no-reserve" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #6 = { nounwind "frame-pointer"="non-leaf-no-reserve" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #7 = { noinline noreturn nounwind uwtable "frame-pointer"="non-leaf-no-reserve" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #8 = { cold nofree noreturn }
attributes #9 = { nobuiltin nounwind "frame-pointer"="non-leaf-no-reserve" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #10 = { mustprogress norecurse nounwind willreturn uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #11 = { nounwind allocsize(0) "frame-pointer"="non-leaf-no-reserve" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nobuiltin allocsize(0) "frame-pointer"="non-leaf-no-reserve" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #14 = { nofree nounwind "frame-pointer"="non-leaf-no-reserve" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #15 = { noreturn "frame-pointer"="non-leaf-no-reserve" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #16 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "frame-pointer"="non-leaf-no-reserve" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #18 = { inlinehint mustprogress uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #19 = { nounwind allocsize(1) "frame-pointer"="non-leaf-no-reserve" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #20 = { mustprogress nofree nounwind willreturn memory(read) "frame-pointer"="non-leaf-no-reserve" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #21 = { cold "frame-pointer"="non-leaf-no-reserve" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #22 = { mustprogress noinline nounwind uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #23 = { uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #25 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #28 = { noreturn }
attributes #29 = { nounwind }
attributes #30 = { builtin allocsize(0) }
attributes #31 = { noreturn nounwind }
attributes #32 = { builtin nounwind }
attributes #33 = { nounwind allocsize(0) }
attributes #34 = { cold nounwind }
attributes #35 = { cold }

!llvm.module.flags = !{!5, !6, !7}
!llvm.ident = !{!8}
!llvm.errno.tbaa = !{!13}

!0 = distinct !{!0, !46}
!1 = distinct !{!1, !46}
!2 = distinct !{!2, !46}
!3 = distinct !{!3, !46}
!4 = distinct !{!4, !46}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 2}
!7 = !{i32 7, !"frame-pointer", i32 4}
!8 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!9 = !{!"Simple C++ TBAA"}
!10 = !{!"omnipotent char", !9, i64 0}
!11 = !{!"int", !10, i64 0}
!12 = !{!"__libc_errno", !11, i64 0}
!13 = !{!12, !11, i64 0}
!14 = !{!"any pointer", !10, i64 0}
!15 = !{!"p1 omnipotent char", !14, i64 0}
!16 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !15, i64 0}
!17 = !{!16, !15, i64 0}
!18 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!19 = !{!"long", !10, i64 0}
!20 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !16, i64 0, !19, i64 8, !10, i64 16}
!21 = !{!20, !15, i64 0}
!22 = !{!10, !10, i64 0}
!23 = !{!20, !19, i64 8}
!24 = !{!"_ZTSSt14_Function_base", !10, i64 0, !14, i64 16}
!25 = !{!"_ZTSSt8functionIFN7rocksdb6StatusERKNS0_13ConfigOptionsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_PvEE", !24, i64 0, !14, i64 24}
!26 = !{!"_ZTSSt8functionIFN7rocksdb6StatusERKNS0_13ConfigOptionsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKvPSA_EE", !24, i64 0, !14, i64 24}
!27 = !{!"_ZTSSt8functionIFbRKN7rocksdb13ConfigOptionsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKvSD_PS9_EE", !24, i64 0, !14, i64 24}
!28 = !{!"_ZTSSt8functionIFN7rocksdb6StatusERKNS0_13ConfigOptionsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPvEE", !24, i64 0, !14, i64 24}
!29 = !{!"_ZTSSt8functionIFN7rocksdb6StatusERKNS0_9DBOptionsERKNS0_19ColumnFamilyOptionsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKvEE", !24, i64 0, !14, i64 24}
!30 = !{!"_ZTSN7rocksdb10OptionTypeE", !10, i64 0}
!31 = !{!"_ZTSN7rocksdb22OptionVerificationTypeE", !10, i64 0}
!32 = !{!"_ZTSN7rocksdb15OptionTypeFlagsE", !10, i64 0}
!33 = !{!"_ZTSN7rocksdb14OptionTypeInfoE", !11, i64 0, !25, i64 8, !26, i64 40, !27, i64 72, !28, i64 104, !29, i64 136, !30, i64 168, !31, i64 172, !32, i64 176}
!34 = !{!33, !11, i64 0}
!35 = !{!24, !14, i64 16}
!36 = !{!14, !14, i64 0}
!37 = !{!"any p2 pointer", !14, i64 0}
!38 = !{!"p2 _ZTSNSt8__detail15_Hash_node_baseE", !37, i64 0}
!39 = !{!"p1 _ZTSNSt8__detail15_Hash_node_baseE", !14, i64 0}
!40 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !39, i64 0}
!41 = !{!"float", !10, i64 0}
!42 = !{!"_ZTSNSt8__detail20_Prime_rehash_policyE", !41, i64 0, !19, i64 8}
!43 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7rocksdb14OptionTypeInfoEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE", !38, i64 0, !19, i64 8, !40, i64 16, !19, i64 24, !42, i64 32, !39, i64 48}
!44 = !{!43, !39, i64 16}
!45 = !{!40, !39, i64 0}
!46 = !{!"llvm.loop.mustprogress"}
!47 = !{!43, !38, i64 0}
!48 = !{!43, !19, i64 8}
!49 = !{!"vtable pointer", !9, i64 0}
!50 = !{!49, !49, i64 0}
!51 = !{!"bool", !10, i64 0}
!52 = !{!51, !51, i64 0}
!53 = !{!19, !19, i64 0}
!54 = !{!"p1 int", !14, i64 0}
!55 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE17_Vector_impl_dataE", !54, i64 0, !54, i64 8, !54, i64 16}
!56 = !{!55, !54, i64 0}
!57 = !{!55, !54, i64 16}
!58 = !{!"p1 _ZTSSt10unique_ptrI14extent_hooks_sSt14default_deleteIS0_EE", !14, i64 0}
!59 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrI14extent_hooks_sSt14default_deleteIS1_EESaIS4_EE17_Vector_impl_dataE", !58, i64 0, !58, i64 8, !58, i64 16}
!60 = !{!59, !58, i64 0}
!61 = !{!59, !58, i64 8}
!62 = !{!"p1 _ZTS14extent_hooks_s", !14, i64 0}
!63 = !{!62, !62, i64 0}
!64 = !{!59, !58, i64 16}
!65 = !{!"p1 _ZTSN7rocksdb12Configurable17RegisteredOptionsE", !14, i64 0}
!66 = !{!"_ZTSNSt12_Vector_baseIN7rocksdb12Configurable17RegisteredOptionsESaIS2_EE17_Vector_impl_dataE", !65, i64 0, !65, i64 8, !65, i64 16}
!67 = !{!66, !65, i64 0}
!68 = !{!66, !65, i64 8}
!69 = !{!66, !65, i64 16}
!70 = !{!11, !11, i64 0}
!71 = !{!15, !15, i64 0}
!72 = !{!"_ZTSN7rocksdb5SliceE", !15, i64 0, !19, i64 8}
!73 = !{!72, !15, i64 0}
!74 = !{!72, !19, i64 8}
!75 = !{!"_ZTSSt10_Head_baseILm0EPKcLb0EE", !15, i64 0}
!76 = !{!75, !15, i64 0}
!77 = !{!55, !54, i64 8}
!78 = !{!"branch_weights", i32 1023, i32 1}
!79 = !{!"_ZTSN7rocksdb6RandomE", !11, i64 0}
!80 = !{!79, !11, i64 0}
!81 = !{!"_ZTSNSt12_Vector_baseIN7rocksdb12Configurable17RegisteredOptionsESaIS2_EE12_Vector_implE", !66, i64 0}
!82 = !{!"_ZTSSt12_Vector_baseIN7rocksdb12Configurable17RegisteredOptionsESaIS2_EE", !81, i64 0}
!83 = !{!"_ZTSSt6vectorIN7rocksdb12Configurable17RegisteredOptionsESaIS2_EE", !82, i64 0}
!84 = !{!"_ZTSN7rocksdb12ConfigurableE", !83, i64 8}
!85 = !{!"_ZTSN7rocksdb12CustomizableE", !84, i64 0}
!86 = !{!"_ZTSN7rocksdb15MemoryAllocatorE", !85, i64 0}
!87 = !{!"_ZTSN7rocksdb19BaseMemoryAllocatorE", !86, i64 0}
!88 = !{!"_ZTSN7rocksdb24JemallocAllocatorOptionsE", !51, i64 0, !19, i64 8, !19, i64 16, !19, i64 24}
!89 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrI14extent_hooks_sSt14default_deleteIS1_EESaIS4_EE12_Vector_implE", !59, i64 0}
!90 = !{!"_ZTSSt12_Vector_baseISt10unique_ptrI14extent_hooks_sSt14default_deleteIS1_EESaIS4_EE", !89, i64 0}
!91 = !{!"_ZTSSt6vectorISt10unique_ptrI14extent_hooks_sSt14default_deleteIS1_EESaIS4_EE", !90, i64 0}
!92 = !{!"_ZTSN7rocksdb14ThreadLocalPtrE", !11, i64 0}
!93 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE12_Vector_implE", !55, i64 0}
!94 = !{!"_ZTSSt12_Vector_baseIjSaIjEE", !93, i64 0}
!95 = !{!"_ZTSSt6vectorIjSaIjEE", !94, i64 0}
!96 = !{!"_ZTSN7rocksdb23JemallocNodumpAllocatorE", !87, i64 0, !88, i64 32, !91, i64 64, !92, i64 88, !95, i64 96, !51, i64 120}
!97 = !{!96, !51, i64 32}
!98 = !{i8 0, i8 2}
!99 = !{}
!100 = !{!96, !19, i64 40}
!101 = !{!96, !51, i64 120}
!102 = !{!96, !19, i64 56}
!103 = !{!"_ZTSN7rocksdb6Status4CodeE", !10, i64 0}
!104 = !{!"_ZTSN7rocksdb6Status7SubCodeE", !10, i64 0}
!105 = !{!"_ZTSN7rocksdb6Status8SeverityE", !10, i64 0}
!106 = !{!"_ZTSSt11_Tuple_implILm0EJPKcSt14default_deleteIA_S0_EEE", !75, i64 0}
!107 = !{!"_ZTSSt5tupleIJPKcSt14default_deleteIA_S0_EEE", !106, i64 0}
!108 = !{!"_ZTSSt15__uniq_ptr_implIKcSt14default_deleteIA_S0_EE", !107, i64 0}
!109 = !{!"_ZTSSt15__uniq_ptr_dataIKcSt14default_deleteIA_S0_ELb1ELb1EE", !108, i64 0}
!110 = !{!"_ZTSSt10unique_ptrIA_KcSt14default_deleteIS1_EE", !109, i64 0}
!111 = !{!"_ZTSN7rocksdb6StatusE", !103, i64 0, !104, i64 1, !105, i64 2, !51, i64 3, !51, i64 4, !10, i64 5, !110, i64 8}
!112 = !{!111, !103, i64 0}
!113 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !14, i64 0}
!114 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !113, i64 0}
!115 = !{!114, !113, i64 0}
!116 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !11, i64 8, !11, i64 12}
!117 = !{!116, !11, i64 8}
!118 = !{!116, !11, i64 12}
!119 = !{!"p1 _ZTSN7rocksdb15MemoryAllocatorE", !14, i64 0}
!120 = !{!"_ZTSSt15_Sp_counted_ptrIPN7rocksdb15MemoryAllocatorELN9__gnu_cxx12_Lock_policyE2EE", !116, i64 0, !119, i64 16}
!121 = !{!120, !119, i64 16}
!122 = !{!43, !39, i64 48}
!123 = !{!"p1 _ZTSNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7rocksdb14OptionTypeInfoEELb1EEEEEE", !14, i64 0}
!124 = !{!43, !19, i64 24}
!125 = !{!39, !39, i64 0}
!126 = !{!"_ZTSNSt8__detail21_Hash_node_code_cacheILb1EEE", !19, i64 0}
!127 = !{!126, !19, i64 0}
!128 = !{!"p1 _ZTSNSt8__detail10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7rocksdb14OptionTypeInfoEELb1EEE", !14, i64 0}
!129 = !{!"_ZTSNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7rocksdb14OptionTypeInfoEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeE", !123, i64 0, !128, i64 8}
!130 = !{!129, !128, i64 8}
!131 = !{!33, !30, i64 168}
!132 = !{!33, !31, i64 172}
!133 = !{!33, !32, i64 176}
!134 = !{!"branch_weights", i32 1, i32 1048575}
!135 = !{i64 0, i64 1, !52, i64 8, i64 8, !53, i64 16, i64 8, !53, i64 24, i64 8, !53}
!136 = distinct !{!136, !"_ZN7rocksdb10autovectorIPvLm8EE3endEv"}
!137 = distinct !{!137, !136, !"_ZN7rocksdb10autovectorIPvLm8EE3endEv: argument 0"}
!138 = !{!"_ZTSNSt12_Vector_baseIPvSaIS0_EE17_Vector_impl_dataE", !37, i64 0, !37, i64 8, !37, i64 16}
!139 = !{!"_ZTSNSt12_Vector_baseIPvSaIS0_EE12_Vector_implE", !138, i64 0}
!140 = !{!"_ZTSSt12_Vector_baseIPvSaIS0_EE", !139, i64 0}
!141 = !{!"_ZTSSt6vectorIPvSaIS0_EE", !140, i64 0}
!142 = !{!"_ZTSN7rocksdb10autovectorIPvLm8EEE", !19, i64 0, !10, i64 8, !37, i64 72, !141, i64 80}
!143 = !{!142, !19, i64 0}
!144 = !{!142, !37, i64 72}
!145 = !{!137}
!146 = !{!138, !37, i64 8}
end_hunk_1
