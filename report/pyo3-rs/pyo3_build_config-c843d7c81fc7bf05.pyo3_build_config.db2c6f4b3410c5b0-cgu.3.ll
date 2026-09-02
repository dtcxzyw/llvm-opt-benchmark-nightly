Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pyo3-rs/original/pyo3_build_config-c843d7c81fc7bf05.pyo3_build_config.db2c6f4b3410c5b0-cgu.3?download=true
inline.NumInlined: 64
inline.NumDeleted: 5
begin_hunk_0_@_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift4sortNtNtCsG258MDvU3F_3std4path7PathBufNvYBW_NtNtBa_3cmp10PartialOrd2ltECsiOEEQt9hBE2_17pyo3_build_config:bb.a

bb.h:                                             ; preds = %bb.f
  %i.r = sub nuw i64 %1, %.sroa.09.0
  %i.s = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.09.0
  %i.t = call i64 @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtCsG258MDvU3F_3std4path7PathBufNvYB13_NtNtBa_3cmp10PartialOrd2ltECsiOEEQt9hBE2_17pyo3_build_config(ptr align 8 %i.s, i64 %i.r, ptr align 8 %2, i64 %3, i64 %.sroa.01.0, i1 zeroext %4, ptr %5) ; 2 uses
  %i.u = lshr i64 %.sroa.023.0, 1
  %i.v = lshr i64 %i.t, 1
  %factor = shl i64 %.sroa.09.0, 1                ; 2 uses
  %i.w = sub i64 %factor, %i.u
  %i.x = add i64 %i.v, %factor
  %i.y = mul i64 %i.w, %.sroa.0.0
  %i.z = mul i64 %i.x, %.sroa.0.0
  %i.aa = xor i64 %i.z, %i.y
  %i.ab = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.aa, i1 false)
  %i.ac = trunc nuw nsw i64 %i.ab to i8
  br label %bb.g

bb.i:                                             ; preds = %.lr.ph, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCsG258MDvU3F_3std4path7PathBufNvYB16_NtNtBa_3cmp10PartialOrd2ltECsiOEEQt9hBE2_17pyo3_build_config.exit
  %.sroa.02.139 = phi i64 [ %.sroa.02.0, %.lr.ph ], [ %i.ad, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCsG258MDvU3F_3std4path7PathBufNvYB16_NtNtBa_3cmp10PartialOrd2ltECsiOEEQt9hBE2_17pyo3_build_config.exit ] ; 2 uses
  %.sroa.023.138 = phi i64 [ %.sroa.023.0, %.lr.ph ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCsG258MDvU3F_3std4path7PathBufNvYB16_NtNtBa_3cmp10PartialOrd2ltECsiOEEQt9hBE2_17pyo3_build_config.exit ] ; 3 uses
  %i.ad = add i64 %.sroa.02.139, -1               ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ad
  %i.af = load i8, ptr %i.ae, align 1
  %.not28 = icmp ult i8 %i.af, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.j

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCsG258MDvU3F_3std4path7PathBufNvYB16_NtNtBa_3cmp10PartialOrd2ltECsiOEEQt9hBE2_17pyo3_build_config.exit, %bb.i, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.138, %bb.i ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCsG258MDvU3F_3std4path7PathBufNvYB16_NtNtBa_3cmp10PartialOrd2ltECsiOEEQt9hBE2_17pyo3_build_config.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.139, %bb.i ], [ 1, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCsG258MDvU3F_3std4path7PathBufNvYB16_NtNtBa_3cmp10PartialOrd2ltECsiOEEQt9hBE2_17pyo3_build_config.exit ] ; 3 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.ah, align 1
  br i1 %i.o, label %bb.u, label %bb.v

bb.j:                                             ; preds = %bb.i
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.ad
  %i.aj = load i64, ptr %i.ai, align 8            ; 2 uses
  %i.ak = lshr i64 %i.aj, 1                       ; 9 uses
  %i.al = lshr i64 %.sroa.023.138, 1              ; 7 uses
  %i.am = add nuw i64 %i.ak, %i.al                ; 4 uses
  %i.an = sub i64 %.sroa.09.0, %i.am
  %i.ao = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.an ; 5 uses
  %i.ap = icmp ugt i64 %i.am, %3
  %i.aq = trunc i64 %i.aj to i1                   ; 2 uses
  %or.cond.i = or i1 %i.ap, %i.aq
  %i.ar = trunc i64 %.sroa.023.138 to i1          ; 2 uses
  %or.cond3.i = select i1 %or.cond.i, i1 true, i1 %i.ar
  br i1 %or.cond3.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  br i1 %i.aq, label %bb.m, label %bb.n

bb.l:                                             ; preds = %bb.j
  %i.as = shl i64 %i.am, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCsG258MDvU3F_3std4path7PathBufNvYB16_NtNtBa_3cmp10PartialOrd2ltECsiOEEQt9hBE2_17pyo3_build_config.exit

bb.m:                                             ; preds = %bb.n, %bb.k
  br i1 %i.ar, label %bb.p, label %bb.o

bb.n:                                             ; preds = %bb.k
  %i.at = or i64 %i.ak, 1
  %i.au = call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.at, i1 true)
  %i.av = trunc nuw nsw i64 %i.au to i32
  %i.aw = shl nuw nsw i32 %i.av, 1
  %i.ax = xor i32 %i.aw, 126
  call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtCsG258MDvU3F_3std4path7PathBufNvYB15_NtNtBa_3cmp10PartialOrd2ltECsiOEEQt9hBE2_17pyo3_build_config(ptr align 8 %i.ao, i64 %i.ak, ptr align 8 %2, i64 %3, i32 %i.ax, ptr align 8 null, ptr %5) #24
  br label %bb.m

bb.o:                                             ; preds = %bb.m
  %i.ay = getelementptr inbounds nuw [24 x i8], ptr %i.ao, i64 %i.ak
  %i.az = or i64 %i.al, 1
  %i.ba = call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.az, i1 true)
  %i.bb = trunc nuw nsw i64 %i.ba to i32
  %i.bc = shl nuw nsw i32 %i.bb, 1
  %i.bd = xor i32 %i.bc, 126
  call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtCsG258MDvU3F_3std4path7PathBufNvYB15_NtNtBa_3cmp10PartialOrd2ltECsiOEEQt9hBE2_17pyo3_build_config(ptr align 8 %i.ay, i64 %i.al, ptr align 8 %2, i64 %3, i32 %i.bd, ptr align 8 null, ptr %5) #24
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.be = icmp eq i64 %i.ak, 0
  %i.bf = icmp eq i64 %i.al, 0
  %or.cond.i31 = or i1 %i.bf, %i.be
  br i1 %or.cond.i31, label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5merge5mergeNtNtCsG258MDvU3F_3std4path7PathBufNvYBX_NtNtBa_3cmp10PartialOrd2ltECsiOEEQt9hBE2_17pyo3_build_config.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bg = call i64 @_RNvYjNtNtCskKLDkoKarTP_4core3cmp3Ord3minCsiOEEQt9hBE2_17pyo3_build_config(i64 %i.ak, i64 %i.al) #23
  %i.bh = icmp ult i64 %3, %i.bg
  br i1 %i.bh, label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5merge5mergeNtNtCsG258MDvU3F_3std4path7PathBufNvYBX_NtNtBa_3cmp10PartialOrd2ltECsiOEEQt9hBE2_17pyo3_build_config.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.q
  %i.bi = getelementptr inbounds nuw [24 x i8], ptr %i.ao, i64 %i.ak ; 3 uses
  %.not.i32 = icmp samesign ugt i64 %i.ak, %i.al  ; 2 uses
  %spec.select.i = select i1 %.not.i32, ptr %i.bi, ptr %i.ao ; 2 uses
  %spec.select16.i = call i64 @llvm.umin.i64(i64 %i.ak, i64 %i.al)
  %i.bj = mul nuw nsw i64 %spec.select16.i, 24    ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %2, ptr align 8 %spec.select.i, i64 %i.bj, i1 false)
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 %i.bj ; 2 uses
  store ptr %2, ptr %i.a, align 8
  store ptr %i.bk, ptr %i.m, align 8
  store ptr %spec.select.i, ptr %i.n, align 8
  br i1 %.not.i32, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %.critedge.i, %.noexc.i
  %i.bl = phi ptr [ %i.bv, %.noexc.i ], [ %i.bk, %.critedge.i ]
  %i.bm = phi ptr [ %i.bt, %.noexc.i ], [ %i.bi, %.critedge.i ]
  %.sroa.0.0.i.i = phi ptr [ %i.bq, %.noexc.i ], [ %i.q, %.critedge.i ]
  %i.bn = getelementptr inbounds i8, ptr %i.bm, i64 -24 ; 3 uses
  %i.bo = getelementptr inbounds i8, ptr %i.bl, i64 -24 ; 3 uses
  %i.bp = invoke zeroext i1 @_RNvYNvYNtNtCsG258MDvU3F_3std4path7PathBufNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBH_3ops8function5FnMutTRB5_B1N_EE8call_mutCsiOEEQt9hBE2_17pyo3_build_config(ptr %5, ptr nonnull align 8 %i.bo, ptr nonnull align 8 %i.bn) #23
          to label %.noexc.i unwind label %.loopexit.i ; 3 uses

.noexc.i:                                         ; preds = %.preheader.i
  %i.bq = getelementptr inbounds i8, ptr %.sroa.0.0.i.i, i64 -24 ; 2 uses
  %..i.i = select i1 %i.bp, ptr %i.bn, ptr %i.bo
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bq, ptr noundef nonnull align 8 dereferenceable(24) %..i.i, i64 24, i1 false)
  %i.br = xor i1 %i.bp, true
  %i.bs = zext i1 %i.br to i64
  %i.bt = getelementptr inbounds nuw [24 x i8], ptr %i.bn, i64 %i.bs ; 3 uses
  store ptr %i.bt, ptr %i.n, align 8
  %i.bu = zext i1 %i.bp to i64
  %i.bv = getelementptr inbounds nuw [24 x i8], ptr %i.bo, i64 %i.bu ; 3 uses
  store ptr %i.bv, ptr %i.m, align 8
  %i.bw = icmp eq ptr %i.bt, %i.ao
  %i.bx = icmp eq ptr %i.bv, %2
  %or.cond.i.i = select i1 %i.bw, i1 true, i1 %i.bx
  br i1 %or.cond.i.i, label %_RINvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtCsG258MDvU3F_3std4path7PathBufE10merge_downNvYB1a_NtNtBb_3cmp10PartialOrd2ltECsiOEEQt9hBE2_17pyo3_build_config.exit.i, label %.preheader.i

.lr.ph.i.i:                                       ; preds = %.critedge.i, %.noexc18.i
  %i.by = phi ptr [ %i.ce, %.noexc18.i ], [ %2, %.critedge.i ]
  %.sroa.0.07.i.i = phi ptr [ %i.cg, %.noexc18.i ], [ %i.bi, %.critedge.i ] ; 3 uses
  %i.bz = invoke zeroext i1 @_RNvYNvYNtNtCsG258MDvU3F_3std4path7PathBufNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBH_3ops8function5FnMutTRB5_B1N_EE8call_mutCsiOEEQt9hBE2_17pyo3_build_config(ptr %5, ptr align 8 %.sroa.0.07.i.i, ptr align 8 %i.by) #23
          to label %.noexc18.i unwind label %.loopexit.split-lp.i ; 3 uses

.noexc18.i:                                       ; preds = %.lr.ph.i.i
  %i.ca = xor i1 %i.bz, true
  %i.cb = load ptr, ptr %i.a, align 8             ; 2 uses
  %spec.select19.i = select i1 %i.bz, ptr %.sroa.0.07.i.i, ptr %i.cb
  %i.cc = load ptr, ptr %i.n, align 8             ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cc, ptr noundef nonnull align 8 dereferenceable(24) %spec.select19.i, i64 24, i1 false)
  %i.cd = zext i1 %i.ca to i64
  %i.ce = getelementptr inbounds nuw [24 x i8], ptr %i.cb, i64 %i.cd ; 3 uses
  store ptr %i.ce, ptr %i.a, align 8
  %i.cf = zext i1 %i.bz to i64
  %i.cg = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.07.i.i, i64 %i.cf ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  store ptr %i.ch, ptr %i.n, align 8
  %i.ci = load ptr, ptr %i.m, align 8
  %i.cj = icmp ne ptr %i.ce, %i.ci
  %i.ck = icmp ne ptr %i.cg, %i.q
  %or.cond.i17.i = select i1 %i.cj, i1 %i.ck, i1 false
  br i1 %or.cond.i17.i, label %.lr.ph.i.i, label %_RINvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtCsG258MDvU3F_3std4path7PathBufE10merge_downNvYB1a_NtNtBb_3cmp10PartialOrd2ltECsiOEEQt9hBE2_17pyo3_build_config.exit.i

.loopexit.i:                                      ; preds = %.preheader.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

.loopexit.split-lp.i:                             ; preds = %.lr.ph.i.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.r:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6stable5merge10MergeStateNtNtCsG258MDvU3F_3std4path7PathBufEECsiOEEQt9hBE2_17pyo3_build_config(ptr nonnull align 8 %i.a) #26
          to label %bb.t unwind label %bb.s

_RINvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtCsG258MDvU3F_3std4path7PathBufE10merge_downNvYB1a_NtNtBb_3cmp10PartialOrd2ltECsiOEEQt9hBE2_17pyo3_build_config.exit.i: ; preds = %.noexc18.i, %.noexc.i
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6stable5merge10MergeStateNtNtCsG258MDvU3F_3std4path7PathBufEECsiOEEQt9hBE2_17pyo3_build_config(ptr nonnull align 8 %i.a)
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5merge5mergeNtNtCsG258MDvU3F_3std4path7PathBufNvYBX_NtNtBa_3cmp10PartialOrd2ltECsiOEEQt9hBE2_17pyo3_build_config.exit

bb.s:                                             ; preds = %bb.r
  %i.cl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.t:                                             ; preds = %bb.r
  resume { ptr, i32 } %lpad.phi.i

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5merge5mergeNtNtCsG258MDvU3F_3std4path7PathBufNvYBX_NtNtBa_3cmp10PartialOrd2ltECsiOEEQt9hBE2_17pyo3_build_config.exit: ; preds = %bb.p, %bb.q, %_RINvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtCsG258MDvU3F_3std4path7PathBufE10merge_downNvYB1a_NtNtBb_3cmp10PartialOrd2ltECsiOEEQt9hBE2_17pyo3_build_config.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.cm = shl i64 %i.am, 1
  %i.cn = or disjoint i64 %i.cm, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCsG258MDvU3F_3std4path7PathBufNvYB16_NtNtBa_3cmp10PartialOrd2ltECsiOEEQt9hBE2_17pyo3_build_config.exit

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCsG258MDvU3F_3std4path7PathBufNvYB16_NtNtBa_3cmp10PartialOrd2ltECsiOEEQt9hBE2_17pyo3_build_config.exit: ; preds = %bb.l, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5merge5mergeNtNtCsG258MDvU3F_3std4path7PathBufNvYBX_NtNtBa_3cmp10PartialOrd2ltECsiOEEQt9hBE2_17pyo3_build_config.exit
  %.sroa.0.0.i = phi i64 [ %i.cn, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5merge5mergeNtNtCsG258MDvU3F_3std4path7PathBufNvYBX_NtNtBa_3cmp10PartialOrd2ltECsiOEEQt9hBE2_17pyo3_build_config.exit ], [ %i.as, %bb.l ] ; 2 uses
  %i.co = icmp ugt i64 %i.ad, 1
  br i1 %i.co, label %bb.i, label %._crit_edge

bb.u:                                             ; preds = %._crit_edge
  %i.cp = add i64 %.sroa.02.1.lcssa, 1
  %i.cq = lshr i64 %.sroa.018.0, 1
  %i.cr = add i64 %i.cq, %.sroa.09.0
  br label %bb.f

bb.v:                                             ; preds = %._crit_edge
  %6 = trunc i64 %.sroa.023.1.lcssa to i1
  br i1 %6, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cs = or i64 %1, 1
  %i.ct = call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.cs, i1 true)
  %i.cu = trunc nuw nsw i64 %i.ct to i32
  %i.cv = shl nuw nsw i32 %i.cu, 1
  %i.cw = xor i32 %i.cv, 126
  call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtCsG258MDvU3F_3std4path7PathBufNvYB15_NtNtBa_3cmp10PartialOrd2ltECsiOEEQt9hBE2_17pyo3_build_config(ptr align 8 %0, i64 %1, ptr align 8 %2, i64 %3, i32 %i.cw, ptr align 8 null, ptr %5) #24
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5merge5mergeNtNtCsG258MDvU3F_3std4path7PathBufNvYBX_NtNtBa_3cmp10PartialOrd2ltECsiOEEQt9hBE2_17pyo3_build_config(ptr align 8 %0, i64 %1, ptr align 8 %2, i64 %3, i64 %4, ptr %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = icmp eq i64 %4, 0
  %i.c = icmp uge i64 %4, %1
  %or.cond = select i1 %i.b, i1 true, i1 %i.c
  br i1 %or.cond, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = sub nuw i64 %1, %4                       ; 3 uses
  %i.e = tail call i64 @_RNvYjNtNtCskKLDkoKarTP_4core3cmp3Ord3minCsiOEEQt9hBE2_17pyo3_build_config(i64 %4, i64 %i.d) #23
  %i.f = icmp ult i64 %3, %i.e
  br i1 %i.f, label %bb.d, label %.critedge

.critedge:                                        ; preds = %bb.b
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %4 ; 3 uses
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %1 ; 2 uses
  %.not = icmp ugt i64 %4, %i.d                   ; 2 uses
  %spec.select = select i1 %.not, ptr %i.g, ptr %0 ; 2 uses
  %spec.select16 = tail call i64 @llvm.umin.i64(i64 %4, i64 %i.d)
  %i.i = mul nuw nsw i64 %spec.select16, 24       ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %2, ptr align 8 %spec.select, i64 %i.i, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 %i.i ; 2 uses
  store ptr %2, ptr %i.a, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  store ptr %i.j, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 4 uses
  store ptr %spec.select, ptr %i.l, align 8
  br i1 %.not, label %.preheader, label %.lr.ph.i

.preheader:                                       ; preds = %.critedge, %.noexc
  %i.m = phi ptr [ %i.w, %.noexc ], [ %i.j, %.critedge ]
  %i.n = phi ptr [ %i.u, %.noexc ], [ %i.g, %.critedge ]
  %.sroa.0.0.i = phi ptr [ %i.r, %.noexc ], [ %i.h, %.critedge ]
  %i.o = getelementptr inbounds i8, ptr %i.n, i64 -24 ; 3 uses
  %i.p = getelementptr inbounds i8, ptr %i.m, i64 -24 ; 3 uses
  %i.q = invoke zeroext i1 @_RNvYNvYNtNtCsG258MDvU3F_3std4path7PathBufNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBH_3ops8function5FnMutTRB5_B1N_EE8call_mutCsiOEEQt9hBE2_17pyo3_build_config(ptr %5, ptr nonnull align 8 %i.p, ptr nonnull align 8 %i.o) #23
          to label %.noexc unwind label %.loopexit ; 3 uses

.noexc:                                           ; preds = %.preheader
  %i.r = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -24 ; 2 uses
  %..i = select i1 %i.q, ptr %i.o, ptr %i.p
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %..i, i64 24, i1 false)
  %i.s = xor i1 %i.q, true
  %i.t = zext i1 %i.s to i64
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %i.t ; 3 uses
  store ptr %i.u, ptr %i.l, align 8
  %i.v = zext i1 %i.q to i64
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %i.v ; 3 uses
  store ptr %i.w, ptr %i.k, align 8
  %i.x = icmp eq ptr %i.u, %0
  %i.y = icmp eq ptr %i.w, %2
  %or.cond.i = select i1 %i.x, i1 true, i1 %i.y
  br i1 %or.cond.i, label %_RINvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtCsG258MDvU3F_3std4path7PathBufE10merge_downNvYB1a_NtNtBb_3cmp10PartialOrd2ltECsiOEEQt9hBE2_17pyo3_build_config.exit, label %.preheader

.lr.ph.i:                                         ; preds = %.critedge, %.noexc18
  %i.z = phi ptr [ %i.af, %.noexc18 ], [ %2, %.critedge ]
  %.sroa.0.07.i = phi ptr [ %i.ah, %.noexc18 ], [ %i.g, %.critedge ] ; 3 uses
  %i.aa = invoke zeroext i1 @_RNvYNvYNtNtCsG258MDvU3F_3std4path7PathBufNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBH_3ops8function5FnMutTRB5_B1N_EE8call_mutCsiOEEQt9hBE2_17pyo3_build_config(ptr %5, ptr align 8 %.sroa.0.07.i, ptr align 8 %i.z) #23
          to label %.noexc18 unwind label %.loopexit.split-lp ; 3 uses

.noexc18:                                         ; preds = %.lr.ph.i
  %i.ab = xor i1 %i.aa, true
  %i.ac = load ptr, ptr %i.a, align 8             ; 2 uses
  %spec.select19 = select i1 %i.aa, ptr %.sroa.0.07.i, ptr %i.ac
  %i.ad = load ptr, ptr %i.l, align 8             ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, ptr noundef nonnull align 8 dereferenceable(24) %spec.select19, i64 24, i1 false)
  %i.ae = zext i1 %i.ab to i64
  %i.af = getelementptr inbounds nuw [24 x i8], ptr %i.ac, i64 %i.ae ; 3 uses
  store ptr %i.af, ptr %i.a, align 8
  %i.ag = zext i1 %i.aa to i64
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.07.i, i64 %i.ag ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  store ptr %i.ai, ptr %i.l, align 8
  %i.aj = load ptr, ptr %i.k, align 8
  %i.ak = icmp ne ptr %i.af, %i.aj
  %i.al = icmp ne ptr %i.ah, %i.h
  %or.cond.i17 = select i1 %i.ak, i1 %i.al, i1 false
  br i1 %or.cond.i17, label %.lr.ph.i, label %_RINvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtCsG258MDvU3F_3std4path7PathBufE10merge_downNvYB1a_NtNtBb_3cmp10PartialOrd2ltECsiOEEQt9hBE2_17pyo3_build_config.exit

.loopexit:                                        ; preds = %.preheader
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

.loopexit.split-lp:                               ; preds = %.lr.ph.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

bb.c:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6stable5merge10MergeStateNtNtCsG258MDvU3F_3std4path7PathBufEECsiOEEQt9hBE2_17pyo3_build_config(ptr nonnull align 8 %i.a) #26
          to label %bb.f unwind label %bb.e

_RINvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtCsG258MDvU3F_3std4path7PathBufE10merge_downNvYB1a_NtNtBb_3cmp10PartialOrd2ltECsiOEEQt9hBE2_17pyo3_build_config.exit: ; preds = %.noexc18, %.noexc
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6stable5merge10MergeStateNtNtCsG258MDvU3F_3std4path7PathBufEECsiOEEQt9hBE2_17pyo3_build_config(ptr nonnull align 8 %i.a)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %_RINvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtCsG258MDvU3F_3std4path7PathBufE10merge_downNvYB1a_NtNtBb_3cmp10PartialOrd2ltECsiOEEQt9hBE2_17pyo3_build_config.exit
  ret void

bb.e:                                             ; preds = %bb.c
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.f:                                             ; preds = %bb.c
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RINvXs0_NtNtCskKLDkoKarTP_4core4hash5implseNtB8_4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherECsiOEEQt9hBE2_17pyo3_build_config(ptr %0, i64 %1, ptr align 8 %2) unnamed_addr #2 {
bb.a:
  tail call void @_RNvXs2_NtNtCsG258MDvU3F_3std4hash6randomNtB5_13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher9write_strCsiOEEQt9hBE2_17pyo3_build_config(ptr align 8 %2, ptr %0, i64 %1) #23
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapIBO_INtNtB8_6filter6FilterINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IterNtNtCsiOEEQt9hBE2_17pyo3_build_config5impl_9BuildFlagEINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterReEENCINvMsj_B25_NtB25_10BuildFlags16from_interpreterNtNtCsG258MDvU3F_3std4path7PathBufE0ENCB3P_s_0ENCINvXs8_NtCsjqcU1oJFKXj_9hashbrown3setINtB5u_7HashSetB23_NtNtNtB4E_4hash6random11RandomStateEINtNtNtBa_6traits7collect6ExtendB23_E6extendBX_E0ENtNtB6W_8iterator8Iterator4folduNCINvNvB7F_8for_each4callTB23_uENCINvXs1i_NtB5w_3mapINtB8R_7HashMapB23_uB6h_EIB6S_B8A_E6extendBN_E0E0EB27_(ptr nofree readonly align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull align 8 dereferenceable(64) %0, i64 64, i1 false)
  call void @_RINvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB6_6FilterINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IterNtNtCsiOEEQt9hBE2_17pyo3_build_config5impl_9BuildFlagEINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterReEENCINvMsj_B1L_NtB1L_10BuildFlags16from_interpreterNtNtCsG258MDvU3F_3std4path7PathBufE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNtB8_3map8map_foldTRB1J_B3p_EB1J_uNCB3v_s_0NCIB5y_B1J_TB1J_uEuNCINvXs8_NtCsjqcU1oJFKXj_9hashbrown3setINtB6J_7HashSetB1J_NtNtNtB4k_4hash6random11RandomStateEINtNtB4V_7collect6ExtendB1J_E6extendINtB5A_3MapBQ_B68_EE0NCINvNvB4R_8for_each4callB6s_NCINvXs1i_NtB6L_3mapINtB9E_7HashMapB1J_uB7w_EIB87_B6s_E6extendIB8H_B8G_B6A_EE0E0E0E0EB1N_(ptr nonnull align 8 %i.a, ptr align 8 %1) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtB8_6cloned6ClonedINtNtB8_6filter6FilterINtNtNtBc_5slice4iter4IterNtNtCsiOEEQt9hBE2_17pyo3_build_config5impl_9BuildFlagENCNvMsj_B27_NtB27_10BuildFlags18from_sysconfigdata0EENCINvXs8_NtCsjqcU1oJFKXj_9hashbrown3setINtB3X_7HashSetB25_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtNtBa_6traits7collect6ExtendB25_E6extendBX_E0ENtNtB5C_8iterator8Iterator4folduNCINvNvB6l_8for_each4callTB25_uENCINvXs1i_NtB3Z_3mapINtB7x_7HashMapB25_uB4K_EIB5y_B7g_E6extendBN_E0E0EB29_(ptr nofree readonly align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  call void @_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6clonedINtB5_6ClonedINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtCsiOEEQt9hBE2_17pyo3_build_config5impl_9BuildFlagENCNvMsj_B1Q_NtB1Q_10BuildFlags18from_sysconfigdata0EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldB1O_TB1O_uEuNCINvXs8_NtCsjqcU1oJFKXj_9hashbrown3setINtB4T_7HashSetB1O_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtB3B_7collect6ExtendB1O_E6extendBP_E0NCINvNvB3x_8for_each4callB4C_NCINvXs1i_NtB4V_3mapINtB7L_7HashMapB1O_uB5G_EIB6u_B4C_E6extendINtB4g_3MapBP_B4K_EE0E0E0EB1S_(ptr nonnull align 8 %i.a, ptr align 8 %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtB8_6filter6FilterINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IterNtNtCsiOEEQt9hBE2_17pyo3_build_config5impl_9BuildFlagEINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterReEENCINvMsj_B21_NtB21_10BuildFlags16from_interpreterNtNtCsG258MDvU3F_3std4path7PathBufE0ENCB3L_s_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvB6_8map_foldB1Z_TB1Z_uEuNCINvXs8_NtCsjqcU1oJFKXj_9hashbrown3setINtB6x_7HashSetB1Z_NtNtNtB4A_4hash6random11RandomStateEINtNtB5l_7collect6ExtendB1Z_E6extendBN_E0NCINvNvB5h_8for_each4callB6g_NCINvXs1i_NtB6z_3mapINtB9c_7HashMapB1Z_uB7k_EIB7V_B6g_E6extendIBO_BN_B6o_EE0E0E0EB23_(ptr nofree readonly align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull align 8 dereferenceable(64) %0, i64 64, i1 false)
  call void @_RINvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB6_6FilterINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IterNtNtCsiOEEQt9hBE2_17pyo3_build_config5impl_9BuildFlagEINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterReEENCINvMsj_B1L_NtB1L_10BuildFlags16from_interpreterNtNtCsG258MDvU3F_3std4path7PathBufE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNtB8_3map8map_foldTRB1J_B3p_EB1J_uNCB3v_s_0NCIB5y_B1J_TB1J_uEuNCINvXs8_NtCsjqcU1oJFKXj_9hashbrown3setINtB6J_7HashSetB1J_NtNtNtB4k_4hash6random11RandomStateEINtNtB4V_7collect6ExtendB1J_E6extendINtB5A_3MapBQ_B68_EE0NCINvNvB4R_8for_each4callB6s_NCINvXs1i_NtB6L_3mapINtB9E_7HashMapB1J_uB7w_EIB87_B6s_E6extendIB8H_B8G_B6A_EE0E0E0E0EB1N_(ptr nonnull align 8 %i.a, ptr align 8 %1) #23
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterhENCNvNtCsexYYUdYSQU6_5alloc3str13replace_ascii0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2a_8for_each4callhNCINvMsk_NtB1v_3vecINtB3n_3VechE14extend_trustedBN_E0E0ECsiOEEQt9hBE2_17pyo3_build_config(ptr nofree readonly align 8 captures(none) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 3 uses
  %i.b = load ptr, ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.g = load <2 x ptr>, ptr %i.e, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  store <2 x ptr> %i.g, ptr %i.f, align 8
  call void @_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCsexYYUdYSQU6_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsk_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECsiOEEQt9hBE2_17pyo3_build_config(ptr %i.b, ptr %i.d, ptr nonnull align 8 %i.a) #23
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RINvXs3_NtNtCskKLDkoKarTP_4core4hash5implsReNtB8_4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherECsiOEEQt9hBE2_17pyo3_build_config(ptr nofree readonly align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8
  tail call void @_RNvXs2_NtNtCsG258MDvU3F_3std4hash6randomNtB5_13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher9write_strCsiOEEQt9hBE2_17pyo3_build_config(ptr align 8 %1, ptr %i.a, i64 %i.c) #23
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RINvXsg_NtNtCskKLDkoKarTP_4core4hash5implsiNtB8_4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherECsiOEEQt9hBE2_17pyo3_build_config(ptr nofree readonly align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #2 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  tail call void @_RNvYNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher11write_isizeCsiOEEQt9hBE2_17pyo3_build_config(ptr align 8 %1, i64 %i.a) #23
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapIB4_INtNtB8_6filter6FilterINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IterNtNtCsiOEEQt9hBE2_17pyo3_build_config5impl_9BuildFlagEINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterReEENCINvMsj_B1Z_NtB1Z_10BuildFlags16from_interpreterNtNtCsG258MDvU3F_3std4path7PathBufE0ENCB3J_s_0ENCINvXs8_NtCsjqcU1oJFKXj_9hashbrown3setINtB5o_7HashSetB1X_NtNtNtB4y_4hash6random11RandomStateEINtNtNtBa_6traits7collect6ExtendB1X_E6extendBR_E0ENtNtB6Q_8iterator8Iterator8for_eachNCINvXs1i_NtB5q_3mapINtB8i_7HashMapB1X_uB6b_EIB6M_TB1X_uEE6extendB3_E0EB21_(ptr nofree readonly align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #2 {
bb.a:
end_hunk_0
begin_hunk_1_@_RNvMs0_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsE5resetCsiOEEQt9hBE2_17pyo3_build_config:bb.a
  %i.k = shufflevector <2 x i64> %i.j, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.l = xor <2 x i64> %i.k, <i64 7237128888997146477, i64 8387220255154660723>
  store <2 x i64> %i.l, ptr %i.f, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 0, ptr %i.m, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMs1P_NtNtCskKLDkoKarTP_4core9core_arch3x86INtNtB8_4simd4SimdaKj10_E8as_m128iCsiOEEQt9hBE2_17pyo3_build_config(ptr nofree writeonly sret([16 x i8]) align 16 captures(none) initializes((0, 16)) %0, ptr nofree readonly align 16 captures(none) %1) unnamed_addr #3 {
bb.a:
  %i.a = load <16 x i8>, ptr %1, align 16
  store <16 x i8> %i.a, ptr %0, align 16
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden zeroext i1 @_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interruptedCsiOEEQt9hBE2_17pyo3_build_config(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = load ptr, ptr %0, align 8
  call void @_RINvNtNtNtCskKLDkoKarTP_4core2io5error4repr11decode_reprRNtB4_6CustomNCNvMs0_B2_NtB2_4Repr4data0ECsiOEEQt9hBE2_17pyo3_build_config(ptr nonnull sret([16 x i8]) align 8 %i.a, ptr %i.b) #23
  %i.c = load i8, ptr %i.a, align 8
  switch i8 %i.c, label %bb.b [
    i8 0, label %bb.c
    i8 1, label %bb.d
    i8 2, label %bb.e
    i8 3, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.e = load i32, ptr %i.d, align 4
  %i.f = call align 8 ptr @_RNvNtNtNtCskKLDkoKarTP_4core2io5error12os_functions16get_os_functions()
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = call zeroext i1 %i.h(i32 %i.e)
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.k = load i8, ptr %i.j, align 1
  %i.l = icmp eq i8 %i.k, 35
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load i8, ptr %i.o, align 8
  %i.q = icmp eq i8 %i.p, 35
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.u = load i8, ptr %i.t, align 8
  %i.v = icmp eq i8 %i.u, 35
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.i, %bb.c ], [ %i.l, %bb.d ], [ %i.q, %bb.e ], [ %i.v, %bb.f ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define { ptr, i64 } @_RNvMs2_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxShE16new_uninit_sliceCsiOEEQt9hBE2_17pyo3_build_config(i64 %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9B9e4vRv5d_5gimli(ptr nonnull sret([24 x i8]) align 8 %i.a, i64 %0, i1 zeroext false, i64 1, i64 1)
  %i.b = load i64, ptr %i.a, align 8
  %i.c = trunc nuw i64 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.g = load i64, ptr %i.f, align 8
  call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 %i.e, i64 %i.g) #28
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = insertvalue { ptr, i64 } poison, ptr %i.i, 0
  %i.k = insertvalue { ptr, i64 } %i.j, i64 %0, 1
  ret { ptr, i64 } %i.k
}

; Function Attrs: nonlazybind uwtable
define nonnull align 8 ptr @_RNvMs_NtCsexYYUdYSQU6_5alloc5boxedINtB4_3BoxNtNtB6_6string6StringE13new_uninit_inCsiOEEQt9hBE2_17pyo3_build_config() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = call { ptr, i64 } @_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocateCsiOEEQt9hBE2_17pyo3_build_config(ptr nonnull %i.a, i64 8, i64 24) #23
  %i.c = extractvalue { ptr, i64 } %i.b, 0        ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 8, i64 24) #28
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.c
}

; Function Attrs: nonlazybind uwtable
define align 8 ptr @_RNvMs_NtCsexYYUdYSQU6_5alloc5boxedINtB4_3BoxNtNtB6_6string6StringE17try_new_uninit_inCsiOEEQt9hBE2_17pyo3_build_config() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = call { ptr, i64 } @_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocateCsiOEEQt9hBE2_17pyo3_build_config(ptr nonnull %i.a, i64 8, i64 24) #23
  %i.c = extractvalue { ptr, i64 } %i.b, 0
  ret ptr %i.c
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_RNvMsb_NtNtCskKLDkoKarTP_4core9core_arch4simdINtB5_4SimdaKj10_E5splatCsiOEEQt9hBE2_17pyo3_build_config(ptr nofree writeonly sret([16 x i8]) align 16 captures(none) initializes((0, 16)) %0, i8 %1) unnamed_addr #4 {
bb.a:
  %i.a = insertelement <16 x i8> poison, i8 %1, i64 0
  %i.b = shufflevector <16 x i8> %i.a, <16 x i8> poison, <16 x i32> zeroinitializer
  store <16 x i8> %i.b, ptr %0, align 16
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden range(i8 -1, 44) i8 @_RNvMsf_NtNtCskKLDkoKarTP_4core2io5errorNtB5_9ErrorKind9from_primCsiOEEQt9hBE2_17pyo3_build_config(i32 %0) unnamed_addr #5 {
switch.lookup:
  %i.a = icmp ult i32 %0, 44
  %switch.idx.cast = trunc i32 %0 to i8
  %spec.select = select i1 %i.a, i8 %switch.idx.cast, i8 -1
  ret i8 %spec.select
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvMsj_NtNtCsG258MDvU3F_3std3ffi6os_strNtB5_5OsStr15to_string_lossyCsiOEEQt9hBE2_17pyo3_build_config(ptr sret([24 x i8]) align 8 %0, ptr %1, i64 %2) unnamed_addr #2 {
bb.a:
  tail call void @_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String15from_utf8_lossy(ptr sret([24 x i8]) align 8 %0, ptr %1, i64 %2)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMsj_NtNtCsG258MDvU3F_3std3ffi6os_strNtB5_5OsStr6to_strCsiOEEQt9hBE2_17pyo3_build_config(ptr %0, i64 %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  call void @_RNvNtNtCskKLDkoKarTP_4core3str8converts9from_utf8(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr %0, i64 %1)
  %i.b = load i64, ptr %i.a, align 8
  %i.c = trunc nuw i64 %i.b to i1                 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.g = load i64, ptr %i.f, align 8
  %.sroa.3.0 = select i1 %i.c, i64 undef, i64 %i.g
  %.sroa.0.0 = select i1 %i.c, ptr null, ptr %i.e
  %i.h = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %i.i = insertvalue { ptr, i64 } %i.h, i64 %.sroa.3.0, 1
  ret { ptr, i64 } %i.i
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMsz_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_8IntoIterNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringINtNtCskKLDkoKarTP_4core6option6OptionB17_EE10dying_nextCsiOEEQt9hBE2_17pyo3_build_config(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 8)) %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 72
  tail call void @_RNvXs5_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsiOEEQt9hBE2_17pyo3_build_config(ptr nonnull %i.e) #23
  tail call void @_RINvMsb_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringINtNtCskKLDkoKarTP_4core6option6OptionB1K_EE16deallocating_endNtNtBc_5alloc6GlobalECsiOEEQt9hBE2_17pyo3_build_config(ptr nonnull align 8 %1) #23
  store ptr null, ptr %0, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = add i64 %i.c, -1
  store i64 %i.f, ptr %i.b, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 72
  tail call void @_RNvXs5_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsiOEEQt9hBE2_17pyo3_build_config(ptr nonnull %i.g) #23
  call void @_RINvMsb_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringINtNtCskKLDkoKarTP_4core6option6OptionB1K_EE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECsiOEEQt9hBE2_17pyo3_build_config(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr nonnull align 8 %1) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvNtCsexYYUdYSQU6_5alloc3fmt6formatCsiOEEQt9hBE2_17pyo3_build_config(ptr sret([24 x i8]) align 8 %0, ptr %1, ptr %2) unnamed_addr #2 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %2, ptr %i.b, align 8
  %i.c = ptrtoint ptr %2 to i64                   ; 2 uses
  %3 = trunc i64 %i.c to i1
  %i.d = lshr i64 %i.c, 1
  %.sroa.0.0 = select i1 %3, ptr %1, ptr null
  call void @_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs5GPH1eSwN50_14target_lexicon(ptr sret([24 x i8]) align 8 %0, ptr %.sroa.0.0, i64 %i.d, ptr nonnull align 8 %i.a) #23
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden nonnull ptr @_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninitCsiOEEQt9hBE2_17pyo3_build_config(i64 %0, i64 %1) unnamed_addr #2 {
bb.a:
  %i.a = tail call { ptr, i64 } @_RNvMs0_NtCsexYYUdYSQU6_5alloc5allocNtB5_6Global18alloc_impl_runtimeCsiOEEQt9hBE2_17pyo3_build_config(i64 %0, i64 %1, i1 zeroext false) #23
  %i.b = extractvalue { ptr, i64 } %i.a, 0        ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 %0, i64 %1) #28
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define { ptr, i64 } @_RNvXNtCskKLDkoKarTP_4core7convertRRReINtB2_5AsRefNtNtNtCsG258MDvU3F_3std3ffi6os_str5OsStrE6as_refCsiOEEQt9hBE2_17pyo3_build_config(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load i64, ptr %i.d, align 8
  %i.f = insertvalue { ptr, i64 } poison, ptr %i.c, 0
  %i.g = insertvalue { ptr, i64 } %i.f, i64 %i.e, 1
  ret { ptr, i64 } %i.g
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define { ptr, i64 } @_RNvXNtCskKLDkoKarTP_4core7convertRReINtB2_5AsRefNtNtNtCsG258MDvU3F_3std3ffi6os_str5OsStrE6as_refCsiOEEQt9hBE2_17pyo3_build_config(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load i64, ptr %i.c, align 8
  %i.e = insertvalue { ptr, i64 } poison, ptr %i.b, 0
  %i.f = insertvalue { ptr, i64 } %i.e, i64 %i.d, 1
  ret { ptr, i64 } %i.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define { ptr, i64 } @_RNvXNtCskKLDkoKarTP_4core7convertReINtB2_5AsRefNtNtCsG258MDvU3F_3std4path4PathE6as_refCsiOEEQt9hBE2_17pyo3_build_config(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = tail call { ptr, i64 } @_RNvXs1p_NtCsG258MDvU3F_3std4patheINtNtCskKLDkoKarTP_4core7convert5AsRefNtB6_4PathE6as_refCsiOEEQt9hBE2_17pyo3_build_config(ptr %i.a, i64 %i.c) #23
  ret { ptr, i64 } %i.d
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define { ptr, i64 } @_RNvXNtCskKLDkoKarTP_4core7convertReINtB2_5AsRefNtNtNtCsG258MDvU3F_3std3ffi6os_str5OsStrE6as_refCsiOEEQt9hBE2_17pyo3_build_config(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = insertvalue { ptr, i64 } poison, ptr %i.a, 0
  %i.e = insertvalue { ptr, i64 } %i.d, i64 %i.c, 1
  ret { ptr, i64 } %i.e
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define { ptr, i64 } @_RNvXNtCskKLDkoKarTP_4core7convertReINtB2_5AsRefeE6as_refCsiOEEQt9hBE2_17pyo3_build_config(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = insertvalue { ptr, i64 } poison, ptr %i.a, 0
  %i.e = insertvalue { ptr, i64 } %i.d, i64 %i.c, 1
  ret { ptr, i64 } %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define noalias noundef ptr @_RNvXNtNtCsexYYUdYSQU6_5alloc2io5implsQRShNtNtB4_4read4Read8read_bufCsiOEEQt9hBE2_17pyo3_build_config(ptr nofree readonly align 8 captures(none) %0, ptr %1, ptr %2) unnamed_addr #2 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = load ptr, ptr %0, align 8                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %1, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %2, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.h = load i64, ptr %i.g, align 8
  %i.i = sub i64 %i.f, %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.k = load i64, ptr %i.j, align 8
  %i.l = tail call i64 @_RNvYjNtNtCskKLDkoKarTP_4core3cmp3Ord3minCsiOEEQt9hBE2_17pyo3_build_config(i64 %i.i, i64 %i.k) #23
  %i.m = load ptr, ptr %i.c, align 8
  %i.n = load i64, ptr %i.j, align 8
  call void @_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCsiOEEQt9hBE2_17pyo3_build_config(ptr nonnull sret([32 x i8]) align 8 %i.a, ptr %i.m, i64 %i.n, i64 %i.l, ptr nonnull align 8 @23) #23
  %i.o = load ptr, ptr %i.a, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.q = load i64, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.u = load i64, ptr %i.t, align 8
  call void @_RNvMs7_NtNtCskKLDkoKarTP_4core2io12borrowed_bufINtB5_14BorrowedCursorhE6appendCsiOEEQt9hBE2_17pyo3_build_config(ptr nonnull align 8 %i.b, ptr %i.o, i64 %i.q) #23
  store ptr %i.s, ptr %i.c, align 8, !captures !4
  store i64 %i.u, ptr %i.j, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr null
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef i8 @_RNvXNtNtCskKLDkoKarTP_4core3ops12control_flowINtB2_11ControlFlowIBI_uNtNtB6_3cmp8OrderingEENtNtB4_9try_trait3Try11from_outputCsiOEEQt9hBE2_17pyo3_build_config() unnamed_addr #5 {
bb.a:
  ret i8 2
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define i8 @_RNvXNtNtCskKLDkoKarTP_4core3ops12control_flowINtB2_11ControlFlowIBI_uNtNtB6_3cmp8OrderingEENtNtB4_9try_trait3Try6branchCsiOEEQt9hBE2_17pyo3_build_config(i8 returned %0) unnamed_addr #5 {
bb.a:
  ret i8 %0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { i1, i8 } @_RNvXNtNtCskKLDkoKarTP_4core3ops12control_flowINtB2_11ControlFlowhENtNtB4_9try_trait3Try11from_outputCsiOEEQt9hBE2_17pyo3_build_config() unnamed_addr #5 {
bb.a:
  ret { i1, i8 } { i1 false, i8 undef }
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { i1, i8 } @_RNvXNtNtCskKLDkoKarTP_4core3ops12control_flowINtB2_11ControlFlowhENtNtB4_9try_trait3Try6branchCsiOEEQt9hBE2_17pyo3_build_config(i1 zeroext %0, i8 %1) unnamed_addr #5 {
bb.a:
  %. = select i1 %0, i8 %1, i8 undef
  %i.a = insertvalue { i1, i8 } poison, i1 %0, 0
  %i.b = insertvalue { i1, i8 } %i.a, i8 %., 1
  ret { i1, i8 } %i.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { i64, i64 } @_RNvXNtNtCskKLDkoKarTP_4core3ops12control_flowINtB2_11ControlFlowjENtNtB4_9try_trait3Try11from_outputCsiOEEQt9hBE2_17pyo3_build_config() unnamed_addr #5 {
bb.a:
  ret { i64, i64 } { i64 0, i64 undef }
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { i64, i64 } @_RNvXNtNtCskKLDkoKarTP_4core3ops12control_flowINtB2_11ControlFlowjENtNtB4_9try_trait3Try6branchCsiOEEQt9hBE2_17pyo3_build_config(i64 %0, i64 %1) unnamed_addr #5 {
bb.a:
  %i.a = trunc nuw i64 %0 to i1
  %.3 = select i1 %i.a, i64 %1, i64 undef
  %i.b = insertvalue { i64, i64 } poison, i64 %0, 0
  %i.c = insertvalue { i64, i64 } %i.b, i64 %.3, 1
  ret { i64, i64 } %i.c
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringINtNtCskKLDkoKarTP_4core6option6OptionB14_EENtNtNtB1Q_3ops4drop4Drop4dropCsiOEEQt9hBE2_17pyo3_build_config(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 10 uses
  %.sroa.07.0.copyload = load ptr, ptr %0, align 8 ; 3 uses
  %.not = icmp eq ptr %.sroa.07.0.copyload, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.39.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.39.0.copyload = load i64, ptr %.sroa.39.0..sroa_idx, align 8
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.28.0.copyload = load i64, ptr %.sroa.28.0..sroa_idx, align 8 ; 2 uses
  %.sroa.215.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %.sroa.215.0..sroa_idx, align 8
  %.sroa.215.sroa.2.0..sroa.215.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %.sroa.07.0.copyload, ptr %.sroa.215.sroa.2.0..sroa.215.0..sroa_idx.sroa_idx, align 8
  %.sroa.215.sroa.3.0..sroa.215.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %.sroa.28.0.copyload, ptr %.sroa.215.sroa.3.0..sroa.215.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr null, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.4.sroa.2.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %.sroa.07.0.copyload, ptr %.sroa.4.sroa.2.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i64 %.sroa.28.0.copyload, ptr %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink31 = phi i64 [ 1, %bb.b ], [ 0, %bb.a ]   ; 2 uses
  %.sroa.39.0.copyload.sink = phi i64 [ %.sroa.39.0.copyload, %bb.b ], [ 0, %bb.a ]
  store i64 %.sink31, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 %.sink31, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i64 %.sroa.39.0.copyload.sink, ptr %i.c, align 8
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map8IntoIterNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringINtNtB4_6option6OptionB1A_EEECsiOEEQt9hBE2_17pyo3_build_config(ptr nonnull align 8 %i.a)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define void @_RNvXNtNtNtCskKLDkoKarTP_4core4iter6traits7collectINtNtNtB6_7sources5empty5EmptyTReB1g_EENtB2_12IntoIterator9into_iterCsiOEEQt9hBE2_17pyo3_build_config() unnamed_addr #5 {
bb.a:
  ret void
end_hunk_1
