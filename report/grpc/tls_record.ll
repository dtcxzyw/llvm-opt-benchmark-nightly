Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/tls_record?download=true
inline.NumInlined: 93
inline.NumDeleted: 46
begin_hunk_0_@_ZN4bssl15tls_seal_recordEP6ssl_stPhPmmhPKhm:bb.a
  %i.ak = tail call noundef i64 @_ZNK4bssl14SSLAEADContext16ExplicitNonceLenEv(ptr noundef nonnull align 8 dereferenceable(599) %i.aj)
  %i.al = add i64 %i.ak, 5
  br label %_ZN4bsslL27tls_seal_scatter_prefix_lenEPK6ssl_sthm.exit

_ZN4bsslL27tls_seal_scatter_prefix_lenEPK6ssl_sthm.exit: ; preds = %bb.g, %_ZN4bssl26ssl_needs_record_splittingEPK6ssl_st.exit.thread.i
  %.0.i = phi i64 [ %i.af, %bb.g ], [ %i.al, %_ZN4bssl26ssl_needs_record_splittingEPK6ssl_st.exit.thread.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #4
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 7 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !57
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 272
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !59
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !66
  %.not.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN4bsslL27tls_seal_scatter_prefix_lenEPK6ssl_sthm.exit
  %i.ar = tail call noundef zeroext i16 @_ZN4bssl20ssl_protocol_versionEPK6ssl_st(ptr noundef nonnull %0)
  %i.as = icmp ugt i16 %i.ar, 771
  %spec.select.i = zext i1 %i.as to i64
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN4bsslL27tls_seal_scatter_prefix_lenEPK6ssl_sthm.exit
  %.0.i38 = phi i64 [ 0, %_ZN4bsslL27tls_seal_scatter_prefix_lenEPK6ssl_sthm.exit ], [ %spec.select.i, %bb.h ]
  br i1 %or.cond.i, label %bb.j, label %_ZN4bsslL27tls_seal_scatter_suffix_lenEPK6ssl_stPmhm.exit

bb.j:                                             ; preds = %bb.i
  %i.at = load ptr, ptr %i.am, align 8, !tbaa !57
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 272
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !59
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !66
  %.not.i.i.i41 = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.i41, label %_ZN4bsslL27tls_seal_scatter_suffix_lenEPK6ssl_stPmhm.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ax = tail call noundef zeroext i16 @_ZN4bssl20ssl_protocol_versionEPK6ssl_st(ptr noundef nonnull %0)
  %i.ay = icmp ult i16 %i.ax, 770
  br i1 %i.ay, label %bb.l, label %_ZN4bsslL27tls_seal_scatter_suffix_lenEPK6ssl_stPmhm.exit

bb.l:                                             ; preds = %bb.k
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !67
  %i.bb = and i32 %i.ba, 256
  %.not4.i.i42 = icmp eq i32 %i.bb, 0
  br i1 %.not4.i.i42, label %_ZN4bsslL27tls_seal_scatter_suffix_lenEPK6ssl_stPmhm.exit, label %_ZN4bssl26ssl_needs_record_splittingEPK6ssl_st.exit.i43

_ZN4bssl26ssl_needs_record_splittingEPK6ssl_st.exit.i43: ; preds = %bb.l
  %i.bc = load ptr, ptr %i.am, align 8, !tbaa !57
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 272
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !59
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !66
  %i.bg = tail call i32 @SSL_CIPHER_is_block_cipher(ptr noundef %i.bf)
  %.fr.i = freeze i32 %i.bg
  %.not.i44 = icmp ne i32 %.fr.i, 0
  %i.bh = sext i1 %.not.i44 to i64
  %spec.select14.i = add i64 %6, %i.bh
  br label %_ZN4bsslL27tls_seal_scatter_suffix_lenEPK6ssl_stPmhm.exit

_ZN4bsslL27tls_seal_scatter_suffix_lenEPK6ssl_stPmhm.exit: ; preds = %bb.i, %bb.j, %bb.k, %bb.l, %_ZN4bssl26ssl_needs_record_splittingEPK6ssl_st.exit.i43
  %.010.i = phi i64 [ %6, %bb.i ], [ %6, %bb.j ], [ %spec.select14.i, %_ZN4bssl26ssl_needs_record_splittingEPK6ssl_st.exit.i43 ], [ %6, %bb.l ], [ %6, %bb.k ]
  %i.bi = load ptr, ptr %i.am, align 8, !tbaa !57
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 272
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !59
  %i.bl = call noundef zeroext i1 @_ZNK4bssl14SSLAEADContext9SuffixLenEPmmm(ptr noundef nonnull align 8 dereferenceable(599) %i.bk, ptr noundef nonnull %i.c, i64 noundef %.010.i, i64 noundef %.0.i38)
  br i1 %i.bl, label %bb.m, label %_ZN4bsslL23tls_seal_scatter_recordEP6ssl_stPhS2_S2_hPKhm.exit.thread

bb.m:                                             ; preds = %_ZN4bsslL27tls_seal_scatter_suffix_lenEPK6ssl_stPmhm.exit
  %i.bm = add i64 %.0.i, %6                       ; 4 uses
  %i.bn = icmp ult i64 %i.bm, %6
  br i1 %i.bn, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bo = load i64, ptr %i.c, align 8, !tbaa !69
  %i.bp = add i64 %i.bo, %i.bm                    ; 2 uses
  %i.bq = icmp ult i64 %i.bp, %i.bm
  br i1 %i.bq, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n, %bb.m
  call void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 200, ptr noundef nonnull @.str, i32 noundef 421)
  br label %_ZN4bsslL23tls_seal_scatter_recordEP6ssl_stPhS2_S2_hPKhm.exit.thread

bb.p:                                             ; preds = %bb.n
  %i.br = icmp ult i64 %3, %i.bp
  br i1 %i.br, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  call void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 121, ptr noundef nonnull @.str, i32 noundef 425)
  br label %_ZN4bsslL23tls_seal_scatter_recordEP6ssl_stPhS2_S2_hPKhm.exit.thread

bb.r:                                             ; preds = %bb.p
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 %.0.i ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %6 ; 2 uses
  br i1 %or.cond.i, label %bb.s, label %_ZN4bssl26ssl_needs_record_splittingEPK6ssl_st.exit.thread.i46

bb.s:                                             ; preds = %bb.r
  %i.bu = load ptr, ptr %i.am, align 8, !tbaa !57
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 272
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !59
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !66
  %.not.i.i.i47 = icmp eq ptr %i.bx, null
  br i1 %.not.i.i.i47, label %_ZN4bssl26ssl_needs_record_splittingEPK6ssl_st.exit.thread.i46, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.by = call noundef zeroext i16 @_ZN4bssl20ssl_protocol_versionEPK6ssl_st(ptr noundef nonnull %0)
  %i.bz = icmp ult i16 %i.by, 770
  br i1 %i.bz, label %bb.u, label %_ZN4bssl26ssl_needs_record_splittingEPK6ssl_st.exit.thread.i46

bb.u:                                             ; preds = %bb.t
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !67
  %i.cc = and i32 %i.cb, 256
  %.not4.i.i48 = icmp eq i32 %i.cc, 0
  br i1 %.not4.i.i48, label %_ZN4bssl26ssl_needs_record_splittingEPK6ssl_st.exit.thread.i46, label %_ZN4bssl26ssl_needs_record_splittingEPK6ssl_st.exit.i49

_ZN4bssl26ssl_needs_record_splittingEPK6ssl_st.exit.i49: ; preds = %bb.u
  %i.cd = load ptr, ptr %i.am, align 8, !tbaa !57
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 272
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !59
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !66
  %i.ch = call i32 @SSL_CIPHER_is_block_cipher(ptr noundef %i.cg)
  %.not.i50 = icmp eq i32 %i.ch, 0
  br i1 %.not.i50, label %_ZN4bssl26ssl_needs_record_splittingEPK6ssl_st.exit.thread.i46, label %bb.v

bb.v:                                             ; preds = %_ZN4bssl26ssl_needs_record_splittingEPK6ssl_st.exit.i49
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.ck = call fastcc noundef zeroext i1 @_ZN4bsslL14do_seal_recordEP6ssl_stPhS2_S2_hPKhm(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %i.ci, ptr noundef nonnull %i.cj, i8 noundef zeroext 23, ptr noundef %5, i64 noundef 1)
  br i1 %i.ck, label %bb.w, label %_ZN4bsslL23tls_seal_scatter_recordEP6ssl_stPhS2_S2_hPKhm.exit.thread

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  %i.cl = load ptr, ptr %i.am, align 8, !tbaa !57
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 272
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !59
  %i.co = call noundef zeroext i1 @_ZNK4bssl14SSLAEADContext9SuffixLenEPmmm(ptr noundef nonnull align 8 dereferenceable(599) %i.cn, ptr noundef nonnull %i.a, i64 noundef 1, i64 noundef 0)
  br i1 %i.co, label %bb.x, label %_ZN4bsslL23tls_seal_scatter_recordEP6ssl_stPhS2_S2_hPKhm.exit.thread53

_ZN4bsslL23tls_seal_scatter_recordEP6ssl_stPhS2_S2_hPKhm.exit.thread53: ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  br label %_ZN4bsslL23tls_seal_scatter_recordEP6ssl_stPhS2_S2_hPKhm.exit.thread

bb.x:                                             ; preds = %bb.w
  %i.cp = load i64, ptr %i.a, align 8, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bs, i64 1
  %i.cr = getelementptr inbounds nuw i8, ptr %5, i64 1
  %i.cs = add i64 %6, -1
  %i.ct = call fastcc noundef zeroext i1 @_ZN4bsslL14do_seal_recordEP6ssl_stPhS2_S2_hPKhm(ptr noundef nonnull %0, ptr noundef nonnull %i.b, ptr noundef nonnull %i.cq, ptr noundef nonnull %i.bt, i8 noundef zeroext 23, ptr noundef nonnull %i.cr, i64 noundef %i.cs)
  br i1 %i.ct, label %_ZN4bsslL23tls_seal_scatter_recordEP6ssl_stPhS2_S2_hPKhm.exit.thread55, label %_ZN4bsslL23tls_seal_scatter_recordEP6ssl_stPhS2_S2_hPKhm.exit

_ZN4bsslL23tls_seal_scatter_recordEP6ssl_stPhS2_S2_hPKhm.exit.thread55: ; preds = %bb.x
  %i.cu = getelementptr i8, ptr %1, i64 %i.cp
  %i.cv = getelementptr i8, ptr %i.cu, i64 6
  %i.cw = load i32, ptr %i.b, align 4
  store i32 %i.cw, ptr %i.cv, align 1
  %i.cx = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.cy = load i8, ptr %i.cx, align 4
  store i8 %i.cy, ptr %i.bs, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  br label %bb.y

_ZN4bssl26ssl_needs_record_splittingEPK6ssl_st.exit.thread.i46: ; preds = %_ZN4bssl26ssl_needs_record_splittingEPK6ssl_st.exit.i49, %bb.u, %bb.t, %bb.s, %bb.r
  %i.cz = call fastcc noundef zeroext i1 @_ZN4bsslL14do_seal_recordEP6ssl_stPhS2_S2_hPKhm(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %i.bs, ptr noundef %i.bt, i8 noundef zeroext %4, ptr noundef %5, i64 noundef %6)
  br i1 %i.cz, label %bb.y, label %_ZN4bsslL23tls_seal_scatter_recordEP6ssl_stPhS2_S2_hPKhm.exit.thread

_ZN4bsslL23tls_seal_scatter_recordEP6ssl_stPhS2_S2_hPKhm.exit: ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  br label %_ZN4bsslL23tls_seal_scatter_recordEP6ssl_stPhS2_S2_hPKhm.exit.thread

bb.y:                                             ; preds = %_ZN4bsslL23tls_seal_scatter_recordEP6ssl_stPhS2_S2_hPKhm.exit.thread55, %_ZN4bssl26ssl_needs_record_splittingEPK6ssl_st.exit.thread.i46
  %i.da = load i64, ptr %i.c, align 8, !tbaa !69
  %i.db = add i64 %i.da, %i.bm
  store i64 %i.db, ptr %2, align 8, !tbaa !69
  br label %_ZN4bsslL23tls_seal_scatter_recordEP6ssl_stPhS2_S2_hPKhm.exit.thread

_ZN4bsslL23tls_seal_scatter_recordEP6ssl_stPhS2_S2_hPKhm.exit.thread: ; preds = %bb.v, %_ZN4bsslL23tls_seal_scatter_recordEP6ssl_stPhS2_S2_hPKhm.exit, %_ZN4bsslL23tls_seal_scatter_recordEP6ssl_stPhS2_S2_hPKhm.exit.thread53, %_ZN4bssl26ssl_needs_record_splittingEPK6ssl_st.exit.thread.i46, %bb.y, %_ZN4bsslL27tls_seal_scatter_suffix_lenEPK6ssl_stPmhm.exit, %bb.q, %bb.o
  %.1 = phi i1 [ false, %bb.o ], [ false, %bb.q ], [ false, %_ZN4bsslL27tls_seal_scatter_suffix_lenEPK6ssl_stPmhm.exit ], [ false, %_ZN4bsslL23tls_seal_scatter_recordEP6ssl_stPhS2_S2_hPKhm.exit ], [ true, %bb.y ], [ false, %_ZN4bsslL23tls_seal_scatter_recordEP6ssl_stPhS2_S2_hPKhm.exit.thread53 ], [ false, %_ZN4bssl26ssl_needs_record_splittingEPK6ssl_st.exit.thread.i46 ], [ false, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #4
  br label %bb.z

bb.z:                                             ; preds = %_ZN4bsslL23tls_seal_scatter_recordEP6ssl_stPhS2_S2_hPKhm.exit.thread, %bb.b
  %.2 = phi i1 [ false, %bb.b ], [ %.1, %_ZN4bsslL23tls_seal_scatter_recordEP6ssl_stPhS2_S2_hPKhm.exit.thread ]
  ret i1 %.2
}

declare void @_ZN4bssl20ssl_do_info_callbackEPK6ssl_stii(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @ERR_add_error_dataf(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define i64 @SSL_max_seal_overhead(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @SSL_is_dtls(ptr noundef %0)
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !123
  %i.d = getelementptr i8, ptr %i.c, i64 150
  %1 = load i16, ptr %i.d, align 2, !tbaa !125
  %i.e = tail call noundef i64 @_ZN4bssl22dtls_max_seal_overheadEPK6ssl_stt(ptr noundef %0, i16 noundef zeroext %1)
  br label %_ZN4bssl26ssl_needs_record_splittingEPK6ssl_st.exit.thread

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !57
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 272
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !59
  %i.j = tail call noundef i64 @_ZNK4bssl14SSLAEADContext11MaxOverheadEv(ptr noundef nonnull align 8 dereferenceable(599) %i.i) ; 2 uses
  %i.k = add i64 %i.j, 5                          ; 2 uses
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !57
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 272
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !59
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !66
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %_ZN4bssl26ssl_needs_record_splittingEPK6ssl_st.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = tail call noundef zeroext i16 @_ZN4bssl20ssl_protocol_versionEPK6ssl_st(ptr noundef nonnull %0)
  %i.q = icmp ugt i16 %i.p, 771
  %i.r = add i64 %i.j, 6
  %spec.select = select i1 %i.q, i64 %i.r, i64 %i.k ; 4 uses
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !57
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 272
  %.pre16 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !59
  %.pre17 = load ptr, ptr %.pre16, align 8, !tbaa !66
  %i.s = icmp eq ptr %.pre17, null
  br i1 %i.s, label %_ZN4bssl26ssl_needs_record_splittingEPK6ssl_st.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = tail call noundef zeroext i16 @_ZN4bssl20ssl_protocol_versionEPK6ssl_st(ptr noundef nonnull %0)
  %i.u = icmp ult i16 %i.t, 770
  br i1 %i.u, label %bb.f, label %_ZN4bssl26ssl_needs_record_splittingEPK6ssl_st.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.w = load i32, ptr %i.v, align 4, !tbaa !67
  %i.x = and i32 %i.w, 256
  %.not4.i = icmp eq i32 %i.x, 0
  br i1 %.not4.i, label %_ZN4bssl26ssl_needs_record_splittingEPK6ssl_st.exit.thread, label %_ZN4bssl26ssl_needs_record_splittingEPK6ssl_st.exit

_ZN4bssl26ssl_needs_record_splittingEPK6ssl_st.exit: ; preds = %bb.f
  %i.y = load ptr, ptr %i.f, align 8, !tbaa !57
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 272
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !59
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !66
  %i.ac = tail call i32 @SSL_CIPHER_is_block_cipher(ptr noundef %i.ab)
  %.fr = freeze i32 %i.ac
  %.not15 = icmp ne i32 %.fr, 0
  %i.ad = zext i1 %.not15 to i64
  %spec.select14 = shl i64 %spec.select, %i.ad
  br label %_ZN4bssl26ssl_needs_record_splittingEPK6ssl_st.exit.thread

_ZN4bssl26ssl_needs_record_splittingEPK6ssl_st.exit.thread: ; preds = %bb.c, %_ZN4bssl26ssl_needs_record_splittingEPK6ssl_st.exit, %bb.d, %bb.e, %bb.f, %bb.b
  %.011 = phi i64 [ %i.e, %bb.b ], [ %spec.select, %bb.d ], [ %spec.select14, %_ZN4bssl26ssl_needs_record_splittingEPK6ssl_st.exit ], [ %spec.select, %bb.f ], [ %spec.select, %bb.e ], [ %i.k, %bb.c ]
  ret i64 %.011
}

declare i32 @SSL_is_dtls(ptr noundef) local_unnamed_addr #1

declare noundef i64 @_ZN4bssl22dtls_max_seal_overheadEPK6ssl_stt(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

declare noundef i64 @_ZNK4bssl14SSLAEADContext11MaxOverheadEv(ptr noundef nonnull align 8 dereferenceable(599)) local_unnamed_addr #1

declare noundef i64 @_ZN4bssl31ssl_cipher_get_record_split_lenEPK13ssl_cipher_st(ptr noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZNK4bssl14SSLAEADContext9SuffixLenEPmmm(ptr noundef nonnull align 8 dereferenceable(599), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZN4bsslL14do_seal_recordEP6ssl_stPhS2_S2_hPKhm(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4, ptr noundef %5, i64 noundef %6) unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 2 uses
  %i.b = alloca i64, align 8                      ; 3 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %7 = alloca %"class.bssl::Span.26", align 8     ; 3 uses
  store i8 %4, ptr %i.a, align 1, !tbaa !110
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !57
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 272
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !59   ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !66
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = tail call noundef zeroext i16 @_ZN4bssl20ssl_protocol_versionEPK6ssl_st(ptr noundef nonnull %0)
  %i.j = icmp ugt i16 %i.i, 771
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.035 = phi ptr [ null, %bb.a ], [ %i.a, %bb.c ], [ null, %bb.b ]
  %.not = phi i8 [ %4, %bb.a ], [ 23, %bb.c ], [ %4, %bb.b ]
  %.034 = phi i64 [ 0, %bb.a ], [ 1, %bb.c ], [ 0, %bb.b ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #4
  %i.k = call noundef zeroext i1 @_ZNK4bssl14SSLAEADContext9SuffixLenEPmmm(ptr noundef nonnull align 8 dereferenceable(599) %i.g, ptr noundef nonnull %i.b, i64 noundef %6, i64 noundef %.034)
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = call noundef zeroext i1 @_ZNK4bssl14SSLAEADContext13CiphertextLenEPmmm(ptr noundef nonnull align 8 dereferenceable(599) %i.g, ptr noundef nonnull %i.c, i64 noundef %6, i64 noundef %.034)
  br i1 %i.l, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  call void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 200, ptr noundef nonnull @.str, i32 noundef 278)
  br label %bb.m

bb.g:                                             ; preds = %bb.e
  store i8 %.not, ptr %1, align 1, !tbaa !110
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !57
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 208
  %i.o = load i16, ptr %i.n, align 8, !tbaa !109
  %i.p = icmp eq i16 %i.o, 0
  br i1 %i.p, label %_ZN4bsslL18tls_record_versionEPK6ssl_st.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = call noundef zeroext i16 @_ZN4bssl20ssl_protocol_versionEPK6ssl_st(ptr noundef nonnull %0)
  %i.r = icmp ugt i16 %i.q, 771
  br i1 %i.r, label %_ZN4bsslL18tls_record_versionEPK6ssl_st.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = load ptr, ptr %i.d, align 8, !tbaa !57
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 208
  %i.u = load i16, ptr %i.t, align 8, !tbaa !109
  br label %_ZN4bsslL18tls_record_versionEPK6ssl_st.exit

_ZN4bsslL18tls_record_versionEPK6ssl_st.exit:     ; preds = %bb.g, %bb.h, %bb.i
  %.0.i = phi i16 [ 769, %bb.g ], [ %i.u, %bb.i ], [ 771, %bb.h ] ; 3 uses
  %i.v = lshr i16 %.0.i, 8
  %i.w = trunc nuw i16 %i.v to i8
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 %i.w, ptr %i.x, align 1, !tbaa !110
  %i.y = trunc i16 %.0.i to i8
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i8 %i.y, ptr %i.z, align 1, !tbaa !110
  %i.aa = load i64, ptr %i.c, align 8, !tbaa !69  ; 2 uses
  %i.ab = lshr i64 %i.aa, 8
  %i.ac = trunc i64 %i.ab to i8
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 3
  store i8 %i.ac, ptr %i.ad, align 1, !tbaa !110
  %i.ae = trunc i64 %i.aa to i8
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i8 %i.ae, ptr %i.af, align 1, !tbaa !110
  %i.ag = load ptr, ptr %i.d, align 8, !tbaa !57
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !126 ; 2 uses
  %i.aj = icmp eq i64 %i.ai, -1
  br i1 %i.aj, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZN4bsslL18tls_record_versionEPK6ssl_st.exit
  call void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 69, ptr noundef nonnull @.str, i32 noundef 301)
  br label %bb.m

bb.k:                                             ; preds = %_ZN4bsslL18tls_record_versionEPK6ssl_st.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.al = load i8, ptr %1, align 1, !tbaa !110
  store ptr %1, ptr %7, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 5, ptr %.sroa.5.0..sroa_idx, align 8
  %i.am = call noundef zeroext i1 @_ZN4bssl14SSLAEADContext11SealScatterEPhS1_S1_htmNS_4SpanIKhEEPS3_mS5_m(ptr noundef nonnull align 8 dereferenceable(599) %i.g, ptr noundef nonnull %i.ak, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %i.al, i16 noundef zeroext %.0.i, i64 noundef %i.ai, ptr noundef nonnull byval(%"class.bssl::Span.26") align 8 %7, ptr noundef %5, i64 noundef %6, ptr noundef %.035, i64 noundef %.034)
  br i1 %i.am, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.an = load ptr, ptr %i.d, align 8, !tbaa !57
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !126
  %i.aq = add i64 %i.ap, 1
  store i64 %i.aq, ptr %i.ao, align 8, !tbaa !126
  call void @_ZN4bssl19ssl_do_msg_callbackEPK6ssl_stiiNS_4SpanIKhEE(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 256, ptr nonnull %1, i64 5)
  br label %bb.m

bb.m:                                             ; preds = %bb.j, %bb.l, %bb.k, %bb.f
  %.1 = phi i1 [ false, %bb.f ], [ false, %bb.j ], [ true, %bb.l ], [ false, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  ret i1 %.1
}

declare noundef zeroext i1 @_ZNK4bssl14SSLAEADContext13CiphertextLenEPmmm(ptr noundef nonnull align 8 dereferenceable(599), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN4bssl14SSLAEADContext11SealScatterEPhS1_S1_htmNS_4SpanIKhEEPS3_mS5_m(ptr noundef nonnull align 8 dereferenceable(599), ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i16 noundef zeroext, i64 noundef, ptr noundef byval(%"class.bssl::Span.26") align 8, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #3

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
end_hunk_0
