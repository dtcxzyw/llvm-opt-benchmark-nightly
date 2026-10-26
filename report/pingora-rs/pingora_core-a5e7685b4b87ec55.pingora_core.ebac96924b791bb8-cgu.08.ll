Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pingora-rs/original/pingora_core-a5e7685b4b87ec55.pingora_core.ebac96924b791bb8-cgu.08?download=true
inline.NumInlined: 763
inline.NumDeleted: 289
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 40
begin_hunk_0_@_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc9metablock31ContextBlockSplitterFinishBlockNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocB1c_ECskeugdADtBsi_12pingora_core:bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 6 uses
  %i.i = load i64, ptr %i.h, align 8, !noundef !10 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = load i64, ptr %i.j, align 8, !noundef !10 ; 6 uses
  %i.l = icmp ult i64 %i.i, %i.k
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 %i.k, ptr %i.h, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.m = phi i64 [ %i.i, %bb.a ], [ %i.k, %bb.b ] ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  %i.o = load i64, ptr %i.n, align 8, !noundef !10 ; 17 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.val156 = load i64, ptr %i.q, align 8, !noundef !10
  %.not116 = icmp eq i64 %.val156, 0
  br i1 %.not116, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.c
  %.not = icmp eq i64 %i.m, 0
  br i1 %.not, label %bb.p, label %.preheader

bb.f:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val155 = load ptr, ptr %i.r, align 8, !nonnull !10, !noundef !10
  %i.s = trunc i64 %i.m to i32
  store i32 %i.s, ptr %.val155, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val162.a = load i64, ptr %i.t, align 8, !noundef !10
  %.not117 = icmp eq i64 %.val162.a, 0
  br i1 %.not117, label %bb.i, label %bb.h

bb.g:                                             ; preds = %bb.d
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @103) #21
  unreachable

bb.h:                                             ; preds = %bb.f
  %.val161 = load ptr, ptr %2, align 8, !nonnull !10, !noundef !10
  store i8 0, ptr %.val161, align 1
  %.not270 = icmp eq i64 %i.g, 0                  ; 2 uses
  br i1 %.not270, label %._crit_edge265, label %.lr.ph264

.lr.ph264:                                        ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = load i64, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.x = tail call i64 @llvm.usub.sat.i64(i64 26, i64 %i.g)
  br label %bb.j

bb.i:                                             ; preds = %bb.f
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @104) #21
  unreachable

._crit_edge265:                                   ; preds = %bb.u, %bb.h
  store i64 1, ptr %i.n, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !noundef !10
  %i.aa = add i64 %i.z, 1
  store i64 %i.aa, ptr %i.y, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !noundef !10
  %i.ad = add i64 %i.ac, %i.g                     ; 6 uses
  store i64 %i.ad, ptr %i.ab, align 8
  %i.ae = load i64, ptr %5, align 8, !noundef !10
  %i.af = icmp ult i64 %i.ad, %i.ae
  br i1 %i.af, label %bb.k, label %_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc9histogram15ClearHistogramsNtB2_16HistogramLiteralECskeugdADtBsi_12pingora_core.exit

bb.j:                                             ; preds = %.lr.ph264, %bb.u
  %.sroa.0.0262 = phi i64 [ 0, %.lr.ph264 ], [ %i.aw, %bb.u ] ; 7 uses
  %exitcond368.not = icmp eq i64 %.sroa.0.0262, %4
  br i1 %exitcond368.not, label %bb.r, label %bb.q

bb.k:                                             ; preds = %._crit_edge265
  %i.ag = icmp ugt i64 %i.ad, %4
  br i1 %i.ag, label %bb.o, label %bb.l, !prof !11

_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc9histogram15ClearHistogramsNtB2_16HistogramLiteralECskeugdADtBsi_12pingora_core.exit: ; preds = %.lr.ph.i, %bb.m, %._crit_edge265
  store i64 0, ptr %i.h, align 8
  br label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.ah = sub nuw nsw i64 %4, %i.ad               ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !769)
  %.not.i = icmp ugt i64 %i.g, %i.ah
  br i1 %.not.i, label %bb.n, label %bb.m, !prof !21

bb.m:                                             ; preds = %bb.l
  %i.ai = getelementptr inbounds nuw [1040 x i8], ptr %3, i64 %i.ad ; 2 uses
  %.idx.i = mul nuw nsw i64 %i.g, 1040
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %.idx.i
  br i1 %.not270, label %_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc9histogram15ClearHistogramsNtB2_16HistogramLiteralECskeugdADtBsi_12pingora_core.exit, label %.lr.ph.i

bb.n:                                             ; preds = %bb.l
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.g, i64 noundef range(i64 0, 8868626958514208) %i.ah, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @52) #21, !noalias !769
  unreachable

.lr.ph.i:                                         ; preds = %bb.m, %.lr.ph.i
  %.sroa.02.06.i = phi ptr [ %i.ak, %.lr.ph.i ], [ %i.ai, %bb.m ] ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i, i64 1040 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i, i64 1032
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1032) %.sroa.02.06.i, i8 0, i64 1032, i1 false), !alias.scope !769
  store float 3.402000e+38, ptr %i.al, align 8, !alias.scope !770
  %i.am = icmp eq ptr %i.ak, %i.aj
  br i1 %i.am, label %_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc9histogram15ClearHistogramsNtB2_16HistogramLiteralECskeugdADtBsi_12pingora_core.exit, label %.lr.ph.i

bb.o:                                             ; preds = %bb.k
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.ad, i64 noundef %4, i64 noundef %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @105) #21
  unreachable

bb.p:                                             ; preds = %bb.ao, %bb.e, %_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc9histogram15ClearHistogramsNtB2_16HistogramLiteralECskeugdADtBsi_12pingora_core.exit
  %i.an = icmp eq i32 %6, 0
  br i1 %i.an, label %bb.bc, label %bb.bd

bb.q:                                             ; preds = %bb.j
  %i.ao = getelementptr inbounds nuw [1040 x i8], ptr %3, i64 %.sroa.0.0262
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 0, ptr %i.c, align 8
  %i.ap = call noundef float @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc8bit_cost14ShannonEntropy(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.ao, i64 noundef 256, i64 noundef %i.v, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) ; 2 uses
  %i.aq = load i64, ptr %i.c, align 8, !noundef !10
  %i.ar = uitofp i64 %i.aq to float               ; 2 uses
  %i.as = fcmp olt float %i.ap, %i.ar
  %.sroa.06.0 = select i1 %i.as, float %i.ar, float %i.ap ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %exitcond369.not = icmp eq i64 %.sroa.0.0262, 26
  br i1 %exitcond369.not, label %bb.t, label %bb.s

bb.r:                                             ; preds = %bb.j
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %4, i64 noundef %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @106) #21
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %.sroa.0.0262
  store float %.sroa.06.0, ptr %i.at, align 4
  %i.au = add nuw nsw i64 %.sroa.0.0262, %i.g     ; 2 uses
  %exitcond371.not = icmp eq i64 %.sroa.0.0262, %i.x
  br i1 %exitcond371.not, label %bb.v, label %bb.u

bb.t:                                             ; preds = %bb.q
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef 26, i64 noundef 26, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @107) #21
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.au
  store float %.sroa.06.0, ptr %i.av, align 4
  %i.aw = add nuw nsw i64 %.sroa.0.0262, 1        ; 2 uses
  %exitcond372.not = icmp eq i64 %i.aw, %i.g
  br i1 %exitcond372.not, label %._crit_edge265, label %bb.j

bb.v:                                             ; preds = %bb.s
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.au, i64 noundef 26, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @108) #21
  unreachable

.preheader:                                       ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %i.e, i8 0, i64 52, i1 false)
  %i.ax = shl i64 %i.g, 1
  %i.ay = tail call { ptr, i64 } @_RNvXNtCsc389t4z7aPt_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCsLfzX5BYWvK_15alloc_no_stdlib15stack_allocator9AllocatorNtNtNtCsiRgJJXJ4lb7_6brotli3enc9histogram16HistogramLiteralE10alloc_cellCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull %1, i64 noundef %i.ax) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(104) %i.d, i8 0, i64 104, i1 false)
  %i.az = extractvalue { ptr, i64 } %i.ay, 0      ; 15 uses
  %i.ba = extractvalue { ptr, i64 } %i.ay, 1      ; 13 uses
  %.not266 = icmp eq i64 %i.g, 0                  ; 5 uses
  br i1 %.not266, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bc = load i64, ptr %i.bb, align 8, !noundef !10 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.be = load i64, ptr %i.bd, align 8            ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.bg = tail call i64 @llvm.usub.sat.i64(i64 %4, i64 %i.bc)
  %i.bh = tail call i64 @llvm.usub.sat.i64(i64 %i.ba, i64 %i.g)
  %i.bi = tail call i64 @llvm.usub.sat.i64(i64 26, i64 %i.g)
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bk = mul i64 %i.g, 1040                      ; 2 uses
  %scevgep = getelementptr i8, ptr %i.az, i64 %i.bk
  %i.bl = mul i64 %i.g, 2080
  %i.bm = getelementptr i8, ptr %i.az, i64 %i.bl
  %scevgep466 = getelementptr i8, ptr %i.bm, i64 -16
  %i.bn = getelementptr i8, ptr %i.az, i64 %i.bk
  %scevgep471 = getelementptr i8, ptr %i.bn, i64 -16
  br label %bb.w

._crit_edge:                                      ; preds = %bb.cm, %.preheader
  %.sroa.0.0 = phi float [ 0.000000e+00, %.preheader ], [ %i.lt, %bb.cm ] ; 2 uses
  %.sroa.7.0 = phi float [ 0.000000e+00, %.preheader ], [ %i.nz, %bb.cm ] ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.bp = load i64, ptr %i.bo, align 8, !noundef !10 ; 5 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.br = load i64, ptr %i.bq, align 8, !noundef !10
  %i.bs = icmp ult i64 %i.bp, %i.br
  br i1 %i.bs, label %bb.x, label %bb.y

bb.w:                                             ; preds = %.lr.ph, %bb.cm
  %.sroa.0.1 = phi float [ 0.000000e+00, %.lr.ph ], [ %i.lt, %bb.cm ]
  %.sroa.7.1 = phi float [ 0.000000e+00, %.lr.ph ], [ %i.nz, %bb.cm ]
  %.sroa.08.0247 = phi i64 [ 0, %.lr.ph ], [ %i.oa, %bb.cm ] ; 14 uses
  %i.bt = add nuw nsw i64 %i.bc, %.sroa.08.0247   ; 2 uses
  %exitcond339.not = icmp eq i64 %.sroa.08.0247, %i.bg
  br i1 %exitcond339.not, label %.invoke445, label %bb.cf

bb.x:                                             ; preds = %._crit_edge
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.bv = load float, ptr %i.bu, align 8, !noundef !10 ; 2 uses
  %i.bw = fcmp ogt float %.sroa.0.0, %i.bv
  %i.bx = fcmp ogt float %.sroa.7.0, %i.bv
  %or.cond = select i1 %i.bw, i1 %i.bx, i1 false
  br i1 %or.cond, label %bb.au, label %bb.y

bb.y:                                             ; preds = %bb.x, %._crit_edge
  %i.by = fadd float %.sroa.0.0, -2.000000e+01
  %i.bz = fcmp olt float %.sroa.7.0, %i.by
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.val150 = load i64, ptr %i.ca, align 8, !noundef !10 ; 4 uses
  br i1 %i.bz, label %bb.ak, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cb = add i64 %i.o, -1                        ; 3 uses
  %i.cc = icmp ult i64 %i.cb, %.val150
  br i1 %i.cc, label %bb.aa, label %.invoke445

bb.aa:                                            ; preds = %bb.z
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val151 = load ptr, ptr %i.cd, align 8, !nonnull !10, !noundef !10
  %i.ce = trunc i64 %i.m to i32
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %.val151, i64 %i.cb ; 2 uses
  %i.cg = load i32, ptr %i.cf, align 4, !noundef !10
  %i.ch = add i32 %i.cg, %i.ce
  store i32 %i.ch, ptr %i.cf, align 4
  br i1 %.not266, label %._crit_edge252, label %.lr.ph251

.lr.ph251:                                        ; preds = %bb.aa
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.az) ]
  %i.ci = load i64, ptr %0, align 8               ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.ck = icmp eq i64 %i.bp, 1
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.cm = load i64, ptr %i.cl, align 8            ; 2 uses
  %i.cn = call i64 @llvm.usub.sat.i64(i64 %4, i64 %i.ci)
  %i.co = call i64 @llvm.usub.sat.i64(i64 %4, i64 %i.cm)
  br label %bb.ad

.invoke445:                                       ; preds = %bb.cl, %bb.ch, %bb.cj, %bb.cg, %bb.w, %bb.ad, %bb.ap, %.lr.ph260, %bb.bg, %bb.bi, %bb.bk, %bb.bm, %bb.bo, %bb.bq, %bb.bs, %bb.bu, %bb.bw, %bb.by, %bb.ca, %bb.cc, %bb.ce, %bb.av, %bb.au, %bb.am, %bb.al, %bb.ak, %bb.z, %bb.bf
  %i.cp = phi i64 [ %i.cb, %bb.z ], [ %i.iq, %bb.by ], [ %i.o, %bb.ak ], [ %i.iw, %bb.ca ], [ %i.ba, %bb.ad ], [ %i.jc, %bb.cc ], [ %i.ji, %bb.ce ], [ 13, %bb.bf ], [ %i.o, %bb.av ], [ %i.o, %bb.au ], [ %i.o, %bb.am ], [ %i.em, %bb.ap ], [ %i.du, %bb.al ], [ %i.g, %.lr.ph260 ], [ %i.go, %bb.bg ], [ %i.gu, %bb.bi ], [ %i.ha, %bb.bk ], [ %i.hg, %bb.bm ], [ %i.hm, %bb.bo ], [ %i.hs, %bb.bq ], [ %i.hy, %bb.bs ], [ %i.ie, %bb.bu ], [ %i.ik, %bb.bw ], [ 13, %bb.cg ], [ %i.bt, %bb.w ], [ %i.lu, %bb.cl ], [ %i.ba, %bb.ch ], [ %i.lu, %bb.cj ]
  %i.cq = phi i64 [ %.val150, %bb.z ], [ 26, %bb.by ], [ %.val150, %bb.ak ], [ 26, %bb.ca ], [ %i.ba, %bb.ad ], [ 26, %bb.cc ], [ 26, %bb.ce ], [ 13, %bb.bf ], [ %.val158, %bb.av ], [ %.val154, %bb.au ], [ %.val140, %bb.am ], [ %i.ba, %bb.ap ], [ %.val140, %bb.al ], [ 26, %.lr.ph260 ], [ 26, %bb.bg ], [ 26, %bb.bi ], [ 26, %bb.bk ], [ 26, %bb.bm ], [ 26, %bb.bo ], [ 26, %bb.bq ], [ 26, %bb.bs ], [ 26, %bb.bu ], [ 26, %bb.bw ], [ 13, %bb.cg ], [ %4, %bb.w ], [ 26, %bb.cl ], [ %i.ba, %bb.ch ], [ %i.ba, %bb.cj ]
  %i.cr = phi ptr [ @109, %bb.z ], [ @126, %bb.by ], [ @115, %bb.ak ], [ @126, %bb.ca ], [ @110, %bb.ad ], [ @126, %bb.cc ], [ @126, %bb.ce ], [ @127, %bb.bf ], [ @124, %bb.av ], [ @123, %bb.au ], [ @117, %bb.am ], [ @118, %bb.ap ], [ @116, %bb.al ], [ @126, %.lr.ph260 ], [ @126, %bb.bg ], [ @126, %bb.bi ], [ @126, %bb.bk ], [ @126, %bb.bm ], [ @126, %bb.bo ], [ @126, %bb.bq ], [ @126, %bb.bs ], [ @126, %bb.bu ], [ @126, %bb.bw ], [ @129, %bb.cg ], [ @128, %bb.w ], [ @132, %bb.cl ], [ @130, %bb.ch ], [ @130, %bb.cj ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.cp, i64 noundef %i.cq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cr) #23
          to label %.cont446 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont446:                                         ; preds = %.invoke445
  unreachable

bb.ab:                                            ; preds = %bb.bb
  unreachable

._crit_edge252:                                   ; preds = %.noexc125, %bb.aa
  store i64 0, ptr %i.h, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.ct = load i64, ptr %i.cs, align 8, !noundef !10
  %i.cu = add i64 %i.ct, 1                        ; 2 uses
  store i64 %i.cu, ptr %i.cs, align 8
  %i.cv = icmp ugt i64 %i.cu, 1
  br i1 %i.cv, label %bb.ac, label %bb.ao

bb.ac:                                            ; preds = %._crit_edge252
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.cx = load i64, ptr %i.cw, align 8, !noundef !10
  %i.cy = add i64 %i.cx, %i.k
  store i64 %i.cy, ptr %i.cw, align 8
  br label %bb.ao

bb.ad:                                            ; preds = %.lr.ph251, %.noexc125
  %.sroa.08.1249 = phi i64 [ 0, %.lr.ph251 ], [ %i.dl, %.noexc125 ] ; 11 uses
  %exitcond347.not = icmp eq i64 %.sroa.08.1249, %i.ba
  br i1 %exitcond347.not, label %.invoke445, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cz = add nuw nsw i64 %i.ci, %.sroa.08.1249   ; 2 uses
  %exitcond349.not = icmp eq i64 %.sroa.08.1249, %i.cn
  br i1 %exitcond349.not, label %.invoke, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.da = getelementptr inbounds nuw [1040 x i8], ptr %i.az, i64 %.sroa.08.1249
  %i.db = getelementptr inbounds nuw [1040 x i8], ptr %3, i64 %i.cz
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1040) %i.db, ptr noundef nonnull align 8 dereferenceable(1040) %i.da, i64 1040, i1 false)
  %exitcond350.not = icmp eq i64 %.sroa.08.1249, 26
  br i1 %exitcond350.not, label %.invoke, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.sroa.08.1249
  %i.dd = load float, ptr %i.dc, align 4, !noundef !10 ; 2 uses
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %.sroa.08.1249
  store float %i.dd, ptr %i.de, align 4
  br i1 %i.ck, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  %i.df = add i64 %.sroa.08.1249, %i.g            ; 3 uses
  %i.dg = icmp ult i64 %i.df, 26
  br i1 %i.dg, label %bb.ai, label %.invoke

bb.ai:                                            ; preds = %bb.ah
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %i.df
  store float %i.dd, ptr %i.dh, align 4
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ag, %bb.ai
  %i.di = add nuw nsw i64 %i.cm, %.sroa.08.1249   ; 2 uses
  %exitcond352.not = icmp eq i64 %.sroa.08.1249, %i.co
  br i1 %exitcond352.not, label %.invoke, label %.noexc125

.noexc125:                                        ; preds = %bb.aj
  %i.dj = getelementptr inbounds nuw [1040 x i8], ptr %3, i64 %i.di ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 1032
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.dj, i8 0, i64 1032, i1 false)
  store float 3.402000e+38, ptr %i.dk, align 8, !alias.scope !771
  %i.dl = add nuw nsw i64 %.sroa.08.1249, 1       ; 2 uses
  %exitcond353.not = icmp eq i64 %i.dl, %i.g
  br i1 %exitcond353.not, label %._crit_edge252, label %bb.ad

.invoke:                                          ; preds = %bb.ci, %bb.ck, %bb.aj, %bb.ah, %bb.af, %bb.ae, %bb.at, %bb.as, %bb.ar, %bb.aq
  %i.dm = phi i64 [ %i.di, %bb.aj ], [ %i.ev, %bb.at ], [ %i.en, %bb.aq ], [ %i.em, %bb.as ], [ 26, %bb.ar ], [ %i.cz, %bb.ae ], [ 26, %bb.af ], [ %i.df, %bb.ah ], [ %i.lw, %bb.ck ], [ %i.jq, %bb.ci ]
  %i.dn = phi i64 [ %4, %bb.aj ], [ %4, %bb.at ], [ %4, %bb.aq ], [ 26, %bb.as ], [ 26, %bb.ar ], [ %4, %bb.ae ], [ 26, %bb.af ], [ 26, %bb.ah ], [ %4, %bb.ck ], [ %4, %bb.ci ]
  %i.do = phi ptr [ @114, %bb.aj ], [ @122, %bb.at ], [ @119, %bb.aq ], [ @121, %bb.as ], [ @120, %bb.ar ], [ @111, %bb.ae ], [ @112, %bb.af ], [ @113, %bb.ah ], [ @131, %bb.ck ], [ @131, %bb.ci ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.dm, i64 noundef %i.dn, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.do) #23
          to label %.cont.a unwind label %.thread183

.cont.a:                                          ; preds = %.invoke
  unreachable

bb.ak:                                            ; preds = %bb.y
  %i.dp = icmp ult i64 %i.o, %.val150
  br i1 %i.dp, label %bb.al, label %.invoke445

bb.al:                                            ; preds = %bb.ak
  %i.dq = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val149.a = load ptr, ptr %i.dq, align 8, !nonnull !10, !noundef !10
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %.val149.a, i64 %i.o
  %i.ds = trunc i64 %i.m to i32
  store i32 %i.ds, ptr %i.dr, align 4
  %.val139 = load ptr, ptr %2, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val140 = load i64, ptr %i.dt, align 8, !noundef !10 ; 4 uses
  %i.du = add i64 %i.o, -2                        ; 3 uses
  %i.dv = icmp ult i64 %i.du, %.val140
  br i1 %i.dv, label %bb.am, label %.invoke445

bb.am:                                            ; preds = %bb.al
  %i.dw = icmp ult i64 %i.o, %.val140
  br i1 %i.dw, label %bb.an, label %.invoke445

bb.an:                                            ; preds = %bb.am
  %i.dx = getelementptr inbounds nuw i8, ptr %.val139, i64 %i.du
  %i.dy = load i8, ptr %i.dx, align 1, !noundef !10
  %i.dz = getelementptr inbounds nuw i8, ptr %.val139, i64 %i.o
  store i8 %i.dy, ptr %i.dz, align 1
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sroa.049.0.copyload = load i64, ptr %0, align 8
  %i.eb = load i64, ptr %i.ea, align 8            ; 3 uses
  store i64 %i.eb, ptr %0, align 8
  store i64 %.sroa.049.0.copyload, ptr %i.ea, align 8
  br i1 %.not266, label %._crit_edge257, label %.lr.ph256

.lr.ph256:                                        ; preds = %bb.an
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.az) ]
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ee = load i64, ptr %i.ed, align 8            ; 2 uses
  %i.ef = call i64 @llvm.usub.sat.i64(i64 %i.ba, i64 %i.g)
  %i.eg = call i64 @llvm.usub.sat.i64(i64 %4, i64 %i.eb)
  %i.eh = call i64 @llvm.usub.sat.i64(i64 26, i64 %i.g)
  %i.ei = call i64 @llvm.usub.sat.i64(i64 %4, i64 %i.ee)
  br label %bb.ap

._crit_edge257:                                   ; preds = %.noexc, %bb.an
  %i.ej = add nuw i64 %i.o, 1
  store i64 %i.ej, ptr %i.n, align 8
  store i64 0, ptr %i.h, align 8
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i64 0, ptr %i.ek, align 8
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.k, ptr %i.el, align 8
  br label %bb.ao

bb.ao:                                            ; preds = %._crit_edge257, %._crit_edge252, %bb.ac, %_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc9histogram15ClearHistogramsNtB2_16HistogramLiteralECskeugdADtBsi_12pingora_core.exit168
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.az) ]
  call void @_RNvXNtCsc389t4z7aPt_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCsLfzX5BYWvK_15alloc_no_stdlib15stack_allocator9AllocatorNtNtNtCsiRgJJXJ4lb7_6brotli3enc9histogram16HistogramLiteralE9free_cellCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull %1, ptr noalias noundef nonnull align 8 %i.az, i64 noundef %i.ba)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.p

bb.ap:                                            ; preds = %.lr.ph256, %.noexc
  %.sroa.08.2254 = phi i64 [ 0, %.lr.ph256 ], [ %i.ey, %.noexc ] ; 10 uses
  %i.em = add nuw nsw i64 %.sroa.08.2254, %i.g    ; 5 uses
  %exitcond355.not = icmp eq i64 %.sroa.08.2254, %i.ef
  br i1 %exitcond355.not, label %.invoke445, label %bb.aq

end_hunk_0
begin_hunk_1_@_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc9metablock31ContextBlockSplitterFinishBlockNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocB1c_ECskeugdADtBsi_12pingora_core:bb.a
  %i.ij = load float, ptr %i.ii, align 4, !noundef !10
  store float %i.ij, ptr %i.if, align 8
  %exitcond367.8.not = icmp eq i64 %i.g, 9
  br i1 %exitcond367.8.not, label %._crit_edge261, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.ik = add nuw nsw i64 %i.g, 9                 ; 2 uses
  %exitcond365.9.not = icmp eq i64 %i.fm, 9
  br i1 %exitcond365.9.not, label %.invoke445, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 2 uses
  %i.im = load float, ptr %i.il, align 4, !noundef !10
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %i.fl, i64 %i.ik
  store float %i.im, ptr %i.in, align 4
  %i.io = getelementptr inbounds nuw i8, ptr %i.e, i64 36
  %i.ip = load float, ptr %i.io, align 4, !noundef !10
  store float %i.ip, ptr %i.il, align 4
  %exitcond367.9.not = icmp eq i64 %i.g, 10
  br i1 %exitcond367.9.not, label %._crit_edge261, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.iq = add nuw nsw i64 %i.g, 10                ; 2 uses
  %exitcond365.10.not = icmp eq i64 %i.fm, 10
  br i1 %exitcond365.10.not, label %.invoke445, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.is = load float, ptr %i.ir, align 8, !noundef !10
  %i.it = getelementptr inbounds nuw [4 x i8], ptr %i.fl, i64 %i.iq
  store float %i.is, ptr %i.it, align 4
  %i.iu = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.iv = load float, ptr %i.iu, align 4, !noundef !10
  store float %i.iv, ptr %i.ir, align 8
  %exitcond367.10.not = icmp eq i64 %i.g, 11
  br i1 %exitcond367.10.not, label %._crit_edge261, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.iw = add nuw nsw i64 %i.g, 11                ; 2 uses
  %exitcond365.11.not = icmp eq i64 %i.fm, 11
  br i1 %exitcond365.11.not, label %.invoke445, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 2 uses
  %i.iy = load float, ptr %i.ix, align 4, !noundef !10
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %i.fl, i64 %i.iw
  store float %i.iy, ptr %i.iz, align 4
  %i.ja = getelementptr inbounds nuw i8, ptr %i.e, i64 44
  %i.jb = load float, ptr %i.ja, align 4, !noundef !10
  store float %i.jb, ptr %i.ix, align 4
  %exitcond367.11.not = icmp eq i64 %i.g, 12
  br i1 %exitcond367.11.not, label %._crit_edge261, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.jc = add nuw nsw i64 %i.g, 12                ; 2 uses
  %exitcond365.12.not = icmp eq i64 %i.fm, 12
  br i1 %exitcond365.12.not, label %.invoke445, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.jd = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.je = load float, ptr %i.jd, align 8, !noundef !10
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %i.fl, i64 %i.jc
  store float %i.je, ptr %i.jf, align 4
  %i.jg = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.jh = load float, ptr %i.jg, align 4, !noundef !10
  store float %i.jh, ptr %i.jd, align 8
  %exitcond367.12.not = icmp eq i64 %i.g, 13
  br i1 %exitcond367.12.not, label %._crit_edge261, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.ji = add nuw nsw i64 %i.g, 13                ; 2 uses
  %exitcond365.13.not = icmp eq i64 %i.fm, 13
  br i1 %exitcond365.13.not, label %.invoke445, label %bb.bf

bb.cf:                                            ; preds = %bb.w
  %i.jj = getelementptr inbounds nuw [1040 x i8], ptr %3, i64 %i.bt ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 0, ptr %i.b, align 8
  %i.jk = invoke noundef float @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc8bit_cost14ShannonEntropy(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.jj, i64 noundef 256, i64 noundef %i.be, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.cg unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.cg:                                            ; preds = %bb.cf
  %i.jl = load i64, ptr %i.b, align 8, !noundef !10
  %i.jm = uitofp i64 %i.jl to float               ; 2 uses
  %i.jn = fcmp olt float %i.jk, %i.jm
  %.sroa.044.0 = select i1 %i.jn, float %i.jm, float %i.jk ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %exitcond340.not = icmp eq i64 %.sroa.08.0247, 13
  br i1 %exitcond340.not, label %.invoke445, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %.sroa.08.0247
  store float %.sroa.044.0, ptr %i.jo, align 4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.az) ]
  %i.jp = load i64, ptr %0, align 8, !noundef !10
  %i.jq = add i64 %i.jp, %.sroa.08.0247           ; 3 uses
  %exitcond341.not = icmp eq i64 %.sroa.08.0247, %i.ba
  br i1 %exitcond341.not, label %.invoke445, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.jr = getelementptr inbounds nuw [1040 x i8], ptr %i.az, i64 %.sroa.08.0247 ; 9 uses
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1040) %i.jr, ptr noundef nonnull align 8 dereferenceable(1040) %i.jj, i64 1040, i1 false)
  %i.js = icmp ult i64 %i.jq, %4
  br i1 %i.js, label %.noexc134, label %.invoke

.noexc134:                                        ; preds = %bb.ci
  %i.jt = getelementptr inbounds nuw [1040 x i8], ptr %3, i64 %i.jq ; 8 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jr, i64 1024 ; 2 uses
  %i.jv = load i64, ptr %i.ju, align 8, !alias.scope !775, !noundef !10
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jt, i64 1024 ; 2 uses
  %i.jx = load i64, ptr %i.jw, align 8, !alias.scope !776, !noundef !10
  %i.jy = add i64 %i.jx, %i.jv
  store i64 %i.jy, ptr %i.ju, align 8, !alias.scope !777
  %bound0472 = icmp ult ptr %i.az, %i.jw
  %bound1473 = icmp ult ptr %i.jt, %scevgep471
  %found.conflict474 = and i1 %bound0472, %bound1473
  br i1 %found.conflict474, label %scalar.ph475, label %vector.body477

vector.body477:                                   ; preds = %.noexc134, %vector.body477
  %index478 = phi i64 [ %index.next483.1, %vector.body477 ], [ 0, %.noexc134 ] ; 4 uses
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr %i.jr, i64 %index478 ; 3 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 16 ; 2 uses
  %wide.load479 = load <4 x i32>, ptr %i.jz, align 4, !alias.scope !778, !noalias !779
  %wide.load480 = load <4 x i32>, ptr %i.ka, align 4, !alias.scope !778, !noalias !779
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %i.jt, i64 %index478 ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 16
  %wide.load481 = load <4 x i32>, ptr %i.kb, align 8, !alias.scope !779
  %wide.load482 = load <4 x i32>, ptr %i.kc, align 8, !alias.scope !779
  %i.kd = add <4 x i32> %wide.load481, %wide.load479
  %i.ke = add <4 x i32> %wide.load482, %wide.load480
  store <4 x i32> %i.kd, ptr %i.jz, align 4, !alias.scope !778, !noalias !779
  store <4 x i32> %i.ke, ptr %i.ka, align 4, !alias.scope !778, !noalias !779
  %index.next483 = or disjoint i64 %index478, 8   ; 2 uses
  %i.kf = getelementptr inbounds nuw [4 x i8], ptr %i.jr, i64 %index.next483 ; 3 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 16 ; 2 uses
  %wide.load479.1 = load <4 x i32>, ptr %i.kf, align 4, !alias.scope !778, !noalias !779
  %wide.load480.1 = load <4 x i32>, ptr %i.kg, align 4, !alias.scope !778, !noalias !779
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %i.jt, i64 %index.next483 ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 16
  %wide.load481.1 = load <4 x i32>, ptr %i.kh, align 8, !alias.scope !779
  %wide.load482.1 = load <4 x i32>, ptr %i.ki, align 8, !alias.scope !779
  %i.kj = add <4 x i32> %wide.load481.1, %wide.load479.1
  %i.kk = add <4 x i32> %wide.load482.1, %wide.load480.1
  store <4 x i32> %i.kj, ptr %i.kf, align 4, !alias.scope !778, !noalias !779
  store <4 x i32> %i.kk, ptr %i.kg, align 4, !alias.scope !778, !noalias !779
  %index.next483.1 = add nuw nsw i64 %index478, 16 ; 2 uses
  %i.kl = icmp eq i64 %index.next483.1, 256
  br i1 %i.kl, label %middle.block484, label %vector.body477, !llvm.loop !762

scalar.ph475:                                     ; preds = %.noexc134, %scalar.ph475
  %.sroa.01.0.i245 = phi i64 [ %i.le, %scalar.ph475 ], [ 0, %.noexc134 ] ; 6 uses
  %i.km = or disjoint i64 %.sroa.01.0.i245, 1     ; 2 uses
  %i.kn = getelementptr inbounds nuw [4 x i8], ptr %i.jr, i64 %.sroa.01.0.i245 ; 2 uses
  %i.ko = load i32, ptr %i.kn, align 4, !noundef !10
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr %i.jt, i64 %.sroa.01.0.i245
  %i.kq = load i32, ptr %i.kp, align 8, !noundef !10
  %i.kr = add i32 %i.kq, %i.ko
  store i32 %i.kr, ptr %i.kn, align 4
  %i.ks = or disjoint i64 %.sroa.01.0.i245, 2     ; 2 uses
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %i.jr, i64 %i.km ; 2 uses
  %i.ku = load i32, ptr %i.kt, align 4, !noundef !10
  %i.kv = getelementptr inbounds nuw [4 x i8], ptr %i.jt, i64 %i.km
  %i.kw = load i32, ptr %i.kv, align 4, !noundef !10
  %i.kx = add i32 %i.kw, %i.ku
  store i32 %i.kx, ptr %i.kt, align 4
  %i.ky = or disjoint i64 %.sroa.01.0.i245, 3     ; 2 uses
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %i.jr, i64 %i.ks ; 2 uses
  %i.la = load i32, ptr %i.kz, align 4, !noundef !10
  %i.lb = getelementptr inbounds nuw [4 x i8], ptr %i.jt, i64 %i.ks
  %i.lc = load i32, ptr %i.lb, align 8, !noundef !10
  %i.ld = add i32 %i.lc, %i.la
  store i32 %i.ld, ptr %i.kz, align 4
  %i.le = add nuw nsw i64 %.sroa.01.0.i245, 4     ; 2 uses
  %i.lf = getelementptr inbounds nuw [4 x i8], ptr %i.jr, i64 %i.ky ; 2 uses
  %i.lg = load i32, ptr %i.lf, align 4, !noundef !10
  %i.lh = getelementptr inbounds nuw [4 x i8], ptr %i.jt, i64 %i.ky
  %i.li = load i32, ptr %i.lh, align 4, !noundef !10
  %i.lj = add i32 %i.li, %i.lg
  store i32 %i.lj, ptr %i.lf, align 4
  %exitcond.not.3 = icmp eq i64 %i.le, 256
  br i1 %exitcond.not.3, label %middle.block484, label %scalar.ph475, !llvm.loop !763

middle.block484:                                  ; preds = %vector.body477, %scalar.ph475
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8
  %i.lk = invoke noundef float @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc8bit_cost14ShannonEntropy(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.jr, i64 noundef 256, i64 noundef %i.be, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.cj unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.cj:                                            ; preds = %middle.block484
  %i.ll = load i64, ptr %i.a, align 8, !noundef !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.lm = uitofp i64 %i.ll to float               ; 2 uses
  %i.ln = fcmp olt float %i.lk, %i.lm
  %.sroa.046.0 = select i1 %i.ln, float %i.lm, float %i.lk ; 2 uses
  %i.lo = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.sroa.08.0247
  store float %.sroa.046.0, ptr %i.lo, align 4
  %i.lp = fsub float %.sroa.046.0, %.sroa.044.0
  %i.lq = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %.sroa.08.0247
  %i.lr = load float, ptr %i.lq, align 4, !noundef !10
  %i.ls = fsub float %i.lp, %i.lr
  %i.lt = fadd float %.sroa.0.1, %i.ls            ; 2 uses
  %i.lu = add i64 %i.g, %.sroa.08.0247            ; 5 uses
  %i.lv = load i64, ptr %i.bj, align 8, !noundef !10
  %i.lw = add i64 %i.lv, %.sroa.08.0247           ; 3 uses
  %exitcond343.not = icmp eq i64 %.sroa.08.0247, %i.bh
  br i1 %exitcond343.not, label %.invoke445, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.lx = getelementptr inbounds nuw [1040 x i8], ptr %i.az, i64 %i.lu ; 9 uses
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1040) %i.lx, ptr noundef nonnull align 8 dereferenceable(1040) %i.jj, i64 1040, i1 false)
  %i.ly = icmp ult i64 %i.lw, %4
  br i1 %i.ly, label %.noexc134.1, label %.invoke

.noexc134.1:                                      ; preds = %bb.ck
  %i.lz = getelementptr inbounds nuw [1040 x i8], ptr %3, i64 %i.lw ; 8 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lx, i64 1024 ; 2 uses
  %i.mb = load i64, ptr %i.ma, align 8, !alias.scope !775, !noundef !10
  %i.mc = getelementptr inbounds nuw i8, ptr %i.lz, i64 1024 ; 2 uses
  %i.md = load i64, ptr %i.mc, align 8, !alias.scope !776, !noundef !10
  %i.me = add i64 %i.md, %i.mb
  store i64 %i.me, ptr %i.ma, align 8, !alias.scope !777
  %bound0 = icmp ult ptr %scevgep, %i.mc
  %bound1 = icmp ult ptr %i.lz, %scevgep466
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph, label %vector.body

vector.body:                                      ; preds = %.noexc134.1, %vector.body
  %index = phi i64 [ %index.next.1, %vector.body ], [ 0, %.noexc134.1 ] ; 4 uses
  %i.mf = getelementptr inbounds nuw [4 x i8], ptr %i.lx, i64 %index ; 3 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.mf, align 4, !alias.scope !780, !noalias !781
  %wide.load467 = load <4 x i32>, ptr %i.mg, align 4, !alias.scope !780, !noalias !781
  %i.mh = getelementptr inbounds nuw [4 x i8], ptr %i.lz, i64 %index ; 2 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 16
  %wide.load468 = load <4 x i32>, ptr %i.mh, align 8, !alias.scope !781
  %wide.load469 = load <4 x i32>, ptr %i.mi, align 8, !alias.scope !781
  %i.mj = add <4 x i32> %wide.load468, %wide.load
  %i.mk = add <4 x i32> %wide.load469, %wide.load467
  store <4 x i32> %i.mj, ptr %i.mf, align 4, !alias.scope !780, !noalias !781
  store <4 x i32> %i.mk, ptr %i.mg, align 4, !alias.scope !780, !noalias !781
  %index.next = or disjoint i64 %index, 8         ; 2 uses
  %i.ml = getelementptr inbounds nuw [4 x i8], ptr %i.lx, i64 %index.next ; 3 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 16 ; 2 uses
  %wide.load.1 = load <4 x i32>, ptr %i.ml, align 4, !alias.scope !780, !noalias !781
  %wide.load467.1 = load <4 x i32>, ptr %i.mm, align 4, !alias.scope !780, !noalias !781
  %i.mn = getelementptr inbounds nuw [4 x i8], ptr %i.lz, i64 %index.next ; 2 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 16
  %wide.load468.1 = load <4 x i32>, ptr %i.mn, align 8, !alias.scope !781
  %wide.load469.1 = load <4 x i32>, ptr %i.mo, align 8, !alias.scope !781
  %i.mp = add <4 x i32> %wide.load468.1, %wide.load.1
  %i.mq = add <4 x i32> %wide.load469.1, %wide.load467.1
  store <4 x i32> %i.mp, ptr %i.ml, align 4, !alias.scope !780, !noalias !781
  store <4 x i32> %i.mq, ptr %i.mm, align 4, !alias.scope !780, !noalias !781
  %index.next.1 = add nuw nsw i64 %index, 16      ; 2 uses
  %i.mr = icmp eq i64 %index.next.1, 256
  br i1 %i.mr, label %middle.block, label %vector.body, !llvm.loop !767

scalar.ph:                                        ; preds = %.noexc134.1, %scalar.ph
  %.sroa.01.0.i245.1 = phi i64 [ %i.nk, %scalar.ph ], [ 0, %.noexc134.1 ] ; 6 uses
  %i.ms = or disjoint i64 %.sroa.01.0.i245.1, 1   ; 2 uses
  %i.mt = getelementptr inbounds nuw [4 x i8], ptr %i.lx, i64 %.sroa.01.0.i245.1 ; 2 uses
  %i.mu = load i32, ptr %i.mt, align 4, !noundef !10
  %i.mv = getelementptr inbounds nuw [4 x i8], ptr %i.lz, i64 %.sroa.01.0.i245.1
  %i.mw = load i32, ptr %i.mv, align 8, !noundef !10
  %i.mx = add i32 %i.mw, %i.mu
  store i32 %i.mx, ptr %i.mt, align 4
  %i.my = or disjoint i64 %.sroa.01.0.i245.1, 2   ; 2 uses
  %i.mz = getelementptr inbounds nuw [4 x i8], ptr %i.lx, i64 %i.ms ; 2 uses
  %i.na = load i32, ptr %i.mz, align 4, !noundef !10
  %i.nb = getelementptr inbounds nuw [4 x i8], ptr %i.lz, i64 %i.ms
  %i.nc = load i32, ptr %i.nb, align 4, !noundef !10
  %i.nd = add i32 %i.nc, %i.na
  store i32 %i.nd, ptr %i.mz, align 4
  %i.ne = or disjoint i64 %.sroa.01.0.i245.1, 3   ; 2 uses
  %i.nf = getelementptr inbounds nuw [4 x i8], ptr %i.lx, i64 %i.my ; 2 uses
  %i.ng = load i32, ptr %i.nf, align 4, !noundef !10
  %i.nh = getelementptr inbounds nuw [4 x i8], ptr %i.lz, i64 %i.my
  %i.ni = load i32, ptr %i.nh, align 8, !noundef !10
  %i.nj = add i32 %i.ni, %i.ng
  store i32 %i.nj, ptr %i.nf, align 4
  %i.nk = add nuw nsw i64 %.sroa.01.0.i245.1, 4   ; 2 uses
  %i.nl = getelementptr inbounds nuw [4 x i8], ptr %i.lx, i64 %i.ne ; 2 uses
  %i.nm = load i32, ptr %i.nl, align 4, !noundef !10
  %i.nn = getelementptr inbounds nuw [4 x i8], ptr %i.lz, i64 %i.ne
  %i.no = load i32, ptr %i.nn, align 4, !noundef !10
  %i.np = add i32 %i.no, %i.nm
  store i32 %i.np, ptr %i.nl, align 4
  %exitcond.1.not.3 = icmp eq i64 %i.nk, 256
  br i1 %exitcond.1.not.3, label %middle.block, label %scalar.ph, !llvm.loop !768

middle.block:                                     ; preds = %vector.body, %scalar.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8
  %i.nq = invoke noundef float @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc8bit_cost14ShannonEntropy(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.lx, i64 noundef 256, i64 noundef %i.be, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.cl unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.cl:                                            ; preds = %middle.block
  %i.nr = load i64, ptr %i.a, align 8, !noundef !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %exitcond345.not = icmp eq i64 %.sroa.08.0247, %i.bi
  br i1 %exitcond345.not, label %.invoke445, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.ns = uitofp i64 %i.nr to float               ; 2 uses
  %i.nt = fcmp olt float %i.nq, %i.ns
  %.sroa.046.0.1 = select i1 %i.nt, float %i.ns, float %i.nq ; 2 uses
  %i.nu = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.lu
  store float %.sroa.046.0.1, ptr %i.nu, align 4
  %i.nv = fsub float %.sroa.046.0.1, %.sroa.044.0
  %i.nw = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %i.lu
  %i.nx = load float, ptr %i.nw, align 4, !noundef !10
  %i.ny = fsub float %i.nv, %i.nx
  %i.nz = fadd float %.sroa.7.1, %i.ny            ; 2 uses
  %i.oa = add nuw nsw i64 %.sroa.08.0247, 1       ; 2 uses
  %exitcond346.not = icmp eq i64 %i.oa, %i.g
  br i1 %exitcond346.not, label %._crit_edge, label %bb.w

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsc389t4z7aPt_12alloc_stdlib10heap_alloc7WrapBoxNtNtNtCsiRgJJXJ4lb7_6brotli3enc9histogram16HistogramLiteralEECskeugdADtBsi_12pingora_core.exit: ; preds = %bb.cn, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %lpad.phi177 = phi { ptr, i32 } [ %lpad.phi185, %bb.cn ], [ %lpad.loopexit.split-lp503, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  resume { ptr, i32 } %lpad.phi177

.thread183:                                       ; preds = %.invoke
  %lpad.thr_comm181 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cn

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.cf, %middle.block, %middle.block484, %.invoke445, %bb.bb, %bb.ba
  %lpad.loopexit.split-lp503 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ob = icmp eq i64 %i.ba, 0
  br i1 %i.ob, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsc389t4z7aPt_12alloc_stdlib10heap_alloc7WrapBoxNtNtNtCsiRgJJXJ4lb7_6brotli3enc9histogram16HistogramLiteralEECskeugdADtBsi_12pingora_core.exit, label %bb.cn

bb.cn:                                            ; preds = %.thread183, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %lpad.phi185 = phi { ptr, i32 } [ %lpad.thr_comm181, %.thread183 ], [ %lpad.loopexit.split-lp503, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.oc = mul nuw nsw i64 %i.ba, 1040
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.az) ]
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.az, i64 noundef range(i64 1, 0) %i.oc, i64 noundef 8) #22
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsc389t4z7aPt_12alloc_stdlib10heap_alloc7WrapBoxNtNtNtCsiRgJJXJ4lb7_6brotli3enc9histogram16HistogramLiteralEECskeugdADtBsi_12pingora_core.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc9metablock34BrotliBuildMetaBlockGreedyInternalNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef range(i64 0, -9223372036854775808) %2, i64 noundef %3, i64 noundef %4, i8 noundef %5, i8 noundef %6, i8 noundef range(i8 0, 4) %7, i64 noundef %8, ptr noalias nofree noundef nonnull readonly align 4 captures(none) %9, i64 noundef range(i64 0, 2305843009213693952) %10, ptr noalias nofree noundef nonnull readonly align 4 captures(none) %11, i64 noundef range(i64 0, 576460752303423488) %12, i64 noundef %13, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(264) %14) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.5.sroa.0 = alloca [16 x i8], align 8     ; 5 uses
  %.sroa.5.sroa.9.sroa.6 = alloca [16 x i8], align 8 ; 5 uses
  %.sroa.5.sroa.12.sroa.0 = alloca [96 x i8], align 8 ; 4 uses
  %i.a = alloca [88 x i8], align 8                ; 12 uses
  %i.b = alloca [88 x i8], align 8                ; 12 uses
  %i.c = alloca [208 x i8], align 8               ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not = icmp eq i64 %13, 0                      ; 2 uses
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.d = add i64 %13, -1
  %.not381.not = icmp ugt i64 %12, %i.d
  br i1 %.not381.not, label %.lr.ph.preheader596, label %bb.eh

.lr.ph.preheader596:                              ; preds = %.lr.ph.preheader
  %xtraiter = and i64 %13, 3                      ; 3 uses
  %i.e = icmp ult i64 %13, 4
  br i1 %i.e, label %.lr.ph.epil.preheader, label %.lr.ph.preheader596.new

.lr.ph.preheader596.new:                          ; preds = %.lr.ph.preheader596
  %unroll_iter = and i64 %13, -4
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader596
  %.sroa.08.0223.epil.init = phi i64 [ 0, %.lr.ph.preheader596 ], [ %i.ah, %._crit_edge.loopexit.unr-lcssa ]
  %.sroa.011.0222.epil.init = phi i64 [ 0, %.lr.ph.preheader596 ], [ %i.ai, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod599 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod599)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.sroa.08.0223.epil = phi i64 [ %i.i, %.lr.ph.epil ], [ %.sroa.08.0223.epil.init, %.lr.ph.epil.preheader ]
  %.sroa.011.0222.epil = phi i64 [ %i.j, %.lr.ph.epil ], [ %.sroa.011.0222.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %11, i64 %.sroa.011.0222.epil
  %i.g = load i32, ptr %i.f, align 4, !noundef !10
  %i.h = zext i32 %i.g to i64
  %i.i = add i64 %.sroa.08.0223.epil, %i.h        ; 2 uses
  %i.j = add nuw nsw i64 %.sroa.011.0222.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.loopexit, label %.lr.ph.epil, !llvm.loop !782

._crit_edge.loopexit:                             ; preds = %.lr.ph.epil, %._crit_edge.loopexit.unr-lcssa
  %.lcssa597 = phi i64 [ %i.ah, %._crit_edge.loopexit.unr-lcssa ], [ %i.i, %.lr.ph.epil ]
  %i.k = lshr i64 %.lcssa597, 9
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.sroa.08.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.k, %._crit_edge.loopexit ] ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.sroa.9.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.sroa.12.sroa.0)
  %i.l = icmp eq i64 %8, 1
  %i.m = getelementptr inbounds nuw i8, ptr %14, i64 176 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %14, i64 240 ; 2 uses
  %i.o = add nuw nsw i64 %.sroa.08.0.lcssa, 1     ; 8 uses
  br i1 %i.l, label %bb.b, label %bb.x

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader596.new
  %.sroa.08.0223 = phi i64 [ 0, %.lr.ph.preheader596.new ], [ %i.ah, %.lr.ph ]
  %.sroa.011.0222 = phi i64 [ 0, %.lr.ph.preheader596.new ], [ %i.ai, %.lr.ph ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader596.new ], [ %niter.next.3, %.lr.ph ]
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %11, i64 %.sroa.011.0222
  %i.q = load i32, ptr %i.p, align 4, !noundef !10
  %i.r = zext i32 %i.q to i64
  %i.s = add i64 %.sroa.08.0223, %i.r
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %11, i64 %.sroa.011.0222
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load i32, ptr %i.u, align 4, !noundef !10
  %i.w = zext i32 %i.v to i64
  %i.x = add i64 %i.s, %i.w
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %11, i64 %.sroa.011.0222
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.aa = load i32, ptr %i.z, align 4, !noundef !10
  %i.ab = zext i32 %i.aa to i64
  %i.ac = add i64 %i.x, %i.ab
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %11, i64 %.sroa.011.0222
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  %i.af = load i32, ptr %i.ae, align 4, !noundef !10
  %i.ag = zext i32 %i.af to i64
  %i.ah = add i64 %i.ac, %i.ag                    ; 3 uses
  %i.ai = add nuw nsw i64 %.sroa.011.0222, 4      ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph

bb.b:                                             ; preds = %._crit_edge
  tail call void @llvm.experimental.noalias.scope.decl(metadata !864)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !865)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !866)
  %..i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.o, i64 257) ; 2 uses
  %.val47.i = load ptr, ptr %14, align 8, !alias.scope !864, !nonnull !10, !noundef !10 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %.val48.i = load i64, ptr %i.aj, align 8, !alias.scope !864, !noundef !10 ; 8 uses
  %.not.i = icmp ugt i64 %.val48.i, %.sroa.08.0.lcssa
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ak = icmp eq i64 %.val48.i, 0                ; 2 uses
  %spec.select.i = select i1 %i.ak, i64 %i.o, i64 %.val48.i
  br label %bb.e

bb.d:                                             ; preds = %bb.j, %bb.b
  %i.al = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %.val35.i = load ptr, ptr %i.al, align 8, !alias.scope !864, !nonnull !10, !noundef !10 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %14, i64 24 ; 2 uses
  %.val36.i = load i64, ptr %i.am, align 8, !alias.scope !864, !noundef !10 ; 8 uses
  %.not21.i.a = icmp ugt i64 %.val36.i, %.sroa.08.0.lcssa
  br i1 %.not21.i.a, label %bb.m, label %bb.l

bb.e:                                             ; preds = %bb.e, %bb.c
  %.sroa.0.1.i.a = phi i64 [ %spec.select.i, %bb.c ], [ %i.an, %bb.e ] ; 3 uses
  %.not19.i.a = icmp ugt i64 %.sroa.0.1.i.a, %.sroa.08.0.lcssa
  %i.an = shl nuw nsw i64 %.sroa.0.1.i.a, 1
  br i1 %.not19.i.a, label %bb.f, label %bb.e

bb.f:                                             ; preds = %bb.e
  %i.ao = tail call { ptr, i64 } @_RNvXNtCsc389t4z7aPt_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCsLfzX5BYWvK_15alloc_no_stdlib15stack_allocator9AllocatorhE10alloc_cellCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull %0, i64 noundef %.sroa.0.1.i.a), !noalias !867 ; 2 uses
  %i.ap = extractvalue { ptr, i64 } %i.ao, 0      ; 5 uses
  %i.aq = extractvalue { ptr, i64 } %i.ao, 1      ; 5 uses
  br i1 %i.ak, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ap) ]
  %.not20.i = icmp ugt i64 %.val48.i, %i.aq
  br i1 %.not20.i, label %bb.h, label %bb.i, !prof !21

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %.val48.i, i64 noundef %i.aq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @70) #23
          to label %bb.k unwind label %bb.v, !noalias !867

bb.i:                                             ; preds = %bb.g
  invoke void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull %i.ap, i64 noundef %.val48.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val47.i, i64 noundef %.val48.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @69)
          to label %bb.j unwind label %.thread79.i, !noalias !867

.thread79.i:                                      ; preds = %bb.i
  %lpad.thr_comm80.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.j:                                             ; preds = %bb.i, %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ap) ]
  store ptr %i.ap, ptr %14, align 8, !alias.scope !864
  store i64 %i.aq, ptr %i.aj, align 8, !alias.scope !864
  tail call void @_RNvXNtCsc389t4z7aPt_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCsLfzX5BYWvK_15alloc_no_stdlib15stack_allocator9AllocatorhE9free_cellCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull %0, ptr noalias noundef nonnull %.val47.i, i64 noundef %.val48.i), !noalias !867
  br label %bb.d

bb.k:                                             ; preds = %bb.p, %bb.h
  unreachable

bb.l:                                             ; preds = %bb.d
  %i.ar = icmp eq i64 %.val36.i, 0
  %spec.select83.i = select i1 %i.ar, i64 %i.o, i64 %.val36.i
  br label %bb.n

bb.m:                                             ; preds = %bb.r, %bb.d
  %i.as = getelementptr inbounds nuw i8, ptr %14, i64 40
  store i64 %i.o, ptr %i.as, align 8, !alias.scope !864
  store i64 %..i.i, ptr %i.n, align 8, !alias.scope !866
  %i.at = tail call { ptr, i64 } @_RNvXNtCsc389t4z7aPt_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCsLfzX5BYWvK_15alloc_no_stdlib15stack_allocator9AllocatorNtNtNtCsiRgJJXJ4lb7_6brotli3enc9histogram16HistogramLiteralE10alloc_cellCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull %0, i64 noundef %..i.i), !noalias !867 ; 2 uses
  %i.au = extractvalue { ptr, i64 } %i.at, 0      ; 4 uses
  %i.av = extractvalue { ptr, i64 } %i.at, 1      ; 2 uses
end_hunk_1
