Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pingora-rs/original/pingora_core-a5e7685b4b87ec55.pingora_core.ebac96924b791bb8-cgu.08?download=true
inline.NumInlined: 763
inline.NumDeleted: 289
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 40
begin_hunk_0_@_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc9metablock26BrotliBuildMetaBlockGreedyNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocECskeugdADtBsi_12pingora_core:bb.a
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call fastcc void @_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc9metablock34BrotliBuildMetaBlockGreedyInternalNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i8 noundef %5, i8 noundef %6, i8 noundef %7, i64 noundef %10, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %11, i64 noundef %12, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %13, i64 noundef %14, i64 noundef %15, ptr noalias nofree noundef align 8 dereferenceable(264) %16)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

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
  %.val162 = load i64, ptr %i.t, align 8, !noundef !10
  %.not117 = icmp eq i64 %.val162, 0
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
  %i.bk = mul i64 %i.g, 2080
  %scevgep.a = getelementptr i8, ptr %i.az, i64 %i.bk
  %scevgep = getelementptr i8, ptr %scevgep.a, i64 -16
  %7 = mul i64 %i.g, 1040                         ; 2 uses
  %scevgep466 = getelementptr i8, ptr %i.az, i64 %7
  %i.bl = getelementptr i8, ptr %i.az, i64 %7
  %scevgep471 = getelementptr i8, ptr %i.bl, i64 -16
  br label %bb.w

._crit_edge:                                      ; preds = %bb.cm, %.preheader
  %.sroa.0.0 = phi float [ 0.000000e+00, %.preheader ], [ %i.lr, %bb.cm ] ; 2 uses
  %.sroa.7.0 = phi float [ 0.000000e+00, %.preheader ], [ %i.nx, %bb.cm ] ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.bn = load i64, ptr %i.bm, align 8, !noundef !10 ; 5 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bp = load i64, ptr %i.bo, align 8, !noundef !10
  %i.bq = icmp ult i64 %i.bn, %i.bp
  br i1 %i.bq, label %bb.x, label %bb.y

bb.w:                                             ; preds = %.lr.ph, %bb.cm
  %.sroa.0.1 = phi float [ 0.000000e+00, %.lr.ph ], [ %i.lr, %bb.cm ]
  %.sroa.7.1 = phi float [ 0.000000e+00, %.lr.ph ], [ %i.nx, %bb.cm ]
  %.sroa.08.0247 = phi i64 [ 0, %.lr.ph ], [ %i.ny, %bb.cm ] ; 14 uses
  %i.br = add nuw nsw i64 %i.bc, %.sroa.08.0247   ; 2 uses
  %exitcond339.not = icmp eq i64 %.sroa.08.0247, %i.bg
  br i1 %exitcond339.not, label %.invoke445, label %bb.cf

bb.x:                                             ; preds = %._crit_edge
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.bt = load float, ptr %i.bs, align 8, !noundef !10 ; 2 uses
  %i.bu = fcmp ogt float %.sroa.0.0, %i.bt
  %i.bv = fcmp ogt float %.sroa.7.0, %i.bt
  %or.cond = select i1 %i.bu, i1 %i.bv, i1 false
  br i1 %or.cond, label %bb.au, label %bb.y

bb.y:                                             ; preds = %bb.x, %._crit_edge
  %i.bw = fadd float %.sroa.0.0, -2.000000e+01
  %i.bx = fcmp olt float %.sroa.7.0, %i.bw
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.val150 = load i64, ptr %i.by, align 8, !noundef !10 ; 4 uses
  br i1 %i.bx, label %bb.ak, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bz = add i64 %i.o, -1                        ; 3 uses
  %i.ca = icmp ult i64 %i.bz, %.val150
  br i1 %i.ca, label %bb.aa, label %.invoke445

bb.aa:                                            ; preds = %bb.z
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val151 = load ptr, ptr %i.cb, align 8, !nonnull !10, !noundef !10
  %i.cc = trunc i64 %i.m to i32
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %.val151, i64 %i.bz ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 4, !noundef !10
  %i.cf = add i32 %i.ce, %i.cc
  store i32 %i.cf, ptr %i.cd, align 4
  br i1 %.not266, label %._crit_edge252, label %.lr.ph251

.lr.ph251:                                        ; preds = %bb.aa
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.az) ]
  %i.cg = load i64, ptr %0, align 8               ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.ci = icmp eq i64 %i.bn, 1
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ck = load i64, ptr %i.cj, align 8            ; 2 uses
  %i.cl = call i64 @llvm.usub.sat.i64(i64 %4, i64 %i.cg)
  %i.cm = call i64 @llvm.usub.sat.i64(i64 %4, i64 %i.ck)
  br label %bb.ad

.invoke445:                                       ; preds = %bb.cl, %bb.ch, %bb.cj, %bb.cg, %bb.w, %bb.ad, %bb.ap, %.lr.ph260, %bb.bg, %bb.bi, %bb.bk, %bb.bm, %bb.bo, %bb.bq, %bb.bs, %bb.bu, %bb.bw, %bb.by, %bb.ca, %bb.cc, %bb.ce, %bb.av, %bb.au, %bb.am, %bb.al, %bb.ak, %bb.z, %bb.bf
  %i.cn = phi i64 [ %i.bz, %bb.z ], [ %i.io, %bb.by ], [ %i.o, %bb.ak ], [ %i.iu, %bb.ca ], [ %i.ba, %bb.ad ], [ %i.ja, %bb.cc ], [ %i.jg, %bb.ce ], [ 13, %bb.bf ], [ %i.o, %bb.av ], [ %i.o, %bb.au ], [ %i.o, %bb.am ], [ %i.ek, %bb.ap ], [ %i.ds, %bb.al ], [ %i.g, %.lr.ph260 ], [ %i.gm, %bb.bg ], [ %i.gs, %bb.bi ], [ %i.gy, %bb.bk ], [ %i.he, %bb.bm ], [ %i.hk, %bb.bo ], [ %i.hq, %bb.bq ], [ %i.hw, %bb.bs ], [ %i.ic, %bb.bu ], [ %i.ii, %bb.bw ], [ 13, %bb.cg ], [ %i.br, %bb.w ], [ %i.ls, %bb.cl ], [ %i.ba, %bb.ch ], [ %i.ls, %bb.cj ]
  %i.co = phi i64 [ %.val150, %bb.z ], [ 26, %bb.by ], [ %.val150, %bb.ak ], [ 26, %bb.ca ], [ %i.ba, %bb.ad ], [ 26, %bb.cc ], [ 26, %bb.ce ], [ 13, %bb.bf ], [ %.val158, %bb.av ], [ %.val154, %bb.au ], [ %.val140, %bb.am ], [ %i.ba, %bb.ap ], [ %.val140, %bb.al ], [ 26, %.lr.ph260 ], [ 26, %bb.bg ], [ 26, %bb.bi ], [ 26, %bb.bk ], [ 26, %bb.bm ], [ 26, %bb.bo ], [ 26, %bb.bq ], [ 26, %bb.bs ], [ 26, %bb.bu ], [ 26, %bb.bw ], [ 13, %bb.cg ], [ %4, %bb.w ], [ 26, %bb.cl ], [ %i.ba, %bb.ch ], [ %i.ba, %bb.cj ]
  %i.cp = phi ptr [ @109, %bb.z ], [ @126, %bb.by ], [ @115, %bb.ak ], [ @126, %bb.ca ], [ @110, %bb.ad ], [ @126, %bb.cc ], [ @126, %bb.ce ], [ @127, %bb.bf ], [ @124, %bb.av ], [ @123, %bb.au ], [ @117, %bb.am ], [ @118, %bb.ap ], [ @116, %bb.al ], [ @126, %.lr.ph260 ], [ @126, %bb.bg ], [ @126, %bb.bi ], [ @126, %bb.bk ], [ @126, %bb.bm ], [ @126, %bb.bo ], [ @126, %bb.bq ], [ @126, %bb.bs ], [ @126, %bb.bu ], [ @126, %bb.bw ], [ @129, %bb.cg ], [ @128, %bb.w ], [ @132, %bb.cl ], [ @130, %bb.ch ], [ @130, %bb.cj ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.cn, i64 noundef %i.co, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cp) #23
          to label %.cont446 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont446:                                         ; preds = %.invoke445
  unreachable

bb.ab:                                            ; preds = %bb.bb
  unreachable

._crit_edge252:                                   ; preds = %.noexc125, %bb.aa
  store i64 0, ptr %i.h, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.cr = load i64, ptr %i.cq, align 8, !noundef !10
  %i.cs = add i64 %i.cr, 1                        ; 2 uses
  store i64 %i.cs, ptr %i.cq, align 8
  %i.ct = icmp ugt i64 %i.cs, 1
  br i1 %i.ct, label %bb.ac, label %bb.ao

bb.ac:                                            ; preds = %._crit_edge252
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.cv = load i64, ptr %i.cu, align 8, !noundef !10
  %i.cw = add i64 %i.cv, %i.k
  store i64 %i.cw, ptr %i.cu, align 8
  br label %bb.ao

bb.ad:                                            ; preds = %.lr.ph251, %.noexc125
  %.sroa.08.1249 = phi i64 [ 0, %.lr.ph251 ], [ %i.dj, %.noexc125 ] ; 11 uses
  %exitcond347.not = icmp eq i64 %.sroa.08.1249, %i.ba
  br i1 %exitcond347.not, label %.invoke445, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cx = add nuw nsw i64 %i.cg, %.sroa.08.1249   ; 2 uses
  %exitcond349.not = icmp eq i64 %.sroa.08.1249, %i.cl
  br i1 %exitcond349.not, label %.invoke, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cy = getelementptr inbounds nuw [1040 x i8], ptr %i.az, i64 %.sroa.08.1249
  %i.cz = getelementptr inbounds nuw [1040 x i8], ptr %3, i64 %i.cx
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1040) %i.cz, ptr noundef nonnull align 8 dereferenceable(1040) %i.cy, i64 1040, i1 false)
  %exitcond350.not = icmp eq i64 %.sroa.08.1249, 26
  br i1 %exitcond350.not, label %.invoke, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.sroa.08.1249
  %i.db = load float, ptr %i.da, align 4, !noundef !10 ; 2 uses
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %.sroa.08.1249
  store float %i.db, ptr %i.dc, align 4
  br i1 %i.ci, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  %i.dd = add i64 %.sroa.08.1249, %i.g            ; 3 uses
  %i.de = icmp ult i64 %i.dd, 26
  br i1 %i.de, label %bb.ai, label %.invoke

bb.ai:                                            ; preds = %bb.ah
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %i.dd
  store float %i.db, ptr %i.df, align 4
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ag, %bb.ai
  %i.dg = add nuw nsw i64 %i.ck, %.sroa.08.1249   ; 2 uses
  %exitcond352.not = icmp eq i64 %.sroa.08.1249, %i.cm
  br i1 %exitcond352.not, label %.invoke, label %.noexc125

.noexc125:                                        ; preds = %bb.aj
  %i.dh = getelementptr inbounds nuw [1040 x i8], ptr %3, i64 %i.dg ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 1032
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.dh, i8 0, i64 1032, i1 false)
  store float 3.402000e+38, ptr %i.di, align 8, !alias.scope !771
  %i.dj = add nuw nsw i64 %.sroa.08.1249, 1       ; 2 uses
  %exitcond353.not = icmp eq i64 %i.dj, %i.g
  br i1 %exitcond353.not, label %._crit_edge252, label %bb.ad

.invoke:                                          ; preds = %bb.ci, %bb.ck, %bb.aj, %bb.ah, %bb.af, %bb.ae, %bb.at, %bb.as, %bb.ar, %bb.aq
  %i.dk = phi i64 [ %i.dg, %bb.aj ], [ %i.et, %bb.at ], [ %i.el, %bb.aq ], [ %i.ek, %bb.as ], [ 26, %bb.ar ], [ %i.cx, %bb.ae ], [ 26, %bb.af ], [ %i.dd, %bb.ah ], [ %i.lu, %bb.ck ], [ %i.jo, %bb.ci ]
  %i.dl = phi i64 [ %4, %bb.aj ], [ %4, %bb.at ], [ %4, %bb.aq ], [ 26, %bb.as ], [ 26, %bb.ar ], [ %4, %bb.ae ], [ 26, %bb.af ], [ 26, %bb.ah ], [ %4, %bb.ck ], [ %4, %bb.ci ]
  %i.dm = phi ptr [ @114, %bb.aj ], [ @122, %bb.at ], [ @119, %bb.aq ], [ @121, %bb.as ], [ @120, %bb.ar ], [ @111, %bb.ae ], [ @112, %bb.af ], [ @113, %bb.ah ], [ @131, %bb.ck ], [ @131, %bb.ci ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.dk, i64 noundef %i.dl, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dm) #23
          to label %.cont unwind label %.thread183

.cont:                                            ; preds = %.invoke
  unreachable

bb.ak:                                            ; preds = %bb.y
  %i.dn = icmp ult i64 %i.o, %.val150
  br i1 %i.dn, label %bb.al, label %.invoke445

bb.al:                                            ; preds = %bb.ak
  %i.do = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val149 = load ptr, ptr %i.do, align 8, !nonnull !10, !noundef !10
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %.val149, i64 %i.o
  %i.dq = trunc i64 %i.m to i32
  store i32 %i.dq, ptr %i.dp, align 4
  %.val139 = load ptr, ptr %2, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val140 = load i64, ptr %i.dr, align 8, !noundef !10 ; 4 uses
  %i.ds = add i64 %i.o, -2                        ; 3 uses
  %i.dt = icmp ult i64 %i.ds, %.val140
  br i1 %i.dt, label %bb.am, label %.invoke445

bb.am:                                            ; preds = %bb.al
  %i.du = icmp ult i64 %i.o, %.val140
  br i1 %i.du, label %bb.an, label %.invoke445

bb.an:                                            ; preds = %bb.am
  %i.dv = getelementptr inbounds nuw i8, ptr %.val139, i64 %i.ds
  %i.dw = load i8, ptr %i.dv, align 1, !noundef !10
  %i.dx = getelementptr inbounds nuw i8, ptr %.val139, i64 %i.o
  store i8 %i.dw, ptr %i.dx, align 1
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sroa.049.0.copyload = load i64, ptr %0, align 8
  %i.dz = load i64, ptr %i.dy, align 8            ; 3 uses
  store i64 %i.dz, ptr %0, align 8
  store i64 %.sroa.049.0.copyload, ptr %i.dy, align 8
  br i1 %.not266, label %._crit_edge257, label %.lr.ph256

.lr.ph256:                                        ; preds = %bb.an
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.az) ]
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ec = load i64, ptr %i.eb, align 8            ; 2 uses
  %i.ed = call i64 @llvm.usub.sat.i64(i64 %i.ba, i64 %i.g)
  %i.ee = call i64 @llvm.usub.sat.i64(i64 %4, i64 %i.dz)
  %i.ef = call i64 @llvm.usub.sat.i64(i64 26, i64 %i.g)
  %i.eg = call i64 @llvm.usub.sat.i64(i64 %4, i64 %i.ec)
  br label %bb.ap

._crit_edge257:                                   ; preds = %.noexc, %bb.an
  %i.eh = add nuw i64 %i.o, 1
  store i64 %i.eh, ptr %i.n, align 8
  store i64 0, ptr %i.h, align 8
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i64 0, ptr %i.ei, align 8
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 56
end_hunk_0
begin_hunk_1_@_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc9metablock31ContextBlockSplitterFinishBlockNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocB1c_ECskeugdADtBsi_12pingora_core:bb.a
bb.by:                                            ; preds = %bb.bx
  %i.io = add nuw nsw i64 %i.g, 10                ; 2 uses
  %exitcond365.10.not = icmp eq i64 %i.fk, 10
  br i1 %exitcond365.10.not, label %.invoke445, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.iq = load float, ptr %i.ip, align 8, !noundef !10
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %i.fj, i64 %i.io
  store float %i.iq, ptr %i.ir, align 4
  %i.is = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.it = load float, ptr %i.is, align 4, !noundef !10
  store float %i.it, ptr %i.ip, align 8
  %exitcond367.10.not = icmp eq i64 %i.g, 11
  br i1 %exitcond367.10.not, label %._crit_edge261, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.iu = add nuw nsw i64 %i.g, 11                ; 2 uses
  %exitcond365.11.not = icmp eq i64 %i.fk, 11
  br i1 %exitcond365.11.not, label %.invoke445, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.iv = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 2 uses
  %i.iw = load float, ptr %i.iv, align 4, !noundef !10
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %i.fj, i64 %i.iu
  store float %i.iw, ptr %i.ix, align 4
  %i.iy = getelementptr inbounds nuw i8, ptr %i.e, i64 44
  %i.iz = load float, ptr %i.iy, align 4, !noundef !10
  store float %i.iz, ptr %i.iv, align 4
  %exitcond367.11.not = icmp eq i64 %i.g, 12
  br i1 %exitcond367.11.not, label %._crit_edge261, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.ja = add nuw nsw i64 %i.g, 12                ; 2 uses
  %exitcond365.12.not = icmp eq i64 %i.fk, 12
  br i1 %exitcond365.12.not, label %.invoke445, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.jb = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.jc = load float, ptr %i.jb, align 8, !noundef !10
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %i.fj, i64 %i.ja
  store float %i.jc, ptr %i.jd, align 4
  %i.je = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.jf = load float, ptr %i.je, align 4, !noundef !10
  store float %i.jf, ptr %i.jb, align 8
  %exitcond367.12.not = icmp eq i64 %i.g, 13
  br i1 %exitcond367.12.not, label %._crit_edge261, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.jg = add nuw nsw i64 %i.g, 13                ; 2 uses
  %exitcond365.13.not = icmp eq i64 %i.fk, 13
  br i1 %exitcond365.13.not, label %.invoke445, label %bb.bf

bb.cf:                                            ; preds = %bb.w
  %i.jh = getelementptr inbounds nuw [1040 x i8], ptr %3, i64 %i.br ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 0, ptr %i.b, align 8
  %i.ji = invoke noundef float @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc8bit_cost14ShannonEntropy(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.jh, i64 noundef 256, i64 noundef %i.be, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.cg unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.cg:                                            ; preds = %bb.cf
  %i.jj = load i64, ptr %i.b, align 8, !noundef !10
  %i.jk = uitofp i64 %i.jj to float               ; 2 uses
  %i.jl = fcmp olt float %i.ji, %i.jk
  %.sroa.044.0 = select i1 %i.jl, float %i.jk, float %i.ji ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %exitcond340.not = icmp eq i64 %.sroa.08.0247, 13
  br i1 %exitcond340.not, label %.invoke445, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %.sroa.08.0247
  store float %.sroa.044.0, ptr %i.jm, align 4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.az) ]
  %i.jn = load i64, ptr %0, align 8, !noundef !10
  %i.jo = add i64 %i.jn, %.sroa.08.0247           ; 3 uses
  %exitcond341.not = icmp eq i64 %.sroa.08.0247, %i.ba
  br i1 %exitcond341.not, label %.invoke445, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.jp = getelementptr inbounds nuw [1040 x i8], ptr %i.az, i64 %.sroa.08.0247 ; 9 uses
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1040) %i.jp, ptr noundef nonnull align 8 dereferenceable(1040) %i.jh, i64 1040, i1 false)
  %i.jq = icmp ult i64 %i.jo, %4
  br i1 %i.jq, label %.noexc134, label %.invoke

.noexc134:                                        ; preds = %bb.ci
  %i.jr = getelementptr inbounds nuw [1040 x i8], ptr %3, i64 %i.jo ; 8 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.jp, i64 1024 ; 2 uses
  %i.jt = load i64, ptr %i.js, align 8, !alias.scope !775, !noundef !10
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jr, i64 1024 ; 2 uses
  %i.jv = load i64, ptr %i.ju, align 8, !alias.scope !776, !noundef !10
  %i.jw = add i64 %i.jv, %i.jt
  store i64 %i.jw, ptr %i.js, align 8, !alias.scope !777
  %bound0472 = icmp ult ptr %i.az, %i.ju
  %bound1473 = icmp ult ptr %i.jr, %scevgep471
  %found.conflict474 = and i1 %bound0472, %bound1473
  br i1 %found.conflict474, label %scalar.ph475, label %vector.body477

vector.body477:                                   ; preds = %.noexc134, %vector.body477
  %index478 = phi i64 [ %index.next483.1, %vector.body477 ], [ 0, %.noexc134 ] ; 4 uses
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %i.jp, i64 %index478 ; 3 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 16 ; 2 uses
  %wide.load479 = load <4 x i32>, ptr %i.jx, align 4, !alias.scope !778, !noalias !779
  %wide.load480 = load <4 x i32>, ptr %i.jy, align 4, !alias.scope !778, !noalias !779
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr %i.jr, i64 %index478 ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 16
  %wide.load481 = load <4 x i32>, ptr %i.jz, align 8, !alias.scope !779
  %wide.load482 = load <4 x i32>, ptr %i.ka, align 8, !alias.scope !779
  %i.kb = add <4 x i32> %wide.load481, %wide.load479
  %i.kc = add <4 x i32> %wide.load482, %wide.load480
  store <4 x i32> %i.kb, ptr %i.jx, align 4, !alias.scope !778, !noalias !779
  store <4 x i32> %i.kc, ptr %i.jy, align 4, !alias.scope !778, !noalias !779
  %index.next483 = or disjoint i64 %index478, 8   ; 2 uses
  %i.kd = getelementptr inbounds nuw [4 x i8], ptr %i.jp, i64 %index.next483 ; 3 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 16 ; 2 uses
  %wide.load479.1 = load <4 x i32>, ptr %i.kd, align 4, !alias.scope !778, !noalias !779
  %wide.load480.1 = load <4 x i32>, ptr %i.ke, align 4, !alias.scope !778, !noalias !779
  %i.kf = getelementptr inbounds nuw [4 x i8], ptr %i.jr, i64 %index.next483 ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 16
  %wide.load481.1 = load <4 x i32>, ptr %i.kf, align 8, !alias.scope !779
  %wide.load482.1 = load <4 x i32>, ptr %i.kg, align 8, !alias.scope !779
  %i.kh = add <4 x i32> %wide.load481.1, %wide.load479.1
  %i.ki = add <4 x i32> %wide.load482.1, %wide.load480.1
  store <4 x i32> %i.kh, ptr %i.kd, align 4, !alias.scope !778, !noalias !779
  store <4 x i32> %i.ki, ptr %i.ke, align 4, !alias.scope !778, !noalias !779
  %index.next483.1 = add nuw nsw i64 %index478, 16 ; 2 uses
  %i.kj = icmp eq i64 %index.next483.1, 256
  br i1 %i.kj, label %middle.block484, label %vector.body477, !llvm.loop !762

scalar.ph475:                                     ; preds = %.noexc134, %scalar.ph475
  %.sroa.01.0.i245 = phi i64 [ %i.lc, %scalar.ph475 ], [ 0, %.noexc134 ] ; 6 uses
  %i.kk = or disjoint i64 %.sroa.01.0.i245, 1     ; 2 uses
  %i.kl = getelementptr inbounds nuw [4 x i8], ptr %i.jp, i64 %.sroa.01.0.i245 ; 2 uses
  %i.km = load i32, ptr %i.kl, align 4, !noundef !10
  %i.kn = getelementptr inbounds nuw [4 x i8], ptr %i.jr, i64 %.sroa.01.0.i245
  %i.ko = load i32, ptr %i.kn, align 8, !noundef !10
  %i.kp = add i32 %i.ko, %i.km
  store i32 %i.kp, ptr %i.kl, align 4
  %i.kq = or disjoint i64 %.sroa.01.0.i245, 2     ; 2 uses
  %i.kr = getelementptr inbounds nuw [4 x i8], ptr %i.jp, i64 %i.kk ; 2 uses
  %i.ks = load i32, ptr %i.kr, align 4, !noundef !10
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %i.jr, i64 %i.kk
  %i.ku = load i32, ptr %i.kt, align 4, !noundef !10
  %i.kv = add i32 %i.ku, %i.ks
  store i32 %i.kv, ptr %i.kr, align 4
  %i.kw = or disjoint i64 %.sroa.01.0.i245, 3     ; 2 uses
  %i.kx = getelementptr inbounds nuw [4 x i8], ptr %i.jp, i64 %i.kq ; 2 uses
  %i.ky = load i32, ptr %i.kx, align 4, !noundef !10
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %i.jr, i64 %i.kq
  %i.la = load i32, ptr %i.kz, align 8, !noundef !10
  %i.lb = add i32 %i.la, %i.ky
  store i32 %i.lb, ptr %i.kx, align 4
  %i.lc = add nuw nsw i64 %.sroa.01.0.i245, 4     ; 2 uses
  %i.ld = getelementptr inbounds nuw [4 x i8], ptr %i.jp, i64 %i.kw ; 2 uses
  %i.le = load i32, ptr %i.ld, align 4, !noundef !10
  %i.lf = getelementptr inbounds nuw [4 x i8], ptr %i.jr, i64 %i.kw
  %i.lg = load i32, ptr %i.lf, align 4, !noundef !10
  %i.lh = add i32 %i.lg, %i.le
  store i32 %i.lh, ptr %i.ld, align 4
  %exitcond.not.3 = icmp eq i64 %i.lc, 256
  br i1 %exitcond.not.3, label %middle.block484, label %scalar.ph475, !llvm.loop !763

middle.block484:                                  ; preds = %vector.body477, %scalar.ph475
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8
  %i.li = invoke noundef float @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc8bit_cost14ShannonEntropy(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.jp, i64 noundef 256, i64 noundef %i.be, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.cj unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.cj:                                            ; preds = %middle.block484
  %i.lj = load i64, ptr %i.a, align 8, !noundef !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.lk = uitofp i64 %i.lj to float               ; 2 uses
  %i.ll = fcmp olt float %i.li, %i.lk
  %.sroa.046.0 = select i1 %i.ll, float %i.lk, float %i.li ; 2 uses
  %i.lm = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.sroa.08.0247
  store float %.sroa.046.0, ptr %i.lm, align 4
  %i.ln = fsub float %.sroa.046.0, %.sroa.044.0
  %i.lo = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %.sroa.08.0247
  %i.lp = load float, ptr %i.lo, align 4, !noundef !10
  %i.lq = fsub float %i.ln, %i.lp
  %i.lr = fadd float %.sroa.0.1, %i.lq            ; 2 uses
  %i.ls = add i64 %i.g, %.sroa.08.0247            ; 5 uses
  %i.lt = load i64, ptr %i.bj, align 8, !noundef !10
  %i.lu = add i64 %i.lt, %.sroa.08.0247           ; 3 uses
  %exitcond343.not = icmp eq i64 %.sroa.08.0247, %i.bh
  br i1 %exitcond343.not, label %.invoke445, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.lv = getelementptr inbounds nuw [1040 x i8], ptr %i.az, i64 %i.ls ; 9 uses
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1040) %i.lv, ptr noundef nonnull align 8 dereferenceable(1040) %i.jh, i64 1040, i1 false)
  %i.lw = icmp ult i64 %i.lu, %4
  br i1 %i.lw, label %.noexc134.1, label %.invoke

.noexc134.1:                                      ; preds = %bb.ck
  %i.lx = getelementptr inbounds nuw [1040 x i8], ptr %3, i64 %i.lu ; 8 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lv, i64 1024 ; 2 uses
  %i.lz = load i64, ptr %i.ly, align 8, !alias.scope !775, !noundef !10
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lx, i64 1024 ; 2 uses
  %i.mb = load i64, ptr %i.ma, align 8, !alias.scope !776, !noundef !10
  %i.mc = add i64 %i.mb, %i.lz
  store i64 %i.mc, ptr %i.ly, align 8, !alias.scope !777
  %bound0 = icmp ult ptr %scevgep466, %i.ma
  %bound1 = icmp ult ptr %i.lx, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph, label %vector.body

vector.body:                                      ; preds = %.noexc134.1, %vector.body
  %index = phi i64 [ %index.next.1, %vector.body ], [ 0, %.noexc134.1 ] ; 4 uses
  %i.md = getelementptr inbounds nuw [4 x i8], ptr %i.lv, i64 %index ; 3 uses
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.md, align 4, !alias.scope !780, !noalias !781
  %wide.load467 = load <4 x i32>, ptr %i.me, align 4, !alias.scope !780, !noalias !781
  %i.mf = getelementptr inbounds nuw [4 x i8], ptr %i.lx, i64 %index ; 2 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 16
  %wide.load468 = load <4 x i32>, ptr %i.mf, align 8, !alias.scope !781
  %wide.load469 = load <4 x i32>, ptr %i.mg, align 8, !alias.scope !781
  %i.mh = add <4 x i32> %wide.load468, %wide.load
  %i.mi = add <4 x i32> %wide.load469, %wide.load467
  store <4 x i32> %i.mh, ptr %i.md, align 4, !alias.scope !780, !noalias !781
  store <4 x i32> %i.mi, ptr %i.me, align 4, !alias.scope !780, !noalias !781
  %index.next = or disjoint i64 %index, 8         ; 2 uses
  %i.mj = getelementptr inbounds nuw [4 x i8], ptr %i.lv, i64 %index.next ; 3 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 16 ; 2 uses
  %wide.load.1 = load <4 x i32>, ptr %i.mj, align 4, !alias.scope !780, !noalias !781
  %wide.load467.1 = load <4 x i32>, ptr %i.mk, align 4, !alias.scope !780, !noalias !781
  %i.ml = getelementptr inbounds nuw [4 x i8], ptr %i.lx, i64 %index.next ; 2 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 16
  %wide.load468.1 = load <4 x i32>, ptr %i.ml, align 8, !alias.scope !781
  %wide.load469.1 = load <4 x i32>, ptr %i.mm, align 8, !alias.scope !781
  %i.mn = add <4 x i32> %wide.load468.1, %wide.load.1
  %i.mo = add <4 x i32> %wide.load469.1, %wide.load467.1
  store <4 x i32> %i.mn, ptr %i.mj, align 4, !alias.scope !780, !noalias !781
  store <4 x i32> %i.mo, ptr %i.mk, align 4, !alias.scope !780, !noalias !781
  %index.next.1 = add nuw nsw i64 %index, 16      ; 2 uses
  %i.mp = icmp eq i64 %index.next.1, 256
  br i1 %i.mp, label %middle.block, label %vector.body, !llvm.loop !767

scalar.ph:                                        ; preds = %.noexc134.1, %scalar.ph
  %.sroa.01.0.i245.1 = phi i64 [ %i.ni, %scalar.ph ], [ 0, %.noexc134.1 ] ; 6 uses
  %i.mq = or disjoint i64 %.sroa.01.0.i245.1, 1   ; 2 uses
  %i.mr = getelementptr inbounds nuw [4 x i8], ptr %i.lv, i64 %.sroa.01.0.i245.1 ; 2 uses
  %i.ms = load i32, ptr %i.mr, align 4, !noundef !10
  %i.mt = getelementptr inbounds nuw [4 x i8], ptr %i.lx, i64 %.sroa.01.0.i245.1
  %i.mu = load i32, ptr %i.mt, align 8, !noundef !10
  %i.mv = add i32 %i.mu, %i.ms
  store i32 %i.mv, ptr %i.mr, align 4
  %i.mw = or disjoint i64 %.sroa.01.0.i245.1, 2   ; 2 uses
  %i.mx = getelementptr inbounds nuw [4 x i8], ptr %i.lv, i64 %i.mq ; 2 uses
  %i.my = load i32, ptr %i.mx, align 4, !noundef !10
  %i.mz = getelementptr inbounds nuw [4 x i8], ptr %i.lx, i64 %i.mq
  %i.na = load i32, ptr %i.mz, align 4, !noundef !10
  %i.nb = add i32 %i.na, %i.my
  store i32 %i.nb, ptr %i.mx, align 4
  %i.nc = or disjoint i64 %.sroa.01.0.i245.1, 3   ; 2 uses
  %i.nd = getelementptr inbounds nuw [4 x i8], ptr %i.lv, i64 %i.mw ; 2 uses
  %i.ne = load i32, ptr %i.nd, align 4, !noundef !10
  %i.nf = getelementptr inbounds nuw [4 x i8], ptr %i.lx, i64 %i.mw
  %i.ng = load i32, ptr %i.nf, align 8, !noundef !10
  %i.nh = add i32 %i.ng, %i.ne
  store i32 %i.nh, ptr %i.nd, align 4
  %i.ni = add nuw nsw i64 %.sroa.01.0.i245.1, 4   ; 2 uses
  %i.nj = getelementptr inbounds nuw [4 x i8], ptr %i.lv, i64 %i.nc ; 2 uses
  %i.nk = load i32, ptr %i.nj, align 4, !noundef !10
  %i.nl = getelementptr inbounds nuw [4 x i8], ptr %i.lx, i64 %i.nc
  %i.nm = load i32, ptr %i.nl, align 4, !noundef !10
  %i.nn = add i32 %i.nm, %i.nk
  store i32 %i.nn, ptr %i.nj, align 4
  %exitcond.1.not.3 = icmp eq i64 %i.ni, 256
  br i1 %exitcond.1.not.3, label %middle.block, label %scalar.ph, !llvm.loop !768

middle.block:                                     ; preds = %vector.body, %scalar.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8
  %i.no = invoke noundef float @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc8bit_cost14ShannonEntropy(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.lv, i64 noundef 256, i64 noundef %i.be, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.cl unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.cl:                                            ; preds = %middle.block
  %i.np = load i64, ptr %i.a, align 8, !noundef !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %exitcond345.not = icmp eq i64 %.sroa.08.0247, %i.bi
  br i1 %exitcond345.not, label %.invoke445, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.nq = uitofp i64 %i.np to float               ; 2 uses
  %i.nr = fcmp olt float %i.no, %i.nq
  %.sroa.046.0.1 = select i1 %i.nr, float %i.nq, float %i.no ; 2 uses
  %i.ns = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ls
  store float %.sroa.046.0.1, ptr %i.ns, align 4
  %i.nt = fsub float %.sroa.046.0.1, %.sroa.044.0
  %i.nu = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %i.ls
  %i.nv = load float, ptr %i.nu, align 4, !noundef !10
  %i.nw = fsub float %i.nt, %i.nv
  %i.nx = fadd float %.sroa.7.1, %i.nw            ; 2 uses
  %i.ny = add nuw nsw i64 %.sroa.08.0247, 1       ; 2 uses
  %exitcond346.not = icmp eq i64 %i.ny, %i.g
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
  %i.nz = icmp eq i64 %i.ba, 0
  br i1 %i.nz, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsc389t4z7aPt_12alloc_stdlib10heap_alloc7WrapBoxNtNtNtCsiRgJJXJ4lb7_6brotli3enc9histogram16HistogramLiteralEECskeugdADtBsi_12pingora_core.exit, label %bb.cn

bb.cn:                                            ; preds = %.thread183, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %lpad.phi185 = phi { ptr, i32 } [ %lpad.thr_comm181, %.thread183 ], [ %lpad.loopexit.split-lp503, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.oa = mul nuw nsw i64 %i.ba, 1040
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.az) ]
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.az, i64 noundef range(i64 1, 0) %i.oa, i64 noundef 8) #22
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
end_hunk_1
