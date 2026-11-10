Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lief/original/bignum?download=true
inline.NumInlined: 198
inline.NumDeleted: 18
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 5
begin_hunk_0_@mpi_miller_rabin:bb.a
  %i.u = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.s, i1 true)
  %i.v = or disjoint i64 %i.u, %i.t
  br label %mbedtls_mpi_lsb.exit

bb.e:                                             ; preds = %bb.c
  %i.w = add nuw nsw i64 %.011.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.w, %i.p
  br i1 %exitcond.not.i, label %mbedtls_mpi_lsb.exit, label %bb.c, !llvm.loop !0

mbedtls_mpi_lsb.exit:                             ; preds = %bb.e, %bb.b, %bb.d
  %.08.i = phi i64 [ %i.v, %bb.d ], [ 0, %bb.b ], [ 0, %bb.e ] ; 4 uses
  %i.x = call i32 @mbedtls_mpi_copy(ptr noundef nonnull %6, ptr noundef nonnull %5) ; 2 uses
  %.not33 = icmp eq i32 %i.x, 0
  br i1 %.not33, label %bb.f, label %mbedtls_mpi_fill_random.exit.thread

bb.f:                                             ; preds = %mbedtls_mpi_lsb.exit
  %i.y = load i16, ptr %i.e, align 2, !tbaa !20   ; 2 uses
  %.not.i40 = icmp eq i16 %i.y, 0
  br i1 %.not.i40, label %mbedtls_mpi_shift_r.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = load ptr, ptr %6, align 8, !tbaa !23
  %i.aa = zext i16 %i.y to i64
  call void @mbedtls_mpi_core_shift_r(ptr noundef %i.z, i64 noundef %i.aa, i64 noundef %.08.i) #17
  br label %mbedtls_mpi_shift_r.exit

mbedtls_mpi_shift_r.exit:                         ; preds = %bb.f, %bb.g
  %.not158 = icmp eq i64 %1, 0
  br i1 %.not158, label %mbedtls_mpi_fill_random.exit.thread, label %.critedge.preheader.lr.ph

.critedge.preheader.lr.ph:                        ; preds = %mbedtls_mpi_shift_r.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.ac = icmp ugt i64 %.08.i, 1
  br label %.critedge.preheader

.critedge.preheader:                              ; preds = %.critedge.preheader.lr.ph, %mbedtls_mpi_cmp_mpi.exit65.thread
  %.promoted = phi i16 [ 0, %.critedge.preheader.lr.ph ], [ %.promoted171, %mbedtls_mpi_cmp_mpi.exit65.thread ]
  %.019151 = phi i64 [ 0, %.critedge.preheader.lr.ph ], [ %i.gh, %mbedtls_mpi_cmp_mpi.exit65.thread ]
  %.promoted145 = load ptr, ptr %8, align 8
  br label %.critedge

.critedge:                                        ; preds = %.critedge.backedge, %.critedge.preheader
  %i.ad = phi ptr [ %.promoted145, %.critedge.preheader ], [ %i.au, %.critedge.backedge ] ; 6 uses
  %i.ae = phi i16 [ %.promoted, %.critedge.preheader ], [ %i.av, %.critedge.backedge ] ; 4 uses
  %.020 = phi i32 [ 0, %.critedge.preheader ], [ %i.bj, %.critedge.backedge ] ; 2 uses
  %i.af = load i16, ptr %i.ab, align 2, !tbaa !20 ; 5 uses
  %i.ag = zext i16 %i.af to i64                   ; 3 uses
  %i.ah = shl nuw nsw i64 %i.ag, 3                ; 2 uses
  %i.ai = icmp eq i16 %i.af, 0
  br i1 %i.ai, label %bb.h, label %bb.j

bb.h:                                             ; preds = %.critedge
  %.not.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i, label %mbedtls_mpi_fill_random.exit.thread109, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aj = zext i16 %i.ae to i64
  %i.ak = shl nuw nsw i64 %i.aj, 3
  call void @mbedtls_zeroize_and_free(ptr noundef nonnull %i.ad, i64 noundef %i.ak) #17
  br label %mbedtls_mpi_fill_random.exit.thread109

bb.j:                                             ; preds = %.critedge
  %i.al = zext i16 %i.ae to i64                   ; 2 uses
  %i.am = icmp eq i16 %i.af, %i.ae
  br i1 %i.am, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @llvm.memset.p0.i64(ptr align 8 %i.ad, i8 0, i64 %i.ah, i1 false)
  br label %mbedtls_mpi_fill_random.exit

bb.l:                                             ; preds = %bb.j
  %.not.i11.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i11.i.i, label %mbedtls_mpi_free.exit12.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.an = shl nuw nsw i64 %i.al, 3
  call void @mbedtls_zeroize_and_free(ptr noundef nonnull %i.ad, i64 noundef %i.an) #17
  br label %mbedtls_mpi_free.exit12.i.i

mbedtls_mpi_free.exit12.i.i:                      ; preds = %bb.m, %bb.l
  %i.ao = icmp ugt i16 %i.af, 10000
  br i1 %i.ao, label %mbedtls_mpi_fill_random.exit.thread.loopexit135, label %bb.n

bb.n:                                             ; preds = %mbedtls_mpi_free.exit12.i.i
  %i.ap = call noalias ptr @calloc(i64 noundef range(i64 0, 2305843009213693953) %i.ag, i64 noundef 8) #18 ; 2 uses
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %mbedtls_mpi_fill_random.exit.thread.loopexit135, label %mbedtls_mpi_fill_random.exit

mbedtls_mpi_fill_random.exit:                     ; preds = %bb.n, %bb.k
  %.pre-phi = phi i64 [ %i.ag, %bb.n ], [ %i.al, %bb.k ]
  %i.ar = phi ptr [ %i.ap, %bb.n ], [ %i.ad, %bb.k ] ; 3 uses
  %i.as = phi i16 [ %i.af, %bb.n ], [ %i.ae, %bb.k ] ; 2 uses
  %i.at = call i32 @mbedtls_mpi_core_fill_random(ptr noundef %i.ar, i64 noundef %.pre-phi, i64 noundef %i.ah, ptr noundef %2, ptr noundef %3) #17 ; 2 uses
  %.not34 = icmp eq i32 %i.at, 0
  br i1 %.not34, label %mbedtls_mpi_fill_random.exit.thread109, label %mbedtls_mpi_fill_random.exit.thread.loopexit135

mbedtls_mpi_fill_random.exit.thread109:           ; preds = %bb.i, %bb.h, %mbedtls_mpi_fill_random.exit
  %i.au = phi ptr [ %i.ar, %mbedtls_mpi_fill_random.exit ], [ null, %bb.h ], [ null, %bb.i ] ; 9 uses
  %i.av = phi i16 [ %i.as, %mbedtls_mpi_fill_random.exit ], [ 0, %bb.h ], [ 0, %bb.i ] ; 5 uses
  %i.aw = zext i16 %i.av to i64                   ; 4 uses
  %i.ax = call i64 @mbedtls_mpi_core_bitlen(ptr noundef %i.au, i64 noundef %i.aw) #17
  %i.ay = load ptr, ptr %5, align 8, !tbaa !23    ; 7 uses
  %i.az = call i64 @mbedtls_mpi_core_bitlen(ptr noundef %i.ay, i64 noundef %i.p) #17 ; 2 uses
  %i.ba = icmp ugt i64 %i.ax, %i.az
  br i1 %i.ba, label %bb.o, label %bb.p

bb.o:                                             ; preds = %mbedtls_mpi_fill_random.exit.thread109
  %i.bb = add nsw i64 %i.aw, -1                   ; 2 uses
  %i.bc = shl nsw i64 %i.bb, 6
  %i.bd = xor i64 %i.bc, -1
  %i.be = add i64 %i.az, %i.bd
  %notmask = shl nsw i64 -1, %i.be
  %i.bf = xor i64 %notmask, -1
  %i.bg = getelementptr inbounds [8 x i8], ptr %i.au, i64 %i.bb ; 2 uses
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !26
  %i.bi = and i64 %i.bh, %i.bf
  store i64 %i.bi, ptr %i.bg, align 8, !tbaa !26
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %mbedtls_mpi_fill_random.exit.thread109
  %i.bj = add nuw nsw i32 %.020, 1
  %exitcond = icmp eq i32 %.020, 31
  br i1 %exitcond, label %mbedtls_mpi_fill_random.exit.thread.loopexit135, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.not44.i = icmp eq i16 %i.av, 0                ; 3 uses
  br i1 %.not44.i, label %._crit_edge.i, label %.lr.ph.i42

.lr.ph.i42:                                       ; preds = %bb.q, %bb.r
  %.03545.i = phi i64 [ %i.bn, %bb.r ], [ %i.aw, %bb.q ] ; 3 uses
  %i.bk = getelementptr [8 x i8], ptr %i.au, i64 %.03545.i
  %i.bl = getelementptr i8, ptr %i.bk, i64 -8
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !26
  %.not39.i = icmp eq i64 %i.bm, 0
  br i1 %.not39.i, label %bb.r, label %._crit_edge.i

bb.r:                                             ; preds = %.lr.ph.i42
  %i.bn = add nsw i64 %.03545.i, -1               ; 2 uses
  %.not.i43 = icmp eq i64 %i.bn, 0
  br i1 %.not.i43, label %._crit_edge.i, label %.lr.ph.i42, !llvm.loop !1

._crit_edge.i:                                    ; preds = %bb.r, %.lr.ph.i42, %bb.q
  %.035.lcssa.i = phi i64 [ 0, %bb.q ], [ 0, %bb.r ], [ %.03545.i, %.lr.ph.i42 ] ; 5 uses
  br i1 %.not12.i, label %._crit_edge52.i, label %.lr.ph51.i

.lr.ph51.i:                                       ; preds = %._crit_edge.i, %bb.s
  %.049.i = phi i64 [ %i.br, %bb.s ], [ %i.p, %._crit_edge.i ] ; 3 uses
  %i.bo = getelementptr [8 x i8], ptr %i.ay, i64 %.049.i
  %i.bp = getelementptr i8, ptr %i.bo, i64 -8
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !26
  %.not41.i = icmp eq i64 %i.bq, 0
  br i1 %.not41.i, label %bb.s, label %._crit_edge52.i

bb.s:                                             ; preds = %.lr.ph51.i
  %i.br = add nsw i64 %.049.i, -1                 ; 2 uses
  %.not40.i = icmp eq i64 %i.br, 0
  br i1 %.not40.i, label %._crit_edge52.i, label %.lr.ph51.i, !llvm.loop !6

._crit_edge52.i:                                  ; preds = %bb.s, %.lr.ph51.i, %._crit_edge.i
  %.0.lcssa.i = phi i64 [ 0, %._crit_edge.i ], [ 0, %bb.s ], [ %.049.i, %.lr.ph51.i ] ; 3 uses
  %i.bs = or i64 %.0.lcssa.i, %.035.lcssa.i
  %or.cond.i = icmp eq i64 %i.bs, 0
  %i.bt = icmp ugt i64 %.035.lcssa.i, %.0.lcssa.i
  %or.cond239 = or i1 %or.cond.i, %i.bt
  br i1 %or.cond239, label %.critedge.backedge, label %bb.t

bb.t:                                             ; preds = %._crit_edge52.i
  %i.bu = icmp ugt i64 %.0.lcssa.i, %.035.lcssa.i
  %i.bv = load i16, ptr %i.b, align 8, !tbaa !21  ; 2 uses
  br i1 %i.bu, label %mbedtls_mpi_cmp_mpi.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bw = icmp slt i16 %i.bv, 0
  %.not42.i256 = icmp eq i64 %.035.lcssa.i, 0
  %or.cond266 = or i1 %i.bw, %.not42.i256
  br i1 %or.cond266, label %.critedge.backedge, label %.lr.ph258

.preheader.i:                                     ; preds = %bb.v
  %.not42.i = icmp eq i64 %i.bx, 0
  br i1 %.not42.i, label %.critedge.backedge, label %.lr.ph258, !llvm.loop !7

.lr.ph258:                                        ; preds = %bb.u, %.preheader.i
  %.1.i257 = phi i64 [ %i.bx, %.preheader.i ], [ %.035.lcssa.i, %bb.u ]
  %i.bx = add nsw i64 %.1.i257, -1                ; 4 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.bx
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !26 ; 2 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.bx
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !26 ; 2 uses
  %i.cc = icmp ugt i64 %i.bz, %i.cb
  br i1 %i.cc, label %.critedge.backedge, label %bb.v

bb.v:                                             ; preds = %.lr.ph258
  %i.cd = icmp ult i64 %i.bz, %i.cb
  br i1 %i.cd, label %mbedtls_mpi_cmp_mpi.exit.thread, label %.preheader.i, !llvm.loop !7

mbedtls_mpi_cmp_mpi.exit:                         ; preds = %bb.t
  %i.ce = icmp slt i16 %i.bv, 1
  %brmerge = or i1 %i.ce, %.not44.i
  br i1 %brmerge, label %.critedge.backedge, label %.lr.ph.i.i.preheader

mbedtls_mpi_cmp_mpi.exit.thread:                  ; preds = %bb.v
  br i1 %.not44.i, label %.critedge.backedge, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %mbedtls_mpi_cmp_mpi.exit, %mbedtls_mpi_cmp_mpi.exit.thread
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %bb.w
  %.03545.i.i = phi i64 [ %i.ci, %bb.w ], [ %i.aw, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.cf = getelementptr [8 x i8], ptr %i.au, i64 %.03545.i.i
  %i.cg = getelementptr i8, ptr %i.cf, i64 -8
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !26
  %.not39.i.i = icmp eq i64 %i.ch, 0
  br i1 %.not39.i.i, label %bb.w, label %.lr.ph51.i.i

bb.w:                                             ; preds = %.lr.ph.i.i
  %i.ci = add nsw i64 %.03545.i.i, -1             ; 2 uses
  %.not.i.i = icmp eq i64 %i.ci, 0
  br i1 %.not.i.i, label %.critedge.backedge, label %.lr.ph.i.i, !llvm.loop !1

.lr.ph51.i.i:                                     ; preds = %.lr.ph.i.i
  %i.cj = icmp ugt i64 %.03545.i.i, 1
  br i1 %i.cj, label %mbedtls_mpi_cmp_int.exit, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %.lr.ph51.i.i
  %i.ck = load i64, ptr %i.au, align 8, !tbaa !26
  %i.cl = icmp ugt i64 %i.ck, 1
  br i1 %i.cl, label %mbedtls_mpi_cmp_int.exit, label %.critedge.backedge, !llvm.loop !7

.critedge.backedge:                               ; preds = %.preheader.i, %.lr.ph258, %bb.w, %mbedtls_mpi_cmp_mpi.exit, %.preheader.preheader.i.i, %mbedtls_mpi_cmp_mpi.exit.thread, %._crit_edge52.i, %bb.u
  br label %.critedge, !llvm.loop !59

mbedtls_mpi_cmp_int.exit:                         ; preds = %.lr.ph51.i.i, %.preheader.preheader.i.i
  store i16 %i.av, ptr %i.i, align 2
  store ptr %i.au, ptr %8, align 8
  store i16 1, ptr %i.h, align 8
  %i.cm = call fastcc i32 @mbedtls_mpi_exp_mod_optionally_safe(ptr noundef nonnull %8, ptr noundef nonnull readonly %8, ptr noundef nonnull readonly %6, i32 noundef 0, ptr noundef %0, ptr noundef nonnull %9) ; 2 uses
  %.not35 = icmp eq i32 %i.cm, 0
  br i1 %.not35, label %bb.x, label %mbedtls_mpi_fill_random.exit.thread

bb.x:                                             ; preds = %mbedtls_mpi_cmp_int.exit
  %i.cn = load i16, ptr %i.i, align 2, !tbaa !20  ; 9 uses
  %.not44.i44 = icmp eq i16 %i.cn, 0
  br i1 %.not44.i44, label %._crit_edge.i48, label %.lr.ph.i45

.lr.ph.i45:                                       ; preds = %bb.x
  %i.co = zext i16 %i.cn to i64
  %i.cp = load ptr, ptr %8, align 8, !tbaa !23
  br label %bb.y

bb.y:                                             ; preds = %bb.z, %.lr.ph.i45
  %.03545.i46 = phi i64 [ %i.co, %.lr.ph.i45 ], [ %i.ct, %bb.z ] ; 3 uses
  %i.cq = getelementptr [8 x i8], ptr %i.cp, i64 %.03545.i46
  %i.cr = getelementptr i8, ptr %i.cq, i64 -8
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !26
  %.not39.i47 = icmp eq i64 %i.cs, 0
  br i1 %.not39.i47, label %bb.z, label %._crit_edge.i48

bb.z:                                             ; preds = %bb.y
  %i.ct = add nsw i64 %.03545.i46, -1             ; 2 uses
  %.not.i64 = icmp eq i64 %i.ct, 0
  br i1 %.not.i64, label %._crit_edge.i48, label %bb.y, !llvm.loop !1

._crit_edge.i48:                                  ; preds = %bb.z, %bb.y, %bb.x
  %.035.lcssa.i49 = phi i64 [ 0, %bb.x ], [ 0, %bb.z ], [ %.03545.i46, %bb.y ] ; 5 uses
  br i1 %.not12.i, label %._crit_edge52.i54, label %.lr.ph51.i51

.lr.ph51.i51:                                     ; preds = %._crit_edge.i48, %bb.aa
  %.049.i52 = phi i64 [ %i.cx, %bb.aa ], [ %i.p, %._crit_edge.i48 ] ; 3 uses
  %i.cu = getelementptr [8 x i8], ptr %i.ay, i64 %.049.i52
  %i.cv = getelementptr i8, ptr %i.cu, i64 -8
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !26
  %.not41.i53 = icmp eq i64 %i.cw, 0
  br i1 %.not41.i53, label %bb.aa, label %._crit_edge52.i54

bb.aa:                                            ; preds = %.lr.ph51.i51
  %i.cx = add nsw i64 %.049.i52, -1               ; 2 uses
  %.not40.i63 = icmp eq i64 %i.cx, 0
  br i1 %.not40.i63, label %._crit_edge52.i54, label %.lr.ph51.i51, !llvm.loop !6

._crit_edge52.i54:                                ; preds = %bb.aa, %.lr.ph51.i51, %._crit_edge.i48
  %.0.lcssa.i55 = phi i64 [ 0, %._crit_edge.i48 ], [ 0, %bb.aa ], [ %.049.i52, %.lr.ph51.i51 ] ; 3 uses
  %i.cy = or i64 %.0.lcssa.i55, %.035.lcssa.i49
  %or.cond.i56 = icmp eq i64 %i.cy, 0
  br i1 %or.cond.i56, label %mbedtls_mpi_cmp_mpi.exit65.thread, label %bb.ab

bb.ab:                                            ; preds = %._crit_edge52.i54
  %i.cz = icmp ugt i64 %.035.lcssa.i49, %.0.lcssa.i55
  br i1 %i.cz, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.da = load i16, ptr %i.h, align 8, !tbaa !21
  %i.db = sext i16 %i.da to i32
  br label %mbedtls_mpi_cmp_mpi.exit65

bb.ad:                                            ; preds = %bb.ab
  %i.dc = icmp ugt i64 %.0.lcssa.i55, %.035.lcssa.i49
  br i1 %i.dc, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.dd = load i16, ptr %i.b, align 8, !tbaa !21
  %i.de = sext i16 %i.dd to i32
  %i.df = sub nsw i32 0, %i.de
  br label %mbedtls_mpi_cmp_mpi.exit65

bb.af:                                            ; preds = %bb.ad
  %i.dg = load i16, ptr %i.h, align 8, !tbaa !21  ; 4 uses
  %i.dh = icmp sgt i16 %i.dg, 0
  %i.di = load i16, ptr %i.b, align 8, !tbaa !21  ; 2 uses
  br i1 %i.dh, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.dj = icmp slt i16 %i.di, 0
  br i1 %i.dj, label %mbedtls_mpi_cmp_mpi.exit65.thread118, label %.preheader.preheader.i58

bb.ah:                                            ; preds = %bb.af
  %i.dk = icmp sgt i16 %i.di, 0
  %i.dl = icmp ne i16 %i.dg, 0
  %or.cond43.i57 = and i1 %i.dl, %i.dk
  br i1 %or.cond43.i57, label %mbedtls_mpi_cmp_mpi.exit65.thread118, label %.preheader.preheader.i58

.preheader.preheader.i58:                         ; preds = %bb.ah, %bb.ag
  %i.dm = load ptr, ptr %8, align 8
  %.not42.i61259 = icmp eq i64 %.035.lcssa.i49, 0
  br i1 %.not42.i61259, label %mbedtls_mpi_cmp_mpi.exit65.thread, label %.lr.ph261

.preheader.i59:                                   ; preds = %bb.aj
  %.not42.i61 = icmp eq i64 %i.dn, 0
  br i1 %.not42.i61, label %mbedtls_mpi_cmp_mpi.exit65.thread, label %.lr.ph261, !llvm.loop !7

.lr.ph261:                                        ; preds = %.preheader.preheader.i58, %.preheader.i59
  %.1.i60260 = phi i64 [ %i.dn, %.preheader.i59 ], [ %.035.lcssa.i49, %.preheader.preheader.i58 ]
  %i.dn = add nsw i64 %.1.i60260, -1              ; 4 uses
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %i.dn
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !26 ; 2 uses
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.dn
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !26 ; 2 uses
  %i.ds = icmp ugt i64 %i.dp, %i.dr
  br i1 %i.ds, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %.lr.ph261
  %i.dt = sext i16 %i.dg to i32
  br label %mbedtls_mpi_cmp_mpi.exit65

bb.aj:                                            ; preds = %.lr.ph261
  %i.du = icmp ult i64 %i.dp, %i.dr
  br i1 %i.du, label %bb.ak, label %.preheader.i59, !llvm.loop !7

bb.ak:                                            ; preds = %bb.aj
  %i.dv = sext i16 %i.dg to i32
  %i.dw = sub nsw i32 0, %i.dv
  br label %mbedtls_mpi_cmp_mpi.exit65

mbedtls_mpi_cmp_mpi.exit65:                       ; preds = %bb.ac, %bb.ae, %bb.ai, %bb.ak
  %.036.i62 = phi i32 [ %i.dt, %bb.ai ], [ %i.db, %bb.ac ], [ %i.df, %bb.ae ], [ %i.dw, %bb.ak ]
  %i.dx = icmp eq i32 %.036.i62, 0
  br i1 %i.dx, label %mbedtls_mpi_cmp_mpi.exit65.thread, label %mbedtls_mpi_cmp_mpi.exit65.thread118

mbedtls_mpi_cmp_mpi.exit65.thread118:             ; preds = %bb.ag, %bb.ah, %mbedtls_mpi_cmp_mpi.exit65
  %i.dy = call i32 @mbedtls_mpi_cmp_int(ptr noundef nonnull %8, i64 noundef 1)
  %i.dz = icmp eq i32 %i.dy, 0
  br i1 %i.dz, label %mbedtls_mpi_cmp_mpi.exit65.thread, label %.preheader

.preheader:                                       ; preds = %mbedtls_mpi_cmp_mpi.exit65.thread118
  br i1 %i.ac, label %.lr.ph, label %.critedge2

.lr.ph:                                           ; preds = %.preheader
  %i.ea = load i16, ptr %i.b, align 8             ; 3 uses
  %i.eb = icmp sgt i16 %i.ea, 0
  %i.ec = icmp slt i16 %i.ea, 0
  %i.ed = sext i16 %i.ea to i32
  %i.ee = sub nsw i32 0, %i.ed
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %.lr.ph
  %i.ef = phi i16 [ %i.cn, %.lr.ph ], [ %i.fl, %.backedge.backedge ] ; 6 uses
  %.0149 = phi i64 [ 1, %.lr.ph ], [ %.0149.be, %.backedge.backedge ] ; 2 uses
  %.not44.i66 = icmp eq i16 %i.ef, 0
  br i1 %.not44.i66, label %._crit_edge.i70, label %.lr.ph.i67

.lr.ph.i67:                                       ; preds = %.backedge
  %i.eg = zext i16 %i.ef to i64
  %i.eh = load ptr, ptr %8, align 8, !tbaa !23
  br label %bb.al

bb.al:                                            ; preds = %bb.am, %.lr.ph.i67
  %.03545.i68 = phi i64 [ %i.eg, %.lr.ph.i67 ], [ %i.el, %bb.am ] ; 3 uses
  %i.ei = getelementptr [8 x i8], ptr %i.eh, i64 %.03545.i68
  %i.ej = getelementptr i8, ptr %i.ei, i64 -8
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !26
  %.not39.i69 = icmp eq i64 %i.ek, 0
  br i1 %.not39.i69, label %bb.am, label %._crit_edge.i70

bb.am:                                            ; preds = %bb.al
  %i.el = add nsw i64 %.03545.i68, -1             ; 2 uses
  %.not.i86 = icmp eq i64 %i.el, 0
  br i1 %.not.i86, label %._crit_edge.i70, label %bb.al, !llvm.loop !1

._crit_edge.i70:                                  ; preds = %bb.am, %bb.al, %.backedge
  %.035.lcssa.i71 = phi i64 [ 0, %.backedge ], [ 0, %bb.am ], [ %.03545.i68, %bb.al ] ; 5 uses
  br i1 %.not12.i, label %._crit_edge52.i76, label %.lr.ph51.i73

.lr.ph51.i73:                                     ; preds = %._crit_edge.i70, %bb.an
  %.049.i74 = phi i64 [ %i.ep, %bb.an ], [ %i.p, %._crit_edge.i70 ] ; 3 uses
  %i.em = getelementptr [8 x i8], ptr %i.ay, i64 %.049.i74
  %i.en = getelementptr i8, ptr %i.em, i64 -8
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !26
  %.not41.i75 = icmp eq i64 %i.eo, 0
  br i1 %.not41.i75, label %bb.an, label %._crit_edge52.i76

bb.an:                                            ; preds = %.lr.ph51.i73
  %i.ep = add nsw i64 %.049.i74, -1               ; 2 uses
  %.not40.i85 = icmp eq i64 %i.ep, 0
  br i1 %.not40.i85, label %._crit_edge52.i76, label %.lr.ph51.i73, !llvm.loop !6

._crit_edge52.i76:                                ; preds = %bb.an, %.lr.ph51.i73, %._crit_edge.i70
  %.0.lcssa.i77 = phi i64 [ 0, %._crit_edge.i70 ], [ 0, %bb.an ], [ %.049.i74, %.lr.ph51.i73 ] ; 3 uses
  %i.eq = or i64 %.0.lcssa.i77, %.035.lcssa.i71
  %or.cond.i78 = icmp eq i64 %i.eq, 0
  br i1 %or.cond.i78, label %.critedge2, label %bb.ao

bb.ao:                                            ; preds = %._crit_edge52.i76
  %i.er = icmp ugt i64 %.035.lcssa.i71, %.0.lcssa.i77
  br i1 %i.er, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.es = load i16, ptr %i.h, align 8, !tbaa !21
  %i.et = sext i16 %i.es to i32
  br label %mbedtls_mpi_cmp_mpi.exit87

bb.aq:                                            ; preds = %bb.ao
  %i.eu = icmp ugt i64 %.0.lcssa.i77, %.035.lcssa.i71
  br i1 %i.eu, label %mbedtls_mpi_cmp_mpi.exit87, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ev = load i16, ptr %i.h, align 8, !tbaa !21  ; 4 uses
  %i.ew = icmp sgt i16 %i.ev, 0
  br i1 %i.ew, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  br i1 %i.ec, label %mbedtls_mpi_cmp_mpi.exit87.thread123, label %.preheader.preheader.i80

bb.at:                                            ; preds = %bb.ar
  %i.ex = icmp ne i16 %i.ev, 0
  %or.cond43.i79 = and i1 %i.ex, %i.eb
  br i1 %or.cond43.i79, label %mbedtls_mpi_cmp_mpi.exit87.thread123, label %.preheader.preheader.i80

.preheader.preheader.i80:                         ; preds = %bb.at, %bb.as
  %i.ey = load ptr, ptr %8, align 8
  %.not42.i83262 = icmp eq i64 %.035.lcssa.i71, 0
  br i1 %.not42.i83262, label %.critedge2, label %.lr.ph264

.preheader.i81:                                   ; preds = %bb.av
  %.not42.i83 = icmp eq i64 %i.ez, 0
  br i1 %.not42.i83, label %.critedge2, label %.lr.ph264, !llvm.loop !7

.lr.ph264:                                        ; preds = %.preheader.preheader.i80, %.preheader.i81
  %.1.i82263 = phi i64 [ %i.ez, %.preheader.i81 ], [ %.035.lcssa.i71, %.preheader.preheader.i80 ]
  %i.ez = add nsw i64 %.1.i82263, -1              ; 4 uses
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.ey, i64 %i.ez
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !26 ; 2 uses
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.ez
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !26 ; 2 uses
  %i.fe = icmp ugt i64 %i.fb, %i.fd
  br i1 %i.fe, label %bb.au, label %bb.av

bb.au:                                            ; preds = %.lr.ph264
  %i.ff = sext i16 %i.ev to i32
  br label %mbedtls_mpi_cmp_mpi.exit87

bb.av:                                            ; preds = %.lr.ph264
  %i.fg = icmp ult i64 %i.fb, %i.fd
  br i1 %i.fg, label %bb.aw, label %.preheader.i81, !llvm.loop !7

bb.aw:                                            ; preds = %bb.av
  %i.fh = sext i16 %i.ev to i32
  %i.fi = sub nsw i32 0, %i.fh
  br label %mbedtls_mpi_cmp_mpi.exit87

mbedtls_mpi_cmp_mpi.exit87:                       ; preds = %bb.aq, %bb.ap, %bb.au, %bb.aw
  %.036.i84 = phi i32 [ %i.ff, %bb.au ], [ %i.et, %bb.ap ], [ %i.fi, %bb.aw ], [ %i.ee, %bb.aq ]
  %.not36 = icmp eq i32 %.036.i84, 0
  br i1 %.not36, label %.critedge2, label %mbedtls_mpi_cmp_mpi.exit87.thread123

mbedtls_mpi_cmp_mpi.exit87.thread123:             ; preds = %bb.as, %bb.at, %mbedtls_mpi_cmp_mpi.exit87
  %i.fj = call i32 @mbedtls_mpi_mul_mpi(ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %8) ; 2 uses
  %.not37 = icmp eq i32 %i.fj, 0
  br i1 %.not37, label %bb.ax, label %mbedtls_mpi_fill_random.exit.thread

bb.ax:                                            ; preds = %mbedtls_mpi_cmp_mpi.exit87.thread123
  %i.fk = call i32 @mbedtls_mpi_mod_mpi(ptr noundef nonnull %8, ptr noundef nonnull %7, ptr noundef %0) ; 2 uses
  %.not38 = icmp eq i32 %i.fk, 0
  br i1 %.not38, label %bb.ay, label %mbedtls_mpi_fill_random.exit.thread

bb.ay:                                            ; preds = %bb.ax
  %i.fl = load i16, ptr %i.i, align 2, !tbaa !20  ; 6 uses
  %.not44.i.i88 = icmp eq i16 %i.fl, 0
  br i1 %.not44.i.i88, label %mbedtls_mpi_cmp_int.exit97.thread, label %.lr.ph.i.i89

.lr.ph.i.i89:                                     ; preds = %bb.ay
  %i.fm = zext i16 %i.fl to i64
  %i.fn = load ptr, ptr %8, align 8, !tbaa !23    ; 2 uses
  br label %bb.az

bb.az:                                            ; preds = %bb.ba, %.lr.ph.i.i89
  %.03545.i.i90 = phi i64 [ %i.fm, %.lr.ph.i.i89 ], [ %i.fr, %bb.ba ] ; 3 uses
  %i.fo = getelementptr [8 x i8], ptr %i.fn, i64 %.03545.i.i90
  %i.fp = getelementptr i8, ptr %i.fo, i64 -8
  %i.fq = load i64, ptr %i.fp, align 8, !tbaa !26
  %.not39.i.i91 = icmp eq i64 %i.fq, 0
  br i1 %.not39.i.i91, label %bb.ba, label %.lr.ph51.i.i92

bb.ba:                                            ; preds = %bb.az
  %i.fr = add nsw i64 %.03545.i.i90, -1           ; 2 uses
  %.not.i.i96 = icmp eq i64 %i.fr, 0
  br i1 %.not.i.i96, label %mbedtls_mpi_cmp_int.exit97.thread, label %bb.az, !llvm.loop !1

.lr.ph51.i.i92:                                   ; preds = %bb.az
  %i.fs = icmp ugt i64 %.03545.i.i90, 1
  %i.ft = load i16, ptr %i.h, align 8, !tbaa !21  ; 4 uses
  br i1 %i.fs, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %.lr.ph51.i.i92
  %i.fu = sext i16 %i.ft to i32
  br label %mbedtls_mpi_cmp_int.exit97

bb.bc:                                            ; preds = %.lr.ph51.i.i92
  %or.cond133 = icmp slt i16 %i.ft, 0
  br i1 %or.cond133, label %mbedtls_mpi_cmp_int.exit97.thread, label %.preheader.preheader.i.i94

.preheader.preheader.i.i94:                       ; preds = %bb.bc
  %i.fv = load i64, ptr %i.fn, align 8, !tbaa !26 ; 2 uses
  %i.fw = icmp ugt i64 %i.fv, 1
  br i1 %i.fw, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %.preheader.preheader.i.i94
  %i.fx = zext nneg i16 %i.ft to i32
  br label %mbedtls_mpi_cmp_int.exit97

bb.be:                                            ; preds = %.preheader.preheader.i.i94
  %i.fy = icmp eq i64 %i.fv, 0
  br i1 %i.fy, label %bb.bf, label %..critedge2.loopexit134_crit_edge150, !llvm.loop !7

bb.bf:                                            ; preds = %bb.be
  %i.fz = zext nneg i16 %i.ft to i32
  %i.ga = sub nsw i32 0, %i.fz
  br label %mbedtls_mpi_cmp_int.exit97

mbedtls_mpi_cmp_int.exit97:                       ; preds = %bb.bb, %bb.bd, %bb.bf
  %.036.i.i95 = phi i32 [ %i.fx, %bb.bd ], [ %i.fu, %bb.bb ], [ %i.ga, %bb.bf ]
  %i.gb = icmp ne i32 %.036.i.i95, 0
  %i.gc = add nuw i64 %.0149, 1                   ; 2 uses
  %i.gd = icmp ult i64 %i.gc, %.08.i
  %or.cond = select i1 %i.gb, i1 %i.gd, i1 false
  br i1 %or.cond, label %.backedge.backedge, label %.critedge2

mbedtls_mpi_cmp_int.exit97.thread:                ; preds = %bb.ba, %bb.bc, %bb.ay
  %.old = add nuw i64 %.0149, 1                   ; 2 uses
  %.old157 = icmp ult i64 %.old, %.08.i
  br i1 %.old157, label %.backedge.backedge, label %.critedge2

.backedge.backedge:                               ; preds = %mbedtls_mpi_cmp_int.exit97.thread, %mbedtls_mpi_cmp_int.exit97
  %.0149.be = phi i64 [ %.old, %mbedtls_mpi_cmp_int.exit97.thread ], [ %i.gc, %mbedtls_mpi_cmp_int.exit97 ]
  br label %.backedge, !llvm.loop !60

..critedge2.loopexit134_crit_edge150:             ; preds = %bb.be
  br label %.critedge2, !llvm.loop !7

.critedge2:                                       ; preds = %mbedtls_mpi_cmp_mpi.exit87, %mbedtls_mpi_cmp_int.exit97, %mbedtls_mpi_cmp_int.exit97.thread, %._crit_edge52.i76, %.preheader.preheader.i80, %.preheader.i81, %.preheader, %..critedge2.loopexit134_crit_edge150
  %.promoted172 = phi i16 [ %i.ef, %.preheader.i81 ], [ %i.fl, %..critedge2.loopexit134_crit_edge150 ], [ %i.cn, %.preheader ], [ %i.fl, %mbedtls_mpi_cmp_int.exit97 ], [ %i.fl, %mbedtls_mpi_cmp_int.exit97.thread ], [ %i.ef, %._crit_edge52.i76 ], [ %i.ef, %mbedtls_mpi_cmp_mpi.exit87 ], [ %i.ef, %.preheader.preheader.i80 ]
  %i.ge = call i32 @mbedtls_mpi_cmp_mpi(ptr noundef nonnull %8, ptr noundef nonnull %5)
  %.not39 = icmp eq i32 %i.ge, 0
  br i1 %.not39, label %bb.bg, label %mbedtls_mpi_fill_random.exit.thread

bb.bg:                                            ; preds = %.critedge2
  %i.gf = call i32 @mbedtls_mpi_cmp_int(ptr noundef nonnull %8, i64 noundef 1)
  %i.gg = icmp eq i32 %i.gf, 0
  br i1 %i.gg, label %mbedtls_mpi_fill_random.exit.thread, label %mbedtls_mpi_cmp_mpi.exit65.thread

mbedtls_mpi_cmp_mpi.exit65.thread:                ; preds = %.preheader.i59, %.preheader.preheader.i58, %._crit_edge52.i54, %bb.bg, %mbedtls_mpi_cmp_mpi.exit65, %mbedtls_mpi_cmp_mpi.exit65.thread118
  %.promoted171 = phi i16 [ %i.cn, %mbedtls_mpi_cmp_mpi.exit65.thread118 ], [ %i.cn, %._crit_edge52.i54 ], [ %.promoted172, %bb.bg ], [ %i.cn, %mbedtls_mpi_cmp_mpi.exit65 ], [ %i.cn, %.preheader.preheader.i58 ], [ %i.cn, %.preheader.i59 ]
  %i.gh = add nuw i64 %.019151, 1                 ; 2 uses
  %exitcond169.not = icmp eq i64 %i.gh, %1
  br i1 %exitcond169.not, label %mbedtls_mpi_fill_random.exit.thread, label %.critedge.preheader, !llvm.loop !61

mbedtls_mpi_fill_random.exit.thread.loopexit135:  ; preds = %mbedtls_mpi_fill_random.exit, %bb.p, %bb.n, %mbedtls_mpi_free.exit12.i.i
  %i.gi = phi ptr [ null, %mbedtls_mpi_free.exit12.i.i ], [ null, %bb.n ], [ %i.au, %bb.p ], [ %i.ar, %mbedtls_mpi_fill_random.exit ]
  %i.gj = phi i16 [ 0, %mbedtls_mpi_free.exit12.i.i ], [ 0, %bb.n ], [ %i.av, %bb.p ], [ %i.as, %mbedtls_mpi_fill_random.exit ]
  %.4.ph136 = phi i32 [ -141, %mbedtls_mpi_free.exit12.i.i ], [ -141, %bb.n ], [ -14, %bb.p ], [ %i.at, %mbedtls_mpi_fill_random.exit ]
  store i16 %i.gj, ptr %i.i, align 2
  store ptr %i.gi, ptr %8, align 8
  br label %mbedtls_mpi_fill_random.exit.thread

mbedtls_mpi_fill_random.exit.thread:              ; preds = %mbedtls_mpi_cmp_int.exit, %mbedtls_mpi_cmp_mpi.exit65.thread, %bb.bg, %.critedge2, %bb.ax, %mbedtls_mpi_cmp_mpi.exit87.thread123, %mbedtls_mpi_shift_r.exit, %mbedtls_mpi_fill_random.exit.thread.loopexit135, %mbedtls_mpi_lsb.exit, %bb.a
  %.4 = phi i32 [ %i.n, %bb.a ], [ %i.x, %mbedtls_mpi_lsb.exit ], [ %.4.ph136, %mbedtls_mpi_fill_random.exit.thread.loopexit135 ], [ %i.fj, %mbedtls_mpi_cmp_mpi.exit87.thread123 ], [ 0, %mbedtls_mpi_shift_r.exit ], [ %i.fk, %bb.ax ], [ -14, %bb.bg ], [ 0, %mbedtls_mpi_cmp_mpi.exit65.thread ], [ %i.cm, %mbedtls_mpi_cmp_int.exit ], [ -14, %.critedge2 ]
  %i.gk = load ptr, ptr %5, align 8, !tbaa !23    ; 2 uses
  %.not.i98 = icmp eq ptr %i.gk, null
  br i1 %.not.i98, label %mbedtls_mpi_free.exit, label %bb.bh

bb.bh:                                            ; preds = %mbedtls_mpi_fill_random.exit.thread
  %i.gl = load i16, ptr %i.c, align 2, !tbaa !20
  %i.gm = zext i16 %i.gl to i64
  %i.gn = shl nuw nsw i64 %i.gm, 3
  call void @mbedtls_zeroize_and_free(ptr noundef nonnull %i.gk, i64 noundef %i.gn) #17
  br label %mbedtls_mpi_free.exit

mbedtls_mpi_free.exit:                            ; preds = %mbedtls_mpi_fill_random.exit.thread, %bb.bh
  %i.go = load ptr, ptr %6, align 8, !tbaa !23    ; 2 uses
  %.not.i99 = icmp eq ptr %i.go, null
  br i1 %.not.i99, label %mbedtls_mpi_free.exit100, label %bb.bi

bb.bi:                                            ; preds = %mbedtls_mpi_free.exit
  %i.gp = load i16, ptr %i.e, align 2, !tbaa !20
  %i.gq = zext i16 %i.gp to i64
  %i.gr = shl nuw nsw i64 %i.gq, 3
  call void @mbedtls_zeroize_and_free(ptr noundef nonnull %i.go, i64 noundef %i.gr) #17
  br label %mbedtls_mpi_free.exit100

mbedtls_mpi_free.exit100:                         ; preds = %mbedtls_mpi_free.exit, %bb.bi
  %i.gs = load ptr, ptr %7, align 8, !tbaa !23    ; 2 uses
  %.not.i101 = icmp eq ptr %i.gs, null
  br i1 %.not.i101, label %mbedtls_mpi_free.exit102, label %bb.bj

bb.bj:                                            ; preds = %mbedtls_mpi_free.exit100
  %i.gt = load i16, ptr %i.g, align 2, !tbaa !20
  %i.gu = zext i16 %i.gt to i64
  %i.gv = shl nuw nsw i64 %i.gu, 3
  call void @mbedtls_zeroize_and_free(ptr noundef nonnull %i.gs, i64 noundef %i.gv) #17
  br label %mbedtls_mpi_free.exit102

mbedtls_mpi_free.exit102:                         ; preds = %mbedtls_mpi_free.exit100, %bb.bj
  %i.gw = load ptr, ptr %8, align 8, !tbaa !23    ; 2 uses
  %.not.i103 = icmp eq ptr %i.gw, null
  br i1 %.not.i103, label %mbedtls_mpi_free.exit104, label %bb.bk

bb.bk:                                            ; preds = %mbedtls_mpi_free.exit102
  %i.gx = load i16, ptr %i.i, align 2, !tbaa !20
  %i.gy = zext i16 %i.gx to i64
  %i.gz = shl nuw nsw i64 %i.gy, 3
  call void @mbedtls_zeroize_and_free(ptr noundef nonnull %i.gw, i64 noundef %i.gz) #17
  br label %mbedtls_mpi_free.exit104

mbedtls_mpi_free.exit104:                         ; preds = %mbedtls_mpi_free.exit102, %bb.bk
  %i.ha = load ptr, ptr %9, align 8, !tbaa !23    ; 2 uses
  %.not.i105 = icmp eq ptr %i.ha, null
  br i1 %.not.i105, label %mbedtls_mpi_free.exit106, label %bb.bl

bb.bl:                                            ; preds = %mbedtls_mpi_free.exit104
  %i.hb = load i16, ptr %i.k, align 2, !tbaa !20
  %i.hc = zext i16 %i.hb to i64
  %i.hd = shl nuw nsw i64 %i.hc, 3
  call void @mbedtls_zeroize_and_free(ptr noundef nonnull %i.ha, i64 noundef %i.hd) #17
  br label %mbedtls_mpi_free.exit106

mbedtls_mpi_free.exit106:                         ; preds = %mbedtls_mpi_free.exit104, %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  ret i32 %.4
}

; Function Attrs: nounwind uwtable
define hidden i32 @mbedtls_mpi_gen_prime(ptr noundef %0, i64 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.mbedtls_mpi, align 8        ; 6 uses
  %i.a = alloca [1 x i64], align 8                ; 4 uses
  %6 = alloca %struct.mbedtls_mpi, align 8        ; 6 uses
  %i.b = alloca [1 x i64], align 8                ; 4 uses
  %7 = alloca %struct.mbedtls_mpi, align 8        ; 6 uses
  %i.c = alloca [1 x i64], align 8                ; 4 uses
  %8 = alloca %struct.mbedtls_mpi, align 8        ; 6 uses
  %i.d = alloca [1 x i64], align 8                ; 4 uses
  %9 = alloca %struct.mbedtls_mpi, align 8        ; 9 uses
  %10 = alloca %struct.mbedtls_mpi, align 8       ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #17
  %i.e = add i64 %1, -8193
  %or.cond = icmp ult i64 %i.e, -8190
  br i1 %or.cond, label %mbedtls_mpi_free.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i16 1, ptr %i.f, align 8, !tbaa !21
  %i.g = getelementptr inbounds nuw i8, ptr %10, i64 10 ; 3 uses
  store i16 0, ptr %i.g, align 2, !tbaa !20
  store ptr null, ptr %10, align 8, !tbaa !23
  %i.h = add nuw nsw i64 %1, 63                   ; 2 uses
  %i.i = lshr i64 %i.h, 6                         ; 3 uses
  %i.j = and i32 %2, 2
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.l = icmp samesign ugt i64 %1, 1299
  br i1 %i.l, label %bb.o, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = icmp samesign ugt i64 %1, 849
  br i1 %i.m, label %bb.o, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = icmp samesign ugt i64 %1, 649
  br i1 %i.n, label %bb.o, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = icmp samesign ugt i64 %1, 349
  br i1 %i.o, label %bb.o, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = icmp samesign ugt i64 %1, 249
  %i.q = icmp samesign ugt i64 %1, 149
  %i.r = select i1 %i.q, i64 18, i64 27
  %i.s = select i1 %i.p, i64 12, i64 %i.r
  br label %bb.o

bb.h:                                             ; preds = %bb.b
  %i.t = icmp samesign ugt i64 %1, 1449
  br i1 %i.t, label %bb.o, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = icmp samesign ugt i64 %1, 1149
  br i1 %i.u, label %bb.o, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = icmp samesign ugt i64 %1, 999
  br i1 %i.v, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.w = icmp samesign ugt i64 %1, 849
  br i1 %i.w, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.x = icmp samesign ugt i64 %1, 749
  br i1 %i.x, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.y = icmp samesign ugt i64 %1, 499
  br i1 %i.y, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.z = icmp samesign ugt i64 %1, 249
  %i.aa = icmp samesign ugt i64 %1, 149
  %i.ab = select i1 %i.aa, i64 40, i64 51
  %i.ac = select i1 %i.z, i64 28, i64 %i.ab
  br label %bb.o

bb.o:                                             ; preds = %bb.h, %bb.j, %bb.l, %bb.m, %bb.n, %bb.k, %bb.i, %bb.c, %bb.e, %bb.f, %bb.g, %bb.d
  %.0 = phi i64 [ 8, %bb.f ], [ 2, %bb.c ], [ 3, %bb.d ], [ 4, %bb.e ], [ %i.s, %bb.g ], [ 4, %bb.h ], [ 5, %bb.i ], [ 6, %bb.j ], [ 7, %bb.k ], [ 8, %bb.l ], [ %i.ac, %bb.n ], [ 13, %bb.m ] ; 3 uses
  %i.ad = shl nuw nsw i64 %i.i, 3                 ; 3 uses
  %i.ae = tail call i32 @mbedtls_mpi_fill_random(ptr noundef %0, i64 noundef %i.ad, ptr noundef %3, ptr noundef %4) ; 2 uses
  %.not103 = icmp eq i32 %i.ae, 0
  br i1 %.not103, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.o
  %i.af = and i64 %i.h, 32704                     ; 2 uses
  %i.ag = icmp samesign ugt i64 %i.af, %1         ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 4 uses
  %i.ai = sub nuw nsw i64 %i.af, %1               ; 2 uses
  %i.aj = and i32 %2, 1
  %i.ak = icmp eq i32 %i.aj, 0
  %i.al = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %9, i64 10
  br i1 %i.ak, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.backedge.us
  %i.an = load ptr, ptr %0, align 8, !tbaa !23    ; 4 uses
  %i.ao = getelementptr [8 x i8], ptr %i.an, i64 %i.i
  %i.ap = getelementptr i8, ptr %i.ao, i64 -8
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !26
  %i.ar = icmp ult i64 %i.aq, -5402926248376769403
  br i1 %i.ar, label %.backedge.us, label %bb.p

bb.p:                                             ; preds = %.lr.ph.split.us
  %.pre120 = load i16, ptr %i.ah, align 2, !tbaa !20 ; 3 uses
  br i1 %i.ag, label %bb.q, label %mbedtls_mpi_shift_r.exit.us

bb.q:                                             ; preds = %bb.p
  %.not.i.us = icmp eq i16 %.pre120, 0
  br i1 %.not.i.us, label %mbedtls_mpi_shift_r.exit.us, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.as = zext i16 %.pre120 to i64
  call void @mbedtls_mpi_core_shift_r(ptr noundef nonnull %i.an, i64 noundef %i.as, i64 noundef %i.ai) #17
end_hunk_0
begin_hunk_1_@mbedtls_mpi_self_test:bb.a

mbedtls_mpi_free.exit77:                          ; preds = %mbedtls_mpi_free.exit75, %bb.ax
  store i16 1, ptr %i.e, align 8, !tbaa !21
  store i16 0, ptr %i.f, align 2, !tbaa !20
  store ptr null, ptr %3, align 8, !tbaa !23
  %i.bo = load ptr, ptr %4, align 8, !tbaa !23    ; 2 uses
  %.not.i78 = icmp eq ptr %i.bo, null
  br i1 %.not.i78, label %mbedtls_mpi_free.exit79, label %bb.ay

bb.ay:                                            ; preds = %mbedtls_mpi_free.exit77
  %i.bp = load i16, ptr %i.h, align 2, !tbaa !20
  %i.bq = zext i16 %i.bp to i64
  %i.br = shl nuw nsw i64 %i.bq, 3
  call void @mbedtls_zeroize_and_free(ptr noundef nonnull %i.bo, i64 noundef %i.br) #17
  br label %mbedtls_mpi_free.exit79

mbedtls_mpi_free.exit79:                          ; preds = %mbedtls_mpi_free.exit77, %bb.ay
  %i.bs = load ptr, ptr %5, align 8, !tbaa !23    ; 2 uses
  %.not.i80 = icmp eq ptr %i.bs, null
  br i1 %.not.i80, label %mbedtls_mpi_free.exit81, label %bb.az

bb.az:                                            ; preds = %mbedtls_mpi_free.exit79
  %i.bt = load i16, ptr %i.j, align 2, !tbaa !20
  %i.bu = zext i16 %i.bt to i64
  %i.bv = shl nuw nsw i64 %i.bu, 3
  call void @mbedtls_zeroize_and_free(ptr noundef nonnull %i.bs, i64 noundef %i.bv) #17
  br label %mbedtls_mpi_free.exit81

mbedtls_mpi_free.exit81:                          ; preds = %mbedtls_mpi_free.exit79, %bb.az
  %i.bw = load ptr, ptr %6, align 8, !tbaa !23    ; 2 uses
  %.not.i82 = icmp eq ptr %i.bw, null
  br i1 %.not.i82, label %mbedtls_mpi_free.exit83, label %bb.ba

bb.ba:                                            ; preds = %mbedtls_mpi_free.exit81
  %i.bx = load i16, ptr %i.l, align 2, !tbaa !20
  %i.by = zext i16 %i.bx to i64
  %i.bz = shl nuw nsw i64 %i.by, 3
  call void @mbedtls_zeroize_and_free(ptr noundef nonnull %i.bw, i64 noundef %i.bz) #17
  br label %mbedtls_mpi_free.exit83

mbedtls_mpi_free.exit83:                          ; preds = %mbedtls_mpi_free.exit81, %bb.ba
  %i.ca = load ptr, ptr %7, align 8, !tbaa !23    ; 2 uses
  %.not.i84 = icmp eq ptr %i.ca, null
  br i1 %.not.i84, label %mbedtls_mpi_free.exit85, label %bb.bb

bb.bb:                                            ; preds = %mbedtls_mpi_free.exit83
  %i.cb = load i16, ptr %i.n, align 2, !tbaa !20
  %i.cc = zext i16 %i.cb to i64
  %i.cd = shl nuw nsw i64 %i.cc, 3
  call void @mbedtls_zeroize_and_free(ptr noundef nonnull %i.ca, i64 noundef %i.cd) #17
  br label %mbedtls_mpi_free.exit85

mbedtls_mpi_free.exit85:                          ; preds = %mbedtls_mpi_free.exit83, %bb.bb
  br i1 %i.bb, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %mbedtls_mpi_free.exit85
  %putchar = call i32 @putchar(i32 10)            ; 0 uses
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %mbedtls_mpi_free.exit85
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  ret i32 %.1100
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

declare i64 @mbedtls_mpi_core_exp_mod_working_limbs(i64 noundef, i64 noundef) local_unnamed_addr #2

declare i32 @mbedtls_mpi_core_get_mont_r2_unsafe(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i64 @mbedtls_mpi_core_montmul_init(ptr noundef) local_unnamed_addr #2

declare void @mbedtls_mpi_core_to_mont_rep(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @mbedtls_mpi_core_exp_mod_unsafe(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @mbedtls_mpi_core_exp_mod(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @mbedtls_mpi_core_from_mont_rep(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i128 @llvm.umin.i128(i128, i128) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umax.i16(i16, i16) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #14

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #15

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nofree nounwind }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { nounwind }
attributes #18 = { nounwind allocsize(0,1) }
attributes #19 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!8, !9}
!llvm.ident = !{!10}
!llvm.errno.tbaa = !{!15}

!0 = distinct !{!0, !27}
!1 = distinct !{!1, !27}
!2 = distinct !{!2, !27}
!3 = distinct !{!3, !27}
!4 = distinct !{!4, !27}
!5 = distinct !{!5, !27}
!6 = distinct !{!6, !27}
!7 = distinct !{!7, !27}
!8 = !{i32 8, !"PIC Level", i32 2}
!9 = !{i32 7, !"uwtable", i32 2}
!10 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!11 = !{!"Simple C/C++ TBAA"}
!12 = !{!"omnipotent char", !11, i64 0}
!13 = !{!"int", !12, i64 0}
!14 = !{!"__libc_errno", !13, i64 0}
!15 = !{!14, !13, i64 0}
!16 = !{!"any pointer", !12, i64 0}
!17 = !{!"p1 long", !16, i64 0}
!18 = !{!"short", !12, i64 0}
!19 = !{!"mbedtls_mpi", !17, i64 0, !18, i64 8, !18, i64 10}
!20 = !{!19, !18, i64 10}
!21 = !{!19, !18, i64 8}
!22 = !{i64 858889, i64 858939, i64 859011, i64 859083, i64 859155}
!23 = !{!19, !17, i64 0}
!24 = !{i64 862310, i64 862360, i64 862432, i64 862504, i64 862576}
!25 = !{!"long", !12, i64 0}
!26 = !{!25, !25, i64 0}
!27 = !{!"llvm.loop.mustprogress"}
!28 = !{!12, !12, i64 0}
!29 = !{!16, !16, i64 0}
!30 = !{!13, !13, i64 0}
!31 = distinct !{!31, !27, !33, !34}
!32 = distinct !{!32, !27, !34, !33}
!33 = !{!"llvm.loop.isvectorized", i32 1}
!34 = !{!"llvm.loop.unroll.runtime.disable"}
!35 = distinct !{!35, !27}
!36 = distinct !{!36, !27}
!37 = distinct !{!37, !27}
!38 = distinct !{!38, !27}
!39 = distinct !{!39, !27}
!40 = distinct !{!40, !27}
!41 = distinct !{!41, !27}
!42 = distinct !{!42, !27}
!43 = distinct !{!43, !27}
!44 = distinct !{!44, !27, !45}
!45 = !{!"llvm.loop.peeled.count", i32 1}
!46 = distinct !{!46, !27}
!47 = distinct !{!47, !27}
!48 = distinct !{!48, !27}
!49 = distinct !{!49, !27}
!50 = distinct !{!50, !27}
!51 = distinct !{!51, !27}
!52 = distinct !{!52, !27}
!53 = distinct !{!53, !27}
!54 = !{!17, !17, i64 0}
!55 = !{!18, !18, i64 0}
!56 = !{i64 0, i64 8, !54, i64 8, i64 2, !55, i64 10, i64 2, !55}
!57 = !{i64 856011}
!58 = distinct !{!58, !27}
!59 = distinct !{!59, !27}
!60 = distinct !{!60, !27}
!61 = distinct !{!61, !27}
end_hunk_1
