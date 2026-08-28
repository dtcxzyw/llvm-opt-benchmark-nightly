Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/IiqDecoder?download=true
inline.NumInlined: 1447
inline.NumDeleted: 765
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_ZNSt6vectorIN8rawspeed13PhaseOneStripESaIS1_EE12emplace_backIJRjNS0_10ByteStreamEEEERS1_DpOT_:bb.a
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %1, align 4, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  store i32 %i.e, ptr %i.b, align 8, !tbaa !47
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !31   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr %i.h, ptr %i.a, align 8, !tbaa !31
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %0, align 8, !tbaa !28     ; 5 uses
  %i.j = ptrtoint ptr %i.b to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k                       ; 3 uses
  %i.m = icmp eq i64 %i.l, 9223372036854775776
  br i1 %i.m, label %bb.d, label %_ZNKSt6vectorIN8rawspeed13PhaseOneStripESaIS1_EE12_M_check_lenEmPKc.exit.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.19) #28
  unreachable

_ZNKSt6vectorIN8rawspeed13PhaseOneStripESaIS1_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.c
  %i.n = ashr exact i64 %i.l, 5                   ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.n, i64 1)
  %i.o = add nsw i64 %.sroa.speculated.i.i, %i.n  ; 2 uses
  %i.p = icmp ult i64 %i.o, %i.n
  %i.q = tail call i64 @llvm.umin.i64(i64 %i.o, i64 288230376151711743)
  %i.r = select i1 %i.p, i64 288230376151711743, i64 %i.q ; 3 uses
  %.not.i.i = icmp ne i64 %i.r, 0
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.s = shl nuw nsw i64 %i.r, 5
  %i.t = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #27 ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.l ; 2 uses
  %i.v = load i32, ptr %1, align 4, !tbaa !46
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  store i32 %i.v, ptr %i.u, align 8, !tbaa !47
  %.not10.i.i.i.i = icmp eq ptr %i.i, %i.b
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN8rawspeed13PhaseOneStripESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNKSt6vectorIN8rawspeed13PhaseOneStripESaIS1_EE12_M_check_lenEmPKc.exit.i, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i.i ], [ %i.t, %_ZNKSt6vectorIN8rawspeed13PhaseOneStripESaIS1_EE12_M_check_lenEmPKc.exit.i ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i.i ], [ %i.i, %_ZNKSt6vectorIN8rawspeed13PhaseOneStripESaIS1_EE12_M_check_lenEmPKc.exit.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.012.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.0911.i.i.i.i, i64 32, i1 false), !alias.scope !49
  %i.x = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 32 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.x, %i.b
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN8rawspeed13PhaseOneStripESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i, label %.lr.ph.i.i.i.i, !llvm.loop !53

_ZNSt6vectorIN8rawspeed13PhaseOneStripESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt6vectorIN8rawspeed13PhaseOneStripESaIS1_EE12_M_check_lenEmPKc.exit.i
  %.0.lcssa.i.i.i.i = phi ptr [ %i.t, %_ZNKSt6vectorIN8rawspeed13PhaseOneStripESaIS1_EE12_M_check_lenEmPKc.exit.i ], [ %i.y, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 32
  %.not.i34.i = icmp eq ptr %i.i, null
  br i1 %.not.i34.i, label %_ZNSt6vectorIN8rawspeed13PhaseOneStripESaIS1_EE17_M_realloc_insertIJRjNS0_10ByteStreamEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN8rawspeed13PhaseOneStripESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i
  %i.aa = load ptr, ptr %i.c, align 8, !tbaa !32
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = sub i64 %i.ab, %i.k
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.ac) #26
  br label %_ZNSt6vectorIN8rawspeed13PhaseOneStripESaIS1_EE17_M_realloc_insertIJRjNS0_10ByteStreamEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit

_ZNSt6vectorIN8rawspeed13PhaseOneStripESaIS1_EE17_M_realloc_insertIJRjNS0_10ByteStreamEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit: ; preds = %_ZNSt6vectorIN8rawspeed13PhaseOneStripESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i, %bb.e
  store ptr %i.t, ptr %0, align 8, !tbaa !28
  store ptr %i.z, ptr %i.a, align 8, !tbaa !31
  %i.ad = getelementptr inbounds nuw [32 x i8], ptr %i.t, i64 %i.r
  store ptr %i.ad, ptr %i.c, align 8, !tbaa !32
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN8rawspeed13PhaseOneStripESaIS1_EE17_M_realloc_insertIJRjNS0_10ByteStreamEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit, %bb.b
  %i.ae = phi ptr [ %.0.lcssa.i.i.i.i, %_ZNSt6vectorIN8rawspeed13PhaseOneStripESaIS1_EE17_M_realloc_insertIJRjNS0_10ByteStreamEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit ], [ %i.g, %bb.b ]
  ret ptr %i.ae
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8rawspeed10IiqDecoder17decodeRawInternalEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.rawspeed::RawImage") align 8 captures(none) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(112) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector.6", align 8     ; 9 uses
  %3 = alloca %"class.std::vector.11", align 8    ; 4 uses
  %4 = alloca %"class.rawspeed::PhaseOneDecompressor", align 8 ; 9 uses
  %5 = alloca %"class.rawspeed::RawImage", align 16 ; 4 uses
  %6 = alloca %"class.rawspeed::ByteStream", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load i32, ptr %i.a, align 8, !tbaa !54   ; 2 uses
  %.not.i = icmp ult i32 %i.b, 8
  br i1 %.not.i, label %bb.b, label %_ZNK8rawspeed6Buffer10getSubViewEj.exit

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.20, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEj) #18
  unreachable

_ZNK8rawspeed6Buffer10getSubViewEj.exit:          ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = add i32 %i.b, -8                         ; 13 uses
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !55   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 6 uses
  %i.g = zext nneg i32 %i.d to i64                ; 6 uses
  %.not.i.i = icmp samesign ult i32 %i.d, 4
  br i1 %.not.i.i, label %bb.c, label %_ZN8rawspeed10ByteStream9skipBytesEj.exit

bb.c:                                             ; preds = %_ZNK8rawspeed6Buffer10getSubViewEj.exit
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.17, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed10ByteStream5checkEj) #18
  unreachable

_ZN8rawspeed10ByteStream9skipBytesEj.exit:        ; preds = %_ZNK8rawspeed6Buffer10getSubViewEj.exit
  %.not.i.i77 = icmp samesign ult i32 %i.d, 8
  br i1 %.not.i.i77, label %bb.d, label %_ZN8rawspeed10ByteStream9skipBytesEj.exit78

bb.d:                                             ; preds = %_ZN8rawspeed10ByteStream9skipBytesEj.exit
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.17, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed10ByteStream5checkEj) #18
  unreachable

_ZN8rawspeed10ByteStream9skipBytesEj.exit78:      ; preds = %_ZN8rawspeed10ByteStream9skipBytesEj.exit
  %.not.i.i.i.i.i.i = icmp samesign ult i32 %i.d, 12
  br i1 %.not.i.i.i.i.i.i, label %bb.e, label %_ZN8rawspeed10ByteStream6getU32Ev.exit

bb.e:                                             ; preds = %_ZN8rawspeed10ByteStream9skipBytesEj.exit78
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.22, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj) #18
  unreachable

_ZN8rawspeed10ByteStream6getU32Ev.exit:           ; preds = %_ZN8rawspeed10ByteStream9skipBytesEj.exit78
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.0.copyload.i.i.i.i.i.i = load i32, ptr %i.h, align 1 ; 5 uses
  %.not.i.i79 = icmp ugt i32 %.0.copyload.i.i.i.i.i.i, %i.d
  br i1 %.not.i.i79, label %bb.f, label %_ZN8rawspeed10ByteStream11setPositionEj.exit

bb.f:                                             ; preds = %_ZN8rawspeed10ByteStream6getU32Ev.exit
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.17, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed10ByteStream5checkEj) #18
  unreachable

_ZN8rawspeed10ByteStream11setPositionEj.exit:     ; preds = %_ZN8rawspeed10ByteStream6getU32Ev.exit
  %i.i = zext nneg i32 %.0.copyload.i.i.i.i.i.i to i64 ; 2 uses
  %i.j = add nuw nsw i64 %i.i, 4
  %.not.i.i.i.i.i.i80 = icmp samesign ugt i64 %i.j, %i.g
  br i1 %.not.i.i.i.i.i.i80, label %bb.g, label %_ZN8rawspeed10ByteStream6getU32Ev.exit83

bb.g:                                             ; preds = %_ZN8rawspeed10ByteStream11setPositionEj.exit
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.22, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj) #18
  unreachable

_ZN8rawspeed10ByteStream6getU32Ev.exit83:         ; preds = %_ZN8rawspeed10ByteStream11setPositionEj.exit
  %i.k = add nuw nsw i32 %.0.copyload.i.i.i.i.i.i, 4
  %i.l = icmp samesign ule i32 %i.k, %i.d
  tail call void @llvm.assume(i1 %i.l)
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.i
  %.0.copyload.i.i.i.i.i.i81 = load i32, ptr %i.m, align 1 ; 5 uses
  %i.n = zext nneg i32 %.0.copyload.i.i.i.i.i.i to i64
  %i.o = add nuw nsw i64 %i.n, 8
  %.not.i.i84 = icmp samesign ugt i64 %i.o, %i.g
  br i1 %.not.i.i84, label %bb.h, label %_ZN8rawspeed10ByteStream9skipBytesEj.exit85

bb.h:                                             ; preds = %_ZN8rawspeed10ByteStream6getU32Ev.exit83
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.17, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed10ByteStream5checkEj) #18
  unreachable

_ZN8rawspeed10ByteStream9skipBytesEj.exit85:      ; preds = %_ZN8rawspeed10ByteStream6getU32Ev.exit83
  %i.p = add nuw nsw i32 %.0.copyload.i.i.i.i.i.i, 8 ; 3 uses
  %i.q = icmp samesign ule i32 %i.p, %i.d
  tail call void @llvm.assume(i1 %i.q)
  %mul.ov.i = icmp ugt i32 %.0.copyload.i.i.i.i.i.i81, 268435455
  br i1 %mul.ov.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN8rawspeed10ByteStream9skipBytesEj.exit85
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.21, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed10ByteStream9getStreamEjj) #18, !noalias !56
  unreachable

bb.j:                                             ; preds = %_ZN8rawspeed10ByteStream9skipBytesEj.exit85
  %i.r = shl nuw i32 %.0.copyload.i.i.i.i.i.i81, 4 ; 3 uses
  %i.s = zext nneg i32 %i.p to i64                ; 2 uses
  %i.t = zext i32 %i.r to i64                     ; 3 uses
  %i.u = add nuw nsw i64 %i.t, %i.s
  %.not.i.i.i.i.i = icmp samesign ugt i64 %i.u, %i.g
  br i1 %.not.i.i.i.i.i, label %bb.k, label %_ZN8rawspeed10ByteStream11setPositionEj.exit87

bb.k:                                             ; preds = %bb.j
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.22, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj) #18, !noalias !59
  unreachable

_ZN8rawspeed10ByteStream11setPositionEj.exit87:   ; preds = %bb.j
  %i.v = add nuw nsw i32 %i.r, %i.p
  %i.w = icmp samesign ule i32 %i.v, %i.d
  tail call void @llvm.assume(i1 %i.w)
  %i.x = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.s ; 3 uses
  %i.y = icmp sgt i32 %i.r, -1
  tail call void @llvm.assume(i1 %i.y)
  %.not565 = icmp eq i32 %.0.copyload.i.i.i.i.i.i81, 0
  br i1 %.not565, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN8rawspeed10ByteStream11setPositionEj.exit87
  %invariant.op = add nsw i64 %i.t, -4
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 104
  br label %bb.l

._crit_edge:                                      ; preds = %_ZN8rawspeed8OptionalINS_6BufferEEaSIS1_Qsr3stdE7same_asITL0__T_EEERS2_OS5_.exit
  %i.aa = add i32 %.166, -11977
  %i.ab = icmp ult i32 %i.aa, -11976
  %i.ac = add i32 %.1, -8855
  %i.ad = icmp ult i32 %i.ac, -8854
  %or.cond5 = select i1 %i.ab, i1 true, i1 %i.ad
  br i1 %or.cond5, label %._crit_edge.thread, label %bb.ae

bb.l:                                             ; preds = %.lr.ph, %_ZN8rawspeed8OptionalINS_6BufferEEaSIS1_Qsr3stdE7same_asITL0__T_EEERS2_OS5_.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN8rawspeed8OptionalINS_6BufferEEaSIS1_Qsr3stdE7same_asITL0__T_EEERS2_OS5_.exit ] ; 4 uses
  %.060521 = phi i32 [ 0, %.lr.ph ], [ %i.bk, %_ZN8rawspeed8OptionalINS_6BufferEEaSIS1_Qsr3stdE7same_asITL0__T_EEERS2_OS5_.exit ] ; 2 uses
  %.061520 = phi i32 [ 0, %.lr.ph ], [ %.162, %_ZN8rawspeed8OptionalINS_6BufferEEaSIS1_Qsr3stdE7same_asITL0__T_EEERS2_OS5_.exit ] ; 10 uses
  %.063519 = phi i32 [ 0, %.lr.ph ], [ %.164, %_ZN8rawspeed8OptionalINS_6BufferEEaSIS1_Qsr3stdE7same_asITL0__T_EEERS2_OS5_.exit ] ; 10 uses
  %.065518 = phi i32 [ 0, %.lr.ph ], [ %.166, %_ZN8rawspeed8OptionalINS_6BufferEEaSIS1_Qsr3stdE7same_asITL0__T_EEERS2_OS5_.exit ] ; 10 uses
  %.sroa.0209.0516 = phi ptr [ null, %.lr.ph ], [ %.sroa.0209.1, %_ZN8rawspeed8OptionalINS_6BufferEEaSIS1_Qsr3stdE7same_asITL0__T_EEERS2_OS5_.exit ] ; 10 uses
  %.sroa.6210.sroa.0.0515 = phi i32 [ 0, %.lr.ph ], [ %.sroa.6210.sroa.0.1, %_ZN8rawspeed8OptionalINS_6BufferEEaSIS1_Qsr3stdE7same_asITL0__T_EEERS2_OS5_.exit ] ; 10 uses
  %.sroa.0211.0513 = phi ptr [ null, %.lr.ph ], [ %.sroa.0211.1, %_ZN8rawspeed8OptionalINS_6BufferEEaSIS1_Qsr3stdE7same_asITL0__T_EEERS2_OS5_.exit ] ; 10 uses
  %.sroa.6212.0512 = phi i64 [ 244834610708480, %.lr.ph ], [ %.sroa.6212.1, %_ZN8rawspeed8OptionalINS_6BufferEEaSIS1_Qsr3stdE7same_asITL0__T_EEERS2_OS5_.exit ] ; 10 uses
  %.sroa.0214.0511 = phi ptr [ null, %.lr.ph ], [ %.sroa.0214.1, %_ZN8rawspeed8OptionalINS_6BufferEEaSIS1_Qsr3stdE7same_asITL0__T_EEERS2_OS5_.exit ] ; 10 uses
  %.sroa.8.0510 = phi i64 [ 244834610708480, %.lr.ph ], [ %.sroa.8.1, %_ZN8rawspeed8OptionalINS_6BufferEEaSIS1_Qsr3stdE7same_asITL0__T_EEERS2_OS5_.exit ] ; 10 uses
  %.0315509 = phi i32 [ 0, %.lr.ph ], [ %.1, %_ZN8rawspeed8OptionalINS_6BufferEEaSIS1_Qsr3stdE7same_asITL0__T_EEERS2_OS5_.exit ] ; 10 uses
  %.sroa.0222.0508 = phi ptr [ undef, %.lr.ph ], [ %.sroa.0222.1, %_ZN8rawspeed8OptionalINS_6BufferEEaSIS1_Qsr3stdE7same_asITL0__T_EEERS2_OS5_.exit ] ; 10 uses
  %.sroa.6223.0507 = phi i32 [ undef, %.lr.ph ], [ %.sroa.6223.1, %_ZN8rawspeed8OptionalINS_6BufferEEaSIS1_Qsr3stdE7same_asITL0__T_EEERS2_OS5_.exit ] ; 10 uses
  %.sroa.11226.0506 = phi i1 [ false, %.lr.ph ], [ %.sroa.11226.1, %_ZN8rawspeed8OptionalINS_6BufferEEaSIS1_Qsr3stdE7same_asITL0__T_EEERS2_OS5_.exit ] ; 10 uses
  %.sroa.5231.0505 = phi i8 [ 0, %.lr.ph ], [ %.sroa.5231.1, %_ZN8rawspeed8OptionalINS_6BufferEEaSIS1_Qsr3stdE7same_asITL0__T_EEERS2_OS5_.exit ] ; 11 uses
  %exitcond.not = icmp eq i32 %.060521, %.0.copyload.i.i.i.i.i.i81
  br i1 %exitcond.not, label %bb.m, label %_ZN8rawspeed10ByteStream9skipBytesEj.exit93

bb.m:                                             ; preds = %bb.l
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.22, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj) #18
  unreachable

_ZN8rawspeed10ByteStream9skipBytesEj.exit93:      ; preds = %bb.l
  %i.ae = or disjoint i64 %indvars.iv, 8          ; 2 uses
  %.not.i.i.i.i.i.i94 = icmp ult i64 %invariant.op, %i.ae
  br i1 %.not.i.i.i.i.i.i94, label %bb.n, label %_ZN8rawspeed10ByteStream6getU32Ev.exit101

bb.n:                                             ; preds = %_ZN8rawspeed10ByteStream9skipBytesEj.exit93
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.22, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj) #18
  unreachable

_ZN8rawspeed10ByteStream6getU32Ev.exit101:        ; preds = %_ZN8rawspeed10ByteStream9skipBytesEj.exit93
  %i.af = getelementptr inbounds nuw i8, ptr %i.x, i64 %indvars.iv
  %.0.copyload.i.i.i.i.i.i89 = load i32, ptr %i.af, align 1
  %i.ag = or disjoint i64 %indvars.iv, 12         ; 2 uses
  %i.ah = icmp samesign ule i64 %i.ag, %i.t
  tail call void @llvm.assume(i1 %i.ah)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.ae
  %.0.copyload.i.i.i.i.i.i95 = load i32, ptr %i.ai, align 1
  %.0.copyload.i.i.i.i.i.i95.fr = freeze i32 %.0.copyload.i.i.i.i.i.i95 ; 10 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 16
  %i.aj = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.ag
  %.0.copyload.i.i.i.i.i.i99 = load i32, ptr %i.aj, align 1 ; 16 uses
  switch i32 %.0.copyload.i.i.i.i.i.i89, label %_ZN8rawspeed8OptionalINS_6BufferEEaSIS1_Qsr3stdE7same_asITL0__T_EEERS2_OS5_.exit [
    i32 263, label %bb.o
    i32 264, label %bb.q
    i32 265, label %bb.r
    i32 270, label %bb.s
    i32 271, label %bb.v
    i32 272, label %bb.x
    i32 540, label %bb.z
    i32 541, label %bb.ab
    i32 546, label %bb.ac
    i32 548, label %bb.ad
  ]

bb.o:                                             ; preds = %_ZN8rawspeed10ByteStream6getU32Ev.exit101
  %i.ak = zext i32 %.0.copyload.i.i.i.i.i.i99 to i64 ; 2 uses
  %i.al = zext i32 %.0.copyload.i.i.i.i.i.i95.fr to i64 ; 2 uses
  %i.am = add nuw nsw i64 %i.ak, %i.al
  %.not.i.i102 = icmp samesign ugt i64 %i.am, %i.g
  br i1 %.not.i.i102, label %bb.p, label %_ZNK8rawspeed10ByteStream12getSubStreamEjj.exit

bb.p:                                             ; preds = %bb.o
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.22, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj) #18, !noalias !66
  unreachable

_ZNK8rawspeed10ByteStream12getSubStreamEjj.exit:  ; preds = %bb.o
  %i.an = add nuw nsw i32 %.0.copyload.i.i.i.i.i.i99, %.0.copyload.i.i.i.i.i.i95.fr
  %i.ao = icmp samesign ule i32 %i.an, %i.d
  tail call void @llvm.assume(i1 %i.ao)
  %i.ap = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.ak
  %i.aq = icmp sgt i32 %.0.copyload.i.i.i.i.i.i95.fr, -1
  tail call void @llvm.assume(i1 %i.aq)
  %.sroa.2.8.insert.insert.i = or disjoint i64 %i.al, 244834610708480
  br label %_ZN8rawspeed8OptionalINS_6BufferEEaSIS1_Qsr3stdE7same_asITL0__T_EEERS2_OS5_.exit

bb.q:                                             ; preds = %_ZN8rawspeed10ByteStream6getU32Ev.exit101
  br label %_ZN8rawspeed8OptionalINS_6BufferEEaSIS1_Qsr3stdE7same_asITL0__T_EEERS2_OS5_.exit

bb.r:                                             ; preds = %_ZN8rawspeed10ByteStream6getU32Ev.exit101
  br label %_ZN8rawspeed8OptionalINS_6BufferEEaSIS1_Qsr3stdE7same_asITL0__T_EEERS2_OS5_.exit

bb.s:                                             ; preds = %_ZN8rawspeed10ByteStream6getU32Ev.exit101
  %i.ar = trunc nuw i8 %.sroa.5231.0505 to i1
  br i1 %i.ar, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.3, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed10IiqDecoder17decodeRawInternalEv) #18
  unreachable

bb.u:                                             ; preds = %bb.s
  %cond = icmp eq i32 %.0.copyload.i.i.i.i.i.i99, 3
  br i1 %cond, label %_ZN8rawspeed8OptionalINS_6BufferEEaSIS1_Qsr3stdE7same_asITL0__T_EEERS2_OS5_.exit, label %.thread

.thread:                                          ; preds = %bb.u
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.4, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed10IiqDecoder17decodeRawInternalEv, i32 noundef %.0.copyload.i.i.i.i.i.i99) #18
  unreachable

bb.v:                                             ; preds = %_ZN8rawspeed10ByteStream6getU32Ev.exit101
  %i.as = zext i32 %.0.copyload.i.i.i.i.i.i99 to i64 ; 2 uses
  %i.at = zext i32 %.0.copyload.i.i.i.i.i.i95.fr to i64
  %i.au = add nuw nsw i64 %i.as, %i.at
  %.not.i103 = icmp samesign ugt i64 %i.au, %i.g
  br i1 %.not.i103, label %bb.w, label %_ZNK8rawspeed6Buffer10getSubViewEjj.exit

bb.w:                                             ; preds = %bb.v
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.22, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj) #18
  unreachable

_ZNK8rawspeed6Buffer10getSubViewEjj.exit:         ; preds = %bb.v
  %i.av = add nuw nsw i32 %.0.copyload.i.i.i.i.i.i99, %.0.copyload.i.i.i.i.i.i95.fr
  %i.aw = icmp samesign ule i32 %i.av, %i.d
  tail call void @llvm.assume(i1 %i.aw)
  %i.ax = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.as
  %i.ay = icmp sgt i32 %.0.copyload.i.i.i.i.i.i95.fr, -1
  tail call void @llvm.assume(i1 %i.ay)
  br label %_ZN8rawspeed8OptionalINS_6BufferEEaSIS1_Qsr3stdE7same_asITL0__T_EEERS2_OS5_.exit

bb.x:                                             ; preds = %_ZN8rawspeed10ByteStream6getU32Ev.exit101
  %.not.i.i104 = icmp ugt i32 %.0.copyload.i.i.i.i.i.i99, %i.d
  br i1 %.not.i.i104, label %bb.y, label %_ZNK8rawspeed10ByteStream12getSubStreamEj.exit

bb.y:                                             ; preds = %bb.x
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.20, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEj) #18, !noalias !69
  unreachable

_ZNK8rawspeed10ByteStream12getSubStreamEj.exit:   ; preds = %bb.x
  %i.az = zext nneg i32 %.0.copyload.i.i.i.i.i.i99 to i64
  %i.ba = sub nuw nsw i32 %i.d, %.0.copyload.i.i.i.i.i.i99
  %i.bb = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.az
  br label %_ZN8rawspeed8OptionalINS_6BufferEEaSIS1_Qsr3stdE7same_asITL0__T_EEERS2_OS5_.exit

bb.z:                                             ; preds = %_ZN8rawspeed10ByteStream6getU32Ev.exit101
  %i.bc = zext i32 %.0.copyload.i.i.i.i.i.i99 to i64 ; 2 uses
  %i.bd = zext i32 %.0.copyload.i.i.i.i.i.i95.fr to i64 ; 2 uses
  %i.be = add nuw nsw i64 %i.bc, %i.bd
  %.not.i.i108 = icmp samesign ugt i64 %i.be, %i.g
  br i1 %.not.i.i108, label %bb.aa, label %_ZNK8rawspeed10ByteStream12getSubStreamEjj.exit113

bb.aa:                                            ; preds = %bb.z
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.22, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj) #18, !noalias !72
  unreachable

_ZNK8rawspeed10ByteStream12getSubStreamEjj.exit113: ; preds = %bb.z
  %i.bf = add nuw nsw i32 %.0.copyload.i.i.i.i.i.i99, %.0.copyload.i.i.i.i.i.i95.fr
  %i.bg = icmp samesign ule i32 %i.bf, %i.d
  tail call void @llvm.assume(i1 %i.bg)
  %i.bh = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.bc
  %i.bi = icmp sgt i32 %.0.copyload.i.i.i.i.i.i95.fr, -1
  tail call void @llvm.assume(i1 %i.bi)
  %.sroa.2.8.insert.insert.i111 = or disjoint i64 %i.bd, 244834610708480
  br label %_ZN8rawspeed8OptionalINS_6BufferEEaSIS1_Qsr3stdE7same_asITL0__T_EEERS2_OS5_.exit

bb.ab:                                            ; preds = %_ZN8rawspeed10ByteStream6getU32Ev.exit101
  %i.bj = lshr i32 %.0.copyload.i.i.i.i.i.i99, 2
  store i32 %i.bj, ptr %i.z, align 8, !tbaa !75
  br label %_ZN8rawspeed8OptionalINS_6BufferEEaSIS1_Qsr3stdE7same_asITL0__T_EEERS2_OS5_.exit

bb.ac:                                            ; preds = %_ZN8rawspeed10ByteStream6getU32Ev.exit101
  br label %_ZN8rawspeed8OptionalINS_6BufferEEaSIS1_Qsr3stdE7same_asITL0__T_EEERS2_OS5_.exit

bb.ad:                                            ; preds = %_ZN8rawspeed10ByteStream6getU32Ev.exit101
  br label %_ZN8rawspeed8OptionalINS_6BufferEEaSIS1_Qsr3stdE7same_asITL0__T_EEERS2_OS5_.exit

_ZN8rawspeed8OptionalINS_6BufferEEaSIS1_Qsr3stdE7same_asITL0__T_EEERS2_OS5_.exit: ; preds = %bb.u, %_ZNK8rawspeed6Buffer10getSubViewEjj.exit, %_ZN8rawspeed10ByteStream6getU32Ev.exit101, %bb.ad, %bb.ac, %bb.ab, %_ZNK8rawspeed10ByteStream12getSubStreamEjj.exit113, %_ZNK8rawspeed10ByteStream12getSubStreamEj.exit, %bb.r, %bb.q, %_ZNK8rawspeed10ByteStream12getSubStreamEjj.exit
  %.sroa.5231.1 = phi i8 [ %.sroa.5231.0505, %_ZN8rawspeed10ByteStream6getU32Ev.exit101 ], [ %.sroa.5231.0505, %_ZNK8rawspeed10ByteStream12getSubStreamEjj.exit ], [ %.sroa.5231.0505, %bb.q ], [ %.sroa.5231.0505, %bb.r ], [ %.sroa.5231.0505, %_ZNK8rawspeed6Buffer10getSubViewEjj.exit ], [ %.sroa.5231.0505, %bb.ad ], [ %.sroa.5231.0505, %_ZNK8rawspeed10ByteStream12getSubStreamEj.exit ], [ %.sroa.5231.0505, %_ZNK8rawspeed10ByteStream12getSubStreamEjj.exit113 ], [ %.sroa.5231.0505, %bb.ab ], [ %.sroa.5231.0505, %bb.ac ], [ 1, %bb.u ] ; 2 uses
  %.sroa.11226.1 = phi i1 [ %.sroa.11226.0506, %_ZN8rawspeed10ByteStream6getU32Ev.exit101 ], [ %.sroa.11226.0506, %_ZNK8rawspeed10ByteStream12getSubStreamEjj.exit ], [ %.sroa.11226.0506, %bb.q ], [ %.sroa.11226.0506, %bb.r ], [ true, %_ZNK8rawspeed6Buffer10getSubViewEjj.exit ], [ %.sroa.11226.0506, %bb.ad ], [ %.sroa.11226.0506, %_ZNK8rawspeed10ByteStream12getSubStreamEj.exit ], [ %.sroa.11226.0506, %_ZNK8rawspeed10ByteStream12getSubStreamEjj.exit113 ], [ %.sroa.11226.0506, %bb.ab ], [ %.sroa.11226.0506, %bb.ac ], [ %.sroa.11226.0506, %bb.u ] ; 2 uses
  %.sroa.6223.1 = phi i32 [ %.sroa.6223.0507, %_ZN8rawspeed10ByteStream6getU32Ev.exit101 ], [ %.sroa.6223.0507, %_ZNK8rawspeed10ByteStream12getSubStreamEjj.exit ], [ %.sroa.6223.0507, %bb.q ], [ %.sroa.6223.0507, %bb.r ], [ %.0.copyload.i.i.i.i.i.i95.fr, %_ZNK8rawspeed6Buffer10getSubViewEjj.exit ], [ %.sroa.6223.0507, %bb.ad ], [ %.sroa.6223.0507, %_ZNK8rawspeed10ByteStream12getSubStreamEj.exit ], [ %.sroa.6223.0507, %_ZNK8rawspeed10ByteStream12getSubStreamEjj.exit113 ], [ %.sroa.6223.0507, %bb.ab ], [ %.sroa.6223.0507, %bb.ac ], [ %.sroa.6223.0507, %bb.u ] ; 4 uses
  %.sroa.0222.1 = phi ptr [ %.sroa.0222.0508, %_ZN8rawspeed10ByteStream6getU32Ev.exit101 ], [ %.sroa.0222.0508, %_ZNK8rawspeed10ByteStream12getSubStreamEjj.exit ], [ %.sroa.0222.0508, %bb.q ], [ %.sroa.0222.0508, %bb.r ], [ %i.ax, %_ZNK8rawspeed6Buffer10getSubViewEjj.exit ], [ %.sroa.0222.0508, %bb.ad ], [ %.sroa.0222.0508, %_ZNK8rawspeed10ByteStream12getSubStreamEj.exit ], [ %.sroa.0222.0508, %_ZNK8rawspeed10ByteStream12getSubStreamEjj.exit113 ], [ %.sroa.0222.0508, %bb.ab ], [ %.sroa.0222.0508, %bb.ac ], [ %.sroa.0222.0508, %bb.u ] ; 2 uses
  %.1 = phi i32 [ %.0315509, %_ZN8rawspeed10ByteStream6getU32Ev.exit101 ], [ %.0315509, %_ZNK8rawspeed10ByteStream12getSubStreamEjj.exit ], [ %.0315509, %bb.q ], [ %.0.copyload.i.i.i.i.i.i99, %bb.r ], [ %.0315509, %_ZNK8rawspeed6Buffer10getSubViewEjj.exit ], [ %.0315509, %bb.ad ], [ %.0315509, %_ZNK8rawspeed10ByteStream12getSubStreamEj.exit ], [ %.0315509, %_ZNK8rawspeed10ByteStream12getSubStreamEjj.exit113 ], [ %.0315509, %bb.ab ], [ %.0315509, %bb.ac ], [ %.0315509, %bb.u ] ; 14 uses
  %.sroa.8.1 = phi i64 [ %.sroa.8.0510, %_ZN8rawspeed10ByteStream6getU32Ev.exit101 ], [ %.sroa.8.0510, %_ZNK8rawspeed10ByteStream12getSubStreamEjj.exit ], [ %.sroa.8.0510, %bb.q ], [ %.sroa.8.0510, %bb.r ], [ %.sroa.8.0510, %_ZNK8rawspeed6Buffer10getSubViewEjj.exit ], [ %.sroa.8.0510, %bb.ad ], [ %.sroa.8.0510, %_ZNK8rawspeed10ByteStream12getSubStreamEj.exit ], [ %.sroa.2.8.insert.insert.i111, %_ZNK8rawspeed10ByteStream12getSubStreamEjj.exit113 ], [ %.sroa.8.0510, %bb.ab ], [ %.sroa.8.0510, %bb.ac ], [ %.sroa.8.0510, %bb.u ] ; 4 uses
  %.sroa.0214.1 = phi ptr [ %.sroa.0214.0511, %_ZN8rawspeed10ByteStream6getU32Ev.exit101 ], [ %.sroa.0214.0511, %_ZNK8rawspeed10ByteStream12getSubStreamEjj.exit ], [ %.sroa.0214.0511, %bb.q ], [ %.sroa.0214.0511, %bb.r ], [ %.sroa.0214.0511, %_ZNK8rawspeed6Buffer10getSubViewEjj.exit ], [ %.sroa.0214.0511, %bb.ad ], [ %.sroa.0214.0511, %_ZNK8rawspeed10ByteStream12getSubStreamEj.exit ], [ %i.bh, %_ZNK8rawspeed10ByteStream12getSubStreamEjj.exit113 ], [ %.sroa.0214.0511, %bb.ab ], [ %.sroa.0214.0511, %bb.ac ], [ %.sroa.0214.0511, %bb.u ] ; 3 uses
  %.sroa.6212.1 = phi i64 [ %.sroa.6212.0512, %_ZN8rawspeed10ByteStream6getU32Ev.exit101 ], [ %.sroa.2.8.insert.insert.i, %_ZNK8rawspeed10ByteStream12getSubStreamEjj.exit ], [ %.sroa.6212.0512, %bb.q ], [ %.sroa.6212.0512, %bb.r ], [ %.sroa.6212.0512, %_ZNK8rawspeed6Buffer10getSubViewEjj.exit ], [ %.sroa.6212.0512, %bb.ad ], [ %.sroa.6212.0512, %_ZNK8rawspeed10ByteStream12getSubStreamEj.exit ], [ %.sroa.6212.0512, %_ZNK8rawspeed10ByteStream12getSubStreamEjj.exit113 ], [ %.sroa.6212.0512, %bb.ab ], [ %.sroa.6212.0512, %bb.ac ], [ %.sroa.6212.0512, %bb.u ] ; 4 uses
  %.sroa.0211.1 = phi ptr [ %.sroa.0211.0513, %_ZN8rawspeed10ByteStream6getU32Ev.exit101 ], [ %i.ap, %_ZNK8rawspeed10ByteStream12getSubStreamEjj.exit ], [ %.sroa.0211.0513, %bb.q ], [ %.sroa.0211.0513, %bb.r ], [ %.sroa.0211.0513, %_ZNK8rawspeed6Buffer10getSubViewEjj.exit ], [ %.sroa.0211.0513, %bb.ad ], [ %.sroa.0211.0513, %_ZNK8rawspeed10ByteStream12getSubStreamEj.exit ], [ %.sroa.0211.0513, %_ZNK8rawspeed10ByteStream12getSubStreamEjj.exit113 ], [ %.sroa.0211.0513, %bb.ab ], [ %.sroa.0211.0513, %bb.ac ], [ %.sroa.0211.0513, %bb.u ] ; 5 uses
  %.sroa.6210.sroa.0.1 = phi i32 [ %.sroa.6210.sroa.0.0515, %_ZN8rawspeed10ByteStream6getU32Ev.exit101 ], [ %.sroa.6210.sroa.0.0515, %_ZNK8rawspeed10ByteStream12getSubStreamEjj.exit ], [ %.sroa.6210.sroa.0.0515, %bb.q ], [ %.sroa.6210.sroa.0.0515, %bb.r ], [ %.sroa.6210.sroa.0.0515, %_ZNK8rawspeed6Buffer10getSubViewEjj.exit ], [ %.sroa.6210.sroa.0.0515, %bb.ad ], [ %i.ba, %_ZNK8rawspeed10ByteStream12getSubStreamEj.exit ], [ %.sroa.6210.sroa.0.0515, %_ZNK8rawspeed10ByteStream12getSubStreamEjj.exit113 ], [ %.sroa.6210.sroa.0.0515, %bb.ab ], [ %.sroa.6210.sroa.0.0515, %bb.ac ], [ %.sroa.6210.sroa.0.0515, %bb.u ] ; 3 uses
  %.sroa.0209.1 = phi ptr [ %.sroa.0209.0516, %_ZN8rawspeed10ByteStream6getU32Ev.exit101 ], [ %.sroa.0209.0516, %_ZNK8rawspeed10ByteStream12getSubStreamEjj.exit ], [ %.sroa.0209.0516, %bb.q ], [ %.sroa.0209.0516, %bb.r ], [ %.sroa.0209.0516, %_ZNK8rawspeed6Buffer10getSubViewEjj.exit ], [ %.sroa.0209.0516, %bb.ad ], [ %i.bb, %_ZNK8rawspeed10ByteStream12getSubStreamEj.exit ], [ %.sroa.0209.0516, %_ZNK8rawspeed10ByteStream12getSubStreamEjj.exit113 ], [ %.sroa.0209.0516, %bb.ab ], [ %.sroa.0209.0516, %bb.ac ], [ %.sroa.0209.0516, %bb.u ] ; 2 uses
  %.166 = phi i32 [ %.065518, %_ZN8rawspeed10ByteStream6getU32Ev.exit101 ], [ %.065518, %_ZNK8rawspeed10ByteStream12getSubStreamEjj.exit ], [ %.0.copyload.i.i.i.i.i.i99, %bb.q ], [ %.065518, %bb.r ], [ %.065518, %_ZNK8rawspeed6Buffer10getSubViewEjj.exit ], [ %.065518, %bb.ad ], [ %.065518, %_ZNK8rawspeed10ByteStream12getSubStreamEj.exit ], [ %.065518, %_ZNK8rawspeed10ByteStream12getSubStreamEjj.exit113 ], [ %.065518, %bb.ab ], [ %.065518, %bb.ac ], [ %.065518, %bb.u ] ; 5 uses
  %.164 = phi i32 [ %.063519, %_ZN8rawspeed10ByteStream6getU32Ev.exit101 ], [ %.063519, %_ZNK8rawspeed10ByteStream12getSubStreamEjj.exit ], [ %.063519, %bb.q ], [ %.063519, %bb.r ], [ %.063519, %_ZNK8rawspeed6Buffer10getSubViewEjj.exit ], [ %.0.copyload.i.i.i.i.i.i99, %bb.ad ], [ %.063519, %_ZNK8rawspeed10ByteStream12getSubStreamEj.exit ], [ %.063519, %_ZNK8rawspeed10ByteStream12getSubStreamEjj.exit113 ], [ %.063519, %bb.ab ], [ %.063519, %bb.ac ], [ %.063519, %bb.u ] ; 4 uses
  %.162 = phi i32 [ %.061520, %_ZN8rawspeed10ByteStream6getU32Ev.exit101 ], [ %.061520, %_ZNK8rawspeed10ByteStream12getSubStreamEjj.exit ], [ %.061520, %bb.q ], [ %.061520, %bb.r ], [ %.061520, %_ZNK8rawspeed6Buffer10getSubViewEjj.exit ], [ %.061520, %bb.ad ], [ %.061520, %_ZNK8rawspeed10ByteStream12getSubStreamEj.exit ], [ %.061520, %_ZNK8rawspeed10ByteStream12getSubStreamEjj.exit113 ], [ %.061520, %bb.ab ], [ %.0.copyload.i.i.i.i.i.i99, %bb.ac ], [ %.061520, %bb.u ] ; 4 uses
  %i.bk = add nuw nsw i32 %.060521, 1             ; 2 uses
  %exitcond593.not = icmp eq i32 %i.bk, %.0.copyload.i.i.i.i.i.i81
  br i1 %exitcond593.not, label %._crit_edge, label %bb.l, !llvm.loop !104

._crit_edge.thread:                               ; preds = %_ZN8rawspeed10ByteStream11setPositionEj.exit87, %._crit_edge
  %.065.lcssa657 = phi i32 [ %.166, %._crit_edge ], [ 0, %_ZN8rawspeed10ByteStream11setPositionEj.exit87 ]
  %.0315.lcssa656 = phi i32 [ %.1, %._crit_edge ], [ 0, %_ZN8rawspeed10ByteStream11setPositionEj.exit87 ]
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.5, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed10IiqDecoder17decodeRawInternalEv, i32 noundef %.065.lcssa657, i32 noundef %.0315.lcssa656) #18
  unreachable

bb.ae:                                            ; preds = %._crit_edge
  %i.bl = trunc nuw i8 %.sroa.5231.1 to i1
  br i1 %i.bl, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.6, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed10IiqDecoder17decodeRawInternalEv) #18
  unreachable

bb.ag:                                            ; preds = %bb.ae
  br i1 %.sroa.11226.1, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.7, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed10IiqDecoder17decodeRawInternalEv) #18
  unreachable

bb.ai:                                            ; preds = %bb.ag
  %i.bm = icmp ugt i32 %.162, %.166
  %i.bn = icmp ugt i32 %.164, %.1
  %or.cond = select i1 %i.bm, i1 true, i1 %i.bn
  br i1 %or.cond, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.8, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed10IiqDecoder17decodeRawInternalEv, i32 noundef %.164, i32 noundef %.162) #18
  unreachable

bb.ak:                                            ; preds = %bb.ai
  %i.bo = shl nuw nsw i32 %.1, 2                  ; 2 uses
  %i.bp = zext nneg i32 %i.bo to i64
  %i.bq = and i64 %.sroa.8.1, 4294967295
  %.not.i.i.i.i.i116 = icmp samesign ult i64 %i.bq, %i.bp
  br i1 %.not.i.i.i.i.i116, label %bb.al, label %.lr.ph541

bb.al:                                            ; preds = %bb.ak
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.22, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj) #18, !noalias !105
  unreachable

.lr.ph541:                                        ; preds = %bb.ak
  %.sroa.8.8.extract.trunc = trunc i64 %.sroa.8.1 to i32 ; 2 uses
  %i.br = icmp sgt i32 %.sroa.8.8.extract.trunc, -1
  tail call void @llvm.assume(i1 %i.br)
  %i.bs = icmp samesign ule i32 %i.bo, %.sroa.8.8.extract.trunc
  tail call void @llvm.assume(i1 %i.bs)
  %i.bt = add nuw nsw i32 %.1, 1
  %i.bu = zext nneg i32 %i.bt to i64              ; 2 uses
  %i.bv = shl nuw nsw i64 %i.bu, 3
  %i.bw = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bv) #27 ; 5 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %i.bu ; 2 uses
  %i.by = and i64 %.sroa.8.1, 281470681743360
  %i.bz = icmp eq i64 %i.by, 244834610708480
  br i1 %i.bz, label %.lr.ph541.split.us, label %.lr.ph541.split

.lr.ph541.split.us:                               ; preds = %.lr.ph541, %_ZNSt6vectorIN8rawspeed10IiqDecoder9IiqOffsetESaIS2_EE12emplace_backIJRjjEEERS2_DpOT_.exit.us
  %indvars.iv599 = phi i64 [ %indvars.iv.next600, %_ZNSt6vectorIN8rawspeed10IiqDecoder9IiqOffsetESaIS2_EE12emplace_backIJRjjEEERS2_DpOT_.exit.us ], [ 0, %.lr.ph541 ] ; 2 uses
  %storemerge540.us = phi i32 [ %i.cr, %_ZNSt6vectorIN8rawspeed10IiqDecoder9IiqOffsetESaIS2_EE12emplace_backIJRjjEEERS2_DpOT_.exit.us ], [ 0, %.lr.ph541 ] ; 4 uses
  %.sroa.25.0539.us = phi ptr [ %.sroa.25.3.us, %_ZNSt6vectorIN8rawspeed10IiqDecoder9IiqOffsetESaIS2_EE12emplace_backIJRjjEEERS2_DpOT_.exit.us ], [ %i.bx, %.lr.ph541 ] ; 6 uses
  %.sroa.15.0538.us = phi ptr [ %.sroa.15.2.us, %_ZNSt6vectorIN8rawspeed10IiqDecoder9IiqOffsetESaIS2_EE12emplace_backIJRjjEEERS2_DpOT_.exit.us ], [ %i.bw, %.lr.ph541 ] ; 4 uses
  %.sroa.0169.0537.us = phi ptr [ %.sroa.0169.3.us, %_ZNSt6vectorIN8rawspeed10IiqDecoder9IiqOffsetESaIS2_EE12emplace_backIJRjjEEERS2_DpOT_.exit.us ], [ %i.bw, %.lr.ph541 ] ; 7 uses
  %exitcond602.not = icmp eq i32 %storemerge540.us, %.1
  br i1 %exitcond602.not, label %.split.us, label %bb.am

bb.am:                                            ; preds = %.lr.ph541.split.us
  %indvars.iv.next600 = add nuw nsw i64 %indvars.iv599, 4
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.0214.1, i64 %indvars.iv599
  %.0.copyload.i.i.i.i.i.i123.us = load i32, ptr %i.ca, align 1 ; 2 uses
  %.not.i127.us = icmp eq ptr %.sroa.15.0538.us, %.sroa.25.0539.us
  br i1 %.not.i127.us, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  store i32 %storemerge540.us, ptr %.sroa.15.0538.us, align 4, !tbaa !114
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.15.0538.us, i64 4
  store i32 %.0.copyload.i.i.i.i.i.i123.us, ptr %i.cb, align 4, !tbaa !21
  br label %_ZNSt6vectorIN8rawspeed10IiqDecoder9IiqOffsetESaIS2_EE12emplace_backIJRjjEEERS2_DpOT_.exit.us

bb.ao:                                            ; preds = %bb.am
  %i.cc = ptrtoint ptr %.sroa.25.0539.us to i64
  %i.cd = ptrtoint ptr %.sroa.0169.0537.us to i64
  %i.ce = sub i64 %i.cc, %i.cd                    ; 6 uses
  %i.cf = icmp eq i64 %i.ce, 9223372036854775800
  br i1 %i.cf, label %.split548.us, label %_ZNKSt6vectorIN8rawspeed10IiqDecoder9IiqOffsetESaIS2_EE12_M_check_lenEmPKc.exit.i.i.us

_ZNKSt6vectorIN8rawspeed10IiqDecoder9IiqOffsetESaIS2_EE12_M_check_lenEmPKc.exit.i.i.us: ; preds = %bb.ao
  %i.cg = ashr exact i64 %i.ce, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.us = tail call i64 @llvm.umax.i64(i64 %i.cg, i64 1)
  %i.ch = add nsw i64 %.sroa.speculated.i.i.i.us, %i.cg ; 2 uses
  %i.ci = icmp ult i64 %i.ch, %i.cg
  %i.cj = tail call i64 @llvm.umin.i64(i64 %i.ch, i64 1152921504606846975)
  %i.ck = select i1 %i.ci, i64 1152921504606846975, i64 %i.cj ; 3 uses
  %.not.i.i.i.us = icmp ne i64 %i.ck, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.us)
  %i.cl = shl nuw nsw i64 %i.ck, 3
  %i.cm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cl) #27
          to label %.noexc129.us unwind label %.loopexit.split.us ; 4 uses

.noexc129.us:                                     ; preds = %_ZNKSt6vectorIN8rawspeed10IiqDecoder9IiqOffsetESaIS2_EE12_M_check_lenEmPKc.exit.i.i.us
  %i.cn = getelementptr inbounds i8, ptr %i.cm, i64 %i.ce ; 3 uses
  store i32 %storemerge540.us, ptr %i.cn, align 4, !tbaa !114
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 4
  store i32 %.0.copyload.i.i.i.i.i.i123.us, ptr %i.co, align 4, !tbaa !21
  %i.cp = icmp sgt i64 %i.ce, 0
  br i1 %i.cp, label %bb.ap, label %_ZNSt6vectorIN8rawspeed10IiqDecoder9IiqOffsetESaIS2_EE17_M_realloc_insertIJRjjEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.us

bb.ap:                                            ; preds = %.noexc129.us
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.cm, ptr align 4 %.sroa.0169.0537.us, i64 %i.ce, i1 false)
  br label %_ZNSt6vectorIN8rawspeed10IiqDecoder9IiqOffsetESaIS2_EE17_M_realloc_insertIJRjjEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.us

_ZNSt6vectorIN8rawspeed10IiqDecoder9IiqOffsetESaIS2_EE17_M_realloc_insertIJRjjEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.us: ; preds = %bb.ap, %.noexc129.us
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0169.0537.us, i64 noundef %i.ce) #26
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.ck
  br label %_ZNSt6vectorIN8rawspeed10IiqDecoder9IiqOffsetESaIS2_EE12emplace_backIJRjjEEERS2_DpOT_.exit.us

_ZNSt6vectorIN8rawspeed10IiqDecoder9IiqOffsetESaIS2_EE12emplace_backIJRjjEEERS2_DpOT_.exit.us: ; preds = %_ZNSt6vectorIN8rawspeed10IiqDecoder9IiqOffsetESaIS2_EE17_M_realloc_insertIJRjjEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.us, %bb.an
  %.sroa.0169.3.us = phi ptr [ %i.cm, %_ZNSt6vectorIN8rawspeed10IiqDecoder9IiqOffsetESaIS2_EE17_M_realloc_insertIJRjjEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.us ], [ %.sroa.0169.0537.us, %bb.an ] ; 2 uses
  %.pn334.us = phi ptr [ %i.cn, %_ZNSt6vectorIN8rawspeed10IiqDecoder9IiqOffsetESaIS2_EE17_M_realloc_insertIJRjjEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.us ], [ %.sroa.15.0538.us, %bb.an ]
  %.sroa.25.3.us = phi ptr [ %i.cq, %_ZNSt6vectorIN8rawspeed10IiqDecoder9IiqOffsetESaIS2_EE17_M_realloc_insertIJRjjEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.us ], [ %.sroa.25.0539.us, %bb.an ] ; 2 uses
  %.sroa.15.2.us = getelementptr inbounds nuw i8, ptr %.pn334.us, i64 8 ; 2 uses
  %i.cr = add nuw nsw i32 %storemerge540.us, 1    ; 2 uses
  %exitcond603.not = icmp eq i32 %i.cr, %.1
  br i1 %exitcond603.not, label %._crit_edge542, label %.lr.ph541.split.us, !llvm.loop !115

.loopexit.split.us:                               ; preds = %_ZNKSt6vectorIN8rawspeed10IiqDecoder9IiqOffsetESaIS2_EE12_M_check_lenEmPKc.exit.i.i.us
  %lpad.loopexit.us = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.lr.ph541.split:                                  ; preds = %.lr.ph541, %_ZNSt6vectorIN8rawspeed10IiqDecoder9IiqOffsetESaIS2_EE12emplace_backIJRjjEEERS2_DpOT_.exit
  %indvars.iv594 = phi i64 [ %indvars.iv.next595, %_ZNSt6vectorIN8rawspeed10IiqDecoder9IiqOffsetESaIS2_EE12emplace_backIJRjjEEERS2_DpOT_.exit ], [ 0, %.lr.ph541 ] ; 2 uses
  %storemerge540 = phi i32 [ %i.dk, %_ZNSt6vectorIN8rawspeed10IiqDecoder9IiqOffsetESaIS2_EE12emplace_backIJRjjEEERS2_DpOT_.exit ], [ 0, %.lr.ph541 ] ; 4 uses
  %.sroa.25.0539 = phi ptr [ %.sroa.25.3, %_ZNSt6vectorIN8rawspeed10IiqDecoder9IiqOffsetESaIS2_EE12emplace_backIJRjjEEERS2_DpOT_.exit ], [ %i.bx, %.lr.ph541 ] ; 6 uses
  %.sroa.15.0538 = phi ptr [ %.sroa.15.2, %_ZNSt6vectorIN8rawspeed10IiqDecoder9IiqOffsetESaIS2_EE12emplace_backIJRjjEEERS2_DpOT_.exit ], [ %i.bw, %.lr.ph541 ] ; 4 uses
  %.sroa.0169.0537 = phi ptr [ %.sroa.0169.3, %_ZNSt6vectorIN8rawspeed10IiqDecoder9IiqOffsetESaIS2_EE12emplace_backIJRjjEEERS2_DpOT_.exit ], [ %i.bw, %.lr.ph541 ] ; 7 uses
  %exitcond597.not = icmp eq i32 %storemerge540, %.1
  br i1 %exitcond597.not, label %.split.us, label %bb.aq

.split.us:                                        ; preds = %.lr.ph541.split, %.lr.ph541.split.us
  %.us-phi = phi ptr [ %.sroa.0169.0537.us, %.lr.ph541.split.us ], [ %.sroa.0169.0537, %.lr.ph541.split ]
  %.us-phi546 = phi ptr [ %.sroa.25.0539.us, %.lr.ph541.split.us ], [ %.sroa.25.0539, %.lr.ph541.split ]
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.22, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj) #18
          to label %.noexc125 unwind label %.loopexit.split-lp

.noexc125:                                        ; preds = %.split.us
  unreachable

bb.aq:                                            ; preds = %.lr.ph541.split
  %indvars.iv.next595 = add nuw nsw i64 %indvars.iv594, 4
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.0214.1, i64 %indvars.iv594
  %.0.copyload.i.i.i.i.i.i123 = load i32, ptr %i.cs, align 1
  %i.ct = tail call i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.i.i.i.i123) ; 2 uses
  %.not.i127 = icmp eq ptr %.sroa.15.0538, %.sroa.25.0539
  br i1 %.not.i127, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  store i32 %storemerge540, ptr %.sroa.15.0538, align 4, !tbaa !114
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.15.0538, i64 4
  store i32 %i.ct, ptr %i.cu, align 4, !tbaa !21
  br label %_ZNSt6vectorIN8rawspeed10IiqDecoder9IiqOffsetESaIS2_EE12emplace_backIJRjjEEERS2_DpOT_.exit

bb.as:                                            ; preds = %bb.aq
  %i.cv = ptrtoint ptr %.sroa.25.0539 to i64
  %i.cw = ptrtoint ptr %.sroa.0169.0537 to i64
  %i.cx = sub i64 %i.cv, %i.cw                    ; 6 uses
  %i.cy = icmp eq i64 %i.cx, 9223372036854775800
  br i1 %i.cy, label %.split548.us, label %_ZNKSt6vectorIN8rawspeed10IiqDecoder9IiqOffsetESaIS2_EE12_M_check_lenEmPKc.exit.i.i

.split548.us:                                     ; preds = %bb.as, %bb.ao
  %.us-phi549 = phi ptr [ %.sroa.0169.0537.us, %bb.ao ], [ %.sroa.0169.0537, %bb.as ]
  %.us-phi550 = phi ptr [ %.sroa.25.0539.us, %bb.ao ], [ %.sroa.25.0539, %bb.as ]
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.19) #28
          to label %.noexc128 unwind label %.loopexit.split-lp

.noexc128:                                        ; preds = %.split548.us
  unreachable

_ZNKSt6vectorIN8rawspeed10IiqDecoder9IiqOffsetESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.as
  %i.cz = ashr exact i64 %i.cx, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.cz, i64 1)
  %i.da = add nsw i64 %.sroa.speculated.i.i.i, %i.cz ; 2 uses
  %i.db = icmp ult i64 %i.da, %i.cz
  %i.dc = tail call i64 @llvm.umin.i64(i64 %i.da, i64 1152921504606846975)
  %i.dd = select i1 %i.db, i64 1152921504606846975, i64 %i.dc ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.dd, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.de = shl nuw nsw i64 %i.dd, 3
  %i.df = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.de) #27
          to label %.noexc129 unwind label %.loopexit.split ; 4 uses

.noexc129:                                        ; preds = %_ZNKSt6vectorIN8rawspeed10IiqDecoder9IiqOffsetESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.dg = getelementptr inbounds i8, ptr %i.df, i64 %i.cx ; 3 uses
  store i32 %storemerge540, ptr %i.dg, align 4, !tbaa !114
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 4
  store i32 %i.ct, ptr %i.dh, align 4, !tbaa !21
  %i.di = icmp sgt i64 %i.cx, 0
  br i1 %i.di, label %bb.at, label %_ZNSt6vectorIN8rawspeed10IiqDecoder9IiqOffsetESaIS2_EE17_M_realloc_insertIJRjjEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

bb.at:                                            ; preds = %.noexc129
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.df, ptr align 4 %.sroa.0169.0537, i64 %i.cx, i1 false)
  br label %_ZNSt6vectorIN8rawspeed10IiqDecoder9IiqOffsetESaIS2_EE17_M_realloc_insertIJRjjEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIN8rawspeed10IiqDecoder9IiqOffsetESaIS2_EE17_M_realloc_insertIJRjjEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.at, %.noexc129
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0169.0537, i64 noundef %i.cx) #26
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %i.dd
  br label %_ZNSt6vectorIN8rawspeed10IiqDecoder9IiqOffsetESaIS2_EE12emplace_backIJRjjEEERS2_DpOT_.exit

_ZNSt6vectorIN8rawspeed10IiqDecoder9IiqOffsetESaIS2_EE12emplace_backIJRjjEEERS2_DpOT_.exit: ; preds = %_ZNSt6vectorIN8rawspeed10IiqDecoder9IiqOffsetESaIS2_EE17_M_realloc_insertIJRjjEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, %bb.ar
  %.sroa.0169.3 = phi ptr [ %i.df, %_ZNSt6vectorIN8rawspeed10IiqDecoder9IiqOffsetESaIS2_EE17_M_realloc_insertIJRjjEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %.sroa.0169.0537, %bb.ar ] ; 2 uses
  %.pn334 = phi ptr [ %i.dg, %_ZNSt6vectorIN8rawspeed10IiqDecoder9IiqOffsetESaIS2_EE17_M_realloc_insertIJRjjEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %.sroa.15.0538, %bb.ar ]
  %.sroa.25.3 = phi ptr [ %i.dj, %_ZNSt6vectorIN8rawspeed10IiqDecoder9IiqOffsetESaIS2_EE17_M_realloc_insertIJRjjEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %.sroa.25.0539, %bb.ar ] ; 2 uses
  %.sroa.15.2 = getelementptr inbounds nuw i8, ptr %.pn334, i64 8 ; 2 uses
  %i.dk = add nuw nsw i32 %storemerge540, 1       ; 2 uses
  %exitcond598.not = icmp eq i32 %i.dk, %.1
  br i1 %exitcond598.not, label %._crit_edge542, label %.lr.ph541.split, !llvm.loop !115
end_hunk_0
