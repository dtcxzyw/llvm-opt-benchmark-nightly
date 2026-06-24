inline.NumInlined: 3941
inline.NumDeleted: 1451
begin_hunk_0_@_ZN2v88internal25Runtime_WasmStringNewWtf8EiPmPNS0_7IsolateE:_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit
  br i1 %i.q, label %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE15number_value_atEi.exit, label %bb.c, !prof !6

bb.c:                                             ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE21positive_smi_value_atEi.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #19
  unreachable

_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE15number_value_atEi.exit: ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE21positive_smi_value_atEi.exit
  %i.r = add i64 %i.i, -24
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = load i64, ptr %i.s, align 8              ; 3 uses
  %i.u = and i64 %i.t, 1
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE15number_value_atEi.exit
  %i.w = lshr i64 %i.t, 32
  %i.x = trunc nuw i64 %i.w to i32
  %i.y = sitofp i32 %i.x to double
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit

bb.e:                                             ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE15number_value_atEi.exit
  %i.z = add nsw i64 %i.t, -1
  %i.aa = inttoptr i64 %i.z to ptr
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.0.copyload.i.i.i.i.i.i = load double, ptr %i.ab, align 1
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit

_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit: ; preds = %bb.d, %bb.e
  %i.ac = phi double [ %i.y, %bb.d ], [ %.0.copyload.i.i.i.i.i.i, %bb.e ]
  %i.ad = fptoui double %i.ac to i64              ; 2 uses
  %.not68 = icmp eq i32 %0, 3
  br i1 %.not68, label %bb.f, label %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit2, !prof !5

bb.f:                                             ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #19
  unreachable

_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit2: ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit
  %i.ae = add i64 %i.i, -32
  %i.af = inttoptr i64 %i.ae to ptr
  %i.ag = load i64, ptr %i.af, align 8            ; 3 uses
  %i.ah = and i64 %i.ag, 1
  %i.ai = icmp eq i64 %i.ah, 0
  br i1 %i.ai, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit2
  %i.aj = lshr i64 %i.ag, 32
  %i.ak = trunc nuw i64 %i.aj to i32
  br label %_ZN2v88internal14NumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit

bb.h:                                             ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit2
  %i.al = add nsw i64 %i.ag, -1
  %i.am = inttoptr i64 %i.al to ptr
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %.0.copyload.i.i.i.i.i = load double, ptr %i.an, align 1 ; 5 uses
  %i.ao = tail call double @llvm.fabs.f64(double %.0.copyload.i.i.i.i.i)
  %i.ap = fcmp one double %i.ao, +inf
  %i.aq = fcmp ole double %.0.copyload.i.i.i.i.i, f0x41DFFFFFFFC00000
  %or.cond.i.i.i = and i1 %i.aq, %i.ap
  %i.ar = fcmp oge double %.0.copyload.i.i.i.i.i, f0xC1E0000000000000
  %or.cond3.i.i.i = and i1 %i.ar, %or.cond.i.i.i
  br i1 %or.cond3.i.i.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.as = fptosi double %.0.copyload.i.i.i.i.i to i32
  br label %_ZN2v88internal14NumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit

bb.j:                                             ; preds = %bb.h
  %i.at = bitcast double %.0.copyload.i.i.i.i.i to i64 ; 5 uses
  %i.au = and i64 %i.at, 9218868437227405312
  %i.av = icmp eq i64 %i.au, 0                    ; 2 uses
  %i.aw = lshr i64 %i.at, 52
  %i.ax = trunc nuw nsw i64 %i.aw to i32
  %i.ay = and i32 %i.ax, 2047
  %i.az = add nsw i32 %i.ay, -1075
  %.0.i.i.i.i = select i1 %i.av, i32 -1074, i32 %i.az ; 5 uses
  %i.ba = icmp slt i32 %.0.i.i.i.i, 0
  br i1 %i.ba, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.bb = icmp samesign ult i32 %.0.i.i.i.i, -52
  br i1 %i.bb, label %_ZN2v88internal14NumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bc = and i64 %i.at, 4503599627370495         ; 2 uses
  %i.bd = or disjoint i64 %i.bc, 4503599627370496
  %.0.i17.i.i.i = select i1 %i.av, i64 %i.bc, i64 %i.bd
  %i.be = sub nsw i32 0, %.0.i.i.i.i
  %i.bf = zext nneg i32 %i.be to i64
  %i.bg = lshr i64 %.0.i17.i.i.i, %i.bf
  br label %bb.o

bb.m:                                             ; preds = %bb.j
  %i.bh = icmp samesign ugt i32 %.0.i.i.i.i, 31
  br i1 %i.bh, label %_ZN2v88internal14NumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bi = zext nneg i32 %.0.i.i.i.i to i64
  %i.bj = shl i64 %i.at, %i.bi
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.l
  %.0.i.i.i = phi i64 [ %i.bg, %bb.l ], [ %i.bj, %bb.n ]
  %i.bk = trunc i64 %.0.i.i.i to i32              ; 2 uses
  %i.bl = sub i32 0, %i.bk
  %i.bm = icmp slt i64 %i.at, 0
  %i.bn = select i1 %i.bm, i32 %i.bl, i32 %i.bk
  br label %_ZN2v88internal14NumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit

_ZN2v88internal14NumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.g, %bb.i, %bb.k, %bb.m, %bb.o
  %.0.i4 = phi i32 [ %i.ak, %bb.g ], [ %i.as, %bb.i ], [ 0, %bb.k ], [ %i.bn, %bb.o ], [ 0, %bb.m ]
  %i.bo = add i64 %i.h, 119
  %i.bp = inttoptr i64 %i.bo to ptr
  %i.bq = load i64, ptr %i.bp, align 8
  %i.br = add i64 %i.bq, -1
  %i.bs = inttoptr i64 %i.br to ptr
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16 ; 2 uses
  %i.bu = shl i64 %i.l, 1
  %i.bv = ashr i64 %i.bu, 29                      ; 2 uses
  %i.bw = and i64 %i.bv, -16
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bw
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %.0.copyload.i.i.i = load i64, ptr %i.by, align 1 ; 2 uses
  %i.bz = zext i32 %.0.i4 to i64                  ; 3 uses
  %.not.i5 = icmp uge i64 %.0.copyload.i.i.i, %i.bz
  %i.ca = sub nuw i64 %.0.copyload.i.i.i, %i.bz
  %i.cb = icmp uge i64 %i.ca, %i.ad
  %i.cc = select i1 %.not.i5, i1 %i.cb, i1 false
  br i1 %i.cc, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZN2v88internal14NumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit
  %i.cd = tail call ptr @_ZN2v88internal7Factory19NewWasmRuntimeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef 433, ptr null, i64 0) #18 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 8136
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 672
  tail call void @_ZN2v88internal8JSObject11AddPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEENS4_INS0_6ObjectEEENS0_18PropertyAttributesE(ptr noundef nonnull %2, ptr %i.cd, ptr nonnull %i.ce, ptr nonnull %i.cf, i32 noundef 0) #18
  %i.cg = load i64, ptr %i.cd, align 8
  %i.ch = tail call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %2, i64 %i.cg, ptr noundef null) #18
  br label %_ZN2v88internalL35__RT_impl_Runtime_WasmStringNewWtf8ENS0_30RuntimeArgumentsWithoutHandlesEPNS0_7IsolateE.exit

bb.q:                                             ; preds = %_ZN2v88internal14NumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit
  %i.ci = trunc i64 %i.p to i8                    ; 2 uses
  %i.cj = and i64 %i.bv, -16
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.cj
  %.0.copyload.i.i.i7 = load i64, ptr %i.ck, align 1
  %i.cl = inttoptr i64 %.0.copyload.i.i.i7 to ptr
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.ad
  %i.cn = tail call ptr @_ZN2v88internal7Factory17NewStringFromUtf8ENS_4base6VectorIKhEEN7unibrow11Utf8VariantENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr %i.cm, i64 %i.bz, i8 noundef zeroext %i.ci, i8 noundef zeroext 0) #18 ; 2 uses
  %i.co = icmp eq i8 %i.ci, 1
  %i.cp = icmp eq ptr %i.cn, null                 ; 2 uses
  br i1 %i.co, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  br i1 %i.cp, label %bb.s, label %.thread

bb.s:                                             ; preds = %bb.r
  %i.cq = getelementptr inbounds nuw i8, ptr %2, i64 368
  %.sroa.0.0.copyload.i = load i64, ptr %i.cq, align 8 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %2, i64 656
  %i.cs = load i64, ptr %i.cr, align 8
  %.not70 = icmp eq i64 %.sroa.0.0.copyload.i, %i.cs
  br i1 %.not70, label %bb.t, label %_ZN2v88internal7Isolate9exceptionEv.exit

bb.t:                                             ; preds = %bb.s
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 2104
  %i.cu = load i64, ptr %i.ct, align 8
  br label %_ZN2v88internalL35__RT_impl_Runtime_WasmStringNewWtf8ENS0_30RuntimeArgumentsWithoutHandlesEPNS0_7IsolateE.exit

bb.u:                                             ; preds = %bb.q
  br i1 %i.cp, label %_ZNK2v88internal11MaybeHandleINS0_6StringEE8ToHandleINS0_6ObjectEEEbPNS0_12DirectHandleIT_EE.exit, label %.thread

_ZNK2v88internal11MaybeHandleINS0_6StringEE8ToHandleINS0_6ObjectEEEbPNS0_12DirectHandleIT_EE.exit: ; preds = %bb.u
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 368
  %.sroa.0.0.copyload.i.i.pre = load i64, ptr %.phi.trans.insert, align 8 ; 2 uses
  %.phi.trans.insert73 = getelementptr inbounds nuw i8, ptr %2, i64 656
  %.pre = load i64, ptr %.phi.trans.insert73, align 8
  %i.cv = icmp eq i64 %.sroa.0.0.copyload.i.i.pre, %.pre
  br i1 %i.cv, label %bb.v, label %_ZN2v88internal7Isolate9exceptionEv.exit, !prof !43

bb.v:                                             ; preds = %_ZNK2v88internal11MaybeHandleINS0_6StringEE8ToHandleINS0_6ObjectEEEbPNS0_12DirectHandleIT_EE.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.81) #19
  unreachable

_ZN2v88internal7Isolate9exceptionEv.exit:         ; preds = %bb.s, %_ZNK2v88internal11MaybeHandleINS0_6StringEE8ToHandleINS0_6ObjectEEEbPNS0_12DirectHandleIT_EE.exit
  %.sroa.0.0.copyload.i.i81 = phi i64 [ %.sroa.0.0.copyload.i.i.pre, %_ZNK2v88internal11MaybeHandleINS0_6StringEE8ToHandleINS0_6ObjectEEEbPNS0_12DirectHandleIT_EE.exit ], [ %.sroa.0.0.copyload.i, %bb.s ]
  %i.cw = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.cx = load ptr, ptr %i.c, align 8
  %i.cy = icmp eq ptr %i.cw, %i.cx
  br i1 %i.cy, label %bb.w, label %bb.x, !prof !5

bb.w:                                             ; preds = %_ZN2v88internal7Isolate9exceptionEv.exit
  %i.cz = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %2) #18
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %_ZN2v88internal7Isolate9exceptionEv.exit
  %.0.i.i = phi ptr [ %i.cz, %bb.w ], [ %i.cw, %_ZN2v88internal7Isolate9exceptionEv.exit ] ; 4 uses
  %i.da = ptrtoint ptr %.0.i.i to i64             ; 2 uses
  %i.db = add i64 %i.da, 8
  %i.dc = inttoptr i64 %i.db to ptr
  store ptr %i.dc, ptr %i.a, align 8
  store i64 %.sroa.0.0.copyload.i.i81, ptr %.0.i.i, align 8
  %i.dd = getelementptr inbounds nuw i8, ptr %2, i64 8136 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.de = load i64, ptr %i.dd, align 8
  %i.df = add i64 %i.de, -1
  %i.dg = inttoptr i64 %i.df to ptr               ; 3 uses
  %i.dh = load atomic volatile i64, ptr %i.dg monotonic, align 8
  %i.di = add i64 %i.dh, 11
  %i.dj = inttoptr i64 %i.di to ptr
  %i.dk = load atomic volatile i16, ptr %i.dj monotonic, align 2
  %i.dl = icmp eq i16 %i.dk, 128
  br i1 %i.dl, label %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i

_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i:      ; preds = %bb.x
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dg, i64 12
  %i.dn = load i32, ptr %i.dm, align 4
  %i.do = trunc i32 %i.dn to i1
  br i1 %i.do, label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i

_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i, %bb.x
  br label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i

_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i
  %i.dp = phi i32 [ 1, %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i ], [ 0, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i ]
  store i32 %i.dp, ptr %3, align 8
  %i.dq = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 0, ptr %i.dq, align 4
  %i.dr = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i8 0, ptr %i.dr, align 8
  %i.ds = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 0, ptr %i.ds, align 4
  %i.dt = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 0, ptr %i.dt, align 8
  %i.du = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %2, ptr %i.du, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  store ptr %i.dd, ptr %i.dv, align 8
  %i.dw = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr null, ptr %i.dw, align 8
  %i.dx = getelementptr inbounds nuw i8, ptr %3, i64 48
  store ptr %.0.i.i, ptr %i.dx, align 8
  %i.dy = getelementptr inbounds nuw i8, ptr %3, i64 56
  store ptr null, ptr %i.dy, align 8
  %i.dz = getelementptr inbounds nuw i8, ptr %3, i64 64
  store i64 %i.da, ptr %i.dz, align 8
  %i.ea = getelementptr inbounds nuw i8, ptr %3, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ea, i8 -1, i64 16, i1 false)
  %i.eb = load atomic volatile i64, ptr %i.dg monotonic, align 8
  %i.ec = add i64 %i.eb, 11
  %i.ed = inttoptr i64 %i.ec to ptr
  %i.ee = load atomic volatile i16, ptr %i.ed monotonic, align 2
  %i.ef = and i16 %i.ee, -96
  %.not.i21.i.i = icmp eq i16 %i.ef, 32
  br i1 %.not.i21.i.i, label %bb.y, label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit

bb.y:                                             ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i
  %i.eg = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !17, !noundef !18
  %i.eh = trunc nuw i8 %i.eg to i1
  %i.ei = getelementptr inbounds nuw i8, ptr %2, i64 55448
  %i.ej = load i8, ptr %i.ei, align 8, !range !17
  %i.ek = trunc nuw i8 %i.ej to i1
  %not..i.i.i23.i.i = xor i1 %i.eh, true
  %i.el = select i1 %not..i.i.i23.i.i, i1 true, i1 %i.ek
  br i1 %i.el, label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.em = getelementptr inbounds nuw i8, ptr %2, i64 64088
  %i.en = load i8, ptr %i.em, align 8, !range !17, !noundef !18
  %i.eo = trunc nuw i8 %i.en to i1
  br i1 %i.eo, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  tail call void @_ZSt27__throw_bad_optional_accessv() #23
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i: ; preds = %bb.z
  %i.ep = getelementptr inbounds nuw i8, ptr %2, i64 64080
  %i.eq = load ptr, ptr %i.ep, align 8
  br label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i

_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i: ; preds = %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i, %bb.y
  %.pn.i.i26.i.i = phi ptr [ %i.eq, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i ], [ %2, %bb.y ]
  %.in.i.i27.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i26.i.i, i64 58464
  %i.er = load ptr, ptr %.in.i.i27.i.i, align 8
  %i.es = tail call ptr @_ZN2v88internal11StringTable12LookupStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.er, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr nonnull %i.dd) #18
  br label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit

_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit: ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i
  %.sroa.05.0.i22.i.i = phi ptr [ %i.es, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i ], [ %i.dd, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i ]
  store ptr %.sroa.05.0.i22.i.i, ptr %i.dv, align 8
  call void @_ZN2v88internal14LookupIterator5StartILb0EEEvv(ptr noundef nonnull align 8 dereferenceable(88) %3) #18
  %i.et = call i16 @_ZN2v88internal10JSReceiver11HasPropertyEPNS0_14LookupIteratorE(ptr noundef nonnull %3) #18 ; 2 uses
  %i.eu = trunc i16 %i.et to i1
  br i1 %i.eu, label %_ZNO2v85MaybeIbE8FromJustEv.exit, label %bb.ab, !prof !6

bb.ab:                                            ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit
  call void @_ZN2v812api_internal17FromJustIsNothingEv() #18
  br label %_ZNO2v85MaybeIbE8FromJustEv.exit

_ZNO2v85MaybeIbE8FromJustEv.exit:                 ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit, %bb.ab
  %i.ev = and i16 %i.et, 256
  %.not71 = icmp eq i16 %i.ev, 0
  br i1 %.not71, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %_ZNO2v85MaybeIbE8FromJustEv.exit
  %i.ew = getelementptr inbounds nuw i8, ptr %2, i64 672
  call void @_ZN2v88internal8JSObject11AddPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEENS4_INS0_6ObjectEEENS0_18PropertyAttributesE(ptr noundef nonnull %2, ptr nonnull %.0.i.i, ptr nonnull %i.dd, ptr nonnull %i.ew, i32 noundef 0) #18
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %_ZNO2v85MaybeIbE8FromJustEv.exit
  %i.ex = getelementptr inbounds nuw i8, ptr %2, i64 912
  %i.ey = load i64, ptr %i.ex, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %_ZN2v88internalL35__RT_impl_Runtime_WasmStringNewWtf8ENS0_30RuntimeArgumentsWithoutHandlesEPNS0_7IsolateE.exit

.thread:                                          ; preds = %bb.r, %bb.u
  %i.ez = load i64, ptr %i.cn, align 8
  br label %_ZN2v88internalL35__RT_impl_Runtime_WasmStringNewWtf8ENS0_30RuntimeArgumentsWithoutHandlesEPNS0_7IsolateE.exit

_ZN2v88internalL35__RT_impl_Runtime_WasmStringNewWtf8ENS0_30RuntimeArgumentsWithoutHandlesEPNS0_7IsolateE.exit: ; preds = %bb.p, %bb.ad, %.thread, %bb.t
  %.sroa.039.2 = phi i64 [ %i.ch, %bb.p ], [ %i.cu, %bb.t ], [ %i.ez, %.thread ], [ %i.ey, %bb.ad ]
  store ptr %i.b, ptr %i.a, align 8
  %i.fa = load i32, ptr %i.e, align 8
  %i.fb = add nsw i32 %i.fa, -1
  store i32 %i.fb, ptr %i.e, align 8
  %i.fc = load ptr, ptr %i.c, align 8
  %.not.i = icmp eq ptr %i.fc, %i.d
  br i1 %.not.i, label %_ZN2v88internal11HandleScopeD2Ev.exit, label %bb.ae, !prof !6

bb.ae:                                            ; preds = %_ZN2v88internalL35__RT_impl_Runtime_WasmStringNewWtf8ENS0_30RuntimeArgumentsWithoutHandlesEPNS0_7IsolateE.exit
  store ptr %i.d, ptr %i.c, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #18
  br label %_ZN2v88internal11HandleScopeD2Ev.exit

_ZN2v88internal11HandleScopeD2Ev.exit:            ; preds = %bb.ae, %_ZN2v88internalL35__RT_impl_Runtime_WasmStringNewWtf8ENS0_30RuntimeArgumentsWithoutHandlesEPNS0_7IsolateE.exit
  ret i64 %.sroa.039.2
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal30Runtime_WasmStringNewWtf8ArrayEiPmPNS0_7IsolateE(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %"class.v8::internal::LookupIterator", align 8 ; 16 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 568 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 576 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8
  %i.h = load i64, ptr %1, align 8
  %i.i = lshr i64 %i.h, 32
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %bb.b, label %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #19
  unreachable

_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit: ; preds = %bb.a
  %i.j = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.k = add i64 %i.j, -8
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = load i64, ptr %i.l, align 8
  %i.n = icmp eq ptr %i.b, %i.d
  br i1 %i.n, label %bb.c, label %_ZN2v88internal6HandleINS0_9WasmArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !5

bb.c:                                             ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit
  %i.o = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %2) #18
  br label %_ZN2v88internal6HandleINS0_9WasmArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_9WasmArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit, %bb.c
  %.0.i.i = phi ptr [ %i.o, %bb.c ], [ %i.b, %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit ] ; 3 uses
  %i.p = ptrtoint ptr %.0.i.i to i64
  %i.q = add i64 %i.p, 8
  %i.r = inttoptr i64 %i.q to ptr
  store ptr %i.r, ptr %i.a, align 8
  store i64 %i.m, ptr %.0.i.i, align 8
  %.not62 = icmp eq i32 %0, 1
  br i1 %.not62, label %bb.d, label %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit2, !prof !5

bb.d:                                             ; preds = %_ZN2v88internal6HandleINS0_9WasmArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #19
  unreachable

_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit2: ; preds = %_ZN2v88internal6HandleINS0_9WasmArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %i.s = add i64 %i.j, -16
  %i.t = inttoptr i64 %i.s to ptr
  %i.u = load i64, ptr %i.t, align 8              ; 3 uses
  %i.v = and i64 %i.u, 1
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit2
  %i.x = lshr i64 %i.u, 32
  %i.y = trunc nuw i64 %i.x to i32
  br label %_ZN2v88internal14NumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit

bb.f:                                             ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit2
  %i.z = add nsw i64 %i.u, -1
  %i.aa = inttoptr i64 %i.z to ptr
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.0.copyload.i.i.i.i.i = load double, ptr %i.ab, align 1 ; 5 uses
  %i.ac = tail call double @llvm.fabs.f64(double %.0.copyload.i.i.i.i.i)
  %i.ad = fcmp one double %i.ac, +inf
  %i.ae = fcmp ole double %.0.copyload.i.i.i.i.i, f0x41DFFFFFFFC00000
  %or.cond.i.i.i = and i1 %i.ae, %i.ad
  %i.af = fcmp oge double %.0.copyload.i.i.i.i.i, f0xC1E0000000000000
  %or.cond3.i.i.i = and i1 %i.af, %or.cond.i.i.i
  br i1 %or.cond3.i.i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ag = fptosi double %.0.copyload.i.i.i.i.i to i32
  br label %_ZN2v88internal14NumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit

bb.h:                                             ; preds = %bb.f
  %i.ah = bitcast double %.0.copyload.i.i.i.i.i to i64 ; 5 uses
  %i.ai = and i64 %i.ah, 9218868437227405312
  %i.aj = icmp eq i64 %i.ai, 0                    ; 2 uses
  %i.ak = lshr i64 %i.ah, 52
  %i.al = trunc nuw nsw i64 %i.ak to i32
  %i.am = and i32 %i.al, 2047
  %i.an = add nsw i32 %i.am, -1075
  %.0.i.i.i.i = select i1 %i.aj, i32 -1074, i32 %i.an ; 5 uses
  %i.ao = icmp slt i32 %.0.i.i.i.i, 0
  br i1 %i.ao, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.ap = icmp samesign ult i32 %.0.i.i.i.i, -52
  br i1 %i.ap, label %_ZN2v88internal14NumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aq = and i64 %i.ah, 4503599627370495         ; 2 uses
  %i.ar = or disjoint i64 %i.aq, 4503599627370496
  %.0.i17.i.i.i = select i1 %i.aj, i64 %i.aq, i64 %i.ar
  %i.as = sub nsw i32 0, %.0.i.i.i.i
  %i.at = zext nneg i32 %i.as to i64
  %i.au = lshr i64 %.0.i17.i.i.i, %i.at
  br label %bb.m

bb.k:                                             ; preds = %bb.h
  %i.av = icmp samesign ugt i32 %.0.i.i.i.i, 31
  br i1 %i.av, label %_ZN2v88internal14NumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aw = zext nneg i32 %.0.i.i.i.i to i64
  %i.ax = shl i64 %i.ah, %i.aw
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.j
  %.0.i.i.i = phi i64 [ %i.au, %bb.j ], [ %i.ax, %bb.l ]
  %i.ay = trunc i64 %.0.i.i.i to i32              ; 2 uses
  %i.az = sub i32 0, %i.ay
  %i.ba = icmp slt i64 %i.ah, 0
  %i.bb = select i1 %i.ba, i32 %i.az, i32 %i.ay
  br label %_ZN2v88internal14NumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit

_ZN2v88internal14NumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.e, %bb.g, %bb.i, %bb.k, %bb.m
  %.0.i5 = phi i32 [ %i.y, %bb.e ], [ %i.ag, %bb.g ], [ 0, %bb.i ], [ %i.bb, %bb.m ], [ 0, %bb.k ]
  %i.bc = icmp ugt i32 %0, 2
  br i1 %i.bc, label %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit3, label %bb.n, !prof !6

bb.n:                                             ; preds = %_ZN2v88internal14NumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #19
  unreachable

_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit3: ; preds = %_ZN2v88internal14NumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit
  %i.bd = add i64 %i.j, -24
  %i.be = inttoptr i64 %i.bd to ptr
  %i.bf = load i64, ptr %i.be, align 8            ; 3 uses
  %i.bg = and i64 %i.bf, 1
  %i.bh = icmp eq i64 %i.bg, 0
  br i1 %i.bh, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit3
  %i.bi = lshr i64 %i.bf, 32
  %i.bj = trunc nuw i64 %i.bi to i32
  br label %_ZN2v88internal14NumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit13

bb.p:                                             ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit3
  %i.bk = add nsw i64 %i.bf, -1
  %i.bl = inttoptr i64 %i.bk to ptr
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %.0.copyload.i.i.i.i.i6 = load double, ptr %i.bm, align 1 ; 5 uses
  %i.bn = tail call double @llvm.fabs.f64(double %.0.copyload.i.i.i.i.i6)
  %i.bo = fcmp one double %i.bn, +inf
  %i.bp = fcmp ole double %.0.copyload.i.i.i.i.i6, f0x41DFFFFFFFC00000
  %or.cond.i.i.i7 = and i1 %i.bp, %i.bo
  %i.bq = fcmp oge double %.0.copyload.i.i.i.i.i6, f0xC1E0000000000000
  %or.cond3.i.i.i8 = and i1 %i.bq, %or.cond.i.i.i7
  br i1 %or.cond3.i.i.i8, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.br = fptosi double %.0.copyload.i.i.i.i.i6 to i32
  br label %_ZN2v88internal14NumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit13

bb.r:                                             ; preds = %bb.p
  %i.bs = bitcast double %.0.copyload.i.i.i.i.i6 to i64 ; 5 uses
  %i.bt = and i64 %i.bs, 9218868437227405312
  %i.bu = icmp eq i64 %i.bt, 0                    ; 2 uses
  %i.bv = lshr i64 %i.bs, 52
  %i.bw = trunc nuw nsw i64 %i.bv to i32
  %i.bx = and i32 %i.bw, 2047
  %i.by = add nsw i32 %i.bx, -1075
  %.0.i.i.i.i9 = select i1 %i.bu, i32 -1074, i32 %i.by ; 5 uses
  %i.bz = icmp slt i32 %.0.i.i.i.i9, 0
  br i1 %i.bz, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.ca = icmp samesign ult i32 %.0.i.i.i.i9, -52
  br i1 %i.ca, label %_ZN2v88internal14NumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit13, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cb = and i64 %i.bs, 4503599627370495         ; 2 uses
  %i.cc = or disjoint i64 %i.cb, 4503599627370496
  %.0.i17.i.i.i12 = select i1 %i.bu, i64 %i.cb, i64 %i.cc
  %i.cd = sub nsw i32 0, %.0.i.i.i.i9
  %i.ce = zext nneg i32 %i.cd to i64
  %i.cf = lshr i64 %.0.i17.i.i.i12, %i.ce
  br label %bb.w

bb.u:                                             ; preds = %bb.r
  %i.cg = icmp samesign ugt i32 %.0.i.i.i.i9, 31
  br i1 %i.cg, label %_ZN2v88internal14NumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit13, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ch = zext nneg i32 %.0.i.i.i.i9 to i64
  %i.ci = shl i64 %i.bs, %i.ch
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.t
  %.0.i.i.i10 = phi i64 [ %i.cf, %bb.t ], [ %i.ci, %bb.v ]
  %i.cj = trunc i64 %.0.i.i.i10 to i32            ; 2 uses
  %i.ck = sub i32 0, %i.cj
  %i.cl = icmp slt i64 %i.bs, 0
  %i.cm = select i1 %i.cl, i32 %i.ck, i32 %i.cj
  br label %_ZN2v88internal14NumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit13

_ZN2v88internal14NumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit13: ; preds = %bb.o, %bb.q, %bb.s, %bb.u, %bb.w
  %.0.i11 = phi i32 [ %i.bj, %bb.o ], [ %i.br, %bb.q ], [ 0, %bb.s ], [ %i.cm, %bb.w ], [ 0, %bb.u ]
  %i.cn = trunc i64 %i.i to i8                    ; 2 uses
  %i.co = tail call ptr @_ZN2v88internal7Factory17NewStringFromUtf8ENS0_12DirectHandleINS0_9WasmArrayEEEjjN7unibrow11Utf8VariantENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr nonnull %.0.i.i, i32 noundef %.0.i5, i32 noundef %.0.i11, i8 noundef zeroext %i.cn, i8 noundef zeroext 0) #18 ; 2 uses
  %i.cp = icmp eq i8 %i.cn, 1
  %i.cq = icmp eq ptr %i.co, null                 ; 2 uses
  br i1 %i.cp, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %_ZN2v88internal14NumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit13
  br i1 %i.cq, label %bb.y, label %.thread

bb.y:                                             ; preds = %bb.x
  %i.cr = getelementptr inbounds nuw i8, ptr %2, i64 368
  %.sroa.0.0.copyload.i = load i64, ptr %i.cr, align 8 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %2, i64 656
  %i.ct = load i64, ptr %i.cs, align 8
  %.not64 = icmp eq i64 %.sroa.0.0.copyload.i, %i.ct
  br i1 %.not64, label %bb.z, label %_ZN2v88internal7Isolate9exceptionEv.exit

bb.z:                                             ; preds = %bb.y
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 2104
  %i.cv = load i64, ptr %i.cu, align 8
  br label %_ZN2v88internalL40__RT_impl_Runtime_WasmStringNewWtf8ArrayENS0_30RuntimeArgumentsWithoutHandlesEPNS0_7IsolateE.exit

bb.aa:                                            ; preds = %_ZN2v88internal14NumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit13
  br i1 %i.cq, label %_ZNK2v88internal11MaybeHandleINS0_6StringEE8ToHandleINS0_6ObjectEEEbPNS0_12DirectHandleIT_EE.exit, label %.thread

_ZNK2v88internal11MaybeHandleINS0_6StringEE8ToHandleINS0_6ObjectEEEbPNS0_12DirectHandleIT_EE.exit: ; preds = %bb.aa
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 368
  %.sroa.0.0.copyload.i.i.pre = load i64, ptr %.phi.trans.insert, align 8 ; 2 uses
  %.phi.trans.insert67 = getelementptr inbounds nuw i8, ptr %2, i64 656
  %.pre = load i64, ptr %.phi.trans.insert67, align 8
  %i.cw = icmp eq i64 %.sroa.0.0.copyload.i.i.pre, %.pre
  br i1 %i.cw, label %bb.ab, label %_ZN2v88internal7Isolate9exceptionEv.exit, !prof !43

bb.ab:                                            ; preds = %_ZNK2v88internal11MaybeHandleINS0_6StringEE8ToHandleINS0_6ObjectEEEbPNS0_12DirectHandleIT_EE.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.81) #19
  unreachable

_ZN2v88internal7Isolate9exceptionEv.exit:         ; preds = %bb.y, %_ZNK2v88internal11MaybeHandleINS0_6StringEE8ToHandleINS0_6ObjectEEEbPNS0_12DirectHandleIT_EE.exit
  %.sroa.0.0.copyload.i.i74 = phi i64 [ %.sroa.0.0.copyload.i.i.pre, %_ZNK2v88internal11MaybeHandleINS0_6StringEE8ToHandleINS0_6ObjectEEEbPNS0_12DirectHandleIT_EE.exit ], [ %.sroa.0.0.copyload.i, %bb.y ]
  %i.cx = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.cy = load ptr, ptr %i.c, align 8
  %i.cz = icmp eq ptr %i.cx, %i.cy
  br i1 %i.cz, label %bb.ac, label %bb.ad, !prof !5

bb.ac:                                            ; preds = %_ZN2v88internal7Isolate9exceptionEv.exit
  %i.da = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %2) #18
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %_ZN2v88internal7Isolate9exceptionEv.exit
  %.0.i.i4 = phi ptr [ %i.da, %bb.ac ], [ %i.cx, %_ZN2v88internal7Isolate9exceptionEv.exit ] ; 4 uses
  %i.db = ptrtoint ptr %.0.i.i4 to i64            ; 2 uses
  %i.dc = add i64 %i.db, 8
  %i.dd = inttoptr i64 %i.dc to ptr
  store ptr %i.dd, ptr %i.a, align 8
  store i64 %.sroa.0.0.copyload.i.i74, ptr %.0.i.i4, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %2, i64 8136 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.df = load i64, ptr %i.de, align 8
  %i.dg = add i64 %i.df, -1
  %i.dh = inttoptr i64 %i.dg to ptr               ; 3 uses
  %i.di = load atomic volatile i64, ptr %i.dh monotonic, align 8
  %i.dj = add i64 %i.di, 11
  %i.dk = inttoptr i64 %i.dj to ptr
  %i.dl = load atomic volatile i16, ptr %i.dk monotonic, align 2
  %i.dm = icmp eq i16 %i.dl, 128
  br i1 %i.dm, label %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i

_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i:      ; preds = %bb.ad
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dh, i64 12
  %i.do = load i32, ptr %i.dn, align 4
  %i.dp = trunc i32 %i.do to i1
  br i1 %i.dp, label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i

_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i, %bb.ad
  br label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i

_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i
  %i.dq = phi i32 [ 1, %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i ], [ 0, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i ]
  store i32 %i.dq, ptr %3, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 0, ptr %i.dr, align 4
  %i.ds = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i8 0, ptr %i.ds, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 0, ptr %i.dt, align 4
  %i.du = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 0, ptr %i.du, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %2, ptr %i.dv, align 8
  %i.dw = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  store ptr %i.de, ptr %i.dw, align 8
  %i.dx = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr null, ptr %i.dx, align 8
  %i.dy = getelementptr inbounds nuw i8, ptr %3, i64 48
  store ptr %.0.i.i4, ptr %i.dy, align 8
  %i.dz = getelementptr inbounds nuw i8, ptr %3, i64 56
  store ptr null, ptr %i.dz, align 8
  %i.ea = getelementptr inbounds nuw i8, ptr %3, i64 64
  store i64 %i.db, ptr %i.ea, align 8
  %i.eb = getelementptr inbounds nuw i8, ptr %3, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.eb, i8 -1, i64 16, i1 false)
  %i.ec = load atomic volatile i64, ptr %i.dh monotonic, align 8
  %i.ed = add i64 %i.ec, 11
  %i.ee = inttoptr i64 %i.ed to ptr
  %i.ef = load atomic volatile i16, ptr %i.ee monotonic, align 2
  %i.eg = and i16 %i.ef, -96
  %.not.i21.i.i = icmp eq i16 %i.eg, 32
  br i1 %.not.i21.i.i, label %bb.ae, label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit

bb.ae:                                            ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i
  %i.eh = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !17, !noundef !18
  %i.ei = trunc nuw i8 %i.eh to i1
  %i.ej = getelementptr inbounds nuw i8, ptr %2, i64 55448
  %i.ek = load i8, ptr %i.ej, align 8, !range !17
  %i.el = trunc nuw i8 %i.ek to i1
  %not..i.i.i23.i.i = xor i1 %i.ei, true
  %i.em = select i1 %not..i.i.i23.i.i, i1 true, i1 %i.el
  br i1 %i.em, label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.en = getelementptr inbounds nuw i8, ptr %2, i64 64088
  %i.eo = load i8, ptr %i.en, align 8, !range !17, !noundef !18
  %i.ep = trunc nuw i8 %i.eo to i1
  br i1 %i.ep, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  tail call void @_ZSt27__throw_bad_optional_accessv() #23
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i: ; preds = %bb.af
  %i.eq = getelementptr inbounds nuw i8, ptr %2, i64 64080
  %i.er = load ptr, ptr %i.eq, align 8
  br label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i

_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i: ; preds = %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i, %bb.ae
  %.pn.i.i26.i.i = phi ptr [ %i.er, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i ], [ %2, %bb.ae ]
  %.in.i.i27.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i26.i.i, i64 58464
  %i.es = load ptr, ptr %.in.i.i27.i.i, align 8
  %i.et = tail call ptr @_ZN2v88internal11StringTable12LookupStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.es, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr nonnull %i.de) #18
  br label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit

_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit: ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i
  %.sroa.05.0.i22.i.i = phi ptr [ %i.et, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i ], [ %i.de, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i ]
  store ptr %.sroa.05.0.i22.i.i, ptr %i.dw, align 8
  call void @_ZN2v88internal14LookupIterator5StartILb0EEEvv(ptr noundef nonnull align 8 dereferenceable(88) %3) #18
  %i.eu = call i16 @_ZN2v88internal10JSReceiver11HasPropertyEPNS0_14LookupIteratorE(ptr noundef nonnull %3) #18 ; 2 uses
  %i.ev = trunc i16 %i.eu to i1
  br i1 %i.ev, label %_ZNO2v85MaybeIbE8FromJustEv.exit, label %bb.ah, !prof !6

bb.ah:                                            ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit
  call void @_ZN2v812api_internal17FromJustIsNothingEv() #18
  br label %_ZNO2v85MaybeIbE8FromJustEv.exit

_ZNO2v85MaybeIbE8FromJustEv.exit:                 ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit, %bb.ah
  %i.ew = and i16 %i.eu, 256
  %.not65 = icmp eq i16 %i.ew, 0
  br i1 %.not65, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %_ZNO2v85MaybeIbE8FromJustEv.exit
  %i.ex = getelementptr inbounds nuw i8, ptr %2, i64 672
  call void @_ZN2v88internal8JSObject11AddPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEENS4_INS0_6ObjectEEENS0_18PropertyAttributesE(ptr noundef nonnull %2, ptr nonnull %.0.i.i4, ptr nonnull %i.de, ptr nonnull %i.ex, i32 noundef 0) #18
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %_ZNO2v85MaybeIbE8FromJustEv.exit
  %i.ey = getelementptr inbounds nuw i8, ptr %2, i64 912
  %i.ez = load i64, ptr %i.ey, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %_ZN2v88internalL40__RT_impl_Runtime_WasmStringNewWtf8ArrayENS0_30RuntimeArgumentsWithoutHandlesEPNS0_7IsolateE.exit

.thread:                                          ; preds = %bb.x, %bb.aa
  %i.fa = load i64, ptr %i.co, align 8
  br label %_ZN2v88internalL40__RT_impl_Runtime_WasmStringNewWtf8ArrayENS0_30RuntimeArgumentsWithoutHandlesEPNS0_7IsolateE.exit

_ZN2v88internalL40__RT_impl_Runtime_WasmStringNewWtf8ArrayENS0_30RuntimeArgumentsWithoutHandlesEPNS0_7IsolateE.exit: ; preds = %bb.z, %.thread, %bb.aj
  %.sroa.038.1 = phi i64 [ %i.cv, %bb.z ], [ %i.fa, %.thread ], [ %i.ez, %bb.aj ]
  store ptr %i.b, ptr %i.a, align 8
  %i.fb = load i32, ptr %i.e, align 8
  %i.fc = add nsw i32 %i.fb, -1
  store i32 %i.fc, ptr %i.e, align 8
  %i.fd = load ptr, ptr %i.c, align 8
  %.not.i = icmp eq ptr %i.fd, %i.d
  br i1 %.not.i, label %_ZN2v88internal11HandleScopeD2Ev.exit, label %bb.ak, !prof !6

bb.ak:                                            ; preds = %_ZN2v88internalL40__RT_impl_Runtime_WasmStringNewWtf8ArrayENS0_30RuntimeArgumentsWithoutHandlesEPNS0_7IsolateE.exit
  store ptr %i.d, ptr %i.c, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #18
  br label %_ZN2v88internal11HandleScopeD2Ev.exit

_ZN2v88internal11HandleScopeD2Ev.exit:            ; preds = %bb.ak, %_ZN2v88internalL40__RT_impl_Runtime_WasmStringNewWtf8ArrayENS0_30RuntimeArgumentsWithoutHandlesEPNS0_7IsolateE.exit
  ret i64 %.sroa.038.1
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal26Runtime_WasmStringNewWtf16EiPmPNS0_7IsolateE(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit:
  %3 = alloca %"class.v8::internal::LookupIterator", align 8 ; 16 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 568 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 576 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8
  %i.h = load i64, ptr %1, align 8
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %bb.a, label %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE21positive_smi_value_atEi.exit, !prof !5

bb.a:                                             ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #19
  unreachable

_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE21positive_smi_value_atEi.exit: ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit
  %i.i = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.j = add i64 %i.i, -8
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = load i64, ptr %i.k, align 8
  %.not57 = icmp eq i32 %0, 1
  br i1 %.not57, label %bb.b, label %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE15number_value_atEi.exit, !prof !5

bb.b:                                             ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE21positive_smi_value_atEi.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #19
  unreachable

_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE15number_value_atEi.exit: ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE21positive_smi_value_atEi.exit
  %i.m = add i64 %i.i, -16
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = load i64, ptr %i.n, align 8              ; 3 uses
  %i.p = and i64 %i.o, 1
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE15number_value_atEi.exit
  %i.r = lshr i64 %i.o, 32
  %i.s = trunc nuw i64 %i.r to i32
  %i.t = sitofp i32 %i.s to double
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit

bb.d:                                             ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE15number_value_atEi.exit
  %i.u = add nsw i64 %i.o, -1
  %i.v = inttoptr i64 %i.u to ptr
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.0.copyload.i.i.i.i.i.i = load double, ptr %i.w, align 1
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit

_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit: ; preds = %bb.c, %bb.d
  %i.x = phi double [ %i.t, %bb.c ], [ %.0.copyload.i.i.i.i.i.i, %bb.d ]
  %i.y = fptoui double %i.x to i64                ; 3 uses
  %i.z = icmp ugt i32 %0, 2
  br i1 %i.z, label %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit2, label %bb.e, !prof !6

bb.e:                                             ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #19
  unreachable

_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit2: ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit
  %i.aa = add i64 %i.i, -24
  %i.ab = inttoptr i64 %i.aa to ptr
  %i.ac = load i64, ptr %i.ab, align 8            ; 3 uses
  %i.ad = and i64 %i.ac, 1
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit2
  %i.af = lshr i64 %i.ac, 32
  %i.ag = trunc nuw i64 %i.af to i32
  br label %_ZN2v88internal14NumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit

bb.g:                                             ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit2
  %i.ah = add nsw i64 %i.ac, -1
  %i.ai = inttoptr i64 %i.ah to ptr
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %.0.copyload.i.i.i.i.i = load double, ptr %i.aj, align 1 ; 5 uses
  %i.ak = tail call double @llvm.fabs.f64(double %.0.copyload.i.i.i.i.i)
  %i.al = fcmp one double %i.ak, +inf
  %i.am = fcmp ole double %.0.copyload.i.i.i.i.i, f0x41DFFFFFFFC00000
  %or.cond.i.i.i = and i1 %i.am, %i.al
  %i.an = fcmp oge double %.0.copyload.i.i.i.i.i, f0xC1E0000000000000
  %or.cond3.i.i.i = and i1 %i.an, %or.cond.i.i.i
  br i1 %or.cond3.i.i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ao = fptosi double %.0.copyload.i.i.i.i.i to i32
  br label %_ZN2v88internal14NumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit

bb.i:                                             ; preds = %bb.g
  %i.ap = bitcast double %.0.copyload.i.i.i.i.i to i64 ; 5 uses
  %i.aq = and i64 %i.ap, 9218868437227405312
  %i.ar = icmp eq i64 %i.aq, 0                    ; 2 uses
  %i.as = lshr i64 %i.ap, 52
  %i.at = trunc nuw nsw i64 %i.as to i32
  %i.au = and i32 %i.at, 2047
  %i.av = add nsw i32 %i.au, -1075
  %.0.i.i.i.i = select i1 %i.ar, i32 -1074, i32 %i.av ; 5 uses
  %i.aw = icmp slt i32 %.0.i.i.i.i, 0
  br i1 %i.aw, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.ax = icmp samesign ult i32 %.0.i.i.i.i, -52
  br i1 %i.ax, label %_ZN2v88internal14NumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ay = and i64 %i.ap, 4503599627370495         ; 2 uses
  %i.az = or disjoint i64 %i.ay, 4503599627370496
  %.0.i17.i.i.i = select i1 %i.ar, i64 %i.ay, i64 %i.az
  %i.ba = sub nsw i32 0, %.0.i.i.i.i
  %i.bb = zext nneg i32 %i.ba to i64
  %i.bc = lshr i64 %.0.i17.i.i.i, %i.bb
  br label %bb.n

bb.l:                                             ; preds = %bb.i
  %i.bd = icmp samesign ugt i32 %.0.i.i.i.i, 31
  br i1 %i.bd, label %_ZN2v88internal14NumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.be = zext nneg i32 %.0.i.i.i.i to i64
  %i.bf = shl i64 %i.ap, %i.be
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.k
  %.0.i.i.i = phi i64 [ %i.bc, %bb.k ], [ %i.bf, %bb.m ]
  %i.bg = trunc i64 %.0.i.i.i to i32              ; 2 uses
  %i.bh = sub i32 0, %i.bg
  %i.bi = icmp slt i64 %i.ap, 0
  %i.bj = select i1 %i.bi, i32 %i.bh, i32 %i.bg
  br label %_ZN2v88internal14NumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit

_ZN2v88internal14NumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.f, %bb.h, %bb.n
  %.0.i4 = phi i32 [ %i.ag, %bb.f ], [ %i.ao, %bb.h ], [ %i.bj, %bb.n ] ; 2 uses
  %i.bk = icmp slt i32 %.0.i4, 0
  br i1 %i.bk, label %bb.o, label %_ZN2v88internal14NumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal14NumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit.thread: ; preds = %bb.l, %bb.j, %_ZN2v88internal14NumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit
  %.0.i465 = phi i32 [ %.0.i4, %_ZN2v88internal14NumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit ], [ 0, %bb.j ], [ 0, %bb.l ] ; 2 uses
  %.pn.in.in.in.in = add i64 %i.h, 119
  %.pn.in.in.in = inttoptr i64 %.pn.in.in.in.in to ptr
  %.pn.in.in = load i64, ptr %.pn.in.in.in, align 8
  %.pn.in = add i64 %.pn.in.in, -1
  %.pn = inttoptr i64 %.pn.in to ptr
  %i.bl = getelementptr inbounds nuw i8, ptr %.pn, i64 16 ; 2 uses
  %i.bm = shl i64 %i.l, 1
  %i.bn = ashr i64 %i.bm, 29                      ; 2 uses
  %i.bo = and i64 %i.bn, -16
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bo
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %.0.copyload.i.i.i = load i64, ptr %i.bq, align 1 ; 2 uses
  %i.br = shl nuw i32 %.0.i465, 1
  %i.bs = zext i32 %i.br to i64                   ; 2 uses
  %.not.i5 = icmp uge i64 %.0.copyload.i.i.i, %i.bs
  %i.bt = sub nuw i64 %.0.copyload.i.i.i, %i.bs
  %i.bu = icmp uge i64 %i.bt, %i.y
  %i.bv = select i1 %.not.i5, i1 %i.bu, i1 false
  br i1 %i.bv, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZN2v88internal14NumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit.thread, %_ZN2v88internal14NumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit
  %i.bw = tail call ptr @_ZN2v88internal7Factory19NewWasmRuntimeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef 433, ptr null, i64 0) #18 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 8136
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 672
  tail call void @_ZN2v88internal8JSObject11AddPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEENS4_INS0_6ObjectEEENS0_18PropertyAttributesE(ptr noundef nonnull %2, ptr %i.bw, ptr nonnull %i.bx, ptr nonnull %i.by, i32 noundef 0) #18
  %i.bz = load i64, ptr %i.bw, align 8
  %i.ca = tail call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %2, i64 %i.bz, ptr noundef null) #18
  br label %_ZN2v88internalL36__RT_impl_Runtime_WasmStringNewWtf16ENS0_30RuntimeArgumentsWithoutHandlesEPNS0_7IsolateE.exit

bb.p:                                             ; preds = %_ZN2v88internal14NumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit.thread
  %i.cb = and i64 %i.y, 1
  %.not.i = icmp eq i64 %i.cb, 0
  br i1 %.not.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cc = tail call ptr @_ZN2v88internal7Factory19NewWasmRuntimeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef 434, ptr null, i64 0) #18 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 8136
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 672
  tail call void @_ZN2v88internal8JSObject11AddPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEENS4_INS0_6ObjectEEENS0_18PropertyAttributesE(ptr noundef nonnull %2, ptr %i.cc, ptr nonnull %i.cd, ptr nonnull %i.ce, i32 noundef 0) #18
  %i.cf = load i64, ptr %i.cc, align 8
  %i.cg = tail call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %2, i64 %i.cf, ptr noundef null) #18
  br label %_ZN2v88internalL36__RT_impl_Runtime_WasmStringNewWtf16ENS0_30RuntimeArgumentsWithoutHandlesEPNS0_7IsolateE.exit

bb.r:                                             ; preds = %bb.p
  %i.ch = and i64 %i.bn, -16
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.ch
  %.0.copyload.i.i.i7 = load i64, ptr %i.ci, align 1
  %i.cj = inttoptr i64 %.0.copyload.i.i.i7 to ptr
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.y
  %i.cl = zext nneg i32 %.0.i465 to i64
  %i.cm = tail call ptr @_ZN2v88internal7Factory32NewStringFromTwoByteLittleEndianENS_4base6VectorIKtEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr %i.ck, i64 %i.cl, i8 noundef zeroext 0) #18 ; 2 uses
  %.not58 = icmp eq ptr %i.cm, null
  br i1 %.not58, label %_ZNK2v88internal11MaybeHandleINS0_6StringEE8ToHandleINS0_6ObjectEEEbPNS0_12DirectHandleIT_EE.exit, label %bb.ab

_ZNK2v88internal11MaybeHandleINS0_6StringEE8ToHandleINS0_6ObjectEEEbPNS0_12DirectHandleIT_EE.exit: ; preds = %bb.r
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 368
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.cn, align 8 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 656
  %i.cp = load i64, ptr %i.co, align 8
  %.not.i8 = icmp eq i64 %.sroa.0.0.copyload.i.i, %i.cp
  br i1 %.not.i8, label %bb.s, label %_ZN2v88internal7Isolate9exceptionEv.exit, !prof !5

bb.s:                                             ; preds = %_ZNK2v88internal11MaybeHandleINS0_6StringEE8ToHandleINS0_6ObjectEEEbPNS0_12DirectHandleIT_EE.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.81) #19
  unreachable

_ZN2v88internal7Isolate9exceptionEv.exit:         ; preds = %_ZNK2v88internal11MaybeHandleINS0_6StringEE8ToHandleINS0_6ObjectEEEbPNS0_12DirectHandleIT_EE.exit
  %i.cq = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.cr = load ptr, ptr %i.c, align 8
  %i.cs = icmp eq ptr %i.cq, %i.cr
  br i1 %i.cs, label %bb.t, label %bb.u, !prof !5

bb.t:                                             ; preds = %_ZN2v88internal7Isolate9exceptionEv.exit
  %i.ct = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %2) #18
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %_ZN2v88internal7Isolate9exceptionEv.exit
  %.0.i.i = phi ptr [ %i.ct, %bb.t ], [ %i.cq, %_ZN2v88internal7Isolate9exceptionEv.exit ] ; 4 uses
  %i.cu = ptrtoint ptr %.0.i.i to i64             ; 2 uses
  %i.cv = add i64 %i.cu, 8
  %i.cw = inttoptr i64 %i.cv to ptr
  store ptr %i.cw, ptr %i.a, align 8
  store i64 %.sroa.0.0.copyload.i.i, ptr %.0.i.i, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %2, i64 8136 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.cy = load i64, ptr %i.cx, align 8
  %i.cz = add i64 %i.cy, -1
  %i.da = inttoptr i64 %i.cz to ptr               ; 3 uses
  %i.db = load atomic volatile i64, ptr %i.da monotonic, align 8
  %i.dc = add i64 %i.db, 11
  %i.dd = inttoptr i64 %i.dc to ptr
  %i.de = load atomic volatile i16, ptr %i.dd monotonic, align 2
  %i.df = icmp eq i16 %i.de, 128
  br i1 %i.df, label %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i

_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i:      ; preds = %bb.u
  %i.dg = getelementptr inbounds nuw i8, ptr %i.da, i64 12
  %i.dh = load i32, ptr %i.dg, align 4
  %i.di = trunc i32 %i.dh to i1
  br i1 %i.di, label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i

_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i, %bb.u
  br label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i

_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i
  %i.dj = phi i32 [ 1, %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i ], [ 0, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i ]
  store i32 %i.dj, ptr %3, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 0, ptr %i.dk, align 4
  %i.dl = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i8 0, ptr %i.dl, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 0, ptr %i.dm, align 4
  %i.dn = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 0, ptr %i.dn, align 8
  %i.do = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %2, ptr %i.do, align 8
  %i.dp = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  store ptr %i.cx, ptr %i.dp, align 8
  %i.dq = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr null, ptr %i.dq, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %3, i64 48
  store ptr %.0.i.i, ptr %i.dr, align 8
  %i.ds = getelementptr inbounds nuw i8, ptr %3, i64 56
  store ptr null, ptr %i.ds, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %3, i64 64
  store i64 %i.cu, ptr %i.dt, align 8
  %i.du = getelementptr inbounds nuw i8, ptr %3, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.du, i8 -1, i64 16, i1 false)
  %i.dv = load atomic volatile i64, ptr %i.da monotonic, align 8
  %i.dw = add i64 %i.dv, 11
  %i.dx = inttoptr i64 %i.dw to ptr
  %i.dy = load atomic volatile i16, ptr %i.dx monotonic, align 2
  %i.dz = and i16 %i.dy, -96
  %.not.i21.i.i = icmp eq i16 %i.dz, 32
  br i1 %.not.i21.i.i, label %bb.v, label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit

bb.v:                                             ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i
  %i.ea = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !17, !noundef !18
  %i.eb = trunc nuw i8 %i.ea to i1
  %i.ec = getelementptr inbounds nuw i8, ptr %2, i64 55448
  %i.ed = load i8, ptr %i.ec, align 8, !range !17
  %i.ee = trunc nuw i8 %i.ed to i1
  %not..i.i.i23.i.i = xor i1 %i.eb, true
  %i.ef = select i1 %not..i.i.i23.i.i, i1 true, i1 %i.ee
  br i1 %i.ef, label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.eg = getelementptr inbounds nuw i8, ptr %2, i64 64088
  %i.eh = load i8, ptr %i.eg, align 8, !range !17, !noundef !18
  %i.ei = trunc nuw i8 %i.eh to i1
  br i1 %i.ei, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  tail call void @_ZSt27__throw_bad_optional_accessv() #23
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i: ; preds = %bb.w
  %i.ej = getelementptr inbounds nuw i8, ptr %2, i64 64080
  %i.ek = load ptr, ptr %i.ej, align 8
  br label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i

_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i: ; preds = %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i, %bb.v
  %.pn.i.i26.i.i = phi ptr [ %i.ek, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i ], [ %2, %bb.v ]
  %.in.i.i27.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i26.i.i, i64 58464
  %i.el = load ptr, ptr %.in.i.i27.i.i, align 8
  %i.em = tail call ptr @_ZN2v88internal11StringTable12LookupStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.el, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr nonnull %i.cx) #18
  br label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit

_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit: ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i
  %.sroa.05.0.i22.i.i = phi ptr [ %i.em, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i ], [ %i.cx, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i ]
  store ptr %.sroa.05.0.i22.i.i, ptr %i.dp, align 8
  call void @_ZN2v88internal14LookupIterator5StartILb0EEEvv(ptr noundef nonnull align 8 dereferenceable(88) %3) #18
  %i.en = call i16 @_ZN2v88internal10JSReceiver11HasPropertyEPNS0_14LookupIteratorE(ptr noundef nonnull %3) #18 ; 2 uses
  %i.eo = trunc i16 %i.en to i1
  br i1 %i.eo, label %_ZNO2v85MaybeIbE8FromJustEv.exit, label %bb.y, !prof !6

bb.y:                                             ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit
  call void @_ZN2v812api_internal17FromJustIsNothingEv() #18
  br label %_ZNO2v85MaybeIbE8FromJustEv.exit

_ZNO2v85MaybeIbE8FromJustEv.exit:                 ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit, %bb.y
  %i.ep = and i16 %i.en, 256
  %.not59 = icmp eq i16 %i.ep, 0
  br i1 %.not59, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %_ZNO2v85MaybeIbE8FromJustEv.exit
  %i.eq = getelementptr inbounds nuw i8, ptr %2, i64 672
  call void @_ZN2v88internal8JSObject11AddPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEENS4_INS0_6ObjectEEENS0_18PropertyAttributesE(ptr noundef nonnull %2, ptr nonnull %.0.i.i, ptr nonnull %i.cx, ptr nonnull %i.eq, i32 noundef 0) #18
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %_ZNO2v85MaybeIbE8FromJustEv.exit
  %i.er = getelementptr inbounds nuw i8, ptr %2, i64 912
  %i.es = load i64, ptr %i.er, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %_ZN2v88internalL36__RT_impl_Runtime_WasmStringNewWtf16ENS0_30RuntimeArgumentsWithoutHandlesEPNS0_7IsolateE.exit

bb.ab:                                            ; preds = %bb.r
  %i.et = load i64, ptr %i.cm, align 8
  br label %_ZN2v88internalL36__RT_impl_Runtime_WasmStringNewWtf16ENS0_30RuntimeArgumentsWithoutHandlesEPNS0_7IsolateE.exit

_ZN2v88internalL36__RT_impl_Runtime_WasmStringNewWtf16ENS0_30RuntimeArgumentsWithoutHandlesEPNS0_7IsolateE.exit: ; preds = %bb.q, %bb.o, %bb.ab, %bb.aa
  %.sroa.035.1 = phi i64 [ %i.ca, %bb.o ], [ %i.cg, %bb.q ], [ %i.et, %bb.ab ], [ %i.es, %bb.aa ]
  store ptr %i.b, ptr %i.a, align 8
  %i.eu = load i32, ptr %i.e, align 8
  %i.ev = add nsw i32 %i.eu, -1
  store i32 %i.ev, ptr %i.e, align 8
  %i.ew = load ptr, ptr %i.c, align 8
  %.not.i3 = icmp eq ptr %i.ew, %i.d
  br i1 %.not.i3, label %_ZN2v88internal11HandleScopeD2Ev.exit, label %bb.ac, !prof !6

bb.ac:                                            ; preds = %_ZN2v88internalL36__RT_impl_Runtime_WasmStringNewWtf16ENS0_30RuntimeArgumentsWithoutHandlesEPNS0_7IsolateE.exit
  store ptr %i.d, ptr %i.c, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #18
  br label %_ZN2v88internal11HandleScopeD2Ev.exit

_ZN2v88internal11HandleScopeD2Ev.exit:            ; preds = %bb.ac, %_ZN2v88internalL36__RT_impl_Runtime_WasmStringNewWtf16ENS0_30RuntimeArgumentsWithoutHandlesEPNS0_7IsolateE.exit
  ret i64 %.sroa.035.1
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal31Runtime_WasmStringNewWtf16ArrayEiPmPNS0_7IsolateE(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit:
  %3 = alloca %"class.v8::internal::LookupIterator", align 8 ; 16 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 568 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 576 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8
  %i.h = load i64, ptr %1, align 8
  %i.i = icmp eq ptr %i.b, %i.d
  br i1 %i.i, label %bb.a, label %_ZN2v88internal6HandleINS0_9WasmArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !5

bb.a:                                             ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit
  %i.j = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %2) #18
  br label %_ZN2v88internal6HandleINS0_9WasmArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_9WasmArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit, %bb.a
  %.0.i.i = phi ptr [ %i.j, %bb.a ], [ %i.b, %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit ] ; 3 uses
  %i.k = ptrtoint ptr %.0.i.i to i64
  %i.l = add i64 %i.k, 8
  %i.m = inttoptr i64 %i.l to ptr
  store ptr %i.m, ptr %i.a, align 8
  store i64 %i.h, ptr %.0.i.i, align 8
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %bb.b, label %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit2, !prof !5

bb.b:                                             ; preds = %_ZN2v88internal6HandleINS0_9WasmArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #19
  unreachable

_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit2: ; preds = %_ZN2v88internal6HandleINS0_9WasmArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %i.n = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.o = add i64 %i.n, -8
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = load i64, ptr %i.p, align 8              ; 3 uses
  %i.r = and i64 %i.q, 1
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit2
  %i.t = lshr i64 %i.q, 32
  %i.u = trunc nuw i64 %i.t to i32
  br label %_ZN2v88internal14NumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit

bb.d:                                             ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit2
  %i.v = add nsw i64 %i.q, -1
  %i.w = inttoptr i64 %i.v to ptr
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.0.copyload.i.i.i.i.i = load double, ptr %i.x, align 1 ; 5 uses
  %i.y = tail call double @llvm.fabs.f64(double %.0.copyload.i.i.i.i.i)
  %i.z = fcmp one double %i.y, +inf
  %i.aa = fcmp ole double %.0.copyload.i.i.i.i.i, f0x41DFFFFFFFC00000
  %or.cond.i.i.i = and i1 %i.aa, %i.z
  %i.ab = fcmp oge double %.0.copyload.i.i.i.i.i, f0xC1E0000000000000
  %or.cond3.i.i.i = and i1 %i.ab, %or.cond.i.i.i
  br i1 %or.cond3.i.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ac = fptosi double %.0.copyload.i.i.i.i.i to i32
  br label %_ZN2v88internal14NumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit

bb.f:                                             ; preds = %bb.d
  %i.ad = bitcast double %.0.copyload.i.i.i.i.i to i64 ; 5 uses
  %i.ae = and i64 %i.ad, 9218868437227405312
  %i.af = icmp eq i64 %i.ae, 0                    ; 2 uses
  %i.ag = lshr i64 %i.ad, 52
  %i.ah = trunc nuw nsw i64 %i.ag to i32
  %i.ai = and i32 %i.ah, 2047
  %i.aj = add nsw i32 %i.ai, -1075
  %.0.i.i.i.i = select i1 %i.af, i32 -1074, i32 %i.aj ; 5 uses
  %i.ak = icmp slt i32 %.0.i.i.i.i, 0
  br i1 %i.ak, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.al = icmp samesign ult i32 %.0.i.i.i.i, -52
  br i1 %i.al, label %_ZN2v88internal14NumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.am = and i64 %i.ad, 4503599627370495         ; 2 uses
  %i.an = or disjoint i64 %i.am, 4503599627370496
  %.0.i17.i.i.i = select i1 %i.af, i64 %i.am, i64 %i.an
  %i.ao = sub nsw i32 0, %.0.i.i.i.i
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = lshr i64 %.0.i17.i.i.i, %i.ap
  br label %bb.k

bb.i:                                             ; preds = %bb.f
  %i.ar = icmp samesign ugt i32 %.0.i.i.i.i, 31
  br i1 %i.ar, label %_ZN2v88internal14NumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.as = zext nneg i32 %.0.i.i.i.i to i64
  %i.at = shl i64 %i.ad, %i.as
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.h
  %.0.i.i.i = phi i64 [ %i.aq, %bb.h ], [ %i.at, %bb.j ]
  %i.au = trunc i64 %.0.i.i.i to i32              ; 2 uses
  %i.av = sub i32 0, %i.au
  %i.aw = icmp slt i64 %i.ad, 0
  %i.ax = select i1 %i.aw, i32 %i.av, i32 %i.au
  br label %_ZN2v88internal14NumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit

_ZN2v88internal14NumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.c, %bb.e, %bb.g, %bb.i, %bb.k
  %.0.i5 = phi i32 [ %i.u, %bb.c ], [ %i.ac, %bb.e ], [ 0, %bb.g ], [ %i.ax, %bb.k ], [ 0, %bb.i ]
  %.not53 = icmp eq i32 %0, 1
  br i1 %.not53, label %bb.l, label %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit3, !prof !5

bb.l:                                             ; preds = %_ZN2v88internal14NumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #19
  unreachable

_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit3: ; preds = %_ZN2v88internal14NumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit
  %i.ay = add i64 %i.n, -16
  %i.az = inttoptr i64 %i.ay to ptr
  %i.ba = load i64, ptr %i.az, align 8            ; 3 uses
  %i.bb = and i64 %i.ba, 1
  %i.bc = icmp eq i64 %i.bb, 0
  br i1 %i.bc, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit3
  %i.bd = lshr i64 %i.ba, 32
  %i.be = trunc nuw i64 %i.bd to i32
  br label %_ZN2v88internal14NumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit13

bb.n:                                             ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit3
  %i.bf = add nsw i64 %i.ba, -1
  %i.bg = inttoptr i64 %i.bf to ptr
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %.0.copyload.i.i.i.i.i6 = load double, ptr %i.bh, align 1 ; 5 uses
  %i.bi = tail call double @llvm.fabs.f64(double %.0.copyload.i.i.i.i.i6)
  %i.bj = fcmp one double %i.bi, +inf
  %i.bk = fcmp ole double %.0.copyload.i.i.i.i.i6, f0x41DFFFFFFFC00000
  %or.cond.i.i.i7 = and i1 %i.bk, %i.bj
  %i.bl = fcmp oge double %.0.copyload.i.i.i.i.i6, f0xC1E0000000000000
  %or.cond3.i.i.i8 = and i1 %i.bl, %or.cond.i.i.i7
  br i1 %or.cond3.i.i.i8, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bm = fptosi double %.0.copyload.i.i.i.i.i6 to i32
  br label %_ZN2v88internal14NumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit13

bb.p:                                             ; preds = %bb.n
  %i.bn = bitcast double %.0.copyload.i.i.i.i.i6 to i64 ; 5 uses
  %i.bo = and i64 %i.bn, 9218868437227405312
  %i.bp = icmp eq i64 %i.bo, 0                    ; 2 uses
  %i.bq = lshr i64 %i.bn, 52
  %i.br = trunc nuw nsw i64 %i.bq to i32
  %i.bs = and i32 %i.br, 2047
  %i.bt = add nsw i32 %i.bs, -1075
  %.0.i.i.i.i9 = select i1 %i.bp, i32 -1074, i32 %i.bt ; 5 uses
  %i.bu = icmp slt i32 %.0.i.i.i.i9, 0
  br i1 %i.bu, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.bv = icmp samesign ult i32 %.0.i.i.i.i9, -52
  br i1 %i.bv, label %_ZN2v88internal14NumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit13, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bw = and i64 %i.bn, 4503599627370495         ; 2 uses
  %i.bx = or disjoint i64 %i.bw, 4503599627370496
  %.0.i17.i.i.i12 = select i1 %i.bp, i64 %i.bw, i64 %i.bx
  %i.by = sub nsw i32 0, %.0.i.i.i.i9
  %i.bz = zext nneg i32 %i.by to i64
  %i.ca = lshr i64 %.0.i17.i.i.i12, %i.bz
  br label %bb.u

bb.s:                                             ; preds = %bb.p
  %i.cb = icmp samesign ugt i32 %.0.i.i.i.i9, 31
  br i1 %i.cb, label %_ZN2v88internal14NumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit13, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cc = zext nneg i32 %.0.i.i.i.i9 to i64
  %i.cd = shl i64 %i.bn, %i.cc
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.r
  %.0.i.i.i10 = phi i64 [ %i.ca, %bb.r ], [ %i.cd, %bb.t ]
  %i.ce = trunc i64 %.0.i.i.i10 to i32            ; 2 uses
  %i.cf = sub i32 0, %i.ce
  %i.cg = icmp slt i64 %i.bn, 0
  %i.ch = select i1 %i.cg, i32 %i.cf, i32 %i.ce
  br label %_ZN2v88internal14NumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit13

_ZN2v88internal14NumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit13: ; preds = %bb.m, %bb.o, %bb.q, %bb.s, %bb.u
  %.0.i11 = phi i32 [ %i.be, %bb.m ], [ %i.bm, %bb.o ], [ 0, %bb.q ], [ %i.ch, %bb.u ], [ 0, %bb.s ]
  %i.ci = tail call ptr @_ZN2v88internal7Factory18NewStringFromUtf16ENS0_12DirectHandleINS0_9WasmArrayEEEjjNS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr nonnull %.0.i.i, i32 noundef %.0.i5, i32 noundef %.0.i11, i8 noundef zeroext 0) #18 ; 2 uses
  %.not54 = icmp eq ptr %i.ci, null
  br i1 %.not54, label %_ZNK2v88internal11MaybeHandleINS0_6StringEE8ToHandleINS0_6ObjectEEEbPNS0_12DirectHandleIT_EE.exit, label %bb.ae

_ZNK2v88internal11MaybeHandleINS0_6StringEE8ToHandleINS0_6ObjectEEEbPNS0_12DirectHandleIT_EE.exit: ; preds = %_ZN2v88internal14NumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit13
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 368
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.cj, align 8 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 656
  %i.cl = load i64, ptr %i.ck, align 8
  %.not.i14 = icmp eq i64 %.sroa.0.0.copyload.i.i, %i.cl
  br i1 %.not.i14, label %bb.v, label %_ZN2v88internal7Isolate9exceptionEv.exit, !prof !5

bb.v:                                             ; preds = %_ZNK2v88internal11MaybeHandleINS0_6StringEE8ToHandleINS0_6ObjectEEEbPNS0_12DirectHandleIT_EE.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.81) #19
  unreachable

_ZN2v88internal7Isolate9exceptionEv.exit:         ; preds = %_ZNK2v88internal11MaybeHandleINS0_6StringEE8ToHandleINS0_6ObjectEEEbPNS0_12DirectHandleIT_EE.exit
  %i.cm = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.cn = load ptr, ptr %i.c, align 8
  %i.co = icmp eq ptr %i.cm, %i.cn
  br i1 %i.co, label %bb.w, label %bb.x, !prof !5

bb.w:                                             ; preds = %_ZN2v88internal7Isolate9exceptionEv.exit
  %i.cp = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %2) #18
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %_ZN2v88internal7Isolate9exceptionEv.exit
  %.0.i.i4 = phi ptr [ %i.cp, %bb.w ], [ %i.cm, %_ZN2v88internal7Isolate9exceptionEv.exit ] ; 4 uses
  %i.cq = ptrtoint ptr %.0.i.i4 to i64            ; 2 uses
  %i.cr = add i64 %i.cq, 8
  %i.cs = inttoptr i64 %i.cr to ptr
  store ptr %i.cs, ptr %i.a, align 8
  store i64 %.sroa.0.0.copyload.i.i, ptr %.0.i.i4, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 8136 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.cu = load i64, ptr %i.ct, align 8
  %i.cv = add i64 %i.cu, -1
  %i.cw = inttoptr i64 %i.cv to ptr               ; 3 uses
  %i.cx = load atomic volatile i64, ptr %i.cw monotonic, align 8
  %i.cy = add i64 %i.cx, 11
  %i.cz = inttoptr i64 %i.cy to ptr
  %i.da = load atomic volatile i16, ptr %i.cz monotonic, align 2
  %i.db = icmp eq i16 %i.da, 128
  br i1 %i.db, label %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i

_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i:      ; preds = %bb.x
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cw, i64 12
  %i.dd = load i32, ptr %i.dc, align 4
  %i.de = trunc i32 %i.dd to i1
  br i1 %i.de, label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i

_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i, %bb.x
  br label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i

_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i
  %i.df = phi i32 [ 1, %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i ], [ 0, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i ]
  store i32 %i.df, ptr %3, align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 0, ptr %i.dg, align 4
  %i.dh = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i8 0, ptr %i.dh, align 8
  %i.di = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 0, ptr %i.di, align 4
  %i.dj = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 0, ptr %i.dj, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %2, ptr %i.dk, align 8
  %i.dl = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  store ptr %i.ct, ptr %i.dl, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr null, ptr %i.dm, align 8
  %i.dn = getelementptr inbounds nuw i8, ptr %3, i64 48
  store ptr %.0.i.i4, ptr %i.dn, align 8
  %i.do = getelementptr inbounds nuw i8, ptr %3, i64 56
  store ptr null, ptr %i.do, align 8
  %i.dp = getelementptr inbounds nuw i8, ptr %3, i64 64
  store i64 %i.cq, ptr %i.dp, align 8
  %i.dq = getelementptr inbounds nuw i8, ptr %3, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dq, i8 -1, i64 16, i1 false)
  %i.dr = load atomic volatile i64, ptr %i.cw monotonic, align 8
  %i.ds = add i64 %i.dr, 11
  %i.dt = inttoptr i64 %i.ds to ptr
  %i.du = load atomic volatile i16, ptr %i.dt monotonic, align 2
  %i.dv = and i16 %i.du, -96
  %.not.i21.i.i = icmp eq i16 %i.dv, 32
  br i1 %.not.i21.i.i, label %bb.y, label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit

bb.y:                                             ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i
  %i.dw = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !17, !noundef !18
  %i.dx = trunc nuw i8 %i.dw to i1
  %i.dy = getelementptr inbounds nuw i8, ptr %2, i64 55448
  %i.dz = load i8, ptr %i.dy, align 8, !range !17
  %i.ea = trunc nuw i8 %i.dz to i1
  %not..i.i.i23.i.i = xor i1 %i.dx, true
  %i.eb = select i1 %not..i.i.i23.i.i, i1 true, i1 %i.ea
  br i1 %i.eb, label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ec = getelementptr inbounds nuw i8, ptr %2, i64 64088
  %i.ed = load i8, ptr %i.ec, align 8, !range !17, !noundef !18
  %i.ee = trunc nuw i8 %i.ed to i1
  br i1 %i.ee, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  tail call void @_ZSt27__throw_bad_optional_accessv() #23
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i: ; preds = %bb.z
  %i.ef = getelementptr inbounds nuw i8, ptr %2, i64 64080
  %i.eg = load ptr, ptr %i.ef, align 8
  br label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i

_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i: ; preds = %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i, %bb.y
  %.pn.i.i26.i.i = phi ptr [ %i.eg, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i ], [ %2, %bb.y ]
  %.in.i.i27.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i26.i.i, i64 58464
  %i.eh = load ptr, ptr %.in.i.i27.i.i, align 8
  %i.ei = tail call ptr @_ZN2v88internal11StringTable12LookupStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.eh, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr nonnull %i.ct) #18
  br label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit

_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit: ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i
  %.sroa.05.0.i22.i.i = phi ptr [ %i.ei, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i ], [ %i.ct, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i ]
  store ptr %.sroa.05.0.i22.i.i, ptr %i.dl, align 8
  call void @_ZN2v88internal14LookupIterator5StartILb0EEEvv(ptr noundef nonnull align 8 dereferenceable(88) %3) #18
  %i.ej = call i16 @_ZN2v88internal10JSReceiver11HasPropertyEPNS0_14LookupIteratorE(ptr noundef nonnull %3) #18 ; 2 uses
  %i.ek = trunc i16 %i.ej to i1
  br i1 %i.ek, label %_ZNO2v85MaybeIbE8FromJustEv.exit, label %bb.ab, !prof !6

bb.ab:                                            ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit
  call void @_ZN2v812api_internal17FromJustIsNothingEv() #18
  br label %_ZNO2v85MaybeIbE8FromJustEv.exit

_ZNO2v85MaybeIbE8FromJustEv.exit:                 ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit, %bb.ab
  %i.el = and i16 %i.ej, 256
  %.not55 = icmp eq i16 %i.el, 0
  br i1 %.not55, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %_ZNO2v85MaybeIbE8FromJustEv.exit
  %i.em = getelementptr inbounds nuw i8, ptr %2, i64 672
  call void @_ZN2v88internal8JSObject11AddPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEENS4_INS0_6ObjectEEENS0_18PropertyAttributesE(ptr noundef nonnull %2, ptr nonnull %.0.i.i4, ptr nonnull %i.ct, ptr nonnull %i.em, i32 noundef 0) #18
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %_ZNO2v85MaybeIbE8FromJustEv.exit
  %i.en = getelementptr inbounds nuw i8, ptr %2, i64 912
  %i.eo = load i64, ptr %i.en, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %_ZN2v88internalL41__RT_impl_Runtime_WasmStringNewWtf16ArrayENS0_30RuntimeArgumentsWithoutHandlesEPNS0_7IsolateE.exit

bb.ae:                                            ; preds = %_ZN2v88internal14NumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit13
  %i.ep = load i64, ptr %i.ci, align 8
  br label %_ZN2v88internalL41__RT_impl_Runtime_WasmStringNewWtf16ArrayENS0_30RuntimeArgumentsWithoutHandlesEPNS0_7IsolateE.exit

_ZN2v88internalL41__RT_impl_Runtime_WasmStringNewWtf16ArrayENS0_30RuntimeArgumentsWithoutHandlesEPNS0_7IsolateE.exit: ; preds = %bb.ae, %bb.ad
  %.sroa.035.0 = phi i64 [ %i.ep, %bb.ae ], [ %i.eo, %bb.ad ]
  store ptr %i.b, ptr %i.a, align 8
  %i.eq = load i32, ptr %i.e, align 8
  %i.er = add nsw i32 %i.eq, -1
  store i32 %i.er, ptr %i.e, align 8
  %i.es = load ptr, ptr %i.c, align 8
  %.not.i = icmp eq ptr %i.es, %i.d
  br i1 %.not.i, label %_ZN2v88internal11HandleScopeD2Ev.exit, label %bb.af, !prof !6

bb.af:                                            ; preds = %_ZN2v88internalL41__RT_impl_Runtime_WasmStringNewWtf16ArrayENS0_30RuntimeArgumentsWithoutHandlesEPNS0_7IsolateE.exit
  store ptr %i.d, ptr %i.c, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #18
  br label %_ZN2v88internal11HandleScopeD2Ev.exit

_ZN2v88internal11HandleScopeD2Ev.exit:            ; preds = %bb.af, %_ZN2v88internalL41__RT_impl_Runtime_WasmStringNewWtf16ArrayENS0_30RuntimeArgumentsWithoutHandlesEPNS0_7IsolateE.exit
  ret i64 %.sroa.035.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal21Runtime_WasmSubstringEiPmPNS0_7IsolateE(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 568 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 576 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8
  %i.h = load i64, ptr %1, align 8                ; 3 uses
  %i.i = icmp eq ptr %i.b, %i.d
  br i1 %i.i, label %bb.a, label %_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit4, !prof !5

bb.a:                                             ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit
  %i.j = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %2) #18
  br label %_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit4

_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit4: ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit, %bb.a
  %.0.i.i3 = phi ptr [ %i.j, %bb.a ], [ %i.b, %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit ] ; 4 uses
  %i.k = ptrtoint ptr %.0.i.i3 to i64
  %i.l = add i64 %i.k, 8
  %i.m = inttoptr i64 %i.l to ptr
  store ptr %i.m, ptr %i.a, align 8
  store i64 %i.h, ptr %.0.i.i3, align 8
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %bb.b, label %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE21positive_smi_value_atEi.exit2, !prof !5

bb.b:                                             ; preds = %_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit4
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #19
  unreachable

_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE21positive_smi_value_atEi.exit2: ; preds = %_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit4
  %i.n = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.o = add i64 %i.n, -8
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = load i64, ptr %i.p, align 8
  %i.r = lshr i64 %i.q, 32
  %i.s = trunc nuw i64 %i.r to i32
  %.not51 = icmp eq i32 %0, 1
  br i1 %.not51, label %bb.c, label %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE21positive_smi_value_atEi.exit, !prof !5

bb.c:                                             ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE21positive_smi_value_atEi.exit2
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #19
  unreachable

_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE21positive_smi_value_atEi.exit: ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE21positive_smi_value_atEi.exit2
  %i.t = add i64 %i.n, -16
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = load i64, ptr %i.u, align 8
  %i.w = lshr i64 %i.v, 32
  %i.x = trunc nuw i64 %i.w to i32
  %i.y = add i64 %i.h, -1
  %i.z = inttoptr i64 %i.y to ptr                 ; 3 uses
  %i.aa = load atomic volatile i64, ptr %i.z acquire, align 8
  %i.ab = add i64 %i.aa, 11
  %i.ac = inttoptr i64 %i.ab to ptr
  %i.ad = load atomic volatile i16, ptr %i.ac monotonic, align 2 ; 3 uses
  %i.ae = and i16 %i.ad, -127
  %.not52 = icmp eq i16 %i.ae, 1
  br i1 %.not52, label %bb.d, label %bb.k, !prof !5

bb.d:                                             ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE21positive_smi_value_atEi.exit
  %i.af = and i16 %i.ad, 7
  %i.ag = icmp eq i16 %i.af, 1
  br i1 %i.ag, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.ah = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ai = load i64, ptr %i.ah, align 8
  %i.aj = add i64 %i.ai, -1
  %i.ak = inttoptr i64 %i.aj to ptr
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 12
  %i.am = load i32, ptr %i.al, align 4
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %.thread, label %bb.f

.thread:                                          ; preds = %bb.e
  %i.ao = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ap = load i64, ptr %i.ao, align 8            ; 2 uses
  %i.aq = add i64 %i.ap, -1
  %i.ar = inttoptr i64 %i.aq to ptr
  %i.as = load atomic volatile i64, ptr %i.ar acquire, align 8
  %i.at = add i64 %i.as, 11
  %i.au = inttoptr i64 %i.at to ptr
  %i.av = load atomic volatile i16, ptr %i.au monotonic, align 2
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aw = tail call ptr @_ZN2v88internal6String11SlowFlattenINS0_12DirectHandleEQsr3stdE16is_convertible_vIT_IS1_ENS3_IS1_EEEEES5_PNS0_7IsolateES4_INS0_10ConsStringEENS0_14AllocationTypeE(ptr noundef nonnull %2, ptr nonnull %.0.i.i3, i8 noundef zeroext 0)
  br label %bb.k

bb.g:                                             ; preds = %.thread, %bb.d
  %.sroa.027.0 = phi i16 [ %i.av, %.thread ], [ %i.ad, %bb.d ]
  %.sroa.012.1.i = phi i64 [ %i.ap, %.thread ], [ %i.h, %bb.d ] ; 2 uses
  %i.ax = and i16 %.sroa.027.0, -121
  %i.ay = icmp eq i16 %i.ax, 5
  br i1 %i.ay, label %bb.h, label %bb.i
end_hunk_0
