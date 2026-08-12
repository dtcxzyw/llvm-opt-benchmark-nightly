inline.NumInlined: 188
inline.NumDeleted: 57
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumUnrolled: 16
begin_hunk_0_@run_one_slot:bb.a
  br i1 %i.be, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bf = load ptr, ptr @the_repository, align 8, !tbaa !31
  call void @credential_reject(ptr noundef %i.bf, ptr noundef nonnull @proxy_auth) #22
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.bg = load i8, ptr @curl_errorstr, align 16, !tbaa !33
  %.not23.i = icmp eq i8 %i.bg, 0
  br i1 %.not23.i, label %bb.v, label %handle_curl_result.exit

bb.v:                                             ; preds = %bb.u
  %i.bh = load i32, ptr %1, align 8, !tbaa !102
  %i.bi = call ptr @curl_easy_strerror(i32 noundef %i.bh) #22
  %i.bj = call i64 @strlcpy(ptr noundef nonnull dereferenceable(1) @curl_errorstr, ptr noundef nonnull dereferenceable(1) %i.bi, i64 noundef 256) #22 ; 0 uses
  br label %handle_curl_result.exit

handle_curl_result.exit:                          ; preds = %bb.v, %bb.u, %bb.r, %bb.q, %._crit_edge.i, %bb.o, %bb.n, %bb.m, %missing__target.exit.i, %bb.h, %bb.g, %bb.f, %bb.e, %normalize_curl_result.exit.i, %bb.b
  %.0 = phi i32 [ 3, %bb.b ], [ 0, %bb.e ], [ 5, %bb.f ], [ 4, %._crit_edge.i ], [ 6, %normalize_curl_result.exit.i ], [ 4, %bb.m ], [ 1, %missing__target.exit.i ], [ 5, %bb.n ], [ 7, %bb.r ], [ 5, %bb.o ], [ 4, %bb.q ], [ 2, %bb.v ], [ 2, %bb.u ], [ 1, %bb.h ], [ 1, %bb.g ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @http_get_accept_language_header() local_unnamed_addr #2 {
bb.a:
  %0 = alloca %struct.strbuf, align 8             ; 9 uses
  %i.a = alloca [32 x i8], align 16               ; 5 uses
  %1 = alloca %struct.strbuf, align 8             ; 12 uses
  %i.b = load ptr, ptr @cached_accept_language, align 8, !tbaa !46 ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) @__const.fetch_pack_index.buf, i64 24, i1 false)
  %i.c = tail call ptr @get_preferred_languages() #22 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) @__const.fetch_pack_index.buf, i64 24, i1 false)
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %write_accept_language.exit.thread, label %.preheader.i

write_accept_language.exit.thread:                ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #22
  br label %write_accept_language.exit._crit_edge

.preheader.i:                                     ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %.preheader.i
  %.064.i = phi ptr [ %.165.i, %bb.g ], [ null, %.preheader.i ] ; 2 uses
  %.061.i = phi i32 [ %.162.i, %bb.g ], [ 0, %.preheader.i ] ; 6 uses
  %.059.i = phi ptr [ %i.al, %bb.g ], [ %i.c, %.preheader.i ] ; 3 uses
  %i.f = load i8, ptr %.059.i, align 1, !tbaa !33 ; 2 uses
  %.not7699.i = icmp eq i8 %i.f, 0
  br i1 %.not7699.i, label %.critedge.i.preheader, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %strbuf_addch.exit.i
  %i.g = phi i8 [ %i.v, %strbuf_addch.exit.i ], [ %i.f, %bb.c ] ; 4 uses
  %.160100.i = phi ptr [ %i.u, %strbuf_addch.exit.i ], [ %.059.i, %bb.c ] ; 2 uses
  %i.h = zext i8 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !tbaa !33
  %i.k = and i8 %i.j, 6
  %.not77.i = icmp ne i8 %i.k, 0
  %i.l = icmp eq i8 %i.g, 95                      ; 2 uses
  %or.cond.i = or i1 %i.l, %.not77.i
  br i1 %or.cond.i, label %.critedge2.i, label %.critedge.i.preheader

.critedge2.i:                                     ; preds = %.lr.ph.i
  %narrow.i = select i1 %i.l, i8 45, i8 %i.g
  %i.m = load i64, ptr %0, align 8, !tbaa !36     ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.m, 0
  br i1 %.not.i.i.i, label %strbuf_avail.exit.thread.i.i, label %strbuf_avail.exit.i.i

strbuf_avail.exit.i.i:                            ; preds = %.critedge2.i
  %i.n = load i64, ptr %i.d, align 8, !tbaa !37   ; 2 uses
  %.neg.i.i = add i64 %i.n, 1                     ; 2 uses
  %.not.i.i = icmp eq i64 %i.m, %.neg.i.i
  br i1 %.not.i.i, label %strbuf_avail.exit.thread.i.i, label %strbuf_addch.exit.i

strbuf_avail.exit.thread.i.i:                     ; preds = %strbuf_avail.exit.i.i, %.critedge2.i
  call void @strbuf_grow(ptr noundef nonnull %0, i64 noundef 1) #22
  %.pre.i.i = load i64, ptr %i.d, align 8, !tbaa !37 ; 2 uses
  %.pre7.i.i = add i64 %.pre.i.i, 1
  br label %strbuf_addch.exit.i

strbuf_addch.exit.i:                              ; preds = %strbuf_avail.exit.thread.i.i, %strbuf_avail.exit.i.i
  %.pre-phi.i.i = phi i64 [ %.pre7.i.i, %strbuf_avail.exit.thread.i.i ], [ %.neg.i.i, %strbuf_avail.exit.i.i ]
  %i.o = phi i64 [ %.pre.i.i, %strbuf_avail.exit.thread.i.i ], [ %i.n, %strbuf_avail.exit.i.i ]
  %i.p = load ptr, ptr %i.e, align 8, !tbaa !29
  store i64 %.pre-phi.i.i, ptr %i.d, align 8, !tbaa !37
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.o
  store i8 %narrow.i, ptr %i.q, align 1, !tbaa !33
  %i.r = load ptr, ptr %i.e, align 8, !tbaa !29
  %i.s = load i64, ptr %i.d, align 8, !tbaa !37
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.s
  store i8 0, ptr %i.t, align 1, !tbaa !33
  %i.u = getelementptr inbounds nuw i8, ptr %.160100.i, i64 1 ; 3 uses
  %i.v = load i8, ptr %i.u, align 1, !tbaa !33    ; 2 uses
  %.not76.i = icmp eq i8 %i.v, 0
  br i1 %.not76.i, label %.critedge.i.preheader, label %.lr.ph.i, !llvm.loop !131

.critedge.i.preheader:                            ; preds = %strbuf_addch.exit.i, %.lr.ph.i, %bb.c
  %.ph = phi i8 [ 0, %bb.c ], [ %i.g, %.lr.ph.i ], [ 0, %strbuf_addch.exit.i ]
  %.2.i.ph = phi ptr [ %.059.i, %bb.c ], [ %.160100.i, %.lr.ph.i ], [ %i.u, %strbuf_addch.exit.i ]
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.i.preheader, %bb.d
  %i.w = phi i8 [ %.pre.i, %bb.d ], [ %.ph, %.critedge.i.preheader ] ; 2 uses
  %.2.i = phi ptr [ %i.x, %bb.d ], [ %.2.i.ph, %.critedge.i.preheader ] ; 3 uses
  switch i8 %i.w, label %bb.d [
    i8 0, label %.critedge4.i
    i8 58, label %.critedge4.i
  ]

bb.d:                                             ; preds = %.critedge.i
  %i.x = getelementptr inbounds nuw i8, ptr %.2.i, i64 1 ; 2 uses
  %.pre.i = load i8, ptr %i.x, align 1, !tbaa !33
  br label %.critedge.i, !llvm.loop !132

.critedge4.i:                                     ; preds = %.critedge.i, %.critedge.i
  %i.y = load i64, ptr %i.d, align 8, !tbaa !37
  %.not80.i = icmp eq i64 %i.y, 0
  br i1 %.not80.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %.critedge4.i
  %i.z = add nsw i32 %.061.i, 1                   ; 3 uses
  %i.aa = sext i32 %i.z to i64                    ; 3 uses
  %i.ab = icmp slt i32 %.061.i, -1
  br i1 %i.ab, label %bb.f, label %st_mult.exit.i

bb.f:                                             ; preds = %bb.e
  call void (ptr, ...) @die(ptr noundef nonnull @.str.204, i64 noundef 8, i64 noundef range(i64 -2147483647, 2147483648) %i.aa) #21
  unreachable

st_mult.exit.i:                                   ; preds = %bb.e
  %i.ac = shl nuw nsw i64 %i.aa, 3
  %i.ad = call ptr @xrealloc(ptr noundef %.064.i, i64 noundef %i.ac) #22 ; 3 uses
  %i.ae = call ptr @strbuf_detach(ptr noundef nonnull %0, ptr noundef null) #22
  %i.af = sext i32 %.061.i to i64
  %i.ag = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.af
  store ptr %i.ae, ptr %i.ag, align 8, !tbaa !46
  %i.ah = icmp sgt i32 %.061.i, 997
  br i1 %i.ah, label %.thread.thread.i, label %st_mult.exit._crit_edge.i

.thread.thread.i:                                 ; preds = %st_mult.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.ai = add nuw i32 %.061.i, 2                  ; 2 uses
  %i.aj = sext i32 %i.ai to i64
  br label %st_mult.exit87.i

st_mult.exit._crit_edge.i:                        ; preds = %st_mult.exit.i
  %.pre134.i = load i8, ptr %.2.i, align 1, !tbaa !33
  br label %bb.g

bb.g:                                             ; preds = %st_mult.exit._crit_edge.i, %.critedge4.i
  %i.ak = phi i8 [ %.pre134.i, %st_mult.exit._crit_edge.i ], [ %i.w, %.critedge4.i ]
  %.165.i = phi ptr [ %i.ad, %st_mult.exit._crit_edge.i ], [ %.064.i, %.critedge4.i ] ; 3 uses
  %.162.i = phi i32 [ %i.z, %st_mult.exit._crit_edge.i ], [ %.061.i, %.critedge4.i ] ; 6 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.2.i, i64 1
  %.not81.i = icmp eq i8 %i.ak, 0
  br i1 %.not81.i, label %bb.h, label %bb.c, !llvm.loop !133

bb.h:                                             ; preds = %bb.g
  %.not82.i = icmp eq i32 %.162.i, 0
  br i1 %.not82.i, label %write_accept_language.exit, label %.thread.i

.thread.i:                                        ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.am = add i32 %.162.i, 1                      ; 2 uses
  %i.an = sext i32 %i.am to i64                   ; 2 uses
  %i.ao = icmp slt i32 %.162.i, -1
  br i1 %i.ao, label %bb.i, label %.thread.i.st_mult.exit87.i_crit_edge

.thread.i.st_mult.exit87.i_crit_edge:             ; preds = %.thread.i
  %.pre26 = sext i32 %.162.i to i64
  br label %st_mult.exit87.i

bb.i:                                             ; preds = %.thread.i
  call void (ptr, ...) @die(ptr noundef nonnull @.str.204, i64 noundef 8, i64 noundef range(i64 -2147483647, 2147483648) %i.an) #21
  unreachable

st_mult.exit87.i:                                 ; preds = %.thread.i.st_mult.exit87.i_crit_edge, %.thread.thread.i
  %.pre-phi = phi i64 [ %.pre26, %.thread.i.st_mult.exit87.i_crit_edge ], [ %i.aa, %.thread.thread.i ]
  %i.ap = phi i64 [ %i.an, %.thread.i.st_mult.exit87.i_crit_edge ], [ %i.aj, %.thread.thread.i ]
  %i.aq = phi i32 [ %i.am, %.thread.i.st_mult.exit87.i_crit_edge ], [ %i.ai, %.thread.thread.i ] ; 3 uses
  %.26691147.i = phi ptr [ %.165.i, %.thread.i.st_mult.exit87.i_crit_edge ], [ %i.ad, %.thread.thread.i ]
  %.26392146.i = phi i32 [ %.162.i, %.thread.i.st_mult.exit87.i_crit_edge ], [ %i.z, %.thread.thread.i ] ; 5 uses
  %i.ar = shl nuw nsw i64 %i.ap, 3
  %i.as = call ptr @xrealloc(ptr noundef %.26691147.i, i64 noundef %i.ar) #22 ; 6 uses
  %i.at = call ptr @xstrdup(ptr noundef nonnull @.str.200) #22
  %i.au = getelementptr inbounds [8 x i8], ptr %i.as, i64 %.pre-phi
  store ptr %i.at, ptr %i.au, align 8, !tbaa !46
  %i.av = icmp sgt i32 %.26392146.i, 0
  br i1 %i.av, label %.lr.ph105.i, label %._crit_edge.i

.lr.ph105.i:                                      ; preds = %st_mult.exit87.i
  %i.aw = icmp samesign ugt i32 %.26392146.i, 9
  br i1 %i.aw, label %.lr.ph105.i.1, label %._crit_edge.i

.lr.ph105.i.1:                                    ; preds = %.lr.ph105.i
  %i.ax = icmp samesign ugt i32 %.26392146.i, 99
  br i1 %i.ax, label %.lr.ph105.i.2, label %._crit_edge.i

.lr.ph105.i.2:                                    ; preds = %.lr.ph105.i.1
  %i.ay = icmp samesign ugt i32 %.26392146.i, 999 ; 2 uses
  %spec.select = select i1 %i.ay, i32 4, i32 3
  %spec.select77 = select i1 %i.ay, i64 10000, i64 1000
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph105.i.2, %.lr.ph105.i, %.lr.ph105.i.1, %st_mult.exit87.i
  %.056.lcssa.i = phi i64 [ 1, %st_mult.exit87.i ], [ 10, %.lr.ph105.i ], [ 100, %.lr.ph105.i.1 ], [ %spec.select77, %.lr.ph105.i.2 ]
  %.0.lcssa.i = phi i32 [ 0, %st_mult.exit87.i ], [ 1, %.lr.ph105.i ], [ 2, %.lr.ph105.i.1 ], [ %spec.select, %.lr.ph105.i.2 ]
  %i.az = call i32 (ptr, i64, ptr, ...) @xsnprintf(ptr noundef nonnull %i.a, i64 noundef 32, ptr noundef nonnull @.str.201, i32 noundef %.0.lcssa.i) #22 ; 0 uses
  call void @strbuf_add(ptr noundef nonnull %1, ptr noundef nonnull @.str.202, i64 noundef 17) #22
  %.not83108.i = icmp slt i32 %.26392146.i, 0
  br i1 %.not83108.i, label %.loopexit.i, label %bb.j

bb.j:                                             ; preds = %._crit_edge.i
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %wide.trip.count.i = zext i32 %i.aq to i64
  %i.bb = load ptr, ptr %i.as, align 8, !tbaa !46 ; 2 uses
  %i.bc = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bb) #23
  call void @strbuf_add(ptr noundef nonnull %1, ptr noundef nonnull %i.bb, i64 noundef %i.bc) #22
  %.pre135.i = load i64, ptr %i.ba, align 8, !tbaa !37 ; 3 uses
  %i.bd = icmp ugt i64 %.pre135.i, 4000
  br i1 %i.bd, label %.loopexit128.i, label %.peel.next.i

bb.k:                                             ; preds = %.peel.next.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.loopexit.i, label %.peel.next.i, !llvm.loop !134

.peel.next.i:                                     ; preds = %bb.j, %bb.k
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.k ], [ 1, %bb.j ] ; 3 uses
  %.057110.i = phi i64 [ %.pre136.i, %bb.k ], [ %.pre135.i, %bb.j ]
  call void @strbuf_add(ptr noundef nonnull %1, ptr noundef nonnull @.str.203, i64 noundef 2) #22
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %indvars.iv.i
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !46 ; 2 uses
  %i.bg = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bf) #23
  call void @strbuf_add(ptr noundef nonnull %1, ptr noundef nonnull %i.bf, i64 noundef %i.bg) #22
  %i.bh = sub nsw i64 %.056.lcssa.i, %indvars.iv.i
  %i.bi = trunc nsw i64 %i.bh to i32
  call void (ptr, ptr, ...) @strbuf_addf(ptr noundef nonnull %1, ptr noundef nonnull %i.a, i32 noundef %i.bi) #22
  %.pre136.i = load i64, ptr %i.ba, align 8, !tbaa !37 ; 3 uses
  %i.bj = icmp ugt i64 %.pre136.i, 4000
  br i1 %i.bj, label %.loopexit128.i, label %bb.k

.loopexit128.i:                                   ; preds = %.peel.next.i, %bb.j
  %.lcssa.i = phi i64 [ %.pre135.i, %bb.j ], [ %.pre136.i, %.peel.next.i ]
  %.057110.lcssa.i = phi i64 [ 0, %bb.j ], [ %.057110.i, %.peel.next.i ] ; 2 uses
  %i.bk = sub nuw i64 %.lcssa.i, %.057110.lcssa.i
  call void @strbuf_remove(ptr noundef nonnull %1, i64 noundef %.057110.lcssa.i, i64 noundef %i.bk) #22
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.k, %.loopexit128.i, %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.bl = icmp sgt i32 %i.aq, 0
  br i1 %i.bl, label %.lr.ph115.preheader.i, label %write_accept_language.exit

.lr.ph115.preheader.i:                            ; preds = %.loopexit.i
  %wide.trip.count132.i = zext nneg i32 %i.aq to i64
  br label %.lr.ph115.i

.lr.ph115.i:                                      ; preds = %.lr.ph115.i, %.lr.ph115.preheader.i
  %indvars.iv129.i = phi i64 [ 0, %.lr.ph115.preheader.i ], [ %indvars.iv.next130.i, %.lr.ph115.i ] ; 2 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %indvars.iv129.i
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !46
  call void @free(ptr noundef %i.bn) #22
  %indvars.iv.next130.i = add nuw nsw i64 %indvars.iv129.i, 1 ; 2 uses
  %exitcond133.not.i = icmp eq i64 %indvars.iv.next130.i, %wide.trip.count132.i
  br i1 %exitcond133.not.i, label %write_accept_language.exit, label %.lr.ph115.i, !llvm.loop !136

write_accept_language.exit:                       ; preds = %.lr.ph115.i, %bb.h, %.loopexit.i
  %.367151.i = phi ptr [ %.165.i, %bb.h ], [ %i.as, %.loopexit.i ], [ %i.as, %.lr.ph115.i ]
  call void @free(ptr noundef %.367151.i) #22
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !37
  %i.bo = icmp eq i64 %.pre, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #22
  br i1 %i.bo, label %write_accept_language.exit._crit_edge, label %bb.l

write_accept_language.exit._crit_edge:            ; preds = %write_accept_language.exit.thread, %write_accept_language.exit
  %.pre24.pre = load ptr, ptr @cached_accept_language, align 8, !tbaa !46
  br label %bb.m

bb.l:                                             ; preds = %write_accept_language.exit
  %i.bp = call ptr @strbuf_detach(ptr noundef nonnull %1, ptr noundef null) #22 ; 2 uses
  store ptr %i.bp, ptr @cached_accept_language, align 8, !tbaa !46
  br label %bb.m

bb.m:                                             ; preds = %write_accept_language.exit._crit_edge, %bb.l
  %.pre24 = phi ptr [ %.pre24.pre, %write_accept_language.exit._crit_edge ], [ %i.bp, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.a
  %i.bq = phi ptr [ %.pre24, %bb.m ], [ %i.b, %bb.a ]
  ret ptr %i.bq
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 8) i32 @http_get_strbuf(ptr noundef %0, ptr noundef %1, ptr nofree noundef captures(address_is_null) %2) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call fastcc i32 @http_request_recoverable(ptr noundef %0, ptr noundef %1, i32 noundef 0, ptr noundef %2)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 8) i32 @http_request_recoverable(ptr noundef %0, ptr noundef %1, i32 noundef range(i32 0, 2) %2, ptr nofree noundef captures(address_is_null) %3) unnamed_addr #2 {
bb.a:
  %i.a = load i64, ptr @http_max_retries, align 8, !tbaa !30
  %i.b = trunc i64 %i.a to i32
  %.not = icmp eq ptr %3, null
  %spec.store.select = select i1 %.not, ptr @http_request_recoverable.empty_opts, ptr %3 ; 5 uses
  %i.c = load i32, ptr @http_proactive_auth, align 4, !tbaa !45
  %i.d = icmp ult i32 %i.c, 2
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr @the_repository, align 8, !tbaa !31
  tail call void @credential_fill(ptr noundef %i.e, ptr noundef nonnull @http_auth, i32 noundef 1) #22
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = tail call fastcc i32 @http_request(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %spec.store.select) ; 4 uses
  %i.g = and i32 %i.f, 3
  %or.cond = icmp ne i32 %i.g, 0
  %i.h = icmp ne i32 %i.f, 7                      ; 2 uses
  %or.cond4 = and i1 %i.h, %or.cond
  br i1 %or.cond4, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = load i64, ptr @http_max_retries, align 8
  %i.j = icmp ne i64 %i.i, 0
  %or.cond6 = select i1 %i.h, i1 true, i1 %i.j
  br i1 %or.cond6, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %spec.store.select, i64 24 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !137  ; 3 uses
  %.not69 = icmp eq ptr %i.l, null
  br i1 %.not69, label %update_url_from_redirect.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %spec.store.select, i64 32 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !141  ; 4 uses
  %.not70 = icmp eq ptr %i.n, null
  br i1 %.not70, label %update_url_from_redirect.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !29   ; 3 uses
  %i.q = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %i.p) #23
  %.not.i = icmp eq i32 %i.q, 0
  br i1 %.not.i, label %update_url_from_redirect.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !29   ; 4 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.j, %bb.h
  %.07.i.i = phi ptr [ %0, %bb.h ], [ %i.u, %bb.j ] ; 4 uses
  %.06.i.i = phi ptr [ %i.s, %bb.h ], [ %i.w, %bb.j ] ; 2 uses
  %i.t = load i8, ptr %.06.i.i, align 1, !tbaa !33 ; 2 uses
  %.not.i.i = icmp eq i8 %i.t, 0
  br i1 %.not.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.u = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 1
  %i.v = load i8, ptr %.07.i.i, align 1, !tbaa !33
  %i.w = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 1
  %i.x = icmp eq i8 %i.v, %i.t
  br i1 %i.x, label %bb.i, label %skip_prefix_impl.exit.i, !llvm.loop !142

skip_prefix_impl.exit.i:                          ; preds = %bb.j
  tail call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str, i32 noundef 2353, ptr noundef nonnull @.str.222, ptr noundef nonnull %0, ptr noundef %i.s) #21
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !37   ; 2 uses
  %i.aa = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %.07.i.i) #23 ; 3 uses
  %i.ab = icmp ult i64 %i.z, %i.aa
  br i1 %i.ab, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ac = sub nuw i64 %i.z, %i.aa                 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.ac
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull readonly %i.ad, ptr nonnull readonly %.07.i.i, i64 %i.aa)
  %.not.i13.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %.not.i13.i, label %strip_suffix_mem.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ae = tail call fastcc ptr @_(ptr noundef nonnull @.str.223)
  %i.af = load ptr, ptr %i.o, align 8, !tbaa !29
  tail call void (ptr, ...) @die(ptr noundef %i.ae, ptr noundef nonnull %0, ptr noundef %i.af) #21
  unreachable

strip_suffix_mem.exit.i:                          ; preds = %bb.l
  %i.ag = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 0, ptr %i.ag, align 8, !tbaa !37
  %.not9.i.i = icmp eq ptr %i.s, @strbuf_slopbuf
  br i1 %.not9.i.i, label %bb.o, label %bb.n

end_hunk_0
