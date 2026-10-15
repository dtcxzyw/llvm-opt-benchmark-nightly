Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/formatspec?download=true
inline.NumInlined: 8159
inline.NumDeleted: 2481
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 57
loop-unroll.NumUnrolled: 69
begin_hunk_0_@_ZN3fmt3v126detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_:bb.a
    i32 8, label %bb.x
    i32 9, label %bb.y
    i32 10, label %bb.z
    i32 11, label %bb.aa
    i32 12, label %bb.ab
    i32 13, label %bb.ac
    i32 14, label %bb.ad
  ]

bb.q:                                             ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  %i.az = icmp slt i32 %.sroa.010.sroa.0.sroa.0.0, 0
  %i.ba = zext nneg i32 %.sroa.010.sroa.0.sroa.0.0 to i64
  br i1 %i.az, label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit.thread, label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit.thread42

bb.r:                                             ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  %i.bb = zext i32 %.sroa.010.sroa.0.sroa.0.0 to i64
  br label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit

bb.s:                                             ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  %.sroa.010.sroa.0.sroa.11.0.insert.ext74 = zext i32 %.sroa.010.sroa.0.sroa.11.0 to i64
  %.sroa.010.sroa.0.sroa.11.0.insert.shift75 = shl nuw i64 %.sroa.010.sroa.0.sroa.11.0.insert.ext74, 32
  %.sroa.010.sroa.0.sroa.0.0.insert.ext63 = zext i32 %.sroa.010.sroa.0.sroa.0.0 to i64
  %.sroa.010.sroa.0.sroa.0.0.insert.insert65 = or disjoint i64 %.sroa.010.sroa.0.sroa.11.0.insert.shift75, %.sroa.010.sroa.0.sroa.0.0.insert.ext63
  %i.bc = tail call noundef i64 @llvm.smax.i64(i64 %.sroa.010.sroa.0.sroa.0.0.insert.insert65, i64 -1)
  br label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit

bb.t:                                             ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  %.sroa.010.sroa.0.sroa.11.0.insert.ext = zext i32 %.sroa.010.sroa.0.sroa.11.0 to i64
  %.sroa.010.sroa.0.sroa.11.0.insert.shift = shl nuw i64 %.sroa.010.sroa.0.sroa.11.0.insert.ext, 32
  %.sroa.010.sroa.0.sroa.0.0.insert.ext = zext i32 %.sroa.010.sroa.0.sroa.0.0 to i64
  %.sroa.010.sroa.0.sroa.0.0.insert.insert = or disjoint i64 %.sroa.010.sroa.0.sroa.11.0.insert.shift, %.sroa.010.sroa.0.sroa.0.0.insert.ext
  br label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit

bb.u:                                             ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  %.sroa.010.sroa.0.sroa.11.0.insert.ext82 = zext i32 %.sroa.010.sroa.0.sroa.11.0 to i64
  %.sroa.010.sroa.0.sroa.11.0.insert.shift83 = shl nuw i64 %.sroa.010.sroa.0.sroa.11.0.insert.ext82, 32
  %.sroa.010.sroa.0.sroa.0.0.insert.ext69 = zext i32 %.sroa.010.sroa.0.sroa.0.0 to i64
  %.sroa.010.sroa.0.sroa.0.0.insert.insert71 = or disjoint i64 %.sroa.010.sroa.0.sroa.11.0.insert.shift83, %.sroa.010.sroa.0.sroa.0.0.insert.ext69
  %.not103 = icmp sgt i64 %.sroa.010.sroa.11.0, -1
  br i1 %.not103, label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit, label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit.thread

bb.v:                                             ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  %.sroa.010.sroa.0.sroa.11.0.insert.ext78 = zext i32 %.sroa.010.sroa.0.sroa.11.0 to i64
  %.sroa.010.sroa.0.sroa.11.0.insert.shift79 = shl nuw i64 %.sroa.010.sroa.0.sroa.11.0.insert.ext78, 32
  %.sroa.010.sroa.0.sroa.0.0.insert.ext66 = zext i32 %.sroa.010.sroa.0.sroa.0.0 to i64
  %.sroa.010.sroa.0.sroa.0.0.insert.insert68 = or disjoint i64 %.sroa.010.sroa.0.sroa.11.0.insert.shift79, %.sroa.010.sroa.0.sroa.0.0.insert.ext66
  br label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit

bb.w:                                             ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.180) #41
  unreachable

bb.x:                                             ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.180) #41
  unreachable

bb.y:                                             ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.180) #41
  unreachable

bb.z:                                             ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.180) #41
  unreachable

bb.aa:                                            ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.180) #41
  unreachable

bb.ab:                                            ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.180) #41
  unreachable

bb.ac:                                            ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.180) #41
  unreachable

bb.ad:                                            ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.180) #41
  unreachable

bb.ae:                                            ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.180) #41
  unreachable

bb.af:                                            ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.180) #41
  unreachable

_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit: ; preds = %bb.u, %bb.r, %bb.s, %bb.t, %bb.v
  %.0.i = phi i64 [ %.sroa.010.sroa.0.sroa.0.0.insert.insert, %bb.t ], [ %.sroa.010.sroa.0.sroa.0.0.insert.insert71, %bb.u ], [ %.sroa.010.sroa.0.sroa.0.0.insert.insert68, %bb.v ], [ %i.bb, %bb.r ], [ %i.bc, %bb.s ] ; 2 uses
  %i.bd = icmp ugt i64 %.0.i, 2147483647
  br i1 %i.bd, label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit.thread, label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit.thread42

_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit.thread: ; preds = %bb.u, %bb.q, %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.179) #41
  unreachable

_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit.thread42: ; preds = %bb.q, %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit
  %.0.i44 = phi i64 [ %.0.i, %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit ], [ %i.ba, %bb.q ]
  %i.be = trunc nuw nsw i64 %.0.i44 to i32
  store i32 %i.be, ptr %1, align 4, !tbaa !81
  br label %bb.ag

bb.ag:                                            ; preds = %bb.a, %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit.thread42
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden { ptr, i32 } @_ZN3fmt3v126detail18parse_dynamic_specIcEENS1_25parse_dynamic_spec_resultIT_EEPKS4_S7_RiRNS1_7arg_refIS4_EERNS0_13parse_contextIS4_EE(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(20) %4) local_unnamed_addr #12 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %5 = alloca %"struct.fmt::v12::detail::dynamic_spec_handler", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #39
  store i32 0, ptr %i.a, align 4, !tbaa !372
  %i.b = load i8, ptr %0, align 1, !tbaa !135     ; 3 uses
  %i.c = add i8 %i.b, -48
  %or.cond23 = icmp ult i8 %i.c, 10
  br i1 %or.cond23, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.d = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.e = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.f = xor i64 %i.e, -1
  %i.g = getelementptr i8, ptr %0, i64 %i.f
  %scevgep.i = getelementptr i8, ptr %i.g, i64 %i.d ; 2 uses
  %i.h = sub i64 %i.d, %i.e
  %scevgep37.i = getelementptr i8, ptr %0, i64 %i.h ; 2 uses
  %i.i = zext nneg i8 %i.b to i32
  %i.j = add nsw i32 %i.i, -48                    ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %.not34.i35 = icmp eq ptr %i.k, %1
  br i1 %.not34.i35, label %.critedge.i, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %i.l = mul i32 %i.r, 10
  %i.m = zext nneg i8 %i.s to i32
  %i.n = add nsw i32 %i.m, -48
  %i.o = add i32 %i.n, %i.l                       ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.q, i64 1 ; 2 uses
  %.not34.i = icmp eq ptr %i.p, %1
  br i1 %.not34.i, label %.critedge.i, label %.lr.ph, !llvm.loop !41

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.q = phi ptr [ %i.p, %bb.c ], [ %i.k, %bb.b ] ; 4 uses
  %i.r = phi i32 [ %i.o, %bb.c ], [ %i.j, %bb.b ] ; 4 uses
  %.0.i37 = phi ptr [ %i.q, %bb.c ], [ %0, %bb.b ]
  %.027.i36 = phi i32 [ %i.r, %bb.c ], [ 0, %bb.b ]
  %i.s = load i8, ptr %i.q, align 1, !tbaa !135   ; 2 uses
  %i.t = add i8 %i.s, -48
  %or.cond.i = icmp ult i8 %i.t, 10
  br i1 %or.cond.i, label %bb.c, label %..critedge.i_crit_edge, !llvm.loop !41

..critedge.i_crit_edge:                           ; preds = %.lr.ph
  br label %.critedge.i, !llvm.loop !41

.critedge.i:                                      ; preds = %bb.c, %..critedge.i_crit_edge, %bb.b
  %.027.i.lcssa = phi i32 [ %.027.i36, %..critedge.i_crit_edge ], [ 0, %bb.b ], [ %i.r, %bb.c ]
  %.lcssa = phi i32 [ %i.r, %..critedge.i_crit_edge ], [ %i.j, %bb.b ], [ %i.o, %bb.c ] ; 3 uses
  %.0.lcssa.i = phi ptr [ %.0.i37, %..critedge.i_crit_edge ], [ %scevgep.i, %bb.b ], [ %scevgep.i, %bb.c ]
  %.lcssa.i = phi ptr [ %i.q, %..critedge.i_crit_edge ], [ %scevgep37.i, %bb.b ], [ %scevgep37.i, %bb.c ] ; 2 uses
  %i.u = ptrtoint ptr %.lcssa.i to i64
  %i.v = ptrtoint ptr %0 to i64
  %i.w = sub i64 %i.u, %i.v                       ; 2 uses
  %i.x = icmp slt i64 %i.w, 10
  br i1 %i.x, label %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit, label %bb.d

bb.d:                                             ; preds = %.critedge.i
  %i.y = icmp eq i64 %i.w, 10
  br i1 %i.y, label %bb.e, label %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.z = zext i32 %.027.i.lcssa to i64
  %i.aa = mul nuw nsw i64 %i.z, 10
  %i.ab = load i8, ptr %.0.lcssa.i, align 1, !tbaa !135
  %i.ac = sext i8 %i.ab to i64
  %i.ad = add nsw i64 %i.ac, 4294967248
  %i.ae = and i64 %i.ad, 4294967294
  %i.af = add nuw nsw i64 %i.ae, %i.aa
  %i.ag = icmp samesign ugt i64 %i.af, 2147483647
  %i.ah = icmp eq i32 %.lcssa, -1
  %or.cond = select i1 %i.ag, i1 true, i1 %i.ah
  br i1 %or.cond, label %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit.thread, label %bb.f

_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit: ; preds = %.critedge.i
  %.old = icmp eq i32 %.lcssa, -1
  br i1 %.old, label %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit.thread, label %bb.f

_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit.thread: ; preds = %bb.e, %bb.d, %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.164) #41
  unreachable

bb.f:                                             ; preds = %bb.e, %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit
  store i32 %.lcssa, ptr %2, align 4, !tbaa !81
  br label %bb.q

bb.g:                                             ; preds = %bb.a
  %i.ai = icmp eq i8 %i.b, 123
  br i1 %i.ai, label %bb.h, label %bb.p

bb.h:                                             ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 5 uses
  %.not = icmp eq ptr %i.aj, %1
  br i1 %.not, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !135
  switch i8 %i.ak, label %bb.l [
    i8 125, label %bb.j
    i8 58, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i, %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.am = load i32, ptr %i.al, align 8, !tbaa !250 ; 3 uses
  %i.an = icmp slt i32 %i.am, 0
  br i1 %i.an, label %bb.k, label %_ZN3fmt3v1213parse_contextIcE11next_arg_idEv.exit

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.172) #41
  unreachable

_ZN3fmt3v1213parse_contextIcE11next_arg_idEv.exit: ; preds = %bb.j
  %i.ao = add nuw nsw i32 %i.am, 1
  store i32 %i.ao, ptr %i.al, align 8, !tbaa !250
  store i32 %i.am, ptr %3, align 8
  store i32 1, ptr %i.a, align 4, !tbaa !372
  br label %bb.m

bb.l:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #39
  store ptr %4, ptr %5, align 8, !tbaa !1195
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %3, ptr %i.ap, align 8, !tbaa !1196
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.a, ptr %i.aq, align 8, !tbaa !93
  %i.ar = call noundef ptr @_ZN3fmt3v126detail12parse_arg_idIcNS1_20dynamic_spec_handlerIcEEEEPKT_S7_S7_OT0_(ptr noundef nonnull %i.aj, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #39
  br label %bb.m

bb.m:                                             ; preds = %_ZN3fmt3v1213parse_contextIcE11next_arg_idEv.exit, %bb.l, %bb.h
  %.0 = phi ptr [ %i.aj, %bb.h ], [ %i.ar, %bb.l ], [ %i.aj, %_ZN3fmt3v1213parse_contextIcE11next_arg_idEv.exit ] ; 3 uses
  %.not22 = icmp eq ptr %.0, %1
  br i1 %.not22, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.as = load i8, ptr %.0, align 1, !tbaa !135
  %i.at = icmp eq i8 %i.as, 125
  br i1 %i.at, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.au = getelementptr inbounds nuw i8, ptr %.0, i64 1
  %.sroa.3.0.pre = load i32, ptr %i.a, align 4, !tbaa !372
  br label %bb.q

bb.p:                                             ; preds = %bb.m, %bb.n, %bb.g
  call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.169) #41
  unreachable

bb.q:                                             ; preds = %bb.f, %bb.o
  %.sroa.3.0 = phi i32 [ 0, %bb.f ], [ %.sroa.3.0.pre, %bb.o ]
  %.sroa.0.0 = phi ptr [ %.lcssa.i, %bb.f ], [ %i.au, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #39
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.3.0, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN3fmt3v126detail12parse_arg_idIcNS1_20dynamic_spec_handlerIcEEEEPKT_S7_S7_OT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #12 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 3 uses
  %i.b = ptrtoaddr ptr %1 to i64                  ; 3 uses
  %i.c = load i8, ptr %0, align 1, !tbaa !135     ; 5 uses
  %i.d = add i8 %i.c, -48
  %or.cond = icmp ult i8 %i.d, 10
  br i1 %or.cond, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %.not28 = icmp eq i8 %i.c, 48
  br i1 %.not28, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = xor i64 %i.a, -1
  %i.f = getelementptr i8, ptr %0, i64 %i.e
  %scevgep.i = getelementptr i8, ptr %i.f, i64 %i.b ; 2 uses
  %i.g = sub i64 %i.b, %i.a
  %scevgep37.i = getelementptr i8, ptr %0, i64 %i.g ; 2 uses
  %i.h = zext nneg i8 %i.c to i32
  %i.i = add nsw i32 %i.h, -48                    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %.not34.i47 = icmp eq ptr %i.j, %1
  br i1 %.not34.i47, label %.critedge.i, label %.lr.ph50

bb.d:                                             ; preds = %.lr.ph50
  %i.k = mul i32 %i.q, 10
  %i.l = zext nneg i8 %i.r to i32
  %i.m = add nsw i32 %i.l, -48
  %i.n = add i32 %i.m, %i.k                       ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.p, i64 1 ; 2 uses
  %.not34.i = icmp eq ptr %i.o, %1
  br i1 %.not34.i, label %.critedge.i, label %.lr.ph50, !llvm.loop !41

.lr.ph50:                                         ; preds = %bb.c, %bb.d
  %i.p = phi ptr [ %i.o, %bb.d ], [ %i.j, %bb.c ] ; 4 uses
  %i.q = phi i32 [ %i.n, %bb.d ], [ %i.i, %bb.c ] ; 4 uses
  %.0.i49 = phi ptr [ %i.p, %bb.d ], [ %0, %bb.c ]
  %.027.i48 = phi i32 [ %i.q, %bb.d ], [ 0, %bb.c ]
  %i.r = load i8, ptr %i.p, align 1, !tbaa !135   ; 2 uses
  %i.s = add i8 %i.r, -48
  %or.cond.i = icmp ult i8 %i.s, 10
  br i1 %or.cond.i, label %bb.d, label %..critedge.i_crit_edge, !llvm.loop !41

..critedge.i_crit_edge:                           ; preds = %.lr.ph50
  br label %.critedge.i, !llvm.loop !41

.critedge.i:                                      ; preds = %bb.d, %..critedge.i_crit_edge, %bb.c
  %.027.i.lcssa = phi i32 [ %.027.i48, %..critedge.i_crit_edge ], [ 0, %bb.c ], [ %i.q, %bb.d ]
  %.lcssa = phi i32 [ %i.q, %..critedge.i_crit_edge ], [ %i.i, %bb.c ], [ %i.n, %bb.d ] ; 2 uses
  %.0.lcssa.i = phi ptr [ %.0.i49, %..critedge.i_crit_edge ], [ %scevgep.i, %bb.c ], [ %scevgep.i, %bb.d ]
  %.lcssa.i = phi ptr [ %i.p, %..critedge.i_crit_edge ], [ %scevgep37.i, %bb.c ], [ %scevgep37.i, %bb.d ] ; 4 uses
  %i.t = ptrtoint ptr %.lcssa.i to i64
  %i.u = ptrtoint ptr %0 to i64
  %i.v = sub i64 %i.t, %i.u                       ; 2 uses
  %i.w = icmp slt i64 %i.v, 10
  br i1 %i.w, label %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit, label %bb.e

bb.e:                                             ; preds = %.critedge.i
  %i.x = icmp eq i64 %i.v, 10
  br i1 %i.x, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.y = zext i32 %.027.i.lcssa to i64
  %i.z = mul nuw nsw i64 %i.y, 10
  %i.aa = load i8, ptr %.0.lcssa.i, align 1, !tbaa !135
  %i.ab = sext i8 %i.aa to i64
  %i.ac = add nsw i64 %i.ab, 4294967248
  %i.ad = and i64 %i.ac, 4294967294
  %i.ae = add nuw nsw i64 %i.ad, %i.z
  %i.af = icmp samesign ult i64 %i.ae, 2147483648
  br i1 %i.af, label %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  br label %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit

bb.h:                                             ; preds = %bb.b
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 1
  br label %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit

_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit: ; preds = %bb.g, %bb.f, %.critedge.i, %bb.h
  %.037 = phi ptr [ %i.ag, %bb.h ], [ %.lcssa.i, %.critedge.i ], [ %.lcssa.i, %bb.f ], [ %.lcssa.i, %bb.g ] ; 3 uses
  %.021 = phi i32 [ 0, %bb.h ], [ %.lcssa, %.critedge.i ], [ %.lcssa, %bb.f ], [ 2147483647, %bb.g ]
  %i.ah = icmp eq ptr %.037, %1
  br i1 %i.ah, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit
  %i.ai = load i8, ptr %.037, align 1, !tbaa !135
  switch i8 %i.ai, label %bb.j [
    i8 125, label %bb.k
    i8 58, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i, %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.169) #41
  unreachable

bb.k:                                             ; preds = %bb.i, %bb.i
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !1199, !nonnull !192, !align !308
  store i32 %.021, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !1200, !nonnull !192, !align !301
  store i32 1, ptr %i.am, align 4, !tbaa !372
  %i.an = load ptr, ptr %2, align 8, !tbaa !1201, !nonnull !192, !align !308
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !250
  %i.aq = icmp sgt i32 %i.ap, 0
  br i1 %i.aq, label %bb.l, label %_ZN3fmt3v126detail20dynamic_spec_handlerIcE8on_indexEi.exit

bb.l:                                             ; preds = %bb.k
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.173) #41
  unreachable

_ZN3fmt3v126detail20dynamic_spec_handlerIcE8on_indexEi.exit: ; preds = %bb.k
  store i32 -1, ptr %i.ao, align 8, !tbaa !250
  br label %bb.o

bb.m:                                             ; preds = %bb.a
  %i.ar = and i8 %i.c, -33
  %i.as = add i8 %i.ar, -65
  %or.cond10.i = icmp ult i8 %i.as, 26
  %i.at = icmp eq i8 %i.c, 95
  %i.au = or i1 %i.at, %or.cond10.i
  br i1 %i.au, label %.critedge4.preheader, label %bb.n

.critedge4.preheader:                             ; preds = %bb.m
  %i.av = sub i64 %i.b, %i.a
  %scevgep = getelementptr i8, ptr %0, i64 %i.av  ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %.not45 = icmp eq ptr %i.aw, %1
  br i1 %.not45, label %.critedge, label %.lr.ph

bb.n:                                             ; preds = %bb.m
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.169) #41
  unreachable

.critedge4:                                       ; preds = %.lr.ph
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ay, i64 1 ; 2 uses
  %.not = icmp eq ptr %i.ax, %1
  br i1 %.not, label %.critedge, label %.lr.ph, !llvm.loop !1197

.lr.ph:                                           ; preds = %.critedge4.preheader, %.critedge4
  %i.ay = phi ptr [ %i.ax, %.critedge4 ], [ %i.aw, %.critedge4.preheader ] ; 3 uses
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !135 ; 3 uses
  %i.ba = and i8 %i.az, -33
  %i.bb = add i8 %i.ba, -65
  %or.cond10.i32 = icmp ult i8 %i.bb, 26
  %i.bc = icmp eq i8 %i.az, 95
  %i.bd = or i1 %i.bc, %or.cond10.i32
  %i.be = add i8 %i.az, -48
  %or.cond31 = icmp ult i8 %i.be, 10
  %or.cond38 = or i1 %or.cond31, %i.bd
  br i1 %or.cond38, label %.critedge4, label %..critedge_crit_edge, !llvm.loop !1197

..critedge_crit_edge:                             ; preds = %.lr.ph
  br label %.critedge, !llvm.loop !1197

.critedge:                                        ; preds = %.critedge4, %..critedge_crit_edge, %.critedge4.preheader
  %.lcssa40 = phi ptr [ %i.ay, %..critedge_crit_edge ], [ %scevgep, %.critedge4.preheader ], [ %scevgep, %.critedge4 ] ; 2 uses
  %i.bf = ptrtoint ptr %.lcssa40 to i64
  %i.bg = ptrtoint ptr %0 to i64
  %i.bh = sub i64 %i.bf, %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !1199, !nonnull !192, !align !308 ; 2 uses
  store ptr %0, ptr %i.bj, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store i64 %i.bh, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !135
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !1200, !nonnull !192, !align !301
  store i32 2, ptr %i.bl, align 4, !tbaa !372
  %i.bm = load ptr, ptr %2, align 8, !tbaa !1201, !nonnull !192, !align !308
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  store i32 -1, ptr %i.bn, align 8, !tbaa !250
  br label %bb.o

bb.o:                                             ; preds = %.critedge, %_ZN3fmt3v126detail20dynamic_spec_handlerIcE8on_indexEi.exit
  %.022 = phi ptr [ %.037, %_ZN3fmt3v126detail20dynamic_spec_handlerIcE8on_indexEi.exit ], [ %.lcssa40, %.critedge ]
  ret ptr %.022
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden ptr @_ZN3fmt3v126detail18write_int_noinlineIcNS0_14basic_appenderIcEEmEET0_S5_NS1_13write_int_argIT1_EERKNS0_12format_specsE(ptr %0, i64 %1, i32 %2, ptr noundef nonnull align 4 dereferenceable(16) %3) local_unnamed_addr #25 {
bb.a:
  %4 = alloca %class.anon.47, align 1             ; 5 uses
  %i.a = alloca [64 x i8], align 16               ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #39
end_hunk_0
begin_hunk_1_@_ZN11OpenImageIO4v3_14pugi4impl13strcpy_insituIPcmEEbRT_RT0_mPKcm:bb.a
  store i64 %i.df, ptr %i.dd, align 8, !tbaa !1320
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  %i.dh = icmp eq i64 %i.df, %i.dc
  br i1 %i.dh, label %bb.w, label %_ZN11OpenImageIO4v3_14pugi4impl13xml_allocator17deallocate_stringEPc.exit49

bb.w:                                             ; preds = %bb.v
  %i.di = getelementptr inbounds nuw i8, ptr %i.cp, i64 16 ; 2 uses
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !221 ; 2 uses
  %i.dk = icmp eq ptr %i.dj, null
  br i1 %i.dk, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dg, i8 0, i64 16, i1 false)
  store i64 0, ptr %i.bm, align 8, !tbaa !215
  br label %_ZN11OpenImageIO4v3_14pugi4impl13xml_allocator17deallocate_stringEPc.exit49

bb.y:                                             ; preds = %bb.w
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !220 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  store ptr %i.dj, ptr %i.dn, align 8, !tbaa !221
  %i.do = load ptr, ptr %i.di, align 8, !tbaa !221
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  store ptr %i.dm, ptr %i.dp, align 8, !tbaa !220
  %i.dq = load ptr, ptr @_ZN11OpenImageIO4v3_14pugi4impl38xml_memory_management_function_storageIiE10deallocateE, align 8, !tbaa !93
  call void %i.dq(ptr noundef nonnull %i.cp), !inline_history !1316
  br label %_ZN11OpenImageIO4v3_14pugi4impl13xml_allocator17deallocate_stringEPc.exit49

_ZN11OpenImageIO4v3_14pugi4impl13xml_allocator17deallocate_stringEPc.exit49: ; preds = %bb.y, %bb.x, %bb.v, %bb.p
  store ptr %i.cf, ptr %0, align 8, !tbaa !168
  %i.dr = load i64, ptr %1, align 8, !tbaa !169
  %i.ds = or i64 %i.dr, %2
  store i64 %i.ds, ptr %1, align 8, !tbaa !169
  br label %bb.z

bb.z:                                             ; preds = %_ZN11OpenImageIO4v3_14pugi4impl13xml_allocator15allocate_stringEm.exit, %_ZN11OpenImageIO4v3_14pugi4impl13xml_allocator17deallocate_stringEPc.exit49, %_ZN11OpenImageIO4v3_14pugi4impl19strcpy_insitu_allowImEEbmRKT_mPc.exit.thread51, %_ZN11OpenImageIO4v3_14pugi4impl13xml_allocator17deallocate_stringEPc.exit
  %.2 = phi i1 [ true, %_ZN11OpenImageIO4v3_14pugi4impl13xml_allocator17deallocate_stringEPc.exit ], [ true, %_ZN11OpenImageIO4v3_14pugi4impl19strcpy_insitu_allowImEEbmRKT_mPc.exit.thread51 ], [ true, %_ZN11OpenImageIO4v3_14pugi4impl13xml_allocator17deallocate_stringEPc.exit49 ], [ false, %_ZN11OpenImageIO4v3_14pugi4impl13xml_allocator15allocate_stringEm.exit ]
  ret i1 %.2
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v129to_stringIiTnNSt9enable_ifIXsr3std11is_integralIT_EE5valueEiE4typeELi0EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i32 noundef %1) local_unnamed_addr #12 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca [11 x i8], align 1                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #39
  %i.c = icmp slt i32 %1, 0
  %spec.select.i = tail call i32 @llvm.abs.i32(i32 %1, i1 false) ; 5 uses
  %i.d = or i32 %spec.select.i, 1
  %i.e = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.d, i1 true)
  %i.f = xor i32 %i.e, 31
  %i.g = zext nneg i32 %i.f to i64
  %i.h = getelementptr inbounds nuw [8 x i8], ptr @_ZZN3fmt3v126detail15do_count_digitsEjE5table, i64 %i.g
  %i.i = load i64, ptr %i.h, align 8, !tbaa !169
  %i.j = zext i32 %spec.select.i to i64
  %i.k = add i64 %i.i, %i.j                       ; 2 uses
  %i.l = lshr i64 %i.k, 32
  %i.m = trunc nuw i64 %i.l to i32                ; 2 uses
  %.lobit.i = lshr i32 %1, 31
  %i.n = zext nneg i32 %.lobit.i to i64
  %i.o = ashr i64 %i.k, 32
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 45, ptr %i.b, align 1, !tbaa !135
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.018.i = phi ptr [ %i.p, %bb.b ], [ %i.b, %bb.a ] ; 3 uses
  %i.q = icmp ugt i32 %spec.select.i, 99
  br i1 %i.q, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.020.i.i = phi i32 [ %i.r, %.lr.ph.i.i ], [ %i.m, %bb.c ]
  %.01819.i.i = phi i32 [ %i.z, %.lr.ph.i.i ], [ %spec.select.i, %bb.c ] ; 3 uses
  %i.r = add i32 %.020.i.i, -2                    ; 3 uses
  %i.s = zext i32 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %.018.i, i64 %i.s
  %i.u = urem i32 %.01819.i.i, 100
  %i.v = shl nuw nsw i32 %i.u, 1
  %i.w = zext nneg i32 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.w
  %i.y = load i16, ptr %i.x, align 2
  store i16 %i.y, ptr %i.t, align 1
  %i.z = udiv i32 %.01819.i.i, 100                ; 2 uses
  %i.aa = icmp ugt i32 %.01819.i.i, 9999
  br i1 %i.aa, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !10

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.c
  %.018.lcssa.i.i = phi i32 [ %spec.select.i, %bb.c ], [ %i.z, %.lr.ph.i.i ] ; 3 uses
  %.0.lcssa.i.i = phi i32 [ %i.m, %bb.c ], [ %i.r, %.lr.ph.i.i ] ; 2 uses
  %i.ab = icmp samesign ugt i32 %.018.lcssa.i.i, 9
  br i1 %i.ab, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.ac = add i32 %.0.lcssa.i.i, -2
  %i.ad = zext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %.018.i, i64 %i.ad
  %i.af = shl nuw nsw i32 %.018.lcssa.i.i, 1
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.ag
  %i.ai = load i16, ptr %i.ah, align 2
  store i16 %i.ai, ptr %i.ae, align 1
  br label %_ZN3fmt3v126detail5writeIcPciTnNSt9enable_ifIXaaaasr11is_integralIT1_EE5valuentsr3std7is_sameIS5_bEE5valuentsr3std7is_sameIS5_T_EE5valueEiE4typeELi0EEET0_S9_S5_.exit

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.aj = trunc nuw nsw i32 %.018.lcssa.i.i to i8
  %i.ak = or disjoint i8 %i.aj, 48
  %i.al = add i32 %.0.lcssa.i.i, -1
  %i.am = zext i32 %i.al to i64
  %i.an = getelementptr inbounds nuw i8, ptr %.018.i, i64 %i.am
  store i8 %i.ak, ptr %i.an, align 1, !tbaa !135
  br label %_ZN3fmt3v126detail5writeIcPciTnNSt9enable_ifIXaaaasr11is_integralIT1_EE5valuentsr3std7is_sameIS5_bEE5valuentsr3std7is_sameIS5_T_EE5valueEiE4typeELi0EEET0_S9_S5_.exit

_ZN3fmt3v126detail5writeIcPciTnNSt9enable_ifIXaaaasr11is_integralIT1_EE5valuentsr3std7is_sameIS5_bEE5valuentsr3std7is_sameIS5_T_EE5valueEiE4typeELi0EEET0_S9_S5_.exit: ; preds = %bb.d, %bb.e
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.ao, ptr %0, align 8, !tbaa !138
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %i.ap, align 8, !tbaa !139
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #39
  %i.aq = add nsw i64 %i.o, %i.n                  ; 4 uses
  store i64 %i.aq, ptr %i.a, align 8, !tbaa !169
  %i.ar = icmp ugt i64 %i.aq, 15
  br i1 %i.ar, label %.noexc.i, label %._crit_edge.i.i2

.noexc.i:                                         ; preds = %_ZN3fmt3v126detail5writeIcPciTnNSt9enable_ifIXaaaasr11is_integralIT1_EE5valuentsr3std7is_sameIS5_bEE5valuentsr3std7is_sameIS5_T_EE5valueEiE4typeELi0EEET0_S9_S5_.exit
  %i.as = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.as, ptr %0, align 8, !tbaa !134
  %i.at = load i64, ptr %i.a, align 8, !tbaa !169
  store i64 %i.at, ptr %i.ao, align 8, !tbaa !135
  br label %._crit_edge.i.i2

._crit_edge.i.i2:                                 ; preds = %.noexc.i, %_ZN3fmt3v126detail5writeIcPciTnNSt9enable_ifIXaaaasr11is_integralIT1_EE5valuentsr3std7is_sameIS5_bEE5valuentsr3std7is_sameIS5_T_EE5valueEiE4typeELi0EEET0_S9_S5_.exit
  %i.au = phi ptr [ %i.as, %.noexc.i ], [ %i.ao, %_ZN3fmt3v126detail5writeIcPciTnNSt9enable_ifIXaaaasr11is_integralIT1_EE5valuentsr3std7is_sameIS5_bEE5valuentsr3std7is_sameIS5_T_EE5valueEiE4typeELi0EEET0_S9_S5_.exit ] ; 2 uses
  switch i64 %i.aq, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %bb.h
  ]

bb.f:                                             ; preds = %._crit_edge.i.i2
  %i.av = load i8, ptr %i.b, align 1, !tbaa !135
  store i8 %i.av, ptr %i.au, align 1, !tbaa !135
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i2
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.au, ptr nonnull align 1 %i.b, i64 %i.aq, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %._crit_edge.i.i2
  %i.aw = load i64, ptr %i.a, align 8, !tbaa !169 ; 2 uses
  store i64 %i.aw, ptr %i.ap, align 8, !tbaa !139
  %i.ax = load ptr, ptr %0, align 8, !tbaa !134
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.aw
  store i8 0, ptr %i.ay, align 1, !tbaa !135
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #39
  ret void
}

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264), ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #14

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(216)) unnamed_addr #14

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN11OpenImageIO4v3_14pugi4impl11node_outputERNS2_19xml_buffered_writerEPNS1_15xml_node_structEPKcjj(ptr noundef nonnull align 8 dereferenceable(10260) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #1 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 6 uses
  %i.b = and i32 %3, 65
  %.not = icmp ne i32 %i.b, 0
  %i.c = and i32 %3, 4
  %i.d = icmp eq i32 %i.c, 0                      ; 4 uses
  %or.cond81 = and i1 %.not, %i.d
  br i1 %or.cond81, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #43
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.f = phi i64 [ %i.e, %bb.b ], [ 0, %bb.a ]    ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 10248 ; 17 uses
  %i.h = icmp ne i64 %i.f, 0                      ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 10256 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 2048 ; 53 uses
  %i.k = ptrtoint ptr %i.j to i64                 ; 10 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 10240 ; 9 uses
  %invariant.op = sub i64 -2052, %i.a
  %invariant.op423 = sub i64 -2050, %i.a
  %invariant.op425 = sub i64 -2052, %i.a
  %invariant.op427 = sub i64 -2050, %i.a
  %invariant.op429 = sub i64 -2052, %i.a
  %invariant.op431 = sub i64 -2050, %i.a
  br label %bb.d

bb.d:                                             ; preds = %.loopexit, %bb.c
  %.062 = phi i32 [ %4, %bb.c ], [ %.365, %.loopexit ] ; 6 uses
  %.059 = phi i32 [ 2, %bb.c ], [ %.5, %.loopexit ] ; 2 uses
  %.0 = phi ptr [ %1, %bb.c ], [ %.2, %.loopexit ] ; 10 uses
  %i.m = load i64, ptr %.0, align 8, !tbaa !212
  %i.n = trunc i64 %i.m to i32
  %i.o = and i32 %i.n, 15
  %.off = add nsw i32 %i.o, -3
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %.sink.split, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not72 = trunc i32 %.059 to i1
  %or.cond83 = and i1 %i.d, %.not72
  br i1 %or.cond83, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.p = load i64, ptr %i.g, align 8, !tbaa !236  ; 3 uses
  %i.q = icmp ugt i64 %i.p, 2047
  br i1 %i.q, label %bb.g, label %_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5writeEc.exit

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5flushEPKcm(ptr noundef nonnull align 8 dereferenceable(10260) %0, ptr noundef nonnull align 8 dereferenceable(10260) %0, i64 noundef %i.p)
  br label %_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5writeEc.exit

_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5writeEc.exit: ; preds = %bb.f, %bb.g
  %.0.i = phi i64 [ 0, %bb.g ], [ %i.p, %bb.f ]   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 %.0.i
  store i8 10, ptr %i.r, align 1, !tbaa !135
  %i.s = add nuw nsw i64 %.0.i, 1
  store i64 %i.s, ptr %i.g, align 8, !tbaa !236
  br label %bb.h

bb.h:                                             ; preds = %_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5writeEc.exit, %bb.e
  %i.t = and i32 %.059, 2
  %i.u = icmp ne i32 %i.t, 0
  %or.cond = and i1 %i.h, %i.u
  br i1 %or.cond, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN11OpenImageIO4v3_14pugi4impl18text_output_indentERNS2_19xml_buffered_writerEPKcmj(ptr noundef nonnull align 8 dereferenceable(10260) %0, ptr noundef %2, i64 noundef %i.f, i32 noundef %.062)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.v = load i64, ptr %.0, align 8, !tbaa !212
  %i.w = trunc i64 %i.v to i32
  %i.x = and i32 %i.w, 15
  switch i32 %i.x, label %.sink.split [
    i32 2, label %bb.k
    i32 1, label %bb.m
  ]

bb.k:                                             ; preds = %bb.j
  %i.y = tail call noundef zeroext i1 @_ZN11OpenImageIO4v3_14pugi4impl17node_output_startERNS2_19xml_buffered_writerEPNS1_15xml_node_structEPKcmjj(ptr noundef nonnull align 8 dereferenceable(10260) %0, ptr noundef nonnull %.0, ptr noundef %2, i64 noundef %i.f, i32 noundef %3, i32 noundef %.062)
  br i1 %i.y, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.z = getelementptr inbounds nuw i8, ptr %.0, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !254
  %.not74 = icmp eq ptr %i.aa, null
  %spec.select = select i1 %.not74, i32 3, i32 0
  %i.ab = getelementptr inbounds nuw i8, ptr %.0, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !223
  %i.ad = add i32 %.062, 1
  br label %.loopexit

bb.m:                                             ; preds = %bb.j
  %i.ae = getelementptr inbounds nuw i8, ptr %.0, i64 32
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !223 ; 2 uses
  %.not73 = icmp eq ptr %i.af, null
  br i1 %.not73, label %bb.n, label %.loopexit

.sink.split:                                      ; preds = %bb.j, %bb.d
  %.261.ph = phi i32 [ 0, %bb.d ], [ 3, %bb.j ]
  tail call void @_ZN11OpenImageIO4v3_14pugi4impl18node_output_simpleERNS2_19xml_buffered_writerEPNS1_15xml_node_structEj(ptr noundef nonnull align 8 dereferenceable(10260) %0, ptr noundef nonnull %.0, i32 noundef %3)
  br label %bb.n

bb.n:                                             ; preds = %.sink.split, %bb.k, %bb.m
  %.261 = phi i32 [ 2, %bb.m ], [ 3, %bb.k ], [ %.261.ph, %.sink.split ] ; 2 uses
  %.not75194 = icmp eq ptr %.0, %1
  br i1 %.not75194, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.n, %bb.ch
  %.1197 = phi ptr [ %i.aj, %bb.ch ], [ %.0, %bb.n ] ; 2 uses
  %.3196 = phi i32 [ %.4, %bb.ch ], [ %.261, %bb.n ] ; 4 uses
  %.163195 = phi i32 [ %.264, %bb.ch ], [ %.062, %bb.n ] ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.1197, i64 48
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !224 ; 2 uses
  %.not76 = icmp eq ptr %i.ah, null
  br i1 %.not76, label %bb.o, label %.loopexit

bb.o:                                             ; preds = %.lr.ph
  %i.ai = getelementptr inbounds nuw i8, ptr %.1197, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !222 ; 5 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !212
  %i.al = and i64 %i.ak, 15
  %i.am = icmp eq i64 %i.al, 2
  br i1 %i.am, label %bb.p, label %bb.ch

bb.p:                                             ; preds = %bb.o
  %i.an = add i32 %.163195, -1                    ; 2 uses
  %.not77 = trunc i32 %.3196 to i1
  %or.cond85 = and i1 %i.d, %.not77
  br i1 %or.cond85, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.ao = load i64, ptr %i.g, align 8, !tbaa !236 ; 3 uses
  %i.ap = icmp ugt i64 %i.ao, 2047
  br i1 %i.ap, label %bb.r, label %_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5writeEc.exit89

bb.r:                                             ; preds = %bb.q
  tail call void @_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5flushEPKcm(ptr noundef nonnull align 8 dereferenceable(10260) %0, ptr noundef nonnull align 8 dereferenceable(10260) %0, i64 noundef %i.ao)
  br label %_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5writeEc.exit89

_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5writeEc.exit89: ; preds = %bb.q, %bb.r
  %.0.i88 = phi i64 [ 0, %bb.r ], [ %i.ao, %bb.q ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 %.0.i88
  store i8 10, ptr %i.aq, align 1, !tbaa !135
  %i.ar = add nuw nsw i64 %.0.i88, 1
  store i64 %i.ar, ptr %i.g, align 8, !tbaa !236
  br label %bb.s

bb.s:                                             ; preds = %_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5writeEc.exit89, %bb.p
  %i.as = and i32 %.3196, 2
  %i.at = icmp ne i32 %i.as, 0
  %or.cond3 = and i1 %i.h, %i.at
  br i1 %or.cond3, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  tail call void @_ZN11OpenImageIO4v3_14pugi4impl18text_output_indentERNS2_19xml_buffered_writerEPKcmj(ptr noundef nonnull align 8 dereferenceable(10260) %0, ptr noundef %2, i64 noundef %i.f, i32 noundef %i.an)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.au = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !226 ; 2 uses
  %.not.i = icmp eq ptr %i.av, null
  %.str.281..i = select i1 %.not.i, ptr @.str.281, ptr %i.av ; 3 uses
  %i.aw = load i64, ptr %i.g, align 8, !tbaa !236 ; 6 uses
  %i.ax = icmp ugt i64 %i.aw, 2046
  br i1 %i.ax, label %bb.v, label %_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5writeEcc.exit.i

bb.v:                                             ; preds = %bb.u
  %i.ay = load i32, ptr %i.i, align 8, !tbaa !237 ; 6 uses
  %i.az = icmp eq i32 %i.ay, 1
  br i1 %i.az, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ba = load ptr, ptr %i.l, align 8, !tbaa !401, !nonnull !192, !align !308 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !177
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8
  tail call void %i.bd(ptr noundef nonnull align 8 dereferenceable(8) %i.ba, ptr noundef nonnull align 8 dereferenceable(10260) %0, i64 noundef %i.aw), !inline_history !402
  br label %_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5writeEcc.exit.i

bb.x:                                             ; preds = %bb.v
  %i.be = and i32 %i.ay, -2
  %or.cond.i.i94 = icmp eq i32 %i.be, 2
  br i1 %or.cond.i.i94, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.bf = icmp ne i32 %i.ay, 2
  %i.bg = tail call noundef ptr @_ZN11OpenImageIO4v3_14pugi4impl12utf8_decoder7processINS2_12utf16_writerEEENT_10value_typeEPKhmS7_S6_(ptr noundef nonnull align 8 dereferenceable(10260) %0, i64 noundef %i.aw, ptr noundef nonnull %i.j) ; 4 uses
  %.not11.i.i.i104 = icmp ne ptr %i.j, %i.bg
  %or.cond.not.i.i.i105 = and i1 %i.bf, %.not11.i.i.i104
  br i1 %or.cond.not.i.i.i105, label %iter.check382, label %_ZN11OpenImageIO4v3_14pugi4impl29convert_buffer_output_genericINS2_12utf8_decoderENS2_12utf16_writerEEEmNT0_10value_typeEPKcmT_S6_b.exit.i.i106

iter.check382:                                    ; preds = %bb.y
  %i.bh = ptrtoaddr ptr %i.bg to i64
  %.reass424 = add i64 %i.bh, %invariant.op423    ; 3 uses
  %i.bi = lshr i64 %.reass424, 1
  %i.bj = add nuw i64 %i.bi, 1                    ; 5 uses
  %min.iters.check367 = icmp ult i64 %.reass424, 14
  br i1 %min.iters.check367, label %.lr.ph.i.i.i107.preheader, label %vector.main.loop.iter.check368

vector.main.loop.iter.check368:                   ; preds = %iter.check382
  %min.iters.check369 = icmp ult i64 %.reass424, 30
  br i1 %min.iters.check369, label %vec.epilog.ph386, label %vector.ph370

vector.ph370:                                     ; preds = %vector.main.loop.iter.check368
  %i.bk = and i64 %i.bj, 8
  %n.vec371 = and i64 %i.bj, -16                  ; 4 uses
  %i.bl = shl i64 %n.vec371, 1
  %i.bm = getelementptr i8, ptr %i.j, i64 %i.bl
  br label %vector.body372

vector.body372:                                   ; preds = %vector.ph370, %vector.body372
  %index373 = phi i64 [ 0, %vector.ph370 ], [ %index.next377, %vector.body372 ] ; 2 uses
  %i.bn = shl i64 %index373, 1
  %next.gep374 = getelementptr i8, ptr %i.j, i64 %i.bn ; 3 uses
  %i.bo = getelementptr i8, ptr %next.gep374, i64 16 ; 2 uses
  %wide.load375 = load <8 x i16>, ptr %next.gep374, align 8, !tbaa !403
  %wide.load376 = load <8 x i16>, ptr %i.bo, align 8, !tbaa !403
  %i.bp = tail call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %wide.load375)
  %i.bq = tail call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %wide.load376)
  store <8 x i16> %i.bp, ptr %next.gep374, align 8, !tbaa !403
  store <8 x i16> %i.bq, ptr %i.bo, align 8, !tbaa !403
  %index.next377 = add nuw i64 %index373, 16      ; 2 uses
  %i.br = icmp eq i64 %index.next377, %n.vec371
  br i1 %i.br, label %middle.block378, label %vector.body372, !llvm.loop !1321

middle.block378:                                  ; preds = %vector.body372
  %cmp.n379 = icmp eq i64 %i.bj, %n.vec371
  br i1 %cmp.n379, label %_ZN11OpenImageIO4v3_14pugi4impl29convert_buffer_output_genericINS2_12utf8_decoderENS2_12utf16_writerEEEmNT0_10value_typeEPKcmT_S6_b.exit.i.i106, label %vec.epilog.iter.check384

vec.epilog.iter.check384:                         ; preds = %middle.block378
  %min.epilog.iters.check385.not.not = icmp eq i64 %i.bk, 0
  br i1 %min.epilog.iters.check385.not.not, label %.lr.ph.i.i.i107.preheader, label %vec.epilog.ph386, !prof !404

vec.epilog.ph386:                                 ; preds = %vector.main.loop.iter.check368, %vec.epilog.iter.check384
  %vec.epilog.resume.val380 = phi i64 [ %n.vec371, %vec.epilog.iter.check384 ], [ 0, %vector.main.loop.iter.check368 ]
  %n.vec387 = and i64 %i.bj, -8                   ; 3 uses
  %i.bs = shl i64 %n.vec387, 1
  %i.bt = getelementptr i8, ptr %i.j, i64 %i.bs
  br label %vec.epilog.vector.body388

vec.epilog.vector.body388:                        ; preds = %vec.epilog.vector.body388, %vec.epilog.ph386
  %index389 = phi i64 [ %vec.epilog.resume.val380, %vec.epilog.ph386 ], [ %index.next392, %vec.epilog.vector.body388 ] ; 2 uses
  %i.bu = shl i64 %index389, 1
  %next.gep390 = getelementptr i8, ptr %i.j, i64 %i.bu ; 2 uses
  %wide.load391 = load <8 x i16>, ptr %next.gep390, align 8, !tbaa !403
  %i.bv = tail call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %wide.load391)
  store <8 x i16> %i.bv, ptr %next.gep390, align 8, !tbaa !403
  %index.next392 = add nuw i64 %index389, 8       ; 2 uses
  %i.bw = icmp eq i64 %index.next392, %n.vec387
  br i1 %i.bw, label %vec.epilog.middle.block393, label %vec.epilog.vector.body388, !llvm.loop !1322

vec.epilog.middle.block393:                       ; preds = %vec.epilog.vector.body388
  %cmp.n394 = icmp eq i64 %i.bj, %n.vec387
  br i1 %cmp.n394, label %_ZN11OpenImageIO4v3_14pugi4impl29convert_buffer_output_genericINS2_12utf8_decoderENS2_12utf16_writerEEEmNT0_10value_typeEPKcmT_S6_b.exit.i.i106, label %.lr.ph.i.i.i107.preheader

.lr.ph.i.i.i107.preheader:                        ; preds = %iter.check382, %vec.epilog.iter.check384, %vec.epilog.middle.block393
  %.012.i.i.i108.ph = phi ptr [ %i.j, %iter.check382 ], [ %i.bm, %vec.epilog.iter.check384 ], [ %i.bt, %vec.epilog.middle.block393 ]
  br label %.lr.ph.i.i.i107

.lr.ph.i.i.i107:                                  ; preds = %.lr.ph.i.i.i107.preheader, %.lr.ph.i.i.i107
  %.012.i.i.i108 = phi ptr [ %i.by, %.lr.ph.i.i.i107 ], [ %.012.i.i.i108.ph, %.lr.ph.i.i.i107.preheader ] ; 3 uses
  %i.bx = load i16, ptr %.012.i.i.i108, align 2, !tbaa !403
  %rev.i.i.i.i109 = tail call noundef i16 @llvm.bswap.i16(i16 %i.bx)
  store i16 %rev.i.i.i.i109, ptr %.012.i.i.i108, align 2, !tbaa !403
  %i.by = getelementptr inbounds nuw i8, ptr %.012.i.i.i108, i64 2 ; 2 uses
  %.not.i.i.i110 = icmp eq ptr %i.by, %i.bg
  br i1 %.not.i.i.i110, label %_ZN11OpenImageIO4v3_14pugi4impl29convert_buffer_output_genericINS2_12utf8_decoderENS2_12utf16_writerEEEmNT0_10value_typeEPKcmT_S6_b.exit.i.i106, label %.lr.ph.i.i.i107, !llvm.loop !1323

_ZN11OpenImageIO4v3_14pugi4impl29convert_buffer_output_genericINS2_12utf8_decoderENS2_12utf16_writerEEEmNT0_10value_typeEPKcmT_S6_b.exit.i.i106: ; preds = %.lr.ph.i.i.i107, %middle.block378, %vec.epilog.middle.block393, %bb.y
  %i.bz = ptrtoint ptr %i.bg to i64
  %i.ca = sub i64 %i.bz, %i.k
  br label %_ZN11OpenImageIO4v3_14pugi4impl21convert_buffer_outputEPcPhPtPjPKcmNS1_12xml_encodingE.exit.i96

bb.z:                                             ; preds = %bb.x
  %i.cb = add i32 %i.ay, -5
  %or.cond3.i.i95 = icmp ult i32 %i.cb, 2
  br i1 %or.cond3.i.i95, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.cc = icmp ne i32 %i.ay, 5
  %i.cd = tail call noundef ptr @_ZN11OpenImageIO4v3_14pugi4impl12utf8_decoder7processINS2_12utf32_writerEEENT_10value_typeEPKhmS7_S6_(ptr noundef nonnull align 8 dereferenceable(10260) %0, i64 noundef %i.aw, ptr noundef nonnull %i.j) ; 4 uses
  %.not11.i22.i.i98 = icmp ne ptr %i.j, %i.cd
  %or.cond.not.i23.i.i99 = and i1 %i.cc, %.not11.i22.i.i98
  br i1 %or.cond.not.i23.i.i99, label %.lr.ph.i24.i.i101.preheader, label %_ZN11OpenImageIO4v3_14pugi4impl29convert_buffer_output_genericINS2_12utf8_decoderENS2_12utf32_writerEEEmNT0_10value_typeEPKcmT_S6_b.exit.i.i100

.lr.ph.i24.i.i101.preheader:                      ; preds = %bb.aa
  %i.ce = ptrtoaddr ptr %i.cd to i64
  %.reass = add i64 %i.ce, %invariant.op          ; 2 uses
  %i.cf = lshr i64 %.reass, 2
  %i.cg = add nuw nsw i64 %i.cf, 1                ; 2 uses
  %min.iters.check397 = icmp ult i64 %.reass, 28
  br i1 %min.iters.check397, label %.lr.ph.i24.i.i101.preheader414, label %vector.ph398

vector.ph398:                                     ; preds = %.lr.ph.i24.i.i101.preheader
  %n.vec399 = and i64 %i.cg, 9223372036854775800  ; 3 uses
  %i.ch = shl i64 %n.vec399, 2
  %i.ci = getelementptr i8, ptr %i.j, i64 %i.ch
  br label %vector.body400

vector.body400:                                   ; preds = %vector.body400, %vector.ph398
  %index401 = phi i64 [ 0, %vector.ph398 ], [ %index.next405, %vector.body400 ] ; 2 uses
  %i.cj = shl i64 %index401, 2
  %next.gep402 = getelementptr i8, ptr %i.j, i64 %i.cj ; 3 uses
  %i.ck = getelementptr i8, ptr %next.gep402, i64 16 ; 2 uses
  %wide.load403 = load <4 x i32>, ptr %next.gep402, align 8, !tbaa !81
  %wide.load404 = load <4 x i32>, ptr %i.ck, align 8, !tbaa !81
  %i.cl = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load403)
  %i.cm = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load404)
  store <4 x i32> %i.cl, ptr %next.gep402, align 8, !tbaa !81
  store <4 x i32> %i.cm, ptr %i.ck, align 8, !tbaa !81
  %index.next405 = add nuw i64 %index401, 8       ; 2 uses
  %i.cn = icmp eq i64 %index.next405, %n.vec399
  br i1 %i.cn, label %middle.block406, label %vector.body400, !llvm.loop !1324

middle.block406:                                  ; preds = %vector.body400
  %cmp.n407 = icmp eq i64 %i.cg, %n.vec399
  br i1 %cmp.n407, label %_ZN11OpenImageIO4v3_14pugi4impl29convert_buffer_output_genericINS2_12utf8_decoderENS2_12utf32_writerEEEmNT0_10value_typeEPKcmT_S6_b.exit.i.i100, label %.lr.ph.i24.i.i101.preheader414

.lr.ph.i24.i.i101.preheader414:                   ; preds = %.lr.ph.i24.i.i101.preheader, %middle.block406
end_hunk_1
begin_hunk_2_@_ZN11OpenImageIO4v3_14pugi4impl11node_outputERNS2_19xml_buffered_writerEPNS1_15xml_node_structEPKcjj:bb.a
  br i1 %i.ra, label %bb.bz, label %_ZN11OpenImageIO4v3_14pugi4impl15node_output_endERNS2_19xml_buffered_writerEPNS1_15xml_node_structE.exit

bb.bz:                                            ; preds = %_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer12write_stringEPKc.exit
  %i.rb = load i32, ptr %i.i, align 8, !tbaa !237 ; 6 uses
  %i.rc = icmp eq i32 %i.rb, 1
  br i1 %i.rc, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.rd = load ptr, ptr %i.l, align 8, !tbaa !401, !nonnull !192, !align !308 ; 2 uses
  %i.re = load ptr, ptr %i.rd, align 8, !tbaa !177
  %i.rf = getelementptr inbounds nuw i8, ptr %i.re, i64 16
  %i.rg = load ptr, ptr %i.rf, align 8
  tail call void %i.rg(ptr noundef nonnull align 8 dereferenceable(8) %i.rd, ptr noundef nonnull align 8 dereferenceable(10260) %0, i64 noundef %i.qz), !inline_history !402
  br label %_ZN11OpenImageIO4v3_14pugi4impl15node_output_endERNS2_19xml_buffered_writerEPNS1_15xml_node_structE.exit

bb.cb:                                            ; preds = %bb.bz
  %i.rh = and i32 %i.rb, -2
  %or.cond.i.i = icmp eq i32 %i.rh, 2
  br i1 %or.cond.i.i, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.ri = icmp ne i32 %i.rb, 2
  %i.rj = tail call noundef ptr @_ZN11OpenImageIO4v3_14pugi4impl12utf8_decoder7processINS2_12utf16_writerEEENT_10value_typeEPKhmS7_S6_(ptr noundef nonnull align 8 dereferenceable(10260) %0, i64 noundef %i.qz, ptr noundef nonnull %i.j) ; 4 uses
  %.not11.i.i.i = icmp ne ptr %i.j, %i.rj
  %or.cond.not.i.i.i = and i1 %i.ri, %.not11.i.i.i
  br i1 %or.cond.not.i.i.i, label %iter.check, label %_ZN11OpenImageIO4v3_14pugi4impl29convert_buffer_output_genericINS2_12utf8_decoderENS2_12utf16_writerEEEmNT0_10value_typeEPKcmT_S6_b.exit.i.i

iter.check:                                       ; preds = %bb.cc
  %i.rk = ptrtoaddr ptr %i.rj to i64
  %.reass432 = add i64 %i.rk, %invariant.op431    ; 3 uses
  %i.rl = lshr i64 %.reass432, 1
  %i.rm = add nuw i64 %i.rl, 1                    ; 5 uses
  %min.iters.check = icmp ult i64 %.reass432, 14
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check260 = icmp ult i64 %.reass432, 30
  br i1 %min.iters.check260, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.rn = and i64 %i.rm, 8
  %n.vec = and i64 %i.rm, -16                     ; 4 uses
  %i.ro = shl i64 %n.vec, 1
  %i.rp = getelementptr i8, ptr %i.j, i64 %i.ro
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.rq = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %i.j, i64 %i.rq ; 3 uses
  %i.rr = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load = load <8 x i16>, ptr %next.gep, align 8, !tbaa !403
  %wide.load261 = load <8 x i16>, ptr %i.rr, align 8, !tbaa !403
  %i.rs = tail call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %wide.load)
  %i.rt = tail call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %wide.load261)
  store <8 x i16> %i.rs, ptr %next.gep, align 8, !tbaa !403
  store <8 x i16> %i.rt, ptr %i.rr, align 8, !tbaa !403
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ru = icmp eq i64 %index.next, %n.vec
  br i1 %i.ru, label %middle.block, label %vector.body, !llvm.loop !1337

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.rm, %n.vec
  br i1 %cmp.n, label %_ZN11OpenImageIO4v3_14pugi4impl29convert_buffer_output_genericINS2_12utf8_decoderENS2_12utf16_writerEEEmNT0_10value_typeEPKcmT_S6_b.exit.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check.not.not = icmp eq i64 %i.rn, 0
  br i1 %min.epilog.iters.check.not.not, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !404

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec262 = and i64 %i.rm, -8                   ; 3 uses
  %i.rv = shl i64 %n.vec262, 1
  %i.rw = getelementptr i8, ptr %i.j, i64 %i.rv
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index263 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next266, %vec.epilog.vector.body ] ; 2 uses
  %i.rx = shl i64 %index263, 1
  %next.gep264 = getelementptr i8, ptr %i.j, i64 %i.rx ; 2 uses
  %wide.load265 = load <8 x i16>, ptr %next.gep264, align 8, !tbaa !403
  %i.ry = tail call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %wide.load265)
  store <8 x i16> %i.ry, ptr %next.gep264, align 8, !tbaa !403
  %index.next266 = add nuw i64 %index263, 8       ; 2 uses
  %i.rz = icmp eq i64 %index.next266, %n.vec262
  br i1 %i.rz, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1338

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n267 = icmp eq i64 %i.rm, %n.vec262
  br i1 %cmp.n267, label %_ZN11OpenImageIO4v3_14pugi4impl29convert_buffer_output_genericINS2_12utf8_decoderENS2_12utf16_writerEEEmNT0_10value_typeEPKcmT_S6_b.exit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.i.i.ph = phi ptr [ %i.j, %iter.check ], [ %i.rp, %vec.epilog.iter.check ], [ %i.rw, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.sb, %.lr.ph.i.i.i ], [ %.012.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %i.sa = load i16, ptr %.012.i.i.i, align 2, !tbaa !403
  %rev.i.i.i.i = tail call noundef i16 @llvm.bswap.i16(i16 %i.sa)
  store i16 %rev.i.i.i.i, ptr %.012.i.i.i, align 2, !tbaa !403
  %i.sb = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 2 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.sb, %i.rj
  br i1 %.not.i.i.i, label %_ZN11OpenImageIO4v3_14pugi4impl29convert_buffer_output_genericINS2_12utf8_decoderENS2_12utf16_writerEEEmNT0_10value_typeEPKcmT_S6_b.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !1339

_ZN11OpenImageIO4v3_14pugi4impl29convert_buffer_output_genericINS2_12utf8_decoderENS2_12utf16_writerEEEmNT0_10value_typeEPKcmT_S6_b.exit.i.i: ; preds = %.lr.ph.i.i.i, %middle.block, %vec.epilog.middle.block, %bb.cc
  %i.sc = ptrtoint ptr %i.rj to i64
  %i.sd = sub i64 %i.sc, %i.k
  br label %_ZN11OpenImageIO4v3_14pugi4impl21convert_buffer_outputEPcPhPtPjPKcmNS1_12xml_encodingE.exit.i

bb.cd:                                            ; preds = %bb.cb
  %i.se = add i32 %i.rb, -5
  %or.cond3.i.i = icmp ult i32 %i.se, 2
  br i1 %or.cond3.i.i, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %i.sf = icmp ne i32 %i.rb, 5
  %i.sg = tail call noundef ptr @_ZN11OpenImageIO4v3_14pugi4impl12utf8_decoder7processINS2_12utf32_writerEEENT_10value_typeEPKhmS7_S6_(ptr noundef nonnull align 8 dereferenceable(10260) %0, i64 noundef %i.qz, ptr noundef nonnull %i.j) ; 4 uses
  %.not11.i22.i.i = icmp ne ptr %i.j, %i.sg
  %or.cond.not.i23.i.i = and i1 %i.sf, %.not11.i22.i.i
  br i1 %or.cond.not.i23.i.i, label %.lr.ph.i24.i.i.preheader, label %_ZN11OpenImageIO4v3_14pugi4impl29convert_buffer_output_genericINS2_12utf8_decoderENS2_12utf32_writerEEEmNT0_10value_typeEPKcmT_S6_b.exit.i.i

.lr.ph.i24.i.i.preheader:                         ; preds = %bb.ce
  %i.sh = ptrtoaddr ptr %i.sg to i64
  %.reass430 = add i64 %i.sh, %invariant.op429    ; 2 uses
  %i.si = lshr i64 %.reass430, 2
  %i.sj = add nuw nsw i64 %i.si, 1                ; 2 uses
  %min.iters.check269 = icmp ult i64 %.reass430, 28
  br i1 %min.iters.check269, label %.lr.ph.i24.i.i.preheader412, label %vector.ph270

vector.ph270:                                     ; preds = %.lr.ph.i24.i.i.preheader
  %n.vec271 = and i64 %i.sj, 9223372036854775800  ; 3 uses
  %i.sk = shl i64 %n.vec271, 2
  %i.sl = getelementptr i8, ptr %i.j, i64 %i.sk
  br label %vector.body272

vector.body272:                                   ; preds = %vector.body272, %vector.ph270
  %index273 = phi i64 [ 0, %vector.ph270 ], [ %index.next277, %vector.body272 ] ; 2 uses
  %i.sm = shl i64 %index273, 2
  %next.gep274 = getelementptr i8, ptr %i.j, i64 %i.sm ; 3 uses
  %i.sn = getelementptr i8, ptr %next.gep274, i64 16 ; 2 uses
  %wide.load275 = load <4 x i32>, ptr %next.gep274, align 8, !tbaa !81
  %wide.load276 = load <4 x i32>, ptr %i.sn, align 8, !tbaa !81
  %i.so = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load275)
  %i.sp = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load276)
  store <4 x i32> %i.so, ptr %next.gep274, align 8, !tbaa !81
  store <4 x i32> %i.sp, ptr %i.sn, align 8, !tbaa !81
  %index.next277 = add nuw i64 %index273, 8       ; 2 uses
  %i.sq = icmp eq i64 %index.next277, %n.vec271
  br i1 %i.sq, label %middle.block278, label %vector.body272, !llvm.loop !1340

middle.block278:                                  ; preds = %vector.body272
  %cmp.n279 = icmp eq i64 %i.sj, %n.vec271
  br i1 %cmp.n279, label %_ZN11OpenImageIO4v3_14pugi4impl29convert_buffer_output_genericINS2_12utf8_decoderENS2_12utf32_writerEEEmNT0_10value_typeEPKcmT_S6_b.exit.i.i, label %.lr.ph.i24.i.i.preheader412

.lr.ph.i24.i.i.preheader412:                      ; preds = %.lr.ph.i24.i.i.preheader, %middle.block278
  %.012.i25.i.i.ph = phi ptr [ %i.j, %.lr.ph.i24.i.i.preheader ], [ %i.sl, %middle.block278 ]
  br label %.lr.ph.i24.i.i

.lr.ph.i24.i.i:                                   ; preds = %.lr.ph.i24.i.i.preheader412, %.lr.ph.i24.i.i
  %.012.i25.i.i = phi ptr [ %i.st, %.lr.ph.i24.i.i ], [ %.012.i25.i.i.ph, %.lr.ph.i24.i.i.preheader412 ] ; 3 uses
  %i.sr = load i32, ptr %.012.i25.i.i, align 4, !tbaa !81
  %i.ss = tail call noundef i32 @llvm.bswap.i32(i32 %i.sr)
  store i32 %i.ss, ptr %.012.i25.i.i, align 4, !tbaa !81
  %i.st = getelementptr inbounds nuw i8, ptr %.012.i25.i.i, i64 4 ; 2 uses
  %.not.i26.i.i = icmp eq ptr %i.st, %i.sg
  br i1 %.not.i26.i.i, label %_ZN11OpenImageIO4v3_14pugi4impl29convert_buffer_output_genericINS2_12utf8_decoderENS2_12utf32_writerEEEmNT0_10value_typeEPKcmT_S6_b.exit.i.i, label %.lr.ph.i24.i.i, !llvm.loop !1341

_ZN11OpenImageIO4v3_14pugi4impl29convert_buffer_output_genericINS2_12utf8_decoderENS2_12utf32_writerEEEmNT0_10value_typeEPKcmT_S6_b.exit.i.i: ; preds = %.lr.ph.i24.i.i, %middle.block278, %bb.ce
  %i.su = ptrtoint ptr %i.sg to i64
  %i.sv = sub i64 %i.su, %i.k
  br label %_ZN11OpenImageIO4v3_14pugi4impl21convert_buffer_outputEPcPhPtPjPKcmNS1_12xml_encodingE.exit.i

bb.cf:                                            ; preds = %bb.cd
  %i.sw = icmp eq i32 %i.rb, 9
  br i1 %i.sw, label %bb.cg, label %_ZN11OpenImageIO4v3_14pugi4impl21convert_buffer_outputEPcPhPtPjPKcmNS1_12xml_encodingE.exit.i

bb.cg:                                            ; preds = %bb.cf
  %i.sx = tail call noundef ptr @_ZN11OpenImageIO4v3_14pugi4impl12utf8_decoder7processINS2_13latin1_writerEEENT_10value_typeEPKhmS7_S6_(ptr noundef nonnull align 8 dereferenceable(10260) %0, i64 noundef %i.qz, ptr noundef nonnull %i.j)
  %i.sy = ptrtoint ptr %i.sx to i64
  %i.sz = sub i64 %i.sy, %i.k
  br label %_ZN11OpenImageIO4v3_14pugi4impl21convert_buffer_outputEPcPhPtPjPKcmNS1_12xml_encodingE.exit.i

_ZN11OpenImageIO4v3_14pugi4impl21convert_buffer_outputEPcPhPtPjPKcmNS1_12xml_encodingE.exit.i: ; preds = %bb.cg, %bb.cf, %_ZN11OpenImageIO4v3_14pugi4impl29convert_buffer_output_genericINS2_12utf8_decoderENS2_12utf32_writerEEEmNT0_10value_typeEPKcmT_S6_b.exit.i.i, %_ZN11OpenImageIO4v3_14pugi4impl29convert_buffer_output_genericINS2_12utf8_decoderENS2_12utf16_writerEEEmNT0_10value_typeEPKcmT_S6_b.exit.i.i
  %.0.i.i92 = phi i64 [ %i.sd, %_ZN11OpenImageIO4v3_14pugi4impl29convert_buffer_output_genericINS2_12utf8_decoderENS2_12utf16_writerEEEmNT0_10value_typeEPKcmT_S6_b.exit.i.i ], [ %i.sv, %_ZN11OpenImageIO4v3_14pugi4impl29convert_buffer_output_genericINS2_12utf8_decoderENS2_12utf32_writerEEEmNT0_10value_typeEPKcmT_S6_b.exit.i.i ], [ %i.sz, %bb.cg ], [ 0, %bb.cf ]
  %i.ta = load ptr, ptr %i.l, align 8, !tbaa !401, !nonnull !192, !align !308 ; 2 uses
  %i.tb = load ptr, ptr %i.ta, align 8, !tbaa !177
  %i.tc = getelementptr inbounds nuw i8, ptr %i.tb, i64 16
  %i.td = load ptr, ptr %i.tc, align 8
  tail call void %i.td(ptr noundef nonnull align 8 dereferenceable(8) %i.ta, ptr noundef nonnull %i.j, i64 noundef %.0.i.i92), !inline_history !402
  br label %_ZN11OpenImageIO4v3_14pugi4impl15node_output_endERNS2_19xml_buffered_writerEPNS1_15xml_node_structE.exit

_ZN11OpenImageIO4v3_14pugi4impl15node_output_endERNS2_19xml_buffered_writerEPNS1_15xml_node_structE.exit: ; preds = %_ZN11OpenImageIO4v3_14pugi4impl21convert_buffer_outputEPcPhPtPjPKcmNS1_12xml_encodingE.exit.i, %bb.ca, %_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer12write_stringEPKc.exit
  %.0.i7.i = phi i64 [ %i.qz, %_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer12write_stringEPKc.exit ], [ 0, %bb.ca ], [ 0, %_ZN11OpenImageIO4v3_14pugi4impl21convert_buffer_outputEPcPhPtPjPKcmNS1_12xml_encodingE.exit.i ] ; 2 uses
  %i.te = getelementptr inbounds nuw i8, ptr %0, i64 %.0.i7.i
  store i8 62, ptr %i.te, align 1, !tbaa !135
  %i.tf = add nuw nsw i64 %.0.i7.i, 1
  store i64 %i.tf, ptr %i.g, align 8, !tbaa !236
  br label %bb.ch

bb.ch:                                            ; preds = %_ZN11OpenImageIO4v3_14pugi4impl15node_output_endERNS2_19xml_buffered_writerEPNS1_15xml_node_structE.exit, %bb.o
  %.264 = phi i32 [ %i.an, %_ZN11OpenImageIO4v3_14pugi4impl15node_output_endERNS2_19xml_buffered_writerEPNS1_15xml_node_structE.exit ], [ %.163195, %bb.o ] ; 2 uses
  %.4 = phi i32 [ 3, %_ZN11OpenImageIO4v3_14pugi4impl15node_output_endERNS2_19xml_buffered_writerEPNS1_15xml_node_structE.exit ], [ %.3196, %bb.o ] ; 2 uses
  %.not75 = icmp eq ptr %i.aj, %1
  br i1 %.not75, label %.loopexit, label %.lr.ph, !llvm.loop !1342

.loopexit:                                        ; preds = %bb.ch, %.lr.ph, %bb.n, %bb.m, %bb.l
  %.365 = phi i32 [ %.062, %bb.m ], [ %i.ad, %bb.l ], [ %.062, %bb.n ], [ %.264, %bb.ch ], [ %.163195, %.lr.ph ]
  %.5 = phi i32 [ 2, %bb.m ], [ %spec.select, %bb.l ], [ %.261, %bb.n ], [ %.4, %bb.ch ], [ %.3196, %.lr.ph ] ; 2 uses
  %.2 = phi ptr [ %i.af, %bb.m ], [ %i.ac, %bb.l ], [ %.0, %bb.n ], [ %i.aj, %bb.ch ], [ %i.ah, %.lr.ph ] ; 2 uses
  %.not78 = icmp eq ptr %.2, %1
  br i1 %.not78, label %bb.ci, label %bb.d, !llvm.loop !1343

bb.ci:                                            ; preds = %.loopexit
  %.not79 = trunc i32 %.5 to i1
  %or.cond87 = and i1 %i.d, %.not79
  br i1 %or.cond87, label %bb.cj, label %bb.cl

bb.cj:                                            ; preds = %bb.ci
  %i.tg = load i64, ptr %i.g, align 8, !tbaa !236 ; 3 uses
  %i.th = icmp ugt i64 %i.tg, 2047
  br i1 %i.th, label %bb.ck, label %_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5writeEc.exit91

bb.ck:                                            ; preds = %bb.cj
  tail call void @_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5flushEPKcm(ptr noundef nonnull align 8 dereferenceable(10260) %0, ptr noundef nonnull align 8 dereferenceable(10260) %0, i64 noundef %i.tg)
  br label %_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5writeEc.exit91

_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5writeEc.exit91: ; preds = %bb.cj, %bb.ck
  %.0.i90 = phi i64 [ 0, %bb.ck ], [ %i.tg, %bb.cj ] ; 2 uses
  %i.ti = getelementptr inbounds nuw i8, ptr %0, i64 %.0.i90
  store i8 10, ptr %i.ti, align 1, !tbaa !135
  %i.tj = add nuw nsw i64 %.0.i90, 1
  store i64 %i.tj, ptr %i.g, align 8, !tbaa !236
  br label %bb.cl

bb.cl:                                            ; preds = %_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5writeEc.exit91, %bb.ci
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN11OpenImageIO4v3_14pugi4impl18node_output_simpleERNS2_19xml_buffered_writerEPNS1_15xml_node_structEj(ptr noundef nonnull align 8 dereferenceable(10260) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !212
  %i.b = trunc i64 %i.a to i32
  %i.c = and i32 %i.b, 15
  switch i32 %i.c, label %_ZN11OpenImageIO4v3_14pugi4impl11text_outputERNS2_19xml_buffered_writerEPKcNS2_11chartypex_tEj.exit [
    i32 3, label %bb.b
    i32 4, label %bb.e
    i32 5, label %bb.f
    i32 6, label %bb.g
    i32 7, label %bb.m
    i32 8, label %bb.p
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !254  ; 2 uses
  %.not45 = icmp eq ptr %i.e, null
  %spec.select = select i1 %.not45, ptr @.str.48, ptr %i.e ; 2 uses
  %i.f = and i32 %2, 16
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer12write_stringEPKc(ptr noundef nonnull align 8 dereferenceable(10260) %0, ptr noundef nonnull %spec.select)
  br label %_ZN11OpenImageIO4v3_14pugi4impl11text_outputERNS2_19xml_buffered_writerEPKcNS2_11chartypex_tEj.exit

bb.d:                                             ; preds = %bb.b
  tail call void @_ZN11OpenImageIO4v3_14pugi4impl19text_output_escapedERNS2_19xml_buffered_writerEPKcNS2_11chartypex_tEj(ptr noundef nonnull align 8 dereferenceable(10260) %0, ptr noundef nonnull %spec.select, i32 noundef 1, i32 noundef %2)
  br label %_ZN11OpenImageIO4v3_14pugi4impl11text_outputERNS2_19xml_buffered_writerEPKcNS2_11chartypex_tEj.exit

bb.e:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !254  ; 2 uses
  %.not44 = icmp eq ptr %i.h, null
  %spec.select46 = select i1 %.not44, ptr @.str.48, ptr %i.h
  tail call void @_ZN11OpenImageIO4v3_14pugi4impl17text_output_cdataERNS2_19xml_buffered_writerEPKc(ptr noundef nonnull align 8 dereferenceable(10260) %0, ptr noundef nonnull %spec.select46)
  br label %_ZN11OpenImageIO4v3_14pugi4impl11text_outputERNS2_19xml_buffered_writerEPKcNS2_11chartypex_tEj.exit

bb.f:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !254  ; 2 uses
  %.not43 = icmp eq ptr %i.j, null
  %spec.select47 = select i1 %.not43, ptr @.str.48, ptr %i.j
  tail call void @_ZN11OpenImageIO4v3_14pugi4impl19node_output_commentERNS2_19xml_buffered_writerEPKc(ptr noundef nonnull align 8 dereferenceable(10260) %0, ptr noundef nonnull %spec.select47)
  br label %_ZN11OpenImageIO4v3_14pugi4impl11text_outputERNS2_19xml_buffered_writerEPKcNS2_11chartypex_tEj.exit

bb.g:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 10248 ; 6 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !236  ; 3 uses
  %i.m = icmp ugt i64 %i.l, 2046
  br i1 %i.m, label %bb.h, label %_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5writeEcc.exit

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5flushEPKcm(ptr noundef nonnull align 8 dereferenceable(10260) %0, ptr noundef nonnull align 8 dereferenceable(10260) %0, i64 noundef %i.l)
  br label %_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5writeEcc.exit

_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5writeEcc.exit: ; preds = %bb.g, %bb.h
  %.0.i = phi i64 [ 0, %bb.h ], [ %i.l, %bb.g ]   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %.0.i ; 2 uses
  store i8 60, ptr %i.n, align 1, !tbaa !135
  %i.o = getelementptr i8, ptr %i.n, i64 1
  store i8 63, ptr %i.o, align 1, !tbaa !135
  %i.p = add nuw nsw i64 %.0.i, 2
  store i64 %i.p, ptr %i.k, align 8, !tbaa !236
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !226  ; 2 uses
  %.not41 = icmp eq ptr %i.r, null
  %.str.281. = select i1 %.not41, ptr @.str.281, ptr %i.r
  tail call void @_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer12write_stringEPKc(ptr noundef nonnull align 8 dereferenceable(10260) %0, ptr noundef nonnull %.str.281.)
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !254
  %.not42 = icmp eq ptr %i.t, null
  br i1 %.not42, label %bb.k, label %bb.i

bb.i:                                             ; preds = %_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5writeEcc.exit
  %i.u = load i64, ptr %i.k, align 8, !tbaa !236  ; 3 uses
  %i.v = icmp ugt i64 %i.u, 2047
  br i1 %i.v, label %bb.j, label %_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5writeEc.exit

bb.j:                                             ; preds = %bb.i
  tail call void @_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5flushEPKcm(ptr noundef nonnull align 8 dereferenceable(10260) %0, ptr noundef nonnull align 8 dereferenceable(10260) %0, i64 noundef %i.u)
  br label %_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5writeEc.exit

_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5writeEc.exit: ; preds = %bb.i, %bb.j
  %.0.i49 = phi i64 [ 0, %bb.j ], [ %i.u, %bb.i ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 %.0.i49
  store i8 32, ptr %i.w, align 1, !tbaa !135
  %i.x = add nuw nsw i64 %.0.i49, 1
  store i64 %i.x, ptr %i.k, align 8, !tbaa !236
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !254
  tail call void @_ZN11OpenImageIO4v3_14pugi4impl20node_output_pi_valueERNS2_19xml_buffered_writerEPKc(ptr noundef nonnull align 8 dereferenceable(10260) %0, ptr noundef %i.y)
  br label %bb.k

bb.k:                                             ; preds = %_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5writeEc.exit, %_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5writeEcc.exit
  %i.z = load i64, ptr %i.k, align 8, !tbaa !236  ; 3 uses
  %i.aa = icmp ugt i64 %i.z, 2046
  br i1 %i.aa, label %bb.l, label %_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5writeEcc.exit51

bb.l:                                             ; preds = %bb.k
  tail call void @_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5flushEPKcm(ptr noundef nonnull align 8 dereferenceable(10260) %0, ptr noundef nonnull align 8 dereferenceable(10260) %0, i64 noundef %i.z)
  br label %_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5writeEcc.exit51

_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5writeEcc.exit51: ; preds = %bb.k, %bb.l
  %.0.i50 = phi i64 [ 0, %bb.l ], [ %i.z, %bb.k ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 %.0.i50 ; 2 uses
  store i8 63, ptr %i.ab, align 1, !tbaa !135
  %i.ac = getelementptr i8, ptr %i.ab, i64 1
  store i8 62, ptr %i.ac, align 1, !tbaa !135
  %i.ad = add nuw nsw i64 %.0.i50, 2
  store i64 %i.ad, ptr %i.k, align 8, !tbaa !236
  br label %_ZN11OpenImageIO4v3_14pugi4impl11text_outputERNS2_19xml_buffered_writerEPKcNS2_11chartypex_tEj.exit

bb.m:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 10248 ; 4 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !236 ; 3 uses
  %i.ag = icmp ugt i64 %i.af, 2046
  br i1 %i.ag, label %bb.n, label %_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5writeEcc.exit53

bb.n:                                             ; preds = %bb.m
  tail call void @_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5flushEPKcm(ptr noundef nonnull align 8 dereferenceable(10260) %0, ptr noundef nonnull align 8 dereferenceable(10260) %0, i64 noundef %i.af)
  br label %_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5writeEcc.exit53

_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5writeEcc.exit53: ; preds = %bb.m, %bb.n
  %.0.i52 = phi i64 [ 0, %bb.n ], [ %i.af, %bb.m ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 %.0.i52 ; 2 uses
  store i8 60, ptr %i.ah, align 1, !tbaa !135
  %i.ai = getelementptr i8, ptr %i.ah, i64 1
  store i8 63, ptr %i.ai, align 1, !tbaa !135
  %i.aj = add nuw nsw i64 %.0.i52, 2
  store i64 %i.aj, ptr %i.ae, align 8, !tbaa !236
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !226 ; 2 uses
  %.not40 = icmp eq ptr %i.al, null
  %.str.281.48 = select i1 %.not40, ptr @.str.281, ptr %i.al
  tail call void @_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer12write_stringEPKc(ptr noundef nonnull align 8 dereferenceable(10260) %0, ptr noundef nonnull %.str.281.48)
  %i.am = or i32 %2, 4
  tail call void @_ZN11OpenImageIO4v3_14pugi4impl22node_output_attributesERNS2_19xml_buffered_writerEPNS1_15xml_node_structEPKcmjj(ptr noundef nonnull align 8 dereferenceable(10260) %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.48, i64 noundef 0, i32 noundef %i.am, i32 noundef 0)
  %i.an = load i64, ptr %i.ae, align 8, !tbaa !236 ; 3 uses
  %i.ao = icmp ugt i64 %i.an, 2046
  br i1 %i.ao, label %bb.o, label %_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5writeEcc.exit55

bb.o:                                             ; preds = %_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5writeEcc.exit53
  tail call void @_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5flushEPKcm(ptr noundef nonnull align 8 dereferenceable(10260) %0, ptr noundef nonnull align 8 dereferenceable(10260) %0, i64 noundef %i.an)
  br label %_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5writeEcc.exit55

_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5writeEcc.exit55: ; preds = %_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5writeEcc.exit53, %bb.o
  %.0.i54 = phi i64 [ 0, %bb.o ], [ %i.an, %_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5writeEcc.exit53 ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 %.0.i54 ; 2 uses
  store i8 63, ptr %i.ap, align 1, !tbaa !135
  %i.aq = getelementptr i8, ptr %i.ap, i64 1
  store i8 62, ptr %i.aq, align 1, !tbaa !135
  %i.ar = add nuw nsw i64 %.0.i54, 2
  store i64 %i.ar, ptr %i.ae, align 8, !tbaa !236
  br label %_ZN11OpenImageIO4v3_14pugi4impl11text_outputERNS2_19xml_buffered_writerEPKcNS2_11chartypex_tEj.exit

bb.p:                                             ; preds = %bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 10248 ; 6 uses
  %i.at = load i64, ptr %i.as, align 8, !tbaa !236 ; 3 uses
  %i.au = icmp ugt i64 %i.at, 2043
  br i1 %i.au, label %bb.q, label %_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5writeEccccc.exit

bb.q:                                             ; preds = %bb.p
  tail call void @_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5flushEPKcm(ptr noundef nonnull align 8 dereferenceable(10260) %0, ptr noundef nonnull align 8 dereferenceable(10260) %0, i64 noundef %i.at)
  br label %_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5writeEccccc.exit

_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5writeEccccc.exit: ; preds = %bb.p, %bb.q
  %.0.i56 = phi i64 [ 0, %bb.q ], [ %i.at, %bb.p ] ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 %.0.i56 ; 2 uses
  store <4 x i8> <i8 60, i8 33, i8 68, i8 79>, ptr %i.av, align 1, !tbaa !135
  %i.aw = getelementptr i8, ptr %i.av, i64 4
  store i8 67, ptr %i.aw, align 1, !tbaa !135
  %i.ax = add nuw nsw i64 %.0.i56, 5              ; 3 uses
  store i64 %i.ax, ptr %i.as, align 8, !tbaa !236
  %i.ay = icmp samesign ugt i64 %.0.i56, 2039
end_hunk_2
