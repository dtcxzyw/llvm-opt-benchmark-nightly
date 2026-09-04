Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/ole2_extract?download=true
inline.NumInlined: 71
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@initialize_encryption_key
define internal fastcc noundef zeroext i1 @initialize_encryption_key(ptr nofree noundef nonnull readonly captures(none) %0, i64 noundef %1, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 260)) %2, ptr nofree noundef nonnull captures(none) %3) unnamed_addr #2 {
bb.a:
  %4 = alloca %struct.encryption_key_t, align 4   ; 7 uses
  %5 = alloca %struct.encryption_verifier_t, align 1 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %.sroa.0.0.copyload = load i16, ptr %0, align 1
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2
  %.sroa.5.0.copyload = load i16, ptr %.sroa.5.0..sroa_idx, align 1
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.sroa.6.0.copyload = load i32, ptr %.sroa.6.0..sroa_idx, align 1 ; 9 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.9.0.copyload = load i32, ptr %.sroa.9.0..sroa_idx, align 1
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.sroa.10.0.copyload = load i32, ptr %.sroa.10.0..sroa_idx, align 1
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.11.0.copyload = load i32, ptr %.sroa.11.0..sroa_idx, align 1
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.sroa.12.0.copyload = load i32, ptr %.sroa.12.0..sroa_idx, align 1 ; 2 uses
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.13.0.copyload = load i32, ptr %.sroa.13.0..sroa_idx, align 1 ; 2 uses
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  %.sroa.14.0.copyload = load i32, ptr %.sroa.14.0..sroa_idx, align 1 ; 3 uses
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.21.0.copyload = load i32, ptr %.sroa.21.0..sroa_idx, align 1 ; 2 uses
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 36
  %.sroa.22.0.copyload = load i32, ptr %.sroa.22.0..sroa_idx, align 1
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.23.0.copyload = load i32, ptr %.sroa.23.0..sroa_idx, align 1 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(260) %2, i8 0, i64 260, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(260) %4, i8 0, i64 256, i1 false)
  %i.a = zext i16 %.sroa.0.0.copyload to i32
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.27, i32 noundef %i.a) #21
  %i.b = zext i16 %.sroa.5.0.copyload to i32
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.28, i32 noundef %i.b) #21
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.29, i32 noundef %.sroa.6.0.copyload) #21
  %i.c = and i32 %.sroa.6.0.copyload, 1
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.30) #21
  br label %bb.aq

bb.c:                                             ; preds = %bb.a
  %i.d = and i32 %.sroa.6.0.copyload, 2
  %.not38 = icmp eq i32 %i.d, 0
  br i1 %.not38, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.31) #21
  br label %bb.aq

bb.e:                                             ; preds = %bb.c
  %i.e = and i32 %.sroa.6.0.copyload, 8
  %.not39 = icmp eq i32 %i.e, 0
  br i1 %.not39, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.32) #21
  br label %bb.aq

bb.g:                                             ; preds = %bb.e
  %i.f = and i32 %.sroa.6.0.copyload, 16
  %i.g = icmp ne i32 %i.f, 0
  %i.h = icmp ne i32 %.sroa.6.0.copyload, 16
  %or.cond = and i1 %i.h, %i.g
  br i1 %or.cond, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.33) #21
  br label %bb.aq

bb.i:                                             ; preds = %bb.g
  %i.i = and i32 %.sroa.6.0.copyload, 32
  %.not40 = icmp eq i32 %i.i, 0
  br i1 %.not40, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.j = and i32 %.sroa.6.0.copyload, 4
  %.not41 = icmp eq i32 %i.j, 0
  br i1 %.not41, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.34) #21
  br label %bb.aq

bb.l:                                             ; preds = %bb.j
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.35) #21
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.i
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.36, i32 noundef %.sroa.9.0.copyload) #21
  %.not42 = icmp eq i32 %.sroa.6.0.copyload, %.sroa.10.0.copyload
  br i1 %.not42, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.37) #21
  br label %bb.aq

bb.o:                                             ; preds = %bb.m
  %.not43 = icmp eq i32 %.sroa.11.0.copyload, 0
  br i1 %.not43, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.38) #21
  br label %bb.aq

bb.q:                                             ; preds = %bb.o
  switch i32 %.sroa.12.0.copyload, label %bb.ab [
    i32 26126, label %bb.r
    i32 26127, label %bb.u
    i32 26128, label %bb.x
    i32 26625, label %bb.aa
  ]

bb.r:                                             ; preds = %bb.q
  %.not46 = icmp eq i32 %.sroa.14.0.copyload, 128
  br i1 %.not46, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.39) #21
  br label %bb.aq

bb.t:                                             ; preds = %bb.r
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr @.str.6, ptr %i.k, align 8, !tbaa !85
  %.not47 = icmp eq i32 %.sroa.13.0.copyload, 32772
  br i1 %.not47, label %key_length_valid_aes_bits.exit, label %bb.ac

bb.u:                                             ; preds = %bb.q
  %.not45 = icmp eq i32 %.sroa.14.0.copyload, 192
  br i1 %.not45, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.39) #21
  br label %bb.aq

bb.w:                                             ; preds = %bb.u
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr @.str.7, ptr %i.l, align 8, !tbaa !85
  br label %bb.aq

bb.x:                                             ; preds = %bb.q
  %.not44 = icmp eq i32 %.sroa.14.0.copyload, 256
  br i1 %.not44, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.39) #21
  br label %bb.aq

bb.z:                                             ; preds = %bb.x
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr @.str.8, ptr %i.m, align 8, !tbaa !85
  br label %bb.aq

bb.aa:                                            ; preds = %bb.q
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr @.str.4, ptr %i.n, align 8, !tbaa !85
  br label %bb.aq

bb.ab:                                            ; preds = %bb.q
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.40, i32 noundef %.sroa.12.0.copyload) #21
  br label %bb.aq

bb.ac:                                            ; preds = %bb.t
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.41, i32 noundef %.sroa.13.0.copyload) #21
  br label %bb.aq

key_length_valid_aes_bits.exit:                   ; preds = %bb.t
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.43, i32 noundef 128) #21
  %.not48 = icmp eq i32 %.sroa.21.0.copyload, 24
  br i1 %.not48, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %key_length_valid_aes_bits.exit
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.44, i32 noundef 24, i32 noundef %.sroa.21.0.copyload) #21
  br label %bb.aq

bb.ae:                                            ; preds = %key_length_valid_aes_bits.exit
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.45, i32 noundef %.sroa.22.0.copyload) #21
  %.not49 = icmp eq i32 %.sroa.23.0.copyload, 0
  br i1 %.not49, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.46, i32 noundef %.sroa.23.0.copyload) #21
  br label %bb.aq

bb.ag:                                            ; preds = %bb.ae
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.p = add i64 %1, -44                          ; 3 uses
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.47) #21
  br label %bb.aq

bb.ai:                                            ; preds = %bb.ag
  %i.r = lshr i64 %i.p, 1                         ; 3 uses
  %.not71 = icmp eq i64 %i.r, 0
  br i1 %.not71, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ai, %bb.aj
  %.068 = phi i64 [ %i.v, %bb.aj ], [ 0, %bb.ai ] ; 4 uses
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %.068
  %i.t = load i16, ptr %i.s, align 2, !tbaa !21
  %i.u = icmp eq i16 %i.t, 0
  br i1 %i.u, label %._crit_edge, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph
  %i.v = add nuw nsw i64 %.068, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.v, %i.r
  br i1 %exitcond.not, label %._crit_edge.thread, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph
  %i.w = icmp eq i64 %.068, %i.r
  br i1 %i.w, label %._crit_edge.thread, label %bb.ak

._crit_edge.thread:                               ; preds = %bb.aj, %bb.ai, %._crit_edge
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.48) #21
  br label %bb.aq

bb.ak:                                            ; preds = %._crit_edge
  %i.x = shl nuw i64 %.068, 1
  %i.y = add i64 %i.x, 2                          ; 2 uses
  %i.z = sub i64 %i.p, %i.y
  %i.aa = icmp ult i64 %i.z, 72
  br i1 %i.aa, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.49) #21
  br label %bb.aq

bb.am:                                            ; preds = %bb.ak
  %i.ab = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.y
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(72) %5, ptr noundef nonnull readonly align 1 dereferenceable(72) %i.ab, i64 72, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 256
  store i32 128, ptr %i.ac, align 4, !tbaa !87
  %i.ad = call fastcc i32 @generate_key_aes(ptr noundef %4, ptr noundef %5)
  %.not50 = icmp eq i32 %i.ad, 0
  br i1 %.not50, label %bb.an, label %bb.aq

bb.an:                                            ; preds = %bb.am
  %i.ae = call fastcc zeroext i1 @verify_key_aes(ptr noundef %4, ptr noundef %5)
  br i1 %i.ae, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.9) #21
  br label %bb.aq

bb.ap:                                            ; preds = %bb.an
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(260) %2, ptr noundef nonnull align 4 dereferenceable(260) %4, i64 260, i1 false)
  store ptr @.str.9, ptr %i.k, align 8, !tbaa !85
  br label %bb.aq

bb.aq:                                            ; preds = %bb.am, %bb.ap, %bb.ao, %bb.al, %._crit_edge.thread, %bb.ah, %bb.af, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.w, %bb.v, %bb.s, %bb.p, %bb.n, %bb.k, %bb.h, %bb.f, %bb.d, %bb.b
  %.033 = phi i1 [ false, %bb.b ], [ false, %bb.d ], [ false, %bb.f ], [ false, %bb.h ], [ false, %bb.n ], [ false, %bb.p ], [ false, %bb.ab ], [ false, %bb.s ], [ false, %bb.ac ], [ false, %bb.ad ], [ false, %bb.af ], [ false, %bb.ah ], [ false, %._crit_edge.thread ], [ false, %bb.al ], [ false, %bb.am ], [ true, %bb.ap ], [ false, %bb.ao ], [ false, %bb.k ], [ false, %bb.aa ], [ false, %bb.v ], [ false, %bb.w ], [ false, %bb.y ], [ false, %bb.z ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !85
  %.not51 = icmp eq ptr %i.ag, null
  br i1 %.not51, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 1
  store i8 1, ptr %i.ah, align 1, !tbaa !88
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.ai = zext i1 %.033 to i8
  store i8 %i.ai, ptr %3, align 8, !tbaa !118
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  ret i1 %.033
}

; Function Attrs: nounwind uwtable
define internal fastcc void @print_ole2_header(ptr nofree noundef nonnull readonly captures(none) %0) unnamed_addr #2 {
bb.a:
  %i.a = load i8, ptr @cli_debug_flag, align 1
  %.not = icmp eq i8 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.67) #21
  %i.b = load i8, ptr %0, align 8, !tbaa !19
  %i.c = zext i8 %i.b to i32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.e = load i8, ptr %i.d, align 1, !tbaa !19
  %i.f = zext i8 %i.e to i32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.h = load i8, ptr %i.g, align 2, !tbaa !19
  %i.i = zext i8 %i.h to i32
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.k = load i8, ptr %i.j, align 1, !tbaa !19
  %i.l = zext i8 %i.k to i32
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.n = load i8, ptr %i.m, align 4, !tbaa !19
  %i.o = zext i8 %i.n to i32
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.q = load i8, ptr %i.p, align 1, !tbaa !19
  %i.r = zext i8 %i.q to i32
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.t = load i8, ptr %i.s, align 2, !tbaa !19
  %i.u = zext i8 %i.t to i32
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 7
  %i.w = load i8, ptr %i.v, align 1, !tbaa !19
  %i.x = zext i8 %i.w to i32
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.68, i32 noundef %i.c, i32 noundef %i.f, i32 noundef %i.i, i32 noundef %i.l, i32 noundef %i.o, i32 noundef %i.r, i32 noundef %i.u, i32 noundef %i.x) #21
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = load i8, ptr %i.y, align 8, !tbaa !19
  %i.aa = zext i8 %i.z to i32
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !19
  %i.ad = zext i8 %i.ac to i32
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.af = load i8, ptr %i.ae, align 2, !tbaa !19
  %i.ag = zext i8 %i.af to i32
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !19
  %i.aj = zext i8 %i.ai to i32
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.al = load i8, ptr %i.ak, align 4, !tbaa !19
  %i.am = zext i8 %i.al to i32
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 13
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !19
  %i.ap = zext i8 %i.ao to i32
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.ar = load i8, ptr %i.aq, align 2, !tbaa !19
  %i.as = zext i8 %i.ar to i32
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 15
  %i.au = load i8, ptr %i.at, align 1, !tbaa !19
  %i.av = zext i8 %i.au to i32
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ax = load i8, ptr %i.aw, align 8, !tbaa !19
  %i.ay = zext i8 %i.ax to i32
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 17
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !19
  %i.bb = zext i8 %i.ba to i32
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.bd = load i8, ptr %i.bc, align 2, !tbaa !19
  %i.be = zext i8 %i.bd to i32
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 19
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !19
  %i.bh = zext i8 %i.bg to i32
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.bj = load i8, ptr %i.bi, align 4, !tbaa !19
  %i.bk = zext i8 %i.bj to i32
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 21
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !19
  %i.bn = zext i8 %i.bm to i32
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 22
  %i.bp = load i8, ptr %i.bo, align 2, !tbaa !19
  %i.bq = zext i8 %i.bp to i32
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 23
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !19
  %i.bt = zext i8 %i.bs to i32
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.69, i32 noundef %i.aa, i32 noundef %i.ad, i32 noundef %i.ag, i32 noundef %i.aj, i32 noundef %i.am, i32 noundef %i.ap, i32 noundef %i.as, i32 noundef %i.av, i32 noundef %i.ay, i32 noundef %i.bb, i32 noundef %i.be, i32 noundef %i.bh, i32 noundef %i.bk, i32 noundef %i.bn, i32 noundef %i.bq, i32 noundef %i.bt) #21
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bv = load i16, ptr %i.bu, align 8, !tbaa !119
  %i.bw = zext i16 %i.bv to i32
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.70, i32 noundef %i.bw) #21
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.by = load i16, ptr %i.bx, align 2, !tbaa !120
  %i.bz = zext i16 %i.by to i32
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.71, i32 noundef %i.bz) #21
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.cb = load i16, ptr %i.ca, align 4, !tbaa !121
  %i.cc = sext i16 %i.cb to i32
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.72, i32 noundef %i.cc) #21
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 30
  %i.ce = load i16, ptr %i.cd, align 2, !tbaa !70
  %i.cf = zext i16 %i.ce to i32
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.73, i32 noundef %i.cf) #21
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !71
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.74, i32 noundef %i.ch) #21
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !89
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.75, i32 noundef %i.cj) #21
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !90
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.76, i32 noundef %i.cl) #21
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !72
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.77, i32 noundef %i.cn) #21
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !91
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.78, i32 noundef %i.cp) #21
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !122
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.79, i32 noundef %i.cr) #21
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !92
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.80, i32 noundef %i.ct) #21
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !123
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.81, i32 noundef %i.cv) #21
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.67) #21
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @ole2_walk_property_tree(ptr noundef nonnull %0, ptr noundef %1, i32 noundef range(i32 0, -1) %2, ptr noundef %3, i32 noundef %4, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef %8, ptr noundef nonnull %9) unnamed_addr #2 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 9 uses
  %i.b = alloca [64 x i8], align 16               ; 9 uses
  %10 = alloca [4 x %struct.property_tag], align 16 ; 5 uses
  %11 = alloca %struct.ole2_list, align 8         ; 14 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  store i32 0, ptr %i.c, align 4, !tbaa !22
  %i.d = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 10 uses
  %i.e = icmp ugt i32 %4, 100
  br i1 %i.e, label %ole2_list_delete.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %5, align 4, !tbaa !22
  %i.g = icmp ugt i32 %i.f, 100000
  br i1 %i.g, label %ole2_list_delete.exit, label %bb.c
end_hunk_0
