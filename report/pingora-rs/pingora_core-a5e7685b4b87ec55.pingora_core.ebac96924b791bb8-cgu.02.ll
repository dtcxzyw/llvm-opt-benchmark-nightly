Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pingora-rs/original/pingora_core-a5e7685b4b87ec55.pingora_core.ebac96924b791bb8-cgu.02?download=true
inline.NumInlined: 716
inline.NumDeleted: 218
loop-unroll.NumCompletelyUnrolled: 44
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 59
begin_hunk_0_@_RNvMsc_NtNtCsiRgJJXJ4lb7_6brotli3enc10prior_evalINtB5_9PriorEvalNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocE14choose_bitmaskCskeugdADtBsi_12pingora_core:bb.a

._crit_edge:                                      ; preds = %bb.w, %bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.val21 = load i64, ptr %i.al, align 8, !noundef !9 ; 2 uses
  %i.am = icmp ugt i64 %.val21, 8195
  br i1 %i.am, label %_RNvMs1_NtNtCsiRgJJXJ4lb7_6brotli3enc9interfaceINtB5_24PredictionModeContextMapNtNtB7_10input_pair17InputReferenceMutE17set_mixing_valuesCskeugdADtBsi_12pingora_core.exit, label %bb.b, !prof !26

bb.b:                                             ; preds = %._crit_edge
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 4, i64 noundef 8196, i64 noundef %.val21, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @169) #22, !noalias !1327
  unreachable

_RNvMs1_NtNtCsiRgJJXJ4lb7_6brotli3enc9interfaceINtB5_24PredictionModeContextMapNtNtB7_10input_pair17InputReferenceMutE17set_mixing_valuesCskeugdADtBsi_12pingora_core.exit: ; preds = %._crit_edge
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.val20 = load ptr, ptr %i.an, align 8, !nonnull !9, !noundef !9
  %i.ao = getelementptr inbounds nuw i8, ptr %.val20, i64 4
  call void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull %i.ao, i64 noundef 8192, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(8192) %i.a, i64 noundef 8192, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @170)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.c:                                             ; preds = %.lr.ph
  %i.ap = fadd float %i.k, 6.000000e+00           ; 3 uses
  %i.aq = fcmp olt float %i.ap, %i.ag
  %i.ar = fcmp olt float %i.ap, %i.i
  %or.cond3 = and i1 %i.ar, %i.aq
  %i.as = fcmp olt float %i.ap, %i.n
  %or.cond4 = and i1 %i.as, %or.cond3
  br i1 %or.cond4, label %bb.f, label %bb.e

bb.d:                                             ; preds = %.lr.ph
  %i.at = icmp samesign ult i64 %.sroa.7.036, 8192
  br i1 %i.at, label %bb.t, label %bb.u

bb.e:                                             ; preds = %bb.c
  %i.au = fadd float %i.n, 6.000000e+00           ; 2 uses
  %i.av = fcmp olt float %i.au, %i.ag
  %i.aw = fcmp olt float %i.au, %i.i
  %or.cond5 = and i1 %i.aw, %i.av
  br i1 %or.cond5, label %bb.h, label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.ax = icmp samesign ult i64 %.sroa.7.036, 8192
  br i1 %i.ax, label %bb.p, label %bb.q

bb.g:                                             ; preds = %bb.e
  %i.ay = fadd float %i.ag, 6.000000e+00
  %i.az = fcmp olt float %i.ay, %i.i
  %i.ba = icmp samesign ult i64 %.sroa.7.036, 8192 ; 2 uses
  br i1 %i.az, label %bb.j, label %bb.i

bb.h:                                             ; preds = %bb.e
  %i.bb = icmp samesign ult i64 %.sroa.7.036, 8192
  br i1 %i.bb, label %bb.n, label %bb.o

bb.i:                                             ; preds = %bb.g
  br i1 %i.ba, label %bb.k, label %bb.l

bb.j:                                             ; preds = %bb.g
  br i1 %i.ba, label %condstore.split, label %bb.m

bb.k:                                             ; preds = %bb.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.7.036
  store i8 0, ptr %i.bc, align 1
  br label %bb.s

bb.l:                                             ; preds = %bb.i
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.7.036, i64 noundef 8192, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @187) #22
  unreachable

condstore.split:                                  ; preds = %bb.j
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.7.036 ; 2 uses
  %i.be = icmp eq i64 %..i24, %i.ab
  %spec.store.select = select i1 %i.be, i8 7, i8 4 ; 2 uses
  store i8 %spec.store.select, ptr %i.bd, align 1
  %i.bf = icmp eq i64 %..i24, %i.aa
  %i.bg = icmp eq i64 %..i24, %i.z                ; 2 uses
  %i.bh = or i1 %i.bf, %i.bg
  %i.bi = icmp ule i64 %i.y, %..i23               ; 2 uses
  %i.bj = or i1 %i.bi, %i.bh
  br i1 %i.bj, label %bb.r, label %bb.s

bb.m:                                             ; preds = %bb.j
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.7.036, i64 noundef 8192, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @188) #22
  unreachable

bb.n:                                             ; preds = %bb.h
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.7.036
  store i8 3, ptr %i.bk, align 1
  br label %bb.s

bb.o:                                             ; preds = %bb.h
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.7.036, i64 noundef 8192, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @189) #22
  unreachable

bb.p:                                             ; preds = %bb.f
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.7.036
  store i8 2, ptr %i.bl, align 1
  br label %bb.s

bb.q:                                             ; preds = %bb.f
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.7.036, i64 noundef 8192, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @190) #22
  unreachable

bb.r:                                             ; preds = %condstore.split
  %spec.select = select i1 %i.bg, i8 5, i8 6
  %spec.select16 = select i1 %i.bi, i8 4, i8 %spec.select ; 2 uses
  store i8 %spec.select16, ptr %i.bd, align 1
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %condstore.split, %bb.p, %bb.k, %bb.n, %bb.t
  %i.bm = phi i8 [ %spec.select16, %bb.r ], [ %spec.store.select, %condstore.split ], [ 2, %bb.p ], [ 0, %bb.k ], [ 3, %bb.n ], [ 1, %bb.t ] ; 2 uses
  %i.bn = icmp eq i64 %..i24, 0
  br i1 %i.bn, label %bb.v, label %bb.x

bb.t:                                             ; preds = %bb.d
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.7.036
  store i8 1, ptr %i.bo, align 1
  br label %bb.s

bb.u:                                             ; preds = %bb.d
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.7.036, i64 noundef 8192, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @191) #22
  unreachable

bb.v:                                             ; preds = %bb.s
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.7.036
  store i8 %.sroa.010.039, ptr %i.bp, align 1
  br label %bb.w

bb.w:                                             ; preds = %bb.x, %bb.v
  %.sroa.09.1 = phi i32 [ %.sroa.09.038, %bb.v ], [ %spec.select17, %bb.x ]
  %.sroa.010.1 = phi i8 [ %.sroa.010.039, %bb.v ], [ %spec.select18, %bb.x ]
  %i.bq = icmp eq ptr %i.g, %i.e
  br i1 %i.bq, label %._crit_edge, label %.lr.ph

bb.x:                                             ; preds = %bb.s
  %i.br = zext nneg i8 %i.bm to i64
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.br ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 4, !noundef !9
  %i.bu = add i32 %i.bt, 1                        ; 3 uses
  store i32 %i.bu, ptr %i.bs, align 4
  %i.bv = icmp ugt i32 %i.bu, %.sroa.09.038
  %spec.select17 = tail call i32 @llvm.umax.i32(i32 %i.bu, i32 %.sroa.09.038)
  %spec.select18 = select i1 %i.bv, i8 %i.bm, i8 %.sroa.010.039
  br label %bb.w
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsc_NtNtCsiRgJJXJ4lb7_6brotli3enc10prior_evalINtB5_9PriorEvalNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocE16update_cost_baseCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(296) %0, i64 noundef %1, i64 noundef %2, i8 noundef %3, i64 noundef %4, i8 noundef %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 6 uses
  store i64 %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 289
  %i.c = load i8, ptr %i.b, align 1, !noundef !9
  %i.d = zext i8 %i.c to i64
  %i.e = sub i64 %2, %i.d
  %i.f = and i64 %i.e, 7
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.f
  %i.h = load i8, ptr %i.g, align 1, !noundef !9  ; 2 uses
  %i.i = lshr i8 %i.h, 4
  %i.j = zext nneg i8 %i.i to i64
  %i.k = shl nuw nsw i64 %i.j, 8
  %i.l = add i64 %i.k, %4                         ; 3 uses
  %i.m = lshr i8 %5, 4                            ; 4 uses
  %i.n = add i64 %4, 4096
  %i.o = zext nneg i8 %i.m to i64                 ; 12 uses
  %i.p = shl nuw nsw i64 %i.o, 8
  %i.q = add i64 %i.n, %i.p                       ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.val2514 = load ptr, ptr %i.r, align 8, !nonnull !9, !noundef !9 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 120
  %.val2515 = load i64, ptr %i.s, align 8, !noundef !9 ; 4 uses
  %i.t = mul i64 %4, 17                           ; 7 uses
  %i.u = icmp ult i64 %i.t, %.val2515
  br i1 %i.u, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw [32 x i8], ptr %.val2514, i64 %i.t ; 5 uses
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %i.v, i64 %i.o ; 2 uses
  %i.x = load i16, ptr %i.w, align 2, !noalias !1330, !noundef !9 ; 2 uses
  %i.y = icmp eq i8 %i.m, 0                       ; 8 uses
  br i1 %i.y, label %_RNvMsa_NtNtCsiRgJJXJ4lb7_6brotli3enc10prior_evalNtB5_3CDF4cost.exit129, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.z = getelementptr i8, ptr %i.w, i64 -2
  %i.aa = load i16, ptr %i.z, align 2, !noalias !1330, !noundef !9
  %i.ab = sub i16 %i.x, %i.aa
  br label %_RNvMsa_NtNtCsiRgJJXJ4lb7_6brotli3enc10prior_evalNtB5_3CDF4cost.exit129

_RNvMsa_NtNtCsiRgJJXJ4lb7_6brotli3enc10prior_evalNtB5_3CDF4cost.exit129: ; preds = %bb.b, %bb.c
  %.sroa.0.0.i128 = phi i16 [ %i.x, %bb.b ], [ %i.ab, %bb.c ]
  %i.ac = zext i16 %.sroa.0.0.i128 to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %i.v, i64 30
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc4util6log64k, i64 %i.ac
  %i.af = load float, ptr %i.ae, align 4, !noalias !1330, !noundef !9
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 276
  %i.ah = load i16, ptr %i.ag, align 4, !noundef !9 ; 7 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 278
  %i.aj = load i16, ptr %i.ai, align 2, !noundef !9
  %.sroa.0.i985.sroa.16.0..sroa.0.0.2521.sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 272
  %6 = icmp ult i8 %5, 32
  %7 = insertelement <2 x i8> poison, i8 %5, i64 0
  %8 = shufflevector <2 x i8> %7, <2 x i8> poison, <2 x i32> zeroinitializer
  %9 = icmp ult <2 x i8> %8, <i8 48, i8 64>
  %i.al = insertelement <4 x i8> poison, i8 %5, i64 0
  %i.am = shufflevector <4 x i8> %i.al, <4 x i8> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.an = icmp ult <4 x i8> %i.am, <i8 80, i8 96, i8 112, i8 -1>
  %i.ao = icmp sgt <4 x i8> %i.am, <i8 80, i8 96, i8 112, i8 -1>
  %i.ap = icmp ult <4 x i8> %i.am, <i8 -112, i8 -96, i8 -80, i8 -64> ; 6 uses
  %i.aq = icmp ult i8 %5, -48                     ; 3 uses
  %i.ar = icmp ult i8 %5, -32                     ; 3 uses
  %.not = icmp eq i8 %i.m, 15                     ; 3 uses
  %.inv.not = icmp eq i8 %i.m, 0
  %i.as = load <8 x i16>, ptr %i.v, align 2, !noalias !1333
  %10 = insertelement <8 x i1> poison, i1 %.inv.not, i64 0
  %11 = insertelement <8 x i1> %10, i1 %6, i64 1
  %12 = shufflevector <2 x i1> %9, <2 x i1> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %13 = shufflevector <8 x i1> %11, <8 x i1> %12, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.at = shufflevector <4 x i1> %i.an, <4 x i1> %i.ao, <8 x i32> <i32 0, i32 1, i32 2, i32 7, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.au = shufflevector <8 x i1> %13, <8 x i1> %i.at, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11> ; 3 uses
  %i.av = insertelement <8 x i16> poison, i16 %i.ah, i64 0
  %i.aw = shufflevector <8 x i16> %i.av, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.ax = select <8 x i1> %i.au, <8 x i16> %i.aw, <8 x i16> zeroinitializer
  %i.ay = select i1 %i.aq, i16 %i.ah, i16 0
  %i.az = select i1 %i.ar, i16 %i.ah, i16 0
  %i.ba = select i1 %.not, i16 0, i16 %i.ah
  %i.bb = add <8 x i16> %i.ax, %i.as              ; 2 uses
  %i.bc = load i16, ptr %i.ad, align 2, !noalias !1330, !noundef !9 ; 2 uses
  %i.bd = load <8 x i16>, ptr %.sroa.0.i985.sroa.16.0..sroa.0.0.2521.sroa_idx, align 2, !noalias !9
  %i.be = zext i16 %i.bc to i64
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc4util6log64k, i64 %i.be
  %i.bg = load float, ptr %i.bf, align 4, !noalias !1330, !noundef !9
  %i.bh = insertelement <4 x i16> poison, i16 %i.ah, i64 0
  %i.bi = shufflevector <4 x i16> %i.bh, <4 x i16> poison, <4 x i32> zeroinitializer
  %i.bj = select <4 x i1> %i.ap, <4 x i16> %i.bi, <4 x i16> zeroinitializer
  %i.bk = add i16 %i.ah, %i.bc
  %i.bl = insertelement <8 x i16> poison, i16 %i.ay, i64 4
  %i.bm = insertelement <8 x i16> %i.bl, i16 %i.az, i64 5
  %i.bn = insertelement <8 x i16> %i.bm, i16 %i.ba, i64 6
  %i.bo = insertelement <8 x i16> %i.bn, i16 %i.ah, i64 7
  %i.bp = shufflevector <4 x i16> %i.bj, <4 x i16> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bq = shufflevector <8 x i16> %i.bp, <8 x i16> %i.bo, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.br = add <8 x i16> %i.bq, %i.bd              ; 2 uses
  %.not.i1037 = icmp slt i16 %i.bk, %i.aj
  br i1 %.not.i1037, label %_RNvMsa_NtNtCsiRgJJXJ4lb7_6brotli3enc10prior_evalNtB5_3CDF6update.exit1044, label %bb.d

bb.d:                                             ; preds = %_RNvMsa_NtNtCsiRgJJXJ4lb7_6brotli3enc10prior_evalNtB5_3CDF4cost.exit129
  %i.bs = add <8 x i16> %i.bb, <i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8> ; 2 uses
  %i.bt = add <8 x i16> %i.br, <i16 9, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15, i16 16> ; 2 uses
  %i.bu = ashr <8 x i16> %i.bs, splat (i16 2)
  %i.bv = ashr <8 x i16> %i.bt, splat (i16 2)
  %i.bw = sub <8 x i16> %i.bs, %i.bu
  %i.bx = sub <8 x i16> %i.bt, %i.bv
  br label %_RNvMsa_NtNtCsiRgJJXJ4lb7_6brotli3enc10prior_evalNtB5_3CDF6update.exit1044

_RNvMsa_NtNtCsiRgJJXJ4lb7_6brotli3enc10prior_evalNtB5_3CDF6update.exit1044: ; preds = %_RNvMsa_NtNtCsiRgJJXJ4lb7_6brotli3enc10prior_evalNtB5_3CDF4cost.exit129, %bb.d
  %i.by = phi <8 x i16> [ %i.bb, %_RNvMsa_NtNtCsiRgJJXJ4lb7_6brotli3enc10prior_evalNtB5_3CDF4cost.exit129 ], [ %i.bw, %bb.d ]
  %i.bz = phi <8 x i16> [ %i.br, %_RNvMsa_NtNtCsiRgJJXJ4lb7_6brotli3enc10prior_evalNtB5_3CDF4cost.exit129 ], [ %i.bx, %bb.d ]
  store <8 x i16> %i.by, ptr %i.v, align 2, !noalias !1333
  store <8 x i16> %i.bz, ptr %.sroa.0.i985.sroa.16.0..sroa.0.0.2521.sroa_idx, align 2, !noalias !1333
  %i.ca = add nuw i64 %i.t, 1
  %i.cb = add i64 %i.ca, %i.o                     ; 6 uses
  %i.cc = icmp ult i64 %i.cb, %.val2515
  br i1 %i.cc, label %bb.f, label %bb.i

bb.e:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.t, i64 noundef %.val2515, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @192) #22
  unreachable

bb.f:                                             ; preds = %_RNvMsa_NtNtCsiRgJJXJ4lb7_6brotli3enc10prior_evalNtB5_3CDF6update.exit1044
  %i.cd = getelementptr inbounds nuw [32 x i8], ptr %.val2514, i64 %i.cb ; 5 uses
  %i.ce = and i8 %5, 15                           ; 10 uses
  %i.cf = zext nneg i8 %i.ce to i64               ; 8 uses
  %i.cg = getelementptr inbounds nuw [2 x i8], ptr %i.cd, i64 %i.cf ; 2 uses
  %i.ch = load i16, ptr %i.cg, align 2, !noalias !1336, !noundef !9 ; 2 uses
  %i.ci = icmp eq i8 %i.ce, 0                     ; 8 uses
  br i1 %i.ci, label %_RNvMsa_NtNtCsiRgJJXJ4lb7_6brotli3enc10prior_evalNtB5_3CDF4cost.exit127, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cj = getelementptr i8, ptr %i.cg, i64 -2
  %i.ck = load i16, ptr %i.cj, align 2, !noalias !1336, !noundef !9
  %i.cl = sub i16 %i.ch, %i.ck
  br label %_RNvMsa_NtNtCsiRgJJXJ4lb7_6brotli3enc10prior_evalNtB5_3CDF4cost.exit127

_RNvMsa_NtNtCsiRgJJXJ4lb7_6brotli3enc10prior_evalNtB5_3CDF4cost.exit127: ; preds = %bb.f, %bb.g
  %.sroa.0.0.i126 = phi i16 [ %i.ch, %bb.f ], [ %i.cl, %bb.g ]
  %i.cm = zext i16 %.sroa.0.0.i126 to i64
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cd, i64 30
  %i.co = getelementptr inbounds nuw [4 x i8], ptr @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc4util6log64k, i64 %i.cm
  %i.cp = load float, ptr %i.co, align 4, !noalias !1336, !noundef !9
  %i.cq = load i16, ptr %i.ak, align 8, !noundef !9 ; 17 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 274
  %i.cs = load i16, ptr %i.cr, align 2, !noundef !9 ; 3 uses
  %.sroa.0.i924.sroa.16.0..sroa.02523.0.2525.sroa_idx = getelementptr inbounds nuw i8, ptr %i.cd, i64 16 ; 2 uses
  %14 = icmp samesign ult i8 %i.ce, 2
  %15 = icmp samesign ult i8 %i.ce, 3
  %16 = icmp samesign ult i8 %i.ce, 4
  %i.ct = insertelement <4 x i8> poison, i8 %i.ce, i64 0
  %i.cu = shufflevector <4 x i8> %i.ct, <4 x i8> poison, <4 x i32> zeroinitializer ; 2 uses
  %17 = icmp samesign ult <4 x i8> %i.cu, <i8 5, i8 6, i8 7, i8 8>
  %i.cv = icmp samesign ult <4 x i8> %i.cu, <i8 9, i8 10, i8 11, i8 12> ; 2 uses
  %i.cw = icmp samesign ult i8 %i.ce, 13          ; 2 uses
  %i.cx = icmp samesign ult i8 %i.ce, 14          ; 2 uses
  %.not9587 = icmp eq i8 %i.ce, 15                ; 2 uses
  %.inv9024.not = icmp eq i8 %i.ce, 0
  %18 = load <8 x i16>, ptr %i.cd, align 2, !noalias !1339
  %19 = insertelement <8 x i1> poison, i1 %.inv9024.not, i64 0
  %20 = insertelement <8 x i1> %19, i1 %14, i64 1
  %21 = insertelement <8 x i1> %20, i1 %15, i64 2
  %22 = insertelement <8 x i1> %21, i1 %16, i64 3
  %23 = shufflevector <4 x i1> %17, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %24 = shufflevector <8 x i1> %22, <8 x i1> %23, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.cy = insertelement <8 x i16> poison, i16 %i.cq, i64 0
  %i.cz = shufflevector <8 x i16> %i.cy, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.da = select <8 x i1> %24, <8 x i16> %i.cz, <8 x i16> zeroinitializer ; 2 uses
  %i.db = insertelement <4 x i16> poison, i16 %i.cq, i64 0
  %i.dc = shufflevector <4 x i16> %i.db, <4 x i16> poison, <4 x i32> zeroinitializer
  %i.dd = select <4 x i1> %i.cv, <4 x i16> %i.dc, <4 x i16> zeroinitializer
  %i.de = select i1 %i.cw, i16 %i.cq, i16 0
  %i.df = select i1 %i.cx, i16 %i.cq, i16 0
  %i.dg = select i1 %.not9587, i16 0, i16 %i.cq
  %i.dh = add <8 x i16> %i.da, %18                ; 2 uses
  %i.di = load i16, ptr %i.cn, align 2, !noalias !1336, !noundef !9 ; 2 uses
  %i.dj = load <8 x i16>, ptr %.sroa.0.i924.sroa.16.0..sroa.02523.0.2525.sroa_idx, align 2, !noalias !9
  %i.dk = zext i16 %i.di to i64
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc4util6log64k, i64 %i.dk
  %i.dm = load float, ptr %i.dl, align 4, !noalias !1336, !noundef !9
  %i.dn = fsub float %i.dm, %i.cp
  %i.do = add i16 %i.cq, %i.di
  %i.dp = insertelement <8 x i16> poison, i16 %i.de, i64 4
  %i.dq = insertelement <8 x i16> %i.dp, i16 %i.df, i64 5
  %i.dr = insertelement <8 x i16> %i.dq, i16 %i.dg, i64 6
  %i.ds = insertelement <8 x i16> %i.dr, i16 %i.cq, i64 7
  %i.dt = shufflevector <4 x i16> %i.dd, <4 x i16> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.du = shufflevector <8 x i16> %i.dt, <8 x i16> %i.ds, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.dv = add <8 x i16> %i.du, %i.dj              ; 2 uses
  %.not.i976 = icmp slt i16 %i.do, %i.cs
  br i1 %.not.i976, label %_RNvMsa_NtNtCsiRgJJXJ4lb7_6brotli3enc10prior_evalNtB5_3CDF6update.exit983, label %bb.h

bb.h:                                             ; preds = %_RNvMsa_NtNtCsiRgJJXJ4lb7_6brotli3enc10prior_evalNtB5_3CDF4cost.exit127
  %i.dw = add <8 x i16> %i.dh, <i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8> ; 2 uses
  %i.dx = add <8 x i16> %i.dv, <i16 9, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15, i16 16> ; 2 uses
  %i.dy = ashr <8 x i16> %i.dw, splat (i16 2)
  %i.dz = ashr <8 x i16> %i.dx, splat (i16 2)
  %i.ea = sub <8 x i16> %i.dw, %i.dy
  %i.eb = sub <8 x i16> %i.dx, %i.dz
  br label %_RNvMsa_NtNtCsiRgJJXJ4lb7_6brotli3enc10prior_evalNtB5_3CDF6update.exit983

_RNvMsa_NtNtCsiRgJJXJ4lb7_6brotli3enc10prior_evalNtB5_3CDF6update.exit983: ; preds = %_RNvMsa_NtNtCsiRgJJXJ4lb7_6brotli3enc10prior_evalNtB5_3CDF4cost.exit127, %bb.h
  %i.ec = phi <8 x i16> [ %i.dh, %_RNvMsa_NtNtCsiRgJJXJ4lb7_6brotli3enc10prior_evalNtB5_3CDF4cost.exit127 ], [ %i.ea, %bb.h ]
  %i.ed = phi <8 x i16> [ %i.dv, %_RNvMsa_NtNtCsiRgJJXJ4lb7_6brotli3enc10prior_evalNtB5_3CDF4cost.exit127 ], [ %i.eb, %bb.h ]
  store <8 x i16> %i.ec, ptr %i.cd, align 2, !noalias !1339
  store <8 x i16> %i.ed, ptr %.sroa.0.i924.sroa.16.0..sroa.02523.0.2525.sroa_idx, align 2, !noalias !1339
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 128
  %.val2510 = load ptr, ptr %i.ee, align 8, !nonnull !9, !noundef !9 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 136
  %.val2511 = load i64, ptr %i.ef, align 8, !noundef !9 ; 4 uses
  %i.eg = icmp ult i64 %i.t, %.val2511
  br i1 %i.eg, label %bb.j, label %bb.m

bb.i:                                             ; preds = %_RNvMsa_NtNtCsiRgJJXJ4lb7_6brotli3enc10prior_evalNtB5_3CDF6update.exit1044
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.cb, i64 noundef %.val2515, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @192) #22
  unreachable

bb.j:                                             ; preds = %_RNvMsa_NtNtCsiRgJJXJ4lb7_6brotli3enc10prior_evalNtB5_3CDF6update.exit983
  %i.eh = getelementptr inbounds nuw [32 x i8], ptr %.val2510, i64 %i.t ; 5 uses
  %i.ei = getelementptr inbounds nuw [2 x i8], ptr %i.eh, i64 %i.o ; 2 uses
  %i.ej = load i16, ptr %i.ei, align 2, !noalias !1342, !noundef !9 ; 2 uses
  br i1 %i.y, label %_RNvMsa_NtNtCsiRgJJXJ4lb7_6brotli3enc10prior_evalNtB5_3CDF4cost.exit125, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ek = getelementptr i8, ptr %i.ei, i64 -2
  %i.el = load i16, ptr %i.ek, align 2, !noalias !1342, !noundef !9
  %i.em = sub i16 %i.ej, %i.el
  br label %_RNvMsa_NtNtCsiRgJJXJ4lb7_6brotli3enc10prior_evalNtB5_3CDF4cost.exit125

_RNvMsa_NtNtCsiRgJJXJ4lb7_6brotli3enc10prior_evalNtB5_3CDF4cost.exit125: ; preds = %bb.j, %bb.k
  %.sroa.0.0.i124 = phi i16 [ %i.ej, %bb.j ], [ %i.em, %bb.k ]
  %i.en = zext i16 %.sroa.0.0.i124 to i64
  %i.eo = getelementptr inbounds nuw i8, ptr %i.eh, i64 30
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc4util6log64k, i64 %i.en
  %i.eq = load float, ptr %i.ep, align 4, !noalias !1342, !noundef !9
  %i.er = load <8 x i16>, ptr %i.eh, align 2, !noalias !1345 ; 2 uses
  %.sroa.0.i863.sroa.16.0..sroa.02527.0.2529.sroa_idx = getelementptr inbounds nuw i8, ptr %i.eh, i64 16 ; 2 uses
  %i.es = load i16, ptr %i.eo, align 2, !noalias !1342, !noundef !9 ; 2 uses
  %i.et = load <8 x i16>, ptr %.sroa.0.i863.sroa.16.0..sroa.02527.0.2529.sroa_idx, align 2, !noalias !9 ; 2 uses
  %i.eu = zext i16 %i.es to i64
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc4util6log64k, i64 %i.eu
  %i.ew = load float, ptr %i.ev, align 4, !noalias !1342, !noundef !9
  %.not.i915 = icmp slt i16 %i.es, 1024
  br i1 %.not.i915, label %_RNvMsa_NtNtCsiRgJJXJ4lb7_6brotli3enc10prior_evalNtB5_3CDF6update.exit922, label %bb.l

bb.l:                                             ; preds = %_RNvMsa_NtNtCsiRgJJXJ4lb7_6brotli3enc10prior_evalNtB5_3CDF4cost.exit125
  %i.ex = add <8 x i16> %i.er, <i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8> ; 2 uses
  %i.ey = add <8 x i16> %i.et, <i16 9, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15, i16 16> ; 2 uses
  %i.ez = ashr <8 x i16> %i.ex, splat (i16 2)
  %i.fa = ashr <8 x i16> %i.ey, splat (i16 2)
  %i.fb = sub <8 x i16> %i.ex, %i.ez
  %i.fc = sub <8 x i16> %i.ey, %i.fa
  br label %_RNvMsa_NtNtCsiRgJJXJ4lb7_6brotli3enc10prior_evalNtB5_3CDF6update.exit922

_RNvMsa_NtNtCsiRgJJXJ4lb7_6brotli3enc10prior_evalNtB5_3CDF6update.exit922: ; preds = %_RNvMsa_NtNtCsiRgJJXJ4lb7_6brotli3enc10prior_evalNtB5_3CDF4cost.exit125, %bb.l
  %i.fd = phi <8 x i16> [ %i.er, %_RNvMsa_NtNtCsiRgJJXJ4lb7_6brotli3enc10prior_evalNtB5_3CDF4cost.exit125 ], [ %i.fb, %bb.l ]
  %i.fe = phi <8 x i16> [ %i.et, %_RNvMsa_NtNtCsiRgJJXJ4lb7_6brotli3enc10prior_evalNtB5_3CDF4cost.exit125 ], [ %i.fc, %bb.l ]
  store <8 x i16> %i.fd, ptr %i.eh, align 2, !noalias !1345
  store <8 x i16> %i.fe, ptr %.sroa.0.i863.sroa.16.0..sroa.02527.0.2529.sroa_idx, align 2, !noalias !1345
  %i.ff = icmp ult i64 %i.cb, %.val2511
  br i1 %i.ff, label %bb.n, label %bb.q

bb.m:                                             ; preds = %_RNvMsa_NtNtCsiRgJJXJ4lb7_6brotli3enc10prior_evalNtB5_3CDF6update.exit983
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.t, i64 noundef %.val2511, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @192) #22
  unreachable

bb.n:                                             ; preds = %_RNvMsa_NtNtCsiRgJJXJ4lb7_6brotli3enc10prior_evalNtB5_3CDF6update.exit922
  %i.fg = getelementptr inbounds nuw [32 x i8], ptr %.val2510, i64 %i.cb ; 5 uses
  %i.fh = getelementptr inbounds nuw [2 x i8], ptr %i.fg, i64 %i.cf ; 2 uses
  %i.fi = load i16, ptr %i.fh, align 2, !noalias !1348, !noundef !9 ; 2 uses
  br i1 %i.ci, label %_RNvMsa_NtNtCsiRgJJXJ4lb7_6brotli3enc10prior_evalNtB5_3CDF4cost.exit123, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.fj = getelementptr i8, ptr %i.fh, i64 -2
  %i.fk = load i16, ptr %i.fj, align 2, !noalias !1348, !noundef !9
  %i.fl = sub i16 %i.fi, %i.fk
  br label %_RNvMsa_NtNtCsiRgJJXJ4lb7_6brotli3enc10prior_evalNtB5_3CDF4cost.exit123

_RNvMsa_NtNtCsiRgJJXJ4lb7_6brotli3enc10prior_evalNtB5_3CDF4cost.exit123: ; preds = %bb.n, %bb.o
  %.sroa.0.0.i122 = phi i16 [ %i.fi, %bb.n ], [ %i.fl, %bb.o ]
  %i.fm = zext i16 %.sroa.0.0.i122 to i64
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fg, i64 30
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc4util6log64k, i64 %i.fm
  %i.fp = load float, ptr %i.fo, align 4, !noalias !1348, !noundef !9
  %i.fq = load <8 x i16>, ptr %i.fg, align 2, !noalias !1351 ; 2 uses
  %.sroa.0.i802.sroa.16.0..sroa.02531.0.2533.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fg, i64 16 ; 2 uses
  %i.fr = load i16, ptr %i.fn, align 2, !noalias !1348, !noundef !9 ; 2 uses
  %i.fs = load <8 x i16>, ptr %.sroa.0.i802.sroa.16.0..sroa.02531.0.2533.sroa_idx, align 2, !noalias !9 ; 2 uses
  %i.ft = zext i16 %i.fr to i64
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc4util6log64k, i64 %i.ft
  %i.fv = load float, ptr %i.fu, align 4, !noalias !1348, !noundef !9
  %i.fw = fsub float %i.fv, %i.fp
  %.not.i854 = icmp slt i16 %i.fr, 1024
  br i1 %.not.i854, label %_RNvMsa_NtNtCsiRgJJXJ4lb7_6brotli3enc10prior_evalNtB5_3CDF6update.exit861, label %bb.p

bb.p:                                             ; preds = %_RNvMsa_NtNtCsiRgJJXJ4lb7_6brotli3enc10prior_evalNtB5_3CDF4cost.exit123
  %i.fx = add <8 x i16> %i.fq, <i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8> ; 2 uses
  %i.fy = add <8 x i16> %i.fs, <i16 9, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15, i16 16> ; 2 uses
  %i.fz = ashr <8 x i16> %i.fx, splat (i16 2)
  %i.ga = ashr <8 x i16> %i.fy, splat (i16 2)
  %i.gb = sub <8 x i16> %i.fx, %i.fz
  %i.gc = sub <8 x i16> %i.fy, %i.ga
  br label %_RNvMsa_NtNtCsiRgJJXJ4lb7_6brotli3enc10prior_evalNtB5_3CDF6update.exit861

_RNvMsa_NtNtCsiRgJJXJ4lb7_6brotli3enc10prior_evalNtB5_3CDF6update.exit861: ; preds = %_RNvMsa_NtNtCsiRgJJXJ4lb7_6brotli3enc10prior_evalNtB5_3CDF4cost.exit123, %bb.p
  %i.gd = phi <8 x i16> [ %i.fq, %_RNvMsa_NtNtCsiRgJJXJ4lb7_6brotli3enc10prior_evalNtB5_3CDF4cost.exit123 ], [ %i.gb, %bb.p ]
  %i.ge = phi <8 x i16> [ %i.fs, %_RNvMsa_NtNtCsiRgJJXJ4lb7_6brotli3enc10prior_evalNtB5_3CDF4cost.exit123 ], [ %i.gc, %bb.p ]
  store <8 x i16> %i.gd, ptr %i.fg, align 2, !noalias !1351
  store <8 x i16> %i.ge, ptr %.sroa.0.i802.sroa.16.0..sroa.02531.0.2533.sroa_idx, align 2, !noalias !1351
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 144
  %.val2506 = load ptr, ptr %i.gf, align 8, !nonnull !9, !noundef !9 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 152
  %.val2507 = load i64, ptr %i.gg, align 8, !noundef !9 ; 2 uses
  %i.gh = shl i64 %4, 1                           ; 6 uses
  %i.gi = or disjoint i64 %i.gh, 1                ; 3 uses
  %i.gj = icmp ult i64 %i.gi, %.val2507
  br i1 %i.gj, label %bb.r, label %bb.u

bb.q:                                             ; preds = %_RNvMsa_NtNtCsiRgJJXJ4lb7_6brotli3enc10prior_evalNtB5_3CDF6update.exit922
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.cb, i64 noundef %.val2511, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @192) #22
  unreachable

bb.r:                                             ; preds = %_RNvMsa_NtNtCsiRgJJXJ4lb7_6brotli3enc10prior_evalNtB5_3CDF6update.exit861
  %i.gk = getelementptr inbounds nuw [32 x i8], ptr %.val2506, i64 %i.gi ; 5 uses
  %i.gl = getelementptr inbounds nuw [2 x i8], ptr %i.gk, i64 %i.o ; 2 uses
  %i.gm = load i16, ptr %i.gl, align 2, !noalias !1354, !noundef !9 ; 2 uses
  br i1 %i.y, label %_RNvMsa_NtNtCsiRgJJXJ4lb7_6brotli3enc10prior_evalNtB5_3CDF4cost.exit121, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.gn = getelementptr i8, ptr %i.gl, i64 -2
  %i.go = load i16, ptr %i.gn, align 2, !noalias !1354, !noundef !9
  %i.gp = sub i16 %i.gm, %i.go
  br label %_RNvMsa_NtNtCsiRgJJXJ4lb7_6brotli3enc10prior_evalNtB5_3CDF4cost.exit121

_RNvMsa_NtNtCsiRgJJXJ4lb7_6brotli3enc10prior_evalNtB5_3CDF4cost.exit121: ; preds = %bb.r, %bb.s
  %.sroa.0.0.i120 = phi i16 [ %i.gm, %bb.r ], [ %i.gp, %bb.s ]
  %i.gq = zext i16 %.sroa.0.0.i120 to i64
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gk, i64 30
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc4util6log64k, i64 %i.gq
  %i.gt = load float, ptr %i.gs, align 4, !noalias !1354, !noundef !9
  %i.gu = load <8 x i16>, ptr %i.gk, align 2, !noalias !1357
  %.sroa.0.i741.sroa.16.0..sroa.02535.0.2537.sroa_idx = getelementptr inbounds nuw i8, ptr %i.gk, i64 16 ; 2 uses
  %i.gv = select <8 x i1> %i.au, <8 x i16> %i.cz, <8 x i16> zeroinitializer
  %i.gw = extractelement <4 x i1> %i.ap, i64 0
  %i.gx = select i1 %i.gw, i16 %i.cq, i16 0
  %i.gy = extractelement <4 x i1> %i.ap, i64 1
  %i.gz = select i1 %i.gy, i16 %i.cq, i16 0
  %i.ha = extractelement <4 x i1> %i.ap, i64 2
  %i.hb = select i1 %i.ha, i16 %i.cq, i16 0
  %i.hc = extractelement <4 x i1> %i.ap, i64 3
  %i.hd = select i1 %i.hc, i16 %i.cq, i16 0
  %i.he = select i1 %i.aq, i16 %i.cq, i16 0
  %i.hf = select i1 %i.ar, i16 %i.cq, i16 0
  %i.hg = select i1 %.not, i16 0, i16 %i.cq
  %i.hh = add <8 x i16> %i.gv, %i.gu              ; 2 uses
  %i.hi = load i16, ptr %i.gr, align 2, !noalias !1354, !noundef !9 ; 2 uses
  %i.hj = load <8 x i16>, ptr %.sroa.0.i741.sroa.16.0..sroa.02535.0.2537.sroa_idx, align 2, !noalias !9
  %i.hk = zext i16 %i.hi to i64
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc4util6log64k, i64 %i.hk
  %i.hm = load float, ptr %i.hl, align 4, !noalias !1354, !noundef !9
  %i.hn = add i16 %i.cq, %i.hi
  %i.ho = insertelement <8 x i16> poison, i16 %i.gx, i64 0
  %i.hp = insertelement <8 x i16> %i.ho, i16 %i.gz, i64 1
  %i.hq = insertelement <8 x i16> %i.hp, i16 %i.hb, i64 2
  %i.hr = insertelement <8 x i16> %i.hq, i16 %i.hd, i64 3
  %i.hs = insertelement <8 x i16> %i.hr, i16 %i.he, i64 4
  %i.ht = insertelement <8 x i16> %i.hs, i16 %i.hf, i64 5
  %i.hu = insertelement <8 x i16> %i.ht, i16 %i.hg, i64 6
  %i.hv = insertelement <8 x i16> %i.hu, i16 %i.cq, i64 7
  %i.hw = add <8 x i16> %i.hv, %i.hj              ; 2 uses
  %.not.i793 = icmp slt i16 %i.hn, %i.cs
  br i1 %.not.i793, label %_RNvMsa_NtNtCsiRgJJXJ4lb7_6brotli3enc10prior_evalNtB5_3CDF6update.exit800, label %bb.t

bb.t:                                             ; preds = %_RNvMsa_NtNtCsiRgJJXJ4lb7_6brotli3enc10prior_evalNtB5_3CDF4cost.exit121
  %i.hx = add <8 x i16> %i.hh, <i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8> ; 2 uses
  %i.hy = add <8 x i16> %i.hw, <i16 9, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15, i16 16> ; 2 uses
  %i.hz = ashr <8 x i16> %i.hx, splat (i16 2)
  %i.ia = ashr <8 x i16> %i.hy, splat (i16 2)
  %i.ib = sub <8 x i16> %i.hx, %i.hz
  %i.ic = sub <8 x i16> %i.hy, %i.ia
  br label %_RNvMsa_NtNtCsiRgJJXJ4lb7_6brotli3enc10prior_evalNtB5_3CDF6update.exit800

_RNvMsa_NtNtCsiRgJJXJ4lb7_6brotli3enc10prior_evalNtB5_3CDF6update.exit800: ; preds = %_RNvMsa_NtNtCsiRgJJXJ4lb7_6brotli3enc10prior_evalNtB5_3CDF4cost.exit121, %bb.t
  %i.id = phi <8 x i16> [ %i.hh, %_RNvMsa_NtNtCsiRgJJXJ4lb7_6brotli3enc10prior_evalNtB5_3CDF4cost.exit121 ], [ %i.ib, %bb.t ]
  %i.ie = phi <8 x i16> [ %i.hw, %_RNvMsa_NtNtCsiRgJJXJ4lb7_6brotli3enc10prior_evalNtB5_3CDF4cost.exit121 ], [ %i.ic, %bb.t ]
  store <8 x i16> %i.id, ptr %i.gk, align 2, !noalias !1357
  store <8 x i16> %i.ie, ptr %.sroa.0.i741.sroa.16.0..sroa.02535.0.2537.sroa_idx, align 2, !noalias !1357
  %i.if = getelementptr inbounds nuw [32 x i8], ptr %.val2506, i64 %i.gh ; 5 uses
  %i.ig = getelementptr inbounds nuw [2 x i8], ptr %i.if, i64 %i.cf ; 2 uses
  %i.ih = load i16, ptr %i.ig, align 2, !noalias !1360, !noundef !9 ; 2 uses
  br i1 %i.ci, label %_RNvMsa_NtNtCsiRgJJXJ4lb7_6brotli3enc10prior_evalNtB5_3CDF4cost.exit119, label %bb.v

bb.u:                                             ; preds = %_RNvMsa_NtNtCsiRgJJXJ4lb7_6brotli3enc10prior_evalNtB5_3CDF6update.exit861
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.gi, i64 noundef %.val2507, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @192) #22
  unreachable

bb.v:                                             ; preds = %_RNvMsa_NtNtCsiRgJJXJ4lb7_6brotli3enc10prior_evalNtB5_3CDF6update.exit800
  %i.ii = getelementptr i8, ptr %i.ig, i64 -2
  %i.ij = load i16, ptr %i.ii, align 2, !noalias !1360, !noundef !9
  %i.ik = sub i16 %i.ih, %i.ij
  br label %_RNvMsa_NtNtCsiRgJJXJ4lb7_6brotli3enc10prior_evalNtB5_3CDF4cost.exit119

_RNvMsa_NtNtCsiRgJJXJ4lb7_6brotli3enc10prior_evalNtB5_3CDF4cost.exit119: ; preds = %_RNvMsa_NtNtCsiRgJJXJ4lb7_6brotli3enc10prior_evalNtB5_3CDF6update.exit800, %bb.v
  %.sroa.0.0.i118 = phi i16 [ %i.ih, %_RNvMsa_NtNtCsiRgJJXJ4lb7_6brotli3enc10prior_evalNtB5_3CDF6update.exit800 ], [ %i.ik, %bb.v ]
  %i.il = zext i16 %.sroa.0.0.i118 to i64
  %i.im = getelementptr inbounds nuw i8, ptr %i.if, i64 30
  %i.in = getelementptr inbounds nuw [4 x i8], ptr @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc4util6log64k, i64 %i.il
  %i.io = load float, ptr %i.in, align 4, !noalias !1360, !noundef !9
  %i.ip = load <8 x i16>, ptr %i.if, align 2, !noalias !1363
  %.sroa.0.i680.sroa.16.0..sroa.02539.0.2541.sroa_idx = getelementptr inbounds nuw i8, ptr %i.if, i64 16 ; 2 uses
  %i.iq = add <8 x i16> %i.da, %i.ip              ; 2 uses
  %i.ir = load i16, ptr %i.im, align 2, !noalias !1360, !noundef !9 ; 2 uses
  %i.is = load <8 x i16>, ptr %.sroa.0.i680.sroa.16.0..sroa.02539.0.2541.sroa_idx, align 2, !noalias !9
  %i.it = zext i16 %i.ir to i64
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc4util6log64k, i64 %i.it
  %i.iv = load float, ptr %i.iu, align 4, !noalias !1360, !noundef !9
  %i.iw = fsub float %i.iv, %i.io
  %i.ix = add i16 %i.cq, %i.ir
  %i.iy = add <8 x i16> %i.du, %i.is              ; 2 uses
  %.not.i732 = icmp slt i16 %i.ix, %i.cs
  br i1 %.not.i732, label %_RNvMsa_NtNtCsiRgJJXJ4lb7_6brotli3enc10prior_evalNtB5_3CDF6update.exit739, label %bb.w

bb.w:                                             ; preds = %_RNvMsa_NtNtCsiRgJJXJ4lb7_6brotli3enc10prior_evalNtB5_3CDF4cost.exit119
  %i.iz = add <8 x i16> %i.iq, <i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8> ; 2 uses
  %i.ja = add <8 x i16> %i.iy, <i16 9, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15, i16 16> ; 2 uses
  %i.jb = ashr <8 x i16> %i.iz, splat (i16 2)
  %i.jc = ashr <8 x i16> %i.ja, splat (i16 2)
  %i.jd = sub <8 x i16> %i.iz, %i.jb
  %i.je = sub <8 x i16> %i.ja, %i.jc
  br label %_RNvMsa_NtNtCsiRgJJXJ4lb7_6brotli3enc10prior_evalNtB5_3CDF6update.exit739

_RNvMsa_NtNtCsiRgJJXJ4lb7_6brotli3enc10prior_evalNtB5_3CDF6update.exit739: ; preds = %_RNvMsa_NtNtCsiRgJJXJ4lb7_6brotli3enc10prior_evalNtB5_3CDF4cost.exit119, %bb.w
  %i.jf = phi <8 x i16> [ %i.iq, %_RNvMsa_NtNtCsiRgJJXJ4lb7_6brotli3enc10prior_evalNtB5_3CDF4cost.exit119 ], [ %i.jd, %bb.w ]
  %i.jg = phi <8 x i16> [ %i.iy, %_RNvMsa_NtNtCsiRgJJXJ4lb7_6brotli3enc10prior_evalNtB5_3CDF4cost.exit119 ], [ %i.je, %bb.w ]
  store <8 x i16> %i.jf, ptr %i.if, align 2, !noalias !1363
  store <8 x i16> %i.jg, ptr %.sroa.0.i680.sroa.16.0..sroa.02539.0.2541.sroa_idx, align 2, !noalias !1363
  %i.jh = getelementptr inbounds nuw i8, ptr %0, i64 160
  %.val2502 = load ptr, ptr %i.jh, align 8, !nonnull !9, !noundef !9 ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %0, i64 168
  %.val2503 = load i64, ptr %i.ji, align 8, !noundef !9 ; 4 uses
  %i.jj = and i64 %2, 7
  %i.jk = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.jj
  %i.jl = load i8, ptr %i.jk, align 1, !noundef !9
  %i.jm = zext i8 %i.jl to i64                    ; 2 uses
  %i.jn = shl nuw nsw i64 %i.jm, 9
  %i.jo = or i64 %i.jn, %i.gh                     ; 3 uses
  %i.jp = icmp ult i64 %i.jo, %.val2503
  br i1 %i.jp, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %_RNvMsa_NtNtCsiRgJJXJ4lb7_6brotli3enc10prior_evalNtB5_3CDF6update.exit739
  %i.jq = getelementptr inbounds nuw [32 x i8], ptr %.val2502, i64 %i.jo ; 5 uses
  %i.jr = getelementptr inbounds nuw [2 x i8], ptr %i.jq, i64 %i.o ; 2 uses
  %i.js = load i16, ptr %i.jr, align 2, !noalias !1366, !noundef !9 ; 2 uses
  br i1 %i.y, label %_RNvMsa_NtNtCsiRgJJXJ4lb7_6brotli3enc10prior_evalNtB5_3CDF4cost.exit117, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.jt = getelementptr i8, ptr %i.jr, i64 -2
  %i.ju = load i16, ptr %i.jt, align 2, !noalias !1366, !noundef !9
  %i.jv = sub i16 %i.js, %i.ju
  br label %_RNvMsa_NtNtCsiRgJJXJ4lb7_6brotli3enc10prior_evalNtB5_3CDF4cost.exit117

_RNvMsa_NtNtCsiRgJJXJ4lb7_6brotli3enc10prior_evalNtB5_3CDF4cost.exit117: ; preds = %bb.x, %bb.y
  %.sroa.0.0.i116 = phi i16 [ %i.js, %bb.x ], [ %i.jv, %bb.y ]
  %i.jw = zext i16 %.sroa.0.0.i116 to i64
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jq, i64 30
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc4util6log64k, i64 %i.jw
  %i.jz = load float, ptr %i.jy, align 4, !noalias !1366, !noundef !9
  %i.ka = getelementptr inbounds nuw i8, ptr %0, i64 284
  %i.kb = load i16, ptr %i.ka, align 4, !noundef !9 ; 11 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %0, i64 286
  %i.kd = load i16, ptr %i.kc, align 2, !noundef !9 ; 5 uses
  %i.ke = load <8 x i16>, ptr %i.jq, align 2, !noalias !1369
  %.sroa.0.i619.sroa.16.0..sroa.02543.0.2545.sroa_idx = getelementptr inbounds nuw i8, ptr %i.jq, i64 16 ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.kg = insertelement <8 x i16> poison, i16 %i.kb, i64 0
  %i.kh = shufflevector <8 x i16> %i.kg, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.ki = select <8 x i1> %i.au, <8 x i16> %i.kh, <8 x i16> zeroinitializer ; 5 uses
  %i.kj = insertelement <4 x i16> poison, i16 %i.kb, i64 0
  %i.kk = shufflevector <4 x i16> %i.kj, <4 x i16> poison, <4 x i32> zeroinitializer
  %i.kl = select <4 x i1> %i.ap, <4 x i16> %i.kk, <4 x i16> zeroinitializer
  %i.km = select i1 %i.aq, i16 %i.kb, i16 0
  %i.kn = select i1 %i.ar, i16 %i.kb, i16 0
  %i.ko = select i1 %.not, i16 0, i16 %i.kb
  %i.kp = add <8 x i16> %i.ki, %i.ke              ; 2 uses
  %i.kq = load i16, ptr %i.jx, align 2, !noalias !1366, !noundef !9 ; 2 uses
  %i.kr = load <8 x i16>, ptr %.sroa.0.i619.sroa.16.0..sroa.02543.0.2545.sroa_idx, align 2, !noalias !9
  %i.ks = zext i16 %i.kq to i64
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc4util6log64k, i64 %i.ks
  %i.ku = load float, ptr %i.kt, align 4, !noalias !1366, !noundef !9
  %i.kv = add i16 %i.kb, %i.kq
  %i.kw = insertelement <8 x i16> poison, i16 %i.km, i64 4
  %i.kx = insertelement <8 x i16> %i.kw, i16 %i.kn, i64 5
  %i.ky = insertelement <8 x i16> %i.kx, i16 %i.ko, i64 6
  %i.kz = insertelement <8 x i16> %i.ky, i16 %i.kb, i64 7
  %i.la = shufflevector <4 x i16> %i.kl, <4 x i16> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.lb = shufflevector <8 x i16> %i.la, <8 x i16> %i.kz, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15> ; 5 uses
  %i.lc = add <8 x i16> %i.lb, %i.kr              ; 2 uses
  %.not.i671 = icmp slt i16 %i.kv, %i.kd
  br i1 %.not.i671, label %_RNvMsa_NtNtCsiRgJJXJ4lb7_6brotli3enc10prior_evalNtB5_3CDF6update.exit678, label %bb.z

bb.z:                                             ; preds = %_RNvMsa_NtNtCsiRgJJXJ4lb7_6brotli3enc10prior_evalNtB5_3CDF4cost.exit117
  %i.ld = add <8 x i16> %i.kp, <i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8> ; 2 uses
  %i.le = add <8 x i16> %i.lc, <i16 9, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15, i16 16> ; 2 uses
  %i.lf = ashr <8 x i16> %i.ld, splat (i16 2)
  %i.lg = ashr <8 x i16> %i.le, splat (i16 2)
  %i.lh = sub <8 x i16> %i.ld, %i.lf
  %i.li = sub <8 x i16> %i.le, %i.lg
  br label %_RNvMsa_NtNtCsiRgJJXJ4lb7_6brotli3enc10prior_evalNtB5_3CDF6update.exit678

_RNvMsa_NtNtCsiRgJJXJ4lb7_6brotli3enc10prior_evalNtB5_3CDF6update.exit678: ; preds = %_RNvMsa_NtNtCsiRgJJXJ4lb7_6brotli3enc10prior_evalNtB5_3CDF4cost.exit117, %bb.z
  %i.lj = phi <8 x i16> [ %i.kp, %_RNvMsa_NtNtCsiRgJJXJ4lb7_6brotli3enc10prior_evalNtB5_3CDF4cost.exit117 ], [ %i.lh, %bb.z ]
  %i.lk = phi <8 x i16> [ %i.lc, %_RNvMsa_NtNtCsiRgJJXJ4lb7_6brotli3enc10prior_evalNtB5_3CDF4cost.exit117 ], [ %i.li, %bb.z ]
  store <8 x i16> %i.lj, ptr %i.jq, align 2, !noalias !1369
  store <8 x i16> %i.lk, ptr %.sroa.0.i619.sroa.16.0..sroa.02543.0.2545.sroa_idx, align 2, !noalias !1369
  %i.ll = shl nuw nsw i64 %i.jm, 8
  %i.lm = and i64 %i.ll, 3840
  %i.ln = shl nuw nsw i64 %i.o, 12                ; 4 uses
  %i.lo = or i64 %4, %i.lm
  %i.lp = or i64 %i.lo, %i.ln
  %i.lq = shl i64 %i.lp, 1
  %i.lr = or disjoint i64 %i.lq, 1                ; 3 uses
  %i.ls = icmp ult i64 %i.lr, %.val2503
  br i1 %i.ls, label %bb.ab, label %bb.ae

bb.aa:                                            ; preds = %_RNvMsa_NtNtCsiRgJJXJ4lb7_6brotli3enc10prior_evalNtB5_3CDF6update.exit739
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.jo, i64 noundef %.val2503, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @192) #22
  unreachable

bb.ab:                                            ; preds = %_RNvMsa_NtNtCsiRgJJXJ4lb7_6brotli3enc10prior_evalNtB5_3CDF6update.exit678
  %i.lt = getelementptr inbounds nuw [32 x i8], ptr %.val2502, i64 %i.lr ; 5 uses
  %i.lu = getelementptr inbounds nuw [2 x i8], ptr %i.lt, i64 %i.cf ; 2 uses
  %i.lv = load i16, ptr %i.lu, align 2, !noalias !1372, !noundef !9 ; 2 uses
  br i1 %i.ci, label %_RNvMsa_NtNtCsiRgJJXJ4lb7_6brotli3enc10prior_evalNtB5_3CDF4cost.exit115, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.lw = getelementptr i8, ptr %i.lu, i64 -2
  %i.lx = load i16, ptr %i.lw, align 2, !noalias !1372, !noundef !9
  %i.ly = sub i16 %i.lv, %i.lx
  br label %_RNvMsa_NtNtCsiRgJJXJ4lb7_6brotli3enc10prior_evalNtB5_3CDF4cost.exit115

_RNvMsa_NtNtCsiRgJJXJ4lb7_6brotli3enc10prior_evalNtB5_3CDF4cost.exit115: ; preds = %bb.ab, %bb.ac
  %.sroa.0.0.i114 = phi i16 [ %i.lv, %bb.ab ], [ %i.ly, %bb.ac ]
  %i.lz = zext i16 %.sroa.0.0.i114 to i64
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lt, i64 30
  %i.mb = getelementptr inbounds nuw [4 x i8], ptr @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc4util6log64k, i64 %i.lz
  %i.mc = load float, ptr %i.mb, align 4, !noalias !1372, !noundef !9
  %i.md = load i16, ptr %i.kf, align 8, !noundef !9 ; 11 uses
  %i.me = getelementptr inbounds nuw i8, ptr %0, i64 282
  %i.mf = load i16, ptr %i.me, align 2, !noundef !9 ; 5 uses
  %.sroa.0.i558.sroa.16.0..sroa.02547.0.2549.sroa_idx = getelementptr inbounds nuw i8, ptr %i.lt, i64 16 ; 2 uses
  %25 = load <8 x i16>, ptr %i.lt, align 2, !noalias !1375
  %i.mg = insertelement <8 x i16> poison, i16 %i.md, i64 0
  %i.mh = shufflevector <8 x i16> %i.mg, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.mi = select <8 x i1> %24, <8 x i16> %i.mh, <8 x i16> zeroinitializer ; 5 uses
  %i.mj = insertelement <4 x i16> poison, i16 %i.md, i64 0
  %i.mk = shufflevector <4 x i16> %i.mj, <4 x i16> poison, <4 x i32> zeroinitializer
  %i.ml = select <4 x i1> %i.cv, <4 x i16> %i.mk, <4 x i16> zeroinitializer
  %i.mm = select i1 %i.cw, i16 %i.md, i16 0
  %i.mn = select i1 %i.cx, i16 %i.md, i16 0
  %i.mo = select i1 %.not9587, i16 0, i16 %i.md
  %i.mp = add <8 x i16> %i.mi, %25                ; 2 uses
  %i.mq = load i16, ptr %i.ma, align 2, !noalias !1372, !noundef !9 ; 2 uses
  %i.mr = load <8 x i16>, ptr %.sroa.0.i558.sroa.16.0..sroa.02547.0.2549.sroa_idx, align 2, !noalias !9
  %i.ms = zext i16 %i.mq to i64
  %i.mt = getelementptr inbounds nuw [4 x i8], ptr @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc4util6log64k, i64 %i.ms
  %i.mu = load float, ptr %i.mt, align 4, !noalias !1372, !noundef !9
  %i.mv = fsub float %i.mu, %i.mc
  %i.mw = add i16 %i.md, %i.mq
  %i.mx = insertelement <8 x i16> poison, i16 %i.mm, i64 4
  %i.my = insertelement <8 x i16> %i.mx, i16 %i.mn, i64 5
  %i.mz = insertelement <8 x i16> %i.my, i16 %i.mo, i64 6
  %i.na = insertelement <8 x i16> %i.mz, i16 %i.md, i64 7
  %i.nb = shufflevector <4 x i16> %i.ml, <4 x i16> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.nc = shufflevector <8 x i16> %i.nb, <8 x i16> %i.na, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15> ; 5 uses
  %i.nd = add <8 x i16> %i.nc, %i.mr              ; 2 uses
  %.not.i610 = icmp slt i16 %i.mw, %i.mf
  br i1 %.not.i610, label %_RNvMsa_NtNtCsiRgJJXJ4lb7_6brotli3enc10prior_evalNtB5_3CDF6update.exit617, label %bb.ad

bb.ad:                                            ; preds = %_RNvMsa_NtNtCsiRgJJXJ4lb7_6brotli3enc10prior_evalNtB5_3CDF4cost.exit115
  %i.ne = add <8 x i16> %i.mp, <i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8> ; 2 uses
  %i.nf = add <8 x i16> %i.nd, <i16 9, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15, i16 16> ; 2 uses
  %i.ng = ashr <8 x i16> %i.ne, splat (i16 2)
  %i.nh = ashr <8 x i16> %i.nf, splat (i16 2)
  %i.ni = sub <8 x i16> %i.ne, %i.ng
  %i.nj = sub <8 x i16> %i.nf, %i.nh
  br label %_RNvMsa_NtNtCsiRgJJXJ4lb7_6brotli3enc10prior_evalNtB5_3CDF6update.exit617

_RNvMsa_NtNtCsiRgJJXJ4lb7_6brotli3enc10prior_evalNtB5_3CDF6update.exit617: ; preds = %_RNvMsa_NtNtCsiRgJJXJ4lb7_6brotli3enc10prior_evalNtB5_3CDF4cost.exit115, %bb.ad
  %i.nk = phi <8 x i16> [ %i.mp, %_RNvMsa_NtNtCsiRgJJXJ4lb7_6brotli3enc10prior_evalNtB5_3CDF4cost.exit115 ], [ %i.ni, %bb.ad ]
  %i.nl = phi <8 x i16> [ %i.nd, %_RNvMsa_NtNtCsiRgJJXJ4lb7_6brotli3enc10prior_evalNtB5_3CDF4cost.exit115 ], [ %i.nj, %bb.ad ]
  store <8 x i16> %i.nk, ptr %i.lt, align 2, !noalias !1375
  store <8 x i16> %i.nl, ptr %.sroa.0.i558.sroa.16.0..sroa.02547.0.2549.sroa_idx, align 2, !noalias !1375
  %i.nm = getelementptr inbounds nuw i8, ptr %0, i64 176
  %.val2498 = load ptr, ptr %i.nm, align 8, !nonnull !9, !noundef !9 ; 2 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %0, i64 184
  %.val2499 = load i64, ptr %i.nn, align 8, !noundef !9 ; 4 uses
  %i.no = add i64 %2, 7
  %i.np = and i64 %i.no, 7
  %i.nq = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.np
  %i.nr = load i8, ptr %i.nq, align 1, !noundef !9
  %i.ns = zext i8 %i.nr to i64                    ; 2 uses
  %i.nt = shl nuw nsw i64 %i.ns, 9
  %i.nu = or i64 %i.nt, %i.gh                     ; 3 uses
  %i.nv = icmp ult i64 %i.nu, %.val2499
  br i1 %i.nv, label %bb.af, label %bb.ai

bb.ae:                                            ; preds = %_RNvMsa_NtNtCsiRgJJXJ4lb7_6brotli3enc10prior_evalNtB5_3CDF6update.exit678
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.lr, i64 noundef %.val2503, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @192) #22
  unreachable

bb.af:                                            ; preds = %_RNvMsa_NtNtCsiRgJJXJ4lb7_6brotli3enc10prior_evalNtB5_3CDF6update.exit617
  %i.nw = getelementptr inbounds nuw [32 x i8], ptr %.val2498, i64 %i.nu ; 5 uses
  %i.nx = getelementptr inbounds nuw [2 x i8], ptr %i.nw, i64 %i.o ; 2 uses
  %i.ny = load i16, ptr %i.nx, align 2, !noalias !1378, !noundef !9 ; 2 uses
  br i1 %i.y, label %_RNvMsa_NtNtCsiRgJJXJ4lb7_6brotli3enc10prior_evalNtB5_3CDF4cost.exit113, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.nz = getelementptr i8, ptr %i.nx, i64 -2
  %i.oa = load i16, ptr %i.nz, align 2, !noalias !1378, !noundef !9
  %i.ob = sub i16 %i.ny, %i.oa
  br label %_RNvMsa_NtNtCsiRgJJXJ4lb7_6brotli3enc10prior_evalNtB5_3CDF4cost.exit113

_RNvMsa_NtNtCsiRgJJXJ4lb7_6brotli3enc10prior_evalNtB5_3CDF4cost.exit113: ; preds = %bb.af, %bb.ag
  %.sroa.0.0.i112 = phi i16 [ %i.ny, %bb.af ], [ %i.ob, %bb.ag ]
  %i.oc = zext i16 %.sroa.0.0.i112 to i64
  %i.od = getelementptr inbounds nuw i8, ptr %i.nw, i64 30
  %i.oe = getelementptr inbounds nuw [4 x i8], ptr @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc4util6log64k, i64 %i.oc
  %i.of = load float, ptr %i.oe, align 4, !noalias !1378, !noundef !9
  %i.og = load <8 x i16>, ptr %i.nw, align 2, !noalias !1381
  %.sroa.0.i497.sroa.16.0..sroa.02551.0.2553.sroa_idx = getelementptr inbounds nuw i8, ptr %i.nw, i64 16 ; 2 uses
  %i.oh = add <8 x i16> %i.ki, %i.og              ; 2 uses
  %i.oi = load i16, ptr %i.od, align 2, !noalias !1378, !noundef !9 ; 2 uses
  %i.oj = load <8 x i16>, ptr %.sroa.0.i497.sroa.16.0..sroa.02551.0.2553.sroa_idx, align 2, !noalias !9
  %i.ok = zext i16 %i.oi to i64
  %i.ol = getelementptr inbounds nuw [4 x i8], ptr @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc4util6log64k, i64 %i.ok
  %i.om = load float, ptr %i.ol, align 4, !noalias !1378, !noundef !9
  %i.on = add i16 %i.kb, %i.oi
  %i.oo = add <8 x i16> %i.lb, %i.oj              ; 2 uses
  %.not.i549 = icmp slt i16 %i.on, %i.kd
  br i1 %.not.i549, label %_RNvMsa_NtNtCsiRgJJXJ4lb7_6brotli3enc10prior_evalNtB5_3CDF6update.exit556, label %bb.ah

bb.ah:                                            ; preds = %_RNvMsa_NtNtCsiRgJJXJ4lb7_6brotli3enc10prior_evalNtB5_3CDF4cost.exit113
  %i.op = add <8 x i16> %i.oh, <i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8> ; 2 uses
  %i.oq = add <8 x i16> %i.oo, <i16 9, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15, i16 16> ; 2 uses
  %i.or = ashr <8 x i16> %i.op, splat (i16 2)
  %i.os = ashr <8 x i16> %i.oq, splat (i16 2)
  %i.ot = sub <8 x i16> %i.op, %i.or
  %i.ou = sub <8 x i16> %i.oq, %i.os
  br label %_RNvMsa_NtNtCsiRgJJXJ4lb7_6brotli3enc10prior_evalNtB5_3CDF6update.exit556

_RNvMsa_NtNtCsiRgJJXJ4lb7_6brotli3enc10prior_evalNtB5_3CDF6update.exit556: ; preds = %_RNvMsa_NtNtCsiRgJJXJ4lb7_6brotli3enc10prior_evalNtB5_3CDF4cost.exit113, %bb.ah
  %i.ov = phi <8 x i16> [ %i.oh, %_RNvMsa_NtNtCsiRgJJXJ4lb7_6brotli3enc10prior_evalNtB5_3CDF4cost.exit113 ], [ %i.ot, %bb.ah ]
  %i.ow = phi <8 x i16> [ %i.oo, %_RNvMsa_NtNtCsiRgJJXJ4lb7_6brotli3enc10prior_evalNtB5_3CDF4cost.exit113 ], [ %i.ou, %bb.ah ]
  store <8 x i16> %i.ov, ptr %i.nw, align 2, !noalias !1381
  store <8 x i16> %i.ow, ptr %.sroa.0.i497.sroa.16.0..sroa.02551.0.2553.sroa_idx, align 2, !noalias !1381
  %i.ox = shl nuw nsw i64 %i.ns, 8
  %i.oy = and i64 %i.ox, 3840
  %i.oz = or i64 %4, %i.oy
  %i.pa = or i64 %i.oz, %i.ln
  %i.pb = shl i64 %i.pa, 1
  %i.pc = or disjoint i64 %i.pb, 1                ; 3 uses
  %i.pd = icmp ult i64 %i.pc, %.val2499
  br i1 %i.pd, label %bb.aj, label %bb.am

bb.ai:                                            ; preds = %_RNvMsa_NtNtCsiRgJJXJ4lb7_6brotli3enc10prior_evalNtB5_3CDF6update.exit617
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.nu, i64 noundef %.val2499, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @192) #22
  unreachable

bb.aj:                                            ; preds = %_RNvMsa_NtNtCsiRgJJXJ4lb7_6brotli3enc10prior_evalNtB5_3CDF6update.exit556
  %i.pe = getelementptr inbounds nuw [32 x i8], ptr %.val2498, i64 %i.pc ; 5 uses
  %i.pf = getelementptr inbounds nuw [2 x i8], ptr %i.pe, i64 %i.cf ; 2 uses
  %i.pg = load i16, ptr %i.pf, align 2, !noalias !1384, !noundef !9 ; 2 uses
  br i1 %i.ci, label %_RNvMsa_NtNtCsiRgJJXJ4lb7_6brotli3enc10prior_evalNtB5_3CDF4cost.exit111, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ph = getelementptr i8, ptr %i.pf, i64 -2
  %i.pi = load i16, ptr %i.ph, align 2, !noalias !1384, !noundef !9
  %i.pj = sub i16 %i.pg, %i.pi
  br label %_RNvMsa_NtNtCsiRgJJXJ4lb7_6brotli3enc10prior_evalNtB5_3CDF4cost.exit111

_RNvMsa_NtNtCsiRgJJXJ4lb7_6brotli3enc10prior_evalNtB5_3CDF4cost.exit111: ; preds = %bb.aj, %bb.ak
  %.sroa.0.0.i110 = phi i16 [ %i.pg, %bb.aj ], [ %i.pj, %bb.ak ]
  %i.pk = zext i16 %.sroa.0.0.i110 to i64
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pe, i64 30
  %i.pm = getelementptr inbounds nuw [4 x i8], ptr @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc4util6log64k, i64 %i.pk
  %i.pn = load float, ptr %i.pm, align 4, !noalias !1384, !noundef !9
  %i.po = load <8 x i16>, ptr %i.pe, align 2, !noalias !1387
  %.sroa.0.i436.sroa.16.0..sroa.02555.0.2557.sroa_idx = getelementptr inbounds nuw i8, ptr %i.pe, i64 16 ; 2 uses
  %i.pp = add <8 x i16> %i.mi, %i.po              ; 2 uses
  %i.pq = load i16, ptr %i.pl, align 2, !noalias !1384, !noundef !9 ; 2 uses
  %i.pr = load <8 x i16>, ptr %.sroa.0.i436.sroa.16.0..sroa.02555.0.2557.sroa_idx, align 2, !noalias !9
  %i.ps = zext i16 %i.pq to i64
  %i.pt = getelementptr inbounds nuw [4 x i8], ptr @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc4util6log64k, i64 %i.ps
  %i.pu = load float, ptr %i.pt, align 4, !noalias !1384, !noundef !9
  %i.pv = fsub float %i.pu, %i.pn
  %i.pw = add i16 %i.md, %i.pq
  %i.px = add <8 x i16> %i.nc, %i.pr              ; 2 uses
  %.not.i488 = icmp slt i16 %i.pw, %i.mf
  br i1 %.not.i488, label %_RNvMsa_NtNtCsiRgJJXJ4lb7_6brotli3enc10prior_evalNtB5_3CDF6update.exit495, label %bb.al

bb.al:                                            ; preds = %_RNvMsa_NtNtCsiRgJJXJ4lb7_6brotli3enc10prior_evalNtB5_3CDF4cost.exit111
  %i.py = add <8 x i16> %i.pp, <i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8> ; 2 uses
  %i.pz = add <8 x i16> %i.px, <i16 9, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15, i16 16> ; 2 uses
  %i.qa = ashr <8 x i16> %i.py, splat (i16 2)
  %i.qb = ashr <8 x i16> %i.pz, splat (i16 2)
  %i.qc = sub <8 x i16> %i.py, %i.qa
  %i.qd = sub <8 x i16> %i.pz, %i.qb
  br label %_RNvMsa_NtNtCsiRgJJXJ4lb7_6brotli3enc10prior_evalNtB5_3CDF6update.exit495

_RNvMsa_NtNtCsiRgJJXJ4lb7_6brotli3enc10prior_evalNtB5_3CDF6update.exit495: ; preds = %_RNvMsa_NtNtCsiRgJJXJ4lb7_6brotli3enc10prior_evalNtB5_3CDF4cost.exit111, %bb.al
  %i.qe = phi <8 x i16> [ %i.pp, %_RNvMsa_NtNtCsiRgJJXJ4lb7_6brotli3enc10prior_evalNtB5_3CDF4cost.exit111 ], [ %i.qc, %bb.al ]
  %i.qf = phi <8 x i16> [ %i.px, %_RNvMsa_NtNtCsiRgJJXJ4lb7_6brotli3enc10prior_evalNtB5_3CDF4cost.exit111 ], [ %i.qd, %bb.al ]
  store <8 x i16> %i.qe, ptr %i.pe, align 2, !noalias !1387
  store <8 x i16> %i.qf, ptr %.sroa.0.i436.sroa.16.0..sroa.02555.0.2557.sroa_idx, align 2, !noalias !1387
  %i.qg = getelementptr inbounds nuw i8, ptr %0, i64 192
  %.val2494 = load ptr, ptr %i.qg, align 8, !nonnull !9, !noundef !9 ; 2 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %0, i64 200
  %.val2495 = load i64, ptr %i.qh, align 8, !noundef !9 ; 4 uses
  %i.qi = add i64 %2, 6
  %i.qj = and i64 %i.qi, 7
  %i.qk = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.qj
  %i.ql = load i8, ptr %i.qk, align 1, !noundef !9
  %i.qm = zext i8 %i.ql to i64                    ; 2 uses
  %i.qn = shl nuw nsw i64 %i.qm, 9
  %i.qo = or i64 %i.qn, %i.gh                     ; 3 uses
  %i.qp = icmp ult i64 %i.qo, %.val2495
  br i1 %i.qp, label %bb.an, label %bb.aq

bb.am:                                            ; preds = %_RNvMsa_NtNtCsiRgJJXJ4lb7_6brotli3enc10prior_evalNtB5_3CDF6update.exit556
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.pc, i64 noundef %.val2499, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @192) #22
  unreachable

bb.an:                                            ; preds = %_RNvMsa_NtNtCsiRgJJXJ4lb7_6brotli3enc10prior_evalNtB5_3CDF6update.exit495
  %i.qq = getelementptr inbounds nuw [32 x i8], ptr %.val2494, i64 %i.qo ; 5 uses
  %i.qr = getelementptr inbounds nuw [2 x i8], ptr %i.qq, i64 %i.o ; 2 uses
  %i.qs = load i16, ptr %i.qr, align 2, !noalias !1390, !noundef !9 ; 2 uses
  br i1 %i.y, label %_RNvMsa_NtNtCsiRgJJXJ4lb7_6brotli3enc10prior_evalNtB5_3CDF4cost.exit109, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.qt = getelementptr i8, ptr %i.qr, i64 -2
  %i.qu = load i16, ptr %i.qt, align 2, !noalias !1390, !noundef !9
  %i.qv = sub i16 %i.qs, %i.qu
  br label %_RNvMsa_NtNtCsiRgJJXJ4lb7_6brotli3enc10prior_evalNtB5_3CDF4cost.exit109

_RNvMsa_NtNtCsiRgJJXJ4lb7_6brotli3enc10prior_evalNtB5_3CDF4cost.exit109: ; preds = %bb.an, %bb.ao
  %.sroa.0.0.i108 = phi i16 [ %i.qs, %bb.an ], [ %i.qv, %bb.ao ]
  %i.qw = zext i16 %.sroa.0.0.i108 to i64
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qq, i64 30
  %i.qy = getelementptr inbounds nuw [4 x i8], ptr @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc4util6log64k, i64 %i.qw
  %i.qz = load float, ptr %i.qy, align 4, !noalias !1390, !noundef !9
  %i.ra = load <8 x i16>, ptr %i.qq, align 2, !noalias !1393
  %.sroa.0.i375.sroa.16.0..sroa.02559.0.2561.sroa_idx = getelementptr inbounds nuw i8, ptr %i.qq, i64 16 ; 2 uses
  %i.rb = add <8 x i16> %i.ki, %i.ra              ; 2 uses
  %i.rc = load i16, ptr %i.qx, align 2, !noalias !1390, !noundef !9 ; 2 uses
  %i.rd = load <8 x i16>, ptr %.sroa.0.i375.sroa.16.0..sroa.02559.0.2561.sroa_idx, align 2, !noalias !9
  %i.re = zext i16 %i.rc to i64
  %i.rf = getelementptr inbounds nuw [4 x i8], ptr @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc4util6log64k, i64 %i.re
  %i.rg = load float, ptr %i.rf, align 4, !noalias !1390, !noundef !9
  %i.rh = add i16 %i.kb, %i.rc
  %i.ri = add <8 x i16> %i.lb, %i.rd              ; 2 uses
  %.not.i427 = icmp slt i16 %i.rh, %i.kd
end_hunk_0
