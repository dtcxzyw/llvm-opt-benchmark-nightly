Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/builtins-function?download=true
inline.NumInlined: 841
inline.NumDeleted: 407
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN2v88internal12_GLOBAL__N_114DoFunctionBindEPNS0_7IsolateENS0_16BuiltinArgumentsENS1_11ProtoSourceE:bb.a
  %.not163 = icmp eq i32 %i.y, 6
  br i1 %.not163, label %.loopexit, label %_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit.preheader

_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit.preheader: ; preds = %_ZNK2v88internal16BuiltinArguments2atINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS0_6HandleIT_EEi.exit
  %wide.trip.count = and i64 %i.ad, 4294967295    ; 2 uses
  %i.ao = add nsw i64 %wide.trip.count, -2        ; 3 uses
  %min.iters.check = icmp ult i64 %i.ao, 4
  br i1 %min.iters.check, label %_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit.preheader172, label %vector.ph

vector.ph:                                        ; preds = %_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit.preheader
  %n.vec = and i64 %i.ao, -4                      ; 3 uses
  %i.ap = or disjoint i64 %n.vec, 2
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %1, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert170 = insertelement <2 x i64> poison, i64 %i.i, i64 0
  %broadcast.splat171 = shufflevector <2 x i64> %broadcast.splatinsert170, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 2, i64 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %i.aq = shl <2 x i64> %vec.ind, splat (i64 32)
  %step.add = shl <2 x i64> %vec.ind, splat (i64 32)
  %i.ar = sub <2 x i64> splat (i64 -21474836480), %i.aq
  %i.as = sub <2 x i64> splat (i64 -30064771072), %step.add
  %i.at = ashr exact <2 x i64> %i.ar, splat (i64 32)
  %i.au = ashr exact <2 x i64> %i.as, splat (i64 32)
  %i.av = add <2 x i64> %broadcast.splat, %i.at
  %i.aw = add <2 x i64> %broadcast.splat, %i.au
  %i.ax = shl nsw <2 x i64> %i.av, splat (i64 3)
  %i.ay = shl nsw <2 x i64> %i.aw, splat (i64 3)
  %i.az = sub <2 x i64> %broadcast.splat171, %i.ax
  %i.ba = sub <2 x i64> %broadcast.splat171, %i.ay
  %i.bb = getelementptr [8 x i8], ptr %.sroa.087.0, i64 %index ; 2 uses
  %i.bc = getelementptr i8, ptr %i.bb, i64 16
  store <2 x i64> %i.az, ptr %i.bb, align 8
  store <2 x i64> %i.ba, ptr %i.bc, align 8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw nsw <2 x i64> %vec.ind, splat (i64 4)
  %i.bd = icmp eq i64 %index.next, %n.vec
  br i1 %i.bd, label %middle.block, label %vector.body, !llvm.loop !21

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ao, %n.vec
  br i1 %cmp.n, label %.loopexit, label %_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit.preheader172

_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit.preheader172: ; preds = %_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 2, %_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit.preheader ], [ %i.ap, %middle.block ]
  br label %_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit

_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit: ; preds = %_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit.preheader172, %_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit ], [ %indvars.iv.ph, %_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit.preheader172 ] ; 3 uses
  %i.be = shl i64 %indvars.iv, 32
  %sext = sub i64 -21474836480, %i.be
  %i.bf = ashr exact i64 %sext, 32
  %i.bg = add i64 %1, %i.bf
  %i.bh = shl nsw i64 %i.bg, 3
  %i.bi = sub i64 %i.i, %i.bh
  %i.bj = getelementptr [8 x i8], ptr %.sroa.087.0, i64 %indvars.iv
  %i.bk = getelementptr i8, ptr %i.bj, i64 -16
  store i64 %i.bi, ptr %i.bk, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit, !llvm.loop !22

.loopexit:                                        ; preds = %_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit, %middle.block, %_ZNK2v88internal16BuiltinArguments2atINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS0_6HandleIT_EEi.exit, %_ZN2v88internal18DirectHandleVectorINS0_6ObjectEEC2INS0_7IsolateEEEPT_m.exit
  %.sroa.093.0 = phi ptr [ %i.ac, %_ZN2v88internal18DirectHandleVectorINS0_6ObjectEEC2INS0_7IsolateEEEPT_m.exit ], [ %i.an, %_ZNK2v88internal16BuiltinArguments2atINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS0_6HandleIT_EEi.exit ], [ %i.an, %middle.block ], [ %i.an, %_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit ]
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %bb.i, label %bb.e

bb.e:                                             ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  store ptr %0, ptr %5, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.bl, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store ptr %i.ab, ptr %i.bm, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i32 1, ptr %i.bn, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %5, i64 28 ; 2 uses
  store i8 0, ptr %i.bo, align 4
  %i.bp = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i32 0, ptr %i.bp, align 8
  %i.bq = icmp eq i64 %i.z, %i.i
  br i1 %i.bq, label %bb.f, label %_ZN2v88internal17PrototypeIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEENS0_12WhereToStartENS1_10WhereToEndE.exit.i, !prof !6

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.12) #13
  unreachable

_ZN2v88internal17PrototypeIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEENS0_12WhereToStartENS1_10WhereToEndE.exit.i: ; preds = %bb.e, %bb.g
  %i.br = call noundef zeroext i1 @_ZN2v88internal17PrototypeIterator23AdvanceFollowingProxiesEv(ptr noundef nonnull align 8 dereferenceable(36) %5)
  br i1 %i.br, label %bb.g, label %_ZN2v88internal10JSReceiver12GetPrototypeEPNS0_7IsolateENS0_12DirectHandleIS1_EE.exit.thread

_ZN2v88internal10JSReceiver12GetPrototypeEPNS0_7IsolateENS0_12DirectHandleIS1_EE.exit.thread: ; preds = %_ZN2v88internal17PrototypeIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEENS0_12WhereToStartENS1_10WhereToEndE.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  br label %bb.h

bb.g:                                             ; preds = %_ZN2v88internal17PrototypeIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEENS0_12WhereToStartENS1_10WhereToEndE.exit.i
  %i.bs = load i8, ptr %i.bo, align 4, !range !8, !noundef !9
  %i.bt = trunc nuw i8 %i.bs to i1
  br i1 %i.bt, label %_ZN2v88internal10JSReceiver12GetPrototypeEPNS0_7IsolateENS0_12DirectHandleIS1_EE.exit, label %_ZN2v88internal17PrototypeIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEENS0_12WhereToStartENS1_10WhereToEndE.exit.i, !llvm.loop !23

_ZN2v88internal10JSReceiver12GetPrototypeEPNS0_7IsolateENS0_12DirectHandleIS1_EE.exit: ; preds = %bb.g
  %.sroa.01.0.copyload.i.i = load ptr, ptr %i.bm, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  %.not156 = icmp eq ptr %.sroa.01.0.copyload.i.i, null
  br i1 %.not156, label %bb.h, label %.critedge

bb.h:                                             ; preds = %_ZN2v88internal10JSReceiver12GetPrototypeEPNS0_7IsolateENS0_12DirectHandleIS1_EE.exit.thread, %_ZN2v88internal10JSReceiver12GetPrototypeEPNS0_7IsolateENS0_12DirectHandleIS1_EE.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 912
  br label %bb.m

bb.i:                                             ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 344
  %.sroa.0.0.copyload.i.i61 = load i64, ptr %i.bv, align 8
  store i64 %.sroa.0.0.copyload.i.i61, ptr %4, align 8
  %i.bw = call i64 @_ZNK2v88internal7Context13global_objectEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #12
  %i.bx = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.by = load ptr, ptr %i.c, align 8
  %i.bz = icmp eq ptr %i.bx, %i.by
  br i1 %i.bz, label %bb.j, label %_ZN2v88internal7Isolate13global_objectEv.exit, !prof !6

bb.j:                                             ; preds = %bb.i
  %i.ca = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(64320) %0) #12
  br label %_ZN2v88internal7Isolate13global_objectEv.exit

_ZN2v88internal7Isolate13global_objectEv.exit:    ; preds = %bb.i, %bb.j
  %.0.i.i.i = phi ptr [ %i.ca, %bb.j ], [ %i.bx, %bb.i ] ; 3 uses
  %i.cb = ptrtoint ptr %.0.i.i.i to i64
  %i.cc = add i64 %i.cb, 8
  %i.cd = inttoptr i64 %i.cc to ptr
  store ptr %i.cd, ptr %i.a, align 8
  store i64 %i.bw, ptr %.0.i.i.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  %i.ce = load i64, ptr %.0.i.i.i, align 8
  %i.cf = add i64 %i.ce, -1
  %i.cg = inttoptr i64 %i.cf to ptr
  %i.ch = load atomic volatile i64, ptr %i.cg monotonic, align 8
  %i.ci = add i64 %i.ch, -1
  %i.cj = inttoptr i64 %i.ci to ptr
  %i.ck = load atomic volatile i64, ptr %i.cj monotonic, align 8
  %i.cl = add i64 %i.ck, 31
  %i.cm = inttoptr i64 %i.cl to ptr
  %i.cn = load i64, ptr %i.cm, align 8            ; 2 uses
  %i.co = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.cp = load ptr, ptr %i.c, align 8
  %i.cq = icmp eq ptr %i.co, %i.cp
  br i1 %i.cq, label %bb.k, label %_ZN2v88internal6HandleINS0_13NativeContextEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !6

bb.k:                                             ; preds = %_ZN2v88internal7Isolate13global_objectEv.exit
  %i.cr = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #12
  br label %_ZN2v88internal6HandleINS0_13NativeContextEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_13NativeContextEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %_ZN2v88internal7Isolate13global_objectEv.exit, %bb.k
  %.0.i.i = phi ptr [ %i.cr, %bb.k ], [ %i.co, %_ZN2v88internal7Isolate13global_objectEv.exit ] ; 2 uses
  %i.cs = ptrtoint ptr %.0.i.i to i64
  %i.ct = add i64 %i.cs, 8
  %i.cu = inttoptr i64 %i.ct to ptr
  store ptr %i.cu, ptr %i.a, align 8
  store i64 %i.cn, ptr %.0.i.i, align 8
  %i.cv = add i64 %i.cn, 591
  %i.cw = inttoptr i64 %i.cv to ptr
  %i.cx = load atomic volatile i64, ptr %i.cw monotonic, align 8
  %i.cy = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.cz = load ptr, ptr %i.c, align 8
  %i.da = icmp eq ptr %i.cy, %i.cz
  br i1 %i.da, label %bb.l, label %_ZN2v88internal13direct_handleINS0_8JSObjectEEENS0_12DirectHandleIT_EENS0_6TaggedIS4_EEPNS0_7IsolateE.exit, !prof !6

bb.l:                                             ; preds = %_ZN2v88internal6HandleINS0_13NativeContextEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %i.db = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #12
  br label %_ZN2v88internal13direct_handleINS0_8JSObjectEEENS0_12DirectHandleIT_EENS0_6TaggedIS4_EEPNS0_7IsolateE.exit

_ZN2v88internal13direct_handleINS0_8JSObjectEEENS0_12DirectHandleIT_EENS0_6TaggedIS4_EEPNS0_7IsolateE.exit: ; preds = %_ZN2v88internal6HandleINS0_13NativeContextEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, %bb.l
  %.0.i.i56 = phi ptr [ %i.db, %bb.l ], [ %i.cy, %_ZN2v88internal6HandleINS0_13NativeContextEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit ] ; 3 uses
  %i.dc = ptrtoint ptr %.0.i.i56 to i64
  %i.dd = add i64 %i.dc, 8
  %i.de = inttoptr i64 %i.dd to ptr
  store ptr %i.de, ptr %i.a, align 8
  store i64 %i.cx, ptr %.0.i.i56, align 8
  br label %.critedge

.critedge:                                        ; preds = %_ZN2v88internal10JSReceiver12GetPrototypeEPNS0_7IsolateENS0_12DirectHandleIS1_EE.exit, %_ZN2v88internal13direct_handleINS0_8JSObjectEEENS0_12DirectHandleIT_EENS0_6TaggedIS4_EEPNS0_7IsolateE.exit
  %.sroa.081.0 = phi ptr [ %.0.i.i56, %_ZN2v88internal13direct_handleINS0_8JSObjectEEENS0_12DirectHandleIT_EENS0_6TaggedIS4_EEPNS0_7IsolateE.exit ], [ %.sroa.01.0.copyload.i.i, %_ZN2v88internal10JSReceiver12GetPrototypeEPNS0_7IsolateENS0_12DirectHandleIS1_EE.exit ]
  %i.df = ptrtoint ptr %.sroa.087.0 to i64
  %i.dg = sub i64 %.0.lcssa.i.i.i.i.i.i, %i.df
  %i.dh = ashr exact i64 %i.dg, 3                 ; 2 uses
  %i.di = call ptr @_ZN2v88internal7Factory18NewJSBoundFunctionENS0_12DirectHandleINS0_10JSReceiverEEENS2_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedES3_EEEEENS_4base6VectorINS2_INS0_6ObjectEEEEENS2_INS5_IJS3_SC_EEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr %i.ab, ptr %.sroa.093.0, ptr %.sroa.087.0, i64 %i.dh, ptr nonnull %.sroa.081.0) #12 ; 3 uses
  %.not157 = icmp eq ptr %i.di, null
  br i1 %.not157, label %_ZNK2v88internal11MaybeHandleINS0_15JSBoundFunctionEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit, label %.critedge55

_ZNK2v88internal11MaybeHandleINS0_15JSBoundFunctionEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit: ; preds = %.critedge
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 912
  br label %bb.m

.critedge55:                                      ; preds = %.critedge
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 5544
  %i.dl = trunc i64 %i.dh to i32
  %i.dm = call i16 @_ZN2v88internal42JSFunctionOrBoundFunctionOrWrappedFunction17CopyNameAndLengthEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_10JSReceiverEEENS4_INS0_6StringEEEi(ptr noundef nonnull %0, ptr nonnull %i.di, ptr %i.ab, ptr nonnull %i.dk, i32 noundef %i.dl) #12
  %6 = trunc i16 %i.dm to i1
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 912
  %spec.select = select i1 %6, ptr %i.di, ptr %i.dn
  br label %bb.m

bb.m:                                             ; preds = %.critedge55, %_ZNK2v88internal11MaybeHandleINS0_15JSBoundFunctionEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit, %bb.h
  %.sroa.0110.2.in = phi ptr [ %i.bu, %bb.h ], [ %i.dj, %_ZNK2v88internal11MaybeHandleINS0_15JSBoundFunctionEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit ], [ %spec.select, %.critedge55 ]
  %.sroa.0110.2 = load i64, ptr %.sroa.0110.2.in, align 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.sroa.087.0, null
  br i1 %.not.i.i.i.i, label %_ZN2v88internal18DirectHandleVectorINS0_6ObjectEED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.do = ptrtoint ptr %.sroa.087.0 to i64
  %i.dp = sub i64 %.sink.i.i, %i.do
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.087.0, i64 noundef %i.dp) #15
  br label %_ZN2v88internal18DirectHandleVectorINS0_6ObjectEED2Ev.exit

_ZN2v88internal18DirectHandleVectorINS0_6ObjectEED2Ev.exit: ; preds = %_ZN2v88internal10IsCallableENS0_6TaggedINS0_6ObjectEEE.exit.thread, %bb.m, %bb.n
  %.sroa.0110.3 = phi i64 [ %i.x, %_ZN2v88internal10IsCallableENS0_6TaggedINS0_6ObjectEEE.exit.thread ], [ %.sroa.0110.2, %bb.m ], [ %.sroa.0110.2, %bb.n ]
  store ptr %i.b, ptr %i.a, align 8
  %i.dq = load i32, ptr %i.e, align 8
  %i.dr = add nsw i32 %i.dq, -1
  store i32 %i.dr, ptr %i.e, align 8
  %i.ds = load ptr, ptr %i.c, align 8
  %.not.i = icmp eq ptr %i.ds, %i.d
  br i1 %.not.i, label %_ZN2v88internal11HandleScopeD2Ev.exit, label %bb.o, !prof !5

bb.o:                                             ; preds = %_ZN2v88internal18DirectHandleVectorINS0_6ObjectEED2Ev.exit
  store ptr %i.d, ptr %i.c, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %0) #12
  br label %_ZN2v88internal11HandleScopeD2Ev.exit

_ZN2v88internal11HandleScopeD2Ev.exit:            ; preds = %bb.o, %_ZN2v88internal18DirectHandleVectorINS0_6ObjectEED2Ev.exit
  ret i64 %.sroa.0110.3
}

declare ptr @_ZN2v88internal7Factory18NewJSBoundFunctionENS0_12DirectHandleINS0_10JSReceiverEEENS2_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedES3_EEEEENS_4base6VectorINS2_INS0_6ObjectEEEEENS2_INS5_IJS3_SC_EEEEE(ptr noundef nonnull align 1 dereferenceable(1), ptr, ptr, ptr, i64, ptr) local_unnamed_addr #2

declare i16 @_ZN2v88internal42JSFunctionOrBoundFunctionOrWrappedFunction17CopyNameAndLengthEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_10JSReceiverEEENS4_INS0_6StringEEEi(ptr noundef, ptr, ptr, ptr, i32 noundef) local_unnamed_addr #2

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #7

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2v88internal17PrototypeIterator23AdvanceFollowingProxiesEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %1 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.485", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = add i64 %i.c, -1
  %i.e = inttoptr i64 %i.d to ptr                 ; 4 uses
  %i.f = load atomic volatile i64, ptr %i.e monotonic, align 8
  %i.g = add i64 %i.f, 11
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = load atomic volatile i16, ptr %i.h monotonic, align 2
  %i.j = icmp eq i16 %i.i, 304
  br i1 %i.j, label %bb.b, label %_ZN2v88internal19IsAccessCheckNeededENS0_6TaggedINS0_10HeapObjectEEENS0_16PtrComprCageBaseE.exit.i

bb.b:                                             ; preds = %bb.a
  %i.k = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN2v88internal18g_current_isolate_E)
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #12
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 344
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.m, align 8
  store i64 %.sroa.0.0.copyload.i.i, ptr %1, align 8
  %i.n = call i64 @_ZNK2v88internal7Context13global_objectEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #12
  %i.o = load atomic volatile i64, ptr %i.e monotonic, align 8
  %i.p = add i64 %i.o, 11
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = load atomic volatile i16, ptr %i.q monotonic, align 2
  %i.s = icmp eq i16 %i.r, 302
  br i1 %i.s, label %bb.c, label %.thread.i.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 664
  br label %_ZNK2v88internal13JSGlobalProxy14IsDetachedFromEPNS0_7IsolateENS0_6TaggedINS0_14JSGlobalObjectEEE.exit.i

.thread.i.i.i.i:                                  ; preds = %bb.b
  %i.u = load atomic volatile i64, ptr %i.e monotonic, align 8
  %i.v = add i64 %i.u, 23
  %i.w = inttoptr i64 %i.v to ptr
  br label %_ZNK2v88internal13JSGlobalProxy14IsDetachedFromEPNS0_7IsolateENS0_6TaggedINS0_14JSGlobalObjectEEE.exit.i

_ZNK2v88internal13JSGlobalProxy14IsDetachedFromEPNS0_7IsolateENS0_6TaggedINS0_14JSGlobalObjectEEE.exit.i: ; preds = %.thread.i.i.i.i, %bb.c
  %.sink.i.in.i.i = phi ptr [ %i.t, %bb.c ], [ %i.w, %.thread.i.i.i.i ]
  %.sink.i.i.i = load i64, ptr %.sink.i.in.i.i, align 8
  %.not36.i = icmp eq i64 %.sink.i.i.i, %i.n
  br i1 %.not36.i, label %_ZNK2v88internal17PrototypeIterator9HasAccessEv.exit.thread, label %bb.d

_ZN2v88internal19IsAccessCheckNeededENS0_6TaggedINS0_10HeapObjectEEENS0_16PtrComprCageBaseE.exit.i: ; preds = %bb.a
  %i.x = load atomic volatile i64, ptr %i.e monotonic, align 8
  %i.y = add i64 %i.x, 13
  %i.z = inttoptr i64 %i.y to ptr
  %i.aa = load atomic volatile i8, ptr %i.z monotonic, align 1
  %i.ab = and i8 %i.aa, 32
  %.not.i = icmp eq i8 %i.ab, 0
  br i1 %.not.i, label %_ZNK2v88internal17PrototypeIterator9HasAccessEv.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZN2v88internal19IsAccessCheckNeededENS0_6TaggedINS0_10HeapObjectEEENS0_16PtrComprCageBaseE.exit.i, %_ZNK2v88internal13JSGlobalProxy14IsDetachedFromEPNS0_7IsolateENS0_6TaggedINS0_14JSGlobalObjectEEE.exit.i
  %i.ac = load ptr, ptr %0, align 8               ; 5 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 344
  %.sroa.0.0.copyload.i.i7.i = load i64, ptr %i.ad, align 8
  %i.ae = add i64 %.sroa.0.0.copyload.i.i7.i, -1
  %i.af = inttoptr i64 %i.ae to ptr
  %i.ag = load atomic volatile i64, ptr %i.af monotonic, align 8
  %i.ah = add i64 %i.ag, 31
  %i.ai = inttoptr i64 %i.ah to ptr
  %i.aj = load i64, ptr %i.ai, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ac, i64 560 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8            ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ac, i64 568
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = icmp eq ptr %i.al, %i.an
  br i1 %i.ao, label %bb.e, label %_ZNK2v88internal17PrototypeIterator9HasAccessEv.exit, !prof !6

bb.e:                                             ; preds = %bb.d
  %i.ap = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(64320) %i.ac) #12
  br label %_ZNK2v88internal17PrototypeIterator9HasAccessEv.exit

_ZNK2v88internal17PrototypeIterator9HasAccessEv.exit: ; preds = %bb.d, %bb.e
  %.0.i.i.i.i.i = phi ptr [ %i.ap, %bb.e ], [ %i.al, %bb.d ] ; 3 uses
  %i.aq = ptrtoint ptr %.0.i.i.i.i.i to i64
  %i.ar = add i64 %i.aq, 8
  %i.as = inttoptr i64 %i.ar to ptr
  store ptr %i.as, ptr %i.ak, align 8
  store i64 %i.aj, ptr %.0.i.i.i.i.i, align 8
  %.sroa.01.0.copyload.i = load ptr, ptr %i.a, align 8
  %i.at = call noundef zeroext i1 @_ZN2v88internal7Isolate9MayAccessENS0_12DirectHandleINS0_13NativeContextEEENS2_INS0_8JSObjectEEE(ptr noundef nonnull align 8 dereferenceable(64320) %i.ac, ptr nonnull %.0.i.i.i.i.i, ptr %.sroa.01.0.copyload.i) #12
  br i1 %i.at, label %_ZNK2v88internal17PrototypeIterator9HasAccessEv.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZNK2v88internal17PrototypeIterator9HasAccessEv.exit
  %i.au = load ptr, ptr %0, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 664
  %i.aw = ptrtoint ptr %i.av to i64
  store i64 %i.aw, ptr %i.a, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 1, ptr %i.ax, align 4
  br label %bb.g

_ZNK2v88internal17PrototypeIterator9HasAccessEv.exit.thread: ; preds = %_ZNK2v88internal13JSGlobalProxy14IsDetachedFromEPNS0_7IsolateENS0_6TaggedINS0_14JSGlobalObjectEEE.exit.i, %_ZN2v88internal19IsAccessCheckNeededENS0_6TaggedINS0_10HeapObjectEEENS0_16PtrComprCageBaseE.exit.i, %_ZNK2v88internal17PrototypeIterator9HasAccessEv.exit
  %i.ay = call noundef zeroext i1 @_ZN2v88internal17PrototypeIterator43AdvanceFollowingProxiesIgnoringAccessChecksEv(ptr noundef nonnull align 8 dereferenceable(36) %0)
  br label %bb.g

bb.g:                                             ; preds = %_ZNK2v88internal17PrototypeIterator9HasAccessEv.exit.thread, %bb.f
  %.0 = phi i1 [ %i.ay, %_ZNK2v88internal17PrototypeIterator9HasAccessEv.exit.thread ], [ true, %bb.f ]
  ret i1 %.0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2v88internal17PrototypeIterator43AdvanceFollowingProxiesIgnoringAccessChecksEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = icmp eq ptr %i.b, null                   ; 3 uses
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %i.b, align 8
  %i.e = add i64 %i.d, -1
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load atomic volatile i64, ptr %i.f monotonic, align 8
  %i.h = add i64 %i.g, 11
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = load atomic volatile i16, ptr %i.i monotonic, align 2
  %i.k = icmp eq i16 %i.j, 302
  br i1 %i.k, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %storemerge.in.i = select i1 %i.c, ptr %i.l, ptr %i.b
  %storemerge.i = load i64, ptr %storemerge.in.i, align 8
  %i.m = add i64 %storemerge.i, -1
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = load atomic volatile i64, ptr %i.n monotonic, align 8 ; 2 uses
  %i.p = add i64 %i.o, 23
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = load i64, ptr %i.q, align 8              ; 3 uses
  %i.s = load ptr, ptr %0, align 8                ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 664
  %i.u = load i64, ptr %i.t, align 8
  %i.v = icmp eq i64 %i.r, %i.u
  br i1 %i.v, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.x = load i32, ptr %i.w, align 8
  %i.y = icmp eq i32 %i.x, 1
  br i1 %i.y, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.z = add i64 %i.o, 11
  %i.aa = inttoptr i64 %i.z to ptr
  %i.ab = load atomic volatile i16, ptr %i.aa monotonic, align 2
  %i.ac = icmp ne i16 %i.ab, 304
  %i.ad = zext i1 %i.ac to i8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.ae = phi i8 [ 1, %bb.c ], [ 0, %bb.d ], [ %i.ad, %bb.e ]
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 %i.ae, ptr %i.af, align 4
end_hunk_0
