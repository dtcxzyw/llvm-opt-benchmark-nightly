Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/TargetPassConfig?download=true
begin_hunk_0_@_ZN4llvm16TargetPassConfig16getStartStopInfoERNS_28PassInstrumentationCallbacksE:bb.a
  %.sroa.5.0.copyload.i62 = load i64, ptr %i.bl, align 8, !tbaa !35, !noalias !247
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !247
  br label %_ZL25getPassNameAndInstanceNumN4llvm9StringRefE.exit63

_ZNK4llvm9StringRef5splitEc.exit.i49:             ; preds = %_ZL25getPassNameAndInstanceNumN4llvm9StringRefE.exit48
  %i.bo = load i64, ptr %i.bl, align 8, !tbaa !67, !noalias !253 ; 3 uses
  %.sroa.speculated.i.i.i.i50 = call i64 @llvm.umin.i64(i64 %i.bm, i64 %i.bo) ; 2 uses
  %i.bp = load ptr, ptr %2, align 8, !tbaa !68, !noalias !253 ; 3 uses
  %i.bq = add nuw i64 %i.bm, 1                    ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !247
  %.not.i51 = icmp ugt i64 %i.bo, %i.bq
  br i1 %.not.i51, label %bb.k, label %_ZL25getPassNameAndInstanceNumN4llvm9StringRefE.exit63

bb.k:                                             ; preds = %_ZNK4llvm9StringRef5splitEc.exit.i49
  %i.br = sub nuw i64 %i.bo, %i.bq
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.bq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26, !noalias !247
  %i.bt = call noundef zeroext i1 @_ZN4llvm20getAsUnsignedIntegerENS_9StringRefEjRy(ptr nonnull %i.bs, i64 %i.br, i32 noundef 10, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #26, !noalias !247
  br i1 %i.bt, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bu = load i64, ptr %i.a, align 8, !tbaa !69, !noalias !247 ; 2 uses
  %.not.i.i56 = icmp ult i64 %i.bu, 4294967296
  br i1 %.not.i.i56, label %_ZNK4llvm9StringRef12getAsIntegerIjEEbjRT_.exit.i59, label %bb.m

_ZNK4llvm9StringRef12getAsIntegerIjEEbjRT_.exit.i59: ; preds = %bb.l
  %i.bv = trunc nuw i64 %i.bu to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26, !noalias !247
  br label %_ZL25getPassNameAndInstanceNumN4llvm9StringRefE.exit63

bb.m:                                             ; preds = %bb.l, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26, !noalias !247
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26, !noalias !247
  %.sroa.0.0.copyload.i57 = load ptr, ptr %2, align 8, !tbaa !34, !noalias !247
  %.sroa.2.0.copyload.i58 = load i64, ptr %i.bl, align 8, !tbaa !35, !noalias !247
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i8 3, ptr %i.bw, align 8, !tbaa !71, !alias.scope !256, !noalias !247
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 33
  store i8 5, ptr %i.bx, align 1, !tbaa !77, !alias.scope !256, !noalias !247
  store ptr @.str.192, ptr %3, align 8, !tbaa !30, !alias.scope !256, !noalias !247
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %.sroa.0.0.copyload.i57, ptr %i.by, align 8, !tbaa !30, !alias.scope !256, !noalias !247
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %.sroa.2.0.copyload.i58, ptr %i.bz, align 8, !tbaa !30, !alias.scope !256, !noalias !247
  call void @_ZN4llvm21reportFatalUsageErrorERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(34) %3) #28, !noalias !247
  unreachable

_ZL25getPassNameAndInstanceNumN4llvm9StringRefE.exit63: ; preds = %_ZNK4llvm9StringRef5splitEc.exit.thread.i60, %_ZNK4llvm9StringRef5splitEc.exit.i49, %_ZNK4llvm9StringRef12getAsIntegerIjEEbjRT_.exit.i59
  %.sroa.01.015.i52 = phi ptr [ %i.bp, %_ZNK4llvm9StringRef5splitEc.exit.i49 ], [ %i.bp, %_ZNK4llvm9StringRef12getAsIntegerIjEEbjRT_.exit.i59 ], [ %.sroa.01.0.copyload.i61, %_ZNK4llvm9StringRef5splitEc.exit.thread.i60 ]
  %.sroa.5.014.i53 = phi i64 [ %.sroa.speculated.i.i.i.i50, %_ZNK4llvm9StringRef5splitEc.exit.i49 ], [ %.sroa.speculated.i.i.i.i50, %_ZNK4llvm9StringRef12getAsIntegerIjEEbjRT_.exit.i59 ], [ %.sroa.5.0.copyload.i62, %_ZNK4llvm9StringRef5splitEc.exit.thread.i60 ] ; 3 uses
  %.val165 = phi i32 [ 0, %_ZNK4llvm9StringRef5splitEc.exit.i49 ], [ %i.bv, %_ZNK4llvm9StringRef12getAsIntegerIjEEbjRT_.exit.i59 ], [ 0, %_ZNK4llvm9StringRef5splitEc.exit.thread.i60 ]
  store ptr %.sroa.01.015.i52, ptr %13, align 8, !tbaa !34, !alias.scope !247
  %.sroa.5.0..sroa_idx5.i55 = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 %.sroa.5.014.i53, ptr %.sroa.5.0..sroa_idx5.i55, align 8, !tbaa !35, !alias.scope !247
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.ca = icmp eq i64 %i.z, 0                     ; 3 uses
  %i.cb = icmp eq i64 %.sroa.5.014.i23, 0
  %or.cond = select i1 %i.ca, i1 true, i1 %i.cb
  br i1 %or.cond, label %bb.n, label %_ZN4llvm5ErrorD2Ev.exit

_ZN4llvm5ErrorD2Ev.exit:                          ; preds = %_ZL25getPassNameAndInstanceNumN4llvm9StringRefE.exit63
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #26
  store ptr @_ZL18StartBeforeOptName, ptr %16, align 8, !alias.scope !259
  %i.cc = getelementptr inbounds nuw i8, ptr %16, i64 16
  store ptr @.str.173, ptr %i.cc, align 8, !alias.scope !259
  %i.cd = getelementptr inbounds nuw i8, ptr %16, i64 32
  store i8 3, ptr %i.cd, align 8, !tbaa !71, !alias.scope !259
  %i.ce = getelementptr inbounds nuw i8, ptr %16, i64 33
  store i8 3, ptr %i.ce, align 1, !tbaa !77, !alias.scope !259
  store ptr %16, ptr %15, align 8, !alias.scope !264
  %i.cf = getelementptr inbounds nuw i8, ptr %15, i64 16
  store ptr @_ZL17StartAfterOptName, ptr %i.cf, align 8, !alias.scope !264
  %i.cg = getelementptr inbounds nuw i8, ptr %15, i64 32
  store i8 2, ptr %i.cg, align 8, !tbaa !71, !alias.scope !264
  %i.ch = getelementptr inbounds nuw i8, ptr %15, i64 33
  store i8 3, ptr %i.ch, align 1, !tbaa !77, !alias.scope !264
  store ptr %15, ptr %14, align 8, !alias.scope !269
  %i.ci = getelementptr inbounds nuw i8, ptr %14, i64 16
  store ptr @.str.174, ptr %i.ci, align 8, !alias.scope !269
  %i.cj = getelementptr inbounds nuw i8, ptr %14, i64 32
  store i8 2, ptr %i.cj, align 8, !tbaa !71, !alias.scope !269
  %i.ck = getelementptr inbounds nuw i8, ptr %14, i64 33
  store i8 3, ptr %i.ck, align 1, !tbaa !77, !alias.scope !269
  %i.cl = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V216generic_categoryEv() #30
  %i.cm = call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #29, !noalias !274 ; 2 uses
  call void @_ZN4llvm11StringErrorC1ERKNS_5TwineESt10error_code(ptr noundef nonnull align 8 dereferenceable(57) %i.cm, ptr noundef nonnull align 8 dereferenceable(34) %14, i32 22, ptr nonnull %i.cl) #26, !noalias !274
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.co = load i8, ptr %i.cn, align 8
  %i.cp = or i8 %i.co, 1
  store i8 %i.cp, ptr %i.cn, align 8
  store ptr %i.cm, ptr %0, align 8, !tbaa !279, !alias.scope !281
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  br label %bb.p

bb.n:                                             ; preds = %_ZL25getPassNameAndInstanceNumN4llvm9StringRefE.exit63
  %i.cq = icmp eq i64 %.sroa.5.014.i38, 0         ; 3 uses
  %i.cr = icmp eq i64 %.sroa.5.014.i53, 0
  %or.cond163 = select i1 %i.cq, i1 true, i1 %i.cr
  br i1 %or.cond163, label %bb.o, label %_ZN4llvm5ErrorD2Ev.exit143

_ZN4llvm5ErrorD2Ev.exit143:                       ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #26
  store ptr @_ZL17StopBeforeOptName, ptr %19, align 8, !alias.scope !284
  %i.cs = getelementptr inbounds nuw i8, ptr %19, i64 16
  store ptr @.str.173, ptr %i.cs, align 8, !alias.scope !284
  %i.ct = getelementptr inbounds nuw i8, ptr %19, i64 32
  store i8 3, ptr %i.ct, align 8, !tbaa !71, !alias.scope !284
  %i.cu = getelementptr inbounds nuw i8, ptr %19, i64 33
  store i8 3, ptr %i.cu, align 1, !tbaa !77, !alias.scope !284
  store ptr %19, ptr %18, align 8, !alias.scope !289
  %i.cv = getelementptr inbounds nuw i8, ptr %18, i64 16
  store ptr @_ZL16StopAfterOptName, ptr %i.cv, align 8, !alias.scope !289
  %i.cw = getelementptr inbounds nuw i8, ptr %18, i64 32
  store i8 2, ptr %i.cw, align 8, !tbaa !71, !alias.scope !289
  %i.cx = getelementptr inbounds nuw i8, ptr %18, i64 33
  store i8 3, ptr %i.cx, align 1, !tbaa !77, !alias.scope !289
  store ptr %18, ptr %17, align 8, !alias.scope !294
  %i.cy = getelementptr inbounds nuw i8, ptr %17, i64 16
  store ptr @.str.174, ptr %i.cy, align 8, !alias.scope !294
  %i.cz = getelementptr inbounds nuw i8, ptr %17, i64 32
  store i8 2, ptr %i.cz, align 8, !tbaa !71, !alias.scope !294
  %i.da = getelementptr inbounds nuw i8, ptr %17, i64 33
  store i8 3, ptr %i.da, align 1, !tbaa !77, !alias.scope !294
  %i.db = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V216generic_categoryEv() #30
  %i.dc = call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #29, !noalias !299 ; 2 uses
  call void @_ZN4llvm11StringErrorC1ERKNS_5TwineESt10error_code(ptr noundef nonnull align 8 dereferenceable(57) %i.dc, ptr noundef nonnull align 8 dereferenceable(34) %17, i32 22, ptr nonnull %i.db) #26, !noalias !299
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.de = load i8, ptr %i.dd, align 8
  %i.df = or i8 %i.de, 1
  store i8 %i.df, ptr %i.dd, align 8
  store ptr %i.dc, ptr %0, align 8, !tbaa !279, !alias.scope !304
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  br label %bb.p

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11)
  %.sroa.11.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.11, i64 4
  %i.dg = select i1 %i.ca, ptr %11, ptr %10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.11.4..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.dg, i64 16, i1 false), !tbaa.struct !307
  %i.dh = select i1 %i.cq, ptr %13, ptr %12
  %.sroa.11.32..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.11, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.11.32..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.dh, i64 16, i1 false), !tbaa.struct !307
  %i.di = select i1 %i.ca, i32 %.val, i32 %.val164
  %i.dj = select i1 %i.cq, i32 %.val165, i32 %.val166
  %i.dk = icmp ne i64 %.sroa.5.014.i23, 0
  %i.dl = zext i1 %i.dk to i8
  %i.dm = icmp ne i64 %.sroa.5.014.i53, 0
  %i.dn = zext i1 %i.dm to i8
  %i.do = call i32 @llvm.umax.i32(i32 %i.di, i32 1)
  %i.dp = call i32 @llvm.umax.i32(i32 %i.dj, i32 1)
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.dr = load i8, ptr %i.dq, align 8
  %i.ds = and i8 %i.dr, -2
  store i8 %i.ds, ptr %i.dq, align 8
  store i8 %i.dl, ptr %0, align 8, !tbaa !168
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.dn, ptr %.sroa.4.0..sroa_idx, align 1, !tbaa !168
  %.sroa.5144.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.do, ptr %.sroa.5144.0..sroa_idx, align 4, !tbaa !78
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.dp, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !78
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %.sroa.11.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(36) %.sroa.11, i64 36, i1 false), !tbaa.struct !308
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_ZN4llvm5ErrorD2Ev.exit143, %_ZN4llvm5ErrorD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm16TargetPassConfigC2ERNS_13TargetMachineERNS_6legacy15PassManagerBaseE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(134) initializes((0, 28), (32, 108), (112, 134)) %0, ptr noundef nonnull align 8 dereferenceable(1728) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.a, align 8, !tbaa !309
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @_ZN4llvm16TargetPassConfig2IDE, ptr %i.b, align 8, !tbaa !310
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 4, ptr %i.c, align 8, !tbaa !311
  store ptr getelementptr inbounds nuw inrange(-16, 432) (i8, ptr @_ZTVN4llvm16TargetPassConfigE, i64 16), ptr %0, align 8, !tbaa !8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %2, ptr %i.d, align 8, !tbaa !312
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.e, i8 0, i64 64, i1 false)
  store <4 x i8> <i8 1, i8 0, i8 0, i8 1>, ptr %i.f, align 8, !tbaa !168
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %1, ptr %i.g, align 8, !tbaa !313
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 128
  store <4 x i8> <i8 0, i8 0, i8 1, i8 0>, ptr %i.i, align 8, !tbaa !168
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 2 uses
  store i8 0, ptr %i.j, align 4, !tbaa !314
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 133
  store i8 0, ptr %i.k, align 1, !tbaa !315
  %i.l = tail call noalias noundef nonnull dereferenceable(136) ptr @_Znwm(i64 noundef 136) #29 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.l, i8 0, i64 136, i1 false)
  store ptr %i.n, ptr %i.m, align 8, !tbaa !21
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 36
  store i32 4, ptr %i.o, align 4, !tbaa !202
  store ptr %i.l, ptr %i.h, align 8, !tbaa !42
  %i.p = tail call noundef ptr @_ZN4llvm12PassRegistry15getPassRegistryEv() #26 ; 4 uses
  tail call void @_ZN4llvm17initializeCodeGenERNS_12PassRegistryE(ptr noundef nonnull align 8 dereferenceable(160) %i.p) #26
  tail call void @_ZN4llvm40initializeLibcallLoweringInfoWrapperPassERNS_12PassRegistryE(ptr noundef nonnull align 8 dereferenceable(160) %i.p) #26
  tail call void @_ZN4llvm32initializeBasicAAWrapperPassPassERNS_12PassRegistryE(ptr noundef nonnull align 8 dereferenceable(160) %i.p) #26
  tail call void @_ZN4llvm34initializeAAResultsWrapperPassPassERNS_12PassRegistryE(ptr noundef nonnull align 8 dereferenceable(160) %i.p) #26
  %i.q = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL10EnableIPRA, i64 8), align 8, !tbaa !144
  %.not = icmp eq i16 %i.q, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL10EnableIPRA, i64 120), align 8, !tbaa !162, !range !18, !noundef !19
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 1308 ; 2 uses
  %i.t = load i32, ptr %i.s, align 4
  %i.u = zext nneg i8 %i.r to i32
  %i.v = shl nuw nsw i32 %i.u, 21                 ; 2 uses
  %i.w = and i32 %i.t, -2097153
  %i.x = or disjoint i32 %i.w, %i.v
  store i32 %i.x, ptr %i.s, align 4
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.y = load ptr, ptr %1, align 8, !tbaa !8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 232
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = tail call noundef zeroext i1 %i.aa(ptr noundef nonnull align 8 dereferenceable(1728) %1) #26
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 1308 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4            ; 2 uses
  %.mask = and i32 %i.ad, 2097152
  %i.ae = select i1 %i.ab, i32 2097152, i32 %.mask ; 2 uses
  %i.af = and i32 %i.ad, -2097153
  %i.ag = or disjoint i32 %i.ae, %i.af
  store i32 %i.ag, ptr %i.ac, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ah = phi i32 [ %i.ae, %bb.c ], [ %i.v, %bb.b ]
  %.not12 = icmp eq i32 %i.ah, 0
  br i1 %.not12, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i8 1, ptr %i.j, align 4, !tbaa !168
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ai = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL21EnableGlobalISelAbort, i64 8), align 8, !tbaa !144
  %.not13 = icmp eq i16 %i.ai, 0
  br i1 %.not13, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aj = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL21EnableGlobalISelAbort, i64 120), align 8, !tbaa !154
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 1300
  store i32 %i.aj, ptr %i.ak, align 4, !tbaa !316
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  tail call void @_ZN4llvm16TargetPassConfig18setStartStopPassesEv(ptr noundef nonnull align 8 dereferenceable(134) %0)
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

declare noundef ptr @_ZN4llvm12PassRegistry15getPassRegistryEv() local_unnamed_addr #9

declare void @_ZN4llvm17initializeCodeGenERNS_12PassRegistryE(ptr noundef nonnull align 8 dereferenceable(160)) local_unnamed_addr #9

declare void @_ZN4llvm40initializeLibcallLoweringInfoWrapperPassERNS_12PassRegistryE(ptr noundef nonnull align 8 dereferenceable(160)) local_unnamed_addr #9

declare void @_ZN4llvm32initializeBasicAAWrapperPassPassERNS_12PassRegistryE(ptr noundef nonnull align 8 dereferenceable(160)) local_unnamed_addr #9

declare void @_ZN4llvm34initializeAAResultsWrapperPassPassERNS_12PassRegistryE(ptr noundef nonnull align 8 dereferenceable(160)) local_unnamed_addr #9

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i32 @_ZNK4llvm16TargetPassConfig11getOptLevelEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(134) %0) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !313
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1064
  %i.d = load i32, ptr %i.c, align 8, !tbaa !424
  ret i32 %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm16TargetPassConfig10insertPassEPKvNS_18IdentifyingPassPtrE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(134) %0, ptr noundef %1, ptr %2, i8 %3) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !42   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !201  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %i.g = load i32, ptr %i.f, align 4, !tbaa !202
  %.not.i = icmp ult i32 %i.e, %i.g
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !203

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_112InsertedPassELb1EE18growAndEmplaceBackIJRPKvRNS_18IdentifyingPassPtrEEEERS2_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr %1, ptr %2, i8 %3)
  br label %_ZN4llvm15SmallVectorImplIN12_GLOBAL__N_112InsertedPassEE12emplace_backIJRPKvRNS_18IdentifyingPassPtrEEEERS2_DpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.h = zext i32 %i.e to i64
  %.val.i = load ptr, ptr %i.c, align 8, !tbaa !21
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %.val.i, i64 %i.h ; 3 uses
  store ptr %1, ptr %i.i, align 8, !tbaa !425
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %2, ptr %i.j, align 8, !tbaa !30
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i8 %3, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !168
  %i.k = load i32, ptr %i.d, align 8, !tbaa !201
  %i.l = add i32 %i.k, 1
  store i32 %i.l, ptr %i.d, align 8, !tbaa !201
  br label %_ZN4llvm15SmallVectorImplIN12_GLOBAL__N_112InsertedPassEE12emplace_backIJRPKvRNS_18IdentifyingPassPtrEEEERS2_DpOT_.exit

_ZN4llvm15SmallVectorImplIN12_GLOBAL__N_112InsertedPassEE12emplace_backIJRPKvRNS_18IdentifyingPassPtrEEEERS2_DpOT_.exit: ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull ptr @_ZN4llvm24CodeGenTargetMachineImpl16createPassConfigERNS_6legacy15PassManagerBaseE(ptr noundef nonnull align 8 dereferenceable(1728) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(136) ptr @_Znwm(i64 noundef 136) #29 ; 2 uses
  tail call void @_ZN4llvm16TargetPassConfigC1ERNS_13TargetMachineERNS_6legacy15PassManagerBaseE(ptr noundef nonnull align 8 dereferenceable(134) %i.a, ptr noundef nonnull align 8 dereferenceable(1728) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #26
  ret ptr %i.a
}

; Function Attrs: mustprogress noreturn nounwind uwtable
define dso_local void @_ZN4llvm16TargetPassConfigC2Ev(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(134) initializes((0, 28), (32, 108), (120, 134)) %0) unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.a, align 8, !tbaa !309
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @_ZN4llvm16TargetPassConfig2IDE, ptr %i.b, align 8, !tbaa !310
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 4, ptr %i.c, align 8, !tbaa !311
  store ptr getelementptr inbounds nuw inrange(-16, 432) (i8, ptr @_ZTVN4llvm16TargetPassConfigE, i64 16), ptr %0, align 8, !tbaa !8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.d, i8 0, i64 72, i1 false)
  store i8 1, ptr %i.e, align 8, !tbaa !119
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 105
  store i8 0, ptr %i.f, align 1, !tbaa !428
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 106
  store i8 0, ptr %i.g, align 2, !tbaa !429
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 107
  store i8 1, ptr %i.h, align 1, !tbaa !430
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr null, ptr %i.i, align 8, !tbaa !42
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i8 0, ptr %i.j, align 8, !tbaa !431
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 129
  store i8 0, ptr %i.k, align 1, !tbaa !432
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 130
  store i8 1, ptr %i.l, align 2, !tbaa !433
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 131
  store i8 0, ptr %i.m, align 1, !tbaa !434
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 132
  store i8 0, ptr %i.n, align 4, !tbaa !314
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 133
  store i8 0, ptr %i.o, align 1, !tbaa !315
  tail call void @_ZN4llvm21reportFatalUsageErrorEPKc(ptr noundef nonnull @.str.175) #28
  unreachable
}

; Function Attrs: noreturn
declare void @_ZN4llvm21reportFatalUsageErrorEPKc(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZN4llvm16TargetPassConfig27willCompleteCodeGenPipelineEv() local_unnamed_addr #12 align 2 {
bb.a:
  %i.a = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZL13StopBeforeOptB5cxx11, i64 128), align 8, !tbaa !57
  %i.b = icmp eq i64 %i.a, 0
  %i.c = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZL12StopAfterOptB5cxx11, i64 128), align 8
  %i.d = icmp eq i64 %i.c, 0
  %i.e = select i1 %i.b, i1 %i.d, i1 false
  ret i1 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZN4llvm16TargetPassConfig25hasLimitedCodeGenPipelineEv() local_unnamed_addr #12 align 2 {
bb.a:
  %i.a = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZL14StartBeforeOptB5cxx11, i64 128), align 8, !tbaa !57
  %i.b = icmp eq i64 %i.a, 0
  %i.c = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZL13StartAfterOptB5cxx11, i64 128), align 8
end_hunk_0
