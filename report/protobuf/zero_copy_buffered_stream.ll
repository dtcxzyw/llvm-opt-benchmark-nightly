Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/protobuf/original/zero_copy_buffered_stream?download=true
inline.NumInlined: 135
inline.NumDeleted: 80
begin_hunk_0_@_ZN6google8protobuf13json_internal22ZeroCopyBufferedStream7AdvanceEm:bb.a
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !41

._crit_edge:                                      ; preds = %_ZNK6google8protobuf13json_internal22ZeroCopyBufferedStream6UnreadEv.exit11, %bb.a
  store i64 1, ptr %0, align 8, !tbaa !32, !alias.scope !45
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge, %bb.g
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN6google8protobuf13json_internal22ZeroCopyBufferedStream9ReadChunkEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #0 align 2 !guid !46 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.d = load i8, ptr %i.c, align 8, !tbaa !47, !range !26, !noundef !33
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.r, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.g = load i32, ptr %i.f, align 4, !tbaa !34
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %bb.c, label %bb.l

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.j = load i8, ptr %i.i, align 8, !tbaa !25, !range !26, !noundef !33
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.l, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.m = load i64, ptr %i.l, align 8, !tbaa !27   ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.010.0.copyload.i = load i64, ptr %i.n, align 8, !tbaa !24 ; 3 uses
  %i.o = icmp ugt i64 %i.m, %.sroa.010.0.copyload.i
  br i1 %i.o, label %bb.e, label %_ZNK6google8protobuf13json_internal22ZeroCopyBufferedStream9RawBufferEmm.exit

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.2, i64 noundef %i.m, i64 noundef %.sroa.010.0.copyload.i) #13
  unreachable

_ZNK6google8protobuf13json_internal22ZeroCopyBufferedStream9RawBufferEmm.exit: ; preds = %bb.d
  %i.p = sub nuw i64 %.sroa.010.0.copyload.i, %i.m ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.r = icmp sgt i64 %i.p, 0
  br i1 %i.r, label %.lr.ph.i.i.i.i.i.i, label %_ZN4absl12lts_202505126c_copyISt17basic_string_viewIcSt11char_traitsIcEESt20back_insert_iteratorISt6vectorIcSaIcEEEEET0_RKT_SB_.exit

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNK6google8protobuf13json_internal22ZeroCopyBufferedStream9RawBufferEmm.exit
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.6.0.copyload.i = load ptr, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !48
  %.pn13.i = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload.i, i64 %i.m
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %.pre.i.i.i.i.i.i = load ptr, ptr %i.s, align 8, !tbaa !29
  %.pre9.i.i.i.i.i.i = load ptr, ptr %i.t, align 8, !tbaa !35
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt20back_insert_iteratorISt6vectorIcSaIcEEEaSERKc.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.u = phi ptr [ %.pre9.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %i.ar, %_ZNSt20back_insert_iteratorISt6vectorIcSaIcEEEaSERKc.exit.i.i.i.i.i.i ] ; 2 uses
  %i.v = phi ptr [ %.pre.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %i.as, %_ZNSt20back_insert_iteratorISt6vectorIcSaIcEEEaSERKc.exit.i.i.i.i.i.i ] ; 2 uses
  %.07.i.i.i.i.i.i = phi i64 [ %i.p, %.lr.ph.i.i.i.i.i.i ], [ %i.au, %_ZNSt20back_insert_iteratorISt6vectorIcSaIcEEEaSERKc.exit.i.i.i.i.i.i ] ; 2 uses
  %.056.i.i.i.i.i.i = phi ptr [ %.pn13.i, %.lr.ph.i.i.i.i.i.i ], [ %i.at, %_ZNSt20back_insert_iteratorISt6vectorIcSaIcEEEaSERKc.exit.i.i.i.i.i.i ] ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.v, %i.u
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = load i8, ptr %.056.i.i.i.i.i.i, align 1, !tbaa !36
  store i8 %i.w, ptr %i.v, align 1, !tbaa !36
  %i.x = load ptr, ptr %i.s, align 8, !tbaa !29
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 1 ; 2 uses
  store ptr %i.y, ptr %i.s, align 8, !tbaa !29
  %.pre8.i.i.i.i.i.i = load ptr, ptr %i.t, align 8, !tbaa !35
  br label %_ZNSt20back_insert_iteratorISt6vectorIcSaIcEEEaSERKc.exit.i.i.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.z = load ptr, ptr %i.q, align 8, !tbaa !28   ; 4 uses
  %i.aa = ptrtoint ptr %i.u to i64
  %i.ab = ptrtoint ptr %i.z to i64                ; 2 uses
  %i.ac = sub i64 %i.aa, %i.ab                    ; 7 uses
  %i.ad = icmp eq i64 %i.ac, 9223372036854775807
  br i1 %i.ad, label %bb.i, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #13
  unreachable

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.h
  %.sroa.speculated.i.i.i.i.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ac, i64 1)
  %i.ae = add i64 %.sroa.speculated.i.i.i.i.i.i.i.i.i.i, %i.ac ; 2 uses
  %i.af = icmp ult i64 %i.ae, %i.ac
  %i.ag = tail call i64 @llvm.umin.i64(i64 %i.ae, i64 9223372036854775807)
  %i.ah = select i1 %i.af, i64 9223372036854775807, i64 %i.ag ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp ne i64 %i.ah, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i.i.i.i)
  %i.ai = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ah) #14 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ac ; 2 uses
  %i.ak = load i8, ptr %.056.i.i.i.i.i.i, align 1, !tbaa !36
  store i8 %i.ak, ptr %i.aj, align 1, !tbaa !36
  %i.al = icmp sgt i64 %i.ac, 0
  br i1 %i.al, label %bb.j, label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i.i.i.i

bb.j:                                             ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ai, ptr align 1 %i.z, i64 %i.ac, i1 false)
  br label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i.i.i.i

_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i.i.i.i: ; preds = %bb.j, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 1 ; 2 uses
  %.not.i17.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i17.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i.i.i.i
  %i.an = load ptr, ptr %i.t, align 8, !tbaa !35
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = sub i64 %i.ao, %i.ab
  tail call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.ap) #15
  br label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i.i.i.i

_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i.i.i.i: ; preds = %bb.k, %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i.i.i.i
  store ptr %i.ai, ptr %i.q, align 8, !tbaa !28
  store ptr %i.am, ptr %i.s, align 8, !tbaa !29
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ah ; 2 uses
  store ptr %i.aq, ptr %i.t, align 8, !tbaa !35
  br label %_ZNSt20back_insert_iteratorISt6vectorIcSaIcEEEaSERKc.exit.i.i.i.i.i.i

_ZNSt20back_insert_iteratorISt6vectorIcSaIcEEEaSERKc.exit.i.i.i.i.i.i: ; preds = %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i.i.i.i, %bb.g
  %i.ar = phi ptr [ %.pre8.i.i.i.i.i.i, %bb.g ], [ %i.aq, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i.i.i.i ]
  %i.as = phi ptr [ %i.y, %bb.g ], [ %i.am, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i.i.i.i ]
  %i.at = getelementptr inbounds nuw i8, ptr %.056.i.i.i.i.i.i, i64 1
  %i.au = add nsw i64 %.07.i.i.i.i.i.i, -1
  %i.av = icmp sgt i64 %.07.i.i.i.i.i.i, 1
  br i1 %i.av, label %bb.f, label %_ZN4absl12lts_202505126c_copyISt17basic_string_viewIcSt11char_traitsIcEESt20back_insert_iteratorISt6vectorIcSaIcEEEEET0_RKT_SB_.exit, !llvm.loop !0

_ZN4absl12lts_202505126c_copyISt17basic_string_viewIcSt11char_traitsIcEESt20back_insert_iteratorISt6vectorIcSaIcEEEEET0_RKT_SB_.exit: ; preds = %_ZNSt20back_insert_iteratorISt6vectorIcSaIcEEEaSERKc.exit.i.i.i.i.i.i, %_ZNK6google8protobuf13json_internal22ZeroCopyBufferedStream9RawBufferEmm.exit
  store i8 1, ptr %i.i, align 8, !tbaa !25
  br label %bb.l

bb.l:                                             ; preds = %_ZN4absl12lts_202505126c_copyISt17basic_string_viewIcSt11char_traitsIcEESt20back_insert_iteratorISt6vectorIcSaIcEEEEET0_RKT_SB_.exit, %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  %i.aw = load ptr, ptr %0, align 8, !tbaa !49    ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !51
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = call noundef zeroext i1 %i.az(ptr noundef nonnull align 8 dereferenceable(8) %i.aw, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) ; 2 uses
  br i1 %i.ba, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i8 1, ptr %i.c, align 8, !tbaa !47
  br label %bb.q

bb.n:                                             ; preds = %bb.l
  %i.bb = load ptr, ptr %i.a, align 8, !tbaa !52
  %i.bc = load i32, ptr %i.b, align 4, !tbaa !7
  %i.bd = sext i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 %i.bd, ptr %i.be, align 8, !tbaa !24
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.bb, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !48
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bg = load i8, ptr %i.bf, align 8, !tbaa !25, !range !26, !noundef !33
  %i.bh = trunc nuw i8 %i.bg to i1
  br i1 %i.bh, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bj = call ptr @_ZN4absl12lts_202505126c_copyISt17basic_string_viewIcSt11char_traitsIcEESt20back_insert_iteratorISt6vectorIcSaIcEEEEET0_RKT_SB_(ptr noundef nonnull align 8 dereferenceable(16) %i.be, ptr nonnull %i.bi) ; 0 uses
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bk, i8 0, i64 16, i1 false)
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %bb.r

bb.r:                                             ; preds = %bb.a, %bb.q
  %.1 = phi i1 [ %i.ba, %bb.q ], [ false, %bb.a ]
  ret i1 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @_ZN4absl12lts_2025051220InvalidArgumentErrorESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind writable sret(%"class.absl::lts_20250512::Status") align 8, i64, ptr) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6google8protobuf13json_internal22ZeroCopyBufferedStream13BufferAtLeastEm(ptr dead_on_unwind noalias writable sret(%"class.absl::lts_20250512::StatusOr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !guid !54 {
bb.a:
  %3 = alloca %"class.google::protobuf::json_internal::BufferingGuard", align 8 ; 7 uses
  %4 = alloca %"class.absl::lts_20250512::Status", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  store ptr null, ptr %3, align 8, !tbaa !39
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 11 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 76 ; 18 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  br label %_ZN6google8protobuf13json_internal14BufferingGuardD2Ev.exit48

_ZN6google8protobuf13json_internal14BufferingGuardD2Ev.exit48: ; preds = %_ZN6google8protobuf13json_internal14BufferingGuardD2Ev.exit48.backedge, %bb.a
  %i.i = phi ptr [ null, %bb.a ], [ %1, %_ZN6google8protobuf13json_internal14BufferingGuardD2Ev.exit48.backedge ] ; 14 uses
  %i.j = load i64, ptr %i.a, align 8, !tbaa !23   ; 8 uses
  %.sroa.010.0.copyload.i.i = load i64, ptr %i.b, align 8, !tbaa !24 ; 4 uses
  %i.k = load i8, ptr %i.c, align 8, !tbaa !25, !range !26, !noundef !33
  %i.l = trunc nuw i8 %i.k to i1                  ; 3 uses
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZN6google8protobuf13json_internal14BufferingGuardD2Ev.exit48
  %i.m = load i64, ptr %i.d, align 8, !tbaa !27
  %i.n = sub i64 %i.j, %i.m
  %i.o = load ptr, ptr %i.e, align 8, !tbaa !28
  %i.p = load ptr, ptr %i.f, align 8, !tbaa !29
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.o to i64
  %i.s = sub i64 %i.q, %i.r
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZN6google8protobuf13json_internal14BufferingGuardD2Ev.exit48
  %.sroa.010.0.i.i = phi i64 [ %i.s, %bb.b ], [ %.sroa.010.0.copyload.i.i, %_ZN6google8protobuf13json_internal14BufferingGuardD2Ev.exit48 ] ; 3 uses
  %.0.i.i = phi i64 [ %i.n, %bb.b ], [ %i.j, %_ZN6google8protobuf13json_internal14BufferingGuardD2Ev.exit48 ] ; 3 uses
  %i.t = icmp ugt i64 %.0.i.i, %.sroa.010.0.i.i
  br i1 %i.t, label %.invoke, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = sub nuw i64 %.sroa.010.0.i.i, %.0.i.i
  %i.v = icmp ult i64 %i.u, %2
  br i1 %i.v, label %bb.e, label %bb.ag

bb.e:                                             ; preds = %bb.d
  br i1 %i.l, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.w = load i64, ptr %i.d, align 8, !tbaa !27
  %i.x = sub i64 %i.j, %i.w
  %i.y = load ptr, ptr %i.e, align 8, !tbaa !28
  %i.z = load ptr, ptr %i.f, align 8, !tbaa !29
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.y to i64
  %i.ac = sub i64 %i.aa, %i.ab
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.010.0.i.i19 = phi i64 [ %i.ac, %bb.f ], [ %.sroa.010.0.copyload.i.i, %bb.e ] ; 3 uses
  %.0.i.i21 = phi i64 [ %i.x, %bb.f ], [ %i.j, %bb.e ] ; 3 uses
  %i.ad = icmp ugt i64 %.0.i.i21, %.sroa.010.0.i.i19
  br i1 %i.ad, label %.invoke, label %bb.h

.invoke:                                          ; preds = %bb.g, %bb.c
  %5 = phi i64 [ %.0.i.i, %bb.c ], [ %.0.i.i21, %bb.g ]
  %6 = phi i64 [ %.sroa.010.0.i.i, %bb.c ], [ %.sroa.010.0.i.i19, %bb.g ]
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.2, i64 noundef %5, i64 noundef %6) #13
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.ae = icmp eq i64 %.sroa.010.0.i.i19, %.0.i.i21
  br i1 %i.ae, label %_ZN6google8protobuf13json_internal14BufferingGuardD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = load i32, ptr %i.g, align 4, !tbaa !34  ; 2 uses
  %i.ag = add nsw i32 %i.af, 1
  store i32 %i.ag, ptr %i.g, align 4, !tbaa !34
  %i.ah = icmp eq i32 %i.af, 0
  br i1 %i.ah, label %bb.j, label %_ZN6google8protobuf13json_internal14BufferingGuardC2EPNS1_22ZeroCopyBufferedStreamE.exit

bb.j:                                             ; preds = %bb.i
  store i64 %i.j, ptr %i.d, align 8, !tbaa !27
  br label %_ZN6google8protobuf13json_internal14BufferingGuardC2EPNS1_22ZeroCopyBufferedStreamE.exit

_ZN6google8protobuf13json_internal14BufferingGuardC2EPNS1_22ZeroCopyBufferedStreamE.exit: ; preds = %bb.j, %bb.i
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %bb.n, label %bb.k

bb.k:                                             ; preds = %_ZN6google8protobuf13json_internal14BufferingGuardC2EPNS1_22ZeroCopyBufferedStreamE.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %i.i, i64 76 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !34 ; 2 uses
  %i.ak = add nsw i32 %i.aj, -1
  store i32 %i.ak, ptr %i.ai, align 4, !tbaa !34
  %i.al = icmp sgt i32 %i.aj, 1
  br i1 %i.al, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.am = getelementptr inbounds nuw i8, ptr %i.i, i64 48 ; 2 uses
  %i.an = load i8, ptr %i.am, align 8, !tbaa !25, !range !26, !noundef !33
  %i.ao = trunc nuw i8 %i.an to i1
  %.not4.i.i.i = xor i1 %i.ao, true
  %i.ap = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  %i.aq = load i8, ptr %i.ap, align 8, !range !26
  %i.ar = trunc nuw i8 %i.aq to i1
  %or.cond.i.i.i = select i1 %.not4.i.i.i, i1 true, i1 %i.ar
  br i1 %or.cond.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.as = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.at = getelementptr inbounds nuw i8, ptr %i.i, i64 32 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !29 ; 2 uses
  %i.av = load ptr, ptr %i.as, align 8, !tbaa !28 ; 3 uses
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !27
  %i.ba = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !40
  %.neg79 = add i64 %i.az, %i.aw
  %i.bc = add i64 %i.bb, %i.ax
  %i.bd = sub i64 %.neg79, %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.i, i64 56 ; 2 uses
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !23
  %storemerge.i.i.i = tail call i64 @llvm.usub.sat.i64(i64 %i.bf, i64 %i.bd)
  store i64 %storemerge.i.i.i, ptr %i.be, align 8, !tbaa !23
  %.not.i.i.i.i.i = icmp eq ptr %i.au, %i.av
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIcSaIcEE5clearEv.exit.i.i.i, label %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i.i.i

_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i.i.i:  ; preds = %bb.m
  store ptr %i.av, ptr %i.at, align 8, !tbaa !29
  br label %_ZNSt6vectorIcSaIcEE5clearEv.exit.i.i.i

_ZNSt6vectorIcSaIcEE5clearEv.exit.i.i.i:          ; preds = %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i.i.i, %bb.m
  store i8 0, ptr %i.am, align 8, !tbaa !25
  br label %bb.n

bb.n:                                             ; preds = %_ZN6google8protobuf13json_internal14BufferingGuardC2EPNS1_22ZeroCopyBufferedStreamE.exit, %bb.k, %bb.l, %_ZNSt6vectorIcSaIcEE5clearEv.exit.i.i.i
  store ptr %1, ptr %3, align 8, !tbaa !39
  %i.bg = load i32, ptr %i.g, align 4, !tbaa !34  ; 5 uses
  %i.bh = add nsw i32 %i.bg, 1
  store i32 %i.bh, ptr %i.g, align 4, !tbaa !34
  %i.bi = icmp eq i32 %i.bg, 0
  br i1 %i.bi, label %_ZN6google8protobuf13json_internal14BufferingGuardaSERKS2_.exit.thread, label %_ZN6google8protobuf13json_internal14BufferingGuardaSERKS2_.exit

_ZN6google8protobuf13json_internal14BufferingGuardaSERKS2_.exit.thread: ; preds = %bb.n
  %i.bj = load i64, ptr %i.a, align 8, !tbaa !23
  store i64 %i.bj, ptr %i.d, align 8, !tbaa !27
  store i32 %i.bg, ptr %i.g, align 4, !tbaa !34
  br label %bb.o

_ZN6google8protobuf13json_internal14BufferingGuardaSERKS2_.exit: ; preds = %bb.n
  store i32 %i.bg, ptr %i.g, align 4, !tbaa !34
  %i.bk = icmp sgt i32 %i.bg, 0
  br i1 %i.bk, label %_ZN6google8protobuf13json_internal14BufferingGuardD2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZN6google8protobuf13json_internal14BufferingGuardaSERKS2_.exit.thread, %_ZN6google8protobuf13json_internal14BufferingGuardaSERKS2_.exit
  %i.bl = load i8, ptr %i.c, align 8, !tbaa !25, !range !26, !noundef !33
  %i.bm = trunc nuw i8 %i.bl to i1
  %.not4.i.i = xor i1 %i.bm, true
  %i.bn = load i8, ptr %i.h, align 8, !range !26
  %i.bo = trunc nuw i8 %i.bn to i1
  %or.cond.i.i = select i1 %.not4.i.i, i1 true, i1 %i.bo
  br i1 %or.cond.i.i, label %_ZN6google8protobuf13json_internal14BufferingGuardD2Ev.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bp = load ptr, ptr %i.f, align 8, !tbaa !29  ; 2 uses
  %i.bq = load ptr, ptr %i.e, align 8, !tbaa !28  ; 3 uses
  %i.br = ptrtoint ptr %i.bp to i64
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = load i64, ptr %i.d, align 8, !tbaa !27
  %i.bu = add i64 %i.bt, %i.br
  %i.bv = add i64 %.sroa.010.0.copyload.i.i, %i.bs
  %i.bw = sub i64 %i.bu, %i.bv
  %i.bx = load i64, ptr %i.a, align 8, !tbaa !23
  %storemerge.i.i = tail call i64 @llvm.usub.sat.i64(i64 %i.bx, i64 %i.bw)
  store i64 %storemerge.i.i, ptr %i.a, align 8, !tbaa !23
  %.not.i.i.i.i = icmp eq ptr %i.bp, %i.bq
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIcSaIcEE5clearEv.exit.i.i, label %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i.i:    ; preds = %bb.p
  store ptr %i.bq, ptr %i.f, align 8, !tbaa !29
  br label %_ZNSt6vectorIcSaIcEE5clearEv.exit.i.i

_ZNSt6vectorIcSaIcEE5clearEv.exit.i.i:            ; preds = %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i.i, %bb.p
  store i8 0, ptr %i.c, align 8, !tbaa !25
  br label %_ZN6google8protobuf13json_internal14BufferingGuardD2Ev.exit

_ZN6google8protobuf13json_internal14BufferingGuardD2Ev.exit: ; preds = %_ZNSt6vectorIcSaIcEE5clearEv.exit.i.i, %bb.o, %_ZN6google8protobuf13json_internal14BufferingGuardaSERKS2_.exit, %bb.h
  %i.by = phi ptr [ %1, %_ZNSt6vectorIcSaIcEE5clearEv.exit.i.i ], [ %1, %bb.o ], [ %1, %_ZN6google8protobuf13json_internal14BufferingGuardaSERKS2_.exit ], [ %i.i, %bb.h ] ; 10 uses
  %i.bz = invoke noundef zeroext i1 @_ZN6google8protobuf13json_internal22ZeroCopyBufferedStream9ReadChunkEv(ptr noundef nonnull align 8 dereferenceable(80) %1)
          to label %bb.q unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.q:                                             ; preds = %_ZN6google8protobuf13json_internal14BufferingGuardD2Ev.exit
  br i1 %i.bz, label %bb.y, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  invoke void @_ZN4absl12lts_2025051220InvalidArgumentErrorESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20250512::Status") align 8 %4, i64 14, ptr nonnull @.str)
          to label %bb.s unwind label %bb.w

bb.s:                                             ; preds = %bb.r
  %i.ca = load i64, ptr %4, align 8, !tbaa !32    ; 2 uses
  store i64 %i.ca, ptr %0, align 8, !tbaa !32
  store i64 55, ptr %4, align 8, !tbaa !32
  %i.cb = icmp eq i64 %i.ca, 1
  br i1 %i.cb, label %bb.t, label %_ZN4absl12lts_202505126StatusD2Ev.exit, !prof !55

bb.t:                                             ; preds = %bb.s
  invoke void @_ZN4absl12lts_2025051217internal_statusor6Helper26HandleInvalidStatusCtorArgEPNS0_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %_ZN4absl12lts_202505128StatusOrIN6google8protobuf13json_internal14BufferingGuardEEC2INS0_6StatusETnNSt9enable_ifIXsr17internal_statusor29IsConstructionFromStatusValidILb0ES5_T_EE5valueEiE4typeELi0EEEOSA_.exit unwind label %.body

.body:                                            ; preds = %bb.t
  %i.cc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_202505126StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(16) %0) #16
  call void @_ZN4absl12lts_202505126StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #16
  br label %bb.x

_ZN4absl12lts_202505128StatusOrIN6google8protobuf13json_internal14BufferingGuardEEC2INS0_6StatusETnNSt9enable_ifIXsr17internal_statusor29IsConstructionFromStatusValidILb0ES5_T_EE5valueEiE4typeELi0EEEOSA_.exit: ; preds = %bb.t
  %.pre = load i64, ptr %4, align 8, !tbaa !32    ; 2 uses
  %i.cd = trunc i64 %.pre to i1
  br i1 %i.cd, label %_ZN4absl12lts_202505126StatusD2Ev.exit, label %bb.u

bb.u:                                             ; preds = %_ZN4absl12lts_202505128StatusOrIN6google8protobuf13json_internal14BufferingGuardEEC2INS0_6StatusETnNSt9enable_ifIXsr17internal_statusor29IsConstructionFromStatusValidILb0ES5_T_EE5valueEiE4typeELi0EEEOSA_.exit
  %i.ce = inttoptr i64 %.pre to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.ce)
          to label %_ZN4absl12lts_202505126StatusD2Ev.exit unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cf = landingpad { ptr, i32 }
          catch ptr null
  %i.cg = extractvalue { ptr, i32 } %i.cf, 0
  call void @__clang_call_terminate(ptr %i.cg) #17
  unreachable

_ZN4absl12lts_202505126StatusD2Ev.exit:           ; preds = %bb.s, %_ZN4absl12lts_202505128StatusOrIN6google8protobuf13json_internal14BufferingGuardEEC2INS0_6StatusETnNSt9enable_ifIXsr17internal_statusor29IsConstructionFromStatusValidILb0ES5_T_EE5valueEiE4typeELi0EEEOSA_.exit, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %_ZN6google8protobuf13json_internal14BufferingGuardD2Ev.exit60

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZN6google8protobuf13json_internal14BufferingGuardD2Ev.exit, %.invoke
  %lpad.loopexit.split-lp210 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.w:                                             ; preds = %bb.r
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.x:                                             ; preds = %.body, %bb.w
  %.pn11 = phi { ptr, i32 } [ %i.cc, %.body ], [ %i.ch, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %.loopexit.split-lp

bb.y:                                             ; preds = %bb.q
  %i.ci = load i32, ptr %i.g, align 4, !tbaa !34  ; 2 uses
  %i.cj = add nsw i32 %i.ci, 1
  store i32 %i.cj, ptr %i.g, align 4, !tbaa !34
  %i.ck = icmp eq i32 %i.ci, 0
  br i1 %i.ck, label %bb.z, label %_ZN6google8protobuf13json_internal14BufferingGuardC2EPNS1_22ZeroCopyBufferedStreamE.exit28

bb.z:                                             ; preds = %bb.y
  %i.cl = load i64, ptr %i.a, align 8, !tbaa !23
  store i64 %i.cl, ptr %i.d, align 8, !tbaa !27
  br label %_ZN6google8protobuf13json_internal14BufferingGuardC2EPNS1_22ZeroCopyBufferedStreamE.exit28

_ZN6google8protobuf13json_internal14BufferingGuardC2EPNS1_22ZeroCopyBufferedStreamE.exit28: ; preds = %bb.z, %bb.y
  %.not.i.i29 = icmp eq ptr %i.by, null
  br i1 %.not.i.i29, label %bb.ad, label %bb.aa

bb.aa:                                            ; preds = %_ZN6google8protobuf13json_internal14BufferingGuardC2EPNS1_22ZeroCopyBufferedStreamE.exit28
  %i.cm = getelementptr inbounds nuw i8, ptr %i.by, i64 76 ; 2 uses
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !34 ; 2 uses
  %i.co = add nsw i32 %i.cn, -1
  store i32 %i.co, ptr %i.cm, align 4, !tbaa !34
  %i.cp = icmp sgt i32 %i.cn, 1
  br i1 %i.cp, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cq = getelementptr inbounds nuw i8, ptr %i.by, i64 48 ; 2 uses
  %i.cr = load i8, ptr %i.cq, align 8, !tbaa !25, !range !26, !noundef !33
  %i.cs = trunc nuw i8 %i.cr to i1
  %.not4.i.i.i30 = xor i1 %i.cs, true
  %i.ct = getelementptr inbounds nuw i8, ptr %i.by, i64 72
  %i.cu = load i8, ptr %i.ct, align 8, !range !26
  %i.cv = trunc nuw i8 %i.cu to i1
  %or.cond.i.i.i31 = select i1 %.not4.i.i.i30, i1 true, i1 %i.cv
  br i1 %or.cond.i.i.i31, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cw = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  %i.cx = getelementptr inbounds nuw i8, ptr %i.by, i64 32 ; 2 uses
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !29 ; 2 uses
  %i.cz = load ptr, ptr %i.cw, align 8, !tbaa !28 ; 3 uses
  %i.da = ptrtoint ptr %i.cy to i64
  %i.db = ptrtoint ptr %i.cz to i64
  %i.dc = getelementptr inbounds nuw i8, ptr %i.by, i64 64
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !27
  %i.de = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.df = load i64, ptr %i.de, align 8, !tbaa !40
  %.neg87 = add i64 %i.dd, %i.da
  %i.dg = add i64 %i.df, %i.db
  %i.dh = sub i64 %.neg87, %i.dg
  %i.di = getelementptr inbounds nuw i8, ptr %i.by, i64 56 ; 2 uses
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !23
  %storemerge.i.i.i33 = tail call i64 @llvm.usub.sat.i64(i64 %i.dj, i64 %i.dh)
  store i64 %storemerge.i.i.i33, ptr %i.di, align 8, !tbaa !23
  %.not.i.i.i.i.i34 = icmp eq ptr %i.cy, %i.cz
  br i1 %.not.i.i.i.i.i34, label %_ZNSt6vectorIcSaIcEE5clearEv.exit.i.i.i36, label %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i.i.i35

_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i.i.i35: ; preds = %bb.ac
  store ptr %i.cz, ptr %i.cx, align 8, !tbaa !29
  br label %_ZNSt6vectorIcSaIcEE5clearEv.exit.i.i.i36

_ZNSt6vectorIcSaIcEE5clearEv.exit.i.i.i36:        ; preds = %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i.i.i35, %bb.ac
  store i8 0, ptr %i.cq, align 8, !tbaa !25
  br label %bb.ad

bb.ad:                                            ; preds = %_ZN6google8protobuf13json_internal14BufferingGuardC2EPNS1_22ZeroCopyBufferedStreamE.exit28, %bb.aa, %bb.ab, %_ZNSt6vectorIcSaIcEE5clearEv.exit.i.i.i36
  store ptr %1, ptr %3, align 8, !tbaa !39
  %i.dk = load i32, ptr %i.g, align 4, !tbaa !34  ; 5 uses
  %i.dl = add nsw i32 %i.dk, 1
  store i32 %i.dl, ptr %i.g, align 4, !tbaa !34
  %i.dm = icmp eq i32 %i.dk, 0
  br i1 %i.dm, label %_ZN6google8protobuf13json_internal14BufferingGuardaSERKS2_.exit39.thread, label %_ZN6google8protobuf13json_internal14BufferingGuardaSERKS2_.exit39

_ZN6google8protobuf13json_internal14BufferingGuardaSERKS2_.exit39.thread: ; preds = %bb.ad
  %i.dn = load i64, ptr %i.a, align 8, !tbaa !23
  store i64 %i.dn, ptr %i.d, align 8, !tbaa !27
  store i32 %i.dk, ptr %i.g, align 4, !tbaa !34
  br label %bb.ae

_ZN6google8protobuf13json_internal14BufferingGuardaSERKS2_.exit39: ; preds = %bb.ad
  store i32 %i.dk, ptr %i.g, align 4, !tbaa !34
  %i.do = icmp sgt i32 %i.dk, 0
  br i1 %i.do, label %_ZN6google8protobuf13json_internal14BufferingGuardD2Ev.exit48.backedge, label %bb.ae

_ZN6google8protobuf13json_internal14BufferingGuardD2Ev.exit48.backedge: ; preds = %_ZN6google8protobuf13json_internal14BufferingGuardaSERKS2_.exit39, %bb.ae, %_ZNSt6vectorIcSaIcEE5clearEv.exit.i.i47
  br label %_ZN6google8protobuf13json_internal14BufferingGuardD2Ev.exit48, !llvm.loop !53

bb.ae:                                            ; preds = %_ZN6google8protobuf13json_internal14BufferingGuardaSERKS2_.exit39.thread, %_ZN6google8protobuf13json_internal14BufferingGuardaSERKS2_.exit39
  %i.dp = load i8, ptr %i.c, align 8, !tbaa !25, !range !26, !noundef !33
  %i.dq = trunc nuw i8 %i.dp to i1
  %.not4.i.i41 = xor i1 %i.dq, true
  %i.dr = load i8, ptr %i.h, align 8, !range !26
  %i.ds = trunc nuw i8 %i.dr to i1
  %or.cond.i.i42 = select i1 %.not4.i.i41, i1 true, i1 %i.ds
  br i1 %or.cond.i.i42, label %_ZN6google8protobuf13json_internal14BufferingGuardD2Ev.exit48.backedge, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dt = load ptr, ptr %i.f, align 8, !tbaa !29  ; 2 uses
  %i.du = load ptr, ptr %i.e, align 8, !tbaa !28  ; 3 uses
  %i.dv = ptrtoint ptr %i.dt to i64
  %i.dw = ptrtoint ptr %i.du to i64
  %i.dx = load i64, ptr %i.d, align 8, !tbaa !27
  %i.dy = load i64, ptr %i.b, align 8, !tbaa !40
  %.neg90 = add i64 %i.dx, %i.dv
  %i.dz = add i64 %i.dy, %i.dw
  %i.ea = sub i64 %.neg90, %i.dz
  %i.eb = load i64, ptr %i.a, align 8, !tbaa !23
  %storemerge.i.i44 = tail call i64 @llvm.usub.sat.i64(i64 %i.eb, i64 %i.ea)
  store i64 %storemerge.i.i44, ptr %i.a, align 8, !tbaa !23
  %.not.i.i.i.i45 = icmp eq ptr %i.dt, %i.du
  br i1 %.not.i.i.i.i45, label %_ZNSt6vectorIcSaIcEE5clearEv.exit.i.i47, label %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i.i46

_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i.i46:  ; preds = %bb.af
  store ptr %i.du, ptr %i.f, align 8, !tbaa !29
  br label %_ZNSt6vectorIcSaIcEE5clearEv.exit.i.i47

_ZNSt6vectorIcSaIcEE5clearEv.exit.i.i47:          ; preds = %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i.i46, %bb.af
  store i8 0, ptr %i.c, align 8, !tbaa !25
  br label %_ZN6google8protobuf13json_internal14BufferingGuardD2Ev.exit48.backedge

bb.ag:                                            ; preds = %bb.d
  %i.ec = load i32, ptr %i.g, align 4, !tbaa !34  ; 4 uses
  %i.ed = add nsw i32 %i.ec, 1                    ; 4 uses
  store i32 %i.ed, ptr %i.g, align 4, !tbaa !34
  %i.ee = icmp eq i32 %i.ec, 0
  br i1 %i.ee, label %.thread74, label %bb.ah

.thread74:                                        ; preds = %bb.ag
  store i64 %i.j, ptr %i.d, align 8, !tbaa !27
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.ef, align 8, !tbaa !39
  store i64 1, ptr %0, align 8, !tbaa !32
  store i32 %i.ed, ptr %i.g, align 4, !tbaa !34
  br label %_ZN6google8protobuf13json_internal14BufferingGuardD2Ev.exit60

bb.ah:                                            ; preds = %bb.ag
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.eg, align 8, !tbaa !39
  %i.eh = add nsw i32 %i.ec, 2
  store i32 %i.eh, ptr %i.g, align 4, !tbaa !34
  %i.ei = icmp eq i32 %i.ed, 0
  br i1 %i.ei, label %.thread75, label %bb.ai

.thread75:                                        ; preds = %bb.ah
  store i64 %i.j, ptr %i.d, align 8, !tbaa !27
  store i64 1, ptr %0, align 8, !tbaa !32
  store i32 0, ptr %i.g, align 4, !tbaa !34
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  store i64 1, ptr %0, align 8, !tbaa !32
  store i32 %i.ed, ptr %i.g, align 4, !tbaa !34
  %i.ej = icmp sgt i32 %i.ec, -1
  br i1 %i.ej, label %_ZN6google8protobuf13json_internal14BufferingGuardD2Ev.exit60, label %bb.aj

bb.aj:                                            ; preds = %.thread75, %bb.ai
  %.not4.i.i53 = xor i1 %i.l, true
  %i.ek = load i8, ptr %i.h, align 8, !range !26
  %i.el = trunc nuw i8 %i.ek to i1
  %or.cond.i.i54 = select i1 %.not4.i.i53, i1 true, i1 %i.el
  br i1 %or.cond.i.i54, label %_ZN6google8protobuf13json_internal14BufferingGuardD2Ev.exit60, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.em = load ptr, ptr %i.f, align 8, !tbaa !29  ; 2 uses
  %i.en = load ptr, ptr %i.e, align 8, !tbaa !28  ; 3 uses
  %i.eo = ptrtoint ptr %i.em to i64
  %i.ep = ptrtoint ptr %i.en to i64
  %i.eq = load i64, ptr %i.d, align 8, !tbaa !27
  %i.er = add i64 %i.eq, %i.eo
  %i.es = add i64 %.sroa.010.0.copyload.i.i, %i.ep
  %i.et = sub i64 %i.er, %i.es
  %storemerge.i.i56 = tail call i64 @llvm.usub.sat.i64(i64 %i.j, i64 %i.et)
  store i64 %storemerge.i.i56, ptr %i.a, align 8, !tbaa !23
  %.not.i.i.i.i57 = icmp eq ptr %i.em, %i.en
  br i1 %.not.i.i.i.i57, label %_ZNSt6vectorIcSaIcEE5clearEv.exit.i.i59, label %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i.i58

_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i.i58:  ; preds = %bb.ak
  store ptr %i.en, ptr %i.f, align 8, !tbaa !29
  br label %_ZNSt6vectorIcSaIcEE5clearEv.exit.i.i59

_ZNSt6vectorIcSaIcEE5clearEv.exit.i.i59:          ; preds = %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i.i58, %bb.ak
  store i8 0, ptr %i.c, align 8, !tbaa !25
  br label %_ZN6google8protobuf13json_internal14BufferingGuardD2Ev.exit60

_ZN6google8protobuf13json_internal14BufferingGuardD2Ev.exit60: ; preds = %_ZNSt6vectorIcSaIcEE5clearEv.exit.i.i59, %bb.aj, %bb.ai, %.thread74, %_ZN4absl12lts_202505126StatusD2Ev.exit
  %i.eu = phi ptr [ %i.i, %_ZNSt6vectorIcSaIcEE5clearEv.exit.i.i59 ], [ %i.i, %bb.aj ], [ %i.i, %bb.ai ], [ %i.i, %.thread74 ], [ %i.by, %_ZN4absl12lts_202505126StatusD2Ev.exit ] ; 9 uses
  %.not.i61 = icmp eq ptr %i.eu, null
  br i1 %.not.i61, label %_ZN6google8protobuf13json_internal14BufferingGuardD2Ev.exit69, label %bb.al

bb.al:                                            ; preds = %_ZN6google8protobuf13json_internal14BufferingGuardD2Ev.exit60
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 76 ; 2 uses
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !34 ; 2 uses
  %i.ex = add nsw i32 %i.ew, -1
  store i32 %i.ex, ptr %i.ev, align 4, !tbaa !34
  %i.ey = icmp sgt i32 %i.ew, 1
  br i1 %i.ey, label %_ZN6google8protobuf13json_internal14BufferingGuardD2Ev.exit69, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ez = getelementptr inbounds nuw i8, ptr %i.eu, i64 48 ; 2 uses
  %i.fa = load i8, ptr %i.ez, align 8, !tbaa !25, !range !26, !noundef !33
  %i.fb = trunc nuw i8 %i.fa to i1
  %.not4.i.i62 = xor i1 %i.fb, true
  %i.fc = getelementptr inbounds nuw i8, ptr %i.eu, i64 72
  %i.fd = load i8, ptr %i.fc, align 8, !range !26
  %i.fe = trunc nuw i8 %i.fd to i1
  %or.cond.i.i63 = select i1 %.not4.i.i62, i1 true, i1 %i.fe
  br i1 %or.cond.i.i63, label %_ZN6google8protobuf13json_internal14BufferingGuardD2Ev.exit69, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ff = getelementptr inbounds nuw i8, ptr %i.eu, i64 24
  %i.fg = getelementptr inbounds nuw i8, ptr %i.eu, i64 32 ; 2 uses
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !29 ; 2 uses
  %i.fi = load ptr, ptr %i.ff, align 8, !tbaa !28 ; 3 uses
  %i.fj = ptrtoint ptr %i.fh to i64
  %i.fk = ptrtoint ptr %i.fi to i64
  %i.fl = getelementptr inbounds nuw i8, ptr %i.eu, i64 64
  %i.fm = load i64, ptr %i.fl, align 8, !tbaa !27
  %i.fn = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  %i.fo = load i64, ptr %i.fn, align 8, !tbaa !40
  %.neg84 = add i64 %i.fm, %i.fj
  %i.fp = add i64 %i.fo, %i.fk
  %i.fq = sub i64 %.neg84, %i.fp
  %i.fr = getelementptr inbounds nuw i8, ptr %i.eu, i64 56 ; 2 uses
  %i.fs = load i64, ptr %i.fr, align 8, !tbaa !23
  %storemerge.i.i65 = call i64 @llvm.usub.sat.i64(i64 %i.fs, i64 %i.fq)
  store i64 %storemerge.i.i65, ptr %i.fr, align 8, !tbaa !23
  %.not.i.i.i.i66 = icmp eq ptr %i.fh, %i.fi
  br i1 %.not.i.i.i.i66, label %_ZNSt6vectorIcSaIcEE5clearEv.exit.i.i68, label %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i.i67

_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i.i67:  ; preds = %bb.an
  store ptr %i.fi, ptr %i.fg, align 8, !tbaa !29
  br label %_ZNSt6vectorIcSaIcEE5clearEv.exit.i.i68

_ZNSt6vectorIcSaIcEE5clearEv.exit.i.i68:          ; preds = %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i.i67, %bb.an
  store i8 0, ptr %i.ez, align 8, !tbaa !25
  br label %_ZN6google8protobuf13json_internal14BufferingGuardD2Ev.exit69

_ZN6google8protobuf13json_internal14BufferingGuardD2Ev.exit69: ; preds = %_ZN6google8protobuf13json_internal14BufferingGuardD2Ev.exit60, %bb.al, %bb.am, %_ZNSt6vectorIcSaIcEE5clearEv.exit.i.i68
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  ret void

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.x
  %.pn13.pn = phi { ptr, i32 } [ %.pn11, %bb.x ], [ %lpad.loopexit.split-lp210, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN6google8protobuf13json_internal14BufferingGuardD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  resume { ptr, i32 } %.pn13.pn
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13json_internal14BufferingGuardD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !guid !56 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !39     ; 9 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %_ZN6google8protobuf13json_internal22ZeroCopyBufferedStream13DownRefBufferEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 76 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !34   ; 2 uses
  %i.d = add nsw i32 %i.c, -1
  store i32 %i.d, ptr %i.b, align 4, !tbaa !34
  %i.e = icmp sgt i32 %i.c, 1
  br i1 %i.e, label %_ZN6google8protobuf13json_internal22ZeroCopyBufferedStream13DownRefBufferEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  %i.g = load i8, ptr %i.f, align 8, !tbaa !25, !range !26, !noundef !33
  %i.h = trunc nuw i8 %i.g to i1
  %.not4.i = xor i1 %i.h, true
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.j = load i8, ptr %i.i, align 8, !range !26
  %i.k = trunc nuw i8 %i.j to i1
  %or.cond.i = select i1 %.not4.i, i1 true, i1 %i.k
  br i1 %or.cond.i, label %_ZN6google8protobuf13json_internal22ZeroCopyBufferedStream13DownRefBufferEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !29   ; 2 uses
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !28   ; 3 uses
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.s = load i64, ptr %i.r, align 8, !tbaa !27
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !40
  %.neg2 = add i64 %i.s, %i.p
  %i.v = add i64 %i.u, %i.q
  %i.w = sub i64 %.neg2, %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !23
  %storemerge.i = tail call i64 @llvm.usub.sat.i64(i64 %i.y, i64 %i.w)
  store i64 %storemerge.i, ptr %i.x, align 8, !tbaa !23
  %.not.i.i.i = icmp eq ptr %i.n, %i.o
  br i1 %.not.i.i.i, label %_ZNSt6vectorIcSaIcEE5clearEv.exit.i, label %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i:      ; preds = %bb.d
  store ptr %i.o, ptr %i.m, align 8, !tbaa !29
  br label %_ZNSt6vectorIcSaIcEE5clearEv.exit.i

_ZNSt6vectorIcSaIcEE5clearEv.exit.i:              ; preds = %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i, %bb.d
  store i8 0, ptr %i.f, align 8, !tbaa !25
  br label %_ZN6google8protobuf13json_internal22ZeroCopyBufferedStream13DownRefBufferEv.exit

_ZN6google8protobuf13json_internal22ZeroCopyBufferedStream13DownRefBufferEv.exit: ; preds = %bb.b, %bb.c, %_ZNSt6vectorIcSaIcEE5clearEv.exit.i, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4absl12lts_202505126StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !guid !57 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !32     ; 2 uses
  %i.b = trunc i64 %i.a to i1
  br i1 %i.b, label %_ZN4absl12lts_202505126Status5UnrefEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = inttoptr i64 %i.a to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.c)
          to label %_ZN4absl12lts_202505126Status5UnrefEm.exit unwind label %bb.c

_ZN4absl12lts_202505126Status5UnrefEm.exit:       ; preds = %bb.a, %bb.b
  ret void

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #17
  unreachable
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6google8protobuf13json_internal22ZeroCopyBufferedStream16BufferAtLeastOneEv(ptr dead_on_unwind noalias writable sret(%"class.absl::lts_20250512::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(80) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !guid !61 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %bb.a
  %i.g = load i64, ptr %i.a, align 8, !tbaa !23   ; 2 uses
  %.sroa.010.0.copyload.i.i = load i64, ptr %i.b, align 8, !tbaa !24
  %i.h = load i8, ptr %i.c, align 8, !tbaa !25, !range !26, !noundef !33
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = load i64, ptr %i.d, align 8, !tbaa !27
  %i.k = sub i64 %i.g, %i.j
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !28
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !29
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.l to i64
  %i.p = sub i64 %i.n, %i.o
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.010.0.i.i = phi i64 [ %i.p, %bb.c ], [ %.sroa.010.0.copyload.i.i, %bb.b ] ; 3 uses
  %.0.i.i = phi i64 [ %i.k, %bb.c ], [ %i.g, %bb.b ] ; 3 uses
  %i.q = icmp ugt i64 %.0.i.i, %.sroa.010.0.i.i
  br i1 %i.q, label %bb.e, label %_ZNK6google8protobuf13json_internal22ZeroCopyBufferedStream6UnreadEv.exit

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.2, i64 noundef %.0.i.i, i64 noundef %.sroa.010.0.i.i) #13
  unreachable

_ZNK6google8protobuf13json_internal22ZeroCopyBufferedStream6UnreadEv.exit: ; preds = %bb.d
  %i.r = icmp eq i64 %.sroa.010.0.i.i, %.0.i.i
  br i1 %i.r, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNK6google8protobuf13json_internal22ZeroCopyBufferedStream6UnreadEv.exit
  %i.s = tail call noundef zeroext i1 @_ZN6google8protobuf13json_internal22ZeroCopyBufferedStream9ReadChunkEv(ptr noundef nonnull align 8 dereferenceable(80) %1)
  br i1 %i.s, label %bb.b, label %bb.g, !llvm.loop !58

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN4absl12lts_2025051220InvalidArgumentErrorESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind writable sret(%"class.absl::lts_20250512::Status") align 8 %0, i64 14, ptr nonnull @.str)
  br label %bb.i

bb.h:                                             ; preds = %_ZNK6google8protobuf13json_internal22ZeroCopyBufferedStream6UnreadEv.exit
  store i64 1, ptr %0, align 8, !tbaa !32, !alias.scope !62
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN6google8protobuf13json_internal22ZeroCopyBufferedStream13DownRefBufferEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(80) %0) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !guid !63 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !34   ; 2 uses
  %i.c = add nsw i32 %i.b, -1
  store i32 %i.c, ptr %i.a, align 4, !tbaa !34
  %i.d = icmp sgt i32 %i.b, 1
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.f = load i8, ptr %i.e, align 8, !tbaa !25, !range !26, !noundef !33
  %i.g = trunc nuw i8 %i.f to i1
  %.not4 = xor i1 %i.g, true
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.i = load i8, ptr %i.h, align 8, !range !26
  %i.j = trunc nuw i8 %i.i to i1
  %or.cond = select i1 %.not4, i1 true, i1 %i.j
  br i1 %or.cond, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !29   ; 2 uses
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !28   ; 3 uses
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.r = load i64, ptr %i.q, align 8, !tbaa !27
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !40
  %.neg8 = add i64 %i.r, %i.o
  %i.u = add i64 %i.t, %i.p
  %i.v = sub i64 %.neg8, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !23
  %storemerge = tail call i64 @llvm.usub.sat.i64(i64 %i.x, i64 %i.v)
  store i64 %storemerge, ptr %i.w, align 8, !tbaa !23
  %.not.i.i = icmp eq ptr %i.m, %i.n
  br i1 %.not.i.i, label %_ZNSt6vectorIcSaIcEE5clearEv.exit, label %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.c
  store ptr %i.n, ptr %i.l, align 8, !tbaa !29
  br label %_ZNSt6vectorIcSaIcEE5clearEv.exit

_ZNSt6vectorIcSaIcEE5clearEv.exit:                ; preds = %bb.c, %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i
  store i8 0, ptr %i.e, align 8, !tbaa !25
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %_ZNSt6vectorIcSaIcEE5clearEv.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZN4absl12lts_202505126c_copyISt17basic_string_viewIcSt11char_traitsIcEESt20back_insert_iteratorISt6vectorIcSaIcEEEEET0_RKT_SB_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %1) local_unnamed_addr #0 comdat !guid !64 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !40     ; 2 uses
  %i.b = icmp sgt i64 %i.a, 0
  br i1 %i.b, label %.lr.ph.i.i.i.i.i, label %_ZSt4copyIPKcSt20back_insert_iteratorISt6vectorIcSaIcEEEET0_T_S8_S7_.exit

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !65
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %.pre.i.i.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !29
  %.pre9.i.i.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !35
  br label %bb.b

bb.b:                                             ; preds = %_ZNSt20back_insert_iteratorISt6vectorIcSaIcEEEaSERKc.exit.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.g = phi ptr [ %.pre9.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.ad, %_ZNSt20back_insert_iteratorISt6vectorIcSaIcEEEaSERKc.exit.i.i.i.i.i ] ; 2 uses
  %i.h = phi ptr [ %.pre.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.ae, %_ZNSt20back_insert_iteratorISt6vectorIcSaIcEEEaSERKc.exit.i.i.i.i.i ] ; 2 uses
  %.07.i.i.i.i.i = phi i64 [ %i.a, %.lr.ph.i.i.i.i.i ], [ %i.ag, %_ZNSt20back_insert_iteratorISt6vectorIcSaIcEEEaSERKc.exit.i.i.i.i.i ] ; 2 uses
  %.056.i.i.i.i.i = phi ptr [ %i.d, %.lr.ph.i.i.i.i.i ], [ %i.af, %_ZNSt20back_insert_iteratorISt6vectorIcSaIcEEEaSERKc.exit.i.i.i.i.i ] ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.h, %i.g
  br i1 %.not.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i8, ptr %.056.i.i.i.i.i, align 1, !tbaa !36
  store i8 %i.i, ptr %i.h, align 1, !tbaa !36
  %i.j = load ptr, ptr %i.e, align 8, !tbaa !29
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 1 ; 2 uses
  store ptr %i.k, ptr %i.e, align 8, !tbaa !29
  %.pre8.i.i.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !35
  br label %_ZNSt20back_insert_iteratorISt6vectorIcSaIcEEEaSERKc.exit.i.i.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %1, align 8, !tbaa !28     ; 4 uses
  %i.m = ptrtoint ptr %i.g to i64
  %i.n = ptrtoint ptr %i.l to i64                 ; 2 uses
  %i.o = sub i64 %i.m, %i.n                       ; 7 uses
  %i.p = icmp eq i64 %i.o, 9223372036854775807
  br i1 %i.p, label %bb.e, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #13
  unreachable

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i: ; preds = %bb.d
  %.sroa.speculated.i.i.i.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.o, i64 1)
  %i.q = add i64 %.sroa.speculated.i.i.i.i.i.i.i.i.i, %i.o ; 2 uses
  %i.r = icmp ult i64 %i.q, %i.o
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.q, i64 9223372036854775807)
  %i.t = select i1 %i.r, i64 9223372036854775807, i64 %i.s ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp ne i64 %i.t, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i.i.i)
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #14 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.o ; 2 uses
  %i.w = load i8, ptr %.056.i.i.i.i.i, align 1, !tbaa !36
  store i8 %i.w, ptr %i.v, align 1, !tbaa !36
  %i.x = icmp sgt i64 %i.o, 0
  br i1 %i.x, label %bb.f, label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i.i.i

bb.f:                                             ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.u, ptr align 1 %i.l, i64 %i.o, i1 false)
  br label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i.i.i

_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i.i.i: ; preds = %bb.f, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 1 ; 2 uses
  %.not.i17.i.i.i.i.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i17.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i.i.i
  %i.z = load ptr, ptr %i.f, align 8, !tbaa !35
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = sub i64 %i.aa, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.ab) #15
  br label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i.i.i

_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i.i.i: ; preds = %bb.g, %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i.i.i
  store ptr %i.u, ptr %1, align 8, !tbaa !28
  store ptr %i.y, ptr %i.e, align 8, !tbaa !29
  %i.ac = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.t ; 2 uses
  store ptr %i.ac, ptr %i.f, align 8, !tbaa !35
  br label %_ZNSt20back_insert_iteratorISt6vectorIcSaIcEEEaSERKc.exit.i.i.i.i.i

_ZNSt20back_insert_iteratorISt6vectorIcSaIcEEEaSERKc.exit.i.i.i.i.i: ; preds = %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i.i.i, %bb.c
  %i.ad = phi ptr [ %.pre8.i.i.i.i.i, %bb.c ], [ %i.ac, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i.i.i ]
  %i.ae = phi ptr [ %i.k, %bb.c ], [ %i.y, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i.i.i ]
  %i.af = getelementptr inbounds nuw i8, ptr %.056.i.i.i.i.i, i64 1
  %i.ag = add nsw i64 %.07.i.i.i.i.i, -1
  %i.ah = icmp sgt i64 %.07.i.i.i.i.i, 1
  br i1 %i.ah, label %bb.b, label %_ZSt4copyIPKcSt20back_insert_iteratorISt6vectorIcSaIcEEEET0_T_S8_S7_.exit, !llvm.loop !0

_ZSt4copyIPKcSt20back_insert_iteratorISt6vectorIcSaIcEEEET0_T_S8_S7_.exit: ; preds = %_ZNSt20back_insert_iteratorISt6vectorIcSaIcEEEaSERKc.exit.i.i.i.i.i, %bb.a
  ret ptr %1
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #5 comdat !guid !66 {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #16 ; 0 uses
  tail call void @_ZSt9terminatev() #17
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #6

declare void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #8

declare void @_ZN4absl12lts_2025051217internal_statusor6Helper26HandleInvalidStatusCtorArgEPNS0_6StatusE(ptr noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #7

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #10

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold nofree noreturn }
attributes #7 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { noreturn }
attributes #14 = { builtin allocsize(0) }
attributes #15 = { builtin nounwind }
attributes #16 = { nounwind }
attributes #17 = { noreturn nounwind }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!7}

!0 = distinct !{!0, !30}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!6, !6, i64 0}
!8 = !{i64 159238147492795386}
!9 = !{i64 8489510732544943000}
!10 = !{i64 3662591302246041750}
!11 = !{i64 -869515606339597336}
!12 = !{!"any pointer", !5, i64 0}
!13 = !{!"p1 _ZTSN6google8protobuf2io19ZeroCopyInputStreamE", !12, i64 0}
!14 = !{!"long", !5, i64 0}
!15 = !{!"p1 omnipotent char", !12, i64 0}
!16 = !{!"_ZTSSt17basic_string_viewIcSt11char_traitsIcEE", !14, i64 0, !15, i64 8}
!17 = !{!"_ZTSNSt12_Vector_baseIcSaIcEE17_Vector_impl_dataE", !15, i64 0, !15, i64 8, !15, i64 16}
!18 = !{!"_ZTSNSt12_Vector_baseIcSaIcEE12_Vector_implE", !17, i64 0}
!19 = !{!"_ZTSSt12_Vector_baseIcSaIcEE", !18, i64 0}
!20 = !{!"_ZTSSt6vectorIcSaIcEE", !19, i64 0}
!21 = !{!"bool", !5, i64 0}
!22 = !{!"_ZTSN6google8protobuf13json_internal22ZeroCopyBufferedStreamE", !13, i64 0, !16, i64 8, !20, i64 24, !21, i64 48, !14, i64 56, !14, i64 64, !21, i64 72, !6, i64 76}
!23 = !{!22, !14, i64 56}
!24 = !{!14, !14, i64 0}
!25 = !{!22, !21, i64 48}
!26 = !{i8 0, i8 2}
!27 = !{!22, !14, i64 64}
!28 = !{!17, !15, i64 0}
!29 = !{!17, !15, i64 8}
!30 = !{!"llvm.loop.mustprogress"}
!31 = !{!"_ZTSN4absl12lts_202505126StatusE", !14, i64 0}
!32 = !{!31, !14, i64 0}
!33 = !{}
!34 = !{!22, !6, i64 76}
!35 = !{!17, !15, i64 16}
!36 = !{!5, !5, i64 0}
!37 = !{!"p1 _ZTSN6google8protobuf13json_internal22ZeroCopyBufferedStreamE", !12, i64 0}
!38 = !{!"_ZTSN6google8protobuf13json_internal14BufferingGuardE", !37, i64 0}
!39 = !{!38, !37, i64 0}
!40 = !{!16, !14, i64 0}
!41 = distinct !{!41, !30}
!42 = distinct !{!42, i1 true, !"_ZN4absl12lts_202505128OkStatusEv"}
!43 = distinct !{!43, !42, !"_ZN4absl12lts_202505128OkStatusEv: argument 0"}
!44 = !{i64 -2646162831079121544}
!45 = !{!43}
!46 = !{i64 -3163875338682890238}
!47 = !{!22, !21, i64 72}
!48 = !{!15, !15, i64 0}
!49 = !{!22, !13, i64 0}
!50 = !{!"vtable pointer", !4, i64 0}
!51 = !{!50, !50, i64 0}
!52 = !{!12, !12, i64 0}
!53 = distinct !{!53, !30}
!54 = !{i64 -8123638643997872470}
!55 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!56 = !{i64 8808009885637842093}
!57 = !{i64 -4323020194712072189}
!58 = distinct !{!58, !30}
!59 = distinct !{!59, i1 true, !"_ZN4absl12lts_202505128OkStatusEv"}
!60 = distinct !{!60, !59, !"_ZN4absl12lts_202505128OkStatusEv: argument 0"}
!61 = !{i64 -336160048978109952}
!62 = !{!60}
!63 = !{i64 3900192065598209674}
!64 = !{i64 308021006430868584}
!65 = !{!16, !15, i64 8}
!66 = !{i64 1080103601501470593}
end_hunk_0
