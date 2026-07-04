inline.NumInlined: 136
inline.NumDeleted: 12
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@sdscatfmt:bb.a
  %i.iu = zext i32 %i.it to i64
  br label %sdsavail.exit97

bb.bp:                                            ; preds = %bb.bl
  %i.iv = getelementptr inbounds i8, ptr %.1, i64 -17
  %i.iw = getelementptr inbounds i8, ptr %.1, i64 -9
  %i.ix = load i64, ptr %i.iw, align 1, !tbaa !14
  %i.iy = load i64, ptr %i.iv, align 1, !tbaa !14
  %i.iz = sub i64 %i.ix, %i.iy
  br label %sdsavail.exit97

sdsavail.exit97:                                  ; preds = %bb.bl, %bb.bm, %bb.bn, %bb.bo, %bb.bp
  %.0.i96 = phi i64 [ %i.iu, %bb.bo ], [ %i.iz, %bb.bp ], [ %i.ih, %bb.bm ], [ %i.io, %bb.bn ], [ 0, %bb.bl ]
  %i.ja = icmp ult i64 %.0.i96, %i.hy
  br i1 %i.ja, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %sdsavail.exit97
  %i.jb = call ptr @_sdsMakeRoomFor(ptr noundef nonnull %.1, i64 noundef %i.hy, i32 noundef 1)
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %sdsavail.exit97
  %.4 = phi ptr [ %i.jb, %bb.bq ], [ %.1, %sdsavail.exit97 ] ; 7 uses
  %i.jc = getelementptr inbounds i8, ptr %.4, i64 %.070106
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.jc, ptr nonnull align 16 %i.b, i64 %i.hy, i1 false)
  %i.jd = getelementptr i8, ptr %.4, i64 -1       ; 2 uses
  %.val.i98 = load i8, ptr %i.jd, align 1, !tbaa !17 ; 2 uses
  %i.je = and i8 %.val.i98, 7
  switch i8 %i.je, label %sdsinclen.exit99 [
    i8 0, label %bb.bs
    i8 1, label %bb.bt
    i8 2, label %bb.bu
    i8 3, label %bb.bv
    i8 4, label %bb.bw
  ]

bb.bs:                                            ; preds = %bb.br
  %i.jf = trunc i32 %i.hx to i8
  %i.jg = shl i8 %i.jf, 3
  %i.jh = add i8 %.val.i98, %i.jg
  %i.ji = and i8 %i.jh, -8
  store i8 %i.ji, ptr %i.jd, align 1, !tbaa !17
  br label %sdsinclen.exit99

bb.bt:                                            ; preds = %bb.br
  %i.jj = getelementptr inbounds i8, ptr %.4, i64 -3 ; 2 uses
  %i.jk = load i8, ptr %i.jj, align 1, !tbaa !17
  %i.jl = trunc i32 %i.hx to i8
  %i.jm = add i8 %i.jk, %i.jl
  store i8 %i.jm, ptr %i.jj, align 1, !tbaa !17
  br label %sdsinclen.exit99

bb.bu:                                            ; preds = %bb.br
  %i.jn = getelementptr inbounds i8, ptr %.4, i64 -5 ; 2 uses
  %i.jo = load i16, ptr %i.jn, align 1, !tbaa !18
  %i.jp = trunc i32 %i.hx to i16
  %i.jq = add i16 %i.jo, %i.jp
  store i16 %i.jq, ptr %i.jn, align 1, !tbaa !18
  br label %sdsinclen.exit99

bb.bv:                                            ; preds = %bb.br
  %i.jr = getelementptr inbounds i8, ptr %.4, i64 -9 ; 2 uses
  %i.js = load i32, ptr %i.jr, align 1, !tbaa !9
  %i.jt = add i32 %i.js, %i.hx
  store i32 %i.jt, ptr %i.jr, align 1, !tbaa !9
  br label %sdsinclen.exit99

bb.bw:                                            ; preds = %bb.br
  %i.ju = getelementptr inbounds i8, ptr %.4, i64 -17 ; 2 uses
  %i.jv = load i64, ptr %i.ju, align 1, !tbaa !14
  %i.jw = add i64 %i.jv, %i.hy
  store i64 %i.jw, ptr %i.ju, align 1, !tbaa !14
  br label %sdsinclen.exit99

sdsinclen.exit99:                                 ; preds = %bb.br, %bb.bs, %bb.bt, %bb.bu, %bb.bv, %bb.bw
  %i.jx = add i64 %.070106, %i.hy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  br label %sdsinclen.exit101

bb.bx:                                            ; preds = %bb.m
  %i.jy = add nsw i64 %.070106, 1                 ; 6 uses
  %i.jz = getelementptr inbounds i8, ptr %.1, i64 %.070106
  store i8 %i.bd, ptr %i.jz, align 1, !tbaa !17
  %i.ka = getelementptr i8, ptr %.1, i64 -1       ; 2 uses
  %.val.i100 = load i8, ptr %i.ka, align 1, !tbaa !17 ; 2 uses
  %i.kb = and i8 %.val.i100, 7
  switch i8 %i.kb, label %sdsinclen.exit101 [
    i8 0, label %bb.by
    i8 1, label %bb.bz
    i8 2, label %bb.ca
    i8 3, label %bb.cb
    i8 4, label %bb.cc
  ]

bb.by:                                            ; preds = %bb.bx
  %i.kc = and i8 %.val.i100, -8
  %i.kd = add i8 %i.kc, 8
  store i8 %i.kd, ptr %i.ka, align 1, !tbaa !17
  br label %sdsinclen.exit101

bb.bz:                                            ; preds = %bb.bx
  %i.ke = getelementptr inbounds i8, ptr %.1, i64 -3 ; 2 uses
  %i.kf = load i8, ptr %i.ke, align 1, !tbaa !17
  %i.kg = add i8 %i.kf, 1
  store i8 %i.kg, ptr %i.ke, align 1, !tbaa !17
  br label %sdsinclen.exit101

bb.ca:                                            ; preds = %bb.bx
  %i.kh = getelementptr inbounds i8, ptr %.1, i64 -5 ; 2 uses
  %i.ki = load i16, ptr %i.kh, align 1, !tbaa !18
  %i.kj = add i16 %i.ki, 1
  store i16 %i.kj, ptr %i.kh, align 1, !tbaa !18
  br label %sdsinclen.exit101

bb.cb:                                            ; preds = %bb.bx
  %i.kk = getelementptr inbounds i8, ptr %.1, i64 -9 ; 2 uses
  %i.kl = load i32, ptr %i.kk, align 1, !tbaa !9
  %i.km = add i32 %i.kl, 1
  store i32 %i.km, ptr %i.kk, align 1, !tbaa !9
  br label %sdsinclen.exit101

bb.cc:                                            ; preds = %bb.bx
  %i.kn = getelementptr inbounds i8, ptr %.1, i64 -17 ; 2 uses
  %i.ko = load i64, ptr %i.kn, align 1, !tbaa !14
  %i.kp = add i64 %i.ko, 1
  store i64 %i.kp, ptr %i.kn, align 1, !tbaa !14
  br label %sdsinclen.exit101

bb.cd:                                            ; preds = %bb.l
  %i.kq = add nsw i64 %.070106, 1                 ; 6 uses
  %i.kr = getelementptr inbounds i8, ptr %.1, i64 %.070106
  store i8 %i.bb, ptr %i.kr, align 1, !tbaa !17
  %i.ks = getelementptr i8, ptr %.1, i64 -1       ; 2 uses
  %.val.i102 = load i8, ptr %i.ks, align 1, !tbaa !17 ; 2 uses
  %i.kt = and i8 %.val.i102, 7
  switch i8 %i.kt, label %sdsinclen.exit101 [
    i8 0, label %bb.ce
    i8 1, label %bb.cf
    i8 2, label %bb.cg
    i8 3, label %bb.ch
    i8 4, label %bb.ci
  ]

bb.ce:                                            ; preds = %bb.cd
  %i.ku = and i8 %.val.i102, -8
  %i.kv = add i8 %i.ku, 8
  store i8 %i.kv, ptr %i.ks, align 1, !tbaa !17
  br label %sdsinclen.exit101

bb.cf:                                            ; preds = %bb.cd
  %i.kw = getelementptr inbounds i8, ptr %.1, i64 -3 ; 2 uses
  %i.kx = load i8, ptr %i.kw, align 1, !tbaa !17
  %i.ky = add i8 %i.kx, 1
  store i8 %i.ky, ptr %i.kw, align 1, !tbaa !17
  br label %sdsinclen.exit101

bb.cg:                                            ; preds = %bb.cd
  %i.kz = getelementptr inbounds i8, ptr %.1, i64 -5 ; 2 uses
  %i.la = load i16, ptr %i.kz, align 1, !tbaa !18
  %i.lb = add i16 %i.la, 1
  store i16 %i.lb, ptr %i.kz, align 1, !tbaa !18
  br label %sdsinclen.exit101

bb.ch:                                            ; preds = %bb.cd
  %i.lc = getelementptr inbounds i8, ptr %.1, i64 -9 ; 2 uses
  %i.ld = load i32, ptr %i.lc, align 1, !tbaa !9
  %i.le = add i32 %i.ld, 1
  store i32 %i.le, ptr %i.lc, align 1, !tbaa !9
  br label %sdsinclen.exit101

bb.ci:                                            ; preds = %bb.cd
  %i.lf = getelementptr inbounds i8, ptr %.1, i64 -17 ; 2 uses
  %i.lg = load i64, ptr %i.lf, align 1, !tbaa !14
  %i.lh = add i64 %i.lg, 1
  store i64 %i.lh, ptr %i.lf, align 1, !tbaa !14
  br label %sdsinclen.exit101

sdsinclen.exit101:                                ; preds = %bb.ci, %bb.ch, %bb.cg, %bb.cf, %bb.ce, %bb.cd, %bb.cc, %bb.cb, %bb.ca, %bb.bz, %bb.by, %bb.bx, %bb.m, %sdsinclen.exit, %sdsinclen.exit94, %sdsinclen.exit99
  %.171 = phi i64 [ %.070106, %bb.m ], [ %i.jy, %bb.cc ], [ %i.ef, %sdsinclen.exit ], [ %i.hb, %sdsinclen.exit94 ], [ %i.jx, %sdsinclen.exit99 ], [ %i.jy, %bb.bx ], [ %i.jy, %bb.by ], [ %i.jy, %bb.bz ], [ %i.jy, %bb.ca ], [ %i.jy, %bb.cb ], [ %i.kq, %bb.cd ], [ %i.kq, %bb.ce ], [ %i.kq, %bb.cf ], [ %i.kq, %bb.cg ], [ %i.kq, %bb.ch ], [ %i.kq, %bb.ci ] ; 2 uses
  %.169 = phi ptr [ %.068107, %bb.m ], [ %i.bc, %bb.cc ], [ %i.bc, %sdsinclen.exit ], [ %i.bc, %sdsinclen.exit94 ], [ %i.bc, %sdsinclen.exit99 ], [ %i.bc, %bb.bx ], [ %i.bc, %bb.by ], [ %i.bc, %bb.bz ], [ %i.bc, %bb.ca ], [ %i.bc, %bb.cb ], [ %.068107, %bb.cd ], [ %.068107, %bb.ce ], [ %.068107, %bb.cf ], [ %.068107, %bb.cg ], [ %.068107, %bb.ch ], [ %.068107, %bb.ci ]
  %.5 = phi ptr [ %.1, %bb.m ], [ %.1, %bb.cc ], [ %.2, %sdsinclen.exit ], [ %.3, %sdsinclen.exit94 ], [ %.4, %sdsinclen.exit99 ], [ %.1, %bb.bx ], [ %.1, %bb.by ], [ %.1, %bb.bz ], [ %.1, %bb.ca ], [ %.1, %bb.cb ], [ %.1, %bb.cd ], [ %.1, %bb.ce ], [ %.1, %bb.cf ], [ %.1, %bb.cg ], [ %.1, %bb.ch ], [ %.1, %bb.ci ] ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %.169, i64 1 ; 2 uses
  %i.lj = load i8, ptr %i.li, align 1, !tbaa !17  ; 2 uses
  %.not = icmp eq i8 %i.lj, 0
  br i1 %.not, label %._crit_edge, label %bb.g, !llvm.loop !27

._crit_edge:                                      ; preds = %sdsinclen.exit101, %sdslen.exit
  %.070.lcssa = phi i64 [ %.0.i, %sdslen.exit ], [ %.171, %sdsinclen.exit101 ]
  %.067.lcssa = phi ptr [ %i.t, %sdslen.exit ], [ %.5, %sdsinclen.exit101 ] ; 2 uses
  call void @llvm.va_end.p0(ptr nonnull %2)
  %i.lk = getelementptr inbounds i8, ptr %.067.lcssa, i64 %.070.lcssa
  store i8 0, ptr %i.lk, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  ret ptr %.067.lcssa
}

declare i32 @ull2string(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local noundef ptr @sdstrim(ptr noundef returned %0, ptr nofree noundef readonly %1) local_unnamed_addr #13 {
bb.a:
  %2 = ptrtoint ptr %0 to i64                     ; 3 uses
  %i.a = getelementptr i8, ptr %0, i64 -1         ; 3 uses
  %.val.i = load i8, ptr %i.a, align 1, !tbaa !17 ; 2 uses
  %i.b = and i8 %.val.i, 7
  switch i8 %i.b, label %sdslen.exit.thread [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
  ]

sdslen.exit.thread:                               ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 -1
  br label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.d = lshr i8 %.val.i, 3
  %i.e = zext nneg i8 %i.d to i64
  br label %sdslen.exit

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds i8, ptr %0, i64 -3
  %i.g = load i8, ptr %i.f, align 1, !tbaa !17
  %i.h = zext i8 %i.g to i64
  br label %sdslen.exit

bb.d:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds i8, ptr %0, i64 -5
  %i.j = load i16, ptr %i.i, align 1, !tbaa !18
  %i.k = zext i16 %i.j to i64
  br label %sdslen.exit

bb.e:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds i8, ptr %0, i64 -9
  %i.m = load i32, ptr %i.l, align 1, !tbaa !9
  %i.n = zext i32 %i.m to i64
  br label %sdslen.exit

bb.f:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds i8, ptr %0, i64 -17
  %i.p = load i64, ptr %i.o, align 1, !tbaa !14
  br label %sdslen.exit

sdslen.exit:                                      ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f
  %.0.i = phi i64 [ %i.p, %bb.f ], [ %i.e, %bb.b ], [ %i.h, %bb.c ], [ %i.k, %bb.d ], [ %i.n, %bb.e ] ; 2 uses
  %i.q = getelementptr i8, ptr %0, i64 %.0.i
  %i.r = getelementptr i8, ptr %i.q, i64 -1       ; 3 uses
  %.not32 = icmp slt i64 %.0.i, 1
  br i1 %.not32, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %sdslen.exit, %bb.g
  %.033 = phi ptr [ %i.v, %bb.g ], [ %0, %sdslen.exit ] ; 3 uses
  %i.s = load i8, ptr %.033, align 1, !tbaa !17
  %i.t = sext i8 %i.s to i32
  %i.u = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %1, i32 noundef %i.t) #23
  %.not28 = icmp eq ptr %i.u, null
  br i1 %.not28, label %.critedge.loopexit, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  %i.v = getelementptr inbounds nuw i8, ptr %.033, i64 1 ; 3 uses
  %.not = icmp ugt ptr %i.v, %i.r
  br i1 %.not, label %.critedge.loopexit, label %.lr.ph, !llvm.loop !29

.critedge.loopexit:                               ; preds = %bb.g, %.lr.ph
  %.0.lcssa.ph = phi ptr [ %.033, %.lr.ph ], [ %i.v, %bb.g ] ; 2 uses
  %.pre = ptrtoint ptr %.0.lcssa.ph to i64
  br label %.critedge

.critedge:                                        ; preds = %sdslen.exit.thread, %.critedge.loopexit, %sdslen.exit
  %i.w = phi ptr [ %i.r, %.critedge.loopexit ], [ %i.r, %sdslen.exit ], [ %i.c, %sdslen.exit.thread ] ; 3 uses
  %.0.lcssa41.pre-phi = phi i64 [ %.pre, %.critedge.loopexit ], [ %2, %sdslen.exit ], [ %2, %sdslen.exit.thread ] ; 2 uses
  %.0.lcssa = phi ptr [ %.0.lcssa.ph, %.critedge.loopexit ], [ %0, %sdslen.exit ], [ %0, %sdslen.exit.thread ] ; 4 uses
  %i.x = icmp ugt ptr %i.w, %.0.lcssa
  br i1 %i.x, label %.lr.ph37.preheader, label %.critedge2

.lr.ph37.preheader:                               ; preds = %.critedge
  %i.y = sub i64 %.0.lcssa41.pre-phi, %2
  %scevgep = getelementptr i8, ptr %0, i64 %i.y
  br label %.lr.ph37

.lr.ph37:                                         ; preds = %.lr.ph37.preheader, %bb.h
  %.02636 = phi ptr [ %i.ac, %bb.h ], [ %i.w, %.lr.ph37.preheader ] ; 3 uses
  %i.z = load i8, ptr %.02636, align 1, !tbaa !17
  %i.aa = sext i8 %i.z to i32
  %i.ab = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %1, i32 noundef %i.aa) #23
  %.not29 = icmp eq ptr %i.ab, null
  br i1 %.not29, label %.critedge2, label %bb.h

bb.h:                                             ; preds = %.lr.ph37
  %i.ac = getelementptr inbounds i8, ptr %.02636, i64 -1 ; 2 uses
  %i.ad = icmp ugt ptr %i.ac, %.0.lcssa
  br i1 %i.ad, label %.lr.ph37, label %.critedge2, !llvm.loop !30

.critedge2:                                       ; preds = %.lr.ph37, %bb.h, %.critedge
  %.026.lcssa = phi ptr [ %i.w, %.critedge ], [ %scevgep, %bb.h ], [ %.02636, %.lr.ph37 ]
  %i.ae = ptrtoint ptr %.026.lcssa to i64
  %i.af = sub i64 %i.ae, %.0.lcssa41.pre-phi
  %i.ag = add nsw i64 %i.af, 1                    ; 7 uses
  %.not30 = icmp eq ptr %0, %.0.lcssa
  br i1 %.not30, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.critedge2
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %0, ptr align 1 %.0.lcssa, i64 %i.ag, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.critedge2
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 %i.ag
  store i8 0, ptr %i.ah, align 1, !tbaa !17
  %.val.i31 = load i8, ptr %i.a, align 1, !tbaa !17
  %i.ai = and i8 %.val.i31, 7
  switch i8 %i.ai, label %sdssetlen.exit [
    i8 0, label %bb.k
    i8 1, label %bb.l
    i8 2, label %bb.m
    i8 3, label %bb.n
    i8 4, label %bb.o
  ]

bb.k:                                             ; preds = %bb.j
  %.tr.i = trunc i64 %i.ag to i8
  %i.aj = shl i8 %.tr.i, 3
  store i8 %i.aj, ptr %i.a, align 1, !tbaa !17
  br label %sdssetlen.exit

bb.l:                                             ; preds = %bb.j
  %i.ak = trunc i64 %i.ag to i8
  %i.al = getelementptr inbounds i8, ptr %0, i64 -3
  store i8 %i.ak, ptr %i.al, align 1, !tbaa !17
  br label %sdssetlen.exit

bb.m:                                             ; preds = %bb.j
  %i.am = trunc i64 %i.ag to i16
  %i.an = getelementptr inbounds i8, ptr %0, i64 -5
  store i16 %i.am, ptr %i.an, align 1, !tbaa !18
  br label %sdssetlen.exit

bb.n:                                             ; preds = %bb.j
  %i.ao = trunc i64 %i.ag to i32
  %i.ap = getelementptr inbounds i8, ptr %0, i64 -9
  store i32 %i.ao, ptr %i.ap, align 1, !tbaa !9
  br label %sdssetlen.exit

bb.o:                                             ; preds = %bb.j
  %i.aq = getelementptr inbounds i8, ptr %0, i64 -17
  store i64 %i.ag, ptr %i.aq, align 1, !tbaa !14
  br label %sdssetlen.exit

sdssetlen.exit:                                   ; preds = %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o
  ret ptr %0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @sdssubstr(ptr nofree noundef captures(none) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 -1         ; 3 uses
  %.val.i = load i8, ptr %i.a, align 1, !tbaa !17 ; 2 uses
  %i.b = and i8 %.val.i, 7                        ; 3 uses
  switch i8 %i.b, label %sdslen.exit [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = lshr i8 %.val.i, 3
  %i.d = zext nneg i8 %i.c to i64
  br label %sdslen.exit

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds i8, ptr %0, i64 -3
  %i.f = load i8, ptr %i.e, align 1, !tbaa !17
  %i.g = zext i8 %i.f to i64
  br label %sdslen.exit

bb.d:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds i8, ptr %0, i64 -5
  %i.i = load i16, ptr %i.h, align 1, !tbaa !18
  %i.j = zext i16 %i.i to i64
  br label %sdslen.exit

bb.e:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds i8, ptr %0, i64 -9
  %i.l = load i32, ptr %i.k, align 1, !tbaa !9
  %i.m = zext i32 %i.l to i64
  br label %sdslen.exit

bb.f:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds i8, ptr %0, i64 -17
  %i.o = load i64, ptr %i.n, align 1, !tbaa !14
  br label %sdslen.exit

sdslen.exit:                                      ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f
  %.0.i = phi i64 [ %i.o, %bb.f ], [ %i.d, %bb.b ], [ %i.g, %bb.c ], [ %i.j, %bb.d ], [ %i.m, %bb.e ], [ 0, %bb.a ] ; 2 uses
  %.not = icmp uge i64 %1, %.0.i                  ; 2 uses
  %spec.select22 = select i1 %.not, i64 0, i64 %1 ; 2 uses
  %i.p = sub i64 %.0.i, %spec.select22
  %i.q = tail call i64 @llvm.umin.i64(i64 %2, i64 %i.p) ; 8 uses
  %.not2126 = icmp eq i64 %i.q, 0
  %.not21 = or i1 %.not, %.not2126
  br i1 %.not21, label %.split, label %.split18

.split:                                           ; preds = %sdslen.exit
  store i8 0, ptr %0, align 1, !tbaa !17
  switch i8 %i.b, label %sdssetlen.exit [
    i8 0, label %bb.g
    i8 1, label %bb.h
    i8 2, label %bb.i
    i8 3, label %bb.j
    i8 4, label %bb.k
  ]

bb.g:                                             ; preds = %.split
  store i8 0, ptr %i.a, align 1, !tbaa !17
  br label %sdssetlen.exit

bb.h:                                             ; preds = %.split
  %i.r = getelementptr inbounds i8, ptr %0, i64 -3
  store i8 0, ptr %i.r, align 1, !tbaa !17
  br label %sdssetlen.exit

bb.i:                                             ; preds = %.split
  %i.s = getelementptr inbounds i8, ptr %0, i64 -5
  store i16 0, ptr %i.s, align 1, !tbaa !18
  br label %sdssetlen.exit

bb.j:                                             ; preds = %.split
  %i.t = getelementptr inbounds i8, ptr %0, i64 -9
  store i32 0, ptr %i.t, align 1, !tbaa !9
  br label %sdssetlen.exit

bb.k:                                             ; preds = %.split
  %i.u = getelementptr inbounds i8, ptr %0, i64 -17
  store i64 0, ptr %i.u, align 1, !tbaa !14
  br label %sdssetlen.exit

.split18:                                         ; preds = %sdslen.exit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 %spec.select22
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %0, ptr align 1 %i.v, i64 %i.q, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 %i.q
  store i8 0, ptr %i.w, align 1, !tbaa !17
  switch i8 %i.b, label %sdssetlen.exit [
    i8 0, label %bb.l
    i8 1, label %bb.m
    i8 2, label %bb.n
    i8 3, label %bb.o
    i8 4, label %bb.p
  ]

bb.l:                                             ; preds = %.split18
  %.tr.i = trunc i64 %i.q to i8
  %i.x = shl i8 %.tr.i, 3
  store i8 %i.x, ptr %i.a, align 1, !tbaa !17
  br label %sdssetlen.exit

bb.m:                                             ; preds = %.split18
  %i.y = trunc i64 %i.q to i8
  %i.z = getelementptr inbounds i8, ptr %0, i64 -3
  store i8 %i.y, ptr %i.z, align 1, !tbaa !17
  br label %sdssetlen.exit

bb.n:                                             ; preds = %.split18
  %i.aa = trunc i64 %i.q to i16
  %i.ab = getelementptr inbounds i8, ptr %0, i64 -5
  store i16 %i.aa, ptr %i.ab, align 1, !tbaa !18
  br label %sdssetlen.exit

bb.o:                                             ; preds = %.split18
  %i.ac = trunc i64 %i.q to i32
  %i.ad = getelementptr inbounds i8, ptr %0, i64 -9
  store i32 %i.ac, ptr %i.ad, align 1, !tbaa !9
  br label %sdssetlen.exit

bb.p:                                             ; preds = %.split18
  %i.ae = getelementptr inbounds i8, ptr %0, i64 -17
  store i64 %i.q, ptr %i.ae, align 1, !tbaa !14
  br label %sdssetlen.exit

sdssetlen.exit:                                   ; preds = %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %.split18, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %.split
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @sdsrange(ptr nofree noundef captures(none) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 -1
  %.val.i = load i8, ptr %i.a, align 1, !tbaa !17 ; 2 uses
  %i.b = and i8 %.val.i, 7
  switch i8 %i.b, label %sdslen.exit.thread [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
end_hunk_0
