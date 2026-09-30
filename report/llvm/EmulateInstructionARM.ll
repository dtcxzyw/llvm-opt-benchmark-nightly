Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/EmulateInstructionARM?download=true
inline.NumInlined: 2834
inline.NumDeleted: 409
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN12lldb_private21EmulateInstructionARM15EmulateSUBSPImmEjNS0_11ARMEncodingE:bb.a
  %i.bq = call noundef zeroext i1 @_ZN12lldb_private18EmulateInstruction21WriteRegisterUnsignedERKNS0_7ContextEN4lldb12RegisterKindEjm(ptr noundef nonnull align 8 dereferenceable(209) %0, ptr noundef nonnull align 8 dereferenceable(248) %3, i32 noundef 2, i32 noundef 1, i64 noundef %i.bp) #20 ; 2 uses
  %brmerge.not.i = and i1 %.036.shrunk, %i.bq
  br i1 %brmerge.not.i, label %bb.q, label %_ZN12lldb_private21EmulateInstructionARM10WriteFlagsERNS_18EmulateInstruction7ContextEjjj.exit.i

bb.q:                                             ; preds = %.split
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !61 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 196
  %i.bu = and i32 %i.bb, -2147483648
  %i.bv = and i32 %i.bs, 268435455
  %i.bw = icmp eq i32 %.035, %i.d
  %i.bx = select i1 %i.bw, i32 1073741824, i32 0
  %i.by = or disjoint i32 %i.bx, %i.bu
  %i.bz = shl i32 %.sroa.4.0.extract.trunc, 29
  %i.ca = shl nuw nsw i32 %.sroa.5.0.extract.trunc, 28
  %i.cb = or disjoint i32 %i.by, %i.ca
  %i.cc = or disjoint i32 %i.cb, %i.bz
  %i.cd = or disjoint i32 %i.cc, %i.bv            ; 3 uses
  store i32 %i.cd, ptr %i.bt, align 4, !tbaa !12
  %.not12.i.i = icmp eq i32 %i.cd, %i.bs
  br i1 %.not12.i.i, label %.thread49, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ce = zext i32 %i.cd to i64
  %i.cf = call noundef zeroext i1 @_ZN12lldb_private18EmulateInstruction21WriteRegisterUnsignedERKNS0_7ContextEN4lldb12RegisterKindEjm(ptr noundef nonnull align 8 dereferenceable(209) %0, ptr noundef nonnull align 8 dereferenceable(248) %3, i32 noundef 2, i32 noundef 4, i64 noundef %i.ce) #20
  br i1 %i.cf, label %.thread49, label %.thread47

.thread49:                                        ; preds = %bb.q, %bb.r, %_ZN12lldb_private21EmulateInstructionARM10WriteFlagsERNS_18EmulateInstruction7ContextEjjj.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %bb.t

_ZN12lldb_private21EmulateInstructionARM10WriteFlagsERNS_18EmulateInstruction7ContextEjjj.exit.i: ; preds = %.split
  br i1 %i.bq, label %.thread49, label %.thread47

.thread47:                                        ; preds = %_ZN12lldb_private21EmulateInstructionARM10WriteFlagsERNS_18EmulateInstruction7ContextEjjj.exit.i, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %.thread

bb.s:                                             ; preds = %bb.p
  store i32 2, ptr %3, align 8, !tbaa !49
  store i32 13, ptr %i.bk, align 4, !tbaa !50
  %i.cg = and i32 %.sroa.4.0.extract.trunc, 1
  %i.ch = call noundef zeroext i1 @_ZN12lldb_private21EmulateInstructionARM25WriteCoreRegOptionalFlagsERNS_18EmulateInstruction7ContextEjjbjj(ptr noundef nonnull align 8 dereferenceable(209) %0, ptr noundef nonnull align 8 dereferenceable(248) %3, i32 noundef %i.bb, i32 noundef %.037, i1 noundef zeroext %.036.shrunk, i32 noundef %i.cg, i32 noundef %.sroa.5.0.extract.trunc)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br i1 %i.ch, label %bb.t, label %.thread

bb.t:                                             ; preds = %.thread49, %bb.s, %bb.a
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.l, %bb.o, %bb.k, %bb.m, %bb.b, %.thread47, %bb.s, %bb.t
  %.3 = phi i1 [ true, %bb.t ], [ false, %bb.s ], [ false, %.thread47 ], [ false, %bb.c ], [ false, %bb.l ], [ %i.az, %bb.o ], [ %i.ae, %bb.k ], [ false, %bb.m ], [ false, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret i1 %.3
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN12lldb_private21EmulateInstructionARM13EmulateCMPImmEjNS0_11ARMEncodingE(ptr noundef nonnull align 8 dereferenceable(209) %0, i32 noundef %1, i32 noundef %2) #0 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 6 uses
  %3 = alloca %"struct.lldb_private::EmulateInstruction::Context", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i8 0, ptr %i.a, align 1, !tbaa !51
  switch i32 %2, label %bb.s [
    i32 5, label %bb.b
    i32 6, label %bb.c
    i32 0, label %bb.i
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i32 %1, 8
  %i.c = and i32 %i.b, 7
  %i.d = and i32 %1, 255
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.e = lshr i32 %1, 16
  %i.f = and i32 %i.e, 15                         ; 2 uses
  %i.g = and i32 %1, 255                          ; 5 uses
  %i.h = lshr i32 %1, 15
  %i.i = and i32 %i.h, 2048
  %i.j = lshr i32 %1, 4
  %i.k = and i32 %i.j, 1792
  %i.l = or disjoint i32 %i.i, %i.k               ; 2 uses
  %i.m = icmp samesign ult i32 %i.l, 1024
  br i1 %i.m, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.n = lshr i32 %1, 12
  %i.o = and i32 %i.n, 3
  switch i32 %i.o, label %default.unreachable [
    i32 0, label %_ZN12lldb_privateL14ThumbExpandImmEj.exit
    i32 1, label %bb.e
    i32 2, label %bb.f
    i32 3, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d
  %i.p = mul nuw nsw i32 %i.g, 65537
  br label %_ZN12lldb_privateL14ThumbExpandImmEj.exit

bb.f:                                             ; preds = %bb.d
  %i.q = mul nuw i32 %i.g, 16777472
  br label %_ZN12lldb_privateL14ThumbExpandImmEj.exit

bb.g:                                             ; preds = %bb.d
  %i.r = mul nuw i32 %i.g, 16843009
  br label %_ZN12lldb_privateL14ThumbExpandImmEj.exit

bb.h:                                             ; preds = %bb.c
  %i.s = or disjoint i32 %i.l, %i.g
  %i.t = and i32 %1, 127
  %i.u = or disjoint i32 %i.t, 128                ; 2 uses
  %i.v = lshr i32 %i.s, 7
  %i.w = tail call noundef i32 @llvm.fshr.i32(i32 %i.u, i32 %i.u, i32 %i.v)
  br label %_ZN12lldb_privateL14ThumbExpandImmEj.exit

default.unreachable:                              ; preds = %bb.d
  unreachable

_ZN12lldb_privateL14ThumbExpandImmEj.exit:        ; preds = %bb.d, %bb.e, %bb.f, %bb.g, %bb.h
  %.1.i.i = phi i32 [ %i.w, %bb.h ], [ %i.p, %bb.e ], [ %i.r, %bb.g ], [ %i.q, %bb.f ], [ %i.g, %bb.d ]
  %i.x = icmp eq i32 %i.f, 15
  br i1 %i.x, label %bb.s, label %bb.j

bb.i:                                             ; preds = %bb.a
  %i.y = lshr i32 %1, 16
  %i.z = and i32 %i.y, 15
  %i.aa = and i32 %1, 255                         ; 2 uses
  %i.ab = lshr i32 %1, 7
  %i.ac = and i32 %i.ab, 30
  %i.ad = tail call noundef i32 @llvm.fshr.i32(i32 %i.aa, i32 %i.aa, i32 %i.ac)
  br label %bb.j

bb.j:                                             ; preds = %_ZN12lldb_privateL14ThumbExpandImmEj.exit, %bb.i, %bb.b
  %.013 = phi i32 [ %i.d, %bb.b ], [ %.1.i.i, %_ZN12lldb_privateL14ThumbExpandImmEj.exit ], [ %i.ad, %bb.i ] ; 4 uses
  %.012 = phi i32 [ %i.c, %bb.b ], [ %i.f, %_ZN12lldb_privateL14ThumbExpandImmEj.exit ], [ %i.z, %bb.i ] ; 2 uses
  switch i32 %.012, label %bb.l [
    i32 13, label %.thread.i
    i32 14, label %bb.k
    i32 15, label %bb.m
  ]

bb.k:                                             ; preds = %bb.j
  br label %.thread.i

bb.l:                                             ; preds = %bb.j
  br label %.thread.i

.thread.i:                                        ; preds = %bb.l, %bb.k, %bb.j
  %.013.ph.i = phi i32 [ 1, %bb.l ], [ 2, %bb.k ], [ 2, %bb.j ]
  %.012.ph.i = phi i32 [ %.012, %bb.l ], [ 3, %bb.k ], [ 1, %bb.j ]
  %i.ae = call noundef i64 @_ZN12lldb_private18EmulateInstruction20ReadRegisterUnsignedEN4lldb12RegisterKindEjmPb(ptr noundef nonnull align 8 dereferenceable(209) %0, i32 noundef %.013.ph.i, i32 noundef %.012.ph.i, i64 noundef 0, ptr noundef nonnull %i.a) #20
  %i.af = trunc i64 %i.ae to i32
  br label %_ZN12lldb_private21EmulateInstructionARM11ReadCoreRegEjPb.exit

bb.m:                                             ; preds = %bb.j
  %i.ag = call noundef i64 @_ZN12lldb_private18EmulateInstruction20ReadRegisterUnsignedEN4lldb12RegisterKindEjmPb(ptr noundef nonnull align 8 dereferenceable(209) %0, i32 noundef 2, i32 noundef 0, i64 noundef 0, ptr noundef nonnull %i.a) #20
  %i.ah = trunc i64 %i.ag to i32                  ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 188
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !45
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.al = add i32 %i.ah, 8
  br label %_ZN12lldb_private21EmulateInstructionARM11ReadCoreRegEjPb.exit

bb.o:                                             ; preds = %bb.m
  %i.am = add i32 %i.ah, 4
  br label %_ZN12lldb_private21EmulateInstructionARM11ReadCoreRegEjPb.exit

_ZN12lldb_private21EmulateInstructionARM11ReadCoreRegEjPb.exit: ; preds = %.thread.i, %bb.n, %bb.o
  %.014.i = phi i32 [ %i.af, %.thread.i ], [ %i.al, %bb.n ], [ %i.am, %bb.o ] ; 4 uses
  %i.an = load i8, ptr %i.a, align 1, !tbaa !51, !range !52, !noundef !53
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %bb.p, label %bb.s

bb.p:                                             ; preds = %_ZN12lldb_private21EmulateInstructionARM11ReadCoreRegEjPb.exit
  %i.ap = xor i32 %.013, -1
  %i.aq = sub i32 %.014.i, %.013                  ; 2 uses
  %i.ar = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %.014.i, i32 %i.ap) ; 2 uses
  %i.as = extractvalue { i32, i1 } %i.ar, 1
  %i.at = extractvalue { i32, i1 } %i.ar, 0
  %spec.select.i = zext i1 %i.as to i64
  %.not22.i.not.not = icmp slt i32 %.014.i, %.013
  %i.au = sext i32 %i.aq to i64
  %i.av = sext i32 %i.at to i64
  %i.aw = add nsw i64 %i.av, 1
  %i.ax = add nsw i64 %i.aw, %spec.select.i
  %.not23.i.not = icmp eq i64 %i.ax, %i.au
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 2, ptr %3, align 8, !tbaa !49
  store i32 13, ptr %i.ay, align 4, !tbaa !50
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !61 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 196
  %i.bc = and i32 %i.aq, -2147483648
  %i.bd = and i32 %i.ba, 268435455
  %i.be = icmp eq i32 %.014.i, %.013
  %i.bf = select i1 %.not22.i.not.not, i32 0, i32 536870912
  %i.bg = select i1 %.not23.i.not, i32 0, i32 268435456
  %i.bh = select i1 %i.be, i32 1610612736, i32 %i.bf
  %i.bi = or disjoint i32 %i.bh, %i.bc
  %i.bj = or disjoint i32 %i.bi, %i.bg
  %i.bk = or disjoint i32 %i.bj, %i.bd            ; 3 uses
  store i32 %i.bk, ptr %i.bb, align 4, !tbaa !12
  %.not12.i = icmp eq i32 %i.bk, %i.ba
  br i1 %.not12.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bl = zext i32 %i.bk to i64
  %i.bm = call noundef zeroext i1 @_ZN12lldb_private18EmulateInstruction21WriteRegisterUnsignedERKNS0_7ContextEN4lldb12RegisterKindEjm(ptr noundef nonnull align 8 dereferenceable(209) %0, ptr noundef nonnull align 8 dereferenceable(248) %3, i32 noundef 2, i32 noundef 4, i64 noundef %i.bl) #20
  br i1 %i.bm, label %bb.r, label %_ZN12lldb_private21EmulateInstructionARM10WriteFlagsERNS_18EmulateInstruction7ContextEjjj.exit

bb.r:                                             ; preds = %bb.q, %bb.p
  br label %_ZN12lldb_private21EmulateInstructionARM10WriteFlagsERNS_18EmulateInstruction7ContextEjjj.exit

_ZN12lldb_private21EmulateInstructionARM10WriteFlagsERNS_18EmulateInstruction7ContextEjjj.exit: ; preds = %bb.q, %bb.r
  %.0.i = phi i1 [ true, %bb.r ], [ false, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %bb.s

bb.s:                                             ; preds = %_ZN12lldb_private21EmulateInstructionARM10WriteFlagsERNS_18EmulateInstruction7ContextEjjj.exit, %_ZN12lldb_private21EmulateInstructionARM11ReadCoreRegEjPb.exit, %bb.a, %_ZN12lldb_privateL14ThumbExpandImmEj.exit
  %.1 = phi i1 [ false, %_ZN12lldb_privateL14ThumbExpandImmEj.exit ], [ false, %bb.a ], [ %.0.i, %_ZN12lldb_private21EmulateInstructionARM10WriteFlagsERNS_18EmulateInstruction7ContextEjjj.exit ], [ false, %_ZN12lldb_private21EmulateInstructionARM11ReadCoreRegEjPb.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN12lldb_private21EmulateInstructionARM14EmulateSTRRtSPEjNS0_11ARMEncodingE(ptr noundef nonnull align 8 dereferenceable(209) %0, i32 noundef %1, i32 noundef %2) #0 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 9 uses
  %3 = alloca %"struct.lldb_private::EmulateInstruction::Context", align 8 ; 11 uses
  %4 = alloca %"class.std::optional", align 8     ; 4 uses
  %5 = alloca %"class.std::optional", align 8     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i8 0, ptr %i.a, align 1, !tbaa !51
  %i.b = tail call noundef zeroext i1 @_ZN12lldb_private21EmulateInstructionARM15ConditionPassedEj(ptr noundef nonnull align 8 dereferenceable(209) %0, i32 noundef %1)
  br i1 %i.b, label %bb.b, label %.critedge58

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = tail call noundef i32 @_ZNK12lldb_private8ArchSpec18GetAddressByteSizeEv(ptr noundef nonnull align 8 dereferenceable(96) %i.c) #20 ; 2 uses
  %i.e = call noundef i64 @_ZN12lldb_private18EmulateInstruction20ReadRegisterUnsignedEN4lldb12RegisterKindEjmPb(ptr noundef nonnull align 8 dereferenceable(209) %0, i32 noundef 2, i32 noundef 1, i64 noundef 0, ptr noundef nonnull %i.a) #20
  %i.f = and i64 %i.e, 4294967295                 ; 3 uses
  %i.g = load i8, ptr %i.a, align 1, !tbaa !51, !range !52, !noundef !53
  %i.h = trunc nuw i8 %i.g to i1
  %cond1 = icmp eq i32 %2, 0
  %or.cond59 = and i1 %cond1, %i.h
  br i1 %or.cond59, label %bb.c, label %.critedge58

bb.c:                                             ; preds = %bb.b
  %i.i = lshr i32 %1, 12
  %i.j = and i32 %i.i, 15                         ; 4 uses
  %i.k = and i32 %1, 4095
  %i.l = and i32 %1, 983040
  %.not = icmp eq i32 %i.l, 851968
  br i1 %.not, label %bb.d, label %.critedge58

bb.d:                                             ; preds = %bb.c
  %i.m = zext i32 %1 to i64                       ; 3 uses
  %i.n = and i64 %i.m, 18874368
  %i.o = icmp ne i64 %i.n, 16777216               ; 2 uses
  %i.p = icmp eq i32 %i.j, 13
  %or.cond = and i1 %i.o, %i.p
  br i1 %or.cond, label %.critedge58, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = and i64 %i.m, 16777216
  %i.r = and i64 %i.m, 8388608
  %.not64 = icmp eq i64 %i.r, 0
  %.not63 = icmp eq i64 %i.q, 0
  %i.s = zext nneg i32 %i.k to i64                ; 2 uses
  %i.t = sub nsw i64 0, %i.s
  %.044.p = select i1 %.not64, i64 %i.t, i64 %i.s
  %.044 = add nsw i64 %i.f, %.044.p               ; 2 uses
  %.0 = select i1 %.not63, i64 %i.f, i64 %.044    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  store i32 3, ptr %3, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.v = load ptr, ptr %0, align 8, !tbaa !27
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 80
  %i.x = load ptr, ptr %i.w, align 8
  call void %i.x(ptr dead_on_unwind nonnull writable sret(%"class.std::optional") align 8 %4, ptr noundef nonnull align 8 dereferenceable(209) %0, i32 noundef 1, i32 noundef 13) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.y = load ptr, ptr %0, align 8, !tbaa !27
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 80
  %i.aa = load ptr, ptr %i.z, align 8
  call void %i.aa(ptr dead_on_unwind nonnull writable sret(%"class.std::optional") align 8 %5, ptr noundef nonnull align 8 dereferenceable(209) %0, i32 noundef 1, i32 noundef %i.j) #20
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.ab, ptr noundef nonnull align 8 dereferenceable(80) %5, i64 80, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.ac, ptr noundef nonnull align 8 dereferenceable(80) %4, i64 80, i1 false)
  %i.ad = sub nsw i64 %.0, %i.f                   ; 2 uses
  store i32 2, ptr %i.u, align 4, !tbaa !50
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 168
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !54
  switch i32 %i.j, label %bb.g [
    i32 15, label %_ZN12lldb_private21EmulateInstructionARM11ReadCoreRegEjPb.exit62
    i32 13, label %.thread.i
    i32 14, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e
  br label %.thread.i

bb.g:                                             ; preds = %bb.e
  br label %.thread.i

.thread.i:                                        ; preds = %bb.e, %bb.g, %bb.f
  %.013.ph.i = phi i32 [ 1, %bb.g ], [ 2, %bb.f ], [ 2, %bb.e ]
  %.012.ph.i = phi i32 [ %i.j, %bb.g ], [ 3, %bb.f ], [ 1, %bb.e ]
  %i.af = call noundef i64 @_ZN12lldb_private18EmulateInstruction20ReadRegisterUnsignedEN4lldb12RegisterKindEjmPb(ptr noundef nonnull align 8 dereferenceable(209) %0, i32 noundef %.013.ph.i, i32 noundef %.012.ph.i, i64 noundef 0, ptr noundef nonnull %i.a) #20
  %i.ag = load i8, ptr %i.a, align 1, !tbaa !51, !range !52, !noundef !53
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %bb.h, label %.critedge

bb.h:                                             ; preds = %.thread.i
  %i.ai = and i64 %i.af, 4294967295
  %i.aj = zext i32 %i.d to i64
  %i.ak = call noundef zeroext i1 @_ZN12lldb_private18EmulateInstruction19WriteMemoryUnsignedERKNS0_7ContextEmmm(ptr noundef nonnull align 8 dereferenceable(209) %0, ptr noundef nonnull align 8 dereferenceable(248) %3, i64 noundef %.0, i64 noundef %i.ai, i64 noundef %i.aj) #20
  br i1 %i.ak, label %bb.j, label %.critedge

_ZN12lldb_private21EmulateInstructionARM11ReadCoreRegEjPb.exit62: ; preds = %bb.e
  %i.al = call noundef i64 @_ZN12lldb_private18EmulateInstruction20ReadRegisterUnsignedEN4lldb12RegisterKindEjmPb(ptr noundef nonnull align 8 dereferenceable(209) %0, i32 noundef 2, i32 noundef 0, i64 noundef 0, ptr noundef nonnull %i.a) #20
  %i.am = load i8, ptr %i.a, align 1, !tbaa !51, !range !52, !noundef !53
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %bb.i, label %.critedge

bb.i:                                             ; preds = %_ZN12lldb_private21EmulateInstructionARM11ReadCoreRegEjPb.exit62
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 188
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !45
  %i.aq = icmp eq i32 %i.ap, 0
  %.014.i61.v = select i1 %i.aq, i64 8, i64 4
  %.014.i61 = add i64 %.014.i61.v, %i.al
  %i.ar = and i64 %.014.i61, 4294967295
  %i.as = zext i32 %i.d to i64
  %i.at = call noundef zeroext i1 @_ZN12lldb_private18EmulateInstruction19WriteMemoryUnsignedERKNS0_7ContextEmmm(ptr noundef nonnull align 8 dereferenceable(209) %0, ptr noundef nonnull align 8 dereferenceable(248) %3, i64 noundef %.0, i64 noundef %i.ar, i64 noundef %i.as) #20
  br i1 %i.at, label %bb.j, label %.critedge

bb.j:                                             ; preds = %bb.i, %bb.h
  br i1 %i.o, label %bb.k, label %.critedge58.sink.split

bb.k:                                             ; preds = %bb.j
  store i32 5, ptr %3, align 8, !tbaa !49
  store i32 8, ptr %i.u, align 4, !tbaa !50
  store i64 %i.ad, ptr %i.ab, align 8, !tbaa !54
  %i.au = call noundef zeroext i1 @_ZN12lldb_private18EmulateInstruction21WriteRegisterUnsignedERKNS0_7ContextEN4lldb12RegisterKindEjm(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(248) %3, i32 noundef 2, i32 noundef 1, i64 noundef %.044) #20
  br i1 %i.au, label %.critedge58.sink.split, label %.critedge

.critedge:                                        ; preds = %_ZN12lldb_private21EmulateInstructionARM11ReadCoreRegEjPb.exit62, %.thread.i, %bb.k, %bb.h, %bb.i
  br label %.critedge58.sink.split

.critedge58.sink.split:                           ; preds = %bb.j, %bb.k, %.critedge
  %.6.ph = phi i1 [ false, %.critedge ], [ true, %bb.k ], [ true, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %.critedge58

.critedge58:                                      ; preds = %.critedge58.sink.split, %bb.a, %bb.b, %bb.d, %bb.c
  %.6 = phi i1 [ false, %bb.d ], [ true, %bb.a ], [ false, %bb.b ], [ false, %bb.c ], [ %.6.ph, %.critedge58.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret i1 %.6
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN12lldb_private21EmulateInstructionARM12EmulateVPUSHEjNS0_11ARMEncodingE(ptr noundef nonnull align 8 dereferenceable(209) %0, i32 noundef %1, i32 noundef %2) #0 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 7 uses
  %3 = alloca %"struct.lldb_private::EmulateInstruction::Context", align 8 ; 12 uses
  %4 = alloca %"class.std::optional", align 8     ; 5 uses
  %5 = alloca %"class.std::optional", align 8     ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i8 0, ptr %i.a, align 1, !tbaa !51
  %i.b = tail call noundef zeroext i1 @_ZN12lldb_private21EmulateInstructionARM15ConditionPassedEj(ptr noundef nonnull align 8 dereferenceable(209) %0, i32 noundef %1)
  br i1 %i.b, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = tail call noundef i32 @_ZNK12lldb_private8ArchSpec18GetAddressByteSizeEv(ptr noundef nonnull align 8 dereferenceable(96) %i.c) #20 ; 2 uses
  %i.e = call noundef i64 @_ZN12lldb_private18EmulateInstruction20ReadRegisterUnsignedEN4lldb12RegisterKindEjmPb(ptr noundef nonnull align 8 dereferenceable(209) %0, i32 noundef 2, i32 noundef 1, i64 noundef 0, ptr noundef nonnull %i.a) #20
  %i.f = and i64 %i.e, 4294967295                 ; 2 uses
  %i.g = load i8, ptr %i.a, align 1, !tbaa !51, !range !52, !noundef !53
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.c, label %.critedge64

bb.c:                                             ; preds = %bb.b
  switch i32 %2, label %.critedge64 [
    i32 5, label %bb.d
    i32 0, label %bb.d
    i32 6, label %bb.f
    i32 1, label %bb.f
  ]

bb.d:                                             ; preds = %bb.c, %bb.c
  %i.i = and i32 %1, 255                          ; 3 uses
  %i.j = lshr i32 %i.i, 1                         ; 3 uses
  %i.k = icmp eq i32 %i.j, 0
  %i.l = icmp samesign ugt i32 %i.i, 33
  %or.cond = or i1 %i.l, %i.k
  br i1 %or.cond, label %.critedge64, label %bb.e

end_hunk_0
