Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/compiler?download=true
inline.NumInlined: 6502
inline.NumDeleted: 2740
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_ZN2v88internal8Compiler19GetFunctionFromEvalEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEENS4_INS0_18SharedFunctionInfoEEENS4_INS0_7ContextEEENS0_12LanguageModeENS0_16ParseRestrictionEiiNS0_21ParsingWhileDebuggingE:bb.a
  %i.bc = inttoptr i64 %i.bb to ptr
  %i.bd = load atomic volatile i32, ptr %i.bc monotonic, align 4
  %i.be = and i32 %i.bd, 32
  %.not337 = icmp eq i32 %i.be, 0
  br i1 %.not337, label %.critedge, label %bb.i

bb.i:                                             ; preds = %_ZNK2v88internal10JSFunction4codeENS0_17IsolateForSandboxE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #21
  store i64 %.pre339, ptr %14, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 58992
  %i.bg = call ptr @_ZN2v88internal8Builtins11code_handleENS0_7BuiltinE(ptr noundef nonnull align 8 dereferenceable(20) %i.bf, i32 noundef 104) #21
  %i.bh = load i64, ptr %i.bg, align 8
  call void @_ZN2v88internal10JSFunction10UpdateCodeEPNS0_7IsolateENS0_6TaggedINS0_4CodeEEENS0_16WriteBarrierModeE(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull %0, i64 %i.bh, i32 noundef 4)
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  %.pre = load i64, ptr %.0.i.i.i, align 8
  br label %.critedge

.critedge:                                        ; preds = %bb.f, %bb.i, %_ZNK2v88internal10JSFunction4codeENS0_17IsolateForSandboxE.exit
  %i.bi = phi i64 [ %.pre339, %bb.f ], [ %.pre, %bb.i ], [ %.pre339, %_ZNK2v88internal10JSFunction4codeENS0_17IsolateForSandboxE.exit ] ; 4 uses
  %i.bj = load i64, ptr %3, align 8               ; 5 uses
  %i.bk = add i64 %i.bi, 39                       ; 3 uses
  %i.bl = inttoptr i64 %i.bk to ptr
  store atomic volatile i64 %i.bj, ptr %i.bl release, align 8
  %i.bm = trunc i64 %i.bj to i1
  br i1 %i.bm, label %bb.j, label %_ZN2v88internal10JSFunction11set_contextENS0_6TaggedINS0_7ContextEEENS_15ReleaseStoreTagENS0_16WriteBarrierModeE.exit

bb.j:                                             ; preds = %.critedge
  %i.bn = and i64 %i.bi, -262144
  %i.bo = inttoptr i64 %i.bn to ptr
  %i.bp = load i64, ptr %i.bo, align 262144       ; 2 uses
  %i.bq = and i64 %i.bp, 32
  %.not.i.i.i = icmp eq i64 %i.bq, 0
  %i.br = and i64 %i.bp, 25
  %.not38.i.i.i = icmp eq i64 %i.br, 0
  br i1 %.not38.i.i.i, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.bs = and i64 %i.bj, -262144
  %i.bt = inttoptr i64 %i.bs to ptr
  %.sroa.0.0.copyload.i28.i.i.i = load i64, ptr %i.bt, align 262144
  %i.bu = and i64 %.sroa.0.0.copyload.i28.i.i.i, 25
  %.not39.i.i.i = icmp eq i64 %i.bu, 0
  br i1 %.not39.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.bi, i64 noundef %i.bk, i64 %i.bj) #21
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  br i1 %.not.i.i.i, label %_ZN2v88internal10JSFunction11set_contextENS0_6TaggedINS0_7ContextEEENS_15ReleaseStoreTagENS0_16WriteBarrierModeE.exit, label %bb.n, !prof !146

bb.n:                                             ; preds = %bb.m
  call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.bi, i64 %i.bk, i64 %i.bj) #21
  br label %_ZN2v88internal10JSFunction11set_contextENS0_6TaggedINS0_7ContextEEENS_15ReleaseStoreTagENS0_16WriteBarrierModeE.exit

bb.o:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #21
  store ptr null, ptr %15, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 3 uses
  store i8 0, ptr %i.bv, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 3 uses
  %i.bx = load i64, ptr %i.bw, align 8            ; 4 uses
  %i.by = icmp ne i64 %i.bx, 0
  %i.bz = select i1 %i.by, i1 %i.j, i1 false
  br i1 %i.bz, label %bb.p, label %bb.w

bb.p:                                             ; preds = %bb.o
  %i.ca = load i64, ptr %3, align 8
  %i.cb = add i64 %i.ca, -1
  %i.cc = inttoptr i64 %i.cb to ptr
  %i.cd = load atomic volatile i64, ptr %i.cc monotonic, align 8
  %i.ce = add i64 %i.cd, 11
  %i.cf = inttoptr i64 %i.ce to ptr
  %i.cg = load atomic volatile i16, ptr %i.cf monotonic, align 2
  %i.ch = icmp eq i16 %i.cg, 228
  br i1 %i.ch, label %.critedge101, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ci = add i64 %i.bx, 23
  %i.cj = inttoptr i64 %i.ci to ptr
  %i.ck = load atomic volatile i64, ptr %i.cj acquire, align 8 ; 3 uses
  %i.cl = trunc i64 %i.ck to i1
  br i1 %i.cl, label %_ZN2v88internal11IsScopeInfoENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit.i.i.i, label %_ZN2v88internal11IsScopeInfoENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit.thread.i.i.i

_ZN2v88internal11IsScopeInfoENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit.i.i.i: ; preds = %bb.q
  %i.cm = add nsw i64 %i.ck, -1
  %i.cn = inttoptr i64 %i.cm to ptr
  %i.co = load atomic volatile i64, ptr %i.cn monotonic, align 8
  %i.cp = add i64 %i.co, 11
  %i.cq = inttoptr i64 %i.cp to ptr
  %i.cr = load atomic volatile i16, ptr %i.cq monotonic, align 2
  %i.cs = icmp eq i16 %i.cr, 284
  br i1 %i.cs, label %_ZNK2v88internal18SharedFunctionInfo10scope_infoENS_14AcquireLoadTagE.exit.i, label %_ZN2v88internal11IsScopeInfoENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit.thread.i.i.i

_ZN2v88internal11IsScopeInfoENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit.thread.i.i.i: ; preds = %_ZN2v88internal11IsScopeInfoENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit.i.i.i, %bb.q
  %i.ct = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 10624
  %i.cv = load ptr, ptr %i.cu, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 296
  %i.cx = load i64, ptr %i.cw, align 8
  br label %_ZNK2v88internal18SharedFunctionInfo10scope_infoENS_14AcquireLoadTagE.exit.i

_ZNK2v88internal18SharedFunctionInfo10scope_infoENS_14AcquireLoadTagE.exit.i: ; preds = %_ZN2v88internal11IsScopeInfoENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit.thread.i.i.i, %_ZN2v88internal11IsScopeInfoENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit.i.i.i
  %.sroa.06.0.i.i.i = phi i64 [ %i.cx, %_ZN2v88internal11IsScopeInfoENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit.thread.i.i.i ], [ %i.ck, %_ZN2v88internal11IsScopeInfoENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit.i.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  store i64 %.sroa.06.0.i.i.i, ptr %10, align 8
  %i.cy = call noundef zeroext i1 @_ZNK2v88internal9ScopeInfo7IsEmptyEv(ptr noundef nonnull align 8 dereferenceable(8) %10) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  br i1 %i.cy, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_ZNK2v88internal18SharedFunctionInfo10scope_infoENS_14AcquireLoadTagE.exit.i
  %i.cz = add i64 %i.bx, 31
  %i.da = inttoptr i64 %i.cz to ptr
  %i.db = load i64, ptr %i.da, align 8
  br label %_ZNK2v88internal18SharedFunctionInfo17GetOuterScopeInfoEv.exit

bb.s:                                             ; preds = %_ZNK2v88internal18SharedFunctionInfo10scope_infoENS_14AcquireLoadTagE.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  store i64 %.sroa.06.0.i.i.i, ptr %11, align 8
  %i.dc = call i64 @_ZNK2v88internal9ScopeInfo14OuterScopeInfoEv(ptr noundef nonnull align 8 dereferenceable(8) %11) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  br label %_ZNK2v88internal18SharedFunctionInfo17GetOuterScopeInfoEv.exit

_ZNK2v88internal18SharedFunctionInfo17GetOuterScopeInfoEv.exit: ; preds = %bb.r, %bb.s
  %.sroa.02.0.i = phi i64 [ %i.db, %bb.r ], [ %i.dc, %bb.s ]
  %i.dd = load i64, ptr %3, align 8
  %i.de = add i64 %i.dd, 15
  %i.df = inttoptr i64 %i.de to ptr
  %i.dg = load i64, ptr %i.df, align 8
  %.not336 = icmp eq i64 %.sroa.02.0.i, %i.dg
  br i1 %.not336, label %_ZNK2v88internal18SharedFunctionInfo17GetOuterScopeInfoEv.exit..critedge101_crit_edge, label %bb.t, !prof !146

_ZNK2v88internal18SharedFunctionInfo17GetOuterScopeInfoEv.exit..critedge101_crit_edge: ; preds = %_ZNK2v88internal18SharedFunctionInfo17GetOuterScopeInfoEv.exit
  %.sroa.0.0.copyload.i124.pre = load i64, ptr %i.bw, align 8
  br label %.critedge101

bb.t:                                             ; preds = %_ZNK2v88internal18SharedFunctionInfo17GetOuterScopeInfoEv.exit
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.21) #22
  unreachable

.critedge101:                                     ; preds = %_ZNK2v88internal18SharedFunctionInfo17GetOuterScopeInfoEv.exit..critedge101_crit_edge, %bb.p
  %.sroa.0.0.copyload.i124 = phi i64 [ %.sroa.0.0.copyload.i124.pre, %_ZNK2v88internal18SharedFunctionInfo17GetOuterScopeInfoEv.exit..critedge101_crit_edge ], [ %i.bx, %bb.p ] ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 4 uses
  %i.di = load ptr, ptr %i.dh, align 8            ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 2 uses
  %i.dk = load ptr, ptr %i.dj, align 8
  %i.dl = icmp eq ptr %i.di, %i.dk
  br i1 %i.dl, label %bb.u, label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit115, !prof !145

bb.u:                                             ; preds = %.critedge101
  %i.dm = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #21
  br label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit115

_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit115: ; preds = %.critedge101, %bb.u
  %.0.i114 = phi ptr [ %i.dm, %bb.u ], [ %i.di, %.critedge101 ] ; 4 uses
  %i.dn = ptrtoint ptr %.0.i114 to i64
  %i.do = add i64 %i.dn, 8
  %i.dp = inttoptr i64 %i.do to ptr
  store ptr %i.dp, ptr %i.dh, align 8
  store i64 %.sroa.0.0.copyload.i124, ptr %.0.i114, align 8
  %i.dq = add i64 %.sroa.0.0.copyload.i124, 39
  %i.dr = inttoptr i64 %i.dq to ptr
  %i.ds = load atomic volatile i64, ptr %i.dr acquire, align 8
  %i.dt = load ptr, ptr %i.dh, align 8            ; 2 uses
  %i.du = load ptr, ptr %i.dj, align 8
  %i.dv = icmp eq ptr %i.dt, %i.du
  br i1 %i.dv, label %bb.v, label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit, !prof !145

bb.v:                                             ; preds = %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit115
  %i.dw = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #21
  br label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit

_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit: ; preds = %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit115, %bb.v
  %.0.i = phi ptr [ %i.dw, %bb.v ], [ %i.dt, %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit115 ] ; 2 uses
  %i.dx = ptrtoint ptr %.0.i to i64
  %i.dy = add i64 %i.dx, 8
  %i.dz = inttoptr i64 %i.dy to ptr
  store ptr %i.dz, ptr %i.dh, align 8
  store i64 %i.ds, ptr %.0.i, align 8
  %i.ea = load i64, ptr %.0.i114, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @_ZN2v88internal15IsCompiledScopeC2ENS0_6TaggedINS0_18SharedFunctionInfoEEEPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(9) %9, i64 %i.ea, ptr noundef nonnull %0)
  %.fca.0.load.i = load ptr, ptr %9, align 8
  %.fca.1.gep.i = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.fca.1.load.i = load i8, ptr %.fca.1.gep.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  store ptr %.fca.0.load.i, ptr %15, align 8
  store i8 %.fca.1.load.i, ptr %i.bv, align 8
  br label %bb.aq

bb.w:                                             ; preds = %bb.o
  %i.eb = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1430), align 2, !range !147, !noundef !148
  %i.ec = trunc nuw i8 %i.eb to i1
  %i.ed = call { i64, i64 } @_ZN2v88internal23UnoptimizedCompileFlags18ForToplevelCompileEPNS0_7IsolateEbNS0_12LanguageModeENS0_8REPLModeENS_10ScriptTypeEb(ptr noundef nonnull %0, i1 noundef zeroext true, i1 noundef zeroext %4, i32 noundef 1, i32 noundef 0, i1 noundef zeroext %i.ec) #21 ; 2 uses
  %i.ee = extractvalue { i64, i64 } %i.ed, 0
  %i.ef = extractvalue { i64, i64 } %i.ed, 1
  %.sroa.8.12.insert.ext = zext i32 %8 to i64
  %.sroa.8.12.insert.shift = shl nuw i64 %.sroa.8.12.insert.ext, 32
  %.sroa.8.12.insert.mask = and i64 %i.ef, 4294967295
  %.sroa.8.12.insert.insert = or disjoint i64 %.sroa.8.12.insert.mask, %.sroa.8.12.insert.shift
  %23 = select i1 %5, i64 36, i64 4
  %24 = and i64 %i.ee, -37
  %.sroa.0180.0.insert.insert187 = or disjoint i64 %23, %24
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #21
  store i8 0, ptr %16, align 8
  %i.eg = getelementptr inbounds nuw i8, ptr %16, i64 1
  store i8 0, ptr %i.eg, align 1
  %i.eh = getelementptr inbounds nuw i8, ptr %16, i64 2
  store i8 0, ptr %i.eh, align 2
  %i.ei = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i32 -1, ptr %i.ei, align 8
  %i.ej = getelementptr inbounds nuw i8, ptr %16, i64 12
  store i32 -1, ptr %i.ej, align 4
  %i.ek = getelementptr inbounds nuw i8, ptr %16, i64 16
  store i32 0, ptr %i.ek, align 8
  %.ptr.i.i.i = getelementptr inbounds nuw i8, ptr %16, i64 24
  store ptr null, ptr %.ptr.i.i.i, align 8
  %i.el = getelementptr inbounds nuw i8, ptr %16, i64 32
  store i32 0, ptr %i.el, align 8
  %.ptr.1.i.i.i = getelementptr inbounds nuw i8, ptr %16, i64 40
  store ptr null, ptr %.ptr.1.i.i.i, align 8
  %i.em = getelementptr inbounds nuw i8, ptr %16, i64 48
  store i32 0, ptr %i.em, align 8
  %.ptr.2.i.i.i = getelementptr inbounds nuw i8, ptr %16, i64 56
  store ptr null, ptr %.ptr.2.i.i.i, align 8
  %i.en = getelementptr inbounds nuw i8, ptr %16, i64 64
  store i32 0, ptr %i.en, align 8
  %i.eo = getelementptr inbounds nuw i8, ptr %16, i64 72 ; 2 uses
  store ptr null, ptr %i.eo, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #21
  call void @_ZN2v88internal31ReusableUnoptimizedCompileStateC1EPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(176) %17, ptr noundef nonnull %0) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #21
  call void @_ZN2v88internal9ParseInfoC1EPNS0_7IsolateENS0_23UnoptimizedCompileFlagsEPNS0_23UnoptimizedCompileStateEPNS0_31ReusableUnoptimizedCompileStateE(ptr noundef nonnull align 8 dereferenceable(129) %18, ptr noundef nonnull %0, i64 %.sroa.0180.0.insert.insert187, i64 %.sroa.8.12.insert.insert, ptr noundef nonnull %16, ptr noundef nonnull %17) #21
  %i.ep = getelementptr inbounds nuw i8, ptr %18, i64 56
  store i32 %6, ptr %i.ep, align 8
  %i.eq = load i64, ptr %3, align 8               ; 2 uses
  %i.er = add i64 %i.eq, -1
  %i.es = inttoptr i64 %i.er to ptr
  %i.et = load atomic volatile i64, ptr %i.es monotonic, align 8
  %i.eu = add i64 %i.et, 11
  %i.ev = inttoptr i64 %i.eu to ptr
  %i.ew = load atomic volatile i16, ptr %i.ev monotonic, align 2
  %i.ex = icmp eq i16 %i.ew, 228
  br i1 %i.ex, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ey = add i64 %i.eq, 15
  %i.ez = inttoptr i64 %i.ey to ptr
  %i.fa = load i64, ptr %i.ez, align 8
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.fc = load ptr, ptr %i.fb, align 8            ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.fe = load ptr, ptr %i.fd, align 8
  %i.ff = icmp eq ptr %i.fc, %i.fe
  br i1 %i.ff, label %bb.y, label %_ZN2v88internal6HandleINS0_9ScopeInfoEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !145

bb.y:                                             ; preds = %bb.x
  %i.fg = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #21
  br label %_ZN2v88internal6HandleINS0_9ScopeInfoEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_9ScopeInfoEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %bb.x, %bb.y
  %.0.i.i = phi ptr [ %i.fg, %bb.y ], [ %i.fc, %bb.x ] ; 3 uses
  %i.fh = ptrtoint ptr %.0.i.i to i64
  %i.fi = add i64 %i.fh, 8
  %i.fj = inttoptr i64 %i.fi to ptr
  store ptr %i.fj, ptr %i.fb, align 8
  store i64 %i.fa, ptr %.0.i.i, align 8
  br label %bb.z

bb.z:                                             ; preds = %_ZN2v88internal6HandleINS0_9ScopeInfoEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, %bb.w
  %.sroa.0179.0 = phi ptr [ null, %bb.w ], [ %.0.i.i, %_ZN2v88internal6HandleINS0_9ScopeInfoEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit ]
  %i.fk = load i64, ptr %2, align 8
  %i.fl = add i64 %i.fk, 39
  %i.fm = inttoptr i64 %i.fl to ptr
  %i.fn = load atomic volatile i64, ptr %i.fm acquire, align 8 ; 3 uses
  %i.fo = icmp eq i32 %8, 0                       ; 6 uses
  %i.fp = trunc i64 %i.fn to i1
  br i1 %i.fp, label %_ZN2v88internal8IsScriptENS0_6TaggedINS0_6ObjectEEE.exit.i, label %_ZN2v88internal12_GLOBAL__N_120OriginOptionsForEvalENS0_6TaggedINS0_6ObjectEEENS0_21ParsingWhileDebuggingE.exit

_ZN2v88internal8IsScriptENS0_6TaggedINS0_6ObjectEEE.exit.i: ; preds = %bb.z
  %i.fq = add nsw i64 %i.fn, -1
  %i.fr = inttoptr i64 %i.fq to ptr
  %i.fs = load atomic volatile i64, ptr %i.fr monotonic, align 8
  %i.ft = add i64 %i.fs, 11
  %i.fu = inttoptr i64 %i.ft to ptr
  %i.fv = load atomic volatile i16, ptr %i.fu monotonic, align 2
  %i.fw = icmp eq i16 %i.fv, 165
  br i1 %i.fw, label %bb.aa, label %_ZN2v88internal12_GLOBAL__N_120OriginOptionsForEvalENS0_6TaggedINS0_6ObjectEEENS0_21ParsingWhileDebuggingE.exit

bb.aa:                                            ; preds = %_ZN2v88internal8IsScriptENS0_6TaggedINS0_6ObjectEEE.exit.i
  %i.fx = add i64 %i.fn, 103
  %i.fy = inttoptr i64 %i.fx to ptr
  %i.fz = load atomic volatile i64, ptr %i.fy monotonic, align 8
  %.fr29.i = freeze i64 %i.fz                     ; 2 uses
  %i.ga = and i64 %.fr29.i, 34359738368
  %i.gb = icmp ne i64 %i.ga, 0
  %spec.select.i = or i1 %i.fo, %i.gb
  %i.gc = lshr i64 %.fr29.i, 35
  %i.gd = trunc nuw nsw i64 %i.gc to i32
  %spec.select28.i = and i32 %i.gd, 2
  br label %_ZN2v88internal12_GLOBAL__N_120OriginOptionsForEvalENS0_6TaggedINS0_6ObjectEEENS0_21ParsingWhileDebuggingE.exit

_ZN2v88internal12_GLOBAL__N_120OriginOptionsForEvalENS0_6TaggedINS0_6ObjectEEENS0_21ParsingWhileDebuggingE.exit: ; preds = %bb.z, %_ZN2v88internal8IsScriptENS0_6TaggedINS0_6ObjectEEE.exit.i, %bb.aa
  %.in.i = phi i1 [ %spec.select.i, %bb.aa ], [ %i.fo, %_ZN2v88internal8IsScriptENS0_6TaggedINS0_6ObjectEEE.exit.i ], [ %i.fo, %bb.z ]
  %i.ge = phi i32 [ %spec.select28.i, %bb.aa ], [ 0, %_ZN2v88internal8IsScriptENS0_6TaggedINS0_6ObjectEEE.exit.i ], [ 0, %bb.z ]
  %i.gf = zext i1 %.in.i to i32
  %i.gg = or disjoint i32 %i.ge, %i.gf
  %i.gh = call ptr @_ZN2v88internal9ParseInfo12CreateScriptINS0_7IsolateEEENS0_6HandleINS0_6ScriptEEEPT_NS0_12DirectHandleINS0_6StringEEENS0_17MaybeDirectHandleINS0_10FixedArrayEEENS_19ScriptOriginOptionsENS0_11NativesFlagE(ptr noundef nonnull align 8 dereferenceable(129) %18, ptr noundef nonnull %0, ptr %1, ptr null, i32 %i.gg, i32 noundef 0) #21 ; 5 uses
  %i.gi = load i64, ptr %i.gh, align 8            ; 4 uses
  %i.gj = load i64, ptr %2, align 8               ; 5 uses
  %i.gk = add i64 %i.gi, 71                       ; 3 uses
  %i.gl = inttoptr i64 %i.gk to ptr
  store atomic volatile i64 %i.gj, ptr %i.gl monotonic, align 8
  %i.gm = trunc i64 %i.gj to i1
  br i1 %i.gm, label %bb.ab, label %_ZN2v88internal6Script20set_eval_from_sharedENS0_6TaggedINS0_18SharedFunctionInfoEEENS0_16WriteBarrierModeE.exit

bb.ab:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_120OriginOptionsForEvalENS0_6TaggedINS0_6ObjectEEENS0_21ParsingWhileDebuggingE.exit
  %i.gn = and i64 %i.gi, -262144
  %i.go = inttoptr i64 %i.gn to ptr
  %i.gp = load i64, ptr %i.go, align 262144       ; 2 uses
  %i.gq = and i64 %i.gp, 32
  %.not.i.i.i.i = icmp eq i64 %i.gq, 0
  %i.gr = and i64 %i.gp, 25
  %.not38.i.i.i.i = icmp eq i64 %i.gr, 0
  br i1 %.not38.i.i.i.i, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  %i.gs = and i64 %i.gj, -262144
  %i.gt = inttoptr i64 %i.gs to ptr
  %.sroa.0.0.copyload.i28.i.i.i.i = load i64, ptr %i.gt, align 262144
  %i.gu = and i64 %.sroa.0.0.copyload.i28.i.i.i.i, 25
  %.not39.i.i.i.i = icmp eq i64 %i.gu, 0
  br i1 %.not39.i.i.i.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.gi, i64 noundef %i.gk, i64 %i.gj) #21
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %bb.ab
  br i1 %.not.i.i.i.i, label %_ZN2v88internal6Script20set_eval_from_sharedENS0_6TaggedINS0_18SharedFunctionInfoEEENS0_16WriteBarrierModeE.exit, label %bb.af, !prof !146

bb.af:                                            ; preds = %bb.ae
  call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.gi, i64 %i.gk, i64 %i.gj) #21
  br label %_ZN2v88internal6Script20set_eval_from_sharedENS0_6TaggedINS0_18SharedFunctionInfoEEENS0_16WriteBarrierModeE.exit

_ZN2v88internal6Script20set_eval_from_sharedENS0_6TaggedINS0_18SharedFunctionInfoEEENS0_16WriteBarrierModeE.exit: ; preds = %_ZN2v88internal12_GLOBAL__N_120OriginOptionsForEvalENS0_6TaggedINS0_6ObjectEEENS0_21ParsingWhileDebuggingE.exit, %bb.ae, %bb.af
  %i.gv = icmp eq i32 %7, -1
  br i1 %i.gv, label %bb.ag, label %_ZNK2v88internal11MaybeHandleINS0_18SharedFunctionInfoEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit

bb.ag:                                            ; preds = %_ZN2v88internal6Script20set_eval_from_sharedENS0_6TaggedINS0_18SharedFunctionInfoEEENS0_16WriteBarrierModeE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #21
  call void @_ZN2v88internal28DebuggableStackFrameIteratorC1EPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(128) %19, ptr noundef nonnull %0) #21
  %i.gw = getelementptr inbounds nuw i8, ptr %19, i64 96
  %i.gx = load ptr, ptr %i.gw, align 8            ; 3 uses
  %i.gy = icmp eq ptr %i.gx, null
  br i1 %i.gy, label %bb.ap, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.gz = load ptr, ptr %i.gx, align 8
  %i.ha = load ptr, ptr %i.gz, align 8
  %i.hb = call noundef i32 %i.ha(ptr noundef nonnull align 8 dereferenceable(80) %i.gx) #21, !inline_history !330
  %i.hc = add i32 %i.hb, -14
  %i.hd = icmp ult i32 %i.hc, 4
  br i1 %i.hd, label %bb.ai, label %bb.ap

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #21
  call void @_ZNK2v88internal28DebuggableStackFrameIterator16GetTopValidFrameEv(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::FrameSummary") align 8 %20, ptr noundef nonnull align 8 dereferenceable(128) %19) #21
  %i.he = load i64, ptr %i.gh, align 8            ; 4 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %20, i64 24
  %.sroa.0.0.copyload.i129 = load ptr, ptr %i.hf, align 8
  %i.hg = load i64, ptr %.sroa.0.0.copyload.i129, align 8
  %i.hh = add i64 %i.hg, 31
  %i.hi = inttoptr i64 %i.hh to ptr
  %i.hj = load atomic volatile i64, ptr %i.hi monotonic, align 8 ; 5 uses
  %i.hk = add i64 %i.he, 71                       ; 3 uses
  %i.hl = inttoptr i64 %i.hk to ptr
  store atomic volatile i64 %i.hj, ptr %i.hl monotonic, align 8
  %i.hm = trunc i64 %i.hj to i1
  br i1 %i.hm, label %bb.aj, label %_ZN2v88internal6Script20set_eval_from_sharedENS0_6TaggedINS0_18SharedFunctionInfoEEENS0_16WriteBarrierModeE.exit137

bb.aj:                                            ; preds = %bb.ai
  %i.hn = and i64 %i.he, -262144
  %i.ho = inttoptr i64 %i.hn to ptr
  %i.hp = load i64, ptr %i.ho, align 262144       ; 2 uses
  %i.hq = and i64 %i.hp, 32
  %.not.i.i.i.i133 = icmp eq i64 %i.hq, 0
  %i.hr = and i64 %i.hp, 25
  %.not38.i.i.i.i134 = icmp eq i64 %i.hr, 0
  br i1 %.not38.i.i.i.i134, label %bb.ak, label %bb.am

bb.ak:                                            ; preds = %bb.aj
  %i.hs = and i64 %i.hj, -262144
  %i.ht = inttoptr i64 %i.hs to ptr
  %.sroa.0.0.copyload.i28.i.i.i.i135 = load i64, ptr %i.ht, align 262144
  %i.hu = and i64 %.sroa.0.0.copyload.i28.i.i.i.i135, 25
  %.not39.i.i.i.i136 = icmp eq i64 %i.hu, 0
  br i1 %.not39.i.i.i.i136, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.he, i64 noundef %i.hk, i64 %i.hj) #21
  br label %bb.am

end_hunk_0
