Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/curl/original/ftp?download=true
inline.NumInlined: 120
inline.NumDeleted: 35
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@ftp_state_ul_setup:bb.a

.critedge90.thread:                               ; preds = %bb.l, %.critedge, %ftp_state_low.exit, %bb.c, %ftp_state_low.exit97, %.critedge90.thread110, %ftp_state_low.exit104
  %.5 = phi i32 [ %i.ca, %.critedge90.thread110 ], [ 0, %ftp_state_low.exit104 ], [ 31, %bb.l ], [ 31, %.critedge ], [ 0, %ftp_state_low.exit ], [ %i.j, %bb.c ], [ 0, %ftp_state_low.exit97 ]
  ret i32 %.5
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @ftp_state_list(ptr noundef %0, ptr noundef nonnull %1, ptr nofree noundef nonnull readonly captures(none) %2) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1264
  %i.b = load i8, ptr %i.a, align 8, !tbaa !102
  %i.c = icmp eq i8 %i.b, 2
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %2, align 8, !tbaa !86
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !111  ; 4 uses
  %i.g = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %i.f, i32 noundef 47) #9 ; 3 uses
  %.not36 = icmp eq ptr %i.g, null                ; 2 uses
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.f to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = icmp eq ptr %i.g, %i.f
  %i.l = trunc i64 %i.j to i32
  %i.m = select i1 %i.k, i32 1, i32 %i.l
  %.028 = select i1 %.not36, ptr null, ptr %i.f
  %.027 = select i1 %.not36, i32 0, i32 %i.m
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.129 = phi ptr [ %.028, %bb.c ], [ null, %bb.b ], [ null, %bb.a ] ; 2 uses
  %.1 = phi i32 [ %.027, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1528
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !27   ; 2 uses
  %.not37 = icmp eq ptr %i.o, null
  br i1 %.not37, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 4628
  %i.q = load i32, ptr %i.p, align 4
  %i.r = and i32 %i.q, 8192
  %.not38 = icmp eq i32 %i.r, 0
  %i.s = select i1 %.not38, ptr @.str.38, ptr @.str.67
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.t = phi ptr [ %i.s, %bb.e ], [ %i.o, %bb.d ]
  %.not39 = icmp eq ptr %.129, null               ; 2 uses
  %i.u = select i1 %.not39, ptr @.str.49, ptr @.str.98
  %i.v = select i1 %.not39, ptr @.str.49, ptr %.129
  %i.w = tail call ptr (ptr, ...) @curl_maprintf(ptr noundef nonnull @.str.97, ptr noundef nonnull %i.t, ptr noundef nonnull %i.u, i32 noundef %.1, ptr noundef nonnull %i.v) #10 ; 3 uses
  %.not40 = icmp eq ptr %i.w, null
  br i1 %.not40, label %bb.n, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = tail call i32 (ptr, ptr, ptr, ...) @Curl_pp_sendf(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.55, ptr noundef nonnull %i.w) #10 ; 2 uses
  %i.y = load ptr, ptr @Curl_cfree, align 8, !tbaa !26
  tail call void %i.y(ptr noundef nonnull %i.w) #10
  %.not41 = icmp eq i32 %i.x, 0
  br i1 %.not41, label %bb.h, label %bb.n

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 248 ; 2 uses
  %i.aa = load i8, ptr %i.z, align 8, !tbaa !94   ; 2 uses
  %.not42 = icmp eq i8 %i.aa, 33
  br i1 %.not42, label %ftp_state_low.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 2187
  %i.ac = load i64, ptr %i.ab, align 1
  %i.ad = and i64 %i.ac, 536870912
  %.not.i = icmp eq i64 %i.ad, 0
  br i1 %.not.i, label %ftp_state_low.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 4504
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !91 ; 2 uses
  %.not16.i = icmp eq ptr %i.af, null
  br i1 %.not16.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !93
  %i.ai = icmp sgt i32 %i.ah, 0
  %i.aj = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_ftp, i64 8), align 8
  %i.ak = icmp sgt i32 %i.aj, 0
  %or.cond.i = select i1 %i.ai, i1 %i.ak, i1 false
  br i1 %or.cond.i, label %bb.m, label %ftp_state_low.exit

bb.l:                                             ; preds = %bb.j
  %.old.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_ftp, i64 8), align 8, !tbaa !93
  %.old1.i = icmp sgt i32 %.old.i, 0
  br i1 %.old1.i, label %bb.m, label %ftp_state_low.exit

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.al = zext i8 %i.aa to i64
  %i.am = getelementptr inbounds nuw [8 x i8], ptr @ftp_state_names, i64 %i.al
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !27
  tail call void (ptr, ptr, ...) @Curl_trc_ftp(ptr noundef nonnull %0, ptr noundef nonnull @.str.58, ptr noundef %i.an, ptr noundef nonnull @.str.38) #10
  br label %ftp_state_low.exit

ftp_state_low.exit:                               ; preds = %bb.h, %bb.i, %bb.k, %bb.l, %bb.m
  store i8 33, ptr %i.z, align 8, !tbaa !94
  br label %bb.n

bb.n:                                             ; preds = %bb.g, %ftp_state_low.exit, %bb.f
  %.030 = phi i32 [ 27, %bb.f ], [ 0, %ftp_state_low.exit ], [ %i.x, %bb.g ]
  ret i32 %.030
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @ftp_state_mdtm(ptr noundef %0, ptr noundef nonnull %1, ptr nofree noundef nonnull captures(none) %2) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2187 ; 3 uses
  %i.b = load i64, ptr %i.a, align 1
  %i.c = and i64 %i.b, 1024
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2181
  %i.e = load i8, ptr %i.d, align 1, !tbaa !132
  %.not14 = icmp eq i8 %i.e, 0
  br i1 %.not14, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !112  ; 2 uses
  %.not15 = icmp eq ptr %i.g, null
  br i1 %.not15, label %bb.k, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = tail call i32 (ptr, ptr, ptr, ...) @Curl_pp_sendf(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.61, ptr noundef nonnull %i.g) #10 ; 2 uses
  %.not16 = icmp eq i32 %i.h, 0
  br i1 %.not16, label %bb.e, label %ftp_state_type.exit

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 248 ; 2 uses
  %i.j = load i8, ptr %i.i, align 8, !tbaa !94    ; 2 uses
  %.not18 = icmp eq i8 %i.j, 19
  br i1 %.not18, label %ftp_state_low.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = load i64, ptr %i.a, align 1
  %i.l = and i64 %i.k, 536870912
  %.not.i = icmp eq i64 %i.l, 0
  br i1 %.not.i, label %ftp_state_low.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 4504
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !91   ; 2 uses
  %.not16.i = icmp eq ptr %i.n, null
  br i1 %.not16.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load i32, ptr %i.o, align 8, !tbaa !93
  %i.q = icmp sgt i32 %i.p, 0
  %i.r = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_ftp, i64 8), align 8
  %i.s = icmp sgt i32 %i.r, 0
  %or.cond.i = select i1 %i.q, i1 %i.s, i1 false
  br i1 %or.cond.i, label %bb.j, label %ftp_state_low.exit

bb.i:                                             ; preds = %bb.g
  %.old.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_ftp, i64 8), align 8, !tbaa !93
  %.old1.i = icmp sgt i32 %.old.i, 0
  br i1 %.old1.i, label %bb.j, label %ftp_state_low.exit

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.t = zext i8 %i.j to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr @ftp_state_names, i64 %i.t
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !27
  tail call void (ptr, ptr, ...) @Curl_trc_ftp(ptr noundef nonnull %0, ptr noundef nonnull @.str.58, ptr noundef %i.v, ptr noundef nonnull @.str.24) #10
  br label %ftp_state_low.exit

ftp_state_low.exit:                               ; preds = %bb.e, %bb.f, %bb.h, %bb.i, %bb.j
  store i8 19, ptr %i.i, align 8, !tbaa !94
  br label %ftp_state_type.exit

bb.k:                                             ; preds = %bb.c, %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 417
  %i.x = load i32, ptr %i.w, align 1
  %i.y = and i32 %i.x, 65536
  %.not.i17 = icmp eq i32 %i.y, 0
  br i1 %.not.i17, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !112
  %.not17.i = icmp eq ptr %i.aa, null
  br i1 %.not17.i, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 4628 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4
  %3 = and i32 %i.ac, 4096
  %.not19 = icmp eq i32 %3, 0
  %4 = getelementptr i8, ptr %1, i64 208
  %.val.i = load i8, ptr %4, align 8, !tbaa !127
  %5 = sext i8 %.val.i to i32
  %6 = select i1 %.not19, i32 73, i32 65
  %.not20 = icmp eq i32 %6, %5
  br i1 %.not20, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 1, ptr %i.ad, align 8, !tbaa !87
  %i.ae = load i32, ptr %i.ab, align 4
  %i.af = and i32 %i.ae, 4096
  %i.ag = icmp ne i32 %i.af, 0
  %i.ah = tail call fastcc i32 @ftp_nb_type(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i1 noundef zeroext %i.ag, i8 noundef zeroext 20), !inline_history !1
  br label %ftp_state_type.exit

bb.o:                                             ; preds = %bb.m, %bb.l, %bb.k
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !87
  %i.ak = icmp eq i32 %i.aj, 1
  br i1 %i.ak, label %bb.p, label %bb.x

bb.p:                                             ; preds = %bb.o
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !112 ; 2 uses
  %.not.i25 = icmp eq ptr %i.am, null
  br i1 %.not.i25, label %bb.x, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.an = tail call i32 (ptr, ptr, ptr, ...) @Curl_pp_sendf(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.57, ptr noundef nonnull %i.am) #10, !inline_history !2 ; 2 uses
  %.not13.i = icmp eq i32 %i.an, 0
  br i1 %.not13.i, label %bb.r, label %ftp_state_type.exit

bb.r:                                             ; preds = %bb.q
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 248 ; 2 uses
  %i.ap = load i8, ptr %i.ao, align 8, !tbaa !94  ; 2 uses
  %.not26 = icmp eq i8 %i.ap, 25
  br i1 %.not26, label %ftp_state_low.exit.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aq = load i64, ptr %i.a, align 1
  %i.ar = and i64 %i.aq, 536870912
  %.not.i.i = icmp eq i64 %i.ar, 0
  br i1 %.not.i.i, label %ftp_state_low.exit.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 4504
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !91 ; 2 uses
  %.not16.i.i = icmp eq ptr %i.at, null
  br i1 %.not16.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load i32, ptr %i.au, align 8, !tbaa !93
  %i.aw = icmp sgt i32 %i.av, 0
  %i.ax = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_ftp, i64 8), align 8
  %i.ay = icmp sgt i32 %i.ax, 0
  %or.cond.i.i = select i1 %i.aw, i1 %i.ay, i1 false
  br i1 %or.cond.i.i, label %bb.w, label %ftp_state_low.exit.i

bb.v:                                             ; preds = %bb.t
  %.old.i.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_ftp, i64 8), align 8, !tbaa !93
  %.old1.i.i = icmp sgt i32 %.old.i.i, 0
  br i1 %.old1.i.i, label %bb.w, label %ftp_state_low.exit.i

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.az = zext i8 %i.ap to i64
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr @ftp_state_names, i64 %i.az
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !27
  tail call void (ptr, ptr, ...) @Curl_trc_ftp(ptr noundef nonnull %0, ptr noundef nonnull @.str.58, ptr noundef %i.bb, ptr noundef nonnull @.str.30) #10, !inline_history !2
  br label %ftp_state_low.exit.i

ftp_state_low.exit.i:                             ; preds = %bb.w, %bb.v, %bb.u, %bb.s, %bb.r
  store i8 25, ptr %i.ao, align 8, !tbaa !94
  br label %ftp_state_type.exit

bb.x:                                             ; preds = %bb.p, %bb.o
  %i.bc = tail call fastcc i32 @ftp_state_rest(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2), !inline_history !2
  br label %ftp_state_type.exit

ftp_state_type.exit:                              ; preds = %bb.x, %ftp_state_low.exit.i, %bb.q, %bb.n, %bb.d, %ftp_state_low.exit
  %.0 = phi i32 [ %i.h, %bb.d ], [ 0, %ftp_state_low.exit ], [ %i.ah, %bb.n ], [ %i.an, %bb.q ], [ 0, %ftp_state_low.exit.i ], [ %i.bc, %bb.x ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @ftp_nb_type(ptr noundef %0, ptr noundef nonnull %1, ptr nofree noundef nonnull captures(none) %2, i1 noundef zeroext %3, i8 noundef zeroext range(i8 20, 25) %4) unnamed_addr #3 {
bb.a:
  %i.a = select i1 %3, i8 65, i8 73               ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !127
  %i.d = icmp eq i8 %i.c, %i.a
  br i1 %i.d, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 248 ; 2 uses
  %i.f = load i8, ptr %i.e, align 8, !tbaa !94    ; 2 uses
  %i.g = icmp ne i8 %i.f, %4
  %i.h = icmp ne ptr %0, null
  %or.cond4.i = and i1 %i.h, %i.g
  br i1 %or.cond4.i, label %bb.c, label %ftp_state_low.exit

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 2187
  %i.j = load i64, ptr %i.i, align 1
  %i.k = and i64 %i.j, 536870912
  %.not.i = icmp eq i64 %i.k, 0
  br i1 %.not.i, label %ftp_state_low.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4504
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !91   ; 2 uses
  %.not16.i = icmp eq ptr %i.m, null
  br i1 %.not16.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load i32, ptr %i.n, align 8, !tbaa !93
  %i.p = icmp sgt i32 %i.o, 0
  %i.q = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_ftp, i64 8), align 8
  %i.r = icmp sgt i32 %i.q, 0
  %or.cond.i = select i1 %i.p, i1 %i.r, i1 false
  br i1 %or.cond.i, label %bb.g, label %ftp_state_low.exit

bb.f:                                             ; preds = %bb.d
  %.old.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_ftp, i64 8), align 8, !tbaa !93
  %.old1.i = icmp sgt i32 %.old.i, 0
  br i1 %.old1.i, label %bb.g, label %ftp_state_low.exit

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.s = zext i8 %i.f to i64
  %i.t = getelementptr inbounds nuw [8 x i8], ptr @ftp_state_names, i64 %i.s
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !27
  %i.v = zext nneg i8 %4 to i64
  %i.w = getelementptr inbounds nuw [8 x i8], ptr @ftp_state_names, i64 %i.v
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !27
  tail call void (ptr, ptr, ...) @Curl_trc_ftp(ptr noundef nonnull %0, ptr noundef nonnull @.str.58, ptr noundef %i.u, ptr noundef %i.x) #10
  br label %ftp_state_low.exit

ftp_state_low.exit:                               ; preds = %bb.b, %bb.c, %bb.e, %bb.f, %bb.g
  store i8 %4, ptr %i.e, align 8, !tbaa !94
  switch i8 %4, label %default.unreachable38 [
    i8 20, label %bb.h
    i8 21, label %bb.i
    i8 23, label %bb.j
    i8 24, label %bb.k
    i8 22, label %bb.l
  ]

bb.h:                                             ; preds = %ftp_state_low.exit
  %i.y = tail call fastcc i32 @ftp_state_size(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2), !inline_history !205
  br label %ftp_state_type_resp.exit

bb.i:                                             ; preds = %ftp_state_low.exit
  %i.z = tail call fastcc i32 @ftp_state_list(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2), !inline_history !205
  br label %ftp_state_type_resp.exit

bb.j:                                             ; preds = %ftp_state_low.exit
  %i.aa = tail call fastcc i32 @ftp_state_quote(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i1 noundef zeroext true, i8 noundef zeroext 13), !inline_history !203
  br label %ftp_state_type_resp.exit

bb.k:                                             ; preds = %ftp_state_low.exit
  %i.ab = tail call fastcc i32 @ftp_state_quote(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i1 noundef zeroext true, i8 noundef zeroext 14), !inline_history !204
  br label %ftp_state_type_resp.exit

bb.l:                                             ; preds = %ftp_state_low.exit
  %i.ac = tail call fastcc i32 @ftp_state_list_prequote(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2), !inline_history !205
  br label %ftp_state_type_resp.exit

bb.m:                                             ; preds = %bb.a
  %i.ad = zext nneg i8 %i.a to i32
  %i.ae = tail call i32 (ptr, ptr, ptr, ...) @Curl_pp_sendf(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.62, i32 noundef %i.ad) #10 ; 2 uses
  %.not = icmp eq i32 %i.ae, 0
  br i1 %.not, label %bb.n, label %ftp_state_type_resp.exit

bb.n:                                             ; preds = %bb.m
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 248 ; 2 uses
  %i.ag = load i8, ptr %i.af, align 8, !tbaa !94  ; 2 uses
  %i.ah = icmp ne i8 %i.ag, %4
  %i.ai = icmp ne ptr %0, null
  %or.cond4.i22 = and i1 %i.ai, %i.ah
  br i1 %or.cond4.i22, label %bb.o, label %ftp_state_low.exit28

bb.o:                                             ; preds = %bb.n
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 2187
  %i.ak = load i64, ptr %i.aj, align 1
  %i.al = and i64 %i.ak, 536870912
  %.not.i23 = icmp eq i64 %i.al, 0
  br i1 %.not.i23, label %ftp_state_low.exit28, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 4504
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !91 ; 2 uses
  %.not16.i24 = icmp eq ptr %i.an, null
  br i1 %.not16.i24, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !93
  %i.aq = icmp sgt i32 %i.ap, 0
  %i.ar = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_ftp, i64 8), align 8
  %i.as = icmp sgt i32 %i.ar, 0
  %or.cond.i25 = select i1 %i.aq, i1 %i.as, i1 false
  br i1 %or.cond.i25, label %bb.s, label %ftp_state_low.exit28

end_hunk_0
begin_hunk_1_@ftp_state_mdtm_resp:bb.a
bb.v:                                             ; preds = %bb.u
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 792
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !255 ; 2 uses
  %i.cc = icmp sgt i64 %i.cb, 0
  br i1 %i.cc, label %bb.w, label %bb.at

bb.w:                                             ; preds = %bb.v
  %cond3 = icmp eq i8 %i.bw, 2
  %i.cd = icmp samesign ugt i64 %i.by, %i.cb      ; 2 uses
  br i1 %cond3, label %bb.ai, label %bb.x

bb.x:                                             ; preds = %bb.w
  br i1 %i.cd, label %bb.ax, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 2187 ; 2 uses
  %i.cf = load i64, ptr %i.ce, align 1
  %i.cg = and i64 %i.cf, 536870912
  %.not118 = icmp eq i64 %i.cg, 0
  br i1 %.not118, label %bb.ac, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 4504
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !91 ; 2 uses
  %.not119 = icmp eq ptr %i.ci, null
  br i1 %.not119, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !93
  %i.cl = icmp sgt i32 %i.ck, 0
  br i1 %i.cl, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa, %bb.z
  call void (ptr, ptr, ...) @Curl_infof(ptr noundef nonnull %0, ptr noundef nonnull @.str.154) #10
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.y
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 2, ptr %i.cm, align 8, !tbaa !87
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 4860 ; 2 uses
  %i.co = load i8, ptr %i.cn, align 4
  %i.cp = or i8 %i.co, 1
  store i8 %i.cp, ptr %i.cn, align 4
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 248 ; 2 uses
  %i.cr = load i8, ptr %i.cq, align 8, !tbaa !94  ; 2 uses
  %.not141 = icmp eq i8 %i.cr, 0
  br i1 %.not141, label %ftp_state_low.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cs = load i64, ptr %i.ce, align 1
  %i.ct = and i64 %i.cs, 536870912
  %.not.i = icmp eq i64 %i.ct, 0
  br i1 %.not.i, label %ftp_state_low.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 4504
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !91 ; 2 uses
  %.not16.i = icmp eq ptr %i.cv, null
  br i1 %.not16.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.cx = load i32, ptr %i.cw, align 8, !tbaa !93
  %i.cy = icmp sgt i32 %i.cx, 0
  %i.cz = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_ftp, i64 8), align 8
  %i.da = icmp sgt i32 %i.cz, 0
  %or.cond.i = select i1 %i.cy, i1 %i.da, i1 false
  br i1 %or.cond.i, label %bb.ah, label %ftp_state_low.exit

bb.ag:                                            ; preds = %bb.ae
  %.old.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_ftp, i64 8), align 8, !tbaa !93
  %.old1.i = icmp sgt i32 %.old.i, 0
  br i1 %.old1.i, label %bb.ah, label %ftp_state_low.exit

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.db = zext i8 %i.cr to i64
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr @ftp_state_names, i64 %i.db
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !27
  call void (ptr, ptr, ...) @Curl_trc_ftp(ptr noundef nonnull %0, ptr noundef nonnull @.str.58, ptr noundef %i.dd, ptr noundef nonnull @.str.5) #10
  br label %ftp_state_low.exit

ftp_state_low.exit:                               ; preds = %bb.ac, %bb.ad, %bb.af, %bb.ag, %bb.ah
  store i8 0, ptr %i.cq, align 8, !tbaa !94
  br label %ftp_state_type.exit

bb.ai:                                            ; preds = %bb.w
  br i1 %i.cd, label %bb.aj, label %bb.ax

bb.aj:                                            ; preds = %bb.ai
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 2187 ; 2 uses
  %i.df = load i64, ptr %i.de, align 1
  %i.dg = and i64 %i.df, 536870912
  %.not122 = icmp eq i64 %i.dg, 0
  br i1 %.not122, label %bb.an, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 4504
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !91 ; 2 uses
  %.not123 = icmp eq ptr %i.di, null
  br i1 %.not123, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.dk = load i32, ptr %i.dj, align 8, !tbaa !93
  %i.dl = icmp sgt i32 %i.dk, 0
  br i1 %i.dl, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al, %bb.ak
  call void (ptr, ptr, ...) @Curl_infof(ptr noundef nonnull %0, ptr noundef nonnull @.str.155) #10
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al, %bb.aj
  %i.dm = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 2, ptr %i.dm, align 8, !tbaa !87
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 4860 ; 2 uses
  %i.do = load i8, ptr %i.dn, align 4
  %i.dp = or i8 %i.do, 1
  store i8 %i.dp, ptr %i.dn, align 4
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 248 ; 2 uses
  %i.dr = load i8, ptr %i.dq, align 8, !tbaa !94  ; 2 uses
  %.not142 = icmp eq i8 %i.dr, 0
  br i1 %.not142, label %ftp_state_low.exit130, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ds = load i64, ptr %i.de, align 1
  %i.dt = and i64 %i.ds, 536870912
  %.not.i125 = icmp eq i64 %i.dt, 0
  br i1 %.not.i125, label %ftp_state_low.exit130, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 4504
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !91 ; 2 uses
  %.not16.i126 = icmp eq ptr %i.dv, null
  br i1 %.not16.i126, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %i.dx = load i32, ptr %i.dw, align 8, !tbaa !93
  %i.dy = icmp sgt i32 %i.dx, 0
  %i.dz = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_ftp, i64 8), align 8
  %i.ea = icmp sgt i32 %i.dz, 0
  %or.cond.i127 = select i1 %i.dy, i1 %i.ea, i1 false
  br i1 %or.cond.i127, label %bb.as, label %ftp_state_low.exit130

bb.ar:                                            ; preds = %bb.ap
  %.old.i128 = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_ftp, i64 8), align 8, !tbaa !93
  %.old1.i129 = icmp sgt i32 %.old.i128, 0
  br i1 %.old1.i129, label %bb.as, label %ftp_state_low.exit130

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.eb = zext i8 %i.dr to i64
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr @ftp_state_names, i64 %i.eb
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !27
  call void (ptr, ptr, ...) @Curl_trc_ftp(ptr noundef nonnull %0, ptr noundef nonnull @.str.58, ptr noundef %i.ed, ptr noundef nonnull @.str.5) #10
  br label %ftp_state_low.exit130

ftp_state_low.exit130:                            ; preds = %bb.an, %bb.ao, %bb.aq, %bb.ar, %bb.as
  store i8 0, ptr %i.dq, align 8, !tbaa !94
  br label %ftp_state_type.exit

bb.at:                                            ; preds = %bb.v, %bb.u
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 2187
  %i.ef = load i64, ptr %i.ee, align 1
  %i.eg = and i64 %i.ef, 536870912
  %.not114 = icmp eq i64 %i.eg, 0
  br i1 %.not114, label %bb.ax, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 4504
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !91 ; 2 uses
  %.not115 = icmp eq ptr %i.ei, null
  br i1 %.not115, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %i.ek = load i32, ptr %i.ej, align 8, !tbaa !93
  %i.el = icmp sgt i32 %i.ek, 0
  br i1 %i.el, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av, %bb.au
  call void (ptr, ptr, ...) @Curl_infof(ptr noundef nonnull %0, ptr noundef nonnull @.str.156) #10
  br label %bb.ax

bb.ax:                                            ; preds = %bb.t, %bb.at, %bb.av, %bb.aw, %bb.x, %bb.ai
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 417
  %i.en = load i32, ptr %i.em, align 1
  %i.eo = and i32 %i.en, 65536
  %.not.i131 = icmp eq i32 %i.eo, 0
  br i1 %.not.i131, label %bb.bb, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !112
  %.not17.i = icmp eq ptr %i.eq, null
  br i1 %.not17.i, label %bb.bb, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 4628 ; 2 uses
  %i.es = load i32, ptr %i.er, align 4
  %5 = and i32 %i.es, 4096
  %.not20.i = icmp eq i32 %5, 0
  %6 = getelementptr i8, ptr %1, i64 208
  %.val.i = load i8, ptr %6, align 8, !tbaa !127
  %7 = sext i8 %.val.i to i32
  %8 = select i1 %.not20.i, i32 73, i32 65
  %.not21.i = icmp eq i32 %8, %7
  br i1 %.not21.i, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.et = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 1, ptr %i.et, align 8, !tbaa !87
  %i.eu = load i32, ptr %i.er, align 4
  %i.ev = and i32 %i.eu, 4096
  %i.ew = icmp ne i32 %i.ev, 0
  %i.ex = call fastcc i32 @ftp_nb_type(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i1 noundef zeroext %i.ew, i8 noundef zeroext 20), !inline_history !1
  br label %ftp_state_type.exit

bb.bb:                                            ; preds = %bb.az, %bb.ay, %bb.ax
  %i.ey = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ez = load i32, ptr %i.ey, align 8, !tbaa !87
  %i.fa = icmp eq i32 %i.ez, 1
  br i1 %i.fa, label %bb.bc, label %bb.bk

bb.bc:                                            ; preds = %bb.bb
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !112 ; 2 uses
  %.not.i132 = icmp eq ptr %i.fc, null
  br i1 %.not.i132, label %bb.bk, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.fd = call i32 (ptr, ptr, ptr, ...) @Curl_pp_sendf(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.57, ptr noundef nonnull %i.fc) #10, !inline_history !2 ; 2 uses
  %.not13.i = icmp eq i32 %i.fd, 0
  br i1 %.not13.i, label %bb.be, label %ftp_state_type.exit

bb.be:                                            ; preds = %bb.bd
  %i.fe = getelementptr inbounds nuw i8, ptr %1, i64 248 ; 2 uses
  %i.ff = load i8, ptr %i.fe, align 8, !tbaa !94  ; 2 uses
  %.not143 = icmp eq i8 %i.ff, 25
  br i1 %.not143, label %ftp_state_low.exit.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 2187
  %i.fh = load i64, ptr %i.fg, align 1
  %i.fi = and i64 %i.fh, 536870912
  %.not.i.i = icmp eq i64 %i.fi, 0
  br i1 %.not.i.i, label %ftp_state_low.exit.i, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 4504
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !91 ; 2 uses
  %.not16.i.i = icmp eq ptr %i.fk, null
  br i1 %.not16.i.i, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  %i.fm = load i32, ptr %i.fl, align 8, !tbaa !93
  %i.fn = icmp sgt i32 %i.fm, 0
  %i.fo = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_ftp, i64 8), align 8
  %i.fp = icmp sgt i32 %i.fo, 0
  %or.cond.i.i = select i1 %i.fn, i1 %i.fp, i1 false
  br i1 %or.cond.i.i, label %bb.bj, label %ftp_state_low.exit.i

bb.bi:                                            ; preds = %bb.bg
  %.old.i.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_ftp, i64 8), align 8, !tbaa !93
  %.old1.i.i = icmp sgt i32 %.old.i.i, 0
  br i1 %.old1.i.i, label %bb.bj, label %ftp_state_low.exit.i

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %i.fq = zext i8 %i.ff to i64
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr @ftp_state_names, i64 %i.fq
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !27
  call void (ptr, ptr, ...) @Curl_trc_ftp(ptr noundef nonnull %0, ptr noundef nonnull @.str.58, ptr noundef %i.fs, ptr noundef nonnull @.str.30) #10, !inline_history !2
  br label %ftp_state_low.exit.i

ftp_state_low.exit.i:                             ; preds = %bb.bj, %bb.bi, %bb.bh, %bb.bf, %bb.be
  store i8 25, ptr %i.fe, align 8, !tbaa !94
  br label %ftp_state_type.exit

bb.bk:                                            ; preds = %bb.bc, %bb.bb
  %i.ft = call fastcc i32 @ftp_state_rest(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2) #12, !inline_history !2
  br label %ftp_state_type.exit

ftp_state_type.exit:                              ; preds = %bb.ba, %bb.bd, %ftp_state_low.exit.i, %bb.bk, %.thread137, %ftp_state_low.exit130, %ftp_state_low.exit
  %.383 = phi i32 [ 0, %ftp_state_low.exit130 ], [ %.080.ph, %.thread137 ], [ 0, %ftp_state_low.exit ], [ %i.ex, %bb.ba ], [ %i.fd, %bb.bd ], [ 0, %ftp_state_low.exit.i ], [ %i.ft, %bb.bk ]
  ret i32 %.383
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @ftp_state_size_resp(ptr noundef %0, ptr noundef nonnull %1, ptr nofree noundef nonnull captures(none) %2, i32 noundef %3, i8 noundef zeroext %4) unnamed_addr #3 {
bb.a:
  %i.a = alloca i64, align 8                      ; 10 uses
  %i.b = alloca ptr, align 8                      ; 7 uses
  %i.c = alloca [128 x i8], align 16              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i64 -1, ptr %i.a, align 8, !tbaa !115
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.e = tail call ptr @curlx_dyn_ptr(ptr noundef nonnull %i.d) #10
  %i.f = icmp eq i32 %3, 213
  br i1 %i.f, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.h = load i64, ptr %i.g, align 8, !tbaa !257
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 4 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  %i.j = add i64 %i.h, -4
  %i.k = tail call ptr @memchr(ptr noundef nonnull %i.i, i32 noundef 13, i64 noundef %i.j) #9 ; 3 uses
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds i8, ptr %i.k, i64 -1 ; 3 uses
  store ptr %i.l, ptr %i.b, align 8, !tbaa !27
  %i.m = load i8, ptr %i.l, align 1, !tbaa !11
  %i.n = icmp eq i8 %i.m, 10
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds i8, ptr %i.k, i64 -2 ; 2 uses
  store ptr %i.o, ptr %i.b, align 8, !tbaa !27
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.promoted = phi ptr [ %i.o, %bb.d ], [ %i.l, %bb.c ] ; 2 uses
  %i.p = getelementptr inbounds i8, ptr %.promoted, i64 -1 ; 2 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !11
  %i.r = add i8 %i.q, -48
  %or.cond4345 = icmp ult i8 %i.r, 10
  %i.s = icmp ugt ptr %.promoted, %i.i
  %or.cond4446 = and i1 %i.s, %or.cond4345
  br i1 %or.cond4446, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.e, %.lr.ph
  %i.t = phi ptr [ %i.u, %.lr.ph ], [ %i.p, %bb.e ] ; 3 uses
  store ptr %i.t, ptr %i.b, align 8, !tbaa !27
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 -1 ; 2 uses
  %i.v = load i8, ptr %i.u, align 1, !tbaa !11
  %i.w = add i8 %i.v, -48
  %or.cond43 = icmp ult i8 %i.w, 10
  %i.x = icmp ugt ptr %i.t, %i.i
  %or.cond44 = and i1 %i.x, %or.cond43
  br i1 %or.cond44, label %.lr.ph, label %.critedge, !llvm.loop !256

bb.f:                                             ; preds = %bb.b
  store ptr %i.i, ptr %i.b, align 8, !tbaa !27
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph, %bb.e, %bb.f
  %i.y = call i32 @curlx_str_number(ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, i64 noundef 9223372036854775807) #10
  %.not40 = icmp eq i32 %i.y, 0
  br i1 %.not40, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.critedge
  store i64 -1, ptr %i.a, align 8, !tbaa !115
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  br label %bb.k

bb.i:                                             ; preds = %bb.a
  %i.z = icmp eq i32 %3, 550
  %i.aa = icmp ne i8 %4, 27
  %or.cond = and i1 %i.z, %i.aa
  br i1 %or.cond, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void (ptr, ptr, ...) @Curl_failf(ptr noundef %0, ptr noundef nonnull @.str.157) #10
  br label %bb.q

bb.k:                                             ; preds = %bb.i, %bb.h
  switch i8 %4, label %bb.q [
    i8 25, label %bb.l
    i8 26, label %bb.o
    i8 27, label %bb.p
  ]

bb.l:                                             ; preds = %bb.k
  %i.ab = load i64, ptr %i.a, align 8, !tbaa !115 ; 2 uses
  %.not41 = icmp eq i64 %i.ab, -1
  br i1 %.not41, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  %i.ac = call i32 (ptr, i64, ptr, ...) @curl_msnprintf(ptr noundef nonnull %i.c, i64 noundef 128, ptr noundef nonnull @.str.158, i64 noundef %i.ab) #10
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 2187 ; 4 uses
  %i.af = load i64, ptr %i.ae, align 1            ; 2 uses
  %i.ag = or i64 %i.af, 33554432
  store i64 %i.ag, ptr %i.ae, align 1
  %i.ah = call i32 @Curl_client_write(ptr noundef %0, i32 noundef 4, ptr noundef nonnull %i.c, i64 noundef %i.ad) #10 ; 2 uses
  %i.ai = and i64 %i.af, 33554432
  %i.aj = load i64, ptr %i.ae, align 1
  %i.ak = and i64 %i.aj, -33554433
  %i.al = or disjoint i64 %i.ak, %i.ai
  store i64 %i.al, ptr %i.ae, align 1
  %.not42 = icmp eq i32 %i.ah, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  br i1 %.not42, label %._crit_edge, label %bb.q

._crit_edge:                                      ; preds = %bb.m
  %.pre = load i64, ptr %i.a, align 8, !tbaa !115
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge, %bb.l
  %i.am = phi i64 [ %.pre, %._crit_edge ], [ -1, %bb.l ]
end_hunk_1
