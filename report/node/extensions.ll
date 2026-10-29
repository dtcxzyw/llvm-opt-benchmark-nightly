Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/extensions?download=true
inline.NumInlined: 47
inline.NumDeleted: 22
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@should_add_extension:bb.a
bb.d:                                             ; preds = %bb.c
  %i.t = and i32 %1, 16
  %.not24.i = icmp ne i32 %i.t, 0
  %or.cond32.not.i = and i1 %.not24.i, %.050.i
  br i1 %or.cond32.not.i, label %extension_is_relevant.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = and i32 %1, 32
  %.not25.i = icmp eq i32 %i.u, 0                 ; 3 uses
  %i.v = and i32 %2, 128
  %i.w = icmp ne i32 %i.v, 0                      ; 2 uses
  %i.x = or i1 %.not25.i, %i.w
  %or.cond35.not.i = or i1 %i.x, %.050.i
  br i1 %or.cond35.not.i, label %bb.f, label %extension_is_relevant.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.z = load i32, ptr %i.y, align 8, !tbaa !93
  %i.aa = icmp eq i32 %i.z, 0
  %or.cond.i = or i1 %.050.i, %i.aa
  %or.cond36.i = or i1 %.not25.i, %or.cond.i
  br i1 %or.cond36.i, label %extension_is_relevant.exit, label %extension_is_relevant.exit.thread

extension_is_relevant.exit:                       ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1288
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !94
  %.not27.i = icmp ne i32 %i.ac, 0
  %i.ad = and i32 %1, 64
  %.not28.i = icmp ne i32 %i.ad, 0
  %or.cond37.i.not = and i1 %.not28.i, %.not27.i
  br i1 %or.cond37.i.not, label %extension_is_relevant.exit.thread, label %bb.g

bb.g:                                             ; preds = %extension_is_relevant.exit
  %.not = xor i1 %i.w, true
  %or.cond12 = or i1 %.not25.i, %.not
  %i.ae = icmp sgt i32 %3, 771
  %or.cond.not = and i1 %i.ae, %.not21.i
  %or.cond = select i1 %or.cond12, i1 true, i1 %or.cond.not
  %spec.select = zext i1 %or.cond to i32
  br label %extension_is_relevant.exit.thread

extension_is_relevant.exit.thread:                ; preds = %bb.g, %bb.c, %bb.d, %bb.e, %bb.f, %._crit_edge.i, %extension_is_relevant.exit, %bb.a
  %.0 = phi i32 [ 0, %bb.c ], [ 0, %bb.a ], [ %spec.select, %bb.g ], [ 0, %extension_is_relevant.exit ], [ 0, %._crit_edge.i ], [ 0, %bb.f ], [ 0, %bb.e ], [ 0, %bb.d ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @tls_construct_extensions(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  store i32 0, ptr %i.b, align 4, !tbaa !83
  %i.c = and i32 %2, 32768                        ; 2 uses
  %.not.not = icmp eq i32 %i.c, 0                 ; 2 uses
  %i.d = tail call i32 @WPACKET_start_sub_packet_len__(ptr noundef %1, i64 noundef 2) #8
  %.not50 = icmp eq i32 %i.d, 0
  br i1 %.not50, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %2, 384
  %.not51 = icmp eq i32 %i.e, 0
  br i1 %.not51, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i32 @WPACKET_set_flags(ptr noundef %1, i32 noundef 2) #8
  %.not52 = icmp eq i32 %i.f, 0
  br i1 %.not52, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c, %bb.a
  br i1 %.not.not, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 818, ptr noundef nonnull @__func__.tls_construct_extensions) #8
  tail call void (ptr, i32, i32, ptr, ...) @ossl_statem_fatal(ptr noundef %0, i32 noundef 80, i32 noundef 786691, ptr noundef null) #8
  br label %.loopexit

bb.f:                                             ; preds = %bb.c, %bb.b
  %i.g = and i32 %2, 128
  %.not53 = icmp eq i32 %i.g, 0                   ; 3 uses
  br i1 %.not53, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.h = call i32 @ssl_get_min_max_version(ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef null) #8 ; 2 uses
  %.not54 = icmp eq i32 %i.h, 0
  br i1 %.not54, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  br i1 %.not.not, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %bb.h
  call void @ERR_new() #8
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 826, ptr noundef nonnull @__func__.tls_construct_extensions) #8
  call void (ptr, i32, i32, ptr, ...) @ossl_statem_fatal(ptr noundef %0, i32 noundef 80, i32 noundef %i.h, ptr noundef null) #8
  br label %.loopexit

bb.j:                                             ; preds = %bb.g
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 2176
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !73
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 128
  call void @custom_ext_init(ptr noundef nonnull %i.k) #8
  %.pre = load i32, ptr %i.b, align 4, !tbaa !83
  br label %.critedge

.critedge:                                        ; preds = %bb.f, %bb.j
  %i.l = phi i32 [ 0, %bb.f ], [ %.pre, %bb.j ]
  %i.m = call i32 @custom_ext_add(ptr noundef %0, i32 noundef %2, ptr noundef %1, ptr noundef %3, i64 noundef %4, i32 noundef %i.l) #8
  %.not55 = icmp eq i32 %i.m, 0
  br i1 %.not55, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %.critedge
  %i.n = and i32 %2, 2048
  %.not.i.i = icmp ne i32 %i.n, 0                 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.not53.not = xor i1 %.not53, true
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1288
  %i.s = and i32 %2, 24704
  %.not59 = icmp eq i32 %i.s, 0
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 2544
  %.pre66 = load i32, ptr %i.b, align 4, !tbaa !83
  br label %bb.k

bb.k:                                             ; preds = %.preheader, %should_add_extension.exit.thread
  %i.u = phi i32 [ %.pre66, %.preheader ], [ %i.bb, %should_add_extension.exit.thread ] ; 10 uses
  %.04464 = phi ptr [ @ext_defs, %.preheader ], [ %i.bd, %should_add_extension.exit.thread ] ; 3 uses
  %.04563 = phi i64 [ 0, %.preheader ], [ %i.bc, %should_add_extension.exit.thread ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.04464, i64 4
  %i.w = load i32, ptr %i.v, align 4, !tbaa !98   ; 6 uses
  %i.x = and i32 %i.w, %2
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %should_add_extension.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.z = load ptr, ptr %i.o, align 8, !tbaa !84   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 216
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !87
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 80
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !89
  %i.ae = and i32 %i.ad, 8
  %.not21.i.i = icmp eq i32 %i.ae, 0              ; 3 uses
  %.not21.not.i.i = xor i1 %.not21.i.i, true
  %brmerge.i.i = select i1 %.not.i.i, i1 true, i1 %.not21.not.i.i
  br i1 %brmerge.i.i, label %._crit_edge.i.i, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.l
  %i.af = load i32, ptr %i.z, align 8, !tbaa !91  ; 2 uses
  %i.ag = icmp sgt i32 %i.af, 771
  %i.ah = icmp ne i32 %i.af, 65536
  %spec.select.i.i = and i1 %i.ag, %i.ah
  br label %bb.m

._crit_edge.i.i:                                  ; preds = %bb.l
  %.not21.mux.i.i = select i1 %.not.i.i, i1 %.not21.i.i, i1 false
  %i.ai = and i32 %i.w, 4
  %.not23.i.i = icmp eq i32 %i.ai, 0
  %or.cond29.i.i = or i1 %.not23.i.i, %.not21.mux.i.i
  br i1 %or.cond29.i.i, label %bb.m, label %should_add_extension.exit.thread

bb.m:                                             ; preds = %._crit_edge.i.i, %.thread.i.i
  %.050.i.i = phi i1 [ %spec.select.i.i, %.thread.i.i ], [ %.not.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.aj = load i32, ptr %i.p, align 8, !tbaa !92
  %i.ak = icmp eq i32 %i.aj, 768
  %i.al = and i32 %i.w, 8
  %i.am = icmp eq i32 %i.al, 0
  %or.cond31.i.i = and i1 %i.am, %i.ak
  br i1 %or.cond31.i.i, label %should_add_extension.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.an = and i32 %i.w, 16
  %.not24.i.i = icmp ne i32 %i.an, 0
  %or.cond32.not.i.i = and i1 %.not24.i.i, %.050.i.i
  br i1 %or.cond32.not.i.i, label %should_add_extension.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ao = and i32 %i.w, 32
  %.not25.i.i = icmp eq i32 %i.ao, 0              ; 3 uses
  %i.ap = or i1 %.not25.i.i, %.not53.not
  %or.cond35.not.i.i = or i1 %i.ap, %.050.i.i
  br i1 %or.cond35.not.i.i, label %bb.p, label %should_add_extension.exit.thread

bb.p:                                             ; preds = %bb.o
  %i.aq = load i32, ptr %i.q, align 8, !tbaa !93
  %i.ar = icmp eq i32 %i.aq, 0                    ; 2 uses
  %or.cond.i.i = or i1 %.050.i.i, %i.ar
  %or.cond36.i.i = or i1 %.not25.i.i, %or.cond.i.i
  br i1 %or.cond36.i.i, label %extension_is_relevant.exit.i, label %should_add_extension.exit.thread

extension_is_relevant.exit.i:                     ; preds = %bb.p
  %i.as = load i32, ptr %i.r, align 8, !tbaa !94
  %.not27.i.i = icmp ne i32 %i.as, 0
  %i.at = and i32 %i.w, 64
  %.not28.i.i = icmp ne i32 %i.at, 0
  %or.cond37.i.not.i = and i1 %.not28.i.i, %.not27.i.i
  br i1 %or.cond37.i.not.i, label %should_add_extension.exit.thread, label %should_add_extension.exit

should_add_extension.exit:                        ; preds = %extension_is_relevant.exit.i
  %or.cond12.i = or i1 %.not53, %.not25.i.i
  %i.au = icmp sgt i32 %i.u, 771
  %or.cond.not.i = and i1 %i.au, %.not21.i.i
  %or.cond.i = select i1 %or.cond12.i, i1 true, i1 %or.cond.not.i
  br i1 %or.cond.i, label %bb.q, label %should_add_extension.exit.thread

bb.q:                                             ; preds = %should_add_extension.exit
  %.in.v = select i1 %i.ar, i64 40, i64 32
  %.in = getelementptr inbounds nuw i8, ptr %.04464, i64 %.in.v
  %i.av = load ptr, ptr %.in, align 8, !tbaa !100 ; 2 uses
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %should_add_extension.exit.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ax = call i32 %i.av(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i64 noundef %4) #8 ; 2 uses
  %.pre65 = load i32, ptr %i.b, align 4, !tbaa !83 ; 3 uses
  switch i32 %i.ax, label %should_add_extension.exit.thread [
    i32 0, label %.loopexit
    i32 1, label %bb.s
  ]

bb.s:                                             ; preds = %bb.r
  br i1 %.not59, label %should_add_extension.exit.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ay = getelementptr inbounds nuw i8, ptr %i.t, i64 %.04563 ; 2 uses
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !97
  %i.ba = or i8 %i.az, 2
  store i8 %i.ba, ptr %i.ay, align 1, !tbaa !97
  br label %should_add_extension.exit.thread

should_add_extension.exit.thread:                 ; preds = %bb.s, %bb.t, %bb.r, %bb.n, %bb.o, %bb.p, %._crit_edge.i.i, %extension_is_relevant.exit.i, %bb.k, %bb.m, %should_add_extension.exit, %bb.q
  %i.bb = phi i32 [ %.pre65, %bb.s ], [ %.pre65, %bb.t ], [ %.pre65, %bb.r ], [ %i.u, %bb.n ], [ %i.u, %bb.o ], [ %i.u, %bb.p ], [ %i.u, %._crit_edge.i.i ], [ %i.u, %extension_is_relevant.exit.i ], [ %i.u, %bb.k ], [ %i.u, %bb.m ], [ %i.u, %should_add_extension.exit ], [ %i.u, %bb.q ]
  %i.bc = add nuw nsw i64 %.04563, 1              ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.04464, i64 56
  %exitcond.not = icmp eq i64 %i.bc, 29
  br i1 %exitcond.not, label %bb.u, label %bb.k, !llvm.loop !146

bb.u:                                             ; preds = %should_add_extension.exit.thread
  %i.be = call i32 @WPACKET_close(ptr noundef %1) #8 ; 2 uses
  %.not56.not = icmp ne i32 %i.be, 0
  %i.bf = or i32 %i.be, %i.c
  %brmerge.not = icmp eq i32 %i.bf, 0
  %.mux = zext i1 %.not56.not to i32
  br i1 %brmerge.not, label %bb.v, label %.loopexit

bb.v:                                             ; preds = %bb.u
  call void @ERR_new() #8
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 869, ptr noundef nonnull @__func__.tls_construct_extensions) #8
  call void (ptr, i32, i32, ptr, ...) @ossl_statem_fatal(ptr noundef %0, i32 noundef 80, i32 noundef 786691, ptr noundef null) #8
  br label %.loopexit

.loopexit:                                        ; preds = %bb.r, %bb.u, %bb.v, %.critedge, %bb.h, %bb.i, %bb.d, %bb.e
  %.2 = phi i32 [ 0, %bb.d ], [ 0, %bb.v ], [ %.mux, %bb.u ], [ 0, %.critedge ], [ 0, %bb.h ], [ 0, %bb.e ], [ 0, %bb.i ], [ %i.ax, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 %.2
}

declare i32 @WPACKET_start_sub_packet_len__(ptr noundef, i64 noundef) local_unnamed_addr #3

declare i32 @WPACKET_set_flags(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @ssl_get_min_max_version(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @custom_ext_add(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @WPACKET_close(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 2) i32 @tls_psk_do_binder(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %7, i32 noundef %8) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 6 uses
  %i.b = alloca [64 x i8], align 16               ; 5 uses
  %i.c = alloca [64 x i8], align 16               ; 5 uses
  %i.d = alloca [64 x i8], align 16               ; 4 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %i.f = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #8
  %i.g = tail call i32 @EVP_MD_get_size(ptr noundef %1) #8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !102  ; 3 uses
  %i.j = icmp sgt i32 %i.g, 0
  br i1 %i.j, label %bb.c, label %bb.b, !prof !103

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 1480, ptr noundef nonnull @__func__.tls_psk_do_binder) #8
  tail call void (ptr, i32, i32, ptr, ...) @ossl_statem_fatal(ptr noundef nonnull %0, i32 noundef 80, i32 noundef 786691, ptr noundef null) #8
  br label %bb.ak

bb.c:                                             ; preds = %bb.a
  %i.k = zext nneg i32 %i.g to i64                ; 8 uses
  %i.l = icmp eq i32 %8, 0                        ; 2 uses
  br i1 %i.l, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.n = load i32, ptr %i.m, align 8, !tbaa !104
  %i.o = icmp eq i32 %i.n, 2
  br i1 %i.o, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 2304
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !105
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 836
  %i.s = load i32, ptr %i.r, align 4, !tbaa !147
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 836
  %i.v = load i32, ptr %i.u, align 4, !tbaa !147
  %.not = icmp ne i32 %i.v, 0
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c
  %tls_psk_do_binder.resumption_label.tls_psk_do_binder.external_label = phi ptr [ @tls_psk_do_binder.resumption_label, %bb.c ], [ @tls_psk_do_binder.external_label, %bb.f ], [ @tls_psk_do_binder.external_label, %bb.e ], [ @tls_psk_do_binder.external_label, %bb.d ]
  %i.w = phi i1 [ false, %bb.c ], [ %.not, %bb.f ], [ false, %bb.e ], [ false, %bb.d ]
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !93
  %i.z = icmp ne i32 %i.y, 0
  %i.aa = or i1 %i.w, %i.z
  %or.cond3 = or i1 %i.l, %i.aa
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1404
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 16
  %.092 = select i1 %or.cond3, ptr %i.ab, ptr %i.ac ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 80
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !148
  %i.ag = tail call i32 @tls13_generate_secret(ptr noundef nonnull %0, ptr noundef %1, ptr noundef null, ptr noundef nonnull %i.ad, i64 noundef %i.af, ptr noundef nonnull %.092) #8
  %.not106 = icmp eq i32 %i.ag, 0
  br i1 %.not106, label %bb.ak, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = tail call ptr @EVP_MD_CTX_new() #8      ; 21 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aj = tail call i32 @EVP_DigestInit_ex(ptr noundef nonnull %i.ah, ptr noundef %1, ptr noundef null) #8
  %i.ak = icmp slt i32 %i.aj, 1
  br i1 %i.ak, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.al = call i32 @EVP_DigestFinal_ex(ptr noundef nonnull %i.ah, ptr noundef nonnull %i.a, ptr noundef null) #8
  %i.am = icmp slt i32 %i.al, 1
  br i1 %i.am, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  call void @ERR_new() #8
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 1526, ptr noundef nonnull @__func__.tls_psk_do_binder) #8
  call void (ptr, i32, i32, ptr, ...) @ossl_statem_fatal(ptr noundef nonnull %0, i32 noundef 80, i32 noundef 786691, ptr noundef null) #8
  br label %bb.ak

bb.l:                                             ; preds = %bb.j
  %i.an = call i32 @tls13_hkdf_expand(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %.092, ptr noundef nonnull %tls_psk_do_binder.resumption_label.tls_psk_do_binder.external_label, i64 noundef 10, ptr noundef nonnull %i.a, i64 noundef %i.k, ptr noundef nonnull %i.b, i64 noundef %i.k, i32 noundef 1) #8
  %.not107 = icmp eq i32 %i.an, 0
  br i1 %.not107, label %bb.ak, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ao = call i32 @tls13_derive_finishedkey(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, i64 noundef %i.k) #8
  %.not108 = icmp eq i32 %i.ao, 0
  br i1 %.not108, label %bb.ak, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ap = call i32 @EVP_DigestInit_ex(ptr noundef nonnull %i.ah, ptr noundef %1, ptr noundef null) #8
  %i.aq = icmp slt i32 %i.ap, 1
  br i1 %i.aq, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  call void @ERR_new() #8
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 1544, ptr noundef nonnull @__func__.tls_psk_do_binder) #8
  call void (ptr, i32, i32, ptr, ...) @ossl_statem_fatal(ptr noundef nonnull %0, i32 noundef 80, i32 noundef 786691, ptr noundef null) #8
  br label %bb.ak

bb.p:                                             ; preds = %bb.n
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 2256
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !108
  %i.at = icmp eq i32 %i.as, 1
  br i1 %i.at, label %bb.q, label %bb.y

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #8
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !149
  %i.aw = call i64 @BIO_ctrl(ptr noundef %i.av, i32 noundef 3, i64 noundef 0, ptr noundef nonnull %i.f) #8 ; 5 uses
  %i.ax = icmp slt i64 %i.aw, 1
  br i1 %i.ax, label %.thread146, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ay = load i32, ptr %i.x, align 8, !tbaa !93
  %.not109 = icmp eq i32 %i.ay, 0
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !100 ; 5 uses
  br i1 %.not109, label %bb.w, label %bb.s

bb.s:                                             ; preds = %bb.r
end_hunk_0
