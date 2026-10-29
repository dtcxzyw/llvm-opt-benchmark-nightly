Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/node_worker?download=true
inline.NumInlined: 5296
inline.NumDeleted: 2508
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumUnrolled: 15
begin_hunk_0_@"_ZN4node13CallbackQueueIvJPNS_11EnvironmentEEE12CallbackImplIZZNS_6worker6Worker17GetHeapStatisticsERKN2v820FunctionCallbackInfoINS7_5ValueEEEEN3$_0clES2_EUlS2_E_ED0Ev":bb.a
_ZNKSt14default_deleteIN4node17BaseObjectPtrImplINS0_6worker25WorkerHeapStatisticsTakerELb0EEEEclEPS4_.exit.i.i.i: ; preds = %bb.c, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 8) #31
  br label %"_ZZZN4node6worker6Worker17GetHeapStatisticsERKN2v820FunctionCallbackInfoINS2_5ValueEEEEN3$_0clEPNS_11EnvironmentEENUlSA_E_D2Ev.exit.i"

"_ZZZN4node6worker6Worker17GetHeapStatisticsERKN2v820FunctionCallbackInfoINS2_5ValueEEEEN3$_0clEPNS_11EnvironmentEENUlSA_E_D2Ev.exit.i": ; preds = %_ZNKSt14default_deleteIN4node17BaseObjectPtrImplINS0_6worker25WorkerHeapStatisticsTakerELb0EEEEclEPS4_.exit.i.i.i, %_ZNSt10unique_ptrIN2v814HeapStatisticsESt14default_deleteIS1_EED2Ev.exit.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4node13CallbackQueueIvJPNS_11EnvironmentEEE8CallbackE, i64 16), ptr %0, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8              ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i1.i, label %"_ZN4node13CallbackQueueIvJPNS_11EnvironmentEEE12CallbackImplIZZNS_6worker6Worker17GetHeapStatisticsERKN2v820FunctionCallbackInfoINS7_5ValueEEEEN3$_0clES2_EUlS2_E_ED2Ev.exit", label %_ZNKSt14default_deleteIN4node13CallbackQueueIvJPNS0_11EnvironmentEEE8CallbackEEclEPS5_.exit.i.i.i

_ZNKSt14default_deleteIN4node13CallbackQueueIvJPNS0_11EnvironmentEEE8CallbackEEclEPS5_.exit.i.i.i: ; preds = %"_ZZZN4node6worker6Worker17GetHeapStatisticsERKN2v820FunctionCallbackInfoINS2_5ValueEEEEN3$_0clEPNS_11EnvironmentEENUlSA_E_D2Ev.exit.i"
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.g) #28, !inline_history !496
  br label %"_ZN4node13CallbackQueueIvJPNS_11EnvironmentEEE12CallbackImplIZZNS_6worker6Worker17GetHeapStatisticsERKN2v820FunctionCallbackInfoINS7_5ValueEEEEN3$_0clES2_EUlS2_E_ED2Ev.exit"

"_ZN4node13CallbackQueueIvJPNS_11EnvironmentEEE12CallbackImplIZZNS_6worker6Worker17GetHeapStatisticsERKN2v820FunctionCallbackInfoINS7_5ValueEEEEN3$_0clES2_EUlS2_E_ED2Ev.exit": ; preds = %"_ZZZN4node6worker6Worker17GetHeapStatisticsERKN2v820FunctionCallbackInfoINS2_5ValueEEEEN3$_0clEPNS_11EnvironmentEENUlSA_E_D2Ev.exit.i", %_ZNKSt14default_deleteIN4node13CallbackQueueIvJPNS0_11EnvironmentEEE8CallbackEEclEPS5_.exit.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #31
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZN4node13CallbackQueueIvJPNS_11EnvironmentEEE12CallbackImplIZZNS_6worker6Worker17GetHeapStatisticsERKN2v820FunctionCallbackInfoINS7_5ValueEEEEN3$_0clES2_EUlS2_E_E4CallES2_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.v8::HandleScope", align 8   ; 7 uses
  %3 = alloca %"class.node::AsyncHooks::DefaultTriggerAsyncIdScope", align 8 ; 4 uses
  %4 = alloca [15 x %"class.std::basic_string_view"], align 16 ; 4 uses
  %5 = alloca [15 x %"class.v8::MaybeLocal.462"], align 16 ; 19 uses
  %6 = alloca [1 x %"class.v8::Local.434"], align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.c = load ptr, ptr %i.b, align 8              ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = add i64 %i.d, 560
  %i.f = inttoptr i64 %i.e to ptr                 ; 3 uses
  store ptr %i.c, ptr %2, align 8
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store ptr %i.g, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.j, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8
  %i.n = add nsw i32 %i.m, 1
  store i32 %i.n, ptr %i.l, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 3008 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 192
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.q, align 8 ; 2 uses
  tail call void @_ZN2v87Context5EnterEv(ptr noundef nonnull align 1 dereferenceable(1) %.sroa.0.0.copyload.i.i.i.i) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.r = load ptr, ptr %i.a, align 8
  %i.s = load ptr, ptr %i.r, align 8
  call void @_ZN4node10AsyncHooks26DefaultTriggerAsyncIdScopeC1EPNS_9AsyncWrapE(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %i.s) #28
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 216 ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 3056
  %i.w = load ptr, ptr %i.v, align 8              ; 2 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.b, label %_ZN2v87Boolean3NewEPNS_7IsolateEb.exit.i

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(240) %4, ptr noundef nonnull align 8 dereferenceable(240) @constinit.278, i64 240, i1 false)
  %i.y = call ptr @_ZN2v818DictionaryTemplate3NewEPNS_7IsolateENS_10MemorySpanIKSt17basic_string_viewIcSt11char_traitsIcEEEE(ptr noundef %i.c, ptr nonnull %4, i64 15) #28 ; 2 uses
  %i.z = load ptr, ptr %i.t, align 8              ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 3056 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %_ZN4node11Environment28set_heap_statistics_templateEN2v85LocalINS1_18DictionaryTemplateEEE.exit.i, label %bb.c, !prof !40

bb.c:                                             ; preds = %bb.b
  call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node11IsolateData28set_heap_statistics_templateEN2v85LocalINS1_18DictionaryTemplateEEEE20error_and_abort_args) #28
  call void @abort() #29
  unreachable

_ZN4node11Environment28set_heap_statistics_templateEN2v85LocalINS1_18DictionaryTemplateEEE.exit.i: ; preds = %bb.b
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 4648
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = call noundef ptr @_ZN2v812api_internal10EternalizeEPNS_7IsolateEPNS_5ValueE(ptr noundef %i.ae, ptr noundef %i.y) #28
  store ptr %i.af, ptr %i.aa, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %_ZN2v87Boolean3NewEPNS_7IsolateEb.exit.i

_ZN2v87Boolean3NewEPNS_7IsolateEb.exit.i:         ; preds = %_ZN4node11Environment28set_heap_statistics_templateEN2v85LocalINS1_18DictionaryTemplateEEE.exit.i, %bb.a
  %.sroa.052.0.i = phi ptr [ %i.y, %_ZN4node11Environment28set_heap_statistics_templateEN2v85LocalINS1_18DictionaryTemplateEEE.exit.i ], [ %i.w, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 13 uses
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = load i64, ptr %i.ah, align 8
  %i.aj = uitofp i64 %i.ai to double
  %i.ak = call ptr @_ZN2v86Number3NewEPNS_7IsolateEd(ptr noundef %i.c, double noundef %i.aj) #28
  %i.al = ptrtoint ptr %i.ak to i64
  store i64 %i.al, ptr %5, align 16
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.an = load ptr, ptr %i.ag, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load i64, ptr %i.ao, align 8
  %i.aq = uitofp i64 %i.ap to double
  %i.ar = call ptr @_ZN2v86Number3NewEPNS_7IsolateEd(ptr noundef %i.c, double noundef %i.aq) #28
  %i.as = ptrtoint ptr %i.ar to i64
  store i64 %i.as, ptr %i.am, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.au = load ptr, ptr %i.ag, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.aw = load i64, ptr %i.av, align 8
  %i.ax = uitofp i64 %i.aw to double
  %i.ay = call ptr @_ZN2v86Number3NewEPNS_7IsolateEd(ptr noundef %i.c, double noundef %i.ax) #28
  %i.az = ptrtoint ptr %i.ay to i64
  store i64 %i.az, ptr %i.at, align 16
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.bb = load ptr, ptr %i.ag, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.bd = load i64, ptr %i.bc, align 8
  %i.be = uitofp i64 %i.bd to double
  %i.bf = call ptr @_ZN2v86Number3NewEPNS_7IsolateEd(ptr noundef %i.c, double noundef %i.be) #28 ; 2 uses
  %i.bg = ptrtoint ptr %i.bf to i64
  store i64 %i.bg, ptr %i.ba, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.bi = load ptr, ptr %i.ag, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  %i.bk = load i64, ptr %i.bj, align 8
  %i.bl = uitofp i64 %i.bk to double
  %i.bm = call ptr @_ZN2v86Number3NewEPNS_7IsolateEd(ptr noundef %i.c, double noundef %i.bl) #28 ; 2 uses
  %i.bn = ptrtoint ptr %i.bm to i64
  store i64 %i.bn, ptr %i.bh, align 16
  %i.bo = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.bp = load ptr, ptr %i.ag, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 40
  %i.br = load i64, ptr %i.bq, align 8
  %i.bs = uitofp i64 %i.br to double
  %i.bt = call ptr @_ZN2v86Number3NewEPNS_7IsolateEd(ptr noundef %i.c, double noundef %i.bs) #28 ; 2 uses
  %i.bu = ptrtoint ptr %i.bt to i64
  store i64 %i.bu, ptr %i.bo, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.bw = load ptr, ptr %i.ag, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 48
  %i.by = load i64, ptr %i.bx, align 8
  %i.bz = uitofp i64 %i.by to double
  %i.ca = call ptr @_ZN2v86Number3NewEPNS_7IsolateEd(ptr noundef %i.c, double noundef %i.bz) #28 ; 2 uses
  %i.cb = ptrtoint ptr %i.ca to i64
  store i64 %i.cb, ptr %i.bv, align 16
  %i.cc = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.cd = load ptr, ptr %i.ag, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 64
  %i.cf = load i64, ptr %i.ce, align 8
  %i.cg = uitofp i64 %i.cf to double
  %i.ch = call ptr @_ZN2v86Number3NewEPNS_7IsolateEd(ptr noundef %i.c, double noundef %i.cg) #28 ; 2 uses
  %i.ci = ptrtoint ptr %i.ch to i64
  store i64 %i.ci, ptr %i.cc, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.ck = load ptr, ptr %i.ag, align 8            ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 72
  %i.cm = load i8, ptr %i.cl, align 8, !range !39, !noundef !41
  %.not.i = icmp eq i8 %i.cm, 0
  %.sroa.0.0.i.v.v.i = select i1 %.not.i, i64 680, i64 672
  %.sroa.0.0.i.i = getelementptr i8, ptr %i.c, i64 %.sroa.0.0.i.v.v.i ; 2 uses
  %i.cn = ptrtoint ptr %.sroa.0.0.i.i to i64
  store i64 %i.cn, ptr %i.cj, align 16
  %i.co = getelementptr inbounds nuw i8, ptr %5, i64 72
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ck, i64 80
  %i.cq = load i64, ptr %i.cp, align 8
  %i.cr = uitofp i64 %i.cq to double
  %i.cs = call ptr @_ZN2v86Number3NewEPNS_7IsolateEd(ptr noundef %i.c, double noundef %i.cr) #28 ; 2 uses
  %i.ct = ptrtoint ptr %i.cs to i64
  store i64 %i.ct, ptr %i.co, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.cv = load ptr, ptr %i.ag, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 88
  %i.cx = load i64, ptr %i.cw, align 8
  %i.cy = uitofp i64 %i.cx to double
  %i.cz = call ptr @_ZN2v86Number3NewEPNS_7IsolateEd(ptr noundef %i.c, double noundef %i.cy) #28 ; 2 uses
  %i.da = ptrtoint ptr %i.cz to i64
  store i64 %i.da, ptr %i.cu, align 16
  %i.db = getelementptr inbounds nuw i8, ptr %5, i64 88
  %i.dc = load ptr, ptr %i.ag, align 8
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 96
  %i.de = load i64, ptr %i.dd, align 8
  %i.df = uitofp i64 %i.de to double
  %i.dg = call ptr @_ZN2v86Number3NewEPNS_7IsolateEd(ptr noundef %i.c, double noundef %i.df) #28 ; 2 uses
  %i.dh = ptrtoint ptr %i.dg to i64
  store i64 %i.dh, ptr %i.db, align 8
  %i.di = getelementptr inbounds nuw i8, ptr %5, i64 96
  %i.dj = load ptr, ptr %i.ag, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 104
  %i.dl = load i64, ptr %i.dk, align 8
  %i.dm = uitofp i64 %i.dl to double
  %i.dn = call ptr @_ZN2v86Number3NewEPNS_7IsolateEd(ptr noundef %i.c, double noundef %i.dm) #28 ; 2 uses
  %i.do = ptrtoint ptr %i.dn to i64
  store i64 %i.do, ptr %i.di, align 16
  %i.dp = getelementptr inbounds nuw i8, ptr %5, i64 104
  %i.dq = load ptr, ptr %i.ag, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 56
  %i.ds = load i64, ptr %i.dr, align 8
  %i.dt = uitofp i64 %i.ds to double
  %i.du = call ptr @_ZN2v86Number3NewEPNS_7IsolateEd(ptr noundef %i.c, double noundef %i.dt) #28 ; 2 uses
  %i.dv = ptrtoint ptr %i.du to i64
  store i64 %i.dv, ptr %i.dp, align 8
  %i.dw = getelementptr inbounds nuw i8, ptr %5, i64 112
  %i.dx = call noundef i64 @_ZN2v87Isolate22GetTotalAllocatedBytesEv(ptr noundef nonnull align 1 dereferenceable(1) %i.c) #28
  %i.dy = uitofp i64 %i.dx to double
  %i.dz = call ptr @_ZN2v86Number3NewEPNS_7IsolateEd(ptr noundef nonnull %i.c, double noundef %i.dy) #28 ; 2 uses
  %i.ea = ptrtoint ptr %i.dz to i64
  store i64 %i.ea, ptr %i.dw, align 16
  %i.eb = load ptr, ptr %i.at, align 16
  %i.ec = load <2 x ptr>, ptr %5, align 16
  %i.ed = shufflevector <2 x ptr> %i.ec, <2 x ptr> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ee = insertelement <8 x ptr> %i.ed, ptr %i.eb, i64 2
  %i.ef = insertelement <8 x ptr> %i.ee, ptr %i.bf, i64 3
  %i.eg = insertelement <8 x ptr> %i.ef, ptr %i.bm, i64 4
  %i.eh = insertelement <8 x ptr> %i.eg, ptr %i.bt, i64 5
  %i.ei = insertelement <8 x ptr> %i.eh, ptr %i.ca, i64 6
  %i.ej = insertelement <8 x ptr> %i.ei, ptr %i.ch, i64 7
  %.fr = freeze <8 x ptr> %i.ej
  %i.ek = icmp eq <8 x ptr> %.fr, splat (ptr null) ; 2 uses
  %i.el = insertelement <4 x ptr> poison, ptr %.sroa.0.0.i.i, i64 0
  %i.em = insertelement <4 x ptr> %i.el, ptr %i.cs, i64 1
  %i.en = insertelement <4 x ptr> %i.em, ptr %i.cz, i64 2
  %i.eo = insertelement <4 x ptr> %i.en, ptr %i.dg, i64 3
  %.fr8 = freeze <4 x ptr> %i.eo
  %i.ep = icmp eq <4 x ptr> %.fr8, splat (ptr null)
  %i.eq = icmp eq ptr %i.dn, null
  %i.er = icmp eq ptr %i.du, null
  %i.es = icmp eq ptr %i.dz, null
  %i.et = shufflevector <8 x i1> %i.ek, <8 x i1> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %rdx.op = or <4 x i1> %i.et, %i.ep
  %i.eu = shufflevector <4 x i1> %rdx.op, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ev = shufflevector <8 x i1> %i.eu, <8 x i1> %i.ek, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.ew = bitcast <8 x i1> %i.ev to i8
  %i.ex = icmp ne i8 %i.ew, 0
  %op.rdx = select i1 %i.ex, i1 true, i1 %i.eq
  %7 = select i1 %op.rdx, i1 true, i1 %i.er
  %op.rdx7 = select i1 %7, i1 true, i1 %i.es
  br i1 %op.rdx7, label %_ZN4node30NewDictionaryInstanceNullProtoEN2v85LocalINS0_7ContextEEENS1_INS0_18DictionaryTemplateEEENS0_10MemorySpanINS0_10MaybeLocalINS0_5ValueEEEEE.exit.thread.i, label %_ZN4node30NewDictionaryInstanceNullProtoEN2v85LocalINS0_7ContextEEENS1_INS0_18DictionaryTemplateEEENS0_10MemorySpanINS0_10MaybeLocalINS0_5ValueEEEEE.exit.i

_ZN4node30NewDictionaryInstanceNullProtoEN2v85LocalINS0_7ContextEEENS1_INS0_18DictionaryTemplateEEENS0_10MemorySpanINS0_10MaybeLocalINS0_5ValueEEEEE.exit.i: ; preds = %_ZN2v87Boolean3NewEPNS_7IsolateEb.exit.i
  %i.ey = load ptr, ptr %i.o, align 8
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 192
  %.sroa.0.0.copyload.i.i.i47.i = load ptr, ptr %i.ez, align 8 ; 2 uses
  %i.fa = call ptr @_ZN2v818DictionaryTemplate11NewInstanceENS_5LocalINS_7ContextEEENS_10MemorySpanINS_10MaybeLocalINS_5ValueEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %.sroa.052.0.i, ptr %.sroa.0.0.copyload.i.i.i47.i, ptr nonnull %5, i64 15) #28 ; 2 uses
  %i.fb = call noundef ptr @_ZN2v87Isolate10GetCurrentEv() #28
  %i.fc = ptrtoint ptr %i.fb to i64
  %i.fd = add i64 %i.fc, 664
  %i.fe = inttoptr i64 %i.fd to ptr
  %i.ff = call i16 @_ZN2v86Object14SetPrototypeV2ENS_5LocalINS_7ContextEEENS1_INS_5ValueEEE(ptr noundef nonnull align 1 dereferenceable(1) %i.fa, ptr %.sroa.0.0.copyload.i.i.i47.i, ptr %i.fe) #28
  %i.fg = trunc i16 %i.ff to i1
  br i1 %i.fg, label %bb.d, label %_ZN4node30NewDictionaryInstanceNullProtoEN2v85LocalINS0_7ContextEEENS1_INS0_18DictionaryTemplateEEENS0_10MemorySpanINS0_10MaybeLocalINS0_5ValueEEEEE.exit.thread.i

bb.d:                                             ; preds = %_ZN4node30NewDictionaryInstanceNullProtoEN2v85LocalINS0_7ContextEEENS1_INS0_18DictionaryTemplateEEENS0_10MemorySpanINS0_10MaybeLocalINS0_5ValueEEEEE.exit.i
  %i.fh = ptrtoint ptr %i.fa to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  store i64 %i.fh, ptr %6, align 8
  %i.fi = load ptr, ptr %i.a, align 8
  %i.fj = load ptr, ptr %i.fi, align 8            ; 3 uses
  %i.fk = load ptr, ptr %i.t, align 8
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 1928
  %i.fm = load ptr, ptr %i.fl, align 8
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fj, i64 16 ; 2 uses
  %i.fo = load ptr, ptr %i.fn, align 8
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 176
  %i.fq = load ptr, ptr %i.fp, align 8            ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 200
  %i.fs = load ptr, ptr %i.fr, align 8            ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  %i.fu = load ptr, ptr %i.ft, align 8, !nonnull !41, !noundef !41 ; 3 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 11
  %i.fw = load i8, ptr %i.fv, align 1
  %i.fx = and i8 %i.fw, 3
  %i.fy = icmp eq i8 %i.fx, 2
  br i1 %i.fy, label %bb.e, label %_ZNK4node10BaseObject6objectEv.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.fz = load i64, ptr %i.fu, align 8
  %i.ga = ptrtoint ptr %i.fs to i64
  %i.gb = add i64 %i.ga, 560
  %i.gc = inttoptr i64 %i.gb to ptr               ; 3 uses
  %i.gd = load ptr, ptr %i.gc, align 8            ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  %i.gf = load ptr, ptr %i.ge, align 8
  %i.gg = icmp eq ptr %i.gd, %i.gf
  br i1 %i.gg, label %bb.f, label %_ZN4node17PersistentToLocal4WeakIN2v86ObjectEEENS2_5LocalIT_EEPNS2_7IsolateERKNS2_14PersistentBaseIS5_EE.exit.i.i.i.i.i, !prof !37

bb.f:                                             ; preds = %bb.e
  %i.gh = call noundef ptr @_ZN2v811HandleScope6ExtendEPNS_7IsolateE(ptr noundef %i.fs) #28
  br label %_ZN4node17PersistentToLocal4WeakIN2v86ObjectEEENS2_5LocalIT_EEPNS2_7IsolateERKNS2_14PersistentBaseIS5_EE.exit.i.i.i.i.i

_ZN4node17PersistentToLocal4WeakIN2v86ObjectEEENS2_5LocalIT_EEPNS2_7IsolateERKNS2_14PersistentBaseIS5_EE.exit.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i = phi ptr [ %i.gh, %bb.f ], [ %i.gd, %bb.e ] ; 3 uses
  %i.gi = ptrtoint ptr %.0.i.i.i.i.i.i.i to i64
  %i.gj = add i64 %i.gi, 8
  %i.gk = inttoptr i64 %i.gj to ptr
  store ptr %i.gk, ptr %i.gc, align 8
  store i64 %i.fz, ptr %.0.i.i.i.i.i.i.i, align 8
  %.pre.i.i.i = load ptr, ptr %i.fn, align 8
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %.pre.i.i.i, i64 176
  %.pre19.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i, align 8
  br label %_ZNK4node10BaseObject6objectEv.exit.i.i.i

_ZNK4node10BaseObject6objectEv.exit.i.i.i:        ; preds = %_ZN4node17PersistentToLocal4WeakIN2v86ObjectEEENS2_5LocalIT_EEPNS2_7IsolateERKNS2_14PersistentBaseIS5_EE.exit.i.i.i.i.i, %bb.d
  %i.gl = phi ptr [ %.pre19.i.i.i, %_ZN4node17PersistentToLocal4WeakIN2v86ObjectEEENS2_5LocalIT_EEPNS2_7IsolateERKNS2_14PersistentBaseIS5_EE.exit.i.i.i.i.i ], [ %i.fq, %bb.d ]
  %.sroa.0.0.i.i.i.i.i = phi ptr [ %.0.i.i.i.i.i.i.i, %_ZN4node17PersistentToLocal4WeakIN2v86ObjectEEENS2_5LocalIT_EEPNS2_7IsolateERKNS2_14PersistentBaseIS5_EE.exit.i.i.i.i.i ], [ %i.fu, %bb.d ]
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 3008
  %i.gn = load ptr, ptr %i.gm, align 8
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 192
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.go, align 8
  %i.gp = call ptr @_ZN2v86Object3GetENS_5LocalINS_7ContextEEENS1_INS_5ValueEEE(ptr noundef nonnull align 1 dereferenceable(1) %.sroa.0.0.i.i.i.i.i, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, ptr %i.fm) #28 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.gp, null
  br i1 %.not.i.i.i, label %_ZN4node9AsyncWrap12MakeCallbackEN2v85LocalINS1_6StringEEEiPNS2_INS1_5ValueEEE.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNK4node10BaseObject6objectEv.exit.i.i.i
  %i.gq = call noundef zeroext i1 @_ZNK2v85Value10IsFunctionEv(ptr noundef nonnull align 1 dereferenceable(1) %i.gp) #28
  br i1 %i.gq, label %bb.h, label %_ZN4node9AsyncWrap12MakeCallbackEN2v85LocalINS1_6StringEEEiPNS2_INS1_5ValueEEE.exit.i

bb.h:                                             ; preds = %bb.g
  %i.gr = call ptr @_ZN4node9AsyncWrap12MakeCallbackEN2v85LocalINS1_8FunctionEEEiPNS2_INS1_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(80) %i.fj, ptr nonnull %i.gp, i32 noundef 1, ptr noundef nonnull %6) #28 ; 0 uses
  br label %_ZN4node9AsyncWrap12MakeCallbackEN2v85LocalINS1_6StringEEEiPNS2_INS1_5ValueEEE.exit.i

_ZN4node9AsyncWrap12MakeCallbackEN2v85LocalINS1_6StringEEEiPNS2_INS1_5ValueEEE.exit.i: ; preds = %bb.h, %bb.g, %_ZNK4node10BaseObject6objectEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %_ZN4node30NewDictionaryInstanceNullProtoEN2v85LocalINS0_7ContextEEENS1_INS0_18DictionaryTemplateEEENS0_10MemorySpanINS0_10MaybeLocalINS0_5ValueEEEEE.exit.thread.i

_ZN4node30NewDictionaryInstanceNullProtoEN2v85LocalINS0_7ContextEEENS1_INS0_18DictionaryTemplateEEENS0_10MemorySpanINS0_10MaybeLocalINS0_5ValueEEEEE.exit.thread.i: ; preds = %_ZN4node9AsyncWrap12MakeCallbackEN2v85LocalINS1_6StringEEEiPNS2_INS1_5ValueEEE.exit.i, %_ZN4node30NewDictionaryInstanceNullProtoEN2v85LocalINS0_7ContextEEENS1_INS0_18DictionaryTemplateEEENS0_10MemorySpanINS0_10MaybeLocalINS0_5ValueEEEEE.exit.i, %_ZN2v87Boolean3NewEPNS_7IsolateEb.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  call void @_ZN4node10AsyncHooks26DefaultTriggerAsyncIdScopeD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @_ZN2v87Context4ExitEv(ptr noundef nonnull align 1 dereferenceable(1) %.sroa.0.0.copyload.i.i.i.i) #28
  %i.gs = load ptr, ptr %2, align 8               ; 3 uses
  %i.gt = icmp eq ptr %i.gs, null
  br i1 %i.gt, label %"_ZZZN4node6worker6Worker17GetHeapStatisticsERKN2v820FunctionCallbackInfoINS2_5ValueEEEEN3$_0clEPNS_11EnvironmentEENUlSA_E_clESA_.exit", label %bb.i, !prof !37

bb.i:                                             ; preds = %_ZN4node30NewDictionaryInstanceNullProtoEN2v85LocalINS0_7ContextEEENS1_INS0_18DictionaryTemplateEEENS0_10MemorySpanINS0_10MaybeLocalINS0_5ValueEEEEE.exit.thread.i
  %i.gu = ptrtoint ptr %i.gs to i64
  %i.gv = add i64 %i.gu, 560
  %i.gw = inttoptr i64 %i.gv to ptr               ; 4 uses
  %i.gx = load ptr, ptr %i.gw, align 8
  %i.gy = load ptr, ptr %i.h, align 8
  store ptr %i.gy, ptr %i.gw, align 8
  store ptr %i.gx, ptr %i.h, align 8
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gw, i64 16 ; 2 uses
  %i.ha = load i32, ptr %i.gz, align 8
  %i.hb = add nsw i32 %i.ha, -1
  store i32 %i.hb, ptr %i.gz, align 8
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gw, i64 8 ; 2 uses
  %i.hd = load ptr, ptr %i.hc, align 8
  %i.he = load ptr, ptr %i.k, align 8             ; 2 uses
  %.not.i.i = icmp eq ptr %i.hd, %i.he
  br i1 %.not.i.i, label %"_ZZZN4node6worker6Worker17GetHeapStatisticsERKN2v820FunctionCallbackInfoINS2_5ValueEEEEN3$_0clEPNS_11EnvironmentEENUlSA_E_clESA_.exit", label %bb.j, !prof !40

bb.j:                                             ; preds = %bb.i
  store ptr %i.he, ptr %i.hc, align 8
  call void @_ZN2v811HandleScope16DeleteExtensionsEPNS_7IsolateE(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull %i.gs) #28
  br label %"_ZZZN4node6worker6Worker17GetHeapStatisticsERKN2v820FunctionCallbackInfoINS2_5ValueEEEEN3$_0clEPNS_11EnvironmentEENUlSA_E_clESA_.exit"

"_ZZZN4node6worker6Worker17GetHeapStatisticsERKN2v820FunctionCallbackInfoINS2_5ValueEEEEN3$_0clEPNS_11EnvironmentEENUlSA_E_clESA_.exit": ; preds = %_ZN4node30NewDictionaryInstanceNullProtoEN2v85LocalINS0_7ContextEEENS1_INS0_18DictionaryTemplateEEENS0_10MemorySpanINS0_10MaybeLocalINS0_5ValueEEEEE.exit.thread.i, %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  ret void
}

declare noundef i64 @_ZN2v87Isolate22GetTotalAllocatedBytesEv(ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #5

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN4node27UnconditionalAsyncWrapDebugIJRmiRPKcS4_EEEvPNS_9AsyncWrapES3_DpOT_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) local_unnamed_addr #21 comdat {
bb.a:
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load i32, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  %i.g = load ptr, ptr %0, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 144
  %i.i = load ptr, ptr %i.h, align 8
  call void %i.i(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 8 dereferenceable(80) %0) #28
  call void @llvm.experimental.noalias.scope.decl(metadata !503)
  %i.j = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 5 uses
  %i.k = load i64, ptr %i.j, align 8, !noalias !503 ; 5 uses
  %i.l = icmp eq i64 %i.k, 9223372036854775807
  br i1 %i.l, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

bb.b:                                             ; preds = %bb.a
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.93) #29, !noalias !503
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %bb.a
  %i.m = add nsw i64 %i.k, 1                      ; 3 uses
  %i.n = load ptr, ptr %9, align 8, !noalias !503 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 9 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.q = icmp ult i64 %i.k, 16
  call void @llvm.assume(i1 %i.q)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.r = load i64, ptr %i.o, align 8, !noalias !503
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.s = phi i64 [ %i.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ]
  %.not.i.i.i = icmp ugt i64 %i.m, %i.s
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.k
  store i8 32, ptr %i.t, align 1, !noalias !503
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %9, i64 noundef %i.k, i64 noundef 0, ptr noundef nonnull @.str.18, i64 noundef 1), !noalias !503
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %bb.d, %bb.c
  store i64 %i.m, ptr %i.j, align 8, !noalias !503
  %i.u = load ptr, ptr %9, align 8, !noalias !503
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.m
  store i8 0, ptr %i.v, align 1, !noalias !503
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 14 uses
  store ptr %i.w, ptr %8, align 8, !alias.scope !503
  %i.x = load ptr, ptr %9, align 8, !noalias !503 ; 3 uses
  %i.y = icmp eq ptr %i.x, %i.o
  br i1 %i.y, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
end_hunk_0
