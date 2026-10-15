Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_common_types?download=true
inline.NumInlined: 41207
inline.NumDeleted: 6299
loop-unroll.NumCompletelyUnrolled: 156
loop-unroll.NumRuntimeUnrolled: 69
loop-unroll.NumUnrolled: 229
begin_hunk_0_@_ZN6duckdb12ValidityMask5SliceERKS0_mm:bb.a
  %i.ch = trunc i64 %i.cf to i32                  ; 2 uses
  br i1 %i.cg, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  store i32 0, ptr %i.ce, align 8, !tbaa !381
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cd, i64 12
  store i32 0, ptr %i.ci, align 4, !tbaa !382
  %i.cj = load ptr, ptr %i.cd, align 8, !tbaa !384
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.cl = load ptr, ptr %i.ck, align 8
  call void %i.cl(ptr noundef nonnull align 8 dereferenceable(16) %i.cd) #46, !inline_history !42
  %i.cm = load ptr, ptr %i.cd, align 8, !tbaa !384
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 24
  %i.co = load ptr, ptr %i.cn, align 8
  call void %i.co(ptr noundef nonnull align 8 dereferenceable(16) %i.cd) #46, !inline_history !42
  br label %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit

bb.ah:                                            ; preds = %bb.af
  %i.cp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !273
  %.not.i.i.i.i.i19 = icmp eq i8 %i.cp, 0
  br i1 %.not.i.i.i.i.i19, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cq = add nsw i32 %i.ch, -1
  store i32 %i.cq, ptr %i.ce, align 8, !tbaa !165
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i20

bb.aj:                                            ; preds = %bb.ah
  %i.cr = atomicrmw volatile add ptr %i.ce, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i20

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i20: ; preds = %bb.aj, %bb.ai
  %.0.i.i.i.i.i.i21 = phi i32 [ %i.ch, %bb.ai ], [ %i.cr, %bb.aj ]
  %i.cs = icmp eq i32 %.0.i.i.i.i.i.i21, 1
  br i1 %i.cs, label %bb.ak, label %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit, !prof !231

bb.ak:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i20
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cd) #46
  br label %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit

_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit:    ; preds = %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit17, %bb.ag, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i20, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #46
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EE5resetEv.exit

_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EE5resetEv.exit: ; preds = %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.d, %bb.b, %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit, %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit
  ret void

bb.al:                                            ; preds = %bb.u
  %i.ct = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb21TemplatedValidityMaskImED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #46
  resume { ptr, i32 } %i.ct
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb12ValidityMask12SliceInPlaceERKS0_mmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !460
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.b, label %_ZN6duckdb21TemplatedValidityMaskImE14EnsureWritableEv.exit

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !460
  %.not.i86 = icmp eq ptr %i.b, null
  br i1 %.not.i86, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i64, ptr %i.c, align 8, !tbaa !468
  tail call void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.d)
  br label %_ZN6duckdb21TemplatedValidityMaskImE14EnsureWritableEv.exit

_ZN6duckdb21TemplatedValidityMaskImE14EnsureWritableEv.exit: ; preds = %bb.a, %bb.c
  %i.e = and i64 %4, 63                           ; 8 uses
  %i.f = lshr i64 %4, 6                           ; 10 uses
  %i.g = and i64 %3, 63                           ; 8 uses
  %i.h = or i64 %3, %2
  %i.i = and i64 %i.h, 63
  %or.cond = icmp eq i64 %i.i, 0
  br i1 %or.cond, label %bb.d, label %bb.g

bb.d:                                             ; preds = %_ZN6duckdb21TemplatedValidityMaskImE14EnsureWritableEv.exit
  %i.j = load ptr, ptr %0, align 8, !tbaa !460    ; 3 uses
  %i.k = load ptr, ptr %1, align 8, !tbaa !460    ; 2 uses
  %i.l = add nuw i64 %2, 63
  %i.m = lshr i64 %i.l, 6                         ; 3 uses
  %.not84 = icmp eq ptr %i.k, null
  br i1 %.not84, label %bb.e, label %.thread89

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.m
  %i.o = shl nuw nsw i64 %i.f, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.n, i8 -1, i64 %i.o, i1 false)
  %.not85 = icmp eq i64 %i.e, 0
  br i1 %.not85, label %.loopexit, label %bb.f

.thread89:                                        ; preds = %bb.d
  %i.p = add nuw i64 %3, 63
  %i.q = lshr i64 %i.p, 6
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.m
  %i.s = getelementptr [8 x i8], ptr %i.k, i64 %i.q ; 2 uses
  %i.t = shl nuw nsw i64 %i.f, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.r, ptr nonnull align 8 %i.s, i64 %i.t, i1 false)
  %.not8590 = icmp eq i64 %i.e, 0
  br i1 %.not8590, label %.loopexit, label %.thread91

.thread91:                                        ; preds = %.thread89
  %i.u = getelementptr [8 x i8], ptr %i.s, i64 %i.f
  %i.v = load i64, ptr %i.u, align 8, !tbaa !245
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.thread91
  %i.w = phi i64 [ %i.v, %.thread91 ], [ -1, %bb.e ]
  %i.x = sub nuw nsw i64 64, %i.e
  %i.y = lshr i64 -1, %i.x
  %i.z = and i64 %i.w, %i.y
  %i.aa = getelementptr [8 x i8], ptr %i.j, i64 %i.m
  %i.ab = getelementptr [8 x i8], ptr %i.aa, i64 %i.f ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !245
  %i.ad = shl nsw i64 -1, %i.e
  %i.ae = and i64 %i.ac, %i.ad
  %i.af = or i64 %i.ae, %i.z
  store i64 %i.af, ptr %i.ab, align 8, !tbaa !245
  br label %.loopexit

bb.g:                                             ; preds = %_ZN6duckdb21TemplatedValidityMaskImE14EnsureWritableEv.exit
  %i.ag = and i64 %2, 63
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %bb.h, label %.preheader

.preheader:                                       ; preds = %bb.g
  %.not106 = icmp eq i64 %4, 0
  br i1 %.not106, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aj = load ptr, ptr %1, align 8, !tbaa !460   ; 2 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.al = load ptr, ptr %0, align 8, !tbaa !460   ; 4 uses
  %.not.i.i93.us = icmp eq ptr %i.al, null
  br i1 %.not.i.i93.us, label %.loopexit, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.preheader

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.preheader: ; preds = %.lr.ph.split.us
  %xtraiter = and i64 %4, 1
  %i.am = icmp eq i64 %4, 1
  br i1 %i.am, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.epil.preheader, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.preheader.new

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.preheader.new: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.preheader
  %unroll_iter = and i64 %4, -2
  br label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.preheader.new
  %.097.us = phi i64 [ 0, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.preheader.new ], [ %i.bc, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us ] ; 3 uses
  %niter = phi i64 [ 0, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.preheader.new ], [ %niter.next.1, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us ]
  %i.an = add i64 %.097.us, %2                    ; 2 uses
  %i.ao = lshr i64 %i.an, 6
  %i.ap = and i64 %i.an, 63
  %i.aq = shl nuw i64 1, %i.ap
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.ao ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !245
  %i.at = or i64 %i.as, %i.aq
  store i64 %i.at, ptr %i.ar, align 8, !tbaa !245
  %i.au = or disjoint i64 %.097.us, 1
  %i.av = add i64 %i.au, %2                       ; 2 uses
  %i.aw = lshr i64 %i.av, 6
  %i.ax = and i64 %i.av, 63
  %i.ay = shl nuw i64 1, %i.ax
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.aw ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !245
  %i.bb = or i64 %i.ba, %i.ay
  store i64 %i.bb, ptr %i.az, align 8, !tbaa !245
  %i.bc = add nuw i64 %.097.us, 2                 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us, !llvm.loop !1875

bb.h:                                             ; preds = %bb.g
  %i.bd = sub nuw nsw i64 64, %i.g                ; 8 uses
  %i.be = load ptr, ptr %1, align 8, !tbaa !460   ; 2 uses
  %i.bf = ptrtoaddr ptr %i.be to i64
  %i.bg = lshr i64 %3, 6                          ; 2 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.bg ; 2 uses
  %i.bi = load ptr, ptr %0, align 8, !tbaa !460   ; 2 uses
  %i.bj = ptrtoaddr ptr %i.bi to i64
  %i.bk = lshr exact i64 %2, 3                    ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bk ; 5 uses
  %i.bm = load i64, ptr %i.bh, align 8, !tbaa !245 ; 4 uses
  %.07998 = getelementptr inbounds nuw i8, ptr %i.bh, i64 8 ; 5 uses
  %.not107 = icmp eq i64 %i.f, 0
  br i1 %.not107, label %._crit_edge, label %.lr.ph103.preheader

.lr.ph103.preheader:                              ; preds = %bb.h
  %min.iters.check = icmp ult i64 %4, 640
  br i1 %min.iters.check, label %.lr.ph103.preheader134, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph103.preheader
  %5 = shl nuw nsw i64 %i.bg, 3
  %6 = add i64 %i.bk, %i.bj
  %i.bn = add i64 %5, %i.bf
  %i.bo = sub i64 %6, %i.bn
  %i.bp = add i64 %i.bo, -9
  %diff.check = icmp ult i64 %i.bp, 31
  br i1 %diff.check, label %.lr.ph103.preheader134, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.f, 288230376151711740       ; 4 uses
  %i.bq = shl nuw nsw i64 %n.vec, 3               ; 2 uses
  %i.br = getelementptr i8, ptr %.07998, i64 %i.bq ; 2 uses
  %i.bs = getelementptr i8, ptr %i.bl, i64 %i.bq  ; 2 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.g, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert128 = insertelement <2 x i64> poison, i64 %i.bd, i64 0
  %broadcast.splat129 = shufflevector <2 x i64> %broadcast.splatinsert128, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %vector.recur.init = insertelement <2 x i64> poison, i64 %i.bm, i64 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vector.recur = phi <2 x i64> [ %vector.recur.init, %vector.ph ], [ %wide.load131, %vector.body ]
  %i.bt = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.07998, i64 %i.bt ; 2 uses
  %next.gep130 = getelementptr i8, ptr %i.bl, i64 %i.bt ; 2 uses
  %i.bu = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep, align 8, !tbaa !245 ; 3 uses
  %wide.load131 = load <2 x i64>, ptr %i.bu, align 8, !tbaa !245 ; 4 uses
  %i.bv = shufflevector <2 x i64> %vector.recur, <2 x i64> %wide.load, <2 x i32> <i32 1, i32 2>
  %i.bw = shufflevector <2 x i64> %wide.load, <2 x i64> %wide.load131, <2 x i32> <i32 1, i32 2>
  %i.bx = lshr <2 x i64> %i.bv, %broadcast.splat
  %i.by = lshr <2 x i64> %i.bw, %broadcast.splat
  %i.bz = shl <2 x i64> %wide.load, %broadcast.splat129
  %i.ca = shl <2 x i64> %wide.load131, %broadcast.splat129
  %i.cb = or disjoint <2 x i64> %i.bz, %i.bx
  %i.cc = or disjoint <2 x i64> %i.ca, %i.by
  %i.cd = getelementptr i8, ptr %next.gep130, i64 16
  store <2 x i64> %i.cb, ptr %next.gep130, align 8, !tbaa !245
  store <2 x i64> %i.cc, ptr %i.cd, align 8, !tbaa !245
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ce = icmp eq i64 %index.next, %n.vec
  br i1 %i.ce, label %middle.block, label %vector.body, !llvm.loop !1876

middle.block:                                     ; preds = %vector.body
  %vector.recur.extract = extractelement <2 x i64> %wide.load131, i64 1 ; 2 uses
  %cmp.n = icmp eq i64 %i.f, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph103.preheader134

.lr.ph103.preheader134:                           ; preds = %vector.memcheck, %.lr.ph103.preheader, %middle.block
  %.079102.ph = phi ptr [ %.07998, %vector.memcheck ], [ %.07998, %.lr.ph103.preheader ], [ %i.br, %middle.block ] ; 2 uses
  %.076101.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph103.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %.077100.ph = phi i64 [ %i.bm, %vector.memcheck ], [ %i.bm, %.lr.ph103.preheader ], [ %vector.recur.extract, %middle.block ] ; 2 uses
  %.07899.ph = phi ptr [ %i.bl, %vector.memcheck ], [ %i.bl, %.lr.ph103.preheader ], [ %i.bs, %middle.block ] ; 2 uses
  %xtraiter139 = and i64 %i.f, 3                  ; 2 uses
  %lcmp.mod140.not = icmp eq i64 %xtraiter139, 0
  br i1 %lcmp.mod140.not, label %.lr.ph103.prol.loopexit, label %.lr.ph103.prol

.lr.ph103.prol:                                   ; preds = %.lr.ph103.preheader134, %.lr.ph103.prol
  %.079102.prol = phi ptr [ %.079.prol, %.lr.ph103.prol ], [ %.079102.ph, %.lr.ph103.preheader134 ] ; 2 uses
  %.076101.prol = phi i64 [ %i.ck, %.lr.ph103.prol ], [ %.076101.ph, %.lr.ph103.preheader134 ]
  %.077100.prol = phi i64 [ %i.cg, %.lr.ph103.prol ], [ %.077100.ph, %.lr.ph103.preheader134 ]
  %.07899.prol = phi ptr [ %i.cj, %.lr.ph103.prol ], [ %.07899.ph, %.lr.ph103.preheader134 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph103.prol ], [ 0, %.lr.ph103.preheader134 ]
  %i.cf = lshr i64 %.077100.prol, %i.g
  %i.cg = load i64, ptr %.079102.prol, align 8, !tbaa !245 ; 4 uses
  %i.ch = shl i64 %i.cg, %i.bd
  %i.ci = or disjoint i64 %i.ch, %i.cf
  %i.cj = getelementptr inbounds nuw i8, ptr %.07899.prol, i64 8 ; 3 uses
  store i64 %i.ci, ptr %.07899.prol, align 8, !tbaa !245
  %i.ck = add nuw nsw i64 %.076101.prol, 1        ; 2 uses
  %.079.prol = getelementptr inbounds nuw i8, ptr %.079102.prol, i64 8 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter139
  br i1 %prol.iter.cmp.not, label %.lr.ph103.prol.loopexit, label %.lr.ph103.prol, !llvm.loop !1877

.lr.ph103.prol.loopexit:                          ; preds = %.lr.ph103.prol, %.lr.ph103.preheader134
  %.lcssa136.unr = phi i64 [ poison, %.lr.ph103.preheader134 ], [ %i.cg, %.lr.ph103.prol ]
  %.lcssa.unr = phi ptr [ poison, %.lr.ph103.preheader134 ], [ %i.cj, %.lr.ph103.prol ]
  %.079.lcssa135.unr = phi ptr [ poison, %.lr.ph103.preheader134 ], [ %.079.prol, %.lr.ph103.prol ]
  %.079102.unr = phi ptr [ %.079102.ph, %.lr.ph103.preheader134 ], [ %.079.prol, %.lr.ph103.prol ]
  %.076101.unr = phi i64 [ %.076101.ph, %.lr.ph103.preheader134 ], [ %i.ck, %.lr.ph103.prol ]
  %.077100.unr = phi i64 [ %.077100.ph, %.lr.ph103.preheader134 ], [ %i.cg, %.lr.ph103.prol ]
  %.07899.unr = phi ptr [ %.07899.ph, %.lr.ph103.preheader134 ], [ %i.cj, %.lr.ph103.prol ]
  %i.cl = sub nsw i64 %.076101.ph, %i.f
  %i.cm = icmp ugt i64 %i.cl, -4
  br i1 %i.cm, label %._crit_edge, label %.lr.ph103

._crit_edge:                                      ; preds = %.lr.ph103.prol.loopexit, %.lr.ph103, %middle.block, %bb.h
  %.078.lcssa = phi ptr [ %i.bl, %bb.h ], [ %i.bs, %middle.block ], [ %.lcssa.unr, %.lr.ph103.prol.loopexit ], [ %i.dg, %.lr.ph103 ] ; 2 uses
  %.077.lcssa = phi i64 [ %i.bm, %bb.h ], [ %vector.recur.extract, %middle.block ], [ %.lcssa136.unr, %.lr.ph103.prol.loopexit ], [ %i.dd, %.lr.ph103 ]
  %.079.lcssa = phi ptr [ %.07998, %bb.h ], [ %i.br, %middle.block ], [ %.079.lcssa135.unr, %.lr.ph103.prol.loopexit ], [ %.079.3, %.lr.ph103 ]
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %.loopexit, label %bb.i

.lr.ph103:                                        ; preds = %.lr.ph103.prol.loopexit, %.lr.ph103
  %.079102 = phi ptr [ %.079.3, %.lr.ph103 ], [ %.079102.unr, %.lr.ph103.prol.loopexit ] ; 5 uses
  %.076101 = phi i64 [ %i.dh, %.lr.ph103 ], [ %.076101.unr, %.lr.ph103.prol.loopexit ]
  %.077100 = phi i64 [ %i.dd, %.lr.ph103 ], [ %.077100.unr, %.lr.ph103.prol.loopexit ]
  %.07899 = phi ptr [ %i.dg, %.lr.ph103 ], [ %.07899.unr, %.lr.ph103.prol.loopexit ] ; 5 uses
  %i.cn = lshr i64 %.077100, %i.g
  %i.co = load i64, ptr %.079102, align 8, !tbaa !245 ; 2 uses
  %i.cp = shl i64 %i.co, %i.bd
  %i.cq = or disjoint i64 %i.cp, %i.cn
  %i.cr = getelementptr inbounds nuw i8, ptr %.07899, i64 8
  store i64 %i.cq, ptr %.07899, align 8, !tbaa !245
  %.079 = getelementptr inbounds nuw i8, ptr %.079102, i64 8
  %i.cs = lshr i64 %i.co, %i.g
  %i.ct = load i64, ptr %.079, align 8, !tbaa !245 ; 2 uses
  %i.cu = shl i64 %i.ct, %i.bd
  %i.cv = or disjoint i64 %i.cu, %i.cs
  %i.cw = getelementptr inbounds nuw i8, ptr %.07899, i64 16
  store i64 %i.cv, ptr %i.cr, align 8, !tbaa !245
  %.079.1 = getelementptr inbounds nuw i8, ptr %.079102, i64 16
  %i.cx = lshr i64 %i.ct, %i.g
  %i.cy = load i64, ptr %.079.1, align 8, !tbaa !245 ; 2 uses
  %i.cz = shl i64 %i.cy, %i.bd
  %i.da = or disjoint i64 %i.cz, %i.cx
  %i.db = getelementptr inbounds nuw i8, ptr %.07899, i64 24
  store i64 %i.da, ptr %i.cw, align 8, !tbaa !245
  %.079.2 = getelementptr inbounds nuw i8, ptr %.079102, i64 24
  %i.dc = lshr i64 %i.cy, %i.g
  %i.dd = load i64, ptr %.079.2, align 8, !tbaa !245 ; 3 uses
  %i.de = shl i64 %i.dd, %i.bd
  %i.df = or disjoint i64 %i.de, %i.dc
  %i.dg = getelementptr inbounds nuw i8, ptr %.07899, i64 32 ; 2 uses
  store i64 %i.df, ptr %i.db, align 8, !tbaa !245
  %i.dh = add nuw nsw i64 %.076101, 4             ; 2 uses
  %.079.3 = getelementptr inbounds nuw i8, ptr %.079102, i64 32 ; 2 uses
  %exitcond112.not.3 = icmp eq i64 %i.dh, %i.f
  br i1 %exitcond112.not.3, label %._crit_edge, label %.lr.ph103, !llvm.loop !1878

bb.i:                                             ; preds = %._crit_edge
  %i.di = lshr i64 %.077.lcssa, %i.g              ; 2 uses
  %i.dj = icmp samesign ult i64 %i.bd, %i.e
  br i1 %i.dj, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.dk = load i64, ptr %.079.lcssa, align 8, !tbaa !245
  %i.dl = shl i64 %i.dk, %i.bd
  %i.dm = or disjoint i64 %i.dl, %i.di
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.075 = phi i64 [ %i.dm, %bb.j ], [ %i.di, %bb.i ]
  %i.dn = sub nuw nsw i64 64, %i.e
  %i.do = lshr i64 -1, %i.dn
  %i.dp = and i64 %.075, %i.do
  %i.dq = load i64, ptr %.078.lcssa, align 8, !tbaa !245
  %i.dr = shl nsw i64 -1, %i.e
  %i.ds = and i64 %i.dq, %i.dr
  %i.dt = or i64 %i.ds, %i.dp
  store i64 %i.dt, ptr %.078.lcssa, align 8, !tbaa !245
  br label %.loopexit

.lr.ph.splitthread-pre-split:                     ; preds = %_ZN6duckdb21TemplatedValidityMaskImE3SetEmb.exit
  %.pr = load ptr, ptr %1, align 8, !tbaa !460
  br label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.splitthread-pre-split
  %i.du = phi ptr [ %.pr, %.lr.ph.splitthread-pre-split ], [ %i.aj, %.lr.ph ] ; 2 uses
  %.097 = phi i64 [ %i.ev, %.lr.ph.splitthread-pre-split ], [ 0, %.lr.ph ] ; 3 uses
  %i.dv = add i64 %.097, %2                       ; 4 uses
  %.not.i88 = icmp eq ptr %i.du, null
  br i1 %.not.i88, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread: ; preds = %.lr.ph.split
  %i.dw = load ptr, ptr %0, align 8, !tbaa !460   ; 2 uses
  %.not.i.i93 = icmp eq ptr %i.dw, null
  br i1 %.not.i.i93, label %_ZN6duckdb21TemplatedValidityMaskImE3SetEmb.exit, label %bb.m

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit: ; preds = %.lr.ph.split
  %i.dx = add i64 %.097, %3                       ; 2 uses
  %i.dy = lshr i64 %i.dx, 6
  %i.dz = and i64 %i.dx, 63
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %i.dy
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !245
  %i.ec = shl nuw i64 1, %i.dz
  %i.ed = and i64 %i.eb, %i.ec
  %.not96 = icmp eq i64 %i.ed, 0
  %i.ee = load ptr, ptr %0, align 8, !tbaa !460   ; 3 uses
  %.not.i.i = icmp eq ptr %i.ee, null             ; 2 uses
  br i1 %.not96, label %bb.n, label %bb.l

bb.l:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit
  br i1 %.not.i.i, label %_ZN6duckdb21TemplatedValidityMaskImE3SetEmb.exit, label %bb.m

bb.m:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread, %bb.l
  %i.ef = phi ptr [ %i.dw, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread ], [ %i.ee, %bb.l ]
  %i.eg = lshr i64 %i.dv, 6
  %i.eh = and i64 %i.dv, 63
  %i.ei = shl nuw i64 1, %i.eh
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %i.eg ; 2 uses
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !245
  %i.el = or i64 %i.ek, %i.ei
  store i64 %i.el, ptr %i.ej, align 8, !tbaa !245
  br label %_ZN6duckdb21TemplatedValidityMaskImE3SetEmb.exit

bb.n:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit
  br i1 %.not.i.i, label %bb.o, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i

bb.o:                                             ; preds = %bb.n
  %i.em = load i64, ptr %i.ai, align 8, !tbaa !468
  tail call void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.em)
end_hunk_0
