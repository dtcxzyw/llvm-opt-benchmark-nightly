Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/extensions?download=true
inline.NumInlined: 53
inline.NumDeleted: 23
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@should_add_extension:bb.a
  br i1 %or.cond28.not.i, label %extension_is_relevant.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = and i32 %1, 32
  %.not23.i = icmp eq i32 %i.p, 0                 ; 3 uses
  %i.q = and i32 %2, 128
  %i.r = icmp ne i32 %i.q, 0                      ; 2 uses
  %i.s = or i1 %.not23.i, %i.r
  %or.cond31.not.i = or i1 %i.s, %.046.i
  br i1 %or.cond31.not.i, label %bb.e, label %extension_is_relevant.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.u = load i32, ptr %i.t, align 8, !tbaa !104
  %i.v = icmp eq i32 %i.u, 0
  %or.cond.i = or i1 %.046.i, %i.v
  %or.cond32.i = or i1 %.not23.i, %or.cond.i
  br i1 %or.cond32.i, label %extension_is_relevant.exit, label %extension_is_relevant.exit.thread

extension_is_relevant.exit:                       ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1288
  %i.x = load i32, ptr %i.w, align 8, !tbaa !105
  %.not25.i = icmp ne i32 %i.x, 0
  %i.y = and i32 %1, 64
  %.not26.i = icmp ne i32 %i.y, 0
  %or.cond33.i.not = and i1 %.not26.i, %.not25.i
  br i1 %or.cond33.i.not, label %extension_is_relevant.exit.thread, label %bb.f

bb.f:                                             ; preds = %extension_is_relevant.exit
  %.not = xor i1 %i.r, true
  %or.cond12 = or i1 %.not23.i, %.not
  %i.z = icmp sgt i32 %3, 771
  %or.cond.not = and i1 %i.z, %.not19.i
  %or.cond = select i1 %or.cond12, i1 true, i1 %or.cond.not
  %spec.select = zext i1 %or.cond to i32
  br label %extension_is_relevant.exit.thread

extension_is_relevant.exit.thread:                ; preds = %bb.f, %bb.c, %bb.d, %bb.e, %._crit_edge.i, %extension_is_relevant.exit, %bb.a
  %.0 = phi i32 [ 0, %bb.c ], [ 0, %bb.a ], [ %spec.select, %bb.f ], [ 0, %extension_is_relevant.exit ], [ 0, %._crit_edge.i ], [ 0, %bb.e ], [ 0, %bb.d ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @tls_construct_extensions(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store i32 0, ptr %i.b, align 4, !tbaa !95
  %i.c = and i32 %2, 32768                        ; 2 uses
  %.not.not = icmp eq i32 %i.c, 0                 ; 2 uses
  %i.d = tail call i32 @WPACKET_start_sub_packet_len__(ptr noundef %1, i64 noundef 2) #9
  %.not64 = icmp eq i32 %i.d, 0
  br i1 %.not64, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %2, 384
  %.not65 = icmp eq i32 %i.e, 0
  br i1 %.not65, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i32 @WPACKET_set_flags(ptr noundef %1, i32 noundef 2) #9
  %.not66 = icmp eq i32 %i.f, 0
  br i1 %.not66, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c, %bb.a
  br i1 %.not.not, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 1061, ptr noundef nonnull @__func__.tls_construct_extensions) #9
  tail call void (ptr, i32, i32, ptr, ...) @ossl_statem_fatal(ptr noundef %0, i32 noundef 80, i32 noundef 786691, ptr noundef null) #9
  br label %.loopexit

bb.f:                                             ; preds = %bb.c, %bb.b
  %i.g = and i32 %2, 128
  %.not67 = icmp eq i32 %i.g, 0                   ; 4 uses
  br i1 %.not67, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.h = call i32 @ssl_get_min_max_version(ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef null) #9 ; 2 uses
  %.not68 = icmp eq i32 %i.h, 0
  br i1 %.not68, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  br i1 %.not.not, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %bb.h
  call void @ERR_new() #9
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 1069, ptr noundef nonnull @__func__.tls_construct_extensions) #9
  call void (ptr, i32, i32, ptr, ...) @ossl_statem_fatal(ptr noundef %0, i32 noundef 80, i32 noundef %i.h, ptr noundef null) #9
  br label %.loopexit

bb.j:                                             ; preds = %bb.g
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 3096
  %i.j = load i32, ptr %i.i, align 8, !tbaa !107
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.k, label %.critedge

bb.k:                                             ; preds = %bb.j
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 2176
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !86
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 128
  call void @custom_ext_init(ptr noundef nonnull %i.n) #9
  br label %.critedge

.critedge:                                        ; preds = %bb.f, %bb.k, %bb.j
  %i.o = load i32, ptr %i.b, align 4, !tbaa !95
  %i.p = call i32 @custom_ext_add(ptr noundef %0, i32 noundef %2, ptr noundef %1, ptr noundef %3, i64 noundef %4, i32 noundef %i.o) #9
  %.not69 = icmp eq i32 %i.p, 0
  br i1 %.not69, label %.loopexit, label %.preheader78

.preheader78:                                     ; preds = %.critedge
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 2544 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 3088 ; 2 uses
  %i.s = and i32 %2, 2048
  %.not.i.i = icmp ne i32 %i.s, 0                 ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.not67.not = xor i1 %.not67, true              ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1288 ; 2 uses
  %i.w = and i32 %2, 24704
  %.not73 = icmp eq i32 %i.w, 0                   ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %.preheader78, %should_add_extension.exit.thread
  %.05880 = phi ptr [ @ext_defs, %.preheader78 ], [ %i.bf, %should_add_extension.exit.thread ] ; 3 uses
  %.05979 = phi i64 [ 0, %.preheader78 ], [ %i.be, %should_add_extension.exit.thread ] ; 4 uses
  %i.x = shl nuw i64 1, %.05979
  %i.y = and i64 %i.x, 100466173
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %should_add_extension.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aa = trunc nuw nsw i64 %.05979 to i32
  store i32 %i.aa, ptr %i.r, align 8, !tbaa !82
  %i.ab = getelementptr inbounds nuw i8, ptr %.05880, i64 4
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !109 ; 5 uses
  %i.ad = load i32, ptr %i.b, align 4, !tbaa !95
  %i.ae = and i32 %i.ac, %2
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %should_add_extension.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ag = load ptr, ptr %i.t, align 8, !tbaa !96  ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 216
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !99
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 80
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !101
  %i.al = and i32 %i.ak, 8
  %.not19.i.i = icmp eq i32 %i.al, 0              ; 3 uses
  %.not19.not.i.i = xor i1 %.not19.i.i, true
  %brmerge.i.i = select i1 %.not.i.i, i1 true, i1 %.not19.not.i.i
  br i1 %brmerge.i.i, label %._crit_edge.i.i, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.n
  %i.am = load i32, ptr %i.ag, align 8, !tbaa !103 ; 2 uses
  %i.an = icmp sgt i32 %i.am, 771
  %i.ao = icmp ne i32 %i.am, 65536
  %spec.select.i.i = and i1 %i.an, %i.ao
  br label %bb.o

._crit_edge.i.i:                                  ; preds = %bb.n
  %.not19.mux.i.i = select i1 %.not.i.i, i1 %.not19.i.i, i1 false
  %i.ap = and i32 %i.ac, 4
  %.not21.i.i = icmp eq i32 %i.ap, 0
  %or.cond27.i.i = or i1 %.not21.i.i, %.not19.mux.i.i
  br i1 %or.cond27.i.i, label %bb.o, label %should_add_extension.exit.thread

bb.o:                                             ; preds = %._crit_edge.i.i, %.thread.i.i
  %.046.i.i = phi i1 [ %spec.select.i.i, %.thread.i.i ], [ %.not.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.aq = and i32 %i.ac, 16
  %.not22.i.i = icmp ne i32 %i.aq, 0
  %or.cond28.not.i.i = and i1 %.not22.i.i, %.046.i.i
  br i1 %or.cond28.not.i.i, label %should_add_extension.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ar = and i32 %i.ac, 32
  %.not23.i.i = icmp eq i32 %i.ar, 0              ; 3 uses
  %i.as = or i1 %.not23.i.i, %.not67.not
  %or.cond31.not.i.i = or i1 %i.as, %.046.i.i
  br i1 %or.cond31.not.i.i, label %bb.q, label %should_add_extension.exit.thread

bb.q:                                             ; preds = %bb.p
  %i.at = load i32, ptr %i.u, align 8, !tbaa !104
  %i.au = icmp eq i32 %i.at, 0                    ; 2 uses
  %or.cond.i.i = or i1 %.046.i.i, %i.au
  %or.cond32.i.i = or i1 %.not23.i.i, %or.cond.i.i
  br i1 %or.cond32.i.i, label %extension_is_relevant.exit.i, label %should_add_extension.exit.thread

extension_is_relevant.exit.i:                     ; preds = %bb.q
  %i.av = load i32, ptr %i.v, align 8, !tbaa !105
  %.not25.i.i = icmp ne i32 %i.av, 0
  %i.aw = and i32 %i.ac, 64
  %.not26.i.i = icmp ne i32 %i.aw, 0
  %or.cond33.i.not.i = and i1 %.not26.i.i, %.not25.i.i
  br i1 %or.cond33.i.not.i, label %should_add_extension.exit.thread, label %should_add_extension.exit

should_add_extension.exit:                        ; preds = %extension_is_relevant.exit.i
  %or.cond12.i = or i1 %.not23.i.i, %.not67
  %i.ax = icmp sgt i32 %i.ad, 771
  %or.cond.not.i = and i1 %i.ax, %.not19.i.i
  %or.cond.i = select i1 %or.cond12.i, i1 true, i1 %or.cond.not.i
  br i1 %or.cond.i, label %bb.r, label %should_add_extension.exit.thread

bb.r:                                             ; preds = %should_add_extension.exit
  %.in.v = select i1 %i.au, i64 48, i64 40
  %.in = getelementptr inbounds nuw i8, ptr %.05880, i64 %.in.v
  %i.ay = load ptr, ptr %.in, align 8, !tbaa !111 ; 2 uses
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %should_add_extension.exit.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ba = call i32 %i.ay(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i64 noundef %4) #9 ; 2 uses
  switch i32 %i.ba, label %should_add_extension.exit.thread [
    i32 0, label %.loopexit
    i32 1, label %bb.t
  ]

bb.t:                                             ; preds = %bb.s
  br i1 %.not73, label %should_add_extension.exit.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bb = getelementptr inbounds nuw i8, ptr %i.q, i64 %.05979 ; 2 uses
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !108
  %i.bd = or i8 %i.bc, 2
  store i8 %i.bd, ptr %i.bb, align 1, !tbaa !108
  br label %should_add_extension.exit.thread

should_add_extension.exit.thread:                 ; preds = %bb.t, %bb.u, %bb.s, %bb.p, %bb.q, %._crit_edge.i.i, %extension_is_relevant.exit.i, %bb.m, %bb.o, %bb.l, %should_add_extension.exit, %bb.r
  %i.be = add nuw nsw i64 %.05979, 1              ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.05880, i64 64
  %exitcond.not = icmp eq i64 %i.be, 31
  br i1 %exitcond.not, label %.preheader.1, label %bb.l, !llvm.loop !157

.preheader.1:                                     ; preds = %should_add_extension.exit.thread, %should_add_extension.exit.thread.1
  %.05880.1 = phi ptr [ %i.cn, %should_add_extension.exit.thread.1 ], [ @ext_defs, %should_add_extension.exit.thread ] ; 3 uses
  %.05979.1 = phi i64 [ %i.cm, %should_add_extension.exit.thread.1 ], [ 0, %should_add_extension.exit.thread ] ; 4 uses
  %i.bg = shl nuw i64 1, %.05979.1
  %i.bh = and i64 %i.bg, 100466173
  %.not = icmp eq i64 %i.bh, 0
  br i1 %.not, label %bb.v, label %should_add_extension.exit.thread.1

bb.v:                                             ; preds = %.preheader.1
  %i.bi = trunc nuw nsw i64 %.05979.1 to i32
  store i32 %i.bi, ptr %i.r, align 8, !tbaa !82
  %i.bj = getelementptr inbounds nuw i8, ptr %.05880.1, i64 4
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !109 ; 5 uses
  %i.bl = load i32, ptr %i.b, align 4, !tbaa !95
  %i.bm = and i32 %i.bk, %2
  %i.bn = icmp eq i32 %i.bm, 0
  br i1 %i.bn, label %should_add_extension.exit.thread.1, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bo = load ptr, ptr %i.t, align 8, !tbaa !96  ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 216
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !99
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 80
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !101
  %i.bt = and i32 %i.bs, 8
  %.not19.i.i.1 = icmp eq i32 %i.bt, 0            ; 3 uses
  %.not19.not.i.i.1 = xor i1 %.not19.i.i.1, true
  %brmerge.i.i.1 = select i1 %.not.i.i, i1 true, i1 %.not19.not.i.i.1
  br i1 %brmerge.i.i.1, label %._crit_edge.i.i.1, label %.thread.i.i.1

.thread.i.i.1:                                    ; preds = %bb.w
  %i.bu = load i32, ptr %i.bo, align 8, !tbaa !103 ; 2 uses
  %i.bv = icmp sgt i32 %i.bu, 771
  %i.bw = icmp ne i32 %i.bu, 65536
  %spec.select.i.i.1 = and i1 %i.bv, %i.bw
  br label %bb.x

._crit_edge.i.i.1:                                ; preds = %bb.w
  %.not19.mux.i.i.1 = select i1 %.not.i.i, i1 %.not19.i.i.1, i1 false
  %i.bx = and i32 %i.bk, 4
  %.not21.i.i.1 = icmp eq i32 %i.bx, 0
  %or.cond27.i.i.1 = or i1 %.not21.i.i.1, %.not19.mux.i.i.1
  br i1 %or.cond27.i.i.1, label %bb.x, label %should_add_extension.exit.thread.1

bb.x:                                             ; preds = %._crit_edge.i.i.1, %.thread.i.i.1
  %.046.i.i.1 = phi i1 [ %spec.select.i.i.1, %.thread.i.i.1 ], [ %.not.i.i, %._crit_edge.i.i.1 ] ; 3 uses
  %i.by = and i32 %i.bk, 16
  %.not22.i.i.1 = icmp ne i32 %i.by, 0
  %or.cond28.not.i.i.1 = and i1 %.not22.i.i.1, %.046.i.i.1
  br i1 %or.cond28.not.i.i.1, label %should_add_extension.exit.thread.1, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bz = and i32 %i.bk, 32
  %.not23.i.i.1 = icmp eq i32 %i.bz, 0            ; 3 uses
  %i.ca = or i1 %.not23.i.i.1, %.not67.not
  %or.cond31.not.i.i.1 = or i1 %i.ca, %.046.i.i.1
  br i1 %or.cond31.not.i.i.1, label %bb.z, label %should_add_extension.exit.thread.1

bb.z:                                             ; preds = %bb.y
  %i.cb = load i32, ptr %i.u, align 8, !tbaa !104
  %i.cc = icmp eq i32 %i.cb, 0                    ; 2 uses
  %or.cond.i.i.1 = or i1 %.046.i.i.1, %i.cc
  %or.cond32.i.i.1 = or i1 %.not23.i.i.1, %or.cond.i.i.1
  br i1 %or.cond32.i.i.1, label %extension_is_relevant.exit.i.1, label %should_add_extension.exit.thread.1

extension_is_relevant.exit.i.1:                   ; preds = %bb.z
  %i.cd = load i32, ptr %i.v, align 8, !tbaa !105
  %.not25.i.i.1 = icmp ne i32 %i.cd, 0
  %i.ce = and i32 %i.bk, 64
  %.not26.i.i.1 = icmp ne i32 %i.ce, 0
  %or.cond33.i.not.i.1 = and i1 %.not26.i.i.1, %.not25.i.i.1
  br i1 %or.cond33.i.not.i.1, label %should_add_extension.exit.thread.1, label %should_add_extension.exit.1

should_add_extension.exit.1:                      ; preds = %extension_is_relevant.exit.i.1
  %or.cond12.i.1 = or i1 %.not23.i.i.1, %.not67
  %i.cf = icmp sgt i32 %i.bl, 771
  %or.cond.not.i.1 = and i1 %i.cf, %.not19.i.i.1
  %or.cond.i.1 = select i1 %or.cond12.i.1, i1 true, i1 %or.cond.not.i.1
  br i1 %or.cond.i.1, label %bb.aa, label %should_add_extension.exit.thread.1

bb.aa:                                            ; preds = %should_add_extension.exit.1
  %.in.v.1 = select i1 %i.cc, i64 48, i64 40
  %.in.1 = getelementptr inbounds nuw i8, ptr %.05880.1, i64 %.in.v.1
  %i.cg = load ptr, ptr %.in.1, align 8, !tbaa !111 ; 2 uses
  %i.ch = icmp eq ptr %i.cg, null
  br i1 %i.ch, label %should_add_extension.exit.thread.1, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ci = call i32 %i.cg(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i64 noundef %4) #9 ; 2 uses
  switch i32 %i.ci, label %should_add_extension.exit.thread.1 [
    i32 0, label %.loopexit
    i32 1, label %bb.ac
  ]

bb.ac:                                            ; preds = %bb.ab
  br i1 %.not73, label %should_add_extension.exit.thread.1, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cj = getelementptr inbounds nuw i8, ptr %i.q, i64 %.05979.1 ; 2 uses
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !108
  %i.cl = or i8 %i.ck, 2
  store i8 %i.cl, ptr %i.cj, align 1, !tbaa !108
  br label %should_add_extension.exit.thread.1

should_add_extension.exit.thread.1:               ; preds = %bb.ad, %bb.ac, %bb.ab, %bb.aa, %should_add_extension.exit.1, %extension_is_relevant.exit.i.1, %bb.z, %bb.y, %bb.x, %._crit_edge.i.i.1, %bb.v, %.preheader.1
  %i.cm = add nuw nsw i64 %.05979.1, 1            ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.05880.1, i64 64
  %exitcond.1.not = icmp eq i64 %i.cm, 31
  br i1 %exitcond.1.not, label %bb.ae, label %.preheader.1, !llvm.loop !157

bb.ae:                                            ; preds = %should_add_extension.exit.thread.1
  %i.co = load i32, ptr %i.u, align 8, !tbaa !104
  %i.cp = icmp ne i32 %i.co, 0
  %i.cq = icmp ne i32 %2, 128
  %or.cond = or i1 %i.cq, %i.cp
  br i1 %or.cond, label %bb.ai, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 3096
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !107
  %i.ct = icmp eq i32 %i.cs, 0
  br i1 %i.ct, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 3092
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !85
  %i.cw = icmp eq i32 %i.cv, 1
  br i1 %i.cw, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 3132
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !158
  %i.cz = icmp eq i32 %i.cy, 1
  br i1 %i.cz, label %bb.ai, label %.loopexit

bb.ai:                                            ; preds = %bb.ah, %bb.ag, %bb.af, %bb.ae
  %i.da = call i32 @WPACKET_close(ptr noundef %1) #9 ; 2 uses
  %.not70.not = icmp ne i32 %i.da, 0
  %i.db = or i32 %i.da, %i.c
  %brmerge.not = icmp eq i32 %i.db, 0
  %.mux = zext i1 %.not70.not to i32
  br i1 %brmerge.not, label %bb.aj, label %.loopexit

bb.aj:                                            ; preds = %bb.ai
  call void @ERR_new() #9
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 1148, ptr noundef nonnull @__func__.tls_construct_extensions) #9
  call void (ptr, i32, i32, ptr, ...) @ossl_statem_fatal(ptr noundef nonnull %0, i32 noundef 80, i32 noundef 786691, ptr noundef null) #9
  br label %.loopexit

.loopexit:                                        ; preds = %bb.s, %bb.ab, %bb.ai, %bb.ah, %bb.aj, %.critedge, %bb.h, %bb.i, %bb.d, %bb.e
  %.3 = phi i32 [ 0, %bb.d ], [ %.mux, %bb.ai ], [ 1, %bb.ah ], [ 0, %.critedge ], [ 0, %bb.h ], [ 0, %bb.e ], [ 0, %bb.i ], [ 0, %bb.aj ], [ %i.ci, %bb.ab ], [ %i.ba, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 %.3
}

declare i32 @WPACKET_start_sub_packet_len__(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @WPACKET_set_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ssl_get_min_max_version(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @custom_ext_add(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @WPACKET_close(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 -1, 2) i32 @tls_psk_do_binder(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %7, i32 noundef %8) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 6 uses
  %i.b = alloca [64 x i8], align 16               ; 5 uses
  %i.c = alloca [64 x i8], align 16               ; 5 uses
  %i.d = alloca [64 x i8], align 16               ; 4 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %9 = alloca [2 x %struct.ossl_param_st], align 16 ; 5 uses
  %i.f = alloca i64, align 8                      ; 8 uses
  %i.g = alloca ptr, align 8                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #9
  %i.h = tail call i32 @EVP_MD_get_size(ptr noundef %1) #9 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !112  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %9, i8 0, i64 80, i1 false)
  %i.k = icmp sgt i32 %i.h, 0
  br i1 %i.k, label %bb.c, label %bb.b, !prof !113

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 1800, ptr noundef nonnull @__func__.tls_psk_do_binder) #9
  tail call void (ptr, i32, i32, ptr, ...) @ossl_statem_fatal(ptr noundef nonnull %0, i32 noundef 80, i32 noundef 786691, ptr noundef null) #9
  br label %bb.aq

bb.c:                                             ; preds = %bb.a
  %i.l = zext nneg i32 %i.h to i64                ; 8 uses
  %i.m = icmp eq i32 %8, 0                        ; 2 uses
  br i1 %i.m, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.o = load i32, ptr %i.n, align 8, !tbaa !114
  %i.p = icmp eq i32 %i.o, 2
  br i1 %i.p, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 2304
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !115
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 836
  %i.t = load i32, ptr %i.s, align 4, !tbaa !159
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 836
  %i.w = load i32, ptr %i.v, align 4, !tbaa !159
  %.not = icmp ne i32 %i.w, 0
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c
  %tls_psk_do_binder.resumption_label.tls_psk_do_binder.external_label = phi ptr [ @tls_psk_do_binder.resumption_label, %bb.c ], [ @tls_psk_do_binder.external_label, %bb.f ], [ @tls_psk_do_binder.external_label, %bb.e ], [ @tls_psk_do_binder.external_label, %bb.d ]
  %i.x = phi i1 [ false, %bb.c ], [ %.not, %bb.f ], [ false, %bb.e ], [ false, %bb.d ]
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !104
  %i.aa = icmp ne i32 %i.z, 0
  %i.ab = or i1 %i.x, %i.aa
  %or.cond3 = or i1 %i.m, %i.ab
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 1404
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 16
  %.093 = select i1 %or.cond3, ptr %i.ac, ptr %i.ad ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 80
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !160
  %i.ah = tail call i32 @tls13_generate_secret(ptr noundef nonnull %0, ptr noundef %1, ptr noundef null, ptr noundef nonnull %i.ae, i64 noundef %i.ag, ptr noundef nonnull %.093) #9
  %.not106 = icmp eq i32 %i.ah, 0
  br i1 %.not106, label %bb.aq, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ai = tail call ptr @EVP_MD_CTX_new() #9      ; 21 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ak = tail call i32 @EVP_DigestInit_ex(ptr noundef nonnull %i.ai, ptr noundef %1, ptr noundef null) #9
  %i.al = icmp slt i32 %i.ak, 1
  br i1 %i.al, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.am = call i32 @EVP_DigestFinal_ex(ptr noundef nonnull %i.ai, ptr noundef nonnull %i.a, ptr noundef null) #9
  %i.an = icmp slt i32 %i.am, 1
  br i1 %i.an, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  call void @ERR_new() #9
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 1846, ptr noundef nonnull @__func__.tls_psk_do_binder) #9
  call void (ptr, i32, i32, ptr, ...) @ossl_statem_fatal(ptr noundef nonnull %0, i32 noundef 80, i32 noundef 786691, ptr noundef null) #9
  br label %bb.aq

bb.l:                                             ; preds = %bb.j
  %i.ao = call i32 @tls13_hkdf_expand(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %.093, ptr noundef nonnull %tls_psk_do_binder.resumption_label.tls_psk_do_binder.external_label, i64 noundef 10, ptr noundef nonnull %i.a, i64 noundef %i.l, ptr noundef nonnull %i.b, i64 noundef %i.l, i32 noundef 1) #9
  %.not107 = icmp eq i32 %i.ao, 0
  br i1 %.not107, label %bb.aq, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ap = call i32 @tls13_derive_finishedkey(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, i64 noundef %i.l) #9
  %.not108 = icmp eq i32 %i.ap, 0
  br i1 %.not108, label %bb.aq, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aq = call i32 @EVP_DigestInit_ex(ptr noundef nonnull %i.ai, ptr noundef %1, ptr noundef null) #9
  %i.ar = icmp slt i32 %i.aq, 1
  br i1 %i.ar, label %bb.o, label %bb.p

end_hunk_0
