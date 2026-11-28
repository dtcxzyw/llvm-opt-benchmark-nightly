Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wolfssl/original/test_tls?download=true
inline.NumInlined: 4
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@test_tls12_peerauth_failsafe:bb.a

bb.i:                                             ; preds = %.critedge299
  %i.bt = zext i8 %i.br to i32
  %i.bu = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.1, i32 noundef 1954) ; 0 uses
  %i.bv = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite285 = call i64 @fwrite(ptr nonnull @.str.2, i64 15, i64 1, ptr %i.bv) ; 0 uses
  %i.bw = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef nonnull @.str.114, ptr noundef nonnull @.str.115) ; 0 uses
  %i.bx = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite286 = call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.bx) ; 0 uses
  %i.by = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %i.bt, i32 noundef 13) ; 0 uses
  br label %.critedge295.sink.split

.critedge295.sink.split:                          ; preds = %bb.i, %bb.g, %bb.h
  %i.bz = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite284 = call i64 @fwrite(ptr nonnull @.str.8, i64 2, i64 1, ptr %i.bz) ; 0 uses
  %i.ca = load ptr, ptr @stdout, align 8, !tbaa !15
  %i.cb = call i32 @fflush(ptr noundef %i.ca)     ; 0 uses
  br label %.critedge295

.critedge295:                                     ; preds = %.critedge295.sink.split, %.critedge291, %.critedge299
  %.13 = phi i32 [ 1, %.critedge299 ], [ 0, %.critedge291 ], [ 0, %.critedge295.sink.split ]
  %i.cc = load ptr, ptr %i.c, align 8, !tbaa !13
  call void @wolfSSL_free(ptr noundef %i.cc) #10
  %i.cd = load ptr, ptr %i.a, align 8, !tbaa !11
  call void @wolfSSL_CTX_free(ptr noundef %i.cd) #10
  %i.ce = load ptr, ptr %i.d, align 8, !tbaa !13
  call void @wolfSSL_free(ptr noundef %i.ce) #10
  %i.cf = load ptr, ptr %i.b, align 8, !tbaa !11
  call void @wolfSSL_CTX_free(ptr noundef %i.cf) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i32 %.13
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @test_tls12_ecdhe_ecdsa_rsa_client_cert() local_unnamed_addr #5 {
bb.a:
  ret i32 3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @test_tls12_ecdhe_rsa_ecdsa_client_cert() local_unnamed_addr #5 {
bb.a:
  ret i32 3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @test_wolfSSL_alert_desc_string() local_unnamed_addr #5 {
bb.a:
  ret i32 3
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 4) i32 @test_record_size_matches_build_message() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @GetCipherNames() #10      ; 3 uses
  %i.b = tail call i32 @GetCipherNamesSize() #10  ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph.preheader, label %._crit_edge.thread

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %i.b to i64    ; 3 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %record_size_skip_cipher.exit.thread
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %record_size_skip_cipher.exit.thread ] ; 13 uses
  %.076117 = phi i32 [ 3, %.lr.ph.preheader ], [ %.480, %record_size_skip_cipher.exit.thread ] ; 10 uses
  %i.d = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %indvars.iv
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !70   ; 11 uses
  %i.f = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.e, ptr noundef nonnull dereferenceable(7) @.str.116, i64 noundef 6) #11
  %i.g = tail call ptr @strstr(ptr noundef nonnull readonly dereferenceable(1) %i.e, ptr noundef nonnull dereferenceable(1) @.str.119) #11
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %bb.b, label %record_size_skip_cipher.exit.thread

.lr.ph.jt0:                                       ; preds = %record_size_skip_cipher.exit.thread.jt0
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %indvars.iv.next.jt0
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !70   ; 11 uses
  %i.j = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.i, ptr noundef nonnull dereferenceable(7) @.str.116, i64 noundef 6) #11
  %i.k = tail call ptr @strstr(ptr noundef nonnull readonly dereferenceable(1) %i.i, ptr noundef nonnull dereferenceable(1) @.str.119) #11
  %.not.i.jt0 = icmp eq ptr %i.k, null
  br i1 %.not.i.jt0, label %bb.c, label %record_size_skip_cipher.exit.thread

bb.b:                                             ; preds = %.lr.ph
  %i.l = tail call ptr @strstr(ptr noundef nonnull readonly dereferenceable(1) %i.e, ptr noundef nonnull dereferenceable(1) @.str.120) #11
  %.not.1.i = icmp eq ptr %i.l, null
  br i1 %.not.1.i, label %bb.d, label %record_size_skip_cipher.exit.thread

bb.c:                                             ; preds = %.lr.ph.jt0
  %i.m = tail call ptr @strstr(ptr noundef nonnull readonly dereferenceable(1) %i.i, ptr noundef nonnull dereferenceable(1) @.str.120) #11
  %.not.1.i.jt0 = icmp eq ptr %i.m, null
  br i1 %.not.1.i.jt0, label %bb.e, label %record_size_skip_cipher.exit.thread

bb.d:                                             ; preds = %bb.b
  %i.n = tail call ptr @strstr(ptr noundef nonnull readonly dereferenceable(1) %i.e, ptr noundef nonnull dereferenceable(1) @.str.121) #11
  %.not.2.i = icmp eq ptr %i.n, null
  br i1 %.not.2.i, label %bb.f, label %record_size_skip_cipher.exit.thread

bb.e:                                             ; preds = %bb.c
  %i.o = tail call ptr @strstr(ptr noundef nonnull readonly dereferenceable(1) %i.i, ptr noundef nonnull dereferenceable(1) @.str.121) #11
  %.not.2.i.jt0 = icmp eq ptr %i.o, null
  br i1 %.not.2.i.jt0, label %bb.g, label %record_size_skip_cipher.exit.thread

bb.f:                                             ; preds = %bb.d
  %i.p = tail call ptr @strstr(ptr noundef nonnull readonly dereferenceable(1) %i.e, ptr noundef nonnull dereferenceable(1) @.str.122) #11
  %.not.3.i = icmp eq ptr %i.p, null
  br i1 %.not.3.i, label %bb.h, label %record_size_skip_cipher.exit.thread

bb.g:                                             ; preds = %bb.e
  %i.q = tail call ptr @strstr(ptr noundef nonnull readonly dereferenceable(1) %i.i, ptr noundef nonnull dereferenceable(1) @.str.122) #11
  %.not.3.i.jt0 = icmp eq ptr %i.q, null
  br i1 %.not.3.i.jt0, label %bb.i, label %record_size_skip_cipher.exit.thread

bb.h:                                             ; preds = %bb.f
  %i.r = tail call ptr @strstr(ptr noundef nonnull readonly dereferenceable(1) %i.e, ptr noundef nonnull dereferenceable(1) @.str.123) #11
  %.not.4.i = icmp eq ptr %i.r, null
  br i1 %.not.4.i, label %bb.j, label %record_size_skip_cipher.exit.thread

bb.i:                                             ; preds = %bb.g
  %i.s = tail call ptr @strstr(ptr noundef nonnull readonly dereferenceable(1) %i.i, ptr noundef nonnull dereferenceable(1) @.str.123) #11
  %.not.4.i.jt0 = icmp eq ptr %i.s, null
  br i1 %.not.4.i.jt0, label %bb.k, label %record_size_skip_cipher.exit.thread

bb.j:                                             ; preds = %bb.h
  %i.t = tail call ptr @strstr(ptr noundef nonnull readonly dereferenceable(1) %i.e, ptr noundef nonnull dereferenceable(1) @.str.124) #11
  %.not.5.i = icmp eq ptr %i.t, null
  br i1 %.not.5.i, label %bb.l, label %record_size_skip_cipher.exit.thread

bb.k:                                             ; preds = %bb.i
  %i.u = tail call ptr @strstr(ptr noundef nonnull readonly dereferenceable(1) %i.i, ptr noundef nonnull dereferenceable(1) @.str.124) #11
  %.not.5.i.jt0 = icmp eq ptr %i.u, null
  br i1 %.not.5.i.jt0, label %bb.m, label %record_size_skip_cipher.exit.thread

bb.l:                                             ; preds = %bb.j
  %i.v = tail call ptr @strstr(ptr noundef nonnull readonly dereferenceable(1) %i.e, ptr noundef nonnull dereferenceable(1) @.str.125) #11
  %.not.6.i = icmp eq ptr %i.v, null
  br i1 %.not.6.i, label %record_size_skip_cipher.exit, label %record_size_skip_cipher.exit.thread

bb.m:                                             ; preds = %bb.k
  %i.w = tail call ptr @strstr(ptr noundef nonnull readonly dereferenceable(1) %i.i, ptr noundef nonnull dereferenceable(1) @.str.125) #11
  %.not.6.i.jt0 = icmp eq ptr %i.w, null
  br i1 %.not.6.i.jt0, label %record_size_skip_cipher.exit.jt0, label %record_size_skip_cipher.exit.thread

record_size_skip_cipher.exit:                     ; preds = %bb.l
  %i.x = tail call ptr @strstr(ptr noundef nonnull readonly dereferenceable(1) %i.e, ptr noundef nonnull dereferenceable(1) @.str.126) #11
  %.not.7.i.not = icmp eq ptr %i.x, null
  br i1 %.not.7.i.not, label %bb.n, label %record_size_skip_cipher.exit.thread

record_size_skip_cipher.exit.jt0:                 ; preds = %bb.m
  %i.y = tail call ptr @strstr(ptr noundef nonnull readonly dereferenceable(1) %i.i, ptr noundef nonnull dereferenceable(1) @.str.126) #11
  %.not.7.i.not.jt0 = icmp eq ptr %i.y, null
  br i1 %.not.7.i.not.jt0, label %bb.o, label %record_size_skip_cipher.exit.thread

bb.n:                                             ; preds = %record_size_skip_cipher.exit
  %i.z = icmp eq i32 %i.f, 0
  br i1 %i.z, label %bb.p, label %.loopexit

bb.o:                                             ; preds = %record_size_skip_cipher.exit.jt0
  %i.aa = icmp eq i32 %i.j, 0
  br i1 %i.aa, label %bb.r, label %.loopexit

bb.p:                                             ; preds = %bb.n
  %.not121 = icmp eq i32 %.076117, 0
  br i1 %.not121, label %record_size_skip_cipher.exit.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ab = tail call fastcc i32 @record_size_run_pair(ptr noundef nonnull @wolfTLSv1_3_client_method, ptr noundef nonnull @wolfTLSv1_3_server_method, ptr noundef nonnull %i.e)
  %.not86 = icmp eq i32 %i.ab, 0
  br i1 %.not86, label %record_size_skip_cipher.exit.thread.jt0.sink.split, label %record_size_skip_cipher.exit.thread.jt0.preheader

bb.r:                                             ; preds = %bb.o
  %i.ac = tail call fastcc i32 @record_size_run_pair(ptr noundef nonnull @wolfTLSv1_3_client_method, ptr noundef nonnull @wolfTLSv1_3_server_method, ptr noundef nonnull %i.i)
  %.not86.jt0 = icmp eq i32 %i.ac, 0
  br i1 %.not86.jt0, label %record_size_skip_cipher.exit.thread.jt0.sink.split.loopexit, label %record_size_skip_cipher.exit.thread.jt0, !llvm.loop !67

.loopexit:                                        ; preds = %bb.z, %bb.o, %bb.n
  %i.ad = phi ptr [ %i.e, %bb.n ], [ %i.ao, %bb.z ], [ %i.i, %bb.o ]
  %.076117128 = phi i32 [ %.076117, %bb.n ], [ %.480.jt0.ph, %bb.z ], [ 1, %bb.o ]
  %indvars.iv124 = phi i64 [ %indvars.iv, %bb.n ], [ %indvars.iv.next.jt0.peel, %bb.z ], [ %indvars.iv.next.jt0, %bb.o ] ; 3 uses
  %.not = icmp eq i32 %.076117128, 0
  br i1 %.not, label %record_size_skip_cipher.exit.thread, label %bb.s

bb.s:                                             ; preds = %.loopexit
  %i.ae = tail call fastcc i32 @record_size_run_pair(ptr noundef nonnull @wolfTLSv1_2_client_method, ptr noundef nonnull @wolfTLSv1_2_server_method, ptr noundef nonnull %i.ad)
  %.not83 = icmp eq i32 %i.ae, 0
  br i1 %.not83, label %record_size_skip_cipher.exit.thread.jt0.sink.split, label %record_size_skip_cipher.exit.thread.jt0.preheader

record_size_skip_cipher.exit.thread:              ; preds = %.lr.ph.jt0.peel, %bb.t, %bb.u, %bb.v, %bb.w, %bb.x, %bb.y, %record_size_skip_cipher.exit.jt0.peel, %bb.aa, %record_size_skip_cipher.exit.jt0, %bb.m, %bb.k, %bb.i, %bb.g, %bb.e, %bb.c, %.lr.ph.jt0, %bb.l, %bb.f, %bb.j, %bb.d, %bb.b, %bb.h, %.lr.ph, %bb.p, %.loopexit, %record_size_skip_cipher.exit
  %indvars.iv123 = phi i64 [ %indvars.iv, %bb.f ], [ %indvars.iv, %bb.j ], [ %indvars.iv, %bb.d ], [ %indvars.iv, %bb.b ], [ %indvars.iv, %bb.h ], [ %indvars.iv, %.lr.ph ], [ %indvars.iv, %bb.p ], [ %indvars.iv124, %.loopexit ], [ %indvars.iv, %record_size_skip_cipher.exit ], [ %indvars.iv, %bb.l ], [ %indvars.iv.next.jt0.peel, %.lr.ph.jt0.peel ], [ %indvars.iv.next.jt0.peel, %bb.t ], [ %indvars.iv.next.jt0.peel, %bb.u ], [ %indvars.iv.next.jt0.peel, %bb.v ], [ %indvars.iv.next.jt0.peel, %bb.w ], [ %indvars.iv.next.jt0.peel, %bb.x ], [ %indvars.iv.next.jt0.peel, %bb.y ], [ %indvars.iv.next.jt0.peel, %record_size_skip_cipher.exit.jt0.peel ], [ %indvars.iv.next.jt0.peel, %bb.aa ], [ %indvars.iv.next.jt0, %record_size_skip_cipher.exit.jt0 ], [ %indvars.iv.next.jt0, %bb.m ], [ %indvars.iv.next.jt0, %bb.k ], [ %indvars.iv.next.jt0, %bb.i ], [ %indvars.iv.next.jt0, %bb.g ], [ %indvars.iv.next.jt0, %bb.e ], [ %indvars.iv.next.jt0, %bb.c ], [ %indvars.iv.next.jt0, %.lr.ph.jt0 ]
  %.480 = phi i32 [ %.076117, %bb.f ], [ %.076117, %bb.j ], [ %.076117, %bb.d ], [ %.076117, %bb.b ], [ %.076117, %bb.h ], [ %.076117, %.lr.ph ], [ 0, %bb.p ], [ 0, %.loopexit ], [ %.076117, %record_size_skip_cipher.exit ], [ %.076117, %bb.l ], [ %.480.jt0.ph, %.lr.ph.jt0.peel ], [ %.480.jt0.ph, %bb.t ], [ %.480.jt0.ph, %bb.u ], [ %.480.jt0.ph, %bb.v ], [ %.480.jt0.ph, %bb.w ], [ %.480.jt0.ph, %bb.x ], [ %.480.jt0.ph, %bb.y ], [ %.480.jt0.ph, %record_size_skip_cipher.exit.jt0.peel ], [ 0, %bb.aa ], [ 1, %record_size_skip_cipher.exit.jt0 ], [ 1, %bb.m ], [ 1, %bb.k ], [ 1, %bb.i ], [ 1, %bb.g ], [ 1, %bb.e ], [ 1, %bb.c ], [ 1, %.lr.ph.jt0 ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv123, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !68

record_size_skip_cipher.exit.thread.jt0.sink.split.loopexit: ; preds = %bb.r, %bb.ab
  %indvars.iv.next.jt0.lcssa134 = phi i64 [ %indvars.iv.next.jt0.peel, %bb.ab ], [ %indvars.iv.next.jt0, %bb.r ]
  br label %record_size_skip_cipher.exit.thread.jt0.sink.split

record_size_skip_cipher.exit.thread.jt0.sink.split: ; preds = %record_size_skip_cipher.exit.thread.jt0.sink.split.loopexit, %bb.q, %bb.s
  %.sink = phi i32 [ 2255, %bb.s ], [ 2241, %bb.q ], [ 2241, %record_size_skip_cipher.exit.thread.jt0.sink.split.loopexit ]
  %.str.118.sink = phi ptr [ @.str.118, %bb.s ], [ @.str.117, %bb.q ], [ @.str.117, %record_size_skip_cipher.exit.thread.jt0.sink.split.loopexit ]
  %indvars.iv127.ph = phi i64 [ %indvars.iv124, %bb.s ], [ %indvars.iv, %bb.q ], [ %indvars.iv.next.jt0.lcssa134, %record_size_skip_cipher.exit.thread.jt0.sink.split.loopexit ]
  %i.af = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.1, i32 noundef %.sink) ; 0 uses
  %i.ag = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.2, i64 15, i64 1, ptr %i.ag) ; 0 uses
  %i.ah = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef nonnull %.str.118.sink, ptr noundef nonnull @.str.10) ; 0 uses
  %i.ai = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite84 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.ai) ; 0 uses
  %i.aj = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef 0, i32 noundef 1) ; 0 uses
  %i.ak = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite85 = tail call i64 @fwrite(ptr nonnull @.str.8, i64 2, i64 1, ptr %i.ak) ; 0 uses
  %i.al = load ptr, ptr @stdout, align 8, !tbaa !15
  %i.am = tail call i32 @fflush(ptr noundef %i.al) ; 0 uses
  br label %record_size_skip_cipher.exit.thread.jt0.preheader

record_size_skip_cipher.exit.thread.jt0.preheader: ; preds = %bb.s, %record_size_skip_cipher.exit.thread.jt0.sink.split, %bb.q
  %indvars.iv127.ph131 = phi i64 [ %indvars.iv, %bb.q ], [ %indvars.iv124, %bb.s ], [ %indvars.iv127.ph, %record_size_skip_cipher.exit.thread.jt0.sink.split ]
  %.not121.jt0.ph = phi i1 [ false, %bb.q ], [ false, %bb.s ], [ true, %record_size_skip_cipher.exit.thread.jt0.sink.split ]
  %.480.jt0.ph = phi i32 [ 1, %bb.q ], [ 1, %bb.s ], [ 0, %record_size_skip_cipher.exit.thread.jt0.sink.split ] ; 10 uses
  %indvars.iv.next.jt0.peel = add nuw nsw i64 %indvars.iv127.ph131, 1 ; 14 uses
  %exitcond.not.jt0.peel = icmp eq i64 %indvars.iv.next.jt0.peel, %wide.trip.count
  br i1 %exitcond.not.jt0.peel, label %._crit_edge.thread, label %.lr.ph.jt0.peel, !llvm.loop !68

.lr.ph.jt0.peel:                                  ; preds = %record_size_skip_cipher.exit.thread.jt0.preheader
  %i.an = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %indvars.iv.next.jt0.peel
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !70 ; 11 uses
  %i.ap = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.ao, ptr noundef nonnull dereferenceable(7) @.str.116, i64 noundef 6) #11
  %i.aq = tail call ptr @strstr(ptr noundef nonnull readonly dereferenceable(1) %i.ao, ptr noundef nonnull dereferenceable(1) @.str.119) #11
  %.not.i.jt0.peel = icmp eq ptr %i.aq, null
  br i1 %.not.i.jt0.peel, label %bb.t, label %record_size_skip_cipher.exit.thread

bb.t:                                             ; preds = %.lr.ph.jt0.peel
  %i.ar = tail call ptr @strstr(ptr noundef nonnull readonly dereferenceable(1) %i.ao, ptr noundef nonnull dereferenceable(1) @.str.120) #11
  %.not.1.i.jt0.peel = icmp eq ptr %i.ar, null
  br i1 %.not.1.i.jt0.peel, label %bb.u, label %record_size_skip_cipher.exit.thread

bb.u:                                             ; preds = %bb.t
  %i.as = tail call ptr @strstr(ptr noundef nonnull readonly dereferenceable(1) %i.ao, ptr noundef nonnull dereferenceable(1) @.str.121) #11
  %.not.2.i.jt0.peel = icmp eq ptr %i.as, null
  br i1 %.not.2.i.jt0.peel, label %bb.v, label %record_size_skip_cipher.exit.thread

bb.v:                                             ; preds = %bb.u
  %i.at = tail call ptr @strstr(ptr noundef nonnull readonly dereferenceable(1) %i.ao, ptr noundef nonnull dereferenceable(1) @.str.122) #11
  %.not.3.i.jt0.peel = icmp eq ptr %i.at, null
  br i1 %.not.3.i.jt0.peel, label %bb.w, label %record_size_skip_cipher.exit.thread

bb.w:                                             ; preds = %bb.v
  %i.au = tail call ptr @strstr(ptr noundef nonnull readonly dereferenceable(1) %i.ao, ptr noundef nonnull dereferenceable(1) @.str.123) #11
  %.not.4.i.jt0.peel = icmp eq ptr %i.au, null
  br i1 %.not.4.i.jt0.peel, label %bb.x, label %record_size_skip_cipher.exit.thread

bb.x:                                             ; preds = %bb.w
  %i.av = tail call ptr @strstr(ptr noundef nonnull readonly dereferenceable(1) %i.ao, ptr noundef nonnull dereferenceable(1) @.str.124) #11
  %.not.5.i.jt0.peel = icmp eq ptr %i.av, null
  br i1 %.not.5.i.jt0.peel, label %bb.y, label %record_size_skip_cipher.exit.thread

bb.y:                                             ; preds = %bb.x
  %i.aw = tail call ptr @strstr(ptr noundef nonnull readonly dereferenceable(1) %i.ao, ptr noundef nonnull dereferenceable(1) @.str.125) #11
  %.not.6.i.jt0.peel = icmp eq ptr %i.aw, null
  br i1 %.not.6.i.jt0.peel, label %record_size_skip_cipher.exit.jt0.peel, label %record_size_skip_cipher.exit.thread

record_size_skip_cipher.exit.jt0.peel:            ; preds = %bb.y
  %i.ax = tail call ptr @strstr(ptr noundef nonnull readonly dereferenceable(1) %i.ao, ptr noundef nonnull dereferenceable(1) @.str.126) #11
  %.not.7.i.not.jt0.peel = icmp eq ptr %i.ax, null
  br i1 %.not.7.i.not.jt0.peel, label %bb.z, label %record_size_skip_cipher.exit.thread

bb.z:                                             ; preds = %record_size_skip_cipher.exit.jt0.peel
  %i.ay = icmp eq i32 %i.ap, 0
  br i1 %i.ay, label %bb.aa, label %.loopexit

bb.aa:                                            ; preds = %bb.z
  br i1 %.not121.jt0.ph, label %record_size_skip_cipher.exit.thread, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.az = tail call fastcc i32 @record_size_run_pair(ptr noundef nonnull @wolfTLSv1_3_client_method, ptr noundef nonnull @wolfTLSv1_3_server_method, ptr noundef nonnull %i.ao)
  %.not86.jt0.peel = icmp eq i32 %i.az, 0
  br i1 %.not86.jt0.peel, label %record_size_skip_cipher.exit.thread.jt0.sink.split.loopexit, label %record_size_skip_cipher.exit.thread.jt0

record_size_skip_cipher.exit.thread.jt0:          ; preds = %bb.ab, %bb.r
  %indvars.iv127 = phi i64 [ %indvars.iv.next.jt0, %bb.r ], [ %indvars.iv.next.jt0.peel, %bb.ab ]
  %indvars.iv.next.jt0 = add nuw nsw i64 %indvars.iv127, 1 ; 13 uses
  %exitcond.not.jt0 = icmp eq i64 %indvars.iv.next.jt0, %wide.trip.count
  br i1 %exitcond.not.jt0, label %._crit_edge.thread, label %.lr.ph.jt0, !llvm.loop !68

._crit_edge:                                      ; preds = %record_size_skip_cipher.exit.thread
  %i.ba = icmp eq i32 %.480, 2
  %spec.select = select i1 %i.ba, i32 1, i32 %.480
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %record_size_skip_cipher.exit.thread.jt0, %record_size_skip_cipher.exit.thread.jt0.preheader, %._crit_edge, %bb.a
  %i.bb = phi i32 [ 3, %bb.a ], [ %spec.select, %._crit_edge ], [ 1, %record_size_skip_cipher.exit.thread.jt0 ], [ %.480.jt0.ph, %record_size_skip_cipher.exit.thread.jt0.preheader ]
  ret i32 %i.bb
}

declare ptr @GetCipherNames() local_unnamed_addr #3

declare i32 @GetCipherNamesSize() local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @record_size_run_pair(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 7 uses
  %i.d = alloca ptr, align 8                      ; 7 uses
  %3 = alloca %struct.test_memio_ctx, align 8     ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store ptr null, ptr %i.a, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  store ptr null, ptr %i.b, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  store ptr null, ptr %i.c, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  store ptr null, ptr %i.d, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  %i.e = tail call ptr %0() #10, !callees !73, !inline_history !72
  %i.f = tail call ptr @wolfSSL_CTX_new(ptr noundef %i.e) #10 ; 3 uses
  %i.g = tail call ptr %1() #10, !callees !74, !inline_history !72
  %i.h = tail call ptr @wolfSSL_CTX_new(ptr noundef %i.g) #10 ; 3 uses
  %i.i = icmp ne ptr %i.f, null                   ; 2 uses
  %i.j = icmp ne ptr %i.h, null                   ; 2 uses
  %or.cond.i = select i1 %i.i, i1 %i.j, i1 false
  br i1 %or.cond.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.k = tail call i32 @wolfSSL_CTX_set_cipher_list(ptr noundef nonnull %i.f, ptr noundef %2) #10
  %i.l = icmp eq i32 %i.k, 1
  br i1 %i.l, label %bb.c, label %.thread.i

bb.c:                                             ; preds = %bb.b
  %i.m = tail call i32 @wolfSSL_CTX_set_cipher_list(ptr noundef nonnull %i.h, ptr noundef %2) #10
  %i.n = icmp ne i32 %i.m, 1
  br label %.thread.i

bb.d:                                             ; preds = %bb.a
  br i1 %i.i, label %.thread.i, label %bb.e

.thread.i:                                        ; preds = %bb.d, %bb.c, %bb.b
  %i.o = phi i1 [ true, %bb.d ], [ %i.n, %bb.c ], [ true, %bb.b ]
  tail call void @wolfSSL_CTX_free(ptr noundef nonnull %i.f) #10
  br label %bb.e

bb.e:                                             ; preds = %.thread.i, %bb.d
  %.not = phi i1 [ %i.o, %.thread.i ], [ true, %bb.d ]
  br i1 %i.j, label %bb.f, label %record_size_cipher_selectable.exit

bb.f:                                             ; preds = %bb.e
  tail call void @wolfSSL_CTX_free(ptr noundef nonnull %i.h) #10
  br label %record_size_cipher_selectable.exit

record_size_cipher_selectable.exit:               ; preds = %bb.e, %bb.f
  br i1 %.not, label %bb.k, label %bb.g

bb.g:                                             ; preds = %record_size_cipher_selectable.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(131384) %3, i8 0, i64 131384, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 131096
  store ptr %2, ptr %i.p, align 8, !tbaa !75
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 65544
  store ptr %2, ptr %i.q, align 8, !tbaa !76
  %i.r = call i32 @test_memio_setup(ptr noundef nonnull %3, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef %0, ptr noundef %1) #10 ; 2 uses
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.1, i32 noundef 2195) ; 0 uses
  %i.u = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite = call i64 @fwrite(ptr nonnull @.str.2, i64 15, i64 1, ptr %i.u) ; 0 uses
  %i.v = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef nonnull @.str.127, ptr noundef nonnull @.str.5) ; 0 uses
  %i.w = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite147 = call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.w) ; 0 uses
  %i.x = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %i.r, i32 noundef 0) ; 0 uses
  br label %.critedge162.sink.split

.critedge:                                        ; preds = %bb.g
  %i.y = load ptr, ptr %i.c, align 8, !tbaa !13
  %i.z = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.aa = call i32 @test_memio_do_handshake(ptr noundef %i.y, ptr noundef %i.z, i32 noundef 30, ptr noundef null) #10 ; 2 uses
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %.critedge161, label %bb.i

bb.i:                                             ; preds = %.critedge
  %i.ac = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.1, i32 noundef 2209) ; 0 uses
  %i.ad = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite149 = call i64 @fwrite(ptr nonnull @.str.2, i64 15, i64 1, ptr %i.ad) ; 0 uses
  %i.ae = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef nonnull @.str.128, ptr noundef nonnull @.str.5) ; 0 uses
  %i.af = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite150 = call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.af) ; 0 uses
  %i.ag = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %i.aa, i32 noundef 0) ; 0 uses
  br label %.critedge162.sink.split

.critedge161:                                     ; preds = %.critedge
  %i.ah = load ptr, ptr %i.c, align 8, !tbaa !13
  %i.ai = call fastcc i32 @record_size_check_ssl(ptr noundef %i.ah)
  %.not164 = icmp eq i32 %i.ai, 0
  br i1 %.not164, label %.critedge159, label %.critedge163

.critedge159:                                     ; preds = %.critedge161
  %i.aj = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.1, i32 noundef 2210) ; 0 uses
  %i.ak = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite152 = call i64 @fwrite(ptr nonnull @.str.2, i64 15, i64 1, ptr %i.ak) ; 0 uses
  %i.al = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef nonnull @.str.129, ptr noundef nonnull @.str.10) ; 0 uses
  %i.am = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite153 = call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.am) ; 0 uses
  %i.an = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef 0, i32 noundef 1) ; 0 uses
  br label %.critedge162.sink.split

.critedge163:                                     ; preds = %.critedge161
  %i.ao = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ap = call fastcc i32 @record_size_check_ssl(ptr noundef %i.ao)
  %.not165 = icmp eq i32 %i.ap, 0
  br i1 %.not165, label %bb.j, label %.critedge162

bb.j:                                             ; preds = %.critedge163
  %i.aq = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.1, i32 noundef 2211) ; 0 uses
  %i.ar = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite155 = call i64 @fwrite(ptr nonnull @.str.2, i64 15, i64 1, ptr %i.ar) ; 0 uses
end_hunk_0
