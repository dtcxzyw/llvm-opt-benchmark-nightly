inline.NumInlined: 3368
inline.NumDeleted: 1576
begin_hunk_0_@_ZN3fmt3v116detail16get_dynamic_specINS0_7contextEEEiNS0_11arg_id_kindERKNS1_7arg_refINT_9char_typeEEERS6_
define linkonce_odr noundef i32 @_ZN3fmt3v116detail16get_dynamic_specINS0_7contextEEEiNS0_11arg_id_kindERKNS1_7arg_refINT_9char_typeEEERS6_(i32 noundef %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = icmp eq i32 %0, 1
  br i1 %i.a, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %1, align 8, !tbaa !18     ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !3429, !noalias !3432 ; 3 uses
  %i.e = icmp sgt i64 %i.d, -1
  br i1 %i.e, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = trunc i64 %i.d to i32
  %i.g = icmp slt i32 %i.b, %i.f
  br i1 %i.g, label %bb.d, label %_ZNK3fmt3v117context3argEi.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !18, !noalias !3432
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
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !18, !noalias !3432
  br label %_ZNK3fmt3v117context3argEi.exit.thread35.sink.split

bb.h:                                             ; preds = %bb.a
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !tbaa !39
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !30 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !3429, !noalias !3437 ; 5 uses
  %i.v = and i64 %i.u, 4611686018427387904
  %.not13.i.i.i = icmp eq i64 %i.v, 0
  br i1 %.not13.i.i.i, label %_ZNK3fmt3v117context3argEi.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !noalias !3437 ; 3 uses
  %i.y = icmp slt i64 %i.u, 0
  %.v.i.i.i = select i1 %i.y, i64 -32, i64 -16
  %i.z = getelementptr inbounds i8, ptr %i.x, i64 %.v.i.i.i ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !3442, !noalias !3437 ; 2 uses
  %.not14.not.i.i.i = icmp eq i64 %i.ab, 0
  br i1 %.not14.not.i.i.i, label %_ZNK3fmt3v117context3argEi.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.i
  %i.ac = load ptr, ptr %i.z, align 8, !tbaa !3445, !noalias !3437
  br label %bb.k

bb.j:                                             ; preds = %bb.k
  %i.ad = add nuw i64 %.01115.i.i.i, 1            ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.ad, %i.ab
  br i1 %exitcond.not.i.i.i, label %_ZNK3fmt3v117context3argEi.exit.thread, label %bb.k, !llvm.loop !3446

bb.k:                                             ; preds = %bb.j, %.lr.ph.i.i.i
  %.01115.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.ad, %bb.j ] ; 2 uses
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %i.ac, i64 %.01115.i.i.i ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !3447, !noalias !3437 ; 2 uses
  %i.ag = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.af) #28, !noalias !3437 ; 2 uses
  %i.ah = tail call noundef i64 @llvm.umin.i64(i64 %i.ag, i64 %.sroa.2.0.copyload)
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr nonnull %i.af, ptr %.sroa.0.0.copyload, i64 %i.ah), !noalias !3437
  %.not.i.i.i.i.i = icmp eq i32 %bcmp.i.i.i.i, 0
  %i.ai = icmp eq i64 %i.ag, %.sroa.2.0.copyload
  %i.aj = select i1 %.not.i.i.i.i.i, i1 %i.ai, i1 false
  br i1 %i.aj, label %_ZNK3fmt3v1117basic_format_argsINS0_7contextEE6get_idIcEEiNS0_17basic_string_viewIT_EE.exit.i.i, label %bb.j

_ZNK3fmt3v1117basic_format_argsINS0_7contextEE6get_idIcEEiNS0_17basic_string_viewIT_EE.exit.i.i: ; preds = %bb.k
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !3449, !noalias !3437 ; 6 uses
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
  %storemerge = load i128, ptr %storemerge.in, align 16, !tbaa !18 ; 3 uses
  %.sroa.08.sroa.0.sroa.0.0.extract.trunc71 = trunc i128 %storemerge to i32
  %.sroa.08.sroa.0.sroa.11.0.extract.shift8698 = lshr i128 %storemerge, 32
  %.sroa.08.sroa.0.sroa.11.0.extract.trunc87 = trunc i128 %.sroa.08.sroa.0.sroa.11.0.extract.shift8698 to i32
  %.sroa.08.sroa.11.0.extract.shift59 = lshr i128 %storemerge, 64
  %.sroa.08.sroa.11.0.extract.trunc60 = trunc nuw i128 %.sroa.08.sroa.11.0.extract.shift59 to i64
  %.sroa.23.0.in = getelementptr inbounds nuw i8, ptr %storemerge.in, i64 16
  %.sroa.23.0 = load i32, ptr %.sroa.23.0.in, align 16, !tbaa !3450 ; 2 uses
  %.not = icmp eq i32 %.sroa.23.0, 0
  br i1 %.not, label %_ZNK3fmt3v117context3argEi.exit.thread, label %_ZNK3fmt3v117context3argEi.exit.thread35

_ZNK3fmt3v117context3argEi.exit.thread:           ; preds = %bb.j, %bb.h, %bb.i, %_ZNK3fmt3v1117basic_format_argsINS0_7contextEE6get_idIcEEiNS0_17basic_string_viewIT_EE.exit.i.i, %bb.p, %bb.o, %bb.m, %bb.f, %bb.e, %bb.c, %_ZNK3fmt3v117context3argEi.exit
  tail call void @_ZN3fmt3v1112report_errorEPKc(ptr noundef nonnull @.str.88) #42
  unreachable

_ZNK3fmt3v117context3argEi.exit.thread35.sink.split: ; preds = %bb.p, %bb.g
  %.sink = phi i32 [ %i.b, %bb.g ], [ %i.al, %bb.p ]
  %.sink104 = phi ptr [ %i.s, %bb.g ], [ %i.x, %bb.p ]
  %.sroa.23.037.ph = phi i32 [ %i.q, %bb.g ], [ %i.ax, %bb.p ]
  %i.ay = zext nneg i32 %.sink to i64
  %i.az = getelementptr inbounds nuw [16 x i8], ptr %.sink104, i64 %i.ay
  %.sroa.08.0.copyload23 = load i128, ptr %i.az, align 16, !tbaa !18 ; 3 uses
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
  tail call void @_ZN3fmt3v1112report_errorEPKc(ptr noundef nonnull @.str.90) #42
  unreachable

bb.x:                                             ; preds = %_ZNK3fmt3v117context3argEi.exit.thread35
  tail call void @_ZN3fmt3v1112report_errorEPKc(ptr noundef nonnull @.str.90) #42
  unreachable

bb.y:                                             ; preds = %_ZNK3fmt3v117context3argEi.exit.thread35
  tail call void @_ZN3fmt3v1112report_errorEPKc(ptr noundef nonnull @.str.90) #42
  unreachable

bb.z:                                             ; preds = %_ZNK3fmt3v117context3argEi.exit.thread35
  tail call void @_ZN3fmt3v1112report_errorEPKc(ptr noundef nonnull @.str.90) #42
  unreachable

bb.aa:                                            ; preds = %_ZNK3fmt3v117context3argEi.exit.thread35
  tail call void @_ZN3fmt3v1112report_errorEPKc(ptr noundef nonnull @.str.90) #42
  unreachable

bb.ab:                                            ; preds = %_ZNK3fmt3v117context3argEi.exit.thread35
  tail call void @_ZN3fmt3v1112report_errorEPKc(ptr noundef nonnull @.str.90) #42
  unreachable

bb.ac:                                            ; preds = %_ZNK3fmt3v117context3argEi.exit.thread35
  tail call void @_ZN3fmt3v1112report_errorEPKc(ptr noundef nonnull @.str.90) #42
  unreachable

bb.ad:                                            ; preds = %_ZNK3fmt3v117context3argEi.exit.thread35
  tail call void @_ZN3fmt3v1112report_errorEPKc(ptr noundef nonnull @.str.90) #42
  unreachable

bb.ae:                                            ; preds = %_ZNK3fmt3v117context3argEi.exit.thread35
  tail call void @_ZN3fmt3v1112report_errorEPKc(ptr noundef nonnull @.str.90) #42
  unreachable

bb.af:                                            ; preds = %_ZNK3fmt3v117context3argEi.exit.thread35
  tail call void @_ZN3fmt3v1112report_errorEPKc(ptr noundef nonnull @.str.90) #42
  unreachable

_ZNK3fmt3v1116basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit: ; preds = %bb.u, %bb.r, %bb.s, %bb.t, %bb.v
  %.0.i = phi i64 [ %.sroa.08.sroa.0.sroa.0.0.insert.insert, %bb.t ], [ %.sroa.08.sroa.0.sroa.0.0.insert.insert69, %bb.u ], [ %.sroa.08.sroa.0.sroa.0.0.insert.insert66, %bb.v ], [ %i.bc, %bb.r ], [ %i.bd, %bb.s ] ; 2 uses
  %i.be = icmp ugt i64 %.0.i, 2147483647
  br i1 %i.be, label %_ZNK3fmt3v1116basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit.thread, label %_ZNK3fmt3v1116basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit.thread40

_ZNK3fmt3v1116basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit.thread: ; preds = %bb.u, %bb.q, %_ZNK3fmt3v1116basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit
  tail call void @_ZN3fmt3v1112report_errorEPKc(ptr noundef nonnull @.str.89) #42
  unreachable

_ZNK3fmt3v1116basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit.thread40: ; preds = %bb.q, %_ZNK3fmt3v1116basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit
  %.0.i42 = phi i64 [ %.0.i, %_ZNK3fmt3v1116basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit ], [ %i.bb, %bb.q ]
  %i.bf = trunc nuw nsw i64 %.0.i42 to i32
  ret i32 %i.bf
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZN3fmt3v116detail5writeIcNS0_14basic_appenderIcEElTnNSt9enable_ifIXaaaasr11is_integralIT1_EE5valuentsr3std7is_sameIS6_bEE5valuentsr3std7is_sameIS6_T_EE5valueEiE4typeELi0EEET0_SA_S6_(ptr %0, i64 noundef %1) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = icmp slt i64 %1, 0                       ; 2 uses
  %spec.select = tail call i64 @llvm.abs.i64(i64 %1, i1 false) ; 6 uses
  %i.b = or i64 %spec.select, 1
  %i.c = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.b, i1 true)
  %i.d = xor i64 %i.c, 63
  %i.e = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v116detail15do_count_digitsEmE9bsr2log10.const, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1, !tbaa !18    ; 2 uses
  %i.g = zext i8 %i.f to i32
  %i.h = zext i8 %i.f to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr @_ZZN3fmt3v116detail15do_count_digitsEmE20zero_or_powers_of_10.const, i64 %i.h
  %i.j = load i64, ptr %i.i, align 8, !tbaa !30
  %i.k = icmp ult i64 %spec.select, %i.j
  %.neg.i.i = sext i1 %i.k to i32
  %i.l = add nsw i32 %.neg.i.i, %i.g              ; 4 uses
  %.lobit = lshr i64 %1, 63
  %i.m = sext i32 %i.l to i64
  %i.n = add nsw i64 %.lobit, %i.m                ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !3349 ; 2 uses
  %i.q = add i64 %i.n, %i.p                       ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !3348 ; 2 uses
  %i.t = icmp ugt i64 %i.q, %i.s
  br i1 %i.t, label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i, label %_ZN3fmt3v116detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit

_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i: ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !3345
  tail call void %i.v(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.q), !inline_history !3452
  %.pre.i = load i64, ptr %i.o, align 8, !tbaa !3349 ; 3 uses
  %.pre14.i = load i64, ptr %i.r, align 8, !tbaa !3348 ; 3 uses
  %.pre15.i = add i64 %.pre.i, %i.n               ; 2 uses
  %i.w = icmp ult i64 %.pre14.i, %.pre15.i
  br i1 %i.w, label %_ZN3fmt3v116detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.thread, label %_ZN3fmt3v116detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit

_ZN3fmt3v116detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit: ; preds = %bb.a, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i
  %i.x = phi i64 [ %.pre14.i, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i ], [ %i.s, %bb.a ]
  %i.y = phi i64 [ %.pre.i, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i ], [ %i.p, %bb.a ]
  %.pre-phi19.i = phi i64 [ %.pre15.i, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i ], [ %i.q, %bb.a ] ; 2 uses
  store i64 %.pre-phi19.i, ptr %i.o, align 8, !tbaa !3349
  %i.z = load ptr, ptr %0, align 8, !tbaa !3347   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.y ; 3 uses
  %.not = icmp eq ptr %i.z, null
  br i1 %.not, label %_ZN3fmt3v116detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZN3fmt3v116detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit
  br i1 %i.a, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 1
  store i8 45, ptr %i.aa, align 1, !tbaa !18
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.020 = phi ptr [ %i.ab, %bb.c ], [ %i.aa, %bb.b ] ; 3 uses
  %i.ac = icmp ugt i64 %spec.select, 99
  br i1 %i.ac, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.i
  %.020.i = phi i32 [ %i.ad, %.lr.ph.i ], [ %i.l, %bb.d ]
  %.01819.i = phi i64 [ %i.ak, %.lr.ph.i ], [ %spec.select, %bb.d ] ; 3 uses
  %i.ad = add i32 %.020.i, -2                     ; 3 uses
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw i8, ptr %.020, i64 %i.ae
  %i.ag = urem i64 %.01819.i, 100
  %i.ah = shl nuw nsw i64 %i.ag, 1
  %i.ai = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v116detail7digits2EmE4data, i64 %i.ah
  %i.aj = load i16, ptr %i.ai, align 2
  store i16 %i.aj, ptr %i.af, align 1
  %i.ak = udiv i64 %.01819.i, 100                 ; 2 uses
  %i.al = icmp ugt i64 %.01819.i, 9999
  br i1 %i.al, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !3453

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.d
  %.018.lcssa.i = phi i64 [ %spec.select, %bb.d ], [ %i.ak, %.lr.ph.i ] ; 3 uses
  %.0.lcssa.i = phi i32 [ %i.l, %bb.d ], [ %i.ad, %.lr.ph.i ] ; 2 uses
  %i.am = icmp samesign ugt i64 %.018.lcssa.i, 9
  br i1 %i.am, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  %i.an = add i32 %.0.lcssa.i, -2
  %i.ao = zext i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %.020, i64 %i.ao
  %i.aq = shl nuw nsw i64 %.018.lcssa.i, 1
  %i.ar = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v116detail7digits2EmE4data, i64 %i.aq
  %i.as = load i16, ptr %i.ar, align 2
  store i16 %i.as, ptr %i.ap, align 1
  br label %_ZN3fmt3v116detail17do_format_decimalIcmEEPT_S4_T0_i.exit

bb.f:                                             ; preds = %._crit_edge.i
  %i.at = trunc nuw nsw i64 %.018.lcssa.i to i8
  %i.au = or disjoint i8 %i.at, 48
  %i.av = add i32 %.0.lcssa.i, -1
  %i.aw = zext i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %.020, i64 %i.aw
  store i8 %i.au, ptr %i.ax, align 1, !tbaa !18
  br label %_ZN3fmt3v116detail17do_format_decimalIcmEEPT_S4_T0_i.exit

_ZN3fmt3v116detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.thread: ; preds = %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i, %_ZN3fmt3v116detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit
  %i.ay = phi i64 [ %.pre14.i, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i ], [ %i.x, %_ZN3fmt3v116detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit ]
  %i.az = phi i64 [ %.pre.i, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i ], [ %.pre-phi19.i, %_ZN3fmt3v116detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit ] ; 2 uses
  br i1 %i.a, label %bb.g, label %bb.i

bb.g:                                             ; preds = %_ZN3fmt3v116detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.thread
  %i.ba = add i64 %i.az, 1                        ; 3 uses
  %i.bb = icmp ugt i64 %i.ba, %i.ay
  br i1 %i.bb, label %bb.h, label %_ZN3fmt3v1114basic_appenderIcEaSEc.exit

bb.h:                                             ; preds = %bb.g
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !3345
  tail call void %i.bd(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ba), !inline_history !3454
  %.pre.i.i = load i64, ptr %i.o, align 8, !tbaa !3349 ; 2 uses
  %.pre2.i.i = add i64 %.pre.i.i, 1
  br label %_ZN3fmt3v1114basic_appenderIcEaSEc.exit

_ZN3fmt3v1114basic_appenderIcEaSEc.exit:          ; preds = %bb.g, %bb.h
  %.pre-phi.i.i = phi i64 [ %i.ba, %bb.g ], [ %.pre2.i.i, %bb.h ]
  %i.be = phi i64 [ %i.az, %bb.g ], [ %.pre.i.i, %bb.h ]
  %i.bf = load ptr, ptr %0, align 8, !tbaa !3347
  store i64 %.pre-phi.i.i, ptr %i.o, align 8, !tbaa !3349
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.be
  store i8 45, ptr %i.bg, align 1, !tbaa !18
  br label %bb.i

bb.i:                                             ; preds = %_ZN3fmt3v1114basic_appenderIcEaSEc.exit, %_ZN3fmt3v116detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.thread
  %i.bh = tail call ptr @_ZN3fmt3v116detail14format_decimalIcmNS0_14basic_appenderIcEETnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT1_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_i(ptr nonnull %0, i64 noundef %spec.select, i32 noundef %i.l)
  br label %_ZN3fmt3v116detail17do_format_decimalIcmEEPT_S4_T0_i.exit

_ZN3fmt3v116detail17do_format_decimalIcmEEPT_S4_T0_i.exit: ; preds = %bb.e, %bb.f, %bb.i
  %.sroa.018.1 = phi ptr [ %i.bh, %bb.i ], [ %0, %bb.f ], [ %0, %bb.e ]
  ret ptr %.sroa.018.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZN3fmt3v116detail14format_decimalIcmNS0_14basic_appenderIcEETnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT1_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_i(ptr %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = alloca [20 x i8], align 16               ; 7 uses
  %i.b = zext i32 %2 to i64                       ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !3349 ; 2 uses
  %i.e = add i64 %i.d, %i.b                       ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !3348
  %i.h = icmp ugt i64 %i.e, %i.g
  br i1 %i.h, label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i, label %_ZN3fmt3v116detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit

_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i: ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !3345
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.e), !inline_history !3452
  %.pre.i = load i64, ptr %i.c, align 8, !tbaa !3349 ; 2 uses
  %.pre14.i = load i64, ptr %i.f, align 8, !tbaa !3348
  %.pre15.i = add i64 %.pre.i, %i.b               ; 2 uses
  %i.k = icmp ult i64 %.pre14.i, %.pre15.i
  br i1 %i.k, label %_ZN3fmt3v116detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.thread, label %_ZN3fmt3v116detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit

_ZN3fmt3v116detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit: ; preds = %bb.a, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i
  %i.l = phi i64 [ %.pre.i, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i ], [ %i.d, %bb.a ]
  %.pre-phi19.i = phi i64 [ %.pre15.i, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i ], [ %i.e, %bb.a ]
  store i64 %.pre-phi19.i, ptr %i.c, align 8, !tbaa !3349
  %i.m = load ptr, ptr %0, align 8, !tbaa !3347   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.l ; 3 uses
  %.not.not = icmp eq ptr %i.m, null
  br i1 %.not.not, label %_ZN3fmt3v116detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZN3fmt3v116detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit
  %i.o = icmp ugt i64 %1, 99
  br i1 %i.o, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.020.i = phi i32 [ %i.p, %.lr.ph.i ], [ %2, %bb.b ]
  %.01819.i = phi i64 [ %i.w, %.lr.ph.i ], [ %1, %bb.b ] ; 3 uses
  %i.p = add i32 %.020.i, -2                      ; 3 uses
  %i.q = zext i32 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.q
  %i.s = urem i64 %.01819.i, 100
  %i.t = shl nuw nsw i64 %i.s, 1
  %i.u = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v116detail7digits2EmE4data, i64 %i.t
  %i.v = load i16, ptr %i.u, align 2
  store i16 %i.v, ptr %i.r, align 1
  %i.w = udiv i64 %.01819.i, 100                  ; 2 uses
  %i.x = icmp ugt i64 %.01819.i, 9999
  br i1 %i.x, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !3453

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.b
  %.018.lcssa.i = phi i64 [ %1, %bb.b ], [ %i.w, %.lr.ph.i ] ; 3 uses
  %.0.lcssa.i = phi i32 [ %2, %bb.b ], [ %i.p, %.lr.ph.i ] ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN5folly13to_ascii_withILm10ENS_17to_ascii_alphabetILb0EEELm20EEEmRAT1__cm:bb.a
  %i.ah = icmp ult i64 %1, %i.ag
  br i1 %i.ah, label %.lr.ph.preheader, label %bb.p, !prof !21

bb.p:                                             ; preds = %bb.o
  %i.ai = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 128), align 8, !tbaa !30
  %i.aj = icmp ult i64 %1, %i.ai
  br i1 %i.aj, label %.lr.ph.preheader, label %bb.q, !prof !21

bb.q:                                             ; preds = %bb.p
  %i.ak = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 136), align 8, !tbaa !30
  %i.al = icmp ult i64 %1, %i.ak
  br i1 %i.al, label %.lr.ph.preheader, label %bb.r, !prof !21

bb.r:                                             ; preds = %bb.q
  %i.am = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 144), align 8, !tbaa !30
  %i.an = icmp ult i64 %1, %i.am
  br i1 %i.an, label %.lr.ph.preheader, label %bb.s, !prof !21

bb.s:                                             ; preds = %bb.r
  %i.ao = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 152), align 8, !tbaa !30
  %i.ap = icmp ult i64 %1, %i.ao
  br i1 %i.ap, label %_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEmPcm.exit, label %.lr.ph.preheader, !prof !21

_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEmPcm.exit: ; preds = %bb.s
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.s, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEmPcm.exit
  %.ph = phi i64 [ 19, %_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEmPcm.exit ], [ 18, %bb.r ], [ 17, %bb.q ], [ 16, %bb.p ], [ 15, %bb.o ], [ 14, %bb.n ], [ 13, %bb.m ], [ 12, %bb.l ], [ 11, %bb.k ], [ 10, %bb.j ], [ 9, %bb.i ], [ 8, %bb.h ], [ 7, %bb.g ], [ 6, %bb.f ], [ 5, %bb.e ], [ 4, %bb.d ], [ 3, %bb.c ], [ 20, %bb.s ] ; 5 uses
  %i.aq = add nsw i64 %.ph, -3                    ; 2 uses
  %i.ar = and i64 %i.aq, 2
  %lcmp.mod.not.not = icmp eq i64 %i.ar, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.prol, label %.lr.ph.prol.loopexit

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.as = add nsw i64 %.ph, -2                    ; 3 uses
  %i.at = udiv i64 %1, 100                        ; 2 uses
  %i.au = urem i64 %1, 100
  %i.av = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail14to_ascii_tableILm10ENS_17to_ascii_alphabetILb0EEEE4dataE, i64 %i.au
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !3621
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 %i.as
  store i16 %i.aw, ptr %i.ax, align 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.0.i6.unr = phi i64 [ %1, %.lr.ph.preheader ], [ %i.at, %.lr.ph.prol ]
  %.014.i5.unr = phi i64 [ %.ph, %.lr.ph.preheader ], [ %i.as, %.lr.ph.prol ]
  %.lcssa20.unr = phi i64 [ poison, %.lr.ph.preheader ], [ %i.as, %.lr.ph.prol ]
  %.lcssa.unr = phi i64 [ poison, %.lr.ph.preheader ], [ %i.at, %.lr.ph.prol ]
  %i.ay = icmp ult i64 %i.aq, 2
  br i1 %i.ay, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.0.i6 = phi i64 [ %i.bg, %.lr.ph ], [ %.0.i6.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %.014.i5 = phi i64 [ %i.bf, %.lr.ph ], [ %.014.i5.unr, %.lr.ph.prol.loopexit ] ; 2 uses
  %i.az = udiv i64 %.0.i6, 100
  %i.ba = urem i64 %.0.i6, 100
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail14to_ascii_tableILm10ENS_17to_ascii_alphabetILb0EEEE4dataE, i64 %i.ba
  %i.bc = load i16, ptr %i.bb, align 2, !tbaa !3621
  %i.bd = getelementptr i8, ptr %0, i64 %.014.i5
  %i.be = getelementptr i8, ptr %i.bd, i64 -2
  store i16 %i.bc, ptr %i.be, align 1
  %i.bf = add i64 %.014.i5, -4                    ; 4 uses
  %i.bg = udiv i64 %.0.i6, 10000                  ; 2 uses
  %i.bh = urem i64 %i.az, 100
  %i.bi = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail14to_ascii_tableILm10ENS_17to_ascii_alphabetILb0EEEE4dataE, i64 %i.bh
  %i.bj = load i16, ptr %i.bi, align 2, !tbaa !3621
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 %i.bf
  store i16 %i.bj, ptr %i.bk, align 1
  %i.bl = icmp ugt i64 %i.bf, 2
  br i1 %i.bl, label %.lr.ph, label %._crit_edge, !llvm.loop !3622

._crit_edge.thread:                               ; preds = %bb.a
  %i.bm = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail14to_ascii_tableILm10ENS_17to_ascii_alphabetILb0EEEE4dataE, i64 %1
  %i.bn = load i16, ptr %i.bm, align 2, !tbaa !3621
  br label %bb.u

._crit_edge:                                      ; preds = %.lr.ph, %.lr.ph.prol.loopexit
  %.lcssa20 = phi i64 [ %.lcssa20.unr, %.lr.ph.prol.loopexit ], [ %i.bf, %.lr.ph ]
  %.lcssa = phi i64 [ %.lcssa.unr, %.lr.ph.prol.loopexit ], [ %i.bg, %.lr.ph ]
  %i.bo = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail14to_ascii_tableILm10ENS_17to_ascii_alphabetILb0EEEE4dataE, i64 %.lcssa
  %i.bp = load i16, ptr %i.bo, align 2, !tbaa !3621 ; 2 uses
  %i.bq = icmp eq i64 %.lcssa20, 2
  br i1 %i.bq, label %bb.t, label %bb.u

bb.t:                                             ; preds = %._crit_edge.thread14, %._crit_edge
  %i.br = phi i16 [ %i.h, %._crit_edge.thread14 ], [ %i.bp, %._crit_edge ]
  %i.bs = phi i64 [ 2, %._crit_edge.thread14 ], [ %.ph, %._crit_edge ]
  store i16 %i.br, ptr %0, align 1
  br label %_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEvPcmm.exit

bb.u:                                             ; preds = %._crit_edge.thread, %._crit_edge
  %i.bt = phi i16 [ %i.bn, %._crit_edge.thread ], [ %i.bp, %._crit_edge ]
  %i.bu = phi i64 [ 1, %._crit_edge.thread ], [ %.ph, %._crit_edge ]
  %i.bv = lshr i16 %i.bt, 8
  %i.bw = trunc nuw i16 %i.bv to i8
  store i8 %i.bw, ptr %0, align 1, !tbaa !18
  br label %_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEvPcmm.exit

_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEvPcmm.exit: ; preds = %bb.t, %bb.u
  %i.bx = phi i64 [ %i.bs, %bb.t ], [ %i.bu, %bb.u ]
  ret i64 %i.bx
}

; Function Attrs: cold mustprogress noinline noreturn nounwind optsize uwtable
define linkonce_odr void @_ZN5folly6detail15terminate_with_ISt13runtime_errorJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpT0_(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #37 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::runtime_error", align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  invoke void @_ZNSt13runtime_errorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5folly15throw_exceptionISt13runtime_errorEEvOT_(ptr noundef nonnull align 8 dereferenceable(16) %1) #14
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.a = landingpad { ptr, i32 }
          catch ptr null
  %i.b = extractvalue { ptr, i32 } %i.a, 0
  call void @__clang_call_terminate(ptr %i.b) #46
  unreachable
}

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly15throw_exceptionISt13runtime_errorEEvOT_(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #13 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 2 uses
  tail call void @_ZNSt13runtime_errorC1EOS_(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %0) #28
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #42
  unreachable
}

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorC1EOS_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @__cxx_global_var_init.105() #38 section ".text.startup" comdat($_ZN5folly18threadlocal_detail10StaticMetaINS_10TLRefCountEvE6uniqueE) {
bb.a:
  %i.a = load i8, ptr @_ZGVN5folly18threadlocal_detail10StaticMetaINS_10TLRefCountEvE6uniqueE, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @_ZGVN5folly18threadlocal_detail10StaticMetaINS_10TLRefCountEvE6uniqueE, align 8
  tail call void @_ZN5folly6detail14UniqueInstance7enforceERNS1_3ArgE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN5folly6detail14UniqueInstanceC1ITtTpTyENS_18threadlocal_detail10StaticMetaEJNS_10TLRefCountEEJvEEENS_5tag_tIJT_IJDpT0_DpT1_EEEEENS6_IJS9_EEENS6_IJSB_EEEE3arg) #28
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN5folly6detail5thunk4makeINS0_14UniqueInstance5ValueEJEEEPvDpT0_() #4 comdat align 2 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #43 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  ret ptr %i.a
}

; Function Attrs: nounwind
declare void @_ZN5folly6detail14UniqueInstance7enforceERNS1_3ArgE(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #2

; Function Attrs: nofree nounwind uwtable
define internal void @_GLOBAL__I_000101() #39 section ".text.startup" {
bb.a:
  %i.a = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5folly12_GLOBAL__N_111FatalHelperD2Ev, ptr nonnull @_ZN5folly12_GLOBAL__N_111fatalHelperE, ptr nonnull @__dso_handle) #28 ; 0 uses
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #29

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #40

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #15

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #41

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.mul.v4i64(<4 x i64>) #15

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #6 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { cold mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #8 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #9 = { cold nofree noreturn }
attributes #10 = { nofree nounwind }
attributes #11 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #13 = { cold mustprogress noinline noreturn optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #14 = { cold noreturn }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #17 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #18 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #19 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #20 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #21 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #22 = { mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #23 = { cold noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #24 = { cold mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #25 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #27 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #28 = { nounwind }
attributes #29 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #30 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #31 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #32 = { inlinehint mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #33 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #34 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #35 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #36 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #37 = { cold mustprogress noinline noreturn nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #38 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #39 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #40 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #41 = { nocallback nofree nounwind willreturn memory(argmem: read) }
attributes #42 = { noreturn }
attributes #43 = { builtin allocsize(0) }
attributes #44 = { cold nounwind }
attributes #45 = { nounwind allocsize(0) }
attributes #46 = { noreturn nounwind }
attributes #47 = { nounwind allocsize(1) }
attributes #48 = { cold noreturn nounwind }
attributes #49 = { builtin nounwind }
attributes #50 = { cold }
attributes #51 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 7, !"openmp", i32 51}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C++ TBAA"}
!11 = !{!12, !13, i64 0}
!12 = !{!"_ZTSSt10type_index", !13, i64 0}
!13 = !{!"p1 _ZTSSt9type_info", !14, i64 0}
!14 = !{!"any pointer", !9, i64 0}
!15 = !{!16, !17, i64 8}
!16 = !{!"_ZTSSt9type_info", !17, i64 8}
!17 = !{!"p1 omnipotent char", !14, i64 0}
!18 = !{!9, !9, i64 0}
!19 = !{!20, !17, i64 0}
!20 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !17, i64 0}
!21 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!22 = !{!23, !17, i64 0}
!23 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !20, i64 0, !24, i64 8, !9, i64 16}
!24 = !{!"long", !9, i64 0}
!25 = !{!23, !24, i64 8}
!26 = !{!"branch_weights", i32 2002, i32 2000}
!27 = !{!28, !24, i64 16}
!28 = !{!"_ZTSN5folly13fbstring_coreIcE11MediumLargeE", !17, i64 0, !24, i64 8, !24, i64 16}
!29 = !{!"branch_weights", i32 1, i32 4001}
!30 = !{!24, !24, i64 0}
!31 = !{!"branch_weights", i32 1, i32 1048575}
!32 = !{!33, !33, i64 0}
!33 = !{!"bool", !9, i64 0}
!34 = !{i8 0, i8 2}
!35 = !{}
!36 = !{!37, !37, i64 0}
!37 = !{!"vtable pointer", !10, i64 0}
!38 = !{i64 0, i64 8, !39, i64 8, i64 8, !30, i64 16, i64 8, !30}
!39 = !{!17, !17, i64 0}
!40 = !{!41}
!41 = distinct !{!41, !42, !"_ZN3fmt3v116formatIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_NS0_7fstringIJDpT_EE1tEDpOS9_: argument 0"}
!42 = distinct !{!42, !"_ZN3fmt3v116formatIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_NS0_7fstringIJDpT_EE1tEDpOS9_"}
!43 = !{!44}
!44 = distinct !{!44, !45, !"_ZN3fmt3v116formatIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_NS0_7fstringIJDpT_EE1tEDpOS9_: argument 0"}
!45 = distinct !{!45, !"_ZN3fmt3v116formatIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_NS0_7fstringIJDpT_EE1tEDpOS9_"}
!46 = !{!47}
!47 = distinct !{!47, !48, !"_ZN3fmt3v116formatIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_NS0_7fstringIJDpT_EE1tEDpOS9_: argument 0"}
!48 = distinct !{!48, !"_ZN3fmt3v116formatIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_NS0_7fstringIJDpT_EE1tEDpOS9_"}
!49 = !{!50}
!50 = distinct !{!50, !51, !"_ZN5folly10symbolizer16getStackTraceStrB5cxx11Ebm: argument 0"}
!51 = distinct !{!51, !"_ZN5folly10symbolizer16getStackTraceStrB5cxx11Ebm"}
!52 = !{!53}
!53 = distinct !{!53, !54, !"_ZN5folly8demangleERKSt9type_info: argument 0"}
!54 = distinct !{!54, !"_ZN5folly8demangleERKSt9type_info"}
!55 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!56 = !{!57}
!57 = distinct !{!57, !58, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_: argument 0"}
!58 = distinct !{!58, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_"}
!59 = !{!60, !60, i64 0}
!60 = !{!"p1 _ZTSN5folly6detail14TypeDescriptorE", !14, i64 0}
!61 = !{!62}
!62 = distinct !{!62, !63, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_: argument 0"}
!63 = distinct !{!63, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_"}
!64 = !{!65}
!65 = distinct !{!65, !66, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!66 = distinct !{!66, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!67 = !{!68, !60, i64 0}
!68 = !{!"_ZTSNSt12_Vector_baseIN5folly6detail14TypeDescriptorESaIS2_EE17_Vector_impl_dataE", !60, i64 0, !60, i64 8, !60, i64 16}
!69 = !{!68, !60, i64 16}
!70 = !{!71, !72, i64 0}
!71 = !{!"_ZTSSt10_HashtableIN5folly6detail14TypeDescriptorESt4pairIKS2_PNS1_19SingletonHolderBaseEESaIS7_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_20TypeDescriptorHasherENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE", !72, i64 0, !24, i64 8, !74, i64 16, !24, i64 24, !76, i64 32, !75, i64 48}
!72 = !{!"p2 _ZTSNSt8__detail15_Hash_node_baseE", !73, i64 0}
!73 = !{!"any p2 pointer", !14, i64 0}
!74 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !75, i64 0}
!75 = !{!"p1 _ZTSNSt8__detail15_Hash_node_baseE", !14, i64 0}
!76 = !{!"_ZTSNSt8__detail20_Prime_rehash_policyE", !77, i64 0, !24, i64 8}
!77 = !{!"float", !9, i64 0}
!78 = !{!71, !24, i64 8}
!79 = !{!76, !77, i64 0}
!80 = !{!81, !72, i64 0}
!81 = !{!"_ZTSSt10_HashtableIPN5folly6detail19SingletonHolderBaseES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE", !72, i64 0, !24, i64 8, !74, i64 16, !24, i64 24, !76, i64 32, !75, i64 48}
!82 = !{!81, !24, i64 8}
!83 = !{!84, !72, i64 0}
!84 = !{!"_ZTSSt10_HashtableIN5folly6detail14TypeDescriptorES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ENS1_20TypeDescriptorHasherENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE", !72, i64 0, !24, i64 8, !74, i64 16, !24, i64 24, !76, i64 32, !75, i64 48}
!85 = !{!84, !24, i64 8}
!86 = !{!87, !8, i64 0}
!87 = !{!"_ZTSSt13__atomic_baseIjE", !8, i64 0}
!88 = !{!89, !90, i64 0}
!89 = !{!"_ZTSSt6atomicIN5folly14SingletonVault4TypeEE", !90, i64 0}
!90 = !{!"_ZTSN5folly14SingletonVault4TypeE", !9, i64 0}
!91 = !{!92, !33, i64 0}
!92 = !{!"_ZTSSt13__atomic_baseIbE", !33, i64 0}
!93 = !{!94, !24, i64 0}
!94 = !{!"_ZTSNSt6chrono8durationIlSt5ratioILl1ELl1000EEEE", !24, i64 0}
!95 = !{!96}
!96 = distinct !{!96, !97, !"_ZN5folly6detail17CancellationState6createEv: argument 0"}
!97 = distinct !{!97, !"_ZN5folly6detail17CancellationState6createEv"}
!98 = !{!99, !24, i64 0}
!99 = !{!"_ZTSSt13__atomic_baseImE", !24, i64 0}
!100 = !{!101, !101, i64 0}
!101 = !{!"p1 _ZTSN5folly6detail17CancellationStateE", !14, i64 0}
!102 = !{!103, !33, i64 424}
!103 = !{!"_ZTSN5folly14SingletonVaultE", !104, i64 0, !108, i64 64, !108, i64 128, !110, i64 192, !114, i64 224, !109, i64 288, !116, i64 344, !89, i64 356, !120, i64 360, !94, i64 368, !121, i64 376, !128, i64 408, !33, i64 424}
!104 = !{!"_ZTSN5folly12SynchronizedISt13unordered_mapINS_6detail14TypeDescriptorEPNS2_19SingletonHolderBaseENS2_20TypeDescriptorHasherESt8equal_toIS3_ESaISt4pairIKS3_S5_EEENS_15SharedMutexImplILb0EvSt6atomicNS_19shared_mutex_detail18PolicySuppressTSANEEEEE", !105, i64 0, !106, i64 56}
!105 = !{!"_ZTSSt13unordered_mapIN5folly6detail14TypeDescriptorEPNS1_19SingletonHolderBaseENS1_20TypeDescriptorHasherESt8equal_toIS2_ESaISt4pairIKS2_S4_EEE", !71, i64 0}
!106 = !{!"_ZTSN5folly15SharedMutexImplILb0EvSt6atomicNS_19shared_mutex_detail18PolicySuppressTSANEEE", !107, i64 0}
!107 = !{!"_ZTSSt6atomicIjE", !87, i64 0}
!108 = !{!"_ZTSN5folly12SynchronizedISt13unordered_setIPNS_6detail19SingletonHolderBaseESt4hashIS4_ESt8equal_toIS4_ESaIS4_EENS_15SharedMutexImplILb0EvSt6atomicNS_19shared_mutex_detail18PolicySuppressTSANEEEEE", !109, i64 0, !106, i64 56}
!109 = !{!"_ZTSSt13unordered_setIPN5folly6detail19SingletonHolderBaseESt4hashIS3_ESt8equal_toIS3_ESaIS3_EE", !81, i64 0}
!110 = !{!"_ZTSN5folly12SynchronizedISt6vectorINS_6detail14TypeDescriptorESaIS3_EENS_15SharedMutexImplILb0EvSt6atomicNS_19shared_mutex_detail18PolicySuppressTSANEEEEE", !111, i64 0, !106, i64 24}
!111 = !{!"_ZTSSt6vectorIN5folly6detail14TypeDescriptorESaIS2_EE", !112, i64 0}
!112 = !{!"_ZTSSt12_Vector_baseIN5folly6detail14TypeDescriptorESaIS2_EE", !113, i64 0}
!113 = !{!"_ZTSNSt12_Vector_baseIN5folly6detail14TypeDescriptorESaIS2_EE12_Vector_implE", !68, i64 0}
!114 = !{!"_ZTSN5folly12SynchronizedISt13unordered_setINS_6detail14TypeDescriptorENS2_20TypeDescriptorHasherESt8equal_toIS3_ESaIS3_EENS_15SharedMutexImplILb0EvSt6atomicNS_19shared_mutex_detail18PolicySuppressTSANEEEEE", !115, i64 0, !106, i64 56}
!115 = !{!"_ZTSSt13unordered_setIN5folly6detail14TypeDescriptorENS1_20TypeDescriptorHasherESt8equal_toIS2_ESaIS2_EE", !84, i64 0}
!116 = !{!"_ZTSN5folly12SynchronizedINS_6detail19SingletonVaultStateENS_15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEE", !117, i64 0, !119, i64 8}
!117 = !{!"_ZTSN5folly6detail19SingletonVaultStateE", !118, i64 0, !33, i64 4}
!118 = !{!"_ZTSN5folly6detail19SingletonVaultState4TypeE", !9, i64 0}
!119 = !{!"_ZTSN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEEE", !107, i64 0}
!120 = !{!"_ZTSSt6atomicIbE", !92, i64 0}
!121 = !{!"_ZTSN5folly12SynchronizedISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEE", !122, i64 0, !127, i64 24}
!122 = !{!"_ZTSSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !123, i64 0}
!123 = !{!"_ZTSSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !124, i64 0}
!124 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implE", !125, i64 0}
!125 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !126, i64 0, !126, i64 8, !126, i64 16}
!126 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !14, i64 0}
!127 = !{!"_ZTSN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEE", !107, i64 0}
!128 = !{!"_ZTSN5folly12SynchronizedINS_18CancellationSourceENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEE", !129, i64 0, !127, i64 8}
!129 = !{!"_ZTSN5folly18CancellationSourceE", !130, i64 0}
!130 = !{!"_ZTSSt10unique_ptrIN5folly6detail17CancellationStateENS1_30CancellationStateSourceDeleterEE", !131, i64 0}
!131 = !{!"_ZTSSt15__uniq_ptr_dataIN5folly6detail17CancellationStateENS1_30CancellationStateSourceDeleterELb1ELb1EE", !132, i64 0}
!132 = !{!"_ZTSSt15__uniq_ptr_implIN5folly6detail17CancellationStateENS1_30CancellationStateSourceDeleterEE", !133, i64 0}
!133 = !{!"_ZTSSt5tupleIJPN5folly6detail17CancellationStateENS1_30CancellationStateSourceDeleterEEE", !134, i64 0}
!134 = !{!"_ZTSSt11_Tuple_implILm0EJPN5folly6detail17CancellationStateENS1_30CancellationStateSourceDeleterEEE", !135, i64 0}
!135 = !{!"_ZTSSt10_Head_baseILm0EPN5folly6detail17CancellationStateELb0EE", !101, i64 0}
!136 = !{!137, !137, i64 0}
!137 = !{!"p1 _ZTSN5folly14SingletonVaultE", !14, i64 0}
!138 = !{!139, !14, i64 48}
!139 = !{!"_ZTSN5folly8FunctionIFbvEEE", !9, i64 0, !14, i64 48, !14, i64 56}
!140 = !{!139, !14, i64 56}
end_hunk_1
