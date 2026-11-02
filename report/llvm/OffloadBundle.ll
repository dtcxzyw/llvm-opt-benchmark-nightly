Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/OffloadBundle?download=true
inline.NumInlined: 1944
inline.NumDeleted: 913
begin_hunk_0_@_ZN4llvm17createStringErrorIJmEEENS_5ErrorEPKcDpRKT_:bb.a
  %i.a = tail call { i32, ptr } @_ZN4llvm22inconvertibleErrorCodeEv() #18 ; 2 uses
  %i.b = extractvalue { i32, ptr } %i.a, 0
  %i.c = extractvalue { i32, ptr } %i.a, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !444)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18, !noalias !444
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  store ptr %i.d, ptr %5, align 8, !tbaa !33, !noalias !444
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.e, align 8, !tbaa !36, !noalias !444
  store i8 0, ptr %i.d, align 8, !tbaa !37, !noalias !444
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18, !noalias !444
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 0, ptr %i.f, align 8, !tbaa !119, !noalias !444
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 40
  store i8 0, ptr %i.g, align 8, !tbaa !120, !noalias !444
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 44
  store i32 1, ptr %i.h, align 4, !tbaa !121, !noalias !444
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i8 0, i64 24, i1 false), !noalias !444
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4llvm18raw_string_ostreamE, i64 16), ptr %6, align 8, !tbaa !24, !noalias !444
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 48
  store ptr %5, ptr %i.j, align 8, !tbaa !123, !noalias !444
  call void @_ZN4llvm11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef null, i64 noundef 0, i32 noundef 0) #18, !noalias !444
  %i.k = load i64, ptr %2, align 8, !tbaa !17, !noalias !445
  call void @llvm.lifetime.start.p0(ptr nonnull %4), !noalias !444
  store ptr %1, ptr %4, align 8, !noalias !444
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.k, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !444
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18, !noalias !444
  store ptr %4, ptr %3, align 8, !tbaa !446, !noalias !444
  %i.l = ptrtoint ptr %3 to i64
  %i.m = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsENS_12function_refIFiPcmEEE(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr nonnull @_ZN4llvm12function_refIFiPcmEE11callback_fnIZNS_lsIJmEEERNS_11raw_ostreamES7_NS_13format_objectIJDpT_EEEEUlS1_mE_EEilS1_m, i64 %i.l) #18, !noalias !444 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18, !noalias !444
  call void @llvm.lifetime.end.p0(ptr nonnull %4), !noalias !444
  call void @_ZN4llvm11raw_ostreamD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %6) #18, !noalias !444
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18, !noalias !444
  call void @llvm.experimental.noalias.scope.decl(metadata !447)
  %i.n = call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #20, !noalias !448 ; 2 uses
  call void @_ZN4llvm11StringErrorC1EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10error_codeb(ptr noundef nonnull align 8 dereferenceable(57) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 %i.b, ptr %i.c, i1 noundef zeroext true) #18, !noalias !448
  store ptr %i.n, ptr %0, align 8, !tbaa !31, !alias.scope !449
  %i.o = load ptr, ptr %5, align 8, !tbaa !35, !noalias !444 ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.d
  br i1 %i.p, label %_ZN4llvm17createStringErrorIJmEEENS_5ErrorESt10error_codePKcDpRKT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.q = load i64, ptr %i.d, align 8, !tbaa !37, !noalias !444
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.r) #19, !noalias !444
  br label %_ZN4llvm17createStringErrorIJmEEENS_5ErrorESt10error_codePKcDpRKT_.exit

_ZN4llvm17createStringErrorIJmEEENS_5ErrorESt10error_codePKcDpRKT_.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18, !noalias !444
  ret void
}

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit, label %_ZN4llvm9StringRefC2EPKc.exit

_ZN4llvm9StringRefC2EPKc.exit:                    ; preds = %bb.a
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #18 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !55   ; 2 uses
  %i.f = ptrtoint ptr %i.c to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = icmp ugt i64 %i.a, %i.h
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZN4llvm9StringRefC2EPKc.exit
  %i.j = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %1, i64 noundef %i.a) #18
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit

bb.c:                                             ; preds = %_ZN4llvm9StringRefC2EPKc.exit
  %.not.i2 = icmp eq i64 %i.a, 0
  br i1 %.not.i2, label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.e, ptr nonnull align 1 %1, i64 %i.a, i1 false)
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !55
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.a
  store ptr %i.l, ptr %i.d, align 8, !tbaa !55
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit

_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit:      ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %.0.i = phi ptr [ %i.j, %bb.b ], [ %0, %bb.d ], [ %0, %bb.c ], [ %0, %bb.a ]
  ret ptr %.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZL16formatWithCommasB5cxx11y(ptr dead_on_unwind noalias nonnull writable align 8 %0, i64 noundef %1) unnamed_addr #3 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !455)
  %i.a = icmp ult i64 %1, 10
  br i1 %i.a, label %_ZNSt8__detail14__to_chars_lenIyEEjT_i.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.g
  %.029.i.i = phi i32 [ %i.i, %bb.g ], [ 1, %bb.a ] ; 4 uses
  %.02328.i.i = phi i64 [ %i.h, %bb.g ], [ %1, %bb.a ] ; 5 uses
  %i.b = icmp ult i64 %.02328.i.i, 100
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.c = add i32 %.029.i.i, 1
  br label %_ZNSt8__detail14__to_chars_lenIyEEjT_i.exit.i

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.d = icmp ult i64 %.02328.i.i, 1000
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = add i32 %.029.i.i, 2
  br label %_ZNSt8__detail14__to_chars_lenIyEEjT_i.exit.i

bb.e:                                             ; preds = %bb.c
  %i.f = icmp ult i64 %.02328.i.i, 10000
  br i1 %i.f, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.g = add i32 %.029.i.i, 3
  br label %_ZNSt8__detail14__to_chars_lenIyEEjT_i.exit.i

bb.g:                                             ; preds = %bb.e
  %i.h = udiv i64 %.02328.i.i, 10000
  %i.i = add i32 %.029.i.i, 4                     ; 2 uses
  %i.j = icmp ult i64 %.02328.i.i, 100000
  br i1 %i.j, label %_ZNSt8__detail14__to_chars_lenIyEEjT_i.exit.i, label %.lr.ph.i.i, !llvm.loop !452

_ZNSt8__detail14__to_chars_lenIyEEjT_i.exit.i:    ; preds = %bb.g, %bb.f, %bb.d, %bb.b, %bb.a
  %.022.i.i = phi i32 [ %i.g, %bb.f ], [ %i.c, %bb.b ], [ %i.e, %bb.d ], [ 1, %bb.a ], [ %i.i, %bb.g ]
  %i.k = zext i32 %.022.i.i to i64
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.l, ptr %0, align 8, !tbaa !33, !alias.scope !455
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.k, i8 noundef signext 0) #18
  %i.m = load ptr, ptr %0, align 8, !tbaa !35, !alias.scope !455 ; 4 uses
  %i.n = icmp ugt i64 %1, 99
  br i1 %i.n, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZNSt8__detail14__to_chars_lenIyEEjT_i.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !36, !alias.scope !455
  %i.q = trunc i64 %i.p to i32
  %i.r = add i32 %i.q, -1
  br label %.lr.ph.i2.i

.lr.ph.i2.i:                                      ; preds = %.lr.ph.i2.i, %.lr.ph.preheader.i.i
  %.020.i.i = phi i64 [ %i.u, %.lr.ph.i2.i ], [ %1, %.lr.ph.preheader.i.i ] ; 3 uses
  %.01819.i.i = phi i32 [ %i.ae, %.lr.ph.i2.i ], [ %i.r, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.s = urem i64 %.020.i.i, 100
  %i.t = shl nuw nsw i64 %i.s, 1
  %i.u = udiv i64 %.020.i.i, 100                  ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIyEEvPcjT_.__digits, i64 %i.t ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  %i.x = load i8, ptr %i.w, align 1, !tbaa !37, !noalias !455
  %i.y = zext i32 %.01819.i.i to i64
  %i.z = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.y
  store i8 %i.x, ptr %i.z, align 1, !tbaa !37
  %i.aa = load i8, ptr %i.v, align 2, !tbaa !37, !noalias !455
  %i.ab = add i32 %.01819.i.i, -1
  %i.ac = zext i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.ac
  store i8 %i.aa, ptr %i.ad, align 1, !tbaa !37
  %i.ae = add i32 %.01819.i.i, -2
  %i.af = icmp ugt i64 %.020.i.i, 9999
  br i1 %i.af, label %.lr.ph.i2.i, label %._crit_edge.i.i, !llvm.loop !453

._crit_edge.i.i:                                  ; preds = %.lr.ph.i2.i, %_ZNSt8__detail14__to_chars_lenIyEEjT_i.exit.i
  %.0.lcssa.i.i = phi i64 [ %1, %_ZNSt8__detail14__to_chars_lenIyEEjT_i.exit.i ], [ %i.u, %.lr.ph.i2.i ] ; 3 uses
  %i.ag = icmp samesign ugt i64 %.0.lcssa.i.i, 9
  br i1 %i.ag, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i
  %i.ah = shl nuw nsw i64 %.0.lcssa.i.i, 1
  %i.ai = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIyEEvPcjT_.__digits, i64 %i.ah ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 1
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !37, !noalias !455
  %i.al = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  store i8 %i.ak, ptr %i.al, align 1, !tbaa !37
  %i.am = load i8, ptr %i.ai, align 2, !tbaa !37, !noalias !455
  br label %_ZNSt7__cxx119to_stringEy.exit

bb.i:                                             ; preds = %._crit_edge.i.i
  %i.an = trunc nuw nsw i64 %.0.lcssa.i.i to i8
  %i.ao = or disjoint i8 %i.an, 48
  br label %_ZNSt7__cxx119to_stringEy.exit

_ZNSt7__cxx119to_stringEy.exit:                   ; preds = %bb.h, %bb.i
  %storemerge.i.i = phi i8 [ %i.ao, %bb.i ], [ %i.am, %bb.h ]
  store i8 %storemerge.i.i, ptr %i.m, align 1, !tbaa !37
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !36
  %i.ar = trunc i64 %i.aq to i32
  %.010 = add i32 %i.ar, -3                       ; 2 uses
  %i.as = icmp sgt i32 %.010, 0
  br i1 %i.as, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_ZNSt7__cxx119to_stringEy.exit
  %2 = zext nneg i32 %.010 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmPKc.exit
  %indvars.iv = phi i64 [ %2, %.lr.ph.preheader ], [ %indvars.iv.next, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmPKc.exit ] ; 5 uses
  %i.at = load i64, ptr %i.ap, align 8, !tbaa !36 ; 2 uses
  %i.au = icmp ult i64 %i.at, %indvars.iv
  br i1 %i.au, label %bb.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmPKc.exit

bb.j:                                             ; preds = %.lr.ph
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.57, i64 noundef %indvars.iv, i64 noundef %i.at) #21
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmPKc.exit: ; preds = %.lr.ph
  %i.av = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %indvars.iv, i64 noundef 0, ptr noundef nonnull @.str.68, i64 noundef 1) #18 ; 0 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -3
  %i.aw = icmp sgt i64 %indvars.iv, 3
  br i1 %i.aw, label %.lr.ph, label %._crit_edge, !llvm.loop !454

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmPKc.exit, %_ZNSt7__cxx119to_stringEy.exit
  ret void
}

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsERKNS_15FormattedNumberE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(23)) local_unnamed_addr #0

declare void @_ZN4llvm12MemoryBuffer16getMemBufferCopyENS_9StringRefERKNS_5TwineE(ptr dead_on_unwind writable sret(%"class.std::unique_ptr") align 8, ptr, i64, ptr noundef nonnull align 8 dereferenceable(34)) local_unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZN4llvm11raw_ostreamD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN4llvm5TimerD1Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176)) unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm6object23CompressedOffloadBundle22CompressedBundleHeader8tryParseENS_9StringRefE(ptr dead_on_unwind noalias nofree writable sret(%"class.llvm::Expected.98") align 8 captures(none) %0, ptr nofree readonly captures(none) %1, i64 %2) local_unnamed_addr #3 align 2 {
switch.lookup:
  %i.a = alloca i64, align 8                      ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %.sroa.026 = alloca %"struct.RawCompressedBundleHeader::V3Header", align 8 ; 13 uses
  %5 = alloca %"class.llvm::Error", align 8       ; 4 uses
  %6 = alloca %"class.llvm::Error", align 8       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.026)
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %2, i64 32)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.026, ptr align 1 %1, i64 %.sroa.speculated, i1 false)
  %.sroa.026.4..sroa_idx52 = getelementptr inbounds nuw i8, ptr %.sroa.026, i64 4
  %.sroa.026.4..sroa.026.4..sroa.026.4..sroa.026.4..0.copyload.i.i.i = load i16, ptr %.sroa.026.4..sroa_idx52, align 4 ; 3 uses
  %i.c = zext nneg i16 %.sroa.026.4..sroa.026.4..sroa.026.4..sroa.026.4..0.copyload.i.i.i to i32
  %i.d = sext i16 %.sroa.026.4..sroa.026.4..sroa.026.4..sroa.026.4..0.copyload.i.i.i to i64
  %i.e = getelementptr i8, ptr @switch.table._ZN4llvm6object23CompressedOffloadBundle22CompressedBundleHeader8tryParseENS_9StringRefE, i64 %i.d
  %switch.gep = getelementptr i8, ptr %i.e, i64 -1
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.f = icmp ult i64 %2, %switch.ext
  br i1 %i.f, label %._crit_edge.i.i.i.i, label %bb.a

._crit_edge.i.i.i.i:                              ; preds = %switch.lookup
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.g = tail call { i32, ptr } @_ZN4llvm22inconvertibleErrorCodeEv() #18, !noalias !468 ; 2 uses
  %i.h = extractvalue { i32, ptr } %i.g, 0
  %i.i = extractvalue { i32, ptr } %i.g, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18, !noalias !469
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store ptr %i.j, ptr %4, align 8, !tbaa !33, !noalias !469
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18, !noalias !469
  store i64 39, ptr %i.b, align 8, !tbaa !17, !noalias !469
  %i.k = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) #18, !noalias !469 ; 3 uses
  store ptr %i.k, ptr %4, align 8, !tbaa !35, !noalias !469
  %i.l = load i64, ptr %i.b, align 8, !tbaa !17, !noalias !469 ; 3 uses
  store i64 %i.l, ptr %i.j, align 8, !tbaa !37, !noalias !469
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %i.k, ptr noundef nonnull align 1 dereferenceable(39) @.str.36, i64 39, i1 false), !noalias !469
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !36, !noalias !469
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.l
  store i8 0, ptr %i.n, align 1, !tbaa !37, !noalias !469
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18, !noalias !469
  call void @_ZN4llvm17createStringErrorEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10error_code(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %5, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 %i.h, ptr %i.i) #18
  %i.o = load ptr, ptr %4, align 8, !tbaa !35, !noalias !469 ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.j
  br i1 %i.p, label %_ZN4llvm5ErrorD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %._crit_edge.i.i.i.i
  %i.q = load i64, ptr %i.j, align 8, !tbaa !37, !noalias !469
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.r) #19
  br label %_ZN4llvm5ErrorD2Ev.exit

_ZN4llvm5ErrorD2Ev.exit:                          ; preds = %._crit_edge.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18, !noalias !469
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.t = load i8, ptr %i.s, align 8
  %i.u = or i8 %i.t, 1
  store i8 %i.u, ptr %i.s, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !470)
  %i.v = load ptr, ptr %5, align 8, !tbaa !31, !noalias !470
  store ptr %i.v, ptr %0, align 8, !tbaa !29, !alias.scope !470
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %bb.e

bb.a:                                             ; preds = %switch.lookup
  switch i16 %.sroa.026.4..sroa.026.4..sroa.026.4..sroa.026.4..0.copyload.i.i.i, label %default.unreachable [
    i16 1, label %bb.b
    i16 2, label %_ZNSt8optionalImEaSIRN4llvm7support6detail31packed_endian_specific_integralIjLNS2_10endiannessE1ELm1ELm1EEEEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS0_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESA_ISt6__and_IJSt9is_scalarImESB_ImNSt5decayISE_E4typeEEEEESt16is_constructibleImJSE_EESt13is_assignableIRmSE_EEERS0_E4typeEOSE_.exit
    i16 3, label %_ZNSt8optionalImEaSIRN4llvm7support6detail31packed_endian_specific_integralImLNS2_10endiannessE1ELm1ELm1EEEEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS0_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESA_ISt6__and_IJSt9is_scalarImESB_ImNSt5decayISE_E4typeEEEEESt16is_constructibleImJSE_EESt13is_assignableIRmSE_EEERS0_E4typeEOSE_.exit
  ]

bb.b:                                             ; preds = %bb.a
  %.sroa.026.8..sroa_idx54 = getelementptr inbounds nuw i8, ptr %.sroa.026, i64 8
  %.sroa.026.8..sroa.026.8..sroa.026.8..sroa.026.8..0.copyload.i.i.i1 = load i32, ptr %.sroa.026.8..sroa_idx54, align 8
  %i.w = zext i32 %.sroa.026.8..sroa.026.8..sroa.026.8..sroa.026.8..0.copyload.i.i.i1 to i64
  %.sroa.026.12..sroa_idx56 = getelementptr inbounds nuw i8, ptr %.sroa.026, i64 12
  %.sroa.026.12..sroa.026.12..sroa.026.12..sroa.026.12..0.copyload.i.i.i2 = load i64, ptr %.sroa.026.12..sroa_idx56, align 4
  br label %bb.c

_ZNSt8optionalImEaSIRN4llvm7support6detail31packed_endian_specific_integralIjLNS2_10endiannessE1ELm1ELm1EEEEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS0_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESA_ISt6__and_IJSt9is_scalarImESB_ImNSt5decayISE_E4typeEEEEESt16is_constructibleImJSE_EESt13is_assignableIRmSE_EEERS0_E4typeEOSE_.exit: ; preds = %bb.a
  %.sroa.026.8..sroa_idx55 = getelementptr inbounds nuw i8, ptr %.sroa.026, i64 8
  %.sroa.026.8..sroa.026.8..sroa.026.8..sroa.026.8..0.copyload.i.i.i.i = load i32, ptr %.sroa.026.8..sroa_idx55, align 8
  %.sink.i = zext i32 %.sroa.026.8..sroa.026.8..sroa.026.8..sroa.026.8..0.copyload.i.i.i.i to i64
  %.sroa.026.12..sroa_idx57 = getelementptr inbounds nuw i8, ptr %.sroa.026, i64 12
  %.sroa.026.12..sroa.026.12..sroa.026.12..sroa.026.12..0.copyload.i.i.i3 = load i32, ptr %.sroa.026.12..sroa_idx57, align 4
  %i.x = zext i32 %.sroa.026.12..sroa.026.12..sroa.026.12..sroa.026.12..0.copyload.i.i.i3 to i64
  %.sroa.026.16..sroa_idx59 = getelementptr inbounds nuw i8, ptr %.sroa.026, i64 16
  %.sroa.026.16..sroa.026.16..sroa.026.16..sroa.026.16..0.copyload.i.i.i4 = load i64, ptr %.sroa.026.16..sroa_idx59, align 8
  br label %bb.c

_ZNSt8optionalImEaSIRN4llvm7support6detail31packed_endian_specific_integralImLNS2_10endiannessE1ELm1ELm1EEEEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS0_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESA_ISt6__and_IJSt9is_scalarImESB_ImNSt5decayISE_E4typeEEEEESt16is_constructibleImJSE_EESt13is_assignableIRmSE_EEERS0_E4typeEOSE_.exit: ; preds = %bb.a
  %.sroa.026.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.026, i64 8
  %.sroa.026.8..sroa.026.8..sroa.026.8..sroa.026.8..0.copyload.i.i.i.i5 = load i64, ptr %.sroa.026.8..sroa_idx, align 8
  %.sroa.026.16..sroa_idx58 = getelementptr inbounds nuw i8, ptr %.sroa.026, i64 16
  %.sroa.026.16..sroa.026.16..sroa.026.16..sroa.026.16..0.copyload.i.i.i6 = load i64, ptr %.sroa.026.16..sroa_idx58, align 8
  %.sroa.026.24..sroa_idx60 = getelementptr inbounds nuw i8, ptr %.sroa.026, i64 24
  %.sroa.026.24..sroa.026.24..sroa.026.24..sroa.026.24..0.copyload.i.i.i7 = load i64, ptr %.sroa.026.24..sroa_idx60, align 8
  br label %bb.c

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %_ZNSt8optionalImEaSIRN4llvm7support6detail31packed_endian_specific_integralImLNS2_10endiannessE1ELm1ELm1EEEEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS0_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESA_ISt6__and_IJSt9is_scalarImESB_ImNSt5decayISE_E4typeEEEEESt16is_constructibleImJSE_EESt13is_assignableIRmSE_EEERS0_E4typeEOSE_.exit, %_ZNSt8optionalImEaSIRN4llvm7support6detail31packed_endian_specific_integralIjLNS2_10endiannessE1ELm1ELm1EEEEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS0_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESA_ISt6__and_IJSt9is_scalarImESB_ImNSt5decayISE_E4typeEEEEESt16is_constructibleImJSE_EESt13is_assignableIRmSE_EEERS0_E4typeEOSE_.exit, %bb.b
  %.sroa.16.0 = phi i64 [ %.sroa.026.12..sroa.026.12..sroa.026.12..sroa.026.12..0.copyload.i.i.i2, %bb.b ], [ %.sroa.026.16..sroa.026.16..sroa.026.16..sroa.026.16..0.copyload.i.i.i4, %_ZNSt8optionalImEaSIRN4llvm7support6detail31packed_endian_specific_integralIjLNS2_10endiannessE1ELm1ELm1EEEEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS0_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESA_ISt6__and_IJSt9is_scalarImESB_ImNSt5decayISE_E4typeEEEEESt16is_constructibleImJSE_EESt13is_assignableIRmSE_EEERS0_E4typeEOSE_.exit ], [ %.sroa.026.24..sroa.026.24..sroa.026.24..sroa.026.24..0.copyload.i.i.i7, %_ZNSt8optionalImEaSIRN4llvm7support6detail31packed_endian_specific_integralImLNS2_10endiannessE1ELm1ELm1EEEEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS0_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESA_ISt6__and_IJSt9is_scalarImESB_ImNSt5decayISE_E4typeEEEEESt16is_constructibleImJSE_EESt13is_assignableIRmSE_EEERS0_E4typeEOSE_.exit ]
  %.sroa.1322.0 = phi i64 [ %i.w, %bb.b ], [ %i.x, %_ZNSt8optionalImEaSIRN4llvm7support6detail31packed_endian_specific_integralIjLNS2_10endiannessE1ELm1ELm1EEEEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS0_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESA_ISt6__and_IJSt9is_scalarImESB_ImNSt5decayISE_E4typeEEEEESt16is_constructibleImJSE_EESt13is_assignableIRmSE_EEERS0_E4typeEOSE_.exit ], [ %.sroa.026.16..sroa.026.16..sroa.026.16..sroa.026.16..0.copyload.i.i.i6, %_ZNSt8optionalImEaSIRN4llvm7support6detail31packed_endian_specific_integralImLNS2_10endiannessE1ELm1ELm1EEEEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS0_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESA_ISt6__and_IJSt9is_scalarImESB_ImNSt5decayISE_E4typeEEEEESt16is_constructibleImJSE_EESt13is_assignableIRmSE_EEERS0_E4typeEOSE_.exit ]
  %.sroa.8.0 = phi i8 [ 0, %bb.b ], [ 1, %_ZNSt8optionalImEaSIRN4llvm7support6detail31packed_endian_specific_integralIjLNS2_10endiannessE1ELm1ELm1EEEEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS0_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESA_ISt6__and_IJSt9is_scalarImESB_ImNSt5decayISE_E4typeEEEEESt16is_constructibleImJSE_EESt13is_assignableIRmSE_EEERS0_E4typeEOSE_.exit ], [ 1, %_ZNSt8optionalImEaSIRN4llvm7support6detail31packed_endian_specific_integralImLNS2_10endiannessE1ELm1ELm1EEEEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS0_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESA_ISt6__and_IJSt9is_scalarImESB_ImNSt5decayISE_E4typeEEEEESt16is_constructibleImJSE_EESt13is_assignableIRmSE_EEERS0_E4typeEOSE_.exit ]
  %.sroa.6.0 = phi i64 [ undef, %bb.b ], [ %.sink.i, %_ZNSt8optionalImEaSIRN4llvm7support6detail31packed_endian_specific_integralIjLNS2_10endiannessE1ELm1ELm1EEEEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS0_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESA_ISt6__and_IJSt9is_scalarImESB_ImNSt5decayISE_E4typeEEEEESt16is_constructibleImJSE_EESt13is_assignableIRmSE_EEERS0_E4typeEOSE_.exit ], [ %.sroa.026.8..sroa.026.8..sroa.026.8..sroa.026.8..0.copyload.i.i.i.i5, %_ZNSt8optionalImEaSIRN4llvm7support6detail31packed_endian_specific_integralImLNS2_10endiannessE1ELm1ELm1EEEEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS0_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESA_ISt6__and_IJSt9is_scalarImESB_ImNSt5decayISE_E4typeEEEEESt16is_constructibleImJSE_EESt13is_assignableIRmSE_EEERS0_E4typeEOSE_.exit ]
  %.sroa.026.6..sroa_idx53 = getelementptr inbounds nuw i8, ptr %.sroa.026, i64 6
  %.sroa.026.6..sroa.026.6..sroa.026.6..sroa.026.6..0.copyload.i.i.i14 = load i16, ptr %.sroa.026.6..sroa_idx53, align 2 ; 2 uses
  %switch = icmp ult i16 %.sroa.026.6..sroa.026.6..sroa.026.6..sroa.026.6..0.copyload.i.i.i14, 2
  br i1 %switch, label %bb.d, label %._crit_edge.i.i.i.i15

bb.d:                                             ; preds = %bb.c
  %i.y = zext nneg i16 %.sroa.026.6..sroa.026.6..sroa.026.6..sroa.026.6..0.copyload.i.i.i14 to i32
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.aa = load i8, ptr %i.z, align 8
  %i.ab = and i8 %i.aa, -2
  store i8 %i.ab, ptr %i.z, align 8
  store i32 %i.c, ptr %0, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.y, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.6.0, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sroa.8.0, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.1322.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.1322.0, ptr %.sroa.1322.0..sroa_idx, align 8
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.16.0, ptr %.sroa.16.0..sroa_idx, align 8
  br label %bb.e

._crit_edge.i.i.i.i15:                            ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.ac = tail call { i32, ptr } @_ZN4llvm22inconvertibleErrorCodeEv() #18, !noalias !471 ; 2 uses
  %i.ad = extractvalue { i32, ptr } %i.ac, 0
  %i.ae = extractvalue { i32, ptr } %i.ac, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18, !noalias !472
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.af, ptr %3, align 8, !tbaa !33, !noalias !472
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18, !noalias !472
  store i64 26, ptr %i.a, align 8, !tbaa !17, !noalias !472
  %i.ag = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #18, !noalias !472 ; 2 uses
  store ptr %i.ag, ptr %3, align 8, !tbaa !35, !noalias !472
  %i.ah = load i64, ptr %i.a, align 8, !tbaa !17, !noalias !472 ; 3 uses
  store i64 %i.ah, ptr %i.af, align 8, !tbaa !37, !noalias !472
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(26) %i.ag, ptr noundef nonnull align 1 dereferenceable(26) @.str.38, i64 26, i1 false), !noalias !472
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.ah, ptr %i.ai, align 8, !tbaa !36, !noalias !472
  %i.aj = load ptr, ptr %3, align 8, !tbaa !35, !noalias !472
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ah
  store i8 0, ptr %i.ak, align 1, !tbaa !37, !noalias !472
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18, !noalias !472
  call void @_ZN4llvm17createStringErrorEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10error_code(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 %i.ad, ptr %i.ae) #18
  %i.al = load ptr, ptr %3, align 8, !tbaa !35, !noalias !472 ; 2 uses
  %i.am = icmp eq ptr %i.al, %i.af
  br i1 %i.am, label %_ZN4llvm5ErrorD2Ev.exit20, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i17: ; preds = %._crit_edge.i.i.i.i15
  %i.an = load i64, ptr %i.af, align 8, !tbaa !37, !noalias !472
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ao) #19
  br label %_ZN4llvm5ErrorD2Ev.exit20

_ZN4llvm5ErrorD2Ev.exit20:                        ; preds = %._crit_edge.i.i.i.i15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18, !noalias !472
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.aq = load i8, ptr %i.ap, align 8
  %i.ar = or i8 %i.aq, 1
  store i8 %i.ar, ptr %i.ap, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !473)
  %i.as = load ptr, ptr %6, align 8, !tbaa !31, !noalias !473
  store ptr %i.as, ptr %0, align 8, !tbaa !29, !alias.scope !473
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZN4llvm5ErrorD2Ev.exit20, %_ZN4llvm5ErrorD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.026)
  ret void
}

declare void @_ZN4llvm11compression10decompressENS0_6FormatENS_8ArrayRefIhEERNS_15SmallVectorImplIhEEm(ptr dead_on_unwind writable sret(%"class.llvm::Error") align 8, i32 noundef, ptr, i64, ptr noundef nonnull align 8 dereferenceable(24), i64 noundef) local_unnamed_addr #0
end_hunk_0
