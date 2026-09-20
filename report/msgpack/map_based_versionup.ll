Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/msgpack/original/map_based_versionup?download=true
inline.NumInlined: 1654
inline.NumDeleted: 826
begin_hunk_0_@_ZN7msgpack2v26detail21create_object_visitor9visit_strEPKcj:bb.a
  %i.ae = tail call noalias ptr @malloc(i64 noundef %i.ad) #27 ; 4 uses
  %.not27.i.i = icmp eq ptr %i.ae, null
  br i1 %.not27.i.i, label %bb.o, label %_ZN7msgpack2v14zone15allocate_expandEm.exit.i

bb.o:                                             ; preds = %.thread
  %i.af = tail call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.af, align 8, !tbaa !23
  tail call void @__cxa_throw(ptr nonnull %i.af, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #23
  unreachable

_ZN7msgpack2v14zone15allocate_expandEm.exit.i:    ; preds = %.thread
  %i.ag = getelementptr i8, ptr %i.ae, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.s, i64 24 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !87
  store ptr %i.ai, ptr %i.ae, align 8, !tbaa !89
  store ptr %i.ae, ptr %i.ah, align 8, !tbaa !87
  br label %_ZN7msgpack2v14zone14allocate_alignEmm.exit

_ZN7msgpack2v14zone14allocate_alignEmm.exit:      ; preds = %bb.i, %_ZN7msgpack2v14zone15allocate_expandEm.exit.i
  %i.aj = phi ptr [ %i.ag, %_ZN7msgpack2v14zone15allocate_expandEm.exit.i ], [ %i.v, %bb.i ] ; 3 uses
  %i.ak = phi i64 [ %.2.i.i25, %_ZN7msgpack2v14zone15allocate_expandEm.exit.i ], [ %i.w, %bb.i ]
  %i.al = sub i64 %i.ak, %i.a
  store i64 %i.al, ptr %i.t, align 8, !tbaa !145
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.a
  store ptr %i.am, ptr %i.u, align 8, !tbaa !144
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aj, ptr nonnull align 1 %1, i64 %i.a, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr %i.aj, ptr %i.ao, align 8, !tbaa !48
  store i32 %2, ptr %i.an, align 8, !tbaa !48
  br label %bb.q

bb.p:                                             ; preds = %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr null, ptr %i.aq, align 8, !tbaa !48
  store i32 0, ptr %i.ap, align 8, !tbaa !48
  br label %bb.q

bb.q:                                             ; preds = %_ZN7msgpack2v14zone14allocate_alignEmm.exit, %bb.p, %bb.g
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE15start_aggregateINS_2v16detail7fix_tagENS6_8array_svENS6_8array_evEEENS0_12parse_returnERKT0_RKT1_PKcRm(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %3, align 1, !tbaa !48
  %i.b = and i8 %i.a, 15                          ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !132
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  store ptr %i.e, ptr %i.c, align 8, !tbaa !132
  %i.f = icmp eq i8 %i.b, 0
  br i1 %i.f, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %1, align 8, !tbaa !147, !nonnull !52, !align !135
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !134, !nonnull !52, !align !135
  %i.j = tail call noundef zeroext i1 @_ZN7msgpack2v26detail21create_object_visitor11start_arrayEj(ptr noundef nonnull align 8 dereferenceable(121) %i.i, i32 noundef 0)
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !132
  %i.l = load ptr, ptr %0, align 8, !tbaa !131
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  store i64 %i.o, ptr %4, align 8, !tbaa !57
  br label %bb.r

bb.d:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %2, align 8, !tbaa !149, !nonnull !52, !align !135
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !134, !nonnull !52, !align !135
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 96 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !115
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 -8
  store ptr %i.u, ptr %i.s, align 8, !tbaa !115
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !137  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !137  ; 2 uses
  %i.z = icmp eq ptr %i.w, %i.y
  br i1 %i.z, label %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE12unpack_stack7consumeERS5_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ab = load ptr, ptr %i.aa, align 8, !nonnull !52, !align !135
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 96 ; 4 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.j, %.lr.ph.i
  %i.ad = phi ptr [ %i.y, %.lr.ph.i ], [ %i.ba, %bb.j ] ; 4 uses
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 -8 ; 5 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !140
  switch i32 %i.af, label %bb.j [
    i32 0, label %bb.f
    i32 1, label %bb.g
    i32 2, label %bb.h
  ]

bb.f:                                             ; preds = %bb.e
  %i.ag = load ptr, ptr %i.ac, align 8, !tbaa !136
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 -8 ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !114
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  store ptr %i.aj, ptr %i.ah, align 8, !tbaa !114
  %i.ak = getelementptr inbounds i8, ptr %i.ad, i64 -4 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !141
  %i.am = add i32 %i.al, -1                       ; 2 uses
  store i32 %i.am, ptr %i.ak, align 4, !tbaa !141
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %.sink.split.i, label %.critedge

bb.g:                                             ; preds = %bb.e
  %i.ao = load ptr, ptr %i.ac, align 8, !tbaa !136
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 -8 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !114
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  store ptr %i.ar, ptr %i.ap, align 8, !tbaa !114
  store i32 2, ptr %i.ae, align 4, !tbaa !140
  br label %.critedge

bb.h:                                             ; preds = %bb.e
  %i.as = load ptr, ptr %i.ac, align 8, !tbaa !136
  %i.at = getelementptr inbounds i8, ptr %i.as, i64 -8 ; 3 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !114
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  store ptr %i.av, ptr %i.at, align 8, !tbaa !114
  %i.aw = getelementptr inbounds i8, ptr %i.ad, i64 -4 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !141
  %i.ay = add i32 %i.ax, -1                       ; 2 uses
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !141
  %i.az = icmp eq i32 %i.ay, 0
  br i1 %i.az, label %.sink.split.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i32 1, ptr %i.ae, align 4, !tbaa !140
  br label %.critedge

.sink.split.i:                                    ; preds = %bb.h, %bb.f
  %.sink.i = phi ptr [ %i.ah, %bb.f ], [ %i.at, %bb.h ]
  store ptr %i.ae, ptr %i.x, align 8, !tbaa !128
  store ptr %.sink.i, ptr %i.ac, align 8, !tbaa !115
  br label %bb.j

bb.j:                                             ; preds = %.sink.split.i, %bb.e
  %i.ba = phi ptr [ %i.ad, %bb.e ], [ %i.ae, %.sink.split.i ] ; 2 uses
  %i.bb = icmp eq ptr %i.w, %i.ba
  br i1 %i.bb, label %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE12unpack_stack7consumeERS5_.exit, label %bb.e

_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE12unpack_stack7consumeERS5_.exit: ; preds = %bb.j, %bb.d
  %i.bc = load ptr, ptr %i.c, align 8, !tbaa !132
  %i.bd = load ptr, ptr %0, align 8, !tbaa !131
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = sub i64 %i.be, %i.bf
  store i64 %i.bg, ptr %4, align 8, !tbaa !57
  br label %bb.r

bb.k:                                             ; preds = %bb.a
  %i.bh = zext nneg i8 %i.b to i32
  %i.bi = load ptr, ptr %1, align 8, !tbaa !147, !nonnull !52, !align !135
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 56
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !134, !nonnull !52, !align !135
  %i.bl = tail call noundef zeroext i1 @_ZN7msgpack2v26detail21create_object_visitor11start_arrayEj(ptr noundef nonnull align 8 dereferenceable(121) %i.bk, i32 noundef %i.bh)
  br i1 %i.bl, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bm = load ptr, ptr %i.c, align 8, !tbaa !132
  %i.bn = load ptr, ptr %0, align 8, !tbaa !131
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = sub i64 %i.bo, %i.bp
  store i64 %i.bq, ptr %4, align 8, !tbaa !57
  br label %bb.r

bb.m:                                             ; preds = %bb.k
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !128 ; 5 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !129
  %.not.i.i.i = icmp eq ptr %i.bt, %i.bv
  br i1 %.not.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.sroa.5.0.insert.ext.i = zext nneg i8 %i.b to i64
  %.sroa.5.0.insert.shift.i = shl nuw nsw i64 %.sroa.5.0.insert.ext.i, 32
  store i64 %.sroa.5.0.insert.shift.i, ptr %i.bt, align 4
  %i.bw = load ptr, ptr %i.bs, align 8, !tbaa !128
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  store ptr %i.bx, ptr %i.bs, align 8, !tbaa !128
  br label %.critedge

bb.o:                                             ; preds = %bb.m
  %i.by = load ptr, ptr %i.br, align 8, !tbaa !127 ; 5 uses
  %i.bz = ptrtoint ptr %i.bt to i64
  %i.ca = ptrtoint ptr %i.by to i64
  %i.cb = sub i64 %i.bz, %i.ca                    ; 5 uses
  %i.cc = icmp eq i64 %i.cb, 9223372036854775800
  br i1 %i.cc, label %bb.p, label %_ZNKSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.p:                                             ; preds = %bb.o
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.16) #23
  unreachable

_ZNKSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.o
  %i.cd = ashr exact i64 %i.cb, 3
  %mul2.i.i.i.i = ashr exact i64 %i.cb, 2
  %5 = tail call i64 @llvm.umax.i64(i64 %mul2.i.i.i.i, i64 1) ; 2 uses
  %i.ce = icmp ult i64 %5, %i.cd
  %i.cf = tail call i64 @llvm.umin.i64(i64 %5, i64 1152921504606846975)
  %i.cg = select i1 %i.ce, i64 1152921504606846975, i64 %i.cf ; 2 uses
  %i.ch = shl nuw nsw i64 %i.cg, 3
  %i.ci = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ch) #29 ; 5 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.cb
  %.sroa.5.0.insert.ext11.i = zext nneg i8 %i.b to i64
  %.sroa.5.0.insert.shift12.i = shl nuw nsw i64 %.sroa.5.0.insert.ext11.i, 32
  store i64 %.sroa.5.0.insert.shift12.i, ptr %i.cj, align 4
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.by, %i.bt
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_ZNKSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.cm, %.lr.ph.i.i.i.i.i.i.i ], [ %i.ci, %_ZNKSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.cl, %.lr.ph.i.i.i.i.i.i.i ], [ %i.by, %_ZNKSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i.i ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !256)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !257)
  %i.ck = load i64, ptr %.0911.i.i.i.i.i.i.i, align 4, !alias.scope !257, !noalias !256
  store i64 %i.ck, ptr %.012.i.i.i.i.i.i.i, align 4, !alias.scope !256, !noalias !257
  %i.cl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.cl, %i.bt
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !4

_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %_ZNKSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.ci, %_ZNKSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i.i ], [ %i.cm, %.lr.ph.i.i.i.i.i.i.i ]
  %i.cn = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i.i = icmp eq ptr %i.by, null
  br i1 %.not.i23.i.i.i.i, label %_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE17_M_realloc_insertIJS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i.i.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.by, i64 noundef %i.cb) #25
  br label %_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE17_M_realloc_insertIJS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i.i.i

_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE17_M_realloc_insertIJS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i.i.i: ; preds = %bb.q, %_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i.i.i
  store ptr %i.ci, ptr %i.br, align 8, !tbaa !127
  store ptr %i.cn, ptr %i.bs, align 8, !tbaa !128
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %i.cg
  store ptr %i.co, ptr %i.bu, align 8, !tbaa !129
  br label %.critedge

.critedge:                                        ; preds = %bb.f, %bb.i, %bb.g, %_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE17_M_realloc_insertIJS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i.i.i, %bb.n
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.cp, align 8, !tbaa !126
  br label %bb.r

bb.r:                                             ; preds = %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE12unpack_stack7consumeERS5_.exit, %.critedge, %bb.l, %bb.c
  %.2 = phi i32 [ 0, %.critedge ], [ 2, %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE12unpack_stack7consumeERS5_.exit ], [ -2, %bb.l ], [ -2, %bb.c ]
  ret i32 %.2
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE15start_aggregateINS_2v16detail7fix_tagENS6_6map_svENS6_6map_evEEENS0_12parse_returnERKT0_RKT1_PKcRm(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %3, align 1, !tbaa !48
  %i.b = and i8 %i.a, 15                          ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !132
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  store ptr %i.e, ptr %i.c, align 8, !tbaa !132
  %i.f = icmp eq i8 %i.b, 0
  br i1 %i.f, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %1, align 8, !tbaa !151, !nonnull !52, !align !135
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !134, !nonnull !52, !align !135
  %i.j = tail call noundef zeroext i1 @_ZN7msgpack2v26detail21create_object_visitor9start_mapEj(ptr noundef nonnull align 8 dereferenceable(121) %i.i, i32 noundef 0)
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !132
  %i.l = load ptr, ptr %0, align 8, !tbaa !131
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  store i64 %i.o, ptr %4, align 8, !tbaa !57
  br label %bb.r

bb.d:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %2, align 8, !tbaa !153, !nonnull !52, !align !135
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !134, !nonnull !52, !align !135
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 96 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !115
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 -8
  store ptr %i.u, ptr %i.s, align 8, !tbaa !115
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !137  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !137  ; 2 uses
  %i.z = icmp eq ptr %i.w, %i.y
  br i1 %i.z, label %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE12unpack_stack7consumeERS5_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ab = load ptr, ptr %i.aa, align 8, !nonnull !52, !align !135
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 96 ; 4 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.j, %.lr.ph.i
  %i.ad = phi ptr [ %i.y, %.lr.ph.i ], [ %i.ba, %bb.j ] ; 4 uses
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 -8 ; 5 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !140
  switch i32 %i.af, label %bb.j [
    i32 0, label %bb.f
    i32 1, label %bb.g
    i32 2, label %bb.h
  ]

bb.f:                                             ; preds = %bb.e
  %i.ag = load ptr, ptr %i.ac, align 8, !tbaa !136
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 -8 ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !114
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  store ptr %i.aj, ptr %i.ah, align 8, !tbaa !114
  %i.ak = getelementptr inbounds i8, ptr %i.ad, i64 -4 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !141
  %i.am = add i32 %i.al, -1                       ; 2 uses
  store i32 %i.am, ptr %i.ak, align 4, !tbaa !141
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %.sink.split.i, label %.critedge

bb.g:                                             ; preds = %bb.e
  %i.ao = load ptr, ptr %i.ac, align 8, !tbaa !136
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 -8 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !114
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  store ptr %i.ar, ptr %i.ap, align 8, !tbaa !114
  store i32 2, ptr %i.ae, align 4, !tbaa !140
  br label %.critedge

bb.h:                                             ; preds = %bb.e
  %i.as = load ptr, ptr %i.ac, align 8, !tbaa !136
  %i.at = getelementptr inbounds i8, ptr %i.as, i64 -8 ; 3 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !114
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  store ptr %i.av, ptr %i.at, align 8, !tbaa !114
  %i.aw = getelementptr inbounds i8, ptr %i.ad, i64 -4 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !141
  %i.ay = add i32 %i.ax, -1                       ; 2 uses
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !141
  %i.az = icmp eq i32 %i.ay, 0
  br i1 %i.az, label %.sink.split.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i32 1, ptr %i.ae, align 4, !tbaa !140
  br label %.critedge

.sink.split.i:                                    ; preds = %bb.h, %bb.f
  %.sink.i = phi ptr [ %i.ah, %bb.f ], [ %i.at, %bb.h ]
  store ptr %i.ae, ptr %i.x, align 8, !tbaa !128
  store ptr %.sink.i, ptr %i.ac, align 8, !tbaa !115
  br label %bb.j

bb.j:                                             ; preds = %.sink.split.i, %bb.e
  %i.ba = phi ptr [ %i.ad, %bb.e ], [ %i.ae, %.sink.split.i ] ; 2 uses
  %i.bb = icmp eq ptr %i.w, %i.ba
  br i1 %i.bb, label %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE12unpack_stack7consumeERS5_.exit, label %bb.e

_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE12unpack_stack7consumeERS5_.exit: ; preds = %bb.j, %bb.d
  %i.bc = load ptr, ptr %i.c, align 8, !tbaa !132
  %i.bd = load ptr, ptr %0, align 8, !tbaa !131
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = sub i64 %i.be, %i.bf
  store i64 %i.bg, ptr %4, align 8, !tbaa !57
  br label %bb.r

bb.k:                                             ; preds = %bb.a
  %i.bh = zext nneg i8 %i.b to i32
  %i.bi = load ptr, ptr %1, align 8, !tbaa !151, !nonnull !52, !align !135
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 56
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !134, !nonnull !52, !align !135
  %i.bl = tail call noundef zeroext i1 @_ZN7msgpack2v26detail21create_object_visitor9start_mapEj(ptr noundef nonnull align 8 dereferenceable(121) %i.bk, i32 noundef %i.bh)
  br i1 %i.bl, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bm = load ptr, ptr %i.c, align 8, !tbaa !132
  %i.bn = load ptr, ptr %0, align 8, !tbaa !131
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = sub i64 %i.bo, %i.bp
  store i64 %i.bq, ptr %4, align 8, !tbaa !57
  br label %bb.r

bb.m:                                             ; preds = %bb.k
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !128 ; 5 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !129
  %.not.i.i.i = icmp eq ptr %i.bt, %i.bv
  br i1 %.not.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.sroa.5.0.insert.ext.i = zext nneg i8 %i.b to i64
  %.sroa.5.0.insert.shift.i = shl nuw nsw i64 %.sroa.5.0.insert.ext.i, 32
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.5.0.insert.shift.i, 1
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.bt, align 4
  %i.bw = load ptr, ptr %i.bs, align 8, !tbaa !128
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  store ptr %i.bx, ptr %i.bs, align 8, !tbaa !128
  br label %.critedge

bb.o:                                             ; preds = %bb.m
  %i.by = load ptr, ptr %i.br, align 8, !tbaa !127 ; 5 uses
  %i.bz = ptrtoint ptr %i.bt to i64
  %i.ca = ptrtoint ptr %i.by to i64
  %i.cb = sub i64 %i.bz, %i.ca                    ; 5 uses
  %i.cc = icmp eq i64 %i.cb, 9223372036854775800
  br i1 %i.cc, label %bb.p, label %_ZNKSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.p:                                             ; preds = %bb.o
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.16) #23
  unreachable

_ZNKSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.o
  %i.cd = ashr exact i64 %i.cb, 3
  %mul2.i.i.i.i = ashr exact i64 %i.cb, 2
  %5 = tail call i64 @llvm.umax.i64(i64 %mul2.i.i.i.i, i64 1) ; 2 uses
  %i.ce = icmp ult i64 %5, %i.cd
  %i.cf = tail call i64 @llvm.umin.i64(i64 %5, i64 1152921504606846975)
  %i.cg = select i1 %i.ce, i64 1152921504606846975, i64 %i.cf ; 2 uses
  %i.ch = shl nuw nsw i64 %i.cg, 3
  %i.ci = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ch) #29 ; 5 uses
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !261)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !262)
  %i.ck = load i64, ptr %.0911.i.i.i.i.i.i.i, align 4, !alias.scope !262, !noalias !261
  store i64 %i.ck, ptr %.012.i.i.i.i.i.i.i, align 4, !alias.scope !261, !noalias !262
  %i.cl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.cl, %i.bt
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !4

_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %_ZNKSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.ci, %_ZNKSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i.i ], [ %i.cm, %.lr.ph.i.i.i.i.i.i.i ]
  %i.cn = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i.i = icmp eq ptr %i.by, null
  br i1 %.not.i23.i.i.i.i, label %_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE17_M_realloc_insertIJS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i.i.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.by, i64 noundef %i.cb) #25
  br label %_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE17_M_realloc_insertIJS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i.i.i

_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE17_M_realloc_insertIJS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i.i.i: ; preds = %bb.q, %_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i.i.i
  store ptr %i.ci, ptr %i.br, align 8, !tbaa !127
  store ptr %i.cn, ptr %i.bs, align 8, !tbaa !128
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %i.cg
  store ptr %i.co, ptr %i.bu, align 8, !tbaa !129
  br label %.critedge

.critedge:                                        ; preds = %bb.f, %bb.i, %bb.g, %_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE17_M_realloc_insertIJS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i.i.i, %bb.n
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.cp, align 8, !tbaa !126
  br label %bb.r

bb.r:                                             ; preds = %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE12unpack_stack7consumeERS5_.exit, %.critedge, %bb.l, %bb.c
  %.2 = phi i32 [ 0, %.critedge ], [ 2, %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE12unpack_stack7consumeERS5_.exit ], [ -2, %bb.l ], [ -2, %bb.c ]
  ret i32 %.2
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7msgpack2v26detail21create_object_visitor11parse_errorEmm(ptr noundef nonnull align 8 dereferenceable(121) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  invoke void @_ZN7msgpack2v111parse_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull @.str.22)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTIN7msgpack2v111parse_errorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.a) #24
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN7msgpack2v26detail21create_object_visitor9visit_extEPKcm(ptr noundef nonnull align 8 dereferenceable(121) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i64, ptr %i.a, align 8, !tbaa !263
  %i.c = icmp ugt i64 %2, %i.b
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  invoke void @_ZN7msgpack2v117ext_size_overflowC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull @.str.23)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTIN7msgpack2v117ext_size_overflowE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.d) #24
  resume { ptr, i32 } %i.e

bb.e:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !136
  %i.h = getelementptr inbounds i8, ptr %i.g, i64 -8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !114  ; 7 uses
  store i32 9, ptr %i.i, align 8, !tbaa !96
  %i.j = load ptr, ptr %0, align 8, !tbaa !110    ; 2 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !111
  %i.m = tail call noundef zeroext i1 %i.j(i32 noundef 9, i64 noundef %2, ptr noundef %i.l)
  br i1 %i.m, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %1, ptr %i.o, align 8, !tbaa !48
  %i.p = trunc i64 %2 to i32
  %i.q = add i32 %i.p, -1
  store i32 %i.q, ptr %i.n, align 8, !tbaa !48
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i8 1, ptr %i.r, align 8, !tbaa !117
  br label %bb.r

bb.h:                                             ; preds = %bb.f, %bb.e
  %.not23 = icmp eq ptr %1, null
  br i1 %.not23, label %bb.q, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !116  ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !144
  %i.x = load i64, ptr %i.u, align 8, !tbaa !145  ; 2 uses
  %i.y = icmp ult i64 %i.x, %2
  br i1 %i.y, label %bb.j, label %_ZN7msgpack2v14zone14allocate_alignEmm.exit

bb.j:                                             ; preds = %bb.i
  %i.z = load i64, ptr %i.t, align 8, !tbaa !91
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
  %i.ad = tail call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ad, align 8, !tbaa !23
  tail call void @__cxa_throw(ptr nonnull %i.ad, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #23
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.ae = add nuw i64 %.2.i.i, 8
  %i.af = tail call noalias ptr @malloc(i64 noundef %i.ae) #27 ; 4 uses
  %.not27.i.i = icmp eq ptr %i.af, null
  br i1 %.not27.i.i, label %bb.p, label %_ZN7msgpack2v14zone15allocate_expandEm.exit.i

bb.p:                                             ; preds = %bb.o
  %i.ag = tail call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ag, align 8, !tbaa !23
  tail call void @__cxa_throw(ptr nonnull %i.ag, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #23
  unreachable

_ZN7msgpack2v14zone15allocate_expandEm.exit.i:    ; preds = %bb.o
  %i.ah = getelementptr i8, ptr %i.af, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.t, i64 24 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !87
  store ptr %i.aj, ptr %i.af, align 8, !tbaa !89
  store ptr %i.af, ptr %i.ai, align 8, !tbaa !87
  br label %_ZN7msgpack2v14zone14allocate_alignEmm.exit

_ZN7msgpack2v14zone14allocate_alignEmm.exit:      ; preds = %bb.i, %_ZN7msgpack2v14zone15allocate_expandEm.exit.i
  %i.ak = phi ptr [ %i.ah, %_ZN7msgpack2v14zone15allocate_expandEm.exit.i ], [ %i.w, %bb.i ] ; 3 uses
  %i.al = phi i64 [ %.2.i.i, %_ZN7msgpack2v14zone15allocate_expandEm.exit.i ], [ %i.x, %bb.i ]
  %i.am = sub i64 %i.al, %2
  store i64 %i.am, ptr %i.u, align 8, !tbaa !145
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 %2
  store ptr %i.an, ptr %i.v, align 8, !tbaa !144
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ak, ptr nonnull align 1 %1, i64 %2, i1 false)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.ak, ptr %i.ap, align 8, !tbaa !48
  %i.aq = trunc i64 %2 to i32
  %i.ar = add i32 %i.aq, -1
  store i32 %i.ar, ptr %i.ao, align 8, !tbaa !48
  br label %bb.r

bb.q:                                             ; preds = %bb.h
  %i.as = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr null, ptr %i.at, align 8, !tbaa !48
  store i32 0, ptr %i.as, align 8, !tbaa !48
  br label %bb.r

bb.r:                                             ; preds = %_ZN7msgpack2v14zone14allocate_alignEmm.exit, %bb.q, %bb.g
end_hunk_0
begin_hunk_1_@_ZN7msgpack2v26detail21create_object_visitor9visit_binEPKcj:bb.a
  %i.ae = tail call noalias ptr @malloc(i64 noundef %i.ad) #27 ; 4 uses
  %.not27.i.i = icmp eq ptr %i.ae, null
  br i1 %.not27.i.i, label %bb.o, label %_ZN7msgpack2v14zone15allocate_expandEm.exit.i

bb.o:                                             ; preds = %.thread
  %i.af = tail call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.af, align 8, !tbaa !23
  tail call void @__cxa_throw(ptr nonnull %i.af, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #23
  unreachable

_ZN7msgpack2v14zone15allocate_expandEm.exit.i:    ; preds = %.thread
  %i.ag = getelementptr i8, ptr %i.ae, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.s, i64 24 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !87
  store ptr %i.ai, ptr %i.ae, align 8, !tbaa !89
  store ptr %i.ae, ptr %i.ah, align 8, !tbaa !87
  br label %_ZN7msgpack2v14zone14allocate_alignEmm.exit

_ZN7msgpack2v14zone14allocate_alignEmm.exit:      ; preds = %bb.i, %_ZN7msgpack2v14zone15allocate_expandEm.exit.i
  %i.aj = phi ptr [ %i.ag, %_ZN7msgpack2v14zone15allocate_expandEm.exit.i ], [ %i.v, %bb.i ] ; 3 uses
  %i.ak = phi i64 [ %.2.i.i25, %_ZN7msgpack2v14zone15allocate_expandEm.exit.i ], [ %i.w, %bb.i ]
  %i.al = sub i64 %i.ak, %i.a
  store i64 %i.al, ptr %i.t, align 8, !tbaa !145
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.a
  store ptr %i.am, ptr %i.u, align 8, !tbaa !144
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aj, ptr nonnull align 1 %1, i64 %i.a, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr %i.aj, ptr %i.ao, align 8, !tbaa !48
  store i32 %2, ptr %i.an, align 8, !tbaa !48
  br label %bb.q

bb.p:                                             ; preds = %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr null, ptr %i.aq, align 8, !tbaa !48
  store i32 0, ptr %i.ap, align 8, !tbaa !48
  br label %bb.q

bb.q:                                             ; preds = %_ZN7msgpack2v14zone14allocate_alignEmm.exit, %bb.p, %bb.g
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE15start_aggregateItNS6_8array_svENS6_8array_evEEENS0_12parse_returnERKT0_RKT1_PKcRm(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i16, ptr %3, align 1                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !132
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store ptr %i.d, ptr %i.b, align 8, !tbaa !132
  %i.e = icmp eq i16 %i.a, 0
  br i1 %i.e, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %1, align 8, !tbaa !147, !nonnull !52, !align !135
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !134, !nonnull !52, !align !135
  %i.i = tail call noundef zeroext i1 @_ZN7msgpack2v26detail21create_object_visitor11start_arrayEj(ptr noundef nonnull align 8 dereferenceable(121) %i.h, i32 noundef 0)
  br i1 %i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !132
  %i.k = load ptr, ptr %0, align 8, !tbaa !131
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  store i64 %i.n, ptr %4, align 8, !tbaa !57
  br label %bb.r

bb.d:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %2, align 8, !tbaa !149, !nonnull !52, !align !135
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !134, !nonnull !52, !align !135
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 96 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !115
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -8
  store ptr %i.t, ptr %i.r, align 8, !tbaa !115
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !137  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !137  ; 2 uses
  %i.y = icmp eq ptr %i.v, %i.x
  br i1 %i.y, label %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE12unpack_stack7consumeERS5_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aa = load ptr, ptr %i.z, align 8, !nonnull !52, !align !135
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 96 ; 4 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.j, %.lr.ph.i
  %i.ac = phi ptr [ %i.x, %.lr.ph.i ], [ %i.az, %bb.j ] ; 4 uses
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 -8 ; 5 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !140
  switch i32 %i.ae, label %bb.j [
    i32 0, label %bb.f
    i32 1, label %bb.g
    i32 2, label %bb.h
  ]

bb.f:                                             ; preds = %bb.e
  %i.af = load ptr, ptr %i.ab, align 8, !tbaa !136
  %i.ag = getelementptr inbounds i8, ptr %i.af, i64 -8 ; 3 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !114
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  store ptr %i.ai, ptr %i.ag, align 8, !tbaa !114
  %i.aj = getelementptr inbounds i8, ptr %i.ac, i64 -4 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !141
  %i.al = add i32 %i.ak, -1                       ; 2 uses
  store i32 %i.al, ptr %i.aj, align 4, !tbaa !141
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %.sink.split.i, label %.critedge

bb.g:                                             ; preds = %bb.e
  %i.an = load ptr, ptr %i.ab, align 8, !tbaa !136
  %i.ao = getelementptr inbounds i8, ptr %i.an, i64 -8 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !114
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  store ptr %i.aq, ptr %i.ao, align 8, !tbaa !114
  store i32 2, ptr %i.ad, align 4, !tbaa !140
  br label %.critedge

bb.h:                                             ; preds = %bb.e
  %i.ar = load ptr, ptr %i.ab, align 8, !tbaa !136
  %i.as = getelementptr inbounds i8, ptr %i.ar, i64 -8 ; 3 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !114
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  store ptr %i.au, ptr %i.as, align 8, !tbaa !114
  %i.av = getelementptr inbounds i8, ptr %i.ac, i64 -4 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !141
  %i.ax = add i32 %i.aw, -1                       ; 2 uses
  store i32 %i.ax, ptr %i.av, align 4, !tbaa !141
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %.sink.split.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i32 1, ptr %i.ad, align 4, !tbaa !140
  br label %.critedge

.sink.split.i:                                    ; preds = %bb.h, %bb.f
  %.sink.i = phi ptr [ %i.ag, %bb.f ], [ %i.as, %bb.h ]
  store ptr %i.ad, ptr %i.w, align 8, !tbaa !128
  store ptr %.sink.i, ptr %i.ab, align 8, !tbaa !115
  br label %bb.j

bb.j:                                             ; preds = %.sink.split.i, %bb.e
  %i.az = phi ptr [ %i.ac, %bb.e ], [ %i.ad, %.sink.split.i ] ; 2 uses
  %i.ba = icmp eq ptr %i.v, %i.az
  br i1 %i.ba, label %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE12unpack_stack7consumeERS5_.exit, label %bb.e

_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE12unpack_stack7consumeERS5_.exit: ; preds = %bb.j, %bb.d
  %i.bb = load ptr, ptr %i.b, align 8, !tbaa !132
  %i.bc = load ptr, ptr %0, align 8, !tbaa !131
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = sub i64 %i.bd, %i.be
  store i64 %i.bf, ptr %4, align 8, !tbaa !57
  br label %bb.r

bb.k:                                             ; preds = %bb.a
  %rev.i.i = tail call noundef i16 @llvm.bswap.i16(i16 %i.a) ; 3 uses
  %i.bg = zext i16 %rev.i.i to i32
  %i.bh = load ptr, ptr %1, align 8, !tbaa !147, !nonnull !52, !align !135
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 56
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !134, !nonnull !52, !align !135
  %i.bk = tail call noundef zeroext i1 @_ZN7msgpack2v26detail21create_object_visitor11start_arrayEj(ptr noundef nonnull align 8 dereferenceable(121) %i.bj, i32 noundef %i.bg)
  br i1 %i.bk, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bl = load ptr, ptr %i.b, align 8, !tbaa !132
  %i.bm = load ptr, ptr %0, align 8, !tbaa !131
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = sub i64 %i.bn, %i.bo
  store i64 %i.bp, ptr %4, align 8, !tbaa !57
  br label %bb.r

bb.m:                                             ; preds = %bb.k
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !128 ; 5 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !129
  %.not.i.i.i = icmp eq ptr %i.bs, %i.bu
  br i1 %.not.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.sroa.5.0.insert.ext.i = zext i16 %rev.i.i to i64
  %.sroa.5.0.insert.shift.i = shl nuw nsw i64 %.sroa.5.0.insert.ext.i, 32
  store i64 %.sroa.5.0.insert.shift.i, ptr %i.bs, align 4
  %i.bv = load ptr, ptr %i.br, align 8, !tbaa !128
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store ptr %i.bw, ptr %i.br, align 8, !tbaa !128
  br label %.critedge

bb.o:                                             ; preds = %bb.m
  %i.bx = load ptr, ptr %i.bq, align 8, !tbaa !127 ; 5 uses
  %i.by = ptrtoint ptr %i.bs to i64
  %i.bz = ptrtoint ptr %i.bx to i64
  %i.ca = sub i64 %i.by, %i.bz                    ; 5 uses
  %i.cb = icmp eq i64 %i.ca, 9223372036854775800
  br i1 %i.cb, label %bb.p, label %_ZNKSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.p:                                             ; preds = %bb.o
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.16) #23
  unreachable

_ZNKSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.o
  %i.cc = ashr exact i64 %i.ca, 3
  %mul2.i.i.i.i = ashr exact i64 %i.ca, 2
  %5 = tail call i64 @llvm.umax.i64(i64 %mul2.i.i.i.i, i64 1) ; 2 uses
  %i.cd = icmp ult i64 %5, %i.cc
  %i.ce = tail call i64 @llvm.umin.i64(i64 %5, i64 1152921504606846975)
  %i.cf = select i1 %i.cd, i64 1152921504606846975, i64 %i.ce ; 2 uses
  %i.cg = shl nuw nsw i64 %i.cf, 3
  %i.ch = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cg) #29 ; 5 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.ca
  %.sroa.5.0.insert.ext11.i = zext i16 %rev.i.i to i64
  %.sroa.5.0.insert.shift12.i = shl nuw nsw i64 %.sroa.5.0.insert.ext11.i, 32
  store i64 %.sroa.5.0.insert.shift12.i, ptr %i.ci, align 4
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.bx, %i.bs
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_ZNKSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.cl, %.lr.ph.i.i.i.i.i.i.i ], [ %i.ch, %_ZNKSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.ck, %.lr.ph.i.i.i.i.i.i.i ], [ %i.bx, %_ZNKSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i.i ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !268)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !269)
  %i.cj = load i64, ptr %.0911.i.i.i.i.i.i.i, align 4, !alias.scope !269, !noalias !268
  store i64 %i.cj, ptr %.012.i.i.i.i.i.i.i, align 4, !alias.scope !268, !noalias !269
  %i.ck = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ck, %i.bs
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !4

_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %_ZNKSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.ch, %_ZNKSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i.i ], [ %i.cl, %.lr.ph.i.i.i.i.i.i.i ]
  %i.cm = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i.i = icmp eq ptr %i.bx, null
  br i1 %.not.i23.i.i.i.i, label %_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE17_M_realloc_insertIJS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i.i.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bx, i64 noundef %i.ca) #25
  br label %_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE17_M_realloc_insertIJS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i.i.i

_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE17_M_realloc_insertIJS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i.i.i: ; preds = %bb.q, %_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i.i.i
  store ptr %i.ch, ptr %i.bq, align 8, !tbaa !127
  store ptr %i.cm, ptr %i.br, align 8, !tbaa !128
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %i.cf
  store ptr %i.cn, ptr %i.bt, align 8, !tbaa !129
  br label %.critedge

.critedge:                                        ; preds = %bb.f, %bb.i, %bb.g, %_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE17_M_realloc_insertIJS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i.i.i, %bb.n
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.co, align 8, !tbaa !126
  br label %bb.r

bb.r:                                             ; preds = %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE12unpack_stack7consumeERS5_.exit, %.critedge, %bb.l, %bb.c
  %.2 = phi i32 [ 0, %.critedge ], [ 2, %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE12unpack_stack7consumeERS5_.exit ], [ -2, %bb.l ], [ -2, %bb.c ]
  ret i32 %.2
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE15start_aggregateIjNS6_8array_svENS6_8array_evEEENS0_12parse_returnERKT0_RKT1_PKcRm(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %3, align 1                ; 2 uses
  %i.b = tail call noundef i32 @llvm.bswap.i32(i32 %i.a) ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !132
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  store ptr %i.e, ptr %i.c, align 8, !tbaa !132
  %i.f = icmp eq i32 %i.a, 0
  %i.g = load ptr, ptr %1, align 8, !tbaa !147, !nonnull !52, !align !135
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !134, !nonnull !52, !align !135 ; 2 uses
  br i1 %i.f, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.j = tail call noundef zeroext i1 @_ZN7msgpack2v26detail21create_object_visitor11start_arrayEj(ptr noundef nonnull align 8 dereferenceable(121) %i.i, i32 noundef 0)
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !132
  %i.l = load ptr, ptr %0, align 8, !tbaa !131
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  store i64 %i.o, ptr %4, align 8, !tbaa !57
  br label %bb.r

bb.d:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %2, align 8, !tbaa !149, !nonnull !52, !align !135
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !134, !nonnull !52, !align !135
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 96 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !115
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 -8
  store ptr %i.u, ptr %i.s, align 8, !tbaa !115
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !137  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !137  ; 2 uses
  %i.z = icmp eq ptr %i.w, %i.y
  br i1 %i.z, label %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE12unpack_stack7consumeERS5_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ab = load ptr, ptr %i.aa, align 8, !nonnull !52, !align !135
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 96 ; 4 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.j, %.lr.ph.i
  %i.ad = phi ptr [ %i.y, %.lr.ph.i ], [ %i.ba, %bb.j ] ; 4 uses
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 -8 ; 5 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !140
  switch i32 %i.af, label %bb.j [
    i32 0, label %bb.f
    i32 1, label %bb.g
    i32 2, label %bb.h
  ]

bb.f:                                             ; preds = %bb.e
  %i.ag = load ptr, ptr %i.ac, align 8, !tbaa !136
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 -8 ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !114
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  store ptr %i.aj, ptr %i.ah, align 8, !tbaa !114
  %i.ak = getelementptr inbounds i8, ptr %i.ad, i64 -4 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !141
  %i.am = add i32 %i.al, -1                       ; 2 uses
  store i32 %i.am, ptr %i.ak, align 4, !tbaa !141
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %.sink.split.i, label %.critedge

bb.g:                                             ; preds = %bb.e
  %i.ao = load ptr, ptr %i.ac, align 8, !tbaa !136
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 -8 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !114
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  store ptr %i.ar, ptr %i.ap, align 8, !tbaa !114
  store i32 2, ptr %i.ae, align 4, !tbaa !140
  br label %.critedge

bb.h:                                             ; preds = %bb.e
  %i.as = load ptr, ptr %i.ac, align 8, !tbaa !136
  %i.at = getelementptr inbounds i8, ptr %i.as, i64 -8 ; 3 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !114
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  store ptr %i.av, ptr %i.at, align 8, !tbaa !114
  %i.aw = getelementptr inbounds i8, ptr %i.ad, i64 -4 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !141
  %i.ay = add i32 %i.ax, -1                       ; 2 uses
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !141
  %i.az = icmp eq i32 %i.ay, 0
  br i1 %i.az, label %.sink.split.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i32 1, ptr %i.ae, align 4, !tbaa !140
  br label %.critedge

.sink.split.i:                                    ; preds = %bb.h, %bb.f
  %.sink.i = phi ptr [ %i.ah, %bb.f ], [ %i.at, %bb.h ]
  store ptr %i.ae, ptr %i.x, align 8, !tbaa !128
  store ptr %.sink.i, ptr %i.ac, align 8, !tbaa !115
  br label %bb.j

bb.j:                                             ; preds = %.sink.split.i, %bb.e
  %i.ba = phi ptr [ %i.ad, %bb.e ], [ %i.ae, %.sink.split.i ] ; 2 uses
  %i.bb = icmp eq ptr %i.w, %i.ba
  br i1 %i.bb, label %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE12unpack_stack7consumeERS5_.exit, label %bb.e

_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE12unpack_stack7consumeERS5_.exit: ; preds = %bb.j, %bb.d
  %i.bc = load ptr, ptr %i.c, align 8, !tbaa !132
  %i.bd = load ptr, ptr %0, align 8, !tbaa !131
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = sub i64 %i.be, %i.bf
  store i64 %i.bg, ptr %4, align 8, !tbaa !57
  br label %bb.r

bb.k:                                             ; preds = %bb.a
  %i.bh = tail call noundef zeroext i1 @_ZN7msgpack2v26detail21create_object_visitor11start_arrayEj(ptr noundef nonnull align 8 dereferenceable(121) %i.i, i32 noundef %i.b)
  br i1 %i.bh, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bi = load ptr, ptr %i.c, align 8, !tbaa !132
  %i.bj = load ptr, ptr %0, align 8, !tbaa !131
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = ptrtoint ptr %i.bj to i64
  %i.bm = sub i64 %i.bk, %i.bl
  store i64 %i.bm, ptr %4, align 8, !tbaa !57
  br label %bb.r

bb.m:                                             ; preds = %bb.k
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !128 ; 5 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !129
  %.not.i.i.i = icmp eq ptr %i.bp, %i.br
  br i1 %.not.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.sroa.5.0.insert.ext.i = zext i32 %i.b to i64
  %.sroa.5.0.insert.shift.i = shl nuw i64 %.sroa.5.0.insert.ext.i, 32
  store i64 %.sroa.5.0.insert.shift.i, ptr %i.bp, align 4
  %i.bs = load ptr, ptr %i.bo, align 8, !tbaa !128
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store ptr %i.bt, ptr %i.bo, align 8, !tbaa !128
  br label %.critedge

bb.o:                                             ; preds = %bb.m
  %i.bu = load ptr, ptr %i.bn, align 8, !tbaa !127 ; 5 uses
  %i.bv = ptrtoint ptr %i.bp to i64
  %i.bw = ptrtoint ptr %i.bu to i64
  %i.bx = sub i64 %i.bv, %i.bw                    ; 5 uses
  %i.by = icmp eq i64 %i.bx, 9223372036854775800
  br i1 %i.by, label %bb.p, label %_ZNKSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.p:                                             ; preds = %bb.o
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.16) #23
  unreachable

_ZNKSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.o
  %i.bz = ashr exact i64 %i.bx, 3
  %mul2.i.i.i.i = ashr exact i64 %i.bx, 2
  %5 = tail call i64 @llvm.umax.i64(i64 %mul2.i.i.i.i, i64 1) ; 2 uses
  %i.ca = icmp ult i64 %5, %i.bz
  %i.cb = tail call i64 @llvm.umin.i64(i64 %5, i64 1152921504606846975)
  %i.cc = select i1 %i.ca, i64 1152921504606846975, i64 %i.cb ; 2 uses
  %i.cd = shl nuw nsw i64 %i.cc, 3
  %i.ce = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cd) #29 ; 5 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.bx
  %.sroa.5.0.insert.ext11.i = zext i32 %i.b to i64
  %.sroa.5.0.insert.shift12.i = shl nuw i64 %.sroa.5.0.insert.ext11.i, 32
  store i64 %.sroa.5.0.insert.shift12.i, ptr %i.cf, align 4
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.bu, %i.bp
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_ZNKSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.ci, %.lr.ph.i.i.i.i.i.i.i ], [ %i.ce, %_ZNKSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.ch, %.lr.ph.i.i.i.i.i.i.i ], [ %i.bu, %_ZNKSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i.i ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !273)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !274)
  %i.cg = load i64, ptr %.0911.i.i.i.i.i.i.i, align 4, !alias.scope !274, !noalias !273
  store i64 %i.cg, ptr %.012.i.i.i.i.i.i.i, align 4, !alias.scope !273, !noalias !274
  %i.ch = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ch, %i.bp
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !4

_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %_ZNKSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.ce, %_ZNKSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i.i ], [ %i.ci, %.lr.ph.i.i.i.i.i.i.i ]
  %i.cj = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i.i = icmp eq ptr %i.bu, null
  br i1 %.not.i23.i.i.i.i, label %_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE17_M_realloc_insertIJS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i.i.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bu, i64 noundef %i.bx) #25
  br label %_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE17_M_realloc_insertIJS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i.i.i

_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE17_M_realloc_insertIJS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i.i.i: ; preds = %bb.q, %_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i.i.i
  store ptr %i.ce, ptr %i.bn, align 8, !tbaa !127
  store ptr %i.cj, ptr %i.bo, align 8, !tbaa !128
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.cc
  store ptr %i.ck, ptr %i.bq, align 8, !tbaa !129
  br label %.critedge

.critedge:                                        ; preds = %bb.f, %bb.i, %bb.g, %_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE17_M_realloc_insertIJS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i.i.i, %bb.n
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.cl, align 8, !tbaa !126
  br label %bb.r

bb.r:                                             ; preds = %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE12unpack_stack7consumeERS5_.exit, %.critedge, %bb.l, %bb.c
  %.2 = phi i32 [ 0, %.critedge ], [ 2, %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE12unpack_stack7consumeERS5_.exit ], [ -2, %bb.l ], [ -2, %bb.c ]
  ret i32 %.2
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE15start_aggregateItNS6_6map_svENS6_6map_evEEENS0_12parse_returnERKT0_RKT1_PKcRm(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i16, ptr %3, align 1                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !132
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store ptr %i.d, ptr %i.b, align 8, !tbaa !132
  %i.e = icmp eq i16 %i.a, 0
  br i1 %i.e, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %1, align 8, !tbaa !151, !nonnull !52, !align !135
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !134, !nonnull !52, !align !135
  %i.i = tail call noundef zeroext i1 @_ZN7msgpack2v26detail21create_object_visitor9start_mapEj(ptr noundef nonnull align 8 dereferenceable(121) %i.h, i32 noundef 0)
  br i1 %i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !132
  %i.k = load ptr, ptr %0, align 8, !tbaa !131
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  store i64 %i.n, ptr %4, align 8, !tbaa !57
  br label %bb.r

bb.d:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %2, align 8, !tbaa !153, !nonnull !52, !align !135
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !134, !nonnull !52, !align !135
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 96 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !115
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -8
  store ptr %i.t, ptr %i.r, align 8, !tbaa !115
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !137  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !137  ; 2 uses
  %i.y = icmp eq ptr %i.v, %i.x
  br i1 %i.y, label %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE12unpack_stack7consumeERS5_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aa = load ptr, ptr %i.z, align 8, !nonnull !52, !align !135
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 96 ; 4 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.j, %.lr.ph.i
  %i.ac = phi ptr [ %i.x, %.lr.ph.i ], [ %i.az, %bb.j ] ; 4 uses
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 -8 ; 5 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !140
  switch i32 %i.ae, label %bb.j [
    i32 0, label %bb.f
    i32 1, label %bb.g
    i32 2, label %bb.h
  ]

bb.f:                                             ; preds = %bb.e
  %i.af = load ptr, ptr %i.ab, align 8, !tbaa !136
  %i.ag = getelementptr inbounds i8, ptr %i.af, i64 -8 ; 3 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !114
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  store ptr %i.ai, ptr %i.ag, align 8, !tbaa !114
  %i.aj = getelementptr inbounds i8, ptr %i.ac, i64 -4 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !141
  %i.al = add i32 %i.ak, -1                       ; 2 uses
  store i32 %i.al, ptr %i.aj, align 4, !tbaa !141
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %.sink.split.i, label %.critedge

bb.g:                                             ; preds = %bb.e
  %i.an = load ptr, ptr %i.ab, align 8, !tbaa !136
  %i.ao = getelementptr inbounds i8, ptr %i.an, i64 -8 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !114
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  store ptr %i.aq, ptr %i.ao, align 8, !tbaa !114
  store i32 2, ptr %i.ad, align 4, !tbaa !140
  br label %.critedge

bb.h:                                             ; preds = %bb.e
  %i.ar = load ptr, ptr %i.ab, align 8, !tbaa !136
  %i.as = getelementptr inbounds i8, ptr %i.ar, i64 -8 ; 3 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !114
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  store ptr %i.au, ptr %i.as, align 8, !tbaa !114
  %i.av = getelementptr inbounds i8, ptr %i.ac, i64 -4 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !141
  %i.ax = add i32 %i.aw, -1                       ; 2 uses
  store i32 %i.ax, ptr %i.av, align 4, !tbaa !141
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %.sink.split.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i32 1, ptr %i.ad, align 4, !tbaa !140
  br label %.critedge

.sink.split.i:                                    ; preds = %bb.h, %bb.f
  %.sink.i = phi ptr [ %i.ag, %bb.f ], [ %i.as, %bb.h ]
  store ptr %i.ad, ptr %i.w, align 8, !tbaa !128
  store ptr %.sink.i, ptr %i.ab, align 8, !tbaa !115
  br label %bb.j

bb.j:                                             ; preds = %.sink.split.i, %bb.e
  %i.az = phi ptr [ %i.ac, %bb.e ], [ %i.ad, %.sink.split.i ] ; 2 uses
  %i.ba = icmp eq ptr %i.v, %i.az
  br i1 %i.ba, label %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE12unpack_stack7consumeERS5_.exit, label %bb.e

_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE12unpack_stack7consumeERS5_.exit: ; preds = %bb.j, %bb.d
  %i.bb = load ptr, ptr %i.b, align 8, !tbaa !132
  %i.bc = load ptr, ptr %0, align 8, !tbaa !131
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = sub i64 %i.bd, %i.be
  store i64 %i.bf, ptr %4, align 8, !tbaa !57
  br label %bb.r

bb.k:                                             ; preds = %bb.a
  %rev.i.i = tail call noundef i16 @llvm.bswap.i16(i16 %i.a) ; 3 uses
  %i.bg = zext i16 %rev.i.i to i32
  %i.bh = load ptr, ptr %1, align 8, !tbaa !151, !nonnull !52, !align !135
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 56
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !134, !nonnull !52, !align !135
  %i.bk = tail call noundef zeroext i1 @_ZN7msgpack2v26detail21create_object_visitor9start_mapEj(ptr noundef nonnull align 8 dereferenceable(121) %i.bj, i32 noundef %i.bg)
  br i1 %i.bk, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bl = load ptr, ptr %i.b, align 8, !tbaa !132
  %i.bm = load ptr, ptr %0, align 8, !tbaa !131
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = sub i64 %i.bn, %i.bo
  store i64 %i.bp, ptr %4, align 8, !tbaa !57
  br label %bb.r

bb.m:                                             ; preds = %bb.k
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !128 ; 5 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !129
  %.not.i.i.i = icmp eq ptr %i.bs, %i.bu
  br i1 %.not.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.sroa.5.0.insert.ext.i = zext i16 %rev.i.i to i64
  %.sroa.5.0.insert.shift.i = shl nuw nsw i64 %.sroa.5.0.insert.ext.i, 32
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.5.0.insert.shift.i, 1
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.bs, align 4
  %i.bv = load ptr, ptr %i.br, align 8, !tbaa !128
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store ptr %i.bw, ptr %i.br, align 8, !tbaa !128
  br label %.critedge

bb.o:                                             ; preds = %bb.m
  %i.bx = load ptr, ptr %i.bq, align 8, !tbaa !127 ; 5 uses
  %i.by = ptrtoint ptr %i.bs to i64
  %i.bz = ptrtoint ptr %i.bx to i64
  %i.ca = sub i64 %i.by, %i.bz                    ; 5 uses
  %i.cb = icmp eq i64 %i.ca, 9223372036854775800
  br i1 %i.cb, label %bb.p, label %_ZNKSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.p:                                             ; preds = %bb.o
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.16) #23
  unreachable

_ZNKSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.o
  %i.cc = ashr exact i64 %i.ca, 3
  %mul2.i.i.i.i = ashr exact i64 %i.ca, 2
  %5 = tail call i64 @llvm.umax.i64(i64 %mul2.i.i.i.i, i64 1) ; 2 uses
  %i.cd = icmp ult i64 %5, %i.cc
  %i.ce = tail call i64 @llvm.umin.i64(i64 %5, i64 1152921504606846975)
  %i.cf = select i1 %i.cd, i64 1152921504606846975, i64 %i.ce ; 2 uses
  %i.cg = shl nuw nsw i64 %i.cf, 3
  %i.ch = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cg) #29 ; 5 uses
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !278)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !279)
  %i.cj = load i64, ptr %.0911.i.i.i.i.i.i.i, align 4, !alias.scope !279, !noalias !278
  store i64 %i.cj, ptr %.012.i.i.i.i.i.i.i, align 4, !alias.scope !278, !noalias !279
  %i.ck = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ck, %i.bs
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !4

_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %_ZNKSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.ch, %_ZNKSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i.i ], [ %i.cl, %.lr.ph.i.i.i.i.i.i.i ]
  %i.cm = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i.i = icmp eq ptr %i.bx, null
  br i1 %.not.i23.i.i.i.i, label %_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE17_M_realloc_insertIJS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i.i.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bx, i64 noundef %i.ca) #25
  br label %_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE17_M_realloc_insertIJS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i.i.i

_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE17_M_realloc_insertIJS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i.i.i: ; preds = %bb.q, %_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i.i.i
  store ptr %i.ch, ptr %i.bq, align 8, !tbaa !127
  store ptr %i.cm, ptr %i.br, align 8, !tbaa !128
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %i.cf
  store ptr %i.cn, ptr %i.bt, align 8, !tbaa !129
  br label %.critedge

.critedge:                                        ; preds = %bb.f, %bb.i, %bb.g, %_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE17_M_realloc_insertIJS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i.i.i, %bb.n
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.co, align 8, !tbaa !126
  br label %bb.r

bb.r:                                             ; preds = %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE12unpack_stack7consumeERS5_.exit, %.critedge, %bb.l, %bb.c
  %.2 = phi i32 [ 0, %.critedge ], [ 2, %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE12unpack_stack7consumeERS5_.exit ], [ -2, %bb.l ], [ -2, %bb.c ]
  ret i32 %.2
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE15start_aggregateIjNS6_6map_svENS6_6map_evEEENS0_12parse_returnERKT0_RKT1_PKcRm(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %3, align 1                ; 2 uses
  %i.b = tail call noundef i32 @llvm.bswap.i32(i32 %i.a) ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !132
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  store ptr %i.e, ptr %i.c, align 8, !tbaa !132
  %i.f = icmp eq i32 %i.a, 0
  %i.g = load ptr, ptr %1, align 8, !tbaa !151, !nonnull !52, !align !135
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !134, !nonnull !52, !align !135 ; 2 uses
  br i1 %i.f, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.j = tail call noundef zeroext i1 @_ZN7msgpack2v26detail21create_object_visitor9start_mapEj(ptr noundef nonnull align 8 dereferenceable(121) %i.i, i32 noundef 0)
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !132
  %i.l = load ptr, ptr %0, align 8, !tbaa !131
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  store i64 %i.o, ptr %4, align 8, !tbaa !57
  br label %bb.r

bb.d:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %2, align 8, !tbaa !153, !nonnull !52, !align !135
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !134, !nonnull !52, !align !135
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 96 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !115
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 -8
  store ptr %i.u, ptr %i.s, align 8, !tbaa !115
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !137  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !137  ; 2 uses
  %i.z = icmp eq ptr %i.w, %i.y
  br i1 %i.z, label %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE12unpack_stack7consumeERS5_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ab = load ptr, ptr %i.aa, align 8, !nonnull !52, !align !135
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 96 ; 4 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.j, %.lr.ph.i
  %i.ad = phi ptr [ %i.y, %.lr.ph.i ], [ %i.ba, %bb.j ] ; 4 uses
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 -8 ; 5 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !140
  switch i32 %i.af, label %bb.j [
    i32 0, label %bb.f
    i32 1, label %bb.g
    i32 2, label %bb.h
  ]

bb.f:                                             ; preds = %bb.e
  %i.ag = load ptr, ptr %i.ac, align 8, !tbaa !136
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 -8 ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !114
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  store ptr %i.aj, ptr %i.ah, align 8, !tbaa !114
  %i.ak = getelementptr inbounds i8, ptr %i.ad, i64 -4 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !141
  %i.am = add i32 %i.al, -1                       ; 2 uses
  store i32 %i.am, ptr %i.ak, align 4, !tbaa !141
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %.sink.split.i, label %.critedge

bb.g:                                             ; preds = %bb.e
  %i.ao = load ptr, ptr %i.ac, align 8, !tbaa !136
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 -8 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !114
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  store ptr %i.ar, ptr %i.ap, align 8, !tbaa !114
  store i32 2, ptr %i.ae, align 4, !tbaa !140
  br label %.critedge

bb.h:                                             ; preds = %bb.e
  %i.as = load ptr, ptr %i.ac, align 8, !tbaa !136
  %i.at = getelementptr inbounds i8, ptr %i.as, i64 -8 ; 3 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !114
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  store ptr %i.av, ptr %i.at, align 8, !tbaa !114
  %i.aw = getelementptr inbounds i8, ptr %i.ad, i64 -4 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !141
  %i.ay = add i32 %i.ax, -1                       ; 2 uses
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !141
  %i.az = icmp eq i32 %i.ay, 0
  br i1 %i.az, label %.sink.split.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i32 1, ptr %i.ae, align 4, !tbaa !140
  br label %.critedge

.sink.split.i:                                    ; preds = %bb.h, %bb.f
  %.sink.i = phi ptr [ %i.ah, %bb.f ], [ %i.at, %bb.h ]
  store ptr %i.ae, ptr %i.x, align 8, !tbaa !128
  store ptr %.sink.i, ptr %i.ac, align 8, !tbaa !115
  br label %bb.j

bb.j:                                             ; preds = %.sink.split.i, %bb.e
  %i.ba = phi ptr [ %i.ad, %bb.e ], [ %i.ae, %.sink.split.i ] ; 2 uses
  %i.bb = icmp eq ptr %i.w, %i.ba
  br i1 %i.bb, label %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE12unpack_stack7consumeERS5_.exit, label %bb.e

_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE12unpack_stack7consumeERS5_.exit: ; preds = %bb.j, %bb.d
  %i.bc = load ptr, ptr %i.c, align 8, !tbaa !132
  %i.bd = load ptr, ptr %0, align 8, !tbaa !131
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = sub i64 %i.be, %i.bf
  store i64 %i.bg, ptr %4, align 8, !tbaa !57
  br label %bb.r

bb.k:                                             ; preds = %bb.a
  %i.bh = tail call noundef zeroext i1 @_ZN7msgpack2v26detail21create_object_visitor9start_mapEj(ptr noundef nonnull align 8 dereferenceable(121) %i.i, i32 noundef %i.b)
  br i1 %i.bh, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bi = load ptr, ptr %i.c, align 8, !tbaa !132
  %i.bj = load ptr, ptr %0, align 8, !tbaa !131
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = ptrtoint ptr %i.bj to i64
  %i.bm = sub i64 %i.bk, %i.bl
  store i64 %i.bm, ptr %4, align 8, !tbaa !57
  br label %bb.r

bb.m:                                             ; preds = %bb.k
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !128 ; 5 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !129
  %.not.i.i.i = icmp eq ptr %i.bp, %i.br
  br i1 %.not.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.sroa.5.0.insert.ext.i = zext i32 %i.b to i64
  %.sroa.5.0.insert.shift.i = shl nuw i64 %.sroa.5.0.insert.ext.i, 32
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.5.0.insert.shift.i, 1
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.bp, align 4
  %i.bs = load ptr, ptr %i.bo, align 8, !tbaa !128
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store ptr %i.bt, ptr %i.bo, align 8, !tbaa !128
  br label %.critedge

bb.o:                                             ; preds = %bb.m
  %i.bu = load ptr, ptr %i.bn, align 8, !tbaa !127 ; 5 uses
  %i.bv = ptrtoint ptr %i.bp to i64
  %i.bw = ptrtoint ptr %i.bu to i64
  %i.bx = sub i64 %i.bv, %i.bw                    ; 5 uses
  %i.by = icmp eq i64 %i.bx, 9223372036854775800
  br i1 %i.by, label %bb.p, label %_ZNKSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.p:                                             ; preds = %bb.o
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.16) #23
  unreachable

_ZNKSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.o
  %i.bz = ashr exact i64 %i.bx, 3
  %mul2.i.i.i.i = ashr exact i64 %i.bx, 2
  %5 = tail call i64 @llvm.umax.i64(i64 %mul2.i.i.i.i, i64 1) ; 2 uses
  %i.ca = icmp ult i64 %5, %i.bz
  %i.cb = tail call i64 @llvm.umin.i64(i64 %5, i64 1152921504606846975)
  %i.cc = select i1 %i.ca, i64 1152921504606846975, i64 %i.cb ; 2 uses
  %i.cd = shl nuw nsw i64 %i.cc, 3
  %i.ce = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cd) #29 ; 5 uses
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !283)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !284)
  %i.cg = load i64, ptr %.0911.i.i.i.i.i.i.i, align 4, !alias.scope !284, !noalias !283
  store i64 %i.cg, ptr %.012.i.i.i.i.i.i.i, align 4, !alias.scope !283, !noalias !284
  %i.ch = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ch, %i.bp
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !4

_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %_ZNKSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.ce, %_ZNKSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i.i ], [ %i.ci, %.lr.ph.i.i.i.i.i.i.i ]
  %i.cj = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i.i = icmp eq ptr %i.bu, null
  br i1 %.not.i23.i.i.i.i, label %_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE17_M_realloc_insertIJS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i.i.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bu, i64 noundef %i.bx) #25
  br label %_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE17_M_realloc_insertIJS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i.i.i

_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE17_M_realloc_insertIJS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i.i.i: ; preds = %bb.q, %_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i.i.i
  store ptr %i.ce, ptr %i.bn, align 8, !tbaa !127
  store ptr %i.cj, ptr %i.bo, align 8, !tbaa !128
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.cc
  store ptr %i.ck, ptr %i.bq, align 8, !tbaa !129
  br label %.critedge

.critedge:                                        ; preds = %bb.f, %bb.i, %bb.g, %_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE17_M_realloc_insertIJS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i.i.i, %bb.n
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.cl, align 8, !tbaa !126
  br label %bb.r

bb.r:                                             ; preds = %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE12unpack_stack7consumeERS5_.exit, %.critedge, %bb.l, %bb.c
  %.2 = phi i32 [ 0, %.critedge ], [ 2, %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE12unpack_stack7consumeERS5_.exit ], [ -2, %bb.l ], [ -2, %bb.c ]
  ret i32 %.2
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7msgpack2v117str_size_overflowC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZNSt13runtime_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7msgpack2v117str_size_overflowE, i64 16), ptr %0, align 8, !tbaa !23
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7msgpack2v117str_size_overflowD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #24
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #25
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN7msgpack2v26detail21create_object_visitor11start_arrayEj(ptr noundef nonnull align 8 dereferenceable(121) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = zext i32 %1 to i64                       ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !285
  %i.d = icmp ult i64 %i.c, %i.a
  br i1 %i.d, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  invoke void @_ZN7msgpack2v119array_size_overflowC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull @.str.19)
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
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !115  ; 2 uses
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !112
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = ashr exact i64 %i.m, 3
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.p = load i64, ptr %i.o, align 8, !tbaa !154
  %i.q = icmp ugt i64 %i.n, %i.p
  br i1 %i.q, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.r = tail call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  invoke void @_ZN7msgpack2v119depth_size_overflowC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef nonnull @.str.20)
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
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !114  ; 3 uses
  store i32 7, ptr %i.u, align 8, !tbaa !96
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i32 %1, ptr %i.v, align 8, !tbaa !48
  %i.w = icmp eq i32 %1, 0
  br i1 %i.w, label %bb.r, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = mul nuw nsw i64 %i.a, 24                 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !116  ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !144 ; 3 uses
  %i.ad = getelementptr i8, ptr %i.ac, i64 7
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = and i64 %i.ae, -8                       ; 2 uses
  %i.ag = ptrtoint ptr %i.ac to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = add i64 %i.ah, %i.x                     ; 2 uses
  %i.aj = load i64, ptr %i.aa, align 8, !tbaa !145 ; 2 uses
  %i.ak = icmp ult i64 %i.aj, %i.ai
  br i1 %i.ak, label %bb.k, label %_ZN7msgpack2v14zone14allocate_alignEmm.exit

bb.k:                                             ; preds = %bb.j
  %i.al = or disjoint i64 %i.x, 7                 ; 2 uses
  %i.am = load i64, ptr %i.z, align 8, !tbaa !91
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
  %i.aq = tail call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.aq, align 8, !tbaa !23
  tail call void @__cxa_throw(ptr nonnull %i.aq, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #23
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.ar = add nuw i64 %.2.i.i, 8
  %i.as = tail call noalias ptr @malloc(i64 noundef %i.ar) #27 ; 5 uses
  %.not27.i.i = icmp eq ptr %i.as, null
  br i1 %.not27.i.i, label %bb.q, label %_ZN7msgpack2v14zone15allocate_expandEm.exit.i

bb.q:                                             ; preds = %bb.p
  %i.at = tail call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.at, align 8, !tbaa !23
  tail call void @__cxa_throw(ptr nonnull %i.at, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #23
  unreachable

_ZN7msgpack2v14zone15allocate_expandEm.exit.i:    ; preds = %bb.p
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.z, i64 24 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !87
  store ptr %i.aw, ptr %i.as, align 8, !tbaa !89
  store ptr %i.as, ptr %i.av, align 8, !tbaa !87
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
  store i64 %i.bf, ptr %i.aa, align 8, !tbaa !145
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 %.014.i
  store ptr %i.bg, ptr %i.ab, align 8, !tbaa !144
  br label %bb.r

bb.r:                                             ; preds = %bb.i, %_ZN7msgpack2v14zone14allocate_alignEmm.exit
  %.0.i.sink = phi ptr [ %.0.i, %_ZN7msgpack2v14zone14allocate_alignEmm.exit ], [ null, %bb.i ] ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store ptr %.0.i.sink, ptr %i.bh, align 8, !tbaa !48
  %i.bi = load ptr, ptr %i.h, align 8, !tbaa !115 ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !113
  %.not.i = icmp eq ptr %i.bi, %i.bk
  br i1 %.not.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  store ptr %.0.i.sink, ptr %i.bi, align 8, !tbaa !114
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store ptr %i.bl, ptr %i.h, align 8, !tbaa !115
  br label %_ZNSt6vectorIPN7msgpack2v26objectESaIS3_EE9push_backERKS3_.exit

bb.t:                                             ; preds = %bb.r
  %i.bm = load ptr, ptr %i.g, align 8, !tbaa !112 ; 4 uses
  %i.bn = ptrtoint ptr %i.bi to i64
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = sub i64 %i.bn, %i.bo                    ; 7 uses
  %i.bq = icmp eq i64 %i.bp, 9223372036854775800
  br i1 %i.bq, label %bb.u, label %_ZNKSt6vectorIPN7msgpack2v26objectESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.u:                                             ; preds = %bb.t
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.16) #23
  unreachable

_ZNKSt6vectorIPN7msgpack2v26objectESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.t
  %i.br = ashr exact i64 %i.bp, 3
  %mul2.i.i = ashr exact i64 %i.bp, 2
  %2 = tail call i64 @llvm.umax.i64(i64 %mul2.i.i, i64 1) ; 2 uses
  %i.bs = icmp ult i64 %2, %i.br
  %i.bt = tail call i64 @llvm.umin.i64(i64 %2, i64 1152921504606846975)
  %i.bu = select i1 %i.bs, i64 1152921504606846975, i64 %i.bt ; 2 uses
  %i.bv = shl nuw nsw i64 %i.bu, 3
  %i.bw = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bv) #29 ; 4 uses
  %i.bx = getelementptr inbounds i8, ptr %i.bw, i64 %i.bp ; 2 uses
  store ptr %.0.i.sink, ptr %i.bx, align 8, !tbaa !114
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
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bm, i64 noundef %i.bp) #25
  br label %_ZNSt6vectorIPN7msgpack2v26objectESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorIPN7msgpack2v26objectESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.w, %_ZNSt6vectorIPN7msgpack2v26objectESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  store ptr %i.bw, ptr %i.g, align 8, !tbaa !112
  store ptr %i.bz, ptr %i.h, align 8, !tbaa !115
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %i.bu
  store ptr %i.ca, ptr %i.bj, align 8, !tbaa !113
  br label %_ZNSt6vectorIPN7msgpack2v26objectESaIS3_EE9push_backERKS3_.exit

_ZNSt6vectorIPN7msgpack2v26objectESaIS3_EE9push_backERKS3_.exit: ; preds = %bb.s, %_ZNSt6vectorIPN7msgpack2v26objectESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i
  ret i1 true

bb.x:                                             ; preds = %bb.h, %bb.d
  %.sink = phi ptr [ %i.r, %bb.h ], [ %i.e, %bb.d ]
  %.pn = phi { ptr, i32 } [ %i.s, %bb.h ], [ %i.f, %bb.d ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #24
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7msgpack2v119array_size_overflowC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZNSt13runtime_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7msgpack2v119array_size_overflowE, i64 16), ptr %0, align 8, !tbaa !23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7msgpack2v119depth_size_overflowC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZNSt13runtime_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7msgpack2v119depth_size_overflowE, i64 16), ptr %0, align 8, !tbaa !23
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7msgpack2v119array_size_overflowD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #24
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #25
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7msgpack2v119depth_size_overflowD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #24
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #25
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN7msgpack2v26detail21create_object_visitor9start_mapEj(ptr noundef nonnull align 8 dereferenceable(121) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = zext i32 %1 to i64                       ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i64, ptr %i.b, align 8, !tbaa !286
  %i.d = icmp ult i64 %i.c, %i.a
  br i1 %i.d, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  invoke void @_ZN7msgpack2v117map_size_overflowC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull @.str.21)
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
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !115  ; 2 uses
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !112
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = ashr exact i64 %i.m, 3
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.p = load i64, ptr %i.o, align 8, !tbaa !154
  %i.q = icmp ugt i64 %i.n, %i.p
  br i1 %i.q, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.r = tail call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  invoke void @_ZN7msgpack2v119depth_size_overflowC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef nonnull @.str.20)
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
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !114  ; 3 uses
  store i32 8, ptr %i.u, align 8, !tbaa !96
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i32 %1, ptr %i.v, align 8, !tbaa !48
  %i.w = icmp eq i32 %1, 0
  br i1 %i.w, label %bb.r, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = mul nuw nsw i64 %i.a, 48                 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !116  ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !144 ; 3 uses
  %i.ad = getelementptr i8, ptr %i.ac, i64 7
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = and i64 %i.ae, -8                       ; 2 uses
  %i.ag = ptrtoint ptr %i.ac to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = add i64 %i.ah, %i.x                     ; 2 uses
  %i.aj = load i64, ptr %i.aa, align 8, !tbaa !145 ; 2 uses
  %i.ak = icmp ult i64 %i.aj, %i.ai
  br i1 %i.ak, label %bb.k, label %_ZN7msgpack2v14zone14allocate_alignEmm.exit

bb.k:                                             ; preds = %bb.j
  %i.al = or disjoint i64 %i.x, 7                 ; 2 uses
  %i.am = load i64, ptr %i.z, align 8, !tbaa !91
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
  %i.aq = tail call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.aq, align 8, !tbaa !23
  tail call void @__cxa_throw(ptr nonnull %i.aq, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #23
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.ar = add nuw i64 %.2.i.i, 8
  %i.as = tail call noalias ptr @malloc(i64 noundef %i.ar) #27 ; 5 uses
  %.not27.i.i = icmp eq ptr %i.as, null
  br i1 %.not27.i.i, label %bb.q, label %_ZN7msgpack2v14zone15allocate_expandEm.exit.i

bb.q:                                             ; preds = %bb.p
  %i.at = tail call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.at, align 8, !tbaa !23
  tail call void @__cxa_throw(ptr nonnull %i.at, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #23
  unreachable

_ZN7msgpack2v14zone15allocate_expandEm.exit.i:    ; preds = %bb.p
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.z, i64 24 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !87
  store ptr %i.aw, ptr %i.as, align 8, !tbaa !89
  store ptr %i.as, ptr %i.av, align 8, !tbaa !87
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
  store i64 %i.bf, ptr %i.aa, align 8, !tbaa !145
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 %.014.i
  store ptr %i.bg, ptr %i.ab, align 8, !tbaa !144
  br label %bb.r

bb.r:                                             ; preds = %bb.i, %_ZN7msgpack2v14zone14allocate_alignEmm.exit
  %.0.i.sink = phi ptr [ %.0.i, %_ZN7msgpack2v14zone14allocate_alignEmm.exit ], [ null, %bb.i ] ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store ptr %.0.i.sink, ptr %i.bh, align 8, !tbaa !48
  %i.bi = load ptr, ptr %i.h, align 8, !tbaa !115 ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !113
  %.not.i.i15 = icmp eq ptr %i.bi, %i.bk
  br i1 %.not.i.i15, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  store ptr %.0.i.sink, ptr %i.bi, align 8, !tbaa !114
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store ptr %i.bl, ptr %i.h, align 8, !tbaa !115
  br label %_ZNSt6vectorIPN7msgpack2v26objectESaIS3_EE9push_backEOS3_.exit

bb.t:                                             ; preds = %bb.r
  %i.bm = load ptr, ptr %i.g, align 8, !tbaa !112 ; 4 uses
  %i.bn = ptrtoint ptr %i.bi to i64
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = sub i64 %i.bn, %i.bo                    ; 7 uses
  %i.bq = icmp eq i64 %i.bp, 9223372036854775800
  br i1 %i.bq, label %bb.u, label %_ZNKSt6vectorIPN7msgpack2v26objectESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.u:                                             ; preds = %bb.t
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.16) #23
  unreachable

_ZNKSt6vectorIPN7msgpack2v26objectESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.t
  %i.br = ashr exact i64 %i.bp, 3
  %mul2.i.i.i = ashr exact i64 %i.bp, 2
  %2 = tail call i64 @llvm.umax.i64(i64 %mul2.i.i.i, i64 1) ; 2 uses
  %i.bs = icmp ult i64 %2, %i.br
  %i.bt = tail call i64 @llvm.umin.i64(i64 %2, i64 1152921504606846975)
  %i.bu = select i1 %i.bs, i64 1152921504606846975, i64 %i.bt ; 2 uses
  %i.bv = shl nuw nsw i64 %i.bu, 3
  %i.bw = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bv) #29 ; 4 uses
  %i.bx = getelementptr inbounds i8, ptr %i.bw, i64 %i.bp ; 2 uses
  store ptr %.0.i.sink, ptr %i.bx, align 8, !tbaa !114
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
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bm, i64 noundef %i.bp) #25
  br label %_ZNSt6vectorIPN7msgpack2v26objectESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorIPN7msgpack2v26objectESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.w, %_ZNSt6vectorIPN7msgpack2v26objectESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  store ptr %i.bw, ptr %i.g, align 8, !tbaa !112
  store ptr %i.bz, ptr %i.h, align 8, !tbaa !115
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %i.bu
  store ptr %i.ca, ptr %i.bj, align 8, !tbaa !113
  br label %_ZNSt6vectorIPN7msgpack2v26objectESaIS3_EE9push_backEOS3_.exit

_ZNSt6vectorIPN7msgpack2v26objectESaIS3_EE9push_backEOS3_.exit: ; preds = %bb.s, %_ZNSt6vectorIPN7msgpack2v26objectESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i
  ret i1 true

bb.x:                                             ; preds = %bb.h, %bb.d
  %.sink = phi ptr [ %i.r, %bb.h ], [ %i.e, %bb.d ]
  %.pn = phi { ptr, i32 } [ %i.s, %bb.h ], [ %i.f, %bb.d ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #24
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7msgpack2v117map_size_overflowC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZNSt13runtime_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7msgpack2v117map_size_overflowE, i64 16), ptr %0, align 8, !tbaa !23
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7msgpack2v117map_size_overflowD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #24
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #25
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7msgpack2v111parse_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZNSt13runtime_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7msgpack2v111parse_errorE, i64 16), ptr %0, align 8, !tbaa !23
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7msgpack2v111parse_errorD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #24
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #25
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7msgpack2v117ext_size_overflowC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZNSt13runtime_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7msgpack2v117ext_size_overflowE, i64 16), ptr %0, align 8, !tbaa !23
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7msgpack2v117ext_size_overflowD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #24
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #25
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7msgpack2v117bin_size_overflowC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZNSt13runtime_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7msgpack2v117bin_size_overflowE, i64 16), ptr %0, align 8, !tbaa !23
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7msgpack2v117bin_size_overflowD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #24
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #25
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #18

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7msgpack2v113object_parser5parseINS0_24object_stringize_visitorEEEvRT_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 12 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 8 uses
  %.pre = load ptr, ptr %0, align 8, !tbaa !65
  br label %bb.b

bb.b:                                             ; preds = %_ZN7msgpack2v113object_parser4elem4nextINS0_24object_stringize_visitorEEENS1_8next_retERT_.exit.thread62, %bb.a
  %i.e = phi ptr [ %.0.i38, %_ZN7msgpack2v113object_parser4elem4nextINS0_24object_stringize_visitorEEENS1_8next_retERT_.exit.thread62 ], [ %.pre, %bb.a ] ; 13 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !96
  switch i32 %i.f, label %bb.z [
    i32 0, label %bb.c
    i32 1, label %bb.d
    i32 2, label %bb.g
    i32 3, label %bb.h
    i32 10, label %bb.i
    i32 4, label %bb.j
    i32 5, label %bb.k
    i32 6, label %bb.l
    i32 9, label %bb.m
    i32 7, label %bb.n
    i32 8, label %bb.t
  ]

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %1, align 8, !tbaa !159, !nonnull !52, !align !135
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull @.str.25, i64 noundef 4) ; 0 uses
  br label %_ZN7msgpack2v124object_stringize_visitor13visit_booleanEb.exit

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.j = load i8, ptr %i.i, align 8, !tbaa !48, !range !51, !noundef !52
  %i.k = trunc nuw i8 %i.j to i1
  %i.l = load ptr, ptr %1, align 8, !tbaa !159, !nonnull !52, !align !135 ; 2 uses
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.m = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull @.str.26, i64 noundef 4) ; 0 uses
  br label %_ZN7msgpack2v124object_stringize_visitor13visit_booleanEb.exit

bb.f:                                             ; preds = %bb.d
  %i.n = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull @.str.27, i64 noundef 5) ; 0 uses
  br label %_ZN7msgpack2v124object_stringize_visitor13visit_booleanEb.exit

bb.g:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !48
  %i.q = load ptr, ptr %1, align 8, !tbaa !159, !nonnull !52, !align !135
  %i.r = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.q, i64 noundef %i.p) ; 0 uses
  br label %_ZN7msgpack2v124object_stringize_visitor13visit_booleanEb.exit

bb.h:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !48
  %i.u = load ptr, ptr %1, align 8, !tbaa !159, !nonnull !52, !align !135
  %i.v = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.u, i64 noundef %i.t) ; 0 uses
  br label %_ZN7msgpack2v124object_stringize_visitor13visit_booleanEb.exit

bb.i:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.x = load double, ptr %i.w, align 8, !tbaa !48
  %i.y = fptrunc double %i.x to float
  %i.z = load ptr, ptr %1, align 8, !tbaa !159, !nonnull !52, !align !135
  %i.aa = fpext float %i.y to double
  %i.ab = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.z, double noundef %i.aa) ; 0 uses
  br label %_ZN7msgpack2v124object_stringize_visitor13visit_booleanEb.exit

bb.j:                                             ; preds = %bb.b
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !48
  %i.ae = load ptr, ptr %1, align 8, !tbaa !159, !nonnull !52, !align !135
  %i.af = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ae, double noundef %i.ad) ; 0 uses
  br label %_ZN7msgpack2v124object_stringize_visitor13visit_booleanEb.exit

bb.k:                                             ; preds = %bb.b
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !48
  %i.aj = load i32, ptr %i.ag, align 8, !tbaa !48
  %i.ak = tail call noundef zeroext i1 @_ZN7msgpack2v124object_stringize_visitor9visit_strEPKcj(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %i.ai, i32 noundef %i.aj)
  br i1 %i.ak, label %_ZN7msgpack2v124object_stringize_visitor13visit_booleanEb.exit, label %_ZN7msgpack2v113object_parser4elem4nextINS0_24object_stringize_visitorEEENS1_8next_retERT_.exit.thread64

bb.l:                                             ; preds = %bb.b
  %i.al = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.am = load i32, ptr %i.al, align 8, !tbaa !48
  %i.an = load ptr, ptr %1, align 8, !tbaa !159, !nonnull !52, !align !135 ; 2 uses
  %i.ao = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.an, ptr noundef nonnull @.str.37, i64 noundef 10) ; 0 uses
  %i.ap = zext i32 %i.am to i64
  %i.aq = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.an, i64 noundef %i.ap)
  %i.ar = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noundef nonnull @.str.38, i64 noundef 2) ; 0 uses
  br label %_ZN7msgpack2v124object_stringize_visitor13visit_booleanEb.exit

bb.m:                                             ; preds = %bb.b
  %i.as = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.at = load i32, ptr %i.as, align 8, !tbaa !48
  %i.au = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !48
  %i.aw = zext i32 %i.at to i64
  %i.ax = load ptr, ptr %1, align 8, !tbaa !159, !nonnull !52, !align !135 ; 2 uses
  %i.ay = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ax, ptr noundef nonnull @.str.41, i64 noundef 10) ; 0 uses
  %i.az = load i8, ptr %i.av, align 1, !tbaa !48
  %i.ba = sext i8 %i.az to i32
  %i.bb = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.ax, i32 noundef %i.ba) ; 2 uses
  %i.bc = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bb, ptr noundef nonnull @.str.42, i64 noundef 6) ; 0 uses
  %i.bd = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.bb, i64 noundef %i.aw)
  %i.be = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bd, ptr noundef nonnull @.str.38, i64 noundef 2) ; 0 uses
  br label %_ZN7msgpack2v124object_stringize_visitor13visit_booleanEb.exit

bb.n:                                             ; preds = %bb.b
  %i.bf = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !48
  %i.bh = tail call noundef zeroext i1 @_ZN7msgpack2v124object_stringize_visitor11start_arrayEj(ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %i.bg)
  br i1 %i.bh, label %bb.o, label %_ZN7msgpack2v113object_parser4elem4nextINS0_24object_stringize_visitorEEENS1_8next_retERT_.exit.thread64

bb.o:                                             ; preds = %bb.n
  %i.bi = load ptr, ptr %0, align 8, !tbaa !65    ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !48 ; 2 uses
  %i.bm = load i32, ptr %i.bj, align 8, !tbaa !48
  %i.bn = zext i32 %i.bm to i64                   ; 2 uses
  %i.bo = load ptr, ptr %i.b, align 8, !tbaa !294 ; 8 uses
  %i.bp = load ptr, ptr %i.c, align 8, !tbaa !67
  %.not.i.i = icmp eq ptr %i.bo, %i.bp
  br i1 %.not.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  store ptr %i.bl, ptr %i.bo, align 8, !tbaa !48
  %.sroa.549.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store i64 %i.bn, ptr %.sroa.549.0..sroa_idx, align 8, !tbaa !57
  %.sroa.652.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  store i8 0, ptr %.sroa.652.0..sroa_idx, align 8, !tbaa !100
  %.sroa.755.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bo, i64 17
  store i8 0, ptr %.sroa.755.0..sroa_idx, align 1, !tbaa !100
  %i.bq = load ptr, ptr %i.b, align 8, !tbaa !294
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  store ptr %i.br, ptr %i.b, align 8, !tbaa !294
  br label %_ZNSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE9push_backEOS3_.exit

bb.q:                                             ; preds = %bb.o
  %i.bs = load ptr, ptr %i.a, align 8, !tbaa !66  ; 5 uses
  %i.bt = ptrtoint ptr %i.bo to i64
  %i.bu = ptrtoint ptr %i.bs to i64
  %i.bv = sub i64 %i.bt, %i.bu                    ; 4 uses
  %i.bw = icmp eq i64 %i.bv, 9223372036854775800
  br i1 %i.bw, label %bb.r, label %_ZNKSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.r:                                             ; preds = %bb.q
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.16) #23
  unreachable

_ZNKSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.q
  %i.bx = sdiv exact i64 %i.bv, 24                ; 2 uses
  %mul2.i.i.i = shl nsw i64 %i.bx, 1
  %2 = tail call i64 @llvm.umax.i64(i64 %mul2.i.i.i, i64 1) ; 2 uses
  %i.by = icmp ult i64 %2, %i.bx
  %i.bz = tail call i64 @llvm.umin.i64(i64 %2, i64 384307168202282325)
  %i.ca = select i1 %i.by, i64 384307168202282325, i64 %i.bz ; 2 uses
  %i.cb = mul nuw nsw i64 %i.ca, 24
  %i.cc = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cb) #29 ; 5 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.bv ; 4 uses
  store ptr %i.bl, ptr %i.cd, align 8, !tbaa !48
  %.sroa.549.0..sroa_idx50 = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  store i64 %i.bn, ptr %.sroa.549.0..sroa_idx50, align 8, !tbaa !57
  %.sroa.652.0..sroa_idx53 = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  store i8 0, ptr %.sroa.652.0..sroa_idx53, align 8, !tbaa !100
  %.sroa.755.0..sroa_idx56 = getelementptr inbounds nuw i8, ptr %i.cd, i64 17
  store i8 0, ptr %.sroa.755.0..sroa_idx56, align 1, !tbaa !100
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.bs, %i.bo
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNKSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.cf, %.lr.ph.i.i.i.i.i.i ], [ %i.cc, %_ZNKSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.ce, %.lr.ph.i.i.i.i.i.i ], [ %i.bs, %_ZNKSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !295, !alias.scope !296
  %i.ce = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ce, %i.bo
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !290

_ZNSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.cc, %_ZNKSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.cf, %.lr.ph.i.i.i.i.i.i ]
  %i.cg = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 24
  %.not.i23.i.i.i = icmp eq ptr %i.bs, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bs, i64 noundef %i.bv) #25
  br label %_ZNSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.s, %_ZNSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i
  store ptr %i.cc, ptr %i.a, align 8, !tbaa !66
  store ptr %i.cg, ptr %i.b, align 8, !tbaa !294
  %i.ch = getelementptr inbounds nuw [24 x i8], ptr %i.cc, i64 %i.ca
  store ptr %i.ch, ptr %i.c, align 8, !tbaa !67
  br label %_ZNSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE9push_backEOS3_.exit

_ZNSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE9push_backEOS3_.exit: ; preds = %bb.p, %_ZNSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i
  %i.ci = load ptr, ptr %0, align 8, !tbaa !65
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !48
  %i.cl = icmp ne i32 %i.ck, 0
  br label %_ZN7msgpack2v124object_stringize_visitor13visit_booleanEb.exit

bb.t:                                             ; preds = %bb.b
  %i.cm = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !48
  %i.co = tail call noundef zeroext i1 @_ZN7msgpack2v124object_stringize_visitor9start_mapEj(ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %i.cn)
  br i1 %i.co, label %bb.u, label %_ZN7msgpack2v113object_parser4elem4nextINS0_24object_stringize_visitorEEENS1_8next_retERT_.exit.thread64

bb.u:                                             ; preds = %bb.t
  %i.cp = load ptr, ptr %0, align 8, !tbaa !65    ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !48 ; 2 uses
  %i.ct = load i32, ptr %i.cq, align 8, !tbaa !48
  %i.cu = zext i32 %i.ct to i64                   ; 2 uses
  %i.cv = load ptr, ptr %i.b, align 8, !tbaa !294 ; 8 uses
  %i.cw = load ptr, ptr %i.c, align 8, !tbaa !67
  %.not.i.i23 = icmp eq ptr %i.cv, %i.cw
  br i1 %.not.i.i23, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  store ptr %i.cs, ptr %i.cv, align 8, !tbaa !48
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  store i64 %i.cu, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !57
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  store i8 1, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !100
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cv, i64 17
  store i8 1, ptr %.sroa.7.0..sroa_idx, align 1, !tbaa !100
  %i.cx = load ptr, ptr %i.b, align 8, !tbaa !294
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  store ptr %i.cy, ptr %i.b, align 8, !tbaa !294
  br label %_ZNSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE9push_backEOS3_.exit36

bb.w:                                             ; preds = %bb.u
  %i.cz = load ptr, ptr %i.a, align 8, !tbaa !66  ; 5 uses
  %i.da = ptrtoint ptr %i.cv to i64
  %i.db = ptrtoint ptr %i.cz to i64
  %i.dc = sub i64 %i.da, %i.db                    ; 4 uses
  %i.dd = icmp eq i64 %i.dc, 9223372036854775800
  br i1 %i.dd, label %bb.x, label %_ZNKSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i24

bb.x:                                             ; preds = %bb.w
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.16) #23
  unreachable

_ZNKSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i24: ; preds = %bb.w
  %i.de = sdiv exact i64 %i.dc, 24                ; 2 uses
  %mul2.i.i.i25 = shl nsw i64 %i.de, 1
  %3 = tail call i64 @llvm.umax.i64(i64 %mul2.i.i.i25, i64 1) ; 2 uses
  %i.df = icmp ult i64 %3, %i.de
  %i.dg = tail call i64 @llvm.umin.i64(i64 %3, i64 384307168202282325)
  %i.dh = select i1 %i.df, i64 384307168202282325, i64 %i.dg ; 2 uses
  %i.di = mul nuw nsw i64 %i.dh, 24
  %i.dj = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.di) #29 ; 5 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.dc ; 4 uses
  store ptr %i.cs, ptr %i.dk, align 8, !tbaa !48
  %.sroa.5.0..sroa_idx40 = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  store i64 %i.cu, ptr %.sroa.5.0..sroa_idx40, align 8, !tbaa !57
  %.sroa.6.0..sroa_idx42 = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  store i8 1, ptr %.sroa.6.0..sroa_idx42, align 8, !tbaa !100
  %.sroa.7.0..sroa_idx44 = getelementptr inbounds nuw i8, ptr %i.dk, i64 17
  store i8 1, ptr %.sroa.7.0..sroa_idx44, align 1, !tbaa !100
  %.not10.i.i.i.i.i.i27 = icmp eq ptr %i.cz, %i.cv
  br i1 %.not10.i.i.i.i.i.i27, label %_ZNSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i32, label %.lr.ph.i.i.i.i.i.i28

.lr.ph.i.i.i.i.i.i28:                             ; preds = %_ZNKSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i24, %.lr.ph.i.i.i.i.i.i28
  %.012.i.i.i.i.i.i29 = phi ptr [ %i.dm, %.lr.ph.i.i.i.i.i.i28 ], [ %i.dj, %_ZNKSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i24 ] ; 2 uses
  %.0911.i.i.i.i.i.i30 = phi ptr [ %i.dl, %.lr.ph.i.i.i.i.i.i28 ], [ %i.cz, %_ZNKSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i24 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i.i29, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i.i30, i64 24, i1 false), !tbaa.struct !295, !alias.scope !297
  %i.dl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i30, i64 24 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i29, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i31 = icmp eq ptr %i.dl, %i.cv
  br i1 %.not.i.i.i.i.i.i31, label %_ZNSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i32, label %.lr.ph.i.i.i.i.i.i28, !llvm.loop !290

_ZNSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i32: ; preds = %.lr.ph.i.i.i.i.i.i28, %_ZNKSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i24
  %.0.lcssa.i.i.i.i.i.i33 = phi ptr [ %i.dj, %_ZNKSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i24 ], [ %i.dm, %.lr.ph.i.i.i.i.i.i28 ]
  %i.dn = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i33, i64 24
  %.not.i23.i.i.i34 = icmp eq ptr %i.cz, null
  br i1 %.not.i23.i.i.i34, label %_ZNSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i35, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i32
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cz, i64 noundef %i.dc) #25
  br label %_ZNSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i35

_ZNSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i35: ; preds = %bb.y, %_ZNSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i32
  store ptr %i.dj, ptr %i.a, align 8, !tbaa !66
  store ptr %i.dn, ptr %i.b, align 8, !tbaa !294
  %i.do = getelementptr inbounds nuw [24 x i8], ptr %i.dj, i64 %i.dh
  store ptr %i.do, ptr %i.c, align 8, !tbaa !67
  br label %_ZNSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE9push_backEOS3_.exit36

_ZNSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE9push_backEOS3_.exit36: ; preds = %bb.v, %_ZNSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i35
  %i.dp = load ptr, ptr %0, align 8, !tbaa !65
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.dr = load i32, ptr %i.dq, align 8, !tbaa !48
  %i.ds = icmp ne i32 %i.dr, 0
  br label %_ZN7msgpack2v124object_stringize_visitor13visit_booleanEb.exit

bb.z:                                             ; preds = %bb.b
  %i.dt = tail call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7msgpack2v110type_errorE, i64 16), ptr %i.dt, align 8, !tbaa !23
  tail call void @__cxa_throw(ptr nonnull %i.dt, ptr nonnull @_ZTIN7msgpack2v110type_errorE, ptr nonnull @_ZNSt8bad_castD2Ev) #23
  unreachable

_ZN7msgpack2v124object_stringize_visitor13visit_booleanEb.exit: ; preds = %_ZNSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE9push_backEOS3_.exit36, %_ZNSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE9push_backEOS3_.exit, %bb.m, %bb.l, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.c, %bb.k
  %.021.shrunk = phi i1 [ false, %bb.c ], [ false, %bb.e ], [ false, %bb.g ], [ false, %bb.h ], [ false, %bb.i ], [ false, %bb.j ], [ false, %bb.k ], [ false, %bb.l ], [ false, %bb.m ], [ false, %bb.f ], [ %i.ds, %_ZNSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE9push_backEOS3_.exit36 ], [ %i.cl, %_ZNSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE9push_backEOS3_.exit ]
  %i.du = load ptr, ptr %i.a, align 8, !tbaa !298
  %i.dv = load ptr, ptr %i.b, align 8, !tbaa !298 ; 2 uses
  %i.dw = icmp eq ptr %i.du, %i.dv
  br i1 %i.dw, label %_ZN7msgpack2v113object_parser4elem4nextINS0_24object_stringize_visitorEEENS1_8next_retERT_.exit.thread64, label %bb.aa

bb.aa:                                            ; preds = %_ZN7msgpack2v124object_stringize_visitor13visit_booleanEb.exit
  br i1 %.021.shrunk, label %_ZN7msgpack2v113object_parser4elem4nextINS0_24object_stringize_visitorEEENS1_8next_retERT_.exit.thread62, label %_ZN7msgpack2v113object_parser4elem4nextINS0_24object_stringize_visitorEEENS1_8next_retERT_.exit

_ZN7msgpack2v113object_parser4elem4nextINS0_24object_stringize_visitorEEENS1_8next_retERT_.exit: ; preds = %bb.aa, %bb.ap
  %i.dx = phi ptr [ %i.fx, %bb.ap ], [ %i.dv, %bb.aa ] ; 7 uses
  %i.dy = getelementptr inbounds i8, ptr %i.dx, i64 -16 ; 5 uses
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !300 ; 3 uses
  %i.ea = icmp eq i64 %i.dz, 0
  %i.eb = getelementptr inbounds i8, ptr %i.dx, i64 -8
  %i.ec = load i8, ptr %i.eb, align 8, !tbaa !301, !range !51, !noundef !52
  %i.ed = trunc nuw i8 %i.ec to i1                ; 2 uses
  br i1 %i.ea, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %_ZN7msgpack2v113object_parser4elem4nextINS0_24object_stringize_visitorEEENS1_8next_retERT_.exit
  %i.ee = load ptr, ptr %i.d, align 8, !tbaa !160
  %i.ef = getelementptr inbounds i8, ptr %i.ee, i64 -4
  store ptr %i.ef, ptr %i.d, align 8, !tbaa !160
  %i.eg = load ptr, ptr %1, align 8, !tbaa !159, !nonnull !52, !align !135 ; 2 uses
  br i1 %i.ed, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.eh = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.eg, ptr noundef nonnull @.str.45, i64 noundef 1) ; 0 uses
  br label %bb.ap

bb.ad:                                            ; preds = %bb.ab
  %i.ei = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.eg, ptr noundef nonnull @.str.46, i64 noundef 1) ; 0 uses
  br label %bb.ap

bb.ae:                                            ; preds = %_ZN7msgpack2v113object_parser4elem4nextINS0_24object_stringize_visitorEEENS1_8next_retERT_.exit
  br i1 %i.ed, label %bb.af, label %bb.al

bb.af:                                            ; preds = %bb.ae
  %i.ej = getelementptr inbounds i8, ptr %i.dx, i64 -7
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !302, !range !51, !noundef !52
  %i.el = trunc nuw i8 %i.ek to i1
  br i1 %i.el, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.em = getelementptr inbounds i8, ptr %i.dx, i64 -7
  %i.en = load ptr, ptr %1, align 8, !tbaa !159, !nonnull !52, !align !135
  %i.eo = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.en, ptr noundef nonnull @.str.47, i64 noundef 1) ; 0 uses
  store i8 0, ptr %i.em, align 1, !tbaa !302
  br label %_ZN7msgpack2v113object_parser4elem4nextINS0_24object_stringize_visitorEEENS1_8next_retERT_.exit.thread62

bb.ah:                                            ; preds = %bb.af
  %i.ep = load ptr, ptr %i.d, align 8, !tbaa !74
  %i.eq = getelementptr inbounds i8, ptr %i.ep, i64 -4 ; 2 uses
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !142
  %i.es = add i32 %i.er, -1                       ; 2 uses
  store i32 %i.es, ptr %i.eq, align 4, !tbaa !142
  %.not.i.i37 = icmp eq i32 %i.es, 0
  br i1 %.not.i.i37, label %_ZN7msgpack2v124object_stringize_visitor13end_map_valueEv.exit.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.et = load ptr, ptr %1, align 8, !tbaa !159, !nonnull !52, !align !135
  %i.eu = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.et, ptr noundef nonnull @.str.48, i64 noundef 1) ; 0 uses
  %.pre13.i = load i64, ptr %i.dy, align 8, !tbaa !300
  br label %_ZN7msgpack2v124object_stringize_visitor13end_map_valueEv.exit.i

_ZN7msgpack2v124object_stringize_visitor13end_map_valueEv.exit.i: ; preds = %bb.ai, %bb.ah
  %i.ev = phi i64 [ %.pre13.i, %bb.ai ], [ %i.dz, %bb.ah ]
  %i.ew = add i64 %i.ev, -1                       ; 2 uses
  store i64 %i.ew, ptr %i.dy, align 8, !tbaa !300
  %i.ex = icmp eq i64 %i.ew, 0
  br i1 %i.ex, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %_ZN7msgpack2v124object_stringize_visitor13end_map_valueEv.exit.i
  %i.ey = load ptr, ptr %i.d, align 8, !tbaa !160
  %i.ez = getelementptr inbounds i8, ptr %i.ey, i64 -4
  store ptr %i.ez, ptr %i.d, align 8, !tbaa !160
  %i.fa = load ptr, ptr %1, align 8, !tbaa !159, !nonnull !52, !align !135
  %i.fb = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fa, ptr noundef nonnull @.str.45, i64 noundef 1) ; 0 uses
  br label %bb.ap

bb.ak:                                            ; preds = %_ZN7msgpack2v124object_stringize_visitor13end_map_valueEv.exit.i
  %i.fc = getelementptr inbounds i8, ptr %i.dx, i64 -7
  %i.fd = getelementptr inbounds i8, ptr %i.dx, i64 -24 ; 2 uses
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !48
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 48
  store ptr %i.ff, ptr %i.fd, align 8, !tbaa !48
  store i8 1, ptr %i.fc, align 1, !tbaa !302
  br label %_ZN7msgpack2v113object_parser4elem4nextINS0_24object_stringize_visitorEEENS1_8next_retERT_.exit.thread62

bb.al:                                            ; preds = %bb.ae
  %i.fg = load ptr, ptr %i.d, align 8, !tbaa !74
  %i.fh = getelementptr inbounds i8, ptr %i.fg, i64 -4 ; 2 uses
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !142
  %i.fj = add i32 %i.fi, -1                       ; 2 uses
  store i32 %i.fj, ptr %i.fh, align 4, !tbaa !142
  %.not.i12.i = icmp eq i32 %i.fj, 0
  br i1 %.not.i12.i, label %_ZN7msgpack2v124object_stringize_visitor14end_array_itemEv.exit.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.fk = load ptr, ptr %1, align 8, !tbaa !159, !nonnull !52, !align !135
  %i.fl = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fk, ptr noundef nonnull @.str.48, i64 noundef 1) ; 0 uses
  %.pre.i = load i64, ptr %i.dy, align 8, !tbaa !300
  br label %_ZN7msgpack2v124object_stringize_visitor14end_array_itemEv.exit.i

_ZN7msgpack2v124object_stringize_visitor14end_array_itemEv.exit.i: ; preds = %bb.am, %bb.al
  %i.fm = phi i64 [ %.pre.i, %bb.am ], [ %i.dz, %bb.al ]
  %i.fn = add i64 %i.fm, -1                       ; 2 uses
  store i64 %i.fn, ptr %i.dy, align 8, !tbaa !300
  %i.fo = icmp eq i64 %i.fn, 0
  br i1 %i.fo, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %_ZN7msgpack2v124object_stringize_visitor14end_array_itemEv.exit.i
  %i.fp = load ptr, ptr %i.d, align 8, !tbaa !160
  %i.fq = getelementptr inbounds i8, ptr %i.fp, i64 -4
  store ptr %i.fq, ptr %i.d, align 8, !tbaa !160
  %i.fr = load ptr, ptr %1, align 8, !tbaa !159, !nonnull !52, !align !135
  %i.fs = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fr, ptr noundef nonnull @.str.46, i64 noundef 1) ; 0 uses
  br label %bb.ap

bb.ao:                                            ; preds = %_ZN7msgpack2v124object_stringize_visitor14end_array_itemEv.exit.i
  %i.ft = getelementptr inbounds i8, ptr %i.dx, i64 -24 ; 2 uses
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !48
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 24
  store ptr %i.fv, ptr %i.ft, align 8, !tbaa !48
  br label %_ZN7msgpack2v113object_parser4elem4nextINS0_24object_stringize_visitorEEENS1_8next_retERT_.exit.thread62

bb.ap:                                            ; preds = %bb.ad, %bb.aj, %bb.ac, %bb.an
  %i.fw = load ptr, ptr %i.b, align 8, !tbaa !294
  %i.fx = getelementptr inbounds i8, ptr %i.fw, i64 -24 ; 3 uses
  store ptr %i.fx, ptr %i.b, align 8, !tbaa !294
  %i.fy = load ptr, ptr %i.a, align 8, !tbaa !298
  %i.fz = icmp eq ptr %i.fy, %i.fx
  br i1 %i.fz, label %_ZN7msgpack2v113object_parser4elem4nextINS0_24object_stringize_visitorEEENS1_8next_retERT_.exit.thread64, label %_ZN7msgpack2v113object_parser4elem4nextINS0_24object_stringize_visitorEEENS1_8next_retERT_.exit

_ZN7msgpack2v113object_parser4elem4nextINS0_24object_stringize_visitorEEENS1_8next_retERT_.exit.thread62: ; preds = %bb.ak, %bb.ag, %bb.ao, %bb.aa
  %i.ga = load ptr, ptr %i.b, align 8, !tbaa !298 ; 3 uses
  %i.gb = getelementptr inbounds i8, ptr %i.ga, i64 -24
  %i.gc = getelementptr inbounds i8, ptr %i.ga, i64 -8
  %i.gd = load i8, ptr %i.gc, align 8, !tbaa !301, !range !51, !noundef !52
  %i.ge = trunc nuw i8 %i.gd to i1
  %i.gf = load ptr, ptr %i.gb, align 8
  %i.gg = getelementptr inbounds i8, ptr %i.ga, i64 -7
  %i.gh = load i8, ptr %i.gg, align 1, !range !51
  %i.gi = trunc nuw i8 %i.gh to i1
  %i.gj = xor i1 %i.gi, true
  %i.gk = select i1 %i.ge, i1 %i.gj, i1 false
  %.0.idx.i = select i1 %i.gk, i64 24, i64 0
end_hunk_1
begin_hunk_2_@_ZN7msgpack2v124object_stringize_visitor9visit_strEPKcj:bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load i64, ptr %i.r, align 8, !tbaa !49
  %.not.i14 = icmp eq i64 %i.s, 0
  br i1 %.not.i14, label %bb.e, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.t = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull %i.b, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit16

bb.e:                                             ; preds = %._crit_edge
  %i.u = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.m, i8 noundef signext 34) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit16

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit16: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 true

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.v
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.v ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.w = load i8, ptr %i.v, align 1, !tbaa !48    ; 6 uses
  switch i8 %i.w, label %bb.n [
    i8 92, label %bb.f
    i8 34, label %bb.g
    i8 47, label %bb.h
    i8 8, label %bb.i
    i8 12, label %bb.j
    i8 10, label %bb.k
    i8 13, label %bb.l
    i8 9, label %bb.m
  ]

bb.f:                                             ; preds = %.lr.ph
  %i.x = load ptr, ptr %0, align 8, !tbaa !159, !nonnull !52, !align !135
  %i.y = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.x, ptr noundef nonnull @.str.28, i64 noundef 2) ; 0 uses
  br label %bb.v

bb.g:                                             ; preds = %.lr.ph
  %i.z = load ptr, ptr %0, align 8, !tbaa !159, !nonnull !52, !align !135
  %i.aa = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.z, ptr noundef nonnull @.str.29, i64 noundef 2) ; 0 uses
  br label %bb.v

bb.h:                                             ; preds = %.lr.ph
  %i.ab = load ptr, ptr %0, align 8, !tbaa !159, !nonnull !52, !align !135
  %i.ac = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, ptr noundef nonnull @.str.30, i64 noundef 2) ; 0 uses
  br label %bb.v

bb.i:                                             ; preds = %.lr.ph
  %i.ad = load ptr, ptr %0, align 8, !tbaa !159, !nonnull !52, !align !135
  %i.ae = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ad, ptr noundef nonnull @.str.31, i64 noundef 2) ; 0 uses
  br label %bb.v

bb.j:                                             ; preds = %.lr.ph
  %i.af = load ptr, ptr %0, align 8, !tbaa !159, !nonnull !52, !align !135
  %i.ag = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.af, ptr noundef nonnull @.str.32, i64 noundef 2) ; 0 uses
  br label %bb.v

bb.k:                                             ; preds = %.lr.ph
  %i.ah = load ptr, ptr %0, align 8, !tbaa !159, !nonnull !52, !align !135
  %i.ai = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ah, ptr noundef nonnull @.str.33, i64 noundef 2) ; 0 uses
  br label %bb.v

bb.l:                                             ; preds = %.lr.ph
  %i.aj = load ptr, ptr %0, align 8, !tbaa !159, !nonnull !52, !align !135
  %i.ak = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aj, ptr noundef nonnull @.str.34, i64 noundef 2) ; 0 uses
  br label %bb.v

bb.m:                                             ; preds = %.lr.ph
  %i.al = load ptr, ptr %0, align 8, !tbaa !159, !nonnull !52, !align !135
  %i.am = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.al, ptr noundef nonnull @.str.35, i64 noundef 2) ; 0 uses
  br label %bb.v

bb.n:                                             ; preds = %.lr.ph
  %i.an = icmp ult i8 %i.w, 32
  %i.ao = icmp eq i8 %i.w, 127
  %or.cond = or i1 %i.an, %i.ao
  %i.ap = load ptr, ptr %0, align 8, !tbaa !159, !nonnull !52, !align !135 ; 12 uses
  br i1 %or.cond, label %bb.o, label %bb.s

bb.o:                                             ; preds = %bb.n
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !23
  %i.ar = getelementptr i8, ptr %i.aq, i64 -24
  %i.as = load i64, ptr %i.ar, align 8
  %i.at = getelementptr inbounds i8, ptr %i.ap, i64 %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.av = load i32, ptr %i.au, align 8, !tbaa !32
  %i.aw = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ap, ptr noundef nonnull @.str.36, i64 noundef 2) ; 0 uses
  %i.ax = load ptr, ptr %i.ap, align 8, !tbaa !23
  %i.ay = getelementptr i8, ptr %i.ax, i64 -24    ; 3 uses
  %i.az = load i64, ptr %i.ay, align 8
  %i.ba = getelementptr inbounds i8, ptr %i.ap, i64 %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 24 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !32
  %i.bd = and i32 %i.bc, -75
  %i.be = or disjoint i32 %i.bd, 8
  store i32 %i.be, ptr %i.bb, align 8, !tbaa !33
  %i.bf = load i64, ptr %i.ay, align 8
  %i.bg = getelementptr inbounds i8, ptr %i.ap, i64 %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  store i64 4, ptr %i.bh, align 8, !tbaa !49
  %i.bi = load i64, ptr %i.ay, align 8
  %i.bj = getelementptr inbounds i8, ptr %i.ap, i64 %i.bi ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 225 ; 2 uses
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !50, !range !51, !noundef !52
  %i.bm = trunc nuw i8 %i.bl to i1
  br i1 %i.bm, label %_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St8_SetfillIS3_E.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 240
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !41 ; 5 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i.i.i, label %bb.q, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i

bb.q:                                             ; preds = %bb.p
  call void @_ZSt16__throw_bad_castv() #23
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i: ; preds = %bb.p
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 56
  %i.bq = load i8, ptr %i.bp, align 8, !tbaa !47
  %.not.i1.i.i.i.i = icmp eq i8 %i.bq, 0
  br i1 %.not.i1.i.i.i.i, label %bb.r, label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i

bb.r:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.bo)
  %i.br = load ptr, ptr %i.bo, align 8, !tbaa !23
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 48
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = call noundef signext i8 %i.bt(ptr noundef nonnull align 8 dereferenceable(570) %i.bo, i8 noundef signext 32), !inline_history !0 ; 0 uses
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i: ; preds = %bb.r, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i
  store i8 1, ptr %i.bk, align 1, !tbaa !50
  br label %_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St8_SetfillIS3_E.exit

_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St8_SetfillIS3_E.exit: ; preds = %bb.o, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bj, i64 224
  store i8 48, ptr %i.bv, align 8, !tbaa !53
  %i.bw = zext nneg i8 %i.w to i64
  %i.bx = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ap, i64 noundef %i.bw) ; 0 uses
  %i.by = load ptr, ptr %0, align 8, !tbaa !159, !nonnull !52, !align !135 ; 2 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !23
  %i.ca = getelementptr i8, ptr %i.bz, i64 -24
  %i.cb = load i64, ptr %i.ca, align 8
  %i.cc = getelementptr inbounds i8, ptr %i.by, i64 %i.cb
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  store i32 %i.av, ptr %i.cd, align 8, !tbaa !32
  br label %bb.v

bb.s:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %i.w, ptr %i.a, align 1, !tbaa !48
  %i.ce = load ptr, ptr %i.ap, align 8, !tbaa !23
  %i.cf = getelementptr i8, ptr %i.ce, i64 -24
  %i.cg = load i64, ptr %i.cf, align 8
  %i.ch = getelementptr inbounds i8, ptr %i.ap, i64 %i.cg
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !49
  %.not.i17 = icmp eq i64 %i.cj, 0
  br i1 %.not.i17, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ck = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ap, ptr noundef nonnull %i.a, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit19

bb.u:                                             ; preds = %bb.s
  %i.cl = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ap, i8 noundef signext %i.w) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit19

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit19: ; preds = %bb.t, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.v

bb.v:                                             ; preds = %_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St8_SetfillIS3_E.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit19, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !303
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN7msgpack2v124object_stringize_visitor11start_arrayEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !160  ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !70
  %.not.i = icmp eq ptr %i.c, %i.e
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 %1, ptr %i.c, align 4, !tbaa !142
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store ptr %i.f, ptr %i.b, align 8, !tbaa !160
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !69   ; 4 uses
  %i.h = ptrtoint ptr %i.c to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i                       ; 7 uses
  %i.k = icmp eq i64 %i.j, 9223372036854775804
  br i1 %i.k, label %bb.d, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.16) #23
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.l = ashr exact i64 %i.j, 2
  %mul2.i.i = ashr exact i64 %i.j, 1
  %2 = tail call i64 @llvm.umax.i64(i64 %mul2.i.i, i64 1) ; 2 uses
  %i.m = icmp ult i64 %2, %i.l
  %i.n = tail call i64 @llvm.umin.i64(i64 %2, i64 2305843009213693951)
  %i.o = select i1 %i.m, i64 2305843009213693951, i64 %i.n ; 2 uses
  %i.p = shl nuw nsw i64 %i.o, 2
  %i.q = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #29 ; 4 uses
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 %i.j ; 2 uses
  store i32 %1, ptr %i.r, align 4, !tbaa !142
  %i.s = icmp sgt i64 %i.j, 0
  br i1 %i.s, label %bb.e, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

bb.e:                                             ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.q, ptr align 4 %i.g, i64 %i.j, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i: ; preds = %bb.e, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %.not.i17.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.j) #25
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i: ; preds = %bb.f, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  store ptr %i.q, ptr %i.a, align 8, !tbaa !69
  store ptr %i.t, ptr %i.b, align 8, !tbaa !160
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.o
  store ptr %i.u, ptr %i.d, align 8, !tbaa !70
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

_ZNSt6vectorIjSaIjEE9push_backERKj.exit:          ; preds = %bb.b, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i
  %i.v = load ptr, ptr %0, align 8, !tbaa !159, !nonnull !52, !align !135
  %i.w = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.v, ptr noundef nonnull @.str.43, i64 noundef 1) ; 0 uses
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN7msgpack2v124object_stringize_visitor9start_mapEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !160  ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !70
  %.not.i = icmp eq ptr %i.c, %i.e
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 %1, ptr %i.c, align 4, !tbaa !142
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store ptr %i.f, ptr %i.b, align 8, !tbaa !160
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !69   ; 4 uses
  %i.h = ptrtoint ptr %i.c to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i                       ; 7 uses
  %i.k = icmp eq i64 %i.j, 9223372036854775804
  br i1 %i.k, label %bb.d, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.16) #23
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.l = ashr exact i64 %i.j, 2
  %mul2.i.i = ashr exact i64 %i.j, 1
  %2 = tail call i64 @llvm.umax.i64(i64 %mul2.i.i, i64 1) ; 2 uses
  %i.m = icmp ult i64 %2, %i.l
  %i.n = tail call i64 @llvm.umin.i64(i64 %2, i64 2305843009213693951)
  %i.o = select i1 %i.m, i64 2305843009213693951, i64 %i.n ; 2 uses
  %i.p = shl nuw nsw i64 %i.o, 2
  %i.q = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #29 ; 4 uses
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 %i.j ; 2 uses
  store i32 %1, ptr %i.r, align 4, !tbaa !142
  %i.s = icmp sgt i64 %i.j, 0
  br i1 %i.s, label %bb.e, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

bb.e:                                             ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.q, ptr align 4 %i.g, i64 %i.j, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i: ; preds = %bb.e, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %.not.i17.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.j) #25
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i: ; preds = %bb.f, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  store ptr %i.q, ptr %i.a, align 8, !tbaa !69
  store ptr %i.t, ptr %i.b, align 8, !tbaa !160
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.o
  store ptr %i.u, ptr %i.d, align 8, !tbaa !70
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

_ZNSt6vectorIjSaIjEE9push_backERKj.exit:          ; preds = %bb.b, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i
  %i.v = load ptr, ptr %0, align 8, !tbaa !159, !nonnull !52, !align !135
  %i.w = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.v, ptr noundef nonnull @.str.44, i64 noundef 1) ; 0 uses
  ret i1 true
}

; Function Attrs: nounwind
declare void @_ZNSt8bad_castD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #15

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7msgpack2v123container_size_overflowC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZNSt13runtime_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7msgpack2v123container_size_overflowE, i64 16), ptr %0, align 8, !tbaa !23
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #15

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7msgpack2v123container_size_overflowD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #24
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #25
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7msgpack2v110type_errorD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @_ZNSt8bad_castD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #24
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #25
  ret void
}

; Function Attrs: nounwind
declare noundef ptr @_ZNKSt8bad_cast4whatEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #15

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #8

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #15

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #15

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK2v112msgpack_packIN7msgpack2v16packerINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEEEEvRT_(ptr noundef nonnull align 8 dereferenceable(68) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.msgpack::v3::adaptor::pack.64", align 1 ; 3 uses
  %3 = alloca %"struct.msgpack::v3::adaptor::pack.61", align 1 ; 3 uses
  %4 = alloca %"struct.msgpack::v3::adaptor::pack.58", align 1 ; 3 uses
  %5 = alloca %"struct.msgpack::v3::adaptor::pack.61", align 1 ; 3 uses
  %6 = alloca %"struct.msgpack::v3::adaptor::pack.55", align 1 ; 3 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %7 = alloca %"struct.msgpack::v3::adaptor::pack.43", align 1 ; 3 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  store i8 -125, ptr %i.b, align 1, !tbaa !48
  %i.e = load ptr, ptr %1, align 8, !tbaa !162, !nonnull !52, !align !135
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull %i.b, i64 noundef 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %i.h = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK7msgpack2v17adaptor4packIA6_cvEclINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEERNS0_6packerIT_EESF_RA6_Kc(ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(6) @.str.49) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i8 -127, ptr %i.a, align 1, !tbaa !48
  %i.i = load ptr, ptr %1, align 8, !tbaa !162, !nonnull !52, !align !135
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull %i.a, i64 noundef 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %i.l = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK7msgpack2v17adaptor4packIA2_cvEclINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEERNS0_6packerIT_EESF_RA2_Kc(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(2) @.str.52) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.m = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK7msgpack2v17adaptor4packINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEclINS3_18basic_stringstreamIcS6_S7_EEEERNS0_6packerIT_EESG_RKS8_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.n = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK7msgpack2v17adaptor4packIA5_cvEclINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEERNS0_6packerIT_EESF_RA5_Kc(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(5) @.str.50) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.o = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK7msgpack2v17adaptor4packINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEclINS3_18basic_stringstreamIcS6_S7_EEEERNS0_6packerIT_EESG_RKS8_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.c) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.p = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK7msgpack2v17adaptor4packIA4_cvEclINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEERNS0_6packerIT_EESF_RA4_Kc(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(4) @.str.51) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  %i.q = load i32, ptr %i.d, align 8, !tbaa !142
  call void @_ZN7msgpack2v16packerINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEE14pack_imp_int32IiEEvT_(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %i.q)
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNK7msgpack2v17adaptor4packIA6_cvEclINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEERNS0_6packerIT_EESF_RA6_Kc(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(6) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca [2 x i8], align 1                 ; 5 uses
  %i.c = alloca [3 x i8], align 1                 ; 5 uses
  %i.d = alloca [5 x i8], align 1                 ; 5 uses
  %i.e = tail call noundef ptr @memchr(ptr noundef nonnull dereferenceable(1) %2, i32 noundef 0, i64 noundef 6) #30 ; 2 uses
  %.not = icmp eq ptr %i.e, null
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %2 to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = trunc i64 %i.h to i32
  %i.j = select i1 %.not, i32 6, i32 %i.i         ; 8 uses
  %i.k = icmp ult i32 %i.j, 32
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = trunc nuw nsw i32 %i.j to i8
  %i.m = or disjoint i8 %i.l, -96
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i8 %i.m, ptr %i.a, align 1, !tbaa !48
  %i.n = load ptr, ptr %1, align 8, !tbaa !162, !nonnull !52, !align !135
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull %i.a, i64 noundef 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %_ZN7msgpack2v16packerINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEE8pack_strEj.exit

bb.c:                                             ; preds = %bb.a
  %i.q = icmp ult i32 %i.j, 256
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  store i8 -39, ptr %i.b, align 1, !tbaa !48
  %i.r = trunc nuw i32 %i.j to i8
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %i.r, ptr %i.s, align 1, !tbaa !48
  %i.t = load ptr, ptr %1, align 8, !tbaa !162, !nonnull !52, !align !135
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.u, ptr noundef nonnull %i.b, i64 noundef 2) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  br label %_ZN7msgpack2v16packerINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEE8pack_strEj.exit

bb.e:                                             ; preds = %bb.c
  %i.w = icmp ult i32 %i.j, 65536
  br i1 %i.w, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  store i8 -38, ptr %i.c, align 1, !tbaa !48
  %i.x = trunc nuw i32 %i.j to i16
  %rev.i.i = tail call noundef i16 @llvm.bswap.i16(i16 %i.x)
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store i16 %rev.i.i, ptr %i.y, align 1
  %i.z = load ptr, ptr %1, align 8, !tbaa !162, !nonnull !52, !align !135
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.aa, ptr noundef nonnull %i.c, i64 noundef 3) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  br label %_ZN7msgpack2v16packerINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEE8pack_strEj.exit

end_hunk_2
