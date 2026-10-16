Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lief/original/bignum?download=true
inline.NumInlined: 198
inline.NumDeleted: 18
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 14
begin_hunk_0_@mbedtls_mpi_gcd_modinv_odd:bb.a

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i
  %.03545.i.i = phi i64 [ %i.e, %.lr.ph.i.i ], [ %i.j, %bb.c ] ; 2 uses
  %i.g = getelementptr [8 x i8], ptr %i.f, i64 %.03545.i.i
  %i.h = getelementptr i8, ptr %i.g, i64 -8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !26
  %.not39.i.i = icmp eq i64 %i.i, 0
  br i1 %.not39.i.i, label %bb.c, label %mbedtls_mpi_cmp_int.exit

bb.c:                                             ; preds = %bb.b
  %i.j = add nsw i64 %.03545.i.i, -1              ; 2 uses
  %.not.i.i = icmp eq i64 %i.j, 0
  br i1 %.not.i.i, label %.lr.ph.i.preheader, label %bb.b, !llvm.loop !1

mbedtls_mpi_cmp_int.exit:                         ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.l = load i16, ptr %i.k, align 8, !tbaa !21
  %i.m = icmp slt i16 %i.l, 0
  br i1 %i.m, label %mbedtls_mpi_cmp_mpi.exit.thread133, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.c, %mbedtls_mpi_cmp_int.exit
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.d
  %.03545.i = phi i64 [ %i.q, %bb.d ], [ %i.e, %.lr.ph.i.preheader ] ; 3 uses
  %i.n = getelementptr [8 x i8], ptr %i.f, i64 %.03545.i
  %i.o = getelementptr i8, ptr %i.n, i64 -8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !26
  %.not39.i = icmp eq i64 %i.p, 0
  br i1 %.not39.i, label %bb.d, label %._crit_edge.i

bb.d:                                             ; preds = %.lr.ph.i
  %i.q = add nsw i64 %.03545.i, -1                ; 2 uses
  %.not.i = icmp eq i64 %i.q, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !1

._crit_edge.i:                                    ; preds = %bb.d, %.lr.ph.i, %bb.a
  %.035.lcssa.i = phi i64 [ 0, %bb.a ], [ 0, %bb.d ], [ %.03545.i, %.lr.ph.i ] ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 10 ; 6 uses
  %i.s = load i16, ptr %i.r, align 2, !tbaa !20   ; 8 uses
  %.not4048.i = icmp eq i16 %i.s, 0               ; 2 uses
  br i1 %.not4048.i, label %._crit_edge52.i, label %.lr.ph51.i

.lr.ph51.i:                                       ; preds = %._crit_edge.i
  %i.t = zext i16 %i.s to i64
  %i.u = load ptr, ptr %3, align 8, !tbaa !23
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %.lr.ph51.i
  %.049.i = phi i64 [ %i.t, %.lr.ph51.i ], [ %i.y, %bb.f ] ; 3 uses
  %i.v = getelementptr [8 x i8], ptr %i.u, i64 %.049.i
  %i.w = getelementptr i8, ptr %i.v, i64 -8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !26
  %.not41.i = icmp eq i64 %i.x, 0
  br i1 %.not41.i, label %bb.f, label %._crit_edge52.i

bb.f:                                             ; preds = %bb.e
  %i.y = add nsw i64 %.049.i, -1                  ; 2 uses
  %.not40.i = icmp eq i64 %i.y, 0
  br i1 %.not40.i, label %._crit_edge52.i, label %bb.e, !llvm.loop !6

._crit_edge52.i:                                  ; preds = %bb.f, %bb.e, %._crit_edge.i
  %.0.lcssa.i = phi i64 [ 0, %._crit_edge.i ], [ 0, %bb.f ], [ %.049.i, %bb.e ] ; 3 uses
  %i.z = or i64 %.0.lcssa.i, %.035.lcssa.i
  %or.cond.i = icmp eq i64 %i.z, 0
  br i1 %or.cond.i, label %mbedtls_mpi_cmp_mpi.exit.thread, label %bb.g

bb.g:                                             ; preds = %._crit_edge52.i
  %i.aa = icmp ugt i64 %.035.lcssa.i, %.0.lcssa.i
  br i1 %i.aa, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ac = load i16, ptr %i.ab, align 8, !tbaa !21
  %i.ad = sext i16 %i.ac to i32
  br label %mbedtls_mpi_cmp_mpi.exit

bb.i:                                             ; preds = %bb.g
  %i.ae = icmp ugt i64 %.0.lcssa.i, %.035.lcssa.i
  br i1 %i.ae, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ag = load i16, ptr %i.af, align 8, !tbaa !21
  %i.ah = sext i16 %i.ag to i32
  %i.ai = sub nsw i32 0, %i.ah
  br label %mbedtls_mpi_cmp_mpi.exit

bb.k:                                             ; preds = %bb.i
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ak = load i16, ptr %i.aj, align 8, !tbaa !21 ; 4 uses
  %i.al = icmp sgt i16 %i.ak, 0
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.an = load i16, ptr %i.am, align 8, !tbaa !21 ; 2 uses
  br i1 %i.al, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ao = icmp slt i16 %i.an, 0
  br i1 %i.ao, label %mbedtls_mpi_cmp_mpi.exit.thread133, label %.preheader.preheader.i

bb.m:                                             ; preds = %bb.k
  %i.ap = icmp sgt i16 %i.an, 0
  %i.aq = icmp ne i16 %i.ak, 0
  %or.cond43.i = and i1 %i.aq, %i.ap
  %.not42.i208 = icmp eq i64 %.035.lcssa.i, 0
  %or.cond210 = or i1 %or.cond43.i, %.not42.i208
  br i1 %or.cond210, label %mbedtls_mpi_cmp_mpi.exit.thread, label %.lr.ph.preheader

.preheader.preheader.i:                           ; preds = %bb.l
  %.not42.i208.old = icmp eq i64 %.035.lcssa.i, 0
  br i1 %.not42.i208.old, label %mbedtls_mpi_cmp_mpi.exit.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader.preheader.i, %bb.m
  %i.ar = load ptr, ptr %2, align 8, !tbaa !23
  %i.as = load ptr, ptr %3, align 8, !tbaa !23
  br label %.lr.ph

.preheader.i:                                     ; preds = %bb.o
  %.not42.i = icmp eq i64 %i.at, 0
  br i1 %.not42.i, label %mbedtls_mpi_cmp_mpi.exit.thread, label %.lr.ph, !llvm.loop !7

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.preheader.i
  %.1.i209 = phi i64 [ %i.at, %.preheader.i ], [ %.035.lcssa.i, %.lr.ph.preheader ]
  %i.at = add nsw i64 %.1.i209, -1                ; 4 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.at
  %i.av = load i64, ptr %i.au, align 8, !tbaa !26 ; 2 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.at
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !26 ; 2 uses
  %i.ay = icmp ugt i64 %i.av, %i.ax
  br i1 %i.ay, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.lr.ph
  %i.az = sext i16 %i.ak to i32
  br label %mbedtls_mpi_cmp_mpi.exit

bb.o:                                             ; preds = %.lr.ph
  %i.ba = icmp ult i64 %i.av, %i.ax
  br i1 %i.ba, label %bb.p, label %.preheader.i, !llvm.loop !7

bb.p:                                             ; preds = %bb.o
  %i.bb = sext i16 %i.ak to i32
  %i.bc = sub nsw i32 0, %i.bb
  br label %mbedtls_mpi_cmp_mpi.exit

mbedtls_mpi_cmp_mpi.exit:                         ; preds = %bb.h, %bb.j, %bb.n, %bb.p
  %.036.i = phi i32 [ %i.az, %bb.n ], [ %i.ad, %bb.h ], [ %i.ai, %bb.j ], [ %i.bc, %bb.p ]
  %i.bd = icmp sgt i32 %.036.i, 0
  br i1 %i.bd, label %mbedtls_mpi_cmp_mpi.exit.thread133, label %mbedtls_mpi_cmp_mpi.exit.thread

mbedtls_mpi_cmp_mpi.exit.thread:                  ; preds = %.preheader.i, %.preheader.preheader.i, %._crit_edge52.i, %bb.m, %mbedtls_mpi_cmp_mpi.exit
  %i.be = zext i16 %i.s to i64                    ; 3 uses
  br i1 %.not4048.i, label %mbedtls_mpi_cmp_mpi.exit.thread133, label %mbedtls_mpi_get_bit.exit

mbedtls_mpi_get_bit.exit:                         ; preds = %mbedtls_mpi_cmp_mpi.exit.thread
  %i.bf = load ptr, ptr %3, align 8, !tbaa !23    ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !26 ; 3 uses
  %i.bh = and i64 %i.bg, 1
  %.not76.not = icmp eq i64 %i.bh, 0
  br i1 %.not76.not, label %mbedtls_mpi_cmp_mpi.exit.thread133, label %bb.q

bb.q:                                             ; preds = %mbedtls_mpi_get_bit.exit
  br i1 %.not, label %bb.x, label %.lr.ph.i.i87

.lr.ph.i.i87:                                     ; preds = %bb.q, %bb.r
  %.03545.i.i88 = phi i64 [ %i.bl, %bb.r ], [ %i.be, %bb.q ] ; 3 uses
  %i.bi = getelementptr [8 x i8], ptr %i.bf, i64 %.03545.i.i88
  %i.bj = getelementptr i8, ptr %i.bi, i64 -8
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !26
  %.not39.i.i89 = icmp eq i64 %i.bk, 0
  br i1 %.not39.i.i89, label %bb.r, label %.lr.ph51.i.i90

bb.r:                                             ; preds = %.lr.ph.i.i87
  %i.bl = add nsw i64 %.03545.i.i88, -1           ; 2 uses
  %.not.i.i94 = icmp eq i64 %i.bl, 0
  br i1 %.not.i.i94, label %mbedtls_mpi_cmp_int.exit95, label %.lr.ph.i.i87, !llvm.loop !1

.lr.ph51.i.i90:                                   ; preds = %.lr.ph.i.i87
  %i.bm = icmp ugt i64 %.03545.i.i88, 1
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bo = load i16, ptr %i.bn, align 8, !tbaa !21 ; 4 uses
  br i1 %i.bm, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.lr.ph51.i.i90
  %i.bp = sext i16 %i.bo to i32
  br label %mbedtls_mpi_cmp_int.exit95

bb.t:                                             ; preds = %.lr.ph51.i.i90
  %or.cond172 = icmp slt i16 %i.bo, 0
  br i1 %or.cond172, label %mbedtls_mpi_cmp_int.exit95, label %.preheader.i.i.preheader

.preheader.i.i.preheader:                         ; preds = %bb.t
  %i.bq = icmp ugt i64 %i.bg, 1
  br i1 %i.bq, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.preheader.i.i.preheader
  %i.br = zext nneg i16 %i.bo to i32
  br label %mbedtls_mpi_cmp_int.exit95

bb.v:                                             ; preds = %.preheader.i.i.preheader
  %i.bs = icmp eq i64 %i.bg, 0
  br i1 %i.bs, label %bb.w, label %mbedtls_mpi_cmp_mpi.exit.thread133

bb.w:                                             ; preds = %bb.v
  %i.bt = zext nneg i16 %i.bo to i32
  %i.bu = sub nsw i32 0, %i.bt
  br label %mbedtls_mpi_cmp_int.exit95

mbedtls_mpi_cmp_int.exit95:                       ; preds = %bb.r, %bb.t, %bb.s, %bb.u, %bb.w
  %.036.i.i93 = phi i32 [ -1, %bb.t ], [ %i.bp, %bb.s ], [ %i.br, %bb.u ], [ %i.bu, %bb.w ], [ -1, %bb.r ]
  %i.bv = icmp eq i32 %.036.i.i93, 0
  %i.bw = icmp eq ptr %2, %3
  %or.cond84 = or i1 %i.bw, %i.bv
  br i1 %or.cond84, label %mbedtls_mpi_cmp_mpi.exit.thread133, label %.thread170

bb.x:                                             ; preds = %bb.q
  %.old = icmp eq ptr %2, %3
  br i1 %.old, label %mbedtls_mpi_cmp_mpi.exit.thread133, label %.thread142

.thread170:                                       ; preds = %mbedtls_mpi_cmp_int.exit95
  %i.bx = icmp eq ptr %1, %3
  %i.by = icmp eq ptr %0, %3
  %or.cond = or i1 %i.bx, %i.by
  br i1 %or.cond, label %mbedtls_mpi_cmp_mpi.exit.thread133, label %.thread142

.thread142:                                       ; preds = %bb.x, %.thread170
  %i.bz = icmp eq ptr %0, null                    ; 4 uses
  %i.ca = icmp ugt i16 %i.s, 10000
  br i1 %i.ca, label %mbedtls_mpi_free.exit, label %bb.y

bb.y:                                             ; preds = %.thread142
  %.sroa.gep104 = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 3 uses
  br i1 %i.bz, label %.cont, label %.else

.else:                                            ; preds = %bb.y
  %.else.val = load i16, ptr %.sroa.gep104, align 2, !tbaa !20
  %i.cb = zext i16 %.else.val to i64
  br label %.cont

.cont:                                            ; preds = %bb.y, %.else
  %i.cc = phi i64 [ 0, %bb.y ], [ %i.cb, %.else ] ; 2 uses
  %i.cd = icmp samesign ult i64 %i.cc, %i.be
  br i1 %i.cd, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %.cont
  %i.ce = tail call noalias ptr @calloc(i64 noundef %i.be, i64 noundef 8) #18 ; 4 uses
  %i.cf = icmp eq ptr %i.ce, null
  br i1 %i.cf, label %mbedtls_mpi_free.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  br i1 %i.bz, label %bb.ac, label %.cont115

.cont115:                                         ; preds = %bb.aa
  %.else.val118 = load ptr, ptr %0, align 8, !tbaa !23 ; 3 uses
  %.not.i97 = icmp eq ptr %.else.val118, null
  br i1 %.not.i97, label %.cont106.else, label %bb.ab

bb.ab:                                            ; preds = %.cont115
  %i.cg = shl nuw nsw i64 %i.cc, 3                ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ce, ptr nonnull align 8 %.else.val118, i64 %i.cg, i1 false)
  tail call void @mbedtls_zeroize_and_free(ptr noundef nonnull %.else.val118, i64 noundef %i.cg) #17
  br label %.cont106.else

.cont106.else:                                    ; preds = %bb.ab, %.cont115
  store i16 %i.s, ptr %.sroa.gep104, align 2, !tbaa !20
  store ptr %i.ce, ptr %0, align 8, !tbaa !23
  %.pre177.pre = load i16, ptr %i.r, align 2, !tbaa !20
  br label %bb.ac

bb.ac:                                            ; preds = %.cont, %bb.aa, %.cont106.else
  %.pre177 = phi i16 [ %i.s, %bb.aa ], [ %.pre177.pre, %.cont106.else ], [ %i.s, %.cont ] ; 2 uses
  %.sroa.9.0.ph = phi i16 [ %i.s, %bb.aa ], [ 0, %.cont106.else ], [ 0, %.cont ] ; 3 uses
  %.sroa.0.0.ph = phi ptr [ %i.ce, %bb.aa ], [ null, %.cont106.else ], [ null, %.cont ] ; 4 uses
  br i1 %.not, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ch = zext i16 %.pre177 to i64
  %i.ci = tail call i32 @mbedtls_mpi_grow(ptr noundef nonnull %1, i64 noundef %i.ch) ; 2 uses
  %.not78 = icmp eq i32 %i.ci, 0
  br i1 %.not78, label %._crit_edge176, label %mbedtls_mpi_grow.exit

._crit_edge176:                                   ; preds = %bb.ad
  %.pre = load i16, ptr %i.r, align 2, !tbaa !20
  br label %bb.ae

bb.ae:                                            ; preds = %._crit_edge176, %bb.ac
  %i.cj = phi i16 [ %.pre, %._crit_edge176 ], [ %.pre177, %bb.ac ] ; 3 uses
  %i.ck = zext i16 %i.cj to i64                   ; 3 uses
  %i.cl = shl nuw nsw i64 %i.ck, 3
  %i.cm = tail call noalias ptr @calloc(i64 noundef %i.cl, i64 noundef %i.b) #18 ; 6 uses
  %i.cn = icmp eq ptr %i.cm, null
  br i1 %i.cn, label %mbedtls_mpi_grow.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  br i1 %.not, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.co = load ptr, ptr %1, align 8, !tbaa !23
  br label %bb.ah

bb.ah:                                            ; preds = %bb.af, %bb.ag
  %i.cp = phi ptr [ %i.co, %bb.ag ], [ null, %bb.af ] ; 2 uses
  %i.cq = load ptr, ptr %2, align 8, !tbaa !23    ; 2 uses
  %.not79 = icmp eq ptr %i.cq, null               ; 2 uses
  %spec.select = select i1 %.not79, ptr %i.a, ptr %i.cq ; 2 uses
  %i.cr = load i16, ptr %i.c, align 2, !tbaa !20  ; 2 uses
  %.not80 = icmp ult i16 %i.cr, %i.cj
  %spec.select83 = select i1 %.not79, i16 1, i16 %i.cr
  %spec.select173 = select i1 %.not80, i16 %spec.select83, i16 %i.cj
  %i.cs = zext i16 %spec.select173 to i64         ; 2 uses
  br i1 %i.bz, label %.then113, label %.else114

.then113:                                         ; preds = %bb.ah
  %i.ct = load ptr, ptr %3, align 8, !tbaa !23
  call void @mbedtls_mpi_core_gcd_modinv_odd(ptr noundef %.sroa.0.0.ph, ptr noundef %i.cp, ptr noundef nonnull %spec.select, i64 noundef %i.cs, ptr noundef %i.ct, i64 noundef %i.ck, ptr noundef nonnull %i.cm) #17
  br label %.cont112

.else114:                                         ; preds = %bb.ah
  %.else.val126 = load ptr, ptr %0, align 8, !tbaa !23
  %i.cu = load ptr, ptr %3, align 8, !tbaa !23
  call void @mbedtls_mpi_core_gcd_modinv_odd(ptr noundef %.else.val126, ptr noundef %i.cp, ptr noundef nonnull %spec.select, i64 noundef %i.cs, ptr noundef %i.cu, i64 noundef %i.ck, ptr noundef nonnull %i.cm) #17
  %.sroa.gep99 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 1, ptr %.sroa.gep99, align 8, !tbaa !21
  br label %.cont112

.cont112:                                         ; preds = %.else114, %.then113
  br i1 %.not, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %.cont112
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i16 1, ptr %i.cv, align 8, !tbaa !21
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %.cont112
  br i1 %i.bz, label %.cont108, label %.cont108.thread

.cont108:                                         ; preds = %bb.aj
  %i.cw = load i16, ptr %i.r, align 2, !tbaa !20  ; 2 uses
  %i.cx = icmp ugt i16 %.sroa.9.0.ph, %i.cw
  br i1 %i.cx, label %.cont119, label %bb.ak

.cont108.thread:                                  ; preds = %bb.aj
  %.else.val111 = load i16, ptr %.sroa.gep104, align 2, !tbaa !20 ; 2 uses
  %i.cy = load i16, ptr %i.r, align 2, !tbaa !20  ; 2 uses
  %i.cz = icmp ugt i16 %.else.val111, %i.cy
  br i1 %i.cz, label %.else121, label %bb.ak

.else121:                                         ; preds = %.cont108.thread
  %.else.val122 = load ptr, ptr %0, align 8, !tbaa !23
  br label %.cont119

.cont119:                                         ; preds = %.cont108, %.else121
  %i.da = phi i16 [ %.else.val111, %.else121 ], [ %.sroa.9.0.ph, %.cont108 ]
  %i.db = phi i16 [ %i.cy, %.else121 ], [ %i.cw, %.cont108 ] ; 2 uses
  %i.dc = phi ptr [ %.else.val122, %.else121 ], [ %.sroa.0.0.ph, %.cont108 ]
  %i.dd = zext i16 %i.db to i64
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %i.dd
  %narrow = sub nuw i16 %i.da, %i.db
  %i.df = zext i16 %narrow to i64
  %i.dg = shl nuw nsw i64 %i.df, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.de, i8 0, i64 %i.dg, i1 false)
  br label %bb.ak

bb.ak:                                            ; preds = %.cont108.thread, %.cont119, %.cont108
  br i1 %.not, label %mbedtls_mpi_grow.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.di = load i16, ptr %i.dh, align 2, !tbaa !20 ; 2 uses
  %i.dj = load i16, ptr %i.r, align 2, !tbaa !20  ; 3 uses
  %i.dk = icmp ugt i16 %i.di, %i.dj
  br i1 %i.dk, label %bb.am, label %mbedtls_mpi_grow.exit

bb.am:                                            ; preds = %bb.al
  %i.dl = load ptr, ptr %1, align 8, !tbaa !23
  %i.dm = zext i16 %i.dj to i64
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %i.dm
  %narrow82 = sub nuw i16 %i.di, %i.dj
  %i.do = zext i16 %narrow82 to i64
  %i.dp = shl nuw nsw i64 %i.do, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.dn, i8 0, i64 %i.dp, i1 false)
  br label %mbedtls_mpi_grow.exit

mbedtls_mpi_grow.exit:                            ; preds = %bb.ae, %bb.ak, %bb.al, %bb.am, %bb.ad
  %.058 = phi ptr [ null, %bb.ae ], [ null, %bb.ad ], [ %i.cm, %bb.ak ], [ %i.cm, %bb.am ], [ %i.cm, %bb.al ] ; 2 uses
  %.1 = phi i32 [ -141, %bb.ae ], [ %i.ci, %bb.ad ], [ 0, %bb.ak ], [ 0, %bb.am ], [ 0, %bb.al ] ; 2 uses
  %.not.i98 = icmp eq ptr %.sroa.0.0.ph, null
  br i1 %.not.i98, label %mbedtls_mpi_free.exit, label %bb.an

bb.an:                                            ; preds = %mbedtls_mpi_grow.exit
  %i.dq = zext nneg i16 %.sroa.9.0.ph to i64
  %i.dr = shl nuw nsw i64 %i.dq, 3
  call void @mbedtls_zeroize_and_free(ptr noundef nonnull %.sroa.0.0.ph, i64 noundef %i.dr) #17
  br label %mbedtls_mpi_free.exit

mbedtls_mpi_free.exit:                            ; preds = %bb.z, %.thread142, %mbedtls_mpi_grow.exit, %bb.an
  %.1166 = phi i32 [ %.1, %bb.an ], [ %.1, %mbedtls_mpi_grow.exit ], [ -141, %.thread142 ], [ -141, %bb.z ]
  %.058165 = phi ptr [ %.058, %bb.an ], [ %.058, %mbedtls_mpi_grow.exit ], [ null, %.thread142 ], [ null, %bb.z ]
  call void @free(ptr noundef %.058165) #17
  br label %mbedtls_mpi_cmp_mpi.exit.thread133

mbedtls_mpi_cmp_mpi.exit.thread133:               ; preds = %bb.v, %mbedtls_mpi_cmp_mpi.exit.thread, %bb.l, %bb.x, %.thread170, %mbedtls_mpi_cmp_int.exit, %mbedtls_mpi_cmp_mpi.exit, %mbedtls_mpi_get_bit.exit, %mbedtls_mpi_cmp_int.exit95, %mbedtls_mpi_free.exit
  %.0 = phi i32 [ %.1166, %mbedtls_mpi_free.exit ], [ -135, %mbedtls_mpi_cmp_int.exit ], [ -135, %mbedtls_mpi_cmp_int.exit95 ], [ -135, %mbedtls_mpi_get_bit.exit ], [ -135, %mbedtls_mpi_cmp_mpi.exit ], [ -135, %.thread170 ], [ -135, %bb.x ], [ -135, %mbedtls_mpi_cmp_mpi.exit.thread ], [ -135, %bb.l ], [ -135, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret i32 %.0
}

declare void @mbedtls_mpi_core_gcd_modinv_odd(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
end_hunk_0
begin_hunk_1_@mbedtls_mpi_gcd:bb.a
bb.t:                                             ; preds = %.lr.ph.i
  %i.ap = add nuw nsw i64 %.011.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ap, %.pre-phi
  br i1 %exitcond.not.i, label %.lr.ph.i31.preheader, label %.lr.ph.i, !llvm.loop !0

.lr.ph.i31.preheader:                             ; preds = %bb.t, %bb.s
  %.08.i = phi i64 [ %i.ao, %bb.s ], [ 0, %bb.t ] ; 2 uses
  br label %.lr.ph.i31

.lr.ph.i31:                                       ; preds = %.lr.ph.i31.preheader, %bb.v
  %.011.i32 = phi i64 [ %i.av, %bb.v ], [ 0, %.lr.ph.i31.preheader ] ; 3 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %.011.i32
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !26 ; 2 uses
  %.not.i33 = icmp eq i64 %i.ar, 0
  br i1 %.not.i33, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i31
  %i.as = shl nuw nsw i64 %.011.i32, 6
  %i.at = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ar, i1 true)
  %i.au = or disjoint i64 %i.at, %i.as
  br label %mbedtls_mpi_shift_r.exit39

bb.v:                                             ; preds = %.lr.ph.i31
  %i.av = add nuw nsw i64 %.011.i32, 1            ; 2 uses
  %exitcond.not.i35 = icmp eq i64 %i.av, %i.af
  br i1 %exitcond.not.i35, label %mbedtls_mpi_shift_r.exit39, label %.lr.ph.i31, !llvm.loop !0

mbedtls_mpi_shift_r.exit39:                       ; preds = %bb.v, %bb.u
  %.08.i34 = phi i64 [ %i.au, %bb.u ], [ 0, %bb.v ] ; 2 uses
  call void @mbedtls_mpi_core_shift_r(ptr noundef %i.z, i64 noundef %.pre-phi, i64 noundef %.08.i) #17
  call void @mbedtls_mpi_core_shift_r(ptr noundef nonnull %i.ae, i64 noundef %i.af, i64 noundef %.08.i34) #17
  %i.aw = call i64 @mbedtls_mpi_core_lt_ct(ptr noundef nonnull %i.ae, ptr noundef %i.z, i64 noundef %.pre-phi) #17
  call void @mbedtls_mpi_core_cond_swap(ptr noundef %i.z, ptr noundef nonnull %i.ae, i64 noundef %.pre-phi, i64 noundef %i.aw) #17
  %i.ax = call i32 @mbedtls_mpi_gcd_modinv_odd(ptr noundef %0, ptr noundef null, ptr noundef nonnull %3, ptr noundef nonnull %4) ; 2 uses
  %.not25 = icmp eq i32 %i.ax, 0
  br i1 %.not25, label %bb.w, label %mbedtls_mpi_grow.exit

bb.w:                                             ; preds = %mbedtls_mpi_shift_r.exit39
  %i.ay = call i64 @llvm.umin.i64(i64 %.08.i, i64 %.08.i34)
  %i.az = call i32 @mbedtls_mpi_shift_l(ptr noundef %0, i64 noundef %i.ay)
  br label %mbedtls_mpi_grow.exit

mbedtls_mpi_grow.exit:                            ; preds = %bb.k, %bb.i, %bb.e, %bb.c, %bb.w, %bb.r, %bb.p, %mbedtls_mpi_shift_r.exit39, %bb.b, %bb.a
  %.0 = phi i32 [ %i.e, %bb.a ], [ %i.f, %bb.b ], [ %i.ax, %mbedtls_mpi_shift_r.exit39 ], [ -141, %bb.c ], [ %i.ad, %bb.p ], [ %i.aj, %bb.r ], [ %i.az, %bb.w ], [ -141, %bb.e ], [ -141, %bb.k ], [ -141, %bb.i ]
  %i.ba = load ptr, ptr %3, align 8, !tbaa !23    ; 2 uses
  %.not.i40 = icmp eq ptr %i.ba, null
  br i1 %.not.i40, label %mbedtls_mpi_free.exit, label %bb.x

bb.x:                                             ; preds = %mbedtls_mpi_grow.exit
  %i.bb = load i16, ptr %i.b, align 2, !tbaa !20
  %i.bc = zext i16 %i.bb to i64
  %i.bd = shl nuw nsw i64 %i.bc, 3
  call void @mbedtls_zeroize_and_free(ptr noundef nonnull %i.ba, i64 noundef %i.bd) #17
  br label %mbedtls_mpi_free.exit

mbedtls_mpi_free.exit:                            ; preds = %mbedtls_mpi_grow.exit, %bb.x
  %i.be = load ptr, ptr %4, align 8, !tbaa !23    ; 2 uses
  %.not.i41 = icmp eq ptr %i.be, null
  br i1 %.not.i41, label %mbedtls_mpi_free.exit42, label %bb.y

bb.y:                                             ; preds = %mbedtls_mpi_free.exit
  %i.bf = load i16, ptr %i.d, align 2, !tbaa !20
  %i.bg = zext i16 %i.bf to i64
  %i.bh = shl nuw nsw i64 %i.bg, 3
  call void @mbedtls_zeroize_and_free(ptr noundef nonnull %i.be, i64 noundef %i.bh) #17
  br label %mbedtls_mpi_free.exit42

mbedtls_mpi_free.exit42:                          ; preds = %mbedtls_mpi_free.exit, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  ret i32 %.0
}

declare i64 @mbedtls_mpi_core_check_zero_ct(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden i32 @mbedtls_mpi_fill_random(ptr nofree noundef captures(address_is_null) %0, i64 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = lshr i64 %1, 3
  %i.b = and i64 %1, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = zext i1 %i.c to i64
  %i.e = add nuw nsw i64 %i.a, %i.d               ; 5 uses
  %i.f = icmp eq i64 %1, 0
  br i1 %i.f, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq ptr %0, null
  br i1 %i.g, label %mbedtls_mpi_resize_clear.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %0, align 8, !tbaa !23     ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.j = load i16, ptr %i.i, align 2, !tbaa !20
  %i.k = zext i16 %i.j to i64
  %i.l = shl nuw nsw i64 %i.k, 3
  tail call void @mbedtls_zeroize_and_free(ptr noundef nonnull %i.h, i64 noundef %i.l) #17
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 1, ptr %i.m, align 8, !tbaa !21
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i16 0, ptr %i.n, align 2, !tbaa !20
  store ptr null, ptr %0, align 8, !tbaa !23
  br label %mbedtls_mpi_resize_clear.exit

bb.f:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 3 uses
  %i.p = load i16, ptr %i.o, align 2, !tbaa !20
  %i.q = zext i16 %i.p to i64                     ; 2 uses
  %i.r = icmp eq i64 %i.e, %i.q
  %i.s = load ptr, ptr %0, align 8, !tbaa !23     ; 3 uses
  br i1 %i.r, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.t = shl nuw nsw i64 %i.e, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.s, i8 0, i64 %i.t, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 1, ptr %i.u, align 8, !tbaa !21
  br label %bb.l

bb.h:                                             ; preds = %bb.f
  %.not.i11.i = icmp eq ptr %i.s, null
  br i1 %.not.i11.i, label %mbedtls_mpi_free.exit12.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = shl nuw nsw i64 %i.q, 3
  tail call void @mbedtls_zeroize_and_free(ptr noundef nonnull %i.s, i64 noundef %i.v) #17
  br label %mbedtls_mpi_free.exit12.i

mbedtls_mpi_free.exit12.i:                        ; preds = %bb.i, %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 1, ptr %i.w, align 8, !tbaa !21
  store i16 0, ptr %i.o, align 2, !tbaa !20
  store ptr null, ptr %0, align 8, !tbaa !23
  %i.x = icmp samesign ugt i64 %i.e, 10000
  br i1 %i.x, label %mbedtls_mpi_resize_clear.exit, label %bb.j

bb.j:                                             ; preds = %mbedtls_mpi_free.exit12.i
  %i.y = tail call noalias ptr @calloc(i64 noundef range(i64 0, 2305843009213693953) %i.e, i64 noundef 8) #18 ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %mbedtls_mpi_resize_clear.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aa = trunc nuw nsw i64 %i.e to i16
  store i16 %i.aa, ptr %i.o, align 2, !tbaa !20
  store ptr %i.y, ptr %0, align 8, !tbaa !23
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.g
  %i.ab = load ptr, ptr %0, align 8, !tbaa !23
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !20
  %i.ae = zext i16 %i.ad to i64
  %i.af = tail call i32 @mbedtls_mpi_core_fill_random(ptr noundef %i.ab, i64 noundef %i.ae, i64 noundef %1, ptr noundef %2, ptr noundef %3) #17
  br label %mbedtls_mpi_resize_clear.exit

mbedtls_mpi_resize_clear.exit:                    ; preds = %bb.b, %bb.e, %bb.j, %mbedtls_mpi_free.exit12.i, %bb.l
  %.011 = phi i32 [ -141, %bb.j ], [ %i.af, %bb.l ], [ -141, %mbedtls_mpi_free.exit12.i ], [ 0, %bb.e ], [ 0, %bb.b ]
  ret i32 %.011
}

declare i32 @mbedtls_mpi_core_fill_random(ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden i32 @mbedtls_mpi_random(ptr nofree noundef captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp slt i64 %1, 0
  br i1 %i.a, label %mbedtls_mpi_resize_clear.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.c = load i16, ptr %i.b, align 2, !tbaa !20   ; 6 uses
  %.not44.i.i = icmp eq i16 %i.c, 0               ; 2 uses
  br i1 %.not44.i.i, label %.lr.ph51.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.d = zext i16 %i.c to i64
  %i.e = load ptr, ptr %2, align 8, !tbaa !23
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i.i
  %.03545.i.i = phi i64 [ %i.d, %.lr.ph.i.i ], [ %i.i, %bb.d ] ; 3 uses
  %i.f = getelementptr [8 x i8], ptr %i.e, i64 %.03545.i.i
  %i.g = getelementptr i8, ptr %i.f, i64 -8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !26
  %.not39.i.i = icmp eq i64 %i.h, 0
  br i1 %.not39.i.i, label %bb.d, label %.lr.ph51.i.i

bb.d:                                             ; preds = %bb.c
  %i.i = add nsw i64 %.03545.i.i, -1              ; 2 uses
  %.not.i.i = icmp eq i64 %i.i, 0
  br i1 %.not.i.i, label %.lr.ph51.i.i, label %bb.c, !llvm.loop !1

.lr.ph51.i.i:                                     ; preds = %bb.d, %bb.c, %bb.b
  %.035.lcssa.i.i = phi i64 [ 0, %bb.b ], [ %.03545.i.i, %bb.c ], [ 0, %bb.d ] ; 4 uses
  %.not41.i.i = icmp ne i64 %1, 0
  %spec.select.i = zext i1 %.not41.i.i to i64     ; 3 uses
  %i.j = or i64 %.035.lcssa.i.i, %spec.select.i
  %or.cond.i.i = icmp eq i64 %i.j, 0
  br i1 %or.cond.i.i, label %mbedtls_mpi_resize_clear.exit, label %bb.e

bb.e:                                             ; preds = %.lr.ph51.i.i
  %i.k = icmp ugt i64 %.035.lcssa.i.i, %spec.select.i
  br i1 %i.k, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.m = load i16, ptr %i.l, align 8, !tbaa !21
  %i.n = sext i16 %i.m to i32
  br label %mbedtls_mpi_cmp_int.exit

bb.g:                                             ; preds = %bb.e
  %i.o = icmp samesign ult i64 %.035.lcssa.i.i, %spec.select.i
  br i1 %i.o, label %mbedtls_mpi_resize_clear.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.q = load i16, ptr %i.p, align 8, !tbaa !21   ; 2 uses
  %or.cond = icmp slt i16 %i.q, 0
  %5 = icmp eq i64 %.035.lcssa.i.i, 0
  %or.cond33 = or i1 %or.cond, %5
  br i1 %or.cond33, label %mbedtls_mpi_resize_clear.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = load ptr, ptr %2, align 8, !tbaa !23
  %i.s = load i64, ptr %i.r, align 8, !tbaa !26
  %i.t = icmp ugt i64 %i.s, %1
  br i1 %i.t, label %bb.j, label %mbedtls_mpi_resize_clear.exit

bb.j:                                             ; preds = %bb.i
  %i.u = zext nneg i16 %i.q to i32
  br label %mbedtls_mpi_cmp_int.exit

mbedtls_mpi_cmp_int.exit:                         ; preds = %bb.f, %bb.j
  %.036.i.i = phi i32 [ %i.u, %bb.j ], [ %i.n, %bb.f ]
  %i.v = icmp slt i32 %.036.i.i, 1
  br i1 %i.v, label %mbedtls_mpi_resize_clear.exit, label %mbedtls_mpi_cmp_int.exit.thread17

mbedtls_mpi_cmp_int.exit.thread17:                ; preds = %mbedtls_mpi_cmp_int.exit
  %i.w = zext i16 %i.c to i64                     ; 2 uses
  br i1 %.not44.i.i, label %bb.k, label %bb.n

bb.k:                                             ; preds = %mbedtls_mpi_cmp_int.exit.thread17
  %.pre23 = load ptr, ptr %0, align 8, !tbaa !23  ; 2 uses
  %.not.i.i15 = icmp eq ptr %.pre23, null
  br i1 %.not.i.i15, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.y = load i16, ptr %i.x, align 2, !tbaa !20
  %i.z = zext i16 %i.y to i64
  %i.aa = shl nuw nsw i64 %i.z, 3
  tail call void @mbedtls_zeroize_and_free(ptr noundef nonnull %.pre23, i64 noundef %i.aa) #17
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 1, ptr %i.ab, align 8, !tbaa !21
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i16 0, ptr %i.ac, align 2, !tbaa !20
  store ptr null, ptr %0, align 8, !tbaa !23
  br label %bb.t

bb.n:                                             ; preds = %mbedtls_mpi_cmp_int.exit.thread17
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 3 uses
  %i.ae = load i16, ptr %i.ad, align 2, !tbaa !20 ; 2 uses
  %i.af = zext i16 %i.ae to i64
  %i.ag = icmp eq i16 %i.c, %i.ae
  %i.ah = load ptr, ptr %0, align 8, !tbaa !23    ; 3 uses
  br i1 %i.ag, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ai = shl nuw nsw i64 %i.w, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ah, i8 0, i64 %i.ai, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 1, ptr %i.aj, align 8, !tbaa !21
  %.pre = load ptr, ptr %0, align 8, !tbaa !23
  br label %bb.t

bb.p:                                             ; preds = %bb.n
  %.not.i11.i = icmp eq ptr %i.ah, null
  br i1 %.not.i11.i, label %mbedtls_mpi_free.exit12.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ak = shl nuw nsw i64 %i.af, 3
  tail call void @mbedtls_zeroize_and_free(ptr noundef nonnull %i.ah, i64 noundef %i.ak) #17
  br label %mbedtls_mpi_free.exit12.i

mbedtls_mpi_free.exit12.i:                        ; preds = %bb.q, %bb.p
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 1, ptr %i.al, align 8, !tbaa !21
  store i16 0, ptr %i.ad, align 2, !tbaa !20
  store ptr null, ptr %0, align 8, !tbaa !23
  %i.am = icmp ugt i16 %i.c, 10000
  br i1 %i.am, label %mbedtls_mpi_resize_clear.exit, label %bb.r

bb.r:                                             ; preds = %mbedtls_mpi_free.exit12.i
  %i.an = tail call noalias ptr @calloc(i64 noundef range(i64 0, 2305843009213693953) %i.w, i64 noundef 8) #18 ; 3 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %mbedtls_mpi_resize_clear.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  store i16 %i.c, ptr %i.ad, align 2, !tbaa !20
  store ptr %i.an, ptr %0, align 8, !tbaa !23
  br label %bb.t

bb.t:                                             ; preds = %bb.m, %bb.o, %bb.s
  %i.ap = phi ptr [ null, %bb.m ], [ %.pre, %bb.o ], [ %i.an, %bb.s ]
  %i.aq = load ptr, ptr %2, align 8, !tbaa !23
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.as = load i16, ptr %i.ar, align 2, !tbaa !20
  %i.at = zext i16 %i.as to i64
  %i.au = tail call i32 @mbedtls_mpi_core_random(ptr noundef %i.ap, i64 noundef %1, ptr noundef %i.aq, i64 noundef %i.at, ptr noundef %3, ptr noundef %4) #17
  br label %mbedtls_mpi_resize_clear.exit

mbedtls_mpi_resize_clear.exit:                    ; preds = %bb.i, %bb.g, %bb.h, %.lr.ph51.i.i, %bb.r, %mbedtls_mpi_free.exit12.i, %bb.t, %mbedtls_mpi_cmp_int.exit, %bb.a
  %.1 = phi i32 [ -135, %mbedtls_mpi_cmp_int.exit ], [ -135, %bb.a ], [ %i.au, %bb.t ], [ -141, %bb.r ], [ -141, %mbedtls_mpi_free.exit12.i ], [ -135, %bb.h ], [ -135, %.lr.ph51.i.i ], [ -135, %bb.g ], [ -135, %bb.i ]
  ret i32 %.1
}

declare i32 @mbedtls_mpi_core_random(ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden range(i32 -141, 1) i32 @mbedtls_mpi_inv_mod_odd(ptr nofree noundef captures(address) %0, ptr nofree noundef readonly captures(address) %1, ptr nofree noundef readonly captures(address) %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.mbedtls_mpi, align 8        ; 10 uses
  %4 = alloca %struct.mbedtls_mpi, align 8        ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i16 1, ptr %i.a, align 8, !tbaa !21
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 10 ; 2 uses
  store i16 0, ptr %i.b, align 2, !tbaa !20
  store ptr null, ptr %3, align 8, !tbaa !23
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i16 1, ptr %i.c, align 8, !tbaa !21
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 10 ; 3 uses
  store i16 0, ptr %i.d, align 2, !tbaa !20
  store ptr null, ptr %4, align 8, !tbaa !23
  %i.e = call i32 @mbedtls_mpi_mod_mpi(ptr noundef nonnull %3, ptr noundef %1, ptr noundef %2) ; 2 uses
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.b, label %mbedtls_mpi_cmp_int.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.f = call i32 @mbedtls_mpi_gcd_modinv_odd(ptr noundef nonnull %4, ptr noundef nonnull %3, ptr noundef nonnull %3, ptr noundef %2) ; 2 uses
  %.not6 = icmp eq i32 %i.f, 0
  br i1 %.not6, label %bb.c, label %mbedtls_mpi_cmp_int.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.g = load i16, ptr %i.d, align 2, !tbaa !20   ; 2 uses
  %.not44.i.i = icmp eq i16 %i.g, 0
  br i1 %.not44.i.i, label %mbedtls_mpi_cmp_int.exit.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c
  %i.h = zext i16 %i.g to i64
  %i.i = load ptr, ptr %4, align 8, !tbaa !23     ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.i.i
  %.03545.i.i = phi i64 [ %i.h, %.lr.ph.i.i ], [ %i.m, %bb.e ] ; 3 uses
  %i.j = getelementptr [8 x i8], ptr %i.i, i64 %.03545.i.i
  %i.k = getelementptr i8, ptr %i.j, i64 -8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !26
  %.not39.i.i = icmp eq i64 %i.l, 0
  br i1 %.not39.i.i, label %bb.e, label %.lr.ph51.i.i

bb.e:                                             ; preds = %bb.d
  %i.m = add nsw i64 %.03545.i.i, -1              ; 2 uses
  %.not.i.i = icmp eq i64 %i.m, 0
  br i1 %.not.i.i, label %mbedtls_mpi_cmp_int.exit.thread, label %bb.d, !llvm.loop !1

.lr.ph51.i.i:                                     ; preds = %bb.d
  %i.n = icmp ugt i64 %.03545.i.i, 1
  %i.o = load i16, ptr %i.c, align 8, !tbaa !21   ; 4 uses
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph51.i.i
  %i.p = sext i16 %i.o to i32
  br label %mbedtls_mpi_cmp_int.exit

bb.g:                                             ; preds = %.lr.ph51.i.i
  %or.cond = icmp slt i16 %i.o, 0
  br i1 %or.cond, label %mbedtls_mpi_cmp_int.exit.thread, label %.preheader.i.i.preheader

.preheader.i.i.preheader:                         ; preds = %bb.g
  %i.q = load i64, ptr %i.i, align 8, !tbaa !26   ; 2 uses
  %i.r = icmp ugt i64 %i.q, 1
  br i1 %i.r, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.preheader.i.i.preheader
  %i.s = zext nneg i16 %i.o to i32
  br label %mbedtls_mpi_cmp_int.exit

bb.i:                                             ; preds = %.preheader.i.i.preheader
  %i.t = icmp eq i64 %i.q, 0
  br i1 %i.t, label %bb.j, label %mbedtls_mpi_cmp_int.exit.thread15

bb.j:                                             ; preds = %bb.i
  %i.u = zext nneg i16 %i.o to i32
  %i.v = sub nsw i32 0, %i.u
  br label %mbedtls_mpi_cmp_int.exit

mbedtls_mpi_cmp_int.exit:                         ; preds = %bb.f, %bb.h, %bb.j
  %.036.i.i = phi i32 [ %i.v, %bb.j ], [ %i.p, %bb.f ], [ %i.s, %bb.h ]
  %.not7 = icmp eq i32 %.036.i.i, 0
  br i1 %.not7, label %mbedtls_mpi_cmp_int.exit.thread15, label %mbedtls_mpi_cmp_int.exit.thread

mbedtls_mpi_cmp_int.exit.thread15:                ; preds = %bb.i, %mbedtls_mpi_cmp_int.exit
  %i.w = call i32 @mbedtls_mpi_copy(ptr noundef %0, ptr noundef nonnull %3)
  br label %mbedtls_mpi_cmp_int.exit.thread

mbedtls_mpi_cmp_int.exit.thread:                  ; preds = %bb.e, %bb.g, %bb.c, %mbedtls_mpi_cmp_int.exit, %mbedtls_mpi_cmp_int.exit.thread15, %bb.b, %bb.a
  %.0 = phi i32 [ %i.e, %bb.a ], [ %i.f, %bb.b ], [ %i.w, %mbedtls_mpi_cmp_int.exit.thread15 ], [ -14, %mbedtls_mpi_cmp_int.exit ], [ -14, %bb.g ], [ -14, %bb.c ], [ -14, %bb.e ]
  %i.x = load ptr, ptr %3, align 8, !tbaa !23     ; 2 uses
  %.not.i = icmp eq ptr %i.x, null
  br i1 %.not.i, label %mbedtls_mpi_free.exit, label %bb.k

bb.k:                                             ; preds = %mbedtls_mpi_cmp_int.exit.thread
  %i.y = load i16, ptr %i.b, align 2, !tbaa !20
  %i.z = zext i16 %i.y to i64
  %i.aa = shl nuw nsw i64 %i.z, 3
  call void @mbedtls_zeroize_and_free(ptr noundef nonnull %i.x, i64 noundef %i.aa) #17
  br label %mbedtls_mpi_free.exit

mbedtls_mpi_free.exit:                            ; preds = %mbedtls_mpi_cmp_int.exit.thread, %bb.k
  %i.ab = load ptr, ptr %4, align 8, !tbaa !23    ; 2 uses
  %.not.i8 = icmp eq ptr %i.ab, null
  br i1 %.not.i8, label %mbedtls_mpi_free.exit9, label %bb.l

bb.l:                                             ; preds = %mbedtls_mpi_free.exit
  %i.ac = load i16, ptr %i.d, align 2, !tbaa !20
  %i.ad = zext i16 %i.ac to i64
  %i.ae = shl nuw nsw i64 %i.ad, 3
  call void @mbedtls_zeroize_and_free(ptr noundef nonnull %i.ab, i64 noundef %i.ae) #17
  br label %mbedtls_mpi_free.exit9

mbedtls_mpi_free.exit9:                           ; preds = %mbedtls_mpi_free.exit, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden range(i32 -141, 1) i32 @mbedtls_mpi_inv_mod_even_in_range(ptr nofree noundef captures(address) %0, ptr nofree noundef readonly captures(address) %1, ptr nofree noundef readonly captures(address) %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.mbedtls_mpi, align 8        ; 6 uses
  %i.a = alloca [1 x i64], align 8                ; 4 uses
  %4 = alloca %struct.mbedtls_mpi, align 8        ; 14 uses
  %5 = alloca %struct.mbedtls_mpi, align 8        ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i16 1, ptr %i.b, align 8, !tbaa !21
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 10 ; 2 uses
  store i16 0, ptr %i.c, align 2, !tbaa !20
  store ptr null, ptr %4, align 8, !tbaa !23
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i16 1, ptr %i.d, align 8, !tbaa !21
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 10 ; 3 uses
  store i16 0, ptr %i.e, align 2, !tbaa !20
  store ptr null, ptr %5, align 8, !tbaa !23
  %i.f = call i32 @mbedtls_mpi_mod_mpi(ptr noundef nonnull %4, ptr noundef %2, ptr noundef %1) ; 2 uses
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.b, label %mbedtls_mpi_cmp_int.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.g = call i32 @mbedtls_mpi_gcd_modinv_odd(ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef nonnull %4, ptr noundef %1) ; 2 uses
  %.not12 = icmp eq i32 %i.g, 0
  br i1 %.not12, label %bb.c, label %mbedtls_mpi_cmp_int.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.h = load i16, ptr %i.e, align 2, !tbaa !20   ; 2 uses
  %.not44.i.i = icmp eq i16 %i.h, 0
  br i1 %.not44.i.i, label %mbedtls_mpi_cmp_int.exit.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c
  %i.i = zext i16 %i.h to i64
  %i.j = load ptr, ptr %5, align 8, !tbaa !23     ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.i.i
  %.03545.i.i = phi i64 [ %i.i, %.lr.ph.i.i ], [ %i.n, %bb.e ] ; 3 uses
  %i.k = getelementptr [8 x i8], ptr %i.j, i64 %.03545.i.i
  %i.l = getelementptr i8, ptr %i.k, i64 -8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !26
  %.not39.i.i = icmp eq i64 %i.m, 0
  br i1 %.not39.i.i, label %bb.e, label %.lr.ph51.i.i

bb.e:                                             ; preds = %bb.d
  %i.n = add nsw i64 %.03545.i.i, -1              ; 2 uses
  %.not.i.i = icmp eq i64 %i.n, 0
  br i1 %.not.i.i, label %mbedtls_mpi_cmp_int.exit.thread, label %bb.d, !llvm.loop !1

.lr.ph51.i.i:                                     ; preds = %bb.d
  %i.o = icmp ugt i64 %.03545.i.i, 1
  %i.p = load i16, ptr %i.d, align 8, !tbaa !21   ; 4 uses
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph51.i.i
  %i.q = sext i16 %i.p to i32
  br label %mbedtls_mpi_cmp_int.exit

bb.g:                                             ; preds = %.lr.ph51.i.i
  %or.cond = icmp slt i16 %i.p, 0
  br i1 %or.cond, label %mbedtls_mpi_cmp_int.exit.thread, label %.preheader.i.i.preheader

.preheader.i.i.preheader:                         ; preds = %bb.g
  %i.r = load i64, ptr %i.j, align 8, !tbaa !26   ; 2 uses
  %i.s = icmp ugt i64 %i.r, 1
  br i1 %i.s, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.preheader.i.i.preheader
  %i.t = zext nneg i16 %i.p to i32
  br label %mbedtls_mpi_cmp_int.exit

bb.i:                                             ; preds = %.preheader.i.i.preheader
  %i.u = icmp eq i64 %i.r, 0
  br i1 %i.u, label %bb.j, label %mbedtls_mpi_cmp_int.exit.thread24

bb.j:                                             ; preds = %bb.i
  %i.v = zext nneg i16 %i.p to i32
  %i.w = sub nsw i32 0, %i.v
  br label %mbedtls_mpi_cmp_int.exit

mbedtls_mpi_cmp_int.exit:                         ; preds = %bb.f, %bb.h, %bb.j
  %.036.i.i = phi i32 [ %i.w, %bb.j ], [ %i.q, %bb.f ], [ %i.t, %bb.h ]
  %.not13 = icmp eq i32 %.036.i.i, 0
  br i1 %.not13, label %mbedtls_mpi_cmp_int.exit.thread24, label %mbedtls_mpi_cmp_int.exit.thread

mbedtls_mpi_cmp_int.exit.thread24:                ; preds = %bb.i, %mbedtls_mpi_cmp_int.exit
  %i.x = call i32 @mbedtls_mpi_mul_mpi(ptr noundef nonnull %4, ptr noundef nonnull %4, ptr noundef %2) ; 2 uses
  %.not14 = icmp eq i32 %i.x, 0
  br i1 %.not14, label %bb.k, label %mbedtls_mpi_cmp_int.exit.thread

bb.k:                                             ; preds = %mbedtls_mpi_cmp_int.exit.thread24
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i64 1, ptr %i.a, align 8, !tbaa !26
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i16 1, ptr %i.y, align 8, !tbaa !21
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 10
  store i16 1, ptr %i.z, align 2, !tbaa !20
  store ptr %i.a, ptr %3, align 8, !tbaa !23
  %i.aa = call fastcc range(i32 -141, 1) i32 @add_sub_mpi(ptr noundef nonnull %4, ptr noundef nonnull readonly %4, ptr noundef nonnull readonly %3, i32 noundef -1) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  %.not15 = icmp eq i32 %i.aa, 0
  br i1 %.not15, label %bb.l, label %mbedtls_mpi_cmp_int.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.ab = call i32 @mbedtls_mpi_div_mpi(ptr noundef nonnull %5, ptr noundef null, ptr noundef nonnull %4, ptr noundef %1) ; 2 uses
  %.not16 = icmp eq i32 %i.ab, 0
  br i1 %.not16, label %bb.m, label %mbedtls_mpi_cmp_int.exit.thread

bb.m:                                             ; preds = %bb.l
  %i.ac = call fastcc range(i32 -141, 1) i32 @add_sub_mpi(ptr noundef %0, ptr noundef readonly %2, ptr noundef nonnull readonly %5, i32 noundef -1)
  br label %mbedtls_mpi_cmp_int.exit.thread

mbedtls_mpi_cmp_int.exit.thread:                  ; preds = %bb.e, %bb.g, %bb.c, %mbedtls_mpi_cmp_int.exit, %bb.m, %bb.l, %bb.k, %mbedtls_mpi_cmp_int.exit.thread24, %bb.b, %bb.a
  %.0 = phi i32 [ %i.f, %bb.a ], [ %i.g, %bb.b ], [ %i.ac, %bb.m ], [ %i.x, %mbedtls_mpi_cmp_int.exit.thread24 ], [ %i.aa, %bb.k ], [ %i.ab, %bb.l ], [ -14, %mbedtls_mpi_cmp_int.exit ], [ -14, %bb.g ], [ -14, %bb.c ], [ -14, %bb.e ]
  %i.ad = load ptr, ptr %4, align 8, !tbaa !23    ; 2 uses
  %.not.i = icmp eq ptr %i.ad, null
  br i1 %.not.i, label %mbedtls_mpi_free.exit, label %bb.n

bb.n:                                             ; preds = %mbedtls_mpi_cmp_int.exit.thread
  %i.ae = load i16, ptr %i.c, align 2, !tbaa !20
  %i.af = zext i16 %i.ae to i64
  %i.ag = shl nuw nsw i64 %i.af, 3
  call void @mbedtls_zeroize_and_free(ptr noundef nonnull %i.ad, i64 noundef %i.ag) #17
  br label %mbedtls_mpi_free.exit

mbedtls_mpi_free.exit:                            ; preds = %mbedtls_mpi_cmp_int.exit.thread, %bb.n
  %i.ah = load ptr, ptr %5, align 8, !tbaa !23    ; 2 uses
  %.not.i17 = icmp eq ptr %i.ah, null
  br i1 %.not.i17, label %mbedtls_mpi_free.exit18, label %bb.o

bb.o:                                             ; preds = %mbedtls_mpi_free.exit
  %i.ai = load i16, ptr %i.e, align 2, !tbaa !20
  %i.aj = zext i16 %i.ai to i64
  %i.ak = shl nuw nsw i64 %i.aj, 3
  call void @mbedtls_zeroize_and_free(ptr noundef nonnull %i.ah, i64 noundef %i.ak) #17
  br label %mbedtls_mpi_free.exit18

mbedtls_mpi_free.exit18:                          ; preds = %mbedtls_mpi_free.exit, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden range(i32 -141, 1) i32 @mbedtls_mpi_inv_mod(ptr nofree noundef captures(address) %0, ptr nofree noundef readonly captures(address) %1, ptr nofree noundef readonly captures(address) %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.mbedtls_mpi, align 8        ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.b = load i16, ptr %i.a, align 2, !tbaa !20   ; 2 uses
  %.not44.i.i = icmp eq i16 %i.b, 0
  br i1 %.not44.i.i, label %mbedtls_mpi_cmp_int.exit.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.c = zext i16 %i.b to i64
  %i.d = load ptr, ptr %2, align 8, !tbaa !23     ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i
  %.03545.i.i = phi i64 [ %i.c, %.lr.ph.i.i ], [ %i.h, %bb.c ] ; 3 uses
  %i.e = getelementptr [8 x i8], ptr %i.d, i64 %.03545.i.i
  %i.f = getelementptr i8, ptr %i.e, i64 -8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !26
  %.not39.i.i = icmp eq i64 %i.g, 0
  br i1 %.not39.i.i, label %bb.c, label %.lr.ph51.i.i

bb.c:                                             ; preds = %bb.b
  %i.h = add nsw i64 %.03545.i.i, -1              ; 2 uses
  %.not.i.i = icmp eq i64 %i.h, 0
  br i1 %.not.i.i, label %mbedtls_mpi_cmp_int.exit.thread, label %bb.b, !llvm.loop !1

.lr.ph51.i.i:                                     ; preds = %bb.b
  %i.i = icmp ugt i64 %.03545.i.i, 1
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = load i16, ptr %i.j, align 8, !tbaa !21   ; 3 uses
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph51.i.i
  %i.l = sext i16 %i.k to i32
  br label %mbedtls_mpi_cmp_int.exit

bb.e:                                             ; preds = %.lr.ph51.i.i
  %or.cond = icmp slt i16 %i.k, 0
  br i1 %or.cond, label %mbedtls_mpi_cmp_int.exit.thread, label %.preheader.i.i.preheader

.preheader.i.i.preheader:                         ; preds = %bb.e
  %i.m = load i64, ptr %i.d, align 8, !tbaa !26
  %i.n = icmp ugt i64 %i.m, 1
  br i1 %i.n, label %bb.f, label %mbedtls_mpi_cmp_int.exit.thread

bb.f:                                             ; preds = %.preheader.i.i.preheader
  %i.o = zext nneg i16 %i.k to i32
  br label %mbedtls_mpi_cmp_int.exit

mbedtls_mpi_cmp_int.exit:                         ; preds = %bb.d, %bb.f
  %.036.i.i = phi i32 [ %i.o, %bb.f ], [ %i.l, %bb.d ]
  %i.p = icmp slt i32 %.036.i.i, 1
  br i1 %i.p, label %mbedtls_mpi_cmp_int.exit.thread, label %mbedtls_mpi_get_bit.exit

mbedtls_mpi_get_bit.exit:                         ; preds = %mbedtls_mpi_cmp_int.exit
  %i.q = load i64, ptr %i.d, align 8, !tbaa !26
  %i.r = and i64 %i.q, 1
  %.not = icmp eq i64 %i.r, 0
  br i1 %.not, label %mbedtls_mpi_get_bit.exit.thread, label %bb.g

bb.g:                                             ; preds = %mbedtls_mpi_get_bit.exit
  %i.s = tail call i32 @mbedtls_mpi_inv_mod_odd(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2)
  br label %mbedtls_mpi_cmp_int.exit.thread

mbedtls_mpi_get_bit.exit.thread:                  ; preds = %mbedtls_mpi_get_bit.exit
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.u = load i16, ptr %i.t, align 2, !tbaa !20
  %.not.i10.not = icmp eq i16 %i.u, 0
  br i1 %.not.i10.not, label %mbedtls_mpi_cmp_int.exit.thread, label %mbedtls_mpi_get_bit.exit12

mbedtls_mpi_get_bit.exit12:                       ; preds = %mbedtls_mpi_get_bit.exit.thread
  %i.v = load ptr, ptr %1, align 8, !tbaa !23
  %i.w = load i64, ptr %i.v, align 8, !tbaa !26
  %i.x = and i64 %i.w, 1
  %.not9 = icmp eq i64 %i.x, 0
  br i1 %.not9, label %mbedtls_mpi_cmp_int.exit.thread, label %bb.h

bb.h:                                             ; preds = %mbedtls_mpi_get_bit.exit12
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i16 1, ptr %i.y, align 8, !tbaa !21
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 10 ; 3 uses
  store i16 0, ptr %i.z, align 2, !tbaa !20
  store ptr null, ptr %3, align 8, !tbaa !23
  %i.aa = call i32 @mbedtls_mpi_mod_mpi(ptr noundef nonnull %3, ptr noundef nonnull readonly %1, ptr noundef nonnull readonly %2) ; 2 uses
  %.not.i13 = icmp eq i32 %i.aa, 0
  br i1 %.not.i13, label %bb.i, label %.mbedtls_mpi_lset.exit_crit_edge.i

.mbedtls_mpi_lset.exit_crit_edge.i:               ; preds = %bb.h
  %.pre.i = load ptr, ptr %3, align 8, !tbaa !23
  br label %mbedtls_mpi_lset.exit.i

bb.i:                                             ; preds = %bb.h
  %i.ab = load i16, ptr %i.z, align 2, !tbaa !20  ; 2 uses
  %.not44.i.i.i = icmp eq i16 %i.ab, 0
  %.pre21.i = load ptr, ptr %3, align 8, !tbaa !23 ; 9 uses
  br i1 %.not44.i.i.i, label %mbedtls_mpi_lset.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.i
  %i.ac = zext i16 %i.ab to i64                   ; 7 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %.lr.ph.i.i.i
  %.03545.i.i.i = phi i64 [ %i.ac, %.lr.ph.i.i.i ], [ %i.ag, %bb.k ] ; 3 uses
  %i.ad = getelementptr [8 x i8], ptr %.pre21.i, i64 %.03545.i.i.i
  %i.ae = getelementptr i8, ptr %i.ad, i64 -8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !26
  %.not39.i.i.i = icmp eq i64 %i.af, 0
  br i1 %.not39.i.i.i, label %bb.k, label %.lr.ph51.i.i.i

bb.k:                                             ; preds = %bb.j
  %i.ag = add nsw i64 %.03545.i.i.i, -1           ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.ag, 0
  br i1 %.not.i.i.i, label %mbedtls_mpi_lset.exit.thread.i, label %bb.j, !llvm.loop !1

.lr.ph51.i.i.i:                                   ; preds = %bb.j
  %i.ah = icmp ugt i64 %.03545.i.i.i, 1
  %i.ai = load i16, ptr %i.y, align 8, !tbaa !21  ; 4 uses
  br i1 %i.ah, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph51.i.i.i
  %i.aj = sext i16 %i.ai to i32
  br label %mbedtls_mpi_cmp_int.exit.i

bb.m:                                             ; preds = %.lr.ph51.i.i.i
  %or.cond.i = icmp slt i16 %i.ai, 0
  br i1 %or.cond.i, label %mbedtls_mpi_lset.exit.thread.i, label %.preheader.i.i.preheader.i

.preheader.i.i.preheader.i:                       ; preds = %bb.m
  %i.ak = load i64, ptr %.pre21.i, align 8, !tbaa !26 ; 2 uses
  %i.al = icmp ugt i64 %i.ak, 1
  br i1 %i.al, label %mbedtls_mpi_cmp_int.exit.thread.i, label %bb.n

mbedtls_mpi_cmp_int.exit.thread.i:                ; preds = %.preheader.i.i.preheader.i
  %i.am = zext nneg i16 %i.ai to i32
  br label %bb.p

bb.n:                                             ; preds = %.preheader.i.i.preheader.i
  %i.an = icmp eq i64 %i.ak, 0
  br i1 %i.an, label %bb.o, label %.thread17.i

bb.o:                                             ; preds = %bb.n
  %i.ao = zext nneg i16 %i.ai to i32
  %i.ap = sub nsw i32 0, %i.ao
  br label %mbedtls_mpi_cmp_int.exit.i

mbedtls_mpi_cmp_int.exit.i:                       ; preds = %bb.o, %bb.l
  %.036.i.i.i = phi i32 [ %i.ap, %bb.o ], [ %i.aj, %bb.l ] ; 2 uses
  %i.aq = icmp slt i32 %.036.i.i.i, 0
  br i1 %i.aq, label %mbedtls_mpi_lset.exit.thread.i, label %bb.p

bb.p:                                             ; preds = %mbedtls_mpi_cmp_int.exit.i, %mbedtls_mpi_cmp_int.exit.thread.i
  %.036.i.i32.i = phi i32 [ %i.am, %mbedtls_mpi_cmp_int.exit.thread.i ], [ %.036.i.i.i, %mbedtls_mpi_cmp_int.exit.i ]
  %i.ar = icmp eq i32 %.036.i.i32.i, 0
  br i1 %i.ar, label %.thread17.i, label %bb.v

.thread17.i:                                      ; preds = %bb.p, %bb.n
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 2 uses
  %i.at = load i16, ptr %i.as, align 2, !tbaa !20 ; 2 uses
  %i.au = icmp eq i16 %i.at, 0
  br i1 %i.au, label %bb.q, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.thread17.i
  %.pre.i.i = load ptr, ptr %0, align 8, !tbaa !23
  %i.av = zext i16 %i.at to i64
  %i.aw = shl nuw nsw i64 %i.av, 3
  br label %bb.u

bb.q:                                             ; preds = %.thread17.i
  %i.ax = call noalias dereferenceable_or_null(8) ptr @calloc(i64 noundef 1, i64 noundef 8) #18 ; 3 uses
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %mbedtls_mpi_lset.exit.thread.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.az = load ptr, ptr %0, align 8, !tbaa !23    ; 2 uses
  %.not.i.i9.i = icmp eq ptr %i.az, null
  br i1 %.not.i.i9.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @mbedtls_zeroize_and_free(ptr noundef nonnull %i.az, i64 noundef 0) #17
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  store i16 1, ptr %i.as, align 2, !tbaa !20
  store ptr %i.ax, ptr %0, align 8, !tbaa !23
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %._crit_edge.i.i
  %i.ba = phi i64 [ %i.aw, %._crit_edge.i.i ], [ 8, %bb.t ]
  %i.bb = phi ptr [ %.pre.i.i, %._crit_edge.i.i ], [ %i.ax, %bb.t ]
  call void @llvm.memset.p0.i64(ptr align 8 %i.bb, i8 0, i64 %i.ba, i1 false)
  %i.bc = load ptr, ptr %0, align 8, !tbaa !23
  store i64 1, ptr %i.bc, align 8, !tbaa !26
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 1, ptr %i.bd, align 8, !tbaa !21
  br label %mbedtls_mpi_lset.exit.thread.i

bb.v:                                             ; preds = %bb.p
  %i.be = call i32 @mbedtls_mpi_inv_mod_even_in_range(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull readonly %2)
  br label %mbedtls_mpi_lset.exit.thread.i

mbedtls_mpi_lset.exit.i:                          ; preds = %bb.i, %.mbedtls_mpi_lset.exit_crit_edge.i
  %i.bf = phi ptr [ %.pre.i, %.mbedtls_mpi_lset.exit_crit_edge.i ], [ %.pre21.i, %bb.i ] ; 2 uses
  %.0.i14 = phi i32 [ %i.aa, %.mbedtls_mpi_lset.exit_crit_edge.i ], [ -14, %bb.i ] ; 2 uses
  %.not.i.i15 = icmp eq ptr %i.bf, null
  br i1 %.not.i.i15, label %mbedtls_mpi_inv_mod_even.exit, label %mbedtls_mpi_lset.exit.i.mbedtls_mpi_lset.exit.thread.i_crit_edge

mbedtls_mpi_lset.exit.i.mbedtls_mpi_lset.exit.thread.i_crit_edge: ; preds = %mbedtls_mpi_lset.exit.i
  %.pre = load i16, ptr %i.z, align 2, !tbaa !20
  %.pre32 = zext i16 %.pre to i64
  br label %mbedtls_mpi_lset.exit.thread.i

mbedtls_mpi_lset.exit.thread.i:                   ; preds = %bb.k, %mbedtls_mpi_lset.exit.i.mbedtls_mpi_lset.exit.thread.i_crit_edge, %bb.v, %bb.u, %bb.q, %mbedtls_mpi_cmp_int.exit.i, %bb.m
  %.pre-phi = phi i64 [ %.pre32, %mbedtls_mpi_lset.exit.i.mbedtls_mpi_lset.exit.thread.i_crit_edge ], [ %i.ac, %bb.m ], [ %i.ac, %bb.v ], [ %i.ac, %bb.u ], [ %i.ac, %bb.q ], [ %i.ac, %mbedtls_mpi_cmp_int.exit.i ], [ %i.ac, %bb.k ]
  %.035.i = phi i32 [ %.0.i14, %mbedtls_mpi_lset.exit.i.mbedtls_mpi_lset.exit.thread.i_crit_edge ], [ -14, %bb.m ], [ %i.be, %bb.v ], [ 0, %bb.u ], [ -141, %bb.q ], [ -14, %mbedtls_mpi_cmp_int.exit.i ], [ -14, %bb.k ]
  %i.bg = phi ptr [ %i.bf, %mbedtls_mpi_lset.exit.i.mbedtls_mpi_lset.exit.thread.i_crit_edge ], [ %.pre21.i, %bb.m ], [ %.pre21.i, %bb.v ], [ %.pre21.i, %bb.u ], [ %.pre21.i, %bb.q ], [ %.pre21.i, %mbedtls_mpi_cmp_int.exit.i ], [ %.pre21.i, %bb.k ]
  %i.bh = shl nuw nsw i64 %.pre-phi, 3
  call void @mbedtls_zeroize_and_free(ptr noundef nonnull %i.bg, i64 noundef %i.bh) #17
  br label %mbedtls_mpi_inv_mod_even.exit

mbedtls_mpi_inv_mod_even.exit:                    ; preds = %mbedtls_mpi_lset.exit.i, %mbedtls_mpi_lset.exit.thread.i
  %.036.i = phi i32 [ %.0.i14, %mbedtls_mpi_lset.exit.i ], [ %.035.i, %mbedtls_mpi_lset.exit.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %mbedtls_mpi_cmp_int.exit.thread

mbedtls_mpi_cmp_int.exit.thread:                  ; preds = %bb.c, %.preheader.i.i.preheader, %bb.e, %mbedtls_mpi_get_bit.exit.thread, %bb.a, %mbedtls_mpi_get_bit.exit12, %mbedtls_mpi_cmp_int.exit, %mbedtls_mpi_inv_mod_even.exit, %bb.g
  %.0 = phi i32 [ -135, %mbedtls_mpi_cmp_int.exit ], [ %i.s, %bb.g ], [ %.036.i, %mbedtls_mpi_inv_mod_even.exit ], [ -14, %mbedtls_mpi_get_bit.exit12 ], [ -135, %bb.a ], [ -135, %bb.e ], [ -14, %mbedtls_mpi_get_bit.exit.thread ], [ -135, %.preheader.i.i.preheader ], [ -135, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden i32 @mbedtls_mpi_is_prime_ext(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.mbedtls_mpi, align 8        ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i16 1, ptr %i.a, align 8, !tbaa !21
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.c = load i16, ptr %i.b, align 2, !tbaa !20   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 10
  store i16 %i.c, ptr %i.d, align 2, !tbaa !20
  %i.e = load ptr, ptr %0, align 8, !tbaa !23     ; 6 uses
  store ptr %i.e, ptr %4, align 8, !tbaa !23
  %.not44.i.i = icmp eq i16 %i.c, 0
  br i1 %.not44.i.i, label %mbedtls_mpi_cmp_int.exit17, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.f = zext i16 %i.c to i64                     ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i
  %.03545.i.i = phi i64 [ %i.f, %.lr.ph.i.i ], [ %i.j, %bb.c ] ; 2 uses
  %i.g = getelementptr [8 x i8], ptr %i.e, i64 %.03545.i.i
  %i.h = getelementptr i8, ptr %i.g, i64 -8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !26
  %.not39.i.i = icmp eq i64 %i.i, 0
  br i1 %.not39.i.i, label %bb.c, label %.lr.ph.i.i9

bb.c:                                             ; preds = %bb.b
  %i.j = add nsw i64 %.03545.i.i, -1              ; 2 uses
  %.not.i.i = icmp eq i64 %i.j, 0
  br i1 %.not.i.i, label %mbedtls_mpi_cmp_int.exit17, label %bb.b, !llvm.loop !1

.lr.ph.i.i9:                                      ; preds = %bb.b, %bb.d
  %.03545.i.i10 = phi i64 [ %i.n, %bb.d ], [ %i.f, %bb.b ] ; 3 uses
  %i.k = getelementptr [8 x i8], ptr %i.e, i64 %.03545.i.i10
  %i.l = getelementptr i8, ptr %i.k, i64 -8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !26
  %.not39.i.i11 = icmp eq i64 %i.m, 0
  br i1 %.not39.i.i11, label %bb.d, label %.lr.ph51.i.i12

bb.d:                                             ; preds = %.lr.ph.i.i9
  %i.n = add nsw i64 %.03545.i.i10, -1            ; 2 uses
  %.not.i.i16 = icmp eq i64 %i.n, 0
  br i1 %.not.i.i16, label %.lr.ph.i.i19.preheader, label %.lr.ph.i.i9, !llvm.loop !1

.lr.ph51.i.i12:                                   ; preds = %.lr.ph.i.i9
  %or.cond.not = icmp eq i64 %.03545.i.i10, 1
  br i1 %or.cond.not, label %.preheader.i.i.preheader, label %.lr.ph.i.i19.preheader

.preheader.i.i.preheader:                         ; preds = %.lr.ph51.i.i12
  %i.o = load i64, ptr %i.e, align 8, !tbaa !26
  %or.cond43.not.a = icmp eq i64 %i.o, 1
  br i1 %or.cond43.not.a, label %mbedtls_mpi_cmp_int.exit17, label %.lr.ph.i.i19.preheader

.lr.ph.i.i19.preheader:                           ; preds = %bb.d, %.preheader.i.i.preheader, %.lr.ph51.i.i12
  br label %.lr.ph.i.i19

.lr.ph.i.i19:                                     ; preds = %.lr.ph.i.i19.preheader, %bb.e
  %.03545.i.i20 = phi i64 [ %i.s, %bb.e ], [ %i.f, %.lr.ph.i.i19.preheader ] ; 3 uses
  %i.p = getelementptr [8 x i8], ptr %i.e, i64 %.03545.i.i20
  %i.q = getelementptr i8, ptr %i.p, i64 -8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !26
  %.not39.i.i21 = icmp eq i64 %i.r, 0
  br i1 %.not39.i.i21, label %bb.e, label %.lr.ph51.i.i22

bb.e:                                             ; preds = %.lr.ph.i.i19
  %i.s = add nsw i64 %.03545.i.i20, -1            ; 2 uses
  %.not.i.i29 = icmp eq i64 %i.s, 0
  br i1 %.not.i.i29, label %.thread40, label %.lr.ph.i.i19, !llvm.loop !1

.lr.ph51.i.i22:                                   ; preds = %.lr.ph.i.i19
  %or.cond44.not = icmp eq i64 %.03545.i.i20, 1
  br i1 %or.cond44.not, label %.preheader.i.i26.preheader, label %.thread40

.preheader.i.i26.preheader:                       ; preds = %.lr.ph51.i.i22
  %i.t = load i64, ptr %i.e, align 8, !tbaa !26
  %or.cond45.not = icmp eq i64 %i.t, 2
  br i1 %or.cond45.not, label %mbedtls_mpi_cmp_int.exit17, label %.thread40

.thread40:                                        ; preds = %bb.e, %.preheader.i.i26.preheader, %.lr.ph51.i.i22
  %i.u = call fastcc i32 @mpi_check_small_factors(ptr noundef nonnull %4) ; 2 uses
  switch i32 %i.u, label %bb.f [
    i32 0, label %bb.g
    i32 1, label %mbedtls_mpi_cmp_int.exit17
  ]

bb.f:                                             ; preds = %.thread40
  br label %mbedtls_mpi_cmp_int.exit17

bb.g:                                             ; preds = %.thread40
  %i.v = sext i32 %1 to i64
  %i.w = call fastcc i32 @mpi_miller_rabin(ptr noundef nonnull %4, i64 noundef %i.v, ptr noundef %2, ptr noundef %3)
  br label %mbedtls_mpi_cmp_int.exit17

mbedtls_mpi_cmp_int.exit17:                       ; preds = %bb.c, %.preheader.i.i.preheader, %.preheader.i.i26.preheader, %bb.a, %.thread40, %bb.g, %bb.f
  %.0 = phi i32 [ %i.w, %bb.g ], [ 0, %.preheader.i.i26.preheader ], [ -14, %bb.a ], [ %i.u, %bb.f ], [ 0, %.thread40 ], [ -14, %.preheader.i.i.preheader ], [ -14, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 -14, 2) i32 @mpi_check_small_factors(ptr nofree noundef readonly captures(none) %0) unnamed_addr #8 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !23     ; 5 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !26
  %.fr36 = freeze i64 %i.b                        ; 3 uses
  %i.c = and i64 %.fr36, 1
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %mbedtls_mpi_mod_int.exit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %.critedge
  %.031 = phi i32 [ 3, %.preheader ], [ %i.bo, %.critedge ] ; 5 uses
  %.01030 = phi i64 [ 0, %.preheader ], [ %i.bp, %.critedge ] ; 2 uses
  %i.g = zext i32 %.031 to i64                    ; 9 uses
  switch i32 %.031, label %bb.c [
    i32 0, label %mbedtls_mpi_mod_int.exit
    i32 1, label %..thread_crit_edge
  ]

..thread_crit_edge:                               ; preds = %bb.b
  %.pre = load i16, ptr %i.e, align 2, !tbaa !20
  br label %.thread

bb.c:                                             ; preds = %bb.b
  %i.h = load i16, ptr %i.e, align 2, !tbaa !20   ; 5 uses
  %i.i = icmp eq i16 %i.h, 0
  br i1 %i.i, label %.threadsplit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = icmp eq i32 %.031, 2
  br i1 %i.j, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = zext i16 %i.h to i64                     ; 4 uses
  %xtraiter = and i64 %i.k, 1
  %i.l = icmp eq i16 %i.h, 1
  br i1 %i.l, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.e
  %unroll_iter = and i64 %i.k, 65534
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.new
  %.042.i = phi i64 [ 0, %.new ], [ %i.ad, %bb.f ]
  %.03541.i = phi i64 [ %i.k, %.new ], [ %i.ae, %bb.f ] ; 3 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.f ]
  %i.m = getelementptr [8 x i8], ptr %i.a, i64 %.03541.i
  %i.n = getelementptr i8, ptr %i.m, i64 -8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !26
  %.fr40.i = freeze i64 %i.o                      ; 2 uses
  %i.p = tail call i64 @llvm.fshl.i64(i64 %.042.i, i64 %.fr40.i, i64 32)
  %i.q = urem i64 %i.p, %i.g
  %i.r = and i64 %.fr40.i, 4294967295
  %i.s = shl nuw i64 %i.q, 32
  %i.t = or disjoint i64 %i.s, %i.r
  %i.u = urem i64 %i.t, %i.g
  %i.v = getelementptr [8 x i8], ptr %i.a, i64 %.03541.i
  %i.w = getelementptr i8, ptr %i.v, i64 -16
  %i.x = load i64, ptr %i.w, align 8, !tbaa !26
  %.fr40.i.1 = freeze i64 %i.x                    ; 2 uses
  %i.y = tail call i64 @llvm.fshl.i64(i64 %i.u, i64 %.fr40.i.1, i64 32)
  %i.z = urem i64 %i.y, %i.g
  %i.aa = and i64 %.fr40.i.1, 4294967295
  %i.ab = shl nuw i64 %i.z, 32
  %i.ac = or disjoint i64 %i.ab, %i.aa
  %i.ad = urem i64 %i.ac, %i.g                    ; 3 uses
  %i.ae = add nsw i64 %.03541.i, -2               ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %bb.f, !llvm.loop !2

.unr-lcssa:                                       ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb.g, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %bb.e
  %.042.i.epil.init = phi i64 [ 0, %bb.e ], [ %i.ad, %.unr-lcssa ]
  %.03541.i.epil.init = phi i64 [ %i.k, %bb.e ], [ %i.ae, %.unr-lcssa ]
  %lcmp.mod65 = trunc i16 %i.h to i1
  tail call void @llvm.assume(i1 %lcmp.mod65)
  %i.af = getelementptr [8 x i8], ptr %i.a, i64 %.03541.i.epil.init
  %i.ag = getelementptr i8, ptr %i.af, i64 -8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !26
  %.fr40.i.epil = freeze i64 %i.ah                ; 2 uses
  %i.ai = tail call i64 @llvm.fshl.i64(i64 %.042.i.epil.init, i64 %.fr40.i.epil, i64 32)
  %i.aj = urem i64 %i.ai, %i.g
  %i.ak = and i64 %.fr40.i.epil, 4294967295
  %i.al = shl nuw i64 %i.aj, 32
  %i.am = or disjoint i64 %i.al, %i.ak
  %i.an = urem i64 %i.am, %i.g
  br label %bb.g

bb.g:                                             ; preds = %.unr-lcssa, %.epil.preheader
  %.lcssa = phi i64 [ %i.ad, %.unr-lcssa ], [ %i.an, %.epil.preheader ] ; 3 uses
  %i.ao = load i16, ptr %i.f, align 8, !tbaa !21
  %i.ap = icmp slt i16 %i.ao, 0
  %i.aq = icmp ne i64 %.lcssa, 0
  %or.cond.i = and i1 %i.ap, %i.aq
  %i.ar = sub nsw i64 %i.g, %.lcssa
  %spec.select.i = select i1 %or.cond.i, i64 %i.ar, i64 %.lcssa
  %i.as = icmp eq i64 %spec.select.i, 0
  br i1 %i.as, label %.threadsplit, label %.critedge

.threadsplit:                                     ; preds = %bb.g, %bb.c
  %i.at = icmp ne i32 %.031, 0
  %i.au = zext i1 %i.at to i64
  br label %.thread

.thread:                                          ; preds = %.threadsplit, %..thread_crit_edge
  %i.av = phi i16 [ %.pre, %..thread_crit_edge ], [ %i.h, %.threadsplit ] ; 2 uses
  %.031.lcssa39 = phi i64 [ 1, %..thread_crit_edge ], [ %i.au, %.threadsplit ] ; 3 uses
  %.not44.i.i = icmp eq i16 %i.av, 0
  br i1 %.not44.i.i, label %.lr.ph51.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.thread
  %i.aw = zext i16 %i.av to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %.lr.ph.i.i
  %.03545.i.i = phi i64 [ %i.aw, %.lr.ph.i.i ], [ %i.ba, %bb.i ] ; 3 uses
  %i.ax = getelementptr [8 x i8], ptr %i.a, i64 %.03545.i.i
  %i.ay = getelementptr i8, ptr %i.ax, i64 -8
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !26
  %.not39.i.i = icmp eq i64 %i.az, 0
  br i1 %.not39.i.i, label %bb.i, label %.lr.ph51.i.i

bb.i:                                             ; preds = %bb.h
  %i.ba = add nsw i64 %.03545.i.i, -1             ; 2 uses
  %.not.i.i = icmp eq i64 %i.ba, 0
  br i1 %.not.i.i, label %.lr.ph51.i.i, label %bb.h, !llvm.loop !1

.lr.ph51.i.i:                                     ; preds = %bb.i, %bb.h, %.thread
  %.035.lcssa.i.i = phi i64 [ 0, %.thread ], [ %.03545.i.i, %bb.h ], [ 0, %bb.i ] ; 4 uses
  %i.bb = or i64 %.035.lcssa.i.i, %.031.lcssa39
  %or.cond.i.i = icmp eq i64 %i.bb, 0
  br i1 %or.cond.i.i, label %mbedtls_mpi_cmp_int.exit.thread, label %bb.j

bb.j:                                             ; preds = %.lr.ph51.i.i
  %i.bc = icmp ugt i64 %.035.lcssa.i.i, %.031.lcssa39
  br i1 %i.bc, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bd = load i16, ptr %i.f, align 8, !tbaa !21
  %i.be = sext i16 %i.bd to i32
  br label %mbedtls_mpi_cmp_int.exit

bb.l:                                             ; preds = %bb.j
  %i.bf = icmp samesign ult i64 %.035.lcssa.i.i, %.031.lcssa39
  br i1 %i.bf, label %mbedtls_mpi_mod_int.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bg = load i16, ptr %i.f, align 8, !tbaa !21  ; 3 uses
  %or.cond = icmp slt i16 %i.bg, 0
  br i1 %or.cond, label %mbedtls_mpi_mod_int.exit, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %bb.m
  %i.bh = icmp eq i64 %.035.lcssa.i.i, 0          ; 2 uses
  %1 = icmp ugt i64 %.fr36, %i.g
  br i1 %1, label %.preheader.i.i.us, label %.preheader.preheader.i.i.split

.preheader.i.i.us:                                ; preds = %.preheader.preheader.i.i
  br i1 %i.bh, label %mbedtls_mpi_cmp_int.exit.thread, label %.split.us

.preheader.preheader.i.i.split:                   ; preds = %.preheader.preheader.i.i
  %2 = icmp uge i64 %.fr36, %i.g
  %brmerge = or i1 %2, %i.bh
  br i1 %brmerge, label %mbedtls_mpi_cmp_int.exit.thread, label %.split.us34, !llvm.loop !7

.split.us:                                        ; preds = %.preheader.i.i.us
  %3 = zext nneg i16 %i.bg to i32
  br label %mbedtls_mpi_cmp_int.exit

.split.us34:                                      ; preds = %.preheader.preheader.i.i.split
  %i.bi = zext nneg i16 %i.bg to i32
  %i.bj = sub nsw i32 0, %i.bi
  br label %mbedtls_mpi_cmp_int.exit

mbedtls_mpi_cmp_int.exit:                         ; preds = %bb.k, %.split.us, %.split.us34
  %.036.i.i = phi i32 [ %3, %.split.us ], [ %i.be, %bb.k ], [ %i.bj, %.split.us34 ]
  %.036.i.i.fr = freeze i32 %.036.i.i
  %i.bk = icmp eq i32 %.036.i.i.fr, 0
  br i1 %i.bk, label %mbedtls_mpi_cmp_int.exit.thread, label %mbedtls_mpi_mod_int.exit

mbedtls_mpi_cmp_int.exit.thread:                  ; preds = %.preheader.preheader.i.i.split, %.preheader.i.i.us, %.lr.ph51.i.i, %mbedtls_mpi_cmp_int.exit
  br label %mbedtls_mpi_mod_int.exit

.critedge:                                        ; preds = %bb.d, %bb.g
  %i.bl = getelementptr inbounds nuw i8, ptr @small_prime_gaps, i64 %.01030
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !28
  %i.bn = zext i8 %i.bm to i32
  %i.bo = add i32 %.031, %i.bn
  %i.bp = add nuw nsw i64 %.01030, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.bp, 167
  br i1 %exitcond.not, label %mbedtls_mpi_mod_int.exit, label %bb.b, !llvm.loop !58

mbedtls_mpi_mod_int.exit:                         ; preds = %bb.b, %.critedge, %bb.m, %bb.l, %mbedtls_mpi_cmp_int.exit.thread, %mbedtls_mpi_cmp_int.exit, %bb.a
  %.012 = phi i32 [ -14, %bb.a ], [ -14, %bb.m ], [ -14, %bb.l ], [ 1, %mbedtls_mpi_cmp_int.exit.thread ], [ -14, %mbedtls_mpi_cmp_int.exit ], [ 0, %.critedge ], [ -12, %bb.b ]
  ret i32 %.012
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @mpi_miller_rabin(ptr noundef %0, i64 noundef range(i64 -2147483648, 2147483648) %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.mbedtls_mpi, align 8        ; 6 uses
  %i.a = alloca [1 x i64], align 8                ; 4 uses
  %5 = alloca %struct.mbedtls_mpi, align 8        ; 11 uses
  %6 = alloca %struct.mbedtls_mpi, align 8        ; 9 uses
  %7 = alloca %struct.mbedtls_mpi, align 8        ; 8 uses
  %8 = alloca %struct.mbedtls_mpi, align 8        ; 22 uses
  %9 = alloca %struct.mbedtls_mpi, align 8        ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  store i16 1, ptr %i.b, align 8, !tbaa !21
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 10 ; 3 uses
  store i16 0, ptr %i.c, align 2, !tbaa !20
  store ptr null, ptr %5, align 8, !tbaa !23
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i16 1, ptr %i.d, align 8, !tbaa !21
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 10 ; 3 uses
  store i16 0, ptr %i.e, align 2, !tbaa !20
  store ptr null, ptr %6, align 8, !tbaa !23
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i16 1, ptr %i.f, align 8, !tbaa !21
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 10 ; 2 uses
  store i16 0, ptr %i.g, align 2, !tbaa !20
  store ptr null, ptr %7, align 8, !tbaa !23
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 7 uses
  store i16 1, ptr %i.h, align 8, !tbaa !21
  %i.i = getelementptr inbounds nuw i8, ptr %8, i64 10 ; 6 uses
  store i16 0, ptr %i.i, align 2, !tbaa !20
  store ptr null, ptr %8, align 8, !tbaa !23
  %i.j = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i16 1, ptr %i.j, align 8, !tbaa !21
  %i.k = getelementptr inbounds nuw i8, ptr %9, i64 10 ; 2 uses
  store i16 0, ptr %i.k, align 2, !tbaa !20
  store ptr null, ptr %9, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i64 1, ptr %i.a, align 8, !tbaa !26
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i16 1, ptr %i.l, align 8, !tbaa !21
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 10
  store i16 1, ptr %i.m, align 2, !tbaa !20
  store ptr %i.a, ptr %4, align 8, !tbaa !23
  %i.n = call fastcc range(i32 -141, 1) i32 @add_sub_mpi(ptr noundef nonnull %5, ptr noundef readonly %0, ptr noundef nonnull readonly %4, i32 noundef -1) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %bb.b, label %mbedtls_mpi_fill_random.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.o = load i16, ptr %i.c, align 2, !tbaa !20   ; 2 uses
  %i.p = zext i16 %i.o to i64                     ; 5 uses
  %.not12.i = icmp eq i16 %i.o, 0                 ; 4 uses
  br i1 %.not12.i, label %mbedtls_mpi_lsb.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.q = load ptr, ptr %5, align 8, !tbaa !23
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %.lr.ph.i
  %.011.i = phi i64 [ 0, %.lr.ph.i ], [ %i.w, %bb.e ] ; 3 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.011.i
  %i.s = load i64, ptr %i.r, align 8, !tbaa !26   ; 2 uses
  %.not.i = icmp eq i64 %i.s, 0
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = shl nuw nsw i64 %.011.i, 6
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
  %.not161 = icmp eq i64 %1, 0
  br i1 %.not161, label %mbedtls_mpi_fill_random.exit.thread, label %.critedge.preheader.lr.ph

.critedge.preheader.lr.ph:                        ; preds = %mbedtls_mpi_shift_r.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.ac = icmp ugt i64 %.08.i, 1
  br label %.critedge.preheader

.critedge.preheader:                              ; preds = %.critedge.preheader.lr.ph, %mbedtls_mpi_cmp_mpi.exit65.thread
  %.promoted = phi i16 [ 0, %.critedge.preheader.lr.ph ], [ %.promoted176, %mbedtls_mpi_cmp_mpi.exit65.thread ]
  %.019154 = phi i64 [ 0, %.critedge.preheader.lr.ph ], [ %i.gg, %mbedtls_mpi_cmp_mpi.exit65.thread ]
  %.promoted149 = load ptr, ptr %8, align 8
  br label %.critedge

.critedge:                                        ; preds = %.critedge.backedge, %.critedge.preheader
  %i.ad = phi ptr [ %.promoted149, %.critedge.preheader ], [ %i.au, %.critedge.backedge ] ; 6 uses
  %i.ae = phi i16 [ %.promoted, %.critedge.preheader ], [ %i.av, %.critedge.backedge ] ; 4 uses
  %.020 = phi i32 [ 0, %.critedge.preheader ], [ %i.bj, %.critedge.backedge ] ; 2 uses
  %i.af = load i16, ptr %i.ab, align 2, !tbaa !20 ; 5 uses
  %i.ag = zext i16 %i.af to i64                   ; 3 uses
  %i.ah = shl nuw nsw i64 %i.ag, 3                ; 2 uses
  %i.ai = icmp eq i16 %i.af, 0
  br i1 %i.ai, label %bb.h, label %bb.j

bb.h:                                             ; preds = %.critedge
  %.not.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i, label %mbedtls_mpi_fill_random.exit.thread111, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aj = zext i16 %i.ae to i64
  %i.ak = shl nuw nsw i64 %i.aj, 3
  call void @mbedtls_zeroize_and_free(ptr noundef nonnull %i.ad, i64 noundef %i.ak) #17
  br label %mbedtls_mpi_fill_random.exit.thread111

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
  br i1 %i.ao, label %mbedtls_mpi_fill_random.exit.thread.loopexit139, label %bb.n

bb.n:                                             ; preds = %mbedtls_mpi_free.exit12.i.i
  %i.ap = call noalias ptr @calloc(i64 noundef range(i64 0, 2305843009213693953) %i.ag, i64 noundef 8) #18 ; 2 uses
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %mbedtls_mpi_fill_random.exit.thread.loopexit139, label %mbedtls_mpi_fill_random.exit

mbedtls_mpi_fill_random.exit:                     ; preds = %bb.n, %bb.k
  %.pre-phi = phi i64 [ %i.ag, %bb.n ], [ %i.al, %bb.k ]
  %i.ar = phi ptr [ %i.ap, %bb.n ], [ %i.ad, %bb.k ] ; 3 uses
  %i.as = phi i16 [ %i.af, %bb.n ], [ %i.ae, %bb.k ] ; 2 uses
  %i.at = call i32 @mbedtls_mpi_core_fill_random(ptr noundef %i.ar, i64 noundef %.pre-phi, i64 noundef %i.ah, ptr noundef %2, ptr noundef %3) #17 ; 2 uses
  %.not34 = icmp eq i32 %i.at, 0
  br i1 %.not34, label %mbedtls_mpi_fill_random.exit.thread111, label %mbedtls_mpi_fill_random.exit.thread.loopexit139

mbedtls_mpi_fill_random.exit.thread111:           ; preds = %bb.i, %bb.h, %mbedtls_mpi_fill_random.exit
  %i.au = phi ptr [ %i.ar, %mbedtls_mpi_fill_random.exit ], [ null, %bb.h ], [ null, %bb.i ] ; 9 uses
  %i.av = phi i16 [ %i.as, %mbedtls_mpi_fill_random.exit ], [ 0, %bb.h ], [ 0, %bb.i ] ; 5 uses
  %i.aw = zext i16 %i.av to i64                   ; 4 uses
  %i.ax = call i64 @mbedtls_mpi_core_bitlen(ptr noundef %i.au, i64 noundef %i.aw) #17
  %i.ay = load ptr, ptr %5, align 8, !tbaa !23    ; 7 uses
  %i.az = call i64 @mbedtls_mpi_core_bitlen(ptr noundef %i.ay, i64 noundef %i.p) #17 ; 2 uses
  %i.ba = icmp ugt i64 %i.ax, %i.az
  br i1 %i.ba, label %bb.o, label %bb.p

bb.o:                                             ; preds = %mbedtls_mpi_fill_random.exit.thread111
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

bb.p:                                             ; preds = %bb.o, %mbedtls_mpi_fill_random.exit.thread111
  %i.bj = add nuw nsw i32 %.020, 1
  %exitcond = icmp eq i32 %.020, 31
  br i1 %exitcond, label %mbedtls_mpi_fill_random.exit.thread.loopexit139, label %bb.q

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
  %or.cond241 = or i1 %or.cond.i, %i.bt
  br i1 %or.cond241, label %.critedge.backedge, label %bb.t

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
  br i1 %i.cj, label %mbedtls_mpi_cmp_int.exit, label %.preheader.i.i.preheader

.preheader.i.i.preheader:                         ; preds = %.lr.ph51.i.i
  %i.ck = load i64, ptr %i.au, align 8, !tbaa !26
  %10 = icmp ult i64 %i.ck, 2
  br i1 %10, label %.critedge.backedge, label %mbedtls_mpi_cmp_int.exit

.critedge.backedge:                               ; preds = %.preheader.i, %.lr.ph258, %bb.w, %.preheader.i.i.preheader, %mbedtls_mpi_cmp_mpi.exit, %mbedtls_mpi_cmp_mpi.exit.thread, %._crit_edge52.i, %bb.u
  br label %.critedge, !llvm.loop !59

mbedtls_mpi_cmp_int.exit:                         ; preds = %.lr.ph51.i.i, %.preheader.i.i.preheader
  store i16 %i.av, ptr %i.i, align 2
  store ptr %i.au, ptr %8, align 8
  store i16 1, ptr %i.h, align 8
  %i.cl = call fastcc i32 @mbedtls_mpi_exp_mod_optionally_safe(ptr noundef nonnull %8, ptr noundef nonnull readonly %8, ptr noundef nonnull readonly %6, i32 noundef 0, ptr noundef %0, ptr noundef nonnull %9) ; 2 uses
  %.not35 = icmp eq i32 %i.cl, 0
  br i1 %.not35, label %bb.x, label %mbedtls_mpi_fill_random.exit.thread

bb.x:                                             ; preds = %mbedtls_mpi_cmp_int.exit
  %i.cm = load i16, ptr %i.i, align 2, !tbaa !20  ; 9 uses
  %.not44.i44 = icmp eq i16 %i.cm, 0
  br i1 %.not44.i44, label %._crit_edge.i48, label %.lr.ph.i45

.lr.ph.i45:                                       ; preds = %bb.x
  %i.cn = zext i16 %i.cm to i64
  %i.co = load ptr, ptr %8, align 8, !tbaa !23
  br label %bb.y

bb.y:                                             ; preds = %bb.z, %.lr.ph.i45
  %.03545.i46 = phi i64 [ %i.cn, %.lr.ph.i45 ], [ %i.cs, %bb.z ] ; 3 uses
  %i.cp = getelementptr [8 x i8], ptr %i.co, i64 %.03545.i46
  %i.cq = getelementptr i8, ptr %i.cp, i64 -8
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !26
  %.not39.i47 = icmp eq i64 %i.cr, 0
  br i1 %.not39.i47, label %bb.z, label %._crit_edge.i48

bb.z:                                             ; preds = %bb.y
  %i.cs = add nsw i64 %.03545.i46, -1             ; 2 uses
  %.not.i64 = icmp eq i64 %i.cs, 0
  br i1 %.not.i64, label %._crit_edge.i48, label %bb.y, !llvm.loop !1

._crit_edge.i48:                                  ; preds = %bb.z, %bb.y, %bb.x
  %.035.lcssa.i49 = phi i64 [ 0, %bb.x ], [ 0, %bb.z ], [ %.03545.i46, %bb.y ] ; 5 uses
  br i1 %.not12.i, label %._crit_edge52.i54, label %.lr.ph51.i51

.lr.ph51.i51:                                     ; preds = %._crit_edge.i48, %bb.aa
  %.049.i52 = phi i64 [ %i.cw, %bb.aa ], [ %i.p, %._crit_edge.i48 ] ; 3 uses
  %i.ct = getelementptr [8 x i8], ptr %i.ay, i64 %.049.i52
  %i.cu = getelementptr i8, ptr %i.ct, i64 -8
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !26
  %.not41.i53 = icmp eq i64 %i.cv, 0
  br i1 %.not41.i53, label %bb.aa, label %._crit_edge52.i54

bb.aa:                                            ; preds = %.lr.ph51.i51
  %i.cw = add nsw i64 %.049.i52, -1               ; 2 uses
  %.not40.i63 = icmp eq i64 %i.cw, 0
  br i1 %.not40.i63, label %._crit_edge52.i54, label %.lr.ph51.i51, !llvm.loop !6

._crit_edge52.i54:                                ; preds = %bb.aa, %.lr.ph51.i51, %._crit_edge.i48
  %.0.lcssa.i55 = phi i64 [ 0, %._crit_edge.i48 ], [ 0, %bb.aa ], [ %.049.i52, %.lr.ph51.i51 ] ; 3 uses
  %i.cx = or i64 %.0.lcssa.i55, %.035.lcssa.i49
  %or.cond.i56 = icmp eq i64 %i.cx, 0
  br i1 %or.cond.i56, label %mbedtls_mpi_cmp_mpi.exit65.thread, label %bb.ab

bb.ab:                                            ; preds = %._crit_edge52.i54
  %i.cy = icmp ugt i64 %.035.lcssa.i49, %.0.lcssa.i55
  br i1 %i.cy, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.cz = load i16, ptr %i.h, align 8, !tbaa !21
  %i.da = sext i16 %i.cz to i32
  br label %mbedtls_mpi_cmp_mpi.exit65

bb.ad:                                            ; preds = %bb.ab
  %i.db = icmp ugt i64 %.0.lcssa.i55, %.035.lcssa.i49
  br i1 %i.db, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.dc = load i16, ptr %i.b, align 8, !tbaa !21
  %i.dd = sext i16 %i.dc to i32
  %i.de = sub nsw i32 0, %i.dd
  br label %mbedtls_mpi_cmp_mpi.exit65

bb.af:                                            ; preds = %bb.ad
  %i.df = load i16, ptr %i.h, align 8, !tbaa !21  ; 4 uses
  %i.dg = icmp sgt i16 %i.df, 0
  %i.dh = load i16, ptr %i.b, align 8, !tbaa !21  ; 2 uses
  br i1 %i.dg, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.di = icmp slt i16 %i.dh, 0
  br i1 %i.di, label %mbedtls_mpi_cmp_mpi.exit65.thread120, label %.preheader.preheader.i58

bb.ah:                                            ; preds = %bb.af
  %i.dj = icmp sgt i16 %i.dh, 0
  %i.dk = icmp ne i16 %i.df, 0
  %or.cond43.i57 = and i1 %i.dk, %i.dj
  br i1 %or.cond43.i57, label %mbedtls_mpi_cmp_mpi.exit65.thread120, label %.preheader.preheader.i58

.preheader.preheader.i58:                         ; preds = %bb.ah, %bb.ag
  %i.dl = load ptr, ptr %8, align 8
  %.not42.i61259 = icmp eq i64 %.035.lcssa.i49, 0
  br i1 %.not42.i61259, label %mbedtls_mpi_cmp_mpi.exit65.thread, label %.lr.ph261

.preheader.i59:                                   ; preds = %bb.aj
  %.not42.i61 = icmp eq i64 %i.dm, 0
  br i1 %.not42.i61, label %mbedtls_mpi_cmp_mpi.exit65.thread, label %.lr.ph261, !llvm.loop !7

.lr.ph261:                                        ; preds = %.preheader.preheader.i58, %.preheader.i59
  %.1.i60260 = phi i64 [ %i.dm, %.preheader.i59 ], [ %.035.lcssa.i49, %.preheader.preheader.i58 ]
  %i.dm = add nsw i64 %.1.i60260, -1              ; 4 uses
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %i.dm
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !26 ; 2 uses
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.dm
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !26 ; 2 uses
  %i.dr = icmp ugt i64 %i.do, %i.dq
  br i1 %i.dr, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %.lr.ph261
  %i.ds = sext i16 %i.df to i32
  br label %mbedtls_mpi_cmp_mpi.exit65

bb.aj:                                            ; preds = %.lr.ph261
  %i.dt = icmp ult i64 %i.do, %i.dq
  br i1 %i.dt, label %bb.ak, label %.preheader.i59, !llvm.loop !7

bb.ak:                                            ; preds = %bb.aj
  %i.du = sext i16 %i.df to i32
  %i.dv = sub nsw i32 0, %i.du
  br label %mbedtls_mpi_cmp_mpi.exit65

mbedtls_mpi_cmp_mpi.exit65:                       ; preds = %bb.ac, %bb.ae, %bb.ai, %bb.ak
  %.036.i62 = phi i32 [ %i.ds, %bb.ai ], [ %i.da, %bb.ac ], [ %i.de, %bb.ae ], [ %i.dv, %bb.ak ]
  %i.dw = icmp eq i32 %.036.i62, 0
  br i1 %i.dw, label %mbedtls_mpi_cmp_mpi.exit65.thread, label %mbedtls_mpi_cmp_mpi.exit65.thread120

mbedtls_mpi_cmp_mpi.exit65.thread120:             ; preds = %bb.ag, %bb.ah, %mbedtls_mpi_cmp_mpi.exit65
  %i.dx = call i32 @mbedtls_mpi_cmp_int(ptr noundef nonnull %8, i64 noundef 1)
  %i.dy = icmp eq i32 %i.dx, 0
  br i1 %i.dy, label %mbedtls_mpi_cmp_mpi.exit65.thread, label %.preheader

.preheader:                                       ; preds = %mbedtls_mpi_cmp_mpi.exit65.thread120
  br i1 %i.ac, label %.lr.ph, label %.critedge2

.lr.ph:                                           ; preds = %.preheader
  %i.dz = load i16, ptr %i.b, align 8             ; 3 uses
  %i.ea = icmp sgt i16 %i.dz, 0
  %i.eb = icmp slt i16 %i.dz, 0
  %i.ec = sext i16 %i.dz to i32
  %i.ed = sub nsw i32 0, %i.ec
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %.lr.ph
  %i.ee = phi i16 [ %i.cm, %.lr.ph ], [ %i.fk, %.backedge.backedge ] ; 6 uses
  %.0153 = phi i64 [ 1, %.lr.ph ], [ %.0153.be, %.backedge.backedge ] ; 2 uses
  %.not44.i66 = icmp eq i16 %i.ee, 0
  br i1 %.not44.i66, label %._crit_edge.i70, label %.lr.ph.i67

.lr.ph.i67:                                       ; preds = %.backedge
  %i.ef = zext i16 %i.ee to i64
  %i.eg = load ptr, ptr %8, align 8, !tbaa !23
  br label %bb.al

bb.al:                                            ; preds = %bb.am, %.lr.ph.i67
  %.03545.i68 = phi i64 [ %i.ef, %.lr.ph.i67 ], [ %i.ek, %bb.am ] ; 3 uses
  %i.eh = getelementptr [8 x i8], ptr %i.eg, i64 %.03545.i68
  %i.ei = getelementptr i8, ptr %i.eh, i64 -8
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !26
  %.not39.i69 = icmp eq i64 %i.ej, 0
  br i1 %.not39.i69, label %bb.am, label %._crit_edge.i70

bb.am:                                            ; preds = %bb.al
  %i.ek = add nsw i64 %.03545.i68, -1             ; 2 uses
  %.not.i86 = icmp eq i64 %i.ek, 0
  br i1 %.not.i86, label %._crit_edge.i70, label %bb.al, !llvm.loop !1

._crit_edge.i70:                                  ; preds = %bb.am, %bb.al, %.backedge
  %.035.lcssa.i71 = phi i64 [ 0, %.backedge ], [ 0, %bb.am ], [ %.03545.i68, %bb.al ] ; 5 uses
  br i1 %.not12.i, label %._crit_edge52.i76, label %.lr.ph51.i73

.lr.ph51.i73:                                     ; preds = %._crit_edge.i70, %bb.an
  %.049.i74 = phi i64 [ %i.eo, %bb.an ], [ %i.p, %._crit_edge.i70 ] ; 3 uses
  %i.el = getelementptr [8 x i8], ptr %i.ay, i64 %.049.i74
  %i.em = getelementptr i8, ptr %i.el, i64 -8
  %i.en = load i64, ptr %i.em, align 8, !tbaa !26
  %.not41.i75 = icmp eq i64 %i.en, 0
  br i1 %.not41.i75, label %bb.an, label %._crit_edge52.i76

bb.an:                                            ; preds = %.lr.ph51.i73
  %i.eo = add nsw i64 %.049.i74, -1               ; 2 uses
  %.not40.i85 = icmp eq i64 %i.eo, 0
  br i1 %.not40.i85, label %._crit_edge52.i76, label %.lr.ph51.i73, !llvm.loop !6

._crit_edge52.i76:                                ; preds = %bb.an, %.lr.ph51.i73, %._crit_edge.i70
  %.0.lcssa.i77 = phi i64 [ 0, %._crit_edge.i70 ], [ 0, %bb.an ], [ %.049.i74, %.lr.ph51.i73 ] ; 3 uses
  %i.ep = or i64 %.0.lcssa.i77, %.035.lcssa.i71
  %or.cond.i78 = icmp eq i64 %i.ep, 0
  br i1 %or.cond.i78, label %.critedge2, label %bb.ao

bb.ao:                                            ; preds = %._crit_edge52.i76
  %i.eq = icmp ugt i64 %.035.lcssa.i71, %.0.lcssa.i77
  br i1 %i.eq, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.er = load i16, ptr %i.h, align 8, !tbaa !21
  %i.es = sext i16 %i.er to i32
  br label %mbedtls_mpi_cmp_mpi.exit87

bb.aq:                                            ; preds = %bb.ao
  %i.et = icmp ugt i64 %.0.lcssa.i77, %.035.lcssa.i71
  br i1 %i.et, label %mbedtls_mpi_cmp_mpi.exit87, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.eu = load i16, ptr %i.h, align 8, !tbaa !21  ; 4 uses
  %i.ev = icmp sgt i16 %i.eu, 0
  br i1 %i.ev, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  br i1 %i.eb, label %mbedtls_mpi_cmp_mpi.exit87.thread125, label %.preheader.preheader.i80

bb.at:                                            ; preds = %bb.ar
  %i.ew = icmp ne i16 %i.eu, 0
  %or.cond43.i79 = and i1 %i.ew, %i.ea
  br i1 %or.cond43.i79, label %mbedtls_mpi_cmp_mpi.exit87.thread125, label %.preheader.preheader.i80

.preheader.preheader.i80:                         ; preds = %bb.at, %bb.as
  %i.ex = load ptr, ptr %8, align 8
  %.not42.i83262 = icmp eq i64 %.035.lcssa.i71, 0
  br i1 %.not42.i83262, label %.critedge2, label %.lr.ph264

.preheader.i81:                                   ; preds = %bb.av
  %.not42.i83 = icmp eq i64 %i.ey, 0
  br i1 %.not42.i83, label %.critedge2, label %.lr.ph264, !llvm.loop !7

.lr.ph264:                                        ; preds = %.preheader.preheader.i80, %.preheader.i81
  %.1.i82263 = phi i64 [ %i.ey, %.preheader.i81 ], [ %.035.lcssa.i71, %.preheader.preheader.i80 ]
  %i.ey = add nsw i64 %.1.i82263, -1              ; 4 uses
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.ex, i64 %i.ey
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !26 ; 2 uses
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.ey
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !26 ; 2 uses
  %i.fd = icmp ugt i64 %i.fa, %i.fc
  br i1 %i.fd, label %bb.au, label %bb.av

bb.au:                                            ; preds = %.lr.ph264
  %i.fe = sext i16 %i.eu to i32
  br label %mbedtls_mpi_cmp_mpi.exit87

bb.av:                                            ; preds = %.lr.ph264
  %i.ff = icmp ult i64 %i.fa, %i.fc
  br i1 %i.ff, label %bb.aw, label %.preheader.i81, !llvm.loop !7

bb.aw:                                            ; preds = %bb.av
  %i.fg = sext i16 %i.eu to i32
  %i.fh = sub nsw i32 0, %i.fg
  br label %mbedtls_mpi_cmp_mpi.exit87

mbedtls_mpi_cmp_mpi.exit87:                       ; preds = %bb.aq, %bb.ap, %bb.au, %bb.aw
  %.036.i84 = phi i32 [ %i.fe, %bb.au ], [ %i.es, %bb.ap ], [ %i.fh, %bb.aw ], [ %i.ed, %bb.aq ]
  %.not36 = icmp eq i32 %.036.i84, 0
  br i1 %.not36, label %.critedge2, label %mbedtls_mpi_cmp_mpi.exit87.thread125

mbedtls_mpi_cmp_mpi.exit87.thread125:             ; preds = %bb.as, %bb.at, %mbedtls_mpi_cmp_mpi.exit87
  %i.fi = call i32 @mbedtls_mpi_mul_mpi(ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %8) ; 2 uses
  %.not37 = icmp eq i32 %i.fi, 0
  br i1 %.not37, label %bb.ax, label %mbedtls_mpi_fill_random.exit.thread

bb.ax:                                            ; preds = %mbedtls_mpi_cmp_mpi.exit87.thread125
  %i.fj = call i32 @mbedtls_mpi_mod_mpi(ptr noundef nonnull %8, ptr noundef nonnull %7, ptr noundef %0) ; 2 uses
  %.not38 = icmp eq i32 %i.fj, 0
  br i1 %.not38, label %bb.ay, label %mbedtls_mpi_fill_random.exit.thread

bb.ay:                                            ; preds = %bb.ax
  %i.fk = load i16, ptr %i.i, align 2, !tbaa !20  ; 6 uses
  %.not44.i.i88 = icmp eq i16 %i.fk, 0
  br i1 %.not44.i.i88, label %mbedtls_mpi_cmp_int.exit99.thread, label %.lr.ph.i.i89

.lr.ph.i.i89:                                     ; preds = %bb.ay
  %i.fl = zext i16 %i.fk to i64
  %i.fm = load ptr, ptr %8, align 8, !tbaa !23    ; 2 uses
  br label %bb.az

bb.az:                                            ; preds = %bb.ba, %.lr.ph.i.i89
  %.03545.i.i90 = phi i64 [ %i.fl, %.lr.ph.i.i89 ], [ %i.fq, %bb.ba ] ; 3 uses
  %i.fn = getelementptr [8 x i8], ptr %i.fm, i64 %.03545.i.i90
  %i.fo = getelementptr i8, ptr %i.fn, i64 -8
  %i.fp = load i64, ptr %i.fo, align 8, !tbaa !26
  %.not39.i.i91 = icmp eq i64 %i.fp, 0
  br i1 %.not39.i.i91, label %bb.ba, label %.lr.ph51.i.i92

bb.ba:                                            ; preds = %bb.az
  %i.fq = add nsw i64 %.03545.i.i90, -1           ; 2 uses
  %.not.i.i98 = icmp eq i64 %i.fq, 0
  br i1 %.not.i.i98, label %mbedtls_mpi_cmp_int.exit99.thread, label %bb.az, !llvm.loop !1

.lr.ph51.i.i92:                                   ; preds = %bb.az
  %i.fr = icmp ugt i64 %.03545.i.i90, 1
  %i.fs = load i16, ptr %i.h, align 8, !tbaa !21  ; 4 uses
  br i1 %i.fr, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %.lr.ph51.i.i92
  %i.ft = sext i16 %i.fs to i32
  br label %mbedtls_mpi_cmp_int.exit99

bb.bc:                                            ; preds = %.lr.ph51.i.i92
  %or.cond135 = icmp slt i16 %i.fs, 0
  br i1 %or.cond135, label %mbedtls_mpi_cmp_int.exit99.thread, label %.preheader.i.i95.preheader

.preheader.i.i95.preheader:                       ; preds = %bb.bc
  %i.fu = load i64, ptr %i.fm, align 8, !tbaa !26 ; 2 uses
  %i.fv = icmp ugt i64 %i.fu, 1
  br i1 %i.fv, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %.preheader.i.i95.preheader
  %i.fw = zext nneg i16 %i.fs to i32
  br label %mbedtls_mpi_cmp_int.exit99

bb.be:                                            ; preds = %.preheader.i.i95.preheader
  %i.fx = icmp eq i64 %i.fu, 0
  br i1 %i.fx, label %bb.bf, label %.critedge2

bb.bf:                                            ; preds = %bb.be
  %i.fy = zext nneg i16 %i.fs to i32
  %i.fz = sub nsw i32 0, %i.fy
  br label %mbedtls_mpi_cmp_int.exit99

mbedtls_mpi_cmp_int.exit99:                       ; preds = %bb.bb, %bb.bd, %bb.bf
  %.036.i.i97 = phi i32 [ %i.fz, %bb.bf ], [ %i.ft, %bb.bb ], [ %i.fw, %bb.bd ]
  %i.ga = icmp ne i32 %.036.i.i97, 0
  %i.gb = add i64 %.0153, 1                       ; 2 uses
  %i.gc = icmp ult i64 %i.gb, %.08.i
  %or.cond = select i1 %i.ga, i1 %i.gc, i1 false
  br i1 %or.cond, label %.backedge.backedge, label %.critedge2

mbedtls_mpi_cmp_int.exit99.thread:                ; preds = %bb.ba, %bb.bc, %bb.ay
  %.old = add i64 %.0153, 1                       ; 2 uses
  %.old160 = icmp ult i64 %.old, %.08.i
  br i1 %.old160, label %.backedge.backedge, label %.critedge2

.backedge.backedge:                               ; preds = %mbedtls_mpi_cmp_int.exit99.thread, %mbedtls_mpi_cmp_int.exit99
  %.0153.be = phi i64 [ %.old, %mbedtls_mpi_cmp_int.exit99.thread ], [ %i.gb, %mbedtls_mpi_cmp_int.exit99 ]
  br label %.backedge, !llvm.loop !60

.critedge2:                                       ; preds = %mbedtls_mpi_cmp_mpi.exit87, %mbedtls_mpi_cmp_int.exit99, %mbedtls_mpi_cmp_int.exit99.thread, %._crit_edge52.i76, %bb.be, %.preheader.preheader.i80, %.preheader.i81, %.preheader
  %.promoted177 = phi i16 [ %i.cm, %.preheader ], [ %i.ee, %.preheader.i81 ], [ %i.fk, %mbedtls_mpi_cmp_int.exit99 ], [ %i.fk, %mbedtls_mpi_cmp_int.exit99.thread ], [ %i.ee, %._crit_edge52.i76 ], [ %i.fk, %bb.be ], [ %i.ee, %mbedtls_mpi_cmp_mpi.exit87 ], [ %i.ee, %.preheader.preheader.i80 ]
  %i.gd = call i32 @mbedtls_mpi_cmp_mpi(ptr noundef nonnull %8, ptr noundef nonnull %5)
  %.not39 = icmp eq i32 %i.gd, 0
  br i1 %.not39, label %bb.bg, label %mbedtls_mpi_fill_random.exit.thread

bb.bg:                                            ; preds = %.critedge2
  %i.ge = call i32 @mbedtls_mpi_cmp_int(ptr noundef nonnull %8, i64 noundef 1)
  %i.gf = icmp eq i32 %i.ge, 0
  br i1 %i.gf, label %mbedtls_mpi_fill_random.exit.thread, label %mbedtls_mpi_cmp_mpi.exit65.thread

mbedtls_mpi_cmp_mpi.exit65.thread:                ; preds = %.preheader.i59, %.preheader.preheader.i58, %._crit_edge52.i54, %bb.bg, %mbedtls_mpi_cmp_mpi.exit65, %mbedtls_mpi_cmp_mpi.exit65.thread120
  %.promoted176 = phi i16 [ %i.cm, %mbedtls_mpi_cmp_mpi.exit65.thread120 ], [ %i.cm, %._crit_edge52.i54 ], [ %.promoted177, %bb.bg ], [ %i.cm, %mbedtls_mpi_cmp_mpi.exit65 ], [ %i.cm, %.preheader.preheader.i58 ], [ %i.cm, %.preheader.i59 ]
  %i.gg = add nuw i64 %.019154, 1                 ; 2 uses
  %exitcond174.not = icmp eq i64 %i.gg, %1
  br i1 %exitcond174.not, label %mbedtls_mpi_fill_random.exit.thread, label %.critedge.preheader, !llvm.loop !61

mbedtls_mpi_fill_random.exit.thread.loopexit139:  ; preds = %mbedtls_mpi_fill_random.exit, %bb.p, %bb.n, %mbedtls_mpi_free.exit12.i.i
  %i.gh = phi ptr [ null, %mbedtls_mpi_free.exit12.i.i ], [ null, %bb.n ], [ %i.au, %bb.p ], [ %i.ar, %mbedtls_mpi_fill_random.exit ]
  %i.gi = phi i16 [ 0, %mbedtls_mpi_free.exit12.i.i ], [ 0, %bb.n ], [ %i.av, %bb.p ], [ %i.as, %mbedtls_mpi_fill_random.exit ]
  %.4.ph140 = phi i32 [ -141, %mbedtls_mpi_free.exit12.i.i ], [ -141, %bb.n ], [ -14, %bb.p ], [ %i.at, %mbedtls_mpi_fill_random.exit ]
  store i16 %i.gi, ptr %i.i, align 2
  store ptr %i.gh, ptr %8, align 8
  br label %mbedtls_mpi_fill_random.exit.thread

mbedtls_mpi_fill_random.exit.thread:              ; preds = %mbedtls_mpi_cmp_int.exit, %mbedtls_mpi_cmp_mpi.exit65.thread, %bb.bg, %.critedge2, %bb.ax, %mbedtls_mpi_cmp_mpi.exit87.thread125, %mbedtls_mpi_shift_r.exit, %mbedtls_mpi_fill_random.exit.thread.loopexit139, %mbedtls_mpi_lsb.exit, %bb.a
  %.4 = phi i32 [ %i.n, %bb.a ], [ %i.x, %mbedtls_mpi_lsb.exit ], [ %.4.ph140, %mbedtls_mpi_fill_random.exit.thread.loopexit139 ], [ %i.fi, %mbedtls_mpi_cmp_mpi.exit87.thread125 ], [ 0, %mbedtls_mpi_shift_r.exit ], [ %i.fj, %bb.ax ], [ -14, %bb.bg ], [ 0, %mbedtls_mpi_cmp_mpi.exit65.thread ], [ %i.cl, %mbedtls_mpi_cmp_int.exit ], [ -14, %.critedge2 ]
  %i.gj = load ptr, ptr %5, align 8, !tbaa !23    ; 2 uses
  %.not.i100 = icmp eq ptr %i.gj, null
  br i1 %.not.i100, label %mbedtls_mpi_free.exit, label %bb.bh

bb.bh:                                            ; preds = %mbedtls_mpi_fill_random.exit.thread
  %i.gk = load i16, ptr %i.c, align 2, !tbaa !20
  %i.gl = zext i16 %i.gk to i64
  %i.gm = shl nuw nsw i64 %i.gl, 3
  call void @mbedtls_zeroize_and_free(ptr noundef nonnull %i.gj, i64 noundef %i.gm) #17
  br label %mbedtls_mpi_free.exit

mbedtls_mpi_free.exit:                            ; preds = %mbedtls_mpi_fill_random.exit.thread, %bb.bh
  %i.gn = load ptr, ptr %6, align 8, !tbaa !23    ; 2 uses
  %.not.i101.a = icmp eq ptr %i.gn, null
  br i1 %.not.i101.a, label %mbedtls_mpi_free.exit102.a, label %bb.bi

bb.bi:                                            ; preds = %mbedtls_mpi_free.exit
  %i.go = load i16, ptr %i.e, align 2, !tbaa !20
  %i.gp = zext i16 %i.go to i64
  %i.gq = shl nuw nsw i64 %i.gp, 3
  call void @mbedtls_zeroize_and_free(ptr noundef nonnull %i.gn, i64 noundef %i.gq) #17
  br label %mbedtls_mpi_free.exit102.a

mbedtls_mpi_free.exit102.a:                       ; preds = %mbedtls_mpi_free.exit, %bb.bi
  %i.gr = load ptr, ptr %7, align 8, !tbaa !23    ; 2 uses
  %.not.i103.a = icmp eq ptr %i.gr, null
  br i1 %.not.i103.a, label %mbedtls_mpi_free.exit104.a, label %bb.bj

bb.bj:                                            ; preds = %mbedtls_mpi_free.exit102.a
  %i.gs = load i16, ptr %i.g, align 2, !tbaa !20
  %i.gt = zext i16 %i.gs to i64
  %i.gu = shl nuw nsw i64 %i.gt, 3
  call void @mbedtls_zeroize_and_free(ptr noundef nonnull %i.gr, i64 noundef %i.gu) #17
  br label %mbedtls_mpi_free.exit104.a

mbedtls_mpi_free.exit104.a:                       ; preds = %mbedtls_mpi_free.exit102.a, %bb.bj
  %i.gv = load ptr, ptr %8, align 8, !tbaa !23    ; 2 uses
  %.not.i105.a = icmp eq ptr %i.gv, null
  br i1 %.not.i105.a, label %mbedtls_mpi_free.exit106.a, label %bb.bk

bb.bk:                                            ; preds = %mbedtls_mpi_free.exit104.a
  %i.gw = load i16, ptr %i.i, align 2, !tbaa !20
  %i.gx = zext i16 %i.gw to i64
  %i.gy = shl nuw nsw i64 %i.gx, 3
  call void @mbedtls_zeroize_and_free(ptr noundef nonnull %i.gv, i64 noundef %i.gy) #17
  br label %mbedtls_mpi_free.exit106.a

mbedtls_mpi_free.exit106.a:                       ; preds = %mbedtls_mpi_free.exit104.a, %bb.bk
  %i.gz = load ptr, ptr %9, align 8, !tbaa !23    ; 2 uses
  %.not.i107 = icmp eq ptr %i.gz, null
  br i1 %.not.i107, label %mbedtls_mpi_free.exit108, label %bb.bl

bb.bl:                                            ; preds = %mbedtls_mpi_free.exit106.a
  %i.ha = load i16, ptr %i.k, align 2, !tbaa !20
  %i.hb = zext i16 %i.ha to i64
  %i.hc = shl nuw nsw i64 %i.hb, 3
  call void @mbedtls_zeroize_and_free(ptr noundef nonnull %i.gz, i64 noundef %i.hc) #17
  br label %mbedtls_mpi_free.exit108

mbedtls_mpi_free.exit108:                         ; preds = %mbedtls_mpi_free.exit106.a, %bb.bl
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
  %.pre118 = load ptr, ptr %0, align 8, !tbaa !23
  %.pre119 = load i16, ptr %i.ah, align 2, !tbaa !20
  br label %mbedtls_mpi_shift_r.exit.us

mbedtls_mpi_shift_r.exit.us:                      ; preds = %bb.r, %bb.q, %bb.p
  %i.at = phi i16 [ %.pre119, %bb.r ], [ 0, %bb.q ], [ %.pre120, %bb.p ] ; 3 uses
  %i.au = phi ptr [ %.pre118, %bb.r ], [ %i.an, %bb.q ], [ %i.an, %bb.p ] ; 8 uses
  %i.av = load i64, ptr %i.au, align 8, !tbaa !26
  %i.aw = or i64 %i.av, 1
  store i64 %i.aw, ptr %i.au, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  store i16 1, ptr %i.al, align 8, !tbaa !21
  store i16 %i.at, ptr %i.am, align 2, !tbaa !20
  store ptr %i.au, ptr %9, align 8, !tbaa !23
  %.not44.i.i.i.us = icmp eq i16 %i.at, 0
  br i1 %.not44.i.i.i.us, label %mbedtls_mpi_is_prime_ext.exit.us.thread, label %.lr.ph.i.i.i.us

.lr.ph.i.i.i.us:                                  ; preds = %mbedtls_mpi_shift_r.exit.us
  %i.ax = zext i16 %i.at to i64                   ; 3 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.t, %.lr.ph.i.i.i.us
  %.03545.i.i.i.us = phi i64 [ %i.ax, %.lr.ph.i.i.i.us ], [ %i.bb, %bb.t ] ; 2 uses
  %i.ay = getelementptr [8 x i8], ptr %i.au, i64 %.03545.i.i.i.us
  %i.az = getelementptr i8, ptr %i.ay, i64 -8
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !26
  %.not39.i.i.i.us = icmp eq i64 %i.ba, 0
  br i1 %.not39.i.i.i.us, label %bb.t, label %.lr.ph.i.i9.i.us

bb.t:                                             ; preds = %bb.s
  %i.bb = add nsw i64 %.03545.i.i.i.us, -1        ; 2 uses
  %.not.i.i.i.us = icmp eq i64 %i.bb, 0
  br i1 %.not.i.i.i.us, label %mbedtls_mpi_is_prime_ext.exit.us.thread, label %bb.s, !llvm.loop !1

.lr.ph.i.i9.i.us:                                 ; preds = %bb.s, %bb.u
  %.03545.i.i10.i.us = phi i64 [ %i.bf, %bb.u ], [ %i.ax, %bb.s ] ; 3 uses
  %i.bc = getelementptr [8 x i8], ptr %i.au, i64 %.03545.i.i10.i.us
  %i.bd = getelementptr i8, ptr %i.bc, i64 -8
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !26
  %.not39.i.i11.i.us = icmp eq i64 %i.be, 0
  br i1 %.not39.i.i11.i.us, label %bb.u, label %.lr.ph51.i.i12.i.us

bb.u:                                             ; preds = %.lr.ph.i.i9.i.us
  %i.bf = add nsw i64 %.03545.i.i10.i.us, -1      ; 2 uses
  %.not.i.i16.i.us = icmp eq i64 %i.bf, 0
  br i1 %.not.i.i16.i.us, label %.lr.ph.i.i19.i.us.preheader, label %.lr.ph.i.i9.i.us, !llvm.loop !1

.lr.ph51.i.i12.i.us:                              ; preds = %.lr.ph.i.i9.i.us
  %or.cond.not.i.us = icmp eq i64 %.03545.i.i10.i.us, 1
  br i1 %or.cond.not.i.us, label %.preheader.i.i.preheader.i.us, label %.lr.ph.i.i19.i.us.preheader

.preheader.i.i.preheader.i.us:                    ; preds = %.lr.ph51.i.i12.i.us
  %i.bg = load i64, ptr %i.au, align 8, !tbaa !26
  %or.cond43.not.i.us.a = icmp eq i64 %i.bg, 1
  br i1 %or.cond43.not.i.us.a, label %mbedtls_mpi_is_prime_ext.exit.us.thread, label %.lr.ph.i.i19.i.us.preheader

.lr.ph.i.i19.i.us.preheader:                      ; preds = %bb.u, %.preheader.i.i.preheader.i.us, %.lr.ph51.i.i12.i.us
  br label %.lr.ph.i.i19.i.us

.lr.ph.i.i19.i.us:                                ; preds = %.lr.ph.i.i19.i.us.preheader, %bb.v
  %.03545.i.i20.i.us = phi i64 [ %i.bk, %bb.v ], [ %i.ax, %.lr.ph.i.i19.i.us.preheader ] ; 3 uses
  %i.bh = getelementptr [8 x i8], ptr %i.au, i64 %.03545.i.i20.i.us
  %i.bi = getelementptr i8, ptr %i.bh, i64 -8
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !26
  %.not39.i.i21.i.us = icmp eq i64 %i.bj, 0
  br i1 %.not39.i.i21.i.us, label %bb.v, label %.lr.ph51.i.i22.i.us

bb.v:                                             ; preds = %.lr.ph.i.i19.i.us
  %i.bk = add nsw i64 %.03545.i.i20.i.us, -1      ; 2 uses
  %.not.i.i29.i.us = icmp eq i64 %i.bk, 0
  br i1 %.not.i.i29.i.us, label %.thread40.i.us, label %.lr.ph.i.i19.i.us, !llvm.loop !1

.lr.ph51.i.i22.i.us:                              ; preds = %.lr.ph.i.i19.i.us
  %or.cond44.not.i.us = icmp eq i64 %.03545.i.i20.i.us, 1
  br i1 %or.cond44.not.i.us, label %.preheader.i.i26.preheader.i.us, label %.thread40.i.us

.preheader.i.i26.preheader.i.us:                  ; preds = %.lr.ph51.i.i22.i.us
  %i.bl = load i64, ptr %i.au, align 8, !tbaa !26
  %or.cond45.not.i.us = icmp eq i64 %i.bl, 2
  br i1 %or.cond45.not.i.us, label %mbedtls_mpi_is_prime_ext.exit.thread, label %.thread40.i.us

.thread40.i.us:                                   ; preds = %bb.v, %.preheader.i.i26.preheader.i.us, %.lr.ph51.i.i22.i.us
  %i.bm = call fastcc i32 @mpi_check_small_factors(ptr noundef nonnull %9) ; 2 uses
  switch i32 %i.bm, label %mbedtls_mpi_is_prime_ext.exit.us [
    i32 0, label %bb.w
    i32 1, label %mbedtls_mpi_is_prime_ext.exit.thread
  ]

bb.w:                                             ; preds = %.thread40.i.us
  %i.bn = call fastcc i32 @mpi_miller_rabin(ptr noundef nonnull %9, i64 noundef %.0, ptr noundef %3, ptr noundef %4)
  br label %mbedtls_mpi_is_prime_ext.exit.us

mbedtls_mpi_is_prime_ext.exit.us.thread:          ; preds = %bb.t, %.preheader.i.i.preheader.i.us, %mbedtls_mpi_shift_r.exit.us
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  br label %.backedge.us

mbedtls_mpi_is_prime_ext.exit.us:                 ; preds = %bb.w, %.thread40.i.us
  %.0.i.us = phi i32 [ %i.bn, %bb.w ], [ %i.bm, %.thread40.i.us ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  %.not87.us = icmp eq i32 %.0.i.us, -14
  br i1 %.not87.us, label %.backedge.us, label %.loopexit

.backedge.us:                                     ; preds = %mbedtls_mpi_is_prime_ext.exit.us.thread, %mbedtls_mpi_is_prime_ext.exit.us, %.lr.ph.split.us
  %i.bo = call i32 @mbedtls_mpi_fill_random(ptr noundef nonnull %0, i64 noundef %i.ad, ptr noundef %3, ptr noundef %4) ; 2 uses
  %.not.us = icmp eq i32 %i.bo, 0
  br i1 %.not.us, label %.lr.ph.split.us, label %.loopexit

.lr.ph.split:                                     ; preds = %.lr.ph, %.backedge
  %i.bp = load ptr, ptr %0, align 8, !tbaa !23    ; 5 uses
  %i.bq = getelementptr [8 x i8], ptr %i.bp, i64 %i.i
  %i.br = getelementptr i8, ptr %i.bq, i64 -8
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !26
  %i.bt = icmp ult i64 %i.bs, -5402926248376769403
  br i1 %i.bt, label %.backedge, label %bb.x

.backedge:                                        ; preds = %.lr.ph.split
  %i.bu = tail call i32 @mbedtls_mpi_fill_random(ptr noundef nonnull %0, i64 noundef %i.ad, ptr noundef %3, ptr noundef %4) ; 2 uses
  %.not = icmp eq i32 %i.bu, 0
  br i1 %.not, label %.lr.ph.split, label %.loopexit

bb.x:                                             ; preds = %.lr.ph.split
  %.pre117 = load i16, ptr %i.ah, align 2, !tbaa !20 ; 3 uses
  br i1 %i.ag, label %bb.y, label %mbedtls_mpi_shift_r.exit

bb.y:                                             ; preds = %bb.x
  %.not.i = icmp eq i16 %.pre117, 0
  br i1 %.not.i, label %mbedtls_mpi_shift_r.exit.thread, label %bb.z

mbedtls_mpi_shift_r.exit.thread:                  ; preds = %bb.y
  %i.bv = load i64, ptr %i.bp, align 8, !tbaa !26
  %i.bw = or i64 %i.bv, 3
  store i64 %i.bw, ptr %i.bp, align 8, !tbaa !26
  br label %mbedtls_mpi_mod_int.exit.thread

bb.z:                                             ; preds = %bb.y
  %i.bx = zext i16 %.pre117 to i64
  tail call void @mbedtls_mpi_core_shift_r(ptr noundef nonnull %i.bp, i64 noundef %i.bx, i64 noundef %i.ai) #17
  %.pre = load ptr, ptr %0, align 8, !tbaa !23
  %.pre116 = load i16, ptr %i.ah, align 2, !tbaa !20
  br label %mbedtls_mpi_shift_r.exit

mbedtls_mpi_shift_r.exit:                         ; preds = %bb.z, %bb.x
  %i.by = phi i16 [ %.pre116, %bb.z ], [ %.pre117, %bb.x ] ; 2 uses
  %i.bz = phi ptr [ %.pre, %bb.z ], [ %i.bp, %bb.x ] ; 3 uses
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !26
  %i.cb = or i64 %i.ca, 3
  store i64 %i.cb, ptr %i.bz, align 8, !tbaa !26
  %i.cc = icmp eq i16 %i.by, 0
  br i1 %i.cc, label %mbedtls_mpi_mod_int.exit.thread, label %bb.aa

mbedtls_mpi_is_prime_ext.exit.thread:             ; preds = %.preheader.i.i26.preheader.i.us, %.thread40.i.us
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  br label %.loopexit

bb.aa:                                            ; preds = %mbedtls_mpi_shift_r.exit
  %i.cd = zext i16 %i.by to i64
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ab, %bb.aa
  %.042.i = phi i64 [ 0, %bb.aa ], [ %i.cm, %bb.ab ]
  %.03541.i = phi i64 [ %i.cd, %bb.aa ], [ %i.cn, %bb.ab ] ; 2 uses
  %i.ce = getelementptr [8 x i8], ptr %i.bz, i64 %.03541.i
  %i.cf = getelementptr i8, ptr %i.ce, i64 -8
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !26
  %.fr40.i = freeze i64 %i.cg                     ; 2 uses
  %i.ch = tail call i64 @llvm.fshl.i64(i64 %.042.i, i64 %.fr40.i, i64 32)
  %i.ci = urem i64 %i.ch, 3
  %i.cj = and i64 %.fr40.i, 4294967295
  %i.ck = shl nuw nsw i64 %i.ci, 32
  %i.cl = or disjoint i64 %i.ck, %i.cj
  %i.cm = urem i64 %i.cl, 3                       ; 4 uses
  %i.cn = add nsw i64 %.03541.i, -1               ; 2 uses
  %.not.i88 = icmp eq i64 %i.cn, 0
  br i1 %.not.i88, label %mbedtls_mpi_mod_int.exit, label %bb.ab, !llvm.loop !2

mbedtls_mpi_mod_int.exit:                         ; preds = %bb.ab
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cp = load i16, ptr %i.co, align 8, !tbaa !21
  %i.cq = icmp slt i16 %i.cp, 0
  %i.cr = icmp ne i64 %i.cm, 0
  %or.cond.i = select i1 %i.cq, i1 %i.cr, i1 false
  %i.cs = xor i64 %i.cm, 3
  %spec.select = select i1 %or.cond.i, i64 %i.cs, i64 %i.cm
  switch i64 %spec.select, label %bb.ad [
    i64 0, label %mbedtls_mpi_mod_int.exit.thread
    i64 1, label %bb.ac
  ]

mbedtls_mpi_mod_int.exit.thread:                  ; preds = %mbedtls_mpi_shift_r.exit.thread, %mbedtls_mpi_shift_r.exit, %mbedtls_mpi_mod_int.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #17
  store i64 8, ptr %i.d, align 8, !tbaa !26
  %i.ct = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i16 1, ptr %i.ct, align 8, !tbaa !21
  %i.cu = getelementptr inbounds nuw i8, ptr %8, i64 10
  store i16 1, ptr %i.cu, align 2, !tbaa !20
  store ptr %i.d, ptr %8, align 8, !tbaa !23
  %i.cv = call fastcc range(i32 -141, 1) i32 @add_sub_mpi(ptr noundef nonnull %0, ptr noundef nonnull readonly %0, ptr noundef nonnull readonly %8, i32 noundef 1) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  %.not82 = icmp eq i32 %i.cv, 0
  br i1 %.not82, label %bb.ad, label %.loopexit

bb.ac:                                            ; preds = %mbedtls_mpi_mod_int.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  store i64 4, ptr %i.c, align 8, !tbaa !26
  %i.cw = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i16 1, ptr %i.cw, align 8, !tbaa !21
  %i.cx = getelementptr inbounds nuw i8, ptr %7, i64 10
  store i16 1, ptr %i.cx, align 2, !tbaa !20
  store ptr %i.c, ptr %7, align 8, !tbaa !23
  %i.cy = call fastcc range(i32 -141, 1) i32 @add_sub_mpi(ptr noundef nonnull %0, ptr noundef nonnull readonly %0, ptr noundef nonnull readonly %7, i32 noundef 1) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  %.not81 = icmp eq i32 %i.cy, 0
  br i1 %.not81, label %bb.ad, label %.loopexit

bb.ad:                                            ; preds = %mbedtls_mpi_mod_int.exit, %mbedtls_mpi_mod_int.exit.thread, %bb.ac
  %i.cz = call i32 @mbedtls_mpi_copy(ptr noundef nonnull %10, ptr noundef nonnull %0) ; 2 uses
  %.not83 = icmp eq i32 %i.cz, 0
  br i1 %.not83, label %bb.ae, label %.loopexit

bb.ae:                                            ; preds = %bb.ad
  %i.da = load i16, ptr %i.g, align 2, !tbaa !20  ; 2 uses
  %.not.i89 = icmp eq i16 %i.da, 0
  br i1 %.not.i89, label %mbedtls_mpi_shift_r.exit90, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.db = load ptr, ptr %10, align 8, !tbaa !23
  %i.dc = zext i16 %i.da to i64
  call void @mbedtls_mpi_core_shift_r(ptr noundef %i.db, i64 noundef %i.dc, i64 noundef 1) #17
  br label %mbedtls_mpi_shift_r.exit90

mbedtls_mpi_shift_r.exit90:                       ; preds = %bb.ae, %bb.af
  %i.dd = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.de = getelementptr inbounds nuw i8, ptr %6, i64 10
  %i.df = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.dg = getelementptr inbounds nuw i8, ptr %5, i64 10
  br label %bb.ag

bb.ag:                                            ; preds = %mbedtls_mpi_shift_r.exit90, %bb.am
  %i.dh = call fastcc i32 @mpi_check_small_factors(ptr noundef nonnull %0) ; 2 uses
  %i.di = icmp eq i32 %i.dh, 0
  br i1 %i.di, label %bb.ah, label %bb.ak

bb.ah:                                            ; preds = %bb.ag
  %i.dj = call fastcc i32 @mpi_check_small_factors(ptr noundef nonnull %10) ; 2 uses
  %i.dk = icmp eq i32 %i.dj, 0
  br i1 %i.dk, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  %i.dl = call fastcc i32 @mpi_miller_rabin(ptr noundef nonnull %0, i64 noundef %.0, ptr noundef %3, ptr noundef %4) ; 2 uses
  %i.dm = icmp eq i32 %i.dl, 0
  br i1 %i.dm, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.dn = call fastcc i32 @mpi_miller_rabin(ptr noundef nonnull %10, i64 noundef %.0, ptr noundef %3, ptr noundef %4) ; 2 uses
  %.not84 = icmp eq i32 %i.dn, -14
  br i1 %.not84, label %bb.al, label %.loopexit

bb.ak:                                            ; preds = %bb.ai, %bb.ah, %bb.ag
  %.061 = phi i32 [ %i.dl, %bb.ai ], [ %i.dj, %bb.ah ], [ %i.dh, %bb.ag ] ; 2 uses
  %.old2.not = icmp eq i32 %.061, -14
  br i1 %.old2.not, label %bb.al, label %.loopexit

bb.al:                                            ; preds = %bb.aj, %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  store i64 12, ptr %i.b, align 8, !tbaa !26
  store i16 1, ptr %i.dd, align 8, !tbaa !21
  store i16 1, ptr %i.de, align 2, !tbaa !20
  store ptr %i.b, ptr %6, align 8, !tbaa !23
  %i.do = call fastcc range(i32 -141, 1) i32 @add_sub_mpi(ptr noundef nonnull %0, ptr noundef nonnull readonly %0, ptr noundef nonnull readonly %6, i32 noundef 1) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  %.not85 = icmp eq i32 %i.do, 0
  br i1 %.not85, label %bb.am, label %.loopexit

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i64 6, ptr %i.a, align 8, !tbaa !26
  store i16 1, ptr %i.df, align 8, !tbaa !21
  store i16 1, ptr %i.dg, align 2, !tbaa !20
  store ptr %i.a, ptr %5, align 8, !tbaa !23
  %i.dp = call fastcc range(i32 -141, 1) i32 @add_sub_mpi(ptr noundef nonnull %10, ptr noundef nonnull readonly %10, ptr noundef nonnull readonly %5, i32 noundef 1) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  %.not86 = icmp eq i32 %i.dp, 0
  br i1 %.not86, label %bb.ag, label %.loopexit

.loopexit:                                        ; preds = %.backedge, %bb.am, %bb.al, %bb.ak, %bb.aj, %.backedge.us, %mbedtls_mpi_is_prime_ext.exit.us, %bb.o, %mbedtls_mpi_is_prime_ext.exit.thread, %bb.ad, %bb.ac, %mbedtls_mpi_mod_int.exit.thread
end_hunk_1
