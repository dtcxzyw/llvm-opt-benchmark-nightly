Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/zend_hash?download=true
inline.NumInlined: 31
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 50
loop-unroll.NumUnrolled: 50
begin_hunk_0_@zend_hash_rehash:bb.a
  br label %.lr.ph.i215.prol.loopexit.unr-lcssa

.lr.ph.i215.prol.loopexit.unr-lcssa:              ; preds = %bb.at, %bb.as, %.lr.ph.i215.prol
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jt, i64 16
  br label %.lr.ph.i215.prol.loopexit

.lr.ph.i215.prol.loopexit:                        ; preds = %.lr.ph.i215.prol.loopexit.unr-lcssa, %.lr.ph.i215.preheader
  %.010.i216.unr = phi ptr [ %i.jt, %.lr.ph.i215.preheader ], [ %i.ke, %.lr.ph.i215.prol.loopexit.unr-lcssa ]
  %i.kf = icmp eq i64 %i.jx, 0
  br i1 %i.kf, label %_zend_hash_iterators_update.exit218, label %.lr.ph.i215

.lr.ph.i215:                                      ; preds = %.lr.ph.i215.prol.loopexit, %bb.ay
  %.010.i216 = phi ptr [ %i.kr, %bb.ay ], [ %.010.i216.unr, %.lr.ph.i215.prol.loopexit ] ; 5 uses
  %i.kg = load ptr, ptr %.010.i216, align 8, !tbaa !89
  %i.kh = icmp eq ptr %i.kg, %0
  br i1 %i.kh, label %bb.au, label %.lr.ph.i215.1

bb.au:                                            ; preds = %.lr.ph.i215
  %i.ki = getelementptr inbounds nuw i8, ptr %.010.i216, i64 8 ; 2 uses
  %i.kj = load i32, ptr %i.ki, align 8, !tbaa !90
  %i.kk = icmp eq i32 %i.kj, %i.bm
  br i1 %i.kk, label %bb.av, label %.lr.ph.i215.1

bb.av:                                            ; preds = %bb.au
  store i32 %i.jq, ptr %i.ki, align 8, !tbaa !90
  br label %.lr.ph.i215.1

.lr.ph.i215.1:                                    ; preds = %bb.av, %bb.au, %.lr.ph.i215
  %i.kl = getelementptr inbounds nuw i8, ptr %.010.i216, i64 16
  %i.km = load ptr, ptr %i.kl, align 8, !tbaa !89
  %i.kn = icmp eq ptr %i.km, %0
  br i1 %i.kn, label %bb.aw, label %bb.ay

bb.aw:                                            ; preds = %.lr.ph.i215.1
  %i.ko = getelementptr inbounds nuw i8, ptr %.010.i216, i64 24 ; 2 uses
  %i.kp = load i32, ptr %i.ko, align 8, !tbaa !90
  %i.kq = icmp eq i32 %i.kp, %i.bm
  br i1 %i.kq, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  store i32 %i.jq, ptr %i.ko, align 8, !tbaa !90
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw, %.lr.ph.i215.1
  %i.kr = getelementptr inbounds nuw i8, ptr %.010.i216, i64 32 ; 2 uses
  %.not.i217.1 = icmp eq ptr %i.kr, %i.jw
  br i1 %.not.i217.1, label %_zend_hash_iterators_update.exit218, label %.lr.ph.i215, !llvm.loop !1

_zend_hash_iterators_update.exit218:              ; preds = %.lr.ph.i215.prol.loopexit, %bb.ay, %.preheader, %.lr.ph244.prol.loopexit, %bb.k, %bb.d, %bb.ar, %.loopexit228, %bb.b, %bb.c
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @zend_hash_to_packed(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !39
  %i.e = sub i32 0, %i.d
  %i.f = zext i32 %i.e to i64
  %.neg = mul nsw i64 %i.f, -4
  %i.g = getelementptr inbounds i8, ptr %i.b, i64 %.neg ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !31
  %i.j = and i32 %i.i, 128
  %.not = icmp eq i32 %i.j, 0
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = load i32, ptr %i.k, align 8, !tbaa !55
  %i.m = zext i32 %i.l to i64
  %i.n = shl nuw nsw i64 %i.m, 4
  %i.o = or disjoint i64 %i.n, 8                  ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = tail call noalias ptr @__zend_malloc(i64 noundef %i.o) #26
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.q = tail call noalias ptr @_emalloc(i64 noundef %i.o) #26
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.r = phi ptr [ %i.p, %bb.b ], [ %i.q, %bb.c ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !31
  %i.u = or i32 %i.t, 20
  store i32 %i.u, ptr %i.s, align 8, !tbaa !31
  store i32 -2, ptr %i.c, align 4, !tbaa !39
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 3 uses
  store ptr %i.v, ptr %i.a, align 8, !tbaa !31
  store i32 -1, ptr %i.r, align 4, !tbaa !40
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  store i32 -1, ptr %i.w, align 4, !tbaa !40
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = load i32, ptr %i.x, align 8, !tbaa !50   ; 4 uses
  %.not70 = icmp eq i32 %i.y, 0
  br i1 %.not70, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.d
  %xtraiter = and i32 %i.y, 3                     ; 3 uses
  %i.z = icmp ult i32 %i.y, 4
  br i1 %i.z, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i32 %i.y, -4
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.069 = phi ptr [ %i.b, %.lr.ph.preheader.new ], [ %i.ax, %.lr.ph ] ; 9 uses
  %.06368 = phi ptr [ %i.v, %.lr.ph.preheader.new ], [ %i.aw, %.lr.ph ] ; 9 uses
  %niter = phi i32 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.aa = load ptr, ptr %.069, align 8, !tbaa !31
  %i.ab = getelementptr inbounds nuw i8, ptr %.069, i64 8
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !31
  store ptr %i.aa, ptr %.06368, align 8, !tbaa !31
  %i.ad = getelementptr inbounds nuw i8, ptr %.06368, i64 8
  store i32 %i.ac, ptr %i.ad, align 8, !tbaa !31
  %i.ae = getelementptr inbounds nuw i8, ptr %.06368, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %.069, i64 32
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !31
  %i.ah = getelementptr inbounds nuw i8, ptr %.069, i64 40
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !31
  store ptr %i.ag, ptr %i.ae, align 8, !tbaa !31
  %i.aj = getelementptr inbounds nuw i8, ptr %.06368, i64 24
  store i32 %i.ai, ptr %i.aj, align 8, !tbaa !31
  %i.ak = getelementptr inbounds nuw i8, ptr %.06368, i64 32
  %i.al = getelementptr inbounds nuw i8, ptr %.069, i64 64
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !31
  %i.an = getelementptr inbounds nuw i8, ptr %.069, i64 72
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !31
  store ptr %i.am, ptr %i.ak, align 8, !tbaa !31
  %i.ap = getelementptr inbounds nuw i8, ptr %.06368, i64 40
  store i32 %i.ao, ptr %i.ap, align 8, !tbaa !31
  %i.aq = getelementptr inbounds nuw i8, ptr %.06368, i64 48
  %i.ar = getelementptr inbounds nuw i8, ptr %.069, i64 96
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !31
  %i.at = getelementptr inbounds nuw i8, ptr %.069, i64 104
  %i.au = load i32, ptr %i.at, align 8, !tbaa !31
  store ptr %i.as, ptr %i.aq, align 8, !tbaa !31
  %i.av = getelementptr inbounds nuw i8, ptr %.06368, i64 56
  store i32 %i.au, ptr %i.av, align 8, !tbaa !31
  %i.aw = getelementptr inbounds nuw i8, ptr %.06368, i64 64 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.069, i64 128 ; 2 uses
  %niter.next.3 = add nuw i32 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !113

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.069.epil.init = phi ptr [ %i.b, %.lr.ph.preheader ], [ %i.ax, %._crit_edge.loopexit.unr-lcssa ]
  %.06368.epil.init = phi ptr [ %i.v, %.lr.ph.preheader ], [ %i.aw, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod72 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod72)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.069.epil = phi ptr [ %i.bd, %.lr.ph.epil ], [ %.069.epil.init, %.lr.ph.epil.preheader ] ; 3 uses
  %.06368.epil = phi ptr [ %i.bc, %.lr.ph.epil ], [ %.06368.epil.init, %.lr.ph.epil.preheader ] ; 3 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.ay = load ptr, ptr %.069.epil, align 8, !tbaa !31
  %i.az = getelementptr inbounds nuw i8, ptr %.069.epil, i64 8
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !31
  store ptr %i.ay, ptr %.06368.epil, align 8, !tbaa !31
  %i.bb = getelementptr inbounds nuw i8, ptr %.06368.epil, i64 8
  store i32 %i.ba, ptr %i.bb, align 8, !tbaa !31
  %i.bc = getelementptr inbounds nuw i8, ptr %.06368.epil, i64 16
  %i.bd = getelementptr inbounds nuw i8, ptr %.069.epil, i64 32
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !114

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %bb.d
  %i.be = load i32, ptr %i.h, align 4, !tbaa !31
  %i.bf = and i32 %i.be, 128
  %.not66 = icmp eq i32 %i.bf, 0
  br i1 %.not66, label %bb.f, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  tail call void @free(ptr noundef %i.g) #27
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge
  tail call void @_efree(ptr noundef %i.g) #27
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @zend_hash_extend(ptr nofree noundef captures(address) %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %bb.ac, label %bb.b

bb.b:                                             ; preds = %bb.a
  %3 = and i32 %1, 2147483647
  %4 = icmp ne i32 %3, 0
  tail call void @llvm.assume(i1 %4)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !31   ; 2 uses
  %i.d = and i32 %i.c, 8
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.i, label %bb.c, !prof !45

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !55
  %i.g = icmp ugt i32 %1, %i.f
  br i1 %i.g, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.h = icmp ult i32 %1, 9
  br i1 %i.h, label %zend_hash_check_size.exit168, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = icmp ugt i32 %1, 1073741824
  br i1 %i.i, label %bb.f, label %bb.g, !prof !30

bb.f:                                             ; preds = %bb.e
  tail call void (i32, ptr, ...) @zend_error_noreturn(i32 noundef 1, ptr noundef nonnull @.str, i32 noundef %1, i64 noundef 32, i64 noundef 32) #28
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.j = add nsw i32 %1, -1
  %i.k = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.j, i1 true)
  %i.l = xor i32 %i.k, 31
  %i.m = shl nuw nsw i32 2, %i.l
  br label %zend_hash_check_size.exit168

zend_hash_check_size.exit168:                     ; preds = %bb.d, %bb.g
  %.0.i167 = phi i32 [ %i.m, %bb.g ], [ 8, %bb.d ]
  store i32 %.0.i167, ptr %i.e, align 8, !tbaa !55
  br label %bb.h

bb.h:                                             ; preds = %zend_hash_check_size.exit168, %bb.c
  tail call void @zend_hash_real_init(ptr noundef nonnull %0, i1 noundef zeroext %2)
  br label %bb.ac

bb.i:                                             ; preds = %bb.b
  %i.n = and i32 %i.c, 4                          ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  br i1 %2, label %bb.j, label %bb.r

bb.j:                                             ; preds = %bb.i
  %i.p = icmp ne i32 %i.n, 0
  tail call void @llvm.assume(i1 %i.p)
  %i.q = load i32, ptr %i.o, align 8, !tbaa !55
  %i.r = icmp ugt i32 %1, %i.q
  br i1 %i.r, label %bb.k, label %bb.ac

bb.k:                                             ; preds = %bb.j
  %i.s = icmp ult i32 %1, 9
  br i1 %i.s, label %zend_hash_check_size.exit166, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.t = icmp ugt i32 %1, 1073741824
  br i1 %i.t, label %bb.m, label %bb.n, !prof !30

bb.m:                                             ; preds = %bb.l
  tail call void (i32, ptr, ...) @zend_error_noreturn(i32 noundef 1, ptr noundef nonnull @.str, i32 noundef %1, i64 noundef 32, i64 noundef 32) #28
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.u = add nsw i32 %1, -1
  %i.v = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.u, i1 true)
  %i.w = xor i32 %i.v, 31
  %i.x = shl nuw nsw i32 2, %i.w
  br label %zend_hash_check_size.exit166

zend_hash_check_size.exit166:                     ; preds = %bb.k, %bb.n
  %.0.i165 = phi i32 [ %i.x, %bb.n ], [ 8, %bb.k ] ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !31
  %i.aa = and i32 %i.z, 128
  %.not163 = icmp eq i32 %i.aa, 0
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !31 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !39
  %i.af = sub i32 0, %i.ae
  %i.ag = zext i32 %i.af to i64                   ; 2 uses
  br i1 %.not163, label %bb.p, label %bb.o

bb.o:                                             ; preds = %zend_hash_check_size.exit166
  %.neg164 = mul nsw i64 %i.ag, -4
  %i.ah = getelementptr inbounds i8, ptr %i.ac, i64 %.neg164
  %i.ai = zext nneg i32 %.0.i165 to i64
  %i.aj = shl nuw nsw i64 %i.ai, 4
  %i.ak = or disjoint i64 %i.aj, 8
  %i.al = tail call ptr @__zend_realloc(ptr noundef %i.ah, i64 noundef %i.ak) #29
  br label %bb.q

bb.p:                                             ; preds = %zend_hash_check_size.exit166
  %i.am = shl nuw nsw i64 %i.ag, 2                ; 2 uses
  %i.an = sub nsw i64 0, %i.am
  %i.ao = getelementptr inbounds i8, ptr %i.ac, i64 %i.an
  %i.ap = zext nneg i32 %.0.i165 to i64
  %i.aq = shl nuw nsw i64 %i.ap, 4
  %i.ar = or disjoint i64 %i.aq, 8
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.at = load i32, ptr %i.as, align 8, !tbaa !50
  %i.au = zext i32 %i.at to i64
  %i.av = shl nuw nsw i64 %i.au, 4
  %i.aw = add nuw nsw i64 %i.av, %i.am
  %i.ax = tail call ptr @_erealloc2(ptr noundef %i.ao, i64 noundef %i.ar, i64 noundef %i.aw) #29
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.ay = phi ptr [ %i.al, %bb.o ], [ %i.ax, %bb.p ]
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !39
  %i.bb = sub i32 0, %i.ba
  %i.bc = zext i32 %i.bb to i64
  %i.bd = shl nuw nsw i64 %i.bc, 2
  %i.be = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !31
  store i32 %.0.i165, ptr %i.o, align 8, !tbaa !55
  br label %bb.ac

bb.r:                                             ; preds = %bb.i
  %.not159 = icmp eq i32 %i.n, 0
  tail call void @llvm.assume(i1 %.not159)
  %i.bg = load i32, ptr %i.o, align 8, !tbaa !55
  %i.bh = icmp ugt i32 %1, %i.bg
  br i1 %i.bh, label %bb.s, label %bb.ac

bb.s:                                             ; preds = %bb.r
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !31 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !39
  %i.bm = sub i32 0, %i.bl
  %i.bn = zext i32 %i.bm to i64
  %.neg160 = mul nsw i64 %i.bn, -4
  %i.bo = getelementptr inbounds i8, ptr %i.bj, i64 %.neg160 ; 2 uses
  %i.bp = icmp ult i32 %1, 9
  br i1 %i.bp, label %zend_hash_check_size.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bq = icmp ugt i32 %1, 1073741824
  br i1 %i.bq, label %bb.u, label %bb.v, !prof !30

bb.u:                                             ; preds = %bb.t
  tail call void (i32, ptr, ...) @zend_error_noreturn(i32 noundef 1, ptr noundef nonnull @.str, i32 noundef %1, i64 noundef 32, i64 noundef 32) #28
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.br = add nsw i32 %1, -1
  %i.bs = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.br, i1 true)
  %i.bt = xor i32 %i.bs, 31
  %i.bu = shl nuw nsw i32 2, %i.bt
  br label %zend_hash_check_size.exit

zend_hash_check_size.exit:                        ; preds = %bb.s, %bb.v
  %.0.i = phi i32 [ %i.bu, %bb.v ], [ 8, %bb.s ]  ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !31
  %i.bx = and i32 %i.bw, 128
  %.not161.a = icmp eq i32 %i.bx, 0
  %i.by = zext nneg i32 %.0.i to i64
  %i.bz = shl nuw nsw i64 %i.by, 5
  %i.ca = shl nuw i32 %.0.i, 1                    ; 2 uses
  %i.cb = zext i32 %i.ca to i64
  %i.cc = shl nuw nsw i64 %i.cb, 2                ; 2 uses
  %i.cd = add nuw nsw i64 %i.cc, %i.bz            ; 2 uses
  br i1 %.not161.a, label %bb.x, label %bb.w

bb.w:                                             ; preds = %zend_hash_check_size.exit
  %i.ce = tail call noalias ptr @__zend_malloc(i64 noundef %i.cd) #26
  br label %bb.y

bb.x:                                             ; preds = %zend_hash_check_size.exit
  %i.cf = tail call noalias ptr @_emalloc(i64 noundef %i.cd) #26
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.cg = phi ptr [ %i.cf, %bb.x ], [ %i.ce, %bb.w ]
  store i32 %.0.i, ptr %i.o, align 8, !tbaa !55
  %i.ch = sub i32 0, %i.ca
  store i32 %i.ch, ptr %i.bk, align 4, !tbaa !39
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.cc ; 2 uses
  store ptr %i.ci, ptr %i.bi, align 8, !tbaa !31
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !50
  %i.cl = zext i32 %i.ck to i64
  %i.cm = shl nuw nsw i64 %i.cl, 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ci, ptr align 8 %i.bj, i64 %i.cm, i1 false)
  %i.cn = load i32, ptr %i.bv, align 4, !tbaa !31
  %i.co = and i32 %i.cn, 128
  %.not162 = icmp eq i32 %i.co, 0
  br i1 %.not162, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  tail call void @free(ptr noundef %i.bo) #27
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
end_hunk_0
