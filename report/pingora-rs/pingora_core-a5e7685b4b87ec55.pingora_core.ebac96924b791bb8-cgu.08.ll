Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pingora-rs/original/pingora_core-a5e7685b4b87ec55.pingora_core.ebac96924b791bb8-cgu.08?download=true
inline.NumInlined: 763
inline.NumDeleted: 289
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 40
begin_hunk_0_@_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc9metablock26BrotliBuildMetaBlockGreedyNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocECskeugdADtBsi_12pingora_core:bb.a
; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc9metablock31ContextBlockSplitterFinishBlockNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocB1c_ECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(200) %0, ptr noalias nofree noundef nonnull %1, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(48) %2, ptr noalias nofree noundef nonnull align 8 captures(address, read_provenance) %3, i64 noundef range(i64 0, 8868626958514208) %4, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(8) %5, i32 noundef range(i32 0, 2) %6) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 10 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = alloca [104 x i8], align 4               ; 7 uses
  %i.e = alloca [52 x i8], align 4                ; 17 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load i64, ptr %i.f, align 8, !noundef !10 ; 58 uses
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
  %.val156.a = load i64, ptr %i.q, align 8, !noundef !10
  %.not116 = icmp eq i64 %.val156.a, 0
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
  %.val162 = load i64, ptr %i.t, align 8, !noundef !10
  %.not117 = icmp eq i64 %.val162, 0
  br i1 %.not117, label %bb.i, label %bb.h

bb.g:                                             ; preds = %bb.d
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @103) #21
  unreachable

bb.h:                                             ; preds = %bb.f
  %.val161.a = load ptr, ptr %2, align 8, !nonnull !10, !noundef !10
  store i8 0, ptr %.val161.a, align 1
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
  %exitcond365.not = icmp eq i64 %.sroa.0.0262, %4
  br i1 %exitcond365.not, label %bb.r, label %bb.q

bb.k:                                             ; preds = %._crit_edge265
  %i.ag = icmp ugt i64 %i.ad, %4
  br i1 %i.ag, label %bb.o, label %bb.l, !prof !11

_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc9histogram15ClearHistogramsNtB2_16HistogramLiteralECskeugdADtBsi_12pingora_core.exit: ; preds = %.lr.ph.i, %bb.m, %._crit_edge265
  store i64 0, ptr %i.h, align 8
  br label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.ah = sub nuw nsw i64 %4, %i.ad               ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !799)
  %.not.i = icmp ugt i64 %i.g, %i.ah
  br i1 %.not.i, label %bb.n, label %bb.m, !prof !21

bb.m:                                             ; preds = %bb.l
  %i.ai = getelementptr inbounds nuw [1040 x i8], ptr %3, i64 %i.ad ; 2 uses
  %.idx.i = mul nuw nsw i64 %i.g, 1040
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %.idx.i
  br i1 %.not270, label %_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc9histogram15ClearHistogramsNtB2_16HistogramLiteralECskeugdADtBsi_12pingora_core.exit, label %.lr.ph.i

bb.n:                                             ; preds = %bb.l
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.g, i64 noundef range(i64 0, 8868626958514208) %i.ah, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @52) #21, !noalias !799
  unreachable

.lr.ph.i:                                         ; preds = %bb.m, %.lr.ph.i
  %.sroa.02.06.i = phi ptr [ %i.ak, %.lr.ph.i ], [ %i.ai, %bb.m ] ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i, i64 1040 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i, i64 1032
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1032) %.sroa.02.06.i, i8 0, i64 1032, i1 false), !alias.scope !799
  store float 3.402000e+38, ptr %i.al, align 8, !alias.scope !800
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
  %exitcond366.not = icmp eq i64 %.sroa.0.0262, 26
  br i1 %exitcond366.not, label %bb.t, label %bb.s

bb.r:                                             ; preds = %bb.j
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %4, i64 noundef %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @106) #21
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %.sroa.0.0262
  store float %.sroa.06.0, ptr %i.at, align 4
  %i.au = add nuw nsw i64 %.sroa.0.0262, %i.g     ; 2 uses
  %exitcond368.not = icmp eq i64 %.sroa.0.0262, %i.x
  br i1 %exitcond368.not, label %bb.v, label %bb.u

bb.t:                                             ; preds = %bb.q
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef 26, i64 noundef 26, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @107) #21
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.au
  store float %.sroa.06.0, ptr %i.av, align 4
  %i.aw = add nuw nsw i64 %.sroa.0.0262, 1        ; 2 uses
  %exitcond369.not = icmp eq i64 %i.aw, %i.g
  br i1 %exitcond369.not, label %._crit_edge265, label %bb.j

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
  %scevgep463 = getelementptr i8, ptr %i.bm, i64 -16
  %i.bn = getelementptr i8, ptr %i.az, i64 %i.bk
  %scevgep468 = getelementptr i8, ptr %i.bn, i64 -16
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
  %exitcond336.not = icmp eq i64 %.sroa.08.0247, %i.bg
  br i1 %exitcond336.not, label %.invoke442, label %bb.cf

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
  br i1 %i.cc, label %bb.aa, label %.invoke442

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

.invoke442:                                       ; preds = %bb.cl, %bb.ch, %bb.cj, %bb.cg, %bb.w, %bb.ad, %bb.ap, %.lr.ph260, %bb.bg, %bb.bi, %bb.bk, %bb.bm, %bb.bo, %bb.bq, %bb.bs, %bb.bu, %bb.bw, %bb.by, %bb.ca, %bb.cc, %bb.ce, %bb.av, %bb.au, %bb.am, %bb.al, %bb.ak, %bb.z, %bb.bf
  %i.cp = phi i64 [ %i.cb, %bb.z ], [ %i.iq, %bb.by ], [ %i.o, %bb.ak ], [ %i.iw, %bb.ca ], [ %i.ba, %bb.ad ], [ %i.jc, %bb.cc ], [ %i.ji, %bb.ce ], [ 13, %bb.bf ], [ %i.o, %bb.av ], [ %i.o, %bb.au ], [ %i.o, %bb.am ], [ %i.em, %bb.ap ], [ %i.du, %bb.al ], [ %i.g, %.lr.ph260 ], [ %i.go, %bb.bg ], [ %i.gu, %bb.bi ], [ %i.ha, %bb.bk ], [ %i.hg, %bb.bm ], [ %i.hm, %bb.bo ], [ %i.hs, %bb.bq ], [ %i.hy, %bb.bs ], [ %i.ie, %bb.bu ], [ %i.ik, %bb.bw ], [ 13, %bb.cg ], [ %i.bt, %bb.w ], [ %i.lu, %bb.cl ], [ %i.ba, %bb.ch ], [ %i.lu, %bb.cj ]
  %i.cq = phi i64 [ %.val150, %bb.z ], [ 26, %bb.by ], [ %.val150, %bb.ak ], [ 26, %bb.ca ], [ %i.ba, %bb.ad ], [ 26, %bb.cc ], [ 26, %bb.ce ], [ 13, %bb.bf ], [ %.val158, %bb.av ], [ %.val154, %bb.au ], [ %.val140, %bb.am ], [ %i.ba, %bb.ap ], [ %.val140, %bb.al ], [ 26, %.lr.ph260 ], [ 26, %bb.bg ], [ 26, %bb.bi ], [ 26, %bb.bk ], [ 26, %bb.bm ], [ 26, %bb.bo ], [ 26, %bb.bq ], [ 26, %bb.bs ], [ 26, %bb.bu ], [ 26, %bb.bw ], [ 13, %bb.cg ], [ %4, %bb.w ], [ 26, %bb.cl ], [ %i.ba, %bb.ch ], [ %i.ba, %bb.cj ]
  %i.cr = phi ptr [ @109, %bb.z ], [ @126, %bb.by ], [ @115, %bb.ak ], [ @126, %bb.ca ], [ @110, %bb.ad ], [ @126, %bb.cc ], [ @126, %bb.ce ], [ @127, %bb.bf ], [ @124, %bb.av ], [ @123, %bb.au ], [ @117, %bb.am ], [ @118, %bb.ap ], [ @116, %bb.al ], [ @126, %.lr.ph260 ], [ @126, %bb.bg ], [ @126, %bb.bi ], [ @126, %bb.bk ], [ @126, %bb.bm ], [ @126, %bb.bo ], [ @126, %bb.bq ], [ @126, %bb.bs ], [ @126, %bb.bu ], [ @126, %bb.bw ], [ @129, %bb.cg ], [ @128, %bb.w ], [ @132, %bb.cl ], [ @130, %bb.ch ], [ @130, %bb.cj ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.cp, i64 noundef %i.cq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cr) #23
          to label %.cont443 unwind label %.loopexit.split-lp.loopexit.split-lp

.cont443:                                         ; preds = %.invoke442
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
  %exitcond344.not = icmp eq i64 %.sroa.08.1249, %i.ba
  br i1 %exitcond344.not, label %.invoke442, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cz = add nuw nsw i64 %i.ci, %.sroa.08.1249   ; 2 uses
  %exitcond346.not = icmp eq i64 %.sroa.08.1249, %i.cn
  br i1 %exitcond346.not, label %.invoke, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.da = getelementptr inbounds nuw [1040 x i8], ptr %i.az, i64 %.sroa.08.1249
  %i.db = getelementptr inbounds nuw [1040 x i8], ptr %3, i64 %i.cz
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1040) %i.db, ptr noundef nonnull align 8 dereferenceable(1040) %i.da, i64 1040, i1 false)
  %exitcond347.not = icmp eq i64 %.sroa.08.1249, 26
  br i1 %exitcond347.not, label %.invoke, label %bb.ag

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
  %exitcond349.not = icmp eq i64 %.sroa.08.1249, %i.co
  br i1 %exitcond349.not, label %.invoke, label %.noexc125

.noexc125:                                        ; preds = %bb.aj
  %i.dj = getelementptr inbounds nuw [1040 x i8], ptr %3, i64 %i.di ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 1032
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.dj, i8 0, i64 1032, i1 false)
  store float 3.402000e+38, ptr %i.dk, align 8, !alias.scope !801
  %i.dl = add nuw nsw i64 %.sroa.08.1249, 1       ; 2 uses
  %exitcond350.not = icmp eq i64 %i.dl, %i.g
  br i1 %exitcond350.not, label %._crit_edge252, label %bb.ad

.invoke:                                          ; preds = %bb.ci, %bb.ck, %bb.aj, %bb.ah, %bb.af, %bb.ae, %bb.at, %bb.as, %bb.ar, %bb.aq
  %i.dm = phi i64 [ %i.di, %bb.aj ], [ %i.ev, %bb.at ], [ %i.en, %bb.aq ], [ %i.em, %bb.as ], [ 26, %bb.ar ], [ %i.cz, %bb.ae ], [ 26, %bb.af ], [ %i.df, %bb.ah ], [ %i.lw, %bb.ck ], [ %i.jq, %bb.ci ]
  %i.dn = phi i64 [ %4, %bb.aj ], [ %4, %bb.at ], [ %4, %bb.aq ], [ 26, %bb.as ], [ 26, %bb.ar ], [ %4, %bb.ae ], [ 26, %bb.af ], [ 26, %bb.ah ], [ %4, %bb.ck ], [ %4, %bb.ci ]
  %i.do = phi ptr [ @114, %bb.aj ], [ @122, %bb.at ], [ @119, %bb.aq ], [ @121, %bb.as ], [ @120, %bb.ar ], [ @111, %bb.ae ], [ @112, %bb.af ], [ @113, %bb.ah ], [ @131, %bb.ck ], [ @131, %bb.ci ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.dm, i64 noundef %i.dn, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.do) #23
          to label %.cont unwind label %.thread183

.cont:                                            ; preds = %.invoke
  unreachable

bb.ak:                                            ; preds = %bb.y
  %i.dp = icmp ult i64 %i.o, %.val150
  br i1 %i.dp, label %bb.al, label %.invoke442

bb.al:                                            ; preds = %bb.ak
  %i.dq = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val149 = load ptr, ptr %i.dq, align 8, !nonnull !10, !noundef !10
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %.val149, i64 %i.o
  %i.ds = trunc i64 %i.m to i32
  store i32 %i.ds, ptr %i.dr, align 4
  %.val139 = load ptr, ptr %2, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val140 = load i64, ptr %i.dt, align 8, !noundef !10 ; 4 uses
  %i.du = add i64 %i.o, -2                        ; 3 uses
  %i.dv = icmp ult i64 %i.du, %.val140
  br i1 %i.dv, label %bb.am, label %.invoke442

bb.am:                                            ; preds = %bb.al
  %i.dw = icmp ult i64 %i.o, %.val140
  br i1 %i.dw, label %bb.an, label %.invoke442

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
  %exitcond352.not = icmp eq i64 %.sroa.08.2254, %i.ef
  br i1 %exitcond352.not, label %.invoke442, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.en = add nuw nsw i64 %.sroa.08.2254, %i.eb   ; 2 uses
  %exitcond354.not = icmp eq i64 %.sroa.08.2254, %i.eg
  br i1 %exitcond354.not, label %.invoke, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.eo = getelementptr inbounds nuw [1040 x i8], ptr %i.az, i64 %i.em
  %i.ep = getelementptr inbounds nuw [1040 x i8], ptr %3, i64 %i.en
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1040) %i.ep, ptr noundef nonnull align 8 dereferenceable(1040) %i.eo, i64 1040, i1 false)
  %exitcond355.not = icmp eq i64 %.sroa.08.2254, 26
  br i1 %exitcond355.not, label %.invoke, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %exitcond357.not = icmp eq i64 %.sroa.08.2254, %i.eh
  br i1 %exitcond357.not, label %.invoke, label %bb.at

end_hunk_0
