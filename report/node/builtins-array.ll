inline.NumInlined: 2118
inline.NumDeleted: 818
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN2v88internal12_GLOBAL__N_116GenericArrayPushEPNS0_7IsolateEPNS0_16BuiltinArgumentsE:bb.a

bb.d:                                             ; preds = %.critedge80
  %i.ad = lshr i64 %i.aa, 32
  %i.ae = trunc nuw i64 %i.ad to i32
  %i.af = sitofp i32 %i.ae to double
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit

bb.e:                                             ; preds = %.critedge80
  %i.ag = add nsw i64 %i.aa, -1
  %i.ah = inttoptr i64 %i.ag to ptr
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.0.copyload.i.i.i.i.i.i = load double, ptr %i.ai, align 1
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit

_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit: ; preds = %bb.d, %bb.e
  %i.aj = phi double [ %i.af, %bb.d ], [ %.0.copyload.i.i.i.i.i.i, %bb.e ] ; 3 uses
  %i.ak = sitofp i32 %i.z to double
  %i.al = fsub double f0x433FFFFFFFFFFFFF, %i.aj
  %i.am = fcmp olt double %i.al, %i.ak
  br i1 %i.am, label %bb.f, label %.preheader

.preheader:                                       ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit
  %.not161 = icmp sgt i32 %i.y, 5
  br i1 %.not161, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %i.z to i64
  br label %.lr.ph

bb.f:                                             ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8            ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = icmp eq ptr %i.ao, %i.aq
  br i1 %i.ar, label %bb.g, label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE16NewNumberFromIntILNS0_14AllocationTypeE0EEENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEi.exit, !prof !5

bb.g:                                             ; preds = %bb.f
  %i.as = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull align 1 dereferenceable(1) %0) #15
  br label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE16NewNumberFromIntILNS0_14AllocationTypeE0EEENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEi.exit

_ZN2v88internal11FactoryBaseINS0_7FactoryEE16NewNumberFromIntILNS0_14AllocationTypeE0EEENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEi.exit: ; preds = %bb.f, %bb.g
  %.0.i.i.i = phi ptr [ %i.as, %bb.g ], [ %i.ao, %bb.f ] ; 3 uses
  %i.at = sext i32 %i.z to i64
  %i.au = shl nsw i64 %i.at, 32
  %i.av = ptrtoint ptr %.0.i.i.i to i64
  %i.aw = add i64 %i.av, 8
  %i.ax = inttoptr i64 %i.aw to ptr
  store ptr %i.ax, ptr %i.an, align 8
  store i64 %i.au, ptr %.0.i.i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  store ptr %.0.i.i.i, ptr %3, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.u, ptr %i.ay, align 8
  %i.az = call ptr @_ZN2v88internal7Factory12NewTypeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef 371, ptr nonnull %3, i64 2) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  %i.ba = load i64, ptr %i.az, align 8
  %i.bb = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %0, i64 %i.ba, ptr noundef null) #15
  br label %.thread152

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.m
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.m ] ; 3 uses
  %.075163 = phi double [ %i.aj, %.lr.ph.preheader ], [ %i.ca, %bb.m ] ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bc = add nuw nsw i64 %indvars.iv, 5
  %i.bd = load i64, ptr %1, align 8               ; 2 uses
  %i.be = and i64 %i.bd, 4294967295
  %.not.i87 = icmp samesign ugt i64 %i.bc, %i.be
  br i1 %.not.i87, label %bb.h, label %_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit, !prof !5

bb.h:                                             ; preds = %.lr.ph
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #14
  unreachable

_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit: ; preds = %.lr.ph
  %i.bf = shl i64 %indvars.iv, 32
  %sext = sub i64 -25769803776, %i.bf
  %i.bg = ashr exact i64 %sext, 32
  %i.bh = add i64 %i.bd, %i.bg
  %i.bi = shl nsw i64 %i.bh, 3                    ; 2 uses
  %i.bj = load ptr, ptr %i.c, align 8
  %i.bk = ptrtoint ptr %i.bj to i64               ; 2 uses
  %i.bl = sub i64 %i.bk, %i.bi
  %i.bm = inttoptr i64 %i.bl to ptr               ; 2 uses
  %i.bn = fcmp ugt double %.075163, f0x41EFFFFFFFC00000
  br i1 %i.bn, label %bb.k, label %bb.i

bb.i:                                             ; preds = %_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit
  %i.bo = fptoui double %.075163 to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  %i.bp = zext i32 %i.bo to i64
  call void @_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEEmSG_NS1_13ConfigurationE(ptr noundef nonnull align 8 dereferenceable(88) %2, ptr noundef %0, ptr nonnull %.sroa.08.0.i142146, ptr null, i64 noundef %i.bp, ptr nonnull %.sroa.08.0.i142146, i32 noundef 3)
  %i.bq = call i16 @_ZN2v88internal6Object11SetPropertyEPNS0_14LookupIteratorENS0_12DirectHandleIS1_EENS0_11StoreOriginENS_5MaybeINS0_11ShouldThrowEEE(ptr noundef nonnull %2, ptr %i.bm, i32 noundef 0, i64 4294967297) #15
  %i.br = trunc i16 %i.bq to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  %i.bs = icmp ne i64 %i.bi, %i.bk
  %.not157 = select i1 %i.br, i1 %i.bs, i1 false
  br i1 %.not157, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 912
  %i.bu = load i64, ptr %i.bt, align 8
  br label %.thread152

bb.k:                                             ; preds = %_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit
  %i.bv = fptoui double %.075163 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  call void @_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEEmSG_NS1_13ConfigurationE(ptr noundef nonnull align 8 dereferenceable(88) %4, ptr noundef %0, ptr nonnull %.sroa.08.0.i142146, ptr null, i64 noundef %i.bv, ptr nonnull %.sroa.08.0.i142146, i32 noundef 3)
  %i.bw = call i16 @_ZN2v88internal6Object11SetPropertyEPNS0_14LookupIteratorENS0_12DirectHandleIS1_EENS0_11StoreOriginENS_5MaybeINS0_11ShouldThrowEEE(ptr noundef nonnull %4, ptr %i.bm, i32 noundef 0, i64 4294967297) #15
  %i.bx = trunc i16 %i.bw to i1
  br i1 %i.bx, label %.critedge84, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 912
  %i.bz = load i64, ptr %i.by, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  br label %.thread152

.critedge84:                                      ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  br label %bb.m

bb.m:                                             ; preds = %.critedge84, %bb.i
  %i.ca = fadd double %.075163, 1.000000e+00      ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !58

._crit_edge:                                      ; preds = %bb.m, %.preheader
  %.075.lcssa = phi double [ %i.aj, %.preheader ], [ %i.ca, %bb.m ] ; 6 uses
  %i.cb = fcmp oge double %.075.lcssa, f0xC1E0000000000000
  %i.cc = fcmp ole double %.075.lcssa, f0x41DFFFFFFFC00000
  %or.cond.i.i.i = and i1 %i.cb, %i.cc
  br i1 %or.cond.i.i.i, label %bb.n, label %bb.p

bb.n:                                             ; preds = %._crit_edge
  %i.cd = call noundef i1 @llvm.is.fpclass.f64(double %.075.lcssa, /* (nzero) */ i32 32)
  br i1 %i.cd, label %bb.p, label %_ZN2v88internal11IsSmiDoubleEd.exit.i.i

_ZN2v88internal11IsSmiDoubleEd.exit.i.i:          ; preds = %bb.n
  %i.ce = fptosi double %.075.lcssa to i32        ; 2 uses
  %i.cf = sitofp i32 %i.ce to double
  %i.cg = fcmp oeq double %.075.lcssa, %i.cf
  br i1 %i.cg, label %_ZN2v88internal18DoubleToSmiIntegerEdPi.exit.i, label %bb.p

_ZN2v88internal18DoubleToSmiIntegerEdPi.exit.i:   ; preds = %_ZN2v88internal11IsSmiDoubleEd.exit.i.i
  %i.ch = sext i32 %i.ce to i64
  %i.ci = shl nsw i64 %i.ch, 32
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8            ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.cm = load ptr, ptr %i.cl, align 8
  %i.cn = icmp eq ptr %i.ck, %i.cm
  br i1 %i.cn, label %bb.o, label %_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i, !prof !5

bb.o:                                             ; preds = %_ZN2v88internal18DoubleToSmiIntegerEdPi.exit.i
  %i.co = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull align 1 dereferenceable(1) %0) #15
  br label %_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i

_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i: ; preds = %bb.o, %_ZN2v88internal18DoubleToSmiIntegerEdPi.exit.i
  %.0.i.i.i88 = phi ptr [ %i.co, %bb.o ], [ %i.ck, %_ZN2v88internal18DoubleToSmiIntegerEdPi.exit.i ] ; 3 uses
  %i.cp = ptrtoint ptr %.0.i.i.i88 to i64
  %i.cq = add i64 %i.cp, 8
  %i.cr = inttoptr i64 %i.cq to ptr
  store ptr %i.cr, ptr %i.cj, align 8
  store i64 %i.ci, ptr %.0.i.i.i88, align 8
  br label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE9NewNumberILNS0_14AllocationTypeE0EEENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEd.exit

bb.p:                                             ; preds = %_ZN2v88internal11IsSmiDoubleEd.exit.i.i, %bb.n, %._crit_edge
  %i.cs = call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE13NewHeapNumberILNS0_14AllocationTypeE0EEENS0_6HandleINS0_10HeapNumberEEEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #15 ; 2 uses
  %i.ct = load i64, ptr %i.cs, align 8
  %i.cu = add i64 %i.ct, -1
  %i.cv = inttoptr i64 %i.cu to ptr
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  store double %.075.lcssa, ptr %i.cw, align 1
  br label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE9NewNumberILNS0_14AllocationTypeE0EEENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEd.exit

_ZN2v88internal11FactoryBaseINS0_7FactoryEE9NewNumberILNS0_14AllocationTypeE0EEENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEd.exit: ; preds = %_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i, %bb.p
  %.sroa.0.0.i = phi ptr [ %.0.i.i.i88, %_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i ], [ %i.cs, %bb.p ] ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.cy = call ptr @_ZN2v88internal6Object11SetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS4_IS1_EENS0_11StoreOriginENS_5MaybeINS0_11ShouldThrowEEE(ptr noundef nonnull %0, ptr nonnull %.sroa.08.0.i142146, ptr nonnull %i.cx, ptr nonnull %.sroa.0.0.i, i32 noundef 0, i64 4294967297) #15
  %i.cz = icmp eq ptr %i.cy, null
  br i1 %i.cz, label %bb.q, label %.critedge86

bb.q:                                             ; preds = %_ZN2v88internal11FactoryBaseINS0_7FactoryEE9NewNumberILNS0_14AllocationTypeE0EEENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEd.exit
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 912
  %i.db = load i64, ptr %i.da, align 8
  br label %.thread152

.critedge86:                                      ; preds = %_ZN2v88internal11FactoryBaseINS0_7FactoryEE9NewNumberILNS0_14AllocationTypeE0EEENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEd.exit
  %i.dc = load i64, ptr %.sroa.0.0.i, align 8
  br label %.thread152

.thread152:                                       ; preds = %bb.j, %bb.l, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE16NewNumberFromIntILNS0_14AllocationTypeE0EEENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEi.exit, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit, %bb.q, %.critedge86, %bb.c
  %.sroa.0115.5 = phi i64 [ %i.t, %bb.c ], [ %i.bb, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE16NewNumberFromIntILNS0_14AllocationTypeE0EEENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEi.exit ], [ %i.dc, %.critedge86 ], [ %i.w, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit ], [ %i.db, %bb.q ], [ %i.bu, %bb.j ], [ %i.bz, %bb.l ]
  ret i64 %.sroa.0115.5
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN2v88internal12_GLOBAL__N_133MatchArrayElementsKindToArgumentsEPNS0_7IsolateENS0_12DirectHandleINS0_7JSArrayEEEPNS0_16BuiltinArgumentsEii(ptr noundef %0, ptr %1, ptr nofree noundef nonnull readonly captures(none) %2, i32 noundef range(i32 -2147483648, 2147483647) %3) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %2, align 8                ; 2 uses
  %i.b = trunc i64 %i.a to i32                    ; 2 uses
  %i.c = add nsw i32 %i.b, -4
  %i.d = icmp slt i32 %i.b, 6
  br i1 %i.d, label %_ZN2v88internal11HandleScopeD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr %1, align 8
  %i.f = add i64 %i.e, -1
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = load atomic volatile i64, ptr %i.g monotonic, align 8
  %i.i = add i64 %i.h, 14
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = load i8, ptr %i.j, align 1               ; 2 uses
  %i.l = lshr i8 %i.k, 2                          ; 2 uses
  %i.m = and i8 %i.k, -8
  %i.n = icmp eq i8 %i.m, 8
  br i1 %i.n, label %_ZN2v88internal11HandleScopeD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = add nsw i32 %3, 1
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %i.c, i32 %i.o) ; 2 uses
  %i.p = icmp sgt i32 %.sroa.speculated, 1
  br i1 %i.p, label %.lr.ph, label %_ZN2v88internal11HandleScopeD2Ev.exit

.lr.ph:                                           ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %4 = load ptr, ptr %i.q, align 8
  %5 = ptrtoint ptr %4 to i64
  %wide.trip.count56 = zext nneg i32 %.sroa.speculated to i64
  br label %_ZNK2v88internal16BuiltinArgumentsixEi.exit

_ZNK2v88internal16BuiltinArgumentsixEi.exit:      ; preds = %.lr.ph, %.thread
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %.thread ] ; 2 uses
  %.02153 = phi i8 [ %i.l, %.lr.ph ], [ %.251, %.thread ]
  %i.r = shl i64 %indvars.iv, 32
  %sext = sub i64 -21474836480, %i.r
  %i.s = ashr exact i64 %sext, 32
  %i.t = add i64 %i.a, %i.s
  %i.u = shl nsw i64 %i.t, 3
  %i.v = sub i64 %5, %i.u
  %i.w = inttoptr i64 %i.v to ptr
  %i.x = load i64, ptr %i.w, align 8              ; 2 uses
  %i.y = trunc i64 %i.x to i1
  br i1 %i.y, label %bb.d, label %.thread

bb.d:                                             ; preds = %_ZNK2v88internal16BuiltinArgumentsixEi.exit
  %i.z = add nsw i64 %i.x, -1
  %i.aa = inttoptr i64 %i.z to ptr
  %i.ab = load atomic volatile i64, ptr %i.aa monotonic, align 8
  %i.ac = add i64 %i.ab, 11
  %i.ad = inttoptr i64 %i.ac to ptr
  %i.ae = load atomic volatile i16, ptr %i.ad monotonic, align 2
  %i.af = icmp eq i16 %i.ae, 130
  br i1 %i.af, label %.thread, label %._crit_edge

.thread:                                          ; preds = %_ZNK2v88internal16BuiltinArgumentsixEi.exit, %bb.d
  %.251 = phi i8 [ 4, %bb.d ], [ %.02153, %_ZNK2v88internal16BuiltinArgumentsixEi.exit ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond57.not = icmp eq i64 %indvars.iv.next, %wide.trip.count56
  br i1 %exitcond57.not, label %._crit_edge, label %_ZNK2v88internal16BuiltinArgumentsixEi.exit, !llvm.loop !59

._crit_edge:                                      ; preds = %bb.d, %.thread
  %.3 = phi i8 [ %.251, %.thread ], [ 2, %bb.d ]  ; 2 uses
  %.not = icmp eq i8 %.3, %i.l
  br i1 %.not, label %_ZN2v88internal11HandleScopeD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 3 uses
  %i.aj = load ptr, ptr %i.ai, align 8            ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 576 ; 4 uses
  %i.al = load i32, ptr %i.ak, align 8
  %i.am = add nsw i32 %i.al, 1
  store i32 %i.am, ptr %i.ak, align 8
  tail call void @_ZN2v88internal8JSObject22TransitionElementsKindEPNS0_7IsolateENS0_12DirectHandleIS1_EENS0_12ElementsKindE(ptr noundef %0, ptr nonnull %1, i8 noundef zeroext %.3) #15
  store ptr %i.ah, ptr %i.ag, align 8
  %i.an = load i32, ptr %i.ak, align 8
  %i.ao = add nsw i32 %i.an, -1
  store i32 %i.ao, ptr %i.ak, align 8
  %i.ap = load ptr, ptr %i.ai, align 8
  %.not.i = icmp eq ptr %i.ap, %i.aj
  br i1 %.not.i, label %_ZN2v88internal11HandleScopeD2Ev.exit, label %bb.f, !prof !8

bb.f:                                             ; preds = %bb.e
  store ptr %i.aj, ptr %i.ai, align 8
  tail call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %0) #15
  br label %_ZN2v88internal11HandleScopeD2Ev.exit

_ZN2v88internal11HandleScopeD2Ev.exit:            ; preds = %bb.c, %bb.e, %bb.f, %bb.b, %._crit_edge, %bb.a
  ret void
}

declare i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320), i64, ptr noundef) local_unnamed_addr #2

declare ptr @_ZN2v88internal6Object11SetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS4_IS1_EENS0_11StoreOriginENS_5MaybeINS0_11ShouldThrowEEE(ptr noundef, ptr, ptr, ptr, i32 noundef, i64) local_unnamed_addr #2

declare ptr @_ZN2v88internal7Factory12NewTypeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1), i32 noundef, ptr, i64) local_unnamed_addr #2

declare ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE13NewHeapNumberILNS0_14AllocationTypeE0EEENS0_6HandleINS0_10HeapNumberEEEv(ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #2

declare preserve_mostcc noundef zeroext i1 @_ZN2v88internal7JSArray25HasReadOnlyLengthSlowPathENS0_12DirectHandleIS1_EE(ptr) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc i64 @_ZN2v88internal12_GLOBAL__N_115GenericArrayPopEPNS0_7IsolateEPNS0_16BuiltinArgumentsE(ptr noundef %0, i64 %.0.val, ptr %.8.val) unnamed_addr #0 {
bb.a:
  %1 = alloca %"class.v8::internal::LookupIterator", align 8 ; 4 uses
  %2 = alloca %"class.v8::internal::PropertyKey", align 8 ; 6 uses
  %i.a = and i64 %.0.val, 4294967292
  %.not.i = icmp eq i64 %i.a, 0
  br i1 %.not.i, label %bb.b, label %_ZNK2v88internal16BuiltinArguments8receiverEv.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #14
  unreachable

_ZNK2v88internal16BuiltinArguments8receiverEv.exit: ; preds = %bb.a
  %i.b = ptrtoint ptr %.8.val to i64
  %i.c = shl i64 %.0.val, 3
  %reass.sub = sub i64 %i.b, %i.c
  %i.d = add i64 %reass.sub, 40
  %i.e = inttoptr i64 %i.d to ptr                 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8              ; 2 uses
  %i.g = trunc i64 %i.f to i1
  br i1 %i.g, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i, label %_ZN2v88internal6Object8ToObjectINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEENS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleISG_EEEEENSF_ISC_E9MaybeTypeEPNS0_7IsolateESH_PKc.exit, !prof !6

_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i: ; preds = %_ZNK2v88internal16BuiltinArguments8receiverEv.exit
  %i.h = add nsw i64 %i.f, -1
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = load atomic volatile i64, ptr %i.i monotonic, align 8
  %i.k = add i64 %i.j, 11
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = load atomic volatile i16, ptr %i.l monotonic, align 2
  %i.n = icmp ugt i16 %i.m, 299
  br i1 %i.n, label %.critedge, label %_ZN2v88internal6Object8ToObjectINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEENS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleISG_EEEEENSF_ISC_E9MaybeTypeEPNS0_7IsolateESH_PKc.exit, !prof !7

_ZN2v88internal6Object8ToObjectINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEENS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleISG_EEEEENSF_ISC_E9MaybeTypeEPNS0_7IsolateESH_PKc.exit: ; preds = %_ZNK2v88internal16BuiltinArguments8receiverEv.exit, %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i
  %i.o = tail call ptr @_ZN2v88internal6Object12ToObjectImplEPNS0_7IsolateENS0_12DirectHandleIS1_EEPKc(ptr noundef %0, ptr nonnull %i.e, ptr noundef null) #15 ; 2 uses
  %.not = icmp eq ptr %i.o, null
  br i1 %.not, label %bb.c, label %.critedge

bb.c:                                             ; preds = %_ZN2v88internal6Object8ToObjectINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEENS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleISG_EEEEENSF_ISC_E9MaybeTypeEPNS0_7IsolateESH_PKc.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 912
  %i.q = load i64, ptr %i.p, align 8
  br label %bb.n

.critedge:                                        ; preds = %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i, %_ZN2v88internal6Object8ToObjectINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEENS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleISG_EEEEENSF_ISC_E9MaybeTypeEPNS0_7IsolateESH_PKc.exit
  %.sroa.08.0.i6367 = phi ptr [ %i.o, %_ZN2v88internal6Object8ToObjectINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEENS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleISG_EEEEENSF_ISC_E9MaybeTypeEPNS0_7IsolateESH_PKc.exit ], [ %i.e, %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i ] ; 6 uses
  %i.r = tail call ptr @_ZN2v88internal6Object22GetLengthFromArrayLikeEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEE(ptr noundef %0, ptr nonnull %.sroa.08.0.i6367) #15 ; 2 uses
  %.not72 = icmp eq ptr %i.r, null
  br i1 %.not72, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit, label %.critedge68

_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit: ; preds = %.critedge
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 912
  %i.t = load i64, ptr %i.s, align 8
  br label %bb.n

.critedge68:                                      ; preds = %.critedge
  %i.u = load i64, ptr %i.r, align 8              ; 3 uses
  %i.v = and i64 %i.u, 1
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.critedge68
  %i.x = lshr i64 %i.u, 32
  %i.y = trunc nuw i64 %i.x to i32
  %i.z = sitofp i32 %i.y to double
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit

bb.e:                                             ; preds = %.critedge68
  %i.aa = add nsw i64 %i.u, -1
  %i.ab = inttoptr i64 %i.aa to ptr
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.0.copyload.i.i.i.i.i.i = load double, ptr %i.ac, align 1
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit

_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit: ; preds = %bb.d, %bb.e
  %i.ad = phi double [ %i.z, %bb.d ], [ %.0.copyload.i.i.i.i.i.i, %bb.e ] ; 2 uses
  %i.ae = fcmp oeq double %i.ad, 0.000000e+00
  br i1 %i.ae, label %bb.f, label %bb.i

bb.f:                                             ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8            ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = icmp eq ptr %i.ah, %i.aj
  br i1 %i.ak, label %bb.g, label %_ZN2v88internal12DirectHandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !5

bb.g:                                             ; preds = %bb.f
  %i.al = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #15
  br label %_ZN2v88internal12DirectHandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal12DirectHandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %bb.f, %bb.g
  %.0.i.i.i = phi ptr [ %i.al, %bb.g ], [ %i.ah, %bb.f ] ; 3 uses
  %i.am = ptrtoint ptr %.0.i.i.i to i64
  %i.an = add i64 %i.am, 8
  %i.ao = inttoptr i64 %i.an to ptr
  store ptr %i.ao, ptr %i.ag, align 8
  store i64 0, ptr %.0.i.i.i, align 8
  %i.ap = tail call ptr @_ZN2v88internal6Object11SetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS4_IS1_EENS0_11StoreOriginENS_5MaybeINS0_11ShouldThrowEEE(ptr noundef nonnull %0, ptr nonnull %.sroa.08.0.i6367, ptr nonnull %i.af, ptr nonnull %.0.i.i.i, i32 noundef 0, i64 4294967297) #15
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %bb.h, label %.critedge70

bb.h:                                             ; preds = %_ZN2v88internal12DirectHandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 912
  %i.as = load i64, ptr %i.ar, align 8
  br label %bb.n

.critedge70:                                      ; preds = %_ZN2v88internal12DirectHandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.au = load i64, ptr %i.at, align 8
  br label %bb.n

bb.i:                                             ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit
  %i.av = fadd double %i.ad, -1.000000e+00        ; 5 uses
  %i.aw = fcmp oge double %i.av, f0xC1E0000000000000
  %i.ax = fcmp ole double %i.av, f0x41DFFFFFFFC00000
  %or.cond.i.i.i = and i1 %i.aw, %i.ax
  br i1 %or.cond.i.i.i, label %_ZN2v88internal11IsSmiDoubleEd.exit.i.i, label %bb.k

_ZN2v88internal11IsSmiDoubleEd.exit.i.i:          ; preds = %bb.i
  %i.ay = fptosi double %i.av to i32              ; 2 uses
  %i.az = sitofp i32 %i.ay to double
  %i.ba = fcmp oeq double %i.av, %i.az
  br i1 %i.ba, label %_ZN2v88internal18DoubleToSmiIntegerEdPi.exit.i, label %bb.k

_ZN2v88internal18DoubleToSmiIntegerEdPi.exit.i:   ; preds = %_ZN2v88internal11IsSmiDoubleEd.exit.i.i
  %i.bb = sext i32 %i.ay to i64
  %i.bc = shl nsw i64 %i.bb, 32
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8            ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = icmp eq ptr %i.be, %i.bg
  br i1 %i.bh, label %bb.j, label %_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i, !prof !5

bb.j:                                             ; preds = %_ZN2v88internal18DoubleToSmiIntegerEdPi.exit.i
  %i.bi = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull align 1 dereferenceable(1) %0) #15
  br label %_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i

_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i: ; preds = %bb.j, %_ZN2v88internal18DoubleToSmiIntegerEdPi.exit.i
  %.0.i.i.i75 = phi ptr [ %i.bi, %bb.j ], [ %i.be, %_ZN2v88internal18DoubleToSmiIntegerEdPi.exit.i ] ; 3 uses
  %i.bj = ptrtoint ptr %.0.i.i.i75 to i64
  %i.bk = add i64 %i.bj, 8
  %i.bl = inttoptr i64 %i.bk to ptr
  store ptr %i.bl, ptr %i.bd, align 8
  store i64 %i.bc, ptr %.0.i.i.i75, align 8
  br label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE9NewNumberILNS0_14AllocationTypeE0EEENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEd.exit

bb.k:                                             ; preds = %_ZN2v88internal11IsSmiDoubleEd.exit.i.i, %bb.i
  %i.bm = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE13NewHeapNumberILNS0_14AllocationTypeE0EEENS0_6HandleINS0_10HeapNumberEEEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #15 ; 2 uses
  %i.bn = load i64, ptr %i.bm, align 8
  %i.bo = add i64 %i.bn, -1
  %i.bp = inttoptr i64 %i.bo to ptr
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store double %i.av, ptr %i.bq, align 1
  br label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE9NewNumberILNS0_14AllocationTypeE0EEENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEd.exit

end_hunk_0
