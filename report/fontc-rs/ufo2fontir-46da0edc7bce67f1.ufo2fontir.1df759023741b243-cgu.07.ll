Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fontc-rs/original/ufo2fontir-46da0edc7bce67f1.ufo2fontir.1df759023741b243-cgu.07?download=true
inline.NumInlined: 515
inline.NumDeleted: 153
begin_hunk_0_@_RINvNtNtCsgCecv3eZDcN_5alloc2io4read18default_read_exactINtNtNtCsaGmGRvprAGn_5plist6stream13binary_reader9PosReaderINtNtNtB4_8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEEECs2zvA5OmMqFb_10ufo2fontir:bb.a
  br label %bb.k

_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit: ; preds = %.noexc
  br i1 %i.o, label %.thread.thread, label %._crit_edge

._crit_edge:                                      ; preds = %.split28, %.split27, %.split, %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit, %bb.e, %bb.k, %bb.a
  %.sroa.09.0 = phi ptr [ null, %bb.a ], [ @11, %bb.e ], [ %i.f, %.split27 ], [ %i.f, %.split ], [ %i.f, %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit ], [ null, %bb.k ], [ %i.f, %.split28 ]
  ret ptr %.sroa.09.0

.thread.thread:                                   ; preds = %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit, %.split28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs2zvA5OmMqFb_10ufo2fontir.exit

bb.i:                                             ; preds = %.split27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ad = icmp ult ptr %i.f, inttoptr (i64 188978561024 to ptr)
  %i.ae = and i64 %i.g, 1095216660480
  %i.af = icmp ne i64 %i.ae, 1095216660480
  call void @llvm.assume(i1 %i.ad)
  call void @llvm.assume(i1 %i.af)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs2zvA5OmMqFb_10ufo2fontir.exit

bb.j:                                             ; preds = %.split
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ag = getelementptr i8, ptr %i.f, i64 -1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ag) ]
  store ptr %i.ag, ptr %i.c, align 8, !alias.scope !774
  store i8 3, ptr %i.a, align 8, !alias.scope !774
  call void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs2zvA5OmMqFb_10ufo2fontir.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs2zvA5OmMqFb_10ufo2fontir.exit: ; preds = %.thread.thread, %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs2zvA5OmMqFb_10ufo2fontir.exit
  %.sroa.0.120 = phi ptr [ %.sroa.0.041, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs2zvA5OmMqFb_10ufo2fontir.exit ], [ %i.ac, %bb.h ]
  %.sroa.7.118 = phi i64 [ %.sroa.7.040, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs2zvA5OmMqFb_10ufo2fontir.exit ], [ %i.ab, %bb.h ] ; 2 uses
  %i.ah = icmp eq i64 %.sroa.7.118, 0
  br i1 %i.ah, label %._crit_edge, label %bb.b

bb.l:                                             ; preds = %.noexc, %bb.d
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs2zvA5OmMqFb_10ufo2fontir(ptr nonnull %i.f) #22
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  resume { ptr, i32 } %lpad.thr_comm

bb.n:                                             ; preds = %bb.l
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #23
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RINvNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef %2, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4) unnamed_addr #3 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !777)
  %i.b = icmp eq i64 %4, 0
  br i1 %i.b, label %bb.e, label %bb.b, !prof !20

bb.b:                                             ; preds = %bb.a
  %i.c = add i64 %2, %1                           ; 2 uses
  %i.d = icmp ult i64 %i.c, %1
  br i1 %i.d, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i64, ptr %0, align 8, !range !12, !alias.scope !777, !noundef !6 ; 2 uses
  %i.f = shl nuw i64 %i.e, 1
  %i.g = tail call i64 @llvm.umax.i64(i64 %i.f, i64 %i.c)
  %i.h = icmp eq i64 %4, 1
  %i.i = icmp ult i64 %4, 1025
  %..i = select i1 %i.i, i64 4, i64 1
  %.sroa.08.0.i = select i1 %i.h, i64 8, i64 %..i
  %i.j = tail call i64 @llvm.umax.i64(i64 %.sroa.08.0.i, i64 %i.g) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !777
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.k, align 8, !alias.scope !777
  call fastcc void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.e, ptr %.val13.i, i64 noundef %i.j, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4), !noalias !777
  %i.l = load i64, ptr %i.a, align 8, !range !21, !noalias !777, !noundef !6
  %i.m = trunc nuw i64 %i.l to i1
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.m, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.o = load i64, ptr %i.n, align 8, !range !22, !noalias !777, !noundef !6
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.q = load i64, ptr %i.p, align 8, !noalias !777
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !777
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.b
  %.sroa.5.0.i.ph = phi i64 [ undef, %bb.b ], [ %i.q, %bb.d ], [ undef, %bb.a ]
  %.sroa.0.0.i.ph = phi i64 [ 0, %bb.b ], [ %i.o, %bb.d ], [ 0, %bb.a ]
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %.sroa.0.0.i.ph, i64 %.sroa.5.0.i.ph) #27
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.r = load ptr, ptr %i.n, align 8, !noalias !777, !nonnull !6, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !777
  store ptr %i.r, ptr %i.k, align 8, !alias.scope !777
  %i.s = icmp sgt i64 %i.j, -1
  tail call void @llvm.assume(i1 %i.s)
  store i64 %i.j, ptr %0, align 8, !alias.scope !777
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXNtNtCs6XWSMUxlGVQ_9quick_xml6reader15buffered_readerINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderIBU_NtNtCs5Xr050g3D4S_3std2fs4FileEEINtB5_9XmlSourceQINtNtB12_3vec3VechEE9read_withNtNtNtB7_6parser7element13ElementParserECs2zvA5OmMqFb_10ufo2fontir(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(8) %3) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 9 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !6 ; 10 uses
  %i.e = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.e)
  %i.f = load i64, ptr %2, align 8, !range !12, !alias.scope !798, !noundef !6
  %i.g = icmp eq i64 %i.d, %i.f
  br i1 %i.g, label %bb.b, label %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechE8push_mutCs2zvA5OmMqFb_10ufo2fontir.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2) #24
  br label %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechE8push_mutCs2zvA5OmMqFb_10ufo2fontir.exit

_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechE8push_mutCs2zvA5OmMqFb_10ufo2fontir.exit: ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !798, !nonnull !6, !noundef !6
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.d
  store i8 60, ptr %i.j, align 1
  %i.k = add nuw i64 %i.d, 1
  store i64 %i.k, ptr %i.c, align 8, !alias.scope !798
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  br label %.outer

.outer:                                           ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCs2zvA5OmMqFb_10ufo2fontir.exit, %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechE8push_mutCs2zvA5OmMqFb_10ufo2fontir.exit
  %.sroa.0.035.ph = phi i8 [ %.sroa.0.7.ph, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCs2zvA5OmMqFb_10ufo2fontir.exit ], [ 0, %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechE8push_mutCs2zvA5OmMqFb_10ufo2fontir.exit ] ; 3 uses
  %.sroa.0.0.ph = phi i64 [ %i.cx, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCs2zvA5OmMqFb_10ufo2fontir.exit ], [ 1, %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechE8push_mutCs2zvA5OmMqFb_10ufo2fontir.exit ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvXs5_NtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreaderINtB5_9BufReaderIBS_NtNtCs5Xr050g3D4S_3std2fs4FileEENtNtB9_8buf_read7BufRead8fill_bufCs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %1)
  %i.p = load ptr, ptr %i.b, align 8, !noundef !6 ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.outer, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultRShNtNtNtB4_2io5error5ErrorEECs2zvA5OmMqFb_10ufo2fontir.exit
  %.val = load ptr, ptr %i.l, align 8, !nonnull !6, !noundef !6 ; 8 uses
  %i.r = ptrtoint ptr %.val to i64                ; 4 uses
  %i.s = and i64 %i.r, 3                          ; 2 uses
  switch i64 %i.s, label %.lr.ph.unreachabledefault [
    i64 2, label %bb.c
    i64 3, label %bb.d
    i64 0, label %bb.e
    i64 1, label %bb.f
  ], !prof !9

.lr.ph.unreachabledefault:                        ; preds = %.lr.ph
  unreachable

default.unreachable:                              ; preds = %bb.h, %bb.w
  unreachable

bb.c:                                             ; preds = %.lr.ph
  %i.t = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCsf3Ta7LF998c_4core2io5error12os_functions16get_os_functions()
          to label %.noexc unwind label %bb.z

.noexc:                                           ; preds = %bb.c
  %i.u = lshr i64 %i.r, 32
  %i.v = trunc nuw i64 %i.u to i32
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !nonnull !6, !noundef !6
  %i.y = invoke noundef i8 %i.x(i32 noundef %i.v)
          to label %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error4kind.exit unwind label %bb.z, !inline_history !0

bb.d:                                             ; preds = %.lr.ph
  %i.z = lshr i64 %i.r, 32
  %i.aa = icmp ult ptr %.val, inttoptr (i64 188978561024 to ptr)
  %switch.idx.cast.i.i.i = trunc i64 %i.z to i8   ; 2 uses
  %i.ab = icmp ne i8 %switch.idx.cast.i.i.i, -1
  call void @llvm.assume(i1 %i.aa)
  call void @llvm.assume(i1 %i.ab)
  br label %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error4kind.exit

bb.e:                                             ; preds = %.lr.ph
  %i.ac = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.ad = load i8, ptr %i.ac, align 8, !range !10, !noundef !6
  br label %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error4kind.exit

bb.f:                                             ; preds = %.lr.ph
  %i.ae = getelementptr i8, ptr %.val, i64 31
  %i.af = load i8, ptr %i.ae, align 8, !range !10, !noundef !6
  br label %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error4kind.exit

._crit_edge:                                      ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultRShNtNtNtB4_2io5error5ErrorEECs2zvA5OmMqFb_10ufo2fontir.exit, %.outer
  %.lcssa = phi ptr [ %i.p, %.outer ], [ %i.dx, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultRShNtNtNtB4_2io5error5ErrorEECs2zvA5OmMqFb_10ufo2fontir.exit ] ; 12 uses
  %i.ag = load i64, ptr %i.l, align 8, !noundef !6 ; 14 uses
  %i.ah = icmp eq i64 %i.ag, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br i1 %i.ah, label %bb.p, label %bb.g

bb.g:                                             ; preds = %._crit_edge
  call void @llvm.experimental.noalias.scope.decl(metadata !799)
  %i.ai = getelementptr i8, ptr %.lcssa, i64 %i.ag ; 4 uses
  %i.aj = load atomic ptr, ptr @_RNvNvNtNtNtCslNgMNtvf3y7_6memchr4arch6x86_646memchr11memchr3_raw2FN monotonic, align 8, !noalias !800, !nonnull !6, !noundef !6
  %i.ak = call { i64, ptr } %i.aj(i8 noundef 62, i8 noundef 39, i8 noundef 34, ptr noundef nonnull readonly %.lcssa, ptr noundef readonly %i.ai), !noalias !801, !inline_history !787 ; 2 uses
  %i.al = extractvalue { i64, ptr } %i.ak, 0
  %i.am = trunc nuw i64 %i.al to i1
  br i1 %i.am, label %.lr.ph.i, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCs2zvA5OmMqFb_10ufo2fontir.exit

.lr.ph.i:                                         ; preds = %bb.g
  %i.an = extractvalue { i64, ptr } %i.ak, 1      ; 2 uses
  %i.ao = call noundef i64 @_RNvXNtCslNgMNtvf3y7_6memchr3extPhNtB2_7Pointer8distanceCs2zvA5OmMqFb_10ufo2fontir(ptr noundef %i.an, ptr noundef nonnull readonly %.lcssa), !noalias !802 ; 4 uses
  %i.ap = icmp ult i64 %i.ao, %i.ag
  br i1 %i.ap, label %bb.h, label %bb.l

.lr.ph.jt0.i:                                     ; preds = %.backedge.jt0.i
  %i.aq = extractvalue { i64, ptr } %i.bx, 1      ; 2 uses
  %i.ar = call noundef i64 @_RNvXNtCslNgMNtvf3y7_6memchr3extPhNtB2_7Pointer8distanceCs2zvA5OmMqFb_10ufo2fontir(ptr noundef %i.aq, ptr noundef nonnull readonly %.lcssa), !noalias !802 ; 4 uses
  %i.as = icmp ult i64 %i.ar, %i.ag
  br i1 %i.as, label %bb.i, label %bb.l

.lr.ph.jt2.i:                                     ; preds = %.backedge.jt2.i
  %i.at = extractvalue { i64, ptr } %i.cc, 1      ; 2 uses
  %i.au = call noundef i64 @_RNvXNtCslNgMNtvf3y7_6memchr3extPhNtB2_7Pointer8distanceCs2zvA5OmMqFb_10ufo2fontir(ptr noundef %i.at, ptr noundef nonnull readonly %.lcssa), !noalias !802 ; 3 uses
  %i.av = icmp ult i64 %i.au, %i.ag
  br i1 %i.av, label %bb.j, label %bb.l

.lr.ph.jt1.i:                                     ; preds = %.backedge.jt1.i
  %i.aw = extractvalue { i64, ptr } %i.ch, 1      ; 2 uses
  %i.ax = call noundef i64 @_RNvXNtCslNgMNtvf3y7_6memchr3extPhNtB2_7Pointer8distanceCs2zvA5OmMqFb_10ufo2fontir(ptr noundef %i.aw, ptr noundef nonnull readonly %.lcssa), !noalias !802 ; 3 uses
  %i.ay = icmp ult i64 %i.ax, %i.ag
  br i1 %i.ay, label %bb.k, label %bb.l

bb.h:                                             ; preds = %.lr.ph.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.an, i64 1 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.lcssa, i64 %i.ao
  %i.bb = load i8, ptr %i.ba, align 1, !alias.scope !799, !noundef !6 ; 3 uses
  switch i8 %.sroa.0.035.ph, label %default.unreachable [
    i8 0, label %bb.m
    i8 1, label %bb.n
    i8 2, label %bb.o
  ]

bb.i:                                             ; preds = %.lr.ph.jt0.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aq, i64 1
  %i.bd = getelementptr inbounds nuw i8, ptr %.lcssa, i64 %i.ar
  %i.be = load i8, ptr %i.bd, align 1, !alias.scope !799, !noundef !6
  br label %bb.m

bb.j:                                             ; preds = %.lr.ph.jt2.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.at, i64 1
  %i.bg = getelementptr inbounds nuw i8, ptr %.lcssa, i64 %i.au
  %i.bh = load i8, ptr %i.bg, align 1, !alias.scope !799, !noundef !6
  br label %bb.o

bb.k:                                             ; preds = %.lr.ph.jt1.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.aw, i64 1
  %i.bj = getelementptr inbounds nuw i8, ptr %.lcssa, i64 %i.ax
  %i.bk = load i8, ptr %i.bj, align 1, !alias.scope !799, !noundef !6
  br label %bb.n

bb.l:                                             ; preds = %.lr.ph.jt1.i, %.lr.ph.jt2.i, %.lr.ph.jt0.i, %.lr.ph.i
  %i.bl = phi i64 [ %i.ar, %.lr.ph.jt0.i ], [ %i.au, %.lr.ph.jt2.i ], [ %i.ax, %.lr.ph.jt1.i ], [ %i.ao, %.lr.ph.i ]
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.bl, i64 noundef range(i64 1, -9223372036854775808) %i.ag, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @45) #21, !noalias !803
  unreachable

bb.m:                                             ; preds = %bb.i, %bb.h
  %i.bm = phi i8 [ %i.be, %bb.i ], [ %i.bb, %bb.h ]
  %i.bn = phi ptr [ %i.bc, %bb.i ], [ %i.az, %bb.h ] ; 3 uses
  %i.bo = phi i64 [ %i.ar, %bb.i ], [ %i.ao, %bb.h ]
  switch i8 %i.bm, label %.backedge.jt0.i [
    i8 62, label %4
    i8 39, label %.backedge.jt1.i
    i8 34, label %.backedge.jt2.i
  ]

bb.n:                                             ; preds = %bb.k, %bb.h
  %i.bp = phi i8 [ %i.bk, %bb.k ], [ %i.bb, %bb.h ]
  %i.bq = phi ptr [ %i.bi, %bb.k ], [ %i.az, %bb.h ] ; 2 uses
  %i.br = icmp eq i8 %i.bp, 39
  br i1 %i.br, label %.backedge.jt0.i, label %.backedge.jt1.i

bb.o:                                             ; preds = %bb.j, %bb.h
  %i.bs = phi i8 [ %i.bh, %bb.j ], [ %i.bb, %bb.h ]
  %i.bt = phi ptr [ %i.bf, %bb.j ], [ %i.az, %bb.h ] ; 2 uses
  %i.bu = icmp eq i8 %i.bs, 34
  br i1 %i.bu, label %.backedge.jt0.i, label %.backedge.jt2.i

.backedge.jt0.i:                                  ; preds = %bb.n, %bb.o, %bb.m
  %i.bv = phi ptr [ %i.bn, %bb.m ], [ %i.bq, %bb.n ], [ %i.bt, %bb.o ]
  %i.bw = load atomic ptr, ptr @_RNvNvNtNtNtCslNgMNtvf3y7_6memchr4arch6x86_646memchr11memchr3_raw2FN monotonic, align 8, !noalias !800, !nonnull !6, !noundef !6
  %i.bx = call { i64, ptr } %i.bw(i8 noundef 62, i8 noundef 39, i8 noundef 34, ptr noundef nonnull %i.bv, ptr noundef readonly %i.ai), !noalias !801, !inline_history !787 ; 2 uses
  %i.by = extractvalue { i64, ptr } %i.bx, 0
  %i.bz = trunc nuw i64 %i.by to i1
  br i1 %i.bz, label %.lr.ph.jt0.i, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCs2zvA5OmMqFb_10ufo2fontir.exit

.backedge.jt2.i:                                  ; preds = %bb.m, %bb.o
  %i.ca = phi ptr [ %i.bt, %bb.o ], [ %i.bn, %bb.m ]
  %i.cb = load atomic ptr, ptr @_RNvNvNtNtNtCslNgMNtvf3y7_6memchr4arch6x86_646memchr11memchr3_raw2FN monotonic, align 8, !noalias !800, !nonnull !6, !noundef !6
  %i.cc = call { i64, ptr } %i.cb(i8 noundef 62, i8 noundef 39, i8 noundef 34, ptr noundef nonnull %i.ca, ptr noundef readonly %i.ai), !noalias !801, !inline_history !787 ; 2 uses
  %i.cd = extractvalue { i64, ptr } %i.cc, 0
  %i.ce = trunc nuw i64 %i.cd to i1
  br i1 %i.ce, label %.lr.ph.jt2.i, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCs2zvA5OmMqFb_10ufo2fontir.exit

.backedge.jt1.i:                                  ; preds = %bb.m, %bb.n
  %i.cf = phi ptr [ %i.bq, %bb.n ], [ %i.bn, %bb.m ]
  %i.cg = load atomic ptr, ptr @_RNvNvNtNtNtCslNgMNtvf3y7_6memchr4arch6x86_646memchr11memchr3_raw2FN monotonic, align 8, !noalias !800, !nonnull !6, !noundef !6
  %i.ch = call { i64, ptr } %i.cg(i8 noundef 62, i8 noundef 39, i8 noundef 34, ptr noundef nonnull %i.cf, ptr noundef readonly %i.ai), !noalias !801, !inline_history !787 ; 2 uses
  %i.ci = extractvalue { i64, ptr } %i.ch, 0
  %i.cj = trunc nuw i64 %i.ci to i1
  br i1 %i.cj, label %.lr.ph.jt1.i, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCs2zvA5OmMqFb_10ufo2fontir.exit

bb.p:                                             ; preds = %._crit_edge
  %i.ck = load i64, ptr %3, align 8, !noundef !6
  %i.cl = add i64 %i.ck, %.sroa.0.0.ph
  store i64 %i.cl, ptr %3, align 8
  %i.cm = load i64, ptr %i.c, align 8, !noundef !6 ; 3 uses
  %i.cn = icmp ugt i64 %i.d, %i.cm
  br i1 %i.cn, label %bb.t, label %bb.s, !prof !11

4:                                                ; preds = %bb.m
  %5 = add nuw i64 %i.bo, 1                       ; 7 uses
  %.not = icmp ugt i64 %5, %i.ag
  br i1 %.not, label %6, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCs2zvA5OmMqFb_10ufo2fontir.exit31, !prof !14

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCs2zvA5OmMqFb_10ufo2fontir.exit: ; preds = %bb.g, %.backedge.jt0.i, %.backedge.jt2.i, %.backedge.jt1.i
  %.sroa.0.7.ph = phi i8 [ %.sroa.0.035.ph, %bb.g ], [ 2, %.backedge.jt2.i ], [ 1, %.backedge.jt1.i ], [ 0, %.backedge.jt0.i ]
  call void @_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.ag)
  %i.co = load i64, ptr %i.c, align 8, !alias.scope !804, !noundef !6 ; 2 uses
  %i.cp = icmp sgt i64 %i.co, -1
  call void @llvm.assume(i1 %i.cp)
  %i.cq = load ptr, ptr %i.h, align 8, !alias.scope !804, !nonnull !6, !noundef !6
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.co
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cr, ptr nonnull readonly align 1 %.lcssa, i64 %i.ag, i1 false)
  %.pre.i = load i64, ptr %i.c, align 8, !alias.scope !804
  %i.cs = add i64 %.pre.i, %i.ag
  store i64 %i.cs, ptr %i.c, align 8, !alias.scope !804
  %i.ct = load i64, ptr %i.n, align 8, !alias.scope !805, !noundef !6
  %i.cu = add i64 %i.ct, %i.ag
  %i.cv = load i64, ptr %i.o, align 8, !alias.scope !805, !noundef !6
  %i.cw = call i64 @llvm.umin.i64(i64 %i.cu, i64 %i.cv)
  store i64 %i.cw, ptr %i.n, align 8, !alias.scope !805
  %i.cx = add i64 %i.ag, %.sroa.0.0.ph
  br label %.outer

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCs2zvA5OmMqFb_10ufo2fontir.exit31: ; preds = %4
  call void @_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %5)
  %i.cy = load i64, ptr %i.c, align 8, !alias.scope !806, !noundef !6 ; 2 uses
  %i.cz = icmp sgt i64 %i.cy, -1
  call void @llvm.assume(i1 %i.cz)
  %i.da = load ptr, ptr %i.h, align 8, !alias.scope !806, !nonnull !6, !noundef !6
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.cy
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.db, ptr noundef nonnull readonly align 1 dereferenceable(1) %.lcssa, i64 %5, i1 false)
  %.pre.i30 = load i64, ptr %i.c, align 8, !alias.scope !806
  %i.dc = add i64 %.pre.i30, %5                   ; 5 uses
  store i64 %i.dc, ptr %i.c, align 8, !alias.scope !806
  %i.dd = load i64, ptr %i.n, align 8, !alias.scope !807, !noundef !6
  %i.de = add i64 %i.dd, %5
  %i.df = load i64, ptr %i.o, align 8, !alias.scope !807, !noundef !6
  %i.dg = call i64 @llvm.umin.i64(i64 %i.de, i64 %i.df)
  store i64 %i.dg, ptr %i.n, align 8, !alias.scope !807
  %i.dh = add i64 %5, %.sroa.0.0.ph
  %i.di = load i64, ptr %3, align 8, !noundef !6
  %i.dj = add i64 %i.dh, %i.di
  store i64 %i.dj, ptr %3, align 8
  %i.dk = icmp ugt i64 %i.d, %i.dc
  br i1 %i.dk, label %bb.r, label %bb.q, !prof !11

6:                                                ; preds = %4
  call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %5, i64 noundef %i.ag, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #21
  unreachable

bb.q:                                             ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCs2zvA5OmMqFb_10ufo2fontir.exit31
  %i.dl = load ptr, ptr %i.h, align 8, !nonnull !6, !noundef !6
  %i.dm = sub nuw i64 %i.dc, %i.d
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.d
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.dn, ptr %i.do, align 8
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.dm, ptr %i.dp, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.u

bb.r:                                             ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCs2zvA5OmMqFb_10ufo2fontir.exit31
  call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %i.d, i64 noundef %i.dc, i64 noundef %i.dc, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #21
  unreachable

bb.s:                                             ; preds = %bb.p
  %switch.offset.i = add nuw nsw i8 %.sroa.0.035.ph, 6
  store i64 -9223372036854775799, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %switch.offset.i, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.u

bb.t:                                             ; preds = %bb.p
  call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %i.d, i64 noundef %i.cm, i64 noundef %i.cm, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #21
  unreachable

bb.u:                                             ; preds = %bb.q, %bb.v, %bb.s
  ret void

_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error4kind.exit: ; preds = %bb.f, %bb.e, %bb.d, %.noexc
  %.sroa.0.0.i = phi i8 [ %i.af, %bb.f ], [ %switch.idx.cast.i.i.i, %bb.d ], [ %i.ad, %bb.e ], [ %i.y, %.noexc ]
  %i.dq = icmp eq i8 %.sroa.0.0.i, 35
  br i1 %i.dq, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error4kind.exit
  %i.dr = load i64, ptr %3, align 8, !noundef !6
  %i.ds = add i64 %i.dr, %.sroa.0.0.ph
  store i64 %i.ds, ptr %3, align 8
  call fastcc void @_RNvXs3_NtCs6XWSMUxlGVQ_9quick_xml6errorsNtB5_5ErrorINtNtCsf3Ta7LF998c_4core7convert4FromNtNtNtBS_2io5error5ErrorE4from(ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %0, ptr noundef nonnull %.val)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.u

bb.w:                                             ; preds = %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error4kind.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  switch i64 %i.s, label %default.unreachable [
    i64 2, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultRShNtNtNtB4_2io5error5ErrorEECs2zvA5OmMqFb_10ufo2fontir.exit
    i64 3, label %bb.x
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultRShNtNtNtB4_2io5error5ErrorEECs2zvA5OmMqFb_10ufo2fontir.exit
    i64 1, label %bb.y
  ], !prof !9

bb.x:                                             ; preds = %bb.w
  %i.dt = icmp ult ptr %.val, inttoptr (i64 188978561024 to ptr)
  %i.du = and i64 %i.r, 1095216660480
  %i.dv = icmp ne i64 %i.du, 1095216660480
  call void @llvm.assume(i1 %i.dt)
  call void @llvm.assume(i1 %i.dv)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultRShNtNtNtB4_2io5error5ErrorEECs2zvA5OmMqFb_10ufo2fontir.exit

bb.y:                                             ; preds = %bb.w
  %i.dw = getelementptr i8, ptr %.val, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dw) ]
  store ptr %i.dw, ptr %i.m, align 8, !alias.scope !808
  store i8 3, ptr %i.a, align 8, !alias.scope !808
  call void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.m)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultRShNtNtNtB4_2io5error5ErrorEECs2zvA5OmMqFb_10ufo2fontir.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultRShNtNtNtB4_2io5error5ErrorEECs2zvA5OmMqFb_10ufo2fontir.exit: ; preds = %bb.w, %bb.w, %bb.x, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvXs5_NtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreaderINtB5_9BufReaderIBS_NtNtCs5Xr050g3D4S_3std2fs4FileEENtNtB9_8buf_read7BufRead8fill_bufCs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %1)
  %i.dx = load ptr, ptr %i.b, align 8, !noundef !6 ; 2 uses
  %i.dy = icmp eq ptr %i.dx, null
  br i1 %i.dy, label %.lr.ph, label %._crit_edge

bb.z:                                             ; preds = %.noexc, %bb.c
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs2zvA5OmMqFb_10ufo2fontir(ptr nonnull %.val) #22
          to label %bb.ab unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.ab:                                            ; preds = %bb.z
  resume { ptr, i32 } %lpad.thr_comm
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXNtNtCslNOSSXeKrwO_9quick_xml6reader15buffered_readerINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEINtB5_9XmlSourceQINtNtB12_3vec3VechEE9read_withNtNtNtB7_6parser7element13ElementParserECs2zvA5OmMqFb_10ufo2fontir(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(8) %3) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !6 ; 5 uses
  %i.e = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.e)
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  br label %.outer

.outer:                                           ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCs2zvA5OmMqFb_10ufo2fontir.exit, %bb.a
  %.sroa.0.039.ph = phi i8 [ %.sroa.0.7.ph, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCs2zvA5OmMqFb_10ufo2fontir.exit ], [ 0, %bb.a ] ; 2 uses
  %.sroa.0.0.ph = phi i64 [ %i.cq, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCs2zvA5OmMqFb_10ufo2fontir.exit ], [ 0, %bb.a ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvXs5_NtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileENtNtB9_8buf_read7BufRead8fill_bufCs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1)
  %i.k = load ptr, ptr %i.b, align 8, !noundef !6 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.outer, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultRShNtNtNtB4_2io5error5ErrorEECs2zvA5OmMqFb_10ufo2fontir.exit
  %.val = load ptr, ptr %i.f, align 8, !nonnull !6, !noundef !6 ; 9 uses
  %i.m = ptrtoint ptr %.val to i64                ; 4 uses
  %i.n = and i64 %i.m, 3                          ; 2 uses
  switch i64 %i.n, label %.lr.ph.unreachabledefault [
    i64 2, label %bb.b
    i64 3, label %bb.c
    i64 0, label %bb.d
    i64 1, label %bb.e
  ], !prof !9

.lr.ph.unreachabledefault:                        ; preds = %.lr.ph
  unreachable

default.unreachable:                              ; preds = %bb.g, %bb.y
  unreachable

bb.b:                                             ; preds = %.lr.ph
  %i.o = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCsf3Ta7LF998c_4core2io5error12os_functions16get_os_functions()
          to label %.noexc unwind label %bb.ac

.noexc:                                           ; preds = %bb.b
  %i.p = lshr i64 %i.m, 32
  %i.q = trunc nuw i64 %i.p to i32
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !nonnull !6, !noundef !6
  %i.t = invoke noundef i8 %i.s(i32 noundef %i.q)
          to label %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error4kind.exit unwind label %bb.ac, !inline_history !0

bb.c:                                             ; preds = %.lr.ph
  %i.u = lshr i64 %i.m, 32
  %i.v = icmp ult ptr %.val, inttoptr (i64 188978561024 to ptr)
  %switch.idx.cast.i.i.i = trunc i64 %i.u to i8   ; 2 uses
  %i.w = icmp ne i8 %switch.idx.cast.i.i.i, -1
  call void @llvm.assume(i1 %i.v)
  call void @llvm.assume(i1 %i.w)
  br label %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error4kind.exit

bb.d:                                             ; preds = %.lr.ph
  %i.x = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.y = load i8, ptr %i.x, align 8, !range !10, !noundef !6
  br label %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error4kind.exit

bb.e:                                             ; preds = %.lr.ph
  %i.z = getelementptr i8, ptr %.val, i64 31
  %i.aa = load i8, ptr %i.z, align 8, !range !10, !noundef !6
  br label %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error4kind.exit

._crit_edge:                                      ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultRShNtNtNtB4_2io5error5ErrorEECs2zvA5OmMqFb_10ufo2fontir.exit, %.outer
  %.lcssa = phi ptr [ %i.k, %.outer ], [ %i.dw, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultRShNtNtNtB4_2io5error5ErrorEECs2zvA5OmMqFb_10ufo2fontir.exit ] ; 12 uses
  %i.ab = load i64, ptr %i.f, align 8, !noundef !6 ; 12 uses
  %i.ac = icmp eq i64 %i.ab, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br i1 %i.ac, label %bb.o, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  call void @llvm.experimental.noalias.scope.decl(metadata !829)
  %i.ad = getelementptr i8, ptr %.lcssa, i64 %i.ab ; 4 uses
  %i.ae = load atomic ptr, ptr @_RNvNvNtNtNtCslNgMNtvf3y7_6memchr4arch6x86_646memchr11memchr3_raw2FN monotonic, align 8, !noalias !830, !nonnull !6, !noundef !6
  %i.af = call { i64, ptr } %i.ae(i8 noundef 62, i8 noundef 39, i8 noundef 34, ptr noundef nonnull readonly %.lcssa, ptr noundef readonly %i.ad), !noalias !831, !inline_history !816 ; 2 uses
  %i.ag = extractvalue { i64, ptr } %i.af, 0
  %i.ah = trunc nuw i64 %i.ag to i1
  br i1 %i.ah, label %.lr.ph.i, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCs2zvA5OmMqFb_10ufo2fontir.exit

.lr.ph.i:                                         ; preds = %bb.f
  %i.ai = extractvalue { i64, ptr } %i.af, 1      ; 2 uses
  %i.aj = call noundef i64 @_RNvXNtCslNgMNtvf3y7_6memchr3extPhNtB2_7Pointer8distanceCs2zvA5OmMqFb_10ufo2fontir(ptr noundef %i.ai, ptr noundef nonnull readonly %.lcssa), !noalias !832 ; 4 uses
  %i.ak = icmp ult i64 %i.aj, %i.ab
  br i1 %i.ak, label %bb.g, label %bb.k

.lr.ph.jt0.i:                                     ; preds = %.backedge.jt0.i
  %i.al = extractvalue { i64, ptr } %i.bs, 1      ; 2 uses
  %i.am = call noundef i64 @_RNvXNtCslNgMNtvf3y7_6memchr3extPhNtB2_7Pointer8distanceCs2zvA5OmMqFb_10ufo2fontir(ptr noundef %i.al, ptr noundef nonnull readonly %.lcssa), !noalias !832 ; 4 uses
  %i.an = icmp ult i64 %i.am, %i.ab
  br i1 %i.an, label %bb.h, label %bb.k

.lr.ph.jt2.i:                                     ; preds = %.backedge.jt2.i
  %i.ao = extractvalue { i64, ptr } %i.bx, 1      ; 2 uses
  %i.ap = call noundef i64 @_RNvXNtCslNgMNtvf3y7_6memchr3extPhNtB2_7Pointer8distanceCs2zvA5OmMqFb_10ufo2fontir(ptr noundef %i.ao, ptr noundef nonnull readonly %.lcssa), !noalias !832 ; 3 uses
  %i.aq = icmp ult i64 %i.ap, %i.ab
  br i1 %i.aq, label %bb.i, label %bb.k

.lr.ph.jt1.i:                                     ; preds = %.backedge.jt1.i
end_hunk_0
