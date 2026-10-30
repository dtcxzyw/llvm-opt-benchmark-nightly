Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/ftp?download=true
inline.NumInlined: 63
inline.NumDeleted: 28
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@ftp_connect_control_connection:bb.a
bb.m:                                             ; preds = %.loopexit36.i
  %i.ap = load ptr, ptr %i.g, align 8, !tbaa !20  ; 2 uses
  %.not16.i.i = icmp eq ptr %i.ap, null
  br i1 %.not16.i.i, label %.loopexit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aq = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #10
  %i.ar = trunc i64 %i.aq to i32
  %i.as = call i32 @ffurl_write2(ptr noundef nonnull %i.ap, ptr noundef nonnull %i.a, i32 noundef %i.ar) #9
  %or.cond.i = icmp slt i32 %i.as, 1
  br i1 %or.cond.i, label %.loopexit, label %ftp_send_command.exit.i

ftp_send_command.exit.i:                          ; preds = %bb.n
  %i.at = call fastcc i32 @ftp_status(ptr noundef nonnull %i.f, ptr noundef null, ptr noundef nonnull @ftp_auth.user_codes) ; 2 uses
  %i.au = icmp eq i32 %i.at, 331
  br i1 %i.au, label %bb.o, label %ftp_send_command.exit.thread.i

bb.o:                                             ; preds = %ftp_send_command.exit.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.f, i64 1088
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !36 ; 4 uses
  %.not14.i = icmp eq ptr %i.aw, null
  br i1 %.not14.i, label %.loopexit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !31
  %.fr9.i17.i = freeze i8 %i.ax                   ; 2 uses
  %.not10.i18.i = icmp eq i8 %.fr9.i17.i, 0
  br i1 %.not10.i18.i, label %.loopexit.i, label %.lr.ph.i19.i

.lr.ph.i19.i:                                     ; preds = %bb.p, %bb.q
  %.fr12.i20.i = phi i8 [ %.fr.i24.i, %bb.q ], [ %.fr9.i17.i, %bb.p ] ; 2 uses
  %.011.i21.i = phi ptr [ %i.az, %bb.q ], [ %i.aw, %bb.p ]
  %i.ay = icmp ult i8 %.fr12.i20.i, 32
  br i1 %i.ay, label %.loopexit, label %switch.early.test.i22.i

switch.early.test.i22.i:                          ; preds = %.lr.ph.i19.i
  switch i8 %.fr12.i20.i, label %bb.q [
    i8 -1, label %.loopexit
    i8 127, label %.loopexit
  ]

bb.q:                                             ; preds = %switch.early.test.i22.i
  %i.az = getelementptr inbounds nuw i8, ptr %.011.i21.i, i64 1 ; 2 uses
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !31
  %.fr.i24.i = freeze i8 %i.ba                    ; 2 uses
  %.not.i25.i = icmp eq i8 %.fr.i24.i, 0
  br i1 %.not.i25.i, label %.loopexit.i, label %.lr.ph.i19.i, !llvm.loop !0

.loopexit.i:                                      ; preds = %bb.q, %bb.p
  %i.bb = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 1024, ptr noundef nonnull @.str.16, ptr noundef nonnull %i.aw) #9
  %i.bc = icmp ugt i32 %i.bb, 1023
  br i1 %i.bc, label %.loopexit, label %bb.r

bb.r:                                             ; preds = %.loopexit.i
  %i.bd = call fastcc i32 @ftp_send_command(ptr noundef nonnull %i.f, ptr noundef nonnull %i.a, ptr noundef nonnull @ftp_auth.pass_codes, ptr noundef null)
  br label %ftp_send_command.exit.thread.i

ftp_send_command.exit.thread.i:                   ; preds = %bb.r, %ftp_send_command.exit.i
  %.0.i = phi i32 [ %i.bd, %bb.r ], [ %i.at, %ftp_send_command.exit.i ]
  %.0.fr.i = freeze i32 %.0.i
  %.not16.i = icmp eq i32 %.0.fr.i, 230
  br i1 %.not16.i, label %bb.s, label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i22.i, %switch.early.test.i22.i, %.lr.ph.i19.i, %.loopexit.i, %bb.o, %.loopexit36.i, %ftp_send_command.exit.thread.i, %bb.m, %bb.n
  %.011.i.ph = phi i32 [ -13, %bb.m ], [ -13, %ftp_send_command.exit.thread.i ], [ -22, %switch.early.test.i22.i ], [ -38, %.loopexit36.i ], [ -13, %bb.o ], [ -38, %.loopexit.i ], [ -13, %bb.n ], [ -22, %.lr.ph.i19.i ], [ -22, %switch.early.test.i22.i ], [ -22, %switch.early.test.i.i ], [ -22, %switch.early.test.i.i ], [ -22, %.lr.ph.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.11) #9
  br label %ftp_features.exit

bb.s:                                             ; preds = %ftp_send_command.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  %i.be = load ptr, ptr %i.g, align 8, !tbaa !20  ; 2 uses
  %.not16.i.i35 = icmp eq ptr %i.be, null
  br i1 %.not16.i.i35, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bf = call i32 @ffurl_write2(ptr noundef nonnull %i.be, ptr noundef nonnull @.str.17, i32 noundef 8) #9
  %or.cond.i36 = icmp slt i32 %i.bf, 1
  br i1 %or.cond.i36, label %bb.u, label %ftp_send_command.exit.i37

ftp_send_command.exit.i37:                        ; preds = %bb.t
  %i.bg = call fastcc i32 @ftp_status(ptr noundef nonnull %i.f, ptr noundef null, ptr noundef nonnull @ftp_type.type_codes)
  %.fr.i = freeze i32 %i.bg
  %.not.i = icmp eq i32 %.fr.i, 200
  br i1 %.not.i, label %ftp_type.exit, label %bb.u

bb.u:                                             ; preds = %bb.t, %ftp_send_command.exit.i37, %bb.s
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.12) #9
  br label %ftp_features.exit

ftp_type.exit:                                    ; preds = %ftp_send_command.exit.i37
  %i.bh = getelementptr inbounds nuw i8, ptr %i.f, i64 1152 ; 5 uses
  call void @av_freep(ptr noundef nonnull %i.bh) #9
  store ptr null, ptr %i.bh, align 8, !tbaa !23
  %i.bi = load ptr, ptr %i.g, align 8, !tbaa !20  ; 2 uses
  %.not16.i.i40 = icmp eq ptr %i.bi, null
  br i1 %.not16.i.i40, label %ftp_send_command.exit.thread.i43, label %bb.v

bb.v:                                             ; preds = %ftp_type.exit
  %i.bj = call i32 @ffurl_write2(ptr noundef nonnull %i.bi, ptr noundef nonnull @.str.18, i32 noundef 6) #9
  %or.cond21.i = icmp slt i32 %i.bj, 1
  br i1 %or.cond21.i, label %ftp_send_command.exit.thread.i43, label %ftp_send_command.exit.i41

ftp_send_command.exit.i41:                        ; preds = %bb.v
  %i.bk = call fastcc i32 @ftp_status(ptr noundef nonnull %i.f, ptr noundef nonnull %i.bh, ptr noundef nonnull @ftp_features.feat_codes)
  %.not.i42 = icmp eq i32 %i.bk, 211
  br i1 %.not.i42, label %bb.w, label %ftp_send_command.exit.thread.i43

ftp_send_command.exit.thread.i43:                 ; preds = %ftp_send_command.exit.i41, %bb.v, %ftp_type.exit
  call void @av_freep(ptr noundef nonnull %i.bh) #9
  br label %bb.w

bb.w:                                             ; preds = %ftp_send_command.exit.thread.i43, %ftp_send_command.exit.i41
  %.val.i = load ptr, ptr %i.bh, align 8, !tbaa !34 ; 2 uses
  %.not.i.i44 = icmp eq ptr %.val.i, null
  br i1 %.not.i.i44, label %ftp_features.exit, label %ftp_has_feature.exit.i

ftp_has_feature.exit.i:                           ; preds = %bb.w
  %i.bl = call ptr @av_stristr(ptr noundef nonnull %.val.i, ptr noundef nonnull @.str.20) #9
  %.not22.i = icmp eq ptr %i.bl, null
  br i1 %.not22.i, label %ftp_features.exit, label %bb.x

bb.x:                                             ; preds = %ftp_has_feature.exit.i
  %i.bm = load ptr, ptr %i.g, align 8, !tbaa !20  ; 2 uses
  %.not16.i11.i = icmp eq ptr %i.bm, null
  br i1 %.not16.i11.i, label %ftp_features.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bn = call i32 @ffurl_write2(ptr noundef nonnull %i.bm, ptr noundef nonnull @.str.19, i32 noundef 14) #9 ; 3 uses
  %i.bo = icmp slt i32 %i.bn, 0
  br i1 %i.bo, label %ftp_send_command.exit14.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %.not17.i12.i = icmp eq i32 %i.bn, 0
  br i1 %.not17.i12.i, label %ftp_features.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bp = call fastcc i32 @ftp_status(ptr noundef nonnull %i.f, ptr noundef null, ptr noundef nonnull @ftp_features.opts_codes)
  br label %ftp_send_command.exit14.i

ftp_send_command.exit14.i:                        ; preds = %bb.aa, %bb.y
  %.0.i13.i = phi i32 [ %i.bn, %bb.y ], [ %i.bp, %bb.aa ]
  %i.bq = and i32 %.0.i13.i, -3
  %or.cond.i45 = icmp eq i32 %i.bq, 200
  br i1 %or.cond.i45, label %bb.ab, label %ftp_features.exit

bb.ab:                                            ; preds = %ftp_send_command.exit14.i
  %i.br = getelementptr inbounds nuw i8, ptr %i.f, i64 1184
  store i32 1, ptr %i.br, align 8, !tbaa !32
  br label %ftp_features.exit

ftp_features.exit:                                ; preds = %bb.ab, %ftp_send_command.exit14.i, %bb.z, %bb.x, %ftp_has_feature.exit.i, %bb.w, %bb.a, %bb.u, %.loopexit, %bb.g, %bb.e
  %.0 = phi i32 [ -5, %bb.u ], [ %i.w, %bb.e ], [ -13, %bb.g ], [ %.011.i.ph, %.loopexit ], [ 0, %bb.a ], [ 0, %bb.w ], [ 0, %ftp_has_feature.exit.i ], [ 0, %bb.x ], [ 0, %bb.z ], [ 0, %ftp_send_command.exit14.i ], [ 0, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  ret i32 %.0
}

declare ptr @av_append_path_component(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @av_free(ptr noundef) local_unnamed_addr #2

declare i32 @ff_url_join(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare i32 @av_dict_set_int(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ffurl_open_whitelist(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @av_dict_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -2147483648, 28306) i32 @ftp_status(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [1024 x i8], align 16             ; 12 uses
  %3 = alloca %struct.AVBPrint, align 8           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  %.not = icmp eq ptr %1, null                    ; 4 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @av_bprint_init(ptr noundef nonnull %3, i32 noundef 0, i32 noundef 1) #9
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1048 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1056 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.f = ptrtoint ptr %i.a to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.loopexit
  %.not5579 = phi i1 [ true, %bb.c ], [ %.not55, %.loopexit ]
  %.04278 = phi i32 [ 0, %bb.c ], [ %.14365, %.loopexit ] ; 3 uses
  %.04477 = phi i32 [ 0, %bb.c ], [ %.145, %.loopexit ] ; 6 uses
  br label %.outer

.outer:                                           ; preds = %bb.l, %bb.d
  %.0.i.ph = phi ptr [ %i.z, %bb.l ], [ %i.a, %bb.d ] ; 7 uses
  %i.j = ptrtoint ptr %.0.i.ph to i64
  %i.k = sub i64 %i.j, %i.f
  %i.l = icmp slt i64 %i.k, 1023
  br label %bb.e

bb.e:                                             ; preds = %.outer, %bb.k
  %4 = load ptr, ptr %i.b, align 8, !tbaa !67     ; 2 uses
  %5 = load ptr, ptr %i.c, align 8, !tbaa !68
  %.not.i.i = icmp ult ptr %4, %5
  br i1 %.not.i.i, label %ftp_getc.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !20
  %i.n = call i32 @ffurl_read2(ptr noundef %i.m, ptr noundef nonnull %i.e, i32 noundef 1024) #9 ; 4 uses
  %i.o = icmp slt i32 %i.n, 0
  br i1 %i.o, label %bb.m, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not14.i.i = icmp eq i32 %i.n, 0
  br i1 %.not14.i.i, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = zext nneg i32 %i.n to i64
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.p
  store ptr %i.q, ptr %i.c, align 8, !tbaa !68
  br label %ftp_getc.exit.i

ftp_getc.exit.i:                                  ; preds = %bb.h, %bb.e
  %i.r = phi ptr [ %i.e, %bb.h ], [ %4, %bb.e ]   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  store ptr %i.s, ptr %i.b, align 8, !tbaa !67
  %i.t = load i8, ptr %i.r, align 1, !tbaa !31    ; 2 uses
  %i.u = icmp eq i8 %i.t, 10
  br i1 %i.u, label %bb.i, label %bb.k

bb.i:                                             ; preds = %ftp_getc.exit.i
  %i.v = icmp ugt ptr %.0.i.ph, %i.a
  br i1 %i.v, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.w = getelementptr inbounds i8, ptr %.0.i.ph, i64 -1 ; 2 uses
  %i.x = load i8, ptr %i.w, align 1, !tbaa !31
  %i.y = icmp eq i8 %i.x, 13
  %spec.select.i = select i1 %i.y, ptr %i.w, ptr %.0.i.ph
  br label %bb.n

bb.k:                                             ; preds = %ftp_getc.exit.i
  br i1 %i.l, label %bb.l, label %bb.e

bb.l:                                             ; preds = %bb.k
  %i.z = getelementptr inbounds nuw i8, ptr %.0.i.ph, i64 1
  store i8 %i.t, ptr %.0.i.ph, align 1, !tbaa !31
  br label %.outer

bb.m:                                             ; preds = %bb.g, %bb.f
  %.015.i.ph = phi i32 [ %i.n, %bb.f ], [ -1, %bb.g ] ; 2 uses
  br i1 %.not, label %bb.w, label %.sink.split

bb.n:                                             ; preds = %bb.j, %bb.i
  %.1.i = phi ptr [ %.0.i.ph, %bb.i ], [ %spec.select.i, %bb.j ]
  store i8 0, ptr %.1.i, align 1, !tbaa !31
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 48, ptr noundef nonnull @.str.13, ptr noundef nonnull %i.a) #9
  %i.aa = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #10
  %i.ab = trunc i64 %i.aa to i32                  ; 2 uses
  %i.ac = icmp sgt i32 %i.ab, 2
  br i1 %i.ac, label %.preheader69.preheader, label %.loopexit70

.preheader69.preheader:                           ; preds = %bb.n
  %i.ad = load i8, ptr %i.a, align 16, !tbaa !31  ; 2 uses
  %i.ae = add i8 %i.ad, -58
  %or.cond58 = icmp ult i8 %i.ae, -10
  br i1 %or.cond58, label %.loopexit70, label %.preheader69.1

.preheader69.1:                                   ; preds = %.preheader69.preheader
  %i.af = load i8, ptr %i.h, align 1, !tbaa !31   ; 2 uses
  %i.ag = add i8 %i.af, -58
  %or.cond58.1 = icmp ult i8 %i.ag, -10
  br i1 %or.cond58.1, label %.loopexit70, label %.preheader69.2

.preheader69.2:                                   ; preds = %.preheader69.1
  %i.ah = load i8, ptr %i.i, align 2, !tbaa !31   ; 2 uses
  %i.ai = add i8 %i.ah, -58
  %or.cond58.2 = icmp ult i8 %i.ai, -10
  br i1 %or.cond58.2, label %.loopexit70, label %bb.o

bb.o:                                             ; preds = %.preheader69.2
  %i.aj = mul i8 %i.ad, 10
  %narrow88 = add nsw i8 %i.aj, 32
  %i.ak = zext nneg i8 %narrow88 to i32
  %narrow.1 = add nsw i8 %i.af, -48
  %i.al = zext nneg i8 %narrow.1 to i32
  %i.am = add nuw nsw i32 %i.ak, %i.al
  %i.an = mul nuw nsw i32 %i.am, 10
  %narrow.2 = add nsw i8 %i.ah, -48
  %i.ao = zext nneg i8 %narrow.2 to i32
  %i.ap = add nuw nsw i32 %i.an, %i.ao
  br label %.loopexit70

.loopexit70:                                      ; preds = %.preheader69.preheader, %.preheader69.1, %.preheader69.2, %bb.o, %bb.n
  %.149 = phi i32 [ 0, %bb.n ], [ %i.ap, %bb.o ], [ 0, %.preheader69.preheader ], [ 0, %.preheader69.1 ], [ 0, %.preheader69.2 ] ; 6 uses
  br i1 %.not5579, label %bb.p, label %.loopexit68

bb.p:                                             ; preds = %.loopexit70
  %i.aq = icmp samesign ugt i32 %.149, 499
  br i1 %i.aq, label %.loopexit68, label %.preheader

.preheader:                                       ; preds = %bb.p
  %i.ar = load i32, ptr %2, align 4, !tbaa !69    ; 2 uses
  %.not5675 = icmp eq i32 %i.ar, 0
  br i1 %.not5675, label %.loopexit, label %.lr.ph

bb.q:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next
  %i.at = load i32, ptr %i.as, align 4, !tbaa !69 ; 2 uses
  %.not56 = icmp eq i32 %i.at, 0
  br i1 %.not56, label %.loopexit, label %.lr.ph, !llvm.loop !65

.lr.ph:                                           ; preds = %.preheader, %bb.q
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.q ], [ 0, %.preheader ]
  %i.au = phi i32 [ %i.at, %bb.q ], [ %i.ar, %.preheader ]
  %i.av = icmp eq i32 %.149, %i.au
  br i1 %i.av, label %.loopexit68, label %bb.q

.loopexit68:                                      ; preds = %.lr.ph, %.loopexit70, %bb.p
  %.143.ph = phi i32 [ %.04278, %.loopexit70 ], [ %.149, %bb.p ], [ %.149, %.lr.ph ] ; 3 uses
  br i1 %.not, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.loopexit68
  call void (ptr, ptr, ...) @av_bprintf(ptr noundef nonnull %3, ptr noundef nonnull @.str.14, ptr noundef nonnull %i.a) #9
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.loopexit68
  %i.aw = icmp sgt i32 %i.ab, 3
  br i1 %i.aw, label %bb.t, label %.loopexit

bb.t:                                             ; preds = %bb.s
  %i.ax = icmp eq i32 %.04477, 0
  %i.ay = load i8, ptr %i.g, align 1              ; 2 uses
  %i.az = icmp eq i8 %i.ay, 45
  %or.cond = select i1 %i.ax, i1 %i.az, i1 false
  br i1 %or.cond, label %.loopexit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ba = icmp eq i32 %.149, %.04477
  %i.bb = icmp eq i8 %i.ay, 32
  %or.cond7 = select i1 %i.ba, i1 %i.bb, i1 false
  %spec.store.select = select i1 %or.cond7, i32 0, i32 %.04477
  br label %.loopexit

.loopexit:                                        ; preds = %bb.q, %.preheader, %bb.t, %bb.u, %bb.s
  %.not55 = phi i1 [ false, %bb.t ], [ false, %bb.u ], [ false, %bb.s ], [ true, %.preheader ], [ true, %bb.q ] ; 2 uses
  %.14365 = phi i32 [ %.143.ph, %bb.t ], [ %.143.ph, %bb.u ], [ %.143.ph, %bb.s ], [ %.04278, %.preheader ], [ %.04278, %bb.q ] ; 3 uses
  %.145 = phi i32 [ %.149, %bb.t ], [ %spec.store.select, %bb.u ], [ %.04477, %bb.s ], [ %.04477, %.preheader ], [ %.04477, %bb.q ] ; 2 uses
  %i.bc = icmp ne i32 %.145, 0
  %i.bd = select i1 %.not55, i1 true, i1 %i.bc
  br i1 %i.bd, label %bb.d, label %bb.v, !llvm.loop !66

bb.v:                                             ; preds = %.loopexit
  br i1 %.not, label %bb.w, label %.sink.split

.sink.split:                                      ; preds = %bb.v, %bb.m
  %.sink = phi ptr [ null, %bb.m ], [ %1, %bb.v ]
  %.050.ph = phi i32 [ %.015.i.ph, %bb.m ], [ %.14365, %bb.v ]
  %i.be = call i32 @av_bprint_finalize(ptr noundef nonnull %3, ptr noundef %.sink) #9 ; 0 uses
  br label %bb.w

bb.w:                                             ; preds = %.sink.split, %bb.v, %bb.m
  %.050 = phi i32 [ %.015.i.ph, %bb.m ], [ %.14365, %bb.v ], [ %.050.ph, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 %.050
}

declare ptr @av_stristr(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @av_bprint_init(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @av_bprint_finalize(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #3

declare void @av_bprintf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare i32 @ffurl_read2(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -2147483648, 28306) i32 @ftp_send_command(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %3, align 8, !tbaa !23
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20   ; 2 uses
  %.not16 = icmp eq ptr %i.b, null
  br i1 %.not16, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #10
  %i.d = trunc i64 %i.c to i32
  %i.e = tail call i32 @ffurl_write2(ptr noundef nonnull %i.b, ptr noundef nonnull %1, i32 noundef %i.d) #9 ; 3 uses
  %i.f = icmp slt i32 %i.e, 0
  br i1 %i.f, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not17 = icmp eq i32 %i.e, 0
  br i1 %.not17, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not18 = icmp eq ptr %2, null
  br i1 %.not18, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.g = tail call fastcc i32 @ftp_status(ptr noundef nonnull %0, ptr noundef %3, ptr noundef nonnull %2)
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.g
  %.0 = phi i32 [ -5, %bb.c ], [ %i.g, %bb.g ], [ -1, %bb.e ], [ %i.e, %bb.d ], [ 0, %bb.f ]
  ret i32 %.0
}

end_hunk_0
