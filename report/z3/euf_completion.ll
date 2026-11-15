Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/euf_completion?download=true
inline.NumInlined: 2934
inline.NumDeleted: 1158
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 23
begin_hunk_0_@_ZN3euf10completion10watch_ruleEPNS_5enodeES2_:bb.a
  %i.q = load ptr, ptr %1, align 8, !tbaa !368    ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 832
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !300
  %i.t = icmp eq ptr %i.q, %i.s
  br i1 %i.t, label %.lr.ph45, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 840
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !302
  %i.w = icmp eq ptr %i.q, %i.v
  br i1 %i.w, label %.lr.ph45, label %_ZNK6vectorI10ptr_vectorIN3euf10completion16conditional_ruleEELb1EjE4sizeEv.exit.thread.i

.lr.ph45:                                         ; preds = %bb.d, %bb.c
  %i.x = zext i32 %i.m to i64
  %.idx = shl nuw nsw i64 %i.x, 3
  %i.y = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 2136 ; 3 uses
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph45, %bb.i
  %.02644 = phi ptr [ %i.j, %.lr.ph45 ], [ %i.ar, %bb.i ] ; 2 uses
  %i.aa = load ptr, ptr %.02644, align 8, !tbaa !356 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 53 ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !359, !range !353, !noundef !238
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i8 1, ptr %i.ab, align 1, !tbaa !359
  %i.ae = load ptr, ptr %i.z, align 8, !tbaa !325 ; 4 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ag = getelementptr inbounds i8, ptr %i.ae, i64 -4
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !314 ; 2 uses
  %i.ai = getelementptr inbounds i8, ptr %i.ae, i64 -8
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !314
  %i.ak = icmp eq i32 %i.ah, %i.aj
  br i1 %i.ak, label %bb.h, label %_ZN6vectorIPN3euf10completion16conditional_ruleELb0EjE9push_backERKS3_.exit

bb.h:                                             ; preds = %bb.g, %bb.f
  tail call void @_ZN6vectorIPN3euf10completion16conditional_ruleELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.z)
  %.pre.i = load ptr, ptr %i.z, align 8, !tbaa !325 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.pre.i, i64 -4
  %.pre2.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !314
  br label %_ZN6vectorIPN3euf10completion16conditional_ruleELb0EjE9push_backERKS3_.exit

_ZN6vectorIPN3euf10completion16conditional_ruleELb0EjE9push_backERKS3_.exit: ; preds = %bb.g, %bb.h
  %i.al = phi i32 [ %.pre2.i, %bb.h ], [ %i.ah, %bb.g ] ; 2 uses
  %i.am = phi ptr [ %.pre.i, %bb.h ], [ %i.ae, %bb.g ] ; 2 uses
  %i.an = getelementptr inbounds i8, ptr %i.am, i64 -4
  %i.ao = zext i32 %i.al to i64
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.ao
  store ptr %i.aa, ptr %i.ap, align 8, !tbaa !356
  %i.aq = add i32 %i.al, 1
  store i32 %i.aq, ptr %i.an, align 4, !tbaa !314
  br label %bb.i

bb.i:                                             ; preds = %_ZN6vectorIPN3euf10completion16conditional_ruleELb0EjE9push_backERKS3_.exit, %bb.e
  %i.ar = getelementptr inbounds nuw i8, ptr %.02644, i64 8 ; 2 uses
  %.not29 = icmp eq ptr %i.ar, %i.y
  br i1 %.not29, label %_ZNK6vectorI10ptr_vectorIN3euf10completion16conditional_ruleEELb1EjE4sizeEv.exit.thread, label %bb.e

_ZNK6vectorI10ptr_vectorIN3euf10completion16conditional_ruleEELb1EjE4sizeEv.exit.thread.i: ; preds = %bb.d
  %i.as = load i32, ptr %i.q, align 4, !tbaa !369 ; 3 uses
  %i.at = add i32 %i.as, 1                        ; 4 uses
  %i.au = icmp ugt i32 %i.at, %i.g
  br i1 %i.au, label %_ZNK6vectorI10ptr_vectorIN3euf10completion16conditional_ruleEELb1EjE4sizeEv.exit.i.i, label %_ZN6vectorIPN3euf10completion16conditional_ruleELb0EjE3endEv.exit31

_ZNK6vectorI10ptr_vectorIN3euf10completion16conditional_ruleEELb1EjE4sizeEv.exit.i.i: ; preds = %_ZNK6vectorI10ptr_vectorIN3euf10completion16conditional_ruleEELb1EjE4sizeEv.exit.thread.i, %_ZNK6vectorI10ptr_vectorIN3euf10completion16conditional_ruleEELb1EjE8capacityEv.exit.thread.i.i
  %.pr.i.i = phi ptr [ %.pr.pre.i.i, %_ZNK6vectorI10ptr_vectorIN3euf10completion16conditional_ruleEELb1EjE8capacityEv.exit.thread.i.i ], [ %i.d, %_ZNK6vectorI10ptr_vectorIN3euf10completion16conditional_ruleEELb1EjE4sizeEv.exit.thread.i ] ; 5 uses
  %i.av = icmp eq ptr %.pr.i.i, null
  br i1 %i.av, label %_ZNK6vectorI10ptr_vectorIN3euf10completion16conditional_ruleEELb1EjE8capacityEv.exit.thread.i.i, label %_ZNK6vectorI10ptr_vectorIN3euf10completion16conditional_ruleEELb1EjE8capacityEv.exit.i.i

_ZNK6vectorI10ptr_vectorIN3euf10completion16conditional_ruleEELb1EjE8capacityEv.exit.i.i: ; preds = %_ZNK6vectorI10ptr_vectorIN3euf10completion16conditional_ruleEELb1EjE4sizeEv.exit.i.i
  %i.aw = getelementptr inbounds i8, ptr %.pr.i.i, i64 -8
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !314
  %i.ay = icmp ugt i32 %i.at, %i.ax
  br i1 %i.ay, label %_ZNK6vectorI10ptr_vectorIN3euf10completion16conditional_ruleEELb1EjE8capacityEv.exit.thread.i.i, label %_ZN6vectorI10ptr_vectorIN3euf10completion16conditional_ruleEELb1EjE7reserveEj.exit

_ZNK6vectorI10ptr_vectorIN3euf10completion16conditional_ruleEELb1EjE8capacityEv.exit.thread.i.i: ; preds = %_ZNK6vectorI10ptr_vectorIN3euf10completion16conditional_ruleEELb1EjE8capacityEv.exit.i.i, %_ZNK6vectorI10ptr_vectorIN3euf10completion16conditional_ruleEELb1EjE4sizeEv.exit.i.i
  tail call void @_ZN6vectorI10ptr_vectorIN3euf10completion16conditional_ruleEELb1EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  %.pr.pre.i.i = load ptr, ptr %i.c, align 8, !tbaa !243
  br label %_ZNK6vectorI10ptr_vectorIN3euf10completion16conditional_ruleEELb1EjE4sizeEv.exit.i.i, !llvm.loop !7

_ZN6vectorI10ptr_vectorIN3euf10completion16conditional_ruleEELb1EjE7reserveEj.exit: ; preds = %_ZNK6vectorI10ptr_vectorIN3euf10completion16conditional_ruleEELb1EjE8capacityEv.exit.i.i
  %i.az = getelementptr inbounds i8, ptr %.pr.i.i, i64 -4
  store i32 %i.at, ptr %i.az, align 4, !tbaa !314
  %i.ba = zext i32 %i.at to i64
  %i.bb = zext i32 %i.g to i64                    ; 2 uses
  %i.bc = getelementptr [8 x i8], ptr %.pr.i.i, i64 %i.bb
  %i.bd = sub nuw nsw i64 %i.ba, %i.bb
  %i.be = shl nuw nsw i64 %i.bd, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.bc, i8 0, i64 %i.be, i1 false), !tbaa !325
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %.pr.i.i, i64 %i.h
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !325 ; 2 uses
  %i.bf = icmp eq ptr %.pre, null
  br i1 %i.bf, label %_ZNK6vectorI10ptr_vectorIN3euf10completion16conditional_ruleEELb1EjE4sizeEv.exit.thread, label %_ZN6vectorIPN3euf10completion16conditional_ruleELb0EjE3endEv.exit31

_ZN6vectorIPN3euf10completion16conditional_ruleELb0EjE3endEv.exit31: ; preds = %_ZNK6vectorI10ptr_vectorIN3euf10completion16conditional_ruleEELb1EjE4sizeEv.exit.thread.i, %_ZN6vectorI10ptr_vectorIN3euf10completion16conditional_ruleEELb1EjE7reserveEj.exit
  %i.bg = phi ptr [ %.pre, %_ZN6vectorI10ptr_vectorIN3euf10completion16conditional_ruleEELb1EjE7reserveEj.exit ], [ %i.j, %_ZNK6vectorI10ptr_vectorIN3euf10completion16conditional_ruleEELb1EjE4sizeEv.exit.thread.i ] ; 3 uses
  %i.bh = getelementptr inbounds i8, ptr %i.bg, i64 -4
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !314 ; 2 uses
  %i.bj = zext i32 %i.bi to i64
  %i.bk = shl nuw nsw i64 %i.bj, 3
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bk
  %.not2841 = icmp eq i32 %i.bi, 0
  br i1 %.not2841, label %_ZNK6vectorI10ptr_vectorIN3euf10completion16conditional_ruleEELb1EjE4sizeEv.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN6vectorIPN3euf10completion16conditional_ruleELb0EjE3endEv.exit31
  %i.bm = zext i32 %i.as to i64
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph, %bb.n
  %.042 = phi ptr [ %i.bg, %.lr.ph ], [ %i.cx, %bb.n ] ; 2 uses
  %i.bn = load ptr, ptr %.042, align 8, !tbaa !356
  %i.bo = load ptr, ptr %i.c, align 8, !tbaa !243
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.bm ; 3 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !325 ; 4 uses
  %i.br = icmp eq ptr %i.bq, null
  br i1 %i.br, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bs = getelementptr inbounds i8, ptr %i.bq, i64 -4
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !314 ; 2 uses
  %i.bu = getelementptr inbounds i8, ptr %i.bq, i64 -8
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !314
  %i.bw = icmp eq i32 %i.bt, %i.bv
  br i1 %i.bw, label %bb.l, label %_ZN6vectorIPN3euf10completion16conditional_ruleELb0EjE9push_backERKS3_.exit35

bb.l:                                             ; preds = %bb.k, %bb.j
  tail call void @_ZN6vectorIPN3euf10completion16conditional_ruleELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bp)
  %.pre.i32 = load ptr, ptr %i.bp, align 8, !tbaa !325 ; 2 uses
  %.phi.trans.insert.i33 = getelementptr inbounds i8, ptr %.pre.i32, i64 -4
  %.pre2.i34 = load i32, ptr %.phi.trans.insert.i33, align 4, !tbaa !314
  br label %_ZN6vectorIPN3euf10completion16conditional_ruleELb0EjE9push_backERKS3_.exit35

_ZN6vectorIPN3euf10completion16conditional_ruleELb0EjE9push_backERKS3_.exit35: ; preds = %bb.k, %bb.l
  %i.bx = phi i32 [ %.pre2.i34, %bb.l ], [ %i.bt, %bb.k ] ; 2 uses
  %i.by = phi ptr [ %.pre.i32, %bb.l ], [ %i.bq, %bb.k ] ; 2 uses
  %i.bz = getelementptr inbounds i8, ptr %i.by, i64 -4
  %i.ca = zext i32 %i.bx to i64
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.ca
  store ptr %i.bn, ptr %i.cb, align 8, !tbaa !356
  %i.cc = add i32 %i.bx, 1
  store i32 %i.cc, ptr %i.bz, align 4, !tbaa !314
  %i.cd = load ptr, ptr %0, align 8, !tbaa !36
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 88
  %i.cf = load ptr, ptr %i.ce, align 8
  %i.cg = tail call noundef nonnull align 8 dereferenceable(56) ptr %i.cf(ptr noundef nonnull align 8 dereferenceable(2144) %0) ; 4 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %i.ci = tail call noundef ptr @_ZN6region8allocateEm(ptr noundef nonnull align 8 dereferenceable(40) %i.ch, i64 noundef 24) ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN3euf10completion15push_watch_ruleE, i64 16), ptr %i.ci, align 8, !tbaa !36
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  store ptr %i.c, ptr %i.cj, align 8
  %.sroa.6.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  store i32 %i.as, ptr %.sroa.6.8..sroa_idx, align 8
  %i.ck = load ptr, ptr %i.cg, align 8, !tbaa !372 ; 4 uses
  %i.cl = icmp eq ptr %i.ck, null
  br i1 %i.cl, label %.noexc36, label %bb.m

bb.m:                                             ; preds = %_ZN6vectorIPN3euf10completion16conditional_ruleELb0EjE9push_backERKS3_.exit35
  %i.cm = getelementptr inbounds i8, ptr %i.ck, i64 -4
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !314 ; 2 uses
  %i.co = getelementptr inbounds i8, ptr %i.ck, i64 -8
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !314
  %i.cq = icmp eq i32 %i.cn, %i.cp
  br i1 %i.cq, label %.noexc36, label %bb.n

.noexc36:                                         ; preds = %bb.m, %_ZN6vectorIPN3euf10completion16conditional_ruleELb0EjE9push_backERKS3_.exit35
  tail call void @_ZN6vectorIP5trailLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(56) %i.cg)
  %.pre.i.i = load ptr, ptr %i.cg, align 8, !tbaa !372 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds i8, ptr %.pre.i.i, i64 -4
  %.pre2.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !314
  br label %bb.n

bb.n:                                             ; preds = %.noexc36, %bb.m
  %i.cr = phi i32 [ %.pre2.i.i, %.noexc36 ], [ %i.cn, %bb.m ] ; 2 uses
  %i.cs = phi ptr [ %.pre.i.i, %.noexc36 ], [ %i.ck, %bb.m ] ; 2 uses
  %i.ct = getelementptr inbounds i8, ptr %i.cs, i64 -4
  %i.cu = zext i32 %i.cr to i64
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %i.cu
  store ptr %i.ci, ptr %i.cv, align 8, !tbaa !374
  %i.cw = add i32 %i.cr, 1
  store i32 %i.cw, ptr %i.ct, align 4, !tbaa !314
  %i.cx = getelementptr inbounds nuw i8, ptr %.042, i64 8 ; 2 uses
  %.not28 = icmp eq ptr %i.cx, %i.bl
  br i1 %.not28, label %_ZNK6vectorI10ptr_vectorIN3euf10completion16conditional_ruleEELb1EjE4sizeEv.exit.thread, label %bb.j

_ZNK6vectorI10ptr_vectorIN3euf10completion16conditional_ruleEELb1EjE4sizeEv.exit.thread: ; preds = %bb.n, %bb.i, %_ZN6vectorI10ptr_vectorIN3euf10completion16conditional_ruleEELb1EjE7reserveEj.exit, %_ZN6vectorIPN3euf10completion16conditional_ruleELb0EjE3endEv.exit31, %bb.b, %bb.a, %_ZNK6vectorIPN3euf10completion16conditional_ruleELb0EjE5emptyEv.exit, %_ZNK6vectorI10ptr_vectorIN3euf10completion16conditional_ruleEELb1EjE4sizeEv.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN3euf10completion6reduceEv(ptr noundef nonnull align 8 dereferenceable(2144) initializes((2080, 2081)) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
.lr.ph:
  %1 = alloca %class.symbol, align 8              ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2080 ; 3 uses
  store i8 1, ptr %i.a, align 8, !tbaa !375
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1100 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1640 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2060 ; 2 uses
  br label %bb.a

bb.a:                                             ; preds = %.lr.ph, %bb.q
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.q ] ; 4 uses
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !351, !nonnull !238, !align !239
  %i.h = tail call noundef zeroext i1 @_ZN8reslimit3incEv(ptr noundef nonnull align 8 dereferenceable(952) %i.g)
  br i1 %i.h, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.i = load i8, ptr %i.c, align 4, !tbaa !352, !range !353, !noundef !238
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !354, !nonnull !238, !align !239 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !36
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call noundef zeroext i1 %i.n(ptr noundef nonnull align 8 dereferenceable(152) %i.k), !inline_history !376
  br i1 %i.o, label %.critedge, label %_ZN3euf10completion11should_stopEv.exit

_ZN3euf10completion11should_stopEv.exit:          ; preds = %bb.c
  %i.p = load ptr, ptr %0, align 8, !tbaa !36
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 120
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = tail call noundef zeroext i1 %i.r(ptr noundef nonnull align 8 dereferenceable(2144) %0), !inline_history !376
  br i1 %i.s, label %.critedge, label %bb.g

.critedge:                                        ; preds = %_ZN3euf10completion11should_stopEv.exit, %bb.q, %bb.c, %bb.b, %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !354, !nonnull !238, !align !239 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !36
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = tail call noundef i32 %i.x(ptr noundef nonnull align 8 dereferenceable(152) %i.u), !inline_history !618 ; 2 uses
  %i.z = load ptr, ptr %i.t, align 8, !tbaa !354, !nonnull !238, !align !239
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !386 ; 2 uses
  %i.ac = icmp ult i32 %i.ab, %i.y
  br i1 %i.ac, label %.lr.ph.i, label %_ZN3euf10completion15map_congruencesEv.exit

.lr.ph.i:                                         ; preds = %.critedge, %bb.f
  %.07.i = phi i32 [ %i.az, %bb.f ], [ %i.ab, %.critedge ] ; 2 uses
  %i.ad = load ptr, ptr %i.t, align 8, !tbaa !354, !nonnull !238, !align !239 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !36
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = call noundef nonnull align 8 dereferenceable(32) ptr %i.ag(ptr noundef nonnull align 8 dereferenceable(152) %i.ad, i32 noundef %.07.i), !inline_history !622
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !333, !noalias !623 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %i.al = load i32, ptr %i.ak, align 4
  %i.am = and i32 %i.al, 65535
  %i.an = icmp eq i32 %i.am, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  br i1 %i.an, label %bb.d, label %_ZNK3euf10completion14is_congruencesEP4expr.exit.thread.i

bb.d:                                             ; preds = %.lr.ph.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !391
  %i.aq = icmp eq i32 %i.ap, 1
  br i1 %i.aq, label %_ZNK3euf10completion14is_congruencesEP4expr.exit.i, label %_ZNK3euf10completion14is_congruencesEP4expr.exit.thread.i

_ZNK3euf10completion14is_congruencesEP4expr.exit.thread.i: ; preds = %bb.d, %.lr.ph.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  br label %bb.f

_ZNK3euf10completion14is_congruencesEP4expr.exit.i: ; preds = %bb.d
  call void @_ZN6symbolC1EPKc(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.35)
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !392
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.au = load ptr, ptr %1, align 8, !tbaa !315
  %i.av = load ptr, ptr %i.at, align 8, !tbaa !315
  %i.aw = icmp eq ptr %i.au, %i.av
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  br i1 %i.aw, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNK3euf10completion14is_congruencesEP4expr.exit.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !333
  call void @_ZN3euf10completion14map_congruenceEP4expr(ptr noundef nonnull align 8 dereferenceable(2144) %0, ptr noundef %i.ay)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZNK3euf10completion14is_congruencesEP4expr.exit.i, %_ZNK3euf10completion14is_congruencesEP4expr.exit.thread.i
  %i.az = add nuw i32 %.07.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.az, %i.y
  br i1 %exitcond.not.i, label %_ZN3euf10completion15map_congruencesEv.exit, label %.lr.ph.i, !llvm.loop !8

_ZN3euf10completion15map_congruencesEv.exit:      ; preds = %bb.f, %.critedge
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 1520
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !218 ; 4 uses
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %._crit_edge, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit: ; preds = %_ZN3euf10completion15map_congruencesEv.exit
  %i.bd = getelementptr inbounds i8, ptr %i.bb, i64 -4
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !314 ; 2 uses
  %i.bf = zext i32 %i.be to i64
  %i.bg = shl nuw nsw i64 %i.bf, 3
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bg
  %.not20 = icmp eq i32 %i.be, 0
  br i1 %.not20, label %._crit_edge, label %.lr.ph22

bb.g:                                             ; preds = %_ZN3euf10completion11should_stopEv.exit
  %i.bi = load i32, ptr %i.e, align 8, !tbaa !235
  %i.bj = add i32 %i.bi, 1
  store i32 %i.bj, ptr %i.e, align 8, !tbaa !235
  store i8 0, ptr %i.a, align 8, !tbaa !375
  tail call void @_ZN3euf10completion10add_egraphEv(ptr noundef nonnull align 8 dereferenceable(2144) %0)
  tail call void @_ZN3euf10completion13map_canonicalEv(ptr noundef nonnull align 8 dereferenceable(2144) %0)
  tail call void @_ZN3euf10completion11read_egraphEv(ptr noundef nonnull align 8 dereferenceable(2144) %0)
  %i.bk = tail call noundef i32 @_Z19get_verbosity_levelv()
  %.not13 = icmp eq i32 %i.bk, 0
  br i1 %.not13, label %bb.q, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bl = tail call noundef zeroext i1 @_Z11is_threadedv()
  br i1 %i.bl, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  tail call void @_Z12verbose_lockv()
  %i.bm = tail call noundef nonnull align 8 dereferenceable(8) ptr @_Z14verbose_streamv() ; 2 uses
  %i.bn = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bm, ptr noundef nonnull @.str, i64 noundef 24) ; 0 uses
  %i.bo = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.bm, i64 noundef %indvars.iv) ; 2 uses
  %i.bp = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bo, ptr noundef nonnull @.str.1, i64 noundef 12) ; 0 uses
  %i.bq = load i32, ptr %i.f, align 4, !tbaa !393
  %i.br = zext i32 %i.bq to i64
  %i.bs = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.bo, i64 noundef %i.br) ; 2 uses
  %i.bt = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bs, ptr noundef nonnull @.str.2, i64 noundef 7) ; 0 uses
  %i.bu = load ptr, ptr %i.b, align 8, !tbaa !351, !nonnull !238, !align !239
  %i.bv = tail call noundef zeroext i1 @_ZN8reslimit3incEv(ptr noundef nonnull align 8 dereferenceable(952) %i.bu)
  br i1 %i.bv, label %bb.j, label %_ZN3euf10completion11should_stopEv.exit14

bb.j:                                             ; preds = %bb.i
  %i.bw = load i8, ptr %i.c, align 4, !tbaa !352, !range !353, !noundef !238
  %i.bx = trunc nuw i8 %i.bw to i1
  br i1 %i.bx, label %_ZN3euf10completion11should_stopEv.exit14, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.by = load ptr, ptr %i.d, align 8, !tbaa !354, !nonnull !238, !align !239 ; 2 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !36
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 48
  %i.cb = load ptr, ptr %i.ca, align 8
  %i.cc = tail call noundef zeroext i1 %i.cb(ptr noundef nonnull align 8 dereferenceable(152) %i.by), !inline_history !376
  br i1 %i.cc, label %_ZN3euf10completion11should_stopEv.exit14, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cd = load ptr, ptr %0, align 8, !tbaa !36
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 120
  %i.cf = load ptr, ptr %i.ce, align 8
  %i.cg = tail call noundef zeroext i1 %i.cf(ptr noundef nonnull align 8 dereferenceable(2144) %0), !inline_history !376
  br label %_ZN3euf10completion11should_stopEv.exit14

_ZN3euf10completion11should_stopEv.exit14:        ; preds = %bb.i, %bb.j, %bb.k, %bb.l
  %i.ch = phi i1 [ true, %bb.k ], [ true, %bb.j ], [ true, %bb.i ], [ %i.cg, %bb.l ]
  %i.ci = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIbEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.bs, i1 noundef zeroext %i.ch)
  %i.cj = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ci, ptr noundef nonnull @.str.3, i64 noundef 2) ; 0 uses
  tail call void @_Z14verbose_unlockv()
  br label %bb.q

bb.m:                                             ; preds = %bb.h
  %i.ck = tail call noundef nonnull align 8 dereferenceable(8) ptr @_Z14verbose_streamv() ; 2 uses
  %i.cl = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ck, ptr noundef nonnull @.str, i64 noundef 24) ; 0 uses
  %i.cm = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ck, i64 noundef %indvars.iv) ; 2 uses
  %i.cn = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cm, ptr noundef nonnull @.str.1, i64 noundef 12) ; 0 uses
  %i.co = load i32, ptr %i.f, align 4, !tbaa !393
  %i.cp = zext i32 %i.co to i64
  %i.cq = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.cm, i64 noundef %i.cp) ; 2 uses
  %i.cr = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cq, ptr noundef nonnull @.str.2, i64 noundef 7) ; 0 uses
  %i.cs = load ptr, ptr %i.b, align 8, !tbaa !351, !nonnull !238, !align !239
  %i.ct = tail call noundef zeroext i1 @_ZN8reslimit3incEv(ptr noundef nonnull align 8 dereferenceable(952) %i.cs)
  br i1 %i.ct, label %bb.n, label %_ZN3euf10completion11should_stopEv.exit15

bb.n:                                             ; preds = %bb.m
  %i.cu = load i8, ptr %i.c, align 4, !tbaa !352, !range !353, !noundef !238
  %i.cv = trunc nuw i8 %i.cu to i1
  br i1 %i.cv, label %_ZN3euf10completion11should_stopEv.exit15, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cw = load ptr, ptr %i.d, align 8, !tbaa !354, !nonnull !238, !align !239 ; 2 uses
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !36
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 48
  %i.cz = load ptr, ptr %i.cy, align 8
  %i.da = tail call noundef zeroext i1 %i.cz(ptr noundef nonnull align 8 dereferenceable(152) %i.cw), !inline_history !376
  br i1 %i.da, label %_ZN3euf10completion11should_stopEv.exit15, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.db = load ptr, ptr %0, align 8, !tbaa !36
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 120
  %i.dd = load ptr, ptr %i.dc, align 8
  %i.de = tail call noundef zeroext i1 %i.dd(ptr noundef nonnull align 8 dereferenceable(2144) %0), !inline_history !376
  br label %_ZN3euf10completion11should_stopEv.exit15

_ZN3euf10completion11should_stopEv.exit15:        ; preds = %bb.m, %bb.n, %bb.o, %bb.p
  %i.df = phi i1 [ true, %bb.o ], [ true, %bb.n ], [ true, %bb.m ], [ %i.de, %bb.p ]
  %i.dg = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIbEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.cq, i1 noundef zeroext %i.df)
  %i.dh = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dg, ptr noundef nonnull @.str.3, i64 noundef 2) ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.g, %_ZN3euf10completion11should_stopEv.exit15, %_ZN3euf10completion11should_stopEv.exit14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.di = load i8, ptr %i.a, align 8, !tbaa !375, !range !353, !noundef !238
  %i.dj = trunc nuw i8 %i.di to i1
  %i.dk = icmp samesign ult i64 %indvars.iv, 3
  %or.cond = select i1 %i.dj, i1 %i.dk, i1 false
  br i1 %or.cond, label %bb.a, label %.critedge, !llvm.loop !621

._crit_edge:                                      ; preds = %.lr.ph22, %_ZN3euf10completion15map_congruencesEv.exit, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit
  ret void

.lr.ph22:                                         ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit, %.lr.ph22
  %.01221 = phi ptr [ %i.dm, %.lr.ph22 ], [ %i.bb, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit ] ; 2 uses
  %i.dl = load ptr, ptr %.01221, align 8, !tbaa !333
  call void @_ZN3euf10completion15add_consequenceEP4expr(ptr noundef nonnull align 8 dereferenceable(2144) %0, ptr noundef %i.dl)
  %i.dm = getelementptr inbounds nuw i8, ptr %.01221, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.dm, %i.bh
  br i1 %.not, label %._crit_edge, label %.lr.ph22
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN3euf10completion10add_egraphEv(ptr noundef nonnull align 8 dereferenceable(2144) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1456
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !347  ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZN6vectorIPN3euf5enodeELb0EjE5resetEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -4
  store i32 0, ptr %i.c, align 4, !tbaa !314
  br label %_ZN6vectorIPN3euf5enodeELb0EjE5resetEv.exit

_ZN6vectorIPN3euf5enodeELb0EjE5resetEv.exit:      ; preds = %bb.a, %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !354, !nonnull !238, !align !239 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !36
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef i32 %i.h(ptr noundef nonnull align 8 dereferenceable(152) %i.e), !inline_history !9 ; 2 uses
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !354, !nonnull !238, !align !239
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load i32, ptr %i.k, align 8, !tbaa !386  ; 2 uses
  %i.m = icmp ult i32 %i.l, %i.i
  br i1 %i.m, label %.lr.ph, label %.lr.ph11

.lr.ph11:                                         ; preds = %.lr.ph, %_ZN6vectorIPN3euf5enodeELb0EjE5resetEv.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 2081 ; 4 uses
  store i8 1, ptr %i.n, align 1, !tbaa !394
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1100 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 864
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1408
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 2136 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 2060 ; 2 uses
  br label %bb.c

.lr.ph:                                           ; preds = %_ZN6vectorIPN3euf5enodeELb0EjE5resetEv.exit, %.lr.ph
  %.09 = phi i32 [ %i.af, %.lr.ph ], [ %i.l, %_ZN6vectorIPN3euf5enodeELb0EjE5resetEv.exit ] ; 2 uses
  %i.u = load ptr, ptr %i.d, align 8, !tbaa !354, !nonnull !238, !align !239 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !36
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = tail call noundef nonnull align 8 dereferenceable(32) ptr %i.x(ptr noundef nonnull align 8 dereferenceable(152) %i.u, i32 noundef %.09) ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !343, !noalias !629
  %i.ad = load ptr, ptr %i.aa, align 8, !tbaa !345, !noalias !629
  %i.ae = load ptr, ptr %i.z, align 8, !tbaa !333, !noalias !629
  tail call void @_ZN3euf10completion14add_constraintEP4exprP3appPN18dependency_managerIN11ast_manager22expr_dependency_configEE10dependencyE(ptr noundef nonnull align 8 dereferenceable(2144) %0, ptr noundef %i.ae, ptr noundef %i.ad, ptr noundef %i.ac)
  %i.af = add i32 %.09, 1                         ; 2 uses
  %exitcond.not = icmp eq i32 %i.af, %i.i
  br i1 %exitcond.not, label %.lr.ph11, label %.lr.ph, !llvm.loop !626

bb.c:                                             ; preds = %.lr.ph11, %_ZN3euf10completion11should_stopEv.exit8.thread
  %i.ag = load ptr, ptr %i.o, align 8, !tbaa !351, !nonnull !238, !align !239
  %i.ah = tail call noundef zeroext i1 @_ZN8reslimit3incEv(ptr noundef nonnull align 8 dereferenceable(952) %i.ag)
  br i1 %i.ah, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.ai = load i8, ptr %i.p, align 4, !tbaa !352, !range !353, !noundef !238
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ak = load ptr, ptr %i.d, align 8, !tbaa !354, !nonnull !238, !align !239 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !36
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 48
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = tail call noundef zeroext i1 %i.an(ptr noundef nonnull align 8 dereferenceable(152) %i.ak), !inline_history !376
  br i1 %i.ao, label %.critedge, label %_ZN3euf10completion11should_stopEv.exit

_ZN3euf10completion11should_stopEv.exit:          ; preds = %bb.e
  %i.ap = load ptr, ptr %0, align 8, !tbaa !36
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 120
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = tail call noundef zeroext i1 %i.ar(ptr noundef nonnull align 8 dereferenceable(2144) %0), !inline_history !376
  br i1 %i.as, label %.critedge, label %bb.f

bb.f:                                             ; preds = %_ZN3euf10completion11should_stopEv.exit
  store i8 0, ptr %i.n, align 1, !tbaa !394
  %i.at = tail call noundef zeroext i1 @_ZN3euf6egraph9propagateEv(ptr noundef nonnull align 8 dereferenceable(536) %i.q) ; 0 uses
  %i.au = load ptr, ptr %i.r, align 8, !tbaa !217 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !36
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  %i.ax = load ptr, ptr %i.aw, align 8
  tail call void %i.ax(ptr noundef nonnull align 8 dereferenceable(8) %i.au)
  tail call void @_ZN3euf10completion19flush_binding_queueEv(ptr noundef nonnull align 8 dereferenceable(2144) %0)
  %i.ay = load ptr, ptr %i.s, align 8, !tbaa !325 ; 2 uses
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %_ZN3euf10completion15propagate_rulesEv.exit, label %_ZNK6vectorIPN3euf10completion16conditional_ruleELb0EjE4sizeEv.exit.i

_ZNK6vectorIPN3euf10completion16conditional_ruleELb0EjE4sizeEv.exit.i: ; preds = %bb.f, %bb.j
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.j ], [ 0, %bb.f ] ; 3 uses
  %i.ba = phi ptr [ %i.dh, %bb.j ], [ %i.ay, %bb.f ]
  %i.bb = getelementptr inbounds i8, ptr %i.ba, i64 -4
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !314
  %i.bd = zext i32 %i.bc to i64
  %i.be = icmp samesign ult i64 %indvars.iv.i, %i.bd
  br i1 %i.be, label %bb.g, label %.critedge.i

bb.g:                                             ; preds = %_ZNK6vectorIPN3euf10completion16conditional_ruleELb0EjE4sizeEv.exit.i
  %i.bf = load ptr, ptr %i.o, align 8, !tbaa !351, !nonnull !238, !align !239
  %i.bg = tail call noundef zeroext i1 @_ZN8reslimit3incEv(ptr noundef nonnull align 8 dereferenceable(952) %i.bf)
  br i1 %i.bg, label %bb.h, label %.critedge.i

bb.h:                                             ; preds = %bb.g
  %i.bh = load i8, ptr %i.p, align 4, !tbaa !352, !range !353, !noundef !238
  %i.bi = trunc nuw i8 %i.bh to i1
  br i1 %i.bi, label %.critedge.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bj = load ptr, ptr %i.d, align 8, !tbaa !354, !nonnull !238, !align !239 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !36
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 48
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = tail call noundef zeroext i1 %i.bm(ptr noundef nonnull align 8 dereferenceable(152) %i.bj), !inline_history !630
  br i1 %i.bn, label %.critedge.i, label %_ZN3euf10completion11should_stopEv.exit.i

_ZN3euf10completion11should_stopEv.exit.i:        ; preds = %bb.i
  %i.bo = load ptr, ptr %0, align 8, !tbaa !36
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 120
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = tail call noundef zeroext i1 %i.bq(ptr noundef nonnull align 8 dereferenceable(2144) %0), !inline_history !630
  br i1 %i.br, label %.critedge.i, label %bb.j

.critedge.i:                                      ; preds = %_ZN3euf10completion11should_stopEv.exit.i, %bb.i, %bb.h, %bb.g, %_ZNK6vectorIPN3euf10completion16conditional_ruleELb0EjE4sizeEv.exit.i
  %.pre.pr.i = load ptr, ptr %i.s, align 8, !tbaa !325 ; 5 uses
  %i.bs = icmp eq ptr %.pre.pr.i, null
  br i1 %i.bs, label %_ZN3euf10completion15propagate_rulesEv.exit, label %_ZN6vectorIPN3euf10completion16conditional_ruleELb0EjE3endEv.exit.i.i

_ZN6vectorIPN3euf10completion16conditional_ruleELb0EjE3endEv.exit.i.i: ; preds = %.critedge.i
  %i.bt = getelementptr inbounds i8, ptr %.pre.pr.i, i64 -4 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !314 ; 2 uses
  %i.bv = zext i32 %i.bu to i64
  %i.bw = shl nuw nsw i64 %i.bv, 3                ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.pre.pr.i, i64 %i.bw
  %.not8.i.i = icmp eq i32 %i.bu, 0
  br i1 %.not8.i.i, label %.loopexit.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_ZN6vectorIPN3euf10completion16conditional_ruleELb0EjE3endEv.exit.i.i
  %i.by = add nsw i64 %i.bw, -8                   ; 2 uses
  %i.bz = lshr exact i64 %i.by, 3
  %i.ca = add nuw nsw i64 %i.bz, 1
  %xtraiter = and i64 %i.ca, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.09.i.i.prol = phi ptr [ %i.cd, %.lr.ph.i.i.prol ], [ %.pre.pr.i, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.cb = load ptr, ptr %.09.i.i.prol, align 8, !tbaa !356
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 53
  store i8 0, ptr %i.cc, align 1, !tbaa !359
  %i.cd = getelementptr inbounds nuw i8, ptr %.09.i.i.prol, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !627

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.09.i.i.unr = phi ptr [ %.pre.pr.i, %.lr.ph.i.i.preheader ], [ %i.cd, %.lr.ph.i.i.prol ]
  %i.ce = icmp ult i64 %i.by, 56
  br i1 %i.ce, label %.loopexit.i.i, label %.lr.ph.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %_ZN6vectorIPN3euf10completion16conditional_ruleELb0EjE3endEv.exit.i.i
  store i32 0, ptr %i.bt, align 4, !tbaa !314
  br label %_ZN3euf10completion15propagate_rulesEv.exit

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.09.i.i = phi ptr [ %i.dc, %.lr.ph.i.i ], [ %.09.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 9 uses
  %i.cf = load ptr, ptr %.09.i.i, align 8, !tbaa !356
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 53
  store i8 0, ptr %i.cg, align 1, !tbaa !359
  %i.ch = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !356
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 53
  store i8 0, ptr %i.cj, align 1, !tbaa !359
  %i.ck = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 16
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !356
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 53
  store i8 0, ptr %i.cm, align 1, !tbaa !359
  %i.cn = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 24
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !356
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 53
  store i8 0, ptr %i.cp, align 1, !tbaa !359
  %i.cq = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 32
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !356
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 53
  store i8 0, ptr %i.cs, align 1, !tbaa !359
  %i.ct = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 40
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !356
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 53
  store i8 0, ptr %i.cv, align 1, !tbaa !359
  %i.cw = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 48
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !356
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 53
  store i8 0, ptr %i.cy, align 1, !tbaa !359
  %i.cz = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 56
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !356
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 53
  store i8 0, ptr %i.db, align 1, !tbaa !359
  %i.dc = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 64 ; 2 uses
  %.not.i.i.7 = icmp eq ptr %i.dc, %i.bx
  br i1 %.not.i.i.7, label %.loopexit.i.i, label %.lr.ph.i.i

bb.j:                                             ; preds = %_ZN3euf10completion11should_stopEv.exit.i
  %i.dd = load ptr, ptr %i.s, align 8, !tbaa !325
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %indvars.iv.i
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !356 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 53
  store i8 0, ptr %i.dg, align 1, !tbaa !359
  tail call void @_ZN3euf10completion14propagate_ruleERNS0_16conditional_ruleE(ptr noundef nonnull align 8 dereferenceable(2144) %0, ptr noundef nonnull align 8 dereferenceable(54) %i.df)
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %i.dh = load ptr, ptr %i.s, align 8, !tbaa !325 ; 2 uses
  %i.di = icmp eq ptr %i.dh, null
  br i1 %i.di, label %_ZN3euf10completion15propagate_rulesEv.exit, label %_ZNK6vectorIPN3euf10completion16conditional_ruleELb0EjE4sizeEv.exit.i, !llvm.loop !10

_ZN3euf10completion15propagate_rulesEv.exit:      ; preds = %bb.j, %bb.f, %.critedge.i, %.loopexit.i.i
  tail call void @_ZN3euf10completion18propagate_closuresEv(ptr noundef nonnull align 8 dereferenceable(2144) %0)
  %i.dj = tail call noundef i32 @_Z19get_verbosity_levelv()
  %i.dk = icmp ugt i32 %i.dj, 10
  br i1 %i.dk, label %bb.k, label %bb.n

bb.k:                                             ; preds = %_ZN3euf10completion15propagate_rulesEv.exit
  %i.dl = tail call noundef zeroext i1 @_Z11is_threadedv()
  br i1 %i.dl, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void @_Z12verbose_lockv()
  %i.dm = tail call noundef nonnull align 8 dereferenceable(8) ptr @_Z14verbose_streamv() ; 2 uses
  %i.dn = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dm, ptr noundef nonnull @.str.6, i64 noundef 10) ; 0 uses
  %i.do = load i32, ptr %i.t, align 4, !tbaa !393
  %i.dp = zext i32 %i.do to i64
  %i.dq = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.dm, i64 noundef %i.dp)
  %i.dr = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dq, ptr noundef nonnull @.str.7, i64 noundef 1) ; 0 uses
  tail call void @_Z14verbose_unlockv()
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.ds = tail call noundef nonnull align 8 dereferenceable(8) ptr @_Z14verbose_streamv() ; 2 uses
  %i.dt = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ds, ptr noundef nonnull @.str.6, i64 noundef 10) ; 0 uses
  %i.du = load i32, ptr %i.t, align 4, !tbaa !393
  %i.dv = zext i32 %i.du to i64
  %i.dw = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ds, i64 noundef %i.dv)
  %i.dx = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dw, ptr noundef nonnull @.str.7, i64 noundef 1) ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m, %_ZN3euf10completion15propagate_rulesEv.exit
  %i.dy = load ptr, ptr %i.o, align 8, !tbaa !351, !nonnull !238, !align !239
  %i.dz = tail call noundef zeroext i1 @_ZN8reslimit3incEv(ptr noundef nonnull align 8 dereferenceable(952) %i.dy)
  br i1 %i.dz, label %bb.o, label %_ZN3euf10completion11should_stopEv.exit7.thread

bb.o:                                             ; preds = %bb.n
  %i.ea = load i8, ptr %i.p, align 4, !tbaa !352, !range !353, !noundef !238
  %i.eb = trunc nuw i8 %i.ea to i1
  br i1 %i.eb, label %_ZN3euf10completion11should_stopEv.exit7.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ec = load ptr, ptr %i.d, align 8, !tbaa !354, !nonnull !238, !align !239 ; 2 uses
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !36
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 48
  %i.ef = load ptr, ptr %i.ee, align 8
  %i.eg = tail call noundef zeroext i1 %i.ef(ptr noundef nonnull align 8 dereferenceable(152) %i.ec), !inline_history !376
  br i1 %i.eg, label %_ZN3euf10completion11should_stopEv.exit7.thread, label %_ZN3euf10completion11should_stopEv.exit7

_ZN3euf10completion11should_stopEv.exit7:         ; preds = %bb.p
  %i.eh = load ptr, ptr %0, align 8, !tbaa !36
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 120
  %i.ej = load ptr, ptr %i.ei, align 8
  %i.ek = tail call noundef zeroext i1 %i.ej(ptr noundef nonnull align 8 dereferenceable(2144) %0), !inline_history !376
  br i1 %i.ek, label %_ZN3euf10completion11should_stopEv.exit7.thread, label %bb.q

bb.q:                                             ; preds = %_ZN3euf10completion11should_stopEv.exit7
  tail call void @_ZN3euf10completion20propagate_arithmeticEv(ptr noundef nonnull align 8 dereferenceable(2144) %0)
  br label %_ZN3euf10completion11should_stopEv.exit7.thread

_ZN3euf10completion11should_stopEv.exit7.thread:  ; preds = %bb.n, %bb.o, %bb.p, %bb.q, %_ZN3euf10completion11should_stopEv.exit7
  %i.el = load i8, ptr %i.n, align 1, !tbaa !394, !range !353, !noundef !238
  %i.em = trunc nuw i8 %i.el to i1
  br i1 %i.em, label %_ZN3euf10completion11should_stopEv.exit8.thread, label %bb.r

bb.r:                                             ; preds = %_ZN3euf10completion11should_stopEv.exit7.thread
  %i.en = load ptr, ptr %i.o, align 8, !tbaa !351, !nonnull !238, !align !239
  %i.eo = tail call noundef zeroext i1 @_ZN8reslimit3incEv(ptr noundef nonnull align 8 dereferenceable(952) %i.en)
  br i1 %i.eo, label %bb.s, label %_ZN3euf10completion11should_stopEv.exit8.thread

bb.s:                                             ; preds = %bb.r
  %i.ep = load i8, ptr %i.p, align 4, !tbaa !352, !range !353, !noundef !238
  %i.eq = trunc nuw i8 %i.ep to i1
  br i1 %i.eq, label %_ZN3euf10completion11should_stopEv.exit8.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.er = load ptr, ptr %i.d, align 8, !tbaa !354, !nonnull !238, !align !239 ; 2 uses
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !36
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 48
  %i.eu = load ptr, ptr %i.et, align 8
  %i.ev = tail call noundef zeroext i1 %i.eu(ptr noundef nonnull align 8 dereferenceable(152) %i.er), !inline_history !376
  br i1 %i.ev, label %_ZN3euf10completion11should_stopEv.exit8.thread, label %_ZN3euf10completion11should_stopEv.exit8

_ZN3euf10completion11should_stopEv.exit8:         ; preds = %bb.t
  %i.ew = load ptr, ptr %0, align 8, !tbaa !36
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 120
  %i.ey = load ptr, ptr %i.ex, align 8
  %i.ez = tail call noundef zeroext i1 %i.ey(ptr noundef nonnull align 8 dereferenceable(2144) %0), !inline_history !376
  br i1 %i.ez, label %_ZN3euf10completion11should_stopEv.exit8.thread, label %bb.u

bb.u:                                             ; preds = %_ZN3euf10completion11should_stopEv.exit8
  tail call void @_ZN3euf10completion19propagate_all_rulesEv(ptr noundef nonnull align 8 dereferenceable(2144) %0)
  br label %_ZN3euf10completion11should_stopEv.exit8.thread

_ZN3euf10completion11should_stopEv.exit8.thread:  ; preds = %bb.r, %bb.s, %bb.t, %bb.u, %_ZN3euf10completion11should_stopEv.exit8, %_ZN3euf10completion11should_stopEv.exit7.thread
  %i.fa = load i8, ptr %i.n, align 1, !tbaa !394, !range !353, !noundef !238
  %i.fb = trunc nuw i8 %i.fa to i1
  br i1 %i.fb, label %bb.c, label %.critedge, !llvm.loop !628

.critedge:                                        ; preds = %_ZN3euf10completion11should_stopEv.exit, %_ZN3euf10completion11should_stopEv.exit8.thread, %bb.e, %bb.d, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN3euf10completion13map_canonicalEv(ptr noundef nonnull align 8 dereferenceable(2144) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %2 = alloca %"class.std::allocator", align 1    ; 4 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %4 = alloca %"class.std::allocator", align 1    ; 4 uses
  %5 = alloca %class.ptr_vector.7, align 8        ; 10 uses
  %6 = alloca %class.obj_ref, align 8             ; 11 uses
  %7 = alloca %class.ref_vector, align 8          ; 8 uses
  %8 = alloca %class.obj_ref.164, align 8         ; 10 uses
  %9 = alloca %class.obj_ref, align 8             ; 5 uses
  %10 = alloca %class.symbol, align 8             ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1432 ; 12 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !218  ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZN6vectorIP4exprLb0EjE5resetEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -4
  store i32 0, ptr %i.c, align 4, !tbaa !314
  br label %_ZN6vectorIP4exprLb0EjE5resetEv.exit

_ZN6vectorIP4exprLb0EjE5resetEv.exit:             ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  store ptr null, ptr %5, align 8, !tbaa !347
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1456 ; 5 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !347  ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %_ZN6vectorIPN3euf5enodeELb0EjED2Ev.exit, label %_ZNK6vectorIPN3euf5enodeELb0EjE5emptyEv.exit

_ZNK6vectorIPN3euf5enodeELb0EjE5emptyEv.exit:     ; preds = %_ZN6vectorIP4exprLb0EjE5resetEv.exit
  %i.g = getelementptr inbounds i8, ptr %i.e, i64 -4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !314
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %_ZN6vectorIPN3euf5enodeELb0EjED2Ev.exit, label %_ZNK6vectorIPN3euf5enodeELb0EjE4sizeEv.exit.lr.ph

_ZNK6vectorIPN3euf5enodeELb0EjE4sizeEv.exit.lr.ph: ; preds = %_ZNK6vectorIPN3euf5enodeELb0EjE5emptyEv.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1448 ; 3 uses
  br label %_ZNK6vectorIPN3euf5enodeELb0EjE4sizeEv.exit

_ZNK6vectorIPN3euf5enodeELb0EjE4sizeEv.exit:      ; preds = %_ZNK6vectorIPN3euf5enodeELb0EjE4sizeEv.exit.lr.ph, %.loopexit321
  %indvars.iv = phi i64 [ 0, %_ZNK6vectorIPN3euf5enodeELb0EjE4sizeEv.exit.lr.ph ], [ %indvars.iv.next, %.loopexit321 ] ; 3 uses
  %i.l = phi ptr [ %i.e, %_ZNK6vectorIPN3euf5enodeELb0EjE4sizeEv.exit.lr.ph ], [ %i.gg, %.loopexit321 ] ; 2 uses
  %i.m = getelementptr inbounds i8, ptr %i.l, i64 -4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !314
  %i.o = zext i32 %i.n to i64
  %i.p = icmp samesign ult i64 %indvars.iv, %i.o
  br i1 %i.p, label %bb.c, label %.critedge

.critedge:                                        ; preds = %_ZNK6vectorIPN3euf5enodeELb0EjE4sizeEv.exit, %.loopexit321
  %.pre = load ptr, ptr %5, align 8, !tbaa !347   ; 8 uses
  %i.q = icmp eq ptr %.pre, null
  br i1 %i.q, label %._crit_edge348, label %_ZN6vectorIPN3euf5enodeELb0EjE3endEv.exit

_ZN6vectorIPN3euf5enodeELb0EjE3endEv.exit:        ; preds = %.critedge
  %i.r = getelementptr inbounds i8, ptr %.pre, i64 -4
  %i.s = load i32, ptr %i.r, align 4, !tbaa !314  ; 2 uses
  %i.t = zext i32 %i.s to i64
  %i.u = shl nuw nsw i64 %i.t, 3                  ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.u
  %.not341 = icmp eq i32 %i.s, 0
  br i1 %.not341, label %_ZN6vectorIPN3euf5enodeELb0EjE3endEv.exit141, label %.lr.ph343.preheader

.lr.ph343.preheader:                              ; preds = %_ZN6vectorIPN3euf5enodeELb0EjE3endEv.exit
  %i.w = add nsw i64 %i.u, -8                     ; 2 uses
  %i.x = lshr exact i64 %i.w, 3
  %i.y = add nuw nsw i64 %i.x, 1
  %xtraiter = and i64 %i.y, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph343.prol.loopexit, label %.lr.ph343.prol

.lr.ph343.prol:                                   ; preds = %.lr.ph343.preheader, %.lr.ph343.prol
  %.079342.prol = phi ptr [ %i.ab, %.lr.ph343.prol ], [ %.pre, %.lr.ph343.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph343.prol ], [ 0, %.lr.ph343.preheader ]
  %i.z = load ptr, ptr %.079342.prol, align 8, !tbaa !395
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store i8 0, ptr %i.aa, align 8, !tbaa !635
  %i.ab = getelementptr inbounds nuw i8, ptr %.079342.prol, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph343.prol.loopexit, label %.lr.ph343.prol, !llvm.loop !631

.lr.ph343.prol.loopexit:                          ; preds = %.lr.ph343.prol, %.lr.ph343.preheader
  %.079342.unr = phi ptr [ %.pre, %.lr.ph343.preheader ], [ %i.ab, %.lr.ph343.prol ]
  %i.ac = icmp ult i64 %i.w, 56
  br i1 %i.ac, label %_ZN6vectorIPN3euf5enodeELb0EjE3endEv.exit141, label %.lr.ph343

bb.c:                                             ; preds = %_ZNK6vectorIPN3euf5enodeELb0EjE4sizeEv.exit
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !395
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 64
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !396 ; 9 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 8, !tbaa !635, !range !353, !noundef !238
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %.loopexit321, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i8 1, ptr %i.ah, align 8, !tbaa !635
  %i.ak = load ptr, ptr %5, align 8, !tbaa !347   ; 4 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.am = getelementptr inbounds i8, ptr %i.ak, i64 -4
  %i.an = load i32, ptr %i.am, align 4, !tbaa !314 ; 2 uses
  %i.ao = getelementptr inbounds i8, ptr %i.ak, i64 -8
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !314
  %i.aq = icmp eq i32 %i.an, %i.ap
  br i1 %i.aq, label %bb.f, label %.lr.ph.preheader

bb.f:                                             ; preds = %bb.e, %bb.d
  invoke void @_ZN6vectorIPN3euf5enodeELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %.noexc unwind label %.loopexit.split-lp317.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.f
  %.pre.i = load ptr, ptr %5, align 8, !tbaa !347 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.pre.i, i64 -4
  %.pre2.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !314
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.e, %.noexc
  %i.ar = phi i32 [ %.pre2.i, %.noexc ], [ %i.an, %bb.e ] ; 2 uses
  %i.as = phi ptr [ %.pre.i, %.noexc ], [ %i.ak, %bb.e ] ; 2 uses
  %i.at = getelementptr inbounds i8, ptr %i.as, i64 -4
  %i.au = zext i32 %i.ar to i64
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.au
  store ptr %i.ag, ptr %i.av, align 8, !tbaa !395
  %i.aw = add i32 %i.ar, 1
  store i32 %i.aw, ptr %i.at, align 4, !tbaa !314
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN3euf11enode_class8iteratorppEv.exit
  %.sroa.0275.0335 = phi ptr [ %i.be, %_ZN3euf11enode_class8iteratorppEv.exit ], [ %i.ag, %.lr.ph.preheader ] ; 5 uses
  %.sroa.8.0334 = phi ptr [ %spec.select, %_ZN3euf11enode_class8iteratorppEv.exit ], [ null, %.lr.ph.preheader ] ; 2 uses
  %.0289333 = phi ptr [ %.1290, %_ZN3euf11enode_class8iteratorppEv.exit ], [ null, %.lr.ph.preheader ] ; 3 uses
  %.not116 = icmp eq ptr %.0289333, null
  br i1 %.not116, label %bb.k, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  %i.ax = load ptr, ptr %i.j, align 8, !tbaa !351, !nonnull !238, !align !239
  %i.ay = load ptr, ptr %.sroa.0275.0335, align 8, !tbaa !368
  %i.az = invoke noundef zeroext i1 @_ZNK11ast_manager8is_valueEP4expr(ptr noundef nonnull align 8 dereferenceable(952) %i.ax, ptr noundef %i.ay)
          to label %bb.h unwind label %.loopexit.split-lp317.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.h:                                             ; preds = %bb.g
  br i1 %i.az, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ba = load ptr, ptr %.0289333, align 8, !tbaa !368
  %i.bb = load ptr, ptr %.sroa.0275.0335, align 8, !tbaa !368
  %i.bc = invoke noundef zeroext i1 @_ZNK3euf10completion5is_gtEP4exprS2_(ptr noundef nonnull align 8 dereferenceable(2144) %0, ptr noundef %i.ba, ptr noundef %i.bb)
          to label %bb.j unwind label %.loopexit.split-lp317.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.j:                                             ; preds = %bb.i
  br i1 %i.bc, label %bb.k, label %_ZN3euf11enode_class8iteratorppEv.exit

bb.k:                                             ; preds = %bb.j, %bb.h, %.lr.ph
  br label %_ZN3euf11enode_class8iteratorppEv.exit

_ZN3euf11enode_class8iteratorppEv.exit:           ; preds = %bb.k, %bb.j
  %.1290 = phi ptr [ %.sroa.0275.0335, %bb.k ], [ %.0289333, %bb.j ] ; 2 uses
  %.not.i126 = icmp eq ptr %.sroa.8.0334, null
  %spec.select = select i1 %.not.i126, ptr %.sroa.0275.0335, ptr %.sroa.8.0334 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.0275.0335, i64 56
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !397 ; 2 uses
  %.not.i125 = icmp ne ptr %spec.select, %i.ag
end_hunk_0
begin_hunk_1_@_ZN3euf10completion14add_constraintEP4exprP3appPN18dependency_managerIN11ast_manager22expr_dependency_configEE10dependencyE:bb.a
.critedge145:                                     ; preds = %bb.dg
  %i.rw = load ptr, ptr %20, align 8, !tbaa !401  ; 3 uses
  %.not.i.i296 = icmp eq ptr %i.rw, null
  br i1 %.not.i.i296, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit297, label %bb.fi

bb.fi:                                            ; preds = %.critedge145
  %i.rx = load ptr, ptr %i.lb, align 8, !tbaa !407, !nonnull !238, !align !239
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rw, i64 8 ; 2 uses
  %i.rz = load i32, ptr %i.ry, align 4, !tbaa !336
  %i.sa = add i32 %i.rz, -1                       ; 2 uses
  store i32 %i.sa, ptr %i.ry, align 4, !tbaa !336
  %i.sb = icmp eq i32 %i.sa, 0
  br i1 %i.sb, label %bb.fj, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit297

bb.fj:                                            ; preds = %bb.fi
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.rx, ptr noundef nonnull %i.rw)
          to label %_ZN7obj_refI4expr11ast_managerED2Ev.exit297 unwind label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %i.sc = landingpad { ptr, i32 }
          catch ptr null
  %i.sd = extractvalue { ptr, i32 } %i.sc, 0
  call void @__clang_call_terminate(ptr %i.sd) #25
  unreachable

_ZN7obj_refI4expr11ast_managerED2Ev.exit297:      ; preds = %.critedge145, %bb.fi, %bb.fj
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #24
  br label %bb.fl

bb.fl:                                            ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit293, %_ZN7obj_refI4expr11ast_managerED2Ev.exit295, %_ZN7obj_refI4expr11ast_managerED2Ev.exit297, %_ZN7obj_refI4expr11ast_managerED2Ev.exit254, %_ZN7obj_refI4expr11ast_managerED2Ev.exit205, %_ZN7obj_refI4expr11ast_managerED2Ev.exit247, %_ZN7obj_refI4expr11ast_managerED2Ev.exit291, %bb.a
  ret void

bb.fm:                                            ; preds = %.loopexit.split-lp352.loopexit.split-lp, %bb.dc, %.body216, %.body
  %.pn134.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn134.pn.pn.pn.pn, %.body ], [ %eh.lpad-body217, %.body216 ], [ %i.ky, %bb.dc ], [ %.pn112.pn.pn.pn.pn.pn, %.loopexit.split-lp352.loopexit.split-lp ]
  resume { ptr, i32 } %.pn134.pn.pn.pn.pn.pn
}

declare noundef zeroext i1 @_ZN3euf6egraph9propagateEv(ptr noundef nonnull align 8 dereferenceable(536)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define hidden void @_ZN3euf10completion19flush_binding_queueEv(ptr noundef nonnull align 8 dereferenceable(2144) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef i32 @_Z19get_verbosity_levelv()
  %i.b = icmp ugt i32 %i.a, 9
  br i1 %i.b, label %bb.b, label %.critedge33

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef zeroext i1 @_Z11is_threadedv()
  br i1 %i.c, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  tail call void @_Z12verbose_lockv()
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_Z14verbose_streamv()
  %i.e = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull @.str.19, i64 noundef 12) ; 0 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2128 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !326  ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %.critedge, label %_ZNK6vectorI10ptr_vectorIN3euf7bindingEELb1EjE4sizeEv.exit

_ZNK6vectorI10ptr_vectorIN3euf7bindingEELb1EjE4sizeEv.exit: ; preds = %bb.c, %_ZNK6vectorIPN3euf7bindingELb0EjE4sizeEv.exit
  %indvars.iv43 = phi i64 [ %indvars.iv.next44, %_ZNK6vectorIPN3euf7bindingELb0EjE4sizeEv.exit ], [ 0, %bb.c ] ; 4 uses
  %i.i = phi ptr [ %i.z, %_ZNK6vectorIPN3euf7bindingELb0EjE4sizeEv.exit ], [ %i.g, %bb.c ]
  %i.j = getelementptr inbounds i8, ptr %i.i, i64 -4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !314
  %i.l = zext i32 %i.k to i64
  %i.m = icmp samesign ult i64 %indvars.iv43, %i.l
  br i1 %i.m, label %bb.d, label %.critedge

.critedge:                                        ; preds = %_ZNK6vectorI10ptr_vectorIN3euf7bindingEELb1EjE4sizeEv.exit, %_ZNK6vectorIPN3euf7bindingELb0EjE4sizeEv.exit, %bb.c
  tail call void @_Z14verbose_unlockv()
  br label %.critedge33

bb.d:                                             ; preds = %_ZNK6vectorI10ptr_vectorIN3euf7bindingEELb1EjE4sizeEv.exit
  %i.n = tail call noundef nonnull align 8 dereferenceable(8) ptr @_Z14verbose_streamv()
  %i.o = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.n, i64 noundef %indvars.iv43) ; 2 uses
  %i.p = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull @.str.20, i64 noundef 2) ; 0 uses
  %i.q = load ptr, ptr %i.f, align 8, !tbaa !326
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv43
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !329  ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %_ZNK6vectorIPN3euf7bindingELb0EjE4sizeEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds i8, ptr %i.s, i64 -4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !314
  %i.w = zext i32 %i.v to i64
  br label %_ZNK6vectorIPN3euf7bindingELb0EjE4sizeEv.exit

_ZNK6vectorIPN3euf7bindingELb0EjE4sizeEv.exit:    ; preds = %bb.d, %bb.e
  %.0.i27 = phi i64 [ %i.w, %bb.e ], [ 0, %bb.d ]
  %i.x = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.o, i64 noundef %.0.i27)
  %i.y = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.x, ptr noundef nonnull @.str.7, i64 noundef 1) ; 0 uses
  %indvars.iv.next44 = add nuw nsw i64 %indvars.iv43, 1
  %i.z = load ptr, ptr %i.f, align 8, !tbaa !326  ; 2 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %.critedge, label %_ZNK6vectorI10ptr_vectorIN3euf7bindingEELb1EjE4sizeEv.exit, !llvm.loop !662

bb.f:                                             ; preds = %bb.b
  %i.ab = tail call noundef nonnull align 8 dereferenceable(8) ptr @_Z14verbose_streamv()
  %i.ac = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, ptr noundef nonnull @.str.19, i64 noundef 12) ; 0 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 2128 ; 3 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !326 ; 2 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %.critedge33, label %_ZNK6vectorI10ptr_vectorIN3euf7bindingEELb1EjE4sizeEv.exit29

_ZNK6vectorI10ptr_vectorIN3euf7bindingEELb1EjE4sizeEv.exit29: ; preds = %bb.f, %_ZNK6vectorIPN3euf7bindingELb0EjE4sizeEv.exit31
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZNK6vectorIPN3euf7bindingELb0EjE4sizeEv.exit31 ], [ 0, %bb.f ] ; 4 uses
  %i.ag = phi ptr [ %i.ax, %_ZNK6vectorIPN3euf7bindingELb0EjE4sizeEv.exit31 ], [ %i.ae, %bb.f ]
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 -4
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !314
  %i.aj = zext i32 %i.ai to i64
  %i.ak = icmp samesign ult i64 %indvars.iv, %i.aj
  br i1 %i.ak, label %bb.g, label %.critedge33

bb.g:                                             ; preds = %_ZNK6vectorI10ptr_vectorIN3euf7bindingEELb1EjE4sizeEv.exit29
  %i.al = tail call noundef nonnull align 8 dereferenceable(8) ptr @_Z14verbose_streamv()
  %i.am = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.al, i64 noundef %indvars.iv) ; 2 uses
  %i.an = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.am, ptr noundef nonnull @.str.20, i64 noundef 2) ; 0 uses
  %i.ao = load ptr, ptr %i.ad, align 8, !tbaa !326
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %indvars.iv
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !329 ; 2 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %_ZNK6vectorIPN3euf7bindingELb0EjE4sizeEv.exit31, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.as = getelementptr inbounds i8, ptr %i.aq, i64 -4
  %i.at = load i32, ptr %i.as, align 4, !tbaa !314
  %i.au = zext i32 %i.at to i64
  br label %_ZNK6vectorIPN3euf7bindingELb0EjE4sizeEv.exit31

_ZNK6vectorIPN3euf7bindingELb0EjE4sizeEv.exit31:  ; preds = %bb.g, %bb.h
  %.0.i30 = phi i64 [ %i.au, %bb.h ], [ 0, %bb.g ]
  %i.av = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.am, i64 noundef %.0.i30)
  %i.aw = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.av, ptr noundef nonnull @.str.7, i64 noundef 1) ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.ax = load ptr, ptr %i.ad, align 8, !tbaa !326 ; 2 uses
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %.critedge33, label %_ZNK6vectorI10ptr_vectorIN3euf7bindingEELb1EjE4sizeEv.exit29, !llvm.loop !663

.critedge33:                                      ; preds = %_ZNK6vectorI10ptr_vectorIN3euf7bindingEELb1EjE4sizeEv.exit29, %_ZNK6vectorIPN3euf7bindingELb0EjE4sizeEv.exit31, %bb.f, %.critedge, %bb.a
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 2128
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !326 ; 4 uses
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %._crit_edge41, label %_ZN6vectorI10ptr_vectorIN3euf7bindingEELb1EjE3endEv.exit

_ZN6vectorI10ptr_vectorIN3euf7bindingEELb1EjE3endEv.exit: ; preds = %.critedge33
  %i.bc = getelementptr inbounds i8, ptr %i.ba, i64 -4
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !314 ; 2 uses
  %i.be = zext i32 %i.bd to i64
  %i.bf = shl nuw nsw i64 %i.be, 3
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.bf
  %.not38 = icmp eq i32 %i.bd, 0
  br i1 %.not38, label %._crit_edge41, label %.lr.ph40

._crit_edge41:                                    ; preds = %_ZN6vectorIPN3euf7bindingELb0EjE5resetEv.exit, %.critedge33, %_ZN6vectorI10ptr_vectorIN3euf7bindingEELb1EjE3endEv.exit
  ret void

.lr.ph40:                                         ; preds = %_ZN6vectorI10ptr_vectorIN3euf7bindingEELb1EjE3endEv.exit, %_ZN6vectorIPN3euf7bindingELb0EjE5resetEv.exit
  %.02439 = phi ptr [ %i.bq, %_ZN6vectorIPN3euf7bindingELb0EjE5resetEv.exit ], [ %i.ba, %_ZN6vectorI10ptr_vectorIN3euf7bindingEELb1EjE3endEv.exit ] ; 3 uses
  %i.bh = load ptr, ptr %.02439, align 8, !tbaa !329 ; 5 uses
  %i.bi = icmp eq ptr %i.bh, null
  br i1 %i.bi, label %_ZN6vectorIPN3euf7bindingELb0EjE5resetEv.exit, label %_ZN6vectorIPN3euf7bindingELb0EjE3endEv.exit

_ZN6vectorIPN3euf7bindingELb0EjE3endEv.exit:      ; preds = %.lr.ph40
  %i.bj = getelementptr inbounds i8, ptr %i.bh, i64 -4
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !314 ; 2 uses
  %i.bl = zext i32 %i.bk to i64
  %i.bm = shl nuw nsw i64 %i.bl, 3
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bm
  %.not2636 = icmp eq i32 %i.bk, 0
  br i1 %.not2636, label %._crit_edge.thread60, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph
  %.pre = load ptr, ptr %.02439, align 8, !tbaa !329 ; 2 uses
  %.not.i = icmp eq ptr %.pre, null
  br i1 %.not.i, label %_ZN6vectorIPN3euf7bindingELb0EjE5resetEv.exit, label %._crit_edge.thread60

._crit_edge.thread60:                             ; preds = %_ZN6vectorIPN3euf7bindingELb0EjE3endEv.exit, %._crit_edge
  %i.bo = phi ptr [ %.pre, %._crit_edge ], [ %i.bh, %_ZN6vectorIPN3euf7bindingELb0EjE3endEv.exit ]
  %i.bp = getelementptr inbounds i8, ptr %i.bo, i64 -4
  store i32 0, ptr %i.bp, align 4, !tbaa !314
  br label %_ZN6vectorIPN3euf7bindingELb0EjE5resetEv.exit

_ZN6vectorIPN3euf7bindingELb0EjE5resetEv.exit:    ; preds = %.lr.ph40, %._crit_edge, %._crit_edge.thread60
  %i.bq = getelementptr inbounds nuw i8, ptr %.02439, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.bq, %i.bg
  br i1 %.not, label %._crit_edge41, label %.lr.ph40

.lr.ph:                                           ; preds = %_ZN6vectorIPN3euf7bindingELb0EjE3endEv.exit, %.lr.ph
  %.02337 = phi ptr [ %i.bs, %.lr.ph ], [ %i.bh, %_ZN6vectorIPN3euf7bindingELb0EjE3endEv.exit ] ; 2 uses
  %i.br = load ptr, ptr %.02337, align 8, !tbaa !437
  tail call void @_ZN3euf10completion13apply_bindingERNS_7bindingE(ptr noundef nonnull align 8 dereferenceable(2144) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.br)
  %i.bs = getelementptr inbounds nuw i8, ptr %.02337, i64 8 ; 2 uses
  %.not26 = icmp eq ptr %i.bs, %i.bn
  br i1 %.not26, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN3euf10completion15propagate_rulesEv(ptr noundef nonnull align 8 dereferenceable(2144) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2136 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !325  ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZN3euf10completion23clear_propagation_queueEv.exit, label %_ZNK6vectorIPN3euf10completion16conditional_ruleELb0EjE4sizeEv.exit.lr.ph

_ZNK6vectorIPN3euf10completion16conditional_ruleELb0EjE4sizeEv.exit.lr.ph: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 1100
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %_ZNK6vectorIPN3euf10completion16conditional_ruleELb0EjE4sizeEv.exit

_ZNK6vectorIPN3euf10completion16conditional_ruleELb0EjE4sizeEv.exit: ; preds = %_ZNK6vectorIPN3euf10completion16conditional_ruleELb0EjE4sizeEv.exit.lr.ph, %bb.e
  %indvars.iv = phi i64 [ 0, %_ZNK6vectorIPN3euf10completion16conditional_ruleELb0EjE4sizeEv.exit.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 3 uses
  %i.f = phi ptr [ %i.b, %_ZNK6vectorIPN3euf10completion16conditional_ruleELb0EjE4sizeEv.exit.lr.ph ], [ %i.bm, %bb.e ]
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !314
  %i.i = zext i32 %i.h to i64
  %i.j = icmp samesign ult i64 %indvars.iv, %i.i
  br i1 %i.j, label %bb.b, label %.critedge

bb.b:                                             ; preds = %_ZNK6vectorIPN3euf10completion16conditional_ruleELb0EjE4sizeEv.exit
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !351, !nonnull !238, !align !239
  %i.l = tail call noundef zeroext i1 @_ZN8reslimit3incEv(ptr noundef nonnull align 8 dereferenceable(952) %i.k)
  br i1 %i.l, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.m = load i8, ptr %1, align 4, !tbaa !352, !range !353, !noundef !238
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = load ptr, ptr %i.e, align 8, !tbaa !354, !nonnull !238, !align !239 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !36
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = tail call noundef zeroext i1 %i.r(ptr noundef nonnull align 8 dereferenceable(152) %i.o), !inline_history !376
  br i1 %i.s, label %.critedge, label %_ZN3euf10completion11should_stopEv.exit

_ZN3euf10completion11should_stopEv.exit:          ; preds = %bb.d
  %i.t = load ptr, ptr %0, align 8, !tbaa !36
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 120
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = tail call noundef zeroext i1 %i.v(ptr noundef nonnull align 8 dereferenceable(2144) %0), !inline_history !376
  br i1 %i.w, label %.critedge, label %bb.e

.critedge:                                        ; preds = %_ZN3euf10completion11should_stopEv.exit, %_ZNK6vectorIPN3euf10completion16conditional_ruleELb0EjE4sizeEv.exit, %bb.d, %bb.c, %bb.b
  %.pre.pr = load ptr, ptr %i.a, align 8, !tbaa !325 ; 5 uses
  %i.x = icmp eq ptr %.pre.pr, null
  br i1 %i.x, label %_ZN3euf10completion23clear_propagation_queueEv.exit, label %_ZN6vectorIPN3euf10completion16conditional_ruleELb0EjE3endEv.exit.i

_ZN6vectorIPN3euf10completion16conditional_ruleELb0EjE3endEv.exit.i: ; preds = %.critedge
  %i.y = getelementptr inbounds i8, ptr %.pre.pr, i64 -4 ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !314  ; 2 uses
  %i.aa = zext i32 %i.z to i64
  %i.ab = shl nuw nsw i64 %i.aa, 3                ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.pre.pr, i64 %i.ab
  %.not8.i = icmp eq i32 %i.z, 0
  br i1 %.not8.i, label %.loopexit.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN6vectorIPN3euf10completion16conditional_ruleELb0EjE3endEv.exit.i
  %i.ad = add nsw i64 %i.ab, -8                   ; 2 uses
  %i.ae = lshr exact i64 %i.ad, 3
  %i.af = add nuw nsw i64 %i.ae, 1
  %xtraiter = and i64 %i.af, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.09.i.prol = phi ptr [ %i.ai, %.lr.ph.i.prol ], [ %.pre.pr, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.ag = load ptr, ptr %.09.i.prol, align 8, !tbaa !356
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 53
  store i8 0, ptr %i.ah, align 1, !tbaa !359
  %i.ai = getelementptr inbounds nuw i8, ptr %.09.i.prol, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !664

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.09.i.unr = phi ptr [ %.pre.pr, %.lr.ph.i.preheader ], [ %i.ai, %.lr.ph.i.prol ]
  %i.aj = icmp ult i64 %i.ad, 56
  br i1 %i.aj, label %.loopexit.i, label %.lr.ph.i

.loopexit.i:                                      ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %_ZN6vectorIPN3euf10completion16conditional_ruleELb0EjE3endEv.exit.i
  store i32 0, ptr %i.y, align 4, !tbaa !314
  br label %_ZN3euf10completion23clear_propagation_queueEv.exit

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.09.i = phi ptr [ %i.bh, %.lr.ph.i ], [ %.09.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %i.ak = load ptr, ptr %.09.i, align 8, !tbaa !356
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 53
  store i8 0, ptr %i.al, align 1, !tbaa !359
  %i.am = getelementptr inbounds nuw i8, ptr %.09.i, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !356
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 53
  store i8 0, ptr %i.ao, align 1, !tbaa !359
  %i.ap = getelementptr inbounds nuw i8, ptr %.09.i, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !356
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 53
  store i8 0, ptr %i.ar, align 1, !tbaa !359
  %i.as = getelementptr inbounds nuw i8, ptr %.09.i, i64 24
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !356
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 53
  store i8 0, ptr %i.au, align 1, !tbaa !359
  %i.av = getelementptr inbounds nuw i8, ptr %.09.i, i64 32
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !356
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 53
  store i8 0, ptr %i.ax, align 1, !tbaa !359
  %i.ay = getelementptr inbounds nuw i8, ptr %.09.i, i64 40
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !356
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 53
  store i8 0, ptr %i.ba, align 1, !tbaa !359
  %i.bb = getelementptr inbounds nuw i8, ptr %.09.i, i64 48
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !356
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 53
  store i8 0, ptr %i.bd, align 1, !tbaa !359
  %i.be = getelementptr inbounds nuw i8, ptr %.09.i, i64 56
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !356
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 53
  store i8 0, ptr %i.bg, align 1, !tbaa !359
  %i.bh = getelementptr inbounds nuw i8, ptr %.09.i, i64 64 ; 2 uses
  %.not.i.7 = icmp eq ptr %i.bh, %i.ac
  br i1 %.not.i.7, label %.loopexit.i, label %.lr.ph.i

_ZN3euf10completion23clear_propagation_queueEv.exit: ; preds = %bb.e, %bb.a, %.critedge, %.loopexit.i
  ret void

bb.e:                                             ; preds = %_ZN3euf10completion11should_stopEv.exit
  %i.bi = load ptr, ptr %i.a, align 8, !tbaa !325
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %indvars.iv
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !356 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 53
  store i8 0, ptr %i.bl, align 1, !tbaa !359
  tail call void @_ZN3euf10completion14propagate_ruleERNS0_16conditional_ruleE(ptr noundef nonnull align 8 dereferenceable(2144) %0, ptr noundef nonnull align 8 dereferenceable(54) %i.bk)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.bm = load ptr, ptr %i.a, align 8, !tbaa !325 ; 2 uses
  %i.bn = icmp eq ptr %i.bm, null
  br i1 %i.bn, label %_ZN3euf10completion23clear_propagation_queueEv.exit, label %_ZNK6vectorIPN3euf10completion16conditional_ruleELb0EjE4sizeEv.exit, !llvm.loop !10
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN3euf10completion18propagate_closuresEv(ptr noundef nonnull align 8 dereferenceable(2144) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.euf::justification", align 8 ; 6 uses
  %2 = alloca %"struct.obj_map<quantifier, std::pair<ptr_vector<expr>, expr *>>::key_data", align 8 ; 7 uses
  %3 = alloca %class.obj_ref, align 8             ; 6 uses
  %4 = alloca %class.obj_ref, align 8             ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2104
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !247  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2112
  %i.d = load i32, ptr %i.c, align 8, !tbaa !244  ; 2 uses
  %i.e = zext i32 %i.d to i64                     ; 2 uses
  %.idx.i.i = mul nuw nsw i64 %i.e, 24
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx.i.i ; 4 uses
  %.not1.i.i.i.i = icmp eq i32 %i.d, 0
  br i1 %.not1.i.i.i.i, label %_ZNK7obj_mapI10quantifierSt4pairI10ptr_vectorI4exprEPS3_EE5beginEv.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i = phi ptr [ %i.i, %bb.b ], [ %i.b, %bb.a ] ; 3 uses
  %i.g = load ptr, ptr %.sroa.0.0.i.i, align 8, !tbaa !441
  %i.h = icmp ult ptr %i.g, inttoptr (i64 2 to ptr)
  br i1 %i.h, label %bb.b, label %_ZNK7obj_mapI10quantifierSt4pairI10ptr_vectorI4exprEPS3_EE5beginEv.exit

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.i, %i.f
  br i1 %.not.i.i.i.i, label %_ZNK7obj_mapI10quantifierSt4pairI10ptr_vectorI4exprEPS3_EE5beginEv.exit, label %.lr.ph.i.i.i.i, !llvm.loop !665

_ZNK7obj_mapI10quantifierSt4pairI10ptr_vectorI4exprEPS3_EE5beginEv.exit: ; preds = %.lr.ph.i.i.i.i, %bb.b, %bb.a
  %.sroa.0.1.i.i = phi ptr [ %i.b, %bb.a ], [ %.sroa.0.0.i.i, %.lr.ph.i.i.i.i ], [ %i.f, %bb.b ] ; 2 uses
  %i.j = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %i.e ; 2 uses
  %.not5455 = icmp eq ptr %.sroa.0.1.i.i, %i.j
  br i1 %.not5455, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK7obj_mapI10quantifierSt4pairI10ptr_vectorI4exprEPS3_EE5beginEv.exit
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 864 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 992 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 2081
  br label %bb.c

._crit_edge:                                      ; preds = %_ZN14core_hashtableIN7obj_mapI10quantifierSt4pairI10ptr_vectorI4exprEPS4_EE13obj_map_entryE8obj_hashINS8_8key_dataEE10default_eqISB_EE8iteratorppEv.exit, %_ZNK7obj_mapI10quantifierSt4pairI10ptr_vectorI4exprEPS3_EE5beginEv.exit
  ret void

bb.c:                                             ; preds = %.lr.ph, %_ZN14core_hashtableIN7obj_mapI10quantifierSt4pairI10ptr_vectorI4exprEPS4_EE13obj_map_entryE8obj_hashINS8_8key_dataEE10default_eqISB_EE8iteratorppEv.exit
  %.sroa.048.056 = phi ptr [ %.sroa.0.1.i.i, %.lr.ph ], [ %.sroa.048.2, %_ZN14core_hashtableIN7obj_mapI10quantifierSt4pairI10ptr_vectorI4exprEPS4_EE13obj_map_entryE8obj_hashINS8_8key_dataEE10default_eqISB_EE8iteratorppEv.exit ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.u = load ptr, ptr %.sroa.048.056, align 8, !tbaa !442 ; 3 uses
  store ptr %i.u, ptr %2, align 8, !tbaa !442
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.048.056, i64 8 ; 2 uses
  store ptr null, ptr %i.k, align 8, !tbaa !218
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !218  ; 2 uses
  %.not.i.i.i.i30 = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i30, label %_ZN7obj_mapI10quantifierSt4pairI10ptr_vectorI4exprEPS3_EE8key_dataC2ERKS8_.exit, label %_ZNK6vectorIP4exprLb0EjE8capacityEv.exit.i.i.i.i.i

_ZNK6vectorIP4exprLb0EjE8capacityEv.exit.i.i.i.i.i: ; preds = %bb.c
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 -8 ; 2 uses
  %i.y = load <2 x i32>, ptr %i.x, align 4, !tbaa !314
  %i.z = load i32, ptr %i.x, align 4, !tbaa !314
  %i.aa = zext i32 %i.z to i64
  %i.ab = shl nuw nsw i64 %i.aa, 3
  %i.ac = add nuw nsw i64 %i.ab, 8
end_hunk_1
begin_hunk_2_@_ZN3euf10completion20propagate_arithmeticEv:bb.a

.noexc222:                                        ; preds = %.noexc221
  %i.jj = load ptr, ptr %i.hu, align 8, !tbaa !368
  %i.jk = load ptr, ptr %i.d, align 8, !tbaa !448, !nonnull !238, !align !239
  invoke void @_Z17ast_ll_bounded_ppRSoR11ast_managerP3astj(ptr noundef nonnull align 8 dereferenceable(8) %i.jh, ptr noundef nonnull align 8 dereferenceable(952) %i.jk, ptr noundef %i.jj, i32 noundef 3)
          to label %_ZN3euflsERSoRKNS_6egraph4b_ppE.exit225 unwind label %bb.az

_ZN3euflsERSoRKNS_6egraph4b_ppE.exit225:          ; preds = %.noexc222
  %i.jl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.jh, ptr noundef nonnull @.str.7, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit227 unwind label %bb.az ; 0 uses

bb.az:                                            ; preds = %bb.ax, %.noexc211, %.noexc212, %_ZN3euflsERSoRKNS_6egraph4b_ppE.exit215, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit227, %bb.aw, %bb.as, %bb.ai, %bb.aj, %bb.av, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit205, %bb.ar, %bb.aq, %bb.ao, %bb.am, %bb.ak, %_ZN3euflsERSoRKNS_6egraph4b_ppE.exit, %.noexc191, %.noexc190, %bb.at, %_ZN3euflsERSoRKNS_6egraph4b_ppE.exit203, %.noexc200, %.noexc199, %bb.au, %_ZN3euflsERSoRKNS_6egraph4b_ppE.exit225, %.noexc222, %.noexc221, %bb.ay
  %i.jm = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3euf21side_condition_solver8solutionD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %12) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  br label %bb.bi

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit227: ; preds = %_ZN3euflsERSoRKNS_6egraph4b_ppE.exit225, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit205, %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  store i32 2, ptr %1, align 8, !tbaa !428, !alias.scope !686
  store i8 0, ptr %i.fb, align 8, !tbaa !310, !alias.scope !686
  store ptr null, ptr %i.fc, align 8, !tbaa !310, !alias.scope !686
  invoke void @_ZN3euf6egraph5mergeEPNS_5enodeES2_NS_13justificationE(ptr noundef nonnull align 8 dereferenceable(536) %i.d, ptr noundef nonnull %i.ht, ptr noundef nonnull %i.hu, ptr noundef nonnull byval(%"class.euf::justification") align 8 %1)
          to label %_ZN3euf6egraph5mergeEPNS_5enodeES2_Pv.exit229 unwind label %bb.az

_ZN3euf6egraph5mergeEPNS_5enodeES2_Pv.exit229:    ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit227
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  br label %bb.ba

bb.ba:                                            ; preds = %_ZN3euf6egraph5mergeEPNS_5enodeES2_Pv.exit229, %bb.al, %_ZN3euf21side_condition_solver8solutionC2ERKS1_.exit
  %.7 = phi i1 [ %.585288, %_ZN3euf21side_condition_solver8solutionC2ERKS1_.exit ], [ %.585288, %bb.al ], [ true, %_ZN3euf6egraph5mergeEPNS_5enodeES2_Pv.exit229 ] ; 2 uses
  br i1 %.not.i.i5.i, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit.i231, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.jn = getelementptr inbounds nuw i8, ptr %i.hc, i64 8 ; 2 uses
  %i.jo = load i32, ptr %i.jn, align 4, !tbaa !336
  %i.jp = add i32 %i.jo, -1                       ; 2 uses
  store i32 %i.jp, ptr %i.jn, align 4, !tbaa !336
  %i.jq = icmp eq i32 %i.jp, 0
  br i1 %i.jq, label %bb.bc, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit.i231

bb.bc:                                            ; preds = %bb.bb
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.he, ptr noundef nonnull %i.hc)
          to label %_ZN7obj_refI4expr11ast_managerED2Ev.exit.i231 unwind label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.jr = landingpad { ptr, i32 }
          catch ptr null
  %i.js = extractvalue { ptr, i32 } %i.jr, 0
  call void @__clang_call_terminate(ptr %i.js) #25
  unreachable

_ZN7obj_refI4expr11ast_managerED2Ev.exit.i231:    ; preds = %bb.bc, %bb.bb, %bb.ba
  br i1 %.not.i.i.i184, label %_ZN3euf21side_condition_solver8solutionD2Ev.exit233, label %bb.be

bb.be:                                            ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit.i231
  %i.jt = getelementptr inbounds nuw i8, ptr %i.gv, i64 8 ; 2 uses
  %i.ju = load i32, ptr %i.jt, align 4, !tbaa !336
  %i.jv = add i32 %i.ju, -1                       ; 2 uses
  store i32 %i.jv, ptr %i.jt, align 4, !tbaa !336
  %i.jw = icmp eq i32 %i.jv, 0
  br i1 %i.jw, label %bb.bf, label %_ZN3euf21side_condition_solver8solutionD2Ev.exit233

bb.bf:                                            ; preds = %bb.be
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.gx, ptr noundef nonnull %i.gv)
          to label %_ZN3euf21side_condition_solver8solutionD2Ev.exit233 unwind label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.jx = landingpad { ptr, i32 }
          catch ptr null
  %i.jy = extractvalue { ptr, i32 } %i.jx, 0
  call void @__clang_call_terminate(ptr %i.jy) #25
  unreachable

_ZN3euf21side_condition_solver8solutionD2Ev.exit233: ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit.i231, %bb.be, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  %i.jz = getelementptr inbounds nuw i8, ptr %.0289, i64 40 ; 2 uses
  %.not119 = icmp eq ptr %i.jz, %i.gm
  br i1 %.not119, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit182, label %.lr.ph290

bb.bh:                                            ; preds = %_ZNK8obj_markI4expr10bit_vector14default_t2uintIS0_EE9is_markedEPS0_.exit164, %_ZN6vectorIN3euf21side_condition_solver8solutionELb1EjED2Ev.exit
  %.8 = phi i1 [ %.585.lcssa373, %_ZN6vectorIN3euf21side_condition_solver8solutionELb1EjED2Ev.exit ], [ %.484294, %_ZNK8obj_markI4expr10bit_vector14default_t2uintIS0_EE9is_markedEPS0_.exit164 ] ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %.074295, i64 8 ; 2 uses
  %.not117 = icmp eq ptr %i.ka, %i.ep
  br i1 %.not117, label %._crit_edge297, label %bb.aa

bb.bi:                                            ; preds = %bb.az, %bb.ag, %bb.af
  %.pn125.pn.pn.pn.pn = phi { ptr, i32 } [ %i.jm, %bb.az ], [ %i.gs, %bb.ag ], [ %i.gr, %bb.af ]
  call void @_ZN7obj_refI4expr11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %10) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  call void @_ZN7obj_refI4expr11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  call void @_ZN6vectorIN3euf21side_condition_solver8solutionELb1EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %.loopexit.split-lp.loopexit.split-lp

bb.bj:                                            ; preds = %_ZN6vectorIP4exprLb0EjE3endEv.exit163.thread, %._crit_edge297
  %i.kb = invoke noundef zeroext i1 @_ZN3euf6egraph9propagateEv(ptr noundef nonnull align 8 dereferenceable(536) %i.d)
          to label %bb.bk unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.bk:                                            ; preds = %bb.bj
  %i.kc = getelementptr inbounds nuw i8, ptr %0, i64 2081
  store i8 1, ptr %i.kc, align 1, !tbaa !394
  br label %bb.bl

bb.bl:                                            ; preds = %_ZN6vectorIP4exprLb0EjE3endEv.exit163.thread, %bb.bk, %._crit_edge297
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  %i.kd = load ptr, ptr %i.cs, align 8, !tbaa !420 ; 2 uses
  %i.ke = icmp eq ptr %i.kd, null
  br i1 %i.ke, label %_ZN8obj_markI4expr10bit_vector14default_t2uintIS0_EED2Ev.exit, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.kd)
          to label %_ZN8obj_markI4expr10bit_vector14default_t2uintIS0_EED2Ev.exit unwind label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.kf = landingpad { ptr, i32 }
          catch ptr null
  %i.kg = extractvalue { ptr, i32 } %i.kf, 0
  call void @__clang_call_terminate(ptr %i.kg) #25
  unreachable

_ZN8obj_markI4expr10bit_vector14default_t2uintIS0_EED2Ev.exit: ; preds = %bb.bl, %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  %i.kh = load ptr, ptr %4, align 8, !tbaa !218   ; 2 uses
  %.not.i.i234 = icmp eq ptr %i.kh, null
  br i1 %.not.i.i234, label %_ZN6vectorIP4exprLb0EjED2Ev.exit, label %bb.bo

bb.bo:                                            ; preds = %_ZN8obj_markI4expr10bit_vector14default_t2uintIS0_EED2Ev.exit
  %i.ki = getelementptr inbounds i8, ptr %i.kh, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.ki)
          to label %_ZN6vectorIP4exprLb0EjED2Ev.exit unwind label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.kj = landingpad { ptr, i32 }
          catch ptr null
  %i.kk = extractvalue { ptr, i32 } %i.kj, 0
  call void @__clang_call_terminate(ptr %i.kk) #25
  unreachable

_ZN6vectorIP4exprLb0EjED2Ev.exit:                 ; preds = %_ZN8obj_markI4expr10bit_vector14default_t2uintIS0_EED2Ev.exit, %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %i.kl = load ptr, ptr %3, align 8, !tbaa !218   ; 2 uses
  %.not.i.i235 = icmp eq ptr %i.kl, null
  br i1 %.not.i.i235, label %_ZN6vectorIP4exprLb0EjED2Ev.exit236, label %bb.bq

bb.bq:                                            ; preds = %_ZN6vectorIP4exprLb0EjED2Ev.exit
  %i.km = getelementptr inbounds i8, ptr %i.kl, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.km)
          to label %_ZN6vectorIP4exprLb0EjED2Ev.exit236 unwind label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.kn = landingpad { ptr, i32 }
          catch ptr null
  %i.ko = extractvalue { ptr, i32 } %i.kn, 0
  call void @__clang_call_terminate(ptr %i.ko) #25
  unreachable

_ZN6vectorIP4exprLb0EjED2Ev.exit236:              ; preds = %_ZN6vectorIP4exprLb0EjED2Ev.exit, %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  ret void

.loopexit.split-lp.loopexit.split-lp:             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.u, %bb.bi
  %.pn140.pn.pn = phi { ptr, i32 } [ %.pn125.pn.pn.pn.pn, %bb.bi ], [ %i.dy, %bb.u ], [ %lpad.loopexit.split-lp390, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @_ZN8obj_markI4expr10bit_vector14default_t2uintIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @_ZN6vectorIP4exprLb0EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @_ZN6vectorIP4exprLb0EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  resume { ptr, i32 } %.pn140.pn.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN3euf10completion19propagate_all_rulesEv(ptr noundef nonnull align 8 dereferenceable(2144) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2082 ; 4 uses
  %i.b = load i8, ptr %i.a, align 2, !tbaa !312, !range !353, !noundef !238 ; 2 uses
  store i8 1, ptr %i.a, align 2, !tbaa !312
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2072
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !325  ; 4 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %._crit_edge, label %_ZN6vectorIPN3euf10completion16conditional_ruleELb0EjE3endEv.exit

_ZN6vectorIPN3euf10completion16conditional_ruleELb0EjE3endEv.exit: ; preds = %bb.a
  %i.f = getelementptr inbounds i8, ptr %i.d, i64 -4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !314  ; 2 uses
  %i.h = zext i32 %i.g to i64
  %i.i = shl nuw nsw i64 %i.h, 3
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.i
  %.not19 = icmp eq i32 %i.g, 0
  br i1 %.not19, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN6vectorIPN3euf10completion16conditional_ruleELb0EjE3endEv.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 2136 ; 3 uses
  br label %bb.f

._crit_edge:                                      ; preds = %bb.j, %bb.a, %_ZN6vectorIPN3euf10completion16conditional_ruleELb0EjE3endEv.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 2136 ; 4 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !325  ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %_ZN3euf10completion15propagate_rulesEv.exit, label %_ZNK6vectorIPN3euf10completion16conditional_ruleELb0EjE4sizeEv.exit.lr.ph.i

_ZNK6vectorIPN3euf10completion16conditional_ruleELb0EjE4sizeEv.exit.lr.ph.i: ; preds = %._crit_edge
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 1100
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %_ZNK6vectorIPN3euf10completion16conditional_ruleELb0EjE4sizeEv.exit.i

_ZNK6vectorIPN3euf10completion16conditional_ruleELb0EjE4sizeEv.exit.i: ; preds = %.noexc15, %_ZNK6vectorIPN3euf10completion16conditional_ruleELb0EjE4sizeEv.exit.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %_ZNK6vectorIPN3euf10completion16conditional_ruleELb0EjE4sizeEv.exit.lr.ph.i ], [ %indvars.iv.next.i, %.noexc15 ] ; 3 uses
  %i.q = phi ptr [ %i.m, %_ZNK6vectorIPN3euf10completion16conditional_ruleELb0EjE4sizeEv.exit.lr.ph.i ], [ %i.bx, %.noexc15 ]
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 -4
  %i.s = load i32, ptr %i.r, align 4, !tbaa !314
  %i.t = zext i32 %i.s to i64
  %i.u = icmp samesign ult i64 %indvars.iv.i, %i.t
  br i1 %i.u, label %bb.b, label %.critedge.i

bb.b:                                             ; preds = %_ZNK6vectorIPN3euf10completion16conditional_ruleELb0EjE4sizeEv.exit.i
  %i.v = load ptr, ptr %i.o, align 8, !tbaa !351, !nonnull !238, !align !239
  %i.w = invoke noundef zeroext i1 @_ZN8reslimit3incEv(ptr noundef nonnull align 8 dereferenceable(952) %i.v)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.b
  br i1 %i.w, label %bb.c, label %.critedge.i

bb.c:                                             ; preds = %.noexc
  %i.x = load i8, ptr %1, align 4, !tbaa !352, !range !353, !noundef !238
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %.critedge.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = load ptr, ptr %i.p, align 8, !tbaa !354, !nonnull !238, !align !239 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !36
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = invoke noundef zeroext i1 %i.ac(ptr noundef nonnull align 8 dereferenceable(152) %i.z)
          to label %.noexc13 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !449

.noexc13:                                         ; preds = %bb.d
  br i1 %i.ad, label %.critedge.i, label %_ZN3euf10completion11should_stopEv.exit.i

_ZN3euf10completion11should_stopEv.exit.i:        ; preds = %.noexc13
  %i.ae = load ptr, ptr %0, align 8, !tbaa !36
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 120
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = invoke noundef zeroext i1 %i.ag(ptr noundef nonnull align 8 dereferenceable(2144) %0)
          to label %.noexc14 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !449

.noexc14:                                         ; preds = %_ZN3euf10completion11should_stopEv.exit.i
  br i1 %i.ah, label %.critedge.i, label %bb.e

.critedge.i:                                      ; preds = %.noexc14, %.noexc13, %bb.c, %.noexc, %_ZNK6vectorIPN3euf10completion16conditional_ruleELb0EjE4sizeEv.exit.i
  %.pre.pr.i = load ptr, ptr %i.l, align 8, !tbaa !325 ; 5 uses
  %i.ai = icmp eq ptr %.pre.pr.i, null
  br i1 %i.ai, label %_ZN3euf10completion15propagate_rulesEv.exit, label %_ZN6vectorIPN3euf10completion16conditional_ruleELb0EjE3endEv.exit.i.i

_ZN6vectorIPN3euf10completion16conditional_ruleELb0EjE3endEv.exit.i.i: ; preds = %.critedge.i
  %i.aj = getelementptr inbounds i8, ptr %.pre.pr.i, i64 -4 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !314 ; 2 uses
  %i.al = zext i32 %i.ak to i64
  %i.am = shl nuw nsw i64 %i.al, 3                ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.pre.pr.i, i64 %i.am
  %.not8.i.i = icmp eq i32 %i.ak, 0
  br i1 %.not8.i.i, label %.loopexit.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_ZN6vectorIPN3euf10completion16conditional_ruleELb0EjE3endEv.exit.i.i
  %i.ao = add nsw i64 %i.am, -8                   ; 2 uses
  %i.ap = lshr exact i64 %i.ao, 3
  %i.aq = add nuw nsw i64 %i.ap, 1
  %xtraiter = and i64 %i.aq, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.09.i.i.prol = phi ptr [ %i.at, %.lr.ph.i.i.prol ], [ %.pre.pr.i, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.ar = load ptr, ptr %.09.i.i.prol, align 8, !tbaa !356
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 53
  store i8 0, ptr %i.as, align 1, !tbaa !359
  %i.at = getelementptr inbounds nuw i8, ptr %.09.i.i.prol, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !687

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.09.i.i.unr = phi ptr [ %.pre.pr.i, %.lr.ph.i.i.preheader ], [ %i.at, %.lr.ph.i.i.prol ]
  %i.au = icmp ult i64 %i.ao, 56
  br i1 %i.au, label %.loopexit.i.i, label %.lr.ph.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %_ZN6vectorIPN3euf10completion16conditional_ruleELb0EjE3endEv.exit.i.i
  store i32 0, ptr %i.aj, align 4, !tbaa !314
  br label %_ZN3euf10completion15propagate_rulesEv.exit

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.09.i.i = phi ptr [ %i.bs, %.lr.ph.i.i ], [ %.09.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 9 uses
  %i.av = load ptr, ptr %.09.i.i, align 8, !tbaa !356
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 53
  store i8 0, ptr %i.aw, align 1, !tbaa !359
  %i.ax = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !356
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 53
  store i8 0, ptr %i.az, align 1, !tbaa !359
  %i.ba = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !356
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 53
  store i8 0, ptr %i.bc, align 1, !tbaa !359
  %i.bd = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 24
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !356
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 53
  store i8 0, ptr %i.bf, align 1, !tbaa !359
  %i.bg = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 32
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !356
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 53
  store i8 0, ptr %i.bi, align 1, !tbaa !359
  %i.bj = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 40
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !356
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 53
  store i8 0, ptr %i.bl, align 1, !tbaa !359
  %i.bm = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 48
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !356
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 53
  store i8 0, ptr %i.bo, align 1, !tbaa !359
  %i.bp = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 56
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !356
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 53
  store i8 0, ptr %i.br, align 1, !tbaa !359
  %i.bs = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 64 ; 2 uses
  %.not.i.i.7 = icmp eq ptr %i.bs, %i.an
  br i1 %.not.i.i.7, label %.loopexit.i.i, label %.lr.ph.i.i

bb.e:                                             ; preds = %.noexc14
  %i.bt = load ptr, ptr %i.l, align 8, !tbaa !325
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %indvars.iv.i
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !356 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 53
  store i8 0, ptr %i.bw, align 1, !tbaa !359
  invoke void @_ZN3euf10completion14propagate_ruleERNS0_16conditional_ruleE(ptr noundef nonnull align 8 dereferenceable(2144) %0, ptr noundef nonnull align 8 dereferenceable(54) %i.bv)
          to label %.noexc15 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc15:                                         ; preds = %bb.e
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %i.bx = load ptr, ptr %i.l, align 8, !tbaa !325 ; 2 uses
  %i.by = icmp eq ptr %i.bx, null
  br i1 %i.by, label %_ZN3euf10completion15propagate_rulesEv.exit, label %_ZNK6vectorIPN3euf10completion16conditional_ruleELb0EjE4sizeEv.exit.i, !llvm.loop !10

bb.f:                                             ; preds = %.lr.ph, %bb.j
  %.01020 = phi ptr [ %i.d, %.lr.ph ], [ %i.cq, %bb.j ] ; 2 uses
  %i.bz = load ptr, ptr %.01020, align 8, !tbaa !356 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 53 ; 2 uses
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !359, !range !353, !noundef !238
  %i.cc = trunc nuw i8 %i.cb to i1
  br i1 %i.cc, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i8 1, ptr %i.ca, align 1, !tbaa !359
  %i.cd = load ptr, ptr %i.k, align 8, !tbaa !325 ; 4 uses
  %i.ce = icmp eq ptr %i.cd, null
  br i1 %i.ce, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cf = getelementptr inbounds i8, ptr %i.cd, i64 -4
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !314 ; 2 uses
  %i.ch = getelementptr inbounds i8, ptr %i.cd, i64 -8
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !314
  %i.cj = icmp eq i32 %i.cg, %i.ci
  br i1 %i.cj, label %bb.i, label %_ZN6vectorIPN3euf10completion16conditional_ruleELb0EjE9push_backERKS3_.exit

bb.i:                                             ; preds = %bb.h, %bb.g
  invoke void @_ZN6vectorIPN3euf10completion16conditional_ruleELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.k)
          to label %.noexc16 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc16:                                         ; preds = %bb.i
  %.pre.i = load ptr, ptr %i.k, align 8, !tbaa !325 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.pre.i, i64 -4
  %.pre2.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !314
  br label %_ZN6vectorIPN3euf10completion16conditional_ruleELb0EjE9push_backERKS3_.exit

_ZN6vectorIPN3euf10completion16conditional_ruleELb0EjE9push_backERKS3_.exit: ; preds = %bb.h, %.noexc16
  %i.ck = phi i32 [ %.pre2.i, %.noexc16 ], [ %i.cg, %bb.h ] ; 2 uses
  %i.cl = phi ptr [ %.pre.i, %.noexc16 ], [ %i.cd, %bb.h ] ; 2 uses
  %i.cm = getelementptr inbounds i8, ptr %i.cl, i64 -4
  %i.cn = zext i32 %i.ck to i64
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %i.cn
  store ptr %i.bz, ptr %i.co, align 8, !tbaa !356
  %i.cp = add i32 %i.ck, 1
  store i32 %i.cp, ptr %i.cm, align 4, !tbaa !314
  br label %bb.j

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.b, %bb.d, %_ZN3euf10completion11should_stopEv.exit.i, %bb.e, %bb.i
  %lpad.loopexit.split-lp29 = landingpad { ptr, i32 }
          cleanup
  store i8 %i.b, ptr %i.a, align 2, !tbaa !312
  resume { ptr, i32 } %lpad.loopexit.split-lp29

bb.j:                                             ; preds = %_ZN6vectorIPN3euf10completion16conditional_ruleELb0EjE9push_backERKS3_.exit, %bb.f
  %i.cq = getelementptr inbounds nuw i8, ptr %.01020, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.cq, %i.j
  br i1 %.not, label %._crit_edge, label %bb.f

_ZN3euf10completion15propagate_rulesEv.exit:      ; preds = %.noexc15, %.loopexit.i.i, %.critedge.i, %._crit_edge
  store i8 %i.b, ptr %i.a, align 2, !tbaa !312
  ret void
}

; Function Attrs: mustprogress uwtable
end_hunk_2
begin_hunk_3_@_ZN3euf10completion13apply_bindingERNS_7bindingE:bb.a
  %i.bk = load ptr, ptr %2, align 8, !tbaa !334, !nonnull !238, !align !239
  %.not.i.i.i.i.i = icmp eq ptr %i.bj, null
  br i1 %.not.i.i.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 8 ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !336
  %i.bn = add i32 %i.bm, -1                       ; 2 uses
  store i32 %i.bn, ptr %i.bl, align 4, !tbaa !336
  %i.bo = icmp eq i32 %i.bn, 0
  br i1 %i.bo, label %bb.q, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i

bb.q:                                             ; preds = %bb.p
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.bk, ptr noundef nonnull %i.bj)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i unwind label %bb.s

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i: ; preds = %bb.q, %bb.p, %.lr.ph.i.i
  %i.bp = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8 ; 2 uses
  %i.bq = icmp ult ptr %i.bp, %i.bi
  br i1 %i.bq, label %.lr.ph.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, !llvm.loop !3

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i
  %.pre.i = load ptr, ptr %i.s, align 8, !tbaa !218 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.pre.i, null
  br i1 %.not.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i
  %i.br = phi ptr [ %.pre.i, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i ], [ %i.bc, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i ]
  %i.bs = getelementptr inbounds i8, ptr %i.br, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.bs)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit unwind label %bb.r

bb.r:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i
  %i.bt = landingpad { ptr, i32 }
          catch ptr null
  %i.bu = extractvalue { ptr, i32 } %i.bt, 0
  call void @__clang_call_terminate(ptr %i.bu) #25
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.bv = landingpad { ptr, i32 }
          catch ptr null
  %i.bw = extractvalue { ptr, i32 } %i.bv, 0
  call void @__clang_call_terminate(ptr %i.bw) #25
  unreachable

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit: ; preds = %bb.o, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %_ZN3euf10completion11should_stopEv.exit.thread

_ZN3euf10completion11should_stopEv.exit.thread:   ; preds = %bb.a, %bb.b, %bb.c, %_ZN3euf10completion11should_stopEv.exit, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit
  ret void

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.m
  %.pn = phi { ptr, i32 } [ %i.bb, %bb.m ], [ %lpad.loopexit.split-lp26, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  resume { ptr, i32 } %.pn
}

declare noundef zeroext i1 @_ZN3euf10ho_matcher13is_ho_patternEP3app(ptr noundef nonnull align 8 dereferenceable(384), ptr noundef) local_unnamed_addr #4

declare void @_ZN3euf10ho_matcher15refine_ho_matchEP3appR10ref_vectorI4expr11ast_managerE(ptr noundef nonnull align 8 dereferenceable(384), ptr noundef, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define hidden void @_ZN3euf10completion13apply_bindingERNS_7bindingEP10quantifierRK10ref_vectorI4expr11ast_managerE(ptr noundef nonnull align 8 dereferenceable(2144) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %1, ptr noundef %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.var_subst, align 8           ; 11 uses
  %5 = alloca %class.obj_ref, align 8             ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !351, !nonnull !238, !align !239
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV12beta_reducer, i64 16), ptr %4, align 8, !tbaa !36
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 536
  call void @_ZN12rewriter_tplI16beta_reducer_cfgEC2ER11ast_managerbRS0_(ptr noundef nonnull align 8 dereferenceable(545) %4, ptr noundef nonnull align 8 dereferenceable(952) %i.b, i1 noundef zeroext false, ptr noundef nonnull align 1 dereferenceable(1) %i.c)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV12beta_reducer, i64 16), ptr %4, align 8, !tbaa !36
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 544
  store i8 1, ptr %i.d, align 8, !tbaa !486
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !487
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !218, !noalias !731 ; 3 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds i8, ptr %i.h, i64 -4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !314, !noalias !731
  br label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i: ; preds = %bb.b, %bb.a
  %.0.i.i.i = phi i32 [ %i.k, %bb.b ], [ 0, %bb.a ]
  invoke void @_ZN9var_substclEP4exprjPKS1_(ptr dead_on_unwind nonnull writable sret(%class.obj_ref) align 8 %5, ptr noundef nonnull align 8 dereferenceable(545) %4, ptr noundef %i.f, i32 noundef %.0.i.i.i, ptr noundef %i.h)
          to label %_ZN9var_substclEP4exprRK10ref_vectorIS0_11ast_managerE.exit unwind label %bb.f

_ZN9var_substclEP4exprRK10ref_vectorIS0_11ast_managerE.exit: ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.m = load i32, ptr %i.l, align 8, !tbaa !502
  %i.n = add i32 %i.m, 1
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 2092 ; 4 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !242  ; 2 uses
  store i32 %i.n, ptr %i.o, align 4, !tbaa !242
  %i.q = invoke { ptr, ptr } @_ZN3euf10completion14get_dependencyEP10quantifier(ptr noundef nonnull align 8 dereferenceable(2144) %0, ptr noundef nonnull %2)
          to label %bb.c unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.c:                                             ; preds = %_ZN9var_substclEP4exprRK10ref_vectorIS0_11ast_managerE.exit
  %i.r = extractvalue { ptr, ptr } %i.q, 0
  %i.s = extractvalue { ptr, ptr } %i.q, 1
  %.not = icmp eq ptr %i.r, null
  br i1 %.not, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !351, !nonnull !238, !align !239 ; 3 uses
  %i.u = invoke noundef ptr @_ZN11ast_manager6mk_appEiiP4expr(ptr noundef nonnull align 8 dereferenceable(952) %i.t, i32 noundef 0, i32 noundef 8, ptr noundef nonnull %2)
          to label %_ZN11ast_manager6mk_notEP4expr.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN11ast_manager6mk_notEP4expr.exit:              ; preds = %bb.d
  %i.v = load ptr, ptr %5, align 8, !tbaa !401
  %i.w = invoke noundef ptr @_ZN11ast_manager6mk_appEiiP4exprS1_(ptr noundef nonnull align 8 dereferenceable(952) %i.t, i32 noundef 0, i32 noundef 6, ptr noundef %i.u, ptr noundef %i.v)
          to label %_ZN11ast_manager5mk_orEP4exprS1_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN11ast_manager5mk_orEP4exprS1_.exit:            ; preds = %_ZN11ast_manager6mk_notEP4expr.exit
  %i.x = load ptr, ptr %i.g, align 8, !tbaa !218  ; 3 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit, label %bb.e

bb.e:                                             ; preds = %_ZN11ast_manager5mk_orEP4exprS1_.exit
  %i.z = getelementptr inbounds i8, ptr %i.x, i64 -4
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !314
  br label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit: ; preds = %bb.e, %_ZN11ast_manager5mk_orEP4exprS1_.exit
  %.0.i.i = phi i32 [ %i.aa, %bb.e ], [ 0, %_ZN11ast_manager5mk_orEP4exprS1_.exit ]
  %i.ab = invoke noundef ptr @_ZN11ast_manager13mk_quant_instEP4exprjPKS1_(ptr noundef nonnull align 8 dereferenceable(952) %i.t, ptr noundef %i.w, i32 noundef %.0.i.i, ptr noundef %i.x)
          to label %bb.g unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.f:                                             ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.p, %_ZN3euf10completion11should_stopEv.exit.i, %bb.o, %bb.m, %bb.j, %_ZN11ast_manager6mk_notEP4expr.exit, %bb.d, %_ZN9var_substclEP4exprRK10ref_vectorIS0_11ast_managerE.exit, %_ZN3euf10completion15propagate_rulesEv.exit, %bb.k, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit
  %lpad.loopexit.split-lp34 = landingpad { ptr, i32 }
          cleanup
  store i32 %i.p, ptr %i.o, align 4, !tbaa !242
  call void @_ZN7obj_refI4expr11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #24
  br label %bb.u

bb.g:                                             ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit, %bb.c
  %.sroa.0.0 = phi ptr [ null, %bb.c ], [ %i.ab, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit ]
  %i.ad = load ptr, ptr %5, align 8, !tbaa !401   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !336
  %i.ag = add i32 %i.af, 1
  store i32 %i.ag, ptr %i.ae, align 4, !tbaa !336
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i: ; preds = %bb.h, %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 1520 ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !218 ; 4 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i
  %i.ak = getelementptr inbounds i8, ptr %i.ai, i64 -4
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !314 ; 2 uses
  %i.am = getelementptr inbounds i8, ptr %i.ai, i64 -8
  %i.an = load i32, ptr %i.am, align 4, !tbaa !314
  %i.ao = icmp eq i32 %i.al, %i.an
  br i1 %i.ao, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ah)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.j
  %.pre.i.i = load ptr, ptr %i.ah, align 8, !tbaa !218 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds i8, ptr %.pre.i.i, i64 -4
  %.pre2.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !314
  br label %bb.k

bb.k:                                             ; preds = %.noexc, %bb.i
  %i.ap = phi i32 [ %.pre2.i.i, %.noexc ], [ %i.al, %bb.i ] ; 2 uses
  %i.aq = phi ptr [ %.pre.i.i, %.noexc ], [ %i.ai, %bb.i ] ; 2 uses
  %i.ar = getelementptr inbounds i8, ptr %i.aq, i64 -4
  %i.as = zext i32 %i.ap to i64
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.as
  store ptr %i.ad, ptr %i.at, align 8, !tbaa !333
  %i.au = add i32 %i.ap, 1
  store i32 %i.au, ptr %i.ar, align 4, !tbaa !314
  %i.av = load ptr, ptr %5, align 8, !tbaa !401
  invoke void @_ZN3euf10completion14add_constraintEP4exprP3appPN18dependency_managerIN11ast_manager22expr_dependency_configEE10dependencyE(ptr noundef nonnull align 8 dereferenceable(2144) %0, ptr noundef %i.av, ptr noundef %.sroa.0.0, ptr noundef %i.s)
          to label %bb.l unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.l:                                             ; preds = %bb.k
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 2136 ; 4 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !325 ; 2 uses
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %_ZN3euf10completion15propagate_rulesEv.exit, label %_ZNK6vectorIPN3euf10completion16conditional_ruleELb0EjE4sizeEv.exit.lr.ph.i

_ZNK6vectorIPN3euf10completion16conditional_ruleELb0EjE4sizeEv.exit.lr.ph.i: ; preds = %bb.l
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 1100
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %_ZNK6vectorIPN3euf10completion16conditional_ruleELb0EjE4sizeEv.exit.i

_ZNK6vectorIPN3euf10completion16conditional_ruleELb0EjE4sizeEv.exit.i: ; preds = %.noexc20, %_ZNK6vectorIPN3euf10completion16conditional_ruleELb0EjE4sizeEv.exit.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %_ZNK6vectorIPN3euf10completion16conditional_ruleELb0EjE4sizeEv.exit.lr.ph.i ], [ %indvars.iv.next.i, %.noexc20 ] ; 3 uses
  %i.ba = phi ptr [ %i.ax, %_ZNK6vectorIPN3euf10completion16conditional_ruleELb0EjE4sizeEv.exit.lr.ph.i ], [ %i.dh, %.noexc20 ]
  %i.bb = getelementptr inbounds i8, ptr %i.ba, i64 -4
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !314
  %i.bd = zext i32 %i.bc to i64
  %i.be = icmp samesign ult i64 %indvars.iv.i, %i.bd
  br i1 %i.be, label %bb.m, label %.critedge.i

bb.m:                                             ; preds = %_ZNK6vectorIPN3euf10completion16conditional_ruleELb0EjE4sizeEv.exit.i
  %i.bf = load ptr, ptr %i.a, align 8, !tbaa !351, !nonnull !238, !align !239
  %i.bg = invoke noundef zeroext i1 @_ZN8reslimit3incEv(ptr noundef nonnull align 8 dereferenceable(952) %i.bf)
          to label %.noexc17 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc17:                                         ; preds = %bb.m
  br i1 %i.bg, label %bb.n, label %.critedge.i

bb.n:                                             ; preds = %.noexc17
  %i.bh = load i8, ptr %6, align 4, !tbaa !352, !range !353, !noundef !238
  %i.bi = trunc nuw i8 %i.bh to i1
  br i1 %i.bi, label %.critedge.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bj = load ptr, ptr %i.az, align 8, !tbaa !354, !nonnull !238, !align !239 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !36
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 48
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = invoke noundef zeroext i1 %i.bm(ptr noundef nonnull align 8 dereferenceable(152) %i.bj)
          to label %.noexc18 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !449

.noexc18:                                         ; preds = %bb.o
  br i1 %i.bn, label %.critedge.i, label %_ZN3euf10completion11should_stopEv.exit.i

_ZN3euf10completion11should_stopEv.exit.i:        ; preds = %.noexc18
  %i.bo = load ptr, ptr %0, align 8, !tbaa !36
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 120
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = invoke noundef zeroext i1 %i.bq(ptr noundef nonnull align 8 dereferenceable(2144) %0)
          to label %.noexc19 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !449

.noexc19:                                         ; preds = %_ZN3euf10completion11should_stopEv.exit.i
  br i1 %i.br, label %.critedge.i, label %bb.p

.critedge.i:                                      ; preds = %.noexc19, %.noexc18, %bb.n, %.noexc17, %_ZNK6vectorIPN3euf10completion16conditional_ruleELb0EjE4sizeEv.exit.i
  %.pre.pr.i = load ptr, ptr %i.aw, align 8, !tbaa !325 ; 5 uses
  %i.bs = icmp eq ptr %.pre.pr.i, null
  br i1 %i.bs, label %_ZN3euf10completion15propagate_rulesEv.exit, label %_ZN6vectorIPN3euf10completion16conditional_ruleELb0EjE3endEv.exit.i.i

_ZN6vectorIPN3euf10completion16conditional_ruleELb0EjE3endEv.exit.i.i: ; preds = %.critedge.i
  %i.bt = getelementptr inbounds i8, ptr %.pre.pr.i, i64 -4 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !314 ; 2 uses
  %i.bv = zext i32 %i.bu to i64
  %i.bw = shl nuw nsw i64 %i.bv, 3                ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.pre.pr.i, i64 %i.bw
  %.not8.i.i = icmp eq i32 %i.bu, 0
  br i1 %.not8.i.i, label %.loopexit.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_ZN6vectorIPN3euf10completion16conditional_ruleELb0EjE3endEv.exit.i.i
  %i.by = add nsw i64 %i.bw, -8                   ; 2 uses
  %i.bz = lshr exact i64 %i.by, 3
  %i.ca = add nuw nsw i64 %i.bz, 1
  %xtraiter = and i64 %i.ca, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.09.i.i.prol = phi ptr [ %i.cd, %.lr.ph.i.i.prol ], [ %.pre.pr.i, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.cb = load ptr, ptr %.09.i.i.prol, align 8, !tbaa !356
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 53
  store i8 0, ptr %i.cc, align 1, !tbaa !359
  %i.cd = getelementptr inbounds nuw i8, ptr %.09.i.i.prol, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !730

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.09.i.i.unr = phi ptr [ %.pre.pr.i, %.lr.ph.i.i.preheader ], [ %i.cd, %.lr.ph.i.i.prol ]
  %i.ce = icmp ult i64 %i.by, 56
  br i1 %i.ce, label %.loopexit.i.i, label %.lr.ph.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %_ZN6vectorIPN3euf10completion16conditional_ruleELb0EjE3endEv.exit.i.i
  store i32 0, ptr %i.bt, align 4, !tbaa !314
  br label %_ZN3euf10completion15propagate_rulesEv.exit

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.09.i.i = phi ptr [ %i.dc, %.lr.ph.i.i ], [ %.09.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 9 uses
  %i.cf = load ptr, ptr %.09.i.i, align 8, !tbaa !356
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 53
  store i8 0, ptr %i.cg, align 1, !tbaa !359
  %i.ch = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !356
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 53
  store i8 0, ptr %i.cj, align 1, !tbaa !359
  %i.ck = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 16
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !356
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 53
  store i8 0, ptr %i.cm, align 1, !tbaa !359
  %i.cn = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 24
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !356
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 53
  store i8 0, ptr %i.cp, align 1, !tbaa !359
  %i.cq = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 32
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !356
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 53
  store i8 0, ptr %i.cs, align 1, !tbaa !359
  %i.ct = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 40
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !356
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 53
  store i8 0, ptr %i.cv, align 1, !tbaa !359
  %i.cw = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 48
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !356
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 53
  store i8 0, ptr %i.cy, align 1, !tbaa !359
  %i.cz = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 56
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !356
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 53
  store i8 0, ptr %i.db, align 1, !tbaa !359
  %i.dc = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 64 ; 2 uses
  %.not.i.i.7 = icmp eq ptr %i.dc, %i.bx
  br i1 %.not.i.i.7, label %.loopexit.i.i, label %.lr.ph.i.i

bb.p:                                             ; preds = %.noexc19
  %i.dd = load ptr, ptr %i.aw, align 8, !tbaa !325
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %indvars.iv.i
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !356 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 53
  store i8 0, ptr %i.dg, align 1, !tbaa !359
  invoke void @_ZN3euf10completion14propagate_ruleERNS0_16conditional_ruleE(ptr noundef nonnull align 8 dereferenceable(2144) %0, ptr noundef nonnull align 8 dereferenceable(54) %i.df)
          to label %.noexc20 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc20:                                         ; preds = %bb.p
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %i.dh = load ptr, ptr %i.aw, align 8, !tbaa !325 ; 2 uses
  %i.di = icmp eq ptr %i.dh, null
  br i1 %i.di, label %_ZN3euf10completion15propagate_rulesEv.exit, label %_ZNK6vectorIPN3euf10completion16conditional_ruleELb0EjE4sizeEv.exit.i, !llvm.loop !10

_ZN3euf10completion15propagate_rulesEv.exit:      ; preds = %.noexc20, %.loopexit.i.i, %.critedge.i, %bb.l
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 864
  %i.dk = invoke noundef zeroext i1 @_ZN3euf6egraph9propagateEv(ptr noundef nonnull align 8 dereferenceable(536) %i.dj)
          to label %bb.q unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.q:                                             ; preds = %_ZN3euf10completion15propagate_rulesEv.exit
  store i32 %i.p, ptr %i.o, align 4, !tbaa !242
  %i.dl = load ptr, ptr %5, align 8, !tbaa !401   ; 3 uses
  %.not.i.i21 = icmp eq ptr %i.dl, null
  br i1 %.not.i.i21, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dm = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !407, !nonnull !238, !align !239
  %i.do = getelementptr inbounds nuw i8, ptr %i.dl, i64 8 ; 2 uses
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !336
  %i.dq = add i32 %i.dp, -1                       ; 2 uses
  store i32 %i.dq, ptr %i.do, align 4, !tbaa !336
  %i.dr = icmp eq i32 %i.dq, 0
  br i1 %i.dr, label %bb.s, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.dn, ptr noundef nonnull %i.dl)
          to label %_ZN7obj_refI4expr11ast_managerED2Ev.exit unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ds = landingpad { ptr, i32 }
          catch ptr null
  %i.dt = extractvalue { ptr, i32 } %i.ds, 0
  call void @__clang_call_terminate(ptr %i.dt) #25
  unreachable

_ZN7obj_refI4expr11ast_managerED2Ev.exit:         ; preds = %bb.q, %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @_ZN12rewriter_tplI16beta_reducer_cfgED2Ev(ptr noundef nonnull align 8 dead_on_return(537) dereferenceable(545) %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  ret void

bb.u:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.f
  %.pn.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp34, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.ac, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @_ZN12rewriter_tplI16beta_reducer_cfgED2Ev(ptr noundef nonnull align 8 dead_on_return(537) dereferenceable(545) %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden { ptr, ptr } @_ZN3euf10completion14get_dependencyEP10quantifier(ptr noundef nonnull align 8 dereferenceable(2144) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1608
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.c = load i32, ptr %i.b, align 4, !tbaa !503  ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1616
  %i.e = load i32, ptr %i.d, align 8, !tbaa !230  ; 3 uses
  %i.f = add i32 %i.e, -1
  %i.g = and i32 %i.f, %i.c                       ; 3 uses
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !233  ; 4 uses
  %i.i = zext i32 %i.g to i64
  %.idx.i.i.i = mul nuw nsw i64 %i.i, 24
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx.i.i.i ; 4 uses
end_hunk_3
