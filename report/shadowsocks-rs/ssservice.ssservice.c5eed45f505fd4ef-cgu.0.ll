Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/shadowsocks-rs/original/ssservice.ssservice.c5eed45f505fd4ef-cgu.0?download=true
inline.NumInlined: 40153
inline.NumDeleted: 17541
loop-unroll.NumCompletelyUnrolled: 94
loop-unroll.NumRuntimeUnrolled: 164
loop-unroll.NumUnrolled: 272
begin_hunk_0_@_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode15ReadHuffmanCodeNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB11_B11_ECsgZAIVb0XKpv_9ssservice:bb.a
  br i1 %i.hm, label %bb.bl, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.hn = icmp eq i16 %i.hg, 16                   ; 2 uses
  %..i52 = select i1 %i.hn, i32 2, i32 3          ; 3 uses
  %i.ho = zext nneg i32 %..i52 to i64
  %i.hp = and i32 %i.hk, 63
  %i.hq = zext nneg i32 %i.hp to i64
  %i.hr = lshr i64 %i.gz, %i.hq
  %i.hs = trunc i64 %i.hr to i32
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr @379, i64 %i.ho
  %i.hu = load i32, ptr %i.ht, align 4, !noalias !30634, !noundef !177
  %i.hv = and i32 %i.hu, %i.hs
  %i.hw = add i32 %i.hk, %..i52
  store i32 %i.hw, ptr %i.g, align 8, !alias.scope !30632
  %i.hx = load i64, ptr %i.m, align 8, !alias.scope !30632, !noundef !177
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30635)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30636)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30637)
  %.sroa.07.0.i.i = select i1 %i.hn, i32 %.sroa.020.060.i, i32 0 ; 7 uses
  %.not.i.i53 = icmp eq i32 %.sroa.022.059.i, %.sroa.07.0.i.i
  br i1 %.not.i.i53, label %bb.az, label %.thread.i.i

bb.az:                                            ; preds = %bb.ay
  %.not25.i.i = icmp eq i32 %.sroa.014.062.i, 0
  br i1 %.not25.i.i, label %.thread.i.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.hy = add i32 %.sroa.014.062.i, -2
  %i.hz = shl i32 %i.hy, %..i52
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.ba, %bb.az, %bb.ay
  %.sroa.022.2.i = phi i32 [ %.sroa.022.059.i, %bb.az ], [ %.sroa.022.059.i, %bb.ba ], [ %.sroa.07.0.i.i, %bb.ay ] ; 2 uses
  %i.ia = phi i32 [ 0, %bb.az ], [ %i.hz, %bb.ba ], [ 0, %bb.ay ]
  %i.ib = phi i32 [ 0, %bb.az ], [ %.sroa.014.062.i, %bb.ba ], [ 0, %bb.ay ]
  %i.ic = add i32 %i.hv, 3
  %i.id = add i32 %i.ic, %i.ia                    ; 3 uses
  %i.ie = sub i32 %i.id, %i.ib                    ; 3 uses
  %i.if = add i32 %i.ie, %.sroa.0.063.i           ; 4 uses
  %i.ig = icmp ugt i32 %i.if, %1
  br i1 %i.ig, label %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode21ReadSymbolCodeLengthsNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB17_B17_ECsgZAIVb0XKpv_9ssservice.exit.thread81, label %bb.bb

bb.bb:                                            ; preds = %.thread.i.i
  %i.ih = icmp eq i32 %.sroa.07.0.i.i, 0
  br i1 %i.ih, label %_RNvNtCsl4v216RJbSI_19brotli_decompressor6decode25ProcessRepeatedCodeLength.exit.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ii = zext i32 %.sroa.07.0.i.i to i64         ; 4 uses
  %i.ij = icmp ult i32 %.sroa.07.0.i.i, 32
  br i1 %i.ij, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %i.gw, i64 %i.ii ; 2 uses
  %i.il = load i32, ptr %i.ik, align 4, !alias.scope !30638, !noundef !177
  %i.im = trunc i64 %i.hx to i32
  br label %bb.bf

bb.be:                                            ; preds = %bb.bc
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.ii, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2373) #62, !noalias !30639
  unreachable

bb.bf:                                            ; preds = %bb.bg, %bb.bd
  %i.in = phi i32 [ %.sroa.0.063.i, %bb.bd ], [ %i.it, %bb.bg ] ; 4 uses
  %.sroa.09.0.i.i = phi i32 [ %i.il, %bb.bd ], [ %i.in, %bb.bg ]
  %i.io = add i32 %.sroa.09.0.i.i, %i.im          ; 2 uses
  %i.ip = sext i32 %i.io to i64                   ; 2 uses
  %i.iq = icmp ult i32 %i.io, 720
  br i1 %i.iq, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.ir = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %i.ip
  %i.is = trunc i32 %i.in to i16
  store i16 %i.is, ptr %i.ir, align 2, !alias.scope !30640
  %i.it = add i32 %i.in, 1                        ; 2 uses
  %i.iu = icmp eq i32 %i.it, %i.if
  br i1 %i.iu, label %bb.bi, label %bb.bf

bb.bh:                                            ; preds = %bb.bf
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.ip, i64 noundef 720, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2374) #62, !noalias !30639
  unreachable

bb.bi:                                            ; preds = %bb.bg
  store i32 %i.in, ptr %i.ik, align 4, !alias.scope !30638
  %i.iv = icmp ult i32 %.sroa.07.0.i.i, 16
  br i1 %i.iv, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.ii, i64 noundef 16, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2375) #62, !noalias !30639
  unreachable

bb.bk:                                            ; preds = %bb.bi
  %i.iw = sub nuw nsw i32 15, %.sroa.07.0.i.i
  %i.ix = shl i32 %i.ie, %i.iw
  %i.iy = sub i32 %.sroa.016.061.i, %i.ix
  %i.iz = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %i.ii ; 2 uses
  %i.ja = load i16, ptr %i.iz, align 2, !alias.scope !30641, !noundef !177
  %i.jb = trunc i32 %i.ie to i16
  %i.jc = add i16 %i.ja, %i.jb
  store i16 %i.jc, ptr %i.iz, align 2, !alias.scope !30641
  br label %_RNvNtCsl4v216RJbSI_19brotli_decompressor6decode25ProcessRepeatedCodeLength.exit.i

bb.bl:                                            ; preds = %bb.ax
  %i.jd = load i64, ptr %i.m, align 8, !alias.scope !30632, !noundef !177
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30642)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30643)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30644)
  %i.je = icmp eq i16 %i.hg, 0
  br i1 %i.je, label %_RNvNtCsl4v216RJbSI_19brotli_decompressor6decode23ProcessSingleCodeLength.exit.i, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.jf = zext nneg i16 %i.hg to i64              ; 2 uses
  %i.jg = trunc i64 %i.jd to i32
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %i.gw, i64 %i.jf ; 2 uses
  %i.ji = load i32, ptr %i.jh, align 4, !alias.scope !30645, !noundef !177
  %i.jj = add i32 %i.ji, %i.jg                    ; 2 uses
  %i.jk = sext i32 %i.jj to i64                   ; 2 uses
  %i.jl = icmp ult i32 %i.jj, 720
  br i1 %i.jl, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.jm = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %i.jk
  %i.jn = trunc i32 %.sroa.0.063.i to i16
  store i16 %i.jn, ptr %i.jm, align 2, !alias.scope !30646
  store i32 %.sroa.0.063.i, ptr %i.jh, align 4, !alias.scope !30645
  %i.jo = lshr exact i32 32768, %i.hl
  %i.jp = sub i32 %.sroa.016.061.i, %i.jo
  %i.jq = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %i.jf ; 2 uses
  %i.jr = load i16, ptr %i.jq, align 2, !alias.scope !30647, !noundef !177
  %i.js = add i16 %i.jr, 1
  store i16 %i.js, ptr %i.jq, align 2, !alias.scope !30647
  br label %_RNvNtCsl4v216RJbSI_19brotli_decompressor6decode23ProcessSingleCodeLength.exit.i

bb.bo:                                            ; preds = %bb.bm
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.jk, i64 noundef 720, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2372) #62, !noalias !30648
  unreachable

_RNvNtCsl4v216RJbSI_19brotli_decompressor6decode23ProcessSingleCodeLength.exit.i: ; preds = %bb.bn, %bb.bl
  %.sroa.020.2.i = phi i32 [ %i.hl, %bb.bn ], [ %.sroa.020.060.i, %bb.bl ]
  %.sroa.016.3.i = phi i32 [ %i.jp, %bb.bn ], [ %.sroa.016.061.i, %bb.bl ]
  %i.jt = add nuw i32 %.sroa.0.063.i, 1
  br label %_RNvNtCsl4v216RJbSI_19brotli_decompressor6decode25ProcessRepeatedCodeLength.exit.i

_RNvNtCsl4v216RJbSI_19brotli_decompressor6decode25ProcessRepeatedCodeLength.exit.i: ; preds = %_RNvNtCsl4v216RJbSI_19brotli_decompressor6decode23ProcessSingleCodeLength.exit.i, %bb.bk, %bb.bb
  %.sroa.022.1.i = phi i32 [ %.sroa.022.059.i, %_RNvNtCsl4v216RJbSI_19brotli_decompressor6decode23ProcessSingleCodeLength.exit.i ], [ %.sroa.022.2.i, %bb.bb ], [ %.sroa.022.2.i, %bb.bk ]
  %.sroa.020.1.i = phi i32 [ %.sroa.020.2.i, %_RNvNtCsl4v216RJbSI_19brotli_decompressor6decode23ProcessSingleCodeLength.exit.i ], [ %.sroa.020.060.i, %bb.bb ], [ %.sroa.020.060.i, %bb.bk ]
  %.sroa.016.1.i = phi i32 [ %.sroa.016.3.i, %_RNvNtCsl4v216RJbSI_19brotli_decompressor6decode23ProcessSingleCodeLength.exit.i ], [ %.sroa.016.061.i, %bb.bb ], [ %i.iy, %bb.bk ] ; 3 uses
  %.sroa.014.1.i = phi i32 [ 0, %_RNvNtCsl4v216RJbSI_19brotli_decompressor6decode23ProcessSingleCodeLength.exit.i ], [ %i.id, %bb.bb ], [ %i.id, %bb.bk ]
  %.sroa.0.124.i = phi i32 [ %i.jt, %_RNvNtCsl4v216RJbSI_19brotli_decompressor6decode23ProcessSingleCodeLength.exit.i ], [ %i.if, %bb.bb ], [ %i.if, %bb.bk ] ; 2 uses
  %i.ju = icmp ult i32 %.sroa.0.124.i, %1
  %i.jv = icmp ne i32 %.sroa.016.1.i, 0
  %or.cond.i54 = select i1 %i.ju, i1 %i.jv, i1 false
  br i1 %or.cond.i54, label %bb.aw, label %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode21ReadSymbolCodeLengthsNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB17_B17_ECsgZAIVb0XKpv_9ssservice.exit.thread81

_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode21ReadSymbolCodeLengthsNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB17_B17_ECsgZAIVb0XKpv_9ssservice.exit.thread81: ; preds = %.thread.i.i, %_RNvNtCsl4v216RJbSI_19brotli_decompressor6decode25ProcessRepeatedCodeLength.exit.i, %bb.av
  %.sroa.016.061.lcssa.sink.i.ph = phi i32 [ %i.gd, %bb.av ], [ 1048575, %.thread.i.i ], [ %.sroa.016.1.i, %_RNvNtCsl4v216RJbSI_19brotli_decompressor6decode25ProcessRepeatedCodeLength.exit.i ] ; 2 uses
  store i32 %.sroa.016.061.lcssa.sink.i.ph, ptr %i.d, align 4, !alias.scope !30632
  br label %.loopexit93

_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode21ReadSymbolCodeLengthsNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB17_B17_ECsgZAIVb0XKpv_9ssservice.exit: ; preds = %bb.aw
  store i32 %.sroa.0.063.i, ptr %i.o, align 4, !alias.scope !30632
  store i32 %.sroa.014.062.i, ptr %i.c, align 8, !alias.scope !30632
  store i32 %.sroa.020.060.i, ptr %i.p, align 8, !alias.scope !30632
  store i32 %.sroa.022.059.i, ptr %i.q, align 4, !alias.scope !30632
  store i32 %.sroa.016.061.i, ptr %i.d, align 4, !alias.scope !30632
  br label %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode21ReadSymbolCodeLengthsNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB17_B17_ECsgZAIVb0XKpv_9ssservice.exit.thread

.loopexit96:                                      ; preds = %bb.e, %.loopexit96.loopexit
  %i.jw = phi i64 [ %i.ak, %.loopexit96.loopexit ], [ %.promoted14.i, %bb.e ]
  %.lcssa7.i = phi i32 [ %i.al, %.loopexit96.loopexit ], [ %.promoted.i, %bb.e ] ; 2 uses
  %i.jx = and i32 %.lcssa7.i, 63
  %i.jy = zext nneg i32 %i.jx to i64
  %i.jz = lshr i64 %i.jw, %i.jy
  %i.ka = trunc i64 %i.jz to i32
  %i.kb = and i32 %i.ka, 3                        ; 2 uses
  store i32 %i.kb, ptr %i.e, align 4, !alias.scope !30611
  %i.kc = add i32 %.lcssa7.i, 2
  store i32 %i.kc, ptr %i.g, align 8, !alias.scope !30610
  %i.kd = icmp eq i32 %i.kb, 1
  br i1 %i.kd, label %bb.d, label %bb.c

_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit: ; preds = %bb.ca, %bb.cx, %._crit_edge.i.us.i, %bb.af, %._crit_edge.i49, %.lr.ph.i, %bb.am, %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit.i, %.thread, %.loopexit93, %bb.di, %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit64, %bb.bw, %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit44
  %.sroa.06.0 = phi i32 [ 2, %.lr.ph.i ], [ 2, %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit44 ], [ -7, %.thread ], [ 1, %bb.bw ], [ 2, %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit64 ], [ -6, %._crit_edge.i49 ], [ 1, %bb.di ], [ -7, %.loopexit93 ], [ 2, %bb.am ], [ -5, %bb.af ], [ -4, %._crit_edge.i.us.i ], [ 2, %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit.i ], [ 2, %bb.cx ], [ 2, %bb.ca ]
  ret i32 %.sroa.06.0

_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit44: ; preds = %.lr.ph.i39
  store i8 1, ptr %i.b, align 8
  br label %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit

bb.bp:                                            ; preds = %bb.ag
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30649)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30650)
  %.promoted.i55 = load i32, ptr %i.g, align 8, !alias.scope !30649 ; 2 uses
  %.not.i56 = icmp eq i32 %.promoted.i55, 64
  %.promoted14.i60 = load i64, ptr %i.f, align 8, !alias.scope !30649 ; 2 uses
  br i1 %.not.i56, label %bb.bq, label %.loopexit

bb.bq:                                            ; preds = %bb.bp
  %.promoted17.i61 = load i32, ptr %i.h, align 8, !alias.scope !30649 ; 2 uses
  %.promoted18.i62 = load i32, ptr %i.i, align 4, !alias.scope !30649 ; 3 uses
  %i.ke = zext i32 %.promoted18.i62 to i64        ; 2 uses
  %i.kf = icmp eq i32 %.promoted17.i61, 0
  br i1 %i.kf, label %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit64, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %9 = icmp ult i32 %.promoted18.i62, %i.j
  br i1 %9, label %.loopexit.loopexit, label %10

10:                                               ; preds = %bb.br
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.ke, i64 noundef range(i64 8, 4097) %8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @385) #62, !noalias !30651
  unreachable

_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit64: ; preds = %bb.bq
  store i8 3, ptr %i.b, align 8
  br label %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit

.loopexit.loopexit:                               ; preds = %bb.br
  %i.kg = getelementptr inbounds nuw i8, ptr %7, i64 %i.ke
  %i.kh = load i8, ptr %i.kg, align 1, !alias.scope !30650, !noundef !177
  %i.ki = zext i8 %i.kh to i64
  %i.kj = tail call i64 @llvm.fshl.i64(i64 %i.ki, i64 %.promoted14.i60, i64 56) ; 2 uses
  store i64 %i.kj, ptr %i.f, align 8, !alias.scope !30649
  %i.kk = add i32 %.promoted17.i61, -1
  store i32 %i.kk, ptr %i.h, align 8, !alias.scope !30649
  %indvars.iv.next351 = add nuw i32 %.promoted18.i62, 1
  store i32 %indvars.iv.next351, ptr %i.i, align 4, !alias.scope !30649
  br label %.loopexit

.loopexit:                                        ; preds = %bb.bp, %.loopexit.loopexit
  %i.kl = phi i64 [ %i.kj, %.loopexit.loopexit ], [ %.promoted14.i60, %bb.bp ]
  %.lcssa7.i58 = phi i32 [ 56, %.loopexit.loopexit ], [ %.promoted.i55, %bb.bp ] ; 2 uses
  %i.km = and i32 %.lcssa7.i58, 63
  %i.kn = zext nneg i32 %i.km to i64
  %i.ko = lshr i64 %i.kl, %i.kn
  %i.kp = trunc i64 %i.ko to i32
  %i.kq = and i32 %i.kp, 1
  %i.kr = add i32 %.lcssa7.i58, 1
  store i32 %i.kr, ptr %i.g, align 8, !alias.scope !30649
  %i.ks = add nuw nsw i32 %i.kq, 3                ; 2 uses
  store i32 %i.ks, ptr %i.o, align 4
  br label %bb.bs

bb.bs:                                            ; preds = %bb.ag, %.loopexit
  %i.kt = phi i32 [ %i.dz, %bb.ag ], [ %i.ks, %.loopexit ]
  %i.ku = icmp ugt i64 %4, %3
  br i1 %i.ku, label %bb.bu, label %bb.bt, !prof !186

bb.bt:                                            ; preds = %bb.bs
  %i.kv = sub nuw nsw i64 %3, %4
  %i.kw = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %4
  %i.kx = tail call noundef i32 @_RNvNtCsl4v216RJbSI_19brotli_decompressor7huffman29BrotliBuildSimpleHuffmanTable(ptr noalias nofree noundef nonnull align 2 %i.kw, i64 noundef %i.kv, i32 noundef 8, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %i.n, i64 noundef 720, i32 noundef %i.kt) #52
  %.not32 = icmp eq ptr %5, null
  br i1 %.not32, label %bb.bw, label %bb.bv

bb.bu:                                            ; preds = %bb.bs
  tail call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %4, i64 noundef %3, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @365) #62
  unreachable

bb.bv:                                            ; preds = %bb.bt
  store i32 %i.kx, ptr %5, align 4
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bt
  store i8 0, ptr %i.b, align 8
  br label %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit

_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode25ReadCodeLengthCodeLengthsNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB1b_B1b_ECsgZAIVb0XKpv_9ssservice.exit: ; preds = %._crit_edge.i49
  tail call void @_RNvNtCsl4v216RJbSI_19brotli_decompressor7huffman34BrotliBuildCodeLengthsHuffmanTable(ptr noalias nofree noundef nonnull align 2 %6, i64 noundef 32, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.k, i64 noundef 18, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %i.l, i64 noundef 16) #52
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.l, i8 0, i64 32, i1 false)
  %.sroa.077.0.ptr = getelementptr inbounds nuw i8, ptr %6, i64 128
  store i32 -16, ptr %.sroa.077.0.ptr, align 8
  %i.ky = load i64, ptr %i.m, align 8, !noundef !177
  %i.kz = shl i64 %i.ky, 32
  %sext = add i64 %i.kz, -68719476736
  %i.la = ashr exact i64 %sext, 32                ; 3 uses
  %i.lb = icmp ult i64 %i.la, 720
  br i1 %i.lb, label %.preheader99.1, label %bb.bx

.preheader99.1:                                   ; preds = %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode25ReadCodeLengthCodeLengthsNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB1b_B1b_ECsgZAIVb0XKpv_9ssservice.exit
  %i.lc = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %i.la
  store i16 -1, ptr %i.lc, align 2
  %.sroa.077.0.ptr.1 = getelementptr inbounds nuw i8, ptr %6, i64 132
  store i32 -15, ptr %.sroa.077.0.ptr.1, align 4
  %i.ld = load i64, ptr %i.m, align 8, !noundef !177
  %i.le = shl i64 %i.ld, 32
  %sext.1 = add i64 %i.le, -64424509440
  %i.lf = ashr exact i64 %sext.1, 32              ; 3 uses
  %i.lg = icmp ult i64 %i.lf, 720
  br i1 %i.lg, label %.preheader99.2, label %bb.bx

.preheader99.2:                                   ; preds = %.preheader99.1
  %i.lh = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %i.lf
  store i16 -1, ptr %i.lh, align 2
  %.sroa.077.0.ptr.2 = getelementptr inbounds nuw i8, ptr %6, i64 136
  store i32 -14, ptr %.sroa.077.0.ptr.2, align 8
  %i.li = load i64, ptr %i.m, align 8, !noundef !177
  %i.lj = shl i64 %i.li, 32
  %sext.2 = add i64 %i.lj, -60129542144
  %i.lk = ashr exact i64 %sext.2, 32              ; 3 uses
  %i.ll = icmp ult i64 %i.lk, 720
  br i1 %i.ll, label %.preheader99.3, label %bb.bx

.preheader99.3:                                   ; preds = %.preheader99.2
  %i.lm = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %i.lk
  store i16 -1, ptr %i.lm, align 2
  %.sroa.077.0.ptr.3 = getelementptr inbounds nuw i8, ptr %6, i64 140
  store i32 -13, ptr %.sroa.077.0.ptr.3, align 4
  %i.ln = load i64, ptr %i.m, align 8, !noundef !177
  %i.lo = shl i64 %i.ln, 32
  %sext.3 = add i64 %i.lo, -55834574848
  %i.lp = ashr exact i64 %sext.3, 32              ; 3 uses
  %i.lq = icmp ult i64 %i.lp, 720
  br i1 %i.lq, label %.preheader99.4, label %bb.bx

.preheader99.4:                                   ; preds = %.preheader99.3
  %i.lr = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %i.lp
  store i16 -1, ptr %i.lr, align 2
  %.sroa.077.0.ptr.4 = getelementptr inbounds nuw i8, ptr %6, i64 144
  store i32 -12, ptr %.sroa.077.0.ptr.4, align 8
  %i.ls = load i64, ptr %i.m, align 8, !noundef !177
  %i.lt = shl i64 %i.ls, 32
  %sext.4 = add i64 %i.lt, -51539607552
  %i.lu = ashr exact i64 %sext.4, 32              ; 3 uses
  %i.lv = icmp ult i64 %i.lu, 720
  br i1 %i.lv, label %.preheader99.5, label %bb.bx

.preheader99.5:                                   ; preds = %.preheader99.4
  %i.lw = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %i.lu
  store i16 -1, ptr %i.lw, align 2
  %.sroa.077.0.ptr.5 = getelementptr inbounds nuw i8, ptr %6, i64 148
  store i32 -11, ptr %.sroa.077.0.ptr.5, align 4
  %i.lx = load i64, ptr %i.m, align 8, !noundef !177
  %i.ly = shl i64 %i.lx, 32
  %sext.5 = add i64 %i.ly, -47244640256
  %i.lz = ashr exact i64 %sext.5, 32              ; 3 uses
  %i.ma = icmp ult i64 %i.lz, 720
  br i1 %i.ma, label %.preheader99.6, label %bb.bx

.preheader99.6:                                   ; preds = %.preheader99.5
  %i.mb = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %i.lz
  store i16 -1, ptr %i.mb, align 2
  %.sroa.077.0.ptr.6 = getelementptr inbounds nuw i8, ptr %6, i64 152
  store i32 -10, ptr %.sroa.077.0.ptr.6, align 8
  %i.mc = load i64, ptr %i.m, align 8, !noundef !177
  %i.md = shl i64 %i.mc, 32
  %sext.6 = add i64 %i.md, -42949672960
  %i.me = ashr exact i64 %sext.6, 32              ; 3 uses
  %i.mf = icmp ult i64 %i.me, 720
  br i1 %i.mf, label %.preheader99.7, label %bb.bx

.preheader99.7:                                   ; preds = %.preheader99.6
  %i.mg = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %i.me
  store i16 -1, ptr %i.mg, align 2
  %.sroa.077.0.ptr.7 = getelementptr inbounds nuw i8, ptr %6, i64 156
  store i32 -9, ptr %.sroa.077.0.ptr.7, align 4
  %i.mh = load i64, ptr %i.m, align 8, !noundef !177
  %i.mi = shl i64 %i.mh, 32
  %sext.7 = add i64 %i.mi, -38654705664
  %i.mj = ashr exact i64 %sext.7, 32              ; 3 uses
  %i.mk = icmp ult i64 %i.mj, 720
  br i1 %i.mk, label %.preheader99.8, label %bb.bx

.preheader99.8:                                   ; preds = %.preheader99.7
  %i.ml = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %i.mj
  store i16 -1, ptr %i.ml, align 2
  %.sroa.077.0.ptr.8 = getelementptr inbounds nuw i8, ptr %6, i64 160
  store i32 -8, ptr %.sroa.077.0.ptr.8, align 8
  %i.mm = load i64, ptr %i.m, align 8, !noundef !177
  %i.mn = shl i64 %i.mm, 32
  %sext.8 = add i64 %i.mn, -34359738368
  %i.mo = ashr exact i64 %sext.8, 32              ; 3 uses
  %i.mp = icmp ult i64 %i.mo, 720
  br i1 %i.mp, label %.preheader99.9, label %bb.bx

.preheader99.9:                                   ; preds = %.preheader99.8
  %i.mq = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %i.mo
  store i16 -1, ptr %i.mq, align 2
  %.sroa.077.0.ptr.9 = getelementptr inbounds nuw i8, ptr %6, i64 164
  store i32 -7, ptr %.sroa.077.0.ptr.9, align 4
  %i.mr = load i64, ptr %i.m, align 8, !noundef !177
  %i.ms = shl i64 %i.mr, 32
  %sext.9 = add i64 %i.ms, -30064771072
  %i.mt = ashr exact i64 %sext.9, 32              ; 3 uses
  %i.mu = icmp ult i64 %i.mt, 720
  br i1 %i.mu, label %.preheader99.10, label %bb.bx

.preheader99.10:                                  ; preds = %.preheader99.9
  %i.mv = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %i.mt
  store i16 -1, ptr %i.mv, align 2
  %.sroa.077.0.ptr.10 = getelementptr inbounds nuw i8, ptr %6, i64 168
  store i32 -6, ptr %.sroa.077.0.ptr.10, align 8
  %i.mw = load i64, ptr %i.m, align 8, !noundef !177
  %i.mx = shl i64 %i.mw, 32
  %sext.10 = add i64 %i.mx, -25769803776
  %i.my = ashr exact i64 %sext.10, 32             ; 3 uses
  %i.mz = icmp ult i64 %i.my, 720
  br i1 %i.mz, label %.preheader99.11, label %bb.bx

.preheader99.11:                                  ; preds = %.preheader99.10
  %i.na = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %i.my
  store i16 -1, ptr %i.na, align 2
  %.sroa.077.0.ptr.11 = getelementptr inbounds nuw i8, ptr %6, i64 172
  store i32 -5, ptr %.sroa.077.0.ptr.11, align 4
  %i.nb = load i64, ptr %i.m, align 8, !noundef !177
  %i.nc = shl i64 %i.nb, 32
  %sext.11 = add i64 %i.nc, -21474836480
  %i.nd = ashr exact i64 %sext.11, 32             ; 3 uses
  %i.ne = icmp ult i64 %i.nd, 720
  br i1 %i.ne, label %.preheader99.12, label %bb.bx

.preheader99.12:                                  ; preds = %.preheader99.11
  %i.nf = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %i.nd
  store i16 -1, ptr %i.nf, align 2
  %.sroa.077.0.ptr.12 = getelementptr inbounds nuw i8, ptr %6, i64 176
  store i32 -4, ptr %.sroa.077.0.ptr.12, align 8
  %i.ng = load i64, ptr %i.m, align 8, !noundef !177
  %i.nh = shl i64 %i.ng, 32
  %sext.12 = add i64 %i.nh, -17179869184
  %i.ni = ashr exact i64 %sext.12, 32             ; 3 uses
  %i.nj = icmp ult i64 %i.ni, 720
  br i1 %i.nj, label %.preheader99.13, label %bb.bx

.preheader99.13:                                  ; preds = %.preheader99.12
  %i.nk = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %i.ni
  store i16 -1, ptr %i.nk, align 2
  %.sroa.077.0.ptr.13 = getelementptr inbounds nuw i8, ptr %6, i64 180
  store i32 -3, ptr %.sroa.077.0.ptr.13, align 4
  %i.nl = load i64, ptr %i.m, align 8, !noundef !177
end_hunk_0
begin_hunk_1_@_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode15ReadHuffmanCodeNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB11_B11_ECsgZAIVb0XKpv_9ssservice:bb.a
  br label %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc noundef range(i32 -31, 4) i32 @_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode16DecodeContextMapNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB12_B12_ECsgZAIVb0XKpv_9ssservice(i64 noundef range(i64 0, 274877906881) %0, i1 noundef zeroext %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(2600) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef range(i64 8, 4097) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 7 uses
  %i.b = alloca [4 x i8], align 4                 ; 8 uses
  %i.c = alloca [1 x i8], align 1                 ; 3 uses
  %i.d = zext i1 %1 to i8
  store i8 %i.d, ptr %i.c, align 1
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 2326
  %i.f = load i8, ptr %i.e, align 2, !range !286, !noundef !177
  switch i8 %i.f, label %bb.b [
    i8 21, label %bb.c
    i8 22, label %bb.d
  ], !prof !287

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @358, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @372) #62
  unreachable

bb.c:                                             ; preds = %bb.a
  br i1 %1, label %bb.e, label %.critedge3, !prof !186

bb.d:                                             ; preds = %bb.a
  br i1 %1, label %.critedge3, label %bb.f, !prof !191

bb.e:                                             ; preds = %bb.c
  call void @_RINvNtCsf3Ta7LF998c_4core9panicking13assert_failedbbECsl4v216RJbSI_19brotli_decompressor(i8 noundef 0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.c, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) @6, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @370) #62
  unreachable

bb.f:                                             ; preds = %bb.d
  call void @_RINvNtCsf3Ta7LF998c_4core9panicking13assert_failedbbECsl4v216RJbSI_19brotli_decompressor(i8 noundef 0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.c, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) @226, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @371) #62
  unreachable

.critedge3:                                       ; preds = %bb.d, %bb.c
  %.sink = phi i64 [ 2292, %bb.c ], [ 2232, %bb.d ]
  %.sink117 = phi i64 [ 1840, %bb.c ], [ 1792, %bb.d ]
  %.sink116 = phi i64 [ 1848, %bb.c ], [ 1800, %bb.d ]
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 %.sink
  %.sroa.0.0 = load i32, ptr %i.g, align 4, !noundef !177 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 %.sink117 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !177, !noundef !177 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 %.sink116 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !noundef !177 ; 7 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.h, align 8
  store i64 0, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %.sroa.0.0, ptr %i.b, align 4
  %i.l = trunc i64 %0 to i32                      ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30716)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30717)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30718)
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 2329 ; 7 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 2272 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 2276 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 2280 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 1808 ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 1816 ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 1872 ; 9 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 1880 ; 7 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 1888 ; 6 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 1884 ; 6 uses
  %i.w = trunc nuw nsw i64 %4 to i32              ; 3 uses
  %i.x = and i64 %0, 4294967295                   ; 5 uses
  %i.y = icmp eq i32 %i.l, 0                      ; 2 uses
  %.pre.i = load i8, ptr %i.m, align 1, !range !227, !alias.scope !30717
  switch i8 %.pre.i, label %default.unreachable [
    i8 0, label %bb.i
    i8 1, label %bb.j
    i8 2, label %._crit_edge
    i8 3, label %._crit_edge71
    i8 4, label %bb.o
  ]

._crit_edge71:                                    ; preds = %.critedge3
  %.pre72 = load i32, ptr %i.p, align 8, !alias.scope !30717
  br label %bb.n

._crit_edge:                                      ; preds = %.critedge3
  %.pre = load i32, ptr %i.o, align 4, !alias.scope !30717
  br label %bb.m

._crit_edge.loopexit.i:                           ; preds = %.backedge.i, %bb.n
  store i8 4, ptr %i.m, align 1, !alias.scope !30717
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !30719
  br label %bb.o

bb.g:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2D0wXkiOfwW_12alloc_stdlib10heap_alloc7WrapBoxNtNtCsl4v216RJbSI_19brotli_decompressor7huffman11HuffmanCodeEECsgZAIVb0XKpv_9ssservice.exit.i
  store i32 65535, ptr %i.p, align 8, !alias.scope !30717
  store i8 3, ptr %i.m, align 1, !alias.scope !30717
  br label %bb.n

bb.h:                                             ; preds = %bb.w
  store i8 1, ptr %i.m, align 1, !alias.scope !30717
  br label %bb.j

default.unreachable:                              ; preds = %.critedge3
  unreachable

bb.i:                                             ; preds = %.critedge3
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 2330
  %i.aa = call noundef i32 @_RNvNtCsl4v216RJbSI_19brotli_decompressor6decode17DecodeVarLenUint8(ptr noalias nofree noundef nonnull dereferenceable(1) %i.z, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s, ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef range(i64 8, 4097) %4) #52, !noalias !30720 ; 2 uses
  %i.ab = icmp eq i32 %i.aa, 1
  br i1 %i.ab, label %bb.s, label %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode21DecodeContextMapInnerNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB17_B17_ECsgZAIVb0XKpv_9ssservice.exit

bb.j:                                             ; preds = %bb.h, %.critedge3
  %i.ac = phi i32 [ %i.bl, %bb.h ], [ %.sroa.0.0, %.critedge3 ]
  %.sroa.11.4 = phi i64 [ %i.x, %bb.h ], [ %i.k, %.critedge3 ] ; 2 uses
  %.sroa.0.4 = phi ptr [ %i.bj, %bb.h ], [ %i.i, %.critedge3 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !30721)
  call void @llvm.experimental.noalias.scope.decl(metadata !30722)
  %.promoted.i.i = load i32, ptr %i.t, align 8, !alias.scope !30723 ; 3 uses
  %i.ad = add i32 %.promoted.i.i, -60
  %.not.i.i = icmp ult i32 %i.ad, 5
  %.promoted11.i.i = load i64, ptr %i.s, align 8, !alias.scope !30723 ; 2 uses
  br i1 %.not.i.i, label %.lr.ph.i.i, label %.loopexit81.i

.lr.ph.i.i:                                       ; preds = %bb.j
  %.promoted13.i.i = load i32, ptr %i.u, align 8, !alias.scope !30723 ; 2 uses
  %.promoted14.i.i = load i32, ptr %i.v, align 4, !alias.scope !30723 ; 3 uses
  %i.ae = zext i32 %.promoted14.i.i to i64        ; 2 uses
  %i.af = icmp eq i32 %.promoted13.i.i, 0
  br i1 %i.af, label %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode21DecodeContextMapInnerNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB17_B17_ECsgZAIVb0XKpv_9ssservice.exit, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i
  %exitcond208.not.not.i = icmp ult i32 %.promoted14.i.i, %i.w
  br i1 %exitcond208.not.not.i, label %.loopexit81.loopexit.i, label %bb.l

.loopexit81.loopexit.i:                           ; preds = %bb.k
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 %i.ae
  %i.ah = load i8, ptr %i.ag, align 1, !alias.scope !30724, !noundef !177
  %i.ai = zext i8 %i.ah to i64
  %i.aj = call i64 @llvm.fshl.i64(i64 %i.ai, i64 %.promoted11.i.i, i64 56) ; 2 uses
  store i64 %i.aj, ptr %i.s, align 8, !alias.scope !30723
  %i.ak = add nsw i32 %.promoted.i.i, -8
  %i.al = add i32 %.promoted13.i.i, -1
  store i32 %i.al, ptr %i.u, align 8, !alias.scope !30723
  %indvars.iv.next204.i = add nuw nsw i32 %.promoted14.i.i, 1
  store i32 %indvars.iv.next204.i, ptr %i.v, align 4, !alias.scope !30723
  br label %.loopexit81.i

bb.l:                                             ; preds = %bb.k
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.ae, i64 noundef range(i64 8, 4097) %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @385) #62, !noalias !30725
  unreachable

bb.m:                                             ; preds = %._crit_edge, %.loopexit81.i
  %i.am = phi i32 [ %.sink257.i, %.loopexit81.i ], [ %.pre, %._crit_edge ]
  %i.an = phi i32 [ %i.ac, %.loopexit81.i ], [ %.sroa.0.0, %._crit_edge ]
  %.sroa.11.3 = phi i64 [ %.sroa.11.4, %.loopexit81.i ], [ %i.k, %._crit_edge ] ; 2 uses
  %.sroa.0.3 = phi ptr [ %.sroa.0.4, %.loopexit81.i ], [ %i.i, %._crit_edge ] ; 2 uses
  %i.ao = load ptr, ptr %i.q, align 8, !alias.scope !30717, !nonnull !177, !align !246, !noundef !177 ; 2 uses
  %i.ap = load i64, ptr %i.r, align 8, !alias.scope !30717, !noundef !177 ; 2 uses
  store ptr inttoptr (i64 2 to ptr), ptr %i.q, align 8, !alias.scope !30717
  store i64 0, ptr %i.r, align 8, !alias.scope !30717
  %i.aq = add i32 %i.am, %i.an                    ; 2 uses
  %i.ar = call fastcc noundef i32 @_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode15ReadHuffmanCodeNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB11_B11_ECsgZAIVb0XKpv_9ssservice(i32 noundef %i.aq, i32 noundef %i.aq, ptr noalias nofree noundef nonnull align 2 %i.ao, i64 noundef %i.ap, i64 noundef 0, ptr noalias nofree noundef align 4 dereferenceable_or_null(4) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(2600) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef range(i64 8, 4097) %4) #52, !noalias !30720 ; 2 uses
  %i.as = load ptr, ptr %i.q, align 8, !alias.scope !30717, !nonnull !177, !align !246, !noundef !177
  %i.at = load i64, ptr %i.r, align 8, !alias.scope !30717, !noundef !177 ; 2 uses
  store ptr %i.ao, ptr %i.q, align 8, !alias.scope !30717
  store i64 %i.ap, ptr %i.r, align 8, !alias.scope !30717
  %i.au = icmp eq i64 %i.at, 0
  br i1 %i.au, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2D0wXkiOfwW_12alloc_stdlib10heap_alloc7WrapBoxNtNtCsl4v216RJbSI_19brotli_decompressor7huffman11HuffmanCodeEECsgZAIVb0XKpv_9ssservice.exit.i, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i: ; preds = %bb.m
  %i.av = shl nuw nsw i64 %i.at, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.as, i64 noundef %i.av, i64 noundef 2) #52, !noalias !30720
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2D0wXkiOfwW_12alloc_stdlib10heap_alloc7WrapBoxNtNtCsl4v216RJbSI_19brotli_decompressor7huffman11HuffmanCodeEECsgZAIVb0XKpv_9ssservice.exit.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2D0wXkiOfwW_12alloc_stdlib10heap_alloc7WrapBoxNtNtCsl4v216RJbSI_19brotli_decompressor7huffman11HuffmanCodeEECsgZAIVb0XKpv_9ssservice.exit.i: ; preds = %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i, %bb.m
  %i.aw = icmp eq i32 %i.ar, 1
  br i1 %i.aw, label %bb.g, label %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode21DecodeContextMapInnerNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB17_B17_ECsgZAIVb0XKpv_9ssservice.exit

bb.n:                                             ; preds = %._crit_edge71, %bb.g
  %i.ax = phi i32 [ 65535, %bb.g ], [ %.pre72, %._crit_edge71 ] ; 2 uses
  %.sroa.11.2 = phi i64 [ %.sroa.11.3, %bb.g ], [ %i.k, %._crit_edge71 ] ; 10 uses
  %.sroa.0.2 = phi ptr [ %.sroa.0.3, %bb.g ], [ %i.i, %._crit_edge71 ] ; 6 uses
  %i.ay = load i32, ptr %i.n, align 8, !alias.scope !30717, !noundef !177 ; 2 uses
  %i.az = load i32, ptr %i.o, align 4, !alias.scope !30717, !noundef !177 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !30719
  store i32 %i.ax, ptr %i.a, align 4, !noalias !30719
  %i.ba = icmp ne i32 %i.ax, 65535                ; 2 uses
  %i.bb = icmp ult i32 %i.ay, %i.l
  %or.cond158.i = or i1 %i.bb, %i.ba
  br i1 %or.cond158.i, label %.lr.ph.i, label %._crit_edge.loopexit.i

bb.o:                                             ; preds = %._crit_edge.loopexit.i, %.critedge3
  %.sroa.11.1 = phi i64 [ %.sroa.11.2, %._crit_edge.loopexit.i ], [ %i.k, %.critedge3 ] ; 4 uses
  %.sroa.0.1 = phi ptr [ %.sroa.0.2, %._crit_edge.loopexit.i ], [ %i.i, %.critedge3 ] ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !30726)
  call void @llvm.experimental.noalias.scope.decl(metadata !30727)
  %.promoted.i43.i = load i32, ptr %i.t, align 8, !alias.scope !30728 ; 2 uses
  %.not.i44.i = icmp eq i32 %.promoted.i43.i, 64
  %.promoted14.i48.i = load i64, ptr %i.s, align 8, !alias.scope !30728 ; 2 uses
  br i1 %.not.i44.i, label %bb.p, label %.loopexit.i

bb.p:                                             ; preds = %bb.o
  %.promoted17.i.i = load i32, ptr %i.u, align 8, !alias.scope !30728 ; 2 uses
  %.promoted18.i.i = load i32, ptr %i.v, align 4, !alias.scope !30728 ; 3 uses
  %i.bc = zext i32 %.promoted18.i.i to i64        ; 2 uses
  %i.bd = icmp eq i32 %.promoted17.i.i, 0
  br i1 %i.bd, label %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %5 = icmp ult i32 %.promoted18.i.i, %i.w
  br i1 %5, label %.loopexit.loopexit.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.bc, i64 noundef range(i64 8, 4097) %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @385) #62, !noalias !30729
  unreachable

bb.s:                                             ; preds = %bb.i
  %i.be = load i32, ptr %i.b, align 4, !alias.scope !30716, !noundef !177
  %i.bf = add i32 %i.be, 1
  store i32 %i.bf, ptr %i.b, align 4, !alias.scope !30716
  store i32 0, ptr %i.n, align 8, !alias.scope !30717
  br i1 %i.y, label %_RNvXNtCs2D0wXkiOfwW_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs5NNYTrzbB3N_15alloc_no_stdlib15stack_allocator9AllocatorhE10alloc_cellCsgZAIVb0XKpv_9ssservice.exit.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52, !noalias !30730
  %i.bg = call noundef ptr @_RNvCsh0WfaQiVYm0_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 4294967296) %i.x, i64 noundef range(i64 1, 17) 1) #52, !noalias !30730 ; 2 uses
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bi = ptrtoint ptr %i.bg to i64
  br label %_RNvXNtCs2D0wXkiOfwW_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs5NNYTrzbB3N_15alloc_no_stdlib15stack_allocator9AllocatorhE10alloc_cellCsgZAIVb0XKpv_9ssservice.exit.i

bb.v:                                             ; preds = %bb.t
  call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef 1, i64 range(i64 -2147483582, 4294967296) %i.x) #61, !noalias !30731
  unreachable

_RNvXNtCs2D0wXkiOfwW_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs5NNYTrzbB3N_15alloc_no_stdlib15stack_allocator9AllocatorhE10alloc_cellCsgZAIVb0XKpv_9ssservice.exit.i: ; preds = %bb.u, %bb.s
  %.sroa.10.0.i.i.i = phi i64 [ %i.bi, %bb.u ], [ 1, %bb.s ]
  %i.bj = inttoptr i64 %.sroa.10.0.i.i.i to ptr   ; 5 uses
  %i.bk = icmp eq i64 %i.k, 0
  br i1 %i.bk, label %bb.w, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i49.i

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i49.i: ; preds = %_RNvXNtCs2D0wXkiOfwW_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs5NNYTrzbB3N_15alloc_no_stdlib15stack_allocator9AllocatorhE10alloc_cellCsgZAIVb0XKpv_9ssservice.exit.i
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.i, i64 noundef %i.k, i64 noundef 1) #52, !noalias !30732
  br label %bb.w

bb.w:                                             ; preds = %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i49.i, %_RNvXNtCs2D0wXkiOfwW_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs5NNYTrzbB3N_15alloc_no_stdlib15stack_allocator9AllocatorhE10alloc_cellCsgZAIVb0XKpv_9ssservice.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bj) ]
  %i.bl = load i32, ptr %i.b, align 4, !alias.scope !30716, !noundef !177 ; 2 uses
  %i.bm = icmp ult i32 %i.bl, 2
  br i1 %i.bm, label %bb.x, label %bb.h

bb.x:                                             ; preds = %bb.w
  br i1 %i.y, label %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode21DecodeContextMapInnerNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB17_B17_ECsgZAIVb0XKpv_9ssservice.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.x
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.bj, i8 0, i64 range(i64 0, -9223372036854775808) %i.x, i1 false), !alias.scope !30733, !noalias !30720
  br label %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode21DecodeContextMapInnerNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB17_B17_ECsgZAIVb0XKpv_9ssservice.exit

.loopexit81.i:                                    ; preds = %bb.j, %.loopexit81.loopexit.i
  %i.bn = phi i64 [ %i.aj, %.loopexit81.loopexit.i ], [ %.promoted11.i.i, %bb.j ]
  %i.bo = phi i32 [ %i.ak, %.loopexit81.loopexit.i ], [ %.promoted.i.i, %bb.j ] ; 2 uses
  %i.bp = and i32 %i.bo, 63
  %i.bq = zext nneg i32 %i.bp to i64
  %i.br = lshr i64 %i.bn, %i.bq
  %i.bs = trunc i64 %i.br to i32                  ; 2 uses
  %i.bt = and i32 %i.bs, 1
  %i.bu = icmp eq i32 %i.bt, 0                    ; 2 uses
  %i.bv = lshr i32 %i.bs, 1
  %i.bw = and i32 %i.bv, 15
  %i.bx = add nuw nsw i32 %i.bw, 1
  %.sink257.i = select i1 %i.bu, i32 0, i32 %i.bx ; 2 uses
  %.sink.i = select i1 %i.bu, i32 1, i32 5
  store i32 %.sink257.i, ptr %i.o, align 4, !alias.scope !30717
  %i.by = add i32 %.sink.i, %i.bo
  store i32 %i.by, ptr %i.t, align 8, !alias.scope !30717
  store i8 2, ptr %i.m, align 1, !alias.scope !30717
  br label %bb.m

.lr.ph.i:                                         ; preds = %bb.n, %.backedge.i
  %.sroa.04.0160.i = phi i32 [ %.sroa.04.0.be.i, %.backedge.i ], [ %i.ay, %bb.n ] ; 12 uses
  %.sroa.014.0159.i = phi i1 [ false, %.backedge.i ], [ %i.ba, %bb.n ]
  br i1 %.sroa.014.0159.i, label %thread-pre-split.i, label %bb.y

bb.y:                                             ; preds = %.lr.ph.i
  %.val33.i = load ptr, ptr %i.q, align 8, !alias.scope !30717, !nonnull !177, !noundef !177
  %.val34.i = load i64, ptr %i.r, align 8, !alias.scope !30717, !noundef !177
  %i.bz = call noundef zeroext i1 @_RNvNtCsl4v216RJbSI_19brotli_decompressor6decode14SafeReadSymbol(ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %.val33.i, i64 noundef %.val34.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s, ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef range(i64 8, 4097) %4) #52, !noalias !30720
  br i1 %i.bz, label %bb.af, label %.loopexit82.sink.split.i

thread-pre-split.i:                               ; preds = %.lr.ph.i
  %.pr.i = load i32, ptr %i.a, align 4, !noalias !30719
  br label %bb.z

bb.z:                                             ; preds = %bb.ah, %thread-pre-split.i
  %i.ca = phi i32 [ %.pr.i, %thread-pre-split.i ], [ %i.cs, %bb.ah ] ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !30734)
  call void @llvm.experimental.noalias.scope.decl(metadata !30735)
  %.promoted.i55.i = load i32, ptr %i.t, align 8, !alias.scope !30736 ; 3 uses
  %i.cb = sub i32 64, %.promoted.i55.i
  %.not.i56.i = icmp ult i32 %i.cb, %i.ca
  br i1 %.not.i56.i, label %.lr.ph.i59.i, label %._crit_edge.i57.i

.lr.ph.i59.i:                                     ; preds = %bb.z
  %.promoted17.i61.i = load i32, ptr %i.u, align 8, !alias.scope !30736 ; 2 uses
  %.promoted18.i62.i = load i32, ptr %i.v, align 4, !alias.scope !30736 ; 2 uses
  %umax.i = call i32 @llvm.umax.i32(i32 %.promoted18.i62.i, i32 %i.w)
  %wide.trip.count.i = zext i32 %umax.i to i64    ; 2 uses
  %i.cc = icmp eq i32 %.promoted17.i61.i, 0
  br i1 %i.cc, label %.loopexit82.sink.split.i, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.i59.i
  %i.cd = zext i32 %.promoted18.i62.i to i64
  %.promoted14.i60.i = load i64, ptr %i.s, align 8, !alias.scope !30736
  br label %bb.ac

._crit_edge.i57.i:                                ; preds = %bb.ad, %bb.z
  %.lcssa7.i58.i = phi i32 [ %.promoted.i55.i, %bb.z ], [ %i.co, %bb.ad ] ; 2 uses
  %i.ce = zext i32 %i.ca to i64                   ; 2 uses
  %i.cf = icmp ult i32 %i.ca, 33
  br i1 %i.cf, label %bb.ao, label %bb.ab

bb.aa:                                            ; preds = %bb.ad
  %i.cg = icmp eq i32 %i.cp, 0
  br i1 %i.cg, label %.loopexit82.sink.split.i, label %bb.ac

bb.ab:                                            ; preds = %._crit_edge.i57.i
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.ce, i64 noundef 33, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @381) #62, !noalias !30737
  unreachable

bb.ac:                                            ; preds = %.lr.ph, %bb.aa
  %i.ch = phi i64 [ %.promoted14.i60.i, %.lr.ph ], [ %i.cn, %bb.aa ]
  %i.ci = phi i32 [ %.promoted.i55.i, %.lr.ph ], [ %i.co, %bb.aa ] ; 2 uses
  %i.cj = phi i32 [ %.promoted17.i61.i, %.lr.ph ], [ %i.cp, %bb.aa ]
  %indvars.iv.i142 = phi i64 [ %i.cd, %.lr.ph ], [ %indvars.iv.next.i, %bb.aa ] ; 3 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.i142, %wide.trip.count.i
  br i1 %exitcond.not.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ck = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv.i142
  %i.cl = load i8, ptr %i.ck, align 1, !alias.scope !30738, !noundef !177
  %i.cm = zext i8 %i.cl to i64
  %i.cn = call i64 @llvm.fshl.i64(i64 %i.cm, i64 %i.ch, i64 56) ; 2 uses
  store i64 %i.cn, ptr %i.s, align 8, !alias.scope !30736
  %i.co = add i32 %i.ci, -8                       ; 3 uses
  store i32 %i.co, ptr %i.t, align 8, !alias.scope !30736
  %i.cp = add i32 %i.cj, -1                       ; 3 uses
  store i32 %i.cp, ptr %i.u, align 8, !alias.scope !30736
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i142, 1 ; 2 uses
  %i.cq = trunc nuw nsw i64 %indvars.iv.next.i to i32
  store i32 %i.cq, ptr %i.v, align 4, !alias.scope !30736
  %i.cr = sub i32 72, %i.ci
  %.not19.i63.i = icmp ult i32 %i.cr, %i.ca
  br i1 %.not19.i63.i, label %bb.aa, label %._crit_edge.i57.i

bb.ae:                                            ; preds = %bb.ac
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %wide.trip.count.i, i64 noundef range(i64 8, 4097) %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @385) #62, !noalias !30737
  unreachable

bb.af:                                            ; preds = %bb.y
  %i.cs = load i32, ptr %i.a, align 4, !noalias !30719, !noundef !177 ; 4 uses
  %i.ct = icmp eq i32 %i.cs, 0
  br i1 %i.ct, label %bb.ag, label %bb.ah

.loopexit82.sink.split.i:                         ; preds = %bb.y, %.lr.ph.i59.i, %bb.aa
  %.lcssa241.sink.i = phi i32 [ %i.ca, %bb.aa ], [ 65535, %bb.y ], [ %i.ca, %.lr.ph.i59.i ]
  store i32 %.lcssa241.sink.i, ptr %i.p, align 8, !alias.scope !30717
  store i32 %.sroa.04.0160.i, ptr %i.n, align 8, !alias.scope !30717
  br label %.loopexit82.i

.loopexit82.i:                                    ; preds = %bb.ao, %.loopexit82.sink.split.i
  %.sroa.0.1.i = phi i32 [ 2, %.loopexit82.sink.split.i ], [ -8, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !30719
  br label %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode21DecodeContextMapInnerNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB17_B17_ECsgZAIVb0XKpv_9ssservice.exit

bb.ag:                                            ; preds = %bb.af
  %i.cu = zext i32 %.sroa.04.0160.i to i64        ; 3 uses
  %i.cv = icmp ugt i64 %.sroa.11.2, %i.cu
  br i1 %i.cv, label %bb.ai, label %bb.aj

bb.ah:                                            ; preds = %bb.af
  %i.cw = icmp ugt i32 %i.cs, %i.az
  br i1 %i.cw, label %bb.al, label %bb.z

bb.ai:                                            ; preds = %bb.ag
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 %i.cu
  store i8 0, ptr %i.cx, align 1, !noalias !30720
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ag
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.cu, i64 noundef %.sroa.11.2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @382) #62, !noalias !30720
  unreachable

bb.ak:                                            ; preds = %bb.am, %bb.ai
  %.sroa.04.1.i = add i32 %.sroa.04.0160.i, 1
  br label %.backedge.i

.backedge.i:                                      ; preds = %bb.ap, %bb.ak
  %.sroa.04.0.be.i = phi i32 [ %.sroa.04.1.i, %bb.ak ], [ %i.ev, %bb.ap ] ; 2 uses
  %i.cy = icmp ult i32 %.sroa.04.0.be.i, %i.l
  br i1 %i.cy, label %.lr.ph.i, label %._crit_edge.loopexit.i

bb.al:                                            ; preds = %bb.ah
  %i.cz = zext i32 %.sroa.04.0160.i to i64        ; 3 uses
  %i.da = icmp ugt i64 %.sroa.11.2, %i.cz
  br i1 %i.da, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.db = sub nuw i32 %i.cs, %i.az
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 %i.cz
  %i.dd = trunc i32 %i.db to i8
  store i8 %i.dd, ptr %i.dc, align 1, !noalias !30720
  br label %bb.ak

bb.an:                                            ; preds = %bb.al
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.cz, i64 noundef %.sroa.11.2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @383) #62, !noalias !30720
  unreachable

bb.ao:                                            ; preds = %._crit_edge.i57.i
  %i.de = load i64, ptr %i.s, align 8, !alias.scope !30736, !noundef !177
  %i.df = and i32 %.lcssa7.i58.i, 63
  %i.dg = zext nneg i32 %i.df to i64
  %i.dh = lshr i64 %i.de, %i.dg
  %i.di = trunc i64 %i.dh to i32
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr @379, i64 %i.ce
  %i.dk = load i32, ptr %i.dj, align 4, !noalias !30739, !noundef !177
  %i.dl = and i32 %i.dk, %i.di                    ; 3 uses
  %i.dm = add i32 %.lcssa7.i58.i, %i.ca
  store i32 %i.dm, ptr %i.t, align 8, !alias.scope !30736
  %i.dn = and i32 %i.ca, 31
  %i.do = shl nuw i32 1, %i.dn                    ; 3 uses
  %i.dp = add i32 %i.dl, %i.do                    ; 4 uses
  %i.dq = add i32 %i.dp, %.sroa.04.0160.i
  %i.dr = icmp ugt i32 %i.dq, %i.l
  br i1 %i.dr, label %.loopexit82.i, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %bb.ao
  %i.ds = zext i32 %.sroa.04.0160.i to i64
  %i.dt = call i64 @llvm.usub.sat.i64(i64 %.sroa.11.2, i64 %i.ds)
  %i.du = add i32 %i.dl, %i.do
  %i.dv = add i32 %i.du, -1
  %i.dw = zext i32 %i.dv to i64
  %i.dx = call i64 @llvm.umin.i64(i64 %i.dt, i64 %i.dw)
  %i.dy = trunc nuw i64 %i.dx to i32
  %i.dz = add i32 %i.dy, 1                        ; 3 uses
  %min.iters.check = icmp ult i32 %i.dz, 33
  br i1 %min.iters.check, label %.preheader.i.preheader147, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.preheader.i.preheader
  %i.ea = zext i32 %.sroa.04.0160.i to i64
  %i.eb = call i64 @llvm.usub.sat.i64(i64 %.sroa.11.2, i64 %i.ea)
  %i.ec = add i32 %i.dl, -1
  %i.ed = add i32 %i.ec, %i.do
  %i.ee = zext i32 %i.ed to i64
  %umin = call i64 @llvm.umin.i64(i64 %i.eb, i64 %i.ee)
  %i.ef = trunc nuw i64 %umin to i32
  %i.eg = xor i32 %.sroa.04.0160.i, -1
  %i.eh = icmp ult i32 %i.eg, %i.ef
  br i1 %i.eh, label %.preheader.i.preheader147, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %i.ei = and i32 %i.dz, 31                       ; 2 uses
  %i.ej = icmp eq i32 %i.ei, 0
  %i.ek = select i1 %i.ej, i32 32, i32 %i.ei
  %n.vec = sub i32 %i.dz, %i.ek                   ; 3 uses
  %i.el = sub i32 %i.dp, %n.vec
  %i.em = add i32 %.sroa.04.0160.i, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.en = add i32 %.sroa.04.0160.i, %index
  %i.eo = zext i32 %i.en to i64
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 %i.eo ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  store <16 x i8> zeroinitializer, ptr %i.ep, align 1, !noalias !30720
  store <16 x i8> zeroinitializer, ptr %i.eq, align 1, !noalias !30720
  %index.next = add nuw i32 %index, 32            ; 2 uses
  %i.er = icmp eq i32 %index.next, %n.vec
  br i1 %i.er, label %.preheader.i.preheader147, label %vector.body, !llvm.loop !30710

.preheader.i.preheader147:                        ; preds = %vector.body, %vector.scevcheck, %.preheader.i.preheader
  %.sroa.070.0.i.ph = phi i32 [ %i.dp, %vector.scevcheck ], [ %i.dp, %.preheader.i.preheader ], [ %i.el, %vector.body ]
  %.sroa.04.2.i.ph = phi i32 [ %.sroa.04.0160.i, %vector.scevcheck ], [ %.sroa.04.0160.i, %.preheader.i.preheader ], [ %i.em, %vector.body ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader147, %bb.ap
  %.sroa.070.0.i = phi i32 [ %i.ew, %bb.ap ], [ %.sroa.070.0.i.ph, %.preheader.i.preheader147 ]
  %.sroa.04.2.i = phi i32 [ %i.ev, %bb.ap ], [ %.sroa.04.2.i.ph, %.preheader.i.preheader147 ] ; 2 uses
  %i.es = zext i32 %.sroa.04.2.i to i64           ; 3 uses
  %i.et = icmp ugt i64 %.sroa.11.2, %i.es
  br i1 %i.et, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %.preheader.i
  %i.eu = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 %i.es
  store i8 0, ptr %i.eu, align 1, !noalias !30720
  %i.ev = add i32 %.sroa.04.2.i, 1                ; 2 uses
  %i.ew = add i32 %.sroa.070.0.i, -1              ; 2 uses
  %i.ex = icmp eq i32 %i.ew, 0
  br i1 %i.ex, label %.backedge.i, label %.preheader.i, !llvm.loop !30711

bb.aq:                                            ; preds = %.preheader.i
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.es, i64 noundef %.sroa.11.2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @384) #62, !noalias !30720
  unreachable

_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit.i: ; preds = %bb.p
  store i8 4, ptr %i.m, align 1, !alias.scope !30717
  br label %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode21DecodeContextMapInnerNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB17_B17_ECsgZAIVb0XKpv_9ssservice.exit

.loopexit.loopexit.i:                             ; preds = %bb.q
  %6 = getelementptr inbounds nuw i8, ptr %3, i64 %i.bc
  %7 = load i8, ptr %6, align 1, !alias.scope !30740, !noundef !177
  %8 = zext i8 %7 to i64
  %9 = call i64 @llvm.fshl.i64(i64 %8, i64 %.promoted14.i48.i, i64 56) ; 2 uses
  store i64 %9, ptr %i.s, align 8, !alias.scope !30728
  %10 = add i32 %.promoted17.i.i, -1
  store i32 %10, ptr %i.u, align 8, !alias.scope !30728
  %indvars.iv.next210.i = add nuw nsw i32 %.promoted18.i.i, 1
  store i32 %indvars.iv.next210.i, ptr %i.v, align 4, !alias.scope !30728
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.o, %.loopexit.loopexit.i
  %i.ey = phi i64 [ %9, %.loopexit.loopexit.i ], [ %.promoted14.i48.i, %bb.o ]
  %.lcssa7.i46.i = phi i32 [ 56, %.loopexit.loopexit.i ], [ %.promoted.i43.i, %bb.o ] ; 2 uses
  %i.ez = and i32 %.lcssa7.i46.i, 63
  %i.fa = zext nneg i32 %i.ez to i64
  %i.fb = add i32 %.lcssa7.i46.i, 1
  store i32 %i.fb, ptr %i.t, align 8, !alias.scope !30728
  %i.fc = shl nuw i64 1, %i.fa
  %i.fd = and i64 %i.fc, %i.ey
  %i.fe = icmp eq i64 %i.fd, 0
  br i1 %i.fe, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %.loopexit.i
  %i.ff = getelementptr inbounds nuw i8, ptr %2, i64 2331
  %i.fg = load i8, ptr %i.ff, align 1, !range !180, !alias.scope !30717, !noundef !177
  %i.fh = trunc nuw i8 %i.fg to i1
  br i1 %i.fh, label %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode21DecodeContextMapInnerNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB17_B17_ECsgZAIVb0XKpv_9ssservice.exit, label %bb.at

bb.as:                                            ; preds = %bb.at, %.loopexit.i
  store i8 0, ptr %i.m, align 1, !alias.scope !30717
  br label %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode21DecodeContextMapInnerNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB17_B17_ECsgZAIVb0XKpv_9ssservice.exit

bb.at:                                            ; preds = %bb.ar
  %i.fi = getelementptr inbounds nuw i8, ptr %2, i64 2332
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.1) ]
  %i.fj = getelementptr inbounds nuw i8, ptr %2, i64 2284
  call void @_RNvNtCsl4v216RJbSI_19brotli_decompressor6decode27InverseMoveToFrontTransform(ptr noalias nofree noundef nonnull %.sroa.0.1, i64 noundef %.sroa.11.1, i32 noundef %i.l, ptr noalias nofree noundef nonnull dereferenceable(256) %i.fi, ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.fj) #52, !noalias !30720
  br label %bb.as

_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode21DecodeContextMapInnerNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB17_B17_ECsgZAIVb0XKpv_9ssservice.exit: ; preds = %bb.i, %.lr.ph.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2D0wXkiOfwW_12alloc_stdlib10heap_alloc7WrapBoxNtNtCsl4v216RJbSI_19brotli_decompressor7huffman11HuffmanCodeEECsgZAIVb0XKpv_9ssservice.exit.i, %bb.x, %.lr.ph.preheader.i.i, %.loopexit82.i, %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit.i, %bb.ar, %bb.as
  %.sroa.11.5 = phi i64 [ 0, %bb.x ], [ %i.x, %.lr.ph.preheader.i.i ], [ %.sroa.11.4, %.lr.ph.i.i ], [ %.sroa.11.2, %.loopexit82.i ], [ %.sroa.11.1, %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit.i ], [ %.sroa.11.1, %bb.as ], [ %.sroa.11.1, %bb.ar ], [ %.sroa.11.3, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2D0wXkiOfwW_12alloc_stdlib10heap_alloc7WrapBoxNtNtCsl4v216RJbSI_19brotli_decompressor7huffman11HuffmanCodeEECsgZAIVb0XKpv_9ssservice.exit.i ], [ %i.k, %bb.i ] ; 2 uses
  %.sroa.0.5 = phi ptr [ %i.bj, %bb.x ], [ %i.bj, %.lr.ph.preheader.i.i ], [ %.sroa.0.4, %.lr.ph.i.i ], [ %.sroa.0.2, %.loopexit82.i ], [ %.sroa.0.1, %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit.i ], [ %.sroa.0.1, %bb.as ], [ %.sroa.0.1, %bb.ar ], [ %.sroa.0.3, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2D0wXkiOfwW_12alloc_stdlib10heap_alloc7WrapBoxNtNtCsl4v216RJbSI_19brotli_decompressor7huffman11HuffmanCodeEECsgZAIVb0XKpv_9ssservice.exit.i ], [ %i.i, %bb.i ] ; 2 uses
  %.sroa.0.0.i = phi i32 [ 1, %bb.x ], [ 1, %.lr.ph.preheader.i.i ], [ 2, %.lr.ph.i.i ], [ %.sroa.0.1.i, %.loopexit82.i ], [ 2, %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit.i ], [ 1, %bb.as ], [ -31, %bb.ar ], [ %i.ar, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2D0wXkiOfwW_12alloc_stdlib10heap_alloc7WrapBoxNtNtCsl4v216RJbSI_19brotli_decompressor7huffman11HuffmanCodeEECsgZAIVb0XKpv_9ssservice.exit.i ], [ %i.aa, %bb.i ]
  %i.fk = load i32, ptr %i.b, align 4, !noundef !177 ; 2 uses
  br i1 %1, label %bb.av, label %bb.au

bb.au:                                            ; preds = %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode21DecodeContextMapInnerNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB17_B17_ECsgZAIVb0XKpv_9ssservice.exit
  %i.fl = getelementptr inbounds nuw i8, ptr %2, i64 2292
  store i32 %i.fk, ptr %i.fl, align 4
  %i.fm = getelementptr inbounds nuw i8, ptr %2, i64 1840 ; 2 uses
  %i.fn = load ptr, ptr %i.fm, align 8, !nonnull !177, !noundef !177
  %i.fo = getelementptr inbounds nuw i8, ptr %2, i64 1848 ; 2 uses
  %i.fp = load i64, ptr %i.fo, align 8, !noundef !177 ; 2 uses
  store ptr %.sroa.0.5, ptr %i.fm, align 8
  store i64 %.sroa.11.5, ptr %i.fo, align 8
  %i.fq = icmp eq i64 %i.fp, 0
  br i1 %i.fq, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2D0wXkiOfwW_12alloc_stdlib10heap_alloc7WrapBoxhEECsgZAIVb0XKpv_9ssservice.exit12, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i: ; preds = %bb.au
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.fn, i64 noundef %i.fp, i64 noundef 1) #52, !noalias !30741
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2D0wXkiOfwW_12alloc_stdlib10heap_alloc7WrapBoxhEECsgZAIVb0XKpv_9ssservice.exit12

bb.av:                                            ; preds = %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode21DecodeContextMapInnerNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB17_B17_ECsgZAIVb0XKpv_9ssservice.exit
  %i.fr = getelementptr inbounds nuw i8, ptr %2, i64 2232
  store i32 %i.fk, ptr %i.fr, align 8
  %i.fs = getelementptr inbounds nuw i8, ptr %2, i64 1792 ; 2 uses
  %i.ft = load ptr, ptr %i.fs, align 8, !nonnull !177, !noundef !177
  %i.fu = getelementptr inbounds nuw i8, ptr %2, i64 1800 ; 2 uses
  %i.fv = load i64, ptr %i.fu, align 8, !noundef !177 ; 2 uses
  store ptr %.sroa.0.5, ptr %i.fs, align 8
  store i64 %.sroa.11.5, ptr %i.fu, align 8
  %i.fw = icmp eq i64 %i.fv, 0
  br i1 %i.fw, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2D0wXkiOfwW_12alloc_stdlib10heap_alloc7WrapBoxhEECsgZAIVb0XKpv_9ssservice.exit12, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i9

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i9: ; preds = %bb.av
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ft, i64 noundef %i.fv, i64 noundef 1) #52, !noalias !30742
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2D0wXkiOfwW_12alloc_stdlib10heap_alloc7WrapBoxhEECsgZAIVb0XKpv_9ssservice.exit12

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2D0wXkiOfwW_12alloc_stdlib10heap_alloc7WrapBoxhEECsgZAIVb0XKpv_9ssservice.exit12: ; preds = %bb.au, %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i, %bb.av, %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i32 %.sroa.0.0.i
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode19ReadCommandInternalNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB15_B15_ECsgZAIVb0XKpv_9ssservice(i1 noundef zeroext %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(2600) %1, ptr noalias nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef range(i64 8, 4097) %4, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(4096) %5) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 5 uses
  %i.b = alloca [4 x i8], align 4                 ; 5 uses
  %i.c = alloca [4 x i8], align 4                 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 0, ptr %i.c, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 0, ptr %i.b, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 0, ptr %i.a, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 2300
  %i.e = load i16, ptr %i.d, align 4, !noundef !177 ; 2 uses
  %i.f = zext i16 %i.e to i64                     ; 4 uses
  %i.g = icmp ult i16 %i.e, 256                   ; 2 uses
  br i1 %0, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %i.g, label %bb.d, label %bb.n

bb.c:                                             ; preds = %bb.a
  br i1 %i.g, label %bb.p, label %bb.q

bb.d:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %i.f ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !177, !align !246, !noundef !177 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.k = load i64, ptr %i.j, align 8, !noundef !177 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 1872 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30790)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 1880 ; 3 uses
  %i.n = load i32, ptr %i.m, align 8, !alias.scope !30790, !noundef !177 ; 3 uses
  %i.o = icmp ugt i32 %i.n, 47
  %.pre = load i64, ptr %i.l, align 8             ; 2 uses
  br i1 %i.o, label %bb.e, label %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader35BrotliFillBitWindowCompileTimeNbits.exit

bb.e:                                             ; preds = %bb.d
  %i.p = xor i32 %i.n, 48                         ; 2 uses
  store i32 %i.p, ptr %i.m, align 8, !alias.scope !30790
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 1884 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !alias.scope !30790, !noundef !177 ; 2 uses
  %i.s = zext i32 %i.r to i64                     ; 3 uses
  %i.t = add nuw nsw i64 %i.s, 8                  ; 2 uses
  %.not.i.i26 = icmp samesign ugt i64 %i.t, %4
  br i1 %.not.i.i26, label %bb.f, label %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader14BrotliLoad64LE.exit.i27, !prof !186

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %i.s, i64 noundef %i.t, i64 noundef range(i64 8, 4097) %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2365) #62, !noalias !30791
  unreachable

_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader14BrotliLoad64LE.exit.i27: ; preds = %bb.e
  %i.u = lshr i64 %.pre, 48
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 %i.s ; 3 uses
  %.sroa.061.0.copyload = load i32, ptr %i.v, align 1, !alias.scope !30792, !noalias !30790
  %i.w = zext i32 %.sroa.061.0.copyload to i64
  %i.x = shl nuw nsw i64 %i.w, 16
  %.sroa.865.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %.sroa.865.0.copyload = load i8, ptr %.sroa.865.0..sroa_idx, align 1, !alias.scope !30792, !noalias !30790
  %.sroa.966.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 5
  %.sroa.966.0.copyload = load i8, ptr %.sroa.966.0..sroa_idx, align 1, !alias.scope !30792, !noalias !30790
  %i.y = zext i8 %.sroa.865.0.copyload to i64
  %i.z = zext i8 %.sroa.966.0.copyload to i64
  %i.aa = shl nuw i64 %i.z, 56
  %i.ab = shl nuw nsw i64 %i.y, 48
  %i.ac = or disjoint i64 %i.x, %i.ab
  %i.ad = or disjoint i64 %i.ac, %i.aa
  %i.ae = or disjoint i64 %i.ad, %i.u             ; 2 uses
  store i64 %i.ae, ptr %i.l, align 8, !alias.scope !30790
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 1888 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 8, !alias.scope !30790, !noundef !177
  %i.ah = add i32 %i.ag, -6
  store i32 %i.ah, ptr %i.af, align 8, !alias.scope !30790
  %i.ai = add i32 %i.r, 6
  store i32 %i.ai, ptr %i.q, align 4, !alias.scope !30790
  br label %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader35BrotliFillBitWindowCompileTimeNbits.exit

_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader35BrotliFillBitWindowCompileTimeNbits.exit: ; preds = %bb.d, %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader14BrotliLoad64LE.exit.i27
  %i.aj = phi i32 [ %i.n, %bb.d ], [ %i.p, %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader14BrotliLoad64LE.exit.i27 ] ; 3 uses
  %i.ak = phi i64 [ %.pre, %bb.d ], [ %i.ae, %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader14BrotliLoad64LE.exit.i27 ]
  %i.al = and i32 %i.aj, 63
  %i.am = zext nneg i32 %i.al to i64
  %i.an = lshr i64 %i.ak, %i.am                   ; 2 uses
  %i.ao = trunc i64 %i.an to i32                  ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30793)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30794)
  %i.ap = and i32 %i.ao, 255
  %i.aq = and i64 %i.an, 255                      ; 3 uses
  %i.ar = icmp samesign ugt i64 %i.k, %i.aq
  br i1 %i.ar, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader35BrotliFillBitWindowCompileTimeNbits.exit
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.aq ; 2 uses
  %i.at = load i16, ptr %i.as, align 2, !alias.scope !30793, !noundef !177 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 2
  %i.av = load i8, ptr %i.au, align 2, !alias.scope !30793, !noundef !177 ; 3 uses
  %i.aw = icmp ugt i8 %i.av, 8
  br i1 %i.aw, label %bb.i, label %_RNvNtCsl4v216RJbSI_19brotli_decompressor6decode12DecodeSymbol.exit

bb.h:                                             ; preds = %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader35BrotliFillBitWindowCompileTimeNbits.exit
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.aq, i64 noundef range(i64 0, 2305843009213693952) %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2369) #62, !noalias !30795
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.ax = add i8 %i.av, -8                        ; 2 uses
  %i.ay = add i32 %i.aj, 8
  %i.az = zext i8 %i.ax to i64                    ; 2 uses
  %i.ba = icmp ult i8 %i.ax, 33
  br i1 %i.ba, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bb = lshr i32 %i.ao, 8
  %i.bc = zext i16 %i.at to i32
  %i.bd = add nuw nsw i32 %i.ap, %i.bc
  %i.be = getelementptr inbounds nuw [4 x i8], ptr @379, i64 %i.az
  %i.bf = load i32, ptr %i.be, align 4, !noalias !30795, !noundef !177
  %i.bg = and i32 %i.bf, %i.bb
  %i.bh = add nuw nsw i32 %i.bd, %i.bg
  %i.bi = zext nneg i32 %i.bh to i64              ; 3 uses
  %i.bj = icmp samesign ugt i64 %i.k, %i.bi
  br i1 %i.bj, label %bb.l, label %bb.m

bb.k:                                             ; preds = %bb.i
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.az, i64 noundef 33, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @381) #62, !noalias !30795
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.bi ; 2 uses
  %i.bl = load i16, ptr %i.bk, align 2, !alias.scope !30793, !noundef !177
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 2
  %i.bn = load i8, ptr %i.bm, align 2, !alias.scope !30793, !noundef !177
  br label %_RNvNtCsl4v216RJbSI_19brotli_decompressor6decode12DecodeSymbol.exit

bb.m:                                             ; preds = %bb.j
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.bi, i64 noundef range(i64 0, 2305843009213693952) %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2370) #62, !noalias !30795
  unreachable

_RNvNtCsl4v216RJbSI_19brotli_decompressor6decode12DecodeSymbol.exit: ; preds = %bb.g, %bb.l
  %i.bo = phi i32 [ %i.ay, %bb.l ], [ %i.aj, %bb.g ]
  %.sroa.05.0.i = phi i8 [ %i.bn, %bb.l ], [ %i.av, %bb.g ]
  %.sroa.03.0.i = phi i16 [ %i.bl, %bb.l ], [ %i.at, %bb.g ]
  %i.bp = zext i8 %.sroa.05.0.i to i32
  %i.bq = add i32 %i.bo, %i.bp
  store i32 %i.bq, ptr %i.m, align 8, !alias.scope !30794
  %i.br = zext i16 %.sroa.03.0.i to i32           ; 2 uses
  store i32 %i.br, ptr %i.c, align 4
  br label %bb.o

bb.n:                                             ; preds = %bb.b
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.f, i64 noundef 256, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @374) #62
  unreachable

thread-pre-split:                                 ; preds = %bb.p
  %.pr = load i32, ptr %i.c, align 4
  br label %bb.o

bb.o:                                             ; preds = %thread-pre-split, %_RNvNtCsl4v216RJbSI_19brotli_decompressor6decode12DecodeSymbol.exit
  %i.bs = phi i32 [ %.pr, %thread-pre-split ], [ %i.br, %_RNvNtCsl4v216RJbSI_19brotli_decompressor6decode12DecodeSymbol.exit ] ; 2 uses
  %.sroa.04.0 = phi i32 [ %i.bx, %thread-pre-split ], [ 0, %_RNvNtCsl4v216RJbSI_19brotli_decompressor6decode12DecodeSymbol.exit ]
  %.sroa.01.0 = phi i64 [ %i.cb, %thread-pre-split ], [ 0, %_RNvNtCsl4v216RJbSI_19brotli_decompressor6decode12DecodeSymbol.exit ]
end_hunk_1
begin_hunk_2_@_RNCINvNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13online_config16content_encoding9read_bodyINtNtCs7ewmRfXve8r_4http8response8ResponseNtNtNtCsaI3lGUjttVO_5hyper4body8incoming8IncomingEE0CsgZAIVb0XKpv_9ssservice:bb.a
  %.sroa.101.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 2284
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(116) %.sroa.7254.0..sroa_idx.i.i.i.i, i8 0, i64 116, i1 false), !alias.scope !44470, !noalias !44469
  %.sroa.102.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 2288 ; 14 uses
  %.sroa.103.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 2292
  %.sroa.104.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 2296 ; 5 uses
  store <4 x i32> <i32 255, i32 0, i32 0, i32 1>, ptr %.sroa.101.0..sroa_idx.i.i.i.i, align 4, !alias.scope !44470, !noalias !44469
  %.sroa.105.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 2300 ; 2 uses
  store i16 0, ptr %.sroa.105.0..sroa_idx.i.i.i.i, align 4, !alias.scope !44470, !noalias !44469
  %.sroa.106.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 2302
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %.sroa.106.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 2 dereferenceable(18) %.sroa.106.i.i.i.i, i64 18, i1 false), !noalias !44475
  %.sroa.107.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 2320 ; 3 uses
  %.sroa.119.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 2332
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.107.0..sroa_idx.i.i.i.i, i8 0, i64 12, i1 false), !alias.scope !44470, !noalias !44469
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(256) %.sroa.119.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(256) %.sroa.119.i.i.i.i, i64 256, i1 false), !noalias !44475
  %.sroa.120.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 2588 ; 5 uses
  store i8 1, ptr %.sroa.120.0..sroa_idx.i.i.i.i, align 4, !alias.scope !44470, !noalias !44469
  %.sroa.122.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 2589 ; 7 uses
  %.sroa.124.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 2591 ; 3 uses
  %.sroa.125.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 2592 ; 2 uses
  store i32 0, ptr %.sroa.122.0..sroa_idx.i.i.i.i, align 1, !noalias !44467
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.67.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.68.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.70.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.106.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.119.i.i.i.i)
  %i.nb = getelementptr inbounds nuw i8, ptr %i.r, i64 2172 ; 10 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %i.r, i64 2326 ; 19 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %i.r, i64 2224 ; 2 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %i.r, i64 2220 ; 2 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %i.r, i64 2144 ; 2 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %i.r, i64 2140
  %i.nh = getelementptr inbounds nuw i8, ptr %i.r, i64 2232
  %.ptr36.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 1728 ; 3 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %i.r, i64 1872 ; 34 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %i.r, i64 2330
  %i.nk = getelementptr inbounds nuw i8, ptr %i.r, i64 2322 ; 4 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %i.r, i64 2228
  %i.nm = getelementptr inbounds nuw i8, ptr %i.r, i64 2216 ; 19 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %i.r, i64 2156
  %i.no = getelementptr inbounds nuw i8, ptr %i.r, i64 2160
  %i.np = getelementptr inbounds nuw i8, ptr %i.r, i64 2116
  %i.nq = getelementptr inbounds nuw i8, ptr %i.r, i64 2128
  %i.nr = getelementptr inbounds nuw i8, ptr %i.r, i64 1904 ; 2 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %i.r, i64 2321
  %i.nt = getelementptr inbounds nuw i8, ptr %i.r, i64 2180 ; 3 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %i.r, i64 2184
  %i.nv = getelementptr inbounds nuw i8, ptr %i.r, i64 1912
  %i.nw = getelementptr inbounds nuw i8, ptr %i.r, i64 2192 ; 12 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %i.r, i64 2188 ; 2 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %i.r, i64 2324 ; 4 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %i.r, i64 2323 ; 4 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %i.r, i64 2176 ; 10 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %i.r, i64 1920 ; 8 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %i.r, i64 1928 ; 8 uses
  %i.od = getelementptr inbounds nuw i8, ptr %i.r, i64 2196 ; 6 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %i.r, i64 2268 ; 4 uses
  %i.of = getelementptr inbounds nuw i8, ptr %i.r, i64 2264 ; 4 uses
  %i.og = getelementptr inbounds nuw i8, ptr %i.r, i64 2327 ; 9 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %i.r, i64 2325 ; 3 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %i.r, i64 2208
  br label %.outer

.outer:                                           ; preds = %.outer.backedge, %_RNvMNtCsl4v216RJbSI_19brotli_decompressor5stateINtB2_11BrotliStateNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB12_B12_E26new_with_custom_dictionaryCsgZAIVb0XKpv_9ssservice.exit.i.i.i
  %.sroa.7.0.ph = phi i64 [ 0, %_RNvMNtCsl4v216RJbSI_19brotli_decompressor5stateINtB2_11BrotliStateNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB12_B12_E26new_with_custom_dictionaryCsgZAIVb0XKpv_9ssservice.exit.i.i.i ], [ %.sroa.7.1.peel, %.outer.backedge ] ; 4 uses
  %.sroa.014.0.i.i.i.ph = phi i64 [ 0, %_RNvMNtCsl4v216RJbSI_19brotli_decompressor5stateINtB2_11BrotliStateNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB12_B12_E26new_with_custom_dictionaryCsgZAIVb0XKpv_9ssservice.exit.i.i.i ], [ %.sroa.014.10.i.i.i, %.outer.backedge ]
  %.sroa.011.039.i.i.i.ph = phi i64 [ 0, %_RNvMNtCsl4v216RJbSI_19brotli_decompressor5stateINtB2_11BrotliStateNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB12_B12_E26new_with_custom_dictionaryCsgZAIVb0XKpv_9ssservice.exit.i.i.i ], [ %.sroa.011.9.i.i.i, %.outer.backedge ]
  %.sroa.06.0.i.i.i.ph = phi i64 [ 4096, %_RNvMNtCsl4v216RJbSI_19brotli_decompressor5stateINtB2_11BrotliStateNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB12_B12_E26new_with_custom_dictionaryCsgZAIVb0XKpv_9ssservice.exit.i.i.i ], [ %.sroa.06.0.i.i.i.ph.be, %.outer.backedge ] ; 2 uses
  %.sroa.010.0.i.i.i.ph = phi i32 [ 2, %_RNvMNtCsl4v216RJbSI_19brotli_decompressor5stateINtB2_11BrotliStateNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB12_B12_E26new_with_custom_dictionaryCsgZAIVb0XKpv_9ssservice.exit.i.i.i ], [ %.sroa.0.2.i.i.i.i, %.outer.backedge ]
  switch i32 %.sroa.010.0.i.i.i.ph, label %default.unreachable.i.i.i [
    i32 1, label %.loopexit5309
    i32 2, label %bb.cj
    i32 3, label %bb.cl
    i32 0, label %.loopexit5310
  ]

bb.cj:                                            ; preds = %.outer
  call void @llvm.experimental.noalias.scope.decl(metadata !44476)
  call void @llvm.experimental.noalias.scope.decl(metadata !44477)
  %i.oj = call i64 @llvm.umin.i64(i64 %.sroa.7.0.ph, i64 %.val16) ; 2 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %.val15, i64 %i.oj ; 2 uses
  %i.ol = sub nuw nsw i64 %.val16, %i.oj          ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !44478)
  %i.om = call i64 @llvm.umin.i64(i64 %i.ol, i64 4096) ; 3 uses
  %i.on = icmp eq i64 %i.ol, 1
  br i1 %i.on, label %bb.ck, label %_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implhECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i.peel

_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implhECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i.peel: ; preds = %bb.cj
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.t, ptr nonnull readonly align 1 %i.ok, i64 range(i64 0, -9223372036854775808) %i.om, i1 false), !alias.scope !44479, !noalias !44480
  br label %_RNvXs_NtCsl4v216RJbSI_19brotli_decompressor11io_wrappersINtB4_15IoReaderWrapperINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorRShEEINtB4_10CustomReadNtNtB1k_5error5ErrorE4readCsgZAIVb0XKpv_9ssservice.exit.i.i.i.peel

bb.ck:                                            ; preds = %bb.cj
  %i.oo = load i8, ptr %i.ok, align 1, !noalias !44481, !noundef !177
  store i8 %i.oo, ptr %i.t, align 1, !alias.scope !44482, !noalias !44464
  br label %_RNvXs_NtCsl4v216RJbSI_19brotli_decompressor11io_wrappersINtB4_15IoReaderWrapperINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorRShEEINtB4_10CustomReadNtNtB1k_5error5ErrorE4readCsgZAIVb0XKpv_9ssservice.exit.i.i.i.peel

_RNvXs_NtCsl4v216RJbSI_19brotli_decompressor11io_wrappersINtB4_15IoReaderWrapperINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorRShEEINtB4_10CustomReadNtNtB1k_5error5ErrorE4readCsgZAIVb0XKpv_9ssservice.exit.i.i.i.peel: ; preds = %bb.ck, %_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implhECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i.peel
  %i.op = add i64 %i.om, %.sroa.7.0.ph
  %.not.i.i.i76.peel = icmp ugt i64 %.val16, %.sroa.7.0.ph
  br i1 %.not.i.i.i76.peel, label %bb.cl, label %.loopexit5310

bb.cl:                                            ; preds = %_RNvXs_NtCsl4v216RJbSI_19brotli_decompressor11io_wrappersINtB4_15IoReaderWrapperINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorRShEEINtB4_10CustomReadNtNtB1k_5error5ErrorE4readCsgZAIVb0XKpv_9ssservice.exit.i.i.i.peel, %.outer
  %.sroa.7.1.peel = phi i64 [ %i.op, %_RNvXs_NtCsl4v216RJbSI_19brotli_decompressor11io_wrappersINtB4_15IoReaderWrapperINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorRShEEINtB4_10CustomReadNtNtB1k_5error5ErrorE4readCsgZAIVb0XKpv_9ssservice.exit.i.i.i.peel ], [ %.sroa.7.0.ph, %.outer ]
  %.sroa.014.1.i.i.i.peel = phi i64 [ 0, %_RNvXs_NtCsl4v216RJbSI_19brotli_decompressor11io_wrappersINtB4_15IoReaderWrapperINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorRShEEINtB4_10CustomReadNtNtB1k_5error5ErrorE4readCsgZAIVb0XKpv_9ssservice.exit.i.i.i.peel ], [ %.sroa.014.0.i.i.i.ph, %.outer ] ; 6 uses
  %.sroa.011.1.i.i.i.peel = phi i64 [ %i.om, %_RNvXs_NtCsl4v216RJbSI_19brotli_decompressor11io_wrappersINtB4_15IoReaderWrapperINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorRShEEINtB4_10CustomReadNtNtB1k_5error5ErrorE4readCsgZAIVb0XKpv_9ssservice.exit.i.i.i.peel ], [ %.sroa.011.039.i.i.i.ph, %.outer ] ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !44483)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !44484
  %i.oq = load i64, ptr %.sroa.3444.0..sroa_idx.i.i.i.i, align 8, !alias.scope !44483, !noalias !44469
  store i64 %i.oq, ptr %i.p, align 8, !noalias !44484
  %i.or = load i32, ptr %.sroa.104.0..sroa_idx.i.i.i.i, align 8, !range !44485, !alias.scope !44483, !noalias !44469, !noundef !177
  %i.os = icmp slt i32 %i.or, 0
  br i1 %i.os, label %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode22BrotliDecompressStreamNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB18_B18_ECsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.peel, label %bb.co

_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode22BrotliDecompressStreamNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB18_B18_ECsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.peel: ; preds = %bb.cl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !44484
  br label %.loopexit5310

default.unreachable.i.i.i:                        ; preds = %.outer
  unreachable

.loopexit5309:                                    ; preds = %.outer
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsl4v216RJbSI_19brotli_decompressor5state11BrotliStateNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB1y_B1y_EECsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef align 8 dereferenceable(2600) %i.r) #52, !noalias !44486
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !44469
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !44487
  %i.ot = ptrtoint ptr %i.mg to i64               ; 2 uses
  %i.ou = and i64 %i.ot, 3
  switch i64 %i.ou, label %default.unreachable2339 [
    i64 2, label %bb.pe
    i64 3, label %bb.cm
    i64 0, label %bb.pe
    i64 1, label %bb.cn
  ], !prof !230

bb.cm:                                            ; preds = %.loopexit5309
  %i.ov = icmp ult ptr %i.mg, inttoptr (i64 188978561024 to ptr)
  %i.ow = and i64 %i.ot, 1095216660480
  %i.ox = icmp ne i64 %i.ow, 1095216660480
  call void @llvm.assume(i1 %i.ov)
  call void @llvm.assume(i1 %i.ox)
  br label %bb.pe

bb.cn:                                            ; preds = %.loopexit5309
  %i.oy = getelementptr i8, ptr %i.mg, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.oy) ]
  %i.oz = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  store ptr %i.oy, ptr %i.oz, align 8, !alias.scope !44488, !noalias !44487
  store i8 3, ptr %i.q, align 8, !alias.scope !44488, !noalias !44487
  call void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.oz) #52, !noalias !44489
  br label %bb.pe

bb.co:                                            ; preds = %bb.cl
  %i.pa = icmp ugt i64 %.sroa.014.1.i.i.i.peel, 4294967295
  %i.pb = add nuw nsw i64 %.sroa.011.1.i.i.i.peel, %.sroa.014.1.i.i.i.peel
  %i.pc = icmp samesign ugt i64 %i.pb, 4096
  %or.cond914.i.i.i.i = select i1 %i.pa, i1 true, i1 %i.pc
  br i1 %or.cond914.i.i.i.i, label %.sink.split.i.i.i.i, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.pd = load i32, ptr %i.nb, align 4, !alias.scope !44490, !noalias !44469, !noundef !177 ; 2 uses
  %i.pe = icmp eq i32 %i.pd, 0
  br i1 %i.pe, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  %i.pf = trunc nuw i64 %.sroa.011.1.i.i.i.peel to i32
  store i32 %i.pf, ptr %.sroa.33.0..sroa_idx.i.i.i.i, align 8, !alias.scope !44490, !noalias !44469
  %i.pg = trunc nuw i64 %.sroa.014.1.i.i.i.peel to i32
  br label %bb.cs

bb.cr:                                            ; preds = %bb.cp
  %i.ph = zext i32 %i.pd to i64                   ; 5 uses
  %i.pi = sub nsw i64 8, %i.ph
  %i.pj = call i64 @llvm.umin.i64(i64 %i.pi, i64 %.sroa.011.1.i.i.i.peel) ; 4 uses
  %.not.i.i.i.i61 = icmp eq i64 %i.pj, 0
  br i1 %.not.i.i.i.i61, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cv, %bb.cr, %bb.cq
  %storemerge.i.i.i = phi i32 [ %i.pg, %bb.cq ], [ 0, %bb.cv ], [ 0, %bb.cr ]
  %.sroa.21.0.i.i.i.i = phi i64 [ 4096, %bb.cq ], [ 8, %bb.cv ], [ 8, %bb.cr ]
  %.sroa.029.0.i.i.i.i = phi ptr [ %i.t, %bb.cq ], [ %i.p, %bb.cv ], [ %i.p, %bb.cr ]
  %.sroa.09.0.i.i.i.i = phi i32 [ 1, %bb.cq ], [ 2, %bb.cv ], [ 2, %bb.cr ]
  store i32 %storemerge.i.i.i, ptr %.sroa.32.0..sroa_idx.i.i.i.i, align 4, !alias.scope !44490, !noalias !44469
  br label %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit.i.i.i.i

bb.ct:                                            ; preds = %bb.cr
  %i.pk = add nuw nsw i64 %i.pj, %i.ph            ; 2 uses
  %i.pl = icmp samesign ult i64 %i.pk, 9
  br i1 %i.pl, label %bb.cv, label %bb.cu, !prof !191

bb.cu:                                            ; preds = %bb.ct
  call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %i.ph, i64 noundef %i.pk, i64 noundef 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @398) #62, !noalias !44491
  unreachable

bb.cv:                                            ; preds = %bb.ct
  %i.pm = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.ph
  %i.pn = getelementptr inbounds nuw i8, ptr %i.t, i64 %.sroa.014.1.i.i.i.peel ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.pm, ptr nonnull readonly align 1 %i.pn, i64 range(i64 0, -9223372036854775808) %i.pj, i1 false), !alias.scope !44492, !noalias !44493
  %i.po = getelementptr inbounds nuw i8, ptr %.sroa.3444.0..sroa_idx.i.i.i.i, i64 %i.ph
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.po, ptr nonnull readonly align 1 %i.pn, i64 range(i64 0, -9223372036854775808) %i.pj, i1 false), !alias.scope !44494, !noalias !44495
  br label %bb.cs

_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit.i.i.i.i: ; preds = %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit.i.i.i.i.backedge, %bb.cs
  %.sroa.017.2.i.i.i = phi i64 [ 0, %bb.cs ], [ %.sroa.017.2.i.i.i.be, %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit.i.i.i.i.backedge ] ; 60 uses
  %.sroa.014.2.i.i.i = phi i64 [ %.sroa.014.1.i.i.i.peel, %bb.cs ], [ %.sroa.014.2.i.i.i.be, %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit.i.i.i.i.backedge ] ; 10 uses
  %.sroa.011.2.i.i.i = phi i64 [ %.sroa.011.1.i.i.i.peel, %bb.cs ], [ %.sroa.011.2.i.i.i.be, %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit.i.i.i.i.backedge ] ; 7 uses
  %.sroa.06.1.i.i.i = phi i64 [ %.sroa.06.0.i.i.i.ph, %bb.cs ], [ %.sroa.06.1.i.i.i.be, %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit.i.i.i.i.backedge ] ; 60 uses
  %.sroa.21.1.i.i.i.i = phi i64 [ %.sroa.21.0.i.i.i.i, %bb.cs ], [ %.sroa.21.1.i.i.i.i.be, %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit.i.i.i.i.backedge ] ; 87 uses
  %.sroa.029.1.i.i.i.i = phi ptr [ %.sroa.029.0.i.i.i.i, %bb.cs ], [ %.sroa.029.1.i.i.i.i.be, %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit.i.i.i.i.backedge ] ; 87 uses
  %.sroa.09.1.i.i.i.i = phi i32 [ %.sroa.09.0.i.i.i.i, %bb.cs ], [ %.sroa.09.1.i.i.i.i.be, %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit.i.i.i.i.backedge ] ; 3 uses
  switch i32 %.sroa.09.1.i.i.i.i, label %bb.mj [
    i32 1, label %.preheader214.i.i.i.i
    i32 2, label %bb.mi
  ]

.preheader214.i.i.i.i:                            ; preds = %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit.i.i.i.i
  %i.pp = trunc nuw nsw i64 %.sroa.21.1.i.i.i.i to i32 ; 15 uses
  %.pre.i.i.i.i62 = load i8, ptr %i.nc, align 2, !range !286, !alias.scope !44490, !noalias !44469
  br label %bb.cw

bb.cw:                                            ; preds = %.backedge.i.i.i.i, %.preheader214.i.i.i.i
  %.sroa.014.3.i.i.i = phi i64 [ %.sroa.014.2.i.i.i, %.preheader214.i.i.i.i ], [ %.sroa.014.4.i.i.i, %.backedge.i.i.i.i ] ; 81 uses
  %.sroa.011.3.i.i.i = phi i64 [ %.sroa.011.2.i.i.i, %.preheader214.i.i.i.i ], [ %.sroa.011.4.i.i.i, %.backedge.i.i.i.i ] ; 81 uses
  %i.pq = phi i8 [ %.pre.i.i.i.i62, %.preheader214.i.i.i.i ], [ %.sink.i.i.i.i, %.backedge.i.i.i.i ]
  switch i8 %i.pq, label %default.unreachable2339 [
    i8 0, label %bb.cx
    i8 1, label %bb.cy
    i8 2, label %bb.db
    i8 3, label %bb.dd
    i8 4, label %bb.de
    i8 5, label %bb.em
    i8 6, label %bb.ep
    i8 7, label %bb.ev
    i8 8, label %bb.ev
    i8 9, label %bb.ev
    i8 10, label %bb.ev
    i8 11, label %bb.ew
    i8 12, label %.preheader.i.i.i.i
    i8 13, label %bb.ft
    i8 14, label %bb.gc
    i8 15, label %bb.ft
    i8 16, label %bb.ft
    i8 17, label %bb.gd
    i8 18, label %bb.ge
    i8 19, label %bb.gf
    i8 20, label %bb.gg
    i8 21, label %bb.gh
    i8 22, label %bb.gi
    i8 23, label %bb.gj
    i8 24, label %bb.gu
  ]

.preheader.i.i.i.i:                               ; preds = %bb.cw
  %.promoted.i.i.i.i = load i32, ptr %i.nm, align 8, !alias.scope !44490, !noalias !44469 ; 2 uses
  %i.pr = icmp sgt i32 %.promoted.i.i.i.i, 0
  br i1 %i.pr, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i65

.lr.ph.i.i.i.i:                                   ; preds = %.preheader.i.i.i.i
  %.promoted454.i.i.i.i = load i32, ptr %.sroa.30.0..sroa_idx.i.i.i.i, align 8, !alias.scope !44496, !noalias !44469
  %.promoted456.i.i.i.i = load i64, ptr %i.ni, align 8, !alias.scope !44490, !noalias !44469
  %.promoted457.i.i.i.i = load i32, ptr %.sroa.33.0..sroa_idx.i.i.i.i, align 8, !alias.scope !44490, !noalias !44469
  %.promoted460.i.i.i.i = load i32, ptr %.sroa.32.0..sroa_idx.i.i.i.i, align 4, !alias.scope !44490, !noalias !44469
  br label %bb.iy

bb.cx:                                            ; preds = %bb.cw
  %i.ps = load i32, ptr %.sroa.30.0..sroa_idx.i.i.i.i, align 8, !alias.scope !44490, !noalias !44469, !noundef !177 ; 2 uses
  %i.pt = icmp eq i32 %i.ps, 64
  br i1 %i.pt, label %bb.gv, label %._crit_edge689.i.i.i.i

._crit_edge689.i.i.i.i:                           ; preds = %bb.cx
  %.pre690.i.i.i.i = load i64, ptr %i.ni, align 8, !alias.scope !44497, !noalias !44469
  br label %bb.gz

bb.cy:                                            ; preds = %bb.cw
  call void @llvm.experimental.noalias.scope.decl(metadata !44498)
  call void @llvm.experimental.noalias.scope.decl(metadata !44499)
  call void @llvm.experimental.noalias.scope.decl(metadata !44500)
  %.promoted.i.i.i.i.i = load i32, ptr %.sroa.30.0..sroa_idx.i.i.i.i, align 8, !alias.scope !44501, !noalias !44469 ; 3 uses
  %i.pu = add i32 %.promoted.i.i.i.i.i, -59
  %.not.i.i.i.i.i73 = icmp ult i32 %i.pu, 6
  %.promoted14.i.i.i.i.i = load i64, ptr %i.ni, align 8, !alias.scope !44501, !noalias !44469 ; 2 uses
  br i1 %.not.i.i.i.i.i73, label %.lr.ph.i.i.i.i.i, label %.loopexit211.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.cy
  %.promoted17.i.i.i.i.i = load i32, ptr %.sroa.33.0..sroa_idx.i.i.i.i, align 8, !alias.scope !44501, !noalias !44469 ; 2 uses
  %.promoted18.i.i.i.i.i = load i32, ptr %.sroa.32.0..sroa_idx.i.i.i.i, align 4, !alias.scope !44501, !noalias !44469 ; 3 uses
  %i.pv = zext i32 %.promoted18.i.i.i.i.i to i64  ; 2 uses
  %i.pw = icmp eq i32 %.promoted17.i.i.i.i.i, 0
  br i1 %i.pw, label %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit.i.i.i.i.backedge, label %bb.cz

bb.cz:                                            ; preds = %.lr.ph.i.i.i.i.i
  %exitcond676.not.not.i.i.i.i = icmp ult i32 %.promoted18.i.i.i.i.i, %i.pp
  br i1 %exitcond676.not.not.i.i.i.i, label %.loopexit211.loopexit.i.i.i.i, label %bb.da

.loopexit211.loopexit.i.i.i.i:                    ; preds = %bb.cz
  %i.px = getelementptr inbounds nuw i8, ptr %.sroa.029.1.i.i.i.i, i64 %i.pv
  %i.py = load i8, ptr %i.px, align 1, !alias.scope !44500, !noalias !44493, !noundef !177
  %i.pz = zext i8 %i.py to i64
  %i.qa = call i64 @llvm.fshl.i64(i64 %i.pz, i64 %.promoted14.i.i.i.i.i, i64 56) ; 2 uses
  store i64 %i.qa, ptr %i.ni, align 8, !alias.scope !44501, !noalias !44469
  %i.qb = add nsw i32 %.promoted.i.i.i.i.i, -8
  %i.qc = add i32 %.promoted17.i.i.i.i.i, -1
  store i32 %i.qc, ptr %.sroa.33.0..sroa_idx.i.i.i.i, align 8, !alias.scope !44501, !noalias !44469
  %indvars.iv.next672.i.i.i.i = add nuw nsw i32 %.promoted18.i.i.i.i.i, 1
  store i32 %indvars.iv.next672.i.i.i.i, ptr %.sroa.32.0..sroa_idx.i.i.i.i, align 4, !alias.scope !44501, !noalias !44469
  br label %.loopexit211.i.i.i.i

bb.da:                                            ; preds = %bb.cz
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.pv, i64 noundef range(i64 8, 4097) %.sroa.21.1.i.i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @385) #62, !noalias !44502
  unreachable

bb.db:                                            ; preds = %bb.cw
  %i.qd = load i32, ptr %.sroa.102.0..sroa_idx.i.i.i.i, align 8, !alias.scope !44490, !noalias !44469, !noundef !177
  %i.qe = and i32 %i.qd, 31
  %i.qf = shl nuw i32 1, %i.qe
  %i.qg = add i32 %i.qf, -16                      ; 2 uses
  store i32 %i.qg, ptr %i.nt, align 4, !alias.scope !44490, !noalias !44469
  %i.qh = load i64, ptr %.sroa.40.0..sroa_idx.i.i.i.i, align 8, !alias.scope !44490, !noalias !44469, !noundef !177
  %i.qi = trunc i64 %i.qh to i32
  %i.qj = sub i32 %i.qg, %i.qi
  store i32 %i.qj, ptr %i.nu, align 8, !alias.scope !44490, !noalias !44469
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52, !noalias !44503
  %i.qk = call noundef align 2 dereferenceable_or_null(12960) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 12960, i64 noundef range(i64 1, 17) 2) #52, !noalias !44503 ; 3 uses
  %i.ql = icmp eq ptr %i.qk, null
  br i1 %i.ql, label %bb.dc, label %.lr.ph.i.i.i.i26.i.i.i

bb.dc:                                            ; preds = %bb.db
  call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef 2, i64 12960) #61, !noalias !44504
  unreachable

.lr.ph.i.i.i.i26.i.i.i:                           ; preds = %bb.db, %.lr.ph.i.i.i.i26.i.i.i.7
  %.sroa.0.018.i.i.i.i27.i.i.i = phi ptr [ %i.rc, %.lr.ph.i.i.i.i26.i.i.i.7 ], [ %i.qk, %bb.db ] ; 18 uses
  %.sroa.03.017.i.i.i.i28.i.i.i = phi i64 [ %i.ra, %.lr.ph.i.i.i.i26.i.i.i.7 ], [ 1, %bb.db ] ; 2 uses
  store i16 0, ptr %.sroa.0.018.i.i.i.i27.i.i.i, align 2, !noalias !44505
  %i.qm = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i.i.i.i27.i.i.i, i64 2
  store i8 0, ptr %i.qm, align 2, !noalias !44505
  %i.qn = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i.i.i.i27.i.i.i, i64 4
  store i16 0, ptr %i.qn, align 2, !noalias !44505
  %i.qo = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i.i.i.i27.i.i.i, i64 6
  store i8 0, ptr %i.qo, align 2, !noalias !44505
  %i.qp = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i.i.i.i27.i.i.i, i64 8
  store i16 0, ptr %i.qp, align 2, !noalias !44505
  %i.qq = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i.i.i.i27.i.i.i, i64 10
  store i8 0, ptr %i.qq, align 2, !noalias !44505
  %i.qr = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i.i.i.i27.i.i.i, i64 12
  store i16 0, ptr %i.qr, align 2, !noalias !44505
  %i.qs = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i.i.i.i27.i.i.i, i64 14
  store i8 0, ptr %i.qs, align 2, !noalias !44505
  %i.qt = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i.i.i.i27.i.i.i, i64 16
  store i16 0, ptr %i.qt, align 2, !noalias !44505
  %i.qu = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i.i.i.i27.i.i.i, i64 18
  store i8 0, ptr %i.qu, align 2, !noalias !44505
  %i.qv = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i.i.i.i27.i.i.i, i64 20
  store i16 0, ptr %i.qv, align 2, !noalias !44505
  %i.qw = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i.i.i.i27.i.i.i, i64 22
  store i8 0, ptr %i.qw, align 2, !noalias !44505
  %i.qx = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i.i.i.i27.i.i.i, i64 24
  store i16 0, ptr %i.qx, align 2, !noalias !44505
  %i.qy = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i.i.i.i27.i.i.i, i64 26
  store i8 0, ptr %i.qy, align 2, !noalias !44505
  %i.qz = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i.i.i.i27.i.i.i, i64 28 ; 2 uses
  %exitcond.not.i.i.i.i29.i.i.i.6 = icmp eq i64 %.sroa.03.017.i.i.i.i28.i.i.i, 3233
  br i1 %exitcond.not.i.i.i.i29.i.i.i.6, label %_RNvXNtCs2D0wXkiOfwW_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs5NNYTrzbB3N_15alloc_no_stdlib15stack_allocator9AllocatorNtNtCsl4v216RJbSI_19brotli_decompressor7huffman11HuffmanCodeE10alloc_cellCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i, label %.lr.ph.i.i.i.i26.i.i.i.7

.lr.ph.i.i.i.i26.i.i.i.7:                         ; preds = %.lr.ph.i.i.i.i26.i.i.i
  %i.ra = add nuw nsw i64 %.sroa.03.017.i.i.i.i28.i.i.i, 8
  store i16 0, ptr %i.qz, align 2, !noalias !44505
  %i.rb = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i.i.i.i27.i.i.i, i64 30
  store i8 0, ptr %i.rb, align 2, !noalias !44505
  %i.rc = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i.i.i.i27.i.i.i, i64 32
  br label %.lr.ph.i.i.i.i26.i.i.i

_RNvXNtCs2D0wXkiOfwW_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs5NNYTrzbB3N_15alloc_no_stdlib15stack_allocator9AllocatorNtNtCsl4v216RJbSI_19brotli_decompressor7huffman11HuffmanCodeE10alloc_cellCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i26.i.i.i
  store i16 0, ptr %i.qz, align 2, !noalias !44505
  %i.rd = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i.i.i.i27.i.i.i, i64 30
  store i8 0, ptr %i.rd, align 2, !noalias !44505
  %.val126.i.i.i.i = load i64, ptr %.sroa.64.0..sroa_idx.i.i.i.i, align 8, !alias.scope !44490, !noalias !44469, !noundef !177 ; 2 uses
  %i.re = icmp eq i64 %.val126.i.i.i.i, 0
  br i1 %i.re, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2D0wXkiOfwW_12alloc_stdlib10heap_alloc7WrapBoxNtNtCsl4v216RJbSI_19brotli_decompressor7huffman11HuffmanCodeEECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i: ; preds = %_RNvXNtCs2D0wXkiOfwW_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs5NNYTrzbB3N_15alloc_no_stdlib15stack_allocator9AllocatorNtNtCsl4v216RJbSI_19brotli_decompressor7huffman11HuffmanCodeE10alloc_cellCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i
  %.val125.i.i.i.i = load ptr, ptr %.sroa.63.0..sroa_idx.i.i.i.i, align 8, !alias.scope !44490, !noalias !44469, !nonnull !177, !noundef !177
  %i.rf = shl nuw nsw i64 %.val126.i.i.i.i, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val125.i.i.i.i, i64 noundef %i.rf, i64 noundef 2) #52, !noalias !44491
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2D0wXkiOfwW_12alloc_stdlib10heap_alloc7WrapBoxNtNtCsl4v216RJbSI_19brotli_decompressor7huffman11HuffmanCodeEECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2D0wXkiOfwW_12alloc_stdlib10heap_alloc7WrapBoxNtNtCsl4v216RJbSI_19brotli_decompressor7huffman11HuffmanCodeEECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i: ; preds = %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i, %_RNvXNtCs2D0wXkiOfwW_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs5NNYTrzbB3N_15alloc_no_stdlib15stack_allocator9AllocatorNtNtCsl4v216RJbSI_19brotli_decompressor7huffman11HuffmanCodeE10alloc_cellCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i
  store ptr %i.qk, ptr %.sroa.63.0..sroa_idx.i.i.i.i, align 8, !alias.scope !44490, !noalias !44469
  store i64 3240, ptr %.sroa.64.0..sroa_idx.i.i.i.i, align 8, !alias.scope !44490, !noalias !44469
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52, !noalias !44506
  %i.rg = call noundef align 2 dereferenceable_or_null(12960) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 12960, i64 noundef range(i64 1, 17) 2) #52, !noalias !44506 ; 3 uses
  %i.rh = icmp eq ptr %i.rg, null
  br i1 %i.rh, label %bb.hj, label %.lr.ph.i.i.i161.i.i.i.i

bb.dd:                                            ; preds = %bb.cw
  call void @llvm.experimental.noalias.scope.decl(metadata !44507)
  store i32 0, ptr %i.nm, align 8, !alias.scope !44508, !noalias !44469
  store i32 16777216, ptr %.sroa.70.0..sroa_idx.i.i.i.i, align 8, !alias.scope !44508, !noalias !44469
  store i32 16777216, ptr %i.nn, align 4, !alias.scope !44508, !noalias !44469
  store i32 16777216, ptr %i.no, align 8, !alias.scope !44508, !noalias !44469
  store i32 1, ptr %i.nf, align 8, !alias.scope !44508, !noalias !44469
  store <4 x i32> <i32 1, i32 0, i32 1, i32 0>, ptr %.sroa.67.0..sroa_idx.i.i.i.i, align 8, !alias.scope !44508, !noalias !44469
  store <4 x i32> <i32 1, i32 0, i32 1, i32 1>, ptr %i.nq, align 8, !alias.scope !44508, !noalias !44469
  %i.ri = load ptr, ptr %.sroa.24.0..sroa_idx.i.i.i.i, align 8, !alias.scope !44508, !noalias !44469, !nonnull !177, !noundef !177
  %i.rj = load i64, ptr %.sroa.25.0..sroa_idx.i.i.i.i, align 8, !alias.scope !44508, !noalias !44469, !noundef !177 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.24.0..sroa_idx.i.i.i.i, align 8, !alias.scope !44508, !noalias !44469
  store i64 0, ptr %.sroa.25.0..sroa_idx.i.i.i.i, align 8, !alias.scope !44508, !noalias !44469
  %i.rk = icmp eq i64 %i.rj, 0
  br i1 %i.rk, label %_RNvXNtCs2D0wXkiOfwW_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs5NNYTrzbB3N_15alloc_no_stdlib15stack_allocator9AllocatorhE9free_cellCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.dd
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ri, i64 noundef %i.rj, i64 noundef 1) #52, !noalias !44509
  br label %_RNvXNtCs2D0wXkiOfwW_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs5NNYTrzbB3N_15alloc_no_stdlib15stack_allocator9AllocatorhE9free_cellCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i

_RNvXNtCs2D0wXkiOfwW_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs5NNYTrzbB3N_15alloc_no_stdlib15stack_allocator9AllocatorhE9free_cellCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i: ; preds = %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i, %bb.dd
  %i.rl = load ptr, ptr %.sroa.26.0..sroa_idx.i.i.i.i, align 8, !alias.scope !44508, !noalias !44469, !nonnull !177, !noundef !177
  %i.rm = load i64, ptr %.sroa.27.0..sroa_idx.i.i.i.i, align 8, !alias.scope !44508, !noalias !44469, !noundef !177 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.26.0..sroa_idx.i.i.i.i, align 8, !alias.scope !44508, !noalias !44469
  store i64 0, ptr %.sroa.27.0..sroa_idx.i.i.i.i, align 8, !alias.scope !44508, !noalias !44469
  %i.rn = icmp eq i64 %i.rm, 0
  br i1 %i.rn, label %_RNvXNtCs2D0wXkiOfwW_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs5NNYTrzbB3N_15alloc_no_stdlib15stack_allocator9AllocatorhE9free_cellCsgZAIVb0XKpv_9ssservice.exit2.i.i.i.i.i, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i1.i.i.i.i.i

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i1.i.i.i.i.i: ; preds = %_RNvXNtCs2D0wXkiOfwW_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs5NNYTrzbB3N_15alloc_no_stdlib15stack_allocator9AllocatorhE9free_cellCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.rl, i64 noundef %i.rm, i64 noundef 1) #52, !noalias !44510
  br label %_RNvXNtCs2D0wXkiOfwW_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs5NNYTrzbB3N_15alloc_no_stdlib15stack_allocator9AllocatorhE9free_cellCsgZAIVb0XKpv_9ssservice.exit2.i.i.i.i.i

_RNvXNtCs2D0wXkiOfwW_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs5NNYTrzbB3N_15alloc_no_stdlib15stack_allocator9AllocatorhE9free_cellCsgZAIVb0XKpv_9ssservice.exit2.i.i.i.i.i: ; preds = %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i1.i.i.i.i.i, %_RNvXNtCs2D0wXkiOfwW_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs5NNYTrzbB3N_15alloc_no_stdlib15stack_allocator9AllocatorhE9free_cellCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i
  %i.ro = load ptr, ptr %.sroa.14.0..sroa_idx.i.i.i.i, align 8, !alias.scope !44508, !noalias !44469, !nonnull !177, !noundef !177
  %i.rp = load i64, ptr %.sroa.15.0..sroa_idx.i.i.i.i, align 8, !alias.scope !44508, !noalias !44469, !noundef !177 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.14.0..sroa_idx.i.i.i.i, align 8, !alias.scope !44508, !noalias !44469
  store i64 0, ptr %.sroa.15.0..sroa_idx.i.i.i.i, align 8, !alias.scope !44508, !noalias !44469
  %i.rq = icmp eq i64 %i.rp, 0
  br i1 %i.rq, label %_RNvXNtCs2D0wXkiOfwW_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs5NNYTrzbB3N_15alloc_no_stdlib15stack_allocator9AllocatorhE9free_cellCsgZAIVb0XKpv_9ssservice.exit4.i.i.i.i.i, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i3.i.i.i.i.i

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i3.i.i.i.i.i: ; preds = %_RNvXNtCs2D0wXkiOfwW_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs5NNYTrzbB3N_15alloc_no_stdlib15stack_allocator9AllocatorhE9free_cellCsgZAIVb0XKpv_9ssservice.exit2.i.i.i.i.i
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ro, i64 noundef %i.rp, i64 noundef 1) #52, !noalias !44511
  br label %_RNvXNtCs2D0wXkiOfwW_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs5NNYTrzbB3N_15alloc_no_stdlib15stack_allocator9AllocatorhE9free_cellCsgZAIVb0XKpv_9ssservice.exit4.i.i.i.i.i

_RNvXNtCs2D0wXkiOfwW_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs5NNYTrzbB3N_15alloc_no_stdlib15stack_allocator9AllocatorhE9free_cellCsgZAIVb0XKpv_9ssservice.exit4.i.i.i.i.i: ; preds = %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i3.i.i.i.i.i, %_RNvXNtCs2D0wXkiOfwW_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs5NNYTrzbB3N_15alloc_no_stdlib15stack_allocator9AllocatorhE9free_cellCsgZAIVb0XKpv_9ssservice.exit2.i.i.i.i.i
  store i8 0, ptr %.sroa.107.0..sroa_idx.i.i.i.i, align 8, !alias.scope !44508, !noalias !44469
  store i8 0, ptr %i.ns, align 1, !alias.scope !44508, !noalias !44469
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.nr, i8 0, i64 16, i1 false), !alias.scope !44508, !noalias !44469
  store ptr @_RNvNtCsl4v216RJbSI_19brotli_decompressor7context14kContextLookup, ptr %.sroa.6251.0..sroa_idx.i.i.i.i, align 8, !alias.scope !44508, !noalias !44469, !captures !228
  call void @llvm.experimental.noalias.scope.decl(metadata !44512)
  %i.rr = load ptr, ptr %.sroa.41.0..sroa_idx.i.i.i.i, align 8, !alias.scope !44513, !noalias !44469, !nonnull !177, !align !222, !noundef !177
  %i.rs = load i64, ptr %.sroa.42.0..sroa_idx.i.i.i.i, align 8, !alias.scope !44513, !noalias !44469, !noundef !177 ; 2 uses
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.41.0..sroa_idx.i.i.i.i, align 8, !alias.scope !44513, !noalias !44469
  store i64 0, ptr %.sroa.42.0..sroa_idx.i.i.i.i, align 8, !alias.scope !44513, !noalias !44469
  %i.rt = icmp eq i64 %i.rs, 0
  br i1 %i.rt, label %_RNvXNtCs2D0wXkiOfwW_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs5NNYTrzbB3N_15alloc_no_stdlib15stack_allocator9AllocatormE9free_cellCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %_RNvXNtCs2D0wXkiOfwW_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs5NNYTrzbB3N_15alloc_no_stdlib15stack_allocator9AllocatorhE9free_cellCsgZAIVb0XKpv_9ssservice.exit4.i.i.i.i.i
  %i.ru = shl nuw nsw i64 %i.rs, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull align 4 %i.rr, i64 noundef %i.ru, i64 noundef 4) #52, !noalias !44514
  br label %_RNvXNtCs2D0wXkiOfwW_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs5NNYTrzbB3N_15alloc_no_stdlib15stack_allocator9AllocatormE9free_cellCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i

_RNvXNtCs2D0wXkiOfwW_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs5NNYTrzbB3N_15alloc_no_stdlib15stack_allocator9AllocatormE9free_cellCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i: ; preds = %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i, %_RNvXNtCs2D0wXkiOfwW_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs5NNYTrzbB3N_15alloc_no_stdlib15stack_allocator9AllocatorhE9free_cellCsgZAIVb0XKpv_9ssservice.exit4.i.i.i.i.i
  %i.rv = load ptr, ptr %.sroa.43.0..sroa_idx45.i.i.i.i, align 8, !alias.scope !44513, !noalias !44469, !nonnull !177, !align !246, !noundef !177
  %i.rw = load i64, ptr %.sroa.44.0..sroa_idx.i.i.i.i, align 8, !alias.scope !44513, !noalias !44469, !noundef !177 ; 2 uses
  store ptr inttoptr (i64 2 to ptr), ptr %.sroa.43.0..sroa_idx45.i.i.i.i, align 8, !alias.scope !44513, !noalias !44469
  store i64 0, ptr %.sroa.44.0..sroa_idx.i.i.i.i, align 8, !alias.scope !44513, !noalias !44469
  %i.rx = icmp eq i64 %i.rw, 0
  br i1 %i.rx, label %_RNvMs0_NtCsl4v216RJbSI_19brotli_decompressor7huffmanINtB5_16HuffmanTreeGroupNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB1c_E5resetCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i1.i.i.i.i.i.i

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i1.i.i.i.i.i.i: ; preds = %_RNvXNtCs2D0wXkiOfwW_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs5NNYTrzbB3N_15alloc_no_stdlib15stack_allocator9AllocatormE9free_cellCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i
  %i.ry = shl nuw nsw i64 %i.rw, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull align 2 %i.rv, i64 noundef %i.ry, i64 noundef 2) #52, !noalias !44514
  br label %_RNvMs0_NtCsl4v216RJbSI_19brotli_decompressor7huffmanINtB5_16HuffmanTreeGroupNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB1c_E5resetCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i

_RNvMs0_NtCsl4v216RJbSI_19brotli_decompressor7huffmanINtB5_16HuffmanTreeGroupNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB1c_E5resetCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i: ; preds = %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i1.i.i.i.i.i.i, %_RNvXNtCs2D0wXkiOfwW_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs5NNYTrzbB3N_15alloc_no_stdlib15stack_allocator9AllocatormE9free_cellCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !44515)
  %i.rz = load ptr, ptr %.sroa.4847.0..sroa_idx.i.i.i.i, align 8, !alias.scope !44516, !noalias !44469, !nonnull !177, !align !222, !noundef !177
  %i.sa = load i64, ptr %.sroa.49.0..sroa_idx.i.i.i.i, align 8, !alias.scope !44516, !noalias !44469, !noundef !177 ; 2 uses
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.4847.0..sroa_idx.i.i.i.i, align 8, !alias.scope !44516, !noalias !44469
  store i64 0, ptr %.sroa.49.0..sroa_idx.i.i.i.i, align 8, !alias.scope !44516, !noalias !44469
  %i.sb = icmp eq i64 %i.sa, 0
  br i1 %i.sb, label %_RNvXNtCs2D0wXkiOfwW_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs5NNYTrzbB3N_15alloc_no_stdlib15stack_allocator9AllocatormE9free_cellCsgZAIVb0XKpv_9ssservice.exit.i6.i.i.i.i.i, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i5.i.i.i.i.i

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i5.i.i.i.i.i: ; preds = %_RNvMs0_NtCsl4v216RJbSI_19brotli_decompressor7huffmanINtB5_16HuffmanTreeGroupNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB1c_E5resetCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i
  %i.sc = shl nuw nsw i64 %i.sa, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull align 4 %i.rz, i64 noundef %i.sc, i64 noundef 4) #52, !noalias !44517
  br label %_RNvXNtCs2D0wXkiOfwW_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs5NNYTrzbB3N_15alloc_no_stdlib15stack_allocator9AllocatormE9free_cellCsgZAIVb0XKpv_9ssservice.exit.i6.i.i.i.i.i

_RNvXNtCs2D0wXkiOfwW_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs5NNYTrzbB3N_15alloc_no_stdlib15stack_allocator9AllocatormE9free_cellCsgZAIVb0XKpv_9ssservice.exit.i6.i.i.i.i.i: ; preds = %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i5.i.i.i.i.i, %_RNvMs0_NtCsl4v216RJbSI_19brotli_decompressor7huffmanINtB5_16HuffmanTreeGroupNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB1c_E5resetCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i
  %i.sd = load ptr, ptr %.sroa.50.0..sroa_idx.i.i.i.i, align 8, !alias.scope !44516, !noalias !44469, !nonnull !177, !align !246, !noundef !177
  %i.se = load i64, ptr %.sroa.51.0..sroa_idx.i.i.i.i, align 8, !alias.scope !44516, !noalias !44469, !noundef !177 ; 2 uses
  store ptr inttoptr (i64 2 to ptr), ptr %.sroa.50.0..sroa_idx.i.i.i.i, align 8, !alias.scope !44516, !noalias !44469
  store i64 0, ptr %.sroa.51.0..sroa_idx.i.i.i.i, align 8, !alias.scope !44516, !noalias !44469
  %i.sf = icmp eq i64 %i.se, 0
  br i1 %i.sf, label %_RNvMs0_NtCsl4v216RJbSI_19brotli_decompressor7huffmanINtB5_16HuffmanTreeGroupNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB1c_E5resetCsgZAIVb0XKpv_9ssservice.exit8.i.i.i.i.i, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i1.i7.i.i.i.i.i

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i1.i7.i.i.i.i.i: ; preds = %_RNvXNtCs2D0wXkiOfwW_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs5NNYTrzbB3N_15alloc_no_stdlib15stack_allocator9AllocatormE9free_cellCsgZAIVb0XKpv_9ssservice.exit.i6.i.i.i.i.i
  %i.sg = shl nuw nsw i64 %i.se, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull align 2 %i.sd, i64 noundef %i.sg, i64 noundef 2) #52, !noalias !44517
  br label %_RNvMs0_NtCsl4v216RJbSI_19brotli_decompressor7huffmanINtB5_16HuffmanTreeGroupNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB1c_E5resetCsgZAIVb0XKpv_9ssservice.exit8.i.i.i.i.i

_RNvMs0_NtCsl4v216RJbSI_19brotli_decompressor7huffmanINtB5_16HuffmanTreeGroupNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB1c_E5resetCsgZAIVb0XKpv_9ssservice.exit8.i.i.i.i.i: ; preds = %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i1.i7.i.i.i.i.i, %_RNvXNtCs2D0wXkiOfwW_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs5NNYTrzbB3N_15alloc_no_stdlib15stack_allocator9AllocatormE9free_cellCsgZAIVb0XKpv_9ssservice.exit.i6.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !44518)
  %i.sh = load ptr, ptr %.sroa.5549.0..sroa_idx.i.i.i.i, align 8, !alias.scope !44519, !noalias !44469, !nonnull !177, !align !222, !noundef !177
  %i.si = load i64, ptr %.sroa.56.0..sroa_idx.i.i.i.i, align 8, !alias.scope !44519, !noalias !44469, !noundef !177 ; 2 uses
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.5549.0..sroa_idx.i.i.i.i, align 8, !alias.scope !44519, !noalias !44469
  store i64 0, ptr %.sroa.56.0..sroa_idx.i.i.i.i, align 8, !alias.scope !44519, !noalias !44469
  %i.sj = icmp eq i64 %i.si, 0
  br i1 %i.sj, label %_RNvXNtCs2D0wXkiOfwW_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs5NNYTrzbB3N_15alloc_no_stdlib15stack_allocator9AllocatormE9free_cellCsgZAIVb0XKpv_9ssservice.exit.i10.i.i.i.i.i, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i9.i.i.i.i.i

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i9.i.i.i.i.i: ; preds = %_RNvMs0_NtCsl4v216RJbSI_19brotli_decompressor7huffmanINtB5_16HuffmanTreeGroupNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB1c_E5resetCsgZAIVb0XKpv_9ssservice.exit8.i.i.i.i.i
  %i.sk = shl nuw nsw i64 %i.si, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull align 4 %i.sh, i64 noundef %i.sk, i64 noundef 4) #52, !noalias !44520
  br label %_RNvXNtCs2D0wXkiOfwW_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs5NNYTrzbB3N_15alloc_no_stdlib15stack_allocator9AllocatormE9free_cellCsgZAIVb0XKpv_9ssservice.exit.i10.i.i.i.i.i

_RNvXNtCs2D0wXkiOfwW_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs5NNYTrzbB3N_15alloc_no_stdlib15stack_allocator9AllocatormE9free_cellCsgZAIVb0XKpv_9ssservice.exit.i10.i.i.i.i.i: ; preds = %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i9.i.i.i.i.i, %_RNvMs0_NtCsl4v216RJbSI_19brotli_decompressor7huffmanINtB5_16HuffmanTreeGroupNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB1c_E5resetCsgZAIVb0XKpv_9ssservice.exit8.i.i.i.i.i
  %i.sl = load ptr, ptr %.sroa.57.0..sroa_idx.i.i.i.i, align 8, !alias.scope !44519, !noalias !44469, !nonnull !177, !align !246, !noundef !177
  %i.sm = load i64, ptr %.sroa.58.0..sroa_idx50.i.i.i.i, align 8, !alias.scope !44519, !noalias !44469, !noundef !177 ; 2 uses
  store ptr inttoptr (i64 2 to ptr), ptr %.sroa.57.0..sroa_idx.i.i.i.i, align 8, !alias.scope !44519, !noalias !44469
  store i64 0, ptr %.sroa.58.0..sroa_idx50.i.i.i.i, align 8, !alias.scope !44519, !noalias !44469
  %i.sn = icmp eq i64 %i.sm, 0
  br i1 %i.sn, label %.backedge.i.i.i.i, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i1.i11.i.i.i.i.i

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i1.i11.i.i.i.i.i: ; preds = %_RNvXNtCs2D0wXkiOfwW_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs5NNYTrzbB3N_15alloc_no_stdlib15stack_allocator9AllocatormE9free_cellCsgZAIVb0XKpv_9ssservice.exit.i10.i.i.i.i.i
  %i.so = shl nuw nsw i64 %i.sm, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull align 2 %i.sl, i64 noundef %i.so, i64 noundef 2) #52, !noalias !44520
  br label %.backedge.i.i.i.i

.backedge.i.i.i.i:                                ; preds = %bb.lb, %.loopexit.i.i.i.i.i, %bb.lt, %bb.kt, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2D0wXkiOfwW_12alloc_stdlib10heap_alloc7WrapBoxNtNtCsl4v216RJbSI_19brotli_decompressor7huffman11HuffmanCodeEECsgZAIVb0XKpv_9ssservice.exit181.i.i.i.i, %bb.kd, %bb.jf, %bb.jd, %bb.iw, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2D0wXkiOfwW_12alloc_stdlib10heap_alloc7WrapBoxNtNtCsl4v216RJbSI_19brotli_decompressor7huffman11HuffmanCodeEECsgZAIVb0XKpv_9ssservice.exit167.i.i.i.i, %.loopexit211.i.i.i.i, %bb.hi, %bb.hh, %bb.hg, %bb.hd, %bb.ha, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2D0wXkiOfwW_12alloc_stdlib10heap_alloc7WrapBoxNtNtCsl4v216RJbSI_19brotli_decompressor7huffman11HuffmanCodeEECsgZAIVb0XKpv_9ssservice.exit157.i.i.i.i, %bb.eq, %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i1.i11.i.i.i.i.i, %_RNvXNtCs2D0wXkiOfwW_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs5NNYTrzbB3N_15alloc_no_stdlib15stack_allocator9AllocatormE9free_cellCsgZAIVb0XKpv_9ssservice.exit.i10.i.i.i.i.i
  %.sroa.014.4.i.i.i = phi i64 [ %.sroa.014.3.i.i.i, %bb.ha ], [ %.sroa.014.3.i.i.i, %bb.hi ], [ %.sroa.014.3.i.i.i, %bb.hg ], [ %.sroa.014.3.i.i.i, %bb.hh ], [ %.sroa.014.3.i.i.i, %bb.hd ], [ %.sroa.014.3.i.i.i, %.loopexit211.i.i.i.i ], [ %.sroa.014.3.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2D0wXkiOfwW_12alloc_stdlib10heap_alloc7WrapBoxNtNtCsl4v216RJbSI_19brotli_decompressor7huffman11HuffmanCodeEECsgZAIVb0XKpv_9ssservice.exit167.i.i.i.i ], [ %.sroa.014.3.i.i.i, %_RNvXNtCs2D0wXkiOfwW_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs5NNYTrzbB3N_15alloc_no_stdlib15stack_allocator9AllocatormE9free_cellCsgZAIVb0XKpv_9ssservice.exit.i10.i.i.i.i.i ], [ %.sroa.014.3.i.i.i, %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i1.i11.i.i.i.i.i ], [ %.sroa.014.3.i.i.i, %bb.iw ], [ %.sroa.014.3.i.i.i, %bb.eq ], [ %.sroa.014.3.i.i.i, %bb.lt ], [ %i.awa, %bb.jf ], [ %.sroa.014.3.i.i.i, %bb.jd ], [ %.sroa.014.3.i.i.i, %bb.kd ], [ %.sroa.014.3.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2D0wXkiOfwW_12alloc_stdlib10heap_alloc7WrapBoxNtNtCsl4v216RJbSI_19brotli_decompressor7huffman11HuffmanCodeEECsgZAIVb0XKpv_9ssservice.exit181.i.i.i.i ], [ %.sroa.014.3.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2D0wXkiOfwW_12alloc_stdlib10heap_alloc7WrapBoxNtNtCsl4v216RJbSI_19brotli_decompressor7huffman11HuffmanCodeEECsgZAIVb0XKpv_9ssservice.exit157.i.i.i.i ], [ %.sroa.014.3.i.i.i, %bb.kt ], [ %.sroa.014.3.i.i.i, %.loopexit.i.i.i.i.i ], [ %.sroa.014.3.i.i.i, %bb.lb ]
  %.sroa.011.4.i.i.i = phi i64 [ %.sroa.011.3.i.i.i, %bb.ha ], [ %.sroa.011.3.i.i.i, %bb.hi ], [ %.sroa.011.3.i.i.i, %bb.hg ], [ %.sroa.011.3.i.i.i, %bb.hh ], [ %.sroa.011.3.i.i.i, %bb.hd ], [ %.sroa.011.3.i.i.i, %.loopexit211.i.i.i.i ], [ %.sroa.011.3.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2D0wXkiOfwW_12alloc_stdlib10heap_alloc7WrapBoxNtNtCsl4v216RJbSI_19brotli_decompressor7huffman11HuffmanCodeEECsgZAIVb0XKpv_9ssservice.exit167.i.i.i.i ], [ %.sroa.011.3.i.i.i, %_RNvXNtCs2D0wXkiOfwW_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs5NNYTrzbB3N_15alloc_no_stdlib15stack_allocator9AllocatormE9free_cellCsgZAIVb0XKpv_9ssservice.exit.i10.i.i.i.i.i ], [ %.sroa.011.3.i.i.i, %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i1.i11.i.i.i.i.i ], [ %.sroa.011.3.i.i.i, %bb.iw ], [ %.sroa.011.3.i.i.i, %bb.eq ], [ %.sroa.011.3.i.i.i, %bb.lt ], [ %i.avz, %bb.jf ], [ %.sroa.011.3.i.i.i, %bb.jd ], [ %.sroa.011.3.i.i.i, %bb.kd ], [ %.sroa.011.3.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2D0wXkiOfwW_12alloc_stdlib10heap_alloc7WrapBoxNtNtCsl4v216RJbSI_19brotli_decompressor7huffman11HuffmanCodeEECsgZAIVb0XKpv_9ssservice.exit181.i.i.i.i ], [ %.sroa.011.3.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2D0wXkiOfwW_12alloc_stdlib10heap_alloc7WrapBoxNtNtCsl4v216RJbSI_19brotli_decompressor7huffman11HuffmanCodeEECsgZAIVb0XKpv_9ssservice.exit157.i.i.i.i ], [ %.sroa.011.3.i.i.i, %bb.kt ], [ %.sroa.011.3.i.i.i, %.loopexit.i.i.i.i.i ], [ %.sroa.011.3.i.i.i, %bb.lb ]
  %.sink.i.i.i.i = phi i8 [ 2, %bb.ha ], [ 2, %bb.hi ], [ 1, %bb.hg ], [ 2, %bb.hh ], [ 2, %bb.hd ], [ 2, %.loopexit211.i.i.i.i ], [ 3, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2D0wXkiOfwW_12alloc_stdlib10heap_alloc7WrapBoxNtNtCsl4v216RJbSI_19brotli_decompressor7huffman11HuffmanCodeEECsgZAIVb0XKpv_9ssservice.exit167.i.i.i.i ], [ 4, %_RNvXNtCs2D0wXkiOfwW_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs5NNYTrzbB3N_15alloc_no_stdlib15stack_allocator9AllocatormE9free_cellCsgZAIVb0XKpv_9ssservice.exit.i10.i.i.i.i.i ], [ 4, %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i1.i11.i.i.i.i.i ], [ 6, %bb.iw ], [ 21, %bb.eq ], [ 23, %bb.lt ], [ 24, %bb.jf ], [ 24, %bb.jd ], [ 18, %bb.kd ], [ 19, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2D0wXkiOfwW_12alloc_stdlib10heap_alloc7WrapBoxNtNtCsl4v216RJbSI_19brotli_decompressor7huffman11HuffmanCodeEECsgZAIVb0XKpv_9ssservice.exit181.i.i.i.i ], [ 20, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2D0wXkiOfwW_12alloc_stdlib10heap_alloc7WrapBoxNtNtCsl4v216RJbSI_19brotli_decompressor7huffman11HuffmanCodeEECsgZAIVb0XKpv_9ssservice.exit157.i.i.i.i ], [ 22, %bb.kt ], [ 21, %.loopexit.i.i.i.i.i ], [ 22, %bb.lb ] ; 2 uses
  store i8 %.sink.i.i.i.i, ptr %i.nc, align 2, !alias.scope !44490, !noalias !44469
  br label %bb.cw

bb.de:                                            ; preds = %bb.cw
  call void @llvm.experimental.noalias.scope.decl(metadata !44521)
  call void @llvm.experimental.noalias.scope.decl(metadata !44522)
  %.promoted203.i.i.i.i = load i8, ptr %i.og, align 1, !alias.scope !44521, !noalias !44523
  %.promoted.i98.i.i.i = load i32, ptr %.sroa.7254.0..sroa_idx.i.i.i.i, align 8, !alias.scope !44521, !noalias !44523 ; 4 uses
  %.promoted231.i.i.i.i = load i8, ptr %i.oh, align 1, !alias.scope !44521, !noalias !44523 ; 2 uses
  %.promoted232.i.i.i.i = load i32, ptr %.sroa.30.0..sroa_idx.i.i.i.i, align 8, !alias.scope !44521, !noalias !44523 ; 9 uses
  %.promoted233.i.i.i.i = load i64, ptr %i.ni, align 8, !alias.scope !44521, !noalias !44523 ; 9 uses
  %.promoted234.i.i.i.i = load i32, ptr %.sroa.33.0..sroa_idx.i.i.i.i, align 8, !alias.scope !44521, !noalias !44523 ; 10 uses
  %.promoted235.i.i.i.i = load i32, ptr %.sroa.32.0..sroa_idx.i.i.i.i, align 4, !alias.scope !44521, !noalias !44523 ; 11 uses
  %.promoted236.i.i.i.i = load i32, ptr %i.nm, align 8, !alias.scope !44521, !noalias !44523 ; 7 uses
  switch i8 %.promoted203.i.i.i.i, label %default.unreachable.i109.i.i.i [
    i8 0, label %bb.dk
    i8 1, label %bb.dn
    i8 2, label %bb.dq
    i8 3, label %bb.dt
    i8 4, label %bb.dv
    i8 5, label %bb.dw
    i8 6, label %bb.dz
    i8 7, label %bb.ec
  ]

bb.df:                                            ; preds = %.loopexit93.i.i.i.i
  %i.sp = trunc nuw nsw i32 %i.abe to i8          ; 2 uses
  store i8 %i.sp, ptr %i.oh, align 1, !alias.scope !44521, !noalias !44523
  store i8 7, ptr %i.og, align 1, !alias.scope !44521, !noalias !44523
  br label %bb.ec

bb.dg:                                            ; preds = %.loopexit91.i.i.i.i
  store i8 6, ptr %i.og, align 1, !alias.scope !44521, !noalias !44523
  br label %bb.dz

bb.dh:                                            ; preds = %.loopexit88.i.i.i.i
  store i8 3, ptr %i.og, align 1, !alias.scope !44521, !noalias !44523
  br label %bb.dt

bb.di:                                            ; preds = %.loopexit88.i.i.i.i
  store i8 1, ptr %i.ny, align 4, !alias.scope !44521, !noalias !44523
  store i8 5, ptr %i.og, align 1, !alias.scope !44521, !noalias !44523
  br label %bb.dw

bb.dj:                                            ; preds = %.loopexit84.i.i.i.i
  store i8 1, ptr %i.og, align 1, !alias.scope !44521, !noalias !44523
  br label %bb.dn

default.unreachable.i109.i.i.i:                   ; preds = %bb.de
  unreachable

bb.dk:                                            ; preds = %bb.de
  call void @llvm.experimental.noalias.scope.decl(metadata !44524), !noalias !44525
  call void @llvm.experimental.noalias.scope.decl(metadata !44526), !noalias !44525
  %.not.i.i107.i.i.i = icmp eq i32 %.promoted232.i.i.i.i, 64
  br i1 %.not.i.i107.i.i.i, label %.lr.ph.i.preheader.i.i.i.i, label %.loopexit84.i.i.i.i

.lr.ph.i.preheader.i.i.i.i:                       ; preds = %bb.dk
  %i.sq = zext i32 %.promoted235.i.i.i.i to i64   ; 2 uses
  %i.sr = icmp eq i32 %.promoted234.i.i.i.i, 0
  br i1 %i.sr, label %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit.i.i.i.i.backedge, label %bb.dl

bb.dl:                                            ; preds = %.lr.ph.i.preheader.i.i.i.i
  %3 = icmp ult i32 %.promoted235.i.i.i.i, %i.pp
  br i1 %3, label %.loopexit84.loopexit.i.i.i.i, label %bb.dm

.loopexit84.loopexit.i.i.i.i:                     ; preds = %bb.dl
  %i.ss = getelementptr inbounds nuw i8, ptr %.sroa.029.1.i.i.i.i, i64 %i.sq
  %i.st = load i8, ptr %i.ss, align 1, !alias.scope !44527, !noalias !44528, !noundef !177
  %i.su = zext i8 %i.st to i64
  %i.sv = call i64 @llvm.fshl.i64(i64 %i.su, i64 %.promoted233.i.i.i.i, i64 56) ; 2 uses
  store i64 %i.sv, ptr %i.ni, align 8, !alias.scope !44529, !noalias !44523
  %i.sw = add i32 %.promoted234.i.i.i.i, -1       ; 2 uses
  store i32 %i.sw, ptr %.sroa.33.0..sroa_idx.i.i.i.i, align 8, !alias.scope !44529, !noalias !44523
  %indvars.iv.next474.i.i.i.i = add nuw nsw i32 %.promoted235.i.i.i.i, 1 ; 2 uses
  store i32 %indvars.iv.next474.i.i.i.i, ptr %.sroa.32.0..sroa_idx.i.i.i.i, align 4, !alias.scope !44529, !noalias !44523
  br label %.loopexit84.i.i.i.i

bb.dm:                                            ; preds = %bb.dl
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.sq, i64 noundef range(i64 8, 4097) %.sroa.21.1.i.i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @385) #62, !noalias !44530
  unreachable

bb.dn:                                            ; preds = %bb.dj, %bb.de
  %i.sx = phi i32 [ %i.ya, %bb.dj ], [ %.promoted232.i.i.i.i, %bb.de ] ; 2 uses
  %i.sy = phi i64 [ %i.xu, %bb.dj ], [ %.promoted233.i.i.i.i, %bb.de ] ; 2 uses
  %i.sz = phi i32 [ %i.xt, %bb.dj ], [ %.promoted234.i.i.i.i, %bb.de ] ; 3 uses
  %i.ta = phi i32 [ %i.xs, %bb.dj ], [ %.promoted235.i.i.i.i, %bb.de ] ; 4 uses
  %i.tb = phi i32 [ 0, %bb.dj ], [ %.promoted236.i.i.i.i, %bb.de ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !44531), !noalias !44525
  call void @llvm.experimental.noalias.scope.decl(metadata !44532), !noalias !44525
  %.not.i24.i.i.i.i = icmp eq i32 %i.sx, 64
  br i1 %.not.i24.i.i.i.i, label %.lr.ph.i27.preheader.i.i.i.i, label %.loopexit86.i.i.i.i

.lr.ph.i27.preheader.i.i.i.i:                     ; preds = %bb.dn
  %i.tc = zext i32 %i.ta to i64                   ; 2 uses
  %i.td = icmp eq i32 %i.sz, 0
  br i1 %i.td, label %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit.i.i.i.i.backedge, label %bb.do

bb.do:                                            ; preds = %.lr.ph.i27.preheader.i.i.i.i
  %4 = icmp ult i32 %i.ta, %i.pp
  br i1 %4, label %.loopexit86.loopexit.i.i.i.i, label %bb.dp

.loopexit86.loopexit.i.i.i.i:                     ; preds = %bb.do
  %i.te = getelementptr inbounds nuw i8, ptr %.sroa.029.1.i.i.i.i, i64 %i.tc
  %i.tf = load i8, ptr %i.te, align 1, !alias.scope !44533, !noalias !44528, !noundef !177
  %i.tg = zext i8 %i.tf to i64
  %i.th = call i64 @llvm.fshl.i64(i64 %i.tg, i64 %i.sy, i64 56) ; 2 uses
  store i64 %i.th, ptr %i.ni, align 8, !alias.scope !44534, !noalias !44523
  %i.ti = add i32 %i.sz, -1                       ; 2 uses
  store i32 %i.ti, ptr %.sroa.33.0..sroa_idx.i.i.i.i, align 8, !alias.scope !44534, !noalias !44523
  %indvars.iv.next471.i.i.i.i = add nuw nsw i32 %i.ta, 1 ; 2 uses
  store i32 %indvars.iv.next471.i.i.i.i, ptr %.sroa.32.0..sroa_idx.i.i.i.i, align 4, !alias.scope !44534, !noalias !44523
  br label %.loopexit86.i.i.i.i

bb.dp:                                            ; preds = %bb.do
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.tc, i64 noundef range(i64 8, 4097) %.sroa.21.1.i.i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @385) #62, !noalias !44535
  unreachable

.sink.split.i106.i.i.i:                           ; preds = %.loopexit86.i.i.i.i, %.loopexit84.i.i.i.i
  %.ph.i.i.i.i = phi i32 [ %i.ya, %.loopexit84.i.i.i.i ], [ %i.yi, %.loopexit86.i.i.i.i ]
  %.ph541.i.i.i.i = phi i64 [ %i.xu, %.loopexit84.i.i.i.i ], [ %i.yf, %.loopexit86.i.i.i.i ]
  %.ph542.i.i.i.i = phi i32 [ %i.xt, %.loopexit84.i.i.i.i ], [ %i.ye, %.loopexit86.i.i.i.i ]
  %.ph543.i.i.i.i = phi i32 [ %i.xs, %.loopexit84.i.i.i.i ], [ %i.yd, %.loopexit86.i.i.i.i ]
  %.ph544.i.i.i.i = phi i32 [ 0, %.loopexit84.i.i.i.i ], [ %i.tb, %.loopexit86.i.i.i.i ]
  store i8 2, ptr %i.og, align 1, !alias.scope !44521, !noalias !44523
  br label %bb.dq

bb.dq:                                            ; preds = %.sink.split.i106.i.i.i, %bb.de
  %i.tj = phi i32 [ %.promoted232.i.i.i.i, %bb.de ], [ %.ph.i.i.i.i, %.sink.split.i106.i.i.i ] ; 3 uses
  %i.tk = phi i64 [ %.promoted233.i.i.i.i, %bb.de ], [ %.ph541.i.i.i.i, %.sink.split.i106.i.i.i ] ; 2 uses
  %i.tl = phi i32 [ %.promoted234.i.i.i.i, %bb.de ], [ %.ph542.i.i.i.i, %.sink.split.i106.i.i.i ] ; 3 uses
  %i.tm = phi i32 [ %.promoted235.i.i.i.i, %bb.de ], [ %.ph543.i.i.i.i, %.sink.split.i106.i.i.i ] ; 4 uses
  %i.tn = phi i32 [ %.promoted236.i.i.i.i, %bb.de ], [ %.ph544.i.i.i.i, %.sink.split.i106.i.i.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !44536), !noalias !44525
  call void @llvm.experimental.noalias.scope.decl(metadata !44537), !noalias !44525
  %i.to = add i32 %i.tj, -63
  %.not.i34.i.i.i.i = icmp ult i32 %i.to, 2
  br i1 %.not.i34.i.i.i.i, label %.lr.ph.i37.preheader.i.i.i.i, label %.loopexit88.i.i.i.i

.lr.ph.i37.preheader.i.i.i.i:                     ; preds = %bb.dq
  %i.tp = zext i32 %i.tm to i64                   ; 2 uses
  %i.tq = icmp eq i32 %i.tl, 0
  br i1 %i.tq, label %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit.i.i.i.i.backedge, label %bb.dr

bb.dr:                                            ; preds = %.lr.ph.i37.preheader.i.i.i.i
  %exitcond469.not.not.i.i.i.i = icmp ult i32 %i.tm, %i.pp
  br i1 %exitcond469.not.not.i.i.i.i, label %.loopexit88.loopexit.i.i.i.i, label %bb.ds

.loopexit88.loopexit.i.i.i.i:                     ; preds = %bb.dr
  %i.tr = getelementptr inbounds nuw i8, ptr %.sroa.029.1.i.i.i.i, i64 %i.tp
  %i.ts = load i8, ptr %i.tr, align 1, !alias.scope !44538, !noalias !44528, !noundef !177
  %i.tt = zext i8 %i.ts to i64
  %i.tu = call i64 @llvm.fshl.i64(i64 %i.tt, i64 %i.tk, i64 56) ; 2 uses
  store i64 %i.tu, ptr %i.ni, align 8, !alias.scope !44539, !noalias !44523
  %i.tv = add nsw i32 %i.tj, -8
  %i.tw = add i32 %i.tl, -1                       ; 2 uses
  store i32 %i.tw, ptr %.sroa.33.0..sroa_idx.i.i.i.i, align 8, !alias.scope !44539, !noalias !44523
  %indvars.iv.next465.i.i.i.i = add nuw nsw i32 %i.tm, 1 ; 2 uses
  store i32 %indvars.iv.next465.i.i.i.i, ptr %.sroa.32.0..sroa_idx.i.i.i.i, align 4, !alias.scope !44539, !noalias !44523
  br label %.loopexit88.i.i.i.i

bb.ds:                                            ; preds = %bb.dr
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.tp, i64 noundef range(i64 8, 4097) %.sroa.21.1.i.i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @385) #62, !noalias !44540
  unreachable

bb.dt:                                            ; preds = %bb.dh, %bb.de
  %i.tx = phi i32 [ 0, %bb.dh ], [ %.promoted.i98.i.i.i, %bb.de ] ; 3 uses
  %i.ty = phi i8 [ %i.yw, %bb.dh ], [ %.promoted231.i.i.i.i, %bb.de ] ; 2 uses
  %i.tz = phi i32 [ %i.yu, %bb.dh ], [ %.promoted232.i.i.i.i, %bb.de ] ; 3 uses
  %i.ua = phi i64 [ %i.yo, %bb.dh ], [ %.promoted233.i.i.i.i, %bb.de ] ; 3 uses
  %i.ub = phi i32 [ %i.yn, %bb.dh ], [ %.promoted234.i.i.i.i, %bb.de ] ; 3 uses
  %i.uc = phi i32 [ %i.ym, %bb.dh ], [ %.promoted235.i.i.i.i, %bb.de ] ; 3 uses
  %i.ud = phi i32 [ %i.tn, %bb.dh ], [ %.promoted236.i.i.i.i, %bb.de ] ; 3 uses
  %i.ue = zext i8 %i.ty to i32                    ; 3 uses
  %i.uf = icmp slt i32 %i.tx, %i.ue
  br i1 %i.uf, label %.lr.ph179.i.i.i.i, label %.sink.split545.i.i.i.i

.lr.ph179.i.i.i.i:                                ; preds = %bb.dt
  %i.ug = icmp ugt i8 %i.ty, 4
  br i1 %i.ug, label %.lr.ph179.split.i.i.i.i, label %.lr.ph179.split.us.i.i.i.i

.lr.ph179.split.us.i.i.i.i:                       ; preds = %.lr.ph179.i.i.i.i, %.loopexit.us.i.i.i.i
  %i.uh = phi i32 [ %i.vd, %.loopexit.us.i.i.i.i ], [ %i.ud, %.lr.ph179.i.i.i.i ]
  %.promoted18.i70190.us.i.i.i.i = phi i32 [ %.promoted18.i70189.us.i.i.i.i, %.loopexit.us.i.i.i.i ], [ %i.uc, %.lr.ph179.i.i.i.i ] ; 4 uses
  %.promoted17.i69187.us.i.i.i.i = phi i32 [ %.promoted17.i69186.us.i.i.i.i, %.loopexit.us.i.i.i.i ], [ %i.ub, %.lr.ph179.i.i.i.i ] ; 3 uses
  %i.ui = phi i64 [ %i.us, %.loopexit.us.i.i.i.i ], [ %i.ua, %.lr.ph179.i.i.i.i ] ; 2 uses
  %.promoted.i63183.us.i.i.i.i = phi i32 [ %i.uy, %.loopexit.us.i.i.i.i ], [ %i.tz, %.lr.ph179.i.i.i.i ] ; 3 uses
  %.sroa.013.0177.us.i.i.i.i = phi i32 [ %i.uz, %.loopexit.us.i.i.i.i ], [ %i.tx, %.lr.ph179.i.i.i.i ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !44541), !noalias !44525
  call void @llvm.experimental.noalias.scope.decl(metadata !44542), !noalias !44525
  %i.uj = add i32 %.promoted.i63183.us.i.i.i.i, -61
  %.not.i64.us.i.i.i.i = icmp ult i32 %i.uj, 4
  br i1 %.not.i64.us.i.i.i.i, label %.lr.ph.i67.us.preheader.i.i.i.i, label %.loopexit.us.i.i.i.i

.lr.ph.i67.us.preheader.i.i.i.i:                  ; preds = %.lr.ph179.split.us.i.i.i.i
  %i.uk = zext i32 %.promoted18.i70190.us.i.i.i.i to i64 ; 2 uses
  %i.ul = icmp eq i32 %.promoted17.i69187.us.i.i.i.i, 0
  br i1 %i.ul, label %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode21DecodeMetaBlockLengthNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB17_B17_ECsgZAIVb0XKpv_9ssservice.exit.thread.sink.split.i.i.i, label %bb.du

bb.du:                                            ; preds = %.lr.ph.i67.us.preheader.i.i.i.i
  %exitcond455.not.not.i.i.i.i = icmp ult i32 %.promoted18.i70190.us.i.i.i.i, %i.pp
  br i1 %exitcond455.not.not.i.i.i.i, label %.loopexit.us.loopexit.i.i.i.i, label %.split199.us.i.i.i.i

.loopexit.us.loopexit.i.i.i.i:                    ; preds = %bb.du
  %i.um = getelementptr inbounds nuw i8, ptr %.sroa.029.1.i.i.i.i, i64 %i.uk
  %i.un = load i8, ptr %i.um, align 1, !alias.scope !44543, !noalias !44528, !noundef !177
  %i.uo = zext i8 %i.un to i64
  %i.up = call i64 @llvm.fshl.i64(i64 %i.uo, i64 %i.ui, i64 56) ; 2 uses
  store i64 %i.up, ptr %i.ni, align 8, !alias.scope !44544, !noalias !44523
  %i.uq = add nsw i32 %.promoted.i63183.us.i.i.i.i, -8
  %i.ur = add i32 %.promoted17.i69187.us.i.i.i.i, -1 ; 2 uses
  store i32 %i.ur, ptr %.sroa.33.0..sroa_idx.i.i.i.i, align 8, !alias.scope !44544, !noalias !44523
  %indvars.iv.next451.i.i.i.i = add nuw nsw i32 %.promoted18.i70190.us.i.i.i.i, 1 ; 2 uses
  store i32 %indvars.iv.next451.i.i.i.i, ptr %.sroa.32.0..sroa_idx.i.i.i.i, align 4, !alias.scope !44544, !noalias !44523
  br label %.loopexit.us.i.i.i.i

.loopexit.us.i.i.i.i:                             ; preds = %.loopexit.us.loopexit.i.i.i.i, %.lr.ph179.split.us.i.i.i.i
  %.promoted18.i70189.us.i.i.i.i = phi i32 [ %.promoted18.i70190.us.i.i.i.i, %.lr.ph179.split.us.i.i.i.i ], [ %indvars.iv.next451.i.i.i.i, %.loopexit.us.loopexit.i.i.i.i ] ; 2 uses
  %.promoted17.i69186.us.i.i.i.i = phi i32 [ %.promoted17.i69187.us.i.i.i.i, %.lr.ph179.split.us.i.i.i.i ], [ %i.ur, %.loopexit.us.loopexit.i.i.i.i ] ; 2 uses
  %i.us = phi i64 [ %i.ui, %.lr.ph179.split.us.i.i.i.i ], [ %i.up, %.loopexit.us.loopexit.i.i.i.i ] ; 3 uses
  %.lcssa7.i66.us.i.i.i.i = phi i32 [ %.promoted.i63183.us.i.i.i.i, %.lr.ph179.split.us.i.i.i.i ], [ %i.uq, %.loopexit.us.loopexit.i.i.i.i ] ; 2 uses
  %i.ut = and i32 %.lcssa7.i66.us.i.i.i.i, 63
  %i.uu = zext nneg i32 %i.ut to i64
  %i.uv = lshr i64 %i.us, %i.uu
  %i.uw = trunc i64 %i.uv to i32
  %i.ux = and i32 %i.uw, 15
  %i.uy = add i32 %.lcssa7.i66.us.i.i.i.i, 4      ; 3 uses
  store i32 %i.uy, ptr %.sroa.30.0..sroa_idx.i.i.i.i, align 8, !alias.scope !44544, !noalias !44523
  %i.uz = add i32 %.sroa.013.0177.us.i.i.i.i, 1   ; 2 uses
  %i.va = shl i32 %.sroa.013.0177.us.i.i.i.i, 2
  %i.vb = and i32 %i.va, 28
  %i.vc = shl nuw i32 %i.ux, %i.vb
  %i.vd = or i32 %i.vc, %i.uh                     ; 3 uses
  store i32 %i.vd, ptr %i.nm, align 8, !alias.scope !44521, !noalias !44523
  %exitcond456.not.i.i.i.i = icmp eq i32 %i.uz, %i.ue
  br i1 %exitcond456.not.i.i.i.i, label %.sink.split545.i.i.i.i, label %.lr.ph179.split.us.i.i.i.i

.sink.split545.i.i.i.i:                           ; preds = %.loopexit.us.i.i.i.i, %bb.ef, %.loopexit83.us.i.i.i.i, %bb.el, %bb.ec, %bb.dt
  %.promoted18.i.i1678.i = phi i32 [ %.promoted18.i70189.i.i.i.i, %bb.ef ], [ %i.uc, %bb.dt ], [ %.promoted18.i80161.us.i.i.i.i, %.loopexit83.us.i.i.i.i ], [ %i.wq, %bb.ec ], [ %.promoted18.i80161.i.i.i.i, %bb.el ], [ %.promoted18.i70189.us.i.i.i.i, %.loopexit.us.i.i.i.i ]
  %.promoted17.i.i1676.i = phi i32 [ %.promoted17.i69186.i.i.i.i, %bb.ef ], [ %i.ub, %bb.dt ], [ %.promoted17.i79158.us.i.i.i.i, %.loopexit83.us.i.i.i.i ], [ %i.wp, %bb.ec ], [ %.promoted17.i79158.i.i.i.i, %bb.el ], [ %.promoted17.i69186.us.i.i.i.i, %.loopexit.us.i.i.i.i ]
  %i.ve = phi i64 [ %i.zj, %bb.ef ], [ %i.ua, %bb.dt ], [ %i.xg, %.loopexit83.us.i.i.i.i ], [ %i.wo, %bb.ec ], [ %i.abs, %bb.el ], [ %i.us, %.loopexit.us.i.i.i.i ]
  %.promoted.i81673.i.i = phi i32 [ %i.zp, %bb.ef ], [ %i.tz, %bb.dt ], [ %i.xm, %.loopexit83.us.i.i.i.i ], [ %i.wn, %bb.ec ], [ %i.aby, %bb.el ], [ %i.uy, %.loopexit.us.i.i.i.i ]
  %.ph546.i.i.i.i = phi i32 [ %i.zw, %bb.ef ], [ %i.ud, %bb.dt ], [ %i.xr, %.loopexit83.us.i.i.i.i ], [ %i.wr, %bb.ec ], [ %i.acf, %bb.el ], [ %i.vd, %.loopexit.us.i.i.i.i ]
  store i8 4, ptr %i.og, align 1, !alias.scope !44521, !noalias !44523
  br label %bb.dv

bb.dv:                                            ; preds = %.sink.split545.i.i.i.i, %bb.de
  %.promoted18.i.i.i = phi i32 [ %.promoted235.i.i.i.i, %bb.de ], [ %.promoted18.i.i1678.i, %.sink.split545.i.i.i.i ] ; 3 uses
  %.promoted17.i.i.i = phi i32 [ %.promoted234.i.i.i.i, %bb.de ], [ %.promoted17.i.i1676.i, %.sink.split545.i.i.i.i ] ; 2 uses
  %.promoted14.i.i.i = phi i64 [ %.promoted233.i.i.i.i, %bb.de ], [ %i.ve, %.sink.split545.i.i.i.i ] ; 3 uses
  %.promoted.i8.i.i = phi i32 [ %.promoted232.i.i.i.i, %bb.de ], [ %.promoted.i81673.i.i, %.sink.split545.i.i.i.i ] ; 3 uses
  %.pre.i101.i.i.i = phi i32 [ %.promoted236.i.i.i.i, %bb.de ], [ %.ph546.i.i.i.i, %.sink.split545.i.i.i.i ]
  %i.vf = load i8, ptr %i.nk, align 2, !alias.scope !44521, !noalias !44523, !noundef !177
  %i.vg = icmp eq i8 %i.vf, 0
  %i.vh = load i8, ptr %i.ny, align 4, !alias.scope !44521, !noalias !44523
  %i.vi = icmp eq i8 %i.vh, 0
  %or.cond7.i.i.i.i = select i1 %i.vg, i1 %i.vi, i1 false
  br i1 %or.cond7.i.i.i.i, label %bb.eg, label %bb.ej

bb.dw:                                            ; preds = %bb.di, %bb.de
  %i.vj = phi i32 [ 0, %bb.di ], [ %.promoted.i98.i.i.i, %bb.de ]
  %i.vk = phi i32 [ %i.yu, %bb.di ], [ %.promoted232.i.i.i.i, %bb.de ] ; 2 uses
  %i.vl = phi i64 [ %i.yo, %bb.di ], [ %.promoted233.i.i.i.i, %bb.de ] ; 2 uses
  %i.vm = phi i32 [ %i.yn, %bb.di ], [ %.promoted234.i.i.i.i, %bb.de ] ; 3 uses
  %i.vn = phi i32 [ %i.ym, %bb.di ], [ %.promoted235.i.i.i.i, %bb.de ] ; 4 uses
  %i.vo = phi i32 [ %i.tn, %bb.di ], [ %.promoted236.i.i.i.i, %bb.de ]
  call void @llvm.experimental.noalias.scope.decl(metadata !44545), !noalias !44525
  call void @llvm.experimental.noalias.scope.decl(metadata !44546), !noalias !44525
  %.not.i44.i.i.i.i = icmp eq i32 %i.vk, 64
  br i1 %.not.i44.i.i.i.i, label %.lr.ph.i47.preheader.i.i.i.i, label %.loopexit91.i.i.i.i

.lr.ph.i47.preheader.i.i.i.i:                     ; preds = %bb.dw
  %i.vp = zext i32 %i.vn to i64                   ; 2 uses
  %i.vq = icmp eq i32 %i.vm, 0
  br i1 %i.vq, label %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit.i.i.i.i.backedge, label %bb.dx

bb.dx:                                            ; preds = %.lr.ph.i47.preheader.i.i.i.i
  %5 = icmp ult i32 %i.vn, %i.pp
  br i1 %5, label %.loopexit91.loopexit.i.i.i.i, label %bb.dy

.loopexit91.loopexit.i.i.i.i:                     ; preds = %bb.dx
  %i.vr = getelementptr inbounds nuw i8, ptr %.sroa.029.1.i.i.i.i, i64 %i.vp
  %i.vs = load i8, ptr %i.vr, align 1, !alias.scope !44547, !noalias !44528, !noundef !177
  %i.vt = zext i8 %i.vs to i64
  %i.vu = call i64 @llvm.fshl.i64(i64 %i.vt, i64 %i.vl, i64 56) ; 2 uses
  store i64 %i.vu, ptr %i.ni, align 8, !alias.scope !44548, !noalias !44523
  %i.vv = add i32 %i.vm, -1                       ; 2 uses
  store i32 %i.vv, ptr %.sroa.33.0..sroa_idx.i.i.i.i, align 8, !alias.scope !44548, !noalias !44523
  %indvars.iv.next448.i.i.i.i = add nuw nsw i32 %i.vn, 1 ; 2 uses
  store i32 %indvars.iv.next448.i.i.i.i, ptr %.sroa.32.0..sroa_idx.i.i.i.i, align 4, !alias.scope !44548, !noalias !44523
  br label %.loopexit91.i.i.i.i

bb.dy:                                            ; preds = %bb.dx
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.vp, i64 noundef range(i64 8, 4097) %.sroa.21.1.i.i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @385) #62, !noalias !44549
  unreachable

bb.dz:                                            ; preds = %bb.dg, %bb.de
  %i.vw = phi i32 [ %i.vj, %bb.dg ], [ %.promoted.i98.i.i.i, %bb.de ]
  %i.vx = phi i32 [ %i.aat, %bb.dg ], [ %.promoted232.i.i.i.i, %bb.de ] ; 3 uses
  %i.vy = phi i64 [ %i.aaq, %bb.dg ], [ %.promoted233.i.i.i.i, %bb.de ] ; 2 uses
  %i.vz = phi i32 [ %i.aap, %bb.dg ], [ %.promoted234.i.i.i.i, %bb.de ] ; 3 uses
  %i.wa = phi i32 [ %i.aao, %bb.dg ], [ %.promoted235.i.i.i.i, %bb.de ] ; 4 uses
  %i.wb = phi i32 [ %i.vo, %bb.dg ], [ %.promoted236.i.i.i.i, %bb.de ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !44550), !noalias !44525
  call void @llvm.experimental.noalias.scope.decl(metadata !44551), !noalias !44525
  %i.wc = add i32 %i.vx, -63
  %.not.i54.i.i.i.i = icmp ult i32 %i.wc, 2
  br i1 %.not.i54.i.i.i.i, label %.lr.ph.i57.preheader.i.i.i.i, label %.loopexit93.i.i.i.i

.lr.ph.i57.preheader.i.i.i.i:                     ; preds = %bb.dz
  %i.wd = zext i32 %i.wa to i64                   ; 2 uses
  %i.we = icmp eq i32 %i.vz, 0
  br i1 %i.we, label %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit.i.i.i.i.backedge, label %bb.ea

bb.ea:                                            ; preds = %.lr.ph.i57.preheader.i.i.i.i
  %exitcond446.not.not.i.i.i.i = icmp ult i32 %i.wa, %i.pp
  br i1 %exitcond446.not.not.i.i.i.i, label %.loopexit93.loopexit.i.i.i.i, label %bb.eb

.loopexit93.loopexit.i.i.i.i:                     ; preds = %bb.ea
  %i.wf = getelementptr inbounds nuw i8, ptr %.sroa.029.1.i.i.i.i, i64 %i.wd
  %i.wg = load i8, ptr %i.wf, align 1, !alias.scope !44552, !noalias !44528, !noundef !177
  %i.wh = zext i8 %i.wg to i64
  %i.wi = call i64 @llvm.fshl.i64(i64 %i.wh, i64 %i.vy, i64 56) ; 2 uses
  store i64 %i.wi, ptr %i.ni, align 8, !alias.scope !44553, !noalias !44523
  %i.wj = add nsw i32 %i.vx, -8
  %i.wk = add i32 %i.vz, -1                       ; 2 uses
  store i32 %i.wk, ptr %.sroa.33.0..sroa_idx.i.i.i.i, align 8, !alias.scope !44553, !noalias !44523
  %indvars.iv.next442.i.i.i.i = add nuw nsw i32 %i.wa, 1 ; 2 uses
  store i32 %indvars.iv.next442.i.i.i.i, ptr %.sroa.32.0..sroa_idx.i.i.i.i, align 4, !alias.scope !44553, !noalias !44523
  br label %.loopexit93.i.i.i.i

bb.eb:                                            ; preds = %bb.ea
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.wd, i64 noundef range(i64 8, 4097) %.sroa.21.1.i.i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @385) #62, !noalias !44554
  unreachable

bb.ec:                                            ; preds = %bb.df, %bb.de
  %i.wl = phi i32 [ %i.vw, %bb.df ], [ %.promoted.i98.i.i.i, %bb.de ] ; 3 uses
  %i.wm = phi i8 [ %i.sp, %bb.df ], [ %.promoted231.i.i.i.i, %bb.de ] ; 2 uses
  %i.wn = phi i32 [ %i.abf, %bb.df ], [ %.promoted232.i.i.i.i, %bb.de ] ; 3 uses
  %i.wo = phi i64 [ %i.aaz, %bb.df ], [ %.promoted233.i.i.i.i, %bb.de ] ; 3 uses
  %i.wp = phi i32 [ %i.aay, %bb.df ], [ %.promoted234.i.i.i.i, %bb.de ] ; 3 uses
  %i.wq = phi i32 [ %i.aax, %bb.df ], [ %.promoted235.i.i.i.i, %bb.de ] ; 3 uses
  %i.wr = phi i32 [ %i.wb, %bb.df ], [ %.promoted236.i.i.i.i, %bb.de ] ; 3 uses
  %i.ws = zext i8 %i.wm to i32                    ; 3 uses
  %i.wt = icmp slt i32 %i.wl, %i.ws
  br i1 %i.wt, label %.lr.ph.i102.i.i.i, label %.sink.split545.i.i.i.i

.lr.ph.i102.i.i.i:                                ; preds = %bb.ec
  %i.wu = icmp ugt i8 %i.wm, 1
  br i1 %i.wu, label %.lr.ph.split.i.i.i.i, label %.lr.ph.split.us.i.i.i.i

.lr.ph.split.us.i.i.i.i:                          ; preds = %.lr.ph.i102.i.i.i, %.loopexit83.us.i.i.i.i
  %i.wv = phi i32 [ %i.xr, %.loopexit83.us.i.i.i.i ], [ %i.wr, %.lr.ph.i102.i.i.i ]
  %.promoted18.i80162.us.i.i.i.i = phi i32 [ %.promoted18.i80161.us.i.i.i.i, %.loopexit83.us.i.i.i.i ], [ %i.wq, %.lr.ph.i102.i.i.i ] ; 4 uses
  %.promoted17.i79159.us.i.i.i.i = phi i32 [ %.promoted17.i79158.us.i.i.i.i, %.loopexit83.us.i.i.i.i ], [ %i.wp, %.lr.ph.i102.i.i.i ] ; 3 uses
  %i.ww = phi i64 [ %i.xg, %.loopexit83.us.i.i.i.i ], [ %i.wo, %.lr.ph.i102.i.i.i ] ; 2 uses
  %.promoted.i73155.us.i.i.i.i = phi i32 [ %i.xm, %.loopexit83.us.i.i.i.i ], [ %i.wn, %.lr.ph.i102.i.i.i ] ; 3 uses
  %.sroa.018.0153.us.i.i.i.i = phi i32 [ %i.xn, %.loopexit83.us.i.i.i.i ], [ %i.wl, %.lr.ph.i102.i.i.i ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !44555), !noalias !44525
  call void @llvm.experimental.noalias.scope.decl(metadata !44556), !noalias !44525
  %i.wx = add i32 %.promoted.i73155.us.i.i.i.i, -57
  %.not.i74.us.i.i.i.i = icmp ult i32 %i.wx, 8
  br i1 %.not.i74.us.i.i.i.i, label %.lr.ph.i77.us.preheader.i.i.i.i, label %.loopexit83.us.i.i.i.i

.lr.ph.i77.us.preheader.i.i.i.i:                  ; preds = %.lr.ph.split.us.i.i.i.i
  %i.wy = zext i32 %.promoted18.i80162.us.i.i.i.i to i64 ; 2 uses
  %i.wz = icmp eq i32 %.promoted17.i79159.us.i.i.i.i, 0
  br i1 %i.wz, label %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode21DecodeMetaBlockLengthNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB17_B17_ECsgZAIVb0XKpv_9ssservice.exit.thread.sink.split.i.i.i, label %bb.ed

bb.ed:                                            ; preds = %.lr.ph.i77.us.preheader.i.i.i.i
  %exitcond.not.not.i103.i.i.i = icmp ult i32 %.promoted18.i80162.us.i.i.i.i, %i.pp
  br i1 %exitcond.not.not.i103.i.i.i, label %.loopexit83.us.loopexit.i.i.i.i, label %.split.us.i.i.i.i

.loopexit83.us.loopexit.i.i.i.i:                  ; preds = %bb.ed
  %i.xa = getelementptr inbounds nuw i8, ptr %.sroa.029.1.i.i.i.i, i64 %i.wy
  %i.xb = load i8, ptr %i.xa, align 1, !alias.scope !44557, !noalias !44528, !noundef !177
  %i.xc = zext i8 %i.xb to i64
  %i.xd = call i64 @llvm.fshl.i64(i64 %i.xc, i64 %i.ww, i64 56) ; 2 uses
  store i64 %i.xd, ptr %i.ni, align 8, !alias.scope !44558, !noalias !44523
  %i.xe = add nsw i32 %.promoted.i73155.us.i.i.i.i, -8
  %i.xf = add i32 %.promoted17.i79159.us.i.i.i.i, -1 ; 2 uses
  store i32 %i.xf, ptr %.sroa.33.0..sroa_idx.i.i.i.i, align 8, !alias.scope !44558, !noalias !44523
  %indvars.iv.next.i104.i.i.i = add nuw nsw i32 %.promoted18.i80162.us.i.i.i.i, 1 ; 2 uses
  store i32 %indvars.iv.next.i104.i.i.i, ptr %.sroa.32.0..sroa_idx.i.i.i.i, align 4, !alias.scope !44558, !noalias !44523
  br label %.loopexit83.us.i.i.i.i

.loopexit83.us.i.i.i.i:                           ; preds = %.loopexit83.us.loopexit.i.i.i.i, %.lr.ph.split.us.i.i.i.i
  %.promoted18.i80161.us.i.i.i.i = phi i32 [ %.promoted18.i80162.us.i.i.i.i, %.lr.ph.split.us.i.i.i.i ], [ %indvars.iv.next.i104.i.i.i, %.loopexit83.us.loopexit.i.i.i.i ] ; 2 uses
  %.promoted17.i79158.us.i.i.i.i = phi i32 [ %.promoted17.i79159.us.i.i.i.i, %.lr.ph.split.us.i.i.i.i ], [ %i.xf, %.loopexit83.us.loopexit.i.i.i.i ] ; 2 uses
  %i.xg = phi i64 [ %i.ww, %.lr.ph.split.us.i.i.i.i ], [ %i.xd, %.loopexit83.us.loopexit.i.i.i.i ] ; 3 uses
  %.lcssa7.i76.us.i.i.i.i = phi i32 [ %.promoted.i73155.us.i.i.i.i, %.lr.ph.split.us.i.i.i.i ], [ %i.xe, %.loopexit83.us.loopexit.i.i.i.i ] ; 2 uses
  %i.xh = and i32 %.lcssa7.i76.us.i.i.i.i, 63
  %i.xi = zext nneg i32 %i.xh to i64
  %i.xj = lshr i64 %i.xg, %i.xi
  %i.xk = trunc i64 %i.xj to i32
  %i.xl = and i32 %i.xk, 255
  %i.xm = add i32 %.lcssa7.i76.us.i.i.i.i, 8      ; 3 uses
  store i32 %i.xm, ptr %.sroa.30.0..sroa_idx.i.i.i.i, align 8, !alias.scope !44558, !noalias !44523
  %i.xn = add i32 %.sroa.018.0153.us.i.i.i.i, 1   ; 2 uses
  %i.xo = shl i32 %.sroa.018.0153.us.i.i.i.i, 3
  %i.xp = and i32 %i.xo, 24
  %i.xq = shl nuw i32 %i.xl, %i.xp
  %i.xr = or i32 %i.xq, %i.wv                     ; 3 uses
  store i32 %i.xr, ptr %i.nm, align 8, !alias.scope !44521, !noalias !44523
  %exitcond433.not.i.i.i.i = icmp eq i32 %i.xn, %i.ws
  br i1 %exitcond433.not.i.i.i.i, label %.sink.split545.i.i.i.i, label %.lr.ph.split.us.i.i.i.i

.loopexit84.i.i.i.i:                              ; preds = %.loopexit84.loopexit.i.i.i.i, %bb.dk
  %i.xs = phi i32 [ %.promoted235.i.i.i.i, %bb.dk ], [ %indvars.iv.next474.i.i.i.i, %.loopexit84.loopexit.i.i.i.i ] ; 2 uses
  %i.xt = phi i32 [ %.promoted234.i.i.i.i, %bb.dk ], [ %i.sw, %.loopexit84.loopexit.i.i.i.i ] ; 2 uses
  %i.xu = phi i64 [ %.promoted233.i.i.i.i, %bb.dk ], [ %i.sv, %.loopexit84.loopexit.i.i.i.i ] ; 3 uses
  %.lcssa7.i.i108.i.i.i = phi i32 [ %.promoted232.i.i.i.i, %bb.dk ], [ 56, %.loopexit84.loopexit.i.i.i.i ] ; 2 uses
  %i.xv = and i32 %.lcssa7.i.i108.i.i.i, 63
  %i.xw = zext nneg i32 %i.xv to i64
  %i.xx = lshr i64 %i.xu, %i.xw
  %i.xy = trunc i64 %i.xx to i32
  %i.xz = and i32 %i.xy, 1                        ; 2 uses
  %i.ya = add i32 %.lcssa7.i.i108.i.i.i, 1        ; 3 uses
  store i32 %i.ya, ptr %.sroa.30.0..sroa_idx.i.i.i.i, align 8, !alias.scope !44529, !noalias !44523
  %i.yb = trunc nuw nsw i32 %i.xz to i8
  store i8 %i.yb, ptr %i.nk, align 2, !alias.scope !44521, !noalias !44523
  store i32 0, ptr %i.nm, align 8, !alias.scope !44521, !noalias !44523
  store i8 0, ptr %i.nz, align 1, !alias.scope !44521, !noalias !44523
  store i8 0, ptr %i.ny, align 4, !alias.scope !44521, !noalias !44523
  %i.yc = icmp eq i32 %i.xz, 0
  br i1 %i.yc, label %.sink.split.i106.i.i.i, label %bb.dj

.loopexit86.i.i.i.i:                              ; preds = %.loopexit86.loopexit.i.i.i.i, %bb.dn
  %i.yd = phi i32 [ %i.ta, %bb.dn ], [ %indvars.iv.next471.i.i.i.i, %.loopexit86.loopexit.i.i.i.i ]
  %i.ye = phi i32 [ %i.sz, %bb.dn ], [ %i.ti, %.loopexit86.loopexit.i.i.i.i ]
  %i.yf = phi i64 [ %i.sy, %bb.dn ], [ %i.th, %.loopexit86.loopexit.i.i.i.i ] ; 3 uses
  %.lcssa7.i26.i.i.i.i = phi i32 [ %i.sx, %bb.dn ], [ 56, %.loopexit86.loopexit.i.i.i.i ] ; 2 uses
  %i.yg = and i32 %.lcssa7.i26.i.i.i.i, 63
  %i.yh = zext nneg i32 %i.yg to i64
  %i.yi = add i32 %.lcssa7.i26.i.i.i.i, 1         ; 3 uses
  store i32 %i.yi, ptr %.sroa.30.0..sroa_idx.i.i.i.i, align 8, !alias.scope !44534, !noalias !44523
  %i.yj = shl nuw i64 1, %i.yh
  %i.yk = and i64 %i.yj, %i.yf
  %i.yl = icmp eq i64 %i.yk, 0
  br i1 %i.yl, label %.sink.split.i106.i.i.i, label %bb.hk

.loopexit88.i.i.i.i:                              ; preds = %.loopexit88.loopexit.i.i.i.i, %bb.dq
  %i.ym = phi i32 [ %i.tm, %bb.dq ], [ %indvars.iv.next465.i.i.i.i, %.loopexit88.loopexit.i.i.i.i ] ; 2 uses
  %i.yn = phi i32 [ %i.tl, %bb.dq ], [ %i.tw, %.loopexit88.loopexit.i.i.i.i ] ; 2 uses
  %i.yo = phi i64 [ %i.tk, %bb.dq ], [ %i.tu, %.loopexit88.loopexit.i.i.i.i ] ; 3 uses
  %.lcssa7.i36.i.i.i.i = phi i32 [ %i.tj, %bb.dq ], [ %i.tv, %.loopexit88.loopexit.i.i.i.i ] ; 2 uses
  %i.yp = and i32 %.lcssa7.i36.i.i.i.i, 63
  %i.yq = zext nneg i32 %i.yp to i64
  %i.yr = lshr i64 %i.yo, %i.yq
  %i.ys = trunc i64 %i.yr to i32
  %i.yt = and i32 %i.ys, 3                        ; 2 uses
  %i.yu = add i32 %.lcssa7.i36.i.i.i.i, 2         ; 3 uses
  store i32 %i.yu, ptr %.sroa.30.0..sroa_idx.i.i.i.i, align 8, !alias.scope !44539, !noalias !44523
  %i.yv = trunc nuw nsw i32 %i.yt to i8
  %i.yw = or disjoint i8 %i.yv, 4                 ; 2 uses
  store i8 %i.yw, ptr %i.oh, align 1, !alias.scope !44521, !noalias !44523
  store i32 0, ptr %.sroa.7254.0..sroa_idx.i.i.i.i, align 8, !alias.scope !44521, !noalias !44523
  %i.yx = icmp eq i32 %i.yt, 3
  br i1 %i.yx, label %bb.di, label %bb.dh

.lr.ph179.split.i.i.i.i:                          ; preds = %.lr.ph179.i.i.i.i, %bb.ef
  %i.yy = phi i32 [ %i.zw, %bb.ef ], [ %i.ud, %.lr.ph179.i.i.i.i ]
  %.promoted18.i70190.i.i.i.i = phi i32 [ %.promoted18.i70189.i.i.i.i, %bb.ef ], [ %i.uc, %.lr.ph179.i.i.i.i ] ; 4 uses
  %.promoted17.i69187.i.i.i.i = phi i32 [ %.promoted17.i69186.i.i.i.i, %bb.ef ], [ %i.ub, %.lr.ph179.i.i.i.i ] ; 3 uses
  %i.yz = phi i64 [ %i.zj, %bb.ef ], [ %i.ua, %.lr.ph179.i.i.i.i ] ; 2 uses
  %.promoted.i63183.i.i.i.i = phi i32 [ %i.zp, %bb.ef ], [ %i.tz, %.lr.ph179.i.i.i.i ] ; 3 uses
  %.sroa.013.0177.i.i.i.i = phi i32 [ %i.zq, %bb.ef ], [ %i.tx, %.lr.ph179.i.i.i.i ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !44541), !noalias !44525
  call void @llvm.experimental.noalias.scope.decl(metadata !44542), !noalias !44525
  %i.za = add i32 %.promoted.i63183.i.i.i.i, -61
  %.not.i64.i.i.i.i = icmp ult i32 %i.za, 4
  br i1 %.not.i64.i.i.i.i, label %.lr.ph.i67.preheader.i.i.i.i, label %.loopexit.i105.i.i.i

.lr.ph.i67.preheader.i.i.i.i:                     ; preds = %.lr.ph179.split.i.i.i.i
  %i.zb = zext i32 %.promoted18.i70190.i.i.i.i to i64 ; 2 uses
  %i.zc = icmp eq i32 %.promoted17.i69187.i.i.i.i, 0
  br i1 %i.zc, label %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode21DecodeMetaBlockLengthNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB17_B17_ECsgZAIVb0XKpv_9ssservice.exit.thread.sink.split.i.i.i, label %bb.ee

bb.ee:                                            ; preds = %.lr.ph.i67.preheader.i.i.i.i
  %exitcond462.not.not.i.i.i.i = icmp ult i32 %.promoted18.i70190.i.i.i.i, %i.pp
  br i1 %exitcond462.not.not.i.i.i.i, label %.loopexit.loopexit.i.i.i.i, label %.split199.us.i.i.i.i

.loopexit.loopexit.i.i.i.i:                       ; preds = %bb.ee
  %i.zd = getelementptr inbounds nuw i8, ptr %.sroa.029.1.i.i.i.i, i64 %i.zb
  %i.ze = load i8, ptr %i.zd, align 1, !alias.scope !44543, !noalias !44528, !noundef !177
  %i.zf = zext i8 %i.ze to i64
  %i.zg = call i64 @llvm.fshl.i64(i64 %i.zf, i64 %i.yz, i64 56) ; 2 uses
  store i64 %i.zg, ptr %i.ni, align 8, !alias.scope !44544, !noalias !44523
  %i.zh = add nsw i32 %.promoted.i63183.i.i.i.i, -8
  %i.zi = add i32 %.promoted17.i69187.i.i.i.i, -1 ; 2 uses
  store i32 %i.zi, ptr %.sroa.33.0..sroa_idx.i.i.i.i, align 8, !alias.scope !44544, !noalias !44523
  %indvars.iv.next458.i.i.i.i = add nuw nsw i32 %.promoted18.i70190.i.i.i.i, 1 ; 2 uses
  store i32 %indvars.iv.next458.i.i.i.i, ptr %.sroa.32.0..sroa_idx.i.i.i.i, align 4, !alias.scope !44544, !noalias !44523
  br label %.loopexit.i105.i.i.i

.split199.us.i.i.i.i:                             ; preds = %bb.du, %bb.ee
  %.us-phi201.i.i.i.i = phi i64 [ %i.zb, %bb.ee ], [ %i.uk, %bb.du ]
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %.us-phi201.i.i.i.i, i64 noundef range(i64 8, 4097) %.sroa.21.1.i.i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @385) #62, !noalias !44559
  unreachable

.loopexit.i105.i.i.i:                             ; preds = %.loopexit.loopexit.i.i.i.i, %.lr.ph179.split.i.i.i.i
  %.promoted18.i70189.i.i.i.i = phi i32 [ %.promoted18.i70190.i.i.i.i, %.lr.ph179.split.i.i.i.i ], [ %indvars.iv.next458.i.i.i.i, %.loopexit.loopexit.i.i.i.i ] ; 2 uses
  %.promoted17.i69186.i.i.i.i = phi i32 [ %.promoted17.i69187.i.i.i.i, %.lr.ph179.split.i.i.i.i ], [ %i.zi, %.loopexit.loopexit.i.i.i.i ] ; 2 uses
  %i.zj = phi i64 [ %i.yz, %.lr.ph179.split.i.i.i.i ], [ %i.zg, %.loopexit.loopexit.i.i.i.i ] ; 3 uses
  %.lcssa7.i66.i.i.i.i = phi i32 [ %.promoted.i63183.i.i.i.i, %.lr.ph179.split.i.i.i.i ], [ %i.zh, %.loopexit.loopexit.i.i.i.i ] ; 2 uses
  %i.zk = and i32 %.lcssa7.i66.i.i.i.i, 63
  %i.zl = zext nneg i32 %i.zk to i64
  %i.zm = lshr i64 %i.zj, %i.zl
  %i.zn = trunc i64 %i.zm to i32
  %i.zo = and i32 %i.zn, 15                       ; 2 uses
  %i.zp = add i32 %.lcssa7.i66.i.i.i.i, 4         ; 3 uses
  store i32 %i.zp, ptr %.sroa.30.0..sroa_idx.i.i.i.i, align 8, !alias.scope !44544, !noalias !44523
  %i.zq = add i32 %.sroa.013.0177.i.i.i.i, 1      ; 2 uses
  %i.zr = icmp eq i32 %i.zq, %i.ue                ; 2 uses
  %i.zs = icmp eq i32 %i.zo, 0
  %or.cond4.i.i.i.i = select i1 %i.zr, i1 %i.zs, i1 false
  br i1 %or.cond4.i.i.i.i, label %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit.i.i.i.i.backedge, label %bb.ef

bb.ef:                                            ; preds = %.loopexit.i105.i.i.i
  %i.zt = shl i32 %.sroa.013.0177.i.i.i.i, 2
  %i.zu = and i32 %i.zt, 28
  %i.zv = shl nuw i32 %i.zo, %i.zu
  %i.zw = or i32 %i.zv, %i.yy                     ; 3 uses
  store i32 %i.zw, ptr %i.nm, align 8, !alias.scope !44521, !noalias !44523
  br i1 %i.zr, label %.sink.split545.i.i.i.i, label %.lr.ph179.split.i.i.i.i

bb.eg:                                            ; preds = %bb.dv
  call void @llvm.experimental.noalias.scope.decl(metadata !44560)
  call void @llvm.experimental.noalias.scope.decl(metadata !44561)
  %.not.i9.i.i = icmp eq i32 %.promoted.i8.i.i, 64
  br i1 %.not.i9.i.i, label %bb.eh, label %.loopexit.i.i72

bb.eh:                                            ; preds = %bb.eg
  %i.zx = zext i32 %.promoted18.i.i.i to i64      ; 2 uses
  %i.zy = icmp eq i32 %.promoted17.i.i.i, 0
  br i1 %i.zy, label %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit.i.i.i.i.backedge, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %6 = icmp ult i32 %.promoted18.i.i.i, %i.pp
  br i1 %6, label %.loopexit.loopexit.i.i, label %7

7:                                                ; preds = %bb.ei
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.zx, i64 noundef range(i64 8, 4097) %.sroa.21.1.i.i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @385) #62, !noalias !44562
  unreachable

.loopexit.loopexit.i.i:                           ; preds = %bb.ei
  %i.zz = getelementptr inbounds nuw i8, ptr %.sroa.029.1.i.i.i.i, i64 %i.zx
  %i.aaa = load i8, ptr %i.zz, align 1, !alias.scope !44561, !noalias !44491, !noundef !177
  %i.aab = zext i8 %i.aaa to i64
  %i.aac = call i64 @llvm.fshl.i64(i64 %i.aab, i64 %.promoted14.i.i.i, i64 56) ; 2 uses
  store i64 %i.aac, ptr %i.ni, align 8, !alias.scope !44560, !noalias !44563
  %i.aad = add i32 %.promoted17.i.i.i, -1
  store i32 %i.aad, ptr %.sroa.33.0..sroa_idx.i.i.i.i, align 8, !alias.scope !44560, !noalias !44563
  %indvars.iv.next.i.i = add nuw nsw i32 %.promoted18.i.i.i, 1
  store i32 %indvars.iv.next.i.i, ptr %.sroa.32.0..sroa_idx.i.i.i.i, align 4, !alias.scope !44560, !noalias !44563
  br label %.loopexit.i.i72

.loopexit.i.i72:                                  ; preds = %.loopexit.loopexit.i.i, %bb.eg
  %i.aae = phi i64 [ %i.aac, %.loopexit.loopexit.i.i ], [ %.promoted14.i.i.i, %bb.eg ] ; 2 uses
  %.lcssa7.i.i.i = phi i32 [ 56, %.loopexit.loopexit.i.i ], [ %.promoted.i8.i.i, %bb.eg ] ; 2 uses
  %i.aaf = and i32 %.lcssa7.i.i.i, 63
  %i.aag = zext nneg i32 %i.aaf to i64
  %i.aah = lshr i64 %i.aae, %i.aag
  %i.aai = trunc i64 %i.aah to i8
  %i.aaj = and i8 %i.aai, 1
  %i.aak = add i32 %.lcssa7.i.i.i, 1              ; 2 uses
  store i32 %i.aak, ptr %.sroa.30.0..sroa_idx.i.i.i.i, align 8, !alias.scope !44560, !noalias !44563
  store i8 %i.aaj, ptr %i.nz, align 1, !alias.scope !44521, !noalias !44523
  br label %bb.ej

bb.ej:                                            ; preds = %.loopexit.i.i72, %bb.dv
  %i.aal = phi i64 [ %.promoted14.i.i.i, %bb.dv ], [ %i.aae, %.loopexit.i.i72 ]
  %i.aam = phi i32 [ %.promoted.i8.i.i, %bb.dv ], [ %i.aak, %.loopexit.i.i72 ]
  %i.aan = add i32 %.pre.i101.i.i.i, 1            ; 2 uses
  store i32 %i.aan, ptr %i.nm, align 8, !alias.scope !44521, !noalias !44523
  br label %bb.hk

.loopexit91.i.i.i.i:                              ; preds = %.loopexit91.loopexit.i.i.i.i, %bb.dw
  %i.aao = phi i32 [ %i.vn, %bb.dw ], [ %indvars.iv.next448.i.i.i.i, %.loopexit91.loopexit.i.i.i.i ]
  %i.aap = phi i32 [ %i.vm, %bb.dw ], [ %i.vv, %.loopexit91.loopexit.i.i.i.i ]
  %i.aaq = phi i64 [ %i.vl, %bb.dw ], [ %i.vu, %.loopexit91.loopexit.i.i.i.i ] ; 2 uses
  %.lcssa7.i46.i.i.i.i = phi i32 [ %i.vk, %bb.dw ], [ 56, %.loopexit91.loopexit.i.i.i.i ] ; 2 uses
  %i.aar = and i32 %.lcssa7.i46.i.i.i.i, 63
  %i.aas = zext nneg i32 %i.aar to i64
  %i.aat = add i32 %.lcssa7.i46.i.i.i.i, 1        ; 2 uses
  store i32 %i.aat, ptr %.sroa.30.0..sroa_idx.i.i.i.i, align 8, !alias.scope !44548, !noalias !44523
  %i.aau = shl nuw i64 1, %i.aas
  %i.aav = and i64 %i.aau, %i.aaq
  %i.aaw = icmp eq i64 %i.aav, 0
  br i1 %i.aaw, label %bb.dg, label %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit.i.i.i.i.backedge

.loopexit93.i.i.i.i:                              ; preds = %.loopexit93.loopexit.i.i.i.i, %bb.dz
  %i.aax = phi i32 [ %i.wa, %bb.dz ], [ %indvars.iv.next442.i.i.i.i, %.loopexit93.loopexit.i.i.i.i ]
  %i.aay = phi i32 [ %i.vz, %bb.dz ], [ %i.wk, %.loopexit93.loopexit.i.i.i.i ]
  %i.aaz = phi i64 [ %i.vy, %bb.dz ], [ %i.wi, %.loopexit93.loopexit.i.i.i.i ] ; 3 uses
  %.lcssa7.i56.i.i.i.i = phi i32 [ %i.vx, %bb.dz ], [ %i.wj, %.loopexit93.loopexit.i.i.i.i ] ; 2 uses
  %i.aba = and i32 %.lcssa7.i56.i.i.i.i, 63
  %i.abb = zext nneg i32 %i.aba to i64
  %i.abc = lshr i64 %i.aaz, %i.abb
  %i.abd = trunc i64 %i.abc to i32
  %i.abe = and i32 %i.abd, 3                      ; 2 uses
  %i.abf = add i32 %.lcssa7.i56.i.i.i.i, 2        ; 3 uses
  store i32 %i.abf, ptr %.sroa.30.0..sroa_idx.i.i.i.i, align 8, !alias.scope !44553, !noalias !44523
  %i.abg = icmp eq i32 %i.abe, 0
  br i1 %i.abg, label %bb.hk, label %bb.df

.lr.ph.split.i.i.i.i:                             ; preds = %.lr.ph.i102.i.i.i, %bb.el
  %i.abh = phi i32 [ %i.acf, %bb.el ], [ %i.wr, %.lr.ph.i102.i.i.i ]
  %.promoted18.i80162.i.i.i.i = phi i32 [ %.promoted18.i80161.i.i.i.i, %bb.el ], [ %i.wq, %.lr.ph.i102.i.i.i ] ; 4 uses
  %.promoted17.i79159.i.i.i.i = phi i32 [ %.promoted17.i79158.i.i.i.i, %bb.el ], [ %i.wp, %.lr.ph.i102.i.i.i ] ; 3 uses
  %i.abi = phi i64 [ %i.abs, %bb.el ], [ %i.wo, %.lr.ph.i102.i.i.i ] ; 2 uses
  %.promoted.i73155.i.i.i.i = phi i32 [ %i.aby, %bb.el ], [ %i.wn, %.lr.ph.i102.i.i.i ] ; 3 uses
  %.sroa.018.0153.i.i.i.i = phi i32 [ %i.abz, %bb.el ], [ %i.wl, %.lr.ph.i102.i.i.i ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !44555), !noalias !44525
  call void @llvm.experimental.noalias.scope.decl(metadata !44556), !noalias !44525
  %i.abj = add i32 %.promoted.i73155.i.i.i.i, -57
  %.not.i74.i.i.i.i = icmp ult i32 %i.abj, 8
  br i1 %.not.i74.i.i.i.i, label %.lr.ph.i77.preheader.i.i.i.i, label %.loopexit83.i.i.i.i

.lr.ph.i77.preheader.i.i.i.i:                     ; preds = %.lr.ph.split.i.i.i.i
  %i.abk = zext i32 %.promoted18.i80162.i.i.i.i to i64 ; 2 uses
  %i.abl = icmp eq i32 %.promoted17.i79159.i.i.i.i, 0
  br i1 %i.abl, label %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode21DecodeMetaBlockLengthNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB17_B17_ECsgZAIVb0XKpv_9ssservice.exit.thread.sink.split.i.i.i, label %bb.ek

bb.ek:                                            ; preds = %.lr.ph.i77.preheader.i.i.i.i
  %exitcond439.not.not.i.i.i.i = icmp ult i32 %.promoted18.i80162.i.i.i.i, %i.pp
  br i1 %exitcond439.not.not.i.i.i.i, label %.loopexit83.loopexit.i.i.i.i, label %.split.us.i.i.i.i

.loopexit83.loopexit.i.i.i.i:                     ; preds = %bb.ek
  %i.abm = getelementptr inbounds nuw i8, ptr %.sroa.029.1.i.i.i.i, i64 %i.abk
  %i.abn = load i8, ptr %i.abm, align 1, !alias.scope !44557, !noalias !44528, !noundef !177
  %i.abo = zext i8 %i.abn to i64
  %i.abp = call i64 @llvm.fshl.i64(i64 %i.abo, i64 %i.abi, i64 56) ; 2 uses
  store i64 %i.abp, ptr %i.ni, align 8, !alias.scope !44558, !noalias !44523
  %i.abq = add nsw i32 %.promoted.i73155.i.i.i.i, -8
  %i.abr = add i32 %.promoted17.i79159.i.i.i.i, -1 ; 2 uses
  store i32 %i.abr, ptr %.sroa.33.0..sroa_idx.i.i.i.i, align 8, !alias.scope !44558, !noalias !44523
  %indvars.iv.next435.i.i.i.i = add nuw nsw i32 %.promoted18.i80162.i.i.i.i, 1 ; 2 uses
  store i32 %indvars.iv.next435.i.i.i.i, ptr %.sroa.32.0..sroa_idx.i.i.i.i, align 4, !alias.scope !44558, !noalias !44523
  br label %.loopexit83.i.i.i.i

.split.us.i.i.i.i:                                ; preds = %bb.ed, %bb.ek
  %.us-phi170.i.i.i.i = phi i64 [ %i.abk, %bb.ek ], [ %i.wy, %bb.ed ]
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %.us-phi170.i.i.i.i, i64 noundef range(i64 8, 4097) %.sroa.21.1.i.i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @385) #62, !noalias !44564
  unreachable

.loopexit83.i.i.i.i:                              ; preds = %.loopexit83.loopexit.i.i.i.i, %.lr.ph.split.i.i.i.i
  %.promoted18.i80161.i.i.i.i = phi i32 [ %.promoted18.i80162.i.i.i.i, %.lr.ph.split.i.i.i.i ], [ %indvars.iv.next435.i.i.i.i, %.loopexit83.loopexit.i.i.i.i ] ; 2 uses
  %.promoted17.i79158.i.i.i.i = phi i32 [ %.promoted17.i79159.i.i.i.i, %.lr.ph.split.i.i.i.i ], [ %i.abr, %.loopexit83.loopexit.i.i.i.i ] ; 2 uses
  %i.abs = phi i64 [ %i.abi, %.lr.ph.split.i.i.i.i ], [ %i.abp, %.loopexit83.loopexit.i.i.i.i ] ; 3 uses
  %.lcssa7.i76.i.i.i.i = phi i32 [ %.promoted.i73155.i.i.i.i, %.lr.ph.split.i.i.i.i ], [ %i.abq, %.loopexit83.loopexit.i.i.i.i ] ; 2 uses
  %i.abt = and i32 %.lcssa7.i76.i.i.i.i, 63
  %i.abu = zext nneg i32 %i.abt to i64
  %i.abv = lshr i64 %i.abs, %i.abu
  %i.abw = trunc i64 %i.abv to i32
  %i.abx = and i32 %i.abw, 255                    ; 2 uses
  %i.aby = add i32 %.lcssa7.i76.i.i.i.i, 8        ; 3 uses
  store i32 %i.aby, ptr %.sroa.30.0..sroa_idx.i.i.i.i, align 8, !alias.scope !44558, !noalias !44523
  %i.abz = add i32 %.sroa.018.0153.i.i.i.i, 1     ; 2 uses
  %i.aca = icmp eq i32 %i.abz, %i.ws              ; 2 uses
  %i.acb = icmp eq i32 %i.abx, 0
  %or.cond12.i.i.i.i = select i1 %i.aca, i1 %i.acb, i1 false
  br i1 %or.cond12.i.i.i.i, label %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit.i.i.i.i.backedge, label %bb.el

bb.el:                                            ; preds = %.loopexit83.i.i.i.i
  %i.acc = shl i32 %.sroa.018.0153.i.i.i.i, 3
  %i.acd = and i32 %i.acc, 24
  %i.ace = shl nuw i32 %i.abx, %i.acd
  %i.acf = or i32 %i.ace, %i.abh                  ; 3 uses
  store i32 %i.acf, ptr %i.nm, align 8, !alias.scope !44521, !noalias !44523
  br i1 %i.aca, label %.sink.split545.i.i.i.i, label %.lr.ph.split.i.i.i.i

_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode21DecodeMetaBlockLengthNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB17_B17_ECsgZAIVb0XKpv_9ssservice.exit.thread.sink.split.i.i.i: ; preds = %.lr.ph.i67.us.preheader.i.i.i.i, %.lr.ph.i67.preheader.i.i.i.i, %.lr.ph.i77.us.preheader.i.i.i.i, %.lr.ph.i77.preheader.i.i.i.i
  %.us-phi168.i.sink.i.i.i = phi i32 [ %.sroa.013.0177.i.i.i.i, %.lr.ph.i67.preheader.i.i.i.i ], [ %.sroa.018.0153.us.i.i.i.i, %.lr.ph.i77.us.preheader.i.i.i.i ], [ %.sroa.018.0153.i.i.i.i, %.lr.ph.i77.preheader.i.i.i.i ], [ %.sroa.013.0177.us.i.i.i.i, %.lr.ph.i67.us.preheader.i.i.i.i ]
  store i32 %.us-phi168.i.sink.i.i.i, ptr %.sroa.7254.0..sroa_idx.i.i.i.i, align 8, !alias.scope !44521, !noalias !44523
  br label %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit.i.i.i.i.backedge

bb.em:                                            ; preds = %bb.cw
  call void @llvm.experimental.noalias.scope.decl(metadata !44565)
  call void @llvm.experimental.noalias.scope.decl(metadata !44566)
  %.promoted.i143.i.i.i.i = load i32, ptr %.sroa.30.0..sroa_idx.i.i.i.i, align 8, !alias.scope !44567, !noalias !44469 ; 3 uses
  %i.acg = add i32 %.promoted.i143.i.i.i.i, -59
  %.not.i144.i.i.i.i = icmp ult i32 %i.acg, 6
  %.promoted14.i148.i.i.i.i = load i64, ptr %i.ni, align 8, !alias.scope !44567, !noalias !44469 ; 2 uses
  br i1 %.not.i144.i.i.i.i, label %.lr.ph.i147.i.i.i.i, label %.loopexit212.i.i.i.i

.lr.ph.i147.i.i.i.i:                              ; preds = %bb.em
  %.promoted17.i149.i.i.i.i = load i32, ptr %.sroa.33.0..sroa_idx.i.i.i.i, align 8, !alias.scope !44567, !noalias !44469 ; 2 uses
  %.promoted18.i150.i.i.i.i = load i32, ptr %.sroa.32.0..sroa_idx.i.i.i.i, align 4, !alias.scope !44567, !noalias !44469 ; 3 uses
  %i.ach = zext i32 %.promoted18.i150.i.i.i.i to i64 ; 2 uses
  %i.aci = icmp eq i32 %.promoted17.i149.i.i.i.i, 0
  br i1 %i.aci, label %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit.i.i.i.i.backedge, label %bb.en

bb.en:                                            ; preds = %.lr.ph.i147.i.i.i.i
  %exitcond.not.not.i.i.i.i = icmp ult i32 %.promoted18.i150.i.i.i.i, %i.pp
  br i1 %exitcond.not.not.i.i.i.i, label %.loopexit212.loopexit.i.i.i.i, label %bb.eo

.loopexit212.loopexit.i.i.i.i:                    ; preds = %bb.en
  %i.acj = getelementptr inbounds nuw i8, ptr %.sroa.029.1.i.i.i.i, i64 %i.ach
  %i.ack = load i8, ptr %i.acj, align 1, !alias.scope !44566, !noalias !44493, !noundef !177
  %i.acl = zext i8 %i.ack to i64
  %i.acm = call i64 @llvm.fshl.i64(i64 %i.acl, i64 %.promoted14.i148.i.i.i.i, i64 56) ; 2 uses
  store i64 %i.acm, ptr %i.ni, align 8, !alias.scope !44567, !noalias !44469
  %i.acn = add nsw i32 %.promoted.i143.i.i.i.i, -8
  %i.aco = add i32 %.promoted17.i149.i.i.i.i, -1
  store i32 %i.aco, ptr %.sroa.33.0..sroa_idx.i.i.i.i, align 8, !alias.scope !44567, !noalias !44469
  %indvars.iv.next.i.i.i.i = add nuw nsw i32 %.promoted18.i150.i.i.i.i, 1
  store i32 %indvars.iv.next.i.i.i.i, ptr %.sroa.32.0..sroa_idx.i.i.i.i, align 4, !alias.scope !44567, !noalias !44469
  br label %.loopexit212.i.i.i.i

bb.eo:                                            ; preds = %bb.en
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.ach, i64 noundef range(i64 8, 4097) %.sroa.21.1.i.i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @385) #62, !noalias !44568
  unreachable

bb.ep:                                            ; preds = %bb.cw
  call void @llvm.experimental.noalias.scope.decl(metadata !44569)
  call void @llvm.experimental.noalias.scope.decl(metadata !44570)
  %i.acp = load i32, ptr %.sroa.7254.0..sroa_idx.i.i.i.i, align 8, !alias.scope !44571, !noalias !44469, !noundef !177 ; 2 uses
  %.val7.i.i.i.i.i = load i64, ptr %.sroa.27.0..sroa_idx.i.i.i.i, align 8, !alias.scope !44571, !noalias !44469, !noundef !177 ; 2 uses
  %i.acq = sext i32 %i.acp to i64                 ; 4 uses
  %i.acr = load i32, ptr %.sroa.68.0..sroa_idx.i.i.i.i, align 8, !alias.scope !44571, !noalias !44469, !noundef !177
  %i.acs = zext i32 %i.acr to i64                 ; 5 uses
  %i.act = icmp ult i64 %i.acs, %i.acq
  %.not.i153.i.i.i.i = icmp ult i64 %.val7.i.i.i.i.i, %i.acs
  %or.cond.i.i.i.i.i = or i1 %i.act, %.not.i153.i.i.i.i
  br i1 %or.cond.i.i.i.i.i, label %bb.er, label %bb.eq, !prof !206

bb.eq:                                            ; preds = %bb.ep
  %.val.i.i.i.i.i = load ptr, ptr %.sroa.26.0..sroa_idx.i.i.i.i, align 8, !alias.scope !44571, !noalias !44469, !nonnull !177, !noundef !177 ; 2 uses
  %i.acu = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 %i.acs
  %i.acv = icmp samesign eq i64 %i.acq, %i.acs
  br i1 %i.acv, label %.backedge.i.i.i.i, label %.lr.ph.i154.i.i.i.i

.lr.ph.i154.i.i.i.i:                              ; preds = %bb.eq
  %i.acw = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 %i.acq
  %.promoted.i155.i.i.i.i = load i32, ptr %.sroa.30.0..sroa_idx.i.i.i.i, align 8, !alias.scope !44572, !noalias !44469
  %.promoted19.i.i.i.i.i = load i64, ptr %i.ni, align 8, !alias.scope !44571, !noalias !44469
  %.promoted20.i.i.i.i.i = load i32, ptr %.sroa.33.0..sroa_idx.i.i.i.i, align 8, !alias.scope !44571, !noalias !44469
  %.promoted23.i.i.i.i.i = load i32, ptr %.sroa.32.0..sroa_idx.i.i.i.i, align 4, !alias.scope !44571, !noalias !44469
  br label %bb.es

bb.er:                                            ; preds = %bb.ep
  call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %i.acq, i64 noundef %i.acs, i64 noundef %.val7.i.i.i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @373) #62, !noalias !44573
  unreachable

bb.es:                                            ; preds = %.loopexit.i.i.i.i.i, %.lr.ph.i154.i.i.i.i
  %.promoted18.i25.i.i.i.i.i = phi i32 [ %.promoted23.i.i.i.i.i, %.lr.ph.i154.i.i.i.i ], [ %.promoted18.i24.i.i.i.i.i, %.loopexit.i.i.i.i.i ] ; 4 uses
  %.promoted17.i22.i.i.i.i.i = phi i32 [ %.promoted20.i.i.i.i.i, %.lr.ph.i154.i.i.i.i ], [ %.promoted17.i21.i.i.i.i.i, %.loopexit.i.i.i.i.i ] ; 3 uses
  %i.acx = phi i64 [ %.promoted19.i.i.i.i.i, %.lr.ph.i154.i.i.i.i ], [ %i.adh, %.loopexit.i.i.i.i.i ] ; 2 uses
  %.promoted.i18.i.i.i.i.i = phi i32 [ %.promoted.i155.i.i.i.i, %.lr.ph.i154.i.i.i.i ], [ %i.adn, %.loopexit.i.i.i.i.i ] ; 3 uses
  %.sroa.01.017.i.i.i.i.i = phi i32 [ %i.acp, %.lr.ph.i154.i.i.i.i ], [ %i.adp, %.loopexit.i.i.i.i.i ] ; 2 uses
  %.sroa.04.016.i.i.i.i.i = phi ptr [ %i.acw, %.lr.ph.i154.i.i.i.i ], [ %i.ado, %.loopexit.i.i.i.i.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !44574)
  call void @llvm.experimental.noalias.scope.decl(metadata !44575)
  %i.acy = add i32 %.promoted.i18.i.i.i.i.i, -63
  %.not.i.i.i.i.i.i = icmp ult i32 %i.acy, 2
  br i1 %.not.i.i.i.i.i.i, label %.lr.ph.i.preheader.i.i.i.i.i, label %.loopexit.i.i.i.i.i

.lr.ph.i.preheader.i.i.i.i.i:                     ; preds = %bb.es
  %i.acz = zext i32 %.promoted18.i25.i.i.i.i.i to i64 ; 2 uses
  %i.ada = icmp eq i32 %.promoted17.i22.i.i.i.i.i, 0
  br i1 %i.ada, label %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode16ReadContextModesNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB12_B12_ECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i, label %bb.et

bb.et:                                            ; preds = %.lr.ph.i.preheader.i.i.i.i.i
  %exitcond.not.not.i.i.i.i.i = icmp ult i32 %.promoted18.i25.i.i.i.i.i, %i.pp
  br i1 %exitcond.not.not.i.i.i.i.i, label %.loopexit.loopexit.i.i.i.i.i, label %bb.eu

end_hunk_2
begin_hunk_3_@_RNCINvNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13online_config16content_encoding9read_bodyINtNtCs7ewmRfXve8r_4http8response8ResponseNtNtNtCsaI3lGUjttVO_5hyper4body8incoming8IncomingEE0CsgZAIVb0XKpv_9ssservice:bb.a
  %i.anz = zext nneg i32 %i.any to i64
  %i.aoa = add i32 %i.anu, 1                      ; 2 uses
  store i32 %i.aoa, ptr %.sroa.30.0..sroa_idx.i.i.i.i, align 8, !alias.scope !44497, !noalias !44469
  %i.aob = shl nuw i64 1, %i.anz
  %i.aoc = and i64 %i.aob, %i.anv
  %i.aod = icmp eq i64 %i.aoc, 0
  br i1 %i.aod, label %bb.ha, label %bb.hb

bb.ha:                                            ; preds = %bb.gz
  store i32 16, ptr %.sroa.102.0..sroa_idx.i.i.i.i, align 8, !alias.scope !44606, !noalias !44469
  br label %.backedge.i.i.i.i

bb.hb:                                            ; preds = %bb.gz
  %i.aoe = and i32 %i.aoa, 63
  %i.aof = zext nneg i32 %i.aoe to i64
  %i.aog = lshr i64 %i.anv, %i.aof
  %i.aoh = trunc i64 %i.aog to i32
  %i.aoi = and i32 %i.aoh, 7                      ; 2 uses
  %i.aoj = add i32 %i.anu, 4                      ; 2 uses
  store i32 %i.aoj, ptr %.sroa.30.0..sroa_idx.i.i.i.i, align 8, !alias.scope !44497, !noalias !44469
  %i.aok = icmp eq i32 %i.aoi, 0
  br i1 %i.aok, label %bb.hc, label %bb.hd

bb.hc:                                            ; preds = %bb.hb
  %i.aol = and i32 %i.aoj, 63
  %i.aom = zext nneg i32 %i.aol to i64
  %i.aon = lshr i64 %i.anv, %i.aom
  %i.aoo = trunc i64 %i.aon to i32
  %i.aop = and i32 %i.aoo, 7                      ; 2 uses
  %i.aoq = add i32 %i.anu, 7                      ; 2 uses
  store i32 %i.aoq, ptr %.sroa.30.0..sroa_idx.i.i.i.i, align 8, !alias.scope !44497, !noalias !44469
  switch i32 %i.aop, label %bb.hi [
    i32 1, label %bb.he
    i32 0, label %bb.hh
  ]

bb.hd:                                            ; preds = %bb.hb
  %i.aor = add nuw nsw i32 %i.aoi, 17
  store i32 %i.aor, ptr %.sroa.102.0..sroa_idx.i.i.i.i, align 8, !alias.scope !44606, !noalias !44469
  br label %.backedge.i.i.i.i

bb.he:                                            ; preds = %bb.hc
  br i1 %i.anx, label %bb.hf, label %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit.i.i.i.i.backedge

bb.hf:                                            ; preds = %bb.he
  %i.aos = and i32 %i.aoq, 63
  %i.aot = zext nneg i32 %i.aos to i64
  %i.aou = add i32 %i.anu, 8
  store i32 %i.aou, ptr %.sroa.30.0..sroa_idx.i.i.i.i, align 8, !alias.scope !44497, !noalias !44469
  %i.aov = shl nuw i64 1, %i.aot
  %i.aow = and i64 %i.aov, %i.anv
  %.not.i159.i.i.i.i = icmp eq i64 %i.aow, 0
  br i1 %.not.i159.i.i.i.i, label %bb.hg, label %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit.i.i.i.i.backedge

bb.hg:                                            ; preds = %bb.hf
  store i8 1, ptr %.sroa.120.0..sroa_idx.i.i.i.i, align 4, !alias.scope !44605, !noalias !44469
  br label %.backedge.i.i.i.i

bb.hh:                                            ; preds = %bb.hc
  store i32 17, ptr %.sroa.102.0..sroa_idx.i.i.i.i, align 8, !alias.scope !44606, !noalias !44469
  br label %.backedge.i.i.i.i

bb.hi:                                            ; preds = %bb.hc
  %i.aox = or disjoint i32 %i.aop, 8
  store i32 %i.aox, ptr %.sroa.102.0..sroa_idx.i.i.i.i, align 8, !alias.scope !44606, !noalias !44469
  br label %.backedge.i.i.i.i

.loopexit211.i.i.i.i:                             ; preds = %bb.cy, %.loopexit211.loopexit.i.i.i.i
  %i.aoy = phi i64 [ %i.qa, %.loopexit211.loopexit.i.i.i.i ], [ %.promoted14.i.i.i.i.i, %bb.cy ]
  %.lcssa7.i.i.i.i.i = phi i32 [ %i.qb, %.loopexit211.loopexit.i.i.i.i ], [ %.promoted.i.i.i.i.i, %bb.cy ] ; 2 uses
  %i.aoz = and i32 %.lcssa7.i.i.i.i.i, 63
  %i.apa = zext nneg i32 %i.aoz to i64
  %i.apb = lshr i64 %i.aoy, %i.apa
  %i.apc = trunc i64 %i.apb to i32
  %i.apd = and i32 %i.apc, 63                     ; 2 uses
  store i32 %i.apd, ptr %.sroa.102.0..sroa_idx.i.i.i.i, align 8, !alias.scope !44607, !noalias !44469
  %i.ape = add i32 %.lcssa7.i.i.i.i.i, 6
  store i32 %i.ape, ptr %.sroa.30.0..sroa_idx.i.i.i.i, align 8, !alias.scope !44501, !noalias !44469
  %i.apf = add nsw i32 %i.apd, -31
  %or.cond.i.i.i.i74 = icmp ult i32 %i.apf, -21
  br i1 %or.cond.i.i.i.i74, label %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit.i.i.i.i.backedge, label %.backedge.i.i.i.i

bb.hj:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2D0wXkiOfwW_12alloc_stdlib10heap_alloc7WrapBoxNtNtCsl4v216RJbSI_19brotli_decompressor7huffman11HuffmanCodeEECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i
  call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef 2, i64 12960) #61, !noalias !44608
  unreachable

.lr.ph.i.i.i161.i.i.i.i:                          ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2D0wXkiOfwW_12alloc_stdlib10heap_alloc7WrapBoxNtNtCsl4v216RJbSI_19brotli_decompressor7huffman11HuffmanCodeEECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i, %.lr.ph.i.i.i161.i.i.i.i.7
  %.sroa.0.018.i.i.i162.i.i.i.i = phi ptr [ %i.apw, %.lr.ph.i.i.i161.i.i.i.i.7 ], [ %i.rg, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2D0wXkiOfwW_12alloc_stdlib10heap_alloc7WrapBoxNtNtCsl4v216RJbSI_19brotli_decompressor7huffman11HuffmanCodeEECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i ] ; 18 uses
  %.sroa.03.017.i.i.i163.i.i.i.i = phi i64 [ %i.apu, %.lr.ph.i.i.i161.i.i.i.i.7 ], [ 1, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2D0wXkiOfwW_12alloc_stdlib10heap_alloc7WrapBoxNtNtCsl4v216RJbSI_19brotli_decompressor7huffman11HuffmanCodeEECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i ] ; 2 uses
  store i16 0, ptr %.sroa.0.018.i.i.i162.i.i.i.i, align 2, !noalias !44609
  %i.apg = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i.i.i162.i.i.i.i, i64 2
  store i8 0, ptr %i.apg, align 2, !noalias !44609
  %i.aph = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i.i.i162.i.i.i.i, i64 4
  store i16 0, ptr %i.aph, align 2, !noalias !44609
  %i.api = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i.i.i162.i.i.i.i, i64 6
  store i8 0, ptr %i.api, align 2, !noalias !44609
  %i.apj = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i.i.i162.i.i.i.i, i64 8
  store i16 0, ptr %i.apj, align 2, !noalias !44609
  %i.apk = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i.i.i162.i.i.i.i, i64 10
  store i8 0, ptr %i.apk, align 2, !noalias !44609
  %i.apl = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i.i.i162.i.i.i.i, i64 12
  store i16 0, ptr %i.apl, align 2, !noalias !44609
  %i.apm = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i.i.i162.i.i.i.i, i64 14
  store i8 0, ptr %i.apm, align 2, !noalias !44609
  %i.apn = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i.i.i162.i.i.i.i, i64 16
  store i16 0, ptr %i.apn, align 2, !noalias !44609
  %i.apo = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i.i.i162.i.i.i.i, i64 18
  store i8 0, ptr %i.apo, align 2, !noalias !44609
  %i.app = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i.i.i162.i.i.i.i, i64 20
  store i16 0, ptr %i.app, align 2, !noalias !44609
  %i.apq = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i.i.i162.i.i.i.i, i64 22
  store i8 0, ptr %i.apq, align 2, !noalias !44609
  %i.apr = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i.i.i162.i.i.i.i, i64 24
  store i16 0, ptr %i.apr, align 2, !noalias !44609
  %i.aps = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i.i.i162.i.i.i.i, i64 26
  store i8 0, ptr %i.aps, align 2, !noalias !44609
  %i.apt = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i.i.i162.i.i.i.i, i64 28 ; 2 uses
  %exitcond.not.i.i.i164.i.i.i.i.6 = icmp eq i64 %.sroa.03.017.i.i.i163.i.i.i.i, 3233
  br i1 %exitcond.not.i.i.i164.i.i.i.i.6, label %_RNvXNtCs2D0wXkiOfwW_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs5NNYTrzbB3N_15alloc_no_stdlib15stack_allocator9AllocatorNtNtCsl4v216RJbSI_19brotli_decompressor7huffman11HuffmanCodeE10alloc_cellCsgZAIVb0XKpv_9ssservice.exit165.i.i.i.i, label %.lr.ph.i.i.i161.i.i.i.i.7

.lr.ph.i.i.i161.i.i.i.i.7:                        ; preds = %.lr.ph.i.i.i161.i.i.i.i
  %i.apu = add nuw nsw i64 %.sroa.03.017.i.i.i163.i.i.i.i, 8
  store i16 0, ptr %i.apt, align 2, !noalias !44609
  %i.apv = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i.i.i162.i.i.i.i, i64 30
  store i8 0, ptr %i.apv, align 2, !noalias !44609
  %i.apw = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i.i.i162.i.i.i.i, i64 32
  br label %.lr.ph.i.i.i161.i.i.i.i

_RNvXNtCs2D0wXkiOfwW_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs5NNYTrzbB3N_15alloc_no_stdlib15stack_allocator9AllocatorNtNtCsl4v216RJbSI_19brotli_decompressor7huffman11HuffmanCodeE10alloc_cellCsgZAIVb0XKpv_9ssservice.exit165.i.i.i.i: ; preds = %.lr.ph.i.i.i161.i.i.i.i
  store i16 0, ptr %i.apt, align 2, !noalias !44609
  %i.apx = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i.i.i162.i.i.i.i, i64 30
  store i8 0, ptr %i.apx, align 2, !noalias !44609
  %.val122.i.i.i.i = load i64, ptr %.sroa.66.0..sroa_idx.i.i.i.i, align 8, !alias.scope !44490, !noalias !44469, !noundef !177 ; 2 uses
  %i.apy = icmp eq i64 %.val122.i.i.i.i, 0
  br i1 %i.apy, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2D0wXkiOfwW_12alloc_stdlib10heap_alloc7WrapBoxNtNtCsl4v216RJbSI_19brotli_decompressor7huffman11HuffmanCodeEECsgZAIVb0XKpv_9ssservice.exit167.i.i.i.i, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i166.i.i.i.i

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i166.i.i.i.i: ; preds = %_RNvXNtCs2D0wXkiOfwW_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs5NNYTrzbB3N_15alloc_no_stdlib15stack_allocator9AllocatorNtNtCsl4v216RJbSI_19brotli_decompressor7huffman11HuffmanCodeE10alloc_cellCsgZAIVb0XKpv_9ssservice.exit165.i.i.i.i
  %.val121.i.i.i.i = load ptr, ptr %.sroa.65.0..sroa_idx52.i.i.i.i, align 8, !alias.scope !44490, !noalias !44469, !nonnull !177, !noundef !177
  %i.apz = shl nuw nsw i64 %.val122.i.i.i.i, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val121.i.i.i.i, i64 noundef %i.apz, i64 noundef 2) #52, !noalias !44491
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2D0wXkiOfwW_12alloc_stdlib10heap_alloc7WrapBoxNtNtCsl4v216RJbSI_19brotli_decompressor7huffman11HuffmanCodeEECsgZAIVb0XKpv_9ssservice.exit167.i.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2D0wXkiOfwW_12alloc_stdlib10heap_alloc7WrapBoxNtNtCsl4v216RJbSI_19brotli_decompressor7huffman11HuffmanCodeEECsgZAIVb0XKpv_9ssservice.exit167.i.i.i.i: ; preds = %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i166.i.i.i.i, %_RNvXNtCs2D0wXkiOfwW_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs5NNYTrzbB3N_15alloc_no_stdlib15stack_allocator9AllocatorNtNtCsl4v216RJbSI_19brotli_decompressor7huffman11HuffmanCodeE10alloc_cellCsgZAIVb0XKpv_9ssservice.exit165.i.i.i.i
  store ptr %i.rg, ptr %.sroa.65.0..sroa_idx52.i.i.i.i, align 8, !alias.scope !44490, !noalias !44469
  store i64 3240, ptr %.sroa.66.0..sroa_idx.i.i.i.i, align 8, !alias.scope !44490, !noalias !44469
  br label %.backedge.i.i.i.i

bb.hk:                                            ; preds = %.loopexit93.i.i.i.i, %bb.ej, %.loopexit86.i.i.i.i
  %i.aqa = phi i64 [ %i.yf, %.loopexit86.i.i.i.i ], [ %i.aal, %bb.ej ], [ %i.aaz, %.loopexit93.i.i.i.i ]
  %i.aqb = phi i32 [ %i.yi, %.loopexit86.i.i.i.i ], [ %i.aam, %bb.ej ], [ %i.abf, %.loopexit93.i.i.i.i ] ; 3 uses
  %i.aqc = phi i32 [ %i.tb, %.loopexit86.i.i.i.i ], [ %i.aan, %bb.ej ], [ %i.wb, %.loopexit93.i.i.i.i ] ; 2 uses
  store i8 0, ptr %i.og, align 1, !alias.scope !44521, !noalias !44523
  %i.aqd = load i8, ptr %i.ny, align 4, !alias.scope !44490, !noalias !44469, !noundef !177
  %i.aqe = icmp eq i8 %i.aqd, 0                   ; 2 uses
  %i.aqf = load i8, ptr %i.nz, align 1, !alias.scope !44490, !noalias !44469 ; 2 uses
  %i.aqg = icmp eq i8 %i.aqf, 0                   ; 2 uses
  %or.cond5.i.i.i.i = select i1 %i.aqe, i1 %i.aqg, i1 false
  br i1 %or.cond5.i.i.i.i, label %.thread.i.i.i.i, label %bb.hm

bb.hl:                                            ; preds = %bb.hn, %bb.hm
  br i1 %i.aqe, label %.thread.i.i.i.i, label %bb.ho

bb.hm:                                            ; preds = %bb.hk
  %i.aqh = sub i32 0, %i.aqb
  %i.aqi = and i32 %i.aqh, 7                      ; 3 uses
  %i.aqj = icmp eq i32 %i.aqi, 0
  br i1 %i.aqj, label %bb.hl, label %bb.hn

bb.hn:                                            ; preds = %bb.hm
  %i.aqk = zext nneg i32 %i.aqi to i64
  %i.aql = and i32 %i.aqb, 63
  %i.aqm = zext nneg i32 %i.aql to i64
  %i.aqn = lshr i64 %i.aqa, %i.aqm
  %i.aqo = trunc i64 %i.aqn to i32
  %i.aqp = getelementptr inbounds nuw [4 x i8], ptr @379, i64 %i.aqk
  %i.aqq = load i32, ptr %i.aqp, align 4, !noalias !44610, !noundef !177
  %i.aqr = and i32 %i.aqq, %i.aqo
  %i.aqs = add i32 %i.aqi, %i.aqb
  store i32 %i.aqs, ptr %.sroa.30.0..sroa_idx.i.i.i.i, align 8, !alias.scope !44490, !noalias !44469
  %i.aqt = icmp eq i32 %i.aqr, 0
  br i1 %i.aqt, label %bb.hl, label %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit.i.i.i.i.backedge

.thread.i.i.i.i:                                  ; preds = %bb.hl, %bb.hk
  %i.aqu = icmp eq i32 %i.aqc, 0
  br i1 %i.aqu, label %bb.hp, label %bb.hq

bb.ho:                                            ; preds = %bb.hl
  store i8 12, ptr %i.nc, align 2, !alias.scope !44490, !noalias !44469
  br label %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit.i.i.i.i.backedge

bb.hp:                                            ; preds = %.thread.i.i.i.i
  store i8 14, ptr %i.nc, align 2, !alias.scope !44490, !noalias !44469
  br label %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit.i.i.i.i.backedge

bb.hq:                                            ; preds = %.thread.i.i.i.i
  %.val116.i.i.i.i = load i64, ptr %.sroa.13.0..sroa_idx.i.i.i.i, align 8, !alias.scope !44490, !noalias !44469, !noundef !177
  %i.aqv = icmp eq i64 %.val116.i.i.i.i, 0
  br i1 %i.aqv, label %bb.hr, label %bb.iq

bb.hr:                                            ; preds = %bb.hq
  %i.aqw = load i8, ptr %i.nk, align 2, !alias.scope !44611, !noalias !44563, !noundef !177 ; 2 uses
  %i.aqx = load i32, ptr %.sroa.102.0..sroa_idx.i.i.i.i, align 8, !alias.scope !44611, !noalias !44563, !noundef !177
  %i.aqy = and i32 %i.aqx, 31
  %i.aqz = shl nuw i32 1, %i.aqy                  ; 2 uses
  store i32 %i.aqz, ptr %i.nw, align 8, !alias.scope !44611, !noalias !44563
  br i1 %i.aqg, label %bb.ht, label %bb.hs

bb.hs:                                            ; preds = %bb.hr
  %i.ara = call noundef i32 @_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader14BrotliPeekByte(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ni, i32 noundef %i.aqc, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.029.1.i.i.i.i, i64 noundef range(i64 8, 4097) %.sroa.21.1.i.i.i.i) #52, !noalias !44491 ; 2 uses
  %i.arb = icmp ne i32 %i.ara, -1
  %i.arc = and i32 %i.ara, 3
  %i.ard = icmp eq i32 %i.arc, 3
  %or.cond.i.i.i66 = and i1 %i.arb, %i.ard
  %spec.select.i.i.i67 = select i1 %or.cond.i.i.i66, i8 1, i8 %i.aqw
  %.pre.i.i.i68 = load i32, ptr %i.nw, align 8, !alias.scope !44611, !noalias !44563
  br label %bb.ht

bb.ht:                                            ; preds = %bb.hs, %bb.hr
  %.promoted.i.i.i69 = phi i32 [ %i.aqz, %bb.hr ], [ %.pre.i.i.i68, %bb.hs ] ; 5 uses
  %.sroa.07.0.i.i.i = phi i8 [ %i.aqw, %bb.hr ], [ %spec.select.i.i.i67, %bb.hs ]
  %i.are = sext i32 %.promoted.i.i.i69 to i64     ; 2 uses
  %i.arf = add nsw i64 %i.are, -16                ; 4 uses
  %i.arg = load i64, ptr %.sroa.40.0..sroa_idx.i.i.i.i, align 8, !alias.scope !44611, !noalias !44563, !noundef !177 ; 7 uses
  %i.arh = icmp ugt i64 %i.arg, %i.arf
  br i1 %i.arh, label %bb.hv, label %bb.hu

bb.hu:                                            ; preds = %bb.ht
  %.val33.i.i.i = load ptr, ptr %.sroa.22.0..sroa_idx.i.i.i.i, align 8, !alias.scope !44611, !noalias !44563, !nonnull !177, !noundef !177
  %.val34.i.i.i = load i64, ptr %.sroa.23.0..sroa_idx.i.i.i.i, align 8, !alias.scope !44611, !noalias !44563, !noundef !177 ; 2 uses
  %.not.i2.i.i = icmp ugt i64 %i.arg, %.val34.i.i.i
  br i1 %.not.i2.i.i, label %bb.hw, label %bb.hx, !prof !206

bb.hv:                                            ; preds = %bb.ht
  %.val32.i.i.i = load i64, ptr %.sroa.23.0..sroa_idx.i.i.i.i, align 8, !alias.scope !44611, !noalias !44563, !noundef !177 ; 2 uses
  %i.ari = sub nuw i64 %i.arg, %i.arf             ; 2 uses
  %.not24.i.i.i = icmp ugt i64 %i.arg, %.val32.i.i.i
  br i1 %.not24.i.i.i, label %bb.hz, label %bb.hy, !prof !206

bb.hw:                                            ; preds = %bb.hu
  call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.arg, i64 noundef %.val34.i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @417) #62, !noalias !44491
  unreachable

bb.hx:                                            ; preds = %bb.hy, %bb.hu
  %i.arj = phi i64 [ %i.arf, %bb.hy ], [ %i.arg, %bb.hu ] ; 5 uses
  %.sroa.08.0.i.i.i = phi ptr [ %i.ars, %bb.hy ], [ %.val33.i.i.i, %bb.hu ]
  %i.ark = icmp eq i8 %.sroa.07.0.i.i.i, 0
  br i1 %i.ark, label %.loopexit.i3.i.i, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.hx
  %i.arl = load i32, ptr %i.nm, align 8, !alias.scope !44611, !noalias !44563, !noundef !177
  %i.arm = sext i32 %i.arl to i64
  %i.arn = add i64 %i.arj, %i.arm
  %i.aro = shl i64 %i.arn, 1
  %i.arp = add i64 %i.aro, 32                     ; 2 uses
  %i.arq = icmp sle i64 %i.arp, %i.are
  %i.arr = icmp sgt i32 %.promoted.i.i.i69, 32
  %or.cond643.i.i.i = and i1 %i.arr, %i.arq
  br i1 %or.cond643.i.i.i, label %.lr.ph.i.i.i71, label %.loopexit.i3.i.i

bb.hy:                                            ; preds = %bb.hv
  %.val31.i.i.i = load ptr, ptr %.sroa.22.0..sroa_idx.i.i.i.i, align 8, !alias.scope !44611, !noalias !44563, !nonnull !177, !noundef !177
  %i.ars = getelementptr inbounds nuw i8, ptr %.val31.i.i.i, i64 %i.ari
  store i64 %i.arf, ptr %.sroa.40.0..sroa_idx.i.i.i.i, align 8, !alias.scope !44611, !noalias !44563
  br label %bb.hx

bb.hz:                                            ; preds = %bb.hv
  call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %i.ari, i64 noundef %i.arg, i64 noundef %.val32.i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @422) #62, !noalias !44491
  unreachable

..loopexit_crit_edge.i.i.i:                       ; preds = %.lr.ph.i.i.i71
  store i32 %i.arz, ptr %i.nw, align 8, !alias.scope !44611, !noalias !44563
  br label %.loopexit.i3.i.i

.loopexit.i3.i.i:                                 ; preds = %..loopexit_crit_edge.i.i.i, %.preheader.i.i.i, %bb.hx
  %i.art = phi i32 [ %.promoted.i.i.i69, %.preheader.i.i.i ], [ %i.arz, %..loopexit_crit_edge.i.i.i ], [ %.promoted.i.i.i69, %bb.hx ] ; 2 uses
  %i.aru = load i32, ptr %.sroa.102.0..sroa_idx.i.i.i.i, align 8, !alias.scope !44611, !noalias !44563, !noundef !177
  %i.arv = and i32 %i.aru, 31
  %i.arw = shl nuw i32 1, %i.arv                  ; 3 uses
  %i.arx = icmp sgt i32 %i.art, %i.arw
  br i1 %i.arx, label %bb.ia, label %bb.ib

.lr.ph.i.i.i71:                                   ; preds = %.preheader.i.i.i, %.lr.ph.i.i.i71
  %i.ary = phi i32 [ %i.arz, %.lr.ph.i.i.i71 ], [ %.promoted.i.i.i69, %.preheader.i.i.i ] ; 2 uses
  %i.arz = lshr i32 %i.ary, 1                     ; 4 uses
  %i.asa = zext nneg i32 %i.arz to i64
  %i.asb = icmp sle i64 %i.arp, %i.asa
  %i.asc = icmp ugt i32 %i.ary, 65
  %or.cond6.i.i.i = and i1 %i.asc, %i.asb
  br i1 %or.cond6.i.i.i, label %.lr.ph.i.i.i71, label %..loopexit_crit_edge.i.i.i

bb.ia:                                            ; preds = %.loopexit.i3.i.i
  store i32 %i.arw, ptr %i.nw, align 8, !alias.scope !44611, !noalias !44563
  br label %bb.ib

bb.ib:                                            ; preds = %bb.ia, %.loopexit.i3.i.i
  %i.asd = phi i32 [ %i.art, %.loopexit.i3.i.i ], [ %i.arw, %bb.ia ] ; 3 uses
  %i.ase = add i32 %i.asd, -1
  store i32 %i.ase, ptr %i.od, align 4, !alias.scope !44611, !noalias !44563
  %i.asf = sext i32 %i.asd to i64
  %i.asg = add nsw i64 %i.asf, 66                 ; 6 uses
  %.not.i.i.i.i4.i.i = icmp slt i32 %i.asd, -66
  br i1 %.not.i.i.i.i4.i.i, label %bb.if, label %bb.ic, !prof !188

bb.ic:                                            ; preds = %bb.ib
  %.not.i.i70 = icmp eq i64 %i.asg, 0             ; 2 uses
  br i1 %.not.i.i70, label %_RNvXNtCs2D0wXkiOfwW_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs5NNYTrzbB3N_15alloc_no_stdlib15stack_allocator9AllocatorhE10alloc_cellCsgZAIVb0XKpv_9ssservice.exit.i.i.i, label %bb.id

bb.id:                                            ; preds = %bb.ic
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52, !noalias !44612
  %i.ash = call noundef ptr @_RNvCsh0WfaQiVYm0_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 4294967296) %i.asg, i64 noundef range(i64 1, 17) 1) #52, !noalias !44612 ; 2 uses
  %i.asi = icmp eq ptr %i.ash, null
  br i1 %i.asi, label %bb.if, label %bb.ie

bb.ie:                                            ; preds = %bb.id
  %i.asj = ptrtoint ptr %i.ash to i64
  br label %_RNvXNtCs2D0wXkiOfwW_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs5NNYTrzbB3N_15alloc_no_stdlib15stack_allocator9AllocatorhE10alloc_cellCsgZAIVb0XKpv_9ssservice.exit.i.i.i

bb.if:                                            ; preds = %bb.id, %bb.ib
  %.sroa.4.0.ph.i.i.i.i.i = phi i64 [ 1, %bb.id ], [ 0, %bb.ib ]
  call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i.i.i, i64 range(i64 -2147483582, 4294967296) %i.asg) #61, !noalias !44613
  unreachable

_RNvXNtCs2D0wXkiOfwW_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs5NNYTrzbB3N_15alloc_no_stdlib15stack_allocator9AllocatorhE10alloc_cellCsgZAIVb0XKpv_9ssservice.exit.i.i.i: ; preds = %bb.ie, %bb.ic
  %.sroa.10.0.i.i.i.i.i = phi i64 [ %i.asj, %bb.ie ], [ 1, %bb.ic ]
  %i.ask = inttoptr i64 %.sroa.10.0.i.i.i.i.i to ptr ; 3 uses
  %.val36.i.i.i = load i64, ptr %.sroa.13.0..sroa_idx.i.i.i.i, align 8, !alias.scope !44614, !noalias !44563, !noundef !177 ; 2 uses
  %i.asl = icmp eq i64 %.val36.i.i.i, 0
  br i1 %i.asl, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2D0wXkiOfwW_12alloc_stdlib10heap_alloc7WrapBoxhEECsgZAIVb0XKpv_9ssservice.exit.i.i.i, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i: ; preds = %_RNvXNtCs2D0wXkiOfwW_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs5NNYTrzbB3N_15alloc_no_stdlib15stack_allocator9AllocatorhE10alloc_cellCsgZAIVb0XKpv_9ssservice.exit.i.i.i
  %.val35.i.i.i = load ptr, ptr %.sroa.12.0..sroa_idx.i.i.i.i, align 8, !alias.scope !44611, !noalias !44563, !nonnull !177, !noundef !177
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val35.i.i.i, i64 noundef %.val36.i.i.i, i64 noundef 1) #52, !noalias !44615
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2D0wXkiOfwW_12alloc_stdlib10heap_alloc7WrapBoxhEECsgZAIVb0XKpv_9ssservice.exit.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2D0wXkiOfwW_12alloc_stdlib10heap_alloc7WrapBoxhEECsgZAIVb0XKpv_9ssservice.exit.i.i.i: ; preds = %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i, %_RNvXNtCs2D0wXkiOfwW_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs5NNYTrzbB3N_15alloc_no_stdlib15stack_allocator9AllocatorhE10alloc_cellCsgZAIVb0XKpv_9ssservice.exit.i.i.i
  store ptr %i.ask, ptr %.sroa.12.0..sroa_idx.i.i.i.i, align 8, !alias.scope !44611, !noalias !44563
  store i64 %i.asg, ptr %.sroa.13.0..sroa_idx.i.i.i.i, align 8, !alias.scope !44611, !noalias !44563
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ask) ], !noalias !44616
  br i1 %.not.i.i70, label %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit.i.i.i.i.backedge, label %bb.ig

bb.ig:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2D0wXkiOfwW_12alloc_stdlib10heap_alloc7WrapBoxhEECsgZAIVb0XKpv_9ssservice.exit.i.i.i
  %i.asm = load i32, ptr %i.nw, align 8, !alias.scope !44611, !noalias !44563, !noundef !177
  %i.asn = sext i32 %i.asm to i64
  %i.aso = add nsw i64 %i.asn, -1                 ; 3 uses
  %i.asp = icmp ult i64 %i.aso, %i.asg
  br i1 %i.asp, label %bb.ih, label %bb.ii

bb.ih:                                            ; preds = %bb.ig
  %i.asq = getelementptr inbounds nuw i8, ptr %i.ask, i64 %i.aso
  store i8 0, ptr %i.asq, align 1, !noalias !44491
  %.val40.i.i.i = load i64, ptr %.sroa.13.0..sroa_idx.i.i.i.i, align 8, !alias.scope !44611, !noalias !44563, !noundef !177 ; 2 uses
  %i.asr = load i32, ptr %i.nw, align 8, !alias.scope !44611, !noalias !44563, !noundef !177
  %i.ass = sext i32 %i.asr to i64
  %i.ast = add nsw i64 %i.ass, -2                 ; 3 uses
  %i.asu = icmp ult i64 %i.ast, %.val40.i.i.i
  br i1 %i.asu, label %bb.ij, label %bb.ik

bb.ii:                                            ; preds = %bb.ig
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.aso, i64 noundef %i.asg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @418) #62, !noalias !44491
  unreachable

bb.ij:                                            ; preds = %bb.ih
  %.val39.i.i.i = load ptr, ptr %.sroa.12.0..sroa_idx.i.i.i.i, align 8, !alias.scope !44611, !noalias !44563, !nonnull !177, !noundef !177
  %i.asv = getelementptr inbounds nuw i8, ptr %.val39.i.i.i, i64 %i.ast
  store i8 0, ptr %i.asv, align 1, !noalias !44491
  %i.asw = icmp eq i64 %i.arj, 0
  br i1 %i.asw, label %bb.im, label %bb.il

bb.ik:                                            ; preds = %bb.ih
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.ast, i64 noundef %.val40.i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @419) #62, !noalias !44491
  unreachable

bb.il:                                            ; preds = %bb.ij
  %i.asx = load i64, ptr %.sroa.40.0..sroa_idx.i.i.i.i, align 8, !alias.scope !44611, !noalias !44563, !noundef !177 ; 4 uses
  %i.asy = sub i64 0, %i.asx
  %i.asz = load i32, ptr %i.od, align 4, !alias.scope !44611, !noalias !44563, !noundef !177
  %i.ata = sext i32 %i.asz to i64
  %i.atb = and i64 %i.ata, %i.asy                 ; 4 uses
  %.val38.i.i.i = load i64, ptr %.sroa.13.0..sroa_idx.i.i.i.i, align 8, !alias.scope !44611, !noalias !44563, !noundef !177 ; 2 uses
  %i.atc = add i64 %i.atb, %i.asx                 ; 3 uses
  %i.atd = icmp ult i64 %i.atc, %i.atb
  %.not25.i.i.i = icmp ugt i64 %i.atc, %.val38.i.i.i
  %or.cond27.i.i.i = or i1 %i.atd, %.not25.i.i.i
  br i1 %or.cond27.i.i.i, label %bb.ip, label %bb.in, !prof !206

bb.im:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implhECsgZAIVb0XKpv_9ssservice.exit.i.i.i, %bb.ij
  %.val28.i.i.i = load i64, ptr %.sroa.23.0..sroa_idx.i.i.i.i, align 8, !alias.scope !44611, !noalias !44563, !noundef !177 ; 2 uses
  %i.ate = icmp eq i64 %.val28.i.i.i, 0
  br i1 %i.ate, label %._crit_edge686.i.i.i.i, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i6.i.i

bb.in:                                            ; preds = %bb.il
  %.val37.i.i.i = load ptr, ptr %.sroa.12.0..sroa_idx.i.i.i.i, align 8, !alias.scope !44611, !noalias !44563, !nonnull !177, !noundef !177
  call void @llvm.experimental.noalias.scope.decl(metadata !44617), !noalias !44616
  call void @llvm.experimental.noalias.scope.decl(metadata !44618), !noalias !44616
  %.not.i.i5.i.i = icmp eq i64 %i.asx, %i.arj
  br i1 %.not.i.i5.i.i, label %_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implhECsgZAIVb0XKpv_9ssservice.exit.i.i.i, label %bb.io, !prof !191

bb.io:                                            ; preds = %bb.in
  call void @_RNvNvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_impl17len_mismatch_fail(i64 noundef range(i64 0, -9223372036854775808) %i.asx, i64 noundef range(i64 0, -9223372036854775808) %i.arj, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @420) #62, !noalias !44619
  unreachable

_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implhECsgZAIVb0XKpv_9ssservice.exit.i.i.i: ; preds = %bb.in
  %i.atf = getelementptr inbounds nuw i8, ptr %.val37.i.i.i, i64 %i.atb
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.atf, ptr nonnull readonly align 1 %.sroa.08.0.i.i.i, i64 range(i64 0, -9223372036854775808) %i.arj, i1 false), !alias.scope !44620, !noalias !44491
  br label %bb.im

bb.ip:                                            ; preds = %bb.il
  call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %i.atb, i64 noundef %i.atc, i64 noundef %.val38.i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @421) #62, !noalias !44491
  unreachable

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i6.i.i: ; preds = %bb.im
  %.val.i7.i.i = load ptr, ptr %.sroa.22.0..sroa_idx.i.i.i.i, align 8, !alias.scope !44611, !noalias !44563, !nonnull !177, !noundef !177
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.22.0..sroa_idx.i.i.i.i, align 8, !alias.scope !44611, !noalias !44563
  store i64 0, ptr %.sroa.23.0..sroa_idx.i.i.i.i, align 8, !alias.scope !44611, !noalias !44563
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i7.i.i, i64 noundef %.val28.i.i.i, i64 noundef 1) #52, !noalias !44621
  br label %._crit_edge686.i.i.i.i

._crit_edge686.i.i.i.i:                           ; preds = %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i6.i.i, %bb.im
  %.pre687.i.i.i.i = load i8, ptr %i.nz, align 1, !alias.scope !44490, !noalias !44469
  br label %bb.iq

bb.iq:                                            ; preds = %._crit_edge686.i.i.i.i, %bb.hq
  %i.atg = phi i8 [ %.pre687.i.i.i.i, %._crit_edge686.i.i.i.i ], [ %i.aqf, %bb.hq ]
  %i.ath = icmp eq i8 %i.atg, 0
  br i1 %i.ath, label %bb.ir, label %bb.is

bb.ir:                                            ; preds = %bb.iq
  store i32 0, ptr %.sroa.7254.0..sroa_idx.i.i.i.i, align 8, !alias.scope !44490, !noalias !44469
  store i8 17, ptr %i.nc, align 2, !alias.scope !44490, !noalias !44469
  br label %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit.i.i.i.i.backedge

bb.is:                                            ; preds = %bb.iq
  store i8 11, ptr %i.nc, align 2, !alias.scope !44490, !noalias !44469
  br label %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit.i.i.i.i.backedge

.loopexit212.i.i.i.i:                             ; preds = %bb.em, %.loopexit212.loopexit.i.i.i.i
  %i.ati = phi i64 [ %i.acm, %.loopexit212.loopexit.i.i.i.i ], [ %.promoted14.i148.i.i.i.i, %bb.em ]
  %.lcssa7.i146.i.i.i.i = phi i32 [ %i.acn, %.loopexit212.loopexit.i.i.i.i ], [ %.promoted.i143.i.i.i.i, %bb.em ] ; 2 uses
  %i.atj = and i32 %.lcssa7.i146.i.i.i.i, 63
  %i.atk = zext nneg i32 %i.atj to i64
  %i.atl = lshr i64 %i.ati, %i.atk                ; 2 uses
  %i.atm = trunc i64 %i.atl to i32                ; 2 uses
  %i.atn = add i32 %.lcssa7.i146.i.i.i.i, 6
  store i32 %i.atn, ptr %.sroa.30.0..sroa_idx.i.i.i.i, align 8, !alias.scope !44567, !noalias !44469
  %i.ato = and i32 %i.atm, 3                      ; 2 uses
  store i32 %i.ato, ptr %i.ne, align 4, !alias.scope !44490, !noalias !44469
  %i.atp = lshr i32 %i.atm, 2
  %i.atq = and i32 %i.atp, 15
  %i.atr = shl nuw nsw i32 %i.atq, %i.ato
  %i.ats = add nuw nsw i32 %i.atr, 16
  store i32 %i.ats, ptr %i.nd, align 8, !alias.scope !44490, !noalias !44469
  %i.att = and i64 %i.atl, 3
  %i.atu = getelementptr inbounds nuw [4 x i8], ptr @379, i64 %i.att
  %i.atv = load i32, ptr %i.atu, align 4, !noalias !44610, !noundef !177
  store i32 %i.atv, ptr %i.nl, align 4, !alias.scope !44490, !noalias !44469
  %i.atw = load i32, ptr %.sroa.68.0..sroa_idx.i.i.i.i, align 8, !alias.scope !44490, !noalias !44469, !noundef !177 ; 2 uses
  %i.atx = zext i32 %i.atw to i64                 ; 3 uses
  %i.aty = icmp eq i32 %i.atw, 0                  ; 2 uses
  br i1 %i.aty, label %_RNvXNtCs2D0wXkiOfwW_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs5NNYTrzbB3N_15alloc_no_stdlib15stack_allocator9AllocatorhE10alloc_cellCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i, label %bb.it

bb.it:                                            ; preds = %.loopexit212.i.i.i.i
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52, !noalias !44622
  %i.atz = call noundef ptr @_RNvCsh0WfaQiVYm0_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 4294967296) %i.atx, i64 noundef range(i64 1, 17) 1) #52, !noalias !44622 ; 2 uses
  %i.aua = icmp eq ptr %i.atz, null
  br i1 %i.aua, label %bb.iv, label %bb.iu

bb.iu:                                            ; preds = %bb.it
  %i.aub = ptrtoint ptr %i.atz to i64
  br label %_RNvXNtCs2D0wXkiOfwW_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs5NNYTrzbB3N_15alloc_no_stdlib15stack_allocator9AllocatorhE10alloc_cellCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i

bb.iv:                                            ; preds = %bb.it
  call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef 1, i64 range(i64 -2147483582, 4294967296) %i.atx) #61, !noalias !44623
  unreachable

_RNvXNtCs2D0wXkiOfwW_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs5NNYTrzbB3N_15alloc_no_stdlib15stack_allocator9AllocatorhE10alloc_cellCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i: ; preds = %bb.iu, %.loopexit212.i.i.i.i
  %.sroa.10.0.i.i.i.i.i.i = phi i64 [ %i.aub, %bb.iu ], [ 1, %.loopexit212.i.i.i.i ]
  %i.auc = inttoptr i64 %.sroa.10.0.i.i.i.i.i.i to ptr ; 2 uses
  %.val128.i.i.i.i = load i64, ptr %.sroa.27.0..sroa_idx.i.i.i.i, align 8, !alias.scope !44624, !noalias !44469, !noundef !177 ; 2 uses
  %i.aud = icmp eq i64 %.val128.i.i.i.i, 0
  br i1 %i.aud, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2D0wXkiOfwW_12alloc_stdlib10heap_alloc7WrapBoxhEECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i168.i.i.i.i

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i168.i.i.i.i: ; preds = %_RNvXNtCs2D0wXkiOfwW_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs5NNYTrzbB3N_15alloc_no_stdlib15stack_allocator9AllocatorhE10alloc_cellCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i
  %.val127.i.i.i.i = load ptr, ptr %.sroa.26.0..sroa_idx.i.i.i.i, align 8, !alias.scope !44490, !noalias !44469, !nonnull !177, !noundef !177
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val127.i.i.i.i, i64 noundef %.val128.i.i.i.i, i64 noundef 1) #52, !noalias !44625
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2D0wXkiOfwW_12alloc_stdlib10heap_alloc7WrapBoxhEECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2D0wXkiOfwW_12alloc_stdlib10heap_alloc7WrapBoxhEECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i: ; preds = %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i168.i.i.i.i, %_RNvXNtCs2D0wXkiOfwW_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs5NNYTrzbB3N_15alloc_no_stdlib15stack_allocator9AllocatorhE10alloc_cellCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i
  store ptr %i.auc, ptr %.sroa.26.0..sroa_idx.i.i.i.i, align 8, !alias.scope !44490, !noalias !44469
  store i64 %i.atx, ptr %.sroa.27.0..sroa_idx.i.i.i.i, align 8, !alias.scope !44490, !noalias !44469
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.auc) ]
  br i1 %i.aty, label %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit.i.i.i.i.backedge, label %bb.iw

bb.iw:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2D0wXkiOfwW_12alloc_stdlib10heap_alloc7WrapBoxhEECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i
  store i32 0, ptr %.sroa.7254.0..sroa_idx.i.i.i.i, align 8, !alias.scope !44490, !noalias !44469
  br label %.backedge.i.i.i.i

bb.ix:                                            ; preds = %bb.ev
  %i.aue = call fastcc noundef i32 @_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode23ProcessCommandsInternalNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB19_B19_ECsgZAIVb0XKpv_9ssservice(i1 noundef zeroext true, ptr noalias nofree noundef nonnull align 8 dereferenceable(2600) %i.r, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.029.1.i.i.i.i, i64 noundef %.sroa.21.1.i.i.i.i) #52, !noalias !44491
  br label %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit.i.i.i.i.backedge

_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode29CopyUncompressedBlockToOutputNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB1f_B1f_ECsgZAIVb0XKpv_9ssservice.exit.i.i.i: ; preds = %bb.fq
  store i8 14, ptr %i.nc, align 2, !alias.scope !44490, !noalias !44469
  br label %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit.i.i.i.i.backedge

bb.iy:                                            ; preds = %.loopexit209.i.i.i.i, %.lr.ph.i.i.i.i
  %.promoted18.i177462.i.i.i.i = phi i32 [ %.promoted460.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.promoted18.i177461.i.i.i.i, %.loopexit209.i.i.i.i ] ; 4 uses
  %.promoted17.i176459.i.i.i.i = phi i32 [ %.promoted457.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.promoted17.i176458.i.i.i.i, %.loopexit209.i.i.i.i ] ; 3 uses
  %i.auf = phi i64 [ %.promoted456.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.auq, %.loopexit209.i.i.i.i ] ; 2 uses
  %.promoted.i169455.i.i.i.i = phi i32 [ %.promoted454.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.aur, %.loopexit209.i.i.i.i ] ; 3 uses
  %i.aug = phi i32 [ %.promoted.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.aus, %.loopexit209.i.i.i.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !44626)
  call void @llvm.experimental.noalias.scope.decl(metadata !44627)
  %i.auh = add i32 %.promoted.i169455.i.i.i.i, -57
  %.not.i170.i.i.i.i = icmp ult i32 %i.auh, 8
  br i1 %.not.i170.i.i.i.i, label %.lr.ph.i174.preheader.i.i.i.i, label %.loopexit209.i.i.i.i

.lr.ph.i174.preheader.i.i.i.i:                    ; preds = %bb.iy
  %i.aui = zext i32 %.promoted18.i177462.i.i.i.i to i64 ; 2 uses
  %i.auj = icmp eq i32 %.promoted17.i176459.i.i.i.i, 0
  br i1 %i.auj, label %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit.i.i.i.i.backedge, label %bb.iz

bb.iz:                                            ; preds = %.lr.ph.i174.preheader.i.i.i.i
  %exitcond682.not.not.i.i.i.i = icmp ult i32 %.promoted18.i177462.i.i.i.i, %i.pp
  br i1 %exitcond682.not.not.i.i.i.i, label %.loopexit209.loopexit.i.i.i.i, label %bb.ja

.loopexit209.loopexit.i.i.i.i:                    ; preds = %bb.iz
  %i.auk = getelementptr inbounds nuw i8, ptr %.sroa.029.1.i.i.i.i, i64 %i.aui
  %i.aul = load i8, ptr %i.auk, align 1, !alias.scope !44627, !noalias !44493, !noundef !177
  %i.aum = zext i8 %i.aul to i64
  %i.aun = call i64 @llvm.fshl.i64(i64 %i.aum, i64 %i.auf, i64 56) ; 2 uses
  store i64 %i.aun, ptr %i.ni, align 8, !alias.scope !44496, !noalias !44469
  %i.auo = add nsw i32 %.promoted.i169455.i.i.i.i, -8
  %i.aup = add i32 %.promoted17.i176459.i.i.i.i, -1 ; 2 uses
  store i32 %i.aup, ptr %.sroa.33.0..sroa_idx.i.i.i.i, align 8, !alias.scope !44496, !noalias !44469
  %indvars.iv.next678.i.i.i.i = add nuw nsw i32 %.promoted18.i177462.i.i.i.i, 1 ; 2 uses
  store i32 %indvars.iv.next678.i.i.i.i, ptr %.sroa.32.0..sroa_idx.i.i.i.i, align 4, !alias.scope !44496, !noalias !44469
  br label %.loopexit209.i.i.i.i

bb.ja:                                            ; preds = %bb.iz
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.aui, i64 noundef range(i64 8, 4097) %.sroa.21.1.i.i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @385) #62, !noalias !44628
  unreachable

._crit_edge.i.i.i.i65:                            ; preds = %.loopexit209.i.i.i.i, %.preheader.i.i.i.i
  store i8 14, ptr %i.nc, align 2, !alias.scope !44490, !noalias !44469
  br label %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit.i.i.i.i.backedge

.loopexit209.i.i.i.i:                             ; preds = %.loopexit209.loopexit.i.i.i.i, %bb.iy
  %.promoted18.i177461.i.i.i.i = phi i32 [ %.promoted18.i177462.i.i.i.i, %bb.iy ], [ %indvars.iv.next678.i.i.i.i, %.loopexit209.loopexit.i.i.i.i ]
  %.promoted17.i176458.i.i.i.i = phi i32 [ %.promoted17.i176459.i.i.i.i, %bb.iy ], [ %i.aup, %.loopexit209.loopexit.i.i.i.i ]
  %i.auq = phi i64 [ %i.auf, %bb.iy ], [ %i.aun, %.loopexit209.loopexit.i.i.i.i ]
  %.lcssa7.i172.i.i.i.i = phi i32 [ %.promoted.i169455.i.i.i.i, %bb.iy ], [ %i.auo, %.loopexit209.loopexit.i.i.i.i ]
  %i.aur = add i32 %.lcssa7.i172.i.i.i.i, 8       ; 2 uses
  store i32 %i.aur, ptr %.sroa.30.0..sroa_idx.i.i.i.i, align 8, !alias.scope !44496, !noalias !44469
  %i.aus = add nsw i32 %i.aug, -1                 ; 2 uses
  store i32 %i.aus, ptr %i.nm, align 8, !alias.scope !44490, !noalias !44469
  %i.aut = icmp sgt i32 %i.aug, 1
  br i1 %i.aut, label %bb.iy, label %._crit_edge.i.i.i.i65

bb.jb:                                            ; preds = %bb.gc
  store i8 3, ptr %i.nc, align 2, !alias.scope !44490, !noalias !44469
  br label %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit.i.i.i.i.backedge

bb.jc:                                            ; preds = %bb.gc
  %i.auu = load i32, ptr %.sroa.30.0..sroa_idx.i.i.i.i, align 8, !alias.scope !44490, !noalias !44469, !noundef !177 ; 4 uses
  %i.auv = sub i32 0, %i.auu
  %i.auw = and i32 %i.auv, 7                      ; 3 uses
  %i.aux = icmp eq i32 %i.auw, 0
  br i1 %i.aux, label %bb.jd, label %bb.je

bb.jd:                                            ; preds = %bb.je, %bb.jc
  %i.auy = phi i32 [ %i.auu, %bb.jc ], [ %i.avk, %bb.je ] ; 2 uses
  %i.auz = load i32, ptr %i.nb, align 4, !alias.scope !44490, !noalias !44469, !noundef !177
  %i.ava = icmp eq i32 %i.auz, 0
  br i1 %i.ava, label %bb.jf, label %.backedge.i.i.i.i

bb.je:                                            ; preds = %bb.jc
  %i.avb = zext nneg i32 %i.auw to i64
  %i.avc = load i64, ptr %i.ni, align 8, !alias.scope !44490, !noalias !44469, !noundef !177
  %i.avd = and i32 %i.auu, 63
  %i.ave = zext nneg i32 %i.avd to i64
  %i.avf = lshr i64 %i.avc, %i.ave
  %i.avg = trunc i64 %i.avf to i32
  %i.avh = getelementptr inbounds nuw [4 x i8], ptr @379, i64 %i.avb
  %i.avi = load i32, ptr %i.avh, align 4, !noalias !44610, !noundef !177
  %i.avj = and i32 %i.avi, %i.avg
  %i.avk = add i32 %i.auw, %i.auu                 ; 2 uses
  store i32 %i.avk, ptr %.sroa.30.0..sroa_idx.i.i.i.i, align 8, !alias.scope !44490, !noalias !44469
  %i.avl = icmp eq i32 %i.avj, 0
  br i1 %i.avl, label %bb.jd, label %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit.i.i.i.i.backedge

bb.jf:                                            ; preds = %bb.jd
  %i.avm = sub i32 64, %i.auy                     ; 3 uses
  %i.avn = lshr i32 %i.avm, 3                     ; 2 uses
  %i.avo = and i32 %i.avm, -8                     ; 2 uses
  %i.avp = load i32, ptr %.sroa.33.0..sroa_idx.i.i.i.i, align 8, !alias.scope !44490, !noalias !44469, !noundef !177
  %i.avq = add i32 %i.avp, %i.avn                 ; 2 uses
  store i32 %i.avq, ptr %.sroa.33.0..sroa_idx.i.i.i.i, align 8, !alias.scope !44490, !noalias !44469
  %i.avr = load i32, ptr %.sroa.32.0..sroa_idx.i.i.i.i, align 4, !alias.scope !44490, !noalias !44469, !noundef !177
  %i.avs = sub i32 %i.avr, %i.avn                 ; 2 uses
  store i32 %i.avs, ptr %.sroa.32.0..sroa_idx.i.i.i.i, align 4, !alias.scope !44490, !noalias !44469
  %i.avt = icmp eq i32 %i.avo, 64
  %i.avu = load i64, ptr %i.ni, align 8, !alias.scope !44490, !noalias !44469
  %i.avv = and i32 %i.avm, 56
  %i.avw = zext nneg i32 %i.avv to i64
  %i.avx = shl i64 %i.avu, %i.avw
  %storemerge108.i.i.i.i = select i1 %i.avt, i64 0, i64 %i.avx
  store i64 %storemerge108.i.i.i.i, ptr %i.ni, align 8, !alias.scope !44490, !noalias !44469
  %i.avy = add i32 %i.avo, %i.auy
  store i32 %i.avy, ptr %.sroa.30.0..sroa_idx.i.i.i.i, align 8, !alias.scope !44490, !noalias !44469
  %i.avz = zext i32 %i.avq to i64
  %i.awa = zext i32 %i.avs to i64
  br label %.backedge.i.i.i.i

bb.jg:                                            ; preds = %bb.gb, %bb.ga, %bb.fz
end_hunk_3
begin_hunk_4_@_RNCINvNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13online_config16content_encoding9read_bodyINtNtCs7ewmRfXve8r_4http8response8ResponseNtNtNtCsaI3lGUjttVO_5hyper4body8incoming8IncomingEE0CsgZAIVb0XKpv_9ssservice:bb.a
  %.val45.i.i.i.i.i = load i64, ptr %.sroa.25.0..sroa_idx.i.i.i.i, align 8, !alias.scope !44647, !noalias !44469, !noundef !177 ; 10 uses
  %i.azq = icmp ult i64 %i.azp, %.val45.i.i.i.i.i
  br i1 %i.azq, label %bb.ku, label %bb.kv

bb.ku:                                            ; preds = %.lr.ph.i183.i.i.i.i
  %i.azr = getelementptr inbounds nuw i8, ptr %.val44.i.i.i.i.i, i64 %i.azp
  %i.azs = load i8, ptr %i.azr, align 1, !noalias !44648, !noundef !177 ; 4 uses
  br label %bb.kx

bb.kv:                                            ; preds = %.lr.ph.i183.i.i.i.i
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.azp, i64 noundef %.val45.i.i.i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @436) #62, !noalias !44648
  unreachable

bb.kw:                                            ; preds = %bb.li
  %i.azt = icmp eq i64 %i.bbe, 0
  br i1 %i.azt, label %bb.ky, label %bb.lb

bb.kx:                                            ; preds = %bb.li, %bb.ku
  %.sroa.012.073.i.i.i.i.i = phi i64 [ 0, %bb.ku ], [ %i.bbf, %bb.li ] ; 3 uses
  %.sroa.07.072.i.i.i.i.i = phi i64 [ 0, %bb.ku ], [ %i.bbe, %bb.li ]
  %i.azu = or disjoint i64 %.sroa.012.073.i.i.i.i.i, %i.azp ; 6 uses
  %i.azv = icmp ult i64 %i.azu, %.val45.i.i.i.i.i
  br i1 %i.azv, label %bb.lc, label %bb.ld

bb.ky:                                            ; preds = %bb.kw
  %i.azw = lshr i64 %.sroa.02.074.i.i.i.i.i, 5    ; 2 uses
  %i.azx = icmp samesign ult i64 %.sroa.02.074.i.i.i.i.i, 256
  br i1 %i.azx, label %bb.kz, label %bb.la

bb.kz:                                            ; preds = %bb.ky
  %i.azy = trunc nuw nsw i64 %.sroa.02.074.i.i.i.i.i to i32
  %i.azz = and i32 %i.azy, 31
  %i.baa = shl nuw i32 1, %i.azz
  %i.bab = getelementptr inbounds nuw [4 x i8], ptr %.ptr36.i.i.i.i.i, i64 %i.azw ; 2 uses
  %i.bac = load i32, ptr %i.bab, align 4, !alias.scope !44647, !noalias !44469, !noundef !177
  %i.bad = or i32 %i.bac, %i.baa
  store i32 %i.bad, ptr %i.bab, align 4, !alias.scope !44647, !noalias !44469
  %.pre.i.i.i.i.i = load i32, ptr %.sroa.68.0..sroa_idx.i.i.i.i, align 8, !alias.scope !44647, !noalias !44469
  br label %bb.lb

bb.la:                                            ; preds = %bb.ky
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.azw, i64 noundef 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @437) #62, !noalias !44648
  unreachable

bb.lb:                                            ; preds = %bb.kz, %bb.kw
  %i.bae = phi i32 [ %i.azo, %bb.kw ], [ %.pre.i.i.i.i.i, %bb.kz ] ; 2 uses
  %i.baf = add nuw nsw i64 %.sroa.02.074.i.i.i.i.i, 1 ; 2 uses
  %i.bag = zext i32 %i.bae to i64
  %i.bah = icmp samesign ult i64 %i.baf, %i.bag
  br i1 %i.bah, label %.lr.ph.i183.i.i.i.i, label %.backedge.i.i.i.i

bb.lc:                                            ; preds = %bb.kx
  %i.bai = getelementptr inbounds nuw i8, ptr %.val44.i.i.i.i.i, i64 %i.azu
  %i.baj = load i8, ptr %i.bai, align 1, !noalias !44648, !noundef !177
  %i.bak = or disjoint i64 %i.azu, 1              ; 3 uses
  %i.bal = icmp ult i64 %i.bak, %.val45.i.i.i.i.i
  br i1 %i.bal, label %bb.le, label %bb.lf

bb.ld:                                            ; preds = %bb.kx
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.azu, i64 noundef %.val45.i.i.i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @438) #62, !noalias !44648
  unreachable

bb.le:                                            ; preds = %bb.lc
  %i.bam = getelementptr inbounds nuw i8, ptr %.val44.i.i.i.i.i, i64 %i.bak
  %i.ban = load i8, ptr %i.bam, align 1, !noalias !44648, !noundef !177
  %i.bao = or disjoint i64 %i.azu, 2              ; 3 uses
  %i.bap = icmp ult i64 %i.bao, %.val45.i.i.i.i.i
  br i1 %i.bap, label %bb.lg, label %bb.lh

bb.lf:                                            ; preds = %bb.lc
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.bak, i64 noundef %.val45.i.i.i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @439) #62, !noalias !44648
  unreachable

bb.lg:                                            ; preds = %bb.le
  %i.baq = or disjoint i64 %i.azu, 3              ; 3 uses
  %i.bar = icmp ult i64 %i.baq, %.val45.i.i.i.i.i
  br i1 %i.bar, label %bb.li, label %bb.lj

bb.lh:                                            ; preds = %bb.le
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.bao, i64 noundef %.val45.i.i.i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @440) #62, !noalias !44648
  unreachable

bb.li:                                            ; preds = %bb.lg
  %i.bas = getelementptr inbounds nuw i8, ptr %.val44.i.i.i.i.i, i64 %i.bao
  %i.bat = load i8, ptr %i.bas, align 1, !noalias !44648, !noundef !177
  %i.bau = xor i8 %i.bat, %i.azs
  %i.bav = xor i8 %i.baj, %i.azs
  %i.baw = xor i8 %i.ban, %i.azs
  %i.bax = or i8 %i.baw, %i.bav
  %i.bay = or i8 %i.bax, %i.bau
  %i.baz = getelementptr inbounds nuw i8, ptr %.val44.i.i.i.i.i, i64 %i.baq
  %i.bba = load i8, ptr %i.baz, align 1, !noalias !44648, !noundef !177
  %i.bbb = xor i8 %i.bba, %i.azs
  %i.bbc = or i8 %i.bay, %i.bbb
  %i.bbd = zext i8 %i.bbc to i64
  %i.bbe = or i64 %.sroa.07.072.i.i.i.i.i, %i.bbd ; 2 uses
  %i.bbf = add nuw nsw i64 %.sroa.012.073.i.i.i.i.i, 4
  %i.bbg = icmp samesign ult i64 %.sroa.012.073.i.i.i.i.i, 60
  br i1 %i.bbg, label %bb.kx, label %bb.kw

bb.lj:                                            ; preds = %bb.lg
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.baq, i64 noundef %.val45.i.i.i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @441) #62, !noalias !44648
  unreachable

bb.lk:                                            ; preds = %bb.gi
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !44610
  store <4 x i32> <i32 0, i32 4, i32 12, i32 28>, ptr %i.n, align 16, !noalias !44610
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !44610
  store <4 x i32> <i32 73, i32 126, i32 228, i32 424>, ptr %i.m, align 16, !noalias !44610
  %i.bbh = and i32 %i.akn, 31
  %i.bbi = shl nuw i32 1, %i.bbh                  ; 2 uses
  %i.bbj = zext i32 %i.akn to i64                 ; 4 uses
  %i.bbk = icmp ult i32 %i.akn, 4
  br i1 %i.bbk, label %bb.ll, label %bb.lm

bb.ll:                                            ; preds = %bb.lk
  %i.bbl = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.bbj
  %i.bbm = load i32, ptr %i.bbl, align 4, !noalias !44610, !noundef !177 ; 2 uses
  %i.bbn = icmp ult i32 %i.akm, %i.bbm
  br i1 %i.bbn, label %bb.lq, label %bb.ln

bb.lm:                                            ; preds = %bb.lk
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.bbj, i64 noundef 4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2371) #62, !noalias !44491
  unreachable

bb.ln:                                            ; preds = %bb.ll
  %i.bbo = add i32 %i.bbm, %i.bbi                 ; 2 uses
  %i.bbp = icmp ugt i32 %i.akm, %i.bbo
  %i.bbq = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.bbj
  %i.bbr = load i32, ptr %i.bbq, align 4, !noalias !44610, !noundef !177 ; 2 uses
  br i1 %i.bbp, label %bb.lp, label %bb.lo

bb.lo:                                            ; preds = %bb.ln
  %i.bbs = add i32 %i.bbr, %i.bbo
  br label %_RNvNtCsl4v216RJbSI_19brotli_decompressor6decode23BrotliMaxDistanceSymbol.exit.i.i.i.i

bb.lp:                                            ; preds = %bb.ln
  %i.bbt = add i32 %i.bbr, %i.akm
  br label %_RNvNtCsl4v216RJbSI_19brotli_decompressor6decode23BrotliMaxDistanceSymbol.exit.i.i.i.i

bb.lq:                                            ; preds = %bb.ll
  %i.bbu = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.bbj
  %i.bbv = load i32, ptr %i.bbu, align 4, !noalias !44610, !noundef !177
  %i.bbw = add i32 %i.bbi, %i.akm
  %i.bbx = add i32 %i.bbw, %i.bbv
  br label %_RNvNtCsl4v216RJbSI_19brotli_decompressor6decode23BrotliMaxDistanceSymbol.exit.i.i.i.i

_RNvNtCsl4v216RJbSI_19brotli_decompressor6decode23BrotliMaxDistanceSymbol.exit.i.i.i.i: ; preds = %bb.lq, %bb.lp, %bb.lo
  %.sroa.0.0.i185.i.i.i.i = phi i32 [ %i.bbx, %bb.lq ], [ %i.bbt, %bb.lp ], [ %i.bbs, %bb.lo ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !44610
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !44610
  br label %bb.lr

bb.lr:                                            ; preds = %_RNvNtCsl4v216RJbSI_19brotli_decompressor6decode23BrotliMaxDistanceSymbol.exit.i.i.i.i, %bb.gi
  %.sroa.08.0.i.i.i.i = phi i32 [ %.sroa.0.0.i185.i.i.i.i, %_RNvNtCsl4v216RJbSI_19brotli_decompressor6decode23BrotliMaxDistanceSymbol.exit.i.i.i.i ], [ %i.akt, %bb.gi ]
  %i.bby = load i32, ptr %i.nf, align 8, !alias.scope !44490, !noalias !44469, !noundef !177
  %i.bbz = zext i32 %i.bby to i64
  %i.bca = shl nuw nsw i64 %i.bbz, 2
  %i.bcb = call fastcc noundef i32 @_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode16DecodeContextMapNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB12_B12_ECsgZAIVb0XKpv_9ssservice(i64 noundef %i.bca, i1 noundef zeroext true, ptr noalias nofree noundef nonnull align 8 dereferenceable(2600) %i.r, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.029.1.i.i.i.i, i64 noundef %.sroa.21.1.i.i.i.i) #52, !noalias !44491 ; 2 uses
  %i.bcc = icmp eq i32 %i.bcb, 1
  br i1 %i.bcc, label %bb.ls, label %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit.i.i.i.i.backedge

bb.ls:                                            ; preds = %bb.lr
  %i.bcd = load i32, ptr %.sroa.103.0..sroa_idx.i.i.i.i, align 4, !alias.scope !44490, !noalias !44469, !noundef !177
  %i.bce = trunc i32 %i.bcd to i16
  call fastcc void @_RNvMs0_NtCsl4v216RJbSI_19brotli_decompressor7huffmanINtB5_16HuffmanTreeGroupNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB1c_E4initCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef align 8 dereferenceable(40) %.sroa.41.0..sroa_idx.i.i.i.i, i16 noundef 256, i16 noundef 256, i16 noundef %i.bce) #52, !noalias !44491
  %i.bcf = load i32, ptr %i.ng, align 4, !alias.scope !44490, !noalias !44469, !noundef !177
  %i.bcg = trunc i32 %i.bcf to i16
  call fastcc void @_RNvMs0_NtCsl4v216RJbSI_19brotli_decompressor7huffmanINtB5_16HuffmanTreeGroupNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB1c_E4initCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef align 8 dereferenceable(40) %.sroa.4847.0..sroa_idx.i.i.i.i, i16 noundef 704, i16 noundef 704, i16 noundef %i.bcg) #52, !noalias !44491
  %i.bch = trunc i32 %i.akt to i16
  %i.bci = trunc i32 %.sroa.08.0.i.i.i.i to i16
  %i.bcj = load i32, ptr %i.nh, align 8, !alias.scope !44490, !noalias !44469, !noundef !177
  %i.bck = trunc i32 %i.bcj to i16
  call fastcc void @_RNvMs0_NtCsl4v216RJbSI_19brotli_decompressor7huffmanINtB5_16HuffmanTreeGroupNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB1c_E4initCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef align 8 dereferenceable(40) %.sroa.5549.0..sroa_idx.i.i.i.i, i16 noundef %i.bch, i16 noundef %i.bci, i16 noundef %i.bck) #52, !noalias !44491
  %.val134.i.i.i.i = load i64, ptr %.sroa.44.0..sroa_idx.i.i.i.i, align 8, !alias.scope !44490, !noalias !44469, !noundef !177
  %i.bcl = icmp eq i64 %.val134.i.i.i.i, 0
  %.val132.i.i.i.i = load i64, ptr %.sroa.51.0..sroa_idx.i.i.i.i, align 8, !alias.scope !44490, !noalias !44469
  %i.bcm = icmp eq i64 %.val132.i.i.i.i, 0
  %or.cond206.i.i.i.i = select i1 %i.bcl, i1 true, i1 %i.bcm
  %.val130.i.i.i.i = load i64, ptr %.sroa.58.0..sroa_idx50.i.i.i.i, align 8, !alias.scope !44490, !noalias !44469
  %i.bcn = icmp eq i64 %.val130.i.i.i.i, 0
  %or.cond208.i.i.i.i = select i1 %or.cond206.i.i.i.i, i1 true, i1 %i.bcn
  br i1 %or.cond208.i.i.i.i, label %.sink.split.i.i.i.i, label %bb.lt

bb.lt:                                            ; preds = %bb.ls
  store i32 0, ptr %.sroa.7254.0..sroa_idx.i.i.i.i, align 8, !alias.scope !44490, !noalias !44469
  br label %.backedge.i.i.i.i

.sink.split.i.i.i.i:                              ; preds = %bb.gu, %bb.ls, %bb.mh, %bb.mg, %bb.co
  %.sroa.017.9.i.i.i = phi i64 [ %.sroa.017.2.i.i.i, %bb.ls ], [ 0, %bb.co ], [ %i.bdx, %bb.mg ], [ %i.bdx, %bb.mh ], [ %.sroa.017.2.i.i.i, %bb.gu ]
  %.sroa.014.6.i.i.i = phi i64 [ %.sroa.014.3.i.i.i, %bb.ls ], [ %.sroa.014.1.i.i.i.peel, %bb.co ], [ %.sroa.014.3.i.i.i, %bb.mg ], [ %.sroa.014.3.i.i.i, %bb.mh ], [ %.sroa.014.3.i.i.i, %bb.gu ]
  %.sroa.011.6.i.i.i = phi i64 [ %.sroa.011.3.i.i.i, %bb.ls ], [ %.sroa.011.1.i.i.i.peel, %bb.co ], [ %.sroa.011.3.i.i.i, %bb.mg ], [ %.sroa.011.3.i.i.i, %bb.mh ], [ %.sroa.011.3.i.i.i, %bb.gu ]
  %.sroa.06.8.i.i.i = phi i64 [ %.sroa.06.1.i.i.i, %bb.ls ], [ %.sroa.06.0.i.i.i.ph, %bb.co ], [ %i.beb, %bb.mg ], [ %i.beb, %bb.mh ], [ %.sroa.06.1.i.i.i, %bb.gu ]
  %.sink912.i.i.i.i = phi i32 [ -31, %bb.ls ], [ -20, %bb.co ], [ 1, %bb.mg ], [ 1, %bb.mh ], [ 1, %bb.gu ]
  %.sroa.0.0.ph.i.i.i.i = phi i32 [ 0, %bb.ls ], [ 0, %bb.co ], [ 1, %bb.mg ], [ 1, %bb.mh ], [ 1, %bb.gu ]
  store i32 %.sink912.i.i.i.i, ptr %.sroa.104.0..sroa_idx.i.i.i.i, align 8, !alias.scope !44490, !noalias !44469
  br label %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode22BrotliDecompressStreamNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB18_B18_ECsgZAIVb0XKpv_9ssservice.exit.i.i.i

bb.lu:                                            ; preds = %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode22HuffmanTreeGroupDecodeNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB18_B18_ECsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !44649)
  %i.bco = load i32, ptr %i.np, align 4, !alias.scope !44649, !noalias !44563, !noundef !177 ; 4 uses
  %i.bcp = zext i32 %i.bco to i64                 ; 4 uses
  %i.bcq = shl i32 %i.bco, 6
  %i.bcr = zext i32 %i.bcq to i64                 ; 4 uses
  store i64 %i.bcr, ptr %i.nr, align 8, !alias.scope !44649, !noalias !44563
  %i.bcs = lshr i64 %i.bcp, 5                     ; 2 uses
  %i.bct = icmp ult i32 %i.bco, 256
  br i1 %i.bct, label %bb.lv, label %bb.lw

bb.lv:                                            ; preds = %bb.lu
  %i.bcu = getelementptr inbounds nuw [4 x i8], ptr %.ptr36.i.i.i.i.i, i64 %i.bcs
  %i.bcv = load i32, ptr %i.bcu, align 4, !alias.scope !44649, !noalias !44563, !noundef !177
  %i.bcw = and i32 %i.bco, 31
  %i.bcx = lshr i32 %i.bcv, %i.bcw
  %i.bcy = and i32 %i.bcx, 1
  store i32 %i.bcy, ptr %i.oi, align 8, !alias.scope !44649, !noalias !44563
  %.val9.i.i.i = load i64, ptr %.sroa.25.0..sroa_idx.i.i.i.i, align 8, !alias.scope !44649, !noalias !44563, !noundef !177 ; 2 uses
  %i.bcz = icmp ugt i64 %.val9.i.i.i, %i.bcr
  br i1 %i.bcz, label %bb.lx, label %bb.ly

bb.lw:                                            ; preds = %bb.lu
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.bcs, i64 noundef 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @400) #62, !noalias !44650
  unreachable

bb.lx:                                            ; preds = %bb.lv
  %.val8.i.i.i = load ptr, ptr %.sroa.24.0..sroa_idx.i.i.i.i, align 8, !alias.scope !44649, !noalias !44563, !nonnull !177, !noundef !177
  %i.bda = getelementptr inbounds nuw i8, ptr %.val8.i.i.i, i64 %i.bcr
  %i.bdb = load i8, ptr %i.bda, align 1, !noalias !44650, !noundef !177
  store i8 %i.bdb, ptr %.sroa.107.0..sroa_idx.i.i.i.i, align 8, !alias.scope !44649, !noalias !44563
  %.val7.i.i.i = load i64, ptr %.sroa.27.0..sroa_idx.i.i.i.i, align 8, !alias.scope !44649, !noalias !44563, !noundef !177 ; 2 uses
  %i.bdc = icmp ugt i64 %.val7.i.i.i, %i.bcp
  br i1 %i.bdc, label %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode22PrepareLiteralDecodingNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB18_B18_ECsgZAIVb0XKpv_9ssservice.exit.i.i, label %bb.lz

bb.ly:                                            ; preds = %bb.lv
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.bcr, i64 noundef %.val9.i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @401) #62, !noalias !44650
  unreachable

bb.lz:                                            ; preds = %bb.lx
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.bcp, i64 noundef %.val7.i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @402) #62, !noalias !44650
  unreachable

_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode22PrepareLiteralDecodingNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB18_B18_ECsgZAIVb0XKpv_9ssservice.exit.i.i: ; preds = %bb.lx
  %.val.i.i.i = load ptr, ptr %.sroa.26.0..sroa_idx.i.i.i.i, align 8, !alias.scope !44649, !noalias !44563, !nonnull !177, !noundef !177
  %i.bdd = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.bcp
  %i.bde = load i8, ptr %i.bdd, align 1, !noalias !44650, !noundef !177
  %i.bdf = and i8 %i.bde, 3
  %i.bdg = zext nneg i8 %i.bdf to i64
  %i.bdh = getelementptr inbounds nuw [512 x i8], ptr @_RNvNtCsl4v216RJbSI_19brotli_decompressor7context14kContextLookup, i64 %i.bdg
  store ptr %i.bdh, ptr %.sroa.6251.0..sroa_idx.i.i.i.i, align 8, !alias.scope !44649, !noalias !44563, !captures !228
  store i64 0, ptr %i.nv, align 8, !alias.scope !44490, !noalias !44469
  store i16 0, ptr %.sroa.105.0..sroa_idx.i.i.i.i, align 4, !alias.scope !44490, !noalias !44469
  store i8 7, ptr %i.nc, align 2, !alias.scope !44490, !noalias !44469
  br label %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit.i.i.i.i.backedge

bb.ma:                                            ; preds = %bb.gu
  call void @llvm.experimental.noalias.scope.decl(metadata !44651)
  %i.bdi = load i32, ptr %i.oa, align 8, !alias.scope !44651, !noalias !44580, !noundef !177 ; 4 uses
  %i.bdj = load i32, ptr %i.nw, align 8, !alias.scope !44651, !noalias !44580, !noundef !177 ; 6 uses
  %..i39.i.i.i = call i32 @llvm.smin.i32(i32 %i.bdi, i32 %i.bdj)
  %.sroa.010.0.i40.i.i.i = sext i32 %..i39.i.i.i to i64
  %i.bdk = load i64, ptr %i.ob, align 8, !alias.scope !44651, !noalias !44580, !noundef !177 ; 2 uses
  %i.bdl = sext i32 %i.bdj to i64
  %i.bdm = mul i64 %i.bdk, %i.bdl
  %i.bdn = add i64 %i.bdm, %.sroa.010.0.i40.i.i.i
  %i.bdo = load i64, ptr %i.oc, align 8, !alias.scope !44651, !noalias !44580, !noundef !177 ; 3 uses
  %i.bdp = sub i64 %i.bdn, %i.bdo                 ; 2 uses
  %spec.store.select.i41.i.i.i = call i64 @llvm.umin.i64(i64 %.sroa.06.1.i.i.i, i64 %i.bdp) ; 5 uses
  %i.bdq = load i32, ptr %i.nm, align 8, !alias.scope !44651, !noalias !44580, !noundef !177
  %i.bdr = icmp slt i32 %i.bdq, 0
  br i1 %i.bdr, label %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit.i.i.i.i.backedge, label %bb.mb

bb.mb:                                            ; preds = %bb.ma
  %i.bds = load i32, ptr %i.od, align 4, !alias.scope !44651, !noalias !44580, !noundef !177
  %i.bdt = sext i32 %i.bds to i64
  %i.bdu = and i64 %i.bdo, %i.bdt                 ; 4 uses
  %i.bdv = add i64 %i.bdu, %spec.store.select.i41.i.i.i ; 3 uses
  %i.bdw = icmp ult i64 %i.bdv, %i.bdu
  %.not.i43.i.i.i = icmp ugt i64 %i.bdv, %.val118.i.i.i.i
  %or.cond.i44.i.i.i = or i1 %i.bdw, %.not.i43.i.i.i
  br i1 %or.cond.i44.i.i.i, label %bb.md, label %bb.mc, !prof !206

bb.mc:                                            ; preds = %bb.mb
  %i.bdx = add nuw nsw i64 %spec.store.select.i41.i.i.i, %.sroa.017.2.i.i.i ; 5 uses
  %i.bdy = icmp ult i64 %i.bdx, 4097
  br i1 %i.bdy, label %bb.me, label %bb.mf, !prof !200

bb.md:                                            ; preds = %bb.mb
  call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %i.bdu, i64 noundef %i.bdv, i64 noundef %.val118.i.i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @369) #62, !noalias !44652
  unreachable

bb.me:                                            ; preds = %bb.mc
  %.val.i45.i.i.i = load ptr, ptr %.sroa.12.0..sroa_idx.i.i.i.i, align 8, !alias.scope !44651, !noalias !44580, !nonnull !177, !noundef !177
  %i.bdz = getelementptr inbounds nuw i8, ptr %.val.i45.i.i.i, i64 %i.bdu
  %i.bea = getelementptr inbounds nuw i8, ptr %i.s, i64 %.sroa.017.2.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bea, ptr nonnull readonly align 1 %i.bdz, i64 range(i64 0, -9223372036854775808) %spec.store.select.i41.i.i.i, i1 false), !alias.scope !44653, !noalias !44654
  %i.beb = sub nuw nsw i64 %.sroa.06.1.i.i.i, %spec.store.select.i41.i.i.i ; 3 uses
  %i.bec = add i64 %spec.store.select.i41.i.i.i, %i.bdo
  store i64 %i.bec, ptr %i.oc, align 8, !alias.scope !44651, !noalias !44580
  %i.bed = icmp ult i64 %.sroa.06.1.i.i.i, %i.bdp
  br i1 %i.bed, label %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit.i.i.i.i.backedge, label %bb.mg

bb.mf:                                            ; preds = %bb.mc
  call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %.sroa.017.2.i.i.i, i64 noundef %i.bdx, i64 noundef 4096, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @368) #62, !noalias !44652
  unreachable

bb.mg:                                            ; preds = %bb.me
  %i.bee = load i32, ptr %.sroa.102.0..sroa_idx.i.i.i.i, align 8, !alias.scope !44651, !noalias !44580, !noundef !177
  %i.bef = and i32 %i.bee, 31
  %i.beg = shl nuw i32 1, %i.bef
  %i.beh = icmp ne i32 %i.bdj, %i.beg
  %.not18.i47.i.i.i = icmp slt i32 %i.bdi, %i.bdj
  %or.cond21.i48.i.i.i = or i1 %.not18.i47.i.i.i, %i.beh
  br i1 %or.cond21.i48.i.i.i, label %.sink.split.i.i.i.i, label %bb.mh

bb.mh:                                            ; preds = %bb.mg
  %i.bei = sub i32 %i.bdi, %i.bdj
  store i32 %i.bei, ptr %i.oa, align 8, !alias.scope !44651, !noalias !44580
  %i.bej = add i64 %i.bdk, 1
  store i64 %i.bej, ptr %i.ob, align 8, !alias.scope !44651, !noalias !44580
  %i.bek = icmp ne i32 %i.bdi, %i.bdj
  %i.bel = zext i1 %i.bek to i8
  store i8 %i.bel, ptr %.sroa.122.0..sroa_idx.i.i.i.i, align 1, !alias.scope !44651, !noalias !44580
  br label %.sink.split.i.i.i.i

bb.mi:                                            ; preds = %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit.i.i.i.i
  %.val112.i.i.i.i = load i64, ptr %.sroa.13.0..sroa_idx.i.i.i.i, align 8, !alias.scope !44490, !noalias !44469, !noundef !177 ; 3 uses
  %i.bem = icmp eq i64 %.val112.i.i.i.i, 0
  br i1 %i.bem, label %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode15WriteRingBufferNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB11_B11_ECsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i, label %bb.mk

bb.mj:                                            ; preds = %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit.i.i.i.i
  %i.ben = load i32, ptr %i.nb, align 4, !alias.scope !44490, !noalias !44469, !noundef !177
  %i.beo = icmp eq i32 %i.ben, 0
  br i1 %i.beo, label %bb.nj, label %bb.nk

bb.mk:                                            ; preds = %bb.mi
  call void @llvm.experimental.noalias.scope.decl(metadata !44655)
  %i.bep = load i32, ptr %i.oa, align 8, !alias.scope !44655, !noalias !44580, !noundef !177 ; 4 uses
  %i.beq = load i32, ptr %i.nw, align 8, !alias.scope !44655, !noalias !44580, !noundef !177 ; 6 uses
  %..i35.i.i.i = call i32 @llvm.smin.i32(i32 %i.bep, i32 %i.beq)
  %.sroa.010.0.i.i.i.i = sext i32 %..i35.i.i.i to i64
  %i.ber = load i64, ptr %i.ob, align 8, !alias.scope !44655, !noalias !44580, !noundef !177 ; 2 uses
  %i.bes = sext i32 %i.beq to i64
  %i.bet = mul i64 %i.ber, %i.bes
  %i.beu = add i64 %i.bet, %.sroa.010.0.i.i.i.i
  %i.bev = load i64, ptr %i.oc, align 8, !alias.scope !44655, !noalias !44580, !noundef !177 ; 3 uses
  %i.bew = sub i64 %i.beu, %i.bev                 ; 2 uses
  %spec.store.select.i.i.i.i = call i64 @llvm.umin.i64(i64 %.sroa.06.1.i.i.i, i64 %i.bew) ; 5 uses
  %i.bex = load i32, ptr %i.nm, align 8, !alias.scope !44655, !noalias !44580, !noundef !177
  %i.bey = icmp slt i32 %i.bex, 0
  br i1 %i.bey, label %.loopexit217.i.i.i.i, label %bb.ml

bb.ml:                                            ; preds = %bb.mk
  %i.bez = load i32, ptr %i.od, align 4, !alias.scope !44655, !noalias !44580, !noundef !177
  %i.bfa = sext i32 %i.bez to i64
  %i.bfb = and i64 %i.bev, %i.bfa                 ; 4 uses
  %i.bfc = add i64 %i.bfb, %spec.store.select.i.i.i.i ; 3 uses
  %i.bfd = icmp ult i64 %i.bfc, %i.bfb
  %.not.i36.i.i.i = icmp ugt i64 %i.bfc, %.val112.i.i.i.i
  %or.cond.i37.i.i.i = or i1 %i.bfd, %.not.i36.i.i.i
  br i1 %or.cond.i37.i.i.i, label %bb.mn, label %bb.mm, !prof !206

bb.mm:                                            ; preds = %bb.ml
  %i.bfe = add nuw nsw i64 %spec.store.select.i.i.i.i, %.sroa.017.2.i.i.i ; 5 uses
  %i.bff = icmp ult i64 %i.bfe, 4097
  br i1 %i.bff, label %bb.mo, label %bb.mp, !prof !200

bb.mn:                                            ; preds = %bb.ml
  call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %i.bfb, i64 noundef %i.bfc, i64 noundef %.val112.i.i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @369) #62, !noalias !44656
  unreachable

bb.mo:                                            ; preds = %bb.mm
  %.val.i38.i.i.i = load ptr, ptr %.sroa.12.0..sroa_idx.i.i.i.i, align 8, !alias.scope !44655, !noalias !44580, !nonnull !177, !noundef !177
  %i.bfg = getelementptr inbounds nuw i8, ptr %.val.i38.i.i.i, i64 %i.bfb
  %i.bfh = getelementptr inbounds nuw i8, ptr %i.s, i64 %.sroa.017.2.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bfh, ptr nonnull readonly align 1 %i.bfg, i64 range(i64 0, -9223372036854775808) %spec.store.select.i.i.i.i, i1 false), !alias.scope !44657, !noalias !44658
  %i.bfi = sub nuw nsw i64 %.sroa.06.1.i.i.i, %spec.store.select.i.i.i.i ; 3 uses
  %i.bfj = add i64 %spec.store.select.i.i.i.i, %i.bev
  store i64 %i.bfj, ptr %i.oc, align 8, !alias.scope !44655, !noalias !44580
  %i.bfk = icmp ult i64 %.sroa.06.1.i.i.i, %i.bew
  br i1 %i.bfk, label %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode15WriteRingBufferNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB11_B11_ECsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i, label %bb.mq

bb.mp:                                            ; preds = %bb.mm
  call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %.sroa.017.2.i.i.i, i64 noundef %i.bfe, i64 noundef 4096, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @368) #62, !noalias !44656
  unreachable

bb.mq:                                            ; preds = %bb.mo
  %i.bfl = load i32, ptr %.sroa.102.0..sroa_idx.i.i.i.i, align 8, !alias.scope !44655, !noalias !44580, !noundef !177
  %i.bfm = and i32 %i.bfl, 31
  %i.bfn = shl nuw i32 1, %i.bfm
  %i.bfo = icmp ne i32 %i.beq, %i.bfn
  %.not18.i.i.i.i = icmp slt i32 %i.bep, %i.beq
  %or.cond21.i.i.i.i = or i1 %.not18.i.i.i.i, %i.bfo
  br i1 %or.cond21.i.i.i.i, label %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode15WriteRingBufferNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB11_B11_ECsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i, label %bb.mr

bb.mr:                                            ; preds = %bb.mq
  %i.bfp = sub i32 %i.bep, %i.beq
  store i32 %i.bfp, ptr %i.oa, align 8, !alias.scope !44655, !noalias !44580
  %i.bfq = add i64 %i.ber, 1
  store i64 %i.bfq, ptr %i.ob, align 8, !alias.scope !44655, !noalias !44580
  %i.bfr = icmp ne i32 %i.bep, %i.beq
  %i.bfs = zext i1 %i.bfr to i8
  store i8 %i.bfs, ptr %.sroa.122.0..sroa_idx.i.i.i.i, align 1, !alias.scope !44655, !noalias !44580
  br label %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode15WriteRingBufferNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB11_B11_ECsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i

_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode15WriteRingBufferNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB11_B11_ECsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i: ; preds = %bb.mr, %bb.mq, %bb.mo, %bb.mi
  %.sroa.017.12.i.i.i = phi i64 [ %.sroa.017.2.i.i.i, %bb.mi ], [ %i.bfe, %bb.mo ], [ %i.bfe, %bb.mr ], [ %i.bfe, %bb.mq ] ; 3 uses
  %.sroa.06.11.i.i.i = phi i64 [ %.sroa.06.1.i.i.i, %bb.mi ], [ %i.bfi, %bb.mo ], [ %i.bfi, %bb.mr ], [ %i.bfi, %bb.mq ] ; 3 uses
  %i.bft = load i32, ptr %i.nb, align 4, !alias.scope !44490, !noalias !44469, !noundef !177 ; 3 uses
  %i.bfu = icmp eq i32 %i.bft, 0
  br i1 %i.bfu, label %bb.ms, label %bb.mt

bb.ms:                                            ; preds = %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode15WriteRingBufferNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB11_B11_ECsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i
  %i.bfv = load i32, ptr %.sroa.32.0..sroa_idx.i.i.i.i, align 4, !alias.scope !44490, !noalias !44469, !noundef !177
  %i.bfw = zext i32 %i.bfv to i64                 ; 3 uses
  %i.bfx = load i32, ptr %.sroa.33.0..sroa_idx.i.i.i.i, align 8, !alias.scope !44490, !noalias !44469, !noundef !177 ; 2 uses
  %i.bfy = icmp eq i32 %i.bfx, 0
  br i1 %i.bfy, label %.thread203.i.i.i.i, label %.lr.ph472.preheader.i.i.i.i

.lr.ph472.preheader.i.i.i.i:                      ; preds = %bb.ms
  %i.bfz = zext i32 %i.bfx to i64
  %umax683.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.bfw, i64 4096) ; 2 uses
  br label %.lr.ph472.i.i.i.i

bb.mt:                                            ; preds = %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode15WriteRingBufferNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB11_B11_ECsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i
  %i.bga = load i32, ptr %.sroa.33.0..sroa_idx.i.i.i.i, align 8, !alias.scope !44490, !noalias !44469, !noundef !177
  %i.bgb = icmp eq i32 %i.bga, 0
  br i1 %i.bgb, label %bb.my, label %bb.mz

.lr.ph472.i.i.i.i:                                ; preds = %bb.mw, %.lr.ph472.preheader.i.i.i.i
  %i.bgc = phi i32 [ %i.bgk, %bb.mw ], [ 0, %.lr.ph472.preheader.i.i.i.i ] ; 2 uses
  %storemerge107470.i.i.i.i = phi i64 [ %i.bgm, %bb.mw ], [ %i.bfz, %.lr.ph472.preheader.i.i.i.i ]
  %i.bgd = phi i64 [ %i.bgl, %bb.mw ], [ %i.bfw, %.lr.ph472.preheader.i.i.i.i ] ; 3 uses
  %exitcond684.not.i.i.i.i = icmp eq i64 %i.bgd, %umax683.i.i.i.i
  br i1 %exitcond684.not.i.i.i.i, label %bb.mv, label %bb.mu

bb.mu:                                            ; preds = %.lr.ph472.i.i.i.i
  %i.bge = zext i32 %i.bgc to i64                 ; 2 uses
  %i.bgf = icmp ult i32 %i.bgc, 8
  br i1 %i.bgf, label %bb.mw, label %bb.mx

bb.mv:                                            ; preds = %.lr.ph472.i.i.i.i
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %umax683.i.i.i.i, i64 noundef 4096, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @392) #62, !noalias !44491
  unreachable

bb.mw:                                            ; preds = %bb.mu
  %i.bgg = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.bgd
  %i.bgh = load i8, ptr %i.bgg, align 1, !alias.scope !44659, !noalias !44464, !noundef !177
  %i.bgi = getelementptr inbounds nuw i8, ptr %.sroa.3444.0..sroa_idx.i.i.i.i, i64 %i.bge
  store i8 %i.bgh, ptr %i.bgi, align 1, !alias.scope !44490, !noalias !44469
  %i.bgj = load i32, ptr %i.nb, align 4, !alias.scope !44490, !noalias !44469, !noundef !177
  %i.bgk = add i32 %i.bgj, 1                      ; 2 uses
  store i32 %i.bgk, ptr %i.nb, align 4, !alias.scope !44490, !noalias !44469
  %i.bgl = add nuw nsw i64 %i.bgd, 1              ; 2 uses
  %i.bgm = add nsw i64 %storemerge107470.i.i.i.i, -1 ; 2 uses
  %i.bgn = icmp eq i64 %i.bgm, 0
  br i1 %i.bgn, label %.thread203.i.i.i.i, label %.lr.ph472.i.i.i.i

bb.mx:                                            ; preds = %bb.mu
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.bge, i64 noundef 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @393) #62, !noalias !44491
  unreachable

bb.my:                                            ; preds = %bb.mt
  store i32 0, ptr %i.nb, align 4, !alias.scope !44490, !noalias !44469
  %i.bgo = trunc nuw i64 %.sroa.011.2.i.i.i to i32
  store i32 %i.bgo, ptr %.sroa.33.0..sroa_idx.i.i.i.i, align 8, !alias.scope !44490, !noalias !44469
  %i.bgp = trunc i64 %.sroa.014.2.i.i.i to i32
  store i32 %i.bgp, ptr %.sroa.32.0..sroa_idx.i.i.i.i, align 4, !alias.scope !44490, !noalias !44469
  br label %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit.i.i.i.i.backedge

bb.mz:                                            ; preds = %bb.mt
  %i.bgq = icmp eq i64 %.sroa.011.2.i.i.i, 0
  br i1 %i.bgq, label %.thread203.i.i.i.i, label %bb.na

bb.na:                                            ; preds = %bb.mz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !44610
  %i.bgr = icmp ult i64 %.sroa.014.2.i.i.i, 4096
  br i1 %i.bgr, label %bb.nb, label %bb.nc

.loopexit217.i.i.i.i:                             ; preds = %bb.mk, %bb.nk, %bb.nj
  %.sroa.014.8.i.i.i = phi i64 [ %i.bhx, %bb.nj ], [ %.sroa.014.2.i.i.i, %bb.nk ], [ %.sroa.014.2.i.i.i, %bb.mk ]
  %.sroa.011.7.i.i.i = phi i64 [ %i.bhw, %bb.nj ], [ %.sroa.011.2.i.i.i, %bb.nk ], [ %.sroa.011.2.i.i.i, %bb.mk ]
  %.sroa.09.7.i.i.i.i = phi i32 [ %.sroa.09.1.i.i.i.i, %bb.nj ], [ %.sroa.09.1.i.i.i.i, %bb.nk ], [ -9, %bb.mk ] ; 3 uses
  store i32 %.sroa.09.7.i.i.i.i, ptr %.sroa.104.0..sroa_idx.i.i.i.i, align 8, !alias.scope !44490, !noalias !44469
  %switch.tableidx.i.i.i.i = add nsw i32 %.sroa.09.7.i.i.i.i, -1
  %i.bgs = icmp ult i32 %switch.tableidx.i.i.i.i, 3
  %spec.select.i.i.i.i = select i1 %i.bgs, i32 %.sroa.09.7.i.i.i.i, i32 0
  br label %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode22BrotliDecompressStreamNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB18_B18_ECsgZAIVb0XKpv_9ssservice.exit.i.i.i

bb.nb:                                            ; preds = %bb.na
  %i.bgt = getelementptr inbounds nuw i8, ptr %i.t, i64 %.sroa.014.2.i.i.i
  %i.bgu = load i8, ptr %i.bgt, align 1, !alias.scope !44659, !noalias !44464, !noundef !177 ; 3 uses
  store i8 %i.bgu, ptr %i.o, align 1, !noalias !44610
  %i.bgv = zext i32 %i.bft to i64                 ; 2 uses
  %i.bgw = icmp ult i32 %i.bft, 8
  br i1 %i.bgw, label %bb.nd, label %bb.ne

bb.nc:                                            ; preds = %bb.na
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %.sroa.014.2.i.i.i, i64 noundef 4096, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @394) #62, !noalias !44491
  unreachable

bb.nd:                                            ; preds = %bb.nb
  %i.bgx = getelementptr inbounds nuw i8, ptr %.sroa.3444.0..sroa_idx.i.i.i.i, i64 %i.bgv
  store i8 %i.bgu, ptr %i.bgx, align 1, !alias.scope !44490, !noalias !44469
  %i.bgy = load i32, ptr %i.nb, align 4, !alias.scope !44490, !noalias !44469, !noundef !177 ; 3 uses
  %i.bgz = zext i32 %i.bgy to i64                 ; 3 uses
  %i.bha = icmp ult i32 %i.bgy, 8
  br i1 %i.bha, label %bb.nf, label %bb.ng

bb.ne:                                            ; preds = %bb.nb
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.bgv, i64 noundef 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @395) #62, !noalias !44491
  unreachable

bb.nf:                                            ; preds = %bb.nd
  %i.bhb = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.bgz
  %i.bhc = load i8, ptr %i.bhb, align 1, !noalias !44610, !noundef !177
  %i.bhd = icmp eq i8 %i.bhc, %i.bgu
  br i1 %i.bhd, label %bb.ni, label %bb.nh, !prof !191

bb.ng:                                            ; preds = %bb.nd
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.bgz, i64 noundef 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @396) #62, !noalias !44491
  unreachable

bb.nh:                                            ; preds = %bb.nf
  %i.bhe = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.bgz
  call void @_RINvNtCsf3Ta7LF998c_4core9panicking13assert_failedhhECs3Cy1ix4llLu_12aho_corasick(i8 noundef 0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.bhe, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.o, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @397) #62, !noalias !44491
  unreachable

bb.ni:                                            ; preds = %bb.nf
  %i.bhf = add nuw nsw i32 %i.bgy, 1              ; 2 uses
  store i32 %i.bhf, ptr %i.nb, align 4, !alias.scope !44490, !noalias !44469
  store i32 %i.bhf, ptr %.sroa.33.0..sroa_idx.i.i.i.i, align 8, !alias.scope !44490, !noalias !44469
  %i.bhg = add nuw nsw i64 %.sroa.014.2.i.i.i, 1
  %i.bhh = add nsw i64 %.sroa.011.2.i.i.i, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !44610
  br label %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit.i.i.i.i.backedge

_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit.i.i.i.i.backedge: ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i147.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2D0wXkiOfwW_12alloc_stdlib10heap_alloc7WrapBoxNtNtCsl4v216RJbSI_19brotli_decompressor7huffman11HuffmanCodeEECsgZAIVb0XKpv_9ssservice.exit157.i.i.i.i, %bb.gh, %bb.gv, %bb.he, %bb.hf, %.loopexit211.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2D0wXkiOfwW_12alloc_stdlib10heap_alloc7WrapBoxhEECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i, %bb.je, %bb.jy, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2D0wXkiOfwW_12alloc_stdlib10heap_alloc7WrapBoxNtNtCsl4v216RJbSI_19brotli_decompressor7huffman11HuffmanCodeEECsgZAIVb0XKpv_9ssservice.exit181.i.i.i.i, %bb.lr, %.lr.ph.i174.preheader.i.i.i.i, %bb.ey, %bb.ff, %.loopexit.i105.i.i.i, %.loopexit83.i.i.i.i, %bb.ni, %bb.my, %bb.me, %bb.ma, %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode22PrepareLiteralDecodingNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB18_B18_ECsgZAIVb0XKpv_9ssservice.exit.i.i, %bb.kr, %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode28SafeReadBlockLengthFromIndexNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocECsgZAIVb0XKpv_9ssservice.exit.i.i.i, %bb.ki, %bb.kf, %bb.jx, %bb.jv, %bb.ju, %bb.jt, %bb.jr, %bb.jq, %bb.jp, %bb.jb, %._crit_edge.i.i.i.i65, %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode29CopyUncompressedBlockToOutputNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB1f_B1f_ECsgZAIVb0XKpv_9ssservice.exit.i.i.i, %bb.ix, %bb.is, %bb.ir, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2D0wXkiOfwW_12alloc_stdlib10heap_alloc7WrapBoxhEECsgZAIVb0XKpv_9ssservice.exit.i.i.i, %bb.hp, %bb.ho, %bb.hn, %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode22HuffmanTreeGroupDecodeNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB18_B18_ECsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2D0wXkiOfwW_12alloc_stdlib10heap_alloc7WrapBoxmEECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i, %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode22HuffmanTreeGroupDecodeNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB18_B18_ECsgZAIVb0XKpv_9ssservice.exit.thread55.i.i.i, %bb.ga, %bb.ft, %bb.fq, %bb.ev, %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode16ReadContextModesNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB12_B12_ECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i, %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode21DecodeMetaBlockLengthNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB17_B17_ECsgZAIVb0XKpv_9ssservice.exit.thread.sink.split.i.i.i, %.loopexit91.i.i.i.i, %bb.eh, %.lr.ph.i57.preheader.i.i.i.i, %.lr.ph.i47.preheader.i.i.i.i, %.lr.ph.i37.preheader.i.i.i.i, %.lr.ph.i27.preheader.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i
  %.sroa.017.2.i.i.i.be = phi i64 [ %.sroa.017.2.i.i.i, %.lr.ph.i27.preheader.i.i.i.i ], [ %.sroa.017.2.i.i.i, %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode22PrepareLiteralDecodingNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB18_B18_ECsgZAIVb0XKpv_9ssservice.exit.i.i ], [ %.sroa.017.2.i.i.i, %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode22HuffmanTreeGroupDecodeNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB18_B18_ECsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i ], [ %.sroa.017.2.i.i.i, %bb.ki ], [ %.sroa.017.2.i.i.i, %bb.kr ], [ %.sroa.017.2.i.i.i, %bb.hp ], [ %.sroa.017.2.i.i.i, %bb.ir ], [ %.sroa.017.2.i.i.i, %bb.is ], [ %.sroa.017.2.i.i.i, %.lr.ph.i.preheader.i.i.i.i ], [ %.sroa.017.2.i.i.i, %bb.ho ], [ %.sroa.017.2.i.i.i, %bb.hn ], [ %.sroa.017.2.i.i.i, %.lr.ph.i57.preheader.i.i.i.i ], [ %.sroa.017.12.i.i.i, %bb.my ], [ %.sroa.017.2.i.i.i, %bb.ft ], [ %.sroa.017.2.i.i.i, %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode16ReadContextModesNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB12_B12_ECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i ], [ %.sroa.017.2.i.i.i, %bb.ix ], [ %.sroa.017.2.i.i.i, %bb.ev ], [ %.sroa.017.4.i.i.i, %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode29CopyUncompressedBlockToOutputNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB1f_B1f_ECsgZAIVb0XKpv_9ssservice.exit.i.i.i ], [ %.sroa.017.2.i.i.i, %bb.ma ], [ %.sroa.017.2.i.i.i, %bb.eh ], [ %.sroa.017.2.i.i.i, %._crit_edge.i.i.i.i65 ], [ %.sroa.017.2.i.i.i, %bb.jb ], [ %.sroa.017.2.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2D0wXkiOfwW_12alloc_stdlib10heap_alloc7WrapBoxmEECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i ], [ %i.ais, %bb.jv ], [ %i.ais, %bb.ju ], [ %i.ais, %bb.jt ], [ %i.ais, %bb.jr ], [ %i.ais, %bb.jq ], [ %i.ais, %bb.jp ], [ %.sroa.017.12.i.i.i, %bb.ni ], [ %.sroa.017.2.i.i.i, %bb.jx ], [ %.sroa.017.2.i.i.i, %bb.kf ], [ %.sroa.017.2.i.i.i, %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode28SafeReadBlockLengthFromIndexNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocECsgZAIVb0XKpv_9ssservice.exit.i.i.i ], [ %i.ais, %bb.ga ], [ %i.bdx, %bb.me ], [ %.sroa.017.2.i.i.i, %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode22HuffmanTreeGroupDecodeNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB18_B18_ECsgZAIVb0XKpv_9ssservice.exit.thread55.i.i.i ], [ %.sroa.017.4.i.i.i, %bb.fq ], [ %.sroa.017.2.i.i.i, %.loopexit.i105.i.i.i ], [ %.sroa.017.2.i.i.i, %.lr.ph.i47.preheader.i.i.i.i ], [ %.sroa.017.2.i.i.i, %.lr.ph.i37.preheader.i.i.i.i ], [ %.sroa.017.2.i.i.i, %.loopexit83.i.i.i.i ], [ %.sroa.017.2.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2D0wXkiOfwW_12alloc_stdlib10heap_alloc7WrapBoxhEECsgZAIVb0XKpv_9ssservice.exit.i.i.i ], [ %.sroa.017.2.i.i.i, %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode21DecodeMetaBlockLengthNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB17_B17_ECsgZAIVb0XKpv_9ssservice.exit.thread.sink.split.i.i.i ], [ %.sroa.017.2.i.i.i, %.lr.ph.i174.preheader.i.i.i.i ], [ %.sroa.017.2.i.i.i, %.loopexit91.i.i.i.i ], [ %i.aeq, %bb.ff ], [ %.sroa.017.4.i.i.i, %bb.ey ], [ %.sroa.017.2.i.i.i, %bb.lr ], [ %.sroa.017.2.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2D0wXkiOfwW_12alloc_stdlib10heap_alloc7WrapBoxNtNtCsl4v216RJbSI_19brotli_decompressor7huffman11HuffmanCodeEECsgZAIVb0XKpv_9ssservice.exit181.i.i.i.i ], [ %.sroa.017.2.i.i.i, %bb.jy ], [ %.sroa.017.2.i.i.i, %bb.je ], [ %.sroa.017.2.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2D0wXkiOfwW_12alloc_stdlib10heap_alloc7WrapBoxhEECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i ], [ %.sroa.017.2.i.i.i, %.loopexit211.i.i.i.i ], [ %.sroa.017.2.i.i.i, %bb.hf ], [ %.sroa.017.2.i.i.i, %bb.he ], [ %.sroa.017.2.i.i.i, %bb.gv ], [ %.sroa.017.2.i.i.i, %bb.gh ], [ %.sroa.017.2.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2D0wXkiOfwW_12alloc_stdlib10heap_alloc7WrapBoxNtNtCsl4v216RJbSI_19brotli_decompressor7huffman11HuffmanCodeEECsgZAIVb0XKpv_9ssservice.exit157.i.i.i.i ], [ %.sroa.017.2.i.i.i, %.lr.ph.i147.i.i.i.i ], [ %.sroa.017.2.i.i.i, %.lr.ph.i.i.i.i.i ]
  %.sroa.014.2.i.i.i.be = phi i64 [ %.sroa.014.3.i.i.i, %.lr.ph.i27.preheader.i.i.i.i ], [ %.sroa.014.3.i.i.i, %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode22PrepareLiteralDecodingNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB18_B18_ECsgZAIVb0XKpv_9ssservice.exit.i.i ], [ %.sroa.014.3.i.i.i, %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode22HuffmanTreeGroupDecodeNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB18_B18_ECsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i ], [ %.sroa.014.3.i.i.i, %bb.ki ], [ %.sroa.014.3.i.i.i, %bb.kr ], [ %.sroa.014.3.i.i.i, %bb.hp ], [ %.sroa.014.3.i.i.i, %bb.ir ], [ %.sroa.014.3.i.i.i, %bb.is ], [ %.sroa.014.3.i.i.i, %.lr.ph.i.preheader.i.i.i.i ], [ %.sroa.014.3.i.i.i, %bb.ho ], [ %.sroa.014.3.i.i.i, %bb.hn ], [ %.sroa.014.3.i.i.i, %.lr.ph.i57.preheader.i.i.i.i ], [ %.sroa.014.2.i.i.i, %bb.my ], [ %.sroa.014.3.i.i.i, %bb.ft ], [ %.sroa.014.3.i.i.i, %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode16ReadContextModesNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB12_B12_ECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i ], [ %.sroa.014.3.i.i.i, %bb.ix ], [ %.sroa.014.3.i.i.i, %bb.ev ], [ %.sroa.014.3.i.i.i, %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode29CopyUncompressedBlockToOutputNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB1f_B1f_ECsgZAIVb0XKpv_9ssservice.exit.i.i.i ], [ %.sroa.014.3.i.i.i, %bb.ma ], [ %.sroa.014.3.i.i.i, %bb.eh ], [ %.sroa.014.3.i.i.i, %._crit_edge.i.i.i.i65 ], [ %.sroa.014.3.i.i.i, %bb.jb ], [ %.sroa.014.3.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2D0wXkiOfwW_12alloc_stdlib10heap_alloc7WrapBoxmEECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i ], [ %.sroa.014.3.i.i.i, %bb.jv ], [ %.sroa.014.3.i.i.i, %bb.ju ], [ %.sroa.014.3.i.i.i, %bb.jt ], [ %.sroa.014.3.i.i.i, %bb.jr ], [ %.sroa.014.3.i.i.i, %bb.jq ], [ %.sroa.014.3.i.i.i, %bb.jp ], [ %i.bhg, %bb.ni ], [ %.sroa.014.3.i.i.i, %bb.jx ], [ %.sroa.014.3.i.i.i, %bb.kf ], [ %.sroa.014.3.i.i.i, %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode28SafeReadBlockLengthFromIndexNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocECsgZAIVb0XKpv_9ssservice.exit.i.i.i ], [ %.sroa.014.3.i.i.i, %bb.ga ], [ %.sroa.014.3.i.i.i, %bb.me ], [ %.sroa.014.3.i.i.i, %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode22HuffmanTreeGroupDecodeNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB18_B18_ECsgZAIVb0XKpv_9ssservice.exit.thread55.i.i.i ], [ %.sroa.014.3.i.i.i, %bb.fq ], [ %.sroa.014.3.i.i.i, %.loopexit.i105.i.i.i ], [ %.sroa.014.3.i.i.i, %.lr.ph.i47.preheader.i.i.i.i ], [ %.sroa.014.3.i.i.i, %.lr.ph.i37.preheader.i.i.i.i ], [ %.sroa.014.3.i.i.i, %.loopexit83.i.i.i.i ], [ %.sroa.014.3.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2D0wXkiOfwW_12alloc_stdlib10heap_alloc7WrapBoxhEECsgZAIVb0XKpv_9ssservice.exit.i.i.i ], [ %.sroa.014.3.i.i.i, %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode21DecodeMetaBlockLengthNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB17_B17_ECsgZAIVb0XKpv_9ssservice.exit.thread.sink.split.i.i.i ], [ %.sroa.014.3.i.i.i, %.lr.ph.i174.preheader.i.i.i.i ], [ %.sroa.014.3.i.i.i, %.loopexit91.i.i.i.i ], [ %.sroa.014.3.i.i.i, %bb.ey ], [ %.sroa.014.3.i.i.i, %bb.ff ], [ %.sroa.014.3.i.i.i, %bb.lr ], [ %.sroa.014.3.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2D0wXkiOfwW_12alloc_stdlib10heap_alloc7WrapBoxNtNtCsl4v216RJbSI_19brotli_decompressor7huffman11HuffmanCodeEECsgZAIVb0XKpv_9ssservice.exit181.i.i.i.i ], [ %.sroa.014.3.i.i.i, %bb.jy ], [ %.sroa.014.3.i.i.i, %bb.je ], [ %.sroa.014.3.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2D0wXkiOfwW_12alloc_stdlib10heap_alloc7WrapBoxhEECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i ], [ %.sroa.014.3.i.i.i, %.loopexit211.i.i.i.i ], [ %.sroa.014.3.i.i.i, %bb.hf ], [ %.sroa.014.3.i.i.i, %bb.he ], [ %.sroa.014.3.i.i.i, %bb.gv ], [ %.sroa.014.3.i.i.i, %bb.gh ], [ %.sroa.014.3.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2D0wXkiOfwW_12alloc_stdlib10heap_alloc7WrapBoxNtNtCsl4v216RJbSI_19brotli_decompressor7huffman11HuffmanCodeEECsgZAIVb0XKpv_9ssservice.exit157.i.i.i.i ], [ %.sroa.014.3.i.i.i, %.lr.ph.i147.i.i.i.i ], [ %.sroa.014.3.i.i.i, %.lr.ph.i.i.i.i.i ]
  %.sroa.011.2.i.i.i.be = phi i64 [ %.sroa.011.3.i.i.i, %.lr.ph.i27.preheader.i.i.i.i ], [ %.sroa.011.3.i.i.i, %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode22PrepareLiteralDecodingNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB18_B18_ECsgZAIVb0XKpv_9ssservice.exit.i.i ], [ %.sroa.011.3.i.i.i, %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode22HuffmanTreeGroupDecodeNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB18_B18_ECsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i ], [ %.sroa.011.3.i.i.i, %bb.ki ], [ %.sroa.011.3.i.i.i, %bb.kr ], [ %.sroa.011.3.i.i.i, %bb.hp ], [ %.sroa.011.3.i.i.i, %bb.ir ], [ %.sroa.011.3.i.i.i, %bb.is ], [ %.sroa.011.3.i.i.i, %.lr.ph.i.preheader.i.i.i.i ], [ %.sroa.011.3.i.i.i, %bb.ho ], [ %.sroa.011.3.i.i.i, %bb.hn ], [ %.sroa.011.3.i.i.i, %.lr.ph.i57.preheader.i.i.i.i ], [ %.sroa.011.2.i.i.i, %bb.my ], [ %.sroa.011.3.i.i.i, %bb.ft ], [ %.sroa.011.3.i.i.i, %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode16ReadContextModesNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB12_B12_ECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i ], [ %.sroa.011.3.i.i.i, %bb.ix ], [ %.sroa.011.3.i.i.i, %bb.ev ], [ %.sroa.011.3.i.i.i, %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode29CopyUncompressedBlockToOutputNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB1f_B1f_ECsgZAIVb0XKpv_9ssservice.exit.i.i.i ], [ %.sroa.011.3.i.i.i, %bb.ma ], [ %.sroa.011.3.i.i.i, %bb.eh ], [ %.sroa.011.3.i.i.i, %._crit_edge.i.i.i.i65 ], [ %.sroa.011.3.i.i.i, %bb.jb ], [ %.sroa.011.3.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2D0wXkiOfwW_12alloc_stdlib10heap_alloc7WrapBoxmEECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i ], [ %.sroa.011.3.i.i.i, %bb.jv ], [ %.sroa.011.3.i.i.i, %bb.ju ], [ %.sroa.011.3.i.i.i, %bb.jt ], [ %.sroa.011.3.i.i.i, %bb.jr ], [ %.sroa.011.3.i.i.i, %bb.jq ], [ %.sroa.011.3.i.i.i, %bb.jp ], [ %i.bhh, %bb.ni ], [ %.sroa.011.3.i.i.i, %bb.jx ], [ %.sroa.011.3.i.i.i, %bb.kf ], [ %.sroa.011.3.i.i.i, %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode28SafeReadBlockLengthFromIndexNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocECsgZAIVb0XKpv_9ssservice.exit.i.i.i ], [ %.sroa.011.3.i.i.i, %bb.ga ], [ %.sroa.011.3.i.i.i, %bb.me ], [ %.sroa.011.3.i.i.i, %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode22HuffmanTreeGroupDecodeNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB18_B18_ECsgZAIVb0XKpv_9ssservice.exit.thread55.i.i.i ], [ %.sroa.011.3.i.i.i, %bb.fq ], [ %.sroa.011.3.i.i.i, %.loopexit.i105.i.i.i ], [ %.sroa.011.3.i.i.i, %.lr.ph.i47.preheader.i.i.i.i ], [ %.sroa.011.3.i.i.i, %.lr.ph.i37.preheader.i.i.i.i ], [ %.sroa.011.3.i.i.i, %.loopexit83.i.i.i.i ], [ %.sroa.011.3.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2D0wXkiOfwW_12alloc_stdlib10heap_alloc7WrapBoxhEECsgZAIVb0XKpv_9ssservice.exit.i.i.i ], [ %.sroa.011.3.i.i.i, %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode21DecodeMetaBlockLengthNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB17_B17_ECsgZAIVb0XKpv_9ssservice.exit.thread.sink.split.i.i.i ], [ %.sroa.011.3.i.i.i, %.lr.ph.i174.preheader.i.i.i.i ], [ %.sroa.011.3.i.i.i, %.loopexit91.i.i.i.i ], [ %.sroa.011.3.i.i.i, %bb.ey ], [ %.sroa.011.3.i.i.i, %bb.ff ], [ %.sroa.011.3.i.i.i, %bb.lr ], [ %.sroa.011.3.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2D0wXkiOfwW_12alloc_stdlib10heap_alloc7WrapBoxNtNtCsl4v216RJbSI_19brotli_decompressor7huffman11HuffmanCodeEECsgZAIVb0XKpv_9ssservice.exit181.i.i.i.i ], [ %.sroa.011.3.i.i.i, %bb.jy ], [ %.sroa.011.3.i.i.i, %bb.je ], [ %.sroa.011.3.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2D0wXkiOfwW_12alloc_stdlib10heap_alloc7WrapBoxhEECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i ], [ %.sroa.011.3.i.i.i, %.loopexit211.i.i.i.i ], [ %.sroa.011.3.i.i.i, %bb.hf ], [ %.sroa.011.3.i.i.i, %bb.he ], [ %.sroa.011.3.i.i.i, %bb.gv ], [ %.sroa.011.3.i.i.i, %bb.gh ], [ %.sroa.011.3.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2D0wXkiOfwW_12alloc_stdlib10heap_alloc7WrapBoxNtNtCsl4v216RJbSI_19brotli_decompressor7huffman11HuffmanCodeEECsgZAIVb0XKpv_9ssservice.exit157.i.i.i.i ], [ %.sroa.011.3.i.i.i, %.lr.ph.i147.i.i.i.i ], [ %.sroa.011.3.i.i.i, %.lr.ph.i.i.i.i.i ]
  %.sroa.06.1.i.i.i.be = phi i64 [ %.sroa.06.1.i.i.i, %.lr.ph.i27.preheader.i.i.i.i ], [ %.sroa.06.1.i.i.i, %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode22PrepareLiteralDecodingNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB18_B18_ECsgZAIVb0XKpv_9ssservice.exit.i.i ], [ %.sroa.06.1.i.i.i, %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode22HuffmanTreeGroupDecodeNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB18_B18_ECsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i ], [ %.sroa.06.1.i.i.i, %bb.ki ], [ %.sroa.06.1.i.i.i, %bb.kr ], [ %.sroa.06.1.i.i.i, %bb.hp ], [ %.sroa.06.1.i.i.i, %bb.ir ], [ %.sroa.06.1.i.i.i, %bb.is ], [ %.sroa.06.1.i.i.i, %.lr.ph.i.preheader.i.i.i.i ], [ %.sroa.06.1.i.i.i, %bb.ho ], [ %.sroa.06.1.i.i.i, %bb.hn ], [ %.sroa.06.1.i.i.i, %.lr.ph.i57.preheader.i.i.i.i ], [ %.sroa.06.11.i.i.i, %bb.my ], [ %.sroa.06.1.i.i.i, %bb.ft ], [ %.sroa.06.1.i.i.i, %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode16ReadContextModesNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB12_B12_ECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i ], [ %.sroa.06.1.i.i.i, %bb.ix ], [ %.sroa.06.1.i.i.i, %bb.ev ], [ %.sroa.06.3.i.i.i, %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode29CopyUncompressedBlockToOutputNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB1f_B1f_ECsgZAIVb0XKpv_9ssservice.exit.i.i.i ], [ %.sroa.06.1.i.i.i, %bb.ma ], [ %.sroa.06.1.i.i.i, %bb.eh ], [ %.sroa.06.1.i.i.i, %._crit_edge.i.i.i.i65 ], [ %.sroa.06.1.i.i.i, %bb.jb ], [ %.sroa.06.1.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2D0wXkiOfwW_12alloc_stdlib10heap_alloc7WrapBoxmEECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i ], [ %i.aiw, %bb.jv ], [ %i.aiw, %bb.ju ], [ %i.aiw, %bb.jt ], [ %i.aiw, %bb.jr ], [ %i.aiw, %bb.jq ], [ %i.aiw, %bb.jp ], [ %.sroa.06.11.i.i.i, %bb.ni ], [ %.sroa.06.1.i.i.i, %bb.jx ], [ %.sroa.06.1.i.i.i, %bb.kf ], [ %.sroa.06.1.i.i.i, %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode28SafeReadBlockLengthFromIndexNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocECsgZAIVb0XKpv_9ssservice.exit.i.i.i ], [ %i.aiw, %bb.ga ], [ %i.beb, %bb.me ], [ %.sroa.06.1.i.i.i, %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode22HuffmanTreeGroupDecodeNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB18_B18_ECsgZAIVb0XKpv_9ssservice.exit.thread55.i.i.i ], [ %.sroa.06.3.i.i.i, %bb.fq ], [ %.sroa.06.1.i.i.i, %.loopexit.i105.i.i.i ], [ %.sroa.06.1.i.i.i, %.lr.ph.i47.preheader.i.i.i.i ], [ %.sroa.06.1.i.i.i, %.lr.ph.i37.preheader.i.i.i.i ], [ %.sroa.06.1.i.i.i, %.loopexit83.i.i.i.i ], [ %.sroa.06.1.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2D0wXkiOfwW_12alloc_stdlib10heap_alloc7WrapBoxhEECsgZAIVb0XKpv_9ssservice.exit.i.i.i ], [ %.sroa.06.1.i.i.i, %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode21DecodeMetaBlockLengthNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB17_B17_ECsgZAIVb0XKpv_9ssservice.exit.thread.sink.split.i.i.i ], [ %.sroa.06.1.i.i.i, %.lr.ph.i174.preheader.i.i.i.i ], [ %.sroa.06.1.i.i.i, %.loopexit91.i.i.i.i ], [ %i.aeu, %bb.ff ], [ %.sroa.06.3.i.i.i, %bb.ey ], [ %.sroa.06.1.i.i.i, %bb.lr ], [ %.sroa.06.1.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2D0wXkiOfwW_12alloc_stdlib10heap_alloc7WrapBoxNtNtCsl4v216RJbSI_19brotli_decompressor7huffman11HuffmanCodeEECsgZAIVb0XKpv_9ssservice.exit181.i.i.i.i ], [ %.sroa.06.1.i.i.i, %bb.jy ], [ %.sroa.06.1.i.i.i, %bb.je ], [ %.sroa.06.1.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2D0wXkiOfwW_12alloc_stdlib10heap_alloc7WrapBoxhEECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i ], [ %.sroa.06.1.i.i.i, %.loopexit211.i.i.i.i ], [ %.sroa.06.1.i.i.i, %bb.hf ], [ %.sroa.06.1.i.i.i, %bb.he ], [ %.sroa.06.1.i.i.i, %bb.gv ], [ %.sroa.06.1.i.i.i, %bb.gh ], [ %.sroa.06.1.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2D0wXkiOfwW_12alloc_stdlib10heap_alloc7WrapBoxNtNtCsl4v216RJbSI_19brotli_decompressor7huffman11HuffmanCodeEECsgZAIVb0XKpv_9ssservice.exit157.i.i.i.i ], [ %.sroa.06.1.i.i.i, %.lr.ph.i147.i.i.i.i ], [ %.sroa.06.1.i.i.i, %.lr.ph.i.i.i.i.i ]
  %.sroa.21.1.i.i.i.i.be = phi i64 [ %.sroa.21.1.i.i.i.i, %.lr.ph.i27.preheader.i.i.i.i ], [ %.sroa.21.1.i.i.i.i, %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode22PrepareLiteralDecodingNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB18_B18_ECsgZAIVb0XKpv_9ssservice.exit.i.i ], [ %.sroa.21.1.i.i.i.i, %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode22HuffmanTreeGroupDecodeNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB18_B18_ECsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i ], [ %.sroa.21.1.i.i.i.i, %bb.ki ], [ %.sroa.21.1.i.i.i.i, %bb.kr ], [ %.sroa.21.1.i.i.i.i, %bb.hp ], [ %.sroa.21.1.i.i.i.i, %bb.ir ], [ %.sroa.21.1.i.i.i.i, %bb.is ], [ %.sroa.21.1.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i ], [ %.sroa.21.1.i.i.i.i, %bb.ho ], [ %.sroa.21.1.i.i.i.i, %bb.hn ], [ %.sroa.21.1.i.i.i.i, %.lr.ph.i57.preheader.i.i.i.i ], [ 4096, %bb.my ], [ %.sroa.21.1.i.i.i.i, %bb.ft ], [ %.sroa.21.1.i.i.i.i, %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode16ReadContextModesNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB12_B12_ECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i ], [ %.sroa.21.1.i.i.i.i, %bb.ix ], [ %.sroa.21.1.i.i.i.i, %bb.ev ], [ %.sroa.21.1.i.i.i.i, %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode29CopyUncompressedBlockToOutputNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB1f_B1f_ECsgZAIVb0XKpv_9ssservice.exit.i.i.i ], [ %.sroa.21.1.i.i.i.i, %bb.ma ], [ %.sroa.21.1.i.i.i.i, %bb.eh ], [ %.sroa.21.1.i.i.i.i, %._crit_edge.i.i.i.i65 ], [ %.sroa.21.1.i.i.i.i, %bb.jb ], [ %.sroa.21.1.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2D0wXkiOfwW_12alloc_stdlib10heap_alloc7WrapBoxmEECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i ], [ %.sroa.21.1.i.i.i.i, %bb.jv ], [ %.sroa.21.1.i.i.i.i, %bb.ju ], [ %.sroa.21.1.i.i.i.i, %bb.jt ], [ %.sroa.21.1.i.i.i.i, %bb.jr ], [ %.sroa.21.1.i.i.i.i, %bb.jq ], [ %.sroa.21.1.i.i.i.i, %bb.jp ], [ %.sroa.21.1.i.i.i.i, %bb.ni ], [ %.sroa.21.1.i.i.i.i, %bb.jx ], [ %.sroa.21.1.i.i.i.i, %bb.kf ], [ %.sroa.21.1.i.i.i.i, %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode28SafeReadBlockLengthFromIndexNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocECsgZAIVb0XKpv_9ssservice.exit.i.i.i ], [ %.sroa.21.1.i.i.i.i, %bb.ga ], [ %.sroa.21.1.i.i.i.i, %bb.me ], [ %.sroa.21.1.i.i.i.i, %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode22HuffmanTreeGroupDecodeNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB18_B18_ECsgZAIVb0XKpv_9ssservice.exit.thread55.i.i.i ], [ %.sroa.21.1.i.i.i.i, %bb.fq ], [ %.sroa.21.1.i.i.i.i, %.loopexit.i105.i.i.i ], [ %.sroa.21.1.i.i.i.i, %.lr.ph.i47.preheader.i.i.i.i ], [ %.sroa.21.1.i.i.i.i, %.lr.ph.i37.preheader.i.i.i.i ], [ %.sroa.21.1.i.i.i.i, %.loopexit83.i.i.i.i ], [ %.sroa.21.1.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2D0wXkiOfwW_12alloc_stdlib10heap_alloc7WrapBoxhEECsgZAIVb0XKpv_9ssservice.exit.i.i.i ], [ %.sroa.21.1.i.i.i.i, %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode21DecodeMetaBlockLengthNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB17_B17_ECsgZAIVb0XKpv_9ssservice.exit.thread.sink.split.i.i.i ], [ %.sroa.21.1.i.i.i.i, %.lr.ph.i174.preheader.i.i.i.i ], [ %.sroa.21.1.i.i.i.i, %.loopexit91.i.i.i.i ], [ %.sroa.21.1.i.i.i.i, %bb.ey ], [ %.sroa.21.1.i.i.i.i, %bb.ff ], [ %.sroa.21.1.i.i.i.i, %bb.lr ], [ %.sroa.21.1.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2D0wXkiOfwW_12alloc_stdlib10heap_alloc7WrapBoxNtNtCsl4v216RJbSI_19brotli_decompressor7huffman11HuffmanCodeEECsgZAIVb0XKpv_9ssservice.exit181.i.i.i.i ], [ %.sroa.21.1.i.i.i.i, %bb.jy ], [ %.sroa.21.1.i.i.i.i, %bb.je ], [ %.sroa.21.1.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2D0wXkiOfwW_12alloc_stdlib10heap_alloc7WrapBoxhEECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i ], [ %.sroa.21.1.i.i.i.i, %.loopexit211.i.i.i.i ], [ %.sroa.21.1.i.i.i.i, %bb.hf ], [ %.sroa.21.1.i.i.i.i, %bb.he ], [ %.sroa.21.1.i.i.i.i, %bb.gv ], [ %.sroa.21.1.i.i.i.i, %bb.gh ], [ %.sroa.21.1.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2D0wXkiOfwW_12alloc_stdlib10heap_alloc7WrapBoxNtNtCsl4v216RJbSI_19brotli_decompressor7huffman11HuffmanCodeEECsgZAIVb0XKpv_9ssservice.exit157.i.i.i.i ], [ %.sroa.21.1.i.i.i.i, %.lr.ph.i147.i.i.i.i ], [ %.sroa.21.1.i.i.i.i, %.lr.ph.i.i.i.i.i ]
  %.sroa.029.1.i.i.i.i.be = phi ptr [ %.sroa.029.1.i.i.i.i, %.lr.ph.i27.preheader.i.i.i.i ], [ %.sroa.029.1.i.i.i.i, %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode22PrepareLiteralDecodingNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB18_B18_ECsgZAIVb0XKpv_9ssservice.exit.i.i ], [ %.sroa.029.1.i.i.i.i, %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode22HuffmanTreeGroupDecodeNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB18_B18_ECsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i ], [ %.sroa.029.1.i.i.i.i, %bb.ki ], [ %.sroa.029.1.i.i.i.i, %bb.kr ], [ %.sroa.029.1.i.i.i.i, %bb.hp ], [ %.sroa.029.1.i.i.i.i, %bb.ir ], [ %.sroa.029.1.i.i.i.i, %bb.is ], [ %.sroa.029.1.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i ], [ %.sroa.029.1.i.i.i.i, %bb.ho ], [ %.sroa.029.1.i.i.i.i, %bb.hn ], [ %.sroa.029.1.i.i.i.i, %.lr.ph.i57.preheader.i.i.i.i ], [ %i.t, %bb.my ], [ %.sroa.029.1.i.i.i.i, %bb.ft ], [ %.sroa.029.1.i.i.i.i, %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode16ReadContextModesNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB12_B12_ECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i ], [ %.sroa.029.1.i.i.i.i, %bb.ix ], [ %.sroa.029.1.i.i.i.i, %bb.ev ], [ %.sroa.029.1.i.i.i.i, %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode29CopyUncompressedBlockToOutputNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB1f_B1f_ECsgZAIVb0XKpv_9ssservice.exit.i.i.i ], [ %.sroa.029.1.i.i.i.i, %bb.ma ], [ %.sroa.029.1.i.i.i.i, %bb.eh ], [ %.sroa.029.1.i.i.i.i, %._crit_edge.i.i.i.i65 ], [ %.sroa.029.1.i.i.i.i, %bb.jb ], [ %.sroa.029.1.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2D0wXkiOfwW_12alloc_stdlib10heap_alloc7WrapBoxmEECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i ], [ %.sroa.029.1.i.i.i.i, %bb.jv ], [ %.sroa.029.1.i.i.i.i, %bb.ju ], [ %.sroa.029.1.i.i.i.i, %bb.jt ], [ %.sroa.029.1.i.i.i.i, %bb.jr ], [ %.sroa.029.1.i.i.i.i, %bb.jq ], [ %.sroa.029.1.i.i.i.i, %bb.jp ], [ %.sroa.029.1.i.i.i.i, %bb.ni ], [ %.sroa.029.1.i.i.i.i, %bb.jx ], [ %.sroa.029.1.i.i.i.i, %bb.kf ], [ %.sroa.029.1.i.i.i.i, %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode28SafeReadBlockLengthFromIndexNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocECsgZAIVb0XKpv_9ssservice.exit.i.i.i ], [ %.sroa.029.1.i.i.i.i, %bb.ga ], [ %.sroa.029.1.i.i.i.i, %bb.me ], [ %.sroa.029.1.i.i.i.i, %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode22HuffmanTreeGroupDecodeNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB18_B18_ECsgZAIVb0XKpv_9ssservice.exit.thread55.i.i.i ], [ %.sroa.029.1.i.i.i.i, %bb.fq ], [ %.sroa.029.1.i.i.i.i, %.loopexit.i105.i.i.i ], [ %.sroa.029.1.i.i.i.i, %.lr.ph.i47.preheader.i.i.i.i ], [ %.sroa.029.1.i.i.i.i, %.lr.ph.i37.preheader.i.i.i.i ], [ %.sroa.029.1.i.i.i.i, %.loopexit83.i.i.i.i ], [ %.sroa.029.1.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2D0wXkiOfwW_12alloc_stdlib10heap_alloc7WrapBoxhEECsgZAIVb0XKpv_9ssservice.exit.i.i.i ], [ %.sroa.029.1.i.i.i.i, %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode21DecodeMetaBlockLengthNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB17_B17_ECsgZAIVb0XKpv_9ssservice.exit.thread.sink.split.i.i.i ], [ %.sroa.029.1.i.i.i.i, %.lr.ph.i174.preheader.i.i.i.i ], [ %.sroa.029.1.i.i.i.i, %.loopexit91.i.i.i.i ], [ %.sroa.029.1.i.i.i.i, %bb.ey ], [ %.sroa.029.1.i.i.i.i, %bb.ff ], [ %.sroa.029.1.i.i.i.i, %bb.lr ], [ %.sroa.029.1.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2D0wXkiOfwW_12alloc_stdlib10heap_alloc7WrapBoxNtNtCsl4v216RJbSI_19brotli_decompressor7huffman11HuffmanCodeEECsgZAIVb0XKpv_9ssservice.exit181.i.i.i.i ], [ %.sroa.029.1.i.i.i.i, %bb.jy ], [ %.sroa.029.1.i.i.i.i, %bb.je ], [ %.sroa.029.1.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2D0wXkiOfwW_12alloc_stdlib10heap_alloc7WrapBoxhEECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i ], [ %.sroa.029.1.i.i.i.i, %.loopexit211.i.i.i.i ], [ %.sroa.029.1.i.i.i.i, %bb.hf ], [ %.sroa.029.1.i.i.i.i, %bb.he ], [ %.sroa.029.1.i.i.i.i, %bb.gv ], [ %.sroa.029.1.i.i.i.i, %bb.gh ], [ %.sroa.029.1.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2D0wXkiOfwW_12alloc_stdlib10heap_alloc7WrapBoxNtNtCsl4v216RJbSI_19brotli_decompressor7huffman11HuffmanCodeEECsgZAIVb0XKpv_9ssservice.exit157.i.i.i.i ], [ %.sroa.029.1.i.i.i.i, %.lr.ph.i147.i.i.i.i ], [ %.sroa.029.1.i.i.i.i, %.lr.ph.i.i.i.i.i ]
  %.sroa.09.1.i.i.i.i.be = phi i32 [ 2, %.lr.ph.i27.preheader.i.i.i.i ], [ 1, %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode22PrepareLiteralDecodingNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB18_B18_ECsgZAIVb0XKpv_9ssservice.exit.i.i ], [ 1, %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode22HuffmanTreeGroupDecodeNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB18_B18_ECsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i ], [ 2, %bb.ki ], [ 1, %bb.kr ], [ 1, %bb.hp ], [ 1, %bb.ir ], [ 1, %bb.is ], [ 2, %.lr.ph.i.preheader.i.i.i.i ], [ 1, %bb.ho ], [ -15, %bb.hn ], [ 2, %.lr.ph.i57.preheader.i.i.i.i ], [ 1, %bb.my ], [ -9, %bb.ft ], [ 2, %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode16ReadContextModesNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB12_B12_ECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i ], [ %i.aue, %bb.ix ], [ %i.adr, %bb.ev ], [ 1, %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode29CopyUncompressedBlockToOutputNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB1f_B1f_ECsgZAIVb0XKpv_9ssservice.exit.i.i.i ], [ -9, %bb.ma ], [ 2, %bb.eh ], [ 1, %._crit_edge.i.i.i.i65 ], [ 1, %bb.jb ], [ %.sroa.0.1.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2D0wXkiOfwW_12alloc_stdlib10heap_alloc7WrapBoxmEECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i ], [ 1, %bb.jv ], [ 1, %bb.ju ], [ 1, %bb.jt ], [ 1, %bb.jr ], [ 1, %bb.jq ], [ 1, %bb.jp ], [ 1, %bb.ni ], [ 1, %bb.jx ], [ 1, %bb.kf ], [ 2, %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode28SafeReadBlockLengthFromIndexNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocECsgZAIVb0XKpv_9ssservice.exit.i.i.i ], [ 3, %bb.ga ], [ 3, %bb.me ], [ -31, %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode22HuffmanTreeGroupDecodeNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB18_B18_ECsgZAIVb0XKpv_9ssservice.exit.thread55.i.i.i ], [ 2, %bb.fq ], [ -1, %.loopexit.i105.i.i.i ], [ 2, %.lr.ph.i47.preheader.i.i.i.i ], [ 2, %.lr.ph.i37.preheader.i.i.i.i ], [ -3, %.loopexit83.i.i.i.i ], [ -27, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2D0wXkiOfwW_12alloc_stdlib10heap_alloc7WrapBoxhEECsgZAIVb0XKpv_9ssservice.exit.i.i.i ], [ 2, %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode21DecodeMetaBlockLengthNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB17_B17_ECsgZAIVb0XKpv_9ssservice.exit.thread.sink.split.i.i.i ], [ 2, %.lr.ph.i174.preheader.i.i.i.i ], [ -2, %.loopexit91.i.i.i.i ], [ 3, %bb.ff ], [ -9, %bb.ey ], [ %i.awu, %bb.jy ], [ -15, %bb.je ], [ -21, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2D0wXkiOfwW_12alloc_stdlib10heap_alloc7WrapBoxhEECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i ], [ -13, %.loopexit211.i.i.i.i ], [ -13, %bb.hf ], [ -13, %bb.he ], [ 2, %bb.gv ], [ %i.akj, %bb.gh ], [ %i.ajw, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2D0wXkiOfwW_12alloc_stdlib10heap_alloc7WrapBoxNtNtCsl4v216RJbSI_19brotli_decompressor7huffman11HuffmanCodeEECsgZAIVb0XKpv_9ssservice.exit157.i.i.i.i ], [ 2, %.lr.ph.i147.i.i.i.i ], [ 2, %.lr.ph.i.i.i.i.i ], [ %i.axo, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2D0wXkiOfwW_12alloc_stdlib10heap_alloc7WrapBoxNtNtCsl4v216RJbSI_19brotli_decompressor7huffman11HuffmanCodeEECsgZAIVb0XKpv_9ssservice.exit181.i.i.i.i ], [ %i.bcb, %bb.lr ]
  br label %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit.i.i.i.i

bb.nj:                                            ; preds = %bb.mj
  %i.bhi = load i32, ptr %.sroa.30.0..sroa_idx.i.i.i.i, align 8, !alias.scope !44490, !noalias !44469, !noundef !177 ; 2 uses
  %i.bhj = sub i32 64, %i.bhi                     ; 3 uses
  %i.bhk = lshr i32 %i.bhj, 3                     ; 2 uses
  %i.bhl = and i32 %i.bhj, -8                     ; 2 uses
  %i.bhm = load i32, ptr %.sroa.33.0..sroa_idx.i.i.i.i, align 8, !alias.scope !44490, !noalias !44469, !noundef !177
  %i.bhn = add i32 %i.bhk, %i.bhm                 ; 2 uses
  store i32 %i.bhn, ptr %.sroa.33.0..sroa_idx.i.i.i.i, align 8, !alias.scope !44490, !noalias !44469
  %i.bho = load i32, ptr %.sroa.32.0..sroa_idx.i.i.i.i, align 4, !alias.scope !44490, !noalias !44469, !noundef !177
  %i.bhp = sub i32 %i.bho, %i.bhk                 ; 2 uses
  store i32 %i.bhp, ptr %.sroa.32.0..sroa_idx.i.i.i.i, align 4, !alias.scope !44490, !noalias !44469
  %i.bhq = icmp eq i32 %i.bhl, 64
  %i.bhr = load i64, ptr %i.ni, align 8, !alias.scope !44490, !noalias !44469
  %i.bhs = and i32 %i.bhj, 56
  %i.bht = zext nneg i32 %i.bhs to i64
  %i.bhu = shl i64 %i.bhr, %i.bht
  %storemerge.i.i.i.i = select i1 %i.bhq, i64 0, i64 %i.bhu
  store i64 %storemerge.i.i.i.i, ptr %i.ni, align 8, !alias.scope !44490, !noalias !44469
  %i.bhv = add i32 %i.bhl, %i.bhi
  store i32 %i.bhv, ptr %.sroa.30.0..sroa_idx.i.i.i.i, align 8, !alias.scope !44490, !noalias !44469
  %i.bhw = zext i32 %i.bhn to i64
  %i.bhx = zext i32 %i.bhp to i64
  br label %.loopexit217.i.i.i.i

bb.nk:                                            ; preds = %bb.mj
  store i32 0, ptr %i.nb, align 4, !alias.scope !44490, !noalias !44469
  br label %.loopexit217.i.i.i.i

.thread203.i.i.i.i:                               ; preds = %bb.mz, %bb.mw, %bb.ms
  %.sroa.014.9.i.i.i = phi i64 [ %i.bgl, %bb.mw ], [ %i.bfw, %bb.ms ], [ %.sroa.014.2.i.i.i, %bb.mz ]
  store i32 2, ptr %.sroa.104.0..sroa_idx.i.i.i.i, align 8, !alias.scope !44490, !noalias !44469
  br label %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode22BrotliDecompressStreamNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB18_B18_ECsgZAIVb0XKpv_9ssservice.exit.i.i.i

_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode22BrotliDecompressStreamNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB18_B18_ECsgZAIVb0XKpv_9ssservice.exit.i.i.i: ; preds = %.thread203.i.i.i.i, %.loopexit217.i.i.i.i, %.sink.split.i.i.i.i
  %.sroa.017.14.i.i.i = phi i64 [ %.sroa.017.12.i.i.i, %.thread203.i.i.i.i ], [ %.sroa.017.9.i.i.i, %.sink.split.i.i.i.i ], [ %.sroa.017.2.i.i.i, %.loopexit217.i.i.i.i ] ; 5 uses
  %.sroa.014.10.i.i.i = phi i64 [ %.sroa.014.9.i.i.i, %.thread203.i.i.i.i ], [ %.sroa.014.6.i.i.i, %.sink.split.i.i.i.i ], [ %.sroa.014.8.i.i.i, %.loopexit217.i.i.i.i ]
  %.sroa.011.9.i.i.i = phi i64 [ 0, %.thread203.i.i.i.i ], [ %.sroa.011.6.i.i.i, %.sink.split.i.i.i.i ], [ %.sroa.011.7.i.i.i, %.loopexit217.i.i.i.i ]
  %.sroa.06.13.i.i.i = phi i64 [ %.sroa.06.11.i.i.i, %.thread203.i.i.i.i ], [ %.sroa.06.8.i.i.i, %.sink.split.i.i.i.i ], [ %.sroa.06.1.i.i.i, %.loopexit217.i.i.i.i ]
  %.sroa.0.2.i.i.i.i = phi i32 [ 2, %.thread203.i.i.i.i ], [ %.sroa.0.0.ph.i.i.i.i, %.sink.split.i.i.i.i ], [ %spec.select.i.i.i.i, %.loopexit217.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !44610
  %i.bhy = icmp eq i64 %.sroa.017.14.i.i.i, 0
  br i1 %i.bhy, label %.outer.backedge, label %.preheader.split.split.i.i.i

.preheader.split.split.i.i.i:                     ; preds = %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode22BrotliDecompressStreamNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB18_B18_ECsgZAIVb0XKpv_9ssservice.exit.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !44660)
  call void @llvm.experimental.noalias.scope.decl(metadata !44661)
  %i.bhz = load i64, ptr %i.md, align 8, !alias.scope !44662, !noalias !44663, !noundef !177 ; 3 uses
  %i.bia = load i64, ptr %i.ah, align 8, !range !179, !alias.scope !44662, !noalias !44663, !noundef !177
  %i.bib = sub i64 %i.bia, %i.bhz
  %i.bic = icmp ugt i64 %.sroa.017.14.i.i.i, %i.bib
  br i1 %i.bic, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.i.i.i, label %_RNvXNtCsl4v216RJbSI_19brotli_decompressor11io_wrappersINtB2_15IoWriterWrapperINtNtCsgCecv3eZDcN_5alloc3vec3VechEEINtB2_11CustomWriteNtNtNtCsf3Ta7LF998c_4core2io5error5ErrorE5writeCsgZAIVb0XKpv_9ssservice.exit.i.i.i, !prof !186

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.i.i.i: ; preds = %.preheader.split.split.i.i.i
  call fastcc void @_RINvNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ah, i64 noundef %i.bhz, i64 noundef range(i64 0, -9223372036854775808) %.sroa.017.14.i.i.i, i64 noundef 1, i64 noundef 1) #52, !noalias !44664
  %i.bid = load i64, ptr %i.md, align 8, !alias.scope !44665, !noalias !44663, !noundef !177
  br label %_RNvXNtCsl4v216RJbSI_19brotli_decompressor11io_wrappersINtB2_15IoWriterWrapperINtNtCsgCecv3eZDcN_5alloc3vec3VechEEINtB2_11CustomWriteNtNtNtCsf3Ta7LF998c_4core2io5error5ErrorE5writeCsgZAIVb0XKpv_9ssservice.exit.i.i.i

_RNvXNtCsl4v216RJbSI_19brotli_decompressor11io_wrappersINtB2_15IoWriterWrapperINtNtCsgCecv3eZDcN_5alloc3vec3VechEEINtB2_11CustomWriteNtNtNtCsf3Ta7LF998c_4core2io5error5ErrorE5writeCsgZAIVb0XKpv_9ssservice.exit.i.i.i: ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.i.i.i, %.preheader.split.split.i.i.i
  %.sink2315.i.i.i = phi i64 [ %i.bid, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.i.i.i ], [ %i.bhz, %.preheader.split.split.i.i.i ] ; 3 uses
  %i.bie = icmp sgt i64 %.sink2315.i.i.i, -1
  call void @llvm.assume(i1 %i.bie)
  %i.bif = load ptr, ptr %i.mc, align 8, !alias.scope !44665, !noalias !44663, !nonnull !177, !noundef !177
  %i.big = getelementptr inbounds nuw i8, ptr %i.bif, i64 %.sink2315.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.big, ptr nonnull readonly align 1 %i.s, i64 range(i64 0, -9223372036854775808) %.sroa.017.14.i.i.i, i1 false), !noalias !44666
  %i.bih = add nuw i64 %.sink2315.i.i.i, %.sroa.017.14.i.i.i
  store i64 %i.bih, ptr %i.md, align 8, !alias.scope !44665, !noalias !44663
  br label %.outer.backedge

.outer.backedge:                                  ; preds = %_RNvXNtCsl4v216RJbSI_19brotli_decompressor11io_wrappersINtB2_15IoWriterWrapperINtNtCsgCecv3eZDcN_5alloc3vec3VechEEINtB2_11CustomWriteNtNtNtCsf3Ta7LF998c_4core2io5error5ErrorE5writeCsgZAIVb0XKpv_9ssservice.exit.i.i.i, %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode22BrotliDecompressStreamNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB18_B18_ECsgZAIVb0XKpv_9ssservice.exit.i.i.i
  %.sroa.06.0.i.i.i.ph.be = phi i64 [ %.sroa.06.13.i.i.i, %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode22BrotliDecompressStreamNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB18_B18_ECsgZAIVb0XKpv_9ssservice.exit.i.i.i ], [ 4096, %_RNvXNtCsl4v216RJbSI_19brotli_decompressor11io_wrappersINtB2_15IoWriterWrapperINtNtCsgCecv3eZDcN_5alloc3vec3VechEEINtB2_11CustomWriteNtNtNtCsf3Ta7LF998c_4core2io5error5ErrorE5writeCsgZAIVb0XKpv_9ssservice.exit.i.i.i ]
  br label %.outer

bb.nl:                                            ; preds = %bb.j
  %i.bii = getelementptr i8, ptr %1, i64 8
  %.val13 = load ptr, ptr %i.bii, align 8, !nonnull !177, !noundef !177
  %i.bij = getelementptr i8, ptr %1, i64 16
  %.val14 = load i64, ptr %i.bij, align 8, !noundef !177
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !44667
  store i64 0, ptr %i.k, align 8, !noalias !44667
  %i.bik = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 4 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.bik, align 8, !noalias !44667
  %i.bil = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 3 uses
  store i64 0, ptr %i.bil, align 8, !noalias !44667
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44668)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !44669
  %i.bim = tail call noundef i64 @_RNvMs5_Cs8ayS50oRKgP_9zstd_safeNtB5_4DCtx7in_size() #52, !noalias !44670 ; 6 uses
  %.not.i.i.i.i.i.i77 = icmp slt i64 %i.bim, 0
  br i1 %.not.i.i.i.i.i.i77, label %bb.np, label %bb.nm, !prof !188

bb.nm:                                            ; preds = %bb.nl
  %i.bin = icmp eq i64 %i.bim, 0                  ; 2 uses
  br i1 %i.bin, label %_RNvMNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreaderINtB2_9BufReaderINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorRShEE13with_capacityCsgZAIVb0XKpv_9ssservice.exit.i.i.i, label %bb.nn

bb.nn:                                            ; preds = %bb.nm
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52, !noalias !44671
  %i.bio = tail call noundef ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.bim, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !44671 ; 2 uses
  %i.bip = icmp eq ptr %i.bio, null
  br i1 %i.bip, label %bb.np, label %bb.no

bb.no:                                            ; preds = %bb.nn
  %i.biq = ptrtoint ptr %i.bio to i64
  br label %_RNvMNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreaderINtB2_9BufReaderINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorRShEE13with_capacityCsgZAIVb0XKpv_9ssservice.exit.i.i.i

bb.np:                                            ; preds = %bb.nn, %bb.nl
  %.sroa.4.0.ph.i.i.i.i.i81 = phi i64 [ 1, %bb.nn ], [ 0, %bb.nl ]
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i.i.i81, i64 %i.bim) #61, !noalias !44672
  unreachable

_RNvMNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreaderINtB2_9BufReaderINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorRShEE13with_capacityCsgZAIVb0XKpv_9ssservice.exit.i.i.i: ; preds = %bb.no, %bb.nm
  %.sroa.9.0.i.i.i.i.i = phi i64 [ %i.biq, %bb.no ], [ 1, %bb.nm ]
  %i.bir = inttoptr i64 %.sroa.9.0.i.i.i.i.i to ptr ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !44673
  call void @_RNvMs_NtNtCsiuBVzwTdaUB_4zstd6stream3rawNtB4_7Decoder15with_dictionary(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) inttoptr (i64 1 to ptr), i64 noundef 0) #52, !noalias !44673
  %i.bis = load i64, ptr %i.i, align 8, !range !190, !noalias !44673, !noundef !177 ; 2 uses
  %i.bit = icmp eq i64 %i.bis, 2
  %i.biu = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.biv = load ptr, ptr %i.biu, align 8, !noalias !44673, !noundef !177 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !44673
  br i1 %i.bit, label %bb.nq, label %bb.ns

bb.nq:                                            ; preds = %_RNvMNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreaderINtB2_9BufReaderINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorRShEE13with_capacityCsgZAIVb0XKpv_9ssservice.exit.i.i.i
  br i1 %i.bin, label %bb.nr, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i: ; preds = %bb.nq
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bir, i64 noundef %i.bim, i64 noundef 1) #52, !noalias !44673
  br label %bb.nr

bb.nr:                                            ; preds = %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i, %bb.nq
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.biv) ]
  br label %bb.ox

bb.ns:                                            ; preds = %_RNvMNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreaderINtB2_9BufReaderINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorRShEE13with_capacityCsgZAIVb0XKpv_9ssservice.exit.i.i.i
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 32 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i, i8 0, i64 17, i1 false), !noalias !44669
  %.sroa.8.i.i.i.sroa.4.0..sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 56 ; 2 uses
  store ptr %.val13, ptr %.sroa.8.i.i.i.sroa.4.0..sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i.sroa_idx, align 8, !noalias !44669
  %.sroa.8.i.i.i.sroa.5.0..sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 64 ; 2 uses
  store i64 %.val14, ptr %.sroa.8.i.i.i.sroa.5.0..sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i.sroa_idx, align 8, !noalias !44669
  %.sroa.8.i.i.i.sroa.6.0..sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 72 ; 3 uses
  store i64 0, ptr %.sroa.8.i.i.i.sroa.6.0..sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i.sroa_idx, align 8, !noalias !44669
  store i64 %i.bis, ptr %i.j, align 8, !noalias !44669
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 5 uses
  store ptr %i.biv, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !44669
  %.sroa.5.0..sroa_idx.i.i78 = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 4 uses
  store ptr %i.bir, ptr %.sroa.5.0..sroa_idx.i.i78, align 8, !noalias !44669
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 4 uses
  store i64 %i.bim, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !44669
  %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 80 ; 3 uses
  store i8 0, ptr %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !44669
  %.sroa.5.sroa.8.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 81 ; 6 uses
  store i8 0, ptr %.sroa.5.sroa.8.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 1, !noalias !44669
  %.sroa.5.sroa.9.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 82 ; 7 uses
  store i8 0, ptr %.sroa.5.sroa.9.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 2, !noalias !44669
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44674)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44675)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44676)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44677)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !44678
  %i.biw = getelementptr inbounds nuw i8, ptr %i.j, i64 40 ; 3 uses
  %i.bix = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 4 uses
  %i.biy = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  %i.biz = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 6 uses
  %i.bja = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 4 uses
  %i.bjb = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  %.sroa.4.0..sroa_idx.i.i6.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i7.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 3 uses
  %i.bjc = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %.sroa.4.0..sroa_idx.i8.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.bjd = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 3 uses
  %i.bje = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.bjf = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %.outer.i.i.i.i.i.i

.outer.i.i.i.i.i.i:                               ; preds = %_RNvXs_NtNtCsf3Ta7LF998c_4core2io5implsQINtNtCsgCecv3eZDcN_5alloc3vec3VechENtNtB6_5write5Write9write_allCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i, %bb.ns
  %i.bjg = phi ptr [ %i.bnd, %_RNvXs_NtNtCsf3Ta7LF998c_4core2io5implsQINtNtCsgCecv3eZDcN_5alloc3vec3VechENtNtB6_5write5Write9write_allCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i ], [ inttoptr (i64 1 to ptr), %bb.ns ]
  %.sroa.16.0.copyload141 = phi i64 [ %i.bng, %_RNvXs_NtNtCsf3Ta7LF998c_4core2io5implsQINtNtCsgCecv3eZDcN_5alloc3vec3VechENtNtB6_5write5Write9write_allCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i ], [ 0, %bb.ns ] ; 4 uses
  %.sroa.18.0.ph.i.i.i.i.i.i = phi i1 [ true, %_RNvXs_NtNtCsf3Ta7LF998c_4core2io5implsQINtNtCsgCecv3eZDcN_5alloc3vec3VechENtNtB6_5write5Write9write_allCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i ], [ false, %bb.ns ]
  call void @llvm.experimental.noalias.scope.decl(metadata !44679)
  br i1 %.sroa.18.0.ph.i.i.i.i.i.i, label %_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i.i.i.preheader, label %bb.nt

bb.nt:                                            ; preds = %.outer.i.i.i.i.i.i
  %i.bjh = call { ptr, i64 } @_RNvXs0_NvMs2_NtNtCsf3Ta7LF998c_4core3mem12maybe_uninitSINtBb_11MaybeUninitpE13write_defaulthNtB5_11DefaultSpec13write_default(ptr noalias nofree noundef nonnull %i.h, i64 noundef 8192) #52, !noalias !44669 ; 0 uses
  br label %_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i.i.i.preheader

_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i.i.i.preheader: ; preds = %.outer.i.i.i.i.i.i, %bb.nt
  br label %_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i.i.i

_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i.i.i: ; preds = %_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i.i.i.preheader, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !44680)
  call void @llvm.experimental.noalias.scope.decl(metadata !44681)
  %i.bji = load i8, ptr %.sroa.5.sroa.9.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 2, !range !198, !alias.scope !44682, !noalias !44683, !noundef !177
  switch i8 %i.bji, label %default.unreachable2339 [
    i8 0, label %bb.nu
    i8 1, label %.loopexit59.i.i.i.i.i.i.i.i.i.i.i
    i8 2, label %.loopexit.i.i79
end_hunk_4
begin_hunk_5_@llvm.ucmp.i32.i32
!30529 = distinct !{!30529, !30528, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs2Z77Vc7pSLS_13hickory_proto2op12dns_response11DnsResponseECsgZAIVb0XKpv_9ssservice: argument 0"}
!30530 = distinct !{!30530, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsgZAIVb0XKpv_9ssservice"}
!30531 = distinct !{!30531, !30530, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsgZAIVb0XKpv_9ssservice: argument 0"}
!30532 = !{!30517}
!30533 = !{!30519}
!30534 = !{!30519, !30517}
!30535 = !{!30521}
!30536 = !{!30523}
!30537 = !{!30523, !30521, !30519, !30517}
!30538 = !{!30525}
!30539 = !{!30527}
!30540 = !{!30527, !30525}
!30541 = !{!30529}
!30542 = !{!30531}
!30543 = !{!30531, !30529, !30527, !30525}
!30544 = distinct !{!30544, i1 true, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits"}
!30545 = distinct !{!30545, !30544, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits: argument 1"}
!30546 = distinct !{!30546, !30544, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits: argument 0"}
!30547 = distinct !{!30547, i1 true, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits"}
!30548 = distinct !{!30548, !30547, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits: argument 0"}
!30549 = distinct !{!30549, !30547, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits: argument 1"}
!30550 = distinct !{!30550, !30547, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits: argument 2"}
!30551 = distinct !{!30551, !30544, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits: argument 2"}
!30552 = distinct !{!30552, i1 true, !"_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode24ReadSimpleHuffmanSymbolsNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB1a_B1a_ECsgZAIVb0XKpv_9ssservice"}
!30553 = distinct !{!30553, !30552, !"_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode24ReadSimpleHuffmanSymbolsNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB1a_B1a_ECsgZAIVb0XKpv_9ssservice: argument 0"}
!30554 = distinct !{!30554, !30552, !"_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode24ReadSimpleHuffmanSymbolsNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB1a_B1a_ECsgZAIVb0XKpv_9ssservice: argument 1"}
!30555 = distinct !{!30555, i1 true, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits"}
!30556 = distinct !{!30556, !30555, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits: argument 0"}
!30557 = distinct !{!30557, !30555, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits: argument 2"}
!30558 = distinct !{!30558, !30555, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits: argument 1"}
!30559 = distinct !{!30559, i1 true, !"_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode25ReadCodeLengthCodeLengthsNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB1b_B1b_ECsgZAIVb0XKpv_9ssservice"}
!30560 = distinct !{!30560, !30559, !"_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode25ReadCodeLengthCodeLengthsNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB1b_B1b_ECsgZAIVb0XKpv_9ssservice: argument 0"}
!30561 = distinct !{!30561, !30559, !"_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode25ReadCodeLengthCodeLengthsNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB1b_B1b_ECsgZAIVb0XKpv_9ssservice: argument 1"}
!30562 = distinct !{!30562, i1 true, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader17BrotliSafeGetBits"}
!30563 = distinct !{!30563, !30562, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader17BrotliSafeGetBits: argument 0"}
!30564 = distinct !{!30564, !30562, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader17BrotliSafeGetBits: argument 2"}
!30565 = distinct !{!30565, !30562, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader17BrotliSafeGetBits: argument 1"}
!30566 = distinct !{!30566, i1 true, !"_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode21ReadSymbolCodeLengthsNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB17_B17_ECsgZAIVb0XKpv_9ssservice"}
!30567 = distinct !{!30567, !30566, !"_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode21ReadSymbolCodeLengthsNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB17_B17_ECsgZAIVb0XKpv_9ssservice: argument 0"}
!30568 = distinct !{!30568, !30566, !"_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode21ReadSymbolCodeLengthsNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB17_B17_ECsgZAIVb0XKpv_9ssservice: argument 1"}
!30569 = distinct !{!30569, i1 true, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor6decode25ProcessRepeatedCodeLength"}
!30570 = distinct !{!30570, !30569, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor6decode25ProcessRepeatedCodeLength: argument 4"}
!30571 = distinct !{!30571, !30569, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor6decode25ProcessRepeatedCodeLength: argument 5"}
!30572 = distinct !{!30572, !30569, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor6decode25ProcessRepeatedCodeLength: argument 6"}
!30573 = distinct !{!30573, !30569, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor6decode25ProcessRepeatedCodeLength: argument 3"}
!30574 = distinct !{!30574, !30569, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor6decode25ProcessRepeatedCodeLength: argument 2"}
!30575 = distinct !{!30575, !30569, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor6decode25ProcessRepeatedCodeLength: argument 1"}
!30576 = distinct !{!30576, !30569, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor6decode25ProcessRepeatedCodeLength: argument 0"}
!30577 = distinct !{!30577, i1 true, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor6decode23ProcessSingleCodeLength"}
!30578 = distinct !{!30578, !30577, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor6decode23ProcessSingleCodeLength: argument 4"}
!30579 = distinct !{!30579, !30577, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor6decode23ProcessSingleCodeLength: argument 5"}
!30580 = distinct !{!30580, !30577, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor6decode23ProcessSingleCodeLength: argument 6"}
!30581 = distinct !{!30581, !30577, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor6decode23ProcessSingleCodeLength: argument 3"}
!30582 = distinct !{!30582, !30577, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor6decode23ProcessSingleCodeLength: argument 2"}
!30583 = distinct !{!30583, !30577, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor6decode23ProcessSingleCodeLength: argument 1"}
!30584 = distinct !{!30584, !30577, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor6decode23ProcessSingleCodeLength: argument 0"}
!30585 = distinct !{!30585, i1 true, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits"}
!30586 = distinct !{!30586, !30585, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits: argument 0"}
!30587 = distinct !{!30587, !30585, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits: argument 2"}
!30588 = distinct !{!30588, !30585, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits: argument 1"}
!30589 = distinct !{!30589, i1 true, !"_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode25SafeReadSymbolCodeLengthsNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB1b_B1b_ECsgZAIVb0XKpv_9ssservice"}
!30590 = distinct !{!30590, !30589, !"_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode25SafeReadSymbolCodeLengthsNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB1b_B1b_ECsgZAIVb0XKpv_9ssservice: argument 0"}
!30591 = distinct !{!30591, !30589, !"_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode25SafeReadSymbolCodeLengthsNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB1b_B1b_ECsgZAIVb0XKpv_9ssservice: argument 1"}
!30592 = distinct !{!30592, i1 true, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor6decode23ProcessSingleCodeLength"}
!30593 = distinct !{!30593, !30592, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor6decode23ProcessSingleCodeLength: argument 0"}
!30594 = distinct !{!30594, !30592, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor6decode23ProcessSingleCodeLength: argument 1"}
!30595 = distinct !{!30595, !30592, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor6decode23ProcessSingleCodeLength: argument 2"}
!30596 = distinct !{!30596, !30592, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor6decode23ProcessSingleCodeLength: argument 3"}
!30597 = distinct !{!30597, !30592, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor6decode23ProcessSingleCodeLength: argument 4"}
!30598 = distinct !{!30598, !30592, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor6decode23ProcessSingleCodeLength: argument 5"}
!30599 = distinct !{!30599, !30592, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor6decode23ProcessSingleCodeLength: argument 6"}
!30600 = distinct !{!30600, i1 true, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor6decode25ProcessRepeatedCodeLength"}
!30601 = distinct !{!30601, !30600, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor6decode25ProcessRepeatedCodeLength: argument 0"}
!30602 = distinct !{!30602, !30600, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor6decode25ProcessRepeatedCodeLength: argument 1"}
!30603 = distinct !{!30603, !30600, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor6decode25ProcessRepeatedCodeLength: argument 2"}
!30604 = distinct !{!30604, !30600, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor6decode25ProcessRepeatedCodeLength: argument 3"}
!30605 = distinct !{!30605, !30600, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor6decode25ProcessRepeatedCodeLength: argument 4"}
!30606 = distinct !{!30606, !30600, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor6decode25ProcessRepeatedCodeLength: argument 5"}
!30607 = distinct !{!30607, !30600, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor6decode25ProcessRepeatedCodeLength: argument 6"}
!30608 = !{!30545}
!30609 = !{!30546}
!30610 = !{!30548}
!30611 = !{!30549}
!30612 = !{!30550}
!30613 = !{!30548, !30549, !30550}
!30614 = !{!30551}
!30615 = !{!30546, !30545, !30551}
!30616 = !{!30553}
!30617 = !{!30554}
!30618 = !{!30553, !30554}
!30619 = !{!30556}
!30620 = !{!30557}
!30621 = !{!30556, !30553}
!30622 = !{!30557, !30554}
!30623 = !{!30556, !30558, !30557, !30553, !30554}
!30624 = !{!30560}
!30625 = !{!30561}
!30626 = !{!30560, !30561}
!30627 = !{!30563}
!30628 = !{!30564}
!30629 = !{!30563, !30560}
!30630 = !{!30564, !30561}
!30631 = !{!30563, !30565, !30564, !30560, !30561}
!30632 = !{!30567}
!30633 = !{!30568}
!30634 = !{!30567, !30568}
!30635 = !{!30570}
!30636 = !{!30571}
!30637 = !{!30572}
!30638 = !{!30572, !30567}
!30639 = !{!30576, !30575, !30574, !30573, !30570, !30571, !30572}
!30640 = !{!30570, !30567}
!30641 = !{!30571, !30567}
!30642 = !{!30578}
!30643 = !{!30579}
!30644 = !{!30580}
!30645 = !{!30580, !30567}
!30646 = !{!30578, !30567}
!30647 = !{!30579, !30567}
!30648 = !{!30584, !30583, !30582, !30581, !30578, !30579, !30580}
!30649 = !{!30586}
!30650 = !{!30587}
!30651 = !{!30586, !30588, !30587}
!30652 = !{!30590}
!30653 = !{!30591}
!30654 = !{!30593}
!30655 = !{!30594}
!30656 = !{!30595}
!30657 = !{!30596}
!30658 = !{!30597}
!30659 = !{!30598}
!30660 = !{!30599}
!30661 = !{!30594, !30590}
!30662 = !{!30599, !30590}
!30663 = !{!30597, !30590}
!30664 = !{!30596, !30590}
!30665 = !{!30595, !30590}
!30666 = !{!30598, !30590}
!30667 = !{!30593, !30594, !30595, !30596, !30597, !30598, !30599, !30590, !30591}
!30668 = !{!30593, !30590}
!30669 = !{!30590, !30591}
!30670 = !{!30601}
!30671 = !{!30602}
!30672 = !{!30603}
!30673 = !{!30604}
!30674 = !{!30605}
!30675 = !{!30606}
!30676 = !{!30607}
!30677 = !{!30604, !30590}
!30678 = !{!30602, !30590}
!30679 = !{!30601, !30590}
!30680 = !{!30603, !30590}
!30681 = !{!30607, !30590}
!30682 = !{!30601, !30602, !30603, !30604, !30605, !30606, !30607, !30590, !30591}
!30683 = !{!30605, !30590}
!30684 = !{!30606, !30590}
!30685 = distinct !{!30685, i1 true, !"_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode21DecodeContextMapInnerNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB17_B17_ECsgZAIVb0XKpv_9ssservice"}
!30686 = distinct !{!30686, !30685, !"_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode21DecodeContextMapInnerNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB17_B17_ECsgZAIVb0XKpv_9ssservice: argument 0"}
!30687 = distinct !{!30687, !30685, !"_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode21DecodeContextMapInnerNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB17_B17_ECsgZAIVb0XKpv_9ssservice: argument 2"}
!30688 = distinct !{!30688, !30685, !"_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode21DecodeContextMapInnerNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB17_B17_ECsgZAIVb0XKpv_9ssservice: argument 3"}
!30689 = distinct !{!30689, !30685, !"_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode21DecodeContextMapInnerNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB17_B17_ECsgZAIVb0XKpv_9ssservice: argument 1"}
!30690 = distinct !{!30690, i1 true, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader17BrotliSafeGetBits"}
!30691 = distinct !{!30691, !30690, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader17BrotliSafeGetBits: argument 0"}
!30692 = distinct !{!30692, !30690, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader17BrotliSafeGetBits: argument 2"}
!30693 = distinct !{!30693, !30690, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader17BrotliSafeGetBits: argument 1"}
!30694 = distinct !{!30694, i1 true, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits"}
!30695 = distinct !{!30695, !30694, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits: argument 0"}
!30696 = distinct !{!30696, !30694, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits: argument 2"}
!30697 = distinct !{!30697, !30694, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits: argument 1"}
!30698 = distinct !{!30698, i1 true, !"_RINvXs1_NtNtCsgCecv3eZDcN_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsgZAIVb0XKpv_9ssservice"}
!30699 = distinct !{!30699, !30698, !"_RINvXs1_NtNtCsgCecv3eZDcN_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsgZAIVb0XKpv_9ssservice: argument 0"}
!30700 = distinct !{!30700, i1 true, !"_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgZAIVb0XKpv_9ssservice"}
!30701 = distinct !{!30701, !30700, !"_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgZAIVb0XKpv_9ssservice: argument 0"}
!30702 = distinct !{!30702, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECsgZAIVb0XKpv_9ssservice"}
!30703 = distinct !{!30703, !30702, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECsgZAIVb0XKpv_9ssservice: argument 0"}
!30704 = distinct !{!30704, i1 true, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor6decode5bzero"}
!30705 = distinct !{!30705, !30704, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor6decode5bzero: argument 0"}
!30706 = distinct !{!30706, i1 true, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits"}
!30707 = distinct !{!30707, !30706, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits: argument 0"}
!30708 = distinct !{!30708, !30706, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits: argument 2"}
!30709 = distinct !{!30709, !30706, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits: argument 1"}
!30710 = distinct !{!30710, !214, !213}
!30711 = distinct !{!30711, !214}
!30712 = distinct !{!30712, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECsgZAIVb0XKpv_9ssservice"}
!30713 = distinct !{!30713, !30712, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECsgZAIVb0XKpv_9ssservice: argument 0"}
!30714 = distinct !{!30714, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECsgZAIVb0XKpv_9ssservice"}
!30715 = distinct !{!30715, !30714, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECsgZAIVb0XKpv_9ssservice: argument 0"}
!30716 = !{!30686}
!30717 = !{!30687}
!30718 = !{!30688}
!30719 = !{!30686, !30689, !30687, !30688}
!30720 = !{!30689}
!30721 = !{!30691}
!30722 = !{!30692}
!30723 = !{!30691, !30687}
!30724 = !{!30692, !30688}
!30725 = !{!30691, !30693, !30692, !30689}
!30726 = !{!30695}
!30727 = !{!30696}
!30728 = !{!30695, !30687}
!30729 = !{!30695, !30697, !30696, !30689}
!30730 = !{!30701, !30699, !30689}
!30731 = !{!30699, !30689}
!30732 = !{!30703, !30689}
!30733 = !{!30705}
!30734 = !{!30707}
!30735 = !{!30708}
!30736 = !{!30707, !30687}
!30737 = !{!30707, !30709, !30708, !30689}
!30738 = !{!30708, !30688}
!30739 = !{!30707, !30709, !30708, !30686, !30689, !30687, !30688}
!30740 = !{!30696, !30688}
!30741 = !{!30713}
!30742 = !{!30715}
!30743 = distinct !{!30743, i1 true, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader35BrotliFillBitWindowCompileTimeNbits"}
!30744 = distinct !{!30744, !30743, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader35BrotliFillBitWindowCompileTimeNbits: argument 0"}
!30745 = distinct !{!30745, !30743, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader35BrotliFillBitWindowCompileTimeNbits: argument 1"}
!30746 = distinct !{!30746, i1 true, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader14BrotliLoad64LE"}
!30747 = distinct !{!30747, !30746, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader14BrotliLoad64LE: argument 0"}
!30748 = distinct !{!30748, i1 true, !"_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implhECsgZAIVb0XKpv_9ssservice"}
!30749 = distinct !{!30749, !30748, !"_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implhECsgZAIVb0XKpv_9ssservice: argument 1"}
!30750 = distinct !{!30750, !30748, !"_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implhECsgZAIVb0XKpv_9ssservice: argument 0"}
!30751 = distinct !{!30751, i1 true, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor6decode12DecodeSymbol"}
!30752 = distinct !{!30752, !30751, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor6decode12DecodeSymbol: argument 0"}
!30753 = distinct !{!30753, !30751, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor6decode12DecodeSymbol: argument 1"}
!30754 = distinct !{!30754, i1 true, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader19BrotliFillBitWindow"}
!30755 = distinct !{!30755, !30754, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader19BrotliFillBitWindow: argument 0"}
!30756 = distinct !{!30756, !30754, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader19BrotliFillBitWindow: argument 1"}
!30757 = distinct !{!30757, i1 true, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader14BrotliLoad64LE"}
!30758 = distinct !{!30758, !30757, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader14BrotliLoad64LE: argument 0"}
!30759 = distinct !{!30759, i1 true, !"_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implhECsgZAIVb0XKpv_9ssservice"}
!30760 = distinct !{!30760, !30759, !"_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implhECsgZAIVb0XKpv_9ssservice: argument 1"}
!30761 = distinct !{!30761, !30759, !"_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implhECsgZAIVb0XKpv_9ssservice: argument 0"}
!30762 = distinct !{!30762, i1 true, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader14BrotliLoad64LE"}
!30763 = distinct !{!30763, !30762, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader14BrotliLoad64LE: argument 0"}
!30764 = distinct !{!30764, i1 true, !"_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implhECsgZAIVb0XKpv_9ssservice"}
!30765 = distinct !{!30765, !30764, !"_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implhECsgZAIVb0XKpv_9ssservice: argument 1"}
!30766 = distinct !{!30766, !30764, !"_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implhECsgZAIVb0XKpv_9ssservice: argument 0"}
!30767 = distinct !{!30767, i1 true, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader14BrotliLoad32LE"}
!30768 = distinct !{!30768, !30767, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader14BrotliLoad32LE: argument 0"}
!30769 = distinct !{!30769, i1 true, !"_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implhECsgZAIVb0XKpv_9ssservice"}
!30770 = distinct !{!30770, !30769, !"_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implhECsgZAIVb0XKpv_9ssservice: argument 1"}
!30771 = distinct !{!30771, !30769, !"_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implhECsgZAIVb0XKpv_9ssservice: argument 0"}
!30772 = distinct !{!30772, i1 true, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader19BrotliFillBitWindow"}
!30773 = distinct !{!30773, !30772, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader19BrotliFillBitWindow: argument 0"}
!30774 = distinct !{!30774, !30772, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader19BrotliFillBitWindow: argument 1"}
!30775 = distinct !{!30775, i1 true, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader14BrotliLoad64LE"}
!30776 = distinct !{!30776, !30775, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader14BrotliLoad64LE: argument 0"}
!30777 = distinct !{!30777, i1 true, !"_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implhECsgZAIVb0XKpv_9ssservice"}
!30778 = distinct !{!30778, !30777, !"_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implhECsgZAIVb0XKpv_9ssservice: argument 1"}
!30779 = distinct !{!30779, !30777, !"_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implhECsgZAIVb0XKpv_9ssservice: argument 0"}
!30780 = distinct !{!30780, i1 true, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader14BrotliLoad64LE"}
!30781 = distinct !{!30781, !30780, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader14BrotliLoad64LE: argument 0"}
!30782 = distinct !{!30782, i1 true, !"_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implhECsgZAIVb0XKpv_9ssservice"}
!30783 = distinct !{!30783, !30782, !"_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implhECsgZAIVb0XKpv_9ssservice: argument 1"}
!30784 = distinct !{!30784, !30782, !"_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implhECsgZAIVb0XKpv_9ssservice: argument 0"}
!30785 = distinct !{!30785, i1 true, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader14BrotliLoad32LE"}
!30786 = distinct !{!30786, !30785, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader14BrotliLoad32LE: argument 0"}
!30787 = distinct !{!30787, i1 true, !"_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implhECsgZAIVb0XKpv_9ssservice"}
!30788 = distinct !{!30788, !30787, !"_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implhECsgZAIVb0XKpv_9ssservice: argument 1"}
!30789 = distinct !{!30789, !30787, !"_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implhECsgZAIVb0XKpv_9ssservice: argument 0"}
!30790 = !{!30744}
!30791 = !{!30747, !30744, !30745}
!30792 = !{!30750, !30749}
!30793 = !{!30752}
!30794 = !{!30753}
!30795 = !{!30752, !30753}
!30796 = !{!30755}
!30797 = !{!30758, !30755, !30756}
!30798 = !{!30761, !30760}
!30799 = !{!30763, !30755, !30756}
!30800 = !{!30766, !30765}
!30801 = !{!30768, !30755, !30756}
!30802 = !{!30771, !30770}
!30803 = !{!30773}
!30804 = !{!30776, !30773, !30774}
!30805 = !{!30779, !30778}
!30806 = !{!30781, !30773, !30774}
!30807 = !{!30784, !30783}
!30808 = !{!30786, !30773, !30774}
!30809 = !{!30789, !30788}
!30810 = distinct !{!30810, i1 true, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader35BrotliFillBitWindowCompileTimeNbits"}
!30811 = distinct !{!30811, !30810, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader35BrotliFillBitWindowCompileTimeNbits: argument 0"}
!30812 = distinct !{!30812, !30810, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader35BrotliFillBitWindowCompileTimeNbits: argument 1"}
!30813 = distinct !{!30813, i1 true, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader14BrotliLoad64LE"}
!30814 = distinct !{!30814, !30813, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader14BrotliLoad64LE: argument 0"}
!30815 = distinct !{!30815, i1 true, !"_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implhECsgZAIVb0XKpv_9ssservice"}
!30816 = distinct !{!30816, !30815, !"_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implhECsgZAIVb0XKpv_9ssservice: argument 1"}
!30817 = distinct !{!30817, !30815, !"_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implhECsgZAIVb0XKpv_9ssservice: argument 0"}
!30818 = distinct !{!30818, i1 true, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor6decode12DecodeSymbol"}
!30819 = distinct !{!30819, !30818, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor6decode12DecodeSymbol: argument 0"}
!30820 = distinct !{!30820, !30818, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor6decode12DecodeSymbol: argument 1"}
!30821 = distinct !{!30821, i1 true, !"_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode26TakeDistanceFromRingBufferNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB1c_B1c_ECsgZAIVb0XKpv_9ssservice"}
!30822 = distinct !{!30822, !30821, !"_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode26TakeDistanceFromRingBufferNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB1c_B1c_ECsgZAIVb0XKpv_9ssservice: argument 0"}
!30823 = distinct !{!30823, i1 true, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader19BrotliFillBitWindow"}
!30824 = distinct !{!30824, !30823, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader19BrotliFillBitWindow: argument 0"}
!30825 = distinct !{!30825, !30823, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader19BrotliFillBitWindow: argument 1"}
!30826 = distinct !{!30826, i1 true, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader14BrotliLoad64LE"}
!30827 = distinct !{!30827, !30826, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader14BrotliLoad64LE: argument 0"}
!30828 = distinct !{!30828, i1 true, !"_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implhECsgZAIVb0XKpv_9ssservice"}
!30829 = distinct !{!30829, !30828, !"_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implhECsgZAIVb0XKpv_9ssservice: argument 1"}
!30830 = distinct !{!30830, !30828, !"_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implhECsgZAIVb0XKpv_9ssservice: argument 0"}
!30831 = distinct !{!30831, i1 true, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader14BrotliLoad64LE"}
!30832 = distinct !{!30832, !30831, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader14BrotliLoad64LE: argument 0"}
!30833 = distinct !{!30833, i1 true, !"_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implhECsgZAIVb0XKpv_9ssservice"}
!30834 = distinct !{!30834, !30833, !"_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implhECsgZAIVb0XKpv_9ssservice: argument 1"}
!30835 = distinct !{!30835, !30833, !"_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implhECsgZAIVb0XKpv_9ssservice: argument 0"}
!30836 = distinct !{!30836, i1 true, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader14BrotliLoad32LE"}
!30837 = distinct !{!30837, !30836, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader14BrotliLoad32LE: argument 0"}
!30838 = distinct !{!30838, i1 true, !"_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implhECsgZAIVb0XKpv_9ssservice"}
!30839 = distinct !{!30839, !30838, !"_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implhECsgZAIVb0XKpv_9ssservice: argument 1"}
!30840 = distinct !{!30840, !30838, !"_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implhECsgZAIVb0XKpv_9ssservice: argument 0"}
!30841 = distinct !{!30841, i1 true, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader19BrotliFillBitWindow"}
!30842 = distinct !{!30842, !30841, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader19BrotliFillBitWindow: argument 0"}
!30843 = distinct !{!30843, !30841, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader19BrotliFillBitWindow: argument 1"}
!30844 = distinct !{!30844, i1 true, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader14BrotliLoad64LE"}
!30845 = distinct !{!30845, !30844, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader14BrotliLoad64LE: argument 0"}
!30846 = distinct !{!30846, i1 true, !"_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implhECsgZAIVb0XKpv_9ssservice"}
!30847 = distinct !{!30847, !30846, !"_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implhECsgZAIVb0XKpv_9ssservice: argument 1"}
!30848 = distinct !{!30848, !30846, !"_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implhECsgZAIVb0XKpv_9ssservice: argument 0"}
!30849 = distinct !{!30849, i1 true, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader14BrotliLoad64LE"}
!30850 = distinct !{!30850, !30849, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader14BrotliLoad64LE: argument 0"}
!30851 = distinct !{!30851, i1 true, !"_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implhECsgZAIVb0XKpv_9ssservice"}
!30852 = distinct !{!30852, !30851, !"_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implhECsgZAIVb0XKpv_9ssservice: argument 1"}
!30853 = distinct !{!30853, !30851, !"_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implhECsgZAIVb0XKpv_9ssservice: argument 0"}
!30854 = distinct !{!30854, i1 true, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader14BrotliLoad32LE"}
!30855 = distinct !{!30855, !30854, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader14BrotliLoad32LE: argument 0"}
!30856 = distinct !{!30856, i1 true, !"_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implhECsgZAIVb0XKpv_9ssservice"}
!30857 = distinct !{!30857, !30856, !"_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implhECsgZAIVb0XKpv_9ssservice: argument 1"}
!30858 = distinct !{!30858, !30856, !"_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implhECsgZAIVb0XKpv_9ssservice: argument 0"}
!30859 = !{!30811}
!30860 = !{!30814, !30811, !30812}
!30861 = !{!30817, !30816}
!30862 = !{!30819}
!30863 = !{!30820}
!30864 = !{!30819, !30820}
!30865 = !{!30822}
!30866 = !{!30824}
!30867 = !{!30827, !30824, !30825}
!30868 = !{!30830, !30829}
!30869 = !{!30832, !30824, !30825}
!30870 = !{!30835, !30834}
!30871 = !{!30837, !30824, !30825}
!30872 = !{!30840, !30839}
!30873 = !{!30842}
!30874 = !{!30845, !30842, !30843}
!30875 = !{!30848, !30847}
!30876 = !{!30850, !30842, !30843}
!30877 = !{!30853, !30852}
!30878 = !{!30855, !30842, !30843}
!30879 = !{!30858, !30857}
!30880 = distinct !{!30880, i1 true, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor6decode15WarmupBitReader"}
!30881 = distinct !{!30881, !30880, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor6decode15WarmupBitReader: argument 0"}
!30882 = distinct !{!30882, !30880, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor6decode15WarmupBitReader: argument 1"}
!30883 = distinct !{!30883, i1 true, !"_RNvMs0_NtCsl4v216RJbSI_19brotli_decompressor7huffmanINtB5_16HuffmanTreeGroupNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB1c_E18build_hgroup_cacheCsgZAIVb0XKpv_9ssservice"}
!30884 = distinct !{!30884, !30883, !"_RNvMs0_NtCsl4v216RJbSI_19brotli_decompressor7huffmanINtB5_16HuffmanTreeGroupNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB1c_E18build_hgroup_cacheCsgZAIVb0XKpv_9ssservice: argument 0"}
!30885 = distinct !{!30885, !30883, !"_RNvMs0_NtCsl4v216RJbSI_19brotli_decompressor7huffmanINtB5_16HuffmanTreeGroupNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB1c_E18build_hgroup_cacheCsgZAIVb0XKpv_9ssservice: argument 1"}
!30886 = distinct !{!30886, i1 true, !"_RNvMs0_NtCsl4v216RJbSI_19brotli_decompressor7huffmanINtB5_16HuffmanTreeGroupNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB1c_E18build_hgroup_cacheCsgZAIVb0XKpv_9ssservice"}
!30887 = distinct !{!30887, !30886, !"_RNvMs0_NtCsl4v216RJbSI_19brotli_decompressor7huffmanINtB5_16HuffmanTreeGroupNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB1c_E18build_hgroup_cacheCsgZAIVb0XKpv_9ssservice: argument 0"}
!30888 = distinct !{!30888, !30886, !"_RNvMs0_NtCsl4v216RJbSI_19brotli_decompressor7huffmanINtB5_16HuffmanTreeGroupNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB1c_E18build_hgroup_cacheCsgZAIVb0XKpv_9ssservice: argument 1"}
!30889 = distinct !{!30889, i1 true, !"_RNvMs0_NtCsl4v216RJbSI_19brotli_decompressor7huffmanINtB5_16HuffmanTreeGroupNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB1c_E18build_hgroup_cacheCsgZAIVb0XKpv_9ssservice"}
!30890 = distinct !{!30890, !30889, !"_RNvMs0_NtCsl4v216RJbSI_19brotli_decompressor7huffmanINtB5_16HuffmanTreeGroupNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB1c_E18build_hgroup_cacheCsgZAIVb0XKpv_9ssservice: argument 0"}
!30891 = distinct !{!30891, !30889, !"_RNvMs0_NtCsl4v216RJbSI_19brotli_decompressor7huffmanINtB5_16HuffmanTreeGroupNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB1c_E18build_hgroup_cacheCsgZAIVb0XKpv_9ssservice: argument 1"}
!30892 = distinct !{!30892, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsl4v216RJbSI_19brotli_decompressor7huffman16HuffmanTreeGroupNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB1F_EECsgZAIVb0XKpv_9ssservice"}
!30893 = distinct !{!30893, !30892, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsl4v216RJbSI_19brotli_decompressor7huffman16HuffmanTreeGroupNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB1F_EECsgZAIVb0XKpv_9ssservice: argument 0"}
!30894 = distinct !{!30894, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsl4v216RJbSI_19brotli_decompressor7huffman16HuffmanTreeGroupNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB1F_EECsgZAIVb0XKpv_9ssservice"}
!30895 = distinct !{!30895, !30894, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsl4v216RJbSI_19brotli_decompressor7huffman16HuffmanTreeGroupNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB1F_EECsgZAIVb0XKpv_9ssservice: argument 0"}
!30896 = distinct !{!30896, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsl4v216RJbSI_19brotli_decompressor7huffman16HuffmanTreeGroupNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB1F_EECsgZAIVb0XKpv_9ssservice"}
!30897 = distinct !{!30897, !30896, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsl4v216RJbSI_19brotli_decompressor7huffman16HuffmanTreeGroupNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB1F_EECsgZAIVb0XKpv_9ssservice: argument 0"}
!30898 = distinct !{!30898, i1 true, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader35BrotliFillBitWindowCompileTimeNbits"}
!30899 = distinct !{!30899, !30898, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader35BrotliFillBitWindowCompileTimeNbits: argument 0"}
!30900 = distinct !{!30900, !30898, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader35BrotliFillBitWindowCompileTimeNbits: argument 1"}
!30901 = distinct !{!30901, i1 true, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader14BrotliLoad64LE"}
!30902 = distinct !{!30902, !30901, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader14BrotliLoad64LE: argument 0"}
!30903 = distinct !{!30903, i1 true, !"_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implhECsgZAIVb0XKpv_9ssservice"}
!30904 = distinct !{!30904, !30903, !"_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implhECsgZAIVb0XKpv_9ssservice: argument 1"}
!30905 = distinct !{!30905, !30903, !"_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implhECsgZAIVb0XKpv_9ssservice: argument 0"}
!30906 = distinct !{!30906, i1 true, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor6decode12DecodeSymbol"}
!30907 = distinct !{!30907, !30906, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor6decode12DecodeSymbol: argument 0"}
!30908 = distinct !{!30908, !30906, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor6decode12DecodeSymbol: argument 1"}
!30909 = distinct !{!30909, i1 true, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor6decode9memmove16"}
!30910 = distinct !{!30910, !30909, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor6decode9memmove16: argument 0"}
!30911 = distinct !{!30911, i1 true, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor6decode9memmove16"}
!30912 = distinct !{!30912, !30911, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor6decode9memmove16: argument 0"}
!30913 = distinct !{!30913, i1 true, !"_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implhECsgZAIVb0XKpv_9ssservice"}
!30914 = distinct !{!30914, !30913, !"_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implhECsgZAIVb0XKpv_9ssservice: argument 0"}
!30915 = distinct !{!30915, !30913, !"_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implhECsgZAIVb0XKpv_9ssservice: argument 1"}
!30916 = !{!30881}
!30917 = !{!30882}
!30918 = !{!30881, !30882}
!30919 = !{!30884}
!30920 = !{!30885}
!30921 = !{!30884, !30885}
!30922 = !{!30887}
!30923 = !{!30888}
!30924 = !{!30887, !30888}
!30925 = !{!30890}
!30926 = !{!30891}
!30927 = !{!30890, !30891}
!30928 = !{!30893}
!30929 = !{!30895}
!30930 = !{!30897}
!30931 = !{!30899}
!30932 = !{!30902, !30899, !30900}
!30933 = !{!30905, !30904}
!30934 = !{!30907}
!30935 = !{!30908}
!30936 = !{!30907, !30908}
!30937 = !{!30910}
!30938 = !{!30912}
!30939 = !{!30914}
!30940 = !{!30915}
end_hunk_5
begin_hunk_6_@llvm.ucmp.i32.i32
!44362 = distinct !{!44362, !44361, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsdEV4Kvs1Ch8_6flate27deflate7bufread14DeflateDecoderINtNtBI_9bufreader9BufReaderRShEEECsgZAIVb0XKpv_9ssservice: argument 0"}
!44363 = distinct !{!44363, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECsgZAIVb0XKpv_9ssservice"}
!44364 = distinct !{!44364, !44363, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECsgZAIVb0XKpv_9ssservice: argument 0"}
!44365 = distinct !{!44365, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECsgZAIVb0XKpv_9ssservice"}
!44366 = distinct !{!44366, !44365, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECsgZAIVb0XKpv_9ssservice: argument 0"}
!44367 = distinct !{!44367, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsdEV4Kvs1Ch8_6flate22gz4read9GzDecoderRShEECsgZAIVb0XKpv_9ssservice"}
!44368 = distinct !{!44368, !44367, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsdEV4Kvs1Ch8_6flate22gz4read9GzDecoderRShEECsgZAIVb0XKpv_9ssservice: argument 0"}
!44369 = distinct !{!44369, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsdEV4Kvs1Ch8_6flate22gz7bufread9GzDecoderINtNtBI_9bufreader9BufReaderRShEEECsgZAIVb0XKpv_9ssservice"}
!44370 = distinct !{!44370, !44369, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsdEV4Kvs1Ch8_6flate22gz7bufread9GzDecoderINtNtBI_9bufreader9BufReaderRShEEECsgZAIVb0XKpv_9ssservice: argument 0"}
!44371 = distinct !{!44371, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsdEV4Kvs1Ch8_6flate23crc9CrcReaderINtNtNtBG_7deflate7bufread14DeflateDecoderINtNtBG_9bufreader9BufReaderRShEEEECsgZAIVb0XKpv_9ssservice"}
!44372 = distinct !{!44372, !44371, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsdEV4Kvs1Ch8_6flate23crc9CrcReaderINtNtNtBG_7deflate7bufread14DeflateDecoderINtNtBG_9bufreader9BufReaderRShEEEECsgZAIVb0XKpv_9ssservice: argument 0"}
!44373 = distinct !{!44373, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsdEV4Kvs1Ch8_6flate27deflate7bufread14DeflateDecoderINtNtBI_9bufreader9BufReaderRShEEECsgZAIVb0XKpv_9ssservice"}
!44374 = distinct !{!44374, !44373, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsdEV4Kvs1Ch8_6flate27deflate7bufread14DeflateDecoderINtNtBI_9bufreader9BufReaderRShEEECsgZAIVb0XKpv_9ssservice: argument 0"}
!44375 = distinct !{!44375, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECsgZAIVb0XKpv_9ssservice"}
!44376 = distinct !{!44376, !44375, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECsgZAIVb0XKpv_9ssservice: argument 0"}
!44377 = distinct !{!44377, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECsgZAIVb0XKpv_9ssservice"}
!44378 = distinct !{!44378, !44377, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECsgZAIVb0XKpv_9ssservice: argument 0"}
!44379 = distinct !{!44379, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsgZAIVb0XKpv_9ssservice"}
!44380 = distinct !{!44380, !44379, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsgZAIVb0XKpv_9ssservice: argument 0"}
!44381 = distinct !{!44381, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsgZAIVb0XKpv_9ssservice"}
!44382 = distinct !{!44382, !44381, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsgZAIVb0XKpv_9ssservice: argument 0"}
!44383 = !{!43824}
!44384 = !{!43827, !43826}
!44385 = !{!43830, !43829, !43827, !43826}
!44386 = !{!43832, !43830, !43827}
!44387 = !{!43832, !43833, !43830, !43829, !43827, !43826}
!44388 = !{!43833, !43829, !43826}
!44389 = !{!43835}
!44390 = !{!43837}
!44391 = !{!43839}
!44392 = !{!43841, !43839, !43837, !43835}
!44393 = !{!43842}
!44394 = !{!43839, !43837, !43835}
!44395 = !{!43846, !43844}
!44396 = !{!43848}
!44397 = !{!43850}
!44398 = !{!43855, !43853, !43850, !43851}
!44399 = !{!43853, !43850, !43851}
!44400 = !{!43858, !43857, !43851}
!44401 = !{!43859, !43850}
!44402 = !{!43861}
!44403 = !{!43863}
!44404 = !{!43864}
!44405 = !{!43866}
!44406 = !{!43867}
!44407 = !{!43869}
!44408 = !{!43871}
!44409 = !{!43871, !43869, !43866, !43867, !43863, !43864}
!44410 = !{!43871, !43869, !43867, !43864}
!44411 = !{!43867, !43864}
!44412 = !{!43873, !43867, !43864}
!44413 = !{!43875}
!44414 = !{!43876}
!44415 = !{!43875, !43866, !43863}
!44416 = !{!43878}
!44417 = !{!43880}
!44418 = !{!43881}
!44419 = !{!43880, !43881, !43882, !43878, !43875, !43867, !43864}
!44420 = !{!43882, !43878, !43875, !43867, !43864}
!44421 = !{!43885, !43884}
!44422 = !{!43880, !43882, !43878, !43875, !43867, !43864}
!44423 = !{!43880, !43878, !43875, !43866, !43863}
!44424 = !{!43878, !43875, !43866, !43863}
!44425 = !{!43876, !43866, !43863}
!44426 = !{!43875, !43867, !43864}
!44427 = !{!43887, !43875, !43866, !43863}
!44428 = !{!43889, !43867, !43864}
!44429 = !{!43892, !43866, !43867, !43863, !43864}
!44430 = !{!43894, !43866, !43867, !43863, !43864}
!44431 = !{!43896, !43866, !43867, !43863, !43864}
!44432 = !{!43898}
!44433 = !{!43896, !43867, !43864}
!44434 = !{!43900}
!44435 = !{!43900, !43901}
!44436 = !{!43905, !43903, !43900, !43901}
!44437 = !{!43903, !43900, !43901}
!44438 = !{!43908, !43907, !43900, !43901}
!44439 = !{!43908, !43900}
!44440 = !{!43908, !43907, !43900}
!44441 = !{!43908, !43900, !43901}
!44442 = !{!43907, !43900, !43901}
!44443 = !{!43911, !43908, !43907, !43900, !43901}
!44444 = !{!43913}
!44445 = !{!43911, !43908, !43907, !43900}
!44446 = !{!43901}
!44447 = !{!43915}
!44448 = !{!43917}
!44449 = !{!43919}
!44450 = !{!43919, !43917}
!44451 = !{!43921}
!44452 = !{!43923}
!44453 = !{!43923, !43921, !43925, !43919, !43924, !43917}
!44454 = !{!43923, !43921, !43919, !43917}
!44455 = !{!43927, !43919, !43917}
!44456 = !{!43929, !43925, !43919, !43924, !43917}
!44457 = !{!43931}
!44458 = !{!43929, !43919, !43917}
!44459 = !{!43933, !43925, !43919, !43924, !43917}
!44460 = !{!43936, !43925, !43919, !43924, !43917}
!44461 = !{!43938, !43919, !43917}
!44462 = !{!43941}
!44463 = !{!43943}
!44464 = !{!43944, !43943}
!44465 = !{!43946}
!44466 = !{!43947}
!44467 = !{!43949, !43946, !43947, !43948, !43944, !43943}
!44468 = !{!43951}
!44469 = !{!43951, !43953, !43952, !43949, !43946, !43947, !43948, !43944, !43943}
!44470 = !{!43955}
!44471 = !{!43955, !43956, !43951, !43953, !43952, !43949, !43946, !43947, !43948, !43944, !43943}
!44472 = !{!43960, !43958, !43956, !43951, !43953, !43952, !43949, !43946, !43947, !43948, !43944, !43943}
!44473 = !{!43958, !43956, !43953, !43949, !43946, !43948, !43944, !43943}
!44474 = !{!43962, !43958, !43956, !43953, !43949, !43946, !43948, !43944, !43943}
!44475 = !{!43956, !43951, !43953, !43952, !43949, !43946, !43947, !43948, !43944, !43943}
!44476 = !{!43964}
!44477 = !{!43966}
!44478 = !{!43968}
!44479 = !{!43971, !43970}
!44480 = !{!43975, !43973, !43953, !43949, !43946, !43948, !43944, !43943}
!44481 = !{!43975, !43968, !43973, !43966, !43964, !43953, !43949, !43946, !43948, !43944, !43943}
!44482 = !{!43968, !43966, !43964, !43951, !43947}
!44483 = !{!43977}
!44484 = !{!43985, !43984, !43983, !43982, !43981, !43980, !43979, !43977, !43951, !43953, !43952, !43949, !43946, !43947, !43948, !43944, !43943}
!44485 = !{i32 -31, i32 4}
!44486 = !{!43953, !43949, !43946, !43948, !43944, !43943}
!44487 = !{!43987, !43951, !43953, !43952, !43949, !43946, !43947, !43948, !43944, !43943}
!44488 = !{!43989}
!44489 = !{!43987, !43953, !43949, !43946, !43948, !43944, !43943}
!44490 = !{!43990}
!44491 = !{!43985, !43984, !43982, !43981, !43980, !43979, !43953, !43949, !43946, !43948, !43944, !43943}
!44492 = !{!43993, !43992}
!44493 = !{!43985, !43984, !43982, !43981, !43980, !43979, !43990, !43953, !43952, !43949, !43946, !43948, !43944, !43943}
!44494 = !{!43997, !43996, !43994, !43990}
!44495 = !{!43953, !43952, !43949, !43946, !43948, !43944, !43943}
!44496 = !{!43999, !43990}
!44497 = !{!44001, !43990}
!44498 = !{!44003}
!44499 = !{!44004}
!44500 = !{!44005}
!44501 = !{!44003, !43990}
!44502 = !{!44003, !44004, !44005, !43985, !43984, !43982, !43981, !43980, !43979, !43953, !43949, !43946, !43948, !43944, !43943}
!44503 = !{!44009, !44007, !43985, !43984, !43982, !43981, !43980, !43979, !43953, !43949, !43946, !43948, !43944, !43943}
!44504 = !{!44007, !43985, !43984, !43982, !43981, !43980, !43979, !43953, !43949, !43946, !43948, !43944, !43943}
!44505 = !{!44011, !44007, !43985, !43984, !43982, !43981, !43980, !43979, !43953, !43949, !43946, !43948, !43944, !43943}
!44506 = !{!44015, !44013, !43985, !43984, !43982, !43981, !43980, !43979, !43953, !43949, !43946, !43948, !43944, !43943}
!44507 = !{!44017}
!44508 = !{!44017, !43990}
!44509 = !{!44019, !44017, !43985, !43984, !43982, !43981, !43980, !43979, !43953, !43949, !43946, !43948, !43944, !43943}
!44510 = !{!44021, !44017, !43985, !43984, !43982, !43981, !43980, !43979, !43953, !43949, !43946, !43948, !43944, !43943}
!44511 = !{!44023, !44017, !43985, !43984, !43982, !43981, !43980, !43979, !43953, !43949, !43946, !43948, !43944, !43943}
!44512 = !{!44025}
!44513 = !{!44025, !44017, !43990}
!44514 = !{!44025, !44017, !43985, !43984, !43982, !43981, !43980, !43979, !43953, !43949, !43946, !43948, !43944, !43943}
!44515 = !{!44027}
!44516 = !{!44027, !44017, !43990}
!44517 = !{!44027, !44017, !43985, !43984, !43982, !43981, !43980, !43979, !43953, !43949, !43946, !43948, !43944, !43943}
!44518 = !{!44029}
!44519 = !{!44029, !44017, !43990}
!44520 = !{!44029, !44017, !43985, !43984, !43982, !43981, !43980, !43979, !43953, !43949, !43946, !43948, !43944, !43943}
!44521 = !{!44031}
!44522 = !{!44032}
!44523 = !{!43985, !43984, !43982, !43981, !43980, !43979, !43951, !43953, !43952, !43949, !43946, !43947, !43948, !43944, !43943}
!44524 = !{!44034}
!44525 = !{!43985, !43984, !43982, !43981, !43980, !43979}
!44526 = !{!44035}
!44527 = !{!44035, !44032}
!44528 = !{!43985, !43984, !43982, !43981, !43980, !43979, !43953, !43952, !43949, !43946, !43948, !43944, !43943}
!44529 = !{!44034, !44031}
!44530 = !{!44034, !44036, !44035, !44031, !44032, !43985, !43984, !43982, !43981, !43980, !43979, !43953, !43949, !43946, !43948, !43944, !43943}
!44531 = !{!44038}
!44532 = !{!44039}
!44533 = !{!44039, !44032}
!44534 = !{!44038, !44031}
!44535 = !{!44038, !44040, !44039, !44031, !44032, !43985, !43984, !43982, !43981, !43980, !43979, !43953, !43949, !43946, !43948, !43944, !43943}
!44536 = !{!44042}
!44537 = !{!44043}
!44538 = !{!44043, !44032}
!44539 = !{!44042, !44031}
!44540 = !{!44042, !44044, !44043, !44031, !44032, !43985, !43984, !43982, !43981, !43980, !43979, !43953, !43949, !43946, !43948, !43944, !43943}
!44541 = !{!44046}
!44542 = !{!44047}
!44543 = !{!44047, !44032}
!44544 = !{!44046, !44031}
!44545 = !{!44049}
!44546 = !{!44050}
!44547 = !{!44050, !44032}
!44548 = !{!44049, !44031}
!44549 = !{!44049, !44051, !44050, !44031, !44032, !43985, !43984, !43982, !43981, !43980, !43979, !43953, !43949, !43946, !43948, !43944, !43943}
!44550 = !{!44053}
!44551 = !{!44054}
!44552 = !{!44054, !44032}
!44553 = !{!44053, !44031}
!44554 = !{!44053, !44055, !44054, !44031, !44032, !43985, !43984, !43982, !43981, !43980, !43979, !43953, !43949, !43946, !43948, !43944, !43943}
!44555 = !{!44057}
!44556 = !{!44058}
!44557 = !{!44058, !44032}
!44558 = !{!44057, !44031}
!44559 = !{!44046, !44059, !44047, !44031, !44032, !43985, !43984, !43982, !43981, !43980, !43979, !43953, !43949, !43946, !43948, !43944, !43943}
!44560 = !{!44061}
!44561 = !{!44062}
!44562 = !{!44061, !44063, !44062, !43985, !43984, !43982, !43981, !43980, !43979, !43953, !43949, !43946, !43948, !43944, !43943}
!44563 = !{!43985, !43984, !43982, !43981, !43980, !43979, !43953, !43949, !43946, !43947, !43948, !43944, !43943}
!44564 = !{!44057, !44064, !44058, !44031, !44032, !43985, !43984, !43982, !43981, !43980, !43979, !43953, !43949, !43946, !43948, !43944, !43943}
!44565 = !{!44066}
!44566 = !{!44067}
!44567 = !{!44066, !43990}
!44568 = !{!44066, !44068, !44067, !43985, !43984, !43982, !43981, !43980, !43979, !43953, !43949, !43946, !43948, !43944, !43943}
!44569 = !{!44070}
!44570 = !{!44071}
!44571 = !{!44070, !43990}
!44572 = !{!44073, !44070, !43990}
!44573 = !{!44070, !44071, !43985, !43984, !43982, !43981, !43980, !43979, !43953, !43949, !43946, !43948, !43944, !43943}
!44574 = !{!44073}
!44575 = !{!44074}
!44576 = !{!44074, !44071}
!44577 = !{!44073, !44075, !44074, !44070, !44071, !43985, !43984, !43982, !43981, !43980, !43979, !43953, !43949, !43946, !43948, !43944, !43943}
!44578 = !{!44077}
!44579 = !{!44078}
!44580 = !{!43985, !43984, !43951, !43953, !43952, !43949, !43946, !43947, !43948, !43944, !43943}
!44581 = !{!44080}
!44582 = !{!44078, !43985, !43984, !43951, !43953, !43952, !43949, !43946, !43947, !43948, !43944, !43943}
!44583 = !{!44085, !44084, !44083, !44082, !44081, !44080, !44078, !43985, !43984, !43953, !43949, !43946, !43948, !43944, !43943}
!44584 = !{!44088, !44087}
!44585 = !{!44085, !44084, !44082, !44081, !44080, !44078, !43985, !43984, !43949, !43946, !43944, !43943}
!44586 = !{!44090}
!44587 = !{!43985, !43984}
!44588 = !{!44091}
!44589 = !{!44092}
!44590 = !{!44096, !44095, !44094, !44093, !44077, !44078, !43985, !43984, !43953, !43949, !43946, !43948, !43944, !43943}
!44591 = !{!44091, !44077}
!44592 = !{!44092, !44078}
!44593 = !{!43985, !43984, !43953, !43952, !43949, !43946, !43948, !43944, !43943}
!44594 = !{!44090, !44091, !44092, !44096, !44095, !44094, !44093, !44077, !44078, !43985, !43984, !43953, !43949, !43946, !43948, !43944, !43943}
!44595 = !{!44102}
!44596 = !{!44107, !44106, !44105, !44104, !44103, !44102, !43985, !43984, !43953, !43949, !43946, !43948, !43944, !43943}
!44597 = !{!44110, !44109}
!44598 = !{!44107, !44106, !44104, !44103, !44102, !43985, !43984, !43949, !43946, !43944, !43943}
!44599 = !{!44112}
!44600 = !{!44112, !44113, !43985, !43984, !43982, !43981, !43980, !43979, !43953, !43949, !43946, !43948, !43944, !43943}
!44601 = !{!44112, !44113, !43985, !43984, !43982, !43981, !43980, !43979, !43951, !43953, !43952, !43949, !43946, !43947, !43948, !43944, !43943}
!44602 = !{!44114}
!44603 = !{!44115}
!44604 = !{!44001}
!44605 = !{!44114, !43990}
!44606 = !{!44115, !43990}
!44607 = !{!44004, !43990}
!44608 = !{!44013, !43985, !43984, !43982, !43981, !43980, !43979, !43953, !43949, !43946, !43948, !43944, !43943}
!44609 = !{!44117, !44013, !43985, !43984, !43982, !43981, !43980, !43979, !43953, !43949, !43946, !43948, !43944, !43943}
!44610 = !{!43985, !43984, !43994, !43982, !43981, !43980, !43979, !43990, !43951, !43953, !43952, !43949, !43946, !43947, !43948, !43944, !43943}
!44611 = !{!44119}
!44612 = !{!44123, !44121, !43985, !43984, !43982, !43981, !43980, !43979, !43953, !43949, !43946, !43948, !43944, !43943}
!44613 = !{!44121, !43985, !43984, !43982, !43981, !43980, !43979, !43953, !43949, !43946, !43948, !43944, !43943}
!44614 = !{!44125, !44119}
!44615 = !{!44127, !43985, !43984, !43982, !43981, !43980, !43979, !43953, !43949, !43946, !43948, !43944, !43943}
!44616 = !{!43985, !43984, !43982, !43981, !43980, !43979, !43953}
!44617 = !{!44129}
!44618 = !{!44130}
!44619 = !{!44129, !44130, !43985, !43984, !43982, !43981, !43980, !43979, !43953, !43949, !43946, !43948, !43944, !43943}
!44620 = !{!44129, !44130}
!44621 = !{!44132, !43985, !43984, !43982, !43981, !43980, !43979, !43953, !43949, !43946, !43948, !43944, !43943}
!44622 = !{!44136, !44134, !43985, !43984, !43982, !43981, !43980, !43979, !43953, !43949, !43946, !43948, !43944, !43943}
!44623 = !{!44134, !43985, !43984, !43982, !43981, !43980, !43979, !43953, !43949, !43946, !43948, !43944, !43943}
!44624 = !{!44138, !43990}
!44625 = !{!44140, !43985, !43984, !43982, !43981, !43980, !43979, !43953, !43949, !43946, !43948, !43944, !43943}
!44626 = !{!43999}
!44627 = !{!44141}
!44628 = !{!43999, !44142, !44141, !43985, !43984, !43982, !43981, !43980, !43979, !43953, !43949, !43946, !43948, !43944, !43943}
!44629 = !{!44144}
!44630 = !{!44147, !44146, !44144, !43985, !43984, !43982, !43981, !43980, !43979, !43953, !43949, !43946, !43948, !43944, !43943}
!44631 = !{!44150, !44149, !44144, !43985, !43984, !43982, !43981, !43980, !43979, !43953, !43949, !43946, !43948, !43944, !43943}
!44632 = !{!44153, !44152, !44144, !43985, !43984, !43982, !43981, !43980, !43979, !43953, !43949, !43946, !43948, !43944, !43943}
!44633 = !{!44156, !44155}
!44634 = !{!44144, !43985, !43984, !43982, !43981, !43980, !43979, !43953, !43949, !43946, !43948, !43944, !43943}
!44635 = !{!44158}
!44636 = !{!44159}
!44637 = !{!44160}
!44638 = !{!44158, !44159, !44161, !44160, !43985, !43984, !43982, !43981, !43980, !43979, !43951, !43953, !43952, !43949, !43946, !43947, !43948, !43944, !43943}
!44639 = !{!44163}
!44640 = !{!44164}
!44641 = !{!44163, !44159}
!44642 = !{!44164, !44160}
!44643 = !{!44163, !44165, !44164, !44158, !44159, !44161, !44160, !43985, !43984, !43982, !43981, !43980, !43979, !43953, !43949, !43946, !43948, !43944, !43943}
!44644 = !{!44158, !44159, !44161, !44160, !43985, !43984, !43982, !43981, !43980, !43979, !43953, !43949, !43946, !43948, !43944, !43943}
!44645 = !{!44163, !44165, !44164, !44158, !44159, !44161, !44160, !43985, !43984, !43982, !43981, !43980, !43979, !43951, !43953, !43952, !43949, !43946, !43947, !43948, !43944, !43943}
!44646 = !{!44167}
!44647 = !{!44167, !43990}
!44648 = !{!44167, !43985, !43984, !43982, !43981, !43980, !43979, !43953, !43949, !43946, !43948, !43944, !43943}
!44649 = !{!44169}
!44650 = !{!44169, !43985, !43984, !43982, !43981, !43980, !43979, !43953, !43949, !43946, !43948, !43944, !43943}
!44651 = !{!44171}
!44652 = !{!44176, !44175, !44174, !44173, !44172, !44171, !43985, !43984, !43953, !43949, !43946, !43948, !43944, !43943}
!44653 = !{!44179, !44178}
!44654 = !{!44176, !44175, !44173, !44172, !44171, !43985, !43984, !43949, !43946, !43944, !43943}
!44655 = !{!44181}
!44656 = !{!44186, !44185, !44184, !44183, !44182, !44181, !43985, !43984, !43953, !43949, !43946, !43948, !43944, !43943}
!44657 = !{!44189, !44188}
!44658 = !{!44186, !44185, !44183, !44182, !44181, !43985, !43984, !43949, !43946, !43944, !43943}
!44659 = !{!43994, !43951, !43947}
!44660 = !{!44191}
!44661 = !{!44193}
!44662 = !{!44195, !44193, !44191, !43946, !43943}
!44663 = !{!44197, !43951, !43953, !43952}
!44664 = !{!44198, !44197, !43953, !43949, !43948, !43944}
!44665 = !{!44193, !44191, !43946, !43943}
!44666 = !{!44193, !44191, !43949, !43946, !43944, !43943}
!44667 = !{!44201, !44200}
!44668 = !{!44203}
!44669 = !{!44204, !44203, !44201, !44200}
!44670 = !{!44207, !44206, !44204, !44203, !44201, !44200}
!44671 = !{!44212, !44210, !44209, !44207, !44206, !44204, !44203, !44201, !44200}
!44672 = !{!44210, !44209, !44207, !44206, !44204, !44203, !44201, !44200}
!44673 = !{!44215, !44214, !44207, !44206, !44204, !44203, !44201, !44200}
!44674 = !{!44217}
!44675 = !{!44219}
!44676 = !{!44221}
!44677 = !{!44223}
!44678 = !{!44223, !44221, !44219, !44217, !44204, !44203, !44201, !44200}
!44679 = !{!44225}
!44680 = !{!44227}
!44681 = !{!44229}
!44682 = !{!44229, !44227, !44225, !44223, !44221, !44219, !44217}
!44683 = !{!44231, !44204, !44203, !44201, !44200}
!44684 = !{!44229, !44233, !44227, !44232, !44231, !44225, !44223, !44221, !44219, !44217, !44204, !44203, !44201, !44200}
!44685 = !{!44239, !44238, !44236, !44235, !44229, !44233, !44227, !44232, !44231, !44225, !44223, !44221, !44219, !44217, !44204, !44203, !44201, !44200}
!44686 = !{!44241}
!44687 = !{!44243}
!44688 = !{!44236, !44235, !44204, !44203, !44201, !44200}
!44689 = !{!44246, !44245, !44236, !44235, !44229, !44233, !44227, !44232, !44231, !44225, !44223, !44221, !44219, !44217, !44204, !44203, !44201, !44200}
!44690 = !{!44248}
!44691 = !{!44250}
!44692 = !{!44252, !44229, !44227, !44225, !44223, !44221, !44219, !44217}
!44693 = !{!44254}
!44694 = !{!44256}
!44695 = !{!44258}
!44696 = !{!44259}
!44697 = !{!44258, !44256, !44254, !44229, !44227, !44225, !44223, !44221, !44219, !44217}
!44698 = !{!44261}
!44699 = !{!44263, !44261, !44259, !44256, !44254, !44229, !44227, !44225, !44223, !44221, !44219, !44217}
!44700 = !{!44266, !44265}
!44701 = !{!44271, !44261, !44269, !44258, !44259, !44268, !44256, !44267, !44254, !44204, !44203, !44201, !44200}
!44702 = !{!44261, !44259, !44256, !44254, !44229, !44227, !44225, !44223, !44221, !44219, !44217}
!44703 = !{!44273}
!44704 = !{!44274}
!44705 = !{!44273, !44274, !44204, !44203, !44201, !44200}
!44706 = !{!44276}
!44707 = !{!44277}
!44708 = !{!44276, !44277, !44273, !44274, !44229, !44233, !44227, !44232, !44231, !44225, !44223, !44221, !44219, !44217, !44204, !44203, !44201, !44200}
!44709 = !{!44279}
!44710 = !{!44280}
!44711 = !{!44280, !44276, !44274}
!44712 = !{!44277, !44273}
!44713 = !{!44282}
!44714 = !{!44282, !44204, !44203, !44201, !44200}
!44715 = !{!44284}
!44716 = !{!44285}
!44717 = !{!44284, !44285, !44273, !44274, !44229, !44233, !44227, !44232, !44231, !44225, !44223, !44221, !44219, !44217, !44204, !44203, !44201, !44200}
!44718 = !{!44287}
!44719 = !{!44288}
!44720 = !{!44288, !44284, !44274}
!44721 = !{!44285, !44273}
!44722 = !{!44290}
!44723 = !{!44290, !44204, !44203, !44201, !44200}
!44724 = !{!"branch_weights", !"expected", i32 7331393, i32 2140152255}
!44725 = !{!44293, !44204, !44203, !44201, !44200}
!44726 = !{!44296}
!44727 = !{!44298}
!44728 = !{!44300}
!44729 = !{!44302}
!44730 = !{!44304, !44302, !44300, !44298, !44296, !44203}
!44731 = !{!44306, !44223, !44221, !44219, !44217, !44201, !44200}
!44732 = !{!44308, !44307, !44306, !44204, !44201, !44200}
!44733 = !{!44302, !44300, !44298, !44296, !44203}
!44734 = !{!44302, !44300, !44298, !44296, !44204, !44203, !44201, !44200}
!44735 = !{!44310, !44223, !44221, !44219, !44217, !44204, !44203, !44201, !44200}
!44736 = !{!44312, !44223, !44221, !44219, !44217, !44204, !44203, !44201, !44200}
!44737 = !{!44314, !44223, !44221, !44219, !44217, !44204, !44203, !44201, !44200}
!44738 = !{!44316}
!44739 = !{!44314, !44204, !44203, !44201, !44200}
!44740 = !{!44318}
!44741 = !{!44320}
!44742 = !{!44320, !44318}
!44743 = !{!44320, !44318, !44204, !44203, !44201, !44200}
!44744 = !{!44324, !44322, !44320, !44318}
!44745 = !{!44326}
!44746 = !{!44328}
!44747 = !{!44328, !44326}
!44748 = !{!44328, !44326, !44204, !44203, !44201, !44200}
!44749 = !{!44332, !44330, !44328, !44326}
!44750 = !{!44334}
!44751 = !{!44334, !44201, !44200}
!44752 = !{!44200}
!44753 = !{!44336}
!44754 = !{!44338}
!44755 = !{!44340}
!44756 = !{!44342, !44340, !44338}
!44757 = !{!44340, !44338}
!44758 = !{!44344, !44340, !44338}
!44759 = !{!44346}
!44760 = !{!44348}
!44761 = !{!44350, !44348, !44346}
!44762 = !{!44348, !44346}
!44763 = !{!44352, !44348, !44346}
end_hunk_6
