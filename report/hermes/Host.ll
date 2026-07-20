inline.NumInlined: 664
inline.NumDeleted: 237
begin_hunk_0_@_ZN4llvh3sys6detail22getHostCPUNameForS390xENS_9StringRefE:bb.a
  %i.an = phi i1 [ %.033117, %bb.c ], [ %spec.select, %_ZNK4llvh9StringRef6equalsES0_.exit ] ; 2 uses
  %indvars.iv.next132 = add nuw nsw i64 %indvars.iv131, 1 ; 2 uses
  %.not40 = icmp eq i64 %indvars.iv.next132, %i.ae
  br i1 %.not40, label %._crit_edge, label %bb.c, !llvm.loop !43

bb.d:                                             ; preds = %.lr.ph122, %_ZNK4llvh9StringRef10startswithES0_.exit.thread
  %indvars.iv133 = phi i64 [ 0, %.lr.ph122 ], [ %indvars.iv.next134, %_ZNK4llvh9StringRef10startswithES0_.exit.thread ] ; 3 uses
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %i.af, i64 %indvars.iv133 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !33
  %.not.i = icmp ult i64 %i.aq, 10
  br i1 %.not.i, label %_ZNK4llvh9StringRef10startswithES0_.exit.thread, label %_ZNK4llvh9StringRef10startswithES0_.exit

_ZNK4llvh9StringRef10startswithES0_.exit:         ; preds = %bb.d
  %i.ar = load ptr, ptr %i.ao, align 8, !tbaa !35 ; 2 uses
  %i.as = load i64, ptr %i.ar, align 1
  %i.at = xor i64 %i.as, 8030889439828865648
  %i.au = getelementptr i8, ptr %i.ar, i64 8
  %i.av = load i16, ptr %i.au, align 1
  %i.aw = zext i16 %i.av to i64
  %i.ax = xor i64 %i.aw, 8306
  %i.ay = or i64 %i.at, %i.ax
  %i.az = icmp ne i64 %i.ay, 0
  %i.ba = zext i1 %i.az to i32
  %i.bb = icmp eq i32 %i.ba, 0
  br i1 %i.bb, label %_ZNK4llvh9StringRef10startswithES0_.exit.thread104, label %_ZNK4llvh9StringRef10startswithES0_.exit.thread

_ZNK4llvh9StringRef10startswithES0_.exit.thread104: ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit
  %i.bc = call noundef i64 @_ZNK4llvh9StringRef4findES0_m(ptr noundef nonnull align 8 dereferenceable(16) %i.ao, ptr nonnull @.str.101, i64 10, i64 noundef 0) #20 ; 2 uses
  %.not42 = icmp eq i64 %i.bc, -1
  br i1 %.not42, label %.critedge46, label %bb.e

bb.e:                                             ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit.thread104
  %i.bd = add i64 %i.bc, 10
  %i.be = load ptr, ptr %3, align 8, !tbaa !29
  %i.bf = getelementptr inbounds nuw [16 x i8], ptr %i.be, i64 %indvars.iv133 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !19 ; 2 uses
  %.sroa.speculated80 = call i64 @llvm.umin.i64(i64 %i.bh, i64 %i.bd) ; 2 uses
  %i.bi = load ptr, ptr %i.bf, align 8, !tbaa !35
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %.sroa.speculated80
  %i.bk = sub i64 %i.bh, %.sroa.speculated80
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.bl = call noundef zeroext i1 @_ZN4llvh20getAsUnsignedIntegerENS_9StringRefEjRy(ptr %i.bj, i64 %i.bk, i32 noundef 10, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #20
  br i1 %i.bl, label %_ZNK4llvh9StringRef12getAsIntegerIjEENSt9enable_ifIXntsr3std14numeric_limitsIT_EE9is_signedEbE4typeEjRS3_.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bm = load i64, ptr %i.a, align 8, !tbaa !44  ; 5 uses
  %.not.i59 = icmp ult i64 %i.bm, 4294967296
  br i1 %.not.i59, label %bb.g, label %_ZNK4llvh9StringRef12getAsIntegerIjEENSt9enable_ifIXntsr3std14numeric_limitsIT_EE9is_signedEbE4typeEjRS3_.exit.thread

_ZNK4llvh9StringRef12getAsIntegerIjEENSt9enable_ifIXntsr3std14numeric_limitsIT_EE9is_signedEbE4typeEjRS3_.exit.thread: ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %.critedge46

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %i.bn = icmp samesign ugt i64 %i.bm, 3905
  %or.cond = select i1 %i.bn, i1 %.033.lcssa.ph, i1 false
  br i1 %or.cond, label %.critedge44, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bo = icmp samesign ugt i64 %i.bm, 2963
  %or.cond5 = select i1 %i.bo, i1 %.033.lcssa.ph, i1 false
  br i1 %or.cond5, label %.critedge44, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bp = icmp samesign ugt i64 %i.bm, 2826
  br i1 %i.bp, label %.critedge44, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bq = icmp samesign ugt i64 %i.bm, 2816
  br i1 %i.bq, label %.critedge44, label %.critedge46

_ZNK4llvh9StringRef10startswithES0_.exit.thread:  ; preds = %bb.d, %_ZNK4llvh9StringRef10startswithES0_.exit
  %indvars.iv.next134 = add nuw nsw i64 %indvars.iv133, 1 ; 2 uses
  %.not41 = icmp eq i64 %indvars.iv.next134, %i.ag
  br i1 %.not41, label %.critedge46, label %bb.d, !llvm.loop !46

.critedge46:                                      ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit.thread, %bb.a, %._crit_edge, %bb.j, %_ZNK4llvh9StringRef12getAsIntegerIjEENSt9enable_ifIXntsr3std14numeric_limitsIT_EE9is_signedEbE4typeEjRS3_.exit.thread, %_ZNK4llvh9StringRef10startswithES0_.exit.thread104
  br label %.critedge44

.critedge44:                                      ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %.critedge46
  %.sroa.073.1 = phi ptr [ @.str.1, %.critedge46 ], [ @.str.104, %bb.i ], [ @.str.102, %bb.g ], [ @.str.103, %bb.h ], [ @.str.105, %bb.j ]
  %.sroa.6.1 = phi i64 [ 7, %.critedge46 ], [ 5, %bb.i ], [ 3, %bb.g ], [ 3, %bb.h ], [ 4, %bb.j ]
  %i.br = load ptr, ptr %4, align 8, !tbaa !29    ; 2 uses
  %i.bs = icmp eq ptr %i.br, %i.f
  br i1 %i.bs, label %_ZN4llvh11SmallVectorINS_9StringRefELj32EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %.critedge44
  call void @free(ptr noundef %i.br) #20
  br label %_ZN4llvh11SmallVectorINS_9StringRefELj32EED2Ev.exit

_ZN4llvh11SmallVectorINS_9StringRefELj32EED2Ev.exit: ; preds = %.critedge44, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.bt = load ptr, ptr %3, align 8, !tbaa !29    ; 2 uses
  %i.bu = icmp eq ptr %i.bt, %i.c
  br i1 %i.bu, label %_ZN4llvh11SmallVectorINS_9StringRefELj32EED2Ev.exit61, label %bb.l

bb.l:                                             ; preds = %_ZN4llvh11SmallVectorINS_9StringRefELj32EED2Ev.exit
  call void @free(ptr noundef %i.bt) #20
  br label %_ZN4llvh11SmallVectorINS_9StringRefELj32EED2Ev.exit61

_ZN4llvh11SmallVectorINS_9StringRefELj32EED2Ev.exit61: ; preds = %_ZN4llvh11SmallVectorINS_9StringRefELj32EED2Ev.exit, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %.sroa.073.1, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %.sroa.6.1, 1
  ret { ptr, i64 } %.fca.1.insert
}

declare noundef i64 @_ZNK4llvh9StringRef4findES0_m(ptr noundef nonnull align 8 dereferenceable(16), ptr, i64, i64 noundef) local_unnamed_addr #3

declare void @_ZNK4llvh9StringRef5splitERNS_15SmallVectorImplIS0_EEcib(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16), i8 noundef signext, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define hidden { ptr, i64 } @_ZN4llvh3sys6detail20getHostCPUNameForBPFEv() local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %0 = alloca %struct.bpf_prog_load_attr, align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) @__const._ZN4llvh3sys6detail20getHostCPUNameForBPFEv.insns, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #20
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  store i32 1, ptr %0, align 8, !tbaa !47
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 5, ptr %i.c, align 4, !tbaa !49
  %i.d = ptrtoint ptr %i.a to i64
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.d, ptr %i.e, align 8, !tbaa !50
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 ptrtoint (ptr @.str.106 to i64), ptr %i.f, align 8, !tbaa !51
  %i.g = call i64 (i64, ...) @syscall(i64 noundef 321, i32 noundef 5, ptr noundef nonnull %0, i64 noundef 48) #20
  %i.h = trunc i64 %i.g to i32                    ; 2 uses
  %i.i = icmp sgt i32 %i.h, -1
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = call i32 @close(i32 noundef %i.h) #20    ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi ptr [ @.str.107, %bb.b ], [ @.str.108, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 2, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nounwind
declare i64 @syscall(i64 noundef, ...) local_unnamed_addr #5

declare i32 @close(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none) uwtable
define hidden { ptr, i64 } @_ZN4llvh3sys14getHostCPUNameEv() local_unnamed_addr #6 {
bb.a:
  %i.a = tail call { i32, i32, i32, i32 } asm "movq\09%rbx, %rsi\0A\09cpuid\0A\09xchgq\09%rbx, %rsi\0A\09", "={ax},={si},={cx},={dx},{ax},~{dirflag},~{fpsr},~{flags}"(i32 0) #23, !srcloc !52 ; 2 uses
  %i.b = extractvalue { i32, i32, i32, i32 } %i.a, 0 ; 2 uses
  %i.c = extractvalue { i32, i32, i32, i32 } %i.a, 1
  %i.d = icmp eq i32 %i.b, 0
  br i1 %i.d, label %bb.bm, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call { i32, i32, i32, i32 } asm "movq\09%rbx, %rsi\0A\09cpuid\0A\09xchgq\09%rbx, %rsi\0A\09", "={ax},={si},={cx},={dx},{ax},~{dirflag},~{fpsr},~{flags}"(i32 1) #23, !srcloc !52 ; 4 uses
  %i.f = extractvalue { i32, i32, i32, i32 } %i.e, 0 ; 4 uses
  %i.g = extractvalue { i32, i32, i32, i32 } %i.e, 1
  %i.h = extractvalue { i32, i32, i32, i32 } %i.e, 2 ; 5 uses
  %i.i = extractvalue { i32, i32, i32, i32 } %i.e, 3
  %i.j = lshr i32 %i.f, 8
  %i.k = and i32 %i.j, 15                         ; 3 uses
  %i.l = lshr i32 %i.f, 4
  %i.m = and i32 %i.l, 15                         ; 2 uses
  switch i32 %i.k, label %_ZL20detectX86FamilyModeljPjS_.exit [
    i32 15, label %bb.c
    i32 6, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.n = lshr i32 %i.f, 20
  %i.o = and i32 %i.n, 255
  %i.p = add nuw nsw i32 %i.o, 15
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.030 = phi i32 [ %i.p, %bb.c ], [ %i.k, %bb.b ]
  %i.q = lshr i32 %i.f, 12
  %i.r = and i32 %i.q, 240
  %i.s = or disjoint i32 %i.m, %i.r
  br label %_ZL20detectX86FamilyModeljPjS_.exit

_ZL20detectX86FamilyModeljPjS_.exit:              ; preds = %bb.b, %bb.d
  %.131 = phi i32 [ %i.k, %bb.b ], [ %.030, %bb.d ] ; 2 uses
  %.029 = phi i32 [ %i.m, %bb.b ], [ %i.s, %bb.d ] ; 5 uses
  %i.t = lshr i32 %i.i, 22
  %i.u = shl i32 %i.h, 5
  %i.v = and i32 %i.u, 32
  %i.w = lshr i32 %i.h, 3
  %i.x = and i32 %i.w, 64
  %i.y = lshr i32 %i.h, 12
  %.2.i = or disjoint i32 %i.v, %i.x
  %i.z = and i32 %i.y, 384
  %.5.i = or disjoint i32 %.2.i, %i.z
  %0 = and i32 %i.t, 26
  %.11.i = or disjoint i32 %.5.i, %0              ; 3 uses
  %i.aa = lshr i32 %i.h, 22
  %.lobit442.i = and i32 %i.aa, 1                 ; 2 uses
  %i.ab = and i32 %i.h, 402653184
  %i.ac = icmp eq i32 %i.ab, 402653184
  br i1 %i.ac, label %bb.e, label %.thread.i

bb.e:                                             ; preds = %_ZL20detectX86FamilyModeljPjS_.exit
  %i.ad = tail call { i32, i32 } asm ".byte 0x0f, 0x01, 0xd0", "={ax},={dx},{cx},~{dirflag},~{fpsr},~{flags}"(i32 0) #23, !srcloc !53
  %.fr.i = freeze { i32, i32 } %i.ad
  %i.ae = extractvalue { i32, i32 } %.fr.i, 0     ; 2 uses
  %i.af = and i32 %i.ae, 6
  %i.ag = icmp eq i32 %i.af, 6                    ; 2 uses
  %i.ah = and i32 %i.ae, 230
  %i.ai = icmp eq i32 %i.ah, 230
  %i.aj = or disjoint i32 %.11.i, 512
  %spec.select441.i = select i1 %i.ag, i32 %i.aj, i32 %.11.i
  br label %.thread.i

.thread.i:                                        ; preds = %bb.e, %_ZL20detectX86FamilyModeljPjS_.exit
  %i.ak = phi i1 [ false, %_ZL20detectX86FamilyModeljPjS_.exit ], [ %i.ai, %bb.e ] ; 3 uses
  %i.al = phi i1 [ false, %_ZL20detectX86FamilyModeljPjS_.exit ], [ %i.ag, %bb.e ]
  %i.am = phi i32 [ %.11.i, %_ZL20detectX86FamilyModeljPjS_.exit ], [ %spec.select441.i, %bb.e ] ; 3 uses
  %i.an = icmp ugt i32 %i.b, 6
  br i1 %i.an, label %bb.f, label %.critedge.i

bb.f:                                             ; preds = %.thread.i
  %i.ao = tail call { i32, i32, i32, i32 } asm "movq\09%rbx, %rsi\0A\09cpuid\0A\09xchgq\09%rbx, %rsi\0A\09", "={ax},={si},={cx},={dx},{ax},{cx},~{dirflag},~{fpsr},~{flags}"(i32 7, i32 0) #23, !srcloc !54 ; 2 uses
  %i.ap = extractvalue { i32, i32, i32, i32 } %i.ao, 1 ; 6 uses
  %i.aq = extractvalue { i32, i32, i32, i32 } %i.ao, 2
  %i.ar = and i32 %i.ap, 32
  %i.as = icmp ne i32 %i.ar, 0
  %or.cond.i = and i1 %i.al, %i.as
  %i.at = or i32 %i.am, 1024
  %spec.select130.i = select i1 %or.cond.i, i32 %i.at, i32 %i.am ; 2 uses
  %i.au = lshr i32 %i.ap, 18
  %i.av = and i32 %i.au, 2
  %i.aw = lshr i32 %i.ap, 20
  %i.ax = and i32 %i.aw, 8
  %i.ay = and i32 %i.ap, 134217728
  %i.az = icmp ne i32 %i.ay, 0
  %or.cond11.i = and i1 %i.ak, %i.az
  %i.ba = or i32 %spec.select130.i, 16777216
  %spec.select138.i = select i1 %or.cond11.i, i32 %i.ba, i32 %spec.select130.i ; 2 uses
  %i.bb = lshr i32 %i.ap, 25
  %i.bc = and i32 %i.bb, 16
  %i.bd = or disjoint i32 %i.av, %i.ax
  %i.be = or disjoint i32 %i.bd, %i.bc
  %spec.select140.i = or disjoint i32 %i.be, %.lobit442.i
  %i.bf = icmp slt i32 %i.ap, 0
  %or.cond17.i = and i1 %i.ak, %i.bf
  %i.bg = or i32 %spec.select138.i, 1048576
  %spec.select142.i.a = select i1 %or.cond17.i, i32 %i.bg, i32 %spec.select138.i ; 2 uses
  %i.bh = and i32 %i.aq, 2
  %i.bi = icmp ne i32 %i.bh, 0
  %or.cond19.i = and i1 %i.ak, %i.bi
  %i.bj = or i32 %spec.select142.i.a, 67108864
  %spec.select143.i = select i1 %or.cond19.i, i32 %i.bj, i32 %spec.select142.i.a
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.f, %.thread.i
  %.3105363371388396408415.i = phi i32 [ %spec.select140.i, %bb.f ], [ %.lobit442.i, %.thread.i ] ; 2 uses
  %.27.i = phi i32 [ %spec.select143.i, %bb.f ], [ %i.am, %.thread.i ] ; 16 uses
  %i.bk = tail call { i32, i32, i32, i32 } asm "movq\09%rbx, %rsi\0A\09cpuid\0A\09xchgq\09%rbx, %rsi\0A\09", "={ax},={si},={cx},={dx},{ax},~{dirflag},~{fpsr},~{flags}"(i32 -2147483648) #23, !srcloc !52
  %i.bl = extractvalue { i32, i32, i32, i32 } %i.bk, 0
  %i.bm = icmp ugt i32 %i.bl, -2147483648
  br i1 %i.bm, label %bb.g, label %_ZL20getAvailableFeaturesjjjPjS_.exit

bb.g:                                             ; preds = %.critedge.i
  %i.bn = tail call { i32, i32, i32, i32 } asm "movq\09%rbx, %rsi\0A\09cpuid\0A\09xchgq\09%rbx, %rsi\0A\09", "={ax},={si},={cx},={dx},{ax},~{dirflag},~{fpsr},~{flags}"(i32 -2147483647) #23, !srcloc !52
  %i.bo = extractvalue { i32, i32, i32, i32 } %i.bn, 3
  %i.bp = lshr i32 %i.bo, 27
  %i.bq = and i32 %i.bp, 4
  %spec.select152.i = or i32 %i.bq, %.3105363371388396408415.i
  br label %_ZL20getAvailableFeaturesjjjPjS_.exit

_ZL20getAvailableFeaturesjjjPjS_.exit:            ; preds = %.critedge.i, %bb.g
  %.4106.i = phi i32 [ %spec.select152.i, %bb.g ], [ %.3105363371388396408415.i, %.critedge.i ] ; 7 uses
  switch i32 %i.c, label %bb.bl [
    i32 1970169159, label %bb.h
    i32 1752462657, label %bb.af
  ]

bb.h:                                             ; preds = %_ZL20getAvailableFeaturesjjjPjS_.exit
  %i.br = and i32 %i.g, 255
  %.not.i = icmp eq i32 %i.br, 0
  br i1 %.not.i, label %bb.i, label %bb.bl

bb.i:                                             ; preds = %bb.h
  switch i32 %.131, label %bb.bl [
    i32 3, label %bb.bm
    i32 4, label %bb.bd
    i32 5, label %bb.j
    i32 6, label %bb.k
    i32 15, label %bb.ad
  ]

bb.j:                                             ; preds = %bb.i
  %i.bs = and i32 %.27.i, 2
  %.not112.i = icmp eq i32 %i.bs, 0               ; 2 uses
  %.str.138..str.139 = select i1 %.not112.i, ptr @.str.138, ptr @.str.139
  %. = select i1 %.not112.i, i64 7, i64 11
  br label %bb.bm

bb.k:                                             ; preds = %bb.i
  switch i32 %.029, label %bb.l [
    i32 1, label %bb.be
    i32 3, label %bb.bf
    i32 5, label %bb.bf
    i32 6, label %bb.bf
    i32 7, label %bb.bg
    i32 8, label %bb.bg
    i32 10, label %bb.bg
    i32 11, label %bb.bg
    i32 9, label %bb.bh
    i32 13, label %bb.bh
    i32 21, label %bb.bh
    i32 14, label %bb.bi
    i32 15, label %bb.av
    i32 22, label %bb.av
    i32 23, label %bb.aw
    i32 29, label %bb.aw
    i32 26, label %bb.bm
    i32 30, label %bb.bm
    i32 31, label %bb.bm
    i32 46, label %bb.bm
    i32 37, label %bb.am
    i32 44, label %bb.am
    i32 47, label %bb.am
    i32 42, label %bb.an
    i32 45, label %bb.an
    i32 58, label %bb.ap
    i32 62, label %bb.ap
    i32 60, label %bb.aq
    i32 63, label %bb.aq
    i32 69, label %bb.aq
    i32 70, label %bb.aq
    i32 61, label %bb.ar
    i32 71, label %bb.ar
    i32 79, label %bb.ar
    i32 86, label %bb.ar
    i32 78, label %bb.as
    i32 94, label %bb.as
    i32 142, label %bb.as
    i32 158, label %bb.as
    i32 85, label %bb.at
    i32 102, label %bb.au
    i32 28, label %bb.ax
    i32 38, label %bb.ax
    i32 39, label %bb.ax
    i32 53, label %bb.ax
    i32 54, label %bb.ax
    i32 55, label %bb.ay
    i32 74, label %bb.ay
    i32 77, label %bb.ay
    i32 90, label %bb.ay
    i32 93, label %bb.ay
    i32 76, label %bb.ay
    i32 92, label %bb.bj
    i32 95, label %bb.bj
    i32 122, label %bb.bk
    i32 87, label %bb.az
    i32 133, label %bb.bc
  ]

bb.l:                                             ; preds = %bb.k
  %i.bt = and i32 %.27.i, 67108864
  %.not94.i = icmp eq i32 %i.bt, 0
  br i1 %.not94.i, label %bb.m, label %bb.au

bb.m:                                             ; preds = %bb.l
  %i.bu = and i32 %.27.i, 1048576
  %.not95.i = icmp eq i32 %i.bu, 0
  br i1 %.not95.i, label %bb.n, label %bb.at

bb.n:                                             ; preds = %bb.m
  %i.bv = and i32 %.27.i, 16777216
  %.not96.i = icmp eq i32 %i.bv, 0
  br i1 %.not96.i, label %bb.o, label %bb.az

bb.o:                                             ; preds = %bb.n
  %i.bw = and i32 %.4106.i, 8
  %.not97.i = icmp eq i32 %i.bw, 0
  br i1 %.not97.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bx = and i32 %.4106.i, 16
  %.not111.i = icmp eq i32 %i.bx, 0
  br i1 %.not111.i, label %bb.as, label %bb.bj

bb.q:                                             ; preds = %bb.o
  %i.by = and i32 %.4106.i, 2
  %.not98.i = icmp eq i32 %i.by, 0
  br i1 %.not98.i, label %bb.r, label %bb.ar

bb.r:                                             ; preds = %bb.q
  %i.bz = and i32 %.27.i, 1024
  %.not99.i = icmp eq i32 %i.bz, 0
  br i1 %.not99.i, label %bb.s, label %bb.aq

bb.s:                                             ; preds = %bb.r
  %i.ca = and i32 %.27.i, 512
  %.not100.i = icmp eq i32 %i.ca, 0
  br i1 %.not100.i, label %bb.t, label %bb.an

bb.t:                                             ; preds = %bb.s
  %i.cb = and i32 %.27.i, 256
  %.not101.i = icmp eq i32 %i.cb, 0
  br i1 %.not101.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %1 = and i32 %.4106.i, 1
  %.not110.i = icmp eq i32 %1, 0
  br i1 %.not110.i, label %bb.bm, label %bb.ay

bb.v:                                             ; preds = %bb.t
  %i.cc = and i32 %.27.i, 128
  %.not102.i = icmp eq i32 %i.cc, 0
  br i1 %.not102.i, label %bb.w, label %bb.aw

bb.w:                                             ; preds = %bb.v
  %i.cd = and i32 %.27.i, 64
  %.not103.i = icmp eq i32 %i.cd, 0
  br i1 %.not103.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %2 = and i32 %.4106.i, 1
  %.not109.i = icmp eq i32 %2, 0
  br i1 %.not109.i, label %bb.av, label %bb.ax

bb.y:                                             ; preds = %bb.w
  %i.ce = and i32 %.4106.i, 4
  %.not104.i = icmp eq i32 %i.ce, 0
  br i1 %.not104.i, label %bb.z, label %bb.av

bb.z:                                             ; preds = %bb.y
  %i.cf = and i32 %.27.i, 32
  %.not105.i = icmp eq i32 %i.cf, 0
  br i1 %.not105.i, label %bb.aa, label %bb.bi

bb.aa:                                            ; preds = %bb.z
  %i.cg = and i32 %.27.i, 16
  %.not106.i = icmp eq i32 %i.cg, 0
  br i1 %.not106.i, label %bb.ab, label %bb.bh

bb.ab:                                            ; preds = %bb.aa
  %i.ch = and i32 %.27.i, 8
  %.not107.i = icmp eq i32 %i.ch, 0
  br i1 %.not107.i, label %bb.ac, label %bb.bg

bb.ac:                                            ; preds = %bb.ab
  %i.ci = and i32 %.27.i, 2
  %.not108.i = icmp eq i32 %i.ci, 0
  br i1 %.not108.i, label %bb.be, label %bb.bf

bb.ad:                                            ; preds = %bb.i
  %i.cj = and i32 %.4106.i, 4
  %.not92.i = icmp eq i32 %i.cj, 0
  br i1 %.not92.i, label %bb.ae, label %bb.bm

bb.ae:                                            ; preds = %bb.ad
  %i.ck = and i32 %.27.i, 32
  %.not93.i = icmp eq i32 %i.ck, 0
  %.str.143..str.147 = select i1 %.not93.i, ptr @.str.143, ptr @.str.147
  br label %bb.bm

bb.af:                                            ; preds = %_ZL20getAvailableFeaturesjjjPjS_.exit
  switch i32 %.131, label %bb.bl [
    i32 4, label %bb.bd
    i32 5, label %bb.ag
    i32 6, label %bb.ah
    i32 15, label %bb.ai
    i32 16, label %bb.bm
    i32 20, label %bb.ba
    i32 21, label %bb.aj
    i32 22, label %bb.bb
    i32 23, label %bb.ao
  ]

bb.ag:                                            ; preds = %bb.af
  %switch.tableidx = add nsw i32 %.029, -6        ; 3 uses
  %i.cl = icmp ult i32 %switch.tableidx, 8
  br i1 %i.cl, label %switch.lookup, label %bb.bm

bb.ah:                                            ; preds = %bb.af
  %i.cm = and i32 %.27.i, 8
  %.not42.i = icmp eq i32 %i.cm, 0                ; 2 uses
  %.str.148..str.149 = select i1 %.not42.i, ptr @.str.148, ptr @.str.149
  %.174 = select i1 %.not42.i, i64 6, i64 9
  br label %bb.bm

bb.ai:                                            ; preds = %bb.af
  %i.cn = and i32 %.27.i, 32
  %.not.i8 = icmp eq i32 %i.cn, 0                 ; 2 uses
  %.str.150..str.151 = select i1 %.not.i8, ptr @.str.150, ptr @.str.151
  %.175 = select i1 %.not.i8, i64 2, i64 7
  br label %bb.bm

bb.aj:                                            ; preds = %bb.af
  %i.co = and i32 %.029, -32
  %or.cond.i4 = icmp eq i32 %i.co, 96
  br i1 %or.cond.i4, label %bb.bm, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.cp = and i32 %.029, -16                      ; 2 uses
  %or.cond3.i5 = icmp eq i32 %i.cp, 48
  br i1 %or.cond3.i5, label %bb.bm, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %or.cond5.i6 = icmp eq i32 %i.cp, 16
  %i.cq = icmp eq i32 %.029, 2
  %or.cond7.i7 = or i1 %i.cq, %or.cond5.i6
  %.str.114..str.113 = select i1 %or.cond7.i7, ptr @.str.114, ptr @.str.113
  br label %bb.bm

bb.am:                                            ; preds = %bb.k, %bb.k, %bb.k
  br label %bb.bm

bb.an:                                            ; preds = %bb.k, %bb.k, %bb.s
  br label %bb.bm

bb.ao:                                            ; preds = %bb.af
  br label %bb.bm

bb.ap:                                            ; preds = %bb.k, %bb.k
  br label %bb.bm

bb.aq:                                            ; preds = %bb.k, %bb.k, %bb.k, %bb.k, %bb.r
  br label %bb.bm

bb.ar:                                            ; preds = %bb.k, %bb.k, %bb.k, %bb.k, %bb.q
  br label %bb.bm

bb.as:                                            ; preds = %bb.p, %bb.k, %bb.k, %bb.k, %bb.k
  br label %bb.bm

bb.at:                                            ; preds = %bb.k, %bb.m
  br label %bb.bm

bb.au:                                            ; preds = %bb.k, %bb.l
  br label %bb.bm

bb.av:                                            ; preds = %bb.x, %bb.k, %bb.k, %bb.y
  br label %bb.bm

bb.aw:                                            ; preds = %bb.k, %bb.k, %bb.v
  br label %bb.bm

bb.ax:                                            ; preds = %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.x
  br label %bb.bm

bb.ay:                                            ; preds = %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.u
  br label %bb.bm

bb.az:                                            ; preds = %bb.k, %bb.n
  br label %bb.bm

bb.ba:                                            ; preds = %bb.af
  br label %bb.bm

bb.bb:                                            ; preds = %bb.af
  br label %bb.bm

bb.bc:                                            ; preds = %bb.k
  br label %bb.bm

bb.bd:                                            ; preds = %bb.af, %bb.i
  br label %bb.bm

bb.be:                                            ; preds = %bb.ac, %bb.k
  br label %bb.bm

bb.bf:                                            ; preds = %bb.k, %bb.k, %bb.k, %bb.ac
  br label %bb.bm

bb.bg:                                            ; preds = %bb.k, %bb.k, %bb.k, %bb.k, %bb.ab
  br label %bb.bm

bb.bh:                                            ; preds = %bb.k, %bb.k, %bb.k, %bb.aa
  br label %bb.bm

bb.bi:                                            ; preds = %bb.k, %bb.z
  br label %bb.bm

bb.bj:                                            ; preds = %bb.k, %bb.k, %bb.p
  br label %bb.bm

bb.bk:                                            ; preds = %bb.k
  br label %bb.bm

bb.bl:                                            ; preds = %bb.af, %bb.h, %bb.i, %_ZL20getAvailableFeaturesjjjPjS_.exit
  br label %bb.bm

switch.lookup:                                    ; preds = %bb.ag
  %i.cr = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN4llvh3sys14getHostCPUNameEv, i64 %i.cr
  %switch.load = load ptr, ptr %switch.gep, align 8
  %i.cs = zext nneg i32 %switch.tableidx to i64
  %switch.gep177 = getelementptr inbounds nuw i8, ptr @switch.table._ZN4llvh3sys14getHostCPUNameEv.1, i64 %i.cs
  %switch.load178 = load i8, ptr %switch.gep177, align 1
  %switch.ext = zext i8 %switch.load178 to i64
  br label %bb.bm

bb.bm:                                            ; preds = %bb.ag, %switch.lookup, %bb.ad, %bb.i, %bb.aj, %bb.ak, %bb.k, %bb.k, %bb.k, %bb.k, %bb.u, %bb.al, %bb.af, %bb.ai, %bb.ah, %bb.ae, %bb.j, %bb.a, %bb.am, %bb.an, %bb.ao, %bb.ap, %bb.aq, %bb.ar, %bb.as, %bb.at, %bb.au, %bb.av, %bb.aw, %bb.ax, %bb.ay, %bb.az, %bb.ba, %bb.bb, %bb.bc, %bb.bd, %bb.be, %bb.bf, %bb.bg, %bb.bh, %bb.bi, %bb.bj, %bb.bk, %bb.bl
  %.sroa.0.1 = phi ptr [ @.str.121, %bb.as ], [ @.str.1, %bb.bl ], [ @.str.130, %bb.ax ], [ @.str.117, %bb.ao ], [ @.str.118, %bb.ap ], [ @.str.123, %bb.au ], [ @.str.122, %bb.at ], [ @.str.131, %bb.ay ], [ @.str.132, %bb.az ], [ @.str.133, %bb.ba ], [ @.str.134, %bb.bb ], [ @.str.119, %bb.aq ], [ @.str.135, %bb.bc ], [ %switch.load, %switch.lookup ], [ @.str.137, %bb.bd ], [ @.str.136, %bb.i ], [ @.str.120, %bb.ar ], [ @.str.140, %bb.be ], [ @.str.141, %bb.bf ], [ @.str.142, %bb.bg ], [ @.str.109, %bb.k ], [ @.str.144, %bb.bh ], [ @.str.145, %bb.bi ], [ @.str.109, %bb.k ], [ @.str.146, %bb.ad ], [ @.str.1, %bb.a ], [ @.str.115, %bb.ak ], [ @.str.109, %bb.u ], [ %.str.148..str.149, %bb.ah ], [ %.str.143..str.147, %bb.ae ], [ %.str.138..str.139, %bb.j ], [ @.str.152, %bb.bj ], [ @.str.153, %bb.bk ], [ @.str.116, %bb.aj ], [ @.str.112, %bb.af ], [ @.str.110, %bb.am ], [ @.str.111, %bb.an ], [ %.str.114..str.113, %bb.al ], [ %.str.150..str.151, %bb.ai ], [ @.str.125, %bb.aw ], [ @.str.124, %bb.av ], [ @.str.109, %bb.k ], [ @.str.109, %bb.k ], [ @.str.138, %bb.ag ]
  %.sroa.58.1 = phi i64 [ 7, %bb.as ], [ 7, %bb.bl ], [ 7, %bb.ax ], [ 6, %bb.ao ], [ 9, %bb.ap ], [ 10, %bb.au ], [ 14, %bb.at ], [ 10, %bb.ay ], [ 3, %bb.az ], [ 6, %bb.ba ], [ 6, %bb.bb ], [ 7, %bb.aq ], [ 3, %bb.bc ], [ %switch.ext, %switch.lookup ], [ 4, %bb.bd ], [ 4, %bb.i ], [ 9, %bb.ar ], [ 10, %bb.be ], [ 8, %bb.bf ], [ 8, %bb.bg ], [ 7, %bb.k ], [ 9, %bb.bh ], [ 5, %bb.bi ], [ 7, %bb.k ], [ 6, %bb.ad ], [ 7, %bb.a ], [ 6, %bb.ak ], [ 7, %bb.u ], [ %.174, %bb.ah ], [ 8, %bb.ae ], [ %., %bb.j ], [ 8, %bb.bj ], [ 13, %bb.bk ], [ 6, %bb.aj ], [ 8, %bb.af ], [ 8, %bb.am ], [ 11, %bb.an ], [ 6, %bb.al ], [ %.175, %bb.ai ], [ 6, %bb.aw ], [ 5, %bb.av ], [ 7, %bb.k ], [ 7, %bb.k ], [ 7, %bb.ag ]
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %.sroa.0.1, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %.sroa.58.1, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZN4llvh3sys23getHostNumPhysicalCoresEv() local_unnamed_addr #0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN4llvh3sys23getHostNumPhysicalCoresEvE8NumCores acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d, !prof !55

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4llvh3sys23getHostNumPhysicalCoresEvE8NumCores) #20
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call fastcc noundef i32 @_ZL27computeHostNumPhysicalCoresv()
  store i32 %i.d, ptr @_ZZN4llvh3sys23getHostNumPhysicalCoresEvE8NumCores, align 4, !tbaa !3
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4llvh3sys23getHostNumPhysicalCoresEvE8NumCores) #20
  br label %bb.d

end_hunk_0
begin_hunk_1_@_ZL27computeHostNumPhysicalCoresv:bb.a
  %i.gb = load ptr, ptr %i.ga, align 8
  call void %i.gb(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.fy) #20, !inline_history !93
  br label %_ZN4llvh7ErrorOrISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EEED2Ev.exit

_ZN4llvh7ErrorOrISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EEED2Ev.exit: ; preds = %bb.p, %bb.q, %_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  ret i32 %.1
}

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN4llvh3sys18getHostCPUFeaturesERNS_9StringMapIbNS_15MallocAllocatorEEE(ptr noundef nonnull align 8 dereferenceable(25) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call { i32, i32, i32, i32 } asm "movq\09%rbx, %rsi\0A\09cpuid\0A\09xchgq\09%rbx, %rsi\0A\09", "={ax},={si},={cx},={dx},{ax},~{dirflag},~{fpsr},~{flags}"(i32 0) #23, !srcloc !52
  %i.b = extractvalue { i32, i32, i32, i32 } %i.a, 0 ; 4 uses
  %i.c = icmp ne i32 %i.b, 0                      ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.v

bb.b:                                             ; preds = %bb.a
  %i.d = tail call { i32, i32, i32, i32 } asm "movq\09%rbx, %rsi\0A\09cpuid\0A\09xchgq\09%rbx, %rsi\0A\09", "={ax},={si},={cx},={dx},{ax},~{dirflag},~{fpsr},~{flags}"(i32 1) #23, !srcloc !52 ; 3 uses
  %i.e = extractvalue { i32, i32, i32, i32 } %i.d, 0
  %i.f = extractvalue { i32, i32, i32, i32 } %i.d, 2 ; 13 uses
  %i.g = extractvalue { i32, i32, i32, i32 } %i.d, 3 ; 4 uses
  %i.h = tail call { ptr, i8 } @_ZN4llvh9StringMapIbNS_15MallocAllocatorEE11try_emplaceIJEEESt4pairINS_17StringMapIteratorIbEEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr nonnull @.str.155, i64 4)
  %.fca.0.extract.i = extractvalue { ptr, i8 } %i.h, 0
  %i.i = load ptr, ptr %.fca.0.extract.i, align 8, !tbaa !94
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = lshr i32 %i.g, 15
  %i.l = trunc i32 %i.k to i8
  %i.m = and i8 %i.l, 1
  store i8 %i.m, ptr %i.j, align 1, !tbaa !96
  %i.n = tail call { ptr, i8 } @_ZN4llvh9StringMapIbNS_15MallocAllocatorEE11try_emplaceIJEEESt4pairINS_17StringMapIteratorIbEEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr nonnull @.str.156, i64 3)
  %.fca.0.extract.i214.a = extractvalue { ptr, i8 } %i.n, 0
  %i.o = load ptr, ptr %.fca.0.extract.i214.a, align 8, !tbaa !94
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = lshr i32 %i.g, 23
  %i.r = trunc i32 %i.q to i8
  %i.s = and i8 %i.r, 1
  store i8 %i.s, ptr %i.p, align 1, !tbaa !96
  %i.t = tail call { ptr, i8 } @_ZN4llvh9StringMapIbNS_15MallocAllocatorEE11try_emplaceIJEEESt4pairINS_17StringMapIteratorIbEEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr nonnull @.str.157, i64 3)
  %.fca.0.extract.i215.a = extractvalue { ptr, i8 } %i.t, 0
  %i.u = load ptr, ptr %.fca.0.extract.i215.a, align 8, !tbaa !94
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = lshr i32 %i.g, 25
  %i.x = trunc nuw nsw i32 %i.w to i8
  %i.y = and i8 %i.x, 1
  store i8 %i.y, ptr %i.v, align 1, !tbaa !96
  %i.z = tail call { ptr, i8 } @_ZN4llvh9StringMapIbNS_15MallocAllocatorEE11try_emplaceIJEEESt4pairINS_17StringMapIteratorIbEEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr nonnull @.str.158, i64 4)
  %.fca.0.extract.i216.a = extractvalue { ptr, i8 } %i.z, 0
  %i.aa = load ptr, ptr %.fca.0.extract.i216.a, align 8, !tbaa !94
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = lshr i32 %i.g, 26
  %i.ad = trunc nuw nsw i32 %i.ac to i8
  %i.ae = and i8 %i.ad, 1
  store i8 %i.ae, ptr %i.ab, align 1, !tbaa !96
  %i.af = trunc i32 %i.f to i8                    ; 2 uses
  %i.ag = tail call { ptr, i8 } @_ZN4llvh9StringMapIbNS_15MallocAllocatorEE11try_emplaceIJEEESt4pairINS_17StringMapIteratorIbEEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr nonnull @.str.159, i64 4)
  %.fca.0.extract.i217.a = extractvalue { ptr, i8 } %i.ag, 0
  %i.ah = load ptr, ptr %.fca.0.extract.i217.a, align 8, !tbaa !94
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = and i8 %i.af, 1
  store i8 %i.aj, ptr %i.ai, align 1, !tbaa !96
  %i.ak = tail call { ptr, i8 } @_ZN4llvh9StringMapIbNS_15MallocAllocatorEE11try_emplaceIJEEESt4pairINS_17StringMapIteratorIbEEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr nonnull @.str.160, i64 6)
  %.fca.0.extract.i218.a = extractvalue { ptr, i8 } %i.ak, 0
  %i.al = load ptr, ptr %.fca.0.extract.i218.a, align 8, !tbaa !94
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = lshr i8 %i.af, 1
  %i.ao = and i8 %i.an, 1
  store i8 %i.ao, ptr %i.am, align 1, !tbaa !96
  %i.ap = tail call { ptr, i8 } @_ZN4llvh9StringMapIbNS_15MallocAllocatorEE11try_emplaceIJEEESt4pairINS_17StringMapIteratorIbEEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr nonnull @.str.161, i64 5)
  %.fca.0.extract.i219.a = extractvalue { ptr, i8 } %i.ap, 0
  %i.aq = load ptr, ptr %.fca.0.extract.i219.a, align 8, !tbaa !94
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = lshr i32 %i.f, 9
  %i.at = trunc i32 %i.as to i8
  %i.au = and i8 %i.at, 1
  store i8 %i.au, ptr %i.ar, align 1, !tbaa !96
  %i.av = tail call { ptr, i8 } @_ZN4llvh9StringMapIbNS_15MallocAllocatorEE11try_emplaceIJEEESt4pairINS_17StringMapIteratorIbEEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr nonnull @.str.162, i64 4)
  %.fca.0.extract.i220.a = extractvalue { ptr, i8 } %i.av, 0
  %i.aw = load ptr, ptr %.fca.0.extract.i220.a, align 8, !tbaa !94
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = lshr i32 %i.f, 13
  %i.az = trunc i32 %i.ay to i8
  %i.ba = and i8 %i.az, 1
  store i8 %i.ba, ptr %i.ax, align 1, !tbaa !96
  %i.bb = tail call { ptr, i8 } @_ZN4llvh9StringMapIbNS_15MallocAllocatorEE11try_emplaceIJEEESt4pairINS_17StringMapIteratorIbEEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr nonnull @.str.163, i64 6)
  %.fca.0.extract.i221.a = extractvalue { ptr, i8 } %i.bb, 0
  %i.bc = load ptr, ptr %.fca.0.extract.i221.a, align 8, !tbaa !94
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = lshr i32 %i.f, 19
  %i.bf = trunc i32 %i.be to i8
  %i.bg = and i8 %i.bf, 1
  store i8 %i.bg, ptr %i.bd, align 1, !tbaa !96
  %i.bh = tail call { ptr, i8 } @_ZN4llvh9StringMapIbNS_15MallocAllocatorEE11try_emplaceIJEEESt4pairINS_17StringMapIteratorIbEEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr nonnull @.str.164, i64 6)
  %.fca.0.extract.i222.a = extractvalue { ptr, i8 } %i.bh, 0
  %i.bi = load ptr, ptr %.fca.0.extract.i222.a, align 8, !tbaa !94
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bk = lshr i32 %i.f, 20
  %i.bl = trunc i32 %i.bk to i8
  %i.bm = and i8 %i.bl, 1
  store i8 %i.bm, ptr %i.bj, align 1, !tbaa !96
  %i.bn = tail call { ptr, i8 } @_ZN4llvh9StringMapIbNS_15MallocAllocatorEE11try_emplaceIJEEESt4pairINS_17StringMapIteratorIbEEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr nonnull @.str.165, i64 5)
  %.fca.0.extract.i223.a = extractvalue { ptr, i8 } %i.bn, 0
  %i.bo = load ptr, ptr %.fca.0.extract.i223.a, align 8, !tbaa !94
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bq = lshr i32 %i.f, 22
  %i.br = trunc i32 %i.bq to i8
  %i.bs = and i8 %i.br, 1
  store i8 %i.bs, ptr %i.bp, align 1, !tbaa !96
  %i.bt = tail call { ptr, i8 } @_ZN4llvh9StringMapIbNS_15MallocAllocatorEE11try_emplaceIJEEESt4pairINS_17StringMapIteratorIbEEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr nonnull @.str.166, i64 6)
  %.fca.0.extract.i224.a = extractvalue { ptr, i8 } %i.bt, 0
  %i.bu = load ptr, ptr %.fca.0.extract.i224.a, align 8, !tbaa !94
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bw = lshr i32 %i.f, 23
  %i.bx = trunc i32 %i.bw to i8
  %i.by = and i8 %i.bx, 1
  store i8 %i.by, ptr %i.bv, align 1, !tbaa !96
  %i.bz = tail call { ptr, i8 } @_ZN4llvh9StringMapIbNS_15MallocAllocatorEE11try_emplaceIJEEESt4pairINS_17StringMapIteratorIbEEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr nonnull @.str.167, i64 3)
  %.fca.0.extract.i225.a = extractvalue { ptr, i8 } %i.bz, 0
  %i.ca = load ptr, ptr %.fca.0.extract.i225.a, align 8, !tbaa !94
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cc = lshr i32 %i.f, 25
  %i.cd = trunc nuw nsw i32 %i.cc to i8
  %i.ce = and i8 %i.cd, 1
  store i8 %i.ce, ptr %i.cb, align 1, !tbaa !96
  %i.cf = tail call { ptr, i8 } @_ZN4llvh9StringMapIbNS_15MallocAllocatorEE11try_emplaceIJEEESt4pairINS_17StringMapIteratorIbEEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr nonnull @.str.168, i64 5)
  %.fca.0.extract.i226.a = extractvalue { ptr, i8 } %i.cf, 0
  %i.cg = load ptr, ptr %.fca.0.extract.i226.a, align 8, !tbaa !94
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.ci = lshr i32 %i.f, 30
  %i.cj = trunc nuw nsw i32 %i.ci to i8
  %i.ck = and i8 %i.cj, 1
  store i8 %i.ck, ptr %i.ch, align 1, !tbaa !96
  %i.cl = and i32 %i.f, 402653184
  %or.cond.not = icmp eq i32 %i.cl, 402653184
  br i1 %or.cond.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.cm = tail call { i32, i32 } asm ".byte 0x0f, 0x01, 0xd0", "={ax},={dx},{cx},~{dirflag},~{fpsr},~{flags}"(i32 0) #23, !srcloc !53
  %i.cn = extractvalue { i32, i32 } %i.cm, 0      ; 2 uses
  %i.co = and i32 %i.cn, 6
  %i.cp = icmp eq i32 %i.co, 6
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ %i.e, %bb.b ], [ %i.cn, %bb.c ] ; 2 uses
  %i.cq = phi i1 [ false, %bb.b ], [ %i.cp, %bb.c ] ; 5 uses
  %i.cr = zext i1 %i.cq to i8                     ; 9 uses
  %i.cs = and i32 %.0, 224
  %i.ct = icmp eq i32 %i.cs, 224
  %i.cu = select i1 %i.cq, i1 %i.ct, i1 false     ; 9 uses
  %i.cv = tail call { ptr, i8 } @_ZN4llvh9StringMapIbNS_15MallocAllocatorEE11try_emplaceIJEEESt4pairINS_17StringMapIteratorIbEEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr nonnull @.str.169, i64 3)
  %.fca.0.extract.i227.a = extractvalue { ptr, i8 } %i.cv, 0
  %i.cw = load ptr, ptr %.fca.0.extract.i227.a, align 8, !tbaa !94
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  store i8 %i.cr, ptr %i.cx, align 1, !tbaa !96
  %i.cy = and i32 %i.f, 4096
  %i.cz = icmp ne i32 %i.cy, 0
  %i.da = select i1 %i.cz, i1 %i.cq, i1 false
  %i.db = tail call { ptr, i8 } @_ZN4llvh9StringMapIbNS_15MallocAllocatorEE11try_emplaceIJEEESt4pairINS_17StringMapIteratorIbEEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr nonnull @.str.170, i64 3)
  %.fca.0.extract.i228.a = extractvalue { ptr, i8 } %i.db, 0
  %i.dc = load ptr, ptr %.fca.0.extract.i228.a, align 8, !tbaa !94
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.de = zext i1 %i.da to i8
  store i8 %i.de, ptr %i.dd, align 1, !tbaa !96
  %i.df = and i32 %i.f, 67108864
  %i.dg = icmp ne i32 %i.df, 0
  %i.dh = select i1 %i.dg, i1 %i.cq, i1 false
  %i.di = tail call { ptr, i8 } @_ZN4llvh9StringMapIbNS_15MallocAllocatorEE11try_emplaceIJEEESt4pairINS_17StringMapIteratorIbEEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr nonnull @.str.171, i64 5)
  %.fca.0.extract.i229.a = extractvalue { ptr, i8 } %i.di, 0
  %i.dj = load ptr, ptr %.fca.0.extract.i229.a, align 8, !tbaa !94
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.dl = zext i1 %i.dh to i8
  store i8 %i.dl, ptr %i.dk, align 1, !tbaa !96
  %i.dm = and i32 %i.f, 536870912
  %i.dn = icmp ne i32 %i.dm, 0
  %i.do = select i1 %i.dn, i1 %i.cq, i1 false
  %i.dp = tail call { ptr, i8 } @_ZN4llvh9StringMapIbNS_15MallocAllocatorEE11try_emplaceIJEEESt4pairINS_17StringMapIteratorIbEEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr nonnull @.str.172, i64 4)
  %.fca.0.extract.i230.a = extractvalue { ptr, i8 } %i.dp, 0
  %i.dq = load ptr, ptr %.fca.0.extract.i230.a, align 8, !tbaa !94
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %i.ds = zext i1 %i.do to i8
  store i8 %i.ds, ptr %i.dr, align 1, !tbaa !96
  %i.dt = tail call { i32, i32, i32, i32 } asm "movq\09%rbx, %rsi\0A\09cpuid\0A\09xchgq\09%rbx, %rsi\0A\09", "={ax},={si},={cx},={dx},{ax},~{dirflag},~{fpsr},~{flags}"(i32 -2147483648) #23, !srcloc !52 ; 2 uses
  %i.du = extractvalue { i32, i32, i32, i32 } %i.dt, 0 ; 2 uses
  %i.dv = icmp ugt i32 %i.du, -2147483648         ; 11 uses
  br i1 %i.dv, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.dw = tail call { i32, i32, i32, i32 } asm "movq\09%rbx, %rsi\0A\09cpuid\0A\09xchgq\09%rbx, %rsi\0A\09", "={ax},={si},={cx},={dx},{ax},~{dirflag},~{fpsr},~{flags}"(i32 -2147483647) #23, !srcloc !52 ; 2 uses
  %i.dx = extractvalue { i32, i32, i32, i32 } %i.dw, 0
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pn = phi { i32, i32, i32, i32 } [ %i.dw, %bb.e ], [ %i.dt, %bb.d ] ; 3 uses
  %.1 = phi i32 [ %i.dx, %bb.e ], [ %.0, %bb.d ]
  %.0519 = extractvalue { i32, i32, i32, i32 } %.pn, 2 ; 3 uses
  %.0522 = extractvalue { i32, i32, i32, i32 } %.pn, 3 ; 2 uses
  %i.dy = trunc i32 %.0519 to i8
  %i.dz = tail call { ptr, i8 } @_ZN4llvh9StringMapIbNS_15MallocAllocatorEE11try_emplaceIJEEESt4pairINS_17StringMapIteratorIbEEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr nonnull @.str.173, i64 4)
  %.fca.0.extract.i231.a = extractvalue { ptr, i8 } %i.dz, 0
  %i.ea = load ptr, ptr %.fca.0.extract.i231.a, align 8, !tbaa !94
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.ec = and i8 %i.dy, 1
  %i.ed = select i1 %i.dv, i8 %i.ec, i8 0
  store i8 %i.ed, ptr %i.eb, align 1, !tbaa !96
  %i.ee = tail call { ptr, i8 } @_ZN4llvh9StringMapIbNS_15MallocAllocatorEE11try_emplaceIJEEESt4pairINS_17StringMapIteratorIbEEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr nonnull @.str.174, i64 5)
  %.fca.0.extract.i232.a = extractvalue { ptr, i8 } %i.ee, 0
  %i.ef = load ptr, ptr %.fca.0.extract.i232.a, align 8, !tbaa !94
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %i.eh = insertelement <8 x i32> poison, i32 %.0519, i64 0
  %i.ei = shufflevector <8 x i32> %i.eh, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.ej = and <8 x i32> %i.ei, <i32 536870912, i32 2097152, i32 65536, i32 32768, i32 2048, i32 256, i32 64, i32 32>
  %i.ek = icmp ne <8 x i32> %i.ej, zeroinitializer ; 8 uses
  %i.el = extractelement <8 x i1> %i.ek, i64 7
  %i.em = select i1 %i.dv, i1 %i.el, i1 false
  %i.en = zext i1 %i.em to i8
  store i8 %i.en, ptr %i.eg, align 1, !tbaa !96
  %i.eo = extractelement <8 x i1> %i.ek, i64 6
  %i.ep = select i1 %i.dv, i1 %i.eo, i1 false
  %i.eq = tail call { ptr, i8 } @_ZN4llvh9StringMapIbNS_15MallocAllocatorEE11try_emplaceIJEEESt4pairINS_17StringMapIteratorIbEEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr nonnull @.str.175, i64 5)
  %.fca.0.extract.i233.a = extractvalue { ptr, i8 } %i.eq, 0
  %i.er = load ptr, ptr %.fca.0.extract.i233.a, align 8, !tbaa !94
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  %i.et = zext i1 %i.ep to i8
  store i8 %i.et, ptr %i.es, align 1, !tbaa !96
  %i.eu = extractelement <8 x i1> %i.ek, i64 5
  %i.ev = select i1 %i.dv, i1 %i.eu, i1 false
  %i.ew = tail call { ptr, i8 } @_ZN4llvh9StringMapIbNS_15MallocAllocatorEE11try_emplaceIJEEESt4pairINS_17StringMapIteratorIbEEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr nonnull @.str.176, i64 6)
  %.fca.0.extract.i234.a = extractvalue { ptr, i8 } %i.ew, 0
  %i.ex = load ptr, ptr %.fca.0.extract.i234.a, align 8, !tbaa !94
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  %i.ez = zext i1 %i.ev to i8
  store i8 %i.ez, ptr %i.ey, align 1, !tbaa !96
  %i.fa = extractelement <8 x i1> %i.ek, i64 4
  %i.fb = select i1 %i.dv, i1 %i.fa, i1 false
  %i.fc = select i1 %i.fb, i8 %i.cr, i8 0
  %i.fd = tail call { ptr, i8 } @_ZN4llvh9StringMapIbNS_15MallocAllocatorEE11try_emplaceIJEEESt4pairINS_17StringMapIteratorIbEEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr nonnull @.str.177, i64 3)
  %.fca.0.extract.i235.a = extractvalue { ptr, i8 } %i.fd, 0
  %i.fe = load ptr, ptr %.fca.0.extract.i235.a, align 8, !tbaa !94
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  store i8 %i.fc, ptr %i.ff, align 1, !tbaa !96
  %i.fg = extractelement <8 x i1> %i.ek, i64 3
  %i.fh = select i1 %i.dv, i1 %i.fg, i1 false
  %i.fi = tail call { ptr, i8 } @_ZN4llvh9StringMapIbNS_15MallocAllocatorEE11try_emplaceIJEEESt4pairINS_17StringMapIteratorIbEEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr nonnull @.str.178, i64 3)
  %.fca.0.extract.i236.a = extractvalue { ptr, i8 } %i.fi, 0
  %i.fj = load ptr, ptr %.fca.0.extract.i236.a, align 8, !tbaa !94
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  %i.fl = zext i1 %i.fh to i8
  store i8 %i.fl, ptr %i.fk, align 1, !tbaa !96
  %i.fm = extractelement <8 x i1> %i.ek, i64 2
  %i.fn = select i1 %i.dv, i1 %i.fm, i1 false
  %i.fo = select i1 %i.fn, i8 %i.cr, i8 0
  %i.fp = tail call { ptr, i8 } @_ZN4llvh9StringMapIbNS_15MallocAllocatorEE11try_emplaceIJEEESt4pairINS_17StringMapIteratorIbEEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr nonnull @.str.179, i64 4)
  %.fca.0.extract.i237.a = extractvalue { ptr, i8 } %i.fp, 0
  %i.fq = load ptr, ptr %.fca.0.extract.i237.a, align 8, !tbaa !94
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  store i8 %i.fo, ptr %i.fr, align 1, !tbaa !96
  %i.fs = extractelement <8 x i1> %i.ek, i64 1
  %i.ft = select i1 %i.dv, i1 %i.fs, i1 false
  %i.fu = tail call { ptr, i8 } @_ZN4llvh9StringMapIbNS_15MallocAllocatorEE11try_emplaceIJEEESt4pairINS_17StringMapIteratorIbEEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr nonnull @.str.180, i64 3)
  %.fca.0.extract.i238.a = extractvalue { ptr, i8 } %i.fu, 0
  %i.fv = load ptr, ptr %.fca.0.extract.i238.a, align 8, !tbaa !94
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 8
  %i.fx = zext i1 %i.ft to i8
  store i8 %i.fx, ptr %i.fw, align 1, !tbaa !96
  %i.fy = extractelement <8 x i1> %i.ek, i64 0
  %i.fz = select i1 %i.dv, i1 %i.fy, i1 false
  %i.ga = tail call { ptr, i8 } @_ZN4llvh9StringMapIbNS_15MallocAllocatorEE11try_emplaceIJEEESt4pairINS_17StringMapIteratorIbEEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr nonnull @.str.181, i64 6)
  %.fca.0.extract.i239.a = extractvalue { ptr, i8 } %i.ga, 0
  %i.gb = load ptr, ptr %.fca.0.extract.i239.a, align 8, !tbaa !94
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  %i.gd = zext i1 %i.fz to i8
  store i8 %i.gd, ptr %i.gc, align 1, !tbaa !96
  %i.ge = and i32 %.0522, 536870912
  %i.gf = icmp ne i32 %i.ge, 0
  %i.gg = select i1 %i.dv, i1 %i.gf, i1 false
  %i.gh = tail call { ptr, i8 } @_ZN4llvh9StringMapIbNS_15MallocAllocatorEE11try_emplaceIJEEESt4pairINS_17StringMapIteratorIbEEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr nonnull @.str.182, i64 5)
  %.fca.0.extract.i240.a = extractvalue { ptr, i8 } %i.gh, 0
  %i.gi = load ptr, ptr %.fca.0.extract.i240.a, align 8, !tbaa !94
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 8
  %i.gk = zext i1 %i.gg to i8
  store i8 %i.gk, ptr %i.gj, align 1, !tbaa !96
  %i.gl = icmp ugt i32 %i.du, -2147483641         ; 3 uses
  br i1 %i.gl, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.gm = tail call { i32, i32, i32, i32 } asm "movq\09%rbx, %rsi\0A\09cpuid\0A\09xchgq\09%rbx, %rsi\0A\09", "={ax},={si},={cx},={dx},{ax},~{dirflag},~{fpsr},~{flags}"(i32 -2147483640) #23, !srcloc !52 ; 4 uses
  %i.gn = extractvalue { i32, i32, i32, i32 } %i.gm, 0
  %i.go = extractvalue { i32, i32, i32, i32 } %i.gm, 2
  %i.gp = extractvalue { i32, i32, i32, i32 } %i.gm, 3
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.1523 = phi i32 [ %i.gp, %bb.g ], [ %.0522, %bb.f ]
  %.1520 = phi i32 [ %i.go, %bb.g ], [ %.0519, %bb.f ]
  %.pn527 = phi { i32, i32, i32, i32 } [ %i.gm, %bb.g ], [ %.pn, %bb.f ]
  %.2 = phi i32 [ %i.gn, %bb.g ], [ %.1, %bb.f ]
  %.1515 = extractvalue { i32, i32, i32, i32 } %.pn527, 1 ; 3 uses
  %i.gq = trunc i32 %.1515 to i8
  %i.gr = tail call { ptr, i8 } @_ZN4llvh9StringMapIbNS_15MallocAllocatorEE11try_emplaceIJEEESt4pairINS_17StringMapIteratorIbEEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr nonnull @.str.183, i64 6)
  %.fca.0.extract.i241.a = extractvalue { ptr, i8 } %i.gr, 0
  %i.gs = load ptr, ptr %.fca.0.extract.i241.a, align 8, !tbaa !94
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 8
  %i.gu = and i8 %i.gq, 1
  %i.gv = select i1 %i.gl, i8 %i.gu, i8 0
  store i8 %i.gv, ptr %i.gt, align 1, !tbaa !96
  %i.gw = and i32 %.1515, 512
  %i.gx = icmp ne i32 %i.gw, 0
  %i.gy = select i1 %i.gl, i1 %i.gx, i1 false
  %i.gz = tail call { ptr, i8 } @_ZN4llvh9StringMapIbNS_15MallocAllocatorEE11try_emplaceIJEEESt4pairINS_17StringMapIteratorIbEEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr nonnull @.str.184, i64 8)
  %.fca.0.extract.i242.a = extractvalue { ptr, i8 } %i.gz, 0
  %i.ha = load ptr, ptr %.fca.0.extract.i242.a, align 8, !tbaa !94
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 8
  %i.hc = zext i1 %i.gy to i8
  store i8 %i.hc, ptr %i.hb, align 1, !tbaa !96
  %i.hd = icmp ugt i32 %i.b, 6                    ; 31 uses
  br i1 %i.hd, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.he = tail call { i32, i32, i32, i32 } asm "movq\09%rbx, %rsi\0A\09cpuid\0A\09xchgq\09%rbx, %rsi\0A\09", "={ax},={si},={cx},={dx},{ax},{cx},~{dirflag},~{fpsr},~{flags}"(i32 7, i32 0) #23, !srcloc !54 ; 4 uses
  %i.hf = extractvalue { i32, i32, i32, i32 } %i.he, 0
  %i.hg = extractvalue { i32, i32, i32, i32 } %i.he, 1 ; 2 uses
  %i.hh = extractvalue { i32, i32, i32, i32 } %i.he, 2
  %i.hi = extractvalue { i32, i32, i32, i32 } %i.he, 3
  %.pre = trunc i32 %i.hg to i8
  %.pre533 = and i8 %.pre, 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.hj = phi i8 [ %.pre533, %bb.i ], [ 0, %bb.h ]
  %.2524 = phi i32 [ %i.hi, %bb.i ], [ %.1523, %bb.h ]
  %.2521 = phi i32 [ %i.hh, %bb.i ], [ %.1520, %bb.h ] ; 16 uses
  %.2516 = phi i32 [ %i.hg, %bb.i ], [ %.1515, %bb.h ] ; 20 uses
  %.3 = phi i32 [ %i.hf, %bb.i ], [ %.2, %bb.h ]
  %i.hk = tail call { ptr, i8 } @_ZN4llvh9StringMapIbNS_15MallocAllocatorEE11try_emplaceIJEEESt4pairINS_17StringMapIteratorIbEEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr nonnull @.str.185, i64 8)
  %.fca.0.extract.i243.a = extractvalue { ptr, i8 } %i.hk, 0
  %i.hl = load ptr, ptr %.fca.0.extract.i243.a, align 8, !tbaa !94
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 8
  store i8 %i.hj, ptr %i.hm, align 1, !tbaa !96
  %i.hn = and i32 %.2516, 4
  %i.ho = icmp ne i32 %i.hn, 0
  %i.hp = select i1 %i.hd, i1 %i.ho, i1 false
  %i.hq = tail call { ptr, i8 } @_ZN4llvh9StringMapIbNS_15MallocAllocatorEE11try_emplaceIJEEESt4pairINS_17StringMapIteratorIbEEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr nonnull @.str.186, i64 3)
  %.fca.0.extract.i244.a = extractvalue { ptr, i8 } %i.hq, 0
  %i.hr = load ptr, ptr %.fca.0.extract.i244.a, align 8, !tbaa !94
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 8
  %i.ht = zext i1 %i.hp to i8
  store i8 %i.ht, ptr %i.hs, align 1, !tbaa !96
  %i.hu = and i32 %.2516, 8
  %i.hv = icmp ne i32 %i.hu, 0
  %i.hw = select i1 %i.hd, i1 %i.hv, i1 false
  %i.hx = tail call { ptr, i8 } @_ZN4llvh9StringMapIbNS_15MallocAllocatorEE11try_emplaceIJEEESt4pairINS_17StringMapIteratorIbEEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr nonnull @.str.187, i64 3)
  %.fca.0.extract.i245.a = extractvalue { ptr, i8 } %i.hx, 0
  %i.hy = load ptr, ptr %.fca.0.extract.i245.a, align 8, !tbaa !94
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 8
  %i.ia = zext i1 %i.hw to i8
  store i8 %i.ia, ptr %i.hz, align 1, !tbaa !96
  %i.ib = and i32 %.2516, 32
  %.not154 = icmp ne i32 %i.ib, 0
  %i.ic = select i1 %i.hd, i1 %.not154, i1 false
  %i.id = select i1 %i.ic, i8 %i.cr, i8 0
  %i.ie = tail call { ptr, i8 } @_ZN4llvh9StringMapIbNS_15MallocAllocatorEE11try_emplaceIJEEESt4pairINS_17StringMapIteratorIbEEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr nonnull @.str.188, i64 4)
  %.fca.0.extract.i246.a = extractvalue { ptr, i8 } %i.ie, 0
  %i.if = load ptr, ptr %.fca.0.extract.i246.a, align 8, !tbaa !94
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 8
  store i8 %i.id, ptr %i.ig, align 1, !tbaa !96
  %i.ih = and i32 %.2516, 256
  %i.ii = icmp ne i32 %i.ih, 0
  %i.ij = select i1 %i.hd, i1 %i.ii, i1 false
  %i.ik = tail call { ptr, i8 } @_ZN4llvh9StringMapIbNS_15MallocAllocatorEE11try_emplaceIJEEESt4pairINS_17StringMapIteratorIbEEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr nonnull @.str.189, i64 4)
  %.fca.0.extract.i247.a = extractvalue { ptr, i8 } %i.ik, 0
  %i.il = load ptr, ptr %.fca.0.extract.i247.a, align 8, !tbaa !94
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 8
  %i.in = zext i1 %i.ij to i8
  store i8 %i.in, ptr %i.im, align 1, !tbaa !96
  %i.io = and i32 %.2516, 1024
  %i.ip = icmp ne i32 %i.io, 0
  %i.iq = select i1 %i.hd, i1 %i.ip, i1 false
  %i.ir = tail call { ptr, i8 } @_ZN4llvh9StringMapIbNS_15MallocAllocatorEE11try_emplaceIJEEESt4pairINS_17StringMapIteratorIbEEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr nonnull @.str.190, i64 7)
  %.fca.0.extract.i248.a = extractvalue { ptr, i8 } %i.ir, 0
  %i.is = load ptr, ptr %.fca.0.extract.i248.a, align 8, !tbaa !94
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 8
  %i.iu = zext i1 %i.iq to i8
  store i8 %i.iu, ptr %i.it, align 1, !tbaa !96
  %i.iv = and i32 %.2516, 2048
  %i.iw = icmp ne i32 %i.iv, 0
  %i.ix = select i1 %i.hd, i1 %i.iw, i1 false
  %i.iy = tail call { ptr, i8 } @_ZN4llvh9StringMapIbNS_15MallocAllocatorEE11try_emplaceIJEEESt4pairINS_17StringMapIteratorIbEEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr nonnull @.str.191, i64 3)
  %.fca.0.extract.i249.a = extractvalue { ptr, i8 } %i.iy, 0
  %i.iz = load ptr, ptr %.fca.0.extract.i249.a, align 8, !tbaa !94
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 8
  %i.jb = zext i1 %i.ix to i8
  store i8 %i.jb, ptr %i.ja, align 1, !tbaa !96
  br i1 %i.hd, label %bb.k, label %.critedge

bb.k:                                             ; preds = %bb.j
  %i.jc = and i32 %.2516, 65536
  %.not155 = icmp eq i32 %i.jc, 0
  %i.jd = zext i1 %i.cu to i8                     ; 2 uses
  %spec.select175.a = select i1 %.not155, i8 0, i8 %i.jd
  %i.je = tail call { ptr, i8 } @_ZN4llvh9StringMapIbNS_15MallocAllocatorEE11try_emplaceIJEEESt4pairINS_17StringMapIteratorIbEEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr nonnull @.str.192, i64 7)
  %.fca.0.extract.i250.a = extractvalue { ptr, i8 } %i.je, 0
  %i.jf = load ptr, ptr %.fca.0.extract.i250.a, align 8, !tbaa !94
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 8
  store i8 %spec.select175.a, ptr %i.jg, align 1, !tbaa !96
  %i.jh = and i32 %.2516, 131072
  %.not156 = icmp eq i32 %i.jh, 0
  %spec.select176 = select i1 %.not156, i8 0, i8 %i.jd
  br label %bb.l

.critedge:                                        ; preds = %bb.j
  %i.ji = tail call { ptr, i8 } @_ZN4llvh9StringMapIbNS_15MallocAllocatorEE11try_emplaceIJEEESt4pairINS_17StringMapIteratorIbEEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr nonnull @.str.192, i64 7)
  %.fca.0.extract.i251.a = extractvalue { ptr, i8 } %i.ji, 0
  %i.jj = load ptr, ptr %.fca.0.extract.i251.a, align 8, !tbaa !94
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 8
  store i8 0, ptr %i.jk, align 1, !tbaa !96
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.critedge
  %i.jl = phi i8 [ 0, %.critedge ], [ %spec.select176, %bb.k ]
  %i.jm = tail call { ptr, i8 } @_ZN4llvh9StringMapIbNS_15MallocAllocatorEE11try_emplaceIJEEESt4pairINS_17StringMapIteratorIbEEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr nonnull @.str.193, i64 8)
  %.fca.0.extract.i252.a = extractvalue { ptr, i8 } %i.jm, 0
  %i.jn = load ptr, ptr %.fca.0.extract.i252.a, align 8, !tbaa !94
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 8
  store i8 %i.jl, ptr %i.jo, align 1, !tbaa !96
  %i.jp = and i32 %.2516, 262144
  %i.jq = icmp ne i32 %i.jp, 0
  %i.jr = select i1 %i.hd, i1 %i.jq, i1 false
  %i.js = tail call { ptr, i8 } @_ZN4llvh9StringMapIbNS_15MallocAllocatorEE11try_emplaceIJEEESt4pairINS_17StringMapIteratorIbEEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr nonnull @.str.194, i64 6)
  %.fca.0.extract.i253.a = extractvalue { ptr, i8 } %i.js, 0
  %i.jt = load ptr, ptr %.fca.0.extract.i253.a, align 8, !tbaa !94
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 8
  %i.jv = zext i1 %i.jr to i8
  store i8 %i.jv, ptr %i.ju, align 1, !tbaa !96
  %i.jw = and i32 %.2516, 524288
  %i.jx = icmp ne i32 %i.jw, 0
  %i.jy = select i1 %i.hd, i1 %i.jx, i1 false
  %i.jz = tail call { ptr, i8 } @_ZN4llvh9StringMapIbNS_15MallocAllocatorEE11try_emplaceIJEEESt4pairINS_17StringMapIteratorIbEEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr nonnull @.str.195, i64 3)
  %.fca.0.extract.i254.a = extractvalue { ptr, i8 } %i.jz, 0
  %i.ka = load ptr, ptr %.fca.0.extract.i254.a, align 8, !tbaa !94
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 8
  %i.kc = zext i1 %i.jy to i8
  store i8 %i.kc, ptr %i.kb, align 1, !tbaa !96
  %i.kd = and i32 %.2516, 2097152
  %.not157 = icmp ne i32 %i.kd, 0
  %i.ke = select i1 %i.hd, i1 %.not157, i1 false
  %narrow528.a = select i1 %i.ke, i1 %i.cu, i1 false
  %i.kf = zext i1 %narrow528.a to i8
  %i.kg = tail call { ptr, i8 } @_ZN4llvh9StringMapIbNS_15MallocAllocatorEE11try_emplaceIJEEESt4pairINS_17StringMapIteratorIbEEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr nonnull @.str.196, i64 10)
  %.fca.0.extract.i255.a = extractvalue { ptr, i8 } %i.kg, 0
  %i.kh = load ptr, ptr %.fca.0.extract.i255.a, align 8, !tbaa !94
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 8
  store i8 %i.kf, ptr %i.ki, align 1, !tbaa !96
  %i.kj = and i32 %.2516, 8388608
  %i.kk = icmp ne i32 %i.kj, 0
  %i.kl = select i1 %i.hd, i1 %i.kk, i1 false
  %i.km = tail call { ptr, i8 } @_ZN4llvh9StringMapIbNS_15MallocAllocatorEE11try_emplaceIJEEESt4pairINS_17StringMapIteratorIbEEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr nonnull @.str.197, i64 10)
  %.fca.0.extract.i256.a = extractvalue { ptr, i8 } %i.km, 0
  %i.kn = load ptr, ptr %.fca.0.extract.i256.a, align 8, !tbaa !94
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 8
  %i.kp = zext i1 %i.kl to i8
  store i8 %i.kp, ptr %i.ko, align 1, !tbaa !96
  %i.kq = and i32 %.2516, 16777216
  %i.kr = icmp ne i32 %i.kq, 0
  %i.ks = select i1 %i.hd, i1 %i.kr, i1 false
  %i.kt = tail call { ptr, i8 } @_ZN4llvh9StringMapIbNS_15MallocAllocatorEE11try_emplaceIJEEESt4pairINS_17StringMapIteratorIbEEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr nonnull @.str.198, i64 4)
  %.fca.0.extract.i257.a = extractvalue { ptr, i8 } %i.kt, 0
  %i.ku = load ptr, ptr %.fca.0.extract.i257.a, align 8, !tbaa !94
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 8
  %i.kw = zext i1 %i.ks to i8
  store i8 %i.kw, ptr %i.kv, align 1, !tbaa !96
  br i1 %i.hd, label %bb.m, label %.critedge180

bb.m:                                             ; preds = %bb.l
  %i.kx = and i32 %.2516, 67108864
  %.not158 = icmp eq i32 %i.kx, 0
  %i.ky = zext i1 %i.cu to i8                     ; 2 uses
  %spec.select178 = select i1 %.not158, i8 0, i8 %i.ky
  %i.kz = tail call { ptr, i8 } @_ZN4llvh9StringMapIbNS_15MallocAllocatorEE11try_emplaceIJEEESt4pairINS_17StringMapIteratorIbEEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr nonnull @.str.199, i64 8)
  %.fca.0.extract.i258.a = extractvalue { ptr, i8 } %i.kz, 0
  %i.la = load ptr, ptr %.fca.0.extract.i258.a, align 8, !tbaa !94
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 8
  store i8 %spec.select178, ptr %i.lb, align 1, !tbaa !96
  %i.lc = and i32 %.2516, 134217728
  %.not159 = icmp eq i32 %i.lc, 0
  %spec.select181 = select i1 %.not159, i8 0, i8 %i.ky
  br label %bb.n

.critedge180:                                     ; preds = %bb.l
  %i.ld = tail call { ptr, i8 } @_ZN4llvh9StringMapIbNS_15MallocAllocatorEE11try_emplaceIJEEESt4pairINS_17StringMapIteratorIbEEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr nonnull @.str.199, i64 8)
  %.fca.0.extract.i259.a = extractvalue { ptr, i8 } %i.ld, 0
  %i.le = load ptr, ptr %.fca.0.extract.i259.a, align 8, !tbaa !94
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 8
  store i8 0, ptr %i.lf, align 1, !tbaa !96
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.critedge180
  %i.lg = phi i8 [ 0, %.critedge180 ], [ %spec.select181, %bb.m ]
  %i.lh = tail call { ptr, i8 } @_ZN4llvh9StringMapIbNS_15MallocAllocatorEE11try_emplaceIJEEESt4pairINS_17StringMapIteratorIbEEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr nonnull @.str.200, i64 8)
  %.fca.0.extract.i260.a = extractvalue { ptr, i8 } %i.lh, 0
  %i.li = load ptr, ptr %.fca.0.extract.i260.a, align 8, !tbaa !94
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 8
  store i8 %i.lg, ptr %i.lj, align 1, !tbaa !96
  %i.lk = and i32 %.2516, 268435456
  %.not160 = icmp ne i32 %i.lk, 0
  %i.ll = select i1 %i.hd, i1 %.not160, i1 false
  %narrow529.a = select i1 %i.ll, i1 %i.cu, i1 false
  %i.lm = zext i1 %narrow529.a to i8
  %i.ln = tail call { ptr, i8 } @_ZN4llvh9StringMapIbNS_15MallocAllocatorEE11try_emplaceIJEEESt4pairINS_17StringMapIteratorIbEEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr nonnull @.str.201, i64 8)
  %.fca.0.extract.i261.a = extractvalue { ptr, i8 } %i.ln, 0
  %i.lo = load ptr, ptr %.fca.0.extract.i261.a, align 8, !tbaa !94
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 8
  store i8 %i.lm, ptr %i.lp, align 1, !tbaa !96
  %i.lq = and i32 %.2516, 536870912
  %i.lr = icmp ne i32 %i.lq, 0
  %i.ls = select i1 %i.hd, i1 %i.lr, i1 false
  %i.lt = tail call { ptr, i8 } @_ZN4llvh9StringMapIbNS_15MallocAllocatorEE11try_emplaceIJEEESt4pairINS_17StringMapIteratorIbEEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr nonnull @.str.202, i64 3)
  %.fca.0.extract.i262.a = extractvalue { ptr, i8 } %i.lt, 0
  %i.lu = load ptr, ptr %.fca.0.extract.i262.a, align 8, !tbaa !94
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 8
  %i.lw = zext i1 %i.ls to i8
  store i8 %i.lw, ptr %i.lv, align 1, !tbaa !96
  br i1 %i.hd, label %bb.o, label %.critedge187

bb.o:                                             ; preds = %bb.n
  %i.lx = and i32 %.2516, 1073741824
  %.not161 = icmp eq i32 %i.lx, 0
  %i.ly = zext i1 %i.cu to i8                     ; 2 uses
  %spec.select185 = select i1 %.not161, i8 0, i8 %i.ly
  %i.lz = tail call { ptr, i8 } @_ZN4llvh9StringMapIbNS_15MallocAllocatorEE11try_emplaceIJEEESt4pairINS_17StringMapIteratorIbEEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr nonnull @.str.203, i64 8)
  %.fca.0.extract.i263.a = extractvalue { ptr, i8 } %i.lz, 0
  %i.ma = load ptr, ptr %.fca.0.extract.i263.a, align 8, !tbaa !94
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 8
  store i8 %spec.select185, ptr %i.mb, align 1, !tbaa !96
  %.not162 = icmp sgt i32 %.2516, -1
  %spec.select213 = select i1 %.not162, i8 0, i8 %i.ly
  br label %bb.p

.critedge187:                                     ; preds = %bb.n
  %i.mc = tail call { ptr, i8 } @_ZN4llvh9StringMapIbNS_15MallocAllocatorEE11try_emplaceIJEEESt4pairINS_17StringMapIteratorIbEEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr nonnull @.str.203, i64 8)
  %.fca.0.extract.i264.a = extractvalue { ptr, i8 } %i.mc, 0
  %i.md = load ptr, ptr %.fca.0.extract.i264.a, align 8, !tbaa !94
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 8
  store i8 0, ptr %i.me, align 1, !tbaa !96
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.critedge187
  %i.mf = phi i8 [ 0, %.critedge187 ], [ %spec.select213, %bb.o ]
  %i.mg = tail call { ptr, i8 } @_ZN4llvh9StringMapIbNS_15MallocAllocatorEE11try_emplaceIJEEESt4pairINS_17StringMapIteratorIbEEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr nonnull @.str.204, i64 8)
  %.fca.0.extract.i265.a = extractvalue { ptr, i8 } %i.mg, 0
  %i.mh = load ptr, ptr %.fca.0.extract.i265.a, align 8, !tbaa !94
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 8
  store i8 %i.mf, ptr %i.mi, align 1, !tbaa !96
  %i.mj = trunc i32 %.2521 to i8
  %i.mk = tail call { ptr, i8 } @_ZN4llvh9StringMapIbNS_15MallocAllocatorEE11try_emplaceIJEEESt4pairINS_17StringMapIteratorIbEEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr nonnull @.str.205, i64 11)
  %.fca.0.extract.i266.a = extractvalue { ptr, i8 } %i.mk, 0
  %i.ml = load ptr, ptr %.fca.0.extract.i266.a, align 8, !tbaa !94
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 8
  %i.mn = and i8 %i.mj, 1
  %i.mo = select i1 %i.hd, i8 %i.mn, i8 0
  store i8 %i.mo, ptr %i.mm, align 1, !tbaa !96
  %i.mp = and i32 %.2521, 2
  %.not163 = icmp ne i32 %i.mp, 0
  %i.mq = select i1 %i.hd, i1 %.not163, i1 false
  %narrow530.a = select i1 %i.mq, i1 %i.cu, i1 false
  %i.mr = zext i1 %narrow530.a to i8
  %i.ms = tail call { ptr, i8 } @_ZN4llvh9StringMapIbNS_15MallocAllocatorEE11try_emplaceIJEEESt4pairINS_17StringMapIteratorIbEEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr nonnull @.str.206, i64 10)
  %.fca.0.extract.i267.a = extractvalue { ptr, i8 } %i.ms, 0
  %i.mt = load ptr, ptr %.fca.0.extract.i267.a, align 8, !tbaa !94
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mt, i64 8
  store i8 %i.mr, ptr %i.mu, align 1, !tbaa !96
  %i.mv = and i32 %.2521, 16
  %i.mw = icmp ne i32 %i.mv, 0
  %i.mx = select i1 %i.hd, i1 %i.mw, i1 false
  %i.my = tail call { ptr, i8 } @_ZN4llvh9StringMapIbNS_15MallocAllocatorEE11try_emplaceIJEEESt4pairINS_17StringMapIteratorIbEEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr nonnull @.str.207, i64 3)
  %.fca.0.extract.i268.a = extractvalue { ptr, i8 } %i.my, 0
  %i.mz = load ptr, ptr %.fca.0.extract.i268.a, align 8, !tbaa !94
  %i.na = getelementptr inbounds nuw i8, ptr %i.mz, i64 8
  %i.nb = zext i1 %i.mx to i8
  store i8 %i.nb, ptr %i.na, align 1, !tbaa !96
  %i.nc = and i32 %.2521, 32
  %i.nd = icmp ne i32 %i.nc, 0
  %i.ne = select i1 %i.hd, i1 %i.nd, i1 false
  %i.nf = tail call { ptr, i8 } @_ZN4llvh9StringMapIbNS_15MallocAllocatorEE11try_emplaceIJEEESt4pairINS_17StringMapIteratorIbEEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr nonnull @.str.208, i64 7)
  %.fca.0.extract.i269.a = extractvalue { ptr, i8 } %i.nf, 0
  %i.ng = load ptr, ptr %.fca.0.extract.i269.a, align 8, !tbaa !94
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ng, i64 8
  %i.ni = zext i1 %i.ne to i8
  store i8 %i.ni, ptr %i.nh, align 1, !tbaa !96
  %i.nj = and i32 %.2521, 64
  %.not164 = icmp ne i32 %i.nj, 0
  %i.nk = select i1 %i.hd, i1 %.not164, i1 false
  %narrow531 = select i1 %i.nk, i1 %i.cu, i1 false
  %i.nl = zext i1 %narrow531 to i8
  %i.nm = tail call { ptr, i8 } @_ZN4llvh9StringMapIbNS_15MallocAllocatorEE11try_emplaceIJEEESt4pairINS_17StringMapIteratorIbEEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr nonnull @.str.209, i64 11)
  %.fca.0.extract.i270.a = extractvalue { ptr, i8 } %i.nm, 0
  %i.nn = load ptr, ptr %.fca.0.extract.i270.a, align 8, !tbaa !94
  %i.no = getelementptr inbounds nuw i8, ptr %i.nn, i64 8
  store i8 %i.nl, ptr %i.no, align 1, !tbaa !96
  %i.np = and i32 %.2521, 128
  %i.nq = icmp ne i32 %i.np, 0
  %i.nr = select i1 %i.hd, i1 %i.nq, i1 false
  %i.ns = tail call { ptr, i8 } @_ZN4llvh9StringMapIbNS_15MallocAllocatorEE11try_emplaceIJEEESt4pairINS_17StringMapIteratorIbEEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr nonnull @.str.210, i64 5)
  %.fca.0.extract.i271.a = extractvalue { ptr, i8 } %i.ns, 0
  %i.nt = load ptr, ptr %.fca.0.extract.i271.a, align 8, !tbaa !94
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nt, i64 8
  %i.nv = zext i1 %i.nr to i8
  store i8 %i.nv, ptr %i.nu, align 1, !tbaa !96
  %i.nw = and i32 %.2521, 256
  %i.nx = icmp ne i32 %i.nw, 0
  %i.ny = select i1 %i.hd, i1 %i.nx, i1 false
  %i.nz = tail call { ptr, i8 } @_ZN4llvh9StringMapIbNS_15MallocAllocatorEE11try_emplaceIJEEESt4pairINS_17StringMapIteratorIbEEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr nonnull @.str.211, i64 4)
  %.fca.0.extract.i272.a = extractvalue { ptr, i8 } %i.nz, 0
  %i.oa = load ptr, ptr %.fca.0.extract.i272.a, align 8, !tbaa !94
  %i.ob = getelementptr inbounds nuw i8, ptr %i.oa, i64 8
  %i.oc = zext i1 %i.ny to i8
  store i8 %i.oc, ptr %i.ob, align 1, !tbaa !96
  br i1 %i.hd, label %bb.q, label %.critedge200

bb.q:                                             ; preds = %bb.p
  %i.od = and i32 %.2521, 512
  %.not165 = icmp eq i32 %i.od, 0
  %spec.select192 = select i1 %.not165, i8 0, i8 %i.cr
  %i.oe = tail call { ptr, i8 } @_ZN4llvh9StringMapIbNS_15MallocAllocatorEE11try_emplaceIJEEESt4pairINS_17StringMapIteratorIbEEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr nonnull @.str.212, i64 4)
  %.fca.0.extract.i273.a = extractvalue { ptr, i8 } %i.oe, 0
  %i.of = load ptr, ptr %.fca.0.extract.i273.a, align 8, !tbaa !94
  %i.og = getelementptr inbounds nuw i8, ptr %i.of, i64 8
  store i8 %spec.select192, ptr %i.og, align 1, !tbaa !96
  %i.oh = and i32 %.2521, 1024
  %.not166 = icmp eq i32 %i.oh, 0
  %spec.select195 = select i1 %.not166, i8 0, i8 %i.cr
  %i.oi = tail call { ptr, i8 } @_ZN4llvh9StringMapIbNS_15MallocAllocatorEE11try_emplaceIJEEESt4pairINS_17StringMapIteratorIbEEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr nonnull @.str.213, i64 10)
  %.fca.0.extract.i275536 = extractvalue { ptr, i8 } %i.oi, 0
  %i.oj = load ptr, ptr %.fca.0.extract.i275536, align 8, !tbaa !94
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oj, i64 8
  store i8 %spec.select195, ptr %i.ok, align 1, !tbaa !96
  %i.ol = and i32 %.2521, 2048
  %.not167 = icmp eq i32 %i.ol, 0
  %i.om = zext i1 %i.cu to i8                     ; 2 uses
  %spec.select198 = select i1 %.not167, i8 0, i8 %i.om
  %i.on = tail call { ptr, i8 } @_ZN4llvh9StringMapIbNS_15MallocAllocatorEE11try_emplaceIJEEESt4pairINS_17StringMapIteratorIbEEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr nonnull @.str.214, i64 10)
  %.fca.0.extract.i276.a = extractvalue { ptr, i8 } %i.on, 0
  %i.oo = load ptr, ptr %.fca.0.extract.i276.a, align 8, !tbaa !94
  %i.op = getelementptr inbounds nuw i8, ptr %i.oo, i64 8
  store i8 %spec.select198, ptr %i.op, align 1, !tbaa !96
  %i.oq = and i32 %.2521, 4096
  %.not168 = icmp eq i32 %i.oq, 0
  %spec.select201 = select i1 %.not168, i8 0, i8 %i.om
  br label %bb.r

.critedge200:                                     ; preds = %bb.p
  %i.or = tail call { ptr, i8 } @_ZN4llvh9StringMapIbNS_15MallocAllocatorEE11try_emplaceIJEEESt4pairINS_17StringMapIteratorIbEEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr nonnull @.str.212, i64 4)
  %.fca.0.extract.i274 = extractvalue { ptr, i8 } %i.or, 0
  %i.os = load ptr, ptr %.fca.0.extract.i274, align 8, !tbaa !94
  %i.ot = getelementptr inbounds nuw i8, ptr %i.os, i64 8
  store i8 0, ptr %i.ot, align 1, !tbaa !96
  %i.ou = tail call { ptr, i8 } @_ZN4llvh9StringMapIbNS_15MallocAllocatorEE11try_emplaceIJEEESt4pairINS_17StringMapIteratorIbEEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr nonnull @.str.213, i64 10)
  %.fca.0.extract.i275.a = extractvalue { ptr, i8 } %i.ou, 0
  %i.ov = load ptr, ptr %.fca.0.extract.i275.a, align 8, !tbaa !94
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ov, i64 8
  store i8 0, ptr %i.ow, align 1, !tbaa !96
  %i.ox = tail call { ptr, i8 } @_ZN4llvh9StringMapIbNS_15MallocAllocatorEE11try_emplaceIJEEESt4pairINS_17StringMapIteratorIbEEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr nonnull @.str.214, i64 10)
  %.fca.0.extract.i277.a = extractvalue { ptr, i8 } %i.ox, 0
  %i.oy = load ptr, ptr %.fca.0.extract.i277.a, align 8, !tbaa !94
  %i.oz = getelementptr inbounds nuw i8, ptr %i.oy, i64 8
  store i8 0, ptr %i.oz, align 1, !tbaa !96
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.critedge200
  %i.pa = phi i8 [ 0, %.critedge200 ], [ %spec.select201, %bb.q ]
  %i.pb = tail call { ptr, i8 } @_ZN4llvh9StringMapIbNS_15MallocAllocatorEE11try_emplaceIJEEESt4pairINS_17StringMapIteratorIbEEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr nonnull @.str.215, i64 12)
  %.fca.0.extract.i278.a = extractvalue { ptr, i8 } %i.pb, 0
  %i.pc = load ptr, ptr %.fca.0.extract.i278.a, align 8, !tbaa !94
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pc, i64 8
  store i8 %i.pa, ptr %i.pd, align 1, !tbaa !96
  %i.pe = and i32 %.2521, 16384
  %.not169.a = icmp ne i32 %i.pe, 0
  %i.pf = select i1 %i.hd, i1 %.not169.a, i1 false
  %narrow532 = select i1 %i.pf, i1 %i.cu, i1 false
  %i.pg = zext i1 %narrow532 to i8
  %i.ph = tail call { ptr, i8 } @_ZN4llvh9StringMapIbNS_15MallocAllocatorEE11try_emplaceIJEEESt4pairINS_17StringMapIteratorIbEEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr nonnull @.str.216, i64 15)
  %.fca.0.extract.i279.a = extractvalue { ptr, i8 } %i.ph, 0
  %i.pi = load ptr, ptr %.fca.0.extract.i279.a, align 8, !tbaa !94
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pi, i64 8
  store i8 %i.pg, ptr %i.pj, align 1, !tbaa !96
  %i.pk = and i32 %.2521, 4194304
  %i.pl = icmp ne i32 %i.pk, 0
  %i.pm = select i1 %i.hd, i1 %i.pl, i1 false
  %i.pn = tail call { ptr, i8 } @_ZN4llvh9StringMapIbNS_15MallocAllocatorEE11try_emplaceIJEEESt4pairINS_17StringMapIteratorIbEEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr nonnull @.str.217, i64 5)
  %.fca.0.extract.i280.a = extractvalue { ptr, i8 } %i.pn, 0
  %i.po = load ptr, ptr %.fca.0.extract.i280.a, align 8, !tbaa !94
  %i.pp = getelementptr inbounds nuw i8, ptr %i.po, i64 8
  %i.pq = zext i1 %i.pm to i8
  store i8 %i.pq, ptr %i.pp, align 1, !tbaa !96
  %i.pr = and i32 %.2521, 33554432
  %i.ps = icmp ne i32 %i.pr, 0
  %i.pt = select i1 %i.hd, i1 %i.ps, i1 false
  %i.pu = tail call { ptr, i8 } @_ZN4llvh9StringMapIbNS_15MallocAllocatorEE11try_emplaceIJEEESt4pairINS_17StringMapIteratorIbEEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr nonnull @.str.218, i64 8)
  %.fca.0.extract.i281.a = extractvalue { ptr, i8 } %i.pu, 0
  %i.pv = load ptr, ptr %.fca.0.extract.i281.a, align 8, !tbaa !94
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pv, i64 8
  %i.px = zext i1 %i.pt to i8
  store i8 %i.px, ptr %i.pw, align 1, !tbaa !96
  %i.py = and i32 %.2521, 134217728
  %i.pz = icmp ne i32 %i.py, 0
  %i.qa = select i1 %i.hd, i1 %i.pz, i1 false
  %i.qb = tail call { ptr, i8 } @_ZN4llvh9StringMapIbNS_15MallocAllocatorEE11try_emplaceIJEEESt4pairINS_17StringMapIteratorIbEEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr nonnull @.str.219, i64 7)
  %.fca.0.extract.i282.a = extractvalue { ptr, i8 } %i.qb, 0
  %i.qc = load ptr, ptr %.fca.0.extract.i282.a, align 8, !tbaa !94
  %i.qd = getelementptr inbounds nuw i8, ptr %i.qc, i64 8
  %i.qe = zext i1 %i.qa to i8
  store i8 %i.qe, ptr %i.qd, align 1, !tbaa !96
  %i.qf = and i32 %.2521, 268435456
  %i.qg = icmp ne i32 %i.qf, 0
  %i.qh = select i1 %i.hd, i1 %i.qg, i1 false
  %i.qi = tail call { ptr, i8 } @_ZN4llvh9StringMapIbNS_15MallocAllocatorEE11try_emplaceIJEEESt4pairINS_17StringMapIteratorIbEEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr nonnull @.str.220, i64 9)
  %.fca.0.extract.i283.a = extractvalue { ptr, i8 } %i.qi, 0
  %i.qj = load ptr, ptr %.fca.0.extract.i283.a, align 8, !tbaa !94
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qj, i64 8
  %i.ql = zext i1 %i.qh to i8
  store i8 %i.ql, ptr %i.qk, align 1, !tbaa !96
  %i.qm = and i32 %.2524, 262144
  %i.qn = icmp ne i32 %i.qm, 0
  %i.qo = select i1 %i.hd, i1 %i.qn, i1 false
  %i.qp = tail call { ptr, i8 } @_ZN4llvh9StringMapIbNS_15MallocAllocatorEE11try_emplaceIJEEESt4pairINS_17StringMapIteratorIbEEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr nonnull @.str.221, i64 7)
  %.fca.0.extract.i284.a = extractvalue { ptr, i8 } %i.qp, 0
  %i.qq = load ptr, ptr %.fca.0.extract.i284.a, align 8, !tbaa !94
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qq, i64 8
  %i.qs = zext i1 %i.qo to i8
  store i8 %i.qs, ptr %i.qr, align 1, !tbaa !96
  %i.qt = icmp ugt i32 %i.b, 12                   ; 2 uses
  br i1 %i.qt, label %.critedge206.a, label %.critedge208

.critedge206.a:                                   ; preds = %bb.r
  %i.qu = tail call { i32, i32, i32, i32 } asm "movq\09%rbx, %rsi\0A\09cpuid\0A\09xchgq\09%rbx, %rsi\0A\09", "={ax},={si},={cx},={dx},{ax},{cx},~{dirflag},~{fpsr},~{flags}"(i32 13, i32 1) #23, !srcloc !54 ; 2 uses
  %i.qv = extractvalue { i32, i32, i32, i32 } %i.qu, 0 ; 3 uses
  %i.qw = extractvalue { i32, i32, i32, i32 } %i.qu, 1
  %1 = and i32 %i.qv, 1
  %.not170 = icmp eq i32 %1, 0
  %spec.select207.a = select i1 %.not170, i8 0, i8 %i.cr
  %i.qx = tail call { ptr, i8 } @_ZN4llvh9StringMapIbNS_15MallocAllocatorEE11try_emplaceIJEEESt4pairINS_17StringMapIteratorIbEEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr nonnull @.str.222, i64 8)
  %.fca.0.extract.i285.a = extractvalue { ptr, i8 } %i.qx, 0
  %i.qy = load ptr, ptr %.fca.0.extract.i285.a, align 8, !tbaa !94
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qy, i64 8
  store i8 %spec.select207.a, ptr %i.qz, align 1, !tbaa !96
  %i.ra = and i32 %i.qv, 2
  %.not171 = icmp eq i32 %i.ra, 0
  %spec.select209 = select i1 %.not171, i8 0, i8 %i.cr
  br label %bb.s

.critedge208:                                     ; preds = %bb.r
  %i.rb = tail call { ptr, i8 } @_ZN4llvh9StringMapIbNS_15MallocAllocatorEE11try_emplaceIJEEESt4pairINS_17StringMapIteratorIbEEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr nonnull @.str.222, i64 8)
  %.fca.0.extract.i286.a = extractvalue { ptr, i8 } %i.rb, 0
  %i.rc = load ptr, ptr %.fca.0.extract.i286.a, align 8, !tbaa !94
  %i.rd = getelementptr inbounds nuw i8, ptr %i.rc, i64 8
  store i8 0, ptr %i.rd, align 1, !tbaa !96
  br label %bb.s

bb.s:                                             ; preds = %.critedge206.a, %.critedge208
  %.3517 = phi i32 [ %i.qw, %.critedge206.a ], [ %.2516, %.critedge208 ]
  %.4 = phi i32 [ %i.qv, %.critedge206.a ], [ %.3, %.critedge208 ]
  %i.re = phi i8 [ %spec.select209, %.critedge206.a ], [ 0, %.critedge208 ]
  %i.rf = tail call { ptr, i8 } @_ZN4llvh9StringMapIbNS_15MallocAllocatorEE11try_emplaceIJEEESt4pairINS_17StringMapIteratorIbEEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr nonnull @.str.223, i64 6)
  %.fca.0.extract.i287.a = extractvalue { ptr, i8 } %i.rf, 0
  %i.rg = load ptr, ptr %.fca.0.extract.i287.a, align 8, !tbaa !94
  %i.rh = getelementptr inbounds nuw i8, ptr %i.rg, i64 8
  store i8 %i.re, ptr %i.rh, align 1, !tbaa !96
  %i.ri = and i32 %.4, 8
  %.not172 = icmp ne i32 %i.ri, 0
  %i.rj = select i1 %i.qt, i1 %.not172, i1 false
  %i.rk = select i1 %i.rj, i8 %i.cr, i8 0
  %i.rl = tail call { ptr, i8 } @_ZN4llvh9StringMapIbNS_15MallocAllocatorEE11try_emplaceIJEEESt4pairINS_17StringMapIteratorIbEEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr nonnull @.str.224, i64 6)
  %.fca.0.extract.i288 = extractvalue { ptr, i8 } %i.rl, 0
  %i.rm = load ptr, ptr %.fca.0.extract.i288, align 8, !tbaa !94
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rm, i64 8
  store i8 %i.rk, ptr %i.rn, align 1, !tbaa !96
  %i.ro = icmp ugt i32 %i.b, 19                   ; 2 uses
  br i1 %i.ro, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.rp = tail call { i32, i32, i32, i32 } asm "movq\09%rbx, %rsi\0A\09cpuid\0A\09xchgq\09%rbx, %rsi\0A\09", "={ax},={si},={cx},={dx},{ax},{cx},~{dirflag},~{fpsr},~{flags}"(i32 20, i32 0) #23, !srcloc !54
  %i.rq = extractvalue { i32, i32, i32, i32 } %i.rp, 1
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.4518 = phi i32 [ %i.rq, %bb.t ], [ %.3517, %bb.s ]
  %i.rr = and i32 %.4518, 16
  %i.rs = icmp ne i32 %i.rr, 0
  %i.rt = select i1 %i.ro, i1 %i.rs, i1 false
  %i.ru = tail call { ptr, i8 } @_ZN4llvh9StringMapIbNS_15MallocAllocatorEE11try_emplaceIJEEESt4pairINS_17StringMapIteratorIbEEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr nonnull @.str.225, i64 7)
  %.fca.0.extract.i289 = extractvalue { ptr, i8 } %i.ru, 0
  %i.rv = load ptr, ptr %.fca.0.extract.i289, align 8, !tbaa !94
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rv, i64 8
  %i.rx = zext i1 %i.rt to i8
  store i8 %i.rx, ptr %i.rw, align 1, !tbaa !96
  br label %bb.v

bb.v:                                             ; preds = %bb.a, %bb.u
  ret i1 %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvh3sys16getProcessTripleB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0) local_unnamed_addr #0 {
._crit_edge.i.i:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.llvh::Triple", align 8      ; 18 uses
  %4 = alloca %"class.llvh::Twine", align 8       ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.llvh::Triple", align 8      ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.c, ptr %2, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  store i64 24, ptr %i.b, align 8, !tbaa !19
  %i.d = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) #20 ; 2 uses
  store ptr %i.d, ptr %2, align 8, !tbaa !15
  %i.e = load i64, ptr %i.b, align 8, !tbaa !19   ; 3 uses
  store i64 %i.e, ptr %i.c, align 8, !tbaa !14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.d, ptr noundef nonnull align 1 dereferenceable(24) @.str.226, i64 24, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.e, ptr %i.f, align 8, !tbaa !11
  %i.g = load ptr, ptr %2, align 8, !tbaa !15
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.e
  store i8 0, ptr %i.h, align 1, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call fastcc void @_ZL21updateTripleOSVersionNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias nonnull writable align 8 %1, ptr noundef %2)
  %i.i = load ptr, ptr %2, align 8, !tbaa !15     ; 2 uses
  %i.j = icmp eq ptr %i.i, %i.c
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %._crit_edge.i.i
  %i.k = load i64, ptr %i.c, align 8, !tbaa !14
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.l) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %._crit_edge.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.m = load ptr, ptr %1, align 8, !tbaa !15
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !11
  call void @_ZN4llvh6Triple9normalizeB5cxx11ENS_9StringRefE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr %i.m, i64 %i.o) #20
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i8 4, ptr %i.p, align 8, !tbaa !59
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 17
  store i8 1, ptr %i.q, align 1, !tbaa !56
  store ptr %5, ptr %4, align 8, !tbaa !14
  call void @_ZN4llvh6TripleC1ERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(18) %4) #20
  %i.r = load ptr, ptr %5, align 8, !tbaa !15     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.u = load i64, ptr %i.s, align 8, !tbaa !14
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.w = call noundef zeroext i1 @_ZNK4llvh6Triple11isArch32BitEv(ptr noundef nonnull align 8 dereferenceable(56) %3) #20
  br i1 %i.w, label %bb.a, label %bb.g

bb.a:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  call void @_ZNK4llvh6Triple19get64BitArchVariantEv(ptr dead_on_unwind nonnull writable sret(%"class.llvh::Triple") align 8 %6, ptr noundef nonnull align 8 dereferenceable(56) %3) #20
  %i.x = load ptr, ptr %3, align 8, !tbaa !15     ; 6 uses
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.z = icmp eq ptr %i.x, %i.y
  %i.aa = load ptr, ptr %6, align 8, !tbaa !15    ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab                ; 2 uses
  br i1 %i.z, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5: ; preds = %bb.a
  br i1 %i.ac, label %bb.b, label %.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i4: ; preds = %bb.a
  br i1 %i.ac, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i4, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !11 ; 3 uses
  %i.af = icmp ult i64 %i.ae, 16
  call void @llvm.assume(i1 %i.af)
  switch i64 %i.ae, label %bb.d [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
    i64 1, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  %i.ag = load i8, ptr %i.aa, align 1, !tbaa !14
  store i8 %i.ag, ptr %i.x, align 1, !tbaa !14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

bb.d:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.x, ptr align 1 %i.aa, i64 %i.ae, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i: ; preds = %bb.d, %bb.c, %bb.b
  %i.ah = load i64, ptr %i.ad, align 8, !tbaa !11 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.ah, ptr %i.ai, align 8, !tbaa !11
  %i.aj = load ptr, ptr %3, align 8, !tbaa !15
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ah
  store i8 0, ptr %i.ak, align 1, !tbaa !14
  %.pre.i.i = load ptr, ptr %6, align 8, !tbaa !15
  br label %_ZN4llvh6TripleaSEOS0_.exit

.thread.i.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.aa, ptr %3, align 8, !tbaa !15
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.an = load <2 x i64>, ptr %i.am, align 8, !tbaa !14
  store <2 x i64> %i.an, ptr %i.al, align 8, !tbaa !14
  br label %bb.f

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i4
  %i.ao = load i64, ptr %i.y, align 8, !tbaa !14
  store ptr %i.aa, ptr %3, align 8, !tbaa !15
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ar = load <2 x i64>, ptr %i.ap, align 8, !tbaa !14
  store <2 x i64> %i.ar, ptr %i.aq, align 8, !tbaa !14
  %.not.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i
  store ptr %i.x, ptr %6, align 8, !tbaa !15
  store i64 %i.ao, ptr %i.ab, align 8, !tbaa !14
  br label %_ZN4llvh6TripleaSEOS0_.exit

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i, %.thread.i.i
end_hunk_1
