inline.NumInlined: 33
inline.NumDeleted: 15
begin_hunk_0_@mbedtls_ssl_write_client_hello:bb.a
.thread.i:                                        ; preds = %bb.ah
  %i.cy = load i32, ptr %i.bn, align 4, !tbaa !43 ; 2 uses
  %i.cz = icmp ugt i32 %i.cy, 770
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ah
end_hunk_0
begin_hunk_1_@mbedtls_ssl_write_client_hello:bb.a

bb.aj:                                            ; preds = %._crit_edge.i, %.thread.i
  %i.db = phi i32 [ %i.cy, %.thread.i ], [ %.pre.i75, %._crit_edge.i ]
  %1 = phi i1 [ %i.cz, %.thread.i ], [ false, %._crit_edge.i ]
  %i.dc = icmp ult i32 %i.db, 772
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %2 = phi i1 [ false, %bb.ai ], [ %1, %bb.aj ]   ; 4 uses
  %.not174.i = phi i1 [ true, %bb.ai ], [ %i.dc, %bb.aj ] ; 3 uses
  %i.dd = ptrtoint ptr %i.ct to i64               ; 5 uses
  %i.de = ptrtoint ptr %i.cr to i64
end_hunk_1
begin_hunk_2_@mbedtls_ssl_write_client_hello:bb.a
.thread201.i:                                     ; preds = %bb.bf, %bb.bd
  %.3151203.i = phi ptr [ %i.hh, %bb.bf ], [ %i.he, %bb.bd ] ; 3 uses
  %.0.i = phi i32 [ %spec.select.i73, %bb.bf ], [ 0, %bb.bd ]
  %i.hk = icmp ne i32 %.2195.i, 0
  %or.cond.i74 = select i1 %2, i1 %i.hk, i1 false
  %i.hl = zext i1 %or.cond.i74 to i32
  %spec.select184.i = or disjoint i32 %.0.i, %i.hl ; 2 uses
  %.not178.i = icmp eq i32 %spec.select184.i, 0
end_hunk_2
begin_hunk_3_@mbedtls_ssl_write_client_hello:bb.a
bb.bj:                                            ; preds = %bb.bi
  %.val185.i = load ptr, ptr %0, align 8, !tbaa !44
  %i.hp = getelementptr i8, ptr %.val185.i, i64 32
  %.val185.val.i = load i32, ptr %i.hp, align 8, !tbaa !72
  %i.hq = and i32 %.val185.val.i, 2
  %i.hr = icmp ne i32 %i.hq, 0
  %3 = select i1 %i.hr, i1 true, i1 %2
  br i1 %3, label %bb.bl, label %4

bb.bk:                                            ; preds = %bb.bi
  br i1 %2, label %bb.bl, label %.thread239.i

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %i.hs = call i32 @mbedtls_ssl_write_sig_alg_ext(ptr noundef nonnull %0, ptr noundef %.5.ph.i, ptr noundef nonnull %i.ct, ptr noundef nonnull %i.a) #8 ; 2 uses
end_hunk_3
begin_hunk_4_@mbedtls_ssl_write_client_hello:bb.a

bb.bm:                                            ; preds = %bb.bl
  %i.ht = load i64, ptr %i.a, align 8, !tbaa !63
  %i.hu = getelementptr inbounds nuw i8, ptr %.5.ph.i, i64 %i.ht
  br label %4

4:                                                ; preds = %bb.bm, %bb.bj
  %.6.i = phi ptr [ %i.hu, %bb.bm ], [ %.5.ph.i, %bb.bj ] ; 3 uses
  br i1 %2, label %bb.bn, label %bb.bp

bb.bn:                                            ; preds = %4
  %i.hv = call i32 @mbedtls_ssl_tls12_write_client_hello_exts(ptr noundef nonnull %0, ptr noundef %.6.i, ptr noundef nonnull %i.ct, i32 noundef %.2195.i, ptr noundef nonnull %i.a) #8 ; 2 uses
  %.not181.i.a = icmp eq i32 %i.hv, 0
  br i1 %.not181.i.a, label %bb.bo, label %ssl_write_client_hello_body.exit.thread

bb.bo:                                            ; preds = %bb.bn
  %i.hw = load i64, ptr %i.a, align 8, !tbaa !63
  %i.hx = getelementptr inbounds nuw i8, ptr %.6.i, i64 %i.hw
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %4
  %.7.i = phi ptr [ %i.hx, %bb.bo ], [ %.6.i, %4 ] ; 4 uses
  br i1 %.not174.i, label %.thread239.i, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %.val186.i = load ptr, ptr %0, align 8, !tbaa !44
  %5 = getelementptr i8, ptr %.val186.i, i64 32
  %.val186.val.i = load i32, ptr %5, align 8, !tbaa !72
  %i.hy = and i32 %.val186.val.i, 5
  %.not217.i = icmp eq i32 %i.hy, 0
  br i1 %.not217.i, label %.thread239.i, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.hz = call i32 @mbedtls_ssl_tls13_write_identities_of_pre_shared_key_ext(ptr noundef nonnull %0, ptr noundef %.7.i, ptr noundef nonnull %i.ct, ptr noundef nonnull %i.a, ptr noundef nonnull %i.d) #8 ; 2 uses
  %.not183.i = icmp eq i32 %i.hz, 0
  br i1 %.not183.i, label %bb.bs, label %ssl_write_client_hello_body.exit.thread

bb.bs:                                            ; preds = %bb.br
  %i.ia = load i64, ptr %i.a, align 8, !tbaa !63
  %i.ib = getelementptr inbounds nuw i8, ptr %.7.i, i64 %i.ia
  br label %.thread239.i

.thread239.i:                                     ; preds = %bb.bs, %bb.bq, %bb.bp, %bb.bk
  %.8.i = phi ptr [ %i.ib, %bb.bs ], [ %.7.i, %bb.bq ], [ %.7.i, %bb.bp ], [ %.5.ph.i, %bb.bk ]
  %i.ic = ptrtoint ptr %.8.i to i64               ; 2 uses
  %i.id = sub i64 %i.ic, %i.gv
  %i.ie = add i64 %i.id, -2                       ; 4 uses
end_hunk_4
