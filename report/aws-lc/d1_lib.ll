Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/aws-lc/original/d1_lib?download=true
inline.NumInlined: 103
inline.NumDeleted: 88
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN4bssl22dtls1_is_timer_expiredEP6ssl_st:bb.a
  %i.v = sext i1 %.not21.i to i64
  %.sroa.0.0.i = add i64 %i.t, %i.v
  %.sroa.0.0.fr.i = freeze i64 %.sroa.0.0.i
  %.sroa.10.0.v.i = select i1 %.not21.i, i32 %i.u, i32 %i.s
  %.sroa.10.0.i = sub i32 %.sroa.10.0.v.i, %i.r
  %i.w = icmp eq i64 %.sroa.0.0.fr.i, 0
  %i.x = icmp ult i32 %.sroa.10.0.i, 15000
  %.not10 = select i1 %i.w, i1 %i.x, i1 false
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %.thread.i
  %.sroa.0.0 = phi i1 [ %.not10, %.thread.i ], [ true, %bb.e ], [ true, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #9
  br label %DTLSv1_get_timeout.exit.thread

DTLSv1_get_timeout.exit.thread:                   ; preds = %bb.c, %bb.a, %bb.f
  %.0 = phi i1 [ %.sroa.0.0, %bb.f ], [ false, %bb.a ], [ false, %bb.c ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 2) i32 @DTLSv1_get_timeout(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #1 {
bb.a:
  %2 = alloca %"struct.bssl::OPENSSL_timeval", align 8 ; 5 uses
  %i.a = tail call i32 @SSL_is_dtls(ptr noundef %0) #9
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !79   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 312
  %i.e = load i64, ptr %i.d, align 8, !tbaa !80
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 320
  %i.h = load i32, ptr %i.g, align 8, !tbaa !81
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  call void @_ZN4bssl20ssl_get_current_timeEPK6ssl_stPNS_15OPENSSL_timevalE(ptr noundef nonnull %0, ptr noundef nonnull %2) #9
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !79   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 312
  %i.l = load i64, ptr %i.k, align 8, !tbaa !80   ; 3 uses
  %i.m = load i64, ptr %2, align 8, !tbaa !83     ; 3 uses
  %i.n = icmp ult i64 %i.l, %i.m
  br i1 %i.n, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = icmp ne i64 %i.l, %i.m
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 320
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = load i32, ptr %i.q, align 8, !tbaa !84   ; 3 uses
  %i.s = load i32, ptr %i.p, align 8              ; 4 uses
  %.not20 = icmp ugt i32 %i.s, %i.r
  %or.cond40 = select i1 %i.o, i1 true, i1 %.not20
  br i1 %or.cond40, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  br label %bb.g

.thread:                                          ; preds = %bb.e
  %i.t = sub i64 %i.l, %i.m
  %.not21 = icmp ult i32 %i.s, %i.r               ; 2 uses
  %i.u = add i32 %i.s, 1000000
  %i.v = sext i1 %.not21 to i64
  %.sroa.0.0 = add i64 %i.t, %i.v
  %.sroa.0.0.fr = freeze i64 %.sroa.0.0           ; 2 uses
  %.sroa.10.0.v = select i1 %.not21, i32 %i.u, i32 %i.s
  %.sroa.10.0 = sub i32 %.sroa.10.0.v, %i.r       ; 2 uses
  %i.w = icmp eq i64 %.sroa.0.0.fr, 0
  %i.x = icmp ult i32 %.sroa.10.0, 15000
  %or.cond = select i1 %i.w, i1 %i.x, i1 false    ; 2 uses
  %spec.select = call i64 @llvm.umin.i64(i64 %.sroa.0.0.fr, i64 2147483647)
  %i.y = select i1 %or.cond, i64 0, i64 %spec.select
  store i64 %i.y, ptr %1, align 8, !tbaa !98
  %i.z = zext i32 %.sroa.10.0 to i64
  %i.aa = select i1 %or.cond, i64 0, i64 %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !99
  br label %bb.g

bb.g:                                             ; preds = %.thread, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %bb.a, %bb.g
  %.1 = phi i32 [ 0, %bb.a ], [ 1, %bb.g ], [ 0, %bb.c ]
  ret i32 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN4bssl16dtls1_stop_timerEP6ssl_st(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !79
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 308
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.c, i8 0, i64 20, i1 false)
  %i.e = load i32, ptr %i.d, align 8, !tbaa !82
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !79
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 328
  store i32 %i.e, ptr %i.g, align 8, !tbaa !28
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN4bssl23dtls1_check_timeout_numEP6ssl_st(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !79
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 308 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !85
  %i.e = add i32 %i.d, 1                          ; 2 uses
  store i32 %i.e, ptr %i.c, align 4, !tbaa !85
  %i.f = icmp ugt i32 %i.e, 2
  br i1 %i.f, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.g = tail call i32 @SSL_get_options(ptr noundef nonnull %0) #9
  %i.h = and i32 %i.g, 4096
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !86
  %i.k = tail call i64 @BIO_ctrl(ptr noundef %i.j, i32 noundef 47, i64 noundef 0, ptr noundef null) #9 ; 2 uses
  %or.cond = icmp ult i64 %i.k, 1073741825
  br i1 %or.cond, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.l = trunc nuw nsw i64 %i.k to i32            ; 2 uses
  %i.m = tail call noundef i32 @_ZN4bssl13dtls1_min_mtuEv() #9
  %.not13 = icmp ugt i32 %i.m, %i.l
  br i1 %.not13, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !79
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 304
  store i32 %i.l, ptr %i.o, align 8, !tbaa !87
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.d, %bb.e, %bb.b, %bb.a
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !79
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 308
  %i.r = load i32, ptr %i.q, align 4, !tbaa !85
  %i.s = icmp ult i32 %i.r, 13                    ; 2 uses
  br i1 %i.s, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 198, ptr noundef nonnull @.str, i32 noundef 131) #9
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  ret i1 %i.s
}

declare i32 @SSL_get_options(ptr noundef) local_unnamed_addr #2

declare i64 @BIO_ctrl(ptr noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare noundef i32 @_ZN4bssl13dtls1_min_mtuEv() local_unnamed_addr #2

declare void @ERR_put_error(i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @DTLSv1_set_initial_timeout_duration(ptr nofree noundef writeonly captures(none) initializes((104, 108)) %0, i32 noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i32 %1, ptr %i.a, align 8, !tbaa !82
  ret void
}

declare i32 @SSL_is_dtls(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define noundef i32 @DTLSv1_handle_timeout(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %1 = alloca %"struct.bssl::OPENSSL_timeval", align 8 ; 6 uses
  tail call void @_ZN4bssl21ssl_reset_error_stateEP6ssl_st(ptr noundef %0) #9
  %i.a = tail call i32 @SSL_is_dtls(ptr noundef %0) #9
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 66, ptr noundef nonnull @.str, i32 noundef 200) #9
  br label %_ZN4bssl22dtls1_is_timer_expiredEP6ssl_st.exit.thread

bb.c:                                             ; preds = %bb.a
  %i.b = tail call i32 @SSL_is_dtls(ptr noundef %0) #9
  %.not.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i, label %_ZN4bssl22dtls1_is_timer_expiredEP6ssl_st.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !79   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 312
  %i.f = load i64, ptr %i.e, align 8, !tbaa !80
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 320
  %i.i = load i32, ptr %i.h, align 8, !tbaa !81
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %_ZN4bssl22dtls1_is_timer_expiredEP6ssl_st.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #9
  call void @_ZN4bssl20ssl_get_current_timeEPK6ssl_stPNS_15OPENSSL_timevalE(ptr noundef nonnull %0, ptr noundef nonnull %1) #9
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !79   ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 312
  %i.m = load i64, ptr %i.l, align 8, !tbaa !80   ; 3 uses
  %i.n = load i64, ptr %1, align 8, !tbaa !83     ; 3 uses
  %i.o = icmp ult i64 %i.m, %i.n
  br i1 %i.o, label %_ZN4bssl22dtls1_is_timer_expiredEP6ssl_st.exit.thread9, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = icmp ne i64 %i.m, %i.n
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 320
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.s = load i32, ptr %i.r, align 8, !tbaa !84   ; 3 uses
  %i.t = load i32, ptr %i.q, align 8              ; 4 uses
  %.not20.i.i = icmp ugt i32 %i.t, %i.s
  %or.cond = select i1 %i.p, i1 true, i1 %.not20.i.i
  br i1 %or.cond, label %_ZN4bssl22dtls1_is_timer_expiredEP6ssl_st.exit, label %_ZN4bssl22dtls1_is_timer_expiredEP6ssl_st.exit.thread9

_ZN4bssl22dtls1_is_timer_expiredEP6ssl_st.exit.thread9: ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #9
  br label %bb.h

_ZN4bssl22dtls1_is_timer_expiredEP6ssl_st.exit:   ; preds = %bb.g
  %i.u = sub i64 %i.m, %i.n
  %.not21.i.i = icmp ult i32 %i.t, %i.s           ; 2 uses
  %i.v = add i32 %i.t, 1000000
  %i.w = sext i1 %.not21.i.i to i64
  %.sroa.0.0.i.i = add i64 %i.u, %i.w
  %.sroa.0.0.fr.i.i = freeze i64 %.sroa.0.0.i.i
  %.sroa.10.0.v.i.i = select i1 %.not21.i.i, i32 %i.v, i32 %i.t
  %.sroa.10.0.i.i = sub i32 %.sroa.10.0.v.i.i, %i.s
  %i.x = icmp eq i64 %.sroa.0.0.fr.i.i, 0
  %i.y = icmp ult i32 %.sroa.10.0.i.i, 15000
  %.not10.i = select i1 %i.x, i1 %i.y, i1 false
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #9
  br i1 %.not10.i, label %bb.h, label %_ZN4bssl22dtls1_is_timer_expiredEP6ssl_st.exit.thread

bb.h:                                             ; preds = %_ZN4bssl22dtls1_is_timer_expiredEP6ssl_st.exit.thread9, %_ZN4bssl22dtls1_is_timer_expiredEP6ssl_st.exit
  %i.z = getelementptr inbounds nuw i8, ptr %i.k, i64 308 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !85
  %i.ab = add i32 %i.aa, 1                        ; 2 uses
  store i32 %i.ab, ptr %i.z, align 4, !tbaa !85
  %i.ac = icmp ugt i32 %i.ab, 2
  br i1 %i.ac, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.ad = call i32 @SSL_get_options(ptr noundef nonnull %0) #9
  %i.ae = and i32 %i.ad, 4096
  %.not.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !86
  %i.ah = call i64 @BIO_ctrl(ptr noundef %i.ag, i32 noundef 47, i64 noundef 0, ptr noundef null) #9 ; 2 uses
  %or.cond.i = icmp ult i64 %i.ah, 1073741825
  br i1 %or.cond.i, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.ai = trunc nuw nsw i64 %i.ah to i32          ; 2 uses
  %i.aj = call noundef i32 @_ZN4bssl13dtls1_min_mtuEv() #9
  %.not13.i = icmp ugt i32 %i.aj, %i.ai
  br i1 %.not13.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ak = load ptr, ptr %i.c, align 8, !tbaa !79
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 304
  store i32 %i.ai, ptr %i.al, align 8, !tbaa !87
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %bb.h
  %i.am = load ptr, ptr %i.c, align 8, !tbaa !79  ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 308
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !85
  %i.ap = icmp ult i32 %i.ao, 13
  br i1 %i.ap, label %bb.n, label %_ZN4bssl23dtls1_check_timeout_numEP6ssl_st.exit

_ZN4bssl23dtls1_check_timeout_numEP6ssl_st.exit:  ; preds = %bb.m
  call void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 198, ptr noundef nonnull @.str, i32 noundef 131) #9
  br label %_ZN4bssl22dtls1_is_timer_expiredEP6ssl_st.exit.thread

bb.n:                                             ; preds = %bb.m
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 328 ; 3 uses
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !28
  %i.as = shl i32 %i.ar, 1
  %spec.store.select.i = call i32 @llvm.umin.i32(i32 %i.as, i32 60000)
  store i32 %spec.store.select.i, ptr %i.aq, align 8, !tbaa !28
  %i.at = getelementptr inbounds nuw i8, ptr %i.am, i64 312 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !80
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.aw = getelementptr inbounds nuw i8, ptr %i.am, i64 320
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !81
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !82
  store i32 %i.ba, ptr %i.aq, align 8, !tbaa !28
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n
  call void @_ZN4bssl20ssl_get_current_timeEPK6ssl_stPNS_15OPENSSL_timevalE(ptr noundef nonnull %0, ptr noundef nonnull %i.at) #9
  %i.bb = load ptr, ptr %i.c, align 8, !tbaa !79  ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 328
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !28 ; 2 uses
  %i.be = udiv i32 %i.bd, 1000
  %i.bf = zext nneg i32 %i.be to i64
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bb, i64 312 ; 3 uses
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !80
  %i.bi = add i64 %i.bh, %i.bf                    ; 2 uses
  store i64 %i.bi, ptr %i.bg, align 8, !tbaa !80
  %i.bj = urem i32 %i.bd, 1000
  %i.bk = mul nuw nsw i32 %i.bj, 1000
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bb, i64 320 ; 3 uses
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !81
  %i.bn = add i32 %i.bm, %i.bk                    ; 3 uses
  store i32 %i.bn, ptr %i.bl, align 8, !tbaa !81
  %i.bo = icmp ugt i32 %i.bn, 999999
  br i1 %i.bo, label %bb.r, label %_ZN4bssl17dtls1_start_timerEP6ssl_st.exit

bb.r:                                             ; preds = %bb.q
  %i.bp = add i64 %i.bi, 1
  store i64 %i.bp, ptr %i.bg, align 8, !tbaa !80
  %i.bq = add i32 %i.bn, -1000000
  store i32 %i.bq, ptr %i.bl, align 8, !tbaa !81
  br label %_ZN4bssl17dtls1_start_timerEP6ssl_st.exit

_ZN4bssl17dtls1_start_timerEP6ssl_st.exit:        ; preds = %bb.q, %bb.r
  %i.br = call noundef i32 @_ZN4bssl34dtls1_retransmit_outgoing_messagesEP6ssl_st(ptr noundef nonnull %0) #9
  br label %_ZN4bssl22dtls1_is_timer_expiredEP6ssl_st.exit.thread

_ZN4bssl22dtls1_is_timer_expiredEP6ssl_st.exit.thread: ; preds = %bb.e, %bb.c, %_ZN4bssl23dtls1_check_timeout_numEP6ssl_st.exit, %_ZN4bssl22dtls1_is_timer_expiredEP6ssl_st.exit, %_ZN4bssl17dtls1_start_timerEP6ssl_st.exit, %bb.b
  %.0 = phi i32 [ %i.br, %_ZN4bssl17dtls1_start_timerEP6ssl_st.exit ], [ 0, %_ZN4bssl22dtls1_is_timer_expiredEP6ssl_st.exit ], [ -1, %bb.b ], [ -1, %_ZN4bssl23dtls1_check_timeout_numEP6ssl_st.exit ], [ 0, %bb.c ], [ 0, %bb.e ]
  ret i32 %.0
}

declare void @_ZN4bssl21ssl_reset_error_stateEP6ssl_st(ptr noundef) local_unnamed_addr #2

declare noundef i32 @_ZN4bssl34dtls1_retransmit_outgoing_messagesEP6ssl_st(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

declare void @OPENSSL_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN4bssl11hm_fragmentD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24)) unnamed_addr #7

; Function Attrs: nounwind
declare void @_ZN4bssl14SSLAEADContextD1Ev(ptr noundef nonnull align 8 dead_on_return(610) dereferenceable(610)) unnamed_addr #7

declare ptr @OPENSSL_malloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #8

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"bool", !4, i64 0}
!9 = !{!"short", !4, i64 0}
!10 = !{!"_ZTSSt12_Base_bitsetILm4EE", !4, i64 0}
!11 = !{!"_ZTSSt6bitsetILm256EE", !10, i64 0}
!12 = !{!"long", !4, i64 0}
!13 = !{!"_ZTSN4bssl12DTLS1_BITMAPE", !11, i64 0, !12, i64 32}
!14 = !{!"any pointer", !4, i64 0}
!15 = !{!"p1 _ZTSN4bssl14SSLAEADContextE", !14, i64 0}
!16 = !{!"_ZTSSt10_Head_baseILm0EPN4bssl14SSLAEADContextELb0EE", !15, i64 0}
!17 = !{!"_ZTSSt11_Tuple_implILm0EJPN4bssl14SSLAEADContextENS0_8internal7DeleterEEE", !16, i64 0}
!18 = !{!"_ZTSSt5tupleIJPN4bssl14SSLAEADContextENS0_8internal7DeleterEEE", !17, i64 0}
!19 = !{!"_ZTSSt15__uniq_ptr_implIN4bssl14SSLAEADContextENS0_8internal7DeleterEE", !18, i64 0}
!20 = !{!"_ZTSSt15__uniq_ptr_dataIN4bssl14SSLAEADContextENS0_8internal7DeleterELb1ELb1EE", !19, i64 0}
!21 = !{!"_ZTSSt10unique_ptrIN4bssl14SSLAEADContextENS0_8internal7DeleterEE", !20, i64 0}
!22 = !{!"_ZTSN4bssl15OPENSSL_timevalE", !12, i64 0, !5, i64 8}
!23 = !{!"_ZTSN4bssl11DTLS1_STATEE", !8, i64 0, !8, i64 0, !8, i64 0, !9, i64 2, !9, i64 4, !13, i64 8, !9, i64 48, !9, i64 50, !4, i64 52, !21, i64 64, !4, i64 72, !4, i64 128, !4, i64 296, !4, i64 297, !5, i64 300, !5, i64 304, !5, i64 308, !22, i64 312, !5, i64 328}
!24 = !{!23, !9, i64 2}
!25 = !{!23, !9, i64 4}
!26 = !{!23, !4, i64 296}
!27 = !{!23, !4, i64 297}
!28 = !{!23, !5, i64 328}
!29 = !{!"p1 omnipotent char", !14, i64 0}
!30 = !{!"p1 _ZTSN4bssl19SSL_PROTOCOL_METHODE", !14, i64 0}
!31 = !{!"p1 _ZTSN4bssl10SSL_CONFIGE", !14, i64 0}
!32 = !{!"_ZTSSt10_Head_baseILm0EPN4bssl10SSL_CONFIGELb0EE", !31, i64 0}
!33 = !{!"_ZTSSt11_Tuple_implILm0EJPN4bssl10SSL_CONFIGENS0_8internal7DeleterEEE", !32, i64 0}
!34 = !{!"_ZTSSt5tupleIJPN4bssl10SSL_CONFIGENS0_8internal7DeleterEEE", !33, i64 0}
!35 = !{!"_ZTSSt15__uniq_ptr_implIN4bssl10SSL_CONFIGENS0_8internal7DeleterEE", !34, i64 0}
!36 = !{!"_ZTSSt15__uniq_ptr_dataIN4bssl10SSL_CONFIGENS0_8internal7DeleterELb1ELb1EE", !35, i64 0}
!37 = !{!"_ZTSSt10unique_ptrIN4bssl10SSL_CONFIGENS0_8internal7DeleterEE", !36, i64 0}
!38 = !{!"p1 _ZTS6bio_st", !14, i64 0}
!39 = !{!"_ZTSSt10_Head_baseILm0EP6bio_stLb0EE", !38, i64 0}
!40 = !{!"_ZTSSt11_Tuple_implILm0EJP6bio_stN4bssl8internal7DeleterEEE", !39, i64 0}
!41 = !{!"_ZTSSt5tupleIJP6bio_stN4bssl8internal7DeleterEEE", !40, i64 0}
!42 = !{!"_ZTSSt15__uniq_ptr_implI6bio_stN4bssl8internal7DeleterEE", !41, i64 0}
!43 = !{!"_ZTSSt15__uniq_ptr_dataI6bio_stN4bssl8internal7DeleterELb1ELb1EE", !42, i64 0}
!44 = !{!"_ZTSSt10unique_ptrI6bio_stN4bssl8internal7DeleterEE", !43, i64 0}
!45 = !{!"p1 _ZTSN4bssl10SSL3_STATEE", !14, i64 0}
!46 = !{!"p1 _ZTSN4bssl11DTLS1_STATEE", !14, i64 0}
!47 = !{!"p1 _ZTS14ssl_session_st", !14, i64 0}
!48 = !{!"_ZTSSt10_Head_baseILm0EP14ssl_session_stLb0EE", !47, i64 0}
!49 = !{!"_ZTSSt11_Tuple_implILm0EJP14ssl_session_stN4bssl8internal7DeleterEEE", !48, i64 0}
!50 = !{!"_ZTSSt5tupleIJP14ssl_session_stN4bssl8internal7DeleterEEE", !49, i64 0}
!51 = !{!"_ZTSSt15__uniq_ptr_implI14ssl_session_stN4bssl8internal7DeleterEE", !50, i64 0}
!52 = !{!"_ZTSSt15__uniq_ptr_dataI14ssl_session_stN4bssl8internal7DeleterELb1ELb1EE", !51, i64 0}
!53 = !{!"_ZTSSt10unique_ptrI14ssl_session_stN4bssl8internal7DeleterEE", !52, i64 0}
!54 = !{!"p1 _ZTS19stack_st_SSL_CIPHER", !14, i64 0}
!55 = !{!"_ZTSSt10_Head_baseILm0EP19stack_st_SSL_CIPHERLb0EE", !54, i64 0}
!56 = !{!"_ZTSSt11_Tuple_implILm0EJP19stack_st_SSL_CIPHERN4bssl8internal7DeleterEEE", !55, i64 0}
!57 = !{!"_ZTSSt5tupleIJP19stack_st_SSL_CIPHERN4bssl8internal7DeleterEEE", !56, i64 0}
!58 = !{!"_ZTSSt15__uniq_ptr_implI19stack_st_SSL_CIPHERN4bssl8internal7DeleterEE", !57, i64 0}
!59 = !{!"_ZTSSt15__uniq_ptr_dataI19stack_st_SSL_CIPHERN4bssl8internal7DeleterELb1ELb1EE", !58, i64 0}
!60 = !{!"_ZTSSt10unique_ptrI19stack_st_SSL_CIPHERN4bssl8internal7DeleterEE", !59, i64 0}
!61 = !{!"_ZTSSt10_Head_baseILm0EPcLb0EE", !29, i64 0}
!62 = !{!"_ZTSSt11_Tuple_implILm0EJPcN4bssl8internal7DeleterEEE", !61, i64 0}
!63 = !{!"_ZTSSt5tupleIJPcN4bssl8internal7DeleterEEE", !62, i64 0}
!64 = !{!"_ZTSSt15__uniq_ptr_implIcN4bssl8internal7DeleterEE", !63, i64 0}
!65 = !{!"_ZTSSt15__uniq_ptr_dataIcN4bssl8internal7DeleterELb1ELb1EE", !64, i64 0}
!66 = !{!"_ZTSSt10unique_ptrIcN4bssl8internal7DeleterEE", !65, i64 0}
!67 = !{!"p1 _ZTS10ssl_ctx_st", !14, i64 0}
!68 = !{!"_ZTSSt10_Head_baseILm0EP10ssl_ctx_stLb0EE", !67, i64 0}
!69 = !{!"_ZTSSt11_Tuple_implILm0EJP10ssl_ctx_stN4bssl8internal7DeleterEEE", !68, i64 0}
!70 = !{!"_ZTSSt5tupleIJP10ssl_ctx_stN4bssl8internal7DeleterEEE", !69, i64 0}
!71 = !{!"_ZTSSt15__uniq_ptr_implI10ssl_ctx_stN4bssl8internal7DeleterEE", !70, i64 0}
!72 = !{!"_ZTSSt15__uniq_ptr_dataI10ssl_ctx_stN4bssl8internal7DeleterELb1ELb1EE", !71, i64 0}
!73 = !{!"_ZTSSt10unique_ptrI10ssl_ctx_stN4bssl8internal7DeleterEE", !72, i64 0}
!74 = !{!"p1 _ZTS13stack_st_void", !14, i64 0}
!75 = !{!"_ZTS17crypto_ex_data_st", !74, i64 0}
!76 = !{!"p1 _ZTS18ssl_quic_method_st", !14, i64 0}
!77 = !{!"_ZTS22ssl_renegotiate_mode_t", !4, i64 0}
!78 = !{!"_ZTS6ssl_st", !30, i64 0, !37, i64 8, !9, i64 16, !9, i64 18, !12, i64 24, !44, i64 32, !44, i64 40, !14, i64 48, !45, i64 56, !46, i64 64, !14, i64 72, !14, i64 80, !14, i64 88, !14, i64 96, !5, i64 104, !53, i64 112, !60, i64 120, !66, i64 128, !9, i64 136, !14, i64 144, !73, i64 152, !73, i64 160, !75, i64 168, !12, i64 176, !5, i64 184, !5, i64 188, !5, i64 192, !66, i64 200, !76, i64 208, !77, i64 216, !8, i64 220, !8, i64 220, !8, i64 220, !8, i64 220, !8, i64 220}
!79 = !{!78, !46, i64 64}
!80 = !{!23, !12, i64 312}
!81 = !{!23, !5, i64 320}
!82 = !{!78, !5, i64 104}
!83 = !{!22, !12, i64 0}
!84 = !{!22, !5, i64 8}
!85 = !{!23, !5, i64 308}
!86 = !{!38, !38, i64 0}
!87 = !{!23, !5, i64 304}
!88 = !{!"_ZTSN4bssl5ArrayIhEE", !29, i64 0, !12, i64 8}
!89 = !{!88, !29, i64 0}
!90 = !{!"p1 _ZTSN4bssl11hm_fragmentE", !14, i64 0}
!91 = !{!90, !90, i64 0}
!92 = !{!15, !15, i64 0}
!93 = distinct !{!93, i1 false, !"_ZN4bssl10MakeUniqueINS_11DTLS1_STATEEJEEESt10unique_ptrIT_NS_8internal7DeleterEEDpOT0_"}
!94 = distinct !{!94, !93, !"_ZN4bssl10MakeUniqueINS_11DTLS1_STATEEJEEESt10unique_ptrIT_NS_8internal7DeleterEEDpOT0_: argument 0"}
!95 = !{!94}
!96 = !{!78, !9, i64 16}
!97 = !{!"_ZTS7timeval", !12, i64 0, !12, i64 8}
!98 = !{!97, !12, i64 0}
!99 = !{!97, !12, i64 8}
end_hunk_0
