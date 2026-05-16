inline.NumInlined: 1374
inline.NumDeleted: 729
begin_hunk_0_@_ZN2v88internal17ContextSerializer19SerializeObjectImplENS0_6HandleINS0_10HeapObjectEEENS0_22SerializerDeserializer8SlotTypeE:bb.a
  %i.by = call noundef zeroext i1 @_ZN2v88internal14FeedbackVector10ClearSlotsEPNS0_7IsolateENS0_13ClearBehaviorE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull %i.bo, i32 noundef 0) #14 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  br label %.critedge

bb.r:                                             ; preds = %bb.p
  %i.bz = icmp ugt i16 %i.bw, 302
  br i1 %i.bz, label %bb.s, label %bb.ad

bb.s:                                             ; preds = %bb.r
  %i.ca = load atomic volatile i64, ptr %i.m monotonic, align 8 ; 4 uses
  %i.cb = add i64 %i.ca, 7
  %i.cc = inttoptr i64 %i.cb to ptr               ; 2 uses
  %i.cd = load atomic volatile i8, ptr %i.cc monotonic, align 1 ; 2 uses
  %i.ce = zext i8 %i.cd to i32
  %i.cf = shl nuw nsw i32 %i.ce, 3
  %i.cg = icmp eq i8 %i.cd, 0
  br i1 %i.cg, label %_ZNK2v88internal8JSObject21GetEmbedderFieldCountEv.exit.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ch = add i64 %i.ca, 11
  %i.ci = inttoptr i64 %i.ch to ptr
  %i.cj = load atomic volatile i16, ptr %i.ci monotonic, align 2 ; 2 uses
  %i.ck = icmp eq i16 %i.cj, 1057
  br i1 %i.ck, label %_ZNK2v88internal8JSObject21GetEmbedderFieldCountEv.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cl = add i64 %i.ca, 13
  %i.cm = inttoptr i64 %i.cl to ptr
  %i.cn = load atomic volatile i8, ptr %i.cm monotonic, align 1
  %i.co = icmp slt i8 %i.cn, 0
  %i.cp = tail call noundef i32 @_ZN2v88internal8JSObject13GetHeaderSizeENS0_12InstanceTypeEb(i16 noundef zeroext %i.cj, i1 noundef zeroext %i.co) #14
  br label %_ZNK2v88internal8JSObject21GetEmbedderFieldCountEv.exit

_ZNK2v88internal8JSObject21GetEmbedderFieldCountEv.exit: ; preds = %bb.t, %bb.u
  %i.cq = phi i32 [ %i.cp, %bb.u ], [ 24, %bb.t ]
  %i.cr = sub nsw i32 %i.cf, %i.cq
  %i.cs = ashr i32 %i.cr, 3
  %i.ct = load atomic volatile i8, ptr %i.cc monotonic, align 1
  %i.cu = zext i8 %i.ct to i32
  %i.cv = add i64 %i.ca, 8
  %i.cw = inttoptr i64 %i.cv to ptr
  %i.cx = load atomic volatile i8, ptr %i.cw monotonic, align 1
  %i.cy = zext i8 %i.cx to i32
  %.neg.i.i = sub nsw i32 %i.cs, %i.cu
  %i.cz = add nsw i32 %.neg.i.i, %i.cy            ; 2 uses
  %i.da = icmp slt i32 %i.cz, 1
  br i1 %i.da, label %_ZNK2v88internal8JSObject21GetEmbedderFieldCountEv.exit.thread, label %bb.v

bb.v:                                             ; preds = %_ZNK2v88internal8JSObject21GetEmbedderFieldCountEv.exit
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 608
  %.sroa.028.0.copyload = load ptr, ptr %i.db, align 8
  %.sroa.429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 616
  %.sroa.429.0.copyload = load ptr, ptr %.sroa.429.0..sroa_idx, align 8
  %i.dc = ptrtoint ptr %1 to i64
  tail call void @_ZN2v88internal17ContextSerializer33SerializeObjectWithEmbedderFieldsINS0_8JSObjectEPFNS_11StartupDataEibNS_31SerializeInternalFieldsCallbackENS_5LocalINS_6ObjectEEEES5_S8_EEvNS0_6HandleIT_EEiT0_T1_T2_(ptr noundef nonnull align 8 dereferenceable(720) %0, ptr nonnull %1, i32 noundef %i.cz, ptr noundef nonnull @_ZN2v88internal29InternalFieldSerializeWrapperEibNS_31SerializeInternalFieldsCallbackENS_5LocalINS_6ObjectEEE, ptr %.sroa.028.0.copyload, ptr %.sroa.429.0.copyload, i64 %i.dc)
  %i.dd = load i64, ptr %1, align 8
  %i.de = add i64 %i.dd, -1
  %i.df = inttoptr i64 %i.de to ptr
  %i.dg = load atomic volatile i64, ptr %i.df monotonic, align 8
  %i.dh = add i64 %i.dg, 11
  %i.di = inttoptr i64 %i.dh to ptr
  %i.dj = load atomic volatile i16, ptr %i.di monotonic, align 2 ; 2 uses
  %i.dk = add i16 %i.dj, -1058
  %i.dl = icmp ult i16 %i.dk, 1005
  %i.dm = add i16 %i.dj, -303
  %i.dn = icmp ult i16 %i.dm, 738
  %or.cond = or i1 %i.dl, %i.dn
  br i1 %or.cond, label %_ZN2v88internal19InstanceTypeChecker20IsJSApiWrapperObjectENS0_6TaggedINS0_3MapEEE.exit.thread, label %.thread

_ZN2v88internal19InstanceTypeChecker20IsJSApiWrapperObjectENS0_6TaggedINS0_3MapEEE.exit.thread: ; preds = %bb.v
  tail call void @_ZN2v88internal17ContextSerializer25SerializeApiWrapperFieldsENS0_12DirectHandleINS0_8JSObjectEEE(ptr noundef nonnull align 8 dereferenceable(720) %0, ptr nonnull %1)
  br label %.thread

_ZNK2v88internal8JSObject21GetEmbedderFieldCountEv.exit.thread: ; preds = %bb.s, %_ZNK2v88internal8JSObject21GetEmbedderFieldCountEv.exit
  %i.do = add i16 %i.bw, -2065
  %i.dp = icmp ult i16 %i.do, 17
  br i1 %i.dp, label %bb.w, label %.critedge

bb.w:                                             ; preds = %_ZNK2v88internal8JSObject21GetEmbedderFieldCountEv.exit.thread
  %i.dq = load i64, ptr %1, align 8               ; 6 uses
  %i.dr = add i64 %i.dq, 31
  %i.ds = inttoptr i64 %i.dr to ptr               ; 4 uses
  %i.dt = load atomic volatile i64, ptr %i.ds monotonic, align 8
  %i.du = add i64 %i.dt, 7
  %i.dv = inttoptr i64 %i.du to ptr
  %i.dw = load atomic volatile i64, ptr %i.dv acquire, align 8 ; 2 uses
  %i.dx = and i64 %i.dw, 1
  %i.dy = icmp eq i64 %i.dx, 0
  br i1 %i.dy, label %_ZNK2v88internal18SharedFunctionInfo16HasBytecodeArrayEv.exit.thread, label %_ZNK2v88internal18SharedFunctionInfo16HasBytecodeArrayEv.exit

_ZNK2v88internal18SharedFunctionInfo16HasBytecodeArrayEv.exit: ; preds = %bb.w
  %i.dz = add nsw i64 %i.dw, -1
  %i.ea = inttoptr i64 %i.dz to ptr
  %i.eb = load atomic volatile i64, ptr %i.ea monotonic, align 8
  %i.ec = add i64 %i.eb, 11
  %i.ed = inttoptr i64 %i.ec to ptr
  %i.ee = load atomic volatile i16, ptr %i.ed monotonic, align 2
  %.off.i.i = add i16 %i.ee, -184
  %switch.i.i = icmp ult i16 %.off.i.i, 3
  br i1 %switch.i.i, label %bb.x, label %_ZNK2v88internal18SharedFunctionInfo16HasBytecodeArrayEv.exit.thread

bb.x:                                             ; preds = %_ZNK2v88internal18SharedFunctionInfo16HasBytecodeArrayEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  store i64 %i.dq, ptr %6, align 8
  %i.ef = load ptr, ptr %i.bn, align 8
  call void @_ZN2v88internal10JSFunction18SetInterruptBudgetEPNS0_7IsolateENS0_18BudgetModificationESt8optionalINS0_8CodeKindEE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %i.ef, i32 noundef 2, i16 0) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  br label %_ZNK2v88internal18SharedFunctionInfo16HasBytecodeArrayEv.exit.thread

_ZNK2v88internal18SharedFunctionInfo16HasBytecodeArrayEv.exit.thread: ; preds = %bb.w, %bb.x, %_ZNK2v88internal18SharedFunctionInfo16HasBytecodeArrayEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  store i64 %i.dq, ptr %7, align 8
  %i.eg = load ptr, ptr %i.bn, align 8
  %i.eh = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 3 uses
  store i8 0, ptr %i.eh, align 8
  call void @_ZN2v88internal10JSFunction18ResetIfCodeFlushedEPNS0_7IsolateESt8optionalISt8functionIFvNS0_6TaggedINS0_10HeapObjectEEENS0_14FullObjectSlotES8_EEE(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef %i.eg, ptr noundef nonnull %8)
  %i.ei = load i8, ptr %i.eh, align 8, !range !13, !noundef !14
  %i.ej = trunc nuw i8 %i.ei to i1
  store i8 0, ptr %i.eh, align 8
  br i1 %i.ej, label %bb.y, label %_ZNSt14_Optional_baseISt8functionIFvN2v88internal6TaggedINS2_10HeapObjectEEENS2_14FullObjectSlotES5_EELb0ELb0EED2Ev.exit

bb.y:                                             ; preds = %_ZNK2v88internal18SharedFunctionInfo16HasBytecodeArrayEv.exit.thread
  %i.ek = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.el = load ptr, ptr %i.ek, align 8            ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.el, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt14_Optional_baseISt8functionIFvN2v88internal6TaggedINS2_10HeapObjectEEENS2_14FullObjectSlotES5_EELb0ELb0EED2Ev.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.em = call noundef zeroext i1 %i.el(ptr noundef nonnull align 8 dereferenceable(40) %8, ptr noundef nonnull align 8 dereferenceable(40) %8, i32 noundef 3) #14, !inline_history !15 ; 0 uses
  br label %_ZNSt14_Optional_baseISt8functionIFvN2v88internal6TaggedINS2_10HeapObjectEEENS2_14FullObjectSlotES5_EELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseISt8functionIFvN2v88internal6TaggedINS2_10HeapObjectEEENS2_14FullObjectSlotES5_EELb0ELb0EED2Ev.exit: ; preds = %_ZNK2v88internal18SharedFunctionInfo16HasBytecodeArrayEv.exit.thread, %bb.y, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #14
  store i64 %i.dq, ptr %9, align 8
  %i.en = call noundef zeroext i1 @_ZNK2v88internal10JSFunction11is_compiledENS0_17IsolateForSandboxE(ptr noundef nonnull align 8 dereferenceable(8) %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  br i1 %i.en, label %bb.aa, label %.critedge

bb.aa:                                            ; preds = %_ZNSt14_Optional_baseISt8functionIFvN2v88internal6TaggedINS2_10HeapObjectEEENS2_14FullObjectSlotES5_EELb0ELb0EED2Ev.exit
  %i.eo = load atomic volatile i64, ptr %i.ds monotonic, align 8
  %i.ep = add i64 %i.eo, 7
  %i.eq = inttoptr i64 %i.ep to ptr
  %i.er = load atomic volatile i64, ptr %i.eq acquire, align 8 ; 2 uses
  %i.es = trunc i64 %i.er to i1
  br i1 %i.es, label %_ZNK2v88internal18SharedFunctionInfo15HasBaselineCodeEv.exit, label %_ZNK2v88internal18SharedFunctionInfo15HasBaselineCodeEv.exit.thread

_ZNK2v88internal18SharedFunctionInfo15HasBaselineCodeEv.exit: ; preds = %bb.aa
  %i.et = add nsw i64 %i.er, -1
  %i.eu = inttoptr i64 %i.et to ptr
  %i.ev = load atomic volatile i64, ptr %i.eu monotonic, align 8
  %i.ew = add i64 %i.ev, 11
  %i.ex = inttoptr i64 %i.ew to ptr
  %i.ey = load atomic volatile i16, ptr %i.ex monotonic, align 2
  %i.ez = icmp eq i16 %i.ey, 185
  br i1 %i.ez, label %bb.ab, label %_ZNK2v88internal18SharedFunctionInfo15HasBaselineCodeEv.exit.thread

bb.ab:                                            ; preds = %_ZNK2v88internal18SharedFunctionInfo15HasBaselineCodeEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #14
  %i.fa = load atomic volatile i64, ptr %i.ds monotonic, align 8
  store i64 %i.fa, ptr %10, align 8
  call void @_ZN2v88internal18SharedFunctionInfo17FlushBaselineCodeEv(ptr noundef nonnull align 8 dereferenceable(8) %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #14
  br label %_ZNK2v88internal18SharedFunctionInfo15HasBaselineCodeEv.exit.thread

_ZNK2v88internal18SharedFunctionInfo15HasBaselineCodeEv.exit.thread: ; preds = %bb.aa, %bb.ab, %_ZNK2v88internal18SharedFunctionInfo15HasBaselineCodeEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #14
  %i.fb = load atomic volatile i64, ptr %i.ds monotonic, align 8
  store i64 %i.fb, ptr %11, align 8
  %i.fc = load ptr, ptr %i.bn, align 8
  %i.fd = call i64 @_ZNK2v88internal18SharedFunctionInfo7GetCodeEPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef %i.fc) #14 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #14
  store i64 %i.dq, ptr %12, align 8
  %i.fe = call i64 @_ZNK2v88internal10JSFunction4codeENS0_17IsolateForSandboxE(ptr noundef nonnull align 8 dereferenceable(8) %12)
  %i.ff = icmp eq i64 %i.fd, %i.fe
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #14
  br i1 %i.ff, label %.critedge, label %bb.ac

bb.ac:                                            ; preds = %_ZNK2v88internal18SharedFunctionInfo15HasBaselineCodeEv.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #14
  store i64 %i.dq, ptr %13, align 8
  %i.fg = load ptr, ptr %i.bn, align 8
  call void @_ZN2v88internal10JSFunction10UpdateCodeEPNS0_7IsolateENS0_6TaggedINS0_4CodeEEENS0_16WriteBarrierModeE(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef %i.fg, i64 %i.fd, i32 noundef 4)
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #14
  br label %.critedge

bb.ad:                                            ; preds = %bb.r
  %i.fh = icmp eq i16 %i.bw, 267
  br i1 %i.fh, label %bb.ae, label %.critedge

bb.ae:                                            ; preds = %bb.ad
  %i.fi = load i32, ptr %i.a, align 8
  %i.fj = and i32 %i.fi, 2
  %.not = icmp eq i32 %i.fj, 0
  br i1 %.not, label %bb.af, label %.critedge

bb.af:                                            ; preds = %bb.ae
  %i.fk = add i64 %i.k, 7
  %i.fl = inttoptr i64 %i.fk to ptr
  %.shift.i = getelementptr inbounds nuw i8, ptr %i.fl, i64 4
  %15 = load i32, ptr %.shift.i, align 4          ; 2 uses
  %i.fm = icmp slt i32 %15, 1
  br i1 %i.fm, label %.critedge, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 664
  %.sroa.014.0.copyload = load i64, ptr %i.fn, align 8
  %i.fo = getelementptr inbounds nuw i8, ptr %i.bo, i64 560 ; 2 uses
  %i.fp = load ptr, ptr %i.fo, align 8            ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.bo, i64 568
  %i.fr = load ptr, ptr %i.fq, align 8
  %i.fs = icmp eq ptr %i.fp, %i.fr
  br i1 %i.fs, label %bb.ah, label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit, !prof !16

bb.ah:                                            ; preds = %bb.ag
  %i.ft = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.bo) #14
  br label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit

_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit: ; preds = %bb.ag, %bb.ah
  %.0.i = phi ptr [ %i.ft, %bb.ah ], [ %i.fp, %bb.ag ] ; 2 uses
  %i.fu = ptrtoint ptr %.0.i to i64               ; 2 uses
  %i.fv = add i64 %i.fu, 8
  %i.fw = inttoptr i64 %i.fv to ptr
  store ptr %i.fw, ptr %i.fo, align 8
  store i64 %.sroa.014.0.copyload, ptr %.0.i, align 8
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 624
  %.sroa.09.0.copyload = load ptr, ptr %i.fx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 632
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8
  tail call void @_ZN2v88internal17ContextSerializer33SerializeObjectWithEmbedderFieldsINS0_17EmbedderDataArrayEPFNS_11StartupDataEibNS_28SerializeContextDataCallbackENS_5LocalINS_7ContextEEEES5_S8_EEvNS0_6HandleIT_EEiT0_T1_T2_(ptr noundef nonnull align 8 dereferenceable(720) %0, ptr nonnull %1, i32 noundef %15, ptr noundef nonnull @_ZN2v88internal27ContextDataSerializeWrapperEibNS_28SerializeContextDataCallbackENS_5LocalINS_7ContextEEE, ptr %.sroa.09.0.copyload, ptr %.sroa.4.0.copyload, i64 %i.fu)
  br label %.thread

.critedge:                                        ; preds = %_ZNSt14_Optional_baseISt8functionIFvN2v88internal6TaggedINS2_10HeapObjectEEENS2_14FullObjectSlotES5_EELb0ELb0EED2Ev.exit, %bb.ac, %_ZNK2v88internal18SharedFunctionInfo15HasBaselineCodeEv.exit.thread, %_ZNK2v88internal8JSObject21GetEmbedderFieldCountEv.exit.thread, %bb.af, %bb.ae, %bb.ad, %bb.q
  %i.fy = load i64, ptr %1, align 8               ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 656 ; 2 uses
  %i.ga = load i8, ptr %i.fz, align 8, !range !13, !noundef !14
  %i.gb = trunc nuw i8 %i.ga to i1
  br i1 %i.gb, label %bb.ai, label %_ZN2v88internal17ContextSerializer18CheckRehashabilityENS0_6TaggedINS0_10HeapObjectEEE.exit

bb.ai:                                            ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  store i64 %i.fy, ptr %3, align 8
  %i.gc = call noundef zeroext i1 @_ZNK2v88internal10HeapObject14NeedsRehashingENS0_16PtrComprCageBaseE(ptr noundef nonnull align 8 dereferenceable(8) %3) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  br i1 %i.gc, label %bb.aj, label %_ZN2v88internal17ContextSerializer18CheckRehashabilityENS0_6TaggedINS0_10HeapObjectEEE.exit

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  store i64 %i.fy, ptr %4, align 8
  %i.gd = call noundef zeroext i1 @_ZNK2v88internal10HeapObject13CanBeRehashedENS0_16PtrComprCageBaseE(ptr noundef nonnull align 8 dereferenceable(8) %4) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  br i1 %i.gd, label %_ZN2v88internal17ContextSerializer18CheckRehashabilityENS0_6TaggedINS0_10HeapObjectEEE.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  store i8 0, ptr %i.fz, align 8
  br label %_ZN2v88internal17ContextSerializer18CheckRehashabilityENS0_6TaggedINS0_10HeapObjectEEE.exit

_ZN2v88internal17ContextSerializer18CheckRehashabilityENS0_6TaggedINS0_10HeapObjectEEE.exit: ; preds = %.critedge, %bb.ai, %bb.aj, %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #14
  store ptr getelementptr inbounds nuw inrange(-16, 184) (i8, ptr @_ZTVN2v88internal10Serializer16ObjectSerializerE, i64 16), ptr %14, align 8
  %i.ge = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.gf = load ptr, ptr %i.bn, align 8
  store ptr %i.gf, ptr %i.ge, align 8
  %i.gg = getelementptr inbounds nuw i8, ptr %14, i64 16
  store ptr %0, ptr %i.gg, align 8
  %i.gh = getelementptr inbounds nuw i8, ptr %14, i64 24
  store ptr %1, ptr %i.gh, align 8
  %i.gi = getelementptr inbounds nuw i8, ptr %14, i64 32
  store ptr %i.f, ptr %i.gi, align 8
  %i.gj = getelementptr inbounds nuw i8, ptr %14, i64 40
  store i32 0, ptr %i.gj, align 8
  call void @_ZN2v88internal10Serializer16ObjectSerializer9SerializeENS0_22SerializerDeserializer8SlotTypeE(ptr noundef nonnull align 8 dereferenceable(44) %14, i32 noundef %2) #14
  %i.gk = add i16 %i.bw, -1058
  %i.gl = icmp ult i16 %i.gk, 1005
  %i.gm = add i16 %i.bw, -303
  %i.gn = icmp ult i16 %i.gm, 738
  %or.cond179 = or i1 %i.gl, %i.gn
  br i1 %or.cond179, label %_ZN2v88internal19InstanceTypeChecker20IsJSApiWrapperObjectENS0_12InstanceTypeE.exit.thread, label %bb.al

_ZN2v88internal19InstanceTypeChecker20IsJSApiWrapperObjectENS0_12InstanceTypeE.exit.thread: ; preds = %_ZN2v88internal17ContextSerializer18CheckRehashabilityENS0_6TaggedINS0_10HeapObjectEEE.exit
  call void @_ZN2v88internal17ContextSerializer25SerializeApiWrapperFieldsENS0_12DirectHandleINS0_8JSObjectEEE(ptr noundef nonnull align 8 dereferenceable(720) %0, ptr nonnull %1)
  br label %bb.al

bb.al:                                            ; preds = %_ZN2v88internal17ContextSerializer18CheckRehashabilityENS0_6TaggedINS0_10HeapObjectEEE.exit, %_ZN2v88internal19InstanceTypeChecker20IsJSApiWrapperObjectENS0_12InstanceTypeE.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #14
  br label %.thread

.thread:                                          ; preds = %bb.v, %bb.b, %bb.a, %bb.c, %_ZN2v88internal19InstanceTypeChecker20IsJSApiWrapperObjectENS0_6TaggedINS0_3MapEEE.exit.thread, %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit, %bb.al, %bb.d, %bb.e, %_ZN2v88internal17ContextSerializer31ShouldBeInTheStartupObjectCacheENS0_6TaggedINS0_10HeapObjectEEE.exit.thread
  ret void
}

declare noundef zeroext i1 @_ZN2v88internal10Serializer18SerializeHotObjectENS0_6TaggedINS0_10HeapObjectEEE(ptr noundef nonnull align 8 dereferenceable(600), i64) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN2v88internal10Serializer13SerializeRootENS0_6TaggedINS0_10HeapObjectEEE(ptr noundef nonnull align 8 dereferenceable(600), i64) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN2v88internal10Serializer22SerializeBackReferenceENS0_6TaggedINS0_10HeapObjectEEE(ptr noundef nonnull align 8 dereferenceable(600), i64) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN2v88internal10Serializer32SerializeReadOnlyObjectReferenceENS0_6TaggedINS0_10HeapObjectEEEPNS0_16SnapshotByteSinkE(ptr noundef nonnull align 8 dereferenceable(600), i64, ptr noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN2v88internal17StartupSerializer35SerializeUsingSharedHeapObjectCacheEPNS0_16SnapshotByteSinkENS0_6HandleINS0_10HeapObjectEEE(ptr noundef nonnull align 8 dereferenceable(912), ptr noundef, ptr) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nounwind memory(readwrite, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZN2v88internal17ContextSerializer31ShouldBeInTheStartupObjectCacheENS0_6TaggedINS0_10HeapObjectEEE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(720) %0, i64 %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = add i64 %1, -1
  %i.b = inttoptr i64 %i.a to ptr                 ; 11 uses
  %i.c = load atomic volatile i64, ptr %i.b monotonic, align 8
  %i.d = add i64 %i.c, 11
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = load atomic volatile i16, ptr %i.e monotonic, align 2
  %i.g = icmp ult i16 %i.f, 129
  br i1 %i.g, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load atomic volatile i64, ptr %i.b monotonic, align 8
  %i.i = add i64 %i.h, 11
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = load atomic volatile i16, ptr %i.j monotonic, align 2
  %i.l = icmp eq i16 %i.k, 165
  br i1 %i.l, label %bb.l, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = load atomic volatile i64, ptr %i.b monotonic, align 8
  %i.n = add i64 %i.m, 11
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = load atomic volatile i16, ptr %i.o monotonic, align 2
  %i.q = icmp eq i16 %i.p, 286
  br i1 %i.q, label %bb.l, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = load atomic volatile i64, ptr %i.b monotonic, align 8
  %i.s = add i64 %i.r, 11
  %i.t = inttoptr i64 %i.s to ptr
  %i.u = load atomic volatile i16, ptr %i.t monotonic, align 2
  %i.v = icmp eq i16 %i.u, 130
  br i1 %i.v, label %bb.l, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = load atomic volatile i64, ptr %i.b monotonic, align 8
  %i.x = add i64 %i.w, 11
  %i.y = inttoptr i64 %i.x to ptr
  %i.z = load atomic volatile i16, ptr %i.y monotonic, align 2
  %i.aa = icmp eq i16 %i.z, 185
  br i1 %i.aa, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = load atomic volatile i64, ptr %i.b monotonic, align 8
  %i.ac = add i64 %i.ab, 11
  %i.ad = inttoptr i64 %i.ac to ptr
  %i.ae = load atomic volatile i16, ptr %i.ad monotonic, align 2
  %i.af = icmp eq i16 %i.ae, 191
  br i1 %i.af, label %bb.l, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ag = load atomic volatile i64, ptr %i.b monotonic, align 8
  %i.ah = add i64 %i.ag, 11
  %i.ai = inttoptr i64 %i.ah to ptr
  %i.aj = load atomic volatile i16, ptr %i.ai monotonic, align 2
  %i.ak = icmp eq i16 %i.aj, 284
  br i1 %i.ak, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.al = load atomic volatile i64, ptr %i.b monotonic, align 8
  %i.am = add i64 %i.al, 11
  %i.an = inttoptr i64 %i.am to ptr
  %i.ao = load atomic volatile i16, ptr %i.an monotonic, align 2
  %i.ap = icmp eq i16 %i.ao, 203
  br i1 %i.ap, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aq = load atomic volatile i64, ptr %i.b monotonic, align 8
  %i.ar = add i64 %i.aq, 11
  %i.as = inttoptr i64 %i.ar to ptr
  %i.at = load atomic volatile i16, ptr %i.as monotonic, align 2
  %i.au = add i16 %i.at, -248
  %i.av = icmp ult i16 %i.au, 3
  br i1 %i.av, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aw = load atomic volatile i64, ptr %i.b monotonic, align 8
  %i.ax = add i64 %i.aw, 11
  %i.ay = inttoptr i64 %i.ax to ptr
  %i.az = load atomic volatile i16, ptr %i.ay monotonic, align 2
  %i.ba = icmp eq i16 %i.az, 151
  br i1 %i.ba, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bb = load atomic volatile i64, ptr %i.b monotonic, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 736
  %i.bf = load i64, ptr %i.be, align 8
  %i.bg = icmp eq i64 %i.bb, %i.bf
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %i.bh = phi i1 [ true, %bb.j ], [ true, %bb.i ], [ true, %bb.h ], [ true, %bb.g ], [ true, %bb.f ], [ true, %bb.e ], [ true, %bb.d ], [ true, %bb.c ], [ true, %bb.b ], [ true, %bb.a ], [ %i.bg, %bb.k ]
  ret i1 %i.bh
}

declare void @_ZN2v88internal17StartupSerializer32SerializeUsingStartupObjectCacheEPNS0_16SnapshotByteSinkENS0_6HandleINS0_10HeapObjectEEE(ptr noundef nonnull align 8 dereferenceable(912), ptr noundef, ptr) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal17ContextSerializer33SerializeObjectWithEmbedderFieldsINS0_8JSObjectEPFNS_11StartupDataEibNS_31SerializeInternalFieldsCallbackENS_5LocalINS_6ObjectEEEES5_S8_EEvNS0_6HandleIT_EEiT0_T1_T2_(ptr noundef nonnull align 8 dereferenceable(720) %0, ptr %1, i32 noundef %2, ptr noundef %3, ptr %4, ptr %5, i64 %6) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %7 = alloca %"class.v8::internal::DisallowJavascriptExecution", align 8 ; 4 uses
  %8 = alloca %"class.v8::internal::DisallowCompilation", align 8 ; 4 uses
  %9 = alloca %"class.std::vector.660", align 8   ; 12 uses
  %10 = alloca %"class.v8::internal::Serializer::ObjectSerializer", align 8 ; 9 uses
  %i.a = inttoptr i64 %6 to ptr
  %i.b = icmp sgt i32 %2, 0
  br i1 %i.b, label %bb.c, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.18) #16
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8
  call void @_ZN2v88internal27DisallowJavascriptExecutionC1EPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(9) %7, ptr noundef %i.d) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  %i.e = load ptr, ptr %i.c, align 8
  call void @_ZN2v88internal19DisallowCompilationC1EPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(9) %8, ptr noundef %i.e) #14
  %i.f = load i64, ptr %1, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #14
  store ptr null, ptr %9, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 0, ptr %i.g, align 8
end_hunk_0
