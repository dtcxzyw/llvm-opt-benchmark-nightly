inline.NumInlined: 36272
inline.NumDeleted: 7699
begin_hunk_0_@_ZN3fmt3v116detail16get_dynamic_specINS0_15generic_contextISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEcEEEEiNS0_11arg_id_kindERKNS1_7arg_refINT_9char_typeEEERSF_
define linkonce_odr noundef i32 @_ZN3fmt3v116detail16get_dynamic_specINS0_15generic_contextISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEcEEEEiNS0_11arg_id_kindERKNS1_7arg_refINT_9char_typeEEERSF_(i32 noundef %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = icmp eq i32 %0, 1
  br i1 %i.a, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %1, align 8, !tbaa !37     ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !1542, !noalias !1544 ; 3 uses
  %i.e = icmp sgt i64 %i.d, -1
  br i1 %i.e, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = trunc i64 %i.d to i32
  %i.g = icmp slt i32 %i.b, %i.f
  br i1 %i.g, label %bb.d, label %_ZNK3fmt3v1115generic_contextISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEcE3argEi.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !37, !noalias !1544
  %i.j = sext i32 %i.b to i64
  %i.k = getelementptr inbounds [32 x i8], ptr %i.i, i64 %i.j
  br label %_ZNK3fmt3v1115generic_contextISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEcE3argEi.exit

bb.e:                                             ; preds = %bb.b
  %i.l = icmp ugt i32 %i.b, 14
  br i1 %i.l, label %_ZNK3fmt3v1115generic_contextISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEcE3argEi.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = shl nuw nsw i32 %i.b, 2
  %i.n = zext nneg i32 %i.m to i64
  %i.o = lshr i64 %i.d, %i.n
  %i.p = trunc i64 %i.o to i32
  %i.q = and i32 %i.p, 15                         ; 2 uses
  %.not.i.i = icmp eq i32 %i.q, 0
  br i1 %.not.i.i, label %_ZNK3fmt3v1115generic_contextISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEcE3argEi.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !37, !noalias !1544
  br label %_ZNK3fmt3v1115generic_contextISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEcE3argEi.exit.thread35.sink.split

bb.h:                                             ; preds = %bb.a
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !tbaa !241
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !163 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !1542, !noalias !1549 ; 5 uses
  %i.v = and i64 %i.u, 4611686018427387904
  %.not13.i.i.i = icmp eq i64 %i.v, 0
  br i1 %.not13.i.i.i, label %_ZNK3fmt3v1115generic_contextISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEcE3argEi.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !noalias !1549 ; 3 uses
  %i.y = icmp slt i64 %i.u, 0
  %.v.i.i.i = select i1 %i.y, i64 -32, i64 -16
  %i.z = getelementptr inbounds i8, ptr %i.x, i64 %.v.i.i.i ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !1554, !noalias !1549 ; 2 uses
  %.not14.not.i.i.i = icmp eq i64 %i.ab, 0
  br i1 %.not14.not.i.i.i, label %_ZNK3fmt3v1115generic_contextISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEcE3argEi.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.i
  %i.ac = load ptr, ptr %i.z, align 8, !tbaa !1557, !noalias !1549
  br label %bb.k

bb.j:                                             ; preds = %bb.k
  %i.ad = add nuw i64 %.01115.i.i.i, 1            ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.ad, %i.ab
  br i1 %exitcond.not.i.i.i, label %_ZNK3fmt3v1115generic_contextISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEcE3argEi.exit.thread, label %bb.k, !llvm.loop !1558

bb.k:                                             ; preds = %bb.j, %.lr.ph.i.i.i
  %.01115.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.ad, %bb.j ] ; 2 uses
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %i.ac, i64 %.01115.i.i.i ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !1559, !noalias !1549 ; 2 uses
  %i.ag = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.af) #38, !noalias !1549 ; 2 uses
  %i.ah = tail call noundef i64 @llvm.umin.i64(i64 %i.ag, i64 %.sroa.2.0.copyload)
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr nonnull %i.af, ptr %.sroa.0.0.copyload, i64 %i.ah), !noalias !1549
  %.not.i.i.i.i.i = icmp eq i32 %bcmp.i.i.i.i, 0
  %i.ai = icmp eq i64 %i.ag, %.sroa.2.0.copyload
  %i.aj = select i1 %.not.i.i.i.i.i, i1 %i.ai, i1 false
  br i1 %i.aj, label %_ZNK3fmt3v1117basic_format_argsINS0_15generic_contextISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEcEEE6get_idIcEEiNS0_17basic_string_viewIT_EE.exit.i.i, label %bb.j

_ZNK3fmt3v1117basic_format_argsINS0_15generic_contextISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEcEEE6get_idIcEEiNS0_17basic_string_viewIT_EE.exit.i.i: ; preds = %bb.k
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !1561, !noalias !1549 ; 6 uses
  %i.am = icmp sgt i32 %i.al, -1
  br i1 %i.am, label %bb.l, label %_ZNK3fmt3v1115generic_contextISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEcE3argEi.exit.thread

bb.l:                                             ; preds = %_ZNK3fmt3v1117basic_format_argsINS0_15generic_contextISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEcEEE6get_idIcEEiNS0_17basic_string_viewIT_EE.exit.i.i
  %i.an = icmp sgt i64 %i.u, -1
  br i1 %i.an, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ao = trunc i64 %i.u to i32
  %i.ap = icmp slt i32 %i.al, %i.ao
  br i1 %i.ap, label %bb.n, label %_ZNK3fmt3v1115generic_contextISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEcE3argEi.exit.thread

bb.n:                                             ; preds = %bb.m
  %i.aq = zext nneg i32 %i.al to i64
  %i.ar = getelementptr inbounds nuw [32 x i8], ptr %i.x, i64 %i.aq
  br label %_ZNK3fmt3v1115generic_contextISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEcE3argEi.exit

bb.o:                                             ; preds = %bb.l
  %i.as = icmp samesign ugt i32 %i.al, 14
  br i1 %i.as, label %_ZNK3fmt3v1115generic_contextISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEcE3argEi.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.at = shl nuw nsw i32 %i.al, 2
  %i.au = zext nneg i32 %i.at to i64
  %i.av = lshr i64 %i.u, %i.au
  %i.aw = trunc i64 %i.av to i32
  %i.ax = and i32 %i.aw, 15                       ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.ax, 0
  br i1 %.not.i.i.i, label %_ZNK3fmt3v1115generic_contextISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEcE3argEi.exit.thread, label %_ZNK3fmt3v1115generic_contextISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEcE3argEi.exit.thread35.sink.split

_ZNK3fmt3v1115generic_contextISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEcE3argEi.exit: ; preds = %bb.n, %bb.d
  %storemerge.in = phi ptr [ %i.ar, %bb.n ], [ %i.k, %bb.d ] ; 2 uses
  %storemerge = load i128, ptr %storemerge.in, align 16, !tbaa !37 ; 3 uses
  %.sroa.08.sroa.0.sroa.0.0.extract.trunc71 = trunc i128 %storemerge to i32
  %.sroa.08.sroa.0.sroa.11.0.extract.shift8698 = lshr i128 %storemerge, 32
  %.sroa.08.sroa.0.sroa.11.0.extract.trunc87 = trunc i128 %.sroa.08.sroa.0.sroa.11.0.extract.shift8698 to i32
  %.sroa.08.sroa.11.0.extract.shift59 = lshr i128 %storemerge, 64
  %.sroa.08.sroa.11.0.extract.trunc60 = trunc nuw i128 %.sroa.08.sroa.11.0.extract.shift59 to i64
  %.sroa.23.0.in = getelementptr inbounds nuw i8, ptr %storemerge.in, i64 16
  %.sroa.23.0 = load i32, ptr %.sroa.23.0.in, align 16, !tbaa !1562 ; 2 uses
  %.not = icmp eq i32 %.sroa.23.0, 0
  br i1 %.not, label %_ZNK3fmt3v1115generic_contextISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEcE3argEi.exit.thread, label %_ZNK3fmt3v1115generic_contextISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEcE3argEi.exit.thread35

_ZNK3fmt3v1115generic_contextISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEcE3argEi.exit.thread: ; preds = %bb.j, %bb.h, %bb.i, %_ZNK3fmt3v1117basic_format_argsINS0_15generic_contextISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEcEEE6get_idIcEEiNS0_17basic_string_viewIT_EE.exit.i.i, %bb.p, %bb.o, %bb.m, %bb.f, %bb.e, %bb.c, %_ZNK3fmt3v1115generic_contextISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEcE3argEi.exit
  tail call void @_ZN3fmt3v1112report_errorEPKc(ptr noundef nonnull @.str.79) #46
  unreachable

_ZNK3fmt3v1115generic_contextISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEcE3argEi.exit.thread35.sink.split: ; preds = %bb.p, %bb.g
  %.sink = phi i32 [ %i.b, %bb.g ], [ %i.al, %bb.p ]
  %.sink104 = phi ptr [ %i.s, %bb.g ], [ %i.x, %bb.p ]
  %.sroa.23.037.ph = phi i32 [ %i.q, %bb.g ], [ %i.ax, %bb.p ]
  %i.ay = zext nneg i32 %.sink to i64
  %i.az = getelementptr inbounds nuw [16 x i8], ptr %.sink104, i64 %i.ay
  %.sroa.08.0.copyload23 = load i128, ptr %i.az, align 16, !tbaa !37 ; 3 uses
  %.sroa.08.sroa.0.sroa.0.0.extract.trunc = trunc i128 %.sroa.08.0.copyload23 to i32
  %.sroa.08.sroa.0.sroa.11.0.extract.shift99 = lshr i128 %.sroa.08.0.copyload23, 32
  %.sroa.08.sroa.0.sroa.11.0.extract.trunc = trunc i128 %.sroa.08.sroa.0.sroa.11.0.extract.shift99 to i32
  %.sroa.08.sroa.11.0.extract.shift = lshr i128 %.sroa.08.0.copyload23, 64
  %.sroa.08.sroa.11.0.extract.trunc = trunc nuw i128 %.sroa.08.sroa.11.0.extract.shift to i64
  br label %_ZNK3fmt3v1115generic_contextISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEcE3argEi.exit.thread35

_ZNK3fmt3v1115generic_contextISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEcE3argEi.exit.thread35: ; preds = %_ZNK3fmt3v1115generic_contextISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEcE3argEi.exit.thread35.sink.split, %_ZNK3fmt3v1115generic_contextISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEcE3argEi.exit
  %.sroa.08.sroa.0.sroa.11.0 = phi i32 [ %.sroa.08.sroa.0.sroa.11.0.extract.trunc87, %_ZNK3fmt3v1115generic_contextISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEcE3argEi.exit ], [ %.sroa.08.sroa.0.sroa.11.0.extract.trunc, %_ZNK3fmt3v1115generic_contextISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEcE3argEi.exit.thread35.sink.split ] ; 4 uses
  %.sroa.08.sroa.0.sroa.0.0 = phi i32 [ %.sroa.08.sroa.0.sroa.0.0.extract.trunc71, %_ZNK3fmt3v1115generic_contextISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEcE3argEi.exit ], [ %.sroa.08.sroa.0.sroa.0.0.extract.trunc, %_ZNK3fmt3v1115generic_contextISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEcE3argEi.exit.thread35.sink.split ] ; 7 uses
  %.sroa.08.sroa.11.0 = phi i64 [ %.sroa.08.sroa.11.0.extract.trunc60, %_ZNK3fmt3v1115generic_contextISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEcE3argEi.exit ], [ %.sroa.08.sroa.11.0.extract.trunc, %_ZNK3fmt3v1115generic_contextISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEcE3argEi.exit.thread35.sink.split ]
  %.sroa.23.037 = phi i32 [ %.sroa.23.0, %_ZNK3fmt3v1115generic_contextISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEcE3argEi.exit ], [ %.sroa.23.037.ph, %_ZNK3fmt3v1115generic_contextISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEcE3argEi.exit.thread35.sink.split ]
  switch i32 %.sroa.23.037, label %bb.af [
    i32 15, label %bb.ae
    i32 1, label %bb.q
    i32 2, label %bb.r
    i32 3, label %bb.s
    i32 4, label %bb.t
    i32 5, label %bb.u
    i32 6, label %bb.v
    i32 7, label %bb.w
    i32 8, label %bb.x
    i32 9, label %bb.y
    i32 10, label %bb.z
    i32 11, label %bb.aa
    i32 12, label %bb.ab
    i32 13, label %bb.ac
    i32 14, label %bb.ad
  ]

bb.q:                                             ; preds = %_ZNK3fmt3v1115generic_contextISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEcE3argEi.exit.thread35
  %i.ba = icmp slt i32 %.sroa.08.sroa.0.sroa.0.0, 0
  %i.bb = zext nneg i32 %.sroa.08.sroa.0.sroa.0.0 to i64
  br i1 %i.ba, label %_ZNK3fmt3v1116basic_format_argINS0_15generic_contextISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEcEEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit.thread, label %_ZNK3fmt3v1116basic_format_argINS0_15generic_contextISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEcEEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit.thread40

bb.r:                                             ; preds = %_ZNK3fmt3v1115generic_contextISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEcE3argEi.exit.thread35
  %i.bc = zext i32 %.sroa.08.sroa.0.sroa.0.0 to i64
  br label %_ZNK3fmt3v1116basic_format_argINS0_15generic_contextISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEcEEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit

bb.s:                                             ; preds = %_ZNK3fmt3v1115generic_contextISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEcE3argEi.exit.thread35
  %.sroa.08.sroa.0.sroa.11.0.insert.ext72 = zext i32 %.sroa.08.sroa.0.sroa.11.0 to i64
  %.sroa.08.sroa.0.sroa.11.0.insert.shift73 = shl nuw i64 %.sroa.08.sroa.0.sroa.11.0.insert.ext72, 32
  %.sroa.08.sroa.0.sroa.0.0.insert.ext61 = zext i32 %.sroa.08.sroa.0.sroa.0.0 to i64
  %.sroa.08.sroa.0.sroa.0.0.insert.insert63 = or disjoint i64 %.sroa.08.sroa.0.sroa.11.0.insert.shift73, %.sroa.08.sroa.0.sroa.0.0.insert.ext61
  %i.bd = tail call noundef i64 @llvm.smax.i64(i64 %.sroa.08.sroa.0.sroa.0.0.insert.insert63, i64 -1)
  br label %_ZNK3fmt3v1116basic_format_argINS0_15generic_contextISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEcEEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit

bb.t:                                             ; preds = %_ZNK3fmt3v1115generic_contextISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEcE3argEi.exit.thread35
  %.sroa.08.sroa.0.sroa.11.0.insert.ext = zext i32 %.sroa.08.sroa.0.sroa.11.0 to i64
  %.sroa.08.sroa.0.sroa.11.0.insert.shift = shl nuw i64 %.sroa.08.sroa.0.sroa.11.0.insert.ext, 32
  %.sroa.08.sroa.0.sroa.0.0.insert.ext = zext i32 %.sroa.08.sroa.0.sroa.0.0 to i64
  %.sroa.08.sroa.0.sroa.0.0.insert.insert = or disjoint i64 %.sroa.08.sroa.0.sroa.11.0.insert.shift, %.sroa.08.sroa.0.sroa.0.0.insert.ext
  br label %_ZNK3fmt3v1116basic_format_argINS0_15generic_contextISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEcEEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit

bb.u:                                             ; preds = %_ZNK3fmt3v1115generic_contextISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEcE3argEi.exit.thread35
  %.sroa.08.sroa.0.sroa.11.0.insert.ext80 = zext i32 %.sroa.08.sroa.0.sroa.11.0 to i64
  %.sroa.08.sroa.0.sroa.11.0.insert.shift81 = shl nuw i64 %.sroa.08.sroa.0.sroa.11.0.insert.ext80, 32
  %.sroa.08.sroa.0.sroa.0.0.insert.ext67 = zext i32 %.sroa.08.sroa.0.sroa.0.0 to i64
  %.sroa.08.sroa.0.sroa.0.0.insert.insert69 = or disjoint i64 %.sroa.08.sroa.0.sroa.11.0.insert.shift81, %.sroa.08.sroa.0.sroa.0.0.insert.ext67
  %.not100 = icmp sgt i64 %.sroa.08.sroa.11.0, -1
  br i1 %.not100, label %_ZNK3fmt3v1116basic_format_argINS0_15generic_contextISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEcEEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit, label %_ZNK3fmt3v1116basic_format_argINS0_15generic_contextISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEcEEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit.thread

bb.v:                                             ; preds = %_ZNK3fmt3v1115generic_contextISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEcE3argEi.exit.thread35
  %.sroa.08.sroa.0.sroa.11.0.insert.ext76 = zext i32 %.sroa.08.sroa.0.sroa.11.0 to i64
  %.sroa.08.sroa.0.sroa.11.0.insert.shift77 = shl nuw i64 %.sroa.08.sroa.0.sroa.11.0.insert.ext76, 32
  %.sroa.08.sroa.0.sroa.0.0.insert.ext64 = zext i32 %.sroa.08.sroa.0.sroa.0.0 to i64
  %.sroa.08.sroa.0.sroa.0.0.insert.insert66 = or disjoint i64 %.sroa.08.sroa.0.sroa.11.0.insert.shift77, %.sroa.08.sroa.0.sroa.0.0.insert.ext64
  br label %_ZNK3fmt3v1116basic_format_argINS0_15generic_contextISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEcEEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit

bb.w:                                             ; preds = %_ZNK3fmt3v1115generic_contextISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEcE3argEi.exit.thread35
  tail call void @_ZN3fmt3v1112report_errorEPKc(ptr noundef nonnull @.str.81) #46
  unreachable

bb.x:                                             ; preds = %_ZNK3fmt3v1115generic_contextISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEcE3argEi.exit.thread35
  tail call void @_ZN3fmt3v1112report_errorEPKc(ptr noundef nonnull @.str.81) #46
  unreachable

bb.y:                                             ; preds = %_ZNK3fmt3v1115generic_contextISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEcE3argEi.exit.thread35
  tail call void @_ZN3fmt3v1112report_errorEPKc(ptr noundef nonnull @.str.81) #46
  unreachable

bb.z:                                             ; preds = %_ZNK3fmt3v1115generic_contextISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEcE3argEi.exit.thread35
  tail call void @_ZN3fmt3v1112report_errorEPKc(ptr noundef nonnull @.str.81) #46
  unreachable

bb.aa:                                            ; preds = %_ZNK3fmt3v1115generic_contextISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEcE3argEi.exit.thread35
  tail call void @_ZN3fmt3v1112report_errorEPKc(ptr noundef nonnull @.str.81) #46
  unreachable

bb.ab:                                            ; preds = %_ZNK3fmt3v1115generic_contextISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEcE3argEi.exit.thread35
  tail call void @_ZN3fmt3v1112report_errorEPKc(ptr noundef nonnull @.str.81) #46
  unreachable

bb.ac:                                            ; preds = %_ZNK3fmt3v1115generic_contextISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEcE3argEi.exit.thread35
  tail call void @_ZN3fmt3v1112report_errorEPKc(ptr noundef nonnull @.str.81) #46
  unreachable

bb.ad:                                            ; preds = %_ZNK3fmt3v1115generic_contextISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEcE3argEi.exit.thread35
  tail call void @_ZN3fmt3v1112report_errorEPKc(ptr noundef nonnull @.str.81) #46
  unreachable

bb.ae:                                            ; preds = %_ZNK3fmt3v1115generic_contextISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEcE3argEi.exit.thread35
  tail call void @_ZN3fmt3v1112report_errorEPKc(ptr noundef nonnull @.str.81) #46
  unreachable

bb.af:                                            ; preds = %_ZNK3fmt3v1115generic_contextISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEcE3argEi.exit.thread35
  tail call void @_ZN3fmt3v1112report_errorEPKc(ptr noundef nonnull @.str.81) #46
  unreachable

_ZNK3fmt3v1116basic_format_argINS0_15generic_contextISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEcEEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit: ; preds = %bb.u, %bb.r, %bb.s, %bb.t, %bb.v
  %.0.i = phi i64 [ %.sroa.08.sroa.0.sroa.0.0.insert.insert, %bb.t ], [ %.sroa.08.sroa.0.sroa.0.0.insert.insert69, %bb.u ], [ %.sroa.08.sroa.0.sroa.0.0.insert.insert66, %bb.v ], [ %i.bc, %bb.r ], [ %i.bd, %bb.s ] ; 2 uses
  %i.be = icmp ugt i64 %.0.i, 2147483647
  br i1 %i.be, label %_ZNK3fmt3v1116basic_format_argINS0_15generic_contextISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEcEEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit.thread, label %_ZNK3fmt3v1116basic_format_argINS0_15generic_contextISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEcEEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit.thread40

_ZNK3fmt3v1116basic_format_argINS0_15generic_contextISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEcEEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit.thread: ; preds = %bb.u, %bb.q, %_ZNK3fmt3v1116basic_format_argINS0_15generic_contextISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEcEEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit
  tail call void @_ZN3fmt3v1112report_errorEPKc(ptr noundef nonnull @.str.80) #46
  unreachable

_ZNK3fmt3v1116basic_format_argINS0_15generic_contextISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEcEEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit.thread40: ; preds = %bb.q, %_ZNK3fmt3v1116basic_format_argINS0_15generic_contextISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEcEEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit
  %.0.i42 = phi i64 [ %.0.i, %_ZNK3fmt3v1116basic_format_argINS0_15generic_contextISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEcEEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit ], [ %i.bb, %bb.q ]
  %i.bf = trunc nuw nsw i64 %.0.i42 to i32
  ret i32 %i.bf
}

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly6detail16throw_exception_INS_17BadExpectedAccessIN8facebook5velox6StatusEEEJOS5_EEEvDpT0_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #22 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.folly::BadExpectedAccess.542", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #38
  %i.a = load ptr, ptr %0, align 8, !tbaa !1229
  store ptr null, ptr %0, align 8, !tbaa !1229
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly17BadExpectedAccessIN8facebook5velox6StatusEEE, i64 16), ptr %1, align 8, !tbaa !19
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  store ptr %i.a, ptr %i.b, align 8, !tbaa !1229
  invoke void @_ZN5folly15throw_exceptionINS_17BadExpectedAccessIN8facebook5velox6StatusEEEEEvOT_(ptr noundef nonnull align 8 dereferenceable(16) %1) #14
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly17BadExpectedAccessIN8facebook5velox6StatusEEE, i64 16), ptr %1, align 8, !tbaa !19
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !1229
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZN8facebook5velox6StatusD2Ev.exit, label %bb.d, !prof !112

bb.d:                                             ; preds = %bb.c
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %i.b), !inline_history !1564
  br label %_ZN8facebook5velox6StatusD2Ev.exit

_ZN8facebook5velox6StatusD2Ev.exit:               ; preds = %bb.d, %bb.c
  call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %1) #38, !inline_history !1564
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #38
  resume { ptr, i32 } %i.c
}

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly15throw_exceptionINS_17BadExpectedAccessIN8facebook5velox6StatusEEEEEvOT_(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #22 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 16) #38 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly17BadExpectedAccessIN8facebook5velox6StatusEEE, i64 16), ptr %i.a, align 8, !tbaa !19
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1229
  store ptr %i.d, ptr %i.b, align 8, !tbaa !1229
  store ptr null, ptr %i.c, align 8, !tbaa !1229
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTIN5folly17BadExpectedAccessIN8facebook5velox6StatusEEE, ptr nonnull @_ZN5folly17BadExpectedAccessIN8facebook5velox6StatusEED2Ev) #46
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly17BadExpectedAccessIN8facebook5velox6StatusEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly17BadExpectedAccessIN8facebook5velox6StatusEEE, i64 16), ptr %0, align 8, !tbaa !19
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1229
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZN8facebook5velox6StatusD2Ev.exit, label %bb.b, !prof !112

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  br label %_ZN8facebook5velox6StatusD2Ev.exit

_ZN8facebook5velox6StatusD2Ev.exit:               ; preds = %bb.a, %bb.b
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #38
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly17BadExpectedAccessIN8facebook5velox6StatusEED0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly17BadExpectedAccessIN8facebook5velox6StatusEEE, i64 16), ptr %0, align 8, !tbaa !19
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1229
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN5folly17BadExpectedAccessIN8facebook5velox6StatusEED2Ev.exit, label %bb.b, !prof !112

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a), !inline_history !1564
  br label %_ZN5folly17BadExpectedAccessIN8facebook5velox6StatusEED2Ev.exit

_ZN5folly17BadExpectedAccessIN8facebook5velox6StatusEED2Ev.exit: ; preds = %bb.a, %bb.b
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #38, !inline_history !1564
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #47
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1229   ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !102  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZN8facebook5velox6Status5StateD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.g = load i64, ptr %i.e, align 8, !tbaa !37
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #47
  br label %_ZN8facebook5velox6Status5StateD2Ev.exit

_ZN8facebook5velox6Status5StateD2Ev.exit:         ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 40) #47
  br label %bb.c

bb.c:                                             ; preds = %_ZN8facebook5velox6Status5StateD2Ev.exit, %bb.a
  store ptr null, ptr %0, align 8, !tbaa !1229
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_12_GLOBAL__N_123generateJsonNonKeyTypedIfLb0EEEvRKNS0_12SimpleVectorIT_EERS4_RKNS0_17SelectivityVectorERNS0_10FlatVectorINS0_10StringViewEEERKSt10shared_ptrINS3_9CastHooksEEEUlS9_E_ZNS4_22applyToSelectedNoThrowISQ_EEvSG_S9_EUlS9_E_EEvSG_S9_T0_EUlS9_E_EEvPKmiibS9_ENKUlimE_clEim(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, i32 noundef range(i32 -33554432, 33554432) %1, i64 noundef %2) unnamed_addr #21 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %4 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %i.a = load i8, ptr %0, align 8, !tbaa !1565, !range !110, !noundef !111
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1568
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !163
  %i.g = xor i8 %i.a, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = sub nsw i64 0, %i.h
  %i.j = xor i64 %i.f, %i.i
  %i.k = and i64 %i.j, %2                         ; 2 uses
  %.not = icmp eq i64 %i.k, 0
  br i1 %.not, label %.loopexit17, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = shl nsw i32 %1, 6
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_12_GLOBAL__N_123generateJsonNonKeyTypedIfLb0EEEvRKNS0_12SimpleVectorIT_EERS2_RKNS0_17SelectivityVectorERNS0_10FlatVectorINS0_10StringViewEEERKSt10shared_ptrINS1_9CastHooksEEEUlS7_E_ZNS2_22applyToSelectedNoThrowISO_EEvSE_S7_EUlS7_E_EEvSE_S7_T0_ENKUlS7_E_clIiEEDaS7_.exit
  %.024 = phi i64 [ %i.k, %.preheader ], [ %i.ba, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_12_GLOBAL__N_123generateJsonNonKeyTypedIfLb0EEEvRKNS0_12SimpleVectorIT_EERS2_RKNS0_17SelectivityVectorERNS0_10FlatVectorINS0_10StringViewEEERKSt10shared_ptrINS1_9CastHooksEEEUlS7_E_ZNS2_22applyToSelectedNoThrowISO_EEvSE_S7_EUlS7_E_EEvSE_S7_T0_ENKUlS7_E_clIiEEDaS7_.exit ] ; 3 uses
  %i.o = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.024, i1 true)
  %i.p = trunc nuw nsw i64 %i.o to i32
  %i.q = or disjoint i32 %i.m, %i.p               ; 3 uses
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !1569 ; 2 uses
  %i.s = load ptr, ptr %i.l, align 8, !tbaa !1570, !nonnull !111, !align !171
  invoke fastcc void @_ZZN8facebook5velox12_GLOBAL__N_123generateJsonNonKeyTypedIfLb0EEEvRKNS0_12SimpleVectorIT_EERNS0_4exec7EvalCtxERKNS0_17SelectivityVectorERNS0_10FlatVectorINS0_10StringViewEEERKSt10shared_ptrINS8_9CastHooksEEENKUlS4_E_clIiEEDaS4_(ptr noundef nonnull align 8 dereferenceable(56) %i.s, i32 noundef %i.q)
          to label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_12_GLOBAL__N_123generateJsonNonKeyTypedIfLb0EEEvRKNS0_12SimpleVectorIT_EERS2_RKNS0_17SelectivityVectorERNS0_10FlatVectorINS0_10StringViewEEERKSt10shared_ptrINS1_9CastHooksEEEUlS7_E_ZNS2_22applyToSelectedNoThrowISO_EEvSE_S7_EUlS7_E_EEvSE_S7_T0_ENKUlS7_E_clIiEEDaS7_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = landingpad { ptr, i32 }
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.u = extractvalue { ptr, i32 } %i.t, 0        ; 2 uses
  %i.v = extractvalue { ptr, i32 } %i.t, 1        ; 2 uses
  %i.w = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #38
  %i.x = icmp eq i32 %i.v, %i.w
  br i1 %i.x, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.y = call ptr @__cxa_begin_catch(ptr %i.u) #38
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !178 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 144
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !102 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 152
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !119
  %i.af = icmp eq i64 %i.ae, 4
  br i1 %i.af, label %.lr.ph.i.i.i.preheader.i.preheader, label %.loopexit

.lr.ph.i.i.i.preheader.i.preheader:               ; preds = %bb.d
  %i.ag = load i8, ptr %i.ac, align 1, !tbaa !37
  %or.cond.not.i.i.i = icmp eq i8 %i.ag, 85
  br i1 %or.cond.not.i.i.i, label %tailrecurse.i.i.i.i, label %.loopexit

tailrecurse.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.preheader.i.preheader
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 1
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !37
  %or.cond.not.i.i.i.1 = icmp eq i8 %i.ai, 83
  br i1 %or.cond.not.i.i.i.1, label %tailrecurse.i.i.i.i.1, label %.loopexit

tailrecurse.i.i.i.i.1:                            ; preds = %tailrecurse.i.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ac, i64 2
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !37
  %or.cond.not.i.i.i.2 = icmp eq i8 %i.ak, 69
  br i1 %or.cond.not.i.i.i.2, label %tailrecurse.i.i.i.i.2, label %.loopexit

tailrecurse.i.i.i.i.2:                            ; preds = %tailrecurse.i.i.i.i.1
  %i.al = getelementptr inbounds nuw i8, ptr %i.ac, i64 3
  %i.am = load i8, ptr %i.al, align 1, !tbaa !37
  %or.cond.not.i.i.i.3 = icmp eq i8 %i.am, 82
end_hunk_0
begin_hunk_1_@_ZN3fmt3v116detail16get_dynamic_specINS0_7contextEEEiNS0_11arg_id_kindERKNS1_7arg_refINT_9char_typeEEERS6_
define linkonce_odr noundef i32 @_ZN3fmt3v116detail16get_dynamic_specINS0_7contextEEEiNS0_11arg_id_kindERKNS1_7arg_refINT_9char_typeEEERS6_(i32 noundef %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = icmp eq i32 %0, 1
  br i1 %i.a, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %1, align 8, !tbaa !37     ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !2308, !noalias !2310 ; 3 uses
  %i.e = icmp sgt i64 %i.d, -1
  br i1 %i.e, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = trunc i64 %i.d to i32
  %i.g = icmp slt i32 %i.b, %i.f
  br i1 %i.g, label %bb.d, label %_ZNK3fmt3v117context3argEi.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !37, !noalias !2310
  %i.j = sext i32 %i.b to i64
  %i.k = getelementptr inbounds [32 x i8], ptr %i.i, i64 %i.j
  br label %_ZNK3fmt3v117context3argEi.exit

bb.e:                                             ; preds = %bb.b
  %i.l = icmp ugt i32 %i.b, 14
  br i1 %i.l, label %_ZNK3fmt3v117context3argEi.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = shl nuw nsw i32 %i.b, 2
  %i.n = zext nneg i32 %i.m to i64
  %i.o = lshr i64 %i.d, %i.n
  %i.p = trunc i64 %i.o to i32
  %i.q = and i32 %i.p, 15                         ; 2 uses
  %.not.i.i = icmp eq i32 %i.q, 0
  br i1 %.not.i.i, label %_ZNK3fmt3v117context3argEi.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !37, !noalias !2310
  br label %_ZNK3fmt3v117context3argEi.exit.thread35.sink.split

bb.h:                                             ; preds = %bb.a
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !tbaa !241
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !163 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !2308, !noalias !2315 ; 5 uses
  %i.v = and i64 %i.u, 4611686018427387904
  %.not13.i.i.i = icmp eq i64 %i.v, 0
  br i1 %.not13.i.i.i, label %_ZNK3fmt3v117context3argEi.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !noalias !2315 ; 3 uses
  %i.y = icmp slt i64 %i.u, 0
  %.v.i.i.i = select i1 %i.y, i64 -32, i64 -16
  %i.z = getelementptr inbounds i8, ptr %i.x, i64 %.v.i.i.i ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !1554, !noalias !2315 ; 2 uses
  %.not14.not.i.i.i = icmp eq i64 %i.ab, 0
  br i1 %.not14.not.i.i.i, label %_ZNK3fmt3v117context3argEi.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.i
  %i.ac = load ptr, ptr %i.z, align 8, !tbaa !1557, !noalias !2315
  br label %bb.k

bb.j:                                             ; preds = %bb.k
  %i.ad = add nuw i64 %.01115.i.i.i, 1            ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.ad, %i.ab
  br i1 %exitcond.not.i.i.i, label %_ZNK3fmt3v117context3argEi.exit.thread, label %bb.k, !llvm.loop !2320

bb.k:                                             ; preds = %bb.j, %.lr.ph.i.i.i
  %.01115.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.ad, %bb.j ] ; 2 uses
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %i.ac, i64 %.01115.i.i.i ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !1559, !noalias !2315 ; 2 uses
  %i.ag = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.af) #38, !noalias !2315 ; 2 uses
  %i.ah = tail call noundef i64 @llvm.umin.i64(i64 %i.ag, i64 %.sroa.2.0.copyload)
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr nonnull %i.af, ptr %.sroa.0.0.copyload, i64 %i.ah), !noalias !2315
  %.not.i.i.i.i.i = icmp eq i32 %bcmp.i.i.i.i, 0
  %i.ai = icmp eq i64 %i.ag, %.sroa.2.0.copyload
  %i.aj = select i1 %.not.i.i.i.i.i, i1 %i.ai, i1 false
  br i1 %i.aj, label %_ZNK3fmt3v1117basic_format_argsINS0_7contextEE6get_idIcEEiNS0_17basic_string_viewIT_EE.exit.i.i, label %bb.j

_ZNK3fmt3v1117basic_format_argsINS0_7contextEE6get_idIcEEiNS0_17basic_string_viewIT_EE.exit.i.i: ; preds = %bb.k
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !1561, !noalias !2315 ; 6 uses
  %i.am = icmp sgt i32 %i.al, -1
  br i1 %i.am, label %bb.l, label %_ZNK3fmt3v117context3argEi.exit.thread

bb.l:                                             ; preds = %_ZNK3fmt3v1117basic_format_argsINS0_7contextEE6get_idIcEEiNS0_17basic_string_viewIT_EE.exit.i.i
  %i.an = icmp sgt i64 %i.u, -1
  br i1 %i.an, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ao = trunc i64 %i.u to i32
  %i.ap = icmp slt i32 %i.al, %i.ao
  br i1 %i.ap, label %bb.n, label %_ZNK3fmt3v117context3argEi.exit.thread

bb.n:                                             ; preds = %bb.m
  %i.aq = zext nneg i32 %i.al to i64
  %i.ar = getelementptr inbounds nuw [32 x i8], ptr %i.x, i64 %i.aq
  br label %_ZNK3fmt3v117context3argEi.exit

bb.o:                                             ; preds = %bb.l
  %i.as = icmp samesign ugt i32 %i.al, 14
  br i1 %i.as, label %_ZNK3fmt3v117context3argEi.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.at = shl nuw nsw i32 %i.al, 2
  %i.au = zext nneg i32 %i.at to i64
  %i.av = lshr i64 %i.u, %i.au
  %i.aw = trunc i64 %i.av to i32
  %i.ax = and i32 %i.aw, 15                       ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.ax, 0
  br i1 %.not.i.i.i, label %_ZNK3fmt3v117context3argEi.exit.thread, label %_ZNK3fmt3v117context3argEi.exit.thread35.sink.split

_ZNK3fmt3v117context3argEi.exit:                  ; preds = %bb.n, %bb.d
  %storemerge.in = phi ptr [ %i.ar, %bb.n ], [ %i.k, %bb.d ] ; 2 uses
  %storemerge = load i128, ptr %storemerge.in, align 16, !tbaa !37 ; 3 uses
  %.sroa.08.sroa.0.sroa.0.0.extract.trunc71 = trunc i128 %storemerge to i32
  %.sroa.08.sroa.0.sroa.11.0.extract.shift8698 = lshr i128 %storemerge, 32
  %.sroa.08.sroa.0.sroa.11.0.extract.trunc87 = trunc i128 %.sroa.08.sroa.0.sroa.11.0.extract.shift8698 to i32
  %.sroa.08.sroa.11.0.extract.shift59 = lshr i128 %storemerge, 64
  %.sroa.08.sroa.11.0.extract.trunc60 = trunc nuw i128 %.sroa.08.sroa.11.0.extract.shift59 to i64
  %.sroa.23.0.in = getelementptr inbounds nuw i8, ptr %storemerge.in, i64 16
  %.sroa.23.0 = load i32, ptr %.sroa.23.0.in, align 16, !tbaa !1562 ; 2 uses
  %.not = icmp eq i32 %.sroa.23.0, 0
  br i1 %.not, label %_ZNK3fmt3v117context3argEi.exit.thread, label %_ZNK3fmt3v117context3argEi.exit.thread35

_ZNK3fmt3v117context3argEi.exit.thread:           ; preds = %bb.j, %bb.h, %bb.i, %_ZNK3fmt3v1117basic_format_argsINS0_7contextEE6get_idIcEEiNS0_17basic_string_viewIT_EE.exit.i.i, %bb.p, %bb.o, %bb.m, %bb.f, %bb.e, %bb.c, %_ZNK3fmt3v117context3argEi.exit
  tail call void @_ZN3fmt3v1112report_errorEPKc(ptr noundef nonnull @.str.79) #46
  unreachable

_ZNK3fmt3v117context3argEi.exit.thread35.sink.split: ; preds = %bb.p, %bb.g
  %.sink = phi i32 [ %i.b, %bb.g ], [ %i.al, %bb.p ]
  %.sink104 = phi ptr [ %i.s, %bb.g ], [ %i.x, %bb.p ]
  %.sroa.23.037.ph = phi i32 [ %i.q, %bb.g ], [ %i.ax, %bb.p ]
  %i.ay = zext nneg i32 %.sink to i64
  %i.az = getelementptr inbounds nuw [16 x i8], ptr %.sink104, i64 %i.ay
  %.sroa.08.0.copyload23 = load i128, ptr %i.az, align 16, !tbaa !37 ; 3 uses
  %.sroa.08.sroa.0.sroa.0.0.extract.trunc = trunc i128 %.sroa.08.0.copyload23 to i32
  %.sroa.08.sroa.0.sroa.11.0.extract.shift99 = lshr i128 %.sroa.08.0.copyload23, 32
  %.sroa.08.sroa.0.sroa.11.0.extract.trunc = trunc i128 %.sroa.08.sroa.0.sroa.11.0.extract.shift99 to i32
  %.sroa.08.sroa.11.0.extract.shift = lshr i128 %.sroa.08.0.copyload23, 64
  %.sroa.08.sroa.11.0.extract.trunc = trunc nuw i128 %.sroa.08.sroa.11.0.extract.shift to i64
  br label %_ZNK3fmt3v117context3argEi.exit.thread35

_ZNK3fmt3v117context3argEi.exit.thread35:         ; preds = %_ZNK3fmt3v117context3argEi.exit.thread35.sink.split, %_ZNK3fmt3v117context3argEi.exit
  %.sroa.08.sroa.0.sroa.11.0 = phi i32 [ %.sroa.08.sroa.0.sroa.11.0.extract.trunc87, %_ZNK3fmt3v117context3argEi.exit ], [ %.sroa.08.sroa.0.sroa.11.0.extract.trunc, %_ZNK3fmt3v117context3argEi.exit.thread35.sink.split ] ; 4 uses
  %.sroa.08.sroa.0.sroa.0.0 = phi i32 [ %.sroa.08.sroa.0.sroa.0.0.extract.trunc71, %_ZNK3fmt3v117context3argEi.exit ], [ %.sroa.08.sroa.0.sroa.0.0.extract.trunc, %_ZNK3fmt3v117context3argEi.exit.thread35.sink.split ] ; 7 uses
  %.sroa.08.sroa.11.0 = phi i64 [ %.sroa.08.sroa.11.0.extract.trunc60, %_ZNK3fmt3v117context3argEi.exit ], [ %.sroa.08.sroa.11.0.extract.trunc, %_ZNK3fmt3v117context3argEi.exit.thread35.sink.split ]
  %.sroa.23.037 = phi i32 [ %.sroa.23.0, %_ZNK3fmt3v117context3argEi.exit ], [ %.sroa.23.037.ph, %_ZNK3fmt3v117context3argEi.exit.thread35.sink.split ]
  switch i32 %.sroa.23.037, label %bb.af [
    i32 15, label %bb.ae
    i32 1, label %bb.q
    i32 2, label %bb.r
    i32 3, label %bb.s
    i32 4, label %bb.t
    i32 5, label %bb.u
    i32 6, label %bb.v
    i32 7, label %bb.w
    i32 8, label %bb.x
    i32 9, label %bb.y
    i32 10, label %bb.z
    i32 11, label %bb.aa
    i32 12, label %bb.ab
    i32 13, label %bb.ac
    i32 14, label %bb.ad
  ]

bb.q:                                             ; preds = %_ZNK3fmt3v117context3argEi.exit.thread35
  %i.ba = icmp slt i32 %.sroa.08.sroa.0.sroa.0.0, 0
  %i.bb = zext nneg i32 %.sroa.08.sroa.0.sroa.0.0 to i64
  br i1 %i.ba, label %_ZNK3fmt3v1116basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit.thread, label %_ZNK3fmt3v1116basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit.thread40

bb.r:                                             ; preds = %_ZNK3fmt3v117context3argEi.exit.thread35
  %i.bc = zext i32 %.sroa.08.sroa.0.sroa.0.0 to i64
  br label %_ZNK3fmt3v1116basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit

bb.s:                                             ; preds = %_ZNK3fmt3v117context3argEi.exit.thread35
  %.sroa.08.sroa.0.sroa.11.0.insert.ext72 = zext i32 %.sroa.08.sroa.0.sroa.11.0 to i64
  %.sroa.08.sroa.0.sroa.11.0.insert.shift73 = shl nuw i64 %.sroa.08.sroa.0.sroa.11.0.insert.ext72, 32
  %.sroa.08.sroa.0.sroa.0.0.insert.ext61 = zext i32 %.sroa.08.sroa.0.sroa.0.0 to i64
  %.sroa.08.sroa.0.sroa.0.0.insert.insert63 = or disjoint i64 %.sroa.08.sroa.0.sroa.11.0.insert.shift73, %.sroa.08.sroa.0.sroa.0.0.insert.ext61
  %i.bd = tail call noundef i64 @llvm.smax.i64(i64 %.sroa.08.sroa.0.sroa.0.0.insert.insert63, i64 -1)
  br label %_ZNK3fmt3v1116basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit

bb.t:                                             ; preds = %_ZNK3fmt3v117context3argEi.exit.thread35
  %.sroa.08.sroa.0.sroa.11.0.insert.ext = zext i32 %.sroa.08.sroa.0.sroa.11.0 to i64
  %.sroa.08.sroa.0.sroa.11.0.insert.shift = shl nuw i64 %.sroa.08.sroa.0.sroa.11.0.insert.ext, 32
  %.sroa.08.sroa.0.sroa.0.0.insert.ext = zext i32 %.sroa.08.sroa.0.sroa.0.0 to i64
  %.sroa.08.sroa.0.sroa.0.0.insert.insert = or disjoint i64 %.sroa.08.sroa.0.sroa.11.0.insert.shift, %.sroa.08.sroa.0.sroa.0.0.insert.ext
  br label %_ZNK3fmt3v1116basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit

bb.u:                                             ; preds = %_ZNK3fmt3v117context3argEi.exit.thread35
  %.sroa.08.sroa.0.sroa.11.0.insert.ext80 = zext i32 %.sroa.08.sroa.0.sroa.11.0 to i64
  %.sroa.08.sroa.0.sroa.11.0.insert.shift81 = shl nuw i64 %.sroa.08.sroa.0.sroa.11.0.insert.ext80, 32
  %.sroa.08.sroa.0.sroa.0.0.insert.ext67 = zext i32 %.sroa.08.sroa.0.sroa.0.0 to i64
  %.sroa.08.sroa.0.sroa.0.0.insert.insert69 = or disjoint i64 %.sroa.08.sroa.0.sroa.11.0.insert.shift81, %.sroa.08.sroa.0.sroa.0.0.insert.ext67
  %.not100 = icmp sgt i64 %.sroa.08.sroa.11.0, -1
  br i1 %.not100, label %_ZNK3fmt3v1116basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit, label %_ZNK3fmt3v1116basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit.thread

bb.v:                                             ; preds = %_ZNK3fmt3v117context3argEi.exit.thread35
  %.sroa.08.sroa.0.sroa.11.0.insert.ext76 = zext i32 %.sroa.08.sroa.0.sroa.11.0 to i64
  %.sroa.08.sroa.0.sroa.11.0.insert.shift77 = shl nuw i64 %.sroa.08.sroa.0.sroa.11.0.insert.ext76, 32
  %.sroa.08.sroa.0.sroa.0.0.insert.ext64 = zext i32 %.sroa.08.sroa.0.sroa.0.0 to i64
  %.sroa.08.sroa.0.sroa.0.0.insert.insert66 = or disjoint i64 %.sroa.08.sroa.0.sroa.11.0.insert.shift77, %.sroa.08.sroa.0.sroa.0.0.insert.ext64
  br label %_ZNK3fmt3v1116basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit

bb.w:                                             ; preds = %_ZNK3fmt3v117context3argEi.exit.thread35
  tail call void @_ZN3fmt3v1112report_errorEPKc(ptr noundef nonnull @.str.81) #46
  unreachable

bb.x:                                             ; preds = %_ZNK3fmt3v117context3argEi.exit.thread35
  tail call void @_ZN3fmt3v1112report_errorEPKc(ptr noundef nonnull @.str.81) #46
  unreachable

bb.y:                                             ; preds = %_ZNK3fmt3v117context3argEi.exit.thread35
  tail call void @_ZN3fmt3v1112report_errorEPKc(ptr noundef nonnull @.str.81) #46
  unreachable

bb.z:                                             ; preds = %_ZNK3fmt3v117context3argEi.exit.thread35
  tail call void @_ZN3fmt3v1112report_errorEPKc(ptr noundef nonnull @.str.81) #46
  unreachable

bb.aa:                                            ; preds = %_ZNK3fmt3v117context3argEi.exit.thread35
  tail call void @_ZN3fmt3v1112report_errorEPKc(ptr noundef nonnull @.str.81) #46
  unreachable

bb.ab:                                            ; preds = %_ZNK3fmt3v117context3argEi.exit.thread35
  tail call void @_ZN3fmt3v1112report_errorEPKc(ptr noundef nonnull @.str.81) #46
  unreachable

bb.ac:                                            ; preds = %_ZNK3fmt3v117context3argEi.exit.thread35
  tail call void @_ZN3fmt3v1112report_errorEPKc(ptr noundef nonnull @.str.81) #46
  unreachable

bb.ad:                                            ; preds = %_ZNK3fmt3v117context3argEi.exit.thread35
  tail call void @_ZN3fmt3v1112report_errorEPKc(ptr noundef nonnull @.str.81) #46
  unreachable

bb.ae:                                            ; preds = %_ZNK3fmt3v117context3argEi.exit.thread35
  tail call void @_ZN3fmt3v1112report_errorEPKc(ptr noundef nonnull @.str.81) #46
  unreachable

bb.af:                                            ; preds = %_ZNK3fmt3v117context3argEi.exit.thread35
  tail call void @_ZN3fmt3v1112report_errorEPKc(ptr noundef nonnull @.str.81) #46
  unreachable

_ZNK3fmt3v1116basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit: ; preds = %bb.u, %bb.r, %bb.s, %bb.t, %bb.v
  %.0.i = phi i64 [ %.sroa.08.sroa.0.sroa.0.0.insert.insert, %bb.t ], [ %.sroa.08.sroa.0.sroa.0.0.insert.insert69, %bb.u ], [ %.sroa.08.sroa.0.sroa.0.0.insert.insert66, %bb.v ], [ %i.bc, %bb.r ], [ %i.bd, %bb.s ] ; 2 uses
  %i.be = icmp ugt i64 %.0.i, 2147483647
  br i1 %i.be, label %_ZNK3fmt3v1116basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit.thread, label %_ZNK3fmt3v1116basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit.thread40

_ZNK3fmt3v1116basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit.thread: ; preds = %bb.u, %bb.q, %_ZNK3fmt3v1116basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit
  tail call void @_ZN3fmt3v1112report_errorEPKc(ptr noundef nonnull @.str.80) #46
  unreachable

_ZNK3fmt3v1116basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit.thread40: ; preds = %bb.q, %_ZNK3fmt3v1116basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit
  %.0.i42 = phi i64 [ %.0.i, %_ZNK3fmt3v1116basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit ], [ %i.bb, %bb.q ]
  %i.bf = trunc nuw nsw i64 %.0.i42 to i32
  ret i32 %i.bf
}

declare void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(94), i32 noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @"_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_12_GLOBAL__N_119castToJsonFromArrayERKNS0_10BaseVectorERS4_RKNS0_17SelectivityVectorERNS0_10FlatVectorINS0_10StringViewEEERKSt10shared_ptrINS3_9CastHooksEEE3$_2ZNS4_22applyToSelectedNoThrowISN_EEvSD_T_EUlSP_E_EEvSD_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim"(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, i32 noundef range(i32 -33554432, 33554432) %1, i64 noundef %2) unnamed_addr #21 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %4 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %i.a = load i8, ptr %0, align 8, !tbaa !2321, !range !110, !noundef !111
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2324
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !163
  %i.g = xor i8 %i.a, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = sub nsw i64 0, %i.h
  %i.j = xor i64 %i.f, %i.i
  %i.k = and i64 %i.j, %2                         ; 2 uses
  %.not = icmp eq i64 %i.k, 0
  br i1 %.not, label %.loopexit17, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = shl nsw i32 %1, 6
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %"_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_12_GLOBAL__N_119castToJsonFromArrayERKNS0_10BaseVectorERS2_RKNS0_17SelectivityVectorERNS0_10FlatVectorINS0_10StringViewEEERKSt10shared_ptrINS1_9CastHooksEEE3$_2ZNS2_22applyToSelectedNoThrowISL_EEvSB_T_EUlSN_E_EEvSB_SN_T0_ENKUlSN_E_clIiEEDaSN_.exit"
  %.024 = phi i64 [ %i.k, %.preheader ], [ %i.ba, %"_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_12_GLOBAL__N_119castToJsonFromArrayERKNS0_10BaseVectorERS2_RKNS0_17SelectivityVectorERNS0_10FlatVectorINS0_10StringViewEEERKSt10shared_ptrINS1_9CastHooksEEE3$_2ZNS2_22applyToSelectedNoThrowISL_EEvSB_T_EUlSN_E_EEvSB_SN_T0_ENKUlSN_E_clIiEEDaSN_.exit" ] ; 3 uses
  %i.o = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.024, i1 true)
  %i.p = trunc nuw nsw i64 %i.o to i32
  %i.q = or disjoint i32 %i.m, %i.p               ; 3 uses
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !2325 ; 2 uses
  %i.s = load ptr, ptr %i.l, align 8, !tbaa !2326, !nonnull !111, !align !171
  invoke fastcc void @"_ZZN8facebook5velox12_GLOBAL__N_119castToJsonFromArrayERKNS0_10BaseVectorERNS0_4exec7EvalCtxERKNS0_17SelectivityVectorERNS0_10FlatVectorINS0_10StringViewEEERKSt10shared_ptrINS5_9CastHooksEEENK3$_2clIiEEDaT_"(ptr noundef nonnull align 8 dereferenceable(24) %i.s, i32 noundef %i.q)
          to label %"_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_12_GLOBAL__N_119castToJsonFromArrayERKNS0_10BaseVectorERS2_RKNS0_17SelectivityVectorERNS0_10FlatVectorINS0_10StringViewEEERKSt10shared_ptrINS1_9CastHooksEEE3$_2ZNS2_22applyToSelectedNoThrowISL_EEvSB_T_EUlSN_E_EEvSB_SN_T0_ENKUlSN_E_clIiEEDaSN_.exit" unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = landingpad { ptr, i32 }
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.u = extractvalue { ptr, i32 } %i.t, 0        ; 2 uses
  %i.v = extractvalue { ptr, i32 } %i.t, 1        ; 2 uses
  %i.w = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #38
  %i.x = icmp eq i32 %i.v, %i.w
  br i1 %i.x, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.y = call ptr @__cxa_begin_catch(ptr %i.u) #38
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !178 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 144
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !102 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 152
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !119
  %i.af = icmp eq i64 %i.ae, 4
  br i1 %i.af, label %.lr.ph.i.i.i.preheader.i.preheader, label %.loopexit

.lr.ph.i.i.i.preheader.i.preheader:               ; preds = %bb.d
  %i.ag = load i8, ptr %i.ac, align 1, !tbaa !37
  %or.cond.not.i.i.i = icmp eq i8 %i.ag, 85
  br i1 %or.cond.not.i.i.i, label %tailrecurse.i.i.i.i, label %.loopexit

tailrecurse.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.preheader.i.preheader
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 1
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !37
  %or.cond.not.i.i.i.1 = icmp eq i8 %i.ai, 83
  br i1 %or.cond.not.i.i.i.1, label %tailrecurse.i.i.i.i.1, label %.loopexit

tailrecurse.i.i.i.i.1:                            ; preds = %tailrecurse.i.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ac, i64 2
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !37
  %or.cond.not.i.i.i.2 = icmp eq i8 %i.ak, 69
  br i1 %or.cond.not.i.i.i.2, label %tailrecurse.i.i.i.i.2, label %.loopexit

tailrecurse.i.i.i.i.2:                            ; preds = %tailrecurse.i.i.i.i.1
  %i.al = getelementptr inbounds nuw i8, ptr %i.ac, i64 3
  %i.am = load i8, ptr %i.al, align 1, !tbaa !37
  %or.cond.not.i.i.i.3 = icmp eq i8 %i.am, 82
  br i1 %or.cond.not.i.i.i.3, label %tailrecurse.i.i.i.i.3, label %.loopexit

tailrecurse.i.i.i.i.3:                            ; preds = %tailrecurse.i.i.i.i.2
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #38
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %4) #38
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.r, i32 noundef %i.q, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.l unwind label %bb.n

.loopexit:                                        ; preds = %bb.d, %.lr.ph.i.i.i.preheader.i.preheader, %tailrecurse.i.i.i.i, %tailrecurse.i.i.i.i.1, %tailrecurse.i.i.i.i.2
  invoke void @__cxa_rethrow() #46
          to label %bb.r unwind label %bb.k

bb.e:                                             ; preds = %bb.c
  %i.an = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #38
  %i.ao = icmp eq i32 %i.v, %i.an
  br i1 %i.ao, label %bb.f, label %.loopexit18

bb.f:                                             ; preds = %bb.e
  %i.ap = call ptr @__cxa_begin_catch(ptr %i.u) #38 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #38
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %3) #38
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.r, i32 noundef %i.q, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.aq = load ptr, ptr %3, align 8, !tbaa !116
  %.not.i = icmp eq ptr %i.aq, null
  br i1 %.not.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit:   ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  br label %"_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_12_GLOBAL__N_119castToJsonFromArrayERKNS0_10BaseVectorERS2_RKNS0_17SelectivityVectorERNS0_10FlatVectorINS0_10StringViewEEERKSt10shared_ptrINS1_9CastHooksEEE3$_2ZNS2_22applyToSelectedNoThrowISL_EEvSB_T_EUlSN_E_EEvSB_SN_T0_ENKUlSN_E_clIiEEDaSN_.exit.sink.split"

bb.i:                                             ; preds = %bb.f
  %i.ar = landingpad { ptr, i32 }
          cleanup
  %i.as = load ptr, ptr %3, align 8, !tbaa !116
  %.not.i11 = icmp eq ptr %i.as, null
  br i1 %.not.i11, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit12, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit12

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit12: ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  invoke void @__cxa_end_catch()
          to label %.loopexit18 unwind label %bb.q

bb.k:                                             ; preds = %.loopexit
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.l:                                             ; preds = %tailrecurse.i.i.i.i.3
  %i.au = load ptr, ptr %4, align 8, !tbaa !116
  %.not.i13 = icmp eq ptr %i.au, null
  br i1 %.not.i13, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit14, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit14

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit14: ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  br label %"_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_12_GLOBAL__N_119castToJsonFromArrayERKNS0_10BaseVectorERS2_RKNS0_17SelectivityVectorERNS0_10FlatVectorINS0_10StringViewEEERKSt10shared_ptrINS1_9CastHooksEEE3$_2ZNS2_22applyToSelectedNoThrowISL_EEvSB_T_EUlSN_E_EEvSB_SN_T0_ENKUlSN_E_clIiEEDaSN_.exit.sink.split"

bb.n:                                             ; preds = %tailrecurse.i.i.i.i.3
  %i.av = landingpad { ptr, i32 }
          cleanup
  %i.aw = load ptr, ptr %4, align 8, !tbaa !116
  %.not.i15 = icmp eq ptr %i.aw, null
  br i1 %.not.i15, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit16, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit16

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit16: ; preds = %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  br label %bb.p

bb.p:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit16, %bb.k
  %.pn.i = phi { ptr, i32 } [ %i.av, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit16 ], [ %i.at, %bb.k ]
  invoke void @__cxa_end_catch()
          to label %.loopexit18 unwind label %bb.q

.loopexit18:                                      ; preds = %bb.e, %bb.p, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit12
  %.merged.i = phi { ptr, i32 } [ %i.ar, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit12 ], [ %.pn.i, %bb.p ], [ %i.t, %bb.e ]
  resume { ptr, i32 } %.merged.i

bb.q:                                             ; preds = %bb.p, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit12
  %i.ax = landingpad { ptr, i32 }
          catch ptr null
  %i.ay = extractvalue { ptr, i32 } %i.ax, 0
  call void @__clang_call_terminate(ptr %i.ay) #48
  unreachable

bb.r:                                             ; preds = %.loopexit
  unreachable

"_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_12_GLOBAL__N_119castToJsonFromArrayERKNS0_10BaseVectorERS2_RKNS0_17SelectivityVectorERNS0_10FlatVectorINS0_10StringViewEEERKSt10shared_ptrINS1_9CastHooksEEE3$_2ZNS2_22applyToSelectedNoThrowISL_EEvSB_T_EUlSN_E_EEvSB_SN_T0_ENKUlSN_E_clIiEEDaSN_.exit.sink.split": ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit14, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit
  call void @__cxa_end_catch()
  br label %"_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_12_GLOBAL__N_119castToJsonFromArrayERKNS0_10BaseVectorERS2_RKNS0_17SelectivityVectorERNS0_10FlatVectorINS0_10StringViewEEERKSt10shared_ptrINS1_9CastHooksEEE3$_2ZNS2_22applyToSelectedNoThrowISL_EEvSB_T_EUlSN_E_EEvSB_SN_T0_ENKUlSN_E_clIiEEDaSN_.exit"

"_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_12_GLOBAL__N_119castToJsonFromArrayERKNS0_10BaseVectorERS2_RKNS0_17SelectivityVectorERNS0_10FlatVectorINS0_10StringViewEEERKSt10shared_ptrINS1_9CastHooksEEE3$_2ZNS2_22applyToSelectedNoThrowISL_EEvSB_T_EUlSN_E_EEvSB_SN_T0_ENKUlSN_E_clIiEEDaSN_.exit": ; preds = %"_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_12_GLOBAL__N_119castToJsonFromArrayERKNS0_10BaseVectorERS2_RKNS0_17SelectivityVectorERNS0_10FlatVectorINS0_10StringViewEEERKSt10shared_ptrINS1_9CastHooksEEE3$_2ZNS2_22applyToSelectedNoThrowISL_EEvSB_T_EUlSN_E_EEvSB_SN_T0_ENKUlSN_E_clIiEEDaSN_.exit.sink.split", %bb.b
  %i.az = add i64 %.024, -1
  %i.ba = and i64 %i.az, %.024                    ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_EUlimE_ZNS3_ISA_EEvSC_iibSD_EUliE_EEviiSD_T0_:bb.a
  %i.dx = xor i8 %i.dr, 1
  %i.dy = zext nneg i8 %i.dx to i64
  %i.dz = sub nsw i64 0, %i.dy
  %i.ea = xor i64 %i.dw, %i.dz
  %i.eb = and i64 %i.ea, %i.dq                    ; 2 uses
  %.not.i43 = icmp eq i64 %i.eb, 0
  br i1 %.not.i43, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %.preheader.i44

.preheader.i44:                                   ; preds = %bb.l
  %i.ec = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ed = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !11298
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 216
  %i.eg = load ptr, ptr %i.ec, align 8, !tbaa !11299, !nonnull !111, !align !171
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.preheader.i44
  %.011.i45 = phi i64 [ %i.eb, %.preheader.i44 ], [ %i.eq, %bb.m ] ; 3 uses
  %i.eh = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i45, i1 true)
  %i.ei = trunc nuw nsw i64 %i.eh to i32
  %i.ej = or disjoint i32 %i.d, %i.ei
  %i.ek = load ptr, ptr %i.ef, align 8, !tbaa !2152
  %i.el = sext i32 %i.ej to i64                   ; 2 uses
  %i.em = getelementptr inbounds [16 x i8], ptr %i.ek, i64 %i.el
  %i.en = load ptr, ptr %i.eg, align 8, !tbaa !10901
  %i.eo = getelementptr inbounds [16 x i8], ptr %i.en, i64 %i.el
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.eo, ptr noundef nonnull align 8 dereferenceable(16) %i.em, i64 16, i1 false), !tbaa.struct !1778
  %i.ep = add nsw i64 %.011.i45, -1
  %i.eq = and i64 %i.ep, %.011.i45                ; 2 uses
  %.not10.i46 = icmp eq i64 %i.eq, 0
  br i1 %.not10.i46, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.m, !llvm.loop !11300

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit: ; preds = %bb.m, %bb.d, %bb.l, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define internal fastcc void @"_ZN5folly15basic_once_flagINS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEES2_E14call_once_slowIZNK8facebook5velox16JsonCastOperator8castFromERKNS8_10BaseVectorERNS8_4exec7EvalCtxERKNS8_17SelectivityVectorERKSt10shared_ptrIKNS8_4TypeEERSJ_ISA_EE3$_0JEEEvOT_DpOT0_"(ptr noundef nonnull align 4 dereferenceable(8) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #29 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %2 = alloca %"struct.folly::SharedMutexImpl<false>::WaitForever", align 1 ; 3 uses
  %3 = alloca %"class.std::lock_guard", align 8   ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #38
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  store ptr %i.c, ptr %3, align 8, !tbaa !11304
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #38
  %i.d = load atomic i32, ptr %i.c acquire, align 4 ; 4 uses
  store i32 %i.d, ptr %i.b, align 4, !tbaa !3
  %i.e = and i32 %i.d, -1312
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %.critedge.i.i.i, !prof !112

bb.b:                                             ; preds = %bb.a
  %i.g = or disjoint i32 %i.d, 128
  %i.h = cmpxchg ptr %i.c, i32 %i.d, i32 %i.g seq_cst seq_cst, align 4 ; 2 uses
  %i.i = extractvalue { i32, i1 } %i.h, 1
  br i1 %i.i, label %_ZNSt10lock_guardIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEEC2ERS4_.exit, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i, !prof !8439

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i: ; preds = %bb.b
  %i.j = extractvalue { i32, i1 } %i.h, 0
  store i32 %i.j, ptr %i.b, align 4
  br label %.critedge.i.i.i

.critedge.i.i.i:                                  ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i, %bb.a
  %i.k = call noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE17lockExclusiveImplINS3_11WaitForeverEEEbRjjRT_(ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i32 noundef 224, ptr noundef nonnull align 1 dereferenceable(1) %2) ; 0 uses
  br label %_ZNSt10lock_guardIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEEC2ERS4_.exit

_ZNSt10lock_guardIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEEC2ERS4_.exit: ; preds = %bb.b, %.critedge.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #38
  %i.l = load atomic i8, ptr %0 monotonic, align 4, !range !110, !noundef !111
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNSt10lock_guardIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEEC2ERS4_.exit
  %.val = load ptr, ptr %1, align 8, !tbaa !107
  %i.n = getelementptr inbounds nuw i8, ptr %.val, i64 16
  invoke void @_ZN8facebook5velox26simdjsonErrorsToExceptionsEPNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull %i.n)
          to label %"_ZNK5folly9invoke_fnclIZNK8facebook5velox16JsonCastOperator8castFromERKNS3_10BaseVectorERNS3_4exec7EvalCtxERKNS3_17SelectivityVectorERKSt10shared_ptrIKNS3_4TypeEERSE_IS5_EE3$_0JEEEDTclscT_fp_spscT0_fp0_EEOSN_DpOSO_.exit" unwind label %bb.g

"_ZNK5folly9invoke_fnclIZNK8facebook5velox16JsonCastOperator8castFromERKNS3_10BaseVectorERNS3_4exec7EvalCtxERKNS3_17SelectivityVectorERKSt10shared_ptrIKNS3_4TypeEERSE_IS5_EE3$_0JEEEDTclscT_fp_spscT0_fp0_EEOSN_DpOSO_.exit": ; preds = %bb.c
  store atomic i8 1, ptr %0 release, align 4
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt10lock_guardIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEEC2ERS4_.exit, %"_ZNK5folly9invoke_fnclIZNK8facebook5velox16JsonCastOperator8castFromERKNS3_10BaseVectorERNS3_4exec7EvalCtxERKNS3_17SelectivityVectorERKSt10shared_ptrIKNS3_4TypeEERSE_IS5_EE3$_0JEEEDTclscT_fp_spscT0_fp0_EEOSN_DpOSO_.exit"
  %i.o = load ptr, ptr %3, align 8, !tbaa !11305, !nonnull !111, !align !1314 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #38
  %i.p = atomicrmw and ptr %i.o, i32 -401 seq_cst, align 4 ; 2 uses
  %i.q = and i32 %i.p, -401
  store i32 %i.q, ptr %i.a, align 4, !tbaa !3
  %i.r = and i32 %i.p, 15
  %.not.i.i.i = icmp eq i32 %i.r, 0
  br i1 %.not.i.i.i, label %_ZNSt10lock_guardIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit, label %bb.e, !prof !112

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.o, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef 15)
          to label %_ZNSt10lock_guardIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  call void @__clang_call_terminate(ptr %i.t) #48
  unreachable

_ZNSt10lock_guardIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  ret void

bb.g:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10lock_guardIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  resume { ptr, i32 } %i.u
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10lock_guardIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !11305, !nonnull !111, !align !1314 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #38
  %i.c = atomicrmw and ptr %i.b, i32 -401 seq_cst, align 4 ; 2 uses
  %i.d = and i32 %i.c, -401
  store i32 %i.d, ptr %i.a, align 4, !tbaa !3
  %i.e = and i32 %i.c, 15
  %.not.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i, label %bb.c, label %bb.b, !prof !112

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef 15)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #38
  ret void

bb.d:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  call void @__clang_call_terminate(ptr %i.g) #48
  unreachable
}

declare void @_ZN8facebook5velox26simdjsonErrorsToExceptionsEPNSt15__exception_ptr13exception_ptrE(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #26

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i8 -1, 2) i8 @llvm.scmp.i8.i32(i32, i32) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshr.i64(i64, i64, i64) #30

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #44

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #45

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.ucmp.i32.i64(i64, i64) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #30

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.cttz.i16(i16, i1 immarg) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.ucmp.i32.i8(i8, i8) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshr.i32(i32, i32, i32) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.fshr.i16(i16, i16, i16) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.fshr.i8(i8, i8, i8) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.scmp.i32.i32(i32, i32) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.scmp.i32.i8(i8, i8) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.scmp.i32.i16(i16, i16) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.scmp.i32.i64(i64, i64) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.scmp.i32.i128(i128, i128) #30

declare double @exp2(double) local_unnamed_addr

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i128 @llvm.vector.reduce.add.v2i128(<2 x i128>) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.ucmp.i32.i32(i32, i32) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i64> @llvm.ctpop.v4i64(<4 x i64>) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #30

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #6 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #8 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #10 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #11 = { cold nofree noreturn }
attributes #12 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #13 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #14 = { cold noreturn }
attributes #15 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #18 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #19 = { mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree nounwind willreturn memory(read) }
attributes #21 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #22 = { cold mustprogress noinline noreturn optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #23 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #24 = { inlinehint mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #25 = { nounwind memory(none) }
attributes #26 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #27 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #28 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #29 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #30 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #31 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #32 = { alwaysinline mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #33 = { mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #34 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #35 = { cold noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #36 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #37 = { nofree nounwind }
attributes #38 = { nounwind }
attributes #39 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #40 = { mustprogress uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #41 = { mustprogress nocallback nofree nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #42 = { cold mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #43 = { inlinehint mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #44 = { nocallback nofree nounwind willreturn memory(argmem: read) }
attributes #45 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #46 = { noreturn }
attributes #47 = { builtin nounwind }
attributes #48 = { noreturn nounwind }
attributes #49 = { builtin allocsize(0) }
attributes #50 = { cold }
attributes #51 = { nounwind willreturn memory(read) }
attributes #52 = { nounwind allocsize(0) }
attributes #53 = { allocsize(0) }
attributes #54 = { cold noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !9, i64 0}
!8 = !{!"_ZTSSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EE", !9, i64 0, !11, i64 8}
!9 = !{!"p1 _ZTSN8facebook5velox4TypeE", !10, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !12, i64 0}
!12 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !10, i64 0}
!13 = !{!14, !17, i64 16}
!14 = !{!"_ZTSN8facebook5velox4TypeE", !15, i64 0, !16, i64 8, !17, i64 16, !18, i64 17}
!15 = !{!"_ZTSN8facebook5velox4TreeIKSt10shared_ptrIKNS0_4TypeEEEE"}
!16 = !{!"_ZTSN8facebook5velox13ISerializableE"}
!17 = !{!"_ZTSN8facebook5velox8TypeKindE", !5, i64 0}
!18 = !{!"bool", !5, i64 0}
!19 = !{!20, !20, i64 0}
!20 = !{!"vtable pointer", !6, i64 0}
!21 = !{!22, !22, i64 0}
!22 = !{!"p1 _ZTSSt10shared_ptrIKN8facebook5velox4TypeEE", !10, i64 0}
!23 = !{!24, !25, i64 0}
!24 = !{!"_ZTSSt12__shared_ptrIKN8facebook5velox8JsonTypeELN9__gnu_cxx12_Lock_policyE2EE", !25, i64 0, !11, i64 8}
!25 = !{!"p1 _ZTSN8facebook5velox8JsonTypeE", !10, i64 0}
!26 = !{!27}
!27 = distinct !{!27, !28, !"_ZN8facebook5velox8JsonType3getEv: argument 0"}
!28 = distinct !{!28, !"_ZN8facebook5velox8JsonType3getEv"}
!29 = !{!11, !12, i64 0}
!30 = !{!31}
!31 = distinct !{!31, !32, !"_ZN8facebook5velox8JsonType3getEv: argument 0"}
!32 = distinct !{!32, !"_ZN8facebook5velox8JsonType3getEv"}
!33 = !{!34, !4, i64 8}
!34 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !4, i64 8, !4, i64 12}
!35 = !{!34, !4, i64 12}
!36 = distinct !{ptr @_ZNSt12__shared_ptrIN8facebook5velox4exec9CastHooksELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!37 = !{!5, !5, i64 0}
!38 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!39 = distinct !{null, null}
!40 = !{!41, !42, i64 0}
!41 = !{!"_ZTSN8facebook5velox4exec7EvalCtxE", !42, i64 0, !43, i64 8, !44, i64 16, !18, i64 24, !18, i64 25, !45, i64 32, !50, i64 56, !18, i64 72, !18, i64 73, !18, i64 74, !18, i64 75, !53, i64 80, !54, i64 88}
!42 = !{!"p1 _ZTSN8facebook5velox4core7ExecCtxE", !10, i64 0}
!43 = !{!"p1 _ZTSN8facebook5velox4exec7ExprSetE", !10, i64 0}
!44 = !{!"p1 _ZTSN8facebook5velox9RowVectorE", !10, i64 0}
!45 = !{!"_ZTSSt6vectorISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EE", !46, i64 0}
!46 = !{!"_ZTSSt12_Vector_baseISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EE", !47, i64 0}
!47 = !{!"_ZTSNSt12_Vector_baseISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EE12_Vector_implE", !48, i64 0}
!48 = !{!"_ZTSNSt12_Vector_baseISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EE17_Vector_impl_dataE", !49, i64 0, !49, i64 8, !49, i64 16}
!49 = !{!"p1 _ZTSSt10shared_ptrIN8facebook5velox10BaseVectorEE", !10, i64 0}
!50 = !{!"_ZTSSt10shared_ptrIN8facebook5velox4exec14PeeledEncodingEE", !51, i64 0}
!51 = !{!"_ZTSSt12__shared_ptrIN8facebook5velox4exec14PeeledEncodingELN9__gnu_cxx12_Lock_policyE2EE", !52, i64 0, !11, i64 8}
!52 = !{!"p1 _ZTSN8facebook5velox4exec14PeeledEncodingE", !10, i64 0}
!53 = !{!"p1 _ZTSN8facebook5velox17SelectivityVectorE", !10, i64 0}
!54 = !{!"_ZTSSt10shared_ptrIN8facebook5velox4exec10EvalErrorsEE", !55, i64 0}
!55 = !{!"_ZTSSt12__shared_ptrIN8facebook5velox4exec10EvalErrorsELN9__gnu_cxx12_Lock_policyE2EE", !56, i64 0, !11, i64 8}
!56 = !{!"p1 _ZTSN8facebook5velox4exec10EvalErrorsE", !10, i64 0}
!57 = !{!58, !59, i64 0}
!58 = !{!"_ZTSN8facebook5velox4core7ExecCtxE", !59, i64 0, !60, i64 8, !61, i64 16, !62, i64 32, !67, i64 56, !72, i64 80}
!59 = !{!"p1 _ZTSN8facebook5velox6memory10MemoryPoolE", !10, i64 0}
!60 = !{!"p1 _ZTSN8facebook5velox4core8QueryCtxE", !10, i64 0}
!61 = !{!"_ZTSN8facebook5velox4core7ExecCtx18OptimizationParamsE", !18, i64 0, !18, i64 1, !18, i64 2, !18, i64 3, !18, i64 4, !4, i64 8}
!62 = !{!"_ZTSSt6vectorISt10unique_ptrIN8facebook5velox13DecodedVectorESt14default_deleteIS3_EESaIS6_EE", !63, i64 0}
!63 = !{!"_ZTSSt12_Vector_baseISt10unique_ptrIN8facebook5velox13DecodedVectorESt14default_deleteIS3_EESaIS6_EE", !64, i64 0}
!64 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN8facebook5velox13DecodedVectorESt14default_deleteIS3_EESaIS6_EE12_Vector_implE", !65, i64 0}
!65 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN8facebook5velox13DecodedVectorESt14default_deleteIS3_EESaIS6_EE17_Vector_impl_dataE", !66, i64 0, !66, i64 8, !66, i64 16}
!66 = !{!"p1 _ZTSSt10unique_ptrIN8facebook5velox13DecodedVectorESt14default_deleteIS2_EE", !10, i64 0}
!67 = !{!"_ZTSSt6vectorISt10unique_ptrIN8facebook5velox17SelectivityVectorESt14default_deleteIS3_EESaIS6_EE", !68, i64 0}
!68 = !{!"_ZTSSt12_Vector_baseISt10unique_ptrIN8facebook5velox17SelectivityVectorESt14default_deleteIS3_EESaIS6_EE", !69, i64 0}
!69 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN8facebook5velox17SelectivityVectorESt14default_deleteIS3_EESaIS6_EE12_Vector_implE", !70, i64 0}
!70 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN8facebook5velox17SelectivityVectorESt14default_deleteIS3_EESaIS6_EE17_Vector_impl_dataE", !71, i64 0, !71, i64 8, !71, i64 16}
!71 = !{!"p1 _ZTSSt10unique_ptrIN8facebook5velox17SelectivityVectorESt14default_deleteIS2_EE", !10, i64 0}
!72 = !{!"_ZTSSt10unique_ptrIN8facebook5velox10VectorPoolESt14default_deleteIS2_EE", !73, i64 0}
!73 = !{!"_ZTSSt15__uniq_ptr_dataIN8facebook5velox10VectorPoolESt14default_deleteIS2_ELb1ELb1EE", !74, i64 0}
!74 = !{!"_ZTSSt15__uniq_ptr_implIN8facebook5velox10VectorPoolESt14default_deleteIS2_EE", !75, i64 0}
!75 = !{!"_ZTSSt5tupleIJPN8facebook5velox10VectorPoolESt14default_deleteIS2_EEE", !76, i64 0}
!76 = !{!"_ZTSSt11_Tuple_implILm0EJPN8facebook5velox10VectorPoolESt14default_deleteIS2_EEE", !77, i64 0}
!77 = !{!"_ZTSSt10_Head_baseILm0EPN8facebook5velox10VectorPoolELb0EE", !78, i64 0}
!78 = !{!"p1 _ZTSN8facebook5velox10VectorPoolE", !10, i64 0}
!79 = !{!78, !78, i64 0}
!80 = !{!81, !82, i64 0}
!81 = !{!"_ZTSSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EE", !82, i64 0, !11, i64 8}
!82 = !{!"p1 _ZTSN8facebook5velox10BaseVectorE", !10, i64 0}
!83 = !{!84, !17, i64 24}
!84 = !{!"_ZTSN8facebook5velox10BaseVectorE", !85, i64 8, !17, i64 24, !18, i64 25, !86, i64 28, !87, i64 32, !89, i64 40, !59, i64 48, !4, i64 56, !90, i64 60, !90, i64 68, !90, i64 76, !90, i64 84, !94, i64 92, !18, i64 93}
!85 = !{!"_ZTSSt10shared_ptrIKN8facebook5velox4TypeEE", !8, i64 0}
!86 = !{!"_ZTSN8facebook5velox14VectorEncoding6SimpleE", !5, i64 0}
!87 = !{!"_ZTSN5boost13intrusive_ptrIN8facebook5velox6BufferEEE", !88, i64 0}
end_hunk_2
