Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/EmulateInstructionARM?download=true
inline.NumInlined: 2834
inline.NumDeleted: 409
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN12lldb_private21EmulateInstructionARM11EmulateVSTREjNS0_11ARMEncodingE:bb.a
  %i.bp = add nuw nsw i64 %.0, 4                  ; 2 uses
  %i.bq = sub nsw i64 %i.bp, %i.bb
  store i32 2, ptr %i.ay, align 4, !tbaa !49
  store i64 %i.bq, ptr %i.bd, align 8, !tbaa !61
  %i.br = and i64 %i.be, 4294967295
  %i.bs = call noundef zeroext i1 @_ZN12lldb_private18EmulateInstruction19WriteMemoryUnsignedERKNS0_7ContextEmmm(ptr noundef nonnull align 8 dereferenceable(209) %0, ptr noundef nonnull align 8 dereferenceable(248) %5, i64 noundef %i.bp, i64 noundef %i.br, i64 noundef %i.bm) #20
  br i1 %i.bs, label %.critedge75.sink.split, label %.critedge

bb.s:                                             ; preds = %bb.p
  %i.bt = and i64 %i.be, 4294967295
  %i.bu = call noundef zeroext i1 @_ZN12lldb_private18EmulateInstruction19WriteMemoryUnsignedERKNS0_7ContextEmmm(ptr noundef nonnull align 8 dereferenceable(209) %0, ptr noundef nonnull align 8 dereferenceable(248) %5, i64 noundef %.0, i64 noundef %i.bt, i64 noundef %i.bm) #20
  br i1 %i.bu, label %bb.t, label %.critedge

bb.t:                                             ; preds = %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.az, ptr noundef nonnull align 8 dereferenceable(80) %4, i64 80, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.ba, ptr noundef nonnull align 8 dereferenceable(80) %3, i64 80, i1 false)
  %i.bv = add nuw nsw i64 %.0, 4                  ; 2 uses
  %i.bw = sub nsw i64 %i.bv, %i.bb
  store i32 2, ptr %i.ay, align 4, !tbaa !49
  store i64 %i.bw, ptr %i.bd, align 8, !tbaa !61
  %i.bx = lshr i64 %i.be, 32
  %i.by = call noundef zeroext i1 @_ZN12lldb_private18EmulateInstruction19WriteMemoryUnsignedERKNS0_7ContextEmmm(ptr noundef nonnull align 8 dereferenceable(209) %0, ptr noundef nonnull align 8 dereferenceable(248) %5, i64 noundef %i.bv, i64 noundef %i.bx, i64 noundef %i.bm) #20
  br i1 %i.by, label %.critedge75.sink.split, label %.critedge

.critedge:                                        ; preds = %bb.m, %bb.o, %bb.q, %bb.r, %bb.s, %bb.t, %bb.n
  br label %.critedge75.sink.split

.critedge75.sink.split:                           ; preds = %bb.n, %bb.t, %bb.r, %.critedge
  %.6.ph = phi i1 [ false, %.critedge ], [ true, %bb.r ], [ true, %bb.t ], [ true, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %.critedge75

.critedge75:                                      ; preds = %.critedge75.sink.split, %bb.a, %bb.f, %bb.d, %bb.b, %_ZN12lldb_private21EmulateInstructionARM11ReadCoreRegEjPb.exit
  %.6 = phi i1 [ false, %bb.f ], [ true, %bb.a ], [ false, %_ZN12lldb_private21EmulateInstructionARM11ReadCoreRegEjPb.exit ], [ false, %bb.b ], [ false, %bb.d ], [ %.6.ph, %.critedge75.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret i1 %.6
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN12lldb_private21EmulateInstructionARM19EmulateVLD1MultipleEjNS0_11ARMEncodingE(ptr noundef nonnull align 8 dereferenceable(209) %0, i32 noundef %1, i32 noundef %2) #0 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 11 uses
  %3 = alloca %"class.std::optional", align 8     ; 5 uses
  %4 = alloca %"struct.lldb_private::EmulateInstruction::Context", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i8 0, ptr %i.a, align 1, !tbaa !50
  %i.b = tail call noundef zeroext i1 @_ZN12lldb_private21EmulateInstructionARM15ConditionPassedEj(ptr noundef nonnull align 8 dereferenceable(209) %0, i32 noundef %1)
  br i1 %i.b, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  switch i32 %2, label %.critedge [
    i32 5, label %bb.c
    i32 0, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.c = lshr i32 %1, 8
  %i.d = and i32 %i.c, 15
  %i.e = lshr i32 %1, 4
  %i.f = and i32 %i.e, 3                          ; 3 uses
  switch i32 %i.d, label %.critedge [
    i32 7, label %bb.d
    i32 10, label %bb.e
    i32 6, label %bb.f
    i32 2, label %bb.g
  ]

bb.d:                                             ; preds = %bb.c
  %i.g = and i32 %1, 32
  %.not118 = icmp eq i32 %i.g, 0
  br i1 %.not118, label %bb.g, label %.critedge

bb.e:                                             ; preds = %bb.c
  %i.h = icmp eq i32 %i.f, 3
  br i1 %i.h, label %.critedge, label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.i = and i32 %1, 32
  %.not117 = icmp eq i32 %i.i, 0
  br i1 %.not117, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.c, %bb.e, %bb.f, %bb.d
  %.093 = phi i32 [ 1, %bb.d ], [ 2, %bb.e ], [ 3, %bb.f ], [ 4, %bb.c ] ; 3 uses
  %i.j = icmp eq i32 %i.f, 0
  %i.k = shl nuw nsw i32 4, %i.f
  %i.l = lshr i32 %1, 6
  %i.m = and i32 %i.l, 3                          ; 3 uses
  %i.n = shl nuw nsw i32 1, %i.m
  %i.o = lshr exact i32 8, %i.m
  %i.p = lshr i32 %1, 18
  %i.q = and i32 %i.p, 16
  %i.r = lshr i32 %1, 12
  %i.s = and i32 %i.r, 15
  %i.t = or disjoint i32 %i.q, %i.s               ; 2 uses
  %i.u = lshr i32 %1, 15
  %i.v = and i32 %i.u, 31                         ; 5 uses
  %i.w = and i32 %1, 15                           ; 3 uses
  %i.x = icmp ne i32 %i.w, 15                     ; 2 uses
  %i.y = icmp ne i32 %i.w, 13
  %i.z = and i1 %i.x, %i.y
  %i.aa = add nuw nsw i32 %.093, %i.t
  %i.ab = icmp samesign ugt i32 %i.aa, 32
  br i1 %i.ab, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.ac = load ptr, ptr %0, align 8, !tbaa !25
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 80
  %i.ae = load ptr, ptr %i.ad, align 8
  call void %i.ae(ptr dead_on_unwind nonnull writable sret(%"class.std::optional") align 8 %3, ptr noundef nonnull align 8 dereferenceable(209) %0, i32 noundef 1, i32 noundef %i.v) #20
  switch i32 %i.v, label %bb.j [
    i32 13, label %.thread.i
    i32 14, label %bb.i
    i32 15, label %bb.l
  ]

bb.i:                                             ; preds = %bb.h
  br label %.thread.i

bb.j:                                             ; preds = %bb.h
  %i.af = icmp samesign ult i32 %i.v, 13
  br i1 %i.af, label %.thread.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i8 0, ptr %i.a, align 1, !tbaa !50
  br label %_ZN12lldb_private21EmulateInstructionARM11ReadCoreRegEjPb.exit

.thread.i:                                        ; preds = %bb.j, %bb.i, %bb.h
  %.013.ph.i = phi i32 [ 1, %bb.j ], [ 2, %bb.i ], [ 2, %bb.h ]
  %.012.ph.i = phi i32 [ %i.v, %bb.j ], [ 3, %bb.i ], [ 1, %bb.h ]
  %i.ag = call noundef i64 @_ZN12lldb_private18EmulateInstruction20ReadRegisterUnsignedEN4lldb12RegisterKindEjmPb(ptr noundef nonnull align 8 dereferenceable(209) %0, i32 noundef %.013.ph.i, i32 noundef %.012.ph.i, i64 noundef 0, ptr noundef nonnull %i.a) #20
  %i.ah = trunc i64 %i.ag to i32
  br label %_ZN12lldb_private21EmulateInstructionARM11ReadCoreRegEjPb.exit

bb.l:                                             ; preds = %bb.h
  %i.ai = call noundef i64 @_ZN12lldb_private18EmulateInstruction20ReadRegisterUnsignedEN4lldb12RegisterKindEjmPb(ptr noundef nonnull align 8 dereferenceable(209) %0, i32 noundef 2, i32 noundef 0, i64 noundef 0, ptr noundef nonnull %i.a) #20
  %i.aj = trunc i64 %i.ai to i32                  ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 188
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !44
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.an = add i32 %i.aj, 8
  br label %_ZN12lldb_private21EmulateInstructionARM11ReadCoreRegEjPb.exit

bb.n:                                             ; preds = %bb.l
  %i.ao = add i32 %i.aj, 4
  br label %_ZN12lldb_private21EmulateInstructionARM11ReadCoreRegEjPb.exit

_ZN12lldb_private21EmulateInstructionARM11ReadCoreRegEjPb.exit: ; preds = %bb.k, %.thread.i, %bb.m, %bb.n
  %.014.i = phi i32 [ -1, %bb.k ], [ %i.an, %bb.m ], [ %i.ao, %bb.n ], [ %i.ah, %.thread.i ] ; 3 uses
  %i.ap = load i8, ptr %i.a, align 1, !tbaa !50, !range !51, !noundef !52
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %bb.o, label %.critedge.sink.split

bb.o:                                             ; preds = %_ZN12lldb_private21EmulateInstructionARM11ReadCoreRegEjPb.exit
  %i.ar = zext i32 %.014.i to i64                 ; 2 uses
  %i.as = add nsw i32 %i.k, -1
  %i.at = select i1 %i.j, i32 0, i32 %i.as
  %i.au = and i32 %.014.i, %i.at
  %.not = icmp eq i32 %i.au, 0
  br i1 %.not, label %bb.p, label %.critedge.sink.split

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  store i32 0, ptr %4, align 8, !tbaa !45
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 3 uses
  store i32 13, ptr %i.av, align 4, !tbaa !49
  br i1 %i.x, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.aw = call noundef i32 @_ZN12lldb_private21EmulateInstructionARM11ReadCoreRegEjPb(ptr noundef nonnull align 8 dereferenceable(209) %0, i32 noundef %i.w, ptr noundef nonnull %i.a)
  %i.ax = load i8, ptr %i.a, align 1, !tbaa !50, !range !51, !noundef !52
  %i.ay = trunc nuw i8 %i.ax to i1
  br i1 %i.ay, label %bb.r, label %.critedge.sink.split.sink.split

bb.r:                                             ; preds = %bb.q
  %i.az = shl nuw nsw i32 %.093, 3
  %.075 = select i1 %i.z, i32 %i.aw, i32 %i.az    ; 2 uses
  %i.ba = add i32 %.075, %.014.i
  store i32 8, ptr %4, align 8, !tbaa !45
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.bb, ptr noundef nonnull align 8 dereferenceable(80) %3, i64 80, i1 false)
  %i.bc = zext i32 %.075 to i64
  store i32 0, ptr %i.av, align 4, !tbaa !49
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 88
  store i64 %i.bc, ptr %i.bd, align 8, !tbaa !61
  %i.be = zext i32 %i.ba to i64
  %i.bf = call noundef zeroext i1 @_ZN12lldb_private18EmulateInstruction21WriteRegisterUnsignedERKNS0_7ContextEN4lldb12RegisterKindEjm(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(248) %4, i32 noundef 1, i32 noundef %i.v, i64 noundef %i.be) #20
  br i1 %i.bf, label %bb.s, label %.critedge.sink.split.sink.split

bb.s:                                             ; preds = %bb.r, %bb.p
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.bi = zext nneg i32 %i.n to i64               ; 2 uses
  %i.bj = add nuw nsw i32 %i.m, 3
  %i.bk = or disjoint i32 %i.t, 256
  br label %.preheader

.preheader:                                       ; preds = %bb.v, %bb.s
  %.074127 = phi i32 [ 0, %bb.s ], [ %i.bw, %bb.v ] ; 2 uses
  %.076126 = phi i64 [ %i.ar, %bb.s ], [ %i.bp, %bb.v ]
  br label %bb.t

bb.t:                                             ; preds = %.preheader, %bb.u
  %.0125 = phi i32 [ 0, %.preheader ], [ %5, %bb.u ] ; 2 uses
  %.073124 = phi i64 [ 0, %.preheader ], [ %i.bt, %bb.u ]
  %.177123 = phi i64 [ %.076126, %.preheader ], [ %i.bp, %bb.u ] ; 3 uses
  store i32 12, ptr %4, align 8, !tbaa !45
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.bg, ptr noundef nonnull align 8 dereferenceable(80) %3, i64 80, i1 false)
  %i.bl = sub i64 %.177123, %i.ar
  store i32 0, ptr %i.av, align 4, !tbaa !49
  store i64 %i.bl, ptr %i.bh, align 8, !tbaa !61
  %i.bm = call noundef i64 @_ZN12lldb_private18EmulateInstruction18ReadMemoryUnsignedERKNS0_7ContextEmmmPb(ptr noundef nonnull align 8 dereferenceable(209) %0, ptr noundef nonnull align 8 dereferenceable(248) %4, i64 noundef %.177123, i64 noundef %i.bi, i64 noundef 0, ptr noundef nonnull %i.a) #20
  %i.bn = load i8, ptr %i.a, align 1, !tbaa !50, !range !51, !noundef !52
  %i.bo = trunc nuw i8 %i.bn to i1
  br i1 %i.bo, label %bb.u, label %.critedge.sink.split.sink.split

bb.u:                                             ; preds = %bb.t
  %i.bp = add i64 %.177123, %i.bi                 ; 2 uses
  %i.bq = shl i32 %.0125, %i.bj
  %i.br = zext nneg i32 %i.bq to i64
  %i.bs = shl i64 %i.bm, %i.br
  %i.bt = or i64 %i.bs, %.073124                  ; 2 uses
  %5 = add nuw nsw i32 %.0125, 1                  ; 2 uses
  %exitcond.not = icmp eq i32 %5, %i.o
  br i1 %exitcond.not, label %bb.v, label %bb.t, !llvm.loop !90

bb.v:                                             ; preds = %bb.u
  %i.bu = add nuw nsw i32 %i.bk, %.074127
  %i.bv = call noundef zeroext i1 @_ZN12lldb_private18EmulateInstruction21WriteRegisterUnsignedERKNS0_7ContextEN4lldb12RegisterKindEjm(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(248) %4, i32 noundef 1, i32 noundef %i.bu, i64 noundef %i.bt) #20 ; 2 uses
  %i.bw = add nuw nsw i32 %.074127, 1             ; 2 uses
  %exitcond130.not = icmp ne i32 %i.bw, %.093
  %or.cond.not = select i1 %i.bv, i1 %exitcond130.not, i1 false
  br i1 %or.cond.not, label %.preheader, label %.critedge.sink.split.sink.split, !llvm.loop !91

.critedge.sink.split.sink.split:                  ; preds = %bb.v, %bb.t, %bb.r, %bb.q
  %.14.ph.ph = phi i1 [ false, %bb.r ], [ false, %bb.q ], [ false, %bb.t ], [ %i.bv, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %.critedge.sink.split

.critedge.sink.split:                             ; preds = %.critedge.sink.split.sink.split, %_ZN12lldb_private21EmulateInstructionARM11ReadCoreRegEjPb.exit, %bb.o
  %.14.ph = phi i1 [ false, %_ZN12lldb_private21EmulateInstructionARM11ReadCoreRegEjPb.exit ], [ false, %bb.o ], [ %.14.ph.ph, %.critedge.sink.split.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %.critedge

.critedge:                                        ; preds = %.critedge.sink.split, %bb.a, %bb.f, %bb.c, %bb.d, %bb.e, %bb.g, %bb.b
  %.14 = phi i1 [ false, %bb.c ], [ false, %bb.f ], [ false, %bb.b ], [ true, %bb.a ], [ false, %bb.g ], [ false, %bb.e ], [ false, %bb.d ], [ %.14.ph, %.critedge.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret i1 %.14
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN12lldb_private21EmulateInstructionARM17EmulateVLD1SingleEjNS0_11ARMEncodingE(ptr noundef nonnull align 8 dereferenceable(209) %0, i32 noundef %1, i32 noundef %2) #0 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 11 uses
  %3 = alloca %"struct.lldb_private::EmulateInstruction::Context", align 8 ; 12 uses
  %4 = alloca %"class.std::optional", align 8     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i8 0, ptr %i.a, align 1, !tbaa !50
  %i.b = tail call noundef zeroext i1 @_ZN12lldb_private21EmulateInstructionARM15ConditionPassedEj(ptr noundef nonnull align 8 dereferenceable(209) %0, i32 noundef %1)
  br i1 %i.b, label %bb.b, label %bb.v

bb.b:                                             ; preds = %bb.a
  switch i32 %2, label %.thread119 [
    i32 5, label %bb.c
    i32 0, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.c = lshr i32 %1, 10
  %i.d = and i32 %i.c, 3
  %i.e = lshr i32 %1, 4                           ; 2 uses
  %i.f = and i32 %i.e, 15                         ; 4 uses
  switch i32 %i.d, label %default.unreachable128 [
    i32 3, label %bb.d
    i32 0, label %bb.e
    i32 1, label %bb.g
    i32 2, label %bb.i
  ]

bb.d:                                             ; preds = %bb.c
  %i.g = tail call noundef zeroext i1 @_ZN12lldb_private21EmulateInstructionARM20EmulateVLD1SingleAllEjNS0_11ARMEncodingE(ptr noundef nonnull align 8 dereferenceable(209) %0, i32 noundef %1, i32 noundef %2)
  br label %.thread119

bb.e:                                             ; preds = %bb.c
  %i.h = and i32 %1, 16
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %.thread119, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = lshr i32 %i.f, 1
  br label %bb.l

bb.g:                                             ; preds = %bb.c
  %i.k = zext nneg i32 %i.f to i64                ; 2 uses
  %i.l = and i64 %i.k, 2
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %.thread119, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = lshr i32 %i.f, 2
  %i.o = and i64 %i.k, 1
  %i.p = icmp eq i64 %i.o, 0
  %. = select i1 %i.p, i32 1, i32 2
  br label %bb.l

bb.i:                                             ; preds = %bb.c
  %i.q = and i32 %1, 64
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %.thread119, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.s = and i32 %i.e, 3                          ; 2 uses
  %.off = add nsw i32 %i.s, -1
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %.thread119, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.not = icmp eq i32 %i.s, 0
  %i.t = lshr i32 %i.f, 3
  %.100 = select i1 %.not, i32 1, i32 4
  br label %bb.l

bb.l:                                             ; preds = %bb.f, %bb.h, %bb.k
  %.082 = phi i32 [ 1, %bb.f ], [ 2, %bb.h ], [ 4, %bb.k ]
  %.080 = phi i32 [ 8, %bb.f ], [ 16, %bb.h ], [ 32, %bb.k ] ; 3 uses
  %.078 = phi i32 [ %i.j, %bb.f ], [ %i.n, %bb.h ], [ %i.t, %bb.k ] ; 3 uses
  %.076 = phi i32 [ 1, %bb.f ], [ %., %bb.h ], [ %.100, %bb.k ]
  %i.u = lshr i32 %1, 18
  %i.v = and i32 %i.u, 16
  %i.w = lshr i32 %1, 12
  %i.x = and i32 %i.w, 15
  %i.y = or disjoint i32 %i.v, %i.x               ; 2 uses
  %i.z = lshr i32 %1, 16
  %i.aa = and i32 %i.z, 15                        ; 4 uses
  %i.ab = and i32 %1, 15                          ; 3 uses
  %i.ac = icmp ne i32 %i.ab, 15                   ; 2 uses
  %i.ad = icmp ne i32 %i.ab, 13
  %i.ae = and i1 %i.ac, %i.ad
  switch i32 %i.aa, label %bb.n [
    i32 15, label %.thread119
    i32 13, label %.thread.i
    i32 14, label %bb.m
  ]

bb.m:                                             ; preds = %bb.l
  br label %.thread.i

bb.n:                                             ; preds = %bb.l
  br label %.thread.i

.thread.i:                                        ; preds = %bb.l, %bb.n, %bb.m
  %.013.ph.i = phi i32 [ 1, %bb.n ], [ 2, %bb.m ], [ 2, %bb.l ]
  %.012.ph.i = phi i32 [ %i.aa, %bb.n ], [ 3, %bb.m ], [ 1, %bb.l ]
  %i.af = call noundef i64 @_ZN12lldb_private18EmulateInstruction20ReadRegisterUnsignedEN4lldb12RegisterKindEjmPb(ptr noundef nonnull align 8 dereferenceable(209) %0, i32 noundef %.013.ph.i, i32 noundef %.012.ph.i, i64 noundef 0, ptr noundef nonnull %i.a) #20 ; 2 uses
  %i.ag = trunc i64 %i.af to i32                  ; 2 uses
  %i.ah = load i8, ptr %i.a, align 1, !tbaa !50, !range !51, !noundef !52
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %bb.o, label %.thread119

bb.o:                                             ; preds = %.thread.i
  %i.aj = and i64 %i.af, 4294967295
  %i.ak = add nsw i32 %.076, -1
  %i.al = and i32 %i.ak, %i.ag
  %.not98 = icmp eq i32 %i.al, 0
  br i1 %.not98, label %bb.p, label %.thread119

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  store i32 0, ptr %3, align 8, !tbaa !45
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  store i32 13, ptr %i.am, align 4, !tbaa !49
  br i1 %i.ac, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.an = call noundef i32 @_ZN12lldb_private21EmulateInstructionARM11ReadCoreRegEjPb(ptr noundef nonnull align 8 dereferenceable(209) %0, i32 noundef %i.ab, ptr noundef nonnull %i.a)
  %i.ao = load i8, ptr %i.a, align 1, !tbaa !50, !range !51, !noundef !52
  %i.ap = trunc nuw i8 %i.ao to i1
  br i1 %i.ap, label %bb.r, label %.thread123

bb.r:                                             ; preds = %bb.q
  %..183 = select i1 %i.ae, i32 %i.an, i32 %.082  ; 2 uses
  %i.aq = add i32 %..183, %i.ag
  store i32 8, ptr %3, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.ar = load ptr, ptr %0, align 8, !tbaa !25
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 80
  %i.at = load ptr, ptr %i.as, align 8
  call void %i.at(ptr dead_on_unwind nonnull writable sret(%"class.std::optional") align 8 %4, ptr noundef nonnull align 8 dereferenceable(209) %0, i32 noundef 1, i32 noundef %i.aa) #20
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.au, ptr noundef nonnull align 8 dereferenceable(80) %4, i64 80, i1 false)
  %i.av = zext i32 %..183 to i64
  store i32 0, ptr %i.am, align 4, !tbaa !49
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 88
  store i64 %i.av, ptr %i.aw, align 8, !tbaa !61
  %i.ax = zext i32 %i.aq to i64
  %i.ay = call noundef zeroext i1 @_ZN12lldb_private18EmulateInstruction21WriteRegisterUnsignedERKNS0_7ContextEN4lldb12RegisterKindEjm(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(248) %3, i32 noundef 1, i32 noundef %i.aa, i64 noundef %i.ax) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br i1 %i.ay, label %bb.s, label %.thread123

bb.s:                                             ; preds = %bb.r, %bb.p
  %i.az = zext nneg i32 %.080 to i64
  %i.ba = call noundef i64 @_ZN12lldb_private18EmulateInstruction18ReadMemoryUnsignedERKNS0_7ContextEmmmPb(ptr noundef nonnull align 8 dereferenceable(209) %0, ptr noundef nonnull align 8 dereferenceable(248) %3, i64 noundef %i.aj, i64 noundef %i.az, i64 noundef 0, ptr noundef nonnull %i.a) #20
  %i.bb = load i8, ptr %i.a, align 1, !tbaa !50, !range !51, !noundef !52
  %i.bc = trunc nuw i8 %i.bb to i1
  br i1 %i.bc, label %bb.t, label %.thread123

bb.t:                                             ; preds = %bb.s
  %i.bd = or disjoint i32 %i.y, 256
  %i.be = call noundef i64 @_ZN12lldb_private18EmulateInstruction20ReadRegisterUnsignedEN4lldb12RegisterKindEjmPb(ptr noundef nonnull align 8 dereferenceable(184) %0, i32 noundef 1, i32 noundef %i.bd, i64 noundef 0, ptr noundef nonnull %i.a) #20
  %i.bf = load i8, ptr %i.a, align 1, !tbaa !50, !range !51, !noundef !52
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %bb.u, label %.thread123

bb.u:                                             ; preds = %bb.t
  %i.bh = trunc i64 %i.ba to i32
  %i.bi = mul nuw nsw i32 %.078, %.080            ; 2 uses
  %i.bj = shl i32 %i.bh, %i.bi
  %i.bk = add nuw nsw i32 %.078, 1
  %i.bl = mul nuw nsw i32 %i.bk, %.080
  %i.bm = zext nneg i32 %i.bl to i64
  %i.bn = shl nsw i64 -1, %i.bm
  %.not99 = icmp eq i32 %.078, 0
  %i.bo = zext nneg i32 %i.bi to i64
  %notmask.i = shl nsw i64 -1, %i.bo
end_hunk_0
begin_hunk_1_@_ZN12lldb_private21EmulateInstructionARM20EmulateVLD1SingleAllEjNS0_11ARMEncodingE:bb.a
  call void @llvm.assume(i1 %lcmp.mod104)
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.epil.preheader
  %.06094.epil = phi i64 [ %.06094.epil.init, %.epil.preheader ], [ %i.bb, %bb.o ]
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.o ]
  %i.ba = shl i64 %.06094.epil, %i.ax
  %i.bb = or i64 %i.ba, %i.az                     ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader, label %bb.o, !llvm.loop !92

.preheader:                                       ; preds = %bb.o, %.preheader.unr-lcssa
  %.lcssa102 = phi i64 [ %i.bs, %.preheader.unr-lcssa ], [ %i.bb, %bb.o ]
  %i.bc = or disjoint i32 %i.q, 256
  br label %bb.p

.new:                                             ; preds = %bb.n, %.new
  %.06094 = phi i64 [ %i.bs, %.new ], [ 0, %bb.n ]
  %niter = phi i32 [ %niter.next.7, %.new ], [ 0, %bb.n ] ; 2 uses
  %i.bd = shl i64 %.06094, %i.ax
  %i.be = or i64 %i.bd, %i.az
  %i.bf = shl i64 %i.be, %i.ax
  %i.bg = or i64 %i.bf, %i.az
  %i.bh = shl i64 %i.bg, %i.ax
  %i.bi = or i64 %i.bh, %i.az
  %i.bj = shl i64 %i.bi, %i.ax
  %i.bk = or i64 %i.bj, %i.az
  %i.bl = shl i64 %i.bk, %i.ax
  %i.bm = or i64 %i.bl, %i.az
  %i.bn = shl i64 %i.bm, %i.ax
  %i.bo = or i64 %i.bn, %i.az
  %i.bp = shl i64 %i.bo, %i.ax
  %i.bq = or i64 %i.bp, %i.az
  %i.br = shl i64 %i.bq, %i.ax
  %i.bs = or i64 %i.br, %i.az                     ; 3 uses
  %niter.next.7 = add i32 %niter, 8
  %niter.ncmp.7 = icmp eq i32 %niter, 0
  br i1 %niter.ncmp.7, label %.preheader.unr-lcssa, label %.new, !llvm.loop !94

bb.p:                                             ; preds = %bb.p, %.preheader
  %.096 = phi i32 [ 0, %.preheader ], [ %i.bv, %bb.p ] ; 2 uses
  %i.bt = add nuw nsw i32 %i.bc, %.096
  %i.bu = call noundef zeroext i1 @_ZN12lldb_private18EmulateInstruction21WriteRegisterUnsignedERKNS0_7ContextEN4lldb12RegisterKindEjm(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(248) %3, i32 noundef 1, i32 noundef %i.bt, i64 noundef %.lcssa102) #20 ; 2 uses
  %i.bv = add nuw nsw i32 %.096, 1                ; 2 uses
  %exitcond97.not = icmp ne i32 %i.bv, %.
  %or.cond101.not = select i1 %i.bu, i1 %exitcond97.not, i1 false
  br i1 %or.cond101.not, label %bb.p, label %.critedge91.sink.split, !llvm.loop !95

.critedge91.sink.split:                           ; preds = %bb.p, %bb.l, %bb.m, %bb.k
  %.10.ph = phi i1 [ false, %bb.m ], [ false, %bb.l ], [ false, %bb.k ], [ %i.bu, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %.critedge91

.critedge91:                                      ; preds = %.critedge91.sink.split, %bb.a, %bb.i, %bb.b, %_ZN12lldb_private21EmulateInstructionARM11ReadCoreRegEjPb.exit, %bb.c, %bb.d, %bb.e
  %.10 = phi i1 [ false, %bb.b ], [ false, %bb.i ], [ false, %bb.e ], [ false, %bb.d ], [ false, %bb.c ], [ false, %_ZN12lldb_private21EmulateInstructionARM11ReadCoreRegEjPb.exit ], [ true, %bb.a ], [ %.10.ph, %.critedge91.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret i1 %.10
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN12lldb_private21EmulateInstructionARM19EmulateVST1MultipleEjNS0_11ARMEncodingE(ptr noundef nonnull align 8 dereferenceable(209) %0, i32 noundef %1, i32 noundef %2) #0 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 9 uses
  %3 = alloca %"class.std::optional", align 8     ; 5 uses
  %4 = alloca %"struct.lldb_private::EmulateInstruction::Context", align 8 ; 13 uses
  %5 = alloca %"class.std::optional", align 8     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i8 0, ptr %i.a, align 1, !tbaa !50
  %i.b = tail call noundef zeroext i1 @_ZN12lldb_private21EmulateInstructionARM15ConditionPassedEj(ptr noundef nonnull align 8 dereferenceable(209) %0, i32 noundef %1)
  br i1 %i.b, label %bb.b, label %.critedge117

bb.b:                                             ; preds = %bb.a
  switch i32 %2, label %.critedge117 [
    i32 5, label %bb.c
    i32 0, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.c = lshr i32 %1, 8
  %i.d = and i32 %i.c, 15
  %i.e = lshr i32 %1, 4
  %i.f = and i32 %i.e, 3                          ; 3 uses
  switch i32 %i.d, label %.critedge117 [
    i32 7, label %bb.d
    i32 10, label %bb.e
    i32 6, label %bb.f
    i32 2, label %bb.g
  ]

bb.d:                                             ; preds = %bb.c
  %i.g = and i32 %1, 32
  %.not125 = icmp eq i32 %i.g, 0
  br i1 %.not125, label %bb.g, label %.critedge117

bb.e:                                             ; preds = %bb.c
  %i.h = icmp eq i32 %i.f, 3
  br i1 %i.h, label %.critedge117, label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.i = and i32 %1, 32
  %.not124 = icmp eq i32 %i.i, 0
  br i1 %.not124, label %bb.g, label %.critedge117

bb.g:                                             ; preds = %bb.c, %bb.e, %bb.f, %bb.d
  %.095 = phi i32 [ 1, %bb.d ], [ 2, %bb.e ], [ 3, %bb.f ], [ 4, %bb.c ] ; 3 uses
  %i.j = icmp eq i32 %i.f, 0
  %i.k = shl nuw nsw i32 4, %i.f
  %i.l = lshr i32 %1, 6
  %i.m = and i32 %i.l, 3                          ; 4 uses
  %i.n = shl nuw nsw i32 1, %i.m
  %i.o = lshr exact i32 8, %i.m
  %i.p = lshr i32 %1, 18
  %i.q = and i32 %i.p, 16
  %i.r = lshr i32 %1, 12
  %i.s = and i32 %i.r, 15
  %i.t = or disjoint i32 %i.q, %i.s               ; 2 uses
  %i.u = lshr i32 %1, 16
  %i.v = and i32 %i.u, 15                         ; 5 uses
  %i.w = and i32 %1, 15                           ; 3 uses
  %i.x = icmp ne i32 %i.w, 15                     ; 2 uses
  %i.y = icmp ne i32 %i.w, 13
  %i.z = and i1 %i.x, %i.y
  %i.aa = add nuw nsw i32 %.095, %i.t
  %i.ab = icmp samesign ult i32 %i.aa, 33
  %i.ac = icmp ne i32 %i.v, 15
  %or.cond = and i1 %i.ac, %i.ab
  br i1 %or.cond, label %bb.h, label %.critedge117

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.ad = load ptr, ptr %0, align 8, !tbaa !25
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 80
  %i.af = load ptr, ptr %i.ae, align 8
  call void %i.af(ptr dead_on_unwind nonnull writable sret(%"class.std::optional") align 8 %3, ptr noundef nonnull align 8 dereferenceable(209) %0, i32 noundef 1, i32 noundef %i.v) #20
  switch i32 %i.v, label %bb.j [
    i32 13, label %_ZN12lldb_private21EmulateInstructionARM11ReadCoreRegEjPb.exit
    i32 14, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h
  br label %_ZN12lldb_private21EmulateInstructionARM11ReadCoreRegEjPb.exit

bb.j:                                             ; preds = %bb.h
  br label %_ZN12lldb_private21EmulateInstructionARM11ReadCoreRegEjPb.exit

_ZN12lldb_private21EmulateInstructionARM11ReadCoreRegEjPb.exit: ; preds = %bb.h, %bb.i, %bb.j
  %.013.ph.i = phi i32 [ 1, %bb.j ], [ 2, %bb.i ], [ 2, %bb.h ]
  %.012.ph.i = phi i32 [ %i.v, %bb.j ], [ 3, %bb.i ], [ 1, %bb.h ]
  %i.ag = call noundef i64 @_ZN12lldb_private18EmulateInstruction20ReadRegisterUnsignedEN4lldb12RegisterKindEjmPb(ptr noundef nonnull align 8 dereferenceable(209) %0, i32 noundef %.013.ph.i, i32 noundef %.012.ph.i, i64 noundef 0, ptr noundef nonnull %i.a) #20 ; 2 uses
  %i.ah = trunc i64 %i.ag to i32                  ; 2 uses
  %i.ai = load i8, ptr %i.a, align 1, !tbaa !50, !range !51, !noundef !52
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %bb.k, label %.critedge117.sink.split

bb.k:                                             ; preds = %_ZN12lldb_private21EmulateInstructionARM11ReadCoreRegEjPb.exit
  %i.ak = and i64 %i.ag, 4294967295               ; 2 uses
  %i.al = add nsw i32 %i.k, -1
  %i.am = select i1 %i.j, i32 0, i32 %i.al
  %i.an = and i32 %i.am, %i.ah
  %.not = icmp eq i32 %i.an, 0
  br i1 %.not, label %bb.l, label %.critedge117.sink.split

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  store i32 0, ptr %4, align 8, !tbaa !45
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 3 uses
  store i32 13, ptr %i.ao, align 4, !tbaa !49
  br i1 %i.x, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.ap = call noundef i32 @_ZN12lldb_private21EmulateInstructionARM11ReadCoreRegEjPb(ptr noundef nonnull align 8 dereferenceable(209) %0, i32 noundef %i.w, ptr noundef nonnull %i.a)
  %i.aq = load i8, ptr %i.a, align 1, !tbaa !50, !range !51, !noundef !52
  %i.ar = trunc nuw i8 %i.aq to i1
  br i1 %i.ar, label %bb.n, label %.critedge117.sink.split.sink.split

bb.n:                                             ; preds = %bb.m
  %i.as = shl nuw nsw i32 %.095, 3
  %.078 = select i1 %i.z, i32 %i.ap, i32 %i.as    ; 2 uses
  store i32 8, ptr %4, align 8, !tbaa !45
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.at, ptr noundef nonnull align 8 dereferenceable(80) %3, i64 80, i1 false)
  %i.au = zext i32 %.078 to i64
  store i32 0, ptr %i.ao, align 4, !tbaa !49
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 88
  store i64 %i.au, ptr %i.av, align 8, !tbaa !61
  %i.aw = add i32 %.078, %i.ah
  %i.ax = zext i32 %i.aw to i64
  %i.ay = call noundef zeroext i1 @_ZN12lldb_private18EmulateInstruction21WriteRegisterUnsignedERKNS0_7ContextEN4lldb12RegisterKindEjm(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(248) %4, i32 noundef 1, i32 noundef %i.v, i64 noundef %i.ax) #20
  br i1 %i.ay, label %bb.o, label %.critedge117.sink.split.sink.split

bb.o:                                             ; preds = %bb.n, %bb.l
  store i32 11, ptr %4, align 8, !tbaa !45
  %i.az = or disjoint i32 %i.t, 256
  %i.ba = add nuw nsw i32 %i.m, 3
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 168
  %i.be = zext nneg i32 %i.n to i64               ; 2 uses
  %i.bf = shl nuw nsw i32 8, %i.m
  %i.bg = zext nneg i32 %i.bf to i64
  %notmask.i = shl nsw i64 -1, %i.bg
  %i.bh = xor i64 %notmask.i, -1
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.q
  %.077129 = phi i32 [ 0, %bb.o ], [ %i.bw, %bb.q ] ; 2 uses
  %.079128 = phi i64 [ %i.ak, %bb.o ], [ %i.bp, %bb.q ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.bi = add nuw nsw i32 %.077129, %i.az         ; 2 uses
  %i.bj = load ptr, ptr %0, align 8, !tbaa !25
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 80
  %i.bl = load ptr, ptr %i.bk, align 8
  call void %i.bl(ptr dead_on_unwind nonnull writable sret(%"class.std::optional") align 8 %5, ptr noundef nonnull align 8 dereferenceable(209) %0, i32 noundef 1, i32 noundef %i.bi) #20
  %i.bm = call noundef i64 @_ZN12lldb_private18EmulateInstruction20ReadRegisterUnsignedEN4lldb12RegisterKindEjmPb(ptr noundef nonnull align 8 dereferenceable(184) %0, i32 noundef 1, i32 noundef %i.bi, i64 noundef 0, ptr noundef nonnull %i.a) #20
  %i.bn = load i8, ptr %i.a, align 1, !tbaa !50, !range !51, !noundef !52
  %i.bo = trunc nuw i8 %i.bn to i1
  br i1 %i.bo, label %.preheader.preheader, label %.critedge

.preheader:                                       ; preds = %.preheader.preheader
  %6 = add nuw nsw i32 %.0139, 1                  ; 2 uses
  %i.bp = add i64 %.1138, %i.be                   ; 2 uses
  %exitcond.not = icmp eq i32 %6, %i.o
  br i1 %exitcond.not, label %bb.q, label %.preheader.preheader, !llvm.loop !96

.preheader.preheader:                             ; preds = %bb.p, %.preheader
  %.0139 = phi i32 [ %6, %.preheader ], [ 0, %bb.p ] ; 2 uses
  %.1138 = phi i64 [ %i.bp, %.preheader ], [ %.079128, %bb.p ] ; 3 uses
  %i.bq = shl i32 %.0139, %i.ba
  %i.br = zext nneg i32 %i.bq to i64
  %i.bs = lshr i64 %i.bm, %i.br
  %i.bt = and i64 %i.bs, %i.bh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.bb, ptr noundef nonnull align 8 dereferenceable(80) %5, i64 80, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.bc, ptr noundef nonnull align 8 dereferenceable(80) %3, i64 80, i1 false)
  %i.bu = sub i64 %.1138, %i.ak
  store i32 2, ptr %i.ao, align 4, !tbaa !49
  store i64 %i.bu, ptr %i.bd, align 8, !tbaa !61
  %i.bv = call noundef zeroext i1 @_ZN12lldb_private18EmulateInstruction19WriteMemoryUnsignedERKNS0_7ContextEmmm(ptr noundef nonnull align 8 dereferenceable(209) %0, ptr noundef nonnull align 8 dereferenceable(248) %4, i64 noundef %.1138, i64 noundef %i.bt, i64 noundef %i.be) #20
  br i1 %i.bv, label %.preheader, label %.critedge, !llvm.loop !96

bb.q:                                             ; preds = %.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %i.bw = add nuw nsw i32 %.077129, 1             ; 2 uses
  %exitcond131.not = icmp eq i32 %i.bw, %.095
  br i1 %exitcond131.not, label %.critedge117.sink.split.sink.split, label %bb.p, !llvm.loop !97

.critedge:                                        ; preds = %bb.p, %.preheader.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %.critedge117.sink.split.sink.split

.critedge117.sink.split.sink.split:               ; preds = %bb.q, %bb.n, %bb.m, %.critedge
  %.14.ph.ph = phi i1 [ false, %.critedge ], [ false, %bb.n ], [ false, %bb.m ], [ true, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %.critedge117.sink.split

.critedge117.sink.split:                          ; preds = %.critedge117.sink.split.sink.split, %_ZN12lldb_private21EmulateInstructionARM11ReadCoreRegEjPb.exit, %bb.k
  %.14.ph = phi i1 [ false, %_ZN12lldb_private21EmulateInstructionARM11ReadCoreRegEjPb.exit ], [ false, %bb.k ], [ %.14.ph.ph, %.critedge117.sink.split.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %.critedge117

.critedge117:                                     ; preds = %.critedge117.sink.split, %bb.a, %bb.f, %bb.c, %bb.g, %bb.d, %bb.e, %bb.b
  %.14 = phi i1 [ false, %bb.g ], [ false, %bb.c ], [ false, %bb.b ], [ true, %bb.a ], [ false, %bb.f ], [ false, %bb.e ], [ false, %bb.d ], [ %.14.ph, %.critedge117.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret i1 %.14
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN12lldb_private21EmulateInstructionARM17EmulateVST1SingleEjNS0_11ARMEncodingE(ptr noundef nonnull align 8 dereferenceable(209) %0, i32 noundef %1, i32 noundef %2) #0 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 9 uses
  %3 = alloca %"class.std::optional", align 8     ; 7 uses
  %4 = alloca %"struct.lldb_private::EmulateInstruction::Context", align 8 ; 14 uses
  %5 = alloca %"class.std::optional", align 8     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i8 0, ptr %i.a, align 1, !tbaa !50
  %i.b = tail call noundef zeroext i1 @_ZN12lldb_private21EmulateInstructionARM15ConditionPassedEj(ptr noundef nonnull align 8 dereferenceable(209) %0, i32 noundef %1)
  br i1 %i.b, label %bb.b, label %bb.t

bb.b:                                             ; preds = %bb.a
  switch i32 %2, label %.critedge91 [
    i32 5, label %bb.c
    i32 0, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.c = lshr i32 %1, 10
  %i.d = and i32 %i.c, 3
  %i.e = lshr i32 %1, 4                           ; 2 uses
  %i.f = and i32 %i.e, 15                         ; 4 uses
  switch i32 %i.d, label %default.unreachable [
    i32 2, label %bb.h
    i32 0, label %bb.d
    i32 1, label %bb.f
    i32 3, label %.critedge91
  ]

bb.d:                                             ; preds = %bb.c
  %i.g = and i32 %1, 16
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %.critedge91, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = lshr i32 %i.f, 1
  br label %bb.k

bb.f:                                             ; preds = %bb.c
  %i.j = zext nneg i32 %i.f to i64                ; 2 uses
  %i.k = and i64 %i.j, 2
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %.critedge91, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = lshr i32 %i.f, 2
  %i.n = and i64 %i.j, 1
  %i.o = icmp eq i64 %i.n, 0
  %. = select i1 %i.o, i32 1, i32 2
  br label %bb.k

bb.h:                                             ; preds = %bb.c
  %i.p = and i32 %1, 64
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %.critedge91, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = and i32 %i.e, 3                          ; 2 uses
  %.off = add nsw i32 %i.r, -1
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %.critedge91, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.not = icmp eq i32 %i.r, 0
  %i.s = lshr i32 %i.f, 3
  %.86 = select i1 %.not, i32 1, i32 4
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.g, %bb.e
  %.070 = phi i32 [ 1, %bb.e ], [ 2, %bb.g ], [ 4, %bb.j ] ; 2 uses
  %.068 = phi i32 [ 8, %bb.e ], [ 16, %bb.g ], [ 32, %bb.j ] ; 2 uses
  %.066 = phi i32 [ %i.i, %bb.e ], [ %i.m, %bb.g ], [ %i.s, %bb.j ]
  %.064 = phi i32 [ 1, %bb.e ], [ %., %bb.g ], [ %.86, %bb.j ]
  %i.t = lshr i32 %1, 18
  %i.u = and i32 %i.t, 16
  %i.v = lshr i32 %1, 12
  %i.w = and i32 %i.v, 15
  %i.x = lshr i32 %1, 16
  %i.y = and i32 %i.x, 15                         ; 5 uses
  %i.z = and i32 %1, 15                           ; 3 uses
  %.not93 = icmp eq i32 %i.z, 15
  %.not94 = icmp eq i32 %i.y, 15
  br i1 %.not94, label %.critedge91, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.aa = load ptr, ptr %0, align 8, !tbaa !25
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 80
  %i.ac = load ptr, ptr %i.ab, align 8
  call void %i.ac(ptr dead_on_unwind nonnull writable sret(%"class.std::optional") align 8 %3, ptr noundef nonnull align 8 dereferenceable(209) %0, i32 noundef 1, i32 noundef %i.y) #20
  switch i32 %i.y, label %bb.n [
    i32 13, label %.thread.i
    i32 14, label %bb.m
  ]

bb.m:                                             ; preds = %bb.l
  br label %.thread.i

bb.n:                                             ; preds = %bb.l
  br label %.thread.i

.thread.i:                                        ; preds = %bb.n, %bb.m, %bb.l
  %.013.ph.i = phi i32 [ 1, %bb.n ], [ 2, %bb.m ], [ 2, %bb.l ]
  %.012.ph.i = phi i32 [ %i.y, %bb.n ], [ 3, %bb.m ], [ 1, %bb.l ]
  %i.ad = call noundef i64 @_ZN12lldb_private18EmulateInstruction20ReadRegisterUnsignedEN4lldb12RegisterKindEjmPb(ptr noundef nonnull align 8 dereferenceable(209) %0, i32 noundef %.013.ph.i, i32 noundef %.012.ph.i, i64 noundef 0, ptr noundef nonnull %i.a) #20 ; 2 uses
  %i.ae = trunc i64 %i.ad to i32                  ; 2 uses
  %i.af = load i8, ptr %i.a, align 1, !tbaa !50, !range !51, !noundef !52
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %bb.o, label %.critedge91.critedge

bb.o:                                             ; preds = %.thread.i
  %i.ah = and i64 %i.ad, 4294967295
  %i.ai = add nsw i32 %.064, -1
  %i.aj = and i32 %i.ai, %i.ae
  %.not85 = icmp eq i32 %i.aj, 0
  br i1 %.not85, label %bb.p, label %.critedge91.critedge

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  store i32 0, ptr %4, align 8, !tbaa !45
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 3 uses
  store i32 13, ptr %i.ak, align 4, !tbaa !49
  br i1 %.not93, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.al = call noundef i32 @_ZN12lldb_private21EmulateInstructionARM11ReadCoreRegEjPb(ptr noundef nonnull align 8 dereferenceable(209) %0, i32 noundef %i.z, ptr noundef nonnull %i.a)
  %i.am = load i8, ptr %i.a, align 1, !tbaa !50, !range !51, !noundef !52
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %bb.r, label %.critedge91.critedge92

bb.r:                                             ; preds = %bb.q
  %cond = icmp eq i32 %i.z, 13
  %spec.select = select i1 %cond, i32 %.070, i32 %i.al ; 2 uses
  store i32 8, ptr %4, align 8, !tbaa !45
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.ao, ptr noundef nonnull align 8 dereferenceable(80) %3, i64 80, i1 false)
  %i.ap = zext i32 %spec.select to i64
  store i32 0, ptr %i.ak, align 4, !tbaa !49
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 88
  store i64 %i.ap, ptr %i.aq, align 8, !tbaa !61
  %i.ar = add i32 %spec.select, %i.ae
  %i.as = zext i32 %i.ar to i64
  %i.at = call noundef zeroext i1 @_ZN12lldb_private18EmulateInstruction21WriteRegisterUnsignedERKNS0_7ContextEN4lldb12RegisterKindEjm(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(248) %4, i32 noundef 1, i32 noundef %i.y, i64 noundef %i.as) #20
  br i1 %i.at, label %bb.s, label %.critedge91.critedge92

bb.s:                                             ; preds = %bb.r, %bb.p
  %i.au = or disjoint i32 %i.w, %i.u
  %i.av = or disjoint i32 %i.au, 256              ; 2 uses
  %i.aw = call noundef i64 @_ZN12lldb_private18EmulateInstruction20ReadRegisterUnsignedEN4lldb12RegisterKindEjmPb(ptr noundef nonnull align 8 dereferenceable(184) %0, i32 noundef 1, i32 noundef %i.av, i64 noundef 0, ptr noundef nonnull %i.a) #20
  %i.ax = load i8, ptr %i.a, align 1, !tbaa !50, !range !51, !noundef !52
  %i.ay = trunc nuw i8 %i.ax to i1
  br i1 %i.ay, label %.critedge90, label %.critedge91.critedge92

.critedge90:                                      ; preds = %bb.s
  %i.az = mul nuw nsw i32 %.066, %.068
  %i.ba = zext nneg i32 %i.az to i64
  %i.bb = lshr i64 %i.aw, %i.ba
  %i.bc = zext nneg i32 %.068 to i64
  %notmask.i = shl nsw i64 -1, %i.bc
  %i.bd = xor i64 %notmask.i, -1
  %i.be = and i64 %i.bb, %i.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.bf = load ptr, ptr %0, align 8, !tbaa !25
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 80
  %i.bh = load ptr, ptr %i.bg, align 8
  call void %i.bh(ptr dead_on_unwind nonnull writable sret(%"class.std::optional") align 8 %5, ptr noundef nonnull align 8 dereferenceable(209) %0, i32 noundef 1, i32 noundef %i.av) #20
  store i32 11, ptr %4, align 8, !tbaa !45
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.bi, ptr noundef nonnull align 8 dereferenceable(80) %5, i64 80, i1 false)
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.bj, ptr noundef nonnull align 8 dereferenceable(80) %3, i64 80, i1 false)
end_hunk_1
