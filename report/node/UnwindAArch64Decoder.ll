inline.NumInlined: 2630
inline.NumDeleted: 747
begin_hunk_0_@_ZN4LIEF2PE14unwind_aarch647Decoder6decodeILNS1_7OPCODESE28EEEbb:bb.a
  %i.p = call noundef nonnull align 8 dereferenceable(17) ptr @_ZN4LIEF2PE14unwind_aarch647Decoder3logIJEEERS2_PKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(17) %0, ptr noundef nonnull @.str.49) ; 0 uses
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN4LIEF2PE14unwind_aarch647Decoder6decodeILNS1_7OPCODESE29EEEbb(ptr noundef nonnull align 8 dereferenceable(17) %0, i1 noundef zeroext %1) #1 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8              ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8              ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i8 0, ptr %i.a, align 1
  %i.f = load ptr, ptr %i.c, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = call i64 %i.h(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull %i.a, i64 noundef %i.e, i64 noundef 1, i64 noundef 0) #22, !inline_history !4
  %i.j = and i64 %i.i, 4294967296
  %.not.i.i.i.i = icmp eq i64 %i.j, 0
  store i64 %i.e, ptr %i.d, align 8
  br i1 %.not.i.i.i.i, label %_ZNK4LIEF12BinaryStream4peekIhEENS_6resultIT_EEv.exit.thread.i.i.i, label %bb.b

_ZNK4LIEF12BinaryStream4peekIhEENS_6resultIT_EEv.exit.thread.i.i.i: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %_ZN4LIEF2PE14unwind_aarch647Decoder7read_u8Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.l = load i8, ptr %i.k, align 8, !range !5, !noundef !6
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.c, label %_ZNK4LIEF12BinaryStream4peekIhEENS_6resultIT_EEv.exit.i.i.i

bb.c:                                             ; preds = %bb.b
  call void @_ZN4LIEF11swap_endianIhEEvPT_(ptr noundef nonnull %i.a) #22
  %.pre.i.i.i = load i64, ptr %i.d, align 8
  br label %_ZNK4LIEF12BinaryStream4peekIhEENS_6resultIT_EEv.exit.i.i.i

_ZNK4LIEF12BinaryStream4peekIhEENS_6resultIT_EEv.exit.i.i.i: ; preds = %bb.c, %bb.b
  %i.n = phi i64 [ %i.e, %bb.b ], [ %.pre.i.i.i, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.o = add i64 %i.n, 1
  store i64 %i.o, ptr %i.d, align 8
  br label %_ZN4LIEF2PE14unwind_aarch647Decoder7read_u8Ev.exit

_ZN4LIEF2PE14unwind_aarch647Decoder7read_u8Ev.exit: ; preds = %_ZNK4LIEF12BinaryStream4peekIhEENS_6resultIT_EEv.exit.thread.i.i.i, %_ZNK4LIEF12BinaryStream4peekIhEENS_6resultIT_EEv.exit.i.i.i
  %.str.50..str.51 = select i1 %1, ptr @.str.50, ptr @.str.51
  %i.p = call noundef nonnull align 8 dereferenceable(17) ptr @_ZN4LIEF2PE14unwind_aarch647Decoder3logIJEEERS2_PKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(17) %0, ptr noundef nonnull %.str.50..str.51) ; 0 uses
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i64 1, 4294967298) i64 @_ZN4LIEF2PE14unwind_aarch647Decoder3runEb(ptr noundef nonnull align 8 dereferenceable(17) %0, i1 noundef zeroext %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 7 uses
  %i.b = alloca i8, align 1                       ; 7 uses
  %i.c = alloca i64, align 8                      ; 7 uses
  %2 = alloca %"struct.fmt::v11::join_view", align 8 ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8
  %.not125 = icmp eq ptr %i.e, null
  br i1 %.not125, label %.thread98, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  br label %.preheader

.preheader:                                       ; preds = %.preheader.backedge, %.preheader.lr.ph
  %.027.idx115 = phi i64 [ 0, %.preheader.lr.ph ], [ %.027.idx115.be, %.preheader.backedge ] ; 2 uses
  %.027.ptr116 = getelementptr inbounds nuw i8, ptr @_ZGRN4LIEF2PE14unwind_aarch64L8HANDLERSE_, i64 %.027.idx115 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.027.ptr116, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %.027.ptr116, i64 20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  %i.j = load ptr, ptr %i.d, align 8              ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8              ; 3 uses
  store i64 %i.l, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store i8 0, ptr %i.b, align 1
  %i.m = load ptr, ptr %i.j, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 96
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = call i64 %i.o(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull %i.b, i64 noundef %i.l, i64 noundef 1, i64 noundef 0) #22, !inline_history !131
  %i.q = and i64 %i.p, 4294967296
  %.not.i = icmp eq i64 %i.q, 0
  store i64 %i.l, ptr %i.k, align 8
  br i1 %.not.i, label %_ZNK4LIEF12BinaryStream4peekIhEENS_6resultIT_EEv.exit.thread, label %bb.b

_ZNK4LIEF12BinaryStream4peekIhEENS_6resultIT_EEv.exit.thread: ; preds = %.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  br label %.thread87.sink.split

bb.b:                                             ; preds = %.preheader
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.s = load i8, ptr %i.r, align 8, !range !5, !noundef !6
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.c, label %_ZNK4LIEF12BinaryStream4peekIhEENS_6resultIT_EEv.exit

bb.c:                                             ; preds = %bb.b
  call void @_ZN4LIEF11swap_endianIhEEvPT_(ptr noundef nonnull %i.b) #22
  br label %_ZNK4LIEF12BinaryStream4peekIhEENS_6resultIT_EEv.exit

_ZNK4LIEF12BinaryStream4peekIhEENS_6resultIT_EEv.exit: ; preds = %bb.b, %bb.c
  %i.u = load i8, ptr %i.b, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  %i.v = zext i8 %i.u to i32
  %i.w = load i32, ptr %i.h, align 8
  %i.x = and i32 %i.w, %i.v
  %i.y = load i32, ptr %i.i, align 4
  %.not34 = icmp eq i32 %i.x, %i.y
  br i1 %.not34, label %bb.d, label %bb.s

bb.d:                                             ; preds = %_ZNK4LIEF12BinaryStream4peekIhEENS_6resultIT_EEv.exit
  %i.z = getelementptr inbounds nuw i8, ptr %.027.ptr116, i64 16
  %i.aa = call noundef nonnull align 8 dereferenceable(17) ptr @_ZN4LIEF2PE14unwind_aarch647Decoder5lognfIJmEEERS2_PKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(17) %0, ptr noundef nonnull @.str.53, ptr noundef nonnull align 8 dereferenceable(8) %i.c) ; 0 uses
  %i.ab = load ptr, ptr %i.d, align 8             ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 6 uses
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = load i32, ptr %i.z, align 8             ; 7 uses
  %i.af = sext i32 %i.ae to i64                   ; 2 uses
  %i.ag = icmp slt i32 %i.ae, 0
  br i1 %i.ag, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.158) #24
  unreachable

bb.f:                                             ; preds = %bb.d
  %.not102 = icmp eq i32 %i.ae, 0
  br i1 %.not102, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.ah = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.af) #27 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.af
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %_ZNSt6vectorIhSaIhEE9push_backERKh.exit
  %.032120 = phi i32 [ 0, %.lr.ph ], [ %i.be, %_ZNSt6vectorIhSaIhEE9push_backERKh.exit ]
  %.sroa.049.0119 = phi ptr [ %i.ah, %.lr.ph ], [ %.sroa.049.2, %_ZNSt6vectorIhSaIhEE9push_backERKh.exit ] ; 6 uses
  %.sroa.9.0118 = phi ptr [ %i.ah, %.lr.ph ], [ %.sroa.9.2, %_ZNSt6vectorIhSaIhEE9push_backERKh.exit ] ; 5 uses
  %.sroa.16.0117 = phi ptr [ %i.ai, %.lr.ph ], [ %.sroa.16.2, %_ZNSt6vectorIhSaIhEE9push_backERKh.exit ] ; 3 uses
  %i.ak = load i64, ptr %i.ac, align 8            ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i8 0, ptr %i.a, align 1
  %i.al = load ptr, ptr %i.ab, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 96
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = call i64 %i.an(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noundef nonnull %i.a, i64 noundef %i.ak, i64 noundef 1, i64 noundef 0) #22, !inline_history !132
  %i.ap = and i64 %i.ao, 4294967296
  %.not.i.i = icmp eq i64 %i.ap, 0
  store i64 %i.ak, ptr %i.ac, align 8
  br i1 %.not.i.i, label %_ZNK4LIEF12BinaryStream4readIhEENS_6resultIT_EEv.exit.thread, label %bb.h

_ZNK4LIEF12BinaryStream4readIhEENS_6resultIT_EEv.exit.thread: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %.critedge

bb.h:                                             ; preds = %bb.g
  %i.aq = load i8, ptr %i.aj, align 8, !range !5, !noundef !6
  %i.ar = trunc nuw i8 %i.aq to i1
  br i1 %i.ar, label %bb.i, label %_ZNK4LIEF12BinaryStream4readIhEENS_6resultIT_EEv.exit

bb.i:                                             ; preds = %bb.h
  call void @_ZN4LIEF11swap_endianIhEEvPT_(ptr noundef nonnull %i.a) #22
  %.pre.i = load i64, ptr %i.ac, align 8
  br label %_ZNK4LIEF12BinaryStream4readIhEENS_6resultIT_EEv.exit

_ZNK4LIEF12BinaryStream4readIhEENS_6resultIT_EEv.exit: ; preds = %bb.h, %bb.i
  %i.as = phi i64 [ %i.ak, %bb.h ], [ %.pre.i, %bb.i ]
  %i.at = load i8, ptr %i.a, align 1              ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.au = add i64 %i.as, 1
  store i64 %i.au, ptr %i.ac, align 8
  %.not.i38 = icmp eq ptr %.sroa.9.0118, %.sroa.16.0117
  br i1 %.not.i38, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNK4LIEF12BinaryStream4readIhEENS_6resultIT_EEv.exit
  store i8 %i.at, ptr %.sroa.9.0118, align 1
  br label %_ZNSt6vectorIhSaIhEE9push_backERKh.exit

bb.k:                                             ; preds = %_ZNK4LIEF12BinaryStream4readIhEENS_6resultIT_EEv.exit
  %i.av = ptrtoint ptr %.sroa.9.0118 to i64
  %i.aw = ptrtoint ptr %.sroa.049.0119 to i64
  %i.ax = sub i64 %i.av, %i.aw                    ; 8 uses
  %i.ay = icmp eq i64 %i.ax, 9223372036854775807
  br i1 %i.ay, label %bb.l, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i

bb.l:                                             ; preds = %bb.k
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.60) #24
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.k
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ax, i64 1)
  %i.az = add i64 %.sroa.speculated.i.i.i, %i.ax  ; 2 uses
  %i.ba = icmp ult i64 %i.az, %i.ax
  %i.bb = call i64 @llvm.umin.i64(i64 %i.az, i64 9223372036854775807)
  %i.bc = select i1 %i.ba, i64 9223372036854775807, i64 %i.bb ; 3 uses
  %.not.i.i.i = icmp eq i64 %i.bc, 0
  br i1 %.not.i.i.i, label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i, label %3

3:                                                ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i
  %4 = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bc) #27
  br label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i

_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i: ; preds = %3, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i
  %5 = phi ptr [ %4, %3 ], [ null, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i ] ; 4 uses
  %6 = getelementptr inbounds nuw i8, ptr %5, i64 %i.ax ; 2 uses
  store i8 %i.at, ptr %6, align 1
  %7 = icmp sgt i64 %i.ax, 0
  br i1 %7, label %bb.m, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i

bb.m:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %5, ptr align 1 %.sroa.049.0119, i64 %i.ax, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i: ; preds = %bb.m, %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i
  %.not.i17.i.i = icmp eq ptr %.sroa.049.0119, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.049.0119, i64 noundef %i.ax) #25
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i: ; preds = %bb.n, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 %i.bc
  br label %_ZNSt6vectorIhSaIhEE9push_backERKh.exit

_ZNSt6vectorIhSaIhEE9push_backERKh.exit:          ; preds = %bb.j, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i
  %.sroa.16.2 = phi ptr [ %i.bd, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i ], [ %.sroa.16.0117, %bb.j ] ; 2 uses
  %.pn = phi ptr [ %6, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i ], [ %.sroa.9.0118, %bb.j ]
  %.sroa.049.2 = phi ptr [ %5, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i ], [ %.sroa.049.0119, %bb.j ] ; 2 uses
  %.sroa.9.2 = getelementptr inbounds nuw i8, ptr %.pn, i64 1 ; 2 uses
  %i.be = add nuw nsw i32 %.032120, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.be, %i.ae
  br i1 %exitcond.not, label %.critedge, label %bb.g, !llvm.loop !133

.critedge:                                        ; preds = %_ZNSt6vectorIhSaIhEE9push_backERKh.exit, %bb.f, %_ZNK4LIEF12BinaryStream4readIhEENS_6resultIT_EEv.exit.thread
  %.sroa.16.0114 = phi ptr [ %.sroa.16.0117, %_ZNK4LIEF12BinaryStream4readIhEENS_6resultIT_EEv.exit.thread ], [ null, %bb.f ], [ %.sroa.16.2, %_ZNSt6vectorIhSaIhEE9push_backERKh.exit ]
  %.sroa.9.0111 = phi ptr [ %.sroa.9.0118, %_ZNK4LIEF12BinaryStream4readIhEENS_6resultIT_EEv.exit.thread ], [ null, %bb.f ], [ %.sroa.9.2, %_ZNSt6vectorIhSaIhEE9push_backERKh.exit ]
  %.sroa.049.0108 = phi ptr [ %.sroa.049.0119, %_ZNK4LIEF12BinaryStream4readIhEENS_6resultIT_EEv.exit.thread ], [ null, %bb.f ], [ %.sroa.049.2, %_ZNSt6vectorIhSaIhEE9push_backERKh.exit ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  store ptr %.sroa.049.0108, ptr %2, align 8, !alias.scope !134
  store ptr %.sroa.9.0111, ptr %i.f, align 8, !alias.scope !134
  store ptr @.str.55, ptr %i.g, align 8, !alias.scope !134
  store i64 0, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !alias.scope !134
  %i.bf = call noundef nonnull align 8 dereferenceable(17) ptr @_ZN4LIEF2PE14unwind_aarch647Decoder5lognfIJN3fmt3v119join_viewIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEESD_cEEEEERS2_PKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(17) %0, ptr noundef nonnull @.str.54, ptr noundef nonnull align 8 dereferenceable(32) %2) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  %i.bg = icmp slt i32 %i.ae, 4
  br i1 %i.bg, label %.lr.ph124.preheader, label %._crit_edge

.lr.ph124.preheader:                              ; preds = %.critedge
  %i.bh = sub nsw i32 4, %i.ae
  br label %.lr.ph124

._crit_edge:                                      ; preds = %.lr.ph124, %.critedge
  %i.bi = call noundef nonnull align 8 dereferenceable(17) ptr @_ZN4LIEF2PE14unwind_aarch647Decoder5lognfIJEEERS2_PKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(17) %0, ptr noundef nonnull @.str.57) ; 0 uses
  %.not.i.i.i39 = icmp eq ptr %.sroa.049.0108, null
  br i1 %.not.i.i.i39, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %._crit_edge
  %i.bj = ptrtoint ptr %.sroa.16.0114 to i64
  %i.bk = ptrtoint ptr %.sroa.049.0108 to i64
  %i.bl = sub i64 %i.bj, %i.bk
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.049.0108, i64 noundef %i.bl) #25
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %._crit_edge, %bb.o
  store i64 %i.ad, ptr %i.ac, align 8
  %.unpack = load i64, ptr %.027.ptr116, align 8  ; 3 uses
  %.elt35 = getelementptr inbounds nuw i8, ptr %.027.ptr116, i64 8
  %.unpack36 = load i64, ptr %.elt35, align 8
  %i.bm = getelementptr inbounds i8, ptr %0, i64 %.unpack36 ; 2 uses
  %i.bn = and i64 %.unpack, 1
  %.not.i.i.i40 = icmp eq i64 %i.bn, 0
  br i1 %.not.i.i.i40, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit
  %i.bo = load ptr, ptr %i.bm, align 8
  %i.bp = getelementptr i8, ptr %i.bo, i64 %.unpack
  %i.bq = getelementptr i8, ptr %i.bp, i64 -1
  %i.br = load ptr, ptr %i.bq, align 8, !nosanitize !6
  br label %_ZNKSt12_Mem_fn_baseIMN4LIEF2PE14unwind_aarch647DecoderEFbbELb1EEclIJPS3_RbEEEDTclsr3stdE8__invokedtdefpT6_M_pmfspclsr3stdE7forwardIT_Efp_EEEDpOSA_.exit

bb.q:                                             ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit
  %i.bs = inttoptr i64 %.unpack to ptr
  br label %_ZNKSt12_Mem_fn_baseIMN4LIEF2PE14unwind_aarch647DecoderEFbbELb1EEclIJPS3_RbEEEDTclsr3stdE8__invokedtdefpT6_M_pmfspclsr3stdE7forwardIT_Efp_EEEDpOSA_.exit

_ZNKSt12_Mem_fn_baseIMN4LIEF2PE14unwind_aarch647DecoderEFbbELb1EEclIJPS3_RbEEEDTclsr3stdE8__invokedtdefpT6_M_pmfspclsr3stdE7forwardIT_Efp_EEEDpOSA_.exit: ; preds = %bb.p, %bb.q
  %i.bt = phi ptr [ %i.br, %bb.p ], [ %i.bs, %bb.q ]
  %i.bu = call noundef zeroext i1 %i.bt(ptr noundef nonnull align 8 dereferenceable(17) %i.bm, i1 noundef zeroext %1) #22, !inline_history !137
  br i1 %i.bu, label %.thread87, label %bb.r

.lr.ph124:                                        ; preds = %.lr.ph124.preheader, %.lr.ph124
  %.031123 = phi i32 [ %i.bw, %.lr.ph124 ], [ 0, %.lr.ph124.preheader ]
  %i.bv = call noundef nonnull align 8 dereferenceable(17) ptr @_ZN4LIEF2PE14unwind_aarch647Decoder5lognfIJEEERS2_PKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(17) %0, ptr noundef nonnull @.str.56) ; 0 uses
  %i.bw = add nuw nsw i32 %.031123, 1             ; 2 uses
  %exitcond136.not = icmp eq i32 %i.bw, %i.bh
  br i1 %exitcond136.not, label %._crit_edge, label %.lr.ph124, !llvm.loop !138

bb.r:                                             ; preds = %_ZNKSt12_Mem_fn_baseIMN4LIEF2PE14unwind_aarch647DecoderEFbbELb1EEclIJPS3_RbEEEDTclsr3stdE8__invokedtdefpT6_M_pmfspclsr3stdE7forwardIT_Efp_EEEDpOSA_.exit
  %i.bx = load ptr, ptr %i.d, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.bz = load i64, ptr %i.by, align 8
  %i.ca = load i64, ptr %i.c, align 8
  %i.cb = sub i64 %i.bz, %i.ca
  %i.cc = trunc i64 %i.cb to i32
  %.not37 = icmp eq i32 %i.ae, %i.cc
  br i1 %.not37, label %.thread93, label %.thread87.sink.split

bb.s:                                             ; preds = %_ZNK4LIEF12BinaryStream4peekIhEENS_6resultIT_EEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  %.027.add = add nuw nsw i64 %.027.idx115, 32    ; 2 uses
  %.not33 = icmp eq i64 %.027.add, 928
  br i1 %.not33, label %bb.t, label %.preheader.backedge

.preheader.backedge:                              ; preds = %bb.s, %.thread93
  %.027.idx115.be = phi i64 [ %.027.add, %bb.s ], [ 0, %.thread93 ]
  br label %.preheader

.thread87.sink.split:                             ; preds = %bb.r, %_ZNK4LIEF12BinaryStream4peekIhEENS_6resultIT_EEv.exit.thread
  %i.cd = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.58) #22 ; 0 uses
  br label %.thread87

.thread87:                                        ; preds = %_ZNKSt12_Mem_fn_baseIMN4LIEF2PE14unwind_aarch647DecoderEFbbELb1EEclIJPS3_RbEEEDTclsr3stdE8__invokedtdefpT6_M_pmfspclsr3stdE7forwardIT_Efp_EEEDpOSA_.exit, %.thread87.sink.split
  %.sroa.464.2.ph.ph = phi i64 [ 1, %.thread87.sink.split ], [ 4294967297, %_ZNKSt12_Mem_fn_baseIMN4LIEF2PE14unwind_aarch647DecoderEFbbELb1EEclIJPS3_RbEEEDTclsr3stdE8__invokedtdefpT6_M_pmfspclsr3stdE7forwardIT_Efp_EEEDpOSA_.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  br label %.thread98

.thread93:                                        ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  br label %.preheader.backedge

bb.t:                                             ; preds = %bb.s
  %i.ce = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.58) #22 ; 0 uses
  br label %.thread98

.thread98:                                        ; preds = %bb.a, %bb.t, %.thread87
  %.sroa.464.5 = phi i64 [ 1, %bb.t ], [ %.sroa.464.2.ph.ph, %.thread87 ], [ 4294967297, %bb.a ]
  ret i64 %.sroa.464.5
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(17) ptr @_ZN4LIEF2PE14unwind_aarch647Decoder5lognfIJmEEERS2_PKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(17) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %3 = alloca %"class.std::bad_alloc", align 8    ; 3 uses
  %4 = alloca %"struct.fmt::v11::detail::format_handler", align 8 ; 10 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %5 = alloca %"class.fmt::v11::basic_memory_buffer.468", align 8 ; 11 uses
  %6 = alloca %"struct.fmt::v11::detail::format_arg_store.1096", align 16 ; 5 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #22 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22, !noalias !139
  %i.c = load i64, ptr %2, align 8, !noalias !139
  store i64 %i.c, ptr %6, align 16, !noalias !139
  tail call void @llvm.experimental.noalias.scope.decl(metadata !142)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22, !noalias !142
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store i64 0, ptr %i.f, align 8, !noalias !142
  store ptr @_ZN3fmt3v1119basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.e, align 8, !noalias !142
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  store ptr %i.g, ptr %5, align 8, !noalias !142
  store i64 500, ptr %i.d, align 8, !noalias !142
  %i.h = icmp eq i64 %i.b, 2
  br i1 %i.h, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.i = load i16, ptr %1, align 1
  %i.j = icmp ne i16 %i.i, 32123
  %i.k = zext i1 %i.j to i32
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %.sroa.0.0.copyload.sink64.i = load i128, ptr %6, align 16, !noalias !142
  %i.m = trunc i128 %.sroa.0.0.copyload.sink64.i to i64 ; 5 uses
  %i.n = or i64 %i.m, 1
  %i.o = call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.n, i1 true)
  %i.p = xor i64 %i.o, 63
  %i.q = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v116detail15do_count_digitsEmE9bsr2log10, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1, !noalias !142 ; 2 uses
  %i.s = zext i8 %i.r to i32
  %i.t = zext i8 %i.r to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr @_ZZN3fmt3v116detail15do_count_digitsEmE20zero_or_powers_of_10, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !noalias !142
  %i.w = icmp ugt i64 %i.v, %i.m
  %.neg.i.i.i.i = sext i1 %i.w to i32
  %i.x = add nsw i32 %.neg.i.i.i.i, %i.s          ; 4 uses
  %i.y = sext i32 %i.x to i64                     ; 2 uses
  %i.z = icmp ugt i32 %i.x, 500
  br i1 %i.z, label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i, label %_ZN3fmt3v116detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i.thread

_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i: ; preds = %bb.c
  %spec.select.i = call i64 @llvm.umax.i64(i64 %i.y, i64 750) ; 2 uses
  %i.aa = call noalias ptr @malloc(i64 noundef %spec.select.i) #26, !noalias !142 ; 3 uses
  %.not.i.i16 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i16, label %bb.d, label %_ZN3fmt3v116detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i

bb.d:                                             ; preds = %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22, !noalias !142
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %3, align 8, !noalias !142
  %i.ab = call noundef ptr @_ZNKSt9bad_alloc4whatEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #22, !noalias !142
  call void @_ZN3fmt3v116detail11assert_failEPKciS3_(ptr noundef nonnull @.str.61, i32 noundef 748, ptr noundef %i.ab) #23, !noalias !142
  unreachable

_ZN3fmt3v116detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i: ; preds = %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i
  store ptr %i.aa, ptr %5, align 8, !noalias !142
  store i64 %spec.select.i, ptr %i.d, align 8, !noalias !142
  br label %_ZN3fmt3v116detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i.thread

_ZN3fmt3v116detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i.thread: ; preds = %bb.c, %_ZN3fmt3v116detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i
  %i.ac = phi ptr [ %i.aa, %_ZN3fmt3v116detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i ], [ %i.g, %bb.c ] ; 3 uses
  store i64 %i.y, ptr %i.f, align 8, !noalias !142
  %i.ad = icmp ugt i64 %i.m, 99
  br i1 %i.ad, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN3fmt3v116detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i.thread, %.lr.ph.i.i.i
  %.020.i.i.i = phi i32 [ %i.ae, %.lr.ph.i.i.i ], [ %i.x, %_ZN3fmt3v116detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i.thread ]
  %.01819.i.i.i = phi i64 [ %i.al, %.lr.ph.i.i.i ], [ %i.m, %_ZN3fmt3v116detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i.thread ] ; 3 uses
  %i.ae = add i32 %.020.i.i.i, -2                 ; 3 uses
  %i.af = zext i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.af
  %i.ah = urem i64 %.01819.i.i.i, 100
  %i.ai = shl nuw nsw i64 %i.ah, 1
  %i.aj = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v116detail7digits2EmE4data, i64 %i.ai
  %i.ak = load i16, ptr %i.aj, align 2, !noalias !142
  store i16 %i.ak, ptr %i.ag, align 1, !noalias !142
  %i.al = udiv i64 %.01819.i.i.i, 100             ; 2 uses
  %i.am = icmp ugt i64 %.01819.i.i.i, 9999
end_hunk_0
