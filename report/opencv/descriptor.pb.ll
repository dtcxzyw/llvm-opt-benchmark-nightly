Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/descriptor.pb?download=true
inline.NumInlined: 3992
inline.NumDeleted: 1137
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZNK6google8protobuf19FileDescriptorProto13IsInitializedEv:bb.a
  %i.bb = icmp slt i32 %i.ba, 1
  br i1 %i.bb, label %_ZNK6google8protobuf20FieldDescriptorProto13IsInitializedEv.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.j
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aw, i64 64
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !61
  %i.be = zext nneg i32 %i.ba to i64
  br label %bb.k

_ZNK6google8protobuf19UninterpretedOption13IsInitializedEv.exit.loopexit.i.i.i.i: ; preds = %bb.l, %bb.k
  %i.bf = icmp slt i64 %indvars.iv.i.i.i.i, 2
  br i1 %i.bf, label %_ZNK6google8protobuf20FieldDescriptorProto13IsInitializedEv.exit.i, label %bb.k, !llvm.loop !23

bb.k:                                             ; preds = %_ZNK6google8protobuf19UninterpretedOption13IsInitializedEv.exit.loopexit.i.i.i.i, %.lr.ph.i.i.i.i
  %indvars.iv.i.i.i.i = phi i64 [ %i.be, %.lr.ph.i.i.i.i ], [ %indvars.iv.next.i.i.i.i, %_ZNK6google8protobuf19UninterpretedOption13IsInitializedEv.exit.loopexit.i.i.i.i ] ; 3 uses
  %indvars.iv.next.i.i.i.i = add nsw i64 %indvars.iv.i.i.i.i, -1
  %i.bg = getelementptr [8 x i8], ptr %i.bd, i64 %indvars.iv.i.i.i.i
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !70 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !65 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 40
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = icmp slt i32 %i.bj, 1
  br i1 %i.bm, label %_ZNK6google8protobuf19UninterpretedOption13IsInitializedEv.exit.loopexit.i.i.i.i, label %.lr.ph45

.lr.ph45:                                         ; preds = %bb.k
  %i.bn = zext nneg i32 %i.bj to i64
  br label %bb.m

bb.l:                                             ; preds = %bb.m
  %i.bo = add nsw i64 %indvars.iv.i.i.i.i.i.i43, -1 ; 2 uses
  %i.bp = trunc nuw i64 %i.bo to i32
  %i.bq = icmp slt i32 %i.bp, 1
  br i1 %i.bq, label %_ZNK6google8protobuf19UninterpretedOption13IsInitializedEv.exit.loopexit.i.i.i.i, label %bb.m, !llvm.loop !24

bb.m:                                             ; preds = %.lr.ph45, %bb.l
  %indvars.iv.i.i.i.i.i.i43 = phi i64 [ %i.bn, %.lr.ph45 ], [ %i.bo, %bb.l ] ; 2 uses
  %i.br = getelementptr [8 x i8], ptr %i.bl, i64 %indvars.iv.i.i.i.i.i.i43
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !70
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !95
  %i.bv = and i32 %i.bu, 3
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.bv, 3
  br i1 %.not.i.i.i.i.i.i.i, label %bb.l, label %_ZN6google8protobuf8internal17AllAreInitializedINS0_15DescriptorProtoEEEbRKNS0_16RepeatedPtrFieldIT_EE.exit, !llvm.loop !24

_ZNK6google8protobuf20FieldDescriptorProto13IsInitializedEv.exit.i: ; preds = %_ZNK6google8protobuf19UninterpretedOption13IsInitializedEv.exit.loopexit.i.i.i.i, %bb.j, %bb.h
  %i.bw = icmp slt i64 %indvars.iv.i4, 2
  br i1 %i.bw, label %.loopexit, label %bb.h, !llvm.loop !25

.loopexit:                                        ; preds = %_ZNK6google8protobuf20FieldDescriptorProto13IsInitializedEv.exit.i, %._crit_edge42
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !95
  %i.bz = and i32 %i.by, 8
  %.not = icmp eq i32 %i.bz, 0
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.cb = load ptr, ptr %i.ca, align 8            ; 3 uses
  br i1 %.not, label %_ZN6google8protobuf8internal17AllAreInitializedINS0_15DescriptorProtoEEEbRKNS0_16RepeatedPtrFieldIT_EE.exit, label %bb.n

bb.n:                                             ; preds = %.loopexit
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.cd = tail call noundef zeroext i1 @_ZNK6google8protobuf8internal12ExtensionSet13IsInitializedEv(ptr noundef nonnull align 8 dereferenceable(24) %i.cc)
  br i1 %i.cd, label %bb.o, label %_ZN6google8protobuf8internal17AllAreInitializedINS0_15DescriptorProtoEEEbRKNS0_16RepeatedPtrFieldIT_EE.exit

bb.o:                                             ; preds = %bb.n
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 56
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !65 ; 2 uses
  %i.cg = icmp slt i32 %i.cf, 1
  br i1 %i.cg, label %_ZN6google8protobuf8internal17AllAreInitializedINS0_15DescriptorProtoEEEbRKNS0_16RepeatedPtrFieldIT_EE.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.o
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cb, i64 64
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !61
  %i.cj = zext nneg i32 %i.cf to i64
  br label %bb.p

_ZNK6google8protobuf19UninterpretedOption13IsInitializedEv.exit.loopexit.i.i: ; preds = %bb.q, %bb.p
  %i.ck = icmp slt i64 %indvars.iv.i.i, 2
  br i1 %i.ck, label %_ZN6google8protobuf8internal17AllAreInitializedINS0_15DescriptorProtoEEEbRKNS0_16RepeatedPtrFieldIT_EE.exit, label %bb.p, !llvm.loop !23

bb.p:                                             ; preds = %_ZNK6google8protobuf19UninterpretedOption13IsInitializedEv.exit.loopexit.i.i, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %i.cj, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %_ZNK6google8protobuf19UninterpretedOption13IsInitializedEv.exit.loopexit.i.i ] ; 3 uses
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1
  %i.cl = getelementptr [8 x i8], ptr %i.ci, i64 %indvars.iv.i.i
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !70 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 32
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !65 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 40
  %i.cq = load ptr, ptr %i.cp, align 8
  %i.cr = icmp slt i32 %i.co, 1
  br i1 %i.cr, label %_ZNK6google8protobuf19UninterpretedOption13IsInitializedEv.exit.loopexit.i.i, label %.lr.ph48

.lr.ph48:                                         ; preds = %bb.p
  %i.cs = zext nneg i32 %i.co to i64
  br label %bb.r

bb.q:                                             ; preds = %bb.r
  %i.ct = add nsw i64 %indvars.iv.i.i.i.i546, -1  ; 2 uses
  %i.cu = trunc nuw i64 %i.ct to i32
  %i.cv = icmp slt i32 %i.cu, 1
  br i1 %i.cv, label %_ZNK6google8protobuf19UninterpretedOption13IsInitializedEv.exit.loopexit.i.i, label %bb.r, !llvm.loop !24

bb.r:                                             ; preds = %.lr.ph48, %bb.q
  %indvars.iv.i.i.i.i546 = phi i64 [ %i.cs, %.lr.ph48 ], [ %i.ct, %bb.q ] ; 2 uses
  %i.cw = getelementptr [8 x i8], ptr %i.cq, i64 %indvars.iv.i.i.i.i546
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !70
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !95
  %i.da = and i32 %i.cz, 3
  %.not.i.i.i.i.i = icmp eq i32 %i.da, 3
  br i1 %.not.i.i.i.i.i, label %bb.q, label %_ZN6google8protobuf8internal17AllAreInitializedINS0_15DescriptorProtoEEEbRKNS0_16RepeatedPtrFieldIT_EE.exit, !llvm.loop !24

_ZN6google8protobuf8internal17AllAreInitializedINS0_15DescriptorProtoEEEbRKNS0_16RepeatedPtrFieldIT_EE.exit: ; preds = %bb.c, %bb.e, %bb.g, %bb.i, %bb.m, %_ZNK6google8protobuf19UninterpretedOption13IsInitializedEv.exit.loopexit.i.i, %bb.r, %bb.o, %.loopexit, %bb.n
  %.0 = phi i1 [ false, %bb.i ], [ false, %bb.r ], [ true, %_ZNK6google8protobuf19UninterpretedOption13IsInitializedEv.exit.loopexit.i.i ], [ false, %bb.m ], [ false, %bb.g ], [ false, %bb.e ], [ false, %bb.n ], [ true, %.loopexit ], [ true, %bb.o ], [ false, %bb.c ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZNK6google8protobuf11FileOptions13IsInitializedEv(ptr noundef nonnull align 8 dereferenceable(168) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = tail call noundef zeroext i1 @_ZNK6google8protobuf8internal12ExtensionSet13IsInitializedEv(ptr noundef nonnull align 8 dereferenceable(24) %i.a)
  br i1 %i.b, label %bb.b, label %_ZN6google8protobuf8internal17AllAreInitializedINS0_19UninterpretedOptionEEEbRKNS0_16RepeatedPtrFieldIT_EE.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load i32, ptr %i.c, align 8, !tbaa !65   ; 2 uses
  %i.e = icmp slt i32 %i.d, 1
  br i1 %i.e, label %_ZN6google8protobuf8internal17AllAreInitializedINS0_19UninterpretedOptionEEEbRKNS0_16RepeatedPtrFieldIT_EE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !61
  %i.h = zext nneg i32 %i.d to i64
  br label %bb.c

_ZNK6google8protobuf19UninterpretedOption13IsInitializedEv.exit.loopexit.i: ; preds = %bb.d, %bb.c
  %i.i = icmp slt i64 %indvars.iv.i, 2
  br i1 %i.i, label %_ZN6google8protobuf8internal17AllAreInitializedINS0_19UninterpretedOptionEEEbRKNS0_16RepeatedPtrFieldIT_EE.exit, label %bb.c, !llvm.loop !23

bb.c:                                             ; preds = %_ZNK6google8protobuf19UninterpretedOption13IsInitializedEv.exit.loopexit.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.h, %.lr.ph.i ], [ %indvars.iv.next.i, %_ZNK6google8protobuf19UninterpretedOption13IsInitializedEv.exit.loopexit.i ] ; 3 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %i.j = getelementptr [8 x i8], ptr %i.g, i64 %indvars.iv.i
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !70   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.m = load i32, ptr %i.l, align 8, !tbaa !65   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = icmp slt i32 %i.m, 1
  br i1 %i.p, label %_ZNK6google8protobuf19UninterpretedOption13IsInitializedEv.exit.loopexit.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.q = zext nneg i32 %i.m to i64
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %i.r = add nsw i64 %indvars.iv.i.i.i7, -1       ; 2 uses
  %i.s = trunc nuw i64 %i.r to i32
  %i.t = icmp slt i32 %i.s, 1
  br i1 %i.t, label %_ZNK6google8protobuf19UninterpretedOption13IsInitializedEv.exit.loopexit.i, label %bb.e, !llvm.loop !24

bb.e:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv.i.i.i7 = phi i64 [ %i.q, %.lr.ph ], [ %i.r, %bb.d ] ; 2 uses
  %i.u = getelementptr [8 x i8], ptr %i.o, i64 %indvars.iv.i.i.i7
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !70
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load i32, ptr %i.w, align 4, !tbaa !95
  %i.y = and i32 %i.x, 3
  %.not.i.i.i.i = icmp eq i32 %i.y, 3
  br i1 %.not.i.i.i.i, label %bb.d, label %_ZN6google8protobuf8internal17AllAreInitializedINS0_19UninterpretedOptionEEEbRKNS0_16RepeatedPtrFieldIT_EE.exit, !llvm.loop !24

_ZN6google8protobuf8internal17AllAreInitializedINS0_19UninterpretedOptionEEEbRKNS0_16RepeatedPtrFieldIT_EE.exit: ; preds = %_ZNK6google8protobuf19UninterpretedOption13IsInitializedEv.exit.loopexit.i, %bb.e, %bb.b, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ false, %bb.e ], [ true, %bb.b ], [ true, %_ZNK6google8protobuf19UninterpretedOption13IsInitializedEv.exit.loopexit.i ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN6google8protobuf19FileDescriptorProto12InternalSwapEPS1_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(216) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !54
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !54
  store i64 %i.d, ptr %i.a, align 8, !tbaa !92
  store i64 %i.b, ptr %i.c, align 8, !tbaa !92
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.g = load i32, ptr %i.e, align 8, !tbaa !95
  %i.h = load i32, ptr %i.f, align 8, !tbaa !95
  store i32 %i.h, ptr %i.e, align 8, !tbaa !95
  store i32 %i.g, ptr %i.f, align 8, !tbaa !95
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !94, !noalias !314
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.p = load ptr, ptr %i.i, align 8, !tbaa !94, !noalias !315
  store ptr %i.p, ptr %i.j, align 8, !tbaa !94
  store ptr %i.m, ptr %i.i, align 8, !tbaa !94
  %2 = load <2 x i32>, ptr %i.k, align 8, !tbaa !95, !noalias !314
  %i.q = load <2 x i32>, ptr %i.n, align 8, !tbaa !95, !noalias !315
  store <2 x i32> %i.q, ptr %i.k, align 8, !tbaa !95
  store <2 x i32> %2, ptr %i.n, align 8, !tbaa !95
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.v = load <2 x ptr>, ptr %i.l, align 8, !tbaa !70, !noalias !138
  %3 = load <2 x ptr>, ptr %i.o, align 8, !tbaa !70, !noalias !138
  store <2 x ptr> %3, ptr %i.l, align 8, !tbaa !70
  store <2 x ptr> %i.v, ptr %i.o, align 8, !tbaa !70
  %4 = load <2 x i32>, ptr %i.r, align 8, !tbaa !95, !noalias !316
  %i.w = load <2 x i32>, ptr %i.t, align 8, !tbaa !95, !noalias !317
  store <2 x i32> %i.w, ptr %i.r, align 8, !tbaa !95
  store <2 x i32> %4, ptr %i.t, align 8, !tbaa !95
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ab = load <2 x ptr>, ptr %i.s, align 8, !tbaa !70, !noalias !138
  %5 = load <2 x ptr>, ptr %i.u, align 8, !tbaa !70, !noalias !138
  store <2 x ptr> %5, ptr %i.s, align 8, !tbaa !70
  store <2 x ptr> %i.ab, ptr %i.u, align 8, !tbaa !70
  %6 = load <2 x i32>, ptr %i.x, align 8, !tbaa !95, !noalias !318
  %i.ac = load <2 x i32>, ptr %i.z, align 8, !tbaa !95, !noalias !319
  store <2 x i32> %i.ac, ptr %i.x, align 8, !tbaa !95
  store <2 x i32> %6, ptr %i.z, align 8, !tbaa !95
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ah = load <2 x ptr>, ptr %i.y, align 8, !tbaa !70, !noalias !138
  %7 = load <2 x ptr>, ptr %i.aa, align 8, !tbaa !70, !noalias !138
  store <2 x ptr> %7, ptr %i.y, align 8, !tbaa !70
  store <2 x ptr> %i.ah, ptr %i.aa, align 8, !tbaa !70
  %8 = load <2 x i32>, ptr %i.ad, align 8, !tbaa !95, !noalias !320
  %i.ai = load <2 x i32>, ptr %i.af, align 8, !tbaa !95, !noalias !321
  store <2 x i32> %i.ai, ptr %i.ad, align 8, !tbaa !95
  store <2 x i32> %8, ptr %i.af, align 8, !tbaa !95
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.an = load <2 x ptr>, ptr %i.ae, align 8, !tbaa !70, !noalias !138
  %i.ao = load <2 x ptr>, ptr %i.ag, align 8, !tbaa !70, !noalias !138
  store <2 x ptr> %i.ao, ptr %i.ae, align 8, !tbaa !70
  store <2 x ptr> %i.an, ptr %i.ag, align 8, !tbaa !70
  %i.ap = load ptr, ptr %i.ak, align 8, !tbaa !93, !noalias !322
  %i.aq = load ptr, ptr %i.am, align 8, !tbaa !93, !noalias !323
  store ptr %i.aq, ptr %i.ak, align 8, !tbaa !93
  %9 = load <2 x i32>, ptr %i.aj, align 8, !tbaa !95, !noalias !322
  %i.ar = load <2 x i32>, ptr %i.al, align 8, !tbaa !95, !noalias !323
  store <2 x i32> %i.ar, ptr %i.aj, align 8, !tbaa !95
  store <2 x i32> %9, ptr %i.al, align 8, !tbaa !95
  store ptr %i.ap, ptr %i.am, align 8, !tbaa !93
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %.0.copyload.i.i.i = load i128, ptr %i.as, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.as, ptr noundef nonnull align 8 dereferenceable(16) %i.at, i64 16, i1 false)
  store i128 %.0.copyload.i.i.i, ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 2 uses
  %.0.copyload.i.i.i23 = load i128, ptr %i.au, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.au, ptr noundef nonnull align 8 dereferenceable(16) %i.av, i64 16, i1 false)
  store i128 %.0.copyload.i.i.i23, ptr %i.av, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 2 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.ax, align 8, !tbaa !70
  %i.ay = load i64, ptr %i.aw, align 8, !tbaa !70
  store i64 %i.ay, ptr %i.ax, align 8, !tbaa !70
  store ptr %.sroa.0.0.copyload.i, ptr %i.aw, align 8, !tbaa !70
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 2 uses
  %.sroa.0.0.copyload.i24 = load ptr, ptr %i.ba, align 8, !tbaa !70
  %i.bb = load i64, ptr %i.az, align 8, !tbaa !70
  store i64 %i.bb, ptr %i.ba, align 8, !tbaa !70
  store ptr %.sroa.0.0.copyload.i24, ptr %i.az, align 8, !tbaa !70
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 2 uses
  %.sroa.0.0.copyload.i25 = load ptr, ptr %i.bd, align 8, !tbaa !70
  %i.be = load i64, ptr %i.bc, align 8, !tbaa !70
  store i64 %i.be, ptr %i.bd, align 8, !tbaa !70
  store ptr %.sroa.0.0.copyload.i25, ptr %i.bc, align 8, !tbaa !70
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 2 uses
  %.0.copyload.i.i = load i128, ptr %i.bf, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bf, ptr noundef nonnull align 8 dereferenceable(16) %i.bg, i64 16, i1 false)
  store i128 %.0.copyload.i.i, ptr %i.bg, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden { ptr, ptr } @_ZNK6google8protobuf19FileDescriptorProto11GetMetadataEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call { ptr, ptr } @_ZN6google8protobuf8internal17AssignDescriptorsEPFPKNS1_15DescriptorTableEvEPSt9once_flagRKNS0_8MetadataE(ptr noundef nonnull @_Z62descriptor_table_google_2fprotobuf_2fdescriptor_2eproto_getterv, ptr noundef nonnull @_ZL60descriptor_table_google_2fprotobuf_2fdescriptor_2eproto_once, ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZL58file_level_metadata_google_2fprotobuf_2fdescriptor_2eproto, i64 16))
  ret { ptr, ptr } %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef nonnull align 8 dereferenceable(72) ptr @_ZN6google8protobuf30DescriptorProto_ExtensionRange9_Internal7optionsEPKS1_(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !148
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN6google8protobuf30DescriptorProto_ExtensionRangeC2EPNS0_5ArenaEb(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(40) initializes((0, 40)) %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
_ZN6google8protobuf8internal7HasBitsILm1EEC2Ev.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.c = or i64 %i.b, 2
  %i.d = select i1 %2, i64 %i.c, i64 %i.b
  store i64 %i.d, ptr %i.a, align 8, !tbaa !54
  store ptr getelementptr inbounds nuw inrange(-16, 152) (i8, ptr @_ZTVN6google8protobuf30DescriptorProto_ExtensionRangeE, i64 16), ptr %0, align 8, !tbaa !56
  %.ptr = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.ptr, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6google8protobuf30DescriptorProto_ExtensionRangeC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(40) initializes((0, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
.noexc:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %i.a, align 8, !tbaa !54
  store ptr getelementptr inbounds nuw inrange(-16, 152) (i8, ptr @_ZTVN6google8protobuf30DescriptorProto_ExtensionRangeE, i64 16), ptr %0, align 8, !tbaa !56
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !84
  store i32 %i.d, ptr %i.b, align 8, !tbaa !84
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 0, ptr %i.e, align 4, !tbaa !69
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !54   ; 2 uses
  %i.h = trunc i64 %i.g to i1
  br i1 %i.h, label %.noexc9, label %bb.a

.noexc9:                                          ; preds = %.noexc
  %i.i = and i64 %i.g, -4
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  invoke void @_ZN6google8protobuf8internal16InternalMetadata11DoMergeFromINS0_15UnknownFieldSetEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %bb.a unwind label %bb.d

bb.a:                                             ; preds = %.noexc9, %.noexc
  %i.l = load i32, ptr %i.c, align 8, !tbaa !95
  %i.m = trunc i32 %i.l to i1
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24
  br i1 %i.m, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.o = invoke noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #24
          to label %bb.c unwind label %bb.d       ; 3 uses

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !148
  invoke void @_ZN6google8protobuf21ExtensionRangeOptionsC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(72) %i.o, ptr noundef nonnull align 8 dereferenceable(72) %i.p)
          to label %bb.f unwind label %bb.e

bb.d:                                             ; preds = %.noexc9, %bb.b
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.r = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef 72) #23
  br label %bb.g

bb.f:                                             ; preds = %bb.a, %bb.c
  %.sink = phi ptr [ %i.o, %bb.c ], [ null, %bb.a ]
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sink, ptr %i.s, align 8, !tbaa !148
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.v = load i64, ptr %i.u, align 8
  store i64 %i.v, ptr %i.t, align 8
  ret void

bb.g:                                             ; preds = %bb.e, %bb.d
  %.pn = phi { ptr, i32 } [ %i.r, %bb.e ], [ %i.q, %bb.d ]
  tail call void @_ZN6google8protobuf11MessageLiteD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #22
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6google8protobuf30DescriptorProto_ExtensionRangeD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !54   ; 5 uses
  %i.c = trunc i64 %i.b to i1
  %i.d = and i64 %i.b, -4
  %i.e = inttoptr i64 %i.d to ptr                 ; 2 uses
  br i1 %i.c, label %bb.b, label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit, !prof !62

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !64
  br label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit

_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit: ; preds = %bb.b, %bb.a
  %.0.i.i = phi ptr [ %i.f, %bb.b ], [ %i.e, %bb.a ]
  %.not = icmp eq ptr %.0.i.i, null
  br i1 %.not, label %bb.c, label %_ZN6google8protobuf8internal16InternalMetadata6DeleteINS0_15UnknownFieldSetEEEvv.exit

bb.c:                                             ; preds = %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit
  %.not.i = icmp eq ptr %0, @_ZN6google8protobuf49_DescriptorProto_ExtensionRange_default_instance_E
  br i1 %.not.i, label %_ZN6google8protobuf30DescriptorProto_ExtensionRange10SharedDtorEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !148  ; 3 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %_ZN6google8protobuf30DescriptorProto_ExtensionRange10SharedDtorEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN6google8protobuf21ExtensionRangeOptionsD2Ev(ptr noundef nonnull align 8 dead_on_return(68) dereferenceable(72) %i.h) #22, !inline_history !324
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef 72) #23, !inline_history !324
  %.pre = load i64, ptr %i.a, align 8, !tbaa !54
  br label %_ZN6google8protobuf30DescriptorProto_ExtensionRange10SharedDtorEv.exit

_ZN6google8protobuf30DescriptorProto_ExtensionRange10SharedDtorEv.exit: ; preds = %bb.e, %bb.d, %bb.c
  %i.j = phi i64 [ %.pre, %bb.e ], [ %i.b, %bb.d ], [ %i.b, %bb.c ] ; 2 uses
  %i.k = trunc i64 %i.j to i1
  br i1 %i.k, label %bb.f, label %_ZN6google8protobuf8internal16InternalMetadata6DeleteINS0_15UnknownFieldSetEEEvv.exit

bb.f:                                             ; preds = %_ZN6google8protobuf30DescriptorProto_ExtensionRange10SharedDtorEv.exit
  invoke void @_ZN6google8protobuf8internal16InternalMetadata21DeleteOutOfLineHelperINS0_15UnknownFieldSetEEEvv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %._ZN6google8protobuf8internal16InternalMetadata6DeleteINS0_15UnknownFieldSetEEEvv.exit_crit_edge unwind label %bb.j

._ZN6google8protobuf8internal16InternalMetadata6DeleteINS0_15UnknownFieldSetEEEvv.exit_crit_edge: ; preds = %bb.f
  %.pre1 = load i64, ptr %i.a, align 8, !tbaa !54
  br label %_ZN6google8protobuf8internal16InternalMetadata6DeleteINS0_15UnknownFieldSetEEEvv.exit

_ZN6google8protobuf8internal16InternalMetadata6DeleteINS0_15UnknownFieldSetEEEvv.exit: ; preds = %._ZN6google8protobuf8internal16InternalMetadata6DeleteINS0_15UnknownFieldSetEEEvv.exit_crit_edge, %_ZN6google8protobuf30DescriptorProto_ExtensionRange10SharedDtorEv.exit, %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit
  %i.l = phi i64 [ %.pre1, %._ZN6google8protobuf8internal16InternalMetadata6DeleteINS0_15UnknownFieldSetEEEvv.exit_crit_edge ], [ %i.j, %_ZN6google8protobuf30DescriptorProto_ExtensionRange10SharedDtorEv.exit ], [ %i.b, %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit ] ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN6google8protobuf11MessageLiteE, i64 16), ptr %0, align 8, !tbaa !56
  %i.m = and i64 %i.l, 2
  %.not.i.i = icmp eq i64 %i.m, 0
  br i1 %.not.i.i, label %_ZN6google8protobuf11MessageLiteD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZN6google8protobuf8internal16InternalMetadata6DeleteINS0_15UnknownFieldSetEEEvv.exit
  %i.n = trunc i64 %i.l to i1
  %i.o = and i64 %i.l, -4
  %i.p = inttoptr i64 %i.o to ptr                 ; 2 uses
  br i1 %i.n, label %bb.h, label %_ZNK6google8protobuf8internal16InternalMetadata5arenaEv.exit.i.i, !prof !62

bb.h:                                             ; preds = %bb.g
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !64
  br label %_ZNK6google8protobuf8internal16InternalMetadata5arenaEv.exit.i.i

_ZNK6google8protobuf8internal16InternalMetadata5arenaEv.exit.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i = phi ptr [ %i.q, %bb.h ], [ %i.p, %bb.g ] ; 3 uses
  %i.r = icmp eq ptr %.0.i.i.i, null
end_hunk_0
begin_hunk_1_@_ZN6google8protobuf19UninterpretedOption9MergeFromERKS1_:bb.a

bb.h:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !117
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = and i64 %i.ap, -2
  %i.ar = inttoptr i64 %i.aq to ptr
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.at = load i32, ptr %i.as, align 8, !tbaa !95
  %i.au = or i32 %i.at, 2
  store i32 %i.au, ptr %i.as, align 8, !tbaa !95
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !54 ; 2 uses
  %i.ay = trunc i64 %i.ax to i1
  %i.az = and i64 %i.ax, -4
  %i.ba = inttoptr i64 %i.az to ptr               ; 2 uses
  br i1 %i.ay, label %bb.i, label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit24, !prof !62

bb.i:                                             ; preds = %bb.h
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !64
  br label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit24

_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit24: ; preds = %bb.h, %bb.i
  %.0.i.i23 = phi ptr [ %i.bb, %bb.i ], [ %i.ba, %bb.h ]
  tail call void @_ZN6google8protobuf8internal14ArenaStringPtr3SetENS2_12EmptyDefaultERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(8) %i.av, ptr noundef nonnull align 8 dereferenceable(32) %i.ar, ptr noundef %.0.i.i23)
  br label %bb.j

bb.j:                                             ; preds = %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit24, %bb.g
  %i.bc = and i32 %i.u, 4
  %.not19 = icmp eq i32 %i.bc, 0
  br i1 %.not19, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !117
  %i.bf = ptrtoint ptr %i.be to i64
  %i.bg = and i64 %i.bf, -2
  %i.bh = inttoptr i64 %i.bg to ptr
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !95
  %i.bk = or i32 %i.bj, 4
  store i32 %i.bk, ptr %i.bi, align 8, !tbaa !95
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !54 ; 2 uses
  %i.bo = trunc i64 %i.bn to i1
  %i.bp = and i64 %i.bn, -4
  %i.bq = inttoptr i64 %i.bp to ptr               ; 2 uses
  br i1 %i.bo, label %bb.l, label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit26, !prof !62

bb.l:                                             ; preds = %bb.k
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !64
  br label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit26

_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit26: ; preds = %bb.k, %bb.l
  %.0.i.i25 = phi ptr [ %i.br, %bb.l ], [ %i.bq, %bb.k ]
  tail call void @_ZN6google8protobuf8internal14ArenaStringPtr3SetENS2_12EmptyDefaultERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(8) %i.bl, ptr noundef nonnull align 8 dereferenceable(32) %i.bh, ptr noundef %.0.i.i25)
  br label %bb.m

bb.m:                                             ; preds = %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit26, %bb.j
  %i.bs = and i32 %i.u, 8
  %.not20 = icmp eq i32 %i.bs, 0
  br i1 %.not20, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !227
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %i.bu, ptr %i.bv, align 8, !tbaa !227
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bw = and i32 %i.u, 16
  %.not21 = icmp eq i32 %i.bw, 0
  br i1 %.not21, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !228
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %i.by, ptr %i.bz, align 8, !tbaa !228
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.ca = and i32 %i.u, 32
  %.not22 = icmp eq i32 %i.ca, 0
  br i1 %.not22, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !229
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 88
  store double %i.cc, ptr %i.cd, align 8, !tbaa !229
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !95
  %i.cg = or i32 %i.cf, %i.u
  store i32 %i.cg, ptr %i.ce, align 8, !tbaa !95
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_ZN6google8protobuf16RepeatedPtrFieldINS0_28UninterpretedOption_NamePartEE9MergeFromERKS3_.exit
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !54 ; 2 uses
  %i.cj = trunc i64 %i.ci to i1
  br i1 %i.cj, label %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit, label %_ZN6google8protobuf8internal16InternalMetadata9MergeFromINS0_15UnknownFieldSetEEEvRKS2_.exit

_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit: ; preds = %bb.t
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cl = and i64 %i.ci, -4
  %i.cm = inttoptr i64 %i.cl to ptr
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  tail call void @_ZN6google8protobuf8internal16InternalMetadata11DoMergeFromINS0_15UnknownFieldSetEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ck, ptr noundef nonnull align 8 dereferenceable(24) %i.cn)
  br label %_ZN6google8protobuf8internal16InternalMetadata9MergeFromINS0_15UnknownFieldSetEEEvRKS2_.exit

_ZN6google8protobuf8internal16InternalMetadata9MergeFromINS0_15UnknownFieldSetEEEvRKS2_.exit: ; preds = %bb.t, %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6google8protobuf19UninterpretedOption8CopyFromERKS1_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(96) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp eq ptr %1, %0
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6google8protobuf19UninterpretedOption5ClearEv(ptr noundef nonnull align 8 dereferenceable(96) %0)
  tail call void @_ZN6google8protobuf19UninterpretedOption9MergeFromERKS1_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZNK6google8protobuf19UninterpretedOption13IsInitializedEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %0) unnamed_addr #16 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !65   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = icmp slt i32 %i.b, 1
  br i1 %i.e, label %_ZN6google8protobuf8internal17AllAreInitializedINS0_28UninterpretedOption_NamePartEEEbRKNS0_16RepeatedPtrFieldIT_EE.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = zext nneg i32 %i.b to i64
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %i.g = add nsw i64 %indvars.iv.i2, -1           ; 2 uses
  %i.h = trunc nuw i64 %i.g to i32
  %i.i = icmp slt i32 %i.h, 1
  br i1 %i.i, label %_ZN6google8protobuf8internal17AllAreInitializedINS0_28UninterpretedOption_NamePartEEEbRKNS0_16RepeatedPtrFieldIT_EE.exit, label %bb.c, !llvm.loop !24

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv.i2 = phi i64 [ %i.f, %.lr.ph ], [ %i.g, %bb.b ] ; 2 uses
  %i.j = getelementptr [8 x i8], ptr %i.d, i64 %indvars.iv.i2
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !70
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load i32, ptr %i.l, align 4, !tbaa !95
  %i.n = and i32 %i.m, 3
  %.not.i.i = icmp eq i32 %i.n, 3
  br i1 %.not.i.i, label %bb.b, label %._ZN6google8protobuf8internal17AllAreInitializedINS0_28UninterpretedOption_NamePartEEEbRKNS0_16RepeatedPtrFieldIT_EE.exit_crit_edge3, !llvm.loop !24

._ZN6google8protobuf8internal17AllAreInitializedINS0_28UninterpretedOption_NamePartEEEbRKNS0_16RepeatedPtrFieldIT_EE.exit_crit_edge3: ; preds = %bb.c
  br label %_ZN6google8protobuf8internal17AllAreInitializedINS0_28UninterpretedOption_NamePartEEEbRKNS0_16RepeatedPtrFieldIT_EE.exit, !llvm.loop !24

_ZN6google8protobuf8internal17AllAreInitializedINS0_28UninterpretedOption_NamePartEEEbRKNS0_16RepeatedPtrFieldIT_EE.exit: ; preds = %bb.b, %._ZN6google8protobuf8internal17AllAreInitializedINS0_28UninterpretedOption_NamePartEEEbRKNS0_16RepeatedPtrFieldIT_EE.exit_crit_edge3, %bb.a
  %.lcssa = phi i1 [ true, %bb.a ], [ false, %._ZN6google8protobuf8internal17AllAreInitializedINS0_28UninterpretedOption_NamePartEEEbRKNS0_16RepeatedPtrFieldIT_EE.exit_crit_edge3 ], [ true, %bb.b ]
  ret i1 %.lcssa
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN6google8protobuf19UninterpretedOption12InternalSwapEPS1_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(96) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !54
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !54
  store i64 %i.d, ptr %i.a, align 8, !tbaa !92
  store i64 %i.b, ptr %i.c, align 8, !tbaa !92
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.g = load i32, ptr %i.e, align 8, !tbaa !95
  %i.h = load i32, ptr %i.f, align 8, !tbaa !95
  store i32 %i.h, ptr %i.e, align 8, !tbaa !95
  store i32 %i.g, ptr %i.f, align 8, !tbaa !95
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !93, !noalias !601
  %i.n = load ptr, ptr %i.j, align 8, !tbaa !94, !noalias !601
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !93, !noalias !602
  %i.r = load ptr, ptr %i.i, align 8, !tbaa !94, !noalias !602
  store ptr %i.r, ptr %i.j, align 8, !tbaa !94
  store ptr %i.q, ptr %i.l, align 8, !tbaa !93
  store ptr %i.n, ptr %i.i, align 8, !tbaa !94
  %2 = load <2 x i32>, ptr %i.k, align 8, !tbaa !95, !noalias !601
  %i.s = load <2 x i32>, ptr %i.o, align 8, !tbaa !95, !noalias !602
  store <2 x i32> %i.s, ptr %i.k, align 8, !tbaa !95
  store <2 x i32> %2, ptr %i.o, align 8, !tbaa !95
  store ptr %i.m, ptr %i.p, align 8, !tbaa !93
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.u, align 8, !tbaa !70
  %i.v = load i64, ptr %i.t, align 8, !tbaa !70
  store i64 %i.v, ptr %i.u, align 8, !tbaa !70
  store ptr %.sroa.0.0.copyload.i, ptr %i.t, align 8, !tbaa !70
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %.sroa.0.0.copyload.i17 = load ptr, ptr %i.x, align 8, !tbaa !70
  %i.y = load i64, ptr %i.w, align 8, !tbaa !70
  store i64 %i.y, ptr %i.x, align 8, !tbaa !70
  store ptr %.sroa.0.0.copyload.i17, ptr %i.w, align 8, !tbaa !70
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %.sroa.0.0.copyload.i18 = load ptr, ptr %i.aa, align 8, !tbaa !70
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !70
  store i64 %i.ab, ptr %i.aa, align 8, !tbaa !70
  store ptr %.sroa.0.0.copyload.i18, ptr %i.z, align 8, !tbaa !70
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %.0.copyload.i.i = load i128, ptr %i.ac, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i64 16, i1 false)
  store i128 %.0.copyload.i.i, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %.0.copyload.i.i.i = load i64, ptr %i.ae, align 8
  %i.ag = load i64, ptr %i.af, align 8
  store i64 %i.ag, ptr %i.ae, align 8
  store i64 %.0.copyload.i.i.i, ptr %i.af, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden { ptr, ptr } @_ZNK6google8protobuf19UninterpretedOption11GetMetadataEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call { ptr, ptr } @_ZN6google8protobuf8internal17AssignDescriptorsEPFPKNS1_15DescriptorTableEvEPSt9once_flagRKNS0_8MetadataE(ptr noundef nonnull @_Z62descriptor_table_google_2fprotobuf_2fdescriptor_2eproto_getterv, ptr noundef nonnull @_ZL60descriptor_table_google_2fprotobuf_2fdescriptor_2eproto_once, ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZL58file_level_metadata_google_2fprotobuf_2fdescriptor_2eproto, i64 352))
  ret { ptr, ptr } %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN6google8protobuf23SourceCodeInfo_LocationC2EPNS0_5ArenaEb(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(112) initializes((0, 40), (48, 64), (72, 112)) %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.c = or i64 %i.b, 2
  %i.d = select i1 %2, i64 %i.c, i64 %i.b
  store i64 %i.d, ptr %i.a, align 8, !tbaa !54
  store ptr getelementptr inbounds nuw inrange(-16, 152) (i8, ptr @_ZTVN6google8protobuf23SourceCodeInfo_LocationE, i64 16), ptr %0, align 8, !tbaa !56
  %.ptr = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.ptr, i8 0, i64 16, i1 false)
  store ptr %1, ptr %i.e, align 8, !tbaa !114
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 0, ptr %i.f, align 8, !tbaa !115
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 0, ptr %i.g, align 4, !tbaa !116
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %1, ptr %i.h, align 8, !tbaa !114
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %1, ptr %i.i, align 8, !tbaa !60
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i8 0, i64 16, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr @_ZN6google8protobuf8internal26fixed_address_empty_stringB5cxx11E, ptr %i.k, align 8, !tbaa !117
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr @_ZN6google8protobuf8internal26fixed_address_empty_stringB5cxx11E, ptr %i.l, align 8, !tbaa !117
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6google8protobuf23SourceCodeInfo_LocationC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(112) initializes((0, 40)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(112) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store i64 0, ptr %i.a, align 8, !tbaa !54
  store ptr getelementptr inbounds nuw inrange(-16, 152) (i8, ptr @_ZTVN6google8protobuf23SourceCodeInfo_LocationE, i64 16), ptr %0, align 8, !tbaa !56
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !84
  store i32 %i.d, ptr %i.b, align 8, !tbaa !84
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.e, i8 0, i64 20, i1 false)
  %i.h = load i32, ptr %i.g, align 8, !tbaa !115  ; 2 uses
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %_ZN6google8protobuf13RepeatedFieldIiEC2ERKS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN6google8protobuf13RepeatedFieldIiE7ReserveEi(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i32 noundef %i.h)
          to label %.noexc20 unwind label %bb.h

.noexc20:                                         ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load i32, ptr %i.g, align 8, !tbaa !115
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !114
  %i.l = load i32, ptr %i.f, align 8, !tbaa !115
  %i.m = add nsw i32 %i.l, %i.j
  store i32 %i.m, ptr %i.f, align 8, !tbaa !115
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !114
  %i.p = load i32, ptr %i.g, align 8, !tbaa !115
  %i.q = sext i32 %i.p to i64
  %i.r = shl nsw i64 %i.q, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.k, ptr nonnull align 4 %i.o, i64 %i.r, i1 false)
  br label %_ZN6google8protobuf13RepeatedFieldIiEC2ERKS2_.exit

_ZN6google8protobuf13RepeatedFieldIiEC2ERKS2_.exit: ; preds = %.noexc20, %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i8 0, i64 16, i1 false)
  %i.u = load i32, ptr %i.t, align 8, !tbaa !115  ; 2 uses
  %.not.i21 = icmp eq i32 %i.u, 0
  br i1 %.not.i21, label %_ZN6google8protobuf13RepeatedFieldIiEC2ERKS2_.exit23, label %bb.c

bb.c:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldIiEC2ERKS2_.exit
  invoke void @_ZN6google8protobuf13RepeatedFieldIiE7ReserveEi(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i32 noundef %i.u)
          to label %.noexc22 unwind label %bb.i

.noexc22:                                         ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.w = load i32, ptr %i.t, align 8, !tbaa !115
  %i.x = load ptr, ptr %i.v, align 8, !tbaa !114
  %i.y = load i32, ptr %i.s, align 8, !tbaa !115
  %i.z = add nsw i32 %i.y, %i.w
  store i32 %i.z, ptr %i.s, align 8, !tbaa !115
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !114
  %i.ac = load i32, ptr %i.t, align 8, !tbaa !115
  %i.ad = sext i32 %i.ac to i64
  %i.ae = shl nsw i64 %i.ad, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.x, ptr nonnull align 4 %i.ab, i64 %i.ae, i1 false)
  br label %_ZN6google8protobuf13RepeatedFieldIiEC2ERKS2_.exit23

_ZN6google8protobuf13RepeatedFieldIiEC2ERKS2_.exit23: ; preds = %.noexc22, %_ZN6google8protobuf13RepeatedFieldIiEC2ERKS2_.exit
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, i8 0, i64 24, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !65 ; 4 uses
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %.noexc, label %.noexc.i

.noexc.i:                                         ; preds = %_ZN6google8protobuf13RepeatedFieldIiEC2ERKS2_.exit23
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !61
  %i.al = invoke noundef ptr @_ZN6google8protobuf8internal20RepeatedPtrFieldBase14InternalExtendEi(ptr noundef nonnull align 8 dereferenceable(24) %i.af, i32 noundef %i.ah)
          to label %.noexc24 unwind label %bb.j

.noexc24:                                         ; preds = %.noexc.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !61
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !67
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !65
  %i.as = sub nsw i32 %i.ap, %i.ar
  invoke void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase18MergeFromInnerLoopINS0_16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE11TypeHandlerEEEvPPvSE_ii(ptr noundef nonnull align 8 dereferenceable(24) %i.af, ptr noundef %i.al, ptr noundef nonnull %i.am, i32 noundef %i.ah, i32 noundef %i.as)
          to label %.noexc25 unwind label %bb.j

.noexc25:                                         ; preds = %.noexc24
  %i.at = load i32, ptr %i.aq, align 8, !tbaa !65
  %i.au = add nsw i32 %i.at, %i.ah                ; 3 uses
  store i32 %i.au, ptr %i.aq, align 8, !tbaa !65
  %i.av = load ptr, ptr %i.an, align 8, !tbaa !61 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !67
  %i.ax = icmp slt i32 %i.aw, %i.au
  br i1 %i.ax, label %bb.d, label %.noexc

bb.d:                                             ; preds = %.noexc25
  store i32 %i.au, ptr %i.av, align 8, !tbaa !67
  br label %.noexc

.noexc:                                           ; preds = %_ZN6google8protobuf13RepeatedFieldIiEC2ERKS2_.exit23, %.noexc25, %bb.d
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !54 ; 2 uses
  %i.ba = trunc i64 %i.az to i1
  br i1 %i.ba, label %.noexc17, label %bb.e

.noexc17:                                         ; preds = %.noexc
  %i.bb = and i64 %i.az, -4
  %i.bc = inttoptr i64 %i.bb to ptr
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  invoke void @_ZN6google8protobuf8internal16InternalMetadata11DoMergeFromINS0_15UnknownFieldSetEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.bd)
          to label %bb.e unwind label %bb.k

bb.e:                                             ; preds = %.noexc17, %.noexc
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  store ptr @_ZN6google8protobuf8internal26fixed_address_empty_stringB5cxx11E, ptr %i.be, align 8, !tbaa !117
  %i.bf = load i32, ptr %i.c, align 8, !tbaa !95  ; 2 uses
  %i.bg = trunc i32 %i.bf to i1
  br i1 %i.bg, label %bb.f, label %bb.l

bb.f:                                             ; preds = %bb.e
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !117
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = and i64 %i.bj, -2
  %i.bl = inttoptr i64 %i.bk to ptr
  %i.bm = load i64, ptr %i.a, align 8, !tbaa !54  ; 2 uses
  %i.bn = trunc i64 %i.bm to i1
end_hunk_1
begin_hunk_2_@_ZN6google8protobuf23SourceCodeInfo_Location9MergeFromERKS1_:bb.a
  br label %_ZN6google8protobuf8internal16InternalMetadata9MergeFromINS0_15UnknownFieldSetEEEvRKS2_.exit

_ZN6google8protobuf8internal16InternalMetadata9MergeFromINS0_15UnknownFieldSetEEEvRKS2_.exit: ; preds = %bb.l, %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6google8protobuf23SourceCodeInfo_Location8CopyFromERKS1_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(112) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %1, %0
  br i1 %i.a, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.b, align 8, !tbaa !115
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 0, ptr %i.c, align 8, !tbaa !115
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !65   ; 3 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.c, label %_ZN6google8protobuf16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5ClearEv.exit.i

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !61
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 5 uses
  %wide.trip.count.i.i.i = zext nneg i32 %i.e to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 3   ; 3 uses
  %i.j = icmp ult i32 %i.e, 4
  br i1 %i.j, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.c
  %unroll_iter = and i64 %wide.trip.count.i.i.i, 2147483644
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.new
  %indvars.iv.i.i.i = phi i64 [ 0, %.new ], [ %indvars.iv.next.i.i.i.3, %bb.d ] ; 5 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.d ]
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.i.i.i
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !70   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 0, ptr %i.m, align 8, !tbaa !120
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !121
  store i8 0, ptr %i.n, align 1, !tbaa !84
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !70   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 0, ptr %i.r, align 8, !tbaa !120
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !121
  store i8 0, ptr %i.s, align 1, !tbaa !84
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !70   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i64 0, ptr %i.w, align 8, !tbaa !120
  %i.x = load ptr, ptr %i.v, align 8, !tbaa !121
  store i8 0, ptr %i.x, align 1, !tbaa !84
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !70  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store i64 0, ptr %i.ab, align 8, !tbaa !120
  %i.ac = load ptr, ptr %i.aa, align 8, !tbaa !121
  store i8 0, ptr %i.ac, align 1, !tbaa !84
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.unr-lcssa, label %bb.d, !llvm.loop !3

.unr-lcssa:                                       ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %bb.c
  %indvars.iv.i.i.i.epil.init = phi i64 [ 0, %bb.c ], [ %indvars.iv.next.i.i.i.3, %.unr-lcssa ]
  %lcmp.mod6 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod6)
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.epil.preheader
  %indvars.iv.i.i.i.epil = phi i64 [ %indvars.iv.next.i.i.i.epil, %bb.e ], [ %indvars.iv.i.i.i.epil.init, %.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %bb.e ], [ 0, %.epil.preheader ]
  %indvars.iv.next.i.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.i.epil, 1
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.i.i.i.epil
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !70 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store i64 0, ptr %i.af, align 8, !tbaa !120
  %i.ag = load ptr, ptr %i.ae, align 8, !tbaa !121
  store i8 0, ptr %i.ag, align 1, !tbaa !84
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %bb.e, !llvm.loop !608

.epilog-lcssa:                                    ; preds = %bb.e, %.unr-lcssa
  store i32 0, ptr %i.d, align 8, !tbaa !65
  br label %_ZN6google8protobuf16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5ClearEv.exit.i

_ZN6google8protobuf16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5ClearEv.exit.i: ; preds = %.epilog-lcssa, %bb.b
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !95 ; 3 uses
  %i.aj = and i32 %i.ai, 3
  %.not.i = icmp eq i32 %i.aj, 0
  br i1 %.not.i, label %bb.j, label %bb.f

bb.f:                                             ; preds = %_ZN6google8protobuf16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5ClearEv.exit.i
  %i.ak = and i32 %i.ai, 1
  %.not3.i = icmp eq i32 %i.ak, 0
  br i1 %.not3.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !117
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = and i64 %i.an, -2
  %i.ap = inttoptr i64 %i.ao to ptr               ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store i64 0, ptr %i.aq, align 8, !tbaa !120
  %i.ar = load ptr, ptr %i.ap, align 8, !tbaa !121
  store i8 0, ptr %i.ar, align 1, !tbaa !84
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.as = and i32 %i.ai, 2
  %.not4.i = icmp eq i32 %i.as, 0
  br i1 %.not4.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !117
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = and i64 %i.av, -2
  %i.ax = inttoptr i64 %i.aw to ptr               ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store i64 0, ptr %i.ay, align 8, !tbaa !120
  %i.az = load ptr, ptr %i.ax, align 8, !tbaa !121
  store i8 0, ptr %i.az, align 1, !tbaa !84
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %_ZN6google8protobuf16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5ClearEv.exit.i
  store i32 0, ptr %i.ah, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !54
  %i.bc = trunc i64 %i.bb to i1
  br i1 %i.bc, label %bb.k, label %_ZN6google8protobuf23SourceCodeInfo_Location5ClearEv.exit

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN6google8protobuf8internal16InternalMetadata7DoClearINS0_15UnknownFieldSetEEEvv(ptr noundef nonnull align 8 dereferenceable(8) %i.ba)
  br label %_ZN6google8protobuf23SourceCodeInfo_Location5ClearEv.exit

_ZN6google8protobuf23SourceCodeInfo_Location5ClearEv.exit: ; preds = %bb.j, %bb.k
  tail call void @_ZN6google8protobuf23SourceCodeInfo_Location9MergeFromERKS1_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(112) %1)
  br label %bb.l

bb.l:                                             ; preds = %bb.a, %_ZN6google8protobuf23SourceCodeInfo_Location5ClearEv.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @_ZNK6google8protobuf23SourceCodeInfo_Location13IsInitializedEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN6google8protobuf23SourceCodeInfo_Location12InternalSwapEPS1_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(112) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !54
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !54
  store i64 %i.d, ptr %i.a, align 8, !tbaa !92
  store i64 %i.b, ptr %i.c, align 8, !tbaa !92
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.g = load i32, ptr %i.e, align 8, !tbaa !95
  %i.h = load i32, ptr %i.f, align 8, !tbaa !95
  store i32 %i.h, ptr %i.e, align 8, !tbaa !95
  store i32 %i.g, ptr %i.f, align 8, !tbaa !95
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.0.copyload.i.i.i = load i128, ptr %i.i, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.j, i64 16, i1 false)
  store i128 %.0.copyload.i.i.i, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %.0.copyload.i.i.i15 = load i128, ptr %i.k, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef nonnull align 8 dereferenceable(16) %i.l, i64 16, i1 false)
  store i128 %.0.copyload.i.i.i15, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !93, !noalias !613
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !94, !noalias !613
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !93, !noalias !614
  %i.v = load ptr, ptr %i.m, align 8, !tbaa !94, !noalias !614
  store ptr %i.v, ptr %i.n, align 8, !tbaa !94
  store ptr %i.u, ptr %i.p, align 8, !tbaa !93
  store ptr %i.r, ptr %i.m, align 8, !tbaa !94
  %2 = load <2 x i32>, ptr %i.o, align 8, !tbaa !95, !noalias !613
  %i.w = load <2 x i32>, ptr %i.s, align 8, !tbaa !95, !noalias !614
  store <2 x i32> %i.w, ptr %i.o, align 8, !tbaa !95
  store <2 x i32> %2, ptr %i.s, align 8, !tbaa !95
  store ptr %i.q, ptr %i.t, align 8, !tbaa !93
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.y, align 8, !tbaa !70
  %i.z = load i64, ptr %i.x, align 8, !tbaa !70
  store i64 %i.z, ptr %i.y, align 8, !tbaa !70
  store ptr %.sroa.0.0.copyload.i, ptr %i.x, align 8, !tbaa !70
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %.sroa.0.0.copyload.i16 = load ptr, ptr %i.ab, align 8, !tbaa !70
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !70
  store i64 %i.ac, ptr %i.ab, align 8, !tbaa !70
  store ptr %.sroa.0.0.copyload.i16, ptr %i.aa, align 8, !tbaa !70
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden { ptr, ptr } @_ZNK6google8protobuf23SourceCodeInfo_Location11GetMetadataEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call { ptr, ptr } @_ZN6google8protobuf8internal17AssignDescriptorsEPFPKNS1_15DescriptorTableEvEPSt9once_flagRKNS0_8MetadataE(ptr noundef nonnull @_Z62descriptor_table_google_2fprotobuf_2fdescriptor_2eproto_getterv, ptr noundef nonnull @_ZL60descriptor_table_google_2fprotobuf_2fdescriptor_2eproto_once, ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZL58file_level_metadata_google_2fprotobuf_2fdescriptor_2eproto, i64 368))
  ret { ptr, ptr } %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN6google8protobuf14SourceCodeInfoC2EPNS0_5ArenaEb(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(48) initializes((0, 44)) %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.c = or i64 %i.b, 2
  %i.d = select i1 %2, i64 %i.c, i64 %i.b
  store i64 %i.d, ptr %i.a, align 8, !tbaa !54
  store ptr getelementptr inbounds nuw inrange(-16, 152) (i8, ptr @_ZTVN6google8protobuf14SourceCodeInfoE, i64 16), ptr %0, align 8, !tbaa !56
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.e, align 8, !tbaa !60
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.f, i8 0, i64 20, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6google8protobuf16RepeatedPtrFieldINS0_23SourceCodeInfo_LocationEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !61
  %.not.i = icmp ne ptr %i.b, null
  %i.c = load ptr, ptr %0, align 8
  %i.d = icmp eq ptr %i.c, null
  %i.e = select i1 %.not.i, i1 %i.d, i1 false
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase13DestroyProtosEv(ptr noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void

bb.d:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #21
  unreachable
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6google8protobuf14SourceCodeInfoC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(48) initializes((0, 40)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %i.a, align 8, !tbaa !54
  store ptr getelementptr inbounds nuw inrange(-16, 152) (i8, ptr @_ZTVN6google8protobuf14SourceCodeInfoE, i64 16), ptr %0, align 8, !tbaa !56
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load i32, ptr %i.c, align 8, !tbaa !65   ; 4 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %.noexc, label %.noexc.i

.noexc.i:                                         ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !61
  %i.h = invoke noundef ptr @_ZN6google8protobuf8internal20RepeatedPtrFieldBase14InternalExtendEi(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i32 noundef %i.d)
          to label %.noexc9 unwind label %bb.c

.noexc9:                                          ; preds = %.noexc.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !61
  %i.l = load i32, ptr %i.k, align 8, !tbaa !67
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !65
  %i.o = sub nsw i32 %i.l, %i.n
  invoke void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase18MergeFromInnerLoopINS0_16RepeatedPtrFieldINS0_23SourceCodeInfo_LocationEE11TypeHandlerEEEvPPvS9_ii(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef %i.h, ptr noundef nonnull %i.i, i32 noundef %i.d, i32 noundef %i.o)
          to label %.noexc10 unwind label %bb.c

.noexc10:                                         ; preds = %.noexc9
  %i.p = load i32, ptr %i.m, align 8, !tbaa !65
  %i.q = add nsw i32 %i.p, %i.d                   ; 3 uses
  store i32 %i.q, ptr %i.m, align 8, !tbaa !65
  %i.r = load ptr, ptr %i.j, align 8, !tbaa !61   ; 2 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !67
  %i.t = icmp slt i32 %i.s, %i.q
  br i1 %i.t, label %bb.b, label %.noexc

bb.b:                                             ; preds = %.noexc10
  store i32 %i.q, ptr %i.r, align 8, !tbaa !67
  br label %.noexc

.noexc:                                           ; preds = %bb.a, %.noexc10, %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 0, ptr %i.u, align 8, !tbaa !69
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !54   ; 2 uses
  %i.x = trunc i64 %i.w to i1
  br i1 %i.x, label %.noexc6, label %_ZN6google8protobuf8internal16InternalMetadata9MergeFromINS0_15UnknownFieldSetEEEvRKS2_.exit

.noexc6:                                          ; preds = %.noexc
  %i.y = and i64 %i.w, -4
  %i.z = inttoptr i64 %i.y to ptr
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  invoke void @_ZN6google8protobuf8internal16InternalMetadata11DoMergeFromINS0_15UnknownFieldSetEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %_ZN6google8protobuf8internal16InternalMetadata9MergeFromINS0_15UnknownFieldSetEEEvRKS2_.exit unwind label %bb.d

_ZN6google8protobuf8internal16InternalMetadata9MergeFromINS0_15UnknownFieldSetEEEvRKS2_.exit: ; preds = %.noexc, %.noexc6
  ret void

bb.c:                                             ; preds = %.noexc9, %.noexc.i
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.d:                                             ; preds = %.noexc6
  %i.ac = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6google8protobuf16RepeatedPtrFieldINS0_23SourceCodeInfo_LocationEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.b) #22
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.pn = phi { ptr, i32 } [ %i.ac, %bb.d ], [ %i.ab, %bb.c ]
  tail call void @_ZN6google8protobuf11MessageLiteD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #22
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6google8protobuf14SourceCodeInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(44) dereferenceable(48) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !54   ; 2 uses
  %i.c = trunc i64 %i.b to i1
  br i1 %i.c, label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit, label %_ZN6google8protobuf8internal16InternalMetadata6DeleteINS0_15UnknownFieldSetEEEvv.exit, !prof !62

_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit: ; preds = %bb.a
  %i.d = and i64 %i.b, -4
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !64
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.b, label %_ZN6google8protobuf8internal16InternalMetadata6DeleteINS0_15UnknownFieldSetEEEvv.exit

bb.b:                                             ; preds = %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit
  invoke void @_ZN6google8protobuf8internal16InternalMetadata21DeleteOutOfLineHelperINS0_15UnknownFieldSetEEEvv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZN6google8protobuf8internal16InternalMetadata6DeleteINS0_15UnknownFieldSetEEEvv.exit unwind label %bb.h

_ZN6google8protobuf8internal16InternalMetadata6DeleteINS0_15UnknownFieldSetEEEvv.exit: ; preds = %bb.a, %bb.b, %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !61
  %.not.i.i = icmp ne ptr %i.i, null
  %i.j = load ptr, ptr %i.g, align 8
  %i.k = icmp eq ptr %i.j, null
  %i.l = select i1 %.not.i.i, i1 %i.k, i1 false
  br i1 %i.l, label %bb.c, label %_ZN6google8protobuf16RepeatedPtrFieldINS0_23SourceCodeInfo_LocationEED2Ev.exit

bb.c:                                             ; preds = %_ZN6google8protobuf8internal16InternalMetadata6DeleteINS0_15UnknownFieldSetEEEvv.exit
  invoke void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase13DestroyProtosEv(ptr noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_ZN6google8protobuf16RepeatedPtrFieldINS0_23SourceCodeInfo_LocationEED2Ev.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  tail call void @__clang_call_terminate(ptr %i.n) #21
  unreachable

_ZN6google8protobuf16RepeatedPtrFieldINS0_23SourceCodeInfo_LocationEED2Ev.exit: ; preds = %_ZN6google8protobuf8internal16InternalMetadata6DeleteINS0_15UnknownFieldSetEEEvv.exit, %bb.c
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN6google8protobuf11MessageLiteE, i64 16), ptr %0, align 8, !tbaa !56
  %i.o = load i64, ptr %i.a, align 8, !tbaa !54   ; 3 uses
  %i.p = and i64 %i.o, 2
  %.not.i.i1 = icmp eq i64 %i.p, 0
  br i1 %.not.i.i1, label %_ZN6google8protobuf11MessageLiteD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN6google8protobuf16RepeatedPtrFieldINS0_23SourceCodeInfo_LocationEED2Ev.exit
  %i.q = trunc i64 %i.o to i1
  %i.r = and i64 %i.o, -4
  %i.s = inttoptr i64 %i.r to ptr                 ; 2 uses
  br i1 %i.q, label %bb.f, label %_ZNK6google8protobuf8internal16InternalMetadata5arenaEv.exit.i.i, !prof !62

bb.f:                                             ; preds = %bb.e
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !64
  br label %_ZNK6google8protobuf8internal16InternalMetadata5arenaEv.exit.i.i

end_hunk_2
