Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quiche-rs/original/quiche.quiche.25c52dd429969cee-cgu.06?download=true
inline.NumInlined: 320
inline.NumDeleted: 161
begin_hunk_0_@_RNvXsw_Cs5kGgRUzsVpH_8smallvecINtB5_8SmallVecATyyEj4_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3f36owOmepS_6quiche:bb.a

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsw_Cs5kGgRUzsVpH_8smallvecINtB5_8SmallVecAyj1_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3f36owOmepS_6quiche(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !9989 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
    #dbg_value(ptr %0, !10008, !DIExpression(), !10012)
    #dbg_value(ptr %0, !10013, !DIExpression(), !10016)
    #dbg_declare(ptr %i.a, !10017, !DIExpression(), !10031)
    #dbg_declare(ptr poison, !10032, !DIExpression(), !10042)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !10079
  %i.c = load i64, ptr %i.b, align 8, !dbg !10079, !noundef !602 ; 2 uses
  %i.d = icmp ugt i64 %i.c, 1, !dbg !10079
  br i1 %i.d, label %bb.b, label %bb.e, !dbg !10080

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !10051, !DIExpression(), !10062)
    #dbg_value(ptr %0, !10059, !DIExpression(), !10063)
  %i.e = load ptr, ptr %0, align 8, !dbg !10081, !nonnull !602, !noundef !602
    #dbg_value(ptr %i.e, !10009, !DIExpression(), !10064)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !10082
  %i.g = load i64, ptr %i.f, align 8, !dbg !10083, !noundef !602
    #dbg_value(i64 %i.g, !10010, !DIExpression(), !10064)
    #dbg_value(i64 %i.g, !10047, !DIExpression(), !10065)
    #dbg_value(i64 %i.g, !10037, !DIExpression(), !10066)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !10040
    #dbg_value(ptr %i.e, !10046, !DIExpression(), !10065)
    #dbg_value(ptr %i.e, !10036, !DIExpression(), !10066)
    #dbg_value(i64 %i.c, !10048, !DIExpression(), !10065)
    #dbg_value(i64 %i.c, !10038, !DIExpression(), !10066)
  store i64 %i.c, ptr %i.a, align 8, !dbg !10084
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !10084
  store ptr %i.e, ptr %i.h, align 8, !dbg !10084
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !10084
  store i64 %i.g, ptr %i.i, align 8, !dbg !10084
    #dbg_value(ptr %i.a, !10068, !DIExpression(), !10002)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3f36owOmepS_6quiche(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecyEECs3f36owOmepS_6quiche.exit unwind label %bb.c, !dbg !10085

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.a, !10073, !DIExpression(), !10005)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3f36owOmepS_6quiche(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecyEECs3f36owOmepS_6quiche.exit.i unwind label %bb.d, !dbg !10086

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !dbg !10085
  unreachable, !dbg !10085

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecyEECs3f36owOmepS_6quiche.exit.i: ; preds = %bb.c
  resume { ptr, i32 } %i.j, !dbg !10085

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecyEECs3f36owOmepS_6quiche.exit: ; preds = %bb.b
    #dbg_value(ptr %i.a, !10073, !DIExpression(), !10007)
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3f36owOmepS_6quiche(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a), !dbg !10087
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !10088
  br label %bb.e, !dbg !10089

bb.e:                                             ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecyEECs3f36owOmepS_6quiche.exit
  ret void, !dbg !10090
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXsx_Cs5kGgRUzsVpH_8smallvecINtB5_8SmallVecATyyEj4_ENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs3f36owOmepS_6quiche(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(72) %1) unnamed_addr #6 personality ptr @rust_eh_personality !dbg !10091 {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 14 uses
    #dbg_value(ptr %1, !10273, !DIExpression(), !10275)
    #dbg_value(ptr %1, !10276, !DIExpression(), !10280)
    #dbg_value(ptr %1, !10281, !DIExpression(), !10286)
    #dbg_value(ptr %1, !1669, !DIExpression(), !10096)
    #dbg_value(ptr %1, !1682, !DIExpression(), !10098)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 64, !dbg !10406
  %i.c = load i64, ptr %i.b, align 8, !dbg !10406, !alias.scope !10287, !noalias !10288, !noundef !602 ; 2 uses
  %i.d = icmp ugt i64 %i.c, 4, !dbg !10406        ; 2 uses
  %i.e = load ptr, ptr %1, align 8, !dbg !10407, !alias.scope !10287, !noalias !10288, !nonnull !602
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !10407
  %i.g = load i64, ptr %i.f, align 8, !dbg !10407, !alias.scope !10287, !noalias !10288
  %.sink22.i = select i1 %i.d, ptr %i.e, ptr %1, !dbg !10407 ; 9 uses
  %.sink21.i = select i1 %i.d, i64 %i.g, i64 %i.c, !dbg !10407 ; 5 uses
    #dbg_value(i64 %.sink21.i, !10289, !DIExpression(), !10297)
    #dbg_value(i64 %.sink21.i, !10305, !DIExpression(), !10309)
    #dbg_value(ptr %.sink22.i, !10301, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10310)
    #dbg_value(ptr %.sink22.i, !10303, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10311)
    #dbg_value(ptr %.sink22.i, !10290, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10312)
    #dbg_value(i64 %.sink21.i, !10301, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10310)
    #dbg_value(i64 %.sink21.i, !10303, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10311)
    #dbg_value(i64 %.sink21.i, !10290, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10312)
    #dbg_value(ptr %.sink22.i, !10291, !DIExpression(), !10313)
    #dbg_value(ptr %.sink22.i, !10306, !DIExpression(), !10309)
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %.sink22.i, i64 %.sink21.i, !dbg !10408 ; 3 uses
    #dbg_value(ptr %.sink22.i, !10314, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10330)
    #dbg_value(ptr %i.h, !10314, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10330)
    #dbg_value(ptr %.sink22.i, !10331, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10117)
    #dbg_value(ptr %i.h, !10331, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10117)
    #dbg_declare(ptr %i.a, !10332, !DIExpression(), !10118)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !10409, !noalias !10336
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 64, !dbg !10410 ; 6 uses
  store i64 0, ptr %i.i, align 8, !dbg !10410, !noalias !10336
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10337), !dbg !10411
    #dbg_value(ptr poison, !2258, !DIExpression(), !10138)
    #dbg_value(ptr poison, !10341, !DIExpression(), !10139)
    #dbg_value(ptr poison, !10359, !DIExpression(), !10142)
    #dbg_value(ptr poison, !2258, !DIExpression(), !10145)
    #dbg_value(ptr poison, !10341, !DIExpression(), !10146)
    #dbg_value(ptr %i.a, !10346, !DIExpression(), !10147)
    #dbg_value(ptr %i.a, !10362, !DIExpression(), !10150)
    #dbg_value(ptr %.sink22.i, !10347, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10147)
    #dbg_value(ptr %i.h, !10347, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10147)
    #dbg_value(i64 1, !10360, !DIExpression(), !10151)
    #dbg_value(ptr %.sink22.i, !10348, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10152)
    #dbg_value(ptr %i.h, !10348, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10152)
    #dbg_value(i64 %.sink21.i, !10349, !DIExpression(DW_OP_constu, 4, DW_OP_shl, DW_OP_constu, 4, DW_OP_shr, DW_OP_stack_value), !10153)
    #dbg_value(i64 %.sink21.i, !10363, !DIExpression(DW_OP_constu, 4, DW_OP_shl, DW_OP_constu, 4, DW_OP_shr, DW_OP_stack_value), !10150)
    #dbg_value(ptr %i.a, !1584, !DIExpression(), !10155)
    #dbg_value(i64 %.sink21.i, !1588, !DIExpression(DW_OP_constu, 4, DW_OP_shl, DW_OP_constu, 4, DW_OP_shr, DW_OP_stack_value), !10155)
    #dbg_value(i64 %.sink21.i, !1595, !DIExpression(DW_OP_constu, 4, DW_OP_shl, DW_OP_constu, 4, DW_OP_shr, DW_OP_stack_value), !10157)
    #dbg_declare(ptr poison, !1599, !DIExpression(), !10159)
    #dbg_value(i64 1, !1597, !DIExpression(), !10163)
    #dbg_value(ptr %i.a, !1605, !DIExpression(), !10165)
    #dbg_value(ptr %i.a, !1616, !DIExpression(), !10167)
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !10412 ; 4 uses
    #dbg_value(i64 0, !1589, !DIExpression(), !10168)
    #dbg_value(i64 0, !1596, !DIExpression(), !10157)
    #dbg_value(i64 4, !1590, !DIExpression(), !10168)
  %.not.i.i.i = icmp ugt i64 %.sink21.i, 4, !dbg !10413
  br i1 %.not.i.i.i, label %_RNvMsd_Cs5kGgRUzsVpH_8smallvecINtB5_8SmallVecATyyEj4_E11try_reserveCs3f36owOmepS_6quiche.exit.i.i, label %.lr.ph.i.i.preheader, !dbg !10413

_RNvMsd_Cs5kGgRUzsVpH_8smallvecINtB5_8SmallVecATyyEj4_E11try_reserveCs3f36owOmepS_6quiche.exit.i.i: ; preds = %bb.a
    #dbg_value(i64 %.sink21.i, !10349, !DIExpression(), !10153)
    #dbg_value(i64 %.sink21.i, !10363, !DIExpression(), !10150)
    #dbg_value(i64 %.sink21.i, !1588, !DIExpression(), !10155)
    #dbg_value(i64 %.sink21.i, !1595, !DIExpression(), !10157)
    #dbg_value(i64 %.sink21.i, !1600, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10169)
    #dbg_value(i64 1, !1600, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10169)
    #dbg_value(i64 %.sink21.i, !1601, !DIExpression(), !10170)
    #dbg_value(i64 %.sink21.i, !1603, !DIExpression(), !10171)
    #dbg_value(i64 %.sink21.i, !1618, !DIExpression(), !10173)
  %i.k = add nsw i64 %.sink21.i, -1, !dbg !10414
  %i.l = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.k, i1 true), !dbg !10414
  %i.m = lshr i64 -1, %i.l, !dbg !10414
    #dbg_value(i64 %i.m, !1596, !DIExpression(), !10163)
  %i.n = add nuw nsw i64 %i.m, 1, !dbg !10415
    #dbg_value(i64 %i.n, !1591, !DIExpression(), !10174)
  %i.o = invoke fastcc { i64, i64 } @_RNvMsd_Cs5kGgRUzsVpH_8smallvecINtB5_8SmallVecATyyEj4_E8try_growCs3f36owOmepS_6quiche(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.a, i64 noundef %i.n)
          to label %.noexc.i unwind label %.loopexit.split-lp.i, !dbg !10416, !noalias !10336 ; 2 uses

.noexc.i:                                         ; preds = %_RNvMsd_Cs5kGgRUzsVpH_8smallvecINtB5_8SmallVecATyyEj4_E11try_reserveCs3f36owOmepS_6quiche.exit.i.i
  %i.p = extractvalue { i64, i64 } %i.o, 0, !dbg !10416 ; 2 uses
    #dbg_value(i64 %i.p, !1521, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10176)
    #dbg_value(i64 poison, !1521, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10176)
  switch i64 %i.p, label %bb.b [
    i64 -1, label %.thread.i
    i64 0, label %_RNvMsd_Cs5kGgRUzsVpH_8smallvecINtB5_8SmallVecATyyEj4_E11try_reserveCs3f36owOmepS_6quiche.exit.thread.i.i
  ], !dbg !10417, !prof !1528

bb.b:                                             ; preds = %.noexc.i
  %i.q = extractvalue { i64, i64 } %i.o, 1, !dbg !10416
    #dbg_value(i64 %i.q, !1521, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10176)
    #dbg_value(i64 %i.p, !1525, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10177)
    #dbg_value(i64 %i.q, !1525, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10177)
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) %i.p, i64 noundef %i.q) #27
          to label %.noexc3.i unwind label %.loopexit.split-lp.i, !dbg !10418, !noalias !10336

.noexc3.i:                                        ; preds = %bb.b
  unreachable, !dbg !10418

_RNvMsd_Cs5kGgRUzsVpH_8smallvecINtB5_8SmallVecATyyEj4_E11try_reserveCs3f36owOmepS_6quiche.exit.thread.i.i: ; preds = %.noexc.i
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #25
          to label %.noexc4.i unwind label %.loopexit.split-lp.i, !dbg !10419, !noalias !10336

.noexc4.i:                                        ; preds = %_RNvMsd_Cs5kGgRUzsVpH_8smallvecINtB5_8SmallVecATyyEj4_E11try_reserveCs3f36owOmepS_6quiche.exit.thread.i.i
  unreachable, !dbg !10419

.thread.i:                                        ; preds = %.noexc.i
  %.pre.i.i = load i64, ptr %i.i, align 8, !dbg !10420, !alias.scope !10366, !noalias !10367
  %.pre.i.fr.i = freeze i64 %.pre.i.i, !dbg !10420 ; 2 uses
  %.pre80.i.i = tail call i64 @llvm.umax.i64(i64 %.pre.i.fr.i, i64 4), !dbg !10421 ; 2 uses
  %i.r = icmp ugt i64 %.pre.i.fr.i, 4, !dbg !10420 ; 2 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !dbg !10421, !alias.scope !10366, !noalias !10367
    #dbg_value(ptr %i.a, !1605, !DIExpression(), !10183)
    #dbg_value(ptr %i.a, !1616, !DIExpression(), !10184)
  %spec.select = select i1 %i.r, ptr %.pre.i, ptr %i.a, !dbg !10421
  %spec.select14 = select i1 %i.r, ptr %i.j, ptr %i.i, !dbg !10421 ; 3 uses
  %.pre = load i64, ptr %spec.select14, align 8, !dbg !10422, !alias.scope !10337, !noalias !10336 ; 3 uses
    #dbg_value(ptr %spec.select, !10350, !DIExpression(), !10187)
    #dbg_value(ptr %spec.select14, !10351, !DIExpression(), !10187)
    #dbg_value(ptr %spec.select14, !10368, !DIExpression(), !10188)
    #dbg_value(i64 %.pre80.i.i, !10352, !DIExpression(), !10187)
    #dbg_value(ptr %spec.select, !10353, !DIExpression(), !10189)
    #dbg_value(ptr %spec.select, !10370, !DIExpression(), !10192)
    #dbg_value(ptr %spec.select14, !10354, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10193)
    #dbg_value(i64 %.pre, !10354, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10193)
    #dbg_value(ptr %.sink22.i, !10348, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10152)
  %i.s = icmp ult i64 %.pre, %.pre80.i.i, !dbg !10423
  br i1 %i.s, label %.lr.ph.i.i.preheader, label %._crit_edge.i.i, !dbg !10423

.lr.ph.i.i.preheader:                             ; preds = %bb.a, %.thread.i
  %i.t = phi ptr [ %spec.select14, %.thread.i ], [ %i.i, %bb.a ] ; 2 uses
  %.sink.i.pre-phi.i1519.i22 = phi i64 [ %.pre80.i.i, %.thread.i ], [ 4, %bb.a ] ; 3 uses
  %i.u = phi ptr [ %spec.select, %.thread.i ], [ %i.a, %bb.a ] ; 5 uses
  %i.v = phi i64 [ %.pre, %.thread.i ], [ 0, %bb.a ] ; 6 uses
  %i.w = and i64 %.sink21.i, 1152921504606846975, !dbg !10424
  %i.x = xor i64 %i.v, -1, !dbg !10424
  %i.y = add i64 %.sink.i.pre-phi.i1519.i22, %i.x, !dbg !10424 ; 2 uses
  %i.z = tail call i64 @llvm.umin.i64(i64 %i.w, i64 %i.y), !dbg !10424 ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.z, 20, !dbg !10424
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader30, label %vector.memcheck, !dbg !10424

.lr.ph.i.i.preheader30:                           ; preds = %vector.body, %vector.memcheck, %.lr.ph.i.i.preheader
  %.sroa.0.073.i.i.ph = phi ptr [ %.sink22.i, %vector.memcheck ], [ %.sink22.i, %.lr.ph.i.i.preheader ], [ %i.ah, %vector.body ]
  %.sroa.7.072.i.i.ph = phi i64 [ %i.v, %vector.memcheck ], [ %i.v, %.lr.ph.i.i.preheader ], [ %i.ai, %vector.body ]
  br label %.lr.ph.i.i, !dbg !10424

vector.memcheck:                                  ; preds = %.lr.ph.i.i.preheader
  %i.aa = shl i64 %i.v, 4, !dbg !10424            ; 2 uses
  %scevgep = getelementptr i8, ptr %i.u, i64 %i.aa, !dbg !10424
  %i.ab = and i64 %.sink21.i, 1152921504606846975, !dbg !10424
  %umin = tail call i64 @llvm.umin.i64(i64 %i.ab, i64 %i.y), !dbg !10424
  %i.ac = shl nuw i64 %umin, 4, !dbg !10424       ; 2 uses
  %i.ad = getelementptr i8, ptr %i.u, i64 %i.aa, !dbg !10424
  %i.ae = getelementptr i8, ptr %i.ad, i64 %i.ac, !dbg !10424
  %scevgep25 = getelementptr i8, ptr %i.ae, i64 16, !dbg !10424
  %i.af = getelementptr i8, ptr %.sink22.i, i64 %i.ac, !dbg !10424
  %scevgep26 = getelementptr i8, ptr %i.af, i64 16, !dbg !10424
  %bound0 = icmp ult ptr %scevgep, %scevgep26, !dbg !10424
  %bound1 = icmp ult ptr %.sink22.i, %scevgep25, !dbg !10424
  %found.conflict = and i1 %bound0, %bound1, !dbg !10424
  br i1 %found.conflict, label %.lr.ph.i.i.preheader30, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.z, 1152921504606846974      ; 3 uses
  %i.ag = shl nuw i64 %n.vec, 4
  %i.ah = getelementptr i8, ptr %.sink22.i, i64 %i.ag
  %i.ai = add i64 %i.v, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.aj = shl i64 %index, 4                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.sink22.i, i64 %i.aj
  %i.ak = getelementptr i8, ptr %.sink22.i, i64 %i.aj
  %next.gep27 = getelementptr i8, ptr %i.ak, i64 16
  %i.al = add i64 %i.v, %index                    ; 2 uses
  %wide.load = load <2 x i64>, ptr %next.gep, align 8, !dbg !10425, !alias.scope !10373, !noalias !10374
  %wide.load28 = load <2 x i64>, ptr %next.gep27, align 8, !dbg !10425, !alias.scope !10373, !noalias !10374
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %i.u, i64 %i.al, !dbg !10426
  %i.an = getelementptr [16 x i8], ptr %i.u, i64 %i.al, !dbg !10426
  %i.ao = getelementptr i8, ptr %i.an, i64 16, !dbg !10426
  store <2 x i64> %wide.load, ptr %i.am, align 8, !dbg !10427, !alias.scope !10395, !noalias !10396
  store <2 x i64> %wide.load28, ptr %i.ao, align 8, !dbg !10427, !alias.scope !10395, !noalias !10396
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ap = icmp eq i64 %index.next, %n.vec, !dbg !10423
  br i1 %i.ap, label %.lr.ph.i.i.preheader30, label %vector.body, !dbg !10423, !llvm.loop !10209

._crit_edge.i.i:                                  ; preds = %bb.d, %.thread.i
  %i.aq = phi ptr [ %spec.select14, %.thread.i ], [ %i.t, %bb.d ]
  %.sroa.7.0.lcssa.i.i = phi i64 [ %.pre, %.thread.i ], [ %.sink.i.pre-phi.i1519.i22, %bb.d ], !dbg !10428
  %.sroa.0.0.lcssa.i.i = phi ptr [ %.sink22.i, %.thread.i ], [ %i.bg, %bb.d ], !dbg !10429 ; 2 uses
    #dbg_value(ptr poison, !1532, !DIExpression(), !10211)
    #dbg_value(ptr poison, !1538, !DIExpression(), !10213)
  store i64 %.sroa.7.0.lcssa.i.i, ptr %i.aq, align 8, !dbg !10430, !alias.scope !10337, !noalias !10336
    #dbg_value(ptr %.sroa.0.0.lcssa.i.i, !10356, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10214)
    #dbg_value(ptr %i.h, !10356, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10214)
    #dbg_value(ptr undef, !10341, !DIExpression(), !10139)
    #dbg_declare(ptr poison, !10389, !DIExpression(), !10217)
    #dbg_value(ptr undef, !2258, !DIExpression(), !10138)
    #dbg_value(i64 1, !2265, !DIExpression(), !10219)
    #dbg_value(ptr %.sroa.0.0.lcssa.i.i, !2261, !DIExpression(), !10220)
    #dbg_value(ptr %.sroa.0.0.lcssa.i.i, !2269, !DIExpression(), !10219)
    #dbg_value(ptr %i.h, !2262, !DIExpression(), !10221)
    #dbg_value(ptr poison, !2272, !DIExpression(), !10223)
    #dbg_value(ptr poison, !2275, !DIExpression(), !10224)
  %i.ar = icmp eq ptr %.sroa.0.0.lcssa.i.i, %i.h, !dbg !10431
  br i1 %i.ar, label %_RINvXss_Cs5kGgRUzsVpH_8smallvecINtB6_8SmallVecATyyEj4_EINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12FromIteratorBJ_E9from_iterINtNtNtBY_8adapters6cloned6ClonedINtNtNtB10_5slice4iter4IterBJ_EEECs3f36owOmepS_6quiche.exit, label %.lr.ph77.i.i, !dbg !10432

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader30, %bb.d
  %.sroa.0.073.i.i = phi ptr [ %i.bg, %bb.d ], [ %.sroa.0.073.i.i.ph, %.lr.ph.i.i.preheader30 ] ; 3 uses
  %.sroa.7.072.i.i = phi i64 [ %i.bj, %bb.d ], [ %.sroa.7.072.i.i.ph, %.lr.ph.i.i.preheader30 ] ; 3 uses
    #dbg_value(ptr %.sroa.0.073.i.i, !10348, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10152)
    #dbg_value(i64 %.sroa.7.072.i.i, !10354, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10193)
    #dbg_value(ptr undef, !10341, !DIExpression(), !10146)
    #dbg_declare(ptr poison, !10389, !DIExpression(), !10225)
    #dbg_value(ptr undef, !2258, !DIExpression(), !10145)
    #dbg_value(i64 1, !2265, !DIExpression(), !10227)
    #dbg_value(ptr %.sroa.0.073.i.i, !2261, !DIExpression(), !10228)
    #dbg_value(ptr %.sroa.0.073.i.i, !2269, !DIExpression(), !10227)
    #dbg_value(ptr %i.h, !2262, !DIExpression(), !10229)
    #dbg_value(ptr poison, !2272, !DIExpression(), !10231)
    #dbg_value(ptr poison, !2275, !DIExpression(), !10232)
  %i.as = icmp eq ptr %.sroa.0.073.i.i, %i.h, !dbg !10433
  br i1 %i.as, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterTyyEEENtNtNtB8_6traits8iterator8Iterator4nextCs3f36owOmepS_6quiche.exit.i.i, label %bb.d, !dbg !10424

.lr.ph77.i.i:                                     ; preds = %._crit_edge.i.i, %_RNvMsd_Cs5kGgRUzsVpH_8smallvecINtB5_8SmallVecATyyEj4_E4pushCs3f36owOmepS_6quiche.exit.i.i
  %.sroa.046.075.i.i = phi ptr [ %i.at, %_RNvMsd_Cs5kGgRUzsVpH_8smallvecINtB5_8SmallVecATyyEj4_E4pushCs3f36owOmepS_6quiche.exit.i.i ], [ %.sroa.0.0.lcssa.i.i, %._crit_edge.i.i ] ; 2 uses
    #dbg_value(ptr %.sroa.046.075.i.i, !10356, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10214)
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.046.075.i.i, i64 16, !dbg !10434 ; 2 uses
    #dbg_value(ptr %i.at, !10356, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10214)
    #dbg_value(ptr %.sroa.046.075.i.i, !10393, !DIExpression(), !10233)
    #dbg_value(ptr %.sroa.046.075.i.i, !10388, !DIExpression(), !10234)
    #dbg_value(ptr %.sroa.046.075.i.i, !10390, !DIExpression(), !10235)
  %i.au = load <2 x i64>, ptr %.sroa.046.075.i.i, align 8, !dbg !10435, !noalias !10402
    #dbg_value(i64 poison, !10357, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10240)
    #dbg_value(i64 poison, !10357, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10240)
    #dbg_value(ptr %i.a, !1625, !DIExpression(), !10242)
    #dbg_value(i64 poison, !1629, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10242)
    #dbg_value(i64 poison, !1629, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10242)
    #dbg_value(ptr %i.a, !1605, !DIExpression(), !10244)
    #dbg_value(ptr %i.a, !1616, !DIExpression(), !10246)
  %i.av = load i64, ptr %i.i, align 8, !dbg !10436, !alias.scope !10403, !noalias !10404, !noundef !602 ; 2 uses
  %i.aw = icmp ugt i64 %i.av, 4, !dbg !10436      ; 2 uses
  %i.ax = load ptr, ptr %i.a, align 8, !dbg !10437, !alias.scope !10403, !noalias !10404, !nonnull !602
  %.sink17.i.i.i.i = select i1 %i.aw, ptr %i.ax, ptr %i.a, !dbg !10437
  %.sink16.i.i.i.i = select i1 %i.aw, ptr %i.j, ptr %i.i, !dbg !10437 ; 2 uses
  %.sink.i.i30.i.i = tail call i64 @llvm.umax.i64(i64 %i.av, i64 4), !dbg !10437
    #dbg_value(ptr %.sink17.i.i.i.i, !1630, !DIExpression(), !10252)
    #dbg_value(ptr %.sink16.i.i.i.i, !1631, !DIExpression(), !10252)
    #dbg_value(i64 %.sink.i.i30.i.i, !1632, !DIExpression(), !10252)
  %i.ay = load i64, ptr %.sink16.i.i.i.i, align 8, !dbg !10438, !alias.scope !10405, !noalias !10336, !noundef !602 ; 2 uses
  %i.az = icmp eq i64 %i.ay, %.sink.i.i30.i.i, !dbg !10438
  br i1 %i.az, label %bb.c, label %_RNvMsd_Cs5kGgRUzsVpH_8smallvecINtB5_8SmallVecATyyEj4_E4pushCs3f36owOmepS_6quiche.exit.i.i, !dbg !10438, !prof !1352

bb.c:                                             ; preds = %.lr.ph77.i.i
  invoke fastcc void @_RNvMsd_Cs5kGgRUzsVpH_8smallvecINtB5_8SmallVecATyyEj4_E21reserve_one_uncheckedCs3f36owOmepS_6quiche(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.a)
          to label %.noexc5.i unwind label %.loopexit.i, !dbg !10439, !noalias !10336

.noexc5.i:                                        ; preds = %bb.c
    #dbg_value(ptr %i.a, !1636, !DIExpression(), !10254)
    #dbg_value(ptr %i.a, !1637, !DIExpression(), !10255)
  %i.ba = load ptr, ptr %i.a, align 8, !dbg !10440, !alias.scope !10405, !noalias !10336, !nonnull !602, !noundef !602
    #dbg_value(ptr %i.ba, !1630, !DIExpression(), !10252)
    #dbg_value(ptr %i.j, !1631, !DIExpression(), !10252)
  %.pre.i.i.i = load i64, ptr %i.j, align 8, !dbg !10441, !alias.scope !10405, !noalias !10336
  br label %_RNvMsd_Cs5kGgRUzsVpH_8smallvecINtB5_8SmallVecATyyEj4_E4pushCs3f36owOmepS_6quiche.exit.i.i, !dbg !10442

_RNvMsd_Cs5kGgRUzsVpH_8smallvecINtB5_8SmallVecATyyEj4_E4pushCs3f36owOmepS_6quiche.exit.i.i: ; preds = %.noexc5.i, %.lr.ph77.i.i
  %i.bb = phi i64 [ %.pre.i.i.i, %.noexc5.i ], [ %i.ay, %.lr.ph77.i.i ], !dbg !10441
  %.sroa.01.0.i.i.i = phi ptr [ %i.j, %.noexc5.i ], [ %.sink16.i.i.i.i, %.lr.ph77.i.i ], !dbg !10443 ; 2 uses
  %.sroa.0.0.i31.i.i = phi ptr [ %i.ba, %.noexc5.i ], [ %.sink17.i.i.i.i, %.lr.ph77.i.i ], !dbg !10443
    #dbg_value(ptr %.sroa.0.0.i31.i.i, !1630, !DIExpression(), !10252)
    #dbg_value(ptr %.sroa.01.0.i.i.i, !1631, !DIExpression(), !10252)
    #dbg_value(ptr %.sroa.0.0.i31.i.i, !1639, !DIExpression(), !10257)
    #dbg_value(i64 %i.bb, !1640, !DIExpression(), !10257)
  %i.bc = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.i31.i.i, i64 %i.bb, !dbg !10444
    #dbg_value(ptr %i.bc, !1642, !DIExpression(), !10259)
    #dbg_value(i64 poison, !1645, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10259)
    #dbg_value(i64 poison, !1645, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10259)
  store <2 x i64> %i.au, ptr %i.bc, align 8, !dbg !10445, !noalias !10336
  %i.bd = load i64, ptr %.sroa.01.0.i.i.i, align 8, !dbg !10446, !alias.scope !10405, !noalias !10336, !noundef !602
  %i.be = add i64 %i.bd, 1, !dbg !10446
  store i64 %i.be, ptr %.sroa.01.0.i.i.i, align 8, !dbg !10446, !alias.scope !10405, !noalias !10336
    #dbg_value(ptr %i.at, !10356, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10214)
    #dbg_value(ptr undef, !10341, !DIExpression(), !10139)
    #dbg_declare(ptr poison, !10389, !DIExpression(), !10217)
    #dbg_value(ptr undef, !2258, !DIExpression(), !10138)
    #dbg_value(i64 1, !2265, !DIExpression(), !10219)
    #dbg_value(ptr %i.at, !2261, !DIExpression(), !10220)
    #dbg_value(ptr %i.at, !2269, !DIExpression(), !10219)
    #dbg_value(ptr %i.h, !2262, !DIExpression(), !10221)
    #dbg_value(ptr poison, !2272, !DIExpression(), !10223)
    #dbg_value(ptr poison, !2275, !DIExpression(), !10224)
  %i.bf = icmp eq ptr %i.at, %i.h, !dbg !10431
  br i1 %i.bf, label %_RINvXss_Cs5kGgRUzsVpH_8smallvecINtB6_8SmallVecATyyEj4_EINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12FromIteratorBJ_E9from_iterINtNtNtBY_8adapters6cloned6ClonedINtNtNtB10_5slice4iter4IterBJ_EEECs3f36owOmepS_6quiche.exit, label %.lr.ph77.i.i, !dbg !10432

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.0.073.i.i, i64 16, !dbg !10447 ; 2 uses
    #dbg_value(ptr %i.bg, !10348, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10152)
    #dbg_value(ptr %.sroa.0.073.i.i, !10393, !DIExpression(), !10260)
    #dbg_value(ptr %.sroa.0.073.i.i, !10388, !DIExpression(), !10261)
    #dbg_value(ptr %.sroa.0.073.i.i, !10390, !DIExpression(), !10262)
    #dbg_value(i64 poison, !10355, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10263)
    #dbg_value(i64 poison, !10398, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10264)
    #dbg_value(i64 poison, !10355, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10263)
    #dbg_value(i64 poison, !10398, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10264)
    #dbg_value(i64 %.sroa.7.072.i.i, !10371, !DIExpression(), !10192)
  %i.bh = getelementptr inbounds nuw [16 x i8], ptr %i.u, i64 %.sroa.7.072.i.i, !dbg !10426
    #dbg_value(ptr %i.bh, !10397, !DIExpression(), !10264)
  %i.bi = load <2 x i64>, ptr %.sroa.0.073.i.i, align 8, !dbg !10425, !noalias !10374
  store <2 x i64> %i.bi, ptr %i.bh, align 8, !dbg !10427, !noalias !10336
    #dbg_value(ptr undef, !10359, !DIExpression(), !10142)
  %i.bj = add i64 %.sroa.7.072.i.i, 1, !dbg !10448 ; 2 uses
    #dbg_value(i64 %i.bj, !10354, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10193)
  %exitcond.not.i.i = icmp eq i64 %i.bj, %.sink.i.pre-phi.i1519.i22, !dbg !10423
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !dbg !10423, !llvm.loop !10265

_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterTyyEEENtNtNtB8_6traits8iterator8Iterator4nextCs3f36owOmepS_6quiche.exit.i.i: ; preds = %.lr.ph.i.i
    #dbg_value(ptr poison, !10348, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10152)
    #dbg_value(ptr poison, !1532, !DIExpression(), !10267)
    #dbg_value(ptr poison, !1538, !DIExpression(), !10269)
  store i64 %.sroa.7.072.i.i, ptr %i.t, align 8, !dbg !10449, !alias.scope !10337, !noalias !10336
  br label %_RINvXss_Cs5kGgRUzsVpH_8smallvecINtB6_8SmallVecATyyEj4_EINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12FromIteratorBJ_E9from_iterINtNtNtBY_8adapters6cloned6ClonedINtNtNtB10_5slice4iter4IterBJ_EEECs3f36owOmepS_6quiche.exit, !dbg !10450

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
          to label %bb.g unwind label %bb.f, !dbg !10451, !noalias !10336

bb.f:                                             ; preds = %bb.e
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !dbg !10452, !noalias !10336
  unreachable, !dbg !10452

bb.g:                                             ; preds = %bb.e
  resume { ptr, i32 } %lpad.phi.i, !dbg !10452

_RINvXss_Cs5kGgRUzsVpH_8smallvecINtB6_8SmallVecATyyEj4_EINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12FromIteratorBJ_E9from_iterINtNtNtBY_8adapters6cloned6ClonedINtNtNtB10_5slice4iter4IterBJ_EEECs3f36owOmepS_6quiche.exit: ; preds = %_RNvMsd_Cs5kGgRUzsVpH_8smallvecINtB5_8SmallVecATyyEj4_E4pushCs3f36owOmepS_6quiche.exit.i.i, %._crit_edge.i.i, %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterTyyEEENtNtNtB8_6traits8iterator8Iterator4nextCs3f36owOmepS_6quiche.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 72, i1 false), !dbg !10453
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !10451, !noalias !10336
end_hunk_0
