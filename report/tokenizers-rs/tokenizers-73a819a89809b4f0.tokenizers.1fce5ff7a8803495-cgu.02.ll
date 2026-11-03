Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tokenizers-rs/original/tokenizers-73a819a89809b4f0.tokenizers.1fce5ff7a8803495-cgu.02?download=true
inline.NumInlined: 1144
inline.NumDeleted: 636
begin_hunk_0_@_RINvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB6_8IntoIterNtNtBa_6string6StringENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropBW_ENCINvNvXs_NtNtB1o_8adapters9enumerateINtB3a_9EnumeratepEB1i_8try_fold9enumerateBW_B2m_INtNtB1q_6result6ResultB2m_zENCINvNtB3c_3map12map_try_foldTjBW_EBW_B2m_B4o_NCNvXs0_NtNtCs2JiOgHzbbc7_10tokenizers8decoders3bpeNtB5J_10BPEDecoderNtNtB5N_9tokenizer7Decoder12decode_chain0NCINvNtB8_16in_place_collect24write_in_place_with_dropBW_E0E0E0B4o_EB5N_:bb.a
.split.us.i.i.i.i:                                ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.12106.0.copyload.i.i.i.i), "nonnull"(ptr %.sroa.14.0.copyload.i.i.i.i) ]
  %i.at = sub i64 %.sroa.15.0.copyload.i.i.i.i, %.sroa.6100.0.copyload.i.i.i.i
  %umax49.i48.us.i.i.i.i = call i64 @llvm.umax.i64(i64 %.sroa.498.0.copyload.i.i.i.i, i64 range(i64 0, -9223372036854775808) %.sroa.15.0.copyload.i.i.i.i)
  %i.au = add i64 %.sroa.498.0.copyload.i.i.i.i, -1 ; 2 uses
  %.first_iter.i.i.i.i = icmp ult i64 %i.au, %.sroa.15.0.copyload.i.i.i.i
  %.first_iter.i.fr.i.i.i = freeze i1 %.first_iter.i.i.i.i
  %.not129.us.i.i.i.i = icmp eq i64 %.sroa.498.0.copyload.i.i.i.i, 0
  %invariant.op = sub i64 1, %.sroa.498.0.copyload.i.i.i.i
  %exitcond.not.i50.us.i.i.i.i442.not = icmp ult i64 %.sroa.498.0.copyload.i.i.i.i, %.sroa.15.0.copyload.i.i.i.i
  %invariant.op637 = sub i64 1, %.sroa.498.0.copyload.i.i.i.i
  %.not129.us.i.us.i.i.i445 = icmp eq i64 %.sroa.498.0.copyload.i.i.i.i, 0
  br label %bb.g

bb.g:                                             ; preds = %bb.z, %.split.us.i.i.i.i
  %.sroa.3072.0.us.i.i.i.i = phi i64 [ %.sroa.10104.0.copyload.i.i.i.i, %.split.us.i.i.i.i ], [ %.sroa.3072.1.us.i.i.i.i, %bb.z ] ; 2 uses
  %.sroa.18.0.us.i.i.i.i = phi i64 [ %.sroa.8102.0.copyload.i.i.i.i, %.split.us.i.i.i.i ], [ %.sroa.11110.1.us.i.i.i.i, %bb.z ] ; 3 uses
  %.sroa.04.0.us.i.i.i.i = phi i64 [ 0, %.split.us.i.i.i.i ], [ %.sroa.11110.1.us.i.i.i.i, %bb.z ] ; 7 uses
  %i.av = icmp eq i64 %.sroa.3072.0.us.i.i.i.i, -1
  %i.aw = add i64 %.sroa.18.0.us.i.i.i.i, %i.as   ; 3 uses
  %i.ax = icmp ult i64 %i.aw, %.sroa.13107.0.copyload.i.i.i.i ; 2 uses
  br i1 %i.av, label %bb.q, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !340)
  call void @llvm.experimental.noalias.scope.decl(metadata !341)
  br i1 %i.ax, label %.lr.ph.i37.us.i.i.i.i, label %.loopexit.i.i.i.i

.lr.ph.i37.us.i.i.i.i:                            ; preds = %bb.h, %.sink.split.i.us.i.i.i.i
  %i.ay = phi i64 [ %.sink.i.us.i.i.i.i, %.sink.split.i.us.i.i.i.i ], [ %.sroa.3072.0.us.i.i.i.i, %bb.h ] ; 3 uses
  %i.az = phi i64 [ %i.cc, %.sink.split.i.us.i.i.i.i ], [ %i.aw, %bb.h ]
  %i.ba = phi i64 [ %.ph71.i.us.i.i.i.i, %.sink.split.i.us.i.i.i.i ], [ %.sroa.18.0.us.i.i.i.i, %bb.h ] ; 8 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.12106.0.copyload.i.i.i.i, i64 %i.az
  %i.bc = load i8, ptr %i.bb, align 1, !alias.scope !340, !noalias !337, !noundef !6
  %i.bd = and i8 %i.bc, 63
  %i.be = zext nneg i8 %i.bd to i64
  %i.bf = shl nuw i64 1, %i.be
  %i.bg = and i64 %i.bf, %.sroa.7101.0.copyload.i.i.i.i
  %i.bh = icmp eq i64 %i.bg, 0
  br i1 %i.bh, label %bb.p, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i37.us.i.i.i.i
  %.sroa.0.0.i.i.us.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ay, i64 %.sroa.498.0.copyload.i.i.i.i) ; 4 uses
  %umax49.i.us.i.i.i.i = call i64 @llvm.umax.i64(i64 %.sroa.0.0.i.i.us.i.i.i.i, i64 range(i64 0, -9223372036854775808) %.sroa.15.0.copyload.i.i.i.i)
  %exitcond.not.i.us.i.i.i.i435.not = icmp ult i64 %.sroa.0.0.i.i.us.i.i.i.i, %.sroa.15.0.copyload.i.i.i.i
  br i1 %exitcond.not.i.us.i.i.i.i435.not, label %.lr.ph438, label %.preheader131.us.i.i.i.i.preheader

bb.j:                                             ; preds = %bb.k
  %i.bi = add nuw i64 %.sroa.02.0.i.us.i.i.i.i436, 1 ; 2 uses
  %exitcond.not.i.us.i.i.i.i = icmp eq i64 %i.bi, %umax49.i.us.i.i.i.i
  br i1 %exitcond.not.i.us.i.i.i.i, label %.preheader131.us.i.i.i.i.preheader, label %.lr.ph438

.preheader131.us.i.i.i.i.preheader:               ; preds = %bb.j, %bb.i
  %i.bj = icmp ult i64 %i.ay, %.sroa.498.0.copyload.i.i.i.i
  br i1 %i.bj, label %.lr.ph440, label %.loopexit.i.us.i.i.i.i

.lr.ph438:                                        ; preds = %bb.i, %bb.j
  %.sroa.02.0.i.us.i.i.i.i436 = phi i64 [ %i.bi, %bb.j ], [ %.sroa.0.0.i.i.us.i.i.i.i, %bb.i ] ; 4 uses
  %i.bk = add i64 %.sroa.02.0.i.us.i.i.i.i436, %i.ba ; 2 uses
  %i.bl = icmp ult i64 %i.bk, %.sroa.13107.0.copyload.i.i.i.i
  br i1 %i.bl, label %bb.k, label %.split187.us.i.i.i.i

bb.k:                                             ; preds = %.lr.ph438
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.14.0.copyload.i.i.i.i, i64 %.sroa.02.0.i.us.i.i.i.i436
  %i.bn = load i8, ptr %i.bm, align 1, !alias.scope !341, !noalias !337, !noundef !6
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.12106.0.copyload.i.i.i.i, i64 %i.bk
  %i.bp = load i8, ptr %i.bo, align 1, !alias.scope !340, !noalias !337, !noundef !6
  %.not21.i.us.i.i.i.i = icmp eq i8 %i.bn, %i.bp
  br i1 %.not21.i.us.i.i.i.i, label %bb.j, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.reass.i.reass.i.reass.i.reass.i.reass.reass = add i64 %i.ba, %invariant.op
  %i.bq = add i64 %.reass.i.reass.i.reass.i.reass.i.reass.reass, %.sroa.02.0.i.us.i.i.i.i436
  br label %.sink.split.i.us.i.i.i.i

.preheader131.us.i.i.i.i:                         ; preds = %bb.n
  %i.br = icmp ult i64 %i.ay, %i.bs
  br i1 %i.br, label %.lr.ph440, label %.loopexit.i.us.i.i.i.i

.lr.ph440:                                        ; preds = %.preheader131.us.i.i.i.i.preheader, %.preheader131.us.i.i.i.i
  %.sroa.2.0.i.us.i.i.i.i439 = phi i64 [ %i.bs, %.preheader131.us.i.i.i.i ], [ %.sroa.498.0.copyload.i.i.i.i, %.preheader131.us.i.i.i.i.preheader ]
  %i.bs = add i64 %.sroa.2.0.i.us.i.i.i.i439, -1  ; 6 uses
  %i.bt = icmp ult i64 %i.bs, %.sroa.15.0.copyload.i.i.i.i
  br i1 %i.bt, label %bb.m, label %.split198.us.invoke.i.i.i.i

bb.m:                                             ; preds = %.lr.ph440
  %i.bu = add i64 %i.bs, %i.ba                    ; 3 uses
  %i.bv = icmp ult i64 %i.bu, %.sroa.13107.0.copyload.i.i.i.i
  br i1 %i.bv, label %bb.n, label %.split198.us.invoke.i.i.i.i

bb.n:                                             ; preds = %bb.m
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.14.0.copyload.i.i.i.i, i64 %i.bs
  %i.bx = load i8, ptr %i.bw, align 1, !alias.scope !341, !noalias !337, !noundef !6
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.12106.0.copyload.i.i.i.i, i64 %i.bu
  %i.bz = load i8, ptr %i.by, align 1, !alias.scope !340, !noalias !337, !noundef !6
  %.not.i38.us.i.i.i.i = icmp eq i8 %i.bx, %i.bz
  br i1 %.not.i38.us.i.i.i.i, label %.preheader131.us.i.i.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ca = add i64 %i.ba, %.sroa.6100.0.copyload.i.i.i.i
  br label %.sink.split.i.us.i.i.i.i

bb.p:                                             ; preds = %.lr.ph.i37.us.i.i.i.i
  %i.cb = add i64 %i.ba, %.sroa.15.0.copyload.i.i.i.i
  br label %.sink.split.i.us.i.i.i.i

.sink.split.i.us.i.i.i.i:                         ; preds = %bb.p, %bb.o, %bb.l
  %.sink.i.us.i.i.i.i = phi i64 [ %i.at, %bb.o ], [ 0, %bb.l ], [ 0, %bb.p ]
  %.ph71.i.us.i.i.i.i = phi i64 [ %i.ca, %bb.o ], [ %i.bq, %bb.l ], [ %i.cb, %bb.p ] ; 2 uses
  %i.cc = add i64 %.ph71.i.us.i.i.i.i, %i.as      ; 2 uses
  %i.cd = icmp ult i64 %i.cc, %.sroa.13107.0.copyload.i.i.i.i
  br i1 %i.cd, label %.lr.ph.i37.us.i.i.i.i, label %.loopexit.i.i.i.i

bb.q:                                             ; preds = %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !342)
  call void @llvm.experimental.noalias.scope.decl(metadata !343)
  br i1 %i.ax, label %.lr.ph.i45.us.i.i.i.i, label %.loopexit.i.i.i.i

.lr.ph.i45.us.i.i.i.i:                            ; preds = %bb.q, %bb.v
  %i.ce = phi i64 [ %i.df, %bb.v ], [ %i.aw, %bb.q ]
  %i.cf = phi i64 [ %i.de, %bb.v ], [ %.sroa.18.0.us.i.i.i.i, %bb.q ] ; 9 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.12106.0.copyload.i.i.i.i, i64 %i.ce
  %i.ch = load i8, ptr %i.cg, align 1, !alias.scope !342, !noalias !337, !noundef !6
  %i.ci = and i8 %i.ch, 63
  %i.cj = zext nneg i8 %i.ci to i64
  %i.ck = shl nuw i64 1, %i.cj
  %i.cl = and i64 %i.ck, %.sroa.7101.0.copyload.i.i.i.i
  %i.cm = icmp eq i64 %i.cl, 0
  br i1 %i.cm, label %bb.u, label %.preheader.i.i.i.i.preheader

.preheader.i.i.i.i.preheader:                     ; preds = %.lr.ph.i45.us.i.i.i.i
  br i1 %exitcond.not.i50.us.i.i.i.i442.not, label %.lr.ph444, label %.preheader.us.i.preheader.i.i.i

.preheader.i.i.i.i:                               ; preds = %bb.s
  %i.cn = add nuw i64 %.sroa.02.0.i49.us.i.i.i.i443, 1 ; 2 uses
  %exitcond.not.i50.us.i.i.i.i = icmp eq i64 %i.cn, %umax49.i48.us.i.i.i.i
  br i1 %exitcond.not.i50.us.i.i.i.i, label %.preheader.us.i.preheader.i.i.i, label %.lr.ph444

.preheader.us.i.preheader.i.i.i:                  ; preds = %.preheader.i.i.i.i, %.preheader.i.i.i.i.preheader
  br i1 %.first_iter.i.fr.i.i.i, label %.preheader.us.i.us.i.i.i.preheader, label %.preheader.us.i.preheader.split.i.i.i

.preheader.us.i.us.i.i.i.preheader:               ; preds = %.preheader.us.i.preheader.i.i.i
  br i1 %.not129.us.i.us.i.i.i445, label %.loopexit.i.us.i.i.i.i, label %.lr.ph447

.preheader.us.i.us.i.i.i:                         ; preds = %bb.r
  %.not129.us.i.us.i.i.i = icmp eq i64 %i.co, 0
  br i1 %.not129.us.i.us.i.i.i, label %.loopexit.i.us.i.i.i.i, label %.lr.ph447

.lr.ph447:                                        ; preds = %.preheader.us.i.us.i.i.i.preheader, %.preheader.us.i.us.i.i.i
  %.sroa.2.0.i53.us.i.us.i.i.i446 = phi i64 [ %i.co, %.preheader.us.i.us.i.i.i ], [ %.sroa.498.0.copyload.i.i.i.i, %.preheader.us.i.us.i.i.i.preheader ]
  %i.co = add i64 %.sroa.2.0.i53.us.i.us.i.i.i446, -1 ; 4 uses
  %i.cp = add i64 %i.co, %i.cf                    ; 3 uses
  %i.cq = icmp ult i64 %i.cp, %.sroa.13107.0.copyload.i.i.i.i
  br i1 %i.cq, label %bb.r, label %.split198.us.invoke.i.i.i.i

bb.r:                                             ; preds = %.lr.ph447
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.14.0.copyload.i.i.i.i, i64 %i.co
  %i.cs = load i8, ptr %i.cr, align 1, !alias.scope !343, !noalias !337, !noundef !6
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.12106.0.copyload.i.i.i.i, i64 %i.cp
  %i.cu = load i8, ptr %i.ct, align 1, !alias.scope !342, !noalias !337, !noundef !6
  %.not.i54.us.i.us.i.i.i = icmp eq i8 %i.cs, %i.cu
  br i1 %.not.i54.us.i.us.i.i.i, label %.preheader.us.i.us.i.i.i, label %.split.us.i.i.i

.split.us.i.i.i:                                  ; preds = %bb.r
  %i.cv = add i64 %i.cf, %.sroa.6100.0.copyload.i.i.i.i
  br label %bb.v

.preheader.us.i.preheader.split.i.i.i:            ; preds = %.preheader.us.i.preheader.i.i.i
  br i1 %.not129.us.i.i.i.i, label %.loopexit.i.us.i.i.i.i, label %.split198.us.invoke.i.i.i.i

.lr.ph444:                                        ; preds = %.preheader.i.i.i.i.preheader, %.preheader.i.i.i.i
  %.sroa.02.0.i49.us.i.i.i.i443 = phi i64 [ %i.cn, %.preheader.i.i.i.i ], [ %.sroa.498.0.copyload.i.i.i.i, %.preheader.i.i.i.i.preheader ] ; 4 uses
  %i.cw = add i64 %.sroa.02.0.i49.us.i.i.i.i443, %i.cf ; 2 uses
  %i.cx = icmp ult i64 %i.cw, %.sroa.13107.0.copyload.i.i.i.i
  br i1 %i.cx, label %bb.s, label %.split198.us.i.i.i.i

bb.s:                                             ; preds = %.lr.ph444
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.14.0.copyload.i.i.i.i, i64 %.sroa.02.0.i49.us.i.i.i.i443
  %i.cz = load i8, ptr %i.cy, align 1, !alias.scope !343, !noalias !337, !noundef !6
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.12106.0.copyload.i.i.i.i, i64 %i.cw
  %i.db = load i8, ptr %i.da, align 1, !alias.scope !342, !noalias !337, !noundef !6
  %.not21.i52.us.i.i.i.i = icmp eq i8 %i.cz, %i.db
  br i1 %.not21.i52.us.i.i.i.i, label %.preheader.i.i.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.reass330.i.reass.i.reass.i.reass.i.reass.reass = add i64 %i.cf, %invariant.op637
  %i.dc = add i64 %.reass330.i.reass.i.reass.i.reass.i.reass.reass, %.sroa.02.0.i49.us.i.i.i.i443
  br label %bb.v

bb.u:                                             ; preds = %.lr.ph.i45.us.i.i.i.i
  %i.dd = add i64 %i.cf, %.sroa.15.0.copyload.i.i.i.i
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %.split.us.i.i.i
  %i.de = phi i64 [ %i.dc, %bb.t ], [ %i.dd, %bb.u ], [ %i.cv, %.split.us.i.i.i ] ; 2 uses
  %i.df = add i64 %i.de, %i.as                    ; 2 uses
  %i.dg = icmp ult i64 %i.df, %.sroa.13107.0.copyload.i.i.i.i
  br i1 %i.dg, label %.lr.ph.i45.us.i.i.i.i, label %.loopexit.i.i.i.i

.loopexit.i.us.i.i.i.i:                           ; preds = %.preheader131.us.i.i.i.i.preheader, %.preheader.us.i.us.i.i.i.preheader, %.preheader131.us.i.i.i.i, %.preheader.us.i.us.i.i.i, %.preheader.us.i.preheader.split.i.i.i
  %.sroa.7109.1.us.i.i.i.i = phi i64 [ %i.cf, %.preheader.us.i.us.i.i.i ], [ %i.cf, %.preheader.us.i.preheader.split.i.i.i ], [ %i.ba, %.preheader131.us.i.i.i.i ], [ %i.cf, %.preheader.us.i.us.i.i.i.preheader ], [ %i.ba, %.preheader131.us.i.i.i.i.preheader ] ; 3 uses
  %.sroa.3072.1.us.i.i.i.i = phi i64 [ -1, %.preheader.us.i.us.i.i.i ], [ -1, %.preheader.us.i.preheader.split.i.i.i ], [ 0, %.preheader131.us.i.i.i.i ], [ -1, %.preheader.us.i.us.i.i.i.preheader ], [ 0, %.preheader131.us.i.i.i.i.preheader ]
  %.sroa.11110.1.us.i.i.i.i = add i64 %.sroa.7109.1.us.i.i.i.i, %.sroa.15.0.copyload.i.i.i.i ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.sroa.04.0.us.i.i.i.i
  %gepdiff.us.i.i.i.i = sub nuw nsw i64 %.sroa.7109.1.us.i.i.i.i, %.sroa.04.0.us.i.i.i.i ; 3 uses
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %gepdiff.us.i.i.i.i)
          to label %.noexc29.us.i.i.i.i unwind label %.loopexit134.split.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !337

.noexc29.us.i.i.i.i:                              ; preds = %.loopexit.i.us.i.i.i.i
  %i.di = load i64, ptr %.sroa.512.0..sroa_idx.i.i.i.i, align 8, !alias.scope !344, !noalias !338, !noundef !6 ; 3 uses
  %i.dj = icmp sgt i64 %i.di, -1
  call void @llvm.assume(i1 %i.dj)
  %.not.i27.us.i.i.i.i = icmp eq i64 %.sroa.7109.1.us.i.i.i.i, %.sroa.04.0.us.i.i.i.i
  br i1 %.not.i27.us.i.i.i.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.noexc29.us.i.i.i.i
  %i.dk = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !344, !noalias !338, !nonnull !6, !noundef !6
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.di
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dl, ptr nonnull readonly align 1 %i.dh, i64 %gepdiff.us.i.i.i.i, i1 false), !noalias !337
  %.pre.i28.us.i.i.i.i = load i64, ptr %.sroa.512.0..sroa_idx.i.i.i.i, align 8, !alias.scope !344, !noalias !338
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %.noexc29.us.i.i.i.i
  %i.dm = phi i64 [ %.pre.i28.us.i.i.i.i, %bb.w ], [ %i.di, %.noexc29.us.i.i.i.i ]
  %i.dn = add i64 %i.dm, %gepdiff.us.i.i.i.i
  store i64 %i.dn, ptr %.sroa.512.0..sroa_idx.i.i.i.i, align 8, !alias.scope !344, !noalias !338
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef range(i64 0, 2) %..i.i.i)
          to label %.noexc33.us.i.i.i.i unwind label %.loopexit134.split.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !337

.noexc33.us.i.i.i.i:                              ; preds = %bb.x
  %i.do = load i64, ptr %.sroa.512.0..sroa_idx.i.i.i.i, align 8, !alias.scope !345, !noalias !338, !noundef !6 ; 3 uses
  %i.dp = icmp sgt i64 %i.do, -1
  call void @llvm.assume(i1 %i.dp)
  br i1 %i.aa, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.noexc33.us.i.i.i.i
  %i.dq = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !345, !noalias !338, !nonnull !6, !noundef !6
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 %i.do
  store i8 32, ptr %i.dr, align 1, !noalias !337
  %.pre.i32.us.i.i.i.i = load i64, ptr %.sroa.512.0..sroa_idx.i.i.i.i, align 8, !alias.scope !345, !noalias !338
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %.noexc33.us.i.i.i.i
  %i.ds = phi i64 [ %.pre.i32.us.i.i.i.i, %bb.y ], [ %i.do, %.noexc33.us.i.i.i.i ]
  %i.dt = add i64 %i.ds, %..i.i.i
  store i64 %i.dt, ptr %.sroa.512.0..sroa_idx.i.i.i.i, align 8, !alias.scope !345, !noalias !338
  br label %bb.g

.split.i.i.i.i:                                   ; preds = %bb.f
  %i.du = and i64 %.sroa.6100.0.copyload.i.i.i.i, 65536
  %.not128.i.i.i.i = icmp eq i64 %i.du, 0
  br i1 %.not128.i.i.i.i, label %.lr.ph.i.lr.ph.i.i.i.i, label %.loopexit.i.i.i.i

.lr.ph.i.lr.ph.i.i.i.i:                           ; preds = %.split.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.12106.0.copyload.i.i.i.i) ]
  %i.dv = trunc i64 %.sroa.6100.0.copyload.i.i.i.i to i1 ; 2 uses
  %i.dw = icmp eq i64 %.sroa.498.0.copyload.i.i.i.i, 0
  br i1 %i.dw, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph.i.lr.ph.i.i.i.i
  %.not.i.i.i.peel.i.peel.i.i.i = icmp ult i64 %.sroa.498.0.copyload.i.i.i.i, %.sroa.13107.0.copyload.i.i.i.i
  br i1 %.not.i.i.i.peel.i.peel.i.i.i, label %bb.ab, label %.split.i.i.i.peel.i.peel.i.i.i

.split.i.i.i.peel.i.peel.i.i.i:                   ; preds = %bb.aa
  %i.dx = icmp eq i64 %.sroa.498.0.copyload.i.i.i.i, %.sroa.13107.0.copyload.i.i.i.i
  br i1 %i.dx, label %bb.ac, label %.loopexit264.i.i.i.i

bb.ab:                                            ; preds = %bb.aa
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.12106.0.copyload.i.i.i.i, i64 %.sroa.498.0.copyload.i.i.i.i
  %i.dz = load i8, ptr %i.dy, align 1, !alias.scope !346, !noalias !347, !noundef !6
  %i.ea = icmp sgt i8 %i.dz, -65
  br i1 %i.ea, label %bb.ac, label %.loopexit264.i.i.i.i

bb.ac:                                            ; preds = %bb.ab, %.split.i.i.i.peel.i.peel.i.i.i, %.lr.ph.i.lr.ph.i.i.i.i
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.12106.0.copyload.i.i.i.i, i64 %.sroa.498.0.copyload.i.i.i.i ; 4 uses
  %i.ec = icmp samesign eq i64 %.sroa.498.0.copyload.i.i.i.i, %.sroa.13107.0.copyload.i.i.i.i
  br i1 %i.ec, label %.loopexit265.i.peel.i.i.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ed = load i8, ptr %i.eb, align 1, !noalias !348, !noundef !6 ; 5 uses
  %i.ee = icmp sgt i8 %i.ed, -1
  br i1 %i.ee, label %bb.ae, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i.peel.i.peel.i.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i.peel.i.peel.i.i.i: ; preds = %bb.ad
  %i.ef = getelementptr inbounds nuw i8, ptr %i.eb, i64 1
  %i.eg = and i8 %i.ed, 31
  %i.eh = zext nneg i8 %i.eg to i32               ; 3 uses
  %i.ei = add nuw nsw i64 %.sroa.498.0.copyload.i.i.i.i, 1
  %i.ej = icmp samesign ne i64 %i.ei, %.sroa.13107.0.copyload.i.i.i.i
  call void @llvm.assume(i1 %i.ej)
  %i.ek = load i8, ptr %i.ef, align 1, !noalias !348, !noundef !6
  %i.el = shl nuw nsw i32 %i.eh, 6
  %i.em = and i8 %i.ek, 63
  %i.en = zext nneg i8 %i.em to i32               ; 2 uses
  %i.eo = or disjoint i32 %i.el, %i.en
  %i.ep = icmp samesign ugt i8 %i.ed, -33
  br i1 %i.ep, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i.peel.i.peel.i.i.i, label %bb.af

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i.peel.i.peel.i.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i.peel.i.peel.i.i.i
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eb, i64 2
  %i.er = add nuw nsw i64 %.sroa.498.0.copyload.i.i.i.i, 2
  %i.es = icmp samesign ne i64 %i.er, %.sroa.13107.0.copyload.i.i.i.i
  call void @llvm.assume(i1 %i.es)
  %i.et = load i8, ptr %i.eq, align 1, !noalias !348, !noundef !6
  %i.eu = shl nuw nsw i32 %i.en, 6
  %i.ev = and i8 %i.et, 63
  %i.ew = zext nneg i8 %i.ev to i32
  %i.ex = or disjoint i32 %i.eu, %i.ew            ; 2 uses
  %i.ey = shl nuw nsw i32 %i.eh, 12
  %i.ez = or disjoint i32 %i.ex, %i.ey
  %i.fa = icmp samesign ugt i8 %i.ed, -17
  br i1 %i.fa, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.peel.i.peel.i.i.i, label %bb.af

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.peel.i.peel.i.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i.peel.i.peel.i.i.i
  %i.fb = getelementptr inbounds nuw i8, ptr %i.eb, i64 3
  %i.fc = add nuw nsw i64 %.sroa.498.0.copyload.i.i.i.i, 3
  %i.fd = icmp samesign ne i64 %i.fc, %.sroa.13107.0.copyload.i.i.i.i
  call void @llvm.assume(i1 %i.fd)
  %i.fe = load i8, ptr %i.fb, align 1, !noalias !348, !noundef !6
  %i.ff = shl nuw nsw i32 %i.eh, 18
  %i.fg = and i32 %i.ff, 1835008
  %i.fh = shl nuw nsw i32 %i.ex, 6
  %i.fi = and i8 %i.fe, 63
  %i.fj = zext nneg i8 %i.fi to i32
  %i.fk = or disjoint i32 %i.fh, %i.fj
  %i.fl = or disjoint i32 %i.fk, %i.fg
  br label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.fm = zext nneg i8 %i.ed to i32
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.peel.i.peel.i.i.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i.peel.i.peel.i.i.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i.peel.i.peel.i.i.i
  %.sroa.4.0.i.ph.i.i.peel.i.peel.i.i.i = phi i32 [ %i.ez, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i.peel.i.peel.i.i.i ], [ %i.fl, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.peel.i.peel.i.i.i ], [ %i.eo, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i.peel.i.peel.i.i.i ], [ %i.fm, %bb.ae ] ; 4 uses
  %i.fn = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.peel.i.i.i, 1114112
  call void @llvm.assume(i1 %i.fn)
  br i1 %i.dv, label %.loopexit.i.i.peel.i.i.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fo = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.peel.i.i.i, 128
  br i1 %i.fo, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.fp = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.peel.i.i.i, 2048
  br i1 %i.fp, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fq = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.peel.i.i.i, 65536
  %..i.i.peel.i.peel.i.i.i = select i1 %i.fq, i64 3, i64 4
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah, %bb.ag
  %.sroa.01.0.i.i.peel.i.peel.i.i.i = phi i64 [ 2, %bb.ah ], [ %..i.i.peel.i.peel.i.i.i, %bb.ai ], [ 1, %bb.ag ]
  %i.fr = add i64 %.sroa.01.0.i.i.peel.i.peel.i.i.i, %.sroa.498.0.copyload.i.i.i.i ; 15 uses
  %i.fs = icmp eq i64 %i.fr, 0
  br i1 %i.fs, label %bb.am, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %.not.i.i.i.i.peel.i.i.i = icmp ult i64 %i.fr, %.sroa.13107.0.copyload.i.i.i.i
  br i1 %.not.i.i.i.i.peel.i.i.i, label %bb.al, label %.split.i.i.i.i.peel.i.i.i

.split.i.i.i.i.peel.i.i.i:                        ; preds = %bb.ak
  %i.ft = icmp eq i64 %i.fr, %.sroa.13107.0.copyload.i.i.i.i
  br i1 %i.ft, label %bb.am, label %.loopexit264.i.i.i.i

bb.al:                                            ; preds = %bb.ak
  %i.fu = getelementptr inbounds nuw i8, ptr %.sroa.12106.0.copyload.i.i.i.i, i64 %i.fr
  %i.fv = load i8, ptr %i.fu, align 1, !alias.scope !346, !noalias !347, !noundef !6
  %i.fw = icmp sgt i8 %i.fv, -65
  br i1 %i.fw, label %bb.am, label %.loopexit264.i.i.i.i

bb.am:                                            ; preds = %bb.al, %.split.i.i.i.i.peel.i.i.i, %bb.aj
  %i.fx = icmp samesign eq i64 %i.fr, %.sroa.13107.0.copyload.i.i.i.i
  br i1 %i.fx, label %.loopexit.i.i.peel.i.i.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fy = getelementptr inbounds nuw i8, ptr %.sroa.12106.0.copyload.i.i.i.i, i64 %i.fr
  %i.fz = load i8, ptr %i.fy, align 1, !noalias !348, !noundef !6 ; 3 uses
  %i.ga = icmp sgt i8 %i.fz, -1
  br i1 %i.ga, label %.loopexit.i.i.peel.i.i.i, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i.i.peel.i.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i.i.peel.i.i.i: ; preds = %bb.an
  %i.gb = add nuw nsw i64 %i.fr, 1
  %i.gc = icmp samesign ne i64 %i.gb, %.sroa.13107.0.copyload.i.i.i.i
  call void @llvm.assume(i1 %i.gc)
  %i.gd = icmp samesign ugt i8 %i.fz, -33
  br i1 %i.gd, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i.i.peel.i.i.i, label %.loopexit.i.i.peel.i.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i.i.peel.i.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i.i.peel.i.i.i
  %i.ge = add nuw nsw i64 %i.fr, 2
  %i.gf = icmp samesign ne i64 %i.ge, %.sroa.13107.0.copyload.i.i.i.i
  call void @llvm.assume(i1 %i.gf)
  %i.gg = icmp samesign ugt i8 %i.fz, -17
  br i1 %i.gg, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.i.peel.i.i.i, label %.loopexit.i.i.peel.i.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.i.peel.i.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i.i.peel.i.i.i
  %i.gh = add nuw nsw i64 %i.fr, 3
  %i.gi = icmp samesign ne i64 %i.gh, %.sroa.13107.0.copyload.i.i.i.i
  call void @llvm.assume(i1 %i.gi)
  br label %.loopexit.i.i.peel.i.i.i

.loopexit265.i.peel.i.i.i:                        ; preds = %bb.ac
end_hunk_0
begin_hunk_1_@_RINvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB6_8IntoIterNtNtBa_6string6StringENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropBW_ENCINvNvXs_NtNtB1o_8adapters9enumerateINtB3a_9EnumeratepEB1i_8try_fold9enumerateBW_B2m_INtNtB1q_6result6ResultB2m_zENCINvNtB3c_3map12map_try_foldTjBW_EBW_B2m_B4o_NCNvXs0_NtNtCs2JiOgHzbbc7_10tokenizers8decoders3bpeNtB5J_10BPEDecoderNtNtB5N_9tokenizer7Decoder12decode_chain0NCINvNtB8_16in_place_collect24write_in_place_with_dropBW_E0E0E0B4o_EB5N_:bb.a
          to label %.noexc29.i.peel.i.i.i unwind label %.loopexit134.split.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !337

.noexc29.i.peel.i.i.i:                            ; preds = %.loopexit.i.i.peel.i.i.i
  %i.gj = load i64, ptr %.sroa.512.0..sroa_idx.i.i.i.i, align 8, !alias.scope !344, !noalias !338, !noundef !6 ; 3 uses
  %i.gk = icmp sgt i64 %i.gj, -1
  call void @llvm.assume(i1 %i.gk)
  %.not.i27.i.peel.i.i.i = icmp eq i64 %.sroa.465.1262.i.peel.i.i.i, 0
  br i1 %.not.i27.i.peel.i.i.i, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %.noexc29.i.peel.i.i.i
  %i.gl = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !344, !noalias !338, !nonnull !6, !noundef !6
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 %i.gj
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.gm, ptr nonnull readonly align 1 %i.ab, i64 %.sroa.465.1262.i.peel.i.i.i, i1 false), !noalias !337
  %.pre.i28.i.peel.i.i.i = load i64, ptr %.sroa.512.0..sroa_idx.i.i.i.i, align 8, !alias.scope !344, !noalias !338
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %.noexc29.i.peel.i.i.i
  %i.gn = phi i64 [ %.pre.i28.i.peel.i.i.i, %bb.ao ], [ %i.gj, %.noexc29.i.peel.i.i.i ]
  %i.go = add i64 %i.gn, %.sroa.465.1262.i.peel.i.i.i
  store i64 %i.go, ptr %.sroa.512.0..sroa_idx.i.i.i.i, align 8, !alias.scope !344, !noalias !338
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef range(i64 0, 2) %..i.i.i)
          to label %.noexc33.i.peel.i.i.i unwind label %.loopexit134.split.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !337

.noexc33.i.peel.i.i.i:                            ; preds = %bb.ap
  %i.gp = load i64, ptr %.sroa.512.0..sroa_idx.i.i.i.i, align 8, !alias.scope !345, !noalias !338, !noundef !6 ; 3 uses
  %i.gq = icmp sgt i64 %i.gp, -1
  call void @llvm.assume(i1 %i.gq)
  br i1 %i.aa, label %.lr.ph.i.i.i.i.i.preheader, label %.lr.ph.i.i.i.i.i.sink.split

.lr.ph.i.i.i.i.i.sink.split:                      ; preds = %.noexc33.i.peel.i.i.i, %bb.be
  %.sink451 = phi i64 [ %i.jx, %bb.be ], [ %i.gp, %.noexc33.i.peel.i.i.i ]
  %.sroa.04.0213.i.i.i.i.ph = phi i64 [ %.sroa.465.1262.i.i.i.i, %bb.be ], [ %.sroa.465.1262.i.peel.i.i.i, %.noexc33.i.peel.i.i.i ]
  %i.gr = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !345, !noalias !338, !nonnull !6, !noundef !6
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 %.sink451
  store i8 32, ptr %i.gs, align 1, !noalias !337
  %.pre.i32.i.i.i.i = load i64, ptr %.sroa.512.0..sroa_idx.i.i.i.i, align 8, !alias.scope !345, !noalias !338
  br label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.noexc33.i.peel.i.i.i, %.lr.ph.i.i.i.i.i.sink.split
  %.pn.i.i.i.ph = phi i64 [ %.pre.i32.i.i.i.i, %.lr.ph.i.i.i.i.i.sink.split ], [ %i.gp, %.noexc33.i.peel.i.i.i ]
  %.sroa.04.0213.i.i.i.i.ph461 = phi i64 [ %.sroa.04.0213.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.sink.split ], [ %.sroa.465.1262.i.peel.i.i.i, %.noexc33.i.peel.i.i.i ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.noexc33.i.i.i.i
  %.pn.i.i.i = phi i64 [ %i.jx, %.noexc33.i.i.i.i ], [ %.pn.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ]
  %.sroa.04.0213.i.i.i.i = phi i64 [ %.sroa.465.1262.i.i.i.i, %.noexc33.i.i.i.i ], [ %.sroa.04.0213.i.i.i.i.ph461, %.lr.ph.i.i.i.i.i.preheader ] ; 14 uses
  %storemerge.i.i.i = add i64 %.pn.i.i.i, %..i.i.i
  store i64 %storemerge.i.i.i, ptr %.sroa.512.0..sroa_idx.i.i.i.i, align 8, !alias.scope !345, !noalias !338
  %i.gt = icmp eq i64 %.sroa.04.0213.i.i.i.i, 0
  br i1 %i.gt, label %bb.as, label %bb.aq

bb.aq:                                            ; preds = %.lr.ph.i.i.i.i.i
  %.not.i.i.i.peel.i.i.i.i = icmp ult i64 %.sroa.04.0213.i.i.i.i, %.sroa.13107.0.copyload.i.i.i.i
  br i1 %.not.i.i.i.peel.i.i.i.i, label %bb.ar, label %.split.i.i.i.peel.i.i.i.i

.split.i.i.i.peel.i.i.i.i:                        ; preds = %bb.aq
  %i.gu = icmp eq i64 %.sroa.04.0213.i.i.i.i, %.sroa.13107.0.copyload.i.i.i.i
  br i1 %i.gu, label %bb.as, label %.loopexit264.i.i.i.i

bb.ar:                                            ; preds = %bb.aq
  %i.gv = getelementptr inbounds nuw i8, ptr %.sroa.12106.0.copyload.i.i.i.i, i64 %.sroa.04.0213.i.i.i.i
  %i.gw = load i8, ptr %i.gv, align 1, !alias.scope !346, !noalias !347, !noundef !6
  %i.gx = icmp sgt i8 %i.gw, -65
  br i1 %i.gx, label %bb.as, label %.loopexit264.i.i.i.i

bb.as:                                            ; preds = %bb.ar, %.split.i.i.i.peel.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.gy = getelementptr inbounds nuw i8, ptr %.sroa.12106.0.copyload.i.i.i.i, i64 %.sroa.04.0213.i.i.i.i ; 4 uses
  %i.gz = icmp samesign eq i64 %.sroa.04.0213.i.i.i.i, %.sroa.13107.0.copyload.i.i.i.i
  br i1 %i.gz, label %.loopexit.i.i.i.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ha = load i8, ptr %i.gy, align 1, !noalias !348, !noundef !6 ; 4 uses
  %i.hb = icmp sgt i8 %i.ha, -1
  br i1 %i.hb, label %.thread.i.i.i, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i.peel.i.i.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i.peel.i.i.i.i: ; preds = %bb.at
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gy, i64 1
  %i.hd = and i8 %i.ha, 31
  %i.he = zext nneg i8 %i.hd to i32               ; 3 uses
  %i.hf = add nuw nsw i64 %.sroa.04.0213.i.i.i.i, 1
  %i.hg = icmp samesign ne i64 %i.hf, %.sroa.13107.0.copyload.i.i.i.i
  call void @llvm.assume(i1 %i.hg)
  %i.hh = load i8, ptr %i.hc, align 1, !noalias !348, !noundef !6
  %i.hi = shl nuw nsw i32 %i.he, 6
  %i.hj = and i8 %i.hh, 63
  %i.hk = zext nneg i8 %i.hj to i32               ; 2 uses
  %i.hl = or disjoint i32 %i.hi, %i.hk
  %i.hm = icmp samesign ugt i8 %i.ha, -33
  br i1 %i.hm, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i.peel.i.i.i.i, label %bb.au

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i.peel.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i.peel.i.i.i.i
  %i.hn = getelementptr inbounds nuw i8, ptr %i.gy, i64 2
  %i.ho = add nuw nsw i64 %.sroa.04.0213.i.i.i.i, 2
  %i.hp = icmp samesign ne i64 %i.ho, %.sroa.13107.0.copyload.i.i.i.i
  call void @llvm.assume(i1 %i.hp)
  %i.hq = load i8, ptr %i.hn, align 1, !noalias !348, !noundef !6
  %i.hr = shl nuw nsw i32 %i.hk, 6
  %i.hs = and i8 %i.hq, 63
  %i.ht = zext nneg i8 %i.hs to i32
  %i.hu = or disjoint i32 %i.hr, %i.ht            ; 2 uses
  %i.hv = shl nuw nsw i32 %i.he, 12
  %i.hw = or disjoint i32 %i.hu, %i.hv
  %i.hx = icmp samesign ugt i8 %i.ha, -17
  br i1 %i.hx, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.peel.i.i.i.i, label %bb.au

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.peel.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i.peel.i.i.i.i
  %i.hy = getelementptr inbounds nuw i8, ptr %i.gy, i64 3
  %i.hz = add nuw nsw i64 %.sroa.04.0213.i.i.i.i, 3
  %i.ia = icmp samesign ne i64 %i.hz, %.sroa.13107.0.copyload.i.i.i.i
  call void @llvm.assume(i1 %i.ia)
  %i.ib = load i8, ptr %i.hy, align 1, !noalias !348, !noundef !6
  %i.ic = shl nuw nsw i32 %i.he, 18
  %i.id = and i32 %i.ic, 1835008
  %i.ie = shl nuw nsw i32 %i.hu, 6
  %i.if = and i8 %i.ib, 63
  %i.ig = zext nneg i8 %i.if to i32
  %i.ih = or disjoint i32 %i.ie, %i.ig
  %i.ii = or disjoint i32 %i.ih, %i.id
  br label %bb.au

bb.au:                                            ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.peel.i.i.i.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i.peel.i.i.i.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i.peel.i.i.i.i
  %.sroa.4.0.i.ph.i.i.peel.i.i.i.i = phi i32 [ %i.hw, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i.peel.i.i.i.i ], [ %i.ii, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.peel.i.i.i.i ], [ %i.hl, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i.peel.i.i.i.i ] ; 4 uses
  %i.ij = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i.i.i, 1114112
  call void @llvm.assume(i1 %i.ij)
  %i.ik = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i.i.i, 128
  br i1 %i.ik, label %.thread.i.i.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.il = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i.i.i, 2048
  br i1 %i.il, label %.thread.i.i.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.im = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i.i.i, 65536
  %..i.i.peel.i.i.i.i = select i1 %i.im, i64 3, i64 4
  br label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %bb.aw, %bb.av, %bb.au, %bb.at
  %.sroa.01.0.i.i.peel.i.i.i.i = phi i64 [ 2, %bb.av ], [ %..i.i.peel.i.i.i.i, %bb.aw ], [ 1, %bb.au ], [ 1, %bb.at ]
  %i.in = add i64 %.sroa.01.0.i.i.peel.i.i.i.i, %.sroa.04.0213.i.i.i.i ; 15 uses
  %i.io = icmp eq i64 %i.in, 0
  br i1 %i.io, label %bb.az, label %bb.ax

bb.ax:                                            ; preds = %.thread.i.i.i
  %.not.i.i.i.i.i.i.i = icmp ult i64 %i.in, %.sroa.13107.0.copyload.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i, label %bb.ay, label %.split.i.i.i.i.i.i.i

.split.i.i.i.i.i.i.i:                             ; preds = %bb.ax
  %i.ip = icmp eq i64 %i.in, %.sroa.13107.0.copyload.i.i.i.i
  br i1 %i.ip, label %bb.az, label %.loopexit264.i.i.i.i

bb.ay:                                            ; preds = %bb.ax
  %i.iq = getelementptr inbounds nuw i8, ptr %.sroa.12106.0.copyload.i.i.i.i, i64 %i.in
  %i.ir = load i8, ptr %i.iq, align 1, !alias.scope !346, !noalias !347, !noundef !6
  %i.is = icmp sgt i8 %i.ir, -65
  br i1 %i.is, label %bb.az, label %.loopexit264.i.i.i.i

bb.az:                                            ; preds = %bb.ay, %.split.i.i.i.i.i.i.i, %.thread.i.i.i
  %i.it = icmp samesign eq i64 %i.in, %.sroa.13107.0.copyload.i.i.i.i
  br i1 %i.it, label %.loopexit.i.i.i.i.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.iu = getelementptr inbounds nuw i8, ptr %.sroa.12106.0.copyload.i.i.i.i, i64 %i.in
  %i.iv = load i8, ptr %i.iu, align 1, !noalias !348, !noundef !6 ; 3 uses
  %i.iw = icmp sgt i8 %i.iv, -1
  br i1 %i.iw, label %.loopexit.i.i.i.i.i, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i.i.i.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i.i.i.i.i: ; preds = %bb.ba
  %i.ix = add nuw nsw i64 %i.in, 1
  %i.iy = icmp samesign ne i64 %i.ix, %.sroa.13107.0.copyload.i.i.i.i
  call void @llvm.assume(i1 %i.iy)
  %i.iz = icmp samesign ugt i8 %i.iv, -33
  br i1 %i.iz, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i.i.i.i.i
  %i.ja = add nuw nsw i64 %i.in, 2
  %i.jb = icmp samesign ne i64 %i.ja, %.sroa.13107.0.copyload.i.i.i.i
  call void @llvm.assume(i1 %i.jb)
  %i.jc = icmp samesign ugt i8 %i.iv, -17
  br i1 %i.jc, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i.i.i.i.i
  %i.jd = add nuw nsw i64 %i.in, 3
  %i.je = icmp samesign ne i64 %i.jd, %.sroa.13107.0.copyload.i.i.i.i
  call void @llvm.assume(i1 %i.je)
  br label %.loopexit.i.i.i.i.i

.loopexit264.i.i.i.i:                             ; preds = %bb.al, %.split.i.i.i.i.peel.i.i.i, %bb.ab, %.split.i.i.i.peel.i.peel.i.i.i, %bb.ay, %.split.i.i.i.i.i.i.i, %bb.ar, %.split.i.i.i.peel.i.i.i.i
  %.sroa.465.1.lcssa.i.i.i.i = phi i64 [ %i.in, %bb.ay ], [ %.sroa.04.0213.i.i.i.i, %bb.ar ], [ %.sroa.04.0213.i.i.i.i, %.split.i.i.i.peel.i.i.i.i ], [ %i.in, %.split.i.i.i.i.i.i.i ], [ %i.fr, %bb.al ], [ %i.fr, %.split.i.i.i.i.peel.i.i.i ], [ %.sroa.498.0.copyload.i.i.i.i, %bb.ab ], [ %.sroa.498.0.copyload.i.i.i.i, %.split.i.i.i.peel.i.peel.i.i.i ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.12106.0.copyload.i.i.i.i, i64 noundef %.sroa.13107.0.copyload.i.i.i.i, i64 noundef %.sroa.465.1.lcssa.i.i.i.i, i64 noundef %.sroa.13107.0.copyload.i.i.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @65) #26
          to label %.noexc.i.i.i.i unwind label %.loopexit134.split.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !337

.noexc.i.i.i.i:                                   ; preds = %.loopexit264.i.i.i.i
  unreachable

.split198.us.i.i.i.i:                             ; preds = %.lr.ph444
  %i.jf = add i64 %i.cf, %.sroa.498.0.copyload.i.i.i.i
  %umax.i51.i.i.i.i = call i64 @llvm.umax.i64(i64 range(i64 0, -9223372036854775808) %.sroa.13107.0.copyload.i.i.i.i, i64 %i.jf)
  br label %.split198.us.invoke.i.i.i.i

.split198.us.invoke.i.i.i.i:                      ; preds = %.preheader.us.i.preheader.split.i.i.i, %bb.m, %.lr.ph440, %.lr.ph447, %.split187.us.i.i.i.i, %.split198.us.i.i.i.i
  %i.jg = phi i64 [ %umax.i51.i.i.i.i, %.split198.us.i.i.i.i ], [ %i.cp, %.lr.ph447 ], [ %i.bu, %bb.m ], [ %umax.i.i.i.i.i, %.split187.us.i.i.i.i ], [ %i.bs, %.lr.ph440 ], [ %i.au, %.preheader.us.i.preheader.split.i.i.i ]
  %i.jh = phi i64 [ %.sroa.13107.0.copyload.i.i.i.i, %.split198.us.i.i.i.i ], [ %.sroa.13107.0.copyload.i.i.i.i, %.lr.ph447 ], [ %.sroa.13107.0.copyload.i.i.i.i, %bb.m ], [ %.sroa.13107.0.copyload.i.i.i.i, %.split187.us.i.i.i.i ], [ %.sroa.15.0.copyload.i.i.i.i, %.lr.ph440 ], [ %.sroa.15.0.copyload.i.i.i.i, %.preheader.us.i.preheader.split.i.i.i ]
  %i.ji = phi ptr [ @3, %.split198.us.i.i.i.i ], [ @2, %.lr.ph447 ], [ @2, %bb.m ], [ @3, %.split187.us.i.i.i.i ], [ @1, %.lr.ph440 ], [ @1, %.preheader.us.i.preheader.split.i.i.i ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.jg, i64 noundef range(i64 0, -9223372036854775808) %i.jh, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ji) #26
          to label %.split198.us.cont.i.i.i.i unwind label %.loopexit134.split.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !337

.split198.us.cont.i.i.i.i:                        ; preds = %.split198.us.invoke.i.i.i.i
  unreachable

.split187.us.i.i.i.i:                             ; preds = %.lr.ph438
  %i.jj = add i64 %i.ba, %.sroa.0.0.i.i.us.i.i.i.i
  %umax.i.i.i.i.i = call i64 @llvm.umax.i64(i64 range(i64 0, -9223372036854775808) %.sroa.13107.0.copyload.i.i.i.i, i64 %i.jj)
  br label %.split198.us.invoke.i.i.i.i

.loopexit134.split.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.bd, %.loopexit.i.i.i.i.i, %bb.x, %.loopexit.i.us.i.i.i.i, %.loopexit.i.i.i.i, %bb.ap, %.loopexit.i.i.peel.i.i.i, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2JiOgHzbbc7_10tokenizers.exit.i.i.i.i, %.split198.us.invoke.i.i.i.i, %.loopexit264.i.i.i.i
  %lpad.loopexit.split-lp469 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %i.d) #24
          to label %.body.i.i.i unwind label %bb.bf, !noalias !337

.loopexit.i.i.i.i:                                ; preds = %bb.as, %bb.q, %bb.h, %.sink.split.i.us.i.i.i.i, %bb.v, %.loopexit265.i.peel.i.i.i, %.split.i.i.i.i
  %.sroa.04.0175.i.i.i.i = phi i64 [ 0, %.loopexit265.i.peel.i.i.i ], [ 0, %.split.i.i.i.i ], [ %.sroa.04.0.us.i.i.i.i, %.sink.split.i.us.i.i.i.i ], [ %.sroa.04.0.us.i.i.i.i, %bb.v ], [ %.sroa.04.0.us.i.i.i.i, %bb.q ], [ %.sroa.04.0.us.i.i.i.i, %bb.h ], [ %.sroa.13107.0.copyload.i.i.i.i, %bb.as ] ; 3 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.sroa.04.0175.i.i.i.i
  %gepdiff130.i.i.i.i = sub nuw nsw i64 %i.ac, %.sroa.04.0175.i.i.i.i ; 3 uses
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %gepdiff130.i.i.i.i)
          to label %.noexc26.i.i.i.i unwind label %.loopexit134.split.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !337

.noexc26.i.i.i.i:                                 ; preds = %.loopexit.i.i.i.i
  %i.jl = load i64, ptr %.sroa.512.0..sroa_idx.i.i.i.i, align 8, !alias.scope !349, !noalias !338, !noundef !6 ; 3 uses
  %i.jm = icmp sgt i64 %i.jl, -1
  call void @llvm.assume(i1 %i.jm)
  %.not.i.i.i.i.i = icmp eq i64 %i.ac, %.sroa.04.0175.i.i.i.i
  br i1 %.not.i.i.i.i.i, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %.noexc26.i.i.i.i
  %i.jn = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !349, !noalias !338, !nonnull !6, !noundef !6
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 %i.jl
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.jo, ptr nonnull readonly align 1 %i.jk, i64 %gepdiff130.i.i.i.i, i1 false), !noalias !337
  %.pre.i.i.i.i.i = load i64, ptr %.sroa.512.0..sroa_idx.i.i.i.i, align 8, !alias.scope !349, !noalias !338
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %.noexc26.i.i.i.i
  %i.jp = phi i64 [ %.pre.i.i.i.i.i, %bb.bb ], [ %i.jl, %.noexc26.i.i.i.i ]
  %i.jq = add i64 %i.jp, %gepdiff130.i.i.i.i
  store i64 %i.jq, ptr %.sroa.512.0..sroa_idx.i.i.i.i, align 8, !alias.scope !349, !noalias !338
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !350
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !338
  br label %_RINvMs3_NtCscdodAO9FK5_5alloc3stre7replaceRNtNtB8_6string6StringECs2JiOgHzbbc7_10tokenizers.exit.i.i.i

.loopexit.i.i.i.i.i:                              ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i.i.i.i.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i.i.i.i.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.i.i.i.i, %bb.ba, %bb.az
  %.sroa.465.1262.i.i.i.i = phi i64 [ %.sroa.13107.0.copyload.i.i.i.i, %bb.az ], [ %i.in, %bb.ba ], [ %i.in, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.i.i.i.i ], [ %i.in, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i.i.i.i.i ], [ %i.in, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i.i.i.i.i ] ; 3 uses
  %gepdiff.i.i.i.i = sub nuw nsw i64 %.sroa.465.1262.i.i.i.i, %.sroa.04.0213.i.i.i.i ; 3 uses
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %gepdiff.i.i.i.i)
          to label %bb.bd unwind label %.loopexit134.split.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !337

bb.bd:                                            ; preds = %.loopexit.i.i.i.i.i
  %i.jr = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.sroa.04.0213.i.i.i.i
  %i.js = load i64, ptr %.sroa.512.0..sroa_idx.i.i.i.i, align 8, !alias.scope !344, !noalias !338, !noundef !6 ; 2 uses
  %i.jt = icmp sgt i64 %i.js, -1
  call void @llvm.assume(i1 %i.jt)
  %i.ju = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !344, !noalias !338, !nonnull !6, !noundef !6
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 %i.js
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.jv, ptr nonnull readonly align 1 %i.jr, i64 %gepdiff.i.i.i.i, i1 false), !noalias !337
  %.pre.i28.i.i.i.i = load i64, ptr %.sroa.512.0..sroa_idx.i.i.i.i, align 8, !alias.scope !344, !noalias !338
  %i.jw = add i64 %.pre.i28.i.i.i.i, %gepdiff.i.i.i.i
  store i64 %i.jw, ptr %.sroa.512.0..sroa_idx.i.i.i.i, align 8, !alias.scope !344, !noalias !338
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef range(i64 0, 2) %..i.i.i)
          to label %.noexc33.i.i.i.i unwind label %.loopexit134.split.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !337

.noexc33.i.i.i.i:                                 ; preds = %bb.bd
  %i.jx = load i64, ptr %.sroa.512.0..sroa_idx.i.i.i.i, align 8, !alias.scope !345, !noalias !338, !noundef !6 ; 3 uses
  %i.jy = icmp sgt i64 %i.jx, -1
  call void @llvm.assume(i1 %i.jy)
  br i1 %i.aa, label %.lr.ph.i.i.i.i.i, label %bb.be, !llvm.loop !331

bb.be:                                            ; preds = %.noexc33.i.i.i.i
  br label %.lr.ph.i.i.i.i.i.sink.split, !llvm.loop !331

bb.bf:                                            ; preds = %.loopexit134.split.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.jz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23, !noalias !337
  unreachable

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.d, %bb.c, %bb.e
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit134.split.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp469, %.loopexit134.split.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %i.g) #24
          to label %.body.i.i unwind label %bb.bi, !noalias !333

_RINvMs3_NtCscdodAO9FK5_5alloc3stre7replaceRNtNtB8_6string6StringECs2JiOgHzbbc7_10tokenizers.exit.i.i.i: ; preds = %bb.bc, %.noexc.i.i.i
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit.i.i.i unwind label %bb.bg, !noalias !333

bb.bg:                                            ; preds = %_RINvMs3_NtCscdodAO9FK5_5alloc3stre7replaceRNtNtB8_6string6StringECs2JiOgHzbbc7_10tokenizers.exit.i.i.i
  %i.ka = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %.body.i.i unwind label %bb.bh, !noalias !333

bb.bh:                                            ; preds = %bb.bg
  %i.kb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23, !noalias !333
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit.i.i.i: ; preds = %_RINvMs3_NtCscdodAO9FK5_5alloc3stre7replaceRNtNtB8_6string6StringECs2JiOgHzbbc7_10tokenizers.exit.i.i.i
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateNtNtCscdodAO9FK5_5alloc6string6StringINtNtNtB29_3vec13in_place_drop11InPlaceDropB25_EINtNtBf_6result6ResultB2G_zENCINvNtBb_3map12map_try_foldTjB25_EB25_B2G_B3s_NCNvXs0_NtNtCs2JiOgHzbbc7_10tokenizers8decoders3bpeNtB4N_10BPEDecoderNtNtB4R_9tokenizer7Decoder12decode_chain0NCINvNtB2L_16in_place_collect24write_in_place_with_dropB25_E0E0E0B4R_.exit unwind label %bb.bj, !noalias !334

bb.bi:                                            ; preds = %.body.i.i.i
  %i.kc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23, !noalias !333
  unreachable

bb.bj:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit.i.i.i
  %i.kd = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

bb.bk:                                            ; preds = %.body.i.i
  resume { ptr, i32 } %eh.lpad-body.i.i

.body.i.i:                                        ; preds = %bb.bj, %bb.bg, %.body.i.i.i
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.kd, %bb.bj ], [ %i.ka, %bb.bg ], [ %eh.lpad-body.i.i.i, %.body.i.i.i ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec13in_place_drop11InPlaceDropNtNtBI_6string6StringEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(16) %i.i) #24
          to label %bb.bk unwind label %bb.bl, !noalias !334

bb.bl:                                            ; preds = %.body.i.i
  %i.ke = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23, !noalias !334
  unreachable

_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateNtNtCscdodAO9FK5_5alloc6string6StringINtNtNtB29_3vec13in_place_drop11InPlaceDropB25_EINtNtBf_6result6ResultB2G_zENCINvNtBb_3map12map_try_foldTjB25_EB25_B2G_B3s_NCNvXs0_NtNtCs2JiOgHzbbc7_10tokenizers8decoders3bpeNtB4N_10BPEDecoderNtNtB4R_9tokenizer7Decoder12decode_chain0NCINvNtB2L_16in_place_collect24write_in_place_with_dropB25_E0E0E0B4R_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !333
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0130, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !noalias !334
  %i.kf = getelementptr inbounds nuw i8, ptr %.sroa.4.0130, i64 24 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !334
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !334
  %i.kg = load i64, ptr %.val6, align 8, !noalias !332, !noundef !6
  %i.kh = add i64 %i.kg, 1                        ; 2 uses
  store i64 %i.kh, ptr %.val6, align 8, !noalias !332
  %.not = icmp eq ptr %i.y, %i.l
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateNtNtCscdodAO9FK5_5alloc6string6StringINtNtNtB29_3vec13in_place_drop11InPlaceDropB25_EINtNtBf_6result6ResultB2G_zENCINvNtBb_3map12map_try_foldTjB25_EB25_B2G_B3s_NCNvXs0_NtNtCs2JiOgHzbbc7_10tokenizers8decoders3bpeNtB4N_10BPEDecoderNtNtB4R_9tokenizer7Decoder12decode_chain0NCINvNtB2L_16in_place_collect24write_in_place_with_dropB25_E0E0E0B4R_.exit, %bb.a
  %.sroa.4.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.kf, %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateNtNtCscdodAO9FK5_5alloc6string6StringINtNtNtB29_3vec13in_place_drop11InPlaceDropB25_EINtNtBf_6result6ResultB2G_zENCINvNtBb_3map12map_try_foldTjB25_EB25_B2G_B3s_NCNvXs0_NtNtCs2JiOgHzbbc7_10tokenizers8decoders3bpeNtB4N_10BPEDecoderNtNtB4R_9tokenizer7Decoder12decode_chain0NCINvNtB2L_16in_place_collect24write_in_place_with_dropB25_E0E0E0B4R_.exit ]
  %i.ki = insertvalue { ptr, ptr } poison, ptr %1, 0
  %i.kj = insertvalue { ptr, ptr } %i.ki, ptr %.sroa.4.0.lcssa, 1
  ret { ptr, ptr } %i.kj
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB6_8IntoIterNtNtBa_6string6StringENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1i_4find5checkBW_QNCINvNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5model25convert_merges_to_hashmapBH_E0E0INtNtNtB1q_3ops12control_flow11ControlFlowBW_EEB2Y_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noalias noundef nonnull %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 11 uses
  %.sroa.6 = alloca [16 x i8], align 8            ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %2, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.e, align 8        ; 2 uses
  %.not11 = icmp eq ptr %.promoted, %i.d
  br i1 %.not11, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.j
  %i.f = phi ptr [ %.promoted, %.lr.ph ], [ %i.g, %bb.j ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 3 uses
  store ptr %i.g, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.experimental.noalias.scope.decl(metadata !355)
  %i.h = invoke noundef zeroext i1 @_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCINvNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5model25convert_merges_to_hashmapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtB2e_6string6StringEE0INtB7_5FnMutTRB2U_EE8call_mutBZ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a)
          to label %bb.d unwind label %bb.c, !noalias !355

bb.c:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a) #24
          to label %common.resume.i unwind label %bb.h, !noalias !355

bb.d:                                             ; preds = %bb.b
  br i1 %i.h, label %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkNtNtCscdodAO9FK5_5alloc6string6StringQNCINvNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5model25convert_merges_to_hashmapINtNtNtB1g_3vec9into_iter8IntoIterB1c_EE0E0B1Z_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkNtNtCscdodAO9FK5_5alloc6string6StringQNCINvNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5model25convert_merges_to_hashmapINtNtNtB1g_3vec9into_iter8IntoIterB1c_EE0E0B1Z_.exit.thread unwind label %bb.f, !noalias !355

bb.f:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          cleanup
end_hunk_1
