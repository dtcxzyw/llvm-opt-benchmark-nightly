Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/aws-lc/original/s3_pkt?download=true
inline.NumInlined: 147
inline.NumDeleted: 91
begin_hunk_0_@_ZN4bssl18tls_write_app_dataEP6ssl_stPbPmNS_4SpanIKhEE:bb.a
.split:                                           ; preds = %.thread, %bb.f
  %i.bj = phi ptr [ %i.p, %.thread ], [ %i.x, %bb.f ]
  %i.bk = phi ptr [ %i.o, %.thread ], [ %i.w, %bb.f ] ; 2 uses
  %i.bl = load i16, ptr %i.bk, align 2, !tbaa !185
  %i.bm = zext i16 %i.bl to i64
  %.sroa.speculated108 = tail call i64 @llvm.umin.i64(i64 %i.j, i64 %i.bm)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.bn = call fastcc noundef i32 @_ZN4bsslL12do_tls_writeEP6ssl_stPmhNS_4SpanIKhEE(ptr noundef nonnull %0, ptr noundef %i.a, i8 noundef zeroext 23, ptr %i.i, i64 %.sroa.speculated108) ; 2 uses
  %i.bo = icmp slt i32 %i.bn, 1
  br i1 %i.bo, label %.split99.us, label %.lr.ph

.thread76:                                        ; preds = %bb.i, %.split.us
  %.038.lcssa.us = phi i64 [ %i.g, %.split.us ], [ %i.aq, %bb.i ]
  %.lcssa87.us = phi ptr [ %i.y, %.split.us ], [ %i.au, %bb.i ]
  %.lcssa.us = phi ptr [ %i.aa, %.split.us ], [ %i.aw, %bb.i ]
  %i.bp = getelementptr inbounds nuw i8, ptr %.lcssa87.us, i64 224
  store i64 %.038.lcssa.us, ptr %i.bp, align 8, !tbaa !169
  %i.bq = getelementptr inbounds nuw i8, ptr %.lcssa.us, i64 1592 ; 2 uses
  %i.br = load i32, ptr %i.bq, align 8
  %i.bs = and i32 %i.br, -16385
  store i32 %i.bs, ptr %i.bq, align 8
  store i8 1, ptr %1, align 1, !tbaa !168
  br label %bb.l

.split99.us:                                      ; preds = %.thread.us, %bb.k, %.split
  %.us-phi100 = phi i32 [ %i.ci, %bb.k ], [ %i.bn, %.split ], [ %i.an, %.thread.us ]
  %.us-phi101 = phi i64 [ %i.bw, %bb.k ], [ %i.g, %.split ], [ %.038.us116, %.thread.us ]
  %i.bt = load ptr, ptr %i.b, align 8, !tbaa !62
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 224
  store i64 %.us-phi101, ptr %i.bu, align 8, !tbaa !169
  br label %.thread82

.lr.ph:                                           ; preds = %.split, %bb.k
  %.038111 = phi i64 [ %i.bw, %bb.k ], [ %i.g, %.split ]
  %.sroa.6.0110 = phi i64 [ %i.bz, %bb.k ], [ %i.j, %.split ] ; 2 uses
  %.sroa.0.0109 = phi ptr [ %i.by, %bb.k ], [ %i.i, %.split ]
  %i.bv = load i64, ptr %i.a, align 8, !tbaa !158 ; 4 uses
  %i.bw = add i64 %i.bv, %.038111                 ; 3 uses
  %i.bx = icmp ugt i64 %i.bv, %.sroa.6.0110
  br i1 %i.bx, label %.split103.us, label %_ZNK4bssl4SpanIKhE7subspanEmm.exit55

.split103.us:                                     ; preds = %bb.g, %.lr.ph
  tail call void @abort() #7
  unreachable

_ZNK4bssl4SpanIKhE7subspanEmm.exit55:             ; preds = %.lr.ph
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.0.0109, i64 %i.bv ; 2 uses
  %i.bz = sub nuw i64 %.sroa.6.0110, %i.bv        ; 3 uses
  %i.ca = icmp eq i64 %i.bz, 0
  br i1 %i.ca, label %.split105.us.loopexit121, label %bb.j

bb.j:                                             ; preds = %_ZNK4bssl4SpanIKhE7subspanEmm.exit55
  %i.cb = load i32, ptr %i.bj, align 4, !tbaa !159
  %i.cc = and i32 %i.cb, 1
  %.not48 = icmp eq i32 %i.cc, 0
  br i1 %.not48, label %bb.k, label %.split105.us.loopexit121

.split105.us.loopexit121:                         ; preds = %bb.j, %_ZNK4bssl4SpanIKhE7subspanEmm.exit55
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !62
  br label %.split105.us

.split105.us:                                     ; preds = %_ZNK4bssl4SpanIKhE7subspanEmm.exit55.us, %bb.h, %.split105.us.loopexit121
  %i.cd = phi ptr [ %.pre, %.split105.us.loopexit121 ], [ %i.au, %bb.h ], [ %i.au, %_ZNK4bssl4SpanIKhE7subspanEmm.exit55.us ]
  %.us-phi106 = phi i64 [ %i.bw, %.split105.us.loopexit121 ], [ %i.aq, %bb.h ], [ %i.aq, %_ZNK4bssl4SpanIKhE7subspanEmm.exit55.us ]
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 224
  store i64 0, ptr %i.ce, align 8, !tbaa !169
  store i64 %.us-phi106, ptr %2, align 8, !tbaa !158
  br label %.thread82

.thread82:                                        ; preds = %.split99.us, %.split105.us
  %i.cf = phi i32 [ %.us-phi100, %.split99.us ], [ 1, %.split105.us ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  %i.cg = load i16, ptr %i.bk, align 2, !tbaa !185
  %i.ch = zext i16 %i.cg to i64
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.bz, i64 %i.ch)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.ci = call fastcc noundef i32 @_ZN4bsslL12do_tls_writeEP6ssl_stPmhNS_4SpanIKhEE(ptr noundef nonnull %0, ptr noundef %i.a, i8 noundef zeroext 23, ptr %i.by, i64 %.sroa.speculated) ; 2 uses
  %i.cj = icmp slt i32 %i.ci, 1
  br i1 %i.cj, label %.split99.us, label %.lr.ph, !llvm.loop !167

bb.l:                                             ; preds = %.thread82, %.thread76, %bb.d, %bb.b
  %.6 = phi i32 [ -1, %bb.b ], [ -1, %bb.d ], [ %i.cf, %.thread82 ], [ -1, %.thread76 ]
  ret i32 %.6
}

declare void @ERR_put_error(i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare i32 @SSL_in_early_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef range(i32 -2147483648, 2) i32 @_ZN4bsslL12do_tls_writeEP6ssl_stPmhNS_4SpanIKhEE(ptr noundef %0, ptr nofree noundef nonnull writeonly captures(none) %1, i8 noundef zeroext range(i8 21, 24) %2, ptr %3, i64 %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 8 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !62   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 232
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 240
  %i.f = load i64, ptr %i.e, align 8, !tbaa !187  ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = icmp ugt i64 %i.f, %4
  br i1 %i.h, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 188
  %i.j = load i32, ptr %i.i, align 4, !tbaa !159
  %i.k = and i32 %i.j, 2
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr %i.d, align 8, !tbaa !188
  %.not62 = icmp eq ptr %i.l, %3
  br i1 %.not62, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 248
  %i.n = load i8, ptr %i.m, align 8, !tbaa !189
  %.not63 = icmp eq i8 %i.n, %2
  br i1 %.not63, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  tail call void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 118, ptr noundef nonnull @.str, i32 noundef 108) #6
  br label %bb.ae

bb.g:                                             ; preds = %bb.e, %bb.a
  %i.o = tail call noundef i32 @_ZN4bssl22ssl_write_buffer_flushEP6ssl_st(ptr noundef nonnull %0) #6 ; 2 uses
  %i.p = icmp slt i32 %i.o, 1
  br i1 %i.p, label %bb.ae, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = load ptr, ptr %i.b, align 8, !tbaa !62   ; 7 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 240
  %i.s = load i64, ptr %i.r, align 8, !tbaa !187  ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 232
  store i64 %i.s, ptr %1, align 8, !tbaa !158
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, i8 0, i64 16, i1 false)
  br label %bb.ae

bb.j:                                             ; preds = %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 144 ; 5 uses
  %i.w = icmp ugt i64 %4, 16384
  br i1 %i.w, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 188 ; 3 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !160
  %.not64 = icmp eq i32 %i.y, 0
  br i1 %.not64, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  tail call void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 68, ptr noundef nonnull @.str, i32 noundef 128) #6
  br label %bb.ae

bb.m:                                             ; preds = %bb.k
  %i.z = tail call noundef zeroext i1 @_ZN4bssl25tls_flush_pending_hs_dataEP6ssl_st(ptr noundef nonnull %0) #6
  br i1 %i.z, label %bb.n, label %bb.ae

bb.n:                                             ; preds = %bb.m
  %i.aa = load ptr, ptr %i.b, align 8, !tbaa !62  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 320
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !190 ; 3 uses
  %.not95 = icmp eq ptr %i.ac, null
  br i1 %.not95, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !192 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 328
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !193
  %i.ag = zext i32 %i.af to i64                   ; 3 uses
  %i.ah = icmp ult i64 %i.ad, %i.ag
  br i1 %i.ah, label %bb.p, label %_ZNK4bssl4SpanIKhE7subspanEmm.exit

bb.p:                                             ; preds = %bb.o
  tail call void @abort() #7
  unreachable

_ZNK4bssl4SpanIKhE7subspanEmm.exit:               ; preds = %bb.o
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !194
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ag
  %i.al = sub nuw i64 %i.ad, %i.ag                ; 2 uses
  %5 = icmp eq i64 %i.al, 0
  br label %bb.q

bb.q:                                             ; preds = %_ZNK4bssl4SpanIKhE7subspanEmm.exit, %bb.n
  %.sroa.7.0 = phi i1 [ %5, %_ZNK4bssl4SpanIKhE7subspanEmm.exit ], [ true, %bb.n ]
  %.sroa.7.0.a = phi i64 [ %i.al, %_ZNK4bssl4SpanIKhE7subspanEmm.exit ], [ 0, %bb.n ] ; 6 uses
  %.sroa.077.0 = phi ptr [ %i.ak, %_ZNK4bssl4SpanIKhE7subspanEmm.exit ], [ null, %bb.n ]
  %i.am = icmp eq i64 %4, 0                       ; 3 uses
  br i1 %i.am, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.an = tail call i64 @SSL_max_seal_overhead(ptr noundef nonnull %0) #6
  %i.ao = add i64 %i.an, %4                       ; 2 uses
  %i.ap = icmp ult i64 %i.ao, %4
  %i.aq = add i64 %i.ao, %.sroa.7.0.a             ; 2 uses
  %i.ar = icmp ult i64 %i.aq, %.sroa.7.0.a
  %or.cond = or i1 %i.ap, %i.ar
  br i1 %or.cond, label %.critedge, label %bb.s

.critedge:                                        ; preds = %bb.r
  tail call void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 69, ptr noundef nonnull @.str, i32 noundef 152) #6
  br label %bb.ae

bb.s:                                             ; preds = %bb.r, %bb.q
  %.1 = phi i64 [ %.sroa.7.0.a, %bb.q ], [ %i.aq, %bb.r ] ; 2 uses
  %i.as = icmp eq i64 %.1, 0
  br i1 %i.as, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i64 0, ptr %1, align 8, !tbaa !158
  br label %bb.ae

bb.u:                                             ; preds = %bb.s
  %i.at = tail call noundef i64 @_ZN4bssl25ssl_seal_align_prefix_lenEPK6ssl_st(ptr noundef nonnull %0) #6
  %i.au = add i64 %i.at, %.sroa.7.0.a
  %i.av = tail call noundef zeroext i1 @_ZN4bssl9SSLBuffer9EnsureCapEmm(ptr noundef nonnull align 8 dereferenceable(64) %i.v, i64 noundef %i.au, i64 noundef %.1) #6
  br i1 %i.av, label %bb.v, label %bb.ae

bb.v:                                             ; preds = %bb.u
  br i1 %.sroa.7.0, label %bb.x, label %_ZL14OPENSSL_memcpyPvPKvm.exit

_ZL14OPENSSL_memcpyPvPKvm.exit:                   ; preds = %bb.v
  %i.aw = load ptr, ptr %i.v, align 8, !tbaa !195
  %i.ax = getelementptr inbounds nuw i8, ptr %i.q, i64 184
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !196
  %i.az = sext i32 %i.ay to i64
  %i.ba = getelementptr inbounds i8, ptr %i.aw, i64 %i.az
  %i.bb = load i32, ptr %i.x, align 4, !tbaa !160
  %i.bc = sext i32 %i.bb to i64
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.bc
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bd, ptr readonly align 1 %.sroa.077.0, i64 %.sroa.7.0.a, i1 false)
  %i.be = load ptr, ptr %i.b, align 8, !tbaa !62  ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 320 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !190 ; 2 uses
  store ptr null, ptr %i.bf, align 8, !tbaa !190
  %.not.i.i = icmp eq ptr %i.bg, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrI10buf_mem_stN4bssl8internal7DeleterEE5resetEPS0_.exit, label %bb.w

bb.w:                                             ; preds = %_ZL14OPENSSL_memcpyPvPKvm.exit
  tail call void @BUF_MEM_free(ptr noundef nonnull %i.bg) #6
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !62
  br label %_ZNSt10unique_ptrI10buf_mem_stN4bssl8internal7DeleterEE5resetEPS0_.exit

_ZNSt10unique_ptrI10buf_mem_stN4bssl8internal7DeleterEE5resetEPS0_.exit: ; preds = %_ZL14OPENSSL_memcpyPvPKvm.exit, %bb.w
  %i.bh = phi ptr [ %i.be, %_ZL14OPENSSL_memcpyPvPKvm.exit ], [ %.pre, %bb.w ]
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 328
  store i32 0, ptr %i.bi, align 8, !tbaa !193
  tail call void @_ZN4bssl9SSLBuffer8DidWriteEm(ptr noundef nonnull align 8 dereferenceable(64) %i.v, i64 noundef %.sroa.7.0.a) #6
  br label %bb.x

bb.x:                                             ; preds = %_ZNSt10unique_ptrI10buf_mem_stN4bssl8internal7DeleterEE5resetEPS0_.exit, %bb.v
  br i1 %i.am, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.bj = load ptr, ptr %i.v, align 8, !tbaa !195
  %i.bk = getelementptr inbounds nuw i8, ptr %i.q, i64 184
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !196
  %i.bm = sext i32 %i.bl to i64
  %i.bn = getelementptr inbounds i8, ptr %i.bj, i64 %i.bm
  %i.bo = load i32, ptr %i.x, align 4, !tbaa !160
  %i.bp = sext i32 %i.bo to i64                   ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %i.q, i64 192
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !197
  %i.bt = sext i32 %i.bs to i64
  %i.bu = sub nsw i64 %i.bt, %i.bp
  %i.bv = call noundef zeroext i1 @_ZN4bssl15tls_seal_recordEP6ssl_stPhPmmhPKhm(ptr noundef nonnull %0, ptr noundef %i.bq, ptr noundef nonnull %i.a, i64 noundef %i.bu, i8 noundef zeroext %2, ptr noundef %3, i64 noundef %4) #6
  br i1 %i.bv, label %bb.z, label %.critedge66

bb.z:                                             ; preds = %bb.y
  %i.bw = load i64, ptr %i.a, align 8, !tbaa !158
  call void @_ZN4bssl9SSLBuffer8DidWriteEm(ptr noundef nonnull align 8 dereferenceable(64) %i.v, i64 noundef %i.bw) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.x
  %i.bx = load ptr, ptr %i.b, align 8, !tbaa !62
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 280
  store i32 -1, ptr %i.by, align 8, !tbaa !198
  %i.bz = call noundef i32 @_ZN4bssl22ssl_write_buffer_flushEP6ssl_st(ptr noundef nonnull %0) #6 ; 3 uses
  %i.ca = icmp slt i32 %i.bz, 1
  br i1 %i.ca, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  br i1 %i.am, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cb = load ptr, ptr %i.b, align 8, !tbaa !62  ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 232
  store ptr %3, ptr %i.cc, align 8
  %.sroa.486.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cb, i64 240
  store i64 %4, ptr %.sroa.486.0..sroa_idx, align 8
  %i.cd = load ptr, ptr %i.b, align 8, !tbaa !62
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 248
  store i8 %2, ptr %i.ce, align 8, !tbaa !189
  br label %bb.ae

bb.ad:                                            ; preds = %bb.aa
  store i64 %4, ptr %1, align 8, !tbaa !158
  br label %bb.ae

.critedge66:                                      ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.ae

bb.ae:                                            ; preds = %bb.t, %bb.ad, %.critedge, %bb.u, %.critedge66, %bb.ac, %bb.ab, %bb.i, %bb.g, %bb.m, %bb.l, %bb.f
  %.6 = phi i32 [ -1, %bb.f ], [ 1, %bb.i ], [ %i.o, %bb.g ], [ -1, %bb.l ], [ -1, %bb.m ], [ 1, %bb.t ], [ -1, %.critedge66 ], [ 1, %bb.ad ], [ %i.bz, %bb.ab ], [ -1, %.critedge ], [ -1, %bb.u ], [ %i.bz, %bb.ac ]
  ret i32 %.6
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZN4bssl17tls_open_app_dataEP6ssl_stPNS_4SpanIhEEPmPhS3_(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1, ptr noundef %2, ptr noundef %3, ptr %4, i64 %5) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %6 = alloca %"class.bssl::Span.32", align 8     ; 8 uses
  %7 = alloca %"class.bssl::Span.32", align 8     ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  store ptr %4, ptr %7, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %5, ptr %.sroa.2.0..sroa_idx, align 8
  %i.b = call noundef i32 @_ZN4bssl15tls_open_recordEP6ssl_stPhPNS_4SpanIhEEPmS2_S4_(ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef nonnull %6, ptr noundef %2, ptr noundef %3, ptr noundef nonnull byval(%"class.bssl::Span.32") align 8 %7) #6 ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.p

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 220 ; 2 uses
  %i.d = load i8, ptr %i.c, align 4
  %i.e = trunc i8 %i.d to i1
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = call i32 @SSL_in_early_data(ptr noundef nonnull %0) #6
  %i.g = icmp ne i32 %i.f, 0
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = phi i1 [ false, %bb.b ], [ %i.g, %bb.c ]
  %i.i = load i8, ptr %i.a, align 1, !tbaa !161
  switch i8 %i.i, label %bb.j [
    i8 22, label %bb.e
    i8 23, label %bb.k
  ]

bb.e:                                             ; preds = %bb.d
  %i.j = load i8, ptr %i.c, align 4
  %i.k = trunc i8 %i.j to i1
  br i1 %i.k, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.l = call noundef zeroext i16 @_ZN4bssl20ssl_protocol_versionEPK6ssl_st(ptr noundef nonnull %0) #6
  %i.m = icmp ult i16 %i.l, 772
  br i1 %i.m, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 182, ptr noundef nonnull @.str, i32 noundef 226) #6
  store i8 100, ptr %3, align 1, !tbaa !161
  br label %bb.p

bb.h:                                             ; preds = %bb.f, %bb.e
  %i.n = load ptr, ptr %6, align 8, !tbaa !162
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !163
  %i.q = call noundef zeroext i1 @_ZN4bssl25tls_append_handshake_dataEP6ssl_stNS_4SpanIKhEE(ptr noundef nonnull %0, ptr %i.n, i64 %i.p) #6
  br i1 %i.q, label %bb.p, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i8 80, ptr %3, align 1, !tbaa !161
  br label %bb.p

bb.j:                                             ; preds = %bb.d
  call void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 225, ptr noundef nonnull @.str, i32 noundef 239) #6
  store i8 10, ptr %3, align 1, !tbaa !161
  br label %bb.p

bb.k:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !163  ; 3 uses
  br i1 %i.h, label %bb.l, label %._crit_edge

bb.l:                                             ; preds = %bb.k
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !62
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 360
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !103
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 1598 ; 2 uses
  %i.y = load i16, ptr %i.x, align 2, !tbaa !199  ; 2 uses
  %i.z = zext i16 %i.y to i64
  %i.aa = sub nsw i64 14336, %i.z
  %i.ab = icmp ugt i64 %i.s, %i.aa
  br i1 %i.ab, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 300, ptr noundef nonnull @.str, i32 noundef 246) #6
  store i8 10, ptr %3, align 1, !tbaa !161
  br label %bb.p

bb.n:                                             ; preds = %bb.l
  %i.ac = trunc i64 %i.s to i16
  %i.ad = add i16 %i.y, %i.ac
  store i16 %i.ad, ptr %i.x, align 2, !tbaa !199
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.k, %bb.n
  %i.ae = icmp eq i64 %i.s, 0
  br i1 %i.ae, label %bb.p, label %bb.o

bb.o:                                             ; preds = %._crit_edge
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false)
  br label %bb.p

bb.p:                                             ; preds = %bb.g, %bb.i, %bb.j, %bb.m, %bb.o, %bb.h, %._crit_edge, %bb.a
  %.1 = phi i32 [ %i.b, %bb.a ], [ 4, %bb.g ], [ 4, %bb.i ], [ 0, %bb.o ], [ 4, %bb.j ], [ 4, %bb.m ], [ 1, %bb.h ], [ 1, %._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %.1
}

end_hunk_0
