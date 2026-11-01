Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/GDBRemoteCommunicationClient?download=true
inline.NumInlined: 5425
inline.NumDeleted: 2487
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_ZN12lldb_private18process_gdb_remote28GDBRemoteCommunicationClient22SendTraceGetBinaryDataERKNS_25TraceGetBinaryDataRequestENSt6chrono8durationIlSt5ratioILl1ELl1EEEE:bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ag = load i8, ptr %i.af, align 8
  %i.ah = or i8 %i.ag, 1
  store i8 %i.ah, ptr %i.af, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !1022)
  %i.ai = load ptr, ptr %15, align 8, !tbaa !187, !noalias !1022
  store ptr %i.ai, ptr %0, align 8, !tbaa !188, !alias.scope !1022
  store ptr null, ptr %15, align 8, !tbaa !187, !noalias !1022
  call void @_ZN12lldb_private6StatusD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %16) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  br label %bb.k

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #25
  %i.aj = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 4 uses
  store ptr %i.aj, ptr %17, align 8, !tbaa !122
  %i.ak = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  store i64 0, ptr %i.ak, align 8, !tbaa !123
  store i8 0, ptr %i.aj, align 8, !tbaa !39
  %i.al = call noundef i64 @_ZN24StringExtractorGDBRemote20GetEscapedBinaryDataERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(64) %14, ptr noundef nonnull align 8 dereferenceable(32) %17) #25 ; 0 uses
  %i.am = load ptr, ptr %17, align 8, !tbaa !149  ; 2 uses
  %i.an = load i64, ptr %i.ak, align 8, !tbaa !123 ; 5 uses
  %i.ao = icmp slt i64 %i.an, 0
  br i1 %i.ao, label %bb.g, label %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i.i

bb.g:                                             ; preds = %bb.f
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.373) #28
  unreachable

_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i.i: ; preds = %bb.f
  %.not.i.i.i = icmp samesign eq i64 %i.an, 0
  br i1 %.not.i.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i

_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i: ; preds = %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.ap = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.an) #27 ; 3 uses
  %i.aq = getelementptr i8, ptr %i.ap, i64 %i.an
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ap, ptr align 1 %i.am, i64 %i.an, i1 false), !tbaa !39
  %.pre = load ptr, ptr %17, align 8, !tbaa !149
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.ar = phi ptr [ %i.am, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i.i ], [ %.pre, %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i ] ; 2 uses
  %.sroa.9.0 = phi ptr [ null, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i.i ], [ %i.aq, %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i ] ; 2 uses
  %.sroa.020.0 = phi ptr [ null, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i.i ], [ %i.ap, %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i ]
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.at = load i8, ptr %i.as, align 8
  %i.au = and i8 %i.at, -2
  store i8 %i.au, ptr %i.as, align 8
  store ptr %.sroa.020.0, ptr %0, align 8, !tbaa !246
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.9.0, ptr %i.av, align 8, !tbaa !247
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.9.0, ptr %i.aw, align 8, !tbaa !1023
  %i.ax = icmp eq ptr %i.ar, %i.aj
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit
  %i.ay = load i64, ptr %i.aj, align 8, !tbaa !39
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.az) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #25
  br label %bb.k

bb.h:                                             ; preds = %_ZN4llvm4jsonlsERNS_11raw_ostreamERKNS0_5ValueE.exit
  %.not = icmp eq ptr %.0.i.i, null
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  store ptr @.str.287, ptr %8, align 8, !tbaa !26, !alias.scope !1024
  %.sroa.22.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 46, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !28, !alias.scope !1024
  %i.ba = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.bb = getelementptr inbounds nuw i8, ptr %8, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ba, i8 0, i64 16, i1 false), !alias.scope !1024
  store i8 1, ptr %i.bb, align 8, !tbaa !35, !alias.scope !1024
  call void @_ZN12lldb_private3Log6FormatEN4llvm9StringRefES2_RKNS1_19formatv_object_baseE(ptr noundef nonnull align 8 dereferenceable(104) %.0.i.i, ptr nonnull @.str.50, i64 105, ptr nonnull @__func__._ZN12lldb_private18process_gdb_remote28GDBRemoteCommunicationClient22SendTraceGetBinaryDataERKNS_25TraceGetBinaryDataRequestENSt6chrono8durationIlSt5ratioILl1ELl1EEEE, i64 22, ptr noundef nonnull align 8 dereferenceable(33) %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bc = call { i32, ptr } @_ZN4llvm22inconvertibleErrorCodeEv() #25 ; 2 uses
  %i.bd = extractvalue { i32, ptr } %i.bc, 0
  %i.be = extractvalue { i32, ptr } %i.bc, 1
  %i.bf = getelementptr inbounds nuw i8, ptr %10, i64 88
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !149
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25, !noalias !1025
  %i.bh = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  store ptr %i.bh, ptr %6, align 8, !tbaa !122, !noalias !1025
  %i.bi = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.bi, align 8, !tbaa !123, !noalias !1025
  store i8 0, ptr %i.bh, align 8, !tbaa !39, !noalias !1025
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25, !noalias !1025
  %i.bj = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 0, ptr %i.bj, align 8, !tbaa !212, !noalias !1025
  %i.bk = getelementptr inbounds nuw i8, ptr %7, i64 40
  store i8 0, ptr %i.bk, align 8, !tbaa !213, !noalias !1025
  %i.bl = getelementptr inbounds nuw i8, ptr %7, i64 44
  store i32 1, ptr %i.bl, align 4, !tbaa !214, !noalias !1025
  %i.bm = getelementptr inbounds nuw i8, ptr %7, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bm, i8 0, i64 24, i1 false), !noalias !1025
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4llvm18raw_string_ostreamE, i64 16), ptr %7, align 8, !tbaa !41, !noalias !1025
  %i.bn = getelementptr inbounds nuw i8, ptr %7, i64 48
  store ptr %6, ptr %i.bn, align 8, !tbaa !215, !noalias !1025
  call void @_ZN4llvm11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(56) %7, ptr noundef null, i64 noundef 0, i32 noundef 0) #25, !noalias !1025
  call void @llvm.lifetime.start.p0(ptr nonnull %5), !noalias !1025
  store ptr @.str.288, ptr %5, align 8, !noalias !1025
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.bg, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !1025
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25, !noalias !1025
  store ptr %5, ptr %4, align 8, !tbaa !400, !noalias !1025
  %i.bo = ptrtoint ptr %4 to i64
  %i.bp = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsENS_12function_refIFiPcmEEE(ptr noundef nonnull align 8 dereferenceable(56) %7, ptr nonnull @_ZN4llvm12function_refIFiPcmEE11callback_fnIZNS_lsIJPKcEEERNS_11raw_ostreamES9_NS_13format_objectIJDpT_EEEEUlS1_mE_EEilS1_m, i64 %i.bo) #25, !noalias !1025 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25, !noalias !1025
  call void @llvm.lifetime.end.p0(ptr nonnull %5), !noalias !1025
  call void @_ZN4llvm11raw_ostreamD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %7) #25, !noalias !1025
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25, !noalias !1025
  %i.bq = call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #27, !noalias !1026 ; 2 uses
  call void @_ZN4llvm11StringErrorC1EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10error_codeb(ptr noundef nonnull align 8 dereferenceable(57) %i.bq, ptr noundef nonnull align 8 dereferenceable(32) %6, i32 %i.bd, ptr %i.be, i1 noundef zeroext true) #25, !noalias !1026
  %i.br = load ptr, ptr %6, align 8, !tbaa !149, !noalias !1025 ; 2 uses
  %i.bs = icmp eq ptr %i.br, %i.bh
  br i1 %i.bs, label %_ZN4llvm5ErrorD2Ev.exit12, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.j
  %i.bt = load i64, ptr %i.bh, align 8, !tbaa !39, !noalias !1025
  %i.bu = add i64 %i.bt, 1
  call void @_ZdlPvm(ptr noundef %i.br, i64 noundef %i.bu) #26, !noalias !1025
  br label %_ZN4llvm5ErrorD2Ev.exit12

_ZN4llvm5ErrorD2Ev.exit12:                        ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25, !noalias !1025
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.bw = load i8, ptr %i.bv, align 8
  %i.bx = or i8 %i.bw, 1
  store i8 %i.bx, ptr %i.bv, align 8
  store ptr %i.bq, ptr %0, align 8, !tbaa !188, !alias.scope !1027
  br label %bb.k

bb.k:                                             ; preds = %_ZN4llvm5ErrorD2Ev.exit12, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZN4llvm5ErrorD2Ev.exit
  call void @_ZN15StringExtractorD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %14) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  call void @_ZN4llvm11raw_ostreamD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %12) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  %i.by = load ptr, ptr %11, align 8, !tbaa !149  ; 2 uses
  %i.bz = icmp eq ptr %i.by, %i.f
  br i1 %i.bz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13: ; preds = %bb.k
  %i.ca = load i64, ptr %i.f, align 8, !tbaa !39
  %i.cb = add i64 %i.ca, 1
  call void @_ZdlPvm(ptr noundef %i.by, i64 noundef %i.cb) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @_ZN12lldb_private15StreamGDBRemoteD1Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %10) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  ret void
}

declare void @_ZN12lldb_private6toJSONERKNS_25TraceGetBinaryDataRequestE(ptr dead_on_unwind writable sret(%"class.llvm::json::Value") align 8, ptr noundef nonnull align 8 dereferenceable(88)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN12lldb_private18process_gdb_remote28GDBRemoteCommunicationClient11GetQOffsetsEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::optional.696") align 8 captures(none) initializes((32, 33)) %0, ptr noundef nonnull align 8 dereferenceable(1289) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %2 = alloca %class.StringExtractorGDBRemote, align 8 ; 10 uses
  %3 = alloca %"struct.lldb_private::process_gdb_remote::QOffsets", align 8 ; 14 uses
  %4 = alloca %"class.llvm::StringRef", align 8   ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  call void @_ZN15StringExtractorC2Ev(ptr noundef nonnull align 8 dereferenceable(64) %2) #25
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV24StringExtractorGDBRemote, i64 16), ptr %2, align 8, !tbaa !41
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  %i.e = call noundef i32 @_ZN12lldb_private18process_gdb_remote19GDBRemoteClientBase28SendPacketAndWaitForResponseEN4llvm9StringRefER24StringExtractorGDBRemoteNSt6chrono8durationIlSt5ratioILl1ELl1EEEEb(ptr noundef nonnull align 8 dereferenceable(464) %1, ptr nonnull @.str.289, i64 8, ptr noundef nonnull align 8 dereferenceable(64) %2, i64 0, i1 noundef zeroext true) #25
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %i.f, align 8, !tbaa !1029
  br label %bb.x

bb.c:                                             ; preds = %bb.a
  %i.g = call noundef zeroext i1 @_ZNK24StringExtractorGDBRemote16IsNormalResponseEv(ptr noundef nonnull align 8 dereferenceable(64) %2) #25
  br i1 %i.g, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %i.h, align 8, !tbaa !1029
  br label %bb.x

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !149  ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.m = load i64, ptr %i.l, align 8, !tbaa !123  ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 10 uses
  %.not.i.i = icmp ult i64 %i.m, 5
  br i1 %.not.i.i, label %thread-pre-split.thread99, label %_ZNK4llvm9StringRef11starts_withES0_.exit.i

_ZNK4llvm9StringRef11starts_withES0_.exit.i:      ; preds = %bb.e
  %i.o = load i32, ptr %i.k, align 1
  %i.p = xor i32 %i.o, 1954047316
  %i.q = getelementptr i8, ptr %i.k, i64 4
  %i.r = load i8, ptr %i.q, align 1
  %i.s = zext i8 %i.r to i32
  %i.t = xor i32 %i.s, 61
  %i.u = or i32 %i.p, %i.t
  %i.v = icmp ne i32 %i.u, 0
  %i.w = zext i1 %i.v to i32
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.f, label %bb.o

bb.f:                                             ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.k, i64 5
  %i.z = add i64 %i.m, -5
  store ptr %i.y, ptr %4, align 8, !tbaa !26
  store i64 %i.z, ptr %i.n, align 8, !tbaa !28
  store i8 0, ptr %3, align 8, !tbaa !1031
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  %i.aa = call noundef zeroext i1 @_ZN4llvm22consumeUnsignedIntegerERNS_9StringRefEjRy(ptr noundef nonnull align 8 dereferenceable(16) %4, i32 noundef 16, ptr noundef nonnull align 8 dereferenceable(8) %i.c) #25
  br i1 %i.aa, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  br label %thread-pre-split.thread

bb.h:                                             ; preds = %bb.f
  %i.ab = load i64, ptr %i.c, align 8, !tbaa !258
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.ae = call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #27 ; 8 uses
  store i64 %i.ab, ptr %i.ae, align 8, !tbaa !28
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 2 uses
  store ptr %i.ae, ptr %i.i, align 8, !tbaa !139
  store ptr %i.af, ptr %i.ac, align 8, !tbaa !259
  store ptr %i.af, ptr %i.ad, align 8, !tbaa !140
  %i.ag = load i64, ptr %i.n, align 8, !tbaa !171 ; 2 uses
  %.not.i.i16 = icmp ult i64 %i.ag, 6
  br i1 %.not.i.i16, label %.sink.split, label %_ZNK4llvm9StringRef11starts_withES0_.exit.i18

_ZNK4llvm9StringRef11starts_withES0_.exit.i18:    ; preds = %bb.h
  %.pre.i17 = load ptr, ptr %4, align 8, !tbaa !170 ; 3 uses
  %i.ah = load i32, ptr %.pre.i17, align 1
  %i.ai = xor i32 %i.ah, 1952531515
  %i.aj = getelementptr i8, ptr %.pre.i17, i64 4
  %i.ak = load i16, ptr %i.aj, align 1
  %i.al = zext i16 %i.ak to i32
  %i.am = xor i32 %i.al, 15713
  %i.an = or i32 %i.ai, %i.am
  %i.ao = icmp ne i32 %i.an, 0
  %i.ap = zext i1 %i.ao to i32
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %bb.i, label %.sink.split

bb.i:                                             ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit.i18
  %i.ar = getelementptr inbounds nuw i8, ptr %.pre.i17, i64 6
  %i.as = add i64 %i.ag, -6
  store ptr %i.ar, ptr %4, align 8, !tbaa !26
  store i64 %i.as, ptr %i.n, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.at = call noundef zeroext i1 @_ZN4llvm22consumeUnsignedIntegerERNS_9StringRefEjRy(ptr noundef nonnull align 8 dereferenceable(16) %4, i32 noundef 16, ptr noundef nonnull align 8 dereferenceable(8) %i.b) #25
  br i1 %i.at, label %"_ZZN12lldb_private18process_gdb_remote28GDBRemoteCommunicationClient11GetQOffsetsEvENK3$_0clEv.exit31", label %bb.j

"_ZZN12lldb_private18process_gdb_remote28GDBRemoteCommunicationClient11GetQOffsetsEvENK3$_0clEv.exit31": ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  br label %.sink.split

bb.j:                                             ; preds = %bb.i
  %i.au = load i64, ptr %i.b, align 8, !tbaa !258
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  %i.av = call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #27 ; 8 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store i64 %i.au, ptr %i.aw, align 8, !tbaa !28
  %i.ax = load i64, ptr %i.ae, align 8
  store i64 %i.ax, ptr %i.av, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 16 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef 8) #26
  store ptr %i.av, ptr %i.i, align 8, !tbaa !139
  store ptr %i.ay, ptr %i.ac, align 8, !tbaa !259
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 16 ; 2 uses
  store ptr %i.az, ptr %i.ad, align 8, !tbaa !140
  %i.ba = load i64, ptr %i.n, align 8, !tbaa !171 ; 3 uses
  %i.bb = icmp eq i64 %i.ba, 0
  br i1 %i.bb, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i8 0, ptr %0, align 8, !tbaa !1031
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.av, ptr %i.bc, align 8, !tbaa !139
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ay, ptr %i.bd, align 8, !tbaa !259
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.az, ptr %i.be, align 8, !tbaa !140
  br label %thread-pre-split.thread

bb.l:                                             ; preds = %bb.j
  %.not.i.i32 = icmp ult i64 %i.ba, 5
  br i1 %.not.i.i32, label %.sink.split, label %_ZNK4llvm9StringRef11starts_withES0_.exit.i34

_ZNK4llvm9StringRef11starts_withES0_.exit.i34:    ; preds = %bb.l
  %.pre.i33 = load ptr, ptr %4, align 8, !tbaa !170 ; 3 uses
  %i.bf = load i32, ptr %.pre.i33, align 1
  %i.bg = xor i32 %i.bf, 1936933435
  %i.bh = getelementptr i8, ptr %.pre.i33, i64 4
  %i.bi = load i8, ptr %i.bh, align 1
  %i.bj = zext i8 %i.bi to i32
  %i.bk = xor i32 %i.bj, 61
  %i.bl = or i32 %i.bg, %i.bk
  %i.bm = icmp ne i32 %i.bl, 0
  %i.bn = zext i1 %i.bm to i32
  %i.bo = icmp eq i32 %i.bn, 0
  br i1 %i.bo, label %bb.m, label %.sink.split

bb.m:                                             ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit.i34
  %i.bp = getelementptr inbounds nuw i8, ptr %.pre.i33, i64 5
  %i.bq = add i64 %i.ba, -5
  store ptr %i.bp, ptr %4, align 8, !tbaa !26
  store i64 %i.bq, ptr %i.n, align 8, !tbaa !28
  %i.br = call fastcc noundef zeroext i1 @"_ZZN12lldb_private18process_gdb_remote28GDBRemoteCommunicationClient11GetQOffsetsEvENK3$_0clEv"(ptr %4, ptr nonnull %3)
  %i.bs = load i64, ptr %i.n, align 8
  %i.bt = icmp eq i64 %i.bs, 0
  %or.cond = select i1 %i.br, i1 %i.bt, i1 false
  %.pr.pre.pre79 = load ptr, ptr %i.i, align 8, !tbaa !139 ; 2 uses
  br i1 %or.cond, label %bb.n, label %thread-pre-split

bb.n:                                             ; preds = %bb.m
  %i.bu = load i8, ptr %3, align 8, !tbaa !1031, !range !137, !noundef !138
  store i8 %i.bu, ptr %0, align 8, !tbaa !1031
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.pr.pre.pre79, ptr %i.bv, align 8, !tbaa !139
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %5 = load <2 x ptr>, ptr %i.ac, align 8, !tbaa !37
  store <2 x ptr> %5, ptr %i.bw, align 8, !tbaa !37
  br label %thread-pre-split.thread

bb.o:                                             ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit.i
  %.not.i.i38 = icmp ult i64 %i.m, 8
  br i1 %.not.i.i38, label %thread-pre-split.thread99, label %_ZNK4llvm9StringRef11starts_withES0_.exit.i40

_ZNK4llvm9StringRef11starts_withES0_.exit.i40:    ; preds = %bb.o
  %i.bx = load i64, ptr %i.k, align 1
  %i.by = icmp ne i64 %i.bx, 4424616568025539924
  %i.bz = zext i1 %i.by to i32
  %i.ca = icmp eq i32 %i.bz, 0
  br i1 %i.ca, label %bb.p, label %thread-pre-split.thread99

bb.p:                                             ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit.i40
  %i.cb = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.cc = add i64 %i.m, -8
  store ptr %i.cb, ptr %4, align 8, !tbaa !26
  store i64 %i.cc, ptr %i.n, align 8, !tbaa !28
  store i8 1, ptr %3, align 8, !tbaa !1031
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.cd = call noundef zeroext i1 @_ZN4llvm22consumeUnsignedIntegerERNS_9StringRefEjRy(ptr noundef nonnull align 8 dereferenceable(16) %4, i32 noundef 16, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #25
  br i1 %i.cd, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %thread-pre-split.thread

bb.r:                                             ; preds = %bb.p
  %i.ce = load i64, ptr %i.a, align 8, !tbaa !258
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ch = call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #27 ; 6 uses
  store i64 %i.ce, ptr %i.ch, align 8, !tbaa !28
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8 ; 4 uses
  store ptr %i.ch, ptr %i.i, align 8, !tbaa !139
  store ptr %i.ci, ptr %i.cf, align 8, !tbaa !259
  store ptr %i.ci, ptr %i.cg, align 8, !tbaa !140
  %i.cj = load i64, ptr %i.n, align 8, !tbaa !171 ; 3 uses
  %i.ck = icmp eq i64 %i.cj, 0
  br i1 %i.ck, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i8 1, ptr %0, align 8, !tbaa !1031
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ch, ptr %i.cl, align 8, !tbaa !139
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ci, ptr %i.cm, align 8, !tbaa !259
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.ci, ptr %i.cn, align 8, !tbaa !140
  br label %thread-pre-split.thread

bb.t:                                             ; preds = %bb.r
  %.not.i.i54 = icmp ult i64 %i.cj, 9
  br i1 %.not.i.i54, label %.sink.split, label %_ZNK4llvm9StringRef11starts_withES0_.exit.i56

_ZNK4llvm9StringRef11starts_withES0_.exit.i56:    ; preds = %bb.t
  %.pre.i55 = load ptr, ptr %4, align 8, !tbaa !170 ; 3 uses
  %i.co = load i64, ptr %.pre.i55, align 1
  %i.cp = xor i64 %i.co, 7450452836583818299
  %i.cq = getelementptr i8, ptr %.pre.i55, i64 8
  %i.cr = load i8, ptr %i.cq, align 1
  %i.cs = zext i8 %i.cr to i64
  %i.ct = xor i64 %i.cs, 61
  %i.cu = or i64 %i.cp, %i.ct
  %i.cv = icmp ne i64 %i.cu, 0
  %i.cw = zext i1 %i.cv to i32
  %i.cx = icmp eq i32 %i.cw, 0
  br i1 %i.cx, label %bb.u, label %.sink.split

bb.u:                                             ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit.i56
  %i.cy = getelementptr inbounds nuw i8, ptr %.pre.i55, i64 9
  %i.cz = add i64 %i.cj, -9
  store ptr %i.cy, ptr %4, align 8, !tbaa !26
  store i64 %i.cz, ptr %i.n, align 8, !tbaa !28
  %i.da = call fastcc noundef zeroext i1 @"_ZZN12lldb_private18process_gdb_remote28GDBRemoteCommunicationClient11GetQOffsetsEvENK3$_0clEv"(ptr %4, ptr nonnull %3)
  %i.db = load i64, ptr %i.n, align 8
  %i.dc = icmp eq i64 %i.db, 0
  %or.cond77 = select i1 %i.da, i1 %i.dc, i1 false
  %.pr.pre.pre = load ptr, ptr %i.i, align 8, !tbaa !139 ; 2 uses
  br i1 %or.cond77, label %bb.v, label %thread-pre-split

bb.v:                                             ; preds = %bb.u
  %i.dd = load i8, ptr %3, align 8, !tbaa !1031, !range !137, !noundef !138
  store i8 %i.dd, ptr %0, align 8, !tbaa !1031
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.pr.pre.pre, ptr %i.de, align 8, !tbaa !139
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 16
  %6 = load <2 x ptr>, ptr %i.cf, align 8, !tbaa !37
  store <2 x ptr> %6, ptr %i.df, align 8, !tbaa !37
  br label %thread-pre-split.thread

thread-pre-split.thread:                          ; preds = %bb.k, %bb.v, %bb.s, %bb.n, %bb.g, %bb.q
  %.sink = phi i8 [ 1, %bb.k ], [ 1, %bb.v ], [ 1, %bb.s ], [ 1, %bb.n ], [ 0, %bb.g ], [ 0, %bb.q ]
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %.sink, ptr %i.dg, align 8, !tbaa !1029
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %_ZN12lldb_private18process_gdb_remote8QOffsetsD2Ev.exit

thread-pre-split.thread99:                        ; preds = %bb.o, %_ZNK4llvm9StringRef11starts_withES0_.exit.i40, %bb.e
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %i.dh, align 8, !tbaa !1029
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %_ZN12lldb_private18process_gdb_remote8QOffsetsD2Ev.exit

thread-pre-split:                                 ; preds = %bb.m, %bb.u
  %.pr.pre = phi ptr [ %.pr.pre.pre79, %bb.m ], [ %.pr.pre.pre, %bb.u ] ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %i.di, align 8, !tbaa !1029
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %.not.i.i.i.i60 = icmp eq ptr %.pr.pre, null
  br i1 %.not.i.i.i.i60, label %_ZN12lldb_private18process_gdb_remote8QOffsetsD2Ev.exit, label %bb.w

.sink.split:                                      ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit.i34, %bb.l, %_ZNK4llvm9StringRef11starts_withES0_.exit.i56, %bb.t, %bb.h, %_ZNK4llvm9StringRef11starts_withES0_.exit.i18, %"_ZZN12lldb_private18process_gdb_remote28GDBRemoteCommunicationClient11GetQOffsetsEvENK3$_0clEv.exit31"
  %.ph = phi ptr [ %i.ae, %bb.h ], [ %i.ae, %"_ZZN12lldb_private18process_gdb_remote28GDBRemoteCommunicationClient11GetQOffsetsEvENK3$_0clEv.exit31" ], [ %i.ae, %_ZNK4llvm9StringRef11starts_withES0_.exit.i18 ], [ %i.av, %_ZNK4llvm9StringRef11starts_withES0_.exit.i34 ], [ %i.av, %bb.l ], [ %i.ch, %_ZNK4llvm9StringRef11starts_withES0_.exit.i56 ], [ %i.ch, %bb.t ]
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %i.dj, align 8, !tbaa !1029
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.w

bb.w:                                             ; preds = %.sink.split, %thread-pre-split
  %i.dk = phi ptr [ %.pr.pre, %thread-pre-split ], [ %.ph, %.sink.split ] ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !140
  %i.dn = ptrtoint ptr %i.dm to i64
  %i.do = ptrtoint ptr %i.dk to i64
  %i.dp = sub i64 %i.dn, %i.do
  call void @_ZdlPvm(ptr noundef nonnull %i.dk, i64 noundef %i.dp) #26
  br label %_ZN12lldb_private18process_gdb_remote8QOffsetsD2Ev.exit

_ZN12lldb_private18process_gdb_remote8QOffsetsD2Ev.exit: ; preds = %thread-pre-split.thread99, %thread-pre-split.thread, %thread-pre-split, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %bb.x

bb.x:                                             ; preds = %_ZN12lldb_private18process_gdb_remote8QOffsetsD2Ev.exit, %bb.d, %bb.b
  call void @_ZN15StringExtractorD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @"_ZZN12lldb_private18process_gdb_remote28GDBRemoteCommunicationClient11GetQOffsetsEvENK3$_0clEv"(ptr nonnull %.0.val, ptr nofree captures(none) %.8.val) unnamed_addr #7 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.b = call noundef zeroext i1 @_ZN4llvm22consumeUnsignedIntegerERNS_9StringRefEjRy(ptr noundef nonnull align 8 dereferenceable(16) %.0.val, i32 noundef 16, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #25 ; 2 uses
  br i1 %i.b, label %_ZN4llvm9StringRef14consumeIntegerImEEbjRT_.exit.thread, label %bb.b

_ZN4llvm9StringRef14consumeIntegerImEEbjRT_.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %i.a, align 8, !tbaa !258  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.d = getelementptr inbounds nuw i8, ptr %.8.val, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 16 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !259  ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.8.val, i64 24 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !140
  %.not.i = icmp eq ptr %i.f, %i.h
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 %i.c, ptr %i.f, align 8, !tbaa !28
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.i, ptr %i.e, align 8, !tbaa !259
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

bb.d:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !139  ; 4 uses
  %i.k = ptrtoint ptr %i.f to i64
  %i.l = ptrtoint ptr %i.j to i64                 ; 2 uses
  %i.m = sub i64 %i.k, %i.l                       ; 5 uses
  %i.n = icmp eq i64 %i.m, 9223372036854775800
  br i1 %i.n, label %bb.e, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i

bb.e:                                             ; preds = %bb.d
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.369) #28
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.d
  %i.o = ashr exact i64 %i.m, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.o, i64 1)
  %i.p = add nsw i64 %.sroa.speculated.i.i.i, %i.o ; 2 uses
  %i.q = icmp ult i64 %i.p, %i.o
  %i.r = call i64 @llvm.umin.i64(i64 %i.p, i64 1152921504606846975)
  %i.s = select i1 %i.q, i64 1152921504606846975, i64 %i.r ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.s, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.t = shl nuw nsw i64 %i.s, 3
  %i.u = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #27 ; 4 uses
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 %i.m ; 2 uses
  store i64 %i.c, ptr %i.v, align 8, !tbaa !28
  %i.w = icmp sgt i64 %i.m, 0
  br i1 %i.w, label %bb.f, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

bb.f:                                             ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.u, ptr align 8 %i.j, i64 %i.m, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i: ; preds = %bb.f, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.not.i17.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  %i.y = load ptr, ptr %i.g, align 8, !tbaa !140
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = sub i64 %i.z, %i.l
  call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.aa) #26
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i: ; preds = %bb.g, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  store ptr %i.u, ptr %i.d, align 8, !tbaa !139
  store ptr %i.x, ptr %i.e, align 8, !tbaa !259
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.s
  store ptr %i.ab, ptr %i.g, align 8, !tbaa !140
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

_ZNSt6vectorImSaImEE9push_backERKm.exit:          ; preds = %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, %bb.c, %_ZN4llvm9StringRef14consumeIntegerImEEbjRT_.exit.thread
  %.0 = xor i1 %i.b, true
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN12lldb_private18process_gdb_remote28GDBRemoteCommunicationClient13GetModuleInfoERKNS_8FileSpecERKNS_8ArchSpecERNS_10ModuleSpecE(ptr noundef nonnull align 8 dereferenceable(1289) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(96) %2, ptr noundef nonnull align 8 dereferenceable(440) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %5 = alloca %"class.lldb_private::StreamString", align 8 ; 9 uses
  %6 = alloca %class.StringExtractorGDBRemote, align 8 ; 11 uses
  %7 = alloca %"class.llvm::StringRef", align 8   ; 7 uses
  %8 = alloca %"class.llvm::StringRef", align 8   ; 11 uses
  %9 = alloca %class.StringExtractor, align 8     ; 5 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %11 = alloca %class.StringExtractor, align 8    ; 5 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %13 = alloca %class.StringExtractor, align 8    ; 5 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %15 = alloca %"class.lldb_private::FileSpec", align 8 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 652 ; 3 uses
  %i.d = load i32, ptr %i.c, align 4
  %i.e = and i32 %i.d, 16384
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @_ZNK12lldb_private8FileSpec7GetPathB5cxx11Eb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %1, i1 noundef zeroext false) #25
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !123
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.m, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @_ZN12lldb_private12StreamStringC1Eb(ptr noundef nonnull align 8 dereferenceable(120) %5, i1 noundef zeroext false) #25
  %i.i = call noundef i64 @_ZN12lldb_private6Stream10PutCStringEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(88) %5, ptr nonnull @.str.295, i64 12) #25 ; 0 uses
  %i.j = load ptr, ptr %4, align 8, !tbaa !149
  %i.k = load i64, ptr %i.f, align 8, !tbaa !123
  %i.l = call noundef i64 @_ZN12lldb_private6Stream18PutStringAsRawHex8EN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(88) %5, ptr %i.j, i64 %i.k) #25 ; 0 uses
  %i.m = call noundef i64 @_ZN12lldb_private6Stream10PutCStringEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(88) %5, ptr nonnull @.str.27, i64 1) #25 ; 0 uses
  %i.n = load ptr, ptr %2, align 8, !tbaa !149
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !123
  %i.q = call noundef i64 @_ZN12lldb_private6Stream18PutStringAsRawHex8EN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(88) %5, ptr %i.n, i64 %i.p) #25 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  call void @_ZN15StringExtractorC2Ev(ptr noundef nonnull align 8 dereferenceable(64) %6) #25
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV24StringExtractorGDBRemote, i64 16), ptr %6, align 8, !tbaa !41
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, i8 0, i64 16, i1 false)
  %i.s = call { ptr, i64 } @_ZNK12lldb_private12StreamString9GetStringEv(ptr noundef nonnull align 8 dereferenceable(120) %5) #25 ; 2 uses
  %i.t = extractvalue { ptr, i64 } %i.s, 0
  %i.u = extractvalue { ptr, i64 } %i.s, 1
  %i.v = call noundef i32 @_ZN12lldb_private18process_gdb_remote19GDBRemoteClientBase28SendPacketAndWaitForResponseEN4llvm9StringRefER24StringExtractorGDBRemoteNSt6chrono8durationIlSt5ratioILl1ELl1EEEEb(ptr noundef nonnull align 8 dereferenceable(464) %0, ptr %i.t, i64 %i.u, ptr noundef nonnull align 8 dereferenceable(64) %6, i64 0, i1 noundef zeroext true) #25
  %.not32 = icmp eq i32 %i.v, 0
  br i1 %.not32, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.w = call noundef zeroext i1 @_ZNK24StringExtractorGDBRemote15IsErrorResponseEv(ptr noundef nonnull align 8 dereferenceable(64) %6) #25
  br i1 %i.w, label %bb.l, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = call noundef zeroext i1 @_ZNK24StringExtractorGDBRemote21IsUnsupportedResponseEv(ptr noundef nonnull align 8 dereferenceable(64) %6) #25
  br i1 %i.x, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.y = load i32, ptr %i.c, align 4
end_hunk_0
