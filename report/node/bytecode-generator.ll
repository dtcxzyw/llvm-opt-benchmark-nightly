inline.NumInlined: 7033
inline.NumDeleted: 1742
begin_hunk_0_@_ZN2v88internal11interpreter17BytecodeGenerator16GenerateBytecodeEm:bb.a

bb.h:                                             ; preds = %_ZN2v88internal11interpreter17BytecodeGenerator12ContextScopeC2EPS2_PNS0_5ScopeENS1_8RegisterE.exit
  %i.bk = call noundef ptr @_ZN2v88internal11interpreter20BytecodeArrayBuilder17AllocateJumpTableEii(ptr noundef nonnull align 8 dereferenceable(480) %i.ay, i32 noundef %i.bi, i32 noundef 0) #21 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 928
  store ptr %i.bk, ptr %i.bl, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 896
  %i.bn = load i32, ptr %i.bm, align 8            ; 2 uses
  %.not.i.i9 = icmp eq i32 %i.bn, 2147483647
  br i1 %.not.i.i9, label %bb.i, label %_ZN2v88internal11interpreter17BytecodeGenerator22BuildGeneratorPrologueEv.exit, !prof !11

bb.i:                                             ; preds = %bb.h
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.10) #23
  unreachable

_ZN2v88internal11interpreter17BytecodeGenerator22BuildGeneratorPrologueEv.exit: ; preds = %bb.h
  %i.bo = call noundef nonnull align 8 dereferenceable(480) ptr @_ZN2v88internal11interpreter20BytecodeArrayBuilder22SwitchOnGeneratorStateENS1_8RegisterEPNS1_17BytecodeJumpTableE(ptr noundef nonnull align 8 dereferenceable(480) %i.ay, i32 %i.bn, ptr noundef %i.bk) #21 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %_ZN2v88internal11interpreter17BytecodeGenerator22BuildGeneratorPrologueEv.exit, %_ZN2v88internal11interpreter17BytecodeGenerator12ContextScopeC2EPS2_PNS0_5ScopeENS1_8RegisterE.exit
  %i.bp = load ptr, ptr %i.s, align 8             ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 116
  %i.br = load i32, ptr %i.bq, align 4
  %i.bs = icmp sgt i32 %i.br, 0
  br i1 %i.bs, label %_ZN2v88internal11interpreter12_GLOBAL__N_126NeedsContextInitializationEPNS0_16DeclarationScopeE.exit, label %_ZN2v88internal11interpreter12_GLOBAL__N_126NeedsContextInitializationEPNS0_16DeclarationScopeE.exit.thread

_ZN2v88internal11interpreter12_GLOBAL__N_126NeedsContextInitializationEPNS0_16DeclarationScopeE.exit: ; preds = %bb.j
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bp, i64 120
  %i.bu = load i8, ptr %i.bt, align 8
  switch i8 %i.bu, label %bb.k [
    i8 5, label %_ZN2v88internal11interpreter12_GLOBAL__N_126NeedsContextInitializationEPNS0_16DeclarationScopeE.exit.thread
    i8 1, label %_ZN2v88internal11interpreter12_GLOBAL__N_126NeedsContextInitializationEPNS0_16DeclarationScopeE.exit.thread
    i8 0, label %_ZN2v88internal11interpreter12_GLOBAL__N_126NeedsContextInitializationEPNS0_16DeclarationScopeE.exit.thread
  ]

bb.k:                                             ; preds = %_ZN2v88internal11interpreter12_GLOBAL__N_126NeedsContextInitializationEPNS0_16DeclarationScopeE.exit
  call void @_ZN2v88internal11interpreter17BytecodeGenerator30BuildNewLocalActivationContextEv(ptr noundef nonnull align 8 dereferenceable(976) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.bv = load ptr, ptr %i.s, align 8
  store ptr %0, ptr %4, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.bv, ptr %i.bw, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.by = load ptr, ptr %i.w, align 8             ; 4 uses
  store ptr %i.by, ptr %i.bx, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  store i32 -6, ptr %i.bz, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %4, i64 28 ; 2 uses
  store i32 0, ptr %i.ca, align 4
  %.not.i10 = icmp eq ptr %i.by, null
  br i1 %.not.i10, label %_ZN2v88internal11interpreter17BytecodeGenerator12ContextScopeC2EPS2_PNS0_5ScopeENS1_8RegisterE.exit14, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 28
  %i.cc = load i32, ptr %i.cb, align 4
  %i.cd = add nsw i32 %i.cc, 1
  store i32 %i.cd, ptr %i.ca, align 4
  %i.ce = load i32, ptr %i.aw, align 8            ; 4 uses
  %i.cf = add nsw i32 %i.ce, 1                    ; 2 uses
  store i32 %i.cf, ptr %i.aw, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 324 ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 4
  %i.ci = call i32 @llvm.smax.i32(i32 %i.cf, i32 %i.ch)
  store i32 %i.ci, ptr %i.cg, align 4
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.ck = load ptr, ptr %i.cj, align 8            ; 3 uses
  %.not.i.i11 = icmp eq ptr %i.ck, null
  br i1 %.not.i.i11, label %_ZN2v88internal11interpreter25BytecodeRegisterAllocator11NewRegisterEv.exit.i12, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cl = load ptr, ptr %i.ck, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.cn = load ptr, ptr %i.cm, align 8
  call void %i.cn(ptr noundef nonnull align 8 dereferenceable(8) %i.ck, i32 %i.ce) #21, !inline_history !12
  br label %_ZN2v88internal11interpreter25BytecodeRegisterAllocator11NewRegisterEv.exit.i12

_ZN2v88internal11interpreter25BytecodeRegisterAllocator11NewRegisterEv.exit.i12: ; preds = %bb.m, %bb.l
  %i.co = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  store i32 %i.ce, ptr %i.co, align 8
  %i.cp = call noundef nonnull align 8 dereferenceable(480) ptr @_ZN2v88internal11interpreter20BytecodeArrayBuilder11PushContextENS1_8RegisterE(ptr noundef nonnull align 8 dereferenceable(480) %i.ay, i32 %i.ce) #21 ; 0 uses
  br label %_ZN2v88internal11interpreter17BytecodeGenerator12ContextScopeC2EPS2_PNS0_5ScopeENS1_8RegisterE.exit14

_ZN2v88internal11interpreter17BytecodeGenerator12ContextScopeC2EPS2_PNS0_5ScopeENS1_8RegisterE.exit14: ; preds = %bb.k, %_ZN2v88internal11interpreter25BytecodeRegisterAllocator11NewRegisterEv.exit.i12
  store ptr %4, ptr %i.w, align 8
  call void @_ZN2v88internal11interpreter17BytecodeGenerator41BuildLocalActivationContextInitializationEv(ptr noundef nonnull align 8 dereferenceable(976) %0)
  call void @_ZN2v88internal11interpreter17BytecodeGenerator20GenerateBytecodeBodyEv(ptr noundef nonnull align 8 dereferenceable(976) %0)
  %i.cq = load ptr, ptr %i.bx, align 8            ; 2 uses
  %.not.i15 = icmp eq ptr %i.cq, null
  br i1 %.not.i15, label %_ZN2v88internal11interpreter17BytecodeGenerator12ContextScopeD2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZN2v88internal11interpreter17BytecodeGenerator12ContextScopeC2EPS2_PNS0_5ScopeENS1_8RegisterE.exit14
  %i.cr = load ptr, ptr %4, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 32
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 24
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.ct, align 8
  %i.cu = call noundef nonnull align 8 dereferenceable(480) ptr @_ZN2v88internal11interpreter20BytecodeArrayBuilder10PopContextENS1_8RegisterE(ptr noundef nonnull align 8 dereferenceable(480) %i.cs, i32 %.sroa.0.0.copyload.i.i) #21 ; 0 uses
  %i.cv = load ptr, ptr %i.bx, align 8            ; 2 uses
  %.sroa.0.0.copyload.i = load i32, ptr %i.bz, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 24
  store i32 %.sroa.0.0.copyload.i, ptr %i.cw, align 8
  br label %_ZN2v88internal11interpreter17BytecodeGenerator12ContextScopeD2Ev.exit

_ZN2v88internal11interpreter17BytecodeGenerator12ContextScopeD2Ev.exit: ; preds = %_ZN2v88internal11interpreter17BytecodeGenerator12ContextScopeC2EPS2_PNS0_5ScopeENS1_8RegisterE.exit14, %bb.n
  %i.cx = phi ptr [ %i.cv, %bb.n ], [ null, %_ZN2v88internal11interpreter17BytecodeGenerator12ContextScopeC2EPS2_PNS0_5ScopeENS1_8RegisterE.exit14 ]
  %i.cy = load ptr, ptr %4, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 880
  store ptr %i.cx, ptr %i.cz, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %bb.o

_ZN2v88internal11interpreter12_GLOBAL__N_126NeedsContextInitializationEPNS0_16DeclarationScopeE.exit.thread: ; preds = %_ZN2v88internal11interpreter12_GLOBAL__N_126NeedsContextInitializationEPNS0_16DeclarationScopeE.exit, %_ZN2v88internal11interpreter12_GLOBAL__N_126NeedsContextInitializationEPNS0_16DeclarationScopeE.exit, %_ZN2v88internal11interpreter12_GLOBAL__N_126NeedsContextInitializationEPNS0_16DeclarationScopeE.exit, %bb.j
  call void @_ZN2v88internal11interpreter17BytecodeGenerator20GenerateBytecodeBodyEv(ptr noundef nonnull align 8 dereferenceable(976) %0)
  br label %bb.o

bb.o:                                             ; preds = %_ZN2v88internal11interpreter12_GLOBAL__N_126NeedsContextInitializationEPNS0_16DeclarationScopeE.exit.thread, %_ZN2v88internal11interpreter17BytecodeGenerator12ContextScopeD2Ev.exit
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 784
  %i.db = load ptr, ptr %i.da, align 8            ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 792
  %i.dd = load ptr, ptr %i.dc, align 8            ; 2 uses
  %.not826 = icmp eq ptr %i.db, %i.dd
  br i1 %.not826, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.o
  %i.de = load i32, ptr %i.aw, align 8
  store i32 %i.ax, ptr %i.aw, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.dg = load ptr, ptr %i.df, align 8            ; 3 uses
  %.not.i.i17 = icmp eq ptr %i.dg, null
  br i1 %.not.i.i17, label %_ZN2v88internal11interpreter17BytecodeGenerator23RegisterAllocationScopeD2Ev.exit, label %bb.p

bb.p:                                             ; preds = %._crit_edge
  %i.dh = sub nsw i32 %i.de, %i.ax
  %.sroa.2.0.insert.ext.i.i = zext i32 %i.dh to i64
  %.sroa.2.0.insert.shift.i.i = shl nuw i64 %.sroa.2.0.insert.ext.i.i, 32
  %.sroa.0.0.insert.ext.i.i = zext i32 %i.ax to i64
  %.sroa.0.0.insert.insert.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i, %.sroa.0.0.insert.ext.i.i
  %i.di = load ptr, ptr %i.dg, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 32
  %i.dk = load ptr, ptr %i.dj, align 8
  call void %i.dk(ptr noundef nonnull align 8 dereferenceable(8) %i.dg, i64 %.sroa.0.0.insert.insert.i.i) #21, !inline_history !13
  br label %_ZN2v88internal11interpreter17BytecodeGenerator23RegisterAllocationScopeD2Ev.exit

_ZN2v88internal11interpreter17BytecodeGenerator23RegisterAllocationScopeD2Ev.exit: ; preds = %._crit_edge, %bb.p
  %i.dl = load ptr, ptr %i.ar, align 8
  %i.dm = load ptr, ptr %i.as, align 8
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 872
  store ptr %i.dm, ptr %i.dn, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %i.do = load ptr, ptr %i.v, align 8             ; 2 uses
  %.not.i18 = icmp eq ptr %i.do, null
  br i1 %.not.i18, label %_ZN2v88internal11interpreter17BytecodeGenerator12ContextScopeD2Ev.exit22, label %bb.q

bb.q:                                             ; preds = %_ZN2v88internal11interpreter17BytecodeGenerator23RegisterAllocationScopeD2Ev.exit
  %i.dp = load ptr, ptr %2, align 8
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 32
  %i.dr = getelementptr inbounds nuw i8, ptr %i.do, i64 24
  %.sroa.0.0.copyload.i.i19 = load i32, ptr %i.dr, align 8
  %i.ds = call noundef nonnull align 8 dereferenceable(480) ptr @_ZN2v88internal11interpreter20BytecodeArrayBuilder10PopContextENS1_8RegisterE(ptr noundef nonnull align 8 dereferenceable(480) %i.dq, i32 %.sroa.0.0.copyload.i.i19) #21 ; 0 uses
  %i.dt = load ptr, ptr %i.v, align 8             ; 2 uses
  %.sroa.0.0.copyload.i20 = load i32, ptr %i.y, align 8
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 24
  store i32 %.sroa.0.0.copyload.i20, ptr %i.du, align 8
  br label %_ZN2v88internal11interpreter17BytecodeGenerator12ContextScopeD2Ev.exit22

_ZN2v88internal11interpreter17BytecodeGenerator12ContextScopeD2Ev.exit22: ; preds = %_ZN2v88internal11interpreter17BytecodeGenerator23RegisterAllocationScopeD2Ev.exit, %bb.q
  %i.dv = phi ptr [ %i.dt, %bb.q ], [ null, %_ZN2v88internal11interpreter17BytecodeGenerator23RegisterAllocationScopeD2Ev.exit ]
  %i.dw = load ptr, ptr %2, align 8
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 880
  store ptr %i.dv, ptr %i.dx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  ret void

.lr.ph:                                           ; preds = %bb.o, %.lr.ph
  %.027 = phi ptr [ %i.ec, %.lr.ph ], [ %i.db, %bb.o ] ; 2 uses
  %i.dy = load ptr, ptr %.027, align 8
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 42 ; 2 uses
  %i.ea = load i16, ptr %i.dz, align 2
  %i.eb = and i16 %i.ea, -256
  store i16 %i.eb, ptr %i.dz, align 2
  %i.ec = getelementptr inbounds nuw i8, ptr %.027, i64 8 ; 2 uses
  %.not8 = icmp eq ptr %i.ec, %i.dd
  br i1 %.not8, label %._crit_edge, label %.lr.ph
}

declare noundef i32 @_ZN2v84base21RandomNumberGenerator7NextIntEi(ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal11interpreter17BytecodeGenerator25AllocateTopLevelRegistersEv(ptr noundef nonnull align 8 dereferenceable(976) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef zeroext i8 @_ZNK2v88internal15FunctionLiteral4kindEv(ptr noundef nonnull align 8 dereferenceable(88) %i.d) #21 ; 2 uses
  %i.f = add i8 %i.e, -12
  %or.cond.i = icmp ult i8 %i.f, 10
  %i.g = add i8 %i.e, -1
  %i.h = icmp ult i8 %i.g, 2
  %i.i = or i1 %or.cond.i, %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  br i1 %i.i, label %_ZNK2v88internal16DeclarationScope20generator_object_varEv.exit, label %bb.e

_ZNK2v88internal16DeclarationScope20generator_object_varEv.exit: ; preds = %bb.a
  %1 = getelementptr inbounds nuw i8, ptr %i.k, i64 208
  %2 = load ptr, ptr %1, align 8, !nonnull !6, !noundef !6
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %4 = load ptr, ptr %3, align 8                  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.m = load i16, ptr %i.l, align 8
  %i.n = and i16 %i.m, 896
  %i.o = icmp eq i16 %i.n, 256
  br i1 %i.o, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZNK2v88internal16DeclarationScope20generator_object_varEv.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.r = load i32, ptr %i.q, align 8
  %i.s = tail call i32 @_ZNK2v88internal11interpreter20BytecodeArrayBuilder5LocalEi(ptr noundef nonnull align 8 dereferenceable(480) %i.p, i32 noundef %i.r) #21
  br label %.sink.split

bb.c:                                             ; preds = %_ZNK2v88internal16DeclarationScope20generator_object_varEv.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  %i.u = load i32, ptr %i.t, align 8              ; 4 uses
  %i.v = add nsw i32 %i.u, 1                      ; 2 uses
  store i32 %i.v, ptr %i.t, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 324 ; 2 uses
  %i.x = load i32, ptr %i.w, align 4
  %i.y = tail call i32 @llvm.smax.i32(i32 %i.v, i32 %i.x)
  store i32 %i.y, ptr %i.w, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.aa = load ptr, ptr %i.z, align 8             ; 3 uses
  %.not.i = icmp eq ptr %i.aa, null
  br i1 %.not.i, label %.sink.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(8) %i.aa, i32 %i.u) #21, !inline_history !14
  br label %.sink.split

bb.e:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %i.k, i64 184
  %i.af = load ptr, ptr %i.ae, align 8            ; 3 uses
  %.not = icmp eq ptr %i.af, null
  br i1 %.not, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  %i.ah = load i16, ptr %i.ag, align 8
  %i.ai = and i16 %i.ah, 896
  %i.aj = icmp eq i16 %i.ai, 256
  br i1 %i.aj, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %i.am = load i32, ptr %i.al, align 8
  %i.an = tail call i32 @_ZNK2v88internal11interpreter20BytecodeArrayBuilder5LocalEi(ptr noundef nonnull align 8 dereferenceable(480) %i.ak, i32 noundef %i.am) #21
  br label %.sink.split

bb.h:                                             ; preds = %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 8            ; 4 uses
  %i.aq = add nsw i32 %i.ap, 1                    ; 2 uses
  store i32 %i.aq, ptr %i.ao, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 324 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 4
  %i.at = tail call i32 @llvm.smax.i32(i32 %i.aq, i32 %i.as)
  store i32 %i.at, ptr %i.ar, align 4
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.av = load ptr, ptr %i.au, align 8            ; 3 uses
  %.not.i8 = icmp eq ptr %i.av, null
  br i1 %.not.i8, label %.sink.split, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8
  tail call void %i.ay(ptr noundef nonnull align 8 dereferenceable(8) %i.av, i32 %i.ap) #21, !inline_history !14
  br label %.sink.split

.sink.split:                                      ; preds = %bb.i, %bb.h, %bb.d, %bb.c, %bb.b, %bb.g
  %.sink = phi i32 [ %i.an, %bb.g ], [ %i.u, %bb.d ], [ %i.s, %bb.b ], [ %i.u, %bb.c ], [ %i.ap, %bb.h ], [ %i.ap, %bb.i ]
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 896
  store i32 %.sink, ptr %i.az, align 8
  br label %bb.j

bb.j:                                             ; preds = %.sink.split, %bb.e
  ret void
}

declare void @_ZN2v88internal11interpreter20BytecodeArrayBuilder31EmitFunctionStartSourcePositionEi(ptr noundef nonnull align 8 dereferenceable(480), i32 noundef) local_unnamed_addr #2

declare noundef i32 @_ZNK2v88internal15FunctionLiteral14start_positionEv(ptr noundef nonnull align 8 dereferenceable(88)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal11interpreter17BytecodeGenerator22BuildGeneratorPrologueEv(ptr noundef nonnull align 8 dereferenceable(976) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load i32, ptr %i.f, align 8
  %i.h = tail call noundef ptr @_ZN2v88internal11interpreter20BytecodeArrayBuilder17AllocateJumpTableEii(ptr noundef nonnull align 8 dereferenceable(480) %i.a, i32 noundef %i.g, i32 noundef 0) #21 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 928
  store ptr %i.h, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 896
  %i.k = load i32, ptr %i.j, align 8              ; 2 uses
  %.not.i = icmp eq i32 %i.k, 2147483647
  br i1 %.not.i, label %bb.b, label %_ZNK2v88internal11interpreter17BytecodeGenerator16generator_objectEv.exit, !prof !11

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.10) #23
  unreachable

_ZNK2v88internal11interpreter17BytecodeGenerator16generator_objectEv.exit: ; preds = %bb.a
  %i.l = tail call noundef nonnull align 8 dereferenceable(480) ptr @_ZN2v88internal11interpreter20BytecodeArrayBuilder22SwitchOnGeneratorStateENS1_8RegisterEPNS1_17BytecodeJumpTableE(ptr noundef nonnull align 8 dereferenceable(480) %i.a, i32 %i.k, ptr noundef %i.h) #21 ; 0 uses
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal11interpreter17BytecodeGenerator30BuildNewLocalActivationContextEv(ptr noundef nonnull align 8 dereferenceable(976) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.v8::internal::interpreter::BytecodeGenerator::ValueResultScope", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 888 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  store ptr %i.b, ptr %1, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store ptr %0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8              ; 6 uses
  store i32 %i.f, ptr %i.d, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i8 1, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 25
  store i8 -1, ptr %i.h, align 1
  store ptr %1, ptr %i.a, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.j = load ptr, ptr %i.i, align 8              ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 116
  %i.l = load i32, ptr %i.k, align 4
  %i.m = add nsw i32 %i.l, -2                     ; 3 uses
  %i.n = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1411), align 1, !range !5, !noundef !6
  %i.o = trunc nuw i8 %i.n to i1
  %i.p = select i1 %i.o, i32 10, i32 16379
  %.not = icmp sgt i32 %i.m, %i.p
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 120
  %i.r = load i8, ptr %i.q, align 8
  switch i8 %i.r, label %bb.e [
    i8 3, label %bb.c
    i8 4, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.t = call noundef nonnull align 8 dereferenceable(480) ptr @_ZN2v88internal11interpreter20BytecodeArrayBuilder17CreateEvalContextEPKNS0_5ScopeEi(ptr noundef nonnull align 8 dereferenceable(480) %i.s, ptr noundef nonnull %i.j, i32 noundef %i.m) #21 ; 0 uses
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.v = call noundef nonnull align 8 dereferenceable(480) ptr @_ZN2v88internal11interpreter20BytecodeArrayBuilder21CreateFunctionContextEPKNS0_5ScopeEi(ptr noundef nonnull align 8 dereferenceable(480) %i.u, ptr noundef nonnull %i.j, i32 noundef %i.m) #21 ; 0 uses
  br label %bb.i

bb.e:                                             ; preds = %bb.b
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2) #23
  unreachable

bb.f:                                             ; preds = %bb.a
  %i.w = add nsw i32 %i.f, 1                      ; 2 uses
  store i32 %i.w, ptr %i.e, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 324 ; 2 uses
  %i.y = load i32, ptr %i.x, align 4
  %i.z = call i32 @llvm.smax.i32(i32 %i.w, i32 %i.y)
  store i32 %i.z, ptr %i.x, align 4
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8            ; 3 uses
  %.not.i = icmp eq ptr %i.ab, null
  br i1 %.not.i, label %_ZN2v88internal11interpreter25BytecodeRegisterAllocator11NewRegisterEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8
  call void %i.ae(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, i32 %i.f) #21, !inline_history !14
  br label %_ZN2v88internal11interpreter25BytecodeRegisterAllocator11NewRegisterEv.exit

_ZN2v88internal11interpreter25BytecodeRegisterAllocator11NewRegisterEv.exit: ; preds = %bb.f, %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ag = call noundef nonnull align 8 dereferenceable(480) ptr @_ZN2v88internal11interpreter20BytecodeArrayBuilder11LoadLiteralEPKNS0_5ScopeE(ptr noundef nonnull align 8 dereferenceable(480) %i.af, ptr noundef nonnull %i.j) #21
  %i.ah = call noundef nonnull align 8 dereferenceable(480) ptr @_ZN2v88internal11interpreter20BytecodeArrayBuilder26StoreAccumulatorInRegisterENS1_8RegisterE(ptr noundef nonnull align 8 dereferenceable(480) %i.ag, i32 %i.f) #21
  %i.ai = call noundef nonnull align 8 dereferenceable(480) ptr @_ZN2v88internal11interpreter20BytecodeArrayBuilder11CallRuntimeENS0_7Runtime10FunctionIdENS1_8RegisterE(ptr noundef nonnull align 8 dereferenceable(480) %i.ah, i32 noundef 376, i32 %i.f) #21 ; 0 uses
  %i.aj = load ptr, ptr %i.aa, align 8            ; 3 uses
  %.not.i13 = icmp eq ptr %i.aj, null
  br i1 %.not.i13, label %_ZN2v88internal11interpreter25BytecodeRegisterAllocator15ReleaseRegisterENS1_8RegisterE.exit, label %bb.h

bb.h:                                             ; preds = %_ZN2v88internal11interpreter25BytecodeRegisterAllocator11NewRegisterEv.exit
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 40
  %i.am = load ptr, ptr %i.al, align 8
  call void %i.am(ptr noundef nonnull align 8 dereferenceable(8) %i.aj, i32 %i.f) #21, !inline_history !15
  br label %_ZN2v88internal11interpreter25BytecodeRegisterAllocator15ReleaseRegisterENS1_8RegisterE.exit

_ZN2v88internal11interpreter25BytecodeRegisterAllocator15ReleaseRegisterENS1_8RegisterE.exit: ; preds = %_ZN2v88internal11interpreter25BytecodeRegisterAllocator11NewRegisterEv.exit, %bb.h
  %i.an = load i32, ptr %i.e, align 8
  %i.ao = add nsw i32 %i.an, -1
  store i32 %i.ao, ptr %i.e, align 8
  br label %bb.i

end_hunk_0
