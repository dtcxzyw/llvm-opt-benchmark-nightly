Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_row-eb434ee3abd1b8b8.polars_row.38394b63a722f67c-cgu.12?download=true
inline.NumInlined: 272
inline.NumDeleted: 151
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_RNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bool:bb.a
  br label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bool0ENtNtNtB9_6traits8iterator8Iterator4nextB1y_.exit35.6.i.i, !dbg !3779

_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bool0ENtNtNtB9_6traits8iterator8Iterator4nextB1y_.exit35.6.i.i: ; preds = %bb.ac, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bool0ENtNtNtB9_6traits8iterator8Iterator4nextB1y_.exit35.5.i.i
  %.sroa.0128.18 = phi i1 [ %.sroa.0128.17, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bool0ENtNtNtB9_6traits8iterator8Iterator4nextB1y_.exit35.5.i.i ], [ %i.jo, %bb.ac ], !dbg !3576 ; 2 uses
  %.promoted3944.6.i.i = phi ptr [ %.promoted3944.5.i.i, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bool0ENtNtNtB9_6traits8iterator8Iterator4nextB1y_.exit35.5.i.i ], [ %i.jl, %bb.ac ] ; 4 uses
  %.sroa.0.0.i34.6.i.i = phi i8 [ 2, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bool0ENtNtNtB9_6traits8iterator8Iterator4nextB1y_.exit35.5.i.i ], [ %i.jq, %bb.ac ], !dbg !3780 ; 2 uses
  %i.jr = icmp ne i8 %.sroa.0.0.i34.6.i.i, 2, !dbg !3781
  call void @llvm.assume(i1 %i.jr), !dbg !3782
  %i.js = shl nuw nsw i8 %.sroa.0.0.i34.6.i.i, 6, !dbg !3786
  %i.jt = or i8 %i.jj, %i.js, !dbg !3786
  %i.ju = icmp eq ptr %.promoted3944.6.i.i, %i.t, !dbg !3671
  br i1 %i.ju, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bool0ENtNtNtB9_6traits8iterator8Iterator4nextB1y_.exit35.7.i.i, label %bb.ad, !dbg !3680

bb.ad:                                            ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bool0ENtNtNtB9_6traits8iterator8Iterator4nextB1y_.exit35.6.i.i
  %i.jv = getelementptr inbounds nuw i8, ptr %.promoted3944.6.i.i, i64 16, !dbg !3762
  %.val.i32.7.i.i = load ptr, ptr %.promoted3944.6.i.i, align 8, !dbg !3764, !noalias !3803, !nonnull !14, !noundef !14
  %i.jw = load i8, ptr %.val.i32.7.i.i, align 1, !dbg !3770, !noalias !3805, !noundef !14 ; 2 uses
  %i.jx = icmp eq i8 %i.jw, %sext, !dbg !3775
  %i.jy = or i1 %.sroa.0128.18, %i.jx, !dbg !3776
  %i.jz = icmp eq i8 %i.jw, %storemerge5, !dbg !3777
  %i.ka = zext i1 %i.jz to i8, !dbg !3778
  br label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bool0ENtNtNtB9_6traits8iterator8Iterator4nextB1y_.exit35.7.i.i, !dbg !3779

_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bool0ENtNtNtB9_6traits8iterator8Iterator4nextB1y_.exit35.7.i.i: ; preds = %bb.ad, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bool0ENtNtNtB9_6traits8iterator8Iterator4nextB1y_.exit35.6.i.i
  %.sroa.0128.19 = phi i1 [ %.sroa.0128.18, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bool0ENtNtNtB9_6traits8iterator8Iterator4nextB1y_.exit35.6.i.i ], [ %i.jy, %bb.ad ], !dbg !3576 ; 2 uses
  %.promoted3944.7.i.i = phi ptr [ %.promoted3944.6.i.i, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bool0ENtNtNtB9_6traits8iterator8Iterator4nextB1y_.exit35.6.i.i ], [ %i.jv, %bb.ad ] ; 2 uses
  %.sroa.0.0.i34.7.i.i = phi i8 [ 2, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bool0ENtNtNtB9_6traits8iterator8Iterator4nextB1y_.exit35.6.i.i ], [ %i.ka, %bb.ad ], !dbg !3780 ; 2 uses
  %i.kb = icmp ne i8 %.sroa.0.0.i34.7.i.i, 2, !dbg !3781
  call void @llvm.assume(i1 %i.kb), !dbg !3782
  %i.kc = shl nuw i8 %.sroa.0.0.i34.7.i.i, 7, !dbg !3786
  %i.kd = or disjoint i8 %i.kc, %i.jt, !dbg !3786
  %.sroa.010.0.7.i.i = or i8 %i.kd, %.sroa.0.0.i34.i.i, !dbg !3786
  %i.ke = add nuw nsw i64 %.sroa.022.048.i.i, 1, !dbg !3806 ; 2 uses
  %i.kf = load i64, ptr %i.v, align 8, !dbg !3812, !alias.scope !3754, !noalias !3648, !noundef !14 ; 3 uses
  %i.kg = load i64, ptr %i.d, align 8, !dbg !3813, !range !1010, !alias.scope !3754, !noalias !3648, !noundef !14
  %i.kh = icmp eq i64 %i.kf, %i.kg, !dbg !3816
  br i1 %i.kh, label %bb.v, label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCs4PheDXcg4wa_10polars_row.exit31.i.i, !dbg !3816

.loopexit.i:                                      ; preds = %bb.v
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.i:                    ; preds = %_RINvNtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutable19get_chunk_uncheckedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1h_5slice4iter4IterRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bool0EEB2z_.exit.i.i
  %lpad.loopexit5.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.i:           ; preds = %bb.n, %bb.c, %bb.b
  %lpad.loopexit.split-lp6.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.i:                             ; preds = %.loopexit.split-lp.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit5.i, %.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit.split-lp6.i, %.loopexit.split-lp.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECs4PheDXcg4wa_10polars_row(ptr noalias noundef align 8 dereferenceable(24) %i.d) #27
          to label %common.resume unwind label %bb.ae, !dbg !3817, !noalias !3464

bb.ae:                                            ; preds = %.loopexit.split-lp.i
  %i.ki = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #28, !dbg !3818, !noalias !3464
  unreachable, !dbg !3818

common.resume:                                    ; preds = %.body.thread, %bb.ag, %.loopexit.split-lp.i
  %common.resume.op = phi { ptr, i32 } [ %i.kk, %bb.ag ], [ %lpad.phi.i, %.loopexit.split-lp.i ], [ %eh.lpad-body149, %.body.thread ]
  resume { ptr, i32 } %common.resume.op, !dbg !3576

_RINvMs6_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB6_13MutableBitmap31from_trusted_len_iter_uncheckedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1R_5slice4iter4IterRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bool0EEB39_.exit: ; preds = %._crit_edge.i.i, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCs4PheDXcg4wa_10polars_row.exit.i.i
  %.sroa.0128.23 = phi i1 [ %.sroa.0128.22.lcssa, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCs4PheDXcg4wa_10polars_row.exit.i.i ], [ %.sroa.0128.20, %._crit_edge.i.i ], !dbg !3519
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !3819, !noalias !3484
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !3820, !noalias !3464
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !3821
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !dbg !3828
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !3817, !noalias !3464
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !3830
  call fastcc void @_RNvMs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB4_6Bitmap7try_new(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.j, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.i, i64 noundef %2) #29, !dbg !3830
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !3831
  call void @llvm.experimental.noalias.scope.decl(metadata !3832), !dbg !3835
  call void @llvm.experimental.noalias.scope.decl(metadata !3836), !dbg !3835
  %i.kj = load i64, ptr %i.j, align 8, !dbg !3838, !range !3411, !alias.scope !3836, !noalias !3832, !noundef !14
  %.not.i6 = icmp eq i64 %i.kj, 18, !dbg !3838
  br i1 %.not.i6, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapNtCsgjwxzEoLG5s_12polars_error11PolarsErrorE6unwrapCs4PheDXcg4wa_10polars_row.exit7, label %bb.af, !dbg !3841, !prof !663

bb.af:                                            ; preds = %_RINvMs6_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB6_13MutableBitmap31from_trusted_len_iter_uncheckedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1R_5slice4iter4IterRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bool0EEB39_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !3842, !noalias !3843
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.e, ptr noundef nonnull readonly align 8 dereferenceable(72) %i.j, i64 72, i1 false), !dbg !3842, !noalias !3832
  invoke void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 43, ptr noundef nonnull %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @9, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #24
          to label %bb.ah unwind label %bb.ag, !dbg !3844, !noalias !3843

bb.ag:                                            ; preds = %bb.af
  %i.kk = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.e) #27
          to label %common.resume unwind label %bb.ai, !dbg !3846, !noalias !3843

bb.ah:                                            ; preds = %bb.af
  unreachable

bb.ai:                                            ; preds = %bb.ag
  %i.kl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #28, !dbg !3847, !noalias !3843
  unreachable, !dbg !3847

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapNtCsgjwxzEoLG5s_12polars_error11PolarsErrorE6unwrapCs4PheDXcg4wa_10polars_row.exit7: ; preds = %_RINvMs6_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB6_13MutableBitmap31from_trusted_len_iter_uncheckedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1R_5slice4iter4IterRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bool0EEB39_.exit
  %i.km = getelementptr inbounds nuw i8, ptr %i.j, i64 8, !dbg !3848
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.km, i64 32, i1 false), !dbg !3848, !alias.scope !3843
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !3849
  br i1 %.sroa.0128.23, label %bb.ak, label %bb.aj, !dbg !3850

bb.aj:                                            ; preds = %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapNtCsgjwxzEoLG5s_12polars_error11PolarsErrorE6unwrapCs4PheDXcg4wa_10polars_row.exit7
  %i.kn = icmp eq i64 %2, 0, !dbg !3852
  br i1 %i.kn, label %_RINvXs2R_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_7IterMutRShENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bools_0EB1T_.exit, label %.lr.ph.i.preheader, !dbg !3862

.lr.ph.i.preheader:                               ; preds = %bb.aj
  %i.ko = add nsw i64 %.idx, -16, !dbg !3862      ; 2 uses
  %i.kp = lshr exact i64 %i.ko, 4, !dbg !3862
  %i.kq = add nuw nsw i64 %i.kp, 1, !dbg !3862
  %xtraiter = and i64 %i.kq, 3, !dbg !3862        ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !3862
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !dbg !3862

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.sroa.0.03.i.prol = phi ptr [ %i.kw, %.lr.ph.i.prol ], [ %1, %.lr.ph.i.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.kr = load ptr, ptr %.sroa.0.03.i.prol, align 8, !dbg !3863, !alias.scope !3866, !nonnull !14, !noundef !14
  %i.ks = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i.prol, i64 8, !dbg !3863 ; 2 uses
  %i.kt = load i64, ptr %i.ks, align 8, !dbg !3863, !alias.scope !3866, !noundef !14
  %i.ku = add i64 %i.kt, -1, !dbg !3869
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kr, i64 1, !dbg !3876
  store ptr %i.kv, ptr %.sroa.0.03.i.prol, align 8, !dbg !3881, !alias.scope !3866
  store i64 %i.ku, ptr %i.ks, align 8, !dbg !3881, !alias.scope !3866
  %i.kw = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i.prol, i64 16, !dbg !3882 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !3862 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !3862
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !dbg !3862, !llvm.loop !3885

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.sroa.0.03.i.unr = phi ptr [ %1, %.lr.ph.i.preheader ], [ %i.kw, %.lr.ph.i.prol ]
  %i.kx = icmp ult i64 %i.ko, 48, !dbg !3862
  br i1 %i.kx, label %_RINvXs2R_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_7IterMutRShENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bools_0EB1T_.exit, label %.lr.ph.i, !dbg !3862

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.sroa.0.03.i = phi ptr [ %i.lv, %.lr.ph.i ], [ %.sroa.0.03.i.unr, %.lr.ph.i.prol.loopexit ] ; 10 uses
  %i.ky = load ptr, ptr %.sroa.0.03.i, align 8, !dbg !3863, !alias.scope !3866, !nonnull !14, !noundef !14
  %i.kz = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i, i64 8, !dbg !3863 ; 2 uses
  %i.la = load i64, ptr %i.kz, align 8, !dbg !3863, !alias.scope !3866, !noundef !14
  %i.lb = add i64 %i.la, -1, !dbg !3869
  %i.lc = getelementptr inbounds nuw i8, ptr %i.ky, i64 1, !dbg !3876
  store ptr %i.lc, ptr %.sroa.0.03.i, align 8, !dbg !3881, !alias.scope !3866
  store i64 %i.lb, ptr %i.kz, align 8, !dbg !3881, !alias.scope !3866
  %i.ld = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i, i64 16, !dbg !3882 ; 2 uses
  %i.le = load ptr, ptr %i.ld, align 8, !dbg !3863, !alias.scope !3866, !nonnull !14, !noundef !14
  %i.lf = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i, i64 24, !dbg !3863 ; 2 uses
  %i.lg = load i64, ptr %i.lf, align 8, !dbg !3863, !alias.scope !3866, !noundef !14
  %i.lh = add i64 %i.lg, -1, !dbg !3869
  %i.li = getelementptr inbounds nuw i8, ptr %i.le, i64 1, !dbg !3876
  store ptr %i.li, ptr %i.ld, align 8, !dbg !3881, !alias.scope !3866
  store i64 %i.lh, ptr %i.lf, align 8, !dbg !3881, !alias.scope !3866
  %i.lj = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i, i64 32, !dbg !3882 ; 2 uses
  %i.lk = load ptr, ptr %i.lj, align 8, !dbg !3863, !alias.scope !3866, !nonnull !14, !noundef !14
  %i.ll = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i, i64 40, !dbg !3863 ; 2 uses
  %i.lm = load i64, ptr %i.ll, align 8, !dbg !3863, !alias.scope !3866, !noundef !14
  %i.ln = add i64 %i.lm, -1, !dbg !3869
  %i.lo = getelementptr inbounds nuw i8, ptr %i.lk, i64 1, !dbg !3876
  store ptr %i.lo, ptr %i.lj, align 8, !dbg !3881, !alias.scope !3866
  store i64 %i.ln, ptr %i.ll, align 8, !dbg !3881, !alias.scope !3866
  %i.lp = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i, i64 48, !dbg !3882 ; 2 uses
  %i.lq = load ptr, ptr %i.lp, align 8, !dbg !3863, !alias.scope !3866, !nonnull !14, !noundef !14
  %i.lr = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i, i64 56, !dbg !3863 ; 2 uses
  %i.ls = load i64, ptr %i.lr, align 8, !dbg !3863, !alias.scope !3866, !noundef !14
  %i.lt = add i64 %i.ls, -1, !dbg !3869
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lq, i64 1, !dbg !3876
  store ptr %i.lu, ptr %i.lp, align 8, !dbg !3881, !alias.scope !3866
  store i64 %i.lt, ptr %i.lr, align 8, !dbg !3881, !alias.scope !3866
  %i.lv = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i, i64 64, !dbg !3882 ; 2 uses
  %i.lw = icmp eq ptr %i.lv, %i.t, !dbg !3852
  br i1 %i.lw, label %_RINvXs2R_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_7IterMutRShENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bools_0EB1T_.exit, label %.lr.ph.i, !dbg !3862

bb.ak:                                            ; preds = %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapNtCsgjwxzEoLG5s_12polars_error11PolarsErrorE6unwrapCs4PheDXcg4wa_10polars_row.exit7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !3887, !noalias !3892
  store i64 0, ptr %i.a, align 8, !dbg !3896, !noalias !3892
  %i.lx = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !3896 ; 4 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.lx, align 8, !dbg !3896, !noalias !3892
  %i.ly = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !3896 ; 8 uses
  store i64 0, ptr %i.ly, align 8, !dbg !3896, !noalias !3892
  invoke void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %storemerge.i.i)
          to label %.noexc1.i16 unwind label %.loopexit.split-lp.loopexit.split-lp.i11, !dbg !3899, !noalias !3892

.noexc1.i16:                                      ; preds = %bb.ak
  br i1 %.not54.i.i, label %.preheader36.i.i, label %.lr.ph.i.i17, !dbg !3907

.preheader36.i.i:                                 ; preds = %.noexc2.i50, %.noexc1.i16
  %.sroa.074.10 = phi ptr [ %1, %.noexc1.i16 ], [ %.sroa.074.9, %.noexc2.i50 ], !dbg !3914 ; 2 uses
  %.promoted42.i.i = phi ptr [ %1, %.noexc1.i16 ], [ %i.qv, %.noexc2.i50 ]
  br i1 %.not55.i.i, label %._crit_edge.i.i56, label %.lr.ph48.i.i, !dbg !3921

.lr.ph.i.i17:                                     ; preds = %.noexc1.i16, %.noexc2.i50
  %.sroa.074.0 = phi ptr [ %.sroa.074.9, %.noexc2.i50 ], [ %1, %.noexc1.i16 ], !dbg !3914
  %.promoted.i60.i.i = phi ptr [ %i.qv, %.noexc2.i50 ], [ %1, %.noexc1.i16 ]
  %.sroa.020.037.i.i = phi i64 [ %i.qz, %.noexc2.i50 ], [ 0, %.noexc1.i16 ]
  br label %bb.al, !dbg !3927

bb.al:                                            ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bools0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit.7.i.i.i, %.lr.ph.i.i17
  %.sroa.074.1 = phi ptr [ %.sroa.074.0, %.lr.ph.i.i17 ], [ %.sroa.074.9, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bools0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit.7.i.i.i ], !dbg !3914
  %i.lz = phi ptr [ %.promoted.i60.i.i, %.lr.ph.i.i17 ], [ %i.qv, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bools0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit.7.i.i.i ] ; 6 uses
  %indvars.iv.i.i.i19 = phi i64 [ 0, %.lr.ph.i.i17 ], [ %indvars.iv.next.i.i.i46, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bools0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit.7.i.i.i ] ; 2 uses
  %.sroa.0.021.i.i.i20 = phi i64 [ 0, %.lr.ph.i.i17 ], [ %.sroa.07.0.7.i.i.i45, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bools0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit.7.i.i.i ]
  %i.ma = shl nuw nsw i64 %indvars.iv.i.i.i19, 3, !dbg !3938 ; 8 uses
  %i.mb = shl nuw nsw i64 1, %i.ma, !dbg !3940
  %i.mc = icmp eq ptr %i.lz, %i.t, !dbg !3941
  br i1 %i.mc, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bools0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit.i.i.i, label %bb.am, !dbg !3947

bb.am:                                            ; preds = %bb.al
  %i.md = getelementptr inbounds nuw i8, ptr %i.lz, i64 16, !dbg !3948 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3950), !dbg !3953
  %i.me = load ptr, ptr %i.lz, align 8, !dbg !3959, !alias.scope !3950, !noalias !3962, !nonnull !14, !noundef !14 ; 2 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %i.lz, i64 8, !dbg !3959 ; 2 uses
  %i.mg = load i64, ptr %i.mf, align 8, !dbg !3959, !alias.scope !3950, !noalias !3962, !noundef !14 ; 2 uses
  %i.mh = icmp ne i64 %i.mg, 0, !dbg !3969
  call void @llvm.assume(i1 %i.mh), !dbg !3974
  %i.mi = load i8, ptr %i.me, align 1, !dbg !3975, !noalias !3976, !noundef !14
  %i.mj = icmp ne i8 %i.mi, %sext, !dbg !3975
  %i.mk = add i64 %i.mg, -1, !dbg !3977
  %i.ml = getelementptr inbounds nuw i8, ptr %i.me, i64 1, !dbg !3986
  store ptr %i.ml, ptr %i.lz, align 8, !dbg !3991, !alias.scope !3950, !noalias !3962
  store i64 %i.mk, ptr %i.mf, align 8, !dbg !3991, !alias.scope !3950, !noalias !3962
  %i.mm = zext i1 %i.mj to i8, !dbg !3992
  br label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bools0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit.i.i.i, !dbg !3993

_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bools0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit.i.i.i: ; preds = %bb.am, %bb.al
  %.sroa.074.2 = phi ptr [ %.sroa.074.1, %bb.al ], [ %i.md, %bb.am ], !dbg !3994
  %i.mn = phi ptr [ %i.lz, %bb.al ], [ %i.md, %bb.am ] ; 6 uses
  %.sroa.0.0.i.i.i.i23 = phi i8 [ 2, %bb.al ], [ %i.mm, %bb.am ], !dbg !3995 ; 2 uses
  %i.mo = icmp ne i8 %.sroa.0.0.i.i.i.i23, 2, !dbg !3996
  call void @llvm.assume(i1 %i.mo), !dbg !3997
  %i.mp = trunc nuw i8 %.sroa.0.0.i.i.i.i23 to i1, !dbg !3998
  %i.mq = select i1 %i.mp, i64 %i.mb, i64 0, !dbg !3999
  %.sroa.07.0.i.i.i24 = or i64 %i.mq, %.sroa.0.021.i.i.i20, !dbg !3999
  %i.mr = shl nuw i64 2, %i.ma, !dbg !4001
  %i.ms = icmp eq ptr %i.mn, %i.t, !dbg !3941
  br i1 %i.ms, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bools0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit.1.i.i.i, label %bb.an, !dbg !3947

bb.an:                                            ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bools0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit.i.i.i
  %i.mt = getelementptr inbounds nuw i8, ptr %i.mn, i64 16, !dbg !3948 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4002), !dbg !3953
  %i.mu = load ptr, ptr %i.mn, align 8, !dbg !3959, !alias.scope !4002, !noalias !4004, !nonnull !14, !noundef !14 ; 2 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mn, i64 8, !dbg !3959 ; 2 uses
  %i.mw = load i64, ptr %i.mv, align 8, !dbg !3959, !alias.scope !4002, !noalias !4004, !noundef !14 ; 2 uses
  %i.mx = icmp ne i64 %i.mw, 0, !dbg !3969
  call void @llvm.assume(i1 %i.mx), !dbg !3974
  %i.my = load i8, ptr %i.mu, align 1, !dbg !3975, !noalias !4006, !noundef !14
  %i.mz = icmp ne i8 %i.my, %sext, !dbg !3975
  %i.na = add i64 %i.mw, -1, !dbg !3977
  %i.nb = getelementptr inbounds nuw i8, ptr %i.mu, i64 1, !dbg !3986
  store ptr %i.nb, ptr %i.mn, align 8, !dbg !3991, !alias.scope !4002, !noalias !4004
  store i64 %i.na, ptr %i.mv, align 8, !dbg !3991, !alias.scope !4002, !noalias !4004
  %i.nc = zext i1 %i.mz to i8, !dbg !3992
  br label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bools0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit.1.i.i.i, !dbg !3993

_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bools0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit.1.i.i.i: ; preds = %bb.an, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bools0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit.i.i.i
  %.sroa.074.3 = phi ptr [ %.sroa.074.2, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bools0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit.i.i.i ], [ %i.mt, %bb.an ], !dbg !3994
  %i.nd = phi ptr [ %i.mn, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bools0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit.i.i.i ], [ %i.mt, %bb.an ] ; 6 uses
  %.sroa.0.0.i.1.i.i.i26 = phi i8 [ 2, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bools0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit.i.i.i ], [ %i.nc, %bb.an ], !dbg !3995 ; 2 uses
  %i.ne = icmp ne i8 %.sroa.0.0.i.1.i.i.i26, 2, !dbg !3996
  call void @llvm.assume(i1 %i.ne), !dbg !3997
  %i.nf = trunc nuw i8 %.sroa.0.0.i.1.i.i.i26 to i1, !dbg !3998
  %i.ng = select i1 %i.nf, i64 %i.mr, i64 0, !dbg !3999
  %.sroa.07.0.1.i.i.i27 = or i64 %.sroa.07.0.i.i.i24, %i.ng, !dbg !3999
  %i.nh = shl i64 4, %i.ma, !dbg !4001
  %i.ni = icmp eq ptr %i.nd, %i.t, !dbg !3941
  br i1 %i.ni, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bools0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit.2.i.i.i, label %bb.ao, !dbg !3947

bb.ao:                                            ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bools0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit.1.i.i.i
  %i.nj = getelementptr inbounds nuw i8, ptr %i.nd, i64 16, !dbg !3948 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4007), !dbg !3953
  %i.nk = load ptr, ptr %i.nd, align 8, !dbg !3959, !alias.scope !4007, !noalias !4009, !nonnull !14, !noundef !14 ; 2 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nd, i64 8, !dbg !3959 ; 2 uses
  %i.nm = load i64, ptr %i.nl, align 8, !dbg !3959, !alias.scope !4007, !noalias !4009, !noundef !14 ; 2 uses
  %i.nn = icmp ne i64 %i.nm, 0, !dbg !3969
  call void @llvm.assume(i1 %i.nn), !dbg !3974
  %i.no = load i8, ptr %i.nk, align 1, !dbg !3975, !noalias !4011, !noundef !14
  %i.np = icmp ne i8 %i.no, %sext, !dbg !3975
  %i.nq = add i64 %i.nm, -1, !dbg !3977
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nk, i64 1, !dbg !3986
  store ptr %i.nr, ptr %i.nd, align 8, !dbg !3991, !alias.scope !4007, !noalias !4009
  store i64 %i.nq, ptr %i.nl, align 8, !dbg !3991, !alias.scope !4007, !noalias !4009
  %i.ns = zext i1 %i.np to i8, !dbg !3992
  br label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bools0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit.2.i.i.i, !dbg !3993

_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bools0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit.2.i.i.i: ; preds = %bb.ao, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bools0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit.1.i.i.i
  %.sroa.074.4 = phi ptr [ %.sroa.074.3, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bools0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit.1.i.i.i ], [ %i.nj, %bb.ao ], !dbg !3994
  %i.nt = phi ptr [ %i.nd, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bools0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit.1.i.i.i ], [ %i.nj, %bb.ao ] ; 6 uses
  %.sroa.0.0.i.2.i.i.i29 = phi i8 [ 2, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bools0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit.1.i.i.i ], [ %i.ns, %bb.ao ], !dbg !3995 ; 2 uses
  %i.nu = icmp ne i8 %.sroa.0.0.i.2.i.i.i29, 2, !dbg !3996
  call void @llvm.assume(i1 %i.nu), !dbg !3997
  %i.nv = trunc nuw i8 %.sroa.0.0.i.2.i.i.i29 to i1, !dbg !3998
  %i.nw = select i1 %i.nv, i64 %i.nh, i64 0, !dbg !3999
  %.sroa.07.0.2.i.i.i30 = or i64 %.sroa.07.0.1.i.i.i27, %i.nw, !dbg !3999
  %i.nx = shl i64 8, %i.ma, !dbg !4001
  %i.ny = icmp eq ptr %i.nt, %i.t, !dbg !3941
  br i1 %i.ny, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bools0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit.3.i.i.i, label %bb.ap, !dbg !3947

bb.ap:                                            ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bools0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit.2.i.i.i
  %i.nz = getelementptr inbounds nuw i8, ptr %i.nt, i64 16, !dbg !3948 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4012), !dbg !3953
  %i.oa = load ptr, ptr %i.nt, align 8, !dbg !3959, !alias.scope !4012, !noalias !4014, !nonnull !14, !noundef !14 ; 2 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nt, i64 8, !dbg !3959 ; 2 uses
  %i.oc = load i64, ptr %i.ob, align 8, !dbg !3959, !alias.scope !4012, !noalias !4014, !noundef !14 ; 2 uses
  %i.od = icmp ne i64 %i.oc, 0, !dbg !3969
  call void @llvm.assume(i1 %i.od), !dbg !3974
  %i.oe = load i8, ptr %i.oa, align 1, !dbg !3975, !noalias !4016, !noundef !14
  %i.of = icmp ne i8 %i.oe, %sext, !dbg !3975
  %i.og = add i64 %i.oc, -1, !dbg !3977
  %i.oh = getelementptr inbounds nuw i8, ptr %i.oa, i64 1, !dbg !3986
  store ptr %i.oh, ptr %i.nt, align 8, !dbg !3991, !alias.scope !4012, !noalias !4014
  store i64 %i.og, ptr %i.ob, align 8, !dbg !3991, !alias.scope !4012, !noalias !4014
  %i.oi = zext i1 %i.of to i8, !dbg !3992
  br label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bools0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit.3.i.i.i, !dbg !3993

_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bools0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit.3.i.i.i: ; preds = %bb.ap, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bools0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit.2.i.i.i
  %.sroa.074.5 = phi ptr [ %.sroa.074.4, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bools0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit.2.i.i.i ], [ %i.nz, %bb.ap ], !dbg !3994
  %i.oj = phi ptr [ %i.nt, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bools0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit.2.i.i.i ], [ %i.nz, %bb.ap ] ; 6 uses
  %.sroa.0.0.i.3.i.i.i32 = phi i8 [ 2, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bools0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit.2.i.i.i ], [ %i.oi, %bb.ap ], !dbg !3995 ; 2 uses
  %i.ok = icmp ne i8 %.sroa.0.0.i.3.i.i.i32, 2, !dbg !3996
  call void @llvm.assume(i1 %i.ok), !dbg !3997
  %i.ol = trunc nuw i8 %.sroa.0.0.i.3.i.i.i32 to i1, !dbg !3998
  %i.om = select i1 %i.ol, i64 %i.nx, i64 0, !dbg !3999
  %.sroa.07.0.3.i.i.i33 = or i64 %.sroa.07.0.2.i.i.i30, %i.om, !dbg !3999
  %i.on = shl i64 16, %i.ma, !dbg !4001
  %i.oo = icmp eq ptr %i.oj, %i.t, !dbg !3941
  br i1 %i.oo, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bools0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit.4.i.i.i, label %bb.aq, !dbg !3947

bb.aq:                                            ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bools0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit.3.i.i.i
  %i.op = getelementptr inbounds nuw i8, ptr %i.oj, i64 16, !dbg !3948 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4017), !dbg !3953
  %i.oq = load ptr, ptr %i.oj, align 8, !dbg !3959, !alias.scope !4017, !noalias !4019, !nonnull !14, !noundef !14 ; 2 uses
  %i.or = getelementptr inbounds nuw i8, ptr %i.oj, i64 8, !dbg !3959 ; 2 uses
  %i.os = load i64, ptr %i.or, align 8, !dbg !3959, !alias.scope !4017, !noalias !4019, !noundef !14 ; 2 uses
  %i.ot = icmp ne i64 %i.os, 0, !dbg !3969
  call void @llvm.assume(i1 %i.ot), !dbg !3974
  %i.ou = load i8, ptr %i.oq, align 1, !dbg !3975, !noalias !4021, !noundef !14
  %i.ov = icmp ne i8 %i.ou, %sext, !dbg !3975
  %i.ow = add i64 %i.os, -1, !dbg !3977
  %i.ox = getelementptr inbounds nuw i8, ptr %i.oq, i64 1, !dbg !3986
  store ptr %i.ox, ptr %i.oj, align 8, !dbg !3991, !alias.scope !4017, !noalias !4019
  store i64 %i.ow, ptr %i.or, align 8, !dbg !3991, !alias.scope !4017, !noalias !4019
  %i.oy = zext i1 %i.ov to i8, !dbg !3992
  br label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bools0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit.4.i.i.i, !dbg !3993

_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bools0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit.4.i.i.i: ; preds = %bb.aq, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bools0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit.3.i.i.i
  %.sroa.074.6 = phi ptr [ %.sroa.074.5, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bools0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit.3.i.i.i ], [ %i.op, %bb.aq ], !dbg !3994
  %i.oz = phi ptr [ %i.oj, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bools0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit.3.i.i.i ], [ %i.op, %bb.aq ] ; 6 uses
  %.sroa.0.0.i.4.i.i.i35 = phi i8 [ 2, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bools0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit.3.i.i.i ], [ %i.oy, %bb.aq ], !dbg !3995 ; 2 uses
  %i.pa = icmp ne i8 %.sroa.0.0.i.4.i.i.i35, 2, !dbg !3996
  call void @llvm.assume(i1 %i.pa), !dbg !3997
  %i.pb = trunc nuw i8 %.sroa.0.0.i.4.i.i.i35 to i1, !dbg !3998
  %i.pc = select i1 %i.pb, i64 %i.on, i64 0, !dbg !3999
  %.sroa.07.0.4.i.i.i36 = or i64 %.sroa.07.0.3.i.i.i33, %i.pc, !dbg !3999
  %i.pd = shl i64 32, %i.ma, !dbg !4001
  %i.pe = icmp eq ptr %i.oz, %i.t, !dbg !3941
  br i1 %i.pe, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bools0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit.5.i.i.i, label %bb.ar, !dbg !3947

bb.ar:                                            ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bools0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit.4.i.i.i
  %i.pf = getelementptr inbounds nuw i8, ptr %i.oz, i64 16, !dbg !3948 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4022), !dbg !3953
  %i.pg = load ptr, ptr %i.oz, align 8, !dbg !3959, !alias.scope !4022, !noalias !4024, !nonnull !14, !noundef !14 ; 2 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %i.oz, i64 8, !dbg !3959 ; 2 uses
  %i.pi = load i64, ptr %i.ph, align 8, !dbg !3959, !alias.scope !4022, !noalias !4024, !noundef !14 ; 2 uses
  %i.pj = icmp ne i64 %i.pi, 0, !dbg !3969
  call void @llvm.assume(i1 %i.pj), !dbg !3974
  %i.pk = load i8, ptr %i.pg, align 1, !dbg !3975, !noalias !4026, !noundef !14
  %i.pl = icmp ne i8 %i.pk, %sext, !dbg !3975
  %i.pm = add i64 %i.pi, -1, !dbg !3977
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pg, i64 1, !dbg !3986
  store ptr %i.pn, ptr %i.oz, align 8, !dbg !3991, !alias.scope !4022, !noalias !4024
  store i64 %i.pm, ptr %i.ph, align 8, !dbg !3991, !alias.scope !4022, !noalias !4024
  %i.po = zext i1 %i.pl to i8, !dbg !3992
  br label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bools0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit.5.i.i.i, !dbg !3993

_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bools0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit.5.i.i.i: ; preds = %bb.ar, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bools0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit.4.i.i.i
  %.sroa.074.7 = phi ptr [ %.sroa.074.6, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bools0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit.4.i.i.i ], [ %i.pf, %bb.ar ], !dbg !3994
  %i.pp = phi ptr [ %i.oz, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bools0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit.4.i.i.i ], [ %i.pf, %bb.ar ] ; 6 uses
  %.sroa.0.0.i.5.i.i.i38 = phi i8 [ 2, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bools0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit.4.i.i.i ], [ %i.po, %bb.ar ], !dbg !3995 ; 2 uses
  %i.pq = icmp ne i8 %.sroa.0.0.i.5.i.i.i38, 2, !dbg !3996
  call void @llvm.assume(i1 %i.pq), !dbg !3997
  %i.pr = trunc nuw i8 %.sroa.0.0.i.5.i.i.i38 to i1, !dbg !3998
  %i.ps = select i1 %i.pr, i64 %i.pd, i64 0, !dbg !3999
  %.sroa.07.0.5.i.i.i39 = or i64 %.sroa.07.0.4.i.i.i36, %i.ps, !dbg !3999
  %i.pt = shl i64 64, %i.ma, !dbg !4001
  %i.pu = icmp eq ptr %i.pp, %i.t, !dbg !3941
  br i1 %i.pu, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bools0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit.6.i.i.i, label %bb.as, !dbg !3947

bb.as:                                            ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bools0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit.5.i.i.i
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pp, i64 16, !dbg !3948 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4027), !dbg !3953
  %i.pw = load ptr, ptr %i.pp, align 8, !dbg !3959, !alias.scope !4027, !noalias !4029, !nonnull !14, !noundef !14 ; 2 uses
  %i.px = getelementptr inbounds nuw i8, ptr %i.pp, i64 8, !dbg !3959 ; 2 uses
  %i.py = load i64, ptr %i.px, align 8, !dbg !3959, !alias.scope !4027, !noalias !4029, !noundef !14 ; 2 uses
  %i.pz = icmp ne i64 %i.py, 0, !dbg !3969
  call void @llvm.assume(i1 %i.pz), !dbg !3974
  %i.qa = load i8, ptr %i.pw, align 1, !dbg !3975, !noalias !4031, !noundef !14
  %i.qb = icmp ne i8 %i.qa, %sext, !dbg !3975
  %i.qc = add i64 %i.py, -1, !dbg !3977
  %i.qd = getelementptr inbounds nuw i8, ptr %i.pw, i64 1, !dbg !3986
  store ptr %i.qd, ptr %i.pp, align 8, !dbg !3991, !alias.scope !4027, !noalias !4029
  store i64 %i.qc, ptr %i.px, align 8, !dbg !3991, !alias.scope !4027, !noalias !4029
  %i.qe = zext i1 %i.qb to i8, !dbg !3992
  br label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bools0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit.6.i.i.i, !dbg !3993

_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bools0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit.6.i.i.i: ; preds = %bb.as, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bools0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit.5.i.i.i
  %.sroa.074.8 = phi ptr [ %.sroa.074.7, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bools0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit.5.i.i.i ], [ %i.pv, %bb.as ], !dbg !3994
  %i.qf = phi ptr [ %i.pp, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bools0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit.5.i.i.i ], [ %i.pv, %bb.as ] ; 6 uses
  %.sroa.0.0.i.6.i.i.i41 = phi i8 [ 2, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bools0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit.5.i.i.i ], [ %i.qe, %bb.as ], !dbg !3995 ; 2 uses
  %i.qg = icmp ne i8 %.sroa.0.0.i.6.i.i.i41, 2, !dbg !3996
  call void @llvm.assume(i1 %i.qg), !dbg !3997
  %i.qh = trunc nuw i8 %.sroa.0.0.i.6.i.i.i41 to i1, !dbg !3998
  %i.qi = select i1 %i.qh, i64 %i.pt, i64 0, !dbg !3999
  %.sroa.07.0.6.i.i.i42 = or i64 %.sroa.07.0.5.i.i.i39, %i.qi, !dbg !3999
  %i.qj = shl i64 128, %i.ma, !dbg !4001
  %i.qk = icmp eq ptr %i.qf, %i.t, !dbg !3941
  br i1 %i.qk, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bools0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit.7.i.i.i, label %bb.at, !dbg !3947

bb.at:                                            ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bools0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit.6.i.i.i
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qf, i64 16, !dbg !3948 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4032), !dbg !3953
  %i.qm = load ptr, ptr %i.qf, align 8, !dbg !3959, !alias.scope !4032, !noalias !4034, !nonnull !14, !noundef !14 ; 2 uses
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qf, i64 8, !dbg !3959 ; 2 uses
  %i.qo = load i64, ptr %i.qn, align 8, !dbg !3959, !alias.scope !4032, !noalias !4034, !noundef !14 ; 2 uses
  %i.qp = icmp ne i64 %i.qo, 0, !dbg !3969
  call void @llvm.assume(i1 %i.qp), !dbg !3974
  %i.qq = load i8, ptr %i.qm, align 1, !dbg !3975, !noalias !4036, !noundef !14
  %i.qr = icmp ne i8 %i.qq, %sext, !dbg !3975
  %i.qs = add i64 %i.qo, -1, !dbg !3977
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qm, i64 1, !dbg !3986
  store ptr %i.qt, ptr %i.qf, align 8, !dbg !3991, !alias.scope !4032, !noalias !4034
  store i64 %i.qs, ptr %i.qn, align 8, !dbg !3991, !alias.scope !4032, !noalias !4034
  %i.qu = zext i1 %i.qr to i8, !dbg !3992
  br label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bools0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit.7.i.i.i, !dbg !3993

_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bools0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit.7.i.i.i: ; preds = %bb.at, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bools0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit.6.i.i.i
  %.sroa.074.9 = phi ptr [ %.sroa.074.8, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bools0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit.6.i.i.i ], [ %i.ql, %bb.at ], !dbg !3994 ; 3 uses
  %i.qv = phi ptr [ %i.qf, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bools0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit.6.i.i.i ], [ %i.ql, %bb.at ] ; 3 uses
  %.sroa.0.0.i.7.i.i.i44 = phi i8 [ 2, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bools0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit.6.i.i.i ], [ %i.qu, %bb.at ], !dbg !3995 ; 2 uses
  %i.qw = icmp ne i8 %.sroa.0.0.i.7.i.i.i44, 2, !dbg !3996
  call void @llvm.assume(i1 %i.qw), !dbg !3997
  %i.qx = trunc nuw i8 %.sroa.0.0.i.7.i.i.i44 to i1, !dbg !3998
  %i.qy = select i1 %i.qx, i64 %i.qj, i64 0, !dbg !3999
  %.sroa.07.0.7.i.i.i45 = or i64 %.sroa.07.0.6.i.i.i42, %i.qy, !dbg !3999 ; 2 uses
  %indvars.iv.next.i.i.i46 = add nuw nsw i64 %indvars.iv.i.i.i19, 1, !dbg !4037 ; 2 uses
  %exitcond.not.i.i.i47 = icmp eq i64 %indvars.iv.next.i.i.i46, 8, !dbg !4048
  br i1 %exitcond.not.i.i.i47, label %_RINvNtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutable19get_chunk_uncheckedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1h_5slice4iter7IterMutRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bools0_0EEB2C_.exit.i.i, label %bb.al, !dbg !3927

_RINvNtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutable19get_chunk_uncheckedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1h_5slice4iter7IterMutRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bools0_0EEB2C_.exit.i.i: ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bools0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit.7.i.i.i
  invoke void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef 8)
          to label %.noexc2.i50 unwind label %.loopexit.split-lp.loopexit.i48, !dbg !4051, !noalias !3892

.noexc2.i50:                                      ; preds = %_RINvNtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutable19get_chunk_uncheckedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1h_5slice4iter7IterMutRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bools0_0EEB2C_.exit.i.i
  %i.qz = add nuw nsw i64 %.sroa.020.037.i.i, 1, !dbg !4059 ; 2 uses
  %i.ra = load i64, ptr %i.ly, align 8, !dbg !4065, !alias.scope !4067, !noalias !4071, !noundef !14 ; 2 uses
  %i.rb = icmp sgt i64 %i.ra, -1, !dbg !4072
  call void @llvm.assume(i1 %i.rb), !dbg !4073
  %i.rc = load ptr, ptr %i.lx, align 8, !dbg !4074, !alias.scope !4067, !noalias !4071, !nonnull !14, !noundef !14
  %i.rd = getelementptr inbounds nuw i8, ptr %i.rc, i64 %i.ra, !dbg !4079
  store i64 %.sroa.07.0.7.i.i.i45, ptr %i.rd, align 1, !dbg !4081, !noalias !4071
  %i.re = load i64, ptr %i.ly, align 8, !dbg !4083, !alias.scope !4067, !noalias !4071, !noundef !14
  %i.rf = add i64 %i.re, 8, !dbg !4083
  store i64 %i.rf, ptr %i.ly, align 8, !dbg !4083, !alias.scope !4067, !noalias !4071
  %exitcond.not.i.i51 = icmp eq i64 %i.qz, %i.w, !dbg !4084
  br i1 %exitcond.not.i.i51, label %.preheader36.i.i, label %.lr.ph.i.i17, !dbg !3907

._crit_edge.i.i56:                                ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCs4PheDXcg4wa_10polars_row.exit31.i.i55, %.preheader36.i.i
  %.sroa.074.20 = phi ptr [ %.sroa.074.10, %.preheader36.i.i ], [ %.sroa.074.19, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCs4PheDXcg4wa_10polars_row.exit31.i.i55 ], !dbg !3914 ; 6 uses
  br i1 %.not.i.i, label %.preheader.i.i57, label %bb.bo, !dbg !4087

.lr.ph48.i.i:                                     ; preds = %.preheader36.i.i, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCs4PheDXcg4wa_10polars_row.exit31.i.i55
  %.sroa.074.11 = phi ptr [ %.sroa.074.19, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCs4PheDXcg4wa_10polars_row.exit31.i.i55 ], [ %.sroa.074.10, %.preheader36.i.i ], !dbg !3914
  %.promoted.i.i = phi ptr [ %.promoted3843.7.i.i, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCs4PheDXcg4wa_10polars_row.exit31.i.i55 ], [ %.promoted42.i.i, %.preheader36.i.i ] ; 6 uses
  %.sroa.022.041.i.i = phi i64 [ %i.zl, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCs4PheDXcg4wa_10polars_row.exit31.i.i55 ], [ 0, %.preheader36.i.i ]
  %i.rg = icmp eq ptr %.promoted.i.i, %i.t, !dbg !4089
  br i1 %i.rg, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bools0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit34.i.i, label %bb.be, !dbg !4098

bb.au:                                            ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bools0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit.i.i.6, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bools0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit.i.i.5, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bools0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit.i.i.4, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bools0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit.i.i.3, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bools0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit.i.i.2, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bools0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit.i.i.1, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bools0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit.i.i
  %.sroa.017.0.i.i60.lcssa = phi i8 [ %.sroa.0.0.i.i.i59, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bools0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit.i.i ], [ %.sroa.017.0.i.i60.1, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bools0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit.i.i.1 ], [ %.sroa.017.0.i.i60.2, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bools0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit.i.i.2 ], [ %.sroa.017.0.i.i60.3, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bools0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit.i.i.3 ], [ %.sroa.017.0.i.i60.4, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bools0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit.i.i.4 ], [ %.sroa.017.0.i.i60.5, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bools0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit.i.i.5 ], [ %.sroa.017.0.i.i60.6, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bools0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit.i.i.6 ], !dbg !4099
  %i.rh = load i64, ptr %i.ly, align 8, !dbg !4105, !alias.scope !4110, !noalias !4071, !noundef !14 ; 3 uses
  %i.ri = load i64, ptr %i.a, align 8, !dbg !4113, !range !1010, !alias.scope !4110, !noalias !4071, !noundef !14
  %i.rj = icmp eq i64 %i.rh, %i.ri, !dbg !4116
  br i1 %i.rj, label %bb.av, label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCs4PheDXcg4wa_10polars_row.exit.i.i62, !dbg !4116

bb.av:                                            ; preds = %bb.au
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCs4PheDXcg4wa_10polars_row.exit.i.i62 unwind label %.loopexit.split-lp.loopexit.split-lp.i11, !dbg !4117, !noalias !3892

_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCs4PheDXcg4wa_10polars_row.exit.i.i62: ; preds = %bb.av, %bb.au
  %i.rk = load ptr, ptr %i.lx, align 8, !dbg !4118, !alias.scope !4110, !noalias !4071, !nonnull !14, !noundef !14
  %i.rl = getelementptr inbounds nuw i8, ptr %i.rk, i64 %i.rh, !dbg !4123
  store i8 %.sroa.017.0.i.i60.lcssa, ptr %i.rl, align 1, !dbg !4125, !noalias !4071
  %i.rm = add i64 %i.rh, 1, !dbg !4127
  store i64 %i.rm, ptr %i.ly, align 8, !dbg !4127, !alias.scope !4110, !noalias !4071
  br label %bb.bo, !dbg !4128

.preheader.i.i57:                                 ; preds = %._crit_edge.i.i56
  %i.rn = icmp eq ptr %.sroa.074.20, %i.t, !dbg !4129
  br i1 %i.rn, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bools0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit.i.i, label %bb.aw, !dbg !4133

bb.aw:                                            ; preds = %.preheader.i.i57
  %i.ro = getelementptr inbounds nuw i8, ptr %.sroa.074.20, i64 16, !dbg !4134
  call void @llvm.experimental.noalias.scope.decl(metadata !4136), !dbg !4139
  %i.rp = load ptr, ptr %.sroa.074.20, align 8, !dbg !4142, !alias.scope !4136, !noalias !4144, !nonnull !14, !noundef !14 ; 2 uses
  %i.rq = getelementptr inbounds nuw i8, ptr %.sroa.074.20, i64 8, !dbg !4142 ; 2 uses
  %i.rr = load i64, ptr %i.rq, align 8, !dbg !4142, !alias.scope !4136, !noalias !4144, !noundef !14 ; 2 uses
  %i.rs = icmp ne i64 %i.rr, 0, !dbg !4147
  call void @llvm.assume(i1 %i.rs), !dbg !4150
  %i.rt = load i8, ptr %i.rp, align 1, !dbg !4151, !noalias !4152, !noundef !14
  %i.ru = icmp ne i8 %i.rt, %sext, !dbg !4151
  %i.rv = add i64 %i.rr, -1, !dbg !4153
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rp, i64 1, !dbg !4157
  store ptr %i.rw, ptr %.sroa.074.20, align 8, !dbg !4159, !alias.scope !4136, !noalias !4144
  store i64 %i.rv, ptr %i.rq, align 8, !dbg !4159, !alias.scope !4136, !noalias !4144
  %i.rx = zext i1 %i.ru to i8, !dbg !4160
  br label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bools0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit.i.i, !dbg !4161

_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bools0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit.i.i: ; preds = %bb.aw, %.preheader.i.i57
  %i.ry = phi ptr [ %i.ro, %bb.aw ], [ %.sroa.074.20, %.preheader.i.i57 ] ; 6 uses
  %.sroa.0.0.i.i.i59 = phi i8 [ %i.rx, %bb.aw ], [ 2, %.preheader.i.i57 ], !dbg !4162 ; 3 uses
  %i.rz = icmp ne i8 %.sroa.0.0.i.i.i59, 2, !dbg !4163
  call void @llvm.assume(i1 %i.rz), !dbg !4164
  %exitcond57.not.i.i61 = icmp eq i64 %i.y, 1, !dbg !4165
  br i1 %exitcond57.not.i.i61, label %bb.au, label %.preheader.i.i57.1, !dbg !4172

.preheader.i.i57.1:                               ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bools0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit.i.i
  %i.sa = icmp eq ptr %i.ry, %i.t, !dbg !4129
  br i1 %i.sa, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bools0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit.i.i.1, label %bb.ax, !dbg !4133

bb.ax:                                            ; preds = %.preheader.i.i57.1
  %i.sb = getelementptr inbounds nuw i8, ptr %i.ry, i64 16, !dbg !4134
  call void @llvm.experimental.noalias.scope.decl(metadata !4173), !dbg !4139
  %i.sc = load ptr, ptr %i.ry, align 8, !dbg !4142, !alias.scope !4173, !noalias !4144, !nonnull !14, !noundef !14 ; 2 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %i.ry, i64 8, !dbg !4142 ; 2 uses
  %i.se = load i64, ptr %i.sd, align 8, !dbg !4142, !alias.scope !4173, !noalias !4144, !noundef !14 ; 2 uses
  %i.sf = icmp ne i64 %i.se, 0, !dbg !4147
  call void @llvm.assume(i1 %i.sf), !dbg !4150
  %i.sg = load i8, ptr %i.sc, align 1, !dbg !4151, !noalias !4175, !noundef !14
  %i.sh = icmp ne i8 %i.sg, %sext, !dbg !4151
  %i.si = add i64 %i.se, -1, !dbg !4153
  %i.sj = getelementptr inbounds nuw i8, ptr %i.sc, i64 1, !dbg !4157
  store ptr %i.sj, ptr %i.ry, align 8, !dbg !4159, !alias.scope !4173, !noalias !4144
  store i64 %i.si, ptr %i.sd, align 8, !dbg !4159, !alias.scope !4173, !noalias !4144
  %i.sk = zext i1 %i.sh to i8, !dbg !4160
  br label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bools0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit.i.i.1, !dbg !4161

_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bools0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit.i.i.1: ; preds = %bb.ax, %.preheader.i.i57.1
  %i.sl = phi ptr [ %i.sb, %bb.ax ], [ %i.ry, %.preheader.i.i57.1 ] ; 6 uses
  %.sroa.0.0.i.i.i59.1 = phi i8 [ %i.sk, %bb.ax ], [ 2, %.preheader.i.i57.1 ], !dbg !4162 ; 2 uses
  %i.sm = icmp ne i8 %.sroa.0.0.i.i.i59.1, 2, !dbg !4163
  call void @llvm.assume(i1 %i.sm), !dbg !4164
  %i.sn = shl nuw nsw i8 %.sroa.0.0.i.i.i59.1, 1, !dbg !4099
  %.sroa.017.0.i.i60.1 = or i8 %i.sn, %.sroa.0.0.i.i.i59, !dbg !4099 ; 2 uses
  %exitcond57.not.i.i61.1 = icmp eq i64 %i.y, 2, !dbg !4165
  br i1 %exitcond57.not.i.i61.1, label %bb.au, label %.preheader.i.i57.2, !dbg !4172

.preheader.i.i57.2:                               ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bools0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit.i.i.1
  %i.so = icmp eq ptr %i.sl, %i.t, !dbg !4129
  br i1 %i.so, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bools0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit.i.i.2, label %bb.ay, !dbg !4133

bb.ay:                                            ; preds = %.preheader.i.i57.2
  %i.sp = getelementptr inbounds nuw i8, ptr %i.sl, i64 16, !dbg !4134
  call void @llvm.experimental.noalias.scope.decl(metadata !4176), !dbg !4139
  %i.sq = load ptr, ptr %i.sl, align 8, !dbg !4142, !alias.scope !4176, !noalias !4144, !nonnull !14, !noundef !14 ; 2 uses
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sl, i64 8, !dbg !4142 ; 2 uses
  %i.ss = load i64, ptr %i.sr, align 8, !dbg !4142, !alias.scope !4176, !noalias !4144, !noundef !14 ; 2 uses
  %i.st = icmp ne i64 %i.ss, 0, !dbg !4147
  call void @llvm.assume(i1 %i.st), !dbg !4150
  %i.su = load i8, ptr %i.sq, align 1, !dbg !4151, !noalias !4178, !noundef !14
  %i.sv = icmp ne i8 %i.su, %sext, !dbg !4151
  %i.sw = add i64 %i.ss, -1, !dbg !4153
  %i.sx = getelementptr inbounds nuw i8, ptr %i.sq, i64 1, !dbg !4157
  store ptr %i.sx, ptr %i.sl, align 8, !dbg !4159, !alias.scope !4176, !noalias !4144
  store i64 %i.sw, ptr %i.sr, align 8, !dbg !4159, !alias.scope !4176, !noalias !4144
  %i.sy = zext i1 %i.sv to i8, !dbg !4160
  br label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bools0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit.i.i.2, !dbg !4161

_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bools0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit.i.i.2: ; preds = %bb.ay, %.preheader.i.i57.2
  %i.sz = phi ptr [ %i.sp, %bb.ay ], [ %i.sl, %.preheader.i.i57.2 ] ; 6 uses
  %.sroa.0.0.i.i.i59.2 = phi i8 [ %i.sy, %bb.ay ], [ 2, %.preheader.i.i57.2 ], !dbg !4162 ; 2 uses
  %i.ta = icmp ne i8 %.sroa.0.0.i.i.i59.2, 2, !dbg !4163
  call void @llvm.assume(i1 %i.ta), !dbg !4164
  %i.tb = shl nuw nsw i8 %.sroa.0.0.i.i.i59.2, 2, !dbg !4099
  %.sroa.017.0.i.i60.2 = or i8 %i.tb, %.sroa.017.0.i.i60.1, !dbg !4099 ; 2 uses
  %exitcond57.not.i.i61.2 = icmp eq i64 %i.y, 3, !dbg !4165
  br i1 %exitcond57.not.i.i61.2, label %bb.au, label %.preheader.i.i57.3, !dbg !4172

.preheader.i.i57.3:                               ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bools0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit.i.i.2
  %i.tc = icmp eq ptr %i.sz, %i.t, !dbg !4129
  br i1 %i.tc, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bools0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit.i.i.3, label %bb.az, !dbg !4133

bb.az:                                            ; preds = %.preheader.i.i57.3
  %i.td = getelementptr inbounds nuw i8, ptr %i.sz, i64 16, !dbg !4134
  call void @llvm.experimental.noalias.scope.decl(metadata !4179), !dbg !4139
  %i.te = load ptr, ptr %i.sz, align 8, !dbg !4142, !alias.scope !4179, !noalias !4144, !nonnull !14, !noundef !14 ; 2 uses
  %i.tf = getelementptr inbounds nuw i8, ptr %i.sz, i64 8, !dbg !4142 ; 2 uses
  %i.tg = load i64, ptr %i.tf, align 8, !dbg !4142, !alias.scope !4179, !noalias !4144, !noundef !14 ; 2 uses
  %i.th = icmp ne i64 %i.tg, 0, !dbg !4147
  call void @llvm.assume(i1 %i.th), !dbg !4150
  %i.ti = load i8, ptr %i.te, align 1, !dbg !4151, !noalias !4181, !noundef !14
  %i.tj = icmp ne i8 %i.ti, %sext, !dbg !4151
  %i.tk = add i64 %i.tg, -1, !dbg !4153
  %i.tl = getelementptr inbounds nuw i8, ptr %i.te, i64 1, !dbg !4157
  store ptr %i.tl, ptr %i.sz, align 8, !dbg !4159, !alias.scope !4179, !noalias !4144
  store i64 %i.tk, ptr %i.tf, align 8, !dbg !4159, !alias.scope !4179, !noalias !4144
  %i.tm = zext i1 %i.tj to i8, !dbg !4160
  br label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bools0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit.i.i.3, !dbg !4161

_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bools0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit.i.i.3: ; preds = %bb.az, %.preheader.i.i57.3
  %i.tn = phi ptr [ %i.td, %bb.az ], [ %i.sz, %.preheader.i.i57.3 ] ; 6 uses
  %.sroa.0.0.i.i.i59.3 = phi i8 [ %i.tm, %bb.az ], [ 2, %.preheader.i.i57.3 ], !dbg !4162 ; 2 uses
  %i.to = icmp ne i8 %.sroa.0.0.i.i.i59.3, 2, !dbg !4163
  call void @llvm.assume(i1 %i.to), !dbg !4164
  %i.tp = shl nuw nsw i8 %.sroa.0.0.i.i.i59.3, 3, !dbg !4099
  %.sroa.017.0.i.i60.3 = or i8 %i.tp, %.sroa.017.0.i.i60.2, !dbg !4099 ; 2 uses
  %exitcond57.not.i.i61.3 = icmp eq i64 %i.y, 4, !dbg !4165
  br i1 %exitcond57.not.i.i61.3, label %bb.au, label %.preheader.i.i57.4, !dbg !4172

.preheader.i.i57.4:                               ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bools0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit.i.i.3
  %i.tq = icmp eq ptr %i.tn, %i.t, !dbg !4129
  br i1 %i.tq, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bools0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit.i.i.4, label %bb.ba, !dbg !4133

bb.ba:                                            ; preds = %.preheader.i.i57.4
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tn, i64 16, !dbg !4134
  call void @llvm.experimental.noalias.scope.decl(metadata !4182), !dbg !4139
  %i.ts = load ptr, ptr %i.tn, align 8, !dbg !4142, !alias.scope !4182, !noalias !4144, !nonnull !14, !noundef !14 ; 2 uses
  %i.tt = getelementptr inbounds nuw i8, ptr %i.tn, i64 8, !dbg !4142 ; 2 uses
  %i.tu = load i64, ptr %i.tt, align 8, !dbg !4142, !alias.scope !4182, !noalias !4144, !noundef !14 ; 2 uses
  %i.tv = icmp ne i64 %i.tu, 0, !dbg !4147
  call void @llvm.assume(i1 %i.tv), !dbg !4150
  %i.tw = load i8, ptr %i.ts, align 1, !dbg !4151, !noalias !4184, !noundef !14
  %i.tx = icmp ne i8 %i.tw, %sext, !dbg !4151
  %i.ty = add i64 %i.tu, -1, !dbg !4153
  %i.tz = getelementptr inbounds nuw i8, ptr %i.ts, i64 1, !dbg !4157
  store ptr %i.tz, ptr %i.tn, align 8, !dbg !4159, !alias.scope !4182, !noalias !4144
  store i64 %i.ty, ptr %i.tt, align 8, !dbg !4159, !alias.scope !4182, !noalias !4144
  %i.ua = zext i1 %i.tx to i8, !dbg !4160
  br label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bools0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit.i.i.4, !dbg !4161

_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bools0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit.i.i.4: ; preds = %bb.ba, %.preheader.i.i57.4
  %i.ub = phi ptr [ %i.tr, %bb.ba ], [ %i.tn, %.preheader.i.i57.4 ] ; 6 uses
  %.sroa.0.0.i.i.i59.4 = phi i8 [ %i.ua, %bb.ba ], [ 2, %.preheader.i.i57.4 ], !dbg !4162 ; 2 uses
  %i.uc = icmp ne i8 %.sroa.0.0.i.i.i59.4, 2, !dbg !4163
  call void @llvm.assume(i1 %i.uc), !dbg !4164
  %i.ud = shl nuw nsw i8 %.sroa.0.0.i.i.i59.4, 4, !dbg !4099
  %.sroa.017.0.i.i60.4 = or i8 %i.ud, %.sroa.017.0.i.i60.3, !dbg !4099 ; 2 uses
  %exitcond57.not.i.i61.4 = icmp eq i64 %i.y, 5, !dbg !4165
  br i1 %exitcond57.not.i.i61.4, label %bb.au, label %.preheader.i.i57.5, !dbg !4172

.preheader.i.i57.5:                               ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bools0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit.i.i.4
  %i.ue = icmp eq ptr %i.ub, %i.t, !dbg !4129
  br i1 %i.ue, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bools0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit.i.i.5, label %bb.bb, !dbg !4133

bb.bb:                                            ; preds = %.preheader.i.i57.5
  %i.uf = getelementptr inbounds nuw i8, ptr %i.ub, i64 16, !dbg !4134
  call void @llvm.experimental.noalias.scope.decl(metadata !4185), !dbg !4139
  %i.ug = load ptr, ptr %i.ub, align 8, !dbg !4142, !alias.scope !4185, !noalias !4144, !nonnull !14, !noundef !14 ; 2 uses
  %i.uh = getelementptr inbounds nuw i8, ptr %i.ub, i64 8, !dbg !4142 ; 2 uses
  %i.ui = load i64, ptr %i.uh, align 8, !dbg !4142, !alias.scope !4185, !noalias !4144, !noundef !14 ; 2 uses
  %i.uj = icmp ne i64 %i.ui, 0, !dbg !4147
  call void @llvm.assume(i1 %i.uj), !dbg !4150
  %i.uk = load i8, ptr %i.ug, align 1, !dbg !4151, !noalias !4187, !noundef !14
  %i.ul = icmp ne i8 %i.uk, %sext, !dbg !4151
  %i.um = add i64 %i.ui, -1, !dbg !4153
  %i.un = getelementptr inbounds nuw i8, ptr %i.ug, i64 1, !dbg !4157
  store ptr %i.un, ptr %i.ub, align 8, !dbg !4159, !alias.scope !4185, !noalias !4144
  store i64 %i.um, ptr %i.uh, align 8, !dbg !4159, !alias.scope !4185, !noalias !4144
  %i.uo = zext i1 %i.ul to i8, !dbg !4160
  br label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bools0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit.i.i.5, !dbg !4161

_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bools0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit.i.i.5: ; preds = %bb.bb, %.preheader.i.i57.5
  %i.up = phi ptr [ %i.uf, %bb.bb ], [ %i.ub, %.preheader.i.i57.5 ] ; 4 uses
  %.sroa.0.0.i.i.i59.5 = phi i8 [ %i.uo, %bb.bb ], [ 2, %.preheader.i.i57.5 ], !dbg !4162 ; 2 uses
  %i.uq = icmp ne i8 %.sroa.0.0.i.i.i59.5, 2, !dbg !4163
  call void @llvm.assume(i1 %i.uq), !dbg !4164
  %i.ur = shl nuw nsw i8 %.sroa.0.0.i.i.i59.5, 5, !dbg !4099
  %.sroa.017.0.i.i60.5 = or i8 %i.ur, %.sroa.017.0.i.i60.4, !dbg !4099 ; 2 uses
  %exitcond57.not.i.i61.5 = icmp eq i64 %i.y, 6, !dbg !4165
  br i1 %exitcond57.not.i.i61.5, label %bb.au, label %.preheader.i.i57.6, !dbg !4172

.preheader.i.i57.6:                               ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bools0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit.i.i.5
  %i.us = icmp eq ptr %i.up, %i.t, !dbg !4129
  br i1 %i.us, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bools0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit.i.i.6, label %bb.bc, !dbg !4133

bb.bc:                                            ; preds = %.preheader.i.i57.6
  call void @llvm.experimental.noalias.scope.decl(metadata !4188), !dbg !4139
  %i.ut = load ptr, ptr %i.up, align 8, !dbg !4142, !alias.scope !4188, !noalias !4144, !nonnull !14, !noundef !14 ; 2 uses
  %i.uu = getelementptr inbounds nuw i8, ptr %i.up, i64 8, !dbg !4142 ; 2 uses
  %i.uv = load i64, ptr %i.uu, align 8, !dbg !4142, !alias.scope !4188, !noalias !4144, !noundef !14 ; 2 uses
  %i.uw = icmp ne i64 %i.uv, 0, !dbg !4147
  call void @llvm.assume(i1 %i.uw), !dbg !4150
  %i.ux = load i8, ptr %i.ut, align 1, !dbg !4151, !noalias !4190, !noundef !14
  %i.uy = icmp ne i8 %i.ux, %sext, !dbg !4151
  %i.uz = add i64 %i.uv, -1, !dbg !4153
  %i.va = getelementptr inbounds nuw i8, ptr %i.ut, i64 1, !dbg !4157
  store ptr %i.va, ptr %i.up, align 8, !dbg !4159, !alias.scope !4188, !noalias !4144
  store i64 %i.uz, ptr %i.uu, align 8, !dbg !4159, !alias.scope !4188, !noalias !4144
  %i.vb = zext i1 %i.uy to i8, !dbg !4160
  br label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bools0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit.i.i.6, !dbg !4161

_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bools0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit.i.i.6: ; preds = %bb.bc, %.preheader.i.i57.6
  %.sroa.0.0.i.i.i59.6 = phi i8 [ %i.vb, %bb.bc ], [ 2, %.preheader.i.i57.6 ], !dbg !4162 ; 2 uses
  %i.vc = icmp ne i8 %.sroa.0.0.i.i.i59.6, 2, !dbg !4163
  call void @llvm.assume(i1 %i.vc), !dbg !4164
  %i.vd = shl nuw i8 %.sroa.0.0.i.i.i59.6, 6, !dbg !4099
  %.sroa.017.0.i.i60.6 = or i8 %i.vd, %.sroa.017.0.i.i60.5, !dbg !4099
  br label %bb.au, !dbg !4172

bb.bd:                                            ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bools0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit34.7.i.i
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCs4PheDXcg4wa_10polars_row.exit31.i.i55 unwind label %.loopexit.i63, !dbg !4191, !noalias !3892

_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCs4PheDXcg4wa_10polars_row.exit31.i.i55: ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bools0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit34.7.i.i, %bb.bd
  %i.ve = load ptr, ptr %i.lx, align 8, !dbg !4195, !alias.scope !4200, !noalias !4071, !nonnull !14, !noundef !14
  %i.vf = getelementptr inbounds nuw i8, ptr %i.ve, i64 %i.zm, !dbg !4203
  store i8 %.sroa.010.0.7.i.i54, ptr %i.vf, align 1, !dbg !4205, !noalias !4071
  %i.vg = add i64 %i.zm, 1, !dbg !4207
  store i64 %i.vg, ptr %i.ly, align 8, !dbg !4207, !alias.scope !4200, !noalias !4071
  %exitcond56.not.i.i = icmp eq i64 %i.zl, %i.ab, !dbg !4208
  br i1 %exitcond56.not.i.i, label %._crit_edge.i.i56, label %.lr.ph48.i.i, !dbg !3921

bb.be:                                            ; preds = %.lr.ph48.i.i
  %i.vh = getelementptr inbounds nuw i8, ptr %.promoted.i.i, i64 16, !dbg !4211 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4213), !dbg !4216
  %i.vi = load ptr, ptr %.promoted.i.i, align 8, !dbg !4219, !alias.scope !4213, !noalias !4221, !nonnull !14, !noundef !14 ; 2 uses
  %i.vj = getelementptr inbounds nuw i8, ptr %.promoted.i.i, i64 8, !dbg !4219 ; 2 uses
  %i.vk = load i64, ptr %i.vj, align 8, !dbg !4219, !alias.scope !4213, !noalias !4221, !noundef !14 ; 2 uses
  %i.vl = icmp ne i64 %i.vk, 0, !dbg !4224
  call void @llvm.assume(i1 %i.vl), !dbg !4227
  %i.vm = load i8, ptr %i.vi, align 1, !dbg !4228, !noalias !4229, !noundef !14
  %i.vn = icmp ne i8 %i.vm, %sext, !dbg !4228
  %i.vo = add i64 %i.vk, -1, !dbg !4230
  %i.vp = getelementptr inbounds nuw i8, ptr %i.vi, i64 1, !dbg !4234
  store ptr %i.vp, ptr %.promoted.i.i, align 8, !dbg !4236, !alias.scope !4213, !noalias !4221
  store i64 %i.vo, ptr %i.vj, align 8, !dbg !4236, !alias.scope !4213, !noalias !4221
  %i.vq = zext i1 %i.vn to i8, !dbg !4237
  br label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bools0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit34.i.i, !dbg !4238

_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bools0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit34.i.i: ; preds = %bb.be, %.lr.ph48.i.i
  %.sroa.074.12 = phi ptr [ %.sroa.074.11, %.lr.ph48.i.i ], [ %i.vh, %bb.be ], !dbg !3994
  %.promoted3843.i.i = phi ptr [ %.promoted.i.i, %.lr.ph48.i.i ], [ %i.vh, %bb.be ] ; 6 uses
  %.sroa.0.0.i33.i.i = phi i8 [ 2, %.lr.ph48.i.i ], [ %i.vq, %bb.be ], !dbg !4239 ; 2 uses
  %i.vr = icmp ne i8 %.sroa.0.0.i33.i.i, 2, !dbg !4240
  call void @llvm.assume(i1 %i.vr), !dbg !4241
  %i.vs = icmp eq ptr %.promoted3843.i.i, %i.t, !dbg !4089
  br i1 %i.vs, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bools0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit34.1.i.i, label %bb.bf, !dbg !4098

bb.bf:                                            ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bools0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit34.i.i
  %i.vt = getelementptr inbounds nuw i8, ptr %.promoted3843.i.i, i64 16, !dbg !4211 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4242), !dbg !4216
  %i.vu = load ptr, ptr %.promoted3843.i.i, align 8, !dbg !4219, !alias.scope !4242, !noalias !4244, !nonnull !14, !noundef !14 ; 2 uses
  %i.vv = getelementptr inbounds nuw i8, ptr %.promoted3843.i.i, i64 8, !dbg !4219 ; 2 uses
  %i.vw = load i64, ptr %i.vv, align 8, !dbg !4219, !alias.scope !4242, !noalias !4244, !noundef !14 ; 2 uses
  %i.vx = icmp ne i64 %i.vw, 0, !dbg !4224
  call void @llvm.assume(i1 %i.vx), !dbg !4227
  %i.vy = load i8, ptr %i.vu, align 1, !dbg !4228, !noalias !4246, !noundef !14
  %i.vz = icmp ne i8 %i.vy, %sext, !dbg !4228
  %i.wa = add i64 %i.vw, -1, !dbg !4230
  %i.wb = getelementptr inbounds nuw i8, ptr %i.vu, i64 1, !dbg !4234
  store ptr %i.wb, ptr %.promoted3843.i.i, align 8, !dbg !4236, !alias.scope !4242, !noalias !4244
  store i64 %i.wa, ptr %i.vv, align 8, !dbg !4236, !alias.scope !4242, !noalias !4244
  %i.wc = zext i1 %i.vz to i8, !dbg !4237
  br label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bools0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit34.1.i.i, !dbg !4238

_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bools0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit34.1.i.i: ; preds = %bb.bf, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bools0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit34.i.i
  %.sroa.074.13 = phi ptr [ %.sroa.074.12, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bools0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit34.i.i ], [ %i.vt, %bb.bf ], !dbg !3994
  %.promoted3843.1.i.i = phi ptr [ %.promoted3843.i.i, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bools0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit34.i.i ], [ %i.vt, %bb.bf ] ; 6 uses
  %.sroa.0.0.i33.1.i.i = phi i8 [ 2, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bools0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit34.i.i ], [ %i.wc, %bb.bf ], !dbg !4239 ; 2 uses
  %i.wd = icmp ne i8 %.sroa.0.0.i33.1.i.i, 2, !dbg !4240
  call void @llvm.assume(i1 %i.wd), !dbg !4241
  %i.we = shl nuw nsw i8 %.sroa.0.0.i33.1.i.i, 1, !dbg !4247
  %i.wf = icmp eq ptr %.promoted3843.1.i.i, %i.t, !dbg !4089
  br i1 %i.wf, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bools0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit34.2.i.i, label %bb.bg, !dbg !4098

bb.bg:                                            ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bools0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit34.1.i.i
  %i.wg = getelementptr inbounds nuw i8, ptr %.promoted3843.1.i.i, i64 16, !dbg !4211 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4249), !dbg !4216
  %i.wh = load ptr, ptr %.promoted3843.1.i.i, align 8, !dbg !4219, !alias.scope !4249, !noalias !4251, !nonnull !14, !noundef !14 ; 2 uses
  %i.wi = getelementptr inbounds nuw i8, ptr %.promoted3843.1.i.i, i64 8, !dbg !4219 ; 2 uses
  %i.wj = load i64, ptr %i.wi, align 8, !dbg !4219, !alias.scope !4249, !noalias !4251, !noundef !14 ; 2 uses
  %i.wk = icmp ne i64 %i.wj, 0, !dbg !4224
  call void @llvm.assume(i1 %i.wk), !dbg !4227
  %i.wl = load i8, ptr %i.wh, align 1, !dbg !4228, !noalias !4253, !noundef !14
  %i.wm = icmp ne i8 %i.wl, %sext, !dbg !4228
  %i.wn = add i64 %i.wj, -1, !dbg !4230
  %i.wo = getelementptr inbounds nuw i8, ptr %i.wh, i64 1, !dbg !4234
  store ptr %i.wo, ptr %.promoted3843.1.i.i, align 8, !dbg !4236, !alias.scope !4249, !noalias !4251
  store i64 %i.wn, ptr %i.wi, align 8, !dbg !4236, !alias.scope !4249, !noalias !4251
  %i.wp = zext i1 %i.wm to i8, !dbg !4237
  br label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bools0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit34.2.i.i, !dbg !4238

_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bools0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit34.2.i.i: ; preds = %bb.bg, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bools0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit34.1.i.i
  %.sroa.074.14 = phi ptr [ %.sroa.074.13, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bools0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit34.1.i.i ], [ %i.wg, %bb.bg ], !dbg !3994
  %.promoted3843.2.i.i = phi ptr [ %.promoted3843.1.i.i, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bools0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit34.1.i.i ], [ %i.wg, %bb.bg ] ; 6 uses
  %.sroa.0.0.i33.2.i.i = phi i8 [ 2, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bools0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit34.1.i.i ], [ %i.wp, %bb.bg ], !dbg !4239 ; 2 uses
  %i.wq = icmp ne i8 %.sroa.0.0.i33.2.i.i, 2, !dbg !4240
  call void @llvm.assume(i1 %i.wq), !dbg !4241
  %i.wr = shl nuw nsw i8 %.sroa.0.0.i33.2.i.i, 2, !dbg !4247
  %i.ws = or i8 %i.we, %i.wr, !dbg !4247
  %i.wt = icmp eq ptr %.promoted3843.2.i.i, %i.t, !dbg !4089
  br i1 %i.wt, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bools0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit34.3.i.i, label %bb.bh, !dbg !4098

bb.bh:                                            ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bools0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit34.2.i.i
  %i.wu = getelementptr inbounds nuw i8, ptr %.promoted3843.2.i.i, i64 16, !dbg !4211 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4254), !dbg !4216
  %i.wv = load ptr, ptr %.promoted3843.2.i.i, align 8, !dbg !4219, !alias.scope !4254, !noalias !4256, !nonnull !14, !noundef !14 ; 2 uses
  %i.ww = getelementptr inbounds nuw i8, ptr %.promoted3843.2.i.i, i64 8, !dbg !4219 ; 2 uses
  %i.wx = load i64, ptr %i.ww, align 8, !dbg !4219, !alias.scope !4254, !noalias !4256, !noundef !14 ; 2 uses
  %i.wy = icmp ne i64 %i.wx, 0, !dbg !4224
  call void @llvm.assume(i1 %i.wy), !dbg !4227
  %i.wz = load i8, ptr %i.wv, align 1, !dbg !4228, !noalias !4258, !noundef !14
  %i.xa = icmp ne i8 %i.wz, %sext, !dbg !4228
  %i.xb = add i64 %i.wx, -1, !dbg !4230
  %i.xc = getelementptr inbounds nuw i8, ptr %i.wv, i64 1, !dbg !4234
  store ptr %i.xc, ptr %.promoted3843.2.i.i, align 8, !dbg !4236, !alias.scope !4254, !noalias !4256
  store i64 %i.xb, ptr %i.ww, align 8, !dbg !4236, !alias.scope !4254, !noalias !4256
  %i.xd = zext i1 %i.xa to i8, !dbg !4237
  br label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bools0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit34.3.i.i, !dbg !4238

_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bools0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit34.3.i.i: ; preds = %bb.bh, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bools0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit34.2.i.i
  %.sroa.074.15 = phi ptr [ %.sroa.074.14, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bools0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit34.2.i.i ], [ %i.wu, %bb.bh ], !dbg !3994
  %.promoted3843.3.i.i = phi ptr [ %.promoted3843.2.i.i, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bools0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit34.2.i.i ], [ %i.wu, %bb.bh ] ; 6 uses
  %.sroa.0.0.i33.3.i.i = phi i8 [ 2, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bools0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit34.2.i.i ], [ %i.xd, %bb.bh ], !dbg !4239 ; 2 uses
  %i.xe = icmp ne i8 %.sroa.0.0.i33.3.i.i, 2, !dbg !4240
  call void @llvm.assume(i1 %i.xe), !dbg !4241
  %i.xf = shl nuw nsw i8 %.sroa.0.0.i33.3.i.i, 3, !dbg !4247
  %i.xg = or i8 %i.ws, %i.xf, !dbg !4247
  %i.xh = icmp eq ptr %.promoted3843.3.i.i, %i.t, !dbg !4089
  br i1 %i.xh, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bools0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit34.4.i.i, label %bb.bi, !dbg !4098

bb.bi:                                            ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bools0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit34.3.i.i
  %i.xi = getelementptr inbounds nuw i8, ptr %.promoted3843.3.i.i, i64 16, !dbg !4211 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4259), !dbg !4216
  %i.xj = load ptr, ptr %.promoted3843.3.i.i, align 8, !dbg !4219, !alias.scope !4259, !noalias !4261, !nonnull !14, !noundef !14 ; 2 uses
  %i.xk = getelementptr inbounds nuw i8, ptr %.promoted3843.3.i.i, i64 8, !dbg !4219 ; 2 uses
  %i.xl = load i64, ptr %i.xk, align 8, !dbg !4219, !alias.scope !4259, !noalias !4261, !noundef !14 ; 2 uses
  %i.xm = icmp ne i64 %i.xl, 0, !dbg !4224
  call void @llvm.assume(i1 %i.xm), !dbg !4227
  %i.xn = load i8, ptr %i.xj, align 1, !dbg !4228, !noalias !4263, !noundef !14
  %i.xo = icmp ne i8 %i.xn, %sext, !dbg !4228
  %i.xp = add i64 %i.xl, -1, !dbg !4230
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xj, i64 1, !dbg !4234
  store ptr %i.xq, ptr %.promoted3843.3.i.i, align 8, !dbg !4236, !alias.scope !4259, !noalias !4261
  store i64 %i.xp, ptr %i.xk, align 8, !dbg !4236, !alias.scope !4259, !noalias !4261
  %i.xr = zext i1 %i.xo to i8, !dbg !4237
  br label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bools0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit34.4.i.i, !dbg !4238

_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bools0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit34.4.i.i: ; preds = %bb.bi, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bools0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit34.3.i.i
  %.sroa.074.16 = phi ptr [ %.sroa.074.15, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bools0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit34.3.i.i ], [ %i.xi, %bb.bi ], !dbg !3994
  %.promoted3843.4.i.i = phi ptr [ %.promoted3843.3.i.i, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bools0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit34.3.i.i ], [ %i.xi, %bb.bi ] ; 6 uses
  %.sroa.0.0.i33.4.i.i = phi i8 [ 2, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bools0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit34.3.i.i ], [ %i.xr, %bb.bi ], !dbg !4239 ; 2 uses
  %i.xs = icmp ne i8 %.sroa.0.0.i33.4.i.i, 2, !dbg !4240
  call void @llvm.assume(i1 %i.xs), !dbg !4241
  %i.xt = shl nuw nsw i8 %.sroa.0.0.i33.4.i.i, 4, !dbg !4247
  %i.xu = or i8 %i.xg, %i.xt, !dbg !4247
  %i.xv = icmp eq ptr %.promoted3843.4.i.i, %i.t, !dbg !4089
  br i1 %i.xv, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bools0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit34.5.i.i, label %bb.bj, !dbg !4098

bb.bj:                                            ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bools0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit34.4.i.i
  %i.xw = getelementptr inbounds nuw i8, ptr %.promoted3843.4.i.i, i64 16, !dbg !4211 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4264), !dbg !4216
  %i.xx = load ptr, ptr %.promoted3843.4.i.i, align 8, !dbg !4219, !alias.scope !4264, !noalias !4266, !nonnull !14, !noundef !14 ; 2 uses
  %i.xy = getelementptr inbounds nuw i8, ptr %.promoted3843.4.i.i, i64 8, !dbg !4219 ; 2 uses
  %i.xz = load i64, ptr %i.xy, align 8, !dbg !4219, !alias.scope !4264, !noalias !4266, !noundef !14 ; 2 uses
  %i.ya = icmp ne i64 %i.xz, 0, !dbg !4224
  call void @llvm.assume(i1 %i.ya), !dbg !4227
  %i.yb = load i8, ptr %i.xx, align 1, !dbg !4228, !noalias !4268, !noundef !14
  %i.yc = icmp ne i8 %i.yb, %sext, !dbg !4228
  %i.yd = add i64 %i.xz, -1, !dbg !4230
  %i.ye = getelementptr inbounds nuw i8, ptr %i.xx, i64 1, !dbg !4234
  store ptr %i.ye, ptr %.promoted3843.4.i.i, align 8, !dbg !4236, !alias.scope !4264, !noalias !4266
  store i64 %i.yd, ptr %i.xy, align 8, !dbg !4236, !alias.scope !4264, !noalias !4266
  %i.yf = zext i1 %i.yc to i8, !dbg !4237
  br label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bools0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit34.5.i.i, !dbg !4238

_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bools0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit34.5.i.i: ; preds = %bb.bj, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bools0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit34.4.i.i
  %.sroa.074.17 = phi ptr [ %.sroa.074.16, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bools0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit34.4.i.i ], [ %i.xw, %bb.bj ], !dbg !3994
  %.promoted3843.5.i.i = phi ptr [ %.promoted3843.4.i.i, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bools0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit34.4.i.i ], [ %i.xw, %bb.bj ] ; 6 uses
  %.sroa.0.0.i33.5.i.i = phi i8 [ 2, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bools0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit34.4.i.i ], [ %i.yf, %bb.bj ], !dbg !4239 ; 2 uses
  %i.yg = icmp ne i8 %.sroa.0.0.i33.5.i.i, 2, !dbg !4240
  call void @llvm.assume(i1 %i.yg), !dbg !4241
  %i.yh = shl nuw nsw i8 %.sroa.0.0.i33.5.i.i, 5, !dbg !4247
  %i.yi = or i8 %i.xu, %i.yh, !dbg !4247
  %i.yj = icmp eq ptr %.promoted3843.5.i.i, %i.t, !dbg !4089
  br i1 %i.yj, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bools0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit34.6.i.i, label %bb.bk, !dbg !4098

bb.bk:                                            ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bools0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit34.5.i.i
  %i.yk = getelementptr inbounds nuw i8, ptr %.promoted3843.5.i.i, i64 16, !dbg !4211 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4269), !dbg !4216
  %i.yl = load ptr, ptr %.promoted3843.5.i.i, align 8, !dbg !4219, !alias.scope !4269, !noalias !4271, !nonnull !14, !noundef !14 ; 2 uses
  %i.ym = getelementptr inbounds nuw i8, ptr %.promoted3843.5.i.i, i64 8, !dbg !4219 ; 2 uses
  %i.yn = load i64, ptr %i.ym, align 8, !dbg !4219, !alias.scope !4269, !noalias !4271, !noundef !14 ; 2 uses
  %i.yo = icmp ne i64 %i.yn, 0, !dbg !4224
  call void @llvm.assume(i1 %i.yo), !dbg !4227
  %i.yp = load i8, ptr %i.yl, align 1, !dbg !4228, !noalias !4273, !noundef !14
  %i.yq = icmp ne i8 %i.yp, %sext, !dbg !4228
  %i.yr = add i64 %i.yn, -1, !dbg !4230
  %i.ys = getelementptr inbounds nuw i8, ptr %i.yl, i64 1, !dbg !4234
  store ptr %i.ys, ptr %.promoted3843.5.i.i, align 8, !dbg !4236, !alias.scope !4269, !noalias !4271
  store i64 %i.yr, ptr %i.ym, align 8, !dbg !4236, !alias.scope !4269, !noalias !4271
  %i.yt = zext i1 %i.yq to i8, !dbg !4237
  br label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bools0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit34.6.i.i, !dbg !4238

_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bools0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit34.6.i.i: ; preds = %bb.bk, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bools0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit34.5.i.i
  %.sroa.074.18 = phi ptr [ %.sroa.074.17, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bools0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit34.5.i.i ], [ %i.yk, %bb.bk ], !dbg !3994
  %.promoted3843.6.i.i = phi ptr [ %.promoted3843.5.i.i, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bools0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit34.5.i.i ], [ %i.yk, %bb.bk ] ; 6 uses
  %.sroa.0.0.i33.6.i.i = phi i8 [ 2, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bools0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit34.5.i.i ], [ %i.yt, %bb.bk ], !dbg !4239 ; 2 uses
  %i.yu = icmp ne i8 %.sroa.0.0.i33.6.i.i, 2, !dbg !4240
  call void @llvm.assume(i1 %i.yu), !dbg !4241
  %i.yv = shl nuw nsw i8 %.sroa.0.0.i33.6.i.i, 6, !dbg !4247
  %i.yw = or i8 %i.yi, %i.yv, !dbg !4247
  %i.yx = icmp eq ptr %.promoted3843.6.i.i, %i.t, !dbg !4089
  br i1 %i.yx, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bools0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit34.7.i.i, label %bb.bl, !dbg !4098

bb.bl:                                            ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bools0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit34.6.i.i
  %i.yy = getelementptr inbounds nuw i8, ptr %.promoted3843.6.i.i, i64 16, !dbg !4211 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4274), !dbg !4216
  %i.yz = load ptr, ptr %.promoted3843.6.i.i, align 8, !dbg !4219, !alias.scope !4274, !noalias !4276, !nonnull !14, !noundef !14 ; 2 uses
  %i.za = getelementptr inbounds nuw i8, ptr %.promoted3843.6.i.i, i64 8, !dbg !4219 ; 2 uses
  %i.zb = load i64, ptr %i.za, align 8, !dbg !4219, !alias.scope !4274, !noalias !4276, !noundef !14 ; 2 uses
  %i.zc = icmp ne i64 %i.zb, 0, !dbg !4224
  call void @llvm.assume(i1 %i.zc), !dbg !4227
  %i.zd = load i8, ptr %i.yz, align 1, !dbg !4228, !noalias !4278, !noundef !14
  %i.ze = icmp ne i8 %i.zd, %sext, !dbg !4228
  %i.zf = add i64 %i.zb, -1, !dbg !4230
  %i.zg = getelementptr inbounds nuw i8, ptr %i.yz, i64 1, !dbg !4234
  store ptr %i.zg, ptr %.promoted3843.6.i.i, align 8, !dbg !4236, !alias.scope !4274, !noalias !4276
  store i64 %i.zf, ptr %i.za, align 8, !dbg !4236, !alias.scope !4274, !noalias !4276
  %i.zh = zext i1 %i.ze to i8, !dbg !4237
  br label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bools0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit34.7.i.i, !dbg !4238

_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bools0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit34.7.i.i: ; preds = %bb.bl, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bools0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit34.6.i.i
  %.sroa.074.19 = phi ptr [ %.sroa.074.18, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bools0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit34.6.i.i ], [ %i.yy, %bb.bl ], !dbg !3994 ; 2 uses
  %.promoted3843.7.i.i = phi ptr [ %.promoted3843.6.i.i, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bools0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit34.6.i.i ], [ %i.yy, %bb.bl ]
  %.sroa.0.0.i33.7.i.i = phi i8 [ 2, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bools0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit34.6.i.i ], [ %i.zh, %bb.bl ], !dbg !4239 ; 2 uses
  %i.zi = icmp ne i8 %.sroa.0.0.i33.7.i.i, 2, !dbg !4240
  call void @llvm.assume(i1 %i.zi), !dbg !4241
  %i.zj = shl nuw i8 %.sroa.0.0.i33.7.i.i, 7, !dbg !4247
  %i.zk = or disjoint i8 %i.zj, %i.yw, !dbg !4247
  %.sroa.010.0.7.i.i54 = or i8 %i.zk, %.sroa.0.0.i33.i.i, !dbg !4247
  %i.zl = add nuw nsw i64 %.sroa.022.041.i.i, 1, !dbg !4279 ; 2 uses
  %i.zm = load i64, ptr %i.ly, align 8, !dbg !4285, !alias.scope !4200, !noalias !4071, !noundef !14 ; 3 uses
  %i.zn = load i64, ptr %i.a, align 8, !dbg !4286, !range !1010, !alias.scope !4200, !noalias !4071, !noundef !14
  %i.zo = icmp eq i64 %i.zm, %i.zn, !dbg !4289
  br i1 %i.zo, label %bb.bd, label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCs4PheDXcg4wa_10polars_row.exit31.i.i55, !dbg !4289

.loopexit.i63:                                    ; preds = %bb.bd
  %lpad.loopexit.i64 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i13

.loopexit.split-lp.loopexit.i48:                  ; preds = %_RINvNtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutable19get_chunk_uncheckedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1h_5slice4iter7IterMutRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bools0_0EEB2C_.exit.i.i
  %lpad.loopexit5.i49 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i13

.loopexit.split-lp.loopexit.split-lp.i11:         ; preds = %bb.av, %bb.ak
  %lpad.loopexit.split-lp6.i12 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i13

.loopexit.split-lp.i13:                           ; preds = %.loopexit.split-lp.loopexit.split-lp.i11, %.loopexit.split-lp.loopexit.i48, %.loopexit.i63
  %lpad.phi.i14 = phi { ptr, i32 } [ %lpad.loopexit.i64, %.loopexit.i63 ], [ %lpad.loopexit5.i49, %.loopexit.split-lp.loopexit.i48 ], [ %lpad.loopexit.split-lp6.i12, %.loopexit.split-lp.loopexit.split-lp.i11 ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECs4PheDXcg4wa_10polars_row(ptr noalias noundef align 8 dereferenceable(24) %i.a) #27
          to label %.body.thread unwind label %bb.bm, !dbg !4290, !noalias !3892

bb.bm:                                            ; preds = %.loopexit.split-lp.i13
  %i.zp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #28, !dbg !4291, !noalias !3892
  unreachable, !dbg !4291

.body:                                            ; preds = %bb.bo
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread, !dbg !4292

_RINvXs2R_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_7IterMutRShENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bools_0EB1T_.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !dbg !4293
  store i8 1, ptr %i.p, align 8, !dbg !4293
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !4294
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.o, ptr noundef nonnull align 8 dereferenceable(32) %i.q, i64 32, i1 false), !dbg !4294
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !4295
  store ptr null, ptr %i.n, align 8, !dbg !4295
  call void @_RNvMNtNtCs8774dFTUdNv_12polars_arrow5array7booleanNtB2_12BooleanArray3new(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.p, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.o, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.n), !dbg !4296
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !4297
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !4297
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !4297
  br label %bb.bn, !dbg !4298

bb.bn:                                            ; preds = %bb.bu, %_RINvXs2R_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_7IterMutRShENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11decode_bools_0EB1T_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !4292
  ret void, !dbg !4298

bb.bo:                                            ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCs4PheDXcg4wa_10polars_row.exit.i.i62, %._crit_edge.i.i56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !4299
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !dbg !4304
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !4290, !noalias !3892
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !4306
  invoke fastcc void @_RNvMs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB4_6Bitmap7try_new(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.h, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.g, i64 noundef %2)
          to label %bb.bp unwind label %.body, !dbg !4306

bb.bp:                                            ; preds = %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !4307
  call void @llvm.experimental.noalias.scope.decl(metadata !4308), !dbg !4311
  %i.zq = load i64, ptr %i.h, align 8, !dbg !4312, !range !3411, !alias.scope !4308, !noalias !4314, !noundef !14
  %.not.i = icmp eq i64 %i.zq, 18, !dbg !4312
  br i1 %.not.i, label %bb.bu, label %bb.bq, !dbg !4316, !prof !663

bb.bq:                                            ; preds = %bb.bp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !4317, !noalias !4318
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.f, ptr noundef nonnull readonly align 8 dereferenceable(72) %i.h, i64 72, i1 false), !dbg !4317, !noalias !4314
  invoke void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 43, ptr noundef nonnull %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @9, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #24
          to label %bb.bs unwind label %bb.br, !dbg !4319, !noalias !4318

bb.br:                                            ; preds = %bb.bq
  %i.zr = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.f) #27
          to label %.body.thread unwind label %bb.bt, !dbg !4320, !noalias !4318

bb.bs:                                            ; preds = %bb.bq
  unreachable

bb.bt:                                            ; preds = %bb.br
  %i.zs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #28, !dbg !4321, !noalias !4318
  unreachable, !dbg !4321

bb.bu:                                            ; preds = %bb.bp
  %i.zt = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !4322
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !4323
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.zt, i64 32, i1 false), !dbg !4322
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !4325
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !4326
  store i8 1, ptr %i.m, align 8, !dbg !4326
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !4327
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %i.q, i64 32, i1 false), !dbg !4327
  call void @_RNvMNtNtCs8774dFTUdNv_12polars_arrow5array7booleanNtB2_12BooleanArray3new(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.m, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.l, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.k), !dbg !4328
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !4329
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !4329
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !4329
  br label %bb.bn, !dbg !4298

.body.thread:                                     ; preds = %bb.br, %.loopexit.split-lp.i13, %.body
  %eh.lpad-body149 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %.body ], [ %lpad.phi.i14, %.loopexit.split-lp.i13 ], [ %i.zr, %bb.br ]
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.q)
          to label %common.resume unwind label %bb.bv, !dbg !4330

bb.bv:                                            ; preds = %.body.thread
  %i.zu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #28, !dbg !4335
  unreachable, !dbg !4335
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal fastcc noundef float @_RNvNtNtNtCshdiYQzaKNQ1_4half8binary164arch3x8619f16_to_f32_x86_f16c(i16 noundef %0) unnamed_addr #3 !dbg !4336 {
bb.a:
  %i.a = bitcast i16 %0 to half, !dbg !4342
  %.sroa.04.0.vec.extract = fpext half %i.a to float, !dbg !4342
  ret float %.sroa.04.0.vec.extract, !dbg !4354
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal fastcc noundef i16 @_RNvNtNtNtCshdiYQzaKNQ1_4half8binary164arch3x8619f32_to_f16_x86_f16c(float noundef %0) unnamed_addr #3 !dbg !4355 {
bb.a:
  %.sroa.0.12.vec.insert = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %0, i64 0, !dbg !4356
  %i.a = tail call <8 x i16> @llvm.x86.vcvtps2ph.128(<4 x float> %.sroa.0.12.vec.insert, i32 0), !dbg !4357
  %.sroa.02.0.vec.extract = extractelement <8 x i16> %i.a, i64 0, !dbg !4366
  ret i16 %.sroa.02.0.vec.extract, !dbg !4373
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtCsh8eZTKRCwoO_3std4sync9lazy_lockINtB5_8LazyLockNtNtB9_9backtrace7CaptureNCNvNtBX_6helper12lazy_resolve0ENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs4PheDXcg4wa_10polars_row(ptr noalias noundef align 8 dereferenceable(40) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !4374 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !4378
  %i.b = load i32, ptr %i.a, align 8, !dbg !4396, !noundef !14
  switch i32 %i.b, label %bb.b [
    i32 3, label %bb.c
    i32 2, label %bb.i
    i32 0, label %bb.f
  ], !dbg !4396, !prof !4397

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @22, ptr noundef nonnull inttoptr (i64 121 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #30, !dbg !4398
  unreachable, !dbg !4398

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCsh8eZTKRCwoO_3std9backtrace14BacktraceFrameENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull align 8 dereferenceable(32) %0)
          to label %.sink.split unwind label %bb.d, !dbg !4399

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtCsh8eZTKRCwoO_3std9backtrace14BacktraceFrameENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull align 8 dereferenceable(32) %0)
          to label %common.resume unwind label %bb.e, !dbg !4411

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #28, !dbg !4399
  unreachable, !dbg !4399

common.resume:                                    ; preds = %bb.g, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.c, %bb.d ], [ %i.e, %bb.g ]
  resume { ptr, i32 } %common.resume.op, !dbg !4414

bb.f:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCsh8eZTKRCwoO_3std9backtrace14BacktraceFrameENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull align 8 dereferenceable(32) %0)
          to label %.sink.split unwind label %bb.g, !dbg !4415

bb.g:                                             ; preds = %bb.f
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtCsh8eZTKRCwoO_3std9backtrace14BacktraceFrameENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull align 8 dereferenceable(32) %0)
          to label %common.resume unwind label %bb.h, !dbg !4420

bb.h:                                             ; preds = %bb.g
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #28, !dbg !4415
  unreachable, !dbg !4415

.sink.split:                                      ; preds = %bb.f, %bb.c
  tail call void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtCsh8eZTKRCwoO_3std9backtrace14BacktraceFrameENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull align 8 dereferenceable(32) %0), !dbg !4414
  br label %bb.i, !dbg !4422

bb.i:                                             ; preds = %.sink.split, %bb.a
  ret void, !dbg !4422
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs3_NtCs2mZqlW55729_12polars_utils7aliasesINtNtCs7tGzs63DEEy_9hashbrown3map7HashMapjmNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateENtB5_12InitHashMaps3newCs4PheDXcg4wa_10polars_row(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !4423 {
bb.a:
  %i.a = tail call noundef i64 @_RNvNtCsk79RHlfmHDk_8foldhash4seed19gen_per_hasher_seed(), !dbg !4427
  %i.b = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCsk79RHlfmHDk_8foldhash4seed6global19GLOBAL_SEED_STORAGE, i64 48) acquire, align 8, !dbg !4436
  %i.c = icmp eq i8 %i.b, 2, !dbg !4446
  br i1 %i.c, label %bb.c, label %bb.b, !dbg !4446, !prof !663

end_hunk_0
