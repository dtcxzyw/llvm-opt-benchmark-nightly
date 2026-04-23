inline.NumInlined: 1599
inline.NumDeleted: 644
begin_hunk_0_@_ZN2v88internal12_GLOBAL__N_119JSObjectWalkVisitorINS1_24DeprecationUpdateContextEE13StructureWalkENS0_6HandleINS0_8JSObjectEEE:bb.a
  %i.cx = and i64 %i.cq, 16383
  %i.cy = add i64 %i.bm, %i.cx
  %.pre528.a = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre528.a, i64 10624
  %.pre529 = load ptr, ptr %.phi.trans.insert, align 8
  br label %_ZNK2v88internal8JSObject17RawFastPropertyAtENS0_16PtrComprCageBaseENS0_10FieldIndexE.exit

bb.l:                                             ; preds = %_ZN2v88internal10FieldIndex16ForPropertyIndexENS0_6TaggedINS0_3MapEEEiNS0_14RepresentationE.exit
end_hunk_0
begin_hunk_1_@_ZN2v88internal12_GLOBAL__N_119JSObjectWalkVisitorINS1_24DeprecationUpdateContextEE13StructureWalkENS0_6HandleINS0_8JSObjectEEE:bb.a
  %i.db = load i64, ptr %i.da, align 8            ; 3 uses
  %i.dc = and i64 %i.db, 1
  %i.dd = icmp eq i64 %i.dc, 0
  %.pre.i.i = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 10624
  %.pre11.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8 ; 3 uses
  br i1 %i.dd, label %.critedge.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
end_hunk_1
begin_hunk_2_@_ZN2v88internal12_GLOBAL__N_119JSObjectWalkVisitorINS1_24DeprecationUpdateContextEE13StructureWalkENS0_6HandleINS0_8JSObjectEEE:bb.a
  br label %_ZNK2v88internal8JSObject17RawFastPropertyAtENS0_16PtrComprCageBaseENS0_10FieldIndexE.exit

_ZNK2v88internal8JSObject17RawFastPropertyAtENS0_16PtrComprCageBaseENS0_10FieldIndexE.exit: ; preds = %bb.k, %_ZNK2v88internal10JSReceiver14property_arrayENS0_16PtrComprCageBaseE.exit.i
  %i.dn = phi ptr [ %.pre11.i.i, %_ZNK2v88internal10JSReceiver14property_arrayENS0_16PtrComprCageBaseE.exit.i ], [ %.pre529, %bb.k ]
  %.sink9.i = phi i64 [ %i.dm, %_ZNK2v88internal10JSReceiver14property_arrayENS0_16PtrComprCageBaseE.exit.i ], [ %i.cy, %bb.k ]
  %i.do = inttoptr i64 %.sink9.i to ptr
  %i.dp = load atomic volatile i64, ptr %i.do monotonic, align 8 ; 4 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dn, i64 416
  %i.dr = load i64, ptr %i.dq, align 8
  %i.ds = icmp ne i64 %i.dp, %i.dr
  %i.dt = trunc i64 %i.dp to i1
end_hunk_2
begin_hunk_3_@_ZN2v88internal12_GLOBAL__N_119JSObjectWalkVisitorINS1_24DeprecationUpdateContextEE13StructureWalkENS0_6HandleINS0_8JSObjectEEE:bb.a
  %i.fa = load atomic volatile i64, ptr %i.ez monotonic, align 8
  %i.fb = lshr i64 %i.fa, 32                      ; 2 uses
  %.not502510 = icmp eq i64 %i.fb, 0
  br i1 %.not502510, label %_ZNK2v88internal11MaybeHandleINS0_8JSObjectEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit208, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN2v88internal6HandleINS0_14NameDictionaryEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %.pre527 = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit189.thread
  %3 = phi ptr [ %4, %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit189.thread ], [ %.pre527, %.lr.ph.preheader ] ; 3 uses
  %.sroa.0285.0511 = phi i64 [ %i.gg, %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit189.thread ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.fc = load i64, ptr %.0.i.i, align 8
  %i.fd = add i64 %i.fc, -1
  %i.fe = inttoptr i64 %i.fd to ptr
end_hunk_3
begin_hunk_4_@_ZN2v88internal12_GLOBAL__N_119JSObjectWalkVisitorINS1_24DeprecationUpdateContextEE13StructureWalkENS0_6HandleINS0_8JSObjectEEE:bb.a
  %i.fh = ashr exact i64 %sext.i232, 29
  %i.fi = getelementptr inbounds i8, ptr %i.ff, i64 %i.fh
  %i.fj = load atomic volatile i64, ptr %i.fi monotonic, align 8 ; 4 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %3, i64 10624
  %i.fl = load ptr, ptr %i.fk, align 8
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 416
  %i.fn = load i64, ptr %i.fm, align 8
end_hunk_4
begin_hunk_5_@_ZN2v88internal12_GLOBAL__N_119JSObjectWalkVisitorINS1_24DeprecationUpdateContextEE13StructureWalkENS0_6HandleINS0_8JSObjectEEE:bb.a
  store i64 %i.fj, ptr %.0.i200, align 8
  %i.ge = tail call fastcc ptr @_ZN2v88internal12_GLOBAL__N_119JSObjectWalkVisitorINS1_24DeprecationUpdateContextEE22VisitElementOrPropertyENS0_12DirectHandleINS0_8JSObjectEEENS0_6HandleIS6_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr nonnull %.0.i200)
  %i.gf = icmp eq ptr %i.ge, null
  %.pre = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  br i1 %i.gf, label %_ZNK2v88internal11MaybeHandleINS0_8JSObjectEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit210.thread494, label %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit189.thread

_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit189.thread: ; preds = %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit201, %.lr.ph, %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit189
  %4 = phi ptr [ %.pre, %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit201 ], [ %3, %.lr.ph ], [ %3, %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit189 ]
  %i.gg = add nuw nsw i64 %.sroa.0285.0511, 1     ; 2 uses
  %.not502 = icmp eq i64 %i.gg, %i.fb
  br i1 %.not502, label %_ZNK2v88internal11MaybeHandleINS0_8JSObjectEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit208, label %.lr.ph
end_hunk_5
begin_hunk_6_@_ZN2v88internal12_GLOBAL__N_119JSObjectWalkVisitorINS1_24DeprecationUpdateContextEE13StructureWalkENS0_6HandleINS0_8JSObjectEEE:bb.a
  %i.ho = lshr i64 %i.hn, 32
  %i.hp = trunc nuw i64 %i.ho to i32
  %.not518 = icmp sgt i32 %i.hp, 0
  br i1 %.not518, label %.lr.ph520.preheader, label %_ZNK2v88internal11MaybeHandleINS0_8JSObjectEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit210.thread494

.lr.ph520.preheader:                              ; preds = %.preheader
  %.pre533 = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  br label %.lr.ph520

.lr.ph520:                                        ; preds = %.lr.ph520.preheader, %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit188.thread
  %i.hq = phi i64 [ %i.gy, %.lr.ph520.preheader ], [ %i.ir, %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit188.thread ] ; 2 uses
  %5 = phi ptr [ %.pre533, %.lr.ph520.preheader ], [ %6, %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit188.thread ] ; 3 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph520.preheader ], [ %indvars.iv.next, %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit188.thread ] ; 2 uses
  %i.hr = phi ptr [ %i.hh, %.lr.ph520.preheader ], [ %i.it, %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit188.thread ]
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 16
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %indvars.iv
  %i.hu = load atomic volatile i64, ptr %i.ht monotonic, align 8 ; 4 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %5, i64 10624
  %i.hw = load ptr, ptr %i.hv, align 8
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 104
  %i.hy = load i64, ptr %i.hx, align 8
end_hunk_6
begin_hunk_7_@_ZN2v88internal12_GLOBAL__N_119JSObjectWalkVisitorINS1_24DeprecationUpdateContextEE13StructureWalkENS0_6HandleINS0_8JSObjectEEE:bb.a
  br i1 %i.iq, label %_ZNK2v88internal11MaybeHandleINS0_8JSObjectEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit210.thread494, label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit199._ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit188.thread_crit_edge

_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit199._ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit188.thread_crit_edge: ; preds = %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit199
  %.pre532 = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %.pre534 = load i64, ptr %.0.i.i213, align 8
  br label %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit188.thread

_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit188.thread: ; preds = %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit199._ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit188.thread_crit_edge, %.lr.ph520, %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit188
  %i.ir = phi i64 [ %.pre534, %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit199._ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit188.thread_crit_edge ], [ %i.hq, %.lr.ph520 ], [ %i.hq, %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit188 ] ; 2 uses
  %6 = phi ptr [ %.pre532, %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit199._ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit188.thread_crit_edge ], [ %5, %.lr.ph520 ], [ %5, %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit188 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.is = add i64 %i.ir, -1
  %i.it = inttoptr i64 %i.is to ptr               ; 2 uses
end_hunk_7
begin_hunk_8_@_ZN2v88internal12_GLOBAL__N_119JSObjectWalkVisitorINS1_24DeprecationUpdateContextEE13StructureWalkENS0_6HandleINS0_8JSObjectEEE:bb.a
  %i.jk = load atomic volatile i64, ptr %i.jj monotonic, align 8
  %i.jl = lshr i64 %i.jk, 32                      ; 2 uses
  %.not504515 = icmp eq i64 %i.jl, 0
  br i1 %.not504515, label %_ZNK2v88internal11MaybeHandleINS0_8JSObjectEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit210.thread494, label %.lr.ph517.preheader

.lr.ph517.preheader:                              ; preds = %_ZN2v88internal6HandleINS0_16NumberDictionaryEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %.pre531 = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  br label %.lr.ph517

.lr.ph517:                                        ; preds = %.lr.ph517.preheader, %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit.thread
  %7 = phi ptr [ %8, %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit.thread ], [ %.pre531, %.lr.ph517.preheader ] ; 3 uses
  %.sroa.0249.0516 = phi i64 [ %i.kq, %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit.thread ], [ 0, %.lr.ph517.preheader ] ; 2 uses
  %i.jm = load i64, ptr %.0.i.i214, align 8
  %i.jn = add i64 %i.jm, -1
  %i.jo = inttoptr i64 %i.jn to ptr
end_hunk_8
begin_hunk_9_@_ZN2v88internal12_GLOBAL__N_119JSObjectWalkVisitorINS1_24DeprecationUpdateContextEE13StructureWalkENS0_6HandleINS0_8JSObjectEEE:bb.a
  %i.jr = ashr exact i64 %sext.i241, 29
  %i.js = getelementptr inbounds i8, ptr %i.jp, i64 %i.jr
  %i.jt = load atomic volatile i64, ptr %i.js monotonic, align 8 ; 4 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %7, i64 10624
  %i.jv = load ptr, ptr %i.ju, align 8
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 104
end_hunk_9
begin_hunk_10_@_ZN2v88internal12_GLOBAL__N_119JSObjectWalkVisitorINS1_24DeprecationUpdateContextEE13StructureWalkENS0_6HandleINS0_8JSObjectEEE:bb.a
  store i64 %i.jt, ptr %.0.i, align 8
  %i.ko = tail call fastcc ptr @_ZN2v88internal12_GLOBAL__N_119JSObjectWalkVisitorINS1_24DeprecationUpdateContextEE22VisitElementOrPropertyENS0_12DirectHandleINS0_8JSObjectEEENS0_6HandleIS6_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr nonnull %.0.i)
  %i.kp = icmp eq ptr %i.ko, null
  %.pre530 = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  br i1 %i.kp, label %_ZNK2v88internal11MaybeHandleINS0_8JSObjectEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit210.thread494, label %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit.thread

_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit.thread: ; preds = %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit, %.lr.ph517, %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit
  %8 = phi ptr [ %.pre530, %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit ], [ %7, %.lr.ph517 ], [ %7, %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit ]
  %i.kq = add nuw nsw i64 %.sroa.0249.0516, 1     ; 2 uses
  %.not504 = icmp eq i64 %i.kq, %i.jl
  br i1 %.not504, label %_ZNK2v88internal11MaybeHandleINS0_8JSObjectEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit210, label %.lr.ph517
end_hunk_10
begin_hunk_11_@_ZN2v88internal12_GLOBAL__N_119JSObjectWalkVisitorINS1_29AllocationSiteCreationContextEE13StructureWalkENS0_6HandleINS0_8JSObjectEEE:bb.a
  %i.cx = and i64 %i.cq, 16383
  %i.cy = add i64 %i.bm, %i.cx
  %.pre528.a = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre528.a, i64 10624
  %.pre529 = load ptr, ptr %.phi.trans.insert, align 8
  br label %_ZNK2v88internal8JSObject17RawFastPropertyAtENS0_16PtrComprCageBaseENS0_10FieldIndexE.exit

bb.l:                                             ; preds = %_ZN2v88internal10FieldIndex16ForPropertyIndexENS0_6TaggedINS0_3MapEEEiNS0_14RepresentationE.exit
end_hunk_11
begin_hunk_12_@_ZN2v88internal12_GLOBAL__N_119JSObjectWalkVisitorINS1_29AllocationSiteCreationContextEE13StructureWalkENS0_6HandleINS0_8JSObjectEEE:bb.a
  %i.db = load i64, ptr %i.da, align 8            ; 3 uses
  %i.dc = and i64 %i.db, 1
  %i.dd = icmp eq i64 %i.dc, 0
  %.pre.i.i = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 10624
  %.pre11.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8 ; 3 uses
  br i1 %i.dd, label %.critedge.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
end_hunk_12
begin_hunk_13_@_ZN2v88internal12_GLOBAL__N_119JSObjectWalkVisitorINS1_29AllocationSiteCreationContextEE13StructureWalkENS0_6HandleINS0_8JSObjectEEE:bb.a
  br label %_ZNK2v88internal8JSObject17RawFastPropertyAtENS0_16PtrComprCageBaseENS0_10FieldIndexE.exit

_ZNK2v88internal8JSObject17RawFastPropertyAtENS0_16PtrComprCageBaseENS0_10FieldIndexE.exit: ; preds = %bb.k, %_ZNK2v88internal10JSReceiver14property_arrayENS0_16PtrComprCageBaseE.exit.i
  %i.dn = phi ptr [ %.pre11.i.i, %_ZNK2v88internal10JSReceiver14property_arrayENS0_16PtrComprCageBaseE.exit.i ], [ %.pre529, %bb.k ]
  %.sink9.i = phi i64 [ %i.dm, %_ZNK2v88internal10JSReceiver14property_arrayENS0_16PtrComprCageBaseE.exit.i ], [ %i.cy, %bb.k ]
  %i.do = inttoptr i64 %.sink9.i to ptr
  %i.dp = load atomic volatile i64, ptr %i.do monotonic, align 8 ; 4 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dn, i64 416
  %i.dr = load i64, ptr %i.dq, align 8
  %i.ds = icmp ne i64 %i.dp, %i.dr
  %i.dt = trunc i64 %i.dp to i1
end_hunk_13
begin_hunk_14_@_ZN2v88internal12_GLOBAL__N_119JSObjectWalkVisitorINS1_29AllocationSiteCreationContextEE13StructureWalkENS0_6HandleINS0_8JSObjectEEE:bb.a
  %i.fa = load atomic volatile i64, ptr %i.ez monotonic, align 8
  %i.fb = lshr i64 %i.fa, 32                      ; 2 uses
  %.not502510 = icmp eq i64 %i.fb, 0
  br i1 %.not502510, label %_ZNK2v88internal11MaybeHandleINS0_8JSObjectEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit208, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN2v88internal6HandleINS0_14NameDictionaryEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %.pre527 = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit189.thread
  %3 = phi ptr [ %4, %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit189.thread ], [ %.pre527, %.lr.ph.preheader ] ; 3 uses
  %.sroa.0285.0511 = phi i64 [ %i.gg, %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit189.thread ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.fc = load i64, ptr %.0.i.i, align 8
  %i.fd = add i64 %i.fc, -1
  %i.fe = inttoptr i64 %i.fd to ptr
end_hunk_14
begin_hunk_15_@_ZN2v88internal12_GLOBAL__N_119JSObjectWalkVisitorINS1_29AllocationSiteCreationContextEE13StructureWalkENS0_6HandleINS0_8JSObjectEEE:bb.a
  %i.fh = ashr exact i64 %sext.i232, 29
  %i.fi = getelementptr inbounds i8, ptr %i.ff, i64 %i.fh
  %i.fj = load atomic volatile i64, ptr %i.fi monotonic, align 8 ; 4 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %3, i64 10624
  %i.fl = load ptr, ptr %i.fk, align 8
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 416
  %i.fn = load i64, ptr %i.fm, align 8
end_hunk_15
begin_hunk_16_@_ZN2v88internal12_GLOBAL__N_119JSObjectWalkVisitorINS1_29AllocationSiteCreationContextEE13StructureWalkENS0_6HandleINS0_8JSObjectEEE:bb.a
  store i64 %i.fj, ptr %.0.i200, align 8
  %i.ge = tail call fastcc ptr @_ZN2v88internal12_GLOBAL__N_119JSObjectWalkVisitorINS1_29AllocationSiteCreationContextEE22VisitElementOrPropertyENS0_12DirectHandleINS0_8JSObjectEEENS0_6HandleIS6_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr nonnull %.0.i200)
  %i.gf = icmp eq ptr %i.ge, null
  %.pre = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  br i1 %i.gf, label %_ZNK2v88internal11MaybeHandleINS0_8JSObjectEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit210.thread494, label %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit189.thread

_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit189.thread: ; preds = %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit201, %.lr.ph, %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit189
  %4 = phi ptr [ %.pre, %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit201 ], [ %3, %.lr.ph ], [ %3, %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit189 ]
  %i.gg = add nuw nsw i64 %.sroa.0285.0511, 1     ; 2 uses
  %.not502 = icmp eq i64 %i.gg, %i.fb
  br i1 %.not502, label %_ZNK2v88internal11MaybeHandleINS0_8JSObjectEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit208, label %.lr.ph
end_hunk_16
begin_hunk_17_@_ZN2v88internal12_GLOBAL__N_119JSObjectWalkVisitorINS1_29AllocationSiteCreationContextEE13StructureWalkENS0_6HandleINS0_8JSObjectEEE:bb.a
  %i.ho = lshr i64 %i.hn, 32
  %i.hp = trunc nuw i64 %i.ho to i32
  %.not518 = icmp sgt i32 %i.hp, 0
  br i1 %.not518, label %.lr.ph520.preheader, label %_ZNK2v88internal11MaybeHandleINS0_8JSObjectEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit210.thread494

.lr.ph520.preheader:                              ; preds = %.preheader
  %.pre533 = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  br label %.lr.ph520

.lr.ph520:                                        ; preds = %.lr.ph520.preheader, %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit188.thread
  %i.hq = phi i64 [ %i.gy, %.lr.ph520.preheader ], [ %i.ir, %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit188.thread ] ; 2 uses
  %5 = phi ptr [ %.pre533, %.lr.ph520.preheader ], [ %6, %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit188.thread ] ; 3 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph520.preheader ], [ %indvars.iv.next, %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit188.thread ] ; 2 uses
  %i.hr = phi ptr [ %i.hh, %.lr.ph520.preheader ], [ %i.it, %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit188.thread ]
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 16
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %indvars.iv
  %i.hu = load atomic volatile i64, ptr %i.ht monotonic, align 8 ; 4 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %5, i64 10624
  %i.hw = load ptr, ptr %i.hv, align 8
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 104
  %i.hy = load i64, ptr %i.hx, align 8
end_hunk_17
begin_hunk_18_@_ZN2v88internal12_GLOBAL__N_119JSObjectWalkVisitorINS1_29AllocationSiteCreationContextEE13StructureWalkENS0_6HandleINS0_8JSObjectEEE:bb.a
  br i1 %i.iq, label %_ZNK2v88internal11MaybeHandleINS0_8JSObjectEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit210.thread494, label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit199._ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit188.thread_crit_edge

_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit199._ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit188.thread_crit_edge: ; preds = %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit199
  %.pre532 = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %.pre534 = load i64, ptr %.0.i.i213, align 8
  br label %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit188.thread

_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit188.thread: ; preds = %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit199._ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit188.thread_crit_edge, %.lr.ph520, %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit188
  %i.ir = phi i64 [ %.pre534, %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit199._ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit188.thread_crit_edge ], [ %i.hq, %.lr.ph520 ], [ %i.hq, %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit188 ] ; 2 uses
  %6 = phi ptr [ %.pre532, %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit199._ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit188.thread_crit_edge ], [ %5, %.lr.ph520 ], [ %5, %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit188 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.is = add i64 %i.ir, -1
  %i.it = inttoptr i64 %i.is to ptr               ; 2 uses
end_hunk_18
begin_hunk_19_@_ZN2v88internal12_GLOBAL__N_119JSObjectWalkVisitorINS1_29AllocationSiteCreationContextEE13StructureWalkENS0_6HandleINS0_8JSObjectEEE:bb.a
  %i.jk = load atomic volatile i64, ptr %i.jj monotonic, align 8
  %i.jl = lshr i64 %i.jk, 32                      ; 2 uses
  %.not504515 = icmp eq i64 %i.jl, 0
  br i1 %.not504515, label %_ZNK2v88internal11MaybeHandleINS0_8JSObjectEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit210.thread494, label %.lr.ph517.preheader

.lr.ph517.preheader:                              ; preds = %_ZN2v88internal6HandleINS0_16NumberDictionaryEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %.pre531 = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  br label %.lr.ph517

.lr.ph517:                                        ; preds = %.lr.ph517.preheader, %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit.thread
  %7 = phi ptr [ %8, %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit.thread ], [ %.pre531, %.lr.ph517.preheader ] ; 3 uses
  %.sroa.0249.0516 = phi i64 [ %i.kq, %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit.thread ], [ 0, %.lr.ph517.preheader ] ; 2 uses
  %i.jm = load i64, ptr %.0.i.i214, align 8
  %i.jn = add i64 %i.jm, -1
  %i.jo = inttoptr i64 %i.jn to ptr
end_hunk_19
begin_hunk_20_@_ZN2v88internal12_GLOBAL__N_119JSObjectWalkVisitorINS1_29AllocationSiteCreationContextEE13StructureWalkENS0_6HandleINS0_8JSObjectEEE:bb.a
  %i.jr = ashr exact i64 %sext.i241, 29
  %i.js = getelementptr inbounds i8, ptr %i.jp, i64 %i.jr
  %i.jt = load atomic volatile i64, ptr %i.js monotonic, align 8 ; 4 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %7, i64 10624
  %i.jv = load ptr, ptr %i.ju, align 8
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 104
end_hunk_20
begin_hunk_21_@_ZN2v88internal12_GLOBAL__N_119JSObjectWalkVisitorINS1_29AllocationSiteCreationContextEE13StructureWalkENS0_6HandleINS0_8JSObjectEEE:bb.a
  store i64 %i.jt, ptr %.0.i, align 8
  %i.ko = tail call fastcc ptr @_ZN2v88internal12_GLOBAL__N_119JSObjectWalkVisitorINS1_29AllocationSiteCreationContextEE22VisitElementOrPropertyENS0_12DirectHandleINS0_8JSObjectEEENS0_6HandleIS6_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr nonnull %.0.i)
  %i.kp = icmp eq ptr %i.ko, null
  %.pre530 = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  br i1 %i.kp, label %_ZNK2v88internal11MaybeHandleINS0_8JSObjectEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit210.thread494, label %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit.thread

_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit.thread: ; preds = %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit, %.lr.ph517, %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit
  %8 = phi ptr [ %.pre530, %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit ], [ %7, %.lr.ph517 ], [ %7, %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit ]
  %i.kq = add nuw nsw i64 %.sroa.0249.0516, 1     ; 2 uses
  %.not504 = icmp eq i64 %i.kq, %i.jl
  br i1 %.not504, label %_ZNK2v88internal11MaybeHandleINS0_8JSObjectEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit210, label %.lr.ph517
end_hunk_21
begin_hunk_22_@_ZN2v88internal12_GLOBAL__N_119JSObjectWalkVisitorINS0_26AllocationSiteUsageContextEE13StructureWalkENS0_6HandleINS0_8JSObjectEEE:bb.a
  %i.eb = and i64 %i.dz, 16383
  %i.ec = add i64 %i.cp, %i.eb
  %.pre = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 10624
  %.pre591 = load ptr, ptr %.phi.trans.insert, align 8
  br label %_ZNK2v88internal8JSObject17RawFastPropertyAtENS0_16PtrComprCageBaseENS0_10FieldIndexE.exit

bb.q:                                             ; preds = %_ZN2v88internal10FieldIndex16ForPropertyIndexENS0_6TaggedINS0_3MapEEEiNS0_14RepresentationE.exit
end_hunk_22
begin_hunk_23_@_ZN2v88internal12_GLOBAL__N_119JSObjectWalkVisitorINS0_26AllocationSiteUsageContextEE13StructureWalkENS0_6HandleINS0_8JSObjectEEE:bb.a
  %i.ef = load i64, ptr %i.ee, align 8            ; 3 uses
  %i.eg = and i64 %i.ef, 1
  %i.eh = icmp eq i64 %i.eg, 0
  %.pre.i.i = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 10624
  %.pre11.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8 ; 3 uses
  br i1 %i.eh, label %.critedge.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
end_hunk_23
begin_hunk_24_@_ZN2v88internal12_GLOBAL__N_119JSObjectWalkVisitorINS0_26AllocationSiteUsageContextEE13StructureWalkENS0_6HandleINS0_8JSObjectEEE:bb.a
  br label %_ZNK2v88internal8JSObject17RawFastPropertyAtENS0_16PtrComprCageBaseENS0_10FieldIndexE.exit

_ZNK2v88internal8JSObject17RawFastPropertyAtENS0_16PtrComprCageBaseENS0_10FieldIndexE.exit: ; preds = %bb.p, %_ZNK2v88internal10JSReceiver14property_arrayENS0_16PtrComprCageBaseE.exit.i
  %i.er = phi ptr [ %.pre11.i.i, %_ZNK2v88internal10JSReceiver14property_arrayENS0_16PtrComprCageBaseE.exit.i ], [ %.pre591, %bb.p ]
  %.sink9.i = phi i64 [ %i.eq, %_ZNK2v88internal10JSReceiver14property_arrayENS0_16PtrComprCageBaseE.exit.i ], [ %i.ec, %bb.p ]
  %i.es = inttoptr i64 %.sink9.i to ptr
  %i.et = load atomic volatile i64, ptr %i.es monotonic, align 8 ; 5 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.er, i64 416
  %i.ev = load i64, ptr %i.eu, align 8
  %i.ew = icmp eq i64 %i.et, %i.ev
  br i1 %i.ew, label %bb.w, label %bb.s
end_hunk_24
