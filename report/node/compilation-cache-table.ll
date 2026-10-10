Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/compilation-cache-table?download=true
inline.NumInlined: 1199
inline.NumDeleted: 500
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN2v88internal21CompilationCacheTable12LookupScriptENS0_12DirectHandleIS1_EENS0_6HandleINS0_6StringEEERKNS0_13ScriptDetailsEPNS0_7IsolateE:bb.a
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.dp, ptr %i.ds, align 8, !alias.scope !16
  br label %_ZN2v88internal34CompilationCacheScriptLookupResult14FromRawObjectsESt4pairINS0_6TaggedINS0_6ScriptEEENS3_INS0_18SharedFunctionInfoEEEEPNS0_7IsolateE.exit

_ZN2v88internal34CompilationCacheScriptLookupResult14FromRawObjectsESt4pairINS0_6TaggedINS0_6ScriptEEENS3_INS0_18SharedFunctionInfoEEEEPNS0_7IsolateE.exit: ; preds = %_ZN2v88internal6HandleINS0_18SharedFunctionInfoEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i, %bb.n, %bb.m, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal21CompilationCacheTable10LookupEvalENS0_12DirectHandleIS1_EENS2_INS0_6StringEEENS2_INS0_18SharedFunctionInfoEEENS2_INS0_13NativeContextEEENS0_12LanguageModeEi(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.v8::internal::InfoCellPair") align 8 captures(none) %0, ptr nofree readonly captures(none) %1, ptr %2, ptr %3, ptr nofree readonly captures(none) %4, i1 noundef zeroext %5, i32 noundef %6) local_unnamed_addr #0 align 2 {
bb.a:
  %7 = alloca %"class.v8::internal::IsCompiledScope", align 8 ; 5 uses
  %.sroa.7 = alloca [23 x i8], align 1            ; 6 uses
  %8 = alloca %"class.v8::internal::(anonymous namespace)::EvalCacheKey", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  %.sroa.7.7..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.7, i64 7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.7.7..sroa_idx, i8 0, i64 16, i1 false)
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN2v88internal18g_current_isolate_E)
  %i.b = load ptr, ptr %i.a, align 8              ; 7 uses
  %i.c = load i64, ptr %2, align 8                ; 2 uses
  %i.d = add i64 %i.c, -1
  %i.e = inttoptr i64 %i.d to ptr                 ; 3 uses
  %i.f = load atomic volatile i64, ptr %i.e acquire, align 8
  %i.g = add i64 %i.f, 11
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = load atomic volatile i16, ptr %i.h monotonic, align 2 ; 3 uses
  %i.j = and i16 %i.i, -127
  %.not = icmp eq i16 %i.j, 1
  br i1 %.not, label %bb.b, label %_ZN2v88internal6String7FlattenIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS1_EEEEES4_IS1_EPNS0_7IsolateES6_NS0_14AllocationTypeE.exit, !prof !8

bb.b:                                             ; preds = %bb.a
  %i.k = and i16 %i.i, 7
  %i.l = icmp eq i16 %i.k, 1
  br i1 %i.l, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.n = load i64, ptr %i.m, align 8
  %i.o = add i64 %i.n, -1
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  %i.r = load i32, ptr %i.q, align 4
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %.thread, label %bb.d

.thread:                                          ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.u = load i64, ptr %i.t, align 8              ; 2 uses
  %i.v = add i64 %i.u, -1
  %i.w = inttoptr i64 %i.v to ptr
  %i.x = load atomic volatile i64, ptr %i.w acquire, align 8
  %i.y = add i64 %i.x, 11
  %i.z = inttoptr i64 %i.y to ptr
  %i.aa = load atomic volatile i16, ptr %i.z monotonic, align 2
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ab = tail call ptr @_ZN2v88internal6String11SlowFlattenINS0_12DirectHandleEQsr3stdE16is_convertible_vIT_IS1_ENS3_IS1_EEEEES5_PNS0_7IsolateES4_INS0_10ConsStringEENS0_14AllocationTypeE(ptr noundef %i.b, ptr nonnull %2, i8 noundef zeroext 0)
  br label %_ZN2v88internal6String7FlattenIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS1_EEEEES4_IS1_EPNS0_7IsolateES6_NS0_14AllocationTypeE.exit

bb.e:                                             ; preds = %.thread, %bb.b
  %.sroa.053.0 = phi i16 [ %i.aa, %.thread ], [ %i.i, %bb.b ]
  %.sroa.012.1.i = phi i64 [ %i.u, %.thread ], [ %i.c, %bb.b ] ; 2 uses
  %i.ac = and i16 %.sroa.053.0, -121
  %i.ad = icmp eq i16 %i.ac, 5
  br i1 %i.ad, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ae = add i64 %.sroa.012.1.i, -1
  %i.af = inttoptr i64 %i.ae to ptr
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load i64, ptr %i.ag, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.012.2.i = phi i64 [ %i.ah, %bb.f ], [ %.sroa.012.1.i, %bb.e ]
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 560 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8            ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 568
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = icmp eq ptr %i.aj, %i.al
  br i1 %i.am, label %bb.h, label %_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !8

bb.h:                                             ; preds = %bb.g
  %i.an = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.b) #14
  br label %_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %bb.g, %bb.h
  %.0.i.i = phi ptr [ %i.an, %bb.h ], [ %i.aj, %bb.g ] ; 3 uses
  %i.ao = ptrtoint ptr %.0.i.i to i64
  %i.ap = add i64 %i.ao, 8
  %i.aq = inttoptr i64 %i.ap to ptr
  store ptr %i.aq, ptr %i.ai, align 8
  store i64 %.sroa.012.2.i, ptr %.0.i.i, align 8
  br label %_ZN2v88internal6String7FlattenIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS1_EEEEES4_IS1_EPNS0_7IsolateES6_NS0_14AllocationTypeE.exit

_ZN2v88internal6String7FlattenIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS1_EEEEES4_IS1_EPNS0_7IsolateES6_NS0_14AllocationTypeE.exit: ; preds = %bb.a, %bb.d, %_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %.sroa.058.1 = phi ptr [ %i.ab, %bb.d ], [ %.0.i.i, %_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit ], [ %2, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  call fastcc void @_ZN2v88internal12_GLOBAL__N_112EvalCacheKeyC2ENS0_12DirectHandleINS0_6StringEEENS3_INS0_18SharedFunctionInfoEEENS0_12LanguageModeEi(ptr noundef nonnull align 8 dereferenceable(40) %8, ptr %.sroa.058.1, ptr %3, i1 noundef zeroext %5, i32 noundef %6)
  %i.ar = load i64, ptr %1, align 8
  %i.as = add i64 %i.ar, -1
  %i.at = inttoptr i64 %i.as to ptr               ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 648
  %i.av = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.aw = load i32, ptr %i.av, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  %i.ay = load atomic volatile i64, ptr %i.ax monotonic, align 8
  %i.az = lshr i64 %i.ay, 32
  %i.ba = trunc nuw i64 %i.az to i32
  %i.bb = load i64, ptr %i.au, align 8            ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 656
  %i.bd = load i64, ptr %i.bc, align 8
  %i.be = add i32 %i.ba, -1                       ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.at, i64 16 ; 2 uses
  %.sroa.06.0.in33.i.i = and i32 %i.be, %i.aw     ; 2 uses
  %.sroa.06.034.i.i = zext i32 %.sroa.06.0.in33.i.i to i64 ; 2 uses
  %i.bg = mul i64 %.sroa.06.034.i.i, 12884901888
  %sext.i35.i.i = add i64 %i.bg, 12884901888
  %i.bh = ashr exact i64 %sext.i35.i.i, 29
  %i.bi = getelementptr inbounds i8, ptr %i.bf, i64 %i.bh
  %i.bj = load atomic volatile i64, ptr %i.bi monotonic, align 8 ; 2 uses
  %i.bk = icmp eq i64 %i.bj, %i.bb
  br i1 %i.bk, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN2v88internal6String7FlattenIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS1_EEEEES4_IS1_EPNS0_7IsolateES6_NS0_14AllocationTypeE.exit, %bb.j
  %i.bl = phi i64 [ %i.bv, %bb.j ], [ %i.bj, %_ZN2v88internal6String7FlattenIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS1_EEEEES4_IS1_EPNS0_7IsolateES6_NS0_14AllocationTypeE.exit ] ; 2 uses
  %.sroa.06.038.i.i = phi i64 [ %.sroa.06.0.i.i, %bb.j ], [ %.sroa.06.034.i.i, %_ZN2v88internal6String7FlattenIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS1_EEEEES4_IS1_EPNS0_7IsolateES6_NS0_14AllocationTypeE.exit ]
  %.sroa.06.0.in37.i.i = phi i32 [ %.sroa.06.0.in.i.i, %bb.j ], [ %.sroa.06.0.in33.i.i, %_ZN2v88internal6String7FlattenIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS1_EEEEES4_IS1_EPNS0_7IsolateES6_NS0_14AllocationTypeE.exit ]
  %.036.i.i = phi i32 [ %i.bq, %bb.j ], [ 1, %_ZN2v88internal6String7FlattenIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS1_EEEEES4_IS1_EPNS0_7IsolateES6_NS0_14AllocationTypeE.exit ] ; 2 uses
  %i.bm = icmp eq i64 %i.bl, %i.bd
  br i1 %i.bm, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i
  %i.bn = load ptr, ptr %8, align 8
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = call noundef zeroext i1 %i.bo(ptr noundef nonnull align 8 dereferenceable(12) %8, i64 %i.bl) #14, !inline_history !0
  br i1 %i.bp, label %_ZN2v88internal9HashTableINS0_21CompilationCacheTableENS0_21CompilationCacheShapeEE9FindEntryINS0_7IsolateEEENS0_13InternalIndexEPT_PNS0_12HashTableKeyE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph.i.i
  %i.bq = add i32 %.036.i.i, 1
  %i.br = add i32 %.036.i.i, %.sroa.06.0.in37.i.i
  %.sroa.06.0.in.i.i = and i32 %i.br, %i.be       ; 2 uses
  %.sroa.06.0.i.i = zext i32 %.sroa.06.0.in.i.i to i64 ; 2 uses
  %i.bs = mul i64 %.sroa.06.0.i.i, 12884901888
  %sext.i.i.i = add i64 %i.bs, 12884901888
  %i.bt = ashr exact i64 %sext.i.i.i, 29
  %i.bu = getelementptr inbounds i8, ptr %i.bf, i64 %i.bt
  %i.bv = load atomic volatile i64, ptr %i.bu monotonic, align 8 ; 2 uses
  %i.bw = icmp eq i64 %i.bv, %i.bb
  br i1 %i.bw, label %.loopexit, label %.lr.ph.i.i, !llvm.loop !1

.loopexit:                                        ; preds = %bb.j, %_ZN2v88internal6String7FlattenIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS1_EEEEES4_IS1_EPNS0_7IsolateES6_NS0_14AllocationTypeE.exit
  store ptr null, ptr %0, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.7, i64 23, i1 false)
  br label %bb.q

_ZN2v88internal9HashTableINS0_21CompilationCacheTableENS0_21CompilationCacheShapeEE9FindEntryINS0_7IsolateEEENS0_13InternalIndexEPT_PNS0_12HashTableKeyE.exit: ; preds = %bb.i
  %i.bx = load i64, ptr %1, align 8
  %i.by = add i64 %i.bx, -1
  %i.bz = inttoptr i64 %i.by to ptr
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16 ; 3 uses
  %i.cb = mul i64 %.sroa.06.038.i.i, 12884901888  ; 3 uses
  %sext.i.i = add i64 %i.cb, 12884901888
  %i.cc = ashr exact i64 %sext.i.i, 29
  %i.cd = getelementptr inbounds i8, ptr %i.ca, i64 %i.cc
  %i.ce = load atomic volatile i64, ptr %i.cd monotonic, align 8 ; 2 uses
  %i.cf = trunc i64 %i.ce to i1
  br i1 %i.cf, label %_ZN2v88internal12IsFixedArrayENS0_6TaggedINS0_6ObjectEEE.exit, label %_ZN2v88internal12IsFixedArrayENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal12IsFixedArrayENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %_ZN2v88internal9HashTableINS0_21CompilationCacheTableENS0_21CompilationCacheShapeEE9FindEntryINS0_7IsolateEEENS0_13InternalIndexEPT_PNS0_12HashTableKeyE.exit
  %i.cg = add nsw i64 %i.ce, -1
  %i.ch = inttoptr i64 %i.cg to ptr
  %i.ci = load atomic volatile i64, ptr %i.ch monotonic, align 8
  %i.cj = add i64 %i.ci, 11
  %i.ck = inttoptr i64 %i.cj to ptr
  %i.cl = load atomic volatile i16, ptr %i.ck monotonic, align 2
  %i.cm = add i16 %i.cl, -205
  %i.cn = icmp ult i16 %i.cm, 13
  br i1 %i.cn, label %bb.k, label %_ZN2v88internal12IsFixedArrayENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal12IsFixedArrayENS0_6TaggedINS0_6ObjectEEE.exit.thread: ; preds = %_ZN2v88internal9HashTableINS0_21CompilationCacheTableENS0_21CompilationCacheShapeEE9FindEntryINS0_7IsolateEEENS0_13InternalIndexEPT_PNS0_12HashTableKeyE.exit, %_ZN2v88internal12IsFixedArrayENS0_6TaggedINS0_6ObjectEEE.exit
  store ptr null, ptr %0, align 8
  %.sroa.6.0..sroa_idx40 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %.sroa.6.0..sroa_idx40, align 8
  %.sroa.7.0..sroa_idx44 = getelementptr inbounds nuw i8, ptr %0, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.7.0..sroa_idx44, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.7, i64 23, i1 false)
  br label %bb.q

bb.k:                                             ; preds = %_ZN2v88internal12IsFixedArrayENS0_6TaggedINS0_6ObjectEEE.exit
  %sext.i = add i64 %i.cb, 17179869184
  %i.co = ashr exact i64 %sext.i, 29
  %i.cp = getelementptr inbounds i8, ptr %i.ca, i64 %i.co
  %i.cq = load atomic volatile i64, ptr %i.cp monotonic, align 8 ; 5 uses
  %i.cr = trunc i64 %i.cq to i1
  br i1 %i.cr, label %_ZN2v88internal20IsSharedFunctionInfoENS0_6TaggedINS0_6ObjectEEE.exit, label %_ZN2v88internal20IsSharedFunctionInfoENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal20IsSharedFunctionInfoENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.k
  %i.cs = add nsw i64 %i.cq, -1
  %i.ct = inttoptr i64 %i.cs to ptr
  %i.cu = load atomic volatile i64, ptr %i.ct monotonic, align 8
  %i.cv = add i64 %i.cu, 11
  %i.cw = inttoptr i64 %i.cv to ptr
  %i.cx = load atomic volatile i16, ptr %i.cw monotonic, align 2
  %i.cy = icmp eq i16 %i.cx, 286
  br i1 %i.cy, label %bb.l, label %_ZN2v88internal20IsSharedFunctionInfoENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal20IsSharedFunctionInfoENS0_6TaggedINS0_6ObjectEEE.exit.thread: ; preds = %bb.k, %_ZN2v88internal20IsSharedFunctionInfoENS0_6TaggedINS0_6ObjectEEE.exit
  store ptr null, ptr %0, align 8
  %.sroa.6.0..sroa_idx42 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %.sroa.6.0..sroa_idx42, align 8
  %.sroa.7.0..sroa_idx45 = getelementptr inbounds nuw i8, ptr %0, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.7.0..sroa_idx45, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.7, i64 23, i1 false)
  br label %bb.q

bb.l:                                             ; preds = %_ZN2v88internal20IsSharedFunctionInfoENS0_6TaggedINS0_6ObjectEEE.exit
  %i.cz = load i64, ptr %4, align 8
  %sext.i.i26 = add i64 %i.cb, 21474836480
  %i.da = ashr exact i64 %sext.i.i26, 29
  %i.db = getelementptr inbounds i8, ptr %i.ca, i64 %i.da
  %i.dc = load atomic volatile i64, ptr %i.db monotonic, align 8
  %i.dd = add i64 %i.dc, -1
  %i.de = inttoptr i64 %i.dd to ptr               ; 3 uses
  %i.df = load atomic volatile i64, ptr %i.de monotonic, align 8
  %i.dg = add i64 %i.df, 11
  %i.dh = inttoptr i64 %i.dg to ptr
  %i.di = load atomic volatile i16, ptr %i.dh monotonic, align 2
  %i.dj = add i16 %i.di, -257
  %i.dk = icmp ult i16 %i.dj, 2
  br i1 %i.dk, label %bb.m, label %_ZN2v88internal12_GLOBAL__N_117SearchLiteralsMapENS0_6TaggedINS0_21CompilationCacheTableEEENS0_13InternalIndexENS2_INS0_7ContextEEE.exit.thread

bb.m:                                             ; preds = %bb.l
  %i.dl = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.dm = load i64, ptr %i.dl, align 8
  %i.dn = lshr i64 %i.dm, 32                      ; 2 uses
  %i.do = trunc nuw i64 %i.dn to i32
  %.not40.i = icmp sgt i32 %i.do, 0
  br i1 %.not40.i, label %.lr.ph.i, label %_ZN2v88internal12_GLOBAL__N_117SearchLiteralsMapENS0_6TaggedINS0_21CompilationCacheTableEEENS0_13InternalIndexENS2_INS0_7ContextEEE.exit.thread

.lr.ph.i:                                         ; preds = %bb.m
  %i.dp = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %i.dq = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 10624
  br label %bb.n

bb.n:                                             ; preds = %.critedge.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %.critedge.i ] ; 2 uses
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %indvars.iv.i
  %i.dt = load atomic volatile i64, ptr %i.ds monotonic, align 8 ; 3 uses
  %i.du = and i64 %i.dt, 3
  %i.dv = icmp eq i64 %i.du, 3
  %i.dw = and i64 %i.dt, 4294967295
  %i.dx = icmp ne i64 %i.dw, 3
  %i.dy = and i1 %i.dv, %i.dx
  br i1 %i.dy, label %bb.o, label %.critedge.i

bb.o:                                             ; preds = %bb.n
  %i.dz = and i64 %i.dt, -3                       ; 2 uses
  %i.ea = add nsw i64 %i.dz, -1
  %i.eb = inttoptr i64 %i.ea to ptr
  %i.ec = load atomic volatile i64, ptr %i.eb monotonic, align 8
  %i.ed = add i64 %i.ec, -1
  %i.ee = inttoptr i64 %i.ed to ptr
  %i.ef = load atomic volatile i64, ptr %i.ee monotonic, align 8
  %i.eg = add i64 %i.ef, 31
  %i.eh = inttoptr i64 %i.eg to ptr
  %i.ei = load i64, ptr %i.eh, align 8            ; 2 uses
  %i.ej = load ptr, ptr %i.dr, align 8
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 112
  %i.el = load i64, ptr %i.ek, align 8
  %.not39.i = icmp eq i64 %i.ei, %i.el
  br i1 %.not39.i, label %bb.p, label %_ZNOSt8optionalIN2v88internal6TaggedINS1_13NativeContextEEEE5valueEv.exit.i

bb.p:                                             ; preds = %bb.o
  call void @_ZSt27__throw_bad_optional_accessv() #15
  unreachable

_ZNOSt8optionalIN2v88internal6TaggedINS1_13NativeContextEEEE5valueEv.exit.i: ; preds = %bb.o
  %i.em = icmp eq i64 %i.ei, %i.cz
  br i1 %i.em, label %_ZN2v88internal12_GLOBAL__N_117SearchLiteralsMapENS0_6TaggedINS0_21CompilationCacheTableEEENS0_13InternalIndexENS2_INS0_7ContextEEE.exit, label %.critedge.i

.critedge.i:                                      ; preds = %_ZNOSt8optionalIN2v88internal6TaggedINS1_13NativeContextEEEE5valueEv.exit.i, %bb.n
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.dn
  br i1 %exitcond.not.i, label %_ZN2v88internal12_GLOBAL__N_117SearchLiteralsMapENS0_6TaggedINS0_21CompilationCacheTableEEENS0_13InternalIndexENS2_INS0_7ContextEEE.exit, label %bb.n, !llvm.loop !17

_ZN2v88internal12_GLOBAL__N_117SearchLiteralsMapENS0_6TaggedINS0_21CompilationCacheTableEEENS0_13InternalIndexENS2_INS0_7ContextEEE.exit: ; preds = %_ZNOSt8optionalIN2v88internal6TaggedINS1_13NativeContextEEEE5valueEv.exit.i, %.critedge.i
  %.sroa.025.0.i = phi i64 [ %i.dz, %_ZNOSt8optionalIN2v88internal6TaggedINS1_13NativeContextEEEE5valueEv.exit.i ], [ 0, %.critedge.i ] ; 2 uses
  %9 = icmp eq i64 %i.cq, 0
  br i1 %9, label %10, label %_ZN2v88internal12_GLOBAL__N_117SearchLiteralsMapENS0_6TaggedINS0_21CompilationCacheTableEEENS0_13InternalIndexENS2_INS0_7ContextEEE.exit.thread

_ZN2v88internal12_GLOBAL__N_117SearchLiteralsMapENS0_6TaggedINS0_21CompilationCacheTableEEENS0_13InternalIndexENS2_INS0_7ContextEEE.exit.thread: ; preds = %bb.m, %bb.l, %_ZN2v88internal12_GLOBAL__N_117SearchLiteralsMapENS0_6TaggedINS0_21CompilationCacheTableEEENS0_13InternalIndexENS2_INS0_7ContextEEE.exit
  %.sroa.025.0.i101 = phi i64 [ %.sroa.025.0.i, %_ZN2v88internal12_GLOBAL__N_117SearchLiteralsMapENS0_6TaggedINS0_21CompilationCacheTableEEENS0_13InternalIndexENS2_INS0_7ContextEEE.exit ], [ 0, %bb.l ], [ 0, %bb.m ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @_ZN2v88internal15IsCompiledScopeC2ENS0_6TaggedINS0_18SharedFunctionInfoEEEPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(9) %7, i64 %i.cq, ptr noundef %i.b)
  %.fca.0.load.i.i = load ptr, ptr %7, align 8
  %.fca.1.gep.i.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.fca.1.load.i.i = load i8, ptr %.fca.1.gep.i.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %_ZN2v88internal12InfoCellPairC2EPNS0_7IsolateENS0_6TaggedINS0_18SharedFunctionInfoEEENS4_INS0_10JSFunctionEEE.exit

10:                                               ; preds = %_ZN2v88internal12_GLOBAL__N_117SearchLiteralsMapENS0_6TaggedINS0_21CompilationCacheTableEEENS0_13InternalIndexENS2_INS0_7ContextEEE.exit
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %11, align 8
  br label %_ZN2v88internal12InfoCellPairC2EPNS0_7IsolateENS0_6TaggedINS0_18SharedFunctionInfoEEENS4_INS0_10JSFunctionEEE.exit

_ZN2v88internal12InfoCellPairC2EPNS0_7IsolateENS0_6TaggedINS0_18SharedFunctionInfoEEENS4_INS0_10JSFunctionEEE.exit: ; preds = %_ZN2v88internal12_GLOBAL__N_117SearchLiteralsMapENS0_6TaggedINS0_21CompilationCacheTableEEENS0_13InternalIndexENS2_INS0_7ContextEEE.exit.thread, %10
  %.sroa.025.0.i100 = phi i64 [ %.sroa.025.0.i, %10 ], [ %.sroa.025.0.i101, %_ZN2v88internal12_GLOBAL__N_117SearchLiteralsMapENS0_6TaggedINS0_21CompilationCacheTableEEENS0_13InternalIndexENS2_INS0_7ContextEEE.exit.thread ]
  %.fca.0.load.i.sink.i = phi ptr [ null, %10 ], [ %.fca.0.load.i.i, %_ZN2v88internal12_GLOBAL__N_117SearchLiteralsMapENS0_6TaggedINS0_21CompilationCacheTableEEENS0_13InternalIndexENS2_INS0_7ContextEEE.exit.thread ]
  %.fca.1.load.i.sink.i = phi i8 [ 0, %10 ], [ %.fca.1.load.i.i, %_ZN2v88internal12_GLOBAL__N_117SearchLiteralsMapENS0_6TaggedINS0_21CompilationCacheTableEEENS0_13InternalIndexENS2_INS0_7ContextEEE.exit.thread ]
  store ptr %.fca.0.load.i.sink.i, ptr %0, align 8
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.fca.1.load.i.sink.i, ptr %i.en, align 8
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.cq, ptr %i.eo, align 8
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.025.0.i100, ptr %i.ep, align 8
  br label %bb.q

bb.q:                                             ; preds = %_ZN2v88internal20IsSharedFunctionInfoENS0_6TaggedINS0_6ObjectEEE.exit.thread, %_ZN2v88internal12InfoCellPairC2EPNS0_7IsolateENS0_6TaggedINS0_18SharedFunctionInfoEEENS4_INS0_10JSFunctionEEE.exit, %_ZN2v88internal12IsFixedArrayENS0_6TaggedINS0_6ObjectEEE.exit.thread, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN2v88internal12_GLOBAL__N_112EvalCacheKeyC2ENS0_12DirectHandleINS0_6StringEEENS3_INS0_18SharedFunctionInfoEEENS0_12LanguageModeEi(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(40) initializes((0, 12), (16, 33), (36, 40)) %0, ptr %1, ptr %2, i1 noundef zeroext %3, i32 noundef %4) unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.462", align 8 ; 4 uses
  %i.a = load i64, ptr %1, align 8
  %i.b = load i64, ptr %2, align 8                ; 2 uses
  %i.c = add i64 %i.a, -1
  %i.d = inttoptr i64 %i.c to ptr                 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load atomic i32, ptr %i.e acquire, align 4 ; 4 uses
  %i.g = and i32 %i.f, 1
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %_ZN2v88internal4Name10EnsureHashEv.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = and i32 %i.f, 3
  %i.j = icmp eq i32 %i.i, 1
  br i1 %i.j, label %bb.c, label %bb.d, !prof !8

bb.c:                                             ; preds = %bb.b
  %i.k = tail call noundef i32 @_ZNK2v88internal4Name29GetRawHashFromForwardingTableEj(ptr noundef nonnull align 4 dereferenceable(12) %i.d, i32 noundef %i.f)
  br label %_ZN2v88internal4Name10EnsureHashEv.exit.i

bb.d:                                             ; preds = %bb.b
  %i.l = tail call noundef i32 @_ZN2v88internal6String20ComputeAndSetRawHashEv(ptr noundef nonnull align 4 dereferenceable(16) %i.d) #14
  br label %_ZN2v88internal4Name10EnsureHashEv.exit.i

_ZN2v88internal4Name10EnsureHashEv.exit.i:        ; preds = %bb.d, %bb.c, %bb.a
  %.0.i.i.i = phi i32 [ %i.l, %bb.d ], [ %i.k, %bb.c ], [ %i.f, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  store i64 %i.b, ptr %5, align 8
  %i.m = call noundef zeroext i1 @_ZNK2v88internal18SharedFunctionInfo13HasSourceCodeEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  br i1 %i.m, label %bb.e, label %_ZN2v88internal21CompilationCacheShape8EvalHashENS0_6TaggedINS0_6StringEEENS2_INS0_18SharedFunctionInfoEEENS0_12LanguageModeEi.exit

bb.e:                                             ; preds = %_ZN2v88internal4Name10EnsureHashEv.exit.i
  %i.n = add i64 %i.b, 39
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = load atomic volatile i64, ptr %i.o acquire, align 8
  %i.q = add i64 %i.p, 7
  %i.r = inttoptr i64 %i.q to ptr
  %i.s = load i64, ptr %i.r, align 8
  %i.t = add i64 %i.s, -1
  %i.u = inttoptr i64 %i.t to ptr                 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load atomic i32, ptr %i.v acquire, align 4 ; 4 uses
  %i.x = and i32 %i.w, 1
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %_ZN2v88internal4Name10EnsureHashEv.exit10.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = and i32 %i.w, 3
  %i.aa = icmp eq i32 %i.z, 1
  br i1 %i.aa, label %bb.g, label %bb.h, !prof !8

bb.g:                                             ; preds = %bb.f
  %i.ab = call noundef i32 @_ZNK2v88internal4Name29GetRawHashFromForwardingTableEj(ptr noundef nonnull align 4 dereferenceable(12) %i.u, i32 noundef %i.w)
  br label %_ZN2v88internal4Name10EnsureHashEv.exit10.i

bb.h:                                             ; preds = %bb.f
  %i.ac = call noundef i32 @_ZN2v88internal6String20ComputeAndSetRawHashEv(ptr noundef nonnull align 4 dereferenceable(16) %i.u) #14
  br label %_ZN2v88internal4Name10EnsureHashEv.exit10.i

_ZN2v88internal4Name10EnsureHashEv.exit10.i:      ; preds = %bb.h, %bb.g, %bb.e
  %.0.i.i9.i = phi i32 [ %i.ac, %bb.h ], [ %i.ab, %bb.g ], [ %i.w, %bb.e ]
  %i.ad = xor i32 %.0.i.i9.i, %.0.i.i.i
  br label %_ZN2v88internal21CompilationCacheShape8EvalHashENS0_6TaggedINS0_6StringEEENS2_INS0_18SharedFunctionInfoEEENS0_12LanguageModeEi.exit

_ZN2v88internal21CompilationCacheShape8EvalHashENS0_6TaggedINS0_6StringEEENS2_INS0_18SharedFunctionInfoEEENS0_12LanguageModeEi.exit: ; preds = %_ZN2v88internal4Name10EnsureHashEv.exit.i, %_ZN2v88internal4Name10EnsureHashEv.exit10.i
  %.0.in.i = phi i32 [ %i.ad, %_ZN2v88internal4Name10EnsureHashEv.exit10.i ], [ %.0.i.i.i, %_ZN2v88internal4Name10EnsureHashEv.exit.i ]
  %i.ae = zext i1 %3 to i8
  %.0.i = lshr i32 %.0.in.i, 2                    ; 2 uses
  %i.af = xor i32 %.0.i, 32768
  %spec.select.i = select i1 %3, i32 %i.af, i32 %.0.i
  %i.ag = add i32 %spec.select.i, %4
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.ag, ptr %i.ah, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2v88internal12_GLOBAL__N_112EvalCacheKeyE, i64 16), ptr %0, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aj = ptrtoint ptr %1 to i64
  store i64 %i.aj, ptr %i.ai, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.al = ptrtoint ptr %2 to i64
  store i64 %i.al, ptr %i.ak, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %i.ae, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %4, ptr %i.an, align 4
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden ptr @_ZN2v88internal21CompilationCacheTable12LookupRegExpENS0_12DirectHandleINS0_6StringEEENS_4base5FlagsINS0_8JSRegExp4FlagEiiEE(ptr nofree noundef nonnull align 4 captures(address) dereferenceable(16) %0, ptr %1, i32 %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.v8::internal::(anonymous namespace)::RegExpKey", align 8 ; 9 uses
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN2v88internal18g_current_isolate_E)
  %i.b = load ptr, ptr %i.a, align 8              ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  %i.c = load i64, ptr %1, align 8
  %i.d = add i64 %i.c, -1
  %i.e = inttoptr i64 %i.d to ptr                 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load atomic i32, ptr %i.f acquire, align 4 ; 4 uses
  %i.h = and i32 %i.g, 1
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %_ZN2v88internal12_GLOBAL__N_19RegExpKeyC2EPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEENS_4base5FlagsINS0_8JSRegExp4FlagEiiEE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = and i32 %i.g, 3
  %i.k = icmp eq i32 %i.j, 1
  br i1 %i.k, label %bb.c, label %bb.d, !prof !8

bb.c:                                             ; preds = %bb.b
  %i.l = tail call noundef i32 @_ZNK2v88internal4Name29GetRawHashFromForwardingTableEj(ptr noundef nonnull align 4 dereferenceable(12) %i.e, i32 noundef %i.g)
  br label %_ZN2v88internal12_GLOBAL__N_19RegExpKeyC2EPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEENS_4base5FlagsINS0_8JSRegExp4FlagEiiEE.exit

bb.d:                                             ; preds = %bb.b
  %i.m = tail call noundef i32 @_ZN2v88internal6String20ComputeAndSetRawHashEv(ptr noundef nonnull align 4 dereferenceable(16) %i.e) #14
  br label %_ZN2v88internal12_GLOBAL__N_19RegExpKeyC2EPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEENS_4base5FlagsINS0_8JSRegExp4FlagEiiEE.exit

_ZN2v88internal12_GLOBAL__N_19RegExpKeyC2EPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEENS_4base5FlagsINS0_8JSRegExp4FlagEiiEE.exit: ; preds = %bb.a, %bb.c, %bb.d
  %.0.i.i.i.i = phi i32 [ %i.m, %bb.d ], [ %i.l, %bb.c ], [ %i.g, %bb.a ]
  %i.n = lshr i32 %.0.i.i.i.i, 2
  %i.o = add i32 %i.n, %2                         ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.o, ptr %i.p, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2v88internal12_GLOBAL__N_19RegExpKeyE, i64 16), ptr %3, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.b, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.s = ptrtoint ptr %1 to i64
  store i64 %i.s, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i32 %2, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 648 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load atomic volatile i64, ptr %i.v monotonic, align 8
  %i.x = lshr i64 %i.w, 32
  %i.y = trunc nuw i64 %i.x to i32
  %i.z = load i64, ptr %i.u, align 8              ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 656
  %i.ab = load i64, ptr %i.aa, align 8
  %i.ac = add i32 %i.y, -1                        ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.sroa.06.0.in33.i.i = and i32 %i.ac, %i.o      ; 2 uses
  %.sroa.06.034.i.i = zext i32 %.sroa.06.0.in33.i.i to i64 ; 2 uses
  %i.ae = mul i64 %.sroa.06.034.i.i, 12884901888
  %sext.i35.i.i = add i64 %i.ae, 12884901888
  %i.af = ashr exact i64 %sext.i35.i.i, 29
  %i.ag = getelementptr inbounds i8, ptr %i.ad, i64 %i.af
  %i.ah = load atomic volatile i64, ptr %i.ag monotonic, align 8 ; 2 uses
  %i.ai = icmp eq i64 %i.ah, %i.z
  br i1 %i.ai, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN2v88internal12_GLOBAL__N_19RegExpKeyC2EPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEENS_4base5FlagsINS0_8JSRegExp4FlagEiiEE.exit, %bb.f
  %i.aj = phi i64 [ %i.at, %bb.f ], [ %i.ah, %_ZN2v88internal12_GLOBAL__N_19RegExpKeyC2EPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEENS_4base5FlagsINS0_8JSRegExp4FlagEiiEE.exit ] ; 2 uses
  %.sroa.06.038.i.i = phi i64 [ %.sroa.06.0.i.i, %bb.f ], [ %.sroa.06.034.i.i, %_ZN2v88internal12_GLOBAL__N_19RegExpKeyC2EPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEENS_4base5FlagsINS0_8JSRegExp4FlagEiiEE.exit ]
  %.sroa.06.0.in37.i.i = phi i32 [ %.sroa.06.0.in.i.i, %bb.f ], [ %.sroa.06.0.in33.i.i, %_ZN2v88internal12_GLOBAL__N_19RegExpKeyC2EPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEENS_4base5FlagsINS0_8JSRegExp4FlagEiiEE.exit ]
  %.036.i.i = phi i32 [ %i.ao, %bb.f ], [ 1, %_ZN2v88internal12_GLOBAL__N_19RegExpKeyC2EPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEENS_4base5FlagsINS0_8JSRegExp4FlagEiiEE.exit ] ; 2 uses
  %i.ak = icmp eq i64 %i.aj, %i.ab
  br i1 %i.ak, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.al = load ptr, ptr %3, align 8
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = call noundef zeroext i1 %i.am(ptr noundef nonnull align 8 dereferenceable(12) %3, i64 %i.aj) #14, !inline_history !0
  br i1 %i.an, label %_ZN2v88internal9HashTableINS0_21CompilationCacheTableENS0_21CompilationCacheShapeEE9FindEntryINS0_7IsolateEEENS0_13InternalIndexEPT_PNS0_12HashTableKeyE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph.i.i
  %i.ao = add i32 %.036.i.i, 1
  %i.ap = add i32 %.036.i.i, %.sroa.06.0.in37.i.i
  %.sroa.06.0.in.i.i = and i32 %i.ap, %i.ac       ; 2 uses
  %.sroa.06.0.i.i = zext i32 %.sroa.06.0.in.i.i to i64 ; 2 uses
  %i.aq = mul i64 %.sroa.06.0.i.i, 12884901888
  %sext.i.i.i = add i64 %i.aq, 12884901888
  %i.ar = ashr exact i64 %sext.i.i.i, 29
  %i.as = getelementptr inbounds i8, ptr %i.ad, i64 %i.ar
  %i.at = load atomic volatile i64, ptr %i.as monotonic, align 8 ; 2 uses
  %i.au = icmp eq i64 %i.at, %i.z
  br i1 %i.au, label %.loopexit, label %.lr.ph.i.i, !llvm.loop !1

_ZN2v88internal9HashTableINS0_21CompilationCacheTableENS0_21CompilationCacheShapeEE9FindEntryINS0_7IsolateEEENS0_13InternalIndexEPT_PNS0_12HashTableKeyE.exit: ; preds = %bb.e
  %i.av = mul i64 %.sroa.06.038.i.i, 12884901888
  %sext.i = add i64 %i.av, 17179869184
  %i.aw = ashr exact i64 %sext.i, 29
  %i.ax = getelementptr inbounds i8, ptr %i.ad, i64 %i.aw
  %i.ay = load atomic volatile i64, ptr %i.ax monotonic, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 560 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8            ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 568
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = icmp eq ptr %i.ba, %i.bc
end_hunk_0
