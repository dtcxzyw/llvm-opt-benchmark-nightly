Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/shadowsocks-rs/original/sslocal.sslocal.5cb0643d8d9caf8b-cgu.0?download=true
inline.NumInlined: 35271
inline.NumDeleted: 15553
loop-unroll.NumCompletelyUnrolled: 89
loop-unroll.NumRuntimeUnrolled: 135
loop-unroll.NumUnrolled: 238
begin_hunk_0_@_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode15ReadHuffmanCodeNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB11_B11_ECs7XnEB7DeNXr_7sslocal:bb.a
  br i1 %i.hm, label %bb.bl, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.hn = icmp eq i16 %i.hg, 16                   ; 2 uses
  %..i52 = select i1 %i.hn, i32 2, i32 3          ; 3 uses
  %i.ho = zext nneg i32 %..i52 to i64
  %i.hp = and i32 %i.hk, 63
  %i.hq = zext nneg i32 %i.hp to i64
  %i.hr = lshr i64 %i.gz, %i.hq
  %i.hs = trunc i64 %i.hr to i32
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr @373, i64 %i.ho
  %i.hu = load i32, ptr %i.ht, align 4, !noalias !27420, !noundef !145
  %i.hv = and i32 %i.hu, %i.hs
  %i.hw = add i32 %i.hk, %..i52
  store i32 %i.hw, ptr %i.g, align 8, !alias.scope !27418
  %i.hx = load i64, ptr %i.m, align 8, !alias.scope !27418, !noundef !145
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27421)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27422)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27423)
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
  br i1 %i.ig, label %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode21ReadSymbolCodeLengthsNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB17_B17_ECs7XnEB7DeNXr_7sslocal.exit.thread81, label %bb.bb

bb.bb:                                            ; preds = %.thread.i.i
  %i.ih = icmp eq i32 %.sroa.07.0.i.i, 0
  br i1 %i.ih, label %_RNvNtCsl4v216RJbSI_19brotli_decompressor6decode25ProcessRepeatedCodeLength.exit.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ii = zext i32 %.sroa.07.0.i.i to i64         ; 4 uses
  %i.ij = icmp ult i32 %.sroa.07.0.i.i, 32
  br i1 %i.ij, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %i.gw, i64 %i.ii ; 2 uses
  %i.il = load i32, ptr %i.ik, align 4, !alias.scope !27424, !noundef !145
  %i.im = trunc i64 %i.hx to i32
  br label %bb.bf

bb.be:                                            ; preds = %bb.bc
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.ii, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2119) #62, !noalias !27425
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
  store i16 %i.is, ptr %i.ir, align 2, !alias.scope !27426
  %i.it = add i32 %i.in, 1                        ; 2 uses
  %i.iu = icmp eq i32 %i.it, %i.if
  br i1 %i.iu, label %bb.bi, label %bb.bf

bb.bh:                                            ; preds = %bb.bf
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.ip, i64 noundef 720, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2120) #62, !noalias !27425
  unreachable

bb.bi:                                            ; preds = %bb.bg
  store i32 %i.in, ptr %i.ik, align 4, !alias.scope !27424
  %i.iv = icmp ult i32 %.sroa.07.0.i.i, 16
  br i1 %i.iv, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.ii, i64 noundef 16, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2121) #62, !noalias !27425
  unreachable

bb.bk:                                            ; preds = %bb.bi
  %i.iw = sub nuw nsw i32 15, %.sroa.07.0.i.i
  %i.ix = shl i32 %i.ie, %i.iw
  %i.iy = sub i32 %.sroa.016.061.i, %i.ix
  %i.iz = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %i.ii ; 2 uses
  %i.ja = load i16, ptr %i.iz, align 2, !alias.scope !27427, !noundef !145
  %i.jb = trunc i32 %i.ie to i16
  %i.jc = add i16 %i.ja, %i.jb
  store i16 %i.jc, ptr %i.iz, align 2, !alias.scope !27427
  br label %_RNvNtCsl4v216RJbSI_19brotli_decompressor6decode25ProcessRepeatedCodeLength.exit.i

bb.bl:                                            ; preds = %bb.ax
  %i.jd = load i64, ptr %i.m, align 8, !alias.scope !27418, !noundef !145
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27428)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27429)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27430)
  %i.je = icmp eq i16 %i.hg, 0
  br i1 %i.je, label %_RNvNtCsl4v216RJbSI_19brotli_decompressor6decode23ProcessSingleCodeLength.exit.i, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.jf = zext nneg i16 %i.hg to i64              ; 2 uses
  %i.jg = trunc i64 %i.jd to i32
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %i.gw, i64 %i.jf ; 2 uses
  %i.ji = load i32, ptr %i.jh, align 4, !alias.scope !27431, !noundef !145
  %i.jj = add i32 %i.ji, %i.jg                    ; 2 uses
  %i.jk = sext i32 %i.jj to i64                   ; 2 uses
  %i.jl = icmp ult i32 %i.jj, 720
  br i1 %i.jl, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.jm = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %i.jk
  %i.jn = trunc i32 %.sroa.0.063.i to i16
  store i16 %i.jn, ptr %i.jm, align 2, !alias.scope !27432
  store i32 %.sroa.0.063.i, ptr %i.jh, align 4, !alias.scope !27431
  %i.jo = lshr exact i32 32768, %i.hl
  %i.jp = sub i32 %.sroa.016.061.i, %i.jo
  %i.jq = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %i.jf ; 2 uses
  %i.jr = load i16, ptr %i.jq, align 2, !alias.scope !27433, !noundef !145
  %i.js = add i16 %i.jr, 1
  store i16 %i.js, ptr %i.jq, align 2, !alias.scope !27433
  br label %_RNvNtCsl4v216RJbSI_19brotli_decompressor6decode23ProcessSingleCodeLength.exit.i

bb.bo:                                            ; preds = %bb.bm
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.jk, i64 noundef 720, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2118) #62, !noalias !27434
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
  br i1 %or.cond.i54, label %bb.aw, label %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode21ReadSymbolCodeLengthsNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB17_B17_ECs7XnEB7DeNXr_7sslocal.exit.thread81

_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode21ReadSymbolCodeLengthsNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB17_B17_ECs7XnEB7DeNXr_7sslocal.exit.thread81: ; preds = %.thread.i.i, %_RNvNtCsl4v216RJbSI_19brotli_decompressor6decode25ProcessRepeatedCodeLength.exit.i, %bb.av
  %.sroa.016.061.lcssa.sink.i.ph = phi i32 [ %i.gd, %bb.av ], [ 1048575, %.thread.i.i ], [ %.sroa.016.1.i, %_RNvNtCsl4v216RJbSI_19brotli_decompressor6decode25ProcessRepeatedCodeLength.exit.i ] ; 2 uses
  store i32 %.sroa.016.061.lcssa.sink.i.ph, ptr %i.d, align 4, !alias.scope !27418
  br label %.loopexit93

_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode21ReadSymbolCodeLengthsNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB17_B17_ECs7XnEB7DeNXr_7sslocal.exit: ; preds = %bb.aw
  store i32 %.sroa.0.063.i, ptr %i.o, align 4, !alias.scope !27418
  store i32 %.sroa.014.062.i, ptr %i.c, align 8, !alias.scope !27418
  store i32 %.sroa.020.060.i, ptr %i.p, align 8, !alias.scope !27418
  store i32 %.sroa.022.059.i, ptr %i.q, align 4, !alias.scope !27418
  store i32 %.sroa.016.061.i, ptr %i.d, align 4, !alias.scope !27418
  br label %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode21ReadSymbolCodeLengthsNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB17_B17_ECs7XnEB7DeNXr_7sslocal.exit.thread

.loopexit96:                                      ; preds = %bb.e, %.loopexit96.loopexit
  %i.jw = phi i64 [ %i.ak, %.loopexit96.loopexit ], [ %.promoted14.i, %bb.e ]
  %.lcssa7.i = phi i32 [ %i.al, %.loopexit96.loopexit ], [ %.promoted.i, %bb.e ] ; 2 uses
  %i.jx = and i32 %.lcssa7.i, 63
  %i.jy = zext nneg i32 %i.jx to i64
  %i.jz = lshr i64 %i.jw, %i.jy
  %i.ka = trunc i64 %i.jz to i32
  %i.kb = and i32 %i.ka, 3                        ; 2 uses
  store i32 %i.kb, ptr %i.e, align 4, !alias.scope !27397
  %i.kc = add i32 %.lcssa7.i, 2
  store i32 %i.kc, ptr %i.g, align 8, !alias.scope !27396
  %i.kd = icmp eq i32 %i.kb, 1
  br i1 %i.kd, label %bb.d, label %bb.c

_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit: ; preds = %bb.ca, %bb.cx, %._crit_edge.i.us.i, %bb.af, %._crit_edge.i49, %.lr.ph.i, %bb.am, %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit.i, %.thread, %.loopexit93, %bb.di, %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit64, %bb.bw, %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit44
  %.sroa.06.0 = phi i32 [ 2, %.lr.ph.i ], [ 2, %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit44 ], [ -7, %.thread ], [ 1, %bb.bw ], [ 2, %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit64 ], [ -6, %._crit_edge.i49 ], [ 1, %bb.di ], [ -7, %.loopexit93 ], [ 2, %bb.am ], [ -5, %bb.af ], [ -4, %._crit_edge.i.us.i ], [ 2, %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit.i ], [ 2, %bb.cx ], [ 2, %bb.ca ]
  ret i32 %.sroa.06.0

_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit44: ; preds = %.lr.ph.i39
  store i8 1, ptr %i.b, align 8
  br label %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit

bb.bp:                                            ; preds = %bb.ag
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27435)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27436)
  %.promoted.i55 = load i32, ptr %i.g, align 8, !alias.scope !27435 ; 2 uses
  %.not.i56 = icmp eq i32 %.promoted.i55, 64
  %.promoted14.i60 = load i64, ptr %i.f, align 8, !alias.scope !27435 ; 2 uses
  br i1 %.not.i56, label %bb.bq, label %.loopexit

bb.bq:                                            ; preds = %bb.bp
  %.promoted17.i61 = load i32, ptr %i.h, align 8, !alias.scope !27435 ; 2 uses
  %.promoted18.i62 = load i32, ptr %i.i, align 4, !alias.scope !27435 ; 3 uses
  %9 = icmp ult i32 %.promoted18.i62, %i.j
  %i.ke = zext i32 %.promoted18.i62 to i64        ; 2 uses
  %.fr = freeze i1 %9
  %i.kf = icmp eq i32 %.promoted17.i61, 0         ; 2 uses
  br i1 %.fr, label %bb.br, label %.lr.ph.i59.split

bb.br:                                            ; preds = %bb.bq
  br i1 %i.kf, label %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit64, label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %bb.br
  %i.kg = getelementptr inbounds nuw i8, ptr %7, i64 %i.ke
  %i.kh = load i8, ptr %i.kg, align 1, !alias.scope !27436, !noundef !145
  %i.ki = zext i8 %i.kh to i64
  %i.kj = tail call i64 @llvm.fshl.i64(i64 %i.ki, i64 %.promoted14.i60, i64 56) ; 2 uses
  store i64 %i.kj, ptr %i.f, align 8, !alias.scope !27435
  %i.kk = add i32 %.promoted17.i61, -1
  store i32 %i.kk, ptr %i.h, align 8, !alias.scope !27435
  %indvars.iv.next351 = add i32 %.promoted18.i62, 1
  store i32 %indvars.iv.next351, ptr %i.i, align 4, !alias.scope !27435
  br label %.loopexit

.lr.ph.i59.split:                                 ; preds = %bb.bq
  br i1 %i.kf, label %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit64, label %10

10:                                               ; preds = %.lr.ph.i59.split
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.ke, i64 noundef range(i64 8, 4097) %8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @379) #62, !noalias !27437
  unreachable

_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit64: ; preds = %.lr.ph.i59.split, %bb.br
  store i8 3, ptr %i.b, align 8
  br label %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit

.loopexit:                                        ; preds = %bb.bp, %.loopexit.loopexit
  %i.kl = phi i64 [ %i.kj, %.loopexit.loopexit ], [ %.promoted14.i60, %bb.bp ]
  %.lcssa7.i58 = phi i32 [ 56, %.loopexit.loopexit ], [ %.promoted.i55, %bb.bp ] ; 2 uses
  %i.km = and i32 %.lcssa7.i58, 63
  %i.kn = zext nneg i32 %i.km to i64
  %i.ko = lshr i64 %i.kl, %i.kn
  %i.kp = trunc i64 %i.ko to i32
  %i.kq = and i32 %i.kp, 1
  %i.kr = add i32 %.lcssa7.i58, 1
  store i32 %i.kr, ptr %i.g, align 8, !alias.scope !27435
  %i.ks = add nuw nsw i32 %i.kq, 3                ; 2 uses
  store i32 %i.ks, ptr %i.o, align 4
  br label %bb.bs

bb.bs:                                            ; preds = %bb.ag, %.loopexit
  %i.kt = phi i32 [ %i.dz, %bb.ag ], [ %i.ks, %.loopexit ]
  %i.ku = icmp ugt i64 %4, %3
  br i1 %i.ku, label %bb.bu, label %bb.bt, !prof !154

bb.bt:                                            ; preds = %bb.bs
  %i.kv = sub nuw nsw i64 %3, %4
  %i.kw = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %4
  %i.kx = tail call noundef i32 @_RNvNtCsl4v216RJbSI_19brotli_decompressor7huffman29BrotliBuildSimpleHuffmanTable(ptr noalias nofree noundef nonnull align 2 %i.kw, i64 noundef %i.kv, i32 noundef 8, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %i.n, i64 noundef 720, i32 noundef %i.kt) #52
  %.not32 = icmp eq ptr %5, null
  br i1 %.not32, label %bb.bw, label %bb.bv

bb.bu:                                            ; preds = %bb.bs
  tail call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %4, i64 noundef %3, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @359) #62
  unreachable

bb.bv:                                            ; preds = %bb.bt
  store i32 %i.kx, ptr %5, align 4
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bt
  store i8 0, ptr %i.b, align 8
  br label %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit

_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode25ReadCodeLengthCodeLengthsNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB1b_B1b_ECs7XnEB7DeNXr_7sslocal.exit: ; preds = %._crit_edge.i49
  tail call void @_RNvNtCsl4v216RJbSI_19brotli_decompressor7huffman34BrotliBuildCodeLengthsHuffmanTable(ptr noalias nofree noundef nonnull align 2 %6, i64 noundef 32, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.k, i64 noundef 18, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %i.l, i64 noundef 16) #52
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.l, i8 0, i64 32, i1 false)
  %.sroa.077.0.ptr = getelementptr inbounds nuw i8, ptr %6, i64 128
  store i32 -16, ptr %.sroa.077.0.ptr, align 8
  %i.ky = load i64, ptr %i.m, align 8, !noundef !145
  %i.kz = shl i64 %i.ky, 32
  %sext = add i64 %i.kz, -68719476736
  %i.la = ashr exact i64 %sext, 32                ; 3 uses
  %i.lb = icmp ult i64 %i.la, 720
  br i1 %i.lb, label %.preheader99.1, label %bb.bx

.preheader99.1:                                   ; preds = %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode25ReadCodeLengthCodeLengthsNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB1b_B1b_ECs7XnEB7DeNXr_7sslocal.exit
  %i.lc = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %i.la
  store i16 -1, ptr %i.lc, align 2
  %.sroa.077.0.ptr.1 = getelementptr inbounds nuw i8, ptr %6, i64 132
  store i32 -15, ptr %.sroa.077.0.ptr.1, align 4
  %i.ld = load i64, ptr %i.m, align 8, !noundef !145
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
  %i.li = load i64, ptr %i.m, align 8, !noundef !145
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
  %i.ln = load i64, ptr %i.m, align 8, !noundef !145
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
  %i.ls = load i64, ptr %i.m, align 8, !noundef !145
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
  %i.lx = load i64, ptr %i.m, align 8, !noundef !145
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
  %i.mc = load i64, ptr %i.m, align 8, !noundef !145
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
  %i.mh = load i64, ptr %i.m, align 8, !noundef !145
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
  %i.mm = load i64, ptr %i.m, align 8, !noundef !145
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
  %i.mr = load i64, ptr %i.m, align 8, !noundef !145
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
  %i.mw = load i64, ptr %i.m, align 8, !noundef !145
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
  %i.nb = load i64, ptr %i.m, align 8, !noundef !145
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
  %i.ng = load i64, ptr %i.m, align 8, !noundef !145
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
  %i.nl = load i64, ptr %i.m, align 8, !noundef !145
end_hunk_0
begin_hunk_1_@_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode15ReadHuffmanCodeNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB11_B11_ECs7XnEB7DeNXr_7sslocal:bb.a
  br label %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc noundef range(i32 -31, 4) i32 @_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode16DecodeContextMapNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB12_B12_ECs7XnEB7DeNXr_7sslocal(i64 noundef range(i64 0, 274877906881) %0, i1 noundef zeroext %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(2600) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef range(i64 8, 4097) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 7 uses
  %i.b = alloca [4 x i8], align 4                 ; 8 uses
  %i.c = alloca [1 x i8], align 1                 ; 3 uses
  %i.d = zext i1 %1 to i8
  store i8 %i.d, ptr %i.c, align 1
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 2326
  %i.f = load i8, ptr %i.e, align 2, !range !249, !noundef !145
  switch i8 %i.f, label %bb.b [
    i8 21, label %bb.c
    i8 22, label %bb.d
  ], !prof !250

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @352, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @366) #62
  unreachable

bb.c:                                             ; preds = %bb.a
  br i1 %1, label %bb.e, label %.critedge3, !prof !154

bb.d:                                             ; preds = %bb.a
  br i1 %1, label %.critedge3, label %bb.f, !prof !157

bb.e:                                             ; preds = %bb.c
  call void @_RINvNtCsf3Ta7LF998c_4core9panicking13assert_failedbbECsl4v216RJbSI_19brotli_decompressor(i8 noundef 0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.c, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) @6, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @364) #62
  unreachable

bb.f:                                             ; preds = %bb.d
  call void @_RINvNtCsf3Ta7LF998c_4core9panicking13assert_failedbbECsl4v216RJbSI_19brotli_decompressor(i8 noundef 0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.c, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) @224, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @365) #62
  unreachable

.critedge3:                                       ; preds = %bb.d, %bb.c
  %.sink = phi i64 [ 2292, %bb.c ], [ 2232, %bb.d ]
  %.sink117 = phi i64 [ 1840, %bb.c ], [ 1792, %bb.d ]
  %.sink116 = phi i64 [ 1848, %bb.c ], [ 1800, %bb.d ]
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 %.sink
  %.sroa.0.0 = load i32, ptr %i.g, align 4, !noundef !145 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 %.sink117 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !145, !noundef !145 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 %.sink116 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !noundef !145 ; 7 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.h, align 8
  store i64 0, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %.sroa.0.0, ptr %i.b, align 4
  %i.l = trunc i64 %0 to i32                      ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27502)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27503)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27504)
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
  %.pre.i = load i8, ptr %i.m, align 1, !range !193, !alias.scope !27503
  switch i8 %.pre.i, label %default.unreachable [
    i8 0, label %bb.i
    i8 1, label %bb.j
    i8 2, label %._crit_edge
    i8 3, label %._crit_edge71
    i8 4, label %bb.o
  ]

._crit_edge71:                                    ; preds = %.critedge3
  %.pre72 = load i32, ptr %i.p, align 8, !alias.scope !27503
  br label %bb.n

._crit_edge:                                      ; preds = %.critedge3
  %.pre = load i32, ptr %i.o, align 4, !alias.scope !27503
  br label %bb.m

._crit_edge.loopexit.i:                           ; preds = %.backedge.i, %bb.n
  store i8 4, ptr %i.m, align 1, !alias.scope !27503
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !27505
  br label %bb.o

bb.g:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2D0wXkiOfwW_12alloc_stdlib10heap_alloc7WrapBoxNtNtCsl4v216RJbSI_19brotli_decompressor7huffman11HuffmanCodeEECs7XnEB7DeNXr_7sslocal.exit.i
  store i32 65535, ptr %i.p, align 8, !alias.scope !27503
  store i8 3, ptr %i.m, align 1, !alias.scope !27503
  br label %bb.n

bb.h:                                             ; preds = %bb.w
  store i8 1, ptr %i.m, align 1, !alias.scope !27503
  br label %bb.j

default.unreachable:                              ; preds = %.critedge3
  unreachable

bb.i:                                             ; preds = %.critedge3
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 2330
  %i.aa = call noundef i32 @_RNvNtCsl4v216RJbSI_19brotli_decompressor6decode17DecodeVarLenUint8(ptr noalias nofree noundef nonnull dereferenceable(1) %i.z, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s, ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef range(i64 8, 4097) %4) #52, !noalias !27506 ; 2 uses
  %i.ab = icmp eq i32 %i.aa, 1
  br i1 %i.ab, label %bb.s, label %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode21DecodeContextMapInnerNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB17_B17_ECs7XnEB7DeNXr_7sslocal.exit

bb.j:                                             ; preds = %bb.h, %.critedge3
  %i.ac = phi i32 [ %i.bl, %bb.h ], [ %.sroa.0.0, %.critedge3 ]
  %.sroa.11.4 = phi i64 [ %i.x, %bb.h ], [ %i.k, %.critedge3 ] ; 2 uses
  %.sroa.0.4 = phi ptr [ %i.bj, %bb.h ], [ %i.i, %.critedge3 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !27507)
  call void @llvm.experimental.noalias.scope.decl(metadata !27508)
  %.promoted.i.i = load i32, ptr %i.t, align 8, !alias.scope !27509 ; 3 uses
  %i.ad = add i32 %.promoted.i.i, -60
  %.not.i.i = icmp ult i32 %i.ad, 5
  %.promoted11.i.i = load i64, ptr %i.s, align 8, !alias.scope !27509 ; 2 uses
  br i1 %.not.i.i, label %.lr.ph.i.i, label %.loopexit81.i

.lr.ph.i.i:                                       ; preds = %bb.j
  %.promoted13.i.i = load i32, ptr %i.u, align 8, !alias.scope !27509 ; 2 uses
  %.promoted14.i.i = load i32, ptr %i.v, align 4, !alias.scope !27509 ; 3 uses
  %i.ae = zext i32 %.promoted14.i.i to i64        ; 2 uses
  %i.af = icmp eq i32 %.promoted13.i.i, 0
  br i1 %i.af, label %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode21DecodeContextMapInnerNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB17_B17_ECs7XnEB7DeNXr_7sslocal.exit, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i
  %exitcond208.not.not.i = icmp ult i32 %.promoted14.i.i, %i.w
  br i1 %exitcond208.not.not.i, label %.loopexit81.loopexit.i, label %bb.l

.loopexit81.loopexit.i:                           ; preds = %bb.k
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 %i.ae
  %i.ah = load i8, ptr %i.ag, align 1, !alias.scope !27510, !noundef !145
  %i.ai = zext i8 %i.ah to i64
  %i.aj = call i64 @llvm.fshl.i64(i64 %i.ai, i64 %.promoted11.i.i, i64 56) ; 2 uses
  store i64 %i.aj, ptr %i.s, align 8, !alias.scope !27509
  %i.ak = add nsw i32 %.promoted.i.i, -8
  %i.al = add i32 %.promoted13.i.i, -1
  store i32 %i.al, ptr %i.u, align 8, !alias.scope !27509
  %indvars.iv.next204.i = add nuw nsw i32 %.promoted14.i.i, 1
  store i32 %indvars.iv.next204.i, ptr %i.v, align 4, !alias.scope !27509
  br label %.loopexit81.i

bb.l:                                             ; preds = %bb.k
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.ae, i64 noundef range(i64 8, 4097) %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @379) #62, !noalias !27511
  unreachable

bb.m:                                             ; preds = %._crit_edge, %.loopexit81.i
  %i.am = phi i32 [ %.sink257.i, %.loopexit81.i ], [ %.pre, %._crit_edge ]
  %i.an = phi i32 [ %i.ac, %.loopexit81.i ], [ %.sroa.0.0, %._crit_edge ]
  %.sroa.11.3 = phi i64 [ %.sroa.11.4, %.loopexit81.i ], [ %i.k, %._crit_edge ] ; 2 uses
  %.sroa.0.3 = phi ptr [ %.sroa.0.4, %.loopexit81.i ], [ %i.i, %._crit_edge ] ; 2 uses
  %i.ao = load ptr, ptr %i.q, align 8, !alias.scope !27503, !nonnull !145, !align !213, !noundef !145 ; 2 uses
  %i.ap = load i64, ptr %i.r, align 8, !alias.scope !27503, !noundef !145 ; 2 uses
  store ptr inttoptr (i64 2 to ptr), ptr %i.q, align 8, !alias.scope !27503
  store i64 0, ptr %i.r, align 8, !alias.scope !27503
  %i.aq = add i32 %i.am, %i.an                    ; 2 uses
  %i.ar = call fastcc noundef i32 @_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode15ReadHuffmanCodeNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB11_B11_ECs7XnEB7DeNXr_7sslocal(i32 noundef %i.aq, i32 noundef %i.aq, ptr noalias nofree noundef nonnull align 2 %i.ao, i64 noundef %i.ap, i64 noundef 0, ptr noalias nofree noundef align 4 dereferenceable_or_null(4) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(2600) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef range(i64 8, 4097) %4) #52, !noalias !27506 ; 2 uses
  %i.as = load ptr, ptr %i.q, align 8, !alias.scope !27503, !nonnull !145, !align !213, !noundef !145
  %i.at = load i64, ptr %i.r, align 8, !alias.scope !27503, !noundef !145 ; 2 uses
  store ptr %i.ao, ptr %i.q, align 8, !alias.scope !27503
  store i64 %i.ap, ptr %i.r, align 8, !alias.scope !27503
  %i.au = icmp eq i64 %i.at, 0
  br i1 %i.au, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2D0wXkiOfwW_12alloc_stdlib10heap_alloc7WrapBoxNtNtCsl4v216RJbSI_19brotli_decompressor7huffman11HuffmanCodeEECs7XnEB7DeNXr_7sslocal.exit.i, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i: ; preds = %bb.m
  %i.av = shl nuw nsw i64 %i.at, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.as, i64 noundef %i.av, i64 noundef 2) #52, !noalias !27506
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2D0wXkiOfwW_12alloc_stdlib10heap_alloc7WrapBoxNtNtCsl4v216RJbSI_19brotli_decompressor7huffman11HuffmanCodeEECs7XnEB7DeNXr_7sslocal.exit.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2D0wXkiOfwW_12alloc_stdlib10heap_alloc7WrapBoxNtNtCsl4v216RJbSI_19brotli_decompressor7huffman11HuffmanCodeEECs7XnEB7DeNXr_7sslocal.exit.i: ; preds = %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i, %bb.m
  %i.aw = icmp eq i32 %i.ar, 1
  br i1 %i.aw, label %bb.g, label %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode21DecodeContextMapInnerNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB17_B17_ECs7XnEB7DeNXr_7sslocal.exit

bb.n:                                             ; preds = %._crit_edge71, %bb.g
  %i.ax = phi i32 [ 65535, %bb.g ], [ %.pre72, %._crit_edge71 ] ; 2 uses
  %.sroa.11.2 = phi i64 [ %.sroa.11.3, %bb.g ], [ %i.k, %._crit_edge71 ] ; 10 uses
  %.sroa.0.2 = phi ptr [ %.sroa.0.3, %bb.g ], [ %i.i, %._crit_edge71 ] ; 6 uses
  %i.ay = load i32, ptr %i.n, align 8, !alias.scope !27503, !noundef !145 ; 2 uses
  %i.az = load i32, ptr %i.o, align 4, !alias.scope !27503, !noundef !145 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !27505
  store i32 %i.ax, ptr %i.a, align 4, !noalias !27505
  %i.ba = icmp ne i32 %i.ax, 65535                ; 2 uses
  %i.bb = icmp ult i32 %i.ay, %i.l
  %or.cond158.i = or i1 %i.bb, %i.ba
  br i1 %or.cond158.i, label %.lr.ph.i, label %._crit_edge.loopexit.i

bb.o:                                             ; preds = %._crit_edge.loopexit.i, %.critedge3
  %.sroa.11.1 = phi i64 [ %.sroa.11.2, %._crit_edge.loopexit.i ], [ %i.k, %.critedge3 ] ; 4 uses
  %.sroa.0.1 = phi ptr [ %.sroa.0.2, %._crit_edge.loopexit.i ], [ %i.i, %.critedge3 ] ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !27512)
  call void @llvm.experimental.noalias.scope.decl(metadata !27513)
  %.promoted.i43.i = load i32, ptr %i.t, align 8, !alias.scope !27514 ; 2 uses
  %.not.i44.i = icmp eq i32 %.promoted.i43.i, 64
  %.promoted14.i48.i = load i64, ptr %i.s, align 8, !alias.scope !27514 ; 2 uses
  br i1 %.not.i44.i, label %bb.p, label %.loopexit.i

bb.p:                                             ; preds = %bb.o
  %.promoted17.i.i = load i32, ptr %i.u, align 8, !alias.scope !27514 ; 2 uses
  %.promoted18.i.i = load i32, ptr %i.v, align 4, !alias.scope !27514 ; 3 uses
  %5 = icmp ult i32 %.promoted18.i.i, %i.w
  %i.bc = zext i32 %.promoted18.i.i to i64        ; 2 uses
  %.fr.i = freeze i1 %5
  %i.bd = icmp eq i32 %.promoted17.i.i, 0         ; 2 uses
  br i1 %.fr.i, label %.lr.ph.i47.split.us.i, label %.lr.ph.i47.split.i

.lr.ph.i47.split.us.i:                            ; preds = %bb.p
  br i1 %i.bd, label %.loopexit.loopexit.i, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i47.split.us.i
  %6 = getelementptr inbounds nuw i8, ptr %3, i64 %i.bc
  %7 = load i8, ptr %6, align 1, !alias.scope !27515, !noundef !145
  %8 = zext i8 %7 to i64
  %9 = call i64 @llvm.fshl.i64(i64 %8, i64 %.promoted14.i48.i, i64 56) ; 2 uses
  store i64 %9, ptr %i.s, align 8, !alias.scope !27514
  %10 = add i32 %.promoted17.i.i, -1
  store i32 %10, ptr %i.u, align 8, !alias.scope !27514
  %indvars.iv.next210.us.i = add i32 %.promoted18.i.i, 1
  store i32 %indvars.iv.next210.us.i, ptr %i.v, align 4, !alias.scope !27514
  br label %.loopexit.i

.lr.ph.i47.split.i:                               ; preds = %bb.p
  br i1 %i.bd, label %.loopexit.loopexit.i, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i47.split.i
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.bc, i64 noundef range(i64 8, 4097) %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @379) #62, !noalias !27516
  unreachable

bb.s:                                             ; preds = %bb.i
  %i.be = load i32, ptr %i.b, align 4, !alias.scope !27502, !noundef !145
  %i.bf = add i32 %i.be, 1
  store i32 %i.bf, ptr %i.b, align 4, !alias.scope !27502
  store i32 0, ptr %i.n, align 8, !alias.scope !27503
  br i1 %i.y, label %_RNvXNtCs2D0wXkiOfwW_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs5NNYTrzbB3N_15alloc_no_stdlib15stack_allocator9AllocatorhE10alloc_cellCs7XnEB7DeNXr_7sslocal.exit.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52, !noalias !27517
  %i.bg = call noundef ptr @_RNvCsh0WfaQiVYm0_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 4294967296) %i.x, i64 noundef range(i64 1, 17) 1) #52, !noalias !27517 ; 2 uses
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bi = ptrtoint ptr %i.bg to i64
  br label %_RNvXNtCs2D0wXkiOfwW_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs5NNYTrzbB3N_15alloc_no_stdlib15stack_allocator9AllocatorhE10alloc_cellCs7XnEB7DeNXr_7sslocal.exit.i

bb.v:                                             ; preds = %bb.t
  call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef 1, i64 range(i64 -2147483582, 4294967296) %i.x) #61, !noalias !27518
  unreachable

_RNvXNtCs2D0wXkiOfwW_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs5NNYTrzbB3N_15alloc_no_stdlib15stack_allocator9AllocatorhE10alloc_cellCs7XnEB7DeNXr_7sslocal.exit.i: ; preds = %bb.u, %bb.s
  %.sroa.10.0.i.i.i = phi i64 [ %i.bi, %bb.u ], [ 1, %bb.s ]
  %i.bj = inttoptr i64 %.sroa.10.0.i.i.i to ptr   ; 5 uses
  %i.bk = icmp eq i64 %i.k, 0
  br i1 %i.bk, label %bb.w, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i49.i

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i49.i: ; preds = %_RNvXNtCs2D0wXkiOfwW_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs5NNYTrzbB3N_15alloc_no_stdlib15stack_allocator9AllocatorhE10alloc_cellCs7XnEB7DeNXr_7sslocal.exit.i
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.i, i64 noundef %i.k, i64 noundef 1) #52, !noalias !27519
  br label %bb.w

bb.w:                                             ; preds = %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i49.i, %_RNvXNtCs2D0wXkiOfwW_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs5NNYTrzbB3N_15alloc_no_stdlib15stack_allocator9AllocatorhE10alloc_cellCs7XnEB7DeNXr_7sslocal.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bj) ]
  %i.bl = load i32, ptr %i.b, align 4, !alias.scope !27502, !noundef !145 ; 2 uses
  %i.bm = icmp ult i32 %i.bl, 2
  br i1 %i.bm, label %bb.x, label %bb.h

bb.x:                                             ; preds = %bb.w
  br i1 %i.y, label %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode21DecodeContextMapInnerNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB17_B17_ECs7XnEB7DeNXr_7sslocal.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.x
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.bj, i8 0, i64 range(i64 0, -9223372036854775808) %i.x, i1 false), !alias.scope !27520, !noalias !27506
  br label %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode21DecodeContextMapInnerNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB17_B17_ECs7XnEB7DeNXr_7sslocal.exit

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
  store i32 %.sink257.i, ptr %i.o, align 4, !alias.scope !27503
  %i.by = add i32 %.sink.i, %i.bo
  store i32 %i.by, ptr %i.t, align 8, !alias.scope !27503
  store i8 2, ptr %i.m, align 1, !alias.scope !27503
  br label %bb.m

.lr.ph.i:                                         ; preds = %bb.n, %.backedge.i
  %.sroa.04.0160.i = phi i32 [ %.sroa.04.0.be.i, %.backedge.i ], [ %i.ay, %bb.n ] ; 12 uses
  %.sroa.014.0159.i = phi i1 [ false, %.backedge.i ], [ %i.ba, %bb.n ]
  br i1 %.sroa.014.0159.i, label %thread-pre-split.i, label %bb.y

bb.y:                                             ; preds = %.lr.ph.i
  %.val33.i = load ptr, ptr %i.q, align 8, !alias.scope !27503, !nonnull !145, !noundef !145
  %.val34.i = load i64, ptr %i.r, align 8, !alias.scope !27503, !noundef !145
  %i.bz = call noundef zeroext i1 @_RNvNtCsl4v216RJbSI_19brotli_decompressor6decode14SafeReadSymbol(ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %.val33.i, i64 noundef %.val34.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s, ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef range(i64 8, 4097) %4) #52, !noalias !27506
  br i1 %i.bz, label %bb.af, label %.loopexit82.sink.split.i

thread-pre-split.i:                               ; preds = %.lr.ph.i
  %.pr.i = load i32, ptr %i.a, align 4, !noalias !27505
  br label %bb.z

bb.z:                                             ; preds = %bb.ah, %thread-pre-split.i
  %i.ca = phi i32 [ %.pr.i, %thread-pre-split.i ], [ %i.cs, %bb.ah ] ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !27521)
  call void @llvm.experimental.noalias.scope.decl(metadata !27522)
  %.promoted.i55.i = load i32, ptr %i.t, align 8, !alias.scope !27523 ; 3 uses
  %i.cb = sub i32 64, %.promoted.i55.i
  %.not.i56.i = icmp ult i32 %i.cb, %i.ca
  br i1 %.not.i56.i, label %.lr.ph.i59.i, label %._crit_edge.i57.i

.lr.ph.i59.i:                                     ; preds = %bb.z
  %.promoted17.i61.i = load i32, ptr %i.u, align 8, !alias.scope !27523 ; 2 uses
  %.promoted18.i62.i = load i32, ptr %i.v, align 4, !alias.scope !27523 ; 2 uses
  %umax.i = call i32 @llvm.umax.i32(i32 %.promoted18.i62.i, i32 %i.w)
  %wide.trip.count.i = zext i32 %umax.i to i64    ; 2 uses
  %i.cc = icmp eq i32 %.promoted17.i61.i, 0
  br i1 %i.cc, label %.loopexit82.sink.split.i, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.i59.i
  %i.cd = zext i32 %.promoted18.i62.i to i64
  %.promoted14.i60.i = load i64, ptr %i.s, align 8, !alias.scope !27523
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
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.ce, i64 noundef 33, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @375) #62, !noalias !27524
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
  %i.cl = load i8, ptr %i.ck, align 1, !alias.scope !27525, !noundef !145
  %i.cm = zext i8 %i.cl to i64
  %i.cn = call i64 @llvm.fshl.i64(i64 %i.cm, i64 %i.ch, i64 56) ; 2 uses
  store i64 %i.cn, ptr %i.s, align 8, !alias.scope !27523
  %i.co = add i32 %i.ci, -8                       ; 3 uses
  store i32 %i.co, ptr %i.t, align 8, !alias.scope !27523
  %i.cp = add i32 %i.cj, -1                       ; 3 uses
  store i32 %i.cp, ptr %i.u, align 8, !alias.scope !27523
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i142, 1 ; 2 uses
  %i.cq = trunc nuw nsw i64 %indvars.iv.next.i to i32
  store i32 %i.cq, ptr %i.v, align 4, !alias.scope !27523
  %i.cr = sub i32 72, %i.ci
  %.not19.i63.i = icmp ult i32 %i.cr, %i.ca
  br i1 %.not19.i63.i, label %bb.aa, label %._crit_edge.i57.i

bb.ae:                                            ; preds = %bb.ac
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %wide.trip.count.i, i64 noundef range(i64 8, 4097) %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @379) #62, !noalias !27524
  unreachable

bb.af:                                            ; preds = %bb.y
  %i.cs = load i32, ptr %i.a, align 4, !noalias !27505, !noundef !145 ; 4 uses
  %i.ct = icmp eq i32 %i.cs, 0
  br i1 %i.ct, label %bb.ag, label %bb.ah

.loopexit82.sink.split.i:                         ; preds = %bb.y, %.lr.ph.i59.i, %bb.aa
  %.lcssa241.sink.i = phi i32 [ %i.ca, %bb.aa ], [ 65535, %bb.y ], [ %i.ca, %.lr.ph.i59.i ]
  store i32 %.lcssa241.sink.i, ptr %i.p, align 8, !alias.scope !27503
  store i32 %.sroa.04.0160.i, ptr %i.n, align 8, !alias.scope !27503
  br label %.loopexit82.i

.loopexit82.i:                                    ; preds = %bb.ao, %.loopexit82.sink.split.i
  %.sroa.0.1.i = phi i32 [ 2, %.loopexit82.sink.split.i ], [ -8, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !27505
  br label %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode21DecodeContextMapInnerNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB17_B17_ECs7XnEB7DeNXr_7sslocal.exit

bb.ag:                                            ; preds = %bb.af
  %i.cu = zext i32 %.sroa.04.0160.i to i64        ; 3 uses
  %i.cv = icmp ugt i64 %.sroa.11.2, %i.cu
  br i1 %i.cv, label %bb.ai, label %bb.aj

bb.ah:                                            ; preds = %bb.af
  %i.cw = icmp ugt i32 %i.cs, %i.az
  br i1 %i.cw, label %bb.al, label %bb.z

bb.ai:                                            ; preds = %bb.ag
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 %i.cu
  store i8 0, ptr %i.cx, align 1, !noalias !27506
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ag
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.cu, i64 noundef %.sroa.11.2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @376) #62, !noalias !27506
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
  store i8 %i.dd, ptr %i.dc, align 1, !noalias !27506
  br label %bb.ak

bb.an:                                            ; preds = %bb.al
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.cz, i64 noundef %.sroa.11.2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @377) #62, !noalias !27506
  unreachable

bb.ao:                                            ; preds = %._crit_edge.i57.i
  %i.de = load i64, ptr %i.s, align 8, !alias.scope !27523, !noundef !145
  %i.df = and i32 %.lcssa7.i58.i, 63
  %i.dg = zext nneg i32 %i.df to i64
  %i.dh = lshr i64 %i.de, %i.dg
  %i.di = trunc i64 %i.dh to i32
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr @373, i64 %i.ce
  %i.dk = load i32, ptr %i.dj, align 4, !noalias !27526, !noundef !145
  %i.dl = and i32 %i.dk, %i.di                    ; 3 uses
  %i.dm = add i32 %.lcssa7.i58.i, %i.ca
  store i32 %i.dm, ptr %i.t, align 8, !alias.scope !27523
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
  store <16 x i8> zeroinitializer, ptr %i.ep, align 1, !noalias !27506
  store <16 x i8> zeroinitializer, ptr %i.eq, align 1, !noalias !27506
  %index.next = add nuw i32 %index, 32            ; 2 uses
  %i.er = icmp eq i32 %index.next, %n.vec
  br i1 %i.er, label %.preheader.i.preheader147, label %vector.body, !llvm.loop !27496

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
  store i8 0, ptr %i.eu, align 1, !noalias !27506
  %i.ev = add i32 %.sroa.04.2.i, 1                ; 2 uses
  %i.ew = add i32 %.sroa.070.0.i, -1              ; 2 uses
  %i.ex = icmp eq i32 %i.ew, 0
  br i1 %i.ex, label %.backedge.i, label %.preheader.i, !llvm.loop !27497

bb.aq:                                            ; preds = %.preheader.i
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.es, i64 noundef %.sroa.11.2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @378) #62, !noalias !27506
  unreachable

.loopexit.loopexit.i:                             ; preds = %.lr.ph.i47.split.i, %.lr.ph.i47.split.us.i
  store i8 4, ptr %i.m, align 1, !alias.scope !27503
  br label %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode21DecodeContextMapInnerNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB17_B17_ECs7XnEB7DeNXr_7sslocal.exit

.loopexit.i:                                      ; preds = %bb.o, %bb.q
  %i.ey = phi i64 [ %9, %bb.q ], [ %.promoted14.i48.i, %bb.o ]
  %.lcssa7.i46.i = phi i32 [ 56, %bb.q ], [ %.promoted.i43.i, %bb.o ] ; 2 uses
  %i.ez = and i32 %.lcssa7.i46.i, 63
  %i.fa = zext nneg i32 %i.ez to i64
  %i.fb = add i32 %.lcssa7.i46.i, 1
  store i32 %i.fb, ptr %i.t, align 8, !alias.scope !27514
  %i.fc = shl nuw i64 1, %i.fa
  %i.fd = and i64 %i.fc, %i.ey
  %i.fe = icmp eq i64 %i.fd, 0
  br i1 %i.fe, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %.loopexit.i
  %i.ff = getelementptr inbounds nuw i8, ptr %2, i64 2331
  %i.fg = load i8, ptr %i.ff, align 1, !range !148, !alias.scope !27503, !noundef !145
  %i.fh = trunc nuw i8 %i.fg to i1
  br i1 %i.fh, label %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode21DecodeContextMapInnerNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB17_B17_ECs7XnEB7DeNXr_7sslocal.exit, label %bb.at

bb.as:                                            ; preds = %bb.at, %.loopexit.i
  store i8 0, ptr %i.m, align 1, !alias.scope !27503
  br label %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode21DecodeContextMapInnerNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB17_B17_ECs7XnEB7DeNXr_7sslocal.exit

bb.at:                                            ; preds = %bb.ar
  %i.fi = getelementptr inbounds nuw i8, ptr %2, i64 2332
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.1) ]
  %i.fj = getelementptr inbounds nuw i8, ptr %2, i64 2284
  call void @_RNvNtCsl4v216RJbSI_19brotli_decompressor6decode27InverseMoveToFrontTransform(ptr noalias nofree noundef nonnull %.sroa.0.1, i64 noundef %.sroa.11.1, i32 noundef %i.l, ptr noalias nofree noundef nonnull dereferenceable(256) %i.fi, ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.fj) #52, !noalias !27506
  br label %bb.as

_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode21DecodeContextMapInnerNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB17_B17_ECs7XnEB7DeNXr_7sslocal.exit: ; preds = %bb.i, %.lr.ph.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2D0wXkiOfwW_12alloc_stdlib10heap_alloc7WrapBoxNtNtCsl4v216RJbSI_19brotli_decompressor7huffman11HuffmanCodeEECs7XnEB7DeNXr_7sslocal.exit.i, %bb.x, %.lr.ph.preheader.i.i, %.loopexit82.i, %.loopexit.loopexit.i, %bb.ar, %bb.as
  %.sroa.11.5 = phi i64 [ 0, %bb.x ], [ %i.x, %.lr.ph.preheader.i.i ], [ %.sroa.11.4, %.lr.ph.i.i ], [ %.sroa.11.2, %.loopexit82.i ], [ %.sroa.11.1, %.loopexit.loopexit.i ], [ %.sroa.11.1, %bb.as ], [ %.sroa.11.1, %bb.ar ], [ %.sroa.11.3, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2D0wXkiOfwW_12alloc_stdlib10heap_alloc7WrapBoxNtNtCsl4v216RJbSI_19brotli_decompressor7huffman11HuffmanCodeEECs7XnEB7DeNXr_7sslocal.exit.i ], [ %i.k, %bb.i ] ; 2 uses
  %.sroa.0.5 = phi ptr [ %i.bj, %bb.x ], [ %i.bj, %.lr.ph.preheader.i.i ], [ %.sroa.0.4, %.lr.ph.i.i ], [ %.sroa.0.2, %.loopexit82.i ], [ %.sroa.0.1, %.loopexit.loopexit.i ], [ %.sroa.0.1, %bb.as ], [ %.sroa.0.1, %bb.ar ], [ %.sroa.0.3, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2D0wXkiOfwW_12alloc_stdlib10heap_alloc7WrapBoxNtNtCsl4v216RJbSI_19brotli_decompressor7huffman11HuffmanCodeEECs7XnEB7DeNXr_7sslocal.exit.i ], [ %i.i, %bb.i ] ; 2 uses
  %.sroa.0.0.i = phi i32 [ 1, %bb.x ], [ 1, %.lr.ph.preheader.i.i ], [ 2, %.lr.ph.i.i ], [ %.sroa.0.1.i, %.loopexit82.i ], [ 2, %.loopexit.loopexit.i ], [ 1, %bb.as ], [ -31, %bb.ar ], [ %i.ar, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2D0wXkiOfwW_12alloc_stdlib10heap_alloc7WrapBoxNtNtCsl4v216RJbSI_19brotli_decompressor7huffman11HuffmanCodeEECs7XnEB7DeNXr_7sslocal.exit.i ], [ %i.aa, %bb.i ]
  %i.fk = load i32, ptr %i.b, align 4, !noundef !145 ; 2 uses
  br i1 %1, label %bb.av, label %bb.au

bb.au:                                            ; preds = %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode21DecodeContextMapInnerNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB17_B17_ECs7XnEB7DeNXr_7sslocal.exit
  %i.fl = getelementptr inbounds nuw i8, ptr %2, i64 2292
  store i32 %i.fk, ptr %i.fl, align 4
  %i.fm = getelementptr inbounds nuw i8, ptr %2, i64 1840 ; 2 uses
  %i.fn = load ptr, ptr %i.fm, align 8, !nonnull !145, !noundef !145
  %i.fo = getelementptr inbounds nuw i8, ptr %2, i64 1848 ; 2 uses
  %i.fp = load i64, ptr %i.fo, align 8, !noundef !145 ; 2 uses
  store ptr %.sroa.0.5, ptr %i.fm, align 8
  store i64 %.sroa.11.5, ptr %i.fo, align 8
  %i.fq = icmp eq i64 %i.fp, 0
  br i1 %i.fq, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2D0wXkiOfwW_12alloc_stdlib10heap_alloc7WrapBoxhEECs7XnEB7DeNXr_7sslocal.exit12, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i: ; preds = %bb.au
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.fn, i64 noundef %i.fp, i64 noundef 1) #52, !noalias !27527
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2D0wXkiOfwW_12alloc_stdlib10heap_alloc7WrapBoxhEECs7XnEB7DeNXr_7sslocal.exit12

bb.av:                                            ; preds = %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode21DecodeContextMapInnerNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB17_B17_ECs7XnEB7DeNXr_7sslocal.exit
  %i.fr = getelementptr inbounds nuw i8, ptr %2, i64 2232
  store i32 %i.fk, ptr %i.fr, align 8
  %i.fs = getelementptr inbounds nuw i8, ptr %2, i64 1792 ; 2 uses
  %i.ft = load ptr, ptr %i.fs, align 8, !nonnull !145, !noundef !145
  %i.fu = getelementptr inbounds nuw i8, ptr %2, i64 1800 ; 2 uses
  %i.fv = load i64, ptr %i.fu, align 8, !noundef !145 ; 2 uses
  store ptr %.sroa.0.5, ptr %i.fs, align 8
  store i64 %.sroa.11.5, ptr %i.fu, align 8
  %i.fw = icmp eq i64 %i.fv, 0
  br i1 %i.fw, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2D0wXkiOfwW_12alloc_stdlib10heap_alloc7WrapBoxhEECs7XnEB7DeNXr_7sslocal.exit12, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i9

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i9: ; preds = %bb.av
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ft, i64 noundef %i.fv, i64 noundef 1) #52, !noalias !27528
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2D0wXkiOfwW_12alloc_stdlib10heap_alloc7WrapBoxhEECs7XnEB7DeNXr_7sslocal.exit12

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2D0wXkiOfwW_12alloc_stdlib10heap_alloc7WrapBoxhEECs7XnEB7DeNXr_7sslocal.exit12: ; preds = %bb.au, %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i, %bb.av, %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i32 %.sroa.0.0.i
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode19ReadCommandInternalNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB15_B15_ECs7XnEB7DeNXr_7sslocal(i1 noundef zeroext %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(2600) %1, ptr noalias nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef range(i64 8, 4097) %4, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(4096) %5) unnamed_addr #0 {
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
  %i.e = load i16, ptr %i.d, align 4, !noundef !145 ; 2 uses
  %i.f = zext i16 %i.e to i64                     ; 4 uses
  %i.g = icmp ult i16 %i.e, 256                   ; 2 uses
  br i1 %0, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %i.g, label %bb.d, label %bb.n

bb.c:                                             ; preds = %bb.a
  br i1 %i.g, label %bb.p, label %bb.q

bb.d:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %i.f ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !145, !align !213, !noundef !145 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.k = load i64, ptr %i.j, align 8, !noundef !145 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 1872 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27576)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 1880 ; 3 uses
  %i.n = load i32, ptr %i.m, align 8, !alias.scope !27576, !noundef !145 ; 3 uses
  %i.o = icmp ugt i32 %i.n, 47
  %.pre = load i64, ptr %i.l, align 8             ; 2 uses
  br i1 %i.o, label %bb.e, label %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader35BrotliFillBitWindowCompileTimeNbits.exit

bb.e:                                             ; preds = %bb.d
  %i.p = xor i32 %i.n, 48                         ; 2 uses
  store i32 %i.p, ptr %i.m, align 8, !alias.scope !27576
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 1884 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !alias.scope !27576, !noundef !145 ; 2 uses
  %i.s = zext i32 %i.r to i64                     ; 3 uses
  %i.t = add nuw nsw i64 %i.s, 8                  ; 2 uses
  %.not.i.i26 = icmp samesign ugt i64 %i.t, %4
  br i1 %.not.i.i26, label %bb.f, label %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader14BrotliLoad64LE.exit.i27, !prof !154

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %i.s, i64 noundef %i.t, i64 noundef range(i64 8, 4097) %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2111) #62, !noalias !27577
  unreachable

_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader14BrotliLoad64LE.exit.i27: ; preds = %bb.e
  %i.u = lshr i64 %.pre, 48
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 %i.s ; 3 uses
  %.sroa.061.0.copyload = load i32, ptr %i.v, align 1, !alias.scope !27578, !noalias !27576
  %i.w = zext i32 %.sroa.061.0.copyload to i64
  %i.x = shl nuw nsw i64 %i.w, 16
  %.sroa.865.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %.sroa.865.0.copyload = load i8, ptr %.sroa.865.0..sroa_idx, align 1, !alias.scope !27578, !noalias !27576
  %.sroa.966.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 5
  %.sroa.966.0.copyload = load i8, ptr %.sroa.966.0..sroa_idx, align 1, !alias.scope !27578, !noalias !27576
  %i.y = zext i8 %.sroa.865.0.copyload to i64
  %i.z = zext i8 %.sroa.966.0.copyload to i64
  %i.aa = shl nuw i64 %i.z, 56
  %i.ab = shl nuw nsw i64 %i.y, 48
  %i.ac = or disjoint i64 %i.x, %i.ab
  %i.ad = or disjoint i64 %i.ac, %i.aa
  %i.ae = or disjoint i64 %i.ad, %i.u             ; 2 uses
  store i64 %i.ae, ptr %i.l, align 8, !alias.scope !27576
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 1888 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 8, !alias.scope !27576, !noundef !145
  %i.ah = add i32 %i.ag, -6
  store i32 %i.ah, ptr %i.af, align 8, !alias.scope !27576
  %i.ai = add i32 %i.r, 6
  store i32 %i.ai, ptr %i.q, align 4, !alias.scope !27576
  br label %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader35BrotliFillBitWindowCompileTimeNbits.exit

_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader35BrotliFillBitWindowCompileTimeNbits.exit: ; preds = %bb.d, %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader14BrotliLoad64LE.exit.i27
  %i.aj = phi i32 [ %i.n, %bb.d ], [ %i.p, %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader14BrotliLoad64LE.exit.i27 ] ; 3 uses
  %i.ak = phi i64 [ %.pre, %bb.d ], [ %i.ae, %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader14BrotliLoad64LE.exit.i27 ]
  %i.al = and i32 %i.aj, 63
  %i.am = zext nneg i32 %i.al to i64
  %i.an = lshr i64 %i.ak, %i.am                   ; 2 uses
  %i.ao = trunc i64 %i.an to i32                  ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27579)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27580)
  %i.ap = and i32 %i.ao, 255
  %i.aq = and i64 %i.an, 255                      ; 3 uses
  %i.ar = icmp samesign ugt i64 %i.k, %i.aq
  br i1 %i.ar, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader35BrotliFillBitWindowCompileTimeNbits.exit
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.aq ; 2 uses
  %i.at = load i16, ptr %i.as, align 2, !alias.scope !27579, !noundef !145 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 2
  %i.av = load i8, ptr %i.au, align 2, !alias.scope !27579, !noundef !145 ; 3 uses
  %i.aw = icmp ugt i8 %i.av, 8
  br i1 %i.aw, label %bb.i, label %_RNvNtCsl4v216RJbSI_19brotli_decompressor6decode12DecodeSymbol.exit

bb.h:                                             ; preds = %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader35BrotliFillBitWindowCompileTimeNbits.exit
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.aq, i64 noundef range(i64 0, 2305843009213693952) %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2115) #62, !noalias !27581
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
  %i.be = getelementptr inbounds nuw [4 x i8], ptr @373, i64 %i.az
  %i.bf = load i32, ptr %i.be, align 4, !noalias !27581, !noundef !145
  %i.bg = and i32 %i.bf, %i.bb
  %i.bh = add nuw nsw i32 %i.bd, %i.bg
  %i.bi = zext nneg i32 %i.bh to i64              ; 3 uses
  %i.bj = icmp samesign ugt i64 %i.k, %i.bi
  br i1 %i.bj, label %bb.l, label %bb.m

bb.k:                                             ; preds = %bb.i
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.az, i64 noundef 33, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @375) #62, !noalias !27581
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.bi ; 2 uses
  %i.bl = load i16, ptr %i.bk, align 2, !alias.scope !27579, !noundef !145
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 2
  %i.bn = load i8, ptr %i.bm, align 2, !alias.scope !27579, !noundef !145
  br label %_RNvNtCsl4v216RJbSI_19brotli_decompressor6decode12DecodeSymbol.exit

bb.m:                                             ; preds = %bb.j
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.bi, i64 noundef range(i64 0, 2305843009213693952) %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2116) #62, !noalias !27581
  unreachable

_RNvNtCsl4v216RJbSI_19brotli_decompressor6decode12DecodeSymbol.exit: ; preds = %bb.g, %bb.l
  %i.bo = phi i32 [ %i.ay, %bb.l ], [ %i.aj, %bb.g ]
  %.sroa.05.0.i = phi i8 [ %i.bn, %bb.l ], [ %i.av, %bb.g ]
  %.sroa.03.0.i = phi i16 [ %i.bl, %bb.l ], [ %i.at, %bb.g ]
  %i.bp = zext i8 %.sroa.05.0.i to i32
  %i.bq = add i32 %i.bo, %i.bp
  store i32 %i.bq, ptr %i.m, align 8, !alias.scope !27580
  %i.br = zext i16 %.sroa.03.0.i to i32           ; 2 uses
  store i32 %i.br, ptr %i.c, align 4
  br label %bb.o

bb.n:                                             ; preds = %bb.b
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.f, i64 noundef 256, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @368) #62
  unreachable

thread-pre-split:                                 ; preds = %bb.p
  %.pr = load i32, ptr %i.c, align 4
  br label %bb.o

bb.o:                                             ; preds = %thread-pre-split, %_RNvNtCsl4v216RJbSI_19brotli_decompressor6decode12DecodeSymbol.exit
  %i.bs = phi i32 [ %.pr, %thread-pre-split ], [ %i.br, %_RNvNtCsl4v216RJbSI_19brotli_decompressor6decode12DecodeSymbol.exit ] ; 2 uses
  %.sroa.04.0 = phi i32 [ %i.bx, %thread-pre-split ], [ 0, %_RNvNtCsl4v216RJbSI_19brotli_decompressor6decode12DecodeSymbol.exit ]
  %.sroa.01.0 = phi i64 [ %i.cb, %thread-pre-split ], [ 0, %_RNvNtCsl4v216RJbSI_19brotli_decompressor6decode12DecodeSymbol.exit ]
end_hunk_1
begin_hunk_2_@_RNCINvNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13online_config16content_encoding9read_bodyINtNtCs7ewmRfXve8r_4http8response8ResponseNtNtNtCsaI3lGUjttVO_5hyper4body8incoming8IncomingEE0Cs7XnEB7DeNXr_7sslocal:bb.a
  %.sroa.101.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 2284
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(116) %.sroa.7254.0..sroa_idx.i.i.i.i, i8 0, i64 116, i1 false), !alias.scope !39570, !noalias !39569
  %.sroa.102.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 2288 ; 14 uses
  %.sroa.103.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 2292
  %.sroa.104.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 2296 ; 5 uses
  store <4 x i32> <i32 255, i32 0, i32 0, i32 1>, ptr %.sroa.101.0..sroa_idx.i.i.i.i, align 4, !alias.scope !39570, !noalias !39569
  %.sroa.105.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 2300 ; 2 uses
  store i16 0, ptr %.sroa.105.0..sroa_idx.i.i.i.i, align 4, !alias.scope !39570, !noalias !39569
  %.sroa.106.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 2302
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %.sroa.106.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 2 dereferenceable(18) %.sroa.106.i.i.i.i, i64 18, i1 false), !noalias !39575
  %.sroa.107.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 2320 ; 3 uses
  %.sroa.119.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 2332
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.107.0..sroa_idx.i.i.i.i, i8 0, i64 12, i1 false), !alias.scope !39570, !noalias !39569
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(256) %.sroa.119.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(256) %.sroa.119.i.i.i.i, i64 256, i1 false), !noalias !39575
  %.sroa.120.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 2588 ; 5 uses
  store i8 1, ptr %.sroa.120.0..sroa_idx.i.i.i.i, align 4, !alias.scope !39570, !noalias !39569
  %.sroa.122.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 2589 ; 7 uses
  %.sroa.124.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 2591 ; 3 uses
  %.sroa.125.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 2592 ; 2 uses
  store i32 0, ptr %.sroa.122.0..sroa_idx.i.i.i.i, align 1, !noalias !39567
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

.outer:                                           ; preds = %.outer.backedge, %_RNvMNtCsl4v216RJbSI_19brotli_decompressor5stateINtB2_11BrotliStateNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB12_B12_E26new_with_custom_dictionaryCs7XnEB7DeNXr_7sslocal.exit.i.i.i
  %.sroa.7.0.ph = phi i64 [ 0, %_RNvMNtCsl4v216RJbSI_19brotli_decompressor5stateINtB2_11BrotliStateNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB12_B12_E26new_with_custom_dictionaryCs7XnEB7DeNXr_7sslocal.exit.i.i.i ], [ %.sroa.7.1.peel, %.outer.backedge ] ; 4 uses
  %.sroa.014.0.i.i.i.ph = phi i64 [ 0, %_RNvMNtCsl4v216RJbSI_19brotli_decompressor5stateINtB2_11BrotliStateNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB12_B12_E26new_with_custom_dictionaryCs7XnEB7DeNXr_7sslocal.exit.i.i.i ], [ %.sroa.014.10.i.i.i, %.outer.backedge ]
  %.sroa.011.039.i.i.i.ph = phi i64 [ 0, %_RNvMNtCsl4v216RJbSI_19brotli_decompressor5stateINtB2_11BrotliStateNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB12_B12_E26new_with_custom_dictionaryCs7XnEB7DeNXr_7sslocal.exit.i.i.i ], [ %.sroa.011.9.i.i.i, %.outer.backedge ]
  %.sroa.06.0.i.i.i.ph = phi i64 [ 4096, %_RNvMNtCsl4v216RJbSI_19brotli_decompressor5stateINtB2_11BrotliStateNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB12_B12_E26new_with_custom_dictionaryCs7XnEB7DeNXr_7sslocal.exit.i.i.i ], [ %.sroa.06.0.i.i.i.ph.be, %.outer.backedge ] ; 2 uses
  %.sroa.010.0.i.i.i.ph = phi i32 [ 2, %_RNvMNtCsl4v216RJbSI_19brotli_decompressor5stateINtB2_11BrotliStateNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB12_B12_E26new_with_custom_dictionaryCs7XnEB7DeNXr_7sslocal.exit.i.i.i ], [ %.sroa.0.2.i.i.i.i, %.outer.backedge ]
  switch i32 %.sroa.010.0.i.i.i.ph, label %default.unreachable.i.i.i [
    i32 1, label %.loopexit5309
    i32 2, label %bb.cj
    i32 3, label %bb.cl
    i32 0, label %.loopexit5310
  ]

bb.cj:                                            ; preds = %.outer
  call void @llvm.experimental.noalias.scope.decl(metadata !39576)
  call void @llvm.experimental.noalias.scope.decl(metadata !39577)
  %i.oj = call i64 @llvm.umin.i64(i64 %.sroa.7.0.ph, i64 %.val16) ; 2 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %.val15, i64 %i.oj ; 2 uses
  %i.ol = sub nuw nsw i64 %.val16, %i.oj          ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !39578)
  %i.om = call i64 @llvm.umin.i64(i64 %i.ol, i64 4096) ; 3 uses
  %i.on = icmp eq i64 %i.ol, 1
  br i1 %i.on, label %bb.ck, label %_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implhECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i.peel

_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implhECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i.peel: ; preds = %bb.cj
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.t, ptr nonnull readonly align 1 %i.ok, i64 range(i64 0, -9223372036854775808) %i.om, i1 false), !alias.scope !39579, !noalias !39580
  br label %_RNvXs_NtCsl4v216RJbSI_19brotli_decompressor11io_wrappersINtB4_15IoReaderWrapperINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorRShEEINtB4_10CustomReadNtNtB1k_5error5ErrorE4readCs7XnEB7DeNXr_7sslocal.exit.i.i.i.peel

bb.ck:                                            ; preds = %bb.cj
  %i.oo = load i8, ptr %i.ok, align 1, !noalias !39581, !noundef !145
  store i8 %i.oo, ptr %i.t, align 1, !alias.scope !39582, !noalias !39564
  br label %_RNvXs_NtCsl4v216RJbSI_19brotli_decompressor11io_wrappersINtB4_15IoReaderWrapperINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorRShEEINtB4_10CustomReadNtNtB1k_5error5ErrorE4readCs7XnEB7DeNXr_7sslocal.exit.i.i.i.peel

_RNvXs_NtCsl4v216RJbSI_19brotli_decompressor11io_wrappersINtB4_15IoReaderWrapperINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorRShEEINtB4_10CustomReadNtNtB1k_5error5ErrorE4readCs7XnEB7DeNXr_7sslocal.exit.i.i.i.peel: ; preds = %bb.ck, %_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implhECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i.peel
  %i.op = add i64 %i.om, %.sroa.7.0.ph
  %.not.i.i.i76.peel = icmp ugt i64 %.val16, %.sroa.7.0.ph
  br i1 %.not.i.i.i76.peel, label %bb.cl, label %.loopexit5310

bb.cl:                                            ; preds = %_RNvXs_NtCsl4v216RJbSI_19brotli_decompressor11io_wrappersINtB4_15IoReaderWrapperINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorRShEEINtB4_10CustomReadNtNtB1k_5error5ErrorE4readCs7XnEB7DeNXr_7sslocal.exit.i.i.i.peel, %.outer
  %.sroa.7.1.peel = phi i64 [ %i.op, %_RNvXs_NtCsl4v216RJbSI_19brotli_decompressor11io_wrappersINtB4_15IoReaderWrapperINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorRShEEINtB4_10CustomReadNtNtB1k_5error5ErrorE4readCs7XnEB7DeNXr_7sslocal.exit.i.i.i.peel ], [ %.sroa.7.0.ph, %.outer ]
  %.sroa.014.1.i.i.i.peel = phi i64 [ 0, %_RNvXs_NtCsl4v216RJbSI_19brotli_decompressor11io_wrappersINtB4_15IoReaderWrapperINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorRShEEINtB4_10CustomReadNtNtB1k_5error5ErrorE4readCs7XnEB7DeNXr_7sslocal.exit.i.i.i.peel ], [ %.sroa.014.0.i.i.i.ph, %.outer ] ; 6 uses
  %.sroa.011.1.i.i.i.peel = phi i64 [ %i.om, %_RNvXs_NtCsl4v216RJbSI_19brotli_decompressor11io_wrappersINtB4_15IoReaderWrapperINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorRShEEINtB4_10CustomReadNtNtB1k_5error5ErrorE4readCs7XnEB7DeNXr_7sslocal.exit.i.i.i.peel ], [ %.sroa.011.039.i.i.i.ph, %.outer ] ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !39583)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !39584
  %i.oq = load i64, ptr %.sroa.3444.0..sroa_idx.i.i.i.i, align 8, !alias.scope !39583, !noalias !39569
  store i64 %i.oq, ptr %i.p, align 8, !noalias !39584
  %i.or = load i32, ptr %.sroa.104.0..sroa_idx.i.i.i.i, align 8, !range !39585, !alias.scope !39583, !noalias !39569, !noundef !145
  %i.os = icmp slt i32 %i.or, 0
  br i1 %i.os, label %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode22BrotliDecompressStreamNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB18_B18_ECs7XnEB7DeNXr_7sslocal.exit.thread.i.i.i.peel, label %bb.co

_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode22BrotliDecompressStreamNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB18_B18_ECs7XnEB7DeNXr_7sslocal.exit.thread.i.i.i.peel: ; preds = %bb.cl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !39584
  br label %.loopexit5310

default.unreachable.i.i.i:                        ; preds = %.outer
  unreachable

.loopexit5309:                                    ; preds = %.outer
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsl4v216RJbSI_19brotli_decompressor5state11BrotliStateNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB1y_B1y_EECs7XnEB7DeNXr_7sslocal(ptr noalias nofree noundef align 8 dereferenceable(2600) %i.r) #52, !noalias !39586
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !39569
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !39587
  %i.ot = ptrtoint ptr %i.mg to i64               ; 2 uses
  %i.ou = and i64 %i.ot, 3
  switch i64 %i.ou, label %default.unreachable2339 [
    i64 2, label %bb.pe
    i64 3, label %bb.cm
    i64 0, label %bb.pe
    i64 1, label %bb.cn
  ], !prof !196

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
  store ptr %i.oy, ptr %i.oz, align 8, !alias.scope !39588, !noalias !39587
  store i8 3, ptr %i.q, align 8, !alias.scope !39588, !noalias !39587
  call void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.oz) #52, !noalias !39589
  br label %bb.pe

bb.co:                                            ; preds = %bb.cl
  %i.pa = icmp ugt i64 %.sroa.014.1.i.i.i.peel, 4294967295
  %i.pb = add nuw nsw i64 %.sroa.011.1.i.i.i.peel, %.sroa.014.1.i.i.i.peel
  %i.pc = icmp samesign ugt i64 %i.pb, 4096
  %or.cond914.i.i.i.i = select i1 %i.pa, i1 true, i1 %i.pc
  br i1 %or.cond914.i.i.i.i, label %.sink.split.i.i.i.i, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.pd = load i32, ptr %i.nb, align 4, !alias.scope !39590, !noalias !39569, !noundef !145 ; 2 uses
  %i.pe = icmp eq i32 %i.pd, 0
  br i1 %i.pe, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  %i.pf = trunc nuw i64 %.sroa.011.1.i.i.i.peel to i32
  store i32 %i.pf, ptr %.sroa.33.0..sroa_idx.i.i.i.i, align 8, !alias.scope !39590, !noalias !39569
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
  store i32 %storemerge.i.i.i, ptr %.sroa.32.0..sroa_idx.i.i.i.i, align 4, !alias.scope !39590, !noalias !39569
  br label %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit.i.i.i.i

bb.ct:                                            ; preds = %bb.cr
  %i.pk = add nuw nsw i64 %i.pj, %i.ph            ; 2 uses
  %i.pl = icmp samesign ult i64 %i.pk, 9
  br i1 %i.pl, label %bb.cv, label %bb.cu, !prof !157

bb.cu:                                            ; preds = %bb.ct
  call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %i.ph, i64 noundef %i.pk, i64 noundef 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @392) #62, !noalias !39591
  unreachable

bb.cv:                                            ; preds = %bb.ct
  %i.pm = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.ph
  %i.pn = getelementptr inbounds nuw i8, ptr %i.t, i64 %.sroa.014.1.i.i.i.peel ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.pm, ptr nonnull readonly align 1 %i.pn, i64 range(i64 0, -9223372036854775808) %i.pj, i1 false), !alias.scope !39592, !noalias !39593
  %i.po = getelementptr inbounds nuw i8, ptr %.sroa.3444.0..sroa_idx.i.i.i.i, i64 %i.ph
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.po, ptr nonnull readonly align 1 %i.pn, i64 range(i64 0, -9223372036854775808) %i.pj, i1 false), !alias.scope !39594, !noalias !39595
  br label %bb.cs

_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit.i.i.i.i: ; preds = %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit.i.i.i.i.backedge, %bb.cs
  %.sroa.017.2.i.i.i = phi i64 [ 0, %bb.cs ], [ %.sroa.017.2.i.i.i.be, %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit.i.i.i.i.backedge ] ; 64 uses
  %.sroa.014.2.i.i.i = phi i64 [ %.sroa.014.1.i.i.i.peel, %bb.cs ], [ %.sroa.014.2.i.i.i.be, %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit.i.i.i.i.backedge ] ; 10 uses
  %.sroa.011.2.i.i.i = phi i64 [ %.sroa.011.1.i.i.i.peel, %bb.cs ], [ %.sroa.011.2.i.i.i.be, %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit.i.i.i.i.backedge ] ; 7 uses
  %.sroa.06.1.i.i.i = phi i64 [ %.sroa.06.0.i.i.i.ph, %bb.cs ], [ %.sroa.06.1.i.i.i.be, %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit.i.i.i.i.backedge ] ; 64 uses
  %.sroa.21.1.i.i.i.i = phi i64 [ %.sroa.21.0.i.i.i.i, %bb.cs ], [ %.sroa.21.1.i.i.i.i.be, %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit.i.i.i.i.backedge ] ; 91 uses
  %.sroa.029.1.i.i.i.i = phi ptr [ %.sroa.029.0.i.i.i.i, %bb.cs ], [ %.sroa.029.1.i.i.i.i.be, %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit.i.i.i.i.backedge ] ; 91 uses
  %.sroa.09.1.i.i.i.i = phi i32 [ %.sroa.09.0.i.i.i.i, %bb.cs ], [ %.sroa.09.1.i.i.i.i.be, %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit.i.i.i.i.backedge ] ; 3 uses
  switch i32 %.sroa.09.1.i.i.i.i, label %bb.mj [
    i32 1, label %.preheader214.i.i.i.i
    i32 2, label %bb.mi
  ]

.preheader214.i.i.i.i:                            ; preds = %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit.i.i.i.i
  %i.pp = trunc nuw nsw i64 %.sroa.21.1.i.i.i.i to i32 ; 15 uses
  %.pre.i.i.i.i62 = load i8, ptr %i.nc, align 2, !range !249, !alias.scope !39590, !noalias !39569
  br label %bb.cw

bb.cw:                                            ; preds = %.backedge.i.i.i.i, %.preheader214.i.i.i.i
  %.sroa.014.3.i.i.i = phi i64 [ %.sroa.014.2.i.i.i, %.preheader214.i.i.i.i ], [ %.sroa.014.4.i.i.i, %.backedge.i.i.i.i ] ; 85 uses
  %.sroa.011.3.i.i.i = phi i64 [ %.sroa.011.2.i.i.i, %.preheader214.i.i.i.i ], [ %.sroa.011.4.i.i.i, %.backedge.i.i.i.i ] ; 85 uses
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
  %.promoted.i.i.i.i = load i32, ptr %i.nm, align 8, !alias.scope !39590, !noalias !39569 ; 2 uses
  %i.pr = icmp sgt i32 %.promoted.i.i.i.i, 0
  br i1 %i.pr, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i65

.lr.ph.i.i.i.i:                                   ; preds = %.preheader.i.i.i.i
  %.promoted454.i.i.i.i = load i32, ptr %.sroa.30.0..sroa_idx.i.i.i.i, align 8, !alias.scope !39596, !noalias !39569
  %.promoted456.i.i.i.i = load i64, ptr %i.ni, align 8, !alias.scope !39590, !noalias !39569
  %.promoted457.i.i.i.i = load i32, ptr %.sroa.33.0..sroa_idx.i.i.i.i, align 8, !alias.scope !39590, !noalias !39569
  %.promoted460.i.i.i.i = load i32, ptr %.sroa.32.0..sroa_idx.i.i.i.i, align 4, !alias.scope !39590, !noalias !39569
  br label %bb.iy

bb.cx:                                            ; preds = %bb.cw
  %i.ps = load i32, ptr %.sroa.30.0..sroa_idx.i.i.i.i, align 8, !alias.scope !39590, !noalias !39569, !noundef !145 ; 2 uses
  %i.pt = icmp eq i32 %i.ps, 64
  br i1 %i.pt, label %bb.gv, label %._crit_edge689.i.i.i.i

._crit_edge689.i.i.i.i:                           ; preds = %bb.cx
  %.pre690.i.i.i.i = load i64, ptr %i.ni, align 8, !alias.scope !39597, !noalias !39569
  br label %bb.gz

bb.cy:                                            ; preds = %bb.cw
  call void @llvm.experimental.noalias.scope.decl(metadata !39598)
  call void @llvm.experimental.noalias.scope.decl(metadata !39599)
  call void @llvm.experimental.noalias.scope.decl(metadata !39600)
  %.promoted.i.i.i.i.i = load i32, ptr %.sroa.30.0..sroa_idx.i.i.i.i, align 8, !alias.scope !39601, !noalias !39569 ; 3 uses
  %i.pu = add i32 %.promoted.i.i.i.i.i, -59
  %.not.i.i.i.i.i73 = icmp ult i32 %i.pu, 6
  %.promoted14.i.i.i.i.i = load i64, ptr %i.ni, align 8, !alias.scope !39601, !noalias !39569 ; 2 uses
  br i1 %.not.i.i.i.i.i73, label %.lr.ph.i.i.i.i.i, label %.loopexit211.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.cy
  %.promoted17.i.i.i.i.i = load i32, ptr %.sroa.33.0..sroa_idx.i.i.i.i, align 8, !alias.scope !39601, !noalias !39569 ; 2 uses
  %.promoted18.i.i.i.i.i = load i32, ptr %.sroa.32.0..sroa_idx.i.i.i.i, align 4, !alias.scope !39601, !noalias !39569 ; 3 uses
  %i.pv = zext i32 %.promoted18.i.i.i.i.i to i64  ; 2 uses
  %i.pw = icmp eq i32 %.promoted17.i.i.i.i.i, 0
  br i1 %i.pw, label %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit.i.i.i.i.backedge, label %bb.cz

bb.cz:                                            ; preds = %.lr.ph.i.i.i.i.i
  %exitcond676.not.not.i.i.i.i = icmp ult i32 %.promoted18.i.i.i.i.i, %i.pp
  br i1 %exitcond676.not.not.i.i.i.i, label %.loopexit211.loopexit.i.i.i.i, label %bb.da

.loopexit211.loopexit.i.i.i.i:                    ; preds = %bb.cz
  %i.px = getelementptr inbounds nuw i8, ptr %.sroa.029.1.i.i.i.i, i64 %i.pv
  %i.py = load i8, ptr %i.px, align 1, !alias.scope !39600, !noalias !39593, !noundef !145
  %i.pz = zext i8 %i.py to i64
  %i.qa = call i64 @llvm.fshl.i64(i64 %i.pz, i64 %.promoted14.i.i.i.i.i, i64 56) ; 2 uses
  store i64 %i.qa, ptr %i.ni, align 8, !alias.scope !39601, !noalias !39569
  %i.qb = add nsw i32 %.promoted.i.i.i.i.i, -8
  %i.qc = add i32 %.promoted17.i.i.i.i.i, -1
  store i32 %i.qc, ptr %.sroa.33.0..sroa_idx.i.i.i.i, align 8, !alias.scope !39601, !noalias !39569
  %indvars.iv.next672.i.i.i.i = add nuw nsw i32 %.promoted18.i.i.i.i.i, 1
  store i32 %indvars.iv.next672.i.i.i.i, ptr %.sroa.32.0..sroa_idx.i.i.i.i, align 4, !alias.scope !39601, !noalias !39569
  br label %.loopexit211.i.i.i.i

bb.da:                                            ; preds = %bb.cz
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.pv, i64 noundef range(i64 8, 4097) %.sroa.21.1.i.i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @379) #62, !noalias !39602
  unreachable

bb.db:                                            ; preds = %bb.cw
  %i.qd = load i32, ptr %.sroa.102.0..sroa_idx.i.i.i.i, align 8, !alias.scope !39590, !noalias !39569, !noundef !145
  %i.qe = and i32 %i.qd, 31
  %i.qf = shl nuw i32 1, %i.qe
  %i.qg = add i32 %i.qf, -16                      ; 2 uses
  store i32 %i.qg, ptr %i.nt, align 4, !alias.scope !39590, !noalias !39569
  %i.qh = load i64, ptr %.sroa.40.0..sroa_idx.i.i.i.i, align 8, !alias.scope !39590, !noalias !39569, !noundef !145
  %i.qi = trunc i64 %i.qh to i32
  %i.qj = sub i32 %i.qg, %i.qi
  store i32 %i.qj, ptr %i.nu, align 8, !alias.scope !39590, !noalias !39569
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52, !noalias !39603
  %i.qk = call noundef align 2 dereferenceable_or_null(12960) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 12960, i64 noundef range(i64 1, 17) 2) #52, !noalias !39603 ; 3 uses
  %i.ql = icmp eq ptr %i.qk, null
  br i1 %i.ql, label %bb.dc, label %.lr.ph.i.i.i.i26.i.i.i

bb.dc:                                            ; preds = %bb.db
  call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef 2, i64 12960) #61, !noalias !39604
  unreachable

.lr.ph.i.i.i.i26.i.i.i:                           ; preds = %bb.db, %.lr.ph.i.i.i.i26.i.i.i.7
  %.sroa.0.018.i.i.i.i27.i.i.i = phi ptr [ %i.rc, %.lr.ph.i.i.i.i26.i.i.i.7 ], [ %i.qk, %bb.db ] ; 18 uses
  %.sroa.03.017.i.i.i.i28.i.i.i = phi i64 [ %i.ra, %.lr.ph.i.i.i.i26.i.i.i.7 ], [ 1, %bb.db ] ; 2 uses
  store i16 0, ptr %.sroa.0.018.i.i.i.i27.i.i.i, align 2, !noalias !39605
  %i.qm = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i.i.i.i27.i.i.i, i64 2
  store i8 0, ptr %i.qm, align 2, !noalias !39605
  %i.qn = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i.i.i.i27.i.i.i, i64 4
  store i16 0, ptr %i.qn, align 2, !noalias !39605
  %i.qo = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i.i.i.i27.i.i.i, i64 6
  store i8 0, ptr %i.qo, align 2, !noalias !39605
  %i.qp = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i.i.i.i27.i.i.i, i64 8
  store i16 0, ptr %i.qp, align 2, !noalias !39605
  %i.qq = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i.i.i.i27.i.i.i, i64 10
  store i8 0, ptr %i.qq, align 2, !noalias !39605
  %i.qr = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i.i.i.i27.i.i.i, i64 12
  store i16 0, ptr %i.qr, align 2, !noalias !39605
  %i.qs = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i.i.i.i27.i.i.i, i64 14
  store i8 0, ptr %i.qs, align 2, !noalias !39605
  %i.qt = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i.i.i.i27.i.i.i, i64 16
  store i16 0, ptr %i.qt, align 2, !noalias !39605
  %i.qu = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i.i.i.i27.i.i.i, i64 18
  store i8 0, ptr %i.qu, align 2, !noalias !39605
  %i.qv = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i.i.i.i27.i.i.i, i64 20
  store i16 0, ptr %i.qv, align 2, !noalias !39605
  %i.qw = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i.i.i.i27.i.i.i, i64 22
  store i8 0, ptr %i.qw, align 2, !noalias !39605
  %i.qx = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i.i.i.i27.i.i.i, i64 24
  store i16 0, ptr %i.qx, align 2, !noalias !39605
  %i.qy = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i.i.i.i27.i.i.i, i64 26
  store i8 0, ptr %i.qy, align 2, !noalias !39605
  %i.qz = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i.i.i.i27.i.i.i, i64 28 ; 2 uses
  %exitcond.not.i.i.i.i29.i.i.i.6 = icmp eq i64 %.sroa.03.017.i.i.i.i28.i.i.i, 3233
  br i1 %exitcond.not.i.i.i.i29.i.i.i.6, label %_RNvXNtCs2D0wXkiOfwW_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs5NNYTrzbB3N_15alloc_no_stdlib15stack_allocator9AllocatorNtNtCsl4v216RJbSI_19brotli_decompressor7huffman11HuffmanCodeE10alloc_cellCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i, label %.lr.ph.i.i.i.i26.i.i.i.7

.lr.ph.i.i.i.i26.i.i.i.7:                         ; preds = %.lr.ph.i.i.i.i26.i.i.i
  %i.ra = add nuw nsw i64 %.sroa.03.017.i.i.i.i28.i.i.i, 8
  store i16 0, ptr %i.qz, align 2, !noalias !39605
  %i.rb = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i.i.i.i27.i.i.i, i64 30
  store i8 0, ptr %i.rb, align 2, !noalias !39605
  %i.rc = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i.i.i.i27.i.i.i, i64 32
  br label %.lr.ph.i.i.i.i26.i.i.i

_RNvXNtCs2D0wXkiOfwW_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs5NNYTrzbB3N_15alloc_no_stdlib15stack_allocator9AllocatorNtNtCsl4v216RJbSI_19brotli_decompressor7huffman11HuffmanCodeE10alloc_cellCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i26.i.i.i
  store i16 0, ptr %i.qz, align 2, !noalias !39605
  %i.rd = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i.i.i.i27.i.i.i, i64 30
  store i8 0, ptr %i.rd, align 2, !noalias !39605
  %.val126.i.i.i.i = load i64, ptr %.sroa.64.0..sroa_idx.i.i.i.i, align 8, !alias.scope !39590, !noalias !39569, !noundef !145 ; 2 uses
  %i.re = icmp eq i64 %.val126.i.i.i.i, 0
  br i1 %i.re, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2D0wXkiOfwW_12alloc_stdlib10heap_alloc7WrapBoxNtNtCsl4v216RJbSI_19brotli_decompressor7huffman11HuffmanCodeEECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i: ; preds = %_RNvXNtCs2D0wXkiOfwW_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs5NNYTrzbB3N_15alloc_no_stdlib15stack_allocator9AllocatorNtNtCsl4v216RJbSI_19brotli_decompressor7huffman11HuffmanCodeE10alloc_cellCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i
  %.val125.i.i.i.i = load ptr, ptr %.sroa.63.0..sroa_idx.i.i.i.i, align 8, !alias.scope !39590, !noalias !39569, !nonnull !145, !noundef !145
  %i.rf = shl nuw nsw i64 %.val126.i.i.i.i, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val125.i.i.i.i, i64 noundef %i.rf, i64 noundef 2) #52, !noalias !39591
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2D0wXkiOfwW_12alloc_stdlib10heap_alloc7WrapBoxNtNtCsl4v216RJbSI_19brotli_decompressor7huffman11HuffmanCodeEECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2D0wXkiOfwW_12alloc_stdlib10heap_alloc7WrapBoxNtNtCsl4v216RJbSI_19brotli_decompressor7huffman11HuffmanCodeEECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i: ; preds = %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i, %_RNvXNtCs2D0wXkiOfwW_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs5NNYTrzbB3N_15alloc_no_stdlib15stack_allocator9AllocatorNtNtCsl4v216RJbSI_19brotli_decompressor7huffman11HuffmanCodeE10alloc_cellCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i
  store ptr %i.qk, ptr %.sroa.63.0..sroa_idx.i.i.i.i, align 8, !alias.scope !39590, !noalias !39569
  store i64 3240, ptr %.sroa.64.0..sroa_idx.i.i.i.i, align 8, !alias.scope !39590, !noalias !39569
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52, !noalias !39606
  %i.rg = call noundef align 2 dereferenceable_or_null(12960) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 12960, i64 noundef range(i64 1, 17) 2) #52, !noalias !39606 ; 3 uses
  %i.rh = icmp eq ptr %i.rg, null
  br i1 %i.rh, label %bb.hj, label %.lr.ph.i.i.i161.i.i.i.i

bb.dd:                                            ; preds = %bb.cw
  call void @llvm.experimental.noalias.scope.decl(metadata !39607)
  store i32 0, ptr %i.nm, align 8, !alias.scope !39608, !noalias !39569
  store i32 16777216, ptr %.sroa.70.0..sroa_idx.i.i.i.i, align 8, !alias.scope !39608, !noalias !39569
  store i32 16777216, ptr %i.nn, align 4, !alias.scope !39608, !noalias !39569
  store i32 16777216, ptr %i.no, align 8, !alias.scope !39608, !noalias !39569
  store i32 1, ptr %i.nf, align 8, !alias.scope !39608, !noalias !39569
  store <4 x i32> <i32 1, i32 0, i32 1, i32 0>, ptr %.sroa.67.0..sroa_idx.i.i.i.i, align 8, !alias.scope !39608, !noalias !39569
  store <4 x i32> <i32 1, i32 0, i32 1, i32 1>, ptr %i.nq, align 8, !alias.scope !39608, !noalias !39569
  %i.ri = load ptr, ptr %.sroa.24.0..sroa_idx.i.i.i.i, align 8, !alias.scope !39608, !noalias !39569, !nonnull !145, !noundef !145
  %i.rj = load i64, ptr %.sroa.25.0..sroa_idx.i.i.i.i, align 8, !alias.scope !39608, !noalias !39569, !noundef !145 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.24.0..sroa_idx.i.i.i.i, align 8, !alias.scope !39608, !noalias !39569
  store i64 0, ptr %.sroa.25.0..sroa_idx.i.i.i.i, align 8, !alias.scope !39608, !noalias !39569
  %i.rk = icmp eq i64 %i.rj, 0
  br i1 %i.rk, label %_RNvXNtCs2D0wXkiOfwW_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs5NNYTrzbB3N_15alloc_no_stdlib15stack_allocator9AllocatorhE9free_cellCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.dd
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ri, i64 noundef %i.rj, i64 noundef 1) #52, !noalias !39609
  br label %_RNvXNtCs2D0wXkiOfwW_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs5NNYTrzbB3N_15alloc_no_stdlib15stack_allocator9AllocatorhE9free_cellCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i

_RNvXNtCs2D0wXkiOfwW_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs5NNYTrzbB3N_15alloc_no_stdlib15stack_allocator9AllocatorhE9free_cellCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i: ; preds = %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i, %bb.dd
  %i.rl = load ptr, ptr %.sroa.26.0..sroa_idx.i.i.i.i, align 8, !alias.scope !39608, !noalias !39569, !nonnull !145, !noundef !145
  %i.rm = load i64, ptr %.sroa.27.0..sroa_idx.i.i.i.i, align 8, !alias.scope !39608, !noalias !39569, !noundef !145 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.26.0..sroa_idx.i.i.i.i, align 8, !alias.scope !39608, !noalias !39569
  store i64 0, ptr %.sroa.27.0..sroa_idx.i.i.i.i, align 8, !alias.scope !39608, !noalias !39569
  %i.rn = icmp eq i64 %i.rm, 0
  br i1 %i.rn, label %_RNvXNtCs2D0wXkiOfwW_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs5NNYTrzbB3N_15alloc_no_stdlib15stack_allocator9AllocatorhE9free_cellCs7XnEB7DeNXr_7sslocal.exit2.i.i.i.i.i, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i1.i.i.i.i.i

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i1.i.i.i.i.i: ; preds = %_RNvXNtCs2D0wXkiOfwW_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs5NNYTrzbB3N_15alloc_no_stdlib15stack_allocator9AllocatorhE9free_cellCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.rl, i64 noundef %i.rm, i64 noundef 1) #52, !noalias !39610
  br label %_RNvXNtCs2D0wXkiOfwW_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs5NNYTrzbB3N_15alloc_no_stdlib15stack_allocator9AllocatorhE9free_cellCs7XnEB7DeNXr_7sslocal.exit2.i.i.i.i.i

_RNvXNtCs2D0wXkiOfwW_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs5NNYTrzbB3N_15alloc_no_stdlib15stack_allocator9AllocatorhE9free_cellCs7XnEB7DeNXr_7sslocal.exit2.i.i.i.i.i: ; preds = %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i1.i.i.i.i.i, %_RNvXNtCs2D0wXkiOfwW_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs5NNYTrzbB3N_15alloc_no_stdlib15stack_allocator9AllocatorhE9free_cellCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i
  %i.ro = load ptr, ptr %.sroa.14.0..sroa_idx.i.i.i.i, align 8, !alias.scope !39608, !noalias !39569, !nonnull !145, !noundef !145
  %i.rp = load i64, ptr %.sroa.15.0..sroa_idx.i.i.i.i, align 8, !alias.scope !39608, !noalias !39569, !noundef !145 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.14.0..sroa_idx.i.i.i.i, align 8, !alias.scope !39608, !noalias !39569
  store i64 0, ptr %.sroa.15.0..sroa_idx.i.i.i.i, align 8, !alias.scope !39608, !noalias !39569
  %i.rq = icmp eq i64 %i.rp, 0
  br i1 %i.rq, label %_RNvXNtCs2D0wXkiOfwW_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs5NNYTrzbB3N_15alloc_no_stdlib15stack_allocator9AllocatorhE9free_cellCs7XnEB7DeNXr_7sslocal.exit4.i.i.i.i.i, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i3.i.i.i.i.i

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i3.i.i.i.i.i: ; preds = %_RNvXNtCs2D0wXkiOfwW_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs5NNYTrzbB3N_15alloc_no_stdlib15stack_allocator9AllocatorhE9free_cellCs7XnEB7DeNXr_7sslocal.exit2.i.i.i.i.i
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ro, i64 noundef %i.rp, i64 noundef 1) #52, !noalias !39611
  br label %_RNvXNtCs2D0wXkiOfwW_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs5NNYTrzbB3N_15alloc_no_stdlib15stack_allocator9AllocatorhE9free_cellCs7XnEB7DeNXr_7sslocal.exit4.i.i.i.i.i

_RNvXNtCs2D0wXkiOfwW_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs5NNYTrzbB3N_15alloc_no_stdlib15stack_allocator9AllocatorhE9free_cellCs7XnEB7DeNXr_7sslocal.exit4.i.i.i.i.i: ; preds = %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i3.i.i.i.i.i, %_RNvXNtCs2D0wXkiOfwW_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs5NNYTrzbB3N_15alloc_no_stdlib15stack_allocator9AllocatorhE9free_cellCs7XnEB7DeNXr_7sslocal.exit2.i.i.i.i.i
  store i8 0, ptr %.sroa.107.0..sroa_idx.i.i.i.i, align 8, !alias.scope !39608, !noalias !39569
  store i8 0, ptr %i.ns, align 1, !alias.scope !39608, !noalias !39569
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.nr, i8 0, i64 16, i1 false), !alias.scope !39608, !noalias !39569
  store ptr @_RNvNtCsl4v216RJbSI_19brotli_decompressor7context14kContextLookup, ptr %.sroa.6251.0..sroa_idx.i.i.i.i, align 8, !alias.scope !39608, !noalias !39569, !captures !194
  call void @llvm.experimental.noalias.scope.decl(metadata !39612)
  %i.rr = load ptr, ptr %.sroa.41.0..sroa_idx.i.i.i.i, align 8, !alias.scope !39613, !noalias !39569, !nonnull !145, !align !189, !noundef !145
  %i.rs = load i64, ptr %.sroa.42.0..sroa_idx.i.i.i.i, align 8, !alias.scope !39613, !noalias !39569, !noundef !145 ; 2 uses
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.41.0..sroa_idx.i.i.i.i, align 8, !alias.scope !39613, !noalias !39569
  store i64 0, ptr %.sroa.42.0..sroa_idx.i.i.i.i, align 8, !alias.scope !39613, !noalias !39569
  %i.rt = icmp eq i64 %i.rs, 0
  br i1 %i.rt, label %_RNvXNtCs2D0wXkiOfwW_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs5NNYTrzbB3N_15alloc_no_stdlib15stack_allocator9AllocatormE9free_cellCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %_RNvXNtCs2D0wXkiOfwW_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs5NNYTrzbB3N_15alloc_no_stdlib15stack_allocator9AllocatorhE9free_cellCs7XnEB7DeNXr_7sslocal.exit4.i.i.i.i.i
  %i.ru = shl nuw nsw i64 %i.rs, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull align 4 %i.rr, i64 noundef %i.ru, i64 noundef 4) #52, !noalias !39614
  br label %_RNvXNtCs2D0wXkiOfwW_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs5NNYTrzbB3N_15alloc_no_stdlib15stack_allocator9AllocatormE9free_cellCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i

_RNvXNtCs2D0wXkiOfwW_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs5NNYTrzbB3N_15alloc_no_stdlib15stack_allocator9AllocatormE9free_cellCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i: ; preds = %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i, %_RNvXNtCs2D0wXkiOfwW_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs5NNYTrzbB3N_15alloc_no_stdlib15stack_allocator9AllocatorhE9free_cellCs7XnEB7DeNXr_7sslocal.exit4.i.i.i.i.i
  %i.rv = load ptr, ptr %.sroa.43.0..sroa_idx45.i.i.i.i, align 8, !alias.scope !39613, !noalias !39569, !nonnull !145, !align !213, !noundef !145
  %i.rw = load i64, ptr %.sroa.44.0..sroa_idx.i.i.i.i, align 8, !alias.scope !39613, !noalias !39569, !noundef !145 ; 2 uses
  store ptr inttoptr (i64 2 to ptr), ptr %.sroa.43.0..sroa_idx45.i.i.i.i, align 8, !alias.scope !39613, !noalias !39569
  store i64 0, ptr %.sroa.44.0..sroa_idx.i.i.i.i, align 8, !alias.scope !39613, !noalias !39569
  %i.rx = icmp eq i64 %i.rw, 0
  br i1 %i.rx, label %_RNvMs0_NtCsl4v216RJbSI_19brotli_decompressor7huffmanINtB5_16HuffmanTreeGroupNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB1c_E5resetCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i1.i.i.i.i.i.i

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i1.i.i.i.i.i.i: ; preds = %_RNvXNtCs2D0wXkiOfwW_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs5NNYTrzbB3N_15alloc_no_stdlib15stack_allocator9AllocatormE9free_cellCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i
  %i.ry = shl nuw nsw i64 %i.rw, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull align 2 %i.rv, i64 noundef %i.ry, i64 noundef 2) #52, !noalias !39614
  br label %_RNvMs0_NtCsl4v216RJbSI_19brotli_decompressor7huffmanINtB5_16HuffmanTreeGroupNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB1c_E5resetCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i

_RNvMs0_NtCsl4v216RJbSI_19brotli_decompressor7huffmanINtB5_16HuffmanTreeGroupNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB1c_E5resetCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i: ; preds = %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i1.i.i.i.i.i.i, %_RNvXNtCs2D0wXkiOfwW_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs5NNYTrzbB3N_15alloc_no_stdlib15stack_allocator9AllocatormE9free_cellCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !39615)
  %i.rz = load ptr, ptr %.sroa.4847.0..sroa_idx.i.i.i.i, align 8, !alias.scope !39616, !noalias !39569, !nonnull !145, !align !189, !noundef !145
  %i.sa = load i64, ptr %.sroa.49.0..sroa_idx.i.i.i.i, align 8, !alias.scope !39616, !noalias !39569, !noundef !145 ; 2 uses
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.4847.0..sroa_idx.i.i.i.i, align 8, !alias.scope !39616, !noalias !39569
  store i64 0, ptr %.sroa.49.0..sroa_idx.i.i.i.i, align 8, !alias.scope !39616, !noalias !39569
  %i.sb = icmp eq i64 %i.sa, 0
  br i1 %i.sb, label %_RNvXNtCs2D0wXkiOfwW_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs5NNYTrzbB3N_15alloc_no_stdlib15stack_allocator9AllocatormE9free_cellCs7XnEB7DeNXr_7sslocal.exit.i6.i.i.i.i.i, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i5.i.i.i.i.i

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i5.i.i.i.i.i: ; preds = %_RNvMs0_NtCsl4v216RJbSI_19brotli_decompressor7huffmanINtB5_16HuffmanTreeGroupNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB1c_E5resetCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i
  %i.sc = shl nuw nsw i64 %i.sa, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull align 4 %i.rz, i64 noundef %i.sc, i64 noundef 4) #52, !noalias !39617
  br label %_RNvXNtCs2D0wXkiOfwW_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs5NNYTrzbB3N_15alloc_no_stdlib15stack_allocator9AllocatormE9free_cellCs7XnEB7DeNXr_7sslocal.exit.i6.i.i.i.i.i

_RNvXNtCs2D0wXkiOfwW_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs5NNYTrzbB3N_15alloc_no_stdlib15stack_allocator9AllocatormE9free_cellCs7XnEB7DeNXr_7sslocal.exit.i6.i.i.i.i.i: ; preds = %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i5.i.i.i.i.i, %_RNvMs0_NtCsl4v216RJbSI_19brotli_decompressor7huffmanINtB5_16HuffmanTreeGroupNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB1c_E5resetCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i
  %i.sd = load ptr, ptr %.sroa.50.0..sroa_idx.i.i.i.i, align 8, !alias.scope !39616, !noalias !39569, !nonnull !145, !align !213, !noundef !145
  %i.se = load i64, ptr %.sroa.51.0..sroa_idx.i.i.i.i, align 8, !alias.scope !39616, !noalias !39569, !noundef !145 ; 2 uses
  store ptr inttoptr (i64 2 to ptr), ptr %.sroa.50.0..sroa_idx.i.i.i.i, align 8, !alias.scope !39616, !noalias !39569
  store i64 0, ptr %.sroa.51.0..sroa_idx.i.i.i.i, align 8, !alias.scope !39616, !noalias !39569
  %i.sf = icmp eq i64 %i.se, 0
  br i1 %i.sf, label %_RNvMs0_NtCsl4v216RJbSI_19brotli_decompressor7huffmanINtB5_16HuffmanTreeGroupNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB1c_E5resetCs7XnEB7DeNXr_7sslocal.exit8.i.i.i.i.i, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i1.i7.i.i.i.i.i

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i1.i7.i.i.i.i.i: ; preds = %_RNvXNtCs2D0wXkiOfwW_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs5NNYTrzbB3N_15alloc_no_stdlib15stack_allocator9AllocatormE9free_cellCs7XnEB7DeNXr_7sslocal.exit.i6.i.i.i.i.i
  %i.sg = shl nuw nsw i64 %i.se, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull align 2 %i.sd, i64 noundef %i.sg, i64 noundef 2) #52, !noalias !39617
  br label %_RNvMs0_NtCsl4v216RJbSI_19brotli_decompressor7huffmanINtB5_16HuffmanTreeGroupNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB1c_E5resetCs7XnEB7DeNXr_7sslocal.exit8.i.i.i.i.i

_RNvMs0_NtCsl4v216RJbSI_19brotli_decompressor7huffmanINtB5_16HuffmanTreeGroupNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB1c_E5resetCs7XnEB7DeNXr_7sslocal.exit8.i.i.i.i.i: ; preds = %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i1.i7.i.i.i.i.i, %_RNvXNtCs2D0wXkiOfwW_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs5NNYTrzbB3N_15alloc_no_stdlib15stack_allocator9AllocatormE9free_cellCs7XnEB7DeNXr_7sslocal.exit.i6.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !39618)
  %i.sh = load ptr, ptr %.sroa.5549.0..sroa_idx.i.i.i.i, align 8, !alias.scope !39619, !noalias !39569, !nonnull !145, !align !189, !noundef !145
  %i.si = load i64, ptr %.sroa.56.0..sroa_idx.i.i.i.i, align 8, !alias.scope !39619, !noalias !39569, !noundef !145 ; 2 uses
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.5549.0..sroa_idx.i.i.i.i, align 8, !alias.scope !39619, !noalias !39569
  store i64 0, ptr %.sroa.56.0..sroa_idx.i.i.i.i, align 8, !alias.scope !39619, !noalias !39569
  %i.sj = icmp eq i64 %i.si, 0
  br i1 %i.sj, label %_RNvXNtCs2D0wXkiOfwW_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs5NNYTrzbB3N_15alloc_no_stdlib15stack_allocator9AllocatormE9free_cellCs7XnEB7DeNXr_7sslocal.exit.i10.i.i.i.i.i, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i9.i.i.i.i.i

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i9.i.i.i.i.i: ; preds = %_RNvMs0_NtCsl4v216RJbSI_19brotli_decompressor7huffmanINtB5_16HuffmanTreeGroupNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB1c_E5resetCs7XnEB7DeNXr_7sslocal.exit8.i.i.i.i.i
  %i.sk = shl nuw nsw i64 %i.si, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull align 4 %i.sh, i64 noundef %i.sk, i64 noundef 4) #52, !noalias !39620
  br label %_RNvXNtCs2D0wXkiOfwW_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs5NNYTrzbB3N_15alloc_no_stdlib15stack_allocator9AllocatormE9free_cellCs7XnEB7DeNXr_7sslocal.exit.i10.i.i.i.i.i

_RNvXNtCs2D0wXkiOfwW_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs5NNYTrzbB3N_15alloc_no_stdlib15stack_allocator9AllocatormE9free_cellCs7XnEB7DeNXr_7sslocal.exit.i10.i.i.i.i.i: ; preds = %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i9.i.i.i.i.i, %_RNvMs0_NtCsl4v216RJbSI_19brotli_decompressor7huffmanINtB5_16HuffmanTreeGroupNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB1c_E5resetCs7XnEB7DeNXr_7sslocal.exit8.i.i.i.i.i
  %i.sl = load ptr, ptr %.sroa.57.0..sroa_idx.i.i.i.i, align 8, !alias.scope !39619, !noalias !39569, !nonnull !145, !align !213, !noundef !145
  %i.sm = load i64, ptr %.sroa.58.0..sroa_idx50.i.i.i.i, align 8, !alias.scope !39619, !noalias !39569, !noundef !145 ; 2 uses
  store ptr inttoptr (i64 2 to ptr), ptr %.sroa.57.0..sroa_idx.i.i.i.i, align 8, !alias.scope !39619, !noalias !39569
  store i64 0, ptr %.sroa.58.0..sroa_idx50.i.i.i.i, align 8, !alias.scope !39619, !noalias !39569
  %i.sn = icmp eq i64 %i.sm, 0
  br i1 %i.sn, label %.backedge.i.i.i.i, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i1.i11.i.i.i.i.i

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i1.i11.i.i.i.i.i: ; preds = %_RNvXNtCs2D0wXkiOfwW_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs5NNYTrzbB3N_15alloc_no_stdlib15stack_allocator9AllocatormE9free_cellCs7XnEB7DeNXr_7sslocal.exit.i10.i.i.i.i.i
  %i.so = shl nuw nsw i64 %i.sm, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull align 2 %i.sl, i64 noundef %i.so, i64 noundef 2) #52, !noalias !39620
  br label %.backedge.i.i.i.i

.backedge.i.i.i.i:                                ; preds = %bb.lb, %.loopexit.i.i.i.i.i, %bb.lt, %bb.kt, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2D0wXkiOfwW_12alloc_stdlib10heap_alloc7WrapBoxNtNtCsl4v216RJbSI_19brotli_decompressor7huffman11HuffmanCodeEECs7XnEB7DeNXr_7sslocal.exit181.i.i.i.i, %bb.kd, %bb.jf, %bb.jd, %bb.iw, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2D0wXkiOfwW_12alloc_stdlib10heap_alloc7WrapBoxNtNtCsl4v216RJbSI_19brotli_decompressor7huffman11HuffmanCodeEECs7XnEB7DeNXr_7sslocal.exit167.i.i.i.i, %.loopexit211.i.i.i.i, %bb.hi, %bb.hh, %bb.hg, %bb.hd, %bb.ha, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2D0wXkiOfwW_12alloc_stdlib10heap_alloc7WrapBoxNtNtCsl4v216RJbSI_19brotli_decompressor7huffman11HuffmanCodeEECs7XnEB7DeNXr_7sslocal.exit157.i.i.i.i, %bb.eq, %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i1.i11.i.i.i.i.i, %_RNvXNtCs2D0wXkiOfwW_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs5NNYTrzbB3N_15alloc_no_stdlib15stack_allocator9AllocatormE9free_cellCs7XnEB7DeNXr_7sslocal.exit.i10.i.i.i.i.i
  %.sroa.014.4.i.i.i = phi i64 [ %.sroa.014.3.i.i.i, %bb.ha ], [ %.sroa.014.3.i.i.i, %bb.hi ], [ %.sroa.014.3.i.i.i, %bb.hg ], [ %.sroa.014.3.i.i.i, %bb.hh ], [ %.sroa.014.3.i.i.i, %bb.hd ], [ %.sroa.014.3.i.i.i, %.loopexit211.i.i.i.i ], [ %.sroa.014.3.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2D0wXkiOfwW_12alloc_stdlib10heap_alloc7WrapBoxNtNtCsl4v216RJbSI_19brotli_decompressor7huffman11HuffmanCodeEECs7XnEB7DeNXr_7sslocal.exit167.i.i.i.i ], [ %.sroa.014.3.i.i.i, %_RNvXNtCs2D0wXkiOfwW_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs5NNYTrzbB3N_15alloc_no_stdlib15stack_allocator9AllocatormE9free_cellCs7XnEB7DeNXr_7sslocal.exit.i10.i.i.i.i.i ], [ %.sroa.014.3.i.i.i, %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i1.i11.i.i.i.i.i ], [ %.sroa.014.3.i.i.i, %bb.iw ], [ %.sroa.014.3.i.i.i, %bb.eq ], [ %.sroa.014.3.i.i.i, %bb.lt ], [ %i.awa, %bb.jf ], [ %.sroa.014.3.i.i.i, %bb.jd ], [ %.sroa.014.3.i.i.i, %bb.kd ], [ %.sroa.014.3.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2D0wXkiOfwW_12alloc_stdlib10heap_alloc7WrapBoxNtNtCsl4v216RJbSI_19brotli_decompressor7huffman11HuffmanCodeEECs7XnEB7DeNXr_7sslocal.exit181.i.i.i.i ], [ %.sroa.014.3.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2D0wXkiOfwW_12alloc_stdlib10heap_alloc7WrapBoxNtNtCsl4v216RJbSI_19brotli_decompressor7huffman11HuffmanCodeEECs7XnEB7DeNXr_7sslocal.exit157.i.i.i.i ], [ %.sroa.014.3.i.i.i, %bb.kt ], [ %.sroa.014.3.i.i.i, %.loopexit.i.i.i.i.i ], [ %.sroa.014.3.i.i.i, %bb.lb ]
  %.sroa.011.4.i.i.i = phi i64 [ %.sroa.011.3.i.i.i, %bb.ha ], [ %.sroa.011.3.i.i.i, %bb.hi ], [ %.sroa.011.3.i.i.i, %bb.hg ], [ %.sroa.011.3.i.i.i, %bb.hh ], [ %.sroa.011.3.i.i.i, %bb.hd ], [ %.sroa.011.3.i.i.i, %.loopexit211.i.i.i.i ], [ %.sroa.011.3.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2D0wXkiOfwW_12alloc_stdlib10heap_alloc7WrapBoxNtNtCsl4v216RJbSI_19brotli_decompressor7huffman11HuffmanCodeEECs7XnEB7DeNXr_7sslocal.exit167.i.i.i.i ], [ %.sroa.011.3.i.i.i, %_RNvXNtCs2D0wXkiOfwW_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs5NNYTrzbB3N_15alloc_no_stdlib15stack_allocator9AllocatormE9free_cellCs7XnEB7DeNXr_7sslocal.exit.i10.i.i.i.i.i ], [ %.sroa.011.3.i.i.i, %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i1.i11.i.i.i.i.i ], [ %.sroa.011.3.i.i.i, %bb.iw ], [ %.sroa.011.3.i.i.i, %bb.eq ], [ %.sroa.011.3.i.i.i, %bb.lt ], [ %i.avz, %bb.jf ], [ %.sroa.011.3.i.i.i, %bb.jd ], [ %.sroa.011.3.i.i.i, %bb.kd ], [ %.sroa.011.3.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2D0wXkiOfwW_12alloc_stdlib10heap_alloc7WrapBoxNtNtCsl4v216RJbSI_19brotli_decompressor7huffman11HuffmanCodeEECs7XnEB7DeNXr_7sslocal.exit181.i.i.i.i ], [ %.sroa.011.3.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2D0wXkiOfwW_12alloc_stdlib10heap_alloc7WrapBoxNtNtCsl4v216RJbSI_19brotli_decompressor7huffman11HuffmanCodeEECs7XnEB7DeNXr_7sslocal.exit157.i.i.i.i ], [ %.sroa.011.3.i.i.i, %bb.kt ], [ %.sroa.011.3.i.i.i, %.loopexit.i.i.i.i.i ], [ %.sroa.011.3.i.i.i, %bb.lb ]
  %.sink.i.i.i.i = phi i8 [ 2, %bb.ha ], [ 2, %bb.hi ], [ 1, %bb.hg ], [ 2, %bb.hh ], [ 2, %bb.hd ], [ 2, %.loopexit211.i.i.i.i ], [ 3, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2D0wXkiOfwW_12alloc_stdlib10heap_alloc7WrapBoxNtNtCsl4v216RJbSI_19brotli_decompressor7huffman11HuffmanCodeEECs7XnEB7DeNXr_7sslocal.exit167.i.i.i.i ], [ 4, %_RNvXNtCs2D0wXkiOfwW_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs5NNYTrzbB3N_15alloc_no_stdlib15stack_allocator9AllocatormE9free_cellCs7XnEB7DeNXr_7sslocal.exit.i10.i.i.i.i.i ], [ 4, %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i1.i11.i.i.i.i.i ], [ 6, %bb.iw ], [ 21, %bb.eq ], [ 23, %bb.lt ], [ 24, %bb.jf ], [ 24, %bb.jd ], [ 18, %bb.kd ], [ 19, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2D0wXkiOfwW_12alloc_stdlib10heap_alloc7WrapBoxNtNtCsl4v216RJbSI_19brotli_decompressor7huffman11HuffmanCodeEECs7XnEB7DeNXr_7sslocal.exit181.i.i.i.i ], [ 20, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2D0wXkiOfwW_12alloc_stdlib10heap_alloc7WrapBoxNtNtCsl4v216RJbSI_19brotli_decompressor7huffman11HuffmanCodeEECs7XnEB7DeNXr_7sslocal.exit157.i.i.i.i ], [ 22, %bb.kt ], [ 21, %.loopexit.i.i.i.i.i ], [ 22, %bb.lb ] ; 2 uses
  store i8 %.sink.i.i.i.i, ptr %i.nc, align 2, !alias.scope !39590, !noalias !39569
  br label %bb.cw

bb.de:                                            ; preds = %bb.cw
  call void @llvm.experimental.noalias.scope.decl(metadata !39621)
  call void @llvm.experimental.noalias.scope.decl(metadata !39622)
  %.promoted203.i.i.i.i = load i8, ptr %i.og, align 1, !alias.scope !39621, !noalias !39623
  %.promoted.i98.i.i.i = load i32, ptr %.sroa.7254.0..sroa_idx.i.i.i.i, align 8, !alias.scope !39621, !noalias !39623 ; 4 uses
  %.promoted231.i.i.i.i = load i8, ptr %i.oh, align 1, !alias.scope !39621, !noalias !39623 ; 2 uses
  %.promoted232.i.i.i.i = load i32, ptr %.sroa.30.0..sroa_idx.i.i.i.i, align 8, !alias.scope !39621, !noalias !39623 ; 9 uses
  %.promoted233.i.i.i.i = load i64, ptr %i.ni, align 8, !alias.scope !39621, !noalias !39623 ; 9 uses
  %.promoted234.i.i.i.i = load i32, ptr %.sroa.33.0..sroa_idx.i.i.i.i, align 8, !alias.scope !39621, !noalias !39623 ; 10 uses
  %.promoted235.i.i.i.i = load i32, ptr %.sroa.32.0..sroa_idx.i.i.i.i, align 4, !alias.scope !39621, !noalias !39623 ; 11 uses
  %.promoted236.i.i.i.i = load i32, ptr %i.nm, align 8, !alias.scope !39621, !noalias !39623 ; 7 uses
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
  store i8 %i.sp, ptr %i.oh, align 1, !alias.scope !39621, !noalias !39623
  store i8 7, ptr %i.og, align 1, !alias.scope !39621, !noalias !39623
  br label %bb.ec

bb.dg:                                            ; preds = %.loopexit91.i.i.i.i
  store i8 6, ptr %i.og, align 1, !alias.scope !39621, !noalias !39623
  br label %bb.dz

bb.dh:                                            ; preds = %.loopexit88.i.i.i.i
  store i8 3, ptr %i.og, align 1, !alias.scope !39621, !noalias !39623
  br label %bb.dt

bb.di:                                            ; preds = %.loopexit88.i.i.i.i
  store i8 1, ptr %i.ny, align 4, !alias.scope !39621, !noalias !39623
  store i8 5, ptr %i.og, align 1, !alias.scope !39621, !noalias !39623
  br label %bb.dw

bb.dj:                                            ; preds = %.loopexit84.i.i.i.i
  store i8 1, ptr %i.og, align 1, !alias.scope !39621, !noalias !39623
  br label %bb.dn

default.unreachable.i109.i.i.i:                   ; preds = %bb.de
  unreachable

bb.dk:                                            ; preds = %bb.de
  call void @llvm.experimental.noalias.scope.decl(metadata !39624), !noalias !39625
  call void @llvm.experimental.noalias.scope.decl(metadata !39626), !noalias !39625
  %.not.i.i107.i.i.i = icmp eq i32 %.promoted232.i.i.i.i, 64
  br i1 %.not.i.i107.i.i.i, label %.lr.ph.i.preheader.i.i.i.i, label %.loopexit84.i.i.i.i

.lr.ph.i.preheader.i.i.i.i:                       ; preds = %bb.dk
  %3 = icmp ult i32 %.promoted235.i.i.i.i, %i.pp
  %i.sq = zext i32 %.promoted235.i.i.i.i to i64   ; 2 uses
  %.fr594.i.i.i.i = freeze i1 %3
  %i.sr = icmp eq i32 %.promoted234.i.i.i.i, 0    ; 2 uses
  br i1 %.fr594.i.i.i.i, label %bb.dl, label %.lr.ph.i.preheader.split.i.i.i.i

bb.dl:                                            ; preds = %.lr.ph.i.preheader.i.i.i.i
  br i1 %i.sr, label %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit.i.i.i.i.backedge, label %.loopexit84.loopexit.i.i.i.i

.loopexit84.loopexit.i.i.i.i:                     ; preds = %bb.dl
  %i.ss = getelementptr inbounds nuw i8, ptr %.sroa.029.1.i.i.i.i, i64 %i.sq
  %i.st = load i8, ptr %i.ss, align 1, !alias.scope !39627, !noalias !39628, !noundef !145
  %i.su = zext i8 %i.st to i64
  %i.sv = call i64 @llvm.fshl.i64(i64 %i.su, i64 %.promoted233.i.i.i.i, i64 56) ; 2 uses
  store i64 %i.sv, ptr %i.ni, align 8, !alias.scope !39629, !noalias !39623
  %i.sw = add i32 %.promoted234.i.i.i.i, -1       ; 2 uses
  store i32 %i.sw, ptr %.sroa.33.0..sroa_idx.i.i.i.i, align 8, !alias.scope !39629, !noalias !39623
  %indvars.iv.next474.i.i.i.i = add i32 %.promoted235.i.i.i.i, 1 ; 2 uses
  store i32 %indvars.iv.next474.i.i.i.i, ptr %.sroa.32.0..sroa_idx.i.i.i.i, align 4, !alias.scope !39629, !noalias !39623
  br label %.loopexit84.i.i.i.i

.lr.ph.i.preheader.split.i.i.i.i:                 ; preds = %.lr.ph.i.preheader.i.i.i.i
  br i1 %i.sr, label %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit.i.i.i.i.backedge, label %bb.dm

bb.dm:                                            ; preds = %.lr.ph.i.preheader.split.i.i.i.i
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.sq, i64 noundef range(i64 8, 4097) %.sroa.21.1.i.i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @379) #62, !noalias !39630
  unreachable

bb.dn:                                            ; preds = %bb.dj, %bb.de
  %i.sx = phi i32 [ %i.ya, %bb.dj ], [ %.promoted232.i.i.i.i, %bb.de ] ; 2 uses
  %i.sy = phi i64 [ %i.xu, %bb.dj ], [ %.promoted233.i.i.i.i, %bb.de ] ; 2 uses
  %i.sz = phi i32 [ %i.xt, %bb.dj ], [ %.promoted234.i.i.i.i, %bb.de ] ; 3 uses
  %i.ta = phi i32 [ %i.xs, %bb.dj ], [ %.promoted235.i.i.i.i, %bb.de ] ; 4 uses
  %i.tb = phi i32 [ 0, %bb.dj ], [ %.promoted236.i.i.i.i, %bb.de ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !39631), !noalias !39625
  call void @llvm.experimental.noalias.scope.decl(metadata !39632), !noalias !39625
  %.not.i24.i.i.i.i = icmp eq i32 %i.sx, 64
  br i1 %.not.i24.i.i.i.i, label %.lr.ph.i27.preheader.i.i.i.i, label %.loopexit86.i.i.i.i

.lr.ph.i27.preheader.i.i.i.i:                     ; preds = %bb.dn
  %4 = icmp ult i32 %i.ta, %i.pp
  %i.tc = zext i32 %i.ta to i64                   ; 2 uses
  %.fr534.i.i.i.i = freeze i1 %4
  %i.td = icmp eq i32 %i.sz, 0                    ; 2 uses
  br i1 %.fr534.i.i.i.i, label %bb.do, label %.lr.ph.i27.preheader.split.i.i.i.i

bb.do:                                            ; preds = %.lr.ph.i27.preheader.i.i.i.i
  br i1 %i.td, label %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit.i.i.i.i.backedge, label %.loopexit86.loopexit.i.i.i.i

.loopexit86.loopexit.i.i.i.i:                     ; preds = %bb.do
  %i.te = getelementptr inbounds nuw i8, ptr %.sroa.029.1.i.i.i.i, i64 %i.tc
  %i.tf = load i8, ptr %i.te, align 1, !alias.scope !39633, !noalias !39628, !noundef !145
  %i.tg = zext i8 %i.tf to i64
  %i.th = call i64 @llvm.fshl.i64(i64 %i.tg, i64 %i.sy, i64 56) ; 2 uses
  store i64 %i.th, ptr %i.ni, align 8, !alias.scope !39634, !noalias !39623
  %i.ti = add i32 %i.sz, -1                       ; 2 uses
  store i32 %i.ti, ptr %.sroa.33.0..sroa_idx.i.i.i.i, align 8, !alias.scope !39634, !noalias !39623
  %indvars.iv.next471.i.i.i.i = add i32 %i.ta, 1  ; 2 uses
  store i32 %indvars.iv.next471.i.i.i.i, ptr %.sroa.32.0..sroa_idx.i.i.i.i, align 4, !alias.scope !39634, !noalias !39623
  br label %.loopexit86.i.i.i.i

.lr.ph.i27.preheader.split.i.i.i.i:               ; preds = %.lr.ph.i27.preheader.i.i.i.i
  br i1 %i.td, label %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit.i.i.i.i.backedge, label %bb.dp

bb.dp:                                            ; preds = %.lr.ph.i27.preheader.split.i.i.i.i
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.tc, i64 noundef range(i64 8, 4097) %.sroa.21.1.i.i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @379) #62, !noalias !39635
  unreachable

.sink.split.i106.i.i.i:                           ; preds = %.loopexit86.i.i.i.i, %.loopexit84.i.i.i.i
  %.ph.i.i.i.i = phi i32 [ %i.ya, %.loopexit84.i.i.i.i ], [ %i.yi, %.loopexit86.i.i.i.i ]
  %.ph541.i.i.i.i = phi i64 [ %i.xu, %.loopexit84.i.i.i.i ], [ %i.yf, %.loopexit86.i.i.i.i ]
  %.ph542.i.i.i.i = phi i32 [ %i.xt, %.loopexit84.i.i.i.i ], [ %i.ye, %.loopexit86.i.i.i.i ]
  %.ph543.i.i.i.i = phi i32 [ %i.xs, %.loopexit84.i.i.i.i ], [ %i.yd, %.loopexit86.i.i.i.i ]
  %.ph544.i.i.i.i = phi i32 [ 0, %.loopexit84.i.i.i.i ], [ %i.tb, %.loopexit86.i.i.i.i ]
  store i8 2, ptr %i.og, align 1, !alias.scope !39621, !noalias !39623
  br label %bb.dq

bb.dq:                                            ; preds = %.sink.split.i106.i.i.i, %bb.de
  %i.tj = phi i32 [ %.promoted232.i.i.i.i, %bb.de ], [ %.ph.i.i.i.i, %.sink.split.i106.i.i.i ] ; 3 uses
  %i.tk = phi i64 [ %.promoted233.i.i.i.i, %bb.de ], [ %.ph541.i.i.i.i, %.sink.split.i106.i.i.i ] ; 2 uses
  %i.tl = phi i32 [ %.promoted234.i.i.i.i, %bb.de ], [ %.ph542.i.i.i.i, %.sink.split.i106.i.i.i ] ; 3 uses
  %i.tm = phi i32 [ %.promoted235.i.i.i.i, %bb.de ], [ %.ph543.i.i.i.i, %.sink.split.i106.i.i.i ] ; 4 uses
  %i.tn = phi i32 [ %.promoted236.i.i.i.i, %bb.de ], [ %.ph544.i.i.i.i, %.sink.split.i106.i.i.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !39636), !noalias !39625
  call void @llvm.experimental.noalias.scope.decl(metadata !39637), !noalias !39625
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
  %i.ts = load i8, ptr %i.tr, align 1, !alias.scope !39638, !noalias !39628, !noundef !145
  %i.tt = zext i8 %i.ts to i64
  %i.tu = call i64 @llvm.fshl.i64(i64 %i.tt, i64 %i.tk, i64 56) ; 2 uses
  store i64 %i.tu, ptr %i.ni, align 8, !alias.scope !39639, !noalias !39623
  %i.tv = add nsw i32 %i.tj, -8
  %i.tw = add i32 %i.tl, -1                       ; 2 uses
  store i32 %i.tw, ptr %.sroa.33.0..sroa_idx.i.i.i.i, align 8, !alias.scope !39639, !noalias !39623
  %indvars.iv.next465.i.i.i.i = add nuw nsw i32 %i.tm, 1 ; 2 uses
  store i32 %indvars.iv.next465.i.i.i.i, ptr %.sroa.32.0..sroa_idx.i.i.i.i, align 4, !alias.scope !39639, !noalias !39623
  br label %.loopexit88.i.i.i.i

bb.ds:                                            ; preds = %bb.dr
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.tp, i64 noundef range(i64 8, 4097) %.sroa.21.1.i.i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @379) #62, !noalias !39640
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
  call void @llvm.experimental.noalias.scope.decl(metadata !39641), !noalias !39625
  call void @llvm.experimental.noalias.scope.decl(metadata !39642), !noalias !39625
  %i.uj = add i32 %.promoted.i63183.us.i.i.i.i, -61
  %.not.i64.us.i.i.i.i = icmp ult i32 %i.uj, 4
  br i1 %.not.i64.us.i.i.i.i, label %.lr.ph.i67.us.preheader.i.i.i.i, label %.loopexit.us.i.i.i.i

.lr.ph.i67.us.preheader.i.i.i.i:                  ; preds = %.lr.ph179.split.us.i.i.i.i
  %i.uk = zext i32 %.promoted18.i70190.us.i.i.i.i to i64 ; 2 uses
  %i.ul = icmp eq i32 %.promoted17.i69187.us.i.i.i.i, 0
  br i1 %i.ul, label %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode21DecodeMetaBlockLengthNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB17_B17_ECs7XnEB7DeNXr_7sslocal.exit.thread.sink.split.i.i.i, label %bb.du

bb.du:                                            ; preds = %.lr.ph.i67.us.preheader.i.i.i.i
  %exitcond455.not.not.i.i.i.i = icmp ult i32 %.promoted18.i70190.us.i.i.i.i, %i.pp
  br i1 %exitcond455.not.not.i.i.i.i, label %.loopexit.us.loopexit.i.i.i.i, label %.split199.us.i.i.i.i

.loopexit.us.loopexit.i.i.i.i:                    ; preds = %bb.du
  %i.um = getelementptr inbounds nuw i8, ptr %.sroa.029.1.i.i.i.i, i64 %i.uk
  %i.un = load i8, ptr %i.um, align 1, !alias.scope !39643, !noalias !39628, !noundef !145
  %i.uo = zext i8 %i.un to i64
  %i.up = call i64 @llvm.fshl.i64(i64 %i.uo, i64 %i.ui, i64 56) ; 2 uses
  store i64 %i.up, ptr %i.ni, align 8, !alias.scope !39644, !noalias !39623
  %i.uq = add nsw i32 %.promoted.i63183.us.i.i.i.i, -8
  %i.ur = add i32 %.promoted17.i69187.us.i.i.i.i, -1 ; 2 uses
  store i32 %i.ur, ptr %.sroa.33.0..sroa_idx.i.i.i.i, align 8, !alias.scope !39644, !noalias !39623
  %indvars.iv.next451.i.i.i.i = add nuw nsw i32 %.promoted18.i70190.us.i.i.i.i, 1 ; 2 uses
  store i32 %indvars.iv.next451.i.i.i.i, ptr %.sroa.32.0..sroa_idx.i.i.i.i, align 4, !alias.scope !39644, !noalias !39623
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
  store i32 %i.uy, ptr %.sroa.30.0..sroa_idx.i.i.i.i, align 8, !alias.scope !39644, !noalias !39623
  %i.uz = add i32 %.sroa.013.0177.us.i.i.i.i, 1   ; 2 uses
  %i.va = shl i32 %.sroa.013.0177.us.i.i.i.i, 2
  %i.vb = and i32 %i.va, 28
  %i.vc = shl nuw i32 %i.ux, %i.vb
  %i.vd = or i32 %i.vc, %i.uh                     ; 3 uses
  store i32 %i.vd, ptr %i.nm, align 8, !alias.scope !39621, !noalias !39623
  %exitcond456.not.i.i.i.i = icmp eq i32 %i.uz, %i.ue
  br i1 %exitcond456.not.i.i.i.i, label %.sink.split545.i.i.i.i, label %.lr.ph179.split.us.i.i.i.i

.sink.split545.i.i.i.i:                           ; preds = %.loopexit.us.i.i.i.i, %bb.ef, %.loopexit83.us.i.i.i.i, %bb.el, %bb.ec, %bb.dt
  %.promoted18.i.i1678.i = phi i32 [ %.promoted18.i70189.i.i.i.i, %bb.ef ], [ %i.uc, %bb.dt ], [ %.promoted18.i80161.us.i.i.i.i, %.loopexit83.us.i.i.i.i ], [ %i.wq, %bb.ec ], [ %.promoted18.i80161.i.i.i.i, %bb.el ], [ %.promoted18.i70189.us.i.i.i.i, %.loopexit.us.i.i.i.i ]
  %.promoted17.i.i1676.i = phi i32 [ %.promoted17.i69186.i.i.i.i, %bb.ef ], [ %i.ub, %bb.dt ], [ %.promoted17.i79158.us.i.i.i.i, %.loopexit83.us.i.i.i.i ], [ %i.wp, %bb.ec ], [ %.promoted17.i79158.i.i.i.i, %bb.el ], [ %.promoted17.i69186.us.i.i.i.i, %.loopexit.us.i.i.i.i ]
  %i.ve = phi i64 [ %i.zj, %bb.ef ], [ %i.ua, %bb.dt ], [ %i.xg, %.loopexit83.us.i.i.i.i ], [ %i.wo, %bb.ec ], [ %i.abs, %bb.el ], [ %i.us, %.loopexit.us.i.i.i.i ]
  %.promoted.i81673.i.i = phi i32 [ %i.zp, %bb.ef ], [ %i.tz, %bb.dt ], [ %i.xm, %.loopexit83.us.i.i.i.i ], [ %i.wn, %bb.ec ], [ %i.aby, %bb.el ], [ %i.uy, %.loopexit.us.i.i.i.i ]
  %.ph546.i.i.i.i = phi i32 [ %i.zw, %bb.ef ], [ %i.ud, %bb.dt ], [ %i.xr, %.loopexit83.us.i.i.i.i ], [ %i.wr, %bb.ec ], [ %i.acf, %bb.el ], [ %i.vd, %.loopexit.us.i.i.i.i ]
  store i8 4, ptr %i.og, align 1, !alias.scope !39621, !noalias !39623
  br label %bb.dv

bb.dv:                                            ; preds = %.sink.split545.i.i.i.i, %bb.de
  %.promoted18.i.i.i = phi i32 [ %.promoted235.i.i.i.i, %bb.de ], [ %.promoted18.i.i1678.i, %.sink.split545.i.i.i.i ] ; 3 uses
  %.promoted17.i.i.i = phi i32 [ %.promoted234.i.i.i.i, %bb.de ], [ %.promoted17.i.i1676.i, %.sink.split545.i.i.i.i ] ; 2 uses
  %.promoted14.i.i.i = phi i64 [ %.promoted233.i.i.i.i, %bb.de ], [ %i.ve, %.sink.split545.i.i.i.i ] ; 3 uses
  %.promoted.i8.i.i = phi i32 [ %.promoted232.i.i.i.i, %bb.de ], [ %.promoted.i81673.i.i, %.sink.split545.i.i.i.i ] ; 3 uses
  %.pre.i101.i.i.i = phi i32 [ %.promoted236.i.i.i.i, %bb.de ], [ %.ph546.i.i.i.i, %.sink.split545.i.i.i.i ]
  %i.vf = load i8, ptr %i.nk, align 2, !alias.scope !39621, !noalias !39623, !noundef !145
  %i.vg = icmp eq i8 %i.vf, 0
  %i.vh = load i8, ptr %i.ny, align 4, !alias.scope !39621, !noalias !39623
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
  call void @llvm.experimental.noalias.scope.decl(metadata !39645), !noalias !39625
  call void @llvm.experimental.noalias.scope.decl(metadata !39646), !noalias !39625
  %.not.i44.i.i.i.i = icmp eq i32 %i.vk, 64
  br i1 %.not.i44.i.i.i.i, label %.lr.ph.i47.preheader.i.i.i.i, label %.loopexit91.i.i.i.i

.lr.ph.i47.preheader.i.i.i.i:                     ; preds = %bb.dw
  %5 = icmp ult i32 %i.vn, %i.pp
  %i.vp = zext i32 %i.vn to i64                   ; 2 uses
  %.fr.i.i.i.i = freeze i1 %5
  %i.vq = icmp eq i32 %i.vm, 0                    ; 2 uses
  br i1 %.fr.i.i.i.i, label %bb.dx, label %.lr.ph.i47.preheader.split.i.i.i.i

bb.dx:                                            ; preds = %.lr.ph.i47.preheader.i.i.i.i
  br i1 %i.vq, label %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit.i.i.i.i.backedge, label %.loopexit91.loopexit.i.i.i.i

.loopexit91.loopexit.i.i.i.i:                     ; preds = %bb.dx
  %i.vr = getelementptr inbounds nuw i8, ptr %.sroa.029.1.i.i.i.i, i64 %i.vp
  %i.vs = load i8, ptr %i.vr, align 1, !alias.scope !39647, !noalias !39628, !noundef !145
  %i.vt = zext i8 %i.vs to i64
  %i.vu = call i64 @llvm.fshl.i64(i64 %i.vt, i64 %i.vl, i64 56) ; 2 uses
  store i64 %i.vu, ptr %i.ni, align 8, !alias.scope !39648, !noalias !39623
  %i.vv = add i32 %i.vm, -1                       ; 2 uses
  store i32 %i.vv, ptr %.sroa.33.0..sroa_idx.i.i.i.i, align 8, !alias.scope !39648, !noalias !39623
  %indvars.iv.next448.i.i.i.i = add i32 %i.vn, 1  ; 2 uses
  store i32 %indvars.iv.next448.i.i.i.i, ptr %.sroa.32.0..sroa_idx.i.i.i.i, align 4, !alias.scope !39648, !noalias !39623
  br label %.loopexit91.i.i.i.i

.lr.ph.i47.preheader.split.i.i.i.i:               ; preds = %.lr.ph.i47.preheader.i.i.i.i
  br i1 %i.vq, label %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit.i.i.i.i.backedge, label %bb.dy

bb.dy:                                            ; preds = %.lr.ph.i47.preheader.split.i.i.i.i
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.vp, i64 noundef range(i64 8, 4097) %.sroa.21.1.i.i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @379) #62, !noalias !39649
  unreachable

bb.dz:                                            ; preds = %bb.dg, %bb.de
  %i.vw = phi i32 [ %i.vj, %bb.dg ], [ %.promoted.i98.i.i.i, %bb.de ]
  %i.vx = phi i32 [ %i.aat, %bb.dg ], [ %.promoted232.i.i.i.i, %bb.de ] ; 3 uses
  %i.vy = phi i64 [ %i.aaq, %bb.dg ], [ %.promoted233.i.i.i.i, %bb.de ] ; 2 uses
  %i.vz = phi i32 [ %i.aap, %bb.dg ], [ %.promoted234.i.i.i.i, %bb.de ] ; 3 uses
  %i.wa = phi i32 [ %i.aao, %bb.dg ], [ %.promoted235.i.i.i.i, %bb.de ] ; 4 uses
  %i.wb = phi i32 [ %i.vo, %bb.dg ], [ %.promoted236.i.i.i.i, %bb.de ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !39650), !noalias !39625
  call void @llvm.experimental.noalias.scope.decl(metadata !39651), !noalias !39625
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
  %i.wg = load i8, ptr %i.wf, align 1, !alias.scope !39652, !noalias !39628, !noundef !145
  %i.wh = zext i8 %i.wg to i64
  %i.wi = call i64 @llvm.fshl.i64(i64 %i.wh, i64 %i.vy, i64 56) ; 2 uses
  store i64 %i.wi, ptr %i.ni, align 8, !alias.scope !39653, !noalias !39623
  %i.wj = add nsw i32 %i.vx, -8
  %i.wk = add i32 %i.vz, -1                       ; 2 uses
  store i32 %i.wk, ptr %.sroa.33.0..sroa_idx.i.i.i.i, align 8, !alias.scope !39653, !noalias !39623
  %indvars.iv.next442.i.i.i.i = add nuw nsw i32 %i.wa, 1 ; 2 uses
  store i32 %indvars.iv.next442.i.i.i.i, ptr %.sroa.32.0..sroa_idx.i.i.i.i, align 4, !alias.scope !39653, !noalias !39623
  br label %.loopexit93.i.i.i.i

bb.eb:                                            ; preds = %bb.ea
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.wd, i64 noundef range(i64 8, 4097) %.sroa.21.1.i.i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @379) #62, !noalias !39654
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
  call void @llvm.experimental.noalias.scope.decl(metadata !39655), !noalias !39625
  call void @llvm.experimental.noalias.scope.decl(metadata !39656), !noalias !39625
  %i.wx = add i32 %.promoted.i73155.us.i.i.i.i, -57
  %.not.i74.us.i.i.i.i = icmp ult i32 %i.wx, 8
  br i1 %.not.i74.us.i.i.i.i, label %.lr.ph.i77.us.preheader.i.i.i.i, label %.loopexit83.us.i.i.i.i

.lr.ph.i77.us.preheader.i.i.i.i:                  ; preds = %.lr.ph.split.us.i.i.i.i
  %i.wy = zext i32 %.promoted18.i80162.us.i.i.i.i to i64 ; 2 uses
  %i.wz = icmp eq i32 %.promoted17.i79159.us.i.i.i.i, 0
  br i1 %i.wz, label %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode21DecodeMetaBlockLengthNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB17_B17_ECs7XnEB7DeNXr_7sslocal.exit.thread.sink.split.i.i.i, label %bb.ed

bb.ed:                                            ; preds = %.lr.ph.i77.us.preheader.i.i.i.i
  %exitcond.not.not.i103.i.i.i = icmp ult i32 %.promoted18.i80162.us.i.i.i.i, %i.pp
  br i1 %exitcond.not.not.i103.i.i.i, label %.loopexit83.us.loopexit.i.i.i.i, label %.split.us.i.i.i.i

.loopexit83.us.loopexit.i.i.i.i:                  ; preds = %bb.ed
  %i.xa = getelementptr inbounds nuw i8, ptr %.sroa.029.1.i.i.i.i, i64 %i.wy
  %i.xb = load i8, ptr %i.xa, align 1, !alias.scope !39657, !noalias !39628, !noundef !145
  %i.xc = zext i8 %i.xb to i64
  %i.xd = call i64 @llvm.fshl.i64(i64 %i.xc, i64 %i.ww, i64 56) ; 2 uses
  store i64 %i.xd, ptr %i.ni, align 8, !alias.scope !39658, !noalias !39623
  %i.xe = add nsw i32 %.promoted.i73155.us.i.i.i.i, -8
  %i.xf = add i32 %.promoted17.i79159.us.i.i.i.i, -1 ; 2 uses
  store i32 %i.xf, ptr %.sroa.33.0..sroa_idx.i.i.i.i, align 8, !alias.scope !39658, !noalias !39623
  %indvars.iv.next.i104.i.i.i = add nuw nsw i32 %.promoted18.i80162.us.i.i.i.i, 1 ; 2 uses
  store i32 %indvars.iv.next.i104.i.i.i, ptr %.sroa.32.0..sroa_idx.i.i.i.i, align 4, !alias.scope !39658, !noalias !39623
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
  store i32 %i.xm, ptr %.sroa.30.0..sroa_idx.i.i.i.i, align 8, !alias.scope !39658, !noalias !39623
  %i.xn = add i32 %.sroa.018.0153.us.i.i.i.i, 1   ; 2 uses
  %i.xo = shl i32 %.sroa.018.0153.us.i.i.i.i, 3
  %i.xp = and i32 %i.xo, 24
  %i.xq = shl nuw i32 %i.xl, %i.xp
  %i.xr = or i32 %i.xq, %i.wv                     ; 3 uses
  store i32 %i.xr, ptr %i.nm, align 8, !alias.scope !39621, !noalias !39623
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
  store i32 %i.ya, ptr %.sroa.30.0..sroa_idx.i.i.i.i, align 8, !alias.scope !39629, !noalias !39623
  %i.yb = trunc nuw nsw i32 %i.xz to i8
  store i8 %i.yb, ptr %i.nk, align 2, !alias.scope !39621, !noalias !39623
  store i32 0, ptr %i.nm, align 8, !alias.scope !39621, !noalias !39623
  store i8 0, ptr %i.nz, align 1, !alias.scope !39621, !noalias !39623
  store i8 0, ptr %i.ny, align 4, !alias.scope !39621, !noalias !39623
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
  store i32 %i.yi, ptr %.sroa.30.0..sroa_idx.i.i.i.i, align 8, !alias.scope !39634, !noalias !39623
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
  store i32 %i.yu, ptr %.sroa.30.0..sroa_idx.i.i.i.i, align 8, !alias.scope !39639, !noalias !39623
  %i.yv = trunc nuw nsw i32 %i.yt to i8
  %i.yw = or disjoint i8 %i.yv, 4                 ; 2 uses
  store i8 %i.yw, ptr %i.oh, align 1, !alias.scope !39621, !noalias !39623
  store i32 0, ptr %.sroa.7254.0..sroa_idx.i.i.i.i, align 8, !alias.scope !39621, !noalias !39623
  %i.yx = icmp eq i32 %i.yt, 3
  br i1 %i.yx, label %bb.di, label %bb.dh

.lr.ph179.split.i.i.i.i:                          ; preds = %.lr.ph179.i.i.i.i, %bb.ef
  %i.yy = phi i32 [ %i.zw, %bb.ef ], [ %i.ud, %.lr.ph179.i.i.i.i ]
  %.promoted18.i70190.i.i.i.i = phi i32 [ %.promoted18.i70189.i.i.i.i, %bb.ef ], [ %i.uc, %.lr.ph179.i.i.i.i ] ; 4 uses
  %.promoted17.i69187.i.i.i.i = phi i32 [ %.promoted17.i69186.i.i.i.i, %bb.ef ], [ %i.ub, %.lr.ph179.i.i.i.i ] ; 3 uses
  %i.yz = phi i64 [ %i.zj, %bb.ef ], [ %i.ua, %.lr.ph179.i.i.i.i ] ; 2 uses
  %.promoted.i63183.i.i.i.i = phi i32 [ %i.zp, %bb.ef ], [ %i.tz, %.lr.ph179.i.i.i.i ] ; 3 uses
  %.sroa.013.0177.i.i.i.i = phi i32 [ %i.zq, %bb.ef ], [ %i.tx, %.lr.ph179.i.i.i.i ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !39641), !noalias !39625
  call void @llvm.experimental.noalias.scope.decl(metadata !39642), !noalias !39625
  %i.za = add i32 %.promoted.i63183.i.i.i.i, -61
  %.not.i64.i.i.i.i = icmp ult i32 %i.za, 4
  br i1 %.not.i64.i.i.i.i, label %.lr.ph.i67.preheader.i.i.i.i, label %.loopexit.i105.i.i.i

.lr.ph.i67.preheader.i.i.i.i:                     ; preds = %.lr.ph179.split.i.i.i.i
  %i.zb = zext i32 %.promoted18.i70190.i.i.i.i to i64 ; 2 uses
  %i.zc = icmp eq i32 %.promoted17.i69187.i.i.i.i, 0
  br i1 %i.zc, label %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode21DecodeMetaBlockLengthNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB17_B17_ECs7XnEB7DeNXr_7sslocal.exit.thread.sink.split.i.i.i, label %bb.ee

bb.ee:                                            ; preds = %.lr.ph.i67.preheader.i.i.i.i
  %exitcond462.not.not.i.i.i.i = icmp ult i32 %.promoted18.i70190.i.i.i.i, %i.pp
  br i1 %exitcond462.not.not.i.i.i.i, label %.loopexit.loopexit.i.i.i.i, label %.split199.us.i.i.i.i

.loopexit.loopexit.i.i.i.i:                       ; preds = %bb.ee
  %i.zd = getelementptr inbounds nuw i8, ptr %.sroa.029.1.i.i.i.i, i64 %i.zb
  %i.ze = load i8, ptr %i.zd, align 1, !alias.scope !39643, !noalias !39628, !noundef !145
  %i.zf = zext i8 %i.ze to i64
  %i.zg = call i64 @llvm.fshl.i64(i64 %i.zf, i64 %i.yz, i64 56) ; 2 uses
  store i64 %i.zg, ptr %i.ni, align 8, !alias.scope !39644, !noalias !39623
  %i.zh = add nsw i32 %.promoted.i63183.i.i.i.i, -8
  %i.zi = add i32 %.promoted17.i69187.i.i.i.i, -1 ; 2 uses
  store i32 %i.zi, ptr %.sroa.33.0..sroa_idx.i.i.i.i, align 8, !alias.scope !39644, !noalias !39623
  %indvars.iv.next458.i.i.i.i = add nuw nsw i32 %.promoted18.i70190.i.i.i.i, 1 ; 2 uses
  store i32 %indvars.iv.next458.i.i.i.i, ptr %.sroa.32.0..sroa_idx.i.i.i.i, align 4, !alias.scope !39644, !noalias !39623
  br label %.loopexit.i105.i.i.i

.split199.us.i.i.i.i:                             ; preds = %bb.du, %bb.ee
  %.us-phi201.i.i.i.i = phi i64 [ %i.zb, %bb.ee ], [ %i.uk, %bb.du ]
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %.us-phi201.i.i.i.i, i64 noundef range(i64 8, 4097) %.sroa.21.1.i.i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @379) #62, !noalias !39659
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
  store i32 %i.zp, ptr %.sroa.30.0..sroa_idx.i.i.i.i, align 8, !alias.scope !39644, !noalias !39623
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
  store i32 %i.zw, ptr %i.nm, align 8, !alias.scope !39621, !noalias !39623
  br i1 %i.zr, label %.sink.split545.i.i.i.i, label %.lr.ph179.split.i.i.i.i

bb.eg:                                            ; preds = %bb.dv
  call void @llvm.experimental.noalias.scope.decl(metadata !39660)
  call void @llvm.experimental.noalias.scope.decl(metadata !39661)
  %.not.i9.i.i = icmp eq i32 %.promoted.i8.i.i, 64
  br i1 %.not.i9.i.i, label %bb.eh, label %.loopexit.i.i72

bb.eh:                                            ; preds = %bb.eg
  %6 = icmp ult i32 %.promoted18.i.i.i, %i.pp
  %i.zx = zext i32 %.promoted18.i.i.i to i64      ; 2 uses
  %.fr.i.i = freeze i1 %6
  %i.zy = icmp eq i32 %.promoted17.i.i.i, 0       ; 2 uses
  br i1 %.fr.i.i, label %bb.ei, label %.lr.ph.i11.split.i.i

bb.ei:                                            ; preds = %bb.eh
  br i1 %i.zy, label %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit.i.i.i.i.backedge, label %.loopexit.loopexit.i.i

.loopexit.loopexit.i.i:                           ; preds = %bb.ei
  %i.zz = getelementptr inbounds nuw i8, ptr %.sroa.029.1.i.i.i.i, i64 %i.zx
  %i.aaa = load i8, ptr %i.zz, align 1, !alias.scope !39661, !noalias !39591, !noundef !145
  %i.aab = zext i8 %i.aaa to i64
  %i.aac = call i64 @llvm.fshl.i64(i64 %i.aab, i64 %.promoted14.i.i.i, i64 56) ; 2 uses
  store i64 %i.aac, ptr %i.ni, align 8, !alias.scope !39660, !noalias !39662
  %i.aad = add i32 %.promoted17.i.i.i, -1
  store i32 %i.aad, ptr %.sroa.33.0..sroa_idx.i.i.i.i, align 8, !alias.scope !39660, !noalias !39662
  %indvars.iv.next.i.i = add i32 %.promoted18.i.i.i, 1
  store i32 %indvars.iv.next.i.i, ptr %.sroa.32.0..sroa_idx.i.i.i.i, align 4, !alias.scope !39660, !noalias !39662
  br label %.loopexit.i.i72

.lr.ph.i11.split.i.i:                             ; preds = %bb.eh
  br i1 %i.zy, label %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit.i.i.i.i.backedge, label %7

7:                                                ; preds = %.lr.ph.i11.split.i.i
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.zx, i64 noundef range(i64 8, 4097) %.sroa.21.1.i.i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @379) #62, !noalias !39663
  unreachable

.loopexit.i.i72:                                  ; preds = %.loopexit.loopexit.i.i, %bb.eg
  %i.aae = phi i64 [ %i.aac, %.loopexit.loopexit.i.i ], [ %.promoted14.i.i.i, %bb.eg ] ; 2 uses
  %.lcssa7.i.i.i = phi i32 [ 56, %.loopexit.loopexit.i.i ], [ %.promoted.i8.i.i, %bb.eg ] ; 2 uses
  %i.aaf = and i32 %.lcssa7.i.i.i, 63
  %i.aag = zext nneg i32 %i.aaf to i64
  %i.aah = lshr i64 %i.aae, %i.aag
  %i.aai = trunc i64 %i.aah to i8
  %i.aaj = and i8 %i.aai, 1
  %i.aak = add i32 %.lcssa7.i.i.i, 1              ; 2 uses
  store i32 %i.aak, ptr %.sroa.30.0..sroa_idx.i.i.i.i, align 8, !alias.scope !39660, !noalias !39662
  store i8 %i.aaj, ptr %i.nz, align 1, !alias.scope !39621, !noalias !39623
  br label %bb.ej

bb.ej:                                            ; preds = %.loopexit.i.i72, %bb.dv
  %i.aal = phi i64 [ %.promoted14.i.i.i, %bb.dv ], [ %i.aae, %.loopexit.i.i72 ]
  %i.aam = phi i32 [ %.promoted.i8.i.i, %bb.dv ], [ %i.aak, %.loopexit.i.i72 ]
  %i.aan = add i32 %.pre.i101.i.i.i, 1            ; 2 uses
  store i32 %i.aan, ptr %i.nm, align 8, !alias.scope !39621, !noalias !39623
  br label %bb.hk

.loopexit91.i.i.i.i:                              ; preds = %.loopexit91.loopexit.i.i.i.i, %bb.dw
  %i.aao = phi i32 [ %i.vn, %bb.dw ], [ %indvars.iv.next448.i.i.i.i, %.loopexit91.loopexit.i.i.i.i ]
  %i.aap = phi i32 [ %i.vm, %bb.dw ], [ %i.vv, %.loopexit91.loopexit.i.i.i.i ]
  %i.aaq = phi i64 [ %i.vl, %bb.dw ], [ %i.vu, %.loopexit91.loopexit.i.i.i.i ] ; 2 uses
  %.lcssa7.i46.i.i.i.i = phi i32 [ %i.vk, %bb.dw ], [ 56, %.loopexit91.loopexit.i.i.i.i ] ; 2 uses
  %i.aar = and i32 %.lcssa7.i46.i.i.i.i, 63
  %i.aas = zext nneg i32 %i.aar to i64
  %i.aat = add i32 %.lcssa7.i46.i.i.i.i, 1        ; 2 uses
  store i32 %i.aat, ptr %.sroa.30.0..sroa_idx.i.i.i.i, align 8, !alias.scope !39648, !noalias !39623
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
  store i32 %i.abf, ptr %.sroa.30.0..sroa_idx.i.i.i.i, align 8, !alias.scope !39653, !noalias !39623
  %i.abg = icmp eq i32 %i.abe, 0
  br i1 %i.abg, label %bb.hk, label %bb.df

.lr.ph.split.i.i.i.i:                             ; preds = %.lr.ph.i102.i.i.i, %bb.el
  %i.abh = phi i32 [ %i.acf, %bb.el ], [ %i.wr, %.lr.ph.i102.i.i.i ]
  %.promoted18.i80162.i.i.i.i = phi i32 [ %.promoted18.i80161.i.i.i.i, %bb.el ], [ %i.wq, %.lr.ph.i102.i.i.i ] ; 4 uses
  %.promoted17.i79159.i.i.i.i = phi i32 [ %.promoted17.i79158.i.i.i.i, %bb.el ], [ %i.wp, %.lr.ph.i102.i.i.i ] ; 3 uses
  %i.abi = phi i64 [ %i.abs, %bb.el ], [ %i.wo, %.lr.ph.i102.i.i.i ] ; 2 uses
  %.promoted.i73155.i.i.i.i = phi i32 [ %i.aby, %bb.el ], [ %i.wn, %.lr.ph.i102.i.i.i ] ; 3 uses
  %.sroa.018.0153.i.i.i.i = phi i32 [ %i.abz, %bb.el ], [ %i.wl, %.lr.ph.i102.i.i.i ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !39655), !noalias !39625
  call void @llvm.experimental.noalias.scope.decl(metadata !39656), !noalias !39625
  %i.abj = add i32 %.promoted.i73155.i.i.i.i, -57
  %.not.i74.i.i.i.i = icmp ult i32 %i.abj, 8
  br i1 %.not.i74.i.i.i.i, label %.lr.ph.i77.preheader.i.i.i.i, label %.loopexit83.i.i.i.i

.lr.ph.i77.preheader.i.i.i.i:                     ; preds = %.lr.ph.split.i.i.i.i
  %i.abk = zext i32 %.promoted18.i80162.i.i.i.i to i64 ; 2 uses
  %i.abl = icmp eq i32 %.promoted17.i79159.i.i.i.i, 0
  br i1 %i.abl, label %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode21DecodeMetaBlockLengthNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB17_B17_ECs7XnEB7DeNXr_7sslocal.exit.thread.sink.split.i.i.i, label %bb.ek

bb.ek:                                            ; preds = %.lr.ph.i77.preheader.i.i.i.i
  %exitcond439.not.not.i.i.i.i = icmp ult i32 %.promoted18.i80162.i.i.i.i, %i.pp
  br i1 %exitcond439.not.not.i.i.i.i, label %.loopexit83.loopexit.i.i.i.i, label %.split.us.i.i.i.i

.loopexit83.loopexit.i.i.i.i:                     ; preds = %bb.ek
  %i.abm = getelementptr inbounds nuw i8, ptr %.sroa.029.1.i.i.i.i, i64 %i.abk
  %i.abn = load i8, ptr %i.abm, align 1, !alias.scope !39657, !noalias !39628, !noundef !145
  %i.abo = zext i8 %i.abn to i64
  %i.abp = call i64 @llvm.fshl.i64(i64 %i.abo, i64 %i.abi, i64 56) ; 2 uses
  store i64 %i.abp, ptr %i.ni, align 8, !alias.scope !39658, !noalias !39623
  %i.abq = add nsw i32 %.promoted.i73155.i.i.i.i, -8
  %i.abr = add i32 %.promoted17.i79159.i.i.i.i, -1 ; 2 uses
  store i32 %i.abr, ptr %.sroa.33.0..sroa_idx.i.i.i.i, align 8, !alias.scope !39658, !noalias !39623
  %indvars.iv.next435.i.i.i.i = add nuw nsw i32 %.promoted18.i80162.i.i.i.i, 1 ; 2 uses
  store i32 %indvars.iv.next435.i.i.i.i, ptr %.sroa.32.0..sroa_idx.i.i.i.i, align 4, !alias.scope !39658, !noalias !39623
  br label %.loopexit83.i.i.i.i

.split.us.i.i.i.i:                                ; preds = %bb.ed, %bb.ek
  %.us-phi170.i.i.i.i = phi i64 [ %i.abk, %bb.ek ], [ %i.wy, %bb.ed ]
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %.us-phi170.i.i.i.i, i64 noundef range(i64 8, 4097) %.sroa.21.1.i.i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @379) #62, !noalias !39664
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
  store i32 %i.aby, ptr %.sroa.30.0..sroa_idx.i.i.i.i, align 8, !alias.scope !39658, !noalias !39623
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
  store i32 %i.acf, ptr %i.nm, align 8, !alias.scope !39621, !noalias !39623
  br i1 %i.aca, label %.sink.split545.i.i.i.i, label %.lr.ph.split.i.i.i.i

_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode21DecodeMetaBlockLengthNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB17_B17_ECs7XnEB7DeNXr_7sslocal.exit.thread.sink.split.i.i.i: ; preds = %.lr.ph.i67.us.preheader.i.i.i.i, %.lr.ph.i67.preheader.i.i.i.i, %.lr.ph.i77.us.preheader.i.i.i.i, %.lr.ph.i77.preheader.i.i.i.i
  %.us-phi168.i.sink.i.i.i = phi i32 [ %.sroa.013.0177.i.i.i.i, %.lr.ph.i67.preheader.i.i.i.i ], [ %.sroa.018.0153.us.i.i.i.i, %.lr.ph.i77.us.preheader.i.i.i.i ], [ %.sroa.018.0153.i.i.i.i, %.lr.ph.i77.preheader.i.i.i.i ], [ %.sroa.013.0177.us.i.i.i.i, %.lr.ph.i67.us.preheader.i.i.i.i ]
  store i32 %.us-phi168.i.sink.i.i.i, ptr %.sroa.7254.0..sroa_idx.i.i.i.i, align 8, !alias.scope !39621, !noalias !39623
  br label %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit.i.i.i.i.backedge

bb.em:                                            ; preds = %bb.cw
  call void @llvm.experimental.noalias.scope.decl(metadata !39665)
  call void @llvm.experimental.noalias.scope.decl(metadata !39666)
  %.promoted.i143.i.i.i.i = load i32, ptr %.sroa.30.0..sroa_idx.i.i.i.i, align 8, !alias.scope !39667, !noalias !39569 ; 3 uses
  %i.acg = add i32 %.promoted.i143.i.i.i.i, -59
  %.not.i144.i.i.i.i = icmp ult i32 %i.acg, 6
  %.promoted14.i148.i.i.i.i = load i64, ptr %i.ni, align 8, !alias.scope !39667, !noalias !39569 ; 2 uses
  br i1 %.not.i144.i.i.i.i, label %.lr.ph.i147.i.i.i.i, label %.loopexit212.i.i.i.i

.lr.ph.i147.i.i.i.i:                              ; preds = %bb.em
  %.promoted17.i149.i.i.i.i = load i32, ptr %.sroa.33.0..sroa_idx.i.i.i.i, align 8, !alias.scope !39667, !noalias !39569 ; 2 uses
  %.promoted18.i150.i.i.i.i = load i32, ptr %.sroa.32.0..sroa_idx.i.i.i.i, align 4, !alias.scope !39667, !noalias !39569 ; 3 uses
  %i.ach = zext i32 %.promoted18.i150.i.i.i.i to i64 ; 2 uses
  %i.aci = icmp eq i32 %.promoted17.i149.i.i.i.i, 0
  br i1 %i.aci, label %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit.i.i.i.i.backedge, label %bb.en

bb.en:                                            ; preds = %.lr.ph.i147.i.i.i.i
  %exitcond.not.not.i.i.i.i = icmp ult i32 %.promoted18.i150.i.i.i.i, %i.pp
  br i1 %exitcond.not.not.i.i.i.i, label %.loopexit212.loopexit.i.i.i.i, label %bb.eo

.loopexit212.loopexit.i.i.i.i:                    ; preds = %bb.en
  %i.acj = getelementptr inbounds nuw i8, ptr %.sroa.029.1.i.i.i.i, i64 %i.ach
  %i.ack = load i8, ptr %i.acj, align 1, !alias.scope !39666, !noalias !39593, !noundef !145
  %i.acl = zext i8 %i.ack to i64
  %i.acm = call i64 @llvm.fshl.i64(i64 %i.acl, i64 %.promoted14.i148.i.i.i.i, i64 56) ; 2 uses
  store i64 %i.acm, ptr %i.ni, align 8, !alias.scope !39667, !noalias !39569
  %i.acn = add nsw i32 %.promoted.i143.i.i.i.i, -8
  %i.aco = add i32 %.promoted17.i149.i.i.i.i, -1
  store i32 %i.aco, ptr %.sroa.33.0..sroa_idx.i.i.i.i, align 8, !alias.scope !39667, !noalias !39569
  %indvars.iv.next.i.i.i.i = add nuw nsw i32 %.promoted18.i150.i.i.i.i, 1
  store i32 %indvars.iv.next.i.i.i.i, ptr %.sroa.32.0..sroa_idx.i.i.i.i, align 4, !alias.scope !39667, !noalias !39569
  br label %.loopexit212.i.i.i.i

bb.eo:                                            ; preds = %bb.en
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.ach, i64 noundef range(i64 8, 4097) %.sroa.21.1.i.i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @379) #62, !noalias !39668
  unreachable

bb.ep:                                            ; preds = %bb.cw
  call void @llvm.experimental.noalias.scope.decl(metadata !39669)
  call void @llvm.experimental.noalias.scope.decl(metadata !39670)
  %i.acp = load i32, ptr %.sroa.7254.0..sroa_idx.i.i.i.i, align 8, !alias.scope !39671, !noalias !39569, !noundef !145 ; 2 uses
  %.val7.i.i.i.i.i = load i64, ptr %.sroa.27.0..sroa_idx.i.i.i.i, align 8, !alias.scope !39671, !noalias !39569, !noundef !145 ; 2 uses
  %i.acq = sext i32 %i.acp to i64                 ; 4 uses
  %i.acr = load i32, ptr %.sroa.68.0..sroa_idx.i.i.i.i, align 8, !alias.scope !39671, !noalias !39569, !noundef !145
  %i.acs = zext i32 %i.acr to i64                 ; 5 uses
  %i.act = icmp ult i64 %i.acs, %i.acq
  %.not.i153.i.i.i.i = icmp ult i64 %.val7.i.i.i.i.i, %i.acs
  %or.cond.i.i.i.i.i = or i1 %i.act, %.not.i153.i.i.i.i
  br i1 %or.cond.i.i.i.i.i, label %bb.er, label %bb.eq, !prof !172

bb.eq:                                            ; preds = %bb.ep
  %.val.i.i.i.i.i = load ptr, ptr %.sroa.26.0..sroa_idx.i.i.i.i, align 8, !alias.scope !39671, !noalias !39569, !nonnull !145, !noundef !145 ; 2 uses
  %i.acu = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 %i.acs
  %i.acv = icmp samesign eq i64 %i.acq, %i.acs
  br i1 %i.acv, label %.backedge.i.i.i.i, label %.lr.ph.i154.i.i.i.i

.lr.ph.i154.i.i.i.i:                              ; preds = %bb.eq
  %i.acw = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 %i.acq
  %.promoted.i155.i.i.i.i = load i32, ptr %.sroa.30.0..sroa_idx.i.i.i.i, align 8, !alias.scope !39672, !noalias !39569
  %.promoted19.i.i.i.i.i = load i64, ptr %i.ni, align 8, !alias.scope !39671, !noalias !39569
  %.promoted20.i.i.i.i.i = load i32, ptr %.sroa.33.0..sroa_idx.i.i.i.i, align 8, !alias.scope !39671, !noalias !39569
  %.promoted23.i.i.i.i.i = load i32, ptr %.sroa.32.0..sroa_idx.i.i.i.i, align 4, !alias.scope !39671, !noalias !39569
  br label %bb.es

bb.er:                                            ; preds = %bb.ep
  call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %i.acq, i64 noundef %i.acs, i64 noundef %.val7.i.i.i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @367) #62, !noalias !39673
  unreachable

bb.es:                                            ; preds = %.loopexit.i.i.i.i.i, %.lr.ph.i154.i.i.i.i
  %.promoted18.i25.i.i.i.i.i = phi i32 [ %.promoted23.i.i.i.i.i, %.lr.ph.i154.i.i.i.i ], [ %.promoted18.i24.i.i.i.i.i, %.loopexit.i.i.i.i.i ] ; 4 uses
  %.promoted17.i22.i.i.i.i.i = phi i32 [ %.promoted20.i.i.i.i.i, %.lr.ph.i154.i.i.i.i ], [ %.promoted17.i21.i.i.i.i.i, %.loopexit.i.i.i.i.i ] ; 3 uses
  %i.acx = phi i64 [ %.promoted19.i.i.i.i.i, %.lr.ph.i154.i.i.i.i ], [ %i.adh, %.loopexit.i.i.i.i.i ] ; 2 uses
  %.promoted.i18.i.i.i.i.i = phi i32 [ %.promoted.i155.i.i.i.i, %.lr.ph.i154.i.i.i.i ], [ %i.adn, %.loopexit.i.i.i.i.i ] ; 3 uses
  %.sroa.01.017.i.i.i.i.i = phi i32 [ %i.acp, %.lr.ph.i154.i.i.i.i ], [ %i.adp, %.loopexit.i.i.i.i.i ] ; 2 uses
  %.sroa.04.016.i.i.i.i.i = phi ptr [ %i.acw, %.lr.ph.i154.i.i.i.i ], [ %i.ado, %.loopexit.i.i.i.i.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !39674)
  call void @llvm.experimental.noalias.scope.decl(metadata !39675)
  %i.acy = add i32 %.promoted.i18.i.i.i.i.i, -63
  %.not.i.i.i.i.i.i = icmp ult i32 %i.acy, 2
  br i1 %.not.i.i.i.i.i.i, label %.lr.ph.i.preheader.i.i.i.i.i, label %.loopexit.i.i.i.i.i

.lr.ph.i.preheader.i.i.i.i.i:                     ; preds = %bb.es
  %i.acz = zext i32 %.promoted18.i25.i.i.i.i.i to i64 ; 2 uses
  %i.ada = icmp eq i32 %.promoted17.i22.i.i.i.i.i, 0
  br i1 %i.ada, label %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode16ReadContextModesNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB12_B12_ECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i, label %bb.et

bb.et:                                            ; preds = %.lr.ph.i.preheader.i.i.i.i.i
  %exitcond.not.not.i.i.i.i.i = icmp ult i32 %.promoted18.i25.i.i.i.i.i, %i.pp
  br i1 %exitcond.not.not.i.i.i.i.i, label %.loopexit.loopexit.i.i.i.i.i, label %bb.eu

end_hunk_2
begin_hunk_3_@_RNCINvNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13online_config16content_encoding9read_bodyINtNtCs7ewmRfXve8r_4http8response8ResponseNtNtNtCsaI3lGUjttVO_5hyper4body8incoming8IncomingEE0Cs7XnEB7DeNXr_7sslocal:bb.a
  %i.anz = zext nneg i32 %i.any to i64
  %i.aoa = add i32 %i.anu, 1                      ; 2 uses
  store i32 %i.aoa, ptr %.sroa.30.0..sroa_idx.i.i.i.i, align 8, !alias.scope !39597, !noalias !39569
  %i.aob = shl nuw i64 1, %i.anz
  %i.aoc = and i64 %i.aob, %i.anv
  %i.aod = icmp eq i64 %i.aoc, 0
  br i1 %i.aod, label %bb.ha, label %bb.hb

bb.ha:                                            ; preds = %bb.gz
  store i32 16, ptr %.sroa.102.0..sroa_idx.i.i.i.i, align 8, !alias.scope !39706, !noalias !39569
  br label %.backedge.i.i.i.i

bb.hb:                                            ; preds = %bb.gz
  %i.aoe = and i32 %i.aoa, 63
  %i.aof = zext nneg i32 %i.aoe to i64
  %i.aog = lshr i64 %i.anv, %i.aof
  %i.aoh = trunc i64 %i.aog to i32
  %i.aoi = and i32 %i.aoh, 7                      ; 2 uses
  %i.aoj = add i32 %i.anu, 4                      ; 2 uses
  store i32 %i.aoj, ptr %.sroa.30.0..sroa_idx.i.i.i.i, align 8, !alias.scope !39597, !noalias !39569
  %i.aok = icmp eq i32 %i.aoi, 0
  br i1 %i.aok, label %bb.hc, label %bb.hd

bb.hc:                                            ; preds = %bb.hb
  %i.aol = and i32 %i.aoj, 63
  %i.aom = zext nneg i32 %i.aol to i64
  %i.aon = lshr i64 %i.anv, %i.aom
  %i.aoo = trunc i64 %i.aon to i32
  %i.aop = and i32 %i.aoo, 7                      ; 2 uses
  %i.aoq = add i32 %i.anu, 7                      ; 2 uses
  store i32 %i.aoq, ptr %.sroa.30.0..sroa_idx.i.i.i.i, align 8, !alias.scope !39597, !noalias !39569
  switch i32 %i.aop, label %bb.hi [
    i32 1, label %bb.he
    i32 0, label %bb.hh
  ]

bb.hd:                                            ; preds = %bb.hb
  %i.aor = add nuw nsw i32 %i.aoi, 17
  store i32 %i.aor, ptr %.sroa.102.0..sroa_idx.i.i.i.i, align 8, !alias.scope !39706, !noalias !39569
  br label %.backedge.i.i.i.i

bb.he:                                            ; preds = %bb.hc
  br i1 %i.anx, label %bb.hf, label %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit.i.i.i.i.backedge

bb.hf:                                            ; preds = %bb.he
  %i.aos = and i32 %i.aoq, 63
  %i.aot = zext nneg i32 %i.aos to i64
  %i.aou = add i32 %i.anu, 8
  store i32 %i.aou, ptr %.sroa.30.0..sroa_idx.i.i.i.i, align 8, !alias.scope !39597, !noalias !39569
  %i.aov = shl nuw i64 1, %i.aot
  %i.aow = and i64 %i.aov, %i.anv
  %.not.i159.i.i.i.i = icmp eq i64 %i.aow, 0
  br i1 %.not.i159.i.i.i.i, label %bb.hg, label %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit.i.i.i.i.backedge

bb.hg:                                            ; preds = %bb.hf
  store i8 1, ptr %.sroa.120.0..sroa_idx.i.i.i.i, align 4, !alias.scope !39705, !noalias !39569
  br label %.backedge.i.i.i.i

bb.hh:                                            ; preds = %bb.hc
  store i32 17, ptr %.sroa.102.0..sroa_idx.i.i.i.i, align 8, !alias.scope !39706, !noalias !39569
  br label %.backedge.i.i.i.i

bb.hi:                                            ; preds = %bb.hc
  %i.aox = or disjoint i32 %i.aop, 8
  store i32 %i.aox, ptr %.sroa.102.0..sroa_idx.i.i.i.i, align 8, !alias.scope !39706, !noalias !39569
  br label %.backedge.i.i.i.i

.loopexit211.i.i.i.i:                             ; preds = %bb.cy, %.loopexit211.loopexit.i.i.i.i
  %i.aoy = phi i64 [ %i.qa, %.loopexit211.loopexit.i.i.i.i ], [ %.promoted14.i.i.i.i.i, %bb.cy ]
  %.lcssa7.i.i.i.i.i = phi i32 [ %i.qb, %.loopexit211.loopexit.i.i.i.i ], [ %.promoted.i.i.i.i.i, %bb.cy ] ; 2 uses
  %i.aoz = and i32 %.lcssa7.i.i.i.i.i, 63
  %i.apa = zext nneg i32 %i.aoz to i64
  %i.apb = lshr i64 %i.aoy, %i.apa
  %i.apc = trunc i64 %i.apb to i32
  %i.apd = and i32 %i.apc, 63                     ; 2 uses
  store i32 %i.apd, ptr %.sroa.102.0..sroa_idx.i.i.i.i, align 8, !alias.scope !39707, !noalias !39569
  %i.ape = add i32 %.lcssa7.i.i.i.i.i, 6
  store i32 %i.ape, ptr %.sroa.30.0..sroa_idx.i.i.i.i, align 8, !alias.scope !39601, !noalias !39569
  %i.apf = add nsw i32 %i.apd, -31
  %or.cond.i.i.i.i74 = icmp ult i32 %i.apf, -21
  br i1 %or.cond.i.i.i.i74, label %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit.i.i.i.i.backedge, label %.backedge.i.i.i.i

bb.hj:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2D0wXkiOfwW_12alloc_stdlib10heap_alloc7WrapBoxNtNtCsl4v216RJbSI_19brotli_decompressor7huffman11HuffmanCodeEECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i
  call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef 2, i64 12960) #61, !noalias !39708
  unreachable

.lr.ph.i.i.i161.i.i.i.i:                          ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2D0wXkiOfwW_12alloc_stdlib10heap_alloc7WrapBoxNtNtCsl4v216RJbSI_19brotli_decompressor7huffman11HuffmanCodeEECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i, %.lr.ph.i.i.i161.i.i.i.i.7
  %.sroa.0.018.i.i.i162.i.i.i.i = phi ptr [ %i.apw, %.lr.ph.i.i.i161.i.i.i.i.7 ], [ %i.rg, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2D0wXkiOfwW_12alloc_stdlib10heap_alloc7WrapBoxNtNtCsl4v216RJbSI_19brotli_decompressor7huffman11HuffmanCodeEECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i ] ; 18 uses
  %.sroa.03.017.i.i.i163.i.i.i.i = phi i64 [ %i.apu, %.lr.ph.i.i.i161.i.i.i.i.7 ], [ 1, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2D0wXkiOfwW_12alloc_stdlib10heap_alloc7WrapBoxNtNtCsl4v216RJbSI_19brotli_decompressor7huffman11HuffmanCodeEECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i ] ; 2 uses
  store i16 0, ptr %.sroa.0.018.i.i.i162.i.i.i.i, align 2, !noalias !39709
  %i.apg = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i.i.i162.i.i.i.i, i64 2
  store i8 0, ptr %i.apg, align 2, !noalias !39709
  %i.aph = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i.i.i162.i.i.i.i, i64 4
  store i16 0, ptr %i.aph, align 2, !noalias !39709
  %i.api = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i.i.i162.i.i.i.i, i64 6
  store i8 0, ptr %i.api, align 2, !noalias !39709
  %i.apj = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i.i.i162.i.i.i.i, i64 8
  store i16 0, ptr %i.apj, align 2, !noalias !39709
  %i.apk = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i.i.i162.i.i.i.i, i64 10
  store i8 0, ptr %i.apk, align 2, !noalias !39709
  %i.apl = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i.i.i162.i.i.i.i, i64 12
  store i16 0, ptr %i.apl, align 2, !noalias !39709
  %i.apm = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i.i.i162.i.i.i.i, i64 14
  store i8 0, ptr %i.apm, align 2, !noalias !39709
  %i.apn = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i.i.i162.i.i.i.i, i64 16
  store i16 0, ptr %i.apn, align 2, !noalias !39709
  %i.apo = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i.i.i162.i.i.i.i, i64 18
  store i8 0, ptr %i.apo, align 2, !noalias !39709
  %i.app = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i.i.i162.i.i.i.i, i64 20
  store i16 0, ptr %i.app, align 2, !noalias !39709
  %i.apq = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i.i.i162.i.i.i.i, i64 22
  store i8 0, ptr %i.apq, align 2, !noalias !39709
  %i.apr = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i.i.i162.i.i.i.i, i64 24
  store i16 0, ptr %i.apr, align 2, !noalias !39709
  %i.aps = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i.i.i162.i.i.i.i, i64 26
  store i8 0, ptr %i.aps, align 2, !noalias !39709
  %i.apt = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i.i.i162.i.i.i.i, i64 28 ; 2 uses
  %exitcond.not.i.i.i164.i.i.i.i.6 = icmp eq i64 %.sroa.03.017.i.i.i163.i.i.i.i, 3233
  br i1 %exitcond.not.i.i.i164.i.i.i.i.6, label %_RNvXNtCs2D0wXkiOfwW_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs5NNYTrzbB3N_15alloc_no_stdlib15stack_allocator9AllocatorNtNtCsl4v216RJbSI_19brotli_decompressor7huffman11HuffmanCodeE10alloc_cellCs7XnEB7DeNXr_7sslocal.exit165.i.i.i.i, label %.lr.ph.i.i.i161.i.i.i.i.7

.lr.ph.i.i.i161.i.i.i.i.7:                        ; preds = %.lr.ph.i.i.i161.i.i.i.i
  %i.apu = add nuw nsw i64 %.sroa.03.017.i.i.i163.i.i.i.i, 8
  store i16 0, ptr %i.apt, align 2, !noalias !39709
  %i.apv = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i.i.i162.i.i.i.i, i64 30
  store i8 0, ptr %i.apv, align 2, !noalias !39709
  %i.apw = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i.i.i162.i.i.i.i, i64 32
  br label %.lr.ph.i.i.i161.i.i.i.i

_RNvXNtCs2D0wXkiOfwW_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs5NNYTrzbB3N_15alloc_no_stdlib15stack_allocator9AllocatorNtNtCsl4v216RJbSI_19brotli_decompressor7huffman11HuffmanCodeE10alloc_cellCs7XnEB7DeNXr_7sslocal.exit165.i.i.i.i: ; preds = %.lr.ph.i.i.i161.i.i.i.i
  store i16 0, ptr %i.apt, align 2, !noalias !39709
  %i.apx = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i.i.i162.i.i.i.i, i64 30
  store i8 0, ptr %i.apx, align 2, !noalias !39709
  %.val122.i.i.i.i = load i64, ptr %.sroa.66.0..sroa_idx.i.i.i.i, align 8, !alias.scope !39590, !noalias !39569, !noundef !145 ; 2 uses
  %i.apy = icmp eq i64 %.val122.i.i.i.i, 0
  br i1 %i.apy, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2D0wXkiOfwW_12alloc_stdlib10heap_alloc7WrapBoxNtNtCsl4v216RJbSI_19brotli_decompressor7huffman11HuffmanCodeEECs7XnEB7DeNXr_7sslocal.exit167.i.i.i.i, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i166.i.i.i.i

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i166.i.i.i.i: ; preds = %_RNvXNtCs2D0wXkiOfwW_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs5NNYTrzbB3N_15alloc_no_stdlib15stack_allocator9AllocatorNtNtCsl4v216RJbSI_19brotli_decompressor7huffman11HuffmanCodeE10alloc_cellCs7XnEB7DeNXr_7sslocal.exit165.i.i.i.i
  %.val121.i.i.i.i = load ptr, ptr %.sroa.65.0..sroa_idx52.i.i.i.i, align 8, !alias.scope !39590, !noalias !39569, !nonnull !145, !noundef !145
  %i.apz = shl nuw nsw i64 %.val122.i.i.i.i, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val121.i.i.i.i, i64 noundef %i.apz, i64 noundef 2) #52, !noalias !39591
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2D0wXkiOfwW_12alloc_stdlib10heap_alloc7WrapBoxNtNtCsl4v216RJbSI_19brotli_decompressor7huffman11HuffmanCodeEECs7XnEB7DeNXr_7sslocal.exit167.i.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2D0wXkiOfwW_12alloc_stdlib10heap_alloc7WrapBoxNtNtCsl4v216RJbSI_19brotli_decompressor7huffman11HuffmanCodeEECs7XnEB7DeNXr_7sslocal.exit167.i.i.i.i: ; preds = %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i166.i.i.i.i, %_RNvXNtCs2D0wXkiOfwW_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs5NNYTrzbB3N_15alloc_no_stdlib15stack_allocator9AllocatorNtNtCsl4v216RJbSI_19brotli_decompressor7huffman11HuffmanCodeE10alloc_cellCs7XnEB7DeNXr_7sslocal.exit165.i.i.i.i
  store ptr %i.rg, ptr %.sroa.65.0..sroa_idx52.i.i.i.i, align 8, !alias.scope !39590, !noalias !39569
  store i64 3240, ptr %.sroa.66.0..sroa_idx.i.i.i.i, align 8, !alias.scope !39590, !noalias !39569
  br label %.backedge.i.i.i.i

bb.hk:                                            ; preds = %.loopexit93.i.i.i.i, %bb.ej, %.loopexit86.i.i.i.i
  %i.aqa = phi i64 [ %i.yf, %.loopexit86.i.i.i.i ], [ %i.aal, %bb.ej ], [ %i.aaz, %.loopexit93.i.i.i.i ]
  %i.aqb = phi i32 [ %i.yi, %.loopexit86.i.i.i.i ], [ %i.aam, %bb.ej ], [ %i.abf, %.loopexit93.i.i.i.i ] ; 3 uses
  %i.aqc = phi i32 [ %i.tb, %.loopexit86.i.i.i.i ], [ %i.aan, %bb.ej ], [ %i.wb, %.loopexit93.i.i.i.i ] ; 2 uses
  store i8 0, ptr %i.og, align 1, !alias.scope !39621, !noalias !39623
  %i.aqd = load i8, ptr %i.ny, align 4, !alias.scope !39590, !noalias !39569, !noundef !145
  %i.aqe = icmp eq i8 %i.aqd, 0                   ; 2 uses
  %i.aqf = load i8, ptr %i.nz, align 1, !alias.scope !39590, !noalias !39569 ; 2 uses
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
  %i.aqp = getelementptr inbounds nuw [4 x i8], ptr @373, i64 %i.aqk
  %i.aqq = load i32, ptr %i.aqp, align 4, !noalias !39710, !noundef !145
  %i.aqr = and i32 %i.aqq, %i.aqo
  %i.aqs = add i32 %i.aqi, %i.aqb
  store i32 %i.aqs, ptr %.sroa.30.0..sroa_idx.i.i.i.i, align 8, !alias.scope !39590, !noalias !39569
  %i.aqt = icmp eq i32 %i.aqr, 0
  br i1 %i.aqt, label %bb.hl, label %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit.i.i.i.i.backedge

.thread.i.i.i.i:                                  ; preds = %bb.hl, %bb.hk
  %i.aqu = icmp eq i32 %i.aqc, 0
  br i1 %i.aqu, label %bb.hp, label %bb.hq

bb.ho:                                            ; preds = %bb.hl
  store i8 12, ptr %i.nc, align 2, !alias.scope !39590, !noalias !39569
  br label %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit.i.i.i.i.backedge

bb.hp:                                            ; preds = %.thread.i.i.i.i
  store i8 14, ptr %i.nc, align 2, !alias.scope !39590, !noalias !39569
  br label %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit.i.i.i.i.backedge

bb.hq:                                            ; preds = %.thread.i.i.i.i
  %.val116.i.i.i.i = load i64, ptr %.sroa.13.0..sroa_idx.i.i.i.i, align 8, !alias.scope !39590, !noalias !39569, !noundef !145
  %i.aqv = icmp eq i64 %.val116.i.i.i.i, 0
  br i1 %i.aqv, label %bb.hr, label %bb.iq

bb.hr:                                            ; preds = %bb.hq
  %i.aqw = load i8, ptr %i.nk, align 2, !alias.scope !39711, !noalias !39662, !noundef !145 ; 2 uses
  %i.aqx = load i32, ptr %.sroa.102.0..sroa_idx.i.i.i.i, align 8, !alias.scope !39711, !noalias !39662, !noundef !145
  %i.aqy = and i32 %i.aqx, 31
  %i.aqz = shl nuw i32 1, %i.aqy                  ; 2 uses
  store i32 %i.aqz, ptr %i.nw, align 8, !alias.scope !39711, !noalias !39662
  br i1 %i.aqg, label %bb.ht, label %bb.hs

bb.hs:                                            ; preds = %bb.hr
  %i.ara = call noundef i32 @_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader14BrotliPeekByte(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ni, i32 noundef %i.aqc, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.029.1.i.i.i.i, i64 noundef range(i64 8, 4097) %.sroa.21.1.i.i.i.i) #52, !noalias !39591 ; 2 uses
  %i.arb = icmp ne i32 %i.ara, -1
  %i.arc = and i32 %i.ara, 3
  %i.ard = icmp eq i32 %i.arc, 3
  %or.cond.i.i.i66 = and i1 %i.arb, %i.ard
  %spec.select.i.i.i67 = select i1 %or.cond.i.i.i66, i8 1, i8 %i.aqw
  %.pre.i.i.i68 = load i32, ptr %i.nw, align 8, !alias.scope !39711, !noalias !39662
  br label %bb.ht

bb.ht:                                            ; preds = %bb.hs, %bb.hr
  %.promoted.i.i.i69 = phi i32 [ %i.aqz, %bb.hr ], [ %.pre.i.i.i68, %bb.hs ] ; 5 uses
  %.sroa.07.0.i.i.i = phi i8 [ %i.aqw, %bb.hr ], [ %spec.select.i.i.i67, %bb.hs ]
  %i.are = sext i32 %.promoted.i.i.i69 to i64     ; 2 uses
  %i.arf = add nsw i64 %i.are, -16                ; 4 uses
  %i.arg = load i64, ptr %.sroa.40.0..sroa_idx.i.i.i.i, align 8, !alias.scope !39711, !noalias !39662, !noundef !145 ; 7 uses
  %i.arh = icmp ugt i64 %i.arg, %i.arf
  br i1 %i.arh, label %bb.hv, label %bb.hu

bb.hu:                                            ; preds = %bb.ht
  %.val33.i.i.i = load ptr, ptr %.sroa.22.0..sroa_idx.i.i.i.i, align 8, !alias.scope !39711, !noalias !39662, !nonnull !145, !noundef !145
  %.val34.i.i.i = load i64, ptr %.sroa.23.0..sroa_idx.i.i.i.i, align 8, !alias.scope !39711, !noalias !39662, !noundef !145 ; 2 uses
  %.not.i2.i.i = icmp ugt i64 %i.arg, %.val34.i.i.i
  br i1 %.not.i2.i.i, label %bb.hw, label %bb.hx, !prof !172

bb.hv:                                            ; preds = %bb.ht
  %.val32.i.i.i = load i64, ptr %.sroa.23.0..sroa_idx.i.i.i.i, align 8, !alias.scope !39711, !noalias !39662, !noundef !145 ; 2 uses
  %i.ari = sub nuw i64 %i.arg, %i.arf             ; 2 uses
  %.not24.i.i.i = icmp ugt i64 %i.arg, %.val32.i.i.i
  br i1 %.not24.i.i.i, label %bb.hz, label %bb.hy, !prof !172

bb.hw:                                            ; preds = %bb.hu
  call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.arg, i64 noundef %.val34.i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @411) #62, !noalias !39591
  unreachable

bb.hx:                                            ; preds = %bb.hy, %bb.hu
  %i.arj = phi i64 [ %i.arf, %bb.hy ], [ %i.arg, %bb.hu ] ; 5 uses
  %.sroa.08.0.i.i.i = phi ptr [ %i.ars, %bb.hy ], [ %.val33.i.i.i, %bb.hu ]
  %i.ark = icmp eq i8 %.sroa.07.0.i.i.i, 0
  br i1 %i.ark, label %.loopexit.i3.i.i, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.hx
  %i.arl = load i32, ptr %i.nm, align 8, !alias.scope !39711, !noalias !39662, !noundef !145
  %i.arm = sext i32 %i.arl to i64
  %i.arn = add i64 %i.arj, %i.arm
  %i.aro = shl i64 %i.arn, 1
  %i.arp = add i64 %i.aro, 32                     ; 2 uses
  %i.arq = icmp sle i64 %i.arp, %i.are
  %i.arr = icmp sgt i32 %.promoted.i.i.i69, 32
  %or.cond643.i.i.i = and i1 %i.arr, %i.arq
  br i1 %or.cond643.i.i.i, label %.lr.ph.i.i.i71, label %.loopexit.i3.i.i

bb.hy:                                            ; preds = %bb.hv
  %.val31.i.i.i = load ptr, ptr %.sroa.22.0..sroa_idx.i.i.i.i, align 8, !alias.scope !39711, !noalias !39662, !nonnull !145, !noundef !145
  %i.ars = getelementptr inbounds nuw i8, ptr %.val31.i.i.i, i64 %i.ari
  store i64 %i.arf, ptr %.sroa.40.0..sroa_idx.i.i.i.i, align 8, !alias.scope !39711, !noalias !39662
  br label %bb.hx

bb.hz:                                            ; preds = %bb.hv
  call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %i.ari, i64 noundef %i.arg, i64 noundef %.val32.i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @416) #62, !noalias !39591
  unreachable

..loopexit_crit_edge.i.i.i:                       ; preds = %.lr.ph.i.i.i71
  store i32 %i.arz, ptr %i.nw, align 8, !alias.scope !39711, !noalias !39662
  br label %.loopexit.i3.i.i

.loopexit.i3.i.i:                                 ; preds = %..loopexit_crit_edge.i.i.i, %.preheader.i.i.i, %bb.hx
  %i.art = phi i32 [ %.promoted.i.i.i69, %.preheader.i.i.i ], [ %i.arz, %..loopexit_crit_edge.i.i.i ], [ %.promoted.i.i.i69, %bb.hx ] ; 2 uses
  %i.aru = load i32, ptr %.sroa.102.0..sroa_idx.i.i.i.i, align 8, !alias.scope !39711, !noalias !39662, !noundef !145
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
  store i32 %i.arw, ptr %i.nw, align 8, !alias.scope !39711, !noalias !39662
  br label %bb.ib

bb.ib:                                            ; preds = %bb.ia, %.loopexit.i3.i.i
  %i.asd = phi i32 [ %i.art, %.loopexit.i3.i.i ], [ %i.arw, %bb.ia ] ; 3 uses
  %i.ase = add i32 %i.asd, -1
  store i32 %i.ase, ptr %i.od, align 4, !alias.scope !39711, !noalias !39662
  %i.asf = sext i32 %i.asd to i64
  %i.asg = add nsw i64 %i.asf, 66                 ; 6 uses
  %.not.i.i.i.i4.i.i = icmp slt i32 %i.asd, -66
  br i1 %.not.i.i.i.i4.i.i, label %bb.if, label %bb.ic, !prof !261

bb.ic:                                            ; preds = %bb.ib
  %.not.i.i70 = icmp eq i64 %i.asg, 0             ; 2 uses
  br i1 %.not.i.i70, label %_RNvXNtCs2D0wXkiOfwW_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs5NNYTrzbB3N_15alloc_no_stdlib15stack_allocator9AllocatorhE10alloc_cellCs7XnEB7DeNXr_7sslocal.exit.i.i.i, label %bb.id

bb.id:                                            ; preds = %bb.ic
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52, !noalias !39712
  %i.ash = call noundef ptr @_RNvCsh0WfaQiVYm0_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 4294967296) %i.asg, i64 noundef range(i64 1, 17) 1) #52, !noalias !39712 ; 2 uses
  %i.asi = icmp eq ptr %i.ash, null
  br i1 %i.asi, label %bb.if, label %bb.ie

bb.ie:                                            ; preds = %bb.id
  %i.asj = ptrtoint ptr %i.ash to i64
  br label %_RNvXNtCs2D0wXkiOfwW_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs5NNYTrzbB3N_15alloc_no_stdlib15stack_allocator9AllocatorhE10alloc_cellCs7XnEB7DeNXr_7sslocal.exit.i.i.i

bb.if:                                            ; preds = %bb.id, %bb.ib
  %.sroa.4.0.ph.i.i.i.i.i = phi i64 [ 1, %bb.id ], [ 0, %bb.ib ]
  call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i.i.i, i64 range(i64 -2147483582, 4294967296) %i.asg) #61, !noalias !39713
  unreachable

_RNvXNtCs2D0wXkiOfwW_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs5NNYTrzbB3N_15alloc_no_stdlib15stack_allocator9AllocatorhE10alloc_cellCs7XnEB7DeNXr_7sslocal.exit.i.i.i: ; preds = %bb.ie, %bb.ic
  %.sroa.10.0.i.i.i.i.i = phi i64 [ %i.asj, %bb.ie ], [ 1, %bb.ic ]
  %i.ask = inttoptr i64 %.sroa.10.0.i.i.i.i.i to ptr ; 3 uses
  %.val36.i.i.i = load i64, ptr %.sroa.13.0..sroa_idx.i.i.i.i, align 8, !alias.scope !39714, !noalias !39662, !noundef !145 ; 2 uses
  %i.asl = icmp eq i64 %.val36.i.i.i, 0
  br i1 %i.asl, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2D0wXkiOfwW_12alloc_stdlib10heap_alloc7WrapBoxhEECs7XnEB7DeNXr_7sslocal.exit.i.i.i, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i: ; preds = %_RNvXNtCs2D0wXkiOfwW_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs5NNYTrzbB3N_15alloc_no_stdlib15stack_allocator9AllocatorhE10alloc_cellCs7XnEB7DeNXr_7sslocal.exit.i.i.i
  %.val35.i.i.i = load ptr, ptr %.sroa.12.0..sroa_idx.i.i.i.i, align 8, !alias.scope !39711, !noalias !39662, !nonnull !145, !noundef !145
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val35.i.i.i, i64 noundef %.val36.i.i.i, i64 noundef 1) #52, !noalias !39715
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2D0wXkiOfwW_12alloc_stdlib10heap_alloc7WrapBoxhEECs7XnEB7DeNXr_7sslocal.exit.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2D0wXkiOfwW_12alloc_stdlib10heap_alloc7WrapBoxhEECs7XnEB7DeNXr_7sslocal.exit.i.i.i: ; preds = %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i, %_RNvXNtCs2D0wXkiOfwW_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs5NNYTrzbB3N_15alloc_no_stdlib15stack_allocator9AllocatorhE10alloc_cellCs7XnEB7DeNXr_7sslocal.exit.i.i.i
  store ptr %i.ask, ptr %.sroa.12.0..sroa_idx.i.i.i.i, align 8, !alias.scope !39711, !noalias !39662
  store i64 %i.asg, ptr %.sroa.13.0..sroa_idx.i.i.i.i, align 8, !alias.scope !39711, !noalias !39662
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ask) ], !noalias !39716
  br i1 %.not.i.i70, label %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit.i.i.i.i.backedge, label %bb.ig

bb.ig:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2D0wXkiOfwW_12alloc_stdlib10heap_alloc7WrapBoxhEECs7XnEB7DeNXr_7sslocal.exit.i.i.i
  %i.asm = load i32, ptr %i.nw, align 8, !alias.scope !39711, !noalias !39662, !noundef !145
  %i.asn = sext i32 %i.asm to i64
  %i.aso = add nsw i64 %i.asn, -1                 ; 3 uses
  %i.asp = icmp ult i64 %i.aso, %i.asg
  br i1 %i.asp, label %bb.ih, label %bb.ii

bb.ih:                                            ; preds = %bb.ig
  %i.asq = getelementptr inbounds nuw i8, ptr %i.ask, i64 %i.aso
  store i8 0, ptr %i.asq, align 1, !noalias !39591
  %.val40.i.i.i = load i64, ptr %.sroa.13.0..sroa_idx.i.i.i.i, align 8, !alias.scope !39711, !noalias !39662, !noundef !145 ; 2 uses
  %i.asr = load i32, ptr %i.nw, align 8, !alias.scope !39711, !noalias !39662, !noundef !145
  %i.ass = sext i32 %i.asr to i64
  %i.ast = add nsw i64 %i.ass, -2                 ; 3 uses
  %i.asu = icmp ult i64 %i.ast, %.val40.i.i.i
  br i1 %i.asu, label %bb.ij, label %bb.ik

bb.ii:                                            ; preds = %bb.ig
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.aso, i64 noundef %i.asg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @412) #62, !noalias !39591
  unreachable

bb.ij:                                            ; preds = %bb.ih
  %.val39.i.i.i = load ptr, ptr %.sroa.12.0..sroa_idx.i.i.i.i, align 8, !alias.scope !39711, !noalias !39662, !nonnull !145, !noundef !145
  %i.asv = getelementptr inbounds nuw i8, ptr %.val39.i.i.i, i64 %i.ast
  store i8 0, ptr %i.asv, align 1, !noalias !39591
  %i.asw = icmp eq i64 %i.arj, 0
  br i1 %i.asw, label %bb.im, label %bb.il

bb.ik:                                            ; preds = %bb.ih
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.ast, i64 noundef %.val40.i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @413) #62, !noalias !39591
  unreachable

bb.il:                                            ; preds = %bb.ij
  %i.asx = load i64, ptr %.sroa.40.0..sroa_idx.i.i.i.i, align 8, !alias.scope !39711, !noalias !39662, !noundef !145 ; 4 uses
  %i.asy = sub i64 0, %i.asx
  %i.asz = load i32, ptr %i.od, align 4, !alias.scope !39711, !noalias !39662, !noundef !145
  %i.ata = sext i32 %i.asz to i64
  %i.atb = and i64 %i.ata, %i.asy                 ; 4 uses
  %.val38.i.i.i = load i64, ptr %.sroa.13.0..sroa_idx.i.i.i.i, align 8, !alias.scope !39711, !noalias !39662, !noundef !145 ; 2 uses
  %i.atc = add i64 %i.atb, %i.asx                 ; 3 uses
  %i.atd = icmp ult i64 %i.atc, %i.atb
  %.not25.i.i.i = icmp ugt i64 %i.atc, %.val38.i.i.i
  %or.cond27.i.i.i = or i1 %i.atd, %.not25.i.i.i
  br i1 %or.cond27.i.i.i, label %bb.ip, label %bb.in, !prof !172

bb.im:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implhECs7XnEB7DeNXr_7sslocal.exit.i.i.i, %bb.ij
  %.val28.i.i.i = load i64, ptr %.sroa.23.0..sroa_idx.i.i.i.i, align 8, !alias.scope !39711, !noalias !39662, !noundef !145 ; 2 uses
  %i.ate = icmp eq i64 %.val28.i.i.i, 0
  br i1 %i.ate, label %._crit_edge686.i.i.i.i, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i6.i.i

bb.in:                                            ; preds = %bb.il
  %.val37.i.i.i = load ptr, ptr %.sroa.12.0..sroa_idx.i.i.i.i, align 8, !alias.scope !39711, !noalias !39662, !nonnull !145, !noundef !145
  call void @llvm.experimental.noalias.scope.decl(metadata !39717), !noalias !39716
  call void @llvm.experimental.noalias.scope.decl(metadata !39718), !noalias !39716
  %.not.i.i5.i.i = icmp eq i64 %i.asx, %i.arj
  br i1 %.not.i.i5.i.i, label %_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implhECs7XnEB7DeNXr_7sslocal.exit.i.i.i, label %bb.io, !prof !157

bb.io:                                            ; preds = %bb.in
  call void @_RNvNvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_impl17len_mismatch_fail(i64 noundef range(i64 0, -9223372036854775808) %i.asx, i64 noundef range(i64 0, -9223372036854775808) %i.arj, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @414) #62, !noalias !39719
  unreachable

_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implhECs7XnEB7DeNXr_7sslocal.exit.i.i.i: ; preds = %bb.in
  %i.atf = getelementptr inbounds nuw i8, ptr %.val37.i.i.i, i64 %i.atb
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.atf, ptr nonnull readonly align 1 %.sroa.08.0.i.i.i, i64 range(i64 0, -9223372036854775808) %i.arj, i1 false), !alias.scope !39720, !noalias !39591
  br label %bb.im

bb.ip:                                            ; preds = %bb.il
  call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %i.atb, i64 noundef %i.atc, i64 noundef %.val38.i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @415) #62, !noalias !39591
  unreachable

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i6.i.i: ; preds = %bb.im
  %.val.i7.i.i = load ptr, ptr %.sroa.22.0..sroa_idx.i.i.i.i, align 8, !alias.scope !39711, !noalias !39662, !nonnull !145, !noundef !145
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.22.0..sroa_idx.i.i.i.i, align 8, !alias.scope !39711, !noalias !39662
  store i64 0, ptr %.sroa.23.0..sroa_idx.i.i.i.i, align 8, !alias.scope !39711, !noalias !39662
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i7.i.i, i64 noundef %.val28.i.i.i, i64 noundef 1) #52, !noalias !39721
  br label %._crit_edge686.i.i.i.i

._crit_edge686.i.i.i.i:                           ; preds = %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i6.i.i, %bb.im
  %.pre687.i.i.i.i = load i8, ptr %i.nz, align 1, !alias.scope !39590, !noalias !39569
  br label %bb.iq

bb.iq:                                            ; preds = %._crit_edge686.i.i.i.i, %bb.hq
  %i.atg = phi i8 [ %.pre687.i.i.i.i, %._crit_edge686.i.i.i.i ], [ %i.aqf, %bb.hq ]
  %i.ath = icmp eq i8 %i.atg, 0
  br i1 %i.ath, label %bb.ir, label %bb.is

bb.ir:                                            ; preds = %bb.iq
  store i32 0, ptr %.sroa.7254.0..sroa_idx.i.i.i.i, align 8, !alias.scope !39590, !noalias !39569
  store i8 17, ptr %i.nc, align 2, !alias.scope !39590, !noalias !39569
  br label %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit.i.i.i.i.backedge

bb.is:                                            ; preds = %bb.iq
  store i8 11, ptr %i.nc, align 2, !alias.scope !39590, !noalias !39569
  br label %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit.i.i.i.i.backedge

.loopexit212.i.i.i.i:                             ; preds = %bb.em, %.loopexit212.loopexit.i.i.i.i
  %i.ati = phi i64 [ %i.acm, %.loopexit212.loopexit.i.i.i.i ], [ %.promoted14.i148.i.i.i.i, %bb.em ]
  %.lcssa7.i146.i.i.i.i = phi i32 [ %i.acn, %.loopexit212.loopexit.i.i.i.i ], [ %.promoted.i143.i.i.i.i, %bb.em ] ; 2 uses
  %i.atj = and i32 %.lcssa7.i146.i.i.i.i, 63
  %i.atk = zext nneg i32 %i.atj to i64
  %i.atl = lshr i64 %i.ati, %i.atk                ; 2 uses
  %i.atm = trunc i64 %i.atl to i32                ; 2 uses
  %i.atn = add i32 %.lcssa7.i146.i.i.i.i, 6
  store i32 %i.atn, ptr %.sroa.30.0..sroa_idx.i.i.i.i, align 8, !alias.scope !39667, !noalias !39569
  %i.ato = and i32 %i.atm, 3                      ; 2 uses
  store i32 %i.ato, ptr %i.ne, align 4, !alias.scope !39590, !noalias !39569
  %i.atp = lshr i32 %i.atm, 2
  %i.atq = and i32 %i.atp, 15
  %i.atr = shl nuw nsw i32 %i.atq, %i.ato
  %i.ats = add nuw nsw i32 %i.atr, 16
  store i32 %i.ats, ptr %i.nd, align 8, !alias.scope !39590, !noalias !39569
  %i.att = and i64 %i.atl, 3
  %i.atu = getelementptr inbounds nuw [4 x i8], ptr @373, i64 %i.att
  %i.atv = load i32, ptr %i.atu, align 4, !noalias !39710, !noundef !145
  store i32 %i.atv, ptr %i.nl, align 4, !alias.scope !39590, !noalias !39569
  %i.atw = load i32, ptr %.sroa.68.0..sroa_idx.i.i.i.i, align 8, !alias.scope !39590, !noalias !39569, !noundef !145 ; 2 uses
  %i.atx = zext i32 %i.atw to i64                 ; 3 uses
  %i.aty = icmp eq i32 %i.atw, 0                  ; 2 uses
  br i1 %i.aty, label %_RNvXNtCs2D0wXkiOfwW_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs5NNYTrzbB3N_15alloc_no_stdlib15stack_allocator9AllocatorhE10alloc_cellCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i, label %bb.it

bb.it:                                            ; preds = %.loopexit212.i.i.i.i
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52, !noalias !39722
  %i.atz = call noundef ptr @_RNvCsh0WfaQiVYm0_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 4294967296) %i.atx, i64 noundef range(i64 1, 17) 1) #52, !noalias !39722 ; 2 uses
  %i.aua = icmp eq ptr %i.atz, null
  br i1 %i.aua, label %bb.iv, label %bb.iu

bb.iu:                                            ; preds = %bb.it
  %i.aub = ptrtoint ptr %i.atz to i64
  br label %_RNvXNtCs2D0wXkiOfwW_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs5NNYTrzbB3N_15alloc_no_stdlib15stack_allocator9AllocatorhE10alloc_cellCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i

bb.iv:                                            ; preds = %bb.it
  call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef 1, i64 range(i64 -2147483582, 4294967296) %i.atx) #61, !noalias !39723
  unreachable

_RNvXNtCs2D0wXkiOfwW_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs5NNYTrzbB3N_15alloc_no_stdlib15stack_allocator9AllocatorhE10alloc_cellCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i: ; preds = %bb.iu, %.loopexit212.i.i.i.i
  %.sroa.10.0.i.i.i.i.i.i = phi i64 [ %i.aub, %bb.iu ], [ 1, %.loopexit212.i.i.i.i ]
  %i.auc = inttoptr i64 %.sroa.10.0.i.i.i.i.i.i to ptr ; 2 uses
  %.val128.i.i.i.i = load i64, ptr %.sroa.27.0..sroa_idx.i.i.i.i, align 8, !alias.scope !39724, !noalias !39569, !noundef !145 ; 2 uses
  %i.aud = icmp eq i64 %.val128.i.i.i.i, 0
  br i1 %i.aud, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2D0wXkiOfwW_12alloc_stdlib10heap_alloc7WrapBoxhEECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i168.i.i.i.i

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i168.i.i.i.i: ; preds = %_RNvXNtCs2D0wXkiOfwW_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs5NNYTrzbB3N_15alloc_no_stdlib15stack_allocator9AllocatorhE10alloc_cellCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i
  %.val127.i.i.i.i = load ptr, ptr %.sroa.26.0..sroa_idx.i.i.i.i, align 8, !alias.scope !39590, !noalias !39569, !nonnull !145, !noundef !145
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val127.i.i.i.i, i64 noundef %.val128.i.i.i.i, i64 noundef 1) #52, !noalias !39725
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2D0wXkiOfwW_12alloc_stdlib10heap_alloc7WrapBoxhEECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2D0wXkiOfwW_12alloc_stdlib10heap_alloc7WrapBoxhEECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i: ; preds = %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i168.i.i.i.i, %_RNvXNtCs2D0wXkiOfwW_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs5NNYTrzbB3N_15alloc_no_stdlib15stack_allocator9AllocatorhE10alloc_cellCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i
  store ptr %i.auc, ptr %.sroa.26.0..sroa_idx.i.i.i.i, align 8, !alias.scope !39590, !noalias !39569
  store i64 %i.atx, ptr %.sroa.27.0..sroa_idx.i.i.i.i, align 8, !alias.scope !39590, !noalias !39569
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.auc) ]
  br i1 %i.aty, label %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit.i.i.i.i.backedge, label %bb.iw

bb.iw:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2D0wXkiOfwW_12alloc_stdlib10heap_alloc7WrapBoxhEECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i
  store i32 0, ptr %.sroa.7254.0..sroa_idx.i.i.i.i, align 8, !alias.scope !39590, !noalias !39569
  br label %.backedge.i.i.i.i

bb.ix:                                            ; preds = %bb.ev
  %i.aue = call fastcc noundef i32 @_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode23ProcessCommandsInternalNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB19_B19_ECs7XnEB7DeNXr_7sslocal(i1 noundef zeroext true, ptr noalias nofree noundef nonnull align 8 dereferenceable(2600) %i.r, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.029.1.i.i.i.i, i64 noundef %.sroa.21.1.i.i.i.i) #52, !noalias !39591
  br label %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit.i.i.i.i.backedge

_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode29CopyUncompressedBlockToOutputNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB1f_B1f_ECs7XnEB7DeNXr_7sslocal.exit.i.i.i: ; preds = %bb.fq
  store i8 14, ptr %i.nc, align 2, !alias.scope !39590, !noalias !39569
  br label %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit.i.i.i.i.backedge

bb.iy:                                            ; preds = %.loopexit209.i.i.i.i, %.lr.ph.i.i.i.i
  %.promoted18.i177462.i.i.i.i = phi i32 [ %.promoted460.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.promoted18.i177461.i.i.i.i, %.loopexit209.i.i.i.i ] ; 4 uses
  %.promoted17.i176459.i.i.i.i = phi i32 [ %.promoted457.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.promoted17.i176458.i.i.i.i, %.loopexit209.i.i.i.i ] ; 3 uses
  %i.auf = phi i64 [ %.promoted456.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.auq, %.loopexit209.i.i.i.i ] ; 2 uses
  %.promoted.i169455.i.i.i.i = phi i32 [ %.promoted454.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.aur, %.loopexit209.i.i.i.i ] ; 3 uses
  %i.aug = phi i32 [ %.promoted.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.aus, %.loopexit209.i.i.i.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !39726)
  call void @llvm.experimental.noalias.scope.decl(metadata !39727)
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
  %i.aul = load i8, ptr %i.auk, align 1, !alias.scope !39727, !noalias !39593, !noundef !145
  %i.aum = zext i8 %i.aul to i64
  %i.aun = call i64 @llvm.fshl.i64(i64 %i.aum, i64 %i.auf, i64 56) ; 2 uses
  store i64 %i.aun, ptr %i.ni, align 8, !alias.scope !39596, !noalias !39569
  %i.auo = add nsw i32 %.promoted.i169455.i.i.i.i, -8
  %i.aup = add i32 %.promoted17.i176459.i.i.i.i, -1 ; 2 uses
  store i32 %i.aup, ptr %.sroa.33.0..sroa_idx.i.i.i.i, align 8, !alias.scope !39596, !noalias !39569
  %indvars.iv.next678.i.i.i.i = add nuw nsw i32 %.promoted18.i177462.i.i.i.i, 1 ; 2 uses
  store i32 %indvars.iv.next678.i.i.i.i, ptr %.sroa.32.0..sroa_idx.i.i.i.i, align 4, !alias.scope !39596, !noalias !39569
  br label %.loopexit209.i.i.i.i

bb.ja:                                            ; preds = %bb.iz
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.aui, i64 noundef range(i64 8, 4097) %.sroa.21.1.i.i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @379) #62, !noalias !39728
  unreachable

._crit_edge.i.i.i.i65:                            ; preds = %.loopexit209.i.i.i.i, %.preheader.i.i.i.i
  store i8 14, ptr %i.nc, align 2, !alias.scope !39590, !noalias !39569
  br label %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit.i.i.i.i.backedge

.loopexit209.i.i.i.i:                             ; preds = %.loopexit209.loopexit.i.i.i.i, %bb.iy
  %.promoted18.i177461.i.i.i.i = phi i32 [ %.promoted18.i177462.i.i.i.i, %bb.iy ], [ %indvars.iv.next678.i.i.i.i, %.loopexit209.loopexit.i.i.i.i ]
  %.promoted17.i176458.i.i.i.i = phi i32 [ %.promoted17.i176459.i.i.i.i, %bb.iy ], [ %i.aup, %.loopexit209.loopexit.i.i.i.i ]
  %i.auq = phi i64 [ %i.auf, %bb.iy ], [ %i.aun, %.loopexit209.loopexit.i.i.i.i ]
  %.lcssa7.i172.i.i.i.i = phi i32 [ %.promoted.i169455.i.i.i.i, %bb.iy ], [ %i.auo, %.loopexit209.loopexit.i.i.i.i ]
  %i.aur = add i32 %.lcssa7.i172.i.i.i.i, 8       ; 2 uses
  store i32 %i.aur, ptr %.sroa.30.0..sroa_idx.i.i.i.i, align 8, !alias.scope !39596, !noalias !39569
  %i.aus = add nsw i32 %i.aug, -1                 ; 2 uses
  store i32 %i.aus, ptr %i.nm, align 8, !alias.scope !39590, !noalias !39569
  %i.aut = icmp sgt i32 %i.aug, 1
  br i1 %i.aut, label %bb.iy, label %._crit_edge.i.i.i.i65

bb.jb:                                            ; preds = %bb.gc
  store i8 3, ptr %i.nc, align 2, !alias.scope !39590, !noalias !39569
  br label %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit.i.i.i.i.backedge

bb.jc:                                            ; preds = %bb.gc
  %i.auu = load i32, ptr %.sroa.30.0..sroa_idx.i.i.i.i, align 8, !alias.scope !39590, !noalias !39569, !noundef !145 ; 4 uses
  %i.auv = sub i32 0, %i.auu
  %i.auw = and i32 %i.auv, 7                      ; 3 uses
  %i.aux = icmp eq i32 %i.auw, 0
  br i1 %i.aux, label %bb.jd, label %bb.je

bb.jd:                                            ; preds = %bb.je, %bb.jc
  %i.auy = phi i32 [ %i.auu, %bb.jc ], [ %i.avk, %bb.je ] ; 2 uses
  %i.auz = load i32, ptr %i.nb, align 4, !alias.scope !39590, !noalias !39569, !noundef !145
  %i.ava = icmp eq i32 %i.auz, 0
  br i1 %i.ava, label %bb.jf, label %.backedge.i.i.i.i

bb.je:                                            ; preds = %bb.jc
  %i.avb = zext nneg i32 %i.auw to i64
  %i.avc = load i64, ptr %i.ni, align 8, !alias.scope !39590, !noalias !39569, !noundef !145
  %i.avd = and i32 %i.auu, 63
  %i.ave = zext nneg i32 %i.avd to i64
  %i.avf = lshr i64 %i.avc, %i.ave
  %i.avg = trunc i64 %i.avf to i32
  %i.avh = getelementptr inbounds nuw [4 x i8], ptr @373, i64 %i.avb
  %i.avi = load i32, ptr %i.avh, align 4, !noalias !39710, !noundef !145
  %i.avj = and i32 %i.avi, %i.avg
  %i.avk = add i32 %i.auw, %i.auu                 ; 2 uses
  store i32 %i.avk, ptr %.sroa.30.0..sroa_idx.i.i.i.i, align 8, !alias.scope !39590, !noalias !39569
  %i.avl = icmp eq i32 %i.avj, 0
  br i1 %i.avl, label %bb.jd, label %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit.i.i.i.i.backedge

bb.jf:                                            ; preds = %bb.jd
  %i.avm = sub i32 64, %i.auy                     ; 3 uses
  %i.avn = lshr i32 %i.avm, 3                     ; 2 uses
  %i.avo = and i32 %i.avm, -8                     ; 2 uses
  %i.avp = load i32, ptr %.sroa.33.0..sroa_idx.i.i.i.i, align 8, !alias.scope !39590, !noalias !39569, !noundef !145
  %i.avq = add i32 %i.avp, %i.avn                 ; 2 uses
  store i32 %i.avq, ptr %.sroa.33.0..sroa_idx.i.i.i.i, align 8, !alias.scope !39590, !noalias !39569
  %i.avr = load i32, ptr %.sroa.32.0..sroa_idx.i.i.i.i, align 4, !alias.scope !39590, !noalias !39569, !noundef !145
  %i.avs = sub i32 %i.avr, %i.avn                 ; 2 uses
  store i32 %i.avs, ptr %.sroa.32.0..sroa_idx.i.i.i.i, align 4, !alias.scope !39590, !noalias !39569
  %i.avt = icmp eq i32 %i.avo, 64
  %i.avu = load i64, ptr %i.ni, align 8, !alias.scope !39590, !noalias !39569
  %i.avv = and i32 %i.avm, 56
  %i.avw = zext nneg i32 %i.avv to i64
  %i.avx = shl i64 %i.avu, %i.avw
  %storemerge108.i.i.i.i = select i1 %i.avt, i64 0, i64 %i.avx
  store i64 %storemerge108.i.i.i.i, ptr %i.ni, align 8, !alias.scope !39590, !noalias !39569
  %i.avy = add i32 %i.avo, %i.auy
  store i32 %i.avy, ptr %.sroa.30.0..sroa_idx.i.i.i.i, align 8, !alias.scope !39590, !noalias !39569
  %i.avz = zext i32 %i.avq to i64
  %i.awa = zext i32 %i.avs to i64
  br label %.backedge.i.i.i.i

bb.jg:                                            ; preds = %bb.gb, %bb.ga, %bb.fz
end_hunk_3
begin_hunk_4_@_RNCINvNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13online_config16content_encoding9read_bodyINtNtCs7ewmRfXve8r_4http8response8ResponseNtNtNtCsaI3lGUjttVO_5hyper4body8incoming8IncomingEE0Cs7XnEB7DeNXr_7sslocal:bb.a
  %.val45.i.i.i.i.i = load i64, ptr %.sroa.25.0..sroa_idx.i.i.i.i, align 8, !alias.scope !39747, !noalias !39569, !noundef !145 ; 10 uses
  %i.azq = icmp ult i64 %i.azp, %.val45.i.i.i.i.i
  br i1 %i.azq, label %bb.ku, label %bb.kv

bb.ku:                                            ; preds = %.lr.ph.i183.i.i.i.i
  %i.azr = getelementptr inbounds nuw i8, ptr %.val44.i.i.i.i.i, i64 %i.azp
  %i.azs = load i8, ptr %i.azr, align 1, !noalias !39748, !noundef !145 ; 4 uses
  br label %bb.kx

bb.kv:                                            ; preds = %.lr.ph.i183.i.i.i.i
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.azp, i64 noundef %.val45.i.i.i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @430) #62, !noalias !39748
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
  %i.bac = load i32, ptr %i.bab, align 4, !alias.scope !39747, !noalias !39569, !noundef !145
  %i.bad = or i32 %i.bac, %i.baa
  store i32 %i.bad, ptr %i.bab, align 4, !alias.scope !39747, !noalias !39569
  %.pre.i.i.i.i.i = load i32, ptr %.sroa.68.0..sroa_idx.i.i.i.i, align 8, !alias.scope !39747, !noalias !39569
  br label %bb.lb

bb.la:                                            ; preds = %bb.ky
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.azw, i64 noundef 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @431) #62, !noalias !39748
  unreachable

bb.lb:                                            ; preds = %bb.kz, %bb.kw
  %i.bae = phi i32 [ %i.azo, %bb.kw ], [ %.pre.i.i.i.i.i, %bb.kz ] ; 2 uses
  %i.baf = add nuw nsw i64 %.sroa.02.074.i.i.i.i.i, 1 ; 2 uses
  %i.bag = zext i32 %i.bae to i64
  %i.bah = icmp samesign ult i64 %i.baf, %i.bag
  br i1 %i.bah, label %.lr.ph.i183.i.i.i.i, label %.backedge.i.i.i.i

bb.lc:                                            ; preds = %bb.kx
  %i.bai = getelementptr inbounds nuw i8, ptr %.val44.i.i.i.i.i, i64 %i.azu
  %i.baj = load i8, ptr %i.bai, align 1, !noalias !39748, !noundef !145
  %i.bak = or disjoint i64 %i.azu, 1              ; 3 uses
  %i.bal = icmp ult i64 %i.bak, %.val45.i.i.i.i.i
  br i1 %i.bal, label %bb.le, label %bb.lf

bb.ld:                                            ; preds = %bb.kx
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.azu, i64 noundef %.val45.i.i.i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @432) #62, !noalias !39748
  unreachable

bb.le:                                            ; preds = %bb.lc
  %i.bam = getelementptr inbounds nuw i8, ptr %.val44.i.i.i.i.i, i64 %i.bak
  %i.ban = load i8, ptr %i.bam, align 1, !noalias !39748, !noundef !145
  %i.bao = or disjoint i64 %i.azu, 2              ; 3 uses
  %i.bap = icmp ult i64 %i.bao, %.val45.i.i.i.i.i
  br i1 %i.bap, label %bb.lg, label %bb.lh

bb.lf:                                            ; preds = %bb.lc
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.bak, i64 noundef %.val45.i.i.i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @433) #62, !noalias !39748
  unreachable

bb.lg:                                            ; preds = %bb.le
  %i.baq = or disjoint i64 %i.azu, 3              ; 3 uses
  %i.bar = icmp ult i64 %i.baq, %.val45.i.i.i.i.i
  br i1 %i.bar, label %bb.li, label %bb.lj

bb.lh:                                            ; preds = %bb.le
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.bao, i64 noundef %.val45.i.i.i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @434) #62, !noalias !39748
  unreachable

bb.li:                                            ; preds = %bb.lg
  %i.bas = getelementptr inbounds nuw i8, ptr %.val44.i.i.i.i.i, i64 %i.bao
  %i.bat = load i8, ptr %i.bas, align 1, !noalias !39748, !noundef !145
  %i.bau = xor i8 %i.bat, %i.azs
  %i.bav = xor i8 %i.baj, %i.azs
  %i.baw = xor i8 %i.ban, %i.azs
  %i.bax = or i8 %i.baw, %i.bav
  %i.bay = or i8 %i.bax, %i.bau
  %i.baz = getelementptr inbounds nuw i8, ptr %.val44.i.i.i.i.i, i64 %i.baq
  %i.bba = load i8, ptr %i.baz, align 1, !noalias !39748, !noundef !145
  %i.bbb = xor i8 %i.bba, %i.azs
  %i.bbc = or i8 %i.bay, %i.bbb
  %i.bbd = zext i8 %i.bbc to i64
  %i.bbe = or i64 %.sroa.07.072.i.i.i.i.i, %i.bbd ; 2 uses
  %i.bbf = add nuw nsw i64 %.sroa.012.073.i.i.i.i.i, 4
  %i.bbg = icmp samesign ult i64 %.sroa.012.073.i.i.i.i.i, 60
  br i1 %i.bbg, label %bb.kx, label %bb.kw

bb.lj:                                            ; preds = %bb.lg
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.baq, i64 noundef %.val45.i.i.i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @435) #62, !noalias !39748
  unreachable

bb.lk:                                            ; preds = %bb.gi
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !39710
  store <4 x i32> <i32 0, i32 4, i32 12, i32 28>, ptr %i.n, align 16, !noalias !39710
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !39710
  store <4 x i32> <i32 73, i32 126, i32 228, i32 424>, ptr %i.m, align 16, !noalias !39710
  %i.bbh = and i32 %i.akn, 31
  %i.bbi = shl nuw i32 1, %i.bbh                  ; 2 uses
  %i.bbj = zext i32 %i.akn to i64                 ; 4 uses
  %i.bbk = icmp ult i32 %i.akn, 4
  br i1 %i.bbk, label %bb.ll, label %bb.lm

bb.ll:                                            ; preds = %bb.lk
  %i.bbl = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.bbj
  %i.bbm = load i32, ptr %i.bbl, align 4, !noalias !39710, !noundef !145 ; 2 uses
  %i.bbn = icmp ult i32 %i.akm, %i.bbm
  br i1 %i.bbn, label %bb.lq, label %bb.ln

bb.lm:                                            ; preds = %bb.lk
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.bbj, i64 noundef 4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2117) #62, !noalias !39591
  unreachable

bb.ln:                                            ; preds = %bb.ll
  %i.bbo = add i32 %i.bbm, %i.bbi                 ; 2 uses
  %i.bbp = icmp ugt i32 %i.akm, %i.bbo
  %i.bbq = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.bbj
  %i.bbr = load i32, ptr %i.bbq, align 4, !noalias !39710, !noundef !145 ; 2 uses
  br i1 %i.bbp, label %bb.lp, label %bb.lo

bb.lo:                                            ; preds = %bb.ln
  %i.bbs = add i32 %i.bbr, %i.bbo
  br label %_RNvNtCsl4v216RJbSI_19brotli_decompressor6decode23BrotliMaxDistanceSymbol.exit.i.i.i.i

bb.lp:                                            ; preds = %bb.ln
  %i.bbt = add i32 %i.bbr, %i.akm
  br label %_RNvNtCsl4v216RJbSI_19brotli_decompressor6decode23BrotliMaxDistanceSymbol.exit.i.i.i.i

bb.lq:                                            ; preds = %bb.ll
  %i.bbu = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.bbj
  %i.bbv = load i32, ptr %i.bbu, align 4, !noalias !39710, !noundef !145
  %i.bbw = add i32 %i.bbi, %i.akm
  %i.bbx = add i32 %i.bbw, %i.bbv
  br label %_RNvNtCsl4v216RJbSI_19brotli_decompressor6decode23BrotliMaxDistanceSymbol.exit.i.i.i.i

_RNvNtCsl4v216RJbSI_19brotli_decompressor6decode23BrotliMaxDistanceSymbol.exit.i.i.i.i: ; preds = %bb.lq, %bb.lp, %bb.lo
  %.sroa.0.0.i185.i.i.i.i = phi i32 [ %i.bbx, %bb.lq ], [ %i.bbt, %bb.lp ], [ %i.bbs, %bb.lo ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !39710
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !39710
  br label %bb.lr

bb.lr:                                            ; preds = %_RNvNtCsl4v216RJbSI_19brotli_decompressor6decode23BrotliMaxDistanceSymbol.exit.i.i.i.i, %bb.gi
  %.sroa.08.0.i.i.i.i = phi i32 [ %.sroa.0.0.i185.i.i.i.i, %_RNvNtCsl4v216RJbSI_19brotli_decompressor6decode23BrotliMaxDistanceSymbol.exit.i.i.i.i ], [ %i.akt, %bb.gi ]
  %i.bby = load i32, ptr %i.nf, align 8, !alias.scope !39590, !noalias !39569, !noundef !145
  %i.bbz = zext i32 %i.bby to i64
  %i.bca = shl nuw nsw i64 %i.bbz, 2
  %i.bcb = call fastcc noundef i32 @_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode16DecodeContextMapNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB12_B12_ECs7XnEB7DeNXr_7sslocal(i64 noundef %i.bca, i1 noundef zeroext true, ptr noalias nofree noundef nonnull align 8 dereferenceable(2600) %i.r, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.029.1.i.i.i.i, i64 noundef %.sroa.21.1.i.i.i.i) #52, !noalias !39591 ; 2 uses
  %i.bcc = icmp eq i32 %i.bcb, 1
  br i1 %i.bcc, label %bb.ls, label %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit.i.i.i.i.backedge

bb.ls:                                            ; preds = %bb.lr
  %i.bcd = load i32, ptr %.sroa.103.0..sroa_idx.i.i.i.i, align 4, !alias.scope !39590, !noalias !39569, !noundef !145
  %i.bce = trunc i32 %i.bcd to i16
  call fastcc void @_RNvMs0_NtCsl4v216RJbSI_19brotli_decompressor7huffmanINtB5_16HuffmanTreeGroupNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB1c_E4initCs7XnEB7DeNXr_7sslocal(ptr noalias nofree noundef align 8 dereferenceable(40) %.sroa.41.0..sroa_idx.i.i.i.i, i16 noundef 256, i16 noundef 256, i16 noundef %i.bce) #52, !noalias !39591
  %i.bcf = load i32, ptr %i.ng, align 4, !alias.scope !39590, !noalias !39569, !noundef !145
  %i.bcg = trunc i32 %i.bcf to i16
  call fastcc void @_RNvMs0_NtCsl4v216RJbSI_19brotli_decompressor7huffmanINtB5_16HuffmanTreeGroupNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB1c_E4initCs7XnEB7DeNXr_7sslocal(ptr noalias nofree noundef align 8 dereferenceable(40) %.sroa.4847.0..sroa_idx.i.i.i.i, i16 noundef 704, i16 noundef 704, i16 noundef %i.bcg) #52, !noalias !39591
  %i.bch = trunc i32 %i.akt to i16
  %i.bci = trunc i32 %.sroa.08.0.i.i.i.i to i16
  %i.bcj = load i32, ptr %i.nh, align 8, !alias.scope !39590, !noalias !39569, !noundef !145
  %i.bck = trunc i32 %i.bcj to i16
  call fastcc void @_RNvMs0_NtCsl4v216RJbSI_19brotli_decompressor7huffmanINtB5_16HuffmanTreeGroupNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB1c_E4initCs7XnEB7DeNXr_7sslocal(ptr noalias nofree noundef align 8 dereferenceable(40) %.sroa.5549.0..sroa_idx.i.i.i.i, i16 noundef %i.bch, i16 noundef %i.bci, i16 noundef %i.bck) #52, !noalias !39591
  %.val134.i.i.i.i = load i64, ptr %.sroa.44.0..sroa_idx.i.i.i.i, align 8, !alias.scope !39590, !noalias !39569, !noundef !145
  %i.bcl = icmp eq i64 %.val134.i.i.i.i, 0
  %.val132.i.i.i.i = load i64, ptr %.sroa.51.0..sroa_idx.i.i.i.i, align 8, !alias.scope !39590, !noalias !39569
  %i.bcm = icmp eq i64 %.val132.i.i.i.i, 0
  %or.cond206.i.i.i.i = select i1 %i.bcl, i1 true, i1 %i.bcm
  %.val130.i.i.i.i = load i64, ptr %.sroa.58.0..sroa_idx50.i.i.i.i, align 8, !alias.scope !39590, !noalias !39569
  %i.bcn = icmp eq i64 %.val130.i.i.i.i, 0
  %or.cond208.i.i.i.i = select i1 %or.cond206.i.i.i.i, i1 true, i1 %i.bcn
  br i1 %or.cond208.i.i.i.i, label %.sink.split.i.i.i.i, label %bb.lt

bb.lt:                                            ; preds = %bb.ls
  store i32 0, ptr %.sroa.7254.0..sroa_idx.i.i.i.i, align 8, !alias.scope !39590, !noalias !39569
  br label %.backedge.i.i.i.i

.sink.split.i.i.i.i:                              ; preds = %bb.gu, %bb.ls, %bb.mh, %bb.mg, %bb.co
  %.sroa.017.9.i.i.i = phi i64 [ %.sroa.017.2.i.i.i, %bb.ls ], [ 0, %bb.co ], [ %i.bdx, %bb.mg ], [ %i.bdx, %bb.mh ], [ %.sroa.017.2.i.i.i, %bb.gu ]
  %.sroa.014.6.i.i.i = phi i64 [ %.sroa.014.3.i.i.i, %bb.ls ], [ %.sroa.014.1.i.i.i.peel, %bb.co ], [ %.sroa.014.3.i.i.i, %bb.mg ], [ %.sroa.014.3.i.i.i, %bb.mh ], [ %.sroa.014.3.i.i.i, %bb.gu ]
  %.sroa.011.6.i.i.i = phi i64 [ %.sroa.011.3.i.i.i, %bb.ls ], [ %.sroa.011.1.i.i.i.peel, %bb.co ], [ %.sroa.011.3.i.i.i, %bb.mg ], [ %.sroa.011.3.i.i.i, %bb.mh ], [ %.sroa.011.3.i.i.i, %bb.gu ]
  %.sroa.06.8.i.i.i = phi i64 [ %.sroa.06.1.i.i.i, %bb.ls ], [ %.sroa.06.0.i.i.i.ph, %bb.co ], [ %i.beb, %bb.mg ], [ %i.beb, %bb.mh ], [ %.sroa.06.1.i.i.i, %bb.gu ]
  %.sink912.i.i.i.i = phi i32 [ -31, %bb.ls ], [ -20, %bb.co ], [ 1, %bb.mg ], [ 1, %bb.mh ], [ 1, %bb.gu ]
  %.sroa.0.0.ph.i.i.i.i = phi i32 [ 0, %bb.ls ], [ 0, %bb.co ], [ 1, %bb.mg ], [ 1, %bb.mh ], [ 1, %bb.gu ]
  store i32 %.sink912.i.i.i.i, ptr %.sroa.104.0..sroa_idx.i.i.i.i, align 8, !alias.scope !39590, !noalias !39569
  br label %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode22BrotliDecompressStreamNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB18_B18_ECs7XnEB7DeNXr_7sslocal.exit.i.i.i

bb.lu:                                            ; preds = %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode22HuffmanTreeGroupDecodeNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB18_B18_ECs7XnEB7DeNXr_7sslocal.exit.thread.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !39749)
  %i.bco = load i32, ptr %i.np, align 4, !alias.scope !39749, !noalias !39662, !noundef !145 ; 4 uses
  %i.bcp = zext i32 %i.bco to i64                 ; 4 uses
  %i.bcq = shl i32 %i.bco, 6
  %i.bcr = zext i32 %i.bcq to i64                 ; 4 uses
  store i64 %i.bcr, ptr %i.nr, align 8, !alias.scope !39749, !noalias !39662
  %i.bcs = lshr i64 %i.bcp, 5                     ; 2 uses
  %i.bct = icmp ult i32 %i.bco, 256
  br i1 %i.bct, label %bb.lv, label %bb.lw

bb.lv:                                            ; preds = %bb.lu
  %i.bcu = getelementptr inbounds nuw [4 x i8], ptr %.ptr36.i.i.i.i.i, i64 %i.bcs
  %i.bcv = load i32, ptr %i.bcu, align 4, !alias.scope !39749, !noalias !39662, !noundef !145
  %i.bcw = and i32 %i.bco, 31
  %i.bcx = lshr i32 %i.bcv, %i.bcw
  %i.bcy = and i32 %i.bcx, 1
  store i32 %i.bcy, ptr %i.oi, align 8, !alias.scope !39749, !noalias !39662
  %.val9.i.i.i = load i64, ptr %.sroa.25.0..sroa_idx.i.i.i.i, align 8, !alias.scope !39749, !noalias !39662, !noundef !145 ; 2 uses
  %i.bcz = icmp ugt i64 %.val9.i.i.i, %i.bcr
  br i1 %i.bcz, label %bb.lx, label %bb.ly

bb.lw:                                            ; preds = %bb.lu
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.bcs, i64 noundef 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @394) #62, !noalias !39750
  unreachable

bb.lx:                                            ; preds = %bb.lv
  %.val8.i.i.i = load ptr, ptr %.sroa.24.0..sroa_idx.i.i.i.i, align 8, !alias.scope !39749, !noalias !39662, !nonnull !145, !noundef !145
  %i.bda = getelementptr inbounds nuw i8, ptr %.val8.i.i.i, i64 %i.bcr
  %i.bdb = load i8, ptr %i.bda, align 1, !noalias !39750, !noundef !145
  store i8 %i.bdb, ptr %.sroa.107.0..sroa_idx.i.i.i.i, align 8, !alias.scope !39749, !noalias !39662
  %.val7.i.i.i = load i64, ptr %.sroa.27.0..sroa_idx.i.i.i.i, align 8, !alias.scope !39749, !noalias !39662, !noundef !145 ; 2 uses
  %i.bdc = icmp ugt i64 %.val7.i.i.i, %i.bcp
  br i1 %i.bdc, label %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode22PrepareLiteralDecodingNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB18_B18_ECs7XnEB7DeNXr_7sslocal.exit.i.i, label %bb.lz

bb.ly:                                            ; preds = %bb.lv
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.bcr, i64 noundef %.val9.i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @395) #62, !noalias !39750
  unreachable

bb.lz:                                            ; preds = %bb.lx
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.bcp, i64 noundef %.val7.i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @396) #62, !noalias !39750
  unreachable

_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode22PrepareLiteralDecodingNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB18_B18_ECs7XnEB7DeNXr_7sslocal.exit.i.i: ; preds = %bb.lx
  %.val.i.i.i = load ptr, ptr %.sroa.26.0..sroa_idx.i.i.i.i, align 8, !alias.scope !39749, !noalias !39662, !nonnull !145, !noundef !145
  %i.bdd = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.bcp
  %i.bde = load i8, ptr %i.bdd, align 1, !noalias !39750, !noundef !145
  %i.bdf = and i8 %i.bde, 3
  %i.bdg = zext nneg i8 %i.bdf to i64
  %i.bdh = getelementptr inbounds nuw [512 x i8], ptr @_RNvNtCsl4v216RJbSI_19brotli_decompressor7context14kContextLookup, i64 %i.bdg
  store ptr %i.bdh, ptr %.sroa.6251.0..sroa_idx.i.i.i.i, align 8, !alias.scope !39749, !noalias !39662, !captures !194
  store i64 0, ptr %i.nv, align 8, !alias.scope !39590, !noalias !39569
  store i16 0, ptr %.sroa.105.0..sroa_idx.i.i.i.i, align 4, !alias.scope !39590, !noalias !39569
  store i8 7, ptr %i.nc, align 2, !alias.scope !39590, !noalias !39569
  br label %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit.i.i.i.i.backedge

bb.ma:                                            ; preds = %bb.gu
  call void @llvm.experimental.noalias.scope.decl(metadata !39751)
  %i.bdi = load i32, ptr %i.oa, align 8, !alias.scope !39751, !noalias !39680, !noundef !145 ; 4 uses
  %i.bdj = load i32, ptr %i.nw, align 8, !alias.scope !39751, !noalias !39680, !noundef !145 ; 6 uses
  %..i39.i.i.i = call i32 @llvm.smin.i32(i32 %i.bdi, i32 %i.bdj)
  %.sroa.010.0.i40.i.i.i = sext i32 %..i39.i.i.i to i64
  %i.bdk = load i64, ptr %i.ob, align 8, !alias.scope !39751, !noalias !39680, !noundef !145 ; 2 uses
  %i.bdl = sext i32 %i.bdj to i64
  %i.bdm = mul i64 %i.bdk, %i.bdl
  %i.bdn = add i64 %i.bdm, %.sroa.010.0.i40.i.i.i
  %i.bdo = load i64, ptr %i.oc, align 8, !alias.scope !39751, !noalias !39680, !noundef !145 ; 3 uses
  %i.bdp = sub i64 %i.bdn, %i.bdo                 ; 2 uses
  %spec.store.select.i41.i.i.i = call i64 @llvm.umin.i64(i64 %.sroa.06.1.i.i.i, i64 %i.bdp) ; 5 uses
  %i.bdq = load i32, ptr %i.nm, align 8, !alias.scope !39751, !noalias !39680, !noundef !145
  %i.bdr = icmp slt i32 %i.bdq, 0
  br i1 %i.bdr, label %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit.i.i.i.i.backedge, label %bb.mb

bb.mb:                                            ; preds = %bb.ma
  %i.bds = load i32, ptr %i.od, align 4, !alias.scope !39751, !noalias !39680, !noundef !145
  %i.bdt = sext i32 %i.bds to i64
  %i.bdu = and i64 %i.bdo, %i.bdt                 ; 4 uses
  %i.bdv = add i64 %i.bdu, %spec.store.select.i41.i.i.i ; 3 uses
  %i.bdw = icmp ult i64 %i.bdv, %i.bdu
  %.not.i43.i.i.i = icmp ugt i64 %i.bdv, %.val118.i.i.i.i
  %or.cond.i44.i.i.i = or i1 %i.bdw, %.not.i43.i.i.i
  br i1 %or.cond.i44.i.i.i, label %bb.md, label %bb.mc, !prof !172

bb.mc:                                            ; preds = %bb.mb
  %i.bdx = add nuw nsw i64 %spec.store.select.i41.i.i.i, %.sroa.017.2.i.i.i ; 5 uses
  %i.bdy = icmp ult i64 %i.bdx, 4097
  br i1 %i.bdy, label %bb.me, label %bb.mf, !prof !166

bb.md:                                            ; preds = %bb.mb
  call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %i.bdu, i64 noundef %i.bdv, i64 noundef %.val118.i.i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @363) #62, !noalias !39752
  unreachable

bb.me:                                            ; preds = %bb.mc
  %.val.i45.i.i.i = load ptr, ptr %.sroa.12.0..sroa_idx.i.i.i.i, align 8, !alias.scope !39751, !noalias !39680, !nonnull !145, !noundef !145
  %i.bdz = getelementptr inbounds nuw i8, ptr %.val.i45.i.i.i, i64 %i.bdu
  %i.bea = getelementptr inbounds nuw i8, ptr %i.s, i64 %.sroa.017.2.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bea, ptr nonnull readonly align 1 %i.bdz, i64 range(i64 0, -9223372036854775808) %spec.store.select.i41.i.i.i, i1 false), !alias.scope !39753, !noalias !39754
  %i.beb = sub nuw nsw i64 %.sroa.06.1.i.i.i, %spec.store.select.i41.i.i.i ; 3 uses
  %i.bec = add i64 %spec.store.select.i41.i.i.i, %i.bdo
  store i64 %i.bec, ptr %i.oc, align 8, !alias.scope !39751, !noalias !39680
  %i.bed = icmp ult i64 %.sroa.06.1.i.i.i, %i.bdp
  br i1 %i.bed, label %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit.i.i.i.i.backedge, label %bb.mg

bb.mf:                                            ; preds = %bb.mc
  call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %.sroa.017.2.i.i.i, i64 noundef %i.bdx, i64 noundef 4096, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @362) #62, !noalias !39752
  unreachable

bb.mg:                                            ; preds = %bb.me
  %i.bee = load i32, ptr %.sroa.102.0..sroa_idx.i.i.i.i, align 8, !alias.scope !39751, !noalias !39680, !noundef !145
  %i.bef = and i32 %i.bee, 31
  %i.beg = shl nuw i32 1, %i.bef
  %i.beh = icmp ne i32 %i.bdj, %i.beg
  %.not18.i47.i.i.i = icmp slt i32 %i.bdi, %i.bdj
  %or.cond21.i48.i.i.i = or i1 %.not18.i47.i.i.i, %i.beh
  br i1 %or.cond21.i48.i.i.i, label %.sink.split.i.i.i.i, label %bb.mh

bb.mh:                                            ; preds = %bb.mg
  %i.bei = sub i32 %i.bdi, %i.bdj
  store i32 %i.bei, ptr %i.oa, align 8, !alias.scope !39751, !noalias !39680
  %i.bej = add i64 %i.bdk, 1
  store i64 %i.bej, ptr %i.ob, align 8, !alias.scope !39751, !noalias !39680
  %i.bek = icmp ne i32 %i.bdi, %i.bdj
  %i.bel = zext i1 %i.bek to i8
  store i8 %i.bel, ptr %.sroa.122.0..sroa_idx.i.i.i.i, align 1, !alias.scope !39751, !noalias !39680
  br label %.sink.split.i.i.i.i

bb.mi:                                            ; preds = %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit.i.i.i.i
  %.val112.i.i.i.i = load i64, ptr %.sroa.13.0..sroa_idx.i.i.i.i, align 8, !alias.scope !39590, !noalias !39569, !noundef !145 ; 3 uses
  %i.bem = icmp eq i64 %.val112.i.i.i.i, 0
  br i1 %i.bem, label %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode15WriteRingBufferNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB11_B11_ECs7XnEB7DeNXr_7sslocal.exit.thread.i.i.i, label %bb.mk

bb.mj:                                            ; preds = %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit.i.i.i.i
  %i.ben = load i32, ptr %i.nb, align 4, !alias.scope !39590, !noalias !39569, !noundef !145
  %i.beo = icmp eq i32 %i.ben, 0
  br i1 %i.beo, label %bb.nj, label %bb.nk

bb.mk:                                            ; preds = %bb.mi
  call void @llvm.experimental.noalias.scope.decl(metadata !39755)
  %i.bep = load i32, ptr %i.oa, align 8, !alias.scope !39755, !noalias !39680, !noundef !145 ; 4 uses
  %i.beq = load i32, ptr %i.nw, align 8, !alias.scope !39755, !noalias !39680, !noundef !145 ; 6 uses
  %..i35.i.i.i = call i32 @llvm.smin.i32(i32 %i.bep, i32 %i.beq)
  %.sroa.010.0.i.i.i.i = sext i32 %..i35.i.i.i to i64
  %i.ber = load i64, ptr %i.ob, align 8, !alias.scope !39755, !noalias !39680, !noundef !145 ; 2 uses
  %i.bes = sext i32 %i.beq to i64
  %i.bet = mul i64 %i.ber, %i.bes
  %i.beu = add i64 %i.bet, %.sroa.010.0.i.i.i.i
  %i.bev = load i64, ptr %i.oc, align 8, !alias.scope !39755, !noalias !39680, !noundef !145 ; 3 uses
  %i.bew = sub i64 %i.beu, %i.bev                 ; 2 uses
  %spec.store.select.i.i.i.i = call i64 @llvm.umin.i64(i64 %.sroa.06.1.i.i.i, i64 %i.bew) ; 5 uses
  %i.bex = load i32, ptr %i.nm, align 8, !alias.scope !39755, !noalias !39680, !noundef !145
  %i.bey = icmp slt i32 %i.bex, 0
  br i1 %i.bey, label %.loopexit217.i.i.i.i, label %bb.ml

bb.ml:                                            ; preds = %bb.mk
  %i.bez = load i32, ptr %i.od, align 4, !alias.scope !39755, !noalias !39680, !noundef !145
  %i.bfa = sext i32 %i.bez to i64
  %i.bfb = and i64 %i.bev, %i.bfa                 ; 4 uses
  %i.bfc = add i64 %i.bfb, %spec.store.select.i.i.i.i ; 3 uses
  %i.bfd = icmp ult i64 %i.bfc, %i.bfb
  %.not.i36.i.i.i = icmp ugt i64 %i.bfc, %.val112.i.i.i.i
  %or.cond.i37.i.i.i = or i1 %i.bfd, %.not.i36.i.i.i
  br i1 %or.cond.i37.i.i.i, label %bb.mn, label %bb.mm, !prof !172

bb.mm:                                            ; preds = %bb.ml
  %i.bfe = add nuw nsw i64 %spec.store.select.i.i.i.i, %.sroa.017.2.i.i.i ; 5 uses
  %i.bff = icmp ult i64 %i.bfe, 4097
  br i1 %i.bff, label %bb.mo, label %bb.mp, !prof !166

bb.mn:                                            ; preds = %bb.ml
  call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %i.bfb, i64 noundef %i.bfc, i64 noundef %.val112.i.i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @363) #62, !noalias !39756
  unreachable

bb.mo:                                            ; preds = %bb.mm
  %.val.i38.i.i.i = load ptr, ptr %.sroa.12.0..sroa_idx.i.i.i.i, align 8, !alias.scope !39755, !noalias !39680, !nonnull !145, !noundef !145
  %i.bfg = getelementptr inbounds nuw i8, ptr %.val.i38.i.i.i, i64 %i.bfb
  %i.bfh = getelementptr inbounds nuw i8, ptr %i.s, i64 %.sroa.017.2.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bfh, ptr nonnull readonly align 1 %i.bfg, i64 range(i64 0, -9223372036854775808) %spec.store.select.i.i.i.i, i1 false), !alias.scope !39757, !noalias !39758
  %i.bfi = sub nuw nsw i64 %.sroa.06.1.i.i.i, %spec.store.select.i.i.i.i ; 3 uses
  %i.bfj = add i64 %spec.store.select.i.i.i.i, %i.bev
  store i64 %i.bfj, ptr %i.oc, align 8, !alias.scope !39755, !noalias !39680
  %i.bfk = icmp ult i64 %.sroa.06.1.i.i.i, %i.bew
  br i1 %i.bfk, label %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode15WriteRingBufferNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB11_B11_ECs7XnEB7DeNXr_7sslocal.exit.thread.i.i.i, label %bb.mq

bb.mp:                                            ; preds = %bb.mm
  call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %.sroa.017.2.i.i.i, i64 noundef %i.bfe, i64 noundef 4096, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @362) #62, !noalias !39756
  unreachable

bb.mq:                                            ; preds = %bb.mo
  %i.bfl = load i32, ptr %.sroa.102.0..sroa_idx.i.i.i.i, align 8, !alias.scope !39755, !noalias !39680, !noundef !145
  %i.bfm = and i32 %i.bfl, 31
  %i.bfn = shl nuw i32 1, %i.bfm
  %i.bfo = icmp ne i32 %i.beq, %i.bfn
  %.not18.i.i.i.i = icmp slt i32 %i.bep, %i.beq
  %or.cond21.i.i.i.i = or i1 %.not18.i.i.i.i, %i.bfo
  br i1 %or.cond21.i.i.i.i, label %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode15WriteRingBufferNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB11_B11_ECs7XnEB7DeNXr_7sslocal.exit.thread.i.i.i, label %bb.mr

bb.mr:                                            ; preds = %bb.mq
  %i.bfp = sub i32 %i.bep, %i.beq
  store i32 %i.bfp, ptr %i.oa, align 8, !alias.scope !39755, !noalias !39680
  %i.bfq = add i64 %i.ber, 1
  store i64 %i.bfq, ptr %i.ob, align 8, !alias.scope !39755, !noalias !39680
  %i.bfr = icmp ne i32 %i.bep, %i.beq
  %i.bfs = zext i1 %i.bfr to i8
  store i8 %i.bfs, ptr %.sroa.122.0..sroa_idx.i.i.i.i, align 1, !alias.scope !39755, !noalias !39680
  br label %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode15WriteRingBufferNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB11_B11_ECs7XnEB7DeNXr_7sslocal.exit.thread.i.i.i

_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode15WriteRingBufferNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB11_B11_ECs7XnEB7DeNXr_7sslocal.exit.thread.i.i.i: ; preds = %bb.mr, %bb.mq, %bb.mo, %bb.mi
  %.sroa.017.12.i.i.i = phi i64 [ %.sroa.017.2.i.i.i, %bb.mi ], [ %i.bfe, %bb.mo ], [ %i.bfe, %bb.mr ], [ %i.bfe, %bb.mq ] ; 3 uses
  %.sroa.06.11.i.i.i = phi i64 [ %.sroa.06.1.i.i.i, %bb.mi ], [ %i.bfi, %bb.mo ], [ %i.bfi, %bb.mr ], [ %i.bfi, %bb.mq ] ; 3 uses
  %i.bft = load i32, ptr %i.nb, align 4, !alias.scope !39590, !noalias !39569, !noundef !145 ; 3 uses
  %i.bfu = icmp eq i32 %i.bft, 0
  br i1 %i.bfu, label %bb.ms, label %bb.mt

bb.ms:                                            ; preds = %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode15WriteRingBufferNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB11_B11_ECs7XnEB7DeNXr_7sslocal.exit.thread.i.i.i
  %i.bfv = load i32, ptr %.sroa.32.0..sroa_idx.i.i.i.i, align 4, !alias.scope !39590, !noalias !39569, !noundef !145
  %i.bfw = zext i32 %i.bfv to i64                 ; 3 uses
  %i.bfx = load i32, ptr %.sroa.33.0..sroa_idx.i.i.i.i, align 8, !alias.scope !39590, !noalias !39569, !noundef !145 ; 2 uses
  %i.bfy = icmp eq i32 %i.bfx, 0
  br i1 %i.bfy, label %.thread203.i.i.i.i, label %.lr.ph472.preheader.i.i.i.i

.lr.ph472.preheader.i.i.i.i:                      ; preds = %bb.ms
  %i.bfz = zext i32 %i.bfx to i64
  %umax683.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.bfw, i64 4096) ; 2 uses
  br label %.lr.ph472.i.i.i.i

bb.mt:                                            ; preds = %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode15WriteRingBufferNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB11_B11_ECs7XnEB7DeNXr_7sslocal.exit.thread.i.i.i
  %i.bga = load i32, ptr %.sroa.33.0..sroa_idx.i.i.i.i, align 8, !alias.scope !39590, !noalias !39569, !noundef !145
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
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %umax683.i.i.i.i, i64 noundef 4096, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @386) #62, !noalias !39591
  unreachable

bb.mw:                                            ; preds = %bb.mu
  %i.bgg = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.bgd
  %i.bgh = load i8, ptr %i.bgg, align 1, !alias.scope !39759, !noalias !39564, !noundef !145
  %i.bgi = getelementptr inbounds nuw i8, ptr %.sroa.3444.0..sroa_idx.i.i.i.i, i64 %i.bge
  store i8 %i.bgh, ptr %i.bgi, align 1, !alias.scope !39590, !noalias !39569
  %i.bgj = load i32, ptr %i.nb, align 4, !alias.scope !39590, !noalias !39569, !noundef !145
  %i.bgk = add i32 %i.bgj, 1                      ; 2 uses
  store i32 %i.bgk, ptr %i.nb, align 4, !alias.scope !39590, !noalias !39569
  %i.bgl = add nuw nsw i64 %i.bgd, 1              ; 2 uses
  %i.bgm = add nsw i64 %storemerge107470.i.i.i.i, -1 ; 2 uses
  %i.bgn = icmp eq i64 %i.bgm, 0
  br i1 %i.bgn, label %.thread203.i.i.i.i, label %.lr.ph472.i.i.i.i

bb.mx:                                            ; preds = %bb.mu
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.bge, i64 noundef 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @387) #62, !noalias !39591
  unreachable

bb.my:                                            ; preds = %bb.mt
  store i32 0, ptr %i.nb, align 4, !alias.scope !39590, !noalias !39569
  %i.bgo = trunc nuw i64 %.sroa.011.2.i.i.i to i32
  store i32 %i.bgo, ptr %.sroa.33.0..sroa_idx.i.i.i.i, align 8, !alias.scope !39590, !noalias !39569
  %i.bgp = trunc i64 %.sroa.014.2.i.i.i to i32
  store i32 %i.bgp, ptr %.sroa.32.0..sroa_idx.i.i.i.i, align 4, !alias.scope !39590, !noalias !39569
  br label %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit.i.i.i.i.backedge

bb.mz:                                            ; preds = %bb.mt
  %i.bgq = icmp eq i64 %.sroa.011.2.i.i.i, 0
  br i1 %i.bgq, label %.thread203.i.i.i.i, label %bb.na

bb.na:                                            ; preds = %bb.mz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !39710
  %i.bgr = icmp ult i64 %.sroa.014.2.i.i.i, 4096
  br i1 %i.bgr, label %bb.nb, label %bb.nc

.loopexit217.i.i.i.i:                             ; preds = %bb.mk, %bb.nk, %bb.nj
  %.sroa.014.8.i.i.i = phi i64 [ %i.bhx, %bb.nj ], [ %.sroa.014.2.i.i.i, %bb.nk ], [ %.sroa.014.2.i.i.i, %bb.mk ]
  %.sroa.011.7.i.i.i = phi i64 [ %i.bhw, %bb.nj ], [ %.sroa.011.2.i.i.i, %bb.nk ], [ %.sroa.011.2.i.i.i, %bb.mk ]
  %.sroa.09.7.i.i.i.i = phi i32 [ %.sroa.09.1.i.i.i.i, %bb.nj ], [ %.sroa.09.1.i.i.i.i, %bb.nk ], [ -9, %bb.mk ] ; 3 uses
  store i32 %.sroa.09.7.i.i.i.i, ptr %.sroa.104.0..sroa_idx.i.i.i.i, align 8, !alias.scope !39590, !noalias !39569
  %switch.tableidx.i.i.i.i = add nsw i32 %.sroa.09.7.i.i.i.i, -1
  %i.bgs = icmp ult i32 %switch.tableidx.i.i.i.i, 3
  %spec.select.i.i.i.i = select i1 %i.bgs, i32 %.sroa.09.7.i.i.i.i, i32 0
  br label %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode22BrotliDecompressStreamNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB18_B18_ECs7XnEB7DeNXr_7sslocal.exit.i.i.i

bb.nb:                                            ; preds = %bb.na
  %i.bgt = getelementptr inbounds nuw i8, ptr %i.t, i64 %.sroa.014.2.i.i.i
  %i.bgu = load i8, ptr %i.bgt, align 1, !alias.scope !39759, !noalias !39564, !noundef !145 ; 3 uses
  store i8 %i.bgu, ptr %i.o, align 1, !noalias !39710
  %i.bgv = zext i32 %i.bft to i64                 ; 2 uses
  %i.bgw = icmp ult i32 %i.bft, 8
  br i1 %i.bgw, label %bb.nd, label %bb.ne

bb.nc:                                            ; preds = %bb.na
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %.sroa.014.2.i.i.i, i64 noundef 4096, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @388) #62, !noalias !39591
  unreachable

bb.nd:                                            ; preds = %bb.nb
  %i.bgx = getelementptr inbounds nuw i8, ptr %.sroa.3444.0..sroa_idx.i.i.i.i, i64 %i.bgv
  store i8 %i.bgu, ptr %i.bgx, align 1, !alias.scope !39590, !noalias !39569
  %i.bgy = load i32, ptr %i.nb, align 4, !alias.scope !39590, !noalias !39569, !noundef !145 ; 3 uses
  %i.bgz = zext i32 %i.bgy to i64                 ; 3 uses
  %i.bha = icmp ult i32 %i.bgy, 8
  br i1 %i.bha, label %bb.nf, label %bb.ng

bb.ne:                                            ; preds = %bb.nb
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.bgv, i64 noundef 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @389) #62, !noalias !39591
  unreachable

bb.nf:                                            ; preds = %bb.nd
  %i.bhb = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.bgz
  %i.bhc = load i8, ptr %i.bhb, align 1, !noalias !39710, !noundef !145
  %i.bhd = icmp eq i8 %i.bhc, %i.bgu
  br i1 %i.bhd, label %bb.ni, label %bb.nh, !prof !157

bb.ng:                                            ; preds = %bb.nd
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.bgz, i64 noundef 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @390) #62, !noalias !39591
  unreachable

bb.nh:                                            ; preds = %bb.nf
  %i.bhe = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.bgz
  call void @_RINvNtCsf3Ta7LF998c_4core9panicking13assert_failedhhECs3Cy1ix4llLu_12aho_corasick(i8 noundef 0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.bhe, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.o, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @391) #62, !noalias !39591
  unreachable

bb.ni:                                            ; preds = %bb.nf
  %i.bhf = add nuw nsw i32 %i.bgy, 1              ; 2 uses
  store i32 %i.bhf, ptr %i.nb, align 4, !alias.scope !39590, !noalias !39569
  store i32 %i.bhf, ptr %.sroa.33.0..sroa_idx.i.i.i.i, align 8, !alias.scope !39590, !noalias !39569
  %i.bhg = add nuw nsw i64 %.sroa.014.2.i.i.i, 1
  %i.bhh = add nsw i64 %.sroa.011.2.i.i.i, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !39710
  br label %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit.i.i.i.i.backedge

_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit.i.i.i.i.backedge: ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i147.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2D0wXkiOfwW_12alloc_stdlib10heap_alloc7WrapBoxNtNtCsl4v216RJbSI_19brotli_decompressor7huffman11HuffmanCodeEECs7XnEB7DeNXr_7sslocal.exit157.i.i.i.i, %bb.gh, %bb.gv, %bb.he, %bb.hf, %.loopexit211.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2D0wXkiOfwW_12alloc_stdlib10heap_alloc7WrapBoxhEECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i, %bb.je, %bb.jy, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2D0wXkiOfwW_12alloc_stdlib10heap_alloc7WrapBoxNtNtCsl4v216RJbSI_19brotli_decompressor7huffman11HuffmanCodeEECs7XnEB7DeNXr_7sslocal.exit181.i.i.i.i, %bb.lr, %.lr.ph.i174.preheader.i.i.i.i, %bb.ey, %bb.ff, %.loopexit.i105.i.i.i, %.loopexit83.i.i.i.i, %bb.ni, %bb.my, %bb.me, %bb.ma, %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode22PrepareLiteralDecodingNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB18_B18_ECs7XnEB7DeNXr_7sslocal.exit.i.i, %bb.kr, %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode28SafeReadBlockLengthFromIndexNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocECs7XnEB7DeNXr_7sslocal.exit.i.i.i, %bb.ki, %bb.kf, %bb.jx, %bb.jv, %bb.ju, %bb.jt, %bb.jr, %bb.jq, %bb.jp, %bb.jb, %._crit_edge.i.i.i.i65, %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode29CopyUncompressedBlockToOutputNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB1f_B1f_ECs7XnEB7DeNXr_7sslocal.exit.i.i.i, %bb.ix, %bb.is, %bb.ir, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2D0wXkiOfwW_12alloc_stdlib10heap_alloc7WrapBoxhEECs7XnEB7DeNXr_7sslocal.exit.i.i.i, %bb.hp, %bb.ho, %bb.hn, %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode22HuffmanTreeGroupDecodeNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB18_B18_ECs7XnEB7DeNXr_7sslocal.exit.thread.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2D0wXkiOfwW_12alloc_stdlib10heap_alloc7WrapBoxmEECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i, %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode22HuffmanTreeGroupDecodeNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB18_B18_ECs7XnEB7DeNXr_7sslocal.exit.thread55.i.i.i, %bb.ga, %bb.ft, %bb.fq, %bb.ev, %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode16ReadContextModesNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB12_B12_ECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i, %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode21DecodeMetaBlockLengthNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB17_B17_ECs7XnEB7DeNXr_7sslocal.exit.thread.sink.split.i.i.i, %.loopexit91.i.i.i.i, %.lr.ph.i11.split.i.i, %bb.ei, %.lr.ph.i57.preheader.i.i.i.i, %.lr.ph.i47.preheader.split.i.i.i.i, %bb.dx, %.lr.ph.i37.preheader.i.i.i.i, %.lr.ph.i27.preheader.split.i.i.i.i, %bb.do, %.lr.ph.i.preheader.split.i.i.i.i, %bb.dl
  %.sroa.017.2.i.i.i.be = phi i64 [ %.sroa.017.2.i.i.i, %.lr.ph.i.preheader.split.i.i.i.i ], [ %.sroa.017.2.i.i.i, %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode22PrepareLiteralDecodingNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB18_B18_ECs7XnEB7DeNXr_7sslocal.exit.i.i ], [ %.sroa.017.2.i.i.i, %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode22HuffmanTreeGroupDecodeNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB18_B18_ECs7XnEB7DeNXr_7sslocal.exit.thread.i.i.i ], [ %.sroa.017.2.i.i.i, %bb.ki ], [ %.sroa.017.2.i.i.i, %bb.kr ], [ %.sroa.017.2.i.i.i, %bb.hp ], [ %.sroa.017.2.i.i.i, %bb.ir ], [ %.sroa.017.2.i.i.i, %bb.is ], [ %.sroa.017.2.i.i.i, %bb.dl ], [ %.sroa.017.2.i.i.i, %bb.ho ], [ %.sroa.017.2.i.i.i, %bb.hn ], [ %.sroa.017.2.i.i.i, %.loopexit83.i.i.i.i ], [ %.sroa.017.12.i.i.i, %bb.my ], [ %.sroa.017.2.i.i.i, %bb.ft ], [ %.sroa.017.2.i.i.i, %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode16ReadContextModesNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB12_B12_ECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i ], [ %.sroa.017.2.i.i.i, %bb.ix ], [ %.sroa.017.2.i.i.i, %bb.ev ], [ %.sroa.017.4.i.i.i, %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode29CopyUncompressedBlockToOutputNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB1f_B1f_ECs7XnEB7DeNXr_7sslocal.exit.i.i.i ], [ %.sroa.017.2.i.i.i, %bb.ma ], [ %.sroa.017.2.i.i.i, %bb.ei ], [ %.sroa.017.2.i.i.i, %._crit_edge.i.i.i.i65 ], [ %.sroa.017.2.i.i.i, %bb.jb ], [ %.sroa.017.2.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2D0wXkiOfwW_12alloc_stdlib10heap_alloc7WrapBoxmEECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i ], [ %i.ais, %bb.jv ], [ %i.ais, %bb.ju ], [ %i.ais, %bb.jt ], [ %i.ais, %bb.jr ], [ %i.ais, %bb.jq ], [ %i.ais, %bb.jp ], [ %.sroa.017.12.i.i.i, %bb.ni ], [ %.sroa.017.2.i.i.i, %bb.jx ], [ %.sroa.017.2.i.i.i, %bb.kf ], [ %.sroa.017.2.i.i.i, %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode28SafeReadBlockLengthFromIndexNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocECs7XnEB7DeNXr_7sslocal.exit.i.i.i ], [ %i.ais, %bb.ga ], [ %i.bdx, %bb.me ], [ %.sroa.017.2.i.i.i, %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode22HuffmanTreeGroupDecodeNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB18_B18_ECs7XnEB7DeNXr_7sslocal.exit.thread55.i.i.i ], [ %.sroa.017.4.i.i.i, %bb.fq ], [ %.sroa.017.2.i.i.i, %.loopexit.i105.i.i.i ], [ %.sroa.017.2.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2D0wXkiOfwW_12alloc_stdlib10heap_alloc7WrapBoxhEECs7XnEB7DeNXr_7sslocal.exit.i.i.i ], [ %.sroa.017.2.i.i.i, %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode21DecodeMetaBlockLengthNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB17_B17_ECs7XnEB7DeNXr_7sslocal.exit.thread.sink.split.i.i.i ], [ %.sroa.017.2.i.i.i, %.lr.ph.i174.preheader.i.i.i.i ], [ %.sroa.017.2.i.i.i, %.loopexit91.i.i.i.i ], [ %i.aeq, %bb.ff ], [ %.sroa.017.2.i.i.i, %.lr.ph.i57.preheader.i.i.i.i ], [ %.sroa.017.2.i.i.i, %.lr.ph.i47.preheader.split.i.i.i.i ], [ %.sroa.017.2.i.i.i, %bb.dx ], [ %.sroa.017.2.i.i.i, %.lr.ph.i37.preheader.i.i.i.i ], [ %.sroa.017.2.i.i.i, %.lr.ph.i27.preheader.split.i.i.i.i ], [ %.sroa.017.2.i.i.i, %bb.do ], [ %.sroa.017.2.i.i.i, %.lr.ph.i11.split.i.i ], [ %.sroa.017.4.i.i.i, %bb.ey ], [ %.sroa.017.2.i.i.i, %bb.lr ], [ %.sroa.017.2.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2D0wXkiOfwW_12alloc_stdlib10heap_alloc7WrapBoxNtNtCsl4v216RJbSI_19brotli_decompressor7huffman11HuffmanCodeEECs7XnEB7DeNXr_7sslocal.exit181.i.i.i.i ], [ %.sroa.017.2.i.i.i, %bb.jy ], [ %.sroa.017.2.i.i.i, %bb.je ], [ %.sroa.017.2.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2D0wXkiOfwW_12alloc_stdlib10heap_alloc7WrapBoxhEECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i ], [ %.sroa.017.2.i.i.i, %.loopexit211.i.i.i.i ], [ %.sroa.017.2.i.i.i, %bb.hf ], [ %.sroa.017.2.i.i.i, %bb.he ], [ %.sroa.017.2.i.i.i, %bb.gv ], [ %.sroa.017.2.i.i.i, %bb.gh ], [ %.sroa.017.2.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2D0wXkiOfwW_12alloc_stdlib10heap_alloc7WrapBoxNtNtCsl4v216RJbSI_19brotli_decompressor7huffman11HuffmanCodeEECs7XnEB7DeNXr_7sslocal.exit157.i.i.i.i ], [ %.sroa.017.2.i.i.i, %.lr.ph.i147.i.i.i.i ], [ %.sroa.017.2.i.i.i, %.lr.ph.i.i.i.i.i ]
  %.sroa.014.2.i.i.i.be = phi i64 [ %.sroa.014.3.i.i.i, %.lr.ph.i.preheader.split.i.i.i.i ], [ %.sroa.014.3.i.i.i, %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode22PrepareLiteralDecodingNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB18_B18_ECs7XnEB7DeNXr_7sslocal.exit.i.i ], [ %.sroa.014.3.i.i.i, %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode22HuffmanTreeGroupDecodeNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB18_B18_ECs7XnEB7DeNXr_7sslocal.exit.thread.i.i.i ], [ %.sroa.014.3.i.i.i, %bb.ki ], [ %.sroa.014.3.i.i.i, %bb.kr ], [ %.sroa.014.3.i.i.i, %bb.hp ], [ %.sroa.014.3.i.i.i, %bb.ir ], [ %.sroa.014.3.i.i.i, %bb.is ], [ %.sroa.014.3.i.i.i, %bb.dl ], [ %.sroa.014.3.i.i.i, %bb.ho ], [ %.sroa.014.3.i.i.i, %bb.hn ], [ %.sroa.014.3.i.i.i, %.loopexit83.i.i.i.i ], [ %.sroa.014.2.i.i.i, %bb.my ], [ %.sroa.014.3.i.i.i, %bb.ft ], [ %.sroa.014.3.i.i.i, %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode16ReadContextModesNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB12_B12_ECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i ], [ %.sroa.014.3.i.i.i, %bb.ix ], [ %.sroa.014.3.i.i.i, %bb.ev ], [ %.sroa.014.3.i.i.i, %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode29CopyUncompressedBlockToOutputNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB1f_B1f_ECs7XnEB7DeNXr_7sslocal.exit.i.i.i ], [ %.sroa.014.3.i.i.i, %bb.ma ], [ %.sroa.014.3.i.i.i, %bb.ei ], [ %.sroa.014.3.i.i.i, %._crit_edge.i.i.i.i65 ], [ %.sroa.014.3.i.i.i, %bb.jb ], [ %.sroa.014.3.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2D0wXkiOfwW_12alloc_stdlib10heap_alloc7WrapBoxmEECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i ], [ %.sroa.014.3.i.i.i, %bb.jv ], [ %.sroa.014.3.i.i.i, %bb.ju ], [ %.sroa.014.3.i.i.i, %bb.jt ], [ %.sroa.014.3.i.i.i, %bb.jr ], [ %.sroa.014.3.i.i.i, %bb.jq ], [ %.sroa.014.3.i.i.i, %bb.jp ], [ %i.bhg, %bb.ni ], [ %.sroa.014.3.i.i.i, %bb.jx ], [ %.sroa.014.3.i.i.i, %bb.kf ], [ %.sroa.014.3.i.i.i, %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode28SafeReadBlockLengthFromIndexNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocECs7XnEB7DeNXr_7sslocal.exit.i.i.i ], [ %.sroa.014.3.i.i.i, %bb.ga ], [ %.sroa.014.3.i.i.i, %bb.me ], [ %.sroa.014.3.i.i.i, %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode22HuffmanTreeGroupDecodeNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB18_B18_ECs7XnEB7DeNXr_7sslocal.exit.thread55.i.i.i ], [ %.sroa.014.3.i.i.i, %bb.fq ], [ %.sroa.014.3.i.i.i, %.loopexit.i105.i.i.i ], [ %.sroa.014.3.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2D0wXkiOfwW_12alloc_stdlib10heap_alloc7WrapBoxhEECs7XnEB7DeNXr_7sslocal.exit.i.i.i ], [ %.sroa.014.3.i.i.i, %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode21DecodeMetaBlockLengthNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB17_B17_ECs7XnEB7DeNXr_7sslocal.exit.thread.sink.split.i.i.i ], [ %.sroa.014.3.i.i.i, %.lr.ph.i174.preheader.i.i.i.i ], [ %.sroa.014.3.i.i.i, %.loopexit91.i.i.i.i ], [ %.sroa.014.3.i.i.i, %bb.ey ], [ %.sroa.014.3.i.i.i, %.lr.ph.i57.preheader.i.i.i.i ], [ %.sroa.014.3.i.i.i, %.lr.ph.i47.preheader.split.i.i.i.i ], [ %.sroa.014.3.i.i.i, %bb.dx ], [ %.sroa.014.3.i.i.i, %.lr.ph.i37.preheader.i.i.i.i ], [ %.sroa.014.3.i.i.i, %.lr.ph.i27.preheader.split.i.i.i.i ], [ %.sroa.014.3.i.i.i, %bb.do ], [ %.sroa.014.3.i.i.i, %.lr.ph.i11.split.i.i ], [ %.sroa.014.3.i.i.i, %bb.ff ], [ %.sroa.014.3.i.i.i, %bb.lr ], [ %.sroa.014.3.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2D0wXkiOfwW_12alloc_stdlib10heap_alloc7WrapBoxNtNtCsl4v216RJbSI_19brotli_decompressor7huffman11HuffmanCodeEECs7XnEB7DeNXr_7sslocal.exit181.i.i.i.i ], [ %.sroa.014.3.i.i.i, %bb.jy ], [ %.sroa.014.3.i.i.i, %bb.je ], [ %.sroa.014.3.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2D0wXkiOfwW_12alloc_stdlib10heap_alloc7WrapBoxhEECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i ], [ %.sroa.014.3.i.i.i, %.loopexit211.i.i.i.i ], [ %.sroa.014.3.i.i.i, %bb.hf ], [ %.sroa.014.3.i.i.i, %bb.he ], [ %.sroa.014.3.i.i.i, %bb.gv ], [ %.sroa.014.3.i.i.i, %bb.gh ], [ %.sroa.014.3.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2D0wXkiOfwW_12alloc_stdlib10heap_alloc7WrapBoxNtNtCsl4v216RJbSI_19brotli_decompressor7huffman11HuffmanCodeEECs7XnEB7DeNXr_7sslocal.exit157.i.i.i.i ], [ %.sroa.014.3.i.i.i, %.lr.ph.i147.i.i.i.i ], [ %.sroa.014.3.i.i.i, %.lr.ph.i.i.i.i.i ]
  %.sroa.011.2.i.i.i.be = phi i64 [ %.sroa.011.3.i.i.i, %.lr.ph.i.preheader.split.i.i.i.i ], [ %.sroa.011.3.i.i.i, %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode22PrepareLiteralDecodingNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB18_B18_ECs7XnEB7DeNXr_7sslocal.exit.i.i ], [ %.sroa.011.3.i.i.i, %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode22HuffmanTreeGroupDecodeNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB18_B18_ECs7XnEB7DeNXr_7sslocal.exit.thread.i.i.i ], [ %.sroa.011.3.i.i.i, %bb.ki ], [ %.sroa.011.3.i.i.i, %bb.kr ], [ %.sroa.011.3.i.i.i, %bb.hp ], [ %.sroa.011.3.i.i.i, %bb.ir ], [ %.sroa.011.3.i.i.i, %bb.is ], [ %.sroa.011.3.i.i.i, %bb.dl ], [ %.sroa.011.3.i.i.i, %bb.ho ], [ %.sroa.011.3.i.i.i, %bb.hn ], [ %.sroa.011.3.i.i.i, %.loopexit83.i.i.i.i ], [ %.sroa.011.2.i.i.i, %bb.my ], [ %.sroa.011.3.i.i.i, %bb.ft ], [ %.sroa.011.3.i.i.i, %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode16ReadContextModesNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB12_B12_ECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i ], [ %.sroa.011.3.i.i.i, %bb.ix ], [ %.sroa.011.3.i.i.i, %bb.ev ], [ %.sroa.011.3.i.i.i, %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode29CopyUncompressedBlockToOutputNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB1f_B1f_ECs7XnEB7DeNXr_7sslocal.exit.i.i.i ], [ %.sroa.011.3.i.i.i, %bb.ma ], [ %.sroa.011.3.i.i.i, %bb.ei ], [ %.sroa.011.3.i.i.i, %._crit_edge.i.i.i.i65 ], [ %.sroa.011.3.i.i.i, %bb.jb ], [ %.sroa.011.3.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2D0wXkiOfwW_12alloc_stdlib10heap_alloc7WrapBoxmEECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i ], [ %.sroa.011.3.i.i.i, %bb.jv ], [ %.sroa.011.3.i.i.i, %bb.ju ], [ %.sroa.011.3.i.i.i, %bb.jt ], [ %.sroa.011.3.i.i.i, %bb.jr ], [ %.sroa.011.3.i.i.i, %bb.jq ], [ %.sroa.011.3.i.i.i, %bb.jp ], [ %i.bhh, %bb.ni ], [ %.sroa.011.3.i.i.i, %bb.jx ], [ %.sroa.011.3.i.i.i, %bb.kf ], [ %.sroa.011.3.i.i.i, %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode28SafeReadBlockLengthFromIndexNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocECs7XnEB7DeNXr_7sslocal.exit.i.i.i ], [ %.sroa.011.3.i.i.i, %bb.ga ], [ %.sroa.011.3.i.i.i, %bb.me ], [ %.sroa.011.3.i.i.i, %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode22HuffmanTreeGroupDecodeNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB18_B18_ECs7XnEB7DeNXr_7sslocal.exit.thread55.i.i.i ], [ %.sroa.011.3.i.i.i, %bb.fq ], [ %.sroa.011.3.i.i.i, %.loopexit.i105.i.i.i ], [ %.sroa.011.3.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2D0wXkiOfwW_12alloc_stdlib10heap_alloc7WrapBoxhEECs7XnEB7DeNXr_7sslocal.exit.i.i.i ], [ %.sroa.011.3.i.i.i, %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode21DecodeMetaBlockLengthNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB17_B17_ECs7XnEB7DeNXr_7sslocal.exit.thread.sink.split.i.i.i ], [ %.sroa.011.3.i.i.i, %.lr.ph.i174.preheader.i.i.i.i ], [ %.sroa.011.3.i.i.i, %.loopexit91.i.i.i.i ], [ %.sroa.011.3.i.i.i, %bb.ey ], [ %.sroa.011.3.i.i.i, %.lr.ph.i57.preheader.i.i.i.i ], [ %.sroa.011.3.i.i.i, %.lr.ph.i47.preheader.split.i.i.i.i ], [ %.sroa.011.3.i.i.i, %bb.dx ], [ %.sroa.011.3.i.i.i, %.lr.ph.i37.preheader.i.i.i.i ], [ %.sroa.011.3.i.i.i, %.lr.ph.i27.preheader.split.i.i.i.i ], [ %.sroa.011.3.i.i.i, %bb.do ], [ %.sroa.011.3.i.i.i, %.lr.ph.i11.split.i.i ], [ %.sroa.011.3.i.i.i, %bb.ff ], [ %.sroa.011.3.i.i.i, %bb.lr ], [ %.sroa.011.3.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2D0wXkiOfwW_12alloc_stdlib10heap_alloc7WrapBoxNtNtCsl4v216RJbSI_19brotli_decompressor7huffman11HuffmanCodeEECs7XnEB7DeNXr_7sslocal.exit181.i.i.i.i ], [ %.sroa.011.3.i.i.i, %bb.jy ], [ %.sroa.011.3.i.i.i, %bb.je ], [ %.sroa.011.3.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2D0wXkiOfwW_12alloc_stdlib10heap_alloc7WrapBoxhEECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i ], [ %.sroa.011.3.i.i.i, %.loopexit211.i.i.i.i ], [ %.sroa.011.3.i.i.i, %bb.hf ], [ %.sroa.011.3.i.i.i, %bb.he ], [ %.sroa.011.3.i.i.i, %bb.gv ], [ %.sroa.011.3.i.i.i, %bb.gh ], [ %.sroa.011.3.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2D0wXkiOfwW_12alloc_stdlib10heap_alloc7WrapBoxNtNtCsl4v216RJbSI_19brotli_decompressor7huffman11HuffmanCodeEECs7XnEB7DeNXr_7sslocal.exit157.i.i.i.i ], [ %.sroa.011.3.i.i.i, %.lr.ph.i147.i.i.i.i ], [ %.sroa.011.3.i.i.i, %.lr.ph.i.i.i.i.i ]
  %.sroa.06.1.i.i.i.be = phi i64 [ %.sroa.06.1.i.i.i, %.lr.ph.i.preheader.split.i.i.i.i ], [ %.sroa.06.1.i.i.i, %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode22PrepareLiteralDecodingNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB18_B18_ECs7XnEB7DeNXr_7sslocal.exit.i.i ], [ %.sroa.06.1.i.i.i, %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode22HuffmanTreeGroupDecodeNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB18_B18_ECs7XnEB7DeNXr_7sslocal.exit.thread.i.i.i ], [ %.sroa.06.1.i.i.i, %bb.ki ], [ %.sroa.06.1.i.i.i, %bb.kr ], [ %.sroa.06.1.i.i.i, %bb.hp ], [ %.sroa.06.1.i.i.i, %bb.ir ], [ %.sroa.06.1.i.i.i, %bb.is ], [ %.sroa.06.1.i.i.i, %bb.dl ], [ %.sroa.06.1.i.i.i, %bb.ho ], [ %.sroa.06.1.i.i.i, %bb.hn ], [ %.sroa.06.1.i.i.i, %.loopexit83.i.i.i.i ], [ %.sroa.06.11.i.i.i, %bb.my ], [ %.sroa.06.1.i.i.i, %bb.ft ], [ %.sroa.06.1.i.i.i, %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode16ReadContextModesNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB12_B12_ECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i ], [ %.sroa.06.1.i.i.i, %bb.ix ], [ %.sroa.06.1.i.i.i, %bb.ev ], [ %.sroa.06.3.i.i.i, %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode29CopyUncompressedBlockToOutputNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB1f_B1f_ECs7XnEB7DeNXr_7sslocal.exit.i.i.i ], [ %.sroa.06.1.i.i.i, %bb.ma ], [ %.sroa.06.1.i.i.i, %bb.ei ], [ %.sroa.06.1.i.i.i, %._crit_edge.i.i.i.i65 ], [ %.sroa.06.1.i.i.i, %bb.jb ], [ %.sroa.06.1.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2D0wXkiOfwW_12alloc_stdlib10heap_alloc7WrapBoxmEECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i ], [ %i.aiw, %bb.jv ], [ %i.aiw, %bb.ju ], [ %i.aiw, %bb.jt ], [ %i.aiw, %bb.jr ], [ %i.aiw, %bb.jq ], [ %i.aiw, %bb.jp ], [ %.sroa.06.11.i.i.i, %bb.ni ], [ %.sroa.06.1.i.i.i, %bb.jx ], [ %.sroa.06.1.i.i.i, %bb.kf ], [ %.sroa.06.1.i.i.i, %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode28SafeReadBlockLengthFromIndexNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocECs7XnEB7DeNXr_7sslocal.exit.i.i.i ], [ %i.aiw, %bb.ga ], [ %i.beb, %bb.me ], [ %.sroa.06.1.i.i.i, %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode22HuffmanTreeGroupDecodeNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB18_B18_ECs7XnEB7DeNXr_7sslocal.exit.thread55.i.i.i ], [ %.sroa.06.3.i.i.i, %bb.fq ], [ %.sroa.06.1.i.i.i, %.loopexit.i105.i.i.i ], [ %.sroa.06.1.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2D0wXkiOfwW_12alloc_stdlib10heap_alloc7WrapBoxhEECs7XnEB7DeNXr_7sslocal.exit.i.i.i ], [ %.sroa.06.1.i.i.i, %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode21DecodeMetaBlockLengthNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB17_B17_ECs7XnEB7DeNXr_7sslocal.exit.thread.sink.split.i.i.i ], [ %.sroa.06.1.i.i.i, %.lr.ph.i174.preheader.i.i.i.i ], [ %.sroa.06.1.i.i.i, %.loopexit91.i.i.i.i ], [ %i.aeu, %bb.ff ], [ %.sroa.06.1.i.i.i, %.lr.ph.i57.preheader.i.i.i.i ], [ %.sroa.06.1.i.i.i, %.lr.ph.i47.preheader.split.i.i.i.i ], [ %.sroa.06.1.i.i.i, %bb.dx ], [ %.sroa.06.1.i.i.i, %.lr.ph.i37.preheader.i.i.i.i ], [ %.sroa.06.1.i.i.i, %.lr.ph.i27.preheader.split.i.i.i.i ], [ %.sroa.06.1.i.i.i, %bb.do ], [ %.sroa.06.1.i.i.i, %.lr.ph.i11.split.i.i ], [ %.sroa.06.3.i.i.i, %bb.ey ], [ %.sroa.06.1.i.i.i, %bb.lr ], [ %.sroa.06.1.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2D0wXkiOfwW_12alloc_stdlib10heap_alloc7WrapBoxNtNtCsl4v216RJbSI_19brotli_decompressor7huffman11HuffmanCodeEECs7XnEB7DeNXr_7sslocal.exit181.i.i.i.i ], [ %.sroa.06.1.i.i.i, %bb.jy ], [ %.sroa.06.1.i.i.i, %bb.je ], [ %.sroa.06.1.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2D0wXkiOfwW_12alloc_stdlib10heap_alloc7WrapBoxhEECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i ], [ %.sroa.06.1.i.i.i, %.loopexit211.i.i.i.i ], [ %.sroa.06.1.i.i.i, %bb.hf ], [ %.sroa.06.1.i.i.i, %bb.he ], [ %.sroa.06.1.i.i.i, %bb.gv ], [ %.sroa.06.1.i.i.i, %bb.gh ], [ %.sroa.06.1.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2D0wXkiOfwW_12alloc_stdlib10heap_alloc7WrapBoxNtNtCsl4v216RJbSI_19brotli_decompressor7huffman11HuffmanCodeEECs7XnEB7DeNXr_7sslocal.exit157.i.i.i.i ], [ %.sroa.06.1.i.i.i, %.lr.ph.i147.i.i.i.i ], [ %.sroa.06.1.i.i.i, %.lr.ph.i.i.i.i.i ]
  %.sroa.21.1.i.i.i.i.be = phi i64 [ %.sroa.21.1.i.i.i.i, %.lr.ph.i.preheader.split.i.i.i.i ], [ %.sroa.21.1.i.i.i.i, %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode22PrepareLiteralDecodingNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB18_B18_ECs7XnEB7DeNXr_7sslocal.exit.i.i ], [ %.sroa.21.1.i.i.i.i, %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode22HuffmanTreeGroupDecodeNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB18_B18_ECs7XnEB7DeNXr_7sslocal.exit.thread.i.i.i ], [ %.sroa.21.1.i.i.i.i, %bb.ki ], [ %.sroa.21.1.i.i.i.i, %bb.kr ], [ %.sroa.21.1.i.i.i.i, %bb.hp ], [ %.sroa.21.1.i.i.i.i, %bb.ir ], [ %.sroa.21.1.i.i.i.i, %bb.is ], [ %.sroa.21.1.i.i.i.i, %bb.dl ], [ %.sroa.21.1.i.i.i.i, %bb.ho ], [ %.sroa.21.1.i.i.i.i, %bb.hn ], [ %.sroa.21.1.i.i.i.i, %.loopexit83.i.i.i.i ], [ 4096, %bb.my ], [ %.sroa.21.1.i.i.i.i, %bb.ft ], [ %.sroa.21.1.i.i.i.i, %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode16ReadContextModesNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB12_B12_ECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i ], [ %.sroa.21.1.i.i.i.i, %bb.ix ], [ %.sroa.21.1.i.i.i.i, %bb.ev ], [ %.sroa.21.1.i.i.i.i, %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode29CopyUncompressedBlockToOutputNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB1f_B1f_ECs7XnEB7DeNXr_7sslocal.exit.i.i.i ], [ %.sroa.21.1.i.i.i.i, %bb.ma ], [ %.sroa.21.1.i.i.i.i, %bb.ei ], [ %.sroa.21.1.i.i.i.i, %._crit_edge.i.i.i.i65 ], [ %.sroa.21.1.i.i.i.i, %bb.jb ], [ %.sroa.21.1.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2D0wXkiOfwW_12alloc_stdlib10heap_alloc7WrapBoxmEECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i ], [ %.sroa.21.1.i.i.i.i, %bb.jv ], [ %.sroa.21.1.i.i.i.i, %bb.ju ], [ %.sroa.21.1.i.i.i.i, %bb.jt ], [ %.sroa.21.1.i.i.i.i, %bb.jr ], [ %.sroa.21.1.i.i.i.i, %bb.jq ], [ %.sroa.21.1.i.i.i.i, %bb.jp ], [ %.sroa.21.1.i.i.i.i, %bb.ni ], [ %.sroa.21.1.i.i.i.i, %bb.jx ], [ %.sroa.21.1.i.i.i.i, %bb.kf ], [ %.sroa.21.1.i.i.i.i, %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode28SafeReadBlockLengthFromIndexNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocECs7XnEB7DeNXr_7sslocal.exit.i.i.i ], [ %.sroa.21.1.i.i.i.i, %bb.ga ], [ %.sroa.21.1.i.i.i.i, %bb.me ], [ %.sroa.21.1.i.i.i.i, %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode22HuffmanTreeGroupDecodeNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB18_B18_ECs7XnEB7DeNXr_7sslocal.exit.thread55.i.i.i ], [ %.sroa.21.1.i.i.i.i, %bb.fq ], [ %.sroa.21.1.i.i.i.i, %.loopexit.i105.i.i.i ], [ %.sroa.21.1.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2D0wXkiOfwW_12alloc_stdlib10heap_alloc7WrapBoxhEECs7XnEB7DeNXr_7sslocal.exit.i.i.i ], [ %.sroa.21.1.i.i.i.i, %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode21DecodeMetaBlockLengthNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB17_B17_ECs7XnEB7DeNXr_7sslocal.exit.thread.sink.split.i.i.i ], [ %.sroa.21.1.i.i.i.i, %.lr.ph.i174.preheader.i.i.i.i ], [ %.sroa.21.1.i.i.i.i, %.loopexit91.i.i.i.i ], [ %.sroa.21.1.i.i.i.i, %bb.ey ], [ %.sroa.21.1.i.i.i.i, %.lr.ph.i57.preheader.i.i.i.i ], [ %.sroa.21.1.i.i.i.i, %.lr.ph.i47.preheader.split.i.i.i.i ], [ %.sroa.21.1.i.i.i.i, %bb.dx ], [ %.sroa.21.1.i.i.i.i, %.lr.ph.i37.preheader.i.i.i.i ], [ %.sroa.21.1.i.i.i.i, %.lr.ph.i27.preheader.split.i.i.i.i ], [ %.sroa.21.1.i.i.i.i, %bb.do ], [ %.sroa.21.1.i.i.i.i, %.lr.ph.i11.split.i.i ], [ %.sroa.21.1.i.i.i.i, %bb.ff ], [ %.sroa.21.1.i.i.i.i, %bb.lr ], [ %.sroa.21.1.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2D0wXkiOfwW_12alloc_stdlib10heap_alloc7WrapBoxNtNtCsl4v216RJbSI_19brotli_decompressor7huffman11HuffmanCodeEECs7XnEB7DeNXr_7sslocal.exit181.i.i.i.i ], [ %.sroa.21.1.i.i.i.i, %bb.jy ], [ %.sroa.21.1.i.i.i.i, %bb.je ], [ %.sroa.21.1.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2D0wXkiOfwW_12alloc_stdlib10heap_alloc7WrapBoxhEECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i ], [ %.sroa.21.1.i.i.i.i, %.loopexit211.i.i.i.i ], [ %.sroa.21.1.i.i.i.i, %bb.hf ], [ %.sroa.21.1.i.i.i.i, %bb.he ], [ %.sroa.21.1.i.i.i.i, %bb.gv ], [ %.sroa.21.1.i.i.i.i, %bb.gh ], [ %.sroa.21.1.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2D0wXkiOfwW_12alloc_stdlib10heap_alloc7WrapBoxNtNtCsl4v216RJbSI_19brotli_decompressor7huffman11HuffmanCodeEECs7XnEB7DeNXr_7sslocal.exit157.i.i.i.i ], [ %.sroa.21.1.i.i.i.i, %.lr.ph.i147.i.i.i.i ], [ %.sroa.21.1.i.i.i.i, %.lr.ph.i.i.i.i.i ]
  %.sroa.029.1.i.i.i.i.be = phi ptr [ %.sroa.029.1.i.i.i.i, %.lr.ph.i.preheader.split.i.i.i.i ], [ %.sroa.029.1.i.i.i.i, %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode22PrepareLiteralDecodingNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB18_B18_ECs7XnEB7DeNXr_7sslocal.exit.i.i ], [ %.sroa.029.1.i.i.i.i, %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode22HuffmanTreeGroupDecodeNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB18_B18_ECs7XnEB7DeNXr_7sslocal.exit.thread.i.i.i ], [ %.sroa.029.1.i.i.i.i, %bb.ki ], [ %.sroa.029.1.i.i.i.i, %bb.kr ], [ %.sroa.029.1.i.i.i.i, %bb.hp ], [ %.sroa.029.1.i.i.i.i, %bb.ir ], [ %.sroa.029.1.i.i.i.i, %bb.is ], [ %.sroa.029.1.i.i.i.i, %bb.dl ], [ %.sroa.029.1.i.i.i.i, %bb.ho ], [ %.sroa.029.1.i.i.i.i, %bb.hn ], [ %.sroa.029.1.i.i.i.i, %.loopexit83.i.i.i.i ], [ %i.t, %bb.my ], [ %.sroa.029.1.i.i.i.i, %bb.ft ], [ %.sroa.029.1.i.i.i.i, %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode16ReadContextModesNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB12_B12_ECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i ], [ %.sroa.029.1.i.i.i.i, %bb.ix ], [ %.sroa.029.1.i.i.i.i, %bb.ev ], [ %.sroa.029.1.i.i.i.i, %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode29CopyUncompressedBlockToOutputNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB1f_B1f_ECs7XnEB7DeNXr_7sslocal.exit.i.i.i ], [ %.sroa.029.1.i.i.i.i, %bb.ma ], [ %.sroa.029.1.i.i.i.i, %bb.ei ], [ %.sroa.029.1.i.i.i.i, %._crit_edge.i.i.i.i65 ], [ %.sroa.029.1.i.i.i.i, %bb.jb ], [ %.sroa.029.1.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2D0wXkiOfwW_12alloc_stdlib10heap_alloc7WrapBoxmEECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i ], [ %.sroa.029.1.i.i.i.i, %bb.jv ], [ %.sroa.029.1.i.i.i.i, %bb.ju ], [ %.sroa.029.1.i.i.i.i, %bb.jt ], [ %.sroa.029.1.i.i.i.i, %bb.jr ], [ %.sroa.029.1.i.i.i.i, %bb.jq ], [ %.sroa.029.1.i.i.i.i, %bb.jp ], [ %.sroa.029.1.i.i.i.i, %bb.ni ], [ %.sroa.029.1.i.i.i.i, %bb.jx ], [ %.sroa.029.1.i.i.i.i, %bb.kf ], [ %.sroa.029.1.i.i.i.i, %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode28SafeReadBlockLengthFromIndexNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocECs7XnEB7DeNXr_7sslocal.exit.i.i.i ], [ %.sroa.029.1.i.i.i.i, %bb.ga ], [ %.sroa.029.1.i.i.i.i, %bb.me ], [ %.sroa.029.1.i.i.i.i, %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode22HuffmanTreeGroupDecodeNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB18_B18_ECs7XnEB7DeNXr_7sslocal.exit.thread55.i.i.i ], [ %.sroa.029.1.i.i.i.i, %bb.fq ], [ %.sroa.029.1.i.i.i.i, %.loopexit.i105.i.i.i ], [ %.sroa.029.1.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2D0wXkiOfwW_12alloc_stdlib10heap_alloc7WrapBoxhEECs7XnEB7DeNXr_7sslocal.exit.i.i.i ], [ %.sroa.029.1.i.i.i.i, %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode21DecodeMetaBlockLengthNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB17_B17_ECs7XnEB7DeNXr_7sslocal.exit.thread.sink.split.i.i.i ], [ %.sroa.029.1.i.i.i.i, %.lr.ph.i174.preheader.i.i.i.i ], [ %.sroa.029.1.i.i.i.i, %.loopexit91.i.i.i.i ], [ %.sroa.029.1.i.i.i.i, %bb.ey ], [ %.sroa.029.1.i.i.i.i, %.lr.ph.i57.preheader.i.i.i.i ], [ %.sroa.029.1.i.i.i.i, %.lr.ph.i47.preheader.split.i.i.i.i ], [ %.sroa.029.1.i.i.i.i, %bb.dx ], [ %.sroa.029.1.i.i.i.i, %.lr.ph.i37.preheader.i.i.i.i ], [ %.sroa.029.1.i.i.i.i, %.lr.ph.i27.preheader.split.i.i.i.i ], [ %.sroa.029.1.i.i.i.i, %bb.do ], [ %.sroa.029.1.i.i.i.i, %.lr.ph.i11.split.i.i ], [ %.sroa.029.1.i.i.i.i, %bb.ff ], [ %.sroa.029.1.i.i.i.i, %bb.lr ], [ %.sroa.029.1.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2D0wXkiOfwW_12alloc_stdlib10heap_alloc7WrapBoxNtNtCsl4v216RJbSI_19brotli_decompressor7huffman11HuffmanCodeEECs7XnEB7DeNXr_7sslocal.exit181.i.i.i.i ], [ %.sroa.029.1.i.i.i.i, %bb.jy ], [ %.sroa.029.1.i.i.i.i, %bb.je ], [ %.sroa.029.1.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2D0wXkiOfwW_12alloc_stdlib10heap_alloc7WrapBoxhEECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i ], [ %.sroa.029.1.i.i.i.i, %.loopexit211.i.i.i.i ], [ %.sroa.029.1.i.i.i.i, %bb.hf ], [ %.sroa.029.1.i.i.i.i, %bb.he ], [ %.sroa.029.1.i.i.i.i, %bb.gv ], [ %.sroa.029.1.i.i.i.i, %bb.gh ], [ %.sroa.029.1.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2D0wXkiOfwW_12alloc_stdlib10heap_alloc7WrapBoxNtNtCsl4v216RJbSI_19brotli_decompressor7huffman11HuffmanCodeEECs7XnEB7DeNXr_7sslocal.exit157.i.i.i.i ], [ %.sroa.029.1.i.i.i.i, %.lr.ph.i147.i.i.i.i ], [ %.sroa.029.1.i.i.i.i, %.lr.ph.i.i.i.i.i ]
  %.sroa.09.1.i.i.i.i.be = phi i32 [ 2, %.lr.ph.i.preheader.split.i.i.i.i ], [ 1, %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode22PrepareLiteralDecodingNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB18_B18_ECs7XnEB7DeNXr_7sslocal.exit.i.i ], [ 1, %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode22HuffmanTreeGroupDecodeNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB18_B18_ECs7XnEB7DeNXr_7sslocal.exit.thread.i.i.i ], [ 2, %bb.ki ], [ 1, %bb.kr ], [ 1, %bb.hp ], [ 1, %bb.ir ], [ 1, %bb.is ], [ 2, %bb.dl ], [ 1, %bb.ho ], [ -15, %bb.hn ], [ -3, %.loopexit83.i.i.i.i ], [ 1, %bb.my ], [ -9, %bb.ft ], [ 2, %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode16ReadContextModesNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB12_B12_ECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i ], [ %i.aue, %bb.ix ], [ %i.adr, %bb.ev ], [ 1, %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode29CopyUncompressedBlockToOutputNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB1f_B1f_ECs7XnEB7DeNXr_7sslocal.exit.i.i.i ], [ -9, %bb.ma ], [ 2, %bb.ei ], [ 1, %._crit_edge.i.i.i.i65 ], [ 1, %bb.jb ], [ %.sroa.0.1.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2D0wXkiOfwW_12alloc_stdlib10heap_alloc7WrapBoxmEECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i ], [ 1, %bb.jv ], [ 1, %bb.ju ], [ 1, %bb.jt ], [ 1, %bb.jr ], [ 1, %bb.jq ], [ 1, %bb.jp ], [ 1, %bb.ni ], [ 1, %bb.jx ], [ 1, %bb.kf ], [ 2, %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode28SafeReadBlockLengthFromIndexNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocECs7XnEB7DeNXr_7sslocal.exit.i.i.i ], [ 3, %bb.ga ], [ 3, %bb.me ], [ -31, %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode22HuffmanTreeGroupDecodeNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB18_B18_ECs7XnEB7DeNXr_7sslocal.exit.thread55.i.i.i ], [ 2, %bb.fq ], [ -1, %.loopexit.i105.i.i.i ], [ -27, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2D0wXkiOfwW_12alloc_stdlib10heap_alloc7WrapBoxhEECs7XnEB7DeNXr_7sslocal.exit.i.i.i ], [ 2, %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode21DecodeMetaBlockLengthNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB17_B17_ECs7XnEB7DeNXr_7sslocal.exit.thread.sink.split.i.i.i ], [ 2, %.lr.ph.i174.preheader.i.i.i.i ], [ -2, %.loopexit91.i.i.i.i ], [ 3, %bb.ff ], [ 2, %.lr.ph.i57.preheader.i.i.i.i ], [ 2, %.lr.ph.i47.preheader.split.i.i.i.i ], [ 2, %bb.dx ], [ 2, %.lr.ph.i37.preheader.i.i.i.i ], [ 2, %.lr.ph.i27.preheader.split.i.i.i.i ], [ 2, %bb.do ], [ 2, %.lr.ph.i11.split.i.i ], [ -9, %bb.ey ], [ %i.awu, %bb.jy ], [ -15, %bb.je ], [ -21, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2D0wXkiOfwW_12alloc_stdlib10heap_alloc7WrapBoxhEECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i ], [ -13, %.loopexit211.i.i.i.i ], [ -13, %bb.hf ], [ -13, %bb.he ], [ 2, %bb.gv ], [ %i.akj, %bb.gh ], [ %i.ajw, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2D0wXkiOfwW_12alloc_stdlib10heap_alloc7WrapBoxNtNtCsl4v216RJbSI_19brotli_decompressor7huffman11HuffmanCodeEECs7XnEB7DeNXr_7sslocal.exit157.i.i.i.i ], [ 2, %.lr.ph.i147.i.i.i.i ], [ 2, %.lr.ph.i.i.i.i.i ], [ %i.axo, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2D0wXkiOfwW_12alloc_stdlib10heap_alloc7WrapBoxNtNtCsl4v216RJbSI_19brotli_decompressor7huffman11HuffmanCodeEECs7XnEB7DeNXr_7sslocal.exit181.i.i.i.i ], [ %i.bcb, %bb.lr ]
  br label %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit.i.i.i.i

bb.nj:                                            ; preds = %bb.mj
  %i.bhi = load i32, ptr %.sroa.30.0..sroa_idx.i.i.i.i, align 8, !alias.scope !39590, !noalias !39569, !noundef !145 ; 2 uses
  %i.bhj = sub i32 64, %i.bhi                     ; 3 uses
  %i.bhk = lshr i32 %i.bhj, 3                     ; 2 uses
  %i.bhl = and i32 %i.bhj, -8                     ; 2 uses
  %i.bhm = load i32, ptr %.sroa.33.0..sroa_idx.i.i.i.i, align 8, !alias.scope !39590, !noalias !39569, !noundef !145
  %i.bhn = add i32 %i.bhk, %i.bhm                 ; 2 uses
  store i32 %i.bhn, ptr %.sroa.33.0..sroa_idx.i.i.i.i, align 8, !alias.scope !39590, !noalias !39569
  %i.bho = load i32, ptr %.sroa.32.0..sroa_idx.i.i.i.i, align 4, !alias.scope !39590, !noalias !39569, !noundef !145
  %i.bhp = sub i32 %i.bho, %i.bhk                 ; 2 uses
  store i32 %i.bhp, ptr %.sroa.32.0..sroa_idx.i.i.i.i, align 4, !alias.scope !39590, !noalias !39569
  %i.bhq = icmp eq i32 %i.bhl, 64
  %i.bhr = load i64, ptr %i.ni, align 8, !alias.scope !39590, !noalias !39569
  %i.bhs = and i32 %i.bhj, 56
  %i.bht = zext nneg i32 %i.bhs to i64
  %i.bhu = shl i64 %i.bhr, %i.bht
  %storemerge.i.i.i.i = select i1 %i.bhq, i64 0, i64 %i.bhu
  store i64 %storemerge.i.i.i.i, ptr %i.ni, align 8, !alias.scope !39590, !noalias !39569
  %i.bhv = add i32 %i.bhl, %i.bhi
  store i32 %i.bhv, ptr %.sroa.30.0..sroa_idx.i.i.i.i, align 8, !alias.scope !39590, !noalias !39569
  %i.bhw = zext i32 %i.bhn to i64
  %i.bhx = zext i32 %i.bhp to i64
  br label %.loopexit217.i.i.i.i

bb.nk:                                            ; preds = %bb.mj
  store i32 0, ptr %i.nb, align 4, !alias.scope !39590, !noalias !39569
  br label %.loopexit217.i.i.i.i

.thread203.i.i.i.i:                               ; preds = %bb.mz, %bb.mw, %bb.ms
  %.sroa.014.9.i.i.i = phi i64 [ %i.bgl, %bb.mw ], [ %i.bfw, %bb.ms ], [ %.sroa.014.2.i.i.i, %bb.mz ]
  store i32 2, ptr %.sroa.104.0..sroa_idx.i.i.i.i, align 8, !alias.scope !39590, !noalias !39569
  br label %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode22BrotliDecompressStreamNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB18_B18_ECs7XnEB7DeNXr_7sslocal.exit.i.i.i

_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode22BrotliDecompressStreamNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB18_B18_ECs7XnEB7DeNXr_7sslocal.exit.i.i.i: ; preds = %.thread203.i.i.i.i, %.loopexit217.i.i.i.i, %.sink.split.i.i.i.i
  %.sroa.017.14.i.i.i = phi i64 [ %.sroa.017.12.i.i.i, %.thread203.i.i.i.i ], [ %.sroa.017.9.i.i.i, %.sink.split.i.i.i.i ], [ %.sroa.017.2.i.i.i, %.loopexit217.i.i.i.i ] ; 5 uses
  %.sroa.014.10.i.i.i = phi i64 [ %.sroa.014.9.i.i.i, %.thread203.i.i.i.i ], [ %.sroa.014.6.i.i.i, %.sink.split.i.i.i.i ], [ %.sroa.014.8.i.i.i, %.loopexit217.i.i.i.i ]
  %.sroa.011.9.i.i.i = phi i64 [ 0, %.thread203.i.i.i.i ], [ %.sroa.011.6.i.i.i, %.sink.split.i.i.i.i ], [ %.sroa.011.7.i.i.i, %.loopexit217.i.i.i.i ]
  %.sroa.06.13.i.i.i = phi i64 [ %.sroa.06.11.i.i.i, %.thread203.i.i.i.i ], [ %.sroa.06.8.i.i.i, %.sink.split.i.i.i.i ], [ %.sroa.06.1.i.i.i, %.loopexit217.i.i.i.i ]
  %.sroa.0.2.i.i.i.i = phi i32 [ 2, %.thread203.i.i.i.i ], [ %.sroa.0.0.ph.i.i.i.i, %.sink.split.i.i.i.i ], [ %spec.select.i.i.i.i, %.loopexit217.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !39710
  %i.bhy = icmp eq i64 %.sroa.017.14.i.i.i, 0
  br i1 %i.bhy, label %.outer.backedge, label %.preheader.split.split.i.i.i

.preheader.split.split.i.i.i:                     ; preds = %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode22BrotliDecompressStreamNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB18_B18_ECs7XnEB7DeNXr_7sslocal.exit.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !39760)
  call void @llvm.experimental.noalias.scope.decl(metadata !39761)
  %i.bhz = load i64, ptr %i.md, align 8, !alias.scope !39762, !noalias !39763, !noundef !145 ; 3 uses
  %i.bia = load i64, ptr %i.ah, align 8, !range !147, !alias.scope !39762, !noalias !39763, !noundef !145
  %i.bib = sub i64 %i.bia, %i.bhz
  %i.bic = icmp ugt i64 %.sroa.017.14.i.i.i, %i.bib
  br i1 %i.bic, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCs7XnEB7DeNXr_7sslocal.exit.thread.i.i.i.i.i.i, label %_RNvXNtCsl4v216RJbSI_19brotli_decompressor11io_wrappersINtB2_15IoWriterWrapperINtNtCsgCecv3eZDcN_5alloc3vec3VechEEINtB2_11CustomWriteNtNtNtCsf3Ta7LF998c_4core2io5error5ErrorE5writeCs7XnEB7DeNXr_7sslocal.exit.i.i.i, !prof !154

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCs7XnEB7DeNXr_7sslocal.exit.thread.i.i.i.i.i.i: ; preds = %.preheader.split.split.i.i.i
  call fastcc void @_RINvNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs7XnEB7DeNXr_7sslocal(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ah, i64 noundef %i.bhz, i64 noundef range(i64 0, -9223372036854775808) %.sroa.017.14.i.i.i, i64 noundef 1, i64 noundef 1) #52, !noalias !39764
  %i.bid = load i64, ptr %i.md, align 8, !alias.scope !39765, !noalias !39763, !noundef !145
  br label %_RNvXNtCsl4v216RJbSI_19brotli_decompressor11io_wrappersINtB2_15IoWriterWrapperINtNtCsgCecv3eZDcN_5alloc3vec3VechEEINtB2_11CustomWriteNtNtNtCsf3Ta7LF998c_4core2io5error5ErrorE5writeCs7XnEB7DeNXr_7sslocal.exit.i.i.i

_RNvXNtCsl4v216RJbSI_19brotli_decompressor11io_wrappersINtB2_15IoWriterWrapperINtNtCsgCecv3eZDcN_5alloc3vec3VechEEINtB2_11CustomWriteNtNtNtCsf3Ta7LF998c_4core2io5error5ErrorE5writeCs7XnEB7DeNXr_7sslocal.exit.i.i.i: ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCs7XnEB7DeNXr_7sslocal.exit.thread.i.i.i.i.i.i, %.preheader.split.split.i.i.i
  %.sink2315.i.i.i = phi i64 [ %i.bid, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCs7XnEB7DeNXr_7sslocal.exit.thread.i.i.i.i.i.i ], [ %i.bhz, %.preheader.split.split.i.i.i ] ; 3 uses
  %i.bie = icmp sgt i64 %.sink2315.i.i.i, -1
  call void @llvm.assume(i1 %i.bie)
  %i.bif = load ptr, ptr %i.mc, align 8, !alias.scope !39765, !noalias !39763, !nonnull !145, !noundef !145
  %i.big = getelementptr inbounds nuw i8, ptr %i.bif, i64 %.sink2315.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.big, ptr nonnull readonly align 1 %i.s, i64 range(i64 0, -9223372036854775808) %.sroa.017.14.i.i.i, i1 false), !noalias !39766
  %i.bih = add nuw i64 %.sink2315.i.i.i, %.sroa.017.14.i.i.i
  store i64 %i.bih, ptr %i.md, align 8, !alias.scope !39765, !noalias !39763
  br label %.outer.backedge

.outer.backedge:                                  ; preds = %_RNvXNtCsl4v216RJbSI_19brotli_decompressor11io_wrappersINtB2_15IoWriterWrapperINtNtCsgCecv3eZDcN_5alloc3vec3VechEEINtB2_11CustomWriteNtNtNtCsf3Ta7LF998c_4core2io5error5ErrorE5writeCs7XnEB7DeNXr_7sslocal.exit.i.i.i, %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode22BrotliDecompressStreamNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB18_B18_ECs7XnEB7DeNXr_7sslocal.exit.i.i.i
  %.sroa.06.0.i.i.i.ph.be = phi i64 [ %.sroa.06.13.i.i.i, %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode22BrotliDecompressStreamNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB18_B18_ECs7XnEB7DeNXr_7sslocal.exit.i.i.i ], [ 4096, %_RNvXNtCsl4v216RJbSI_19brotli_decompressor11io_wrappersINtB2_15IoWriterWrapperINtNtCsgCecv3eZDcN_5alloc3vec3VechEEINtB2_11CustomWriteNtNtNtCsf3Ta7LF998c_4core2io5error5ErrorE5writeCs7XnEB7DeNXr_7sslocal.exit.i.i.i ]
  br label %.outer

bb.nl:                                            ; preds = %bb.j
  %i.bii = getelementptr i8, ptr %1, i64 8
  %.val13 = load ptr, ptr %i.bii, align 8, !nonnull !145, !noundef !145
  %i.bij = getelementptr i8, ptr %1, i64 16
  %.val14 = load i64, ptr %i.bij, align 8, !noundef !145
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !39767
  store i64 0, ptr %i.k, align 8, !noalias !39767
  %i.bik = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 4 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.bik, align 8, !noalias !39767
  %i.bil = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 3 uses
  store i64 0, ptr %i.bil, align 8, !noalias !39767
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39768)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !39769
  %i.bim = tail call noundef i64 @_RNvMs5_Cs8ayS50oRKgP_9zstd_safeNtB5_4DCtx7in_size() #52, !noalias !39770 ; 6 uses
  %.not.i.i.i.i.i.i77 = icmp slt i64 %i.bim, 0
  br i1 %.not.i.i.i.i.i.i77, label %bb.np, label %bb.nm, !prof !261

bb.nm:                                            ; preds = %bb.nl
  %i.bin = icmp eq i64 %i.bim, 0                  ; 2 uses
  br i1 %i.bin, label %_RNvMNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreaderINtB2_9BufReaderINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorRShEE13with_capacityCs7XnEB7DeNXr_7sslocal.exit.i.i.i, label %bb.nn

bb.nn:                                            ; preds = %bb.nm
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52, !noalias !39771
  %i.bio = tail call noundef ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.bim, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !39771 ; 2 uses
  %i.bip = icmp eq ptr %i.bio, null
  br i1 %i.bip, label %bb.np, label %bb.no

bb.no:                                            ; preds = %bb.nn
  %i.biq = ptrtoint ptr %i.bio to i64
  br label %_RNvMNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreaderINtB2_9BufReaderINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorRShEE13with_capacityCs7XnEB7DeNXr_7sslocal.exit.i.i.i

bb.np:                                            ; preds = %bb.nn, %bb.nl
  %.sroa.4.0.ph.i.i.i.i.i81 = phi i64 [ 1, %bb.nn ], [ 0, %bb.nl ]
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i.i.i81, i64 %i.bim) #61, !noalias !39772
  unreachable

_RNvMNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreaderINtB2_9BufReaderINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorRShEE13with_capacityCs7XnEB7DeNXr_7sslocal.exit.i.i.i: ; preds = %bb.no, %bb.nm
  %.sroa.9.0.i.i.i.i.i = phi i64 [ %i.biq, %bb.no ], [ 1, %bb.nm ]
  %i.bir = inttoptr i64 %.sroa.9.0.i.i.i.i.i to ptr ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !39773
  call void @_RNvMs_NtNtCsiuBVzwTdaUB_4zstd6stream3rawNtB4_7Decoder15with_dictionary(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) inttoptr (i64 1 to ptr), i64 noundef 0) #52, !noalias !39773
  %i.bis = load i64, ptr %i.i, align 8, !range !156, !noalias !39773, !noundef !145 ; 2 uses
  %i.bit = icmp eq i64 %i.bis, 2
  %i.biu = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.biv = load ptr, ptr %i.biu, align 8, !noalias !39773, !noundef !145 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !39773
  br i1 %i.bit, label %bb.nq, label %bb.ns

bb.nq:                                            ; preds = %_RNvMNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreaderINtB2_9BufReaderINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorRShEE13with_capacityCs7XnEB7DeNXr_7sslocal.exit.i.i.i
  br i1 %i.bin, label %bb.nr, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i: ; preds = %bb.nq
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bir, i64 noundef %i.bim, i64 noundef 1) #52, !noalias !39773
  br label %bb.nr

bb.nr:                                            ; preds = %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i, %bb.nq
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.biv) ]
  br label %bb.ox

bb.ns:                                            ; preds = %_RNvMNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreaderINtB2_9BufReaderINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorRShEE13with_capacityCs7XnEB7DeNXr_7sslocal.exit.i.i.i
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 32 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i, i8 0, i64 17, i1 false), !noalias !39769
  %.sroa.8.i.i.i.sroa.4.0..sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 56 ; 2 uses
  store ptr %.val13, ptr %.sroa.8.i.i.i.sroa.4.0..sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i.sroa_idx, align 8, !noalias !39769
  %.sroa.8.i.i.i.sroa.5.0..sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 64 ; 2 uses
  store i64 %.val14, ptr %.sroa.8.i.i.i.sroa.5.0..sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i.sroa_idx, align 8, !noalias !39769
  %.sroa.8.i.i.i.sroa.6.0..sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 72 ; 3 uses
  store i64 0, ptr %.sroa.8.i.i.i.sroa.6.0..sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i.sroa_idx, align 8, !noalias !39769
  store i64 %i.bis, ptr %i.j, align 8, !noalias !39769
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 5 uses
  store ptr %i.biv, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !39769
  %.sroa.5.0..sroa_idx.i.i78 = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 4 uses
  store ptr %i.bir, ptr %.sroa.5.0..sroa_idx.i.i78, align 8, !noalias !39769
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 4 uses
  store i64 %i.bim, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !39769
  %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 80 ; 3 uses
  store i8 0, ptr %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !39769
  %.sroa.5.sroa.8.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 81 ; 6 uses
  store i8 0, ptr %.sroa.5.sroa.8.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 1, !noalias !39769
  %.sroa.5.sroa.9.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 82 ; 7 uses
  store i8 0, ptr %.sroa.5.sroa.9.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 2, !noalias !39769
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39774)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39775)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39776)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39777)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !39778
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

.outer.i.i.i.i.i.i:                               ; preds = %_RNvXs_NtNtCsf3Ta7LF998c_4core2io5implsQINtNtCsgCecv3eZDcN_5alloc3vec3VechENtNtB6_5write5Write9write_allCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i, %bb.ns
  %i.bjg = phi ptr [ %i.bnd, %_RNvXs_NtNtCsf3Ta7LF998c_4core2io5implsQINtNtCsgCecv3eZDcN_5alloc3vec3VechENtNtB6_5write5Write9write_allCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i ], [ inttoptr (i64 1 to ptr), %bb.ns ]
  %.sroa.16.0.copyload141 = phi i64 [ %i.bng, %_RNvXs_NtNtCsf3Ta7LF998c_4core2io5implsQINtNtCsgCecv3eZDcN_5alloc3vec3VechENtNtB6_5write5Write9write_allCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i ], [ 0, %bb.ns ] ; 4 uses
  %.sroa.18.0.ph.i.i.i.i.i.i = phi i1 [ true, %_RNvXs_NtNtCsf3Ta7LF998c_4core2io5implsQINtNtCsgCecv3eZDcN_5alloc3vec3VechENtNtB6_5write5Write9write_allCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i ], [ false, %bb.ns ]
  call void @llvm.experimental.noalias.scope.decl(metadata !39779)
  br i1 %.sroa.18.0.ph.i.i.i.i.i.i, label %_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i.i.i.preheader, label %bb.nt

bb.nt:                                            ; preds = %.outer.i.i.i.i.i.i
  %i.bjh = call { ptr, i64 } @_RNvXs0_NvMs2_NtNtCsf3Ta7LF998c_4core3mem12maybe_uninitSINtBb_11MaybeUninitpE13write_defaulthNtB5_11DefaultSpec13write_default(ptr noalias nofree noundef nonnull %i.h, i64 noundef 8192) #52, !noalias !39769 ; 0 uses
  br label %_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i.i.i.preheader

_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i.i.i.preheader: ; preds = %.outer.i.i.i.i.i.i, %bb.nt
  br label %_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i.i.i

_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i.i.i: ; preds = %_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i.i.i.preheader, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !39780)
  call void @llvm.experimental.noalias.scope.decl(metadata !39781)
  %i.bji = load i8, ptr %.sroa.5.sroa.9.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 2, !range !164, !alias.scope !39782, !noalias !39783, !noundef !145
  switch i8 %i.bji, label %default.unreachable2339 [
    i8 0, label %bb.nu
    i8 1, label %.loopexit59.i.i.i.i.i.i.i.i.i.i.i
    i8 2, label %.loopexit.i.i79
end_hunk_4
begin_hunk_5_@llvm.ucmp.i32.i32
!27315 = distinct !{!27315, !27314, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs2Z77Vc7pSLS_13hickory_proto2op12dns_response11DnsResponseECs7XnEB7DeNXr_7sslocal: argument 0"}
!27316 = distinct !{!27316, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs7XnEB7DeNXr_7sslocal"}
!27317 = distinct !{!27317, !27316, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs7XnEB7DeNXr_7sslocal: argument 0"}
!27318 = !{!27303}
!27319 = !{!27305}
!27320 = !{!27305, !27303}
!27321 = !{!27307}
!27322 = !{!27309}
!27323 = !{!27309, !27307, !27305, !27303}
!27324 = !{!27311}
!27325 = !{!27313}
!27326 = !{!27313, !27311}
!27327 = !{!27315}
!27328 = !{!27317}
!27329 = !{!27317, !27315, !27313, !27311}
!27330 = distinct !{!27330, i1 true, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits"}
!27331 = distinct !{!27331, !27330, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits: argument 1"}
!27332 = distinct !{!27332, !27330, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits: argument 0"}
!27333 = distinct !{!27333, i1 true, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits"}
!27334 = distinct !{!27334, !27333, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits: argument 0"}
!27335 = distinct !{!27335, !27333, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits: argument 1"}
!27336 = distinct !{!27336, !27333, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits: argument 2"}
!27337 = distinct !{!27337, !27330, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits: argument 2"}
!27338 = distinct !{!27338, i1 true, !"_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode24ReadSimpleHuffmanSymbolsNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB1a_B1a_ECs7XnEB7DeNXr_7sslocal"}
!27339 = distinct !{!27339, !27338, !"_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode24ReadSimpleHuffmanSymbolsNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB1a_B1a_ECs7XnEB7DeNXr_7sslocal: argument 0"}
!27340 = distinct !{!27340, !27338, !"_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode24ReadSimpleHuffmanSymbolsNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB1a_B1a_ECs7XnEB7DeNXr_7sslocal: argument 1"}
!27341 = distinct !{!27341, i1 true, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits"}
!27342 = distinct !{!27342, !27341, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits: argument 0"}
!27343 = distinct !{!27343, !27341, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits: argument 2"}
!27344 = distinct !{!27344, !27341, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits: argument 1"}
!27345 = distinct !{!27345, i1 true, !"_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode25ReadCodeLengthCodeLengthsNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB1b_B1b_ECs7XnEB7DeNXr_7sslocal"}
!27346 = distinct !{!27346, !27345, !"_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode25ReadCodeLengthCodeLengthsNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB1b_B1b_ECs7XnEB7DeNXr_7sslocal: argument 0"}
!27347 = distinct !{!27347, !27345, !"_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode25ReadCodeLengthCodeLengthsNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB1b_B1b_ECs7XnEB7DeNXr_7sslocal: argument 1"}
!27348 = distinct !{!27348, i1 true, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader17BrotliSafeGetBits"}
!27349 = distinct !{!27349, !27348, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader17BrotliSafeGetBits: argument 0"}
!27350 = distinct !{!27350, !27348, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader17BrotliSafeGetBits: argument 2"}
!27351 = distinct !{!27351, !27348, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader17BrotliSafeGetBits: argument 1"}
!27352 = distinct !{!27352, i1 true, !"_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode21ReadSymbolCodeLengthsNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB17_B17_ECs7XnEB7DeNXr_7sslocal"}
!27353 = distinct !{!27353, !27352, !"_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode21ReadSymbolCodeLengthsNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB17_B17_ECs7XnEB7DeNXr_7sslocal: argument 0"}
!27354 = distinct !{!27354, !27352, !"_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode21ReadSymbolCodeLengthsNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB17_B17_ECs7XnEB7DeNXr_7sslocal: argument 1"}
!27355 = distinct !{!27355, i1 true, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor6decode25ProcessRepeatedCodeLength"}
!27356 = distinct !{!27356, !27355, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor6decode25ProcessRepeatedCodeLength: argument 4"}
!27357 = distinct !{!27357, !27355, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor6decode25ProcessRepeatedCodeLength: argument 5"}
!27358 = distinct !{!27358, !27355, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor6decode25ProcessRepeatedCodeLength: argument 6"}
!27359 = distinct !{!27359, !27355, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor6decode25ProcessRepeatedCodeLength: argument 3"}
!27360 = distinct !{!27360, !27355, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor6decode25ProcessRepeatedCodeLength: argument 2"}
!27361 = distinct !{!27361, !27355, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor6decode25ProcessRepeatedCodeLength: argument 1"}
!27362 = distinct !{!27362, !27355, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor6decode25ProcessRepeatedCodeLength: argument 0"}
!27363 = distinct !{!27363, i1 true, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor6decode23ProcessSingleCodeLength"}
!27364 = distinct !{!27364, !27363, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor6decode23ProcessSingleCodeLength: argument 4"}
!27365 = distinct !{!27365, !27363, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor6decode23ProcessSingleCodeLength: argument 5"}
!27366 = distinct !{!27366, !27363, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor6decode23ProcessSingleCodeLength: argument 6"}
!27367 = distinct !{!27367, !27363, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor6decode23ProcessSingleCodeLength: argument 3"}
!27368 = distinct !{!27368, !27363, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor6decode23ProcessSingleCodeLength: argument 2"}
!27369 = distinct !{!27369, !27363, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor6decode23ProcessSingleCodeLength: argument 1"}
!27370 = distinct !{!27370, !27363, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor6decode23ProcessSingleCodeLength: argument 0"}
!27371 = distinct !{!27371, i1 true, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits"}
!27372 = distinct !{!27372, !27371, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits: argument 0"}
!27373 = distinct !{!27373, !27371, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits: argument 2"}
!27374 = distinct !{!27374, !27371, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits: argument 1"}
!27375 = distinct !{!27375, i1 true, !"_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode25SafeReadSymbolCodeLengthsNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB1b_B1b_ECs7XnEB7DeNXr_7sslocal"}
!27376 = distinct !{!27376, !27375, !"_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode25SafeReadSymbolCodeLengthsNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB1b_B1b_ECs7XnEB7DeNXr_7sslocal: argument 0"}
!27377 = distinct !{!27377, !27375, !"_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode25SafeReadSymbolCodeLengthsNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB1b_B1b_ECs7XnEB7DeNXr_7sslocal: argument 1"}
!27378 = distinct !{!27378, i1 true, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor6decode23ProcessSingleCodeLength"}
!27379 = distinct !{!27379, !27378, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor6decode23ProcessSingleCodeLength: argument 0"}
!27380 = distinct !{!27380, !27378, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor6decode23ProcessSingleCodeLength: argument 1"}
!27381 = distinct !{!27381, !27378, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor6decode23ProcessSingleCodeLength: argument 2"}
!27382 = distinct !{!27382, !27378, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor6decode23ProcessSingleCodeLength: argument 3"}
!27383 = distinct !{!27383, !27378, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor6decode23ProcessSingleCodeLength: argument 4"}
!27384 = distinct !{!27384, !27378, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor6decode23ProcessSingleCodeLength: argument 5"}
!27385 = distinct !{!27385, !27378, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor6decode23ProcessSingleCodeLength: argument 6"}
!27386 = distinct !{!27386, i1 true, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor6decode25ProcessRepeatedCodeLength"}
!27387 = distinct !{!27387, !27386, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor6decode25ProcessRepeatedCodeLength: argument 0"}
!27388 = distinct !{!27388, !27386, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor6decode25ProcessRepeatedCodeLength: argument 1"}
!27389 = distinct !{!27389, !27386, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor6decode25ProcessRepeatedCodeLength: argument 2"}
!27390 = distinct !{!27390, !27386, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor6decode25ProcessRepeatedCodeLength: argument 3"}
!27391 = distinct !{!27391, !27386, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor6decode25ProcessRepeatedCodeLength: argument 4"}
!27392 = distinct !{!27392, !27386, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor6decode25ProcessRepeatedCodeLength: argument 5"}
!27393 = distinct !{!27393, !27386, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor6decode25ProcessRepeatedCodeLength: argument 6"}
!27394 = !{!27331}
!27395 = !{!27332}
!27396 = !{!27334}
!27397 = !{!27335}
!27398 = !{!27336}
!27399 = !{!27334, !27335, !27336}
!27400 = !{!27337}
!27401 = !{!27332, !27331, !27337}
!27402 = !{!27339}
!27403 = !{!27340}
!27404 = !{!27339, !27340}
!27405 = !{!27342}
!27406 = !{!27343}
!27407 = !{!27342, !27339}
!27408 = !{!27343, !27340}
!27409 = !{!27342, !27344, !27343, !27339, !27340}
!27410 = !{!27346}
!27411 = !{!27347}
!27412 = !{!27346, !27347}
!27413 = !{!27349}
!27414 = !{!27350}
!27415 = !{!27349, !27346}
!27416 = !{!27350, !27347}
!27417 = !{!27349, !27351, !27350, !27346, !27347}
!27418 = !{!27353}
!27419 = !{!27354}
!27420 = !{!27353, !27354}
!27421 = !{!27356}
!27422 = !{!27357}
!27423 = !{!27358}
!27424 = !{!27358, !27353}
!27425 = !{!27362, !27361, !27360, !27359, !27356, !27357, !27358}
!27426 = !{!27356, !27353}
!27427 = !{!27357, !27353}
!27428 = !{!27364}
!27429 = !{!27365}
!27430 = !{!27366}
!27431 = !{!27366, !27353}
!27432 = !{!27364, !27353}
!27433 = !{!27365, !27353}
!27434 = !{!27370, !27369, !27368, !27367, !27364, !27365, !27366}
!27435 = !{!27372}
!27436 = !{!27373}
!27437 = !{!27372, !27374, !27373}
!27438 = !{!27376}
!27439 = !{!27377}
!27440 = !{!27379}
!27441 = !{!27380}
!27442 = !{!27381}
!27443 = !{!27382}
!27444 = !{!27383}
!27445 = !{!27384}
!27446 = !{!27385}
!27447 = !{!27380, !27376}
!27448 = !{!27385, !27376}
!27449 = !{!27383, !27376}
!27450 = !{!27382, !27376}
!27451 = !{!27381, !27376}
!27452 = !{!27384, !27376}
!27453 = !{!27379, !27380, !27381, !27382, !27383, !27384, !27385, !27376, !27377}
!27454 = !{!27379, !27376}
!27455 = !{!27376, !27377}
!27456 = !{!27387}
!27457 = !{!27388}
!27458 = !{!27389}
!27459 = !{!27390}
!27460 = !{!27391}
!27461 = !{!27392}
!27462 = !{!27393}
!27463 = !{!27390, !27376}
!27464 = !{!27388, !27376}
!27465 = !{!27387, !27376}
!27466 = !{!27389, !27376}
!27467 = !{!27393, !27376}
!27468 = !{!27387, !27388, !27389, !27390, !27391, !27392, !27393, !27376, !27377}
!27469 = !{!27391, !27376}
!27470 = !{!27392, !27376}
!27471 = distinct !{!27471, i1 true, !"_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode21DecodeContextMapInnerNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB17_B17_ECs7XnEB7DeNXr_7sslocal"}
!27472 = distinct !{!27472, !27471, !"_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode21DecodeContextMapInnerNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB17_B17_ECs7XnEB7DeNXr_7sslocal: argument 0"}
!27473 = distinct !{!27473, !27471, !"_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode21DecodeContextMapInnerNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB17_B17_ECs7XnEB7DeNXr_7sslocal: argument 2"}
!27474 = distinct !{!27474, !27471, !"_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode21DecodeContextMapInnerNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB17_B17_ECs7XnEB7DeNXr_7sslocal: argument 3"}
!27475 = distinct !{!27475, !27471, !"_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode21DecodeContextMapInnerNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB17_B17_ECs7XnEB7DeNXr_7sslocal: argument 1"}
!27476 = distinct !{!27476, i1 true, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader17BrotliSafeGetBits"}
!27477 = distinct !{!27477, !27476, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader17BrotliSafeGetBits: argument 0"}
!27478 = distinct !{!27478, !27476, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader17BrotliSafeGetBits: argument 2"}
!27479 = distinct !{!27479, !27476, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader17BrotliSafeGetBits: argument 1"}
!27480 = distinct !{!27480, i1 true, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits"}
!27481 = distinct !{!27481, !27480, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits: argument 0"}
!27482 = distinct !{!27482, !27480, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits: argument 2"}
!27483 = distinct !{!27483, !27480, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits: argument 1"}
!27484 = distinct !{!27484, i1 true, !"_RINvXs1_NtNtCsgCecv3eZDcN_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs7XnEB7DeNXr_7sslocal"}
!27485 = distinct !{!27485, !27484, !"_RINvXs1_NtNtCsgCecv3eZDcN_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs7XnEB7DeNXr_7sslocal: argument 0"}
!27486 = distinct !{!27486, i1 true, !"_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7XnEB7DeNXr_7sslocal"}
!27487 = distinct !{!27487, !27486, !"_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7XnEB7DeNXr_7sslocal: argument 0"}
!27488 = distinct !{!27488, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECs7XnEB7DeNXr_7sslocal"}
!27489 = distinct !{!27489, !27488, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECs7XnEB7DeNXr_7sslocal: argument 0"}
!27490 = distinct !{!27490, i1 true, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor6decode5bzero"}
!27491 = distinct !{!27491, !27490, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor6decode5bzero: argument 0"}
!27492 = distinct !{!27492, i1 true, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits"}
!27493 = distinct !{!27493, !27492, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits: argument 0"}
!27494 = distinct !{!27494, !27492, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits: argument 2"}
!27495 = distinct !{!27495, !27492, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits: argument 1"}
!27496 = distinct !{!27496, !180, !179}
!27497 = distinct !{!27497, !180}
!27498 = distinct !{!27498, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECs7XnEB7DeNXr_7sslocal"}
!27499 = distinct !{!27499, !27498, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECs7XnEB7DeNXr_7sslocal: argument 0"}
!27500 = distinct !{!27500, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECs7XnEB7DeNXr_7sslocal"}
!27501 = distinct !{!27501, !27500, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECs7XnEB7DeNXr_7sslocal: argument 0"}
!27502 = !{!27472}
!27503 = !{!27473}
!27504 = !{!27474}
!27505 = !{!27472, !27475, !27473, !27474}
!27506 = !{!27475}
!27507 = !{!27477}
!27508 = !{!27478}
!27509 = !{!27477, !27473}
!27510 = !{!27478, !27474}
!27511 = !{!27477, !27479, !27478, !27475}
!27512 = !{!27481}
!27513 = !{!27482}
!27514 = !{!27481, !27473}
!27515 = !{!27482, !27474}
!27516 = !{!27481, !27483, !27482, !27475}
!27517 = !{!27487, !27485, !27475}
!27518 = !{!27485, !27475}
!27519 = !{!27489, !27475}
!27520 = !{!27491}
!27521 = !{!27493}
!27522 = !{!27494}
!27523 = !{!27493, !27473}
!27524 = !{!27493, !27495, !27494, !27475}
!27525 = !{!27494, !27474}
!27526 = !{!27493, !27495, !27494, !27472, !27475, !27473, !27474}
!27527 = !{!27499}
!27528 = !{!27501}
!27529 = distinct !{!27529, i1 true, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader35BrotliFillBitWindowCompileTimeNbits"}
!27530 = distinct !{!27530, !27529, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader35BrotliFillBitWindowCompileTimeNbits: argument 0"}
!27531 = distinct !{!27531, !27529, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader35BrotliFillBitWindowCompileTimeNbits: argument 1"}
!27532 = distinct !{!27532, i1 true, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader14BrotliLoad64LE"}
!27533 = distinct !{!27533, !27532, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader14BrotliLoad64LE: argument 0"}
!27534 = distinct !{!27534, i1 true, !"_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implhECs7XnEB7DeNXr_7sslocal"}
!27535 = distinct !{!27535, !27534, !"_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implhECs7XnEB7DeNXr_7sslocal: argument 1"}
!27536 = distinct !{!27536, !27534, !"_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implhECs7XnEB7DeNXr_7sslocal: argument 0"}
!27537 = distinct !{!27537, i1 true, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor6decode12DecodeSymbol"}
!27538 = distinct !{!27538, !27537, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor6decode12DecodeSymbol: argument 0"}
!27539 = distinct !{!27539, !27537, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor6decode12DecodeSymbol: argument 1"}
!27540 = distinct !{!27540, i1 true, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader19BrotliFillBitWindow"}
!27541 = distinct !{!27541, !27540, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader19BrotliFillBitWindow: argument 0"}
!27542 = distinct !{!27542, !27540, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader19BrotliFillBitWindow: argument 1"}
!27543 = distinct !{!27543, i1 true, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader14BrotliLoad64LE"}
!27544 = distinct !{!27544, !27543, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader14BrotliLoad64LE: argument 0"}
!27545 = distinct !{!27545, i1 true, !"_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implhECs7XnEB7DeNXr_7sslocal"}
!27546 = distinct !{!27546, !27545, !"_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implhECs7XnEB7DeNXr_7sslocal: argument 1"}
!27547 = distinct !{!27547, !27545, !"_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implhECs7XnEB7DeNXr_7sslocal: argument 0"}
!27548 = distinct !{!27548, i1 true, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader14BrotliLoad64LE"}
!27549 = distinct !{!27549, !27548, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader14BrotliLoad64LE: argument 0"}
!27550 = distinct !{!27550, i1 true, !"_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implhECs7XnEB7DeNXr_7sslocal"}
!27551 = distinct !{!27551, !27550, !"_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implhECs7XnEB7DeNXr_7sslocal: argument 1"}
!27552 = distinct !{!27552, !27550, !"_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implhECs7XnEB7DeNXr_7sslocal: argument 0"}
!27553 = distinct !{!27553, i1 true, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader14BrotliLoad32LE"}
!27554 = distinct !{!27554, !27553, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader14BrotliLoad32LE: argument 0"}
!27555 = distinct !{!27555, i1 true, !"_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implhECs7XnEB7DeNXr_7sslocal"}
!27556 = distinct !{!27556, !27555, !"_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implhECs7XnEB7DeNXr_7sslocal: argument 1"}
!27557 = distinct !{!27557, !27555, !"_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implhECs7XnEB7DeNXr_7sslocal: argument 0"}
!27558 = distinct !{!27558, i1 true, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader19BrotliFillBitWindow"}
!27559 = distinct !{!27559, !27558, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader19BrotliFillBitWindow: argument 0"}
!27560 = distinct !{!27560, !27558, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader19BrotliFillBitWindow: argument 1"}
!27561 = distinct !{!27561, i1 true, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader14BrotliLoad64LE"}
!27562 = distinct !{!27562, !27561, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader14BrotliLoad64LE: argument 0"}
!27563 = distinct !{!27563, i1 true, !"_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implhECs7XnEB7DeNXr_7sslocal"}
!27564 = distinct !{!27564, !27563, !"_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implhECs7XnEB7DeNXr_7sslocal: argument 1"}
!27565 = distinct !{!27565, !27563, !"_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implhECs7XnEB7DeNXr_7sslocal: argument 0"}
!27566 = distinct !{!27566, i1 true, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader14BrotliLoad64LE"}
!27567 = distinct !{!27567, !27566, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader14BrotliLoad64LE: argument 0"}
!27568 = distinct !{!27568, i1 true, !"_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implhECs7XnEB7DeNXr_7sslocal"}
!27569 = distinct !{!27569, !27568, !"_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implhECs7XnEB7DeNXr_7sslocal: argument 1"}
!27570 = distinct !{!27570, !27568, !"_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implhECs7XnEB7DeNXr_7sslocal: argument 0"}
!27571 = distinct !{!27571, i1 true, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader14BrotliLoad32LE"}
!27572 = distinct !{!27572, !27571, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader14BrotliLoad32LE: argument 0"}
!27573 = distinct !{!27573, i1 true, !"_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implhECs7XnEB7DeNXr_7sslocal"}
!27574 = distinct !{!27574, !27573, !"_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implhECs7XnEB7DeNXr_7sslocal: argument 1"}
!27575 = distinct !{!27575, !27573, !"_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implhECs7XnEB7DeNXr_7sslocal: argument 0"}
!27576 = !{!27530}
!27577 = !{!27533, !27530, !27531}
!27578 = !{!27536, !27535}
!27579 = !{!27538}
!27580 = !{!27539}
!27581 = !{!27538, !27539}
!27582 = !{!27541}
!27583 = !{!27544, !27541, !27542}
!27584 = !{!27547, !27546}
!27585 = !{!27549, !27541, !27542}
!27586 = !{!27552, !27551}
!27587 = !{!27554, !27541, !27542}
!27588 = !{!27557, !27556}
!27589 = !{!27559}
!27590 = !{!27562, !27559, !27560}
!27591 = !{!27565, !27564}
!27592 = !{!27567, !27559, !27560}
!27593 = !{!27570, !27569}
!27594 = !{!27572, !27559, !27560}
!27595 = !{!27575, !27574}
!27596 = distinct !{!27596, i1 true, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader35BrotliFillBitWindowCompileTimeNbits"}
!27597 = distinct !{!27597, !27596, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader35BrotliFillBitWindowCompileTimeNbits: argument 0"}
!27598 = distinct !{!27598, !27596, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader35BrotliFillBitWindowCompileTimeNbits: argument 1"}
!27599 = distinct !{!27599, i1 true, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader14BrotliLoad64LE"}
!27600 = distinct !{!27600, !27599, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader14BrotliLoad64LE: argument 0"}
!27601 = distinct !{!27601, i1 true, !"_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implhECs7XnEB7DeNXr_7sslocal"}
!27602 = distinct !{!27602, !27601, !"_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implhECs7XnEB7DeNXr_7sslocal: argument 1"}
!27603 = distinct !{!27603, !27601, !"_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implhECs7XnEB7DeNXr_7sslocal: argument 0"}
!27604 = distinct !{!27604, i1 true, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor6decode12DecodeSymbol"}
!27605 = distinct !{!27605, !27604, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor6decode12DecodeSymbol: argument 0"}
!27606 = distinct !{!27606, !27604, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor6decode12DecodeSymbol: argument 1"}
!27607 = distinct !{!27607, i1 true, !"_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode26TakeDistanceFromRingBufferNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB1c_B1c_ECs7XnEB7DeNXr_7sslocal"}
!27608 = distinct !{!27608, !27607, !"_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode26TakeDistanceFromRingBufferNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB1c_B1c_ECs7XnEB7DeNXr_7sslocal: argument 0"}
!27609 = distinct !{!27609, i1 true, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader19BrotliFillBitWindow"}
!27610 = distinct !{!27610, !27609, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader19BrotliFillBitWindow: argument 0"}
!27611 = distinct !{!27611, !27609, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader19BrotliFillBitWindow: argument 1"}
!27612 = distinct !{!27612, i1 true, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader14BrotliLoad64LE"}
!27613 = distinct !{!27613, !27612, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader14BrotliLoad64LE: argument 0"}
!27614 = distinct !{!27614, i1 true, !"_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implhECs7XnEB7DeNXr_7sslocal"}
!27615 = distinct !{!27615, !27614, !"_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implhECs7XnEB7DeNXr_7sslocal: argument 1"}
!27616 = distinct !{!27616, !27614, !"_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implhECs7XnEB7DeNXr_7sslocal: argument 0"}
!27617 = distinct !{!27617, i1 true, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader14BrotliLoad64LE"}
!27618 = distinct !{!27618, !27617, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader14BrotliLoad64LE: argument 0"}
!27619 = distinct !{!27619, i1 true, !"_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implhECs7XnEB7DeNXr_7sslocal"}
!27620 = distinct !{!27620, !27619, !"_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implhECs7XnEB7DeNXr_7sslocal: argument 1"}
!27621 = distinct !{!27621, !27619, !"_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implhECs7XnEB7DeNXr_7sslocal: argument 0"}
!27622 = distinct !{!27622, i1 true, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader14BrotliLoad32LE"}
!27623 = distinct !{!27623, !27622, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader14BrotliLoad32LE: argument 0"}
!27624 = distinct !{!27624, i1 true, !"_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implhECs7XnEB7DeNXr_7sslocal"}
!27625 = distinct !{!27625, !27624, !"_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implhECs7XnEB7DeNXr_7sslocal: argument 1"}
!27626 = distinct !{!27626, !27624, !"_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implhECs7XnEB7DeNXr_7sslocal: argument 0"}
!27627 = distinct !{!27627, i1 true, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader19BrotliFillBitWindow"}
!27628 = distinct !{!27628, !27627, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader19BrotliFillBitWindow: argument 0"}
!27629 = distinct !{!27629, !27627, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader19BrotliFillBitWindow: argument 1"}
!27630 = distinct !{!27630, i1 true, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader14BrotliLoad64LE"}
!27631 = distinct !{!27631, !27630, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader14BrotliLoad64LE: argument 0"}
!27632 = distinct !{!27632, i1 true, !"_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implhECs7XnEB7DeNXr_7sslocal"}
!27633 = distinct !{!27633, !27632, !"_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implhECs7XnEB7DeNXr_7sslocal: argument 1"}
!27634 = distinct !{!27634, !27632, !"_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implhECs7XnEB7DeNXr_7sslocal: argument 0"}
!27635 = distinct !{!27635, i1 true, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader14BrotliLoad64LE"}
!27636 = distinct !{!27636, !27635, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader14BrotliLoad64LE: argument 0"}
!27637 = distinct !{!27637, i1 true, !"_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implhECs7XnEB7DeNXr_7sslocal"}
!27638 = distinct !{!27638, !27637, !"_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implhECs7XnEB7DeNXr_7sslocal: argument 1"}
!27639 = distinct !{!27639, !27637, !"_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implhECs7XnEB7DeNXr_7sslocal: argument 0"}
!27640 = distinct !{!27640, i1 true, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader14BrotliLoad32LE"}
!27641 = distinct !{!27641, !27640, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader14BrotliLoad32LE: argument 0"}
!27642 = distinct !{!27642, i1 true, !"_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implhECs7XnEB7DeNXr_7sslocal"}
!27643 = distinct !{!27643, !27642, !"_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implhECs7XnEB7DeNXr_7sslocal: argument 1"}
!27644 = distinct !{!27644, !27642, !"_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implhECs7XnEB7DeNXr_7sslocal: argument 0"}
!27645 = !{!27597}
!27646 = !{!27600, !27597, !27598}
!27647 = !{!27603, !27602}
!27648 = !{!27605}
!27649 = !{!27606}
!27650 = !{!27605, !27606}
!27651 = !{!27608}
!27652 = !{!27610}
!27653 = !{!27613, !27610, !27611}
!27654 = !{!27616, !27615}
!27655 = !{!27618, !27610, !27611}
!27656 = !{!27621, !27620}
!27657 = !{!27623, !27610, !27611}
!27658 = !{!27626, !27625}
!27659 = !{!27628}
!27660 = !{!27631, !27628, !27629}
!27661 = !{!27634, !27633}
!27662 = !{!27636, !27628, !27629}
!27663 = !{!27639, !27638}
!27664 = !{!27641, !27628, !27629}
!27665 = !{!27644, !27643}
!27666 = distinct !{!27666, i1 true, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor6decode15WarmupBitReader"}
!27667 = distinct !{!27667, !27666, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor6decode15WarmupBitReader: argument 0"}
!27668 = distinct !{!27668, !27666, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor6decode15WarmupBitReader: argument 1"}
!27669 = distinct !{!27669, i1 true, !"_RNvMs0_NtCsl4v216RJbSI_19brotli_decompressor7huffmanINtB5_16HuffmanTreeGroupNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB1c_E18build_hgroup_cacheCs7XnEB7DeNXr_7sslocal"}
!27670 = distinct !{!27670, !27669, !"_RNvMs0_NtCsl4v216RJbSI_19brotli_decompressor7huffmanINtB5_16HuffmanTreeGroupNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB1c_E18build_hgroup_cacheCs7XnEB7DeNXr_7sslocal: argument 0"}
!27671 = distinct !{!27671, !27669, !"_RNvMs0_NtCsl4v216RJbSI_19brotli_decompressor7huffmanINtB5_16HuffmanTreeGroupNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB1c_E18build_hgroup_cacheCs7XnEB7DeNXr_7sslocal: argument 1"}
!27672 = distinct !{!27672, i1 true, !"_RNvMs0_NtCsl4v216RJbSI_19brotli_decompressor7huffmanINtB5_16HuffmanTreeGroupNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB1c_E18build_hgroup_cacheCs7XnEB7DeNXr_7sslocal"}
!27673 = distinct !{!27673, !27672, !"_RNvMs0_NtCsl4v216RJbSI_19brotli_decompressor7huffmanINtB5_16HuffmanTreeGroupNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB1c_E18build_hgroup_cacheCs7XnEB7DeNXr_7sslocal: argument 0"}
!27674 = distinct !{!27674, !27672, !"_RNvMs0_NtCsl4v216RJbSI_19brotli_decompressor7huffmanINtB5_16HuffmanTreeGroupNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB1c_E18build_hgroup_cacheCs7XnEB7DeNXr_7sslocal: argument 1"}
!27675 = distinct !{!27675, i1 true, !"_RNvMs0_NtCsl4v216RJbSI_19brotli_decompressor7huffmanINtB5_16HuffmanTreeGroupNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB1c_E18build_hgroup_cacheCs7XnEB7DeNXr_7sslocal"}
!27676 = distinct !{!27676, !27675, !"_RNvMs0_NtCsl4v216RJbSI_19brotli_decompressor7huffmanINtB5_16HuffmanTreeGroupNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB1c_E18build_hgroup_cacheCs7XnEB7DeNXr_7sslocal: argument 0"}
!27677 = distinct !{!27677, !27675, !"_RNvMs0_NtCsl4v216RJbSI_19brotli_decompressor7huffmanINtB5_16HuffmanTreeGroupNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB1c_E18build_hgroup_cacheCs7XnEB7DeNXr_7sslocal: argument 1"}
!27678 = distinct !{!27678, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsl4v216RJbSI_19brotli_decompressor7huffman16HuffmanTreeGroupNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB1F_EECs7XnEB7DeNXr_7sslocal"}
!27679 = distinct !{!27679, !27678, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsl4v216RJbSI_19brotli_decompressor7huffman16HuffmanTreeGroupNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB1F_EECs7XnEB7DeNXr_7sslocal: argument 0"}
!27680 = distinct !{!27680, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsl4v216RJbSI_19brotli_decompressor7huffman16HuffmanTreeGroupNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB1F_EECs7XnEB7DeNXr_7sslocal"}
!27681 = distinct !{!27681, !27680, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsl4v216RJbSI_19brotli_decompressor7huffman16HuffmanTreeGroupNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB1F_EECs7XnEB7DeNXr_7sslocal: argument 0"}
!27682 = distinct !{!27682, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsl4v216RJbSI_19brotli_decompressor7huffman16HuffmanTreeGroupNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB1F_EECs7XnEB7DeNXr_7sslocal"}
!27683 = distinct !{!27683, !27682, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsl4v216RJbSI_19brotli_decompressor7huffman16HuffmanTreeGroupNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB1F_EECs7XnEB7DeNXr_7sslocal: argument 0"}
!27684 = distinct !{!27684, i1 true, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader35BrotliFillBitWindowCompileTimeNbits"}
!27685 = distinct !{!27685, !27684, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader35BrotliFillBitWindowCompileTimeNbits: argument 0"}
!27686 = distinct !{!27686, !27684, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader35BrotliFillBitWindowCompileTimeNbits: argument 1"}
!27687 = distinct !{!27687, i1 true, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader14BrotliLoad64LE"}
!27688 = distinct !{!27688, !27687, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader14BrotliLoad64LE: argument 0"}
!27689 = distinct !{!27689, i1 true, !"_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implhECs7XnEB7DeNXr_7sslocal"}
!27690 = distinct !{!27690, !27689, !"_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implhECs7XnEB7DeNXr_7sslocal: argument 1"}
!27691 = distinct !{!27691, !27689, !"_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implhECs7XnEB7DeNXr_7sslocal: argument 0"}
!27692 = distinct !{!27692, i1 true, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor6decode12DecodeSymbol"}
!27693 = distinct !{!27693, !27692, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor6decode12DecodeSymbol: argument 0"}
!27694 = distinct !{!27694, !27692, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor6decode12DecodeSymbol: argument 1"}
!27695 = distinct !{!27695, i1 true, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor6decode9memmove16"}
!27696 = distinct !{!27696, !27695, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor6decode9memmove16: argument 0"}
!27697 = distinct !{!27697, i1 true, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor6decode9memmove16"}
!27698 = distinct !{!27698, !27697, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor6decode9memmove16: argument 0"}
!27699 = distinct !{!27699, i1 true, !"_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implhECs7XnEB7DeNXr_7sslocal"}
!27700 = distinct !{!27700, !27699, !"_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implhECs7XnEB7DeNXr_7sslocal: argument 0"}
!27701 = distinct !{!27701, !27699, !"_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implhECs7XnEB7DeNXr_7sslocal: argument 1"}
!27702 = !{!27667}
!27703 = !{!27668}
!27704 = !{!27667, !27668}
!27705 = !{!27670}
!27706 = !{!27671}
!27707 = !{!27670, !27671}
!27708 = !{!27673}
!27709 = !{!27674}
!27710 = !{!27673, !27674}
!27711 = !{!27676}
!27712 = !{!27677}
!27713 = !{!27676, !27677}
!27714 = !{!27679}
!27715 = !{!27681}
!27716 = !{!27683}
!27717 = !{!27685}
!27718 = !{!27688, !27685, !27686}
!27719 = !{!27691, !27690}
!27720 = !{!27693}
!27721 = !{!27694}
!27722 = !{!27693, !27694}
!27723 = !{!27696}
!27724 = !{!27698}
!27725 = !{!27700}
!27726 = !{!27701}
end_hunk_5
begin_hunk_6_@llvm.ucmp.i32.i32
!39462 = distinct !{!39462, !39461, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsdEV4Kvs1Ch8_6flate27deflate7bufread14DeflateDecoderINtNtBI_9bufreader9BufReaderRShEEECs7XnEB7DeNXr_7sslocal: argument 0"}
!39463 = distinct !{!39463, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECs7XnEB7DeNXr_7sslocal"}
!39464 = distinct !{!39464, !39463, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECs7XnEB7DeNXr_7sslocal: argument 0"}
!39465 = distinct !{!39465, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECs7XnEB7DeNXr_7sslocal"}
!39466 = distinct !{!39466, !39465, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECs7XnEB7DeNXr_7sslocal: argument 0"}
!39467 = distinct !{!39467, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsdEV4Kvs1Ch8_6flate22gz4read9GzDecoderRShEECs7XnEB7DeNXr_7sslocal"}
!39468 = distinct !{!39468, !39467, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsdEV4Kvs1Ch8_6flate22gz4read9GzDecoderRShEECs7XnEB7DeNXr_7sslocal: argument 0"}
!39469 = distinct !{!39469, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsdEV4Kvs1Ch8_6flate22gz7bufread9GzDecoderINtNtBI_9bufreader9BufReaderRShEEECs7XnEB7DeNXr_7sslocal"}
!39470 = distinct !{!39470, !39469, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsdEV4Kvs1Ch8_6flate22gz7bufread9GzDecoderINtNtBI_9bufreader9BufReaderRShEEECs7XnEB7DeNXr_7sslocal: argument 0"}
!39471 = distinct !{!39471, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsdEV4Kvs1Ch8_6flate23crc9CrcReaderINtNtNtBG_7deflate7bufread14DeflateDecoderINtNtBG_9bufreader9BufReaderRShEEEECs7XnEB7DeNXr_7sslocal"}
!39472 = distinct !{!39472, !39471, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsdEV4Kvs1Ch8_6flate23crc9CrcReaderINtNtNtBG_7deflate7bufread14DeflateDecoderINtNtBG_9bufreader9BufReaderRShEEEECs7XnEB7DeNXr_7sslocal: argument 0"}
!39473 = distinct !{!39473, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsdEV4Kvs1Ch8_6flate27deflate7bufread14DeflateDecoderINtNtBI_9bufreader9BufReaderRShEEECs7XnEB7DeNXr_7sslocal"}
!39474 = distinct !{!39474, !39473, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsdEV4Kvs1Ch8_6flate27deflate7bufread14DeflateDecoderINtNtBI_9bufreader9BufReaderRShEEECs7XnEB7DeNXr_7sslocal: argument 0"}
!39475 = distinct !{!39475, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECs7XnEB7DeNXr_7sslocal"}
!39476 = distinct !{!39476, !39475, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECs7XnEB7DeNXr_7sslocal: argument 0"}
!39477 = distinct !{!39477, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECs7XnEB7DeNXr_7sslocal"}
!39478 = distinct !{!39478, !39477, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECs7XnEB7DeNXr_7sslocal: argument 0"}
!39479 = distinct !{!39479, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs7XnEB7DeNXr_7sslocal"}
!39480 = distinct !{!39480, !39479, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs7XnEB7DeNXr_7sslocal: argument 0"}
!39481 = distinct !{!39481, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs7XnEB7DeNXr_7sslocal"}
!39482 = distinct !{!39482, !39481, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs7XnEB7DeNXr_7sslocal: argument 0"}
!39483 = !{!38924}
!39484 = !{!38927, !38926}
!39485 = !{!38930, !38929, !38927, !38926}
!39486 = !{!38932, !38930, !38927}
!39487 = !{!38932, !38933, !38930, !38929, !38927, !38926}
!39488 = !{!38933, !38929, !38926}
!39489 = !{!38935}
!39490 = !{!38937}
!39491 = !{!38939}
!39492 = !{!38941, !38939, !38937, !38935}
!39493 = !{!38942}
!39494 = !{!38939, !38937, !38935}
!39495 = !{!38946, !38944}
!39496 = !{!38948}
!39497 = !{!38950}
!39498 = !{!38955, !38953, !38950, !38951}
!39499 = !{!38953, !38950, !38951}
!39500 = !{!38958, !38957, !38951}
!39501 = !{!38959, !38950}
!39502 = !{!38961}
!39503 = !{!38963}
!39504 = !{!38964}
!39505 = !{!38966}
!39506 = !{!38967}
!39507 = !{!38969}
!39508 = !{!38971}
!39509 = !{!38971, !38969, !38966, !38967, !38963, !38964}
!39510 = !{!38971, !38969, !38967, !38964}
!39511 = !{!38967, !38964}
!39512 = !{!38973, !38967, !38964}
!39513 = !{!38975}
!39514 = !{!38976}
!39515 = !{!38975, !38966, !38963}
!39516 = !{!38978}
!39517 = !{!38980}
!39518 = !{!38981}
!39519 = !{!38980, !38981, !38982, !38978, !38975, !38967, !38964}
!39520 = !{!38982, !38978, !38975, !38967, !38964}
!39521 = !{!38985, !38984}
!39522 = !{!38980, !38982, !38978, !38975, !38967, !38964}
!39523 = !{!38980, !38978, !38975, !38966, !38963}
!39524 = !{!38978, !38975, !38966, !38963}
!39525 = !{!38976, !38966, !38963}
!39526 = !{!38975, !38967, !38964}
!39527 = !{!38987, !38975, !38966, !38963}
!39528 = !{!38989, !38967, !38964}
!39529 = !{!38992, !38966, !38967, !38963, !38964}
!39530 = !{!38994, !38966, !38967, !38963, !38964}
!39531 = !{!38996, !38966, !38967, !38963, !38964}
!39532 = !{!38998}
!39533 = !{!38996, !38967, !38964}
!39534 = !{!39000}
!39535 = !{!39000, !39001}
!39536 = !{!39005, !39003, !39000, !39001}
!39537 = !{!39003, !39000, !39001}
!39538 = !{!39008, !39007, !39000, !39001}
!39539 = !{!39008, !39000}
!39540 = !{!39008, !39007, !39000}
!39541 = !{!39008, !39000, !39001}
!39542 = !{!39007, !39000, !39001}
!39543 = !{!39011, !39008, !39007, !39000, !39001}
!39544 = !{!39013}
!39545 = !{!39011, !39008, !39007, !39000}
!39546 = !{!39001}
!39547 = !{!39015}
!39548 = !{!39017}
!39549 = !{!39019}
!39550 = !{!39019, !39017}
!39551 = !{!39021}
!39552 = !{!39023}
!39553 = !{!39023, !39021, !39025, !39019, !39024, !39017}
!39554 = !{!39023, !39021, !39019, !39017}
!39555 = !{!39027, !39019, !39017}
!39556 = !{!39029, !39025, !39019, !39024, !39017}
!39557 = !{!39031}
!39558 = !{!39029, !39019, !39017}
!39559 = !{!39033, !39025, !39019, !39024, !39017}
!39560 = !{!39036, !39025, !39019, !39024, !39017}
!39561 = !{!39038, !39019, !39017}
!39562 = !{!39041}
!39563 = !{!39043}
!39564 = !{!39044, !39043}
!39565 = !{!39046}
!39566 = !{!39047}
!39567 = !{!39049, !39046, !39047, !39048, !39044, !39043}
!39568 = !{!39051}
!39569 = !{!39051, !39053, !39052, !39049, !39046, !39047, !39048, !39044, !39043}
!39570 = !{!39055}
!39571 = !{!39055, !39056, !39051, !39053, !39052, !39049, !39046, !39047, !39048, !39044, !39043}
!39572 = !{!39060, !39058, !39056, !39051, !39053, !39052, !39049, !39046, !39047, !39048, !39044, !39043}
!39573 = !{!39058, !39056, !39053, !39049, !39046, !39048, !39044, !39043}
!39574 = !{!39062, !39058, !39056, !39053, !39049, !39046, !39048, !39044, !39043}
!39575 = !{!39056, !39051, !39053, !39052, !39049, !39046, !39047, !39048, !39044, !39043}
!39576 = !{!39064}
!39577 = !{!39066}
!39578 = !{!39068}
!39579 = !{!39071, !39070}
!39580 = !{!39075, !39073, !39053, !39049, !39046, !39048, !39044, !39043}
!39581 = !{!39075, !39068, !39073, !39066, !39064, !39053, !39049, !39046, !39048, !39044, !39043}
!39582 = !{!39068, !39066, !39064, !39051, !39047}
!39583 = !{!39077}
!39584 = !{!39085, !39084, !39083, !39082, !39081, !39080, !39079, !39077, !39051, !39053, !39052, !39049, !39046, !39047, !39048, !39044, !39043}
!39585 = !{i32 -31, i32 4}
!39586 = !{!39053, !39049, !39046, !39048, !39044, !39043}
!39587 = !{!39087, !39051, !39053, !39052, !39049, !39046, !39047, !39048, !39044, !39043}
!39588 = !{!39089}
!39589 = !{!39087, !39053, !39049, !39046, !39048, !39044, !39043}
!39590 = !{!39090}
!39591 = !{!39085, !39084, !39082, !39081, !39080, !39079, !39053, !39049, !39046, !39048, !39044, !39043}
!39592 = !{!39093, !39092}
!39593 = !{!39085, !39084, !39082, !39081, !39080, !39079, !39090, !39053, !39052, !39049, !39046, !39048, !39044, !39043}
!39594 = !{!39097, !39096, !39094, !39090}
!39595 = !{!39053, !39052, !39049, !39046, !39048, !39044, !39043}
!39596 = !{!39099, !39090}
!39597 = !{!39101, !39090}
!39598 = !{!39103}
!39599 = !{!39104}
!39600 = !{!39105}
!39601 = !{!39103, !39090}
!39602 = !{!39103, !39104, !39105, !39085, !39084, !39082, !39081, !39080, !39079, !39053, !39049, !39046, !39048, !39044, !39043}
!39603 = !{!39109, !39107, !39085, !39084, !39082, !39081, !39080, !39079, !39053, !39049, !39046, !39048, !39044, !39043}
!39604 = !{!39107, !39085, !39084, !39082, !39081, !39080, !39079, !39053, !39049, !39046, !39048, !39044, !39043}
!39605 = !{!39111, !39107, !39085, !39084, !39082, !39081, !39080, !39079, !39053, !39049, !39046, !39048, !39044, !39043}
!39606 = !{!39115, !39113, !39085, !39084, !39082, !39081, !39080, !39079, !39053, !39049, !39046, !39048, !39044, !39043}
!39607 = !{!39117}
!39608 = !{!39117, !39090}
!39609 = !{!39119, !39117, !39085, !39084, !39082, !39081, !39080, !39079, !39053, !39049, !39046, !39048, !39044, !39043}
!39610 = !{!39121, !39117, !39085, !39084, !39082, !39081, !39080, !39079, !39053, !39049, !39046, !39048, !39044, !39043}
!39611 = !{!39123, !39117, !39085, !39084, !39082, !39081, !39080, !39079, !39053, !39049, !39046, !39048, !39044, !39043}
!39612 = !{!39125}
!39613 = !{!39125, !39117, !39090}
!39614 = !{!39125, !39117, !39085, !39084, !39082, !39081, !39080, !39079, !39053, !39049, !39046, !39048, !39044, !39043}
!39615 = !{!39127}
!39616 = !{!39127, !39117, !39090}
!39617 = !{!39127, !39117, !39085, !39084, !39082, !39081, !39080, !39079, !39053, !39049, !39046, !39048, !39044, !39043}
!39618 = !{!39129}
!39619 = !{!39129, !39117, !39090}
!39620 = !{!39129, !39117, !39085, !39084, !39082, !39081, !39080, !39079, !39053, !39049, !39046, !39048, !39044, !39043}
!39621 = !{!39131}
!39622 = !{!39132}
!39623 = !{!39085, !39084, !39082, !39081, !39080, !39079, !39051, !39053, !39052, !39049, !39046, !39047, !39048, !39044, !39043}
!39624 = !{!39134}
!39625 = !{!39085, !39084, !39082, !39081, !39080, !39079}
!39626 = !{!39135}
!39627 = !{!39135, !39132}
!39628 = !{!39085, !39084, !39082, !39081, !39080, !39079, !39053, !39052, !39049, !39046, !39048, !39044, !39043}
!39629 = !{!39134, !39131}
!39630 = !{!39134, !39136, !39135, !39131, !39132, !39085, !39084, !39082, !39081, !39080, !39079, !39053, !39049, !39046, !39048, !39044, !39043}
!39631 = !{!39138}
!39632 = !{!39139}
!39633 = !{!39139, !39132}
!39634 = !{!39138, !39131}
!39635 = !{!39138, !39140, !39139, !39131, !39132, !39085, !39084, !39082, !39081, !39080, !39079, !39053, !39049, !39046, !39048, !39044, !39043}
!39636 = !{!39142}
!39637 = !{!39143}
!39638 = !{!39143, !39132}
!39639 = !{!39142, !39131}
!39640 = !{!39142, !39144, !39143, !39131, !39132, !39085, !39084, !39082, !39081, !39080, !39079, !39053, !39049, !39046, !39048, !39044, !39043}
!39641 = !{!39146}
!39642 = !{!39147}
!39643 = !{!39147, !39132}
!39644 = !{!39146, !39131}
!39645 = !{!39149}
!39646 = !{!39150}
!39647 = !{!39150, !39132}
!39648 = !{!39149, !39131}
!39649 = !{!39149, !39151, !39150, !39131, !39132, !39085, !39084, !39082, !39081, !39080, !39079, !39053, !39049, !39046, !39048, !39044, !39043}
!39650 = !{!39153}
!39651 = !{!39154}
!39652 = !{!39154, !39132}
!39653 = !{!39153, !39131}
!39654 = !{!39153, !39155, !39154, !39131, !39132, !39085, !39084, !39082, !39081, !39080, !39079, !39053, !39049, !39046, !39048, !39044, !39043}
!39655 = !{!39157}
!39656 = !{!39158}
!39657 = !{!39158, !39132}
!39658 = !{!39157, !39131}
!39659 = !{!39146, !39159, !39147, !39131, !39132, !39085, !39084, !39082, !39081, !39080, !39079, !39053, !39049, !39046, !39048, !39044, !39043}
!39660 = !{!39161}
!39661 = !{!39162}
!39662 = !{!39085, !39084, !39082, !39081, !39080, !39079, !39053, !39049, !39046, !39047, !39048, !39044, !39043}
!39663 = !{!39161, !39163, !39162, !39085, !39084, !39082, !39081, !39080, !39079, !39053, !39049, !39046, !39048, !39044, !39043}
!39664 = !{!39157, !39164, !39158, !39131, !39132, !39085, !39084, !39082, !39081, !39080, !39079, !39053, !39049, !39046, !39048, !39044, !39043}
!39665 = !{!39166}
!39666 = !{!39167}
!39667 = !{!39166, !39090}
!39668 = !{!39166, !39168, !39167, !39085, !39084, !39082, !39081, !39080, !39079, !39053, !39049, !39046, !39048, !39044, !39043}
!39669 = !{!39170}
!39670 = !{!39171}
!39671 = !{!39170, !39090}
!39672 = !{!39173, !39170, !39090}
!39673 = !{!39170, !39171, !39085, !39084, !39082, !39081, !39080, !39079, !39053, !39049, !39046, !39048, !39044, !39043}
!39674 = !{!39173}
!39675 = !{!39174}
!39676 = !{!39174, !39171}
!39677 = !{!39173, !39175, !39174, !39170, !39171, !39085, !39084, !39082, !39081, !39080, !39079, !39053, !39049, !39046, !39048, !39044, !39043}
!39678 = !{!39177}
!39679 = !{!39178}
!39680 = !{!39085, !39084, !39051, !39053, !39052, !39049, !39046, !39047, !39048, !39044, !39043}
!39681 = !{!39180}
!39682 = !{!39178, !39085, !39084, !39051, !39053, !39052, !39049, !39046, !39047, !39048, !39044, !39043}
!39683 = !{!39185, !39184, !39183, !39182, !39181, !39180, !39178, !39085, !39084, !39053, !39049, !39046, !39048, !39044, !39043}
!39684 = !{!39188, !39187}
!39685 = !{!39185, !39184, !39182, !39181, !39180, !39178, !39085, !39084, !39049, !39046, !39044, !39043}
!39686 = !{!39190}
!39687 = !{!39085, !39084}
!39688 = !{!39191}
!39689 = !{!39192}
!39690 = !{!39196, !39195, !39194, !39193, !39177, !39178, !39085, !39084, !39053, !39049, !39046, !39048, !39044, !39043}
!39691 = !{!39191, !39177}
!39692 = !{!39192, !39178}
!39693 = !{!39085, !39084, !39053, !39052, !39049, !39046, !39048, !39044, !39043}
!39694 = !{!39190, !39191, !39192, !39196, !39195, !39194, !39193, !39177, !39178, !39085, !39084, !39053, !39049, !39046, !39048, !39044, !39043}
!39695 = !{!39202}
!39696 = !{!39207, !39206, !39205, !39204, !39203, !39202, !39085, !39084, !39053, !39049, !39046, !39048, !39044, !39043}
!39697 = !{!39210, !39209}
!39698 = !{!39207, !39206, !39204, !39203, !39202, !39085, !39084, !39049, !39046, !39044, !39043}
!39699 = !{!39212}
!39700 = !{!39212, !39213, !39085, !39084, !39082, !39081, !39080, !39079, !39053, !39049, !39046, !39048, !39044, !39043}
!39701 = !{!39212, !39213, !39085, !39084, !39082, !39081, !39080, !39079, !39051, !39053, !39052, !39049, !39046, !39047, !39048, !39044, !39043}
!39702 = !{!39214}
!39703 = !{!39215}
!39704 = !{!39101}
!39705 = !{!39214, !39090}
!39706 = !{!39215, !39090}
!39707 = !{!39104, !39090}
!39708 = !{!39113, !39085, !39084, !39082, !39081, !39080, !39079, !39053, !39049, !39046, !39048, !39044, !39043}
!39709 = !{!39217, !39113, !39085, !39084, !39082, !39081, !39080, !39079, !39053, !39049, !39046, !39048, !39044, !39043}
!39710 = !{!39085, !39084, !39094, !39082, !39081, !39080, !39079, !39090, !39051, !39053, !39052, !39049, !39046, !39047, !39048, !39044, !39043}
!39711 = !{!39219}
!39712 = !{!39223, !39221, !39085, !39084, !39082, !39081, !39080, !39079, !39053, !39049, !39046, !39048, !39044, !39043}
!39713 = !{!39221, !39085, !39084, !39082, !39081, !39080, !39079, !39053, !39049, !39046, !39048, !39044, !39043}
!39714 = !{!39225, !39219}
!39715 = !{!39227, !39085, !39084, !39082, !39081, !39080, !39079, !39053, !39049, !39046, !39048, !39044, !39043}
!39716 = !{!39085, !39084, !39082, !39081, !39080, !39079, !39053}
!39717 = !{!39229}
!39718 = !{!39230}
!39719 = !{!39229, !39230, !39085, !39084, !39082, !39081, !39080, !39079, !39053, !39049, !39046, !39048, !39044, !39043}
!39720 = !{!39229, !39230}
!39721 = !{!39232, !39085, !39084, !39082, !39081, !39080, !39079, !39053, !39049, !39046, !39048, !39044, !39043}
!39722 = !{!39236, !39234, !39085, !39084, !39082, !39081, !39080, !39079, !39053, !39049, !39046, !39048, !39044, !39043}
!39723 = !{!39234, !39085, !39084, !39082, !39081, !39080, !39079, !39053, !39049, !39046, !39048, !39044, !39043}
!39724 = !{!39238, !39090}
!39725 = !{!39240, !39085, !39084, !39082, !39081, !39080, !39079, !39053, !39049, !39046, !39048, !39044, !39043}
!39726 = !{!39099}
!39727 = !{!39241}
!39728 = !{!39099, !39242, !39241, !39085, !39084, !39082, !39081, !39080, !39079, !39053, !39049, !39046, !39048, !39044, !39043}
!39729 = !{!39244}
!39730 = !{!39247, !39246, !39244, !39085, !39084, !39082, !39081, !39080, !39079, !39053, !39049, !39046, !39048, !39044, !39043}
!39731 = !{!39250, !39249, !39244, !39085, !39084, !39082, !39081, !39080, !39079, !39053, !39049, !39046, !39048, !39044, !39043}
!39732 = !{!39253, !39252, !39244, !39085, !39084, !39082, !39081, !39080, !39079, !39053, !39049, !39046, !39048, !39044, !39043}
!39733 = !{!39256, !39255}
!39734 = !{!39244, !39085, !39084, !39082, !39081, !39080, !39079, !39053, !39049, !39046, !39048, !39044, !39043}
!39735 = !{!39258}
!39736 = !{!39259}
!39737 = !{!39260}
!39738 = !{!39258, !39259, !39261, !39260, !39085, !39084, !39082, !39081, !39080, !39079, !39051, !39053, !39052, !39049, !39046, !39047, !39048, !39044, !39043}
!39739 = !{!39263}
!39740 = !{!39264}
!39741 = !{!39263, !39259}
!39742 = !{!39264, !39260}
!39743 = !{!39263, !39265, !39264, !39258, !39259, !39261, !39260, !39085, !39084, !39082, !39081, !39080, !39079, !39053, !39049, !39046, !39048, !39044, !39043}
!39744 = !{!39258, !39259, !39261, !39260, !39085, !39084, !39082, !39081, !39080, !39079, !39053, !39049, !39046, !39048, !39044, !39043}
!39745 = !{!39263, !39265, !39264, !39258, !39259, !39261, !39260, !39085, !39084, !39082, !39081, !39080, !39079, !39051, !39053, !39052, !39049, !39046, !39047, !39048, !39044, !39043}
!39746 = !{!39267}
!39747 = !{!39267, !39090}
!39748 = !{!39267, !39085, !39084, !39082, !39081, !39080, !39079, !39053, !39049, !39046, !39048, !39044, !39043}
!39749 = !{!39269}
!39750 = !{!39269, !39085, !39084, !39082, !39081, !39080, !39079, !39053, !39049, !39046, !39048, !39044, !39043}
!39751 = !{!39271}
!39752 = !{!39276, !39275, !39274, !39273, !39272, !39271, !39085, !39084, !39053, !39049, !39046, !39048, !39044, !39043}
!39753 = !{!39279, !39278}
!39754 = !{!39276, !39275, !39273, !39272, !39271, !39085, !39084, !39049, !39046, !39044, !39043}
!39755 = !{!39281}
!39756 = !{!39286, !39285, !39284, !39283, !39282, !39281, !39085, !39084, !39053, !39049, !39046, !39048, !39044, !39043}
!39757 = !{!39289, !39288}
!39758 = !{!39286, !39285, !39283, !39282, !39281, !39085, !39084, !39049, !39046, !39044, !39043}
!39759 = !{!39094, !39051, !39047}
!39760 = !{!39291}
!39761 = !{!39293}
!39762 = !{!39295, !39293, !39291, !39046, !39043}
!39763 = !{!39297, !39051, !39053, !39052}
!39764 = !{!39298, !39297, !39053, !39049, !39048, !39044}
!39765 = !{!39293, !39291, !39046, !39043}
!39766 = !{!39293, !39291, !39049, !39046, !39044, !39043}
!39767 = !{!39301, !39300}
!39768 = !{!39303}
!39769 = !{!39304, !39303, !39301, !39300}
!39770 = !{!39307, !39306, !39304, !39303, !39301, !39300}
!39771 = !{!39312, !39310, !39309, !39307, !39306, !39304, !39303, !39301, !39300}
!39772 = !{!39310, !39309, !39307, !39306, !39304, !39303, !39301, !39300}
!39773 = !{!39315, !39314, !39307, !39306, !39304, !39303, !39301, !39300}
!39774 = !{!39317}
!39775 = !{!39319}
!39776 = !{!39321}
!39777 = !{!39323}
!39778 = !{!39323, !39321, !39319, !39317, !39304, !39303, !39301, !39300}
!39779 = !{!39325}
!39780 = !{!39327}
!39781 = !{!39329}
!39782 = !{!39329, !39327, !39325, !39323, !39321, !39319, !39317}
!39783 = !{!39331, !39304, !39303, !39301, !39300}
!39784 = !{!39329, !39333, !39327, !39332, !39331, !39325, !39323, !39321, !39319, !39317, !39304, !39303, !39301, !39300}
!39785 = !{!39339, !39338, !39336, !39335, !39329, !39333, !39327, !39332, !39331, !39325, !39323, !39321, !39319, !39317, !39304, !39303, !39301, !39300}
!39786 = !{!39341}
!39787 = !{!39343}
!39788 = !{!39336, !39335, !39304, !39303, !39301, !39300}
!39789 = !{!39346, !39345, !39336, !39335, !39329, !39333, !39327, !39332, !39331, !39325, !39323, !39321, !39319, !39317, !39304, !39303, !39301, !39300}
!39790 = !{!39348}
!39791 = !{!39350}
!39792 = !{!39352, !39329, !39327, !39325, !39323, !39321, !39319, !39317}
!39793 = !{!39354}
!39794 = !{!39356}
!39795 = !{!39358}
!39796 = !{!39359}
!39797 = !{!39358, !39356, !39354, !39329, !39327, !39325, !39323, !39321, !39319, !39317}
!39798 = !{!39361}
!39799 = !{!39363, !39361, !39359, !39356, !39354, !39329, !39327, !39325, !39323, !39321, !39319, !39317}
!39800 = !{!39366, !39365}
!39801 = !{!39371, !39361, !39369, !39358, !39359, !39368, !39356, !39367, !39354, !39304, !39303, !39301, !39300}
!39802 = !{!39361, !39359, !39356, !39354, !39329, !39327, !39325, !39323, !39321, !39319, !39317}
!39803 = !{!39373}
!39804 = !{!39374}
!39805 = !{!39373, !39374, !39304, !39303, !39301, !39300}
!39806 = !{!39376}
!39807 = !{!39377}
!39808 = !{!39376, !39377, !39373, !39374, !39329, !39333, !39327, !39332, !39331, !39325, !39323, !39321, !39319, !39317, !39304, !39303, !39301, !39300}
!39809 = !{!39379}
!39810 = !{!39380}
!39811 = !{!39380, !39376, !39374}
!39812 = !{!39377, !39373}
!39813 = !{!39382}
!39814 = !{!39382, !39304, !39303, !39301, !39300}
!39815 = !{!39384}
!39816 = !{!39385}
!39817 = !{!39384, !39385, !39373, !39374, !39329, !39333, !39327, !39332, !39331, !39325, !39323, !39321, !39319, !39317, !39304, !39303, !39301, !39300}
!39818 = !{!39387}
!39819 = !{!39388}
!39820 = !{!39388, !39384, !39374}
!39821 = !{!39385, !39373}
!39822 = !{!39390}
!39823 = !{!39390, !39304, !39303, !39301, !39300}
!39824 = !{!"branch_weights", !"expected", i32 7331393, i32 2140152255}
!39825 = !{!39393, !39304, !39303, !39301, !39300}
!39826 = !{!39396}
!39827 = !{!39398}
!39828 = !{!39400}
!39829 = !{!39402}
!39830 = !{!39404, !39402, !39400, !39398, !39396, !39303}
!39831 = !{!39406, !39323, !39321, !39319, !39317, !39301, !39300}
!39832 = !{!39408, !39407, !39406, !39304, !39301, !39300}
!39833 = !{!39402, !39400, !39398, !39396, !39303}
!39834 = !{!39402, !39400, !39398, !39396, !39304, !39303, !39301, !39300}
!39835 = !{!39410, !39323, !39321, !39319, !39317, !39304, !39303, !39301, !39300}
!39836 = !{!39412, !39323, !39321, !39319, !39317, !39304, !39303, !39301, !39300}
!39837 = !{!39414, !39323, !39321, !39319, !39317, !39304, !39303, !39301, !39300}
!39838 = !{!39416}
!39839 = !{!39414, !39304, !39303, !39301, !39300}
!39840 = !{!39418}
!39841 = !{!39420}
!39842 = !{!39420, !39418}
!39843 = !{!39420, !39418, !39304, !39303, !39301, !39300}
!39844 = !{!39424, !39422, !39420, !39418}
!39845 = !{!39426}
!39846 = !{!39428}
!39847 = !{!39428, !39426}
!39848 = !{!39428, !39426, !39304, !39303, !39301, !39300}
!39849 = !{!39432, !39430, !39428, !39426}
!39850 = !{!39434}
!39851 = !{!39434, !39301, !39300}
!39852 = !{!39300}
!39853 = !{!39436}
!39854 = !{!39438}
!39855 = !{!39440}
!39856 = !{!39442, !39440, !39438}
!39857 = !{!39440, !39438}
!39858 = !{!39444, !39440, !39438}
!39859 = !{!39446}
!39860 = !{!39448}
!39861 = !{!39450, !39448, !39446}
!39862 = !{!39448, !39446}
!39863 = !{!39452, !39448, !39446}
end_hunk_6
