Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/ssl_cipher?download=true
inline.NumInlined: 251
inline.NumDeleted: 164
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN4bsslL26ssl_cipher_process_rulestrEPKcPPNS_15cipher_order_stES4_b:bb.a
  %.not135 = icmp eq ptr %i.i, null
  br i1 %.not135, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 9
  store i8 0, ptr %i.j, align 1, !tbaa !43
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %.0116216, i64 1
  br label %.backedge, !llvm.loop !71

bb.g:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %.0116216, i64 1
  br label %.backedge, !llvm.loop !71

bb.h:                                             ; preds = %bb.c
  %i.m = tail call i32 @OPENSSL_isalnum(i32 noundef %i.g)
  %.not129 = icmp eq i32 %i.m, 0
  br i1 %.not129, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  tail call void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 224, ptr noundef nonnull @.str, i32 noundef 849)
  br label %.thread169

bb.j:                                             ; preds = %bb.b
  switch i8 %i.f, label %.thread [
    i8 45, label %bb.o
    i8 43, label %bb.k
    i8 33, label %bb.l
    i8 64, label %bb.m
    i8 91, label %bb.n
  ]

bb.k:                                             ; preds = %bb.j
  br label %bb.o

bb.l:                                             ; preds = %bb.j
  br label %bb.o

bb.m:                                             ; preds = %bb.j
  br label %bb.o

bb.n:                                             ; preds = %bb.j
  %i.n = getelementptr inbounds nuw i8, ptr %.0116216, i64 1
  br label %.backedge, !llvm.loop !71

bb.o:                                             ; preds = %bb.j, %bb.l, %bb.m, %bb.k
  %i.o = phi i1 [ true, %bb.m ], [ false, %bb.l ], [ false, %bb.k ], [ false, %bb.j ]
  %.0107 = phi i32 [ 5, %bb.m ], [ 2, %bb.l ], [ 4, %bb.k ], [ 3, %bb.j ]
  %.1117 = getelementptr inbounds nuw i8, ptr %.0116216, i64 1
  br i1 %.0112218, label %bb.p, label %.thread

bb.p:                                             ; preds = %bb.o
  tail call void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 168, ptr noundef nonnull @.str, i32 noundef 879)
  br label %.thread169

.thread:                                          ; preds = %bb.j, %bb.h, %bb.o
  %.0107149 = phi i32 [ %.0107, %bb.o ], [ 1, %bb.h ], [ 1, %bb.j ]
  %i.p = phi i1 [ %i.o, %bb.o ], [ false, %bb.h ], [ false, %bb.j ]
  %i.q = phi i8 [ 1, %bb.o ], [ 0, %bb.h ], [ 0, %bb.j ] ; 2 uses
  %.1117148 = phi ptr [ %.1117, %bb.o ], [ %.0116216, %bb.h ], [ %.0116216, %bb.j ] ; 4 uses
  %i.r = icmp eq i8 %i.f, 58                      ; 2 uses
  %brmerge.i = or i1 %3, %i.r
  br i1 %brmerge.i, label %_ZN4bsslL24is_cipher_list_separatorEcb.exit, label %bb.q

bb.q:                                             ; preds = %.thread
  switch i8 %i.f, label %_ZN4bsslL24is_cipher_list_separatorEcb.exit.thread151 [
    i8 59, label %_ZN4bsslL24is_cipher_list_separatorEcb.exit.thread
    i8 32, label %_ZN4bsslL24is_cipher_list_separatorEcb.exit.thread
    i8 44, label %_ZN4bsslL24is_cipher_list_separatorEcb.exit.thread
  ]

_ZN4bsslL24is_cipher_list_separatorEcb.exit:      ; preds = %.thread
  br i1 %i.r, label %_ZN4bsslL24is_cipher_list_separatorEcb.exit.thread, label %_ZN4bsslL24is_cipher_list_separatorEcb.exit.thread151

_ZN4bsslL24is_cipher_list_separatorEcb.exit.thread: ; preds = %bb.q, %bb.q, %bb.q, %_ZN4bsslL24is_cipher_list_separatorEcb.exit
  %i.s = getelementptr inbounds nuw i8, ptr %.1117148, i64 1
  br label %.backedge, !llvm.loop !71

_ZN4bsslL24is_cipher_list_separatorEcb.exit.thread151: ; preds = %bb.q, %_ZN4bsslL24is_cipher_list_separatorEcb.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  store ptr null, ptr %4, align 8, !tbaa !80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 -1, i64 16, i1 false)
  store i16 0, ptr %i.d, align 8, !tbaa !51
  store i8 %i.q, ptr %i.e, align 2, !tbaa !52
  br i1 %i.p, label %_ZN4bsslL24is_cipher_list_separatorEcb.exit.thread151.split.us, label %_ZN4bsslL24is_cipher_list_separatorEcb.exit.thread151.split

_ZN4bsslL24is_cipher_list_separatorEcb.exit.thread151.split.us: ; preds = %_ZN4bsslL24is_cipher_list_separatorEcb.exit.thread151, %.critedge.us
  %.3119.us = phi ptr [ %i.v, %.critedge.us ], [ %.1117148, %_ZN4bsslL24is_cipher_list_separatorEcb.exit.thread151 ] ; 6 uses
  %.0109.us = phi i64 [ %i.w, %.critedge.us ], [ 0, %_ZN4bsslL24is_cipher_list_separatorEcb.exit.thread151 ] ; 2 uses
  %.0108.us = load i8, ptr %.3119.us, align 1, !tbaa !46 ; 2 uses
  %i.t = sext i8 %.0108.us to i32
  %i.u = tail call i32 @OPENSSL_isalnum(i32 noundef %i.t)
  %.fr.us = freeze i32 %i.u
  %.not174.us = icmp eq i32 %.fr.us, 0
  br i1 %.not174.us, label %switch.early.test.us, label %.critedge.us

switch.early.test.us:                             ; preds = %_ZN4bsslL24is_cipher_list_separatorEcb.exit.thread151.split.us
  switch i8 %.0108.us, label %bb.r [
    i8 95, label %.critedge.us
    i8 46, label %.critedge.us
    i8 45, label %.critedge.us
  ]

.critedge.us:                                     ; preds = %switch.early.test.us, %switch.early.test.us, %switch.early.test.us, %_ZN4bsslL24is_cipher_list_separatorEcb.exit.thread151.split.us
  %i.v = getelementptr inbounds nuw i8, ptr %.3119.us, i64 1
  %i.w = add i64 %.0109.us, 1
  br label %_ZN4bsslL24is_cipher_list_separatorEcb.exit.thread151.split.us, !llvm.loop !72

bb.r:                                             ; preds = %switch.early.test.us
  switch i64 %.0109.us, label %.loopexit250.sink.split.loopexit274 [
    i64 0, label %.loopexit250.sink.split
    i64 8, label %bb.aa
  ]

_ZN4bsslL24is_cipher_list_separatorEcb.exit.thread151.split: ; preds = %_ZN4bsslL24is_cipher_list_separatorEcb.exit.thread151, %bb.z
  %i.x = phi i8 [ %i.bl, %bb.z ], [ %i.q, %_ZN4bsslL24is_cipher_list_separatorEcb.exit.thread151 ] ; 3 uses
  %i.y = phi i16 [ %i.bm, %bb.z ], [ 0, %_ZN4bsslL24is_cipher_list_separatorEcb.exit.thread151 ] ; 6 uses
  %.2118 = phi ptr [ %i.bo, %bb.z ], [ %.1117148, %_ZN4bsslL24is_cipher_list_separatorEcb.exit.thread151 ] ; 4 uses
  %.not = phi i1 [ false, %bb.z ], [ true, %_ZN4bsslL24is_cipher_list_separatorEcb.exit.thread151 ]
  %.099 = phi i32 [ %.3102, %bb.z ], [ 0, %_ZN4bsslL24is_cipher_list_separatorEcb.exit.thread151 ] ; 2 uses
  %.0 = phi i1 [ %.2, %bb.z ], [ false, %_ZN4bsslL24is_cipher_list_separatorEcb.exit.thread151 ] ; 2 uses
  %i.z = phi <4 x i32> [ %i.bn, %bb.z ], [ splat (i32 -1), %_ZN4bsslL24is_cipher_list_separatorEcb.exit.thread151 ] ; 3 uses
  br label %bb.s

bb.s:                                             ; preds = %.critedge, %_ZN4bsslL24is_cipher_list_separatorEcb.exit.thread151.split
  %.3119 = phi ptr [ %.2118, %_ZN4bsslL24is_cipher_list_separatorEcb.exit.thread151.split ], [ %i.ac, %.critedge ] ; 5 uses
  %.0109 = phi i64 [ 0, %_ZN4bsslL24is_cipher_list_separatorEcb.exit.thread151.split ], [ %i.ad, %.critedge ] ; 8 uses
  %.0108 = load i8, ptr %.3119, align 1, !tbaa !46 ; 3 uses
  %i.aa = sext i8 %.0108 to i32
  %i.ab = tail call i32 @OPENSSL_isalnum(i32 noundef %i.aa)
  %.fr = freeze i32 %i.ab
  %.not174 = icmp eq i32 %.fr, 0
  br i1 %.not174, label %switch.early.test, label %.critedge

switch.early.test:                                ; preds = %bb.s
  switch i8 %.0108, label %bb.t [
    i8 95, label %.critedge
    i8 46, label %.critedge
    i8 45, label %.critedge
  ]

.critedge:                                        ; preds = %switch.early.test, %switch.early.test, %switch.early.test, %bb.s
  %i.ac = getelementptr inbounds nuw i8, ptr %.3119, i64 1
  %i.ad = add i64 %.0109, 1
  br label %bb.s, !llvm.loop !72

bb.t:                                             ; preds = %switch.early.test
  %i.ae = icmp eq i64 %.0109, 0
  br i1 %i.ae, label %.loopexit250.sink.split, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.af = icmp ne i8 %.0108, 43                   ; 2 uses
  %or.cond10 = and i1 %.not, %i.af
  br i1 %or.cond10, label %.preheader177, label %.loopexit

.preheader177:                                    ; preds = %bb.u, %_ZN4bsslL11rule_equalsEPKcS1_m.exit140.thread
  %.0110197 = phi i64 [ %i.aw, %_ZN4bsslL11rule_equalsEPKcS1_m.exit140.thread ], [ 0, %bb.u ] ; 2 uses
  %i.ag = getelementptr inbounds nuw [40 x i8], ptr @_ZN4bsslL8kCiphersE, i64 %.0110197 ; 3 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !53 ; 2 uses
  %i.ai = tail call i32 @strncmp(ptr noundef nonnull readonly dereferenceable(1) %i.ah, ptr noundef nonnull readonly dereferenceable(1) %.2118, i64 noundef range(i64 1, 0) %.0109) #23
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %_ZN4bsslL11rule_equalsEPKcS1_m.exit, label %_ZN4bsslL11rule_equalsEPKcS1_m.exit.thread

_ZN4bsslL11rule_equalsEPKcS1_m.exit:              ; preds = %.preheader177
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 %.0109
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !46
  %i.am = icmp eq i8 %i.al, 0
  br i1 %i.am, label %bb.v, label %_ZN4bsslL11rule_equalsEPKcS1_m.exit.thread

_ZN4bsslL11rule_equalsEPKcS1_m.exit.thread:       ; preds = %.preheader177, %_ZN4bsslL11rule_equalsEPKcS1_m.exit
  %i.an = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !54 ; 2 uses
  %i.ap = tail call i32 @strncmp(ptr noundef nonnull readonly dereferenceable(1) %i.ao, ptr noundef nonnull readonly dereferenceable(1) %.2118, i64 noundef range(i64 1, 0) %.0109) #23
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %_ZN4bsslL11rule_equalsEPKcS1_m.exit140, label %_ZN4bsslL11rule_equalsEPKcS1_m.exit140.thread

_ZN4bsslL11rule_equalsEPKcS1_m.exit140:           ; preds = %_ZN4bsslL11rule_equalsEPKcS1_m.exit.thread
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 %.0109
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !46
  %i.at = icmp eq i8 %i.as, 0
  br i1 %i.at, label %bb.v, label %_ZN4bsslL11rule_equalsEPKcS1_m.exit140.thread

bb.v:                                             ; preds = %_ZN4bsslL11rule_equalsEPKcS1_m.exit, %_ZN4bsslL11rule_equalsEPKcS1_m.exit140
  %i.au = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.av = load i32, ptr %i.au, align 8, !tbaa !36
  br label %.loopexit

_ZN4bsslL11rule_equalsEPKcS1_m.exit140.thread:    ; preds = %_ZN4bsslL11rule_equalsEPKcS1_m.exit.thread, %_ZN4bsslL11rule_equalsEPKcS1_m.exit140
  %i.aw = add nuw nsw i64 %.0110197, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.aw, 24
  br i1 %exitcond.not, label %.loopexit, label %.preheader177, !llvm.loop !73

.loopexit:                                        ; preds = %_ZN4bsslL11rule_equalsEPKcS1_m.exit140.thread, %bb.v, %bb.u
  %.3102 = phi i32 [ %i.av, %bb.v ], [ %.099, %bb.u ], [ %.099, %_ZN4bsslL11rule_equalsEPKcS1_m.exit140.thread ] ; 3 uses
  %i.ax = icmp eq i32 %.3102, 0
  br i1 %i.ax, label %.preheader, label %.thread159

.preheader:                                       ; preds = %.loopexit, %_ZN4bsslL11rule_equalsEPKcS1_m.exit141.thread
  %.1111198 = phi i64 [ %i.bk, %_ZN4bsslL11rule_equalsEPKcS1_m.exit141.thread ], [ 0, %.loopexit ] ; 3 uses
  %i.ay = getelementptr inbounds nuw [32 x i8], ptr @_ZN4bsslL14kCipherAliasesE, i64 %.1111198 ; 3 uses
  %i.az = load ptr, ptr %i.ay, align 16, !tbaa !80 ; 2 uses
  %i.ba = tail call i32 @strncmp(ptr noundef nonnull readonly dereferenceable(1) %i.az, ptr noundef nonnull readonly dereferenceable(1) %.2118, i64 noundef range(i64 1, 0) %.0109) #23
  %i.bb = icmp eq i32 %i.ba, 0
  br i1 %i.bb, label %_ZN4bsslL11rule_equalsEPKcS1_m.exit141, label %_ZN4bsslL11rule_equalsEPKcS1_m.exit141.thread

_ZN4bsslL11rule_equalsEPKcS1_m.exit141:           ; preds = %.preheader
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 %.0109
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !46
  %i.be = icmp eq i8 %i.bd, 0
  br i1 %i.be, label %bb.w, label %_ZN4bsslL11rule_equalsEPKcS1_m.exit141.thread

bb.w:                                             ; preds = %_ZN4bsslL11rule_equalsEPKcS1_m.exit141
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.bg = load <4 x i32>, ptr %i.bf, align 8, !tbaa !55
  %i.bh = and <4 x i32> %i.z, %i.bg               ; 3 uses
  store <4 x i32> %i.bh, ptr %i.c, align 8, !tbaa !55
  %5 = icmp eq i64 %.1111198, 14
  %6 = zext i1 %5 to i8
  %i.bi = or i8 %i.x, %6                          ; 3 uses
  store i8 %i.bi, ptr %i.e, align 2, !tbaa !52
  %.not130 = icmp eq i16 %i.y, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %.pre = load i16, ptr %.phi.trans.insert, align 8, !tbaa !51 ; 2 uses
  br i1 %.not130, label %._crit_edge232, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.not131 = icmp eq i16 %i.y, %.pre
  br i1 %.not131, label %._crit_edge232, label %.thread159

._crit_edge232:                                   ; preds = %bb.w, %bb.x
  %i.bj = phi i16 [ %i.y, %bb.x ], [ %.pre, %bb.w ] ; 2 uses
  store i16 %i.bj, ptr %i.d, align 8, !tbaa !51
  br label %.thread159

_ZN4bsslL11rule_equalsEPKcS1_m.exit141.thread:    ; preds = %.preheader, %_ZN4bsslL11rule_equalsEPKcS1_m.exit141
  %i.bk = add nuw nsw i64 %.1111198, 1            ; 2 uses
  %exitcond230.not = icmp eq i64 %i.bk, 29
  br i1 %exitcond230.not, label %bb.y, label %.preheader, !llvm.loop !74

bb.y:                                             ; preds = %_ZN4bsslL11rule_equalsEPKcS1_m.exit141.thread
  br i1 %3, label %.loopexit250.sink.split, label %.thread159

.thread159:                                       ; preds = %._crit_edge232, %bb.x, %bb.y, %.loopexit
  %i.bl = phi i8 [ %i.x, %.loopexit ], [ %i.x, %bb.y ], [ %i.bi, %bb.x ], [ %i.bi, %._crit_edge232 ]
  %i.bm = phi i16 [ %i.y, %.loopexit ], [ %i.y, %bb.y ], [ %i.y, %bb.x ], [ %i.bj, %._crit_edge232 ]
  %.2 = phi i1 [ %.0, %.loopexit ], [ true, %bb.y ], [ true, %bb.x ], [ %.0, %._crit_edge232 ] ; 2 uses
  %i.bn = phi <4 x i32> [ %i.z, %.loopexit ], [ %i.z, %bb.y ], [ %i.bh, %bb.x ], [ %i.bh, %._crit_edge232 ]
  br i1 %i.af, label %bb.ao, label %bb.z

bb.z:                                             ; preds = %.thread159
  %i.bo = getelementptr inbounds nuw i8, ptr %.3119, i64 1
  br label %_ZN4bsslL24is_cipher_list_separatorEcb.exit.thread151.split, !llvm.loop !75

bb.aa:                                            ; preds = %bb.r
  %i.bp = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %.1117148, ptr noundef nonnull dereferenceable(9) @.str.71, i64 noundef 8) #23
  %.not133 = icmp eq i32 %i.bp, 0
  br i1 %.not133, label %bb.ab, label %.loopexit250.sink.split.loopexit274

bb.ab:                                            ; preds = %bb.aa
  %.02454.i = load ptr, ptr %1, align 8, !tbaa !44 ; 2 uses
  %.not55.i = icmp eq ptr %.02454.i, null
  br i1 %.not55.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ab, %SSL_CIPHER_get_bits.exit34.i
  %.02457.i = phi ptr [ %.024.i, %SSL_CIPHER_get_bits.exit34.i ], [ %.02454.i, %bb.ab ] ; 3 uses
  %.02556.i = phi i32 [ %.126.i, %SSL_CIPHER_get_bits.exit34.i ], [ 0, %bb.ab ] ; 6 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.02457.i, i64 8
  %i.br = load i8, ptr %i.bq, align 8, !tbaa !42, !range !33, !noundef !34
  %i.bs = trunc nuw i8 %i.br to i1
  br i1 %i.bs, label %bb.ac, label %SSL_CIPHER_get_bits.exit34.i

bb.ac:                                            ; preds = %.lr.ph.i
  %i.bt = load ptr, ptr %.02457.i, align 8, !tbaa !45 ; 2 uses
  %i.bu = icmp eq ptr %i.bt, null
  br i1 %i.bu, label %SSL_CIPHER_get_bits.exit34.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 28
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !18 ; 2 uses
  %i.bx = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.bw)
  %i.by = icmp eq i32 %i.bx, 1
  br i1 %i.by, label %.split.i.i, label %SSL_CIPHER_get_bits.exit34.i

.split.i.i:                                       ; preds = %bb.ad
  %i.bz = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.bw, i1 true) ; 3 uses
  %i.ca = icmp samesign ult i32 %i.bz, 6
  br i1 %i.ca, label %switch.lookup, label %SSL_CIPHER_get_bits.exit34.i

switch.lookup:                                    ; preds = %.split.i.i
  %i.cb = zext nneg i32 %i.bz to i64
  %switch.gep = getelementptr inbounds nuw [2 x i8], ptr @switch.table._ZN4bsslL21ssl_cipher_apply_ruleEjPKNS_15cipher_alias_stEiibPPNS_15cipher_order_stES5_, i64 %i.cb
  %switch.load = load i16, ptr %switch.gep, align 2
  %switch.ext = zext i16 %switch.load to i32
  %i.cc = icmp slt i32 %.02556.i, %switch.ext
  br i1 %i.cc, label %switch.lookup264, label %SSL_CIPHER_get_bits.exit34.i

switch.lookup264:                                 ; preds = %switch.lookup
  %i.cd = zext nneg i32 %i.bz to i64
  %switch.gep265 = getelementptr inbounds nuw [2 x i8], ptr @switch.table._ZN4bsslL21ssl_cipher_apply_ruleEjPKNS_15cipher_alias_stEiibPPNS_15cipher_order_stES5_, i64 %i.cd
  %switch.load266 = load i16, ptr %switch.gep265, align 2
  %switch.ext267 = zext i16 %switch.load266 to i32
  br label %SSL_CIPHER_get_bits.exit34.i

SSL_CIPHER_get_bits.exit34.i:                     ; preds = %switch.lookup264, %.split.i.i, %switch.lookup, %bb.ad, %bb.ac, %.lr.ph.i
  %.126.i = phi i32 [ %.02556.i, %bb.ad ], [ %.02556.i, %switch.lookup ], [ %.02556.i, %.lr.ph.i ], [ %switch.ext267, %switch.lookup264 ], [ %.02556.i, %.split.i.i ], [ %.02556.i, %bb.ac ] ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.02457.i, i64 16
  %.024.i = load ptr, ptr %i.ce, align 8, !tbaa !44 ; 2 uses
  %.not.i = icmp eq ptr %.024.i, null
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !76

._crit_edge.i:                                    ; preds = %SSL_CIPHER_get_bits.exit34.i, %bb.ab
  %.025.lcssa.i = phi i32 [ 0, %bb.ab ], [ %.126.i, %SSL_CIPHER_get_bits.exit34.i ] ; 4 uses
  %i.cf = add nuw nsw i32 %.025.lcssa.i, 1
  %i.cg = zext nneg i32 %i.cf to i64              ; 2 uses
  invoke void @OPENSSL_free(ptr noundef null)
          to label %.noexc.i unwind label %bb.ak

.noexc.i:                                         ; preds = %._crit_edge.i
  %i.ch = shl nuw nsw i64 %i.cg, 2
  %i.ci = invoke ptr @OPENSSL_malloc(i64 noundef %i.ch)
          to label %.noexc35.i unwind label %bb.ak ; 6 uses

.noexc35.i:                                       ; preds = %.noexc.i
  %.not176 = icmp eq ptr %i.ci, null              ; 2 uses
  br i1 %.not176, label %_ZN4bssl5ArrayIiE4InitEm.exit.thread.i, label %bb.ae

bb.ae:                                            ; preds = %.noexc35.i
  store i32 0, ptr %i.ci, align 4, !tbaa !55
  %i.cj = icmp eq i32 %.025.lcssa.i, 0
  br i1 %i.cj, label %_ZN4bssl5ArrayIiE4InitEm.exit.i, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %bb.ae
  %i.ck = zext nneg i32 %.025.lcssa.i to i64
  %i.cl = getelementptr i8, ptr %i.ci, i64 4
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.ck, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.cl, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !55
  br label %_ZN4bssl5ArrayIiE4InitEm.exit.i

_ZN4bssl5ArrayIiE4InitEm.exit.i:                  ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %bb.ae
  %.sroa.11.0.i = phi i64 [ %i.cg, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ 1, %bb.ae ]
  %.158.i = load ptr, ptr %1, align 8, !tbaa !44  ; 2 uses
  %.not2859.i = icmp eq ptr %.158.i, null
  br i1 %.not2859.i, label %.preheader.i, label %.lr.ph61.i

.preheader.i:                                     ; preds = %bb.ai, %_ZN4bssl5ArrayIiE4InitEm.exit.i
  %i.cm = zext nneg i32 %.025.lcssa.i to i64
  br label %_ZN4bssl5ArrayIiEixEm.exit41.i

.lr.ph61.i:                                       ; preds = %_ZN4bssl5ArrayIiE4InitEm.exit.i, %bb.ai
  %.160.i = phi ptr [ %.1.i, %bb.ai ], [ %.158.i, %_ZN4bssl5ArrayIiE4InitEm.exit.i ] ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.160.i, i64 8
  %i.co = load i8, ptr %i.cn, align 8, !tbaa !42, !range !33, !noundef !34
  %i.cp = trunc nuw i8 %i.co to i1
  br i1 %i.cp, label %bb.af, label %bb.ai

bb.af:                                            ; preds = %.lr.ph61.i
  %i.cq = load ptr, ptr %.160.i, align 8, !tbaa !45 ; 2 uses
  %i.cr = icmp eq ptr %i.cq, null
  br i1 %i.cr, label %_ZN4bssl5ArrayIiEixEm.exit.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 28
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !18 ; 2 uses
  %i.cu = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.ct)
  %i.cv = icmp eq i32 %i.cu, 1
  br i1 %i.cv, label %.split.i39.i, label %_ZN4bssl5ArrayIiEixEm.exit.i

.split.i39.i:                                     ; preds = %bb.ag
  %i.cw = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.ct, i1 true) ; 2 uses
  %i.cx = icmp samesign ult i32 %i.cw, 6
  br i1 %i.cx, label %switch.lookup268, label %_ZN4bssl5ArrayIiEixEm.exit.i

switch.lookup268:                                 ; preds = %.split.i39.i
  %i.cy = zext nneg i32 %i.cw to i64
  %switch.gep269 = getelementptr inbounds nuw [2 x i8], ptr @switch.table._ZN4bsslL21ssl_cipher_apply_ruleEjPKNS_15cipher_alias_stEiibPPNS_15cipher_order_stES5_, i64 %i.cy
  %switch.load270 = load i16, ptr %switch.gep269, align 2
  %switch.ext271 = zext i16 %switch.load270 to i64 ; 2 uses
  %i.cz = icmp samesign ugt i64 %.sroa.11.0.i, %switch.ext271
  br i1 %i.cz, label %_ZN4bssl5ArrayIiEixEm.exit.i, label %bb.ah

bb.ah:                                            ; preds = %switch.lookup268
  tail call void @abort() #21
  unreachable

_ZN4bssl5ArrayIiEixEm.exit.i:                     ; preds = %.split.i39.i, %switch.lookup268, %bb.ag, %bb.af
  %.07.i3867.i = phi i64 [ %switch.ext271, %switch.lookup268 ], [ 0, %bb.af ], [ 0, %.split.i39.i ], [ 0, %bb.ag ]
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %.07.i3867.i ; 2 uses
  %i.db = load i32, ptr %i.da, align 4, !tbaa !55
  %i.dc = add nsw i32 %i.db, 1
  store i32 %i.dc, ptr %i.da, align 4, !tbaa !55
  br label %bb.ai

bb.ai:                                            ; preds = %_ZN4bssl5ArrayIiEixEm.exit.i, %.lr.ph61.i
  %i.dd = getelementptr inbounds nuw i8, ptr %.160.i, i64 16
  %.1.i = load ptr, ptr %i.dd, align 8, !tbaa !44 ; 2 uses
  %.not28.i = icmp eq ptr %.1.i, null
  br i1 %.not28.i, label %.preheader.i, label %.lr.ph61.i, !llvm.loop !77

_ZN4bssl5ArrayIiEixEm.exit41.i:                   ; preds = %bb.am, %.preheader.i
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.am ], [ %i.cm, %.preheader.i ] ; 4 uses
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %indvars.iv
  %i.df = load i32, ptr %i.de, align 4, !tbaa !55
  %i.dg = icmp sgt i32 %i.df, 0
  br i1 %i.dg, label %bb.aj, label %bb.am

bb.aj:                                            ; preds = %_ZN4bssl5ArrayIiEixEm.exit41.i
  %i.dh = trunc nuw nsw i64 %indvars.iv to i32
  tail call fastcc void @_ZN4bsslL21ssl_cipher_apply_ruleEjPKNS_15cipher_alias_stEiibPPNS_15cipher_order_stES5_(i32 noundef 0, ptr noundef null, i32 noundef 4, i32 noundef %i.dh, i1 noundef zeroext false, ptr noundef nonnull %1, ptr noundef nonnull %2)
  br label %bb.am

bb.ak:                                            ; preds = %.noexc.i, %._crit_edge.i
  %i.di = landingpad { ptr, i32 }
          cleanup
  invoke void @OPENSSL_free(ptr noundef null)
          to label %_ZN4bssl5ArrayIiED2Ev.exit.i unwind label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.dj = landingpad { ptr, i32 }
          catch ptr null
end_hunk_0
