begin_hunk_0_@ssl_do_config:bb.a
  %.not61 = icmp eq i32 %i.ao, 0
  %i.ap = zext i1 %.not61 to i32
  %i.aq = or i32 %.048.lcssa, %i.ap
  %i.ar = icmp eq i32 %i.aq, 0
  %i.as = zext i1 %.not58 to i32
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge, %bb.h, %bb.f, %bb.g, %bb.b
  %.051 = phi i32 [ %3, %bb.b ], [ 0, %bb.g ], [ %3, %._crit_edge ], [ 0, %bb.h ], [ 1, %bb.f ]
  %.050 = phi ptr [ null, %bb.b ], [ null, %bb.g ], [ %i.n, %._crit_edge ], [ null, %bb.h ], [ null, %bb.f ]
  %.250 = phi i1 [ false, %bb.b ], [ false, %bb.g ], [ %i.ar, %._crit_edge ], [ false, %bb.h ], [ false, %bb.f ]
  %.046 = phi i32 [ 1, %bb.b ], [ 1, %bb.g ], [ %i.as, %._crit_edge ], [ 1, %bb.h ], [ 1, %bb.f ]
  %.043 = phi ptr [ null, %bb.b ], [ null, %bb.g ], [ %i.ae, %._crit_edge ], [ null, %bb.h ], [ null, %bb.f ]
  %i.at = call ptr @OSSL_LIB_CTX_set0_default(ptr noundef %.043) #4 ; 0 uses
  call void @SSL_CONF_CTX_free(ptr noundef %.050) #4
  %.not62 = icmp eq i32 %.051, 0
  %spec.select73 = select i1 %.not62, i32 0, i32 %.046
  %i.au = select i1 %.250, i32 1, i32 %spec.select73
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #4
end_hunk_0
