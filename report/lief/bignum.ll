Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lief/original/bignum?download=true
inline.NumInlined: 198
inline.NumDeleted: 18
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 14
begin_hunk_0_@mbedtls_mpi_exp_mod_optionally_safe:bb.a
  %i.cv = load ptr, ptr %6, align 8, !tbaa !23    ; 2 uses
  %.not.i = icmp eq ptr %i.cv, null
  br i1 %.not.i, label %mbedtls_mpi_free.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cw = load i16, ptr %i.ap, align 2, !tbaa !20
  %i.cx = zext i16 %i.cw to i64
  %i.cy = shl nuw nsw i64 %i.cx, 3
  call void @mbedtls_zeroize_and_free(ptr noundef nonnull %i.cv, i64 noundef %i.cy) #17
  br label %mbedtls_mpi_free.exit

mbedtls_mpi_free.exit:                            ; preds = %bb.ae, %bb.ad, %bb.ac
  %.073112 = phi i32 [ %.073113, %bb.ac ], [ %.073114, %bb.ad ], [ %.073114, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  br label %mbedtls_mpi_cmp_int.exit.thread

mbedtls_mpi_cmp_int.exit.thread:                  ; preds = %bb.c, %bb.a, %mbedtls_mpi_free.exit, %bb.k, %mbedtls_mpi_cmp_int.exit101.thread, %bb.h, %mbedtls_mpi_cmp_int.exit101, %mbedtls_mpi_cmp_int.exit, %bb.d, %bb.j
  %.2 = phi i32 [ -135, %mbedtls_mpi_cmp_int.exit101.thread ], [ -135, %mbedtls_mpi_cmp_int.exit ], [ -135, %mbedtls_mpi_cmp_int.exit101 ], [ %i.ah, %bb.j ], [ -135, %bb.d ], [ -135, %bb.h ], [ %.073112, %mbedtls_mpi_free.exit ], [ -141, %bb.k ], [ -135, %bb.a ], [ -135, %bb.c ]
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define hidden i32 @mbedtls_mpi_exp_mod_unsafe(ptr nofree noundef captures(address) %0, ptr nofree noundef readonly captures(address) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, ptr nofree noundef captures(address_is_null) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @mbedtls_mpi_exp_mod_optionally_safe(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 707406378, ptr noundef %3, ptr noundef %4)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define hidden range(i32 -141, 1) i32 @mbedtls_mpi_gcd_modinv_odd(ptr nofree noundef captures(address) %0, ptr nofree noundef captures(address) %1, ptr nofree noundef readonly captures(address) %2, ptr nofree noundef readonly captures(address) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %.not = icmp eq ptr %1, null                    ; 6 uses
  %i.b = select i1 %.not, i64 4, i64 5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i64 0, ptr %i.a, align 8, !tbaa !26
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 10 ; 2 uses
  %i.d = load i16, ptr %i.c, align 2, !tbaa !20   ; 2 uses
  %.not44.i.i = icmp eq i16 %i.d, 0
  br i1 %.not44.i.i, label %._crit_edge.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.e = zext i16 %i.d to i64                     ; 2 uses
  %i.f = load ptr, ptr %2, align 8, !tbaa !23     ; 2 uses
  br label %bb.b

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
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !26 ; 2 uses
  %i.bh = and i64 %i.bg, 1
  %.not76.not = icmp eq i64 %i.bh, 0
  br i1 %.not76.not, label %mbedtls_mpi_cmp_mpi.exit.thread133, label %bb.q

bb.q:                                             ; preds = %mbedtls_mpi_get_bit.exit
  br i1 %.not, label %bb.v, label %.lr.ph.i.i87

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
  %i.bo = load i16, ptr %i.bn, align 8, !tbaa !21 ; 3 uses
  br i1 %i.bm, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.lr.ph51.i.i90
  %i.bp = sext i16 %i.bo to i32
  br label %mbedtls_mpi_cmp_int.exit95

bb.t:                                             ; preds = %.lr.ph51.i.i90
  %or.cond172 = icmp slt i16 %i.bo, 0
  br i1 %or.cond172, label %mbedtls_mpi_cmp_int.exit95, label %.preheader.i.i.preheader

.preheader.i.i.preheader:                         ; preds = %bb.t
  %i.bq = icmp ugt i64 %i.bg, 1
  br i1 %i.bq, label %bb.u, label %mbedtls_mpi_cmp_mpi.exit.thread133

bb.u:                                             ; preds = %.preheader.i.i.preheader
  %i.br = zext nneg i16 %i.bo to i32
  br label %mbedtls_mpi_cmp_int.exit95

mbedtls_mpi_cmp_int.exit95:                       ; preds = %bb.r, %bb.t, %bb.s, %bb.u
  %.036.i.i93 = phi i32 [ -1, %bb.t ], [ %i.bp, %bb.s ], [ %i.br, %bb.u ], [ -1, %bb.r ]
  %i.bs = icmp eq i32 %.036.i.i93, 0
  %i.bt = icmp eq ptr %2, %3
  %or.cond84 = or i1 %i.bt, %i.bs
  br i1 %or.cond84, label %mbedtls_mpi_cmp_mpi.exit.thread133, label %.thread170

bb.v:                                             ; preds = %bb.q
  %.old = icmp eq ptr %2, %3
  br i1 %.old, label %mbedtls_mpi_cmp_mpi.exit.thread133, label %.thread142

.thread170:                                       ; preds = %mbedtls_mpi_cmp_int.exit95
  %i.bu = icmp eq ptr %1, %3
  %i.bv = icmp eq ptr %0, %3
  %or.cond = or i1 %i.bu, %i.bv
  br i1 %or.cond, label %mbedtls_mpi_cmp_mpi.exit.thread133, label %.thread142

.thread142:                                       ; preds = %bb.v, %.thread170
  %i.bw = icmp eq ptr %0, null                    ; 4 uses
  %i.bx = icmp ugt i16 %i.s, 10000
  br i1 %i.bx, label %mbedtls_mpi_free.exit, label %bb.w

bb.w:                                             ; preds = %.thread142
  %.sroa.gep104 = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 3 uses
  br i1 %i.bw, label %.cont, label %.else

.else:                                            ; preds = %bb.w
  %.else.val = load i16, ptr %.sroa.gep104, align 2, !tbaa !20
  %i.by = zext i16 %.else.val to i64
  br label %.cont

.cont:                                            ; preds = %bb.w, %.else
  %i.bz = phi i64 [ 0, %bb.w ], [ %i.by, %.else ] ; 2 uses
  %i.ca = icmp samesign ult i64 %i.bz, %i.be
  br i1 %i.ca, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %.cont
  %i.cb = tail call noalias ptr @calloc(i64 noundef %i.be, i64 noundef 8) #18 ; 4 uses
  %i.cc = icmp eq ptr %i.cb, null
  br i1 %i.cc, label %mbedtls_mpi_free.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  br i1 %i.bw, label %bb.aa, label %.cont115

.cont115:                                         ; preds = %bb.y
  %.else.val118 = load ptr, ptr %0, align 8, !tbaa !23 ; 3 uses
  %.not.i97 = icmp eq ptr %.else.val118, null
  br i1 %.not.i97, label %.cont106.else, label %bb.z

bb.z:                                             ; preds = %.cont115
  %i.cd = shl nuw nsw i64 %i.bz, 3                ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.cb, ptr nonnull align 8 %.else.val118, i64 %i.cd, i1 false)
  tail call void @mbedtls_zeroize_and_free(ptr noundef nonnull %.else.val118, i64 noundef %i.cd) #17
  br label %.cont106.else

.cont106.else:                                    ; preds = %bb.z, %.cont115
  store i16 %i.s, ptr %.sroa.gep104, align 2, !tbaa !20
  store ptr %i.cb, ptr %0, align 8, !tbaa !23
  %.pre177.pre = load i16, ptr %i.r, align 2, !tbaa !20
  br label %bb.aa

bb.aa:                                            ; preds = %.cont, %bb.y, %.cont106.else
  %.pre177 = phi i16 [ %i.s, %bb.y ], [ %.pre177.pre, %.cont106.else ], [ %i.s, %.cont ] ; 2 uses
  %.sroa.9.0.ph = phi i16 [ %i.s, %bb.y ], [ 0, %.cont106.else ], [ 0, %.cont ] ; 3 uses
  %.sroa.0.0.ph = phi ptr [ %i.cb, %bb.y ], [ null, %.cont106.else ], [ null, %.cont ] ; 4 uses
  br i1 %.not, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ce = zext i16 %.pre177 to i64
  %i.cf = tail call i32 @mbedtls_mpi_grow(ptr noundef nonnull %1, i64 noundef %i.ce) ; 2 uses
  %.not78 = icmp eq i32 %i.cf, 0
  br i1 %.not78, label %._crit_edge176, label %mbedtls_mpi_grow.exit

._crit_edge176:                                   ; preds = %bb.ab
  %.pre = load i16, ptr %i.r, align 2, !tbaa !20
  br label %bb.ac

bb.ac:                                            ; preds = %._crit_edge176, %bb.aa
  %i.cg = phi i16 [ %.pre, %._crit_edge176 ], [ %.pre177, %bb.aa ] ; 3 uses
  %i.ch = zext i16 %i.cg to i64                   ; 3 uses
  %i.ci = shl nuw nsw i64 %i.ch, 3
  %i.cj = tail call noalias ptr @calloc(i64 noundef %i.ci, i64 noundef %i.b) #18 ; 6 uses
  %i.ck = icmp eq ptr %i.cj, null
  br i1 %i.ck, label %mbedtls_mpi_grow.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  br i1 %.not, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cl = load ptr, ptr %1, align 8, !tbaa !23
  br label %bb.af

bb.af:                                            ; preds = %bb.ad, %bb.ae
  %i.cm = phi ptr [ %i.cl, %bb.ae ], [ null, %bb.ad ] ; 2 uses
  %i.cn = load ptr, ptr %2, align 8, !tbaa !23    ; 2 uses
  %.not79 = icmp eq ptr %i.cn, null               ; 2 uses
  %spec.select = select i1 %.not79, ptr %i.a, ptr %i.cn ; 2 uses
  %i.co = load i16, ptr %i.c, align 2, !tbaa !20  ; 2 uses
  %.not80 = icmp ult i16 %i.co, %i.cg
  %spec.select83 = select i1 %.not79, i16 1, i16 %i.co
  %spec.select173 = select i1 %.not80, i16 %spec.select83, i16 %i.cg
  %i.cp = zext i16 %spec.select173 to i64         ; 2 uses
  br i1 %i.bw, label %.then113, label %.else114

.then113:                                         ; preds = %bb.af
  %i.cq = load ptr, ptr %3, align 8, !tbaa !23
  call void @mbedtls_mpi_core_gcd_modinv_odd(ptr noundef %.sroa.0.0.ph, ptr noundef %i.cm, ptr noundef nonnull %spec.select, i64 noundef %i.cp, ptr noundef %i.cq, i64 noundef %i.ch, ptr noundef nonnull %i.cj) #17
  br label %.cont112

.else114:                                         ; preds = %bb.af
  %.else.val126 = load ptr, ptr %0, align 8, !tbaa !23
  %i.cr = load ptr, ptr %3, align 8, !tbaa !23
  call void @mbedtls_mpi_core_gcd_modinv_odd(ptr noundef %.else.val126, ptr noundef %i.cm, ptr noundef nonnull %spec.select, i64 noundef %i.cp, ptr noundef %i.cr, i64 noundef %i.ch, ptr noundef nonnull %i.cj) #17
  %.sroa.gep99 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 1, ptr %.sroa.gep99, align 8, !tbaa !21
  br label %.cont112

.cont112:                                         ; preds = %.else114, %.then113
  br i1 %.not, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %.cont112
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i16 1, ptr %i.cs, align 8, !tbaa !21
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %.cont112
  br i1 %i.bw, label %.cont108, label %.cont108.thread

.cont108:                                         ; preds = %bb.ah
  %i.ct = load i16, ptr %i.r, align 2, !tbaa !20  ; 2 uses
  %i.cu = icmp ugt i16 %.sroa.9.0.ph, %i.ct
  br i1 %i.cu, label %.cont119, label %bb.ai

.cont108.thread:                                  ; preds = %bb.ah
  %.else.val111 = load i16, ptr %.sroa.gep104, align 2, !tbaa !20 ; 2 uses
  %i.cv = load i16, ptr %i.r, align 2, !tbaa !20  ; 2 uses
  %i.cw = icmp ugt i16 %.else.val111, %i.cv
  br i1 %i.cw, label %.else121, label %bb.ai

.else121:                                         ; preds = %.cont108.thread
  %.else.val122 = load ptr, ptr %0, align 8, !tbaa !23
  br label %.cont119

.cont119:                                         ; preds = %.cont108, %.else121
  %i.cx = phi i16 [ %.else.val111, %.else121 ], [ %.sroa.9.0.ph, %.cont108 ]
  %i.cy = phi i16 [ %i.cv, %.else121 ], [ %i.ct, %.cont108 ] ; 2 uses
  %i.cz = phi ptr [ %.else.val122, %.else121 ], [ %.sroa.0.0.ph, %.cont108 ]
  %i.da = zext i16 %i.cy to i64
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %i.da
  %narrow = sub nuw i16 %i.cx, %i.cy
  %i.dc = zext i16 %narrow to i64
  %i.dd = shl nuw nsw i64 %i.dc, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.db, i8 0, i64 %i.dd, i1 false)
  br label %bb.ai

bb.ai:                                            ; preds = %.cont108.thread, %.cont119, %.cont108
  br i1 %.not, label %mbedtls_mpi_grow.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.df = load i16, ptr %i.de, align 2, !tbaa !20 ; 2 uses
  %i.dg = load i16, ptr %i.r, align 2, !tbaa !20  ; 3 uses
  %i.dh = icmp ugt i16 %i.df, %i.dg
  br i1 %i.dh, label %bb.ak, label %mbedtls_mpi_grow.exit

bb.ak:                                            ; preds = %bb.aj
  %i.di = load ptr, ptr %1, align 8, !tbaa !23
  %i.dj = zext i16 %i.dg to i64
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %i.dj
  %narrow82 = sub nuw i16 %i.df, %i.dg
  %i.dl = zext i16 %narrow82 to i64
  %i.dm = shl nuw nsw i64 %i.dl, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.dk, i8 0, i64 %i.dm, i1 false)
  br label %mbedtls_mpi_grow.exit

mbedtls_mpi_grow.exit:                            ; preds = %bb.ac, %bb.ai, %bb.aj, %bb.ak, %bb.ab
  %.058 = phi ptr [ null, %bb.ac ], [ null, %bb.ab ], [ %i.cj, %bb.ai ], [ %i.cj, %bb.ak ], [ %i.cj, %bb.aj ] ; 2 uses
  %.1 = phi i32 [ -141, %bb.ac ], [ %i.cf, %bb.ab ], [ 0, %bb.ai ], [ 0, %bb.ak ], [ 0, %bb.aj ] ; 2 uses
  %.not.i98 = icmp eq ptr %.sroa.0.0.ph, null
  br i1 %.not.i98, label %mbedtls_mpi_free.exit, label %bb.al

bb.al:                                            ; preds = %mbedtls_mpi_grow.exit
  %i.dn = zext nneg i16 %.sroa.9.0.ph to i64
  %i.do = shl nuw nsw i64 %i.dn, 3
  call void @mbedtls_zeroize_and_free(ptr noundef nonnull %.sroa.0.0.ph, i64 noundef %i.do) #17
  br label %mbedtls_mpi_free.exit

mbedtls_mpi_free.exit:                            ; preds = %bb.x, %.thread142, %mbedtls_mpi_grow.exit, %bb.al
  %.1166 = phi i32 [ %.1, %bb.al ], [ %.1, %mbedtls_mpi_grow.exit ], [ -141, %.thread142 ], [ -141, %bb.x ]
  %.058165 = phi ptr [ %.058, %bb.al ], [ %.058, %mbedtls_mpi_grow.exit ], [ null, %.thread142 ], [ null, %bb.x ]
  call void @free(ptr noundef %.058165) #17
  br label %mbedtls_mpi_cmp_mpi.exit.thread133

mbedtls_mpi_cmp_mpi.exit.thread133:               ; preds = %.preheader.i.i.preheader, %mbedtls_mpi_cmp_mpi.exit.thread, %bb.l, %bb.v, %.thread170, %mbedtls_mpi_cmp_int.exit, %mbedtls_mpi_cmp_mpi.exit, %mbedtls_mpi_get_bit.exit, %mbedtls_mpi_cmp_int.exit95, %mbedtls_mpi_free.exit
  %.0 = phi i32 [ %.1166, %mbedtls_mpi_free.exit ], [ -135, %mbedtls_mpi_cmp_int.exit ], [ -135, %mbedtls_mpi_cmp_int.exit95 ], [ -135, %mbedtls_mpi_get_bit.exit ], [ -135, %mbedtls_mpi_cmp_mpi.exit ], [ -135, %.thread170 ], [ -135, %bb.v ], [ -135, %mbedtls_mpi_cmp_mpi.exit.thread ], [ -135, %bb.l ], [ -135, %.preheader.i.i.preheader ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret i32 %.0
}

declare void @mbedtls_mpi_core_gcd_modinv_odd(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #13

; Function Attrs: nounwind uwtable
define hidden range(i32 -141, 1) i32 @mbedtls_mpi_gcd(ptr nofree noundef captures(address) %0, ptr nofree noundef readonly captures(address) %1, ptr nofree noundef readonly captures(address) %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.mbedtls_mpi, align 8        ; 12 uses
  %4 = alloca %struct.mbedtls_mpi, align 8        ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i16 1, ptr %i.a, align 8, !tbaa !21
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 10 ; 4 uses
  store i16 0, ptr %i.b, align 2, !tbaa !20
  store ptr null, ptr %3, align 8, !tbaa !23
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i16 1, ptr %i.c, align 8, !tbaa !21
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 10 ; 4 uses
  store i16 0, ptr %i.d, align 2, !tbaa !20
  store ptr null, ptr %4, align 8, !tbaa !23
  %i.e = call i32 @mbedtls_mpi_copy(ptr noundef nonnull %3, ptr noundef %1) ; 2 uses
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.b, label %mbedtls_mpi_grow.exit

bb.b:                                             ; preds = %bb.a
  %i.f = call i32 @mbedtls_mpi_copy(ptr noundef nonnull %4, ptr noundef %2) ; 2 uses
  %.not21 = icmp eq i32 %i.f, 0
  br i1 %.not21, label %bb.c, label %mbedtls_mpi_grow.exit

bb.c:                                             ; preds = %bb.b
  store i16 1, ptr %i.c, align 8, !tbaa !21
  store i16 1, ptr %i.a, align 8, !tbaa !21
  %i.g = load i16, ptr %i.d, align 2, !tbaa !20   ; 5 uses
  %narrow = call i16 @llvm.umax.i16(i16 %i.g, i16 1) ; 4 uses
  %i.h = zext i16 %narrow to i64                  ; 2 uses
  %i.i = icmp ugt i16 %i.g, 10000
  br i1 %i.i, label %mbedtls_mpi_grow.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = load i16, ptr %i.b, align 2, !tbaa !20   ; 3 uses
  %i.k = zext i16 %i.j to i64                     ; 2 uses
  %i.l = icmp ugt i16 %narrow, %i.j
  br i1 %i.l, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.m = call noalias ptr @calloc(i64 noundef %i.h, i64 noundef 8) #18 ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %mbedtls_mpi_grow.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = load ptr, ptr %3, align 8, !tbaa !23     ; 3 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = shl nuw nsw i64 %i.k, 3                  ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.m, ptr nonnull align 8 %i.o, i64 %i.p, i1 false)
  call void @mbedtls_zeroize_and_free(ptr noundef nonnull %i.o, i64 noundef %i.p) #17
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  store i16 %narrow, ptr %i.b, align 2, !tbaa !20
  store ptr %i.m, ptr %3, align 8, !tbaa !23
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.d
  %.pre-phi = phi i64 [ %i.h, %bb.h ], [ %i.k, %bb.d ] ; 6 uses
  %i.q = phi i16 [ %narrow, %bb.h ], [ %i.j, %bb.d ] ; 4 uses
  %i.r = icmp ugt i16 %i.q, 10000
  br i1 %i.r, label %mbedtls_mpi_grow.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.s = zext nneg i16 %i.g to i64
  %i.t = icmp samesign ugt i16 %i.q, %i.g
  br i1 %i.t, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.u = call noalias ptr @calloc(i64 noundef %.pre-phi, i64 noundef 8) #18 ; 3 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %mbedtls_mpi_grow.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.w = load ptr, ptr %4, align 8, !tbaa !23     ; 3 uses
  %.not.i27 = icmp eq ptr %i.w, null
  br i1 %.not.i27, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.x = shl nuw nsw i64 %i.s, 3                  ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.u, ptr nonnull align 8 %i.w, i64 %i.x, i1 false)
  call void @mbedtls_zeroize_and_free(ptr noundef nonnull %i.w, i64 noundef %i.x) #17
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  store i16 %i.q, ptr %i.d, align 2, !tbaa !20
  store ptr %i.u, ptr %4, align 8, !tbaa !23
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.j
  %i.y = phi i16 [ %i.q, %bb.n ], [ %i.g, %bb.j ]
  %i.z = load ptr, ptr %3, align 8, !tbaa !23     ; 5 uses
  %i.aa = call i64 @mbedtls_mpi_core_check_zero_ct(ptr noundef %i.z, i64 noundef %.pre-phi) #17
  %i.ab = call i64 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 0) #17, !srcloc !57
  %i.ac = icmp eq i64 %i.aa, %i.ab
  br i1 %i.ac, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ad = call i32 @mbedtls_mpi_copy(ptr noundef %0, ptr noundef nonnull %4)
  br label %mbedtls_mpi_grow.exit

bb.q:                                             ; preds = %bb.o
  %i.ae = load ptr, ptr %4, align 8, !tbaa !23    ; 5 uses
  %i.af = zext nneg i16 %i.y to i64               ; 3 uses
  %i.ag = call i64 @mbedtls_mpi_core_check_zero_ct(ptr noundef %i.ae, i64 noundef %i.af) #17
  %i.ah = call i64 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 0) #17, !srcloc !57
  %i.ai = icmp eq i64 %i.ag, %i.ah
  br i1 %i.ai, label %bb.r, label %.lr.ph.i

bb.r:                                             ; preds = %bb.q
  %i.aj = call i32 @mbedtls_mpi_copy(ptr noundef %0, ptr noundef nonnull %3)
  br label %mbedtls_mpi_grow.exit

.lr.ph.i:                                         ; preds = %bb.q, %bb.t
  %.011.i = phi i64 [ %i.ap, %bb.t ], [ 0, %bb.q ] ; 3 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.011.i
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !26 ; 2 uses
  %.not.i29 = icmp eq i64 %i.al, 0
  br i1 %.not.i29, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.lr.ph.i
  %i.am = shl nuw nsw i64 %.011.i, 6
  %i.an = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.al, i1 true)
  %i.ao = or disjoint i64 %i.an, %i.am
  br label %.lr.ph.i31.preheader

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

end_hunk_0
