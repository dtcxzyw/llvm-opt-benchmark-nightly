Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/shadowsocks-rs/original/ssservice.ssservice.c5eed45f505fd4ef-cgu.0?download=true
inline.NumInlined: 40157
inline.NumDeleted: 17541
loop-unroll.NumCompletelyUnrolled: 94
loop-unroll.NumRuntimeUnrolled: 164
loop-unroll.NumUnrolled: 272
begin_hunk_0_@_RNCINvNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13online_config16content_encoding9read_bodyINtNtCs7ewmRfXve8r_4http8response8ResponseNtNtNtCsaI3lGUjttVO_5hyper4body8incoming8IncomingEE0CsgZAIVb0XKpv_9ssservice:bb.a
  %.val.i.i.i.i.i = load ptr, ptr %.sroa.26.0..sroa_idx.i.i.i.i, align 8, !alias.scope !45209, !noalias !45210, !nonnull !178, !noundef !178 ; 2 uses
  %i.acy = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 %i.acw
  %i.acz = icmp samesign eq i64 %i.acu, %i.acw
  br i1 %i.acz, label %.backedge.i.i.i.i, label %.lr.ph.i154.i.i.i.i

.lr.ph.i154.i.i.i.i:                              ; preds = %bb.er
  %i.ada = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 %i.acu
  %.promoted.i155.i.i.i.i = load i32, ptr %.sroa.30.0..sroa_idx.i.i.i.i, align 8, !alias.scope !45211, !noalias !45212
  %.promoted19.i.i.i.i.i = load i64, ptr %i.ni, align 8, !alias.scope !45209, !noalias !45210
  %.promoted20.i.i.i.i.i = load i32, ptr %.sroa.33.0..sroa_idx.i.i.i.i, align 8, !alias.scope !45209, !noalias !45210
  %.promoted23.i.i.i.i.i = load i32, ptr %.sroa.32.0..sroa_idx.i.i.i.i, align 4, !alias.scope !45209, !noalias !45210
  br label %bb.et

bb.es:                                            ; preds = %bb.eq
  call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %i.acu, i64 noundef %i.acw, i64 noundef %.val7.i.i.i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @373) #63, !noalias !45213
  unreachable

bb.et:                                            ; preds = %.loopexit.i.i.i.i.i, %.lr.ph.i154.i.i.i.i
  %.promoted18.i25.i.i.i.i.i = phi i32 [ %.promoted23.i.i.i.i.i, %.lr.ph.i154.i.i.i.i ], [ %.promoted18.i24.i.i.i.i.i, %.loopexit.i.i.i.i.i ] ; 4 uses
  %.promoted17.i22.i.i.i.i.i = phi i32 [ %.promoted20.i.i.i.i.i, %.lr.ph.i154.i.i.i.i ], [ %.promoted17.i21.i.i.i.i.i, %.loopexit.i.i.i.i.i ] ; 3 uses
  %i.adb = phi i64 [ %.promoted19.i.i.i.i.i, %.lr.ph.i154.i.i.i.i ], [ %i.adl, %.loopexit.i.i.i.i.i ] ; 2 uses
  %.promoted.i18.i.i.i.i.i = phi i32 [ %.promoted.i155.i.i.i.i, %.lr.ph.i154.i.i.i.i ], [ %i.adr, %.loopexit.i.i.i.i.i ] ; 3 uses
  %.sroa.01.017.i.i.i.i.i = phi i32 [ %i.act, %.lr.ph.i154.i.i.i.i ], [ %i.adt, %.loopexit.i.i.i.i.i ] ; 2 uses
  %.sroa.04.016.i.i.i.i.i = phi ptr [ %i.ada, %.lr.ph.i154.i.i.i.i ], [ %i.ads, %.loopexit.i.i.i.i.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !45214)
  call void @llvm.experimental.noalias.scope.decl(metadata !45215)
  %i.adc = add i32 %.promoted.i18.i.i.i.i.i, -63
  %.not.i.i.i.i.i.i = icmp ult i32 %i.adc, 2
  br i1 %.not.i.i.i.i.i.i, label %.lr.ph.i.preheader.i.i.i.i.i, label %.loopexit.i.i.i.i.i

.lr.ph.i.preheader.i.i.i.i.i:                     ; preds = %bb.et
  %i.add = zext i32 %.promoted18.i25.i.i.i.i.i to i64 ; 2 uses
  %i.ade = icmp eq i32 %.promoted17.i22.i.i.i.i.i, 0
  br i1 %i.ade, label %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode16ReadContextModesNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB12_B12_ECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i, label %bb.eu

bb.eu:                                            ; preds = %.lr.ph.i.preheader.i.i.i.i.i
  %exitcond.not.not.i.i.i.i.i = icmp ult i32 %.promoted18.i25.i.i.i.i.i, %i.pp
  br i1 %exitcond.not.not.i.i.i.i.i, label %.loopexit.loopexit.i.i.i.i.i, label %bb.ev

.loopexit.loopexit.i.i.i.i.i:                     ; preds = %bb.eu
  %i.adf = getelementptr inbounds nuw i8, ptr %.sroa.029.1.i.i.i.i, i64 %i.add
  %i.adg = load i8, ptr %i.adf, align 1, !alias.scope !45216, !noalias !45217, !noundef !178
  %i.adh = zext i8 %i.adg to i64
  %i.adi = call i64 @llvm.fshl.i64(i64 %i.adh, i64 %i.adb, i64 56) ; 2 uses
  store i64 %i.adi, ptr %i.ni, align 8, !alias.scope !45211, !noalias !45212
  %i.adj = add nsw i32 %.promoted.i18.i.i.i.i.i, -8
  %i.adk = add i32 %.promoted17.i22.i.i.i.i.i, -1 ; 2 uses
  store i32 %i.adk, ptr %.sroa.33.0..sroa_idx.i.i.i.i, align 8, !alias.scope !45211, !noalias !45212
  %indvars.iv.next.i.i.i.i.i = add nuw nsw i32 %.promoted18.i25.i.i.i.i.i, 1 ; 2 uses
  store i32 %indvars.iv.next.i.i.i.i.i, ptr %.sroa.32.0..sroa_idx.i.i.i.i, align 4, !alias.scope !45211, !noalias !45212
  br label %.loopexit.i.i.i.i.i

bb.ev:                                            ; preds = %bb.eu
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.add, i64 noundef range(i64 8, 4097) %.sroa.21.1.i.i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @385) #63, !noalias !45218
  unreachable

.loopexit.i.i.i.i.i:                              ; preds = %.loopexit.loopexit.i.i.i.i.i, %bb.et
  %.promoted18.i24.i.i.i.i.i = phi i32 [ %.promoted18.i25.i.i.i.i.i, %bb.et ], [ %indvars.iv.next.i.i.i.i.i, %.loopexit.loopexit.i.i.i.i.i ]
  %.promoted17.i21.i.i.i.i.i = phi i32 [ %.promoted17.i22.i.i.i.i.i, %bb.et ], [ %i.adk, %.loopexit.loopexit.i.i.i.i.i ]
  %i.adl = phi i64 [ %i.adb, %bb.et ], [ %i.adi, %.loopexit.loopexit.i.i.i.i.i ] ; 2 uses
  %.lcssa7.i.i.i.i.i.i = phi i32 [ %.promoted.i18.i.i.i.i.i, %bb.et ], [ %i.adj, %.loopexit.loopexit.i.i.i.i.i ] ; 2 uses
  %i.adm = and i32 %.lcssa7.i.i.i.i.i.i, 63
  %i.adn = zext nneg i32 %i.adm to i64
  %i.ado = lshr i64 %i.adl, %i.adn
  %i.adp = trunc i64 %i.ado to i8
  %i.adq = and i8 %i.adp, 3
  %i.adr = add i32 %.lcssa7.i.i.i.i.i.i, 2        ; 2 uses
  store i32 %i.adr, ptr %.sroa.30.0..sroa_idx.i.i.i.i, align 8, !alias.scope !45211, !noalias !45212
  %i.ads = getelementptr inbounds nuw i8, ptr %.sroa.04.016.i.i.i.i.i, i64 1 ; 2 uses
  store i8 %i.adq, ptr %.sroa.04.016.i.i.i.i.i, align 1, !noalias !45213
  %i.adt = add i32 %.sroa.01.017.i.i.i.i.i, 1
  %i.adu = icmp eq ptr %i.ads, %i.acy
  br i1 %i.adu, label %.backedge.i.i.i.i, label %bb.et

_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode16ReadContextModesNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB12_B12_ECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i: ; preds = %.lr.ph.i.preheader.i.i.i.i.i
  store i32 %.sroa.01.017.i.i.i.i.i, ptr %.sroa.7254.0..sroa_idx.i.i.i.i, align 8, !alias.scope !45209, !noalias !45210
  br label %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit.i.i.i.i.backedge

bb.ew:                                            ; preds = %bb.cw, %bb.cw, %bb.cw, %bb.cw
  %i.adv = call fastcc noundef i32 @_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode23ProcessCommandsInternalNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB19_B19_ECsgZAIVb0XKpv_9ssservice(i1 noundef zeroext false, ptr noalias nofree noundef nonnull align 8 dereferenceable(2600) %i.r, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.029.1.i.i.i.i, i64 noundef %.sroa.21.1.i.i.i.i) #53, !noalias !45109 ; 2 uses
  %i.adw = icmp eq i32 %i.adv, 2
  br i1 %i.adw, label %bb.iy, label %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit.i.i.i.i.backedge

bb.ex:                                            ; preds = %bb.cw
  call void @llvm.experimental.noalias.scope.decl(metadata !45219)
  call void @llvm.experimental.noalias.scope.decl(metadata !45220)
  %.pre.i84.i.i.i = load i8, ptr %.sroa.125.0..sroa_idx.i.i.i.i, align 8, !range !181, !alias.scope !45219, !noalias !45221
  %i.adx = load i32, ptr %i.nw, align 8, !noalias !45083
  %.fr = freeze i32 %i.adx                        ; 3 uses
  %.val12.i.i.i.i = load i64, ptr %.sroa.13.0..sroa_idx.i.i.i.i, align 8, !noalias !45083 ; 4 uses
  %.val.i86.i.i.i = load ptr, ptr %.sroa.12.0..sroa_idx.i.i.i.i, align 8, !noalias !45083, !nonnull !178
  %i.ady = load i64, ptr %i.ni, align 8, !noalias !45083 ; 2 uses
  %i.adz = load i32, ptr %.sroa.102.0..sroa_idx.i.i.i.i, align 8, !noalias !45083
  %i.aea = and i32 %i.adz, 31
  %i.aeb = shl nuw i32 1, %i.aea                  ; 2 uses
  %i.aec = load i32, ptr %i.nt, align 4, !noalias !45083
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %i.ady, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %bb.ey

bb.ey:                                            ; preds = %.backedge.i89.i.i.i, %bb.ex
  %.sroa.017.4.i.i.i = phi i64 [ %.sroa.017.2.i.i.i, %bb.ex ], [ %.sroa.017.6.i.i.i, %.backedge.i89.i.i.i ] ; 7 uses
  %.sroa.06.3.i.i.i = phi i64 [ %.sroa.06.1.i.i.i, %bb.ex ], [ %.sroa.06.5.i.i.i, %.backedge.i89.i.i.i ] ; 7 uses
  %i.aed = phi i8 [ %.pre.i84.i.i.i, %bb.ex ], [ %storemerge.i90.i.i.i, %.backedge.i89.i.i.i ]
  %i.aee = trunc nuw i8 %i.aed to i1
  br i1 %i.aee, label %bb.ez, label %bb.fi

bb.ez:                                            ; preds = %bb.ey
  call void @llvm.experimental.noalias.scope.decl(metadata !45222)
  %i.aef = load i32, ptr %i.oa, align 8, !alias.scope !45222, !noalias !45223, !noundef !178 ; 4 uses
  %i.aeg = load i32, ptr %i.nw, align 8, !alias.scope !45222, !noalias !45223, !noundef !178 ; 8 uses
  %..i110.i.i.i = call i32 @llvm.smin.i32(i32 %i.aef, i32 %i.aeg)
  %.sroa.010.0.i111.i.i.i = sext i32 %..i110.i.i.i to i64
  %i.aeh = load i64, ptr %i.ob, align 8, !alias.scope !45222, !noalias !45223, !noundef !178 ; 2 uses
  %i.aei = sext i32 %i.aeg to i64
  %i.aej = mul i64 %i.aeh, %i.aei
  %i.aek = add i64 %i.aej, %.sroa.010.0.i111.i.i.i
  %i.ael = load i64, ptr %i.oc, align 8, !alias.scope !45222, !noalias !45223, !noundef !178 ; 3 uses
  %i.aem = sub i64 %i.aek, %i.ael                 ; 2 uses
  %spec.store.select.i112.i.i.i = call i64 @llvm.umin.i64(i64 %.sroa.06.3.i.i.i, i64 %i.aem) ; 5 uses
  %i.aen = load i32, ptr %i.nm, align 8, !alias.scope !45222, !noalias !45223, !noundef !178
  %i.aeo = icmp slt i32 %i.aen, 0
  br i1 %i.aeo, label %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit.i.i.i.i.backedge, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.aep = load i32, ptr %i.od, align 4, !alias.scope !45222, !noalias !45223, !noundef !178
  %i.aeq = sext i32 %i.aep to i64
  %i.aer = and i64 %i.ael, %i.aeq                 ; 4 uses
  %.val20.i113.i.i.i = load i64, ptr %.sroa.13.0..sroa_idx.i.i.i.i, align 8, !alias.scope !45222, !noalias !45223, !noundef !178 ; 2 uses
  %i.aes = add i64 %i.aer, %spec.store.select.i112.i.i.i ; 3 uses
  %i.aet = icmp ult i64 %i.aes, %i.aer
  %.not.i114.i.i.i = icmp ugt i64 %i.aes, %.val20.i113.i.i.i
  %or.cond.i115.i.i.i = or i1 %i.aet, %.not.i114.i.i.i
  br i1 %or.cond.i115.i.i.i, label %bb.fc, label %bb.fb, !prof !207

bb.fb:                                            ; preds = %bb.fa
  %i.aeu = add nuw nsw i64 %spec.store.select.i112.i.i.i, %.sroa.017.4.i.i.i ; 5 uses
  %i.aev = icmp ult i64 %i.aeu, 4097
  br i1 %i.aev, label %bb.fd, label %bb.fe, !prof !201

bb.fc:                                            ; preds = %bb.fa
  call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %i.aer, i64 noundef %i.aes, i64 noundef %.val20.i113.i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @369) #63, !noalias !45224
  unreachable

bb.fd:                                            ; preds = %bb.fb
  %.val.i116.i.i.i = load ptr, ptr %.sroa.12.0..sroa_idx.i.i.i.i, align 8, !alias.scope !45222, !noalias !45223, !nonnull !178, !noundef !178
  %i.aew = getelementptr inbounds nuw i8, ptr %.val.i116.i.i.i, i64 %i.aer
  %i.aex = getelementptr inbounds nuw i8, ptr %i.s, i64 %.sroa.017.4.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aex, ptr nonnull readonly align 1 %i.aew, i64 range(i64 0, -9223372036854775808) %spec.store.select.i112.i.i.i, i1 false), !alias.scope !45225, !noalias !45226
  %i.aey = sub nuw nsw i64 %.sroa.06.3.i.i.i, %spec.store.select.i112.i.i.i ; 3 uses
  %i.aez = add i64 %spec.store.select.i112.i.i.i, %i.ael
  store i64 %i.aez, ptr %i.oc, align 8, !alias.scope !45222, !noalias !45223
  %i.afa = icmp ult i64 %.sroa.06.3.i.i.i, %i.aem
  %i.afb = load i32, ptr %.sroa.102.0..sroa_idx.i.i.i.i, align 8, !alias.scope !45222, !noalias !45223, !noundef !178
  %i.afc = and i32 %i.afb, 31
  %i.afd = shl nuw i32 1, %i.afc                  ; 2 uses
  br i1 %i.afa, label %bb.fg, label %bb.ff

bb.fe:                                            ; preds = %bb.fb
  call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %.sroa.017.4.i.i.i, i64 noundef %i.aeu, i64 noundef 4096, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @368) #63, !noalias !45224
  unreachable

bb.ff:                                            ; preds = %bb.fd
  %i.afe = icmp ne i32 %i.aeg, %i.afd
  %.not18.i118.i.i.i = icmp slt i32 %i.aef, %i.aeg
  %or.cond21.i119.i.i.i = or i1 %.not18.i118.i.i.i, %i.afe
  br i1 %or.cond21.i119.i.i.i, label %bb.fs, label %bb.fh

bb.fg:                                            ; preds = %bb.fd
  %i.aff = icmp eq i32 %i.aeg, %i.afd
  br i1 %i.aff, label %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit.i.i.i.i.backedge, label %bb.fs

bb.fh:                                            ; preds = %bb.ff
  %i.afg = sub i32 %i.aef, %i.aeg
  store i32 %i.afg, ptr %i.oa, align 8, !alias.scope !45222, !noalias !45223
  %i.afh = add i64 %i.aeh, 1
  store i64 %i.afh, ptr %i.ob, align 8, !alias.scope !45222, !noalias !45223
  %i.afi = icmp ne i32 %i.aef, %i.aeg
  %i.afj = zext i1 %i.afi to i8
  store i8 %i.afj, ptr %.sroa.122.0..sroa_idx.i.i.i.i, align 1, !alias.scope !45222, !noalias !45223
  br label %bb.fs

bb.fi:                                            ; preds = %bb.ey
  %i.afk = load i32, ptr %.sroa.33.0..sroa_idx.i.i.i.i, align 8, !alias.scope !45219, !noalias !45221, !noundef !178 ; 2 uses
  %i.afl = load i32, ptr %.sroa.30.0..sroa_idx.i.i.i.i, align 8, !alias.scope !45219, !noalias !45221, !noundef !178 ; 6 uses
  %i.afm = sub i32 64, %i.afl
  %i.afn = lshr i32 %i.afm, 3
  %i.afo = add i32 %i.afn, %i.afk
  %i.afp = load i32, ptr %i.nm, align 8, !alias.scope !45219, !noalias !45221, !noundef !178 ; 3 uses
  %spec.select.i85.i.i.i = call i32 @llvm.smin.i32(i32 %i.afo, i32 %i.afp) ; 2 uses
  %i.afq = load i32, ptr %i.oa, align 8, !alias.scope !45219, !noalias !45221, !noundef !178 ; 5 uses
  %i.afr = add i32 %spec.select.i85.i.i.i, %i.afq ; 2 uses
  %i.afs = icmp sgt i32 %i.afr, %.fr
  %i.aft = sub i32 %.fr, %i.afq
  %.sroa.02.1.i.i.i.i = select i1 %i.afs, i32 %i.aft, i32 %spec.select.i85.i.i.i ; 7 uses
  %i.afu = sext i32 %i.afq to i64                 ; 4 uses
  %i.afv = icmp ult i64 %.val12.i.i.i.i, %i.afu
  br i1 %i.afv, label %bb.fq, label %bb.fj, !prof !187

bb.fj:                                            ; preds = %bb.fi
  %i.afw = sub nuw i64 %.val12.i.i.i.i, %i.afu    ; 6 uses
  %i.afx = getelementptr inbounds nuw i8, ptr %.val.i86.i.i.i, i64 %i.afu ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !45227), !noalias !45228
  call void @llvm.experimental.noalias.scope.decl(metadata !45229), !noalias !45228
  call void @llvm.experimental.noalias.scope.decl(metadata !45230), !noalias !45228
  %notsub24.i.i.i.i.i = add i32 %i.afl, -65
  %i.afy = icmp ult i32 %notsub24.i.i.i.i.i, -8
  %i.afz = icmp ne i32 %.sroa.02.1.i.i.i.i, 0
  %or.cond25.i.i.i.i.i = and i1 %i.afy, %i.afz
  br i1 %or.cond25.i.i.i.i.i, label %.lr.ph.i.i94.i.i.i.preheader, label %.preheader.i.i.i.i.i

.lr.ph.i.i94.i.i.i.preheader:                     ; preds = %bb.fj
  %i.aga = call i32 @llvm.smin.i32(i32 %.fr, i32 %i.afr)
  %i.agb = xor i32 %i.afq, -1
  %i.agc = add i32 %i.aga, %i.agb
  %i.agd = zext i32 %i.agc to i64
  %i.age = sub i32 56, %i.afl
  %i.agf = lshr i32 %i.age, 3
  %i.agg = zext nneg i32 %i.agf to i64
  %i.agh = call i64 @llvm.umin.i64(i64 %i.agg, i64 %i.afw)
  %i.agi = call i64 @llvm.umin.i64(i64 %i.agd, i64 %i.agh) ; 2 uses
  %min.iters.check4312 = icmp samesign ult i64 %i.agi, 4
  br i1 %min.iters.check4312, label %.lr.ph.i.i94.i.i.i.preheader4408, label %vector.ph4313

vector.ph4313:                                    ; preds = %.lr.ph.i.i94.i.i.i.preheader
  %i.agj = add nuw nsw i64 %i.agi, 1              ; 2 uses
  %i.agk = and i64 %i.agj, 3                      ; 2 uses
  %i.agl = icmp eq i64 %i.agk, 0
  %i.agm = select i1 %i.agl, i64 4, i64 %i.agk
  %n.vec4314 = sub nsw i64 %i.agj, %i.agm         ; 3 uses
  %i.agn = trunc nsw i64 %n.vec4314 to i32        ; 2 uses
  %i.ago = sub i32 %.sroa.02.1.i.i.i.i, %i.agn
  %i.agp = shl i32 %i.agn, 3
  %i.agq = add i32 %i.afl, %i.agp
  %broadcast.splatinsert4315 = insertelement <4 x i32> poison, i32 %i.afl, i64 0
  %broadcast.splat4316 = shufflevector <4 x i32> %broadcast.splatinsert4315, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction = add <4 x i32> %broadcast.splat4316, <i32 0, i32 8, i32 16, i32 24>
  br label %vector.body4317

vector.body4317:                                  ; preds = %vector.body4317, %vector.ph4313
  %index4318 = phi i64 [ 0, %vector.ph4313 ], [ %index.next4319, %vector.body4317 ] ; 2 uses
  %vec.ind = phi <4 x i32> [ %induction, %vector.ph4313 ], [ %vec.ind.next, %vector.body4317 ] ; 3 uses
  %i.agr = and <4 x i32> %vec.ind, splat (i32 63)
  %i.ags = zext nneg <4 x i32> %i.agr to <4 x i64>
  %i.agt = lshr <4 x i64> %broadcast.splat, %i.ags
  %i.agu = getelementptr inbounds nuw i8, ptr %i.afx, i64 %index4318
  %i.agv = trunc <4 x i64> %i.agt to <4 x i8>
  store <4 x i8> %i.agv, ptr %i.agu, align 1, !alias.scope !45227, !noalias !45231
  %index.next4319 = add nuw i64 %index4318, 4     ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 32)
  %i.agw = icmp eq i64 %index.next4319, %n.vec4314
  br i1 %i.agw, label %middle.block4320, label %vector.body4317, !llvm.loop !44708

middle.block4320:                                 ; preds = %vector.body4317
  %i.agx = extractelement <4 x i32> %vec.ind, i64 3
  %i.agy = add i32 %i.agx, 8
  store i32 %i.agy, ptr %.sroa.30.0..sroa_idx.i.i.i.i, align 8, !alias.scope !45232, !noalias !45233
  br label %.lr.ph.i.i94.i.i.i.preheader4408

.lr.ph.i.i94.i.i.i.preheader4408:                 ; preds = %.lr.ph.i.i94.i.i.i.preheader, %middle.block4320
  %indvars.iv.i.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i94.i.i.i.preheader ], [ %n.vec4314, %middle.block4320 ]
  %.sroa.0.027.i.i.i.i.i.ph = phi i32 [ %.sroa.02.1.i.i.i.i, %.lr.ph.i.i94.i.i.i.preheader ], [ %i.ago, %middle.block4320 ]
  %.ph = phi i32 [ %i.afl, %.lr.ph.i.i94.i.i.i.preheader ], [ %i.agq, %middle.block4320 ]
  br label %.lr.ph.i.i94.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %bb.fo, %bb.fj
  %.sroa.06.0.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.fj ], [ %indvars.iv.next.i.i96.i.i.i, %bb.fo ] ; 3 uses
  %.sroa.0.0.lcssa.i.i.i.i.i = phi i32 [ %.sroa.02.1.i.i.i.i, %bb.fj ], [ %i.ahx, %bb.fo ] ; 4 uses
  %.not.i.i87.i.i.i = icmp eq i32 %.sroa.0.0.lcssa.i.i.i.i.i, 0
  %.pre.i.i88.i.i.i = load i32, ptr %.sroa.32.0..sroa_idx.i.i.i.i, align 4, !alias.scope !45232, !noalias !45233 ; 2 uses
  br i1 %.not.i.i87.i.i.i, label %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader15BrotliCopyBytes.exit.i.i.i.i, label %.lr.ph30.i.i.i.i.i

.lr.ph30.i.i.i.i.i:                               ; preds = %.preheader.i.i.i.i.i
  %i.agz = zext i32 %.pre.i.i88.i.i.i to i64      ; 3 uses
  %i.aha = call i64 @llvm.usub.sat.i64(i64 range(i64 8, 4097) %.sroa.21.1.i.i.i.i, i64 %i.agz) ; 2 uses
  %i.ahb = call i64 @llvm.usub.sat.i64(i64 %i.afw, i64 %.sroa.06.0.lcssa.i.i.i.i.i) ; 2 uses
  %wide.trip.count.i.i.i.i.i = zext i32 %.sroa.0.0.lcssa.i.i.i.i.i to i64 ; 2 uses
  %i.ahc = add nsw i64 %wide.trip.count.i.i.i.i.i, -1
  %i.ahd = call i64 @llvm.umin.i64(i64 %i.ahb, i64 %i.ahc)
  %i.ahe = freeze i64 %i.ahd
  %i.ahf = call i64 @llvm.umin.i64(i64 %i.ahe, i64 %i.aha)
  %i.ahg = add i64 %i.ahf, 1                      ; 3 uses
  %min.iters.check = icmp ult i64 %i.ahg, 17
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

scalar.ph.preheader:                              ; preds = %vector.body, %.lr.ph30.i.i.i.i.i
  %indvars.iv40.i.i.i.i.i.ph = phi i64 [ 0, %.lr.ph30.i.i.i.i.i ], [ %n.vec, %vector.body ]
  br label %scalar.ph

vector.ph:                                        ; preds = %.lr.ph30.i.i.i.i.i
  %i.ahh = and i64 %i.ahg, 15                     ; 2 uses
  %i.ahi = icmp eq i64 %i.ahh, 0
  %i.ahj = select i1 %i.ahi, i64 16, i64 %i.ahh
  %n.vec = sub i64 %i.ahg, %i.ahj                 ; 2 uses
  %invariant.gep = getelementptr i8, ptr %.sroa.029.1.i.i.i.i, i64 %i.agz
  %invariant.gep6245 = getelementptr i8, ptr %i.afx, i64 %.sroa.06.0.lcssa.i.i.i.i.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %gep = getelementptr i8, ptr %invariant.gep, i64 %index
  %wide.load = load <16 x i8>, ptr %gep, align 1, !alias.scope !45234, !noalias !45235
  %gep6246 = getelementptr i8, ptr %invariant.gep6245, i64 %index
  store <16 x i8> %wide.load, ptr %gep6246, align 1, !alias.scope !45227, !noalias !45231
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ahk = icmp eq i64 %index.next, %n.vec
  br i1 %i.ahk, label %scalar.ph.preheader, label %vector.body, !llvm.loop !44709

.lr.ph.i.i94.i.i.i:                               ; preds = %.lr.ph.i.i94.i.i.i.preheader4408, %bb.fo
  %indvars.iv.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i96.i.i.i, %bb.fo ], [ %indvars.iv.i.i.i.i.i.ph, %.lr.ph.i.i94.i.i.i.preheader4408 ] ; 3 uses
  %.sroa.0.027.i.i.i.i.i = phi i32 [ %i.ahx, %bb.fo ], [ %.sroa.0.027.i.i.i.i.i.ph, %.lr.ph.i.i94.i.i.i.preheader4408 ]
  %i.ahl = phi i32 [ %i.ahw, %bb.fo ], [ %.ph, %.lr.ph.i.i94.i.i.i.preheader4408 ] ; 3 uses
  %exitcond.not.i95.i.i.i = icmp eq i64 %indvars.iv.i.i.i.i.i, %i.afw
  br i1 %exitcond.not.i95.i.i.i, label %bb.fp, label %bb.fo

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.fm
  %indvars.iv40.i.i.i.i.i = phi i64 [ %indvars.iv.next41.i.i.i.i.i, %bb.fm ], [ %indvars.iv40.i.i.i.i.i.ph, %scalar.ph.preheader ] ; 5 uses
  %indvars.iv.next41.i.i.i.i.i = add nuw nsw i64 %indvars.iv40.i.i.i.i.i, 1 ; 2 uses
  %i.ahm = add nuw nsw i64 %indvars.iv40.i.i.i.i.i, %i.agz ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %indvars.iv40.i.i.i.i.i, %i.aha
  br i1 %exitcond.not.i.i.i.i.i, label %bb.fl, label %bb.fk

bb.fk:                                            ; preds = %scalar.ph
  %i.ahn = add nuw nsw i64 %indvars.iv40.i.i.i.i.i, %.sroa.06.0.lcssa.i.i.i.i.i ; 2 uses
  %exitcond44.not.i.i.i.i.i = icmp eq i64 %indvars.iv40.i.i.i.i.i, %i.ahb
  br i1 %exitcond44.not.i.i.i.i.i, label %bb.fn, label %bb.fm

bb.fl:                                            ; preds = %scalar.ph
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.ahm, i64 noundef range(i64 8, 4097) %.sroa.21.1.i.i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2366) #63, !noalias !45236
  unreachable

bb.fm:                                            ; preds = %bb.fk
  %i.aho = getelementptr inbounds nuw i8, ptr %.sroa.029.1.i.i.i.i, i64 %i.ahm
  %i.ahp = load i8, ptr %i.aho, align 1, !alias.scope !45234, !noalias !45235, !noundef !178
  %i.ahq = getelementptr inbounds nuw i8, ptr %i.afx, i64 %i.ahn
  store i8 %i.ahp, ptr %i.ahq, align 1, !alias.scope !45227, !noalias !45231
  %exitcond45.not.i.i.i.i.i = icmp eq i64 %indvars.iv.next41.i.i.i.i.i, %wide.trip.count.i.i.i.i.i
  br i1 %exitcond45.not.i.i.i.i.i, label %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader15BrotliCopyBytes.exit.i.i.i.i, label %scalar.ph, !llvm.loop !44710

bb.fn:                                            ; preds = %bb.fk
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.ahn, i64 noundef range(i64 0, -9223372036854775808) %i.afw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2367) #63, !noalias !45236
  unreachable

bb.fo:                                            ; preds = %.lr.ph.i.i94.i.i.i
  %i.ahr = and i32 %i.ahl, 63
  %i.ahs = zext nneg i32 %i.ahr to i64
  %i.aht = lshr i64 %i.ady, %i.ahs
  %i.ahu = getelementptr inbounds nuw i8, ptr %i.afx, i64 %indvars.iv.i.i.i.i.i
  %i.ahv = trunc i64 %i.aht to i8
  store i8 %i.ahv, ptr %i.ahu, align 1, !alias.scope !45227, !noalias !45231
  %i.ahw = add i32 %i.ahl, 8                      ; 2 uses
  store i32 %i.ahw, ptr %.sroa.30.0..sroa_idx.i.i.i.i, align 8, !alias.scope !45232, !noalias !45233
  %indvars.iv.next.i.i96.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i, 1 ; 2 uses
  %i.ahx = add i32 %.sroa.0.027.i.i.i.i.i, -1     ; 3 uses
  %notsub.i.i.i.i.i = add i32 %i.ahl, -57
  %i.ahy = icmp ult i32 %notsub.i.i.i.i.i, -8
  %i.ahz = icmp ne i32 %i.ahx, 0
  %or.cond.i.i97.i.i.i = select i1 %i.ahy, i1 %i.ahz, i1 false
  br i1 %or.cond.i.i97.i.i.i, label %.lr.ph.i.i94.i.i.i, label %.preheader.i.i.i.i.i, !llvm.loop !44711

bb.fp:                                            ; preds = %.lr.ph.i.i94.i.i.i
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.afw, i64 noundef range(i64 0, -9223372036854775808) %i.afw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2368) #63, !noalias !45236
  unreachable

_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader15BrotliCopyBytes.exit.i.i.i.i: ; preds = %bb.fm, %.preheader.i.i.i.i.i
  %i.aia = sub i32 %i.afk, %.sroa.0.0.lcssa.i.i.i.i.i
  store i32 %i.aia, ptr %.sroa.33.0..sroa_idx.i.i.i.i, align 8, !alias.scope !45232, !noalias !45233
  %i.aib = add i32 %.pre.i.i88.i.i.i, %.sroa.0.0.lcssa.i.i.i.i.i
  store i32 %i.aib, ptr %.sroa.32.0..sroa_idx.i.i.i.i, align 4, !alias.scope !45232, !noalias !45233
  %i.aic = add i32 %.sroa.02.1.i.i.i.i, %i.afq    ; 2 uses
  store i32 %i.aic, ptr %i.oa, align 8, !alias.scope !45219, !noalias !45221
  %i.aid = sub i32 %i.afp, %.sroa.02.1.i.i.i.i
  store i32 %i.aid, ptr %i.nm, align 8, !alias.scope !45219, !noalias !45221
  %i.aie = icmp slt i32 %i.aic, %i.aeb
  br i1 %i.aie, label %bb.fr, label %.backedge.i89.i.i.i

bb.fq:                                            ; preds = %bb.fi
  call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %i.afu, i64 noundef %.val12.i.i.i.i, i64 noundef %.val12.i.i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @435) #63, !noalias !45237
  unreachable

.backedge.i89.i.i.i:                              ; preds = %bb.ft, %bb.fs, %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader15BrotliCopyBytes.exit.i.i.i.i
  %.sroa.017.6.i.i.i = phi i64 [ %i.aeu, %bb.ft ], [ %i.aeu, %bb.fs ], [ %.sroa.017.4.i.i.i, %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader15BrotliCopyBytes.exit.i.i.i.i ]
  %.sroa.06.5.i.i.i = phi i64 [ %i.aey, %bb.ft ], [ %i.aey, %bb.fs ], [ %.sroa.06.3.i.i.i, %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader15BrotliCopyBytes.exit.i.i.i.i ]
  %storemerge.i90.i.i.i = phi i8 [ 0, %bb.ft ], [ 0, %bb.fs ], [ 1, %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader15BrotliCopyBytes.exit.i.i.i.i ] ; 2 uses
  store i8 %storemerge.i90.i.i.i, ptr %.sroa.125.0..sroa_idx.i.i.i.i, align 8, !alias.scope !45219, !noalias !45221
  br label %bb.ey

bb.fr:                                            ; preds = %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader15BrotliCopyBytes.exit.i.i.i.i
  %i.aif = icmp eq i32 %i.afp, %.sroa.02.1.i.i.i.i
  br i1 %i.aif, label %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode29CopyUncompressedBlockToOutputNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB1f_B1f_ECsgZAIVb0XKpv_9ssservice.exit.i.i.i, label %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit.i.i.i.i.backedge

bb.fs:                                            ; preds = %bb.fh, %bb.fg, %bb.ff
  %i.aig = icmp eq i32 %i.aeg, %i.aeb
  br i1 %i.aig, label %bb.ft, label %.backedge.i89.i.i.i

bb.ft:                                            ; preds = %bb.fs
  store i32 %i.aec, ptr %i.nx, align 4, !alias.scope !45219, !noalias !45221
  br label %.backedge.i89.i.i.i

bb.fu:                                            ; preds = %bb.cw, %bb.cw, %bb.cw
  call void @llvm.experimental.noalias.scope.decl(metadata !45238)
  %i.aih = load i32, ptr %i.oa, align 8, !alias.scope !45238, !noalias !45239, !noundef !178 ; 6 uses
  %i.aii = load i32, ptr %i.nw, align 8, !alias.scope !45238, !noalias !45239, !noundef !178 ; 9 uses
  %..i73.i.i.i = call i32 @llvm.smin.i32(i32 %i.aih, i32 %i.aii)
  %.sroa.010.0.i74.i.i.i = sext i32 %..i73.i.i.i to i64
  %i.aij = load i64, ptr %i.ob, align 8, !alias.scope !45238, !noalias !45239, !noundef !178 ; 2 uses
  %i.aik = sext i32 %i.aii to i64                 ; 4 uses
  %i.ail = mul i64 %i.aij, %i.aik
  %i.aim = add i64 %i.ail, %.sroa.010.0.i74.i.i.i
  %i.ain = load i64, ptr %i.oc, align 8, !alias.scope !45238, !noalias !45239, !noundef !178 ; 3 uses
  %i.aio = sub i64 %i.aim, %i.ain                 ; 2 uses
  %spec.store.select.i75.i.i.i = call i64 @llvm.umin.i64(i64 %.sroa.06.1.i.i.i, i64 %i.aio) ; 5 uses
  %i.aip = load i32, ptr %i.nm, align 8, !alias.scope !45238, !noalias !45239, !noundef !178
  %i.aiq = icmp slt i32 %i.aip, 0
  br i1 %i.aiq, label %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit.i.i.i.i.backedge, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  %i.air = load i32, ptr %i.od, align 4, !alias.scope !45238, !noalias !45239, !noundef !178
  %i.ais = sext i32 %i.air to i64
  %i.ait = and i64 %i.ain, %i.ais                 ; 4 uses
  %.val20.i76.i.i.i = load i64, ptr %.sroa.13.0..sroa_idx.i.i.i.i, align 8, !alias.scope !45238, !noalias !45239, !noundef !178 ; 4 uses
  %i.aiu = add i64 %i.ait, %spec.store.select.i75.i.i.i ; 3 uses
  %i.aiv = icmp ult i64 %i.aiu, %i.ait
  %.not.i77.i.i.i = icmp ugt i64 %i.aiu, %.val20.i76.i.i.i
  %or.cond.i78.i.i.i = or i1 %i.aiv, %.not.i77.i.i.i
  br i1 %or.cond.i78.i.i.i, label %bb.fx, label %bb.fw, !prof !207

bb.fw:                                            ; preds = %bb.fv
  %i.aiw = add nuw nsw i64 %spec.store.select.i75.i.i.i, %.sroa.017.2.i.i.i ; 9 uses
  %i.aix = icmp ult i64 %i.aiw, 4097
  br i1 %i.aix, label %bb.fy, label %bb.fz, !prof !201

bb.fx:                                            ; preds = %bb.fv
  call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %i.ait, i64 noundef %i.aiu, i64 noundef %.val20.i76.i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @369) #63, !noalias !45240
  unreachable

bb.fy:                                            ; preds = %bb.fw
  %.val.i79.i.i.i = load ptr, ptr %.sroa.12.0..sroa_idx.i.i.i.i, align 8, !alias.scope !45238, !noalias !45239, !nonnull !178, !noundef !178 ; 3 uses
  %i.aiy = getelementptr inbounds nuw i8, ptr %.val.i79.i.i.i, i64 %i.ait
  %i.aiz = getelementptr inbounds nuw i8, ptr %i.s, i64 %.sroa.017.2.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aiz, ptr nonnull readonly align 1 %i.aiy, i64 range(i64 0, -9223372036854775808) %spec.store.select.i75.i.i.i, i1 false), !alias.scope !45241, !noalias !45242
  %i.aja = sub nuw nsw i64 %.sroa.06.1.i.i.i, %spec.store.select.i75.i.i.i ; 7 uses
  %i.ajb = add i64 %spec.store.select.i75.i.i.i, %i.ain
  store i64 %i.ajb, ptr %i.oc, align 8, !alias.scope !45238, !noalias !45239
  %i.ajc = icmp ult i64 %.sroa.06.1.i.i.i, %i.aio
  %i.ajd = load i32, ptr %.sroa.102.0..sroa_idx.i.i.i.i, align 8, !alias.scope !45238, !noalias !45239, !noundef !178
  %i.aje = and i32 %i.ajd, 31
  %i.ajf = shl nuw i32 1, %i.aje                  ; 3 uses
  br i1 %i.ajc, label %bb.gb, label %bb.ga

bb.fz:                                            ; preds = %bb.fw
  call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %.sroa.017.2.i.i.i, i64 noundef %i.aiw, i64 noundef 4096, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @368) #63, !noalias !45240
  unreachable

bb.ga:                                            ; preds = %bb.fy
  %i.ajg = icmp ne i32 %i.aii, %i.ajf
  %.not18.i81.i.i.i = icmp slt i32 %i.aih, %i.aii
  %or.cond21.i82.i.i.i = or i1 %.not18.i81.i.i.i, %i.ajg
  br i1 %or.cond21.i82.i.i.i, label %bb.jh, label %bb.gc

bb.gb:                                            ; preds = %bb.fy
  %i.ajh = icmp eq i32 %i.aii, %i.ajf
  br i1 %i.ajh, label %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit.i.i.i.i.backedge, label %bb.jh

bb.gc:                                            ; preds = %bb.ga
  %i.aji = sub i32 %i.aih, %i.aii                 ; 2 uses
  store i32 %i.aji, ptr %i.oa, align 8, !alias.scope !45238, !noalias !45239
  %i.ajj = add i64 %i.aij, 1
  store i64 %i.ajj, ptr %i.ob, align 8, !alias.scope !45238, !noalias !45239
  %i.ajk = icmp ne i32 %i.aih, %i.aii
  %i.ajl = zext i1 %i.ajk to i8
  store i8 %i.ajl, ptr %.sroa.122.0..sroa_idx.i.i.i.i, align 1, !alias.scope !45238, !noalias !45239
  br label %bb.jh

bb.gd:                                            ; preds = %bb.cw
  call fastcc void @_RNvMNtCsl4v216RJbSI_19brotli_decompressor5stateINtB2_11BrotliStateNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB12_B12_E32BrotliStateCleanupAfterMetablockCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef nonnull align 8 dereferenceable(2600) %i.r) #53, !noalias !45109
  %i.ajm = load i8, ptr %i.nk, align 2, !alias.scope !45107, !noalias !45108, !noundef !178
  %i.ajn = icmp eq i8 %i.ajm, 0
  br i1 %i.ajn, label %bb.jc, label %bb.jd

bb.ge:                                            ; preds = %bb.cw
  %i.ajo = load i32, ptr %.sroa.7254.0..sroa_idx.i.i.i.i, align 8, !alias.scope !45107, !noalias !45108, !noundef !178 ; 3 uses
  %i.ajp = icmp sgt i32 %i.ajo, 2
  br i1 %i.ajp, label %bb.jy, label %bb.jx

bb.gf:                                            ; preds = %bb.cw
  %i.ajq = load i32, ptr %.sroa.7254.0..sroa_idx.i.i.i.i, align 8, !alias.scope !45107, !noalias !45108, !noundef !178 ; 3 uses
  %i.ajr = load ptr, ptr %.sroa.63.0..sroa_idx.i.i.i.i, align 8, !alias.scope !45107, !noalias !45108, !nonnull !178, !align !248, !noundef !178 ; 2 uses
  %i.ajs = load i64, ptr %.sroa.64.0..sroa_idx.i.i.i.i, align 8, !alias.scope !45107, !noalias !45108, !noundef !178 ; 2 uses
  store ptr inttoptr (i64 2 to ptr), ptr %.sroa.63.0..sroa_idx.i.i.i.i, align 8, !alias.scope !45107, !noalias !45108
  store i64 0, ptr %.sroa.64.0..sroa_idx.i.i.i.i, align 8, !alias.scope !45107, !noalias !45108
  %i.ajt = sext i32 %i.ajq to i64                 ; 2 uses
  %i.aju = icmp ult i32 %i.ajq, 3
  br i1 %i.aju, label %bb.kh, label %bb.ki

bb.gg:                                            ; preds = %bb.cw
  %i.ajv = load i32, ptr %.sroa.7254.0..sroa_idx.i.i.i.i, align 8, !alias.scope !45107, !noalias !45108, !noundef !178
  %i.ajw = mul i32 %i.ajv, 1080
  %i.ajx = load ptr, ptr %.sroa.65.0..sroa_idx52.i.i.i.i, align 8, !alias.scope !45107, !noalias !45108, !nonnull !178, !align !248, !noundef !178 ; 2 uses
  %i.ajy = load i64, ptr %.sroa.66.0..sroa_idx.i.i.i.i, align 8, !alias.scope !45107, !noalias !45108, !noundef !178 ; 2 uses
  store ptr inttoptr (i64 2 to ptr), ptr %.sroa.65.0..sroa_idx52.i.i.i.i, align 8, !alias.scope !45107, !noalias !45108
  store i64 0, ptr %.sroa.66.0..sroa_idx.i.i.i.i, align 8, !alias.scope !45107, !noalias !45108
  %i.ajz = sext i32 %i.ajw to i64
  %i.aka = call fastcc noundef i32 @_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode15ReadHuffmanCodeNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB11_B11_ECsgZAIVb0XKpv_9ssservice(i32 noundef 26, i32 noundef 26, ptr noalias nofree noundef nonnull align 2 %i.ajx, i64 noundef %i.ajy, i64 noundef %i.ajz, ptr noalias nofree noundef align 4 dereferenceable_or_null(4) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(2600) %i.r, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.029.1.i.i.i.i, i64 noundef %.sroa.21.1.i.i.i.i) #53, !noalias !45109 ; 2 uses
  %i.akb = load ptr, ptr %.sroa.65.0..sroa_idx52.i.i.i.i, align 8, !alias.scope !45107, !noalias !45108, !nonnull !178, !align !248, !noundef !178
  %i.akc = load i64, ptr %.sroa.66.0..sroa_idx.i.i.i.i, align 8, !alias.scope !45107, !noalias !45108, !noundef !178 ; 2 uses
  store ptr %i.ajx, ptr %.sroa.65.0..sroa_idx52.i.i.i.i, align 8, !alias.scope !45107, !noalias !45108
  store i64 %i.ajy, ptr %.sroa.66.0..sroa_idx.i.i.i.i, align 8, !alias.scope !45107, !noalias !45108
  %i.akd = icmp eq i64 %i.akc, 0
  br i1 %i.akd, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2D0wXkiOfwW_12alloc_stdlib10heap_alloc7WrapBoxNtNtCsl4v216RJbSI_19brotli_decompressor7huffman11HuffmanCodeEECsgZAIVb0XKpv_9ssservice.exit157.i.i.i.i, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i156.i.i.i.i

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i156.i.i.i.i: ; preds = %bb.gg
  %i.ake = shl nuw nsw i64 %i.akc, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.akb, i64 noundef %i.ake, i64 noundef 2) #53, !noalias !45109
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2D0wXkiOfwW_12alloc_stdlib10heap_alloc7WrapBoxNtNtCsl4v216RJbSI_19brotli_decompressor7huffman11HuffmanCodeEECsgZAIVb0XKpv_9ssservice.exit157.i.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2D0wXkiOfwW_12alloc_stdlib10heap_alloc7WrapBoxNtNtCsl4v216RJbSI_19brotli_decompressor7huffman11HuffmanCodeEECsgZAIVb0XKpv_9ssservice.exit157.i.i.i.i: ; preds = %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i156.i.i.i.i, %bb.gg
  %i.akf = icmp eq i32 %i.aka, 1
  br i1 %i.akf, label %.backedge.i.i.i.i, label %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit.i.i.i.i.backedge

bb.gh:                                            ; preds = %bb.cw
  %i.akg = load i32, ptr %.sroa.7254.0..sroa_idx.i.i.i.i, align 8, !alias.scope !45107, !noalias !45108, !noundef !178
  %i.akh = mul i32 %i.akg, 1080
  %.val136.i.i.i.i = load i64, ptr %.sroa.66.0..sroa_idx.i.i.i.i, align 8, !alias.scope !45107, !noalias !45108, !noundef !178 ; 4 uses
  %i.aki = sext i32 %i.akh to i64                 ; 4 uses
  %i.akj = icmp ult i64 %.val136.i.i.i.i, %i.aki
  br i1 %i.akj, label %bb.kr, label %bb.kj, !prof !187

bb.gi:                                            ; preds = %bb.cw
  %i.akk = load i32, ptr %.sroa.68.0..sroa_idx.i.i.i.i, align 8, !alias.scope !45107, !noalias !45108, !noundef !178
  %i.akl = zext i32 %i.akk to i64
  %i.akm = shl nuw nsw i64 %i.akl, 6
  %i.akn = call fastcc noundef i32 @_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode16DecodeContextMapNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB12_B12_ECsgZAIVb0XKpv_9ssservice(i64 noundef %i.akm, i1 noundef zeroext false, ptr noalias nofree noundef nonnull align 8 dereferenceable(2600) %i.r, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.029.1.i.i.i.i, i64 noundef %.sroa.21.1.i.i.i.i) #53, !noalias !45109 ; 2 uses
  %i.ako = icmp eq i32 %i.akn, 1
  br i1 %i.ako, label %bb.ku, label %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit.i.i.i.i.backedge

bb.gj:                                            ; preds = %bb.cw
  %i.akp = load i32, ptr %i.nd, align 8, !alias.scope !45107, !noalias !45108, !noundef !178 ; 2 uses
  %i.akq = add i32 %i.akp, -16                    ; 4 uses
  %i.akr = load i32, ptr %i.ne, align 4, !alias.scope !45107, !noalias !45108, !noundef !178 ; 4 uses
  %i.aks = load i8, ptr %.sroa.120.0..sroa_idx.i.i.i.i, align 4, !range !181, !alias.scope !45107, !noalias !45108, !noundef !178
  %i.akt = trunc nuw i8 %i.aks to i1              ; 2 uses
  %..i.i.i.i = select i1 %i.akt, i32 62, i32 24
  %i.aku = add i32 %i.akr, 1
  %i.akv = and i32 %i.aku, 31
  %i.akw = shl i32 %..i.i.i.i, %i.akv
  %i.akx = add i32 %i.akw, %i.akp                 ; 2 uses
  br i1 %i.akt, label %bb.ll, label %bb.ls

bb.gk:                                            ; preds = %bb.cw
  %i.aky = load i32, ptr %.sroa.7254.0..sroa_idx.i.i.i.i, align 8, !alias.scope !45107, !noalias !45108, !noundef !178 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !45243)
  %i.akz = icmp ult i32 %i.aky, 3
  br i1 %i.akz, label %switch.lookup.i.i.i.i, label %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode22HuffmanTreeGroupDecodeNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB18_B18_ECsgZAIVb0XKpv_9ssservice.exit.thread55.i.i.i

switch.lookup.i.i.i.i:                            ; preds = %bb.gk
  %narrow.i.i.i.i = mul nuw nsw i32 %i.aky, 40
  %i.ala = zext nneg i32 %narrow.i.i.i.i to i64
  %i.alb = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.ala ; 7 uses
  %i.alc = getelementptr inbounds nuw i8, ptr %i.alb, i64 1952 ; 2 uses
  %i.ald = getelementptr inbounds nuw i8, ptr %i.alb, i64 1968 ; 2 uses
  %i.ale = load ptr, ptr %i.ald, align 8, !alias.scope !45243, !noalias !45244, !nonnull !178, !align !248, !noundef !178 ; 4 uses
end_hunk_0
begin_hunk_1_@_RNvXsC_NtNtCsf3Ta7LF998c_4core3fmt3numyNtB7_8LowerHex3fmt
; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs6_NtNtCsf3Ta7LF998c_4core3fmt3numjNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: noinline nounwind nonlazybind uwtable
declare noundef nonnull ptr @_RINvMNtNtCsgCecv3eZDcN_5alloc2io5errorNtNtNtCsf3Ta7LF998c_4core2io5error5Error3newNtNtNtNtCsczhfDQ1qNkX_5tokio7runtime4task5error9JoinErrorECs8UFHSMUhzWe_19shadowsocks_service(i8 noundef range(i8 0, 44), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #8

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, -1) i32 @_RNvXsb_NtCsbrWK7tW1wl7_7socket23sysNtNtB7_6socket6SocketNtNtNtNtCs5Xr050g3D4S_3std2os2fd5owned4AsFd5as_fd(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, -1) i32 @_RNvXsg_NtCsbrWK7tW1wl7_7socket23sysNtNtB7_6socket6SocketNtNtNtNtCs5Xr050g3D4S_3std2os2fd3raw9FromRawFd11from_raw_fd(i32 noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, -1) i32 @_RNvXs2_NtCs4KmrmuXgih0_9tokio_tfo6streamNtB5_9TfoStreamNtNtNtNtCs5Xr050g3D4S_3std2os2fd5owned4AsFd5as_fd(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, -1) i32 @_RNvXs1_NtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6socketNtB5_9TcpSocketNtNtNtNtCs5Xr050g3D4S_3std2os2fd5owned4AsFd5as_fd(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, -1) i32 @_RNvXs_NtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream3sysNtB6_9TcpStreamNtNtNtNtCs5Xr050g3D4S_3std2os2fd5owned4AsFd5as_fd(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvNtNtCs2dlyTE5y14r_2h25codec11framed_read12decode_frame(ptr dead_on_unwind noalias nofree noundef writable sret([296 x i8]) align 8 captures(none) dereferenceable(296), ptr noalias nofree noundef align 8 dereferenceable(104), i64 noundef, i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(336), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvNtNtCs2dlyTE5y14r_2h25codec11framed_read7map_err(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40), ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare { i64, ptr } @_RNvXs_NtNtCs8UFHSMUhzWe_19shadowsocks_service6server8tcprelayNtB4_12RemoteStreamNtNtNtCsczhfDQ1qNkX_5tokio2io10async_read9AsyncRead9poll_read(ptr noalias nofree noundef align 8 dereferenceable(1160), ptr noalias nofree noundef align 8 dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare { i64, ptr } @_RNvXs0_NtNtCs8UFHSMUhzWe_19shadowsocks_service6server8tcprelayNtB5_12RemoteStreamNtNtNtCsczhfDQ1qNkX_5tokio2io11async_write10AsyncWrite10poll_flush(ptr noalias nofree noundef align 8 dereferenceable(1160), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare { i64, ptr } @_RNvXs0_NtNtCs8UFHSMUhzWe_19shadowsocks_service6server8tcprelayNtB5_12RemoteStreamNtNtNtCsczhfDQ1qNkX_5tokio2io11async_write10AsyncWrite13poll_shutdown(ptr noalias nofree noundef align 8 dereferenceable(1160), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtNtCsczhfDQ1qNkX_5tokio4time7timeout10poll_delay(i1 noundef zeroext, ptr noundef nonnull align 8, ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare { i64, ptr } @_RNvMNtNtCsczhfDQ1qNkX_5tokio3net3udpNtB2_9UdpSocket12poll_send_to(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef readonly align 4 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvMNtNtCsczhfDQ1qNkX_5tokio3net3udpNtB2_9UdpSocket14poll_recv_from(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef ptr @_RNvXs1_NtNtCsiuBVzwTdaUB_4zstd6stream3rawNtB5_7DecoderNtB5_9Operation6reinit(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtCs8UFHSMUhzWe_19shadowsocks_service3aclNtB2_5RulesNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(176), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvMs_NtNtCs7ewmRfXve8r_4http6header4nameNtB4_10HeaderName10from_bytes(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvXs7_NtCs2dlyTE5y14r_2h26clientNtB5_14ResponseFutureNtNtNtCsf3Ta7LF998c_4core6future6future6Future4poll(ptr dead_on_unwind noalias nofree noundef writable sret([128 x i8]) align 8 captures(none) dereferenceable(128), ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvMs_NtNtNtCsaI3lGUjttVO_5hyper5proto2h24pingNtB4_8Recorder15record_non_data(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare { i64, i64 } @_RNvNtCsaI3lGUjttVO_5hyper7headers24content_length_parse_all(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(96)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare { ptr, ptr } @_RNvNtCsaI3lGUjttVO_5hyper7upgrade7pending() unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare { i64, ptr } @_RNvXs2_NtNtNtCsaI3lGUjttVO_5hyper5proto2h27upgradeNtB5_10H2UpgradedNtNtNtBb_2rt2io4Read9poll_read(ptr noalias nofree noundef align 8 dereferenceable(96), ptr noalias nofree noundef align 8 dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare { i64, ptr } @_RNvXs3_NtNtNtCsaI3lGUjttVO_5hyper5proto2h27upgradeNtB5_10H2UpgradedNtNtNtBb_2rt2io5Write10poll_write(ptr noalias nofree noundef align 8 dereferenceable(96), ptr noalias nofree noundef align 8 dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare { i64, ptr } @_RNvXs3_NtNtNtCsaI3lGUjttVO_5hyper5proto2h27upgradeNtB5_10H2UpgradedNtNtNtBb_2rt2io5Write10poll_flush(ptr noalias nofree noundef align 8 dereferenceable(96), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare { i64, ptr } @_RNvXs3_NtNtNtCsaI3lGUjttVO_5hyper5proto2h27upgradeNtB5_10H2UpgradedNtNtNtBb_2rt2io5Write13poll_shutdown(ptr noalias nofree noundef align 8 dereferenceable(96), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMNtCsaI3lGUjttVO_5hyper5errorNtB2_5Error6new_h2(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(40)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef ptr @_RNvMs_NtNtNtCsaI3lGUjttVO_5hyper5proto2h24pingNtB4_8Recorder10for_stream(ptr noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvMNtNtCsaI3lGUjttVO_5hyper4body8incomingNtB2_8Incoming2h2(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(16), i64 noundef, ptr noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef align 8 ptr @_RNvMs_NtNtNtCsaI3lGUjttVO_5hyper5proto2h24pingNtB4_8Recorder20ensure_not_timed_out(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: cold nounwind nonlazybind uwtable
declare void @_RNvMNtNtNtNtCs5Xr050g3D4S_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4) unnamed_addr #3

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvNtNtCsaI3lGUjttVO_5hyper5proto2h224strip_connection_headers(ptr noalias nofree noundef align 8 dereferenceable(96), i1 noundef zeroext) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvNtCsaI3lGUjttVO_5hyper7headers29set_content_length_if_missing(ptr noalias nofree noundef align 8 dereferenceable(96), i64 noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMNtCsaI3lGUjttVO_5hyper5errorNtB2_5Error24new_user_invalid_connect() unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvMNtCs7ewmRfXve8r_4http6methodNtB2_6Method10from_bytes(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvMNtNtCsczhfDQ1qNkX_5tokio4sync15batch_semaphoreNtB2_9Semaphore7release(ptr noundef nonnull align 8, i64 noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvMs_NtNtNtCsczhfDQ1qNkX_5tokio7runtime4task3rawNtB4_7RawTask7dealloc(ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs_NtNtCsgNLA4kpd9RZ_7smoltcp4wire3tcpNtB4_9SeqNumberNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvMs9_NtNtCsgNLA4kpd9RZ_7smoltcp4wire3tcpNtB5_9TcpOption5parse(ptr dead_on_unwind noalias nofree noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvMs2_NtCs1kwRxRulhfk_12tracing_core10dispatcherNtB5_8Dispatch4exit(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvMs1_NtNtCscVsx2cUGvkQ_12futures_util4lock5mutexNtB5_6Waiter8register(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs_NtCsaI3lGUjttVO_5hyper5errorNtB4_5ErrorNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs7_NtNtNtCsaI3lGUjttVO_5hyper5proto2h16encodeNtB5_6NotEofNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NvXsf_NtNtCsgCecv3eZDcN_5alloc5boxed7convertINtBd_3BoxDNtNtCsf3Ta7LF998c_4core5error5ErrorNtNtB12_6marker4SendNtB1z_4SyncEL_EINtNtB12_7convert4FromNtNtBf_6string6StringE4fromNtB5_11StringErrorNtNtB12_3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs_NvXsf_NtNtCsgCecv3eZDcN_5alloc5boxed7convertINtBc_3BoxDNtNtCsf3Ta7LF998c_4core5error5ErrorNtNtB11_6marker4SendNtB1y_4SyncEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4fromNtB4_11StringErrorNtNtB11_3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @"\01aws_lc_0_44_0_EVP_AEAD_CTX_free"(ptr noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvXs1_NtCsi1FNhPBS7PW_11hickory_net5errorNtB5_8NetErrorINtNtCsf3Ta7LF998c_4core7convert4FromNtNtCs2dlyTE5y14r_2h25error5ErrorE4from(ptr dead_on_unwind noalias nofree noundef writable sret([72 x i8]) align 8 captures(none) dereferenceable(72), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef nonnull ptr @_RNvXNtNtNtCslxdWNweD0x2_11shadowsocks5relay8udprelay12proxy_socketNtNtNtCsf3Ta7LF998c_4core2io5error5ErrorINtNtB18_7convert4FromNtB2_16ProxySocketErrorE4from(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(72)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter10debug_list(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs6_NtNtCsf3Ta7LF998c_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter3pad(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: noinline nounwind nonlazybind uwtable
declare void @_RNvMs6_NtCsgCecv3eZDcN_5alloc2rcINtB5_2RcINtNtCsf3Ta7LF998c_4core4cell10UnsafeCellINtNtCsfGqwKJg1jQb_9rand_core5block8BlockRngNtNtNtCs1jR6m42rQJO_4rand4rngs6thread13ReseedingCoreEEE9drop_slowB26_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #8

; Function Attrs: nounwind nonlazybind uwtable
declare { i64, ptr } @_RNvXsb_NtCs5Xr050g3D4S_3std2fsNtB5_4FileNtNtNtCsf3Ta7LF998c_4core2io5write5Write5write(ptr noalias nofree noundef align 4 dereferenceable(4), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtCsaI3lGUjttVO_5hyper7headers21connection_keep_alive(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nounwind nonlazybind
define noundef i32 @main(i32 %0, ptr %1) unnamed_addr #57 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = sext i32 %0 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @_RNvCsgZAIVb0XKpv_9ssservice4main, ptr %i.a, align 8
  %i.c = call noundef i64 @_RNvNtCs5Xr050g3D4S_3std2rt19lang_start_internal(ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @350, i64 noundef %i.b, ptr noundef %1, i8 noundef 0) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.d = trunc i64 %i.c to i32
  ret i32 %i.d
}

; Function Attrs: nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #58

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #42

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umin.i16(i16, i16) #42

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #59

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.fshl.v4i32(<4 x i32>, <4 x i32>, <4 x i32>) #42

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.fshl.v8i32(<8 x i32>, <8 x i32>, <8 x i32>) #42

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #42

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #42

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #42

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #50

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.ucmp.i32.i32(i32, i32) #42

attributes #0 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" "target-features"="+aes,+sse,+sse2" }
attributes #2 = { inlinehint nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { cold nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+crc32,+ssse3" }
attributes #8 = { noinline nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" "target-features"="+sse,+sse2,+sse3,+sse4.1,+ssse3" }
attributes #13 = { alwaysinline nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { cold mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #18 = { nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #19 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #20 = { noreturn nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #21 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #22 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #23 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #24 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #25 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" "target-features"="+aes,+sse,+sse2" }
attributes #26 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #27 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #28 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #29 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #30 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #31 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #32 = { norecurse nounwind nonlazybind memory(readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #33 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #34 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #35 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #36 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #37 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #38 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #39 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #40 = { cold noinline noreturn nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #41 = { cold minsize noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #42 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #43 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #44 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #45 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #46 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #47 = { cold noinline nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #48 = { mustprogress nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #49 = { cold noreturn nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #50 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #51 = { nofree nosync nounwind nonlazybind memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #52 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #53 = { nounwind }
attributes #54 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCsh0WfaQiVYm0_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #55 = { nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #56 = { nounwind nonlazybind allockind("alloc,zeroed,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #57 = { nounwind nonlazybind "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #58 = { nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #59 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #60 = { noinline nounwind }
attributes #61 = { inlinehint nounwind }
attributes #62 = { noreturn nounwind }
attributes #63 = { noinline noreturn nounwind }

!llvm.module.flags = !{!173, !174, !175, !176}
!llvm.ident = !{!177}

!0 = distinct !{null, null}
!1 = distinct !{!1, !"_RINvNtNtNtCsfRIMZ2Mh1DJ_3aes8backends7x86_aes6encdec7decryptKjb_ECsgZAIVb0XKpv_9ssservice"}
!2 = distinct !{!2, !1, !"_RINvNtNtNtCsfRIMZ2Mh1DJ_3aes8backends7x86_aes6encdec7decryptKjb_ECsgZAIVb0XKpv_9ssservice: argument 0"}
!3 = distinct !{!3, !"_RINvNtNtNtCsfRIMZ2Mh1DJ_3aes8backends7x86_aes6encdec7decryptKjf_ECsgZAIVb0XKpv_9ssservice"}
!4 = distinct !{!4, !3, !"_RINvNtNtNtCsfRIMZ2Mh1DJ_3aes8backends7x86_aes6encdec7decryptKjf_ECsgZAIVb0XKpv_9ssservice: argument 0"}
!5 = distinct !{null, ptr @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsknai52m1gBp_5bytes5bytes5BytesECsgZAIVb0XKpv_9ssservice, null}
!6 = distinct !{null, null, null, null, ptr @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsknai52m1gBp_5bytes5bytes5BytesECsgZAIVb0XKpv_9ssservice, null}
!7 = distinct !{null, null, ptr @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsknai52m1gBp_5bytes5bytes5BytesECsgZAIVb0XKpv_9ssservice, null}
!8 = distinct !{null, null, null, null, null, ptr @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsknai52m1gBp_5bytes5bytes5BytesECsgZAIVb0XKpv_9ssservice, null}
!9 = distinct !{null, null, null, ptr @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsknai52m1gBp_5bytes5bytes5BytesECsgZAIVb0XKpv_9ssservice, null}
!10 = distinct !{null, null, null, null, null, null, ptr @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsknai52m1gBp_5bytes5bytes5BytesECsgZAIVb0XKpv_9ssservice, null}
!11 = distinct !{!11, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio3net4unix8listenerNtB3_12UnixListener4bindRNtNtCs5Xr050g3D4S_3std4path7PathBufECsgZAIVb0XKpv_9ssservice"}
!12 = distinct !{!12, !11, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio3net4unix8listenerNtB3_12UnixListener4bindRNtNtCs5Xr050g3D4S_3std4path7PathBufECsgZAIVb0XKpv_9ssservice: argument 1"}
!13 = distinct !{!13, !11, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio3net4unix8listenerNtB3_12UnixListener4bindRNtNtCs5Xr050g3D4S_3std4path7PathBufECsgZAIVb0XKpv_9ssservice: argument 0"}
!14 = distinct !{ptr @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsknai52m1gBp_5bytes5bytes5BytesECsgZAIVb0XKpv_9ssservice, null}
!15 = distinct !{null, ptr @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaI3lGUjttVO_5hyper5error5ErrorECsgZAIVb0XKpv_9ssservice, null, null, null, null}
!16 = distinct !{null, ptr @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaI3lGUjttVO_5hyper5error5ErrorECsgZAIVb0XKpv_9ssservice, null, null, null, null}
!17 = distinct !{ptr @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaI3lGUjttVO_5hyper5error5ErrorECsgZAIVb0XKpv_9ssservice, null, null, null, null}
!18 = distinct !{null, null, null}
!19 = distinct !{null, null, null}
!20 = distinct !{null, ptr @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsknai52m1gBp_5bytes5bytes5BytesECsgZAIVb0XKpv_9ssservice, null}
!21 = distinct !{null, null, ptr @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamECsgZAIVb0XKpv_9ssservice, null, null, null, null, null, null, null}
!22 = distinct !{null, null, null}
!23 = distinct !{null, null}
!24 = distinct !{null, null, null}
!25 = distinct !{null, null}
!26 = distinct !{null, null, null, null, null}
!27 = distinct !{null, null, null, null, null}
!28 = distinct !{null, null}
!29 = distinct !{null, null, null, null, null, null, null, null, null, null, null}
!30 = distinct !{!30, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsgZAIVb0XKpv_9ssservice"}
!31 = distinct !{!31, !30, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsgZAIVb0XKpv_9ssservice: argument 0"}
!32 = distinct !{null, null, null, null, null, null, null, null, null, null}
!33 = distinct !{null, null, null, null, null, null, null, null, null, null, null}
!34 = distinct !{null, null, null, null, null, null}
!35 = distinct !{ptr @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamECsgZAIVb0XKpv_9ssservice, null, null, null, null, null, null, null}
!36 = distinct !{null, ptr @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamECsgZAIVb0XKpv_9ssservice, null, null, null, null, null, null, null}
!37 = distinct !{!37, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECsgZAIVb0XKpv_9ssservice"}
!38 = distinct !{!38, !37, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECsgZAIVb0XKpv_9ssservice: argument 0"}
!39 = distinct !{null, null, null, null, null, null}
!40 = distinct !{!40, !"_RNvXse_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtB12_3ops4drop4Drop4dropCsgZAIVb0XKpv_9ssservice"}
!41 = distinct !{!41, !40, !"_RNvXse_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtB12_3ops4drop4Drop4dropCsgZAIVb0XKpv_9ssservice: argument 0"}
!42 = distinct !{null, null, null, null, ptr @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsknai52m1gBp_5bytes5bytes5BytesECsgZAIVb0XKpv_9ssservice, null}
!43 = distinct !{null, null, null, null}
!44 = distinct !{null, null, null, null, null, null, null, null, null, null}
!45 = distinct !{null, null, null, null, null, null, null, null, null, null}
!46 = distinct !{null, null}
!47 = distinct !{null, null, null, null, null, null, null, null, null, null, null}
!48 = distinct !{null, null, null, null, null, null, null, null, null, null, null}
!49 = distinct !{null, null, null, null, null, null, null, null, null, null}
!50 = distinct !{!50, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsgZAIVb0XKpv_9ssservice"}
!51 = distinct !{!51, !50, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsgZAIVb0XKpv_9ssservice: argument 0"}
!52 = distinct !{!52, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsgZAIVb0XKpv_9ssservice"}
!53 = distinct !{!53, !52, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsgZAIVb0XKpv_9ssservice: argument 0"}
!54 = distinct !{!54, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice"}
!55 = distinct !{!55, !54, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice: argument 0"}
!56 = distinct !{!56, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsgZAIVb0XKpv_9ssservice"}
!57 = distinct !{!57, !56, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsgZAIVb0XKpv_9ssservice: argument 0"}
!58 = distinct !{!58, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsgZAIVb0XKpv_9ssservice"}
!59 = distinct !{!59, !58, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsgZAIVb0XKpv_9ssservice: argument 0"}
!60 = distinct !{null, null, null, null, null, null, null, null, null, null}
!61 = distinct !{null, ptr @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamECsgZAIVb0XKpv_9ssservice, null, null, null, null, null, null, null}
!62 = distinct !{null, null, null, null, null}
!63 = distinct !{!63, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEECsgZAIVb0XKpv_9ssservice"}
!64 = distinct !{!64, !63, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEECsgZAIVb0XKpv_9ssservice: argument 0"}
!65 = distinct !{null, null, null, null, null, null, null}
!66 = distinct !{null, null, null, null, null, null, null}
!67 = distinct !{null, null, null, null, null, null, null}
!68 = distinct !{null, null}
!69 = distinct !{null, null, null, null}
!70 = distinct !{null, null, null, null, null}
!71 = distinct !{null, null, null, null, null}
!72 = distinct !{null, null}
!73 = distinct !{null, ptr @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsknai52m1gBp_5bytes5bytes5BytesECsgZAIVb0XKpv_9ssservice, null}
!74 = distinct !{ptr @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs7ewmRfXve8r_4http3uri3UriECsgZAIVb0XKpv_9ssservice, null, null, null, null, ptr @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsknai52m1gBp_5bytes5bytes5BytesECsgZAIVb0XKpv_9ssservice, null}
!75 = distinct !{ptr @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs7ewmRfXve8r_4http3uri3UriECsgZAIVb0XKpv_9ssservice, null, null, ptr @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsknai52m1gBp_5bytes5bytes5BytesECsgZAIVb0XKpv_9ssservice, null}
!76 = distinct !{ptr @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs7ewmRfXve8r_4http3uri3UriECsgZAIVb0XKpv_9ssservice, null, null, ptr @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsknai52m1gBp_5bytes5bytes5BytesECsgZAIVb0XKpv_9ssservice, null}
!77 = distinct !{!77, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsgZAIVb0XKpv_9ssservice"}
!78 = distinct !{!78, !77, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsgZAIVb0XKpv_9ssservice: argument 0"}
!79 = distinct !{null, ptr @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaI3lGUjttVO_5hyper5error5ErrorECsgZAIVb0XKpv_9ssservice, null, null, null, null}
!80 = distinct !{null, null, null}
!81 = distinct !{null, null, null, null, null, null, null, null, null, null, null, ptr @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsknai52m1gBp_5bytes5bytes5BytesECsgZAIVb0XKpv_9ssservice, null}
!82 = distinct !{null}
!83 = distinct !{null, null, null, null, null, null, null, null}
!84 = distinct !{null, null, null, null, null, null, null, null}
!85 = distinct !{null, null, null, null, null, null, null, null}
!86 = distinct !{null, null, null, null, null, null, null, null}
!87 = distinct !{null, null, null, null, null, null, null, null}
!88 = distinct !{null, null, null, null, null, null, null, null}
!89 = distinct !{null, null, null, null, null, null, null, null}
!90 = distinct !{null, null, null, null, null, null, null, null}
!91 = distinct !{null, null, null, null, null, null, null, null}
!92 = distinct !{null, null, null, null, null, null, null, null}
!93 = distinct !{null, null, null, null, null, null, null, null}
!94 = distinct !{null, null, null, null, null, null, null, null}
!95 = distinct !{null, null, null, null, null, null, null, null}
!96 = distinct !{null, null, null, null, null, null, null, null}
!97 = distinct !{null, null, null, null, null, null, null, null}
!98 = distinct !{null, null, null, null, null, null, null, null}
!99 = distinct !{null, null, null, null, null, null, null, null}
!100 = distinct !{null, null, null, null, null, null, null, null}
!101 = distinct !{null, null, null, null, null, null, null, null}
!102 = distinct !{null, null, null, null, null, null, null, null}
!103 = distinct !{null, null, null, null, null, null, null, null}
!104 = distinct !{null, null, null, null, null, null, null, null}
!105 = distinct !{null, null, null, null, null, null, null, null}
!106 = distinct !{null, null, null, null, null, null, null, null}
!107 = distinct !{null, null, null, null, null, null, null, null}
!108 = distinct !{null, null, null, null, null, null, null, null}
!109 = distinct !{null, null, null, null, null, null, null, null}
!110 = distinct !{null, null, null, null, null, null, null, null}
!111 = distinct !{null, null, null, null, null, null, null, null}
!112 = distinct !{null, null, null, null, null, null, null, null}
!113 = distinct !{null, null, null, null, null, null, null, null}
!114 = distinct !{null, null, null, null, null, null, null, null}
!115 = distinct !{null, null, null, null, null, null, null, null}
!116 = distinct !{null, null, null, null, null, null, null, null}
!117 = distinct !{null, null, null, null, null, null, null, null}
!118 = distinct !{null, null, null, null, null, null, null, null}
!119 = distinct !{null, null, null, null, null, null, null, null}
!120 = distinct !{null, null, null, null, null, null, null, null}
!121 = distinct !{null, null, null, null, null, null, null, null}
!122 = distinct !{null, null, null, null, null, null, null, null}
!123 = distinct !{null, null, null, null, null, null, null, null}
end_hunk_1
