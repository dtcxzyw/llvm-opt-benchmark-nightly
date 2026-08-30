Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/spdlog/original/file_sinks?download=true
inline.NumInlined: 840
inline.NumDeleted: 351
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN3fmt3v126detail19parse_format_stringIcNS1_21format_string_checkerIcLi3ELi0ELb0EEEEEvNS0_17basic_string_viewIT_EEOT0_:bb.a
  %i.ag = load i32, ptr %i.c, align 4, !tbaa !112
  %.not.i.i32 = icmp slt i32 %i.ad, %i.ag
  br i1 %.not.i.i32, label %_ZN3fmt3v126detail21format_string_checkerIcLi3ELi0ELb0EE9on_arg_idEv.exit33, label %bb.m

bb.m:                                             ; preds = %_ZN3fmt3v1213parse_contextIcE11next_arg_idEv.exit.i.i31
  call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.28) #28
  unreachable

bb.n:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  store ptr %2, ptr %3, align 8, !tbaa !181
  store i32 0, ptr %i.g, align 8, !tbaa !183
  %i.ah = call noundef ptr @_ZN3fmt3v126detail12parse_arg_idIcRZNS1_23parse_replacement_fieldIcRNS1_21format_string_checkerIcLi3ELi0ELb0EEEEEPKT_S9_S9_OT0_E10id_adapterEES9_S9_S9_SB_(ptr noundef nonnull %i.i, ptr noundef nonnull %i.a, ptr noundef nonnull align 8 dereferenceable(12) %3) ; 5 uses
  %i.ai = load i32, ptr %i.g, align 8, !tbaa !183 ; 3 uses
  %.not.i = icmp eq ptr %i.ah, %i.a
  br i1 %.not.i, label %.thread44, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aj = load i8, ptr %i.ah, align 1, !tbaa !26
  switch i8 %i.aj, label %.thread44 [
    i8 125, label %bb.p
    i8 58, label %bb.r
  ]

bb.p:                                             ; preds = %bb.o
  %i.ak = load ptr, ptr %i.d, align 8, !tbaa !178 ; 2 uses
  %i.al = ptrtoint ptr %i.ah to i64
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = sub i64 %i.al, %i.am                    ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.an
  store ptr %i.ao, ptr %i.d, align 8, !tbaa !178
  %i.ap = load i64, ptr %i.e, align 8, !tbaa !179
  %i.aq = sub i64 %i.ap, %i.an
  store i64 %i.aq, ptr %i.e, align 8, !tbaa !179
  %or.cond.i.i34 = icmp ult i32 %i.ai, 3
  br i1 %or.cond.i.i34, label %bb.q, label %.thread47

bb.q:                                             ; preds = %bb.p
  %i.ar = zext nneg i32 %i.ai to i64
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.ar
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !29
  %i.au = call noundef ptr %i.at(ptr noundef nonnull align 8 dereferenceable(20) %i.d), !inline_history !180 ; 0 uses
  br label %.thread47

.thread47:                                        ; preds = %bb.q, %bb.p
  %i.av = getelementptr inbounds nuw i8, ptr %i.ah, i64 1
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %_ZN3fmt3v126detail23parse_replacement_fieldIcRNS1_21format_string_checkerIcLi3ELi0ELb0EEEEEPKT_S8_S8_OT0_.exit

.thread44:                                        ; preds = %bb.o, %bb.n
  call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.26) #28
  unreachable

bb.r:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %_ZN3fmt3v126detail21format_string_checkerIcLi3ELi0ELb0EE9on_arg_idEv.exit33

_ZN3fmt3v126detail21format_string_checkerIcLi3ELi0ELb0EE9on_arg_idEv.exit33: ; preds = %bb.r, %_ZN3fmt3v1213parse_contextIcE11next_arg_idEv.exit.i.i31
  %.039.i = phi ptr [ %i.ah, %bb.r ], [ %i.i, %_ZN3fmt3v1213parse_contextIcE11next_arg_idEv.exit.i.i31 ]
  %.038.i = phi i32 [ %i.ai, %bb.r ], [ %i.ad, %_ZN3fmt3v1213parse_contextIcE11next_arg_idEv.exit.i.i31 ] ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.039.i, i64 1 ; 5 uses
  %i.ax = load ptr, ptr %i.d, align 8, !tbaa !178 ; 2 uses
  %i.ay = ptrtoint ptr %i.aw to i64               ; 2 uses
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = sub i64 %i.ay, %i.az                    ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.ba
  store ptr %i.bb, ptr %i.d, align 8, !tbaa !178
  %i.bc = load i64, ptr %i.e, align 8, !tbaa !179
  %i.bd = sub i64 %i.bc, %i.ba
  store i64 %i.bd, ptr %i.e, align 8, !tbaa !179
  %or.cond.i = icmp ult i32 %.038.i, 3
  br i1 %or.cond.i, label %bb.s, label %.preheader.i

.preheader.i:                                     ; preds = %_ZN3fmt3v126detail21format_string_checkerIcLi3ELi0ELb0EE9on_arg_idEv.exit33
  %.not23.i = icmp eq ptr %i.aw, %i.a
  br i1 %.not23.i, label %_ZN3fmt3v126detail21format_string_checkerIcLi3ELi0ELb0EE15on_format_specsEiPKcS5_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  %i.be = sub i64 %i.h, %i.ay
  %scevgep.i = getelementptr i8, ptr %i.aw, i64 %i.be
  br label %.lr.ph.i

bb.s:                                             ; preds = %_ZN3fmt3v126detail21format_string_checkerIcLi3ELi0ELb0EE9on_arg_idEv.exit33
  %i.bf = zext nneg i32 %.038.i to i64
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.bf
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !29
  %i.bi = call noundef ptr %i.bh(ptr noundef nonnull align 8 dereferenceable(20) %i.d), !inline_history !185
  br label %_ZN3fmt3v126detail21format_string_checkerIcLi3ELi0ELb0EE15on_format_specsEiPKcS5_.exit

.lr.ph.i:                                         ; preds = %bb.v, %.lr.ph.preheader.i
  %.025.i = phi i32 [ %.1.i37, %bb.v ], [ 0, %.lr.ph.preheader.i ] ; 4 uses
  %.01924.i = phi ptr [ %i.bm, %bb.v ], [ %i.aw, %.lr.ph.preheader.i ] ; 3 uses
  %i.bj = icmp slt i32 %.025.i, 1
  %.pr.i = load i8, ptr %.01924.i, align 1, !tbaa !26 ; 2 uses
  %.not22.i = icmp eq i8 %.pr.i, 125
  %or.cond33.i = select i1 %i.bj, i1 %.not22.i, i1 false
  br i1 %or.cond33.i, label %_ZN3fmt3v126detail21format_string_checkerIcLi3ELi0ELb0EE15on_format_specsEiPKcS5_.exit, label %.critedge3.i

.critedge3.i:                                     ; preds = %.lr.ph.i
  switch i8 %.pr.i, label %bb.v [
    i8 123, label %bb.t
    i8 125, label %bb.u
  ]

bb.t:                                             ; preds = %.critedge3.i
  %i.bk = add nsw i32 %.025.i, 1
  br label %bb.v

bb.u:                                             ; preds = %.critedge3.i
  %i.bl = add nsw i32 %.025.i, -1
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %.critedge3.i
  %.1.i37 = phi i32 [ %i.bk, %bb.t ], [ %i.bl, %bb.u ], [ %.025.i, %.critedge3.i ]
  %i.bm = getelementptr inbounds nuw i8, ptr %.01924.i, i64 1 ; 2 uses
  %.not.i38 = icmp eq ptr %i.bm, %i.a
  br i1 %.not.i38, label %_ZN3fmt3v126detail21format_string_checkerIcLi3ELi0ELb0EE15on_format_specsEiPKcS5_.exit, label %.lr.ph.i, !llvm.loop !186

_ZN3fmt3v126detail21format_string_checkerIcLi3ELi0ELb0EE15on_format_specsEiPKcS5_.exit: ; preds = %.lr.ph.i, %bb.v, %.preheader.i, %bb.s
  %.018.i = phi ptr [ %i.bi, %bb.s ], [ %i.aw, %.preheader.i ], [ %.01924.i, %.lr.ph.i ], [ %scevgep.i, %bb.v ] ; 3 uses
  %i.bn = icmp eq ptr %.018.i, %i.a
  br i1 %i.bn, label %bb.x, label %bb.w

bb.w:                                             ; preds = %_ZN3fmt3v126detail21format_string_checkerIcLi3ELi0ELb0EE15on_format_specsEiPKcS5_.exit
  %i.bo = load i8, ptr %.018.i, align 1, !tbaa !26
  %.not47.i = icmp eq i8 %i.bo, 125
  br i1 %.not47.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w, %_ZN3fmt3v126detail21format_string_checkerIcLi3ELi0ELb0EE15on_format_specsEiPKcS5_.exit
  call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.27) #28
  unreachable

bb.y:                                             ; preds = %bb.w
  %i.bp = getelementptr inbounds nuw i8, ptr %.018.i, i64 1
  br label %_ZN3fmt3v126detail23parse_replacement_fieldIcRNS1_21format_string_checkerIcLi3ELi0ELb0EEEEEPKT_S8_S8_OT0_.exit

bb.z:                                             ; preds = %bb.b
  %i.bq = icmp eq ptr %i.i, %i.a
  br i1 %i.bq, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.br = load i8, ptr %i.i, align 1, !tbaa !26
  %.not30 = icmp eq i8 %i.br, 125
  br i1 %.not30, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.24) #28
  unreachable

bb.ac:                                            ; preds = %bb.aa
  %i.bs = getelementptr inbounds nuw i8, ptr %.02451, i64 2
  br label %_ZN3fmt3v126detail23parse_replacement_fieldIcRNS1_21format_string_checkerIcLi3ELi0ELb0EEEEEPKT_S8_S8_OT0_.exit

_ZN3fmt3v126detail23parse_replacement_fieldIcRNS1_21format_string_checkerIcLi3ELi0ELb0EEEEEPKT_S8_S8_OT0_.exit: ; preds = %bb.y, %bb.j, %_ZN3fmt3v126detail21format_string_checkerIcLi3ELi0ELb0EE20on_replacement_fieldEiPKc.exit, %.thread47, %bb.b, %bb.ac
  %.125 = phi ptr [ %i.i, %bb.b ], [ %i.bs, %bb.ac ], [ %i.bp, %bb.y ], [ %i.av, %.thread47 ], [ %i.ab, %_ZN3fmt3v126detail21format_string_checkerIcLi3ELi0ELb0EE20on_replacement_fieldEiPKc.exit ], [ %i.ac, %bb.j ] ; 2 uses
  %.not = icmp eq ptr %.125, %i.a
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %_ZN3fmt3v126detail23parse_replacement_fieldIcRNS1_21format_string_checkerIcLi3ELi0ELb0EEEEEPKT_S8_S8_OT0_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN3fmt3v126detail12parse_arg_idIcRZNS1_23parse_replacement_fieldIcRNS1_21format_string_checkerIcLi3ELi0ELb0EEEEEPKT_S9_S9_OT0_E10id_adapterEES9_S9_S9_SB_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(12) %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !26      ; 5 uses
  %i.b = add i8 %i.a, -48
  %or.cond = icmp ult i8 %i.b, 10
  br i1 %or.cond, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  %.not28 = icmp eq i8 %i.a, 48
  br i1 %.not28, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.d = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.e = xor i64 %i.d, -1
  %i.f = getelementptr i8, ptr %0, i64 %i.e
  %scevgep.i = getelementptr i8, ptr %i.f, i64 %i.c ; 2 uses
  %i.g = sub i64 %i.c, %i.d
  %scevgep37.i = getelementptr i8, ptr %0, i64 %i.g ; 2 uses
  %i.h = zext nneg i8 %i.a to i32
  %i.i = add nsw i32 %i.h, -48                    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %.not34.i41 = icmp eq ptr %i.j, %1
  br i1 %.not34.i41, label %.critedge.i, label %.lr.ph

bb.d:                                             ; preds = %.lr.ph
  %i.k = mul i32 %i.q, 10
  %i.l = zext nneg i8 %i.r to i32
  %i.m = add nsw i32 %i.l, -48
  %i.n = add i32 %i.m, %i.k                       ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.p, i64 1 ; 2 uses
  %.not34.i = icmp eq ptr %i.o, %1
  br i1 %.not34.i, label %.critedge.i, label %.lr.ph, !llvm.loop !187

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %i.p = phi ptr [ %i.o, %bb.d ], [ %i.j, %bb.c ] ; 4 uses
  %i.q = phi i32 [ %i.n, %bb.d ], [ %i.i, %bb.c ] ; 4 uses
  %.0.i43 = phi ptr [ %i.p, %bb.d ], [ %0, %bb.c ]
  %.027.i42 = phi i32 [ %i.q, %bb.d ], [ 0, %bb.c ]
  %i.r = load i8, ptr %i.p, align 1, !tbaa !26    ; 2 uses
  %i.s = add i8 %i.r, -48
  %or.cond.i = icmp ult i8 %i.s, 10
  br i1 %or.cond.i, label %bb.d, label %..critedge.i_crit_edge, !llvm.loop !187

..critedge.i_crit_edge:                           ; preds = %.lr.ph
  br label %.critedge.i, !llvm.loop !187

.critedge.i:                                      ; preds = %bb.d, %..critedge.i_crit_edge, %bb.c
  %.027.i.lcssa = phi i32 [ %.027.i42, %..critedge.i_crit_edge ], [ 0, %bb.c ], [ %i.q, %bb.d ]
  %.lcssa = phi i32 [ %i.q, %..critedge.i_crit_edge ], [ %i.i, %bb.c ], [ %i.n, %bb.d ] ; 2 uses
  %.028.lcssa.i = phi ptr [ %.0.i43, %..critedge.i_crit_edge ], [ %scevgep.i, %bb.c ], [ %scevgep.i, %bb.d ]
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
  %i.aa = load i8, ptr %.028.lcssa.i, align 1, !tbaa !26
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
  %.021 = phi i32 [ 0, %bb.h ], [ %.lcssa, %.critedge.i ], [ %.lcssa, %bb.f ], [ 2147483647, %bb.g ] ; 2 uses
  %i.ah = icmp eq ptr %.037, %1
  br i1 %i.ah, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit
  %i.ai = load i8, ptr %.037, align 1, !tbaa !26
  switch i8 %i.ai, label %bb.j [
    i8 125, label %bb.k
    i8 58, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i, %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.25) #28
  unreachable

bb.k:                                             ; preds = %bb.i, %bb.i
  %i.aj = load ptr, ptr %2, align 8, !tbaa !188, !nonnull !173, !align !174 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 48 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !109
  %i.am = icmp sgt i32 %i.al, 0
  br i1 %i.am, label %bb.l, label %_ZN3fmt3v1213parse_contextIcE12check_arg_idEi.exit.i.i.i

bb.l:                                             ; preds = %bb.k
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.30) #28
  unreachable

_ZN3fmt3v1213parse_contextIcE12check_arg_idEi.exit.i.i.i: ; preds = %bb.k
  store i32 -1, ptr %i.ak, align 8, !tbaa !109
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 52
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !112
  %.not.i.i.i = icmp slt i32 %.021, %i.ao
  br i1 %.not.i.i.i, label %_ZZN3fmt3v126detail23parse_replacement_fieldIcRNS1_21format_string_checkerIcLi3ELi0ELb0EEEEEPKT_S8_S8_OT0_EN10id_adapter8on_indexEi.exit, label %bb.m

bb.m:                                             ; preds = %_ZN3fmt3v1213parse_contextIcE12check_arg_idEi.exit.i.i.i
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.28) #28
  unreachable

_ZZN3fmt3v126detail23parse_replacement_fieldIcRNS1_21format_string_checkerIcLi3ELi0ELb0EEEEEPKT_S8_S8_OT0_EN10id_adapter8on_indexEi.exit: ; preds = %_ZN3fmt3v1213parse_contextIcE12check_arg_idEi.exit.i.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %.021, ptr %i.ap, align 8, !tbaa !183
  ret ptr %.037

bb.n:                                             ; preds = %bb.a
  %i.aq = and i8 %i.a, -33
  %i.ar = add i8 %i.aq, -65
  %or.cond10.i = icmp ult i8 %i.ar, 26
  %i.as = icmp eq i8 %i.a, 95
  %i.at = or i1 %i.as, %or.cond10.i
  br i1 %i.at, label %.critedge4.preheader, label %bb.o

.critedge4.preheader:                             ; preds = %bb.n
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.28) #28
  unreachable

bb.o:                                             ; preds = %bb.n
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.25) #28
  unreachable
}

; Function Attrs: noreturn
declare void @_ZN3fmt3v1212report_errorEPKc(ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN3fmt3v126detail12invoke_parseIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEEPKT0_RNS0_13parse_contextISA_EE(ptr noundef nonnull align 8 dereferenceable(20) %0) #0 comdat {
bb.a:
  %1 = alloca %"struct.fmt::v12::formatter", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  store i32 32768, ptr %1, align 8, !tbaa !189
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i8 32, ptr %i.b, align 4, !tbaa !26
  %scevgep.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %scevgep.i.i.i.i.i, i8 0, i64 7, i1 false)
  store i32 -1, ptr %i.c, align 4, !tbaa !191
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i32 0, ptr %i.d, align 8, !tbaa !26
  %i.e = load ptr, ptr %0, align 8, !tbaa !178    ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !179  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.g
  %i.i = icmp samesign eq i64 %i.g, 0
  br i1 %i.i, label %_ZN3fmt3v126detail16native_formatterINS0_17basic_string_viewIcEEcLNS1_4typeE13EE5parseERNS0_13parse_contextIcEE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = load i8, ptr %i.e, align 1, !tbaa !26
  %i.k = icmp eq i8 %i.j, 125
  br i1 %i.k, label %_ZN3fmt3v126detail16native_formatterINS0_17basic_string_viewIcEEcLNS1_4typeE13EE5parseERNS0_13parse_contextIcEE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = call noundef ptr @_ZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeE(ptr noundef nonnull %i.e, ptr noundef nonnull %i.h, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(20) %0, i32 noundef 13)
  br label %_ZN3fmt3v126detail16native_formatterINS0_17basic_string_viewIcEEcLNS1_4typeE13EE5parseERNS0_13parse_contextIcEE.exit

_ZN3fmt3v126detail16native_formatterINS0_17basic_string_viewIcEEcLNS1_4typeE13EE5parseERNS0_13parse_contextIcEE.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.0.i = phi ptr [ %i.l, %bb.c ], [ %i.e, %bb.b ], [ %i.e, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  ret ptr %.0.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN3fmt3v126detail12invoke_parseIRmcEEPKT0_RNS0_13parse_contextIS4_EE(ptr noundef nonnull align 8 dereferenceable(20) %0) #0 comdat {
bb.a:
  %1 = alloca %"struct.fmt::v12::formatter.69", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  store i32 32768, ptr %1, align 8, !tbaa !189
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i8 32, ptr %i.b, align 4, !tbaa !26
  %scevgep.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %scevgep.i.i.i.i.i, i8 0, i64 7, i1 false)
  store i32 -1, ptr %i.c, align 4, !tbaa !191
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i32 0, ptr %i.d, align 8, !tbaa !26
  %i.e = load ptr, ptr %0, align 8, !tbaa !178    ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !179  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.g
  %i.i = icmp samesign eq i64 %i.g, 0
  br i1 %i.i, label %_ZN3fmt3v126detail16native_formatterIycLNS1_4typeE4EE5parseERNS0_13parse_contextIcEE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = load i8, ptr %i.e, align 1, !tbaa !26
  %i.k = icmp eq i8 %i.j, 125
  br i1 %i.k, label %_ZN3fmt3v126detail16native_formatterIycLNS1_4typeE4EE5parseERNS0_13parse_contextIcEE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = call noundef ptr @_ZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeE(ptr noundef nonnull %i.e, ptr noundef nonnull %i.h, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(20) %0, i32 noundef 4)
  br label %_ZN3fmt3v126detail16native_formatterIycLNS1_4typeE4EE5parseERNS0_13parse_contextIcEE.exit

_ZN3fmt3v126detail16native_formatterIycLNS1_4typeE4EE5parseERNS0_13parse_contextIcEE.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.0.i = phi ptr [ %i.l, %bb.c ], [ %i.e, %bb.b ], [ %i.e, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  ret ptr %.0.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeE(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(20) %3, i32 noundef %4) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.f = load i8, ptr %i.e, align 1, !tbaa !26
  switch i8 %i.f, label %_ZN3fmt3v126detail11parse_alignEc.exit.thread.sink.split [
    i8 60, label %_ZN3fmt3v126detail11parse_alignEc.exit.thread
    i8 62, label %_ZN3fmt3v126detail11parse_alignEc.exit.thread
    i8 94, label %_ZN3fmt3v126detail11parse_alignEc.exit.thread
  ]

bb.c:                                             ; preds = %bb.a
  %i.g = icmp eq ptr %0, %1
  br i1 %i.g, label %.loopexit155, label %_ZN3fmt3v126detail11parse_alignEc.exit.thread.sink.split

_ZN3fmt3v126detail11parse_alignEc.exit.thread.sink.split: ; preds = %bb.c, %bb.b
  %i.h = load i8, ptr %0, align 1, !tbaa !26
  br label %_ZN3fmt3v126detail11parse_alignEc.exit.thread

_ZN3fmt3v126detail11parse_alignEc.exit.thread:    ; preds = %_ZN3fmt3v126detail11parse_alignEc.exit.thread.sink.split, %bb.b, %bb.b, %bb.b
  %.045 = phi i8 [ 0, %bb.b ], [ 0, %bb.b ], [ 0, %bb.b ], [ %i.h, %_ZN3fmt3v126detail11parse_alignEc.exit.thread.sink.split ]
  %i.i = add i32 %4, -1
  %i.j = icmp ult i32 %i.i, 11                    ; 3 uses
  %i.k = lshr i32 15872, %4
end_hunk_0
begin_hunk_1_@_ZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeE:bb.a

bb.aw:                                            ; preds = %bb.av
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.33) #28
  unreachable

_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit72: ; preds = %bb.av
  %i.dy = load i32, ptr %2, align 8, !tbaa !189
  %i.dz = and i32 %i.dy, -8
  %i.ea = or disjoint i32 %i.dz, 2
  br label %.loopexit155.sink.split

bb.ax:                                            ; preds = %bb.d
  %i.eb = lshr i32 20480, %4
  %i.ec = trunc i32 %i.eb to i1
  br i1 %i.ec, label %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit73, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.33) #28
  unreachable

_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit73: ; preds = %bb.ax
  %i.ed = load i32, ptr %2, align 8, !tbaa !189
  %i.ee = and i32 %i.ed, -8
  %i.ef = or disjoint i32 %i.ee, 3
  br label %.loopexit155.sink.split

bb.az:                                            ; preds = %bb.d
  %i.eg = lshr i32 12544, %4
  %i.eh = trunc i32 %i.eg to i1
  br i1 %i.eh, label %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit74, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.33) #28
  unreachable

_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit74: ; preds = %bb.az
  %i.ei = load i32, ptr %2, align 8, !tbaa !189
  %i.ej = and i32 %i.ei, -8
  %i.ek = or disjoint i32 %i.ej, 1
  br label %.loopexit155.sink.split

bb.bb:                                            ; preds = %bb.d
  %i.el = load i8, ptr %.0145, align 1, !tbaa !26 ; 3 uses
  %i.em = icmp eq i8 %i.el, 125
  br i1 %i.em, label %.loopexit155, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.en = lshr i8 %i.el, 2
  %i.eo = and i8 %i.en, 62
  %i.ep = zext nneg i8 %i.eo to i64
  %i.eq = lshr i64 4203265827220226048, %i.ep
  %i.er = and i64 %i.eq, 3                        ; 5 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.0145, i64 %i.er ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 1 ; 2 uses
  %i.eu = ptrtoint ptr %i.et to i64
  %i.ev = sub i64 %i.a, %i.eu
  %i.ew = icmp slt i64 %i.ev, 1
  br i1 %i.ew, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.33) #28
  unreachable

bb.be:                                            ; preds = %bb.bc
  %i.ex = icmp eq i8 %i.el, 123
  br i1 %i.ex, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.34) #28
  unreachable

bb.bg:                                            ; preds = %bb.be
  %i.ey = load i8, ptr %i.et, align 1, !tbaa !26
  switch i8 %i.ey, label %_ZN3fmt3v126detail11parse_alignEc.exit76.thread [
    i8 60, label %_ZN3fmt3v126detail11parse_alignEc.exit76
    i8 62, label %bb.bh
    i8 94, label %bb.bi
  ]

bb.bh:                                            ; preds = %bb.bg
  br label %_ZN3fmt3v126detail11parse_alignEc.exit76

bb.bi:                                            ; preds = %bb.bg
  br label %_ZN3fmt3v126detail11parse_alignEc.exit76

_ZN3fmt3v126detail11parse_alignEc.exit76:         ; preds = %bb.bg, %bb.bh, %bb.bi
  %.0.i75 = phi i32 [ 8, %bb.bg ], [ 24, %bb.bi ], [ 16, %bb.bh ]
  %i.ez = icmp eq i32 %.sroa.0113.0, 0
  br i1 %i.ez, label %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt_clENS1_5stateEb.exit78, label %_ZN3fmt3v126detail11parse_alignEc.exit76.thread

_ZN3fmt3v126detail11parse_alignEc.exit76.thread:  ; preds = %bb.bg, %_ZN3fmt3v126detail11parse_alignEc.exit76
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.33) #28
  unreachable

_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt_clENS1_5stateEb.exit78: ; preds = %_ZN3fmt3v126detail11parse_alignEc.exit76
  %i.fa = load i32, ptr %2, align 8, !tbaa !189
  %i.fb = and i32 %i.fa, -229377
  %i.fc = trunc nuw nsw i64 %i.er to i32
  %i.fd = shl nuw nsw i32 %i.fc, 15
  %i.fe = add nuw nsw i32 %i.fd, 32768
  %i.ff = or disjoint i32 %i.fb, %i.fe            ; 2 uses
  store i32 %i.ff, ptr %2, align 8, !tbaa !189
  %cond = icmp eq i64 %i.er, 0
  br i1 %cond, label %bb.bj, label %.lr.ph.i

bb.bj:                                            ; preds = %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt_clENS1_5stateEb.exit78
  %i.fg = load i8, ptr %.0145, align 1, !tbaa !26
  store i8 %i.fg, ptr %i.q, align 4, !tbaa !26
  store i8 0, ptr %i.t, align 1, !tbaa !26
  store i8 0, ptr %i.u, align 2, !tbaa !26
  br label %_ZN3fmt3v1211basic_specs8set_fillIcEEvNS0_17basic_string_viewIT_EE.exit

.lr.ph.i:                                         ; preds = %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt_clENS1_5stateEb.exit78
  %i.fh = load i8, ptr %.0145, align 1, !tbaa !26
  store i8 %i.fh, ptr %i.q, align 4, !tbaa !26
  %i.fi = getelementptr inbounds nuw i8, ptr %.0145, i64 1
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !26
  store i8 %i.fj, ptr %i.v, align 1, !tbaa !26
  %exitcond.not.i.1 = icmp eq i64 %i.er, 1
  br i1 %exitcond.not.i.1, label %_ZN3fmt3v1211basic_specs8set_fillIcEEvNS0_17basic_string_viewIT_EE.exit, label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %.lr.ph.i
  %i.fk = getelementptr inbounds nuw i8, ptr %.0145, i64 2
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !26
  store i8 %i.fl, ptr %i.w, align 2, !tbaa !26
  %exitcond.not.i.2 = icmp eq i64 %i.er, 2
  br i1 %exitcond.not.i.2, label %_ZN3fmt3v1211basic_specs8set_fillIcEEvNS0_17basic_string_viewIT_EE.exit, label %.lr.ph.i.3

.lr.ph.i.3:                                       ; preds = %.lr.ph.i.2
  %i.fm = getelementptr inbounds nuw i8, ptr %.0145, i64 3
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !26
  store i8 %i.fn, ptr %i.x, align 1, !tbaa !26
  br label %_ZN3fmt3v1211basic_specs8set_fillIcEEvNS0_17basic_string_viewIT_EE.exit

_ZN3fmt3v1211basic_specs8set_fillIcEEvNS0_17basic_string_viewIT_EE.exit: ; preds = %.lr.ph.i, %.lr.ph.i.2, %.lr.ph.i.3, %bb.bj
  %i.fo = and i32 %i.ff, -57
  %i.fp = or disjoint i32 %i.fo, %.0.i75
  store i32 %i.fp, ptr %2, align 8, !tbaa !189
  %i.fq = getelementptr inbounds nuw i8, ptr %i.es, i64 2
  br label %bb.bk

bb.bk:                                            ; preds = %_ZN3fmt3v1211basic_specs8set_fillIcEEvNS0_17basic_string_viewIT_EE.exit, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt_clENS1_5stateEb.exit63, %_ZN3fmt3v126detail15parse_precisionIcEEPKT_S5_S5_RNS0_12format_specsERNS1_7arg_refIS3_EERNS0_13parse_contextIS3_EE.exit, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt_clENS1_5stateEb.exit59, %bb.t, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt_clENS1_5stateEb.exit55, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt_clENS1_5stateEb.exit53, %_ZN3fmt3v126detail11parse_alignEc.exit52
  %.1146 = phi ptr [ %i.fq, %_ZN3fmt3v1211basic_specs8set_fillIcEEvNS0_17basic_string_viewIT_EE.exit ], [ %i.ac, %_ZN3fmt3v126detail11parse_alignEc.exit52 ], [ %i.aj, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt_clENS1_5stateEb.exit53 ], [ %i.an, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt_clENS1_5stateEb.exit55 ], [ %i.au, %bb.t ], [ %i.ax, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt_clENS1_5stateEb.exit59 ], [ %i.bh, %_ZN3fmt3v126detail15parse_precisionIcEEPKT_S5_S5_RNS0_12format_specsERNS1_7arg_refIS3_EERNS0_13parse_contextIS3_EE.exit ], [ %i.bq, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt_clENS1_5stateEb.exit63 ] ; 4 uses
  %.sroa.0113.1 = phi i32 [ 1, %_ZN3fmt3v1211basic_specs8set_fillIcEEvNS0_17basic_string_viewIT_EE.exit ], [ 1, %_ZN3fmt3v126detail11parse_alignEc.exit52 ], [ 2, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt_clENS1_5stateEb.exit53 ], [ 3, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt_clENS1_5stateEb.exit55 ], [ 4, %bb.t ], [ 5, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt_clENS1_5stateEb.exit59 ], [ 6, %_ZN3fmt3v126detail15parse_precisionIcEEPKT_S5_S5_RNS0_12format_specsERNS1_7arg_refIS3_EERNS0_13parse_contextIS3_EE.exit ], [ 7, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt_clENS1_5stateEb.exit63 ]
  %i.fr = icmp eq ptr %.1146, %1
  br i1 %i.fr, label %.loopexit155, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.fs = load i8, ptr %.1146, align 1, !tbaa !26
  br label %bb.d, !llvm.loop !193

.loopexit155.sink.split:                          ; preds = %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit74, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit73, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit72, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit71, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit70, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit69, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit68, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit67, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit66, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit65, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit64, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit
  %.sink = phi i32 [ %i.bv, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit ], [ %i.cc, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit64 ], [ %i.ch, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit65 ], [ %i.co, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit66 ], [ %i.cv, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit67 ], [ %i.dc, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit68 ], [ %i.dj, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit69 ], [ %i.dq, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit70 ], [ %i.dv, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit71 ], [ %i.ea, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit72 ], [ %i.ef, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit73 ], [ %i.ek, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit74 ]
  store i32 %.sink, ptr %2, align 8, !tbaa !189
  %i.ft = getelementptr inbounds nuw i8, ptr %.0145, i64 1
  br label %.loopexit155

.loopexit155:                                     ; preds = %bb.bb, %bb.bk, %bb.d, %.loopexit155.sink.split, %bb.c
  %.1 = phi ptr [ %0, %bb.c ], [ %i.ft, %.loopexit155.sink.split ], [ %.0145, %bb.d ], [ %.0145, %bb.bb ], [ %.1146, %bb.bk ]
  ret ptr %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { ptr, i32 } @_ZN3fmt3v126detail18parse_dynamic_specIcEENS1_25parse_dynamic_spec_resultIT_EEPKS4_S7_RiRNS1_7arg_refIS4_EERNS0_13parse_contextIS4_EE(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(20) %4) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %5 = alloca %"struct.fmt::v12::detail::dynamic_spec_handler", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i32 0, ptr %i.a, align 4, !tbaa !194
  %i.b = load i8, ptr %0, align 1, !tbaa !26      ; 3 uses
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
  br i1 %.not34.i, label %.critedge.i, label %.lr.ph, !llvm.loop !187

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.q = phi ptr [ %i.p, %bb.c ], [ %i.k, %bb.b ] ; 4 uses
  %i.r = phi i32 [ %i.o, %bb.c ], [ %i.j, %bb.b ] ; 4 uses
  %.0.i37 = phi ptr [ %i.q, %bb.c ], [ %0, %bb.b ]
  %.027.i36 = phi i32 [ %i.r, %bb.c ], [ 0, %bb.b ]
  %i.s = load i8, ptr %i.q, align 1, !tbaa !26    ; 2 uses
  %i.t = add i8 %i.s, -48
  %or.cond.i = icmp ult i8 %i.t, 10
  br i1 %or.cond.i, label %bb.c, label %..critedge.i_crit_edge, !llvm.loop !187

..critedge.i_crit_edge:                           ; preds = %.lr.ph
  br label %.critedge.i, !llvm.loop !187

.critedge.i:                                      ; preds = %bb.c, %..critedge.i_crit_edge, %bb.b
  %.027.i.lcssa = phi i32 [ %.027.i36, %..critedge.i_crit_edge ], [ 0, %bb.b ], [ %i.r, %bb.c ]
  %.lcssa = phi i32 [ %i.r, %..critedge.i_crit_edge ], [ %i.j, %bb.b ], [ %i.o, %bb.c ] ; 3 uses
  %.028.lcssa.i = phi ptr [ %.0.i37, %..critedge.i_crit_edge ], [ %scevgep.i, %bb.b ], [ %scevgep.i, %bb.c ]
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
  %i.ab = load i8, ptr %.028.lcssa.i, align 1, !tbaa !26
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
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.35) #28
  unreachable

bb.f:                                             ; preds = %bb.e, %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit
  store i32 %.lcssa, ptr %2, align 4, !tbaa !40
  br label %bb.q

bb.g:                                             ; preds = %bb.a
  %i.ai = icmp eq i8 %i.b, 123
  br i1 %i.ai, label %bb.h, label %bb.p

bb.h:                                             ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 5 uses
  %.not = icmp eq ptr %i.aj, %1
  br i1 %.not, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !26
  switch i8 %i.ak, label %bb.l [
    i8 125, label %bb.j
    i8 58, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i, %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.am = load i32, ptr %i.al, align 8, !tbaa !109 ; 3 uses
  %i.an = icmp slt i32 %i.am, 0
  br i1 %i.an, label %bb.k, label %_ZN3fmt3v1213parse_contextIcE11next_arg_idEv.exit

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.29) #28
  unreachable

_ZN3fmt3v1213parse_contextIcE11next_arg_idEv.exit: ; preds = %bb.j
  %i.ao = add nuw nsw i32 %i.am, 1
  store i32 %i.ao, ptr %i.al, align 8, !tbaa !109
  store i32 %i.am, ptr %3, align 8
  store i32 1, ptr %i.a, align 4, !tbaa !194
  br label %bb.m

bb.l:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  store ptr %4, ptr %5, align 8, !tbaa !196
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %3, ptr %i.ap, align 8, !tbaa !198
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.a, ptr %i.aq, align 8, !tbaa !29
  %i.ar = call noundef ptr @_ZN3fmt3v126detail12parse_arg_idIcNS1_20dynamic_spec_handlerIcEEEEPKT_S7_S7_OT0_(ptr noundef nonnull %i.aj, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %bb.m

bb.m:                                             ; preds = %_ZN3fmt3v1213parse_contextIcE11next_arg_idEv.exit, %bb.l, %bb.h
  %.0 = phi ptr [ %i.aj, %bb.h ], [ %i.ar, %bb.l ], [ %i.aj, %_ZN3fmt3v1213parse_contextIcE11next_arg_idEv.exit ] ; 3 uses
  %.not22 = icmp eq ptr %.0, %1
  br i1 %.not22, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.as = load i8, ptr %.0, align 1, !tbaa !26
  %i.at = icmp eq i8 %i.as, 125
  br i1 %i.at, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.au = getelementptr inbounds nuw i8, ptr %.0, i64 1
  %.sroa.3.0.pre = load i32, ptr %i.a, align 4, !tbaa !194
  br label %bb.q

bb.p:                                             ; preds = %bb.m, %bb.n, %bb.g
  call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.25) #28
  unreachable

bb.q:                                             ; preds = %bb.f, %bb.o
  %.sroa.3.0 = phi i32 [ 0, %bb.f ], [ %.sroa.3.0.pre, %bb.o ]
  %.sroa.0.0 = phi ptr [ %.lcssa.i, %bb.f ], [ %i.au, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.3.0, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN3fmt3v126detail12parse_arg_idIcNS1_20dynamic_spec_handlerIcEEEEPKT_S7_S7_OT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 3 uses
  %i.b = ptrtoaddr ptr %1 to i64                  ; 3 uses
  %i.c = load i8, ptr %0, align 1, !tbaa !26      ; 5 uses
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
  br i1 %.not34.i, label %.critedge.i, label %.lr.ph50, !llvm.loop !187

.lr.ph50:                                         ; preds = %bb.c, %bb.d
  %i.p = phi ptr [ %i.o, %bb.d ], [ %i.j, %bb.c ] ; 4 uses
  %i.q = phi i32 [ %i.n, %bb.d ], [ %i.i, %bb.c ] ; 4 uses
  %.0.i49 = phi ptr [ %i.p, %bb.d ], [ %0, %bb.c ]
  %.027.i48 = phi i32 [ %i.q, %bb.d ], [ 0, %bb.c ]
  %i.r = load i8, ptr %i.p, align 1, !tbaa !26    ; 2 uses
  %i.s = add i8 %i.r, -48
  %or.cond.i = icmp ult i8 %i.s, 10
  br i1 %or.cond.i, label %bb.d, label %..critedge.i_crit_edge, !llvm.loop !187

..critedge.i_crit_edge:                           ; preds = %.lr.ph50
  br label %.critedge.i, !llvm.loop !187

.critedge.i:                                      ; preds = %bb.d, %..critedge.i_crit_edge, %bb.c
  %.027.i.lcssa = phi i32 [ %.027.i48, %..critedge.i_crit_edge ], [ 0, %bb.c ], [ %i.q, %bb.d ]
  %.lcssa = phi i32 [ %i.q, %..critedge.i_crit_edge ], [ %i.i, %bb.c ], [ %i.n, %bb.d ] ; 2 uses
  %.028.lcssa.i = phi ptr [ %.0.i49, %..critedge.i_crit_edge ], [ %scevgep.i, %bb.c ], [ %scevgep.i, %bb.d ]
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
  %i.aa = load i8, ptr %.028.lcssa.i, align 1, !tbaa !26
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
  %i.ai = load i8, ptr %.037, align 1, !tbaa !26
  switch i8 %i.ai, label %bb.j [
    i8 125, label %bb.k
    i8 58, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i, %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.25) #28
  unreachable

bb.k:                                             ; preds = %bb.i, %bb.i
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !200, !nonnull !173, !align !174
  store i32 %.021, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !202, !nonnull !173, !align !203
  store i32 1, ptr %i.am, align 4, !tbaa !194
  %i.an = load ptr, ptr %2, align 8, !tbaa !204, !nonnull !173, !align !174
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !109
  %i.aq = icmp sgt i32 %i.ap, 0
  br i1 %i.aq, label %bb.l, label %_ZN3fmt3v126detail20dynamic_spec_handlerIcE8on_indexEi.exit

bb.l:                                             ; preds = %bb.k
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.30) #28
  unreachable

_ZN3fmt3v126detail20dynamic_spec_handlerIcE8on_indexEi.exit: ; preds = %bb.k
  store i32 -1, ptr %i.ao, align 8, !tbaa !109
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
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.25) #28
  unreachable

.critedge4:                                       ; preds = %.lr.ph
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ay, i64 1 ; 2 uses
  %.not = icmp eq ptr %i.ax, %1
  br i1 %.not, label %.critedge, label %.lr.ph, !llvm.loop !205

.lr.ph:                                           ; preds = %.critedge4.preheader, %.critedge4
  %i.ay = phi ptr [ %i.ax, %.critedge4 ], [ %i.aw, %.critedge4.preheader ] ; 3 uses
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !26  ; 3 uses
  %i.ba = and i8 %i.az, -33
  %i.bb = add i8 %i.ba, -65
  %or.cond10.i32 = icmp ult i8 %i.bb, 26
  %i.bc = icmp eq i8 %i.az, 95
  %i.bd = or i1 %i.bc, %or.cond10.i32
  %i.be = add i8 %i.az, -48
  %or.cond31 = icmp ult i8 %i.be, 10
  %or.cond38 = or i1 %or.cond31, %i.bd
  br i1 %or.cond38, label %.critedge4, label %..critedge_crit_edge, !llvm.loop !205

..critedge_crit_edge:                             ; preds = %.lr.ph
  br label %.critedge, !llvm.loop !205

.critedge:                                        ; preds = %.critedge4, %..critedge_crit_edge, %.critedge4.preheader
  %.lcssa40 = phi ptr [ %i.ay, %..critedge_crit_edge ], [ %scevgep, %.critedge4.preheader ], [ %scevgep, %.critedge4 ] ; 2 uses
  %i.bf = ptrtoint ptr %.lcssa40 to i64
  %i.bg = ptrtoint ptr %0 to i64
  %i.bh = sub i64 %i.bf, %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !200, !nonnull !173, !align !174 ; 2 uses
  store ptr %0, ptr %i.bj, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store i64 %i.bh, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !26
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !202, !nonnull !173, !align !203
  store i32 2, ptr %i.bl, align 4, !tbaa !194
  %i.bm = load ptr, ptr %2, align 8, !tbaa !204, !nonnull !173, !align !174
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  store i32 -1, ptr %i.bn, align 8, !tbaa !109
  br label %bb.o

bb.o:                                             ; preds = %.critedge, %_ZN3fmt3v126detail20dynamic_spec_handlerIcE8on_indexEi.exit
  %.022 = phi ptr [ %.037, %_ZN3fmt3v126detail20dynamic_spec_handlerIcE8on_indexEi.exit ], [ %.lcssa40, %.critedge ]
  ret ptr %.022
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN6spdlog7details11make_uniqueINS_17pattern_formatterEJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESt10unique_ptrIT_St14default_deleteISC_EEDpOT0_(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.22") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %4 = alloca %"class.std::unordered_map", align 8 ; 11 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(224) ptr @_Znwm(i64 noundef 224) #29 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  store ptr %i.c, ptr %2, align 8, !tbaa !24
  %i.d = load ptr, ptr %1, align 8, !tbaa !27     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !25   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 %i.f, ptr %i.a, align 8, !tbaa !47
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.h = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.f     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.h, ptr %2, align 8, !tbaa !27
  %i.i = load i64, ptr %i.a, align 8, !tbaa !47
  store i64 %i.i, ptr %i.c, align 8, !tbaa !26
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %bb.a
  %i.j = phi ptr [ %i.h, %.noexc ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.f, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %._crit_edge.i.i7
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.k = load i8, ptr %i.d, align 1, !tbaa !26
  store i8 %i.k, ptr %i.j, align 1, !tbaa !26
  br label %._crit_edge.i.i7

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %i.d, i64 %i.f, i1 false)
  br label %._crit_edge.i.i7

._crit_edge.i.i7:                                 ; preds = %bb.c, %bb.b, %._crit_edge.i.i
  %i.l = load i64, ptr %i.a, align 8, !tbaa !47   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !25
  %i.n = load ptr, ptr %2, align 8, !tbaa !27
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.p, ptr %3, align 8, !tbaa !24
  store i8 10, ptr %i.p, align 8, !tbaa !26
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 1, ptr %i.q, align 8, !tbaa !25
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 17
  store i8 0, ptr %i.r, align 1, !tbaa !26
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 0, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  store ptr %i.t, ptr %4, align 8, !tbaa !160
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 1, ptr %i.u, align 8, !tbaa !161
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.w, align 8, !tbaa !206
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 40
end_hunk_1
