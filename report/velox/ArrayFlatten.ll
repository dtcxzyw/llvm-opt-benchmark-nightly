inline.NumInlined: 2135
inline.NumDeleted: 1150
begin_hunk_0_@_ZN3fmt3v116detail16get_dynamic_specINS0_7contextEEEiNS0_11arg_id_kindERKNS1_7arg_refINT_9char_typeEEERS6_:bb.a
bb.k:                                             ; preds = %bb.j, %.lr.ph.i.i.i
  %.01115.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.ad, %bb.j ] ; 2 uses
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %i.ac, i64 %.01115.i.i.i ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !648, !noalias !638 ; 2 uses
  %i.ag = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.af) #24, !noalias !638 ; 2 uses
  %i.ah = tail call noundef i64 @llvm.umin.i64(i64 %i.ag, i64 %.sroa.2.0.copyload)
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr nonnull %i.af, ptr %.sroa.0.0.copyload, i64 %i.ah), !noalias !638
  %.not.i.i.i.i.i = icmp eq i32 %bcmp.i.i.i.i, 0
  %i.ai = icmp eq i64 %i.ag, %.sroa.2.0.copyload
  %i.aj = select i1 %.not.i.i.i.i.i, i1 %i.ai, i1 false
  br i1 %i.aj, label %_ZNK3fmt3v1117basic_format_argsINS0_7contextEE6get_idIcEEiNS0_17basic_string_viewIT_EE.exit.i.i, label %bb.j

_ZNK3fmt3v1117basic_format_argsINS0_7contextEE6get_idIcEEiNS0_17basic_string_viewIT_EE.exit.i.i: ; preds = %bb.k
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !650, !noalias !638 ; 6 uses
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
  %storemerge = load i128, ptr %storemerge.in, align 16, !tbaa !32 ; 3 uses
  %.sroa.08.sroa.0.sroa.0.0.extract.trunc71 = trunc i128 %storemerge to i32
  %.sroa.08.sroa.0.sroa.11.0.extract.shift8698 = lshr i128 %storemerge, 32
  %.sroa.08.sroa.0.sroa.11.0.extract.trunc87 = trunc i128 %.sroa.08.sroa.0.sroa.11.0.extract.shift8698 to i32
  %.sroa.08.sroa.11.0.extract.shift59 = lshr i128 %storemerge, 64
  %.sroa.08.sroa.11.0.extract.trunc60 = trunc nuw i128 %.sroa.08.sroa.11.0.extract.shift59 to i64
  %.sroa.23.0.in = getelementptr inbounds nuw i8, ptr %storemerge.in, i64 16
  %.sroa.23.0 = load i32, ptr %.sroa.23.0.in, align 16, !tbaa !651 ; 2 uses
  %.not = icmp eq i32 %.sroa.23.0, 0
  br i1 %.not, label %_ZNK3fmt3v117context3argEi.exit.thread, label %_ZNK3fmt3v117context3argEi.exit.thread35

_ZNK3fmt3v117context3argEi.exit.thread:           ; preds = %bb.j, %bb.h, %bb.i, %_ZNK3fmt3v1117basic_format_argsINS0_7contextEE6get_idIcEEiNS0_17basic_string_viewIT_EE.exit.i.i, %bb.p, %bb.o, %bb.m, %bb.f, %bb.e, %bb.c, %_ZNK3fmt3v117context3argEi.exit
  tail call void @_ZN3fmt3v1112report_errorEPKc(ptr noundef nonnull @.str.83) #28
  unreachable

_ZNK3fmt3v117context3argEi.exit.thread35.sink.split: ; preds = %bb.p, %bb.g
  %.sink = phi i32 [ %i.b, %bb.g ], [ %i.al, %bb.p ]
  %.sink104 = phi ptr [ %i.s, %bb.g ], [ %i.x, %bb.p ]
  %.sroa.23.037.ph = phi i32 [ %i.q, %bb.g ], [ %i.ax, %bb.p ]
  %i.ay = zext nneg i32 %.sink to i64
  %i.az = getelementptr inbounds nuw [16 x i8], ptr %.sink104, i64 %i.ay
  %.sroa.08.0.copyload23 = load i128, ptr %i.az, align 16, !tbaa !32 ; 3 uses
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
  tail call void @_ZN3fmt3v1112report_errorEPKc(ptr noundef nonnull @.str.85) #28
  unreachable

bb.x:                                             ; preds = %_ZNK3fmt3v117context3argEi.exit.thread35
  tail call void @_ZN3fmt3v1112report_errorEPKc(ptr noundef nonnull @.str.85) #28
  unreachable

bb.y:                                             ; preds = %_ZNK3fmt3v117context3argEi.exit.thread35
  tail call void @_ZN3fmt3v1112report_errorEPKc(ptr noundef nonnull @.str.85) #28
  unreachable

bb.z:                                             ; preds = %_ZNK3fmt3v117context3argEi.exit.thread35
  tail call void @_ZN3fmt3v1112report_errorEPKc(ptr noundef nonnull @.str.85) #28
  unreachable

bb.aa:                                            ; preds = %_ZNK3fmt3v117context3argEi.exit.thread35
  tail call void @_ZN3fmt3v1112report_errorEPKc(ptr noundef nonnull @.str.85) #28
  unreachable

bb.ab:                                            ; preds = %_ZNK3fmt3v117context3argEi.exit.thread35
  tail call void @_ZN3fmt3v1112report_errorEPKc(ptr noundef nonnull @.str.85) #28
  unreachable

bb.ac:                                            ; preds = %_ZNK3fmt3v117context3argEi.exit.thread35
  tail call void @_ZN3fmt3v1112report_errorEPKc(ptr noundef nonnull @.str.85) #28
  unreachable

bb.ad:                                            ; preds = %_ZNK3fmt3v117context3argEi.exit.thread35
  tail call void @_ZN3fmt3v1112report_errorEPKc(ptr noundef nonnull @.str.85) #28
  unreachable

bb.ae:                                            ; preds = %_ZNK3fmt3v117context3argEi.exit.thread35
  tail call void @_ZN3fmt3v1112report_errorEPKc(ptr noundef nonnull @.str.85) #28
  unreachable

bb.af:                                            ; preds = %_ZNK3fmt3v117context3argEi.exit.thread35
  tail call void @_ZN3fmt3v1112report_errorEPKc(ptr noundef nonnull @.str.85) #28
  unreachable

_ZNK3fmt3v1116basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit: ; preds = %bb.u, %bb.r, %bb.s, %bb.t, %bb.v
  %.0.i = phi i64 [ %.sroa.08.sroa.0.sroa.0.0.insert.insert, %bb.t ], [ %.sroa.08.sroa.0.sroa.0.0.insert.insert69, %bb.u ], [ %.sroa.08.sroa.0.sroa.0.0.insert.insert66, %bb.v ], [ %i.bc, %bb.r ], [ %i.bd, %bb.s ] ; 2 uses
  %i.be = icmp ugt i64 %.0.i, 2147483647
  br i1 %i.be, label %_ZNK3fmt3v1116basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit.thread, label %_ZNK3fmt3v1116basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit.thread40

_ZNK3fmt3v1116basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit.thread: ; preds = %bb.u, %bb.q, %_ZNK3fmt3v1116basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit
  tail call void @_ZN3fmt3v1112report_errorEPKc(ptr noundef nonnull @.str.84) #28
  unreachable

_ZNK3fmt3v1116basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit.thread40: ; preds = %bb.q, %_ZNK3fmt3v1116basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit
  %.0.i42 = phi i64 [ %.0.i, %_ZNK3fmt3v1116basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit ], [ %i.bb, %bb.q ]
  %i.bf = trunc nuw nsw i64 %.0.i42 to i32
  ret i32 %i.bf
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayFlattenFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUliE_clEi(ptr nofree captures(none) %.8.val, i32 noundef %0) unnamed_addr #20 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %.8.val, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !250
  %i.c = sext i32 %0 to i64                       ; 4 uses
  %i.d = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.c
  %i.e = load i32, ptr %i.d, align 4, !tbaa !3    ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.8.val, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !252
  %i.h = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.c ; 5 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !3    ; 3 uses
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %.lr.ph.i, label %_ZNK8facebook5velox9functions12_GLOBAL__N_120ArrayFlattenFunction20processOneInputArrayEiiRNS3_12ProcessStateE.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 56
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !278  ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !653  ; 5 uses
  %.not.i.i = icmp eq ptr %i.n, null
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 57
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 59 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 58
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 64 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.8.val, i64 80
  %.val.i = load ptr, ptr %i.t, align 8           ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.8.val, i64 88
  %.val28.i = load ptr, ptr %i.u, align 8         ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.8.val, i64 132 ; 8 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.8.val, i64 120
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = getelementptr inbounds [4 x i8], ptr %i.x, i64 %i.c ; 8 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.8.val, i64 128 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.8.val, i64 104
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = getelementptr inbounds [4 x i8], ptr %i.ab, i64 %i.c ; 4 uses
  %i.ad = load i8, ptr %i.r, align 2, !tbaa !654, !range !69, !noundef !70
  %i.ae = trunc nuw i8 %i.ad to i1                ; 2 uses
  br i1 %.not.i.i, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i
  br i1 %i.ae, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.preheader.i, label %.lr.ph.split.us.split.i

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.preheader.i: ; preds = %.lr.ph.split.us.i
  %i.af = sext i32 %i.e to i64
  br label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.i

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.i: ; preds = %bb.e, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.preheader.i
  %indvars.iv28.i = phi i64 [ %i.af, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.preheader.i ], [ %indvars.iv.next29.i, %bb.e ] ; 3 uses
  %.09.us.us.i = phi i32 [ -1, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.preheader.i ], [ %i.ap, %bb.e ] ; 2 uses
  %.0268.us.us.i = phi i32 [ 0, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.preheader.i ], [ %i.aq, %bb.e ]
  %i.ag = getelementptr inbounds [4 x i8], ptr %.val.i, i64 %indvars.iv28.i
  %i.ah = getelementptr inbounds [4 x i8], ptr %.val28.i, i64 %indvars.iv28.i
  %i.ai = load i32, ptr %i.ag, align 4, !tbaa !3  ; 3 uses
  %i.aj = load i32, ptr %i.ah, align 4, !tbaa !3  ; 3 uses
  %i.ak = load i32, ptr %i.v, align 4, !tbaa !331
  %i.al = add nsw i32 %i.ak, %i.aj
  store i32 %i.al, ptr %i.v, align 4, !tbaa !331
  %i.am = load i32, ptr %i.y, align 4, !tbaa !3
  %i.an = add nsw i32 %i.am, %i.aj
  store i32 %i.an, ptr %i.y, align 4, !tbaa !3
  %i.ao = icmp eq i32 %.09.us.us.i, -1
  br i1 %i.ao, label %bb.d, label %bb.b

bb.b:                                             ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.i
  %.not.us.us.i = icmp eq i32 %.09.us.us.i, %i.ai
  br i1 %.not.us.us.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr %i.z, align 8, !tbaa !189
  br label %bb.e

bb.d:                                             ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.i
  store i32 %i.ai, ptr %i.ac, align 4, !tbaa !3
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.ap = add nsw i32 %i.aj, %i.ai
  %i.aq = add nuw nsw i32 %.0268.us.us.i, 1       ; 2 uses
  %indvars.iv.next29.i = add nsw i64 %indvars.iv28.i, 1
  %i.ar = load i32, ptr %i.h, align 4, !tbaa !3
  %i.as = icmp slt i32 %i.aq, %i.ar
  br i1 %i.as, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.i, label %_ZNK8facebook5velox9functions12_GLOBAL__N_120ArrayFlattenFunction20processOneInputArrayEiiRNS3_12ProcessStateE.exit, !llvm.loop !655

.lr.ph.split.us.split.i:                          ; preds = %.lr.ph.split.us.i
  %i.at = load i8, ptr %i.p, align 1, !tbaa !656, !range !69, !noundef !70
  %i.au = trunc nuw i8 %i.at to i1
  %i.av = sext i32 %i.e to i64
  br label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i: ; preds = %bb.j, %.lr.ph.split.us.split.i
  %indvars.iv25.i = phi i64 [ %indvars.iv.next26.i, %bb.j ], [ %i.av, %.lr.ph.split.us.split.i ] ; 2 uses
  %.09.us.i = phi i32 [ %i.bi, %bb.j ], [ -1, %.lr.ph.split.us.split.i ] ; 2 uses
  %.0268.us.i = phi i32 [ %i.bj, %bb.j ], [ 0, %.lr.ph.split.us.split.i ]
  br i1 %i.au, label %_ZNK8facebook5velox13DecodedVector5indexEi.exit.us.i, label %bb.f

bb.f:                                             ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i
  %i.aw = load ptr, ptr %i.q, align 8, !tbaa !657
  %i.ax = getelementptr inbounds [4 x i8], ptr %i.aw, i64 %indvars.iv25.i
  br label %_ZNK8facebook5velox13DecodedVector5indexEi.exit.us.i

_ZNK8facebook5velox13DecodedVector5indexEi.exit.us.i: ; preds = %bb.f, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i
  %.0.i29.us.in.i = phi ptr [ %i.ax, %bb.f ], [ %i.s, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i ]
  %.0.i29.us.i = load i32, ptr %.0.i29.us.in.i, align 4, !tbaa !3
  %i.ay = sext i32 %.0.i29.us.i to i64            ; 2 uses
  %i.az = getelementptr inbounds [4 x i8], ptr %.val.i, i64 %i.ay
  %i.ba = getelementptr inbounds [4 x i8], ptr %.val28.i, i64 %i.ay
  %i.bb = load i32, ptr %i.az, align 4, !tbaa !3  ; 3 uses
  %i.bc = load i32, ptr %i.ba, align 4, !tbaa !3  ; 3 uses
  %i.bd = load i32, ptr %i.v, align 4, !tbaa !331
  %i.be = add nsw i32 %i.bd, %i.bc
  store i32 %i.be, ptr %i.v, align 4, !tbaa !331
  %i.bf = load i32, ptr %i.y, align 4, !tbaa !3
  %i.bg = add nsw i32 %i.bf, %i.bc
  store i32 %i.bg, ptr %i.y, align 4, !tbaa !3
  %i.bh = icmp eq i32 %.09.us.i, -1
  br i1 %i.bh, label %bb.i, label %bb.g

bb.g:                                             ; preds = %_ZNK8facebook5velox13DecodedVector5indexEi.exit.us.i
  %.not.us.i = icmp eq i32 %.09.us.i, %i.bb
  br i1 %.not.us.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i8 0, ptr %i.z, align 8, !tbaa !189
  br label %bb.j

bb.i:                                             ; preds = %_ZNK8facebook5velox13DecodedVector5indexEi.exit.us.i
  store i32 %i.bb, ptr %i.ac, align 4, !tbaa !3
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %i.bi = add nsw i32 %i.bc, %i.bb
  %i.bj = add nuw nsw i32 %.0268.us.i, 1          ; 2 uses
  %indvars.iv.next26.i = add nsw i64 %indvars.iv25.i, 1
  %i.bk = load i32, ptr %i.h, align 4, !tbaa !3
  %i.bl = icmp slt i32 %i.bj, %i.bk
  br i1 %i.bl, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i, label %_ZNK8facebook5velox9functions12_GLOBAL__N_120ArrayFlattenFunction20processOneInputArrayEiiRNS3_12ProcessStateE.exit, !llvm.loop !655

.lr.ph.split.i:                                   ; preds = %.lr.ph.i
  br i1 %i.ae, label %.lr.ph.split.split.us.preheader.i, label %.lr.ph.split.split.preheader.i

.lr.ph.split.split.preheader.i:                   ; preds = %.lr.ph.split.i
  %i.bm = sext i32 %i.e to i64
  br label %.lr.ph.split.split.i

.lr.ph.split.split.us.preheader.i:                ; preds = %.lr.ph.split.i
  %1 = zext i32 %i.e to i64
  br label %.lr.ph.split.split.us.i

.lr.ph.split.split.us.i:                          ; preds = %bb.o, %.lr.ph.split.split.us.preheader.i
  %i.bn = phi i32 [ %i.i, %.lr.ph.split.split.us.preheader.i ], [ %i.cf, %bb.o ]
  %indvars.iv22.i = phi i64 [ %1, %.lr.ph.split.split.us.preheader.i ], [ %indvars.iv.next23.i, %bb.o ] ; 4 uses
  %.09.us10.i = phi i32 [ -1, %.lr.ph.split.split.us.preheader.i ], [ %.1.us17.i, %bb.o ] ; 3 uses
  %.0268.us11.i = phi i32 [ 0, %.lr.ph.split.split.us.preheader.i ], [ %i.cg, %bb.o ]
  %i.bo = lshr i64 %indvars.iv22.i, 6
  %i.bp = and i64 %i.bo, 67108863
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.bp
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !120
  %i.bs = and i64 %indvars.iv22.i, 63
  %i.bt = shl nuw i64 1, %i.bs
  %i.bu = and i64 %i.br, %i.bt
  %.not.i.i.us.i = icmp eq i64 %i.bu, 0
  br i1 %.not.i.i.us.i, label %bb.o, label %_ZNK8facebook5velox13DecodedVector5indexEi.exit.us14.i, !prof !658

_ZNK8facebook5velox13DecodedVector5indexEi.exit.us14.i: ; preds = %.lr.ph.split.split.us.i
  %sext.i = shl i64 %indvars.iv22.i, 32
  %2 = ashr exact i64 %sext.i, 32                 ; 2 uses
  %i.bv = getelementptr inbounds [4 x i8], ptr %.val.i, i64 %2
  %i.bw = getelementptr inbounds [4 x i8], ptr %.val28.i, i64 %2
  %i.bx = load i32, ptr %i.bv, align 4, !tbaa !3  ; 3 uses
  %i.by = load i32, ptr %i.bw, align 4, !tbaa !3  ; 3 uses
  %i.bz = load i32, ptr %i.v, align 4, !tbaa !331
  %i.ca = add nsw i32 %i.bz, %i.by
  store i32 %i.ca, ptr %i.v, align 4, !tbaa !331
  %i.cb = load i32, ptr %i.y, align 4, !tbaa !3
  %i.cc = add nsw i32 %i.cb, %i.by
  store i32 %i.cc, ptr %i.y, align 4, !tbaa !3
  %i.cd = icmp eq i32 %.09.us10.i, -1
  br i1 %i.cd, label %bb.m, label %bb.k

bb.k:                                             ; preds = %_ZNK8facebook5velox13DecodedVector5indexEi.exit.us14.i
  %.not.us16.i = icmp eq i32 %.09.us10.i, %i.bx
  br i1 %.not.us16.i, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i8 0, ptr %i.z, align 8, !tbaa !189
  br label %bb.n

bb.m:                                             ; preds = %_ZNK8facebook5velox13DecodedVector5indexEi.exit.us14.i
  store i32 %i.bx, ptr %i.ac, align 4, !tbaa !3
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k
  %i.ce = add nsw i32 %i.by, %i.bx
  %.pre31.i = load i32, ptr %i.h, align 4, !tbaa !3
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.lr.ph.split.split.us.i
  %i.cf = phi i32 [ %i.bn, %.lr.ph.split.split.us.i ], [ %.pre31.i, %bb.n ] ; 2 uses
  %.1.us17.i = phi i32 [ %.09.us10.i, %.lr.ph.split.split.us.i ], [ %i.ce, %bb.n ]
  %i.cg = add nuw nsw i32 %.0268.us11.i, 1        ; 2 uses
  %indvars.iv.next23.i = add nuw nsw i64 %indvars.iv22.i, 1
  %i.ch = icmp slt i32 %i.cg, %i.cf
  br i1 %i.ch, label %.lr.ph.split.split.us.i, label %_ZNK8facebook5velox9functions12_GLOBAL__N_120ArrayFlattenFunction20processOneInputArrayEiiRNS3_12ProcessStateE.exit, !llvm.loop !655

.lr.ph.split.split.i:                             ; preds = %bb.w, %.lr.ph.split.split.preheader.i
  %i.ci = phi i32 [ %i.i, %.lr.ph.split.split.preheader.i ], [ %i.du, %bb.w ] ; 3 uses
  %indvars.iv.i = phi i64 [ %i.bm, %.lr.ph.split.split.preheader.i ], [ %indvars.iv.next.i, %bb.w ] ; 5 uses
  %.09.i = phi i32 [ -1, %.lr.ph.split.split.preheader.i ], [ %.1.i, %bb.w ] ; 5 uses
  %.0268.i = phi i32 [ 0, %.lr.ph.split.split.preheader.i ], [ %i.dv, %bb.w ]
  %i.cj = load i8, ptr %i.o, align 1, !range !69
  %i.ck = trunc nuw i8 %i.cj to i1
  br i1 %i.ck, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.lr.ph.split.split.i
  %i.cl = lshr i64 %indvars.iv.i, 6
  %i.cm = and i64 %i.cl, 67108863
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.cm
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !120
  %i.cp = and i64 %indvars.iv.i, 63
  %i.cq = shl nuw i64 1, %i.cp
  %i.cr = and i64 %i.co, %i.cq
  %.not.i.i.i = icmp eq i64 %i.cr, 0
  br i1 %.not.i.i.i, label %bb.w, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i, !prof !658

bb.q:                                             ; preds = %.lr.ph.split.split.i
  %i.cs = load i8, ptr %i.p, align 1, !tbaa !656, !range !69, !noundef !70
  %i.ct = trunc nuw i8 %i.cs to i1
  br i1 %i.ct, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cu = load ptr, ptr %i.q, align 8, !tbaa !657
  %i.cv = getelementptr inbounds [4 x i8], ptr %i.cu, i64 %indvars.iv.i
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !3
  %i.cx = zext i32 %i.cw to i64                   ; 2 uses
  %i.cy = lshr i64 %i.cx, 6
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.cy
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !120
  %i.db = and i64 %i.cx, 63
  %i.dc = shl nuw i64 1, %i.db
  %i.dd = and i64 %i.dc, %i.da
  %.not.i7.i.i = icmp eq i64 %i.dd, 0
  br i1 %.not.i7.i.i, label %bb.w, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.thread14, !prof !658

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i: ; preds = %bb.q
  %i.de = load i64, ptr %i.n, align 8, !tbaa !120
  %i.df = and i64 %i.de, 1
  %.not.i6.i.i = icmp eq i64 %i.df, 0
  br i1 %.not.i6.i.i, label %bb.w, label %_ZNK8facebook5velox13DecodedVector5indexEi.exit.i, !prof !658

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i: ; preds = %bb.p
  %.pre = load i8, ptr %i.p, align 1, !tbaa !656, !range !69
  %i.dg = trunc nuw i8 %.pre to i1
  br i1 %i.dg, label %_ZNK8facebook5velox13DecodedVector5indexEi.exit.i, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.thread14

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.thread14: ; preds = %bb.r, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i
  %i.dh = load ptr, ptr %i.q, align 8, !tbaa !657
  %i.di = getelementptr inbounds [4 x i8], ptr %i.dh, i64 %indvars.iv.i
  br label %_ZNK8facebook5velox13DecodedVector5indexEi.exit.i

_ZNK8facebook5velox13DecodedVector5indexEi.exit.i: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.thread14, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i
  %.0.i29.in.i = phi ptr [ %i.di, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.thread14 ], [ %i.s, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i ], [ %i.s, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i ]
  %.0.i29.i = load i32, ptr %.0.i29.in.i, align 4, !tbaa !3
  %i.dj = sext i32 %.0.i29.i to i64               ; 2 uses
  %i.dk = getelementptr inbounds [4 x i8], ptr %.val.i, i64 %i.dj
  %i.dl = getelementptr inbounds [4 x i8], ptr %.val28.i, i64 %i.dj
  %i.dm = load i32, ptr %i.dk, align 4, !tbaa !3  ; 3 uses
  %i.dn = load i32, ptr %i.dl, align 4, !tbaa !3  ; 3 uses
  %i.do = load i32, ptr %i.v, align 4, !tbaa !331
  %i.dp = add nsw i32 %i.do, %i.dn
  store i32 %i.dp, ptr %i.v, align 4, !tbaa !331
  %i.dq = load i32, ptr %i.y, align 4, !tbaa !3
  %i.dr = add nsw i32 %i.dq, %i.dn
  store i32 %i.dr, ptr %i.y, align 4, !tbaa !3
  %i.ds = icmp eq i32 %.09.i, -1
  br i1 %i.ds, label %bb.s, label %bb.t

bb.s:                                             ; preds = %_ZNK8facebook5velox13DecodedVector5indexEi.exit.i
  store i32 %i.dm, ptr %i.ac, align 4, !tbaa !3
  br label %bb.v

bb.t:                                             ; preds = %_ZNK8facebook5velox13DecodedVector5indexEi.exit.i
  %.not.i = icmp eq i32 %.09.i, %i.dm
  br i1 %.not.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  store i8 0, ptr %i.z, align 8, !tbaa !189
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s
  %i.dt = add nsw i32 %i.dn, %i.dm
  %.pre.i = load i32, ptr %i.h, align 4, !tbaa !3
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i, %bb.r, %bb.p
  %i.du = phi i32 [ %i.ci, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i ], [ %.pre.i, %bb.v ], [ %i.ci, %bb.p ], [ %i.ci, %bb.r ] ; 2 uses
  %.1.i = phi i32 [ %.09.i, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i ], [ %i.dt, %bb.v ], [ %.09.i, %bb.p ], [ %.09.i, %bb.r ]
  %i.dv = add nuw nsw i32 %.0268.i, 1             ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1
  %i.dw = icmp slt i32 %i.dv, %i.du
  br i1 %i.dw, label %.lr.ph.split.split.i, label %_ZNK8facebook5velox9functions12_GLOBAL__N_120ArrayFlattenFunction20processOneInputArrayEiiRNS3_12ProcessStateE.exit, !llvm.loop !655

_ZNK8facebook5velox9functions12_GLOBAL__N_120ArrayFlattenFunction20processOneInputArrayEiiRNS3_12ProcessStateE.exit: ; preds = %bb.w, %bb.o, %bb.j, %bb.e, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN8facebook5velox11ArrayVectorESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(160) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 160) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN8facebook5velox11ArrayVectorESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(160) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt16allocator_traitsISaIvEE7destroyIN8facebook5velox11ArrayVectorEEEvRS0_PT_.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !45
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(144) %i.a) #24, !inline_history !659
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN8facebook5velox11ArrayVectorESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(160) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN8facebook5velox11ArrayVectorESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 160) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN8facebook5velox11ArrayVectorESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !660  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !32
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #24
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZSt10_ConstructIN8facebook5velox11ArrayVectorEJRKPNS1_6memory10MemoryPoolERKSt10shared_ptrIKNS1_4TypeEEDnRKiRKN5boost13intrusive_ptrINS1_6BufferEEESL_RKS8_INS1_10BaseVectorEEEEvPT_DpOT0_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(16) %7) local_unnamed_addr #8 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.std::shared_ptr.74", align 16 ; 4 uses
  %9 = alloca %"class.boost::intrusive_ptr", align 8 ; 4 uses
  %10 = alloca %"class.boost::intrusive_ptr", align 8 ; 4 uses
  %11 = alloca %"class.boost::intrusive_ptr", align 8 ; 4 uses
  %12 = alloca %"class.std::shared_ptr.71", align 16 ; 4 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !521
  %i.b = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !37   ; 2 uses
  %i.e = load <2 x ptr>, ptr %2, align 8, !tbaa !40
  store <2 x ptr> %i.e, ptr %8, align 16, !tbaa !40
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %i.g = load i8, ptr @__libc_single_threaded, align 1, !tbaa !32
  %.not.i.i.i.i = icmp eq i8 %i.g, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load i32, ptr %i.f, align 4, !tbaa !3
  %i.i = add nsw i32 %i.h, 1
  store i32 %i.i, ptr %i.f, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit

bb.d:                                             ; preds = %bb.b
  %i.j = atomicrmw volatile add ptr %i.f, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit

_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit: ; preds = %bb.a, %bb.c, %bb.d
  store ptr null, ptr %9, align 8, !tbaa !296
  %i.k = load i32, ptr %4, align 4, !tbaa !3
  %i.l = load ptr, ptr %5, align 8, !tbaa !296    ; 3 uses
  store ptr %i.l, ptr %10, align 8, !tbaa !296
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit
end_hunk_0
begin_hunk_1_@_ZN8facebook5velox10BaseVectorD2Ev:bb.a
  %.not.i.i = icmp eq ptr %i.j, null
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !45
  %..i.i = select i1 %.not.i.i, i64 8, i64 48
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %..i.i
  %i.m = load ptr, ptr %i.l, align 8
  invoke void %i.m(ptr noundef nonnull align 8 dereferenceable(64) %i.b)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit unwind label %bb.c, !inline_history !297

bb.c:                                             ; preds = %.noexc.i, %.sink.split.i.i
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  tail call void @__clang_call_terminate(ptr %i.o) #27
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit: ; preds = %bb.a, %bb.b, %.noexc.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !37   ; 8 uses
  %.not.i.i1 = icmp eq ptr %i.q, null
  br i1 %.not.i.i1, label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 4 uses
  %i.s = load atomic i64, ptr %i.r acquire, align 8 ; 2 uses
  %i.t = icmp eq i64 %i.s, 4294967297
  %i.u = trunc i64 %i.s to i32                    ; 2 uses
  br i1 %i.t, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.r, align 8, !tbaa !42
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  store i32 0, ptr %i.v, align 4, !tbaa !44
  %i.w = load ptr, ptr %i.q, align 8, !tbaa !45
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  tail call void %i.y(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #24, !inline_history !352
  %i.z = load ptr, ptr %i.q, align 8, !tbaa !45
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #24, !inline_history !352
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.f:                                             ; preds = %bb.d
  %i.ac = load i8, ptr @__libc_single_threaded, align 1, !tbaa !32
  %.not.i.i.i = icmp eq i8 %i.ac, 0
  br i1 %.not.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = add nsw i32 %i.u, -1
  store i32 %i.ad, ptr %i.r, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.ae = atomicrmw volatile add ptr %i.r, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i = phi i32 [ %i.u, %bb.g ], [ %i.ae, %bb.h ]
  %i.af = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.af, label %bb.i, label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !48

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #24
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, %bb.e, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.i
  ret void
}

declare void @_ZN8facebook5velox10BaseVector14createInternalERKSt10shared_ptrIKNS0_4TypeEEiPNS0_6memory10MemoryPoolE(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.71") align 8, ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3fmt3v116detail5valueINS0_7contextEE13format_customIN8facebook5velox8TypeKindENS0_9formatterIS8_cvEEEEvPvRNS0_13parse_contextIcEERS3_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(20) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) #0 comdat align 2 {
bb.a:
  %3 = alloca %"struct.fmt::v11::formatter.256", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  store i32 32768, ptr %3, align 8, !tbaa !541
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i8 32, ptr %i.b, align 4, !tbaa !32
  %scevgep.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 5
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %scevgep.i.i.i.i.i.i, i8 0, i64 7, i1 false)
  store i32 -1, ptr %i.c, align 4, !tbaa !543
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i32 0, ptr %i.d, align 8, !tbaa !32
  %i.e = load ptr, ptr %1, align 8, !tbaa !545    ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !547  ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.g
  %i.i = icmp samesign eq i64 %i.g, 0
  br i1 %i.i, label %_ZN3fmt3v116detail16native_formatterINS0_17basic_string_viewIcEEcLNS1_4typeE13EE5parseERNS0_13parse_contextIcEE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = load i8, ptr %i.e, align 1, !tbaa !32
  %i.k = icmp eq i8 %i.j, 125
  br i1 %i.k, label %_ZN3fmt3v116detail16native_formatterINS0_17basic_string_viewIcEEcLNS1_4typeE13EE5parseERNS0_13parse_contextIcEE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = call noundef ptr @_ZN3fmt3v116detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeE(ptr noundef nonnull %i.e, ptr noundef nonnull %i.h, ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(20) %1, i32 noundef 13)
  %.pre = load ptr, ptr %1, align 8, !tbaa !545
  %.pre6 = load i64, ptr %i.f, align 8, !tbaa !547
  br label %_ZN3fmt3v116detail16native_formatterINS0_17basic_string_viewIcEEcLNS1_4typeE13EE5parseERNS0_13parse_contextIcEE.exit

_ZN3fmt3v116detail16native_formatterINS0_17basic_string_viewIcEEcLNS1_4typeE13EE5parseERNS0_13parse_contextIcEE.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.m = phi i64 [ %.pre6, %bb.c ], [ %i.g, %bb.b ], [ 0, %bb.a ]
  %i.n = phi ptr [ %.pre, %bb.c ], [ %i.e, %bb.b ], [ %i.e, %bb.a ] ; 2 uses
  %.0.i = phi ptr [ %i.l, %bb.c ], [ %i.e, %bb.b ], [ %i.e, %bb.a ]
  %i.o = ptrtoint ptr %.0.i to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p                       ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.q
  store ptr %i.r, ptr %1, align 8, !tbaa !545
  %i.s = sub i64 %i.m, %i.q
  store i64 %i.s, ptr %i.f, align 8, !tbaa !547
  %i.t = load i8, ptr %0, align 1, !tbaa !677
  %i.u = call ptr @_ZNK3fmt3v119formatterIN8facebook5velox8TypeKindEcvE6formatINS0_7contextEEEDaS4_RT_(ptr noundef nonnull align 8 dereferenceable(48) %3, i8 noundef signext %i.t, ptr noundef nonnull align 8 dereferenceable(32) %2) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNK3fmt3v119formatterIN8facebook5velox8TypeKindEcvE6formatINS0_7contextEEEDaS4_RT_(ptr noundef nonnull align 8 dereferenceable(48) %0, i8 noundef signext %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"struct.fmt::v11::format_specs", align 4 ; 7 uses
  %i.a = tail call { i64, ptr } @_ZN8facebook5velox12TypeKindName6toNameENS0_8TypeKindE(i8 noundef signext %1) ; 2 uses
  %i.b = extractvalue { i64, ptr } %i.a, 0        ; 2 uses
  %i.c = extractvalue { i64, ptr } %i.a, 1        ; 2 uses
  %i.d = load i32, ptr %0, align 8, !tbaa !541
  %i.e = and i32 %i.d, 960
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i.i = load ptr, ptr %2, align 8, !tbaa !353
  %i.f = tail call ptr @_ZN3fmt3v116detail5writeIcNS0_14basic_appenderIcEEEET0_S5_NS0_17basic_string_viewIT_EERKNS0_12format_specsE(ptr %.sroa.0.0.copyload.i.i, ptr %i.c, i64 %i.b, ptr noundef nonnull align 8 dereferenceable(48) %0)
  br label %_ZNK3fmt3v116detail16native_formatterINS0_17basic_string_viewIcEEcLNS1_4typeE13EE6formatINS0_7contextEEEDTcldtfp0_3outEERKS4_RT_.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(48) %0, i64 16, i1 false)
  %i.g = load i32, ptr %3, align 4, !tbaa !541    ; 2 uses
  %i.h = lshr i32 %i.g, 6
  %i.i = and i32 %i.h, 3                          ; 2 uses
  %.not.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i, label %_ZN3fmt3v116detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.l = tail call noundef i32 @_ZN3fmt3v116detail16get_dynamic_specINS0_7contextEEEiNS0_11arg_id_kindERKNS1_7arg_refINT_9char_typeEEERS6_(i32 noundef %i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %2)
  store i32 %i.l, ptr %i.k, align 4, !tbaa !3
  br label %_ZN3fmt3v116detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_.exit.i

_ZN3fmt3v116detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_.exit.i: ; preds = %bb.d, %bb.c
  %i.m = lshr i32 %i.g, 8
  %i.n = and i32 %i.m, 3                          ; 2 uses
  %.not.i17.i = icmp eq i32 %i.n, 0
  br i1 %.not.i17.i, label %_ZN3fmt3v116detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_.exit18.i, label %bb.e

bb.e:                                             ; preds = %_ZN3fmt3v116detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.q = tail call noundef i32 @_ZN3fmt3v116detail16get_dynamic_specINS0_7contextEEEiNS0_11arg_id_kindERKNS1_7arg_refINT_9char_typeEEERS6_(i32 noundef %i.n, ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull align 8 dereferenceable(32) %2)
  store i32 %i.q, ptr %i.p, align 4, !tbaa !3
  br label %_ZN3fmt3v116detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_.exit18.i

_ZN3fmt3v116detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_.exit18.i: ; preds = %bb.e, %_ZN3fmt3v116detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_.exit.i
  %.sroa.0.0.copyload.i19.i = load ptr, ptr %2, align 8, !tbaa !353
  %i.r = call ptr @_ZN3fmt3v116detail5writeIcNS0_14basic_appenderIcEEEET0_S5_NS0_17basic_string_viewIT_EERKNS0_12format_specsE(ptr %.sroa.0.0.copyload.i19.i, ptr %i.c, i64 %i.b, ptr noundef nonnull align 4 dereferenceable(16) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %_ZNK3fmt3v116detail16native_formatterINS0_17basic_string_viewIcEEcLNS1_4typeE13EE6formatINS0_7contextEEEDTcldtfp0_3outEERKS4_RT_.exit

_ZNK3fmt3v116detail16native_formatterINS0_17basic_string_viewIcEEcLNS1_4typeE13EE6formatINS0_7contextEEEDTcldtfp0_3outEERKS4_RT_.exit: ; preds = %bb.b, %_ZN3fmt3v116detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_.exit18.i
  %.sroa.015.0.i = phi ptr [ %i.r, %_ZN3fmt3v116detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_.exit18.i ], [ %i.f, %bb.b ]
  ret ptr %.sroa.015.0.i
}

declare { i64, ptr } @_ZN8facebook5velox12TypeKindName6toNameENS0_8TypeKindE(i8 noundef signext) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #12

declare void @_ZN8facebook5velox10BaseVector16wrapInDictionaryEN5boost13intrusive_ptrINS0_6BufferEEES5_iSt10shared_ptrIS1_Eb(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.71") align 8, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayFlattenFunction26flattenArrayWithDictionaryERKNS0_17SelectivityVectorERNS3_12ProcessStateEENKUliE_clEi(ptr nofree readonly captures(none) %.8.val, ptr nofree captures(none) %.16.val, i32 noundef %0) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.fmt::v11::detail::format_arg_store.259", align 16 ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = load i32, ptr %.16.val, align 4, !tbaa !3
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 104
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !305
  %i.d = sext i32 %0 to i64                       ; 4 uses
  %i.e = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.d
  store i32 %i.a, ptr %i.e, align 4, !tbaa !3
  %i.f = getelementptr inbounds nuw i8, ptr %.8.val, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !250
  %i.h = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.d
  %i.i = load i32, ptr %i.h, align 4, !tbaa !3    ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.8.val, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !252
  %i.l = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.d ; 6 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !3    ; 8 uses
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %.lr.ph14.i, label %._crit_edge15.i

.lr.ph14.i:                                       ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %.8.val, i64 56
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !278  ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !653  ; 5 uses
  %.not.i.i = icmp eq ptr %i.r, null
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 57
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 59 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 58
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 64 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.8.val, i64 80
  %.val.i = load ptr, ptr %i.x, align 8           ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.8.val, i64 88
  %.val32.i = load ptr, ptr %i.y, align 8         ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.8.val, i64 144
  %i.aa = load ptr, ptr %i.z, align 8             ; 5 uses
  %i.ab = load i8, ptr %i.v, align 2, !tbaa !654, !range !69, !noundef !70
  %i.ac = trunc nuw i8 %i.ab to i1                ; 2 uses
  br i1 %.not.i.i, label %.lr.ph14.split.us.i, label %.lr.ph14.split.i

.lr.ph14.split.us.i:                              ; preds = %.lr.ph14.i
  br i1 %i.ac, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.preheader.i, label %.lr.ph14.split.us.split.i

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.preheader.i: ; preds = %.lr.ph14.split.us.i
  %i.ad = sext i32 %i.i to i64
  br label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.i

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.i: ; preds = %._crit_edge.us.us.i, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.preheader.i
  %i.ae = phi i32 [ %i.m, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.preheader.i ], [ %i.al, %._crit_edge.us.us.i ]
  %indvars.iv53.i = phi i64 [ %i.ad, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.preheader.i ], [ %indvars.iv.next54.i, %._crit_edge.us.us.i ] ; 3 uses
  %.012.us.us.i = phi i32 [ 0, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.preheader.i ], [ %i.an, %._crit_edge.us.us.i ]
  %.069.us.us.i = phi i32 [ 0, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.preheader.i ], [ %i.am, %._crit_edge.us.us.i ]
  %i.af = getelementptr inbounds [4 x i8], ptr %.val.i, i64 %indvars.iv53.i
  %i.ag = getelementptr inbounds [4 x i8], ptr %.val32.i, i64 %indvars.iv53.i
  %i.ah = load i32, ptr %i.af, align 4, !tbaa !3  ; 2 uses
  %i.ai = load i32, ptr %i.ag, align 4, !tbaa !3  ; 3 uses
  %i.aj = add nsw i32 %i.ai, %i.ah
  %i.ak = icmp sgt i32 %i.ai, 0
  br i1 %i.ak, label %.lr.ph.us.us.i, label %._crit_edge.us.us.i

._crit_edge.us.us.loopexit.i:                     ; preds = %.lr.ph.us.us.i
  %.pre59.i = load i32, ptr %i.l, align 4, !tbaa !3
  br label %._crit_edge.us.us.i

._crit_edge.us.us.i:                              ; preds = %._crit_edge.us.us.loopexit.i, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.i
  %i.al = phi i32 [ %.pre59.i, %._crit_edge.us.us.loopexit.i ], [ %i.ae, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.i ] ; 2 uses
  %i.am = add nsw i32 %i.ai, %.069.us.us.i        ; 2 uses
  %i.an = add nuw nsw i32 %.012.us.us.i, 1        ; 2 uses
  %indvars.iv.next54.i = add nsw i64 %indvars.iv53.i, 1
  %i.ao = icmp slt i32 %i.an, %i.al
  br i1 %i.ao, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.i, label %._crit_edge15.i, !llvm.loop !696

.lr.ph.us.us.i:                                   ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.i, %.lr.ph.us.us.i
  %.0318.us.us.i = phi i32 [ %i.at, %.lr.ph.us.us.i ], [ %i.ah, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.i ] ; 2 uses
  %i.ap = load i32, ptr %.16.val, align 4, !tbaa !3 ; 2 uses
  %i.aq = add nsw i32 %i.ap, 1
  store i32 %i.aq, ptr %.16.val, align 4, !tbaa !3
  %i.ar = sext i32 %i.ap to i64
  %i.as = getelementptr inbounds [4 x i8], ptr %i.aa, i64 %i.ar
  store i32 %.0318.us.us.i, ptr %i.as, align 4, !tbaa !3
  %i.at = add nsw i32 %.0318.us.us.i, 1           ; 2 uses
  %i.au = icmp slt i32 %i.at, %i.aj
  br i1 %i.au, label %.lr.ph.us.us.i, label %._crit_edge.us.us.loopexit.i, !llvm.loop !697

.lr.ph14.split.us.split.i:                        ; preds = %.lr.ph14.split.us.i
  %i.av = load i8, ptr %i.t, align 1, !tbaa !656, !range !69, !noundef !70
  %i.aw = trunc nuw i8 %i.av to i1
  br i1 %i.aw, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us29.i, label %.lr.ph14.split.us.split.split.i

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us29.i: ; preds = %.lr.ph14.split.us.split.i, %._crit_edge.us.us37.i
  %i.ax = phi i32 [ %i.bg, %._crit_edge.us.us37.i ], [ %i.m, %.lr.ph14.split.us.split.i ]
  %.012.us.us30.i = phi i32 [ %i.bi, %._crit_edge.us.us37.i ], [ 0, %.lr.ph14.split.us.split.i ]
  %.069.us.us32.i = phi i32 [ %i.bh, %._crit_edge.us.us37.i ], [ 0, %.lr.ph14.split.us.split.i ]
  %i.ay = load i32, ptr %i.w, align 8, !tbaa !698
  %i.az = sext i32 %i.ay to i64                   ; 2 uses
  %i.ba = getelementptr inbounds [4 x i8], ptr %.val.i, i64 %i.az
  %i.bb = getelementptr inbounds [4 x i8], ptr %.val32.i, i64 %i.az
  %i.bc = load i32, ptr %i.ba, align 4, !tbaa !3  ; 2 uses
  %i.bd = load i32, ptr %i.bb, align 4, !tbaa !3  ; 3 uses
  %i.be = add nsw i32 %i.bd, %i.bc
  %i.bf = icmp sgt i32 %i.bd, 0
  br i1 %i.bf, label %.lr.ph.us.us36.i, label %._crit_edge.us.us37.i

._crit_edge.us.us37.loopexit.i:                   ; preds = %.lr.ph.us.us36.i
  %.pre58.i = load i32, ptr %i.l, align 4, !tbaa !3
  br label %._crit_edge.us.us37.i

._crit_edge.us.us37.i:                            ; preds = %._crit_edge.us.us37.loopexit.i, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us29.i
  %i.bg = phi i32 [ %.pre58.i, %._crit_edge.us.us37.loopexit.i ], [ %i.ax, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us29.i ] ; 2 uses
  %i.bh = add nsw i32 %i.bd, %.069.us.us32.i      ; 2 uses
  %i.bi = add nuw nsw i32 %.012.us.us30.i, 1      ; 2 uses
  %i.bj = icmp slt i32 %i.bi, %i.bg
  br i1 %i.bj, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us29.i, label %._crit_edge15.i, !llvm.loop !696

.lr.ph.us.us36.i:                                 ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us29.i, %.lr.ph.us.us36.i
  %.0318.us.us35.i = phi i32 [ %i.bo, %.lr.ph.us.us36.i ], [ %i.bc, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us29.i ] ; 2 uses
  %i.bk = load i32, ptr %.16.val, align 4, !tbaa !3 ; 2 uses
  %i.bl = add nsw i32 %i.bk, 1
  store i32 %i.bl, ptr %.16.val, align 4, !tbaa !3
  %i.bm = sext i32 %i.bk to i64
  %i.bn = getelementptr inbounds [4 x i8], ptr %i.aa, i64 %i.bm
  store i32 %.0318.us.us35.i, ptr %i.bn, align 4, !tbaa !3
  %i.bo = add nsw i32 %.0318.us.us35.i, 1         ; 2 uses
  %i.bp = icmp slt i32 %i.bo, %i.be
  br i1 %i.bp, label %.lr.ph.us.us36.i, label %._crit_edge.us.us37.loopexit.i, !llvm.loop !697

.lr.ph14.split.us.split.split.i:                  ; preds = %.lr.ph14.split.us.split.i
  %i.bq = load ptr, ptr %i.u, align 8, !tbaa !657
  %i.br = sext i32 %i.i to i64
  br label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i: ; preds = %._crit_edge.us.i, %.lr.ph14.split.us.split.split.i
  %i.bs = phi i32 [ %i.cc, %._crit_edge.us.i ], [ %i.m, %.lr.ph14.split.us.split.split.i ]
  %indvars.iv50.i = phi i64 [ %indvars.iv.next51.i, %._crit_edge.us.i ], [ %i.br, %.lr.ph14.split.us.split.split.i ] ; 2 uses
  %.012.us.i = phi i32 [ %i.ce, %._crit_edge.us.i ], [ 0, %.lr.ph14.split.us.split.split.i ]
  %.069.us.i = phi i32 [ %i.cd, %._crit_edge.us.i ], [ 0, %.lr.ph14.split.us.split.split.i ]
  %i.bt = getelementptr inbounds [4 x i8], ptr %i.bq, i64 %indvars.iv50.i
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !3
  %i.bv = sext i32 %i.bu to i64                   ; 2 uses
  %i.bw = getelementptr inbounds [4 x i8], ptr %.val.i, i64 %i.bv
  %i.bx = getelementptr inbounds [4 x i8], ptr %.val32.i, i64 %i.bv
  %i.by = load i32, ptr %i.bw, align 4, !tbaa !3  ; 2 uses
  %i.bz = load i32, ptr %i.bx, align 4, !tbaa !3  ; 3 uses
  %i.ca = add nsw i32 %i.bz, %i.by
  %i.cb = icmp sgt i32 %i.bz, 0
  br i1 %i.cb, label %.lr.ph.us.i, label %._crit_edge.us.i

._crit_edge.us.loopexit.i:                        ; preds = %.lr.ph.us.i
  %.pre57.i = load i32, ptr %i.l, align 4, !tbaa !3
  br label %._crit_edge.us.i

._crit_edge.us.i:                                 ; preds = %._crit_edge.us.loopexit.i, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i
  %i.cc = phi i32 [ %.pre57.i, %._crit_edge.us.loopexit.i ], [ %i.bs, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i ] ; 2 uses
  %i.cd = add nsw i32 %i.bz, %.069.us.i           ; 2 uses
  %i.ce = add nuw nsw i32 %.012.us.i, 1           ; 2 uses
  %indvars.iv.next51.i = add nsw i64 %indvars.iv50.i, 1
  %i.cf = icmp slt i32 %i.ce, %i.cc
  br i1 %i.cf, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i, label %._crit_edge15.i, !llvm.loop !696

.lr.ph.us.i:                                      ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i, %.lr.ph.us.i
  %.0318.us.i = phi i32 [ %i.ck, %.lr.ph.us.i ], [ %i.by, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i ] ; 2 uses
  %i.cg = load i32, ptr %.16.val, align 4, !tbaa !3 ; 2 uses
  %i.ch = add nsw i32 %i.cg, 1
  store i32 %i.ch, ptr %.16.val, align 4, !tbaa !3
  %i.ci = sext i32 %i.cg to i64
  %i.cj = getelementptr inbounds [4 x i8], ptr %i.aa, i64 %i.ci
  store i32 %.0318.us.i, ptr %i.cj, align 4, !tbaa !3
  %i.ck = add nsw i32 %.0318.us.i, 1              ; 2 uses
  %i.cl = icmp slt i32 %i.ck, %i.ca
  br i1 %i.cl, label %.lr.ph.us.i, label %._crit_edge.us.loopexit.i, !llvm.loop !697

.lr.ph14.split.i:                                 ; preds = %.lr.ph14.i
  br i1 %i.ac, label %.lr.ph14.split.split.us.preheader.i, label %.lr.ph14.split.split.preheader.i

.lr.ph14.split.split.preheader.i:                 ; preds = %.lr.ph14.split.i
  %i.cm = sext i32 %i.i to i64
  br label %.lr.ph14.split.split.i

.lr.ph14.split.split.us.preheader.i:              ; preds = %.lr.ph14.split.i
  %3 = zext i32 %i.i to i64
  br label %.lr.ph14.split.split.us.i

.lr.ph14.split.split.us.i:                        ; preds = %bb.b, %.lr.ph14.split.split.us.preheader.i
  %.pre5663.i = phi i32 [ %i.m, %.lr.ph14.split.split.us.preheader.i ], [ %.pre5664.i, %bb.b ] ; 2 uses
  %i.cn = phi i32 [ %i.m, %.lr.ph14.split.split.us.preheader.i ], [ %i.dc, %bb.b ]
  %indvars.iv47.i = phi i64 [ %3, %.lr.ph14.split.split.us.preheader.i ], [ %indvars.iv.next48.i, %bb.b ] ; 4 uses
  %.012.us16.i = phi i32 [ 0, %.lr.ph14.split.split.us.preheader.i ], [ %i.dd, %bb.b ]
  %.069.us18.i = phi i32 [ 0, %.lr.ph14.split.split.us.preheader.i ], [ %.1.us22.i, %bb.b ] ; 2 uses
  %i.co = lshr i64 %indvars.iv47.i, 6
  %i.cp = and i64 %i.co, 67108863
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.cp
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !120
  %i.cs = and i64 %indvars.iv47.i, 63
  %i.ct = shl nuw i64 1, %i.cs
  %i.cu = and i64 %i.cr, %i.ct
  %.not.i.i.us.i = icmp eq i64 %i.cu, 0
  br i1 %.not.i.i.us.i, label %bb.b, label %_ZNK8facebook5velox13DecodedVector5indexEi.exit.us20.i, !prof !658

_ZNK8facebook5velox13DecodedVector5indexEi.exit.us20.i: ; preds = %.lr.ph14.split.split.us.i
  %sext.i = shl i64 %indvars.iv47.i, 32
  %4 = ashr exact i64 %sext.i, 32                 ; 2 uses
  %i.cv = getelementptr inbounds [4 x i8], ptr %.val.i, i64 %4
  %i.cw = getelementptr inbounds [4 x i8], ptr %.val32.i, i64 %4
  %i.cx = load i32, ptr %i.cv, align 4, !tbaa !3  ; 2 uses
  %i.cy = load i32, ptr %i.cw, align 4, !tbaa !3  ; 3 uses
  %i.cz = add nsw i32 %i.cy, %i.cx
  %i.da = icmp sgt i32 %i.cy, 0
  br i1 %i.da, label %.lr.ph.us24.i, label %._crit_edge.us25.i

._crit_edge.us25.loopexit.i:                      ; preds = %.lr.ph.us24.i
  %.pre56.pre.i = load i32, ptr %i.l, align 4, !tbaa !3
  br label %._crit_edge.us25.i

._crit_edge.us25.i:                               ; preds = %._crit_edge.us25.loopexit.i, %_ZNK8facebook5velox13DecodedVector5indexEi.exit.us20.i
  %.pre56.i = phi i32 [ %.pre56.pre.i, %._crit_edge.us25.loopexit.i ], [ %.pre5663.i, %_ZNK8facebook5velox13DecodedVector5indexEi.exit.us20.i ] ; 2 uses
  %i.db = add nsw i32 %i.cy, %.069.us18.i
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge.us25.i, %.lr.ph14.split.split.us.i
  %.pre5664.i = phi i32 [ %.pre5663.i, %.lr.ph14.split.split.us.i ], [ %.pre56.i, %._crit_edge.us25.i ]
  %i.dc = phi i32 [ %i.cn, %.lr.ph14.split.split.us.i ], [ %.pre56.i, %._crit_edge.us25.i ] ; 2 uses
  %.1.us22.i = phi i32 [ %.069.us18.i, %.lr.ph14.split.split.us.i ], [ %i.db, %._crit_edge.us25.i ] ; 2 uses
  %i.dd = add nuw nsw i32 %.012.us16.i, 1         ; 2 uses
  %indvars.iv.next48.i = add nuw nsw i64 %indvars.iv47.i, 1
  %i.de = icmp slt i32 %i.dd, %i.dc
  br i1 %i.de, label %.lr.ph14.split.split.us.i, label %._crit_edge15.i, !llvm.loop !696

.lr.ph.us24.i:                                    ; preds = %_ZNK8facebook5velox13DecodedVector5indexEi.exit.us20.i, %.lr.ph.us24.i
  %.0318.us23.i = phi i32 [ %i.dj, %.lr.ph.us24.i ], [ %i.cx, %_ZNK8facebook5velox13DecodedVector5indexEi.exit.us20.i ] ; 2 uses
  %i.df = load i32, ptr %.16.val, align 4, !tbaa !3 ; 2 uses
  %i.dg = add nsw i32 %i.df, 1
  store i32 %i.dg, ptr %.16.val, align 4, !tbaa !3
  %i.dh = sext i32 %i.df to i64
  %i.di = getelementptr inbounds [4 x i8], ptr %i.aa, i64 %i.dh
  store i32 %.0318.us23.i, ptr %i.di, align 4, !tbaa !3
  %i.dj = add nsw i32 %.0318.us23.i, 1            ; 2 uses
  %i.dk = icmp slt i32 %i.dj, %i.cz
  br i1 %i.dk, label %.lr.ph.us24.i, label %._crit_edge.us25.loopexit.i, !llvm.loop !697

._crit_edge15.i:                                  ; preds = %bb.f, %bb.b, %._crit_edge.us.i, %._crit_edge.us.us37.i, %._crit_edge.us.us.i, %bb.a
  %.06.lcssa.i = phi i32 [ 0, %bb.a ], [ %i.am, %._crit_edge.us.us.i ], [ %i.cd, %._crit_edge.us.i ], [ %.1.us22.i, %bb.b ], [ %i.bh, %._crit_edge.us.us37.i ], [ %.1.i, %bb.f ] ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.8.val, i64 120
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !309
  %i.dn = getelementptr inbounds [4 x i8], ptr %i.dm, i64 %i.d
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !3  ; 2 uses
  %.not.i = icmp eq i32 %.06.lcssa.i, %i.do
  br i1 %.not.i, label %_ZNK8facebook5velox9functions12_GLOBAL__N_120ArrayFlattenFunction19processOneOutputRowEiiRKNS3_12ProcessStateERi.exit, label %bb.g, !prof !82

.lr.ph14.split.split.i:                           ; preds = %bb.f, %.lr.ph14.split.split.preheader.i
  %.pre60.i = phi i32 [ %i.m, %.lr.ph14.split.split.preheader.i ], [ %.pre61.i, %bb.f ] ; 4 uses
  %i.dp = phi i32 [ %i.m, %.lr.ph14.split.split.preheader.i ], [ %i.fe, %bb.f ] ; 3 uses
  %indvars.iv.i = phi i64 [ %i.cm, %.lr.ph14.split.split.preheader.i ], [ %indvars.iv.next.i, %bb.f ] ; 5 uses
  %.012.i = phi i32 [ 0, %.lr.ph14.split.split.preheader.i ], [ %i.ff, %bb.f ]
  %.069.i = phi i32 [ 0, %.lr.ph14.split.split.preheader.i ], [ %.1.i, %bb.f ] ; 4 uses
  %i.dq = load i8, ptr %i.s, align 1, !range !69
  %i.dr = trunc nuw i8 %i.dq to i1
  br i1 %i.dr, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph14.split.split.i
  %i.ds = lshr i64 %indvars.iv.i, 6
  %i.dt = and i64 %i.ds, 67108863
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.dt
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !120
  %i.dw = and i64 %indvars.iv.i, 63
  %i.dx = shl nuw i64 1, %i.dw
  %i.dy = and i64 %i.dv, %i.dx
  %.not.i.i.i = icmp eq i64 %i.dy, 0
  br i1 %.not.i.i.i, label %bb.f, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i, !prof !658

bb.d:                                             ; preds = %.lr.ph14.split.split.i
  %i.dz = load i8, ptr %i.t, align 1, !tbaa !656, !range !69, !noundef !70
  %i.ea = trunc nuw i8 %i.dz to i1
  br i1 %i.ea, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.eb = load ptr, ptr %i.u, align 8, !tbaa !657
  %i.ec = getelementptr inbounds [4 x i8], ptr %i.eb, i64 %indvars.iv.i
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !3
  %i.ee = zext i32 %i.ed to i64                   ; 2 uses
  %i.ef = lshr i64 %i.ee, 6
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.ef
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !120
  %i.ei = and i64 %i.ee, 63
  %i.ej = shl nuw i64 1, %i.ei
  %i.ek = and i64 %i.ej, %i.eh
  %.not.i7.i.i = icmp eq i64 %i.ek, 0
  br i1 %.not.i7.i.i, label %bb.f, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.thread27, !prof !658

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i: ; preds = %bb.d
  %i.el = load i64, ptr %i.r, align 8, !tbaa !120
  %i.em = and i64 %i.el, 1
  %.not.i6.i.i = icmp eq i64 %i.em, 0
  br i1 %.not.i6.i.i, label %bb.f, label %_ZNK8facebook5velox13DecodedVector5indexEi.exit.i, !prof !658

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i: ; preds = %bb.c
  %.pre = load i8, ptr %i.t, align 1, !tbaa !656, !range !69
  %i.en = trunc nuw i8 %.pre to i1
  br i1 %i.en, label %_ZNK8facebook5velox13DecodedVector5indexEi.exit.i, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.thread27

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.thread27: ; preds = %bb.e, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i
  %i.eo = load ptr, ptr %i.u, align 8, !tbaa !657
  %i.ep = getelementptr inbounds [4 x i8], ptr %i.eo, i64 %indvars.iv.i
  br label %_ZNK8facebook5velox13DecodedVector5indexEi.exit.i

_ZNK8facebook5velox13DecodedVector5indexEi.exit.i: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.thread27, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i
  %.0.i33.in.i = phi ptr [ %i.ep, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.thread27 ], [ %i.w, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i ], [ %i.w, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i ]
  %.0.i33.i = load i32, ptr %.0.i33.in.i, align 4, !tbaa !3
  %i.eq = sext i32 %.0.i33.i to i64               ; 2 uses
  %i.er = getelementptr inbounds [4 x i8], ptr %.val.i, i64 %i.eq
  %i.es = getelementptr inbounds [4 x i8], ptr %.val32.i, i64 %i.eq
  %i.et = load i32, ptr %i.er, align 4, !tbaa !3  ; 2 uses
  %i.eu = load i32, ptr %i.es, align 4, !tbaa !3  ; 3 uses
  %i.ev = add nsw i32 %i.eu, %i.et
  %i.ew = icmp sgt i32 %i.eu, 0
  br i1 %i.ew, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i
  %.pre.pre.i = load i32, ptr %i.l, align 4, !tbaa !3
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %_ZNK8facebook5velox13DecodedVector5indexEi.exit.i
  %.pre.i = phi i32 [ %.pre.pre.i, %._crit_edge.loopexit.i ], [ %.pre60.i, %_ZNK8facebook5velox13DecodedVector5indexEi.exit.i ] ; 2 uses
  %i.ex = add nsw i32 %i.eu, %.069.i
  br label %bb.f

.lr.ph.i:                                         ; preds = %_ZNK8facebook5velox13DecodedVector5indexEi.exit.i, %.lr.ph.i
  %.0318.i = phi i32 [ %i.fc, %.lr.ph.i ], [ %i.et, %_ZNK8facebook5velox13DecodedVector5indexEi.exit.i ] ; 2 uses
  %i.ey = load i32, ptr %.16.val, align 4, !tbaa !3 ; 2 uses
  %i.ez = add nsw i32 %i.ey, 1
  store i32 %i.ez, ptr %.16.val, align 4, !tbaa !3
  %i.fa = sext i32 %i.ey to i64
  %i.fb = getelementptr inbounds [4 x i8], ptr %i.aa, i64 %i.fa
  store i32 %.0318.i, ptr %i.fb, align 4, !tbaa !3
  %i.fc = add nsw i32 %.0318.i, 1                 ; 2 uses
  %i.fd = icmp slt i32 %i.fc, %i.ev
  br i1 %i.fd, label %.lr.ph.i, label %._crit_edge.loopexit.i, !llvm.loop !697

bb.f:                                             ; preds = %._crit_edge.i, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i, %bb.e, %bb.c
  %.pre61.i = phi i32 [ %.pre60.i, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i ], [ %.pre.i, %._crit_edge.i ], [ %.pre60.i, %bb.c ], [ %.pre60.i, %bb.e ]
  %i.fe = phi i32 [ %i.dp, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i ], [ %.pre.i, %._crit_edge.i ], [ %i.dp, %bb.c ], [ %i.dp, %bb.e ] ; 2 uses
  %.1.i = phi i32 [ %.069.i, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i ], [ %i.ex, %._crit_edge.i ], [ %.069.i, %bb.c ], [ %.069.i, %bb.e ] ; 2 uses
  %i.ff = add nuw nsw i32 %.012.i, 1              ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1
  %i.fg = icmp slt i32 %i.ff, %i.fe
  br i1 %i.fg, label %.lr.ph14.split.split.i, label %._crit_edge15.i, !llvm.loop !696

bb.g:                                             ; preds = %._crit_edge15.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24, !noalias !699
  store i32 %.06.lcssa.i, ptr %1, align 16, !tbaa !32, !alias.scope !702, !noalias !699
  %i.fh = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 %i.do, ptr %i.fh, align 16, !tbaa !32, !alias.scope !702, !noalias !699
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr nonnull @.str.23, i64 11, i64 17, ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24, !noalias !699
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayFlattenFunction19processOneOutputRowEiiRKNS3_12ProcessStateERiE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr nonnull @.str.23) #28
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.fi = landingpad { ptr, i32 }
          cleanup
  %i.fj = load ptr, ptr %2, align 8, !tbaa !49    ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.fl = icmp eq ptr %i.fj, %i.fk
  br i1 %i.fl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.i
  %i.fm = load i64, ptr %i.fk, align 8, !tbaa !32
  %i.fn = add i64 %i.fm, 1
  call void @_ZdlPvm(ptr noundef %i.fj, i64 noundef %i.fn) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  resume { ptr, i32 } %i.fi

_ZNK8facebook5velox9functions12_GLOBAL__N_120ArrayFlattenFunction19processOneOutputRowEiiRKNS3_12ProcessStateERi.exit: ; preds = %._crit_edge15.i
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZSt10_ConstructIN8facebook5velox11ArrayVectorEJRPNS1_6memory10MemoryPoolERSt10shared_ptrIKNS1_4TypeEEDnRiRN5boost13intrusive_ptrINS1_6BufferEEESH_RS7_INS1_10BaseVectorEEEEvPT_DpOT0_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(16) %7) local_unnamed_addr #8 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.std::shared_ptr.74", align 16 ; 4 uses
  %9 = alloca %"class.boost::intrusive_ptr", align 8 ; 4 uses
  %10 = alloca %"class.boost::intrusive_ptr", align 8 ; 4 uses
  %11 = alloca %"class.boost::intrusive_ptr", align 8 ; 4 uses
  %12 = alloca %"class.std::shared_ptr.71", align 16 ; 4 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !521
  %i.b = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !37   ; 2 uses
  %i.e = load <2 x ptr>, ptr %2, align 8, !tbaa !40
  store <2 x ptr> %i.e, ptr %8, align 16, !tbaa !40
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %i.g = load i8, ptr @__libc_single_threaded, align 1, !tbaa !32
  %.not.i.i.i.i = icmp eq i8 %i.g, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load i32, ptr %i.f, align 4, !tbaa !3
  %i.i = add nsw i32 %i.h, 1
  store i32 %i.i, ptr %i.f, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit

bb.d:                                             ; preds = %bb.b
  %i.j = atomicrmw volatile add ptr %i.f, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit

_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit: ; preds = %bb.a, %bb.c, %bb.d
  store ptr null, ptr %9, align 8, !tbaa !296
  %i.k = load i32, ptr %4, align 4, !tbaa !3
  %i.l = load ptr, ptr %5, align 8, !tbaa !296    ; 3 uses
  store ptr %i.l, ptr %10, align 8, !tbaa !296
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.n = atomicrmw add ptr %i.m, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit: ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit, %bb.e
  %i.o = load ptr, ptr %6, align 8, !tbaa !296    ; 3 uses
  store ptr %i.o, ptr %11, align 8, !tbaa !296
  %.not.i8 = icmp eq ptr %i.o, null
  br i1 %.not.i8, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit9, label %bb.f

bb.f:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.q = atomicrmw add ptr %i.p, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit9

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit9: ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit, %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !37   ; 2 uses
  %i.u = load <2 x ptr>, ptr %7, align 8, !tbaa !40
  store <2 x ptr> %i.u, ptr %12, align 16, !tbaa !40
  %.not.i.i.i10 = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i10, label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit, label %bb.g

bb.g:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit9
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 3 uses
  %i.w = load i8, ptr @__libc_single_threaded, align 1, !tbaa !32
  %.not.i.i.i.i11 = icmp eq i8 %i.w, 0
  br i1 %.not.i.i.i.i11, label %bb.i, label %bb.h

end_hunk_1
