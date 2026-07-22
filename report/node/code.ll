inline.NumInlined: 578
inline.NumDeleted: 345
begin_hunk_0_@_ZN2v88internal15JSDispatchTable17SetTieringRequestENS_4base11StrongAliasINS0_24JSDispatchHandleAliasTagEjEENS0_14TieringBuiltinEPNS0_7IsolateE:bb.a
  %i.e = trunc nuw i8 %i.d to i1
  %or.cond = select i1 %.not, i1 true, i1 %i.e
  br i1 %or.cond, label %bb.b, label %_ZN2v88internal19RwxMemoryWriteScopeC2EPKc.exit

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal15ThreadIsolation13trusted_data_E, i64 8), align 8 ; 2 uses
  %.not8 = icmp eq i32 %i.f, -1
  br i1 %.not8, label %_ZN2v88internal19RwxMemoryWriteScopeC2EPKc.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN2v84base19MemoryProtectionKey20SetPermissionsForKeyEiNS1_10PermissionE(i32 noundef %i.f, i32 noundef 0) #7
  br label %_ZN2v88internal19RwxMemoryWriteScopeC2EPKc.exit

_ZN2v88internal19RwxMemoryWriteScopeC2EPKc.exit:  ; preds = %bb.a, %bb.c, %bb.b
  %i.g = load ptr, ptr %0, align 8
  %i.h = zext nneg i32 %i.a to i64
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 21040
  %i.k = zext i32 %2 to i64
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.k
  %i.m = load i64, ptr %i.l, align 8
  store atomic i64 %i.m, ptr %i.i monotonic, align 8
  %i.n = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 216), align 8, !range !5, !noundef !6
  %i.o = trunc nuw i8 %i.n to i1
  %.not5 = xor i1 %i.o, true
  %i.p = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 219), align 1, !range !5
  %i.q = trunc nuw i8 %i.p to i1
  %or.cond7 = select i1 %.not5, i1 true, i1 %i.q
  br i1 %or.cond7, label %bb.d, label %_ZN2v88internal19RwxMemoryWriteScopeD2Ev.exit

bb.d:                                             ; preds = %_ZN2v88internal19RwxMemoryWriteScopeC2EPKc.exit
  %i.r = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal15ThreadIsolation13trusted_data_E, i64 8), align 8 ; 2 uses
  %.not9 = icmp eq i32 %i.r, -1
  br i1 %.not9, label %_ZN2v88internal19RwxMemoryWriteScopeD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN2v84base19MemoryProtectionKey20SetPermissionsForKeyEiNS1_10PermissionE(i32 noundef %i.r, i32 noundef 2) #7
  br label %_ZN2v88internal19RwxMemoryWriteScopeD2Ev.exit

_ZN2v88internal19RwxMemoryWriteScopeD2Ev.exit:    ; preds = %_ZN2v88internal19RwxMemoryWriteScopeC2EPKc.exit, %bb.e, %bb.d
  ret void
}

declare void @_ZN2v88internal13RelocIteratorC1ENS0_6TaggedINS0_17InstructionStreamEEEi(ptr noundef nonnull align 8 dereferenceable(56), i64, i32 noundef) unnamed_addr #3

declare void @_ZN2v88internal11Deoptimizer7ZapCodeEmmRNS0_13RelocIteratorE(i64 noundef, i64 noundef, ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal4Code11DisassembleEPKcRSoPNS0_7IsolateEm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #2 align 2 {
bb.a:
  %5 = alloca %"class.v8::internal::CodeReference", align 8 ; 5 uses
  %6 = alloca %"class.v8::internal::SourcePositionTableIterator", align 8 ; 8 uses
  %7 = alloca %"class.v8::internal::SourcePositionTableIterator", align 8 ; 7 uses
  %8 = alloca %"class.v8::internal::MaglevSafepointTable", align 8 ; 4 uses
  %9 = alloca %"class.v8::internal::SafepointTable", align 8 ; 4 uses
  %10 = alloca %"class.v8::internal::HandlerTable", align 8 ; 5 uses
  %11 = alloca %"class.v8::internal::RelocIterator", align 8 ; 6 uses
  %12 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.523", align 8 ; 4 uses
  %13 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.523", align 8 ; 4 uses
  %14 = alloca %"class.v8::internal::EhFrameDisassembler", align 8 ; 5 uses
  %.sroa.0.0.copyload = load i64, ptr %0, align 8 ; 21 uses
  %i.a = add i64 %.sroa.0.0.copyload, 51
  %i.b = inttoptr i64 %i.a to ptr                 ; 10 uses
  %i.c = load atomic volatile i32, ptr %i.b monotonic, align 4
  %i.d = trunc i32 %i.c to i8
  %i.e = and i8 %i.d, 15                          ; 2 uses
  %i.f = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.9, i64 noundef 7) #7 ; 0 uses
  %i.g = tail call noundef ptr @_ZN2v88internal16CodeKindToStringENS0_8CodeKindE(i8 noundef zeroext %i.e) #7 ; 3 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %2, align 8
  %i.i = getelementptr i8, ptr %i.h, i64 -24
  %i.j = load i64, ptr %i.i, align 8
  %i.k = getelementptr inbounds i8, ptr %2, i64 %i.j ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.m = load i32, ptr %i.l, align 8
  %i.n = or i32 %i.m, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.k, i32 noundef %i.n) #7
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i

bb.c:                                             ; preds = %bb.a
  %i.o = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.g) #7
  %i.p = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %i.g, i64 noundef %i.o) #7 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %bb.c, %bb.b
  %i.q = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.10, i64 noundef 1) #7 ; 0 uses
  %i.r = icmp eq ptr %1, null
  br i1 %i.r, label %bb.d, label %.critedge.thread186.i

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i
  %i.s = add i64 %.sroa.0.0.copyload, 89
  %i.t = inttoptr i64 %i.s to ptr
  %i.u = load i16, ptr %i.t, align 2              ; 2 uses
  %.not192.i = icmp eq i16 %i.u, -1
  br i1 %.not192.i, label %.critedge.thread.i, label %.critedge.i

.critedge.i:                                      ; preds = %bb.d
  %i.v = sext i16 %i.u to i32
  %i.w = tail call noundef ptr @_ZN2v88internal8Builtins4nameENS0_7BuiltinE(i32 noundef %i.v) #7 ; 2 uses
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %.critedge.thread.i, label %.critedge.thread186.i

.critedge.thread186.i:                            ; preds = %.critedge.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i
  %.0189.i = phi ptr [ %i.w, %.critedge.i ], [ %1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i ] ; 3 uses
  %i.x = load i8, ptr %.0189.i, align 1
  %.not68.i = icmp eq i8 %i.x, 0
  br i1 %.not68.i, label %.critedge.thread.i, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit71.i

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit71.i: ; preds = %.critedge.thread186.i
  %i.y = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.11, i64 noundef 7) #7 ; 0 uses
  %i.z = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0189.i) #7
  %i.aa = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %.0189.i, i64 noundef %i.z) #7 ; 0 uses
  %i.ab = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.10, i64 noundef 1) #7 ; 0 uses
  br label %.critedge.thread.i

.critedge.thread.i:                               ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit71.i, %.critedge.thread186.i, %.critedge.i, %bb.d
  %i.ac = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.12, i64 noundef 11) #7 ; 0 uses
  %i.ad = load atomic volatile i32, ptr %i.b monotonic, align 4
  %i.ae = and i32 %i.ad, 16
  %.not193.i = icmp eq i32 %i.ae, 0
  br i1 %.not193.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.critedge.thread.i
  %i.af = load atomic volatile i32, ptr %i.b monotonic, align 4
  %i.ag = and i32 %i.af, 15
  %i.ah = icmp eq i32 %i.ag, 11
  %i.ai = icmp eq i8 %i.e, 10
  %i.aj = select i1 %i.ai, ptr @.str.15, ptr @.str.16
  %i.ak = select i1 %i.ah, ptr @.str.14, ptr %i.aj
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.critedge.thread.i
  %i.al = phi ptr [ %i.ak, %bb.e ], [ @.str.13, %.critedge.thread.i ] ; 2 uses
  %i.am = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.al) #7
  %i.an = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %i.al, i64 noundef %i.am) #7 ; 0 uses
  %i.ao = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.10, i64 noundef 1) #7 ; 0 uses
  %i.ap = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.17, i64 noundef 10) #7 ; 0 uses
  %i.aq = inttoptr i64 %.sroa.0.0.copyload to ptr
  %i.ar = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIPKvEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %i.aq) #7
  %i.as = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ar, ptr noundef nonnull @.str.18, i64 noundef 2) #7 ; 0 uses
  %i.at = add i64 %.sroa.0.0.copyload, 55
  %i.au = inttoptr i64 %i.at to ptr               ; 3 uses
  %i.av = load i32, ptr %i.au, align 4            ; 2 uses
  %i.aw = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.19, i64 noundef 21) #7 ; 0 uses
  %i.ax = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %i.av) #7
  %i.ay = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ax, ptr noundef nonnull @.str.20, i64 noundef 2) #7 ; 0 uses
  %i.az = add i64 %.sroa.0.0.copyload, 39
  %i.ba = inttoptr i64 %i.az to ptr               ; 3 uses
  %i.bb = load i64, ptr %i.ba, align 8            ; 2 uses
  %i.bc = sext i32 %i.av to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.bd = add i64 %i.bb, %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 560 ; 3 uses
  %i.bf = load ptr, ptr %i.be, align 8            ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 568 ; 3 uses
  %i.bh = load ptr, ptr %i.bg, align 8            ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 576 ; 4 uses
  %i.bj = load i32, ptr %i.bi, align 8
  %i.bk = add nsw i32 %i.bj, 1
  store i32 %i.bk, ptr %i.bi, align 8
  %i.bl = inttoptr i64 %i.bb to ptr
  %i.bm = inttoptr i64 %i.bd to ptr
  %i.bn = icmp eq ptr %i.bf, %i.bh
  br i1 %i.bn, label %bb.g, label %bb.h, !prof !9

bb.g:                                             ; preds = %bb.f
  %i.bo = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %3) #7
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0.i.i.i = phi ptr [ %i.bo, %bb.g ], [ %i.bf, %bb.f ] ; 3 uses
  %i.bp = ptrtoint ptr %.0.i.i.i to i64
  %i.bq = add i64 %i.bp, 8
  %i.br = inttoptr i64 %i.bq to ptr
  store ptr %i.br, ptr %i.be, align 8
  store i64 %.sroa.0.0.copyload, ptr %.0.i.i.i, align 8
  store i32 1, ptr %5, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %.0.i.i.i, ptr %i.bs, align 8
  %i.bt = tail call noundef i32 @_ZN2v88internal12Disassembler6DecodeEPNS0_7IsolateERSoPhS5_NS0_13CodeReferenceEmm(ptr noundef nonnull %3, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %i.bl, ptr noundef %i.bm, ptr noundef nonnull byval(%"class.v8::internal::CodeReference") align 8 %5, i64 noundef %4, i64 noundef 0) #7 ; 0 uses
  store ptr %i.bf, ptr %i.be, align 8
  %i.bu = load i32, ptr %i.bi, align 8
  %i.bv = add nsw i32 %i.bu, -1
  store i32 %i.bv, ptr %i.bi, align 8
  %i.bw = load ptr, ptr %i.bg, align 8
  %.not.i.i.i = icmp eq ptr %i.bw, %i.bh
  br i1 %.not.i.i.i, label %bb.j, label %bb.i, !prof !16

bb.i:                                             ; preds = %bb.h
  store ptr %i.bh, ptr %i.bg, align 8
  tail call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %3) #7
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.bx = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.10, i64 noundef 1) #7 ; 0 uses
  %i.by = add i64 %.sroa.0.0.copyload, 15
  %i.bz = inttoptr i64 %i.by to ptr               ; 3 uses
  %i.ca = load i64, ptr %i.bz, align 8
  %.not.i75.i = icmp eq i64 %i.ca, 0
  br i1 %.not.i75.i, label %_ZNK2v88internal4Code25has_source_position_tableEv.exit.thread.i, label %_ZNK2v88internal4Code25has_source_position_tableEv.exit.i

_ZNK2v88internal4Code25has_source_position_tableEv.exit.i: ; preds = %bb.j
  %i.cb = load atomic volatile i32, ptr %i.b monotonic, align 4
  %i.cc = and i32 %i.cb, 15
  %.not194.i = icmp eq i32 %i.cc, 10
  br i1 %.not194.i, label %_ZNK2v88internal4Code25has_source_position_tableEv.exit.thread.i, label %bb.k

bb.k:                                             ; preds = %_ZNK2v88internal4Code25has_source_position_tableEv.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #7
  %15 = load i64, ptr %i.bz, align 8
  call void @_ZN2v88internal27SourcePositionTableIteratorC1ENS0_6TaggedINS0_16TrustedByteArrayEEENS1_15IterationFilterENS1_19FunctionEntryFilterE(ptr noundef nonnull align 8 dereferenceable(56) %6, i64 %15, i32 noundef 0, i32 noundef 0) #7
  %i.cd = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 3 uses
  %i.ce = load i32, ptr %i.cd, align 8
  %i.cf = icmp eq i32 %i.ce, -1
  br i1 %i.cf, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cg = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.24, i64 noundef 39) #7 ; 0 uses
  %i.ch = load i32, ptr %i.cd, align 8
  %i.ci = icmp eq i32 %i.ch, -1
  br i1 %i.ci, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.l
  %i.cj = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.ck = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.cl = getelementptr inbounds nuw i8, ptr %6, i64 44
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.lr.ph.i
  %i.cm = load ptr, ptr %2, align 8
  %i.cn = getelementptr i8, ptr %i.cm, i64 -24
  %i.co = load i64, ptr %i.cn, align 8
  %i.cp = getelementptr inbounds i8, ptr %2, i64 %i.co
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  store i64 10, ptr %i.cq, align 8
  %i.cr = load ptr, ptr %2, align 8
  %i.cs = getelementptr i8, ptr %i.cr, i64 -24
  %i.ct = load i64, ptr %i.cs, align 8
  %i.cu = getelementptr inbounds i8, ptr %2, i64 %i.ct
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 24 ; 2 uses
  %i.cw = load i32, ptr %i.cv, align 8
  %i.cx = and i32 %i.cw, -75
  %i.cy = or disjoint i32 %i.cx, 8
  store i32 %i.cy, ptr %i.cv, align 8
  %i.cz = load i32, ptr %i.cj, align 8
  %i.da = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %i.cz) #7 ; 5 uses
  %i.db = load ptr, ptr %i.da, align 8
  %i.dc = getelementptr i8, ptr %i.db, i64 -24
  %i.dd = load i64, ptr %i.dc, align 8
  %i.de = getelementptr inbounds i8, ptr %i.da, i64 %i.dd
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 24 ; 2 uses
  %i.dg = load i32, ptr %i.df, align 8
  %i.dh = and i32 %i.dg, -75
  %i.di = or disjoint i32 %i.dh, 2
  store i32 %i.di, ptr %i.df, align 8
  %i.dj = load ptr, ptr %i.da, align 8
  %i.dk = getelementptr i8, ptr %i.dj, i64 -24
  %i.dl = load i64, ptr %i.dk, align 8
  %i.dm = getelementptr inbounds i8, ptr %i.da, i64 %i.dl
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  store i64 10, ptr %i.dn, align 8
  %i.do = load i64, ptr %i.ck, align 8
  %i.dp = trunc i64 %i.do to i32
  %i.dq = lshr i32 %i.dp, 1
  %i.dr = and i32 %i.dq, 1073741823
  %i.ds = add nsw i32 %i.dr, -1
  %i.dt = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.da, i32 noundef %i.ds) #7 ; 2 uses
  %i.du = load i8, ptr %i.cl, align 4, !range !5, !noundef !6
  %i.dv = trunc nuw i8 %i.du to i1                ; 2 uses
  %i.dw = select i1 %i.dv, ptr @.str.25, ptr @.str.26
  %i.dx = select i1 %i.dv, i64 11, i64 0
  %i.dy = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dt, ptr noundef nonnull %i.dw, i64 noundef %i.dx) #7 ; 0 uses
  %i.dz = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dt, ptr noundef nonnull @.str.10, i64 noundef 1) #7 ; 0 uses
  call void @_ZN2v88internal27SourcePositionTableIterator7AdvanceEv(ptr noundef nonnull align 8 dereferenceable(56) %6) #7
  %i.ea = load i32, ptr %i.cd, align 8
  %i.eb = icmp eq i32 %i.ea, -1
  br i1 %i.eb, label %._crit_edge.i, label %bb.m, !llvm.loop !17

._crit_edge.i:                                    ; preds = %bb.m, %bb.l
  %i.ec = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.10, i64 noundef 1) #7 ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #7
  %i.ed = load i64, ptr %i.bz, align 8
  call void @_ZN2v88internal27SourcePositionTableIteratorC1ENS0_6TaggedINS0_16TrustedByteArrayEEENS1_15IterationFilterENS1_19FunctionEntryFilterE(ptr noundef nonnull align 8 dereferenceable(56) %7, i64 %i.ed, i32 noundef 1, i32 noundef 0) #7
  %i.ee = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 3 uses
  %i.ef = load i32, ptr %i.ee, align 8
  %i.eg = icmp eq i32 %i.ef, -1
  br i1 %i.eg, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.eh = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.27, i64 noundef 52) #7 ; 0 uses
  %i.ei = load i32, ptr %i.ee, align 8
  %i.ej = icmp eq i32 %i.ei, -1
  br i1 %i.ej, label %._crit_edge198.i, label %.lr.ph197.i

.lr.ph197.i:                                      ; preds = %bb.o
  %i.ek = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.el = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %.lr.ph197.i
  %i.em = load ptr, ptr %2, align 8
  %i.en = getelementptr i8, ptr %i.em, i64 -24
  %i.eo = load i64, ptr %i.en, align 8
  %i.ep = getelementptr inbounds i8, ptr %2, i64 %i.eo
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  store i64 10, ptr %i.eq, align 8
  %i.er = load ptr, ptr %2, align 8
  %i.es = getelementptr i8, ptr %i.er, i64 -24
  %i.et = load i64, ptr %i.es, align 8
  %i.eu = getelementptr inbounds i8, ptr %2, i64 %i.et
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 24 ; 2 uses
  %i.ew = load i32, ptr %i.ev, align 8
  %i.ex = and i32 %i.ew, -75
  %i.ey = or disjoint i32 %i.ex, 8
  store i32 %i.ey, ptr %i.ev, align 8
  %i.ez = load i32, ptr %i.ek, align 8
  %i.fa = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %i.ez) #7 ; 5 uses
  %i.fb = load ptr, ptr %i.fa, align 8
  %i.fc = getelementptr i8, ptr %i.fb, i64 -24
  %i.fd = load i64, ptr %i.fc, align 8
  %i.fe = getelementptr inbounds i8, ptr %i.fa, i64 %i.fd
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 24 ; 2 uses
  %i.fg = load i32, ptr %i.ff, align 8
  %i.fh = and i32 %i.fg, -75
  %i.fi = or disjoint i32 %i.fh, 2
  store i32 %i.fi, ptr %i.ff, align 8
  %i.fj = load ptr, ptr %i.fa, align 8
  %i.fk = getelementptr i8, ptr %i.fj, i64 -24
  %i.fl = load i64, ptr %i.fk, align 8
  %i.fm = getelementptr inbounds i8, ptr %i.fa, i64 %i.fl
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  store i64 10, ptr %i.fn, align 8
  %i.fo = load i64, ptr %i.el, align 8
  %i.fp = trunc i64 %i.fo to i32
  %i.fq = lshr i32 %i.fp, 21
  %i.fr = and i32 %i.fq, 1023
  %i.fs = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.fa, i32 noundef %i.fr) #7 ; 3 uses
  %i.ft = load ptr, ptr %i.fs, align 8
  %i.fu = getelementptr i8, ptr %i.ft, i64 -24
  %i.fv = load i64, ptr %i.fu, align 8
  %i.fw = getelementptr inbounds i8, ptr %i.fs, i64 %i.fv
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 16
  store i64 10, ptr %i.fx, align 8
  %i.fy = load i64, ptr %i.el, align 8
  %i.fz = trunc i64 %i.fy to i32
  %i.ga = lshr i32 %i.fz, 1
  %i.gb = and i32 %i.ga, 1048575
  %i.gc = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.fs, i32 noundef %i.gb) #7
  %i.gd = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gc, ptr noundef nonnull @.str.10, i64 noundef 1) #7 ; 0 uses
  call void @_ZN2v88internal27SourcePositionTableIterator7AdvanceEv(ptr noundef nonnull align 8 dereferenceable(56) %7) #7
  %i.ge = load i32, ptr %i.ee, align 8
  %i.gf = icmp eq i32 %i.ge, -1
  br i1 %i.gf, label %._crit_edge198.i, label %bb.p, !llvm.loop !18

._crit_edge198.i:                                 ; preds = %bb.p, %bb.o
  %i.gg = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.10, i64 noundef 1) #7 ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge198.i, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #7
  br label %_ZNK2v88internal4Code25has_source_position_tableEv.exit.thread.i

_ZNK2v88internal4Code25has_source_position_tableEv.exit.thread.i: ; preds = %bb.q, %_ZNK2v88internal4Code25has_source_position_tableEv.exit.i, %bb.j
  %i.gh = load atomic volatile i32, ptr %i.b monotonic, align 4
  %i.gi = trunc i32 %i.gh to i8
  %i.gj = and i8 %i.gi, 15                        ; 2 uses
  %i.gk = add nsw i8 %i.gj, -11
  %i.gl = icmp ult i8 %i.gk, 2
  br i1 %i.gl, label %_ZNK2v88internal4Code24uses_deoptimization_dataEv.exit.thread.i, label %bb.r

bb.r:                                             ; preds = %_ZNK2v88internal4Code25has_source_position_tableEv.exit.thread.i
  %i.gm = icmp eq i8 %i.gj, 4
  %i.gn = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 817), align 1, !range !5
  %i.go = trunc nuw i8 %i.gn to i1
  %or.cond.i = select i1 %i.gm, i1 %i.go, i1 false
  br i1 %or.cond.i, label %_ZNK2v88internal4Code24uses_deoptimization_dataEv.exit.thread.i, label %_ZNK2v88internal4Code24uses_deoptimization_dataEv.exit.thread190.i

_ZNK2v88internal4Code24uses_deoptimization_dataEv.exit.thread.i: ; preds = %bb.r, %_ZNK2v88internal4Code25has_source_position_tableEv.exit.thread.i
  %i.gp = load atomic volatile i32, ptr %i.b monotonic, align 4
  %i.gq = trunc i32 %i.gp to i8
  %i.gr = and i8 %i.gq, 15                        ; 2 uses
  %i.gs = add nsw i8 %i.gr, -11
  %i.gt = icmp ult i8 %i.gs, 2
  br i1 %i.gt, label %_ZNK2v88internal4Code19deoptimization_dataEv.exit.i, label %bb.s

bb.s:                                             ; preds = %_ZNK2v88internal4Code24uses_deoptimization_dataEv.exit.thread.i
  %i.gu = icmp eq i8 %i.gr, 4
  %i.gv = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 817), align 1, !range !5
  %i.gw = trunc nuw i8 %i.gv to i1
  %or.cond.i.i = select i1 %i.gu, i1 %i.gw, i1 false, !prof !13
  br i1 %or.cond.i.i, label %_ZNK2v88internal4Code19deoptimization_dataEv.exit.i, label %_ZNK2v88internal4Code24uses_deoptimization_dataEv.exit.thread3.i.i, !prof !13

_ZNK2v88internal4Code24uses_deoptimization_dataEv.exit.thread3.i.i: ; preds = %bb.s
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.4) #8
  unreachable

_ZNK2v88internal4Code19deoptimization_dataEv.exit.i: ; preds = %bb.s, %_ZNK2v88internal4Code24uses_deoptimization_dataEv.exit.thread.i
  %i.gx = add i64 %.sroa.0.0.copyload, 7
  %i.gy = inttoptr i64 %i.gx to ptr
  %i.gz = load i64, ptr %i.gy, align 8
  %i.ha = add i64 %i.gz, -1
  %i.hb = inttoptr i64 %i.ha to ptr
  call void @_ZNK2v88internal18DeoptimizationData23PrintDeoptimizationDataERSo(ptr noundef nonnull align 4 dereferenceable(16) %i.hb, ptr noundef nonnull align 8 dereferenceable(8) %2) #7
  br label %_ZNK2v88internal4Code24uses_deoptimization_dataEv.exit.thread190.i

_ZNK2v88internal4Code24uses_deoptimization_dataEv.exit.thread190.i: ; preds = %_ZNK2v88internal4Code19deoptimization_dataEv.exit.i, %bb.r
  %i.hc = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.10, i64 noundef 1) #7 ; 0 uses
end_hunk_0
