inline.NumInlined: 1195
inline.NumDeleted: 600
begin_hunk_0_@_ZNK2v88internal6Script15GetPositionInfoEiPNS1_12PositionInfoENS1_10OffsetFlagE:bb.a
  %.2.i.i.i.i25.i = phi ptr [ %i.ft, %bb.ap ], [ %.029.lcssa.i.i.i.i23.i, %._crit_edge.i.i.i.i22.i ] ; 2 uses
  %i.fu = load i16, ptr %.2.i.i.i.i25.i, align 2
  %i.fv = icmp eq i16 %i.fu, 10
  br i1 %i.fv, label %_ZSt4findIPKtcET_S2_S2_RKT0_.exit.i.i, label %bb.aq

bb.aq:                                            ; preds = %._crit_edge._crit_edge52.i.i.i.i24.i, %._crit_edge.i.i.i.i22.i
  br label %_ZSt4findIPKtcET_S2_S2_RKT0_.exit.i.i

_ZSt4findIPKtcET_S2_S2_RKT0_.exit.i.i.loopexit.split.loop.exit: ; preds = %bb.aj
  %i.fw = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i36.i, i64 2
  br label %_ZSt4findIPKtcET_S2_S2_RKT0_.exit.i.i

_ZSt4findIPKtcET_S2_S2_RKT0_.exit.i.i.loopexit.split.loop.exit89: ; preds = %bb.ak
  %i.fx = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i36.i, i64 4
  br label %_ZSt4findIPKtcET_S2_S2_RKT0_.exit.i.i

_ZSt4findIPKtcET_S2_S2_RKT0_.exit.i.i.loopexit.split.loop.exit91: ; preds = %bb.al
  %i.fy = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i36.i, i64 6
  br label %_ZSt4findIPKtcET_S2_S2_RKT0_.exit.i.i

_ZSt4findIPKtcET_S2_S2_RKT0_.exit.i.i:            ; preds = %bb.ai, %_ZSt4findIPKtcET_S2_S2_RKT0_.exit.i.i.loopexit.split.loop.exit, %_ZSt4findIPKtcET_S2_S2_RKT0_.exit.i.i.loopexit.split.loop.exit89, %_ZSt4findIPKtcET_S2_S2_RKT0_.exit.i.i.loopexit.split.loop.exit91, %bb.aq, %._crit_edge._crit_edge52.i.i.i.i24.i, %._crit_edge._crit_edge.i.i.i.i31.i, %bb.an
  %.028.i.i.i.i26.i = phi ptr [ %.1.i.i.i.i32.i, %._crit_edge._crit_edge.i.i.i.i31.i ], [ %i.eq, %bb.aq ], [ %.2.i.i.i.i25.i, %._crit_edge._crit_edge52.i.i.i.i24.i ], [ %.029.lcssa.i.i.i.i23.i, %bb.an ], [ %i.fy, %_ZSt4findIPKtcET_S2_S2_RKT0_.exit.i.i.loopexit.split.loop.exit91 ], [ %i.fx, %_ZSt4findIPKtcET_S2_S2_RKT0_.exit.i.i.loopexit.split.loop.exit89 ], [ %i.fw, %_ZSt4findIPKtcET_S2_S2_RKT0_.exit.i.i.loopexit.split.loop.exit ], [ %.02946.i.i.i.i36.i, %bb.ai ] ; 2 uses
  %i.fz = ptrtoint ptr %.028.i.i.i.i26.i to i64
  %i.ga = sub i64 %i.fz, %i.et
  %i.gb = ashr exact i64 %i.ga, 1                 ; 2 uses
  %.not.i27.i = icmp slt i64 %i.gb, %i.es
  br i1 %.not.i27.i, label %bb.ar, label %.thread.i28.i

.thread.i28.i:                                    ; preds = %_ZSt4findIPKtcET_S2_S2_RKT0_.exit.i.i
  store i32 %.03057.i21.i, ptr %2, align 4
  %i.gc = getelementptr inbounds nuw [2 x i8], ptr %i.ct, i64 %i.es
  %i.gd = ptrtoint ptr %i.gc to i64
  %i.ge = sub i64 %i.gd, %i.eu
  %i.gf = lshr exact i64 %i.ge, 1
  %i.gg = trunc i64 %i.gf to i32
  %i.gh = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 %i.gg, ptr %i.gh, align 4
  %i.gi = sub i64 %i.eu, %i.et
  %i.gj = lshr exact i64 %i.gi, 1
  br label %_ZN2v88internal12_GLOBAL__N_119GetPositionInfoSlowENS0_6TaggedINS0_6ScriptEEEiRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS6_2EEEEPNS3_12PositionInfoE.exit

bb.ar:                                            ; preds = %_ZSt4findIPKtcET_S2_S2_RKT0_.exit.i.i
  %i.gk = add nuw nsw i32 %.03057.i21.i, 1
  %i.gl = getelementptr inbounds nuw i8, ptr %.028.i.i.i.i26.i, i64 2 ; 2 uses
  %.not35.i30.i = icmp ult ptr %i.gl, %i.eq
  br i1 %.not35.i30.i, label %bb.ah, label %_ZN2v88internal12_GLOBAL__N_119GetPositionInfoSlowENS0_6TaggedINS0_6ScriptEEEiRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS6_2EEEEPNS3_12PositionInfoE.exit.thread24

_ZN2v88internal12_GLOBAL__N_119GetPositionInfoSlowENS0_6TaggedINS0_6ScriptEEEiRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS6_2EEEEPNS3_12PositionInfoE.exit.thread24: ; preds = %bb.ar, %bb.af, %bb.ag, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br label %_ZNK2v88internal6Script21AddPositionInfoOffsetEPNS1_12PositionInfoENS1_10OffsetFlagE.exit

_ZN2v88internal12_GLOBAL__N_119GetPositionInfoSlowENS0_6TaggedINS0_6ScriptEEEiRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS6_2EEEEPNS3_12PositionInfoE.exit: ; preds = %.thread.i.i, %.thread.i28.i
  %.sink261.i = phi i64 [ %i.gj, %.thread.i28.i ], [ %i.en, %.thread.i.i ]
  %.lcssa241.sink.i = phi i64 [ %i.gb, %.thread.i28.i ], [ %i.eh, %.thread.i.i ]
  %i.gm = trunc i64 %.sink261.i to i32
  %i.gn = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.gm, ptr %i.gn, align 4
  %i.go = trunc i64 %.lcssa241.sink.i to i32
  %i.gp = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 %i.go, ptr %i.gp, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br label %bb.at

bb.as:                                            ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  store i64 %i.ai, ptr %7, align 8
  %i.gq = call noundef zeroext i1 @_ZNK2v88internal6Script23GetPositionInfoInternalINS0_6TaggedINS0_10FixedArrayEEEEEbRKT_iPNS1_12PositionInfoERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSC_2EEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %7, i32 noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  br i1 %i.gq, label %bb.at, label %_ZNK2v88internal6Script21AddPositionInfoOffsetEPNS1_12PositionInfoENS1_10OffsetFlagE.exit

bb.at:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_119GetPositionInfoSlowENS0_6TaggedINS0_6ScriptEEEiRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS6_2EEEEPNS3_12PositionInfoE.exit, %bb.as
  %i.gr = icmp eq i32 %3, 1
  br i1 %i.gr, label %bb.au, label %_ZNK2v88internal6Script21AddPositionInfoOffsetEPNS1_12PositionInfoENS1_10OffsetFlagE.exit

bb.au:                                            ; preds = %bb.at
  %i.gs = load i32, ptr %2, align 4               ; 2 uses
  %i.gt = icmp eq i32 %i.gs, 0
  br i1 %i.gt, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %.sroa.0.0.copyload.i.i21 = load i64, ptr %0, align 8
  %i.gu = add i64 %.sroa.0.0.copyload.i.i21, 31
  %i.gv = inttoptr i64 %i.gu to ptr
  %i.gw = load i64, ptr %i.gv, align 8
  %i.gx = lshr i64 %i.gw, 32
  %i.gy = trunc nuw i64 %i.gx to i32
  %i.gz = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.ha = load i32, ptr %i.gz, align 4
  %i.hb = add nsw i32 %i.ha, %i.gy
  store i32 %i.hb, ptr %i.gz, align 4
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %.sroa.0.0.copyload.i4.i = load i64, ptr %0, align 8
  %i.hc = add i64 %.sroa.0.0.copyload.i4.i, 23
  %i.hd = inttoptr i64 %i.hc to ptr
  %i.he = load i64, ptr %i.hd, align 8
  %i.hf = lshr i64 %i.he, 32
  %i.hg = trunc nuw i64 %i.hf to i32
  %i.hh = add nsw i32 %i.gs, %i.hg
  store i32 %i.hh, ptr %2, align 4
  br label %_ZNK2v88internal6Script21AddPositionInfoOffsetEPNS1_12PositionInfoENS1_10OffsetFlagE.exit

_ZNK2v88internal6Script21AddPositionInfoOffsetEPNS1_12PositionInfoENS1_10OffsetFlagE.exit: ; preds = %bb.c, %bb.b, %bb.e, %bb.aw, %bb.at, %_ZN2v88internal12_GLOBAL__N_119GetPositionInfoSlowENS0_6TaggedINS0_6ScriptEEEiRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS6_2EEEEPNS3_12PositionInfoE.exit.thread24, %bb.as
  %.2 = phi i1 [ false, %bb.e ], [ true, %bb.aw ], [ false, %bb.as ], [ false, %_ZN2v88internal12_GLOBAL__N_119GetPositionInfoSlowENS0_6TaggedINS0_6ScriptEEEiRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS6_2EEEEPNS3_12PositionInfoE.exit.thread24 ], [ true, %bb.at ], [ false, %bb.b ], [ true, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  ret i1 %.2
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZNK2v88internal6Script20IsSubjectToDebuggingEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %.sroa.0.0.copyload.i = load i64, ptr %0, align 8
  %i.a = add i64 %.sroa.0.0.copyload.i, 47
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %i.d = icmp ult i64 %i.c, 21474836480
  br i1 %i.d, label %switch.lookup, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.7) #15
  unreachable

switch.lookup:                                    ; preds = %bb.a
  %i.e = lshr i64 %i.c, 32
  %switch.cast = trunc nuw i64 %i.e to i5
  %switch.downshift = lshr i5 12, %switch.cast
  %switch.masked = trunc i5 %switch.downshift to i1
  ret i1 %switch.masked
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZNK2v88internal6Script16IsUserJavaScriptEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #8 align 2 {
bb.a:
  %.sroa.0.0.copyload.i = load i64, ptr %0, align 8
  %i.a = add i64 %.sroa.0.0.copyload.i, 47
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = load i64, ptr %i.b, align 8
  %.mask = and i64 %i.c, -4294967296
  %i.d = icmp eq i64 %.mask, 8589934592
  ret i1 %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN2v88internal6Script17ContainsAsmModuleEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.v8::internal::SharedFunctionInfo::ScriptIterator", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #16
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN2v88internal18g_current_isolate_E)
  %i.b = load ptr, ptr %i.a, align 8
  %.sroa.01.0.copyload = load i64, ptr %0, align 8
  call void @_ZN2v88internal18SharedFunctionInfo14ScriptIteratorC1EPNS0_7IsolateENS0_6TaggedINS0_6ScriptEEE(ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef %i.b, i64 %.sroa.01.0.copyload) #16
  %i.c = call i64 @_ZN2v88internal18SharedFunctionInfo14ScriptIterator4NextEv(ptr noundef nonnull align 8 dereferenceable(12) %1) #16 ; 2 uses
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNK2v88internal18SharedFunctionInfo14HasAsmWasmDataEv.exit.thread
  %storemerge11 = phi i64 [ %i.o, %_ZNK2v88internal18SharedFunctionInfo14HasAsmWasmDataEv.exit.thread ], [ %i.c, %bb.a ]
  %i.d = add i64 %storemerge11, 15
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = load atomic volatile i64, ptr %i.e acquire, align 8 ; 2 uses
  %i.g = trunc i64 %i.f to i1
  br i1 %i.g, label %_ZNK2v88internal18SharedFunctionInfo14HasAsmWasmDataEv.exit, label %_ZNK2v88internal18SharedFunctionInfo14HasAsmWasmDataEv.exit.thread

_ZNK2v88internal18SharedFunctionInfo14HasAsmWasmDataEv.exit: ; preds = %.lr.ph
  %i.h = add nsw i64 %i.f, -1
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = load atomic volatile i64, ptr %i.i monotonic, align 8
  %i.k = add i64 %i.j, 11
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = load atomic volatile i16, ptr %i.l monotonic, align 2
  %i.n = icmp eq i16 %i.m, 144
  br i1 %i.n, label %.critedge, label %_ZNK2v88internal18SharedFunctionInfo14HasAsmWasmDataEv.exit.thread

_ZNK2v88internal18SharedFunctionInfo14HasAsmWasmDataEv.exit.thread: ; preds = %.lr.ph, %_ZNK2v88internal18SharedFunctionInfo14HasAsmWasmDataEv.exit
  %i.o = call i64 @_ZN2v88internal18SharedFunctionInfo14ScriptIterator4NextEv(ptr noundef nonnull align 8 dereferenceable(12) %1) #16 ; 2 uses
  %.not13 = icmp eq i64 %i.o, 0
  br i1 %.not13, label %.critedge, label %.lr.ph, !llvm.loop !42

.critedge:                                        ; preds = %_ZNK2v88internal18SharedFunctionInfo14HasAsmWasmDataEv.exit, %_ZNK2v88internal18SharedFunctionInfo14HasAsmWasmDataEv.exit.thread, %bb.a
  %.lcssa = phi i1 [ false, %bb.a ], [ false, %_ZNK2v88internal18SharedFunctionInfo14HasAsmWasmDataEv.exit.thread ], [ true, %_ZNK2v88internal18SharedFunctionInfo14HasAsmWasmDataEv.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #16
  ret i1 %.lcssa
}

declare void @_ZN2v88internal18SharedFunctionInfo14ScriptIteratorC1EPNS0_7IsolateENS0_6TaggedINS0_6ScriptEEE(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef, i64) unnamed_addr #3

declare i64 @_ZN2v88internal18SharedFunctionInfo14ScriptIterator4NextEv(ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal6Script18TraceScriptRundownEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca [2 x %"class.std::unique_ptr.1023"], align 16 ; 7 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"class.std::unique_ptr.470", align 8 ; 14 uses
  %3 = alloca %"class.std::unique_ptr.514", align 8 ; 5 uses
  %4 = alloca %"class.std::unique_ptr.514", align 8 ; 5 uses
  %5 = alloca %"class.std::unique_ptr.514", align 8 ; 5 uses
  %6 = alloca %"class.v8::internal::tracing::ScopedTracer", align 8 ; 9 uses
  %i.d = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN2v88internal18g_current_isolate_E)
  %i.e = load ptr, ptr %i.d, align 8              ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 344
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.f, align 8
  %i.g = add i64 %.sroa.0.0.copyload.i.i, -1
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = load atomic volatile i64, ptr %i.h monotonic, align 8
  %i.j = add i64 %i.i, 31
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = load i64, ptr %i.k, align 8              ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 560 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 568
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = icmp eq ptr %i.n, %i.p
  br i1 %i.q, label %bb.b, label %_ZN2v88internal7Isolate14native_contextEv.exit, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.r = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(64320) %i.e) #16
  br label %_ZN2v88internal7Isolate14native_contextEv.exit

_ZN2v88internal7Isolate14native_contextEv.exit:   ; preds = %bb.a, %bb.b
  %.0.i.i = phi ptr [ %i.r, %bb.b ], [ %i.n, %bb.a ] ; 2 uses
  %i.s = ptrtoint ptr %.0.i.i to i64
  %i.t = add i64 %i.s, 8
  %i.u = inttoptr i64 %i.t to ptr
  store ptr %i.u, ptr %i.m, align 8
  store i64 %i.l, ptr %.0.i.i, align 8
  %i.v = add i64 %i.l, 519
  %i.w = inttoptr i64 %i.v to ptr
  %i.x = load atomic volatile i64, ptr %i.w monotonic, align 8 ; 2 uses
  %i.y = and i64 %i.x, 1
  %i.z = icmp eq i64 %i.y, 0
  %i.aa = lshr i64 %i.x, 32
  %i.ab = trunc nuw i64 %i.aa to i32
  %i.ac = select i1 %i.z, i32 %i.ab, i32 0
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  call void @_ZN2v87tracing11TracedValue6CreateEv(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.470") align 8 %2) #16
  %i.ad = load ptr, ptr %2, align 8
  %.sroa.0.0.copyload.i = load i64, ptr %0, align 8
  %i.ae = add i64 %.sroa.0.0.copyload.i, 63
  %i.af = inttoptr i64 %i.ae to ptr
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = lshr i64 %i.ag, 32
  %i.ai = trunc nuw i64 %i.ah to i32
  call void @_ZN2v87tracing11TracedValue10SetIntegerEPKci(ptr noundef nonnull align 8 dereferenceable(41) %i.ad, ptr noundef nonnull @.str.8, i32 noundef %i.ai) #16
  %i.aj = load ptr, ptr %2, align 8
  call void @_ZN2v87tracing11TracedValue10SetIntegerEPKci(ptr noundef nonnull align 8 dereferenceable(41) %i.aj, ptr noundef nonnull @.str.9, i32 noundef %i.ac) #16
  %i.ak = load ptr, ptr %2, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.e, i64 59496
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 248
  %i.ao = load i64, ptr %i.an, align 8
  call void @_ZN2v87tracing11TracedValue18SetUnsignedIntegerEPKcm(ptr noundef nonnull align 8 dereferenceable(41) %i.ak, ptr noundef nonnull @.str.10, i64 noundef %i.ao) #16
  %i.ap = load ptr, ptr %2, align 8
  %.sroa.0.0.copyload.i.i22 = load i64, ptr %0, align 8
  %i.aq = add i64 %.sroa.0.0.copyload.i.i22, 103
  %i.ar = inttoptr i64 %i.aq to ptr
  %i.as = load atomic volatile i64, ptr %i.ar monotonic, align 8
  %i.at = and i64 %i.as, 274877906944
  %i.au = icmp ne i64 %i.at, 0
  call void @_ZN2v87tracing11TracedValue10SetBooleanEPKcb(ptr noundef nonnull align 8 dereferenceable(41) %i.ap, ptr noundef nonnull @.str.11, i1 noundef zeroext %i.au) #16
  %i.av = load ptr, ptr %2, align 8
  %.sroa.0.0.copyload.i.i.i23 = load i64, ptr %0, align 8
  %i.aw = add i64 %.sroa.0.0.copyload.i.i.i23, 111
  %i.ax = inttoptr i64 %i.aw to ptr
  %i.ay = load i64, ptr %i.ax, align 8
  %i.az = add i64 %i.ay, -1
  %i.ba = inttoptr i64 %i.az to ptr               ; 2 uses
  %i.bb = load atomic volatile i64, ptr %i.ba monotonic, align 8
  %i.bc = add i64 %i.bb, 11
  %i.bd = inttoptr i64 %i.bc to ptr
  %i.be = load atomic volatile i16, ptr %i.bd monotonic, align 2
  %i.bf = icmp ult i16 %i.be, 128
  br i1 %i.bf, label %bb.c, label %_ZNK2v88internal6Script19HasSourceURLCommentEv.exit

bb.c:                                             ; preds = %_ZN2v88internal7Isolate14native_contextEv.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ba, i64 12
  %i.bh = load i32, ptr %i.bg, align 4
  %i.bi = icmp ne i32 %i.bh, 0
  br label %_ZNK2v88internal6Script19HasSourceURLCommentEv.exit

_ZNK2v88internal6Script19HasSourceURLCommentEv.exit: ; preds = %_ZN2v88internal7Isolate14native_contextEv.exit, %bb.c
  %i.bj = phi i1 [ false, %_ZN2v88internal7Isolate14native_contextEv.exit ], [ %i.bi, %bb.c ]
  call void @_ZN2v87tracing11TracedValue10SetBooleanEPKcb(ptr noundef nonnull align 8 dereferenceable(41) %i.av, ptr noundef nonnull @.str.12, i1 noundef zeroext %i.bj) #16
  %.sroa.0.0.copyload.i.i.i24 = load i64, ptr %0, align 8
  %i.bk = add i64 %.sroa.0.0.copyload.i.i.i24, 7
  %i.bl = inttoptr i64 %i.bk to ptr
  %i.bm = load i64, ptr %i.bl, align 8            ; 2 uses
  %i.bn = trunc i64 %i.bm to i1
  br i1 %i.bn, label %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i, label %_ZN2v88internal6Script14HasValidSourceEv.exit.thread

_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i: ; preds = %_ZNK2v88internal6Script19HasSourceURLCommentEv.exit
  %i.bo = add nsw i64 %i.bm, -1
  %i.bp = inttoptr i64 %i.bo to ptr               ; 5 uses
  %i.bq = load atomic volatile i64, ptr %i.bp monotonic, align 8
  %i.br = add i64 %i.bq, 11
  %i.bs = inttoptr i64 %i.br to ptr
  %i.bt = load atomic volatile i16, ptr %i.bs monotonic, align 2
  %i.bu = icmp ult i16 %i.bt, 128
  br i1 %i.bu, label %bb.d, label %_ZN2v88internal6Script14HasValidSourceEv.exit.thread

bb.d:                                             ; preds = %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i
  %i.bv = load atomic volatile i64, ptr %i.bp acquire, align 8
  %i.bw = add i64 %i.bv, 11
  %i.bx = inttoptr i64 %i.bw to ptr
  %i.by = load atomic volatile i16, ptr %i.bx monotonic, align 2
  %i.bz = and i16 %i.by, -121
  %i.ca = icmp eq i16 %i.bz, 2
  br i1 %i.ca, label %bb.e, label %_ZN2v88internal6Script14HasValidSourceEv.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.cb = load atomic volatile i64, ptr %i.bp monotonic, align 8
  %i.cc = add i64 %i.cb, 11
  %i.cd = inttoptr i64 %i.cc to ptr
  %i.ce = load atomic volatile i16, ptr %i.cd monotonic, align 2
  %i.cf = and i16 %i.ce, 8
  %.not.i = icmp eq i16 %i.cf, 0
  br i1 %.not.i, label %bb.f, label %_ZN2v88internal6Script14HasValidSourceEv.exit

bb.f:                                             ; preds = %bb.e
  %i.cg = load atomic volatile i64, ptr %i.bp monotonic, align 8
  %i.ch = add i64 %i.cg, 11
  %i.ci = inttoptr i64 %i.ch to ptr
  %i.cj = load atomic volatile i16, ptr %i.ci monotonic, align 2
  %i.ck = and i16 %i.cj, 8
  %i.cl = icmp eq i16 %i.ck, 0
  br i1 %i.cl, label %_ZN2v88internal6Script14HasValidSourceEv.exit, label %_ZN2v88internal6Script14HasValidSourceEv.exit.thread

_ZN2v88internal6Script14HasValidSourceEv.exit:    ; preds = %bb.e, %bb.f
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.cn = load i64, ptr %i.cm, align 8
  %.not71 = icmp eq i64 %i.cn, 0
  br i1 %.not71, label %_ZNK2v88internal6Script26HasSourceMappingURLCommentEv.exit.thread, label %_ZN2v88internal6Script14HasValidSourceEv.exit.thread

_ZN2v88internal6Script14HasValidSourceEv.exit.thread: ; preds = %_ZNK2v88internal6Script19HasSourceURLCommentEv.exit, %bb.d, %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i, %bb.f, %_ZN2v88internal6Script14HasValidSourceEv.exit
  %.sroa.0.0.copyload.i.i.i25 = load i64, ptr %0, align 8 ; 3 uses
  %i.co = add i64 %.sroa.0.0.copyload.i.i.i25, 111
  %i.cp = inttoptr i64 %i.co to ptr
  %i.cq = load i64, ptr %i.cp, align 8
  %i.cr = add i64 %i.cq, -1
  %i.cs = inttoptr i64 %i.cr to ptr               ; 3 uses
  %i.ct = load atomic volatile i64, ptr %i.cs monotonic, align 8
  %i.cu = add i64 %i.ct, 11
  %i.cv = inttoptr i64 %i.cu to ptr
  %i.cw = load atomic volatile i16, ptr %i.cv monotonic, align 2
  %i.cx = icmp ult i16 %i.cw, 128
  br i1 %i.cx, label %_ZNK2v88internal6Script19HasSourceURLCommentEv.exit26, label %_ZNK2v88internal6Script19HasSourceURLCommentEv.exit26.thread

_ZNK2v88internal6Script19HasSourceURLCommentEv.exit26: ; preds = %_ZN2v88internal6Script14HasValidSourceEv.exit.thread
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cs, i64 12
  %i.cz = load i32, ptr %i.cy, align 4
  %.not72 = icmp eq i32 %i.cz, 0
  br i1 %.not72, label %_ZNK2v88internal6Script19HasSourceURLCommentEv.exit26.thread, label %bb.g

bb.g:                                             ; preds = %_ZNK2v88internal6Script19HasSourceURLCommentEv.exit26
  %i.da = load ptr, ptr %2, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  call void @_ZN2v88internal6String9ToCStringEPm(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.514") align 8 %3, ptr noundef nonnull align 4 dereferenceable(16) %i.cs, ptr noundef null) #16
  %i.db = load ptr, ptr %3, align 8
  call void @_ZN2v87tracing11TracedValue9SetStringEPKcS3_(ptr noundef nonnull align 8 dereferenceable(41) %i.da, ptr noundef nonnull @.str.13, ptr noundef %i.db) #16
  %i.dc = load ptr, ptr %3, align 8               ; 2 uses
  %.not.i28 = icmp eq ptr %i.dc, null
  br i1 %.not.i28, label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i: ; preds = %bb.g
  call void @_ZdaPv(ptr noundef nonnull %i.dc) #17
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit: ; preds = %bb.g, %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  %.sroa.0.0.copyload.i.i.i29.pre = load i64, ptr %0, align 8
  br label %_ZNK2v88internal6Script19HasSourceURLCommentEv.exit26.thread

_ZNK2v88internal6Script19HasSourceURLCommentEv.exit26.thread: ; preds = %_ZN2v88internal6Script14HasValidSourceEv.exit.thread, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit, %_ZNK2v88internal6Script19HasSourceURLCommentEv.exit26
  %.sroa.0.0.copyload.i.i.i29 = phi i64 [ %.sroa.0.0.copyload.i.i.i25, %_ZN2v88internal6Script14HasValidSourceEv.exit.thread ], [ %.sroa.0.0.copyload.i.i.i29.pre, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit ], [ %.sroa.0.0.copyload.i.i.i25, %_ZNK2v88internal6Script19HasSourceURLCommentEv.exit26 ]
  %i.dd = add i64 %.sroa.0.0.copyload.i.i.i29, 119
  %i.de = inttoptr i64 %i.dd to ptr
  %i.df = load i64, ptr %i.de, align 8            ; 2 uses
  %i.dg = trunc i64 %i.df to i1
  br i1 %i.dg, label %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i30, label %_ZNK2v88internal6Script26HasSourceMappingURLCommentEv.exit.thread

_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i30: ; preds = %_ZNK2v88internal6Script19HasSourceURLCommentEv.exit26.thread
  %i.dh = add nsw i64 %i.df, -1
  %i.di = inttoptr i64 %i.dh to ptr               ; 3 uses
  %i.dj = load atomic volatile i64, ptr %i.di monotonic, align 8
  %i.dk = add i64 %i.dj, 11
  %i.dl = inttoptr i64 %i.dk to ptr
  %i.dm = load atomic volatile i16, ptr %i.dl monotonic, align 2
  %i.dn = icmp ult i16 %i.dm, 128
  br i1 %i.dn, label %_ZNK2v88internal6Script26HasSourceMappingURLCommentEv.exit, label %_ZNK2v88internal6Script26HasSourceMappingURLCommentEv.exit.thread

_ZNK2v88internal6Script26HasSourceMappingURLCommentEv.exit: ; preds = %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i30
  %i.do = getelementptr inbounds nuw i8, ptr %i.di, i64 12
  %i.dp = load i32, ptr %i.do, align 4            ; 2 uses
  %.not73 = icmp eq i32 %i.dp, 0
  br i1 %.not73, label %_ZNK2v88internal6Script26HasSourceMappingURLCommentEv.exit.thread, label %bb.h

bb.h:                                             ; preds = %_ZNK2v88internal6Script26HasSourceMappingURLCommentEv.exit
  %i.dq = icmp ugt i32 %i.dp, 2048
  %i.dr = load ptr, ptr %2, align 8               ; 2 uses
  br i1 %i.dq, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @_ZN2v87tracing11TracedValue10SetBooleanEPKcb(ptr noundef nonnull align 8 dereferenceable(41) %i.dr, ptr noundef nonnull @.str.14, i1 noundef zeroext true) #16
  br label %_ZNK2v88internal6Script26HasSourceMappingURLCommentEv.exit.thread

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  call void @_ZN2v88internal6String9ToCStringEPm(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.514") align 8 %4, ptr noundef nonnull align 4 dereferenceable(16) %i.di, ptr noundef null) #16
  %i.ds = load ptr, ptr %4, align 8
  call void @_ZN2v87tracing11TracedValue9SetStringEPKcS3_(ptr noundef nonnull align 8 dereferenceable(41) %i.dr, ptr noundef nonnull @.str.15, ptr noundef %i.ds) #16
  %i.dt = load ptr, ptr %4, align 8               ; 2 uses
  %.not.i32 = icmp eq ptr %i.dt, null
  br i1 %.not.i32, label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit34, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i33

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i33: ; preds = %bb.j
  call void @_ZdaPv(ptr noundef nonnull %i.dt) #17
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit34

_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit34: ; preds = %bb.j, %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i33
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %_ZNK2v88internal6Script26HasSourceMappingURLCommentEv.exit.thread

_ZNK2v88internal6Script26HasSourceMappingURLCommentEv.exit.thread: ; preds = %_ZNK2v88internal6Script19HasSourceURLCommentEv.exit26.thread, %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i30, %bb.i, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit34, %_ZNK2v88internal6Script26HasSourceMappingURLCommentEv.exit, %_ZN2v88internal6Script14HasValidSourceEv.exit
  %.sroa.0.0.copyload.i.i35 = load i64, ptr %0, align 8
  %i.du = add i64 %.sroa.0.0.copyload.i.i35, 15
  %i.dv = inttoptr i64 %i.du to ptr
  %i.dw = load i64, ptr %i.dv, align 8            ; 2 uses
  %i.dx = trunc i64 %i.dw to i1
  br i1 %i.dx, label %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit, label %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %_ZNK2v88internal6Script26HasSourceMappingURLCommentEv.exit.thread
  %i.dy = add nsw i64 %i.dw, -1
  %i.dz = inttoptr i64 %i.dy to ptr               ; 2 uses
  %i.ea = load atomic volatile i64, ptr %i.dz monotonic, align 8
  %i.eb = add i64 %i.ea, 11
  %i.ec = inttoptr i64 %i.eb to ptr
  %i.ed = load atomic volatile i16, ptr %i.ec monotonic, align 2
  %i.ee = icmp ult i16 %i.ed, 128
  br i1 %i.ee, label %bb.k, label %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.thread

bb.k:                                             ; preds = %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit
  %i.ef = load ptr, ptr %2, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  call void @_ZN2v88internal6String9ToCStringEPm(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.514") align 8 %5, ptr noundef nonnull align 4 dereferenceable(16) %i.dz, ptr noundef null) #16
  %i.eg = load ptr, ptr %5, align 8
  call void @_ZN2v87tracing11TracedValue9SetStringEPKcS3_(ptr noundef nonnull align 8 dereferenceable(41) %i.ef, ptr noundef nonnull @.str.16, ptr noundef %i.eg) #16
  %i.eh = load ptr, ptr %5, align 8               ; 2 uses
  %.not.i38 = icmp eq ptr %i.eh, null
  br i1 %.not.i38, label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit40, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i39

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i39: ; preds = %bb.k
  call void @_ZdaPv(ptr noundef nonnull %i.eh) #17
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit40

_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit40: ; preds = %bb.k, %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i39
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br label %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.thread: ; preds = %_ZNK2v88internal6Script26HasSourceMappingURLCommentEv.exit.thread, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit40, %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit
  %i.ei = load atomic volatile i64, ptr @_ZZN2v88internal6Script18TraceScriptRundownEvE28trace_event_unique_atomic219 acquire, align 8 ; 2 uses
  %i.ej = inttoptr i64 %i.ei to ptr
  %.not = icmp eq i64 %i.ei, 0
  br i1 %.not, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.thread
  %i.ek = call noundef ptr @_ZN2v88internal7tracing16TraceEventHelper20GetTracingControllerEv() #16 ; 2 uses
  %i.el = load ptr, ptr %i.ek, align 8
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  %i.en = load ptr, ptr %i.em, align 8
  %i.eo = call noundef ptr %i.en(ptr noundef nonnull align 8 dereferenceable(8) %i.ek, ptr noundef nonnull @.str.17) #16 ; 2 uses
  %i.ep = ptrtoint ptr %i.eo to i64
  store atomic volatile i64 %i.ep, ptr @_ZZN2v88internal6Script18TraceScriptRundownEvE28trace_event_unique_atomic219 release, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.thread
  %.0 = phi ptr [ %i.ej, %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.thread ], [ %i.eo, %bb.l ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  %i.eq = load atomic volatile i8, ptr %.0 monotonic, align 1
  %i.er = and i8 %i.eq, 5
  %.not21 = icmp eq i8 %i.er, 0
  br i1 %.not21, label %_ZN2v88internal7tracing12ScopedTracerD2Ev.exit, label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EE5resetEPS1_.exit

_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EE5resetEPS1_.exit: ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @.str.19, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  %i.es = load i64, ptr %2, align 8               ; 2 uses
  store ptr null, ptr %2, align 8
  store i8 8, ptr %i.b, align 1
  store i64 %i.es, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  %i.et = inttoptr i64 %i.es to ptr
  store ptr %i.et, ptr %1, align 16
  %i.eu = call noundef ptr @_ZN2v88internal7tracing16TraceEventHelper20GetTracingControllerEv() #16 ; 2 uses
  %i.ev = load ptr, ptr %i.eu, align 8
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 24
  %i.ex = load ptr, ptr %i.ew, align 8
  %i.ey = call noundef i64 %i.ex(ptr noundef nonnull align 8 dereferenceable(8) %i.eu, i8 noundef signext 88, ptr noundef nonnull %.0, ptr noundef nonnull @.str.18, ptr noundef null, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %1, i32 noundef 0) #16, !inline_history !43
  %i.ez = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.fa = load ptr, ptr %i.ez, align 8            ; 3 uses
  %.not.i42 = icmp eq ptr %i.fa, null
  br i1 %.not.i42, label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i

_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i: ; preds = %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EE5resetEPS1_.exit
  %i.fb = load ptr, ptr %i.fa, align 8
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  %i.fd = load ptr, ptr %i.fc, align 8
  call void %i.fd(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.fa) #16, !inline_history !44
  br label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EE5resetEPS1_.exit, %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i
  %i.fe = load ptr, ptr %1, align 16              ; 3 uses
  %.not.i42.1 = icmp eq ptr %i.fe, null
  br i1 %.not.i42.1, label %bb.n, label %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i.1

_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i.1: ; preds = %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit
  %i.ff = load ptr, ptr %i.fe, align 8
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  %i.fh = load ptr, ptr %i.fg, align 8
  call void %i.fh(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.fe) #16, !inline_history !44
  br label %bb.n

bb.n:                                             ; preds = %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i.1
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.fi = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store ptr %.0, ptr %i.fi, align 8
  %i.fj = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr @.str.18, ptr %i.fj, align 8
  %i.fk = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i64 %i.ey, ptr %i.fk, align 8
  store ptr %i.fi, ptr %6, align 8
  %i.fl = load atomic volatile i8, ptr %.0 monotonic, align 1
  %.not1.i = icmp eq i8 %i.fl, 0
  br i1 %.not1.i, label %_ZN2v88internal7tracing12ScopedTracerD2Ev.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.fm = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.fn = call noundef ptr @_ZN2v88internal7tracing16TraceEventHelper20GetTracingControllerEv() #16 ; 2 uses
  %i.fo = load ptr, ptr %i.fm, align 8
  %i.fp = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.fq = load ptr, ptr %i.fp, align 8
  %i.fr = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.fs = load i64, ptr %i.fr, align 8
  %i.ft = load ptr, ptr %i.fn, align 8
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 40
  %i.fv = load ptr, ptr %i.fu, align 8
  call void %i.fv(ptr noundef nonnull align 8 dereferenceable(8) %i.fn, ptr noundef %i.fo, ptr noundef %i.fq, i64 noundef %i.fs) #16, !inline_history !45
  br label %_ZN2v88internal7tracing12ScopedTracerD2Ev.exit

_ZN2v88internal7tracing12ScopedTracerD2Ev.exit:   ; preds = %bb.m, %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  %i.fw = load ptr, ptr %2, align 8               ; 3 uses
  %.not.i44 = icmp eq ptr %i.fw, null
  br i1 %.not.i44, label %_ZNSt10unique_ptrIN2v87tracing11TracedValueESt14default_deleteIS2_EED2Ev.exit46, label %_ZNKSt14default_deleteIN2v87tracing11TracedValueEEclEPS2_.exit.i45

_ZNKSt14default_deleteIN2v87tracing11TracedValueEEclEPS2_.exit.i45: ; preds = %_ZN2v88internal7tracing12ScopedTracerD2Ev.exit
  %i.fx = load ptr, ptr %i.fw, align 8
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 8
  %i.fz = load ptr, ptr %i.fy, align 8
  call void %i.fz(ptr noundef nonnull align 8 dereferenceable(41) %i.fw) #16, !inline_history !46
  br label %_ZNSt10unique_ptrIN2v87tracing11TracedValueESt14default_deleteIS2_EED2Ev.exit46

_ZNSt10unique_ptrIN2v87tracing11TracedValueESt14default_deleteIS2_EED2Ev.exit46: ; preds = %_ZN2v88internal7tracing12ScopedTracerD2Ev.exit, %_ZNKSt14default_deleteIN2v87tracing11TracedValueEEclEPS2_.exit.i45
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  ret void
}

declare void @_ZN2v87tracing11TracedValue6CreateEv(ptr dead_on_unwind writable sret(%"class.std::unique_ptr.470") align 8) local_unnamed_addr #3

declare void @_ZN2v87tracing11TracedValue10SetIntegerEPKci(ptr noundef nonnull align 8 dereferenceable(41), ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @_ZN2v87tracing11TracedValue18SetUnsignedIntegerEPKcm(ptr noundef nonnull align 8 dereferenceable(41), ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @_ZN2v87tracing11TracedValue10SetBooleanEPKcb(ptr noundef nonnull align 8 dereferenceable(41), ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

declare void @_ZN2v87tracing11TracedValue9SetStringEPKcS3_(ptr noundef nonnull align 8 dereferenceable(41), ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @_ZN2v88internal6String9ToCStringEPm(ptr dead_on_unwind writable sret(%"class.std::unique_ptr.514") align 8, ptr noundef nonnull align 4 dereferenceable(16), ptr noundef) local_unnamed_addr #3

declare noundef ptr @_ZN2v88internal7tracing16TraceEventHelper20GetTracingControllerEv() local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal6Script25TraceScriptRundownSourcesEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca [2 x %"class.std::unique_ptr.1023"], align 16 ; 7 uses
  %2 = alloca [2 x %"class.std::unique_ptr.1023"], align 16 ; 7 uses
  %3 = alloca [2 x %"class.std::unique_ptr.1023"], align 16 ; 7 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %i.e = alloca i8, align 1                       ; 4 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  %i.g = alloca ptr, align 8                      ; 4 uses
  %i.h = alloca i8, align 1                       ; 4 uses
  %i.i = alloca i64, align 8                      ; 4 uses
  %4 = alloca %"class.std::unique_ptr.470", align 8 ; 10 uses
  %5 = alloca %"class.v8::internal::tracing::ScopedTracer", align 8 ; 9 uses
  %6 = alloca %"class.std::unique_ptr.470", align 8 ; 10 uses
  %7 = alloca %"class.std::unique_ptr.514", align 8 ; 5 uses
  %8 = alloca %"class.v8::internal::tracing::ScopedTracer", align 8 ; 9 uses
  %9 = alloca %"class.std::unique_ptr.514", align 8 ; 5 uses
  %10 = alloca %"class.std::unique_ptr.470", align 8 ; 11 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %12 = alloca %"class.v8::internal::tracing::ScopedTracer", align 8 ; 7 uses
  %i.j = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN2v88internal18g_current_isolate_E)
  %i.k = load ptr, ptr %i.j, align 8              ; 3 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %0, align 8 ; 2 uses
  %i.l = add i64 %.sroa.0.0.copyload.i.i, 7
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = load i64, ptr %i.m, align 8
  %i.o = add i64 %i.n, -1
  %i.p = inttoptr i64 %i.o to ptr                 ; 4 uses
  %i.q = load atomic volatile i64, ptr %i.p monotonic, align 8
  %i.r = add i64 %i.q, 11
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = load atomic volatile i16, ptr %i.s monotonic, align 2
  %i.u = icmp ult i16 %i.t, 128
  br i1 %i.u, label %bb.b, label %bb.aa

bb.b:                                             ; preds = %bb.a
  %i.v = add i64 %.sroa.0.0.copyload.i.i, 63
  %i.w = inttoptr i64 %i.v to ptr
  %i.x = load i64, ptr %i.w, align 8
  %i.y = lshr i64 %i.x, 32
  %i.z = trunc nuw i64 %i.y to i32                ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  %i.ab = load i32, ptr %i.aa, align 4            ; 7 uses
  %i.ac = icmp sgt i32 %i.ab, 25000000
  br i1 %i.ac, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  call void @_ZN2v87tracing11TracedValue6CreateEv(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.470") align 8 %4) #16
  %i.ad = load ptr, ptr %4, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.k, i64 59496
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 248
  %i.ah = load i64, ptr %i.ag, align 8
  call void @_ZN2v87tracing11TracedValue18SetUnsignedIntegerEPKcm(ptr noundef nonnull align 8 dereferenceable(41) %i.ad, ptr noundef nonnull @.str.10, i64 noundef %i.ah) #16
  %i.ai = load ptr, ptr %4, align 8
  call void @_ZN2v87tracing11TracedValue10SetIntegerEPKci(ptr noundef nonnull align 8 dereferenceable(41) %i.ai, ptr noundef nonnull @.str.8, i32 noundef %i.z) #16
  %i.aj = load ptr, ptr %4, align 8
  call void @_ZN2v87tracing11TracedValue10SetIntegerEPKci(ptr noundef nonnull align 8 dereferenceable(41) %i.aj, ptr noundef nonnull @.str.20, i32 noundef %i.ab) #16
  %i.ak = load ptr, ptr %4, align 8
  call void @_ZN2v87tracing11TracedValue10SetIntegerEPKci(ptr noundef nonnull align 8 dereferenceable(41) %i.ak, ptr noundef nonnull @.str.21, i32 noundef 25000000) #16
  %i.al = load atomic volatile i64, ptr @_ZZN2v88internal6Script25TraceScriptRundownSourcesEvE28trace_event_unique_atomic240 acquire, align 8 ; 2 uses
  %i.am = inttoptr i64 %i.al to ptr
  %.not48 = icmp eq i64 %i.al, 0
  br i1 %.not48, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.an = call noundef ptr @_ZN2v88internal7tracing16TraceEventHelper20GetTracingControllerEv() #16 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = call noundef ptr %i.aq(ptr noundef nonnull align 8 dereferenceable(8) %i.an, ptr noundef nonnull @.str.22) #16 ; 2 uses
  %i.as = ptrtoint ptr %i.ar to i64
  store atomic volatile i64 %i.as, ptr @_ZZN2v88internal6Script25TraceScriptRundownSourcesEvE28trace_event_unique_atomic240 release, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.036 = phi ptr [ %i.am, %bb.c ], [ %i.ar, %bb.d ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  %i.at = load atomic volatile i8, ptr %.036 monotonic, align 1
  %i.au = and i8 %i.at, 5
  %.not49 = icmp eq i8 %i.au, 0
  br i1 %.not49, label %_ZN2v88internal7tracing12ScopedTracerD2Ev.exit, label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EE5resetEPS1_.exit

_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EE5resetEPS1_.exit: ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @.str.19, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  %i.av = load i64, ptr %4, align 8               ; 2 uses
  store ptr null, ptr %4, align 8
  store i8 8, ptr %i.b, align 1
  store i64 %i.av, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %i.aw = inttoptr i64 %i.av to ptr
  store ptr %i.aw, ptr %3, align 16
  %i.ax = call noundef ptr @_ZN2v88internal7tracing16TraceEventHelper20GetTracingControllerEv() #16 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = call noundef i64 %i.ba(ptr noundef nonnull align 8 dereferenceable(8) %i.ax, i8 noundef signext 88, ptr noundef nonnull %.036, ptr noundef nonnull @.str.23, ptr noundef null, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %3, i32 noundef 0) #16, !inline_history !43
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8            ; 3 uses
  %.not.i60 = icmp eq ptr %i.bd, null
  br i1 %.not.i60, label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i

_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i: ; preds = %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EE5resetEPS1_.exit
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8
  call void %i.bg(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bd) #16, !inline_history !44
  br label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EE5resetEPS1_.exit, %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i
  %i.bh = load ptr, ptr %3, align 16              ; 3 uses
  %.not.i60.1 = icmp eq ptr %i.bh, null
  br i1 %.not.i60.1, label %bb.f, label %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i.1

_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i.1: ; preds = %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8
  call void %i.bk(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bh) #16, !inline_history !44
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i.1
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bl = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr %.036, ptr %i.bl, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr @.str.23, ptr %i.bm, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 %i.bb, ptr %i.bn, align 8
  store ptr %i.bl, ptr %5, align 8
  %i.bo = load atomic volatile i8, ptr %.036 monotonic, align 1
  %.not1.i = icmp eq i8 %i.bo, 0
  br i1 %.not1.i, label %_ZN2v88internal7tracing12ScopedTracerD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bp = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bq = call noundef ptr @_ZN2v88internal7tracing16TraceEventHelper20GetTracingControllerEv() #16 ; 2 uses
  %i.br = load ptr, ptr %i.bp, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.bv = load i64, ptr %i.bu, align 8
  %i.bw = load ptr, ptr %i.bq, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 40
  %i.by = load ptr, ptr %i.bx, align 8
  call void %i.by(ptr noundef nonnull align 8 dereferenceable(8) %i.bq, ptr noundef %i.br, ptr noundef %i.bt, i64 noundef %i.bv) #16, !inline_history !45
  br label %_ZN2v88internal7tracing12ScopedTracerD2Ev.exit

_ZN2v88internal7tracing12ScopedTracerD2Ev.exit:   ; preds = %bb.e, %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  %i.bz = load ptr, ptr %4, align 8               ; 3 uses
  %.not.i62 = icmp eq ptr %i.bz, null
  br i1 %.not.i62, label %_ZNSt10unique_ptrIN2v87tracing11TracedValueESt14default_deleteIS2_EED2Ev.exit64, label %_ZNKSt14default_deleteIN2v87tracing11TracedValueEEclEPS2_.exit.i63

_ZNKSt14default_deleteIN2v87tracing11TracedValueEEclEPS2_.exit.i63: ; preds = %_ZN2v88internal7tracing12ScopedTracerD2Ev.exit
  %i.ca = load ptr, ptr %i.bz, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8
  call void %i.cc(ptr noundef nonnull align 8 dereferenceable(41) %i.bz) #16, !inline_history !46
  br label %_ZNSt10unique_ptrIN2v87tracing11TracedValueESt14default_deleteIS2_EED2Ev.exit64

_ZNSt10unique_ptrIN2v87tracing11TracedValueESt14default_deleteIS2_EED2Ev.exit64: ; preds = %_ZN2v88internal7tracing12ScopedTracerD2Ev.exit, %_ZNKSt14default_deleteIN2v87tracing11TracedValueEEclEPS2_.exit.i63
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %bb.aa

bb.h:                                             ; preds = %bb.b
  %i.cd = icmp slt i32 %i.ab, 1000001
  br i1 %i.cd, label %bb.i, label %bb.n

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  call void @_ZN2v87tracing11TracedValue6CreateEv(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.470") align 8 %6) #16
  %i.ce = load ptr, ptr %6, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.k, i64 59496
  %i.cg = load ptr, ptr %i.cf, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 248
  %i.ci = load i64, ptr %i.ch, align 8
  call void @_ZN2v87tracing11TracedValue18SetUnsignedIntegerEPKcm(ptr noundef nonnull align 8 dereferenceable(41) %i.ce, ptr noundef nonnull @.str.10, i64 noundef %i.ci) #16
  %i.cj = load ptr, ptr %6, align 8
  call void @_ZN2v87tracing11TracedValue10SetIntegerEPKci(ptr noundef nonnull align 8 dereferenceable(41) %i.cj, ptr noundef nonnull @.str.8, i32 noundef %i.z) #16
  %i.ck = load ptr, ptr %6, align 8
  call void @_ZN2v87tracing11TracedValue10SetIntegerEPKci(ptr noundef nonnull align 8 dereferenceable(41) %i.ck, ptr noundef nonnull @.str.20, i32 noundef %i.ab) #16
  %i.cl = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  call void @_ZN2v88internal6String9ToCStringEPm(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.514") align 8 %7, ptr noundef nonnull align 4 dereferenceable(16) %i.p, ptr noundef null) #16
  %i.cm = load ptr, ptr %7, align 8
  call void @_ZN2v87tracing11TracedValue9SetStringEPKcS3_(ptr noundef nonnull align 8 dereferenceable(41) %i.cl, ptr noundef nonnull @.str.24, ptr noundef %i.cm) #16
  %i.cn = load ptr, ptr %7, align 8               ; 2 uses
  %.not.i65 = icmp eq ptr %i.cn, null
  br i1 %.not.i65, label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i: ; preds = %bb.i
  call void @_ZdaPv(ptr noundef nonnull %i.cn) #17
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit: ; preds = %bb.i, %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  %i.co = load atomic volatile i64, ptr @_ZZN2v88internal6Script25TraceScriptRundownSourcesEvE28trace_event_unique_atomic249 acquire, align 8 ; 2 uses
  %i.cp = inttoptr i64 %i.co to ptr
  %.not46 = icmp eq i64 %i.co, 0
  br i1 %.not46, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit
  %i.cq = call noundef ptr @_ZN2v88internal7tracing16TraceEventHelper20GetTracingControllerEv() #16 ; 2 uses
  %i.cr = load ptr, ptr %i.cq, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  %i.ct = load ptr, ptr %i.cs, align 8
  %i.cu = call noundef ptr %i.ct(ptr noundef nonnull align 8 dereferenceable(8) %i.cq, ptr noundef nonnull @.str.22) #16 ; 2 uses
  %i.cv = ptrtoint ptr %i.cu to i64
  store atomic volatile i64 %i.cv, ptr @_ZZN2v88internal6Script25TraceScriptRundownSourcesEvE28trace_event_unique_atomic249 release, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit
  %.037 = phi ptr [ %i.cp, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit ], [ %i.cu, %bb.j ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  %i.cw = load atomic volatile i8, ptr %.037 monotonic, align 1
  %i.cx = and i8 %i.cw, 5
  %.not47 = icmp eq i8 %i.cx, 0
  br i1 %.not47, label %_ZN2v88internal7tracing12ScopedTracerD2Ev.exit77, label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EE5resetEPS1_.exit71

_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EE5resetEPS1_.exit71: ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr @.str.19, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #16
  %i.cy = load i64, ptr %6, align 8               ; 2 uses
  store ptr null, ptr %6, align 8
  store i8 8, ptr %i.e, align 1
  store i64 %i.cy, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %i.cz = inttoptr i64 %i.cy to ptr
  store ptr %i.cz, ptr %2, align 16
  %i.da = call noundef ptr @_ZN2v88internal7tracing16TraceEventHelper20GetTracingControllerEv() #16 ; 2 uses
  %i.db = load ptr, ptr %i.da, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 24
  %i.dd = load ptr, ptr %i.dc, align 8
  %i.de = call noundef i64 %i.dd(ptr noundef nonnull align 8 dereferenceable(8) %i.da, i8 noundef signext 88, ptr noundef nonnull %.037, ptr noundef nonnull @.str.18, ptr noundef null, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef nonnull %2, i32 noundef 0) #16, !inline_history !43
  %i.df = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dg = load ptr, ptr %i.df, align 8            ; 3 uses
  %.not.i72 = icmp eq ptr %i.dg, null
  br i1 %.not.i72, label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit74, label %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i73

_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i73: ; preds = %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EE5resetEPS1_.exit71
  %i.dh = load ptr, ptr %i.dg, align 8
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.dj = load ptr, ptr %i.di, align 8
  call void %i.dj(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.dg) #16, !inline_history !44
  br label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit74

_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit74: ; preds = %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EE5resetEPS1_.exit71, %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i73
  %i.dk = load ptr, ptr %2, align 16              ; 3 uses
  %.not.i72.1 = icmp eq ptr %i.dk, null
  br i1 %.not.i72.1, label %bb.l, label %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i73.1

_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i73.1: ; preds = %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit74
  %i.dl = load ptr, ptr %i.dk, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %i.dn = load ptr, ptr %i.dm, align 8
  call void %i.dn(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.dk) #16, !inline_history !44
  br label %bb.l

bb.l:                                             ; preds = %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit74, %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i73.1
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.do = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store ptr %.037, ptr %i.do, align 8
  %i.dp = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr @.str.18, ptr %i.dp, align 8
  %i.dq = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i64 %i.de, ptr %i.dq, align 8
  store ptr %i.do, ptr %8, align 8
  %i.dr = load atomic volatile i8, ptr %.037 monotonic, align 1
  %.not1.i76 = icmp eq i8 %i.dr, 0
  br i1 %.not1.i76, label %_ZN2v88internal7tracing12ScopedTracerD2Ev.exit77, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ds = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.dt = call noundef ptr @_ZN2v88internal7tracing16TraceEventHelper20GetTracingControllerEv() #16 ; 2 uses
  %i.du = load ptr, ptr %i.ds, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.dw = load ptr, ptr %i.dv, align 8
  %i.dx = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.dy = load i64, ptr %i.dx, align 8
  %i.dz = load ptr, ptr %i.dt, align 8
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 40
  %i.eb = load ptr, ptr %i.ea, align 8
  call void %i.eb(ptr noundef nonnull align 8 dereferenceable(8) %i.dt, ptr noundef %i.du, ptr noundef %i.dw, i64 noundef %i.dy) #16, !inline_history !45
  br label %_ZN2v88internal7tracing12ScopedTracerD2Ev.exit77

_ZN2v88internal7tracing12ScopedTracerD2Ev.exit77: ; preds = %bb.k, %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  %i.ec = load ptr, ptr %6, align 8               ; 3 uses
  %.not.i78 = icmp eq ptr %i.ec, null
  br i1 %.not.i78, label %_ZNSt10unique_ptrIN2v87tracing11TracedValueESt14default_deleteIS2_EED2Ev.exit80, label %_ZNKSt14default_deleteIN2v87tracing11TracedValueEEclEPS2_.exit.i79

_ZNKSt14default_deleteIN2v87tracing11TracedValueEEclEPS2_.exit.i79: ; preds = %_ZN2v88internal7tracing12ScopedTracerD2Ev.exit77
  %i.ed = load ptr, ptr %i.ec, align 8
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  %i.ef = load ptr, ptr %i.ee, align 8
  call void %i.ef(ptr noundef nonnull align 8 dereferenceable(41) %i.ec) #16, !inline_history !46
  br label %_ZNSt10unique_ptrIN2v87tracing11TracedValueESt14default_deleteIS2_EED2Ev.exit80

_ZNSt10unique_ptrIN2v87tracing11TracedValueESt14default_deleteIS2_EED2Ev.exit80: ; preds = %_ZN2v88internal7tracing12ScopedTracerD2Ev.exit77, %_ZNKSt14default_deleteIN2v87tracing11TracedValueEEclEPS2_.exit.i79
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  br label %bb.aa

bb.n:                                             ; preds = %bb.h
  %i.eg = udiv i32 %i.ab, 1000000
  %i.eh = add nuw nsw i32 %i.eg, 1                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #16
  call void @_ZN2v88internal6String9ToCStringEPm(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.514") align 8 %9, ptr noundef nonnull align 4 dereferenceable(16) %i.p, ptr noundef null) #16
  %i.ei = getelementptr inbounds nuw i8, ptr %i.k, i64 59496
  %i.ej = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 5 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.el = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 3 uses
  %i.em = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %12, i64 24 ; 2 uses
  %i.eo = zext nneg i32 %i.ab to i64
  %wide.trip.count = zext nneg i32 %i.eh to i64
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.p

bb.o:                                             ; preds = %_ZNSt10unique_ptrIN2v87tracing11TracedValueESt14default_deleteIS2_EED2Ev.exit98
  %i.eq = load ptr, ptr %9, align 8               ; 2 uses
  %.not.i81 = icmp eq ptr %i.eq, null
  br i1 %.not.i81, label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit83, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i82

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i82: ; preds = %bb.o
  call void @_ZdaPv(ptr noundef nonnull %i.eq) #17
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit83

_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit83: ; preds = %bb.o, %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i82
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  br label %bb.aa

bb.p:                                             ; preds = %bb.n, %_ZNSt10unique_ptrIN2v87tracing11TracedValueESt14default_deleteIS2_EED2Ev.exit98
  %indvars.iv = phi i64 [ 0, %bb.n ], [ %indvars.iv.next, %_ZNSt10unique_ptrIN2v87tracing11TracedValueESt14default_deleteIS2_EED2Ev.exit98 ] ; 3 uses
  %i.er = mul nuw nsw i64 %indvars.iv, 1000000    ; 4 uses
  %i.es = trunc i64 %i.er to i32
  %i.et = add i32 %i.es, 1000000
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.ab, i32 %i.et)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #16
  call void @_ZN2v87tracing11TracedValue6CreateEv(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.470") align 8 %10) #16
  %i.eu = load ptr, ptr %10, align 8
  %i.ev = trunc nuw nsw i64 %indvars.iv to i32
  call void @_ZN2v87tracing11TracedValue10SetIntegerEPKci(ptr noundef nonnull align 8 dereferenceable(41) %i.eu, ptr noundef nonnull @.str.25, i32 noundef %i.ev) #16
  %i.ew = load ptr, ptr %10, align 8
  call void @_ZN2v87tracing11TracedValue10SetIntegerEPKci(ptr noundef nonnull align 8 dereferenceable(41) %i.ew, ptr noundef nonnull @.str.26, i32 noundef %i.eh) #16
  %i.ex = load ptr, ptr %10, align 8
  %i.ey = load ptr, ptr %i.ei, align 8
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 248
  %i.fa = load i64, ptr %i.ez, align 8
  call void @_ZN2v87tracing11TracedValue18SetUnsignedIntegerEPKcm(ptr noundef nonnull align 8 dereferenceable(41) %i.ex, ptr noundef nonnull @.str.10, i64 noundef %i.fa) #16
  %i.fb = load ptr, ptr %10, align 8
  call void @_ZN2v87tracing11TracedValue10SetIntegerEPKci(ptr noundef nonnull align 8 dereferenceable(41) %i.fb, ptr noundef nonnull @.str.8, i32 noundef %i.z) #16
  %i.fc = load ptr, ptr %10, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #16
  %i.fd = load ptr, ptr %9, align 8               ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 %i.er ; 2 uses
  %i.ff = trunc nuw i64 %i.er to i32
  %i.fg = sub nsw i32 %.sroa.speculated, %i.ff    ; 4 uses
  %i.fh = sext i32 %i.fg to i64                   ; 5 uses
  store ptr %i.ej, ptr %11, align 8
  %i.fi = icmp eq ptr %i.fd, null
  %i.fj = icmp ne i64 %i.er, %i.eo
  %or.cond.i = and i1 %i.fj, %i.fi
  br i1 %or.cond.i, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.30) #15
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.fk = icmp ugt i32 %i.fg, 15
  br i1 %i.fk, label %bb.s, label %._crit_edge.i.i

bb.s:                                             ; preds = %bb.r
  %i.fl = icmp slt i32 %i.fg, 0
  br i1 %i.fl, label %bb.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i

bb.t:                                             ; preds = %bb.s
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.31) #15
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.s
  %i.fm = add nuw nsw i64 %i.fh, 1
  %i.fn = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fm) #18 ; 2 uses
  store ptr %i.fn, ptr %11, align 8
  store i64 %i.fh, ptr %i.ej, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %bb.r
  %i.fo = phi ptr [ %i.fn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i ], [ %i.ej, %bb.r ] ; 3 uses
  switch i32 %i.fg, label %bb.v [
    i32 1, label %bb.u
    i32 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit
  ]

bb.u:                                             ; preds = %._crit_edge.i.i
  %i.fp = load i8, ptr %i.fe, align 1
  store i8 %i.fp, ptr %i.fo, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit

bb.v:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fo, ptr align 1 %i.fe, i64 %i.fh, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit: ; preds = %._crit_edge.i.i, %bb.u, %bb.v
  store i64 %i.fh, ptr %i.ek, align 8
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fo, i64 %i.fh
  store i8 0, ptr %i.fq, align 1
  %i.fr = load ptr, ptr %11, align 8
end_hunk_0
