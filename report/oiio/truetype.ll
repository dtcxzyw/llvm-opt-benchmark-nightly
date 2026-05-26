inline.NumInlined: 294
inline.NumDeleted: 158
begin_hunk_0_@tt_driver_init:bb.a
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @tt_driver_done(ptr readnone captures(none) %0) #1 {
bb.a:
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @tt_get_interface(ptr noundef %0, ptr noundef %1) #2 {
bb.a:
  %i.a = tail call ptr @ft_service_list_lookup(ptr noundef nonnull @tt_services, ptr noundef %1) #22 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %.not19 = icmp eq ptr %0, null
  br i1 %.not19, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !24   ; 2 uses
  %.not20 = icmp eq ptr %i.c, null
  br i1 %.not20, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = tail call ptr @FT_Get_Module(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.1) #22 ; 2 uses
  %.not21 = icmp eq ptr %i.d, null
  br i1 %.not21, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !25
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !26   ; 2 uses
  %.not22 = icmp eq ptr %i.g, null
  br i1 %.not22, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !29
  %i.j = tail call ptr %i.i(ptr noundef nonnull %0, ptr noundef %1) #22
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.e, %bb.c, %bb.b, %bb.a, %bb.f
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.j, %bb.f ], [ null, %bb.c ], [ null, %bb.b ], [ null, %bb.e ], [ null, %bb.d ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal i32 @tt_face_init(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !44
  %i.e = tail call ptr @FT_Get_Module_Interface(ptr noundef %i.d, ptr noundef nonnull @.str.1) #22 ; 3 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.w, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i32 @FT_Stream_Seek(ptr noundef %0, i64 noundef 0) #22 ; 2 uses
  %.not87 = icmp eq i32 %i.f, 0
  br i1 %.not87, label %bb.c, label %bb.w

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !45
  %i.i = tail call i32 %i.h(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) #22 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !46   ; 6 uses
  %.not88 = icmp eq i32 %i.i, 0
  br i1 %.not88, label %bb.d, label %bb.w

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 280
  %i.m = load i64, ptr %i.l, align 8, !tbaa !72
  switch i64 %i.m, label %bb.w [
    i64 65536, label %bb.e
    i64 131072, label %bb.e
    i64 1953658213, label %bb.e
    i64 2775278180, label %bb.e
    i64 2775348084, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d, %bb.d, %bb.d, %bb.d, %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 8 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !73
  %i.p = or i64 %i.o, 2048
  store i64 %i.p, ptr %i.n, align 8, !tbaa !73
  %i.q = icmp slt i32 %2, 0
  br i1 %i.q, label %bb.w, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !74
  %i.t = tail call i32 %i.s(ptr noundef %i.k, ptr noundef nonnull %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) #22 ; 2 uses
  %.not94 = icmp eq i32 %i.t, 0
  br i1 %.not94, label %bb.g, label %bb.w

bb.g:                                             ; preds = %bb.f
  %i.u = tail call fastcc zeroext i8 @tt_check_trickyness(ptr noundef nonnull %1)
  %.not95 = icmp eq i8 %i.u, 0
  br i1 %.not95, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = load i64, ptr %i.n, align 8, !tbaa !73
  %i.w = or i64 %i.v, 8192
  store i64 %i.w, ptr %i.n, align 8, !tbaa !73
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.x = tail call fastcc i32 @tt_face_load_hdmx(ptr noundef nonnull %1, ptr noundef %i.k) ; 2 uses
  %.not96 = icmp eq i32 %i.x, 0
  br i1 %.not96, label %bb.j, label %bb.w

bb.j:                                             ; preds = %bb.i
  %i.y = load i64, ptr %i.n, align 8, !tbaa !73
  %i.z = and i64 %i.y, 131073
  %or.cond113 = icmp eq i64 %i.z, 0
  br i1 %or.cond113, label %bb.u, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 240 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !75
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 104
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !76
  %.not99 = icmp eq ptr %i.ad, null
  br i1 %.not99, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ae = tail call fastcc i32 @tt_face_load_loca(ptr noundef nonnull %1, ptr noundef %i.k) ; 2 uses
  %.old2.not = icmp eq i32 %i.ae, 0
  br i1 %.old2.not, label %bb.m, label %bb.w

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.af = tail call fastcc i32 @tt_face_load_cvt(ptr noundef nonnull %1, ptr noundef %i.k) ; 3 uses
  %.not102 = icmp eq i32 %i.af, 0
  %i.ag = and i32 %i.af, 255
  %.not103 = icmp eq i32 %i.ag, 142
  %or.cond114 = or i1 %.not102, %.not103
  br i1 %or.cond114, label %bb.n, label %bb.w

bb.n:                                             ; preds = %bb.m
  %i.ah = tail call fastcc i32 @tt_face_load_fpgm(ptr noundef nonnull %1, ptr noundef %i.k) ; 3 uses
  %.not104 = icmp eq i32 %i.ah, 0
  %i.ai = and i32 %i.ah, 255
  %.not105 = icmp eq i32 %i.ai, 142
  %or.cond115 = or i1 %.not104, %.not105
  br i1 %or.cond115, label %bb.o, label %bb.w

bb.o:                                             ; preds = %bb.n
  %i.aj = tail call fastcc i32 @tt_face_load_prep(ptr noundef nonnull %1, ptr noundef %i.k) ; 8 uses
  %.not106 = icmp eq i32 %i.aj, 0
  %i.ak = and i32 %i.aj, 255
  %.not107 = icmp eq i32 %i.ak, 142
  %or.cond116 = or i1 %.not106, %.not107
  br i1 %or.cond116, label %bb.p, label %bb.w

bb.p:                                             ; preds = %bb.o
  %i.al = load ptr, ptr %i.aa, align 8, !tbaa !75
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 104
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !76
  %.not108 = icmp eq ptr %i.an, null
  br i1 %.not108, label %bb.q, label %bb.u

bb.q:                                             ; preds = %bb.p
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !82
  %.not109 = icmp eq i32 %i.ap, 0
  br i1 %.not109, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 1280
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !83
  %.not110 = icmp eq ptr %i.ar, null
  br i1 %.not110, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.as = tail call fastcc zeroext i8 @tt_check_single_notdef(ptr noundef nonnull %1)
  %.not111 = icmp eq i8 %i.as, 0
  br i1 %.not111, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.at = load i64, ptr %i.n, align 8, !tbaa !73
  %i.au = and i64 %i.at, -2
  store i64 %i.au, ptr %i.n, align 8, !tbaa !73
  br label %bb.u

bb.u:                                             ; preds = %bb.j, %bb.p, %bb.t, %bb.s, %bb.r, %bb.q
  %.071 = phi i32 [ %i.aj, %bb.p ], [ %i.aj, %bb.t ], [ %i.aj, %bb.s ], [ %i.aj, %bb.r ], [ %i.aj, %bb.q ], [ 0, %bb.j ]
  %i.av = lshr i32 %2, 16                         ; 2 uses
  %i.aw = load i64, ptr %i.n, align 8, !tbaa !73
  %i.ax = and i64 %i.aw, 256
  %i.ay = icmp ne i64 %i.ax, 0
  %i.az = icmp ne i32 %i.av, 0
  %or.cond = and i1 %i.az, %i.ay
  br i1 %or.cond, label %bb.v, label %select.unfold

bb.v:                                             ; preds = %bb.u
  %i.ba = tail call i32 @FT_Set_Named_Instance(ptr noundef nonnull %1, i32 noundef %i.av) #22 ; 2 uses
  %.not112 = icmp eq i32 %i.ba, 0
  br i1 %.not112, label %select.unfold, label %bb.w

select.unfold:                                    ; preds = %bb.v, %bb.u
  %.2.ph = phi i32 [ %.071, %bb.u ], [ 0, %bb.v ]
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 840
  store ptr @TT_Access_Glyph_Frame, ptr %i.bb, align 8, !tbaa !84
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 856
  store ptr @TT_Load_Glyph_Header, ptr %i.bc, align 8, !tbaa !85
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 864
  store ptr @TT_Load_Simple_Glyph, ptr %i.bd, align 8, !tbaa !86
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 872
  store ptr @TT_Load_Composite_Glyph, ptr %i.be, align 8, !tbaa !87
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 848
  store ptr @TT_Forget_Glyph_Frame, ptr %i.bf, align 8, !tbaa !88
  br label %bb.w

bb.w:                                             ; preds = %bb.l, %bb.v, %bb.d, %select.unfold, %bb.b, %bb.c, %bb.f, %bb.i, %bb.a, %bb.m, %bb.n, %bb.o, %bb.e
  %.0 = phi i32 [ 0, %bb.e ], [ %i.f, %bb.b ], [ %i.i, %bb.c ], [ 11, %bb.a ], [ %i.t, %bb.f ], [ %i.x, %bb.i ], [ %i.af, %bb.m ], [ %i.ah, %bb.n ], [ %i.aj, %bb.o ], [ %.2.ph, %select.unfold ], [ 2, %bb.d ], [ %i.ae, %bb.l ], [ %i.ba, %bb.v ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal void @tt_face_done(ptr noundef %0) #2 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !89
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !90   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 880
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !91   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1176
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !92   ; 2 uses
  %.not27 = icmp eq ptr %i.h, null
  br i1 %.not27, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1168
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !93
  tail call void %i.h(ptr noundef %i.j) #22
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.not28 = icmp eq ptr %i.f, null
  br i1 %.not28, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !94
  tail call void %i.l(ptr noundef nonnull %0) #22
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.m = load ptr, ptr %i.c, align 8, !tbaa !46
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1280
  tail call void @FT_Stream_ReleaseFrame(ptr noundef %i.m, ptr noundef nonnull %i.n) #22
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1272
  store i64 0, ptr %i.o, align 8, !tbaa !95
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !46   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !96
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1320 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !98
  tail call void @ft_mem_free(ptr noundef %i.r, ptr noundef %i.t) #22
  store ptr null, ptr %i.s, align 8, !tbaa !98
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1288
  tail call void @FT_Stream_ReleaseFrame(ptr noundef %i.p, ptr noundef nonnull %i.u) #22
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1152
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !99
  tail call void @ft_mem_free(ptr noundef %i.b, ptr noundef %i.w) #22
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1144
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.x, i8 0, i64 16, i1 false)
  tail call void @FT_Stream_ReleaseFrame(ptr noundef %i.d, ptr noundef nonnull %i.y) #22
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1136
  tail call void @FT_Stream_ReleaseFrame(ptr noundef %i.d, ptr noundef nonnull %i.z) #22
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 1112
  store i64 0, ptr %i.aa, align 8, !tbaa !100
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1128
  store i64 0, ptr %i.ab, align 8, !tbaa !101
  tail call void @tt_done_blend(ptr noundef nonnull %0)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 1216
  store ptr null, ptr %i.ac, align 8, !tbaa !102
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal noundef i32 @tt_size_init(ptr noundef writeonly captures(none) initializes((224, 225), (240, 248), (544, 552)) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 544
  store i32 -1, ptr %i.a, align 8, !tbaa !103
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 548
  store i32 -1, ptr %i.b, align 4, !tbaa !115
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i8 0, ptr %i.c, align 8, !tbaa !116
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i64 4294967295, ptr %i.d, align 8, !tbaa !117
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal void @tt_size_done(ptr noundef captures(none) initializes((256, 264), (272, 280), (288, 296), (440, 448), (456, 458), (544, 552)) %0) #2 {
bb.a:
  tail call fastcc void @tt_size_done_bytecode(ptr noundef %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i8 0, ptr %i.a, align 8, !tbaa !116
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @tt_slot_init(ptr noundef readonly captures(none) %0) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !118
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !125
  %i.d = tail call i32 @FT_GlyphLoader_CreateExtra(ptr noundef %i.c) #22
  ret i32 %i.d
}

; Function Attrs: nounwind uwtable
define internal i32 @tt_glyph_load(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 12 uses
  %4 = alloca %struct.TT_SBit_MetricsRec_, align 2 ; 12 uses
  %5 = alloca %struct.TT_LoaderRec_, align 8      ; 36 uses
  %i.c = alloca i16, align 2                      ; 5 uses
  %i.d = alloca i16, align 2                      ; 5 uses
  %i.e = alloca i16, align 2                      ; 5 uses
  %i.f = alloca i16, align 2                      ; 5 uses
  %i.g = alloca i16, align 2                      ; 3 uses
  %i.h = alloca i16, align 2                      ; 3 uses
  %i.i = alloca i16, align 2                      ; 4 uses
  %i.j = alloca i16, align 2                      ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !127  ; 18 uses
  %.not31 = icmp eq ptr %1, null
  br i1 %.not31, label %bb.cn, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not32 = icmp eq ptr %i.l, null
  br i1 %.not32, label %bb.cn, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.n = load i64, ptr %i.m, align 8, !tbaa !128
  %i.o = trunc i64 %i.n to i32
  %.not33 = icmp ult i32 %2, %i.o
  br i1 %.not33, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 240
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !75
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 104
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !76
  %.not34 = icmp eq ptr %i.s, null
  br i1 %.not34, label %bb.cn, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.t = and i32 %3, 2
  %.not35 = icmp eq i32 %i.t, 0
  br i1 %.not35, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.v = load i64, ptr %i.u, align 8, !tbaa !73
  %i.w = and i64 %i.v, 8192
  %.not36 = icmp eq i64 %i.w, 0
  %i.x = and i32 %3, -3
  %spec.select = select i1 %.not36, i32 %3, i32 %i.x ; 2 uses
  %i.y = lshr i32 %spec.select, 14
  %i.z = and i32 %i.y, 2
  %spec.select42 = or i32 %i.z, %spec.select
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.1 = phi i32 [ %3, %bb.e ], [ %spec.select42, %bb.f ] ; 3 uses
  %i.aa = and i32 %.1, 1025
  %.not38 = icmp eq i32 %i.aa, 0
  br i1 %.not38, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !73
  %i.ad = and i64 %i.ac, 8192
  %.not39 = icmp eq i64 %i.ad, 0
  %spec.select41.v = select i1 %.not39, i32 11, i32 9
  %spec.select41 = or i32 %spec.select41.v, %.1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.2 = phi i32 [ %spec.select41, %bb.h ], [ %.1, %bb.g ] ; 17 uses
  %i.ae = and i32 %.2, 2
  %.not40 = icmp eq i32 %i.ae, 0                  ; 3 uses
  %.v = select i1 %.not40, i64 96, i64 24
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 %.v
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !129
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !117 ; 2 uses
  %.not.i = icmp ne i64 %i.ai, 4294967295
  %i.aj = and i32 %.2, 8
  %i.ak = icmp eq i32 %i.aj, 0
  %or.cond178.i = and i1 %i.ak, %.not.i
  br i1 %or.cond178.i, label %bb.j, label %bb.y

bb.j:                                             ; preds = %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.am = load i64, ptr %i.al, align 8, !tbaa !130
  %i.an = and i64 %i.am, 2147418112
  %.not152.i = icmp eq i64 %i.an, 0
end_hunk_0
begin_hunk_1_@load_truetype_glyph:bb.a
  %i.rc = getelementptr inbounds [16 x i8], ptr %i.pn, i64 %i.rb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.rc, ptr noundef nonnull align 8 dereferenceable(16) %i.mn, i64 16, i1 false), !tbaa.struct !437
  %i.rd = call fastcc i32 @TT_Vary_Apply_Glyph_Deltas(ptr noundef %0, ptr noundef nonnull %11, ptr noundef %i.px) ; 2 uses
  store i32 %i.rd, ptr %i.e, align 4, !tbaa !3
  %.not306 = icmp ne i32 %i.rd, 0
  %brmerge = or i1 %.not306, %i.qb
  br i1 %brmerge, label %.loopexit, label %.lr.ph411.preheader

.lr.ph411.preheader:                              ; preds = %._crit_edge407
  %i.re = load ptr, ptr %i.qa, align 8, !tbaa !787
  br label %.lr.ph411

.lr.ph411:                                        ; preds = %.lr.ph411.preheader, %bb.cc
  %.1274409 = phi ptr [ %i.rp, %bb.cc ], [ %i.re, %.lr.ph411.preheader ] ; 3 uses
  %.1276408 = phi i16 [ %i.ro, %bb.cc ], [ 0, %.lr.ph411.preheader ] ; 2 uses
  %i.rf = getelementptr inbounds nuw i8, ptr %.1274409, i64 4
  %i.rg = load i16, ptr %i.rf, align 4, !tbaa !792
  %i.rh = and i16 %i.rg, 2
  %.not307 = icmp eq i16 %i.rh, 0
  br i1 %.not307, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %.lr.ph411
  %i.ri = sext i16 %.1276408 to i64
  %i.rj = getelementptr inbounds [16 x i8], ptr %i.pn, i64 %i.ri
  %i.rk = getelementptr inbounds nuw i8, ptr %.1274409, i64 8
  %i.rl = load <2 x i64>, ptr %i.rj, align 8, !tbaa !223
  %i.rm = trunc <2 x i64> %i.rl to <2 x i16>
  %i.rn = sext <2 x i16> %i.rm to <2 x i32>
  store <2 x i32> %i.rn, ptr %i.rk, align 8, !tbaa !3
  br label %bb.cc

bb.cc:                                            ; preds = %.lr.ph411, %bb.cb
  %i.ro = add i16 %.1276408, 1                    ; 2 uses
  %i.rp = getelementptr inbounds nuw i8, ptr %.1274409, i64 48
  %i.rq = sext i16 %i.ro to i32
  %i.rr = icmp sgt i32 %i.pk, %i.rq
  br i1 %i.rr, label %.lr.ph411, label %.loopexit, !llvm.loop !793

.loopexit:                                        ; preds = %bb.cc, %._crit_edge407, %bb.bz, %bb.by, %bb.bx, %bb.bw
  %i.rs = phi ptr [ null, %bb.bw ], [ null, %bb.bx ], [ %i.pu, %bb.by ], [ %i.pu, %bb.bz ], [ %i.pu, %._crit_edge407 ], [ %i.pu, %bb.cc ]
  %i.rt = phi ptr [ null, %bb.bw ], [ %i.pr, %bb.bx ], [ %i.pr, %bb.by ], [ %i.pr, %bb.bz ], [ %i.pr, %._crit_edge407 ], [ %i.pr, %bb.cc ]
  %.0272 = phi ptr [ null, %bb.bw ], [ null, %bb.bx ], [ null, %bb.by ], [ %i.px, %bb.bz ], [ %i.px, %._crit_edge407 ], [ %i.px, %bb.cc ]
  call void @ft_mem_free(ptr noundef %i.nx, ptr noundef %i.pn) #22
  call void @ft_mem_free(ptr noundef %i.nx, ptr noundef %i.rt) #22
  call void @ft_mem_free(ptr noundef %i.nx, ptr noundef %i.rs) #22
  call void @ft_mem_free(ptr noundef %i.nx, ptr noundef %.0272) #22
  %i.ru = load i32, ptr %i.e, align 4, !tbaa !3
  %.not308 = icmp eq i32 %i.ru, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  br i1 %.not308, label %bb.cd, label %.thread355

bb.cd:                                            ; preds = %.loopexit, %bb.bv
  %i.rv = load i64, ptr %i.o, align 8, !tbaa !162 ; 2 uses
  %i.rw = and i64 %i.rv, 1
  %i.rx = icmp eq i64 %i.rw, 0
  br i1 %i.rx, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %i.ry = load i64, ptr %i.mb, align 8, !tbaa !257
  %sext373 = shl i64 %i.ry, 32
  %i.rz = ashr exact i64 %sext373, 32
  %i.sa = mul nsw i64 %i.rz, %.0259               ; 2 uses
  %i.sb = ashr i64 %i.sa, 63
  %i.sc = add nsw i64 %i.sa, 32768
  %i.sd = add nsw i64 %i.sc, %i.sb
  %i.se = shl i64 %i.sd, 16
  %i.sf = ashr i64 %i.se, 32
  store i64 %i.sf, ptr %i.mb, align 8, !tbaa !257
  %i.sg = load i64, ptr %i.mf, align 8, !tbaa !768
  %sext376 = shl i64 %i.sg, 32
  %i.sh = ashr exact i64 %sext376, 32
  %i.si = mul nsw i64 %i.sh, %.0259               ; 2 uses
  %i.sj = ashr i64 %i.si, 63
  %i.sk = add nsw i64 %i.si, 32768
  %i.sl = add nsw i64 %i.sk, %i.sj
  %i.sm = shl i64 %i.sl, 16
  %i.sn = ashr i64 %i.sm, 32
  store i64 %i.sn, ptr %i.mf, align 8, !tbaa !768
  %i.so = load i64, ptr %i.mh, align 8, !tbaa !770
  %sext378 = shl i64 %i.so, 32
  %i.sp = ashr exact i64 %sext378, 32
  %i.sq = mul nsw i64 %i.sp, %.0259               ; 2 uses
  %i.sr = ashr i64 %i.sq, 63
  %i.ss = add nsw i64 %i.sq, 32768
  %i.st = add nsw i64 %i.ss, %i.sr
  %i.su = shl i64 %i.st, 16
  %i.sv = ashr i64 %i.su, 32
  store i64 %i.sv, ptr %i.mh, align 8, !tbaa !770
  %i.sw = load i64, ptr %i.mm, align 8, !tbaa !771
  %sext380 = shl i64 %i.sw, 32
  %i.sx = ashr exact i64 %sext380, 32
  %i.sy = mul nsw i64 %i.sx, %.0260               ; 2 uses
  %i.sz = ashr i64 %i.sy, 63
  %i.ta = add nsw i64 %i.sy, 32768
  %i.tb = add nsw i64 %i.ta, %i.sz
  %i.tc = shl i64 %i.tb, 16
  %i.td = ashr i64 %i.tc, 32
  store i64 %i.td, ptr %i.mm, align 8, !tbaa !771
  %i.te = load i64, ptr %i.mn, align 8, !tbaa !772
  %sext383 = shl i64 %i.te, 32
  %i.tf = ashr exact i64 %sext383, 32
  %i.tg = mul nsw i64 %i.tf, %.0259               ; 2 uses
  %i.th = ashr i64 %i.tg, 63
  %i.ti = add nsw i64 %i.tg, 32768
  %i.tj = add nsw i64 %i.ti, %i.th
  %i.tk = shl i64 %i.tj, 16
  %i.tl = ashr i64 %i.tk, 32
  store i64 %i.tl, ptr %i.mn, align 8, !tbaa !772
  %i.tm = load i64, ptr %i.mq, align 8, !tbaa !773
  %sext385 = shl i64 %i.tm, 32
  %i.tn = ashr exact i64 %sext385, 32
  %i.to = mul nsw i64 %i.tn, %.0260               ; 2 uses
  %i.tp = ashr i64 %i.to, 63
  %i.tq = add nsw i64 %i.to, 32768
  %i.tr = add nsw i64 %i.tq, %i.tp
  %i.ts = shl i64 %i.tr, 16
  %i.tt = ashr i64 %i.ts, 32
  store i64 %i.tt, ptr %i.mq, align 8, !tbaa !773
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.cd
  %i.tu = and i64 %i.rv, 1024
  %.not309 = icmp eq i64 %i.tu, 0
  br i1 %.not309, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  call void @FT_GlyphLoader_Add(ptr noundef %i.h) #22
  %i.tv = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.tw = load ptr, ptr %i.tv, align 8, !tbaa !168
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tw, i64 144
  store i32 1668246896, ptr %i.tx, align 8, !tbaa !147
  br label %.thread355

bb.ch:                                            ; preds = %bb.cf
  %i.ty = getelementptr inbounds nuw i8, ptr %i.h, i64 152
  %i.tz = load i32, ptr %i.ty, align 8, !tbaa !784 ; 2 uses
  %i.ua = getelementptr inbounds nuw i8, ptr %i.h, i64 80 ; 2 uses
  %i.ub = load i32, ptr %i.ua, align 8, !tbaa !248
  %i.uc = load ptr, ptr %i.dl, align 8, !tbaa !169
  %i.ud = load i32, ptr %i.cp, align 8, !tbaa !748
  call void @FT_GlyphLoader_Add(ptr noundef %i.h) #22
  %.not418 = icmp eq i32 %i.tz, 0
  br i1 %.not418, label %bb.cn, label %.lr.ph414

.lr.ph414:                                        ; preds = %bb.ch
  %i.ue = getelementptr inbounds nuw i8, ptr %i.h, i64 88 ; 2 uses
  %i.uf = zext i32 %i.ub to i64                   ; 2 uses
  %i.ug = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.uh = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 2 uses
  %i.ui = getelementptr inbounds nuw i8, ptr %12, i64 48 ; 2 uses
  %i.uj = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.uk = add i32 %2, 1
  %wide.trip.count = zext i32 %i.tz to i64
  br label %bb.ci

bb.ci:                                            ; preds = %.lr.ph414, %select.unfold
  %indvars.iv = phi i64 [ 0, %.lr.ph414 ], [ %indvars.iv.next, %select.unfold ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  %i.ul = load ptr, ptr %i.ue, align 8, !tbaa !251
  %i.um = getelementptr inbounds nuw [48 x i8], ptr %i.ul, i64 %i.uf
  %i.un = getelementptr inbounds nuw [48 x i8], ptr %i.um, i64 %indvars.iv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %12, ptr noundef nonnull align 8 dereferenceable(16) %i.mb, i64 16, i1 false), !tbaa.struct !437
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ug, ptr noundef nonnull align 8 dereferenceable(16) %i.mf, i64 16, i1 false), !tbaa.struct !437
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.uh, ptr noundef nonnull align 8 dereferenceable(16) %i.mh, i64 16, i1 false), !tbaa.struct !437
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ui, ptr noundef nonnull align 8 dereferenceable(16) %i.mn, i64 16, i1 false), !tbaa.struct !437
  %i.uo = load i32, ptr %i.uj, align 8, !tbaa !171
  %i.up = load i32, ptr %i.fi, align 4, !tbaa !173
  %i.uq = load i16, ptr %i.op, align 2, !tbaa !781 ; 2 uses
  %i.ur = sext i16 %i.uq to i32
  %i.us = load i32, ptr %i.un, align 8, !tbaa !794
  %i.ut = call fastcc i32 @load_truetype_glyph(ptr noundef %0, i32 noundef %i.us, i32 noundef %i.uk, i8 noundef zeroext 0) ; 2 uses
  store i32 %i.ut, ptr %i.e, align 4, !tbaa !3
  %.not312 = icmp eq i32 %i.ut, 0
  br i1 %.not312, label %bb.cj, label %.thread342

bb.cj:                                            ; preds = %bb.ci
  %i.uu = load ptr, ptr %i.ue, align 8, !tbaa !251
  %i.uv = getelementptr inbounds nuw [48 x i8], ptr %i.uu, i64 %i.uf
  %i.uw = getelementptr inbounds nuw [48 x i8], ptr %i.uv, i64 %indvars.iv ; 3 uses
  %i.ux = getelementptr inbounds nuw i8, ptr %i.uw, i64 4
  %i.uy = load i16, ptr %i.ux, align 4, !tbaa !792
  %i.uz = and i16 %i.uy, 512
  %.not313 = icmp eq i16 %i.uz, 0
  br i1 %.not313, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.mb, ptr noundef nonnull align 16 dereferenceable(16) %12, i64 16, i1 false), !tbaa.struct !437
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.mf, ptr noundef nonnull align 16 dereferenceable(16) %i.ug, i64 16, i1 false), !tbaa.struct !437
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.mh, ptr noundef nonnull align 16 dereferenceable(16) %i.uh, i64 16, i1 false), !tbaa.struct !437
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.mn, ptr noundef nonnull align 16 dereferenceable(16) %i.ui, i64 16, i1 false), !tbaa.struct !437
  store i32 %i.uo, ptr %i.uj, align 8, !tbaa !171
  store i32 %i.up, ptr %i.fi, align 4, !tbaa !173
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.cj
  %i.va = load i16, ptr %i.op, align 2, !tbaa !781 ; 2 uses
  %i.vb = icmp eq i16 %i.va, %i.uq
  br i1 %i.vb, label %select.unfold, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.vc = call fastcc i32 @TT_Process_Composite_Component(ptr noundef %0, ptr noundef nonnull %i.uw, i32 noundef %i.or, i32 noundef %i.ur) ; 2 uses
  store i32 %i.vc, ptr %i.e, align 4, !tbaa !3
  %.not314 = icmp eq i32 %i.vc, 0
  br i1 %.not314, label %select.unfold, label %.thread342

.thread342:                                       ; preds = %bb.ci, %bb.cm
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  br label %.thread355

select.unfold:                                    ; preds = %bb.cm, %bb.cl
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge415, label %bb.ci, !llvm.loop !795

._crit_edge415:                                   ; preds = %select.unfold
  %i.vd = icmp ugt i16 %i.va, %i.oq
  br label %bb.cn

bb.cn:                                            ; preds = %._crit_edge415, %bb.ch
  %.0267.lcssa = phi ptr [ %i.uw, %._crit_edge415 ], [ null, %bb.ch ] ; 2 uses
  %.0265.lcssa = phi i1 [ %i.vd, %._crit_edge415 ], [ false, %bb.ch ]
  store ptr %i.uc, ptr %i.dl, align 8, !tbaa !169
  store i32 %i.ud, ptr %i.cp, align 8, !tbaa !748
  store i64 %i.oy, ptr %i.ox, align 8, !tbaa !783
  %i.ve = load i64, ptr %i.o, align 8, !tbaa !162
  %i.vf = and i64 %i.ve, 2
  %i.vg = icmp eq i64 %i.vf, 0
  %i.vh = icmp ne ptr %.0267.lcssa, null
  %or.cond = and i1 %i.vh, %i.vg
  br i1 %or.cond, label %bb.co, label %bb.cq

bb.co:                                            ; preds = %bb.cn
  %i.vi = getelementptr inbounds nuw i8, ptr %.0267.lcssa, i64 4
  %i.vj = load i16, ptr %i.vi, align 4, !tbaa !792
  %i.vk = and i16 %i.vj, 256
  %.not310 = icmp ne i16 %i.vk, 0
  %or.cond326 = select i1 %.not310, i1 %.0265.lcssa, i1 false
  br i1 %or.cond326, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %bb.co
  %i.vl = call fastcc i32 @TT_Process_Composite_Glyph(ptr noundef %0, i32 noundef %i.or, i32 noundef %i.ot) ; 2 uses
  store i32 %i.vl, ptr %i.e, align 4, !tbaa !3
  %.not311 = icmp eq i32 %i.vl, 0
  br i1 %.not311, label %bb.cq, label %.thread355

bb.cq:                                            ; preds = %bb.cp, %bb.co, %bb.cn
  %i.vm = load i32, ptr %i.ua, align 8, !tbaa !248
  %.not315 = icmp eq i32 %i.vm, 0
  br i1 %.not315, label %.thread355, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.vn = getelementptr inbounds nuw i8, ptr %i.h, i64 88
  %i.vo = load ptr, ptr %i.vn, align 8, !tbaa !251
  %i.vp = getelementptr inbounds nuw i8, ptr %i.vo, i64 4
  %i.vq = load i16, ptr %i.vp, align 4, !tbaa !792
  %i.vr = and i16 %i.vq, 1024
  %.not316 = icmp eq i16 %i.vr, 0
  br i1 %.not316, label %.thread355, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.vs = getelementptr inbounds nuw i8, ptr %i.h, i64 56 ; 2 uses
  %i.vt = load i32, ptr %i.vs, align 8, !tbaa !796
  %i.vu = or i32 %i.vt, 64
  store i32 %i.vu, ptr %i.vs, align 8, !tbaa !796
  br label %.thread355

.thread361:                                       ; preds = %bb.bn, %bb.bk, %bb.bt, %bb.br, %bb.bp
  %i.vv = getelementptr inbounds nuw i8, ptr %i.f, i64 848
  %i.vw = load ptr, ptr %i.vv, align 8, !tbaa !88
  call void %i.vw(ptr noundef nonnull %0) #22
  br label %.thread355

.thread355:                                       ; preds = %.loopexit, %bb.cp, %.thread342, %bb.cg, %bb.cs, %bb.cr, %bb.cq, %tt_get_metrics.exit.thread, %bb.v, %bb.bm, %bb.bl, %tt_loader_set_pp.exit338, %bb.av, %bb.ay, %tt_get_metrics.exit, %bb.x, %bb.w, %.thread361
  br i1 %.not287, label %.thread355.thread, label %bb.ct

bb.ct:                                            ; preds = %.thread355
  %i.vx = load ptr, ptr %i.ab, align 8, !tbaa !738
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vx, i64 104
  %i.vz = load ptr, ptr %i.vy, align 8, !tbaa !76 ; 2 uses
  %i.wa = load ptr, ptr %i.vz, align 8, !tbaa !739
  %i.wb = getelementptr inbounds nuw i8, ptr %i.wa, i64 8
  %i.wc = load ptr, ptr %i.wb, align 8, !tbaa !797
  %i.wd = getelementptr inbounds nuw i8, ptr %i.vz, i64 8
  %i.we = load ptr, ptr %i.wd, align 8, !tbaa !745
  call void %i.wc(ptr noundef %i.we, ptr noundef nonnull %7) #22
  br label %.thread355.thread

.thread355.thread:                                ; preds = %bb.f, %bb.ct, %.thread355
  %i.wf = load i32, ptr %i.e, align 4, !tbaa !3
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #22
  ret i32 %i.wf
}

declare void @FT_Outline_Translate(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc i32 @compute_glyph_metrics(ptr noundef nonnull readonly captures(none) %0, i32 noundef %1) unnamed_addr #2 {
bb.a:
  %2 = alloca %struct.FT_BBox_, align 8           ; 8 uses
  %3 = alloca %struct.FT_Incremental_MetricsRec_, align 8 ; 7 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !166    ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !167
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !168  ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !162
  %i.h = and i64 %i.g, 1
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !129
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load i64, ptr %i.l, align 8, !tbaa !727
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.067 = phi i64 [ %i.m, %bb.b ], [ 65536, %bb.a ] ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 144
  %i.o = load i32, ptr %i.n, align 8, !tbaa !147
  %.not = icmp eq i32 %i.o, 1668246896
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 200
  call void @FT_Outline_Get_CBox(ptr noundef nonnull %i.p, ptr noundef nonnull %2) #22
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.q, i64 32, i1 false), !tbaa.struct !798
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.s = load i32, ptr %i.r, align 8, !tbaa !171
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  store i64 %i.t, ptr %i.u, align 8, !tbaa !172
  %i.v = load i64, ptr %2, align 8, !tbaa !799    ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 64 ; 2 uses
  store i64 %i.v, ptr %i.x, align 8, !tbaa !141
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.z = load i64, ptr %i.y, align 8, !tbaa !800  ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  store i64 %i.z, ptr %i.aa, align 8, !tbaa !142
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !244 ; 2 uses
  %.not79 = icmp eq ptr %i.ac, null
  br i1 %.not79, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = zext i32 %1 to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ad
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !224
  %i.ag = zext i8 %i.af to i64
  %i.ah = shl nuw nsw i64 %i.ag, 6
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !768
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !257
  %i.am = sub i64 %i.aj, %i.al
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.sink = phi i64 [ %i.am, %bb.h ], [ %i.ah, %bb.g ]
  %i.an = getelementptr inbounds nuw i8, ptr %i.e, i64 80 ; 2 uses
  store i64 %.sink, ptr %i.an, align 8, !tbaa !143
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !801
  %i.aq = sub i64 %i.ap, %i.v
  store i64 %i.aq, ptr %i.w, align 8, !tbaa !153
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !802
  %i.at = sub i64 %i.z, %i.as                     ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  store i64 %i.at, ptr %i.au, align 8, !tbaa !155
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 496
  %i.aw = load i8, ptr %i.av, align 8, !tbaa !266
  %.not80 = icmp eq i8 %i.aw, 0
  br i1 %.not80, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 542
  %i.ay = load i16, ptr %i.ax, align 2, !tbaa !803
  %.not81 = icmp eq i16 %i.ay, 0
  br i1 %.not81, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !771
  %i.bb = sub i64 %i.ba, %i.z
  %i.bc = call i64 @FT_DivFix(i64 noundef %i.bb, i64 noundef %.067) #22
end_hunk_1
