Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quiche-rs/original/quiche.quiche.25c52dd429969cee-cgu.05?download=true
inline.NumInlined: 71
inline.NumDeleted: 34
begin_hunk_0_@_RNvNtCs3f36owOmepS_6quiche5frame15parse_ack_frame:bb.a
  %i.cr = load i64, ptr %i.be, align 8, !dbg !8012, !alias.scope !7908, !noundef !495
  %i.cs = icmp ult i64 %i.cr, 3, !dbg !8013
  br i1 %i.cs, label %bb.ax, label %_RNvMNtCs3f36owOmepS_6quiche6rangesNtB2_8RangeSet5fixup.exit, !dbg !8013

.noexc:                                           ; preds = %bb.an
    #dbg_value(ptr %i.ak, !7826, !DIExpression(), !7554)
    #dbg_value(ptr poison, !7828, !DIExpression(), !7555)
    #dbg_value(ptr %i.ak, !7850, !DIExpression(), !7557)
    #dbg_value(ptr %i.ak, !7855, !DIExpression(), !7559)
    #dbg_value(ptr %i.ak, !7868, !DIExpression(), !7561)
  %i.ct = load i64, ptr %.sroa.059.sroa.4.0..sroa_idx, align 8, !dbg !8014, !alias.scope !7909, !noundef !495 ; 2 uses
  %i.cu = icmp ugt i64 %i.ct, 4, !dbg !8014
  %i.cv = load i64, ptr %i.bc, align 8, !dbg !8015, !alias.scope !7909
  %.sink21.i127 = select i1 %i.cu, i64 %i.cv, i64 %i.ct, !dbg !8015
  %i.cw = icmp eq i64 %.sink21.i127, 4, !dbg !8016
  br i1 %i.cw, label %bb.ap, label %_RNvMNtCs3f36owOmepS_6quiche6rangesNtB2_8RangeSet5fixup.exit, !dbg !8016

bb.ap:                                            ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !8017, !noalias !7908
    #dbg_value(ptr %i.ak, !7822, !DIExpression(), !7564)
    #dbg_value(ptr %i.ak, !7818, !DIExpression(), !7565)
    #dbg_value(i64 0, !7815, !DIExpression(DW_OP_LLVM_fragment, 512, 64), !7566)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.m, ptr noundef nonnull align 8 dereferenceable(72) %i.ak, i64 72, i1 false), !dbg !8018
  store i64 0, ptr %.sroa.059.sroa.4.0..sroa_idx, align 8, !dbg !8019, !alias.scope !7908
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.sroa.0.i), !dbg !8020
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !8021, !noalias !7908
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !8021, !noalias !7908
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !8021, !noalias !7908
  invoke void @_RNvMsd_Cs5kGgRUzsVpH_8smallvecINtB5_8SmallVecATyyEj4_E10into_innerCs3f36owOmepS_6quiche(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.j, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(72) %i.m)
          to label %.noexc104 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !8022

.noexc104:                                        ; preds = %bb.ap
  call void @llvm.experimental.noalias.scope.decl(metadata !7910), !dbg !8023
  call void @llvm.experimental.noalias.scope.decl(metadata !7911), !dbg !8023
    #dbg_declare(ptr %i.j, !1616, !DIExpression(), !7571)
    #dbg_value(ptr @4, !1617, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7572)
    #dbg_value(i64 11, !1617, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7572)
    #dbg_declare(ptr %i.c, !1619, !DIExpression(), !7573)
  %i.cx = load i64, ptr %i.j, align 8, !dbg !8024, !range !793, !alias.scope !7911, !noundef !495
  %i.cy = trunc nuw i64 %i.cx to i1, !dbg !8025
  br i1 %i.cy, label %bb.aq, label %.noexc105, !dbg !8025, !prof !1223

bb.aq:                                            ; preds = %.noexc104
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !8026, !noalias !7912
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.c, ptr noundef nonnull readonly align 8 dereferenceable(72) %i.bd, i64 72, i1 false), !dbg !8026, !noalias !7910
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @4, i64 noundef 11, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @7, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #14
          to label %bb.as unwind label %bb.ar, !dbg !8027, !noalias !7912

bb.ar:                                            ; preds = %bb.aq
  %i.cz = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.c, !557, !DIExpression(), !7575)
  invoke void @_RNvXsw_Cs5kGgRUzsVpH_8smallvecINtB5_8SmallVecATyyEj4_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3f36owOmepS_6quiche(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.c)
          to label %.body unwind label %bb.at, !dbg !8028, !noalias !7912

bb.as:                                            ; preds = %bb.aq
  unreachable

bb.at:                                            ; preds = %bb.ar
  %i.da = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12, !dbg !8029, !noalias !7912
  unreachable, !dbg !8029

.noexc105:                                        ; preds = %.noexc104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.k, ptr noundef nonnull readonly align 8 dereferenceable(64) %i.bd, i64 64, i1 false), !dbg !8030, !alias.scope !7912
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !8031, !noalias !7908
  invoke void @_RNvXs1z_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB6_8BTreeMapyyEINtNtCskKLDkoKarTP_4core7convert4FromATyyEj4_E4fromCs3f36owOmepS_6quiche(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.l, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.k)
          to label %.noexc106 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !8032

.noexc106:                                        ; preds = %.noexc105
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !8033, !noalias !7908
  %i.db = load i64, ptr %.sroa.460.0..sroa_idx, align 8, !dbg !8034, !alias.scope !7908, !noundef !495 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.sroa.0.i, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !dbg !8035, !noalias !7908
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !8036, !noalias !7908
    #dbg_value(ptr %i.n, !789, !DIExpression(), !7577)
  %i.dc = load i64, ptr %i.n, align 8, !dbg !8037, !range !793, !alias.scope !7913, !noundef !495
  %i.dd = icmp eq i64 %i.dc, 0, !dbg !8037
  br i1 %i.dd, label %bb.au, label %bb.av, !dbg !8037

bb.au:                                            ; preds = %.noexc106
    #dbg_value(ptr %i.ak, !795, !DIExpression(), !7581)
    #dbg_value(ptr %i.ak, !557, !DIExpression(), !7583)
  invoke void @_RNvXsw_Cs5kGgRUzsVpH_8smallvecINtB5_8SmallVecATyyEj4_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3f36owOmepS_6quiche(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.ak)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche6ranges8RangeSetEBF_.exit133 unwind label %bb.aw, !dbg !8038

bb.av:                                            ; preds = %.noexc106
    #dbg_value(ptr %i.ak, !802, !DIExpression(), !7585)
    #dbg_value(ptr %i.ak, !809, !DIExpression(), !7587)
  invoke void @_RNvXNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB2_8BTreeMapyyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3f36owOmepS_6quiche(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ak)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche6ranges8RangeSetEBF_.exit133 unwind label %bb.aw, !dbg !8039

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.de = landingpad { ptr, i32 }
          cleanup
  store i64 1, ptr %i.n, align 8, !dbg !8040, !alias.scope !7908
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.sroa.0.i, i64 24, i1 false), !dbg !8040
  store i64 %i.db, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx2.sroa_idx.i, align 8, !dbg !8040, !alias.scope !7908
  br label %.body, !dbg !8040

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche6ranges8RangeSetEBF_.exit133: ; preds = %bb.au, %bb.av
  store i64 1, ptr %i.n, align 8, !dbg !8040, !alias.scope !7908
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.sroa.0.i, i64 24, i1 false), !dbg !8040
  store i64 %i.db, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx2.sroa_idx.i, align 8, !dbg !8040, !alias.scope !7908
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.sroa.0.i), !dbg !8041
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !8042, !noalias !7908
  br label %_RNvMNtCs3f36owOmepS_6quiche6rangesNtB2_8RangeSet5fixup.exit, !dbg !8043

bb.ax:                                            ; preds = %bb.ao
    #dbg_value(ptr %i.ak, !7875, !DIExpression(), !7589)
    #dbg_value(ptr %i.ak, !7879, !DIExpression(), !7591)
    #dbg_value(ptr null, !7882, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7592)
    #dbg_value(i64 undef, !7882, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7592)
    #dbg_value(i64 0, !7882, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !7592)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !8044, !noalias !7914
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.ak, i64 24, i1 false), !dbg !8045
  store ptr null, ptr %i.ak, align 8, !dbg !8046, !alias.scope !7908
  store i64 0, ptr %i.be, align 8, !dbg !8046, !alias.scope !7908
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.sroa.012.i), !dbg !8047
    #dbg_declare(ptr poison, !819, !DIExpression(), !7597)
    #dbg_declare(ptr %i.b, !820, !DIExpression(), !7598)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !8048, !noalias !7914
  store i64 0, ptr %i.bf, align 8, !dbg !8049, !noalias !7914
  invoke void @_RINvXst_Cs5kGgRUzsVpH_8smallvecINtB6_8SmallVecATyyEj4_EINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect6ExtendBJ_E6extendINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map8BTreeMapyyEECs3f36owOmepS_6quiche(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %.noexc107 unwind label %bb.ay, !dbg !8050, !noalias !7914

bb.ay:                                            ; preds = %bb.ax
  %i.df = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.b, !557, !DIExpression(), !7601)
  invoke void @_RNvXsw_Cs5kGgRUzsVpH_8smallvecINtB5_8SmallVecATyyEj4_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3f36owOmepS_6quiche(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.b)
          to label %.body unwind label %bb.az, !dbg !8051, !noalias !7914

bb.az:                                            ; preds = %bb.ay
  %i.dg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12, !dbg !8052, !noalias !7914
  unreachable, !dbg !8052

.noexc107:                                        ; preds = %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !8053, !noalias !7914
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.5.sroa.012.i, ptr noundef nonnull align 8 dereferenceable(72) %i.b, i64 72, i1 false), !dbg !8054, !noalias !495
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !8055, !noalias !7914
  %i.dh = load i64, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx2.sroa_idx.i, align 8, !dbg !8056, !alias.scope !7908, !noundef !495 ; 2 uses
    #dbg_value(ptr %i.n, !789, !DIExpression(), !7603)
  %i.di = load i64, ptr %i.n, align 8, !dbg !8057, !range !793, !alias.scope !7915, !noundef !495
  %i.dj = icmp eq i64 %i.di, 0, !dbg !8057
  br i1 %i.dj, label %bb.ba, label %bb.bb, !dbg !8057

bb.ba:                                            ; preds = %.noexc107
    #dbg_value(ptr %i.ak, !795, !DIExpression(), !7607)
    #dbg_value(ptr %i.ak, !557, !DIExpression(), !7609)
  invoke void @_RNvXsw_Cs5kGgRUzsVpH_8smallvecINtB5_8SmallVecATyyEj4_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3f36owOmepS_6quiche(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.ak)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche6ranges8RangeSetEBF_.exit138 unwind label %bb.bc, !dbg !8058

bb.bb:                                            ; preds = %.noexc107
    #dbg_value(ptr %i.ak, !802, !DIExpression(), !7611)
    #dbg_value(ptr %i.ak, !809, !DIExpression(), !7613)
  invoke void @_RNvXNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB2_8BTreeMapyyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3f36owOmepS_6quiche(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ak)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche6ranges8RangeSetEBF_.exit138 unwind label %bb.bc, !dbg !8059

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %i.dk = landingpad { ptr, i32 }
          cleanup
  store i64 0, ptr %i.n, align 8, !dbg !8060, !alias.scope !7908
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ak, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.5.sroa.012.i, i64 72, i1 false), !dbg !8060
  store i64 %i.dh, ptr %.sroa.460.0..sroa_idx, align 8, !dbg !8060, !alias.scope !7908
  br label %.body, !dbg !8060

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche6ranges8RangeSetEBF_.exit138: ; preds = %bb.ba, %bb.bb
  store i64 0, ptr %i.n, align 8, !dbg !8060, !alias.scope !7908
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ak, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.5.sroa.012.i, i64 72, i1 false), !dbg !8060
  store i64 %i.dh, ptr %.sroa.460.0..sroa_idx, align 8, !dbg !8060, !alias.scope !7908
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.sroa.012.i), !dbg !8061
  br label %_RNvMNtCs3f36owOmepS_6quiche6rangesNtB2_8RangeSet5fixup.exit, !dbg !8062

_RNvMNtCs3f36owOmepS_6quiche6rangesNtB2_8RangeSet5fixup.exit: ; preds = %bb.ao, %.noexc, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche6ranges8RangeSetEBF_.exit133, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche6ranges8RangeSetEBF_.exit138
    #dbg_value(i64 %i.cl, !7629, !DIExpression(), !7791)
    #dbg_value(i64 %i.bi, !7631, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7885)
    #dbg_value(ptr undef, !7669, !DIExpression(), !7678)
    #dbg_value(ptr undef, !7674, !DIExpression(), !7677)
    #dbg_value(ptr undef, !7650, !DIExpression(), !7662)
    #dbg_value(ptr undef, !7656, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !7886)
  %exitcond.not = icmp eq i64 %i.bi, %i.aa, !dbg !7978
  br i1 %exitcond.not, label %._crit_edge, label %bb.t, !dbg !7661

bb.bd:                                            ; preds = %.body
  %i.dl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12, !dbg !8063
  unreachable, !dbg !8063

bb.be:                                            ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body, !dbg !8063
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtCs3f36owOmepS_6quiche5frame18parse_stream_frame(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(128) %0, i64 noundef range(i64 8, 16) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 !dbg !8079 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
    #dbg_value(i64 %1, !8097, !DIExpression(), !8115)
    #dbg_value(ptr %2, !8098, !DIExpression(), !8115)
    #dbg_value(ptr %2, !8116, !DIExpression(), !8119)
    #dbg_declare(ptr %i.b, !8110, !DIExpression(), !8120)
    #dbg_declare(ptr %i.a, !8121, !DIExpression(), !8126)
    #dbg_declare(ptr poison, !8112, !DIExpression(), !8127)
    #dbg_declare(ptr poison, !8113, !DIExpression(), !8128)
    #dbg_declare(ptr poison, !8122, !DIExpression(), !8129)
    #dbg_declare(ptr poison, !8101, !DIExpression(), !8130)
    #dbg_declare(ptr poison, !8104, !DIExpression(), !8131)
    #dbg_declare(ptr poison, !8107, !DIExpression(), !8132)
    #dbg_declare(ptr poison, !8111, !DIExpression(), !8133)
    #dbg_declare(ptr poison, !8134, !DIExpression(), !8142)
    #dbg_declare(ptr poison, !8135, !DIExpression(), !8143)
    #dbg_declare(ptr poison, !8134, !DIExpression(), !8146)
    #dbg_declare(ptr poison, !8136, !DIExpression(), !8147)
    #dbg_declare(ptr poison, !8134, !DIExpression(), !8150)
    #dbg_declare(ptr poison, !8137, !DIExpression(), !8151)
    #dbg_declare(ptr poison, !8134, !DIExpression(), !8154)
    #dbg_declare(ptr poison, !8138, !DIExpression(), !8155)
  %i.c = trunc nuw nsw i64 %1 to i8, !dbg !8186   ; 2 uses
    #dbg_value(i8 %i.c, !8099, !DIExpression(), !8156)
  %i.d = tail call { i64, i64 } @_RNvMs0_Cs3cD8Bj6DSIP_6octetsNtB5_6Octets10get_varint(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2), !dbg !8187 ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.d, 0, !dbg !8187
  %i.f = extractvalue { i64, i64 } %i.d, 1, !dbg !8187
    #dbg_value(i64 %i.e, !8157, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8166)
    #dbg_value(i64 %i.f, !8157, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8166)
  %i.g = trunc nuw i64 %i.e to i1, !dbg !8188
  br i1 %i.g, label %bb.b, label %bb.c, !dbg !8188

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !8189
  store i64 1, ptr %i.h, align 8, !dbg !8189
  store i64 -1, ptr %0, align 8, !dbg !8189
  br label %bb.q, !dbg !8190

bb.c:                                             ; preds = %bb.a
    #dbg_value(i64 %i.f, !8100, !DIExpression(), !8168)
  %i.i = and i8 %i.c, 4, !dbg !8191
  %i.j = icmp eq i8 %i.i, 0, !dbg !8191
  br i1 %i.j, label %bb.e, label %bb.d, !dbg !8191

bb.d:                                             ; preds = %bb.c
  %i.k = tail call { i64, i64 } @_RNvMs0_Cs3cD8Bj6DSIP_6octetsNtB5_6Octets10get_varint(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2), !dbg !8192 ; 2 uses
  %i.l = extractvalue { i64, i64 } %i.k, 0, !dbg !8192
    #dbg_value(i64 %i.l, !8157, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8170)
    #dbg_value(i64 poison, !8157, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8170)
  %i.m = trunc nuw i64 %i.l to i1, !dbg !8193
  br i1 %i.m, label %bb.f, label %bb.g, !dbg !8193

bb.e:                                             ; preds = %bb.c, %bb.g
  %.sroa.08.0 = phi i64 [ %i.q, %bb.g ], [ 0, %bb.c ], !dbg !8168 ; 2 uses
    #dbg_value(i64 %.sroa.08.0, !8171, !DIExpression(), !8176)
    #dbg_value(i64 %.sroa.08.0, !8103, !DIExpression(), !8177)
  %i.n = and i8 %i.c, 2, !dbg !8194
  %i.o = icmp eq i8 %i.n, 0, !dbg !8194
  br i1 %i.o, label %bb.h, label %bb.i, !dbg !8194

bb.f:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !8195
  store i64 1, ptr %i.p, align 8, !dbg !8195
  store i64 -1, ptr %0, align 8, !dbg !8195
  br label %bb.q, !dbg !8196

bb.g:                                             ; preds = %bb.d
  %i.q = extractvalue { i64, i64 } %i.k, 1, !dbg !8192
    #dbg_value(i64 %i.q, !8157, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8170)
    #dbg_value(i64 %i.q, !8103, !DIExpression(), !8177)
    #dbg_value(i64 %i.q, !8171, !DIExpression(), !8176)
  br label %bb.e, !dbg !8197

bb.h:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !8198
  %i.s = load i64, ptr %i.r, align 8, !dbg !8198, !noundef !495
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !8199
  %i.u = load i64, ptr %i.t, align 8, !dbg !8199, !noundef !495
  %i.v = sub i64 %i.s, %i.u, !dbg !8198
    #dbg_value(i64 %i.v, !8106, !DIExpression(), !8179)
  br label %bb.j, !dbg !8200

bb.i:                                             ; preds = %bb.e
  %i.w = tail call { i64, i64 } @_RNvMs0_Cs3cD8Bj6DSIP_6octetsNtB5_6Octets10get_varint(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2), !dbg !8201 ; 2 uses
  %i.x = extractvalue { i64, i64 } %i.w, 0, !dbg !8201
    #dbg_value(i64 %i.x, !8157, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8181)
    #dbg_value(i64 poison, !8157, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8181)
  %i.y = trunc nuw i64 %i.x to i1, !dbg !8202
  br i1 %i.y, label %bb.k, label %bb.l, !dbg !8202

bb.j:                                             ; preds = %bb.l, %bb.h
  %.sroa.010.0 = phi i64 [ %i.v, %bb.h ], [ %i.ac, %bb.l ], !dbg !8177 ; 2 uses
    #dbg_value(i64 %.sroa.010.0, !8106, !DIExpression(), !8179)
  %i.z = add i64 %.sroa.010.0, %.sroa.08.0, !dbg !8203
  %i.aa = icmp ugt i64 %i.z, 4611686018427387903, !dbg !8203
  br i1 %i.aa, label %bb.n, label %bb.m, !dbg !8203

bb.k:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !8204
  store i64 1, ptr %i.ab, align 8, !dbg !8204
  store i64 -1, ptr %0, align 8, !dbg !8204
  br label %bb.q, !dbg !8205

bb.l:                                             ; preds = %bb.i
  %i.ac = extractvalue { i64, i64 } %i.w, 1, !dbg !8201
    #dbg_value(i64 %i.ac, !8157, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8181)
    #dbg_value(i64 %i.ac, !8106, !DIExpression(), !8179)
  br label %bb.j, !dbg !8200

bb.m:                                             ; preds = %bb.j
    #dbg_value(i8 %i.c, !8109, !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_lit0, DW_OP_ne, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !8184)
    #dbg_value(i8 %i.c, !8173, !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_lit0, DW_OP_ne, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !8176)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !8206
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !8125
  call void @_RNvMs0_Cs3cD8Bj6DSIP_6octetsNtB5_6Octets9get_bytes(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %.sroa.010.0), !dbg !8207
  %i.ad = load ptr, ptr %i.a, align 8, !dbg !8208, !noundef !495
  %i.ae = icmp eq ptr %i.ad, null, !dbg !8208
  br i1 %i.ae, label %bb.o, label %bb.p, !dbg !8209

bb.n:                                             ; preds = %bb.j
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !8210
  store i64 3, ptr %i.af, align 8, !dbg !8210
  store i64 -1, ptr %0, align 8, !dbg !8210
  br label %bb.q, !dbg !8211

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !8212
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !8213
  store i64 1, ptr %i.ag, align 8, !dbg !8213
  store i64 -1, ptr %0, align 8, !dbg !8213
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !8214
  br label %bb.q, !dbg !8211

bb.p:                                             ; preds = %bb.m
  %i.ah = trunc i64 %1 to i1, !dbg !8215
    #dbg_value(i1 %i.ah, !8173, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !8176)
    #dbg_value(i1 %i.ah, !8109, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !8184)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !dbg !8216
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !8212
  %i.ai = call { ptr, i64 } @_RNvXs1_Cs3cD8Bj6DSIP_6octetsNtB5_6OctetsINtNtCskKLDkoKarTP_4core7convert5AsRefShE6as_ref(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.b), !dbg !8217 ; 2 uses
  %i.aj = extractvalue { ptr, i64 } %i.ai, 0, !dbg !8217
  %i.ak = extractvalue { ptr, i64 } %i.ai, 1, !dbg !8217
    #dbg_value(ptr %i.aj, !8172, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8176)
    #dbg_value(i64 %i.ak, !8172, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8176)
  %i.al = call { ptr, i64 } @_RNvXNtCs3f36owOmepS_6quiche7buffersNtB2_17DefaultBufFactoryNtB2_10BufFactory14buf_from_slice(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aj, i64 noundef %i.ak), !dbg !8218 ; 2 uses
  %i.am = extractvalue { ptr, i64 } %i.al, 0, !dbg !8218
  %i.an = extractvalue { ptr, i64 } %i.al, 1, !dbg !8218
  %.sroa.519.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !8219
  call void @_RNvMNtCs3f36owOmepS_6quiche9range_bufNtB2_8RangeBuf8from_rawB4_(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %.sroa.519.0..sroa_idx, ptr noundef nonnull %i.am, i64 noundef %i.an, i64 noundef %.sroa.08.0, i1 noundef zeroext %i.ah), !dbg !8220
  store i64 10, ptr %0, align 8, !dbg !8219
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !8219
  store i64 %i.f, ptr %.sroa.418.0..sroa_idx, align 8, !dbg !8219
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !8214
  br label %bb.q, !dbg !8221

bb.q:                                             ; preds = %bb.b, %bb.k, %bb.n, %bb.o, %bb.f, %bb.p
  ret void, !dbg !8221
}

; Function Attrs: nonlazybind uwtable
define { i64, i64 } @_RNvNtCs3f36owOmepS_6quiche5frame19encode_dgram_header(i64 noundef %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !dbg !315 {
bb.a:
    #dbg_value(i64 %0, !1573, !DIExpression(), !8222)
    #dbg_value(ptr %1, !1576, !DIExpression(), !8222)
    #dbg_value(i8 48, !1577, !DIExpression(), !8223)
    #dbg_value(i8 49, !1577, !DIExpression(), !8223)
  %i.a = tail call { ptr, i64 } @_RNvMs2_Cs3cD8Bj6DSIP_6octetsNtB5_9OctetsMut10put_varint(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 49), !dbg !8228
  %i.b = extractvalue { ptr, i64 } %i.a, 0, !dbg !8228
    #dbg_value(ptr %i.b, !1583, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8225)
    #dbg_value(i64 poison, !1583, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8225)
  %i.c = icmp eq ptr %i.b, null, !dbg !8229
  br i1 %i.c, label %bb.c, label %bb.b, !dbg !8230

bb.b:                                             ; preds = %bb.a
  %i.d = tail call { ptr, i64 } @_RNvMs2_Cs3cD8Bj6DSIP_6octetsNtB5_9OctetsMut19put_varint_with_len(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %0, i64 noundef 2), !dbg !8231
  %i.e = extractvalue { ptr, i64 } %i.d, 0, !dbg !8231
    #dbg_value(ptr %i.e, !1583, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8227)
    #dbg_value(i64 poison, !1583, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8227)
  %i.f = icmp eq ptr %i.e, null, !dbg !8232
  %. = select i1 %i.f, i64 1, i64 -1, !dbg !8233
  br label %bb.c, !dbg !8233

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.0.0 = phi i64 [ 1, %bb.a ], [ %., %bb.b ], !dbg !8223
  %i.g = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0, !dbg !8234
  %i.h = insertvalue { i64, i64 } %i.g, i64 undef, 1, !dbg !8234
  ret { i64, i64 } %i.h, !dbg !8234
}

; Function Attrs: nonlazybind uwtable
define { i64, i64 } @_RNvNtCs3f36owOmepS_6quiche5frame20encode_crypto_header(i64 noundef %0, i64 noundef %1, ptr noalias nofree noundef align 8 dereferenceable(24) %2) unnamed_addr #0 !dbg !283 {
bb.a:
    #dbg_value(i64 %0, !1516, !DIExpression(), !8235)
    #dbg_value(i64 %1, !1529, !DIExpression(), !8235)
    #dbg_value(ptr %2, !1530, !DIExpression(), !8235)
  %i.a = tail call { ptr, i64 } @_RNvMs2_Cs3cD8Bj6DSIP_6octetsNtB5_9OctetsMut10put_varint(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2, i64 noundef 6), !dbg !8242
  %i.b = extractvalue { ptr, i64 } %i.a, 0, !dbg !8242
    #dbg_value(ptr %i.b, !1538, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8237)
    #dbg_value(i64 poison, !1538, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8237)
  %i.c = icmp eq ptr %i.b, null, !dbg !8243
  br i1 %i.c, label %bb.d, label %bb.b, !dbg !8244

bb.b:                                             ; preds = %bb.a
  %i.d = tail call { ptr, i64 } @_RNvMs2_Cs3cD8Bj6DSIP_6octetsNtB5_9OctetsMut10put_varint(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %0), !dbg !8245
  %i.e = extractvalue { ptr, i64 } %i.d, 0, !dbg !8245
    #dbg_value(ptr %i.e, !1538, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8239)
    #dbg_value(i64 poison, !1538, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8239)
  %i.f = icmp eq ptr %i.e, null, !dbg !8246
  br i1 %i.f, label %bb.d, label %bb.c, !dbg !8247

bb.c:                                             ; preds = %bb.b
  %i.g = tail call { ptr, i64 } @_RNvMs2_Cs3cD8Bj6DSIP_6octetsNtB5_9OctetsMut19put_varint_with_len(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %1, i64 noundef 2), !dbg !8248
  %i.h = extractvalue { ptr, i64 } %i.g, 0, !dbg !8248
    #dbg_value(ptr %i.h, !1538, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8241)
    #dbg_value(i64 poison, !1538, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8241)
  %i.i = icmp eq ptr %i.h, null, !dbg !8249
  %. = select i1 %i.i, i64 1, i64 -1, !dbg !8250
  br label %bb.d, !dbg !8250

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.sroa.0.0 = phi i64 [ 1, %bb.b ], [ 1, %bb.a ], [ %., %bb.c ], !dbg !8235
  %i.j = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0, !dbg !8251
  %i.k = insertvalue { i64, i64 } %i.j, i64 undef, 1, !dbg !8251
  ret { i64, i64 } %i.k, !dbg !8251
}

; Function Attrs: nonlazybind uwtable
define { i64, i64 } @_RNvNtCs3f36owOmepS_6quiche5frame20encode_stream_header(i64 noundef %0, i64 noundef %1, i64 noundef %2, i1 noundef zeroext %3, ptr noalias nofree noundef align 8 dereferenceable(24) %4) unnamed_addr #0 !dbg !300 {
bb.a:
    #dbg_value(i64 %0, !1546, !DIExpression(), !8252)
    #dbg_value(i64 %1, !1549, !DIExpression(), !8252)
    #dbg_value(i64 %2, !1550, !DIExpression(), !8252)
    #dbg_value(i1 %3, !1551, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !8252)
    #dbg_value(ptr %4, !1552, !DIExpression(), !8252)
    #dbg_value(i8 8, !1553, !DIExpression(), !8253)
    #dbg_value(i8 12, !1553, !DIExpression(), !8253)
    #dbg_value(i8 14, !1553, !DIExpression(), !8253)
  %spec.select = select i1 %3, i64 15, i64 14, !dbg !8262
    #dbg_value(i64 %spec.select, !1553, !DIExpression(), !8253)
  %i.a = tail call { ptr, i64 } @_RNvMs2_Cs3cD8Bj6DSIP_6octetsNtB5_9OctetsMut10put_varint(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %spec.select), !dbg !8263
  %i.b = extractvalue { ptr, i64 } %i.a, 0, !dbg !8263
    #dbg_value(ptr %i.b, !1563, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8255)
    #dbg_value(i64 poison, !1563, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8255)
  %i.c = icmp eq ptr %i.b, null, !dbg !8264
  br i1 %i.c, label %bb.e, label %bb.b, !dbg !8265

bb.b:                                             ; preds = %bb.a
  %i.d = tail call { ptr, i64 } @_RNvMs2_Cs3cD8Bj6DSIP_6octetsNtB5_9OctetsMut10put_varint(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %0), !dbg !8266
  %i.e = extractvalue { ptr, i64 } %i.d, 0, !dbg !8266
    #dbg_value(ptr %i.e, !1563, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8257)
    #dbg_value(i64 poison, !1563, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8257)
  %i.f = icmp eq ptr %i.e, null, !dbg !8267
  br i1 %i.f, label %bb.e, label %bb.c, !dbg !8268

bb.c:                                             ; preds = %bb.b
  %i.g = tail call { ptr, i64 } @_RNvMs2_Cs3cD8Bj6DSIP_6octetsNtB5_9OctetsMut10put_varint(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %1), !dbg !8269
  %i.h = extractvalue { ptr, i64 } %i.g, 0, !dbg !8269
    #dbg_value(ptr %i.h, !1563, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8259)
    #dbg_value(i64 poison, !1563, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8259)
  %i.i = icmp eq ptr %i.h, null, !dbg !8270
  br i1 %i.i, label %bb.e, label %bb.d, !dbg !8271

bb.d:                                             ; preds = %bb.c
  %i.j = tail call { ptr, i64 } @_RNvMs2_Cs3cD8Bj6DSIP_6octetsNtB5_9OctetsMut19put_varint_with_len(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %2, i64 noundef 2), !dbg !8272
  %i.k = extractvalue { ptr, i64 } %i.j, 0, !dbg !8272
    #dbg_value(ptr %i.k, !1563, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8261)
    #dbg_value(i64 poison, !1563, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8261)
  %i.l = icmp eq ptr %i.k, null, !dbg !8273
  %. = select i1 %i.l, i64 1, i64 -1, !dbg !8274
  br label %bb.e, !dbg !8274

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %.sroa.0.0 = phi i64 [ 1, %bb.c ], [ 1, %bb.a ], [ 1, %bb.b ], [ %., %bb.d ], !dbg !8253
  %i.m = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0, !dbg !8275
  %i.n = insertvalue { i64, i64 } %i.m, i64 undef, 1, !dbg !8275
  ret { i64, i64 } %i.n, !dbg !8275
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCs3f36owOmepS_6quiche5frame9EcnCountsNtB6_5Debug3fmtBA_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !dbg !8276 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
    #dbg_value(ptr %0, !8287, !DIExpression(), !8290)
    #dbg_value(ptr %1, !8288, !DIExpression(), !8290)
  %i.b = load ptr, ptr %0, align 8, !dbg !8298, !nonnull !495, !align !1622, !noundef !495 ; 3 uses
    #dbg_value(ptr %i.b, !8291, !DIExpression(), !8279)
    #dbg_value(ptr %1, !8295, !DIExpression(), !8279)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !8299
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !8300, !noalias !8297
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !8300
  store ptr %i.d, ptr %i.a, align 8, !dbg !8300, !noalias !8297
  %i.e = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field3_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 9, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 10, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @8, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @12, i64 noundef 10, ptr noundef nonnull readonly %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @8, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 12, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @9), !dbg !8301
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !8302, !noalias !8297
  ret i1 %i.e, !dbg !8303
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsX_NtNtCskKLDkoKarTP_4core3fmt3numyNtB7_5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 !dbg !8304 {
bb.a:
    #dbg_value(ptr %0, !8312, !DIExpression(), !8315)
    #dbg_value(ptr %1, !8313, !DIExpression(), !8315)
    #dbg_value(ptr %1, !8316, !DIExpression(), !8323)
    #dbg_value(ptr %1, !8324, !DIExpression(), !8328)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !8329
  %i.b = load i32, ptr %i.a, align 8, !dbg !8329, !noundef !495 ; 2 uses
  %i.c = and i32 %i.b, 33554432, !dbg !8329
  %.not = icmp eq i32 %i.c, 0, !dbg !8329
  br i1 %.not, label %bb.b, label %bb.c, !dbg !8330

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %i.b, 67108864, !dbg !8331
  %.not3 = icmp eq i32 %i.d, 0, !dbg !8331
  br i1 %.not3, label %bb.d, label %bb.e, !dbg !8332

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_RNvXsC_NtNtCskKLDkoKarTP_4core3fmt3numyNtB7_8LowerHex3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !dbg !8333
  br label %bb.f, !dbg !8333

bb.d:                                             ; preds = %bb.b
  %i.f = tail call noundef zeroext i1 @_RNvXsd_NtNtNtCskKLDkoKarTP_4core3fmt3num3impyNtB9_7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !dbg !8334
  br label %bb.f, !dbg !8334

bb.e:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_RNvXsE_NtNtCskKLDkoKarTP_4core3fmt3numyNtB7_8UpperHex3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !dbg !8335
  br label %bb.f, !dbg !8335

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.e, %bb.c ], [ %i.g, %bb.e ], [ %i.f, %bb.d ]
  ret i1 %.sroa.0.0.in, !dbg !8336
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs_NtCs3f36owOmepS_6quiche5frameNtB4_5FrameNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(128) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 !dbg !8488 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [48 x i8], align 8                ; 9 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = alloca [16 x i8], align 8                ; 5 uses
  %i.m = alloca [8 x i8], align 8                 ; 4 uses
  %i.n = alloca [16 x i8], align 8                ; 5 uses
  %i.o = alloca [8 x i8], align 8                 ; 4 uses
  %i.p = alloca [16 x i8], align 8                ; 5 uses
  %i.q = alloca [8 x i8], align 8                 ; 4 uses
  %i.r = alloca [64 x i8], align 8                ; 11 uses
  %i.s = alloca [8 x i8], align 8                 ; 4 uses
  %i.t = alloca [8 x i8], align 8                 ; 4 uses
  %i.u = alloca [8 x i8], align 8                 ; 4 uses
  %i.v = alloca [8 x i8], align 8                 ; 4 uses
  %i.w = alloca [16 x i8], align 8                ; 5 uses
end_hunk_0
begin_hunk_1_@llvm.experimental.noalias.scope.decl
!8013 = !DILocation(line: 96, column: 37, scope: !7484, inlinedAt: !7541)
!8014 = !DILocation(line: 1026, column: 9, scope: !7512, inlinedAt: !7560)
!8015 = !DILocation(line: 997, column: 16, scope: !7509, inlinedAt: !7558)
!8016 = !DILocation(line: 88, column: 38, scope: !7484, inlinedAt: !7541)
!8017 = !DILocation(line: 89, column: 21, scope: !7485, inlinedAt: !7541)
!8018 = !DILocation(line: 975, column: 22, scope: !7479, inlinedAt: !7543)
!8019 = !DILocation(line: 976, column: 49, scope: !7479, inlinedAt: !7543)
!8020 = !DILocation(line: 90, column: 25, scope: !7483, inlinedAt: !7541)
!8021 = !DILocation(line: 91, column: 28, scope: !7483, inlinedAt: !7541)
!8022 = !DILocation(line: 91, column: 38, scope: !7483, inlinedAt: !7541)
!8023 = !DILocation(line: 91, column: 51, scope: !7483, inlinedAt: !7541)
!8024 = !DILocation(line: 1182, column: 15, scope: !327, inlinedAt: !7570)
!8025 = !DILocation(line: 1182, column: 9, scope: !327, inlinedAt: !7570)
!8026 = !DILocation(line: 1184, column: 17, scope: !327, inlinedAt: !7570)
!8027 = !DILocation(line: 1184, column: 23, scope: !325, inlinedAt: !7570)
!8028 = !DILocation(line: 848, column: 1, scope: !17, inlinedAt: !7574)
!8029 = !DILocation(line: 1178, column: 5, scope: !327, inlinedAt: !7570)
!8030 = !DILocation(line: 1183, column: 16, scope: !327, inlinedAt: !7570)
!8031 = !DILocation(line: 91, column: 71, scope: !7483, inlinedAt: !7541)
!8032 = !DILocation(line: 780, column: 9, scope: !7492, inlinedAt: !7547)
!8033 = !DILocation(line: 91, column: 78, scope: !7483, inlinedAt: !7541)
!8034 = !DILocation(line: 92, column: 31, scope: !7483, inlinedAt: !7541)
!8035 = !DILocation(line: 90, column: 41, scope: !7483, inlinedAt: !7541)
!8036 = !DILocation(line: 93, column: 17, scope: !7483, inlinedAt: !7541)
!8037 = !DILocation(line: 848, column: 1, scope: !79, inlinedAt: !7576)
!8038 = !DILocation(line: 848, column: 1, scope: !17, inlinedAt: !7582)
!8039 = !DILocation(line: 848, column: 1, scope: !82, inlinedAt: !7586)
!8040 = !DILocation(line: 90, column: 17, scope: !7483, inlinedAt: !7541)
!8041 = !DILocation(line: 93, column: 18, scope: !7483, inlinedAt: !7541)
!8042 = !DILocation(line: 94, column: 13, scope: !7485, inlinedAt: !7541)
!8043 = !DILocation(line: 94, column: 13, scope: !7484, inlinedAt: !7541)
!8044 = !DILocation(line: 2105, column: 18, scope: !83, inlinedAt: !7596)
!8045 = !DILocation(line: 975, column: 22, scope: !7523, inlinedAt: !7590)
!8046 = !DILocation(line: 976, column: 49, scope: !7523, inlinedAt: !7590)
!8047 = !DILocation(line: 98, column: 25, scope: !7481, inlinedAt: !7541)
!8048 = !DILocation(line: 2104, column: 13, scope: !84, inlinedAt: !7596)
!8049 = !DILocation(line: 810, column: 9, scope: !85, inlinedAt: !7599)
!8050 = !DILocation(line: 2105, column: 11, scope: !83, inlinedAt: !7596)
!8051 = !DILocation(line: 848, column: 1, scope: !17, inlinedAt: !7600)
!8052 = !DILocation(line: 2103, column: 5, scope: !84, inlinedAt: !7596)
!8053 = !DILocation(line: 2105, column: 26, scope: !83, inlinedAt: !7596)
!8054 = !DILocation(line: 2106, column: 9, scope: !83, inlinedAt: !7596)
!8055 = !DILocation(line: 2107, column: 5, scope: !84, inlinedAt: !7596)
!8056 = !DILocation(line: 100, column: 31, scope: !7481, inlinedAt: !7541)
!8057 = !DILocation(line: 848, column: 1, scope: !79, inlinedAt: !7602)
!8058 = !DILocation(line: 848, column: 1, scope: !17, inlinedAt: !7608)
!8059 = !DILocation(line: 848, column: 1, scope: !82, inlinedAt: !7612)
!8060 = !DILocation(line: 98, column: 17, scope: !7481, inlinedAt: !7541)
!8061 = !DILocation(line: 101, column: 18, scope: !7481, inlinedAt: !7541)
!8062 = !DILocation(line: 102, column: 13, scope: !7484, inlinedAt: !7541)
!8063 = !DILocation(line: 1259, column: 1, scope: !7435)
!8064 = distinct !DILexicalBlock(scope: !8067, file: !827, line: 1393, column: 5)
!8065 = distinct !DILexicalBlock(scope: !8068, file: !827, line: 1392, column: 32)
!8066 = distinct !DILexicalBlock(scope: !8068, file: !827, line: 1392, column: 32)
!8067 = distinct !DILexicalBlock(scope: !8068, file: !827, line: 1392, column: 5)
!8068 = distinct !DILexicalBlock(scope: !8071, file: !827, line: 1390, column: 5)
!8069 = distinct !DILexicalBlock(scope: !8074, file: !827, line: 1381, column: 23)
!8070 = distinct !DILexicalBlock(scope: !8074, file: !827, line: 1381, column: 23)
!8071 = distinct !DILexicalBlock(scope: !8074, file: !827, line: 1380, column: 5)
!8072 = distinct !DILexicalBlock(scope: !8077, file: !827, line: 1375, column: 23)
!8073 = distinct !DILexicalBlock(scope: !8077, file: !827, line: 1375, column: 23)
!8074 = distinct !DILexicalBlock(scope: !8077, file: !827, line: 1374, column: 5)
!8075 = distinct !DILexicalBlock(scope: !8078, file: !827, line: 1372, column: 35)
!8076 = distinct !DILexicalBlock(scope: !8078, file: !827, line: 1372, column: 35)
!8077 = distinct !DILexicalBlock(scope: !8078, file: !827, line: 1372, column: 5)
!8078 = distinct !DILexicalBlock(scope: !8079, file: !827, line: 1370, column: 5)
!8079 = distinct !DISubprogram(name: "parse_stream_frame", linkageName: "_RNvNtCs3f36owOmepS_6quiche5frame18parse_stream_frame", scope: !828, file: !827, line: 1369, type: !1172, scopeLine: 1369, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !16, templateParams: !495, retainedNodes: !8114)
!8080 = distinct !DISubprogram(name: "cap", linkageName: "_RNvMs0_Cs3cD8Bj6DSIP_6octetsNtB5_6Octets3cap", scope: !137, file: !1173, line: 367, type: !1176, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !16, templateParams: !495, declaration: !1177, retainedNodes: !8117)
!8081 = distinct !DILexicalBlock(scope: !8083, file: !1083, line: 2178, column: 13)
!8082 = distinct !DILexicalBlock(scope: !8083, file: !1083, line: 2177, column: 13)
!8083 = distinct !DISubprogram(name: "branch<octets::Octets, octets::BufferTooShortError>", linkageName: "_RNvXsp_NtCskKLDkoKarTP_4core6resultINtB5_6ResultNtCs3cD8Bj6DSIP_6octets6OctetsNtBM_19BufferTooShortErrorENtNtNtB7_3ops9try_trait3Try6branchCs3f36owOmepS_6quiche", scope: !1084, file: !1083, line: 2175, type: !1107, scopeLine: 2175, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !16, templateParams: !1102, retainedNodes: !8124)
!8084 = distinct !DILexicalBlock(scope: !8088, file: !1083, line: 2192, column: 13)
!8085 = distinct !DILexicalBlock(scope: !8088, file: !1083, line: 2192, column: 13)
!8086 = distinct !DILexicalBlock(scope: !8088, file: !1083, line: 2192, column: 13)
!8087 = distinct !DILexicalBlock(scope: !8088, file: !1083, line: 2192, column: 13)
!8088 = distinct !DISubprogram(name: "from_residual<quiche::frame::Frame, octets::BufferTooShortError, quiche::error::Error>", linkageName: "_RNvXsq_NtCskKLDkoKarTP_4core6resultINtB5_6ResultNtNtCs3f36owOmepS_6quiche5frame5FrameNtNtBO_5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zNtCs3cD8Bj6DSIP_6octets19BufferTooShortErrorEE13from_residualBO_", scope: !1120, file: !1083, line: 2190, type: !1123, scopeLine: 2190, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !16, templateParams: !1142, retainedNodes: !8139)
!8089 = distinct !DILexicalBlock(scope: !8095, file: !1083, line: 2178, column: 13)
!8090 = distinct !DILexicalBlock(scope: !8095, file: !1083, line: 2177, column: 13)
!8091 = distinct !DILexicalBlock(scope: !8095, file: !1083, line: 2178, column: 13)
!8092 = distinct !DILexicalBlock(scope: !8095, file: !1083, line: 2177, column: 13)
!8093 = distinct !DILexicalBlock(scope: !8095, file: !1083, line: 2178, column: 13)
!8094 = distinct !DILexicalBlock(scope: !8095, file: !1083, line: 2177, column: 13)
!8095 = distinct !DISubprogram(name: "branch<u64, octets::BufferTooShortError>", linkageName: "_RNvXsp_NtCskKLDkoKarTP_4core6resultINtB5_6ResultyNtCs3cD8Bj6DSIP_6octets19BufferTooShortErrorENtNtNtB7_3ops9try_trait3Try6branchCs3f36owOmepS_6quiche", scope: !1084, file: !1083, line: 2175, type: !1158, scopeLine: 2175, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !16, templateParams: !1153, retainedNodes: !8164)
!8096 = distinct !DISubprogram(name: "from<quiche::buffers::DefaultBufFactory>", linkageName: "_RNvMNtCs3f36owOmepS_6quiche9range_bufNtB2_8RangeBuf4fromB4_", scope: !115, file: !1143, line: 83, type: !1145, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !16, templateParams: !963, declaration: !1146, retainedNodes: !8174)
!8097 = !DILocalVariable(name: "ty", arg: 1, scope: !8079, file: !827, line: 1369, type: !404)
!8098 = !DILocalVariable(name: "b", arg: 2, scope: !8079, file: !827, line: 1369, type: !1007)
!8099 = !DILocalVariable(name: "first", scope: !8078, file: !827, line: 1370, type: !338, align: 8)
!8100 = !DILocalVariable(name: "stream_id", scope: !8077, file: !827, line: 1372, type: !404, align: 64)
!8101 = !DILocalVariable(name: "residual", scope: !8076, file: !827, line: 1372, type: !175, align: 8)
!8102 = !DILocalVariable(name: "val", scope: !8075, file: !827, line: 1372, type: !404, align: 64)
!8103 = !DILocalVariable(name: "offset", scope: !8074, file: !827, line: 1374, type: !404, align: 64)
!8104 = !DILocalVariable(name: "residual", scope: !8073, file: !827, line: 1375, type: !175, align: 8)
!8105 = !DILocalVariable(name: "val", scope: !8072, file: !827, line: 1375, type: !404, align: 64)
!8106 = !DILocalVariable(name: "len", scope: !8071, file: !827, line: 1380, type: !489, align: 64)
!8107 = !DILocalVariable(name: "residual", scope: !8070, file: !827, line: 1381, type: !175, align: 8)
!8108 = !DILocalVariable(name: "val", scope: !8069, file: !827, line: 1381, type: !404, align: 64)
!8109 = !DILocalVariable(name: "fin", scope: !8068, file: !827, line: 1390, type: !907, align: 8)
!8110 = !DILocalVariable(name: "data", scope: !8067, file: !827, line: 1392, type: !137, align: 64)
!8111 = !DILocalVariable(name: "residual", scope: !8066, file: !827, line: 1392, type: !175, align: 8)
!8112 = !DILocalVariable(name: "val", scope: !8065, file: !827, line: 1392, type: !137, align: 64)
!8113 = !DILocalVariable(name: "data", scope: !8064, file: !827, line: 1393, type: !115, align: 64)
!8114 = !{!8097, !8098, !8099, !8100, !8101, !8102, !8103, !8104, !8105, !8106, !8107, !8108, !8109, !8110, !8111, !8112, !8113}
!8115 = !DILocation(line: 0, scope: !8079)
!8116 = !DILocalVariable(name: "self", arg: 1, scope: !8080, file: !1173, line: 367, type: !1007)
!8117 = !{!8116}
!8118 = !DILocation(line: 1383, column: 11, scope: !8074)
!8119 = !DILocation(line: 0, scope: !8080, inlinedAt: !8118)
!8120 = !DILocation(line: 1392, column: 9, scope: !8067)
!8121 = !DILocalVariable(name: "self", arg: 1, scope: !8083, file: !1083, line: 2175, type: !179)
!8122 = !DILocalVariable(name: "v", scope: !8082, file: !1083, line: 2177, type: !137, align: 64)
!8123 = !DILocalVariable(name: "e", scope: !8081, file: !1083, line: 2178, type: !171, align: 8)
!8124 = !{!8121, !8122, !8123}
!8125 = !DILocation(line: 1392, column: 16, scope: !8068)
!8126 = !DILocation(line: 2175, column: 15, scope: !8083, inlinedAt: !8125)
!8127 = !DILocation(line: 1392, column: 16, scope: !8065)
!8128 = !DILocation(line: 1393, column: 9, scope: !8064)
!8129 = !DILocation(line: 2177, column: 16, scope: !8082, inlinedAt: !8125)
!8130 = !DILocation(line: 1372, column: 35, scope: !8076)
!8131 = !DILocation(line: 1375, column: 23, scope: !8073)
!8132 = !DILocation(line: 1381, column: 23, scope: !8070)
!8133 = !DILocation(line: 1392, column: 32, scope: !8066)
!8134 = !DILocalVariable(name: "residual", scope: !8088, file: !1083, line: 2190, type: !175, align: 8)
!8135 = !DILocalVariable(name: "e", scope: !8087, file: !1083, line: 2192, type: !171, align: 8)
!8136 = !DILocalVariable(name: "e", scope: !8086, file: !1083, line: 2192, type: !171, align: 8)
!8137 = !DILocalVariable(name: "e", scope: !8085, file: !1083, line: 2192, type: !171, align: 8)
!8138 = !DILocalVariable(name: "e", scope: !8084, file: !1083, line: 2192, type: !171, align: 8)
!8139 = !{!8134, !8135, !8136, !8137, !8138}
!8140 = !DILexicalBlockFile(scope: !8076, file: !827, discriminator: 2)
!8141 = !DILocation(line: 1372, column: 21, scope: !8140)
!8142 = !DILocation(line: 2190, column: 22, scope: !8088, inlinedAt: !8141)
!8143 = !DILocation(line: 2192, column: 17, scope: !8087, inlinedAt: !8141)
!8144 = !DILexicalBlockFile(scope: !8073, file: !827, discriminator: 2)
!8145 = !DILocation(line: 1375, column: 9, scope: !8144)
!8146 = !DILocation(line: 2190, column: 22, scope: !8088, inlinedAt: !8145)
!8147 = !DILocation(line: 2192, column: 17, scope: !8086, inlinedAt: !8145)
!8148 = !DILexicalBlockFile(scope: !8070, file: !827, discriminator: 2)
!8149 = !DILocation(line: 1381, column: 9, scope: !8148)
!8150 = !DILocation(line: 2190, column: 22, scope: !8088, inlinedAt: !8149)
!8151 = !DILocation(line: 2192, column: 17, scope: !8085, inlinedAt: !8149)
!8152 = !DILexicalBlockFile(scope: !8066, file: !827, discriminator: 2)
!8153 = !DILocation(line: 1392, column: 16, scope: !8152)
!8154 = !DILocation(line: 2190, column: 22, scope: !8088, inlinedAt: !8153)
!8155 = !DILocation(line: 2192, column: 17, scope: !8084, inlinedAt: !8153)
!8156 = !DILocation(line: 0, scope: !8078)
!8157 = !DILocalVariable(name: "self", arg: 1, scope: !8095, file: !1083, line: 2175, type: !192)
!8158 = !DILocalVariable(name: "v", scope: !8094, file: !1083, line: 2177, type: !404, align: 64)
!8159 = !DILocalVariable(name: "e", scope: !8093, file: !1083, line: 2178, type: !171, align: 8)
!8160 = !DILocalVariable(name: "v", scope: !8092, file: !1083, line: 2177, type: !404, align: 64)
!8161 = !DILocalVariable(name: "e", scope: !8091, file: !1083, line: 2178, type: !171, align: 8)
!8162 = !DILocalVariable(name: "v", scope: !8090, file: !1083, line: 2177, type: !404, align: 64)
!8163 = !DILocalVariable(name: "e", scope: !8089, file: !1083, line: 2178, type: !171, align: 8)
!8164 = !{!8157, !8158, !8159, !8160, !8161, !8162, !8163}
!8165 = !DILocation(line: 1372, column: 21, scope: !8078)
!8166 = !DILocation(line: 0, scope: !8095, inlinedAt: !8165)
!8167 = !DILexicalBlockFile(scope: !8078, file: !1170, discriminator: 0)
!8168 = !DILocation(line: 0, scope: !8077)
!8169 = !DILocation(line: 1375, column: 9, scope: !8077)
!8170 = !DILocation(line: 0, scope: !8095, inlinedAt: !8169)
!8171 = !DILocalVariable(name: "off", arg: 2, scope: !8096, file: !1143, line: 83, type: !404)
!8172 = !DILocalVariable(name: "buf", arg: 1, scope: !8096, file: !1143, line: 83, type: !136)
!8173 = !DILocalVariable(name: "fin", arg: 3, scope: !8096, file: !1143, line: 83, type: !907)
!8174 = !{!8172, !8171, !8173}
!8175 = !DILocation(line: 1393, column: 16, scope: !8067)
!8176 = !DILocation(line: 0, scope: !8096, inlinedAt: !8175)
!8177 = !DILocation(line: 0, scope: !8074)
!8178 = !DILexicalBlockFile(scope: !8077, file: !1170, discriminator: 0)
!8179 = !DILocation(line: 0, scope: !8071)
!8180 = !DILocation(line: 1381, column: 9, scope: !8074)
!8181 = !DILocation(line: 0, scope: !8095, inlinedAt: !8180)
!8182 = !DILexicalBlockFile(scope: !8074, file: !1170, discriminator: 0)
!8184 = !DILocation(line: 0, scope: !8068)
!8185 = !DILexicalBlockFile(scope: !8071, file: !1170, discriminator: 0)
!8186 = !DILocation(line: 1370, column: 17, scope: !8079)
!8187 = !DILocation(line: 1372, column: 23, scope: !8078)
!8188 = !DILocation(line: 2176, column: 9, scope: !8095, inlinedAt: !8165)
!8189 = !DILocation(line: 2192, column: 23, scope: !8087, inlinedAt: !8141)
!8190 = !DILocation(line: 0, scope: !8167)
!8191 = !DILocation(line: 1374, column: 21, scope: !8077)
!8192 = !DILocation(line: 1375, column: 11, scope: !8077)
!8193 = !DILocation(line: 2176, column: 9, scope: !8095, inlinedAt: !8169)
!8194 = !DILocation(line: 1380, column: 18, scope: !8074)
!8195 = !DILocation(line: 2192, column: 23, scope: !8086, inlinedAt: !8145)
!8196 = !DILocation(line: 0, scope: !8178)
!8197 = !DILocation(line: 1374, column: 18, scope: !8077)
!8198 = !DILocation(line: 368, column: 9, scope: !8080, inlinedAt: !8118)
!8199 = !DILocation(line: 368, column: 26, scope: !8080, inlinedAt: !8118)
!8200 = !DILocation(line: 1380, column: 15, scope: !8074)
!8201 = !DILocation(line: 1381, column: 11, scope: !8074)
!8202 = !DILocation(line: 2176, column: 9, scope: !8095, inlinedAt: !8180)
!8203 = !DILocation(line: 1386, column: 8, scope: !8071)
!8204 = !DILocation(line: 2192, column: 23, scope: !8085, inlinedAt: !8149)
!8205 = !DILocation(line: 0, scope: !8182)
!8206 = !DILocation(line: 1392, column: 9, scope: !8068)
!8207 = !DILocation(line: 1392, column: 18, scope: !8068)
!8208 = !DILocation(line: 2176, column: 15, scope: !8083, inlinedAt: !8125)
!8209 = !DILocation(line: 2176, column: 9, scope: !8083, inlinedAt: !8125)
!8210 = !DILocation(line: 1387, column: 16, scope: !8071)
!8211 = !DILocation(line: 0, scope: !8185)
!8212 = !DILocation(line: 1392, column: 32, scope: !8068)
!8213 = !DILocation(line: 2192, column: 23, scope: !8084, inlinedAt: !8153)
!8214 = !DILocation(line: 1396, column: 1, scope: !8068)
!8215 = !DILocation(line: 1390, column: 15, scope: !8071)
!8216 = !DILocation(line: 2177, column: 16, scope: !8083, inlinedAt: !8125)
!8217 = !DILocation(line: 1393, column: 38, scope: !8067)
!8218 = !DILocation(line: 84, column: 24, scope: !8096, inlinedAt: !8175)
!8219 = !DILocation(line: 1395, column: 5, scope: !8064)
!8220 = !DILocation(line: 84, column: 9, scope: !8096, inlinedAt: !8175)
!8221 = !DILocation(line: 1396, column: 2, scope: !8079)
!8222 = !DILocation(line: 0, scope: !315)
!8223 = !DILocation(line: 0, scope: !314)
!8224 = !DILocation(line: 1361, column: 5, scope: !314)
!8225 = !DILocation(line: 0, scope: !320, inlinedAt: !8224)
!8226 = !DILocation(line: 1364, column: 5, scope: !314)
!8227 = !DILocation(line: 0, scope: !320, inlinedAt: !8226)
!8228 = !DILocation(line: 1361, column: 7, scope: !314)
!8229 = !DILocation(line: 2176, column: 15, scope: !320, inlinedAt: !8224)
!8230 = !DILocation(line: 2176, column: 9, scope: !320, inlinedAt: !8224)
!8231 = !DILocation(line: 1364, column: 7, scope: !314)
!8232 = !DILocation(line: 2176, column: 15, scope: !320, inlinedAt: !8226)
!8233 = !DILocation(line: 1355, scope: !315)
!8234 = !DILocation(line: 1367, column: 2, scope: !315)
!8235 = !DILocation(line: 0, scope: !283)
!8236 = !DILocation(line: 1318, column: 5, scope: !283)
!8237 = !DILocation(line: 0, scope: !290, inlinedAt: !8236)
!8238 = !DILocation(line: 1320, column: 5, scope: !283)
!8239 = !DILocation(line: 0, scope: !290, inlinedAt: !8238)
!8240 = !DILocation(line: 1323, column: 5, scope: !283)
!8241 = !DILocation(line: 0, scope: !290, inlinedAt: !8240)
!8242 = !DILocation(line: 1318, column: 7, scope: !283)
!8243 = !DILocation(line: 2176, column: 15, scope: !290, inlinedAt: !8236)
!8244 = !DILocation(line: 2176, column: 9, scope: !290, inlinedAt: !8236)
!8245 = !DILocation(line: 1320, column: 7, scope: !283)
!8246 = !DILocation(line: 2176, column: 15, scope: !290, inlinedAt: !8238)
!8247 = !DILocation(line: 2176, column: 9, scope: !290, inlinedAt: !8238)
!8248 = !DILocation(line: 1323, column: 7, scope: !283)
!8249 = !DILocation(line: 2176, column: 15, scope: !290, inlinedAt: !8240)
!8250 = !DILocation(line: 1315, scope: !283)
!8251 = !DILocation(line: 1326, column: 2, scope: !283)
!8252 = !DILocation(line: 0, scope: !300)
!8253 = !DILocation(line: 0, scope: !299)
!8254 = !DILocation(line: 1344, column: 5, scope: !299)
!8255 = !DILocation(line: 0, scope: !309, inlinedAt: !8254)
!8256 = !DILocation(line: 1346, column: 5, scope: !299)
!8257 = !DILocation(line: 0, scope: !309, inlinedAt: !8256)
!8258 = !DILocation(line: 1347, column: 5, scope: !299)
!8259 = !DILocation(line: 0, scope: !309, inlinedAt: !8258)
!8260 = !DILocation(line: 1350, column: 5, scope: !299)
!8261 = !DILocation(line: 0, scope: !309, inlinedAt: !8260)
!8262 = !DILocation(line: 1340, column: 8, scope: !299)
!8263 = !DILocation(line: 1344, column: 7, scope: !299)
!8264 = !DILocation(line: 2176, column: 15, scope: !309, inlinedAt: !8254)
!8265 = !DILocation(line: 2176, column: 9, scope: !309, inlinedAt: !8254)
!8266 = !DILocation(line: 1346, column: 7, scope: !299)
!8267 = !DILocation(line: 2176, column: 15, scope: !309, inlinedAt: !8256)
!8268 = !DILocation(line: 2176, column: 9, scope: !309, inlinedAt: !8256)
!8269 = !DILocation(line: 1347, column: 7, scope: !299)
!8270 = !DILocation(line: 2176, column: 15, scope: !309, inlinedAt: !8258)
!8271 = !DILocation(line: 2176, column: 9, scope: !309, inlinedAt: !8258)
!8272 = !DILocation(line: 1350, column: 7, scope: !299)
!8273 = !DILocation(line: 2176, column: 15, scope: !309, inlinedAt: !8260)
!8274 = !DILocation(line: 1328, scope: !300)
!8275 = !DILocation(line: 1353, column: 2, scope: !300)
!8276 = distinct !DISubprogram(name: "fmt<quiche::frame::EcnCounts>", linkageName: "_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCs3f36owOmepS_6quiche5frame9EcnCountsNtB6_5Debug3fmtBA_", scope: !8283, file: !1621, line: 2887, type: !8286, scopeLine: 2887, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !16, templateParams: !993, retainedNodes: !8289)
!8277 = distinct !DISubprogram(name: "fmt", linkageName: "_RNvXs1_NtCs3f36owOmepS_6quiche5frameNtB5_9EcnCountsNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt", scope: !8292, file: !827, line: 50, type: !8294, scopeLine: 50, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !16, templateParams: !495, retainedNodes: !8296)
!8278 = distinct !DILocation(line: 2887, column: 62, scope: !8276)
!8279 = distinct !DILocation(line: 0, scope: !8277, inlinedAt: !8278)
!8280 = distinct !{!8280, i1 true, !"_RNvXs1_NtCs3f36owOmepS_6quiche5frameNtB5_9EcnCountsNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt"}
!8281 = distinct !{!8281, !8280, !"_RNvXs1_NtCs3f36owOmepS_6quiche5frameNtB5_9EcnCountsNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt: argument 1"}
!8282 = distinct !{!8282, !8280, !"_RNvXs1_NtCs3f36owOmepS_6quiche5frameNtB5_9EcnCountsNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt: argument 0"}
!8283 = !DINamespace(name: "{impl#80}", scope: !1251)
!8284 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&&quiche::frame::EcnCounts", baseType: !1244, size: 64, align: 64, dwarfAddressSpace: 0)
!8285 = !{!216, !8284, !1262}
!8286 = !DISubroutineType(types: !8285)
!8287 = !DILocalVariable(name: "self", arg: 1, scope: !8276, file: !1621, line: 2887, type: !8284)
!8288 = !DILocalVariable(name: "f", arg: 2, scope: !8276, file: !1621, line: 2887, type: !1262)
!8289 = !{!8287, !8288}
!8290 = !DILocation(line: 0, scope: !8276)
!8291 = !DILocalVariable(name: "self", arg: 1, scope: !8277, file: !827, line: 50, type: !1244)
!8292 = !DINamespace(name: "{impl#3}", scope: !828)
!8293 = !{!216, !1244, !1262}
!8294 = !DISubroutineType(types: !8293)
!8295 = !DILocalVariable(name: "f", arg: 2, scope: !8277, file: !827, line: 50, type: !1262)
!8296 = !{!8291, !8295}
!8297 = !{!8282, !8281}
!8298 = !DILocation(line: 2887, column: 71, scope: !8276)
!8299 = !DILocation(line: 53, column: 5, scope: !8277, inlinedAt: !8278)
!8300 = !DILocation(line: 54, column: 5, scope: !8277, inlinedAt: !8278)
!8301 = !DILocation(line: 50, column: 17, scope: !8277, inlinedAt: !8278)
!8302 = !DILocation(line: 50, column: 21, scope: !8277, inlinedAt: !8278)
!8303 = !DILocation(line: 2887, column: 84, scope: !8276)
!8304 = distinct !DISubprogram(name: "fmt", linkageName: "_RNvXsX_NtNtCskKLDkoKarTP_4core3fmt3numyNtB7_5Debug3fmt", scope: !8309, file: !8307, line: 85, type: !8311, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !16, templateParams: !495, retainedNodes: !8314)
!8305 = distinct !DISubprogram(name: "debug_lower_hex", linkageName: "_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter15debug_lower_hex", scope: !211, file: !1621, line: 2404, type: !8319, scopeLine: 2404, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !16, templateParams: !495, declaration: !8320, retainedNodes: !8321)
!8306 = distinct !DISubprogram(name: "debug_upper_hex", linkageName: "_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter15debug_upper_hex", scope: !211, file: !1621, line: 2407, type: !8319, scopeLine: 2407, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !16, templateParams: !495, declaration: !8325, retainedNodes: !8326)
!8307 = !DIFile(filename: "library/core/src/fmt/num.rs", directory: "/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed", checksumkind: CSK_MD5, checksum: "76abc94ba99db1f09e1c604e90ce7dcc")
!8308 = !DINamespace(name: "num", scope: !1251)
!8309 = !DINamespace(name: "{impl#61}", scope: !8308)
!8310 = !{!216, !494, !1262}
!8311 = !DISubroutineType(types: !8310)
!8312 = !DILocalVariable(name: "self", arg: 1, scope: !8304, file: !8307, line: 85, type: !494)
!8313 = !DILocalVariable(name: "f", arg: 2, scope: !8304, file: !8307, line: 85, type: !1262)
!8314 = !{!8312, !8313}
!8315 = !DILocation(line: 0, scope: !8304)
!8316 = !DILocalVariable(name: "self", arg: 1, scope: !8305, file: !1621, line: 2404, type: !1262)
!8317 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&core::fmt::Formatter", baseType: !211, size: 64, align: 64, dwarfAddressSpace: 0)
!8318 = !{!907, !8317}
!8319 = !DISubroutineType(types: !8318)
!8320 = !DISubprogram(name: "debug_lower_hex", linkageName: "_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter15debug_lower_hex", scope: !211, file: !1621, line: 2404, type: !8319, scopeLine: 2404, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !495)
!8321 = !{!8316}
!8322 = !DILocation(line: 86, column: 26, scope: !8304)
!8323 = !DILocation(line: 0, scope: !8305, inlinedAt: !8322)
!8324 = !DILocalVariable(name: "self", arg: 1, scope: !8306, file: !1621, line: 2407, type: !1262)
!8325 = !DISubprogram(name: "debug_upper_hex", linkageName: "_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter15debug_upper_hex", scope: !211, file: !1621, line: 2407, type: !8319, scopeLine: 2407, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !495)
!8326 = !{!8324}
!8327 = !DILocation(line: 88, column: 33, scope: !8304)
!8328 = !DILocation(line: 0, scope: !8306, inlinedAt: !8327)
!8329 = !DILocation(line: 2405, column: 9, scope: !8305, inlinedAt: !8322)
!8330 = !DILocation(line: 86, column: 24, scope: !8304)
!8331 = !DILocation(line: 2408, column: 9, scope: !8306, inlinedAt: !8327)
!8332 = !DILocation(line: 88, column: 31, scope: !8304)
!8333 = !DILocation(line: 87, column: 25, scope: !8304)
!8334 = !DILocation(line: 91, column: 25, scope: !8304)
!8335 = !DILocation(line: 89, column: 25, scope: !8304)
!8336 = !DILocation(line: 93, column: 18, scope: !8304)
!8337 = distinct !DILexicalBlock(scope: !8341, file: !827, line: 1251, column: 51)
!8338 = distinct !DILexicalBlock(scope: !8341, file: !827, line: 1251, column: 51)
!8339 = distinct !DILexicalBlock(scope: !8340, file: !1515, line: 610, column: 24)
!8340 = distinct !DILexicalBlock(scope: !8341, file: !1515, line: 610, column: 24)
!8341 = distinct !DILexicalBlock(scope: !8488, file: !827, line: 1250, column: 13)
!8342 = distinct !DILexicalBlock(scope: !8346, file: !827, line: 1247, column: 57)
!8343 = distinct !DILexicalBlock(scope: !8346, file: !827, line: 1247, column: 57)
!8344 = distinct !DILexicalBlock(scope: !8345, file: !1515, line: 610, column: 24)
!8345 = distinct !DILexicalBlock(scope: !8346, file: !1515, line: 610, column: 24)
!8346 = distinct !DILexicalBlock(scope: !8488, file: !827, line: 1246, column: 13)
!8347 = distinct !DILexicalBlock(scope: !8488, file: !827, line: 1243, column: 44)
!8348 = distinct !DILexicalBlock(scope: !8488, file: !827, line: 1243, column: 44)
!8349 = distinct !DILexicalBlock(scope: !8354, file: !827, line: 1239, column: 18)
!8350 = distinct !DILexicalBlock(scope: !8354, file: !827, line: 1239, column: 18)
!8351 = distinct !DILexicalBlock(scope: !8353, file: !1515, line: 610, column: 24)
!8352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "(&&u64, &&alloc::vec::Vec<u8, alloc::alloc::Global>)", file: !335, size: 128, align: 64, elements: !8815, templateParams: !495, identifier: "3391d471db8c866da18fba42935fbeff")
!8353 = distinct !DILexicalBlock(scope: !8354, file: !1515, line: 610, column: 24)
!8354 = distinct !DILexicalBlock(scope: !8488, file: !827, line: 1235, column: 13)
!8355 = distinct !DILexicalBlock(scope: !8360, file: !827, line: 1232, column: 18)
!8356 = distinct !DILexicalBlock(scope: !8360, file: !827, line: 1232, column: 18)
!8357 = distinct !DILexicalBlock(scope: !8359, file: !1515, line: 610, column: 24)
!8358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "(&&u64, &&u64, &&alloc::vec::Vec<u8, alloc::alloc::Global>)", file: !335, size: 192, align: 64, elements: !8819, templateParams: !495, identifier: "b37bd89e785d91a83c477083444e18c")
!8359 = distinct !DILexicalBlock(scope: !8360, file: !1515, line: 610, column: 24)
!8360 = distinct !DILexicalBlock(scope: !8488, file: !827, line: 1224, column: 13)
!8361 = distinct !DILexicalBlock(scope: !8365, file: !827, line: 1221, column: 60)
!8362 = distinct !DILexicalBlock(scope: !8365, file: !827, line: 1221, column: 60)
!8363 = distinct !DILexicalBlock(scope: !8364, file: !1515, line: 610, column: 24)
!8364 = distinct !DILexicalBlock(scope: !8365, file: !1515, line: 610, column: 24)
!8365 = distinct !DILexicalBlock(scope: !8488, file: !827, line: 1220, column: 13)
!8366 = distinct !DILexicalBlock(scope: !8371, file: !827, line: 1217, column: 61)
!8367 = distinct !DILexicalBlock(scope: !8371, file: !827, line: 1217, column: 61)
!8368 = distinct !DILexicalBlock(scope: !8370, file: !1515, line: 610, column: 24)
!8369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "(&&[u8; 8])", file: !335, size: 64, align: 64, elements: !8822, templateParams: !495, identifier: "4e175fbbf56770a3ad3dd2b2e20cfeb")
!8370 = distinct !DILexicalBlock(scope: !8371, file: !1515, line: 610, column: 24)
!8371 = distinct !DILexicalBlock(scope: !8488, file: !827, line: 1216, column: 13)
!8372 = distinct !DILexicalBlock(scope: !8376, file: !827, line: 1213, column: 68)
!8373 = distinct !DILexicalBlock(scope: !8376, file: !827, line: 1213, column: 68)
!8374 = distinct !DILexicalBlock(scope: !8375, file: !1515, line: 610, column: 24)
!8375 = distinct !DILexicalBlock(scope: !8376, file: !1515, line: 610, column: 24)
!8376 = distinct !DILexicalBlock(scope: !8488, file: !827, line: 1212, column: 13)
!8377 = distinct !DILexicalBlock(scope: !8382, file: !827, line: 1209, column: 18)
!8378 = distinct !DILexicalBlock(scope: !8382, file: !827, line: 1209, column: 18)
!8379 = distinct !DILexicalBlock(scope: !8381, file: !1515, line: 610, column: 24)
!8380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "(&&u64, &&u64, &&alloc::vec::Vec<u8, alloc::alloc::Global>, &&[u8; 16])", file: !335, size: 256, align: 64, elements: !8828, templateParams: !495, identifier: "20469f64c5f48402aafcf56d831735d0")
!8381 = distinct !DILexicalBlock(scope: !8382, file: !1515, line: 610, column: 24)
!8382 = distinct !DILexicalBlock(scope: !8488, file: !827, line: 1200, column: 13)
!8383 = distinct !DILexicalBlock(scope: !8387, file: !827, line: 1197, column: 68)
!8384 = distinct !DILexicalBlock(scope: !8387, file: !827, line: 1197, column: 68)
!8385 = distinct !DILexicalBlock(scope: !8386, file: !1515, line: 610, column: 24)
!8386 = distinct !DILexicalBlock(scope: !8387, file: !1515, line: 610, column: 24)
!8387 = distinct !DILexicalBlock(scope: !8488, file: !827, line: 1196, column: 13)
!8388 = distinct !DILexicalBlock(scope: !8392, file: !827, line: 1193, column: 69)
!8389 = distinct !DILexicalBlock(scope: !8392, file: !827, line: 1193, column: 69)
!8390 = distinct !DILexicalBlock(scope: !8391, file: !1515, line: 610, column: 24)
!8391 = distinct !DILexicalBlock(scope: !8392, file: !1515, line: 610, column: 24)
!8392 = distinct !DILexicalBlock(scope: !8488, file: !827, line: 1192, column: 13)
!8393 = distinct !DILexicalBlock(scope: !8397, file: !827, line: 1189, column: 18)
!8394 = distinct !DILexicalBlock(scope: !8397, file: !827, line: 1189, column: 18)
!8395 = distinct !DILexicalBlock(scope: !8396, file: !1515, line: 610, column: 24)
!8396 = distinct !DILexicalBlock(scope: !8397, file: !1515, line: 610, column: 24)
!8397 = distinct !DILexicalBlock(scope: !8488, file: !827, line: 1185, column: 13)
!8398 = distinct !DILexicalBlock(scope: !8402, file: !827, line: 1182, column: 56)
!8399 = distinct !DILexicalBlock(scope: !8402, file: !827, line: 1182, column: 56)
!8400 = distinct !DILexicalBlock(scope: !8401, file: !1515, line: 610, column: 24)
!8401 = distinct !DILexicalBlock(scope: !8402, file: !1515, line: 610, column: 24)
!8402 = distinct !DILexicalBlock(scope: !8488, file: !827, line: 1181, column: 13)
!8403 = distinct !DILexicalBlock(scope: !8407, file: !827, line: 1178, column: 60)
!8404 = distinct !DILexicalBlock(scope: !8407, file: !827, line: 1178, column: 60)
!8405 = distinct !DILexicalBlock(scope: !8406, file: !1515, line: 610, column: 24)
!8406 = distinct !DILexicalBlock(scope: !8407, file: !1515, line: 610, column: 24)
!8407 = distinct !DILexicalBlock(scope: !8488, file: !827, line: 1177, column: 13)
!8408 = distinct !DILexicalBlock(scope: !8412, file: !827, line: 1174, column: 61)
!8409 = distinct !DILexicalBlock(scope: !8412, file: !827, line: 1174, column: 61)
!8410 = distinct !DILexicalBlock(scope: !8411, file: !1515, line: 610, column: 24)
!8411 = distinct !DILexicalBlock(scope: !8412, file: !1515, line: 610, column: 24)
!8412 = distinct !DILexicalBlock(scope: !8488, file: !827, line: 1173, column: 13)
!8413 = distinct !DILexicalBlock(scope: !8417, file: !827, line: 1170, column: 74)
!8414 = distinct !DILexicalBlock(scope: !8417, file: !827, line: 1170, column: 74)
!8415 = distinct !DILexicalBlock(scope: !8416, file: !1515, line: 610, column: 24)
!8416 = distinct !DILexicalBlock(scope: !8417, file: !1515, line: 610, column: 24)
!8417 = distinct !DILexicalBlock(scope: !8488, file: !827, line: 1169, column: 13)
!8418 = distinct !DILexicalBlock(scope: !8423, file: !827, line: 1166, column: 48)
!8419 = distinct !DILexicalBlock(scope: !8423, file: !827, line: 1166, column: 48)
!8420 = distinct !DILexicalBlock(scope: !8422, file: !1515, line: 610, column: 24)
!8421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "(&&u64)", file: !335, size: 64, align: 64, elements: !8830, templateParams: !495, identifier: "34670b95876aeb87db08db9b08290f33")
end_hunk_1
