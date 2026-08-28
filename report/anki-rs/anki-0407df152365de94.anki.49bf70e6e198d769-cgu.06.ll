Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/anki-0407df152365de94.anki.49bf70e6e198d769-cgu.06?download=true
inline.NumInlined: 5983
inline.NumDeleted: 3458
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 60
loop-unroll.NumUnrolled: 61
begin_hunk_0_@"_ZN126_$LT$anki_proto..image_occlusion..get_image_occlusion_note_response..ImageOcclusionNote$u20$as$u20$prost..message..Message$GT$11encoded_len17h2f0840c885bde09fE":bb.a

bb.b:                                             ; preds = %bb.a
  %i.d = or i64 %i.b, 1
  %i.e = tail call range(i64 1, 64) i64 @llvm.ctlz.i64(i64 %i.d, i1 true)
  %i.f = xor i64 %i.e, 63
  %i.g = mul nuw nsw i64 %i.f, 9
  %i.h = add nuw nsw i64 %i.g, 73
  %i.i = lshr i64 %i.h, 6
  %i.j = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.j)
  %i.k = add nuw i64 %i.b, 1
  %i.l = add nuw i64 %i.k, %i.i
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i64 [ %i.l, %bb.b ], [ 0, %bb.a ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !3, !noundef !3
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.p = load i64, ptr %i.o, align 8, !noundef !3 ; 3 uses
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %_ZN5prost8encoding7message20encoded_len_repeated17haafeb79fbcd6b3c5E.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c, %.preheader.i
  %.sroa.04.0.i.i.i = phi i64 [ %i.ab, %.preheader.i ], [ 0, %bb.c ] ; 2 uses
  %.sroa.02.0.i.i.i = phi i64 [ %i.aa, %.preheader.i ], [ 0, %bb.c ]
  %i.r = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %.sroa.04.0.i.i.i
  %i.s = tail call fastcc noundef i64 @"_ZN122_$LT$anki_proto..image_occlusion..get_image_occlusion_note_response..ImageOcclusion$u20$as$u20$prost..message..Message$GT$11encoded_len17haf2597f3e218ee44E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.r) ; 2 uses
  %i.t = or i64 %i.s, 1
  %i.u = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.t, i1 true)
  %i.v = xor i64 %i.u, 63
  %i.w = mul nuw nsw i64 %i.v, 9
  %i.x = add nuw nsw i64 %i.w, 73
  %i.y = lshr i64 %i.x, 6
  %i.z = add i64 %i.s, %.sroa.02.0.i.i.i
  %i.aa = add i64 %i.z, %i.y                      ; 2 uses
  %i.ab = add nuw i64 %.sroa.04.0.i.i.i, 1        ; 2 uses
  %i.ac = icmp eq i64 %i.ab, %i.p
  br i1 %i.ac, label %_ZN5prost8encoding7message20encoded_len_repeated17haafeb79fbcd6b3c5E.exit, label %.preheader.i

_ZN5prost8encoding7message20encoded_len_repeated17haafeb79fbcd6b3c5E.exit: ; preds = %.preheader.i, %bb.c
  %.sroa.0.0.i.i.i = phi i64 [ 0, %bb.c ], [ %i.aa, %.preheader.i ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.val8 = load i64, ptr %i.ad, align 8, !noundef !3 ; 4 uses
  %.not.i.not = icmp eq i64 %.val8, 0
  br i1 %.not.i.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN5prost8encoding7message20encoded_len_repeated17haafeb79fbcd6b3c5E.exit
  %i.ae = icmp sgt i64 %.val8, -1
  tail call void @llvm.assume(i1 %i.ae)
  %i.af = or i64 %.val8, 1
  %i.ag = tail call range(i64 1, 64) i64 @llvm.ctlz.i64(i64 %i.af, i1 true)
  %i.ah = xor i64 %i.ag, 63
  %i.ai = mul nuw nsw i64 %i.ah, 9
  %i.aj = add nuw nsw i64 %i.ai, 73
  %i.ak = lshr i64 %i.aj, 6
  %i.al = add nuw i64 %.val8, 1
  %i.am = add nuw i64 %i.al, %i.ak
  br label %bb.e

bb.e:                                             ; preds = %_ZN5prost8encoding7message20encoded_len_repeated17haafeb79fbcd6b3c5E.exit, %bb.d
  %.sroa.01.0 = phi i64 [ %i.am, %bb.d ], [ 0, %_ZN5prost8encoding7message20encoded_len_repeated17haafeb79fbcd6b3c5E.exit ]
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.val7 = load i64, ptr %i.an, align 8, !noundef !3 ; 4 uses
  %.not.i13.not = icmp eq i64 %.val7, 0
  br i1 %.not.i13.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ao = icmp sgt i64 %.val7, -1
  tail call void @llvm.assume(i1 %i.ao)
  %i.ap = or i64 %.val7, 1
  %i.aq = tail call range(i64 1, 64) i64 @llvm.ctlz.i64(i64 %i.ap, i1 true)
  %i.ar = xor i64 %i.aq, 63
  %i.as = mul nuw nsw i64 %i.ar, 9
  %i.at = add nuw nsw i64 %i.as, 73
  %i.au = lshr i64 %i.at, 6
  %i.av = add nuw i64 %.val7, 1
  %i.aw = add nuw i64 %i.av, %i.au
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.sroa.02.0 = phi i64 [ %i.aw, %bb.f ], [ 0, %bb.e ]
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ay = load ptr, ptr %i.ax, align 8, !nonnull !3, !noundef !3 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ba = load i64, ptr %i.az, align 8, !noundef !3 ; 6 uses
  %i.bb = icmp eq i64 %i.ba, 0
  br i1 %i.bb, label %_ZN5prost8encoding6string20encoded_len_repeated17h476e33356feff050E.exit, label %.preheader.i14.preheader

.preheader.i14.preheader:                         ; preds = %bb.g
  %xtraiter = and i64 %i.ba, 1
  %i.bc = icmp eq i64 %i.ba, 1
  br i1 %i.bc, label %.preheader.i14.epil.preheader, label %.preheader.i14.preheader.new

.preheader.i14.preheader.new:                     ; preds = %.preheader.i14.preheader
  %unroll_iter = and i64 %i.ba, -2
  br label %.preheader.i14

.preheader.i14:                                   ; preds = %.preheader.i14, %.preheader.i14.preheader.new
  %.sroa.04.0.i.i = phi i64 [ 0, %.preheader.i14.preheader.new ], [ %i.bz, %.preheader.i14 ] ; 3 uses
  %.sroa.02.0.i.i = phi i64 [ 0, %.preheader.i14.preheader.new ], [ %i.by, %.preheader.i14 ]
  %niter = phi i64 [ 0, %.preheader.i14.preheader.new ], [ %niter.next.1, %.preheader.i14 ]
  %i.bd = getelementptr inbounds nuw [24 x i8], ptr %i.ay, i64 %.sroa.04.0.i.i
  %i.be = getelementptr i8, ptr %i.bd, i64 16
  %.val.i.i = load i64, ptr %i.be, align 8, !alias.scope !3078, !noundef !3 ; 3 uses
  %i.bf = icmp sgt i64 %.val.i.i, -1
  tail call void @llvm.assume(i1 %i.bf)
  %i.bg = or i64 %.val.i.i, 1
  %i.bh = tail call range(i64 1, 64) i64 @llvm.ctlz.i64(i64 %i.bg, i1 true)
  %i.bi = xor i64 %i.bh, 63
  %i.bj = mul nuw nsw i64 %i.bi, 9
  %i.bk = add nuw nsw i64 %i.bj, 73
  %i.bl = lshr i64 %i.bk, 6
  %i.bm = add i64 %.val.i.i, %.sroa.02.0.i.i
  %i.bn = add i64 %i.bm, %i.bl
  %i.bo = getelementptr inbounds nuw [24 x i8], ptr %i.ay, i64 %.sroa.04.0.i.i
  %i.bp = getelementptr i8, ptr %i.bo, i64 40
  %.val.i.i.1 = load i64, ptr %i.bp, align 8, !alias.scope !3078, !noundef !3 ; 3 uses
  %i.bq = icmp sgt i64 %.val.i.i.1, -1
  tail call void @llvm.assume(i1 %i.bq)
  %i.br = or i64 %.val.i.i.1, 1
  %i.bs = tail call range(i64 1, 64) i64 @llvm.ctlz.i64(i64 %i.br, i1 true)
  %i.bt = xor i64 %i.bs, 63
  %i.bu = mul nuw nsw i64 %i.bt, 9
  %i.bv = add nuw nsw i64 %i.bu, 73
  %i.bw = lshr i64 %i.bv, 6
  %i.bx = add i64 %.val.i.i.1, %i.bn
  %i.by = add i64 %i.bx, %i.bw                    ; 3 uses
  %i.bz = add nuw i64 %.sroa.04.0.i.i, 2          ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN5prost8encoding6string20encoded_len_repeated17h476e33356feff050E.exit.loopexit.unr-lcssa, label %.preheader.i14

_ZN5prost8encoding6string20encoded_len_repeated17h476e33356feff050E.exit.loopexit.unr-lcssa: ; preds = %.preheader.i14
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5prost8encoding6string20encoded_len_repeated17h476e33356feff050E.exit, label %.preheader.i14.epil.preheader

.preheader.i14.epil.preheader:                    ; preds = %_ZN5prost8encoding6string20encoded_len_repeated17h476e33356feff050E.exit.loopexit.unr-lcssa, %.preheader.i14.preheader
  %.sroa.04.0.i.i.epil.init = phi i64 [ 0, %.preheader.i14.preheader ], [ %i.bz, %_ZN5prost8encoding6string20encoded_len_repeated17h476e33356feff050E.exit.loopexit.unr-lcssa ]
  %.sroa.02.0.i.i.epil.init = phi i64 [ 0, %.preheader.i14.preheader ], [ %i.by, %_ZN5prost8encoding6string20encoded_len_repeated17h476e33356feff050E.exit.loopexit.unr-lcssa ]
  %lcmp.mod24 = trunc i64 %i.ba to i1
  tail call void @llvm.assume(i1 %lcmp.mod24)
  %i.ca = getelementptr inbounds nuw [24 x i8], ptr %i.ay, i64 %.sroa.04.0.i.i.epil.init
  %i.cb = getelementptr i8, ptr %i.ca, i64 16
  %.val.i.i.epil = load i64, ptr %i.cb, align 8, !alias.scope !3078, !noundef !3 ; 3 uses
  %i.cc = icmp sgt i64 %.val.i.i.epil, -1
  tail call void @llvm.assume(i1 %i.cc)
  %i.cd = or i64 %.val.i.i.epil, 1
  %i.ce = tail call range(i64 1, 64) i64 @llvm.ctlz.i64(i64 %i.cd, i1 true)
  %i.cf = xor i64 %i.ce, 63
  %i.cg = mul nuw nsw i64 %i.cf, 9
  %i.ch = add nuw nsw i64 %i.cg, 73
  %i.ci = lshr i64 %i.ch, 6
  %i.cj = add i64 %.val.i.i.epil, %.sroa.02.0.i.i.epil.init
  %i.ck = add i64 %i.cj, %i.ci
  br label %_ZN5prost8encoding6string20encoded_len_repeated17h476e33356feff050E.exit

_ZN5prost8encoding6string20encoded_len_repeated17h476e33356feff050E.exit: ; preds = %.preheader.i14.epil.preheader, %_ZN5prost8encoding6string20encoded_len_repeated17h476e33356feff050E.exit.loopexit.unr-lcssa, %bb.g
  %.sroa.0.0.i.i = phi i64 [ 0, %bb.g ], [ %i.by, %_ZN5prost8encoding6string20encoded_len_repeated17h476e33356feff050E.exit.loopexit.unr-lcssa ], [ %i.ck, %.preheader.i14.epil.preheader ]
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 136
  %.val = load i64, ptr %i.cl, align 8, !noundef !3 ; 4 uses
  %.not.i15.not = icmp eq i64 %.val, 0
  br i1 %.not.i15.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN5prost8encoding6string20encoded_len_repeated17h476e33356feff050E.exit
  %i.cm = icmp sgt i64 %.val, -1
  tail call void @llvm.assume(i1 %i.cm)
  %i.cn = or i64 %.val, 1
  %i.co = tail call range(i64 1, 64) i64 @llvm.ctlz.i64(i64 %i.cn, i1 true)
  %i.cp = xor i64 %i.co, 63
  %i.cq = mul nuw nsw i64 %i.cp, 9
  %i.cr = add nuw nsw i64 %i.cq, 73
  %i.cs = lshr i64 %i.cr, 6
  %i.ct = add nuw i64 %.val, 1
  %i.cu = add nuw i64 %i.ct, %i.cs
  br label %bb.i

bb.i:                                             ; preds = %_ZN5prost8encoding6string20encoded_len_repeated17h476e33356feff050E.exit, %bb.h
  %.sroa.03.0 = phi i64 [ %i.cu, %bb.h ], [ 0, %_ZN5prost8encoding6string20encoded_len_repeated17h476e33356feff050E.exit ]
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.cw = load i8, ptr %i.cv, align 8, !range !940, !noundef !3
  %i.cx = shl nuw nsw i8 %i.cw, 1
  %spec.select = zext nneg i8 %i.cx to i64
  %i.cy = add i64 %i.p, %.sroa.0.0
  %i.cz = add i64 %i.cy, %.sroa.0.0.i.i.i
  %i.da = add i64 %i.cz, %.sroa.01.0
  %i.db = add i64 %i.da, %.sroa.02.0
  %i.dc = add i64 %i.db, %i.ba
  %i.dd = add i64 %i.dc, %.sroa.0.0.i.i
  %i.de = add i64 %i.dd, %.sroa.03.0
  %i.df = add i64 %i.de, %spec.select
  ret i64 %i.df
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN12convert_case9converter9Converter7convert17he1a9c11967d84616E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(56) %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [200 x i8], align 8               ; 26 uses
  %i.b = alloca [48 x i8], align 8                ; 10 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %3 = alloca [8 x i8], align 8                   ; 5 uses
  %i.d = alloca [48 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 11 uses
  %i.f = alloca [24 x i8], align 8                ; 11 uses
  %i.g = alloca [24 x i8], align 8                ; 13 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 9 uses
  %i.j = alloca [24 x i8], align 8                ; 10 uses
  %i.k = alloca [24 x i8], align 8                ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.o = load i64, ptr %i.n, align 8, !noundef !3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3081)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3084)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %.val.i.i = load ptr, ptr %2, align 8, !noalias !3086, !nonnull !3, !align !79, !noundef !3 ; 8 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val1.i.i = load i64, ptr %i.p, align 8, !noalias !3086, !noundef !3 ; 15 uses
  %i.q = icmp eq i64 %.val1.i.i, 0
  br i1 %i.q, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %i.k, align 8, !alias.scope !3081, !noalias !3084
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.r, align 8, !alias.scope !3081, !noalias !3084
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 0, ptr %i.s, align 8, !alias.scope !3081, !noalias !3084
  br label %_ZN12convert_case8boundary5split17h410ac4bcfbbafd6eE.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !3086
  store i64 0, ptr %i.g, align 8, !noalias !3086
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 4 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.t, align 8, !noalias !3086
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 5 uses
  store i64 0, ptr %i.u, align 8, !noalias !3086
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.v = ptrtoint ptr %.val.i.i to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3086
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3087
  store i64 0, ptr %i.b, align 8, !alias.scope !3091, !noalias !3087
  %.sroa.4.0..sroa_idx2.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx2.i.i.i, align 8, !alias.scope !3091, !noalias !3087
  %.sroa.5.0..sroa_idx3.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx3.i.i.i, i8 0, i64 16, i1 false), !alias.scope !3091, !noalias !3087
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !alias.scope !3091, !noalias !3087
  %.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 0, ptr %.sroa.3.0..sroa_idx.i.i.i, align 8, !alias.scope !3091, !noalias !3087
  store i64 0, ptr %i.a, align 8, !noalias !3094
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !3094
  %.sroa.54.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 0, ptr %.sroa.54.0..sroa_idx.i, align 8, !noalias !3094
  %.sroa.65.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 0, ptr %.sroa.65.0..sroa_idx.i, align 8, !noalias !3094
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i64 %.val1.i.i, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !3094
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i32 0, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !3094
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 68
  store i32 0, ptr %.sroa.9.0..sroa_idx.i, align 4, !noalias !3094
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i8 2, ptr %.sroa.10.0..sroa_idx.i, align 8, !noalias !3094
  %.sroa.116.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 76
  store <4 x i8> <i8 1, i8 0, i8 2, i8 16>, ptr %.sroa.116.0..sroa_idx.i, align 4, !noalias !3094
  %.sroa.15.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store i8 16, ptr %.sroa.15.0..sroa_idx.i, align 8, !noalias !3094
  %.sroa.167.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store i64 0, ptr %.sroa.167.0..sroa_idx.i, align 8, !noalias !3094
  %.sroa.178.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  store i64 0, ptr %.sroa.178.0..sroa_idx.i, align 8, !noalias !3094
  %.sroa.189.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  store i64 0, ptr %.sroa.189.0..sroa_idx.i, align 8, !noalias !3094
  %.sroa.1910.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  store i64 %.val1.i.i, ptr %.sroa.1910.0..sroa_idx.i, align 8, !noalias !3094
  %.sroa.20.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  store i64 %.val1.i.i, ptr %.sroa.20.0..sroa_idx.i, align 8, !noalias !3094
  %.sroa.21.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  store i32 0, ptr %.sroa.21.0..sroa_idx.i, align 8, !noalias !3094
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 156
  store i32 0, ptr %.sroa.22.0..sroa_idx.i, align 4, !noalias !3094
  %.sroa.23.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  store i8 2, ptr %.sroa.23.0..sroa_idx.i, align 8, !noalias !3094
  %.sroa.2411.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 164
  store <4 x i8> <i8 1, i8 0, i8 2, i8 16>, ptr %.sroa.2411.0..sroa_idx.i, align 4, !noalias !3094
  %.sroa.28.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  store i8 16, ptr %.sroa.28.0..sroa_idx.i, align 8, !noalias !3094
  %.sroa.2912.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  store ptr %.val.i.i, ptr %.sroa.2912.0..sroa_idx.i, align 8, !noalias !3094
  %.sroa.30.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 184
  store i64 %.val1.i.i, ptr %.sroa.30.0..sroa_idx.i, align 8, !noalias !3094
  %.sroa.31.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  store i64 %i.v, ptr %.sroa.31.0..sroa_idx.i, align 8, !noalias !3094
  invoke void @"_ZN92_$LT$ExtendT$u20$as$u20$core..iter..traits..collect..default_extend..SpecExtend$LT$I$GT$$GT$6extend17h482aeaa3e32c8280E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(200) %i.a)
          to label %bb.f unwind label %bb.d, !noalias !3087

bb.d:                                             ; preds = %bb.c
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr90drop_in_place$LT$$LP$alloc..vec..Vec$LT$usize$GT$$C$alloc..vec..Vec$LT$$RF$str$GT$$RP$$GT$17h0d8b327e371c2d95E"(ptr noalias noundef align 8 dereferenceable(48) %i.b) #46
          to label %.thread.i unwind label %bb.e, !noalias !3087

bb.e:                                             ; preds = %bb.d
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #48, !noalias !3087
  unreachable

bb.f:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.d, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false), !noalias !3095
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3087
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3086
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !3086
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !3086
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !3086
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false), !noalias !3086
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !noalias !3086, !noundef !3 ; 3 uses
  %i.ab = icmp ult i64 %i.aa, 576460752303423488
  call void @llvm.assume(i1 %i.ab)
  %i.ac = add nsw i64 %i.aa, -1                   ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !noalias !3086, !noundef !3 ; 2 uses
  %i.ag = icmp ult i64 %i.ac, %i.af
  br i1 %i.ag, label %.lr.ph.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %i.ac, i64 noundef %i.af, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #47
          to label %bb.k unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !3086

.loopexit34.i:                                    ; preds = %bb.ad
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.i:                    ; preds = %bb.ao
  %lpad.loopexit35.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.i:           ; preds = %.invoke.i, %bb.ae, %bb.q, %bb.p, %bb.g
  %.sroa.017.2.ph.ph.i = phi i1 [ true, %bb.ae ], [ true, %.invoke.i ], [ true, %bb.g ], [ true, %bb.p ], [ false, %bb.q ]
  %lpad.loopexit.split-lp36.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.i:                             ; preds = %.loopexit.split-lp.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.i, %.loopexit34.i
  %.sroa.017.2.i = phi i1 [ true, %.loopexit34.i ], [ true, %.loopexit.split-lp.loopexit.i ], [ %.sroa.017.2.ph.ph.i, %.loopexit.split-lp.loopexit.split-lp.i ]
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit34.i ], [ %lpad.loopexit35.i, %.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit.split-lp36.i, %.loopexit.split-lp.loopexit.split-lp.i ]
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h30717af22cf8fc77E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %bb.i unwind label %bb.h, !noalias !3086

bb.h:                                             ; preds = %.loopexit.split-lp.i
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0d79b8bb1ea45690E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.body73.i unwind label %bb.j, !noalias !3086

bb.i:                                             ; preds = %.loopexit.split-lp.i
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0d79b8bb1ea45690E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17h96ff6694a0368f13E.exit.i" unwind label %bb.ap, !noalias !3086

bb.j:                                             ; preds = %bb.h
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #48, !noalias !3086
  unreachable

bb.k:                                             ; preds = %bb.ae, %bb.g
  unreachable

.lr.ph.i:                                         ; preds = %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !noalias !3086, !nonnull !3, !noundef !3
  %i.al = load ptr, ptr %i.ad, align 8, !noalias !3086, !nonnull !3, !noundef !3
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.ac
  %i.an = load i64, ptr %i.am, align 8, !noalias !3086, !noundef !3
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %i.ak, i64 %i.ac
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !noalias !3086, !noundef !3
  %i.ar = add i64 %i.aq, %i.an
  store i64 %i.ar, ptr %3, align 8, !noalias !3086
  %i.as = getelementptr inbounds nuw [56 x i8], ptr %i.m, i64 %i.o
  br label %bb.l

bb.l:                                             ; preds = %.loopexit.i, %.lr.ph.i
  %.sroa.047.155.i = phi i64 [ 1, %.lr.ph.i ], [ %.sroa.047.1.i, %.loopexit.i ] ; 3 uses
  %.sroa.0.054.i = phi i64 [ 0, %.lr.ph.i ], [ %.sroa.0.1.i, %.loopexit.i ] ; 13 uses
  %.sroa.047.053.i = phi i64 [ 0, %.lr.ph.i ], [ %.sroa.047.155.i, %.loopexit.i ] ; 5 uses
  br label %bb.ab

._crit_edge.i:                                    ; preds = %.loopexit.i
  %i.at = icmp eq i64 %.sroa.0.1.i, 0
  br i1 %i.at, label %bb.o, label %bb.m

bb.m:                                             ; preds = %._crit_edge.i
  %.not.i.i = icmp ult i64 %.sroa.0.1.i, %.val1.i.i
  br i1 %.not.i.i, label %bb.n, label %.split.i.i

.split.i.i:                                       ; preds = %bb.m
  %i.au = icmp eq i64 %.sroa.0.1.i, %.val1.i.i
  br i1 %i.au, label %bb.o, label %.invoke.i

bb.n:                                             ; preds = %bb.m
  %i.av = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.sroa.0.1.i
  %i.aw = load i8, ptr %i.av, align 1, !alias.scope !3096, !noalias !3086, !noundef !3
  %i.ax = icmp sgt i8 %i.aw, -65
  br i1 %i.ax, label %bb.o, label %.invoke.i

bb.o:                                             ; preds = %bb.n, %.split.i.i, %._crit_edge.i
  %i.ay = sub nuw i64 %.val1.i.i, %.sroa.0.1.i
  %i.az = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.sroa.0.1.i
  %i.ba = load i64, ptr %i.u, align 8, !alias.scope !3099, !noalias !3102, !noundef !3 ; 4 uses
  %i.bb = load i64, ptr %i.g, align 8, !range !138, !alias.scope !3099, !noalias !3102, !noundef !3
  %i.bc = icmp eq i64 %i.ba, %i.bb
  br i1 %i.bc, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17hb98ae466af5e37a7E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %bb.q unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !3086

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bd = load ptr, ptr %i.t, align 8, !alias.scope !3099, !noalias !3102, !nonnull !3, !noundef !3
  %i.be = getelementptr inbounds nuw [16 x i8], ptr %i.bd, i64 %i.ba ; 2 uses
  store ptr %i.az, ptr %i.be, align 8, !noalias !3102
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store i64 %i.ay, ptr %i.bf, align 8, !noalias !3086
  %i.bg = add nsw i64 %i.ba, 1                    ; 2 uses
  store i64 %i.bg, ptr %i.u, align 8, !alias.scope !3099, !noalias !3102
  %i.bh = load ptr, ptr %i.t, align 8, !noalias !3086, !nonnull !3, !noundef !3 ; 3 uses
  %i.bi = load i64, ptr %i.g, align 8, !range !138, !noalias !3086, !noundef !3
  %i.bj = icmp slt i64 %i.ba, 576460752303423487
  call void @llvm.assume(i1 %i.bj)
  %i.bk = getelementptr inbounds nuw [16 x i8], ptr %i.bh, i64 %i.bg
  store ptr %i.bh, ptr %i.c, align 8, !noalias !3086
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.bh, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !3086
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %i.bi, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !3086
  %.sroa.616.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %i.bk, ptr %.sroa.616.0..sroa_idx.i, align 8, !noalias !3086
  invoke void @"_ZN5alloc3vec16in_place_collect108_$LT$impl$u20$alloc..vec..spec_from_iter..SpecFromIter$LT$T$C$I$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$9from_iter17hd7e9777059dacf96E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.k, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.c)
          to label %bb.r unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !3084

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h30717af22cf8fc77E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %bb.t unwind label %bb.s, !noalias !3086

bb.s:                                             ; preds = %bb.r
  %i.bl = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0d79b8bb1ea45690E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17h96ff6694a0368f13E.exit.i" unwind label %bb.u, !noalias !3086

bb.t:                                             ; preds = %bb.r
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0d79b8bb1ea45690E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17h96ff6694a0368f13E.exit79.i" unwind label %bb.y, !noalias !3086

bb.u:                                             ; preds = %bb.s
  %i.bm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #48, !noalias !3086
  unreachable

"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17h96ff6694a0368f13E.exit.i": ; preds = %bb.y, %bb.s, %bb.i
  %.sroa.017.3.i = phi i1 [ %.sroa.017.2.i, %bb.i ], [ false, %bb.s ], [ false, %bb.y ]
  %.pn.i = phi { ptr, i32 } [ %lpad.phi.i, %bb.i ], [ %i.bl, %bb.s ], [ %i.bp, %bb.y ] ; 2 uses
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h307ee000e27dd1ceE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.w unwind label %bb.v, !noalias !3086

bb.v:                                             ; preds = %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17h96ff6694a0368f13E.exit.i"
  %i.bn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17heb27c996755b388aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.body73.i unwind label %bb.x, !noalias !3086

bb.w:                                             ; preds = %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17h96ff6694a0368f13E.exit.i"
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17heb27c996755b388aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %"_ZN4core3ptr49drop_in_place$LT$alloc..vec..Vec$LT$usize$GT$$GT$17h902a7c9465ad7e35E.exit.i" unwind label %bb.ap, !noalias !3086

bb.x:                                             ; preds = %bb.v
  %i.bo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #48, !noalias !3086
  unreachable

"_ZN4core3ptr49drop_in_place$LT$alloc..vec..Vec$LT$usize$GT$$GT$17h902a7c9465ad7e35E.exit.i": ; preds = %bb.w
  br i1 %.sroa.017.3.i, label %.thread.i, label %common.resume

bb.y:                                             ; preds = %bb.t
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17h96ff6694a0368f13E.exit.i"

"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17h96ff6694a0368f13E.exit79.i": ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3086
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h307ee000e27dd1ceE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %"_ZN4core3ptr49drop_in_place$LT$alloc..vec..Vec$LT$usize$GT$$GT$17h902a7c9465ad7e35E.exit87.i" unwind label %bb.z, !noalias !3086

bb.z:                                             ; preds = %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17h96ff6694a0368f13E.exit79.i"
  %i.bq = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17heb27c996755b388aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %common.resume unwind label %bb.aa, !noalias !3086

"_ZN4core3ptr49drop_in_place$LT$alloc..vec..Vec$LT$usize$GT$$GT$17h902a7c9465ad7e35E.exit87.i": ; preds = %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17h96ff6694a0368f13E.exit79.i"
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17heb27c996755b388aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f), !noalias !3086
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !3086
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !3086
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8
  %.phi.trans.insert42 = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.pre43 = load i64, ptr %.phi.trans.insert42, align 8
  br label %_ZN12convert_case8boundary5split17h410ac4bcfbbafd6eE.exit

bb.aa:                                            ; preds = %bb.z
  %i.br = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #48, !noalias !3086
  unreachable

bb.ab:                                            ; preds = %bb.af, %bb.l
  %.sroa.06.0.i = phi ptr [ %i.m, %bb.l ], [ %.sroa.06.1.i, %bb.af ] ; 7 uses
  %i.bs = icmp eq ptr %.sroa.06.0.i, %i.as        ; 2 uses
  %.sroa.06.1.idx.i = select i1 %i.bs, i64 0, i64 56
  %.sroa.06.1.i = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 %.sroa.06.1.idx.i
  br i1 %i.bs, label %.loopexit.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bt = load i64, ptr %i.z, align 8, !noalias !3086, !noundef !3 ; 4 uses
  %i.bu = icmp ugt i64 %.sroa.047.053.i, %i.bt
  br i1 %i.bu, label %bb.ae, label %bb.ad, !prof !35

.loopexit.i:                                      ; preds = %bb.ab, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hc05d01fe5ca75f6aE.exit93.i"
  %.sroa.0.1.i = phi i64 [ %10, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hc05d01fe5ca75f6aE.exit93.i" ], [ %.sroa.0.054.i, %bb.ab ] ; 9 uses
  %i.bv = icmp samesign ult i64 %.sroa.047.155.i, %i.aa ; 2 uses
  %i.bw = zext i1 %i.bv to i64
  %.sroa.047.1.i = add nuw nsw i64 %.sroa.047.155.i, %i.bw
  br i1 %i.bv, label %bb.l, label %._crit_edge.i

bb.ad:                                            ; preds = %bb.ac
  %i.bx = load ptr, ptr %i.aj, align 8, !noalias !3086, !nonnull !3, !noundef !3
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 16
  %i.bz = load ptr, ptr %i.by, align 8, !alias.scope !3084, !noalias !3081, !nonnull !3, !noundef !3
  %i.ca = sub nuw i64 %i.bt, %.sroa.047.053.i
  %i.cb = getelementptr inbounds nuw [16 x i8], ptr %i.bx, i64 %.sroa.047.053.i
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 24
  %i.cd = load ptr, ptr %i.cc, align 8, !alias.scope !3084, !noalias !3081, !align !79, !noundef !3
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 32
  %i.cf = load i64, ptr %i.ce, align 8, !alias.scope !3084, !noalias !3081
  %i.cg = invoke noundef zeroext i1 %i.bz(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.cb, i64 noundef %i.ca, ptr noalias noundef readonly align 1 captures(address, read_provenance) %i.cd, i64 %i.cf)
          to label %bb.af unwind label %.loopexit34.i, !noalias !3086

bb.ae:                                            ; preds = %bb.ac
  invoke void @_ZN4core5slice5index16slice_index_fail17h69cf93148e2c0fa9E(i64 noundef %.sroa.047.053.i, i64 noundef %i.bt, i64 noundef %i.bt, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @40) #47
          to label %bb.k unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !3086

bb.af:                                            ; preds = %bb.ad
  br i1 %i.cg, label %bb.ag, label %bb.ab

bb.ag:                                            ; preds = %bb.af
  %i.ch = load i64, ptr %i.ae, align 8, !noalias !3086, !noundef !3 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 40
  %i.cj = load i64, ptr %i.ci, align 8, !alias.scope !3084, !noalias !3081, !noundef !3
  %i.ck = add i64 %i.cj, %.sroa.047.053.i         ; 3 uses
  %.not.i = icmp ult i64 %i.ck, %i.ch
  %i.cl = load ptr, ptr %i.ad, align 8, !noalias !3086, !nonnull !3 ; 2 uses
  %4 = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %i.ck
  %.sroa.011.0.i = select i1 %.not.i, ptr %4, ptr %3
  %5 = load i64, ptr %.sroa.011.0.i, align 8, !noalias !3086, !noundef !3 ; 11 uses
  %6 = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 48
  %7 = load i64, ptr %6, align 8, !alias.scope !3084, !noalias !3081, !noundef !3
  %8 = add i64 %7, %i.ck                          ; 2 uses
  %.not27.i = icmp ult i64 %8, %i.ch
  %9 = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %8
  %.sroa.014.0.i = select i1 %.not27.i, ptr %9, ptr %3
  %10 = load i64, ptr %.sroa.014.0.i, align 8, !noalias !3086, !noundef !3
  %.not.i88.i = icmp ugt i64 %.sroa.0.054.i, %5
  br i1 %.not.i88.i, label %.invoke.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cm = icmp eq i64 %.sroa.0.054.i, 0
  br i1 %i.cm, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %.not5.i.i = icmp ult i64 %.sroa.0.054.i, %.val1.i.i
  br i1 %.not5.i.i, label %bb.ak, label %.split.i89.i

bb.aj:                                            ; preds = %bb.ak, %.split.i89.i, %bb.ah
  %i.cn = icmp eq i64 %5, 0
  br i1 %i.cn, label %bb.an, label %bb.al

.split.i89.i:                                     ; preds = %bb.ai
  %i.co = icmp eq i64 %.sroa.0.054.i, %.val1.i.i
  br i1 %i.co, label %bb.aj, label %.invoke.i

bb.ak:                                            ; preds = %bb.ai
  %i.cp = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.sroa.0.054.i
  %i.cq = load i8, ptr %i.cp, align 1, !alias.scope !3104, !noalias !3086, !noundef !3
  %i.cr = icmp sgt i8 %i.cq, -65
  br i1 %i.cr, label %bb.aj, label %.invoke.i

bb.al:                                            ; preds = %bb.aj
  %.not6.i.i = icmp ult i64 %5, %.val1.i.i
  br i1 %.not6.i.i, label %bb.am, label %.split7.i.i

.split7.i.i:                                      ; preds = %bb.al
  %i.cs = icmp eq i64 %5, %.val1.i.i
  br i1 %i.cs, label %bb.an, label %.invoke.i

bb.am:                                            ; preds = %bb.al
  %i.ct = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %5
  %i.cu = load i8, ptr %i.ct, align 1, !alias.scope !3104, !noalias !3086, !noundef !3
  %i.cv = icmp sgt i8 %i.cu, -65
  br i1 %i.cv, label %bb.an, label %.invoke.i

bb.an:                                            ; preds = %bb.am, %.split7.i.i, %bb.aj
  %i.cw = sub nuw i64 %5, %.sroa.0.054.i
  %i.cx = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.sroa.0.054.i
  %i.cy = load i64, ptr %i.u, align 8, !alias.scope !3107, !noalias !3110, !noundef !3 ; 3 uses
  %i.cz = load i64, ptr %i.g, align 8, !range !138, !alias.scope !3107, !noalias !3110, !noundef !3
  %i.da = icmp eq i64 %i.cy, %i.cz
  br i1 %i.da, label %bb.ao, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hc05d01fe5ca75f6aE.exit93.i"

bb.ao:                                            ; preds = %bb.an
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17hb98ae466af5e37a7E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hc05d01fe5ca75f6aE.exit93.i" unwind label %.loopexit.split-lp.loopexit.i, !noalias !3086

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hc05d01fe5ca75f6aE.exit93.i": ; preds = %bb.ao, %bb.an
  %i.db = load ptr, ptr %i.t, align 8, !alias.scope !3107, !noalias !3110, !nonnull !3, !noundef !3
  %i.dc = getelementptr inbounds nuw [16 x i8], ptr %i.db, i64 %i.cy ; 2 uses
  store ptr %i.cx, ptr %i.dc, align 8, !noalias !3110
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  store i64 %i.cw, ptr %i.dd, align 8, !noalias !3086
  %i.de = add i64 %i.cy, 1
  store i64 %i.de, ptr %i.u, align 8, !alias.scope !3107, !noalias !3110
  br label %.loopexit.i

.invoke.i:                                        ; preds = %bb.am, %.split7.i.i, %bb.ak, %.split.i89.i, %bb.ag, %bb.n, %.split.i.i
  %i.df = phi i64 [ %.sroa.0.1.i, %.split.i.i ], [ %.sroa.0.1.i, %bb.n ], [ %.sroa.0.054.i, %bb.ag ], [ %.sroa.0.054.i, %.split.i89.i ], [ %.sroa.0.054.i, %bb.ak ], [ %.sroa.0.054.i, %.split7.i.i ], [ %.sroa.0.054.i, %bb.am ]
  %i.dg = phi i64 [ %.val1.i.i, %.split.i.i ], [ %.val1.i.i, %bb.n ], [ %5, %bb.ag ], [ %5, %.split.i89.i ], [ %5, %bb.ak ], [ %5, %.split7.i.i ], [ %5, %bb.am ]
  %i.dh = phi ptr [ @38, %.split.i.i ], [ @38, %bb.n ], [ @39, %bb.ag ], [ @39, %.split.i89.i ], [ @39, %bb.ak ], [ @39, %.split7.i.i ], [ @39, %bb.am ]
  invoke void @_ZN4core3str16slice_error_fail17h9e3908d5d4865c14E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val.i.i, i64 noundef %.val1.i.i, i64 noundef %i.df, i64 noundef %i.dg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dh) #47
          to label %.cont94.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !3086

.cont94.i:                                        ; preds = %.invoke.i
  unreachable

bb.ap:                                            ; preds = %bb.ar, %bb.w, %bb.i
  %i.di = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body73.i

.body73.i:                                        ; preds = %bb.aq, %bb.ap, %bb.v, %bb.h
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #48, !noalias !3086
  unreachable

common.resume:                                    ; preds = %bb.bi, %bb.at, %.body9, %"_ZN4core3ptr49drop_in_place$LT$alloc..vec..Vec$LT$usize$GT$$GT$17h902a7c9465ad7e35E.exit.i", %bb.z, %bb.ar
  %common.resume.op = phi { ptr, i32 } [ %.pn4, %.body9 ], [ %.pn.pn20.i, %bb.ar ], [ %.pn.i, %"_ZN4core3ptr49drop_in_place$LT$alloc..vec..Vec$LT$usize$GT$$GT$17h902a7c9465ad7e35E.exit.i" ], [ %i.bq, %bb.z ], [ %.pn, %bb.at ], [ %i.el, %bb.bi ]
  resume { ptr, i32 } %common.resume.op

.thread.i:                                        ; preds = %"_ZN4core3ptr49drop_in_place$LT$alloc..vec..Vec$LT$usize$GT$$GT$17h902a7c9465ad7e35E.exit.i", %bb.d
  %.pn.pn20.i = phi { ptr, i32 } [ %.pn.i, %"_ZN4core3ptr49drop_in_place$LT$alloc..vec..Vec$LT$usize$GT$$GT$17h902a7c9465ad7e35E.exit.i" ], [ %i.w, %bb.d ]
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h30717af22cf8fc77E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %bb.ar unwind label %bb.aq, !noalias !3086

bb.aq:                                            ; preds = %.thread.i
  %i.dj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0d79b8bb1ea45690E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %.body73.i unwind label %bb.as, !noalias !3086

bb.ar:                                            ; preds = %.thread.i
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0d79b8bb1ea45690E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %common.resume unwind label %bb.ap, !noalias !3086

bb.as:                                            ; preds = %bb.aq
  %i.dk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #48, !noalias !3086
  unreachable

_ZN12convert_case8boundary5split17h410ac4bcfbbafd6eE.exit: ; preds = %bb.b, %"_ZN4core3ptr49drop_in_place$LT$alloc..vec..Vec$LT$usize$GT$$GT$17h902a7c9465ad7e35E.exit87.i"
  %i.dl = phi i64 [ 0, %bb.b ], [ %.pre43, %"_ZN4core3ptr49drop_in_place$LT$alloc..vec..Vec$LT$usize$GT$$GT$17h902a7c9465ad7e35E.exit87.i" ]
  %i.dm = phi ptr [ inttoptr (i64 8 to ptr), %bb.b ], [ %.pre, %"_ZN4core3ptr49drop_in_place$LT$alloc..vec..Vec$LT$usize$GT$$GT$17h902a7c9465ad7e35E.exit87.i" ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.dn = getelementptr inbounds nuw [16 x i8], ptr %i.dm, i64 %i.dl
  invoke void @"_ZN98_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter..SpecFromIter$LT$T$C$I$GT$$GT$9from_iter17h2314a562d5e45244E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.j, ptr noundef nonnull %i.dm, ptr noundef nonnull %i.dn)
          to label %bb.av unwind label %bb.au

bb.at:                                            ; preds = %bb.aw, %bb.au
  %.pn = phi { ptr, i32 } [ %i.dv, %bb.aw ], [ %i.do, %bb.au ]
  invoke fastcc void @"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17h96ff6694a0368f13E"(ptr noalias noundef align 8 dereferenceable(24) %i.k) #46
          to label %common.resume unwind label %bb.bk

bb.au:                                            ; preds = %_ZN12convert_case8boundary5split17h410ac4bcfbbafd6eE.exit
  %i.do = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.av:                                            ; preds = %_ZN12convert_case8boundary5split17h410ac4bcfbbafd6eE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.dq = load ptr, ptr %i.dp, align 8, !nonnull !3, !noundef !3
  %i.dr = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.ds = load ptr, ptr %i.dr, align 8, !nonnull !3, !noundef !3
  %i.dt = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.du = load i64, ptr %i.dt, align 8, !noundef !3
  invoke void %i.dq(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.ds, i64 noundef %i.du)
          to label %bb.ax unwind label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.dv = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17h96ff6694a0368f13E"(ptr noalias noundef align 8 dereferenceable(24) %i.j) #46
          to label %bb.at unwind label %bb.bk

bb.ax:                                            ; preds = %bb.av
  %i.dw = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.dx = load ptr, ptr %i.dw, align 8, !nonnull !3, !noundef !3
  %i.dy = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.dz = load i64, ptr %i.dy, align 8, !noundef !3
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.eb = load ptr, ptr %i.ea, align 8, !nonnull !3, !noundef !3
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ed = load i64, ptr %i.ec, align 8, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  invoke void @_ZN5alloc3str17join_generic_copy17hbee8c4e6e1b59520E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.dx, i64 noundef %i.dz, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.eb, i64 noundef %i.ed)
          to label %bb.az unwind label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ee = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17h96ff6694a0368f13E"(ptr noalias noundef align 8 dereferenceable(24) %i.j) #46
          to label %.body unwind label %bb.bk

bb.az:                                            ; preds = %bb.ax
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h30717af22cf8fc77E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %bb.bb unwind label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ef = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0d79b8bb1ea45690E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.body unwind label %bb.bc

bb.bb:                                            ; preds = %bb.az
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0d79b8bb1ea45690E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17h96ff6694a0368f13E.exit" unwind label %bb.bd

bb.bc:                                            ; preds = %bb.ba
  %i.eg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #48
  unreachable

.body:                                            ; preds = %bb.bd, %bb.ba, %bb.ay
  %.pn2 = phi { ptr, i32 } [ %i.ee, %bb.ay ], [ %i.eh, %bb.bd ], [ %i.ef, %bb.ba ]
  invoke fastcc void @"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17h96ff6694a0368f13E"(ptr noalias noundef align 8 dereferenceable(24) %i.k) #46
          to label %.body9 unwind label %bb.bk

bb.bd:                                            ; preds = %bb.bb
  %i.eh = landingpad { ptr, i32 }
          cleanup
  br label %.body

"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17h96ff6694a0368f13E.exit": ; preds = %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h30717af22cf8fc77E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %bb.bf unwind label %bb.be

bb.be:                                            ; preds = %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17h96ff6694a0368f13E.exit"
  %i.ei = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0d79b8bb1ea45690E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %.body9 unwind label %bb.bg

bb.bf:                                            ; preds = %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17h96ff6694a0368f13E.exit"
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0d79b8bb1ea45690E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17h96ff6694a0368f13E.exit11" unwind label %bb.bh

bb.bg:                                            ; preds = %bb.be
  %i.ej = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #48
  unreachable

.body9:                                           ; preds = %bb.bh, %bb.be, %.body
  %.pn4 = phi { ptr, i32 } [ %.pn2, %.body ], [ %i.ek, %bb.bh ], [ %i.ei, %bb.be ]
  invoke fastcc void @"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h0dbcb34878223f6fE"(ptr noalias noundef align 8 dereferenceable(24) %i.i) #46
          to label %common.resume unwind label %bb.bk

bb.bh:                                            ; preds = %bb.bf
  %i.ek = landingpad { ptr, i32 }
          cleanup
  br label %.body9

"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17h96ff6694a0368f13E.exit11": ; preds = %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd14bfae6db337d46E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h0dbcb34878223f6fE.exit" unwind label %bb.bi

bb.bi:                                            ; preds = %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17h96ff6694a0368f13E.exit11"
  %i.el = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hddc20c1fa5644519E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %common.resume unwind label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.em = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #48
  unreachable

"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h0dbcb34878223f6fE.exit": ; preds = %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17h96ff6694a0368f13E.exit11"
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hddc20c1fa5644519E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret void

bb.bk:                                            ; preds = %.body9, %.body, %bb.ay, %bb.aw, %bb.at
  %i.en = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #48
  unreachable
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_ZN12tracing_core5field8FieldSet5field17h19986e030cd877aaE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %2) unnamed_addr #18 personality ptr @rust_eh_personality {
bb.a:
  %.val = load ptr, ptr %2, align 8, !nonnull !3, !align !79, !noundef !3
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val4 = load i64, ptr %i.a, align 8, !noundef !3 ; 2 uses
  %i.b = load ptr, ptr %1, align 8, !nonnull !3, !align !14, !noundef !3 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !noundef !3 ; 3 uses
  %.idx = shl nuw nsw i64 %i.d, 4
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %.loopexit, label %.lr.ph.i
end_hunk_0
