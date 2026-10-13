Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stb/original/stb_c_lexer?download=true
inline.NumInlined: 40
begin_hunk_0_@stb__strchr:bb.a
bb.b:                                             ; preds = %.lr.ph
  %i.e = getelementptr inbounds nuw i8, ptr %.058, i64 1 ; 2 uses
  %i.f = load i8, ptr %i.e, align 1, !tbaa !19    ; 2 uses
  %.not = icmp eq i8 %i.f, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !31

._crit_edge:                                      ; preds = %.lr.ph, %bb.b, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ null, %bb.b ], [ %.058, %.lr.ph ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define noundef i32 @stb__clex_parse_suffixes(ptr nofree noundef writeonly captures(none) initializes((16, 24), (40, 64)) %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef readnone captures(none) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %3, i64 -1
  %i.b = shl i64 %1, 32
  %i.c = ashr exact i64 %i.b, 32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.c, ptr %i.d, align 8, !tbaa !21
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %2, ptr %i.e, align 8, !tbaa !22
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.a, ptr %i.f, align 8, !tbaa !23
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %3, ptr %i.g, align 8, !tbaa !16
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define range(i32 -1, 256) i32 @stb__clex_parse_char(ptr noundef %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1) local_unnamed_addr #5 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !19
  %i.b = icmp eq i8 %i.a, 92
  br i1 %i.b, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2
  store ptr %i.c, ptr %1, align 8, !tbaa !24
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.e = load i8, ptr %i.d, align 1, !tbaa !19
  switch i8 %i.e, label %bb.k [
    i8 92, label %bb.l
    i8 39, label %bb.c
    i8 34, label %bb.d
    i8 116, label %bb.e
    i8 102, label %bb.f
    i8 110, label %bb.g
    i8 114, label %bb.h
    i8 48, label %bb.i
    i8 120, label %bb.j
    i8 88, label %bb.j
    i8 117, label %bb.j
  ]

bb.c:                                             ; preds = %bb.b
  br label %bb.l

bb.d:                                             ; preds = %bb.b
  br label %bb.l

bb.e:                                             ; preds = %bb.b
  br label %bb.l

bb.f:                                             ; preds = %bb.b
  br label %bb.l

bb.g:                                             ; preds = %bb.b
  br label %bb.l

bb.h:                                             ; preds = %bb.b
  br label %bb.l

bb.i:                                             ; preds = %bb.b
  br label %bb.l

bb.j:                                             ; preds = %bb.b, %bb.b, %bb.b
  br label %bb.l

bb.k:                                             ; preds = %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1
  store ptr %i.f, ptr %1, align 8, !tbaa !24
  %i.g = load i8, ptr %0, align 1, !tbaa !19
  %i.h = zext i8 %i.g to i32
  br label %bb.l

bb.l:                                             ; preds = %bb.b, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.0 = phi i32 [ %i.h, %bb.k ], [ 92, %bb.b ], [ 39, %bb.c ], [ 34, %bb.d ], [ 9, %bb.e ], [ 12, %bb.f ], [ 10, %bb.g ], [ 13, %bb.h ], [ 0, %bb.i ], [ -1, %bb.j ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @stb__clex_parse_string(ptr nofree noundef captures(none) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #6 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 3 uses
  %i.c = load i8, ptr %1, align 1, !tbaa !19      ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !17   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load i32, ptr %i.f, align 8, !tbaa !18
  %i.h = sext i32 %i.g to i64
  %i.i = getelementptr inbounds i8, ptr %i.e, i64 %i.h
  %i.j = load i8, ptr %i.b, align 1, !tbaa !19    ; 2 uses
  %.not49 = icmp eq i8 %i.j, %i.c
  br i1 %.not49, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.g
  %i.k = phi i8 [ %i.ad, %bb.g ], [ %i.j, %bb.a ] ; 2 uses
  %.03451 = phi ptr [ %i.w, %bb.g ], [ %i.e, %bb.a ] ; 2 uses
  %.03850 = phi ptr [ %.240, %bb.g ], [ %i.b, %bb.a ] ; 2 uses
  %i.l = icmp eq i8 %i.k, 92
  br i1 %i.l, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.m = call i32 @stb__clex_parse_char(ptr noundef nonnull %.03850, ptr noundef nonnull %i.a) ; 2 uses
  %i.n = icmp sgt i32 %i.m, -1
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !24   ; 3 uses
  br i1 %i.n, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  %i.p = trunc nuw i32 %i.m to i8
  br label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 257, ptr %i.q, align 8, !tbaa !21
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %1, ptr %i.r, align 8, !tbaa !22
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.o, ptr %i.s, align 8, !tbaa !23
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.t, ptr %i.u, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %.critedge

bb.d:                                             ; preds = %.lr.ph
  %i.v = getelementptr inbounds nuw i8, ptr %.03850, i64 1
  br label %bb.e

bb.e:                                             ; preds = %.thread, %bb.d
  %.240 = phi ptr [ %i.o, %.thread ], [ %i.v, %bb.d ] ; 5 uses
  %.033 = phi i8 [ %i.p, %.thread ], [ %i.k, %bb.d ]
  %i.w = getelementptr inbounds nuw i8, ptr %.03451, i64 1 ; 3 uses
  %i.x = icmp ugt ptr %i.w, %i.i
  br i1 %i.x, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 257, ptr %i.y, align 8, !tbaa !21
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %1, ptr %i.z, align 8, !tbaa !22
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %.240, ptr %i.aa, align 8, !tbaa !23
  %i.ab = getelementptr inbounds nuw i8, ptr %.240, i64 1
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !16
  br label %.critedge

bb.g:                                             ; preds = %bb.e
  store i8 %.033, ptr %.03451, align 1, !tbaa !19
  %i.ad = load i8, ptr %.240, align 1, !tbaa !19  ; 2 uses
  %.not = icmp eq i8 %i.ad, %i.c
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !0

._crit_edge:                                      ; preds = %bb.g, %bb.a
  %.038.lcssa = phi ptr [ %i.b, %bb.a ], [ %.240, %bb.g ] ; 2 uses
  %.034.lcssa = phi ptr [ %i.e, %bb.a ], [ %i.w, %bb.g ] ; 2 uses
  store i8 0, ptr %.034.lcssa, align 1, !tbaa !19
  %i.ae = load ptr, ptr %i.d, align 8, !tbaa !17  ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !25
  %i.ag = ptrtoint ptr %.034.lcssa to i64
  %i.ah = ptrtoint ptr %i.ae to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = trunc i64 %i.ai to i32
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 %i.aj, ptr %i.ak, align 8, !tbaa !26
  %i.al = sext i32 %2 to i64
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.al, ptr %i.am, align 8, !tbaa !21
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %1, ptr %i.an, align 8, !tbaa !22
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %.038.lcssa, ptr %i.ao, align 8, !tbaa !23
  %i.ap = getelementptr inbounds nuw i8, ptr %.038.lcssa, i64 1
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !16
  br label %.critedge

.critedge:                                        ; preds = %bb.c, %bb.f, %._crit_edge
  ret i32 1
}

; Function Attrs: nofree norecurse nounwind uwtable
define range(i32 0, 2) i32 @stb_c_lexer_get_token(ptr nofree noundef %0) local_unnamed_addr #7 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 7 uses
  %i.e = alloca ptr, align 8                      ; 5 uses
  %i.f = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 36 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !16   ; 3 uses
  store ptr %i.h, ptr %i.b, align 8, !tbaa !24
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !15   ; 27 uses
  %i.k = ptrtoaddr ptr %i.j to i64
  %.not243283 = icmp eq ptr %i.h, %i.j
  br i1 %.not243283, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.backedge222
  %.lcssa269278284 = phi ptr [ %.lcssa269279, %.backedge222 ], [ %i.h, %bb.a ] ; 3 uses
  %scevgep = getelementptr i8, ptr %.lcssa269278284, i64 %i.k
  %.lcssa269278284322 = ptrtoaddr ptr %.lcssa269278284 to i64
  %i.l = sub i64 0, %.lcssa269278284322
  %scevgep323 = getelementptr i8, ptr %scevgep, i64 %i.l ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %stb__clex_iswhite.exit.thread
  %i.m = phi ptr [ %.lcssa269278284, %.lr.ph ], [ %i.o, %stb__clex_iswhite.exit.thread ] ; 101 uses
  %i.n = load i8, ptr %i.m, align 1, !tbaa !19
  switch i8 %i.n, label %.thread209.thread.a [
    i8 32, label %stb__clex_iswhite.exit.thread
    i8 13, label %stb__clex_iswhite.exit.thread
    i8 10, label %stb__clex_iswhite.exit.thread
    i8 9, label %stb__clex_iswhite.exit.thread
    i8 12, label %stb__clex_iswhite.exit.thread
    i8 47, label %bb.c
    i8 35, label %.preheader221
  ]

stb__clex_iswhite.exit.thread:                    ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 1 ; 2 uses
  %.not = icmp eq ptr %i.o, %i.j
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !32

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  %i.q = load i8, ptr %i.p, align 1, !tbaa !19
  switch i8 %i.q, label %.thread209.thread.a [
    i8 47, label %.preheader
    i8 42, label %bb.e
  ]

.preheader:                                       ; preds = %bb.c
  %.not195270 = icmp eq ptr %i.m, %i.j
  br i1 %.not195270, label %.backedge222, label %.lr.ph271

.lr.ph271:                                        ; preds = %.preheader, %bb.d
  %i.r = phi ptr [ %i.t, %bb.d ], [ %i.m, %.preheader ] ; 4 uses
  %i.s = load i8, ptr %i.r, align 1, !tbaa !19
  switch i8 %i.s, label %bb.d [
    i8 13, label %.backedge222
    i8 10, label %.backedge222
  ]

bb.d:                                             ; preds = %.lr.ph271
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 1 ; 2 uses
  %.not195 = icmp eq ptr %i.t, %i.j
  br i1 %.not195, label %.backedge222, label %.lr.ph271, !llvm.loop !33

.backedge222:                                     ; preds = %.lr.ph249, %.lr.ph249, %bb.h, %.lr.ph271, %.lr.ph271, %bb.d, %.preheader221, %.preheader, %bb.g
  %.lcssa269279 = phi ptr [ %i.ad, %bb.g ], [ %scevgep323, %bb.d ], [ %i.m, %.preheader ], [ %i.m, %.preheader221 ], [ %i.r, %.lr.ph271 ], [ %i.r, %.lr.ph271 ], [ %i.ae, %.lr.ph249 ], [ %i.ae, %.lr.ph249 ], [ %scevgep323, %bb.h ] ; 2 uses
  %.not243 = icmp eq ptr %.lcssa269279, %i.j
  br i1 %.not243, label %._crit_edge, label %.lr.ph

bb.e:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 2 ; 3 uses
  %.not191257 = icmp eq ptr %i.u, %i.j
  br i1 %.not191257, label %.thread210, label %.lr.ph260

.lr.ph260:                                        ; preds = %bb.e, %.critedge7
  %storemerge190258 = phi ptr [ %i.y, %.critedge7 ], [ %i.u, %bb.e ] ; 4 uses
  %i.v = load i8, ptr %storemerge190258, align 1, !tbaa !19
  %.not192 = icmp eq i8 %i.v, 42
  br i1 %.not192, label %bb.f, label %.critedge7

bb.f:                                             ; preds = %.lr.ph260
  %i.w = getelementptr inbounds nuw i8, ptr %storemerge190258, i64 1
  %i.x = load i8, ptr %i.w, align 1, !tbaa !19
  %.not193 = icmp eq i8 %i.x, 47
  br i1 %.not193, label %bb.g, label %.critedge7

.critedge7:                                       ; preds = %.lr.ph260, %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %storemerge190258, i64 1 ; 2 uses
  %.not191 = icmp eq ptr %i.y, %i.j
  br i1 %.not191, label %.thread210, label %.lr.ph260, !llvm.loop !34

.thread210:                                       ; preds = %bb.e, %.critedge7
  %storemerge190.lcssa255 = phi ptr [ %scevgep323, %.critedge7 ], [ %i.u, %bb.e ] ; 2 uses
  %i.z = getelementptr inbounds i8, ptr %storemerge190.lcssa255, i64 -1
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 257, ptr %i.aa, align 8, !tbaa !21
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.m, ptr %i.ab, align 8, !tbaa !22
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.z, ptr %i.ac, align 8, !tbaa !23
  store ptr %storemerge190.lcssa255, ptr %i.g, align 8, !tbaa !16
  br label %stb__clex_parse_string.exit

bb.g:                                             ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %storemerge190258, i64 2
  br label %.backedge222

.preheader221:                                    ; preds = %bb.b
  %.not187248 = icmp eq ptr %i.m, %i.j
  br i1 %.not187248, label %.backedge222, label %.lr.ph249

.lr.ph249:                                        ; preds = %.preheader221, %bb.h
  %i.ae = phi ptr [ %i.ag, %bb.h ], [ %i.m, %.preheader221 ] ; 4 uses
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !19
  switch i8 %i.af, label %bb.h [
    i8 13, label %.backedge222
    i8 10, label %.backedge222
  ]

bb.h:                                             ; preds = %.lr.ph249
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 1 ; 2 uses
  %.not187 = icmp eq ptr %i.ag, %i.j
  br i1 %.not187, label %.backedge222, label %.lr.ph249, !llvm.loop !35

._crit_edge:                                      ; preds = %.backedge222, %stb__clex_iswhite.exit.thread, %bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 256, ptr %i.ah, align 8, !tbaa !21
  br label %stb__clex_parse_string.exit

.thread209.thread.a:                              ; preds = %bb.c, %bb.b
  store ptr %i.m, ptr %i.b, align 8
  %1 = load i8, ptr %i.m, align 1, !tbaa !19      ; 7 uses
  switch i8 %1, label %bb.i [
    i8 43, label %bb.n
    i8 45, label %bb.r
    i8 38, label %bb.w
    i8 124, label %bb.aa
    i8 61, label %bb.ae
    i8 33, label %bb.ah
    i8 94, label %bb.ak
    i8 37, label %bb.an
    i8 42, label %bb.aq
    i8 47, label %bb.at
    i8 60, label %bb.aw
    i8 62, label %bb.bd
    i8 34, label %bb.bk
    i8 39, label %bb.br
    i8 48, label %bb.bx
    i8 49, label %bb.ca
    i8 50, label %bb.ca
    i8 51, label %bb.ca
    i8 52, label %bb.ca
    i8 53, label %bb.ca
    i8 54, label %bb.ca
    i8 55, label %bb.ca
    i8 56, label %bb.ca
    i8 57, label %bb.ca
  ]

bb.i:                                             ; preds = %.thread209.thread.a
  %i.ai = add i8 %1, -97
  %or.cond = icmp ult i8 %i.ai, 26
  br i1 %or.cond, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aj = add i8 %1, -65
  %or.cond198 = icmp ult i8 %i.aj, 26
  %i.ak = icmp slt i8 %1, 0
  %or.cond216 = or i1 %i.ak, %or.cond198
  br i1 %or.cond216, label %bb.k, label %switch.early.test

switch.early.test:                                ; preds = %bb.j
  switch i8 %1, label %bb.m [
    i8 95, label %bb.k
    i8 36, label %bb.k
  ]

bb.k:                                             ; preds = %switch.early.test, %switch.early.test, %bb.j, %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !17
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  store ptr %i.am, ptr %i.an, align 8, !tbaa !25
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !18
  %.not186292 = icmp sgt i32 %i.ap, 1
  br i1 %.not186292, label %.lr.ph295, label %._crit_edge296

._crit_edge296:                                   ; preds = %.backedge, %bb.k
  %.0.lcssa = phi i64 [ 0, %bb.k ], [ %indvars.iv, %.backedge ]
  %i.aq = getelementptr inbounds nuw i8, ptr %i.m, i64 %.0.lcssa ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 257, ptr %i.ar, align 8, !tbaa !21
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.m, ptr %i.as, align 8, !tbaa !22
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.aq, ptr %i.at, align 8, !tbaa !23
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 1
  store ptr %i.au, ptr %i.g, align 8, !tbaa !16
  br label %stb__clex_parse_string.exit

.lr.ph295:                                        ; preds = %bb.k, %.backedge
  %indvars.iv330 = phi i64 [ %indvars.iv.next331, %.backedge ], [ 0, %bb.k ] ; 3 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %.backedge ], [ 1, %bb.k ] ; 6 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv330
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !19
  %i.ax = load ptr, ptr %i.an, align 8, !tbaa !25
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %indvars.iv330
  store i8 %i.aw, ptr %i.ay, align 1, !tbaa !19
  %i.az = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !19
  %.fr = freeze i8 %i.ba                          ; 4 uses
  %i.bb = and i8 %.fr, -33
  %i.bc = add i8 %i.bb, -65
  %or.cond219 = icmp ult i8 %i.bc, 26
  %i.bd = add i8 %.fr, -48
  %or.cond203 = icmp ult i8 %i.bd, 10
  %or.cond220 = or i1 %or.cond203, %or.cond219
  %i.be = icmp slt i8 %.fr, 0
  %or.cond398 = or i1 %or.cond220, %i.be
  br i1 %or.cond398, label %.backedge, label %switch.early.test299

switch.early.test299:                             ; preds = %.lr.ph295
  switch i8 %.fr, label %bb.l [
    i8 95, label %.backedge
    i8 36, label %.backedge
  ]

.backedge:                                        ; preds = %switch.early.test299, %switch.early.test299, %.lr.ph295
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bf = load i32, ptr %i.ao, align 8, !tbaa !18
  %i.bg = sext i32 %i.bf to i64
  %.not186 = icmp slt i64 %indvars.iv.next, %i.bg
  %indvars.iv.next331 = add nuw nsw i64 %indvars.iv330, 1
  br i1 %.not186, label %.lr.ph295, label %._crit_edge296, !llvm.loop !36

bb.l:                                             ; preds = %switch.early.test299
  %i.bh = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv ; 2 uses
  %i.bi = trunc nuw nsw i64 %indvars.iv to i32
  %i.bj = load ptr, ptr %i.an, align 8, !tbaa !25
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %indvars.iv
  store i8 0, ptr %i.bk, align 1, !tbaa !19
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 %i.bi, ptr %i.bl, align 8, !tbaa !26
  %i.bm = getelementptr inbounds i8, ptr %i.bh, i64 -1
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 260, ptr %i.bn, align 8, !tbaa !21
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.m, ptr %i.bo, align 8, !tbaa !22
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.bm, ptr %i.bp, align 8, !tbaa !23
  store ptr %i.bh, ptr %i.g, align 8, !tbaa !16
  br label %stb__clex_parse_string.exit

bb.m:                                             ; preds = %switch.early.test, %bb.be, %bb.ax, %bb.ab, %bb.x, %bb.s, %bb.o, %bb.bd, %bb.aw, %bb.at, %bb.au, %bb.aq, %bb.ar, %bb.an, %bb.ao, %bb.ak, %bb.al, %bb.ah, %bb.ai, %bb.ae, %bb.af, %bb.aa, %bb.w, %bb.r, %bb.n
  %i.bq = zext nneg i8 %1 to i64
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.bq, ptr %i.br, align 8, !tbaa !21
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.m, ptr %i.bs, align 8, !tbaa !22
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.m, ptr %i.bt, align 8, !tbaa !23
  %i.bu = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  store ptr %i.bu, ptr %i.g, align 8, !tbaa !16
  br label %stb__clex_parse_string.exit

bb.n:                                             ; preds = %.thread209.thread.a
  %i.bv = getelementptr inbounds nuw i8, ptr %i.m, i64 1 ; 4 uses
  %.not185 = icmp eq ptr %i.bv, %i.j
  br i1 %.not185, label %bb.m, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !19
  switch i8 %i.bw, label %bb.m [
    i8 43, label %bb.p
    i8 61, label %bb.q
  ]

bb.p:                                             ; preds = %bb.o
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 272, ptr %i.bx, align 8, !tbaa !21
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.m, ptr %i.by, align 8, !tbaa !22
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.bv, ptr %i.bz, align 8, !tbaa !23
  %i.ca = getelementptr inbounds nuw i8, ptr %i.m, i64 2
  store ptr %i.ca, ptr %i.g, align 8, !tbaa !16
  br label %stb__clex_parse_string.exit

bb.q:                                             ; preds = %bb.o
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 274, ptr %i.cb, align 8, !tbaa !21
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.m, ptr %i.cc, align 8, !tbaa !22
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.bv, ptr %i.cd, align 8, !tbaa !23
  %i.ce = getelementptr inbounds nuw i8, ptr %i.m, i64 2
  store ptr %i.ce, ptr %i.g, align 8, !tbaa !16
  br label %stb__clex_parse_string.exit

bb.r:                                             ; preds = %.thread209.thread.a
  %i.cf = getelementptr inbounds nuw i8, ptr %i.m, i64 1 ; 5 uses
  %.not184 = icmp eq ptr %i.cf, %i.j
  br i1 %.not184, label %bb.m, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !19
  switch i8 %i.cg, label %bb.m [
    i8 45, label %bb.t
    i8 61, label %bb.u
    i8 62, label %bb.v
  ]

bb.t:                                             ; preds = %bb.s
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 273, ptr %i.ch, align 8, !tbaa !21
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.m, ptr %i.ci, align 8, !tbaa !22
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.cf, ptr %i.cj, align 8, !tbaa !23
  %i.ck = getelementptr inbounds nuw i8, ptr %i.m, i64 2
  store ptr %i.ck, ptr %i.g, align 8, !tbaa !16
  br label %stb__clex_parse_string.exit

bb.u:                                             ; preds = %bb.s
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 275, ptr %i.cl, align 8, !tbaa !21
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.m, ptr %i.cm, align 8, !tbaa !22
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.cf, ptr %i.cn, align 8, !tbaa !23
  %i.co = getelementptr inbounds nuw i8, ptr %i.m, i64 2
  store ptr %i.co, ptr %i.g, align 8, !tbaa !16
end_hunk_0
