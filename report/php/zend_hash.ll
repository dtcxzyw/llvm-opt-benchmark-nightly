inline.NumInlined: 31
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 50
loop-unroll.NumUnrolled: 50
begin_hunk_0_@zend_hash_extend:bb.a
  br label %bb.q

bb.p:                                             ; preds = %zend_hash_check_size.exit166
  %i.am = shl nuw nsw i64 %i.ag, 2                ; 2 uses
  %i.an = sub nsw i64 0, %i.am
  %i.ao = getelementptr inbounds i8, ptr %i.ac, i64 %i.an
  %i.ap = zext nneg i32 %.0.i165 to i64
  %i.aq = shl nuw nsw i64 %i.ap, 4
  %i.ar = or disjoint i64 %i.aq, 8
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.at = load i32, ptr %i.as, align 8, !tbaa !32
  %i.au = zext i32 %i.at to i64
  %i.av = shl nuw nsw i64 %i.au, 4
  %i.aw = add nuw nsw i64 %i.av, %i.am
  %i.ax = tail call ptr @_erealloc2(ptr noundef %i.ao, i64 noundef %i.ar, i64 noundef %i.aw) #29
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.ay = phi ptr [ %i.al, %bb.o ], [ %i.ax, %bb.p ]
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !19
  %i.bb = sub i32 0, %i.ba
  %i.bc = zext i32 %i.bb to i64
  %i.bd = shl nuw nsw i64 %i.bc, 2
  %i.be = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !13
  store i32 %.0.i165, ptr %i.o, align 8, !tbaa !37
  br label %bb.ac

bb.r:                                             ; preds = %bb.i
  %.not159 = icmp eq i32 %i.n, 0
  tail call void @llvm.assume(i1 %.not159)
  %i.bg = load i32, ptr %i.o, align 8, !tbaa !37
  %i.bh = icmp ugt i32 %1, %i.bg
  br i1 %i.bh, label %bb.s, label %bb.ac

bb.s:                                             ; preds = %bb.r
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !13 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !19
  %i.bm = sub i32 0, %i.bl
  %i.bn = zext i32 %i.bm to i64
  %.neg160 = mul nsw i64 %i.bn, -4
  %i.bo = getelementptr inbounds i8, ptr %i.bj, i64 %.neg160 ; 2 uses
  %i.bp = icmp ult i32 %1, 9
  br i1 %i.bp, label %zend_hash_check_size.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bq = icmp ugt i32 %1, 1073741824
  br i1 %i.bq, label %bb.u, label %bb.v, !prof !12

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
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !13
  %i.bx = and i32 %i.bw, 128
  %.not161 = icmp eq i32 %i.bx, 0
  %i.by = zext nneg i32 %.0.i to i64
  %i.bz = shl nuw nsw i64 %i.by, 5
  %i.ca = shl nuw i32 %.0.i, 1                    ; 2 uses
  %i.cb = zext i32 %i.ca to i64
  %i.cc = shl nuw nsw i64 %i.cb, 2                ; 2 uses
  %i.cd = add nuw nsw i64 %i.cc, %i.bz            ; 2 uses
  br i1 %.not161, label %bb.x, label %bb.w

bb.w:                                             ; preds = %zend_hash_check_size.exit
  %i.ce = tail call noalias ptr @__zend_malloc(i64 noundef %i.cd) #26
  br label %bb.y

bb.x:                                             ; preds = %zend_hash_check_size.exit
  %i.cf = tail call noalias ptr @_emalloc(i64 noundef %i.cd) #26
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.cg = phi ptr [ %i.cf, %bb.x ], [ %i.ce, %bb.w ]
  store i32 %.0.i, ptr %i.o, align 8, !tbaa !37
  %i.ch = sub i32 0, %i.ca
  store i32 %i.ch, ptr %i.bk, align 4, !tbaa !19
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.cc ; 2 uses
  store ptr %i.ci, ptr %i.bi, align 8, !tbaa !13
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !32
  %i.cl = zext i32 %i.ck to i64
  %i.cm = shl nuw nsw i64 %i.cl, 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ci, ptr align 8 %i.bj, i64 %i.cm, i1 false)
  %i.cn = load i32, ptr %i.bv, align 4, !tbaa !13
  %i.co = and i32 %i.cn, 128
  %.not162 = icmp eq i32 %i.co, 0
  br i1 %.not162, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  tail call void @free(ptr noundef %i.bo) #27
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  tail call void @_efree(ptr noundef %i.bo) #27
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  tail call void @zend_hash_rehash(ptr noundef nonnull %0)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.q, %bb.j, %bb.ab, %bb.r, %bb.a, %bb.h
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define dso_local void @zend_hash_discard(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !32   ; 2 uses
  %i.e = zext i32 %1 to i64
  %i.f = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %i.e
  store i32 %1, ptr %i.c, align 8, !tbaa !32
  %.not1718 = icmp eq i32 %i.d, %1
  br i1 %.not1718, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.g = zext i32 %i.d to i64
  %i.h = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 12
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.backedge
  %.019 = phi ptr [ %i.h, %.lr.ph ], [ %i.k, %.backedge ] ; 4 uses
  %i.k = getelementptr inbounds i8, ptr %.019, i64 -32 ; 2 uses
  %i.l = getelementptr inbounds i8, ptr %.019, i64 -24
  %i.m = load i8, ptr %i.l, align 8, !tbaa !13
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %.backedge, label %bb.c, !prof !12

bb.c:                                             ; preds = %bb.b
  %i.o = load i32, ptr %i.i, align 4, !tbaa !33
  %i.p = add i32 %i.o, -1
  store i32 %i.p, ptr %i.i, align 4, !tbaa !33
  %i.q = getelementptr inbounds i8, ptr %.019, i64 -16
  %i.r = load i64, ptr %i.q, align 8, !tbaa !28
  %i.s = load i32, ptr %i.j, align 4, !tbaa !19
  %i.t = trunc i64 %i.r to i32
  %i.u = or i32 %i.s, %i.t
  %i.v = getelementptr inbounds i8, ptr %.019, i64 -20
  %i.w = load i32, ptr %i.v, align 4, !tbaa !13
  %i.x = sext i32 %i.u to i64
  %i.y = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.x
  store i32 %i.w, ptr %i.y, align 4, !tbaa !22
  br label %.backedge

.backedge:                                        ; preds = %bb.c, %bb.b
  %.not17 = icmp eq ptr %i.k, %i.f
  br i1 %.not17, label %._crit_edge, label %bb.b, !llvm.loop !90

._crit_edge:                                      ; preds = %.backedge, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define dso_local i32 @zend_array_count(ptr nofree noundef captures(address) %0) local_unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !13   ; 2 uses
  %i.c = and i32 %i.b, 32
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.b, !prof !27

bb.b:                                             ; preds = %bb.a
  %i.d = tail call fastcc i32 @zend_array_recalc_elements(ptr noundef nonnull %0) ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.f = load i32, ptr %i.e, align 4, !tbaa !33
  %i.g = icmp eq i32 %i.f, %i.d
  br i1 %i.g, label %bb.c, label %bb.g, !prof !12

bb.c:                                             ; preds = %bb.b
  %i.h = and i32 %i.b, -33
  store i32 %i.h, ptr %i.a, align 8, !tbaa !13
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  %i.i = icmp eq ptr %0, getelementptr inbounds nuw (i8, ptr @executor_globals, i64 304)
  br i1 %i.i, label %bb.e, label %bb.f, !prof !12

bb.e:                                             ; preds = %bb.d
  %i.j = tail call fastcc i32 @zend_array_recalc_elements(ptr noundef nonnull %0)
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.l = load i32, ptr %i.k, align 4, !tbaa !33
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.b, %bb.c
  %.0 = phi i32 [ %i.d, %bb.c ], [ %i.d, %bb.b ], [ %i.j, %bb.e ], [ %i.l, %bb.f ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: write, target_mem: none) uwtable
define internal fastcc i32 @zend_array_recalc_elements(ptr nofree noundef readonly captures(none) %0) unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.b = load i32, ptr %i.a, align 4, !tbaa !33   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !13   ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load i32, ptr %i.e, align 8, !tbaa !32   ; 2 uses
  %i.g = zext i32 %i.f to i64
  %.idx = shl nuw nsw i64 %i.g, 5                 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx
  %.not1617 = icmp eq i32 %i.f, 0
  br i1 %.not1617, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.i = add nsw i64 %.idx, -32                   ; 2 uses
  %i.j = and i64 %i.i, 32
  %lcmp.mod.not.not = icmp eq i64 %i.j, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.prol, label %.lr.ph.prol.loopexit

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.l = load i8, ptr %i.k, align 8, !tbaa !13
  %cond.prol = icmp eq i8 %i.l, 12
  br i1 %cond.prol, label %bb.b, label %.lr.ph.prol.loopexit.unr-lcssa, !prof !91

bb.b:                                             ; preds = %.lr.ph.prol
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load i8, ptr %i.n, align 8, !tbaa !13
  %i.p = icmp eq i8 %i.o, 0
  br i1 %i.p, label %bb.c, label %.lr.ph.prol.loopexit.unr-lcssa, !prof !12

bb.c:                                             ; preds = %bb.b
  %i.q = add i32 %i.b, -1
  br label %.lr.ph.prol.loopexit.unr-lcssa

.lr.ph.prol.loopexit.unr-lcssa:                   ; preds = %bb.c, %bb.b, %.lr.ph.prol
  %.2.prol = phi i32 [ %i.b, %.lr.ph.prol ], [ %i.q, %bb.c ], [ %i.b, %bb.b ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol.loopexit.unr-lcssa, %.lr.ph.preheader
  %.2.lcssa.unr = phi i32 [ poison, %.lr.ph.preheader ], [ %.2.prol, %.lr.ph.prol.loopexit.unr-lcssa ]
  %.019.unr = phi ptr [ %i.d, %.lr.ph.preheader ], [ %i.r, %.lr.ph.prol.loopexit.unr-lcssa ]
  %.01518.unr = phi i32 [ %i.b, %.lr.ph.preheader ], [ %.2.prol, %.lr.ph.prol.loopexit.unr-lcssa ]
  %i.s = icmp eq i64 %i.i, 0
  br i1 %i.s, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %bb.h
  %.019 = phi ptr [ %i.ai, %bb.h ], [ %.019.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %.01518 = phi i32 [ %.2.1, %bb.h ], [ %.01518.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.019, i64 8
  %i.u = load i8, ptr %i.t, align 8, !tbaa !13
  %cond = icmp eq i8 %i.u, 12
  br i1 %cond, label %bb.d, label %.lr.ph.1, !prof !91

bb.d:                                             ; preds = %.lr.ph
  %i.v = load ptr, ptr %.019, align 8, !tbaa !13
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load i8, ptr %i.w, align 8, !tbaa !13
  %i.y = icmp eq i8 %i.x, 0
  br i1 %i.y, label %bb.e, label %.lr.ph.1, !prof !12

bb.e:                                             ; preds = %bb.d
  %i.z = add i32 %.01518, -1
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph, %bb.e, %bb.d
  %.2 = phi i32 [ %.01518, %.lr.ph ], [ %i.z, %bb.e ], [ %.01518, %bb.d ] ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.019, i64 40
  %i.ab = load i8, ptr %i.aa, align 8, !tbaa !13
  %cond.1 = icmp eq i8 %i.ab, 12
  br i1 %cond.1, label %bb.f, label %bb.h, !prof !91

bb.f:                                             ; preds = %.lr.ph.1
  %i.ac = getelementptr inbounds nuw i8, ptr %.019, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !13
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load i8, ptr %i.ae, align 8, !tbaa !13
  %i.ag = icmp eq i8 %i.af, 0
  br i1 %i.ag, label %bb.g, label %bb.h, !prof !12

bb.g:                                             ; preds = %bb.f
  %i.ah = add i32 %.2, -1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %.lr.ph.1
  %.2.1 = phi i32 [ %.2, %.lr.ph.1 ], [ %i.ah, %bb.g ], [ %.2, %bb.f ] ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.019, i64 64 ; 2 uses
  %.not16.1 = icmp eq ptr %i.ai, %i.h
  br i1 %.not16.1, label %._crit_edge, label %.lr.ph, !llvm.loop !92

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %bb.h, %bb.a
  %.015.lcssa = phi i32 [ %i.b, %bb.a ], [ %.2.lcssa.unr, %.lr.ph.prol.loopexit ], [ %.2.1, %bb.h ]
  ret i32 %.015.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @zend_hash_get_current_pos(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #13 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.b = load i32, ptr %i.a, align 4, !tbaa !34   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !13
  %i.e = and i32 %i.d, 4
  %.not.i = icmp eq i32 %i.e, 0
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load i32, ptr %i.f, align 8, !tbaa !32   ; 5 uses
  %i.h = icmp ult i32 %i.b, %i.g                  ; 2 uses
  br i1 %.not.i, label %.preheader, label %.preheader1

.preheader1:                                      ; preds = %bb.a
  br i1 %i.h, label %.lr.ph, label %_zend_hash_get_valid_pos.exit

.lr.ph:                                           ; preds = %.preheader1
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !13
  %i.k = zext i32 %i.b to i64
  br label %bb.b

.preheader:                                       ; preds = %bb.a
  br i1 %i.h, label %.lr.ph7, label %_zend_hash_get_valid_pos.exit

.lr.ph7:                                          ; preds = %.preheader
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !13
  %i.n = zext i32 %i.b to i64
  br label %bb.d

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ %i.k, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %indvars.iv
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load i8, ptr %i.p, align 8, !tbaa !13
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %bb.c, label %_zend_hash_get_valid_pos.exit.loopexit21.split.loop.exit23

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.g, %lftr.wideiv
  br i1 %exitcond.not, label %_zend_hash_get_valid_pos.exit, label %bb.b, !llvm.loop !93

bb.d:                                             ; preds = %.lr.ph7, %bb.e
  %indvars.iv14 = phi i64 [ %i.n, %.lr.ph7 ], [ %indvars.iv.next15, %bb.e ] ; 3 uses
  %i.s = getelementptr inbounds nuw [32 x i8], ptr %i.m, i64 %indvars.iv14
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load i8, ptr %i.t, align 8, !tbaa !13
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %bb.e, label %_zend_hash_get_valid_pos.exit.loopexit.split.loop.exit25

bb.e:                                             ; preds = %bb.d
  %indvars.iv.next15 = add nuw nsw i64 %indvars.iv14, 1 ; 2 uses
  %lftr.wideiv17 = trunc i64 %indvars.iv.next15 to i32
  %exitcond18.not = icmp eq i32 %i.g, %lftr.wideiv17
  br i1 %exitcond18.not, label %_zend_hash_get_valid_pos.exit, label %bb.d, !llvm.loop !94

_zend_hash_get_valid_pos.exit.loopexit.split.loop.exit25: ; preds = %bb.d
  %i.w = trunc nuw i64 %indvars.iv14 to i32
  br label %_zend_hash_get_valid_pos.exit

_zend_hash_get_valid_pos.exit.loopexit21.split.loop.exit23: ; preds = %bb.b
  %i.x = trunc nuw i64 %indvars.iv to i32
  br label %_zend_hash_get_valid_pos.exit

_zend_hash_get_valid_pos.exit:                    ; preds = %bb.c, %bb.e, %_zend_hash_get_valid_pos.exit.loopexit21.split.loop.exit23, %_zend_hash_get_valid_pos.exit.loopexit.split.loop.exit25, %.preheader1, %.preheader
  %.2.i = phi i32 [ %i.b, %.preheader1 ], [ %i.b, %.preheader ], [ %i.g, %bb.e ], [ %i.w, %_zend_hash_get_valid_pos.exit.loopexit.split.loop.exit25 ], [ %i.x, %_zend_hash_get_valid_pos.exit.loopexit21.split.loop.exit23 ], [ %i.g, %bb.c ]
  ret i32 %.2.i
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @zend_hash_get_current_pos_ex(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #13 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !13
  %i.c = and i32 %i.b, 4
  %.not.i = icmp eq i32 %i.c, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i32, ptr %i.d, align 8, !tbaa !32   ; 5 uses
  %i.f = icmp ult i32 %1, %i.e                    ; 2 uses
  br i1 %.not.i, label %.preheader, label %.preheader1

.preheader1:                                      ; preds = %bb.a
  br i1 %i.f, label %.lr.ph, label %_zend_hash_get_valid_pos.exit

.lr.ph:                                           ; preds = %.preheader1
end_hunk_0
