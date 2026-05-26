inline.NumInlined: 1842
inline.NumDeleted: 1067
begin_hunk_0_@_ZN6hermes2vm7JSError16recordStackTraceENS0_6HandleIS1_EERNS0_7RuntimeEbPNS0_9CodeBlockEPKNS_4inst4InstE:bb.a
  call void @_ZdlPvm(ptr noundef nonnull %i.rl, i64 noundef 24) #16
  %.sroa.0.0.copyload.i.i139.pre = load i64, ptr %0, align 8, !tbaa !62
  %.pre = and i64 %.sroa.0.0.copyload.i.i139.pre, 281474976710655
  %.pre225 = inttoptr i64 %.pre to ptr
  br label %_ZNSt10unique_ptrISt6vectorIN6hermes2vm14StackTraceInfoESaIS3_EESt14default_deleteIS5_EEaSEOS8_.exit

_ZNSt10unique_ptrISt6vectorIN6hermes2vm14StackTraceInfoESaIS3_EESt14default_deleteIS5_EEaSEOS8_.exit: ; preds = %_ZN6hermes2vmL25getCallStackFunctionNamesERNS0_7RuntimeEbm.exit, %_ZNKSt14default_deleteISt6vectorIN6hermes2vm14StackTraceInfoESaIS3_EEEclEPS5_.exit.i.i.i.i
  %.pre-phi226 = phi ptr [ %i.rj, %_ZN6hermes2vmL25getCallStackFunctionNamesERNS0_7RuntimeEbm.exit ], [ %.pre225, %_ZNKSt14default_deleteISt6vectorIN6hermes2vm14StackTraceInfoESaIS3_EEEclEPS5_.exit.i.i.i.i ]
  %i.rs = getelementptr inbounds nuw i8, ptr %.pre-phi226, i64 44 ; 3 uses
  %.sroa.0.0.copyload.i.i.i140 = load i64, ptr %.sroa.047.4.i, align 8, !tbaa !62 ; 2 uses
  %i.rt = and i64 %.sroa.0.0.copyload.i.i.i140, 281474976710655 ; 2 uses
  %i.ru = load ptr, ptr %i.kh, align 8, !tbaa !509
  %i.rv = ptrtoint ptr %i.rs to i64
  %i.rw = and i64 %i.rv, 562949949227008
  %i.rx = inttoptr i64 %i.rw to ptr
  %i.ry = icmp eq ptr %i.ru, %i.rx
  br i1 %i.ry, label %bb.cl, label %bb.ck, !prof !69

bb.ck:                                            ; preds = %_ZNSt10unique_ptrISt6vectorIN6hermes2vm14StackTraceInfoESaIS3_EESt14default_deleteIS5_EEaSEOS8_.exit
  %i.rz = inttoptr i64 %i.rt to ptr
  call void @_ZN6hermes2vm7HadesGC16writeBarrierSlowEPKNS0_13GCPointerBaseEPKNS0_6GCCellE(ptr noundef nonnull align 8 dereferenceable(8112) %i.kg, ptr noundef nonnull align 4 dereferenceable(4) %i.rs, ptr noundef %i.rz) #17
  br label %bb.cl

.thread206:                                       ; preds = %"_ZZN6hermes2vm7JSError16recordStackTraceENS0_6HandleIS1_EERNS0_7RuntimeEbPNS0_9CodeBlockEPKNS_4inst4InstEENK3$_0clES7_.exit115", %"_ZZN6hermes2vm7JSError16recordStackTraceENS0_6HandleIS1_EERNS0_7RuntimeEbPNS0_9CodeBlockEPKNS_4inst4InstEENK3$_0clES7_.exit"
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  %i.sa = load ptr, ptr %i.w, align 8, !tbaa !10  ; 3 uses
  %.not.i.i.i.i.i145 = icmp eq ptr %i.sa, null
  br i1 %.not.i.i.i.i.i145, label %_ZNKSt14default_deleteISt6vectorIN6hermes2vm14StackTraceInfoESaIS3_EEEclEPS5_.exit.i, label %bb.cm

bb.cl:                                            ; preds = %bb.ck, %_ZNSt10unique_ptrISt6vectorIN6hermes2vm14StackTraceInfoESaIS3_EESt14default_deleteIS5_EEaSEOS8_.exit
  %.not.i.i.i.i.i141 = icmp eq i64 %i.rt, 0
  %i.sb = sub i64 %.sroa.0.0.copyload.i.i.i140, %i.ko
  %i.sc = trunc i64 %i.sb to i32
  %.sroa.0.0.i.i.i.i.i142 = select i1 %.not.i.i.i.i.i141, i32 0, i32 %i.sc
  store i32 %.sroa.0.0.i.i.i.i.i142, ptr %i.rs, align 4, !tbaa !3
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  br label %_ZNSt10unique_ptrISt6vectorIN6hermes2vm14StackTraceInfoESaIS3_EESt14default_deleteIS5_EED2Ev.exit

bb.cm:                                            ; preds = %.thread206
  %i.sd = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.se = load ptr, ptr %i.sd, align 8, !tbaa !13
  %i.sf = ptrtoint ptr %i.se to i64
  %i.sg = ptrtoint ptr %i.sa to i64
  %i.sh = sub i64 %i.sf, %i.sg
  call void @_ZdlPvm(ptr noundef nonnull %i.sa, i64 noundef %i.sh) #16
  br label %_ZNKSt14default_deleteISt6vectorIN6hermes2vm14StackTraceInfoESaIS3_EEEclEPS5_.exit.i

_ZNKSt14default_deleteISt6vectorIN6hermes2vm14StackTraceInfoESaIS3_EEEclEPS5_.exit.i: ; preds = %bb.cm, %.thread206
  call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef 24) #16
  br label %_ZNSt10unique_ptrISt6vectorIN6hermes2vm14StackTraceInfoESaIS3_EESt14default_deleteIS5_EED2Ev.exit

_ZNSt10unique_ptrISt6vectorIN6hermes2vm14StackTraceInfoESaIS3_EESt14default_deleteIS5_EED2Ev.exit: ; preds = %_ZNK6hermes2vm14StackFramePtrTILb0EE18getCalleeCodeBlockERNS0_7RuntimeE.exit, %bb.cl, %_ZNKSt14default_deleteISt6vectorIN6hermes2vm14StackTraceInfoESaIS3_EEEclEPS5_.exit.i, %bb.a
  %.7 = phi i32 [ 1, %bb.a ], [ 1, %_ZNK6hermes2vm14StackFramePtrTILb0EE18getCalleeCodeBlockERNS0_7RuntimeE.exit ], [ 1, %bb.cl ], [ 0, %_ZNKSt14default_deleteISt6vectorIN6hermes2vm14StackTraceInfoESaIS3_EEEclEPS5_.exit.i ]
  ret i32 %.7
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes2vm7JSError12getDebugInfoEPNS0_9CodeBlockEj(ptr dead_on_unwind noalias writable sret(%"class.hermes::OptValue.211") align 4 %0, ptr noundef nonnull %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call i64 @_ZNK6hermes2vm9CodeBlock29getDebugSourceLocationsOffsetEv(ptr noundef nonnull align 8 dereferenceable(40) %1) #17 ; 2 uses
  %i.b = and i64 %i.a, 4294967296
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 28
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(33) %0, i8 0, i64 28, i1 false)
  store i32 -1, ptr %i.c, align 4, !tbaa !344
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %i.d, align 4, !tbaa !346
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !tbaa !348
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !351  ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 240 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !354  ; 2 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %bb.d, label %_ZNK6hermes3hbc14BCProviderBase12getDebugInfoEv.exit

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !368
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(280) %i.g) #17, !inline_history !381
  %.pre.i = load ptr, ptr %i.h, align 8, !tbaa !354
  br label %_ZNK6hermes3hbc14BCProviderBase12getDebugInfoEv.exit

_ZNK6hermes3hbc14BCProviderBase12getDebugInfoEv.exit: ; preds = %bb.c, %bb.d
  %i.l = phi ptr [ %.pre.i, %bb.d ], [ %i.i, %bb.c ]
  %.sroa.0.0.extract.trunc = trunc i64 %i.a to i32
  tail call void @_ZNK6hermes3hbc9DebugInfo21getLocationForAddressEjj(ptr dead_on_unwind writable sret(%"class.hermes::OptValue.211") align 4 %0, ptr noundef nonnull align 8 dereferenceable(136) %i.l, i32 noundef %.sroa.0.0.extract.trunc, i32 noundef %2) #17
  br label %bb.e

bb.e:                                             ; preds = %_ZNK6hermes3hbc14BCProviderBase12getDebugInfoEv.exit, %bb.b
  ret void
}

declare i64 @_ZNK6hermes2vm9CodeBlock29getDebugSourceLocationsOffsetEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

declare void @_ZNK6hermes3hbc9DebugInfo21getLocationForAddressEjj(ptr dead_on_unwind writable sret(%"class.hermes::OptValue.211") align 4, ptr noundef nonnull align 8 dereferenceable(136), i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden ptr @_ZN6hermes2vm7JSError22getFunctionNameAtIndexERNS0_7RuntimeENS0_6HandleIS1_EEm(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 9240 ; 2 uses
  %i.b = tail call noundef ptr @_ZN6hermes2vm15IdentifierTable13getStringPrimERNS0_7RuntimeENS0_8SymbolIDE(ptr noundef nonnull align 8 dereferenceable(84) %i.a, ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 14) #17
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = or i64 %i.c, -844424930131968            ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !39   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 192 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !54   ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 200
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !55
  %i.k = icmp ult ptr %i.h, %i.j
  br i1 %i.k, label %bb.b, label %bb.c, !prof !69

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.l, ptr %i.g, align 8, !tbaa !54
  store i64 %i.d, ptr %i.h, align 8, !tbaa !62
  br label %_ZN6hermes2vm13MutableHandleINS0_15StringPrimitiveEEC2ERNS0_15HandleRootOwnerEPS2_.exit

bb.c:                                             ; preds = %bb.a
  %i.m = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.f, i64 %i.d) #17
  br label %_ZN6hermes2vm13MutableHandleINS0_15StringPrimitiveEEC2ERNS0_15HandleRootOwnerEPS2_.exit

_ZN6hermes2vm13MutableHandleINS0_15StringPrimitiveEEC2ERNS0_15HandleRootOwnerEPS2_.exit: ; preds = %bb.b, %bb.c
  %.0.i.i.i.i.i.i = phi ptr [ %i.h, %bb.b ], [ %i.m, %bb.c ] ; 4 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %1, align 8, !tbaa !62
  %i.n = and i64 %.sroa.0.0.copyload.i.i, 281474976710655
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 44
  %i.q = load i32, ptr %i.p, align 4, !tbaa !473  ; 2 uses
  %.not31 = icmp eq i32 %i.q, 0
  br i1 %.not31, label %_ZN6hermes2vm13MutableHandleINS0_15StringPrimitiveEEC2ERNS0_15HandleRootOwnerEPS2_.exit._crit_edge, label %bb.d

_ZN6hermes2vm13MutableHandleINS0_15StringPrimitiveEEC2ERNS0_15HandleRootOwnerEPS2_.exit._crit_edge: ; preds = %_ZN6hermes2vm13MutableHandleINS0_15StringPrimitiveEEC2ERNS0_15HandleRootOwnerEPS2_.exit
  %.pre = load i64, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !70
  br label %bb.j

bb.d:                                             ; preds = %_ZN6hermes2vm13MutableHandleINS0_15StringPrimitiveEEC2ERNS0_15HandleRootOwnerEPS2_.exit
  %i.r = ptrtoint ptr %0 to i64                   ; 5 uses
  %i.s = zext i32 %i.q to i64
  %i.t = add i64 %i.s, %i.r
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = and i64 %2, 4294967295
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.w
  %.sroa.0.0.copyload.i = load i32, ptr %i.x, align 4, !tbaa !3 ; 7 uses
  %i.y = trunc i32 %.sroa.0.0.copyload.i to i8
  %i.z = and i8 %i.y, 15
  switch i8 %i.z, label %default.unreachable [
    i8 0, label %bb.e
    i8 8, label %bb.e
    i8 1, label %bb.f
    i8 9, label %bb.f
    i8 2, label %bb.g
    i8 10, label %bb.g
    i8 3, label %bb.h
    i8 11, label %bb.h
    i8 4, label %bb.i
    i8 12, label %bb.i
    i8 5, label %_ZN6hermes2vm10dyn_vmcastINS0_15StringPrimitiveEEEPT_NS0_11HermesValueE.exit
    i8 13, label %_ZN6hermes2vm10dyn_vmcastINS0_15StringPrimitiveEEEPT_NS0_11HermesValueE.exit
    i8 6, label %_ZN6hermes2vm10dyn_vmcastINS0_15StringPrimitiveEEEPT_NS0_11HermesValueE.exit
    i8 14, label %_ZN6hermes2vm10dyn_vmcastINS0_15StringPrimitiveEEEPT_NS0_11HermesValueE.exit
    i8 7, label %_ZN6hermes2vm10dyn_vmcastINS0_15StringPrimitiveEEEPT_NS0_11HermesValueE.exit
    i8 15, label %_ZN6hermes2vm10dyn_vmcastINS0_15StringPrimitiveEEEPT_NS0_11HermesValueE.exit
  ]

bb.e:                                             ; preds = %bb.d, %bb.d
  %.not.i.i.i.i.i = icmp eq i32 %.sroa.0.0.copyload.i, 0
  %i.aa = zext i32 %.sroa.0.0.copyload.i to i64
  %i.ab = add i64 %i.aa, %i.r
  %i.ac = select i1 %.not.i.i.i.i.i, i64 -281474976710656, i64 %i.ab
  br label %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit.thread28

bb.f:                                             ; preds = %bb.d, %bb.d
  %i.ad = and i32 %.sroa.0.0.copyload.i, -8
  %i.ae = zext i32 %i.ad to i64
  %i.af = add i64 %i.ae, %i.r
  br label %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit.thread28

bb.g:                                             ; preds = %bb.d, %bb.d
  %i.ag = and i32 %.sroa.0.0.copyload.i, -8
  %i.ah = zext i32 %i.ag to i64
  %i.ai = add i64 %i.ah, %i.r
  br label %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit.thread28

bb.h:                                             ; preds = %bb.d, %bb.d
  %i.aj = and i32 %.sroa.0.0.copyload.i, -8
  %i.ak = zext i32 %i.aj to i64
  %i.al = add i64 %i.ak, %i.r
  %i.am = inttoptr i64 %i.al to ptr
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load double, ptr %i.an, align 8, !tbaa !512 ; 2 uses
  %i.ap = fcmp uno double %i.ao, 0.000000e+00
  br i1 %i.ap, label %_ZN6hermes2vm10dyn_vmcastINS0_15StringPrimitiveEEEPT_NS0_11HermesValueE.exit, label %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit, !prof !309

bb.i:                                             ; preds = %bb.d, %bb.d
  %i.aq = ashr i32 %.sroa.0.0.copyload.i, 3
  %i.ar = sitofp i32 %i.aq to double
  br label %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit

default.unreachable:                              ; preds = %bb.d
  unreachable

_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit: ; preds = %bb.h, %bb.i
  %.sroa.05.0.i.in = phi double [ %i.ar, %bb.i ], [ %i.ao, %bb.h ]
  %.sroa.05.0.i = bitcast double %.sroa.05.0.i.in to i64 ; 2 uses
  %i.as = icmp ugt i64 %.sroa.05.0.i, -844424930131969
  br i1 %i.as, label %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit.thread28, label %_ZN6hermes2vm10dyn_vmcastINS0_15StringPrimitiveEEEPT_NS0_11HermesValueE.exit

_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit.thread28: ; preds = %bb.g, %bb.f, %bb.e, %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit
  %.sroa.05.0.i30 = phi i64 [ %.sroa.05.0.i, %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit ], [ %i.ai, %bb.g ], [ %i.af, %bb.f ], [ %i.ac, %bb.e ]
  %i.at = and i64 %.sroa.05.0.i30, 281474976710655 ; 2 uses
  %i.au = inttoptr i64 %i.at to ptr
  %i.av = load i32, ptr %i.au, align 4
  %i.aw = add i32 %i.av, -50331648
  %i.ax = icmp ult i32 %i.aw, 134217728
  %i.ay = or disjoint i64 %i.at, -844424930131968
  %i.az = select i1 %i.ax, i64 %i.ay, i64 -844424930131968
  br label %_ZN6hermes2vm10dyn_vmcastINS0_15StringPrimitiveEEEPT_NS0_11HermesValueE.exit

_ZN6hermes2vm10dyn_vmcastINS0_15StringPrimitiveEEEPT_NS0_11HermesValueE.exit: ; preds = %bb.h, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit, %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit.thread28
  %i.ba = phi i64 [ %i.az, %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit.thread28 ], [ -844424930131968, %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit ], [ -844424930131968, %bb.d ], [ -844424930131968, %bb.d ], [ -844424930131968, %bb.d ], [ -844424930131968, %bb.d ], [ -844424930131968, %bb.d ], [ -844424930131968, %bb.d ], [ -844424930131968, %bb.h ] ; 2 uses
  store i64 %i.ba, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !70
  br label %bb.j

bb.j:                                             ; preds = %_ZN6hermes2vm13MutableHandleINS0_15StringPrimitiveEEC2ERNS0_15HandleRootOwnerEPS2_.exit._crit_edge, %_ZN6hermes2vm10dyn_vmcastINS0_15StringPrimitiveEEEPT_NS0_11HermesValueE.exit
  %i.bb = phi i64 [ %.pre, %_ZN6hermes2vm13MutableHandleINS0_15StringPrimitiveEEC2ERNS0_15HandleRootOwnerEPS2_.exit._crit_edge ], [ %i.ba, %_ZN6hermes2vm10dyn_vmcastINS0_15StringPrimitiveEEEPT_NS0_11HermesValueE.exit ] ; 4 uses
  %i.bc = icmp ugt i64 %i.bb, -844424930131969
  %i.bd = and i64 %i.bb, 281474976710655          ; 4 uses
  %i.be = icmp ne i64 %i.bd, 0
  %i.bf = and i1 %i.bc, %i.be
  br i1 %i.bf, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bg = inttoptr i64 %i.bd to ptr
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !431
  %i.bj = and i32 %i.bi, 2147483647
  %i.bk = icmp eq i32 %i.bj, 0
  br i1 %i.bk, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k, %bb.j
  %.sroa.0.0.copyload.i.i15 = load i64, ptr %1, align 8, !tbaa !62
  %i.bl = and i64 %.sroa.0.0.copyload.i.i15, 281474976710655
  %i.bm = inttoptr i64 %i.bl to ptr
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !7  ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !314
  %i.br = load ptr, ptr %i.bo, align 8, !tbaa !10 ; 2 uses
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = ptrtoint ptr %i.br to i64
  %i.bu = sub i64 %i.bs, %i.bt
  %i.bv = ashr exact i64 %i.bu, 4                 ; 2 uses
  %.not.i.i = icmp ult i64 %2, %i.bv
  br i1 %.not.i.i, label %_ZNSt6vectorIN6hermes2vm14StackTraceInfoESaIS2_EE2atEm.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.19, i64 noundef %2, i64 noundef %i.bv) #19
  unreachable

_ZNSt6vectorIN6hermes2vm14StackTraceInfoESaIS2_EE2atEm.exit: ; preds = %bb.l
  %i.bw = getelementptr inbounds nuw [16 x i8], ptr %i.br, i64 %2
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !338 ; 2 uses
  %.not = icmp eq ptr %i.bx, null
  br i1 %.not, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIN6hermes2vm14StackTraceInfoESaIS2_EE2atEm.exit
  %i.by = tail call i32 @_ZNK6hermes2vm9CodeBlock18getNameMayAllocateEv(ptr noundef nonnull align 8 dereferenceable(40) %i.bx) #17
  %i.bz = tail call noundef ptr @_ZN6hermes2vm15IdentifierTable13getStringPrimERNS0_7RuntimeENS0_8SymbolIDE(ptr noundef nonnull align 8 dereferenceable(84) %i.a, ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 %i.by) #17
  %i.ca = ptrtoint ptr %i.bz to i64               ; 2 uses
  %i.cb = or i64 %i.ca, -844424930131968          ; 2 uses
  store i64 %i.cb, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !70
  %.pre32 = and i64 %i.ca, 281474976710655
  br label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIN6hermes2vm14StackTraceInfoESaIS2_EE2atEm.exit, %bb.n, %bb.k
  %.pre-phi = phi i64 [ %i.bd, %_ZNSt6vectorIN6hermes2vm14StackTraceInfoESaIS2_EE2atEm.exit ], [ %.pre32, %bb.n ], [ %i.bd, %bb.k ] ; 2 uses
  %i.cc = phi i64 [ %i.bb, %_ZNSt6vectorIN6hermes2vm14StackTraceInfoESaIS2_EE2atEm.exit ], [ %i.cb, %bb.n ], [ %i.bb, %bb.k ]
  %i.cd = icmp ugt i64 %i.cc, -844424930131969
  %i.ce = icmp ne i64 %.pre-phi, 0
  %i.cf = and i1 %i.cd, %i.ce
  br i1 %i.cf, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cg = inttoptr i64 %.pre-phi to ptr
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 4
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !431
  %i.cj = and i32 %i.ci, 2147483647
  %i.ck = icmp eq i32 %i.cj, 0
  %spec.select = select i1 %i.ck, ptr @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, ptr %.0.i.i.i.i.i.i
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.sroa.011.0 = phi ptr [ @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, %bb.o ], [ %spec.select, %bb.p ]
  ret ptr %.sroa.011.0
}

declare noundef ptr @_ZN6hermes2vm15IdentifierTable13getStringPrimERNS0_7RuntimeENS0_8SymbolIDE(ptr noundef nonnull align 8 dereferenceable(84), ptr noundef nonnull align 8 dereferenceable(9816), i32) local_unnamed_addr #2

declare i32 @_ZNK6hermes2vm9CodeBlock18getNameMayAllocateEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN6hermes2vm7JSError25appendFunctionNameAtIndexERNS0_7RuntimeENS0_6HandleIS1_EEmRN4llvh15SmallVectorImplIDsEE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr readonly captures(none) %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call ptr @_ZN6hermes2vm7JSError22getFunctionNameAtIndexERNS0_7RuntimeENS0_6HandleIS1_EEm(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %1, i64 noundef %2)
  %i.b = load i64, ptr %i.a, align 8, !tbaa !70   ; 2 uses
  %i.c = icmp ugt i64 %i.b, -844424930131969
  %i.d = and i64 %i.b, 281474976710655            ; 2 uses
  %i.e = icmp ne i64 %i.d, 0
  %i.f = and i1 %i.c, %i.e                        ; 2 uses
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = inttoptr i64 %i.d to ptr
  tail call void @_ZNK6hermes2vm15StringPrimitive17appendUTF16StringERN4llvh15SmallVectorImplIDsEE(ptr noundef nonnull align 4 dereferenceable(8) %i.g, ptr noundef nonnull align 8 dereferenceable(16) %3) #17
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 %i.f
}

declare void @_ZNK6hermes2vm15StringPrimitive17appendUTF16StringERN4llvh15SmallVectorImplIDsEE(ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare noundef i32 @_ZN6hermes2vm7Runtime18raiseStackOverflowENS1_17StackOverflowKindE(ptr noundef nonnull align 8 dereferenceable(9816), i32 noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN6hermes2vm18isUncatchableErrorENS0_11HermesValueE(i64) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(80) ptr @_ZN6hermes2vm12SmallXStringIDsLj32EE6appendEPKDs(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.0.i = phi i64 [ 0, %bb.a ], [ %i.d, %bb.b ]   ; 6 uses
  %.idx4 = shl nuw nsw i64 %.0.i, 1               ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %.idx4
  %i.b = load i16, ptr %i.a, align 2, !tbaa !388
  %i.c = icmp eq i16 %i.b, 0
  %i.d = add i64 %.0.i, 1
  br i1 %i.c, label %_ZNSt11char_traitsIDsE6lengthEPKDs.exit, label %bb.b, !llvm.loop !516

_ZNSt11char_traitsIDsE6lengthEPKDs.exit:          ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !52
  %i.g = zext i32 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !53   ; 3 uses
  %i.j = zext i32 %i.i to i64                     ; 2 uses
  %i.k = sub nsw i64 %i.g, %i.j
  %i.l = icmp ugt i64 %.0.i, %i.k
  br i1 %i.l, label %.thread, label %bb.c

.thread:                                          ; preds = %_ZNSt11char_traitsIDsE6lengthEPKDs.exit
  %i.m = add nsw i64 %.0.i, %i.j
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.n, i64 noundef %i.m, i64 noundef 2) #17
  %.pre7.pre.i = load i32, ptr %i.h, align 8, !tbaa !53
  br label %bb.d

bb.c:                                             ; preds = %_ZNSt11char_traitsIDsE6lengthEPKDs.exit
  %.not.i.i = icmp eq i64 %.0.i, 0
  br i1 %.not.i.i, label %_ZN4llvh15SmallVectorImplIDsE6appendIPKDsvEEvT_S5_.exit, label %bb.d

bb.d:                                             ; preds = %.thread, %bb.c
  %.pre7.i7 = phi i32 [ %.pre7.pre.i, %.thread ], [ %i.i, %bb.c ]
  %i.o = load ptr, ptr %0, align 8, !tbaa !51
  %i.p = zext i32 %.pre7.i7 to i64
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %i.p
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.q, ptr nonnull align 2 %1, i64 %.idx4, i1 false)
  %.pre.i = load i32, ptr %i.h, align 8, !tbaa !53
  br label %_ZN4llvh15SmallVectorImplIDsE6appendIPKDsvEEvT_S5_.exit

_ZN4llvh15SmallVectorImplIDsE6appendIPKDsvEEvT_S5_.exit: ; preds = %bb.c, %bb.d
  %i.r = phi i32 [ %i.i, %bb.c ], [ %.pre.i, %bb.d ]
  %i.s = trunc i64 %.0.i to i32
  %i.t = add i32 %i.r, %i.s
  store i32 %i.t, ptr %i.h, align 8, !tbaa !53
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(80) ptr @_ZN6hermes2vm12SmallXStringIDsLj32EE6appendEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr %1, i64 %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !52
  %i.c = zext i32 %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !53   ; 2 uses
  %i.f = zext i32 %i.e to i64                     ; 3 uses
  %i.g = sub nsw i64 %i.c, %i.f
  %i.h = icmp ugt i64 %2, %i.g
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = add i64 %2, %i.f
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.j, i64 noundef %i.i, i64 noundef 2) #17
  %.pre.i = load i32, ptr %i.d, align 8, !tbaa !53 ; 2 uses
  %.pre7.i = zext i32 %.pre.i to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.pre-phi.i = phi i64 [ %.pre7.i, %bb.b ], [ %i.f, %bb.a ] ; 2 uses
  %i.k = phi i32 [ %.pre.i, %bb.b ], [ %i.e, %bb.a ]
end_hunk_0
begin_hunk_1_@_ZN6hermes2vm12SmallXStringIDsLj32EE6appendEN4llvh9StringRefE:bb.a

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %_ZN4llvh15SmallVectorImplIDsE6appendIPKhvEEvT_S5_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, label %vec.epilog.ph, !prof !395

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec9 = and i64 %2, 9223372036854775804       ; 4 uses
  %i.aa = and i64 %2, 3
  %i.ab = shl nuw i64 %n.vec9, 1
  %i.ac = getelementptr i8, ptr %i.n, i64 %i.ab
  %i.ad = getelementptr i8, ptr %1, i64 %n.vec9
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index10 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next14, %vec.epilog.vector.body ] ; 3 uses
  %i.ae = shl i64 %index10, 1
  %next.gep11 = getelementptr i8, ptr %i.n, i64 %i.ae
  %next.gep12 = getelementptr i8, ptr %1, i64 %index10
  %wide.load13 = load <4 x i8>, ptr %next.gep12, align 1, !tbaa !66, !alias.scope !517
  %i.af = zext <4 x i8> %wide.load13 to <4 x i16>
  store <4 x i16> %i.af, ptr %next.gep11, align 2, !tbaa !388, !alias.scope !520, !noalias !517
  %index.next14 = add nuw i64 %index10, 4         ; 2 uses
  %i.ag = icmp eq i64 %index.next14, %n.vec9
  br i1 %i.ag, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !523

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n15 = icmp eq i64 %2, %n.vec9
  br i1 %cmp.n15, label %_ZN4llvh15SmallVectorImplIDsE6appendIPKhvEEvT_S5_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.preheader:               ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %2, %iter.check ], [ %2, %vector.memcheck ], [ %i.q, %vec.epilog.iter.check ], [ %i.aa, %vec.epilog.middle.block ]
  %.0811.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.n, %iter.check ], [ %i.n, %vector.memcheck ], [ %i.s, %vec.epilog.iter.check ], [ %i.ac, %vec.epilog.middle.block ]
  %.0910.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %1, %iter.check ], [ %1, %vector.memcheck ], [ %i.t, %vec.epilog.iter.check ], [ %i.ad, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i.i.i = phi i64 [ %i.al, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %.0811.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.0811.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %.0910.i.i.i.i.i.i.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.0910.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %i.ah = load i8, ptr %.0910.i.i.i.i.i.i.i.i.i, align 1, !tbaa !66
  %i.ai = zext i8 %i.ah to i16
  store i16 %i.ai, ptr %.0811.i.i.i.i.i.i.i.i.i, align 2, !tbaa !388
  %i.aj = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i.i.i, i64 1
  %i.ak = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.i.i, i64 2
  %i.al = add nsw i64 %.012.i.i.i.i.i.i.i.i.i, -1
  %i.am = icmp samesign ugt i64 %.012.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.am, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %_ZN4llvh15SmallVectorImplIDsE6appendIPKhvEEvT_S5_.exit, !llvm.loop !524

_ZN4llvh15SmallVectorImplIDsE6appendIPKhvEEvT_S5_.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %middle.block, %vec.epilog.middle.block, %bb.c
  %i.an = trunc i64 %2 to i32
  %i.ao = add i32 %i.k, %i.an
  store i32 %i.ao, ptr %i.d, align 8, !tbaa !53
  ret ptr %0
}

declare noundef i64 @_ZN6hermes14numberToStringEdPcm(double noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare noundef i32 @_ZNK6hermes2vm9CodeBlock16getVirtualOffsetEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK6hermes3hbc9DebugInfo15getFilenameByIDB5cxx11Ej(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(136) %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.b, ptr %3, align 8, !tbaa !525
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.c, align 8, !tbaa !384
  store i8 0, ptr %i.b, align 8, !tbaa !66
  %i.d = zext i32 %2 to i64
  %i.e = load ptr, ptr %1, align 8, !tbaa !526
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.d
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !529  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !531
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = call { ptr, i64 } @_ZN6hermes3hbc18getStringFromEntryERKNS_16StringTableEntryEN4llvh8ArrayRefIhEERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 4 dereferenceable(8) %i.f, ptr %i.h, i64 %i.m, ptr noundef nonnull align 8 dereferenceable(32) %3) #17 ; 2 uses
  %i.o = extractvalue { ptr, i64 } %i.n, 0        ; 3 uses
  %i.p = extractvalue { ptr, i64 } %i.n, 1        ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !532)
  %.not.i = icmp eq ptr %i.o, null
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.q, ptr %0, align 8, !tbaa !525, !alias.scope !532
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.r, align 8, !tbaa !384, !alias.scope !532
  store i8 0, ptr %i.q, align 8, !tbaa !66, !alias.scope !532
  br label %_ZNK4llvh9StringRef3strB5cxx11Ev.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17, !noalias !532
  store i64 %i.p, ptr %i.a, align 8, !tbaa !62, !noalias !532
  %i.s = icmp ugt i64 %i.p, 15
  br i1 %i.s, label %bb.d, label %._crit_edge.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.t = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #17 ; 2 uses
  store ptr %i.t, ptr %0, align 8, !tbaa !383, !alias.scope !532
  %i.u = load i64, ptr %i.a, align 8, !tbaa !62, !noalias !532
  store i64 %i.u, ptr %i.q, align 8, !tbaa !66, !alias.scope !532
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.d, %bb.c
  %i.v = phi ptr [ %i.t, %bb.d ], [ %i.q, %bb.c ] ; 2 uses
  switch i64 %i.p, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i
  %i.w = load i8, ptr %i.o, align 1, !tbaa !66
  store i8 %i.w, ptr %i.v, align 1, !tbaa !66
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i

bb.f:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.v, ptr nonnull align 1 %i.o, i64 %i.p, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i: ; preds = %bb.f, %bb.e, %._crit_edge.i.i.i
  %i.x = load i64, ptr %i.a, align 8, !tbaa !62, !noalias !532 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.x, ptr %i.y, align 8, !tbaa !384, !alias.scope !532
  %i.z = load ptr, ptr %0, align 8, !tbaa !383, !alias.scope !532
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.x
  store i8 0, ptr %i.aa, align 1, !tbaa !66
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17, !noalias !532
  br label %_ZNK4llvh9StringRef3strB5cxx11Ev.exit

_ZNK4llvh9StringRef3strB5cxx11Ev.exit:            ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i
  %i.ab = load ptr, ptr %3, align 8, !tbaa !383   ; 2 uses
  %i.ac = icmp eq ptr %i.ab, %i.b
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNK4llvh9StringRef3strB5cxx11Ev.exit
  %i.ad = load i64, ptr %i.b, align 8, !tbaa !66
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.ae) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNK4llvh9StringRef3strB5cxx11Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  ret void
}

declare ptr @_ZN6hermes2vm7JSArray6createERNS0_7RuntimeEjj(ptr noundef nonnull align 8 dereferenceable(9816), i32 noundef, i32 noundef) local_unnamed_addr #2

declare { i32, i64 } @_ZN6hermes2vm10JSCallSite6createERNS0_7RuntimeENS0_6HandleINS0_7JSErrorEEEj(ptr noundef nonnull align 8 dereferenceable(9816), ptr, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN6hermes2vm7JSError23popFramesUntilInclusiveERNS0_7RuntimeENS0_6HandleIS1_EENS4_INS0_8CallableEEE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr readonly captures(none) %1, ptr readonly captures(none) %2) local_unnamed_addr #7 align 2 {
bb.a:
  %.sroa.0.0.copyload.i.i = load i64, ptr %1, align 8, !tbaa !62
  %i.a = and i64 %.sroa.0.0.copyload.i.i, 281474976710655
  %i.b = inttoptr i64 %i.a to ptr                 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !7    ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !314
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !10
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = ashr exact i64 %i.j, 4
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %i.k, ptr %i.l, align 8, !tbaa !315
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %2, align 8, !tbaa !62
  %i.m = and i64 %.sroa.0.0.copyload.i.i.i, 281474976710655 ; 2 uses
  %.not29.i = icmp eq i64 %i.m, 0
  br i1 %.not29.i, label %_ZN6hermes2vmL16getLeafCodeBlockENS0_6HandleINS0_8CallableEEERNS0_7RuntimeE.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.n = ptrtoint ptr %0 to i64
  br label %bb.b

bb.b:                                             ; preds = %select.unfold.i, %.lr.ph.i
  %.01330.in.i = phi i64 [ %i.m, %.lr.ph.i ], [ %i.t, %select.unfold.i ]
  %.01330.i = inttoptr i64 %.01330.in.i to ptr    ; 3 uses
  %i.o = load i32, ptr %.01330.i, align 4         ; 2 uses
  %i.p = add i32 %i.o, -1291845632
  %i.q = icmp ult i32 %i.p, -67108864
  br i1 %i.q, label %bb.c, label %_ZN6hermes2vmL16getLeafCodeBlockENS0_6HandleINS0_8CallableEEERNS0_7RuntimeE.exit

bb.c:                                             ; preds = %bb.b
  %.mask.i.i.i.i.i.i.i.i.i = and i32 %i.o, -16777216
  %.not27.i = icmp eq i32 %.mask.i.i.i.i.i.i.i.i.i, 1140850688
  br i1 %.not27.i, label %select.unfold.i, label %_ZN6hermes2vmL16getLeafCodeBlockENS0_6HandleINS0_8CallableEEERNS0_7RuntimeE.exit.thread

select.unfold.i:                                  ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %.01330.i, i64 24
  %.sroa.0.0.copyload.i.i.i.i = load i32, ptr %i.r, align 4, !tbaa !3 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %.sroa.0.0.copyload.i.i.i.i, 0
  %i.s = zext i32 %.sroa.0.0.copyload.i.i.i.i to i64
  %i.t = add i64 %i.s, %i.n                       ; 2 uses
  %.not33.i = icmp eq i64 %i.t, 0
  %.not.i = or i1 %.not.i.i.i.i.i.i, %.not33.i
  br i1 %.not.i, label %_ZN6hermes2vmL16getLeafCodeBlockENS0_6HandleINS0_8CallableEEERNS0_7RuntimeE.exit.thread, label %bb.b

_ZN6hermes2vmL16getLeafCodeBlockENS0_6HandleINS0_8CallableEEERNS0_7RuntimeE.exit: ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %.01330.i, i64 24
  %i.v = load i64, ptr %i.u, align 8, !tbaa !459  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1520
  %i.x = load i64, ptr %i.w, align 8, !tbaa !62   ; 2 uses
  %i.y = xor i64 %i.x, %i.v
  %i.z = inttoptr i64 %i.y to ptr
  %.not = icmp eq i64 %i.x, %i.v
  br i1 %.not, label %_ZN6hermes2vmL16getLeafCodeBlockENS0_6HandleINS0_8CallableEEERNS0_7RuntimeE.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZN6hermes2vmL16getLeafCodeBlockENS0_6HandleINS0_8CallableEEERNS0_7RuntimeE.exit
  %.sroa.0.0.copyload.i.i14 = load i64, ptr %1, align 8, !tbaa !62
  %i.aa = and i64 %.sroa.0.0.copyload.i.i14, 281474976710655
  %i.ab = inttoptr i64 %i.aa to ptr               ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !7  ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !314 ; 2 uses
  %i.ag = load ptr, ptr %i.ad, align 8, !tbaa !10 ; 3 uses
  %.not27 = icmp eq ptr %i.af, %i.ag
  br i1 %.not27, label %_ZN6hermes2vmL16getLeafCodeBlockENS0_6HandleINS0_8CallableEEERNS0_7RuntimeE.exit.thread, label %_ZNSt6vectorIN6hermes2vm14StackTraceInfoESaIS2_EE2atEm.exit.preheader

_ZNSt6vectorIN6hermes2vm14StackTraceInfoESaIS2_EE2atEm.exit.preheader: ; preds = %bb.d
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = ashr exact i64 %i.aj, 4
  br label %_ZNSt6vectorIN6hermes2vm14StackTraceInfoESaIS2_EE2atEm.exit

_ZNSt6vectorIN6hermes2vm14StackTraceInfoESaIS2_EE2atEm.exit: ; preds = %_ZNSt6vectorIN6hermes2vm14StackTraceInfoESaIS2_EE2atEm.exit.preheader, %.critedge
  %.01026 = phi i64 [ %i.an, %.critedge ], [ 0, %_ZNSt6vectorIN6hermes2vm14StackTraceInfoESaIS2_EE2atEm.exit.preheader ] ; 2 uses
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %.01026
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !338
  %.not12 = icmp eq ptr %i.am, %i.z
  %i.an = add nuw i64 %.01026, 1                  ; 3 uses
  br i1 %.not12, label %bb.e, label %.critedge

bb.e:                                             ; preds = %_ZNSt6vectorIN6hermes2vm14StackTraceInfoESaIS2_EE2atEm.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  store i64 %i.an, ptr %i.ao, align 8, !tbaa !315
  br label %_ZN6hermes2vmL16getLeafCodeBlockENS0_6HandleINS0_8CallableEEERNS0_7RuntimeE.exit.thread

.critedge:                                        ; preds = %_ZNSt6vectorIN6hermes2vm14StackTraceInfoESaIS2_EE2atEm.exit
  %exitcond.not = icmp eq i64 %i.an, %i.ak
  br i1 %exitcond.not, label %_ZN6hermes2vmL16getLeafCodeBlockENS0_6HandleINS0_8CallableEEERNS0_7RuntimeE.exit.thread, label %_ZNSt6vectorIN6hermes2vm14StackTraceInfoESaIS2_EE2atEm.exit, !llvm.loop !535

_ZN6hermes2vmL16getLeafCodeBlockENS0_6HandleINS0_8CallableEEERNS0_7RuntimeE.exit.thread: ; preds = %select.unfold.i, %bb.c, %.critedge, %bb.d, %bb.a, %bb.e, %_ZN6hermes2vmL16getLeafCodeBlockENS0_6HandleINS0_8CallableEEERNS0_7RuntimeE.exit
  ret void
}

declare void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212), i64) local_unnamed_addr #2

declare i64 @_ZN6hermes2vm11HiddenClass12findPropertyENS0_12PseudoHandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS0_13PropertyFlagsERNS0_23NamedPropertyDescriptorE(ptr, ptr noundef nonnull align 8 dereferenceable(9816), i32, i16, ptr noundef nonnull align 4 dereferenceable(8)) local_unnamed_addr #2

declare { i32, i64 } @_ZN6hermes2vm8JSObject24getNamedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS2_INS0_11HermesValueEEENS0_11PropOpFlagsEPNS0_18PropertyCacheEntryE(ptr, ptr noundef nonnull align 8 dereferenceable(9816), i32, ptr, i32, ptr noundef) local_unnamed_addr #2

declare { i32, i64 } @_ZN6hermes2vm15StringPrimitive13createDynamicERNS0_7RuntimeEN4llvh8ArrayRefIDsEE(ptr noundef nonnull align 8 dereferenceable(9816), ptr, i64) local_unnamed_addr #2

declare { i32, i64 } @_ZN6hermes2vm23ExternalStringPrimitiveIDsE6createINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeEOT_(ptr noundef nonnull align 8 dereferenceable(9816), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes2vm15StringPrimitive13arrayToStringIDsEENSt7__cxx1112basic_stringIT_St11char_traitsIS5_ESaIS5_EEEN4llvh8ArrayRefIS5_EE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string.304") align 8 %0, ptr %1, i64 %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !536
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %i.b, align 8, !tbaa !537
  %.idx = shl nuw nsw i64 %2, 1                   ; 3 uses
  %i.c = icmp ugt i64 %2, 7
  br i1 %i.c, label %bb.b, label %._crit_edge.i.i

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ugt i64 %2, 2305843009213693951
  br i1 %i.d, label %bb.c, label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit.i.i

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #19
  unreachable

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit.i.i: ; preds = %bb.b
  %i.e = add nuw nsw i64 %.idx, 2
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #20 ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !310
  store i64 %2, ptr %i.a, align 8, !tbaa !66
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit.i.i, %bb.a
  %.pre7.i.i = phi ptr [ %i.f, %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  switch i64 %2, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEC2IPKDsvEET_S8_RKS3_.exit
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.g = load i16, ptr %1, align 2, !tbaa !388
  store i16 %i.g, ptr %.pre7.i.i, align 2, !tbaa !388
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEC2IPKDsvEET_S8_RKS3_.exit

bb.e:                                             ; preds = %._crit_edge.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %.pre7.i.i, ptr align 2 %1, i64 %.idx, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEC2IPKDsvEET_S8_RKS3_.exit

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEC2IPKDsvEET_S8_RKS3_.exit: ; preds = %._crit_edge.i.i, %bb.d, %bb.e
  store i64 %2, ptr %i.b, align 8, !tbaa !537
  %i.h = getelementptr inbounds nuw i8, ptr %.pre7.i.i, i64 %.idx
  store i16 0, ptr %i.h, align 2, !tbaa !388
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #8

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #9

declare i32 @_ZN6hermes2vm8JSObject25defineOwnPropertyInternalENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS0_19DefinePropertyFlagsENS2_INS0_11HermesValueEEENS0_11PropOpFlagsE(ptr, ptr noundef nonnull align 8 dereferenceable(9816), i32, i32, ptr, i32) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #10

declare noundef i32 @_ZN6hermes2vm7Runtime15raiseRangeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816), ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden { i32, i64 } @_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEjb(ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = icmp ugt i32 %1, 65535
  br i1 %i.a, label %bb.e, label %bb.b, !prof !309

bb.b:                                             ; preds = %bb.a
  br i1 %2, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.b = tail call { i32, i64 } @_ZN6hermes2vm22DynamicStringPrimitiveIcLb0EE6createERNS0_7RuntimeEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 noundef %1) #17
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.c = tail call { i32, i64 } @_ZN6hermes2vm22DynamicStringPrimitiveIDsLb0EE6createERNS0_7RuntimeEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 noundef %1) #17
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  br i1 %2, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.d = tail call { i32, i64 } @_ZN6hermes2vm23ExternalStringPrimitiveIcE6createERNS0_7RuntimeEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 noundef %1) #17
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.e = tail call { i32, i64 } @_ZN6hermes2vm23ExternalStringPrimitiveIDsE6createERNS0_7RuntimeEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 noundef %1) #17
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.d, %bb.c
  %.pn = phi { i32, i64 } [ %i.b, %bb.c ], [ %i.c, %bb.d ], [ %i.d, %bb.f ], [ %i.e, %bb.g ]
  ret { i32, i64 } %.pn
}

declare { i32, i64 } @_ZN6hermes2vm22DynamicStringPrimitiveIcLb0EE6createERNS0_7RuntimeEj(ptr noundef nonnull align 8 dereferenceable(9816), i32 noundef) local_unnamed_addr #2

declare { i32, i64 } @_ZN6hermes2vm22DynamicStringPrimitiveIDsLb0EE6createERNS0_7RuntimeEj(ptr noundef nonnull align 8 dereferenceable(9816), i32 noundef) local_unnamed_addr #2

declare { i32, i64 } @_ZN6hermes2vm23ExternalStringPrimitiveIcE6createERNS0_7RuntimeEj(ptr noundef nonnull align 8 dereferenceable(9816), i32 noundef) local_unnamed_addr #2

declare { i32, i64 } @_ZN6hermes2vm23ExternalStringPrimitiveIDsE6createERNS0_7RuntimeEj(ptr noundef nonnull align 8 dereferenceable(9816), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes2vm13StringBuilder16appendStringPrimENS0_6HandleINS0_15StringPrimitiveEEEj(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.sroa.0.0.copyload.i.i = load i64, ptr %1, align 8, !tbaa !62
  %i.a = and i64 %.sroa.0.0.copyload.i.i, 281474976710655
  %i.b = inttoptr i64 %i.a to ptr                 ; 9 uses
  %i.c = load i32, ptr %i.b, align 4              ; 5 uses
  %i.d = and i32 %i.c, 16777216
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.u

bb.b:                                             ; preds = %bb.a
  %i.f = icmp ugt i32 %i.c, 150994943
  br i1 %i.f, label %bb.c, label %bb.d, !prof !309

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !383
  br label %_ZNK6hermes2vm15StringPrimitive18castToASCIIPointerEv.exit

bb.d:                                             ; preds = %bb.b
  %.mask.i.i.i.i.i.i.i.i = and i32 %i.c, 234881024
  switch i32 %.mask.i.i.i.i.i.i.i.i, label %bb.g [
    i32 134217728, label %bb.e
    i32 67108864, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  br label %_ZNK6hermes2vm15StringPrimitive18castToASCIIPointerEv.exit
end_hunk_1
begin_hunk_2_@_ZN4llvh8DenseMapIPKN6hermes2vm9CodeBlockEjNS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_jEEE4growEj:_ZN4llvh8DenseMapIPKN6hermes2vm9CodeBlockEjNS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_jEEE15allocateBucketsEj.exit
  %i.c = load ptr, ptr %0, align 8, !tbaa !335    ; 4 uses
  %i.d = add i32 %1, -1
  %i.e = zext i32 %i.d to i64                     ; 2 uses
  %i.f = lshr i64 %i.e, 1
  %i.g = or i64 %i.f, %i.e                        ; 2 uses
  %i.h = lshr i64 %i.g, 2
  %i.i = or i64 %i.h, %i.g                        ; 2 uses
  %i.j = lshr i64 %i.i, 4
  %i.k = or i64 %i.j, %i.i                        ; 2 uses
  %i.l = lshr i64 %i.k, 8
  %i.m = or i64 %i.l, %i.k                        ; 2 uses
  %i.n = lshr i64 %i.m, 16
  %i.o = or i64 %i.n, %i.m
  %i.p = trunc nuw i64 %i.o to i32
  %i.q = add i32 %i.p, 1
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %i.q, i32 64) ; 2 uses
  store i32 %.sroa.speculated, ptr %i.a, align 8, !tbaa !561
  %i.r = zext i32 %.sroa.speculated to i64
  %i.s = shl nuw nsw i64 %i.r, 4
  %i.t = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #21 ; 9 uses
  store ptr %i.t, ptr %0, align 8, !tbaa !335
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.a, label %bb.b

bb.a:                                             ; preds = %_ZN4llvh8DenseMapIPKN6hermes2vm9CodeBlockEjNS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_jEEE15allocateBucketsEj.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.u, align 8, !tbaa !566
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.v, align 4, !tbaa !567
  %i.w = load i32, ptr %i.a, align 8, !tbaa !561  ; 2 uses
  %i.x = zext i32 %i.w to i64
  %.idx.i = shl nuw nsw i64 %i.x, 4               ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 %.idx.i
  %.not6.i = icmp eq i32 %i.w, 0
  br i1 %.not6.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes2vm9CodeBlockEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E9initEmptyEv.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.z = add nsw i64 %.idx.i, -16                 ; 2 uses
  %i.aa = lshr exact i64 %i.z, 4
  %i.ab = add nuw nsw i64 %i.aa, 1
  %xtraiter31 = and i64 %i.ab, 7                  ; 2 uses
  %lcmp.mod32.not = icmp eq i64 %xtraiter31, 0
  br i1 %lcmp.mod32.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.07.i.prol = phi ptr [ %i.ac, %.lr.ph.i.prol ], [ %i.t, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter33 = phi i64 [ %prol.iter33.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  store ptr inttoptr (i64 -8 to ptr), ptr %.07.i.prol, align 8, !tbaa !373
  %i.ac = getelementptr inbounds nuw i8, ptr %.07.i.prol, i64 16 ; 2 uses
  %prol.iter33.next = add i64 %prol.iter33, 1     ; 2 uses
  %prol.iter33.cmp.not = icmp eq i64 %prol.iter33.next, %xtraiter31
  br i1 %prol.iter33.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !568

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.07.i.unr = phi ptr [ %i.t, %.lr.ph.i.preheader ], [ %i.ac, %.lr.ph.i.prol ]
  %i.ad = icmp ult i64 %i.z, 112
  br i1 %i.ad, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes2vm9CodeBlockEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E9initEmptyEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.07.i = phi ptr [ %i.al, %.lr.ph.i ], [ %.07.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  store ptr inttoptr (i64 -8 to ptr), ptr %.07.i, align 8, !tbaa !373
  %i.ae = getelementptr inbounds nuw i8, ptr %.07.i, i64 16
  store ptr inttoptr (i64 -8 to ptr), ptr %i.ae, align 8, !tbaa !373
  %i.af = getelementptr inbounds nuw i8, ptr %.07.i, i64 32
  store ptr inttoptr (i64 -8 to ptr), ptr %i.af, align 8, !tbaa !373
  %i.ag = getelementptr inbounds nuw i8, ptr %.07.i, i64 48
  store ptr inttoptr (i64 -8 to ptr), ptr %i.ag, align 8, !tbaa !373
  %i.ah = getelementptr inbounds nuw i8, ptr %.07.i, i64 64
  store ptr inttoptr (i64 -8 to ptr), ptr %i.ah, align 8, !tbaa !373
  %i.ai = getelementptr inbounds nuw i8, ptr %.07.i, i64 80
  store ptr inttoptr (i64 -8 to ptr), ptr %i.ai, align 8, !tbaa !373
  %i.aj = getelementptr inbounds nuw i8, ptr %.07.i, i64 96
  store ptr inttoptr (i64 -8 to ptr), ptr %i.aj, align 8, !tbaa !373
  %i.ak = getelementptr inbounds nuw i8, ptr %.07.i, i64 112
  store ptr inttoptr (i64 -8 to ptr), ptr %i.ak, align 8, !tbaa !373
  %i.al = getelementptr inbounds nuw i8, ptr %.07.i, i64 128 ; 2 uses
  %.not.i.7 = icmp eq ptr %i.al, %i.y
  br i1 %.not.i.7, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes2vm9CodeBlockEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E9initEmptyEv.exit, label %.lr.ph.i, !llvm.loop !569

bb.b:                                             ; preds = %_ZN4llvh8DenseMapIPKN6hermes2vm9CodeBlockEjNS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_jEEE15allocateBucketsEj.exit
  %i.am = zext i32 %i.b to i64
  %.idx = shl nuw nsw i64 %i.am, 4
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i32 0, ptr %i.ao, align 8, !tbaa !566
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.ap, align 4, !tbaa !567
  %i.aq = load i32, ptr %i.a, align 8, !tbaa !561 ; 2 uses
  %i.ar = zext i32 %i.aq to i64
  %.idx.i.i = shl nuw nsw i64 %i.ar, 4            ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.t, i64 %.idx.i.i
  %.not6.i.i = icmp eq i32 %i.aq, 0
  br i1 %.not6.i.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes2vm9CodeBlockEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E9initEmptyEv.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.b
  %i.at = add nsw i64 %.idx.i.i, -16              ; 2 uses
  %i.au = lshr exact i64 %i.at, 4
  %i.av = add nuw nsw i64 %i.au, 1
  %xtraiter = and i64 %i.av, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.07.i.i.prol = phi ptr [ %i.aw, %.lr.ph.i.i.prol ], [ %i.t, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  store ptr inttoptr (i64 -8 to ptr), ptr %.07.i.i.prol, align 8, !tbaa !373
  %i.aw = getelementptr inbounds nuw i8, ptr %.07.i.i.prol, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !570

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.07.i.i.unr = phi ptr [ %i.t, %.lr.ph.i.i.preheader ], [ %i.aw, %.lr.ph.i.i.prol ]
  %i.ax = icmp ult i64 %i.at, 112
  br i1 %i.ax, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes2vm9CodeBlockEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E9initEmptyEv.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.07.i.i = phi ptr [ %i.bf, %.lr.ph.i.i ], [ %.07.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 9 uses
  store ptr inttoptr (i64 -8 to ptr), ptr %.07.i.i, align 8, !tbaa !373
  %i.ay = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 16
  store ptr inttoptr (i64 -8 to ptr), ptr %i.ay, align 8, !tbaa !373
  %i.az = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 32
  store ptr inttoptr (i64 -8 to ptr), ptr %i.az, align 8, !tbaa !373
  %i.ba = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 48
  store ptr inttoptr (i64 -8 to ptr), ptr %i.ba, align 8, !tbaa !373
  %i.bb = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 64
  store ptr inttoptr (i64 -8 to ptr), ptr %i.bb, align 8, !tbaa !373
  %i.bc = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 80
  store ptr inttoptr (i64 -8 to ptr), ptr %i.bc, align 8, !tbaa !373
  %i.bd = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 96
  store ptr inttoptr (i64 -8 to ptr), ptr %i.bd, align 8, !tbaa !373
  %i.be = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 112
  store ptr inttoptr (i64 -8 to ptr), ptr %i.be, align 8, !tbaa !373
  %i.bf = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 128 ; 2 uses
  %.not.i.i.7 = icmp eq ptr %i.bf, %i.as
  br i1 %.not.i.i.7, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes2vm9CodeBlockEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E9initEmptyEv.exit.i, label %.lr.ph.i.i, !llvm.loop !569

_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes2vm9CodeBlockEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E9initEmptyEv.exit.i: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.b
  %.not19.i = icmp eq i32 %i.b, 0
  br i1 %.not19.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes2vm9CodeBlockEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E18moveFromOldBucketsEPSB_SE_.exit, label %.lr.ph.i6

.lr.ph.i6:                                        ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes2vm9CodeBlockEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E9initEmptyEv.exit.i, %bb.f
  %i.bg = phi i32 [ %i.cj, %bb.f ], [ 0, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes2vm9CodeBlockEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E9initEmptyEv.exit.i ] ; 3 uses
  %.020.i = phi ptr [ %i.ck, %bb.f ], [ %i.c, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes2vm9CodeBlockEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E9initEmptyEv.exit.i ] ; 3 uses
  %i.bh = load ptr, ptr %.020.i, align 8, !tbaa !373 ; 4 uses
  %magicptr.i = ptrtoint ptr %i.bh to i64         ; 2 uses
  switch i64 %magicptr.i, label %bb.c [
    i64 -8, label %bb.f
    i64 -16, label %bb.f
  ]

bb.c:                                             ; preds = %.lr.ph.i6
  %i.bi = load i32, ptr %i.a, align 8, !tbaa !561 ; 2 uses
  %i.bj = icmp ne i32 %i.bi, 0
  tail call void @llvm.assume(i1 %i.bj)
  %i.bk = trunc i64 %magicptr.i to i32            ; 2 uses
  %i.bl = lshr i32 %i.bk, 4
  %i.bm = lshr i32 %i.bk, 9
  %i.bn = xor i32 %i.bl, %i.bm
  %i.bo = add i32 %i.bi, -1                       ; 2 uses
  %.02944.i.i.i = and i32 %i.bo, %i.bn            ; 2 uses
  %i.bp = zext nneg i32 %.02944.i.i.i to i64
  %i.bq = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %i.bp ; 3 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !373 ; 2 uses
  %i.bs = icmp eq ptr %i.bh, %i.br
  br i1 %i.bs, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes2vm9CodeBlockEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E15LookupBucketForIS6_EEbRKT_RPSB_.exit.i, label %.lr.ph.i.i.i, !prof !562

.lr.ph.i.i.i:                                     ; preds = %bb.c, %bb.e
  %i.bt = phi ptr [ %i.cd, %bb.e ], [ %i.br, %bb.c ] ; 2 uses
  %i.bu = phi ptr [ %i.cc, %bb.e ], [ %i.bq, %bb.c ] ; 2 uses
  %.02947.i.i.i = phi i32 [ %.029.i.i.i, %bb.e ], [ %.02944.i.i.i, %bb.c ]
  %.02746.i.i.i = phi i32 [ %i.bz, %bb.e ], [ 1, %bb.c ] ; 2 uses
  %.03245.i.i.i = phi ptr [ %spec.select.i.i.i, %bb.e ], [ null, %bb.c ] ; 4 uses
  %i.bv = icmp eq ptr %i.bt, inttoptr (i64 -8 to ptr)
  br i1 %i.bv, label %bb.d, label %bb.e, !prof !69

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %.not.i.i.i = icmp eq ptr %.03245.i.i.i, null
  %i.bw = select i1 %.not.i.i.i, ptr %i.bu, ptr %.03245.i.i.i
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes2vm9CodeBlockEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E15LookupBucketForIS6_EEbRKT_RPSB_.exit.i

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.bx = icmp eq ptr %i.bt, inttoptr (i64 -16 to ptr)
  %i.by = icmp eq ptr %.03245.i.i.i, null
  %or.cond.not.i.i.i = select i1 %i.bx, i1 %i.by, i1 false
  %spec.select.i.i.i = select i1 %or.cond.not.i.i.i, ptr %i.bu, ptr %.03245.i.i.i
  %i.bz = add i32 %.02746.i.i.i, 1
  %i.ca = add i32 %.02746.i.i.i, %.02947.i.i.i
  %.029.i.i.i = and i32 %i.ca, %i.bo              ; 2 uses
  %i.cb = zext i32 %.029.i.i.i to i64
  %i.cc = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %i.cb ; 3 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !373 ; 2 uses
  %i.ce = icmp eq ptr %i.bh, %i.cd
  br i1 %i.ce, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes2vm9CodeBlockEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E15LookupBucketForIS6_EEbRKT_RPSB_.exit.i, label %.lr.ph.i.i.i, !prof !563, !llvm.loop !564

_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes2vm9CodeBlockEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E15LookupBucketForIS6_EEbRKT_RPSB_.exit.i: ; preds = %bb.e, %bb.d, %bb.c
  %.sink.i.i.i = phi ptr [ %i.bw, %bb.d ], [ %i.bq, %bb.c ], [ %i.cc, %bb.e ] ; 2 uses
  store ptr %i.bh, ptr %.sink.i.i.i, align 8, !tbaa !373
  %i.cf = getelementptr inbounds nuw i8, ptr %.sink.i.i.i, i64 8
  %i.cg = getelementptr inbounds nuw i8, ptr %.020.i, i64 8
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !3
  store i32 %i.ch, ptr %i.cf, align 8, !tbaa !3
  %i.ci = add i32 %i.bg, 1                        ; 2 uses
  store i32 %i.ci, ptr %i.ao, align 8, !tbaa !566
  br label %bb.f

bb.f:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes2vm9CodeBlockEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E15LookupBucketForIS6_EEbRKT_RPSB_.exit.i, %.lr.ph.i6, %.lr.ph.i6
  %i.cj = phi i32 [ %i.ci, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes2vm9CodeBlockEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E15LookupBucketForIS6_EEbRKT_RPSB_.exit.i ], [ %i.bg, %.lr.ph.i6 ], [ %i.bg, %.lr.ph.i6 ]
  %i.ck = getelementptr inbounds nuw i8, ptr %.020.i, i64 16 ; 2 uses
  %.not.i7 = icmp eq ptr %i.ck, %i.an
  br i1 %.not.i7, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes2vm9CodeBlockEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E18moveFromOldBucketsEPSB_SE_.exit, label %.lr.ph.i6, !llvm.loop !571

_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes2vm9CodeBlockEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E18moveFromOldBucketsEPSB_SE_.exit: ; preds = %bb.f, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes2vm9CodeBlockEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E9initEmptyEv.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #17
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes2vm9CodeBlockEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E9initEmptyEv.exit

_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes2vm9CodeBlockEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E9initEmptyEv.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.a, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes2vm9CodeBlockEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E18moveFromOldBucketsEPSB_SE_.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #15

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { builtin nounwind }
attributes #17 = { nounwind }
attributes #18 = { nounwind willreturn memory(read) }
attributes #19 = { noreturn nounwind }
attributes #20 = { builtin nounwind allocsize(0) }
attributes #21 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"p1 _ZTSSt6vectorIN6hermes2vm14StackTraceInfoESaIS2_EE", !9, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!11, !12, i64 0}
!11 = !{!"_ZTSNSt12_Vector_baseIN6hermes2vm14StackTraceInfoESaIS2_EE17_Vector_impl_dataE", !12, i64 0, !12, i64 8, !12, i64 16}
!12 = !{!"p1 _ZTSN6hermes2vm14StackTraceInfoE", !9, i64 0}
!13 = !{!11, !12, i64 16}
!14 = !{!15, !16, i64 4}
!15 = !{!"_ZTSN6hermes8OptValueIjEE", !4, i64 0, !16, i64 4}
!16 = !{!"bool", !5, i64 0}
!17 = !{i8 0, i8 2}
!18 = !{}
!19 = !{!16, !16, i64 0}
!20 = !{!21, !36, i64 216}
!21 = !{!"_ZTSN6hermes2vm8Metadata7BuilderE", !22, i64 0, !23, i64 8, !23, i64 56, !23, i64 104, !23, i64 152, !33, i64 200, !15, i64 208, !36, i64 216}
!22 = !{!"p1 omnipotent char", !9, i64 0}
!23 = !{!"_ZTSSt3mapIhPKcSt4lessIhESaISt4pairIKhS1_EEE", !24, i64 0}
!24 = !{!"_ZTSSt8_Rb_treeIhSt4pairIKhPKcESt10_Select1stIS4_ESt4lessIhESaIS4_EE", !25, i64 0}
!25 = !{!"_ZTSNSt8_Rb_treeIhSt4pairIKhPKcESt10_Select1stIS4_ESt4lessIhESaIS4_EE13_Rb_tree_implIS8_Lb1EEE", !26, i64 0, !28, i64 8}
!26 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessIhEE", !27, i64 0}
!27 = !{!"_ZTSSt4lessIhE"}
!28 = !{!"_ZTSSt15_Rb_tree_header", !29, i64 0, !32, i64 32}
!29 = !{!"_ZTSSt18_Rb_tree_node_base", !30, i64 0, !31, i64 8, !31, i64 16, !31, i64 24}
!30 = !{!"_ZTSSt14_Rb_tree_color", !5, i64 0}
!31 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !9, i64 0}
!32 = !{!"long", !5, i64 0}
!33 = !{!"_ZTSN6hermes8OptValueINS_2vm8Metadata9ArrayDataEEE", !34, i64 0, !16, i64 4}
!34 = !{!"_ZTSN6hermes2vm8Metadata9ArrayDataE", !35, i64 0, !5, i64 1, !5, i64 2, !5, i64 3}
!35 = !{!"_ZTSN6hermes2vm8Metadata9ArrayData9ArrayTypeE", !5, i64 0}
!36 = !{!"p1 _ZTSN6hermes2vm6VTableE", !9, i64 0}
!37 = !{!38, !38, i64 0}
!38 = !{!"p1 _ZTSN6hermes2vm15HandleRootOwnerE", !9, i64 0}
!39 = !{!40, !41, i64 8}
!40 = !{!"_ZTSN6hermes2vm15HandleRootOwnerE", !41, i64 8}
!41 = !{!"p1 _ZTSN6hermes2vm7GCScopeE", !9, i64 0}
!42 = !{!43, !41, i64 8}
!43 = !{!"_ZTSN6hermes2vm7GCScopeE", !38, i64 0, !41, i64 8, !5, i64 16, !44, i64 144, !50, i64 192, !50, i64 200, !4, i64 208}
!44 = !{!"_ZTSN4llvh11SmallVectorIPN6hermes2vm17PinnedHermesValueELj4EEE", !45, i64 0, !49, i64 16}
!45 = !{!"_ZTSN4llvh15SmallVectorImplIPN6hermes2vm17PinnedHermesValueEEE", !46, i64 0}
!46 = !{!"_ZTSN4llvh23SmallVectorTemplateBaseIPN6hermes2vm17PinnedHermesValueELb1EEE", !47, i64 0}
!47 = !{!"_ZTSN4llvh25SmallVectorTemplateCommonIPN6hermes2vm17PinnedHermesValueEvEE", !48, i64 0}
!48 = !{!"_ZTSN4llvh15SmallVectorBaseE", !9, i64 0, !4, i64 8, !4, i64 12}
!49 = !{!"_ZTSN4llvh18SmallVectorStorageIPN6hermes2vm17PinnedHermesValueELj4EEE", !5, i64 0}
!50 = !{!"p1 _ZTSN6hermes2vm17PinnedHermesValueE", !9, i64 0}
!51 = !{!48, !9, i64 0}
!52 = !{!48, !4, i64 12}
!53 = !{!48, !4, i64 8}
!54 = !{!43, !50, i64 192}
!55 = !{!43, !50, i64 200}
!56 = !{!43, !4, i64 208}
!57 = !{!58, !50, i64 0}
!58 = !{!"_ZTSSt16reverse_iteratorIPKN6hermes2vm17PinnedHermesValueEE", !50, i64 0}
!59 = !{!60}
!60 = distinct !{!60, !61, !"_ZNK6hermes2vm10NativeArgs5beginEv: argument 0"}
!61 = distinct !{!61, !"_ZNK6hermes2vm10NativeArgs5beginEv"}
!62 = !{!32, !32, i64 0}
!63 = !{!64}
!64 = distinct !{!64, !65, !"_ZN6hermes2vm15HandleRootOwner17makeMutableHandleINS0_8JSObjectEEENS0_13MutableHandleIT_EEPS5_: argument 0"}
!65 = distinct !{!65, !"_ZN6hermes2vm15HandleRootOwner17makeMutableHandleINS0_8JSObjectEEENS0_13MutableHandleIT_EEPS5_"}
!66 = !{!5, !5, i64 0}
!67 = !{!68, !4, i64 4}
!68 = !{!"_ZTSN6hermes2vm18PropertyDescriptorE", !5, i64 0, !4, i64 4}
!69 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!70 = !{!71, !32, i64 0}
!71 = !{!"_ZTSN6hermes2vm11HermesValueE", !32, i64 0}
!72 = distinct !{!72, !73}
!73 = !{!"llvm.loop.mustprogress"}
!74 = !{!75, !32, i64 9480}
!75 = !{!"_ZTSN6hermes2vm7RuntimeE", !40, i64 0, !76, i64 16, !77, i64 24, !77, i64 32, !77, i64 40, !77, i64 48, !77, i64 56, !77, i64 64, !77, i64 72, !77, i64 80, !77, i64 88, !77, i64 96, !77, i64 104, !77, i64 112, !77, i64 120, !77, i64 128, !77, i64 136, !77, i64 144, !77, i64 152, !77, i64 160, !77, i64 168, !77, i64 176, !77, i64 184, !77, i64 192, !77, i64 200, !77, i64 208, !77, i64 216, !77, i64 224, !77, i64 232, !77, i64 240, !77, i64 248, !77, i64 256, !77, i64 264, !77, i64 272, !77, i64 280, !77, i64 288, !77, i64 296, !77, i64 304, !77, i64 312, !77, i64 320, !77, i64 328, !77, i64 336, !77, i64 344, !77, i64 352, !77, i64 360, !77, i64 368, !77, i64 376, !77, i64 384, !77, i64 392, !77, i64 400, !77, i64 408, !77, i64 416, !77, i64 424, !77, i64 432, !77, i64 440, !77, i64 448, !77, i64 456, !77, i64 464, !77, i64 472, !77, i64 480, !77, i64 488, !77, i64 496, !77, i64 504, !77, i64 512, !77, i64 520, !77, i64 528, !77, i64 536, !77, i64 544, !77, i64 552, !77, i64 560, !77, i64 568, !77, i64 576, !77, i64 584, !77, i64 592, !77, i64 600, !77, i64 608, !77, i64 616, !77, i64 624, !77, i64 632, !77, i64 640, !77, i64 648, !77, i64 656, !77, i64 664, !77, i64 672, !77, i64 680, !77, i64 688, !77, i64 696, !77, i64 704, !77, i64 712, !77, i64 720, !77, i64 728, !77, i64 736, !78, i64 744, !78, i64 752, !79, i64 760, !16, i64 824, !16, i64 824, !16, i64 824, !16, i64 824, !16, i64 824, !84, i64 825, !85, i64 832, !92, i64 840, !97, i64 856, !216, i64 8968, !221, i64 8992, !226, i64 9016, !226, i64 9040, !16, i64 9064, !16, i64 9065, !16, i64 9066, !16, i64 9067, !16, i64 9068, !16, i64 9069, !16, i64 9070, !5, i64 9071, !16, i64 9072, !16, i64 9073, !4, i64 9076, !114, i64 9080, !5, i64 9088, !119, i64 9224, !4, i64 9232, !231, i64 9240, !246, i64 9328, !251, i64 9360, !258, i64 9368, !258, i64 9376, !259, i64 9384, !260, i64 9392, !265, i64 9408, !266, i64 9416, !50, i64 9432, !50, i64 9440, !50, i64 9448, !103, i64 9456, !268, i64 9472, !269, i64 9480, !270, i64 9496, !5, i64 9560, !271, i64 9568, !275, i64 9592, !280, i64 9616, !16, i64 9640, !285, i64 9648, !4, i64 9728, !4, i64 9732, !292, i64 9736, !299, i64 9744, !301, i64 9752, !306, i64 9776, !307, i64 9808}
!76 = !{!"_ZTSN6hermes2vm6GCBase11GCCallbacksE"}
!77 = !{!"_ZTSN6hermes2vm17PinnedHermesValueE", !71, i64 0}
!78 = !{!"p1 _ZTSN6hermes2vm8JSObjectE", !9, i64 0}
!79 = !{!"_ZTSN4llvh11SmallVectorIN6hermes8OptValueINS1_2vm16RegExpMatchRangeEEELj4EEE", !80, i64 0, !83, i64 16}
!80 = !{!"_ZTSN4llvh15SmallVectorImplIN6hermes8OptValueINS1_2vm16RegExpMatchRangeEEEEE", !81, i64 0}
!81 = !{!"_ZTSN4llvh23SmallVectorTemplateBaseIN6hermes8OptValueINS1_2vm16RegExpMatchRangeEEELb1EEE", !82, i64 0}
!82 = !{!"_ZTSN4llvh25SmallVectorTemplateCommonIN6hermes8OptValueINS1_2vm16RegExpMatchRangeEEEvEE", !48, i64 0}
!83 = !{!"_ZTSN4llvh18SmallVectorStorageIN6hermes8OptValueINS1_2vm16RegExpMatchRangeEEELj4EEE", !5, i64 0}
!84 = !{!"_ZTSN6hermes2vm14SynthTraceModeE", !5, i64 0}
!85 = !{!"_ZTSSt10unique_ptrIN6hermes2vm16SamplingProfilerESt14default_deleteIS2_EE", !86, i64 0}
!86 = !{!"_ZTSSt15__uniq_ptr_dataIN6hermes2vm16SamplingProfilerESt14default_deleteIS2_ELb1ELb1EE", !87, i64 0}
!87 = !{!"_ZTSSt15__uniq_ptr_implIN6hermes2vm16SamplingProfilerESt14default_deleteIS2_EE", !88, i64 0}
!88 = !{!"_ZTSSt5tupleIJPN6hermes2vm16SamplingProfilerESt14default_deleteIS2_EEE", !89, i64 0}
!89 = !{!"_ZTSSt11_Tuple_implILm0EJPN6hermes2vm16SamplingProfilerESt14default_deleteIS2_EEE", !90, i64 0}
!90 = !{!"_ZTSSt10_Head_baseILm0EPN6hermes2vm16SamplingProfilerELb0EE", !91, i64 0}
!91 = !{!"p1 _ZTSN6hermes2vm16SamplingProfilerE", !9, i64 0}
!92 = !{!"_ZTSSt10shared_ptrIN6hermes2vm16TimeLimitMonitorEE", !93, i64 0}
!93 = !{!"_ZTSSt12__shared_ptrIN6hermes2vm16TimeLimitMonitorELN9__gnu_cxx12_Lock_policyE2EE", !94, i64 0, !95, i64 8}
!94 = !{!"p1 _ZTSN6hermes2vm16TimeLimitMonitorE", !9, i64 0}
!95 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !96, i64 0}
!96 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !9, i64 0}
!97 = !{!"_ZTSN6hermes2vm9GCStorageE", !98, i64 0}
!98 = !{!"_ZTSN6hermes2vm7HadesGCE", !99, i64 0, !32, i64 720, !32, i64 728, !142, i64 736, !147, i64 760, !150, i64 776, !153, i64 808, !156, i64 816, !119, i64 840, !162, i64 848, !131, i64 7520, !182, i64 7560, !184, i64 7568, !190, i64 7632, !16, i64 7633, !191, i64 7640, !198, i64 7648, !16, i64 7656, !16, i64 7657, !16, i64 7658, !16, i64 7659, !119, i64 7664, !125, i64 7672, !205, i64 7688, !205, i64 7696, !117, i64 7704, !117, i64 7864, !125, i64 8024, !32, i64 8040, !212, i64 8048, !32, i64 8096, !215, i64 8104}
!99 = !{!"_ZTSN6hermes2vm6GCBaseE", !4, i64 8, !32, i64 16, !100, i64 24, !101, i64 32, !102, i64 40, !103, i64 48, !106, i64 64, !107, i64 72, !109, i64 104, !16, i64 128, !16, i64 129, !16, i64 130, !16, i64 131, !114, i64 136, !116, i64 144, !32, i64 152, !32, i64 160, !117, i64 168, !121, i64 328, !123, i64 360, !127, i64 408, !130, i64 456, !5, i64 656, !141, i64 680, !4, i64 712, !16, i64 716}
!100 = !{!"_ZTSN6hermes2vm11GCExecTraceE"}
!101 = !{!"p1 _ZTSN6hermes2vm6GCBase11GCCallbacksE", !9, i64 0}
!102 = !{!"p1 _ZTSN6hermes2vm11PointerBaseE", !9, i64 0}
!103 = !{!"_ZTSSt10shared_ptrIN6hermes2vm12CrashManagerEE", !104, i64 0}
!104 = !{!"_ZTSSt12__shared_ptrIN6hermes2vm12CrashManagerELN9__gnu_cxx12_Lock_policyE2EE", !105, i64 0, !95, i64 8}
!105 = !{!"p1 _ZTSN6hermes2vm12CrashManagerE", !9, i64 0}
!106 = !{!"_ZTSN6hermes2vm6GCBase8HeapKindE", !5, i64 0}
!107 = !{!"_ZTSSt8functionIFvRKN6hermes2vm16GCAnalyticsEventEEE", !108, i64 0, !9, i64 24}
!108 = !{!"_ZTSSt14_Function_base", !5, i64 0, !9, i64 16}
!109 = !{!"_ZTSSt6vectorIN6hermes2vm16GCAnalyticsEventESaIS2_EE", !110, i64 0}
!110 = !{!"_ZTSSt12_Vector_baseIN6hermes2vm16GCAnalyticsEventESaIS2_EE", !111, i64 0}
!111 = !{!"_ZTSNSt12_Vector_baseIN6hermes2vm16GCAnalyticsEventESaIS2_EE12_Vector_implE", !112, i64 0}
!112 = !{!"_ZTSNSt12_Vector_baseIN6hermes2vm16GCAnalyticsEventESaIS2_EE17_Vector_impl_dataE", !113, i64 0, !113, i64 8, !113, i64 16}
!113 = !{!"p1 _ZTSN6hermes2vm16GCAnalyticsEventE", !9, i64 0}
!114 = !{!"_ZTSNSt6chrono10time_pointINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEEE", !115, i64 0}
!115 = !{!"_ZTSNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEE", !32, i64 0}
!116 = !{!"_ZTSNSt6chrono8durationIlSt5ratioILl1ELl1000000EEEE", !32, i64 0}
!117 = !{!"_ZTSN6hermes2vm6GCBase19CumulativeHeapStatsE", !4, i64 0, !118, i64 8, !118, i64 48, !4, i64 88, !120, i64 96, !120, i64 128}
!118 = !{!"_ZTSN6hermes16StatsAccumulatorIddEE", !4, i64 0, !119, i64 8, !119, i64 16, !119, i64 24, !119, i64 32}
!119 = !{!"double", !5, i64 0}
!120 = !{!"_ZTSN6hermes16StatsAccumulatorIjmEE", !4, i64 0, !32, i64 8, !4, i64 16, !4, i64 20, !119, i64 24}
!121 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !122, i64 0, !32, i64 8, !5, i64 16}
!122 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !22, i64 0}
!123 = !{!"_ZTSN6hermes18ManagedChunkedListINS_2vm11WeakRefSlotELm16EEE", !124, i64 0, !32, i64 8, !125, i64 16, !126, i64 32, !119, i64 40}
!124 = !{!"p1 _ZTSN6hermes18ManagedChunkedListINS_2vm11WeakRefSlotELm16EE5ChunkE", !9, i64 0}
!125 = !{!"_ZTSN6hermes24ExponentialMovingAverageE", !119, i64 0, !119, i64 8}
!126 = !{!"p1 _ZTSN6hermes2vm11WeakRefSlotE", !9, i64 0}
!127 = !{!"_ZTSN6hermes18ManagedChunkedListINS_2vm16WeakMapEntrySlotELm16EEE", !128, i64 0, !32, i64 8, !125, i64 16, !129, i64 32, !119, i64 40}
!128 = !{!"p1 _ZTSN6hermes18ManagedChunkedListINS_2vm16WeakMapEntrySlotELm16EE5ChunkE", !9, i64 0}
!129 = !{!"p1 _ZTSN6hermes2vm16WeakMapEntrySlotE", !9, i64 0}
!130 = !{!"_ZTSN6hermes2vm6GCBase9IDTrackerE", !131, i64 0, !4, i64 40, !133, i64 48, !133, i64 72, !135, i64 96, !137, i64 120, !133, i64 144, !139, i64 168, !16, i64 192}
!131 = !{!"_ZTSSt15recursive_mutex", !132, i64 0}
!132 = !{!"_ZTSSt22__recursive_mutex_base", !5, i64 0}
!133 = !{!"_ZTSN4llvh8DenseMapIjjNS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjjEEEE", !134, i64 0, !4, i64 8, !4, i64 12, !4, i64 16}
!134 = !{!"p1 _ZTSN4llvh6detail12DenseMapPairIjjEE", !9, i64 0}
!135 = !{!"_ZTSN4llvh8DenseMapIPKvjNS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_jEEEE", !136, i64 0, !4, i64 8, !4, i64 12, !4, i64 16}
!136 = !{!"p1 _ZTSN4llvh6detail12DenseMapPairIPKvjEE", !9, i64 0}
!137 = !{!"_ZTSN4llvh8DenseMapIjNS_11SmallVectorIjLj1EEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS2_EEEE", !138, i64 0, !4, i64 8, !4, i64 12, !4, i64 16}
!138 = !{!"p1 _ZTSN4llvh6detail12DenseMapPairIjNS_11SmallVectorIjLj1EEEEE", !9, i64 0}
end_hunk_2
