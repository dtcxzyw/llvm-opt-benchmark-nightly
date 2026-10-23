Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lief/original/UnwindAArch64Decoder?download=true
inline.NumInlined: 2983
inline.NumDeleted: 807
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 44
loop-unroll.NumUnrolled: 49
begin_hunk_0_@_ZN4LIEF2PE14unwind_aarch647Decoder3runEb:bb.a
  %i.c = alloca i64, align 8                      ; 7 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %5 = alloca %"struct.fmt::v12::join_view", align 8 ; 7 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !50
  %.not128 = icmp eq ptr %i.h, null
  br i1 %.not128, label %.thread101, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 16
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %5, i64 24
  br label %.preheader

.preheader:                                       ; preds = %.preheader.backedge, %.preheader.lr.ph
  %.032.idx118 = phi i64 [ 0, %.preheader.lr.ph ], [ %.032.idx118.be, %.preheader.backedge ] ; 2 uses
  %.032.ptr119 = getelementptr inbounds nuw i8, ptr @_ZGRN4LIEF2PE14unwind_aarch64L8HANDLERSE_, i64 %.032.idx118 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.032.ptr119, i64 24
  %i.l = getelementptr inbounds nuw i8, ptr %.032.ptr119, i64 20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !50   ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !54   ; 3 uses
  store i64 %i.o, ptr %i.c, align 8, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i8 0, ptr %i.b, align 1, !tbaa !55
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !57
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 96
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = call i64 %i.r(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull %i.b, i64 noundef %i.o, i64 noundef 1, i64 noundef 0) #23, !inline_history !358
  %i.t = and i64 %i.s, 4294967296
  %.not.i = icmp eq i64 %i.t, 0
  store i64 %i.o, ptr %i.n, align 8, !tbaa !54
  br i1 %.not.i, label %_ZNK4LIEF12BinaryStream4peekIhEENS_6resultIT_EEv.exit.thread, label %bb.b

_ZNK4LIEF12BinaryStream4peekIhEENS_6resultIT_EEv.exit.thread: ; preds = %.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  %i.u = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.160) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  store i32 479, ptr %i.d, align 4, !tbaa !61
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !369
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRA4_KcRKiEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.v, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %4, i32 noundef 1, ptr nonnull @.str.52, i64 5, ptr noundef nonnull align 1 dereferenceable(4) @__FUNCTION__._ZN4LIEF2PE14unwind_aarch647Decoder3runEb, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  br label %.thread90

bb.b:                                             ; preds = %.preheader
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.x = load i8, ptr %i.w, align 8, !tbaa !58, !range !59, !noundef !60
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.c, label %_ZNK4LIEF12BinaryStream4peekIhEENS_6resultIT_EEv.exit

bb.c:                                             ; preds = %bb.b
  call void @_ZN4LIEF11swap_endianIhEEvPT_(ptr noundef nonnull %i.b) #23
  br label %_ZNK4LIEF12BinaryStream4peekIhEENS_6resultIT_EEv.exit

_ZNK4LIEF12BinaryStream4peekIhEENS_6resultIT_EEv.exit: ; preds = %bb.b, %bb.c
  %i.z = load i8, ptr %i.b, align 1, !tbaa !55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  %i.aa = zext i8 %i.z to i32
  %i.ab = load i32, ptr %i.k, align 8, !tbaa !61
  %i.ac = and i32 %i.ab, %i.aa
  %i.ad = load i32, ptr %i.l, align 4, !tbaa !61
  %.not34 = icmp eq i32 %i.ac, %i.ad
  br i1 %.not34, label %bb.d, label %bb.t

bb.d:                                             ; preds = %_ZNK4LIEF12BinaryStream4peekIhEENS_6resultIT_EEv.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %.032.ptr119, i64 16
  %i.af = call noundef nonnull align 8 dereferenceable(17) ptr @_ZN4LIEF2PE14unwind_aarch647Decoder5lognfIJmEEERS2_PKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(17) %0, ptr noundef nonnull @.str.53, ptr noundef nonnull align 8 dereferenceable(8) %i.c) ; 0 uses
  %i.ag = load ptr, ptr %i.g, align 8, !tbaa !50  ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 6 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !54
  %i.aj = load i32, ptr %i.ae, align 8, !tbaa !61 ; 7 uses
  %i.ak = sext i32 %i.aj to i64                   ; 2 uses
  %i.al = icmp slt i32 %i.aj, 0
  br i1 %i.al, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.162) #25
  unreachable

bb.f:                                             ; preds = %bb.d
  %.not105 = icmp eq i32 %i.aj, 0
  br i1 %.not105, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.am = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ak) #28 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ak
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %_ZNSt6vectorIhSaIhEE9push_backERKh.exit
  %.028123 = phi i32 [ 0, %.lr.ph ], [ %i.bm, %_ZNSt6vectorIhSaIhEE9push_backERKh.exit ]
  %.sroa.049.0122 = phi ptr [ %i.am, %.lr.ph ], [ %.sroa.049.2, %_ZNSt6vectorIhSaIhEE9push_backERKh.exit ] ; 6 uses
  %.sroa.10.0121 = phi ptr [ %i.am, %.lr.ph ], [ %.sroa.10.2, %_ZNSt6vectorIhSaIhEE9push_backERKh.exit ] ; 5 uses
  %.sroa.18.0120 = phi ptr [ %i.an, %.lr.ph ], [ %.sroa.18.2, %_ZNSt6vectorIhSaIhEE9push_backERKh.exit ] ; 3 uses
  %i.ap = load i64, ptr %i.ah, align 8, !tbaa !54 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i8 0, ptr %i.a, align 1, !tbaa !55
  %i.aq = load ptr, ptr %i.ag, align 8, !tbaa !57
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 96
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = call i64 %i.as(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull %i.a, i64 noundef %i.ap, i64 noundef 1, i64 noundef 0) #23, !inline_history !359
  %i.au = and i64 %i.at, 4294967296
  %.not.i.i = icmp eq i64 %i.au, 0
  store i64 %i.ap, ptr %i.ah, align 8, !tbaa !54
  br i1 %.not.i.i, label %_ZNK4LIEF12BinaryStream4readIhEENS_6resultIT_EEv.exit.thread, label %bb.h

_ZNK4LIEF12BinaryStream4readIhEENS_6resultIT_EEv.exit.thread: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %.critedge

bb.h:                                             ; preds = %bb.g
  %i.av = load i8, ptr %i.ao, align 8, !tbaa !58, !range !59, !noundef !60
  %i.aw = trunc nuw i8 %i.av to i1
  br i1 %i.aw, label %bb.i, label %_ZNK4LIEF12BinaryStream4readIhEENS_6resultIT_EEv.exit

bb.i:                                             ; preds = %bb.h
  call void @_ZN4LIEF11swap_endianIhEEvPT_(ptr noundef nonnull %i.a) #23
  %.pre.i = load i64, ptr %i.ah, align 8, !tbaa !54
  br label %_ZNK4LIEF12BinaryStream4readIhEENS_6resultIT_EEv.exit

_ZNK4LIEF12BinaryStream4readIhEENS_6resultIT_EEv.exit: ; preds = %bb.h, %bb.i
  %i.ax = phi i64 [ %i.ap, %bb.h ], [ %.pre.i, %bb.i ]
  %i.ay = load i8, ptr %i.a, align 1, !tbaa !55   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.az = add i64 %i.ax, 1
  store i64 %i.az, ptr %i.ah, align 8, !tbaa !54
  %.not.i38 = icmp eq ptr %.sroa.10.0121, %.sroa.18.0120
  br i1 %.not.i38, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNK4LIEF12BinaryStream4readIhEENS_6resultIT_EEv.exit
  store i8 %i.ay, ptr %.sroa.10.0121, align 1, !tbaa !55
  br label %_ZNSt6vectorIhSaIhEE9push_backERKh.exit

bb.k:                                             ; preds = %_ZNK4LIEF12BinaryStream4readIhEENS_6resultIT_EEv.exit
  %i.ba = ptrtoint ptr %.sroa.10.0121 to i64
  %i.bb = ptrtoint ptr %.sroa.049.0122 to i64
  %i.bc = sub i64 %i.ba, %i.bb                    ; 8 uses
  %i.bd = icmp eq i64 %i.bc, 9223372036854775807
  br i1 %i.bd, label %bb.l, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i

bb.l:                                             ; preds = %bb.k
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.58) #25
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.k
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.bc, i64 1)
  %i.be = add i64 %.sroa.speculated.i.i.i, %i.bc  ; 2 uses
  %i.bf = icmp ult i64 %i.be, %i.bc
  %i.bg = call i64 @llvm.umin.i64(i64 %i.be, i64 9223372036854775807)
  %i.bh = select i1 %i.bf, i64 9223372036854775807, i64 %i.bg ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.bh, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.bi = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bh) #28 ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bc ; 2 uses
  store i8 %i.ay, ptr %i.bj, align 1, !tbaa !55
  %i.bk = icmp sgt i64 %i.bc, 0
  br i1 %i.bk, label %bb.m, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i

bb.m:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bi, ptr align 1 %.sroa.049.0122, i64 %i.bc, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i: ; preds = %bb.m, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i
  %.not.i17.i.i = icmp eq ptr %.sroa.049.0122, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.049.0122, i64 noundef %i.bc) #26
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i: ; preds = %bb.n, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bh
  br label %_ZNSt6vectorIhSaIhEE9push_backERKh.exit

_ZNSt6vectorIhSaIhEE9push_backERKh.exit:          ; preds = %bb.j, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i
  %.sroa.18.2 = phi ptr [ %i.bl, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i ], [ %.sroa.18.0120, %bb.j ] ; 2 uses
  %.pn = phi ptr [ %i.bj, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i ], [ %.sroa.10.0121, %bb.j ]
  %.sroa.049.2 = phi ptr [ %i.bi, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i ], [ %.sroa.049.0122, %bb.j ] ; 2 uses
  %.sroa.10.2 = getelementptr inbounds nuw i8, ptr %.pn, i64 1 ; 2 uses
  %i.bm = add nuw nsw i32 %.028123, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.bm, %i.aj
  br i1 %exitcond.not, label %.critedge, label %bb.g, !llvm.loop !360

.critedge:                                        ; preds = %_ZNSt6vectorIhSaIhEE9push_backERKh.exit, %bb.f, %_ZNK4LIEF12BinaryStream4readIhEENS_6resultIT_EEv.exit.thread
  %.sroa.18.0117 = phi ptr [ %.sroa.18.0120, %_ZNK4LIEF12BinaryStream4readIhEENS_6resultIT_EEv.exit.thread ], [ null, %bb.f ], [ %.sroa.18.2, %_ZNSt6vectorIhSaIhEE9push_backERKh.exit ]
  %.sroa.10.0114 = phi ptr [ %.sroa.10.0121, %_ZNK4LIEF12BinaryStream4readIhEENS_6resultIT_EEv.exit.thread ], [ null, %bb.f ], [ %.sroa.10.2, %_ZNSt6vectorIhSaIhEE9push_backERKh.exit ]
  %.sroa.049.0111 = phi ptr [ %.sroa.049.0122, %_ZNK4LIEF12BinaryStream4readIhEENS_6resultIT_EEv.exit.thread ], [ null, %bb.f ], [ %.sroa.049.2, %_ZNSt6vectorIhSaIhEE9push_backERKh.exit ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  store ptr %.sroa.049.0111, ptr %5, align 8, !tbaa !67, !alias.scope !370
  store ptr %.sroa.10.0114, ptr %i.i, align 8, !tbaa !67, !alias.scope !370
  store ptr @.str.55, ptr %i.j, align 8, !tbaa !67, !alias.scope !370
  store i64 0, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !68, !alias.scope !370
  %i.bn = call noundef nonnull align 8 dereferenceable(17) ptr @_ZN4LIEF2PE14unwind_aarch647Decoder5lognfIJN3fmt3v129join_viewIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEESD_cEEEEERS2_PKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(17) %0, ptr noundef nonnull @.str.54, ptr noundef nonnull align 8 dereferenceable(32) %5) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %6 = sub nsw i32 4, %i.aj
  %i.bo = icmp slt i32 %i.aj, 4
  br i1 %i.bo, label %.lr.ph127, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph127, %.critedge
  %i.bp = call noundef nonnull align 8 dereferenceable(17) ptr @_ZN4LIEF2PE14unwind_aarch647Decoder5lognfIJEEERS2_PKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(17) %0, ptr noundef nonnull @.str.57) ; 0 uses
  %.not.i.i.i39 = icmp eq ptr %.sroa.049.0111, null
  br i1 %.not.i.i.i39, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %._crit_edge
  %i.bq = ptrtoint ptr %.sroa.18.0117 to i64
  %i.br = ptrtoint ptr %.sroa.049.0111 to i64
  %i.bs = sub i64 %i.bq, %i.br
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.049.0111, i64 noundef %i.bs) #26
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %._crit_edge, %bb.o
  store i64 %i.ai, ptr %i.ah, align 8, !tbaa !54
  %.unpack = load i64, ptr %.032.ptr119, align 8, !tbaa !55 ; 3 uses
  %.elt35 = getelementptr inbounds nuw i8, ptr %.032.ptr119, i64 8
  %.unpack36 = load i64, ptr %.elt35, align 8, !tbaa !55
  %i.bt = getelementptr inbounds i8, ptr %0, i64 %.unpack36 ; 2 uses
  %i.bu = and i64 %.unpack, 1
  %.not.i.i.i40 = icmp eq i64 %i.bu, 0
  br i1 %.not.i.i.i40, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit
  %i.bv = load ptr, ptr %i.bt, align 8, !tbaa !57
  %i.bw = getelementptr i8, ptr %i.bv, i64 %.unpack
  %i.bx = getelementptr i8, ptr %i.bw, i64 -1
  %i.by = load ptr, ptr %i.bx, align 8, !nosanitize !60
  br label %_ZNKSt12_Mem_fn_baseIMN4LIEF2PE14unwind_aarch647DecoderEFbbELb1EEclIJPS3_RbEEEDTclsr3stdE8__invokedtdefpT6_M_pmfspclsr3stdE7forwardIT_Efp_EEEDpOSA_.exit

bb.q:                                             ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit
  %i.bz = inttoptr i64 %.unpack to ptr
  br label %_ZNKSt12_Mem_fn_baseIMN4LIEF2PE14unwind_aarch647DecoderEFbbELb1EEclIJPS3_RbEEEDTclsr3stdE8__invokedtdefpT6_M_pmfspclsr3stdE7forwardIT_Efp_EEEDpOSA_.exit

_ZNKSt12_Mem_fn_baseIMN4LIEF2PE14unwind_aarch647DecoderEFbbELb1EEclIJPS3_RbEEEDTclsr3stdE8__invokedtdefpT6_M_pmfspclsr3stdE7forwardIT_Efp_EEEDpOSA_.exit: ; preds = %bb.p, %bb.q
  %i.ca = phi ptr [ %i.by, %bb.p ], [ %i.bz, %bb.q ]
  %i.cb = call noundef zeroext i1 %i.ca(ptr noundef nonnull align 8 dereferenceable(17) %i.bt, i1 noundef zeroext %1) #23, !inline_history !363
  br i1 %i.cb, label %.thread90, label %bb.r

.lr.ph127:                                        ; preds = %.critedge, %.lr.ph127
  %.027126 = phi i32 [ %i.cd, %.lr.ph127 ], [ 0, %.critedge ]
  %i.cc = call noundef nonnull align 8 dereferenceable(17) ptr @_ZN4LIEF2PE14unwind_aarch647Decoder5lognfIJEEERS2_PKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(17) %0, ptr noundef nonnull @.str.56) ; 0 uses
  %i.cd = add nuw nsw i32 %.027126, 1             ; 2 uses
  %exitcond139.not = icmp eq i32 %i.cd, %6
  br i1 %exitcond139.not, label %._crit_edge, label %.lr.ph127, !llvm.loop !364

bb.r:                                             ; preds = %_ZNKSt12_Mem_fn_baseIMN4LIEF2PE14unwind_aarch647DecoderEFbbELb1EEclIJPS3_RbEEEDTclsr3stdE8__invokedtdefpT6_M_pmfspclsr3stdE7forwardIT_Efp_EEEDpOSA_.exit
  %i.ce = load ptr, ptr %i.g, align 8, !tbaa !50
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !54
  %i.ch = load i64, ptr %i.c, align 8, !tbaa !68
  %i.ci = sub i64 %i.cg, %i.ch
  %i.cj = trunc i64 %i.ci to i32
  %.not37 = icmp eq i32 %i.aj, %i.cj
  br i1 %.not37, label %.thread96, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ck = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.160) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #23
  store i32 515, ptr %i.e, align 4, !tbaa !61
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !369
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRA4_KcRKiEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.cl, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %3, i32 noundef 1, ptr nonnull @.str.52, i64 5, ptr noundef nonnull align 1 dereferenceable(4) @__FUNCTION__._ZN4LIEF2PE14unwind_aarch647Decoder3runEb, ptr noundef nonnull align 4 dereferenceable(4) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  br label %.thread90

bb.t:                                             ; preds = %_ZNK4LIEF12BinaryStream4peekIhEENS_6resultIT_EEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  %.032.add = add nuw nsw i64 %.032.idx118, 32    ; 2 uses
  %.not33 = icmp eq i64 %.032.add, 928
  br i1 %.not33, label %bb.u, label %.preheader.backedge

.preheader.backedge:                              ; preds = %bb.t, %.thread96
  %.032.idx118.be = phi i64 [ %.032.add, %bb.t ], [ 0, %.thread96 ]
  br label %.preheader

.thread90:                                        ; preds = %_ZNKSt12_Mem_fn_baseIMN4LIEF2PE14unwind_aarch647DecoderEFbbELb1EEclIJPS3_RbEEEDTclsr3stdE8__invokedtdefpT6_M_pmfspclsr3stdE7forwardIT_Efp_EEEDpOSA_.exit, %bb.s, %_ZNK4LIEF12BinaryStream4peekIhEENS_6resultIT_EEv.exit.thread
  %.sroa.468.2.ph.ph = phi i64 [ 1, %_ZNK4LIEF12BinaryStream4peekIhEENS_6resultIT_EEv.exit.thread ], [ 1, %bb.s ], [ 4294967297, %_ZNKSt12_Mem_fn_baseIMN4LIEF2PE14unwind_aarch647DecoderEFbbELb1EEclIJPS3_RbEEEDTclsr3stdE8__invokedtdefpT6_M_pmfspclsr3stdE7forwardIT_Efp_EEEDpOSA_.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  br label %.thread101

.thread96:                                        ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  br label %.preheader.backedge

bb.u:                                             ; preds = %bb.t
  %i.cm = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.160) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #23
  store i32 523, ptr %i.f, align 4, !tbaa !61
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !369
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRA4_KcRKiEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.cn, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %2, i32 noundef 1, ptr nonnull @.str.52, i64 5, ptr noundef nonnull align 1 dereferenceable(4) @__FUNCTION__._ZN4LIEF2PE14unwind_aarch647Decoder3runEb, ptr noundef nonnull align 4 dereferenceable(4) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #23
  br label %.thread101

.thread101:                                       ; preds = %bb.a, %bb.u, %.thread90
  %.sroa.468.5 = phi i64 [ 1, %bb.u ], [ %.sroa.468.2.ph.ph, %.thread90 ], [ 4294967297, %bb.a ]
  ret i64 %.sroa.468.5
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(17) ptr @_ZN4LIEF2PE14unwind_aarch647Decoder5lognfIJmEEERS2_PKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(17) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %3 = alloca %"class.std::bad_alloc", align 8    ; 3 uses
  %4 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %5 = alloca %"class.fmt::v12::basic_memory_buffer.469", align 8 ; 11 uses
  %6 = alloca %"struct.fmt::v12::detail::format_arg_store.1099", align 16 ; 5 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23, !noalias !377
  %i.c = load i64, ptr %2, align 8, !tbaa !68, !noalias !377
  store i64 %i.c, ptr %6, align 16, !tbaa !55, !noalias !377
  tail call void @llvm.experimental.noalias.scope.decl(metadata !378)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23, !noalias !378
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store i64 0, ptr %i.f, align 8, !noalias !378
  store ptr @_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.e, align 8, !tbaa !64, !noalias !378
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  store ptr %i.g, ptr %5, align 8, !tbaa !65, !noalias !378
  store i64 500, ptr %i.d, align 8, !tbaa !66, !noalias !378
  %i.h = icmp eq i64 %i.b, 2
  br i1 %i.h, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.i = load i16, ptr %1, align 1
  %i.j = icmp ne i16 %i.i, 32123
  %i.k = zext i1 %i.j to i32
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %.sroa.0.0.copyload.sink66.i = load i128, ptr %6, align 16, !tbaa !55, !noalias !378
  %i.m = trunc i128 %.sroa.0.0.copyload.sink66.i to i64 ; 5 uses
  %i.n = or i64 %i.m, 1
  %i.o = call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.n, i1 true)
  %i.p = xor i64 %i.o, 63
  %i.q = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail15do_count_digitsEmE9bsr2log10, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1, !tbaa !55, !noalias !378 ; 2 uses
  %i.s = zext i8 %i.r to i32
  %i.t = zext i8 %i.r to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr @_ZZN3fmt3v126detail15do_count_digitsEmE20zero_or_powers_of_10, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !68, !noalias !378
  %i.w = icmp ugt i64 %i.v, %i.m
  %.neg.i.i.i.i = sext i1 %i.w to i32
  %i.x = add nsw i32 %.neg.i.i.i.i, %i.s          ; 4 uses
  %i.y = sext i32 %i.x to i64                     ; 2 uses
  %i.z = icmp ugt i32 %i.x, 500
  br i1 %i.z, label %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i.i, label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i.thread

_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i.i: ; preds = %bb.c
  %spec.select.i = call i64 @llvm.umax.i64(i64 %i.y, i64 750) ; 2 uses
  %i.aa = call noalias ptr @malloc(i64 noundef %spec.select.i) #27, !noalias !378 ; 3 uses
  %.not.i.i16 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i16, label %bb.d, label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i

bb.d:                                             ; preds = %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23, !noalias !378
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %3, align 8, !tbaa !57, !noalias !378
  %i.ab = call noundef ptr @_ZNKSt9bad_alloc4whatEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #23, !noalias !378
  call void @_ZN3fmt3v1211assert_failEPKciS2_(ptr noundef nonnull @.str.59, i32 noundef 752, ptr noundef %i.ab) #24, !noalias !378
  unreachable

_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i: ; preds = %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i.i
  store ptr %i.aa, ptr %5, align 8, !tbaa !65, !noalias !378
  store i64 %spec.select.i, ptr %i.d, align 8, !tbaa !66, !noalias !378
  br label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i.thread

_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i.thread: ; preds = %bb.c, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i
  %i.ac = phi ptr [ %i.aa, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i ], [ %i.g, %bb.c ] ; 3 uses
  store i64 %i.y, ptr %i.f, align 8, !tbaa !77, !noalias !378
  %i.ad = icmp ugt i64 %i.m, 99
  br i1 %i.ad, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i.thread, %.lr.ph.i.i.i
  %.020.i.i.i = phi i32 [ %i.ae, %.lr.ph.i.i.i ], [ %i.x, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i.thread ]
  %.01819.i.i.i = phi i64 [ %i.al, %.lr.ph.i.i.i ], [ %i.m, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i.thread ] ; 3 uses
  %i.ae = add i32 %.020.i.i.i, -2                 ; 3 uses
  %i.af = zext i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.af
  %i.ah = urem i64 %.01819.i.i.i, 100
  %i.ai = shl nuw nsw i64 %i.ah, 1
  %i.aj = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.ai
  %i.ak = load i16, ptr %i.aj, align 2, !noalias !378
  store i16 %i.ak, ptr %i.ag, align 1, !noalias !378
  %i.al = udiv i64 %.01819.i.i.i, 100             ; 2 uses
  %i.am = icmp ugt i64 %.01819.i.i.i, 9999
  br i1 %i.am, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !2

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i.thread
  %.018.lcssa.i.i.i = phi i64 [ %i.m, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i.thread ], [ %i.al, %.lr.ph.i.i.i ] ; 3 uses
  %.0.lcssa.i.i.i = phi i32 [ %i.x, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i.thread ], [ %i.ae, %.lr.ph.i.i.i ] ; 2 uses
  %i.an = icmp samesign ugt i64 %.018.lcssa.i.i.i, 9
  br i1 %i.an, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i.i
  %i.ao = add i32 %.0.lcssa.i.i.i, -2
  %i.ap = zext i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ap
  %i.ar = shl nuw nsw i64 %.018.lcssa.i.i.i, 1
  %i.as = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.ar
  %i.at = load i16, ptr %i.as, align 2, !noalias !378
  store i16 %i.at, ptr %i.aq, align 1, !noalias !378
  br label %_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit

bb.f:                                             ; preds = %._crit_edge.i.i.i
  %i.au = trunc nuw nsw i64 %.018.lcssa.i.i.i to i8
  %i.av = or disjoint i8 %i.au, 48
  %i.aw = add i32 %.0.lcssa.i.i.i, -1
  %i.ax = zext i32 %i.aw to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ax
  store i8 %i.av, ptr %i.ay, align 1, !tbaa !55, !noalias !378
  br label %_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit

bb.g:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23, !noalias !378
  store ptr %1, ptr %4, align 8, !tbaa !67, !noalias !378
  %.sroa.2.0..sroa_idx.i16.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.b, ptr %.sroa.2.0..sroa_idx.i16.i, align 8, !tbaa !68, !noalias !378
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 0, ptr %i.az, align 8, !tbaa !71, !noalias !378
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %5, ptr %i.ba, align 8, !tbaa !73, !noalias !378
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 4, ptr %i.bb, align 8, !tbaa !75, !noalias !378
  %.sroa.2.0..sroa_idx.i17.i = getelementptr inbounds nuw i8, ptr %4, i64 40
  store ptr %6, ptr %.sroa.2.0..sroa_idx.i17.i, align 8, !tbaa !55, !noalias !378
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 48
  store ptr null, ptr %i.bc, align 8, !tbaa !76, !noalias !378
  call void @_ZN3fmt3v126detail19parse_format_stringIcNS1_14format_handlerIcEEEEvNS0_17basic_string_viewIT_EEOT0_(ptr nonnull %1, i64 %i.b, ptr noundef nonnull align 8 dereferenceable(56) %4), !noalias !378
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23, !noalias !378
  br label %_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit

_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit: ; preds = %bb.f, %bb.e, %bb.g
end_hunk_0
