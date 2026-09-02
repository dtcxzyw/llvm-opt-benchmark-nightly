Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/R600ISelLowering?download=true
inline.NumInlined: 2776
inline.NumDeleted: 1019
loop-unroll.NumCompletelyUnrolled: 43
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 46
begin_hunk_0_@_ZNK4llvm18R600TargetLowering17CCAssignFnForCallEjb:bb.a
    i32 95, label %bb.b
    i32 96, label %bb.b
    i32 93, label %bb.b
    i32 90, label %bb.b
    i32 89, label %bb.b
    i32 87, label %bb.b
    i32 88, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  ret ptr @_ZL7CC_R600jN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN4llvm21reportFatalUsageErrorEPKc(ptr noundef nonnull @.str) #22
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @_ZL7CC_R600jN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE(i32 noundef %0, i16 %1, i16 %2, i32 noundef %3, i64 %4, i64 %5, ptr nofree readnone captures(none) %6, ptr noundef nonnull align 8 dereferenceable(420) %7) #0 {
bb.a:
  %8 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  %i.a = and i64 %4, 8
  %.not22 = icmp eq i64 %i.a, 0
  br i1 %.not22, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  switch i16 %2, label %.thread [
    i16 136, label %.critedge
    i16 73, label %.critedge
  ]

.critedge:                                        ; preds = %bb.b, %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !501  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 116
  %i.e = load i32, ptr %i.d, align 4, !tbaa !141
  %.not.i.i = icmp sgt i32 %i.e, -1
  br i1 %.not.i.i, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.c

bb.c:                                             ; preds = %.critedge
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  %i.g = load i32, ptr %i.f, align 4, !tbaa !141  ; 32 uses
  %i.h = and i32 %i.g, 1
  %.not.i.i.1 = icmp eq i32 %i.h, 0
  br i1 %.not.i.i.1, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = and i32 %i.g, 2
  %.not.i.i.2 = icmp eq i32 %i.i, 0
  br i1 %.not.i.i.2, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = and i32 %i.g, 4
  %.not.i.i.3 = icmp eq i32 %i.j, 0
  br i1 %.not.i.i.3, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = and i32 %i.g, 8
  %.not.i.i.4 = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.4, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = and i32 %i.g, 16
  %.not.i.i.5 = icmp eq i32 %i.l, 0
  br i1 %.not.i.i.5, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = and i32 %i.g, 32
  %.not.i.i.6 = icmp eq i32 %i.m, 0
  br i1 %.not.i.i.6, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.n = and i32 %i.g, 64
  %.not.i.i.7 = icmp eq i32 %i.n, 0
  br i1 %.not.i.i.7, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.o = and i32 %i.g, 128
  %.not.i.i.8 = icmp eq i32 %i.o, 0
  br i1 %.not.i.i.8, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.p = and i32 %i.g, 256
  %.not.i.i.9 = icmp eq i32 %i.p, 0
  br i1 %.not.i.i.9, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.q = and i32 %i.g, 512
  %.not.i.i.10 = icmp eq i32 %i.q, 0
  br i1 %.not.i.i.10, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.r = and i32 %i.g, 1024
  %.not.i.i.11 = icmp eq i32 %i.r, 0
  br i1 %.not.i.i.11, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.s = and i32 %i.g, 2048
  %.not.i.i.12 = icmp eq i32 %i.s, 0
  br i1 %.not.i.i.12, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.t = and i32 %i.g, 4096
  %.not.i.i.13 = icmp eq i32 %i.t, 0
  br i1 %.not.i.i.13, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.u = and i32 %i.g, 8192
  %.not.i.i.14 = icmp eq i32 %i.u, 0
  br i1 %.not.i.i.14, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.v = and i32 %i.g, 16384
  %.not.i.i.15 = icmp eq i32 %i.v, 0
  br i1 %.not.i.i.15, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.w = and i32 %i.g, 32768
  %.not.i.i.16 = icmp eq i32 %i.w, 0
  br i1 %.not.i.i.16, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.x = and i32 %i.g, 65536
  %.not.i.i.17 = icmp eq i32 %i.x, 0
  br i1 %.not.i.i.17, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.y = and i32 %i.g, 131072
  %.not.i.i.18 = icmp eq i32 %i.y, 0
  br i1 %.not.i.i.18, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.z = and i32 %i.g, 262144
  %.not.i.i.19 = icmp eq i32 %i.z, 0
  br i1 %.not.i.i.19, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.aa = and i32 %i.g, 524288
  %.not.i.i.20 = icmp eq i32 %i.aa, 0
  br i1 %.not.i.i.20, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ab = and i32 %i.g, 1048576
  %.not.i.i.21 = icmp eq i32 %i.ab, 0
  br i1 %.not.i.i.21, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ac = and i32 %i.g, 2097152
  %.not.i.i.22 = icmp eq i32 %i.ac, 0
  br i1 %.not.i.i.22, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ad = and i32 %i.g, 4194304
  %.not.i.i.23 = icmp eq i32 %i.ad, 0
  br i1 %.not.i.i.23, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ae = and i32 %i.g, 8388608
  %.not.i.i.24 = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i.24, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.af = and i32 %i.g, 16777216
  %.not.i.i.25 = icmp eq i32 %i.af, 0
  br i1 %.not.i.i.25, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ag = and i32 %i.g, 33554432
  %.not.i.i.26 = icmp eq i32 %i.ag, 0
  br i1 %.not.i.i.26, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ah = and i32 %i.g, 67108864
  %.not.i.i.27 = icmp eq i32 %i.ah, 0
  br i1 %.not.i.i.27, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ai = and i32 %i.g, 134217728
  %.not.i.i.28 = icmp eq i32 %i.ai, 0
  br i1 %.not.i.i.28, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.aj = and i32 %i.g, 268435456
  %.not.i.i.29 = icmp eq i32 %i.aj, 0
  br i1 %.not.i.i.29, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ak = and i32 %i.g, 536870912
  %.not.i.i.30 = icmp eq i32 %i.ak, 0
  br i1 %.not.i.i.30, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.al = and i32 %i.g, 1073741824
  %.not.i.i.31 = icmp eq i32 %i.al, 0
  br i1 %.not.i.i.31, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %.not.i.i.32 = icmp sgt i32 %i.g, -1
  br i1 %.not.i.i.32, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %.thread

_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit: ; preds = %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %.critedge
  %.0613.i.i.lcssa.wide = phi i64 [ 0, %.critedge ], [ 1, %bb.c ], [ 2, %bb.d ], [ 3, %bb.e ], [ 4, %bb.f ], [ 5, %bb.g ], [ 6, %bb.h ], [ 7, %bb.i ], [ 8, %bb.j ], [ 9, %bb.k ], [ 10, %bb.l ], [ 11, %bb.m ], [ 12, %bb.n ], [ 13, %bb.o ], [ 14, %bb.p ], [ 15, %bb.q ], [ 16, %bb.r ], [ 17, %bb.s ], [ 18, %bb.t ], [ 19, %bb.u ], [ 20, %bb.v ], [ 21, %bb.w ], [ 22, %bb.x ], [ 23, %bb.y ], [ 24, %bb.z ], [ 25, %bb.aa ], [ 26, %bb.ab ], [ 27, %bb.ac ], [ 28, %bb.ad ], [ 29, %bb.ae ], [ 30, %bb.af ], [ 31, %bb.ag ], [ 32, %bb.ah ]
  %i.am = getelementptr inbounds nuw [2 x i8], ptr @_ZZL7CC_R600jN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE8RegList1, i64 %.0613.i.i.lcssa.wide
  %i.an = load i16, ptr %i.am, align 2, !tbaa !140 ; 2 uses
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %7, i16 noundef zeroext %i.an) #19
  %i.ao = zext i16 %i.an to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  %i.ap = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i8 0, ptr %i.ap, align 8, !tbaa !544, !alias.scope !546
  %i.aq = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i32 %0, ptr %i.aq, align 8, !tbaa !549, !alias.scope !546
  %i.ar = getelementptr inbounds nuw i8, ptr %8, i64 20 ; 2 uses
  %i.as = load i8, ptr %i.ar, align 4, !alias.scope !546
  %i.at = and i8 %i.as, -128
  %i.au = trunc i32 %3 to i8
  %i.av = shl i8 %i.au, 1
  %i.aw = and i8 %i.av, 126
  %i.ax = or disjoint i8 %i.at, %i.aw
  store i8 %i.ax, ptr %i.ar, align 4, !alias.scope !546
  %i.ay = getelementptr inbounds nuw i8, ptr %8, i64 22
  store i16 %1, ptr %i.ay, align 2, !tbaa !463, !alias.scope !546
  %i.az = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i16 %2, ptr %i.az, align 8, !tbaa !463, !alias.scope !546
  store i32 %i.ao, ptr %8, align 8, !tbaa !141, !alias.scope !546
  %i.ba = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !558, !nonnull !144, !align !578 ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8 ; 3 uses
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !502 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 12
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !503
  %.not.i.i9 = icmp ult i32 %i.bd, %i.bf
  br i1 %.not.i.i9, label %bb.aj, label %bb.ai, !prof !542

bb.ai:                                            ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.bb, ptr noundef nonnull align 8 dereferenceable(26) %8)
  br label %bb.ak

bb.aj:                                            ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit
  %i.bg = zext i32 %i.bd to i64
  %i.bh = load ptr, ptr %i.bb, align 8, !tbaa !501
  %i.bi = getelementptr inbounds nuw [32 x i8], ptr %i.bh, i64 %i.bg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.bi, ptr noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false)
  %i.bj = load i32, ptr %i.bc, align 8, !tbaa !502
  %i.bk = add i32 %i.bj, 1
  store i32 %i.bk, ptr %i.bc, align 8, !tbaa !502
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  br label %.thread

.thread:                                          ; preds = %bb.ah, %bb.b, %bb.a, %bb.ak
  %.1 = phi i1 [ false, %bb.ak ], [ true, %bb.a ], [ true, %bb.b ], [ true, %bb.ah ]
  ret i1 %.1
}

; Function Attrs: noreturn
declare void @_ZN4llvm21reportFatalUsageErrorEPKc(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define dso_local { ptr, i32 } @_ZNK4llvm18R600TargetLowering20LowerFormalArgumentsENS_7SDValueEjbRKNS_15SmallVectorImplINS_3ISD8InputArgEEERKNS_5SDLocERNS_12SelectionDAGERNS2_IS1_EE(ptr noundef nonnull align 8 dereferenceable(518464) %0, ptr %1, i32 %2, i32 noundef %3, i1 noundef zeroext %4, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(12) %6, ptr noundef nonnull align 8 dereferenceable(920) %7, ptr noundef nonnull align 8 dereferenceable(16) %8) unnamed_addr #0 align 2 {
bb.a:
  %9 = alloca %"class.llvm::SDLoc", align 8       ; 4 uses
  %10 = alloca %"struct.llvm::EVT", align 8       ; 5 uses
  %11 = alloca %"struct.llvm::EVT", align 8       ; 6 uses
  %12 = alloca [2 x %"class.llvm::SDValue"], align 16 ; 7 uses
  %13 = alloca %"class.llvm::ArrayRef.366", align 8 ; 5 uses
  %14 = alloca %"class.llvm::SmallVector.391", align 8 ; 9 uses
  %15 = alloca %"class.llvm::CCState", align 8    ; 13 uses
  %16 = alloca %"struct.llvm::EVT", align 8       ; 15 uses
  %17 = alloca %"struct.llvm::EVT", align 8       ; 13 uses
  %18 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %19 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %20 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %21 = alloca %"struct.llvm::MachinePointerInfo", align 8 ; 4 uses
  %22 = alloca %"struct.llvm::AAMDNodes", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #19
  %i.a = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  store ptr %i.a, ptr %14, align 8, !tbaa !501
  %i.b = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i32 0, ptr %i.b, align 8, !tbaa !502
  %i.c = getelementptr inbounds nuw i8, ptr %14, i64 12
  store i32 16, ptr %i.c, align 4, !tbaa !503
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #19
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 56 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !380
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 80
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !533
  call void @_ZN4llvm7CCStateC1EjbRNS_15MachineFunctionERNS_15SmallVectorImplINS_11CCValAssignEEERNS_11LLVMContextEb(ptr noundef nonnull align 8 dereferenceable(420) %15, i32 noundef %3, i1 noundef zeroext %4, ptr noundef nonnull align 8 dereferenceable(1065) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef nonnull align 8 dereferenceable(8) %i.g, i1 noundef zeroext false) #19
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !380
  switch i32 %3, label %_ZN4llvm6AMDGPU8isShaderEj.exit [
    i32 95, label %_ZNK4llvm18R600TargetLowering17CCAssignFnForCallEjb.exit
    i32 96, label %_ZNK4llvm18R600TargetLowering17CCAssignFnForCallEjb.exit
    i32 93, label %_ZNK4llvm18R600TargetLowering17CCAssignFnForCallEjb.exit
    i32 90, label %_ZNK4llvm18R600TargetLowering17CCAssignFnForCallEjb.exit
    i32 89, label %_ZNK4llvm18R600TargetLowering17CCAssignFnForCallEjb.exit
    i32 87, label %_ZNK4llvm18R600TargetLowering17CCAssignFnForCallEjb.exit
    i32 88, label %_ZNK4llvm18R600TargetLowering17CCAssignFnForCallEjb.exit
    i32 104, label %bb.b
    i32 105, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  call void @_ZN4llvm21reportFatalUsageErrorEPKc(ptr noundef nonnull @.str) #22
  unreachable

_ZNK4llvm18R600TargetLowering17CCAssignFnForCallEjb.exit: ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  call void @_ZN4llvm7CCState22AnalyzeFormalArgumentsERKNS_15SmallVectorImplINS_3ISD8InputArgEEEPFbjNS_3MVTES7_NS_11CCValAssign7LocInfoENS2_10ArgFlagsTyEPNS_4TypeERS0_E(ptr noundef nonnull align 8 dereferenceable(420) %15, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull @_ZL7CC_R600jN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE) #19
  br label %bb.c

_ZN4llvm6AMDGPU8isShaderEj.exit:                  ; preds = %bb.a
  call void @_ZNK4llvm20AMDGPUTargetLowering29analyzeFormalArgumentsComputeERNS_7CCStateERKNS_15SmallVectorImplINS_3ISD8InputArgEEE(ptr noundef nonnull align 8 dereferenceable(518448) %0, ptr noundef nonnull align 8 dereferenceable(420) %15, ptr noundef nonnull align 8 dereferenceable(16) %5) #19
  br label %bb.c

bb.c:                                             ; preds = %_ZN4llvm6AMDGPU8isShaderEj.exit, %_ZNK4llvm18R600TargetLowering17CCAssignFnForCallEjb.exit
  %.0.i143 = phi i1 [ false, %_ZN4llvm6AMDGPU8isShaderEj.exit ], [ true, %_ZNK4llvm18R600TargetLowering17CCAssignFnForCallEjb.exit ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.j = load i32, ptr %i.i, align 8, !tbaa !502  ; 2 uses
  %.not149 = icmp eq i32 %i.j, 0
  br i1 %.not149, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %10, i64 8
  %.sroa.481.0..sroa_idx = getelementptr inbounds nuw i8, ptr %18, i64 8
  %.sroa.211.0..sroa_idx = getelementptr inbounds nuw i8, ptr %19, i64 8
  %.sroa.27.0..sroa_idx = getelementptr inbounds nuw i8, ptr %20, i64 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %21, i64 16
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %21, i64 20
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 12 ; 2 uses
  %.sroa.218.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %12, i64 16
  %.sroa.26.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %13, i64 8
  %wide.trip.count = zext i32 %i.j to i64
  br label %bb.i

._crit_edge:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit, %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %15, i64 368
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !501  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %15, i64 384
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZN4llvm11SmallVectorINS_7CCState9ByValInfoELj4EED2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  call void @free(ptr noundef %i.t) #19
  br label %_ZN4llvm11SmallVectorINS_7CCState9ByValInfoELj4EED2Ev.exit.i

_ZN4llvm11SmallVectorINS_7CCState9ByValInfoELj4EED2Ev.exit.i: ; preds = %bb.d, %._crit_edge
  %i.w = getelementptr inbounds nuw i8, ptr %15, i64 288
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !501  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %15, i64 304
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZN4llvm11SmallVectorINS_3ISD10ArgFlagsTyELj4EED2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm11SmallVectorINS_7CCState9ByValInfoELj4EED2Ev.exit.i
  call void @free(ptr noundef %i.x) #19
  br label %_ZN4llvm11SmallVectorINS_3ISD10ArgFlagsTyELj4EED2Ev.exit.i

_ZN4llvm11SmallVectorINS_3ISD10ArgFlagsTyELj4EED2Ev.exit.i: ; preds = %bb.e, %_ZN4llvm11SmallVectorINS_7CCState9ByValInfoELj4EED2Ev.exit.i
  %i.aa = getelementptr inbounds nuw i8, ptr %15, i64 144
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !501 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %15, i64 160
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZN4llvm11SmallVectorINS_11CCValAssignELj4EED2Ev.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm11SmallVectorINS_3ISD10ArgFlagsTyELj4EED2Ev.exit.i
  call void @free(ptr noundef %i.ab) #19
  br label %_ZN4llvm11SmallVectorINS_11CCValAssignELj4EED2Ev.exit.i

_ZN4llvm11SmallVectorINS_11CCValAssignELj4EED2Ev.exit.i: ; preds = %bb.f, %_ZN4llvm11SmallVectorINS_3ISD10ArgFlagsTyELj4EED2Ev.exit.i
  %i.ae = getelementptr inbounds nuw i8, ptr %15, i64 64
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !501 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %15, i64 80
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZN4llvm7CCStateD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm11SmallVectorINS_11CCValAssignELj4EED2Ev.exit.i
  call void @free(ptr noundef %i.af) #19
  br label %_ZN4llvm7CCStateD2Ev.exit

_ZN4llvm7CCStateD2Ev.exit:                        ; preds = %_ZN4llvm11SmallVectorINS_11CCValAssignELj4EED2Ev.exit.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  %i.ai = load ptr, ptr %14, align 8, !tbaa !501  ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.a
  br i1 %i.aj, label %_ZN4llvm11SmallVectorINS_11CCValAssignELj16EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN4llvm7CCStateD2Ev.exit
  call void @free(ptr noundef %i.ai) #19
  br label %_ZN4llvm11SmallVectorINS_11CCValAssignELj16EED2Ev.exit

_ZN4llvm11SmallVectorINS_11CCValAssignELj16EED2Ev.exit: ; preds = %_ZN4llvm7CCStateD2Ev.exit, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %1, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %2, 1
  ret { ptr, i32 } %.fca.1.insert

bb.i:                                             ; preds = %.lr.ph, %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit
end_hunk_0
