Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/microdvddec?download=true
inline.NumInlined: 12
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@microdvd_decode_frame:bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %.145, i64 1 ; 2 uses
  %exitcond.not = icmp eq ptr %i.as, %scevgep51
  br i1 %exitcond.not, label %.critedge39, label %.lr.ph, !llvm.loop !42

.preheader:                                       ; preds = %.lr.ph, %bb.af
  %indvars.iv.i40 = phi i64 [ %indvars.iv.next.i42, %bb.af ], [ 7, %.lr.ph ] ; 3 uses
  %i.at = getelementptr inbounds nuw [32 x i8], ptr %5, i64 %indvars.iv.i40 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  %i.av = load i32, ptr %i.au, align 4, !tbaa !49
  %.not.i41 = icmp eq i32 %i.av, 0
  br i1 %.not.i41, label %bb.u, label %bb.af

bb.u:                                             ; preds = %.preheader
  %i.aw = load i8, ptr %i.at, align 16, !tbaa !29
  switch i8 %i.aw, label %.loopexit.i [
    i8 121, label %.preheader.i
    i8 99, label %bb.ac
    i8 102, label %bb.ad
    i8 115, label %bb.ae
  ]

.preheader.i:                                     ; preds = %bb.u
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !30 ; 4 uses
  %i.az = and i32 %i.ay, 8
  %.not18.i = icmp eq i32 %i.az, 0
  br i1 %.not18.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.preheader.i
  call void (ptr, ptr, ...) @av_bprintf(ptr noundef nonnull %4, ptr noundef nonnull @.str.14, i32 noundef 115) #9
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %.preheader.i
  %i.ba = and i32 %i.ay, 4
  %.not18.1.i = icmp eq i32 %i.ba, 0
  br i1 %.not18.1.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void (ptr, ptr, ...) @av_bprintf(ptr noundef nonnull %4, ptr noundef nonnull @.str.14, i32 noundef 117) #9
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.bb = and i32 %i.ay, 2
  %.not18.2.i = icmp eq i32 %i.bb, 0
  br i1 %.not18.2.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void (ptr, ptr, ...) @av_bprintf(ptr noundef nonnull %4, ptr noundef nonnull @.str.14, i32 noundef 98) #9
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.bc = and i32 %i.ay, 1
  %.not18.3.i = icmp eq i32 %i.bc, 0
  br i1 %.not18.3.i, label %.loopexit.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void (ptr, ptr, ...) @av_bprintf(ptr noundef nonnull %4, ptr noundef nonnull @.str.14, i32 noundef 105) #9
  br label %.loopexit.i

bb.ac:                                            ; preds = %bb.u
  call void (ptr, ptr, ...) @av_bprintf(ptr noundef nonnull %4, ptr noundef nonnull @.str.15) #9
  br label %.loopexit.i

bb.ad:                                            ; preds = %bb.u
  call void (ptr, ptr, ...) @av_bprintf(ptr noundef nonnull %4, ptr noundef nonnull @.str.16) #9
  br label %.loopexit.i

bb.ae:                                            ; preds = %bb.u
  call void (ptr, ptr, ...) @av_bprintf(ptr noundef nonnull %4, ptr noundef nonnull @.str.17) #9
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.u
  store i8 0, ptr %i.at, align 16, !tbaa !29
  br label %bb.af

bb.af:                                            ; preds = %.loopexit.i, %.preheader
  %indvars.iv.next.i42 = add nsw i64 %indvars.iv.i40, -1
  %.not25.i = icmp eq i64 %indvars.iv.i40, 0
  br i1 %.not25.i, label %microdvd_close_no_persistent_tags.exit, label %.preheader, !llvm.loop !43

microdvd_close_no_persistent_tags.exit:           ; preds = %bb.af
  call void (ptr, ptr, ...) @av_bprintf(ptr noundef nonnull %4, ptr noundef nonnull @.str.7) #9
  %i.bd = getelementptr inbounds nuw i8, ptr %.145, i64 1
  br label %.critedge39

.critedge39:                                      ; preds = %microdvd_open_tags.exit, %.lr.ph, %microdvd_open_tags.exit.preheader, %microdvd_close_no_persistent_tags.exit
  %.2 = phi ptr [ %i.bd, %microdvd_close_no_persistent_tags.exit ], [ %i.l, %microdvd_open_tags.exit.preheader ], [ %scevgep51, %microdvd_open_tags.exit ], [ %.145, %.lr.ph ] ; 2 uses
  %i.be = icmp ult ptr %.2, %i.g
  br i1 %i.be, label %.lr.ph48, label %.critedge, !llvm.loop !44

.critedge:                                        ; preds = %.lr.ph48, %.critedge39
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !51
  %.not36 = icmp eq i32 %i.bg, 0
  br i1 %.not36, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %.critedge
  %i.bh = load ptr, ptr %4, align 8, !tbaa !36
  %i.bi = load i32, ptr %i.i, align 4, !tbaa !53  ; 2 uses
  %i.bj = add nsw i32 %i.bi, 1
  store i32 %i.bj, ptr %i.i, align 4, !tbaa !53
  %i.bk = call i32 @ff_ass_add_rect(ptr noundef %1, ptr noundef %i.bh, i32 noundef %i.bi, i32 noundef 0, ptr noundef null, ptr noundef null) #9 ; 2 uses
  %i.bl = call i32 @av_bprint_finalize(ptr noundef nonnull %4, ptr noundef null) #9 ; 0 uses
  %i.bm = icmp sgt i32 %i.bk, -1
  br i1 %i.bm, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag, %.critedge
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !57
  %i.bp = icmp ne i32 %i.bo, 0
  %i.bq = zext i1 %i.bp to i32
  store i32 %i.bq, ptr %2, align 4, !tbaa !37
  %i.br = load i32, ptr %i.d, align 8, !tbaa !47
  br label %bb.ai

bb.ai:                                            ; preds = %bb.a, %bb.ag, %bb.ah
  %.132 = phi i32 [ %i.bk, %bb.ag ], [ %i.br, %bb.ah ], [ %i.e, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  ret i32 %.132
}

declare void @ff_ass_decoder_flush(ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

declare void @av_bprint_init(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @av_bprintf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree norecurse nounwind uwtable
define internal fastcc ptr @microdvd_load_tags(ptr nofree noundef nonnull captures(none) %0, ptr noundef %1) unnamed_addr #5 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 14 uses
  %i.b = load i8, ptr %1, align 1, !tbaa !31      ; 2 uses
  %i.c = icmp eq i8 %i.b, 47
  br i1 %i.c, label %microdvd_set_tag.exit.i, label %check_for_italic_slash_marker.exit

microdvd_set_tag.exit.i:                          ; preds = %bb.a
  %.sroa.57.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %.sroa.57.0.copyload.i = load i32, ptr %.sroa.57.0..sroa_idx.i, align 8, !tbaa !37
  %i.d = or i32 %.sroa.57.0.copyload.i, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i8 121, ptr %i.e, align 8
  store i32 %i.d, ptr %.sroa.57.0..sroa_idx.i, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %.pre = load i8, ptr %i.f, align 1, !tbaa !31
  br label %check_for_italic_slash_marker.exit

check_for_italic_slash_marker.exit:               ; preds = %bb.a, %microdvd_set_tag.exit.i
  %i.g = phi i8 [ %.pre, %microdvd_set_tag.exit.i ], [ %i.b, %bb.a ] ; 2 uses
  %.0.i = phi ptr [ %i.f, %microdvd_set_tag.exit.i ], [ %1, %bb.a ] ; 3 uses
  store ptr %.0.i, ptr %i.a, align 8, !tbaa !60
  %i.h = icmp eq i8 %i.g, 123
  br i1 %i.h, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %check_for_italic_slash_marker.exit, %bb.x
  %i.i = phi ptr [ %i.cd, %bb.x ], [ %.0.i, %check_for_italic_slash_marker.exit ] ; 18 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %i.k = load i8, ptr %i.j, align 1, !tbaa !31    ; 3 uses
  %.not = icmp eq i8 %i.k, 0
  br i1 %.not, label %.thread69, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  %i.m = load i8, ptr %i.l, align 1, !tbaa !31
  %.not26 = icmp eq i8 %i.m, 58
  br i1 %.not26, label %bb.c, label %.thread69

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 3 ; 14 uses
  store ptr %i.n, ptr %i.a, align 8, !tbaa !60
  switch i8 %i.k, label %check_for_italic_slash_marker.exit42 [
    i8 89, label %bb.d
    i8 121, label %bb.e
    i8 67, label %bb.i
    i8 99, label %bb.j
    i8 70, label %bb.l
    i8 102, label %bb.m
    i8 83, label %bb.o
    i8 115, label %bb.p
    i8 72, label %bb.q
    i8 80, label %bb.s
    i8 111, label %bb.u
  ]

bb.d:                                             ; preds = %bb.c
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.1243.0 = phi i32 [ 1, %bb.d ], [ 0, %bb.c ]
  %i.o = ptrtoint ptr %i.i to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.h, %bb.e
  %i.p = phi ptr [ %i.n, %bb.e ], [ %i.ab, %bb.h ] ; 4 uses
  %.sroa.18.0 = phi i32 [ 0, %bb.e ], [ %.sroa.18.1, %bb.h ] ; 2 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !31    ; 2 uses
  %i.r = sext i8 %i.q to i32
  switch i8 %i.q, label %bb.g [
    i8 125, label %.thread55
    i8 0, label %check_for_italic_slash_marker.exit42
  ]

bb.g:                                             ; preds = %bb.f
  %i.s = ptrtoint ptr %i.p to i64
  %i.t = sub i64 %i.s, %i.o
  %i.u = icmp slt i64 %i.t, 256
  br i1 %i.u, label %bb.h, label %check_for_italic_slash_marker.exit42

bb.h:                                             ; preds = %bb.g
  %memchr = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @.str.4, i32 %i.r, i64 5) ; 2 uses
  %.not.i = icmp eq ptr %memchr, null
  %i.v = ptrtoint ptr %memchr to i64
  %i.w = trunc i64 %i.v to i32
  %i.x = sub i32 %i.w, ptrtoint (ptr @.str.4 to i32)
  %i.y = select i1 %.not.i, i32 -1, i32 %i.x      ; 2 uses
  %i.z = shl nuw i32 1, %i.y
  %2 = icmp slt i32 %i.y, 0
  %i.aa = select i1 %2, i32 0, i32 %i.z
  %.sroa.18.1 = or i32 %i.aa, %.sroa.18.0
  %i.ab = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  br label %bb.f, !llvm.loop !58

bb.i:                                             ; preds = %bb.c
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.c
  %.sroa.1243.1 = phi i32 [ 1, %bb.i ], [ 0, %bb.c ]
  br label %.critedge2

.critedge2:                                       ; preds = %.critedge2, %bb.j
  %i.ac = phi ptr [ %i.ae, %.critedge2 ], [ %i.n, %bb.j ] ; 4 uses
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !31
  %.off = add i8 %i.ad, -35
  %switch = icmp ult i8 %.off, 2
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 1
  br i1 %switch, label %.critedge2, label %bb.k, !llvm.loop !59

bb.k:                                             ; preds = %.critedge2
  store ptr %i.ac, ptr %i.a, align 8
  %i.af = call i64 @strtol(ptr noundef nonnull %i.ac, ptr noundef nonnull %i.a, i32 noundef 16) #9
  %i.ag = trunc i64 %i.af to i32
  %i.ah = and i32 %i.ag, 16777215
  %i.ai = load ptr, ptr %i.a, align 8, !tbaa !60  ; 2 uses
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !31
  %.not32 = icmp eq i8 %i.aj, 125
  br i1 %.not32, label %.thread55, label %check_for_italic_slash_marker.exit42

bb.l:                                             ; preds = %bb.c
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.c
  %.sroa.1243.2 = phi i32 [ 1, %bb.l ], [ 0, %bb.c ]
  %i.ak = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.n, i32 noundef 125) #10 ; 2 uses
  %.not.i36 = icmp eq ptr %i.ak, null
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = ptrtoint ptr %i.n to i64
  %i.an = sub i64 %i.al, %i.am
  %i.ao = trunc i64 %i.an to i32                  ; 2 uses
  %i.ap = select i1 %.not.i36, i32 -1, i32 %i.ao  ; 2 uses
  %i.aq = icmp slt i32 %i.ap, 0
  br i1 %i.aq, label %check_for_italic_slash_marker.exit42, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ar = zext nneg i32 %i.ap to i64
  %i.as = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.ar
  br label %.thread55

bb.o:                                             ; preds = %bb.c
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.c
  %.sroa.1243.3 = phi i32 [ 1, %bb.o ], [ 0, %bb.c ]
  %i.at = call i64 @strtol(ptr noundef nonnull %i.n, ptr noundef nonnull %i.a, i32 noundef 10) #9
  %i.au = trunc i64 %i.at to i32
  %i.av = load ptr, ptr %i.a, align 8, !tbaa !60  ; 2 uses
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !31
  %.not31 = icmp eq i8 %i.aw, 125
  br i1 %.not31, label %.thread55, label %check_for_italic_slash_marker.exit42

bb.q:                                             ; preds = %bb.c
  %i.ax = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.n, i32 noundef 125) #10 ; 2 uses
  %.not.i37 = icmp eq ptr %i.ax, null
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = ptrtoint ptr %i.n to i64
  %i.ba = sub i64 %i.ay, %i.az
  %i.bb = trunc i64 %i.ba to i32                  ; 2 uses
  %i.bc = select i1 %.not.i37, i32 -1, i32 %i.bb  ; 2 uses
  %i.bd = icmp slt i32 %i.bc, 0
  br i1 %i.bd, label %check_for_italic_slash_marker.exit42, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.be = zext nneg i32 %i.bc to i64
  %i.bf = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.be
  br label %.thread55

bb.s:                                             ; preds = %bb.c
  %i.bg = load i8, ptr %i.n, align 1, !tbaa !31   ; 2 uses
  %.not29 = icmp eq i8 %i.bg, 0
  br i1 %.not29, label %check_for_italic_slash_marker.exit42, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bh = getelementptr inbounds nuw i8, ptr %i.i, i64 4 ; 3 uses
  store ptr %i.bh, ptr %i.a, align 8, !tbaa !60
  %i.bi = icmp eq i8 %i.bg, 49
  %i.bj = zext i1 %i.bi to i32
  %i.bk = load i8, ptr %i.bh, align 1, !tbaa !31
  %.not30 = icmp eq i8 %i.bk, 125
  br i1 %.not30, label %.thread55, label %check_for_italic_slash_marker.exit42

bb.u:                                             ; preds = %bb.c
  %i.bl = call i64 @strtol(ptr noundef nonnull %i.n, ptr noundef nonnull %i.a, i32 noundef 10) #9
  %i.bm = load ptr, ptr %i.a, align 8, !tbaa !60  ; 2 uses
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !31
  %.not27 = icmp eq i8 %i.bn, 44
  br i1 %.not27, label %bb.v, label %check_for_italic_slash_marker.exit42

bb.v:                                             ; preds = %bb.u
  %i.bo = trunc i64 %i.bl to i32
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 1 ; 2 uses
  store ptr %i.bp, ptr %i.a, align 8, !tbaa !60
  %i.bq = call i64 @strtol(ptr noundef nonnull %i.bp, ptr noundef nonnull %i.a, i32 noundef 10) #9
  %i.br = trunc i64 %i.bq to i32
  %i.bs = load ptr, ptr %i.a, align 8, !tbaa !60  ; 2 uses
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !31
  %.not28 = icmp eq i8 %i.bt, 125
  br i1 %.not28, label %.thread55, label %check_for_italic_slash_marker.exit42

.thread55:                                        ; preds = %bb.f, %bb.v, %bb.t, %bb.p, %bb.k, %bb.n, %bb.r
  %i.bu = phi ptr [ %i.bs, %bb.v ], [ %i.as, %bb.n ], [ %i.bf, %bb.r ], [ %i.av, %bb.p ], [ %i.ai, %bb.k ], [ %i.bh, %bb.t ], [ %i.p, %bb.f ]
  %.sroa.27.067 = phi i32 [ 0, %bb.v ], [ %i.ao, %bb.n ], [ %i.bb, %bb.r ], [ 0, %bb.p ], [ 0, %bb.k ], [ 0, %bb.t ], [ 0, %bb.f ]
  %.sroa.25.066 = phi ptr [ null, %bb.v ], [ %i.n, %bb.n ], [ %i.n, %bb.r ], [ null, %bb.p ], [ null, %bb.k ], [ null, %bb.t ], [ null, %bb.f ]
  %.sroa.24.065 = phi i32 [ %i.br, %bb.v ], [ 0, %bb.n ], [ 0, %bb.r ], [ 0, %bb.p ], [ 0, %bb.k ], [ 0, %bb.t ], [ 0, %bb.f ]
  %.sroa.18.264 = phi i32 [ %i.bo, %bb.v ], [ 0, %bb.n ], [ 0, %bb.r ], [ %i.au, %bb.p ], [ %i.ah, %bb.k ], [ %i.bj, %bb.t ], [ %.sroa.18.0, %bb.f ]
  %.sroa.1243.463 = phi i32 [ 1, %bb.v ], [ %.sroa.1243.2, %bb.n ], [ 0, %bb.r ], [ %.sroa.1243.3, %bb.p ], [ %.sroa.1243.1, %bb.k ], [ 1, %bb.t ], [ %.sroa.1243.0, %bb.f ]
  %.sroa.0.062 = phi i8 [ 111, %bb.v ], [ 102, %bb.n ], [ 104, %bb.r ], [ 115, %bb.p ], [ 99, %bb.k ], [ 112, %bb.t ], [ %i.k, %bb.f ] ; 2 uses
  %i.bv = sext i8 %.sroa.0.062 to i32
  %memchr.i = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @.str.6, i32 %i.bv, i64 9) ; 2 uses
  %.not.i.i = icmp eq ptr %memchr.i, null
  %i.bw = ptrtoint ptr %memchr.i to i64
  %i.bx = trunc i64 %i.bw to i32
  %i.by = sub i32 %i.bx, ptrtoint (ptr @.str.6 to i32)
  %i.bz = select i1 %.not.i.i, i32 -1, i32 %i.by  ; 2 uses
  %i.ca = icmp slt i32 %i.bz, 0
  br i1 %i.ca, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.thread55
  %i.cb = zext nneg i32 %i.bz to i64
  %i.cc = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.cb ; 8 uses
  store i8 %.sroa.0.062, ptr %i.cc, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cc, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.5.0..sroa_idx, i8 0, i64 3, i1 false)
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cc, i64 4
  store i32 %.sroa.1243.463, ptr %.sroa.6.0..sroa_idx, align 4
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  store i32 %.sroa.18.264, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cc, i64 12
  store i32 %.sroa.24.065, ptr %.sroa.8.0..sroa_idx, align 4
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  store ptr %.sroa.25.066, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  store i32 %.sroa.27.067, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cc, i64 28
  store i32 0, ptr %.sroa.11.0..sroa_idx, align 4
  br label %bb.x

.thread69:                                        ; preds = %.lr.ph, %bb.b
  %.pre94 = load i8, ptr %i.i, align 1, !tbaa !31
  br label %.loopexit

bb.x:                                             ; preds = %bb.w, %.thread55
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bu, i64 1 ; 4 uses
  store ptr %i.cd, ptr %i.a, align 8, !tbaa !60
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !31  ; 2 uses
  %i.cf = icmp eq i8 %i.ce, 123
  br i1 %i.cf, label %.lr.ph, label %.loopexit

.loopexit:                                        ; preds = %bb.x, %check_for_italic_slash_marker.exit, %.thread69
  %i.cg = phi i8 [ %.pre94, %.thread69 ], [ %i.g, %check_for_italic_slash_marker.exit ], [ %i.ce, %bb.x ]
  %i.ch = phi ptr [ %i.i, %.thread69 ], [ %.0.i, %check_for_italic_slash_marker.exit ], [ %i.cd, %bb.x ] ; 2 uses
  %i.ci = icmp eq i8 %i.cg, 47
  br i1 %i.ci, label %microdvd_set_tag.exit.i39, label %check_for_italic_slash_marker.exit42

microdvd_set_tag.exit.i39:                        ; preds = %.loopexit
  %.sroa.57.0..sroa_idx.i40 = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %.sroa.57.0.copyload.i41 = load i32, ptr %.sroa.57.0..sroa_idx.i40, align 8, !tbaa !37
  %i.cj = or i32 %.sroa.57.0.copyload.i41, 1
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i8 121, ptr %i.ck, align 8
  store i32 %i.cj, ptr %.sroa.57.0..sroa_idx.i40, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ch, i64 1
  br label %check_for_italic_slash_marker.exit42

check_for_italic_slash_marker.exit42:             ; preds = %bb.u, %bb.v, %bb.t, %bb.s, %bb.q, %bb.p, %bb.m, %bb.k, %bb.c, %bb.g, %bb.f, %microdvd_set_tag.exit.i39, %.loopexit
  %.2 = phi ptr [ %i.ch, %.loopexit ], [ %i.cl, %microdvd_set_tag.exit.i39 ], [ %i.i, %bb.g ], [ %i.i, %bb.f ], [ %i.i, %bb.c ], [ %i.i, %bb.k ], [ %i.i, %bb.m ], [ %i.i, %bb.p ], [ %i.i, %bb.q ], [ %i.i, %bb.s ], [ %i.i, %bb.t ], [ %i.i, %bb.v ], [ %i.i, %bb.u ]
  ret ptr %.2
}

declare void @av_bprint_clear(ptr noundef) local_unnamed_addr #2

declare i32 @ff_ass_subtitle_header(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr noundef captures(none), i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #7

declare void @av_bprint_chars(ptr noundef, i8 noundef signext, i32 noundef) local_unnamed_addr #2

declare i32 @ff_ass_add_rect(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @av_bprint_finalize(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr, i32, i64) local_unnamed_addr #8

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nofree norecurse nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #9 = { nounwind }
attributes #10 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTS7AVClass", !9, i64 0}
!11 = !{!"p1 _ZTS7AVCodec", !9, i64 0}
!12 = !{!"p1 _ZTS15AVCodecInternal", !9, i64 0}
!13 = !{!"long", !5, i64 0}
!14 = !{!"p1 omnipotent char", !9, i64 0}
!15 = !{!"AVRational", !6, i64 0, !6, i64 4}
!16 = !{!"float", !5, i64 0}
!17 = !{!"p1 short", !9, i64 0}
!18 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !5, i64 8, !9, i64 16}
!19 = !{!"p1 _ZTS10RcOverride", !9, i64 0}
!20 = !{!"p1 _ZTS9AVHWAccel", !9, i64 0}
!21 = !{!"p1 _ZTS11AVBufferRef", !9, i64 0}
!22 = !{!"p1 _ZTS17AVCodecDescriptor", !9, i64 0}
!23 = !{!"p1 _ZTS16AVPacketSideData", !9, i64 0}
!24 = !{!"p1 int", !9, i64 0}
!25 = !{!"any p2 pointer", !9, i64 0}
!26 = !{!"p2 _ZTS15AVFrameSideData", !25, i64 0}
!27 = !{!"AVCodecContext", !10, i64 0, !6, i64 8, !6, i64 12, !11, i64 16, !6, i64 24, !6, i64 28, !9, i64 32, !12, i64 40, !9, i64 48, !13, i64 56, !6, i64 64, !6, i64 68, !14, i64 72, !6, i64 80, !15, i64 84, !15, i64 92, !15, i64 100, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !15, i64 128, !6, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !6, i64 176, !9, i64 184, !9, i64 192, !6, i64 200, !16, i64 204, !16, i64 208, !16, i64 212, !16, i64 216, !16, i64 220, !16, i64 224, !16, i64 228, !16, i64 232, !16, i64 236, !6, i64 240, !6, i64 244, !6, i64 248, !6, i64 252, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !17, i64 288, !17, i64 296, !17, i64 304, !6, i64 312, !6, i64 316, !6, i64 320, !6, i64 324, !6, i64 328, !6, i64 332, !6, i64 336, !6, i64 340, !6, i64 344, !6, i64 348, !18, i64 352, !6, i64 376, !6, i64 380, !6, i64 384, !6, i64 388, !6, i64 392, !6, i64 396, !6, i64 400, !6, i64 404, !9, i64 408, !6, i64 416, !6, i64 420, !6, i64 424, !16, i64 428, !16, i64 432, !6, i64 436, !6, i64 440, !6, i64 444, !6, i64 448, !6, i64 452, !19, i64 456, !13, i64 464, !13, i64 472, !16, i64 480, !16, i64 484, !6, i64 488, !6, i64 492, !14, i64 496, !14, i64 504, !6, i64 512, !6, i64 516, !6, i64 520, !6, i64 524, !6, i64 528, !20, i64 536, !9, i64 544, !21, i64 552, !21, i64 560, !6, i64 568, !6, i64 572, !5, i64 576, !6, i64 640, !6, i64 644, !6, i64 648, !6, i64 652, !6, i64 656, !6, i64 660, !6, i64 664, !9, i64 672, !9, i64 680, !6, i64 688, !6, i64 692, !6, i64 696, !6, i64 700, !6, i64 704, !6, i64 708, !6, i64 712, !6, i64 716, !6, i64 720, !22, i64 728, !14, i64 736, !6, i64 744, !6, i64 748, !14, i64 752, !14, i64 760, !14, i64 768, !23, i64 776, !6, i64 784, !6, i64 788, !13, i64 792, !6, i64 800, !6, i64 804, !13, i64 808, !9, i64 816, !13, i64 824, !24, i64 832, !6, i64 840, !26, i64 848, !6, i64 856, !6, i64 860}
!28 = !{!"microdvd_tag", !5, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !14, i64 16, !6, i64 24}
!29 = !{!28, !5, i64 0}
!30 = !{!28, !6, i64 8}
!31 = !{!5, !5, i64 0}
!32 = !{!"llvm.loop.mustprogress"}
!33 = !{!28, !6, i64 24}
!34 = !{!28, !14, i64 16}
!35 = !{!"AVBPrint", !14, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !5, i64 20, !5, i64 21}
!36 = !{!35, !14, i64 0}
!37 = !{!6, !6, i64 0}
!38 = distinct !{!38, !32}
!39 = distinct !{!39, !32}
!40 = !{!27, !14, i64 72}
!41 = distinct !{!41, !32}
!42 = distinct !{!42, !32}
!43 = distinct !{!43, !32}
!44 = distinct !{!44, !32}
!45 = !{!"AVPacket", !21, i64 0, !13, i64 8, !13, i64 16, !14, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !23, i64 48, !6, i64 56, !13, i64 64, !13, i64 72, !9, i64 80, !21, i64 88, !15, i64 96}
!46 = !{!45, !14, i64 24}
!47 = !{!45, !6, i64 32}
!48 = !{!27, !9, i64 32}
!49 = !{!28, !6, i64 4}
!50 = !{!28, !6, i64 12}
!51 = !{!35, !6, i64 8}
!52 = !{!"FFASSDecoderContext", !6, i64 0}
!53 = !{!52, !6, i64 0}
!54 = !{!"short", !5, i64 0}
!55 = !{!"p2 _ZTS14AVSubtitleRect", !25, i64 0}
!56 = !{!"AVSubtitle", !54, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !55, i64 16, !13, i64 24}
!57 = !{!56, !6, i64 12}
!58 = distinct !{!58, !32}
!59 = distinct !{!59, !32}
!60 = !{!14, !14, i64 0}
end_hunk_0
