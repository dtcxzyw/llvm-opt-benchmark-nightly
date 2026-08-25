Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/strutil?download=true
inline.NumInlined: 4879
inline.NumDeleted: 1465
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 43
loop-unroll.NumUnrolled: 53
begin_hunk_0_@_ZN3fmt3v126detail7vprintfIcNS0_20basic_printf_contextIcEEEEvRNS1_6bufferIT_EENS0_17basic_string_viewIS6_EENS0_17basic_format_argsIT0_EE:bb.a

bb.hy:                                            ; preds = %bb.hx
  %i.os = ptrtoint ptr %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.327 to i64 ; 2 uses
  br label %bb.hz

bb.hz:                                            ; preds = %bb.hz, %bb.hy
  %.03.i.i.i.i.i.i = phi i64 [ %i.os, %bb.hy ], [ %i.ou, %bb.hz ]
  %.0.i.i.i.i.i.i = phi i32 [ 0, %bb.hy ], [ %i.ot, %bb.hz ] ; 2 uses
  %i.ot = add nuw nsw i32 %.0.i.i.i.i.i.i, 1      ; 2 uses
  %i.ou = lshr i64 %.03.i.i.i.i.i.i, 4            ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %i.ou, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZN3fmt3v126detail20printf_arg_formatterIcE5writeIPKvEEvT_.exit.i, label %bb.hz, !llvm.loop !482

_ZN3fmt3v126detail20printf_arg_formatterIcE5writeIPKvEEvT_.exit.i: ; preds = %bb.hz
  %narrow.i.i.i.i = add nuw i32 %.0.i.i.i.i.i.i, 3
  %i.ov = zext i32 %narrow.i.i.i.i to i64         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #13
  store i64 %i.os, ptr %10, align 8, !tbaa !483
  store i32 %i.ot, ptr %i.j, align 8, !tbaa !485
  %i.ow = call ptr @_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE2ENS0_14basic_appenderIcEERZNS1_9write_ptrIcS5_mEET0_S7_T1_PKNS0_12format_specsEEUlS5_E_EES8_S8_RSA_mmOT2_(ptr nonnull %0, ptr noundef nonnull align 4 dereferenceable(16) %21, i64 noundef %i.ov, i64 noundef %i.ov, ptr noundef nonnull align 8 dereferenceable(12) %10) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #13
  br label %_ZNK3fmt3v1216basic_format_argINS0_20basic_printf_contextIcEEE5visitINS0_6detail20printf_arg_formatterIcEEEEDTclfp_Li0EEEOT_.exit

bb.ia:                                            ; preds = %bb.hx
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(16) %21, i64 16, i1 false)
  %i.ox = load i32, ptr %9, align 4, !tbaa !476
  %i.oy = and i32 %i.ox, -8
  store i32 %i.oy, ptr %9, align 4, !tbaa !476
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #13
  store ptr @.str.95, ptr %8, align 8, !tbaa !13
  store i64 5, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !93
  %i.oz = call ptr @_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE1ENS0_14basic_appenderIcEERZNS1_11write_bytesIcLS3_1ES5_EET1_S7_NS0_17basic_string_viewIcEERKNS0_12format_specsEEUlS5_E_EES7_S7_SC_mmOT2_(ptr nonnull %0, ptr noundef nonnull align 4 dereferenceable(16) %9, i64 noundef 5, i64 noundef 5, ptr noundef nonnull align 8 dereferenceable(16) %8) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  br label %_ZNK3fmt3v1216basic_format_argINS0_20basic_printf_contextIcEEE5visitINS0_6detail20printf_arg_formatterIcEEEEDTclfp_Li0EEEOT_.exit

bb.ib:                                            ; preds = %bb.go
  %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.copyload.i97 = load ptr, ptr %.sroa.0, align 16, !tbaa !446
  %.sroa.0.8..sroa.0.8..sroa.0.8..sroa.0.8..sroa.2.0.copyload.i99 = load ptr, ptr %.sroa.0.8..sroa_idx728, align 8, !tbaa !446
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %7, i8 0, i64 20, i1 false)
  call void %.sroa.0.8..sroa.0.8..sroa.0.8..sroa.0.8..sroa.2.0.copyload.i99(ptr noundef %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.copyload.i97, ptr noundef nonnull align 8 dereferenceable(20) %7, ptr noundef nonnull align 8 dereferenceable(24) %19), !inline_history !1053
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  br label %_ZNK3fmt3v1216basic_format_argINS0_20basic_printf_contextIcEEE5visitINS0_6detail20printf_arg_formatterIcEEEEDTclfp_Li0EEEOT_.exit

_ZNK3fmt3v1216basic_format_argINS0_20basic_printf_contextIcEEE5visitINS0_6detail20printf_arg_formatterIcEEEEDTclfp_Li0EEEOT_.exit: ; preds = %bb.go, %bb.ia, %_ZN3fmt3v126detail20printf_arg_formatterIcE5writeIPKvEEvT_.exit.i, %bb.hq, %_ZN3fmt3v126detail5writeIciTnNSt9enable_ifIXaaaasr11is_integralIT0_EE5valuentsr3std7is_sameIS4_bEE5valuentsr3std7is_sameIS4_T_EE5valueEiE4typeELi0EEENS0_14basic_appenderIS5_EES9_S4_RKNS0_12format_specsENS0_10locale_refE.exit.i.i, %_ZN3fmt3v126detail20printf_arg_formatterIcEclIiTnNSt9enable_ifIXsr6detail11is_integralIT_EE5valueEiE4typeELi0EEEvS6_.exit, %_ZN3fmt3v126detail20printf_arg_formatterIcEclIjTnNSt9enable_ifIXsr6detail11is_integralIT_EE5valueEiE4typeELi0EEEvS6_.exit, %_ZN3fmt3v126detail20printf_arg_formatterIcEclIxTnNSt9enable_ifIXsr6detail11is_integralIT_EE5valueEiE4typeELi0EEEvS6_.exit, %_ZN3fmt3v126detail20printf_arg_formatterIcEclIyTnNSt9enable_ifIXsr6detail11is_integralIT_EE5valueEiE4typeELi0EEEvS6_.exit, %_ZN3fmt3v126detail20printf_arg_formatterIcEclInTnNSt9enable_ifIXsr6detail11is_integralIT_EE5valueEiE4typeELi0EEEvS6_.exit, %_ZN3fmt3v126detail20printf_arg_formatterIcEclIoTnNSt9enable_ifIXsr6detail11is_integralIT_EE5valueEiE4typeELi0EEEvS6_.exit, %bb.hr, %bb.hs, %bb.ht, %bb.hu, %bb.hv, %bb.hw, %bb.ib
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #13
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !13
  br label %bb.ic

bb.ic:                                            ; preds = %_ZNK3fmt3v1216basic_format_argINS0_20basic_printf_contextIcEEE5visitINS0_6detail20printf_arg_formatterIcEEEEDTclfp_Li0EEEOT_.exit, %bb.f
  %i.pa = phi ptr [ %i.ah, %bb.f ], [ %.pre, %_ZNK3fmt3v1216basic_format_argINS0_20basic_printf_contextIcEEE5visitINS0_6detail20printf_arg_formatterIcEEEEDTclfp_Li0EEEOT_.exit ] ; 2 uses
  %.1 = phi ptr [ %i.ah, %bb.f ], [ %i.lj, %_ZNK3fmt3v1216basic_format_argINS0_20basic_printf_contextIcEEE5visitINS0_6detail20printf_arg_formatterIcEEEEDTclfp_Li0EEEOT_.exit ] ; 2 uses
  %.not = icmp eq ptr %i.pa, %i.e
  br i1 %.not, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %bb.ic, %bb.a, %bb.c
  %i.pb = phi ptr [ %i.e, %bb.c ], [ %1, %bb.a ], [ %i.e, %bb.ic ]
  %.0469 = phi ptr [ %.0479, %bb.c ], [ %1, %bb.a ], [ %.1, %bb.ic ] ; 3 uses
  %i.pc = ptrtoint ptr %i.pb to i64
  %i.pd = ptrtoint ptr %.0469 to i64
  %i.pe = sub i64 %i.pc, %i.pd
  %i.pf = getelementptr inbounds nuw i8, ptr %.0469, i64 %i.pe
  %i.pg = call ptr @_ZN3fmt3v126detail13copy_noinlineIcPKcNS0_14basic_appenderIcEEEET1_T0_S8_S7_(ptr noundef %.0469, ptr noundef %i.pf, ptr nonnull %0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #13
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN3fmt3v126detail12parse_headerIcZNS1_7vprintfIcNS0_20basic_printf_contextIcEEEEvRNS1_6bufferIT_EENS0_17basic_string_viewIS7_EENS0_17basic_format_argsIT0_EEEUliE_EEiRPKS7_SH_RNS0_12format_specsESD_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr %3, ptr %4) local_unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !13     ; 8 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !7     ; 3 uses
  %i.c = add i8 %i.b, -48
  %or.cond = icmp ult i8 %i.c, 10
  br i1 %or.cond, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.d = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.e = ptrtoaddr ptr %i.a to i64                ; 2 uses
  %i.f = xor i64 %i.e, -1
  %i.g = getelementptr i8, ptr %i.a, i64 %i.f
  %scevgep.i = getelementptr i8, ptr %i.g, i64 %i.d ; 2 uses
  %i.h = sub i64 %i.d, %i.e
  %scevgep37.i = getelementptr i8, ptr %i.a, i64 %i.h ; 2 uses
  %i.i = zext nneg i8 %i.b to i32
  %i.j = add nsw i32 %i.i, -48                    ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 2 uses
  %.not34.i144 = icmp eq ptr %i.k, %1
  br i1 %.not34.i144, label %.critedge.i, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %i.l = mul i32 %i.r, 10
  %i.m = zext nneg i8 %i.s to i32
  %i.n = add nsw i32 %i.m, -48
  %i.o = add i32 %i.n, %i.l                       ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.q, i64 1 ; 2 uses
  %.not34.i = icmp eq ptr %i.p, %1
  br i1 %.not34.i, label %.critedge.i, label %.lr.ph, !llvm.loop !838

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.q = phi ptr [ %i.p, %bb.c ], [ %i.k, %bb.b ] ; 4 uses
  %i.r = phi i32 [ %i.o, %bb.c ], [ %i.j, %bb.b ] ; 4 uses
  %.0.i51146 = phi ptr [ %i.q, %bb.c ], [ %i.a, %bb.b ]
  %.027.i145 = phi i32 [ %i.r, %bb.c ], [ 0, %bb.b ]
  %i.s = load i8, ptr %i.q, align 1, !tbaa !7     ; 2 uses
  %i.t = add i8 %i.s, -48
  %or.cond.i = icmp ult i8 %i.t, 10
  br i1 %or.cond.i, label %bb.c, label %..critedge.i_crit_edge, !llvm.loop !838

..critedge.i_crit_edge:                           ; preds = %.lr.ph
  br label %.critedge.i, !llvm.loop !838

.critedge.i:                                      ; preds = %bb.c, %..critedge.i_crit_edge, %bb.b
  %.027.i.lcssa = phi i32 [ %.027.i145, %..critedge.i_crit_edge ], [ 0, %bb.b ], [ %i.r, %bb.c ]
  %.lcssa143 = phi i32 [ %i.r, %..critedge.i_crit_edge ], [ %i.j, %bb.b ], [ %i.o, %bb.c ] ; 2 uses
  %.0.lcssa.i = phi ptr [ %.0.i51146, %..critedge.i_crit_edge ], [ %scevgep.i, %bb.b ], [ %scevgep.i, %bb.c ]
  %.lcssa.i = phi ptr [ %i.q, %..critedge.i_crit_edge ], [ %scevgep37.i, %bb.b ], [ %scevgep37.i, %bb.c ] ; 5 uses
  %i.u = ptrtoint ptr %.lcssa.i to i64
  %i.v = ptrtoint ptr %i.a to i64
  %i.w = sub i64 %i.u, %i.v                       ; 2 uses
  store ptr %.lcssa.i, ptr %0, align 8, !tbaa !13
  %i.x = icmp slt i64 %i.w, 10
  br i1 %i.x, label %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit, label %bb.d

bb.d:                                             ; preds = %.critedge.i
  %i.y = icmp eq i64 %i.w, 10
  br i1 %i.y, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.z = zext i32 %.027.i.lcssa to i64
  %i.aa = mul nuw nsw i64 %i.z, 10
  %i.ab = load i8, ptr %.0.lcssa.i, align 1, !tbaa !7
  %i.ac = sext i8 %i.ab to i64
  %i.ad = add nsw i64 %i.ac, 4294967248
  %i.ae = and i64 %i.ad, 4294967294
  %i.af = add nuw nsw i64 %i.ae, %i.aa
  %i.ag = icmp samesign ult i64 %i.af, 2147483648
  br i1 %i.ag, label %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  br label %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit

_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit: ; preds = %.critedge.i, %bb.e, %bb.f
  %.028.i = phi i32 [ %.lcssa143, %.critedge.i ], [ -1, %bb.f ], [ %.lcssa143, %bb.e ] ; 4 uses
  %.not = icmp eq ptr %.lcssa.i, %1
  br i1 %.not, label %bb.i, label %bb.g

bb.g:                                             ; preds = %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit
  %i.ah = load i8, ptr %.lcssa.i, align 1, !tbaa !7
  %i.ai = icmp eq i8 %i.ah, 36
  br i1 %i.ai, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %.lcssa.i, i64 1 ; 2 uses
  store ptr %i.aj, ptr %0, align 8, !tbaa !13
  %.not48 = icmp eq i32 %.028.i, -1
  %spec.select = select i1 %.not48, i32 2147483647, i32 %.028.i
  br label %bb.m

bb.i:                                             ; preds = %bb.g, %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit
  %i.ak = icmp eq i8 %i.b, 48
  br i1 %i.ak, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i8 48, ptr %i.al, align 4, !tbaa !7
  %i.am = load i32, ptr %2, align 4, !tbaa !476
  %i.an = and i32 %i.am, -229377
  %i.ao = or disjoint i32 %i.an, 32768
  store i32 %i.ao, ptr %2, align 4, !tbaa !476
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  switch i32 %.028.i, label %.sink.split [
    i32 0, label %._crit_edge
    i32 -1, label %bb.l
  ]

._crit_edge:                                      ; preds = %bb.k
  %.pre = load ptr, ptr %0, align 8, !tbaa !13
  br label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.68) #47
  unreachable

bb.m:                                             ; preds = %._crit_edge, %bb.h, %bb.a
  %i.ap = phi ptr [ %i.a, %bb.a ], [ %i.aj, %bb.h ], [ %.pre, %._crit_edge ] ; 3 uses
  %.2 = phi i32 [ -1, %bb.a ], [ %spec.select, %bb.h ], [ -1, %._crit_edge ] ; 11 uses
  %.not11.i = icmp eq ptr %i.ap, %1
  br i1 %.not11.i, label %_ZN3fmt3v126detail11parse_flagsIcEEvRNS0_12format_specsERPKT_S7_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.m
  %.promoted.i = load i32, ptr %2, align 4
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 4
  br label %bb.n

bb.n:                                             ; preds = %bb.u, %.lr.ph.i
  %i.ar = phi ptr [ %i.ap, %.lr.ph.i ], [ %i.bd, %bb.u ] ; 7 uses
  %5 = phi i32 [ %.promoted.i, %.lr.ph.i ], [ %6, %bb.u ] ; 7 uses
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !7
  switch i8 %i.as, label %_ZN3fmt3v126detail11parse_flagsIcEEvRNS0_12format_specsERPKT_S7_.exit [
    i8 45, label %bb.o
    i8 43, label %bb.p
    i8 48, label %bb.q
    i8 32, label %bb.r
    i8 35, label %bb.t
  ]

bb.o:                                             ; preds = %bb.n
  %i.at = and i32 %5, -57
  %i.au = or disjoint i32 %i.at, 8                ; 2 uses
  store i32 %i.au, ptr %2, align 4, !tbaa !476
  br label %bb.u

bb.p:                                             ; preds = %bb.n
  %i.av = and i32 %5, -3073
  %i.aw = or disjoint i32 %i.av, 2048             ; 2 uses
  store i32 %i.aw, ptr %2, align 4, !tbaa !476
  br label %bb.u

bb.q:                                             ; preds = %bb.n
  store i8 48, ptr %i.aq, align 4, !tbaa !7
  %i.ax = and i32 %5, -229377
  %i.ay = or disjoint i32 %i.ax, 32768            ; 2 uses
  store i32 %i.ay, ptr %2, align 4, !tbaa !476
  %.pre.i52 = load ptr, ptr %0, align 8, !tbaa !13
  br label %bb.u

bb.r:                                             ; preds = %bb.n
  %i.az = and i32 %5, 3072
  %.not10.i = icmp eq i32 %i.az, 2048
  br i1 %.not10.i, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ba = or i32 %5, 3072                         ; 2 uses
  store i32 %i.ba, ptr %2, align 4, !tbaa !476
  br label %bb.u

bb.t:                                             ; preds = %bb.n
  %i.bb = or i32 %5, 8192                         ; 2 uses
  store i32 %i.bb, ptr %2, align 4, !tbaa !476
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o
  %i.bc = phi ptr [ %i.ar, %bb.o ], [ %i.ar, %bb.p ], [ %.pre.i52, %bb.q ], [ %i.ar, %bb.t ], [ %i.ar, %bb.s ], [ %i.ar, %bb.r ]
  %6 = phi i32 [ %i.au, %bb.o ], [ %i.aw, %bb.p ], [ %i.ay, %bb.q ], [ %i.bb, %bb.t ], [ %i.ba, %bb.s ], [ %5, %bb.r ]
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 1 ; 4 uses
  store ptr %i.bd, ptr %0, align 8, !tbaa !13
  %.not.i = icmp eq ptr %i.bd, %1
  br i1 %.not.i, label %_ZN3fmt3v126detail11parse_flagsIcEEvRNS0_12format_specsERPKT_S7_.exit, label %bb.n, !llvm.loop !1054

_ZN3fmt3v126detail11parse_flagsIcEEvRNS0_12format_specsERPKT_S7_.exit: ; preds = %bb.n, %bb.u, %bb.m
  %i.be = phi ptr [ %i.ap, %bb.m ], [ %i.ar, %bb.n ], [ %i.bd, %bb.u ] ; 9 uses
  %.not49 = icmp eq ptr %i.be, %1
  br i1 %.not49, label %bb.bf, label %bb.v

bb.v:                                             ; preds = %_ZN3fmt3v126detail11parse_flagsIcEEvRNS0_12format_specsERPKT_S7_.exit
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !7   ; 3 uses
  %i.bg = add i8 %i.bf, -48
  %or.cond50 = icmp ult i8 %i.bg, 10
  br i1 %or.cond50, label %bb.w, label %bb.ab

bb.w:                                             ; preds = %bb.v
  %i.bh = ptrtoaddr ptr %1 to i64                 ; 2 uses
  %i.bi = ptrtoaddr ptr %i.be to i64              ; 2 uses
  %i.bj = xor i64 %i.bi, -1
  %i.bk = getelementptr i8, ptr %i.be, i64 %i.bj
  %scevgep.i53 = getelementptr i8, ptr %i.bk, i64 %i.bh ; 2 uses
  %i.bl = sub i64 %i.bh, %i.bi
  %scevgep37.i54 = getelementptr i8, ptr %i.be, i64 %i.bl ; 2 uses
  %i.bm = zext nneg i8 %i.bf to i32
  %i.bn = add nsw i32 %i.bm, -48                  ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.be, i64 1 ; 2 uses
  %.not34.i58156 = icmp eq ptr %i.bo, %1
  br i1 %.not34.i58156, label %.critedge.i60, label %.lr.ph160

bb.x:                                             ; preds = %.lr.ph160
  %i.bp = mul i32 %i.bv, 10
  %i.bq = zext nneg i8 %i.bw to i32
  %i.br = add nsw i32 %i.bq, -48
  %i.bs = add i32 %i.br, %i.bp                    ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bu, i64 1 ; 2 uses
  %.not34.i58 = icmp eq ptr %i.bt, %1
  br i1 %.not34.i58, label %.critedge.i60, label %.lr.ph160, !llvm.loop !838

.lr.ph160:                                        ; preds = %bb.w, %bb.x
  %i.bu = phi ptr [ %i.bt, %bb.x ], [ %i.bo, %bb.w ] ; 4 uses
  %i.bv = phi i32 [ %i.bs, %bb.x ], [ %i.bn, %bb.w ] ; 4 uses
  %.0.i57158 = phi ptr [ %i.bu, %bb.x ], [ %i.be, %bb.w ]
  %.027.i56157 = phi i32 [ %i.bv, %bb.x ], [ 0, %bb.w ]
  %i.bw = load i8, ptr %i.bu, align 1, !tbaa !7   ; 2 uses
  %i.bx = add i8 %i.bw, -48
  %or.cond.i59 = icmp ult i8 %i.bx, 10
  br i1 %or.cond.i59, label %bb.x, label %..critedge.i60_crit_edge, !llvm.loop !838

..critedge.i60_crit_edge:                         ; preds = %.lr.ph160
  br label %.critedge.i60, !llvm.loop !838

.critedge.i60:                                    ; preds = %bb.x, %..critedge.i60_crit_edge, %bb.w
  %.027.i56.lcssa = phi i32 [ %.027.i56157, %..critedge.i60_crit_edge ], [ 0, %bb.w ], [ %i.bv, %bb.x ]
  %.lcssa = phi i32 [ %i.bv, %..critedge.i60_crit_edge ], [ %i.bn, %bb.w ], [ %i.bs, %bb.x ] ; 2 uses
  %.0.lcssa.i61 = phi ptr [ %.0.i57158, %..critedge.i60_crit_edge ], [ %scevgep.i53, %bb.w ], [ %scevgep.i53, %bb.x ]
  %.lcssa.i62 = phi ptr [ %i.bu, %..critedge.i60_crit_edge ], [ %scevgep37.i54, %bb.w ], [ %scevgep37.i54, %bb.x ] ; 2 uses
  %i.by = ptrtoint ptr %.lcssa.i62 to i64
  %i.bz = ptrtoint ptr %i.be to i64
  %i.ca = sub i64 %i.by, %i.bz                    ; 2 uses
  store ptr %.lcssa.i62, ptr %0, align 8, !tbaa !13
  %i.cb = icmp slt i64 %i.ca, 10
  br i1 %i.cb, label %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit64, label %bb.y

bb.y:                                             ; preds = %.critedge.i60
  %i.cc = icmp eq i64 %i.ca, 10
  br i1 %i.cc, label %bb.z, label %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit64.thread

bb.z:                                             ; preds = %bb.y
  %i.cd = zext i32 %.027.i56.lcssa to i64
  %i.ce = mul nuw nsw i64 %i.cd, 10
  %i.cf = load i8, ptr %.0.lcssa.i61, align 1, !tbaa !7
  %i.cg = sext i8 %i.cf to i64
  %i.ch = add nsw i64 %i.cg, 4294967248
  %i.ci = and i64 %i.ch, 4294967294
  %i.cj = add nuw nsw i64 %i.ci, %i.ce
  %i.ck = icmp samesign ult i64 %i.cj, 2147483648
  br i1 %i.ck, label %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit64, label %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit64.thread

_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit64.thread: ; preds = %bb.y, %bb.z
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 -1, ptr %i.cl, align 4, !tbaa !515
  br label %bb.aa

_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit64: ; preds = %.critedge.i60, %bb.z
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %.lcssa, ptr %i.cm, align 4, !tbaa !515
  %i.cn = icmp eq i32 %.lcssa, -1
  br i1 %i.cn, label %bb.aa, label %bb.bf

bb.aa:                                            ; preds = %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit64.thread, %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit64
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.68) #47
  unreachable

bb.ab:                                            ; preds = %bb.v
  %i.co = icmp eq i8 %i.bf, 42
  br i1 %i.co, label %bb.ac, label %bb.bf

bb.ac:                                            ; preds = %bb.ab
  %i.cp = getelementptr inbounds nuw i8, ptr %i.be, i64 1
  store ptr %i.cp, ptr %0, align 8, !tbaa !13
  %i.cq = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !443, !noalias !1055 ; 7 uses
  %i.cs = icmp slt i32 %i.cr, 0
  br i1 %i.cs, label %bb.ad, label %_ZN3fmt3v1213parse_contextIcE11next_arg_idEv.exit.i

bb.ad:                                            ; preds = %bb.ac
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.76) #47, !noalias !1055
  unreachable

_ZN3fmt3v1213parse_contextIcE11next_arg_idEv.exit.i: ; preds = %bb.ac
  %i.ct = add nuw nsw i32 %i.cr, 1
  store i32 %i.ct, ptr %i.cq, align 8, !tbaa !443, !noalias !1055
  %i.cu = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !1026, !noalias !1058 ; 3 uses
  %i.cw = icmp sgt i64 %i.cv, -1
  br i1 %i.cw, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %_ZN3fmt3v1213parse_contextIcE11next_arg_idEv.exit.i
  %i.cx = trunc i64 %i.cv to i32
  %i.cy = icmp slt i32 %i.cr, %i.cx
  br i1 %i.cy, label %_ZNK3fmt3v1220basic_printf_contextIcE3argEi.exit.i, label %_ZNK3fmt3v1220basic_printf_contextIcE3argEi.exit.thread.i

bb.af:                                            ; preds = %_ZN3fmt3v1213parse_contextIcE11next_arg_idEv.exit.i
  %i.cz = icmp samesign ugt i32 %i.cr, 14
  br i1 %i.cz, label %_ZNK3fmt3v1220basic_printf_contextIcE3argEi.exit.thread.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.da = shl nuw nsw i32 %i.cr, 2
  %i.db = zext nneg i32 %i.da to i64
  %i.dc = lshr i64 %i.cv, %i.db
  %i.dd = trunc i64 %i.dc to i32
  %i.de = and i32 %i.dd, 15                       ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.de, 0
  br i1 %.not.i.i.i, label %_ZNK3fmt3v1220basic_printf_contextIcE3argEi.exit.thread.i, label %_ZNK3fmt3v1220basic_printf_contextIcE3argEi.exit.thread10.i

_ZNK3fmt3v1220basic_printf_contextIcE3argEi.exit.thread10.i: ; preds = %bb.ag
  %i.df = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !7, !noalias !1058
  %i.dh = zext nneg i32 %i.cr to i64
  %i.di = getelementptr inbounds nuw [16 x i8], ptr %i.dg, i64 %i.dh
  br label %_ZZN3fmt3v126detail7vprintfIcNS0_20basic_printf_contextIcEEEEvRNS1_6bufferIT_EENS0_17basic_string_viewIS6_EENS0_17basic_format_argsIT0_EEENKUliE_clEi.exit

_ZNK3fmt3v1220basic_printf_contextIcE3argEi.exit.i: ; preds = %bb.ae
  %i.dj = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !7, !noalias !1058
  %i.dl = zext nneg i32 %i.cr to i64
  %i.dm = getelementptr inbounds nuw [32 x i8], ptr %i.dk, i64 %i.dl ; 2 uses
  %.sroa.5.0..sroa_idx6.i = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %.sroa.5.0.copyload7.i = load i32, ptr %.sroa.5.0..sroa_idx6.i, align 16, !tbaa !438, !noalias !1055 ; 2 uses
  %.not.i66 = icmp eq i32 %.sroa.5.0.copyload7.i, 0
  br i1 %.not.i66, label %_ZNK3fmt3v1220basic_printf_contextIcE3argEi.exit.thread.i, label %_ZZN3fmt3v126detail7vprintfIcNS0_20basic_printf_contextIcEEEEvRNS1_6bufferIT_EENS0_17basic_string_viewIS6_EENS0_17basic_format_argsIT0_EEENKUliE_clEi.exit

_ZNK3fmt3v1220basic_printf_contextIcE3argEi.exit.thread.i: ; preds = %_ZNK3fmt3v1220basic_printf_contextIcE3argEi.exit.i, %bb.ag, %bb.af, %bb.ae
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.71) #47, !noalias !1055
  unreachable

_ZZN3fmt3v126detail7vprintfIcNS0_20basic_printf_contextIcEEEEvRNS1_6bufferIT_EENS0_17basic_string_viewIS6_EENS0_17basic_format_argsIT0_EEENKUliE_clEi.exit: ; preds = %_ZNK3fmt3v1220basic_printf_contextIcE3argEi.exit.thread10.i, %_ZNK3fmt3v1220basic_printf_contextIcE3argEi.exit.i
  %.sroa.0.014.in.i = phi ptr [ %i.di, %_ZNK3fmt3v1220basic_printf_contextIcE3argEi.exit.thread10.i ], [ %i.dm, %_ZNK3fmt3v1220basic_printf_contextIcE3argEi.exit.i ]
  %.sroa.5.013.i = phi i32 [ %i.de, %_ZNK3fmt3v1220basic_printf_contextIcE3argEi.exit.thread10.i ], [ %.sroa.5.0.copyload7.i, %_ZNK3fmt3v1220basic_printf_contextIcE3argEi.exit.i ]
  %.sroa.0.014.i = load i128, ptr %.sroa.0.014.in.i, align 16, !tbaa !7, !noalias !1055 ; 8 uses
  %.sroa.072.sroa.0.sroa.0.0.extract.trunc = trunc i128 %.sroa.0.014.i to i32 ; 6 uses
  %.sroa.072.sroa.0.sroa.0.sroa.0.0.extract.trunc = trunc i128 %.sroa.0.014.i to i8 ; 3 uses
  %.sroa.072.sroa.0.sroa.9.0.extract.shift140 = lshr i128 %.sroa.0.014.i, 32 ; 2 uses
  switch i32 %.sroa.5.013.i, label %bb.be [
    i32 15, label %bb.bd
    i32 1, label %bb.ah
    i32 2, label %bb.ak
    i32 3, label %bb.am
    i32 4, label %bb.aq
    i32 5, label %bb.as
    i32 6, label %bb.at
    i32 7, label %bb.au
    i32 8, label %bb.av
    i32 9, label %bb.ax
    i32 10, label %bb.ay
    i32 11, label %bb.az
    i32 12, label %bb.ba
    i32 13, label %bb.bb
    i32 14, label %bb.bc
  ]

bb.ah:                                            ; preds = %_ZZN3fmt3v126detail7vprintfIcNS0_20basic_printf_contextIcEEEEvRNS1_6bufferIT_EENS0_17basic_string_viewIS6_EENS0_17basic_format_argsIT0_EEENKUliE_clEi.exit
  %.sroa.072.sroa.0.sroa.0.sroa.9.0.extract.shift = and i32 %.sroa.072.sroa.0.sroa.0.0.extract.trunc, -256
  %i.dn = trunc i128 %.sroa.0.014.i to i32
  %.sroa.072.sroa.0.sroa.0.sroa.0.0.insert.ext102 = and i32 %i.dn, 255
  %.sroa.072.sroa.0.sroa.0.sroa.0.0.insert.insert104 = or disjoint i32 %.sroa.072.sroa.0.sroa.0.sroa.9.0.extract.shift, %.sroa.072.sroa.0.sroa.0.sroa.0.0.insert.ext102 ; 2 uses
  %i.do = icmp slt i32 %.sroa.072.sroa.0.sroa.0.0.extract.trunc, 0
  br i1 %i.do, label %bb.ai, label %.sink.split

bb.ai:                                            ; preds = %bb.ah
  %i.dp = load i32, ptr %2, align 4, !tbaa !476
  %i.dq = and i32 %i.dp, -57
  %i.dr = or disjoint i32 %i.dq, 8
  store i32 %i.dr, ptr %2, align 4, !tbaa !476
  %i.ds = sub i32 0, %.sroa.072.sroa.0.sroa.0.sroa.0.0.insert.insert104 ; 2 uses
  %i.dt = icmp slt i32 %i.ds, 0
  br i1 %i.dt, label %bb.aj, label %.sink.split

bb.aj:                                            ; preds = %bb.ai
end_hunk_0
