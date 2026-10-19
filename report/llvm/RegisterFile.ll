Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/RegisterFile?download=true
inline.NumInlined: 762
inline.NumDeleted: 331
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN4llvm3mca12RegisterFile19removeRegisterWriteERKNS0_10WriteStateENS_15MutableArrayRefIjEE:bb.a
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !117, !noalias !270
  %i.be = getelementptr inbounds nuw [24 x i8], ptr %i.bd, i64 %.pre-phi ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !123, !noalias !270
  %i.bh = zext i32 %i.bg to i64
  %i.bi = getelementptr inbounds nuw [2 x i8], ptr %i.bb, i64 %i.bh ; 2 uses
  %i.bj = load i16, ptr %i.bi, align 2, !tbaa !45, !noalias !270 ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %i.bj, 0
  br i1 %.not.i.i.i.i, label %select.unfold._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.g
  %i.bk = zext i16 %i.bj to i32
  %i.bl = add nuw nsw i32 %i.bk, %i.az
  br label %.lr.ph

select.unfold._crit_edge:                         ; preds = %_ZN4llvm16MCSubRegIteratorppEv.exit, %bb.g
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.bn = load i8, ptr %i.bm, align 4, !tbaa !129, !range !42, !noundef !43
  %i.bo = trunc nuw i8 %i.bn to i1
  br i1 %i.bo, label %bb.i, label %.loopexit

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN4llvm16MCSubRegIteratorppEv.exit
  %.sroa.052.080 = phi i32 [ %i.ce, %_ZN4llvm16MCSubRegIteratorppEv.exit ], [ %i.bl, %.lr.ph.preheader ] ; 2 uses
  %.sroa.554.079.pn = phi ptr [ %.sroa.554.079, %_ZN4llvm16MCSubRegIteratorppEv.exit ], [ %i.bi, %.lr.ph.preheader ]
  %.sroa.554.079 = getelementptr inbounds nuw i8, ptr %.sroa.554.079.pn, i64 2 ; 2 uses
  %i.bp = and i32 %.sroa.052.080, 65535
  %i.bq = zext nneg i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw [40 x i8], ptr %i.k, i64 %i.bq ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16 ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !25 ; 3 uses
  %i.bu = icmp eq ptr %i.bt, %1
  br i1 %i.bu, label %bb.h, label %_ZN4llvm16MCSubRegIteratorppEv.exit

bb.h:                                             ; preds = %.lr.ph
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 12
  %i.bw = load i16, ptr %i.bv, align 4, !tbaa !36
  %i.bx = getelementptr inbounds nuw i8, ptr %i.br, i64 12
  store i16 %i.bw, ptr %i.bx, align 4, !tbaa !24
  %i.by = load ptr, ptr %i.bt, align 8, !tbaa !37
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 12
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !39
  %i.cb = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  store i32 %i.ca, ptr %i.cb, align 8, !tbaa !23
  store ptr null, ptr %i.bs, align 8, !tbaa !25
  br label %_ZN4llvm16MCSubRegIteratorppEv.exit

_ZN4llvm16MCSubRegIteratorppEv.exit:              ; preds = %bb.h, %.lr.ph
  %i.cc = load i16, ptr %.sroa.554.079, align 2, !tbaa !45 ; 2 uses
  %i.cd = zext i16 %i.cc to i32
  %i.ce = add i32 %.sroa.052.080, %i.cd
  %.not.i.i = icmp eq i16 %i.cc, 0
  br i1 %.not.i.i, label %select.unfold._crit_edge, label %.lr.ph

bb.i:                                             ; preds = %select.unfold._crit_edge
  %i.cf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !125, !noalias !271
  %i.ch = zext i32 %i.cg to i64
  %i.ci = getelementptr inbounds nuw [2 x i8], ptr %i.bb, i64 %i.ch ; 2 uses
  %i.cj = load i16, ptr %i.ci, align 2, !tbaa !45, !noalias !271 ; 2 uses
  %.not.i.i.i.i36 = icmp eq i16 %i.cj, 0
  br i1 %.not.i.i.i.i36, label %.loopexit, label %.lr.ph83.preheader

.lr.ph83.preheader:                               ; preds = %bb.i
  %i.ck = zext i16 %i.cj to i32
  %i.cl = add nuw nsw i32 %i.ck, %i.az
  br label %.lr.ph83

.lr.ph83:                                         ; preds = %.lr.ph83.preheader, %_ZN4llvm18MCSuperRegIteratorppEv.exit
  %.sroa.041.082 = phi i32 [ %i.db, %_ZN4llvm18MCSuperRegIteratorppEv.exit ], [ %i.cl, %.lr.ph83.preheader ] ; 2 uses
  %.sroa.542.081.pn = phi ptr [ %.sroa.542.081, %_ZN4llvm18MCSuperRegIteratorppEv.exit ], [ %i.ci, %.lr.ph83.preheader ]
  %.sroa.542.081 = getelementptr inbounds nuw i8, ptr %.sroa.542.081.pn, i64 2 ; 2 uses
  %i.cm = and i32 %.sroa.041.082, 65535
  %i.cn = zext nneg i32 %i.cm to i64
  %i.co = getelementptr inbounds nuw [40 x i8], ptr %i.k, i64 %i.cn ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 16 ; 2 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !25 ; 3 uses
  %i.cr = icmp eq ptr %i.cq, %1
  br i1 %i.cr, label %bb.j, label %_ZN4llvm18MCSuperRegIteratorppEv.exit

bb.j:                                             ; preds = %.lr.ph83
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 12
  %i.ct = load i16, ptr %i.cs, align 4, !tbaa !36
  %i.cu = getelementptr inbounds nuw i8, ptr %i.co, i64 12
  store i16 %i.ct, ptr %i.cu, align 4, !tbaa !24
  %i.cv = load ptr, ptr %i.cq, align 8, !tbaa !37
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 12
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !39
  %i.cy = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  store i32 %i.cx, ptr %i.cy, align 8, !tbaa !23
  store ptr null, ptr %i.cp, align 8, !tbaa !25
  br label %_ZN4llvm18MCSuperRegIteratorppEv.exit

_ZN4llvm18MCSuperRegIteratorppEv.exit:            ; preds = %bb.j, %.lr.ph83
  %i.cz = load i16, ptr %.sroa.542.081, align 2, !tbaa !45 ; 2 uses
  %i.da = zext i16 %i.cz to i32
  %i.db = add i32 %.sroa.041.082, %i.da
  %.not.i.i40 = icmp eq i16 %i.cz, 0
  br i1 %.not.i.i40, label %.loopexit, label %.lr.ph83

.loopexit:                                        ; preds = %_ZN4llvm18MCSuperRegIteratorppEv.exit, %bb.i, %bb.b, %select.unfold._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm3mca12RegisterFile16canEliminateMoveERKNS0_10WriteStateERKNS0_9ReadStateEj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(156) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(136) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(43) %2, i32 noundef %3) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load i16, ptr %i.b, align 8, !tbaa !147  ; 2 uses
  %i.d = zext i16 %i.c to i64
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !71   ; 3 uses
  %i.f = getelementptr inbounds nuw [40 x i8], ptr %i.e, i64 %i.d
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.h = load i16, ptr %i.g, align 4, !tbaa !36   ; 2 uses
  %i.i = zext i16 %i.h to i64
  %i.j = getelementptr inbounds nuw [40 x i8], ptr %i.e, i64 %i.i ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = zext i32 %3 to i64
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !50
  %i.n = getelementptr inbounds nuw [20 x i8], ptr %i.m, i64 %i.l
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.p = load i32, ptr %i.o, align 4, !tbaa !124
  %.not = icmp eq i32 %i.p, %3
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.r = load i32, ptr %i.q, align 4, !tbaa !124
  %.not20 = icmp eq i32 %i.r, %3
  br i1 %.not20, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.t = load i16, ptr %i.s, align 4, !tbaa !121  ; 3 uses
  %i.u = zext i16 %i.t to i64
  %i.v = getelementptr inbounds nuw [40 x i8], ptr %i.e, i64 %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 36
  %i.x = load i8, ptr %i.w, align 4, !tbaa !148, !range !42, !noundef !43
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %.not21 = icmp eq i16 %i.t, 0
  %.not22 = icmp eq i16 %i.t, %i.h
  %or.cond = select i1 %.not21, i1 true, i1 %.not22
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.aa = load i8, ptr %i.z, align 4, !range !42
  %i.ab = trunc nuw i8 %i.aa to i1
  %or.cond25 = select i1 %or.cond, i1 true, i1 %i.ab
  br i1 %or.cond25, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.ad = zext i16 %i.c to i32                    ; 2 uses
  %i.ae = and i32 %i.ad, 63
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = shl nuw i64 1, %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !75
  %i.aj = icmp ult i32 %i.ai, 65
  %i.ak = load ptr, ptr %i.ac, align 8
  %i.al = lshr i32 %i.ad, 6
  %i.am = zext nneg i32 %i.al to i64
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.am
  %.in.i.i = select i1 %i.aj, ptr %i.ac, ptr %i.an
  %i.ao = load i64, ptr %.in.i.i, align 8, !tbaa !76
  %i.ap = and i64 %i.ao, %i.ag
  %i.aq = icmp ne i64 %i.ap, 0
  %i.ar = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.as = load i8, ptr %i.ar, align 4, !tbaa !111, !range !42, !noundef !43
  %i.at = trunc nuw i8 %i.as to i1
  %not. = xor i1 %i.at, true
  %i.au = or i1 %i.aq, %not.
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b, %bb.c, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ %i.au, %bb.e ], [ false, %bb.c ], [ false, %bb.d ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN4llvm3mca12RegisterFile22tryEliminateMoveOrSwapENS_15MutableArrayRefINS0_10WriteStateEEENS2_INS0_9ReadStateEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(156) %0, ptr nofree captures(none) %1, i64 %2, ptr nofree captures(none) %3, i64 %4) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca i16, align 2                      ; 4 uses
  %5 = alloca %"class.llvm::iterator_range.32", align 8 ; 11 uses
  %6 = alloca %"class.llvm::iterator_range", align 8 ; 7 uses
  %7 = alloca %"class.std::function", align 8     ; 6 uses
  %8 = alloca %"class.llvm::filter_iterator_impl", align 8 ; 14 uses
  %9 = alloca %"class.llvm::filter_iterator_impl", align 8 ; 7 uses
  %.not = icmp ne i64 %2, %4
  %i.b = add i64 %2, -3
  %i.c = icmp ult i64 %i.b, -2
  %or.cond81 = or i1 %i.c, %.not
  br i1 %or.cond81, label %_ZNK4llvm3mca12RegisterFile16canEliminateMoveERKNS0_10WriteStateERKNS0_9ReadStateEj.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.f = load i16, ptr %i.e, align 4, !tbaa !36
  %i.g = zext i16 %i.f to i64
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !71   ; 4 uses
  %i.i = getelementptr inbounds nuw [40 x i8], ptr %i.h, i64 %i.g
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load i32, ptr %i.j, align 4, !tbaa !124  ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = zext i32 %i.k to i64
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !50
  %i.o = getelementptr inbounds nuw [20 x i8], ptr %i.n, i64 %i.m ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load i32, ptr %i.p, align 4, !tbaa !109  ; 2 uses
  %.not59 = icmp eq i32 %i.q, 0
  br i1 %.not59, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  %i.s = load i32, ptr %i.r, align 4, !tbaa !110
  %i.t = zext i32 %i.s to i64
  %i.u = add nuw nsw i64 %2, %i.t
  %i.v = zext i32 %i.q to i64
  %i.w = icmp samesign ugt i64 %i.u, %i.v
  br i1 %i.w, label %_ZNK4llvm3mca12RegisterFile16canEliminateMoveERKNS0_10WriteStateERKNS0_9ReadStateEj.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %cond = icmp eq i64 %2, 0
  br i1 %cond, label %_ZNK4llvm3mca12RegisterFile16canEliminateMoveERKNS0_10WriteStateERKNS0_9ReadStateEj.exit.thread, label %.lr.ph118

bb.e:                                             ; preds = %_ZNK4llvm3mca12RegisterFile16canEliminateMoveERKNS0_10WriteStateERKNS0_9ReadStateEj.exit
  %exitcond.not.a = icmp eq i64 %11, %2
  br i1 %exitcond.not.a, label %.lr.ph90, label %.lr.ph118, !llvm.loop !272

.lr.ph90:                                         ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.68.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 48 ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %8, i64 72
  %i.ak = getelementptr inbounds nuw i8, ptr %8, i64 64 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.am = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 104
  %i.ao = getelementptr inbounds nuw i8, ptr %9, i64 48 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 144 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 128 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %9, i64 64 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 6 uses
  %i.at = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.o, i64 12 ; 2 uses
  br label %bb.i

.lr.ph118:                                        ; preds = %bb.d, %bb.e
  %.051116 = phi i64 [ %11, %bb.e ], [ 0, %bb.d ] ; 2 uses
  %10 = getelementptr inbounds nuw [48 x i8], ptr %3, i64 %.051116
  %11 = add i64 %.051116, 1                       ; 3 uses
  %12 = sub nuw i64 %2, %11
  %i.ax = getelementptr inbounds nuw [136 x i8], ptr %1, i64 %12 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.az = load i16, ptr %i.ay, align 8, !tbaa !147 ; 2 uses
  %i.ba = zext i16 %i.az to i64
  %i.bb = getelementptr inbounds nuw [40 x i8], ptr %i.h, i64 %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 12
  %i.bd = load i16, ptr %i.bc, align 4, !tbaa !36 ; 2 uses
  %i.be = zext i16 %i.bd to i64
  %i.bf = getelementptr inbounds nuw [40 x i8], ptr %i.h, i64 %i.be ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !124
  %.not.i = icmp eq i32 %i.bh, %i.k
  br i1 %.not.i, label %bb.f, label %_ZNK4llvm3mca12RegisterFile16canEliminateMoveERKNS0_10WriteStateERKNS0_9ReadStateEj.exit.thread

bb.f:                                             ; preds = %.lr.ph118
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !124
  %.not20.i = icmp eq i32 %i.bj, %i.k
  br i1 %.not20.i, label %bb.g, label %_ZNK4llvm3mca12RegisterFile16canEliminateMoveERKNS0_10WriteStateERKNS0_9ReadStateEj.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  %i.bl = load i16, ptr %i.bk, align 4, !tbaa !121 ; 3 uses
  %i.bm = zext i16 %i.bl to i64
  %i.bn = getelementptr inbounds nuw [40 x i8], ptr %i.h, i64 %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 36
  %i.bp = load i8, ptr %i.bo, align 4, !tbaa !148, !range !42, !noundef !43
  %i.bq = trunc nuw i8 %i.bp to i1
  br i1 %i.bq, label %bb.h, label %_ZNK4llvm3mca12RegisterFile16canEliminateMoveERKNS0_10WriteStateERKNS0_9ReadStateEj.exit.thread

bb.h:                                             ; preds = %bb.g
  %.not21.i = icmp eq i16 %i.bl, 0
  %.not22.i = icmp eq i16 %i.bl, %i.bd
  %or.cond.i = select i1 %.not21.i, i1 true, i1 %.not22.i
  %i.br = getelementptr inbounds nuw i8, ptr %i.ax, i64 20
  %i.bs = load i8, ptr %i.br, align 4, !range !42
  %i.bt = trunc nuw i8 %i.bs to i1
  %or.cond25.i = select i1 %or.cond.i, i1 true, i1 %i.bt
  br i1 %or.cond25.i, label %_ZNK4llvm3mca12RegisterFile16canEliminateMoveERKNS0_10WriteStateERKNS0_9ReadStateEj.exit, label %_ZNK4llvm3mca12RegisterFile16canEliminateMoveERKNS0_10WriteStateERKNS0_9ReadStateEj.exit.thread

_ZNK4llvm3mca12RegisterFile16canEliminateMoveERKNS0_10WriteStateERKNS0_9ReadStateEj.exit: ; preds = %bb.h
  %i.bu = zext i16 %i.az to i32                   ; 2 uses
  %i.bv = and i32 %i.bu, 63
  %i.bw = zext nneg i32 %i.bv to i64
  %i.bx = shl nuw i64 1, %i.bw
  %i.by = load i32, ptr %i.y, align 8, !tbaa !75
  %i.bz = icmp ult i32 %i.by, 65
  %i.ca = load ptr, ptr %i.x, align 8
  %i.cb = lshr i32 %i.bu, 6
  %i.cc = zext nneg i32 %i.cb to i64
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.cc
  %.in.i.i.i = select i1 %i.bz, ptr %i.x, ptr %i.cd
  %i.ce = load i64, ptr %.in.i.i.i, align 8, !tbaa !76
  %i.cf = and i64 %i.ce, %i.bx
  %i.cg = icmp eq i64 %i.cf, 0
  %i.ch = load i8, ptr %i.z, align 4, !tbaa !111, !range !42, !noundef !43
  %i.ci = trunc nuw i8 %i.ch to i1
  %.not86 = and i1 %i.cg, %i.ci
  br i1 %.not86, label %_ZNK4llvm3mca12RegisterFile16canEliminateMoveERKNS0_10WriteStateERKNS0_9ReadStateEj.exit.thread, label %bb.e, !llvm.loop !272

bb.i:                                             ; preds = %.lr.ph90, %.critedge
  %.05089 = phi i64 [ 0, %.lr.ph90 ], [ %i.ck, %.critedge ] ; 2 uses
  %i.cj = getelementptr inbounds nuw [48 x i8], ptr %3, i64 %.05089 ; 2 uses
  %i.ck = add nuw i64 %.05089, 1                  ; 3 uses
  %i.cl = sub nuw i64 %2, %i.ck
  %i.cm = getelementptr inbounds nuw [136 x i8], ptr %1, i64 %i.cl ; 4 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cj, i64 8 ; 2 uses
  %i.co = load i16, ptr %i.cn, align 8, !tbaa !147 ; 2 uses
  %i.cp = zext i16 %i.co to i64
  %i.cq = load ptr, ptr %i.d, align 8, !tbaa !71  ; 4 uses
  %i.cr = getelementptr inbounds nuw [40 x i8], ptr %i.cq, i64 %i.cp
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cm, i64 12
  %i.ct = load i16, ptr %i.cs, align 4, !tbaa !36 ; 2 uses
  %i.cu = zext i16 %i.ct to i64
  %i.cv = getelementptr inbounds nuw [40 x i8], ptr %i.cq, i64 %i.cu
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cr, i64 32
  %i.cx = load i16, ptr %i.cw, align 4, !tbaa !121 ; 2 uses
  %.not61 = icmp eq i16 %i.cx, 0
  %spec.select82 = select i1 %.not61, i16 %i.co, i16 %i.cx ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cv, i64 32
  %i.cz = load i16, ptr %i.cy, align 4, !tbaa !121 ; 2 uses
  %.not62 = icmp eq i16 %i.cz, 0
  %i.da = select i1 %.not62, i16 %i.ct, i16 %i.cz ; 2 uses
  %i.db = zext i16 %spec.select82 to i64
  %i.dc = getelementptr inbounds nuw [40 x i8], ptr %i.cq, i64 %i.db
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 34
  %i.de = load i16, ptr %i.dd, align 2, !tbaa !149 ; 2 uses
  %.not63 = icmp eq i16 %i.de, 0
  %spec.select = select i1 %.not63, i16 %spec.select82, i16 %i.de ; 2 uses
  %i.df = zext i16 %i.da to i64                   ; 2 uses
  %i.dg = getelementptr inbounds nuw [40 x i8], ptr %i.cq, i64 %i.df
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 34
  store i16 %spec.select, ptr %i.dh, align 2, !tbaa !144
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.di = load ptr, ptr %i.aa, align 8, !tbaa !112, !nonnull !43, !align !116 ; 3 uses
  %i.dj = zext i16 %i.da to i32
  call void @llvm.experimental.noalias.scope.decl(metadata !282)
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 56
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !122, !noalias !282
  %i.dm = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !117, !noalias !282
  %i.do = getelementptr inbounds nuw [24 x i8], ptr %i.dn, i64 %i.df
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 4
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !123, !noalias !282
  %i.dr = zext i32 %i.dq to i64
  %i.ds = getelementptr inbounds nuw [2 x i8], ptr %i.dl, i64 %i.dr ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 2
  %i.du = load i16, ptr %i.ds, align 2, !tbaa !45, !noalias !282 ; 2 uses
  %i.dv = sext i16 %i.du to i32
  %i.dw = add nsw i32 %i.dv, %i.dj                ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %i.du, 0
  %spec.select.i = select i1 %.not.i.i.i.i, ptr null, ptr %i.dt
  %i.dx = trunc i32 %i.dw to i16
  store i32 %i.dw, ptr %6, align 8, !alias.scope !282
  store ptr %spec.select.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !282
  store i16 %i.dx, ptr %.sroa.68.0..sroa_idx.i, align 8, !alias.scope !282
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i8 0, i64 24, i1 false), !alias.scope !282
  %i.dy = ptrtoint ptr %i.di to i64
  store i64 0, ptr %i.ad, align 8, !alias.scope !283
  store i64 %i.dy, ptr %7, align 8, !tbaa !49, !alias.scope !283
  store <2 x ptr> <ptr @"_ZNSt17_Function_handlerIFbtEZN4llvm3mcaL15isNonArtificialERKNS1_14MCRegisterInfoEE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation", ptr @"_ZNSt17_Function_handlerIFbtEZN4llvm3mcaL15isNonArtificialERKNS1_14MCRegisterInfoEE3$_0E9_M_invokeERKSt9_Any_dataOt">, ptr %i.ac, align 8, !tbaa !135, !alias.scope !283
  call void @_ZN4llvm17make_filter_rangeINS_14iterator_rangeINS_16MCSubRegIteratorEEESt8functionIFbtEEEENS1_INS_20filter_iterator_implIDTcl9adl_beginclsr3stdE7declvalIRT_EEEET0_NSt11conditionalIXsr3stdE12is_base_of_vISt26bidirectional_iterator_tagNSt15iterator_traitsISA_E17iterator_categoryEEESD_St20forward_iterator_tagE4typeEEEEEOS8_SB_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::iterator_range.32") align 8 %5, ptr noundef nonnull align 8 dereferenceable(48) %6, ptr nofree noundef nonnull align 8 dereferenceable(32) %7)
  %i.dz = load ptr, ptr %i.ac, align 8, !tbaa !134 ; 2 uses
  %.not.i64 = icmp eq ptr %i.dz, null
  br i1 %.not.i64, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ea = call noundef zeroext i1 %i.dz(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef 3) #25, !inline_history !1 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !284)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %8, ptr noundef nonnull align 8 dereferenceable(160) %5, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, ptr noundef nonnull align 8 dereferenceable(24) %i.af, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ag, i8 0, i64 32, i1 false), !alias.scope !284
  %i.eb = load ptr, ptr %i.ah, align 8, !tbaa !134, !noalias !284 ; 2 uses
  %.not.i.i.not.i.i.i.i = icmp eq ptr %i.eb, null
  br i1 %.not.i.i.not.i.i.i.i, label %_ZNK4llvm14iterator_rangeINS_20filter_iterator_implINS_16MCSubRegIteratorESt8functionIFbtEESt20forward_iterator_tagEEE5beginEv.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.ec = call noundef zeroext i1 %i.eb(ptr noundef nonnull align 8 dereferenceable(32) %i.ag, ptr noundef nonnull align 8 dereferenceable(32) %i.ai, i32 noundef 2) #25, !inline_history !2 ; 0 uses
  %i.ed = load <2 x ptr>, ptr %i.ah, align 8, !tbaa !135, !noalias !284
  store <2 x ptr> %i.ed, ptr %i.ak, align 8, !tbaa !135, !alias.scope !284
  br label %_ZNK4llvm14iterator_rangeINS_20filter_iterator_implINS_16MCSubRegIteratorESt8functionIFbtEESt20forward_iterator_tagEEE5beginEv.exit

_ZNK4llvm14iterator_rangeINS_20filter_iterator_implINS_16MCSubRegIteratorESt8functionIFbtEESt20forward_iterator_tagEEE5beginEv.exit: ; preds = %_ZNSt14_Function_baseD2Ev.exit, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !285)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %9, ptr noundef nonnull align 8 dereferenceable(80) %i.al, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.am, ptr noundef nonnull align 8 dereferenceable(24) %i.an, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ao, i8 0, i64 32, i1 false), !alias.scope !285
  %i.ee = load ptr, ptr %i.ap, align 8, !tbaa !134, !noalias !285 ; 2 uses
  %.not.i.i.not.i.i.i.i65 = icmp eq ptr %i.ee, null
  br i1 %.not.i.i.not.i.i.i.i65, label %_ZNK4llvm14iterator_rangeINS_20filter_iterator_implINS_16MCSubRegIteratorESt8functionIFbtEESt20forward_iterator_tagEEE3endEv.exit, label %bb.l

bb.l:                                             ; preds = %_ZNK4llvm14iterator_rangeINS_20filter_iterator_implINS_16MCSubRegIteratorESt8functionIFbtEESt20forward_iterator_tagEEE5beginEv.exit
  %i.ef = call noundef zeroext i1 %i.ee(ptr noundef nonnull align 8 dereferenceable(32) %i.ao, ptr noundef nonnull align 8 dereferenceable(32) %i.aq, i32 noundef 2) #25, !inline_history !3 ; 0 uses
  %i.eg = load <2 x ptr>, ptr %i.ap, align 8, !tbaa !135, !noalias !285
  %i.eh = load ptr, ptr %i.ap, align 8, !tbaa !134, !noalias !285
  store <2 x ptr> %i.eg, ptr %i.ar, align 8, !tbaa !135, !alias.scope !285
  br label %_ZNK4llvm14iterator_rangeINS_20filter_iterator_implINS_16MCSubRegIteratorESt8functionIFbtEESt20forward_iterator_tagEEE3endEv.exit

_ZNK4llvm14iterator_rangeINS_20filter_iterator_implINS_16MCSubRegIteratorESt8functionIFbtEESt20forward_iterator_tagEEE3endEv.exit: ; preds = %_ZNK4llvm14iterator_rangeINS_20filter_iterator_implINS_16MCSubRegIteratorESt8functionIFbtEESt20forward_iterator_tagEEE5beginEv.exit, %bb.l
  %i.ei = phi ptr [ null, %_ZNK4llvm14iterator_rangeINS_20filter_iterator_implINS_16MCSubRegIteratorESt8functionIFbtEESt20forward_iterator_tagEEE5beginEv.exit ], [ %i.eh, %bb.l ]
  %i.ej = load ptr, ptr %i.as, align 8, !tbaa !137 ; 2 uses
  %i.ek = load ptr, ptr %i.at, align 8, !tbaa !137 ; 2 uses
  %.not8388 = icmp eq ptr %i.ej, %i.ek
  br i1 %.not8388, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %_ZN4llvm20filter_iterator_baseINS_16MCSubRegIteratorESt8functionIFbtEESt20forward_iterator_tagEppEv.exit
  %.pre95 = load ptr, ptr %i.ar, align 8, !tbaa !134
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZNK4llvm14iterator_rangeINS_20filter_iterator_implINS_16MCSubRegIteratorESt8functionIFbtEESt20forward_iterator_tagEEE3endEv.exit
  %i.el = phi ptr [ %.pre95, %._crit_edge.loopexit ], [ %i.ei, %_ZNK4llvm14iterator_rangeINS_20filter_iterator_implINS_16MCSubRegIteratorESt8functionIFbtEESt20forward_iterator_tagEEE3endEv.exit ] ; 2 uses
  %.not.i.i = icmp eq ptr %i.el, null
  br i1 %.not.i.i, label %_ZN4llvm20filter_iterator_baseINS_16MCSubRegIteratorESt8functionIFbtEESt20forward_iterator_tagED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %._crit_edge
  %i.em = call noundef zeroext i1 %i.el(ptr noundef nonnull align 8 dereferenceable(32) %i.ao, ptr noundef nonnull align 8 dereferenceable(32) %i.ao, i32 noundef 3) #25, !inline_history !6 ; 0 uses
  br label %_ZN4llvm20filter_iterator_baseINS_16MCSubRegIteratorESt8functionIFbtEESt20forward_iterator_tagED2Ev.exit

_ZN4llvm20filter_iterator_baseINS_16MCSubRegIteratorESt8functionIFbtEESt20forward_iterator_tagED2Ev.exit: ; preds = %._crit_edge, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  %i.en = load ptr, ptr %i.ak, align 8, !tbaa !134 ; 2 uses
  %.not.i.i66 = icmp eq ptr %i.en, null
  br i1 %.not.i.i66, label %_ZN4llvm20filter_iterator_baseINS_16MCSubRegIteratorESt8functionIFbtEESt20forward_iterator_tagED2Ev.exit67, label %bb.n

bb.n:                                             ; preds = %_ZN4llvm20filter_iterator_baseINS_16MCSubRegIteratorESt8functionIFbtEESt20forward_iterator_tagED2Ev.exit
  %i.eo = call noundef zeroext i1 %i.en(ptr noundef nonnull align 8 dereferenceable(32) %i.ag, ptr noundef nonnull align 8 dereferenceable(32) %i.ag, i32 noundef 3) #25, !inline_history !6 ; 0 uses
  br label %_ZN4llvm20filter_iterator_baseINS_16MCSubRegIteratorESt8functionIFbtEESt20forward_iterator_tagED2Ev.exit67

_ZN4llvm20filter_iterator_baseINS_16MCSubRegIteratorESt8functionIFbtEESt20forward_iterator_tagED2Ev.exit67: ; preds = %_ZN4llvm20filter_iterator_baseINS_16MCSubRegIteratorESt8functionIFbtEESt20forward_iterator_tagED2Ev.exit, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  %i.ep = load ptr, ptr %i.ap, align 8, !tbaa !134 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ep, null
  br i1 %.not.i.i.i, label %_ZN4llvm20filter_iterator_baseINS_16MCSubRegIteratorESt8functionIFbtEESt20forward_iterator_tagED2Ev.exit.i, label %bb.o

bb.o:                                             ; preds = %_ZN4llvm20filter_iterator_baseINS_16MCSubRegIteratorESt8functionIFbtEESt20forward_iterator_tagED2Ev.exit67
  %i.eq = call noundef zeroext i1 %i.ep(ptr noundef nonnull align 8 dereferenceable(32) %i.aq, ptr noundef nonnull align 8 dereferenceable(32) %i.aq, i32 noundef 3) #25, !inline_history !7 ; 0 uses
  br label %_ZN4llvm20filter_iterator_baseINS_16MCSubRegIteratorESt8functionIFbtEESt20forward_iterator_tagED2Ev.exit.i

_ZN4llvm20filter_iterator_baseINS_16MCSubRegIteratorESt8functionIFbtEESt20forward_iterator_tagED2Ev.exit.i: ; preds = %bb.o, %_ZN4llvm20filter_iterator_baseINS_16MCSubRegIteratorESt8functionIFbtEESt20forward_iterator_tagED2Ev.exit67
  %i.er = load ptr, ptr %i.ah, align 8, !tbaa !134 ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.er, null
  br i1 %.not.i.i1.i, label %_ZN4llvm14iterator_rangeINS_20filter_iterator_implINS_16MCSubRegIteratorESt8functionIFbtEESt20forward_iterator_tagEEED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZN4llvm20filter_iterator_baseINS_16MCSubRegIteratorESt8functionIFbtEESt20forward_iterator_tagED2Ev.exit.i
  %i.es = call noundef zeroext i1 %i.er(ptr noundef nonnull align 8 dereferenceable(32) %i.ai, ptr noundef nonnull align 8 dereferenceable(32) %i.ai, i32 noundef 3) #25, !inline_history !7 ; 0 uses
  br label %_ZN4llvm14iterator_rangeINS_20filter_iterator_implINS_16MCSubRegIteratorESt8functionIFbtEESt20forward_iterator_tagEEED2Ev.exit

_ZN4llvm14iterator_rangeINS_20filter_iterator_implINS_16MCSubRegIteratorESt8functionIFbtEESt20forward_iterator_tagEEED2Ev.exit: ; preds = %_ZN4llvm20filter_iterator_baseINS_16MCSubRegIteratorESt8functionIFbtEESt20forward_iterator_tagED2Ev.exit.i, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.et = load i16, ptr %i.cn, align 8, !tbaa !147
  %i.eu = zext i16 %i.et to i32                   ; 2 uses
  %i.ev = and i32 %i.eu, 63
  %i.ew = zext nneg i32 %i.ev to i64
  %i.ex = shl nuw i64 1, %i.ew
  %i.ey = load i32, ptr %i.y, align 8, !tbaa !75
  %i.ez = icmp ult i32 %i.ey, 65
  %i.fa = load ptr, ptr %i.x, align 8
  %i.fb = lshr i32 %i.eu, 6
  %i.fc = zext nneg i32 %i.fb to i64
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %i.fc
  %.in.i.i = select i1 %i.ez, ptr %i.x, ptr %i.fd
  %i.fe = load i64, ptr %.in.i.i, align 8, !tbaa !76
  %i.ff = and i64 %i.ex, %i.fe
  %.not84 = icmp eq i64 %i.ff, 0
  br i1 %.not84, label %.critedge, label %bb.u

.lr.ph:                                           ; preds = %_ZNK4llvm14iterator_rangeINS_20filter_iterator_implINS_16MCSubRegIteratorESt8functionIFbtEESt20forward_iterator_tagEEE3endEv.exit, %_ZN4llvm20filter_iterator_baseINS_16MCSubRegIteratorESt8functionIFbtEESt20forward_iterator_tagEppEv.exit
  %i.fg = phi ptr [ %i.gh, %_ZN4llvm20filter_iterator_baseINS_16MCSubRegIteratorESt8functionIFbtEESt20forward_iterator_tagEppEv.exit ], [ %i.ek, %_ZNK4llvm14iterator_rangeINS_20filter_iterator_implINS_16MCSubRegIteratorESt8functionIFbtEESt20forward_iterator_tagEEE3endEv.exit ]
  %i.fh = phi ptr [ %i.gi, %_ZN4llvm20filter_iterator_baseINS_16MCSubRegIteratorESt8functionIFbtEESt20forward_iterator_tagEppEv.exit ], [ %i.ej, %_ZNK4llvm14iterator_rangeINS_20filter_iterator_implINS_16MCSubRegIteratorESt8functionIFbtEESt20forward_iterator_tagEEE3endEv.exit ] ; 2 uses
  %i.fi = load i16, ptr %i.au, align 8, !tbaa !45
  %i.fj = zext i16 %i.fi to i64
  %i.fk = load ptr, ptr %i.d, align 8, !tbaa !71
  %i.fl = getelementptr inbounds nuw [40 x i8], ptr %i.fk, i64 %i.fj
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 34
  store i16 %spec.select, ptr %i.fm, align 2, !tbaa !144
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fh, i64 2 ; 2 uses
  store ptr %i.fn, ptr %i.as, align 8, !tbaa !137
  %i.fo = load i16, ptr %i.fh, align 2, !tbaa !45 ; 2 uses
  %i.fp = sext i16 %i.fo to i32
  %i.fq = load i32, ptr %8, align 8, !tbaa !138
  %i.fr = add i32 %i.fq, %i.fp                    ; 2 uses
  store i32 %i.fr, ptr %8, align 8, !tbaa !138
  %.not.i.i.i.i68 = icmp eq i16 %i.fo, 0
  br i1 %.not.i.i.i.i68, label %bb.q, label %_ZN4llvm21iterator_adaptor_baseINS_20filter_iterator_baseINS_16MCSubRegIteratorESt8functionIFbtEESt20forward_iterator_tagEES2_S6_KtlPS8_RS8_EppEv.exit.i

bb.q:                                             ; preds = %.lr.ph
  store ptr null, ptr %i.as, align 8, !tbaa !137
  br label %_ZN4llvm21iterator_adaptor_baseINS_20filter_iterator_baseINS_16MCSubRegIteratorESt8functionIFbtEESt20forward_iterator_tagEES2_S6_KtlPS8_RS8_EppEv.exit.i

_ZN4llvm21iterator_adaptor_baseINS_20filter_iterator_baseINS_16MCSubRegIteratorESt8functionIFbtEESt20forward_iterator_tagEES2_S6_KtlPS8_RS8_EppEv.exit.i: ; preds = %bb.q, %.lr.ph
  %i.fs = phi ptr [ %i.fn, %.lr.ph ], [ null, %bb.q ] ; 2 uses
  %i.ft = trunc i32 %i.fr to i16                  ; 2 uses
  store i16 %i.ft, ptr %i.au, align 8, !tbaa !141
  %i.fu = load ptr, ptr %i.av, align 8, !tbaa !137
  %.not1.i.i = icmp eq ptr %i.fs, %i.fu
  br i1 %.not1.i.i, label %_ZN4llvm20filter_iterator_baseINS_16MCSubRegIteratorESt8functionIFbtEESt20forward_iterator_tagEppEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN4llvm21iterator_adaptor_baseINS_20filter_iterator_baseINS_16MCSubRegIteratorESt8functionIFbtEESt20forward_iterator_tagEES2_S6_KtlPS8_RS8_EppEv.exit.i, %_ZN4llvm21iterator_adaptor_baseINS_20filter_iterator_baseINS_16MCSubRegIteratorESt8functionIFbtEESt20forward_iterator_tagEES2_S6_KtlPS8_RS8_EppEv.exit.i.i
  %i.fv = phi i16 [ %i.gf, %_ZN4llvm21iterator_adaptor_baseINS_20filter_iterator_baseINS_16MCSubRegIteratorESt8functionIFbtEESt20forward_iterator_tagEES2_S6_KtlPS8_RS8_EppEv.exit.i.i ], [ %i.ft, %_ZN4llvm21iterator_adaptor_baseINS_20filter_iterator_baseINS_16MCSubRegIteratorESt8functionIFbtEESt20forward_iterator_tagEES2_S6_KtlPS8_RS8_EppEv.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i16 %i.fv, ptr %i.a, align 2, !tbaa !45
  %i.fw = load ptr, ptr %i.ak, align 8, !tbaa !134
  %.not.i.i.i1.i = icmp eq ptr %i.fw, null
  br i1 %.not.i.i.i1.i, label %bb.r, label %_ZNKSt8functionIFbtEEclEt.exit.i.i

bb.r:                                             ; preds = %.lr.ph.i.i
  call void @_ZSt25__throw_bad_function_callv() #26
  unreachable

_ZNKSt8functionIFbtEEclEt.exit.i.i:               ; preds = %.lr.ph.i.i
  %i.fx = load ptr, ptr %i.aj, align 8, !tbaa !133
  %i.fy = call noundef zeroext i1 %i.fx(ptr noundef nonnull align 8 dereferenceable(32) %i.ag, ptr noundef nonnull align 2 dereferenceable(2) %i.a) #25, !inline_history !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.pre.pre = load ptr, ptr %i.as, align 8, !tbaa !137 ; 3 uses
  br i1 %i.fy, label %_ZN4llvm20filter_iterator_baseINS_16MCSubRegIteratorESt8functionIFbtEESt20forward_iterator_tagEppEv.exit.loopexit, label %bb.s

bb.s:                                             ; preds = %_ZNKSt8functionIFbtEEclEt.exit.i.i
  %i.fz = getelementptr inbounds nuw i8, ptr %.pre.pre, i64 2 ; 2 uses
  store ptr %i.fz, ptr %i.as, align 8, !tbaa !137
  %i.ga = load i16, ptr %.pre.pre, align 2, !tbaa !45 ; 2 uses
  %i.gb = sext i16 %i.ga to i32
  %i.gc = load i32, ptr %8, align 8, !tbaa !138
  %i.gd = add i32 %i.gc, %i.gb                    ; 2 uses
  store i32 %i.gd, ptr %8, align 8, !tbaa !138
  %.not.i.i.i.i.i = icmp eq i16 %i.ga, 0
  br i1 %.not.i.i.i.i.i, label %bb.t, label %_ZN4llvm21iterator_adaptor_baseINS_20filter_iterator_baseINS_16MCSubRegIteratorESt8functionIFbtEESt20forward_iterator_tagEES2_S6_KtlPS8_RS8_EppEv.exit.i.i

bb.t:                                             ; preds = %bb.s
  store ptr null, ptr %i.as, align 8, !tbaa !137
  br label %_ZN4llvm21iterator_adaptor_baseINS_20filter_iterator_baseINS_16MCSubRegIteratorESt8functionIFbtEESt20forward_iterator_tagEES2_S6_KtlPS8_RS8_EppEv.exit.i.i

_ZN4llvm21iterator_adaptor_baseINS_20filter_iterator_baseINS_16MCSubRegIteratorESt8functionIFbtEESt20forward_iterator_tagEES2_S6_KtlPS8_RS8_EppEv.exit.i.i: ; preds = %bb.t, %bb.s
  %i.ge = phi ptr [ %i.fz, %bb.s ], [ null, %bb.t ] ; 2 uses
  %i.gf = trunc i32 %i.gd to i16                  ; 2 uses
  store i16 %i.gf, ptr %i.au, align 8, !tbaa !141
  %i.gg = load ptr, ptr %i.av, align 8, !tbaa !137
  %.not.i.i69 = icmp eq ptr %i.ge, %i.gg
  br i1 %.not.i.i69, label %_ZN4llvm20filter_iterator_baseINS_16MCSubRegIteratorESt8functionIFbtEESt20forward_iterator_tagEppEv.exit.loopexit, label %.lr.ph.i.i, !llvm.loop !5

_ZN4llvm20filter_iterator_baseINS_16MCSubRegIteratorESt8functionIFbtEESt20forward_iterator_tagEppEv.exit.loopexit: ; preds = %_ZN4llvm21iterator_adaptor_baseINS_20filter_iterator_baseINS_16MCSubRegIteratorESt8functionIFbtEESt20forward_iterator_tagEES2_S6_KtlPS8_RS8_EppEv.exit.i.i, %_ZNKSt8functionIFbtEEclEt.exit.i.i
  %.pre = phi ptr [ %i.ge, %_ZN4llvm21iterator_adaptor_baseINS_20filter_iterator_baseINS_16MCSubRegIteratorESt8functionIFbtEESt20forward_iterator_tagEES2_S6_KtlPS8_RS8_EppEv.exit.i.i ], [ %.pre.pre, %_ZNKSt8functionIFbtEEclEt.exit.i.i ]
  %.pre94 = load ptr, ptr %i.at, align 8, !tbaa !137
  br label %_ZN4llvm20filter_iterator_baseINS_16MCSubRegIteratorESt8functionIFbtEESt20forward_iterator_tagEppEv.exit

_ZN4llvm20filter_iterator_baseINS_16MCSubRegIteratorESt8functionIFbtEESt20forward_iterator_tagEppEv.exit: ; preds = %_ZN4llvm20filter_iterator_baseINS_16MCSubRegIteratorESt8functionIFbtEESt20forward_iterator_tagEppEv.exit.loopexit, %_ZN4llvm21iterator_adaptor_baseINS_20filter_iterator_baseINS_16MCSubRegIteratorESt8functionIFbtEESt20forward_iterator_tagEES2_S6_KtlPS8_RS8_EppEv.exit.i
  %i.gh = phi ptr [ %.pre94, %_ZN4llvm20filter_iterator_baseINS_16MCSubRegIteratorESt8functionIFbtEESt20forward_iterator_tagEppEv.exit.loopexit ], [ %i.fg, %_ZN4llvm21iterator_adaptor_baseINS_20filter_iterator_baseINS_16MCSubRegIteratorESt8functionIFbtEESt20forward_iterator_tagEES2_S6_KtlPS8_RS8_EppEv.exit.i ] ; 2 uses
  %i.gi = phi ptr [ %.pre, %_ZN4llvm20filter_iterator_baseINS_16MCSubRegIteratorESt8functionIFbtEESt20forward_iterator_tagEppEv.exit.loopexit ], [ %i.fs, %_ZN4llvm21iterator_adaptor_baseINS_20filter_iterator_baseINS_16MCSubRegIteratorESt8functionIFbtEESt20forward_iterator_tagEES2_S6_KtlPS8_RS8_EppEv.exit.i ] ; 2 uses
  %.not83 = icmp eq ptr %i.gi, %i.gh
  br i1 %.not83, label %._crit_edge.loopexit, label %.lr.ph

bb.u:                                             ; preds = %_ZN4llvm14iterator_rangeINS_20filter_iterator_implINS_16MCSubRegIteratorESt8functionIFbtEESt20forward_iterator_tagEEED2Ev.exit
  %i.gj = getelementptr inbounds nuw i8, ptr %i.cm, i64 21
  store i8 1, ptr %i.gj, align 1, !tbaa !41
  %i.gk = getelementptr inbounds nuw i8, ptr %i.cj, i64 41
  store i8 1, ptr %i.gk, align 1, !tbaa !150
  br label %.critedge

.critedge:                                        ; preds = %bb.u, %_ZN4llvm14iterator_rangeINS_20filter_iterator_implINS_16MCSubRegIteratorESt8functionIFbtEESt20forward_iterator_tagEEED2Ev.exit
  %i.gl = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  store i32 0, ptr %i.gl, align 8, !tbaa !40
  %i.gm = getelementptr inbounds nuw i8, ptr %i.cm, i64 22
  store i8 1, ptr %i.gm, align 2, !tbaa !126
  %i.gn = load i32, ptr %i.aw, align 4, !tbaa !110
  %i.go = add i32 %i.gn, 1
  store i32 %i.go, ptr %i.aw, align 4, !tbaa !110
  %exitcond93.not = icmp eq i64 %i.ck, %2
  br i1 %exitcond93.not, label %_ZNK4llvm3mca12RegisterFile16canEliminateMoveERKNS0_10WriteStateERKNS0_9ReadStateEj.exit.thread, label %bb.i, !llvm.loop !281

_ZNK4llvm3mca12RegisterFile16canEliminateMoveERKNS0_10WriteStateERKNS0_9ReadStateEj.exit.thread: ; preds = %bb.h, %bb.g, %bb.f, %.lr.ph118, %_ZNK4llvm3mca12RegisterFile16canEliminateMoveERKNS0_10WriteStateERKNS0_9ReadStateEj.exit, %.critedge, %bb.d, %bb.c, %bb.a
  %.4 = phi i1 [ true, %.critedge ], [ false, %bb.a ], [ false, %bb.c ], [ true, %bb.d ], [ false, %_ZNK4llvm3mca12RegisterFile16canEliminateMoveERKNS0_10WriteStateERKNS0_9ReadStateEj.exit ], [ false, %.lr.ph118 ], [ false, %bb.f ], [ false, %bb.g ], [ false, %bb.h ]
  ret i1 %.4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZNK4llvm3mca8WriteRef17getWriteBackCycleEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !22
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZNK4llvm3mca12RegisterFile29getElapsedCyclesFromWriteBackERKNS0_8WriteRefE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(156) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.b = load i32, ptr %i.a, align 8, !tbaa !87
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !22
  %i.e = sub i32 %i.b, %i.d
  ret i32 %i.e
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4llvm3mca12RegisterFile13collectWritesERKNS_15MCSubtargetInfoERKNS0_9ReadStateERNS_15SmallVectorImplINS0_8WriteRefEEESB_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(156) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(320) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(43) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4) local_unnamed_addr #3 align 2 {
bb.a:
  %.sroa.0.i.i23.i.i.i.i.i = alloca { i32, i32, i32, i16 }, align 8 ; 4 uses
  %5 = alloca %"class.llvm::mca::WriteRef", align 8 ; 4 uses
  %.sroa.0.i.i13.i.i.i.i.i = alloca { i32, i32, i32, i16 }, align 8 ; 4 uses
  %.sroa.0.i.i.i.i.i.i.i = alloca { i32, i32, i32, i16 }, align 8 ; 4 uses
  %6 = alloca %"class.llvm::mca::WriteRef", align 8 ; 4 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !151    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !175
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.e = load i32, ptr %i.d, align 4, !tbaa !177
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !178
  %i.h = zext i32 %i.e to i64
  %i.i = getelementptr inbounds nuw [14 x i8], ptr %i.g, i64 %i.h ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = load i16, ptr %i.j, align 8, !tbaa !147  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.m = zext i16 %i.k to i64
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !71   ; 2 uses
  %i.o = getelementptr inbounds nuw [40 x i8], ptr %i.n, i64 %i.m
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 34
  %i.q = load i16, ptr %i.p, align 2, !tbaa !149  ; 2 uses
  %.not = icmp eq i16 %i.q, 0
  %spec.select = select i1 %.not, i16 %i.k, i16 %i.q ; 2 uses
  %i.r = zext i16 %spec.select to i64             ; 2 uses
  %i.s = getelementptr inbounds nuw [40 x i8], ptr %i.n, i64 %i.r ; 8 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !25
  %.not52 = icmp eq ptr %i.u, null
  br i1 %.not52, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !51   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.y = load i32, ptr %i.x, align 4, !tbaa !52
  %.not.i = icmp ult i32 %i.w, %i.y
  br i1 %.not.i, label %bb.d, label %bb.c, !prof !88

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4llvm23SmallVectorTemplateBaseINS_3mca8WriteRefELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.s)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_3mca8WriteRefELb1EE9push_backERKS2_.exit

bb.d:                                             ; preds = %bb.b
  %i.z = zext i32 %i.w to i64
  %i.aa = load ptr, ptr %3, align 8, !tbaa !50
  %i.ab = getelementptr inbounds nuw [24 x i8], ptr %i.aa, i64 %i.z
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false)
  %i.ac = load i32, ptr %i.v, align 8, !tbaa !51
  %i.ad = add i32 %i.ac, 1
  store i32 %i.ad, ptr %i.v, align 8, !tbaa !51
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_3mca8WriteRefELb1EE9push_backERKS2_.exit

bb.e:                                             ; preds = %bb.a
  %i.ae = load i32, ptr %i.s, align 8, !tbaa !21
  %.not1.i = icmp eq i32 %i.ae, -1
  br i1 %.not1.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_3mca8WriteRefELb1EE9push_backERKS2_.exit, label %_ZNK4llvm3mca8WriteRef18getWriteResourceIDEv.exit

_ZNK4llvm3mca8WriteRef18getWriteResourceIDEv.exit: ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.0.i = load i32, ptr %i.af, align 8, !tbaa !44
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !179 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !180
  %i.ak = getelementptr inbounds nuw i8, ptr %i.i, i64 10
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !182
  %i.am = zext i16 %i.al to i64
  %i.an = getelementptr inbounds nuw [12 x i8], ptr %i.aj, i64 %i.am ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  %i.ap = load i16, ptr %i.ao, align 2, !tbaa !183 ; 2 uses
  %i.aq = zext i16 %i.ap to i64
  %.idx.i = mul nuw nsw i64 %i.aq, 12
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 %.idx.i
  %.not25.i = icmp eq i16 %i.ap, 0
  br i1 %.not25.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_3mca8WriteRefELb1EE9push_backERKS2_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNK4llvm3mca8WriteRef18getWriteResourceIDEv.exit, %bb.h
  %.01626.i = phi ptr [ %i.ay, %bb.h ], [ %i.an, %_ZNK4llvm3mca8WriteRef18getWriteResourceIDEv.exit ] ; 4 uses
  %i.as = load i32, ptr %.01626.i, align 4, !tbaa !185 ; 2 uses
  %i.at = icmp ult i32 %i.as, %i.ah
  br i1 %i.at, label %bb.h, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i
  %i.au = icmp ugt i32 %i.as, %i.ah
  br i1 %i.au, label %_ZN4llvm23SmallVectorTemplateBaseINS_3mca8WriteRefELb1EE9push_backERKS2_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.av = getelementptr inbounds nuw i8, ptr %.01626.i, i64 4
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !186 ; 2 uses
  %.not21.i = icmp eq i32 %i.aw, 0
  %i.ax = icmp eq i32 %i.aw, %.0.i
  %or.cond.i = or i1 %.not21.i, %i.ax
  br i1 %or.cond.i, label %_ZNK4llvm15MCSubtargetInfo20getReadAdvanceCyclesEPKNS_16MCSchedClassDescEjj.exit, label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph.i
  %i.ay = getelementptr inbounds nuw i8, ptr %.01626.i, i64 12 ; 2 uses
  %.not.i57 = icmp eq ptr %i.ay, %i.ar
  br i1 %.not.i57, label %_ZN4llvm23SmallVectorTemplateBaseINS_3mca8WriteRefELb1EE9push_backERKS2_.exit, label %.lr.ph.i, !llvm.loop !8

_ZNK4llvm15MCSubtargetInfo20getReadAdvanceCyclesEPKNS_16MCSchedClassDescEjj.exit: ; preds = %bb.g
  %i.az = getelementptr inbounds nuw i8, ptr %.01626.i, i64 8
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !187 ; 2 uses
  %i.bb = icmp slt i32 %i.ba, 0
  br i1 %i.bb, label %bb.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_3mca8WriteRefELb1EE9push_backERKS2_.exit

bb.i:                                             ; preds = %_ZNK4llvm15MCSubtargetInfo20getReadAdvanceCyclesEPKNS_16MCSchedClassDescEjj.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !87
  %i.be = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !22
  %i.bg = sub i32 %i.bd, %i.bf
  %i.bh = sub nsw i32 0, %i.ba
  %i.bi = icmp ult i32 %i.bg, %i.bh
  br i1 %i.bi, label %bb.j, label %_ZN4llvm23SmallVectorTemplateBaseINS_3mca8WriteRefELb1EE9push_backERKS2_.exit

bb.j:                                             ; preds = %bb.i
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !51 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !52
  %.not.i58 = icmp ult i32 %i.bk, %i.bm
  br i1 %.not.i58, label %bb.l, label %bb.k, !prof !88

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN4llvm23SmallVectorTemplateBaseINS_3mca8WriteRefELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(24) %i.s)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_3mca8WriteRefELb1EE9push_backERKS2_.exit

bb.l:                                             ; preds = %bb.j
  %i.bn = zext i32 %i.bk to i64
  %i.bo = load ptr, ptr %4, align 8, !tbaa !50
  %i.bp = getelementptr inbounds nuw [24 x i8], ptr %i.bo, i64 %i.bn
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.bp, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false)
  %i.bq = load i32, ptr %i.bj, align 8, !tbaa !51
  %i.br = add i32 %i.bq, 1
  store i32 %i.br, ptr %i.bj, align 8, !tbaa !51
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_3mca8WriteRefELb1EE9push_backERKS2_.exit

_ZN4llvm23SmallVectorTemplateBaseINS_3mca8WriteRefELb1EE9push_backERKS2_.exit: ; preds = %bb.h, %bb.f, %_ZNK4llvm3mca8WriteRef18getWriteResourceIDEv.exit, %bb.l, %bb.k, %bb.e, %bb.d, %bb.c, %_ZNK4llvm15MCSubtargetInfo20getReadAdvanceCyclesEPKNS_16MCSchedClassDescEjj.exit, %bb.i
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !112, !nonnull !43, !align !116 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 56
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !122, !noalias !294
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !117, !noalias !294
  %i.by = getelementptr inbounds nuw [24 x i8], ptr %i.bx, i64 %i.r
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 4
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !123, !noalias !294
  %i.cb = zext i32 %i.ca to i64
  %i.cc = getelementptr inbounds nuw [2 x i8], ptr %i.bv, i64 %i.cb ; 2 uses
  %i.cd = load i16, ptr %i.cc, align 2, !tbaa !45, !noalias !294 ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %i.cd, 0
  br i1 %.not.i.i.i.i, label %select.unfold._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_3mca8WriteRefELb1EE9push_backERKS2_.exit
  %i.ce = zext i16 %i.cd to i32
  %i.cf = zext i16 %spec.select to i32
  %i.cg = add nuw nsw i32 %i.ce, %i.cf
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.cj = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.cl = getelementptr inbounds nuw i8, ptr %i.i, i64 10
  %i.cm = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.co = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %4, i64 12
  br label %bb.m

select.unfold._crit_edge:                         ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_3mca8WriteRefELb1EE9push_backERKS2_.exit61, %_ZN4llvm23SmallVectorTemplateBaseINS_3mca8WriteRefELb1EE9push_backERKS2_.exit
  %i.cq = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !51 ; 3 uses
  %i.cs = icmp ugt i32 %i.cr, 1
  br i1 %i.cs, label %bb.y, label %_ZN4llvm15SmallVectorImplINS_3mca8WriteRefEE6resizeEm.exit

end_hunk_0
