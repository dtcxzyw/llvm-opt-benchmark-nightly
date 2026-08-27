Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/X86ISelLoweringCall?download=true
inline.NumInlined: 4058
inline.NumDeleted: 1549
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZNK4llvm17X86TargetLowering15LowerCallResultENS_7SDValueES1_jbRKNS_15SmallVectorImplINS_3ISD8InputArgEEERKNS_5SDLocERNS_12SelectionDAGERNS2_IS1_EEPj:bb.a
_ZNK4llvm11CCValAssign9getLocRegEv.exit181:       ; preds = %bb.j
  %.sroa.0.0.copyload.i180 = load i32, ptr %i.bg, align 8, !tbaa !178 ; 2 uses
  %i.cl = lshr i32 %.sroa.0.0.copyload.i180, 3    ; 2 uses
  %i.cm = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm25X86MCRegisterClassStorageE, i64 2194), align 2, !tbaa !653
  %i.cn = zext i16 %i.cm to i32
  %.not.i = icmp samesign ult i32 %i.cl, %i.cn
  br i1 %.not.i, label %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit, label %.critedge.thread.thread

_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit: ; preds = %_ZNK4llvm11CCValAssign9getLocRegEv.exit181
  %i.co = and i32 %.sroa.0.0.copyload.i180, 7
  %i.cp = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm25X86MCRegisterClassStorageE, i64 2180), align 4, !tbaa !655
  %i.cq = zext i32 %i.cp to i64
  %i.cr = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm25X86MCRegisterClassStorageE, i64 2176), i64 %i.cq
  %i.cs = zext nneg i32 %i.cl to i64
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.cs
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !187
  %i.cv = zext i8 %i.cu to i32
  %i.cw = shl nuw nsw i32 1, %i.co
  %i.cx = and i32 %i.cw, %i.cv
  %.not335 = icmp eq i32 %i.cx, 0
  br i1 %.not335, label %.critedge.thread.thread, label %bb.l

bb.l:                                             ; preds = %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit
  %.val172 = load ptr, ptr %i.h, align 8, !tbaa !431
  %.val173 = load ptr, ptr %i.j, align 8, !tbaa !613
  %.val172.val = load ptr, ptr %.val172, align 8, !tbaa !306
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #24
  store i8 1, ptr %i.o, align 1, !tbaa !599
  store ptr @.str.5, ptr %24, align 8, !tbaa !187
  store i8 3, ptr %i.p, align 8, !tbaa !596
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #24
  call void @_ZN4llvm18DiagnosticLocationC1ERKNS_8DebugLocE(ptr noundef nonnull align 8 dereferenceable(16) %25, ptr noundef nonnull align 8 dereferenceable(12) %8) #24
  store i32 25, ptr %i.q, align 8, !tbaa !656
  store i8 0, ptr %i.r, align 4, !tbaa !659
  store ptr %.val172.val, ptr %i.s, align 8, !tbaa !660
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, ptr noundef nonnull align 8 dereferenceable(16) %25, i64 16, i1 false), !tbaa.struct !661
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm25DiagnosticInfoUnsupportedE, i64 16), ptr %23, align 8, !tbaa !175
  store ptr %24, ptr %i.u, align 8, !tbaa !664
  call void @_ZN4llvm11LLVMContext8diagnoseERKNS_14DiagnosticInfoE(ptr noundef nonnull align 8 dereferenceable(8) %.val173, ptr noundef nonnull align 8 dereferenceable(13) %23) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #24
  %i.cy = load i8, ptr %i.cj, align 8, !tbaa !644
  %.not.i.i.i182 = icmp eq i8 %i.cy, 0
  br i1 %.not.i.i.i182, label %.critedge2.thread.sink.split, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @abort() #25
  unreachable

.critedge:                                        ; preds = %.loopexit
  %.not336 = icmp eq i32 %i.ch, 1
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !tbaa !644
  %i.cz = icmp eq i8 %.pre, 0                     ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.bg, i64 8 ; 2 uses
  br i1 %.not336, label %.critedge.thread, label %.critedge2

.critedge.thread.thread:                          ; preds = %_ZNK4llvm11CCValAssign9getLocRegEv.exit181, %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit
  %i.db = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  br label %_ZNK4llvm11CCValAssign9getLocRegEv.exit188

.critedge.thread:                                 ; preds = %.critedge
  br i1 %i.cz, label %_ZNK4llvm11CCValAssign9getLocRegEv.exit188, label %bb.n

bb.n:                                             ; preds = %.critedge.thread
  call void @abort() #25
  unreachable

_ZNK4llvm11CCValAssign9getLocRegEv.exit188:       ; preds = %.critedge.thread.thread, %.critedge.thread
  %i.dc = phi ptr [ %i.db, %.critedge.thread.thread ], [ %i.da, %.critedge.thread ]
  %.sroa.0.0.copyload.i187 = load i32, ptr %i.bg, align 8, !tbaa !178 ; 2 uses
  %i.dd = lshr i32 %.sroa.0.0.copyload.i187, 3    ; 2 uses
  %i.de = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm25X86MCRegisterClassStorageE, i64 4690), align 2, !tbaa !653
  %i.df = zext i16 %i.de to i32
  %.not.i189 = icmp samesign ult i32 %i.dd, %i.df
  br i1 %.not.i189, label %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit191, label %.critedge2.thread

_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit191: ; preds = %_ZNK4llvm11CCValAssign9getLocRegEv.exit188
  %i.dg = and i32 %.sroa.0.0.copyload.i187, 7
  %i.dh = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm25X86MCRegisterClassStorageE, i64 4676), align 4, !tbaa !655
  %i.di = zext i32 %i.dh to i64
  %i.dj = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm25X86MCRegisterClassStorageE, i64 4672), i64 %i.di
  %i.dk = zext nneg i32 %i.dd to i64
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.dk
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !187
  %i.dn = zext i8 %i.dm to i32
  %i.do = shl nuw nsw i32 1, %i.dg
  %i.dp = and i32 %i.do, %i.dn
  %i.dq = icmp ne i32 %i.dp, 0
  %.not.i.i192 = icmp eq i16 %.sroa.0.0.copyload.i, 15
  %or.cond = select i1 %i.dq, i1 %.not.i.i192, i1 false
  br i1 %or.cond, label %bb.o, label %.critedge2.thread

bb.o:                                             ; preds = %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit191
  %.val = load ptr, ptr %i.h, align 8, !tbaa !431
  %.val171 = load ptr, ptr %i.j, align 8, !tbaa !613
  %.val.val = load ptr, ptr %.val, align 8, !tbaa !306
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #24
  store i8 1, ptr %i.v, align 1, !tbaa !599
  store ptr @.str.6, ptr %21, align 8, !tbaa !187
  store i8 3, ptr %i.w, align 8, !tbaa !596
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #24
  call void @_ZN4llvm18DiagnosticLocationC1ERKNS_8DebugLocE(ptr noundef nonnull align 8 dereferenceable(16) %22, ptr noundef nonnull align 8 dereferenceable(12) %8) #24
  store i32 25, ptr %i.x, align 8, !tbaa !656
  store i8 0, ptr %i.y, align 4, !tbaa !659
  store ptr %.val.val, ptr %i.z, align 8, !tbaa !660
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull align 8 dereferenceable(16) %22, i64 16, i1 false), !tbaa.struct !661
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm25DiagnosticInfoUnsupportedE, i64 16), ptr %20, align 8, !tbaa !175
  store ptr %21, ptr %i.ab, align 8, !tbaa !664
  call void @_ZN4llvm11LLVMContext8diagnoseERKNS_14DiagnosticInfoE(ptr noundef nonnull align 8 dereferenceable(8) %.val171, ptr noundef nonnull align 8 dereferenceable(13) %20) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #24
  %i.dr = load i8, ptr %i.dc, align 8, !tbaa !644
  %.not.i.i.i193 = icmp eq i8 %i.dr, 0
  br i1 %.not.i.i.i193, label %.critedge2.thread.sink.split, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @abort() #25
  unreachable

.critedge2.thread.sink.split:                     ; preds = %bb.o, %bb.l
  %.sroa.0.0.copyload.i194 = load i32, ptr %i.bg, align 8, !tbaa !178
  %i.ds = icmp eq i32 %.sroa.0.0.copyload.i194, 136
  %.403 = select i1 %i.ds, i32 104, i32 103
  store i32 %.403, ptr %i.bg, align 8, !tbaa !178
  br label %.critedge2.thread

.critedge2.thread:                                ; preds = %.critedge2.thread.sink.split, %_ZNK4llvm11CCValAssign9getLocRegEv.exit188, %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit191
  %i.dt = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  br label %_ZNK4llvm11CCValAssign9getLocRegEv.exit200

.critedge2:                                       ; preds = %.critedge
  br i1 %i.cz, label %_ZNK4llvm11CCValAssign9getLocRegEv.exit200, label %bb.q

bb.q:                                             ; preds = %.critedge2
  call void @abort() #25
  unreachable

_ZNK4llvm11CCValAssign9getLocRegEv.exit200:       ; preds = %.critedge2.thread, %.critedge2
  %i.du = phi ptr [ %i.dt, %.critedge2.thread ], [ %i.da, %.critedge2 ] ; 3 uses
  %.sroa.0.0.copyload.i199 = load i32, ptr %i.bg, align 8, !tbaa !178
  %.sroa.0.0.copyload.i199.off = add i32 %.sroa.0.0.copyload.i199, -103
  %switch = icmp ult i32 %.sroa.0.0.copyload.i199.off, 2
  br i1 %switch, label %.thread, label %.thread381

.thread:                                          ; preds = %_ZNK4llvm11CCValAssign9getLocRegEv.exit200
  %i.dv = getelementptr inbounds nuw i8, ptr %i.bg, i64 22
  %.sroa.0.0.copyload.i204 = load i16, ptr %i.dv, align 2, !tbaa !8
  %i.dw = call noundef zeroext i1 @_ZNK4llvm17X86TargetLowering22isScalarFPTypeInSSERegENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(518472) %0, i16 %.sroa.0.0.copyload.i204, ptr null) #24
  br i1 %i.dw, label %bb.r, label %bb.u

bb.r:                                             ; preds = %.thread
  %i.dx = load ptr, ptr %i.c, align 8, !tbaa !15, !nonnull !53, !align !54
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 512
  %i.dz = load i8, ptr %i.dy, align 8, !tbaa !170, !range !169, !noundef !53
  %i.ea = trunc nuw i8 %i.dz to i1
  br i1 %i.ea, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @_ZN4llvm18report_fatal_errorEPKcb(ptr noundef nonnull @.str.7, i1 noundef zeroext true) #25
  unreachable

bb.t:                                             ; preds = %bb.r
  %.sroa.0.0.copyload.i205 = load i16, ptr %i.bh, align 8, !tbaa !8
  %.not.i206 = icmp ne i16 %.sroa.0.0.copyload.i205, 16
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %.thread
  %.sroa.0302.0 = phi i16 [ 16, %bb.t ], [ %.sroa.0.0.copyload.i, %.thread ] ; 2 uses
  %.0167 = phi i1 [ %.not.i206, %bb.t ], [ false, %.thread ] ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.bg, i64 20 ; 4 uses
  %i.ec = load i8, ptr %i.eb, align 4
  %i.ed = trunc i8 %i.ec to i1
  br i1 %i.ed, label %bb.y, label %bb.v

.thread381:                                       ; preds = %_ZNK4llvm11CCValAssign9getLocRegEv.exit200
  %i.ee = getelementptr inbounds nuw i8, ptr %i.bg, i64 20 ; 3 uses
  %i.ef = load i8, ptr %i.ee, align 4
  %i.eg = trunc i8 %i.ef to i1
  br i1 %i.eg, label %bb.y, label %.thread388

bb.v:                                             ; preds = %bb.u
  %i.eh = load i8, ptr %i.du, align 8, !tbaa !644
  %.not.i.i.i207 = icmp eq i8 %i.eh, 0
  br i1 %.not.i.i.i207, label %_ZNK4llvm11CCValAssign9getLocRegEv.exit209, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @abort() #25
  unreachable

_ZNK4llvm11CCValAssign9getLocRegEv.exit209:       ; preds = %bb.v
  %.sroa.0.0.copyload.i208 = load i32, ptr %i.bg, align 8, !tbaa !178
  %.sroa.0317.0.copyload = load ptr, ptr %27, align 8, !tbaa !648 ; 2 uses
  %i.ei = load i64, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %17)
  call void @llvm.lifetime.start.p0(ptr nonnull %19)
  store i16 249, ptr %17, align 8, !tbaa !610
  store ptr null, ptr %i.ag, align 8, !tbaa !652
  %i.ej = call { ptr, i32 } @_ZN4llvm12SelectionDAG9getVTListENS_3EVTES1_S1_(ptr noundef nonnull align 8 dereferenceable(920) %9, i16 %.sroa.0302.0, ptr null, i16 1, ptr null, ptr noundef nonnull byval(%"struct.llvm::EVT") align 8 %17) #24 ; 2 uses
  %i.ek = extractvalue { ptr, i32 } %i.ej, 0
  %i.el = extractvalue { ptr, i32 } %i.ej, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #24
  store ptr %.sroa.062.0.copyload310362, ptr %18, align 16, !tbaa !648
  store i32 %.sroa.2164.0.copyload312361, ptr %.sroa.220.0..sroa_idx.i, align 8, !tbaa !178
  %i.em = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getRegisterENS_8RegisterENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %9, i32 %.sroa.0.0.copyload.i208, i16 %.sroa.0302.0, ptr null) #24 ; 2 uses
  %.fca.0.extract3.i = extractvalue { ptr, i32 } %i.em, 0
  %.fca.1.extract4.i = extractvalue { ptr, i32 } %i.em, 1
  store ptr %.fca.0.extract3.i, ptr %i.ah, align 16
  store i32 %.fca.1.extract4.i, ptr %.sroa.26.0..sroa_idx.i, align 8
  store ptr %.sroa.0317.0.copyload, ptr %i.ai, align 16, !tbaa !648
  %.sroa.5315.0.extract.trunc = trunc i64 %i.ei to i32
  store i32 %.sroa.5315.0.extract.trunc, ptr %.sroa.5315.0..sroa_idx316, align 8, !tbaa !178
  %.not.i210 = icmp eq ptr %.sroa.0317.0.copyload, null
  %i.en = select i1 %.not.i210, i64 2, i64 3
  store ptr %18, ptr %19, align 8, !tbaa !674
  store i64 %i.en, ptr %i.aj, align 8, !tbaa !677
  %i.eo = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_8SDVTListENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %9, i32 noundef 992, ptr noundef nonnull align 8 dereferenceable(12) %8, ptr %i.ek, i32 %i.el, ptr noundef nonnull byval(%"class.llvm::ArrayRef.700") align 8 %19) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %17)
  call void @llvm.lifetime.end.p0(ptr nonnull %19)
  %.sroa.077.0402 = extractvalue { ptr, i32 } %i.eo, 0 ; 6 uses
  store ptr %.sroa.077.0402, ptr %26, align 8, !tbaa !648
  store i32 1, ptr %i.a, align 8, !tbaa !178
  store ptr %.sroa.077.0402, ptr %27, align 8, !tbaa !648
  store i32 2, ptr %i.b, align 8, !tbaa !178
  br i1 %.0167, label %bb.z, label %bb.aa

.thread388:                                       ; preds = %.thread381
  %i.ep = load i8, ptr %i.du, align 8, !tbaa !644
  %.not.i.i.i211 = icmp eq i8 %i.ep, 0
  br i1 %.not.i.i.i211, label %.split, label %bb.x

bb.x:                                             ; preds = %.thread388
  call void @abort() #25
  unreachable

.split:                                           ; preds = %.thread388
  %.sroa.0.0.copyload.i212 = load i32, ptr %i.bg, align 8, !tbaa !178
  %.sroa.0326.0.copyload = load ptr, ptr %27, align 8, !tbaa !648 ; 2 uses
  %i.eq = load i64, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  call void @llvm.lifetime.start.p0(ptr nonnull %16)
  store i16 249, ptr %14, align 8, !tbaa !610
  store ptr null, ptr %i.ac, align 8, !tbaa !652
  %i.er = call { ptr, i32 } @_ZN4llvm12SelectionDAG9getVTListENS_3EVTES1_S1_(ptr noundef nonnull align 8 dereferenceable(920) %9, i16 %.sroa.0.0.copyload.i, ptr null, i16 1, ptr null, ptr noundef nonnull byval(%"struct.llvm::EVT") align 8 %14) #24 ; 2 uses
  %i.es = extractvalue { ptr, i32 } %i.er, 0
  %i.et = extractvalue { ptr, i32 } %i.er, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #24
  store ptr %.sroa.062.0.copyload310362, ptr %15, align 16, !tbaa !648
  store i32 %.sroa.2164.0.copyload312361, ptr %.sroa.218.0..sroa_idx.i, align 8, !tbaa !178
  %i.eu = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getRegisterENS_8RegisterENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %9, i32 %.sroa.0.0.copyload.i212, i16 %.sroa.0.0.copyload.i, ptr null) #24 ; 2 uses
  %.fca.0.extract3.i214 = extractvalue { ptr, i32 } %i.eu, 0
  %.fca.1.extract4.i215 = extractvalue { ptr, i32 } %i.eu, 1
  store ptr %.fca.0.extract3.i214, ptr %i.ad, align 16
  store i32 %.fca.1.extract4.i215, ptr %.sroa.26.0..sroa_idx.i216, align 8
  store ptr %.sroa.0326.0.copyload, ptr %i.ae, align 16, !tbaa !648
  %.sroa.5324.0.extract.trunc = trunc i64 %i.eq to i32
  store i32 %.sroa.5324.0.extract.trunc, ptr %.sroa.5324.0..sroa_idx325, align 8, !tbaa !178
  %.not.i217 = icmp eq ptr %.sroa.0326.0.copyload, null
  %i.ev = select i1 %.not.i217, i64 2, i64 3
  store ptr %15, ptr %16, align 8, !tbaa !674
  store i64 %i.ev, ptr %i.af, align 8, !tbaa !677
  %i.ew = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_8SDVTListENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %9, i32 noundef 52, ptr noundef nonnull align 8 dereferenceable(12) %8, ptr %i.es, i32 %i.et, ptr noundef nonnull byval(%"class.llvm::ArrayRef.700") align 8 %16) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  call void @llvm.lifetime.end.p0(ptr nonnull %16)
  %.sroa.077.0 = extractvalue { ptr, i32 } %i.ew, 0 ; 4 uses
  store ptr %.sroa.077.0, ptr %26, align 8, !tbaa !648
  store i32 1, ptr %i.a, align 8, !tbaa !178
  store ptr %.sroa.077.0, ptr %27, align 8, !tbaa !648
  store i32 2, ptr %i.b, align 8, !tbaa !178
  br label %bb.aa

bb.y:                                             ; preds = %bb.u, %.thread381
  %i.ex = phi ptr [ %i.ee, %.thread381 ], [ %i.eb, %bb.u ] ; 2 uses
  %.0167387 = phi i1 [ false, %.thread381 ], [ %.0167, %bb.u ]
  %i.ey = add i32 %.0363, 1                       ; 3 uses
  %i.ez = zext i32 %i.ey to i64
  %i.fa = load ptr, ptr %28, align 8, !tbaa !604
  %i.fb = getelementptr inbounds nuw [32 x i8], ptr %i.fa, i64 %i.ez
  %.val174 = load i32, ptr %i.bg, align 8
  %.val175 = load i8, ptr %i.du, align 8
  %i.fc = call fastcc { ptr, i32 } @_ZL16getv64i1ArgumentRN4llvm11CCValAssignES1_RNS_7SDValueERNS_12SelectionDAGERKNS_5SDLocERKNS_12X86SubtargetEPS2_(i32 %.val174, i8 %.val175, ptr noundef nonnull align 8 dereferenceable(26) %i.fb, ptr noundef nonnull align 8 dereferenceable(12) %26, ptr noundef nonnull align 8 dereferenceable(920) %9, ptr noundef nonnull align 8 dereferenceable(12) %8, ptr noundef nonnull %27) ; 2 uses
  %.fca.1.extract80 = extractvalue { ptr, i32 } %i.fc, 1 ; 2 uses
  %.pre367 = extractvalue { ptr, i32 } %i.fc, 0   ; 2 uses
  br i1 %.0167387, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %_ZNK4llvm11CCValAssign9getLocRegEv.exit209, %bb.y
  %.1401 = phi i32 [ %.0363, %_ZNK4llvm11CCValAssign9getLocRegEv.exit209 ], [ %i.ey, %bb.y ]
  %.sroa.062.0.copyload309399 = phi ptr [ %.sroa.077.0402, %_ZNK4llvm11CCValAssign9getLocRegEv.exit209 ], [ %.sroa.062.0.copyload310362, %bb.y ]
  %.sroa.2164.0.copyload311397 = phi i32 [ 1, %_ZNK4llvm11CCValAssign9getLocRegEv.exit209 ], [ %.sroa.2164.0.copyload312361, %bb.y ]
  %.sroa.14.0395 = phi i32 [ 0, %_ZNK4llvm11CCValAssign9getLocRegEv.exit209 ], [ %.fca.1.extract80, %bb.y ]
  %.sroa.0266.0.pre-phi394 = phi ptr [ %.sroa.077.0402, %_ZNK4llvm11CCValAssign9getLocRegEv.exit209 ], [ %.pre367, %bb.y ]
  %i.fd = phi ptr [ %i.eb, %_ZNK4llvm11CCValAssign9getLocRegEv.exit209 ], [ %i.ex, %bb.y ]
  %i.fe = getelementptr inbounds nuw i8, ptr %i.bg, i64 22
  %.sroa.0.0.copyload.i224 = load i16, ptr %i.fe, align 2, !tbaa !8
  store ptr %.sroa.0266.0.pre-phi394, ptr %30, align 8, !tbaa !648
  store i32 %.sroa.14.0395, ptr %.sroa.14.0..sroa_idx, align 8, !tbaa !178
  %i.ff = call { ptr, i32 } @_ZN4llvm12SelectionDAG17getIntPtrConstantEmRKNS_5SDLocEb(ptr noundef nonnull align 8 dereferenceable(920) %9, i64 noundef 1, ptr noundef nonnull align 8 dereferenceable(12) %8, i1 noundef zeroext true) #24 ; 2 uses
  %.fca.0.extract31 = extractvalue { ptr, i32 } %i.ff, 0
  %.fca.1.extract32 = extractvalue { ptr, i32 } %i.ff, 1
  store ptr %.fca.0.extract31, ptr %31, align 8
  store i32 %.fca.1.extract32, ptr %.sroa.234.0..sroa_idx, align 8
  %i.fg = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %9, i32 noundef 244, ptr noundef nonnull align 8 dereferenceable(12) %8, i16 %.sroa.0.0.copyload.i224, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %30, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %31) #24 ; 2 uses
  %.fca.0.extract27 = extractvalue { ptr, i32 } %i.fg, 0
  %.fca.1.extract28 = extractvalue { ptr, i32 } %i.fg, 1
  br label %bb.aa

bb.aa:                                            ; preds = %.split, %_ZNK4llvm11CCValAssign9getLocRegEv.exit209, %bb.z, %bb.y
  %.1400 = phi i32 [ %.1401, %bb.z ], [ %i.ey, %bb.y ], [ %.0363, %.split ], [ %.0363, %_ZNK4llvm11CCValAssign9getLocRegEv.exit209 ]
  %.sroa.062.0.copyload309398 = phi ptr [ %.sroa.062.0.copyload309399, %bb.z ], [ %.sroa.062.0.copyload310362, %bb.y ], [ %.sroa.077.0, %.split ], [ %.sroa.077.0402, %_ZNK4llvm11CCValAssign9getLocRegEv.exit209 ] ; 2 uses
  %.sroa.2164.0.copyload311396 = phi i32 [ %.sroa.2164.0.copyload311397, %bb.z ], [ %.sroa.2164.0.copyload312361, %bb.y ], [ 1, %.split ], [ 1, %_ZNK4llvm11CCValAssign9getLocRegEv.exit209 ] ; 2 uses
  %i.fh = phi ptr [ %i.fd, %bb.z ], [ %i.ex, %bb.y ], [ %i.ee, %.split ], [ %i.eb, %_ZNK4llvm11CCValAssign9getLocRegEv.exit209 ] ; 2 uses
  %.sroa.14.1 = phi i32 [ %.fca.1.extract28, %bb.z ], [ %.fca.1.extract80, %bb.y ], [ 0, %.split ], [ 0, %_ZNK4llvm11CCValAssign9getLocRegEv.exit209 ] ; 5 uses
  %.sroa.0266.1 = phi ptr [ %.fca.0.extract27, %bb.z ], [ %.pre367, %bb.y ], [ %.sroa.077.0, %.split ], [ %.sroa.077.0402, %_ZNK4llvm11CCValAssign9getLocRegEv.exit209 ] ; 5 uses
  %i.fi = load i8, ptr %i.fh, align 4
  %i.fj = lshr i8 %i.fi, 1
  %i.fk = and i8 %i.fj, 63
  %.off.i = add nsw i8 %i.fk, -1
  %switch.i = icmp ult i8 %.off.i, 3
  br i1 %switch.i, label %bb.ab, label %bb.af

bb.ab:                                            ; preds = %bb.aa
  %i.fl = getelementptr inbounds nuw i8, ptr %i.bg, i64 22
  %.sroa.0.0.copyload.i225 = load i16, ptr %i.fl, align 2, !tbaa !8 ; 6 uses
  %i.fm = add i16 %.sroa.0.0.copyload.i225, -19
  %spec.select.i = icmp ult i16 %i.fm, 197
  br i1 %spec.select.i, label %_ZNK4llvm3MVT13getScalarTypeEv.exit, label %.thread332

_ZNK4llvm3MVT13getScalarTypeEv.exit:              ; preds = %bb.ab
  %i.fn = zext nneg i16 %.sroa.0.0.copyload.i225 to i64
  %i.fo = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.fn
  %i.fp = getelementptr i8, ptr %i.fo, i64 -2
  %i.fq = load i16, ptr %i.fp, align 2, !tbaa !8
  %i.fr = icmp eq i16 %i.fq, 2
  br i1 %i.fr, label %bb.ac, label %.thread332

bb.ac:                                            ; preds = %_ZNK4llvm3MVT13getScalarTypeEv.exit
  %.sroa.0.0.copyload.i227 = load i16, ptr %i.bh, align 8, !tbaa !8
  %.sroa.0.0.copyload.i227.off = add i16 %.sroa.0.0.copyload.i227, -5
  %switch333 = icmp ult i16 %.sroa.0.0.copyload.i227.off, 4
  br i1 %switch333, label %.thread330, label %.thread332

.thread330:                                       ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  %trunc = trunc nuw i16 %.sroa.0.0.copyload.i225 to i8
  switch i8 %trunc, label %switch.lookup.i [
    i8 19, label %bb.ad
    i8 29, label %bb.ae
  ]

bb.ad:                                            ; preds = %.thread330
  store ptr %.sroa.0266.1, ptr %12, align 8, !tbaa !648
  store i32 %.sroa.14.1, ptr %.sroa.7.0..sroa_idx20.i, align 8, !tbaa !178
  %i.fs = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %9, i32 noundef 174, ptr noundef nonnull align 8 dereferenceable(12) %8, i16 19, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %12) #24
  br label %_ZL15lowerRegToMasksRKN4llvm7SDValueERKNS_3EVTES5_RKNS_5SDLocERNS_12SelectionDAGE.exit

switch.lookup.i:                                  ; preds = %.thread330
  %switch.offset.i = add nsw i16 %.sroa.0.0.copyload.i225, -21
  store ptr %.sroa.0266.1, ptr %13, align 8, !tbaa !648
  store i32 %.sroa.14.1, ptr %.sroa.7.0..sroa_idx22.i, align 8, !tbaa !178
  %i.ft = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %9, i32 noundef 230, ptr noundef nonnull align 8 dereferenceable(12) %8, i16 %switch.offset.i, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %13) #24 ; 2 uses
  %.fca.0.extract6.i = extractvalue { ptr, i32 } %i.ft, 0
  %.fca.1.extract7.i = extractvalue { ptr, i32 } %i.ft, 1
  br label %bb.ae

bb.ae:                                            ; preds = %.thread330, %switch.lookup.i
  %.sroa.017.0.i = phi ptr [ %.sroa.0266.1, %.thread330 ], [ %.fca.0.extract6.i, %switch.lookup.i ]
  %.sroa.7.0.i = phi i32 [ %.sroa.14.1, %.thread330 ], [ %.fca.1.extract7.i, %switch.lookup.i ]
  %i.fu = call { ptr, i32 } @_ZN4llvm12SelectionDAG10getBitcastENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %9, i16 %.sroa.0.0.copyload.i225, ptr null, ptr %.sroa.017.0.i, i32 %.sroa.7.0.i) #24
  br label %_ZL15lowerRegToMasksRKN4llvm7SDValueERKNS_3EVTES5_RKNS_5SDLocERNS_12SelectionDAGE.exit

_ZL15lowerRegToMasksRKN4llvm7SDValueERKNS_3EVTES5_RKNS_5SDLocERNS_12SelectionDAGE.exit: ; preds = %bb.ad, %bb.ae
  %.pn.i = phi { ptr, i32 } [ %i.fs, %bb.ad ], [ %i.fu, %bb.ae ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  %.fca.0.extract18 = extractvalue { ptr, i32 } %.pn.i, 0
  %.fca.1.extract19 = extractvalue { ptr, i32 } %.pn.i, 1
  br label %bb.af

.thread332:                                       ; preds = %bb.ac, %bb.ab, %_ZNK4llvm3MVT13getScalarTypeEv.exit
  store ptr %.sroa.0266.1, ptr %32, align 8, !tbaa !648
  store i32 %.sroa.14.1, ptr %.sroa.14.0..sroa_idx268, align 8, !tbaa !178
  %i.fv = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %9, i32 noundef 230, ptr noundef nonnull align 8 dereferenceable(12) %8, i16 %.sroa.0.0.copyload.i225, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %32) #24 ; 2 uses
  %.fca.0.extract10 = extractvalue { ptr, i32 } %i.fv, 0
  %.fca.1.extract11 = extractvalue { ptr, i32 } %i.fv, 1
  br label %bb.af

bb.af:                                            ; preds = %_ZL15lowerRegToMasksRKN4llvm7SDValueERKNS_3EVTES5_RKNS_5SDLocERNS_12SelectionDAGE.exit, %.thread332, %bb.aa
  %.sroa.14.2 = phi i32 [ %.fca.1.extract19, %_ZL15lowerRegToMasksRKN4llvm7SDValueERKNS_3EVTES5_RKNS_5SDLocERNS_12SelectionDAGE.exit ], [ %.fca.1.extract11, %.thread332 ], [ %.sroa.14.1, %bb.aa ] ; 2 uses
  %.sroa.0266.2 = phi ptr [ %.fca.0.extract18, %_ZL15lowerRegToMasksRKN4llvm7SDValueERKNS_3EVTES5_RKNS_5SDLocERNS_12SelectionDAGE.exit ], [ %.fca.0.extract10, %.thread332 ], [ %.sroa.0266.1, %bb.aa ] ; 2 uses
  %i.fw = load i8, ptr %i.fh, align 4
  %i.fx = and i8 %i.fw, 126
  %i.fy = icmp eq i8 %i.fx, 14
  br i1 %i.fy, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.fz = getelementptr inbounds nuw i8, ptr %i.bg, i64 22
  %.sroa.0.0.copyload.i235 = load i16, ptr %i.fz, align 2, !tbaa !8
  %i.ga = call { ptr, i32 } @_ZN4llvm12SelectionDAG10getBitcastENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %9, i16 %.sroa.0.0.copyload.i235, ptr null, ptr %.sroa.0266.2, i32 %.sroa.14.2) #24 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.ga, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.ga, 1
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.sroa.14.3 = phi i32 [ %.fca.1.extract, %bb.ag ], [ %.sroa.14.2, %bb.af ] ; 2 uses
  %.sroa.0266.3 = phi ptr [ %.fca.0.extract, %bb.ag ], [ %.sroa.0266.2, %bb.af ] ; 2 uses
  %i.gb = load i32, ptr %i.ak, align 8, !tbaa !606 ; 2 uses
  %i.gc = load i32, ptr %i.al, align 4, !tbaa !605
  %.not.i236 = icmp ult i32 %i.gb, %i.gc
  br i1 %.not.i236, label %bb.aj, label %bb.ai, !prof !643

bb.ai:                                            ; preds = %bb.ah
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr %.sroa.0266.3, i32 %.sroa.14.3)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit

bb.aj:                                            ; preds = %bb.ah
  %i.gd = zext i32 %i.gb to i64
  %i.ge = load ptr, ptr %10, align 8, !tbaa !604
  %i.gf = getelementptr inbounds nuw [16 x i8], ptr %i.ge, i64 %i.gd ; 2 uses
  store ptr %.sroa.0266.3, ptr %i.gf, align 1
  %.sroa.32.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gf, i64 8
  store i32 %.sroa.14.3, ptr %.sroa.32.0..sroa_idx.i, align 1
  %i.gg = load i32, ptr %i.ak, align 8, !tbaa !606
  %i.gh = add i32 %i.gg, 1
  store i32 %i.gh, ptr %i.ak, align 8, !tbaa !606
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit

_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit: ; preds = %bb.ai, %bb.aj
  %i.gi = add i32 %.1400, 1                       ; 2 uses
  %.not = icmp eq i32 %i.gi, %i.l
  br i1 %.not, label %._crit_edge, label %bb.g, !llvm.loop !700
}

declare void @_ZN4llvm7CCState17AnalyzeCallResultERKNS_15SmallVectorImplINS_3ISD8InputArgEEEPFbjNS_3MVTES7_NS_11CCValAssign7LocInfoENS2_10ArgFlagsTyEPNS_4TypeERS0_E(ptr noundef nonnull align 8 dereferenceable(420), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc { ptr, i32 } @_ZL16getv64i1ArgumentRN4llvm11CCValAssignES1_RNS_7SDValueERNS_12SelectionDAGERKNS_5SDLocERKNS_12X86SubtargetEPS2_(i32 %.0.val, i8 %.8.val, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(26) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(920) %2, ptr noundef nonnull align 8 dereferenceable(12) %3, ptr nofree noundef captures(address_is_null) %4) unnamed_addr #0 {
bb.a:
  %5 = alloca %"struct.llvm::EVT", align 8        ; 5 uses
  %6 = alloca [3 x %"class.llvm::SDValue"], align 16 ; 9 uses
  %7 = alloca %"class.llvm::ArrayRef.700", align 8 ; 5 uses
  %8 = alloca %"struct.llvm::EVT", align 8        ; 5 uses
  %9 = alloca [3 x %"class.llvm::SDValue"], align 16 ; 9 uses
  %10 = alloca %"class.llvm::ArrayRef.700", align 8 ; 5 uses
  %11 = alloca [2 x %"class.llvm::SDValue"], align 16 ; 7 uses
  %12 = alloca %"class.llvm::ArrayRef.700", align 8 ; 5 uses
  %13 = alloca [2 x %"class.llvm::SDValue"], align 16 ; 7 uses
  %14 = alloca %"class.llvm::ArrayRef.700", align 8 ; 5 uses
  %15 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %16 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !431  ; 2 uses
  %i.c = icmp eq ptr %4, null
  %.not.i.i.i = icmp eq i8 %.8.val, 0             ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  br i1 %.not.i.i.i, label %_ZNK4llvm11CCValAssign9getLocRegEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @abort() #25
  unreachable

_ZNK4llvm11CCValAssign9getLocRegEv.exit:          ; preds = %bb.b
  %i.d = tail call i32 @_ZN4llvm15MachineFunction9addLiveInENS_10MCRegisterEPKNS_15MCRegisterClassE(ptr noundef nonnull align 8 dereferenceable(1065) %i.b, i32 %.0.val, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZN4llvm25X86MCRegisterClassStorageE, i64 2240)) #24
  %.sroa.072.0.copyload = load ptr, ptr %1, align 8, !tbaa !648
  %.sroa.273.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.sroa.273.0.copyload = load i32, ptr %.sroa.273.0..sroa_idx, align 8, !tbaa !178
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  %i.e = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG9getVTListENS_3EVTES1_(ptr noundef nonnull align 8 dereferenceable(920) %2, i16 7, ptr null, i16 1, ptr null) #24 ; 2 uses
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  %i.g = extractvalue { ptr, i32 } %i.e, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24
  store ptr %.sroa.072.0.copyload, ptr %13, align 16, !tbaa !648
  %.sroa.218.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i32 %.sroa.273.0.copyload, ptr %.sroa.218.0..sroa_idx.i, align 8, !tbaa !178
  %i.h = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.i = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG11getRegisterENS_8RegisterENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %2, i32 %i.d, i16 7, ptr null) #24 ; 2 uses
  %.fca.0.extract3.i = extractvalue { ptr, i32 } %i.i, 0
  %.fca.1.extract4.i = extractvalue { ptr, i32 } %i.i, 1
  store ptr %.fca.0.extract3.i, ptr %i.h, align 16
  %.sroa.26.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %13, i64 24
  store i32 %.fca.1.extract4.i, ptr %.sroa.26.0..sroa_idx.i, align 8
  store ptr %13, ptr %14, align 8, !tbaa !674
  %i.j = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 2, ptr %i.j, align 8, !tbaa !677
  %i.k = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_8SDVTListENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %2, i32 noundef 52, ptr noundef nonnull align 8 dereferenceable(12) %3, ptr %i.f, i32 %i.g, ptr noundef nonnull byval(%"class.llvm::ArrayRef.700") align 8 %14) #24 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load i8, ptr %i.l, align 8, !tbaa !644
  %.not.i.i.i112 = icmp eq i8 %i.m, 0
  br i1 %.not.i.i.i112, label %_ZNK4llvm11CCValAssign9getLocRegEv.exit114, label %bb.d

bb.d:                                             ; preds = %_ZNK4llvm11CCValAssign9getLocRegEv.exit
  call void @abort() #25
  unreachable

_ZNK4llvm11CCValAssign9getLocRegEv.exit114:       ; preds = %_ZNK4llvm11CCValAssign9getLocRegEv.exit
  %.sroa.0.0.copyload.i113 = load i32, ptr %0, align 8, !tbaa !178
  %i.n = call i32 @_ZN4llvm15MachineFunction9addLiveInENS_10MCRegisterEPKNS_15MCRegisterClassE(ptr noundef nonnull align 8 dereferenceable(1065) %i.b, i32 %.sroa.0.0.copyload.i113, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZN4llvm25X86MCRegisterClassStorageE, i64 2240)) #24
  %.sroa.059.0.copyload = load ptr, ptr %1, align 8, !tbaa !648
  %.sroa.260.0.copyload = load i32, ptr %.sroa.273.0..sroa_idx, align 8, !tbaa !178
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  %i.o = call { ptr, i32 } @_ZN4llvm12SelectionDAG9getVTListENS_3EVTES1_(ptr noundef nonnull align 8 dereferenceable(920) %2, i16 7, ptr null, i16 1, ptr null) #24 ; 2 uses
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  %i.q = extractvalue { ptr, i32 } %i.o, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  store ptr %.sroa.059.0.copyload, ptr %11, align 16, !tbaa !648
  %.sroa.218.0..sroa_idx.i118 = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i32 %.sroa.260.0.copyload, ptr %.sroa.218.0..sroa_idx.i118, align 8, !tbaa !178
  %i.r = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.s = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getRegisterENS_8RegisterENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %2, i32 %i.n, i16 7, ptr null) #24 ; 2 uses
  %.fca.0.extract3.i119 = extractvalue { ptr, i32 } %i.s, 0
  %.fca.1.extract4.i120 = extractvalue { ptr, i32 } %i.s, 1
  store ptr %.fca.0.extract3.i119, ptr %i.r, align 16
  %.sroa.26.0..sroa_idx.i121 = getelementptr inbounds nuw i8, ptr %11, i64 24
  store i32 %.fca.1.extract4.i120, ptr %.sroa.26.0..sroa_idx.i121, align 8
  store ptr %11, ptr %12, align 8, !tbaa !674
  %i.t = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 2, ptr %i.t, align 8, !tbaa !677
  %i.u = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_8SDVTListENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %2, i32 noundef 52, ptr noundef nonnull align 8 dereferenceable(12) %3, ptr %i.p, i32 %i.q, ptr noundef nonnull byval(%"class.llvm::ArrayRef.700") align 8 %12) #24 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  %.pre = extractvalue { ptr, i32 } %i.k, 0
  %.pre56 = extractvalue { ptr, i32 } %i.u, 0
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  br i1 %.not.i.i.i, label %_ZNK4llvm11CCValAssign9getLocRegEv.exit124, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @abort() #25
  unreachable

_ZNK4llvm11CCValAssign9getLocRegEv.exit124:       ; preds = %bb.e
  %.sroa.249.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.sroa.249.0.copyload = load i32, ptr %.sroa.249.0..sroa_idx, align 8, !tbaa !178
  %.sroa.048.0.copyload = load ptr, ptr %1, align 8, !tbaa !648
  %.sroa.042.0.copyload = load ptr, ptr %4, align 8, !tbaa !648 ; 2 uses
  %.sroa.243.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.v = load i64, ptr %.sroa.243.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  store i16 249, ptr %8, align 8, !tbaa !610
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr null, ptr %i.w, align 8, !tbaa !652
  %i.x = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG9getVTListENS_3EVTES1_S1_(ptr noundef nonnull align 8 dereferenceable(920) %2, i16 7, ptr null, i16 1, ptr null, ptr noundef nonnull byval(%"struct.llvm::EVT") align 8 %8) #24 ; 2 uses
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  %i.z = extractvalue { ptr, i32 } %i.x, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  store ptr %.sroa.048.0.copyload, ptr %9, align 16, !tbaa !648
  %.sroa.218.0..sroa_idx.i128 = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 %.sroa.249.0.copyload, ptr %.sroa.218.0..sroa_idx.i128, align 8, !tbaa !178
  %i.aa = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.ab = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG11getRegisterENS_8RegisterENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %2, i32 %.0.val, i16 7, ptr null) #24 ; 2 uses
  %.fca.0.extract3.i129 = extractvalue { ptr, i32 } %i.ab, 0
  %.fca.1.extract4.i130 = extractvalue { ptr, i32 } %i.ab, 1
  store ptr %.fca.0.extract3.i129, ptr %i.aa, align 16
  %.sroa.26.0..sroa_idx.i131 = getelementptr inbounds nuw i8, ptr %9, i64 24
  store i32 %.fca.1.extract4.i130, ptr %.sroa.26.0..sroa_idx.i131, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %9, i64 32
  store ptr %.sroa.042.0.copyload, ptr %i.ac, align 16, !tbaa !648
  %.sroa.540.0..sroa_idx41 = getelementptr inbounds nuw i8, ptr %9, i64 40
  %.sroa.540.0.extract.trunc = trunc i64 %i.v to i32
  store i32 %.sroa.540.0.extract.trunc, ptr %.sroa.540.0..sroa_idx41, align 8, !tbaa !178
  %.not.i = icmp eq ptr %.sroa.042.0.copyload, null
  %i.ad = select i1 %.not.i, i64 2, i64 3
  store ptr %9, ptr %10, align 8, !tbaa !674
  %i.ae = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !677
  %i.af = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_8SDVTListENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %2, i32 noundef 52, ptr noundef nonnull align 8 dereferenceable(12) %3, ptr %i.y, i32 %i.z, ptr noundef nonnull byval(%"class.llvm::ArrayRef.700") align 8 %10) #24 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  %.fca.0.extract36 = extractvalue { ptr, i32 } %i.af, 0 ; 4 uses
  store ptr %.fca.0.extract36, ptr %4, align 8, !tbaa !648
  store i32 2, ptr %.sroa.243.0..sroa_idx, align 8, !tbaa !178
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ah = load i8, ptr %i.ag, align 8, !tbaa !644
  %.not.i.i.i132 = icmp eq i8 %i.ah, 0
  br i1 %.not.i.i.i132, label %_ZNK4llvm11CCValAssign9getLocRegEv.exit134, label %bb.g

bb.g:                                             ; preds = %_ZNK4llvm11CCValAssign9getLocRegEv.exit124
  call void @abort() #25
  unreachable

_ZNK4llvm11CCValAssign9getLocRegEv.exit134:       ; preds = %_ZNK4llvm11CCValAssign9getLocRegEv.exit124
  %.sroa.231.0.copyload = load i32, ptr %.sroa.249.0..sroa_idx, align 8, !tbaa !178
  %.sroa.030.0.copyload = load ptr, ptr %1, align 8, !tbaa !648
  %.sroa.0.0.copyload.i133 = load i32, ptr %0, align 8, !tbaa !178
  %i.ai = load i64, ptr %.sroa.243.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store i16 249, ptr %5, align 8, !tbaa !610
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr null, ptr %i.aj, align 8, !tbaa !652
  %i.ak = call { ptr, i32 } @_ZN4llvm12SelectionDAG9getVTListENS_3EVTES1_S1_(ptr noundef nonnull align 8 dereferenceable(920) %2, i16 7, ptr null, i16 1, ptr null, ptr noundef nonnull byval(%"struct.llvm::EVT") align 8 %5) #24 ; 2 uses
  %i.al = extractvalue { ptr, i32 } %i.ak, 0
  %i.am = extractvalue { ptr, i32 } %i.ak, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  store ptr %.sroa.030.0.copyload, ptr %6, align 16, !tbaa !648
  %.sroa.218.0..sroa_idx.i138 = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %.sroa.231.0.copyload, ptr %.sroa.218.0..sroa_idx.i138, align 8, !tbaa !178
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ao = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getRegisterENS_8RegisterENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %2, i32 %.sroa.0.0.copyload.i133, i16 7, ptr null) #24 ; 2 uses
  %.fca.0.extract3.i139 = extractvalue { ptr, i32 } %i.ao, 0
  %.fca.1.extract4.i140 = extractvalue { ptr, i32 } %i.ao, 1
  store ptr %.fca.0.extract3.i139, ptr %i.an, align 16
  %.sroa.26.0..sroa_idx.i141 = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i32 %.fca.1.extract4.i140, ptr %.sroa.26.0..sroa_idx.i141, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %.fca.0.extract36, ptr %i.ap, align 16, !tbaa !648
  %.sroa.549.0..sroa_idx50 = getelementptr inbounds nuw i8, ptr %6, i64 40
  %.sroa.549.0.extract.trunc = trunc i64 %i.ai to i32
  store i32 %.sroa.549.0.extract.trunc, ptr %.sroa.549.0..sroa_idx50, align 8, !tbaa !178
  %.not.i142 = icmp eq ptr %.fca.0.extract36, null
  %i.aq = select i1 %.not.i142, i64 2, i64 3
  store ptr %6, ptr %7, align 8, !tbaa !674
  %i.ar = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.aq, ptr %i.ar, align 8, !tbaa !677
  %i.as = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_8SDVTListENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %2, i32 noundef 52, ptr noundef nonnull align 8 dereferenceable(12) %3, ptr %i.al, i32 %i.am, ptr noundef nonnull byval(%"class.llvm::ArrayRef.700") align 8 %7) #24 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %.fca.0.extract18 = extractvalue { ptr, i32 } %i.as, 0 ; 2 uses
  store ptr %.fca.0.extract18, ptr %4, align 8, !tbaa !648
  store i32 2, ptr %.sroa.243.0..sroa_idx, align 8, !tbaa !178
  br label %bb.h

bb.h:                                             ; preds = %_ZNK4llvm11CCValAssign9getLocRegEv.exit134, %_ZNK4llvm11CCValAssign9getLocRegEv.exit114
  %.sroa.021.0.pre-phi = phi ptr [ %.fca.0.extract18, %_ZNK4llvm11CCValAssign9getLocRegEv.exit134 ], [ %.pre56, %_ZNK4llvm11CCValAssign9getLocRegEv.exit114 ]
  %.sroa.022.0.pre-phi = phi ptr [ %.fca.0.extract36, %_ZNK4llvm11CCValAssign9getLocRegEv.exit134 ], [ %.pre, %_ZNK4llvm11CCValAssign9getLocRegEv.exit114 ]
  %.pn = phi { ptr, i32 } [ %i.as, %_ZNK4llvm11CCValAssign9getLocRegEv.exit134 ], [ %i.u, %_ZNK4llvm11CCValAssign9getLocRegEv.exit114 ]
  %.pn54 = phi { ptr, i32 } [ %i.af, %_ZNK4llvm11CCValAssign9getLocRegEv.exit134 ], [ %i.k, %_ZNK4llvm11CCValAssign9getLocRegEv.exit114 ]
  %.sroa.723.0 = extractvalue { ptr, i32 } %.pn54, 1
  %.sroa.7.0 = extractvalue { ptr, i32 } %.pn, 1
  %i.at = call { ptr, i32 } @_ZN4llvm12SelectionDAG10getBitcastENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %2, i16 28, ptr null, ptr %.sroa.022.0.pre-phi, i32 %.sroa.723.0) #24 ; 2 uses
  %.fca.0.extract8 = extractvalue { ptr, i32 } %i.at, 0
  %.fca.1.extract9 = extractvalue { ptr, i32 } %i.at, 1
  %i.au = call { ptr, i32 } @_ZN4llvm12SelectionDAG10getBitcastENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %2, i16 28, ptr null, ptr %.sroa.021.0.pre-phi, i32 %.sroa.7.0) #24 ; 2 uses
  %.fca.0.extract1 = extractvalue { ptr, i32 } %i.au, 0
  %.fca.1.extract2 = extractvalue { ptr, i32 } %i.au, 1
  store ptr %.fca.0.extract8, ptr %15, align 8, !tbaa !648
  %.sroa.528.0..sroa_idx = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i32 %.fca.1.extract9, ptr %.sroa.528.0..sroa_idx, align 8, !tbaa !178
  store ptr %.fca.0.extract1, ptr %16, align 8, !tbaa !648
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i32 %.fca.1.extract2, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !178
  %i.av = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %2, i32 noundef 165, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 29, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %15, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %16) #24
  ret { ptr, i32 } %i.av
}

declare { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920), i32 noundef, ptr noundef nonnull align 8 dereferenceable(12), i16, ptr, ptr noundef byval(%"class.llvm::SDValue") align 8, ptr noundef byval(%"class.llvm::SDValue") align 8) local_unnamed_addr #4

declare { ptr, i32 } @_ZN4llvm12SelectionDAG17getIntPtrConstantEmRKNS_5SDLocEb(ptr noundef nonnull align 8 dereferenceable(920), i64 noundef, ptr noundef nonnull align 8 dereferenceable(12), i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm17X86TargetLowering22mayBeEmittedAsTailCallEPKNS_8CallInstE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.b = load i16, ptr %i.a, align 2, !tbaa !608  ; 2 uses
  %i.c = and i16 %i.b, 3
  %i.d = add nsw i16 %i.c, -1
  %i.e = icmp ult i16 %i.d, 2
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = lshr i16 %i.b, 2
  %i.g = and i16 %i.f, 1023
  %i.h = zext nneg i16 %i.g to i32
  %i.i = tail call fastcc noundef zeroext i1 @_ZL17mayTailCallThisCCj(i32 noundef %i.h)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.1 = phi i1 [ %i.i, %bb.b ], [ false, %bb.a ]
  ret i1 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal fastcc noundef zeroext i1 @_ZL17mayTailCallThisCCj(i32 noundef %0) unnamed_addr #8 {
bb.a:
  switch i32 %0, label %bb.b [
    i32 0, label %_ZL15canGuaranteeTCOj.exit
    i32 79, label %_ZL15canGuaranteeTCOj.exit
    i32 78, label %_ZL15canGuaranteeTCOj.exit
    i32 21, label %_ZL15canGuaranteeTCOj.exit
    i32 70, label %_ZL15canGuaranteeTCOj.exit
    i32 64, label %_ZL15canGuaranteeTCOj.exit
    i32 80, label %_ZL15canGuaranteeTCOj.exit
    i32 65, label %_ZL15canGuaranteeTCOj.exit
    i32 16, label %_ZL15canGuaranteeTCOj.exit
    i32 92, label %_ZL15canGuaranteeTCOj.exit
    i32 18, label %_ZL15canGuaranteeTCOj.exit
    i32 11, label %_ZL15canGuaranteeTCOj.exit
    i32 10, label %_ZL15canGuaranteeTCOj.exit
    i32 8, label %_ZL15canGuaranteeTCOj.exit
    i32 20, label %_ZL15canGuaranteeTCOj.exit
  ]

bb.b:                                             ; preds = %bb.a
  br label %_ZL15canGuaranteeTCOj.exit

_ZL15canGuaranteeTCOj.exit:                       ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.b
  %.0 = phi i1 [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ false, %bb.b ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local { ptr, i32 } @_ZNK4llvm17X86TargetLowering16LowerMemArgumentENS_7SDValueEjRKNS_15SmallVectorImplINS_3ISD8InputArgEEERKNS_5SDLocERNS_12SelectionDAGERKNS_11CCValAssignERNS_16MachineFrameInfoEj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(518472) %0, ptr %1, i32 %2, i32 noundef %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(12) %5, ptr noundef nonnull align 8 dereferenceable(920) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(26) %7, ptr noundef nonnull align 8 dereferenceable(728) %8, i32 noundef %9) local_unnamed_addr #0 align 2 {
bb.a:
  %10 = alloca %"struct.llvm::EVT", align 8       ; 10 uses
  %11 = alloca %"struct.llvm::EVT", align 8       ; 6 uses
  %12 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %13 = alloca %"struct.llvm::MachinePointerInfo", align 8 ; 2 uses
  %14 = alloca %"struct.llvm::AAMDNodes", align 8 ; 4 uses
  %15 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %16 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %17 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %18 = alloca %"struct.llvm::MachinePointerInfo", align 8 ; 2 uses
  %19 = alloca %"struct.llvm::AAMDNodes", align 8 ; 4 uses
  %20 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %21 = alloca %"struct.llvm::MachinePointerInfo", align 8 ; 2 uses
  %22 = alloca %"struct.llvm::AAMDNodes", align 8 ; 4 uses
  %23 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %24 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %i.a = zext i32 %9 to i64                       ; 4 uses
  %i.b = load ptr, ptr %4, align 8, !tbaa !604
  %i.c = getelementptr inbounds nuw [64 x i8], ptr %i.b, i64 %i.a ; 2 uses
  %.sroa.0305.0.copyload = load i64, ptr %i.c, align 8, !tbaa !187 ; 3 uses
  %.sroa.6308.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.6308.0.copyload = load i32, ptr %.sroa.6308.0..sroa_idx, align 8, !tbaa !178
  %i.d = load ptr, ptr %6, align 8, !tbaa !701, !nonnull !53, !align !54
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 1296
  %i.f = load i8, ptr %i.e, align 8
  %i.g = and i8 %i.f, 16
  %.not319 = icmp eq i8 %i.g, 0
  br i1 %.not319, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  switch i32 %3, label %bb.d [
    i32 92, label %_ZL18shouldGuaranteeTCOjb.exit.thread
    i32 18, label %_ZL18shouldGuaranteeTCOjb.exit.thread
    i32 11, label %_ZL18shouldGuaranteeTCOjb.exit.thread
    i32 10, label %_ZL18shouldGuaranteeTCOjb.exit.thread
    i32 8, label %_ZL18shouldGuaranteeTCOjb.exit.thread
    i32 20, label %_ZL18shouldGuaranteeTCOjb.exit.thread
  ]

bb.c:                                             ; preds = %bb.a
  switch i32 %3, label %bb.d [
    i32 18, label %_ZL18shouldGuaranteeTCOjb.exit.thread
    i32 20, label %_ZL18shouldGuaranteeTCOjb.exit.thread
  ]

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.h = and i64 %.sroa.0305.0.copyload, 32
  %.not320 = icmp eq i64 %i.h, 0
  br label %_ZL18shouldGuaranteeTCOjb.exit.thread

_ZL18shouldGuaranteeTCOjb.exit.thread:            ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.c, %bb.c, %bb.d
  %i.i = phi i1 [ false, %bb.c ], [ %.not320, %bb.d ], [ false, %bb.c ], [ false, %bb.b ], [ false, %bb.b ], [ false, %bb.b ], [ false, %bb.b ], [ false, %bb.b ], [ false, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  %i.j = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 4 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !431
  %i.m = tail call noundef nonnull align 8 dereferenceable(912) ptr @_ZNK4llvm15MachineFunction13getDataLayoutEv(ptr noundef nonnull align 8 dereferenceable(1065) %i.l) #24
  %i.n = tail call noundef nonnull align 8 dereferenceable(72) ptr @_ZNK4llvm10DataLayout14getPointerSpecEj(ptr noundef nonnull align 8 dereferenceable(912) %i.m, i32 noundef 0) #24
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !505  ; 2 uses
  %i.q = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.p)
  %i.r = icmp eq i32 %i.q, 1
  br i1 %i.r, label %.split.i.i, label %_ZNK4llvm18TargetLoweringBase12getPointerTyERKNS_10DataLayoutEj.exit

.split.i.i:                                       ; preds = %_ZL18shouldGuaranteeTCOjb.exit.thread
  %i.s = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.p, i1 true) ; 2 uses
  %i.t = icmp samesign ult i32 %i.s, 10
  br i1 %i.t, label %switch.lookup.i.i, label %_ZNK4llvm18TargetLoweringBase12getPointerTyERKNS_10DataLayoutEj.exit

switch.lookup.i.i:                                ; preds = %.split.i.i
  %switch.idx.cast.i.i = trunc nuw nsw i32 %i.s to i16
  %switch.offset.i.i = add nuw nsw i16 %switch.idx.cast.i.i, 2
  br label %_ZNK4llvm18TargetLoweringBase12getPointerTyERKNS_10DataLayoutEj.exit

_ZNK4llvm18TargetLoweringBase12getPointerTyERKNS_10DataLayoutEj.exit: ; preds = %_ZL18shouldGuaranteeTCOjb.exit.thread, %.split.i.i, %switch.lookup.i.i
  %.sroa.0.0.i.i = phi i16 [ %switch.offset.i.i, %switch.lookup.i.i ], [ 0, %.split.i.i ], [ 0, %_ZL18shouldGuaranteeTCOjb.exit.thread ] ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 20 ; 2 uses
  %i.v = load i8, ptr %i.u, align 4
  %i.w = lshr i8 %i.v, 1
  %i.x = and i8 %i.w, 63                          ; 2 uses
  %.off.i = add nsw i8 %i.x, -1
  %switch.i = icmp ult i8 %.off.i, 3
  br i1 %switch.i, label %bb.e, label %bb.h

bb.e:                                             ; preds = %_ZNK4llvm18TargetLoweringBase12getPointerTyERKNS_10DataLayoutEj.exit
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 22
  %.sroa.0.0.copyload.i = load i16, ptr %i.y, align 2, !tbaa !8 ; 4 uses
  %i.z = add i16 %.sroa.0.0.copyload.i, -19
  %spec.select.i.i = icmp ult i16 %i.z, 197
  br i1 %spec.select.i.i, label %bb.f, label %_ZNK4llvm3MVT13getScalarTypeEv.exit

bb.f:                                             ; preds = %bb.e
  %i.aa = zext nneg i16 %.sroa.0.0.copyload.i to i64
  %i.ab = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.aa
  %i.ac = getelementptr i8, ptr %i.ab, i64 -2
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !8
  br label %_ZNK4llvm3MVT13getScalarTypeEv.exit

_ZNK4llvm3MVT13getScalarTypeEv.exit:              ; preds = %bb.e, %bb.f
  %.sroa.0.0.i = phi i16 [ %i.ad, %bb.f ], [ %.sroa.0.0.copyload.i, %bb.e ]
  %i.ae = icmp eq i16 %.sroa.0.0.i, 2
  br i1 %i.ae, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNK4llvm3MVT13getScalarTypeEv.exit
  %i.af = zext i16 %.sroa.0.0.copyload.i to i64
  %i.ag = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.af ; 2 uses
end_hunk_0
begin_hunk_1_@_ZL19MatchingStackOffsetN4llvm7SDValueEjNS_3ISD10ArgFlagsTyERNS_16MachineFrameInfoEPKNS_19MachineRegisterInfoEPKNS_12X86InstrInfoERKNS_11CCValAssignE:bb.a

.critedge.thread:                                 ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i32 2147483647, ptr %i.a, align 4, !tbaa !178
  switch i32 %i.n, label %bb.r [
    i32 52, label %bb.i
    i32 316, label %bb.p
  ]

bb.i:                                             ; preds = %.critedge.thread
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0119.0, i64 40
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !692
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !649
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 88
  %.sroa.0.0.copyload.i87 = load i32, ptr %i.ak, align 8, !tbaa !178 ; 2 uses
  %i.al = icmp slt i32 %.sroa.0.0.copyload.i87, 0
  br i1 %i.al, label %bb.j, label %.critedge84

bb.j:                                             ; preds = %bb.i
  %i.am = call noundef ptr @_ZNK4llvm19MachineRegisterInfo10getVRegDefENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(520) %6, i32 %.sroa.0.0.copyload.i87) #24 ; 4 uses
  %.not76 = icmp eq ptr %i.am, null
  br i1 %.not76, label %.critedge84, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.an = and i64 %3, 32
  %.not154 = icmp eq i64 %i.an, 0
  br i1 %.not154, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ao = call i32 @_ZNK4llvm12X86InstrInfo19isLoadFromStackSlotERKNS_12MachineInstrERi(ptr noundef nonnull align 8 dereferenceable(456) %7, ptr noundef nonnull align 8 dereferenceable(80) %i.am, ptr noundef nonnull align 4 dereferenceable(4) %i.a) #24
  %.not77 = icmp eq i32 %i.ao, 0
  br i1 %.not77, label %.critedge84, label %._crit_edge

._crit_edge:                                      ; preds = %bb.l
  %.pre = load i32, ptr %i.a, align 4, !tbaa !178
  br label %bb.t

bb.m:                                             ; preds = %bb.k
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 52
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !1009
  switch i32 %i.aq, label %.critedge84 [
    i32 2155, label %bb.n
    i32 2153, label %bb.n
    i32 2151, label %bb.n
  ]

bb.n:                                             ; preds = %bb.m, %bb.m, %bb.m
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !1023 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 32
  %i.au = load i32, ptr %i.at, align 8
  %i.av = and i32 %i.au, 255
  %i.aw = icmp eq i32 %i.av, 5
  br i1 %i.aw, label %bb.o, label %.critedge84

bb.o:                                             ; preds = %bb.n
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 48
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !187 ; 2 uses
  store i32 %i.ay, ptr %i.a, align 4, !tbaa !178
  br label %bb.t

bb.p:                                             ; preds = %.critedge.thread
  %i.az = and i64 %3, 32
  %.not153 = icmp eq i64 %i.az, 0
  br i1 %.not153, label %bb.q, label %.critedge84

bb.q:                                             ; preds = %bb.p
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0119.0, i64 40
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !692
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 40
  %.sroa.0102.0.copyload = load ptr, ptr %i.bc, align 8, !tbaa !648 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.0102.0.copyload, i64 24
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !690
  switch i32 %i.be, label %.critedge84 [
    i32 41, label %_ZN4llvm8dyn_castINS_16FrameIndexSDNodeENS_7SDValueEEEDcRT0_.exit
    i32 16, label %_ZN4llvm8dyn_castINS_16FrameIndexSDNodeENS_7SDValueEEEDcRT0_.exit
  ]

_ZN4llvm8dyn_castINS_16FrameIndexSDNodeENS_7SDValueEEEDcRT0_.exit: ; preds = %bb.q, %bb.q
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.0102.0.copyload, i64 88
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !852 ; 2 uses
  store i32 %i.bg, ptr %i.a, align 4, !tbaa !178
  br label %bb.t

bb.r:                                             ; preds = %.critedge.thread
  %i.bh = icmp eq i32 %i.n, 16
  %i.bi = and i64 %3, 32
  %i.bj = icmp ne i64 %i.bi, 0
  %or.cond = select i1 %i.bh, i1 %i.bj, i1 false
  br i1 %or.cond, label %bb.s, label %.critedge84

bb.s:                                             ; preds = %bb.r
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.0119.0, i64 88
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !852 ; 2 uses
  store i32 %i.bl, ptr %i.a, align 4, !tbaa !178
  br label %bb.t

bb.t:                                             ; preds = %._crit_edge, %bb.o, %_ZN4llvm8dyn_castINS_16FrameIndexSDNodeENS_7SDValueEEEDcRT0_.exit, %bb.s
  %i.bm = phi i32 [ %i.bl, %bb.s ], [ %i.bg, %_ZN4llvm8dyn_castINS_16FrameIndexSDNodeENS_7SDValueEEEDcRT0_.exit ], [ %i.ay, %bb.o ], [ %.pre, %._crit_edge ] ; 3 uses
  %.664.in = phi i64 [ %4, %bb.s ], [ %i.l, %_ZN4llvm8dyn_castINS_16FrameIndexSDNodeENS_7SDValueEEEDcRT0_.exit ], [ %4, %bb.o ], [ %i.l, %._crit_edge ]
  %i.bn = icmp slt i32 %i.bm, 0
  %i.bo = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.bp = load i32, ptr %i.bo, align 8            ; 2 uses
  %i.bq = sub nsw i32 0, %i.bp
  %i.br = icmp sge i32 %i.bm, %i.bq
  %i.bs = select i1 %i.bn, i1 %i.br, i1 false
  br i1 %i.bs, label %bb.u, label %.critedge84

bb.u:                                             ; preds = %bb.t
  %i.bt = zext i32 %2 to i64
  %i.bu = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bv = add i32 %i.bp, %i.bm
  %i.bw = zext i32 %i.bv to i64
  %i.bx = load ptr, ptr %i.bu, align 8, !tbaa !727
  %i.by = getelementptr inbounds nuw [40 x i8], ptr %i.bx, i64 %i.bw ; 5 uses
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !728
  %.not78 = icmp eq i64 %i.bz, %i.bt
  br i1 %.not78, label %bb.v, label %.critedge84

bb.v:                                             ; preds = %bb.u
  %i.ca = and i64 %3, 32
  %.not155 = icmp eq i64 %i.ca, 0
  br i1 %.not155, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.cb = getelementptr inbounds nuw i8, ptr %5, i64 670
  %i.cc = load i8, ptr %i.cb, align 2, !tbaa !959, !range !169, !noundef !53
  %i.cd = trunc nuw i8 %i.cc to i1
  br i1 %i.cd, label %.critedge84, label %_ZNK4llvm16MachineFrameInfo22isImmutableObjectIndexEi.exit

_ZNK4llvm16MachineFrameInfo22isImmutableObjectIndexEi.exit: ; preds = %bb.w
  %i.ce = getelementptr inbounds nuw i8, ptr %i.by, i64 17
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !1024, !range !169, !noundef !53
  %i.cg = trunc nuw i8 %i.cf to i1
  br i1 %i.cg, label %bb.x, label %.critedge84

bb.x:                                             ; preds = %_ZNK4llvm16MachineFrameInfo22isImmutableObjectIndexEi.exit, %bb.v
  %i.ch = getelementptr inbounds nuw i8, ptr %8, i64 24
  %.sroa.0.0.copyload.i88 = load i16, ptr %i.ch, align 8, !tbaa !8
  %i.ci = zext i16 %.sroa.0.0.copyload.i88 to i64
  %i.cj = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.ci
  %i.ck = getelementptr i8, ptr %i.cj, i64 -16
  %.sroa.0.0.copyload.i.i89 = load i64, ptr %i.ck, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.0119.0, i64 48
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !651
  %i.cn = zext i32 %.sroa.14.0 to i64
  %i.co = getelementptr inbounds nuw [16 x i8], ptr %i.cm, i64 %i.cn ; 2 uses
  %.sroa.0.0.copyload.i.i.i90 = load i16, ptr %i.co, align 8, !tbaa !8 ; 3 uses
  %.sroa.21.0..sroa_idx.i.i.i91 = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %.sroa.21.0.copyload.i.i.i92 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i.i91, align 8, !tbaa !174
  store i16 %.sroa.0.0.copyload.i.i.i90, ptr %9, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %.sroa.21.0.copyload.i.i.i92, ptr %i.cp, align 8
  %.not.i.i93 = icmp eq i16 %.sroa.0.0.copyload.i.i.i90, 0
  br i1 %.not.i.i93, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cq = zext i16 %.sroa.0.0.copyload.i.i.i90 to i64
  %i.cr = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.cq
  %i.cs = getelementptr i8, ptr %i.cr, i64 -16
  %.sroa.0.0.copyload.i.i3.i94 = load i64, ptr %i.cs, align 16
  br label %_ZNK4llvm7SDValue18getValueSizeInBitsEv.exit100

bb.z:                                             ; preds = %bb.x
  %i.ct = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %9) #23
  %i.cu = extractvalue { i64, i8 } %i.ct, 0
  br label %_ZNK4llvm7SDValue18getValueSizeInBitsEv.exit100

_ZNK4llvm7SDValue18getValueSizeInBitsEv.exit100:  ; preds = %bb.y, %bb.z
  %.pn.i.i99 = phi i64 [ %.sroa.0.0.copyload.i.i3.i94, %bb.y ], [ %i.cu, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  %i.cv = icmp ugt i64 %.sroa.0.0.copyload.i.i89, %.pn.i.i99
  br i1 %i.cv, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %_ZNK4llvm7SDValue18getValueSizeInBitsEv.exit100
  %i.cw = trunc i64 %3 to i1
  %i.cx = getelementptr inbounds nuw i8, ptr %i.by, i64 34
  %i.cy = load i8, ptr %i.cx, align 2, !tbaa !733, !range !169, !noundef !53
  %i.cz = trunc nuw i8 %i.cy to i1
  %i.da = xor i1 %i.cw, %i.cz
  br i1 %i.da, label %.critedge84, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.db = and i64 %3, 2
  %i.dc = icmp ne i64 %i.db, 0
  %i.dd = getelementptr inbounds nuw i8, ptr %i.by, i64 35
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !734, !range !169, !noundef !53
  %i.df = trunc nuw i8 %i.de to i1
  %i.dg = xor i1 %i.dc, %i.df
  br i1 %i.dg, label %.critedge84, label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %_ZNK4llvm7SDValue18getValueSizeInBitsEv.exit100
  %i.dh = and i64 %.664.in, 4294967295
  %i.di = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !731
  %i.dk = icmp eq i64 %i.dj, %i.dh
  br label %.critedge84

.critedge84:                                      ; preds = %.thread160, %bb.w, %bb.n, %bb.m, %bb.i, %bb.j, %bb.l, %bb.q, %bb.r, %bb.p, %bb.aa, %bb.ab, %_ZNK4llvm16MachineFrameInfo22isImmutableObjectIndexEi.exit, %bb.u, %bb.t, %bb.ac
  %.7 = phi i1 [ false, %bb.t ], [ false, %_ZNK4llvm16MachineFrameInfo22isImmutableObjectIndexEi.exit ], [ %i.dk, %bb.ac ], [ false, %bb.u ], [ false, %bb.aa ], [ false, %bb.n ], [ false, %bb.ab ], [ false, %bb.w ], [ false, %bb.p ], [ false, %bb.r ], [ false, %bb.q ], [ false, %bb.i ], [ false, %bb.l ], [ false, %bb.j ], [ false, %bb.m ], [ false, %.thread160 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret i1 %.7
}

declare noundef zeroext i1 @_ZNK4llvm14TargetLowering20parametersInCSRMatchERKNS_19MachineRegisterInfoEPKjRKNS_15SmallVectorImplINS_11CCValAssignEEERKNS6_INS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(518435), ptr noundef nonnull align 8 dereferenceable(520), ptr noundef, ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm17X86TargetLoweringD2Ev(ptr noundef nonnull align 8 dead_on_return(518472) dereferenceable(518472) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 518448 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1025 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 518456
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1026 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN4llvm7APFloatEEvT_S3_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.e, %.lr.ph.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  tail call void @_ZN4llvm7APFloat7StorageD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.05.i.i.i) #24
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.e, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN4llvm7APFloatEEvT_S3_.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !1027

_ZSt8_DestroyIPN4llvm7APFloatEEvT_S3_.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !1025
  br label %_ZSt8_DestroyIPN4llvm7APFloatEEvT_S3_.exit.i

_ZSt8_DestroyIPN4llvm7APFloatEEvT_S3_.exit.i:     ; preds = %_ZSt8_DestroyIPN4llvm7APFloatEEvT_S3_.exitthread-pre-split.i, %bb.a
  %i.f = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN4llvm7APFloatEEvT_S3_.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN4llvm7APFloatESaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN4llvm7APFloatEEvT_S3_.exit.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 518464
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1028
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = sub i64 %i.i, %i.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.k) #27
  br label %_ZNSt6vectorIN4llvm7APFloatESaIS1_EED2Ev.exit

_ZNSt6vectorIN4llvm7APFloatESaIS1_EED2Ev.exit:    ; preds = %_ZSt8_DestroyIPN4llvm7APFloatEEvT_S3_.exit.i, %bb.b
  tail call void @_ZN4llvm14TargetLoweringD2Ev(ptr noundef nonnull align 8 dead_on_return(518435) dereferenceable(518435) %0) #24
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm17X86TargetLoweringD0Ev(ptr noundef nonnull align 8 dereferenceable(518472) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 518448 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1025 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 518456
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1026 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN4llvm7APFloatEEvT_S3_.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %.lr.ph.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.e, %.lr.ph.i.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  tail call void @_ZN4llvm7APFloat7StorageD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.05.i.i.i.i) #24
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.e, %i.d
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN4llvm7APFloatEEvT_S3_.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1027

_ZSt8_DestroyIPN4llvm7APFloatEEvT_S3_.exitthread-pre-split.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.a, align 8, !tbaa !1025
  br label %_ZSt8_DestroyIPN4llvm7APFloatEEvT_S3_.exit.i.i

_ZSt8_DestroyIPN4llvm7APFloatEEvT_S3_.exit.i.i:   ; preds = %_ZSt8_DestroyIPN4llvm7APFloatEEvT_S3_.exitthread-pre-split.i.i, %bb.a
  %i.f = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN4llvm7APFloatEEvT_S3_.exitthread-pre-split.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i1.i.i, label %_ZN4llvm17X86TargetLoweringD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN4llvm7APFloatEEvT_S3_.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 518464
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1028
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = sub i64 %i.i, %i.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.k) #27
  br label %_ZN4llvm17X86TargetLoweringD2Ev.exit

_ZN4llvm17X86TargetLoweringD2Ev.exit:             ; preds = %_ZSt8_DestroyIPN4llvm7APFloatEEvT_S3_.exit.i.i, %bb.b
  tail call void @_ZN4llvm14TargetLoweringD2Ev(ptr noundef nonnull align 8 dead_on_return(518435) dereferenceable(518472) %0) #24
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 518472) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i16 @_ZNK4llvm18TargetLoweringBase15getPointerMemTyERKNS_10DataLayoutEj(ptr noundef nonnull align 8 dereferenceable(518435) %0, ptr noundef nonnull align 8 dereferenceable(912) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(72) ptr @_ZNK4llvm10DataLayout14getPointerSpecEj(ptr noundef nonnull align 8 dereferenceable(912) %1, i32 noundef %2) #24
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !505  ; 2 uses
  %i.d = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.c)
  %i.e = icmp eq i32 %i.d, 1
  br i1 %i.e, label %.split.i, label %_ZN4llvm3MVT12getIntegerVTEj.exit

.split.i:                                         ; preds = %bb.a
  %i.f = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.c, i1 true) ; 2 uses
  %i.g = icmp samesign ult i32 %i.f, 10
  br i1 %i.g, label %switch.lookup.i, label %_ZN4llvm3MVT12getIntegerVTEj.exit

switch.lookup.i:                                  ; preds = %.split.i
  %switch.idx.cast.i = trunc nuw nsw i32 %i.f to i16
  %switch.offset.i = add nuw nsw i16 %switch.idx.cast.i, 2
  br label %_ZN4llvm3MVT12getIntegerVTEj.exit

_ZN4llvm3MVT12getIntegerVTEj.exit:                ; preds = %bb.a, %.split.i, %switch.lookup.i
  %.sroa.0.0.i = phi i16 [ %switch.offset.i, %switch.lookup.i ], [ 0, %.split.i ], [ 0, %bb.a ]
  ret i16 %.sroa.0.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i16 @_ZNK4llvm18TargetLoweringBase17getFenceOperandTyERKNS_10DataLayoutE(ptr noundef nonnull align 8 dereferenceable(518435) %0, ptr noundef nonnull align 8 dereferenceable(912) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !175
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call i16 %i.c(ptr noundef nonnull align 8 dereferenceable(518435) %0, ptr noundef nonnull align 8 dereferenceable(912) %1, i32 noundef 0) #24
  ret i16 %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i16 @_ZNK4llvm17X86TargetLowering22getScalarShiftAmountTyERKNS_10DataLayoutENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(518472) %0, ptr noundef nonnull align 8 dereferenceable(912) %1, i16 %2, ptr %3) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i16 5
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define linkonce_odr hidden i64 @_ZNK4llvm18TargetLoweringBase25getPreferredShiftAmountTyENS_3LLTE(ptr noundef nonnull align 8 dereferenceable(518435) %0, i64 %1) unnamed_addr #11 comdat align 2 {
bb.a:
  ret i64 %1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK4llvm18TargetLoweringBase17getVectorIdxWidthERKNS_10DataLayoutE(ptr noundef nonnull align 8 dereferenceable(518435) %0, ptr noundef nonnull align 8 dereferenceable(912) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(72) ptr @_ZNK4llvm10DataLayout14getPointerSpecEj(ptr noundef nonnull align 8 dereferenceable(912) %1, i32 noundef 0) #24
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !505
  ret i32 %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i16 @_ZNK4llvm18TargetLoweringBase27getVPExplicitVectorLengthTyEv(ptr noundef nonnull align 8 dereferenceable(518435) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i16 7
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i16 @_ZNK4llvm18TargetLoweringBase17getTargetMMOFlagsERKNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(518435) %0, ptr noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i16 0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i16 @_ZNK4llvm18TargetLoweringBase17getTargetMMOFlagsERKNS_9MemSDNodeE(ptr noundef nonnull align 8 dereferenceable(518435) %0, ptr noundef nonnull align 8 dereferenceable(112) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i16 0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm18TargetLoweringBase17isSelectSupportedENS0_17SelectSupportKindE(ptr noundef nonnull align 8 dereferenceable(518435) %0, i32 noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm18TargetLoweringBase29shouldExpandGetActiveLaneMaskENS_3EVTES1_(ptr noundef nonnull align 8 dereferenceable(518435) %0, i16 %1, ptr %2, i16 %3, ptr %4) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm18TargetLoweringBase27shouldExpandGetVectorLengthENS_3EVTEjb(ptr noundef nonnull align 8 dereferenceable(518435) %0, i16 %1, ptr %2, i32 noundef %3, i1 noundef zeroext %4) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm18TargetLoweringBase24shouldExpandCttzElementsENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(518435) %0, i16 %1, ptr %2) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm18TargetLoweringBase23shouldExpandVectorMatchENS_3EVTEj(ptr noundef nonnull align 8 dereferenceable(518435) %0, i16 %1, ptr %2, i32 noundef %3) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm18TargetLoweringBase26shouldReassociateReductionEjNS_3EVTE(ptr noundef nonnull align 8 dereferenceable(518435) %0, i32 noundef %1, i16 %2, ptr %3) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i1 true
}

declare noundef zeroext i1 @_ZNK4llvm17X86TargetLowering29reduceSelectOfFPConstantLoadsENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(518472), i16, ptr) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
end_hunk_1
