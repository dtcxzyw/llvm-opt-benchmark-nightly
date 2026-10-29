Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/cares_wrap?download=true
inline.NumInlined: 8027
inline.NumDeleted: 3748
loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_ZN4node10cares_wrap9QueryWrapINS0_11NaptrTraitsEE14CallOnCompleteEN2v85LocalINS4_5ValueEEES7_:bb.a
_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i.i.i: ; preds = %bb.f
  %i.bc = load ptr, ptr %.pre.i.i, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = load ptr, ptr %i.bd, align 8
  call void %i.be(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.pre.i.i) #26, !inline_history !16
  br label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit.i.i

_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit.i.i: ; preds = %bb.f, %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i.i.i
  %.pr.i = load ptr, ptr %3, align 16             ; 3 uses
  %.not.i.1.i.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i.1.i.i, label %_ZN4node7tracingL13AddTraceEventEcPKhPKcS4_mmj.exit, label %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i.1.i.i

_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i.1.i.i: ; preds = %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit.i.i
  %i.bf = load ptr, ptr %.pr.i, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8
  call void %i.bh(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.pr.i) #26, !inline_history !16
  br label %_ZN4node7tracingL13AddTraceEventEcPKhPKcS4_mmj.exit

_ZN4node7tracingL13AddTraceEventEcPKhPKcS4_mmj.exit: ; preds = %bb.e, %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit.i.i, %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i.1.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %bb.g

bb.g:                                             ; preds = %_ZN4node7tracingL13AddTraceEventEcPKhPKcS4_mmj.exit, %bb.d
  %i.bi = select i1 %i.ah, i32 2, i32 3
  %i.bj = load ptr, ptr %i.a, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 176
  %i.bl = load ptr, ptr %i.bk, align 8            ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 216
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 1904
  %i.bp = load ptr, ptr %i.bo, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 200
  %i.br = load ptr, ptr %i.bq, align 8            ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !nonnull !41, !noundef !41 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 11
  %i.bv = load i8, ptr %i.bu, align 1
  %i.bw = and i8 %i.bv, 3
  %i.bx = icmp eq i8 %i.bw, 2
  br i1 %i.bx, label %bb.h, label %_ZNK4node10BaseObject6objectEv.exit.i.i

bb.h:                                             ; preds = %bb.g
  %i.by = load i64, ptr %i.bt, align 8
  %i.bz = ptrtoint ptr %i.br to i64
  %i.ca = add i64 %i.bz, 560
  %i.cb = inttoptr i64 %i.ca to ptr               ; 3 uses
  %i.cc = load ptr, ptr %i.cb, align 8            ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8
  %i.cf = icmp eq ptr %i.cc, %i.ce
  br i1 %i.cf, label %bb.i, label %_ZN4node17PersistentToLocal4WeakIN2v86ObjectEEENS2_5LocalIT_EEPNS2_7IsolateERKNS2_14PersistentBaseIS5_EE.exit.i.i.i.i, !prof !38

bb.i:                                             ; preds = %bb.h
  %i.cg = call noundef ptr @_ZN2v811HandleScope6ExtendEPNS_7IsolateE(ptr noundef %i.br) #26
  br label %_ZN4node17PersistentToLocal4WeakIN2v86ObjectEEENS2_5LocalIT_EEPNS2_7IsolateERKNS2_14PersistentBaseIS5_EE.exit.i.i.i.i

_ZN4node17PersistentToLocal4WeakIN2v86ObjectEEENS2_5LocalIT_EEPNS2_7IsolateERKNS2_14PersistentBaseIS5_EE.exit.i.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i.i.i = phi ptr [ %i.cg, %bb.i ], [ %i.cc, %bb.h ] ; 3 uses
  %i.ch = ptrtoint ptr %.0.i.i.i.i.i.i to i64
  %i.ci = add i64 %i.ch, 8
  %i.cj = inttoptr i64 %i.ci to ptr
  store ptr %i.cj, ptr %i.cb, align 8
  store i64 %i.by, ptr %.0.i.i.i.i.i.i, align 8
  %.pre.i.i11 = load ptr, ptr %i.a, align 8
  %.phi.trans.insert.i.i12 = getelementptr inbounds nuw i8, ptr %.pre.i.i11, i64 176
  %.pre19.i.i = load ptr, ptr %.phi.trans.insert.i.i12, align 8
  br label %_ZNK4node10BaseObject6objectEv.exit.i.i

_ZNK4node10BaseObject6objectEv.exit.i.i:          ; preds = %_ZN4node17PersistentToLocal4WeakIN2v86ObjectEEENS2_5LocalIT_EEPNS2_7IsolateERKNS2_14PersistentBaseIS5_EE.exit.i.i.i.i, %bb.g
  %i.ck = phi ptr [ %.pre19.i.i, %_ZN4node17PersistentToLocal4WeakIN2v86ObjectEEENS2_5LocalIT_EEPNS2_7IsolateERKNS2_14PersistentBaseIS5_EE.exit.i.i.i.i ], [ %i.bl, %bb.g ]
  %.sroa.0.0.i.i.i.i = phi ptr [ %.0.i.i.i.i.i.i, %_ZN4node17PersistentToLocal4WeakIN2v86ObjectEEENS2_5LocalIT_EEPNS2_7IsolateERKNS2_14PersistentBaseIS5_EE.exit.i.i.i.i ], [ %i.bt, %bb.g ]
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 3008
  %i.cm = load ptr, ptr %i.cl, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 192
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.cn, align 8
  %i.co = call ptr @_ZN2v86Object3GetENS_5LocalINS_7ContextEEENS1_INS_5ValueEEE(ptr noundef nonnull align 1 dereferenceable(1) %.sroa.0.0.i.i.i.i, ptr %.sroa.0.0.copyload.i.i.i.i.i, ptr %i.bp) #26 ; 3 uses
  %.not.i.i = icmp eq ptr %i.co, null
  br i1 %.not.i.i, label %_ZN4node9AsyncWrap12MakeCallbackEN2v85LocalINS1_6StringEEEiPNS2_INS1_5ValueEEE.exit, label %bb.j

bb.j:                                             ; preds = %_ZNK4node10BaseObject6objectEv.exit.i.i
  %i.cp = call noundef zeroext i1 @_ZNK2v85Value10IsFunctionEv(ptr noundef nonnull align 1 dereferenceable(1) %i.co) #26
  br i1 %i.cp, label %bb.k, label %_ZN4node9AsyncWrap12MakeCallbackEN2v85LocalINS1_6StringEEEiPNS2_INS1_5ValueEEE.exit

bb.k:                                             ; preds = %bb.j
  %i.cq = call ptr @_ZN4node9AsyncWrap12MakeCallbackEN2v85LocalINS1_8FunctionEEEiPNS2_INS1_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr nonnull %i.co, i32 noundef %i.bi, ptr noundef nonnull %5) #26 ; 0 uses
  br label %_ZN4node9AsyncWrap12MakeCallbackEN2v85LocalINS1_6StringEEEiPNS2_INS1_5ValueEEE.exit

_ZN4node9AsyncWrap12MakeCallbackEN2v85LocalINS1_6StringEEEiPNS2_INS1_5ValueEEE.exit: ; preds = %bb.j, %_ZNK4node10BaseObject6objectEv.exit.i.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @_ZN2v87Context4ExitEv(ptr noundef nonnull align 1 dereferenceable(1) %.sroa.0.0.copyload.i.i.i) #26
  %i.cr = load ptr, ptr %4, align 8               ; 3 uses
  %i.cs = icmp eq ptr %i.cr, null
  br i1 %i.cs, label %_ZN2v811HandleScopeD2Ev.exit, label %bb.l, !prof !38

bb.l:                                             ; preds = %_ZN4node9AsyncWrap12MakeCallbackEN2v85LocalINS1_6StringEEEiPNS2_INS1_5ValueEEE.exit
  %i.ct = ptrtoint ptr %i.cr to i64
  %i.cu = add i64 %i.ct, 560
  %i.cv = inttoptr i64 %i.cu to ptr               ; 4 uses
  %i.cw = load ptr, ptr %i.cv, align 8
  %i.cx = load ptr, ptr %i.k, align 8
  store ptr %i.cx, ptr %i.cv, align 8
  store ptr %i.cw, ptr %i.k, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cv, i64 16 ; 2 uses
  %i.cz = load i32, ptr %i.cy, align 8
  %i.da = add nsw i32 %i.cz, -1
  store i32 %i.da, ptr %i.cy, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %i.cv, i64 8 ; 2 uses
  %i.dc = load ptr, ptr %i.db, align 8
  %i.dd = load ptr, ptr %i.n, align 8             ; 2 uses
  %.not.i = icmp eq ptr %i.dc, %i.dd
  br i1 %.not.i, label %_ZN2v811HandleScopeD2Ev.exit, label %bb.m, !prof !42

bb.m:                                             ; preds = %bb.l
  store ptr %i.dd, ptr %i.db, align 8
  call void @_ZN2v811HandleScope16DeleteExtensionsEPNS_7IsolateE(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull %i.cr) #26
  br label %_ZN2v811HandleScopeD2Ev.exit

_ZN2v811HandleScopeD2Ev.exit:                     ; preds = %_ZN4node9AsyncWrap12MakeCallbackEN2v85LocalINS1_6StringEEEiPNS2_INS1_5ValueEEE.exit, %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i64 4294967297, 2) i64 @_ZN4node10cares_wrap9SoaTraits5ParseEPNS0_9QueryWrapIS1_EERKSt10unique_ptrINS0_12ResponseDataESt14default_deleteIS6_EE(ptr noundef %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.v8::HandleScope", align 8   ; 6 uses
  %3 = alloca [8 x %"class.v8::MaybeLocal"], align 16 ; 11 uses
  %i.a = alloca ptr, align 8                      ; 11 uses
  %i.b = load ptr, ptr %1, align 8                ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.d = load i8, ptr %i.c, align 4, !range !40, !noundef !41
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.m, label %bb.b, !prof !38

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.i = load i64, ptr %i.h, align 8
  %i.j = trunc i64 %i.i to i32
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 176
  %i.n = load ptr, ptr %i.m, align 8              ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 200 ; 10 uses
  %i.p = load ptr, ptr %i.o, align 8              ; 4 uses
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = add i64 %i.q, 560
  %i.s = inttoptr i64 %i.r to ptr                 ; 5 uses
  store ptr %i.p, ptr %2, align 8
  %i.t = load ptr, ptr %i.s, align 8              ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr %i.t, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8              ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.w, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 4 uses
  %i.z = load i32, ptr %i.y, align 8
  %i.aa = add nsw i32 %i.z, 1
  store i32 %i.aa, ptr %i.y, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.n, i64 3008 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 192
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.ad, align 8 ; 2 uses
  tail call void @_ZN2v87Context5EnterEv(ptr noundef nonnull align 1 dereferenceable(1) %.sroa.0.0.copyload.i.i.i) #26
  %i.ae = getelementptr inbounds nuw i8, ptr %i.n, i64 216 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 3248
  %i.ah = load ptr, ptr %i.ag, align 8            ; 2 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %bb.c, label %_ZN4node10cares_wrap12_GLOBAL__N_120getSoaRecordTemplateEPNS_11EnvironmentE.exit

bb.c:                                             ; preds = %bb.b
  %i.aj = load ptr, ptr %i.o, align 8
  %i.ak = tail call ptr @_ZN2v818DictionaryTemplate3NewEPNS_7IsolateENS_10MemorySpanIKSt17basic_string_viewIcSt11char_traitsIcEEEE(ptr noundef %i.aj, ptr nonnull @_ZZN4node10cares_wrap12_GLOBAL__N_120getSoaRecordTemplateEPNS_11EnvironmentEE5names, i64 8) #26 ; 2 uses
  %i.al = load ptr, ptr %i.ae, align 8            ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 3248 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %_ZN4node11Environment23set_soa_record_templateEN2v85LocalINS1_18DictionaryTemplateEEE.exit.i, label %bb.d, !prof !42

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node11IsolateData23set_soa_record_templateEN2v85LocalINS1_18DictionaryTemplateEEEE20error_and_abort_args) #26
  tail call void @abort() #27
  unreachable

_ZN4node11Environment23set_soa_record_templateEN2v85LocalINS1_18DictionaryTemplateEEE.exit.i: ; preds = %bb.c
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 4648
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = tail call noundef ptr @_ZN2v812api_internal10EternalizeEPNS_7IsolateEPNS_5ValueE(ptr noundef %i.aq, ptr noundef %i.ak) #26
  store ptr %i.ar, ptr %i.am, align 8
  br label %_ZN4node10cares_wrap12_GLOBAL__N_120getSoaRecordTemplateEPNS_11EnvironmentE.exit

_ZN4node10cares_wrap12_GLOBAL__N_120getSoaRecordTemplateEPNS_11EnvironmentE.exit: ; preds = %bb.b, %_ZN4node11Environment23set_soa_record_templateEN2v85LocalINS1_18DictionaryTemplateEEE.exit.i
  %.sroa.04.0.i = phi ptr [ %i.ak, %_ZN4node11Environment23set_soa_record_templateEN2v85LocalINS1_18DictionaryTemplateEEE.exit.i ], [ %i.ah, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.as = load ptr, ptr %i.o, align 8
  %.fr128 = freeze ptr %i.as
  %i.at = ptrtoint ptr %.fr128 to i64
  %i.au = add i64 %i.at, 648                      ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i64 %i.au, ptr %i.bb, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.bc = call i32 @ares_parse_soa_reply(ptr noundef %i.g, i32 noundef %i.j, ptr noundef nonnull %i.a) #26 ; 2 uses
  %.not = icmp eq i32 %i.bc, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN4node10cares_wrap12_GLOBAL__N_120getSoaRecordTemplateEPNS_11EnvironmentE.exit
  %.sroa.21.0.insert.ext.i47 = zext i32 %i.bc to i64
  %.sroa.21.0.insert.shift.i48 = shl nuw i64 %.sroa.21.0.insert.ext.i47, 32
  %.sroa.0.0.insert.insert.i49 = or disjoint i64 %.sroa.21.0.insert.shift.i48, 1
  br label %bb.j

bb.f:                                             ; preds = %_ZN4node10cares_wrap12_GLOBAL__N_120getSoaRecordTemplateEPNS_11EnvironmentE.exit
  %i.bd = load ptr, ptr %i.o, align 8
  %i.be = load ptr, ptr %i.a, align 8
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = call ptr @_ZN2v86String14NewFromOneByteEPNS_7IsolateEPKhNS_13NewStringTypeEi(ptr noundef %i.bd, ptr noundef %i.bf, i32 noundef 0, i32 noundef -1) #26 ; 2 uses
  %i.bh = icmp eq ptr %i.bg, null                 ; 2 uses
  br i1 %i.bh, label %bb.g, label %_ZN4node13OneByteStringEPN2v87IsolateEPKciNS0_13NewStringTypeE.exit, !prof !38

bb.g:                                             ; preds = %bb.f
  call void @_ZN2v812api_internal12ToLocalEmptyEv() #26
  br label %_ZN4node13OneByteStringEPN2v87IsolateEPKciNS0_13NewStringTypeE.exit

_ZN4node13OneByteStringEPN2v87IsolateEPKciNS0_13NewStringTypeE.exit: ; preds = %bb.f, %bb.g
  %i.bi = ptrtoint ptr %i.bg to i64
  store i64 %i.bi, ptr %3, align 16
  %i.bj = load ptr, ptr %i.o, align 8
  %i.bk = load ptr, ptr %i.a, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = call ptr @_ZN2v86String14NewFromOneByteEPNS_7IsolateEPKhNS_13NewStringTypeEi(ptr noundef %i.bj, ptr noundef %i.bm, i32 noundef 0, i32 noundef -1) #26 ; 2 uses
  %i.bo = icmp eq ptr %i.bn, null                 ; 2 uses
  br i1 %i.bo, label %bb.h, label %_ZN4node13OneByteStringEPN2v87IsolateEPKciNS0_13NewStringTypeE.exit50, !prof !38

bb.h:                                             ; preds = %_ZN4node13OneByteStringEPN2v87IsolateEPKciNS0_13NewStringTypeE.exit
  call void @_ZN2v812api_internal12ToLocalEmptyEv() #26
  br label %_ZN4node13OneByteStringEPN2v87IsolateEPKciNS0_13NewStringTypeE.exit50

_ZN4node13OneByteStringEPN2v87IsolateEPKciNS0_13NewStringTypeE.exit50: ; preds = %_ZN4node13OneByteStringEPN2v87IsolateEPKciNS0_13NewStringTypeE.exit, %bb.h
  %i.bp = ptrtoint ptr %i.bn to i64
  store i64 %i.bp, ptr %i.av, align 8
  %i.bq = load ptr, ptr %i.o, align 8
  %i.br = load ptr, ptr %i.a, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bt = load i32, ptr %i.bs, align 8
  %i.bu = call ptr @_ZN2v87Integer15NewFromUnsignedEPNS_7IsolateEj(ptr noundef %i.bq, i32 noundef %i.bt) #26 ; 2 uses
  %i.bv = ptrtoint ptr %i.bu to i64
  store i64 %i.bv, ptr %i.aw, align 16
  %i.bw = load ptr, ptr %i.o, align 8
  %i.bx = load ptr, ptr %i.a, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 20
  %i.bz = load i32, ptr %i.by, align 4
  %i.ca = call ptr @_ZN2v87Integer3NewEPNS_7IsolateEi(ptr noundef %i.bw, i32 noundef %i.bz) #26 ; 2 uses
  %i.cb = ptrtoint ptr %i.ca to i64
  store i64 %i.cb, ptr %i.ax, align 8
  %i.cc = load ptr, ptr %i.o, align 8
  %i.cd = load ptr, ptr %i.a, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  %i.cf = load i32, ptr %i.ce, align 8
  %i.cg = call ptr @_ZN2v87Integer3NewEPNS_7IsolateEi(ptr noundef %i.cc, i32 noundef %i.cf) #26 ; 2 uses
  %i.ch = ptrtoint ptr %i.cg to i64
  store i64 %i.ch, ptr %i.ay, align 16
  %i.ci = load ptr, ptr %i.o, align 8
  %i.cj = load ptr, ptr %i.a, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 28
  %i.cl = load i32, ptr %i.ck, align 4
  %i.cm = call ptr @_ZN2v87Integer3NewEPNS_7IsolateEi(ptr noundef %i.ci, i32 noundef %i.cl) #26 ; 2 uses
  %i.cn = ptrtoint ptr %i.cm to i64
  store i64 %i.cn, ptr %i.az, align 8
  %i.co = load ptr, ptr %i.o, align 8
  %i.cp = load ptr, ptr %i.a, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 32
  %i.cr = load i32, ptr %i.cq, align 8
  %i.cs = call ptr @_ZN2v87Integer15NewFromUnsignedEPNS_7IsolateEj(ptr noundef %i.co, i32 noundef %i.cr) #26
  %.fr130 = freeze ptr %i.cs                      ; 2 uses
  %i.ct = ptrtoint ptr %.fr130 to i64
  store i64 %i.ct, ptr %i.ba, align 16
  %i.cu = insertelement <4 x ptr> poison, ptr %i.bu, i64 0
  %i.cv = insertelement <4 x ptr> %i.cu, ptr %i.ca, i64 1
  %i.cw = insertelement <4 x ptr> %i.cv, ptr %i.cg, i64 2
  %i.cx = insertelement <4 x ptr> %i.cw, ptr %i.cm, i64 3
  %.fr = freeze <4 x ptr> %i.cx
  %i.cy = icmp eq <4 x ptr> %.fr, splat (ptr null)
  %i.cz = icmp eq ptr %.fr130, null
  %i.da = icmp eq i64 %i.au, 0
  %i.db = bitcast <4 x i1> %i.cy to i4
  %i.dc = icmp ne i4 %i.db, 0
  %i.dd = or i1 %i.da, %i.dc
  %i.de = or i1 %i.dd, %i.cz
  %op.rdx124 = or i1 %i.de, %i.bo
  %op.rdx125 = or i1 %op.rdx124, %i.bh
  br i1 %op.rdx125, label %"_ZN4node16OnScopeLeaveImplIZNS_10cares_wrap9SoaTraits5ParseEPNS1_9QueryWrapIS2_EERKSt10unique_ptrINS1_12ResponseDataESt14default_deleteIS7_EEE3$_0ED2Ev.exit", label %_ZN4node21NewDictionaryInstanceEN2v85LocalINS0_7ContextEEENS1_INS0_18DictionaryTemplateEEENS0_10MemorySpanINS0_10MaybeLocalINS0_5ValueEEEEE.exit

_ZN4node21NewDictionaryInstanceEN2v85LocalINS0_7ContextEEENS1_INS0_18DictionaryTemplateEEENS0_10MemorySpanINS0_10MaybeLocalINS0_5ValueEEEEE.exit: ; preds = %_ZN4node13OneByteStringEPN2v87IsolateEPKciNS0_13NewStringTypeE.exit50
  %i.df = load ptr, ptr %i.ab, align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 192
  %.sroa.0.0.copyload.i.i.i51 = load ptr, ptr %i.dg, align 8
  %i.dh = call ptr @_ZN2v818DictionaryTemplate11NewInstanceENS_5LocalINS_7ContextEEENS_10MemorySpanINS_10MaybeLocalINS_5ValueEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %.sroa.04.0.i, ptr %.sroa.0.0.copyload.i.i.i51, ptr nonnull %3, i64 8) #26 ; 2 uses
  %.not113 = icmp eq ptr %i.dh, null
  br i1 %.not113, label %"_ZN4node16OnScopeLeaveImplIZNS_10cares_wrap9SoaTraits5ParseEPNS1_9QueryWrapIS2_EERKSt10unique_ptrINS1_12ResponseDataESt14default_deleteIS7_EEE3$_0ED2Ev.exit", label %bb.i

bb.i:                                             ; preds = %_ZN4node21NewDictionaryInstanceEN2v85LocalINS0_7ContextEEENS1_INS0_18DictionaryTemplateEEENS0_10MemorySpanINS0_10MaybeLocalINS0_5ValueEEEEE.exit
  call void @_ZN4node10cares_wrap9QueryWrapINS0_9SoaTraitsEE14CallOnCompleteEN2v85LocalINS4_5ValueEEES7_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr nonnull %i.dh, ptr null)
  br label %"_ZN4node16OnScopeLeaveImplIZNS_10cares_wrap9SoaTraits5ParseEPNS1_9QueryWrapIS2_EERKSt10unique_ptrINS1_12ResponseDataESt14default_deleteIS7_EEE3$_0ED2Ev.exit"

"_ZN4node16OnScopeLeaveImplIZNS_10cares_wrap9SoaTraits5ParseEPNS1_9QueryWrapIS2_EERKSt10unique_ptrINS1_12ResponseDataESt14default_deleteIS7_EEE3$_0ED2Ev.exit": ; preds = %_ZN4node13OneByteStringEPN2v87IsolateEPKciNS0_13NewStringTypeE.exit50, %_ZN4node21NewDictionaryInstanceEN2v85LocalINS0_7ContextEEENS1_INS0_18DictionaryTemplateEEENS0_10MemorySpanINS0_10MaybeLocalINS0_5ValueEEEEE.exit, %bb.i
  %.sroa.044.0 = phi i64 [ 1, %bb.i ], [ 0, %_ZN4node21NewDictionaryInstanceEN2v85LocalINS0_7ContextEEENS1_INS0_18DictionaryTemplateEEENS0_10MemorySpanINS0_10MaybeLocalINS0_5ValueEEEEE.exit ], [ 0, %_ZN4node13OneByteStringEPN2v87IsolateEPKciNS0_13NewStringTypeE.exit50 ]
  %.val.val.i = load ptr, ptr %i.a, align 8
  call void @ares_free_data(ptr noundef %.val.val.i) #26
  br label %bb.j

bb.j:                                             ; preds = %"_ZN4node16OnScopeLeaveImplIZNS_10cares_wrap9SoaTraits5ParseEPNS1_9QueryWrapIS2_EERKSt10unique_ptrINS1_12ResponseDataESt14default_deleteIS7_EEE3$_0ED2Ev.exit", %bb.e
  %.sroa.044.1 = phi i64 [ %.sroa.0.0.insert.insert.i49, %bb.e ], [ %.sroa.044.0, %"_ZN4node16OnScopeLeaveImplIZNS_10cares_wrap9SoaTraits5ParseEPNS1_9QueryWrapIS2_EERKSt10unique_ptrINS1_12ResponseDataESt14default_deleteIS7_EEE3$_0ED2Ev.exit" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @_ZN2v87Context4ExitEv(ptr noundef nonnull align 1 dereferenceable(1) %.sroa.0.0.copyload.i.i.i) #26
  %i.di = icmp eq ptr %i.p, null
  br i1 %i.di, label %_ZN2v811HandleScopeD2Ev.exit, label %bb.k, !prof !38

bb.k:                                             ; preds = %bb.j
  %i.dj = load ptr, ptr %i.s, align 8
  store ptr %i.t, ptr %i.s, align 8
  store ptr %i.dj, ptr %i.u, align 8
  %i.dk = load i32, ptr %i.y, align 8
  %i.dl = add nsw i32 %i.dk, -1
  store i32 %i.dl, ptr %i.y, align 8
  %i.dm = load ptr, ptr %i.v, align 8
  %.not.i = icmp eq ptr %i.dm, %i.w
  br i1 %.not.i, label %_ZN2v811HandleScopeD2Ev.exit, label %bb.l, !prof !42

bb.l:                                             ; preds = %bb.k
  store ptr %i.w, ptr %i.v, align 8
  call void @_ZN2v811HandleScope16DeleteExtensionsEPNS_7IsolateE(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull %i.p) #26
  br label %_ZN2v811HandleScopeD2Ev.exit

_ZN2v811HandleScopeD2Ev.exit:                     ; preds = %bb.j, %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.m

bb.m:                                             ; preds = %bb.a, %_ZN2v811HandleScopeD2Ev.exit
  %.sroa.044.2 = phi i64 [ %.sroa.044.1, %_ZN2v811HandleScopeD2Ev.exit ], [ 42949672961, %bb.a ]
  ret i64 %.sroa.044.2
}

declare i32 @ares_parse_soa_reply(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

declare ptr @_ZN2v87Integer3NewEPNS_7IsolateEi(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4node10cares_wrap9QueryWrapINS0_9SoaTraitsEE14CallOnCompleteEN2v85LocalINS4_5ValueEEES7_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr %1, ptr %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca [2 x %"class.std::unique_ptr.747"], align 16 ; 6 uses
  %4 = alloca %"class.v8::HandleScope", align 8   ; 7 uses
  %5 = alloca [3 x %"class.v8::Local.59"], align 16 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 200
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = add i64 %i.g, 560
  %i.i = inttoptr i64 %i.h to ptr                 ; 3 uses
  store ptr %i.f, ptr %4, align 8
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store ptr %i.j, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.m, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8
  %i.q = add nsw i32 %i.p, 1
  store i32 %i.q, ptr %i.o, align 8
  %i.r = load ptr, ptr %i.a, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 176
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 3008
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 192
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.w, align 8 ; 2 uses
  tail call void @_ZN2v87Context5EnterEv(ptr noundef nonnull align 1 dereferenceable(1) %.sroa.0.0.copyload.i.i.i) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.x = load ptr, ptr %i.a, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 176
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 200
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = tail call ptr @_ZN2v87Integer3NewEPNS_7IsolateEi(ptr noundef %i.ab, i32 noundef 0) #26
  %i.ad = ptrtoint ptr %i.ac to i64
  store i64 %i.ad, ptr %5, align 16
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %1, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ag = ptrtoint ptr %2 to i64
  store i64 %i.ag, ptr %i.af, align 16
  %i.ah = icmp eq ptr %2, null
  %i.ai = load atomic i64, ptr @_ZZN4node10cares_wrap9QueryWrapINS0_9SoaTraitsEE14CallOnCompleteEN2v85LocalINS4_5ValueEEES7_E28trace_event_unique_atomic413 seq_cst, align 8 ; 2 uses
  %i.aj = inttoptr i64 %i.ai to ptr
  %.not = icmp eq i64 %i.ai, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.ak = tail call noundef ptr @_ZN4node7tracing16TraceEventHelper20GetTracingControllerEv() #26 ; 3 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %_ZN4node7tracing16TraceEventHelper23GetCategoryGroupEnabledEPKc.exit, label %bb.c, !prof !38

bb.c:                                             ; preds = %bb.b
  %i.am = load ptr, ptr %i.ak, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = tail call noundef ptr %i.ao(ptr noundef nonnull align 8 dereferenceable(8) %i.ak, ptr noundef nonnull @.str.42) #26, !inline_history !11
  br label %_ZN4node7tracing16TraceEventHelper23GetCategoryGroupEnabledEPKc.exit

_ZN4node7tracing16TraceEventHelper23GetCategoryGroupEnabledEPKc.exit: ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.ap, %bb.c ], [ @_ZZN4node7tracing16TraceEventHelper23GetCategoryGroupEnabledEPKcE8disabled, %bb.b ] ; 2 uses
  %i.aq = ptrtoint ptr %.0.i to i64
  store atomic i64 %i.aq, ptr @_ZZN4node10cares_wrap9QueryWrapINS0_9SoaTraitsEE14CallOnCompleteEN2v85LocalINS4_5ValueEEES7_E28trace_event_unique_atomic413 seq_cst, align 8
  br label %bb.d

bb.d:                                             ; preds = %_ZN4node7tracing16TraceEventHelper23GetCategoryGroupEnabledEPKc.exit, %bb.a
  %.0 = phi ptr [ %i.aj, %bb.a ], [ %.0.i, %_ZN4node7tracing16TraceEventHelper23GetCategoryGroupEnabledEPKc.exit ] ; 2 uses
  %i.ar = load i8, ptr %.0, align 1
  %i.as = and i8 %i.ar, 5
  %.not10 = icmp eq i8 %i.as, 0
  br i1 %.not10, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.au = load ptr, ptr %i.at, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %i.av = tail call noundef ptr @_ZN4node7tracing16TraceEventHelper20GetTracingControllerEv() #26 ; 3 uses
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %_ZN4node7tracingL13AddTraceEventEcPKhPKcS4_mmj.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ax = ptrtoint ptr %0 to i64
  %i.ay = load ptr, ptr %i.av, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = call noundef i64 %i.ba(ptr noundef nonnull align 8 dereferenceable(8) %i.av, i8 noundef signext range(i8 73, 102) 101, ptr noundef nonnull %.0, ptr noundef %i.au, ptr noundef null, i64 noundef %i.ax, i64 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef nonnull %3, i32 noundef 6) #26, !inline_history !15 ; 0 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8 ; 3 uses
  %.not.i.i.i = icmp eq ptr %.pre.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit.i.i, label %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i.i.i

_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i.i.i: ; preds = %bb.f
  %i.bc = load ptr, ptr %.pre.i.i, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = load ptr, ptr %i.bd, align 8
  call void %i.be(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.pre.i.i) #26, !inline_history !16
  br label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit.i.i

_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit.i.i: ; preds = %bb.f, %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i.i.i
  %.pr.i = load ptr, ptr %3, align 16             ; 3 uses
  %.not.i.1.i.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i.1.i.i, label %_ZN4node7tracingL13AddTraceEventEcPKhPKcS4_mmj.exit, label %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i.1.i.i

_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i.1.i.i: ; preds = %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit.i.i
  %i.bf = load ptr, ptr %.pr.i, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8
  call void %i.bh(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.pr.i) #26, !inline_history !16
  br label %_ZN4node7tracingL13AddTraceEventEcPKhPKcS4_mmj.exit

_ZN4node7tracingL13AddTraceEventEcPKhPKcS4_mmj.exit: ; preds = %bb.e, %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit.i.i, %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i.1.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %bb.g

bb.g:                                             ; preds = %_ZN4node7tracingL13AddTraceEventEcPKhPKcS4_mmj.exit, %bb.d
  %i.bi = select i1 %i.ah, i32 2, i32 3
  %i.bj = load ptr, ptr %i.a, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 176
  %i.bl = load ptr, ptr %i.bk, align 8            ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 216
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 1904
  %i.bp = load ptr, ptr %i.bo, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 200
  %i.br = load ptr, ptr %i.bq, align 8            ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !nonnull !41, !noundef !41 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 11
  %i.bv = load i8, ptr %i.bu, align 1
  %i.bw = and i8 %i.bv, 3
  %i.bx = icmp eq i8 %i.bw, 2
  br i1 %i.bx, label %bb.h, label %_ZNK4node10BaseObject6objectEv.exit.i.i

end_hunk_0
