inline.NumInlined: 122
inline.NumDeleted: 51
begin_hunk_0_@ssl_tls13_process_client_hello:bb.a
._crit_edge.loopexit.i:                           ; preds = %bb.be
  %.pre.i = load i32, ptr %i.cd, align 4, !tbaa !60
  %.pre445.i = ptrtoint ptr %i.cx to i64
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.af
  %.pre-phi.i = phi i64 [ %.pre445.i, %._crit_edge.loopexit.i ], [ %i.bz, %bb.af ]
  %i.dl = phi i32 [ %.pre.i, %._crit_edge.loopexit.i ], [ 0, %bb.af ]
  %.0273.lcssa.i = phi i32 [ %.3.i, %._crit_edge.loopexit.i ], [ 0, %bb.af ]
  %.0269.lcssa.i = phi ptr [ %.2271.i, %._crit_edge.loopexit.i ], [ null, %bb.af ] ; 2 uses
  %.0266.lcssa.i = phi ptr [ %.2268.i, %._crit_edge.loopexit.i ], [ null, %bb.af ]
  call void @mbedtls_ssl_print_extensions(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @.str, i32 noundef 1686, i32 noundef 1, i32 noundef %i.dl, ptr noundef null) #10
end_hunk_0
begin_hunk_1_@ssl_tls13_process_client_hello:bb.a

bb.bs:                                            ; preds = %bb.bq, %bb.bp, %bb.bo
  %i.ek = getelementptr inbounds nuw i8, ptr %i.j, i64 56 ; 2 uses
  %i.el = load i8, ptr %i.ek, align 8, !tbaa !66  ; 2 uses
  %i.em = and i8 %i.el, 5
  %.not311.i = icmp eq i8 %i.em, 0
  br i1 %.not311.i, label %bb.bv, label %bb.bt
end_hunk_1
begin_hunk_2_@ssl_tls13_process_client_hello:bb.a
  call void (ptr, i32, ptr, i32, ptr, ...) @mbedtls_debug_print_msg(ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 1787, ptr noundef nonnull @.str.50, i32 noundef %i.ep, ptr noundef %i.et) #10
  %i.eu = load i32, ptr %1, align 8, !tbaa !70
  %i.ev = icmp eq i32 %i.eu, 1
  br i1 %i.ev, label %bb.bu, label %thread-pre-split

bb.bu:                                            ; preds = %bb.bt
  store i8 1, ptr %i.j, align 8, !tbaa !71
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.bt, %bb.bu
  %.pr = load i8, ptr %i.ek, align 8, !tbaa !66
  br label %bb.bv

bb.bv:                                            ; preds = %thread-pre-split, %bb.bs
  %2 = phi i8 [ %.pr, %thread-pre-split ], [ %i.el, %bb.bs ]
  %.not312.not.i = icmp eq i8 %2, 1
  %i.ew = load ptr, ptr %i.bk, align 8, !tbaa !55
  call void @mbedtls_ssl_optimize_checksum(ptr noundef nonnull %0, ptr noundef %i.ew) #10
  %spec.select = select i1 %.not312.not.i, i32 0, i32 %.0273.lcssa.i
  br label %ssl_tls13_parse_client_hello.exit.thread32

ssl_tls13_parse_client_hello.exit.thread:         ; preds = %bb.c, %bb.e, %bb.g, %bb.i, %bb.k, %bb.m, %bb.o, %bb.s, %bb.x, %bb.z, %bb.ac, %bb.ae, %bb.br, %bb.ay, %bb.aw, %bb.au, %bb.ar, %bb.ah, %bb.al, %bb.aj
end_hunk_2
begin_hunk_3_@ssl_tls13_process_client_hello:bb.a
  br label %ssl_tls13_postprocess_client_hello.exit.thread

ssl_tls13_parse_client_hello.exit.thread32:       ; preds = %bb.bv, %bb.q, %bb.u
  %.2.i.ph31 = phi i32 [ 2, %bb.u ], [ 2, %bb.q ], [ %spec.select, %bb.bv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.bw

ssl_tls13_parse_client_hello.exit:                ; preds = %bb.am, %bb.v, %bb.ap, %bb.ba, %bb.bc, %bb.bf, %bb.bi, %bb.bk, %bb.bm
  %.2.i = phi i32 [ %i.cz, %bb.ap ], [ %i.dj, %bb.bc ], [ %i.bd, %bb.v ], [ %i.dn, %bb.bf ], [ %i.du, %bb.bi ], [ %i.dw, %bb.bm ], [ %i.dv, %bb.bk ], [ %i.di, %bb.ba ], [ %i.cy, %bb.am ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
end_hunk_3
