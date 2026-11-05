Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/js-inlining?download=true
inline.NumInlined: 1303
inline.NumDeleted: 581
begin_hunk_0_@_ZN2v88internal8compiler9JSInliner24WasmFunctionNameForTraceB5cxx11EPNS0_4wasm12NativeModuleEi:bb.a

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit, %._crit_edge.i.i
  %i.aa = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 264
  %i.ac = load ptr, ptr %i.ab, align 8            ; 2 uses
  %i.ad = icmp eq ptr %i.aa, %i.ac
  br i1 %i.ad, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %bb.m, %bb.k
  %i.ae = load i8, ptr %i.e, align 8, !range !68, !noundef !73
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %bb.n, label %bb.p

.lr.ph.i:                                         ; preds = %bb.k, %bb.m
  %.sroa.05.08.i = phi ptr [ %i.ai, %bb.m ], [ %i.aa, %bb.k ] ; 2 uses
  %i.ag = load ptr, ptr %.sroa.05.08.i, align 8   ; 2 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i
  call void @_ZdaPv(ptr noundef nonnull %i.ag) #18
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.lr.ph.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.05.08.i, i64 8 ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.ac
  br i1 %i.aj, label %._crit_edge.i, label %.lr.ph.i

bb.n:                                             ; preds = %._crit_edge.i
  %i.ak = load ptr, ptr %i.b, align 8             ; 3 uses
  %.not.i = icmp eq ptr %i.ak, %3
  %i.al = icmp eq ptr %i.ak, null
  %or.cond.i3 = or i1 %.not.i, %i.al
  br i1 %or.cond.i3, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @_ZdaPv(ptr noundef nonnull %i.ak) #18
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %._crit_edge.i
  %i.am = load ptr, ptr %i.a, align 8             ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i.i, label %_ZN2v88internal4wasm13StringBuilderD2Ev.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 272
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = ptrtoint ptr %i.am to i64
  %i.ar = sub i64 %i.ap, %i.aq
  call void @_ZdlPvm(ptr noundef nonnull %i.am, i64 noundef %i.ar) #18
  br label %_ZN2v88internal4wasm13StringBuilderD2Ev.exit

_ZN2v88internal4wasm13StringBuilderD2Ev.exit:     ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  ret void
}

declare noundef zeroext i1 @_ZN2v88internal8compiler14NodeProperties17IsExceptionalCallEPNS1_4NodeEPS4_(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @_ZN2v88internal8compiler16WasmGraphBuilderC1EPNS0_4wasm14CompilationEnvEPNS0_4ZoneEPNS1_12MachineGraphEPKNS0_9SignatureINS3_9ValueTypeEEEPNS1_19SourcePositionTableENS2_13ParameterModeEPNS0_7IsolateENS3_19WasmEnabledFeaturesEPKNS3_12CanonicalSigE(ptr noundef nonnull align 8 dereferenceable(136), ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32, ptr noundef) unnamed_addr #2

declare i64 @_ZNK2v88internal8compiler19SourcePositionTable17GetSourcePositionEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN2v88internal8compiler16WasmGraphBuilder15TryWasmInliningEiPNS0_4wasm12NativeModuleEi(ptr noundef nonnull align 8 dereferenceable(136), i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare noundef i32 @_ZN2v88internal24OptimizedCompilationInfo18AddInlinedFunctionENS0_6HandleINS0_18SharedFunctionInfoEEENS2_INS0_13BytecodeArrayEEENS0_14SourcePositionE(ptr noundef nonnull align 8 dereferenceable(192), ptr, ptr, i64) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN2v88internal8compiler16WasmGraphBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136)) unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN2v88internal8compiler9JSInliner16ReduceJSWasmCallEPNS1_4NodeE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %0, ptr noundef %1) local_unnamed_addr #0 align 2 !guid !94 {
bb.a:
  %2 = alloca %"class.v8::internal::compiler::JSWasmCallNode", align 8 ; 5 uses
  %3 = alloca %"struct.v8::internal::compiler::JSInliner::WasmInlineResult", align 8 ; 6 uses
  %i.a = alloca ptr, align 8                      ; 6 uses
  %4 = alloca %"class.v8::internal::ZoneVector", align 8 ; 8 uses
  %5 = alloca %"class.v8::internal::compiler::AllNodes", align 8 ; 5 uses
  %6 = alloca %"class.v8::internal::compiler::AllNodes", align 8 ; 5 uses
  %7 = alloca %"struct.std::pair.501", align 8    ; 5 uses
  %8 = alloca %"class.v8::internal::TNode", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %1, ptr %i.b, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 8) (i8, ptr @_ZTVN2v88internal8compiler14JSWasmCallNodeE, i64 16), ptr %2, align 8
  %i.c = load ptr, ptr %1, align 8                ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.f = load i32, ptr %i.e, align 8              ; 2 uses
  %i.g = load ptr, ptr %i.d, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 216 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 3 uses
  %i.j = tail call noundef ptr @_ZN2v88internal4wasm20GetTypeCanonicalizerEv() #16
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 200
  %i.l = sext i32 %i.f to i64
  %i.m = load ptr, ptr %i.k, align 8
  %i.n = getelementptr inbounds nuw [32 x i8], ptr %i.m, i64 %i.l
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  %.sroa.039.0.copyload = load i32, ptr %i.o, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 176
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 184
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = load ptr, ptr %i.p, align 8              ; 2 uses
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = ashr exact i64 %i.v, 2
  %i.x = zext i32 %.sroa.039.0.copyload to i64    ; 2 uses
  %i.y = icmp ugt i64 %i.w, %i.x
  tail call void @llvm.assume(i1 %i.y)
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.x
  %.sroa.02.0.copyload.i.i = load i32, ptr %i.z, align 4
  %i.aa = tail call noundef ptr @_ZNK2v88internal4wasm17TypeCanonicalizer23LookupFunctionSignatureENS1_18CanonicalTypeIndexE(ptr noundef nonnull align 8 dereferenceable(8056) %i.j, i32 %.sroa.02.0.copyload.i.i) #16 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ac = load i8, ptr %i.ab, align 8, !range !68, !noundef !73
  %i.ad = trunc nuw i8 %i.ac to i1
  %i.ae = icmp ne i32 %i.f, -1
  %or.cond = and i1 %i.ae, %i.ad
  br i1 %or.cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.af = load ptr, ptr %i.h, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 704
  %i.ah = load i8, ptr %i.ag, align 8
  %.not98 = icmp eq i8 %i.ah, 0
  br i1 %.not98, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  call void @_ZN2v88internal8compiler9JSInliner15TryWasmInliningERKNS1_14JSWasmCallNodeE(ptr dead_on_unwind nonnull writable sret(%"struct.v8::internal::compiler::JSInliner::WasmInlineResult") align 8 %3, ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(16) %2)
  %.sroa.084.0.copyload = load i8, ptr %3, align 8
  %.sroa.788.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.788.0.copyload = load ptr, ptr %.sroa.788.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.9.0.copyload = load ptr, ptr %.sroa.9.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  %i.ai = trunc nuw i8 %.sroa.084.0.copyload to i1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.sroa.084.0 = phi i1 [ false, %bb.b ], [ %i.ai, %bb.c ], [ false, %bb.a ] ; 3 uses
  %.sroa.9.0 = phi ptr [ null, %bb.b ], [ %.sroa.9.0.copyload, %bb.c ], [ null, %bb.a ]
  %.sroa.788.0 = phi ptr [ null, %bb.b ], [ %.sroa.788.0.copyload, %bb.c ], [ null, %bb.a ]
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 7 uses
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = load ptr, ptr %i.ak, align 8            ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.ao = load <2 x ptr>, ptr %i.am, align 8
  store ptr null, ptr %i.an, align 8
  %i.ap = load ptr, ptr %i.aj, align 8
  %i.aq = load ptr, ptr %1, align 8, !noalias !95
  %i.ar = tail call noundef zeroext i1 @_ZN2v88internal8compiler18OperatorProperties15HasContextInputEPKNS1_8OperatorE(ptr noundef %i.aq) #16, !noalias !95
  br i1 %i.ar, label %bb.f, label %bb.e, !prof !67

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.35) #17, !noalias !95
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.as = load ptr, ptr %1, align 8, !noalias !95 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 20
  %i.au = load i32, ptr %i.at, align 4, !noalias !95
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 5 uses
  %i.aw = load i32, ptr %i.av, align 4, !noalias !95
  %i.ax = and i32 %i.aw, 251658240
  %.not.i.i.i.i = icmp eq i32 %i.ax, 251658240
  %i.ay = ptrtoint ptr %1 to i64
  %i.az = add i64 %i.ay, 32
  %i.ba = inttoptr i64 %i.az to ptr               ; 10 uses
  br i1 %.not.i.i.i.i, label %bb.g, label %_ZNK2v88internal8compiler17JSNodeWrapperBase7contextEv.exit

bb.g:                                             ; preds = %bb.f
  %i.bb = load ptr, ptr %i.ba, align 8, !noalias !95
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = add i64 %i.bc, 16
  %i.be = inttoptr i64 %i.bd to ptr
  br label %_ZNK2v88internal8compiler17JSNodeWrapperBase7contextEv.exit

_ZNK2v88internal8compiler17JSNodeWrapperBase7contextEv.exit: ; preds = %bb.f, %bb.g
  %.sink.i.i.i.i = phi ptr [ %i.be, %bb.g ], [ %i.ba, %bb.f ]
  %i.bf = sext i32 %i.au to i64
  %i.bg = getelementptr inbounds [8 x i8], ptr %.sink.i.i.i.i, i64 %i.bf
  %i.bh = load ptr, ptr %i.bg, align 8, !noalias !95
  %i.bi = tail call noundef zeroext i1 @_ZN2v88internal8compiler18OperatorProperties18HasFrameStateInputEPKNS1_8OperatorE(ptr noundef nonnull %i.as) #16
  br i1 %i.bi, label %bb.i, label %bb.h, !prof !67

bb.h:                                             ; preds = %_ZNK2v88internal8compiler17JSNodeWrapperBase7contextEv.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.39) #17
  unreachable

bb.i:                                             ; preds = %_ZNK2v88internal8compiler17JSNodeWrapperBase7contextEv.exit
  %i.bj = load ptr, ptr %1, align 8               ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 20
  %i.bl = load i32, ptr %i.bk, align 4
  %i.bm = tail call noundef zeroext i1 @_ZN2v88internal8compiler18OperatorProperties15HasContextInputEPKNS1_8OperatorE(ptr noundef %i.bj) #16
  %i.bn = load i32, ptr %i.av, align 4
  %i.bo = and i32 %i.bn, 251658240
  %.not.i.i.i.i66 = icmp eq i32 %i.bo, 251658240
  br i1 %.not.i.i.i.i66, label %bb.j, label %_ZNK2v88internal8compiler17JSNodeWrapperBase11frame_stateEv.exit.a

bb.j:                                             ; preds = %bb.i
  %i.bp = load ptr, ptr %i.ba, align 8
  %i.bq = ptrtoint ptr %i.bp to i64
  %i.br = add i64 %i.bq, 16
  %i.bs = inttoptr i64 %i.br to ptr
  br label %_ZNK2v88internal8compiler17JSNodeWrapperBase11frame_stateEv.exit.a

_ZNK2v88internal8compiler17JSNodeWrapperBase11frame_stateEv.exit.a: ; preds = %bb.i, %bb.j
  %.sink.i.i.i.i67 = phi ptr [ %i.bs, %bb.j ], [ %i.ba, %bb.i ]
  %9 = zext i1 %i.bm to i32
  %10 = add nsw i32 %i.bl, %9
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [8 x i8], ptr %.sink.i.i.i.i67, i64 %11
  %13 = load ptr, ptr %12, align 8
  %14 = tail call ptr @_ZN2v88internal8compiler45CreateJSWasmCallBuiltinContinuationFrameStateEPNS1_7JSGraphEPNS1_4NodeES5_PKNS0_4wasm12CanonicalSigE(ptr noundef %i.ap, ptr noundef %i.bh, ptr noundef %13, ptr noundef %i.aa) #16
  %15 = load ptr, ptr %i.aj, align 8              ; 3 uses
  %16 = load ptr, ptr %15, align 8                ; 2 uses
  %17 = getelementptr inbounds nuw i8, ptr %16, i64 28
  %18 = load i32, ptr %17, align 4                ; 2 uses
  %19 = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 681), align 1, !range !68
  %20 = trunc nuw i8 %19 to i1
  %21 = select i1 %.sroa.084.0, i1 true, i1 %20
  %22 = xor i1 %21, true
  %i.bt = load ptr, ptr %16, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %15, i64 800
  %i.bv = load ptr, ptr %i.bu, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bx = load ptr, ptr %i.bw, align 8
  tail call void @_ZN2v88internal8compiler27BuildInlinedJSToWasmWrapperEPNS0_4ZoneEPNS1_12MachineGraphEPKNS0_4wasm12CanonicalSigEPNS0_7IsolateEPNS1_19SourcePositionTableEPNS1_4NodeEb(ptr noundef %i.bt, ptr noundef nonnull %15, ptr noundef %i.aa, ptr noundef %i.bv, ptr noundef %i.bx, ptr noundef %14, i1 noundef zeroext %22) #16
  %i.by = load ptr, ptr %i.aj, align 8
  %i.bz = load ptr, ptr %i.by, align 8            ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8            ; 3 uses
  store <2 x ptr> %i.ao, ptr %i.am, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store ptr null, ptr %i.a, align 8
  %i.ce = call noundef zeroext i1 @_ZN2v88internal8compiler14NodeProperties17IsExceptionalCallEPNS1_4NodeEPS4_(ptr noundef nonnull %1, ptr noundef nonnull %i.a) #16 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 8            ; 2 uses
  store ptr %i.cg, ptr %4, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ch, i8 0, i64 24, i1 false)
  %i.ci = load ptr, ptr %i.a, align 8
  %.not = icmp eq ptr %i.ci, null
  br i1 %.not, label %bb.r, label %bb.k

bb.k:                                             ; preds = %_ZNK2v88internal8compiler17JSNodeWrapperBase11frame_stateEv.exit.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  %i.cj = load ptr, ptr %i.aj, align 8
  %i.ck = load ptr, ptr %i.cj, align 8
  call void @_ZN2v88internal8compiler8AllNodesC1EPNS0_4ZoneEPNS1_4NodeEPKNS1_7TFGraphEb(ptr noundef nonnull align 8 dereferenceable(65) %5, ptr noundef %i.cg, ptr noundef %i.cd, ptr noundef %i.ck, i1 noundef zeroext true) #16
  %i.cl = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8            ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.co = load ptr, ptr %i.cn, align 8            ; 2 uses
  %.not64100 = icmp eq ptr %i.cm, %i.co
  br i1 %.not64100, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k
  %i.cp = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %4, i64 24
  br label %bb.l

._crit_edge:                                      ; preds = %bb.q, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br label %bb.r

bb.l:                                             ; preds = %.lr.ph, %bb.q
  %.063101 = phi ptr [ %i.cm, %.lr.ph ], [ %i.dl, %bb.q ] ; 2 uses
  %i.cr = load ptr, ptr %.063101, align 8         ; 4 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 20
  %i.ct = load i32, ptr %i.cs, align 4
  %i.cu = and i32 %i.ct, 16777215
  %i.cv = icmp ugt i32 %18, %i.cu
  br i1 %i.cv, label %bb.q, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cw = load ptr, ptr %i.cr, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 18
  %.sroa.0.0.copyload.i.i = load i8, ptr %i.cx, align 2
  %i.cy = and i8 %.sroa.0.0.copyload.i.i, 32
  %.not99 = icmp eq i8 %i.cy, 0
  br i1 %.not99, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.cz = call noundef zeroext i1 @_ZN2v88internal8compiler14NodeProperties17IsExceptionalCallEPNS1_4NodeEPS4_(ptr noundef nonnull %i.cr, ptr noundef null) #16
  br i1 %i.cz, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.da = load ptr, ptr %i.cp, align 8            ; 2 uses
  %i.db = load ptr, ptr %i.cq, align 8            ; 2 uses
  %i.dc = icmp ult ptr %i.da, %i.db
  br i1 %i.dc, label %_ZN2v88internal10ZoneVectorIPNS0_8compiler4NodeEE9push_backERKS4_.exit, label %bb.p, !prof !67

bb.p:                                             ; preds = %bb.o
  %i.dd = load ptr, ptr %i.ch, align 8
  %i.de = ptrtoint ptr %i.db to i64
  %i.df = ptrtoint ptr %i.dd to i64
  %i.dg = sub i64 %i.de, %i.df
  %i.dh = ashr exact i64 %i.dg, 3
  %i.di = add nsw i64 %i.dh, 1
  call preserve_mostcc void @_ZN2v88internal10ZoneVectorIPNS0_8compiler4NodeEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.di)
  %.pre.i = load ptr, ptr %i.cp, align 8
  br label %_ZN2v88internal10ZoneVectorIPNS0_8compiler4NodeEE9push_backERKS4_.exit

_ZN2v88internal10ZoneVectorIPNS0_8compiler4NodeEE9push_backERKS4_.exit: ; preds = %bb.o, %bb.p
  %i.dj = phi ptr [ %i.da, %bb.o ], [ %.pre.i, %bb.p ] ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  store ptr %i.dk, ptr %i.cp, align 8
  store ptr %i.cr, ptr %i.dj, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.n, %_ZN2v88internal10ZoneVectorIPNS0_8compiler4NodeEE9push_backERKS4_.exit, %bb.m, %bb.l
  %i.dl = getelementptr inbounds nuw i8, ptr %.063101, i64 8 ; 2 uses
  %.not64 = icmp eq ptr %i.dl, %i.co
  br i1 %.not64, label %._crit_edge, label %bb.l

bb.r:                                             ; preds = %._crit_edge, %_ZNK2v88internal8compiler17JSNodeWrapperBase11frame_stateEv.exit.a
  %i.dm = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 681), align 1, !range !68
  %i.dn = trunc nuw i8 %i.dm to i1
  %or.cond97 = select i1 %.sroa.084.0, i1 true, i1 %i.dn
  br i1 %or.cond97, label %bb.s, label %bb.y

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  %i.do = load ptr, ptr %i.cf, align 8
  %i.dp = load ptr, ptr %i.aj, align 8
  %i.dq = load ptr, ptr %i.dp, align 8
  call void @_ZN2v88internal8compiler8AllNodesC1EPNS0_4ZoneEPNS1_4NodeEPKNS1_7TFGraphEb(ptr noundef nonnull align 8 dereferenceable(65) %6, ptr noundef %i.do, ptr noundef %i.cd, ptr noundef %i.dq, i1 noundef zeroext true) #16
  %i.dr = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ds = load ptr, ptr %i.dr, align 8            ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.du = load ptr, ptr %i.dt, align 8            ; 2 uses
  %.not65102 = icmp eq ptr %i.ds, %i.du
  br i1 %.not65102, label %.thread92, label %.lr.ph105

.lr.ph105:                                        ; preds = %bb.s, %bb.v
  %.0103 = phi ptr [ %i.eh, %bb.v ], [ %i.ds, %bb.s ] ; 2 uses
  %i.dv = load ptr, ptr %.0103, align 8           ; 5 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 20
  %i.dx = load i32, ptr %i.dw, align 4
  %i.dy = and i32 %i.dx, 16777215
  %i.dz = icmp ugt i32 %18, %i.dy
  br i1 %i.dz, label %bb.v, label %bb.t

bb.t:                                             ; preds = %.lr.ph105
  %i.ea = load ptr, ptr %i.dv, align 8            ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  %i.ec = load i16, ptr %i.eb, align 8
  %i.ed = icmp eq i16 %i.ec, 50
  br i1 %i.ed, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ee = call noundef ptr @_ZN2v88internal8compiler16CallDescriptorOfEPKNS1_8OperatorE(ptr noundef nonnull %i.ea) #16
  %i.ef = load i32, ptr %i.ee, align 8
  %i.eg = and i32 %i.ef, -2
  %spec.select.i = icmp eq i32 %i.eg, 4
  br i1 %spec.select.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u, %.lr.ph105
  %i.eh = getelementptr inbounds nuw i8, ptr %.0103, i64 8 ; 2 uses
  %.not65 = icmp eq ptr %i.eh, %i.du
  br i1 %.not65, label %.thread92, label %.lr.ph105

bb.w:                                             ; preds = %bb.u
  %i.ei = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 681), align 1, !range !68, !noundef !73
  %i.ej = trunc nuw i8 %i.ei to i1
  br i1 %i.ej, label %bb.x, label %.thread92

bb.x:                                             ; preds = %bb.w
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dv, i64 20
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.em = load ptr, ptr %i.el, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  %i.en = load i32, ptr %i.ek, align 4
  %i.eo = and i32 %i.en, 16777215
  store i32 %i.eo, ptr %7, align 8
  %i.ep = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.d, ptr %i.ep, align 8
  %i.eq = call { ptr, i8 } @_ZNSt8_Rb_treeIjSt4pairIKjPKN2v88internal8compiler20JSWasmCallParametersEESt10_Select1stIS8_ESt4lessIjENS3_13ZoneAllocatorIS8_EEE16_M_insert_uniqueIS8_EES0_ISt17_Rb_tree_iteratorIS8_EbEOT_(ptr noundef nonnull align 8 dereferenceable(56) %i.em, ptr noundef nonnull align 8 dereferenceable(16) %7) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  br label %.thread92

.thread92:                                        ; preds = %bb.v, %bb.s, %bb.x, %bb.w
  %.295 = phi ptr [ %i.dv, %bb.w ], [ %i.dv, %bb.x ], [ null, %bb.s ], [ null, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  br label %bb.y

bb.y:                                             ; preds = %bb.r, %.thread92
  %.3 = phi ptr [ %.295, %.thread92 ], [ null, %bb.r ]
  %i.er = load ptr, ptr %1, align 8
  %i.es = call noundef zeroext i1 @_ZN2v88internal8compiler18OperatorProperties15HasContextInputEPKNS1_8OperatorE(ptr noundef %i.er) #16
  br i1 %i.es, label %bb.aa, label %bb.z, !prof !67

bb.z:                                             ; preds = %bb.y
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.35) #17
  unreachable

bb.aa:                                            ; preds = %bb.y
  %i.et = load ptr, ptr %1, align 8               ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 20
  %i.ev = load i32, ptr %i.eu, align 4
  %i.ew = load i32, ptr %i.av, align 4
  %i.ex = and i32 %i.ew, 251658240
  %.not.i.i.i = icmp eq i32 %i.ex, 251658240
  br i1 %.not.i.i.i, label %bb.ab, label %_ZN2v88internal8compiler14NodeProperties15GetContextInputEPNS1_4NodeE.exit

bb.ab:                                            ; preds = %bb.aa
  %i.ey = load ptr, ptr %i.ba, align 8
  %i.ez = ptrtoint ptr %i.ey to i64
  %i.fa = add i64 %i.ez, 16
  %i.fb = inttoptr i64 %i.fa to ptr
  br label %_ZN2v88internal8compiler14NodeProperties15GetContextInputEPNS1_4NodeE.exit

_ZN2v88internal8compiler14NodeProperties15GetContextInputEPNS1_4NodeE.exit: ; preds = %bb.aa, %bb.ab
  %.sink.i.i.i = phi ptr [ %i.fb, %bb.ab ], [ %i.ba, %bb.aa ]
  %i.fc = sext i32 %i.ev to i64
  %i.fd = getelementptr inbounds [8 x i8], ptr %.sink.i.i.i, i64 %i.fc
  %i.fe = load ptr, ptr %i.fd, align 8            ; 2 uses
  %i.ff = call noundef zeroext i1 @_ZN2v88internal8compiler18OperatorProperties18HasFrameStateInputEPKNS1_8OperatorE(ptr noundef nonnull %i.et) #16
  br i1 %i.ff, label %bb.ad, label %bb.ac, !prof !67

bb.ac:                                            ; preds = %_ZN2v88internal8compiler14NodeProperties15GetContextInputEPNS1_4NodeE.exit
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.39) #17
  unreachable

end_hunk_0
