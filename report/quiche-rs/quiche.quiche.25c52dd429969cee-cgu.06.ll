Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quiche-rs/original/quiche.quiche.25c52dd429969cee-cgu.06?download=true
inline.NumInlined: 320
inline.NumDeleted: 161
begin_hunk_0_@_RNvXsw_Cs5kGgRUzsVpH_8smallvecINtB5_8SmallVecAyj1_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3f36owOmepS_6quiche:bb.a
  %i.c = load i64, ptr %i.b, align 8, !dbg !10084, !noundef !602 ; 2 uses
  %i.d = icmp ugt i64 %i.c, 1, !dbg !10084
  br i1 %i.d, label %bb.b, label %bb.e, !dbg !10085

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !10056, !DIExpression(), !10067)
    #dbg_value(ptr %0, !10064, !DIExpression(), !10068)
  %i.e = load ptr, ptr %0, align 8, !dbg !10086, !nonnull !602, !noundef !602
    #dbg_value(ptr %i.e, !10014, !DIExpression(), !10069)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !10087
  %i.g = load i64, ptr %i.f, align 8, !dbg !10088, !noundef !602
    #dbg_value(i64 %i.g, !10015, !DIExpression(), !10069)
    #dbg_value(i64 %i.g, !10052, !DIExpression(), !10070)
    #dbg_value(i64 %i.g, !10042, !DIExpression(), !10071)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !10045
    #dbg_value(ptr %i.e, !10051, !DIExpression(), !10070)
    #dbg_value(ptr %i.e, !10041, !DIExpression(), !10071)
    #dbg_value(i64 %i.c, !10053, !DIExpression(), !10070)
    #dbg_value(i64 %i.c, !10043, !DIExpression(), !10071)
  store i64 %i.c, ptr %i.a, align 8, !dbg !10089
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !10089
  store ptr %i.e, ptr %i.h, align 8, !dbg !10089
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !10089
  store i64 %i.g, ptr %i.i, align 8, !dbg !10089
    #dbg_value(ptr %i.a, !10073, !DIExpression(), !10007)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3f36owOmepS_6quiche(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecyEECs3f36owOmepS_6quiche.exit unwind label %bb.c, !dbg !10090

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.a, !10078, !DIExpression(), !10010)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3f36owOmepS_6quiche(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecyEECs3f36owOmepS_6quiche.exit.i unwind label %bb.d, !dbg !10091

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !dbg !10090
  unreachable, !dbg !10090

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecyEECs3f36owOmepS_6quiche.exit.i: ; preds = %bb.c
  resume { ptr, i32 } %i.j, !dbg !10090

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecyEECs3f36owOmepS_6quiche.exit: ; preds = %bb.b
    #dbg_value(ptr %i.a, !10078, !DIExpression(), !10012)
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3f36owOmepS_6quiche(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a), !dbg !10092
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !10093
  br label %bb.e, !dbg !10094

bb.e:                                             ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecyEECs3f36owOmepS_6quiche.exit
  ret void, !dbg !10095
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXsx_Cs5kGgRUzsVpH_8smallvecINtB5_8SmallVecATyyEj4_ENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs3f36owOmepS_6quiche(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(72) %1) unnamed_addr #6 personality ptr @rust_eh_personality !dbg !10096 {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 14 uses
    #dbg_value(ptr %1, !10278, !DIExpression(), !10280)
    #dbg_value(ptr %1, !10281, !DIExpression(), !10285)
    #dbg_value(ptr %1, !10286, !DIExpression(), !10291)
    #dbg_value(ptr %1, !1669, !DIExpression(), !10101)
    #dbg_value(ptr %1, !1682, !DIExpression(), !10103)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 64, !dbg !10411
  %i.c = load i64, ptr %i.b, align 8, !dbg !10411, !alias.scope !10292, !noalias !10293, !noundef !602 ; 2 uses
  %i.d = icmp ugt i64 %i.c, 4, !dbg !10411        ; 2 uses
  %i.e = load ptr, ptr %1, align 8, !dbg !10412, !alias.scope !10292, !noalias !10293, !nonnull !602
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !10412
  %i.g = load i64, ptr %i.f, align 8, !dbg !10412, !alias.scope !10292, !noalias !10293
  %.sink22.i = select i1 %i.d, ptr %i.e, ptr %1, !dbg !10412 ; 9 uses
  %.sink21.i = select i1 %i.d, i64 %i.g, i64 %i.c, !dbg !10412 ; 5 uses
    #dbg_value(i64 %.sink21.i, !10294, !DIExpression(), !10302)
    #dbg_value(i64 %.sink21.i, !10310, !DIExpression(), !10314)
    #dbg_value(ptr %.sink22.i, !10306, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10315)
    #dbg_value(ptr %.sink22.i, !10308, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10316)
    #dbg_value(ptr %.sink22.i, !10295, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10317)
    #dbg_value(i64 %.sink21.i, !10306, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10315)
    #dbg_value(i64 %.sink21.i, !10308, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10316)
    #dbg_value(i64 %.sink21.i, !10295, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10317)
    #dbg_value(ptr %.sink22.i, !10296, !DIExpression(), !10318)
    #dbg_value(ptr %.sink22.i, !10311, !DIExpression(), !10314)
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %.sink22.i, i64 %.sink21.i, !dbg !10413 ; 3 uses
    #dbg_value(ptr %.sink22.i, !10319, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10335)
    #dbg_value(ptr %i.h, !10319, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10335)
    #dbg_value(ptr %.sink22.i, !10336, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10122)
    #dbg_value(ptr %i.h, !10336, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10122)
    #dbg_declare(ptr %i.a, !10337, !DIExpression(), !10123)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !10414, !noalias !10341
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 64, !dbg !10415 ; 6 uses
  store i64 0, ptr %i.i, align 8, !dbg !10415, !noalias !10341
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10342), !dbg !10416
    #dbg_value(ptr poison, !2258, !DIExpression(), !10143)
    #dbg_value(ptr poison, !10346, !DIExpression(), !10144)
    #dbg_value(ptr poison, !10364, !DIExpression(), !10147)
    #dbg_value(ptr poison, !2258, !DIExpression(), !10150)
    #dbg_value(ptr poison, !10346, !DIExpression(), !10151)
    #dbg_value(ptr %i.a, !10351, !DIExpression(), !10152)
    #dbg_value(ptr %i.a, !10367, !DIExpression(), !10155)
    #dbg_value(ptr %.sink22.i, !10352, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10152)
    #dbg_value(ptr %i.h, !10352, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10152)
    #dbg_value(i64 1, !10365, !DIExpression(), !10156)
    #dbg_value(ptr %.sink22.i, !10353, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10157)
    #dbg_value(ptr %i.h, !10353, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10157)
    #dbg_value(i64 %.sink21.i, !10354, !DIExpression(DW_OP_constu, 4, DW_OP_shl, DW_OP_constu, 4, DW_OP_shr, DW_OP_stack_value), !10158)
    #dbg_value(i64 %.sink21.i, !10368, !DIExpression(DW_OP_constu, 4, DW_OP_shl, DW_OP_constu, 4, DW_OP_shr, DW_OP_stack_value), !10155)
    #dbg_value(ptr %i.a, !1584, !DIExpression(), !10160)
    #dbg_value(i64 %.sink21.i, !1588, !DIExpression(DW_OP_constu, 4, DW_OP_shl, DW_OP_constu, 4, DW_OP_shr, DW_OP_stack_value), !10160)
    #dbg_value(i64 %.sink21.i, !1595, !DIExpression(DW_OP_constu, 4, DW_OP_shl, DW_OP_constu, 4, DW_OP_shr, DW_OP_stack_value), !10162)
    #dbg_declare(ptr poison, !1599, !DIExpression(), !10164)
    #dbg_value(i64 1, !1597, !DIExpression(), !10168)
    #dbg_value(ptr %i.a, !1605, !DIExpression(), !10170)
    #dbg_value(ptr %i.a, !1616, !DIExpression(), !10172)
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !10417 ; 4 uses
    #dbg_value(i64 0, !1589, !DIExpression(), !10173)
    #dbg_value(i64 0, !1596, !DIExpression(), !10162)
    #dbg_value(i64 4, !1590, !DIExpression(), !10173)
  %.not.i.i.i = icmp ugt i64 %.sink21.i, 4, !dbg !10418
  br i1 %.not.i.i.i, label %_RNvMsd_Cs5kGgRUzsVpH_8smallvecINtB5_8SmallVecATyyEj4_E11try_reserveCs3f36owOmepS_6quiche.exit.i.i, label %.lr.ph.i.i.preheader, !dbg !10418

_RNvMsd_Cs5kGgRUzsVpH_8smallvecINtB5_8SmallVecATyyEj4_E11try_reserveCs3f36owOmepS_6quiche.exit.i.i: ; preds = %bb.a
    #dbg_value(i64 %.sink21.i, !10354, !DIExpression(), !10158)
    #dbg_value(i64 %.sink21.i, !10368, !DIExpression(), !10155)
    #dbg_value(i64 %.sink21.i, !1588, !DIExpression(), !10160)
    #dbg_value(i64 %.sink21.i, !1595, !DIExpression(), !10162)
    #dbg_value(i64 %.sink21.i, !1600, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10174)
    #dbg_value(i64 1, !1600, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10174)
    #dbg_value(i64 %.sink21.i, !1601, !DIExpression(), !10175)
    #dbg_value(i64 %.sink21.i, !1603, !DIExpression(), !10176)
    #dbg_value(i64 %.sink21.i, !1618, !DIExpression(), !10178)
  %i.k = add nsw i64 %.sink21.i, -1, !dbg !10419
  %i.l = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.k, i1 true), !dbg !10419
  %i.m = lshr i64 -1, %i.l, !dbg !10419
    #dbg_value(i64 %i.m, !1596, !DIExpression(), !10168)
  %i.n = add nuw nsw i64 %i.m, 1, !dbg !10420
    #dbg_value(i64 %i.n, !1591, !DIExpression(), !10179)
  %i.o = invoke fastcc { i64, i64 } @_RNvMsd_Cs5kGgRUzsVpH_8smallvecINtB5_8SmallVecATyyEj4_E8try_growCs3f36owOmepS_6quiche(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.a, i64 noundef %i.n)
          to label %.noexc.i unwind label %.loopexit.split-lp.i, !dbg !10421, !noalias !10341 ; 2 uses

.noexc.i:                                         ; preds = %_RNvMsd_Cs5kGgRUzsVpH_8smallvecINtB5_8SmallVecATyyEj4_E11try_reserveCs3f36owOmepS_6quiche.exit.i.i
  %i.p = extractvalue { i64, i64 } %i.o, 0, !dbg !10421 ; 2 uses
    #dbg_value(i64 %i.p, !1521, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10181)
    #dbg_value(i64 poison, !1521, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10181)
  switch i64 %i.p, label %bb.b [
    i64 -1, label %.thread.i
    i64 0, label %_RNvMsd_Cs5kGgRUzsVpH_8smallvecINtB5_8SmallVecATyyEj4_E11try_reserveCs3f36owOmepS_6quiche.exit.thread.i.i
  ], !dbg !10422, !prof !1528

bb.b:                                             ; preds = %.noexc.i
  %i.q = extractvalue { i64, i64 } %i.o, 1, !dbg !10421
    #dbg_value(i64 %i.q, !1521, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10181)
    #dbg_value(i64 %i.p, !1525, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10182)
    #dbg_value(i64 %i.q, !1525, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10182)
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) %i.p, i64 noundef %i.q) #27
          to label %.noexc3.i unwind label %.loopexit.split-lp.i, !dbg !10423, !noalias !10341

.noexc3.i:                                        ; preds = %bb.b
  unreachable, !dbg !10423

_RNvMsd_Cs5kGgRUzsVpH_8smallvecINtB5_8SmallVecATyyEj4_E11try_reserveCs3f36owOmepS_6quiche.exit.thread.i.i: ; preds = %.noexc.i
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #25
          to label %.noexc4.i unwind label %.loopexit.split-lp.i, !dbg !10424, !noalias !10341

.noexc4.i:                                        ; preds = %_RNvMsd_Cs5kGgRUzsVpH_8smallvecINtB5_8SmallVecATyyEj4_E11try_reserveCs3f36owOmepS_6quiche.exit.thread.i.i
  unreachable, !dbg !10424

.thread.i:                                        ; preds = %.noexc.i
  %.pre.i.i = load i64, ptr %i.i, align 8, !dbg !10425, !alias.scope !10371, !noalias !10372
  %.pre.i.fr.i = freeze i64 %.pre.i.i, !dbg !10425 ; 2 uses
  %.pre80.i.i = tail call i64 @llvm.umax.i64(i64 %.pre.i.fr.i, i64 4), !dbg !10426 ; 2 uses
  %i.r = icmp ugt i64 %.pre.i.fr.i, 4, !dbg !10425 ; 2 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !dbg !10426, !alias.scope !10371, !noalias !10372
    #dbg_value(ptr %i.a, !1605, !DIExpression(), !10188)
    #dbg_value(ptr %i.a, !1616, !DIExpression(), !10189)
  %spec.select = select i1 %i.r, ptr %.pre.i, ptr %i.a, !dbg !10426
  %spec.select14 = select i1 %i.r, ptr %i.j, ptr %i.i, !dbg !10426 ; 3 uses
  %.pre = load i64, ptr %spec.select14, align 8, !dbg !10427, !alias.scope !10342, !noalias !10341 ; 3 uses
    #dbg_value(ptr %spec.select, !10355, !DIExpression(), !10192)
    #dbg_value(ptr %spec.select14, !10356, !DIExpression(), !10192)
    #dbg_value(ptr %spec.select14, !10373, !DIExpression(), !10193)
    #dbg_value(i64 %.pre80.i.i, !10357, !DIExpression(), !10192)
    #dbg_value(ptr %spec.select, !10358, !DIExpression(), !10194)
    #dbg_value(ptr %spec.select, !10375, !DIExpression(), !10197)
    #dbg_value(ptr %spec.select14, !10359, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10198)
    #dbg_value(i64 %.pre, !10359, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10198)
    #dbg_value(ptr %.sink22.i, !10353, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10157)
  %i.s = icmp ult i64 %.pre, %.pre80.i.i, !dbg !10428
  br i1 %i.s, label %.lr.ph.i.i.preheader, label %._crit_edge.i.i, !dbg !10428

.lr.ph.i.i.preheader:                             ; preds = %bb.a, %.thread.i
  %i.t = phi ptr [ %spec.select14, %.thread.i ], [ %i.i, %bb.a ] ; 2 uses
  %.sink.i.pre-phi.i1519.i22 = phi i64 [ %.pre80.i.i, %.thread.i ], [ 4, %bb.a ] ; 4 uses
  %i.u = phi ptr [ %spec.select, %.thread.i ], [ %i.a, %bb.a ] ; 5 uses
  %i.v = phi i64 [ %.pre, %.thread.i ], [ 0, %bb.a ] ; 7 uses
  %i.w = and i64 %.sink21.i, 1152921504606846975, !dbg !10429
  %i.x = xor i64 %i.v, -1, !dbg !10429
  %i.y = add i64 %.sink.i.pre-phi.i1519.i22, %i.x, !dbg !10429
  %i.z = tail call i64 @llvm.umin.i64(i64 %i.w, i64 %i.y), !dbg !10429 ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.z, 20, !dbg !10429
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader30, label %vector.memcheck, !dbg !10429

.lr.ph.i.i.preheader30.loopexit:                  ; preds = %vector.body
  %2 = shl nuw i64 %n.vec, 4
  %3 = getelementptr i8, ptr %.sink22.i, i64 %2
  %4 = add i64 %i.v, %n.vec
  br label %.lr.ph.i.i.preheader30, !dbg !10429

.lr.ph.i.i.preheader30:                           ; preds = %.lr.ph.i.i.preheader30.loopexit, %vector.memcheck, %.lr.ph.i.i.preheader
  %.sroa.0.073.i.i.ph = phi ptr [ %.sink22.i, %vector.memcheck ], [ %.sink22.i, %.lr.ph.i.i.preheader ], [ %3, %.lr.ph.i.i.preheader30.loopexit ]
  %.sroa.7.072.i.i.ph = phi i64 [ %i.v, %vector.memcheck ], [ %i.v, %.lr.ph.i.i.preheader ], [ %4, %.lr.ph.i.i.preheader30.loopexit ]
  br label %.lr.ph.i.i, !dbg !10429

vector.memcheck:                                  ; preds = %.lr.ph.i.i.preheader
  %i.aa = shl i64 %i.v, 4, !dbg !10429            ; 2 uses
  %scevgep = getelementptr i8, ptr %i.u, i64 %i.aa, !dbg !10429
  %i.ab = and i64 %.sink21.i, 1152921504606846975, !dbg !10429
  %i.ac = xor i64 %i.v, -1, !dbg !10429
  %i.ad = add i64 %.sink.i.pre-phi.i1519.i22, %i.ac, !dbg !10429
  %umin = tail call i64 @llvm.umin.i64(i64 %i.ab, i64 %i.ad), !dbg !10429
  %i.ae = shl nuw i64 %umin, 4, !dbg !10429       ; 2 uses
  %i.af = getelementptr i8, ptr %i.u, i64 %i.aa, !dbg !10429
  %i.ag = getelementptr i8, ptr %i.af, i64 %i.ae, !dbg !10429
  %scevgep25 = getelementptr i8, ptr %i.ag, i64 16, !dbg !10429
  %i.ah = getelementptr i8, ptr %.sink22.i, i64 %i.ae, !dbg !10429
  %scevgep26 = getelementptr i8, ptr %i.ah, i64 16, !dbg !10429
  %bound0 = icmp ult ptr %scevgep, %scevgep26, !dbg !10429
  %bound1 = icmp ult ptr %.sink22.i, %scevgep25, !dbg !10429
  %found.conflict = and i1 %bound0, %bound1, !dbg !10429
  br i1 %found.conflict, label %.lr.ph.i.i.preheader30, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.z, 1152921504606846974      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ai = shl i64 %index, 4                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.sink22.i, i64 %i.ai
  %i.aj = getelementptr i8, ptr %.sink22.i, i64 %i.ai
  %next.gep27 = getelementptr i8, ptr %i.aj, i64 16
  %i.ak = add i64 %i.v, %index                    ; 2 uses
  %wide.load = load <2 x i64>, ptr %next.gep, align 8, !dbg !10430, !alias.scope !10378, !noalias !10379
  %wide.load28 = load <2 x i64>, ptr %next.gep27, align 8, !dbg !10430, !alias.scope !10378, !noalias !10379
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %i.u, i64 %i.ak, !dbg !10431
  %i.am = getelementptr [16 x i8], ptr %i.u, i64 %i.ak, !dbg !10431
  %i.an = getelementptr i8, ptr %i.am, i64 16, !dbg !10431
  store <2 x i64> %wide.load, ptr %i.al, align 8, !dbg !10432, !alias.scope !10400, !noalias !10401
  store <2 x i64> %wide.load28, ptr %i.an, align 8, !dbg !10432, !alias.scope !10400, !noalias !10401
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ao = icmp eq i64 %index.next, %n.vec, !dbg !10428
  br i1 %i.ao, label %.lr.ph.i.i.preheader30.loopexit, label %vector.body, !dbg !10428, !llvm.loop !10214

._crit_edge.i.i:                                  ; preds = %bb.d, %.thread.i
  %i.ap = phi ptr [ %spec.select14, %.thread.i ], [ %i.t, %bb.d ]
  %.sroa.7.0.lcssa.i.i = phi i64 [ %.pre, %.thread.i ], [ %.sink.i.pre-phi.i1519.i22, %bb.d ], !dbg !10433
  %.sroa.0.0.lcssa.i.i = phi ptr [ %.sink22.i, %.thread.i ], [ %i.bf, %bb.d ], !dbg !10434 ; 2 uses
    #dbg_value(ptr poison, !1532, !DIExpression(), !10216)
    #dbg_value(ptr poison, !1538, !DIExpression(), !10218)
  store i64 %.sroa.7.0.lcssa.i.i, ptr %i.ap, align 8, !dbg !10435, !alias.scope !10342, !noalias !10341
    #dbg_value(ptr %.sroa.0.0.lcssa.i.i, !10361, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10219)
    #dbg_value(ptr %i.h, !10361, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10219)
    #dbg_value(ptr undef, !10346, !DIExpression(), !10144)
    #dbg_declare(ptr poison, !10394, !DIExpression(), !10222)
    #dbg_value(ptr undef, !2258, !DIExpression(), !10143)
    #dbg_value(i64 1, !2265, !DIExpression(), !10224)
    #dbg_value(ptr %.sroa.0.0.lcssa.i.i, !2261, !DIExpression(), !10225)
    #dbg_value(ptr %.sroa.0.0.lcssa.i.i, !2269, !DIExpression(), !10224)
    #dbg_value(ptr %i.h, !2262, !DIExpression(), !10226)
    #dbg_value(ptr poison, !2272, !DIExpression(), !10228)
    #dbg_value(ptr poison, !2275, !DIExpression(), !10229)
  %i.aq = icmp eq ptr %.sroa.0.0.lcssa.i.i, %i.h, !dbg !10436
  br i1 %i.aq, label %_RINvXss_Cs5kGgRUzsVpH_8smallvecINtB6_8SmallVecATyyEj4_EINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12FromIteratorBJ_E9from_iterINtNtNtBY_8adapters6cloned6ClonedINtNtNtB10_5slice4iter4IterBJ_EEECs3f36owOmepS_6quiche.exit, label %.lr.ph77.i.i, !dbg !10437

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader30, %bb.d
  %.sroa.0.073.i.i = phi ptr [ %i.bf, %bb.d ], [ %.sroa.0.073.i.i.ph, %.lr.ph.i.i.preheader30 ] ; 3 uses
  %.sroa.7.072.i.i = phi i64 [ %i.bi, %bb.d ], [ %.sroa.7.072.i.i.ph, %.lr.ph.i.i.preheader30 ] ; 3 uses
    #dbg_value(ptr %.sroa.0.073.i.i, !10353, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10157)
    #dbg_value(i64 %.sroa.7.072.i.i, !10359, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10198)
    #dbg_value(ptr undef, !10346, !DIExpression(), !10151)
    #dbg_declare(ptr poison, !10394, !DIExpression(), !10230)
    #dbg_value(ptr undef, !2258, !DIExpression(), !10150)
    #dbg_value(i64 1, !2265, !DIExpression(), !10232)
    #dbg_value(ptr %.sroa.0.073.i.i, !2261, !DIExpression(), !10233)
    #dbg_value(ptr %.sroa.0.073.i.i, !2269, !DIExpression(), !10232)
    #dbg_value(ptr %i.h, !2262, !DIExpression(), !10234)
    #dbg_value(ptr poison, !2272, !DIExpression(), !10236)
    #dbg_value(ptr poison, !2275, !DIExpression(), !10237)
  %i.ar = icmp eq ptr %.sroa.0.073.i.i, %i.h, !dbg !10438
  br i1 %i.ar, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterTyyEEENtNtNtB8_6traits8iterator8Iterator4nextCs3f36owOmepS_6quiche.exit.i.i, label %bb.d, !dbg !10429

.lr.ph77.i.i:                                     ; preds = %._crit_edge.i.i, %_RNvMsd_Cs5kGgRUzsVpH_8smallvecINtB5_8SmallVecATyyEj4_E4pushCs3f36owOmepS_6quiche.exit.i.i
  %.sroa.046.075.i.i = phi ptr [ %i.as, %_RNvMsd_Cs5kGgRUzsVpH_8smallvecINtB5_8SmallVecATyyEj4_E4pushCs3f36owOmepS_6quiche.exit.i.i ], [ %.sroa.0.0.lcssa.i.i, %._crit_edge.i.i ] ; 2 uses
    #dbg_value(ptr %.sroa.046.075.i.i, !10361, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10219)
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.046.075.i.i, i64 16, !dbg !10439 ; 2 uses
    #dbg_value(ptr %i.as, !10361, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10219)
    #dbg_value(ptr %.sroa.046.075.i.i, !10398, !DIExpression(), !10238)
    #dbg_value(ptr %.sroa.046.075.i.i, !10393, !DIExpression(), !10239)
    #dbg_value(ptr %.sroa.046.075.i.i, !10395, !DIExpression(), !10240)
  %i.at = load <2 x i64>, ptr %.sroa.046.075.i.i, align 8, !dbg !10440, !noalias !10407
    #dbg_value(i64 poison, !10362, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10245)
    #dbg_value(i64 poison, !10362, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10245)
    #dbg_value(ptr %i.a, !1625, !DIExpression(), !10247)
    #dbg_value(i64 poison, !1629, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10247)
    #dbg_value(i64 poison, !1629, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10247)
    #dbg_value(ptr %i.a, !1605, !DIExpression(), !10249)
    #dbg_value(ptr %i.a, !1616, !DIExpression(), !10251)
  %i.au = load i64, ptr %i.i, align 8, !dbg !10441, !alias.scope !10408, !noalias !10409, !noundef !602 ; 2 uses
  %i.av = icmp ugt i64 %i.au, 4, !dbg !10441      ; 2 uses
  %i.aw = load ptr, ptr %i.a, align 8, !dbg !10442, !alias.scope !10408, !noalias !10409, !nonnull !602
  %.sink17.i.i.i.i = select i1 %i.av, ptr %i.aw, ptr %i.a, !dbg !10442
  %.sink16.i.i.i.i = select i1 %i.av, ptr %i.j, ptr %i.i, !dbg !10442 ; 2 uses
  %.sink.i.i30.i.i = tail call i64 @llvm.umax.i64(i64 %i.au, i64 4), !dbg !10442
    #dbg_value(ptr %.sink17.i.i.i.i, !1630, !DIExpression(), !10257)
    #dbg_value(ptr %.sink16.i.i.i.i, !1631, !DIExpression(), !10257)
    #dbg_value(i64 %.sink.i.i30.i.i, !1632, !DIExpression(), !10257)
  %i.ax = load i64, ptr %.sink16.i.i.i.i, align 8, !dbg !10443, !alias.scope !10410, !noalias !10341, !noundef !602 ; 2 uses
  %i.ay = icmp eq i64 %i.ax, %.sink.i.i30.i.i, !dbg !10443
  br i1 %i.ay, label %bb.c, label %_RNvMsd_Cs5kGgRUzsVpH_8smallvecINtB5_8SmallVecATyyEj4_E4pushCs3f36owOmepS_6quiche.exit.i.i, !dbg !10443, !prof !1352

bb.c:                                             ; preds = %.lr.ph77.i.i
  invoke fastcc void @_RNvMsd_Cs5kGgRUzsVpH_8smallvecINtB5_8SmallVecATyyEj4_E21reserve_one_uncheckedCs3f36owOmepS_6quiche(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.a)
          to label %.noexc5.i unwind label %.loopexit.i, !dbg !10444, !noalias !10341

.noexc5.i:                                        ; preds = %bb.c
    #dbg_value(ptr %i.a, !1636, !DIExpression(), !10259)
    #dbg_value(ptr %i.a, !1637, !DIExpression(), !10260)
  %i.az = load ptr, ptr %i.a, align 8, !dbg !10445, !alias.scope !10410, !noalias !10341, !nonnull !602, !noundef !602
    #dbg_value(ptr %i.az, !1630, !DIExpression(), !10257)
    #dbg_value(ptr %i.j, !1631, !DIExpression(), !10257)
  %.pre.i.i.i = load i64, ptr %i.j, align 8, !dbg !10446, !alias.scope !10410, !noalias !10341
  br label %_RNvMsd_Cs5kGgRUzsVpH_8smallvecINtB5_8SmallVecATyyEj4_E4pushCs3f36owOmepS_6quiche.exit.i.i, !dbg !10447

_RNvMsd_Cs5kGgRUzsVpH_8smallvecINtB5_8SmallVecATyyEj4_E4pushCs3f36owOmepS_6quiche.exit.i.i: ; preds = %.noexc5.i, %.lr.ph77.i.i
  %i.ba = phi i64 [ %.pre.i.i.i, %.noexc5.i ], [ %i.ax, %.lr.ph77.i.i ], !dbg !10446
  %.sroa.01.0.i.i.i = phi ptr [ %i.j, %.noexc5.i ], [ %.sink16.i.i.i.i, %.lr.ph77.i.i ], !dbg !10448 ; 2 uses
  %.sroa.0.0.i31.i.i = phi ptr [ %i.az, %.noexc5.i ], [ %.sink17.i.i.i.i, %.lr.ph77.i.i ], !dbg !10448
    #dbg_value(ptr %.sroa.0.0.i31.i.i, !1630, !DIExpression(), !10257)
    #dbg_value(ptr %.sroa.01.0.i.i.i, !1631, !DIExpression(), !10257)
    #dbg_value(ptr %.sroa.0.0.i31.i.i, !1639, !DIExpression(), !10262)
    #dbg_value(i64 %i.ba, !1640, !DIExpression(), !10262)
  %i.bb = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.i31.i.i, i64 %i.ba, !dbg !10449
    #dbg_value(ptr %i.bb, !1642, !DIExpression(), !10264)
    #dbg_value(i64 poison, !1645, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10264)
    #dbg_value(i64 poison, !1645, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10264)
  store <2 x i64> %i.at, ptr %i.bb, align 8, !dbg !10450, !noalias !10341
  %i.bc = load i64, ptr %.sroa.01.0.i.i.i, align 8, !dbg !10451, !alias.scope !10410, !noalias !10341, !noundef !602
  %i.bd = add i64 %i.bc, 1, !dbg !10451
  store i64 %i.bd, ptr %.sroa.01.0.i.i.i, align 8, !dbg !10451, !alias.scope !10410, !noalias !10341
    #dbg_value(ptr %i.as, !10361, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10219)
    #dbg_value(ptr undef, !10346, !DIExpression(), !10144)
    #dbg_declare(ptr poison, !10394, !DIExpression(), !10222)
    #dbg_value(ptr undef, !2258, !DIExpression(), !10143)
    #dbg_value(i64 1, !2265, !DIExpression(), !10224)
    #dbg_value(ptr %i.as, !2261, !DIExpression(), !10225)
    #dbg_value(ptr %i.as, !2269, !DIExpression(), !10224)
    #dbg_value(ptr %i.h, !2262, !DIExpression(), !10226)
    #dbg_value(ptr poison, !2272, !DIExpression(), !10228)
    #dbg_value(ptr poison, !2275, !DIExpression(), !10229)
  %i.be = icmp eq ptr %i.as, %i.h, !dbg !10436
  br i1 %i.be, label %_RINvXss_Cs5kGgRUzsVpH_8smallvecINtB6_8SmallVecATyyEj4_EINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12FromIteratorBJ_E9from_iterINtNtNtBY_8adapters6cloned6ClonedINtNtNtB10_5slice4iter4IterBJ_EEECs3f36owOmepS_6quiche.exit, label %.lr.ph77.i.i, !dbg !10437

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.0.073.i.i, i64 16, !dbg !10452 ; 2 uses
    #dbg_value(ptr %i.bf, !10353, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10157)
    #dbg_value(ptr %.sroa.0.073.i.i, !10398, !DIExpression(), !10265)
    #dbg_value(ptr %.sroa.0.073.i.i, !10393, !DIExpression(), !10266)
    #dbg_value(ptr %.sroa.0.073.i.i, !10395, !DIExpression(), !10267)
    #dbg_value(i64 poison, !10360, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10268)
    #dbg_value(i64 poison, !10403, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10269)
    #dbg_value(i64 poison, !10360, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10268)
    #dbg_value(i64 poison, !10403, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10269)
    #dbg_value(i64 %.sroa.7.072.i.i, !10376, !DIExpression(), !10197)
  %i.bg = getelementptr inbounds nuw [16 x i8], ptr %i.u, i64 %.sroa.7.072.i.i, !dbg !10431
    #dbg_value(ptr %i.bg, !10402, !DIExpression(), !10269)
  %i.bh = load <2 x i64>, ptr %.sroa.0.073.i.i, align 8, !dbg !10430, !noalias !10379
  store <2 x i64> %i.bh, ptr %i.bg, align 8, !dbg !10432, !noalias !10341
    #dbg_value(ptr undef, !10364, !DIExpression(), !10147)
  %i.bi = add i64 %.sroa.7.072.i.i, 1, !dbg !10453 ; 2 uses
    #dbg_value(i64 %i.bi, !10359, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10198)
  %exitcond.not.i.i = icmp eq i64 %i.bi, %.sink.i.pre-phi.i1519.i22, !dbg !10428
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !dbg !10428, !llvm.loop !10270

_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterTyyEEENtNtNtB8_6traits8iterator8Iterator4nextCs3f36owOmepS_6quiche.exit.i.i: ; preds = %.lr.ph.i.i
    #dbg_value(ptr poison, !10353, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10157)
    #dbg_value(ptr poison, !1532, !DIExpression(), !10272)
    #dbg_value(ptr poison, !1538, !DIExpression(), !10274)
  store i64 %.sroa.7.072.i.i, ptr %i.t, align 8, !dbg !10454, !alias.scope !10342, !noalias !10341
  br label %_RINvXss_Cs5kGgRUzsVpH_8smallvecINtB6_8SmallVecATyyEj4_EINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12FromIteratorBJ_E9from_iterINtNtNtBY_8adapters6cloned6ClonedINtNtNtB10_5slice4iter4IterBJ_EEECs3f36owOmepS_6quiche.exit, !dbg !10455

.loopexit.i:                                      ; preds = %bb.c
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

.loopexit.split-lp.i:                             ; preds = %_RNvMsd_Cs5kGgRUzsVpH_8smallvecINtB5_8SmallVecATyyEj4_E11try_reserveCs3f36owOmepS_6quiche.exit.thread.i.i, %bb.b, %_RNvMsd_Cs5kGgRUzsVpH_8smallvecINtB5_8SmallVecATyyEj4_E11try_reserveCs3f36owOmepS_6quiche.exit.i.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.e:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs5kGgRUzsVpH_8smallvec8SmallVecATyyEj4_EECs3f36owOmepS_6quiche(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.a) #28
          to label %bb.g unwind label %bb.f, !dbg !10456, !noalias !10341

bb.f:                                             ; preds = %bb.e
  %i.bj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !dbg !10457, !noalias !10341
  unreachable, !dbg !10457

bb.g:                                             ; preds = %bb.e
  resume { ptr, i32 } %lpad.phi.i, !dbg !10457

_RINvXss_Cs5kGgRUzsVpH_8smallvecINtB6_8SmallVecATyyEj4_EINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12FromIteratorBJ_E9from_iterINtNtNtBY_8adapters6cloned6ClonedINtNtNtB10_5slice4iter4IterBJ_EEECs3f36owOmepS_6quiche.exit: ; preds = %_RNvMsd_Cs5kGgRUzsVpH_8smallvecINtB5_8SmallVecATyyEj4_E4pushCs3f36owOmepS_6quiche.exit.i.i, %._crit_edge.i.i, %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterTyyEEENtNtNtB8_6traits8iterator8Iterator4nextCs3f36owOmepS_6quiche.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 72, i1 false), !dbg !10458
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !10456, !noalias !10341
  ret void, !dbg !10459
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #10

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #11

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #12

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #8

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #11

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCskKLDkoKarTP_4core3ops5range5RangeyEENtNtBK_4drop4Drop4dropCs3f36owOmepS_6quiche(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() unnamed_addr #14
end_hunk_0
