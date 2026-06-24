inline.NumInlined: 5609
inline.NumDeleted: 1806
begin_hunk_0_@_ZN2v88internal35Runtime_LoadPropertyWithInterceptorEiPmPNS0_7IsolateE:_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit4

_ZN2v88internal2IsINS0_10JSReceiverENS0_6ObjectEEEbNS0_12DirectHandleIT0_EE.exit.i: ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE2atINS0_8JSObjectEEENS0_6HandleIT_EEi.exit
  %i.o = add nsw i64 %i.m, -1
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = load atomic volatile i64, ptr %i.p monotonic, align 8
  %i.r = add i64 %i.q, 11
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = load atomic volatile i16, ptr %i.s monotonic, align 2
  %i.u = icmp ugt i16 %i.t, 299
  br i1 %i.u, label %.critedge55.i, label %bb.c

bb.c:                                             ; preds = %_ZN2v88internal2IsINS0_10JSReceiverENS0_6ObjectEEEbNS0_12DirectHandleIT0_EE.exit.i, %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE2atINS0_8JSObjectEEENS0_6HandleIT_EEi.exit
  %i.v = tail call ptr @_ZN2v88internal6Object15ConvertReceiverEPNS0_7IsolateENS0_12DirectHandleIS1_EE(ptr noundef nonnull %2, ptr nonnull %i.j) #22 ; 2 uses
  %.not118 = icmp eq ptr %i.v, null
  br i1 %.not118, label %_ZNK2v88internal11MaybeHandleINS0_10JSReceiverEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit, label %.critedge55.i

_ZNK2v88internal11MaybeHandleINS0_10JSReceiverEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit: ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 912
  %i.x = load i64, ptr %i.w, align 8
  br label %.thread

.critedge55.i:                                    ; preds = %bb.c, %_ZN2v88internal2IsINS0_10JSReceiverENS0_6ObjectEEEbNS0_12DirectHandleIT0_EE.exit.i
  %.sroa.041.0 = phi ptr [ %i.j, %_ZN2v88internal2IsINS0_10JSReceiverENS0_6ObjectEEEbNS0_12DirectHandleIT0_EE.exit.i ], [ %i.v, %bb.c ] ; 2 uses
  %i.y = load i64, ptr %i.l, align 8
  %i.z = add i64 %i.y, -1
  %i.aa = inttoptr i64 %i.z to ptr
  %i.ab = load atomic volatile i64, ptr %i.aa monotonic, align 8 ; 2 uses
  %i.ac = add i64 %i.ab, 31
  %i.ad = inttoptr i64 %i.ac to ptr
  %i.ae = load i64, ptr %i.ad, align 8            ; 3 uses
  %i.af = add i64 %i.ab, -1
  %i.ag = inttoptr i64 %i.af to ptr
  %i.ah = load atomic volatile i64, ptr %i.ag monotonic, align 8
  %i.ai = trunc i64 %i.ae to i1
  br i1 %i.ai, label %_ZN2v88internal3Map29ConcurrentIsHeapObjectWithMapENS0_16PtrComprCageBaseENS0_6TaggedINS0_6ObjectEEENS3_IS1_EE.exit.i.i.i.i.i.i, label %_ZNK2v88internal3Map17GetConstructorRawENS0_16PtrComprCageBaseE.exit.i.i.i.i.i

_ZN2v88internal3Map29ConcurrentIsHeapObjectWithMapENS0_16PtrComprCageBaseENS0_6TaggedINS0_6ObjectEEENS3_IS1_EE.exit.i.i.i.i.i.i: ; preds = %.critedge55.i, %bb.d
  %.sroa.06.020.i.i.i.i.i.i = phi i64 [ %i.ap, %bb.d ], [ %i.ae, %.critedge55.i ] ; 3 uses
  %i.aj = add nsw i64 %.sroa.06.020.i.i.i.i.i.i, -1
  %i.ak = inttoptr i64 %i.aj to ptr
  %i.al = load atomic volatile i64, ptr %i.ak monotonic, align 8
  %i.am = icmp eq i64 %i.al, %i.ah
  br i1 %i.am, label %bb.d, label %_ZNK2v88internal3Map17GetConstructorRawENS0_16PtrComprCageBaseE.exit.i.i.i.i.i

bb.d:                                             ; preds = %_ZN2v88internal3Map29ConcurrentIsHeapObjectWithMapENS0_16PtrComprCageBaseENS0_6TaggedINS0_6ObjectEEENS3_IS1_EE.exit.i.i.i.i.i.i
  %i.an = add i64 %.sroa.06.020.i.i.i.i.i.i, 31
  %i.ao = inttoptr i64 %i.an to ptr
  %i.ap = load i64, ptr %i.ao, align 8            ; 3 uses
  %i.aq = trunc i64 %i.ap to i1
  br i1 %i.aq, label %_ZN2v88internal3Map29ConcurrentIsHeapObjectWithMapENS0_16PtrComprCageBaseENS0_6TaggedINS0_6ObjectEEENS3_IS1_EE.exit.i.i.i.i.i.i, label %_ZNK2v88internal3Map17GetConstructorRawENS0_16PtrComprCageBaseE.exit.i.i.i.i.i, !llvm.loop !13

_ZNK2v88internal3Map17GetConstructorRawENS0_16PtrComprCageBaseE.exit.i.i.i.i.i: ; preds = %bb.d, %_ZN2v88internal3Map29ConcurrentIsHeapObjectWithMapENS0_16PtrComprCageBaseENS0_6TaggedINS0_6ObjectEEENS3_IS1_EE.exit.i.i.i.i.i.i, %.critedge55.i
  %.sroa.06.0.lcssa.i.i.i.i.i.i = phi i64 [ %i.ae, %.critedge55.i ], [ %i.ap, %bb.d ], [ %.sroa.06.020.i.i.i.i.i.i, %_ZN2v88internal3Map29ConcurrentIsHeapObjectWithMapENS0_16PtrComprCageBaseENS0_6TaggedINS0_6ObjectEEENS3_IS1_EE.exit.i.i.i.i.i.i ] ; 4 uses
  %i.ar = trunc i64 %.sroa.06.0.lcssa.i.i.i.i.i.i to i1
  br i1 %i.ar, label %_ZN2v88internal8IsTuple2ENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i.i.i, label %_ZNK2v88internal3Map14GetConstructorENS0_16PtrComprCageBaseE.exit.i.i.i.i

_ZN2v88internal8IsTuple2ENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i.i.i: ; preds = %_ZNK2v88internal3Map17GetConstructorRawENS0_16PtrComprCageBaseE.exit.i.i.i.i.i
  %i.as = add nsw i64 %.sroa.06.0.lcssa.i.i.i.i.i.i, -1
  %i.at = inttoptr i64 %i.as to ptr               ; 2 uses
  %i.au = load atomic volatile i64, ptr %i.at monotonic, align 8
  %i.av = add i64 %i.au, 11
  %i.aw = inttoptr i64 %i.av to ptr
  %i.ax = load atomic volatile i16, ptr %i.aw monotonic, align 2
  %i.ay = icmp eq i16 %i.ax, 171
  br i1 %i.ay, label %bb.e, label %_ZNK2v88internal3Map14GetConstructorENS0_16PtrComprCageBaseE.exit.i.i.i.i

bb.e:                                             ; preds = %_ZN2v88internal8IsTuple2ENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.ba = load i64, ptr %i.az, align 8
  br label %_ZNK2v88internal3Map14GetConstructorENS0_16PtrComprCageBaseE.exit.i.i.i.i

_ZNK2v88internal3Map14GetConstructorENS0_16PtrComprCageBaseE.exit.i.i.i.i: ; preds = %bb.e, %_ZN2v88internal8IsTuple2ENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i.i.i, %_ZNK2v88internal3Map17GetConstructorRawENS0_16PtrComprCageBaseE.exit.i.i.i.i.i
  %.sroa.04.0.i.i.i.i.i = phi i64 [ %i.ba, %bb.e ], [ %.sroa.06.0.lcssa.i.i.i.i.i.i, %_ZN2v88internal8IsTuple2ENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i.i.i ], [ %.sroa.06.0.lcssa.i.i.i.i.i.i, %_ZNK2v88internal3Map17GetConstructorRawENS0_16PtrComprCageBaseE.exit.i.i.i.i.i ] ; 5 uses
  %i.bb = trunc i64 %.sroa.04.0.i.i.i.i.i to i1
  br i1 %i.bb, label %_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit.i.i.i.i, label %_ZNK2v88internal3Map23GetFunctionTemplateInfoENS0_16PtrComprCageBaseE.exit.i.i.i

_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit.i.i.i.i: ; preds = %_ZNK2v88internal3Map14GetConstructorENS0_16PtrComprCageBaseE.exit.i.i.i.i
  %i.bc = add nsw i64 %.sroa.04.0.i.i.i.i.i, -1
  %i.bd = inttoptr i64 %i.bc to ptr
  %i.be = load atomic volatile i64, ptr %i.bd monotonic, align 8
  %i.bf = add i64 %i.be, 11
  %i.bg = inttoptr i64 %i.bf to ptr
  %i.bh = load atomic volatile i16, ptr %i.bg monotonic, align 2
  %i.bi = add i16 %i.bh, -2065
  %i.bj = icmp ult i16 %i.bi, 17
  br i1 %i.bj, label %bb.f, label %_ZNK2v88internal3Map23GetFunctionTemplateInfoENS0_16PtrComprCageBaseE.exit.i.i.i

bb.f:                                             ; preds = %_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit.i.i.i.i
  %i.bk = add i64 %.sroa.04.0.i.i.i.i.i, 31
  %i.bl = inttoptr i64 %i.bk to ptr
  %i.bm = load atomic volatile i64, ptr %i.bl monotonic, align 8
  %i.bn = add i64 %i.bm, 15
  %i.bo = inttoptr i64 %i.bn to ptr
  %i.bp = load atomic volatile i64, ptr %i.bo acquire, align 8
  br label %_ZNK2v88internal3Map23GetFunctionTemplateInfoENS0_16PtrComprCageBaseE.exit.i.i.i

_ZNK2v88internal3Map23GetFunctionTemplateInfoENS0_16PtrComprCageBaseE.exit.i.i.i: ; preds = %bb.f, %_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit.i.i.i.i, %_ZNK2v88internal3Map14GetConstructorENS0_16PtrComprCageBaseE.exit.i.i.i.i
  %.sroa.08.0.i.i.i.i = phi i64 [ %i.bp, %bb.f ], [ %.sroa.04.0.i.i.i.i.i, %_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit.i.i.i.i ], [ %.sroa.04.0.i.i.i.i.i, %_ZNK2v88internal3Map14GetConstructorENS0_16PtrComprCageBaseE.exit.i.i.i.i ]
  %i.bq = add i64 %.sroa.08.0.i.i.i.i, 63
  %i.br = inttoptr i64 %i.bq to ptr
  %i.bs = load atomic volatile i64, ptr %i.br acquire, align 8 ; 3 uses
  %i.bt = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 10624
  %i.bv = load ptr, ptr %i.bu, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 96
  %i.bx = load i64, ptr %i.bw, align 8
  %i.by = icmp eq i64 %i.bs, %i.bx
  br i1 %i.by, label %_ZNK2v88internal8JSObject19GetNamedInterceptorEv.exit, label %bb.g

bb.g:                                             ; preds = %_ZNK2v88internal3Map23GetFunctionTemplateInfoENS0_16PtrComprCageBaseE.exit.i.i.i
  %i.bz = add i64 %i.bs, 31
  %i.ca = inttoptr i64 %i.bz to ptr
  %i.cb = load i64, ptr %i.ca, align 8
  br label %_ZNK2v88internal8JSObject19GetNamedInterceptorEv.exit

_ZNK2v88internal8JSObject19GetNamedInterceptorEv.exit: ; preds = %_ZNK2v88internal3Map23GetFunctionTemplateInfoENS0_16PtrComprCageBaseE.exit.i.i.i, %bb.g
  %.sroa.08.0.i3.i.i.i = phi i64 [ %i.cb, %bb.g ], [ %i.bs, %_ZNK2v88internal3Map23GetFunctionTemplateInfoENS0_16PtrComprCageBaseE.exit.i.i.i ] ; 2 uses
  %i.cc = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.cd = load ptr, ptr %i.c, align 8
  %i.ce = icmp eq ptr %i.cc, %i.cd
  br i1 %i.ce, label %bb.h, label %_ZN2v88internal6HandleINS0_15InterceptorInfoEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !8

bb.h:                                             ; preds = %_ZNK2v88internal8JSObject19GetNamedInterceptorEv.exit
  %i.cf = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %2) #22
  br label %_ZN2v88internal6HandleINS0_15InterceptorInfoEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_15InterceptorInfoEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %_ZNK2v88internal8JSObject19GetNamedInterceptorEv.exit, %bb.h
  %.0.i.i8 = phi ptr [ %i.cf, %bb.h ], [ %i.cc, %_ZNK2v88internal8JSObject19GetNamedInterceptorEv.exit ] ; 3 uses
  %i.cg = ptrtoint ptr %.0.i.i8 to i64
  %i.ch = add i64 %i.cg, 8
  %i.ci = inttoptr i64 %i.ch to ptr
  store ptr %i.ci, ptr %i.a, align 8
  store i64 %.sroa.08.0.i3.i.i.i, ptr %.0.i.i8, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.cj = add i64 %.sroa.08.0.i3.i.i.i, 7
  %i.ck = inttoptr i64 %i.cj to ptr
  %i.cl = load i64, ptr %i.ck, align 8
  %i.cm = load i64, ptr %.sroa.041.0, align 8
  %i.cn = load i64, ptr %i.l, align 8
  call void @_ZN2v88internal25PropertyCallbackArgumentsC1EPNS0_7IsolateENS0_6TaggedINS0_6ObjectEEES6_NS4_INS0_8JSObjectEEENS_5MaybeINS0_11ShouldThrowEEE(ptr noundef nonnull align 8 dereferenceable(96) %4, ptr noundef nonnull %2, i64 %i.cl, i64 %i.cm, i64 %i.cn, i64 1) #22
  %i.co = call ptr @_ZN2v88internal25PropertyCallbackArguments15CallNamedGetterENS0_12DirectHandleINS0_15InterceptorInfoEEENS2_INS0_4NameEEE(ptr noundef nonnull align 8 dereferenceable(96) %4, ptr nonnull %.0.i.i8, ptr %1) ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %2, i64 368
  %.sroa.0.0.copyload.i10 = load i64, ptr %i.cp, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %2, i64 656
  %i.cr = load i64, ptr %i.cq, align 8
  %.not119 = icmp eq i64 %.sroa.0.0.copyload.i10, %i.cr
  br i1 %.not119, label %.critedge57.i, label %bb.i

bb.i:                                             ; preds = %_ZN2v88internal6HandleINS0_15InterceptorInfoEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %i.cs = getelementptr inbounds nuw i8, ptr %2, i64 912
  br label %.critedge59.i

.critedge57.i:                                    ; preds = %_ZN2v88internal6HandleINS0_15InterceptorInfoEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %i.ct = icmp eq ptr %i.co, null
  br i1 %i.ct, label %bb.j, label %.critedge59.i

bb.j:                                             ; preds = %.critedge57.i
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN2v88internal15CustomArgumentsINS_20PropertyCallbackInfoINS_5ValueEEEEE, i64 16), ptr %4, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %4, i64 64
  store i64 1994495044801650351, ptr %i.cu, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cw = load ptr, ptr %i.cv, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.cy = load ptr, ptr %i.cx, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cw, i64 59768
  store ptr %i.cy, ptr %i.cz, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %.pre.pre = load i64, ptr %1, align 8
  %i.da = add i64 %.pre.pre, -1
  %i.db = inttoptr i64 %i.da to ptr               ; 3 uses
  %i.dc = load atomic volatile i64, ptr %i.db monotonic, align 8
  %i.dd = add i64 %i.dc, 11
  %i.de = inttoptr i64 %i.dd to ptr
  %i.df = load atomic volatile i16, ptr %i.de monotonic, align 2
  %i.dg = icmp eq i16 %i.df, 128
  br i1 %i.dg, label %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i

_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i:      ; preds = %bb.j
  %i.dh = getelementptr inbounds nuw i8, ptr %i.db, i64 12
  %i.di = load i32, ptr %i.dh, align 4
  %i.dj = trunc i32 %i.di to i1
  br i1 %i.dj, label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i

_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i, %bb.j
  br label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i

_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i
  %i.dk = phi i32 [ 3, %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i ], [ 0, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i ]
  store i32 %i.dk, ptr %5, align 8
  %i.dl = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 3 uses
  store i32 0, ptr %i.dl, align 4
  %i.dm = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i8 0, ptr %i.dm, align 8
  %i.dn = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i32 0, ptr %i.dn, align 4
  %i.do = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 0, ptr %i.do, align 8
  %i.dp = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %2, ptr %i.dp, align 8
  %i.dq = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr null, ptr %i.dr, align 8
  %i.ds = getelementptr inbounds nuw i8, ptr %5, i64 48
  store ptr %.sroa.041.0, ptr %i.ds, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 2 uses
  store ptr null, ptr %i.dt, align 8
  %i.du = getelementptr inbounds nuw i8, ptr %5, i64 64
  store i64 %i.k, ptr %i.du, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %5, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dv, i8 -1, i64 16, i1 false)
  %i.dw = load atomic volatile i64, ptr %i.db monotonic, align 8
  %i.dx = add i64 %i.dw, 11
  %i.dy = inttoptr i64 %i.dx to ptr
  %i.dz = load atomic volatile i16, ptr %i.dy monotonic, align 2
  %i.ea = and i16 %i.dz, -96
  %.not.i21.i.i = icmp eq i16 %i.ea, 32
  br i1 %.not.i21.i.i, label %bb.k, label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit

bb.k:                                             ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i
  %i.eb = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !6, !noundef !7
  %i.ec = trunc nuw i8 %i.eb to i1
  %i.ed = getelementptr inbounds nuw i8, ptr %2, i64 55448
  %i.ee = load i8, ptr %i.ed, align 8, !range !6
  %i.ef = trunc nuw i8 %i.ee to i1
  %not..i.i.i23.i.i = xor i1 %i.ec, true
  %i.eg = select i1 %not..i.i.i23.i.i, i1 true, i1 %i.ef
  br i1 %i.eg, label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.eh = getelementptr inbounds nuw i8, ptr %2, i64 64088
  %i.ei = load i8, ptr %i.eh, align 8, !range !6, !noundef !7
  %i.ej = trunc nuw i8 %i.ei to i1
  br i1 %i.ej, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_ZSt27__throw_bad_optional_accessv() #25
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i: ; preds = %bb.l
  %i.ek = getelementptr inbounds nuw i8, ptr %2, i64 64080
  %i.el = load ptr, ptr %i.ek, align 8
  br label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i

_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i: ; preds = %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i, %bb.k
  %.pn.i.i26.i.i = phi ptr [ %i.el, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i ], [ %2, %bb.k ]
  %.in.i.i27.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i26.i.i, i64 58464
  %i.em = load ptr, ptr %.in.i.i27.i.i, align 8
  %i.en = call ptr @_ZN2v88internal11StringTable12LookupStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.em, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr nonnull %1) #22
  br label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit

_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit: ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i
  %.sroa.05.0.i22.i.i = phi ptr [ %i.en, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i ], [ %1, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i ]
  store ptr %.sroa.05.0.i22.i.i, ptr %i.dq, align 8
  call void @_ZN2v88internal14LookupIterator5StartILb0EEEvv(ptr noundef nonnull align 8 dereferenceable(88) %5) #22
  br label %bb.n

bb.n:                                             ; preds = %.critedge.i, %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit
  %i.eo = load i32, ptr %i.dl, align 4
  %.not.i = icmp eq i32 %i.eo, 4
  br i1 %.not.i, label %bb.o, label %.critedge.i

bb.o:                                             ; preds = %bb.n
  %.sroa.01.0.copyload.i11 = load ptr, ptr %i.dt, align 8 ; 3 uses
  %i.ep = icmp eq ptr %.sroa.01.0.copyload.i11, %i.l
  br i1 %i.ep, label %_ZNK2v88internal12DirectHandleINS0_8JSObjectEE15is_identical_toIS2_EEbNS0_6HandleIT_EE.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.eq = icmp eq ptr %.sroa.01.0.copyload.i11, null
  br i1 %i.eq, label %.critedge.i, label %_ZNK2v88internal12DirectHandleINS0_8JSObjectEE15is_identical_toIS2_EEbNS0_6HandleIT_EE.exit

_ZNK2v88internal12DirectHandleINS0_8JSObjectEE15is_identical_toIS2_EEbNS0_6HandleIT_EE.exit: ; preds = %bb.p
  %i.er = load i64, ptr %.sroa.01.0.copyload.i11, align 8
  %i.es = load i64, ptr %i.l, align 8
  %i.et = icmp eq i64 %i.er, %i.es
  br i1 %i.et, label %_ZNK2v88internal12DirectHandleINS0_8JSObjectEE15is_identical_toIS2_EEbNS0_6HandleIT_EE.exit.thread, label %.critedge.i

.critedge.i:                                      ; preds = %bb.p, %bb.n, %_ZNK2v88internal12DirectHandleINS0_8JSObjectEE15is_identical_toIS2_EEbNS0_6HandleIT_EE.exit
  call void @_ZN2v88internal14LookupIterator4NextEv(ptr noundef nonnull align 8 dereferenceable(88) %5) #22
  br label %bb.n, !llvm.loop !59

_ZNK2v88internal12DirectHandleINS0_8JSObjectEE15is_identical_toIS2_EEbNS0_6HandleIT_EE.exit.thread: ; preds = %bb.o, %_ZNK2v88internal12DirectHandleINS0_8JSObjectEE15is_identical_toIS2_EEbNS0_6HandleIT_EE.exit
  call void @_ZN2v88internal14LookupIterator4NextEv(ptr noundef nonnull align 8 dereferenceable(88) %5) #22
  %i.eu = call ptr @_ZN2v88internal6Object11GetPropertyEPNS0_14LookupIteratorEb(ptr noundef nonnull %5, i1 noundef zeroext false) #22 ; 2 uses
  %.not120 = icmp eq ptr %i.eu, null
  br i1 %.not120, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit, label %.critedge61.i

_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit: ; preds = %_ZNK2v88internal12DirectHandleINS0_8JSObjectEE15is_identical_toIS2_EEbNS0_6HandleIT_EE.exit.thread
  %i.ev = getelementptr inbounds nuw i8, ptr %2, i64 912
  %i.ew = load i64, ptr %i.ev, align 8
  br label %.thread115

.critedge61.i:                                    ; preds = %_ZNK2v88internal12DirectHandleINS0_8JSObjectEE15is_identical_toIS2_EEbNS0_6HandleIT_EE.exit.thread
  %i.ex = load i32, ptr %i.dl, align 4
  %.not121 = icmp eq i32 %i.ex, 0
  br i1 %.not121, label %bb.q, label %bb.v

bb.q:                                             ; preds = %.critedge61.i
  %i.ey = icmp ugt i32 %0, 2
  br i1 %i.ey, label %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EEixEi.exit, label %bb.r, !prof !5

bb.r:                                             ; preds = %bb.q
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.66) #21
  unreachable

_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EEixEi.exit: ; preds = %bb.q
  %.not122 = icmp eq i32 %0, 3
  br i1 %.not122, label %bb.s, label %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit, !prof !8

bb.s:                                             ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EEixEi.exit
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.66) #21
  unreachable

_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit: ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EEixEi.exit
  %i.ez = add i64 %i.h, -24
  %i.fa = inttoptr i64 %i.ez to ptr
  %i.fb = load i64, ptr %i.fa, align 8
  %i.fc = lshr i64 %i.fb, 1
  %i.fd = trunc i64 %i.fc to i32
  %i.fe = add i64 %i.h, -32
  %i.ff = inttoptr i64 %i.fe to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.fg = load i64, ptr %i.ff, align 8
  store i64 %i.fg, ptr %6, align 8
  %i.fh = call noundef zeroext i8 @_ZNK2v88internal14FeedbackVector7GetKindENS0_12FeedbackSlotE(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 %i.fd) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.fi = icmp eq i8 %i.fh, 6
  br i1 %i.fi, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit
  %i.fj = getelementptr inbounds nuw i8, ptr %2, i64 648
  %i.fk = load i64, ptr %i.fj, align 8
  br label %.thread115

bb.u:                                             ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit
  %.sroa.0.0.copyload.i12 = load ptr, ptr %i.dq, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  store ptr %.sroa.0.0.copyload.i12, ptr %3, align 8
  %i.fl = call ptr @_ZN2v88internal7Factory17NewReferenceErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef 221, ptr nonnull %3, i64 1) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.fm = load i64, ptr %i.fl, align 8
  %i.fn = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %2, i64 %i.fm, ptr noundef null) #22
  br label %.thread115

.critedge59.i:                                    ; preds = %.critedge57.i, %bb.i
  %.sroa.057.1.in = phi ptr [ %i.cs, %bb.i ], [ %i.co, %.critedge57.i ]
  %.sroa.057.1 = load i64, ptr %.sroa.057.1.in, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN2v88internal15CustomArgumentsINS_20PropertyCallbackInfoINS_5ValueEEEEE, i64 16), ptr %4, align 8
  %i.fo = getelementptr inbounds nuw i8, ptr %4, i64 64
  store i64 1994495044801650351, ptr %i.fo, align 8
  %i.fp = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.fq = load ptr, ptr %i.fp, align 8
  %i.fr = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.fs = load ptr, ptr %i.fr, align 8
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fq, i64 59768
  store ptr %i.fs, ptr %i.ft, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %.thread

.thread115:                                       ; preds = %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit, %bb.u, %bb.t
  %.sroa.057.2.ph = phi i64 [ %i.fk, %bb.t ], [ %i.fn, %bb.u ], [ %i.ew, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %.thread

bb.v:                                             ; preds = %.critedge61.i
  %i.fu = load i64, ptr %i.eu, align 8            ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.fv = icmp eq ptr %2, null
  br i1 %i.fv, label %_ZN2v88internalL45__RT_impl_Runtime_LoadPropertyWithInterceptorENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit, label %.thread, !prof !60

.thread:                                          ; preds = %_ZNK2v88internal11MaybeHandleINS0_10JSReceiverEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit, %.critedge59.i, %.thread115, %bb.v
  %.sroa.057.0112 = phi i64 [ %.sroa.057.2.ph, %.thread115 ], [ %i.fu, %bb.v ], [ %i.x, %_ZNK2v88internal11MaybeHandleINS0_10JSReceiverEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit ], [ %.sroa.057.1, %.critedge59.i ] ; 2 uses
  store ptr %i.b, ptr %i.a, align 8
  %i.fw = load i32, ptr %i.e, align 8
  %i.fx = add nsw i32 %i.fw, -1
  store i32 %i.fx, ptr %i.e, align 8
  %i.fy = load ptr, ptr %i.c, align 8
  %.not.i2 = icmp eq ptr %i.fy, %i.d
  br i1 %.not.i2, label %_ZN2v88internalL45__RT_impl_Runtime_LoadPropertyWithInterceptorENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit, label %bb.w, !prof !5

bb.w:                                             ; preds = %.thread
  store ptr %i.d, ptr %i.c, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #22
  br label %_ZN2v88internalL45__RT_impl_Runtime_LoadPropertyWithInterceptorENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit

_ZN2v88internalL45__RT_impl_Runtime_LoadPropertyWithInterceptorENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit: ; preds = %bb.w, %.thread, %bb.v
  %.sroa.057.0113 = phi i64 [ %i.fu, %bb.v ], [ %.sroa.057.0112, %.thread ], [ %.sroa.057.0112, %bb.w ]
  ret i64 %.sroa.057.0113
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal36Runtime_StorePropertyWithInterceptorEiPmPNS0_7IsolateE(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %"class.v8::internal::PropertyCallbackArguments", align 8 ; 14 uses
  %4 = alloca %"class.v8::internal::LookupIterator", align 8 ; 19 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 568 ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 576 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %bb.b, label %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE2atINS0_8JSObjectEEENS0_6HandleIT_EEi.exit, !prof !8

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.66) #21
  unreachable

_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE2atINS0_8JSObjectEEENS0_6HandleIT_EEi.exit: ; preds = %bb.a
  %i.h = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.i = add i64 %i.h, -8                         ; 2 uses
  %i.j = inttoptr i64 %i.i to ptr                 ; 4 uses
  %.not130 = icmp eq i32 %0, 1
  br i1 %.not130, label %bb.c, label %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit, !prof !8

bb.c:                                             ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE2atINS0_8JSObjectEEENS0_6HandleIT_EEi.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.66) #21
  unreachable

_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit: ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE2atINS0_8JSObjectEEENS0_6HandleIT_EEi.exit
  %i.k = add i64 %i.h, -16                        ; 2 uses
  %i.l = inttoptr i64 %i.k to ptr                 ; 4 uses
  %i.m = load i64, ptr %i.j, align 8              ; 2 uses
  %i.n = add i64 %i.m, -1
  %i.o = inttoptr i64 %i.n to ptr                 ; 4 uses
  %i.p = load atomic volatile i64, ptr %i.o monotonic, align 8
  %i.q = add i64 %i.p, 11
  %i.r = inttoptr i64 %i.q to ptr
  %i.s = load atomic volatile i16, ptr %i.r monotonic, align 2
  %i.t = icmp eq i16 %i.s, 304
  br i1 %i.t, label %bb.d, label %.critedge.i

bb.d:                                             ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit
  %i.u = load atomic volatile i64, ptr %i.o monotonic, align 8
  %i.v = add i64 %i.u, 13
  %i.w = inttoptr i64 %i.v to ptr
  %i.x = load atomic volatile i8, ptr %i.w monotonic, align 1
  %i.y = and i8 %i.x, 4
  %.not131 = icmp eq i8 %i.y, 0
  br i1 %.not131, label %.critedge3.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = load atomic volatile i64, ptr %i.o monotonic, align 8 ; 2 uses
  %i.aa = add i64 %i.z, 31
  %i.ab = inttoptr i64 %i.aa to ptr
  %i.ac = load i64, ptr %i.ab, align 8            ; 3 uses
  %i.ad = add i64 %i.z, -1
  %i.ae = inttoptr i64 %i.ad to ptr
  %i.af = load atomic volatile i64, ptr %i.ae monotonic, align 8
  %i.ag = trunc i64 %i.ac to i1
  br i1 %i.ag, label %_ZN2v88internal3Map29ConcurrentIsHeapObjectWithMapENS0_16PtrComprCageBaseENS0_6TaggedINS0_6ObjectEEENS3_IS1_EE.exit.i.i.i.i.i.i, label %_ZNK2v88internal3Map17GetConstructorRawENS0_16PtrComprCageBaseE.exit.i.i.i.i.i

_ZN2v88internal3Map29ConcurrentIsHeapObjectWithMapENS0_16PtrComprCageBaseENS0_6TaggedINS0_6ObjectEEENS3_IS1_EE.exit.i.i.i.i.i.i: ; preds = %bb.e, %bb.f
  %.sroa.06.020.i.i.i.i.i.i = phi i64 [ %i.an, %bb.f ], [ %i.ac, %bb.e ] ; 3 uses
  %i.ah = add nsw i64 %.sroa.06.020.i.i.i.i.i.i, -1
  %i.ai = inttoptr i64 %i.ah to ptr
  %i.aj = load atomic volatile i64, ptr %i.ai monotonic, align 8
  %i.ak = icmp eq i64 %i.aj, %i.af
  br i1 %i.ak, label %bb.f, label %_ZNK2v88internal3Map17GetConstructorRawENS0_16PtrComprCageBaseE.exit.i.i.i.i.i

bb.f:                                             ; preds = %_ZN2v88internal3Map29ConcurrentIsHeapObjectWithMapENS0_16PtrComprCageBaseENS0_6TaggedINS0_6ObjectEEENS3_IS1_EE.exit.i.i.i.i.i.i
  %i.al = add i64 %.sroa.06.020.i.i.i.i.i.i, 31
  %i.am = inttoptr i64 %i.al to ptr
  %i.an = load i64, ptr %i.am, align 8            ; 3 uses
  %i.ao = trunc i64 %i.an to i1
  br i1 %i.ao, label %_ZN2v88internal3Map29ConcurrentIsHeapObjectWithMapENS0_16PtrComprCageBaseENS0_6TaggedINS0_6ObjectEEENS3_IS1_EE.exit.i.i.i.i.i.i, label %_ZNK2v88internal3Map17GetConstructorRawENS0_16PtrComprCageBaseE.exit.i.i.i.i.i, !llvm.loop !13

_ZNK2v88internal3Map17GetConstructorRawENS0_16PtrComprCageBaseE.exit.i.i.i.i.i: ; preds = %bb.f, %_ZN2v88internal3Map29ConcurrentIsHeapObjectWithMapENS0_16PtrComprCageBaseENS0_6TaggedINS0_6ObjectEEENS3_IS1_EE.exit.i.i.i.i.i.i, %bb.e
  %.sroa.06.0.lcssa.i.i.i.i.i.i = phi i64 [ %i.ac, %bb.e ], [ %i.an, %bb.f ], [ %.sroa.06.020.i.i.i.i.i.i, %_ZN2v88internal3Map29ConcurrentIsHeapObjectWithMapENS0_16PtrComprCageBaseENS0_6TaggedINS0_6ObjectEEENS3_IS1_EE.exit.i.i.i.i.i.i ] ; 4 uses
  %i.ap = trunc i64 %.sroa.06.0.lcssa.i.i.i.i.i.i to i1
  br i1 %i.ap, label %_ZN2v88internal8IsTuple2ENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i.i.i, label %_ZNK2v88internal3Map14GetConstructorENS0_16PtrComprCageBaseE.exit.i.i.i.i

_ZN2v88internal8IsTuple2ENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i.i.i: ; preds = %_ZNK2v88internal3Map17GetConstructorRawENS0_16PtrComprCageBaseE.exit.i.i.i.i.i
  %i.aq = add nsw i64 %.sroa.06.0.lcssa.i.i.i.i.i.i, -1
  %i.ar = inttoptr i64 %i.aq to ptr               ; 2 uses
  %i.as = load atomic volatile i64, ptr %i.ar monotonic, align 8
  %i.at = add i64 %i.as, 11
  %i.au = inttoptr i64 %i.at to ptr
  %i.av = load atomic volatile i16, ptr %i.au monotonic, align 2
  %i.aw = icmp eq i16 %i.av, 171
  br i1 %i.aw, label %bb.g, label %_ZNK2v88internal3Map14GetConstructorENS0_16PtrComprCageBaseE.exit.i.i.i.i

bb.g:                                             ; preds = %_ZN2v88internal8IsTuple2ENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.ay = load i64, ptr %i.ax, align 8
  br label %_ZNK2v88internal3Map14GetConstructorENS0_16PtrComprCageBaseE.exit.i.i.i.i

_ZNK2v88internal3Map14GetConstructorENS0_16PtrComprCageBaseE.exit.i.i.i.i: ; preds = %bb.g, %_ZN2v88internal8IsTuple2ENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i.i.i, %_ZNK2v88internal3Map17GetConstructorRawENS0_16PtrComprCageBaseE.exit.i.i.i.i.i
  %.sroa.04.0.i.i.i.i.i = phi i64 [ %i.ay, %bb.g ], [ %.sroa.06.0.lcssa.i.i.i.i.i.i, %_ZN2v88internal8IsTuple2ENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i.i.i ], [ %.sroa.06.0.lcssa.i.i.i.i.i.i, %_ZNK2v88internal3Map17GetConstructorRawENS0_16PtrComprCageBaseE.exit.i.i.i.i.i ] ; 5 uses
  %i.az = trunc i64 %.sroa.04.0.i.i.i.i.i to i1
  br i1 %i.az, label %_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit.i.i.i.i, label %_ZNK2v88internal3Map23GetFunctionTemplateInfoENS0_16PtrComprCageBaseE.exit.i.i.i

_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit.i.i.i.i: ; preds = %_ZNK2v88internal3Map14GetConstructorENS0_16PtrComprCageBaseE.exit.i.i.i.i
  %i.ba = add nsw i64 %.sroa.04.0.i.i.i.i.i, -1
  %i.bb = inttoptr i64 %i.ba to ptr
  %i.bc = load atomic volatile i64, ptr %i.bb monotonic, align 8
  %i.bd = add i64 %i.bc, 11
  %i.be = inttoptr i64 %i.bd to ptr
  %i.bf = load atomic volatile i16, ptr %i.be monotonic, align 2
  %i.bg = add i16 %i.bf, -2065
  %i.bh = icmp ult i16 %i.bg, 17
  br i1 %i.bh, label %bb.h, label %_ZNK2v88internal3Map23GetFunctionTemplateInfoENS0_16PtrComprCageBaseE.exit.i.i.i

bb.h:                                             ; preds = %_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit.i.i.i.i
  %i.bi = add i64 %.sroa.04.0.i.i.i.i.i, 31
  %i.bj = inttoptr i64 %i.bi to ptr
  %i.bk = load atomic volatile i64, ptr %i.bj monotonic, align 8
  %i.bl = add i64 %i.bk, 15
  %i.bm = inttoptr i64 %i.bl to ptr
  %i.bn = load atomic volatile i64, ptr %i.bm acquire, align 8
  br label %_ZNK2v88internal3Map23GetFunctionTemplateInfoENS0_16PtrComprCageBaseE.exit.i.i.i

_ZNK2v88internal3Map23GetFunctionTemplateInfoENS0_16PtrComprCageBaseE.exit.i.i.i: ; preds = %bb.h, %_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit.i.i.i.i, %_ZNK2v88internal3Map14GetConstructorENS0_16PtrComprCageBaseE.exit.i.i.i.i
  %.sroa.08.0.i.i.i.i = phi i64 [ %i.bn, %bb.h ], [ %.sroa.04.0.i.i.i.i.i, %_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit.i.i.i.i ], [ %.sroa.04.0.i.i.i.i.i, %_ZNK2v88internal3Map14GetConstructorENS0_16PtrComprCageBaseE.exit.i.i.i.i ]
  %i.bo = add i64 %.sroa.08.0.i.i.i.i, 63
  %i.bp = inttoptr i64 %i.bo to ptr
  %i.bq = load atomic volatile i64, ptr %i.bp acquire, align 8 ; 3 uses
  %i.br = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 10624
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 96
  %i.bv = load i64, ptr %i.bu, align 8
  %i.bw = icmp eq i64 %i.bq, %i.bv
  br i1 %i.bw, label %_ZNK2v88internal8JSObject19GetNamedInterceptorEv.exit, label %bb.i

bb.i:                                             ; preds = %_ZNK2v88internal3Map23GetFunctionTemplateInfoENS0_16PtrComprCageBaseE.exit.i.i.i
  %i.bx = add i64 %i.bq, 31
  %i.by = inttoptr i64 %i.bx to ptr
  %i.bz = load i64, ptr %i.by, align 8
  br label %_ZNK2v88internal8JSObject19GetNamedInterceptorEv.exit

_ZNK2v88internal8JSObject19GetNamedInterceptorEv.exit: ; preds = %_ZNK2v88internal3Map23GetFunctionTemplateInfoENS0_16PtrComprCageBaseE.exit.i.i.i, %bb.i
  %.sroa.08.0.i3.i.i.i = phi i64 [ %i.bz, %bb.i ], [ %i.bq, %_ZNK2v88internal3Map23GetFunctionTemplateInfoENS0_16PtrComprCageBaseE.exit.i.i.i ]
  %i.ca = add i64 %.sroa.08.0.i3.i.i.i, 15
  %i.cb = inttoptr i64 %i.ca to ptr
  %i.cc = load i32, ptr %i.cb, align 4
  %i.cd = and i32 %i.cc, 2
  %.not132 = icmp eq i32 %i.cd, 0
  %.pre133 = load i64, ptr %i.j, align 8          ; 2 uses
  br i1 %.not132, label %.critedge.i, label %_ZNK2v88internal8JSObject19GetNamedInterceptorEv.exit..critedge3.i_crit_edge

_ZNK2v88internal8JSObject19GetNamedInterceptorEv.exit..critedge3.i_crit_edge: ; preds = %_ZNK2v88internal8JSObject19GetNamedInterceptorEv.exit
  %.pre135 = add i64 %.pre133, -1
  %.pre136 = inttoptr i64 %.pre135 to ptr
  br label %.critedge3.i

.critedge3.i:                                     ; preds = %_ZNK2v88internal8JSObject19GetNamedInterceptorEv.exit..critedge3.i_crit_edge, %bb.d
  %.pre-phi137 = phi ptr [ %.pre136, %_ZNK2v88internal8JSObject19GetNamedInterceptorEv.exit..critedge3.i_crit_edge ], [ %i.o, %bb.d ]
  %i.ce = load atomic volatile i64, ptr %.pre-phi137 monotonic, align 8
  %i.cf = add i64 %i.ce, 23
  %i.cg = inttoptr i64 %i.cf to ptr
  %i.ch = load i64, ptr %i.cg, align 8            ; 2 uses
  %i.ci = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.cj = load ptr, ptr %i.c, align 8
  %i.ck = icmp eq ptr %i.ci, %i.cj
  br i1 %i.ck, label %bb.j, label %_ZN2v88internal12DirectHandleINS0_8JSObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !8

bb.j:                                             ; preds = %.critedge3.i
  %i.cl = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %2) #22
  br label %_ZN2v88internal12DirectHandleINS0_8JSObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal12DirectHandleINS0_8JSObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %.critedge3.i, %bb.j
  %.0.i.i.i = phi ptr [ %i.cl, %bb.j ], [ %i.ci, %.critedge3.i ] ; 2 uses
  %i.cm = ptrtoint ptr %.0.i.i.i to i64
  %i.cn = add i64 %i.cm, 8
  %i.co = inttoptr i64 %i.cn to ptr
  store ptr %i.co, ptr %i.a, align 8
  store i64 %i.ch, ptr %.0.i.i.i, align 8
  br label %.critedge.i

.critedge.i:                                      ; preds = %_ZNK2v88internal8JSObject19GetNamedInterceptorEv.exit, %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit, %_ZN2v88internal12DirectHandleINS0_8JSObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %i.cp = phi i64 [ %i.ch, %_ZN2v88internal12DirectHandleINS0_8JSObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit ], [ %i.m, %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit ], [ %.pre133, %_ZNK2v88internal8JSObject19GetNamedInterceptorEv.exit ]
  %i.cq = add i64 %i.cp, -1
  %i.cr = inttoptr i64 %i.cq to ptr
  %i.cs = load atomic volatile i64, ptr %i.cr monotonic, align 8 ; 2 uses
  %i.ct = add i64 %i.cs, 31
  %i.cu = inttoptr i64 %i.ct to ptr
  %i.cv = load i64, ptr %i.cu, align 8            ; 3 uses
  %i.cw = add i64 %i.cs, -1
  %i.cx = inttoptr i64 %i.cw to ptr
  %i.cy = load atomic volatile i64, ptr %i.cx monotonic, align 8
  %i.cz = trunc i64 %i.cv to i1
  br i1 %i.cz, label %_ZN2v88internal3Map29ConcurrentIsHeapObjectWithMapENS0_16PtrComprCageBaseENS0_6TaggedINS0_6ObjectEEENS3_IS1_EE.exit.i.i.i.i.i.i17, label %_ZNK2v88internal3Map17GetConstructorRawENS0_16PtrComprCageBaseE.exit.i.i.i.i.i8

_ZN2v88internal3Map29ConcurrentIsHeapObjectWithMapENS0_16PtrComprCageBaseENS0_6TaggedINS0_6ObjectEEENS3_IS1_EE.exit.i.i.i.i.i.i17: ; preds = %.critedge.i, %bb.k
  %.sroa.06.020.i.i.i.i.i.i18 = phi i64 [ %i.dg, %bb.k ], [ %i.cv, %.critedge.i ] ; 3 uses
  %i.da = add nsw i64 %.sroa.06.020.i.i.i.i.i.i18, -1
  %i.db = inttoptr i64 %i.da to ptr
  %i.dc = load atomic volatile i64, ptr %i.db monotonic, align 8
  %i.dd = icmp eq i64 %i.dc, %i.cy
  br i1 %i.dd, label %bb.k, label %_ZNK2v88internal3Map17GetConstructorRawENS0_16PtrComprCageBaseE.exit.i.i.i.i.i8

bb.k:                                             ; preds = %_ZN2v88internal3Map29ConcurrentIsHeapObjectWithMapENS0_16PtrComprCageBaseENS0_6TaggedINS0_6ObjectEEENS3_IS1_EE.exit.i.i.i.i.i.i17
  %i.de = add i64 %.sroa.06.020.i.i.i.i.i.i18, 31
  %i.df = inttoptr i64 %i.de to ptr
  %i.dg = load i64, ptr %i.df, align 8            ; 3 uses
  %i.dh = trunc i64 %i.dg to i1
  br i1 %i.dh, label %_ZN2v88internal3Map29ConcurrentIsHeapObjectWithMapENS0_16PtrComprCageBaseENS0_6TaggedINS0_6ObjectEEENS3_IS1_EE.exit.i.i.i.i.i.i17, label %_ZNK2v88internal3Map17GetConstructorRawENS0_16PtrComprCageBaseE.exit.i.i.i.i.i8, !llvm.loop !13

_ZNK2v88internal3Map17GetConstructorRawENS0_16PtrComprCageBaseE.exit.i.i.i.i.i8: ; preds = %bb.k, %_ZN2v88internal3Map29ConcurrentIsHeapObjectWithMapENS0_16PtrComprCageBaseENS0_6TaggedINS0_6ObjectEEENS3_IS1_EE.exit.i.i.i.i.i.i17, %.critedge.i
  %.sroa.06.0.lcssa.i.i.i.i.i.i9 = phi i64 [ %i.cv, %.critedge.i ], [ %i.dg, %bb.k ], [ %.sroa.06.020.i.i.i.i.i.i18, %_ZN2v88internal3Map29ConcurrentIsHeapObjectWithMapENS0_16PtrComprCageBaseENS0_6TaggedINS0_6ObjectEEENS3_IS1_EE.exit.i.i.i.i.i.i17 ] ; 4 uses
  %i.di = trunc i64 %.sroa.06.0.lcssa.i.i.i.i.i.i9 to i1
  br i1 %i.di, label %_ZN2v88internal8IsTuple2ENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i.i.i16, label %_ZNK2v88internal3Map14GetConstructorENS0_16PtrComprCageBaseE.exit.i.i.i.i10

_ZN2v88internal8IsTuple2ENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i.i.i16: ; preds = %_ZNK2v88internal3Map17GetConstructorRawENS0_16PtrComprCageBaseE.exit.i.i.i.i.i8
  %i.dj = add nsw i64 %.sroa.06.0.lcssa.i.i.i.i.i.i9, -1
  %i.dk = inttoptr i64 %i.dj to ptr               ; 2 uses
  %i.dl = load atomic volatile i64, ptr %i.dk monotonic, align 8
  %i.dm = add i64 %i.dl, 11
  %i.dn = inttoptr i64 %i.dm to ptr
  %i.do = load atomic volatile i16, ptr %i.dn monotonic, align 2
  %i.dp = icmp eq i16 %i.do, 171
  br i1 %i.dp, label %bb.l, label %_ZNK2v88internal3Map14GetConstructorENS0_16PtrComprCageBaseE.exit.i.i.i.i10

bb.l:                                             ; preds = %_ZN2v88internal8IsTuple2ENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i.i.i16
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.dr = load i64, ptr %i.dq, align 8
  br label %_ZNK2v88internal3Map14GetConstructorENS0_16PtrComprCageBaseE.exit.i.i.i.i10

_ZNK2v88internal3Map14GetConstructorENS0_16PtrComprCageBaseE.exit.i.i.i.i10: ; preds = %bb.l, %_ZN2v88internal8IsTuple2ENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i.i.i16, %_ZNK2v88internal3Map17GetConstructorRawENS0_16PtrComprCageBaseE.exit.i.i.i.i.i8
  %.sroa.04.0.i.i.i.i.i11 = phi i64 [ %i.dr, %bb.l ], [ %.sroa.06.0.lcssa.i.i.i.i.i.i9, %_ZN2v88internal8IsTuple2ENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i.i.i16 ], [ %.sroa.06.0.lcssa.i.i.i.i.i.i9, %_ZNK2v88internal3Map17GetConstructorRawENS0_16PtrComprCageBaseE.exit.i.i.i.i.i8 ] ; 5 uses
  %i.ds = trunc i64 %.sroa.04.0.i.i.i.i.i11 to i1
  br i1 %i.ds, label %_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit.i.i.i.i15, label %_ZNK2v88internal3Map23GetFunctionTemplateInfoENS0_16PtrComprCageBaseE.exit.i.i.i12

_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit.i.i.i.i15: ; preds = %_ZNK2v88internal3Map14GetConstructorENS0_16PtrComprCageBaseE.exit.i.i.i.i10
  %i.dt = add nsw i64 %.sroa.04.0.i.i.i.i.i11, -1
  %i.du = inttoptr i64 %i.dt to ptr
  %i.dv = load atomic volatile i64, ptr %i.du monotonic, align 8
  %i.dw = add i64 %i.dv, 11
  %i.dx = inttoptr i64 %i.dw to ptr
  %i.dy = load atomic volatile i16, ptr %i.dx monotonic, align 2
  %i.dz = add i16 %i.dy, -2065
  %i.ea = icmp ult i16 %i.dz, 17
  br i1 %i.ea, label %bb.m, label %_ZNK2v88internal3Map23GetFunctionTemplateInfoENS0_16PtrComprCageBaseE.exit.i.i.i12

bb.m:                                             ; preds = %_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit.i.i.i.i15
  %i.eb = add i64 %.sroa.04.0.i.i.i.i.i11, 31
  %i.ec = inttoptr i64 %i.eb to ptr
  %i.ed = load atomic volatile i64, ptr %i.ec monotonic, align 8
  %i.ee = add i64 %i.ed, 15
  %i.ef = inttoptr i64 %i.ee to ptr
  %i.eg = load atomic volatile i64, ptr %i.ef acquire, align 8
  br label %_ZNK2v88internal3Map23GetFunctionTemplateInfoENS0_16PtrComprCageBaseE.exit.i.i.i12

_ZNK2v88internal3Map23GetFunctionTemplateInfoENS0_16PtrComprCageBaseE.exit.i.i.i12: ; preds = %bb.m, %_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit.i.i.i.i15, %_ZNK2v88internal3Map14GetConstructorENS0_16PtrComprCageBaseE.exit.i.i.i.i10
  %.sroa.08.0.i.i.i.i13 = phi i64 [ %i.eg, %bb.m ], [ %.sroa.04.0.i.i.i.i.i11, %_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit.i.i.i.i15 ], [ %.sroa.04.0.i.i.i.i.i11, %_ZNK2v88internal3Map14GetConstructorENS0_16PtrComprCageBaseE.exit.i.i.i.i10 ]
  %i.eh = add i64 %.sroa.08.0.i.i.i.i13, 63
  %i.ei = inttoptr i64 %i.eh to ptr
  %i.ej = load atomic volatile i64, ptr %i.ei acquire, align 8 ; 3 uses
  %i.ek = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 10624
  %i.em = load ptr, ptr %i.el, align 8
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 96
  %i.eo = load i64, ptr %i.en, align 8
  %i.ep = icmp eq i64 %i.ej, %i.eo
  br i1 %i.ep, label %_ZNK2v88internal8JSObject19GetNamedInterceptorEv.exit19, label %bb.n

bb.n:                                             ; preds = %_ZNK2v88internal3Map23GetFunctionTemplateInfoENS0_16PtrComprCageBaseE.exit.i.i.i12
  %i.eq = add i64 %i.ej, 31
  %i.er = inttoptr i64 %i.eq to ptr
  %i.es = load i64, ptr %i.er, align 8
  br label %_ZNK2v88internal8JSObject19GetNamedInterceptorEv.exit19

_ZNK2v88internal8JSObject19GetNamedInterceptorEv.exit19: ; preds = %_ZNK2v88internal3Map23GetFunctionTemplateInfoENS0_16PtrComprCageBaseE.exit.i.i.i12, %bb.n
  %.sroa.08.0.i3.i.i.i14 = phi i64 [ %i.es, %bb.n ], [ %i.ej, %_ZNK2v88internal3Map23GetFunctionTemplateInfoENS0_16PtrComprCageBaseE.exit.i.i.i12 ] ; 2 uses
  %i.et = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.eu = load ptr, ptr %i.c, align 8
  %i.ev = icmp eq ptr %i.et, %i.eu
  br i1 %i.ev, label %bb.o, label %_ZN2v88internal6HandleINS0_15InterceptorInfoEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !8

bb.o:                                             ; preds = %_ZNK2v88internal8JSObject19GetNamedInterceptorEv.exit19
  %i.ew = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %2) #22
  br label %_ZN2v88internal6HandleINS0_15InterceptorInfoEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_15InterceptorInfoEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %_ZNK2v88internal8JSObject19GetNamedInterceptorEv.exit19, %bb.o
  %.0.i.i = phi ptr [ %i.ew, %bb.o ], [ %i.et, %_ZNK2v88internal8JSObject19GetNamedInterceptorEv.exit19 ] ; 3 uses
  %i.ex = ptrtoint ptr %.0.i.i to i64
  %i.ey = add i64 %i.ex, 8
  %i.ez = inttoptr i64 %i.ey to ptr
  store ptr %i.ez, ptr %i.a, align 8
  store i64 %.sroa.08.0.i3.i.i.i14, ptr %.0.i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.fa = add i64 %.sroa.08.0.i3.i.i.i14, 7
  %i.fb = inttoptr i64 %i.fa to ptr
  %i.fc = load i64, ptr %i.fb, align 8
  %i.fd = load i64, ptr %i.j, align 8             ; 2 uses
  call void @_ZN2v88internal25PropertyCallbackArgumentsC1EPNS0_7IsolateENS0_6TaggedINS0_6ObjectEEES6_NS4_INS0_8JSObjectEEENS_5MaybeINS0_11ShouldThrowEEE(ptr noundef nonnull align 8 dereferenceable(96) %3, ptr noundef nonnull %2, i64 %i.fc, i64 %i.fd, i64 %i.fd, i64 1) #22
  %i.fe = call noundef zeroext i8 @_ZN2v88internal25PropertyCallbackArguments15CallNamedSetterENS0_12DirectHandleINS0_15InterceptorInfoEEENS2_INS0_4NameEEENS2_INS0_6ObjectEEE(ptr noundef nonnull align 8 dereferenceable(96) %3, ptr nonnull %.0.i.i, ptr %i.l, ptr %1)
  %i.ff = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.fg = load i64, ptr %i.ff, align 8
  %i.fh = inttoptr i64 %i.fg to ptr               ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 368
  %.sroa.0.0.copyload.i.i21 = load i64, ptr %i.fi, align 8
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fh, i64 656
  %i.fk = load i64, ptr %i.fj, align 8
  %.not.i22 = icmp eq i64 %.sroa.0.0.copyload.i.i21, %i.fk
  br i1 %.not.i22, label %.critedge40.i, label %_ZNK2v85MaybeINS_8internal17InterceptorResultEE2ToEPS2_.exit.thread

_ZNK2v85MaybeINS_8internal17InterceptorResultEE2ToEPS2_.exit.thread: ; preds = %_ZN2v88internal6HandleINS0_15InterceptorInfoEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %i.fl = getelementptr inbounds nuw i8, ptr %2, i64 912
  br label %.thread

.critedge40.i:                                    ; preds = %_ZN2v88internal6HandleINS0_15InterceptorInfoEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %i.fm = icmp eq i8 %i.fe, 0
  br i1 %i.fm, label %bb.p, label %.thread

bb.p:                                             ; preds = %.critedge40.i
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN2v88internal15CustomArgumentsINS_20PropertyCallbackInfoINS_5ValueEEEEE, i64 16), ptr %3, align 8
  %i.fn = getelementptr inbounds nuw i8, ptr %3, i64 64
  store i64 1994495044801650351, ptr %i.fn, align 8
  %i.fo = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.fp = load ptr, ptr %i.fo, align 8
  %i.fq = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.fr = load ptr, ptr %i.fq, align 8
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fp, i64 59768
  store ptr %i.fr, ptr %i.fs, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.ft = icmp eq i64 %i.k, 0
  %.pre134.pre = load i64, ptr %i.l, align 8
  %.pre142 = add i64 %.pre134.pre, -1
  %.pre143 = inttoptr i64 %.pre142 to ptr         ; 3 uses
  br i1 %i.ft, label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.fu = load atomic volatile i64, ptr %.pre143 monotonic, align 8
  %i.fv = add i64 %i.fu, 11
  %i.fw = inttoptr i64 %i.fv to ptr
  %i.fx = load atomic volatile i16, ptr %i.fw monotonic, align 2
  %i.fy = icmp eq i16 %i.fx, 128
  br i1 %i.fy, label %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i, label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i

_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i:      ; preds = %bb.q
  %i.fz = getelementptr inbounds nuw i8, ptr %.pre143, i64 12
  %i.ga = load i32, ptr %i.fz, align 4
  %i.gb = trunc i32 %i.ga to i1
  %spec.select = select i1 %i.gb, i32 0, i32 3
  br label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i

_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i, %bb.p, %bb.q
  %i.gc = phi i32 [ %spec.select, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i ], [ 3, %bb.p ], [ 3, %bb.q ]
  store i32 %i.gc, ptr %4, align 8
  %i.gd = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 3 uses
  store i32 0, ptr %i.gd, align 4
  %i.ge = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i8 0, ptr %i.ge, align 8
  %i.gf = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 0, ptr %i.gf, align 4
  %i.gg = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 0, ptr %i.gg, align 8
  %i.gh = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %2, ptr %i.gh, align 8
  %i.gi = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.gj = getelementptr inbounds nuw i8, ptr %4, i64 40
  store ptr null, ptr %i.gj, align 8
  %i.gk = getelementptr inbounds nuw i8, ptr %4, i64 48
  store ptr %i.j, ptr %i.gk, align 8
  %i.gl = getelementptr inbounds nuw i8, ptr %4, i64 56
  store ptr null, ptr %i.gl, align 8
  %i.gm = getelementptr inbounds nuw i8, ptr %4, i64 64
  store i64 %i.i, ptr %i.gm, align 8
  %i.gn = getelementptr inbounds nuw i8, ptr %4, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gn, i8 -1, i64 16, i1 false)
  %i.go = load atomic volatile i64, ptr %.pre143 monotonic, align 8
  %i.gp = add i64 %i.go, 11
  %i.gq = inttoptr i64 %i.gp to ptr
  %i.gr = load atomic volatile i16, ptr %i.gq monotonic, align 2
  %i.gs = and i16 %i.gr, -96
  %.not.i21.i.i = icmp eq i16 %i.gs, 32
  br i1 %.not.i21.i.i, label %bb.r, label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit

bb.r:                                             ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i
  %i.gt = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !6, !noundef !7
  %i.gu = trunc nuw i8 %i.gt to i1
  %i.gv = getelementptr inbounds nuw i8, ptr %2, i64 55448
  %i.gw = load i8, ptr %i.gv, align 8, !range !6
  %i.gx = trunc nuw i8 %i.gw to i1
  %not..i.i.i23.i.i = xor i1 %i.gu, true
  %i.gy = select i1 %not..i.i.i23.i.i, i1 true, i1 %i.gx
  br i1 %i.gy, label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.gz = getelementptr inbounds nuw i8, ptr %2, i64 64088
  %i.ha = load i8, ptr %i.gz, align 8, !range !6, !noundef !7
  %i.hb = trunc nuw i8 %i.ha to i1
  br i1 %i.hb, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @_ZSt27__throw_bad_optional_accessv() #25
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i: ; preds = %bb.s
  %i.hc = getelementptr inbounds nuw i8, ptr %2, i64 64080
  %i.hd = load ptr, ptr %i.hc, align 8
  br label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i

_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i: ; preds = %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i, %bb.r
  %.pn.i.i26.i.i = phi ptr [ %i.hd, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i ], [ %2, %bb.r ]
  %.in.i.i27.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i26.i.i, i64 58464
  %i.he = load ptr, ptr %.in.i.i27.i.i, align 8
  %i.hf = call ptr @_ZN2v88internal11StringTable12LookupStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.he, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr nonnull %i.l) #22
  br label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit

_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit: ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i
  %.sroa.05.0.i22.i.i = phi ptr [ %i.hf, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i ], [ %i.l, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i ]
  store ptr %.sroa.05.0.i22.i.i, ptr %i.gi, align 8
  call void @_ZN2v88internal14LookupIterator5StartILb0EEEvv(ptr noundef nonnull align 8 dereferenceable(88) %4) #22
  %i.hg = load i32, ptr %i.gd, align 4
  %i.hh = icmp eq i32 %i.hg, 3
  br i1 %i.hh, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit, %.lr.ph
  call void @_ZN2v88internal14LookupIterator4NextEv(ptr noundef nonnull align 8 dereferenceable(88) %4) #22
  %i.hi = load i32, ptr %i.gd, align 4
  %i.hj = icmp eq i32 %i.hi, 3
  br i1 %i.hj, label %.lr.ph, label %._crit_edge, !llvm.loop !61

._crit_edge:                                      ; preds = %.lr.ph, %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit
  call void @_ZN2v88internal14LookupIterator4NextEv(ptr noundef nonnull align 8 dereferenceable(88) %4) #22
  %i.hk = call i16 @_ZN2v88internal6Object11SetPropertyEPNS0_14LookupIteratorENS0_12DirectHandleIS1_EENS0_11StoreOriginENS_5MaybeINS0_11ShouldThrowEEE(ptr noundef nonnull %4, ptr %1, i32 noundef 1, i64 0) #22
  %i.hl = trunc i16 %i.hk to i1
  br i1 %i.hl, label %bb.u, label %.thread128

.thread128:                                       ; preds = %._crit_edge
  %i.hm = getelementptr inbounds nuw i8, ptr %2, i64 912
  %i.hn = load i64, ptr %i.hm, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %bb.v

.thread:                                          ; preds = %.critedge40.i, %_ZNK2v85MaybeINS_8internal17InterceptorResultEE2ToEPS2_.exit.thread
  %.sroa.071.0.in = phi ptr [ %i.fl, %_ZNK2v85MaybeINS_8internal17InterceptorResultEE2ToEPS2_.exit.thread ], [ %1, %.critedge40.i ]
  %.sroa.071.0 = load i64, ptr %.sroa.071.0.in, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN2v88internal15CustomArgumentsINS_20PropertyCallbackInfoINS_5ValueEEEEE, i64 16), ptr %3, align 8
  %i.ho = getelementptr inbounds nuw i8, ptr %3, i64 64
  store i64 1994495044801650351, ptr %i.ho, align 8
  %i.hp = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.hq = load ptr, ptr %i.hp, align 8
  %i.hr = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.hs = load ptr, ptr %i.hr, align 8
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hq, i64 59768
  store ptr %i.hs, ptr %i.ht, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %bb.v

bb.u:                                             ; preds = %._crit_edge
  %i.hu = load i64, ptr %1, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.thread128, %.thread
  %.sroa.071.1126 = phi i64 [ %.sroa.071.0, %.thread ], [ %i.hu, %bb.u ], [ %i.hn, %.thread128 ]
  store ptr %i.b, ptr %i.a, align 8
  %i.hv = load i32, ptr %i.e, align 8
  %i.hw = add nsw i32 %i.hv, -1
  store i32 %i.hw, ptr %i.e, align 8
  %i.hx = load ptr, ptr %i.c, align 8
  %.not.i = icmp eq ptr %i.hx, %i.d
  br i1 %.not.i, label %_ZN2v88internalL46__RT_impl_Runtime_StorePropertyWithInterceptorENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit, label %bb.w, !prof !5

bb.w:                                             ; preds = %bb.v
  store ptr %i.d, ptr %i.c, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #22
  br label %_ZN2v88internalL46__RT_impl_Runtime_StorePropertyWithInterceptorENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit

_ZN2v88internalL46__RT_impl_Runtime_StorePropertyWithInterceptorENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit: ; preds = %bb.w, %bb.v
  ret i64 %.sroa.071.1126
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal34Runtime_LoadElementWithInterceptorEiPmPNS0_7IsolateE(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %"class.v8::internal::PropertyCallbackArguments", align 8 ; 8 uses
  %4 = alloca %"class.v8::internal::LookupIterator", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 568 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 576 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %bb.b, label %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE12smi_value_atEi.exit, !prof !8

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.66) #21
  unreachable

_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE12smi_value_atEi.exit: ; preds = %bb.a
  %i.h = ptrtoint ptr %1 to i64
  %i.i = add i64 %i.h, -8
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = load i64, ptr %i.j, align 8
  %i.l = lshr i64 %i.k, 32                        ; 2 uses
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = load i64, ptr %1, align 8
  %i.o = add i64 %i.n, -1
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = load atomic volatile i64, ptr %i.p monotonic, align 8 ; 2 uses
  %i.r = add i64 %i.q, 31
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = load i64, ptr %i.s, align 8              ; 3 uses
  %i.u = add i64 %i.q, -1
  %i.v = inttoptr i64 %i.u to ptr
  %i.w = load atomic volatile i64, ptr %i.v monotonic, align 8
  %i.x = trunc i64 %i.t to i1
  br i1 %i.x, label %_ZN2v88internal3Map29ConcurrentIsHeapObjectWithMapENS0_16PtrComprCageBaseENS0_6TaggedINS0_6ObjectEEENS3_IS1_EE.exit.i.i.i.i.i.i, label %_ZNK2v88internal3Map17GetConstructorRawENS0_16PtrComprCageBaseE.exit.i.i.i.i.i

_ZN2v88internal3Map29ConcurrentIsHeapObjectWithMapENS0_16PtrComprCageBaseENS0_6TaggedINS0_6ObjectEEENS3_IS1_EE.exit.i.i.i.i.i.i: ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE12smi_value_atEi.exit, %bb.c
  %.sroa.06.020.i.i.i.i.i.i = phi i64 [ %i.ae, %bb.c ], [ %i.t, %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE12smi_value_atEi.exit ] ; 3 uses
  %i.y = add nsw i64 %.sroa.06.020.i.i.i.i.i.i, -1
  %i.z = inttoptr i64 %i.y to ptr
  %i.aa = load atomic volatile i64, ptr %i.z monotonic, align 8
  %i.ab = icmp eq i64 %i.aa, %i.w
  br i1 %i.ab, label %bb.c, label %_ZNK2v88internal3Map17GetConstructorRawENS0_16PtrComprCageBaseE.exit.i.i.i.i.i

bb.c:                                             ; preds = %_ZN2v88internal3Map29ConcurrentIsHeapObjectWithMapENS0_16PtrComprCageBaseENS0_6TaggedINS0_6ObjectEEENS3_IS1_EE.exit.i.i.i.i.i.i
  %i.ac = add i64 %.sroa.06.020.i.i.i.i.i.i, 31
  %i.ad = inttoptr i64 %i.ac to ptr
  %i.ae = load i64, ptr %i.ad, align 8            ; 3 uses
  %i.af = trunc i64 %i.ae to i1
  br i1 %i.af, label %_ZN2v88internal3Map29ConcurrentIsHeapObjectWithMapENS0_16PtrComprCageBaseENS0_6TaggedINS0_6ObjectEEENS3_IS1_EE.exit.i.i.i.i.i.i, label %_ZNK2v88internal3Map17GetConstructorRawENS0_16PtrComprCageBaseE.exit.i.i.i.i.i, !llvm.loop !13

_ZNK2v88internal3Map17GetConstructorRawENS0_16PtrComprCageBaseE.exit.i.i.i.i.i: ; preds = %bb.c, %_ZN2v88internal3Map29ConcurrentIsHeapObjectWithMapENS0_16PtrComprCageBaseENS0_6TaggedINS0_6ObjectEEENS3_IS1_EE.exit.i.i.i.i.i.i, %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE12smi_value_atEi.exit
  %.sroa.06.0.lcssa.i.i.i.i.i.i = phi i64 [ %i.t, %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE12smi_value_atEi.exit ], [ %i.ae, %bb.c ], [ %.sroa.06.020.i.i.i.i.i.i, %_ZN2v88internal3Map29ConcurrentIsHeapObjectWithMapENS0_16PtrComprCageBaseENS0_6TaggedINS0_6ObjectEEENS3_IS1_EE.exit.i.i.i.i.i.i ] ; 4 uses
  %i.ag = trunc i64 %.sroa.06.0.lcssa.i.i.i.i.i.i to i1
  br i1 %i.ag, label %_ZN2v88internal8IsTuple2ENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i.i.i, label %_ZNK2v88internal3Map14GetConstructorENS0_16PtrComprCageBaseE.exit.i.i.i.i

_ZN2v88internal8IsTuple2ENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i.i.i: ; preds = %_ZNK2v88internal3Map17GetConstructorRawENS0_16PtrComprCageBaseE.exit.i.i.i.i.i
  %i.ah = add nsw i64 %.sroa.06.0.lcssa.i.i.i.i.i.i, -1
  %i.ai = inttoptr i64 %i.ah to ptr               ; 2 uses
  %i.aj = load atomic volatile i64, ptr %i.ai monotonic, align 8
  %i.ak = add i64 %i.aj, 11
  %i.al = inttoptr i64 %i.ak to ptr
  %i.am = load atomic volatile i16, ptr %i.al monotonic, align 2
  %i.an = icmp eq i16 %i.am, 171
  br i1 %i.an, label %bb.d, label %_ZNK2v88internal3Map14GetConstructorENS0_16PtrComprCageBaseE.exit.i.i.i.i

bb.d:                                             ; preds = %_ZN2v88internal8IsTuple2ENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ap = load i64, ptr %i.ao, align 8
  br label %_ZNK2v88internal3Map14GetConstructorENS0_16PtrComprCageBaseE.exit.i.i.i.i

_ZNK2v88internal3Map14GetConstructorENS0_16PtrComprCageBaseE.exit.i.i.i.i: ; preds = %bb.d, %_ZN2v88internal8IsTuple2ENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i.i.i, %_ZNK2v88internal3Map17GetConstructorRawENS0_16PtrComprCageBaseE.exit.i.i.i.i.i
  %.sroa.04.0.i.i.i.i.i = phi i64 [ %i.ap, %bb.d ], [ %.sroa.06.0.lcssa.i.i.i.i.i.i, %_ZN2v88internal8IsTuple2ENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i.i.i ], [ %.sroa.06.0.lcssa.i.i.i.i.i.i, %_ZNK2v88internal3Map17GetConstructorRawENS0_16PtrComprCageBaseE.exit.i.i.i.i.i ] ; 5 uses
  %i.aq = trunc i64 %.sroa.04.0.i.i.i.i.i to i1
  br i1 %i.aq, label %_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit.i.i.i.i, label %_ZNK2v88internal3Map23GetFunctionTemplateInfoENS0_16PtrComprCageBaseE.exit.i.i.i

_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit.i.i.i.i: ; preds = %_ZNK2v88internal3Map14GetConstructorENS0_16PtrComprCageBaseE.exit.i.i.i.i
  %i.ar = add nsw i64 %.sroa.04.0.i.i.i.i.i, -1
  %i.as = inttoptr i64 %i.ar to ptr
  %i.at = load atomic volatile i64, ptr %i.as monotonic, align 8
  %i.au = add i64 %i.at, 11
end_hunk_0
