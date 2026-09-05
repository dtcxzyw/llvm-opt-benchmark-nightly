Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_expr-c150671a77946377.polars_expr.f440eb239ff47e82-cgu.15?download=true
inline.NumInlined: 9427
inline.NumDeleted: 4812
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 26
loop-unroll.NumUnrolled: 45
begin_hunk_0_@_RNvXs7_NtNtCs2Aa799EbAFJ_11polars_time7windows8durationNtB5_8DurationNtNtCscgRAwXFJnXP_4core3fmt5Debug3fmt:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !145094
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !145094
  ret i1 %i.s, !dbg !145095
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc range(i32 0, -65535) i32 @_RNvXs8_CslmKYcnV0hjo_10num_traitstNtB5_3Num14from_str_radix(ptr noalias noundef nonnull readonly captures(none) %0, i64 noundef %1, i32 noundef %2) unnamed_addr #2 !dbg !145096 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !145126), !dbg !145129
  %i.a = add i32 %2, -37, !dbg !145130
  %or.cond.i = icmp ult i32 %i.a, -35, !dbg !145130
  br i1 %or.cond.i, label %bb.b, label %bb.c, !dbg !145130, !prof !3013

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core3num22from_ascii_radix_panic(i32 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @311) #35, !dbg !145131, !noalias !145126
  unreachable, !dbg !145131

bb.c:                                             ; preds = %bb.a
  switch i64 %1, label %thread-pre-split.i [
    i64 0, label %_RNvMsz_NtCscgRAwXFJnXP_4core3numt16from_ascii_radix.exit
    i64 1, label %bb.d
  ], !dbg !145132

bb.d:                                             ; preds = %bb.c
  %i.b = load i8, ptr %0, align 1, !dbg !145133, !alias.scope !145126, !noundef !2531 ; 2 uses
  switch i8 %i.b, label %bb.e [
    i8 43, label %_RNvMsz_NtCscgRAwXFJnXP_4core3numt16from_ascii_radix.exit
    i8 45, label %_RNvMsz_NtCscgRAwXFJnXP_4core3numt16from_ascii_radix.exit
  ], !dbg !145133

thread-pre-split.i:                               ; preds = %bb.c
  %.pr.i = load i8, ptr %0, align 1, !dbg !145133, !alias.scope !145126
  br label %bb.e, !dbg !145133

bb.e:                                             ; preds = %thread-pre-split.i, %bb.d
  %i.c = phi i8 [ %.pr.i, %thread-pre-split.i ], [ %i.b, %bb.d ], !dbg !145133
  %cond.i = icmp eq i8 %i.c, 43, !dbg !145133     ; 2 uses
  %i.d = sext i1 %cond.i to i64, !dbg !145133
  %.sroa.15.0.i = add nsw i64 %1, %i.d, !dbg !145133 ; 11 uses
  %.sroa.0.0.idx.i = zext i1 %cond.i to i64, !dbg !145133
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.0.idx.i, !dbg !145133 ; 10 uses
  %i.e = icmp samesign ult i32 %2, 17, !dbg !145134
  %i.f = icmp samesign ult i64 %.sroa.15.0.i, 5
  %or.cond1.i = and i1 %i.e, %i.f, !dbg !145134
  br i1 %or.cond1.i, label %.preheader.i, label %.preheader62.i, !dbg !145134

.preheader62.i:                                   ; preds = %bb.e
  %i.g = trunc nuw nsw i32 %2 to i16              ; 2 uses
  %i.h = icmp samesign ugt i32 %2, 10             ; 2 uses
  %.not53.i80 = icmp eq i64 %.sroa.15.0.i, 0, !dbg !145135 ; 2 uses
  br i1 %i.h, label %.preheader62.split.i.preheader, label %.preheader62.split.us.i.preheader

.preheader62.split.us.i.preheader:                ; preds = %.preheader62.i
  br i1 %.not53.i80, label %.loopexit.i, label %.lr.ph, !dbg !145135

.preheader62.split.i.preheader:                   ; preds = %.preheader62.i
  br i1 %.not53.i80, label %.loopexit.i, label %.lr.ph84, !dbg !145135

.preheader62.split.us.i:                          ; preds = %bb.g
  %.not53.us.i = icmp eq i64 %i.j, 0, !dbg !145135
  br i1 %.not53.us.i, label %.loopexit.i, label %.lr.ph, !dbg !145135

.lr.ph:                                           ; preds = %.preheader62.split.us.i.preheader, %.preheader62.split.us.i
  %.sroa.0.1.us.i79 = phi ptr [ %i.i, %.preheader62.split.us.i ], [ %.sroa.0.0.i, %.preheader62.split.us.i.preheader ] ; 3 uses
  %.sroa.15.1.us.i78 = phi i64 [ %i.j, %.preheader62.split.us.i ], [ %.sroa.15.0.i, %.preheader62.split.us.i.preheader ]
  %.sroa.043.0.us.i77 = phi i16 [ %i.s, %.preheader62.split.us.i ], [ 0, %.preheader62.split.us.i.preheader ]
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.1.us.i79, i64 1, !dbg !145136
  %i.j = add nsw i64 %.sroa.15.1.us.i78, -1, !dbg !145136 ; 2 uses
  %i.k = tail call { i16, i1 } @llvm.umul.with.overflow.i16(i16 %.sroa.043.0.us.i77, i16 %i.g), !dbg !145137 ; 2 uses
  %i.l = extractvalue { i16, i1 } %i.k, 0, !dbg !145137 ; 2 uses
  %i.m = extractvalue { i16, i1 } %i.k, 1, !dbg !145137
  br i1 %i.m, label %.split.us.i, label %bb.f, !dbg !145138, !prof !2688

bb.f:                                             ; preds = %.lr.ph
  %i.n = load i8, ptr %.sroa.0.1.us.i79, align 1, !dbg !145139, !alias.scope !145126, !noundef !2531
  %i.o = zext i8 %i.n to i32, !dbg !145140
  %i.p = add nsw i32 %i.o, -48, !dbg !145141      ; 2 uses
  %i.q = icmp ult i32 %i.p, %2, !dbg !145142
  br i1 %i.q, label %bb.g, label %_RNvMsz_NtCscgRAwXFJnXP_4core3numt16from_ascii_radix.exit, !dbg !145143

bb.g:                                             ; preds = %bb.f
  %i.r = trunc nuw nsw i32 %i.p to i16, !dbg !145144
  %i.s = add i16 %i.l, %i.r, !dbg !145145         ; 3 uses
  %i.t = icmp ult i16 %i.s, %i.l, !dbg !145145
  br i1 %i.t, label %_RNvMsz_NtCscgRAwXFJnXP_4core3numt16from_ascii_radix.exit, label %.preheader62.split.us.i, !dbg !145146, !prof !2688

.preheader.i:                                     ; preds = %bb.e
  %.not5472.i = icmp eq i64 %.sroa.15.0.i, 0, !dbg !145147
  br i1 %.not5472.i, label %.loopexit.i, label %.lr.ph.i, !dbg !145147

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.u = icmp samesign ugt i32 %2, 10
  %i.v = trunc nuw nsw i32 %2 to i16              ; 6 uses
  br i1 %i.u, label %.lr.ph.split.i, label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i
  %i.w = load i8, ptr %.sroa.0.0.i, align 1, !dbg !145148, !alias.scope !145126, !noundef !2531
  %i.x = zext i8 %i.w to i32, !dbg !145149
  %i.y = add nsw i32 %i.x, -48, !dbg !145150      ; 2 uses
  %i.z = icmp ult i32 %i.y, %2, !dbg !145151
  br i1 %i.z, label %bb.h, label %_RNvMsz_NtCscgRAwXFJnXP_4core3numt16from_ascii_radix.exit, !dbg !145152

bb.h:                                             ; preds = %.lr.ph.split.us.i
  %i.aa = trunc nuw nsw i32 %i.y to i16, !dbg !145153 ; 2 uses
  %.not54.us.i = icmp eq i64 %.sroa.15.0.i, 1, !dbg !145147
  br i1 %.not54.us.i, label %.loopexit.i, label %.lr.ph.split.us.i.1, !dbg !145147

.lr.ph.split.us.i.1:                              ; preds = %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 1, !dbg !145154
  %i.ac = load i8, ptr %i.ab, align 1, !dbg !145148, !alias.scope !145126, !noundef !2531
  %i.ad = zext i8 %i.ac to i32, !dbg !145149
  %i.ae = add nsw i32 %i.ad, -48, !dbg !145150    ; 2 uses
  %i.af = icmp ult i32 %i.ae, %2, !dbg !145151
  br i1 %i.af, label %bb.i, label %_RNvMsz_NtCscgRAwXFJnXP_4core3numt16from_ascii_radix.exit, !dbg !145152

bb.i:                                             ; preds = %.lr.ph.split.us.i.1
  %i.ag = mul nsw i16 %i.aa, %i.v, !dbg !145155
  %i.ah = trunc nuw nsw i32 %i.ae to i16, !dbg !145153
  %i.ai = add nsw i16 %i.ag, %i.ah, !dbg !145156  ; 2 uses
  %.not54.us.i.1 = icmp eq i64 %.sroa.15.0.i, 2, !dbg !145147
  br i1 %.not54.us.i.1, label %.loopexit.i, label %.lr.ph.split.us.i.2, !dbg !145147

.lr.ph.split.us.i.2:                              ; preds = %bb.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 2, !dbg !145154
  %i.ak = load i8, ptr %i.aj, align 1, !dbg !145148, !alias.scope !145126, !noundef !2531
  %i.al = zext i8 %i.ak to i32, !dbg !145149
  %i.am = add nsw i32 %i.al, -48, !dbg !145150    ; 2 uses
  %i.an = icmp ult i32 %i.am, %2, !dbg !145151
  br i1 %i.an, label %bb.j, label %_RNvMsz_NtCscgRAwXFJnXP_4core3numt16from_ascii_radix.exit, !dbg !145152

bb.j:                                             ; preds = %.lr.ph.split.us.i.2
  %i.ao = mul i16 %i.ai, %i.v, !dbg !145155
  %i.ap = trunc nuw nsw i32 %i.am to i16, !dbg !145153
  %i.aq = add i16 %i.ao, %i.ap, !dbg !145156      ; 2 uses
  %.not54.us.i.2 = icmp eq i64 %.sroa.15.0.i, 3, !dbg !145147
  br i1 %.not54.us.i.2, label %.loopexit.i, label %.lr.ph.split.us.i.3, !dbg !145147

.lr.ph.split.us.i.3:                              ; preds = %bb.j
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 3, !dbg !145154
  %i.as = load i8, ptr %i.ar, align 1, !dbg !145148, !alias.scope !145126, !noundef !2531
  %i.at = zext i8 %i.as to i32, !dbg !145149
  %i.au = add nsw i32 %i.at, -48, !dbg !145150    ; 2 uses
  %i.av = icmp ult i32 %i.au, %2, !dbg !145151
  br i1 %i.av, label %bb.k, label %_RNvMsz_NtCscgRAwXFJnXP_4core3numt16from_ascii_radix.exit, !dbg !145152

bb.k:                                             ; preds = %.lr.ph.split.us.i.3
  %i.aw = mul i16 %i.aq, %i.v, !dbg !145155
  %i.ax = trunc nuw nsw i32 %i.au to i16, !dbg !145153
  %i.ay = add i16 %i.aw, %i.ax, !dbg !145156
  br label %.loopexit.i, !dbg !145147

.preheader62.split.i:                             ; preds = %bb.m
  %.not53.i = icmp eq i64 %i.bc, 0, !dbg !145135
  br i1 %.not53.i, label %.loopexit.i, label %.lr.ph84, !dbg !145135

.loopexit.i:                                      ; preds = %.preheader62.split.us.i, %.preheader62.split.i, %bb.h, %bb.i, %bb.j, %bb.k, %bb.n, %bb.o, %bb.p, %bb.q, %.preheader62.split.us.i.preheader, %.preheader62.split.i.preheader, %.preheader.i
  %.sroa.043.1.i = phi i16 [ %i.dr, %bb.q ], [ 0, %.preheader.i ], [ %i.bx, %.preheader62.split.i ], [ %i.ay, %bb.k ], [ 0, %.preheader62.split.i.preheader ], [ 0, %.preheader62.split.us.i.preheader ], [ %i.ch, %bb.n ], [ %i.ct, %bb.o ], [ %i.df, %bb.p ], [ %i.aa, %bb.h ], [ %i.ai, %bb.i ], [ %i.aq, %bb.j ], [ %i.s, %.preheader62.split.us.i ], !dbg !145157
  %i.az = zext i16 %.sroa.043.1.i to i32, !dbg !145158
  %i.ba = shl nuw i32 %i.az, 16, !dbg !145158
  br label %_RNvMsz_NtCscgRAwXFJnXP_4core3numt16from_ascii_radix.exit, !dbg !145158

.lr.ph84:                                         ; preds = %.preheader62.split.i.preheader, %.preheader62.split.i
  %.sroa.0.1.i83 = phi ptr [ %i.bb, %.preheader62.split.i ], [ %.sroa.0.0.i, %.preheader62.split.i.preheader ] ; 3 uses
  %.sroa.15.1.i82 = phi i64 [ %i.bc, %.preheader62.split.i ], [ %.sroa.15.0.i, %.preheader62.split.i.preheader ]
  %.sroa.043.0.i81 = phi i16 [ %i.bx, %.preheader62.split.i ], [ 0, %.preheader62.split.i.preheader ]
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i83, i64 1, !dbg !145136
  %i.bc = add nsw i64 %.sroa.15.1.i82, -1, !dbg !145136 ; 2 uses
  %i.bd = tail call { i16, i1 } @llvm.umul.with.overflow.i16(i16 %.sroa.043.0.i81, i16 %i.g), !dbg !145137 ; 2 uses
  %i.be = extractvalue { i16, i1 } %i.bd, 0, !dbg !145137 ; 2 uses
  %i.bf = extractvalue { i16, i1 } %i.bd, 1, !dbg !145137
  br i1 %i.bf, label %.split.us.i, label %bb.l, !dbg !145138, !prof !2688

bb.l:                                             ; preds = %.lr.ph84
  %i.bg = load i8, ptr %.sroa.0.1.i83, align 1, !dbg !145139, !alias.scope !145126, !noundef !2531 ; 2 uses
  %i.bh = zext i8 %i.bg to i32, !dbg !145140      ; 2 uses
  %i.bi = icmp ugt i8 %i.bg, 57, !dbg !145141
  %i.bj = add nsw i32 %i.bh, -65, !dbg !145141
  %i.bk = and i32 %i.bj, -33, !dbg !145141
  %i.bl = add nuw nsw i32 %i.bk, 10, !dbg !145141
  %i.bm = add nsw i32 %i.bh, -48, !dbg !145141
  %spec.select79.i = select i1 %i.bi, i32 %i.bl, i32 %i.bm, !dbg !145141 ; 2 uses
  %i.bn = icmp ult i32 %spec.select79.i, %2, !dbg !145142
  br i1 %i.bn, label %bb.m, label %_RNvMsz_NtCscgRAwXFJnXP_4core3numt16from_ascii_radix.exit, !dbg !145143

.split.us.i:                                      ; preds = %.lr.ph, %.lr.ph84
  %.us-phi70.i = phi ptr [ %.sroa.0.1.i83, %.lr.ph84 ], [ %.sroa.0.1.us.i79, %.lr.ph ], !dbg !145139
  %i.bo = load i8, ptr %.us-phi70.i, align 1, !dbg !145139, !alias.scope !145126, !noundef !2531 ; 2 uses
  %i.bp = zext i8 %i.bo to i32, !dbg !145140      ; 2 uses
  %i.bq = icmp ugt i8 %i.bo, 57, !dbg !145159
  %or.cond1.i55.i = and i1 %i.h, %i.bq, !dbg !145159
  %i.br = add nsw i32 %i.bp, -65, !dbg !145159
  %i.bs = and i32 %i.br, -33, !dbg !145159
  %i.bt = add nuw nsw i32 %i.bs, 10, !dbg !145159
  %i.bu = add nsw i32 %i.bp, -48, !dbg !145159
  %.sroa.02.0.i56.i = select i1 %or.cond1.i55.i, i32 %i.bt, i32 %i.bu, !dbg !145159
  %i.bv = icmp ult i32 %.sroa.02.0.i56.i, %2, !dbg !145160
  %spec.select.i = select i1 %i.bv, i32 513, i32 257, !dbg !145143
  br label %_RNvMsz_NtCscgRAwXFJnXP_4core3numt16from_ascii_radix.exit, !dbg !145143

bb.m:                                             ; preds = %bb.l
  %i.bw = trunc nsw i32 %spec.select79.i to i16, !dbg !145144
  %i.bx = add i16 %i.be, %i.bw, !dbg !145145      ; 3 uses
  %i.by = icmp ult i16 %i.bx, %i.be, !dbg !145145
  br i1 %i.by, label %_RNvMsz_NtCscgRAwXFJnXP_4core3numt16from_ascii_radix.exit, label %.preheader62.split.i, !dbg !145146, !prof !2688

.lr.ph.split.i:                                   ; preds = %.lr.ph.i
  %i.bz = load i8, ptr %.sroa.0.0.i, align 1, !dbg !145148, !alias.scope !145126, !noundef !2531 ; 2 uses
  %i.ca = zext i8 %i.bz to i32, !dbg !145149      ; 2 uses
  %i.cb = icmp ugt i8 %i.bz, 57, !dbg !145150
  %i.cc = add nsw i32 %i.ca, -65, !dbg !145150
  %i.cd = and i32 %i.cc, -33, !dbg !145150
  %i.ce = add nuw nsw i32 %i.cd, 10, !dbg !145150
  %i.cf = add nsw i32 %i.ca, -48, !dbg !145150
  %spec.select80.i = select i1 %i.cb, i32 %i.ce, i32 %i.cf, !dbg !145150 ; 2 uses
  %i.cg = icmp ult i32 %spec.select80.i, %2, !dbg !145151
  br i1 %i.cg, label %bb.n, label %_RNvMsz_NtCscgRAwXFJnXP_4core3numt16from_ascii_radix.exit, !dbg !145152

bb.n:                                             ; preds = %.lr.ph.split.i
  %i.ch = trunc nuw nsw i32 %spec.select80.i to i16, !dbg !145153 ; 2 uses
  %.not54.i = icmp eq i64 %.sroa.15.0.i, 1, !dbg !145147
  br i1 %.not54.i, label %.loopexit.i, label %.lr.ph.split.i.1, !dbg !145147

.lr.ph.split.i.1:                                 ; preds = %bb.n
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 1, !dbg !145154
  %i.cj = load i8, ptr %i.ci, align 1, !dbg !145148, !alias.scope !145126, !noundef !2531 ; 2 uses
  %i.ck = zext i8 %i.cj to i32, !dbg !145149      ; 2 uses
  %i.cl = icmp ugt i8 %i.cj, 57, !dbg !145150
  %i.cm = add nsw i32 %i.ck, -65, !dbg !145150
  %i.cn = and i32 %i.cm, -33, !dbg !145150
  %i.co = add nuw nsw i32 %i.cn, 10, !dbg !145150
  %i.cp = add nsw i32 %i.ck, -48, !dbg !145150
  %spec.select80.i.1 = select i1 %i.cl, i32 %i.co, i32 %i.cp, !dbg !145150 ; 2 uses
  %i.cq = icmp ult i32 %spec.select80.i.1, %2, !dbg !145151
  br i1 %i.cq, label %bb.o, label %_RNvMsz_NtCscgRAwXFJnXP_4core3numt16from_ascii_radix.exit, !dbg !145152

bb.o:                                             ; preds = %.lr.ph.split.i.1
  %i.cr = mul nsw i16 %i.ch, %i.v, !dbg !145155
  %i.cs = trunc nuw nsw i32 %spec.select80.i.1 to i16, !dbg !145153
  %i.ct = add i16 %i.cr, %i.cs, !dbg !145156      ; 2 uses
  %.not54.i.1 = icmp eq i64 %.sroa.15.0.i, 2, !dbg !145147
  br i1 %.not54.i.1, label %.loopexit.i, label %.lr.ph.split.i.2, !dbg !145147

.lr.ph.split.i.2:                                 ; preds = %bb.o
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 2, !dbg !145154
  %i.cv = load i8, ptr %i.cu, align 1, !dbg !145148, !alias.scope !145126, !noundef !2531 ; 2 uses
  %i.cw = zext i8 %i.cv to i32, !dbg !145149      ; 2 uses
  %i.cx = icmp ugt i8 %i.cv, 57, !dbg !145150
  %i.cy = add nsw i32 %i.cw, -65, !dbg !145150
  %i.cz = and i32 %i.cy, -33, !dbg !145150
  %i.da = add nuw nsw i32 %i.cz, 10, !dbg !145150
  %i.db = add nsw i32 %i.cw, -48, !dbg !145150
  %spec.select80.i.2 = select i1 %i.cx, i32 %i.da, i32 %i.db, !dbg !145150 ; 2 uses
  %i.dc = icmp ult i32 %spec.select80.i.2, %2, !dbg !145151
  br i1 %i.dc, label %bb.p, label %_RNvMsz_NtCscgRAwXFJnXP_4core3numt16from_ascii_radix.exit, !dbg !145152

bb.p:                                             ; preds = %.lr.ph.split.i.2
  %i.dd = mul i16 %i.ct, %i.v, !dbg !145155
  %i.de = trunc nuw nsw i32 %spec.select80.i.2 to i16, !dbg !145153
  %i.df = add i16 %i.dd, %i.de, !dbg !145156      ; 2 uses
  %.not54.i.2 = icmp eq i64 %.sroa.15.0.i, 3, !dbg !145147
  br i1 %.not54.i.2, label %.loopexit.i, label %.lr.ph.split.i.3, !dbg !145147

.lr.ph.split.i.3:                                 ; preds = %bb.p
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 3, !dbg !145154
  %i.dh = load i8, ptr %i.dg, align 1, !dbg !145148, !alias.scope !145126, !noundef !2531 ; 2 uses
  %i.di = zext i8 %i.dh to i32, !dbg !145149      ; 2 uses
  %i.dj = icmp ugt i8 %i.dh, 57, !dbg !145150
  %i.dk = add nsw i32 %i.di, -65, !dbg !145150
  %i.dl = and i32 %i.dk, -33, !dbg !145150
  %i.dm = add nuw nsw i32 %i.dl, 10, !dbg !145150
  %i.dn = add nsw i32 %i.di, -48, !dbg !145150
  %spec.select80.i.3 = select i1 %i.dj, i32 %i.dm, i32 %i.dn, !dbg !145150 ; 2 uses
  %i.do = icmp ult i32 %spec.select80.i.3, %2, !dbg !145151
  br i1 %i.do, label %bb.q, label %_RNvMsz_NtCscgRAwXFJnXP_4core3numt16from_ascii_radix.exit, !dbg !145152

bb.q:                                             ; preds = %.lr.ph.split.i.3
  %i.dp = mul i16 %i.df, %i.v, !dbg !145155
  %i.dq = trunc nuw nsw i32 %spec.select80.i.3 to i16, !dbg !145153
  %i.dr = add i16 %i.dp, %i.dq, !dbg !145156
  br label %.loopexit.i, !dbg !145147

_RNvMsz_NtCscgRAwXFJnXP_4core3numt16from_ascii_radix.exit: ; preds = %bb.f, %bb.g, %bb.l, %bb.m, %.lr.ph.split.us.i, %.lr.ph.split.us.i.1, %.lr.ph.split.us.i.2, %.lr.ph.split.us.i.3, %.lr.ph.split.i, %.lr.ph.split.i.1, %.lr.ph.split.i.2, %.lr.ph.split.i.3, %bb.c, %bb.d, %bb.d, %.loopexit.i, %.split.us.i
  %.sroa.8.0.insert.insert.i = phi i32 [ 257, %.lr.ph.split.i ], [ %i.ba, %.loopexit.i ], [ 257, %bb.d ], [ 1, %bb.c ], [ 257, %bb.d ], [ %spec.select.i, %.split.us.i ], [ 513, %bb.m ], [ 257, %.lr.ph.split.us.i ], [ 257, %.lr.ph.split.i.3 ], [ 257, %.lr.ph.split.i.2 ], [ 257, %.lr.ph.split.i.1 ], [ 257, %.lr.ph.split.us.i.3 ], [ 257, %.lr.ph.split.us.i.2 ], [ 257, %.lr.ph.split.us.i.1 ], [ 257, %bb.l ], [ 257, %bb.f ], [ 513, %bb.g ], !dbg !145158
  ret i32 %.sroa.8.0.insert.insert.i, !dbg !145161
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc range(i64 0, -4294967295) i64 @_RNvXs9_CslmKYcnV0hjo_10num_traitsmNtB5_3Num14from_str_radix(ptr noalias noundef nonnull readonly captures(none) %0, i64 noundef %1, i32 noundef %2) unnamed_addr #2 !dbg !145162 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !145192), !dbg !145195
  %i.a = add i32 %2, -37, !dbg !145196
  %or.cond.i = icmp ult i32 %i.a, -35, !dbg !145196
  br i1 %or.cond.i, label %bb.b, label %bb.c, !dbg !145196, !prof !3013

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core3num22from_ascii_radix_panic(i32 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @311) #35, !dbg !145197, !noalias !145192
  unreachable, !dbg !145197

bb.c:                                             ; preds = %bb.a
  switch i64 %1, label %thread-pre-split.i [
    i64 0, label %_RNvMsB_NtCscgRAwXFJnXP_4core3numm16from_ascii_radix.exit
    i64 1, label %bb.d
  ], !dbg !145198

bb.d:                                             ; preds = %bb.c
  %i.b = load i8, ptr %0, align 1, !dbg !145199, !alias.scope !145192, !noundef !2531 ; 2 uses
  switch i8 %i.b, label %bb.e [
    i8 43, label %_RNvMsB_NtCscgRAwXFJnXP_4core3numm16from_ascii_radix.exit
    i8 45, label %_RNvMsB_NtCscgRAwXFJnXP_4core3numm16from_ascii_radix.exit
  ], !dbg !145199

thread-pre-split.i:                               ; preds = %bb.c
  %.pr.i = load i8, ptr %0, align 1, !dbg !145199, !alias.scope !145192
  br label %bb.e, !dbg !145199

bb.e:                                             ; preds = %thread-pre-split.i, %bb.d
  %i.c = phi i8 [ %.pr.i, %thread-pre-split.i ], [ %i.b, %bb.d ], !dbg !145199
  %cond.i = icmp eq i8 %i.c, 43, !dbg !145199     ; 2 uses
  %i.d = sext i1 %cond.i to i64, !dbg !145199
  %.sroa.15.0.i = add nsw i64 %1, %i.d, !dbg !145199 ; 19 uses
  %.sroa.0.0.idx.i = zext i1 %cond.i to i64, !dbg !145199
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.0.idx.i, !dbg !145199 ; 18 uses
  %i.e = icmp samesign ult i32 %2, 17, !dbg !145200
  %i.f = icmp samesign ult i64 %.sroa.15.0.i, 9
  %or.cond1.i = and i1 %i.e, %i.f, !dbg !145200
  br i1 %or.cond1.i, label %.preheader.i, label %.preheader64.i, !dbg !145200

.preheader64.i:                                   ; preds = %bb.e
  %i.g = icmp samesign ugt i32 %2, 10             ; 2 uses
  %.not55.i80 = icmp eq i64 %.sroa.15.0.i, 0, !dbg !145201 ; 2 uses
  br i1 %i.g, label %.preheader64.split.i.preheader, label %.preheader64.split.us.i.preheader

.preheader64.split.us.i.preheader:                ; preds = %.preheader64.i
  br i1 %.not55.i80, label %.loopexit.i, label %.lr.ph, !dbg !145201

.preheader64.split.i.preheader:                   ; preds = %.preheader64.i
  br i1 %.not55.i80, label %.loopexit.i, label %.lr.ph84, !dbg !145201

.preheader64.split.us.i:                          ; preds = %bb.g
  %.not55.us.i = icmp eq i64 %i.i, 0, !dbg !145201
  br i1 %.not55.us.i, label %.loopexit.i, label %.lr.ph, !dbg !145201

.lr.ph:                                           ; preds = %.preheader64.split.us.i.preheader, %.preheader64.split.us.i
  %.sroa.0.1.us.i79 = phi ptr [ %i.h, %.preheader64.split.us.i ], [ %.sroa.0.0.i, %.preheader64.split.us.i.preheader ] ; 3 uses
  %.sroa.15.1.us.i78 = phi i64 [ %i.i, %.preheader64.split.us.i ], [ %.sroa.15.0.i, %.preheader64.split.us.i.preheader ]
  %.sroa.045.0.us.i77 = phi i32 [ %i.q, %.preheader64.split.us.i ], [ 0, %.preheader64.split.us.i.preheader ]
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.1.us.i79, i64 1, !dbg !145202
  %i.i = add nsw i64 %.sroa.15.1.us.i78, -1, !dbg !145202 ; 2 uses
  %i.j = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %.sroa.045.0.us.i77, i32 %2), !dbg !145203 ; 2 uses
  %i.k = extractvalue { i32, i1 } %i.j, 0, !dbg !145203 ; 2 uses
  %i.l = extractvalue { i32, i1 } %i.j, 1, !dbg !145203
  br i1 %i.l, label %.split.us.i, label %bb.f, !dbg !145204, !prof !2688

bb.f:                                             ; preds = %.lr.ph
  %i.m = load i8, ptr %.sroa.0.1.us.i79, align 1, !dbg !145205, !alias.scope !145192, !noundef !2531
  %i.n = zext i8 %i.m to i32, !dbg !145206
  %i.o = add nsw i32 %i.n, -48, !dbg !145207      ; 2 uses
  %i.p = icmp ult i32 %i.o, %2, !dbg !145208
  br i1 %i.p, label %bb.g, label %_RNvMsB_NtCscgRAwXFJnXP_4core3numm16from_ascii_radix.exit, !dbg !145209

bb.g:                                             ; preds = %bb.f
  %i.q = add i32 %i.o, %i.k, !dbg !145210         ; 3 uses
  %i.r = icmp ult i32 %i.q, %i.k, !dbg !145210
  br i1 %i.r, label %_RNvMsB_NtCscgRAwXFJnXP_4core3numm16from_ascii_radix.exit, label %.preheader64.split.us.i, !dbg !145211, !prof !2688

.preheader.i:                                     ; preds = %bb.e
  %.not5674.i = icmp eq i64 %.sroa.15.0.i, 0, !dbg !145212
  br i1 %.not5674.i, label %.loopexit.i, label %.lr.ph.i, !dbg !145212

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.s = icmp samesign ugt i32 %2, 10
  br i1 %i.s, label %.lr.ph.split.i, label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i
  %i.t = load i8, ptr %.sroa.0.0.i, align 1, !dbg !145213, !alias.scope !145192, !noundef !2531
  %i.u = zext i8 %i.t to i32, !dbg !145214
  %i.v = add nsw i32 %i.u, -48, !dbg !145215      ; 3 uses
  %i.w = icmp ult i32 %i.v, %2, !dbg !145216
  br i1 %i.w, label %bb.h, label %_RNvMsB_NtCscgRAwXFJnXP_4core3numm16from_ascii_radix.exit, !dbg !145217

bb.h:                                             ; preds = %.lr.ph.split.us.i
  %.not56.us.i = icmp eq i64 %.sroa.15.0.i, 1, !dbg !145212
  br i1 %.not56.us.i, label %.loopexit.i, label %.lr.ph.split.us.i.1, !dbg !145212

.lr.ph.split.us.i.1:                              ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 1, !dbg !145218
  %i.y = load i8, ptr %i.x, align 1, !dbg !145213, !alias.scope !145192, !noundef !2531
  %i.z = zext i8 %i.y to i32, !dbg !145214
  %i.aa = add nsw i32 %i.z, -48, !dbg !145215     ; 2 uses
  %i.ab = icmp ult i32 %i.aa, %2, !dbg !145216
  br i1 %i.ab, label %bb.i, label %_RNvMsB_NtCscgRAwXFJnXP_4core3numm16from_ascii_radix.exit, !dbg !145217

bb.i:                                             ; preds = %.lr.ph.split.us.i.1
  %i.ac = mul nsw i32 %i.v, %2, !dbg !145219
  %i.ad = add nsw i32 %i.aa, %i.ac, !dbg !145220  ; 2 uses
  %.not56.us.i.1 = icmp eq i64 %.sroa.15.0.i, 2, !dbg !145212
  br i1 %.not56.us.i.1, label %.loopexit.i, label %.lr.ph.split.us.i.2, !dbg !145212

.lr.ph.split.us.i.2:                              ; preds = %bb.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 2, !dbg !145218
  %i.af = load i8, ptr %i.ae, align 1, !dbg !145213, !alias.scope !145192, !noundef !2531
end_hunk_0
