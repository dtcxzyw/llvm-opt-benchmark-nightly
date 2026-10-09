Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_common_types?download=true
inline.NumInlined: 41207
inline.NumDeleted: 6299
loop-unroll.NumCompletelyUnrolled: 156
loop-unroll.NumRuntimeUnrolled: 70
loop-unroll.NumUnrolled: 230
begin_hunk_0_@_ZN6duckdb3Bit10RightShiftERKNS_8string_tEmRS1_:bb.a
.lr.ph.i.epil.preheader:                          ; preds = %._crit_edge.loopexit.i.unr-lcssa, %.lr.ph.i.preheader
  %.07.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.by, %._crit_edge.loopexit.i.unr-lcssa ] ; 2 uses
  %lcmp.mod29 = trunc i8 %i.ae to i1
  tail call void @llvm.assume(i1 %lcmp.mod29)
  %i.ah = load i32, ptr %2, align 8, !tbaa !273
  %i.ai = icmp ult i32 %i.ah, 13
  %i.aj = load ptr, ptr %i.d, align 8
  %i.ak = select i1 %i.ai, ptr %i.c, ptr %i.aj
  %i.al = lshr i64 %.07.i.epil.init, 3
  %i.am = trunc i64 %.07.i.epil.init to i8
  %i.an = and i8 %i.am, 7
  %i.ao = lshr exact i8 -128, %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.al
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 1 ; 2 uses
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !273
  %i.as = or i8 %i.ar, %i.ao
  store i8 %i.as, ptr %i.aq, align 1, !tbaa !273
  br label %._crit_edge.loopexit.i

._crit_edge.loopexit.i:                           ; preds = %._crit_edge.loopexit.i.unr-lcssa, %.lr.ph.i.epil.preheader
  %.pre.i = load i32, ptr %2, align 8, !tbaa !273
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.c
  %i.at = phi i32 [ %.pre.i, %._crit_edge.loopexit.i ], [ %.sroa.0.0.extract.trunc.i, %bb.c ] ; 2 uses
  %i.au = icmp ult i32 %i.at, 13
  br i1 %i.au, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i
  %i.av = zext nneg i32 %i.at to i64              ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.av
  %i.ax = sub nuw nsw i64 12, %i.av
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.aw, i8 0, i64 %i.ax, i1 false)
  br label %_ZN6duckdb3Bit8FinalizeERNS_8string_tE.exit

bb.e:                                             ; preds = %._crit_edge.i
  %i.ay = load ptr, ptr %i.d, align 8
  %i.az = load i32, ptr %i.ay, align 1
  store i32 %i.az, ptr %i.c, align 4
  br label %_ZN6duckdb3Bit8FinalizeERNS_8string_tE.exit

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.07.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.by, %.lr.ph.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.ba = load i32, ptr %2, align 8, !tbaa !273
  %i.bb = icmp ult i32 %i.ba, 13
  %i.bc = load ptr, ptr %i.d, align 8
  %i.bd = select i1 %i.bb, ptr %i.c, ptr %i.bc
  %i.be = lshr i64 %.07.i, 3
  %i.bf = trunc i64 %.07.i to i8
  %i.bg = and i8 %i.bf, 6
  %i.bh = lshr exact i8 -128, %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.be
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 1 ; 2 uses
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !273
  %i.bl = or i8 %i.bk, %i.bh
  store i8 %i.bl, ptr %i.bj, align 1, !tbaa !273
  %i.bm = load i32, ptr %2, align 8, !tbaa !273
  %i.bn = icmp ult i32 %i.bm, 13
  %i.bo = load ptr, ptr %i.d, align 8
  %i.bp = select i1 %i.bn, ptr %i.c, ptr %i.bo
  %i.bq = lshr i64 %.07.i, 3
  %i.br = trunc i64 %.07.i to i8
  %i.bs = and i8 %i.br, 6
  %i.bt = lshr exact i8 64, %i.bs
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.bq
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 1 ; 2 uses
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !273
  %i.bx = or i8 %i.bw, %i.bt
  store i8 %i.bx, ptr %i.bv, align 1, !tbaa !273
  %i.by = add nuw nsw i64 %.07.i, 2               ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.i.unr-lcssa, label %.lr.ph.i, !llvm.loop !4

_ZN6duckdb3Bit8FinalizeERNS_8string_tE.exit:      ; preds = %bb.d, %bb.e
  ret void

bb.f:                                             ; preds = %_ZN6duckdb3Bit9BitLengthENS_8string_tE.exit
  %i.bz = icmp ult i64 %.0, %1
  br i1 %i.bz, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ca = add i64 %.0, %i.s                       ; 2 uses
  %i.cb = select i1 %i.v, ptr %i.c, ptr %.sroa.22.0.copyload
  %i.cc = lshr i64 %i.ca, 3
  %i.cd = trunc i64 %i.ca to i8
  %i.ce = and i8 %i.cd, 7
  %i.cf = lshr exact i8 -128, %i.ce
  %i.cg = xor i8 %i.cf, -1
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.cc
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 1 ; 2 uses
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !273
  %i.ck = and i8 %i.cj, %i.cg
  store i8 %i.ck, ptr %i.ci, align 1, !tbaa !273
  br label %_ZN6duckdb3Bit14SetBitInternalERNS_8string_tEmm.exit

bb.h:                                             ; preds = %bb.f
  %.sroa.0.0.copyload = load i64, ptr %0, align 8 ; 3 uses
  %.sroa.2.0.copyload = load ptr, ptr %i.j, align 8, !tbaa !273 ; 3 uses
  %i.cl = sub nuw i64 %.0, %1
  %.sroa.0.0.extract.trunc.i23 = trunc i64 %.sroa.0.0.copyload to i32
  %.sroa.2.0.extract.shift.i = lshr i64 %.sroa.0.0.copyload, 32
  %.sroa.2.0.extract.trunc.i = trunc i64 %.sroa.2.0.extract.shift.i to i8
  %i.cm = icmp ult i32 %.sroa.0.0.extract.trunc.i23, 13
  br i1 %i.cm, label %_ZN6duckdb3Bit6GetBitENS_8string_tEm.exit, label %.else.i24

.else.i24:                                        ; preds = %bb.h
  %.else.val.i25 = load i8, ptr %.sroa.2.0.copyload, align 1, !tbaa !273
  br label %_ZN6duckdb3Bit6GetBitENS_8string_tEm.exit

_ZN6duckdb3Bit6GetBitENS_8string_tEm.exit:        ; preds = %bb.h, %.else.i24
  %i.cn = phi ptr [ %i.u, %bb.h ], [ %.sroa.2.0.copyload, %.else.i24 ]
  %i.co = phi i8 [ %.sroa.2.0.extract.trunc.i, %bb.h ], [ %.else.val.i25, %.else.i24 ]
  %i.cp = zext i8 %i.co to i64
  %i.cq = add i64 %i.cl, %i.cp                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store i64 %.sroa.0.0.copyload, ptr %3, align 8
  store ptr %.sroa.2.0.copyload, ptr %i.t, align 8
  %i.cr = lshr i64 %i.cq, 3
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.cr
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 1
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !273
  %i.cv = zext i8 %i.cu to i32
  %i.cw = trunc i64 %i.cq to i32
  %i.cx = and i32 %i.cw, 7
  %i.cy = lshr exact i32 128, %i.cx
  %i.cz = and i32 %i.cy, %i.cv
  %.not.i.i.not = icmp eq i32 %i.cz, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.da = add i64 %.0, %i.s                       ; 2 uses
  %i.db = select i1 %i.v, ptr %i.c, ptr %.sroa.22.0.copyload ; 2 uses
  %i.dc = lshr i64 %i.da, 3
  %i.dd = add nuw nsw i64 %i.dc, 1                ; 2 uses
  %i.de = trunc i64 %i.da to i8
  %i.df = and i8 %i.de, 7
  %i.dg = lshr exact i8 -128, %i.df               ; 2 uses
  br i1 %.not.i.i.not, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN6duckdb3Bit6GetBitENS_8string_tEm.exit
  %i.dh = xor i8 %i.dg, -1
  %i.di = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.dd ; 2 uses
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !273
  %i.dk = and i8 %i.dj, %i.dh
  store i8 %i.dk, ptr %i.di, align 1, !tbaa !273
  br label %_ZN6duckdb3Bit14SetBitInternalERNS_8string_tEmm.exit

bb.j:                                             ; preds = %_ZN6duckdb3Bit6GetBitENS_8string_tEm.exit
  %i.dl = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.dd ; 2 uses
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !273
  %i.dn = or i8 %i.dm, %i.dg
  store i8 %i.dn, ptr %i.dl, align 1, !tbaa !273
  br label %_ZN6duckdb3Bit14SetBitInternalERNS_8string_tEmm.exit

_ZN6duckdb3Bit14SetBitInternalERNS_8string_tEmm.exit: ; preds = %bb.j, %bb.i, %bb.g
  %i.do = add nuw i64 %.0, 1
  %.sroa.22.0.copyload.pre = load ptr, ptr %i.d, align 8, !tbaa !273
  br label %bb.b, !llvm.loop !1311
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN6duckdb3Bit9LeftShiftERKNS_8string_tEmRS1_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %2) local_unnamed_addr #13 align 2 {
bb.a:
  %3 = alloca %"struct.duckdb::string_t", align 8 ; 5 uses
  %i.a = load i32, ptr %2, align 8, !tbaa !273
  %i.b = icmp ult i32 %i.a, 13
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 9 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = select i1 %i.b, ptr %i.c, ptr %i.e
  %i.g = load i32, ptr %0, align 8, !tbaa !273
  %i.h = icmp ult i32 %i.g, 13
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = select i1 %i.h, ptr %i.i, ptr %i.k
  %i.m = load i8, ptr %i.l, align 1, !tbaa !273
  store i8 %i.m, ptr %i.f, align 1, !tbaa !273
  %i.n = load i32, ptr %2, align 8, !tbaa !273
  %i.o = icmp ult i32 %i.n, 13
  %i.p = load ptr, ptr %i.d, align 8
  %i.q = select i1 %i.o, ptr %i.c, ptr %i.p
  %i.r = load i8, ptr %i.q, align 1, !tbaa !273
  %i.s = zext i8 %i.r to i64                      ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 4
  br label %bb.b

bb.b:                                             ; preds = %_ZN6duckdb3Bit14SetBitInternalERNS_8string_tEmm.exit, %bb.a
  %.0 = phi i64 [ 0, %bb.a ], [ %i.ec, %_ZN6duckdb3Bit14SetBitInternalERNS_8string_tEmm.exit ] ; 8 uses
  %.sroa.03.0.copyload = load i64, ptr %0, align 8 ; 5 uses
  %.sroa.24.0.copyload = load ptr, ptr %i.j, align 8, !tbaa !273 ; 3 uses
  %.sroa.0.0.extract.trunc.i = trunc i64 %.sroa.03.0.copyload to i32
  %.sroa.3.0.extract.shift.i = lshr i64 %.sroa.03.0.copyload, 32 ; 2 uses
  %i.v = icmp ult i32 %.sroa.0.0.extract.trunc.i, 13
  br i1 %i.v, label %_ZN6duckdb3Bit9BitLengthENS_8string_tE.exit, label %_ZN6duckdb3Bit9BitLengthENS_8string_tE.exit.thread

_ZN6duckdb3Bit9BitLengthENS_8string_tE.exit:      ; preds = %bb.b
  %i.w = shl i64 %.sroa.03.0.copyload, 3
  %i.x = and i64 %i.w, 120
  %i.y = add nsw i64 %i.x, -8                     ; 2 uses
  %i.z = and i64 %.sroa.3.0.extract.shift.i, 255  ; 2 uses
  %i.aa = sub nsw i64 %i.y, %i.z
  %i.ab = icmp ult i64 %.0, %i.aa
  br i1 %i.ab, label %_ZN6duckdb3Bit9BitLengthENS_8string_tE.exit30, label %bb.c

_ZN6duckdb3Bit9BitLengthENS_8string_tE.exit.thread: ; preds = %bb.b
  %.else.val.i = load i8, ptr %.sroa.24.0.copyload, align 1, !tbaa !273
  %i.ac = shl i64 %.sroa.03.0.copyload, 3
  %i.ad = and i64 %i.ac, 34359738360
  %i.ae = add nsw i64 %i.ad, -8                   ; 2 uses
  %i.af = zext i8 %.else.val.i to i64             ; 3 uses
  %i.ag = sub nsw i64 %i.ae, %i.af
  %i.ah = icmp ult i64 %.0, %i.ag
  br i1 %i.ah, label %_ZN6duckdb3Bit9BitLengthENS_8string_tE.exit30.thread, label %bb.c

bb.c:                                             ; preds = %_ZN6duckdb3Bit9BitLengthENS_8string_tE.exit.thread, %_ZN6duckdb3Bit9BitLengthENS_8string_tE.exit
  %i.ai = load i32, ptr %2, align 8, !tbaa !273   ; 2 uses
  %i.aj = icmp ult i32 %i.ai, 13
  %i.ak = load ptr, ptr %i.d, align 8
  %i.al = select i1 %i.aj, ptr %i.c, ptr %i.ak
  %i.am = load i8, ptr %i.al, align 1, !tbaa !273 ; 4 uses
  %i.an = zext i8 %i.am to i64                    ; 2 uses
  %.not.i = icmp eq i8 %i.am, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.c
  %xtraiter = and i64 %i.an, 1
  %i.ao = icmp eq i8 %i.am, 1
  br i1 %i.ao, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %i.an, 254
  br label %.lr.ph.i

._crit_edge.loopexit.i.unr-lcssa:                 ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %._crit_edge.loopexit.i.unr-lcssa, %.lr.ph.i.preheader
  %.07.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.cg, %._crit_edge.loopexit.i.unr-lcssa ] ; 2 uses
  %lcmp.mod40 = trunc i8 %i.am to i1
  tail call void @llvm.assume(i1 %lcmp.mod40)
  %i.ap = load i32, ptr %2, align 8, !tbaa !273
  %i.aq = icmp ult i32 %i.ap, 13
  %i.ar = load ptr, ptr %i.d, align 8
  %i.as = select i1 %i.aq, ptr %i.c, ptr %i.ar
  %i.at = lshr i64 %.07.i.epil.init, 3
  %i.au = trunc i64 %.07.i.epil.init to i8
  %i.av = and i8 %i.au, 7
  %i.aw = lshr exact i8 -128, %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.at
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 1 ; 2 uses
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !273
  %i.ba = or i8 %i.az, %i.aw
  store i8 %i.ba, ptr %i.ay, align 1, !tbaa !273
  br label %._crit_edge.loopexit.i

._crit_edge.loopexit.i:                           ; preds = %._crit_edge.loopexit.i.unr-lcssa, %.lr.ph.i.epil.preheader
  %.pre.i = load i32, ptr %2, align 8, !tbaa !273
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.c
  %i.bb = phi i32 [ %.pre.i, %._crit_edge.loopexit.i ], [ %i.ai, %bb.c ] ; 2 uses
  %i.bc = icmp ult i32 %i.bb, 13
  br i1 %i.bc, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i
  %i.bd = zext nneg i32 %i.bb to i64              ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.bd
  %i.bf = sub nuw nsw i64 12, %i.bd
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.be, i8 0, i64 %i.bf, i1 false)
  br label %_ZN6duckdb3Bit8FinalizeERNS_8string_tE.exit

bb.e:                                             ; preds = %._crit_edge.i
  %i.bg = load ptr, ptr %i.d, align 8
  %i.bh = load i32, ptr %i.bg, align 1
  store i32 %i.bh, ptr %i.c, align 4
  br label %_ZN6duckdb3Bit8FinalizeERNS_8string_tE.exit

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.07.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.cg, %.lr.ph.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.bi = load i32, ptr %2, align 8, !tbaa !273
  %i.bj = icmp ult i32 %i.bi, 13
  %i.bk = load ptr, ptr %i.d, align 8
  %i.bl = select i1 %i.bj, ptr %i.c, ptr %i.bk
  %i.bm = lshr i64 %.07.i, 3
  %i.bn = trunc i64 %.07.i to i8
  %i.bo = and i8 %i.bn, 6
  %i.bp = lshr exact i8 -128, %i.bo
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bm
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 1 ; 2 uses
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !273
  %i.bt = or i8 %i.bs, %i.bp
  store i8 %i.bt, ptr %i.br, align 1, !tbaa !273
  %i.bu = load i32, ptr %2, align 8, !tbaa !273
  %i.bv = icmp ult i32 %i.bu, 13
  %i.bw = load ptr, ptr %i.d, align 8
  %i.bx = select i1 %i.bv, ptr %i.c, ptr %i.bw
  %i.by = lshr i64 %.07.i, 3
  %i.bz = trunc i64 %.07.i to i8
  %i.ca = and i8 %i.bz, 6
  %i.cb = lshr exact i8 64, %i.ca
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.by
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 1 ; 2 uses
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !273
  %i.cf = or i8 %i.ce, %i.cb
  store i8 %i.cf, ptr %i.cd, align 1, !tbaa !273
  %i.cg = add nuw nsw i64 %.07.i, 2               ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.i.unr-lcssa, label %.lr.ph.i, !llvm.loop !4

_ZN6duckdb3Bit8FinalizeERNS_8string_tE.exit:      ; preds = %bb.d, %bb.e
  ret void

_ZN6duckdb3Bit9BitLengthENS_8string_tE.exit30:    ; preds = %_ZN6duckdb3Bit9BitLengthENS_8string_tE.exit
  %4 = add i64 %i.z, %1
  %i.ch = sub i64 %i.y, %4
  %i.ci = icmp ult i64 %.0, %i.ch
  br i1 %i.ci, label %_ZN6duckdb3Bit9BitLengthENS_8string_tE.exit30._ZN6duckdb3Bit6GetBitENS_8string_tEm.exit_crit_edge, label %bb.h

_ZN6duckdb3Bit9BitLengthENS_8string_tE.exit30._ZN6duckdb3Bit6GetBitENS_8string_tEm.exit_crit_edge: ; preds = %_ZN6duckdb3Bit9BitLengthENS_8string_tE.exit30
  %.pre = and i64 %.sroa.3.0.extract.shift.i, 255
  br label %_ZN6duckdb3Bit6GetBitENS_8string_tEm.exit

_ZN6duckdb3Bit9BitLengthENS_8string_tE.exit30.thread: ; preds = %_ZN6duckdb3Bit9BitLengthENS_8string_tE.exit.thread
  %5 = add i64 %1, %i.af
  %i.cj = sub i64 %i.ae, %5
  %i.ck = icmp ult i64 %.0, %i.cj
  br i1 %i.ck, label %_ZN6duckdb3Bit6GetBitENS_8string_tEm.exit, label %bb.h

_ZN6duckdb3Bit6GetBitENS_8string_tEm.exit:        ; preds = %_ZN6duckdb3Bit9BitLengthENS_8string_tE.exit30.thread, %_ZN6duckdb3Bit9BitLengthENS_8string_tE.exit30._ZN6duckdb3Bit6GetBitENS_8string_tEm.exit_crit_edge
  %.pre-phi = phi i64 [ %.pre, %_ZN6duckdb3Bit9BitLengthENS_8string_tE.exit30._ZN6duckdb3Bit6GetBitENS_8string_tEm.exit_crit_edge ], [ %i.af, %_ZN6duckdb3Bit9BitLengthENS_8string_tE.exit30.thread ]
  %i.cl = phi ptr [ %i.u, %_ZN6duckdb3Bit9BitLengthENS_8string_tE.exit30._ZN6duckdb3Bit6GetBitENS_8string_tEm.exit_crit_edge ], [ %.sroa.24.0.copyload, %_ZN6duckdb3Bit9BitLengthENS_8string_tE.exit30.thread ]
  %i.cm = add i64 %.0, %1
  %i.cn = add i64 %i.cm, %.pre-phi                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store i64 %.sroa.03.0.copyload, ptr %3, align 8
  store ptr %.sroa.24.0.copyload, ptr %i.t, align 8
  %i.co = lshr i64 %i.cn, 3
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.co
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 1
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !273
  %i.cs = zext i8 %i.cr to i32
  %i.ct = trunc i64 %i.cn to i32
  %i.cu = and i32 %i.ct, 7
  %i.cv = lshr exact i32 128, %i.cu
  %i.cw = and i32 %i.cv, %i.cs
  %.not.i.i.not = icmp eq i32 %i.cw, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.cx = add i64 %.0, %i.s                       ; 2 uses
  %i.cy = load i32, ptr %2, align 8, !tbaa !273
  %i.cz = icmp ult i32 %i.cy, 13
  %i.da = load ptr, ptr %i.d, align 8
  %i.db = select i1 %i.cz, ptr %i.c, ptr %i.da    ; 2 uses
  %i.dc = lshr i64 %i.cx, 3
  %i.dd = add nuw nsw i64 %i.dc, 1                ; 2 uses
  %i.de = trunc i64 %i.cx to i8
  %i.df = and i8 %i.de, 7
  %i.dg = lshr exact i8 -128, %i.df               ; 2 uses
  br i1 %.not.i.i.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN6duckdb3Bit6GetBitENS_8string_tEm.exit
  %i.dh = xor i8 %i.dg, -1
  %i.di = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.dd ; 2 uses
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !273
  %i.dk = and i8 %i.dj, %i.dh
  store i8 %i.dk, ptr %i.di, align 1, !tbaa !273
  br label %_ZN6duckdb3Bit14SetBitInternalERNS_8string_tEmm.exit

bb.g:                                             ; preds = %_ZN6duckdb3Bit6GetBitENS_8string_tEm.exit
  %i.dl = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.dd ; 2 uses
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !273
  %i.dn = or i8 %i.dm, %i.dg
  store i8 %i.dn, ptr %i.dl, align 1, !tbaa !273
  br label %_ZN6duckdb3Bit14SetBitInternalERNS_8string_tEmm.exit

bb.h:                                             ; preds = %_ZN6duckdb3Bit9BitLengthENS_8string_tE.exit30.thread, %_ZN6duckdb3Bit9BitLengthENS_8string_tE.exit30
  %i.do = add i64 %.0, %i.s                       ; 2 uses
  %i.dp = load i32, ptr %2, align 8, !tbaa !273
  %i.dq = icmp ult i32 %i.dp, 13
  %i.dr = load ptr, ptr %i.d, align 8
  %i.ds = select i1 %i.dq, ptr %i.c, ptr %i.dr
  %i.dt = lshr i64 %i.do, 3
  %i.du = trunc i64 %i.do to i8
  %i.dv = and i8 %i.du, 7
  %i.dw = lshr exact i8 -128, %i.dv
  %i.dx = xor i8 %i.dw, -1
  %i.dy = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.dt
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 1 ; 2 uses
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !273
  %i.eb = and i8 %i.ea, %i.dx
  store i8 %i.eb, ptr %i.dz, align 1, !tbaa !273
  br label %_ZN6duckdb3Bit14SetBitInternalERNS_8string_tEmm.exit

_ZN6duckdb3Bit14SetBitInternalERNS_8string_tEmm.exit: ; preds = %bb.g, %bb.f, %bb.h
  %i.ec = add nuw i64 %.0, 1
  br label %bb.b, !llvm.loop !1312
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb3Bit10BitwiseAndERKNS_8string_tES3_RS1_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::allocator.20", align 1 ; 5 uses
  %.sroa.012.0.copyload = load i64, ptr %1, align 8 ; 3 uses
  %.sroa.213.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.213.0.copyload = load ptr, ptr %.sroa.213.0..sroa_idx, align 8, !tbaa !273 ; 2 uses
  %.sroa.0.0.extract.trunc.i = trunc i64 %.sroa.012.0.copyload to i32
  %.sroa.3.0.extract.shift.i = lshr i64 %.sroa.012.0.copyload, 32
  %.sroa.3.0.extract.trunc.i = trunc i64 %.sroa.3.0.extract.shift.i to i8
  %i.a = icmp ult i32 %.sroa.0.0.extract.trunc.i, 13 ; 2 uses
  br i1 %i.a, label %_ZN6duckdb3Bit9BitLengthENS_8string_tE.exit, label %.else.i

.else.i:                                          ; preds = %bb.a
  %.else.val.i = load i8, ptr %.sroa.213.0.copyload, align 1, !tbaa !273
  br label %_ZN6duckdb3Bit9BitLengthENS_8string_tE.exit

_ZN6duckdb3Bit9BitLengthENS_8string_tE.exit:      ; preds = %bb.a, %.else.i
  %i.b = phi i8 [ %.sroa.3.0.extract.trunc.i, %bb.a ], [ %.else.val.i, %.else.i ]
  %i.c = shl i64 %.sroa.012.0.copyload, 3
  %i.d = and i64 %i.c, 34359738360
  %i.e = add nsw i64 %i.d, -8
  %i.f = zext i8 %i.b to i64
  %i.g = sub nsw i64 %i.e, %i.f
  %.sroa.0.0.copyload = load i64, ptr %0, align 8 ; 3 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !273 ; 2 uses
  %.sroa.0.0.extract.trunc.i25 = trunc i64 %.sroa.0.0.copyload to i32
  %.sroa.3.0.extract.shift.i26 = lshr i64 %.sroa.0.0.copyload, 32
  %.sroa.3.0.extract.trunc.i27 = trunc i64 %.sroa.3.0.extract.shift.i26 to i8
  %i.h = icmp ult i32 %.sroa.0.0.extract.trunc.i25, 13 ; 2 uses
  br i1 %i.h, label %_ZN6duckdb3Bit9BitLengthENS_8string_tE.exit30, label %.else.i28

.else.i28:                                        ; preds = %_ZN6duckdb3Bit9BitLengthENS_8string_tE.exit
  %.else.val.i29 = load i8, ptr %.sroa.2.0.copyload, align 1, !tbaa !273
  br label %_ZN6duckdb3Bit9BitLengthENS_8string_tE.exit30

_ZN6duckdb3Bit9BitLengthENS_8string_tE.exit30:    ; preds = %_ZN6duckdb3Bit9BitLengthENS_8string_tE.exit, %.else.i28
  %i.i = phi i8 [ %.sroa.3.0.extract.trunc.i27, %_ZN6duckdb3Bit9BitLengthENS_8string_tE.exit ], [ %.else.val.i29, %.else.i28 ]
  %i.j = shl i64 %.sroa.0.0.copyload, 3
  %i.k = and i64 %i.j, 34359738360
  %i.l = add nsw i64 %i.k, -8
  %i.m = zext i8 %i.i to i64
  %i.n = sub nsw i64 %i.l, %i.m
  %.not = icmp eq i64 %i.g, %i.n
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %_ZN6duckdb3Bit9BitLengthENS_8string_tE.exit30
  %i.o = tail call ptr @__cxa_allocate_exception(i64 16) #46 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #46
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.9, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb21InvalidInputExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTIN6duckdb21InvalidInputExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #49
          to label %bb.k unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #46
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.021 = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.r = load ptr, ptr %3, align 8, !tbaa !235    ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.r) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #46
  br i1 %.021, label %bb.f, label %bb.j

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #46
  br i1 %.021, label %bb.f, label %bb.j

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn34 = phi { ptr, i32 } [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.o) #46
  br label %bb.j

bb.g:                                             ; preds = %_ZN6duckdb3Bit9BitLengthENS_8string_tE.exit30
  %i.u = load i32, ptr %2, align 8, !tbaa !273
  %i.v = icmp ult i32 %i.u, 13
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 7 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = select i1 %i.v, ptr %i.w, ptr %i.y       ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ab = select i1 %i.h, ptr %i.aa, ptr %.sroa.2.0.copyload
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ad = select i1 %i.a, ptr %i.ac, ptr %.sroa.213.0.copyload ; 2 uses
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !273
  store i8 %i.ae, ptr %i.z, align 1, !tbaa !273
  %i.af = load i32, ptr %1, align 8, !tbaa !273
  %i.ag = icmp ugt i32 %i.af, 1
  br i1 %i.ag, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.g
  %i.ah = load i32, ptr %2, align 8, !tbaa !273   ; 2 uses
  %i.ai = icmp ult i32 %i.ah, 13
  %i.aj = load ptr, ptr %i.x, align 8
  %i.ak = select i1 %i.ai, ptr %i.w, ptr %i.aj
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !273 ; 4 uses
  %i.am = zext i8 %i.al to i64                    ; 2 uses
  %.not.i = icmp eq i8 %i.al, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %._crit_edge
  %xtraiter = and i64 %i.am, 1
  %i.an = icmp eq i8 %i.al, 1
  br i1 %i.an, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
end_hunk_0
