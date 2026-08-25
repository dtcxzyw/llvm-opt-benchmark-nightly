Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fmt/original/printf-test?download=true
inline.NumInlined: 26200
inline.NumDeleted: 1767
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 44
loop-unroll.NumUnrolled: 51
begin_hunk_0_@_ZN3fmt3v126detail7vprintfIcNS0_20basic_printf_contextIcEEEEvRNS1_6bufferIT_EENS0_17basic_string_viewIS6_EENS0_17basic_format_argsIT0_EE:bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %7, i8 0, i64 20, i1 false)
  call void %.sroa.2.0.copyload.i115(ptr noundef %.sroa.0.0.copyload.i113, ptr noundef nonnull align 8 dereferenceable(20) %7, ptr noundef nonnull align 8 dereferenceable(24) %19), !inline_history !17796
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  br label %_ZNK3fmt3v1216basic_format_argINS0_20basic_printf_contextIcEEE5visitINS0_6detail20printf_arg_formatterIcEEEEDTclfp_Li0EEEOT_.exit

_ZNK3fmt3v1216basic_format_argINS0_20basic_printf_contextIcEEE5visitINS0_6detail20printf_arg_formatterIcEEEEDTclfp_Li0EEEOT_.exit: ; preds = %bb.hz, %bb.jm, %_ZN3fmt3v126detail20printf_arg_formatterIcE5writeIPKvEEvT_.exit.i, %bb.jc, %_ZN3fmt3v126detail5writeIciTnNSt9enable_ifIXaaaasr11is_integralIT0_EE5valuentsr3std7is_sameIS4_bEE5valuentsr3std7is_sameIS4_T_EE5valueEiE4typeELi0EEENS0_14basic_appenderIS5_EES9_S4_RKNS0_12format_specsENS0_10locale_refE.exit.i.i, %_ZN3fmt3v126detail20printf_arg_formatterIcEclIiTnNSt9enable_ifIXsr6detail11is_integralIT_EE5valueEiE4typeELi0EEEvS6_.exit, %_ZN3fmt3v126detail20printf_arg_formatterIcEclIjTnNSt9enable_ifIXsr6detail11is_integralIT_EE5valueEiE4typeELi0EEEvS6_.exit, %_ZN3fmt3v126detail20printf_arg_formatterIcEclIxTnNSt9enable_ifIXsr6detail11is_integralIT_EE5valueEiE4typeELi0EEEvS6_.exit, %_ZN3fmt3v126detail20printf_arg_formatterIcEclIyTnNSt9enable_ifIXsr6detail11is_integralIT_EE5valueEiE4typeELi0EEEvS6_.exit, %_ZN3fmt3v126detail20printf_arg_formatterIcEclInTnNSt9enable_ifIXsr6detail11is_integralIT_EE5valueEiE4typeELi0EEEvS6_.exit, %_ZN3fmt3v126detail20printf_arg_formatterIcEclIoTnNSt9enable_ifIXsr6detail11is_integralIT_EE5valueEiE4typeELi0EEEvS6_.exit, %bb.jd, %bb.je, %bb.jf, %bb.jg, %bb.jh, %bb.ji, %bb.jn
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #28
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !62
  br label %bb.jo

bb.jo:                                            ; preds = %_ZNK3fmt3v1216basic_format_argINS0_20basic_printf_contextIcEEE5visitINS0_6detail20printf_arg_formatterIcEEEEDTclfp_Li0EEEOT_.exit, %bb.f
  %i.td = phi ptr [ %i.ah, %bb.f ], [ %.pre, %_ZNK3fmt3v1216basic_format_argINS0_20basic_printf_contextIcEEE5visitINS0_6detail20printf_arg_formatterIcEEEEDTclfp_Li0EEEOT_.exit ] ; 2 uses
  %.1 = phi ptr [ %i.ah, %bb.f ], [ %i.ow, %_ZNK3fmt3v1216basic_format_argINS0_20basic_printf_contextIcEEE5visitINS0_6detail20printf_arg_formatterIcEEEEDTclfp_Li0EEEOT_.exit ] ; 2 uses
  %.not = icmp eq ptr %i.td, %i.e
  br i1 %.not, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %bb.jo, %bb.a, %bb.c
  %i.te = phi ptr [ %i.e, %bb.c ], [ %1, %bb.a ], [ %i.e, %bb.jo ]
  %.0433 = phi ptr [ %.0443, %bb.c ], [ %1, %bb.a ], [ %.1, %bb.jo ] ; 3 uses
  %i.tf = ptrtoint ptr %i.te to i64
  %i.tg = ptrtoint ptr %.0433 to i64
  %i.th = sub i64 %i.tf, %i.tg
  %i.ti = getelementptr inbounds nuw i8, ptr %.0433, i64 %i.th
  %i.tj = call ptr @_ZN3fmt3v126detail13copy_noinlineIcPKcNS0_14basic_appenderIcEEEET1_T0_S8_S7_(ptr noundef %.0433, ptr noundef %i.ti, ptr nonnull %0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #28
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !2981 ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = add i64 %i.c, %i.b
  %spec.select = tail call i64 @llvm.umax.i64(i64 %1, i64 %i.d) ; 3 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !2980   ; 3 uses
  %i.f = tail call noundef ptr @_ZN3fmt3v126detail8allocateEm(i64 noundef %spec.select) ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !2982 ; 2 uses
  %i.i = icmp ule i64 %i.h, %spec.select
  tail call void @llvm.assume(i1 %i.i)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.f, ptr align 1 %i.e, i64 %i.h, i1 false)
  store ptr %i.f, ptr %0, align 8, !tbaa !2980
  store i64 %spec.select, ptr %i.a, align 8, !tbaa !2981
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.not = icmp eq ptr %i.e, %i.j
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.e) #28
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare noundef ptr @_ZN3fmt3v126detail8allocateEm(i64 noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #20

; Function Attrs: noreturn
declare void @_ZN3fmt3v1212report_errorEPKc(ptr noundef) local_unnamed_addr #16

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN3fmt3v126detail12parse_headerIcZNS1_7vprintfIcNS0_20basic_printf_contextIcEEEEvRNS1_6bufferIT_EENS0_17basic_string_viewIS7_EENS0_17basic_format_argsIT0_EEEUliE_EEiRPKS7_SH_RNS0_12format_specsESD_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr %3, ptr %4) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !62     ; 9 uses
  %i.b = icmp eq ptr %i.a, %1
  br i1 %i.b, label %bb.de, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr %i.a, align 1, !tbaa !38    ; 3 uses
  %i.d = add i8 %i.c, -48
  %or.cond = icmp ult i8 %i.d, 10
  br i1 %or.cond, label %bb.c, label %bb.n

bb.c:                                             ; preds = %bb.b
  %i.e = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.f = ptrtoaddr ptr %i.a to i64                ; 2 uses
  %i.g = xor i64 %i.f, -1
  %i.h = getelementptr i8, ptr %i.a, i64 %i.g
  %scevgep.i = getelementptr i8, ptr %i.h, i64 %i.e ; 2 uses
  %i.i = sub i64 %i.e, %i.f
  %scevgep37.i = getelementptr i8, ptr %i.a, i64 %i.i ; 2 uses
  %i.j = zext nneg i8 %i.c to i32
  %i.k = add nsw i32 %i.j, -48                    ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 2 uses
  %.not34.i297 = icmp eq ptr %i.l, %1
  br i1 %.not34.i297, label %.critedge.i, label %.lr.ph

bb.d:                                             ; preds = %.lr.ph
  %i.m = mul i32 %i.s, 10
  %i.n = zext nneg i8 %i.t to i32
  %i.o = add nsw i32 %i.n, -48
  %i.p = add i32 %i.o, %i.m                       ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.r, i64 1 ; 2 uses
  %.not34.i = icmp eq ptr %i.q, %1
  br i1 %.not34.i, label %.critedge.i, label %.lr.ph, !llvm.loop !17741

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %i.r = phi ptr [ %i.q, %bb.d ], [ %i.l, %bb.c ] ; 4 uses
  %i.s = phi i32 [ %i.p, %bb.d ], [ %i.k, %bb.c ] ; 4 uses
  %.0.i80299 = phi ptr [ %i.r, %bb.d ], [ %i.a, %bb.c ]
  %.027.i298 = phi i32 [ %i.s, %bb.d ], [ 0, %bb.c ]
  %i.t = load i8, ptr %i.r, align 1, !tbaa !38    ; 2 uses
  %i.u = add i8 %i.t, -48
  %or.cond.i = icmp ult i8 %i.u, 10
  br i1 %or.cond.i, label %bb.d, label %..critedge.i_crit_edge, !llvm.loop !17741

..critedge.i_crit_edge:                           ; preds = %.lr.ph
  br label %.critedge.i, !llvm.loop !17741

.critedge.i:                                      ; preds = %bb.d, %..critedge.i_crit_edge, %bb.c
  %.027.i.lcssa = phi i32 [ %.027.i298, %..critedge.i_crit_edge ], [ 0, %bb.c ], [ %i.s, %bb.d ]
  %.lcssa296 = phi i32 [ %i.s, %..critedge.i_crit_edge ], [ %i.k, %bb.c ], [ %i.p, %bb.d ] ; 2 uses
  %.0.lcssa.i = phi ptr [ %.0.i80299, %..critedge.i_crit_edge ], [ %scevgep.i, %bb.c ], [ %scevgep.i, %bb.d ]
  %.lcssa.i = phi ptr [ %i.r, %..critedge.i_crit_edge ], [ %scevgep37.i, %bb.c ], [ %scevgep37.i, %bb.d ] ; 5 uses
  %i.v = ptrtoint ptr %.lcssa.i to i64
  %i.w = ptrtoint ptr %i.a to i64
  %i.x = sub i64 %i.v, %i.w                       ; 2 uses
  store ptr %.lcssa.i, ptr %0, align 8, !tbaa !62
  %i.y = icmp slt i64 %i.x, 10
  br i1 %i.y, label %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit, label %bb.e

bb.e:                                             ; preds = %.critedge.i
  %i.z = icmp eq i64 %i.x, 10
  br i1 %i.z, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aa = zext i32 %.027.i.lcssa to i64
  %i.ab = mul nuw nsw i64 %i.aa, 10
  %i.ac = load i8, ptr %.0.lcssa.i, align 1, !tbaa !38
  %i.ad = sext i8 %i.ac to i64
  %i.ae = add nsw i64 %i.ad, 4294967248
  %i.af = and i64 %i.ae, 4294967294
  %i.ag = add nuw nsw i64 %i.af, %i.ab
  %i.ah = icmp samesign ult i64 %i.ag, 2147483648
  br i1 %i.ah, label %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  br label %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit

_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit: ; preds = %.critedge.i, %bb.f, %bb.g
  %.028.i = phi i32 [ %.lcssa296, %.critedge.i ], [ -1, %bb.g ], [ %.lcssa296, %bb.f ] ; 4 uses
  %.not = icmp eq ptr %.lcssa.i, %1
  br i1 %.not, label %bb.j, label %bb.h

bb.h:                                             ; preds = %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit
  %i.ai = load i8, ptr %.lcssa.i, align 1, !tbaa !38
  %i.aj = icmp eq i8 %i.ai, 36
  br i1 %i.aj, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ak = getelementptr inbounds nuw i8, ptr %.lcssa.i, i64 1 ; 2 uses
  store ptr %i.ak, ptr %0, align 8, !tbaa !62
  %.not69 = icmp eq i32 %.028.i, -1
  %spec.select = select i1 %.not69, i32 2147483647, i32 %.028.i
  br label %bb.n

bb.j:                                             ; preds = %bb.h, %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit
  %i.al = icmp eq i8 %i.c, 48
  br i1 %i.al, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i8 48, ptr %i.am, align 4, !tbaa !38
  %i.an = load i32, ptr %2, align 4, !tbaa !17740
  %i.ao = and i32 %i.an, -229377
  %i.ap = or disjoint i32 %i.ao, 32768
  store i32 %i.ap, ptr %2, align 4, !tbaa !17740
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  switch i32 %.028.i, label %.sink.split [
    i32 0, label %._crit_edge
    i32 -1, label %bb.m
  ]

._crit_edge:                                      ; preds = %bb.l
  %.pre = load ptr, ptr %0, align 8, !tbaa !62
  br label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.97) #31
  unreachable

bb.n:                                             ; preds = %._crit_edge, %bb.i, %bb.b
  %i.aq = phi ptr [ %i.a, %bb.b ], [ %i.ak, %bb.i ], [ %.pre, %._crit_edge ] ; 3 uses
  %.2 = phi i32 [ -1, %bb.b ], [ %spec.select, %bb.i ], [ -1, %._crit_edge ] ; 23 uses
  %.not11.i = icmp eq ptr %i.aq, %1
  br i1 %.not11.i, label %_ZN3fmt3v126detail11parse_flagsIcEEvRNS0_12format_specsERPKT_S7_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.n
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 4
  br label %bb.o

bb.o:                                             ; preds = %bb.v, %.lr.ph.i
  %i.as = phi ptr [ %i.aq, %.lr.ph.i ], [ %i.be, %bb.v ] ; 7 uses
  %i.at = load i8, ptr %i.as, align 1, !tbaa !38
  switch i8 %i.at, label %_ZN3fmt3v126detail11parse_flagsIcEEvRNS0_12format_specsERPKT_S7_.exit [
    i8 45, label %bb.p
    i8 43, label %bb.q
    i8 48, label %bb.r
    i8 32, label %bb.s
    i8 35, label %bb.u
  ]

bb.p:                                             ; preds = %bb.o
  %5 = load i32, ptr %2, align 4, !tbaa !17740
  %i.au = and i32 %5, -57
  %i.av = or disjoint i32 %i.au, 8
  store i32 %i.av, ptr %2, align 4, !tbaa !17740
  br label %bb.v

bb.q:                                             ; preds = %bb.o
  %6 = load i32, ptr %2, align 4, !tbaa !17740
  %i.aw = and i32 %6, -3073
  %i.ax = or disjoint i32 %i.aw, 2048
  store i32 %i.ax, ptr %2, align 4, !tbaa !17740
  br label %bb.v

bb.r:                                             ; preds = %bb.o
  store i8 48, ptr %i.ar, align 4, !tbaa !38
  %7 = load i32, ptr %2, align 4, !tbaa !17740
  %i.ay = and i32 %7, -229377
  %i.az = or disjoint i32 %i.ay, 32768
  store i32 %i.az, ptr %2, align 4, !tbaa !17740
  %.pre.i81 = load ptr, ptr %0, align 8, !tbaa !62
  br label %bb.v

bb.s:                                             ; preds = %bb.o
  %8 = load i32, ptr %2, align 4, !tbaa !17740    ; 2 uses
  %i.ba = and i32 %8, 3072
  %.not10.i = icmp eq i32 %i.ba, 2048
  br i1 %.not10.i, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bb = or i32 %8, 3072
  store i32 %i.bb, ptr %2, align 4, !tbaa !17740
  br label %bb.v

bb.u:                                             ; preds = %bb.o
  %9 = load i32, ptr %2, align 4, !tbaa !17740
  %i.bc = or i32 %9, 8192
  store i32 %i.bc, ptr %2, align 4, !tbaa !17740
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p
  %i.bd = phi ptr [ %i.as, %bb.p ], [ %i.as, %bb.q ], [ %.pre.i81, %bb.r ], [ %i.as, %bb.u ], [ %i.as, %bb.t ], [ %i.as, %bb.s ]
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 1 ; 4 uses
  store ptr %i.be, ptr %0, align 8, !tbaa !62
  %.not.i = icmp eq ptr %i.be, %1
  br i1 %.not.i, label %_ZN3fmt3v126detail11parse_flagsIcEEvRNS0_12format_specsERPKT_S7_.exit, label %bb.o, !llvm.loop !17797

_ZN3fmt3v126detail11parse_flagsIcEEvRNS0_12format_specsERPKT_S7_.exit: ; preds = %bb.o, %bb.v, %bb.n
  %i.bf = phi ptr [ %i.aq, %bb.n ], [ %i.as, %bb.o ], [ %i.be, %bb.v ] ; 10 uses
  %.not70 = icmp eq ptr %i.bf, %1
  br i1 %.not70, label %bb.de, label %bb.w

bb.w:                                             ; preds = %_ZN3fmt3v126detail11parse_flagsIcEEvRNS0_12format_specsERPKT_S7_.exit
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !38  ; 3 uses
  %i.bh = add i8 %i.bg, -48
  %or.cond73 = icmp ult i8 %i.bh, 10
  br i1 %or.cond73, label %bb.x, label %bb.ac

bb.x:                                             ; preds = %bb.w
  %i.bi = ptrtoaddr ptr %1 to i64                 ; 2 uses
  %i.bj = ptrtoaddr ptr %i.bf to i64              ; 2 uses
  %i.bk = xor i64 %i.bj, -1
  %i.bl = getelementptr i8, ptr %i.bf, i64 %i.bk
  %scevgep.i82 = getelementptr i8, ptr %i.bl, i64 %i.bi ; 2 uses
  %i.bm = sub i64 %i.bi, %i.bj
  %scevgep37.i83 = getelementptr i8, ptr %i.bf, i64 %i.bm ; 2 uses
  %i.bn = zext nneg i8 %i.bg to i32
  %i.bo = add nsw i32 %i.bn, -48                  ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bf, i64 1 ; 2 uses
  %.not34.i87323 = icmp eq ptr %i.bp, %1
  br i1 %.not34.i87323, label %.critedge.i89, label %.lr.ph327

bb.y:                                             ; preds = %.lr.ph327
  %i.bq = mul i32 %i.bw, 10
  %i.br = zext nneg i8 %i.bx to i32
  %i.bs = add nsw i32 %i.br, -48
  %i.bt = add i32 %i.bs, %i.bq                    ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bv, i64 1 ; 2 uses
  %.not34.i87 = icmp eq ptr %i.bu, %1
  br i1 %.not34.i87, label %.critedge.i89, label %.lr.ph327, !llvm.loop !17741

.lr.ph327:                                        ; preds = %bb.x, %bb.y
  %i.bv = phi ptr [ %i.bu, %bb.y ], [ %i.bp, %bb.x ] ; 4 uses
  %i.bw = phi i32 [ %i.bt, %bb.y ], [ %i.bo, %bb.x ] ; 4 uses
  %.0.i86325 = phi ptr [ %i.bv, %bb.y ], [ %i.bf, %bb.x ]
  %.027.i85324 = phi i32 [ %i.bw, %bb.y ], [ 0, %bb.x ]
  %i.bx = load i8, ptr %i.bv, align 1, !tbaa !38  ; 2 uses
  %i.by = add i8 %i.bx, -48
  %or.cond.i88 = icmp ult i8 %i.by, 10
  br i1 %or.cond.i88, label %bb.y, label %..critedge.i89_crit_edge, !llvm.loop !17741

..critedge.i89_crit_edge:                         ; preds = %.lr.ph327
  br label %.critedge.i89, !llvm.loop !17741

.critedge.i89:                                    ; preds = %bb.y, %..critedge.i89_crit_edge, %bb.x
  %.027.i85.lcssa = phi i32 [ %.027.i85324, %..critedge.i89_crit_edge ], [ 0, %bb.x ], [ %i.bw, %bb.y ]
  %.lcssa = phi i32 [ %i.bw, %..critedge.i89_crit_edge ], [ %i.bo, %bb.x ], [ %i.bt, %bb.y ] ; 2 uses
  %.0.lcssa.i90 = phi ptr [ %.0.i86325, %..critedge.i89_crit_edge ], [ %scevgep.i82, %bb.x ], [ %scevgep.i82, %bb.y ]
  %.lcssa.i91 = phi ptr [ %i.bv, %..critedge.i89_crit_edge ], [ %scevgep37.i83, %bb.x ], [ %scevgep37.i83, %bb.y ] ; 2 uses
  %i.bz = ptrtoint ptr %.lcssa.i91 to i64
  %i.ca = ptrtoint ptr %i.bf to i64
  %i.cb = sub i64 %i.bz, %i.ca                    ; 2 uses
  store ptr %.lcssa.i91, ptr %0, align 8, !tbaa !62
  %i.cc = icmp slt i64 %i.cb, 10
  br i1 %i.cc, label %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit93, label %bb.z

bb.z:                                             ; preds = %.critedge.i89
  %i.cd = icmp eq i64 %i.cb, 10
  br i1 %i.cd, label %bb.aa, label %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit93.thread

bb.aa:                                            ; preds = %bb.z
  %i.ce = zext i32 %.027.i85.lcssa to i64
  %i.cf = mul nuw nsw i64 %i.ce, 10
  %i.cg = load i8, ptr %.0.lcssa.i90, align 1, !tbaa !38
  %i.ch = sext i8 %i.cg to i64
  %i.ci = add nsw i64 %i.ch, 4294967248
  %i.cj = and i64 %i.ci, 4294967294
  %i.ck = add nuw nsw i64 %i.cj, %i.cf
  %i.cl = icmp samesign ult i64 %i.ck, 2147483648
  br i1 %i.cl, label %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit93, label %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit93.thread

_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit93.thread: ; preds = %bb.z, %bb.aa
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 -1, ptr %i.cm, align 4, !tbaa !17798
  br label %bb.ab

_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit93: ; preds = %.critedge.i89, %bb.aa
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %.lcssa, ptr %i.cn, align 4, !tbaa !17798
  %i.co = icmp eq i32 %.lcssa, -1
  br i1 %i.co, label %bb.ab, label %bb.de

bb.ab:                                            ; preds = %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit93.thread, %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit93
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.97) #31
  unreachable

bb.ac:                                            ; preds = %bb.w
  %i.cp = icmp eq i8 %i.bg, 42
  br i1 %i.cp, label %bb.ad, label %bb.de

bb.ad:                                            ; preds = %bb.ac
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bf, i64 1 ; 8 uses
  store ptr %i.cq, ptr %0, align 8, !tbaa !62
  %.not71 = icmp eq ptr %i.cq, %1
  br i1 %.not71, label %bb.bx, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !38  ; 2 uses
  %i.cs = add i8 %i.cr, -48
  %or.cond74 = icmp ult i8 %i.cs, 10
  br i1 %or.cond74, label %bb.af, label %bb.bx

bb.af:                                            ; preds = %bb.ae
  %i.ct = ptrtoaddr ptr %1 to i64                 ; 2 uses
  %i.cu = ptrtoaddr ptr %i.cq to i64              ; 2 uses
  %i.cv = xor i64 %i.cu, -1
  %i.cw = getelementptr i8, ptr %i.cq, i64 %i.cv
  %scevgep.i94 = getelementptr i8, ptr %i.cw, i64 %i.ct ; 2 uses
  %i.cx = sub i64 %i.ct, %i.cu
  %scevgep37.i95 = getelementptr i8, ptr %i.cq, i64 %i.cx ; 2 uses
  %i.cy = zext nneg i8 %i.cr to i32
  %i.cz = add nsw i32 %i.cy, -48                  ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.bf, i64 2 ; 2 uses
  %.not34.i99309 = icmp eq ptr %i.da, %1
  br i1 %.not34.i99309, label %.critedge.i101, label %.lr.ph313

bb.ag:                                            ; preds = %.lr.ph313
  %i.db = mul i32 %i.dh, 10
  %i.dc = zext nneg i8 %i.di to i32
  %i.dd = add nsw i32 %i.dc, -48
  %i.de = add i32 %i.dd, %i.db                    ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.dg, i64 1 ; 2 uses
  %.not34.i99 = icmp eq ptr %i.df, %1
  br i1 %.not34.i99, label %.critedge.i101, label %.lr.ph313, !llvm.loop !17741

.lr.ph313:                                        ; preds = %bb.af, %bb.ag
  %i.dg = phi ptr [ %i.df, %bb.ag ], [ %i.da, %bb.af ] ; 4 uses
  %i.dh = phi i32 [ %i.de, %bb.ag ], [ %i.cz, %bb.af ] ; 4 uses
  %.0.i98311 = phi ptr [ %i.dg, %bb.ag ], [ %i.cq, %bb.af ]
  %.027.i97310 = phi i32 [ %i.dh, %bb.ag ], [ 0, %bb.af ]
  %i.di = load i8, ptr %i.dg, align 1, !tbaa !38  ; 2 uses
  %i.dj = add i8 %i.di, -48
  %or.cond.i100 = icmp ult i8 %i.dj, 10
  br i1 %or.cond.i100, label %bb.ag, label %..critedge.i101_crit_edge, !llvm.loop !17741

..critedge.i101_crit_edge:                        ; preds = %.lr.ph313
  br label %.critedge.i101, !llvm.loop !17741

.critedge.i101:                                   ; preds = %bb.ag, %..critedge.i101_crit_edge, %bb.af
  %.027.i97.lcssa = phi i32 [ %.027.i97310, %..critedge.i101_crit_edge ], [ 0, %bb.af ], [ %i.dh, %bb.ag ]
  %.lcssa295 = phi i32 [ %i.dh, %..critedge.i101_crit_edge ], [ %i.cz, %bb.af ], [ %i.de, %bb.ag ] ; 2 uses
  %.0.lcssa.i102 = phi ptr [ %.0.i98311, %..critedge.i101_crit_edge ], [ %scevgep.i94, %bb.af ], [ %scevgep.i94, %bb.ag ]
  %.lcssa.i103 = phi ptr [ %i.dg, %..critedge.i101_crit_edge ], [ %scevgep37.i95, %bb.af ], [ %scevgep37.i95, %bb.ag ] ; 5 uses
  %i.dk = ptrtoint ptr %.lcssa.i103 to i64
  %i.dl = ptrtoint ptr %i.cq to i64
  %i.dm = sub i64 %i.dk, %i.dl                    ; 2 uses
  store ptr %.lcssa.i103, ptr %0, align 8, !tbaa !62
  %i.dn = icmp slt i64 %i.dm, 10
  br i1 %i.dn, label %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit105, label %bb.ah

bb.ah:                                            ; preds = %.critedge.i101
  %i.do = icmp eq i64 %i.dm, 10
  br i1 %i.do, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.dp = zext i32 %.027.i97.lcssa to i64
  %i.dq = mul nuw nsw i64 %i.dp, 10
  %i.dr = load i8, ptr %.0.lcssa.i102, align 1, !tbaa !38
  %i.ds = sext i8 %i.dr to i64
  %i.dt = add nsw i64 %i.ds, 4294967248
  %i.du = and i64 %i.dt, 4294967294
  %i.dv = add nuw nsw i64 %i.du, %i.dq
  %i.dw = icmp samesign ult i64 %i.dv, 2147483648
  br i1 %i.dw, label %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit105, label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  br label %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit105

_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit105: ; preds = %.critedge.i101, %bb.ai, %bb.aj
  %.028.i104 = phi i32 [ %.lcssa295, %.critedge.i101 ], [ -1, %bb.aj ], [ %.lcssa295, %bb.ai ] ; 2 uses
  %.not72 = icmp eq ptr %.lcssa.i103, %1
  br i1 %.not72, label %bb.bw, label %bb.ak

bb.ak:                                            ; preds = %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit105
  %i.dx = load i8, ptr %.lcssa.i103, align 1, !tbaa !38
  %i.dy = icmp eq i8 %i.dx, 36
  br i1 %i.dy, label %bb.al, label %bb.bw

bb.al:                                            ; preds = %bb.ak
  %i.dz = getelementptr inbounds nuw i8, ptr %.lcssa.i103, i64 1
  store ptr %i.dz, ptr %0, align 8, !tbaa !62
  %i.ea = icmp slt i32 %.028.i104, 0
  %i.eb = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ec = load i32, ptr %i.eb, align 8, !tbaa !17733, !noalias !17799 ; 4 uses
  br i1 %i.ea, label %bb.am, label %bb.ao

bb.am:                                            ; preds = %bb.al
  %i.ed = icmp slt i32 %i.ec, 0
  br i1 %i.ed, label %bb.an, label %_ZN3fmt3v1213parse_contextIcE11next_arg_idEv.exit.i

bb.an:                                            ; preds = %bb.am
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.102) #31, !noalias !17799
end_hunk_0
begin_hunk_1_@_ZN3fmt3v126detail7vprintfIwNS0_20basic_printf_contextIwEEEEvRNS1_6bufferIT_EENS0_17basic_string_viewIS6_EENS0_17basic_format_argsIT0_EE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  br label %_ZNK3fmt3v1216basic_format_argINS0_20basic_printf_contextIwEEE5visitINS0_6detail20printf_arg_formatterIwEEEEDTclfp_Li0EEEOT_.exit

bb.jg:                                            ; preds = %bb.jd
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(16) %25, i64 16, i1 false)
  %i.sv = load i32, ptr %9, align 4, !tbaa !17740
  %i.sw = and i32 %i.sv, -8
  store i32 %i.sw, ptr %9, align 4, !tbaa !17740
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  store ptr @.str.726, ptr %8, align 8, !tbaa !62
  store i64 5, ptr %.sroa.2.0..sroa_idx.i.i.i288, align 8, !tbaa !56
  %i.sx = call ptr @_ZN3fmt3v126detail12write_paddedIwLNS0_5alignE1ENS0_14basic_appenderIwEERZNS1_11write_bytesIwLS3_1ES5_EET1_S7_NS0_17basic_string_viewIcEERKNS0_12format_specsEEUlS5_E_EES7_S7_SC_mmOT2_(ptr nonnull %0, ptr noundef nonnull align 4 dereferenceable(16) %9, i64 noundef 5, i64 noundef 5, ptr noundef nonnull align 8 dereferenceable(16) %8) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  br label %_ZNK3fmt3v1216basic_format_argINS0_20basic_printf_contextIwEEE5visitINS0_6detail20printf_arg_formatterIwEEEEDTclfp_Li0EEEOT_.exit

bb.jh:                                            ; preds = %bb.hq
  %.sroa.0.0.copyload.i115 = load ptr, ptr %26, align 16, !tbaa !17773
  %.sroa.2.0.copyload.i117 = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !17773
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %7, i8 0, i64 20, i1 false)
  call void %.sroa.2.0.copyload.i117(ptr noundef %.sroa.0.0.copyload.i115, ptr noundef nonnull align 8 dereferenceable(20) %7, ptr noundef nonnull align 8 dereferenceable(24) %23), !inline_history !18273
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  br label %_ZNK3fmt3v1216basic_format_argINS0_20basic_printf_contextIwEEE5visitINS0_6detail20printf_arg_formatterIwEEEEDTclfp_Li0EEEOT_.exit

_ZNK3fmt3v1216basic_format_argINS0_20basic_printf_contextIwEEE5visitINS0_6detail20printf_arg_formatterIwEEEEDTclfp_Li0EEEOT_.exit: ; preds = %bb.hq, %bb.jg, %_ZN3fmt3v126detail20printf_arg_formatterIwE5writeIPKvEEvT_.exit.i, %bb.ja, %bb.iz, %bb.it, %_ZN3fmt3v126detail5writeIwiTnNSt9enable_ifIXaaaasr11is_integralIT0_EE5valuentsr3std7is_sameIS4_bEE5valuentsr3std7is_sameIS4_T_EE5valueEiE4typeELi0EEENS0_14basic_appenderIS5_EES9_S4_RKNS0_12format_specsENS0_10locale_refE.exit.i.i, %_ZN3fmt3v126detail20printf_arg_formatterIwEclIiTnNSt9enable_ifIXsr6detail11is_integralIT_EE5valueEiE4typeELi0EEEvS6_.exit, %_ZN3fmt3v126detail20printf_arg_formatterIwEclIjTnNSt9enable_ifIXsr6detail11is_integralIT_EE5valueEiE4typeELi0EEEvS6_.exit, %_ZN3fmt3v126detail20printf_arg_formatterIwEclIxTnNSt9enable_ifIXsr6detail11is_integralIT_EE5valueEiE4typeELi0EEEvS6_.exit, %_ZN3fmt3v126detail20printf_arg_formatterIwEclIyTnNSt9enable_ifIXsr6detail11is_integralIT_EE5valueEiE4typeELi0EEEvS6_.exit, %_ZN3fmt3v126detail20printf_arg_formatterIwEclInTnNSt9enable_ifIXsr6detail11is_integralIT_EE5valueEiE4typeELi0EEEvS6_.exit, %_ZN3fmt3v126detail20printf_arg_formatterIwEclIoTnNSt9enable_ifIXsr6detail11is_integralIT_EE5valueEiE4typeELi0EEEvS6_.exit, %bb.iu, %bb.iv, %bb.iw, %bb.ix, %_ZN3fmt3v126detail20printf_arg_formatterIwEclENS0_17basic_string_viewIwEE.exit, %bb.jh
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #28
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !18216
  br label %bb.ji

bb.ji:                                            ; preds = %_ZNK3fmt3v1216basic_format_argINS0_20basic_printf_contextIwEEE5visitINS0_6detail20printf_arg_formatterIwEEEEDTclfp_Li0EEEOT_.exit, %bb.f
  %i.sy = phi ptr [ %i.an, %bb.f ], [ %.pre, %_ZNK3fmt3v1216basic_format_argINS0_20basic_printf_contextIwEEE5visitINS0_6detail20printf_arg_formatterIwEEEEDTclfp_Li0EEEOT_.exit ] ; 2 uses
  %.1 = phi ptr [ %i.an, %bb.f ], [ %i.oa, %_ZNK3fmt3v1216basic_format_argINS0_20basic_printf_contextIwEEE5visitINS0_6detail20printf_arg_formatterIwEEEEDTclfp_Li0EEEOT_.exit ] ; 2 uses
  %.not = icmp eq ptr %i.sy, %i.e
  br i1 %.not, label %.loopexit, label %.lr.ph.i.preheader

.loopexit:                                        ; preds = %bb.ji, %bb.a, %bb.c
  %i.sz = phi ptr [ %i.e, %bb.c ], [ %1, %bb.a ], [ %i.e, %bb.ji ]
  %.0443 = phi ptr [ %.0453, %bb.c ], [ %1, %bb.a ], [ %.1, %bb.ji ] ; 3 uses
  %i.ta = ptrtoint ptr %i.sz to i64
  %i.tb = ptrtoint ptr %.0443 to i64
  %i.tc = sub i64 %i.ta, %i.tb
  %i.td = getelementptr inbounds nuw i8, ptr %.0443, i64 %i.tc
  %i.te = call ptr @_ZN3fmt3v126detail13copy_noinlineIwPKwNS0_14basic_appenderIwEEEET1_T0_S8_S7_(ptr noundef %.0443, ptr noundef %i.td, ptr nonnull %0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #28
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v1219basic_memory_bufferIwLm500ENS0_6detail9allocatorIwEEE4growERNS2_6bufferIwEEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !3042 ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = add i64 %i.c, %i.b                       ; 3 uses
  %i.e = icmp ugt i64 %1, %i.d
  br i1 %i.e, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = icmp ugt i64 %i.d, 4611686018427387903
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = tail call noundef i64 @llvm.umax.i64(i64 %1, i64 4611686018427387903)
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i64 [ %i.d, %bb.b ], [ %i.g, %bb.c ], [ %1, %bb.a ] ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !3041   ; 3 uses
  %i.i = shl i64 %.0, 2
  %i.j = tail call noundef ptr @_ZN3fmt3v126detail8allocateEm(i64 noundef %i.i) ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !3043 ; 2 uses
  %i.m = icmp ule i64 %i.l, %.0
  tail call void @llvm.assume(i1 %i.m)
  %i.n = shl i64 %i.l, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.j, ptr align 4 %i.h, i64 %i.n, i1 false)
  store ptr %i.j, ptr %0, align 8, !tbaa !3041
  store i64 %.0, ptr %i.a, align 8, !tbaa !3042
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.not = icmp eq ptr %i.h, %i.o
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @free(ptr noundef %i.h) #28
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN3fmt3v126detail12parse_headerIwZNS1_7vprintfIwNS0_20basic_printf_contextIwEEEEvRNS1_6bufferIT_EENS0_17basic_string_viewIS7_EENS0_17basic_format_argsIT0_EEEUliE_EEiRPKS7_SH_RNS0_12format_specsESD_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr %3, ptr %4) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !18216  ; 5 uses
  %i.b = icmp eq ptr %i.a, %1
  br i1 %i.b, label %bb.dd, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %i.a, align 4, !tbaa !3045 ; 3 uses
  %i.d = add i32 %i.c, -48
  %or.cond = icmp ult i32 %i.d, 10
  br i1 %or.cond, label %.preheader193, label %bb.m

.preheader193:                                    ; preds = %bb.b, %bb.c
  %i.e = phi i32 [ %i.j, %bb.c ], [ %i.c, %bb.b ]
  %.027.i = phi i32 [ %i.h, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %.0.i79 = phi ptr [ %i.i, %bb.c ], [ %i.a, %bb.b ] ; 2 uses
  %i.f = mul i32 %.027.i, 10
  %i.g = add nsw i32 %i.e, -48                    ; 2 uses
  %i.h = add i32 %i.f, %i.g                       ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.0.i79, i64 4 ; 6 uses
  %.not34.i = icmp eq ptr %i.i, %1                ; 2 uses
  br i1 %.not34.i, label %.critedge.i, label %bb.c

bb.c:                                             ; preds = %.preheader193
  %i.j = load i32, ptr %i.i, align 4, !tbaa !3045 ; 2 uses
  %i.k = add i32 %i.j, -48
  %or.cond.i = icmp ult i32 %i.k, 10
  br i1 %or.cond.i, label %.preheader193, label %.critedge.i, !llvm.loop !18222

.critedge.i:                                      ; preds = %bb.c, %.preheader193
  %i.l = ptrtoint ptr %i.i to i64
  %i.m = ptrtoint ptr %i.a to i64
  %i.n = sub i64 %i.l, %i.m                       ; 2 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !18216
  %i.o = icmp slt i64 %i.n, 40
  br i1 %i.o, label %_ZN3fmt3v126detail21parse_nonnegative_intIwEEiRPKT_S5_i.exit, label %bb.d

bb.d:                                             ; preds = %.critedge.i
  %i.p = icmp eq i64 %i.n, 40
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.q = zext i32 %.027.i to i64
  %i.r = mul nuw nsw i64 %i.q, 10
  %i.s = zext nneg i32 %i.g to i64
  %i.t = add nuw nsw i64 %i.r, %i.s
  %i.u = icmp samesign ult i64 %i.t, 2147483648
  br i1 %i.u, label %_ZN3fmt3v126detail21parse_nonnegative_intIwEEiRPKT_S5_i.exit, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  br label %_ZN3fmt3v126detail21parse_nonnegative_intIwEEiRPKT_S5_i.exit

_ZN3fmt3v126detail21parse_nonnegative_intIwEEiRPKT_S5_i.exit: ; preds = %.critedge.i, %bb.e, %bb.f
  %.028.i = phi i32 [ %i.h, %.critedge.i ], [ -1, %bb.f ], [ %i.h, %bb.e ] ; 4 uses
  br i1 %.not34.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %_ZN3fmt3v126detail21parse_nonnegative_intIwEEiRPKT_S5_i.exit
  %i.v = load i32, ptr %i.i, align 4, !tbaa !3045
  %i.w = icmp eq i32 %i.v, 36
  br i1 %i.w, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %.0.i79, i64 8 ; 2 uses
  store ptr %i.x, ptr %0, align 8, !tbaa !18216
  %.not68 = icmp eq i32 %.028.i, -1
  %spec.select = select i1 %.not68, i32 2147483647, i32 %.028.i
  br label %bb.m

bb.i:                                             ; preds = %bb.g, %_ZN3fmt3v126detail21parse_nonnegative_intIwEEiRPKT_S5_i.exit
  %i.y = icmp eq i32 %i.c, 48
  br i1 %i.y, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i8 48, ptr %i.z, align 4, !tbaa !38
  %i.aa = load i32, ptr %2, align 4, !tbaa !17740
  %i.ab = and i32 %i.aa, -229377
  %i.ac = or disjoint i32 %i.ab, 32768
  store i32 %i.ac, ptr %2, align 4, !tbaa !17740
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  switch i32 %.028.i, label %.sink.split [
    i32 0, label %._crit_edge
    i32 -1, label %bb.l
  ]

._crit_edge:                                      ; preds = %bb.k
  %.pre = load ptr, ptr %0, align 8, !tbaa !18216
  br label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.97) #31
  unreachable

bb.m:                                             ; preds = %._crit_edge, %bb.h, %bb.b
  %i.ad = phi ptr [ %i.a, %bb.b ], [ %i.x, %bb.h ], [ %.pre, %._crit_edge ] ; 3 uses
  %.2 = phi i32 [ -1, %bb.b ], [ %spec.select, %bb.h ], [ -1, %._crit_edge ] ; 23 uses
  %.not11.i = icmp eq ptr %i.ad, %1
  br i1 %.not11.i, label %_ZN3fmt3v126detail11parse_flagsIwEEvRNS0_12format_specsERPKT_S7_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.m
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 4
  br label %bb.n

bb.n:                                             ; preds = %bb.u, %.lr.ph.i
  %i.af = phi ptr [ %i.ad, %.lr.ph.i ], [ %i.ar, %bb.u ] ; 7 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !3045
  switch i32 %i.ag, label %_ZN3fmt3v126detail11parse_flagsIwEEvRNS0_12format_specsERPKT_S7_.exit [
    i32 45, label %bb.o
    i32 43, label %bb.p
    i32 48, label %bb.q
    i32 32, label %bb.r
    i32 35, label %bb.t
  ]

bb.o:                                             ; preds = %bb.n
  %5 = load i32, ptr %2, align 4, !tbaa !17740
  %i.ah = and i32 %5, -57
  %i.ai = or disjoint i32 %i.ah, 8
  store i32 %i.ai, ptr %2, align 4, !tbaa !17740
  br label %bb.u

bb.p:                                             ; preds = %bb.n
  %6 = load i32, ptr %2, align 4, !tbaa !17740
  %i.aj = and i32 %6, -3073
  %i.ak = or disjoint i32 %i.aj, 2048
  store i32 %i.ak, ptr %2, align 4, !tbaa !17740
  br label %bb.u

bb.q:                                             ; preds = %bb.n
  store i8 48, ptr %i.ae, align 4, !tbaa !38
  %7 = load i32, ptr %2, align 4, !tbaa !17740
  %i.al = and i32 %7, -229377
  %i.am = or disjoint i32 %i.al, 32768
  store i32 %i.am, ptr %2, align 4, !tbaa !17740
  %.pre.i80 = load ptr, ptr %0, align 8, !tbaa !18216
  br label %bb.u

bb.r:                                             ; preds = %bb.n
  %8 = load i32, ptr %2, align 4, !tbaa !17740    ; 2 uses
  %i.an = and i32 %8, 3072
  %.not10.i = icmp eq i32 %i.an, 2048
  br i1 %.not10.i, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ao = or i32 %8, 3072
  store i32 %i.ao, ptr %2, align 4, !tbaa !17740
  br label %bb.u

bb.t:                                             ; preds = %bb.n
  %9 = load i32, ptr %2, align 4, !tbaa !17740
  %i.ap = or i32 %9, 8192
  store i32 %i.ap, ptr %2, align 4, !tbaa !17740
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o
  %i.aq = phi ptr [ %i.af, %bb.o ], [ %i.af, %bb.p ], [ %.pre.i80, %bb.q ], [ %i.af, %bb.t ], [ %i.af, %bb.s ], [ %i.af, %bb.r ]
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 4 ; 4 uses
  store ptr %i.ar, ptr %0, align 8, !tbaa !18216
  %.not.i = icmp eq ptr %i.ar, %1
  br i1 %.not.i, label %_ZN3fmt3v126detail11parse_flagsIwEEvRNS0_12format_specsERPKT_S7_.exit, label %bb.n, !llvm.loop !18274

_ZN3fmt3v126detail11parse_flagsIwEEvRNS0_12format_specsERPKT_S7_.exit: ; preds = %bb.n, %bb.u, %bb.m
  %i.as = phi ptr [ %i.ad, %bb.m ], [ %i.af, %bb.n ], [ %i.ar, %bb.u ] ; 5 uses
  %.not69 = icmp eq ptr %i.as, %1
  br i1 %.not69, label %bb.dd, label %bb.v

bb.v:                                             ; preds = %_ZN3fmt3v126detail11parse_flagsIwEEvRNS0_12format_specsERPKT_S7_.exit
  %i.at = load i32, ptr %i.as, align 4, !tbaa !3045 ; 3 uses
  %i.au = add i32 %i.at, -48
  %or.cond72 = icmp ult i32 %i.au, 10
  br i1 %or.cond72, label %.preheader, label %bb.aa

.preheader:                                       ; preds = %bb.v, %bb.w
  %i.av = phi i32 [ %i.ba, %bb.w ], [ %i.at, %bb.v ]
  %.027.i82 = phi i32 [ %i.ay, %bb.w ], [ 0, %bb.v ] ; 2 uses
  %.0.i83 = phi ptr [ %i.az, %bb.w ], [ %i.as, %bb.v ]
  %i.aw = mul i32 %.027.i82, 10
  %i.ax = add nsw i32 %i.av, -48                  ; 2 uses
  %i.ay = add i32 %i.aw, %i.ax                    ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.0.i83, i64 4 ; 5 uses
  %.not34.i84 = icmp eq ptr %i.az, %1
  br i1 %.not34.i84, label %.critedge.i86, label %bb.w

bb.w:                                             ; preds = %.preheader
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !3045 ; 2 uses
  %i.bb = add i32 %i.ba, -48
  %or.cond.i85 = icmp ult i32 %i.bb, 10
  br i1 %or.cond.i85, label %.preheader, label %.critedge.i86, !llvm.loop !18222

.critedge.i86:                                    ; preds = %bb.w, %.preheader
  %i.bc = ptrtoint ptr %i.az to i64
  %i.bd = ptrtoint ptr %i.as to i64
  %i.be = sub i64 %i.bc, %i.bd                    ; 2 uses
  store ptr %i.az, ptr %0, align 8, !tbaa !18216
  %i.bf = icmp slt i64 %i.be, 40
  br i1 %i.bf, label %_ZN3fmt3v126detail21parse_nonnegative_intIwEEiRPKT_S5_i.exit88, label %bb.x

bb.x:                                             ; preds = %.critedge.i86
  %i.bg = icmp eq i64 %i.be, 40
  br i1 %i.bg, label %bb.y, label %_ZN3fmt3v126detail21parse_nonnegative_intIwEEiRPKT_S5_i.exit88.thread

bb.y:                                             ; preds = %bb.x
  %i.bh = zext i32 %.027.i82 to i64
  %i.bi = mul nuw nsw i64 %i.bh, 10
  %i.bj = zext nneg i32 %i.ax to i64
  %i.bk = add nuw nsw i64 %i.bi, %i.bj
  %i.bl = icmp samesign ult i64 %i.bk, 2147483648
  br i1 %i.bl, label %_ZN3fmt3v126detail21parse_nonnegative_intIwEEiRPKT_S5_i.exit88, label %_ZN3fmt3v126detail21parse_nonnegative_intIwEEiRPKT_S5_i.exit88.thread

_ZN3fmt3v126detail21parse_nonnegative_intIwEEiRPKT_S5_i.exit88.thread: ; preds = %bb.x, %bb.y
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 -1, ptr %i.bm, align 4, !tbaa !17798
  br label %bb.z

_ZN3fmt3v126detail21parse_nonnegative_intIwEEiRPKT_S5_i.exit88: ; preds = %.critedge.i86, %bb.y
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.ay, ptr %i.bn, align 4, !tbaa !17798
  %i.bo = icmp eq i32 %i.ay, -1
  br i1 %i.bo, label %bb.z, label %bb.dd

bb.z:                                             ; preds = %_ZN3fmt3v126detail21parse_nonnegative_intIwEEiRPKT_S5_i.exit88.thread, %_ZN3fmt3v126detail21parse_nonnegative_intIwEEiRPKT_S5_i.exit88
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.97) #31
  unreachable

bb.aa:                                            ; preds = %bb.v
  %i.bp = icmp eq i32 %i.at, 42
  br i1 %i.bp, label %bb.ab, label %bb.dd

bb.ab:                                            ; preds = %bb.aa
  %i.bq = getelementptr inbounds nuw i8, ptr %i.as, i64 4 ; 5 uses
  store ptr %i.bq, ptr %0, align 8, !tbaa !18216
  %.not70 = icmp eq ptr %i.bq, %1
  br i1 %.not70, label %bb.bv, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !3045 ; 2 uses
  %i.bs = add i32 %i.br, -48
  %or.cond73 = icmp ult i32 %i.bs, 10
  br i1 %or.cond73, label %.preheader192, label %bb.bv

.preheader192:                                    ; preds = %bb.ac, %bb.ad
  %i.bt = phi i32 [ %i.by, %bb.ad ], [ %i.br, %bb.ac ]
  %.027.i90 = phi i32 [ %i.bw, %bb.ad ], [ 0, %bb.ac ] ; 2 uses
  %.0.i91 = phi ptr [ %i.bx, %bb.ad ], [ %i.bq, %bb.ac ] ; 2 uses
  %i.bu = mul i32 %.027.i90, 10
  %i.bv = add nsw i32 %i.bt, -48                  ; 2 uses
  %i.bw = add i32 %i.bu, %i.bv                    ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.0.i91, i64 4 ; 6 uses
  %.not34.i92 = icmp eq ptr %i.bx, %1             ; 2 uses
  br i1 %.not34.i92, label %.critedge.i94, label %bb.ad

bb.ad:                                            ; preds = %.preheader192
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !3045 ; 2 uses
  %i.bz = add i32 %i.by, -48
  %or.cond.i93 = icmp ult i32 %i.bz, 10
  br i1 %or.cond.i93, label %.preheader192, label %.critedge.i94, !llvm.loop !18222

.critedge.i94:                                    ; preds = %bb.ad, %.preheader192
  %i.ca = ptrtoint ptr %i.bx to i64
  %i.cb = ptrtoint ptr %i.bq to i64
  %i.cc = sub i64 %i.ca, %i.cb                    ; 2 uses
  store ptr %i.bx, ptr %0, align 8, !tbaa !18216
  %i.cd = icmp slt i64 %i.cc, 40
  br i1 %i.cd, label %_ZN3fmt3v126detail21parse_nonnegative_intIwEEiRPKT_S5_i.exit96, label %bb.ae

bb.ae:                                            ; preds = %.critedge.i94
  %i.ce = icmp eq i64 %i.cc, 40
  br i1 %i.ce, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.cf = zext i32 %.027.i90 to i64
  %i.cg = mul nuw nsw i64 %i.cf, 10
  %i.ch = zext nneg i32 %i.bv to i64
  %i.ci = add nuw nsw i64 %i.cg, %i.ch
  %i.cj = icmp samesign ult i64 %i.ci, 2147483648
  br i1 %i.cj, label %_ZN3fmt3v126detail21parse_nonnegative_intIwEEiRPKT_S5_i.exit96, label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  br label %_ZN3fmt3v126detail21parse_nonnegative_intIwEEiRPKT_S5_i.exit96

_ZN3fmt3v126detail21parse_nonnegative_intIwEEiRPKT_S5_i.exit96: ; preds = %.critedge.i94, %bb.af, %bb.ag
  %.028.i95 = phi i32 [ %i.bw, %.critedge.i94 ], [ -1, %bb.ag ], [ %i.bw, %bb.af ] ; 2 uses
  br i1 %.not34.i92, label %bb.bu, label %bb.ah

bb.ah:                                            ; preds = %_ZN3fmt3v126detail21parse_nonnegative_intIwEEiRPKT_S5_i.exit96
  %i.ck = load i32, ptr %i.bx, align 4, !tbaa !3045
  %i.cl = icmp eq i32 %i.ck, 36
  br i1 %i.cl, label %bb.ai, label %bb.bu

bb.ai:                                            ; preds = %bb.ah
  %i.cm = getelementptr inbounds nuw i8, ptr %.0.i91, i64 8
  store ptr %i.cm, ptr %0, align 8, !tbaa !18216
  %i.cn = icmp slt i32 %.028.i95, 0
  %i.co = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.cp = load i32, ptr %i.co, align 8, !tbaa !18217, !noalias !18275 ; 4 uses
  br i1 %i.cn, label %bb.aj, label %bb.al

bb.aj:                                            ; preds = %bb.ai
  %i.cq = icmp slt i32 %i.cp, 0
  br i1 %i.cq, label %bb.ak, label %_ZN3fmt3v1213parse_contextIwE11next_arg_idEv.exit.i

bb.ak:                                            ; preds = %bb.aj
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.102) #31, !noalias !18275
  unreachable

_ZN3fmt3v1213parse_contextIwE11next_arg_idEv.exit.i: ; preds = %bb.aj
  %i.cr = add nuw nsw i32 %i.cp, 1
  br label %bb.an

bb.al:                                            ; preds = %bb.ai
  %i.cs = icmp sgt i32 %i.cp, 0
  br i1 %i.cs, label %bb.am, label %_ZN3fmt3v1213parse_contextIwE12check_arg_idEi.exit.i

bb.am:                                            ; preds = %bb.al
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.107) #31, !noalias !18275
  unreachable

_ZN3fmt3v1213parse_contextIwE12check_arg_idEi.exit.i: ; preds = %bb.al
  %i.ct = add nsw i32 %.028.i95, -1
  br label %bb.an

bb.an:                                            ; preds = %_ZN3fmt3v1213parse_contextIwE12check_arg_idEi.exit.i, %_ZN3fmt3v1213parse_contextIwE11next_arg_idEv.exit.i
  %.sink.i = phi i32 [ -1, %_ZN3fmt3v1213parse_contextIwE12check_arg_idEi.exit.i ], [ %i.cr, %_ZN3fmt3v1213parse_contextIwE11next_arg_idEv.exit.i ]
  %.0.i97 = phi i32 [ %i.ct, %_ZN3fmt3v1213parse_contextIwE12check_arg_idEi.exit.i ], [ %i.cp, %_ZN3fmt3v1213parse_contextIwE11next_arg_idEv.exit.i ] ; 5 uses
  store i32 %.sink.i, ptr %i.co, align 8, !tbaa !18217, !noalias !18275
  %i.cu = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !18226, !noalias !18278 ; 3 uses
  %i.cw = icmp sgt i64 %i.cv, -1
  br i1 %i.cw, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.cx = trunc i64 %i.cv to i32
  %i.cy = icmp ult i32 %.0.i97, %i.cx
  br i1 %i.cy, label %_ZNK3fmt3v1220basic_printf_contextIwE3argEi.exit.i, label %_ZNK3fmt3v1220basic_printf_contextIwE3argEi.exit.thread.i

bb.ap:                                            ; preds = %bb.an
  %i.cz = icmp ugt i32 %.0.i97, 14
  br i1 %i.cz, label %_ZNK3fmt3v1220basic_printf_contextIwE3argEi.exit.thread.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.da = shl nuw nsw i32 %.0.i97, 2
  %i.db = zext nneg i32 %i.da to i64
  %i.dc = lshr i64 %i.cv, %i.db
  %i.dd = trunc i64 %i.dc to i32
  %i.de = and i32 %i.dd, 15                       ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.de, 0
  br i1 %.not.i.i.i, label %_ZNK3fmt3v1220basic_printf_contextIwE3argEi.exit.thread.i, label %_ZNK3fmt3v1220basic_printf_contextIwE3argEi.exit.thread10.i

_ZNK3fmt3v1220basic_printf_contextIwE3argEi.exit.thread10.i: ; preds = %bb.aq
  %i.df = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !38, !noalias !18278
  %i.dh = zext nneg i32 %.0.i97 to i64
  %i.di = getelementptr inbounds nuw [16 x i8], ptr %i.dg, i64 %i.dh
  br label %_ZZN3fmt3v126detail7vprintfIwNS0_20basic_printf_contextIwEEEEvRNS1_6bufferIT_EENS0_17basic_string_viewIS6_EENS0_17basic_format_argsIT0_EEENKUliE_clEi.exit

_ZNK3fmt3v1220basic_printf_contextIwE3argEi.exit.i: ; preds = %bb.ao
end_hunk_1
