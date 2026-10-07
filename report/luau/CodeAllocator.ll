Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/CodeAllocator?download=true
inline.NumInlined: 133
inline.NumDeleted: 78
begin_hunk_0_@_ZN4Luau7CodeGen13CodeAllocator8allocateEPKhmS3_m:bb.a

.thread:                                          ; preds = %..thread_crit_edge, %bb.j
  %i.av = phi i64 [ %.pre84, %..thread_crit_edge ], [ 0, %bb.j ] ; 2 uses
  %i.aw = load i64, ptr @_ZL9kPageSize, align 8, !tbaa !10 ; 2 uses
  %i.ax = add i64 %5, -1
  %i.ay = add i64 %i.ax, %i.av
  %i.az = add i64 %i.ay, %i.aw
  %i.ba = sub i64 0, %i.aw
  %i.bb = and i64 %i.az, %i.ba
  br label %bb.t

bb.m:                                             ; preds = %bb.a
  %i.bc = add i64 %3, 31
  %i.bd = and i64 %i.bc, 4294967264               ; 2 uses
  %i.be = add i64 %i.bd, %5                       ; 5 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !24
  %i.bh = add i64 %i.bg, -256
  %i.bi = icmp ugt i64 %i.be, %i.bh
  br i1 %i.bi, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 40, i1 false)
  br label %.critedge

bb.o:                                             ; preds = %bb.m
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !40
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !41
  %i.bn = ptrtoint ptr %i.bk to i64
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = sub i64 %i.bn, %i.bo
  %i.bq = icmp ugt i64 %i.be, %i.bp
  br i1 %i.bq, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.br = call noundef zeroext i1 @_ZN4Luau7CodeGen13CodeAllocator16allocateNewBlockERm(ptr noundef nonnull align 8 dereferenceable(128) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  br i1 %i.br, label %._crit_edge, label %bb.q

._crit_edge:                                      ; preds = %bb.p
  %.pre = load i64, ptr %i.a, align 8, !tbaa !10
  br label %bb.r

bb.q:                                             ; preds = %bb.p
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 40, i1 false)
  br label %.critedge

bb.r:                                             ; preds = %._crit_edge, %bb.o
  %i.bs = phi i64 [ %.pre, %._crit_edge ], [ 0, %bb.o ] ; 2 uses
  %i.bt = add i64 %i.bs, %i.bd                    ; 2 uses
  %i.bu = load i64, ptr @_ZL9kPageSize, align 8, !tbaa !10 ; 2 uses
  %i.bv = add i64 %i.be, -1
  %i.bw = add i64 %i.bv, %i.bs
  %i.bx = add i64 %i.bw, %i.bu
  %i.by = sub i64 0, %i.bu
  %i.bz = and i64 %i.bx, %i.by                    ; 2 uses
  %.not59 = icmp eq i64 %3, 0
  br i1 %.not59, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.thread71, %bb.r
  %.04880 = phi i64 [ %.pre-phi91, %.thread71 ], [ %i.be, %bb.r ]
  %.179 = phi i64 [ %i.ah, %.thread71 ], [ %i.bz, %bb.r ]
  %.15377 = phi i64 [ %i.ad, %.thread71 ], [ %i.bt, %bb.r ] ; 2 uses
  %.15178 = sub i64 %.15377, %3
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !41
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 %.15178
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cc, ptr align 1 %2, i64 %3, i1 false)
  br label %bb.t

bb.t:                                             ; preds = %.thread, %bb.s, %bb.r
  %.not5970 = phi i1 [ true, %.thread ], [ false, %bb.s ], [ true, %bb.r ]
  %.04869 = phi i64 [ %5, %.thread ], [ %.04880, %bb.s ], [ %i.be, %bb.r ]
  %.168 = phi i64 [ %i.bb, %.thread ], [ %.179, %bb.s ], [ %i.bz, %bb.r ] ; 6 uses
  %.15367 = phi i64 [ %i.av, %.thread ], [ %.15377, %bb.s ], [ %i.bt, %bb.r ] ; 6 uses
  %.not60 = icmp eq i64 %5, 0
  br i1 %.not60, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !41
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 %.15367
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cf, ptr align 1 %4, i64 %5, i1 false)
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.cg = load i8, ptr @_ZN5FFlag22LuauCodegenProtectDataE, align 8, !tbaa !39, !range !49, !noundef !50
  %i.ch = trunc nuw i8 %i.cg to i1
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !41 ; 3 uses
  br i1 %i.ch, label %bb.w, label %bb.ad

bb.w:                                             ; preds = %bb.v
  br i1 %.not5970, label %bb.ab, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ck = call i32 @mprotect(ptr noundef %i.cj, i64 noundef %.15367, i32 noundef 1) #8
  %i.cl = icmp eq i32 %i.ck, 0
  br i1 %i.cl, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 40, i1 false)
  br label %.critedge

bb.z:                                             ; preds = %bb.x
  %i.cm = load ptr, ptr %i.ci, align 8, !tbaa !41
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 %.15367
  %i.co = sub i64 %.168, %.15367
  %i.cp = call i32 @mprotect(ptr noundef %i.cn, i64 noundef %i.co, i32 noundef 5) #8
  %i.cq = icmp eq i32 %i.cp, 0
  br i1 %i.cq, label %bb.af, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 40, i1 false)
  br label %.critedge

bb.ab:                                            ; preds = %bb.w
  %i.cr = call i32 @mprotect(ptr noundef %i.cj, i64 noundef %.168, i32 noundef 5) #8
  %i.cs = icmp eq i32 %i.cr, 0
  br i1 %i.cs, label %bb.af, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 40, i1 false)
  br label %.critedge

bb.ad:                                            ; preds = %bb.v
  %i.ct = call i32 @mprotect(ptr noundef %i.cj, i64 noundef %.168, i32 noundef 5) #8
  %i.cu = icmp eq i32 %i.ct, 0
  br i1 %i.cu, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 40, i1 false)
  br label %.critedge

bb.af:                                            ; preds = %bb.ad, %bb.z, %bb.ab
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !26
  %i.cx = add i64 %i.cw, 1
  store i64 %i.cx, ptr %i.cv, align 8, !tbaa !26
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !41
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 %.15367 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 %5
  call void @llvm.clear_cache.p0(ptr %i.da, ptr %i.db)
  %i.dc = load ptr, ptr %i.cy, align 8, !tbaa !41 ; 5 uses
  %i.dd = load i64, ptr %i.a, align 8, !tbaa !10
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.dd
  store ptr %i.de, ptr %0, align 8, !tbaa !51
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.04869, ptr %i.df, align 8, !tbaa !52
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dc, i64 %.15367
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.dg, ptr %i.dh, align 8, !tbaa !53
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.dc, ptr %i.di, align 8, !tbaa !43
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.168, ptr %i.dj, align 8, !tbaa !44
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !40 ; 2 uses
  %i.dm = ptrtoint ptr %i.dl to i64
  %i.dn = ptrtoint ptr %i.dc to i64
  %i.do = sub i64 %i.dm, %i.dn
  %.not61 = icmp ugt i64 %.168, %i.do
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dc, i64 %.168
  %storemerge = select i1 %.not61, ptr %i.dl, ptr %i.dp
  store ptr %storemerge, ptr %i.cy, align 8, !tbaa !41
  br label %.critedge

.critedge:                                        ; preds = %bb.n, %bb.q, %bb.af, %bb.ae, %bb.ac, %bb.aa, %bb.y, %bb.l, %bb.i, %bb.g, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN4Luau7CodeGen13CodeAllocator16allocateNewBlockERm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !33
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3
  %i.i = add nsw i64 %i.h, 1
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !24   ; 2 uses
  %i.l = mul i64 %i.i, %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.n = load i64, ptr %i.m, align 8, !tbaa !25
  %i.o = icmp ugt i64 %i.l, %i.n
  br i1 %i.o, label %_ZNSt6vectorIPvSaIS0_EE9push_backERKS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = load i64, ptr @_ZL9kPageSize, align 8, !tbaa !10 ; 2 uses
  %i.q = add i64 %i.k, -1
  %i.r = add i64 %i.q, %i.p
  %i.s = sub i64 0, %i.p
  %i.t = and i64 %i.r, %i.s                       ; 2 uses
  %i.u = tail call ptr @mmap(ptr noundef null, i64 noundef %i.t, i32 noundef 3, i32 noundef 34, i32 noundef -1, i64 noundef 0) #8 ; 7 uses
  %magicptr.i = ptrtoint ptr %i.u to i64
  %magicptr.off.i = add i64 %magicptr.i, -1
  %switch.i = icmp ult i64 %magicptr.off.i, -2
  br i1 %switch.i, label %bb.c, label %_ZNSt6vectorIPvSaIS0_EE9push_backERKS0_.exit

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !27   ; 2 uses
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %bb.d, label %_ZNK4Luau7CodeGen13CodeAllocator13allocatePagesEm.exit.thread21

_ZNK4Luau7CodeGen13CodeAllocator13allocatePagesEm.exit.thread21: ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !28
  tail call void %i.w(ptr noundef %i.y, ptr noundef null, i64 noundef 0, ptr noundef nonnull %i.u, i64 noundef %i.t), !inline_history !55
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZNK4Luau7CodeGen13CodeAllocator13allocatePagesEm.exit.thread21
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.u, ptr %i.z, align 8, !tbaa !41
  %i.aa = load i64, ptr %i.j, align 8, !tbaa !24
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !40
  %i.ad = load ptr, ptr %i.b, align 8, !tbaa !54  ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !34
  %.not.i9 = icmp eq ptr %i.ad, %i.af
  br i1 %.not.i9, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr %i.u, ptr %i.ad, align 8, !tbaa !35
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr %i.ag, ptr %i.b, align 8, !tbaa !54
  br label %_ZNSt6vectorIPhSaIS0_EE9push_backERKS0_.exit

bb.f:                                             ; preds = %bb.d
  %i.ah = load ptr, ptr %i.a, align 8, !tbaa !33  ; 4 uses
  %i.ai = ptrtoint ptr %i.ad to i64
  %i.aj = ptrtoint ptr %i.ah to i64               ; 2 uses
  %i.ak = sub i64 %i.ai, %i.aj                    ; 5 uses
  %i.al = icmp eq i64 %i.ak, 9223372036854775800
  br i1 %i.al, label %bb.g, label %_ZNKSt6vectorIPhSaIS0_EE12_M_check_lenEmPKc.exit.i.i

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #18
  unreachable

_ZNKSt6vectorIPhSaIS0_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.f
  %i.am = ashr exact i64 %i.ak, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.am, i64 1)
  %i.an = add nsw i64 %.sroa.speculated.i.i.i, %i.am ; 2 uses
  %i.ao = icmp ult i64 %i.an, %i.am
  %i.ap = tail call i64 @llvm.umin.i64(i64 %i.an, i64 1152921504606846975)
  %i.aq = select i1 %i.ao, i64 1152921504606846975, i64 %i.ap ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.aq, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.ar = shl nuw nsw i64 %i.aq, 3
  %i.as = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ar) #19 ; 4 uses
  %i.at = getelementptr inbounds i8, ptr %i.as, i64 %i.ak ; 2 uses
  store ptr %i.u, ptr %i.at, align 8, !tbaa !35
  %i.au = icmp sgt i64 %i.ak, 0
  br i1 %i.au, label %bb.h, label %_ZNSt6vectorIPhSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i

bb.h:                                             ; preds = %_ZNKSt6vectorIPhSaIS0_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.as, ptr align 8 %i.ah, i64 %i.ak, i1 false)
  br label %_ZNSt6vectorIPhSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i

_ZNSt6vectorIPhSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i: ; preds = %bb.h, %_ZNKSt6vectorIPhSaIS0_EE12_M_check_lenEmPKc.exit.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %.not.i17.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPhSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIPhSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i
  %i.aw = load ptr, ptr %i.ae, align 8, !tbaa !34
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = sub i64 %i.ax, %i.aj
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ah, i64 noundef %i.ay) #16
  br label %_ZNSt6vectorIPhSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i

_ZNSt6vectorIPhSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i: ; preds = %bb.i, %_ZNSt6vectorIPhSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i
  store ptr %i.as, ptr %i.a, align 8, !tbaa !33
  store ptr %i.av, ptr %i.b, align 8, !tbaa !54
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.aq
  store ptr %i.az, ptr %i.ae, align 8, !tbaa !34
  br label %_ZNSt6vectorIPhSaIS0_EE9push_backERKS0_.exit

_ZNSt6vectorIPhSaIS0_EE9push_backERKS0_.exit:     ; preds = %bb.e, %_ZNSt6vectorIPhSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !56 ; 2 uses
  %.not7 = icmp eq ptr %i.bb, null
  br i1 %.not7, label %_ZNSt6vectorIPvSaIS0_EE9push_backERKS0_.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIPhSaIS0_EE9push_backERKS0_.exit
  %i.bc = load ptr, ptr %0, align 8, !tbaa !30
  %i.bd = load i64, ptr %i.j, align 8, !tbaa !24
  %i.be = tail call noundef ptr %i.bb(ptr noundef %i.bc, ptr noundef nonnull %i.u, i64 noundef %i.bd, ptr noundef nonnull align 8 dereferenceable(8) %1) ; 3 uses
  %i.bf = load i64, ptr %1, align 8, !tbaa !10
  %i.bg = add i64 %i.bf, 31
  %i.bh = and i64 %i.bg, 4294967264
  store i64 %i.bh, ptr %1, align 8, !tbaa !10
  %.not8.not = icmp eq ptr %i.be, null
  br i1 %.not8.not, label %_ZNSt6vectorIPvSaIS0_EE9push_backERKS0_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !57 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !32
  %.not.i10 = icmp eq ptr %i.bk, %i.bm
  br i1 %.not.i10, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  store ptr %i.be, ptr %i.bk, align 8, !tbaa !29
  %i.bn = load ptr, ptr %i.bj, align 8, !tbaa !57
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store ptr %i.bo, ptr %i.bj, align 8, !tbaa !57
  br label %_ZNSt6vectorIPvSaIS0_EE9push_backERKS0_.exit

bb.m:                                             ; preds = %bb.k
  %i.bp = load ptr, ptr %i.bi, align 8, !tbaa !31 ; 4 uses
  %i.bq = ptrtoint ptr %i.bk to i64
  %i.br = ptrtoint ptr %i.bp to i64               ; 2 uses
  %i.bs = sub i64 %i.bq, %i.br                    ; 5 uses
  %i.bt = icmp eq i64 %i.bs, 9223372036854775800
  br i1 %i.bt, label %bb.n, label %_ZNKSt6vectorIPvSaIS0_EE12_M_check_lenEmPKc.exit.i.i

bb.n:                                             ; preds = %bb.m
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #18
  unreachable

_ZNKSt6vectorIPvSaIS0_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.m
  %i.bu = ashr exact i64 %i.bs, 3                 ; 3 uses
  %.sroa.speculated.i.i.i11 = tail call i64 @llvm.umax.i64(i64 %i.bu, i64 1)
  %i.bv = add nsw i64 %.sroa.speculated.i.i.i11, %i.bu ; 2 uses
  %i.bw = icmp ult i64 %i.bv, %i.bu
  %i.bx = tail call i64 @llvm.umin.i64(i64 %i.bv, i64 1152921504606846975)
  %i.by = select i1 %i.bw, i64 1152921504606846975, i64 %i.bx ; 3 uses
  %.not.i.i.i12 = icmp ne i64 %i.by, 0
  tail call void @llvm.assume(i1 %.not.i.i.i12)
  %i.bz = shl nuw nsw i64 %i.by, 3
  %i.ca = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bz) #19 ; 4 uses
  %i.cb = getelementptr inbounds i8, ptr %i.ca, i64 %i.bs ; 2 uses
  store ptr %i.be, ptr %i.cb, align 8, !tbaa !29
  %i.cc = icmp sgt i64 %i.bs, 0
  br i1 %i.cc, label %bb.o, label %_ZNSt6vectorIPvSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i

bb.o:                                             ; preds = %_ZNKSt6vectorIPvSaIS0_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ca, ptr align 8 %i.bp, i64 %i.bs, i1 false)
  br label %_ZNSt6vectorIPvSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i

_ZNSt6vectorIPvSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i: ; preds = %bb.o, %_ZNKSt6vectorIPvSaIS0_EE12_M_check_lenEmPKc.exit.i.i
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %.not.i17.i.i13 = icmp eq ptr %i.bp, null
  br i1 %.not.i17.i.i13, label %_ZNSt6vectorIPvSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIPvSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i
  %i.ce = load ptr, ptr %i.bl, align 8, !tbaa !32
  %i.cf = ptrtoint ptr %i.ce to i64
  %i.cg = sub i64 %i.cf, %i.br
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bp, i64 noundef %i.cg) #16
  br label %_ZNSt6vectorIPvSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i

_ZNSt6vectorIPvSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i: ; preds = %bb.p, %_ZNSt6vectorIPvSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i
  store ptr %i.ca, ptr %i.bi, align 8, !tbaa !31
  store ptr %i.cd, ptr %i.bj, align 8, !tbaa !57
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.by
  store ptr %i.ch, ptr %i.bl, align 8, !tbaa !32
  br label %_ZNSt6vectorIPvSaIS0_EE9push_backERKS0_.exit

_ZNSt6vectorIPvSaIS0_EE9push_backERKS0_.exit:     ; preds = %bb.b, %_ZNSt6vectorIPhSaIS0_EE9push_backERKS0_.exit, %bb.l, %_ZNSt6vectorIPvSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i, %bb.j, %bb.a
  %.2 = phi i1 [ false, %bb.a ], [ true, %_ZNSt6vectorIPhSaIS0_EE9push_backERKS0_.exit ], [ true, %_ZNSt6vectorIPvSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i ], [ false, %bb.b ], [ true, %bb.l ], [ false, %bb.j ]
  ret i1 %.2
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4Luau7CodeGen13CodeAllocator10deallocateENS0_18CodeAllocationDataE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(128) %0, ptr nofree noundef readonly byval(%"struct.Luau::CodeGen::CodeAllocationData") align 8 captures(none) %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !43   ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load i64, ptr %i.d, align 8, !tbaa !44
  %i.f = tail call i32 @mprotect(ptr noundef nonnull %i.b, i64 noundef %i.e, i32 noundef 3) #8 ; 0 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !26
  %i.i = add i64 %i.h, -1
  store i64 %i.i, ptr %i.g, align 8, !tbaa !26
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZNK4Luau7CodeGen13CodeAllocator13allocatePagesEm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %0, i64 noundef %1) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = load i64, ptr @_ZL9kPageSize, align 8, !tbaa !10 ; 2 uses
  %i.b = add i64 %1, -1
  %i.c = add i64 %i.b, %i.a
  %i.d = sub i64 0, %i.a
  %i.e = and i64 %i.c, %i.d                       ; 2 uses
  %i.f = tail call ptr @mmap(ptr noundef null, i64 noundef %i.e, i32 noundef 3, i32 noundef 34, i32 noundef -1, i64 noundef 0) #8 ; 3 uses
  %2 = icmp eq ptr %i.f, inttoptr (i64 -1 to ptr)
  %3 = select i1 %2, ptr null, ptr %i.f           ; 2 uses
  %4 = icmp eq ptr %3, null
  br i1 %4, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !27   ; 2 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !28
  tail call void %i.h(ptr noundef %i.j, ptr noundef null, i64 noundef 0, ptr noundef nonnull %i.f, i64 noundef %i.e)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  ret ptr %3
}

; Function Attrs: nounwind
declare i32 @mprotect(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind
declare void @llvm.clear_cache.p0(ptr, ptr) #8

; Function Attrs: nounwind
declare ptr @mmap(ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: nounwind
declare i32 @munmap(ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #10

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define internal void @_GLOBAL__sub_I_CodeAllocator.cpp() #12 section ".text.startup" {
bb.a:
  store i8 0, ptr @_ZN5FFlag22LuauCodegenProtectDataE, align 8, !tbaa !39
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN5FFlag22LuauCodegenProtectDataE, i64 1), align 1, !tbaa !58
  store ptr @.str, ptr getelementptr inbounds nuw (i8, ptr @_ZN5FFlag22LuauCodegenProtectDataE, i64 8), align 8, !tbaa !59
  %i.a = load ptr, ptr @_ZN4Luau6FValueIbE4listE, align 8, !tbaa !60
  store ptr %i.a, ptr getelementptr inbounds nuw (i8, ptr @_ZN5FFlag22LuauCodegenProtectDataE, i64 16), align 8, !tbaa !61
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN5FFlag22LuauCodegenProtectDataE, i64 24), align 8, !tbaa !62
  store ptr @_ZN5FFlag22LuauCodegenProtectDataE, ptr @_ZN4Luau6FValueIbE4listE, align 8, !tbaa !60
  %i.b = tail call i64 @sysconf(i32 noundef 30) #8
  store i64 %i.b, ptr @_ZL9kPageSize, align 8, !tbaa !10
  %i.c = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZL9kPageSize) ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

attributes #0 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold nofree noreturn }
attributes #7 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { builtin nounwind }
attributes #17 = { noreturn nounwind }
attributes #18 = { noreturn }
attributes #19 = { builtin allocsize(0) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"long", !5, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!"any pointer", !5, i64 0}
!12 = !{!"p1 omnipotent char", !11, i64 0}
!13 = !{!"any p2 pointer", !11, i64 0}
!14 = !{!"p2 omnipotent char", !13, i64 0}
!15 = !{!"_ZTSNSt12_Vector_baseIPhSaIS0_EE17_Vector_impl_dataE", !14, i64 0, !14, i64 8, !14, i64 16}
!16 = !{!"_ZTSNSt12_Vector_baseIPhSaIS0_EE12_Vector_implE", !15, i64 0}
!17 = !{!"_ZTSSt12_Vector_baseIPhSaIS0_EE", !16, i64 0}
!18 = !{!"_ZTSSt6vectorIPhSaIS0_EE", !17, i64 0}
!19 = !{!"_ZTSNSt12_Vector_baseIPvSaIS0_EE17_Vector_impl_dataE", !13, i64 0, !13, i64 8, !13, i64 16}
!20 = !{!"_ZTSNSt12_Vector_baseIPvSaIS0_EE12_Vector_implE", !19, i64 0}
!21 = !{!"_ZTSSt12_Vector_baseIPvSaIS0_EE", !20, i64 0}
!22 = !{!"_ZTSSt6vectorIPvSaIS0_EE", !21, i64 0}
!23 = !{!"_ZTSN4Luau7CodeGen13CodeAllocatorE", !11, i64 0, !11, i64 8, !11, i64 16, !12, i64 24, !12, i64 32, !18, i64 40, !22, i64 64, !9, i64 88, !9, i64 96, !9, i64 104, !11, i64 112, !11, i64 120}
!24 = !{!23, !9, i64 88}
!25 = !{!23, !9, i64 96}
!26 = !{!23, !9, i64 104}
!27 = !{!23, !11, i64 112}
!28 = !{!23, !11, i64 120}
!29 = !{!11, !11, i64 0}
!30 = !{!23, !11, i64 0}
!31 = !{!19, !13, i64 0}
!32 = !{!19, !13, i64 16}
!33 = !{!15, !14, i64 0}
!34 = !{!15, !14, i64 16}
!35 = !{!12, !12, i64 0}
!36 = !{!"bool", !5, i64 0}
!37 = !{!"p1 _ZTSN4Luau6FValueIbEE", !11, i64 0}
!38 = !{!"_ZTSN4Luau6FValueIbEE", !36, i64 0, !36, i64 1, !12, i64 8, !37, i64 16, !6, i64 24}
!39 = !{!38, !36, i64 0}
!40 = !{!23, !12, i64 32}
!41 = !{!23, !12, i64 24}
!42 = !{!"_ZTSN4Luau7CodeGen18CodeAllocationDataE", !12, i64 0, !9, i64 8, !12, i64 16, !12, i64 24, !9, i64 32}
!43 = !{!42, !12, i64 24}
!44 = !{!42, !9, i64 32}
!45 = !{!23, !11, i64 16}
!46 = !{!13, !13, i64 0}
!47 = !{!14, !14, i64 0}
!48 = !{ptr @_ZNK4Luau7CodeGen13CodeAllocator9freePagesEPhm}
!49 = !{i8 0, i8 2}
!50 = !{}
!51 = !{!42, !12, i64 0}
!52 = !{!42, !9, i64 8}
!53 = !{!42, !12, i64 16}
!54 = !{!15, !14, i64 8}
!55 = !{ptr @_ZNK4Luau7CodeGen13CodeAllocator13allocatePagesEm}
!56 = !{!23, !11, i64 8}
!57 = !{!19, !13, i64 8}
!58 = !{!38, !36, i64 1}
!59 = !{!38, !12, i64 8}
!60 = !{!37, !37, i64 0}
!61 = !{!38, !37, i64 16}
!62 = !{!38, !6, i64 24}
end_hunk_0
