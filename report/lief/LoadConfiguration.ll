Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lief/original/LoadConfiguration?download=true
inline.NumInlined: 5546
inline.NumDeleted: 1818
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 34
loop-unroll.NumUnrolled: 39
begin_hunk_0_@_ZN4LIEF2PE17LoadConfiguration15parse_seh_tableERNS0_6ParserERNS_12BinaryStreamERS1_:bb.a
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 600 ; 3 uses
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.m
  %.045 = phi i64 [ 0, %.lr.ph ], [ %i.cg, %bb.m ]
  %i.az = load i64, ptr %i.l, align 8, !tbaa !57  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i32 0, ptr %i.a, align 4, !tbaa !58
  %i.ba = load ptr, ptr %1, align 8, !tbaa !60
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 96
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = call i64 %i.bc(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %i.a, i64 noundef %i.az, i64 noundef 4, i64 noundef 0) #25, !inline_history !0
  %i.be = and i64 %i.bd, 4294967296
  %.not.i.i = icmp eq i64 %i.be, 0
  store i64 %i.az, ptr %i.l, align 8, !tbaa !57
  br i1 %.not.i.i, label %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit.thread, label %bb.f

_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit.thread: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.bf = load i8, ptr %i.ax, align 8, !tbaa !70, !range !71, !noundef !72
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %bb.g, label %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit

bb.g:                                             ; preds = %bb.f
  call void @_ZN4LIEF11swap_endianIjEEvPT_(ptr noundef nonnull %i.a) #25
  %.pre.i = load i64, ptr %i.l, align 8, !tbaa !57
  br label %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit

_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit: ; preds = %bb.f, %bb.g
  %i.bh = phi i64 [ %i.az, %bb.f ], [ %.pre.i, %bb.g ]
  %i.bi = load i32, ptr %i.a, align 4, !tbaa !58  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.bj = add i64 %i.bh, 4
  store i64 %i.bj, ptr %i.l, align 8, !tbaa !57
  %i.bk = load ptr, ptr %i.ay, align 8, !tbaa !212 ; 4 uses
  %i.bl = load ptr, ptr %i.x, align 8, !tbaa !195
  %.not.i = icmp eq ptr %i.bk, %i.bl
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit
  store i32 %i.bi, ptr %i.bk, align 4, !tbaa !58
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 4
  store ptr %i.bm, ptr %i.ay, align 8, !tbaa !212
  br label %bb.m

bb.i:                                             ; preds = %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit
  %i.bn = load ptr, ptr %i.v, align 8, !tbaa !202 ; 4 uses
  %i.bo = ptrtoint ptr %i.bk to i64
  %i.bp = ptrtoint ptr %i.bn to i64               ; 2 uses
  %i.bq = sub i64 %i.bo, %i.bp                    ; 5 uses
  %i.br = icmp eq i64 %i.bq, 9223372036854775804
  br i1 %i.br, label %bb.j, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i

bb.j:                                             ; preds = %bb.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.97) #28
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.i
  %i.bs = ashr exact i64 %i.bq, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.bs, i64 1)
  %i.bt = add nsw i64 %.sroa.speculated.i.i.i, %i.bs ; 2 uses
  %i.bu = icmp ult i64 %i.bt, %i.bs
  %i.bv = call i64 @llvm.umin.i64(i64 %i.bt, i64 2305843009213693951)
  %i.bw = select i1 %i.bu, i64 2305843009213693951, i64 %i.bv ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.bw, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.bx = shl nuw nsw i64 %i.bw, 2
  %i.by = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bx) #26 ; 4 uses
  %i.bz = getelementptr inbounds i8, ptr %i.by, i64 %i.bq ; 2 uses
  store i32 %i.bi, ptr %i.bz, align 4, !tbaa !58
  %i.ca = icmp sgt i64 %i.bq, 0
  br i1 %i.ca, label %bb.k, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

bb.k:                                             ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.by, ptr align 4 %i.bn, i64 %i.bq, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i: ; preds = %bb.k, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 4
  %.not.i17.i.i = icmp eq ptr %i.bn, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  %i.cc = load ptr, ptr %i.x, align 8, !tbaa !195
  %i.cd = ptrtoint ptr %i.cc to i64
  %i.ce = sub i64 %i.cd, %i.bp
  call void @_ZdlPvm(ptr noundef nonnull %i.bn, i64 noundef %i.ce) #27
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i: ; preds = %bb.l, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  store ptr %i.by, ptr %i.v, align 8, !tbaa !202
  store ptr %i.cb, ptr %i.ay, align 8, !tbaa !212
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %i.bw
  store ptr %i.cf, ptr %i.x, align 8, !tbaa !195
  br label %bb.m

bb.m:                                             ; preds = %bb.h, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i
  %i.cg = add nuw i64 %.045, 1                    ; 2 uses
  %i.ch = load i64, ptr %i.c, align 8, !tbaa !169
  %.not = icmp ult i64 %i.cg, %i.ch
  br i1 %.not, label %bb.e, label %.critedge, !llvm.loop !409

.critedge:                                        ; preds = %bb.m, %_ZNSt6vectorIjSaIjEE7reserveEm.exit, %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit.thread
  %.sroa.2.2 = phi i64 [ 1, %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit.thread ], [ 4294967297, %_ZNSt6vectorIjSaIjEE7reserveEm.exit ], [ 4294967297, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  br label %bb.n

bb.n:                                             ; preds = %bb.a, %.critedge
  %.sroa.2.3 = phi i64 [ %.sroa.2.2, %.critedge ], [ 4294967297, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  ret i64 %.sroa.2.3
}

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i64 0, 4294967297) i64 @_ZN4LIEF2PE17LoadConfiguration21parse_guard_functionsERNS0_6ParserERNS_12BinaryStreamERS1_mMS1_St6vectorINS1_16guard_function_tESaIS8_EE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(232) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(752) %2, i64 noundef %3, i64 %4) local_unnamed_addr #2 align 2 {
bb.a:
  %5 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %6 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %i.a = alloca i8, align 1                       ; 7 uses
  %7 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %8 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %i.c = alloca i64, align 8                      ; 2 uses
  %i.d = alloca i32, align 4                      ; 8 uses
  %i.e = alloca i64, align 8                      ; 7 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %9 = alloca %"class.LIEF::result", align 8      ; 5 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  store i64 %3, ptr %i.c, align 8, !tbaa !169
  %i.h = icmp eq i64 %3, 0
  br i1 %i.h, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 200
  %.sroa.0.0.copyload.i = load i64, ptr %i.i, align 8 ; 2 uses
  %i.j = and i64 %.sroa.0.0.copyload.i, 4294967296
  %.not77 = icmp eq i64 %i.j, 0
  %.sroa.066.0.extract.trunc = trunc i64 %.sroa.0.0.copyload.i to i32
  %i.k = lshr i32 %.sroa.066.0.extract.trunc, 28
  %i.l = select i1 %.not77, i32 0, i32 %i.k       ; 2 uses
  store i32 %i.l, ptr %i.d, align 4, !tbaa !58
  %narrow = add nuw nsw i32 %i.l, 4
  %i.m = zext nneg i32 %narrow to i64
  %i.n = load ptr, ptr %1, align 8, !tbaa !60
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = tail call noundef i64 %i.p(ptr noundef nonnull align 8 dereferenceable(24) %1) #25
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 10 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !57
  %i.t = load ptr, ptr %1, align 8, !tbaa !60
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = tail call noundef i64 %i.v(ptr noundef nonnull align 8 dereferenceable(24) %1) #25
  %.sroa.speculated60 = tail call i64 @llvm.umin.i64(i64 %i.w, i64 %i.s)
  %i.x = sub i64 %i.q, %.sroa.speculated60
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #25
  %i.y = udiv i64 %i.x, %i.m
  %.sroa.speculated55 = tail call i64 @llvm.umin.i64(i64 %i.y, i64 %3)
  store i64 %.sroa.speculated55, ptr %i.e, align 8, !tbaa !169
  %i.z = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.201) #25
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRKmS3_RKjEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.aa, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %8, i32 noundef 1, ptr nonnull @.str.3, i64 43, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %i.ab = getelementptr inbounds i8, ptr %2, i64 %4 ; 8 uses
  %i.ac = load i64, ptr %i.e, align 8, !tbaa !169 ; 2 uses
  %.sroa.speculated = call i64 @llvm.umin.i64(i64 %i.ac, i64 1000) ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 6 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !197
  %i.af = load ptr, ptr %i.ab, align 8, !tbaa !203
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = ptrtoint ptr %i.af to i64               ; 2 uses
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = ashr exact i64 %i.ai, 3
  %i.ak = icmp ult i64 %i.aj, %.sroa.speculated
  br i1 %i.ak, label %_ZNSt12_Vector_baseIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EE7reserveEm.exit

_ZNSt12_Vector_baseIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EE11_M_allocateEm.exit.i: ; preds = %bb.b
  %i.al = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 3 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !213
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = sub i64 %i.an, %i.ah
  %i.ap = shl nuw nsw i64 %.sroa.speculated, 3
  %i.aq = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #26 ; 4 uses
  %i.ar = load ptr, ptr %i.ab, align 8, !tbaa !203 ; 5 uses
  %i.as = load ptr, ptr %i.al, align 8, !tbaa !213 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.ar, %i.as
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt12_Vector_baseIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.av, %.lr.ph.i.i.i.i ], [ %i.aq, %_ZNSt12_Vector_baseIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EE11_M_allocateEm.exit.i ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.au, %.lr.ph.i.i.i.i ], [ %i.ar, %_ZNSt12_Vector_baseIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EE11_M_allocateEm.exit.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !419)
  call void @llvm.experimental.noalias.scope.decl(metadata !420)
  %i.at = load i64, ptr %.0911.i.i.i.i, align 4, !tbaa !58, !alias.scope !420, !noalias !419
  store i64 %i.at, ptr %.012.i.i.i.i, align 4, !tbaa !58, !alias.scope !419, !noalias !420
  %i.au = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.au, %i.as
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !413

_ZNSt6vectorIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i: ; preds = %.lr.ph.i.i.i.i, %_ZNSt12_Vector_baseIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.ar, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EE13_M_deallocateEPS3_m.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i
  %i.aw = load ptr, ptr %i.ad, align 8, !tbaa !197
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = ptrtoint ptr %i.ar to i64
  %i.az = sub i64 %i.ax, %i.ay
  call void @_ZdlPvm(ptr noundef nonnull %i.ar, i64 noundef %i.az) #27
  br label %_ZNSt12_Vector_baseIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EE13_M_deallocateEPS3_m.exit.i

_ZNSt12_Vector_baseIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EE13_M_deallocateEPS3_m.exit.i: ; preds = %bb.c, %_ZNSt6vectorIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i
  store ptr %i.aq, ptr %i.ab, align 8, !tbaa !203
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ao
  store ptr %i.ba, ptr %i.al, align 8, !tbaa !213
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %.sroa.speculated
  store ptr %i.bb, ptr %i.ad, align 8, !tbaa !197
  %.pre = load i64, ptr %i.e, align 8, !tbaa !169
  br label %_ZNSt6vectorIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EE7reserveEm.exit

_ZNSt6vectorIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EE7reserveEm.exit: ; preds = %bb.b, %_ZNSt12_Vector_baseIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EE13_M_deallocateEPS3_m.exit.i
  %i.bc = phi i64 [ %i.ac, %bb.b ], [ %.pre, %_ZNSt12_Vector_baseIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EE13_M_deallocateEPS3_m.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #25
  store i64 0, ptr %i.f, align 8, !tbaa !169
  %.not2878.not = icmp eq i64 %i.bc, 0
  br i1 %.not2878.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EE7reserveEm.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 3 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.r
  %i.bf = phi i64 [ 0, %.lr.ph ], [ %i.dt, %bb.r ]
  %.02279 = phi i1 [ false, %.lr.ph ], [ %.4, %bb.r ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  %i.bg = load i64, ptr %i.r, align 8, !tbaa !57  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  store i32 0, ptr %i.b, align 4, !tbaa !58
  %i.bh = load ptr, ptr %1, align 8, !tbaa !60
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 96
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = call i64 %i.bj(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %i.b, i64 noundef %i.bg, i64 noundef 4, i64 noundef 0) #25, !inline_history !0
  %i.bl = and i64 %i.bk, 4294967296
  %.not.i.i = icmp eq i64 %i.bl, 0
  store i64 %i.bg, ptr %i.r, align 8, !tbaa !57
  br i1 %.not.i.i, label %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit.thread, label %bb.e

_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit.thread: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  %i.bm = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.201) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #25
  store i32 580, ptr %i.g, align 4, !tbaa !58
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRKmRA22_KcRKiEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.bn, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %7, i32 noundef 1, ptr nonnull @.str.4, i64 38, ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull align 1 dereferenceable(22) @__FUNCTION__._ZN4LIEF2PE17LoadConfiguration21parse_guard_functionsERNS0_6ParserERNS_12BinaryStreamERS1_mMS1_St6vectorINS1_16guard_function_tESaIS8_EE, ptr noundef nonnull align 4 dereferenceable(4) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #25
  br label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.bo = load i8, ptr %i.bd, align 8, !tbaa !70, !range !71, !noundef !72
  %i.bp = trunc nuw i8 %i.bo to i1
  br i1 %i.bp, label %bb.f, label %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit

bb.f:                                             ; preds = %bb.e
  call void @_ZN4LIEF11swap_endianIjEEvPT_(ptr noundef nonnull %i.b) #25
  %.pre.i = load i64, ptr %i.r, align 8, !tbaa !57
  br label %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit

_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit: ; preds = %bb.e, %bb.f
  %i.bq = phi i64 [ %i.bg, %bb.e ], [ %.pre.i, %bb.f ]
  %i.br = load i32, ptr %i.b, align 4, !tbaa !58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  %i.bs = add i64 %i.bq, 4                        ; 4 uses
  store i64 %i.bs, ptr %i.r, align 8, !tbaa !57
  %i.bt = zext i32 %i.br to i64                   ; 3 uses
  %i.bu = or disjoint i64 %i.bt, 4294967296
  %i.bv = trunc nuw nsw i64 %i.bu to i40
  store i40 %i.bv, ptr %9, align 8
  %i.bw = load i32, ptr %i.d, align 4, !tbaa !58
  %i.bx = icmp eq i32 %i.bw, 1
  br i1 %i.bx, label %bb.g, label %bb.j

bb.g:                                             ; preds = %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i8 0, ptr %i.a, align 1, !tbaa !187
  %i.by = load ptr, ptr %1, align 8, !tbaa !60
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 96
  %i.ca = load ptr, ptr %i.bz, align 8
  %i.cb = call i64 %i.ca(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %i.a, i64 noundef %i.bs, i64 noundef 1, i64 noundef 0) #25, !inline_history !414
  %i.cc = and i64 %i.cb, 4294967296
  %.not.i.i33 = icmp eq i64 %i.cc, 0
  store i64 %i.bs, ptr %i.r, align 8, !tbaa !57
  br i1 %.not.i.i33, label %_ZNK4LIEF12BinaryStream4readIhEENS_6resultIT_EEv.exit.thread, label %bb.h

_ZNK4LIEF12BinaryStream4readIhEENS_6resultIT_EEv.exit.thread: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.cd = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.201) #25
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRKjEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.ce, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %6, i32 noundef 3, ptr nonnull @.str.5, i64 36, ptr noundef nonnull align 4 dereferenceable(4) %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %.critedge

bb.h:                                             ; preds = %bb.g
  %i.cf = load i8, ptr %i.bd, align 8, !tbaa !70, !range !71, !noundef !72
  %i.cg = trunc nuw i8 %i.cf to i1
  br i1 %i.cg, label %bb.i, label %_ZNK4LIEF12BinaryStream4readIhEENS_6resultIT_EEv.exit

bb.i:                                             ; preds = %bb.h
  call void @_ZN4LIEF11swap_endianIhEEvPT_(ptr noundef nonnull %i.a) #25
  %.pre.i35 = load i64, ptr %i.r, align 8, !tbaa !57
  br label %_ZNK4LIEF12BinaryStream4readIhEENS_6resultIT_EEv.exit

_ZNK4LIEF12BinaryStream4readIhEENS_6resultIT_EEv.exit: ; preds = %bb.h, %bb.i
  %i.ch = phi i64 [ %i.bs, %bb.h ], [ %.pre.i35, %bb.i ]
  %i.ci = load i8, ptr %i.a, align 1, !tbaa !187
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.cj = add i64 %i.ch, 1
  store i64 %i.cj, ptr %i.r, align 8, !tbaa !57
  %i.ck = zext i8 %i.ci to i64
  %i.cl = shl nuw nsw i64 %i.ck, 32
  %i.cm = or disjoint i64 %i.cl, %i.bt
  br label %bb.j

bb.j:                                             ; preds = %_ZNK4LIEF12BinaryStream4readIhEENS_6resultIT_EEv.exit, %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit
  %.1 = phi i64 [ %i.cm, %_ZNK4LIEF12BinaryStream4readIhEENS_6resultIT_EEv.exit ], [ %i.bt, %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit ] ; 2 uses
  %i.cn = load ptr, ptr %i.be, align 8, !tbaa !213 ; 6 uses
  %i.co = load ptr, ptr %i.ad, align 8, !tbaa !197
  %.not.i.i36 = icmp eq ptr %i.cn, %i.co
  br i1 %.not.i.i36, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i64 %.1, ptr %i.cn, align 4, !tbaa !58
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  store ptr %i.cp, ptr %i.be, align 8, !tbaa !213
  br label %_ZNSt6vectorIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EE9push_backEOS3_.exit

bb.l:                                             ; preds = %bb.j
  %i.cq = load ptr, ptr %i.ab, align 8, !tbaa !203 ; 5 uses
  %i.cr = ptrtoint ptr %i.cn to i64
  %i.cs = ptrtoint ptr %i.cq to i64               ; 2 uses
  %i.ct = sub i64 %i.cr, %i.cs                    ; 3 uses
  %i.cu = icmp eq i64 %i.ct, 9223372036854775800
  br i1 %i.cu, label %bb.m, label %_ZNKSt6vectorIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.m:                                             ; preds = %bb.l
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.97) #28
  unreachable

_ZNKSt6vectorIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.l
  %i.cv = ashr exact i64 %i.ct, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.cv, i64 1)
  %i.cw = add nsw i64 %.sroa.speculated.i.i.i.i, %i.cv ; 2 uses
  %i.cx = icmp ult i64 %i.cw, %i.cv
  %i.cy = call i64 @llvm.umin.i64(i64 %i.cw, i64 1152921504606846975)
  %i.cz = select i1 %i.cx, i64 1152921504606846975, i64 %i.cy ; 3 uses
  %.not.i.i.i.i37 = icmp ne i64 %i.cz, 0
  call void @llvm.assume(i1 %.not.i.i.i.i37)
  %i.da = shl nuw nsw i64 %i.cz, 3
  %i.db = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.da) #26 ; 5 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.ct
  store i64 %.1, ptr %i.dc, align 4, !tbaa !58
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.cq, %i.cn
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNKSt6vectorIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.df, %.lr.ph.i.i.i.i.i.i ], [ %i.db, %_ZNKSt6vectorIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.de, %.lr.ph.i.i.i.i.i.i ], [ %i.cq, %_ZNKSt6vectorIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !421)
  call void @llvm.experimental.noalias.scope.decl(metadata !422)
  %i.dd = load i64, ptr %.0911.i.i.i.i.i.i, align 4, !tbaa !58, !alias.scope !422, !noalias !421
  store i64 %i.dd, ptr %.012.i.i.i.i.i.i, align 4, !tbaa !58, !alias.scope !421, !noalias !422
  %i.de = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.de, %i.cn
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !413

_ZNSt6vectorIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt6vectorIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.db, %_ZNKSt6vectorIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.df, %.lr.ph.i.i.i.i.i.i ]
  %i.dg = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.cq, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i
  %i.dh = load ptr, ptr %i.ad, align 8, !tbaa !197
  %i.di = ptrtoint ptr %i.dh to i64
  %i.dj = sub i64 %i.di, %i.cs
  call void @_ZdlPvm(ptr noundef nonnull %i.cq, i64 noundef %i.dj) #27
  br label %_ZNSt6vectorIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.n, %_ZNSt6vectorIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i
  store ptr %i.db, ptr %i.ab, align 8, !tbaa !203
  store ptr %i.dg, ptr %i.be, align 8, !tbaa !213
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %i.cz
  store ptr %i.dk, ptr %i.ad, align 8, !tbaa !197
  br label %_ZNSt6vectorIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EE9push_backEOS3_.exit

_ZNSt6vectorIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EE9push_backEOS3_.exit: ; preds = %bb.k, %_ZNSt6vectorIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i
  %i.dl = load i32, ptr %i.d, align 4, !tbaa !58  ; 2 uses
  %i.dm = icmp ugt i32 %i.dl, 1
  br i1 %i.dm, label %bb.o, label %bb.r

bb.o:                                             ; preds = %_ZNSt6vectorIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EE9push_backEOS3_.exit
  br i1 %.02279, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dn = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.201) #25
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRKjEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.do, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %5, i32 noundef 3, ptr nonnull @.str.6, i64 28, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %.pre80 = load i32, ptr %i.d, align 4, !tbaa !58
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.dp = phi i32 [ %.pre80, %bb.p ], [ %i.dl, %bb.o ]
  %i.dq = zext i32 %i.dp to i64
  %i.dr = load i64, ptr %i.r, align 8, !tbaa !57
  %i.ds = add i64 %i.dr, %i.dq
  store i64 %i.ds, ptr %i.r, align 8, !tbaa !57
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %_ZNSt6vectorIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EE9push_backEOS3_.exit
  %.4 = phi i1 [ true, %bb.q ], [ %.02279, %_ZNSt6vectorIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EE9push_backEOS3_.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  %i.dt = add nuw i64 %i.bf, 1                    ; 3 uses
  store i64 %i.dt, ptr %i.f, align 8, !tbaa !169
  %i.du = load i64, ptr %i.e, align 8, !tbaa !169
  %.not28 = icmp ult i64 %i.dt, %i.du
  br i1 %.not28, label %bb.d, label %._crit_edge, !llvm.loop !418

.critedge:                                        ; preds = %_ZNK4LIEF12BinaryStream4readIhEENS_6resultIT_EEv.exit.thread, %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.r, %_ZNSt6vectorIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EE7reserveEm.exit, %.critedge
  %i.dv = phi i64 [ 1, %.critedge ], [ 4294967296, %_ZNSt6vectorIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EE7reserveEm.exit ], [ 4294967296, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  br label %bb.s

bb.s:                                             ; preds = %bb.a, %._crit_edge
  %.sroa.069.0.insert.insert = phi i64 [ %i.dv, %._crit_edge ], [ 4294967296, %bb.a ]
  ret i64 %.sroa.069.0.insert.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4LIEF7logging6Logger4warnIJjEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %3 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !66
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  tail call void @_ZN6spdlog6logger4log_IJRKjEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.a, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %3, i32 noundef 3, ptr nonnull %1, i64 %i.b, ptr noundef nonnull align 4 dereferenceable(4) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i64 0, 1099511627776) i64 @_ZN4LIEF2PE17LoadConfiguration16parse_dyn_relocsERNS0_6ParserERS1_(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef nonnull align 8 dereferenceable(752) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %2 = alloca %"class.LIEF::SpanStream", align 8  ; 13 uses
  %3 = alloca %"class.LIEF::result", align 8      ; 6 uses
  %4 = alloca %"class.LIEF::result", align 8      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 368
  %.sroa.0.0.copyload.i = load i64, ptr %i.c, align 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 376
  %.sroa.0.0.copyload.i22 = load i64, ptr %i.d, align 8 ; 3 uses
  %i.e = and i64 %.sroa.0.0.copyload.i22, 4294967296
  %.not59 = icmp eq i64 %i.e, 0
  %i.f = and i64 %.sroa.0.0.copyload.i22, 65535
  %i.g = icmp eq i64 %i.f, 0
  %i.h = or i1 %.not59, %i.g
  br i1 %i.h, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = and i64 %.sroa.0.0.copyload.i, 4294967296
  %.not61 = icmp eq i64 %i.i, 0
  br i1 %.not61, label %bb.o, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = add i64 %.sroa.0.0.copyload.i22, 65535
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !171  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 384
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !427, !noalias !428 ; 2 uses
  %i.o = and i64 %i.j, 65535                      ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 392
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !430
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.n to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = ashr exact i64 %i.t, 3
  %.not = icmp ugt i64 %i.u, %i.o
  br i1 %.not, label %_ZN4LIEF12ref_iteratorIRSt6vectorISt10unique_ptrINS_2PE7SectionESt14default_deleteIS4_EESaIS7_EEPS4_N9__gnu_cxx17__normal_iteratorIPS7_S9_EEEixEm.exit, label %bb.o

_ZN4LIEF12ref_iteratorIRSt6vectorISt10unique_ptrINS_2PE7SectionESt14default_deleteIS4_EESaIS7_EEPS4_N9__gnu_cxx17__normal_iteratorIPS7_S9_EEEixEm.exit: ; preds = %bb.c
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.o
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !432  ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !60
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 56
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = tail call { ptr, i64 } %i.z(ptr noundef nonnull align 8 dereferenceable(144) %i.w) #25 ; 2 uses
  %i.ab = extractvalue { ptr, i64 } %i.aa, 0      ; 2 uses
  %i.ac = extractvalue { ptr, i64 } %i.aa, 1      ; 3 uses
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %bb.o, label %bb.d

bb.d:                                             ; preds = %_ZN4LIEF12ref_iteratorIRSt6vectorISt10unique_ptrINS_2PE7SectionESt14default_deleteIS4_EESaIS7_EEPS4_N9__gnu_cxx17__normal_iteratorIPS7_S9_EEEixEm.exit
  %i.ae = and i64 %.sroa.0.0.copyload.i, 4294967295 ; 3 uses
  %.not20 = icmp ugt i64 %i.ac, %i.ae
  br i1 %.not20, label %bb.e, label %bb.o

bb.e:                                             ; preds = %bb.d
  %i.af = sub nuw i64 %i.ac, %i.ae                ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ae ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store i8 0, ptr %i.ai, align 8, !tbaa !70
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 3, ptr %i.aj, align 4, !tbaa !433
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN4LIEF10SpanStreamE, i64 16), ptr %2, align 8, !tbaa !60
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.ag, ptr %i.ak, align 8, !tbaa !434
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i64 %i.af, ptr %i.al, align 8, !tbaa !435
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.am = icmp ult i64 %i.af, 4
  %.not78 = icmp eq ptr %i.ab, null
  %or.cond = select i1 %i.am, i1 true, i1 %.not78
  br i1 %or.cond, label %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit, label %_ZNK4LIEF12BinaryStream4peekIjEENS_6resultIT_EEv.exit.i

_ZNK4LIEF12BinaryStream4peekIjEENS_6resultIT_EEv.exit.i: ; preds = %bb.e
  %i.an = load i32, ptr %i.ag, align 1
  %i.ao = zext i32 %i.an to i64
  %i.ap = or disjoint i64 %i.ao, 4294967296
  br label %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit

_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit: ; preds = %bb.e, %_ZNK4LIEF12BinaryStream4peekIjEENS_6resultIT_EEv.exit.i
  %.sink = phi i64 [ 4, %_ZNK4LIEF12BinaryStream4peekIjEENS_6resultIT_EEv.exit.i ], [ 0, %bb.e ] ; 4 uses
  %.sroa.0.sroa.2.0.extract.trunc6.i = phi i64 [ %i.ap, %_ZNK4LIEF12BinaryStream4peekIjEENS_6resultIT_EEv.exit.i ], [ 1, %bb.e ] ; 2 uses
  store i64 %.sink, ptr %i.ah, align 8, !tbaa !57
  %i.aq = trunc nuw nsw i64 %.sroa.0.sroa.2.0.extract.trunc6.i to i40
  store i40 %i.aq, ptr %3, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.ar = call { ptr, i8 } @_ZNK4LIEF10SpanStream7read_atEmmm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %.sink, i64 noundef 4, i64 noundef 0) #25, !inline_history !425 ; 2 uses
  %.fca.0.extract.i = extractvalue { ptr, i8 } %i.ar, 0 ; 2 uses
  %.fca.1.extract.i = extractvalue { ptr, i8 } %i.ar, 1
  %i.as = trunc nuw i8 %.fca.1.extract.i to i1
  %i.at = icmp ne ptr %.fca.0.extract.i, null
  %or.cond.not.i = select i1 %i.as, i1 %i.at, i1 false
  br i1 %or.cond.not.i, label %bb.f, label %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit28.thread

_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit28.thread: ; preds = %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %bb.n

bb.f:                                             ; preds = %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit
  %i.au = load i32, ptr %.fca.0.extract.i, align 1 ; 2 uses
  store i32 %i.au, ptr %i.a, align 4
  store i64 %.sink, ptr %i.ah, align 8, !tbaa !57
  %i.av = load i8, ptr %i.ai, align 8, !tbaa !70, !range !71, !noundef !72
  %i.aw = trunc nuw i8 %i.av to i1
  br i1 %i.aw, label %bb.g, label %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit28

end_hunk_0
begin_hunk_1_@_ZN4LIEF2PE17LoadConfigurationC2ERKS1_:bb.a
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 2 uses
  store i8 0, ptr %i.at, align 8, !tbaa !187
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  store i8 0, ptr %i.av, align 8, !tbaa !168
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.ax = load i8, ptr %i.aw, align 8, !tbaa !168, !range !71, !noundef !72
  %i.ay = trunc nuw i8 %i.ax to i1
  br i1 %i.ay, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4LIEF6ObjectC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(25) %i.at, ptr noundef nonnull align 8 dereferenceable(25) %i.au) #25
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4LIEF2PE13CodeIntegrityE, i64 16), ptr %i.at, align 8, !tbaa !60
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 216
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.az, ptr noundef nonnull align 8 dereferenceable(12) %i.ba, i64 12, i1 false)
  br label %_ZN4LIEF8optionalINS_2PE13CodeIntegrityEEC2ERKS3_.exit

bb.c:                                             ; preds = %bb.a
  %i.bb = load i32, ptr %i.au, align 8, !tbaa !192
  store i32 %i.bb, ptr %i.at, align 8, !tbaa !192
  br label %_ZN4LIEF8optionalINS_2PE13CodeIntegrityEEC2ERKS3_.exit

_ZN4LIEF8optionalINS_2PE13CodeIntegrityEEC2ERKS3_.exit: ; preds = %bb.b, %bb.c
  %storemerge.i.i.i.i.i.i.i = phi i8 [ 0, %bb.c ], [ 1, %bb.b ]
  store i8 %storemerge.i.i.i.i.i.i.i, ptr %i.av, align 8, !tbaa !168
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 240
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bc, ptr noundef nonnull align 8 dereferenceable(16) %i.bd, i64 16, i1 false)
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 256
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.be, ptr noundef nonnull align 8 dereferenceable(16) %i.bf, i64 16, i1 false)
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 272
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bg, ptr noundef nonnull align 8 dereferenceable(16) %i.bh, i64 16, i1 false)
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 288
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bi, ptr noundef nonnull align 8 dereferenceable(16) %i.bj, i64 16, i1 false)
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 304
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bk, ptr noundef nonnull align 8 dereferenceable(16) %i.bl, i64 16, i1 false)
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 320
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bm, ptr noundef nonnull align 8 dereferenceable(16) %i.bn, i64 16, i1 false)
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 336
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bo, ptr noundef nonnull align 8 dereferenceable(16) %i.bp, i64 16, i1 false)
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 352
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bq, ptr noundef nonnull align 8 dereferenceable(16) %i.br, i64 16, i1 false)
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 368
  %i.bu = load i64, ptr %i.bt, align 8
  store i64 %i.bu, ptr %i.bs, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 376
  %i.bx = load i64, ptr %i.bw, align 8
  store i64 %i.bx, ptr %i.bv, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 384
  %i.ca = load i64, ptr %i.bz, align 8
  store i64 %i.ca, ptr %i.by, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 392
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cb, ptr noundef nonnull align 8 dereferenceable(16) %i.cc, i64 16, i1 false)
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 408
  %i.cf = load i64, ptr %i.ce, align 8
  store i64 %i.cf, ptr %i.cd, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 416
  %i.ci = load i64, ptr %i.ch, align 8
  store i64 %i.ci, ptr %i.cg, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 424
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cj, ptr noundef nonnull align 8 dereferenceable(16) %i.ck, i64 16, i1 false)
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 440
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cl, ptr noundef nonnull align 8 dereferenceable(16) %i.cm, i64 16, i1 false)
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 456
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cn, ptr noundef nonnull align 8 dereferenceable(16) %i.co, i64 16, i1 false)
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 472
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cp, ptr noundef nonnull align 8 dereferenceable(16) %i.cq, i64 16, i1 false)
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 488
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cr, ptr noundef nonnull align 8 dereferenceable(16) %i.cs, i64 16, i1 false)
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 504
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ct, ptr noundef nonnull align 8 dereferenceable(16) %i.cu, i64 16, i1 false)
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 520
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cv, ptr noundef nonnull align 8 dereferenceable(16) %i.cw, i64 16, i1 false)
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 536
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cx, ptr noundef nonnull align 8 dereferenceable(16) %i.cy, i64 16, i1 false)
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 552
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cz, ptr noundef nonnull align 8 dereferenceable(16) %i.da, i64 16, i1 false)
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 568
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.db, ptr noundef nonnull align 8 dereferenceable(16) %i.dc, i64 16, i1 false)
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 584 ; 3 uses
  store ptr null, ptr %i.dd, align 8, !tbaa !583
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 592 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 592 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 600 ; 2 uses
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !212 ; 2 uses
  %i.di = load ptr, ptr %i.df, align 8, !tbaa !202 ; 2 uses
  %i.dj = ptrtoint ptr %i.dh to i64
  %i.dk = ptrtoint ptr %i.di to i64
  %i.dl = sub i64 %i.dj, %i.dk                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.de, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.dh, %i.di
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZN4LIEF8optionalINS_2PE13CodeIntegrityEEC2ERKS3_.exit
  %i.dm = icmp ugt i64 %i.dl, 9223372036854775804
  br i1 %i.dm, label %bb.e, label %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i, !prof !222

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #28
  unreachable

_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.d
  %i.dn = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dl) #26
  br label %_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.i

_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.i:      ; preds = %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i, %_ZN4LIEF8optionalINS_2PE13CodeIntegrityEEC2ERKS3_.exit
  %i.do = phi ptr [ %i.dn, %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i ], [ null, %_ZN4LIEF8optionalINS_2PE13CodeIntegrityEEC2ERKS3_.exit ] ; 6 uses
  store ptr %i.do, ptr %i.de, align 8, !tbaa !202
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 600 ; 2 uses
  store ptr %i.do, ptr %i.dp, align 8, !tbaa !212
  %i.dq = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.dl
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 608
  store ptr %i.dq, ptr %i.dr, align 8, !tbaa !195
  %i.ds = load ptr, ptr %i.df, align 8, !tbaa !194 ; 3 uses
  %i.dt = load ptr, ptr %i.dg, align 8, !tbaa !194
  %i.du = ptrtoint ptr %i.dt to i64
  %i.dv = ptrtoint ptr %i.ds to i64
  %i.dw = sub i64 %i.du, %i.dv                    ; 4 uses
  %i.dx = icmp sgt i64 %i.dw, 4
  br i1 %i.dx, label %bb.f, label %bb.g, !prof !223

bb.f:                                             ; preds = %_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.do, ptr align 4 %i.ds, i64 %i.dw, i1 false)
  br label %_ZNSt6vectorIjSaIjEEC2ERKS1_.exit

bb.g:                                             ; preds = %_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.i
  %i.dy = icmp eq i64 %i.dw, 4
  br i1 %i.dy, label %bb.h, label %_ZNSt6vectorIjSaIjEEC2ERKS1_.exit

bb.h:                                             ; preds = %bb.g
  %i.dz = load i32, ptr %i.ds, align 4, !tbaa !58
  store i32 %i.dz, ptr %i.do, align 4, !tbaa !58
  br label %_ZNSt6vectorIjSaIjEEC2ERKS1_.exit

_ZNSt6vectorIjSaIjEEC2ERKS1_.exit:                ; preds = %bb.f, %bb.g, %bb.h
  %i.ea = getelementptr inbounds i8, ptr %i.do, i64 %i.dw
  store ptr %i.ea, ptr %i.dp, align 8, !tbaa !212
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 616 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 616 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 624 ; 2 uses
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !213 ; 2 uses
  %i.ef = load ptr, ptr %i.ec, align 8, !tbaa !203 ; 2 uses
  %i.eg = ptrtoint ptr %i.ee to i64
  %i.eh = ptrtoint ptr %i.ef to i64
  %i.ei = sub i64 %i.eg, %i.eh                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.eb, i8 0, i64 24, i1 false)
  %.not.i.i.i.i70 = icmp eq ptr %i.ee, %i.ef
  br i1 %.not.i.i.i.i70, label %_ZNSt12_Vector_baseIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EEC2EmRKS4_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIjSaIjEEC2ERKS1_.exit
  %i.ej = icmp ugt i64 %i.ei, 9223372036854775800
  br i1 %i.ej, label %bb.j, label %_ZNSt15__new_allocatorIN4LIEF2PE17LoadConfiguration16guard_function_tEE8allocateEmPKv.exit.i.i.i.i, !prof !222

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #28
  unreachable

_ZNSt15__new_allocatorIN4LIEF2PE17LoadConfiguration16guard_function_tEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.i
  %i.ek = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ei) #26
  br label %_ZNSt12_Vector_baseIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EEC2EmRKS4_.exit.i

_ZNSt12_Vector_baseIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EEC2EmRKS4_.exit.i: ; preds = %_ZNSt15__new_allocatorIN4LIEF2PE17LoadConfiguration16guard_function_tEE8allocateEmPKv.exit.i.i.i.i, %_ZNSt6vectorIjSaIjEEC2ERKS1_.exit
  %i.el = phi ptr [ %i.ek, %_ZNSt15__new_allocatorIN4LIEF2PE17LoadConfiguration16guard_function_tEE8allocateEmPKv.exit.i.i.i.i ], [ null, %_ZNSt6vectorIjSaIjEEC2ERKS1_.exit ] ; 5 uses
  store ptr %i.el, ptr %i.eb, align 8, !tbaa !203
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 624 ; 2 uses
  store ptr %i.el, ptr %i.em, align 8, !tbaa !213
  %i.en = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.ei
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 632
  store ptr %i.en, ptr %i.eo, align 8, !tbaa !197
  %i.ep = load ptr, ptr %i.ec, align 8, !tbaa !196 ; 2 uses
  %i.eq = load ptr, ptr %i.ed, align 8, !tbaa !196 ; 2 uses
  %.not7.i.i.i.i.i = icmp eq ptr %i.ep, %i.eq
  br i1 %.not7.i.i.i.i.i, label %_ZNSt6vectorIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EEC2ERKS5_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt12_Vector_baseIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EEC2EmRKS4_.exit.i, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.et, %.lr.ph.i.i.i.i.i ], [ %i.el, %_ZNSt12_Vector_baseIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EEC2EmRKS4_.exit.i ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.es, %.lr.ph.i.i.i.i.i ], [ %i.ep, %_ZNSt12_Vector_baseIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EEC2EmRKS4_.exit.i ] ; 2 uses
  %i.er = load i64, ptr %.sroa.04.08.i.i.i.i.i, align 4, !tbaa !58
  store i64 %i.er, ptr %.09.i.i.i.i.i, align 4, !tbaa !58
  %i.es = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 8 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.es, %i.eq
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EEC2ERKS5_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !578

_ZNSt6vectorIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EEC2ERKS5_.exit: ; preds = %.lr.ph.i.i.i.i.i, %_ZNSt12_Vector_baseIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EEC2EmRKS4_.exit.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.el, %_ZNSt12_Vector_baseIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EEC2EmRKS4_.exit.i ], [ %i.et, %.lr.ph.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.em, align 8, !tbaa !213
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %1, i64 640 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %1, i64 648 ; 2 uses
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !213 ; 2 uses
  %i.ey = load ptr, ptr %i.ev, align 8, !tbaa !203 ; 2 uses
  %i.ez = ptrtoint ptr %i.ex to i64
  %i.fa = ptrtoint ptr %i.ey to i64
  %i.fb = sub i64 %i.ez, %i.fa                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.eu, i8 0, i64 24, i1 false)
  %.not.i.i.i.i71 = icmp eq ptr %i.ex, %i.ey
  br i1 %.not.i.i.i.i71, label %_ZNSt12_Vector_baseIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EEC2EmRKS4_.exit.i73, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EEC2ERKS5_.exit
  %i.fc = icmp ugt i64 %i.fb, 9223372036854775800
  br i1 %i.fc, label %bb.l, label %_ZNSt15__new_allocatorIN4LIEF2PE17LoadConfiguration16guard_function_tEE8allocateEmPKv.exit.i.i.i.i72, !prof !222

bb.l:                                             ; preds = %bb.k
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #28
  unreachable

_ZNSt15__new_allocatorIN4LIEF2PE17LoadConfiguration16guard_function_tEE8allocateEmPKv.exit.i.i.i.i72: ; preds = %bb.k
  %i.fd = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fb) #26
  br label %_ZNSt12_Vector_baseIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EEC2EmRKS4_.exit.i73

_ZNSt12_Vector_baseIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EEC2EmRKS4_.exit.i73: ; preds = %_ZNSt15__new_allocatorIN4LIEF2PE17LoadConfiguration16guard_function_tEE8allocateEmPKv.exit.i.i.i.i72, %_ZNSt6vectorIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EEC2ERKS5_.exit
  %i.fe = phi ptr [ %i.fd, %_ZNSt15__new_allocatorIN4LIEF2PE17LoadConfiguration16guard_function_tEE8allocateEmPKv.exit.i.i.i.i72 ], [ null, %_ZNSt6vectorIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EEC2ERKS5_.exit ] ; 5 uses
  store ptr %i.fe, ptr %i.eu, align 8, !tbaa !203
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 648 ; 2 uses
  store ptr %i.fe, ptr %i.ff, align 8, !tbaa !213
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fe, i64 %i.fb
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 656
  store ptr %i.fg, ptr %i.fh, align 8, !tbaa !197
  %i.fi = load ptr, ptr %i.ev, align 8, !tbaa !196 ; 2 uses
  %i.fj = load ptr, ptr %i.ew, align 8, !tbaa !196 ; 2 uses
  %.not7.i.i.i.i.i74 = icmp eq ptr %i.fi, %i.fj
  br i1 %.not7.i.i.i.i.i74, label %_ZNSt6vectorIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EEC2ERKS5_.exit80, label %.lr.ph.i.i.i.i.i75

.lr.ph.i.i.i.i.i75:                               ; preds = %_ZNSt12_Vector_baseIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EEC2EmRKS4_.exit.i73, %.lr.ph.i.i.i.i.i75
  %.09.i.i.i.i.i76 = phi ptr [ %i.fm, %.lr.ph.i.i.i.i.i75 ], [ %i.fe, %_ZNSt12_Vector_baseIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EEC2EmRKS4_.exit.i73 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i77 = phi ptr [ %i.fl, %.lr.ph.i.i.i.i.i75 ], [ %i.fi, %_ZNSt12_Vector_baseIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EEC2EmRKS4_.exit.i73 ] ; 2 uses
  %i.fk = load i64, ptr %.sroa.04.08.i.i.i.i.i77, align 4, !tbaa !58
  store i64 %i.fk, ptr %.09.i.i.i.i.i76, align 4, !tbaa !58
  %i.fl = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i77, i64 8 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i76, i64 8 ; 2 uses
  %.not.i.i.i.i.i78 = icmp eq ptr %i.fl, %i.fj
  br i1 %.not.i.i.i.i.i78, label %_ZNSt6vectorIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EEC2ERKS5_.exit80, label %.lr.ph.i.i.i.i.i75, !llvm.loop !578

_ZNSt6vectorIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EEC2ERKS5_.exit80: ; preds = %.lr.ph.i.i.i.i.i75, %_ZNSt12_Vector_baseIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EEC2EmRKS4_.exit.i73
  %.0.lcssa.i.i.i.i.i79 = phi ptr [ %i.fe, %_ZNSt12_Vector_baseIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EEC2EmRKS4_.exit.i73 ], [ %i.fm, %.lr.ph.i.i.i.i.i75 ]
  store ptr %.0.lcssa.i.i.i.i.i79, ptr %i.ff, align 8, !tbaa !213
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %1, i64 664 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %1, i64 672 ; 2 uses
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !213 ; 2 uses
  %i.fr = load ptr, ptr %i.fo, align 8, !tbaa !203 ; 2 uses
  %i.fs = ptrtoint ptr %i.fq to i64
  %i.ft = ptrtoint ptr %i.fr to i64
  %i.fu = sub i64 %i.fs, %i.ft                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fn, i8 0, i64 24, i1 false)
  %.not.i.i.i.i81 = icmp eq ptr %i.fq, %i.fr
  br i1 %.not.i.i.i.i81, label %_ZNSt12_Vector_baseIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EEC2EmRKS4_.exit.i83, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EEC2ERKS5_.exit80
  %i.fv = icmp ugt i64 %i.fu, 9223372036854775800
  br i1 %i.fv, label %bb.n, label %_ZNSt15__new_allocatorIN4LIEF2PE17LoadConfiguration16guard_function_tEE8allocateEmPKv.exit.i.i.i.i82, !prof !222

bb.n:                                             ; preds = %bb.m
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #28
  unreachable

_ZNSt15__new_allocatorIN4LIEF2PE17LoadConfiguration16guard_function_tEE8allocateEmPKv.exit.i.i.i.i82: ; preds = %bb.m
  %i.fw = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fu) #26
  br label %_ZNSt12_Vector_baseIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EEC2EmRKS4_.exit.i83

_ZNSt12_Vector_baseIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EEC2EmRKS4_.exit.i83: ; preds = %_ZNSt15__new_allocatorIN4LIEF2PE17LoadConfiguration16guard_function_tEE8allocateEmPKv.exit.i.i.i.i82, %_ZNSt6vectorIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EEC2ERKS5_.exit80
  %i.fx = phi ptr [ %i.fw, %_ZNSt15__new_allocatorIN4LIEF2PE17LoadConfiguration16guard_function_tEE8allocateEmPKv.exit.i.i.i.i82 ], [ null, %_ZNSt6vectorIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EEC2ERKS5_.exit80 ] ; 5 uses
  store ptr %i.fx, ptr %i.fn, align 8, !tbaa !203
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 672 ; 2 uses
  store ptr %i.fx, ptr %i.fy, align 8, !tbaa !213
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fx, i64 %i.fu
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 680
  store ptr %i.fz, ptr %i.ga, align 8, !tbaa !197
  %i.gb = load ptr, ptr %i.fo, align 8, !tbaa !196 ; 2 uses
  %i.gc = load ptr, ptr %i.fp, align 8, !tbaa !196 ; 2 uses
  %.not7.i.i.i.i.i84 = icmp eq ptr %i.gb, %i.gc
  br i1 %.not7.i.i.i.i.i84, label %_ZNSt6vectorIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EEC2ERKS5_.exit90, label %.lr.ph.i.i.i.i.i85

.lr.ph.i.i.i.i.i85:                               ; preds = %_ZNSt12_Vector_baseIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EEC2EmRKS4_.exit.i83, %.lr.ph.i.i.i.i.i85
  %.09.i.i.i.i.i86 = phi ptr [ %i.gf, %.lr.ph.i.i.i.i.i85 ], [ %i.fx, %_ZNSt12_Vector_baseIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EEC2EmRKS4_.exit.i83 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i87 = phi ptr [ %i.ge, %.lr.ph.i.i.i.i.i85 ], [ %i.gb, %_ZNSt12_Vector_baseIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EEC2EmRKS4_.exit.i83 ] ; 2 uses
  %i.gd = load i64, ptr %.sroa.04.08.i.i.i.i.i87, align 4, !tbaa !58
  store i64 %i.gd, ptr %.09.i.i.i.i.i86, align 4, !tbaa !58
  %i.ge = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i87, i64 8 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i86, i64 8 ; 2 uses
  %.not.i.i.i.i.i88 = icmp eq ptr %i.ge, %i.gc
  br i1 %.not.i.i.i.i.i88, label %_ZNSt6vectorIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EEC2ERKS5_.exit90, label %.lr.ph.i.i.i.i.i85, !llvm.loop !578

_ZNSt6vectorIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EEC2ERKS5_.exit90: ; preds = %.lr.ph.i.i.i.i.i85, %_ZNSt12_Vector_baseIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EEC2EmRKS4_.exit.i83
  %.0.lcssa.i.i.i.i.i89 = phi ptr [ %i.fx, %_ZNSt12_Vector_baseIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EEC2EmRKS4_.exit.i83 ], [ %i.gf, %.lr.ph.i.i.i.i.i85 ]
  store ptr %.0.lcssa.i.i.i.i.i89, ptr %i.fy, align 8, !tbaa !213
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 688 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %1, i64 688 ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %1, i64 696 ; 2 uses
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !213 ; 2 uses
  %i.gk = load ptr, ptr %i.gh, align 8, !tbaa !203 ; 2 uses
  %i.gl = ptrtoint ptr %i.gj to i64
  %i.gm = ptrtoint ptr %i.gk to i64
  %i.gn = sub i64 %i.gl, %i.gm                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gg, i8 0, i64 24, i1 false)
  %.not.i.i.i.i91 = icmp eq ptr %i.gj, %i.gk
  br i1 %.not.i.i.i.i91, label %_ZNSt12_Vector_baseIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EEC2EmRKS4_.exit.i93, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EEC2ERKS5_.exit90
  %i.go = icmp ugt i64 %i.gn, 9223372036854775800
  br i1 %i.go, label %bb.p, label %_ZNSt15__new_allocatorIN4LIEF2PE17LoadConfiguration16guard_function_tEE8allocateEmPKv.exit.i.i.i.i92, !prof !222

bb.p:                                             ; preds = %bb.o
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #28
  unreachable

_ZNSt15__new_allocatorIN4LIEF2PE17LoadConfiguration16guard_function_tEE8allocateEmPKv.exit.i.i.i.i92: ; preds = %bb.o
  %i.gp = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gn) #26
  br label %_ZNSt12_Vector_baseIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EEC2EmRKS4_.exit.i93

_ZNSt12_Vector_baseIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EEC2EmRKS4_.exit.i93: ; preds = %_ZNSt15__new_allocatorIN4LIEF2PE17LoadConfiguration16guard_function_tEE8allocateEmPKv.exit.i.i.i.i92, %_ZNSt6vectorIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EEC2ERKS5_.exit90
  %i.gq = phi ptr [ %i.gp, %_ZNSt15__new_allocatorIN4LIEF2PE17LoadConfiguration16guard_function_tEE8allocateEmPKv.exit.i.i.i.i92 ], [ null, %_ZNSt6vectorIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EEC2ERKS5_.exit90 ] ; 5 uses
  store ptr %i.gq, ptr %i.gg, align 8, !tbaa !203
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 696 ; 2 uses
  store ptr %i.gq, ptr %i.gr, align 8, !tbaa !213
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gq, i64 %i.gn
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 704
  store ptr %i.gs, ptr %i.gt, align 8, !tbaa !197
  %i.gu = load ptr, ptr %i.gh, align 8, !tbaa !196 ; 2 uses
  %i.gv = load ptr, ptr %i.gi, align 8, !tbaa !196 ; 2 uses
  %.not7.i.i.i.i.i94 = icmp eq ptr %i.gu, %i.gv
  br i1 %.not7.i.i.i.i.i94, label %_ZNSt6vectorIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EEC2ERKS5_.exit100, label %.lr.ph.i.i.i.i.i95

.lr.ph.i.i.i.i.i95:                               ; preds = %_ZNSt12_Vector_baseIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EEC2EmRKS4_.exit.i93, %.lr.ph.i.i.i.i.i95
  %.09.i.i.i.i.i96 = phi ptr [ %i.gy, %.lr.ph.i.i.i.i.i95 ], [ %i.gq, %_ZNSt12_Vector_baseIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EEC2EmRKS4_.exit.i93 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i97 = phi ptr [ %i.gx, %.lr.ph.i.i.i.i.i95 ], [ %i.gu, %_ZNSt12_Vector_baseIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EEC2EmRKS4_.exit.i93 ] ; 2 uses
  %i.gw = load i64, ptr %.sroa.04.08.i.i.i.i.i97, align 4, !tbaa !58
  store i64 %i.gw, ptr %.09.i.i.i.i.i96, align 4, !tbaa !58
  %i.gx = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i97, i64 8 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i96, i64 8 ; 2 uses
  %.not.i.i.i.i.i98 = icmp eq ptr %i.gx, %i.gv
  br i1 %.not.i.i.i.i.i98, label %_ZNSt6vectorIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EEC2ERKS5_.exit100, label %.lr.ph.i.i.i.i.i95, !llvm.loop !578

_ZNSt6vectorIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EEC2ERKS5_.exit100: ; preds = %.lr.ph.i.i.i.i.i95, %_ZNSt12_Vector_baseIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EEC2EmRKS4_.exit.i93
  %.0.lcssa.i.i.i.i.i99 = phi ptr [ %i.gq, %_ZNSt12_Vector_baseIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EEC2EmRKS4_.exit.i93 ], [ %i.gy, %.lr.ph.i.i.i.i.i95 ]
  store ptr %.0.lcssa.i.i.i.i.i99, ptr %i.gr, align 8, !tbaa !213
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 736 ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 744 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %1, i64 584
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.gz, i8 0, i64 40, i1 false)
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !193 ; 3 uses
  %.not = icmp eq ptr %i.hd, null
  br i1 %.not, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EEC2ERKS5_.exit100
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !60
  %i.hf = load ptr, ptr %i.he, align 8
  call void %i.hf(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.116") align 8 %2, ptr noundef nonnull align 8 dereferenceable(16) %i.hd) #25
  %i.hg = load ptr, ptr %2, align 8, !tbaa !193
  store ptr null, ptr %2, align 8, !tbaa !193
  %i.hh = load ptr, ptr %i.dd, align 8, !tbaa !193 ; 3 uses
  store ptr %i.hg, ptr %i.dd, align 8, !tbaa !193
  %.not.i.i.i.i101 = icmp eq ptr %i.hh, null
  br i1 %.not.i.i.i.i101, label %_ZNSt10unique_ptrIN4LIEF2PE12CHPEMetadataESt14default_deleteIS2_EED2Ev.exit, label %_ZNSt10unique_ptrIN4LIEF2PE12CHPEMetadataESt14default_deleteIS2_EEaSEOS5_.exit

_ZNSt10unique_ptrIN4LIEF2PE12CHPEMetadataESt14default_deleteIS2_EEaSEOS5_.exit: ; preds = %bb.q
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !60
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 24
  %i.hk = load ptr, ptr %i.hj, align 8
  call void %i.hk(ptr noundef nonnull align 8 dereferenceable(16) %i.hh) #25, !inline_history !3
  %.pr = load ptr, ptr %2, align 8, !tbaa !193    ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN4LIEF2PE12CHPEMetadataESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN4LIEF2PE12CHPEMetadataEEclEPS2_.exit.i

_ZNKSt14default_deleteIN4LIEF2PE12CHPEMetadataEEclEPS2_.exit.i: ; preds = %_ZNSt10unique_ptrIN4LIEF2PE12CHPEMetadataESt14default_deleteIS2_EEaSEOS5_.exit
  %i.hl = load ptr, ptr %.pr, align 8, !tbaa !60
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 24
  %i.hn = load ptr, ptr %i.hm, align 8
  call void %i.hn(ptr noundef nonnull align 8 dereferenceable(16) %.pr) #25, !inline_history !5
  br label %_ZNSt10unique_ptrIN4LIEF2PE12CHPEMetadataESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN4LIEF2PE12CHPEMetadataESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.q, %_ZNSt10unique_ptrIN4LIEF2PE12CHPEMetadataESt14default_deleteIS2_EEaSEOS5_.exit, %_ZNKSt14default_deleteIN4LIEF2PE12CHPEMetadataEEclEPS2_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.r

bb.r:                                             ; preds = %_ZNSt10unique_ptrIN4LIEF2PE12CHPEMetadataESt14default_deleteIS2_EED2Ev.exit, %_ZNSt6vectorIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EEC2ERKS5_.exit100
  %i.ho = getelementptr inbounds nuw i8, ptr %1, i64 736
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !178 ; 3 uses
  %.not118 = icmp eq ptr %i.hp, null
  br i1 %.not118, label %_ZNSt10unique_ptrIN4LIEF2PE20EnclaveConfigurationESt14default_deleteIS2_EED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.hq = call noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #26, !noalias !584 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.hq, ptr noundef nonnull align 8 dereferenceable(104) %i.hp, i64 80, i1 false), !noalias !584
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 80
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hp, i64 80
  call void @_ZNSt6vectorIN4LIEF2PE13EnclaveImportESaIS2_EEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %i.hr, ptr noundef nonnull align 8 dereferenceable(24) %i.hs), !noalias !584
  %i.ht = load ptr, ptr %i.ha, align 8, !tbaa !178 ; 5 uses
  store ptr %i.hq, ptr %i.ha, align 8, !tbaa !178
  %.not.i.i.i.i102 = icmp eq ptr %i.ht, null
  br i1 %.not.i.i.i.i102, label %_ZNSt10unique_ptrIN4LIEF2PE20EnclaveConfigurationESt14default_deleteIS2_EED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 80 ; 2 uses
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !181 ; 3 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.ht, i64 88
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !182 ; 2 uses
  %.not4.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.hv, %i.hx
  br i1 %.not4.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN4LIEF2PE13EnclaveImportEEvT_S4_.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.t, %_ZSt8_DestroyIN4LIEF2PE13EnclaveImportEEvPT_.exit.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ie, %_ZSt8_DestroyIN4LIEF2PE13EnclaveImportEEvPT_.exit.i.i.i.i.i.i.i.i.i ], [ %i.hv, %bb.t ] ; 3 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i.i, i64 80
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !186 ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i.i, i64 96 ; 2 uses
  %i.ib = icmp eq ptr %i.hz, %i.ia
  br i1 %i.ib, label %_ZSt8_DestroyIN4LIEF2PE13EnclaveImportEEvPT_.exit.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.ic = load i64, ptr %i.ia, align 8, !tbaa !187
  %i.id = add i64 %i.ic, 1
  call void @_ZdlPvm(ptr noundef %i.hz, i64 noundef %i.id) #27
  br label %_ZSt8_DestroyIN4LIEF2PE13EnclaveImportEEvPT_.exit.i.i.i.i.i.i.i.i.i

_ZSt8_DestroyIN4LIEF2PE13EnclaveImportEEvPT_.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ie = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i.i, i64 112 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ie, %i.hx
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN4LIEF2PE13EnclaveImportEEvT_S4_.exitthread-pre-split.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !2

_ZSt8_DestroyIPN4LIEF2PE13EnclaveImportEEvT_S4_.exitthread-pre-split.i.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIN4LIEF2PE13EnclaveImportEEvPT_.exit.i.i.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i.i = load ptr, ptr %i.hu, align 8, !tbaa !181
  br label %_ZSt8_DestroyIPN4LIEF2PE13EnclaveImportEEvT_S4_.exit.i.i.i.i.i.i.i

_ZSt8_DestroyIPN4LIEF2PE13EnclaveImportEEvT_S4_.exit.i.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPN4LIEF2PE13EnclaveImportEEvT_S4_.exitthread-pre-split.i.i.i.i.i.i.i, %bb.t
  %i.if = phi ptr [ %.pr.i.i.i.i.i.i.i, %_ZSt8_DestroyIPN4LIEF2PE13EnclaveImportEEvT_S4_.exitthread-pre-split.i.i.i.i.i.i.i ], [ %i.hv, %bb.t ] ; 3 uses
  %.not.i.i1.i.i.i.i.i.i.i = icmp eq ptr %i.if, null
  br i1 %.not.i.i1.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN4LIEF2PE20EnclaveConfigurationEEclEPS2_.exit.i.i.i.i, label %bb.u

bb.u:                                             ; preds = %_ZSt8_DestroyIPN4LIEF2PE13EnclaveImportEEvT_S4_.exit.i.i.i.i.i.i.i
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ht, i64 96
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !189
  %i.ii = ptrtoint ptr %i.ih to i64
  %i.ij = ptrtoint ptr %i.if to i64
  %i.ik = sub i64 %i.ii, %i.ij
  call void @_ZdlPvm(ptr noundef nonnull %i.if, i64 noundef %i.ik) #27
  br label %_ZNKSt14default_deleteIN4LIEF2PE20EnclaveConfigurationEEclEPS2_.exit.i.i.i.i

_ZNKSt14default_deleteIN4LIEF2PE20EnclaveConfigurationEEclEPS2_.exit.i.i.i.i: ; preds = %bb.u, %_ZSt8_DestroyIPN4LIEF2PE13EnclaveImportEEvT_S4_.exit.i.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ht, i64 noundef 104) #27
  br label %_ZNSt10unique_ptrIN4LIEF2PE20EnclaveConfigurationESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN4LIEF2PE20EnclaveConfigurationESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.s, %_ZNKSt14default_deleteIN4LIEF2PE20EnclaveConfigurationEEclEPS2_.exit.i.i.i.i, %bb.r
  %i.il = getelementptr inbounds nuw i8, ptr %1, i64 744
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !201 ; 2 uses
  %.not119 = icmp eq ptr %i.im, null
  br i1 %.not119, label %"_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPKSt10unique_ptrIN4LIEF2PE17DynamicRelocationESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESt20back_insert_iteratorISD_EZNS4_17LoadConfigurationC1ERKSH_E3$_0ET0_T_SM_SL_T1_.exit", label %bb.v

bb.v:                                             ; preds = %_ZNSt10unique_ptrIN4LIEF2PE20EnclaveConfigurationESt14default_deleteIS2_EED2Ev.exit
  %i.in = call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #26, !noalias !585 ; 2 uses
  call void @_ZN4LIEF2PE16VolatileMetadataC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(64) %i.in, ptr noundef nonnull align 8 dereferenceable(64) %i.im), !noalias !585
  %i.io = load ptr, ptr %i.hb, align 8, !tbaa !201 ; 6 uses
  store ptr %i.in, ptr %i.hb, align 8, !tbaa !201
  %.not.i.i.i.i104 = icmp eq ptr %i.io, null
  br i1 %.not.i.i.i.i104, label %"_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPKSt10unique_ptrIN4LIEF2PE17DynamicRelocationESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESt20back_insert_iteratorISD_EZNS4_17LoadConfigurationC1ERKSH_E3$_0ET0_T_SM_SL_T1_.exit", label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 40
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !210 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i105 = icmp eq ptr %i.iq, null
  br i1 %.not.i.i.i.i.i.i.i.i.i105, label %_ZNSt6vectorIN4LIEF2PE16VolatileMetadata7range_tESaIS3_EED2Ev.exit.i.i.i.i.i.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ir = getelementptr inbounds nuw i8, ptr %i.io, i64 56
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !211
  %i.it = ptrtoint ptr %i.is to i64
  %i.iu = ptrtoint ptr %i.iq to i64
  %i.iv = sub i64 %i.it, %i.iu
  call void @_ZdlPvm(ptr noundef nonnull %i.iq, i64 noundef %i.iv) #27
  br label %_ZNSt6vectorIN4LIEF2PE16VolatileMetadata7range_tESaIS3_EED2Ev.exit.i.i.i.i.i.i

_ZNSt6vectorIN4LIEF2PE16VolatileMetadata7range_tESaIS3_EED2Ev.exit.i.i.i.i.i.i: ; preds = %bb.x, %bb.w
  %i.iw = getelementptr inbounds nuw i8, ptr %i.io, i64 16
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !202 ; 3 uses
  %.not.i.i.i1.i.i.i.i.i.i = icmp eq ptr %i.ix, null
  br i1 %.not.i.i.i1.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN4LIEF2PE16VolatileMetadataEEclEPS2_.exit.i.i.i.i, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorIN4LIEF2PE16VolatileMetadata7range_tESaIS3_EED2Ev.exit.i.i.i.i.i.i
  %i.iy = getelementptr inbounds nuw i8, ptr %i.io, i64 32
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !195
  %i.ja = ptrtoint ptr %i.iz to i64
  %i.jb = ptrtoint ptr %i.ix to i64
  %i.jc = sub i64 %i.ja, %i.jb
  call void @_ZdlPvm(ptr noundef nonnull %i.ix, i64 noundef %i.jc) #27
  br label %_ZNKSt14default_deleteIN4LIEF2PE16VolatileMetadataEEclEPS2_.exit.i.i.i.i

_ZNKSt14default_deleteIN4LIEF2PE16VolatileMetadataEEclEPS2_.exit.i.i.i.i: ; preds = %bb.y, %_ZNSt6vectorIN4LIEF2PE16VolatileMetadata7range_tESaIS3_EED2Ev.exit.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.io, i64 noundef 64) #27
  br label %"_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPKSt10unique_ptrIN4LIEF2PE17DynamicRelocationESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESt20back_insert_iteratorISD_EZNS4_17LoadConfigurationC1ERKSH_E3$_0ET0_T_SM_SL_T1_.exit"

"_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPKSt10unique_ptrIN4LIEF2PE17DynamicRelocationESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESt20back_insert_iteratorISD_EZNS4_17LoadConfigurationC1ERKSH_E3$_0ET0_T_SM_SL_T1_.exit": ; preds = %_ZNSt10unique_ptrIN4LIEF2PE20EnclaveConfigurationESt14default_deleteIS2_EED2Ev.exit, %_ZNKSt14default_deleteIN4LIEF2PE16VolatileMetadataEEclEPS2_.exit.i.i.i.i, %bb.v
  ret void
}

declare void @_ZN4LIEF6ObjectC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define noundef nonnull align 8 dereferenceable(752) ptr @_ZN4LIEF2PE17LoadConfigurationaSERKS1_(ptr noundef nonnull returned align 8 dereferenceable(752) %0, ptr noundef nonnull align 8 dereferenceable(752) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %2 = alloca %"class.std::unique_ptr.116", align 8 ; 6 uses
  %i.a = icmp eq ptr %1, %0
  br i1 %i.a, label %"_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPKSt10unique_ptrIN4LIEF2PE17DynamicRelocationESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESt20back_insert_iteratorISD_EZNS4_17LoadConfigurationaSERKSH_E3$_0ET0_T_SM_SL_T1_.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4LIEF6ObjectaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #25 ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load <2 x i32>, ptr %i.c, align 8, !tbaa !58
  store <2 x i32> %i.e, ptr %i.d, align 8, !tbaa !58
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load <2 x i16>, ptr %i.f, align 8, !tbaa !74
  store <2 x i16> %i.h, ptr %i.g, align 8, !tbaa !74
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.k = load <2 x i32>, ptr %i.i, align 4, !tbaa !58
  store <2 x i32> %i.k, ptr %i.j, align 4, !tbaa !58
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.m = load i32, ptr %i.l, align 4, !tbaa !156
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %i.m, ptr %i.n, align 4, !tbaa !156
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = load <2 x i64>, ptr %i.o, align 8, !tbaa !169
  store <2 x i64> %i.q, ptr %i.p, align 8, !tbaa !169
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48
end_hunk_1
begin_hunk_2_@_ZN4LIEF2PE17LoadConfigurationaSERKS1_:bb.a
bb.p:                                             ; preds = %bb.o
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 40
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !210 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i77 = icmp eq ptr %i.fo, null
  br i1 %.not.i.i.i.i.i.i.i.i.i77, label %_ZNSt6vectorIN4LIEF2PE16VolatileMetadata7range_tESaIS3_EED2Ev.exit.i.i.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fm, i64 56
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !211
  %i.fr = ptrtoint ptr %i.fq to i64
  %i.fs = ptrtoint ptr %i.fo to i64
  %i.ft = sub i64 %i.fr, %i.fs
  call void @_ZdlPvm(ptr noundef nonnull %i.fo, i64 noundef %i.ft) #27
  br label %_ZNSt6vectorIN4LIEF2PE16VolatileMetadata7range_tESaIS3_EED2Ev.exit.i.i.i.i.i.i

_ZNSt6vectorIN4LIEF2PE16VolatileMetadata7range_tESaIS3_EED2Ev.exit.i.i.i.i.i.i: ; preds = %bb.q, %bb.p
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !202 ; 3 uses
  %.not.i.i.i1.i.i.i.i.i.i = icmp eq ptr %i.fv, null
  br i1 %.not.i.i.i1.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN4LIEF2PE16VolatileMetadataEEclEPS2_.exit.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIN4LIEF2PE16VolatileMetadata7range_tESaIS3_EED2Ev.exit.i.i.i.i.i.i
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fm, i64 32
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !195
  %i.fy = ptrtoint ptr %i.fx to i64
  %i.fz = ptrtoint ptr %i.fv to i64
  %i.ga = sub i64 %i.fy, %i.fz
  call void @_ZdlPvm(ptr noundef nonnull %i.fv, i64 noundef %i.ga) #27
  br label %_ZNKSt14default_deleteIN4LIEF2PE16VolatileMetadataEEclEPS2_.exit.i.i.i.i

_ZNKSt14default_deleteIN4LIEF2PE16VolatileMetadataEEclEPS2_.exit.i.i.i.i: ; preds = %bb.r, %_ZNSt6vectorIN4LIEF2PE16VolatileMetadata7range_tESaIS3_EED2Ev.exit.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.fm, i64 noundef 64) #27
  br label %"_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPKSt10unique_ptrIN4LIEF2PE17DynamicRelocationESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESt20back_insert_iteratorISD_EZNS4_17LoadConfigurationaSERKSH_E3$_0ET0_T_SM_SL_T1_.exit"

"_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPKSt10unique_ptrIN4LIEF2PE17DynamicRelocationESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESt20back_insert_iteratorISD_EZNS4_17LoadConfigurationaSERKSH_E3$_0ET0_T_SM_SL_T1_.exit": ; preds = %_ZNSt10unique_ptrIN4LIEF2PE20EnclaveConfigurationESt14default_deleteIS2_EED2Ev.exit, %_ZNKSt14default_deleteIN4LIEF2PE16VolatileMetadataEEclEPS2_.exit.i.i.i.i, %bb.o, %bb.a
  ret ptr %0
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN4LIEF6ObjectaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIjSaIjEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.u, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !212
  %i.c = load ptr, ptr %1, align 8, !tbaa !202    ; 9 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 12 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !195
  %i.i = load ptr, ptr %0, align 8, !tbaa !202    ; 5 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.n = icmp ugt i64 %i.f, 9223372036854775804
  br i1 %i.n, label %bb.d, label %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i, !prof !222

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #28
  unreachable

_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #26 ; 4 uses
  %i.p = icmp samesign ugt i64 %i.f, 4
  br i1 %i.p, label %bb.e, label %bb.f, !prof !223

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.o, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIjSaIjEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKjS1_EEEEPjmT_S9_.exit

bb.f:                                             ; preds = %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i
  %i.q = icmp eq i64 %i.f, 4
  br i1 %i.q, label %bb.g, label %_ZNSt6vectorIjSaIjEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKjS1_EEEEPjmT_S9_.exit

bb.g:                                             ; preds = %bb.f
  %i.r = load i32, ptr %i.c, align 4, !tbaa !58
  store i32 %i.r, ptr %i.o, align 4, !tbaa !58
  br label %_ZNSt6vectorIjSaIjEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKjS1_EEEEPjmT_S9_.exit

_ZNSt6vectorIjSaIjEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKjS1_EEEEPjmT_S9_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.s = load ptr, ptr %0, align 8, !tbaa !202    ; 3 uses
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIjSaIjEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKjS1_EEEEPjmT_S9_.exit
  %i.t = load ptr, ptr %i.g, align 8, !tbaa !195
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.s to i64
  %i.w = sub i64 %i.u, %i.v
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.w) #27
  br label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit

_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit: ; preds = %_ZNSt6vectorIjSaIjEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKjS1_EEEEPjmT_S9_.exit, %bb.h
  store ptr %i.o, ptr %0, align 8, !tbaa !202
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.f
  store ptr %i.x, ptr %i.g, align 8, !tbaa !195
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS1_IPjS6_EEET0_T_SB_SA_.exit

bb.i:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !212  ; 3 uses
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = sub i64 %i.aa, %i.k                     ; 5 uses
  %.not24 = icmp ult i64 %i.ab, %i.f
  br i1 %.not24, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = icmp sgt i64 %i.f, 4
  br i1 %i.ac, label %bb.k, label %bb.l, !prof !223

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.i, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS1_IPjS6_EEET0_T_SB_SA_.exit

bb.l:                                             ; preds = %bb.j
  %i.ad = icmp eq i64 %i.f, 4
  br i1 %i.ad, label %bb.m, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS1_IPjS6_EEET0_T_SB_SA_.exit

bb.m:                                             ; preds = %bb.l
  %i.ae = load i32, ptr %i.c, align 4, !tbaa !58
  store i32 %i.ae, ptr %i.i, align 4, !tbaa !58
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS1_IPjS6_EEET0_T_SB_SA_.exit

bb.n:                                             ; preds = %bb.i
  %i.af = icmp sgt i64 %i.ab, 4
  br i1 %i.af, label %bb.o, label %bb.p, !prof !223

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.i, ptr align 4 %i.c, i64 %i.ab, i1 false)
  %.pre = load ptr, ptr %1, align 8, !tbaa !202
  %.pre25 = load ptr, ptr %i.y, align 8, !tbaa !212 ; 2 uses
  %.pre26 = load ptr, ptr %0, align 8, !tbaa !202
  %.pre27 = load ptr, ptr %i.a, align 8, !tbaa !212
  %.pre28 = ptrtoint ptr %.pre25 to i64
  %.pre29 = ptrtoint ptr %.pre26 to i64
  %.pre31 = sub i64 %.pre28, %.pre29
  %.pre33 = ptrtoint ptr %.pre27 to i64
  br label %_ZSt4copyIPjS0_ET0_T_S2_S1_.exit

bb.p:                                             ; preds = %bb.n
  %i.ag = icmp eq i64 %i.ab, 4
  br i1 %i.ag, label %bb.q, label %_ZSt4copyIPjS0_ET0_T_S2_S1_.exit

bb.q:                                             ; preds = %bb.p
  %i.ah = load i32, ptr %i.c, align 4, !tbaa !58
  store i32 %i.ah, ptr %i.i, align 4, !tbaa !58
  br label %_ZSt4copyIPjS0_ET0_T_S2_S1_.exit

_ZSt4copyIPjS0_ET0_T_S2_S1_.exit:                 ; preds = %bb.o, %bb.p, %bb.q
  %.pre-phi34 = phi i64 [ %.pre33, %bb.o ], [ %i.d, %bb.p ], [ %i.d, %bb.q ]
  %.pre-phi32 = phi i64 [ %.pre31, %bb.o ], [ %i.ab, %bb.p ], [ 4, %bb.q ]
  %i.ai = phi ptr [ %.pre25, %bb.o ], [ %i.z, %bb.p ], [ %i.z, %bb.q ] ; 2 uses
  %i.aj = phi ptr [ %.pre, %bb.o ], [ %i.c, %bb.p ], [ %i.c, %bb.q ]
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.pre-phi32 ; 3 uses
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = sub i64 %.pre-phi34, %i.al              ; 3 uses
  %i.an = icmp sgt i64 %i.am, 4
  br i1 %i.an, label %bb.r, label %bb.s, !prof !223

bb.r:                                             ; preds = %_ZSt4copyIPjS0_ET0_T_S2_S1_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.ai, ptr align 4 %i.ak, i64 %i.am, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS1_IPjS6_EEET0_T_SB_SA_.exit

bb.s:                                             ; preds = %_ZSt4copyIPjS0_ET0_T_S2_S1_.exit
  %i.ao = icmp eq i64 %i.am, 4
  br i1 %i.ao, label %bb.t, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS1_IPjS6_EEET0_T_SB_SA_.exit

bb.t:                                             ; preds = %bb.s
  %i.ap = load i32, ptr %i.ak, align 4, !tbaa !58
  store i32 %i.ap, ptr %i.ai, align 4, !tbaa !58
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS1_IPjS6_EEET0_T_SB_SA_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS1_IPjS6_EEET0_T_SB_SA_.exit: ; preds = %bb.t, %bb.s, %bb.r, %bb.m, %bb.l, %bb.k, %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit
  %i.aq = load ptr, ptr %0, align 8, !tbaa !202
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.f
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !212
  br label %bb.u

bb.u:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS1_IPjS6_EEET0_T_SB_SA_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EEaSERKS5_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !213  ; 4 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !203    ; 9 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !197
  %i.i = load ptr, ptr %0, align 8, !tbaa !203    ; 9 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.n = icmp ugt i64 %i.f, 9223372036854775800
  br i1 %i.n, label %bb.d, label %_ZNSt12_Vector_baseIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EE11_M_allocateEm.exit.i, !prof !222

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #28
  unreachable

_ZNSt12_Vector_baseIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #26 ; 4 uses
  %.not7.i.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not7.i.i.i.i.i, label %_ZNSt6vectorIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit, label %.lr.ph.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %_ZNSt12_Vector_baseIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EE11_M_allocateEm.exit.i
  %i.p = add i64 %i.d, -8
  %i.q = sub i64 %i.p, %i.e
  %i.r = and i64 %i.q, -8
  %i.s = add i64 %i.r, 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.o, ptr align 4 %i.c, i64 %i.s, i1 false), !tbaa !58
  br label %_ZNSt6vectorIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit

_ZNSt6vectorIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit: ; preds = %_ZNSt12_Vector_baseIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i.preheader.i
  %i.t = load ptr, ptr %0, align 8, !tbaa !203    ; 3 uses
  %.not.i = icmp eq ptr %i.t, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit
  %i.u = load ptr, ptr %i.g, align 8, !tbaa !197
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.t to i64
  %i.x = sub i64 %i.v, %i.w
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.x) #27
  br label %_ZNSt12_Vector_baseIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZNSt6vectorIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit, %bb.e
  store ptr %i.o, ptr %0, align 8, !tbaa !203
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.f
  store ptr %i.y, ptr %i.g, align 8, !tbaa !197
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4LIEF2PE17LoadConfiguration16guard_function_tESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit

bb.f:                                             ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !213 ; 3 uses
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = sub i64 %i.ab, %i.k                     ; 5 uses
  %.not24 = icmp ult i64 %i.ac, %i.f
  br i1 %.not24, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = icmp sgt i64 %i.f, 8
  br i1 %i.ad, label %bb.h, label %bb.i, !prof !223

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.i, ptr align 4 %i.c, i64 %i.f, i1 false)
  %.pre28 = load ptr, ptr %0, align 8, !tbaa !203
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4LIEF2PE17LoadConfiguration16guard_function_tESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit

bb.i:                                             ; preds = %bb.g
  %i.ae = icmp eq i64 %i.f, 8
  br i1 %i.ae, label %bb.j, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4LIEF2PE17LoadConfiguration16guard_function_tESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit

bb.j:                                             ; preds = %bb.i
  %i.af = load i64, ptr %i.c, align 4, !tbaa !58
  store i64 %i.af, ptr %i.i, align 4, !tbaa !58
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4LIEF2PE17LoadConfiguration16guard_function_tESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit

bb.k:                                             ; preds = %bb.f
  %i.ag = icmp sgt i64 %i.ac, 8
  br i1 %i.ag, label %bb.l, label %bb.m, !prof !223

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.i, ptr align 4 %i.c, i64 %i.ac, i1 false)
  %.pre = load ptr, ptr %1, align 8, !tbaa !203
  %.pre25 = load ptr, ptr %i.z, align 8, !tbaa !213 ; 2 uses
  %.pre26 = load ptr, ptr %0, align 8, !tbaa !203 ; 2 uses
  %.pre27 = load ptr, ptr %i.a, align 8, !tbaa !213
  %.pre29 = ptrtoint ptr %.pre25 to i64
  %.pre30 = ptrtoint ptr %.pre26 to i64
  %.pre32 = sub i64 %.pre29, %.pre30
  br label %_ZSt4copyIPN4LIEF2PE17LoadConfiguration16guard_function_tES4_ET0_T_S6_S5_.exit

bb.m:                                             ; preds = %bb.k
  %i.ah = icmp eq i64 %i.ac, 8
  br i1 %i.ah, label %bb.n, label %_ZSt4copyIPN4LIEF2PE17LoadConfiguration16guard_function_tES4_ET0_T_S6_S5_.exit

bb.n:                                             ; preds = %bb.m
  %i.ai = load i64, ptr %i.c, align 4, !tbaa !58
  store i64 %i.ai, ptr %i.i, align 4, !tbaa !58
  br label %_ZSt4copyIPN4LIEF2PE17LoadConfiguration16guard_function_tES4_ET0_T_S6_S5_.exit

_ZSt4copyIPN4LIEF2PE17LoadConfiguration16guard_function_tES4_ET0_T_S6_S5_.exit: ; preds = %bb.l, %bb.m, %bb.n
  %.pre-phi33 = phi i64 [ %.pre32, %bb.l ], [ %i.ac, %bb.m ], [ 8, %bb.n ]
  %2 = phi ptr [ %.pre27, %bb.l ], [ %i.b, %bb.m ], [ %i.b, %bb.n ] ; 2 uses
  %3 = phi ptr [ %.pre26, %bb.l ], [ %i.i, %bb.m ], [ %i.i, %bb.n ] ; 2 uses
  %4 = phi ptr [ %.pre25, %bb.l ], [ %i.aa, %bb.m ], [ %i.aa, %bb.n ]
  %5 = phi ptr [ %.pre, %bb.l ], [ %i.c, %bb.m ], [ %i.c, %bb.n ]
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 %.pre-phi33 ; 2 uses
  %.not9.i.i.i.i = icmp eq ptr %i.aj, %2
  br i1 %.not9.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4LIEF2PE17LoadConfiguration16guard_function_tESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt4copyIPN4LIEF2PE17LoadConfiguration16guard_function_tES4_ET0_T_S6_S5_.exit, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i ], [ %4, %_ZSt4copyIPN4LIEF2PE17LoadConfiguration16guard_function_tES4_ET0_T_S6_S5_.exit ] ; 2 uses
  %.0810.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i.i ], [ %i.aj, %_ZSt4copyIPN4LIEF2PE17LoadConfiguration16guard_function_tES4_ET0_T_S6_S5_.exit ] ; 2 uses
  %i.ak = load i64, ptr %.0810.i.i.i.i, align 4, !tbaa !58
  store i64 %i.ak, ptr %.011.i.i.i.i, align 4, !tbaa !58
  %i.al = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 8 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.al, %2
  br i1 %.not.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4LIEF2PE17LoadConfiguration16guard_function_tESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !593

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4LIEF2PE17LoadConfiguration16guard_function_tESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit: ; preds = %.lr.ph.i.i.i.i, %_ZSt4copyIPN4LIEF2PE17LoadConfiguration16guard_function_tES4_ET0_T_S6_S5_.exit, %bb.j, %bb.i, %bb.h, %_ZNSt12_Vector_baseIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EE13_M_deallocateEPS3_m.exit
  %6 = phi ptr [ %i.o, %_ZNSt12_Vector_baseIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EE13_M_deallocateEPS3_m.exit ], [ %3, %_ZSt4copyIPN4LIEF2PE17LoadConfiguration16guard_function_tES4_ET0_T_S6_S5_.exit ], [ %i.i, %bb.j ], [ %i.i, %bb.i ], [ %.pre28, %bb.h ], [ %3, %.lr.ph.i.i.i.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 %i.f
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !213
  br label %bb.o

bb.o:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4LIEF2PE17LoadConfiguration16guard_function_tESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZNK4LIEF2PE17LoadConfiguration6acceptERNS_7VisitorE(ptr noundef nonnull align 8 dereferenceable(752) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) unnamed_addr #2 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !60
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 752
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(752) %0) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZNK4LIEF2PE17LoadConfiguration9to_stringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 dereferenceable(752) %1) local_unnamed_addr #2 align 2 {
_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit:
  %2 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %3 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %4 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %5 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %6 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %7 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %8 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %9 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %10 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %11 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %12 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %13 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %14 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %15 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %16 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %17 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %18 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %19 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %20 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %21 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %22 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %23 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %24 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %25 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %26 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %27 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %28 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %29 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %30 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %31 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %32 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %33 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %34 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %35 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %36 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %37 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %38 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %39 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %40 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %41 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %42 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %43 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %44 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %45 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %46 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %47 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %48 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %49 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %50 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %51 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %52 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %53 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %54 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %55 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %56 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %57 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %58 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %59 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %60 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %61 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %62 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %63 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %64 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %65 = alloca %"class.fmt::v12::basic_memory_buffer.836", align 8 ; 10 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %66 = alloca %"class.fmt::v12::basic_memory_buffer.836", align 8 ; 10 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %67 = alloca %"class.fmt::v12::basic_memory_buffer.836", align 8 ; 10 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %68 = alloca %"class.fmt::v12::basic_memory_buffer.836", align 8 ; 10 uses
  %i.f = alloca i64, align 8                      ; 6 uses
  %69 = alloca %"class.fmt::v12::basic_memory_buffer.836", align 8 ; 10 uses
  %i.g = alloca i64, align 8                      ; 6 uses
  %70 = alloca %"class.fmt::v12::basic_memory_buffer.836", align 8 ; 10 uses
  %i.h = alloca i64, align 8                      ; 6 uses
  %71 = alloca %"class.fmt::v12::basic_memory_buffer.836", align 8 ; 10 uses
  %i.i = alloca i64, align 8                      ; 6 uses
  %72 = alloca %"class.fmt::v12::basic_memory_buffer.836", align 8 ; 10 uses
  %i.j = alloca i64, align 8                      ; 6 uses
  %73 = alloca %"class.fmt::v12::basic_memory_buffer.836", align 8 ; 10 uses
  %i.k = alloca i64, align 8                      ; 6 uses
  %74 = alloca %"class.fmt::v12::basic_memory_buffer.836", align 8 ; 10 uses
  %i.l = alloca i64, align 8                      ; 6 uses
  %75 = alloca %"class.fmt::v12::basic_memory_buffer.836", align 8 ; 10 uses
  %i.m = alloca i64, align 8                      ; 6 uses
  %76 = alloca %"class.fmt::v12::basic_memory_buffer.836", align 8 ; 10 uses
  %i.n = alloca i64, align 8                      ; 6 uses
  %77 = alloca %"class.fmt::v12::basic_memory_buffer.836", align 8 ; 10 uses
  %i.o = alloca i64, align 8                      ; 6 uses
  %78 = alloca %"class.fmt::v12::basic_memory_buffer.836", align 8 ; 10 uses
  %i.p = alloca i64, align 8                      ; 6 uses
  %79 = alloca %"class.fmt::v12::basic_memory_buffer.836", align 8 ; 10 uses
  %i.q = alloca i64, align 8                      ; 6 uses
  %80 = alloca %"class.fmt::v12::basic_memory_buffer.836", align 8 ; 10 uses
  %i.r = alloca i64, align 8                      ; 6 uses
  %81 = alloca %"class.fmt::v12::basic_memory_buffer.836", align 8 ; 10 uses
  %i.s = alloca i64, align 8                      ; 6 uses
  %82 = alloca %"class.fmt::v12::basic_memory_buffer.836", align 8 ; 10 uses
  %i.t = alloca i64, align 8                      ; 6 uses
  %83 = alloca %"class.fmt::v12::basic_memory_buffer.836", align 8 ; 10 uses
  %i.u = alloca i64, align 8                      ; 6 uses
  %84 = alloca %"class.fmt::v12::basic_memory_buffer.836", align 8 ; 10 uses
  %i.v = alloca i64, align 8                      ; 6 uses
  %85 = alloca %"class.fmt::v12::basic_memory_buffer.836", align 8 ; 10 uses
  %i.w = alloca i64, align 8                      ; 6 uses
  %86 = alloca %"class.fmt::v12::basic_memory_buffer.836", align 8 ; 10 uses
  %i.x = alloca i64, align 8                      ; 6 uses
  %87 = alloca %"class.fmt::v12::basic_memory_buffer.836", align 8 ; 10 uses
  %i.y = alloca i64, align 8                      ; 6 uses
  %88 = alloca %"class.fmt::v12::basic_memory_buffer.836", align 8 ; 10 uses
  %i.z = alloca i64, align 8                      ; 6 uses
  %89 = alloca %"class.fmt::v12::basic_memory_buffer.836", align 8 ; 10 uses
  %i.aa = alloca i64, align 8                     ; 6 uses
  %90 = alloca %"class.fmt::v12::basic_memory_buffer.836", align 8 ; 10 uses
  %i.ab = alloca i64, align 8                     ; 6 uses
  %91 = alloca %"class.fmt::v12::basic_memory_buffer.836", align 8 ; 10 uses
  %i.ac = alloca i64, align 8                     ; 6 uses
  %92 = alloca %"class.fmt::v12::basic_memory_buffer.836", align 8 ; 10 uses
  %i.ad = alloca i64, align 8                     ; 6 uses
  %93 = alloca %"class.fmt::v12::basic_memory_buffer.836", align 8 ; 10 uses
  %i.ae = alloca i64, align 8                     ; 6 uses
  %94 = alloca %"class.fmt::v12::basic_memory_buffer.836", align 8 ; 10 uses
  %i.af = alloca i64, align 8                     ; 6 uses
  %95 = alloca %"class.fmt::v12::basic_memory_buffer.836", align 8 ; 10 uses
  %i.ag = alloca i64, align 8                     ; 6 uses
  %96 = alloca %"class.fmt::v12::basic_memory_buffer.836", align 8 ; 10 uses
  %i.ah = alloca i64, align 8                     ; 6 uses
  %97 = alloca %"class.fmt::v12::basic_memory_buffer.836", align 8 ; 10 uses
  %i.ai = alloca i64, align 8                     ; 6 uses
  %98 = alloca %"class.fmt::v12::basic_memory_buffer.836", align 8 ; 10 uses
  %i.aj = alloca i64, align 8                     ; 6 uses
  %99 = alloca %"class.fmt::v12::basic_memory_buffer.836", align 8 ; 10 uses
  %i.ak = alloca i64, align 8                     ; 6 uses
  %100 = alloca %"class.fmt::v12::basic_memory_buffer.836", align 8 ; 10 uses
  %i.al = alloca i64, align 8                     ; 6 uses
  %101 = alloca %"class.fmt::v12::basic_memory_buffer.836", align 8 ; 10 uses
  %i.am = alloca i64, align 8                     ; 6 uses
  %102 = alloca %"class.fmt::v12::basic_memory_buffer.836", align 8 ; 10 uses
  %i.an = alloca i64, align 8                     ; 6 uses
  %103 = alloca %"class.fmt::v12::basic_memory_buffer.836", align 8 ; 10 uses
  %i.ao = alloca i64, align 8                     ; 6 uses
  %104 = alloca %"class.fmt::v12::basic_memory_buffer.836", align 8 ; 10 uses
  %i.ap = alloca i64, align 8                     ; 6 uses
  %105 = alloca %"class.fmt::v12::basic_memory_buffer.836", align 8 ; 10 uses
  %i.aq = alloca i64, align 8                     ; 6 uses
  %106 = alloca %"class.fmt::v12::basic_memory_buffer.836", align 8 ; 10 uses
  %i.ar = alloca i64, align 8                     ; 6 uses
  %107 = alloca %"class.fmt::v12::basic_memory_buffer.836", align 8 ; 10 uses
  %i.as = alloca i64, align 8                     ; 6 uses
  %108 = alloca %"class.fmt::v12::basic_memory_buffer.836", align 8 ; 10 uses
  %i.at = alloca i64, align 8                     ; 6 uses
  %109 = alloca %"class.fmt::v12::basic_memory_buffer.836", align 8 ; 10 uses
  %i.au = alloca i64, align 8                     ; 6 uses
  %110 = alloca %"class.fmt::v12::basic_memory_buffer.836", align 8 ; 10 uses
  %i.av = alloca i64, align 8                     ; 6 uses
  %111 = alloca %"class.fmt::v12::basic_memory_buffer.836", align 8 ; 10 uses
  %i.aw = alloca i64, align 8                     ; 6 uses
  %112 = alloca %"class.fmt::v12::basic_memory_buffer.836", align 8 ; 10 uses
  %i.ax = alloca i64, align 8                     ; 6 uses
  %113 = alloca %"class.fmt::v12::basic_memory_buffer.836", align 8 ; 10 uses
  %i.ay = alloca i64, align 8                     ; 6 uses
  %114 = alloca %"class.fmt::v12::basic_memory_buffer.836", align 8 ; 10 uses
  %i.az = alloca i64, align 8                     ; 6 uses
  %115 = alloca %"class.fmt::v12::basic_memory_buffer.836", align 8 ; 10 uses
  %i.ba = alloca i64, align 8                     ; 6 uses
  %116 = alloca %"class.fmt::v12::basic_memory_buffer.836", align 8 ; 10 uses
  %i.bb = alloca i64, align 8                     ; 6 uses
  %117 = alloca %"class.fmt::v12::basic_memory_buffer.836", align 8 ; 10 uses
  %i.bc = alloca i64, align 8                     ; 6 uses
  %118 = alloca %"class.fmt::v12::basic_memory_buffer.836", align 8 ; 10 uses
  %i.bd = alloca i64, align 8                     ; 6 uses
  %119 = alloca %"class.fmt::v12::basic_memory_buffer.836", align 8 ; 10 uses
  %i.be = alloca i64, align 8                     ; 6 uses
  %120 = alloca %"class.fmt::v12::basic_memory_buffer.836", align 8 ; 10 uses
  %i.bf = alloca i64, align 8                     ; 6 uses
  %121 = alloca %"class.fmt::v12::basic_memory_buffer.836", align 8 ; 10 uses
  %i.bg = alloca i64, align 8                     ; 6 uses
end_hunk_2
begin_hunk_3_@_ZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEE:bb.a
.thread:                                          ; preds = %bb.as, %bb.q, %bb.u, %bb.t, %bb.av
  br i1 %i.d, label %bb.bb, label %bb.aw

bb.aw:                                            ; preds = %.thread
  %i.lj = load i32, ptr %2, align 4, !tbaa !249
  %i.lk = and i32 %i.lj, 8192
  %.not227 = icmp eq i32 %i.lk, 0
  br i1 %.not227, label %bb.ax, label %bb.bb

bb.ax:                                            ; preds = %bb.aw
  %i.ll = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.lm = load i64, ptr %i.ll, align 8, !tbaa !239 ; 2 uses
  %.not132237 = icmp eq i64 %i.lm, 0
  br i1 %.not132237, label %.critedge3.thread, label %.lr.ph239

.lr.ph239:                                        ; preds = %bb.ax
  %.promoted = load i32, ptr %i.a, align 4
  %i.ln = load ptr, ptr %4, align 8, !tbaa !230
  br label %bb.ay

bb.ay:                                            ; preds = %.lr.ph239, %bb.az
  %.0238 = phi i64 [ %i.lm, %.lr.ph239 ], [ %i.lp, %bb.az ] ; 5 uses
  %i.lo = phi i32 [ %.promoted, %.lr.ph239 ], [ %i.lt, %bb.az ]
  %i.lp = add i64 %.0238, -1                      ; 3 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %i.ln, i64 %i.lp
  %i.lr = load i8, ptr %i.lq, align 1, !tbaa !187
  %i.ls = icmp eq i8 %i.lr, 48
  br i1 %i.ls, label %bb.az, label %.critedge3

bb.az:                                            ; preds = %bb.ay
  %i.lt = add nsw i32 %i.lo, 1                    ; 2 uses
  store i32 %i.lt, ptr %i.a, align 4, !tbaa !58
  %.not132 = icmp eq i64 %i.lp, 0
  br i1 %.not132, label %.critedge3.thread, label %bb.ay, !llvm.loop !1570

.critedge3.thread:                                ; preds = %bb.az, %bb.ax
  %i.lu = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.lv = load i64, ptr %i.lu, align 8, !tbaa !231
  br label %_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit154

.critedge3:                                       ; preds = %bb.ay
  %i.lw = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.lx = load i64, ptr %i.lw, align 8, !tbaa !231 ; 2 uses
  %i.ly = icmp ugt i64 %.0238, %i.lx
  br i1 %i.ly, label %bb.ba, label %_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit154

bb.ba:                                            ; preds = %.critedge3
  %i.lz = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ma = load ptr, ptr %i.lz, align 8, !tbaa !229
  call void %i.ma(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %.0238) #25, !inline_history !30
  %.pre.i153 = load i64, ptr %i.lw, align 8, !tbaa !231
  br label %_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit154

_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit154: ; preds = %.critedge3.thread, %.critedge3, %bb.ba
  %.0.lcssa278 = phi i64 [ %.0238, %.critedge3 ], [ %.0238, %bb.ba ], [ 0, %.critedge3.thread ]
  %i.mb = phi i64 [ %i.lx, %.critedge3 ], [ %.pre.i153, %bb.ba ], [ %i.lv, %.critedge3.thread ]
  %i.mc = call noundef i64 @llvm.umin.i64(i64 %.0.lcssa278, i64 %i.mb)
  store i64 %i.mc, ptr %i.ll, align 8, !tbaa !239
  br label %bb.bb

bb.bb:                                            ; preds = %_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit154, %bb.aw, %.thread
  %i.md = load i32, ptr %i.a, align 4, !tbaa !58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit
  %.0105 = phi i32 [ %i.ab, %_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit ], [ 0, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit ], [ %i.md, %bb.bb ]
  ret i32 %.0105
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZN3fmt3v126detail14do_write_floatIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIfEEEET1_SA_RKT2_RKNS0_12format_specsENS0_4signEiNS0_10locale_refE(ptr %0, ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, i32 noundef %3, i32 noundef %4, ptr %5) local_unnamed_addr #2 comdat {
bb.a:
  %6 = alloca %"class.std::locale", align 8       ; 6 uses
  %7 = alloca %class.anon.887, align 4            ; 11 uses
  %i.a = load i32, ptr %2, align 4, !tbaa !249    ; 2 uses
  %i.b = and i32 %i.a, 16384
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %.not.i.i.i = icmp eq ptr %5, null
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZNSt6localeC1ERKS_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %5) #25
  br label %_ZNK3fmt3v1210locale_ref3getISt6localeEET_v.exit.i.i

bb.d:                                             ; preds = %bb.b
  call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #25
  br label %_ZNK3fmt3v1210locale_ref3getISt6localeEET_v.exit.i.i

_ZNK3fmt3v1210locale_ref3getISt6localeEET_v.exit.i.i: ; preds = %bb.d, %bb.c
  %i.c = call noundef i64 @_ZNKSt6locale2id5_M_idEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt7__cxx118numpunctIcE2idE) #25
  %i.d = load ptr, ptr %6, align 8, !tbaa !260
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !264
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.c
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !266  ; 3 uses
  %.not.not.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.not.i.i.i, label %bb.e, label %_ZN3fmt3v126detail13decimal_pointIcEET_NS0_10locale_refE.exit

bb.e:                                             ; preds = %_ZNK3fmt3v1210locale_ref3getISt6localeEET_v.exit.i.i
  call void @_ZSt16__throw_bad_castv() #28
  unreachable

_ZN3fmt3v126detail13decimal_pointIcEET_NS0_10locale_refE.exit: ; preds = %_ZNK3fmt3v1210locale_ref3getISt6localeEET_v.exit.i.i
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !60
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = call noundef signext i8 %i.k(ptr noundef nonnull align 8 dereferenceable(24) %i.h) #25, !inline_history !37
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %.pre = load i32, ptr %2, align 4, !tbaa !249
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %_ZN3fmt3v126detail13decimal_pointIcEET_NS0_10locale_refE.exit
  %i.m = phi i32 [ %.pre, %_ZN3fmt3v126detail13decimal_pointIcEET_NS0_10locale_refE.exit ], [ %i.a, %bb.a ] ; 5 uses
  %i.n = phi i8 [ %i.l, %_ZN3fmt3v126detail13decimal_pointIcEET_NS0_10locale_refE.exit ], [ 46, %bb.a ] ; 3 uses
  %i.o = load i32, ptr %1, align 4, !tbaa !310    ; 2 uses
  %i.p = or i32 %i.o, 1
  %i.q = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.p, i1 true)
  %i.r = xor i32 %i.q, 31
  %i.s = zext nneg i32 %i.r to i64
  %i.t = getelementptr inbounds nuw [8 x i8], ptr @_ZZN3fmt3v126detail15do_count_digitsEjE5table, i64 %i.s
  %i.u = load i64, ptr %i.t, align 8, !tbaa !169
  %i.v = zext i32 %i.o to i64
  %i.w = add i64 %i.u, %i.v
  %i.x = lshr i64 %i.w, 32                        ; 3 uses
  %i.y = trunc nuw i64 %i.x to i32                ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !302
  %i.ab = add nsw i32 %i.aa, %i.y                 ; 3 uses
  %i.ac = add nsw i32 %i.ab, -1                   ; 2 uses
  %i.ad = trunc i32 %i.m to i8
  %i.ae = and i8 %i.ad, 7
  switch i8 %i.ae, label %bb.g [
    i8 2, label %bb.h
    i8 1, label %bb.i
  ]

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !251 ; 2 uses
  %i.ah = icmp sgt i32 %i.ag, 0
  %. = select i1 %i.ah, i32 %i.ag, i32 %4
  %i.ai = icmp sgt i32 %i.ab, -4
  %i.aj = icmp sle i32 %i.ab, %.
  %i.ak = and i1 %i.ai, %i.aj
  br i1 %i.ak, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.al = ptrtoint ptr %5 to i64
  %i.am = call ptr @_ZN3fmt3v126detail11write_fixedIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIfEEEET1_SA_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refE(ptr %0, ptr noundef nonnull align 4 dereferenceable(8) %1, i32 noundef %i.y, i8 noundef signext %i.n, ptr noundef nonnull align 4 dereferenceable(16) %2, i32 noundef %3, i64 %i.al)
  br label %bb.t

bb.i:                                             ; preds = %bb.f, %bb.g
  %.not51 = icmp ne i32 %3, 0
  %i.an = zext i1 %.not51 to i64
  %i.ao = add nuw nsw i64 %i.x, %i.an
  %sext = shl i64 %i.ao, 32
  %i.ap = ashr exact i64 %sext, 32                ; 2 uses
  %i.aq = and i32 %i.m, 8192
  %.not53 = icmp eq i32 %i.aq, 0
  br i1 %.not53, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !251
  %i.at = sub nsw i32 %i.as, %i.y
  %i.au = call noundef i32 @llvm.smax.i32(i32 %i.at, i32 0) ; 2 uses
  %i.av = zext nneg i32 %i.au to i64
  %i.aw = add nsw i64 %i.ap, %i.av
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.ax = icmp eq i64 %i.x, 1
  %spec.select = select i1 %i.ax, i8 0, i8 %i.n
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.049 = phi i32 [ %i.au, %bb.j ], [ 0, %bb.k ]
  %.048 = phi i64 [ %i.aw, %bb.j ], [ %i.ap, %bb.k ]
  %.0 = phi i8 [ %i.n, %bb.j ], [ %spec.select, %bb.k ] ; 2 uses
  %.not52 = icmp ne i8 %.0, 0
  %i.ay = zext i1 %.not52 to i64
  %i.az = call i32 @llvm.abs.i32(i32 %i.ac, i1 true) ; 2 uses
  %i.ba = icmp samesign ult i32 %i.az, 100
  %i.bb = icmp samesign ugt i32 %i.az, 999
  %i.bc = select i1 %i.bb, i64 6, i64 5
  %.0.i = select i1 %i.ba, i64 4, i64 %i.bc
  %i.bd = add nsw i64 %.048, %.0.i
  %i.be = add nsw i64 %i.bd, %i.ay                ; 3 uses
  %i.bf = and i32 %i.m, 4096
  %.not54 = icmp eq i32 %i.bf, 0
  %i.bg = select i1 %.not54, i8 101, i8 69
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  store i32 %3, ptr %7, align 4, !tbaa !353
  %i.bh = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.bi = load i64, ptr %1, align 4, !tbaa !58
  store i64 %i.bi, ptr %i.bh, align 4, !tbaa !58
  %i.bj = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i32 %i.y, ptr %i.bj, align 4, !tbaa !354
  %i.bk = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i8 %.0, ptr %i.bk, align 4, !tbaa !355
  %i.bl = getelementptr inbounds nuw i8, ptr %7, i64 20
  store i32 %.049, ptr %i.bl, align 4, !tbaa !356
  %i.bm = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i8 %i.bg, ptr %i.bm, align 4, !tbaa !357
  %i.bn = getelementptr inbounds nuw i8, ptr %7, i64 28
  store i32 %i.ac, ptr %i.bn, align 4, !tbaa !358
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !271 ; 2 uses
  %i.bq = icmp sgt i32 %i.bp, 0
  br i1 %i.bq, label %bb.m, label %bb.r

bb.m:                                             ; preds = %bb.l
  %i.br = zext nneg i32 %i.bp to i64
  %i.bs = call i64 @llvm.usub.sat.i64(i64 %i.br, i64 %i.be) ; 4 uses
  %i.bt = lshr i32 %i.m, 3
  %i.bu = and i32 %i.bt, 7
  %i.bv = zext nneg i32 %i.bu to i64
  %i.bw = getelementptr inbounds nuw i8, ptr @.str.111, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !187
  %i.by = sext i8 %i.bx to i64
  %i.bz = and i64 %i.by, 4294967295
  %i.ca = lshr i64 %i.bs, %i.bz                   ; 4 uses
  %i.cb = sub nsw i64 %i.bs, %i.ca
  %i.cc = lshr i32 %i.m, 15
  %i.cd = and i32 %i.cc, 7
  %i.ce = zext nneg i32 %i.cd to i64
  %i.cf = mul nuw nsw i64 %i.bs, %i.ce
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !239
  %i.ci = add nsw i64 %i.cf, %i.be
  %i.cj = add i64 %i.ci, %i.ch                    ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !231
  %i.cm = icmp ugt i64 %i.cj, %i.cl
  br i1 %i.cm, label %bb.n, label %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit.i.i

bb.n:                                             ; preds = %bb.m
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !229
  call void %i.co(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.cj) #25, !inline_history !1573
  br label %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit.i.i

_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit.i.i: ; preds = %bb.n, %bb.m
  %.not.i.i = icmp eq i64 %i.ca, 0
  br i1 %.not.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit.i.i
  %i.cp = call ptr @_ZN3fmt3v126detail4fillIcNS0_14basic_appenderIcEEEET0_S5_mRKNS0_11basic_specsE(ptr nonnull %0, i64 noundef %i.ca, ptr noundef nonnull align 4 dereferenceable(16) %2)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit.i.i
  %.sroa.09.0.i.i = phi ptr [ %i.cp, %bb.o ], [ %0, %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit.i.i ]
  %i.cq = call ptr @_ZZN3fmt3v126detail14do_write_floatIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIfEEEET1_SA_RKT2_RKNS0_12format_specsENS0_4signEiNS0_10locale_refEENKUlS6_E_clES6_(ptr noundef nonnull align 4 dereferenceable(32) %7, ptr %.sroa.09.0.i.i) ; 2 uses
  %.not31.i.i = icmp eq i64 %i.bs, %i.ca
  br i1 %.not31.i.i, label %_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE2ENS0_14basic_appenderIcEERZNS1_14do_write_floatIcNS1_14digit_groupingIcEES5_NS1_9dragonbox10decimal_fpIfEEEET1_SC_RKT2_RKNS0_12format_specsENS0_4signEiNS0_10locale_refEEUlS5_E_EESC_SC_SI_mOSD_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cr = call ptr @_ZN3fmt3v126detail4fillIcNS0_14basic_appenderIcEEEET0_S5_mRKNS0_11basic_specsE(ptr %i.cq, i64 noundef %i.cb, ptr noundef nonnull align 4 dereferenceable(16) %2)
  br label %_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE2ENS0_14basic_appenderIcEERZNS1_14do_write_floatIcNS1_14digit_groupingIcEES5_NS1_9dragonbox10decimal_fpIfEEEET1_SC_RKT2_RKNS0_12format_specsENS0_4signEiNS0_10locale_refEEUlS5_E_EESC_SC_SI_mOSD_.exit

bb.r:                                             ; preds = %bb.l
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !239
  %i.cu = add i64 %i.ct, %i.be                    ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !231
  %i.cx = icmp ugt i64 %i.cu, %i.cw
  br i1 %i.cx, label %bb.s, label %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit

bb.s:                                             ; preds = %bb.r
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !229
  call void %i.cz(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.cu) #25, !inline_history !19
  br label %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit

_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit: ; preds = %bb.r, %bb.s
  %i.da = call ptr @_ZZN3fmt3v126detail14do_write_floatIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIfEEEET1_SA_RKT2_RKNS0_12format_specsENS0_4signEiNS0_10locale_refEENKUlS6_E_clES6_(ptr noundef nonnull align 4 dereferenceable(32) %7, ptr nonnull %0)
  br label %_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE2ENS0_14basic_appenderIcEERZNS1_14do_write_floatIcNS1_14digit_groupingIcEES5_NS1_9dragonbox10decimal_fpIfEEEET1_SC_RKT2_RKNS0_12format_specsENS0_4signEiNS0_10locale_refEEUlS5_E_EESC_SC_SI_mOSD_.exit

_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE2ENS0_14basic_appenderIcEERZNS1_14do_write_floatIcNS1_14digit_groupingIcEES5_NS1_9dragonbox10decimal_fpIfEEEET1_SC_RKT2_RKNS0_12format_specsENS0_4signEiNS0_10locale_refEEUlS5_E_EESC_SC_SI_mOSD_.exit: ; preds = %bb.q, %bb.p, %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit
  %.sroa.047.0 = phi ptr [ %i.da, %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit ], [ %i.cr, %bb.q ], [ %i.cq, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %bb.t

bb.t:                                             ; preds = %_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE2ENS0_14basic_appenderIcEERZNS1_14do_write_floatIcNS1_14digit_groupingIcEES5_NS1_9dragonbox10decimal_fpIfEEEET1_SC_RKT2_RKNS0_12format_specsENS0_4signEiNS0_10locale_refEEUlS5_E_EESC_SC_SI_mOSD_.exit, %bb.h
  %.sroa.047.1 = phi ptr [ %i.am, %bb.h ], [ %.sroa.047.0, %_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE2ENS0_14basic_appenderIcEERZNS1_14do_write_floatIcNS1_14digit_groupingIcEES5_NS1_9dragonbox10decimal_fpIfEEEET1_SC_RKT2_RKNS0_12format_specsENS0_4signEiNS0_10locale_refEEUlS5_E_EESC_SC_SI_mOSD_.exit ]
  ret ptr %.sroa.047.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZN3fmt3v126detail11write_fixedIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIfEEEET1_SA_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refE(ptr %0, ptr noundef nonnull align 4 dereferenceable(8) %1, i32 noundef %2, i8 noundef signext %3, ptr noundef nonnull align 4 dereferenceable(16) %4, i32 noundef %5, i64 %6) local_unnamed_addr #2 comdat {
bb.a:
  %7 = alloca %"struct.fmt::v12::detail::thousands_sep_result", align 8 ; 7 uses
  %8 = alloca %"struct.fmt::v12::detail::thousands_sep_result", align 8 ; 7 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %9 = alloca %"class.fmt::v12::detail::digit_grouping", align 8 ; 12 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %10 = alloca %"class.fmt::v12::detail::digit_grouping", align 8 ; 12 uses
  %11 = alloca %class.anon.889, align 8           ; 10 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %i.g = alloca i8, align 1                       ; 6 uses
  %12 = alloca %class.anon.890, align 8           ; 9 uses
  %i.h = inttoptr i64 %6 to ptr                   ; 2 uses
  store i32 %2, ptr %i.a, align 4, !tbaa !58
  store i8 %3, ptr %i.b, align 1, !tbaa !187
  store i32 %5, ptr %i.c, align 4, !tbaa !300
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !302  ; 3 uses
  %i.k = add nsw i32 %i.j, %2                     ; 6 uses
  store i32 %i.k, ptr %i.d, align 4, !tbaa !58
  %.not = icmp ne i32 %5, 0
  %i.l = zext i1 %.not to i32
  %i.m = add nsw i32 %2, %i.l
  %i.n = sext i32 %i.m to i64                     ; 3 uses
  %i.o = icmp sgt i32 %i.j, -1
  br i1 %i.o, label %bb.b, label %bb.x

bb.b:                                             ; preds = %bb.a
  %i.p = zext nneg i32 %i.j to i64
  %i.q = add nsw i64 %i.p, %i.n                   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.s = load i32, ptr %i.r, align 4, !tbaa !251
  %i.t = sub nsw i32 %i.s, %i.k                   ; 5 uses
  %i.u = load i32, ptr %4, align 4, !tbaa !249    ; 3 uses
  %i.v = and i32 %i.u, 8192
  %.not88 = icmp eq i32 %i.v, 0
  br i1 %.not88, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.w = add nsw i64 %i.q, 1                      ; 2 uses
  %i.x = icmp slt i32 %i.t, 1
  br i1 %i.x, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.y = and i32 %i.u, 7
  %.not41 = icmp eq i32 %i.y, 2
  %spec.select = select i1 %.not41, i32 %i.t, i32 0
  br label %.thread

bb.e:                                             ; preds = %bb.c
  %i.z = zext nneg i32 %i.t to i64
  %i.aa = add nsw i64 %i.w, %i.z
  br label %.thread

.thread:                                          ; preds = %bb.d, %bb.e, %bb.b
  %.1 = phi i32 [ %i.t, %bb.e ], [ %i.t, %bb.b ], [ %spec.select, %bb.d ] ; 2 uses
  %.0 = phi i64 [ %i.aa, %bb.e ], [ %i.q, %bb.b ], [ %i.w, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  %i.ab = and i32 %i.u, 16384
  %.not89 = icmp eq i32 %i.ab, 0
  %i.ac = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  store ptr %i.ac, ptr %9, align 8, !tbaa !226
  %i.ad = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store i64 0, ptr %i.ad, align 8, !tbaa !227
  store i8 0, ptr %i.ac, align 8, !tbaa !187
  %i.ae = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %9, i64 48 ; 4 uses
  store ptr %i.af, ptr %i.ae, align 8, !tbaa !226
  %i.ag = getelementptr inbounds nuw i8, ptr %9, i64 40 ; 3 uses
  store i64 0, ptr %i.ag, align 8, !tbaa !227
  store i8 0, ptr %i.af, align 8, !tbaa !187
  br i1 %.not89, label %_ZNK3fmt3v126detail14digit_groupingIcE16count_separatorsEi.exit, label %bb.f

bb.f:                                             ; preds = %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  call void @_ZN3fmt3v126detail13thousands_sepIcEENS1_20thousands_sep_resultIT_EENS0_10locale_refE(ptr dead_on_unwind nonnull writable sret(%"struct.fmt::v12::detail::thousands_sep_result") align 8 %8, ptr %i.h)
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(64) %9, ptr noundef nonnull align 8 dereferenceable(32) %8) #25
  %i.ah = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.ai = load i8, ptr %i.ah, align 8, !tbaa !339 ; 2 uses
  %.not.i = icmp eq i8 %i.ai, 0
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aj = load i64, ptr %i.ag, align 8, !tbaa !227
  %i.ak = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(ptr noundef nonnull align 8 dereferenceable(32) %i.ae, i64 noundef 0, i64 noundef %i.aj, i64 noundef 1, i8 noundef signext %i.ai) #25 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.al = load ptr, ptr %8, align 8, !tbaa !186   ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %_ZN3fmt3v126detail14digit_groupingIcEC2ENS0_10locale_refEb.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.h
  %i.ao = load i64, ptr %i.am, align 8, !tbaa !187
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ap) #27
  br label %_ZN3fmt3v126detail14digit_groupingIcEC2ENS0_10locale_refEb.exit

_ZN3fmt3v126detail14digit_groupingIcEC2ENS0_10locale_refEb.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  %.pr = load i64, ptr %i.ag, align 8, !tbaa !227
end_hunk_3
begin_hunk_4_@_ZN4LIEF12BinaryStream11bind_binaryERNS_6BinaryE:bb.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN4LIEF2PE13EnclaveImportESaIS2_EEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !182  ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !181    ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i = icmp eq ptr %i.c, %i.d
  br i1 %.not.i.i.i, label %_ZNSt12_Vector_baseIN4LIEF2PE13EnclaveImportESaIS2_EEC2EmRKS3_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = sdiv exact i64 %i.g, 112
  %i.i = icmp ugt i64 %i.h, 82351536043346212
  br i1 %i.i, label %bb.c, label %_ZNSt15__new_allocatorIN4LIEF2PE13EnclaveImportEE8allocateEmPKv.exit.i.i.i, !prof !222

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #28
  unreachable

_ZNSt15__new_allocatorIN4LIEF2PE13EnclaveImportEE8allocateEmPKv.exit.i.i.i: ; preds = %bb.b
  %i.j = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #26
  br label %_ZNSt12_Vector_baseIN4LIEF2PE13EnclaveImportESaIS2_EEC2EmRKS3_.exit

_ZNSt12_Vector_baseIN4LIEF2PE13EnclaveImportESaIS2_EEC2EmRKS3_.exit: ; preds = %bb.a, %_ZNSt15__new_allocatorIN4LIEF2PE13EnclaveImportEE8allocateEmPKv.exit.i.i.i
  %i.k = phi ptr [ %i.j, %_ZNSt15__new_allocatorIN4LIEF2PE13EnclaveImportEE8allocateEmPKv.exit.i.i.i ], [ null, %bb.a ] ; 5 uses
  store ptr %i.k, ptr %0, align 8, !tbaa !181
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !182
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.g
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.m, ptr %i.n, align 8, !tbaa !189
  %i.o = load ptr, ptr %1, align 8, !tbaa !1669   ; 2 uses
  %i.p = load ptr, ptr %i.b, align 8, !tbaa !1669 ; 2 uses
  %.not7.i.i.i.i = icmp eq ptr %i.o, %i.p
  br i1 %.not7.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN4LIEF2PE13EnclaveImportESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt12_Vector_baseIN4LIEF2PE13EnclaveImportESaIS2_EEC2EmRKS3_.exit, %_ZSt10_ConstructIN4LIEF2PE13EnclaveImportEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i
  %.09.i.i.i.i = phi ptr [ %i.ag, %_ZSt10_ConstructIN4LIEF2PE13EnclaveImportEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.k, %_ZNSt12_Vector_baseIN4LIEF2PE13EnclaveImportESaIS2_EEC2EmRKS3_.exit ] ; 5 uses
  %.sroa.04.08.i.i.i.i = phi ptr [ %i.af, %_ZSt10_ConstructIN4LIEF2PE13EnclaveImportEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.o, %_ZNSt12_Vector_baseIN4LIEF2PE13EnclaveImportESaIS2_EEC2EmRKS3_.exit ] ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.09.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.04.08.i.i.i.i, i64 80, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 80 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i, i64 80
  %i.s = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 96 ; 3 uses
  store ptr %i.s, ptr %i.q, align 8, !tbaa !226
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !186  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i, i64 88
  %i.v = load i64, ptr %i.u, align 8, !tbaa !227  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 %i.v, ptr %i.a, align 8, !tbaa !169
  %i.w = icmp ugt i64 %i.v, 15
  br i1 %i.w, label %bb.d, label %._crit_edge.i.i.i.i.i.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.x = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #25 ; 2 uses
  store ptr %i.x, ptr %i.q, align 8, !tbaa !186
  %i.y = load i64, ptr %i.a, align 8, !tbaa !169
  store i64 %i.y, ptr %i.s, align 8, !tbaa !187
  br label %._crit_edge.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %bb.d, %.lr.ph.i.i.i.i
  %i.z = phi ptr [ %i.x, %bb.d ], [ %i.s, %.lr.ph.i.i.i.i ] ; 2 uses
  switch i64 %i.v, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZSt10_ConstructIN4LIEF2PE13EnclaveImportEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  %i.aa = load i8, ptr %i.t, align 1, !tbaa !187
  store i8 %i.aa, ptr %i.z, align 1, !tbaa !187
  br label %_ZSt10_ConstructIN4LIEF2PE13EnclaveImportEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i

bb.f:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.z, ptr align 1 %i.t, i64 %i.v, i1 false)
  br label %_ZSt10_ConstructIN4LIEF2PE13EnclaveImportEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i

_ZSt10_ConstructIN4LIEF2PE13EnclaveImportEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i: ; preds = %bb.f, %bb.e, %._crit_edge.i.i.i.i.i.i.i.i
  %i.ab = load i64, ptr %i.a, align 8, !tbaa !169 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 88
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !227
  %i.ad = load ptr, ptr %i.q, align 8, !tbaa !186
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ab
  store i8 0, ptr %i.ae, align 1, !tbaa !187
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i, i64 112 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 112 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.af, %i.p
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN4LIEF2PE13EnclaveImportESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !1668

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN4LIEF2PE13EnclaveImportESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit: ; preds = %_ZSt10_ConstructIN4LIEF2PE13EnclaveImportEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i, %_ZNSt12_Vector_baseIN4LIEF2PE13EnclaveImportESaIS2_EEC2EmRKS3_.exit
  %.0.lcssa.i.i.i.i = phi ptr [ %i.k, %_ZNSt12_Vector_baseIN4LIEF2PE13EnclaveImportESaIS2_EEC2EmRKS3_.exit ], [ %i.ag, %_ZSt10_ConstructIN4LIEF2PE13EnclaveImportEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i, ptr %i.l, align 8, !tbaa !182
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4LIEF2PE16VolatileMetadataC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !212  ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !202  ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.d, %i.e
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = icmp ugt i64 %i.h, 9223372036854775804
  br i1 %i.i, label %bb.c, label %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i, !prof !222

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #28
  unreachable

_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.j = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #26
  br label %_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.i

_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.i:      ; preds = %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.k = phi ptr [ %i.j, %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i ], [ null, %bb.a ] ; 6 uses
  store ptr %i.k, ptr %i.a, align 8, !tbaa !202
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !212
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.h
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.m, ptr %i.n, align 8, !tbaa !195
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !194  ; 3 uses
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !194
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.o to i64
  %i.s = sub i64 %i.q, %i.r                       ; 4 uses
  %i.t = icmp sgt i64 %i.s, 4
  br i1 %i.t, label %bb.d, label %bb.e, !prof !223

bb.d:                                             ; preds = %_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.k, ptr align 4 %i.o, i64 %i.s, i1 false)
  br label %_ZNSt6vectorIjSaIjEEC2ERKS1_.exit

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.i
  %i.u = icmp eq i64 %i.s, 4
  br i1 %i.u, label %bb.f, label %_ZNSt6vectorIjSaIjEEC2ERKS1_.exit

bb.f:                                             ; preds = %bb.e
  %i.v = load i32, ptr %i.o, align 4, !tbaa !58
  store i32 %i.v, ptr %i.k, align 4, !tbaa !58
  br label %_ZNSt6vectorIjSaIjEEC2ERKS1_.exit

_ZNSt6vectorIjSaIjEEC2ERKS1_.exit:                ; preds = %bb.d, %bb.e, %bb.f
  %i.w = getelementptr inbounds i8, ptr %i.k, i64 %i.s
  store ptr %i.w, ptr %i.l, align 8, !tbaa !212
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !1671 ; 2 uses
  %i.ab = load ptr, ptr %i.y, align 8, !tbaa !210 ; 2 uses
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = sub i64 %i.ac, %i.ad                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, i8 0, i64 24, i1 false)
  %.not.i.i.i.i4 = icmp eq ptr %i.aa, %i.ab
  br i1 %.not.i.i.i.i4, label %_ZNSt12_Vector_baseIN4LIEF2PE16VolatileMetadata7range_tESaIS3_EEC2EmRKS4_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIjSaIjEEC2ERKS1_.exit
  %i.af = icmp ugt i64 %i.ae, 9223372036854775800
  br i1 %i.af, label %bb.h, label %_ZNSt15__new_allocatorIN4LIEF2PE16VolatileMetadata7range_tEE8allocateEmPKv.exit.i.i.i.i, !prof !222

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #28
  unreachable

_ZNSt15__new_allocatorIN4LIEF2PE16VolatileMetadata7range_tEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.g
  %i.ag = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ae) #26
  br label %_ZNSt12_Vector_baseIN4LIEF2PE16VolatileMetadata7range_tESaIS3_EEC2EmRKS4_.exit.i

_ZNSt12_Vector_baseIN4LIEF2PE16VolatileMetadata7range_tESaIS3_EEC2EmRKS4_.exit.i: ; preds = %_ZNSt15__new_allocatorIN4LIEF2PE16VolatileMetadata7range_tEE8allocateEmPKv.exit.i.i.i.i, %_ZNSt6vectorIjSaIjEEC2ERKS1_.exit
  %i.ah = phi ptr [ %i.ag, %_ZNSt15__new_allocatorIN4LIEF2PE16VolatileMetadata7range_tEE8allocateEmPKv.exit.i.i.i.i ], [ null, %_ZNSt6vectorIjSaIjEEC2ERKS1_.exit ] ; 5 uses
  store ptr %i.ah, ptr %i.x, align 8, !tbaa !210
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !1671
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ae
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !211
  %i.al = load ptr, ptr %i.y, align 8, !tbaa !1672 ; 2 uses
  %i.am = load ptr, ptr %i.z, align 8, !tbaa !1672 ; 2 uses
  %.not7.i.i.i.i.i = icmp eq ptr %i.al, %i.am
  br i1 %.not7.i.i.i.i.i, label %_ZNSt6vectorIN4LIEF2PE16VolatileMetadata7range_tESaIS3_EEC2ERKS5_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt12_Vector_baseIN4LIEF2PE16VolatileMetadata7range_tESaIS3_EEC2EmRKS4_.exit.i, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i ], [ %i.ah, %_ZNSt12_Vector_baseIN4LIEF2PE16VolatileMetadata7range_tESaIS3_EEC2EmRKS4_.exit.i ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i ], [ %i.al, %_ZNSt12_Vector_baseIN4LIEF2PE16VolatileMetadata7range_tESaIS3_EEC2EmRKS4_.exit.i ] ; 2 uses
  %i.an = load i64, ptr %.sroa.04.08.i.i.i.i.i, align 4, !tbaa !58
  store i64 %i.an, ptr %.09.i.i.i.i.i, align 4, !tbaa !58
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ao, %i.am
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN4LIEF2PE16VolatileMetadata7range_tESaIS3_EEC2ERKS5_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !1670

_ZNSt6vectorIN4LIEF2PE16VolatileMetadata7range_tESaIS3_EEC2ERKS5_.exit: ; preds = %.lr.ph.i.i.i.i.i, %_ZNSt12_Vector_baseIN4LIEF2PE16VolatileMetadata7range_tESaIS3_EEC2EmRKS4_.exit.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ah, %_ZNSt12_Vector_baseIN4LIEF2PE16VolatileMetadata7range_tESaIS3_EEC2EmRKS4_.exit.i ], [ %i.ap, %.lr.ph.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.ai, align 8, !tbaa !1671
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #0

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6spdlog6logger4log_IJRKmS3_EEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef byval(%"struct.spdlog::source_loc") align 8 %1, i32 noundef %2, ptr %3, i64 %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %7 = alloca %"class.std::bad_alloc", align 8    ; 3 uses
  %8 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %9 = alloca %"class.fmt::v12::basic_memory_buffer", align 8 ; 11 uses
  %10 = alloca %"struct.fmt::v12::detail::format_arg_store.1492", align 16 ; 6 uses
  %11 = alloca %"struct.spdlog::details::log_msg", align 8 ; 13 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load atomic i32, ptr %i.a monotonic, align 8
  %i.c = icmp sge i32 %2, %i.b                    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.f = load atomic i8, ptr %i.e monotonic, align 8, !range !71, !noundef !72
  %i.g = trunc nuw i8 %i.f to i1                  ; 2 uses
  %or.cond = or i1 %i.c, %i.g
  br i1 %or.cond, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  %i.h = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  store i64 0, ptr %i.j, align 8
  store ptr @_ZN3fmt3v1219basic_memory_bufferIcLm250ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.i, align 8, !tbaa !229
  %i.k = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 3 uses
  store ptr %i.k, ptr %9, align 8, !tbaa !230
  store i64 250, ptr %i.h, align 8, !tbaa !231
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  %i.l = load i64, ptr %5, align 8, !tbaa !169, !noalias !1675
  store i64 %i.l, ptr %10, align 16, !tbaa !187
  %i.m = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.n = load i64, ptr %6, align 8, !tbaa !169, !noalias !1675
  store i64 %i.n, ptr %i.m, align 16, !tbaa !187
  %i.o = icmp eq i64 %4, 2
  br i1 %i.o, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.p = load i16, ptr %3, align 1
  %i.q = icmp ne i16 %i.p, 32123
  %i.r = zext i1 %i.q to i32
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %.sroa.0.0.copyload.sink66.i = load i128, ptr %10, align 16, !tbaa !187
  %i.t = trunc i128 %.sroa.0.0.copyload.sink66.i to i64 ; 5 uses
  %i.u = or i64 %i.t, 1
  %i.v = call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.u, i1 true)
  %i.w = xor i64 %i.v, 63
  %i.x = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail15do_count_digitsEmE9bsr2log10, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !tbaa !187   ; 2 uses
  %i.z = zext i8 %i.y to i32
  %i.aa = zext i8 %i.y to i64
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr @_ZZN3fmt3v126detail15do_count_digitsEmE20zero_or_powers_of_10, i64 %i.aa
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !169
  %i.ad = icmp ugt i64 %i.ac, %i.t
  %.neg.i.i.i.i = sext i1 %i.ad to i32
  %i.ae = add nsw i32 %.neg.i.i.i.i, %i.z         ; 4 uses
  %i.af = sext i32 %i.ae to i64                   ; 2 uses
  %i.ag = icmp ugt i32 %i.ae, 250
  br i1 %i.ag, label %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i.i, label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i.thread

_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i.i: ; preds = %bb.d
  %spec.select.i = call i64 @llvm.umax.i64(i64 %i.af, i64 375) ; 2 uses
  %i.ah = call noalias ptr @malloc(i64 noundef %spec.select.i) #29 ; 3 uses
  %.not.i.i27 = icmp eq ptr %i.ah, null
  br i1 %.not.i.i27, label %bb.e, label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i

bb.e:                                             ; preds = %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %7, align 8, !tbaa !60
  %i.ai = call noundef ptr @_ZNKSt9bad_alloc4whatEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #25
  call void @_ZN3fmt3v1211assert_failEPKciS2_(ptr noundef nonnull @.str.99, i32 noundef 752, ptr noundef %i.ai) #30
  unreachable

_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i: ; preds = %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i.i
  store ptr %i.ah, ptr %9, align 8, !tbaa !230
  store i64 %spec.select.i, ptr %i.h, align 8, !tbaa !231
  br label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i.thread

_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i.thread: ; preds = %bb.d, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i
  %i.aj = phi ptr [ %i.ah, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i ], [ %i.k, %bb.d ] ; 3 uses
  store i64 %i.af, ptr %i.j, align 8, !tbaa !239
  %i.ak = icmp ugt i64 %i.t, 99
  br i1 %i.ak, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i13

.lr.ph.i.i.i:                                     ; preds = %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i.thread, %.lr.ph.i.i.i
  %.020.i.i.i = phi i32 [ %i.al, %.lr.ph.i.i.i ], [ %i.ae, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i.thread ]
  %.01819.i.i.i = phi i64 [ %i.as, %.lr.ph.i.i.i ], [ %i.t, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i.thread ] ; 3 uses
  %i.al = add i32 %.020.i.i.i, -2                 ; 3 uses
  %i.am = zext i32 %i.al to i64
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.am
  %i.ao = urem i64 %.01819.i.i.i, 100
  %i.ap = shl nuw nsw i64 %i.ao, 1
  %i.aq = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.ap
  %i.ar = load i16, ptr %i.aq, align 2
  store i16 %i.ar, ptr %i.an, align 1
  %i.as = udiv i64 %.01819.i.i.i, 100             ; 2 uses
  %i.at = icmp ugt i64 %.01819.i.i.i, 9999
  br i1 %i.at, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i13, !llvm.loop !10

._crit_edge.i.i.i13:                              ; preds = %.lr.ph.i.i.i, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i.thread
  %.018.lcssa.i.i.i = phi i64 [ %i.t, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i.thread ], [ %i.as, %.lr.ph.i.i.i ] ; 3 uses
  %.0.lcssa.i.i.i = phi i32 [ %i.ae, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i.thread ], [ %i.al, %.lr.ph.i.i.i ] ; 2 uses
  %i.au = icmp samesign ugt i64 %.018.lcssa.i.i.i, 9
  br i1 %i.au, label %bb.f, label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i.i13
  %i.av = add i32 %.0.lcssa.i.i.i, -2
  %i.aw = zext i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.aw
  %i.ay = shl nuw nsw i64 %.018.lcssa.i.i.i, 1
  %i.az = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.ay
  %i.ba = load i16, ptr %i.az, align 2
  store i16 %i.ba, ptr %i.ax, align 1
  br label %_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit

bb.g:                                             ; preds = %._crit_edge.i.i.i13
  %i.bb = trunc nuw nsw i64 %.018.lcssa.i.i.i to i8
  %i.bc = or disjoint i8 %i.bb, 48
  %i.bd = add i32 %.0.lcssa.i.i.i, -1
  %i.be = zext i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.be
  store i8 %i.bc, ptr %i.bf, align 1, !tbaa !187
  br label %_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit

bb.h:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  store ptr %3, ptr %8, align 8, !tbaa !215
  %.sroa.2.0..sroa_idx.i16.i = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %4, ptr %.sroa.2.0..sroa_idx.i16.i, align 8, !tbaa !169
  %i.bg = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i32 0, ptr %i.bg, align 8, !tbaa !234
  %i.bh = getelementptr inbounds nuw i8, ptr %8, i64 24
  store ptr %9, ptr %i.bh, align 8, !tbaa !236
  %i.bi = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i64 68, ptr %i.bi, align 8, !tbaa !238
  %.sroa.2.0..sroa_idx.i17.i = getelementptr inbounds nuw i8, ptr %8, i64 40
  store ptr %10, ptr %.sroa.2.0..sroa_idx.i17.i, align 8, !tbaa !187
  %i.bj = getelementptr inbounds nuw i8, ptr %8, i64 48
  store ptr null, ptr %i.bj, align 8, !tbaa !200
  call void @_ZN3fmt3v126detail19parse_format_stringIcNS1_14format_handlerIcEEEEvNS0_17basic_string_viewIT_EEOT0_(ptr %3, i64 %4, ptr noundef nonnull align 8 dereferenceable(56) %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit

_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit: ; preds = %bb.g, %bb.f, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !186
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !227
  %i.bo = load ptr, ptr %9, align 8, !tbaa !230
  %i.bp = load i64, ptr %i.j, align 8, !tbaa !239
  %i.bq = call i64 @_ZNSt6chrono3_V212system_clock3nowEv() #25
  store ptr %i.bl, ptr %11, align 8, !tbaa !215
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %i.bn, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !169
  %i.br = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i32 %2, ptr %i.br, align 8, !tbaa !383
  %i.bs = getelementptr inbounds nuw i8, ptr %11, i64 24
  store i64 %i.bq, ptr %i.bs, align 8, !tbaa !169
  %i.bt = load i8, ptr @_ZGVZN6spdlog7details2os9thread_idEvE3tid, align 8
  %i.bu = icmp eq i8 %i.bt, 0
  br i1 %i.bu, label %bb.i, label %._crit_edge.i.i.i, !prof !384

._crit_edge.i.i.i:                                ; preds = %_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit
  %.pre.i.i.i = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN6spdlog7details2os9thread_idEvE3tid)
  %.pre.i.i = load i64, ptr %.pre.i.i.i, align 8, !tbaa !169
  br label %_ZN6spdlog7details7log_msgC2ENS_10source_locEN3fmt3v1217basic_string_viewIcEENS_5level10level_enumES6_.exit

bb.i:                                             ; preds = %_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit
  %i.bv = call noundef i64 (i64, ...) @syscall(i64 noundef 186) #25 ; 2 uses
  %i.bw = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN6spdlog7details2os9thread_idEvE3tid)
  store i64 %i.bv, ptr %i.bw, align 8, !tbaa !169
  %i.bx = call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZZN6spdlog7details2os9thread_idEvE3tid) ; 0 uses
  store i8 1, ptr @_ZGVZN6spdlog7details2os9thread_idEvE3tid, align 8
  br label %_ZN6spdlog7details7log_msgC2ENS_10source_locEN3fmt3v1217basic_string_viewIcEENS_5level10level_enumES6_.exit

_ZN6spdlog7details7log_msgC2ENS_10source_locEN3fmt3v1217basic_string_viewIcEENS_5level10level_enumES6_.exit: ; preds = %._crit_edge.i.i.i, %bb.i
  %i.by = phi i64 [ %.pre.i.i, %._crit_edge.i.i.i ], [ %i.bv, %bb.i ]
  %i.bz = getelementptr inbounds nuw i8, ptr %11, i64 32
  store i64 %i.by, ptr %i.bz, align 8, !tbaa !385
end_hunk_4
