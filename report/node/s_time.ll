begin_hunk_0
  br label %.loopexit205

bb.ar:                                            ; preds = %bb.ap
  %2 = and i32 %.0132, 1
  %.not187 = icmp eq i32 %2, 0
  br i1 %.not187, label %3, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.as = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.64, i32 noundef %.0136) ; 0 uses
end_hunk_0
begin_hunk_1
  %i.cc = sdiv i64 %.0126.lcssa, %i.cb
  br label %bb.ba

bb.ba:                                            ; preds = %._crit_edge, %bb.az
  %i.cd = phi i64 [ %i.cc, %bb.az ], [ 0, %._crit_edge ]
  %i.ce = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.66, i32 noundef %.0134.lcssa, i64 noundef %i.ca, i64 noundef %i.cd) ; 0 uses
  br label %3

3:                                                ; preds = %bb.ar, %bb.ba
  %.not191 = icmp samesign ult i32 %.0132, 2
  br i1 %.not191, label %.loopexit205, label %bb.bb

bb.bb:                                            ; preds = %3
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  %i.cf = call fastcc ptr @doConnection(ptr noundef null, ptr noundef %.0148, ptr noundef %i.ae) ; 19 uses
  %i.cg = icmp eq ptr %i.cf, null
end_hunk_1
begin_hunk_2
  %i.ee = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.70, i64 noundef %i.ea) ; 0 uses
  br label %.loopexit205

.loopexit205:                                     ; preds = %bb.ab, %bb.i, %bb.av, %bb.aw, %bb.at, %bb.bj, %bb.bk, %.lr.ph291, %bb.bp, %bb.bq, %3, %bb.be, %bb.bf, %bb.ao, %bb.an, %bb.al, %bb.ah, %bb.ag, %bb.af, %bb.bc, %bb.aq, %bb.v, %bb.c, %.loopexit211
  %.0131 = phi i32 [ 1, %.loopexit211 ], [ 0, %bb.c ], [ 1, %bb.bj ], [ 1, %bb.v ], [ 1, %bb.av ], [ 1, %bb.af ], [ 1, %bb.ag ], [ 1, %bb.ah ], [ 1, %bb.bc ], [ 1, %bb.be ], [ 1, %bb.bf ], [ 0, %3 ], [ 1, %bb.an ], [ 0, %bb.bq ], [ 0, %bb.bp ], [ 1, %bb.al ], [ 1, %bb.aq ], [ 1, %bb.ao ], [ 1, %.lr.ph291 ], [ 1, %bb.bk ], [ 1, %bb.at ], [ 1, %bb.aw ], [ 1, %bb.i ], [ 1, %bb.ab ]
  %.0125 = phi ptr [ null, %.loopexit211 ], [ null, %bb.c ], [ %i.ae, %bb.bj ], [ null, %bb.v ], [ %i.ae, %bb.av ], [ null, %bb.af ], [ %i.ae, %bb.ag ], [ %i.ae, %bb.ah ], [ %i.ae, %bb.bc ], [ %i.ae, %bb.be ], [ %i.ae, %bb.bf ], [ %i.ae, %3 ], [ %i.ae, %bb.an ], [ %i.ae, %bb.bq ], [ %i.ae, %bb.bp ], [ %i.ae, %bb.al ], [ %i.ae, %bb.aq ], [ %i.ae, %bb.ao ], [ %i.ae, %.lr.ph291 ], [ %i.ae, %bb.bk ], [ %i.ae, %bb.at ], [ %i.ae, %bb.aw ], [ null, %bb.i ], [ null, %bb.ab ]
  %.2 = phi ptr [ null, %.loopexit211 ], [ null, %bb.c ], [ %i.cf, %bb.bj ], [ null, %bb.v ], [ %i.az, %bb.aw ], [ null, %bb.af ], [ null, %bb.ag ], [ null, %bb.ah ], [ null, %bb.bc ], [ %i.cf, %bb.be ], [ %i.cf, %bb.bf ], [ null, %3 ], [ null, %bb.an ], [ %i.cf, %bb.bq ], [ %i.cf, %bb.bp ], [ null, %bb.al ], [ null, %bb.aq ], [ null, %bb.ao ], [ %i.cf, %.lr.ph291 ], [ %i.cf, %bb.bk ], [ null, %bb.at ], [ %i.az, %bb.av ], [ null, %bb.i ], [ null, %bb.ab ]
  call void @SSL_free(ptr noundef %.2) #8
  call void @SSL_CTX_free(ptr noundef %.0125) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
end_hunk_2
