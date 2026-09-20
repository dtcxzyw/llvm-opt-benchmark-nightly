Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/msgpack/original/enum?download=true
inline.NumInlined: 766
inline.NumDeleted: 322
begin_hunk_0_@_ZN7msgpack2v26detail21create_object_visitor9visit_strEPKcj:bb.a
  %i.ae = tail call noalias ptr @malloc(i64 noundef %i.ad) #25 ; 4 uses
  %.not27.i.i = icmp eq ptr %i.ae, null
  br i1 %.not27.i.i, label %bb.o, label %_ZN7msgpack2v14zone15allocate_expandEm.exit.i

bb.o:                                             ; preds = %.thread
  %i.af = tail call ptr @__cxa_allocate_exception(i64 8) #21 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.af, align 8, !tbaa !27
  tail call void @__cxa_throw(ptr nonnull %i.af, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #23
  unreachable

_ZN7msgpack2v14zone15allocate_expandEm.exit.i:    ; preds = %.thread
  %i.ag = getelementptr i8, ptr %i.ae, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.s, i64 24 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !40
  store ptr %i.ai, ptr %i.ae, align 8, !tbaa !42
  store ptr %i.ae, ptr %i.ah, align 8, !tbaa !40
  br label %_ZN7msgpack2v14zone14allocate_alignEmm.exit

_ZN7msgpack2v14zone14allocate_alignEmm.exit:      ; preds = %bb.i, %_ZN7msgpack2v14zone15allocate_expandEm.exit.i
  %i.aj = phi ptr [ %i.ag, %_ZN7msgpack2v14zone15allocate_expandEm.exit.i ], [ %i.v, %bb.i ] ; 3 uses
  %i.ak = phi i64 [ %.2.i.i25, %_ZN7msgpack2v14zone15allocate_expandEm.exit.i ], [ %i.w, %bb.i ]
  %i.al = sub i64 %i.ak, %i.a
  store i64 %i.al, ptr %i.t, align 8, !tbaa !92
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.a
  store ptr %i.am, ptr %i.u, align 8, !tbaa !91
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aj, ptr nonnull align 1 %1, i64 %i.a, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr %i.aj, ptr %i.ao, align 8, !tbaa !13
  store i32 %2, ptr %i.an, align 8, !tbaa !13
  br label %bb.q

bb.p:                                             ; preds = %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr null, ptr %i.aq, align 8, !tbaa !13
  store i32 0, ptr %i.ap, align 8, !tbaa !13
  br label %bb.q

bb.q:                                             ; preds = %_ZN7msgpack2v14zone14allocate_alignEmm.exit, %bb.p, %bb.g
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE15start_aggregateINS_2v16detail7fix_tagENS6_8array_svENS6_8array_evEEENS0_12parse_returnERKT0_RKT1_PKcRm(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %3, align 1, !tbaa !13
  %i.b = and i8 %i.a, 15                          ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !80
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  store ptr %i.e, ptr %i.c, align 8, !tbaa !80
  %i.f = icmp eq i8 %i.b, 0
  br i1 %i.f, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %1, align 8, !tbaa !94, !nonnull !65, !align !83
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !82, !nonnull !65, !align !83
  %i.j = tail call noundef zeroext i1 @_ZN7msgpack2v26detail21create_object_visitor11start_arrayEj(ptr noundef nonnull align 8 dereferenceable(121) %i.i, i32 noundef 0)
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !80
  %i.l = load ptr, ptr %0, align 8, !tbaa !79
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  store i64 %i.o, ptr %4, align 8, !tbaa !20
  br label %bb.r

bb.d:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %2, align 8, !tbaa !96, !nonnull !65, !align !83
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !82, !nonnull !65, !align !83
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 96 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !62
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 -8
  store ptr %i.u, ptr %i.s, align 8, !tbaa !62
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !85   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !85   ; 2 uses
  %i.z = icmp eq ptr %i.w, %i.y
  br i1 %i.z, label %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE12unpack_stack7consumeERS5_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ab = load ptr, ptr %i.aa, align 8, !nonnull !65, !align !83
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 96 ; 4 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.j, %.lr.ph.i
  %i.ad = phi ptr [ %i.y, %.lr.ph.i ], [ %i.ba, %bb.j ] ; 4 uses
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 -8 ; 5 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !88
  switch i32 %i.af, label %bb.j [
    i32 0, label %bb.f
    i32 1, label %bb.g
    i32 2, label %bb.h
  ]

bb.f:                                             ; preds = %bb.e
  %i.ag = load ptr, ptr %i.ac, align 8, !tbaa !84
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 -8 ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !61
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  store ptr %i.aj, ptr %i.ah, align 8, !tbaa !61
  %i.ak = getelementptr inbounds i8, ptr %i.ad, i64 -4 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !89
  %i.am = add i32 %i.al, -1                       ; 2 uses
  store i32 %i.am, ptr %i.ak, align 4, !tbaa !89
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %.sink.split.i, label %.critedge

bb.g:                                             ; preds = %bb.e
  %i.ao = load ptr, ptr %i.ac, align 8, !tbaa !84
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 -8 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !61
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  store ptr %i.ar, ptr %i.ap, align 8, !tbaa !61
  store i32 2, ptr %i.ae, align 4, !tbaa !88
  br label %.critedge

bb.h:                                             ; preds = %bb.e
  %i.as = load ptr, ptr %i.ac, align 8, !tbaa !84
  %i.at = getelementptr inbounds i8, ptr %i.as, i64 -8 ; 3 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !61
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  store ptr %i.av, ptr %i.at, align 8, !tbaa !61
  %i.aw = getelementptr inbounds i8, ptr %i.ad, i64 -4 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !89
  %i.ay = add i32 %i.ax, -1                       ; 2 uses
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !89
  %i.az = icmp eq i32 %i.ay, 0
  br i1 %i.az, label %.sink.split.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i32 1, ptr %i.ae, align 4, !tbaa !88
  br label %.critedge

.sink.split.i:                                    ; preds = %bb.h, %bb.f
  %.sink.i = phi ptr [ %i.ah, %bb.f ], [ %i.at, %bb.h ]
  store ptr %i.ae, ptr %i.x, align 8, !tbaa !76
  store ptr %.sink.i, ptr %i.ac, align 8, !tbaa !62
  br label %bb.j

bb.j:                                             ; preds = %.sink.split.i, %bb.e
  %i.ba = phi ptr [ %i.ad, %bb.e ], [ %i.ae, %.sink.split.i ] ; 2 uses
  %i.bb = icmp eq ptr %i.w, %i.ba
  br i1 %i.bb, label %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE12unpack_stack7consumeERS5_.exit, label %bb.e

_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE12unpack_stack7consumeERS5_.exit: ; preds = %bb.j, %bb.d
  %i.bc = load ptr, ptr %i.c, align 8, !tbaa !80
  %i.bd = load ptr, ptr %0, align 8, !tbaa !79
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = sub i64 %i.be, %i.bf
  store i64 %i.bg, ptr %4, align 8, !tbaa !20
  br label %bb.r

bb.k:                                             ; preds = %bb.a
  %i.bh = zext nneg i8 %i.b to i32
  %i.bi = load ptr, ptr %1, align 8, !tbaa !94, !nonnull !65, !align !83
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 56
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !82, !nonnull !65, !align !83
  %i.bl = tail call noundef zeroext i1 @_ZN7msgpack2v26detail21create_object_visitor11start_arrayEj(ptr noundef nonnull align 8 dereferenceable(121) %i.bk, i32 noundef %i.bh)
  br i1 %i.bl, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bm = load ptr, ptr %i.c, align 8, !tbaa !80
  %i.bn = load ptr, ptr %0, align 8, !tbaa !79
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = sub i64 %i.bo, %i.bp
  store i64 %i.bq, ptr %4, align 8, !tbaa !20
  br label %bb.r

bb.m:                                             ; preds = %bb.k
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !76 ; 5 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !77
  %.not.i.i.i = icmp eq ptr %i.bt, %i.bv
  br i1 %.not.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.sroa.5.0.insert.ext.i = zext nneg i8 %i.b to i64
  %.sroa.5.0.insert.shift.i = shl nuw nsw i64 %.sroa.5.0.insert.ext.i, 32
  store i64 %.sroa.5.0.insert.shift.i, ptr %i.bt, align 4
  %i.bw = load ptr, ptr %i.bs, align 8, !tbaa !76
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  store ptr %i.bx, ptr %i.bs, align 8, !tbaa !76
  br label %.critedge

bb.o:                                             ; preds = %bb.m
  %i.by = load ptr, ptr %i.br, align 8, !tbaa !75 ; 5 uses
  %i.bz = ptrtoint ptr %i.bt to i64
  %i.ca = ptrtoint ptr %i.by to i64
  %i.cb = sub i64 %i.bz, %i.ca                    ; 5 uses
  %i.cc = icmp eq i64 %i.cb, 9223372036854775800
  br i1 %i.cc, label %bb.p, label %_ZNKSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.p:                                             ; preds = %bb.o
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #23
  unreachable

_ZNKSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.o
  %i.cd = ashr exact i64 %i.cb, 3
  %mul2.i.i.i.i = ashr exact i64 %i.cb, 2
  %5 = tail call i64 @llvm.umax.i64(i64 %mul2.i.i.i.i, i64 1) ; 2 uses
  %i.ce = icmp ult i64 %5, %i.cd
  %i.cf = tail call i64 @llvm.umin.i64(i64 %5, i64 1152921504606846975)
  %i.cg = select i1 %i.ce, i64 1152921504606846975, i64 %i.cf ; 2 uses
  %i.ch = shl nuw nsw i64 %i.cg, 3
  %i.ci = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ch) #26 ; 5 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.cb
  %.sroa.5.0.insert.ext11.i = zext nneg i8 %i.b to i64
  %.sroa.5.0.insert.shift12.i = shl nuw nsw i64 %.sroa.5.0.insert.ext11.i, 32
  store i64 %.sroa.5.0.insert.shift12.i, ptr %i.cj, align 4
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.by, %i.bt
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_ZNKSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.cm, %.lr.ph.i.i.i.i.i.i.i ], [ %i.ci, %_ZNKSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.cl, %.lr.ph.i.i.i.i.i.i.i ], [ %i.by, %_ZNKSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i.i ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !188)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !189)
  %i.ck = load i64, ptr %.0911.i.i.i.i.i.i.i, align 4, !alias.scope !189, !noalias !188
  store i64 %i.ck, ptr %.012.i.i.i.i.i.i.i, align 4, !alias.scope !188, !noalias !189
  %i.cl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.cl, %i.bt
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !3

_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %_ZNKSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.ci, %_ZNKSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i.i ], [ %i.cm, %.lr.ph.i.i.i.i.i.i.i ]
  %i.cn = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i.i = icmp eq ptr %i.by, null
  br i1 %.not.i23.i.i.i.i, label %_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE17_M_realloc_insertIJS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i.i.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.by, i64 noundef %i.cb) #22
  br label %_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE17_M_realloc_insertIJS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i.i.i

_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE17_M_realloc_insertIJS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i.i.i: ; preds = %bb.q, %_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i.i.i
  store ptr %i.ci, ptr %i.br, align 8, !tbaa !75
  store ptr %i.cn, ptr %i.bs, align 8, !tbaa !76
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %i.cg
  store ptr %i.co, ptr %i.bu, align 8, !tbaa !77
  br label %.critedge

.critedge:                                        ; preds = %bb.f, %bb.i, %bb.g, %_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE17_M_realloc_insertIJS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i.i.i, %bb.n
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.cp, align 8, !tbaa !74
  br label %bb.r

bb.r:                                             ; preds = %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE12unpack_stack7consumeERS5_.exit, %.critedge, %bb.l, %bb.c
  %.2 = phi i32 [ 0, %.critedge ], [ 2, %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE12unpack_stack7consumeERS5_.exit ], [ -2, %bb.l ], [ -2, %bb.c ]
  ret i32 %.2
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE15start_aggregateINS_2v16detail7fix_tagENS6_6map_svENS6_6map_evEEENS0_12parse_returnERKT0_RKT1_PKcRm(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %3, align 1, !tbaa !13
  %i.b = and i8 %i.a, 15                          ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !80
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  store ptr %i.e, ptr %i.c, align 8, !tbaa !80
  %i.f = icmp eq i8 %i.b, 0
  br i1 %i.f, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %1, align 8, !tbaa !98, !nonnull !65, !align !83
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !82, !nonnull !65, !align !83
  %i.j = tail call noundef zeroext i1 @_ZN7msgpack2v26detail21create_object_visitor9start_mapEj(ptr noundef nonnull align 8 dereferenceable(121) %i.i, i32 noundef 0)
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !80
  %i.l = load ptr, ptr %0, align 8, !tbaa !79
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  store i64 %i.o, ptr %4, align 8, !tbaa !20
  br label %bb.r

bb.d:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %2, align 8, !tbaa !100, !nonnull !65, !align !83
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !82, !nonnull !65, !align !83
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 96 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !62
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 -8
  store ptr %i.u, ptr %i.s, align 8, !tbaa !62
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !85   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !85   ; 2 uses
  %i.z = icmp eq ptr %i.w, %i.y
  br i1 %i.z, label %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE12unpack_stack7consumeERS5_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ab = load ptr, ptr %i.aa, align 8, !nonnull !65, !align !83
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 96 ; 4 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.j, %.lr.ph.i
  %i.ad = phi ptr [ %i.y, %.lr.ph.i ], [ %i.ba, %bb.j ] ; 4 uses
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 -8 ; 5 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !88
  switch i32 %i.af, label %bb.j [
    i32 0, label %bb.f
    i32 1, label %bb.g
    i32 2, label %bb.h
  ]

bb.f:                                             ; preds = %bb.e
  %i.ag = load ptr, ptr %i.ac, align 8, !tbaa !84
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 -8 ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !61
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  store ptr %i.aj, ptr %i.ah, align 8, !tbaa !61
  %i.ak = getelementptr inbounds i8, ptr %i.ad, i64 -4 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !89
  %i.am = add i32 %i.al, -1                       ; 2 uses
  store i32 %i.am, ptr %i.ak, align 4, !tbaa !89
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %.sink.split.i, label %.critedge

bb.g:                                             ; preds = %bb.e
  %i.ao = load ptr, ptr %i.ac, align 8, !tbaa !84
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 -8 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !61
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  store ptr %i.ar, ptr %i.ap, align 8, !tbaa !61
  store i32 2, ptr %i.ae, align 4, !tbaa !88
  br label %.critedge

bb.h:                                             ; preds = %bb.e
  %i.as = load ptr, ptr %i.ac, align 8, !tbaa !84
  %i.at = getelementptr inbounds i8, ptr %i.as, i64 -8 ; 3 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !61
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  store ptr %i.av, ptr %i.at, align 8, !tbaa !61
  %i.aw = getelementptr inbounds i8, ptr %i.ad, i64 -4 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !89
  %i.ay = add i32 %i.ax, -1                       ; 2 uses
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !89
  %i.az = icmp eq i32 %i.ay, 0
  br i1 %i.az, label %.sink.split.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i32 1, ptr %i.ae, align 4, !tbaa !88
  br label %.critedge

.sink.split.i:                                    ; preds = %bb.h, %bb.f
  %.sink.i = phi ptr [ %i.ah, %bb.f ], [ %i.at, %bb.h ]
  store ptr %i.ae, ptr %i.x, align 8, !tbaa !76
  store ptr %.sink.i, ptr %i.ac, align 8, !tbaa !62
  br label %bb.j

bb.j:                                             ; preds = %.sink.split.i, %bb.e
  %i.ba = phi ptr [ %i.ad, %bb.e ], [ %i.ae, %.sink.split.i ] ; 2 uses
  %i.bb = icmp eq ptr %i.w, %i.ba
  br i1 %i.bb, label %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE12unpack_stack7consumeERS5_.exit, label %bb.e

_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE12unpack_stack7consumeERS5_.exit: ; preds = %bb.j, %bb.d
  %i.bc = load ptr, ptr %i.c, align 8, !tbaa !80
  %i.bd = load ptr, ptr %0, align 8, !tbaa !79
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = sub i64 %i.be, %i.bf
  store i64 %i.bg, ptr %4, align 8, !tbaa !20
  br label %bb.r

bb.k:                                             ; preds = %bb.a
  %i.bh = zext nneg i8 %i.b to i32
  %i.bi = load ptr, ptr %1, align 8, !tbaa !98, !nonnull !65, !align !83
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 56
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !82, !nonnull !65, !align !83
  %i.bl = tail call noundef zeroext i1 @_ZN7msgpack2v26detail21create_object_visitor9start_mapEj(ptr noundef nonnull align 8 dereferenceable(121) %i.bk, i32 noundef %i.bh)
  br i1 %i.bl, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bm = load ptr, ptr %i.c, align 8, !tbaa !80
  %i.bn = load ptr, ptr %0, align 8, !tbaa !79
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = sub i64 %i.bo, %i.bp
  store i64 %i.bq, ptr %4, align 8, !tbaa !20
  br label %bb.r

bb.m:                                             ; preds = %bb.k
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !76 ; 5 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !77
  %.not.i.i.i = icmp eq ptr %i.bt, %i.bv
  br i1 %.not.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.sroa.5.0.insert.ext.i = zext nneg i8 %i.b to i64
  %.sroa.5.0.insert.shift.i = shl nuw nsw i64 %.sroa.5.0.insert.ext.i, 32
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.5.0.insert.shift.i, 1
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.bt, align 4
  %i.bw = load ptr, ptr %i.bs, align 8, !tbaa !76
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  store ptr %i.bx, ptr %i.bs, align 8, !tbaa !76
  br label %.critedge

bb.o:                                             ; preds = %bb.m
  %i.by = load ptr, ptr %i.br, align 8, !tbaa !75 ; 5 uses
  %i.bz = ptrtoint ptr %i.bt to i64
  %i.ca = ptrtoint ptr %i.by to i64
  %i.cb = sub i64 %i.bz, %i.ca                    ; 5 uses
  %i.cc = icmp eq i64 %i.cb, 9223372036854775800
  br i1 %i.cc, label %bb.p, label %_ZNKSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.p:                                             ; preds = %bb.o
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #23
  unreachable

_ZNKSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.o
  %i.cd = ashr exact i64 %i.cb, 3
  %mul2.i.i.i.i = ashr exact i64 %i.cb, 2
  %5 = tail call i64 @llvm.umax.i64(i64 %mul2.i.i.i.i, i64 1) ; 2 uses
  %i.ce = icmp ult i64 %5, %i.cd
  %i.cf = tail call i64 @llvm.umin.i64(i64 %5, i64 1152921504606846975)
  %i.cg = select i1 %i.ce, i64 1152921504606846975, i64 %i.cf ; 2 uses
  %i.ch = shl nuw nsw i64 %i.cg, 3
  %i.ci = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ch) #26 ; 5 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.cb
  %.sroa.5.0.insert.ext11.i = zext nneg i8 %i.b to i64
  %.sroa.5.0.insert.shift12.i = shl nuw nsw i64 %.sroa.5.0.insert.ext11.i, 32
  %.sroa.0.0.insert.insert9.i = or disjoint i64 %.sroa.5.0.insert.shift12.i, 1
  store i64 %.sroa.0.0.insert.insert9.i, ptr %i.cj, align 4
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.by, %i.bt
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_ZNKSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.cm, %.lr.ph.i.i.i.i.i.i.i ], [ %i.ci, %_ZNKSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.cl, %.lr.ph.i.i.i.i.i.i.i ], [ %i.by, %_ZNKSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i.i ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !193)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !194)
  %i.ck = load i64, ptr %.0911.i.i.i.i.i.i.i, align 4, !alias.scope !194, !noalias !193
  store i64 %i.ck, ptr %.012.i.i.i.i.i.i.i, align 4, !alias.scope !193, !noalias !194
  %i.cl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.cl, %i.bt
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !3

_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %_ZNKSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.ci, %_ZNKSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i.i ], [ %i.cm, %.lr.ph.i.i.i.i.i.i.i ]
  %i.cn = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i.i = icmp eq ptr %i.by, null
  br i1 %.not.i23.i.i.i.i, label %_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE17_M_realloc_insertIJS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i.i.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.by, i64 noundef %i.cb) #22
  br label %_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE17_M_realloc_insertIJS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i.i.i

_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE17_M_realloc_insertIJS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i.i.i: ; preds = %bb.q, %_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i.i.i
  store ptr %i.ci, ptr %i.br, align 8, !tbaa !75
  store ptr %i.cn, ptr %i.bs, align 8, !tbaa !76
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %i.cg
  store ptr %i.co, ptr %i.bu, align 8, !tbaa !77
  br label %.critedge

.critedge:                                        ; preds = %bb.f, %bb.i, %bb.g, %_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE17_M_realloc_insertIJS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i.i.i, %bb.n
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.cp, align 8, !tbaa !74
  br label %bb.r

bb.r:                                             ; preds = %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE12unpack_stack7consumeERS5_.exit, %.critedge, %bb.l, %bb.c
  %.2 = phi i32 [ 0, %.critedge ], [ 2, %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE12unpack_stack7consumeERS5_.exit ], [ -2, %bb.l ], [ -2, %bb.c ]
  ret i32 %.2
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7msgpack2v26detail21create_object_visitor11parse_errorEmm(ptr noundef nonnull align 8 dereferenceable(121) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZN7msgpack2v111parse_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull @.str.8)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTIN7msgpack2v111parse_errorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.a) #21
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN7msgpack2v26detail21create_object_visitor9visit_extEPKcm(ptr noundef nonnull align 8 dereferenceable(121) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i64, ptr %i.a, align 8, !tbaa !195
  %i.c = icmp ugt i64 %2, %i.b
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZN7msgpack2v117ext_size_overflowC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull @.str.9)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTIN7msgpack2v117ext_size_overflowE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.d) #21
  resume { ptr, i32 } %i.e

bb.e:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !84
  %i.h = getelementptr inbounds i8, ptr %i.g, i64 -8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !61   ; 7 uses
  store i32 9, ptr %i.i, align 8, !tbaa !16
  %i.j = load ptr, ptr %0, align 8, !tbaa !56     ; 2 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !57
  %i.m = tail call noundef zeroext i1 %i.j(i32 noundef 9, i64 noundef %2, ptr noundef %i.l)
  br i1 %i.m, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %1, ptr %i.o, align 8, !tbaa !13
  %i.p = trunc i64 %2 to i32
  %i.q = add i32 %i.p, -1
  store i32 %i.q, ptr %i.n, align 8, !tbaa !13
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i8 1, ptr %i.r, align 8, !tbaa !64
  br label %bb.r

bb.h:                                             ; preds = %bb.f, %bb.e
  %.not23 = icmp eq ptr %1, null
  br i1 %.not23, label %bb.q, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !63   ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !91
  %i.x = load i64, ptr %i.u, align 8, !tbaa !92   ; 2 uses
  %i.y = icmp ult i64 %i.x, %2
  br i1 %i.y, label %bb.j, label %_ZN7msgpack2v14zone14allocate_alignEmm.exit

bb.j:                                             ; preds = %bb.i
  %i.z = load i64, ptr %i.t, align 8, !tbaa !44
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %bb.j
  %.022.i.i = phi i64 [ %i.z, %bb.j ], [ %i.ab, %bb.l ] ; 4 uses
  %i.aa = icmp ult i64 %.022.i.i, %2
  br i1 %i.aa, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %.not.i.i = icmp sgt i64 %.022.i.i, 0
  %i.ab = shl nuw i64 %.022.i.i, 1
  br i1 %.not.i.i, label %bb.k, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.2.i.i = phi i64 [ %2, %bb.l ], [ %.022.i.i, %bb.k ] ; 3 uses
  %i.ac = icmp ugt i64 %.2.i.i, -9
  br i1 %i.ac, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ad = tail call ptr @__cxa_allocate_exception(i64 8) #21 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ad, align 8, !tbaa !27
  tail call void @__cxa_throw(ptr nonnull %i.ad, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #23
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.ae = add nuw i64 %.2.i.i, 8
  %i.af = tail call noalias ptr @malloc(i64 noundef %i.ae) #25 ; 4 uses
  %.not27.i.i = icmp eq ptr %i.af, null
  br i1 %.not27.i.i, label %bb.p, label %_ZN7msgpack2v14zone15allocate_expandEm.exit.i

bb.p:                                             ; preds = %bb.o
  %i.ag = tail call ptr @__cxa_allocate_exception(i64 8) #21 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ag, align 8, !tbaa !27
  tail call void @__cxa_throw(ptr nonnull %i.ag, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #23
  unreachable

_ZN7msgpack2v14zone15allocate_expandEm.exit.i:    ; preds = %bb.o
  %i.ah = getelementptr i8, ptr %i.af, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.t, i64 24 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !40
  store ptr %i.aj, ptr %i.af, align 8, !tbaa !42
  store ptr %i.af, ptr %i.ai, align 8, !tbaa !40
  br label %_ZN7msgpack2v14zone14allocate_alignEmm.exit

_ZN7msgpack2v14zone14allocate_alignEmm.exit:      ; preds = %bb.i, %_ZN7msgpack2v14zone15allocate_expandEm.exit.i
  %i.ak = phi ptr [ %i.ah, %_ZN7msgpack2v14zone15allocate_expandEm.exit.i ], [ %i.w, %bb.i ] ; 3 uses
  %i.al = phi i64 [ %.2.i.i, %_ZN7msgpack2v14zone15allocate_expandEm.exit.i ], [ %i.x, %bb.i ]
  %i.am = sub i64 %i.al, %2
  store i64 %i.am, ptr %i.u, align 8, !tbaa !92
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 %2
  store ptr %i.an, ptr %i.v, align 8, !tbaa !91
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ak, ptr nonnull align 1 %1, i64 %2, i1 false)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.ak, ptr %i.ap, align 8, !tbaa !13
  %i.aq = trunc i64 %2 to i32
  %i.ar = add i32 %i.aq, -1
  store i32 %i.ar, ptr %i.ao, align 8, !tbaa !13
  br label %bb.r

bb.q:                                             ; preds = %bb.h
  %i.as = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr null, ptr %i.at, align 8, !tbaa !13
  store i32 0, ptr %i.as, align 8, !tbaa !13
  br label %bb.r

bb.r:                                             ; preds = %_ZN7msgpack2v14zone14allocate_alignEmm.exit, %bb.q, %bb.g
end_hunk_0
begin_hunk_1_@_ZN7msgpack2v26detail21create_object_visitor9visit_binEPKcj:bb.a
  %i.ae = tail call noalias ptr @malloc(i64 noundef %i.ad) #25 ; 4 uses
  %.not27.i.i = icmp eq ptr %i.ae, null
  br i1 %.not27.i.i, label %bb.o, label %_ZN7msgpack2v14zone15allocate_expandEm.exit.i

bb.o:                                             ; preds = %.thread
  %i.af = tail call ptr @__cxa_allocate_exception(i64 8) #21 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.af, align 8, !tbaa !27
  tail call void @__cxa_throw(ptr nonnull %i.af, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #23
  unreachable

_ZN7msgpack2v14zone15allocate_expandEm.exit.i:    ; preds = %.thread
  %i.ag = getelementptr i8, ptr %i.ae, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.s, i64 24 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !40
  store ptr %i.ai, ptr %i.ae, align 8, !tbaa !42
  store ptr %i.ae, ptr %i.ah, align 8, !tbaa !40
  br label %_ZN7msgpack2v14zone14allocate_alignEmm.exit

_ZN7msgpack2v14zone14allocate_alignEmm.exit:      ; preds = %bb.i, %_ZN7msgpack2v14zone15allocate_expandEm.exit.i
  %i.aj = phi ptr [ %i.ag, %_ZN7msgpack2v14zone15allocate_expandEm.exit.i ], [ %i.v, %bb.i ] ; 3 uses
  %i.ak = phi i64 [ %.2.i.i25, %_ZN7msgpack2v14zone15allocate_expandEm.exit.i ], [ %i.w, %bb.i ]
  %i.al = sub i64 %i.ak, %i.a
  store i64 %i.al, ptr %i.t, align 8, !tbaa !92
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.a
  store ptr %i.am, ptr %i.u, align 8, !tbaa !91
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aj, ptr nonnull align 1 %1, i64 %i.a, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr %i.aj, ptr %i.ao, align 8, !tbaa !13
  store i32 %2, ptr %i.an, align 8, !tbaa !13
  br label %bb.q

bb.p:                                             ; preds = %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr null, ptr %i.aq, align 8, !tbaa !13
  store i32 0, ptr %i.ap, align 8, !tbaa !13
  br label %bb.q

bb.q:                                             ; preds = %_ZN7msgpack2v14zone14allocate_alignEmm.exit, %bb.p, %bb.g
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE15start_aggregateItNS6_8array_svENS6_8array_evEEENS0_12parse_returnERKT0_RKT1_PKcRm(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i16, ptr %3, align 1                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !80
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store ptr %i.d, ptr %i.b, align 8, !tbaa !80
  %i.e = icmp eq i16 %i.a, 0
  br i1 %i.e, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %1, align 8, !tbaa !94, !nonnull !65, !align !83
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !82, !nonnull !65, !align !83
  %i.i = tail call noundef zeroext i1 @_ZN7msgpack2v26detail21create_object_visitor11start_arrayEj(ptr noundef nonnull align 8 dereferenceable(121) %i.h, i32 noundef 0)
  br i1 %i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !80
  %i.k = load ptr, ptr %0, align 8, !tbaa !79
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  store i64 %i.n, ptr %4, align 8, !tbaa !20
  br label %bb.r

bb.d:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %2, align 8, !tbaa !96, !nonnull !65, !align !83
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !82, !nonnull !65, !align !83
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 96 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !62
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -8
  store ptr %i.t, ptr %i.r, align 8, !tbaa !62
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !85   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !85   ; 2 uses
  %i.y = icmp eq ptr %i.v, %i.x
  br i1 %i.y, label %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE12unpack_stack7consumeERS5_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aa = load ptr, ptr %i.z, align 8, !nonnull !65, !align !83
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 96 ; 4 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.j, %.lr.ph.i
  %i.ac = phi ptr [ %i.x, %.lr.ph.i ], [ %i.az, %bb.j ] ; 4 uses
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 -8 ; 5 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !88
  switch i32 %i.ae, label %bb.j [
    i32 0, label %bb.f
    i32 1, label %bb.g
    i32 2, label %bb.h
  ]

bb.f:                                             ; preds = %bb.e
  %i.af = load ptr, ptr %i.ab, align 8, !tbaa !84
  %i.ag = getelementptr inbounds i8, ptr %i.af, i64 -8 ; 3 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !61
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  store ptr %i.ai, ptr %i.ag, align 8, !tbaa !61
  %i.aj = getelementptr inbounds i8, ptr %i.ac, i64 -4 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !89
  %i.al = add i32 %i.ak, -1                       ; 2 uses
  store i32 %i.al, ptr %i.aj, align 4, !tbaa !89
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %.sink.split.i, label %.critedge

bb.g:                                             ; preds = %bb.e
  %i.an = load ptr, ptr %i.ab, align 8, !tbaa !84
  %i.ao = getelementptr inbounds i8, ptr %i.an, i64 -8 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !61
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  store ptr %i.aq, ptr %i.ao, align 8, !tbaa !61
  store i32 2, ptr %i.ad, align 4, !tbaa !88
  br label %.critedge

bb.h:                                             ; preds = %bb.e
  %i.ar = load ptr, ptr %i.ab, align 8, !tbaa !84
  %i.as = getelementptr inbounds i8, ptr %i.ar, i64 -8 ; 3 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !61
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  store ptr %i.au, ptr %i.as, align 8, !tbaa !61
  %i.av = getelementptr inbounds i8, ptr %i.ac, i64 -4 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !89
  %i.ax = add i32 %i.aw, -1                       ; 2 uses
  store i32 %i.ax, ptr %i.av, align 4, !tbaa !89
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %.sink.split.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i32 1, ptr %i.ad, align 4, !tbaa !88
  br label %.critedge

.sink.split.i:                                    ; preds = %bb.h, %bb.f
  %.sink.i = phi ptr [ %i.ag, %bb.f ], [ %i.as, %bb.h ]
  store ptr %i.ad, ptr %i.w, align 8, !tbaa !76
  store ptr %.sink.i, ptr %i.ab, align 8, !tbaa !62
  br label %bb.j

bb.j:                                             ; preds = %.sink.split.i, %bb.e
  %i.az = phi ptr [ %i.ac, %bb.e ], [ %i.ad, %.sink.split.i ] ; 2 uses
  %i.ba = icmp eq ptr %i.v, %i.az
  br i1 %i.ba, label %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE12unpack_stack7consumeERS5_.exit, label %bb.e

_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE12unpack_stack7consumeERS5_.exit: ; preds = %bb.j, %bb.d
  %i.bb = load ptr, ptr %i.b, align 8, !tbaa !80
  %i.bc = load ptr, ptr %0, align 8, !tbaa !79
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = sub i64 %i.bd, %i.be
  store i64 %i.bf, ptr %4, align 8, !tbaa !20
  br label %bb.r

bb.k:                                             ; preds = %bb.a
  %rev.i.i = tail call noundef i16 @llvm.bswap.i16(i16 %i.a) ; 3 uses
  %i.bg = zext i16 %rev.i.i to i32
  %i.bh = load ptr, ptr %1, align 8, !tbaa !94, !nonnull !65, !align !83
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 56
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !82, !nonnull !65, !align !83
  %i.bk = tail call noundef zeroext i1 @_ZN7msgpack2v26detail21create_object_visitor11start_arrayEj(ptr noundef nonnull align 8 dereferenceable(121) %i.bj, i32 noundef %i.bg)
  br i1 %i.bk, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bl = load ptr, ptr %i.b, align 8, !tbaa !80
  %i.bm = load ptr, ptr %0, align 8, !tbaa !79
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = sub i64 %i.bn, %i.bo
  store i64 %i.bp, ptr %4, align 8, !tbaa !20
  br label %bb.r

bb.m:                                             ; preds = %bb.k
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !76 ; 5 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !77
  %.not.i.i.i = icmp eq ptr %i.bs, %i.bu
  br i1 %.not.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.sroa.5.0.insert.ext.i = zext i16 %rev.i.i to i64
  %.sroa.5.0.insert.shift.i = shl nuw nsw i64 %.sroa.5.0.insert.ext.i, 32
  store i64 %.sroa.5.0.insert.shift.i, ptr %i.bs, align 4
  %i.bv = load ptr, ptr %i.br, align 8, !tbaa !76
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store ptr %i.bw, ptr %i.br, align 8, !tbaa !76
  br label %.critedge

bb.o:                                             ; preds = %bb.m
  %i.bx = load ptr, ptr %i.bq, align 8, !tbaa !75 ; 5 uses
  %i.by = ptrtoint ptr %i.bs to i64
  %i.bz = ptrtoint ptr %i.bx to i64
  %i.ca = sub i64 %i.by, %i.bz                    ; 5 uses
  %i.cb = icmp eq i64 %i.ca, 9223372036854775800
  br i1 %i.cb, label %bb.p, label %_ZNKSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.p:                                             ; preds = %bb.o
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #23
  unreachable

_ZNKSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.o
  %i.cc = ashr exact i64 %i.ca, 3
  %mul2.i.i.i.i = ashr exact i64 %i.ca, 2
  %5 = tail call i64 @llvm.umax.i64(i64 %mul2.i.i.i.i, i64 1) ; 2 uses
  %i.cd = icmp ult i64 %5, %i.cc
  %i.ce = tail call i64 @llvm.umin.i64(i64 %5, i64 1152921504606846975)
  %i.cf = select i1 %i.cd, i64 1152921504606846975, i64 %i.ce ; 2 uses
  %i.cg = shl nuw nsw i64 %i.cf, 3
  %i.ch = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cg) #26 ; 5 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.ca
  %.sroa.5.0.insert.ext11.i = zext i16 %rev.i.i to i64
  %.sroa.5.0.insert.shift12.i = shl nuw nsw i64 %.sroa.5.0.insert.ext11.i, 32
  store i64 %.sroa.5.0.insert.shift12.i, ptr %i.ci, align 4
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.bx, %i.bs
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_ZNKSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.cl, %.lr.ph.i.i.i.i.i.i.i ], [ %i.ch, %_ZNKSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.ck, %.lr.ph.i.i.i.i.i.i.i ], [ %i.bx, %_ZNKSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i.i ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !200)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !201)
  %i.cj = load i64, ptr %.0911.i.i.i.i.i.i.i, align 4, !alias.scope !201, !noalias !200
  store i64 %i.cj, ptr %.012.i.i.i.i.i.i.i, align 4, !alias.scope !200, !noalias !201
  %i.ck = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ck, %i.bs
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !3

_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %_ZNKSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.ch, %_ZNKSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i.i ], [ %i.cl, %.lr.ph.i.i.i.i.i.i.i ]
  %i.cm = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i.i = icmp eq ptr %i.bx, null
  br i1 %.not.i23.i.i.i.i, label %_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE17_M_realloc_insertIJS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i.i.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bx, i64 noundef %i.ca) #22
  br label %_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE17_M_realloc_insertIJS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i.i.i

_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE17_M_realloc_insertIJS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i.i.i: ; preds = %bb.q, %_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i.i.i
  store ptr %i.ch, ptr %i.bq, align 8, !tbaa !75
  store ptr %i.cm, ptr %i.br, align 8, !tbaa !76
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %i.cf
  store ptr %i.cn, ptr %i.bt, align 8, !tbaa !77
  br label %.critedge

.critedge:                                        ; preds = %bb.f, %bb.i, %bb.g, %_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE17_M_realloc_insertIJS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i.i.i, %bb.n
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.co, align 8, !tbaa !74
  br label %bb.r

bb.r:                                             ; preds = %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE12unpack_stack7consumeERS5_.exit, %.critedge, %bb.l, %bb.c
  %.2 = phi i32 [ 0, %.critedge ], [ 2, %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE12unpack_stack7consumeERS5_.exit ], [ -2, %bb.l ], [ -2, %bb.c ]
  ret i32 %.2
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE15start_aggregateIjNS6_8array_svENS6_8array_evEEENS0_12parse_returnERKT0_RKT1_PKcRm(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %3, align 1                ; 2 uses
  %i.b = tail call noundef i32 @llvm.bswap.i32(i32 %i.a) ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !80
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  store ptr %i.e, ptr %i.c, align 8, !tbaa !80
  %i.f = icmp eq i32 %i.a, 0
  %i.g = load ptr, ptr %1, align 8, !tbaa !94, !nonnull !65, !align !83
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !82, !nonnull !65, !align !83 ; 2 uses
  br i1 %i.f, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.j = tail call noundef zeroext i1 @_ZN7msgpack2v26detail21create_object_visitor11start_arrayEj(ptr noundef nonnull align 8 dereferenceable(121) %i.i, i32 noundef 0)
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !80
  %i.l = load ptr, ptr %0, align 8, !tbaa !79
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  store i64 %i.o, ptr %4, align 8, !tbaa !20
  br label %bb.r

bb.d:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %2, align 8, !tbaa !96, !nonnull !65, !align !83
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !82, !nonnull !65, !align !83
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 96 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !62
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 -8
  store ptr %i.u, ptr %i.s, align 8, !tbaa !62
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !85   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !85   ; 2 uses
  %i.z = icmp eq ptr %i.w, %i.y
  br i1 %i.z, label %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE12unpack_stack7consumeERS5_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ab = load ptr, ptr %i.aa, align 8, !nonnull !65, !align !83
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 96 ; 4 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.j, %.lr.ph.i
  %i.ad = phi ptr [ %i.y, %.lr.ph.i ], [ %i.ba, %bb.j ] ; 4 uses
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 -8 ; 5 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !88
  switch i32 %i.af, label %bb.j [
    i32 0, label %bb.f
    i32 1, label %bb.g
    i32 2, label %bb.h
  ]

bb.f:                                             ; preds = %bb.e
  %i.ag = load ptr, ptr %i.ac, align 8, !tbaa !84
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 -8 ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !61
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  store ptr %i.aj, ptr %i.ah, align 8, !tbaa !61
  %i.ak = getelementptr inbounds i8, ptr %i.ad, i64 -4 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !89
  %i.am = add i32 %i.al, -1                       ; 2 uses
  store i32 %i.am, ptr %i.ak, align 4, !tbaa !89
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %.sink.split.i, label %.critedge

bb.g:                                             ; preds = %bb.e
  %i.ao = load ptr, ptr %i.ac, align 8, !tbaa !84
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 -8 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !61
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  store ptr %i.ar, ptr %i.ap, align 8, !tbaa !61
  store i32 2, ptr %i.ae, align 4, !tbaa !88
  br label %.critedge

bb.h:                                             ; preds = %bb.e
  %i.as = load ptr, ptr %i.ac, align 8, !tbaa !84
  %i.at = getelementptr inbounds i8, ptr %i.as, i64 -8 ; 3 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !61
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  store ptr %i.av, ptr %i.at, align 8, !tbaa !61
  %i.aw = getelementptr inbounds i8, ptr %i.ad, i64 -4 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !89
  %i.ay = add i32 %i.ax, -1                       ; 2 uses
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !89
  %i.az = icmp eq i32 %i.ay, 0
  br i1 %i.az, label %.sink.split.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i32 1, ptr %i.ae, align 4, !tbaa !88
  br label %.critedge

.sink.split.i:                                    ; preds = %bb.h, %bb.f
  %.sink.i = phi ptr [ %i.ah, %bb.f ], [ %i.at, %bb.h ]
  store ptr %i.ae, ptr %i.x, align 8, !tbaa !76
  store ptr %.sink.i, ptr %i.ac, align 8, !tbaa !62
  br label %bb.j

bb.j:                                             ; preds = %.sink.split.i, %bb.e
  %i.ba = phi ptr [ %i.ad, %bb.e ], [ %i.ae, %.sink.split.i ] ; 2 uses
  %i.bb = icmp eq ptr %i.w, %i.ba
  br i1 %i.bb, label %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE12unpack_stack7consumeERS5_.exit, label %bb.e

_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE12unpack_stack7consumeERS5_.exit: ; preds = %bb.j, %bb.d
  %i.bc = load ptr, ptr %i.c, align 8, !tbaa !80
  %i.bd = load ptr, ptr %0, align 8, !tbaa !79
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = sub i64 %i.be, %i.bf
  store i64 %i.bg, ptr %4, align 8, !tbaa !20
  br label %bb.r

bb.k:                                             ; preds = %bb.a
  %i.bh = tail call noundef zeroext i1 @_ZN7msgpack2v26detail21create_object_visitor11start_arrayEj(ptr noundef nonnull align 8 dereferenceable(121) %i.i, i32 noundef %i.b)
  br i1 %i.bh, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bi = load ptr, ptr %i.c, align 8, !tbaa !80
  %i.bj = load ptr, ptr %0, align 8, !tbaa !79
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = ptrtoint ptr %i.bj to i64
  %i.bm = sub i64 %i.bk, %i.bl
  store i64 %i.bm, ptr %4, align 8, !tbaa !20
  br label %bb.r

bb.m:                                             ; preds = %bb.k
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !76 ; 5 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !77
  %.not.i.i.i = icmp eq ptr %i.bp, %i.br
  br i1 %.not.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.sroa.5.0.insert.ext.i = zext i32 %i.b to i64
  %.sroa.5.0.insert.shift.i = shl nuw i64 %.sroa.5.0.insert.ext.i, 32
  store i64 %.sroa.5.0.insert.shift.i, ptr %i.bp, align 4
  %i.bs = load ptr, ptr %i.bo, align 8, !tbaa !76
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store ptr %i.bt, ptr %i.bo, align 8, !tbaa !76
  br label %.critedge

bb.o:                                             ; preds = %bb.m
  %i.bu = load ptr, ptr %i.bn, align 8, !tbaa !75 ; 5 uses
  %i.bv = ptrtoint ptr %i.bp to i64
  %i.bw = ptrtoint ptr %i.bu to i64
  %i.bx = sub i64 %i.bv, %i.bw                    ; 5 uses
  %i.by = icmp eq i64 %i.bx, 9223372036854775800
  br i1 %i.by, label %bb.p, label %_ZNKSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.p:                                             ; preds = %bb.o
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #23
  unreachable

_ZNKSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.o
  %i.bz = ashr exact i64 %i.bx, 3
  %mul2.i.i.i.i = ashr exact i64 %i.bx, 2
  %5 = tail call i64 @llvm.umax.i64(i64 %mul2.i.i.i.i, i64 1) ; 2 uses
  %i.ca = icmp ult i64 %5, %i.bz
  %i.cb = tail call i64 @llvm.umin.i64(i64 %5, i64 1152921504606846975)
  %i.cc = select i1 %i.ca, i64 1152921504606846975, i64 %i.cb ; 2 uses
  %i.cd = shl nuw nsw i64 %i.cc, 3
  %i.ce = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cd) #26 ; 5 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.bx
  %.sroa.5.0.insert.ext11.i = zext i32 %i.b to i64
  %.sroa.5.0.insert.shift12.i = shl nuw i64 %.sroa.5.0.insert.ext11.i, 32
  store i64 %.sroa.5.0.insert.shift12.i, ptr %i.cf, align 4
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.bu, %i.bp
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_ZNKSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.ci, %.lr.ph.i.i.i.i.i.i.i ], [ %i.ce, %_ZNKSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.ch, %.lr.ph.i.i.i.i.i.i.i ], [ %i.bu, %_ZNKSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i.i ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !205)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !206)
  %i.cg = load i64, ptr %.0911.i.i.i.i.i.i.i, align 4, !alias.scope !206, !noalias !205
  store i64 %i.cg, ptr %.012.i.i.i.i.i.i.i, align 4, !alias.scope !205, !noalias !206
  %i.ch = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ch, %i.bp
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !3

_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %_ZNKSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.ce, %_ZNKSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i.i ], [ %i.ci, %.lr.ph.i.i.i.i.i.i.i ]
  %i.cj = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i.i = icmp eq ptr %i.bu, null
  br i1 %.not.i23.i.i.i.i, label %_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE17_M_realloc_insertIJS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i.i.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bu, i64 noundef %i.bx) #22
  br label %_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE17_M_realloc_insertIJS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i.i.i

_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE17_M_realloc_insertIJS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i.i.i: ; preds = %bb.q, %_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i.i.i
  store ptr %i.ce, ptr %i.bn, align 8, !tbaa !75
  store ptr %i.cj, ptr %i.bo, align 8, !tbaa !76
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.cc
  store ptr %i.ck, ptr %i.bq, align 8, !tbaa !77
  br label %.critedge

.critedge:                                        ; preds = %bb.f, %bb.i, %bb.g, %_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE17_M_realloc_insertIJS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i.i.i, %bb.n
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.cl, align 8, !tbaa !74
  br label %bb.r

bb.r:                                             ; preds = %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE12unpack_stack7consumeERS5_.exit, %.critedge, %bb.l, %bb.c
  %.2 = phi i32 [ 0, %.critedge ], [ 2, %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE12unpack_stack7consumeERS5_.exit ], [ -2, %bb.l ], [ -2, %bb.c ]
  ret i32 %.2
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE15start_aggregateItNS6_6map_svENS6_6map_evEEENS0_12parse_returnERKT0_RKT1_PKcRm(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i16, ptr %3, align 1                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !80
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store ptr %i.d, ptr %i.b, align 8, !tbaa !80
  %i.e = icmp eq i16 %i.a, 0
  br i1 %i.e, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %1, align 8, !tbaa !98, !nonnull !65, !align !83
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !82, !nonnull !65, !align !83
  %i.i = tail call noundef zeroext i1 @_ZN7msgpack2v26detail21create_object_visitor9start_mapEj(ptr noundef nonnull align 8 dereferenceable(121) %i.h, i32 noundef 0)
  br i1 %i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !80
  %i.k = load ptr, ptr %0, align 8, !tbaa !79
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  store i64 %i.n, ptr %4, align 8, !tbaa !20
  br label %bb.r

bb.d:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %2, align 8, !tbaa !100, !nonnull !65, !align !83
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !82, !nonnull !65, !align !83
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 96 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !62
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -8
  store ptr %i.t, ptr %i.r, align 8, !tbaa !62
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !85   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !85   ; 2 uses
  %i.y = icmp eq ptr %i.v, %i.x
  br i1 %i.y, label %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE12unpack_stack7consumeERS5_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aa = load ptr, ptr %i.z, align 8, !nonnull !65, !align !83
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 96 ; 4 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.j, %.lr.ph.i
  %i.ac = phi ptr [ %i.x, %.lr.ph.i ], [ %i.az, %bb.j ] ; 4 uses
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 -8 ; 5 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !88
  switch i32 %i.ae, label %bb.j [
    i32 0, label %bb.f
    i32 1, label %bb.g
    i32 2, label %bb.h
  ]

bb.f:                                             ; preds = %bb.e
  %i.af = load ptr, ptr %i.ab, align 8, !tbaa !84
  %i.ag = getelementptr inbounds i8, ptr %i.af, i64 -8 ; 3 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !61
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  store ptr %i.ai, ptr %i.ag, align 8, !tbaa !61
  %i.aj = getelementptr inbounds i8, ptr %i.ac, i64 -4 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !89
  %i.al = add i32 %i.ak, -1                       ; 2 uses
  store i32 %i.al, ptr %i.aj, align 4, !tbaa !89
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %.sink.split.i, label %.critedge

bb.g:                                             ; preds = %bb.e
  %i.an = load ptr, ptr %i.ab, align 8, !tbaa !84
  %i.ao = getelementptr inbounds i8, ptr %i.an, i64 -8 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !61
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  store ptr %i.aq, ptr %i.ao, align 8, !tbaa !61
  store i32 2, ptr %i.ad, align 4, !tbaa !88
  br label %.critedge

bb.h:                                             ; preds = %bb.e
  %i.ar = load ptr, ptr %i.ab, align 8, !tbaa !84
  %i.as = getelementptr inbounds i8, ptr %i.ar, i64 -8 ; 3 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !61
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  store ptr %i.au, ptr %i.as, align 8, !tbaa !61
  %i.av = getelementptr inbounds i8, ptr %i.ac, i64 -4 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !89
  %i.ax = add i32 %i.aw, -1                       ; 2 uses
  store i32 %i.ax, ptr %i.av, align 4, !tbaa !89
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %.sink.split.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i32 1, ptr %i.ad, align 4, !tbaa !88
  br label %.critedge

.sink.split.i:                                    ; preds = %bb.h, %bb.f
  %.sink.i = phi ptr [ %i.ag, %bb.f ], [ %i.as, %bb.h ]
  store ptr %i.ad, ptr %i.w, align 8, !tbaa !76
  store ptr %.sink.i, ptr %i.ab, align 8, !tbaa !62
  br label %bb.j

bb.j:                                             ; preds = %.sink.split.i, %bb.e
  %i.az = phi ptr [ %i.ac, %bb.e ], [ %i.ad, %.sink.split.i ] ; 2 uses
  %i.ba = icmp eq ptr %i.v, %i.az
  br i1 %i.ba, label %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE12unpack_stack7consumeERS5_.exit, label %bb.e

_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE12unpack_stack7consumeERS5_.exit: ; preds = %bb.j, %bb.d
  %i.bb = load ptr, ptr %i.b, align 8, !tbaa !80
  %i.bc = load ptr, ptr %0, align 8, !tbaa !79
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = sub i64 %i.bd, %i.be
  store i64 %i.bf, ptr %4, align 8, !tbaa !20
  br label %bb.r

bb.k:                                             ; preds = %bb.a
  %rev.i.i = tail call noundef i16 @llvm.bswap.i16(i16 %i.a) ; 3 uses
  %i.bg = zext i16 %rev.i.i to i32
  %i.bh = load ptr, ptr %1, align 8, !tbaa !98, !nonnull !65, !align !83
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 56
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !82, !nonnull !65, !align !83
  %i.bk = tail call noundef zeroext i1 @_ZN7msgpack2v26detail21create_object_visitor9start_mapEj(ptr noundef nonnull align 8 dereferenceable(121) %i.bj, i32 noundef %i.bg)
  br i1 %i.bk, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bl = load ptr, ptr %i.b, align 8, !tbaa !80
  %i.bm = load ptr, ptr %0, align 8, !tbaa !79
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = sub i64 %i.bn, %i.bo
  store i64 %i.bp, ptr %4, align 8, !tbaa !20
  br label %bb.r

bb.m:                                             ; preds = %bb.k
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !76 ; 5 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !77
  %.not.i.i.i = icmp eq ptr %i.bs, %i.bu
  br i1 %.not.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.sroa.5.0.insert.ext.i = zext i16 %rev.i.i to i64
  %.sroa.5.0.insert.shift.i = shl nuw nsw i64 %.sroa.5.0.insert.ext.i, 32
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.5.0.insert.shift.i, 1
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.bs, align 4
  %i.bv = load ptr, ptr %i.br, align 8, !tbaa !76
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store ptr %i.bw, ptr %i.br, align 8, !tbaa !76
  br label %.critedge

bb.o:                                             ; preds = %bb.m
  %i.bx = load ptr, ptr %i.bq, align 8, !tbaa !75 ; 5 uses
  %i.by = ptrtoint ptr %i.bs to i64
  %i.bz = ptrtoint ptr %i.bx to i64
  %i.ca = sub i64 %i.by, %i.bz                    ; 5 uses
  %i.cb = icmp eq i64 %i.ca, 9223372036854775800
  br i1 %i.cb, label %bb.p, label %_ZNKSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.p:                                             ; preds = %bb.o
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #23
  unreachable

_ZNKSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.o
  %i.cc = ashr exact i64 %i.ca, 3
  %mul2.i.i.i.i = ashr exact i64 %i.ca, 2
  %5 = tail call i64 @llvm.umax.i64(i64 %mul2.i.i.i.i, i64 1) ; 2 uses
  %i.cd = icmp ult i64 %5, %i.cc
  %i.ce = tail call i64 @llvm.umin.i64(i64 %5, i64 1152921504606846975)
  %i.cf = select i1 %i.cd, i64 1152921504606846975, i64 %i.ce ; 2 uses
  %i.cg = shl nuw nsw i64 %i.cf, 3
  %i.ch = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cg) #26 ; 5 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.ca
  %.sroa.5.0.insert.ext11.i = zext i16 %rev.i.i to i64
  %.sroa.5.0.insert.shift12.i = shl nuw nsw i64 %.sroa.5.0.insert.ext11.i, 32
  %.sroa.0.0.insert.insert9.i = or disjoint i64 %.sroa.5.0.insert.shift12.i, 1
  store i64 %.sroa.0.0.insert.insert9.i, ptr %i.ci, align 4
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.bx, %i.bs
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_ZNKSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.cl, %.lr.ph.i.i.i.i.i.i.i ], [ %i.ch, %_ZNKSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.ck, %.lr.ph.i.i.i.i.i.i.i ], [ %i.bx, %_ZNKSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i.i ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !210)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !211)
  %i.cj = load i64, ptr %.0911.i.i.i.i.i.i.i, align 4, !alias.scope !211, !noalias !210
  store i64 %i.cj, ptr %.012.i.i.i.i.i.i.i, align 4, !alias.scope !210, !noalias !211
  %i.ck = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ck, %i.bs
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !3

_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %_ZNKSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.ch, %_ZNKSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i.i ], [ %i.cl, %.lr.ph.i.i.i.i.i.i.i ]
  %i.cm = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i.i = icmp eq ptr %i.bx, null
  br i1 %.not.i23.i.i.i.i, label %_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE17_M_realloc_insertIJS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i.i.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bx, i64 noundef %i.ca) #22
  br label %_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE17_M_realloc_insertIJS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i.i.i

_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE17_M_realloc_insertIJS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i.i.i: ; preds = %bb.q, %_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i.i.i
  store ptr %i.ch, ptr %i.bq, align 8, !tbaa !75
  store ptr %i.cm, ptr %i.br, align 8, !tbaa !76
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %i.cf
  store ptr %i.cn, ptr %i.bt, align 8, !tbaa !77
  br label %.critedge

.critedge:                                        ; preds = %bb.f, %bb.i, %bb.g, %_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE17_M_realloc_insertIJS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i.i.i, %bb.n
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.co, align 8, !tbaa !74
  br label %bb.r

bb.r:                                             ; preds = %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE12unpack_stack7consumeERS5_.exit, %.critedge, %bb.l, %bb.c
  %.2 = phi i32 [ 0, %.critedge ], [ 2, %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE12unpack_stack7consumeERS5_.exit ], [ -2, %bb.l ], [ -2, %bb.c ]
  ret i32 %.2
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE15start_aggregateIjNS6_6map_svENS6_6map_evEEENS0_12parse_returnERKT0_RKT1_PKcRm(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %3, align 1                ; 2 uses
  %i.b = tail call noundef i32 @llvm.bswap.i32(i32 %i.a) ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !80
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  store ptr %i.e, ptr %i.c, align 8, !tbaa !80
  %i.f = icmp eq i32 %i.a, 0
  %i.g = load ptr, ptr %1, align 8, !tbaa !98, !nonnull !65, !align !83
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !82, !nonnull !65, !align !83 ; 2 uses
  br i1 %i.f, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.j = tail call noundef zeroext i1 @_ZN7msgpack2v26detail21create_object_visitor9start_mapEj(ptr noundef nonnull align 8 dereferenceable(121) %i.i, i32 noundef 0)
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !80
  %i.l = load ptr, ptr %0, align 8, !tbaa !79
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  store i64 %i.o, ptr %4, align 8, !tbaa !20
  br label %bb.r

bb.d:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %2, align 8, !tbaa !100, !nonnull !65, !align !83
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !82, !nonnull !65, !align !83
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 96 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !62
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 -8
  store ptr %i.u, ptr %i.s, align 8, !tbaa !62
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !85   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !85   ; 2 uses
  %i.z = icmp eq ptr %i.w, %i.y
  br i1 %i.z, label %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE12unpack_stack7consumeERS5_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ab = load ptr, ptr %i.aa, align 8, !nonnull !65, !align !83
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 96 ; 4 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.j, %.lr.ph.i
  %i.ad = phi ptr [ %i.y, %.lr.ph.i ], [ %i.ba, %bb.j ] ; 4 uses
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 -8 ; 5 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !88
  switch i32 %i.af, label %bb.j [
    i32 0, label %bb.f
    i32 1, label %bb.g
    i32 2, label %bb.h
  ]

bb.f:                                             ; preds = %bb.e
  %i.ag = load ptr, ptr %i.ac, align 8, !tbaa !84
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 -8 ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !61
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  store ptr %i.aj, ptr %i.ah, align 8, !tbaa !61
  %i.ak = getelementptr inbounds i8, ptr %i.ad, i64 -4 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !89
  %i.am = add i32 %i.al, -1                       ; 2 uses
  store i32 %i.am, ptr %i.ak, align 4, !tbaa !89
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %.sink.split.i, label %.critedge

bb.g:                                             ; preds = %bb.e
  %i.ao = load ptr, ptr %i.ac, align 8, !tbaa !84
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 -8 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !61
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  store ptr %i.ar, ptr %i.ap, align 8, !tbaa !61
  store i32 2, ptr %i.ae, align 4, !tbaa !88
  br label %.critedge

bb.h:                                             ; preds = %bb.e
  %i.as = load ptr, ptr %i.ac, align 8, !tbaa !84
  %i.at = getelementptr inbounds i8, ptr %i.as, i64 -8 ; 3 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !61
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  store ptr %i.av, ptr %i.at, align 8, !tbaa !61
  %i.aw = getelementptr inbounds i8, ptr %i.ad, i64 -4 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !89
  %i.ay = add i32 %i.ax, -1                       ; 2 uses
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !89
  %i.az = icmp eq i32 %i.ay, 0
  br i1 %i.az, label %.sink.split.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i32 1, ptr %i.ae, align 4, !tbaa !88
  br label %.critedge

.sink.split.i:                                    ; preds = %bb.h, %bb.f
  %.sink.i = phi ptr [ %i.ah, %bb.f ], [ %i.at, %bb.h ]
  store ptr %i.ae, ptr %i.x, align 8, !tbaa !76
  store ptr %.sink.i, ptr %i.ac, align 8, !tbaa !62
  br label %bb.j

bb.j:                                             ; preds = %.sink.split.i, %bb.e
  %i.ba = phi ptr [ %i.ad, %bb.e ], [ %i.ae, %.sink.split.i ] ; 2 uses
  %i.bb = icmp eq ptr %i.w, %i.ba
  br i1 %i.bb, label %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE12unpack_stack7consumeERS5_.exit, label %bb.e

_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE12unpack_stack7consumeERS5_.exit: ; preds = %bb.j, %bb.d
  %i.bc = load ptr, ptr %i.c, align 8, !tbaa !80
  %i.bd = load ptr, ptr %0, align 8, !tbaa !79
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = sub i64 %i.be, %i.bf
  store i64 %i.bg, ptr %4, align 8, !tbaa !20
  br label %bb.r

bb.k:                                             ; preds = %bb.a
  %i.bh = tail call noundef zeroext i1 @_ZN7msgpack2v26detail21create_object_visitor9start_mapEj(ptr noundef nonnull align 8 dereferenceable(121) %i.i, i32 noundef %i.b)
  br i1 %i.bh, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bi = load ptr, ptr %i.c, align 8, !tbaa !80
  %i.bj = load ptr, ptr %0, align 8, !tbaa !79
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = ptrtoint ptr %i.bj to i64
  %i.bm = sub i64 %i.bk, %i.bl
  store i64 %i.bm, ptr %4, align 8, !tbaa !20
  br label %bb.r

bb.m:                                             ; preds = %bb.k
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !76 ; 5 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !77
  %.not.i.i.i = icmp eq ptr %i.bp, %i.br
  br i1 %.not.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.sroa.5.0.insert.ext.i = zext i32 %i.b to i64
  %.sroa.5.0.insert.shift.i = shl nuw i64 %.sroa.5.0.insert.ext.i, 32
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.5.0.insert.shift.i, 1
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.bp, align 4
  %i.bs = load ptr, ptr %i.bo, align 8, !tbaa !76
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store ptr %i.bt, ptr %i.bo, align 8, !tbaa !76
  br label %.critedge

bb.o:                                             ; preds = %bb.m
  %i.bu = load ptr, ptr %i.bn, align 8, !tbaa !75 ; 5 uses
  %i.bv = ptrtoint ptr %i.bp to i64
  %i.bw = ptrtoint ptr %i.bu to i64
  %i.bx = sub i64 %i.bv, %i.bw                    ; 5 uses
  %i.by = icmp eq i64 %i.bx, 9223372036854775800
  br i1 %i.by, label %bb.p, label %_ZNKSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.p:                                             ; preds = %bb.o
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #23
  unreachable

_ZNKSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.o
  %i.bz = ashr exact i64 %i.bx, 3
  %mul2.i.i.i.i = ashr exact i64 %i.bx, 2
  %5 = tail call i64 @llvm.umax.i64(i64 %mul2.i.i.i.i, i64 1) ; 2 uses
  %i.ca = icmp ult i64 %5, %i.bz
  %i.cb = tail call i64 @llvm.umin.i64(i64 %5, i64 1152921504606846975)
  %i.cc = select i1 %i.ca, i64 1152921504606846975, i64 %i.cb ; 2 uses
  %i.cd = shl nuw nsw i64 %i.cc, 3
  %i.ce = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cd) #26 ; 5 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.bx
  %.sroa.5.0.insert.ext11.i = zext i32 %i.b to i64
  %.sroa.5.0.insert.shift12.i = shl nuw i64 %.sroa.5.0.insert.ext11.i, 32
  %.sroa.0.0.insert.insert9.i = or disjoint i64 %.sroa.5.0.insert.shift12.i, 1
  store i64 %.sroa.0.0.insert.insert9.i, ptr %i.cf, align 4
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.bu, %i.bp
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_ZNKSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.ci, %.lr.ph.i.i.i.i.i.i.i ], [ %i.ce, %_ZNKSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.ch, %.lr.ph.i.i.i.i.i.i.i ], [ %i.bu, %_ZNKSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i.i ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !215)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !216)
  %i.cg = load i64, ptr %.0911.i.i.i.i.i.i.i, align 4, !alias.scope !216, !noalias !215
  store i64 %i.cg, ptr %.012.i.i.i.i.i.i.i, align 4, !alias.scope !215, !noalias !216
  %i.ch = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ch, %i.bp
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !3

_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %_ZNKSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.ce, %_ZNKSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i.i ], [ %i.ci, %.lr.ph.i.i.i.i.i.i.i ]
  %i.cj = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i.i = icmp eq ptr %i.bu, null
  br i1 %.not.i23.i.i.i.i, label %_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE17_M_realloc_insertIJS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i.i.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bu, i64 noundef %i.bx) #22
  br label %_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE17_M_realloc_insertIJS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i.i.i

_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE17_M_realloc_insertIJS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i.i.i: ; preds = %bb.q, %_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i.i.i
  store ptr %i.ce, ptr %i.bn, align 8, !tbaa !75
  store ptr %i.cj, ptr %i.bo, align 8, !tbaa !76
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.cc
  store ptr %i.ck, ptr %i.bq, align 8, !tbaa !77
  br label %.critedge

.critedge:                                        ; preds = %bb.f, %bb.i, %bb.g, %_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE17_M_realloc_insertIJS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i.i.i, %bb.n
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.cl, align 8, !tbaa !74
  br label %bb.r

bb.r:                                             ; preds = %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE12unpack_stack7consumeERS5_.exit, %.critedge, %bb.l, %bb.c
  %.2 = phi i32 [ 0, %.critedge ], [ 2, %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE12unpack_stack7consumeERS5_.exit ], [ -2, %bb.l ], [ -2, %bb.c ]
  ret i32 %.2
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7msgpack2v117str_size_overflowC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZNSt13runtime_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7msgpack2v117str_size_overflowE, i64 16), ptr %0, align 8, !tbaa !27
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7msgpack2v117str_size_overflowD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #21
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #22
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN7msgpack2v26detail21create_object_visitor11start_arrayEj(ptr noundef nonnull align 8 dereferenceable(121) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = zext i32 %1 to i64                       ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !217
  %i.d = icmp ult i64 %i.c, %i.a
  br i1 %i.d, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZN7msgpack2v119array_size_overflowC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull @.str.5)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTIN7msgpack2v119array_size_overflowE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.e:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !62   ; 2 uses
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !58
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = ashr exact i64 %i.m, 3
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.p = load i64, ptr %i.o, align 8, !tbaa !101
  %i.q = icmp ugt i64 %i.n, %i.p
  br i1 %i.q, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.r = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZN7msgpack2v119depth_size_overflowC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef nonnull @.str.6)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @__cxa_throw(ptr nonnull %i.r, ptr nonnull @_ZTIN7msgpack2v119depth_size_overflowE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.i:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds i8, ptr %i.i, i64 -8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !61   ; 3 uses
  store i32 7, ptr %i.u, align 8, !tbaa !16
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i32 %1, ptr %i.v, align 8, !tbaa !13
  %i.w = icmp eq i32 %1, 0
  br i1 %i.w, label %bb.r, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = mul nuw nsw i64 %i.a, 24                 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !63   ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !91 ; 3 uses
  %i.ad = getelementptr i8, ptr %i.ac, i64 7
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = and i64 %i.ae, -8                       ; 2 uses
  %i.ag = ptrtoint ptr %i.ac to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = add i64 %i.ah, %i.x                     ; 2 uses
  %i.aj = load i64, ptr %i.aa, align 8, !tbaa !92 ; 2 uses
  %i.ak = icmp ult i64 %i.aj, %i.ai
  br i1 %i.ak, label %bb.k, label %_ZN7msgpack2v14zone14allocate_alignEmm.exit

bb.k:                                             ; preds = %bb.j
  %i.al = or disjoint i64 %i.x, 7                 ; 2 uses
  %i.am = load i64, ptr %i.z, align 8, !tbaa !44
  br label %bb.l

bb.l:                                             ; preds = %bb.m, %bb.k
  %.022.i.i = phi i64 [ %i.am, %bb.k ], [ %i.ao, %bb.m ] ; 4 uses
  %i.an = icmp ult i64 %.022.i.i, %i.al
  br i1 %i.an, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %.not.i.i = icmp sgt i64 %.022.i.i, 0
  %i.ao = shl nuw nsw i64 %.022.i.i, 1
  br i1 %.not.i.i, label %bb.l, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.2.i.i = phi i64 [ %i.al, %bb.m ], [ %.022.i.i, %bb.l ] ; 3 uses
  %i.ap = icmp ugt i64 %.2.i.i, -9
  br i1 %i.ap, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.aq = tail call ptr @__cxa_allocate_exception(i64 8) #21 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.aq, align 8, !tbaa !27
  tail call void @__cxa_throw(ptr nonnull %i.aq, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #23
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.ar = add nuw i64 %.2.i.i, 8
  %i.as = tail call noalias ptr @malloc(i64 noundef %i.ar) #25 ; 5 uses
  %.not27.i.i = icmp eq ptr %i.as, null
  br i1 %.not27.i.i, label %bb.q, label %_ZN7msgpack2v14zone15allocate_expandEm.exit.i

bb.q:                                             ; preds = %bb.p
  %i.at = tail call ptr @__cxa_allocate_exception(i64 8) #21 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.at, align 8, !tbaa !27
  tail call void @__cxa_throw(ptr nonnull %i.at, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #23
  unreachable

_ZN7msgpack2v14zone15allocate_expandEm.exit.i:    ; preds = %bb.p
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.z, i64 24 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !40
  store ptr %i.aw, ptr %i.as, align 8, !tbaa !42
  store ptr %i.as, ptr %i.av, align 8, !tbaa !40
  %i.ax = getelementptr i8, ptr %i.as, i64 15
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = and i64 %i.ay, -8                       ; 2 uses
  %i.ba = ptrtoint ptr %i.au to i64
  %i.bb = sub i64 %i.x, %i.ba
  %i.bc = add i64 %i.bb, %i.az
  br label %_ZN7msgpack2v14zone14allocate_alignEmm.exit

_ZN7msgpack2v14zone14allocate_alignEmm.exit:      ; preds = %bb.j, %_ZN7msgpack2v14zone15allocate_expandEm.exit.i
  %i.bd = phi ptr [ %i.au, %_ZN7msgpack2v14zone15allocate_expandEm.exit.i ], [ %i.ac, %bb.j ]
  %i.be = phi i64 [ %.2.i.i, %_ZN7msgpack2v14zone15allocate_expandEm.exit.i ], [ %i.aj, %bb.j ]
  %.014.i = phi i64 [ %i.bc, %_ZN7msgpack2v14zone15allocate_expandEm.exit.i ], [ %i.ai, %bb.j ] ; 2 uses
  %.0.in.i = phi i64 [ %i.az, %_ZN7msgpack2v14zone15allocate_expandEm.exit.i ], [ %i.af, %bb.j ]
  %.0.i = inttoptr i64 %.0.in.i to ptr
  %i.bf = sub i64 %i.be, %.014.i
  store i64 %i.bf, ptr %i.aa, align 8, !tbaa !92
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 %.014.i
  store ptr %i.bg, ptr %i.ab, align 8, !tbaa !91
  br label %bb.r

bb.r:                                             ; preds = %bb.i, %_ZN7msgpack2v14zone14allocate_alignEmm.exit
  %.0.i.sink = phi ptr [ %.0.i, %_ZN7msgpack2v14zone14allocate_alignEmm.exit ], [ null, %bb.i ] ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store ptr %.0.i.sink, ptr %i.bh, align 8, !tbaa !13
  %i.bi = load ptr, ptr %i.h, align 8, !tbaa !62  ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !59
  %.not.i = icmp eq ptr %i.bi, %i.bk
  br i1 %.not.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  store ptr %.0.i.sink, ptr %i.bi, align 8, !tbaa !61
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store ptr %i.bl, ptr %i.h, align 8, !tbaa !62
  br label %_ZNSt6vectorIPN7msgpack2v26objectESaIS3_EE9push_backERKS3_.exit

bb.t:                                             ; preds = %bb.r
  %i.bm = load ptr, ptr %i.g, align 8, !tbaa !58  ; 4 uses
  %i.bn = ptrtoint ptr %i.bi to i64
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = sub i64 %i.bn, %i.bo                    ; 7 uses
  %i.bq = icmp eq i64 %i.bp, 9223372036854775800
  br i1 %i.bq, label %bb.u, label %_ZNKSt6vectorIPN7msgpack2v26objectESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.u:                                             ; preds = %bb.t
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #23
  unreachable

_ZNKSt6vectorIPN7msgpack2v26objectESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.t
  %i.br = ashr exact i64 %i.bp, 3
  %mul2.i.i = ashr exact i64 %i.bp, 2
  %2 = tail call i64 @llvm.umax.i64(i64 %mul2.i.i, i64 1) ; 2 uses
  %i.bs = icmp ult i64 %2, %i.br
  %i.bt = tail call i64 @llvm.umin.i64(i64 %2, i64 1152921504606846975)
  %i.bu = select i1 %i.bs, i64 1152921504606846975, i64 %i.bt ; 2 uses
  %i.bv = shl nuw nsw i64 %i.bu, 3
  %i.bw = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bv) #26 ; 4 uses
  %i.bx = getelementptr inbounds i8, ptr %i.bw, i64 %i.bp ; 2 uses
  store ptr %.0.i.sink, ptr %i.bx, align 8, !tbaa !61
  %i.by = icmp sgt i64 %i.bp, 0
  br i1 %i.by, label %bb.v, label %_ZNSt6vectorIPN7msgpack2v26objectESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

bb.v:                                             ; preds = %_ZNKSt6vectorIPN7msgpack2v26objectESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bw, ptr align 8 %i.bm, i64 %i.bp, i1 false)
  br label %_ZNSt6vectorIPN7msgpack2v26objectESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

_ZNSt6vectorIPN7msgpack2v26objectESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i: ; preds = %bb.v, %_ZNKSt6vectorIPN7msgpack2v26objectESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %.not.i17.i.i = icmp eq ptr %i.bm, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPN7msgpack2v26objectESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.w

bb.w:                                             ; preds = %_ZNSt6vectorIPN7msgpack2v26objectESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bm, i64 noundef %i.bp) #22
  br label %_ZNSt6vectorIPN7msgpack2v26objectESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorIPN7msgpack2v26objectESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.w, %_ZNSt6vectorIPN7msgpack2v26objectESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  store ptr %i.bw, ptr %i.g, align 8, !tbaa !58
  store ptr %i.bz, ptr %i.h, align 8, !tbaa !62
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %i.bu
  store ptr %i.ca, ptr %i.bj, align 8, !tbaa !59
  br label %_ZNSt6vectorIPN7msgpack2v26objectESaIS3_EE9push_backERKS3_.exit

_ZNSt6vectorIPN7msgpack2v26objectESaIS3_EE9push_backERKS3_.exit: ; preds = %bb.s, %_ZNSt6vectorIPN7msgpack2v26objectESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i
  ret i1 true

bb.x:                                             ; preds = %bb.h, %bb.d
  %.sink = phi ptr [ %i.r, %bb.h ], [ %i.e, %bb.d ]
  %.pn = phi { ptr, i32 } [ %i.s, %bb.h ], [ %i.f, %bb.d ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #21
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7msgpack2v119array_size_overflowC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZNSt13runtime_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7msgpack2v119array_size_overflowE, i64 16), ptr %0, align 8, !tbaa !27
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7msgpack2v119depth_size_overflowC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZNSt13runtime_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7msgpack2v119depth_size_overflowE, i64 16), ptr %0, align 8, !tbaa !27
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7msgpack2v119array_size_overflowD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #21
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #22
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7msgpack2v119depth_size_overflowD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #21
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #22
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN7msgpack2v26detail21create_object_visitor9start_mapEj(ptr noundef nonnull align 8 dereferenceable(121) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = zext i32 %1 to i64                       ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i64, ptr %i.b, align 8, !tbaa !218
  %i.d = icmp ult i64 %i.c, %i.a
  br i1 %i.d, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZN7msgpack2v117map_size_overflowC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull @.str.7)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTIN7msgpack2v117map_size_overflowE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.e:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !62   ; 2 uses
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !58
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = ashr exact i64 %i.m, 3
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.p = load i64, ptr %i.o, align 8, !tbaa !101
  %i.q = icmp ugt i64 %i.n, %i.p
  br i1 %i.q, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.r = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZN7msgpack2v119depth_size_overflowC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef nonnull @.str.6)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @__cxa_throw(ptr nonnull %i.r, ptr nonnull @_ZTIN7msgpack2v119depth_size_overflowE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.i:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds i8, ptr %i.i, i64 -8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !61   ; 3 uses
  store i32 8, ptr %i.u, align 8, !tbaa !16
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i32 %1, ptr %i.v, align 8, !tbaa !13
  %i.w = icmp eq i32 %1, 0
  br i1 %i.w, label %bb.r, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = mul nuw nsw i64 %i.a, 48                 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !63   ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !91 ; 3 uses
  %i.ad = getelementptr i8, ptr %i.ac, i64 7
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = and i64 %i.ae, -8                       ; 2 uses
  %i.ag = ptrtoint ptr %i.ac to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = add i64 %i.ah, %i.x                     ; 2 uses
  %i.aj = load i64, ptr %i.aa, align 8, !tbaa !92 ; 2 uses
  %i.ak = icmp ult i64 %i.aj, %i.ai
  br i1 %i.ak, label %bb.k, label %_ZN7msgpack2v14zone14allocate_alignEmm.exit

bb.k:                                             ; preds = %bb.j
  %i.al = or disjoint i64 %i.x, 7                 ; 2 uses
  %i.am = load i64, ptr %i.z, align 8, !tbaa !44
  br label %bb.l

bb.l:                                             ; preds = %bb.m, %bb.k
  %.022.i.i = phi i64 [ %i.am, %bb.k ], [ %i.ao, %bb.m ] ; 4 uses
  %i.an = icmp ult i64 %.022.i.i, %i.al
  br i1 %i.an, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %.not.i.i = icmp sgt i64 %.022.i.i, 0
  %i.ao = shl nuw nsw i64 %.022.i.i, 1
  br i1 %.not.i.i, label %bb.l, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.2.i.i = phi i64 [ %i.al, %bb.m ], [ %.022.i.i, %bb.l ] ; 3 uses
  %i.ap = icmp ugt i64 %.2.i.i, -9
  br i1 %i.ap, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.aq = tail call ptr @__cxa_allocate_exception(i64 8) #21 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.aq, align 8, !tbaa !27
  tail call void @__cxa_throw(ptr nonnull %i.aq, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #23
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.ar = add nuw i64 %.2.i.i, 8
  %i.as = tail call noalias ptr @malloc(i64 noundef %i.ar) #25 ; 5 uses
  %.not27.i.i = icmp eq ptr %i.as, null
  br i1 %.not27.i.i, label %bb.q, label %_ZN7msgpack2v14zone15allocate_expandEm.exit.i

bb.q:                                             ; preds = %bb.p
  %i.at = tail call ptr @__cxa_allocate_exception(i64 8) #21 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.at, align 8, !tbaa !27
  tail call void @__cxa_throw(ptr nonnull %i.at, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #23
  unreachable

_ZN7msgpack2v14zone15allocate_expandEm.exit.i:    ; preds = %bb.p
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.z, i64 24 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !40
  store ptr %i.aw, ptr %i.as, align 8, !tbaa !42
  store ptr %i.as, ptr %i.av, align 8, !tbaa !40
  %i.ax = getelementptr i8, ptr %i.as, i64 15
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = and i64 %i.ay, -8                       ; 2 uses
  %i.ba = ptrtoint ptr %i.au to i64
  %i.bb = sub i64 %i.x, %i.ba
  %i.bc = add i64 %i.bb, %i.az
  br label %_ZN7msgpack2v14zone14allocate_alignEmm.exit

_ZN7msgpack2v14zone14allocate_alignEmm.exit:      ; preds = %bb.j, %_ZN7msgpack2v14zone15allocate_expandEm.exit.i
  %i.bd = phi ptr [ %i.au, %_ZN7msgpack2v14zone15allocate_expandEm.exit.i ], [ %i.ac, %bb.j ]
  %i.be = phi i64 [ %.2.i.i, %_ZN7msgpack2v14zone15allocate_expandEm.exit.i ], [ %i.aj, %bb.j ]
  %.014.i = phi i64 [ %i.bc, %_ZN7msgpack2v14zone15allocate_expandEm.exit.i ], [ %i.ai, %bb.j ] ; 2 uses
  %.0.in.i = phi i64 [ %i.az, %_ZN7msgpack2v14zone15allocate_expandEm.exit.i ], [ %i.af, %bb.j ]
  %.0.i = inttoptr i64 %.0.in.i to ptr
  %i.bf = sub i64 %i.be, %.014.i
  store i64 %i.bf, ptr %i.aa, align 8, !tbaa !92
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 %.014.i
  store ptr %i.bg, ptr %i.ab, align 8, !tbaa !91
  br label %bb.r

bb.r:                                             ; preds = %bb.i, %_ZN7msgpack2v14zone14allocate_alignEmm.exit
  %.0.i.sink = phi ptr [ %.0.i, %_ZN7msgpack2v14zone14allocate_alignEmm.exit ], [ null, %bb.i ] ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store ptr %.0.i.sink, ptr %i.bh, align 8, !tbaa !13
  %i.bi = load ptr, ptr %i.h, align 8, !tbaa !62  ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !59
  %.not.i.i15 = icmp eq ptr %i.bi, %i.bk
  br i1 %.not.i.i15, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  store ptr %.0.i.sink, ptr %i.bi, align 8, !tbaa !61
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store ptr %i.bl, ptr %i.h, align 8, !tbaa !62
  br label %_ZNSt6vectorIPN7msgpack2v26objectESaIS3_EE9push_backEOS3_.exit

bb.t:                                             ; preds = %bb.r
  %i.bm = load ptr, ptr %i.g, align 8, !tbaa !58  ; 4 uses
  %i.bn = ptrtoint ptr %i.bi to i64
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = sub i64 %i.bn, %i.bo                    ; 7 uses
  %i.bq = icmp eq i64 %i.bp, 9223372036854775800
  br i1 %i.bq, label %bb.u, label %_ZNKSt6vectorIPN7msgpack2v26objectESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.u:                                             ; preds = %bb.t
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #23
  unreachable

_ZNKSt6vectorIPN7msgpack2v26objectESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.t
  %i.br = ashr exact i64 %i.bp, 3
  %mul2.i.i.i = ashr exact i64 %i.bp, 2
  %2 = tail call i64 @llvm.umax.i64(i64 %mul2.i.i.i, i64 1) ; 2 uses
  %i.bs = icmp ult i64 %2, %i.br
  %i.bt = tail call i64 @llvm.umin.i64(i64 %2, i64 1152921504606846975)
  %i.bu = select i1 %i.bs, i64 1152921504606846975, i64 %i.bt ; 2 uses
  %i.bv = shl nuw nsw i64 %i.bu, 3
  %i.bw = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bv) #26 ; 4 uses
  %i.bx = getelementptr inbounds i8, ptr %i.bw, i64 %i.bp ; 2 uses
  store ptr %.0.i.sink, ptr %i.bx, align 8, !tbaa !61
  %i.by = icmp sgt i64 %i.bp, 0
  br i1 %i.by, label %bb.v, label %_ZNSt6vectorIPN7msgpack2v26objectESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

bb.v:                                             ; preds = %_ZNKSt6vectorIPN7msgpack2v26objectESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bw, ptr align 8 %i.bm, i64 %i.bp, i1 false)
  br label %_ZNSt6vectorIPN7msgpack2v26objectESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

_ZNSt6vectorIPN7msgpack2v26objectESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i: ; preds = %bb.v, %_ZNKSt6vectorIPN7msgpack2v26objectESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.bm, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPN7msgpack2v26objectESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.w

bb.w:                                             ; preds = %_ZNSt6vectorIPN7msgpack2v26objectESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bm, i64 noundef %i.bp) #22
  br label %_ZNSt6vectorIPN7msgpack2v26objectESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorIPN7msgpack2v26objectESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.w, %_ZNSt6vectorIPN7msgpack2v26objectESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  store ptr %i.bw, ptr %i.g, align 8, !tbaa !58
  store ptr %i.bz, ptr %i.h, align 8, !tbaa !62
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %i.bu
  store ptr %i.ca, ptr %i.bj, align 8, !tbaa !59
  br label %_ZNSt6vectorIPN7msgpack2v26objectESaIS3_EE9push_backEOS3_.exit

_ZNSt6vectorIPN7msgpack2v26objectESaIS3_EE9push_backEOS3_.exit: ; preds = %bb.s, %_ZNSt6vectorIPN7msgpack2v26objectESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i
  ret i1 true

bb.x:                                             ; preds = %bb.h, %bb.d
  %.sink = phi ptr [ %i.r, %bb.h ], [ %i.e, %bb.d ]
  %.pn = phi { ptr, i32 } [ %i.s, %bb.h ], [ %i.f, %bb.d ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #21
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7msgpack2v117map_size_overflowC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZNSt13runtime_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7msgpack2v117map_size_overflowE, i64 16), ptr %0, align 8, !tbaa !27
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7msgpack2v117map_size_overflowD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #21
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #22
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7msgpack2v111parse_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZNSt13runtime_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7msgpack2v111parse_errorE, i64 16), ptr %0, align 8, !tbaa !27
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7msgpack2v111parse_errorD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #21
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #22
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7msgpack2v117ext_size_overflowC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZNSt13runtime_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7msgpack2v117ext_size_overflowE, i64 16), ptr %0, align 8, !tbaa !27
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7msgpack2v117ext_size_overflowD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #21
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #22
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7msgpack2v117bin_size_overflowC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZNSt13runtime_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7msgpack2v117bin_size_overflowE, i64 16), ptr %0, align 8, !tbaa !27
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #11

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7msgpack2v117bin_size_overflowD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #21
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #22
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #11

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #11

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !24   ; 6 uses
  %.neg.i = add i64 %2, 9223372036854775807
  %i.c = sub i64 %.neg.i, %i.b
  %i.d = icmp ult i64 %i.c, %4
  br i1 %i.d, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #23
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit: ; preds = %bb.a
  %i.e = sub i64 %4, %2
  %i.f = add i64 %i.e, %i.b                       ; 3 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !25     ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit
  %i.j = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.j)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit
  %i.k = load i64, ptr %i.h, align 8, !tbaa !13
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.l = phi i64 [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i ]
  %.not = icmp ugt i64 %i.f, %i.l
  br i1 %.not, label %bb.k, label %bb.c

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 %1 ; 5 uses
  %i.n = add i64 %2, %1                           ; 2 uses
  %i.o = sub i64 %i.b, %i.n                       ; 3 uses
  %i.p = icmp ult ptr %3, %i.g
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.b
  %i.r = icmp ult ptr %i.q, %3
  %i.s = select i1 %i.p, i1 true, i1 %i.r
  br i1 %i.s, label %bb.d, label %bb.j, !prof !219

bb.d:                                             ; preds = %bb.c
  %.not35 = icmp eq i64 %i.b, %i.n
  %.not36 = icmp eq i64 %2, %4
  %or.cond = or i1 %.not36, %.not35
  br i1 %or.cond, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 %4 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 %2 ; 2 uses
  %cond38 = icmp eq i64 %i.o, 1
  br i1 %cond38, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = load i8, ptr %i.u, align 1, !tbaa !13
  store i8 %i.v, ptr %i.t, align 1, !tbaa !13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.t, ptr align 1 %i.u, i64 %i.o, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit: ; preds = %bb.g, %bb.f, %bb.d
  switch i64 %4, label %bb.i [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
    i64 1, label %bb.h
  ]

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit
  %i.w = load i8, ptr %3, align 1, !tbaa !13
  store i8 %i.w, ptr %i.m, align 1, !tbaa !13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %3, i64 %4, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.j:                                             ; preds = %bb.c
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_replace_coldEPcmPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.m, i64 noundef %2, ptr noundef %3, i64 noundef %4, i64 noundef %i.o) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4)
end_hunk_1
