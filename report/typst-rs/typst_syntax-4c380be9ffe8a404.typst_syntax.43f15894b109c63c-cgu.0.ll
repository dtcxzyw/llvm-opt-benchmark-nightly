Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_syntax-4c380be9ffe8a404.typst_syntax.43f15894b109c63c-cgu.0?download=true
inline.NumInlined: 3813
inline.NumDeleted: 1552
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_RNvMsr_NtCs3oUPovFnLWP_4core3numx27from_ascii_bytes_radix_impl:bb.a

bb.o:                                             ; preds = %bb.m
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 3, ptr %i.ap, align 1
  br label %bb.c

bb.p:                                             ; preds = %bb.l
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 3, ptr %i.aq, align 1
  br label %bb.c

.lr.ph151.split:                                  ; preds = %.lr.ph151, %bb.q
  %.sroa.0.2150 = phi ptr [ %i.bb, %bb.q ], [ %i.g, %.lr.ph151 ] ; 2 uses
  %.sroa.26.2149 = phi i64 [ %i.ba, %bb.q ], [ %i.h, %.lr.ph151 ]
  %.sroa.084.2148 = phi i64 [ %i.bd, %bb.q ], [ 0, %.lr.ph151 ]
  %i.ar = load i8, ptr %.sroa.0.2150, align 1, !noundef !19 ; 2 uses
  %i.as = zext i8 %i.ar to i32                    ; 2 uses
  %i.at = icmp ugt i8 %i.ar, 57
  %i.au = add nsw i32 %i.as, -65
  %i.av = and i32 %i.au, -33
  %i.aw = add nuw nsw i32 %i.av, 10
  %i.ax = add nsw i32 %i.as, -48
  %spec.select = select i1 %i.at, i32 %i.aw, i32 %i.ax ; 2 uses
  %i.ay = icmp ult i32 %spec.select, %3
  br i1 %i.ay, label %bb.q, label %.split.us

bb.q:                                             ; preds = %.lr.ph151.split
  %i.az = mul i64 %.sroa.084.2148, %i.m
  %i.ba = add nsw i64 %.sroa.26.2149, -1          ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.0.2150, i64 1
  %i.bc = zext nneg i32 %spec.select to i64
  %i.bd = sub i64 %i.az, %i.bc                    ; 2 uses
  %.not103 = icmp eq i64 %i.ba, 0
  br i1 %.not103, label %.loopexit, label %.lr.ph151.split

.split.us:                                        ; preds = %.lr.ph151.split.us, %.lr.ph151.split
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.be, align 1
  br label %bb.c

bb.r:                                             ; preds = %bb.g, %bb.f
  %.sroa.26.0 = phi i64 [ %i.f, %bb.g ], [ %2, %bb.f ] ; 5 uses
  %.sroa.0.0 = phi ptr [ %i.e, %bb.g ], [ %1, %bb.f ] ; 3 uses
  %i.bf = icmp samesign ult i64 %.sroa.26.0, 16
  br i1 %i.bf, label %.preheader, label %.preheader121

.preheader121:                                    ; preds = %bb.r
  %i.bg = zext nneg i32 %3 to i64
  %i.bh = icmp samesign ugt i32 %3, 10
  br label %bb.t

.preheader:                                       ; preds = %bb.r
  %.not105156 = icmp eq i64 %.sroa.26.0, 0
  br i1 %.not105156, label %.loopexit, label %.lr.ph160

.lr.ph160:                                        ; preds = %.preheader
  %i.bi = icmp samesign ugt i32 %3, 10
  %i.bj = zext nneg i32 %3 to i64                 ; 2 uses
  br i1 %i.bi, label %.lr.ph160.split, label %.lr.ph160.split.us

.lr.ph160.split.us:                               ; preds = %.lr.ph160, %bb.s
  %.sroa.0.4159.us = phi ptr [ %i.bq, %bb.s ], [ %.sroa.0.0, %.lr.ph160 ] ; 2 uses
  %.sroa.26.4158.us = phi i64 [ %i.bp, %bb.s ], [ %.sroa.26.0, %.lr.ph160 ]
  %.sroa.084.4157.us = phi i64 [ %i.bs, %bb.s ], [ 0, %.lr.ph160 ]
  %i.bk = load i8, ptr %.sroa.0.4159.us, align 1, !noundef !19
  %i.bl = zext i8 %i.bk to i32
  %i.bm = add nsw i32 %i.bl, -48                  ; 2 uses
  %i.bn = icmp ult i32 %i.bm, %3
  br i1 %i.bn, label %bb.s, label %.split165.us

bb.s:                                             ; preds = %.lr.ph160.split.us
  %i.bo = mul i64 %.sroa.084.4157.us, %i.bj
  %i.bp = add nsw i64 %.sroa.26.4158.us, -1       ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.0.4159.us, i64 1
  %i.br = zext nneg i32 %i.bm to i64
  %i.bs = add i64 %i.bo, %i.br                    ; 2 uses
  %.not105.us = icmp eq i64 %i.bp, 0
  br i1 %.not105.us, label %.loopexit, label %.lr.ph160.split.us

bb.t:                                             ; preds = %.preheader121, %bb.x
  %.sroa.0.3155 = phi ptr [ %.sroa.0.0, %.preheader121 ], [ %i.bt, %bb.x ] ; 2 uses
  %.sroa.26.3154 = phi i64 [ %.sroa.26.0, %.preheader121 ], [ %i.bu, %bb.x ]
  %.sroa.084.3153 = phi i64 [ 0, %.preheader121 ], [ %i.ck, %bb.x ]
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.0.3155, i64 1
  %i.bu = add nsw i64 %.sroa.26.3154, -1          ; 2 uses
  %i.bv = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3153, i64 %i.bg) ; 2 uses
  %i.bw = extractvalue { i64, i1 } %i.bv, 0
  %i.bx = extractvalue { i64, i1 } %i.bv, 1
  %i.by = load i8, ptr %.sroa.0.3155, align 1, !noundef !19 ; 2 uses
  %i.bz = zext i8 %i.by to i32                    ; 2 uses
  %i.ca = icmp ugt i8 %i.by, 57
  %or.cond1.i115 = and i1 %i.bh, %i.ca
  %i.cb = add nsw i32 %i.bz, -65
  %i.cc = and i32 %i.cb, -33
  %i.cd = add nuw nsw i32 %i.cc, 10
  %i.ce = add nsw i32 %i.bz, -48
  %.sroa.02.0.i116 = select i1 %or.cond1.i115, i32 %i.cd, i32 %i.ce ; 2 uses
  %i.cf = icmp ult i32 %.sroa.02.0.i116, %3       ; 2 uses
  br i1 %i.bx, label %bb.v, label %bb.u, !prof !23

bb.u:                                             ; preds = %bb.t
  br i1 %i.cf, label %bb.w, label %.loopexit123

bb.v:                                             ; preds = %bb.t
  br i1 %i.cf, label %bb.z, label %.loopexit123

bb.w:                                             ; preds = %bb.u
  %i.cg = zext nneg i32 %.sroa.02.0.i116 to i64
  %i.ch = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.bw, i64 %i.cg) ; 2 uses
  %i.ci = extractvalue { i64, i1 } %i.ch, 1
  br i1 %i.ci, label %bb.y, label %bb.x, !prof !23

.loopexit123:                                     ; preds = %bb.u, %bb.v
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.cj, align 1
  br label %bb.c

bb.x:                                             ; preds = %bb.w
  %i.ck = extractvalue { i64, i1 } %i.ch, 0       ; 2 uses
  %.not104 = icmp eq i64 %i.bu, 0
  br i1 %.not104, label %.loopexit, label %bb.t

bb.y:                                             ; preds = %bb.w
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 2, ptr %i.cl, align 1
  br label %bb.c

bb.z:                                             ; preds = %bb.v
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 2, ptr %i.cm, align 1
  br label %bb.c

.lr.ph160.split:                                  ; preds = %.lr.ph160, %bb.aa
  %.sroa.0.4159 = phi ptr [ %i.cx, %bb.aa ], [ %.sroa.0.0, %.lr.ph160 ] ; 2 uses
  %.sroa.26.4158 = phi i64 [ %i.cw, %bb.aa ], [ %.sroa.26.0, %.lr.ph160 ]
  %.sroa.084.4157 = phi i64 [ %i.cz, %bb.aa ], [ 0, %.lr.ph160 ]
  %i.cn = load i8, ptr %.sroa.0.4159, align 1, !noundef !19 ; 2 uses
  %i.co = zext i8 %i.cn to i32                    ; 2 uses
  %i.cp = icmp ugt i8 %i.cn, 57
  %i.cq = add nsw i32 %i.co, -65
  %i.cr = and i32 %i.cq, -33
  %i.cs = add nuw nsw i32 %i.cr, 10
  %i.ct = add nsw i32 %i.co, -48
  %spec.select167 = select i1 %i.cp, i32 %i.cs, i32 %i.ct ; 2 uses
  %i.cu = icmp ult i32 %spec.select167, %3
  br i1 %i.cu, label %bb.aa, label %.split165.us

bb.aa:                                            ; preds = %.lr.ph160.split
  %i.cv = mul i64 %.sroa.084.4157, %i.bj
  %i.cw = add nsw i64 %.sroa.26.4158, -1          ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.0.4159, i64 1
  %i.cy = zext nneg i32 %spec.select167 to i64
  %i.cz = add i64 %i.cv, %i.cy                    ; 2 uses
  %.not105 = icmp eq i64 %i.cw, 0
  br i1 %.not105, label %.loopexit, label %.lr.ph160.split

.split165.us:                                     ; preds = %.lr.ph160.split.us, %.lr.ph160.split
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.da, align 1
  br label %bb.c
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef range(i32 0, 1114112) i32 @_RNvMsr_NtCs5PEMdK7bMAG_12typst_syntax3astNtB5_13MathShorthand3get(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #19 personality ptr @rust_eh_personality {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.a
  %.sroa.02.0 = phi ptr [ %0, %bb.a ], [ %i.h, %bb.e ] ; 4 uses
  %i.a = load i8, ptr %.sroa.02.0, align 8, !range !30, !noundef !19
  switch i8 %i.a, label %default.unreachable28 [
    i8 0, label %bb.c
    i8 1, label %.lr.ph.i
    i8 2, label %bb.d
    i8 3, label %bb.e
  ]

default.unreachable28:                            ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 8
  br label %.lr.ph.i

bb.d:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !19, !noundef !19
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  br label %.lr.ph.i

bb.e:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !19, !noundef !19
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  br label %bb.b

.lr.ph.i:                                         ; preds = %bb.b, %bb.c, %bb.d
  %.sroa.0.0 = phi ptr [ %i.b, %bb.c ], [ %i.e, %bb.d ], [ @_RNvNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB6_10SyntaxNode9leaf_text5EMPTY, %bb.b ] ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 15
  %i.j = load i8, ptr %i.i, align 1, !alias.scope !7324, !noalias !7325, !noundef !19 ; 2 uses
  %.not.i.i.i = icmp sgt i8 %i.j, -1
  %i.k = and i8 %i.j, 127
  %i.l = zext nneg i8 %i.k to i64                 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 8
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !7324, !noalias !7325 ; 2 uses
  br i1 %.not.i.i.i, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i, %_RNCNvMsr_NtCs5PEMdK7bMAG_12typst_syntax3astNtB7_13MathShorthand3get0B9_.exit.thread.us.i
  %.idx10 = phi i64 [ %.add11, %_RNCNvMsr_NtCs5PEMdK7bMAG_12typst_syntax3astNtB7_13MathShorthand3get0B9_.exit.thread.us.i ], [ 0, %.lr.ph.i ] ; 3 uses
  %.ptr12 = getelementptr inbounds nuw i8, ptr @459, i64 %.idx10 ; 2 uses
  %.add11 = add nuw nsw i64 %.idx10, 24           ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.ptr12, i64 8
  %i.p = load i64, ptr %i.o, align 8, !noalias !7325, !noundef !19
  %i.q = icmp eq i64 %i.p, %i.n
  br i1 %i.q, label %_RNCNvMsr_NtCs5PEMdK7bMAG_12typst_syntax3astNtB7_13MathShorthand3get0B9_.exit.us.i, label %_RNCNvMsr_NtCs5PEMdK7bMAG_12typst_syntax3astNtB7_13MathShorthand3get0B9_.exit.thread.us.i

_RNCNvMsr_NtCs5PEMdK7bMAG_12typst_syntax3astNtB7_13MathShorthand3get0B9_.exit.us.i: ; preds = %.lr.ph.split.us.i
  %i.r = load ptr, ptr %.sroa.0.0, align 8, !alias.scope !7324, !noalias !7325, !nonnull !19
  %i.s = load ptr, ptr %.ptr12, align 8, !noalias !7325, !nonnull !19, !noundef !19
  %bcmp.i.us.i = tail call i32 @bcmp(ptr nonnull %i.s, ptr nonnull %i.r, i64 %i.n), !noalias !7325
  %i.t = icmp eq i32 %bcmp.i.us.i, 0
  br i1 %i.t, label %.loopexit, label %_RNCNvMsr_NtCs5PEMdK7bMAG_12typst_syntax3astNtB7_13MathShorthand3get0B9_.exit.thread.us.i

_RNCNvMsr_NtCs5PEMdK7bMAG_12typst_syntax3astNtB7_13MathShorthand3get0B9_.exit.thread.us.i: ; preds = %_RNCNvMsr_NtCs5PEMdK7bMAG_12typst_syntax3astNtB7_13MathShorthand3get0B9_.exit.us.i, %.lr.ph.split.us.i
  %i.u = icmp eq i64 %.add11, 912
  br i1 %i.u, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRTRecEE11map_or_elsecNvYcNtNtB5_7default7Default7defaultNCNvMsr_NtCs5PEMdK7bMAG_12typst_syntax3astNtB1K_13MathShorthand3gets_0EB1M_.exit, label %.lr.ph.split.us.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %_RNCNvMsr_NtCs5PEMdK7bMAG_12typst_syntax3astNtB7_13MathShorthand3get0B9_.exit.thread.i
  %.idx = phi i64 [ %.add, %_RNCNvMsr_NtCs5PEMdK7bMAG_12typst_syntax3astNtB7_13MathShorthand3get0B9_.exit.thread.i ], [ 0, %.lr.ph.i ] ; 3 uses
  %.ptr = getelementptr inbounds nuw i8, ptr @459, i64 %.idx ; 2 uses
  %.add = add nuw nsw i64 %.idx, 24               ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.ptr, i64 8
  %i.w = load i64, ptr %i.v, align 8, !noalias !7325, !noundef !19
  %i.x = icmp eq i64 %i.w, %i.l
  br i1 %i.x, label %_RNCNvMsr_NtCs5PEMdK7bMAG_12typst_syntax3astNtB7_13MathShorthand3get0B9_.exit.i, label %_RNCNvMsr_NtCs5PEMdK7bMAG_12typst_syntax3astNtB7_13MathShorthand3get0B9_.exit.thread.i

_RNCNvMsr_NtCs5PEMdK7bMAG_12typst_syntax3astNtB7_13MathShorthand3get0B9_.exit.i: ; preds = %.lr.ph.split.i
  %i.y = load ptr, ptr %.ptr, align 8, !noalias !7325, !nonnull !19, !noundef !19
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull %i.y, ptr nonnull %.sroa.0.0, i64 %i.l), !noalias !7325
  %i.z = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.z, label %.loopexit, label %_RNCNvMsr_NtCs5PEMdK7bMAG_12typst_syntax3astNtB7_13MathShorthand3get0B9_.exit.thread.i

_RNCNvMsr_NtCs5PEMdK7bMAG_12typst_syntax3astNtB7_13MathShorthand3get0B9_.exit.thread.i: ; preds = %_RNCNvMsr_NtCs5PEMdK7bMAG_12typst_syntax3astNtB7_13MathShorthand3get0B9_.exit.i, %.lr.ph.split.i
  %i.aa = icmp eq i64 %.add, 912
  br i1 %i.aa, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRTRecEE11map_or_elsecNvYcNtNtB5_7default7Default7defaultNCNvMsr_NtCs5PEMdK7bMAG_12typst_syntax3astNtB1K_13MathShorthand3gets_0EB1M_.exit, label %.lr.ph.split.i

.loopexit:                                        ; preds = %_RNCNvMsr_NtCs5PEMdK7bMAG_12typst_syntax3astNtB7_13MathShorthand3get0B9_.exit.i, %_RNCNvMsr_NtCs5PEMdK7bMAG_12typst_syntax3astNtB7_13MathShorthand3get0B9_.exit.us.i
  %i.ab = phi i64 [ %.idx10, %_RNCNvMsr_NtCs5PEMdK7bMAG_12typst_syntax3astNtB7_13MathShorthand3get0B9_.exit.us.i ], [ %.idx, %_RNCNvMsr_NtCs5PEMdK7bMAG_12typst_syntax3astNtB7_13MathShorthand3get0B9_.exit.i ]
  %i.ac = getelementptr inbounds nuw i8, ptr @459, i64 %i.ab
  %i.ad = getelementptr i8, ptr %i.ac, i64 16
  %.val.i = load i32, ptr %i.ad, align 8, !range !52, !alias.scope !7326, !noundef !19
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRTRecEE11map_or_elsecNvYcNtNtB5_7default7Default7defaultNCNvMsr_NtCs5PEMdK7bMAG_12typst_syntax3astNtB1K_13MathShorthand3gets_0EB1M_.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRTRecEE11map_or_elsecNvYcNtNtB5_7default7Default7defaultNCNvMsr_NtCs5PEMdK7bMAG_12typst_syntax3astNtB1K_13MathShorthand3gets_0EB1M_.exit: ; preds = %_RNCNvMsr_NtCs5PEMdK7bMAG_12typst_syntax3astNtB7_13MathShorthand3get0B9_.exit.thread.i, %_RNCNvMsr_NtCs5PEMdK7bMAG_12typst_syntax3astNtB7_13MathShorthand3get0B9_.exit.thread.us.i, %.loopexit
  %.sroa.02.0.i = phi i32 [ %.val.i, %.loopexit ], [ 0, %_RNCNvMsr_NtCs5PEMdK7bMAG_12typst_syntax3astNtB7_13MathShorthand3get0B9_.exit.thread.us.i ], [ 0, %_RNCNvMsr_NtCs5PEMdK7bMAG_12typst_syntax3astNtB7_13MathShorthand3get0B9_.exit.thread.i ]
  ret i32 %.sroa.02.0.i
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef nonnull align 8 ptr @_RNvMss_NtCs5PEMdK7bMAG_12typst_syntax3astNtB5_8MathCall4args(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #19 personality ptr @rust_eh_personality {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %.sroa.03.0.i.i.i = phi ptr [ %0, %bb.a ], [ %i.k, %bb.d ] ; 3 uses
  %i.a = load i8, ptr %.sroa.03.0.i.i.i, align 8, !range !30, !noundef !19
  switch i8 %i.a, label %default.unreachable [
    i8 0, label %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode8children.exit.i.i
    i8 1, label %bb.c
    i8 2, label %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode8children.exit.i.i
    i8 3, label %bb.d
  ]

default.unreachable:                              ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.i.i, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !19, !noundef !19 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !noalias !7343, !nonnull !19, !noundef !19 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.g = load i64, ptr %i.f, align 8, !noalias !7343, !noundef !19
  %i.h = getelementptr inbounds nuw [32 x i8], ptr %i.e, i64 %i.g
  br label %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode8children.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.i.i, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !19, !noundef !19
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  br label %bb.b

_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode8children.exit.i.i: ; preds = %bb.b, %bb.b, %bb.c
  %.sroa.3.0.i.i.i = phi ptr [ %i.h, %bb.c ], [ inttoptr (i64 8 to ptr), %bb.b ], [ inttoptr (i64 8 to ptr), %bb.b ]
  %.sroa.0.0.i.i.i = phi ptr [ %i.e, %bb.c ], [ inttoptr (i64 8 to ptr), %bb.b ], [ inttoptr (i64 8 to ptr), %bb.b ]
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode8children.exit.i.i
  %i.l = phi ptr [ %i.n, %bb.f ], [ %.sroa.3.0.i.i.i, %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode8children.exit.i.i ] ; 3 uses
  %i.m = icmp eq ptr %.sroa.0.0.i.i.i, %i.l
  br i1 %i.m, label %_RINvMNtCs5PEMdK7bMAG_12typst_syntax3astNtNtB5_4node10SyntaxNode9cast_lastNtB3_8MathArgsEB5_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 -32 ; 2 uses
  %.sroa.01.0.in.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.l, i64 -31
  %.sroa.01.0.i.i.i.i.i.i.i = load i8, ptr %.sroa.01.0.in.i.i.i.i.i.i.i, align 1, !range !21, !alias.scope !7344, !noalias !7345, !noundef !19
  %.not.i.i.i = icmp eq i8 %.sroa.01.0.i.i.i.i.i.i.i, 39
  br i1 %.not.i.i.i, label %_RINvMNtCs5PEMdK7bMAG_12typst_syntax3astNtNtB5_4node10SyntaxNode9cast_lastNtB3_8MathArgsEB5_.exit, label %bb.e

_RINvMNtCs5PEMdK7bMAG_12typst_syntax3astNtNtB5_4node10SyntaxNode9cast_lastNtB3_8MathArgsEB5_.exit: ; preds = %bb.e, %bb.f
  %.sroa.0.0.i = phi ptr [ %i.n, %bb.f ], [ @_RNvNvXs5M_NtCs5PEMdK7bMAG_12typst_syntax3astNtB8_8MathArgsNtB8_7AstNode11placeholder11PLACEHOLDER, %bb.e ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define { i64, ptr } @_RNvMss_NtCs5PEMdK7bMAG_12typst_syntax3astNtB5_8MathCall6callee(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #19 personality ptr @rust_eh_personality {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.sroa.03.0.i.i = phi ptr [ %0, %bb.a ], [ %i.d, %bb.c ] ; 3 uses
  %i.a = load i8, ptr %.sroa.03.0.i.i, align 8, !range !30, !noundef !19
  switch i8 %i.a, label %default.unreachable [
    i8 0, label %_RINvMNtCs5PEMdK7bMAG_12typst_syntax3astNtNtB5_4node10SyntaxNode10cast_firstNtB3_10MathAccessEB5_.exit
    i8 1, label %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode8children.exit.i
    i8 2, label %_RINvMNtCs5PEMdK7bMAG_12typst_syntax3astNtNtB5_4node10SyntaxNode10cast_firstNtB3_10MathAccessEB5_.exit
    i8 3, label %bb.c
  ]

default.unreachable:                              ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.i, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !19, !noundef !19
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  br label %bb.b

_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode8children.exit.i: ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.i, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !19, !noundef !19 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !noalias !7358, !nonnull !19, !noundef !19 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.j = load i64, ptr %i.i, align 8, !noalias !7358, !noundef !19 ; 2 uses
  %.idx.i = shl i64 %i.j, 5
  %i.k = getelementptr i8, ptr %i.h, i64 %.idx.i  ; 2 uses
  %i.l = icmp eq i64 %i.j, 0
  br i1 %i.l, label %_RINvMNtCs5PEMdK7bMAG_12typst_syntax3astNtNtB5_4node10SyntaxNode10cast_firstNtB3_10MathAccessEB5_.exit, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode8children.exit.i
  %scevgep.i = getelementptr i8, ptr %i.k, i64 -32
  br label %.lr.ph.i.i

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.o, i64 32 ; 2 uses
  %i.n = icmp eq ptr %i.m, %i.k
  br i1 %i.n, label %_RINvMNtCs5PEMdK7bMAG_12typst_syntax3astNtNtB5_4node10SyntaxNode10cast_firstNtB3_10MathAccessEB5_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %.lr.ph.i.preheader.i
  %i.o = phi ptr [ %i.m, %bb.d ], [ %i.h, %.lr.ph.i.preheader.i ] ; 3 uses
  %.sroa.01.0.in.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  %.sroa.01.0.i.i.i.i.i = load i8, ptr %.sroa.01.0.in.i.i.i.i.i, align 1, !range !21, !alias.scope !7359, !noalias !7360, !noundef !19 ; 2 uses
  %switch.selectcmp.i.i.i.i.i = icmp eq i8 %.sroa.01.0.i.i.i.i.i, 35
  %switch.select.i.i.i.i.i = select i1 %switch.selectcmp.i.i.i.i.i, i64 1, i64 2
  %switch.selectcmp2.i.i.i.i.i = icmp eq i8 %.sroa.01.0.i.i.i.i.i, 34
  %switch.select3.i.i.i.i.i = select i1 %switch.selectcmp2.i.i.i.i.i, i64 0, i64 %switch.select.i.i.i.i.i ; 2 uses
  %.not.i.i = icmp eq i64 %switch.select3.i.i.i.i.i, 2
  br i1 %.not.i.i, label %bb.d, label %_RINvMNtCs5PEMdK7bMAG_12typst_syntax3astNtNtB5_4node10SyntaxNode10cast_firstNtB3_10MathAccessEB5_.exit

_RINvMNtCs5PEMdK7bMAG_12typst_syntax3astNtNtB5_4node10SyntaxNode10cast_firstNtB3_10MathAccessEB5_.exit: ; preds = %bb.b, %bb.b, %bb.d, %.lr.ph.i.i, %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode8children.exit.i
  %.pn.i.i = phi i64 [ 2, %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode8children.exit.i ], [ %switch.select3.i.i.i.i.i, %.lr.ph.i.i ], [ 2, %bb.d ], [ 2, %bb.b ], [ 2, %bb.b ] ; 2 uses
  %.sroa.5.0.pn.i.i = phi ptr [ undef, %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode8children.exit.i ], [ %i.o, %.lr.ph.i.i ], [ %scevgep.i, %bb.d ], [ undef, %bb.b ], [ undef, %bb.b ]
  %.not.i = icmp eq i64 %.pn.i.i, 2               ; 2 uses
  %spec.select.i = select i1 %.not.i, ptr @_RNvNvXs54_NtCs5PEMdK7bMAG_12typst_syntax3astNtB8_9MathIdentNtB8_7AstNode11placeholder11PLACEHOLDER, ptr %.sroa.5.0.pn.i.i
  %spec.select6.i = select i1 %.not.i, i64 0, i64 %.pn.i.i
  %i.p = insertvalue { i64, ptr } poison, i64 %spec.select6.i, 0
  %i.q = insertvalue { i64, ptr } %i.p, ptr %spec.select.i, 1
  ret { i64, ptr } %i.q
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_RNvMst_NtCs5PEMdK7bMAG_12typst_syntax3astNtB5_8MathArgs13content_items(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #22 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %.sroa.03.0.i = phi ptr [ %1, %bb.a ], [ %i.k, %bb.d ] ; 3 uses
  %i.a = load i8, ptr %.sroa.03.0.i, align 8, !range !30, !noundef !19
  switch i8 %i.a, label %default.unreachable [
    i8 0, label %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode8children.exit
    i8 1, label %bb.c
    i8 2, label %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode8children.exit
    i8 3, label %bb.d
  ]

default.unreachable:                              ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !19, !noundef !19 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !noalias !7363, !nonnull !19, !noundef !19 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.g = load i64, ptr %i.f, align 8, !noalias !7363, !noundef !19
  %i.h = getelementptr inbounds nuw [32 x i8], ptr %i.e, i64 %i.g
  br label %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode8children.exit

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !19, !noundef !19
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  br label %bb.b

_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode8children.exit: ; preds = %bb.b, %bb.b, %bb.c
  %.sroa.3.0.i = phi ptr [ %i.h, %bb.c ], [ inttoptr (i64 8 to ptr), %bb.b ], [ inttoptr (i64 8 to ptr), %bb.b ]
  %.sroa.0.0.i = phi ptr [ %i.e, %bb.c ], [ inttoptr (i64 8 to ptr), %bb.b ], [ inttoptr (i64 8 to ptr), %bb.b ]
  store i64 0, ptr %0, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.0.0.i, ptr %.sroa.53.0..sroa_idx, align 8
  %.sroa.64.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.3.0.i, ptr %.sroa.64.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %.sroa.7.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_RNvMst_NtCs5PEMdK7bMAG_12typst_syntax3astNtB5_8MathArgs9arg_items(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #22 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %.sroa.03.0.i.i = phi ptr [ %1, %bb.a ], [ %i.k, %bb.d ] ; 3 uses
  %i.a = load i8, ptr %.sroa.03.0.i.i, align 8, !range !30, !noalias !7369, !noundef !19
  switch i8 %i.a, label %default.unreachable [
    i8 0, label %_RNvMst_NtCs5PEMdK7bMAG_12typst_syntax3astNtB5_8MathArgs13content_items.exit
    i8 1, label %bb.c
end_hunk_0
