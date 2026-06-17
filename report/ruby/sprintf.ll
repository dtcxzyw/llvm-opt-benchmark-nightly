inline.NumInlined: 279
inline.NumDeleted: 61
begin_hunk_0_@ruby_vsprintf0:bb.a
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_vsprintf(ptr noundef nonnull %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @rb_str_buf_new(i64 noundef 120) #20 ; 3 uses
  %i.b = inttoptr i64 %i.a to ptr                 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !13
  %i.d = and i64 %i.c, 8192
  %.not.i.i = icmp eq i64 %i.d, 0
  %i.e = getelementptr i8, ptr %i.b, i64 24       ; 2 uses
  br i1 %.not.i.i, label %rb_enc_vsprintf.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !15
  br label %rb_enc_vsprintf.exit

rb_enc_vsprintf.exit:                             ; preds = %bb.a, %bb.b
  %i.g = phi ptr [ %i.f, %bb.b ], [ %i.e, %bb.a ]
  tail call fastcc void @ruby_vsprintf0(i64 noundef %i.a, ptr noundef %i.g, ptr noundef nonnull %0, ptr noundef %1)
  ret i64 %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_sprintf(ptr noundef nonnull %0, ...) local_unnamed_addr #0 {
bb.a:
  %1 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  call void @llvm.va_start.p0(ptr nonnull %1)
  %i.a = call i64 @rb_str_buf_new(i64 noundef 120) #20 ; 3 uses
  %i.b = inttoptr i64 %i.a to ptr                 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !13
  %i.d = and i64 %i.c, 8192
  %.not.i.i.i = icmp eq i64 %i.d, 0
  %i.e = getelementptr i8, ptr %i.b, i64 24       ; 2 uses
  br i1 %.not.i.i.i, label %rb_vsprintf.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !15
  br label %rb_vsprintf.exit

rb_vsprintf.exit:                                 ; preds = %bb.a, %bb.b
  %i.g = phi ptr [ %i.f, %bb.b ], [ %i.e, %bb.a ]
  call fastcc void @ruby_vsprintf0(i64 noundef %i.a, ptr noundef %i.g, ptr noundef nonnull %0, ptr noundef nonnull %1)
  call void @llvm.va_end.p0(ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  ret i64 %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_str_vcatf(i64 noundef %0, ptr noundef nonnull %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  store i64 %0, ptr %i.a, align 8, !tbaa !11
  %i.b = call i64 @rb_string_value(ptr noundef nonnull %i.a) #20 ; 0 uses
  %i.c = load i64, ptr %i.a, align 8, !tbaa !11
  call void @rb_str_modify(i64 noundef %i.c) #20
  %i.d = load i64, ptr %i.a, align 8, !tbaa !11   ; 2 uses
  %i.e = inttoptr i64 %i.d to ptr                 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !13
  %i.g = and i64 %i.f, 8192
  %.not.i = icmp eq i64 %i.g, 0
  %i.h = getelementptr i8, ptr %i.e, i64 24       ; 2 uses
  br i1 %.not.i, label %RSTRING_END.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !15
  br label %RSTRING_END.exit

RSTRING_END.exit:                                 ; preds = %bb.a, %bb.b
  %i.j = phi ptr [ %i.i, %bb.b ], [ %i.h, %bb.a ]
  %i.k = getelementptr i8, ptr %i.e, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !16
  %i.m = getelementptr i8, ptr %i.j, i64 %i.l
  call fastcc void @ruby_vsprintf0(i64 noundef %i.d, ptr noundef %i.m, ptr noundef %1, ptr noundef %2)
  %i.n = load i64, ptr %i.a, align 8, !tbaa !11
  ret i64 %i.n
}

declare void @rb_str_modify(i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind memory(argmem: readwrite)
declare ptr @__memcpy_chk(ptr noalias noundef writeonly, ptr noalias noundef readonly captures(none), i64 noundef, i64 noundef) local_unnamed_addr #11

declare ptr @onigenc_get_right_adjust_char_head(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i64 @rb_check_hash_type(i64 noundef) local_unnamed_addr #3

declare i64 @rb_key_err_new(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @rb_exc_raise(i64 noundef) local_unnamed_addr #1

declare i64 @rb_fix2int(i64 noundef) local_unnamed_addr #3

declare i64 @rb_num2int(i64 noundef) local_unnamed_addr #3

; Function Attrs: cold noreturn
declare void @rb_out_of_int(i64 noundef) local_unnamed_addr #12

declare i64 @rb_int2big(i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @BSD__sfvwrite(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1) #13 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 16         ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !83   ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.e = load i16, ptr %i.d, align 8, !tbaa !63
  %i.f = and i16 %i.e, 3
  %or.cond = icmp eq i16 %i.f, 0
  br i1 %or.cond, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.b
  %i.g = load ptr, ptr %1, align 8, !tbaa !86     ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !87
  %i.i = getelementptr i8, ptr %i.g, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !89
  %i.k = getelementptr i8, ptr %i.g, i64 16
  %i.l = getelementptr i8, ptr %0, i64 8          ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %.preheader, %bb.g
  %i.m = phi i64 [ %i.ad, %bb.g ], [ %i.b, %.preheader ] ; 2 uses
  %.034 = phi i64 [ %i.ac, %bb.g ], [ %i.j, %.preheader ] ; 2 uses
  %.032 = phi ptr [ %i.ab, %bb.g ], [ %i.h, %.preheader ]
  %.030 = phi ptr [ %.131.lcssa, %bb.g ], [ %i.k, %.preheader ] ; 2 uses
  %i.n = icmp eq i64 %.034, 0
  br i1 %i.n, label %.lr.ph, label %bb.d

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %.13140 = phi ptr [ %i.q, %.lr.ph ], [ %.030, %bb.c ] ; 3 uses
  %i.o = getelementptr i8, ptr %.13140, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !89   ; 2 uses
  %i.q = getelementptr i8, ptr %.13140, i64 16    ; 2 uses
  %i.r = icmp eq i64 %i.p, 0
  br i1 %i.r, label %.lr.ph, label %._crit_edge, !llvm.loop !90

._crit_edge:                                      ; preds = %.lr.ph
  %i.s = load ptr, ptr %.13140, align 8, !tbaa !87
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.c
  %.135.lcssa = phi i64 [ %i.p, %._crit_edge ], [ %.034, %bb.c ] ; 3 uses
  %.133.lcssa = phi ptr [ %i.s, %._crit_edge ], [ %.032, %bb.c ] ; 2 uses
  %.131.lcssa = phi ptr [ %i.q, %._crit_edge ], [ %.030, %bb.c ]
  %i.t = load i64, ptr %i.l, align 8, !tbaa !69   ; 3 uses
  %i.u = load i16, ptr %i.d, align 8, !tbaa !63
  %i.v = and i16 %i.u, 512
  %.not38 = icmp eq i16 %i.v, 0
  br i1 %.not38, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %spec.select = tail call i64 @llvm.umin.i64(i64 %.135.lcssa, i64 %i.t) ; 3 uses
  %.not.i = icmp eq i64 %i.t, 0
  %.pre45 = load ptr, ptr %0, align 8, !tbaa !67  ; 2 uses
  br i1 %.not.i, label %ruby_nonempty_memcpy.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %.pre45, ptr noundef nonnull readonly align 1 %.133.lcssa, i64 noundef range(i64 1, 0) %spec.select, i1 noundef false) #20
  %.pre = load i64, ptr %i.l, align 8, !tbaa !69
  %.pre44 = load ptr, ptr %0, align 8, !tbaa !67
  %.pre46.pre = load i64, ptr %i.a, align 8, !tbaa !83
  br label %ruby_nonempty_memcpy.exit

ruby_nonempty_memcpy.exit:                        ; preds = %bb.e, %bb.f
  %.pre46 = phi i64 [ %i.m, %bb.e ], [ %.pre46.pre, %bb.f ]
  %i.w = phi ptr [ %.pre45, %bb.e ], [ %.pre44, %bb.f ]
  %i.x = phi i64 [ 0, %bb.e ], [ %.pre, %bb.f ]
  %i.y = sub i64 %i.x, %spec.select
  store i64 %i.y, ptr %i.l, align 8, !tbaa !69
  %i.z = getelementptr i8, ptr %i.w, i64 %spec.select
  store ptr %i.z, ptr %0, align 8, !tbaa !67
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %ruby_nonempty_memcpy.exit
  %i.aa = phi i64 [ %.pre46, %ruby_nonempty_memcpy.exit ], [ %i.m, %bb.d ] ; 2 uses
  %.1 = phi i64 [ %.135.lcssa, %ruby_nonempty_memcpy.exit ], [ %i.t, %bb.d ] ; 4 uses
  %i.ab = getelementptr i8, ptr %.133.lcssa, i64 %.1
  %i.ac = sub i64 %.135.lcssa, %.1
  %i.ad = sub i64 %i.aa, %.1                      ; 2 uses
  store i64 %i.ad, ptr %i.a, align 8, !tbaa !83
  %.not39 = icmp eq i64 %i.aa, %.1
  br i1 %.not39, label %.loopexit, label %bb.c, !llvm.loop !91

.loopexit:                                        ; preds = %bb.g, %bb.b, %bb.a
  ret i32 0
}

; Function Attrs: noinline nounwind sspstrong uwtable
define internal fastcc i64 @BSD_vfprintf(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr nofree noundef %2) unnamed_addr #14 {
bb.a:
  %i.a = alloca [5 x i8], align 1                 ; 3 uses
  %i.b = alloca [5 x i8], align 1                 ; 3 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 10 uses
  %i.e = alloca i8, align 1                       ; 20 uses
  %i.f = alloca i32, align 4                      ; 19 uses
  %i.g = alloca [7 x i8], align 1                 ; 11 uses
  %i.h = alloca i64, align 8                      ; 11 uses
  %i.i = alloca i64, align 8                      ; 7 uses
  %3 = alloca %struct.__suio, align 8             ; 54 uses
  %4 = alloca [8 x %struct.__siov], align 16      ; 88 uses
  %i.j = alloca [1335 x i8], align 16             ; 16 uses
  %i.k = alloca [4 x i8], align 1                 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #20
  store i64 0, ptr %i.h, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #20
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 1335 ; 7 uses
  %i.m = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.n = load i16, ptr %i.m, align 8, !tbaa !63
  %i.o = and i16 %i.n, 26
  %i.p = icmp eq i16 %i.o, 10
  br i1 %i.p, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.q = getelementptr i8, ptr %0, i64 18
  %i.r = load i16, ptr %i.q, align 2, !tbaa !92
  %i.s = icmp sgt i16 %i.r, -1
  br i1 %i.s, label %bb.kg, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  store ptr %4, ptr %3, align 8, !tbaa !86
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 101 uses
  store i64 0, ptr %i.t, align 8, !tbaa !83
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 122 uses
  store i32 0, ptr %i.u, align 8, !tbaa !93
  %i.v = getelementptr i8, ptr %0, i64 40         ; 49 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 44 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 22 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.z = ptrtoint ptr %i.j to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 1 ; 2 uses
  %.021.i768 = getelementptr inbounds nuw i8, ptr %i.g, i64 2 ; 7 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 5 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.g, i64 3 ; 2 uses
  %scevgep.i773 = getelementptr inbounds nuw i8, ptr %i.g, i64 4 ; 2 uses
  %i.ad = ptrtoint ptr %i.g to i64                ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 5 ; 2 uses
  %i.af = getelementptr i8, ptr %0, i64 48        ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.j, i64 1334 ; 4 uses
  %i.ah = ptrtoint ptr %i.l to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %i.k, i64 1 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.k, i64 2 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.k, i64 3
  br label %.outer2270

.outer2270:                                       ; preds = %bb.kf, %bb.c
  %.0903.ph = phi i32 [ %.2905, %bb.kf ], [ 0, %bb.c ] ; 10 uses
  %.0543.ph = phi i64 [ %i.arj, %bb.kf ], [ 0, %bb.c ]
  %.0531.ph = phi double [ %.2533, %bb.kf ], [ 0.000000e+00, %bb.c ] ; 7 uses
  %.0526.ph = phi i32 [ %.3529, %bb.kf ], [ 0, %bb.c ] ; 16 uses
  %.0519.ph = phi i32 [ %.5524, %bb.kf ], [ 0, %bb.c ] ; 10 uses
  %.0492.ph = phi ptr [ %.7, %bb.kf ], [ %1, %bb.c ]
  br label %bb.d

bb.d:                                             ; preds = %.backedge2271, %.outer2270
  %.0555 = phi ptr [ %4, %.outer2270 ], [ %.2557, %.backedge2271 ] ; 4 uses
  %.0543 = phi i64 [ %.0543.ph, %.outer2270 ], [ %.1544, %.backedge2271 ] ; 3 uses
  %.0492 = phi ptr [ %.0492.ph, %.outer2270 ], [ %.3, %.backedge2271 ] ; 4 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  %.1 = phi ptr [ %.0492, %bb.d ], [ %i.am, %bb.f ] ; 5 uses
  %i.al = load i8, ptr %.1, align 1, !tbaa !15    ; 2 uses
  switch i8 %i.al, label %bb.f [
    i8 37, label %bb.g
    i8 0, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.am = getelementptr i8, ptr %.1, i64 1
  br label %bb.e, !llvm.loop !94

bb.g:                                             ; preds = %bb.e, %bb.e
  %i.an = ptrtoint ptr %.1 to i64
  %i.ao = ptrtoint ptr %.0492 to i64
  %i.ap = sub i64 %i.an, %i.ao                    ; 3 uses
  %.not = icmp eq ptr %.1, %.0492
  br i1 %.not, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  store ptr %.0492, ptr %.0555, align 8, !tbaa !87
  %i.aq = getelementptr i8, ptr %.0555, i64 8
  store i64 %i.ap, ptr %i.aq, align 8, !tbaa !89
  %i.ar = load i64, ptr %i.t, align 8, !tbaa !83
  %i.as = add i64 %i.ar, %i.ap                    ; 2 uses
  store i64 %i.as, ptr %i.t, align 8, !tbaa !83
  %i.at = getelementptr i8, ptr %.0555, i64 16
  %i.au = load i32, ptr %i.u, align 8, !tbaa !93
  %i.av = add i32 %i.au, 1                        ; 2 uses
  store i32 %i.av, ptr %i.u, align 8, !tbaa !93
  %i.aw = icmp sgt i32 %i.av, 7
  br i1 %i.aw, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ax = icmp eq i64 %i.as, 0
  br i1 %i.ax, label %BSD__sprint.exit.thread, label %BSD__sprint.exit

BSD__sprint.exit.thread:                          ; preds = %bb.i
  store i32 0, ptr %i.u, align 8, !tbaa !93
  br label %bb.j

BSD__sprint.exit:                                 ; preds = %bb.i
  %i.ay = load ptr, ptr %i.v, align 8, !tbaa !71
  %i.az = call i32 %i.ay(ptr noundef nonnull %0, ptr noundef nonnull %3) #20, !inline_history !95
  store i64 0, ptr %i.t, align 8, !tbaa !83
  store i32 0, ptr %i.u, align 8, !tbaa !93
  %.not639 = icmp eq i32 %i.az, 0
  br i1 %.not639, label %bb.j, label %.thread1011

bb.j:                                             ; preds = %BSD__sprint.exit.thread, %BSD__sprint.exit, %bb.h
  %.1556 = phi ptr [ %i.at, %bb.h ], [ %4, %BSD__sprint.exit ], [ %4, %BSD__sprint.exit.thread ]
  %i.ba = add i64 %i.ap, %.0543
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.g
  %.2557 = phi ptr [ %.1556, %bb.j ], [ %.0555, %bb.g ] ; 11 uses
  %.1544 = phi i64 [ %i.ba, %bb.j ], [ %.0543, %bb.g ] ; 57 uses
  %i.bb = icmp eq i8 %i.al, 0
  br i1 %i.bb, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bc = getelementptr i8, ptr %.1, i64 1
  store i8 0, ptr %i.e, align 1, !tbaa !15
  br label %.backedge

.backedge.loopexit:                               ; preds = %._crit_edge
  %.1536.fr.le2971 = freeze i32 %.1536
  br label %.backedge.backedge

.backedge:                                        ; preds = %.backedge.backedge, %bb.l
  %i.bd = phi i8 [ 0, %bb.l ], [ %.be, %.backedge.backedge ] ; 14 uses
  %.0546 = phi i32 [ 0, %bb.l ], [ %.0546.be, %.backedge.backedge ] ; 39 uses
  %.0540 = phi i32 [ 0, %bb.l ], [ %.0540.be, %.backedge.backedge ]
  %.0535 = phi i32 [ -1, %bb.l ], [ %.0535.be, %.backedge.backedge ]
  %.2 = phi ptr [ %i.bc, %bb.l ], [ %.2.be, %.backedge.backedge ] ; 2 uses
  %i.be = getelementptr i8, ptr %.2, i64 1
  %i.bf = load i8, ptr %.2, align 1, !tbaa !15
  %i.bg = sext i8 %i.bf to i32
  br label %.outer

.outer.loopexit:                                  ; preds = %bb.ab
  br label %.outer, !llvm.loop !96

.outer:                                           ; preds = %.outer.loopexit, %.backedge
  %.1541.ph = phi i32 [ %.0540, %.backedge ], [ %i.cw, %.outer.loopexit ] ; 13 uses
  %.1536.ph = phi i32 [ %.0535, %.backedge ], [ %.1536.fr.le2973, %.outer.loopexit ]
  %.0494.ph = phi i32 [ %i.bg, %.backedge ], [ %i.cz, %.outer.loopexit ]
  %.3.ph = phi ptr [ %i.be, %.backedge ], [ %i.cx, %.outer.loopexit ]
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.backedge, %.outer
  %.1536 = phi i32 [ %.1536.ph, %.outer ], [ %.1536.be, %._crit_edge.backedge ] ; 24 uses
  %.0494 = phi i32 [ %.0494.ph, %.outer ], [ %.0494.be, %._crit_edge.backedge ] ; 21 uses
  %.3 = phi ptr [ %.3.ph, %.outer ], [ %.3.be, %._crit_edge.backedge ] ; 26 uses
  switch i32 %.0494, label %bb.gc [
    i32 32, label %bb.m
    i32 35, label %bb.o
    i32 42, label %bb.p
    i32 45, label %.loopexit1039.loopexit
    i32 43, label %bb.u
    i32 46, label %bb.v
    i32 48, label %bb.aa
    i32 49, label %.preheader2255
    i32 50, label %.preheader2255
    i32 51, label %.preheader2255
    i32 52, label %.preheader2255
    i32 53, label %.preheader2255
    i32 54, label %.preheader2255
    i32 55, label %.preheader2255
    i32 56, label %.preheader2255
    i32 57, label %.preheader2255
    i32 76, label %.backedge.loopexit
    i32 104, label %bb.ac
    i32 116, label %bb.ad
    i32 122, label %bb.ad
    i32 108, label %bb.ad
    i32 99, label %bb.ae
    i32 105, label %bb.ai
    i32 68, label %bb.ar
    i32 100, label %.loopexit1040.loopexit
    i32 97, label %bb.bg
    i32 65, label %bb.bg
    i32 101, label %bb.bi
    i32 69, label %bb.bi
    i32 102, label %bb.bj
    i32 103, label %.loopexit1041.loopexit
    i32 71, label %.loopexit1041.loopexit
    i32 110, label %bb.dd
    i32 79, label %bb.dr
    i32 111, label %.loopexit1042.loopexit
    i32 112, label %bb.ef
    i32 115, label %bb.ej
    i32 85, label %bb.ep
    i32 117, label %.loopexit1043.loopexit
    i32 88, label %.loopexit1044.loopexit
    i32 120, label %bb.fd
    i32 0, label %.loopexit
  ]

.preheader2255:                                   ; preds = %._crit_edge, %._crit_edge, %._crit_edge, %._crit_edge, %._crit_edge, %._crit_edge, %._crit_edge, %._crit_edge, %._crit_edge
  %.1536.fr.le2973 = freeze i32 %.1536
  br label %bb.ab

bb.m:                                             ; preds = %._crit_edge
  %.1536.fr.le2985 = freeze i32 %.1536            ; 2 uses
  %.not668 = icmp eq i8 %i.bd, 0
  br i1 %.not668, label %bb.n, label %.backedge.backedge

.backedge.backedge:                               ; preds = %bb.m, %bb.n, %bb.o, %.loopexit1039, %bb.u, %bb.z, %bb.aa, %bb.ac, %bb.ad, %bb.s, %.backedge.loopexit
  %.be = phi i8 [ %i.bd, %bb.ad ], [ %i.bd, %bb.o ], [ %i.bd, %bb.s ], [ %i.bd, %.loopexit1039 ], [ 43, %bb.u ], [ %i.bd, %bb.z ], [ %i.bd, %bb.aa ], [ %i.bd, %bb.m ], [ %i.bd, %bb.ac ], [ 32, %bb.n ], [ %i.bd, %.backedge.loopexit ]
  %.0546.be = phi i32 [ %i.dd, %bb.ad ], [ %i.bh, %bb.o ], [ %.0546, %bb.s ], [ %i.bu, %.loopexit1039 ], [ %.0546, %bb.u ], [ %.0546, %bb.z ], [ %i.ct, %bb.aa ], [ %.0546, %bb.m ], [ %i.dc, %bb.ac ], [ %.0546, %bb.n ], [ %.0546, %.backedge.loopexit ]
  %.0540.be = phi i32 [ %.1541.ph, %bb.ad ], [ %.1541.ph, %bb.o ], [ %i.br, %bb.s ], [ %.2542, %.loopexit1039 ], [ %.1541.ph, %bb.u ], [ %.1541.ph, %bb.z ], [ %.1541.ph, %bb.aa ], [ %.1541.ph, %bb.m ], [ %.1541.ph, %bb.ac ], [ %.1541.ph, %bb.n ], [ %.1541.ph, %.backedge.loopexit ]
  %.0535.be = phi i32 [ %.1536.fr.le2967, %bb.ad ], [ %.1536.fr.le2983, %bb.o ], [ %.1536.fr.le2981, %bb.s ], [ %.1536.fr2653, %.loopexit1039 ], [ %.1536.fr.le2977, %bb.u ], [ %i.ck, %bb.z ], [ %.1536.fr.le2975, %bb.aa ], [ %.1536.fr.le2985, %bb.m ], [ %.1536.fr.le2969, %bb.ac ], [ %.1536.fr.le2985, %bb.n ], [ %.1536.fr.le2971, %.backedge.loopexit ]
  %.2.be = phi ptr [ %.3, %bb.ad ], [ %.3, %bb.o ], [ %.3, %bb.s ], [ %.3, %.loopexit1039 ], [ %.3, %bb.u ], [ %i.bv, %bb.z ], [ %.3, %bb.aa ], [ %.3, %bb.m ], [ %.3, %bb.ac ], [ %.3, %bb.n ], [ %.3, %.backedge.loopexit ]
  br label %.backedge

bb.n:                                             ; preds = %bb.m
  store i8 32, ptr %i.e, align 1, !tbaa !15
  br label %.backedge.backedge

bb.o:                                             ; preds = %._crit_edge
  %.1536.fr.le2983 = freeze i32 %.1536
  %i.bh = or i32 %.0546, 1
  br label %.backedge.backedge

bb.p:                                             ; preds = %._crit_edge
  %.1536.fr.le2981 = freeze i32 %.1536            ; 2 uses
  %i.bi = load i32, ptr %2, align 8               ; 3 uses
  %i.bj = icmp ult i32 %i.bi, 41
  br i1 %i.bj, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bk = load ptr, ptr %i.x, align 8
  %i.bl = zext nneg i32 %i.bi to i64
  %i.bm = getelementptr i8, ptr %i.bk, i64 %i.bl
  %i.bn = add nuw nsw i32 %i.bi, 8
  store i32 %i.bn, ptr %2, align 8
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.bo = load ptr, ptr %i.w, align 8             ; 2 uses
  %i.bp = getelementptr i8, ptr %i.bo, i64 8
  store ptr %i.bp, ptr %i.w, align 8
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bq = phi ptr [ %i.bm, %bb.q ], [ %i.bo, %bb.r ]
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !7  ; 3 uses
  %i.bs = icmp sgt i32 %i.br, -1
  br i1 %i.bs, label %.backedge.backedge, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bt = sub i32 0, %i.br
  br label %.loopexit1039

.loopexit1039.loopexit:                           ; preds = %._crit_edge
  %.1536.fr.le2979 = freeze i32 %.1536
  br label %.loopexit1039

.loopexit1039:                                    ; preds = %.loopexit1039.loopexit, %bb.t
  %.1536.fr2653 = phi i32 [ %.1536.fr.le2981, %bb.t ], [ %.1536.fr.le2979, %.loopexit1039.loopexit ]
  %.2542 = phi i32 [ %i.bt, %bb.t ], [ %.1541.ph, %.loopexit1039.loopexit ]
  %i.bu = or i32 %.0546, 4
  br label %.backedge.backedge

bb.u:                                             ; preds = %._crit_edge
  %.1536.fr.le2977 = freeze i32 %.1536
  store i8 43, ptr %i.e, align 1, !tbaa !15
  br label %.backedge.backedge

bb.v:                                             ; preds = %._crit_edge
  %i.bv = getelementptr i8, ptr %.3, i64 1        ; 3 uses
  %i.bw = load i8, ptr %.3, align 1, !tbaa !15    ; 2 uses
  %i.bx = icmp eq i8 %i.bw, 42
  br i1 %i.bx, label %bb.w, label %.preheader

.preheader:                                       ; preds = %bb.v
  %.14951283 = sext i8 %i.bw to i32               ; 2 uses
  %i.by = add nsw i32 %.14951283, -48             ; 2 uses
  %i.bz = icmp ult i32 %i.by, 10
  br i1 %i.bz, label %.lr.ph, label %._crit_edge.backedge

bb.w:                                             ; preds = %bb.v
  %i.ca = load i32, ptr %2, align 8               ; 3 uses
  %i.cb = icmp ult i32 %i.ca, 41
  br i1 %i.cb, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.cc = load ptr, ptr %i.x, align 8
  %i.cd = zext nneg i32 %i.ca to i64
  %i.ce = getelementptr i8, ptr %i.cc, i64 %i.cd
  %i.cf = add nuw nsw i32 %i.ca, 8
  store i32 %i.cf, ptr %2, align 8
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.cg = load ptr, ptr %i.w, align 8             ; 2 uses
  %i.ch = getelementptr i8, ptr %i.cg, i64 8
  store ptr %i.ch, ptr %i.w, align 8
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.ci = phi ptr [ %i.ce, %bb.x ], [ %i.cg, %bb.y ]
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !7
  %i.ck = call i32 @llvm.smax.i32(i32 %i.cj, i32 -1)
  br label %.backedge.backedge

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %i.cl = phi i32 [ %i.cq, %.lr.ph ], [ %i.by, %.preheader ]
  %.41285 = phi ptr [ %i.co, %.lr.ph ], [ %i.bv, %.preheader ] ; 2 uses
  %.05711284 = phi i32 [ %i.cn, %.lr.ph ], [ 0, %.preheader ]
  %i.cm = mul i32 %.05711284, 10
  %i.cn = add i32 %i.cl, %i.cm                    ; 2 uses
  %i.co = getelementptr i8, ptr %.41285, i64 1    ; 2 uses
  %i.cp = load i8, ptr %.41285, align 1, !tbaa !15
  %.1495 = sext i8 %i.cp to i32                   ; 2 uses
  %i.cq = add nsw i32 %.1495, -48                 ; 2 uses
  %i.cr = icmp ult i32 %i.cq, 10
  br i1 %i.cr, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !97

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.cs = call i32 @llvm.smax.i32(i32 %i.cn, i32 -1)
  br label %._crit_edge.backedge

._crit_edge.backedge:                             ; preds = %._crit_edge.loopexit, %.preheader
  %.1536.be = phi i32 [ 0, %.preheader ], [ %i.cs, %._crit_edge.loopexit ]
  %.0494.be = phi i32 [ %.14951283, %.preheader ], [ %.1495, %._crit_edge.loopexit ]
  %.3.be = phi ptr [ %i.bv, %.preheader ], [ %i.co, %._crit_edge.loopexit ]
  br label %._crit_edge

bb.aa:                                            ; preds = %._crit_edge
  %.1536.fr.le2975 = freeze i32 %.1536
  %i.ct = or i32 %.0546, 128
  br label %.backedge.backedge

bb.ab:                                            ; preds = %.preheader2255, %bb.ab
  %.1572 = phi i32 [ %i.cw, %bb.ab ], [ 0, %.preheader2255 ]
  %.2496 = phi i32 [ %i.cz, %bb.ab ], [ %.0494, %.preheader2255 ]
  %.5 = phi ptr [ %i.cx, %bb.ab ], [ %.3, %.preheader2255 ] ; 2 uses
  %i.cu = mul i32 %.1572, 10
  %i.cv = add nsw i32 %.2496, -48
  %i.cw = add i32 %i.cv, %i.cu                    ; 2 uses
  %i.cx = getelementptr i8, ptr %.5, i64 1        ; 2 uses
  %i.cy = load i8, ptr %.5, align 1, !tbaa !15
  %i.cz = sext i8 %i.cy to i32                    ; 3 uses
  %i.da = add nsw i32 %i.cz, -48
  %i.db = icmp ult i32 %i.da, 10
  br i1 %i.db, label %bb.ab, label %.outer.loopexit, !llvm.loop !96

bb.ac:                                            ; preds = %._crit_edge
  %.1536.fr.le2969 = freeze i32 %.1536
  %i.dc = or i32 %.0546, 64
  br label %.backedge.backedge

bb.ad:                                            ; preds = %._crit_edge, %._crit_edge, %._crit_edge
  %.1536.fr.le2967 = freeze i32 %.1536
  %i.dd = or i32 %.0546, 16
  br label %.backedge.backedge

bb.ae:                                            ; preds = %._crit_edge
  %i.de = load i32, ptr %2, align 8               ; 3 uses
  %i.df = icmp ult i32 %i.de, 41
  br i1 %i.df, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.dg = load ptr, ptr %i.x, align 8
  %i.dh = zext nneg i32 %i.de to i64
  %i.di = getelementptr i8, ptr %i.dg, i64 %i.dh
  %i.dj = add nuw nsw i32 %i.de, 8
  store i32 %i.dj, ptr %2, align 8
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  %i.dk = load ptr, ptr %i.w, align 8             ; 2 uses
  %i.dl = getelementptr i8, ptr %i.dk, i64 8
  store ptr %i.dl, ptr %i.w, align 8
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.dm = phi ptr [ %i.di, %bb.af ], [ %i.dk, %bb.ag ]
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !7
  %i.do = trunc i32 %i.dn to i8
  store i8 %i.do, ptr %i.j, align 16, !tbaa !15
  store i8 0, ptr %i.e, align 1, !tbaa !15
  br label %bb.gd

bb.ai:                                            ; preds = %._crit_edge
  %.1536.fr.le2965 = freeze i32 %.1536            ; 4 uses
  %i.dp = load ptr, ptr %i.af, align 8, !tbaa !72
  %.not660 = icmp ne ptr %i.dp, null
  %i.dq = and i32 %.0546, 80
  %i.dr = icmp eq i32 %i.dq, 16
  %or.cond740 = select i1 %.not660, i1 %i.dr, i1 false
  br i1 %or.cond740, label %bb.aj, label %.loopexit1040

bb.aj:                                            ; preds = %bb.ai
  %i.ds = load i8, ptr %.3, align 1, !tbaa !15
  %i.dt = icmp eq i8 %i.ds, 11
  br i1 %i.dt, label %bb.ak, label %.loopexit1040

bb.ak:                                            ; preds = %bb.aj
  %i.du = getelementptr i8, ptr %.3, i64 1        ; 2 uses
  %i.dv = load i64, ptr %i.t, align 8, !tbaa !83
  %.not663 = icmp eq i64 %i.dv, 0
  br i1 %.not663, label %bb.al, label %BSD__sprint.exit762

BSD__sprint.exit762:                              ; preds = %bb.ak
  %i.dw = load ptr, ptr %i.v, align 8, !tbaa !71
  %i.dx = call i32 %i.dw(ptr noundef nonnull %0, ptr noundef nonnull %3) #20, !inline_history !95
  store i64 0, ptr %i.t, align 8, !tbaa !83
  %.not664 = icmp eq i32 %i.dx, 0
  br i1 %.not664, label %bb.al, label %.thread1011

bb.al:                                            ; preds = %BSD__sprint.exit762, %bb.ak
  store i32 0, ptr %i.u, align 8, !tbaa !93
  %i.dy = load i32, ptr %2, align 8               ; 3 uses
  %i.dz = icmp ult i32 %i.dy, 41
  br i1 %i.dz, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.ea = load ptr, ptr %i.x, align 8
  %i.eb = zext nneg i32 %i.dy to i64
  %i.ec = getelementptr i8, ptr %i.ea, i64 %i.eb
  %i.ed = add nuw nsw i32 %i.dy, 8
  store i32 %i.ed, ptr %2, align 8
  br label %bb.ao

bb.an:                                            ; preds = %bb.al
  %i.ee = load ptr, ptr %i.w, align 8             ; 2 uses
  %i.ef = getelementptr i8, ptr %i.ee, i64 8
  store ptr %i.ef, ptr %i.w, align 8
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.eg = phi ptr [ %i.ec, %bb.am ], [ %i.ee, %bb.an ]
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !11
  store i64 %i.eh, ptr %i.h, align 8, !tbaa !11
  %i.ei = load ptr, ptr %i.af, align 8, !tbaa !72
  %i.ej = load i8, ptr %i.e, align 1, !tbaa !15
  %i.ek = sext i8 %i.ej to i32
  %i.el = call ptr %i.ei(ptr noundef nonnull %0, i64 noundef 8, ptr noundef nonnull %i.h, ptr noundef nonnull %i.i, i32 noundef %i.ek) #20 ; 3 uses
  store i8 0, ptr %i.e, align 1, !tbaa !15
  %.not665 = icmp eq ptr %i.el, null
  br i1 %.not665, label %.thread1011, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.em = icmp slt i32 %.1536.fr.le2965, 0
  %.pre1577 = load i64, ptr %i.i, align 8, !tbaa !11 ; 2 uses
  br i1 %i.em, label %bb.ge, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.en = zext nneg i32 %.1536.fr.le2965 to i64
  %i.eo = call i64 @llvm.smin.i64(i64 %.pre1577, i64 %i.en)
  %i.ep = trunc i64 %i.eo to i32
  br label %bb.gd

bb.ar:                                            ; preds = %._crit_edge
  %.1536.fr.le2963 = freeze i32 %.1536
  %i.eq = or i32 %.0546, 16
  br label %.loopexit1040

.loopexit1040.loopexit:                           ; preds = %._crit_edge
  %.1536.fr.le2961 = freeze i32 %.1536
  br label %.loopexit1040

.loopexit1040:                                    ; preds = %.loopexit1040.loopexit, %bb.ar, %bb.ai, %bb.aj
  %.1536.fr2656 = phi i32 [ %.1536.fr.le2965, %bb.aj ], [ %.1536.fr.le2963, %bb.ar ], [ %.1536.fr.le2965, %bb.ai ], [ %.1536.fr.le2961, %.loopexit1040.loopexit ] ; 3 uses
  %.1547 = phi i32 [ %.0546, %bb.aj ], [ %i.eq, %bb.ar ], [ %.0546, %bb.ai ], [ %.0546, %.loopexit1040.loopexit ] ; 5 uses
  %i.er = and i32 %.1547, 16
  %.not661 = icmp eq i32 %i.er, 0
  br i1 %.not661, label %bb.aw, label %bb.as

bb.as:                                            ; preds = %.loopexit1040
  %i.es = load i32, ptr %2, align 8               ; 3 uses
  %i.et = icmp ult i32 %i.es, 41
  br i1 %i.et, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.eu = load ptr, ptr %i.x, align 8
  %i.ev = zext nneg i32 %i.es to i64
  %i.ew = getelementptr i8, ptr %i.eu, i64 %i.ev
  %i.ex = add nuw nsw i32 %i.es, 8
  store i32 %i.ex, ptr %2, align 8
  br label %bb.av

bb.au:                                            ; preds = %bb.as
  %i.ey = load ptr, ptr %i.w, align 8             ; 2 uses
  %i.ez = getelementptr i8, ptr %i.ey, i64 8
  store ptr %i.ez, ptr %i.w, align 8
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %i.fa = phi ptr [ %i.ew, %bb.at ], [ %i.ey, %bb.au ]
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !11
  br label %bb.bf

bb.aw:                                            ; preds = %.loopexit1040
  %i.fc = and i32 %.1547, 64
  %.not662 = icmp eq i32 %i.fc, 0
  %i.fd = load i32, ptr %2, align 8               ; 5 uses
  %i.fe = icmp ult i32 %i.fd, 41                  ; 2 uses
  br i1 %.not662, label %bb.bb, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  br i1 %i.fe, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.ff = load ptr, ptr %i.x, align 8
  %i.fg = zext nneg i32 %i.fd to i64
  %i.fh = getelementptr i8, ptr %i.ff, i64 %i.fg
  %i.fi = add nuw nsw i32 %i.fd, 8
  store i32 %i.fi, ptr %2, align 8
  br label %bb.ba

bb.az:                                            ; preds = %bb.ax
  %i.fj = load ptr, ptr %i.w, align 8             ; 2 uses
  %i.fk = getelementptr i8, ptr %i.fj, i64 8
  store ptr %i.fk, ptr %i.w, align 8
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %i.fl = phi ptr [ %i.fh, %bb.ay ], [ %i.fj, %bb.az ]
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !7
  %i.fn = zext i32 %i.fm to i64
  %sext = shl i64 %i.fn, 48
  %i.fo = ashr exact i64 %sext, 48
  br label %bb.bf

bb.bb:                                            ; preds = %bb.aw
  br i1 %i.fe, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.fp = load ptr, ptr %i.x, align 8
  %i.fq = zext nneg i32 %i.fd to i64
  %i.fr = getelementptr i8, ptr %i.fp, i64 %i.fq
  %i.fs = add nuw nsw i32 %i.fd, 8
  store i32 %i.fs, ptr %2, align 8
  br label %bb.be

bb.bd:                                            ; preds = %bb.bb
  %i.ft = load ptr, ptr %i.w, align 8             ; 2 uses
  %i.fu = getelementptr i8, ptr %i.ft, i64 8
  store ptr %i.fu, ptr %i.w, align 8
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %i.fv = phi ptr [ %i.fr, %bb.bc ], [ %i.ft, %bb.bd ]
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !7
  %i.fx = sext i32 %i.fw to i64
  br label %bb.bf

bb.bf:                                            ; preds = %bb.ba, %bb.be, %bb.av
  %i.fy = phi i64 [ %i.fb, %bb.av ], [ %i.fo, %bb.ba ], [ %i.fx, %bb.be ] ; 4 uses
  store i64 %i.fy, ptr %i.h, align 8, !tbaa !11
  %i.fz = icmp slt i64 %i.fy, 0
  br i1 %i.fz, label %.thread1727, label %bb.fs

.thread1727:                                      ; preds = %bb.bf
  %i.ga = sub i64 0, %i.fy                        ; 2 uses
  store i64 %i.ga, ptr %i.h, align 8, !tbaa !11
  store i8 45, ptr %i.e, align 1, !tbaa !15
  %i.gb = and i32 %.1547, -129
  %i.gc = icmp slt i32 %.1536.fr2656, 0
  %spec.select7471714 = select i1 %i.gc, i32 %.1547, i32 %i.gb
  br label %22

bb.bg:                                            ; preds = %._crit_edge, %._crit_edge
  %.1536.fr.le2959 = freeze i32 %.1536            ; 3 uses
  %i.gd = icmp sgt i32 %.1536.fr.le2959, 0
  br i1 %i.gd, label %bb.bh, label %bb.bk

bb.bh:                                            ; preds = %bb.bg
  %i.ge = or i32 %.0546, 1
  %i.gf = add nuw i32 %.1536.fr.le2959, 1         ; 2 uses
  br label %bb.bk

bb.bi:                                            ; preds = %._crit_edge, %._crit_edge
  %.1536.fr.le2957 = freeze i32 %.1536            ; 3 uses
  %.not650 = icmp ne i32 %.1536.fr.le2957, 0
  %i.gg = zext i1 %.not650 to i32
  %spec.select = or i32 %.0546, %i.gg
  %i.gh = icmp eq i32 %.1536.fr.le2957, -1        ; 2 uses
  %i.gi = add nuw i32 %.1536.fr.le2957, 1         ; 2 uses
  %.1520 = select i1 %i.gh, i32 %.0519.ph, i32 %i.gi
  %i.gj = select i1 %i.gh, i32 7, i32 %i.gi
  br label %bb.bk

bb.bj:                                            ; preds = %._crit_edge
  %.1536.fr.le2955 = freeze i32 %.1536            ; 2 uses
  %.not649 = icmp ne i32 %.1536.fr.le2955, 0
  %i.gk = zext i1 %.not649 to i32
  %spec.select741 = or i32 %.0546, %i.gk
  br label %.loopexit1041

.loopexit1041.loopexit:                           ; preds = %._crit_edge, %._crit_edge
  %.1536.fr.le2953 = freeze i32 %.1536
  br label %.loopexit1041

.loopexit1041:                                    ; preds = %.loopexit1041.loopexit, %bb.bj
  %.1536.fr2658 = phi i32 [ %.1536.fr.le2955, %bb.bj ], [ %.1536.fr.le2953, %.loopexit1041.loopexit ] ; 3 uses
  %.3549 = phi i32 [ %spec.select741, %bb.bj ], [ %.0546, %.loopexit1041.loopexit ]
  %i.gl = icmp eq i32 %.1536.fr2658, -1           ; 2 uses
  %..1536 = select i1 %i.gl, i32 6, i32 %.1536.fr2658
  %.0519..1536 = select i1 %i.gl, i32 %.0519.ph, i32 %.1536.fr2658
  br label %bb.bk

bb.bk:                                            ; preds = %.loopexit1041, %bb.bg, %bb.bh, %bb.bi
  %.4550 = phi i32 [ %i.ge, %bb.bh ], [ %.0546, %bb.bg ], [ %spec.select, %bb.bi ], [ %.3549, %.loopexit1041 ] ; 6 uses
  %.2537 = phi i32 [ %i.gf, %bb.bh ], [ %.1536.fr.le2959, %bb.bg ], [ %i.gj, %bb.bi ], [ %..1536, %.loopexit1041 ] ; 6 uses
  %.2521 = phi i32 [ %i.gf, %bb.bh ], [ %.0519.ph, %bb.bg ], [ %.1520, %bb.bi ], [ %.0519..1536, %.loopexit1041 ] ; 12 uses
  %i.gm = load i32, ptr %i.y, align 4             ; 3 uses
  %i.gn = icmp ult i32 %i.gm, 161
  br i1 %i.gn, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.go = load ptr, ptr %i.x, align 8
  %i.gp = zext nneg i32 %i.gm to i64
  %i.gq = getelementptr i8, ptr %i.go, i64 %i.gp
  %i.gr = add nuw nsw i32 %i.gm, 16
  store i32 %i.gr, ptr %i.y, align 4
  br label %bb.bn

bb.bm:                                            ; preds = %bb.bk
  %i.gs = load ptr, ptr %i.w, align 8             ; 2 uses
  %i.gt = getelementptr i8, ptr %i.gs, i64 8
  store ptr %i.gt, ptr %i.w, align 8
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %i.gu = phi ptr [ %i.gq, %bb.bl ], [ %i.gs, %bb.bm ]
  %i.gv = load double, ptr %i.gu, align 8, !tbaa !98 ; 13 uses
  %i.gw = call double @llvm.fabs.f64(double %i.gv) #26
  %i.gx = fcmp oeq double %i.gw, +inf
  br i1 %i.gx, label %bb.bo, label %bb.bq

bb.bo:                                            ; preds = %bb.bn
  %i.gy = fcmp olt double %i.gv, 0.000000e+00
  br i1 %i.gy, label %bb.bp, label %bb.gd

bb.bp:                                            ; preds = %bb.bo
  store i8 45, ptr %i.e, align 1, !tbaa !15
  br label %bb.gd

bb.bq:                                            ; preds = %bb.bn
  %i.gz = fcmp uno double %i.gv, 0.000000e+00
  br i1 %i.gz, label %bb.gd, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.ha = or i32 %.4550, 256                      ; 8 uses
  %i.hb = call i32 @llvm.smin.i32(i32 %.2537, i32 1026) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  %i.hc = icmp eq i32 %.0494, 102                 ; 2 uses
  %..i = select i1 %i.hc, i32 3, i32 2
  %i.hd = fcmp olt double %i.gv, 0.000000e+00
  br i1 %i.hd, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.he = fneg double %i.gv
  br label %bb.bu

bb.bt:                                            ; preds = %bb.br
  %i.hf = fcmp une double %i.gv, 0.000000e+00
  %i.hg = bitcast double %i.gv to i64
  %i.hh = icmp sgt i64 %i.hg, -1
  %or.cond48.i.not = or i1 %i.hf, %i.hh
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %.sink.i = phi i1 [ %or.cond48.i.not, %bb.bt ], [ false, %bb.bs ]
  %.044.i = phi double [ %i.gv, %bb.bt ], [ %i.he, %bb.bs ] ; 3 uses
  switch i32 %.0494, label %bb.bw [
    i32 97, label %bb.bv
    i32 65, label %bb.bv
  ]

bb.bv:                                            ; preds = %bb.bu, %bb.bu
  %i.hi = icmp eq i32 %.0494, 97
  %i.hj = select i1 %i.hi, ptr @ruby_hexdigits, ptr getelementptr (i8, ptr @ruby_hexdigits, i64 16)
  %i.hk = call ptr @ruby_hdtoa(double noundef %.044.i, ptr noundef %i.hj, i32 noundef %i.hb, ptr noundef nonnull %i.f, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) #20
  br label %bb.bx

bb.bw:                                            ; preds = %bb.bu
  %i.hl = call ptr @ruby_dtoa(double noundef %.044.i, i32 noundef %..i, i32 noundef %i.hb, ptr noundef nonnull %i.f, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) #20
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %.042.i = phi ptr [ %i.hk, %bb.bv ], [ %i.hl, %bb.bw ] ; 4 uses
  store i8 0, ptr %i.j, align 16, !tbaa !15
  %i.hm = load ptr, ptr %i.d, align 8, !tbaa !99  ; 2 uses
  %i.hn = ptrtoint ptr %i.hm to i64
  %i.ho = ptrtoint ptr %.042.i to i64
  %i.hp = sub i64 %i.hn, %i.ho                    ; 2 uses
  %.not.i.i = icmp eq ptr %i.hm, %.042.i
  br i1 %.not.i.i, label %ruby_nonempty_memcpy.exit.i, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.hq = call ptr @__memcpy_chk(ptr noundef nonnull %i.j, ptr noundef nonnull readonly %.042.i, i64 noundef range(i64 1, 0) %i.hp, i64 noundef 1335) #20, !alias.scope !100 ; 0 uses
  br label %ruby_nonempty_memcpy.exit.i

ruby_nonempty_memcpy.exit.i:                      ; preds = %bb.by, %bb.bx
  %i.hr = getelementptr i8, ptr %i.j, i64 %i.hp
  store ptr %i.hr, ptr %i.d, align 8, !tbaa !99
  call void @free(ptr noundef %.042.i) #20
  %i.hs = and i32 %.4550, 1                       ; 5 uses
  %.not.i = icmp eq i32 %i.hs, 0                  ; 2 uses
  br i1 %.not.i, label %ruby_nonempty_memcpy.exit..loopexit_crit_edge.i, label %bb.bz

ruby_nonempty_memcpy.exit..loopexit_crit_edge.i:  ; preds = %ruby_nonempty_memcpy.exit.i
  %.pre49.i = load ptr, ptr %i.d, align 8, !tbaa !99
  br label %cvt.exit

bb.bz:                                            ; preds = %ruby_nonempty_memcpy.exit.i
  %i.ht = sext i32 %i.hb to i64
  %i.hu = getelementptr i8, ptr %i.j, i64 %i.ht   ; 2 uses
  br i1 %i.hc, label %bb.ca, label %bb.cd

bb.ca:                                            ; preds = %bb.bz
  %i.hv = load i8, ptr %i.j, align 16, !tbaa !15
  %i.hw = icmp eq i8 %i.hv, 48
  %i.hx = fcmp une double %.044.i, 0.000000e+00
  %or.cond3.i = and i1 %i.hx, %i.hw
  br i1 %or.cond3.i, label %bb.cb, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.ca
  %.pre.i = load i32, ptr %i.f, align 4, !tbaa !7
  br label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  %i.hy = sub i32 1, %i.hb                        ; 2 uses
  store i32 %i.hy, ptr %i.f, align 4, !tbaa !7
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %._crit_edge.i
  %i.hz = phi i32 [ %.pre.i, %._crit_edge.i ], [ %i.hy, %bb.cb ]
  %i.ia = sext i32 %i.hz to i64
  %i.ib = getelementptr i8, ptr %i.hu, i64 %i.ia
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.bz
  %.0.i763 = phi ptr [ %i.ib, %bb.cc ], [ %i.hu, %bb.bz ] ; 2 uses
  %i.ic = load ptr, ptr %i.d, align 8, !tbaa !99  ; 3 uses
  %i.id = icmp ult ptr %i.ic, %.0.i763
  br i1 %i.id, label %.lr.ph.i, label %cvt.exit

.lr.ph.i:                                         ; preds = %bb.cd, %.lr.ph.i
  %i.ie = phi ptr [ %i.ig, %.lr.ph.i ], [ %i.ic, %bb.cd ] ; 2 uses
  %i.if = getelementptr i8, ptr %i.ie, i64 1
  store ptr %i.if, ptr %i.d, align 8, !tbaa !99
  store i8 48, ptr %i.ie, align 1, !tbaa !15
  %i.ig = load ptr, ptr %i.d, align 8, !tbaa !99  ; 3 uses
  %i.ih = icmp ult ptr %i.ig, %.0.i763
  br i1 %i.ih, label %.lr.ph.i, label %cvt.exit, !llvm.loop !104

cvt.exit:                                         ; preds = %.lr.ph.i, %ruby_nonempty_memcpy.exit..loopexit_crit_edge.i, %bb.cd
  %i.ii = phi ptr [ %.pre49.i, %ruby_nonempty_memcpy.exit..loopexit_crit_edge.i ], [ %i.ic, %bb.cd ], [ %i.ig, %.lr.ph.i ]
  %i.ij = ptrtoint ptr %i.ii to i64
  %i.ik = sub i64 %i.ij, %i.z
  %i.il = trunc i64 %i.ik to i32                  ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  %i.im = icmp eq i32 %.0494, 103
  switch i32 %.0494, label %bb.ch [
    i32 103, label %bb.ce
    i32 71, label %bb.ce
  ]

bb.ce:                                            ; preds = %cvt.exit, %cvt.exit
  %i.in = load i32, ptr %i.f, align 4, !tbaa !7   ; 4 uses
  %i.io = icmp slt i32 %i.in, -3
  br i1 %i.io, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.ip = icmp sgt i32 %i.in, %.2537
  %i.iq = icmp sgt i32 %i.in, 1
  %or.cond3 = and i1 %i.ip, %i.iq
  br i1 %or.cond3, label %bb.cg, label %.thread915

bb.cg:                                            ; preds = %bb.cf, %bb.ce
  %i.ir = select i1 %i.im, i32 101, i32 69
  br label %bb.ch

bb.ch:                                            ; preds = %cvt.exit, %bb.cg
  %.3497 = phi i32 [ %i.ir, %bb.cg ], [ %.0494, %cvt.exit ] ; 9 uses
  %i.is = and i32 %.3497, -33
  %or.cond5 = icmp eq i32 %i.is, 65
  br i1 %or.cond5, label %bb.ci, label %bb.cl

bb.ci:                                            ; preds = %bb.ch
  %i.it = or i32 %.4550, 258
  %i.iu = load i32, ptr %i.f, align 4, !tbaa !7
  %i.iv = add i32 %i.iu, -1                       ; 3 uses
  store i32 %i.iv, ptr %i.f, align 4, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.iw = trunc nuw nsw i32 %.3497 to i8
  %i.ix = add nuw nsw i8 %i.iw, 15
  store i8 %i.ix, ptr %i.g, align 1, !tbaa !15
  %i.iy = icmp slt i32 %i.iv, 0
  %storemerge.i = select i1 %i.iy, i8 45, i8 43
  %.023.i = call i32 @llvm.abs.i32(i32 %i.iv, i1 false) ; 3 uses
  store i8 %storemerge.i, ptr %i.aa, align 1, !tbaa !15
  %i.iz = icmp sgt i32 %.023.i, 9
  br i1 %i.iz, label %.preheader.i, label %bb.ck

.preheader.i:                                     ; preds = %bb.ci, %.preheader.i
  %indvars.iv.i = phi ptr [ %scevgep31.i, %.preheader.i ], [ %scevgep.i773, %bb.ci ] ; 2 uses
  %indvar.i = phi i64 [ %indvar.next.i, %.preheader.i ], [ 0, %bb.ci ] ; 2 uses
  %.124.i = phi i32 [ %i.je, %.preheader.i ], [ %.023.i, %bb.ci ] ; 3 uses
  %.0.i765 = phi ptr [ %i.jd, %.preheader.i ], [ %i.ae, %bb.ci ] ; 2 uses
end_hunk_0
begin_hunk_1_@BSD_vfprintf:bb.a
  br i1 %i.kf, label %.preheader.i774, label %bb.cn, !llvm.loop !105

bb.cn:                                            ; preds = %.preheader.i774
  %i.kg = trunc nuw i32 %i.ke to i8
  %i.kh = or disjoint i8 %i.kg, 48
  %i.ki = getelementptr i8, ptr %.0.i778, i64 -2  ; 3 uses
  store i8 %i.kh, ptr %i.ki, align 1, !tbaa !15
  %i.kj = icmp ult ptr %i.ki, %i.ab
  br i1 %i.kj, label %.lr.ph.preheader.i781, label %exponent.exit782

.lr.ph.preheader.i781:                            ; preds = %bb.cn
  %i.kk = add i64 %indvar.i776, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.021.i768, ptr nonnull align 1 %i.ki, i64 %i.kk, i1 false), !tbaa !15
  br label %exponent.exit782

bb.co:                                            ; preds = %bb.cm
  %i.kl = and i32 %.3497, 15
  %.not.i769 = icmp eq i32 %i.kl, 0
  br i1 %.not.i769, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  store i8 48, ptr %.021.i768, align 1, !tbaa !15
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.co
  %.2.i770 = phi ptr [ %i.ac, %bb.cp ], [ %.021.i768, %bb.co ] ; 2 uses
  %i.km = trunc i32 %.023.i767 to i8
  %i.kn = add i8 %i.km, 48
  %i.ko = getelementptr i8, ptr %.2.i770, i64 1
  store i8 %i.kn, ptr %.2.i770, align 1, !tbaa !15
  br label %exponent.exit782

exponent.exit782:                                 ; preds = %bb.cn, %.lr.ph.preheader.i781, %bb.cq
  %.3.i771 = phi ptr [ %i.ko, %bb.cq ], [ %.021.i768, %bb.cn ], [ %indvars.iv.i775, %.lr.ph.preheader.i781 ]
  %i.kp = ptrtoint ptr %.3.i771 to i64
  %i.kq = sub i64 %i.kp, %i.ad
  %i.kr = trunc i64 %i.kq to i32                  ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %i.ks = add i32 %i.kr, %i.il                    ; 2 uses
  %i.kt = icmp slt i32 %i.il, 2
  %or.cond742 = and i1 %i.kt, %.not.i
  br i1 %or.cond742, label %bb.db, label %bb.cr

bb.cr:                                            ; preds = %exponent.exit782
  %i.ku = add i32 %.2521, 1
  %i.kv = add i32 %i.ks, 1
  br label %bb.db

bb.cs:                                            ; preds = %bb.cl
  %i.kw = icmp eq i32 %.3497, 102
  %.pre = load i32, ptr %i.f, align 4, !tbaa !7   ; 4 uses
  br i1 %i.kw, label %bb.ct, label %.thread915

bb.ct:                                            ; preds = %bb.cs
  %i.kx = icmp sgt i32 %.pre, 0
  br i1 %i.kx, label %bb.cu, label %bb.cw

bb.cu:                                            ; preds = %bb.ct
  %i.ky = or i32 %.2537, %i.hs
  %or.cond743 = icmp eq i32 %i.ky, 0
  br i1 %or.cond743, label %bb.db, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.kz = add i32 %.2537, 1
  %i.la = add i32 %i.kz, %.pre
  br label %bb.db

bb.cw:                                            ; preds = %bb.ct
  %.not653 = icmp eq i32 %.2537, 0
  br i1 %.not653, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %bb.cw
  %spec.select744 = add nuw nsw i32 %i.hs, 1
  br label %bb.db

bb.cy:                                            ; preds = %bb.cw
  %i.lb = add i32 %.2537, 2
  br label %bb.db

.thread915:                                       ; preds = %bb.cf, %bb.cs
  %i.lc = phi i32 [ %i.in, %bb.cf ], [ %.pre, %bb.cs ] ; 4 uses
  %.not651 = icmp slt i32 %i.lc, %i.il
  br i1 %.not651, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %.thread915
  %spec.select745 = add i32 %i.lc, %i.hs
  br label %bb.db

bb.da:                                            ; preds = %.thread915
  %i.ld = sub i32 2, %i.lc
  %.inv = icmp slt i32 %i.lc, 1
  %i.le = select i1 %.inv, i32 %i.ld, i32 1
  %i.lf = add i32 %i.le, %i.il
  br label %bb.db

bb.db:                                            ; preds = %exponent.exit, %bb.cz, %bb.cx, %bb.cu, %exponent.exit782, %bb.cr, %bb.da, %bb.cv, %bb.cy
  %.5551 = phi i32 [ %i.ha, %bb.cz ], [ %i.ha, %bb.cx ], [ %i.ha, %bb.cr ], [ %i.ha, %exponent.exit782 ], [ %i.ha, %bb.cv ], [ %i.ha, %bb.cu ], [ %i.ha, %bb.cy ], [ %i.ha, %bb.da ], [ %i.it, %exponent.exit ] ; 2 uses
  %.1527 = phi i32 [ %.0526.ph, %bb.cz ], [ %.0526.ph, %bb.cx ], [ %i.kr, %bb.cr ], [ %i.kr, %exponent.exit782 ], [ %.0526.ph, %bb.cv ], [ %.0526.ph, %bb.cu ], [ %.0526.ph, %bb.cy ], [ %.0526.ph, %bb.da ], [ %i.jp, %exponent.exit ] ; 2 uses
  %.3522 = phi i32 [ %.2521, %bb.cz ], [ %.2521, %bb.cx ], [ %i.ku, %bb.cr ], [ %.2521, %exponent.exit782 ], [ %.2521, %bb.cv ], [ %.2521, %bb.cu ], [ %.2521, %bb.cy ], [ %.2521, %bb.da ], [ %.2521, %exponent.exit ] ; 2 uses
  %.0510 = phi i32 [ %spec.select745, %bb.cz ], [ %spec.select744, %bb.cx ], [ %i.kv, %bb.cr ], [ %i.ks, %exponent.exit782 ], [ %i.la, %bb.cv ], [ %.pre, %bb.cu ], [ %i.lb, %bb.cy ], [ %i.lf, %bb.da ], [ %spec.select759, %exponent.exit ] ; 2 uses
  %.4498 = phi i32 [ 103, %bb.cz ], [ 102, %bb.cx ], [ %.3497, %bb.cr ], [ %.3497, %exponent.exit782 ], [ 102, %bb.cv ], [ 102, %bb.cu ], [ 102, %bb.cy ], [ 103, %bb.da ], [ %i.jq, %exponent.exit ] ; 2 uses
  br i1 %.sink.i, label %._crit_edge1602, label %bb.dc

._crit_edge1602:                                  ; preds = %bb.db
  %.pre1578.pre = load i8, ptr %i.e, align 1, !tbaa !15
  br label %bb.gd

bb.dc:                                            ; preds = %bb.db
  store i8 45, ptr %i.e, align 1, !tbaa !15
  br label %bb.gd

bb.dd:                                            ; preds = %._crit_edge
  %i.lg = and i32 %.0546, 16
  %.not647 = icmp eq i32 %i.lg, 0
  br i1 %.not647, label %bb.di, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.lh = load i32, ptr %2, align 8               ; 3 uses
  %i.li = icmp ult i32 %i.lh, 41
  br i1 %i.li, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %bb.de
  %i.lj = load ptr, ptr %i.x, align 8
  %i.lk = zext nneg i32 %i.lh to i64
  %i.ll = getelementptr i8, ptr %i.lj, i64 %i.lk
  %i.lm = add nuw nsw i32 %i.lh, 8
  store i32 %i.lm, ptr %2, align 8
  br label %bb.dh

bb.dg:                                            ; preds = %bb.de
  %i.ln = load ptr, ptr %i.w, align 8             ; 2 uses
  %i.lo = getelementptr i8, ptr %i.ln, i64 8
  store ptr %i.lo, ptr %i.w, align 8
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dg, %bb.df
  %i.lp = phi ptr [ %i.ll, %bb.df ], [ %i.ln, %bb.dg ]
  %i.lq = load ptr, ptr %i.lp, align 8, !tbaa !36
  store i64 %.1544, ptr %i.lq, align 8, !tbaa !11
  br label %.backedge2271

.backedge2271:                                    ; preds = %bb.dh, %bb.dq, %bb.dm
  br label %bb.d

bb.di:                                            ; preds = %bb.dd
  %i.lr = and i32 %.0546, 64
  %.not648 = icmp eq i32 %i.lr, 0
  %i.ls = load i32, ptr %2, align 8               ; 5 uses
  %i.lt = icmp ult i32 %i.ls, 41                  ; 2 uses
  br i1 %.not648, label %bb.dn, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.lu = trunc i64 %.1544 to i16
  br i1 %i.lt, label %bb.dk, label %bb.dl

bb.dk:                                            ; preds = %bb.dj
  %i.lv = load ptr, ptr %i.x, align 8
  %i.lw = zext nneg i32 %i.ls to i64
  %i.lx = getelementptr i8, ptr %i.lv, i64 %i.lw
  %i.ly = add nuw nsw i32 %i.ls, 8
  store i32 %i.ly, ptr %2, align 8
  br label %bb.dm

bb.dl:                                            ; preds = %bb.dj
  %i.lz = load ptr, ptr %i.w, align 8             ; 2 uses
  %i.ma = getelementptr i8, ptr %i.lz, i64 8
  store ptr %i.ma, ptr %i.w, align 8
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dl, %bb.dk
  %i.mb = phi ptr [ %i.lx, %bb.dk ], [ %i.lz, %bb.dl ]
  %i.mc = load ptr, ptr %i.mb, align 8, !tbaa !106
  store i16 %i.lu, ptr %i.mc, align 2, !tbaa !108
  br label %.backedge2271

bb.dn:                                            ; preds = %bb.di
  %i.md = trunc i64 %.1544 to i32
  br i1 %i.lt, label %bb.do, label %bb.dp

bb.do:                                            ; preds = %bb.dn
  %i.me = load ptr, ptr %i.x, align 8
  %i.mf = zext nneg i32 %i.ls to i64
  %i.mg = getelementptr i8, ptr %i.me, i64 %i.mf
  %i.mh = add nuw nsw i32 %i.ls, 8
  store i32 %i.mh, ptr %2, align 8
  br label %bb.dq

bb.dp:                                            ; preds = %bb.dn
  %i.mi = load ptr, ptr %i.w, align 8             ; 2 uses
  %i.mj = getelementptr i8, ptr %i.mi, i64 8
  store ptr %i.mj, ptr %i.w, align 8
  br label %bb.dq

bb.dq:                                            ; preds = %bb.dp, %bb.do
  %i.mk = phi ptr [ %i.mg, %bb.do ], [ %i.mi, %bb.dp ]
  %i.ml = load ptr, ptr %i.mk, align 8, !tbaa !109
  store i32 %i.md, ptr %i.ml, align 4, !tbaa !7
  br label %.backedge2271

bb.dr:                                            ; preds = %._crit_edge
  %.1536.fr.le2951 = freeze i32 %.1536
  %i.mm = or i32 %.0546, 16
  br label %.loopexit1042

.loopexit1042.loopexit:                           ; preds = %._crit_edge
  %.1536.fr.le2949 = freeze i32 %.1536
  br label %.loopexit1042

.loopexit1042:                                    ; preds = %.loopexit1042.loopexit, %bb.dr
  %.1536.fr2659 = phi i32 [ %.1536.fr.le2951, %bb.dr ], [ %.1536.fr.le2949, %.loopexit1042.loopexit ] ; 4 uses
  %.6552 = phi i32 [ %i.mm, %bb.dr ], [ %.0546, %.loopexit1042.loopexit ] ; 4 uses
  %i.mn = and i32 %.6552, 16
  %.not645 = icmp eq i32 %i.mn, 0
  br i1 %.not645, label %bb.dw, label %bb.ds

bb.ds:                                            ; preds = %.loopexit1042
  %i.mo = load i32, ptr %2, align 8               ; 3 uses
  %i.mp = icmp ult i32 %i.mo, 41
  br i1 %i.mp, label %bb.dt, label %bb.du

bb.dt:                                            ; preds = %bb.ds
  %i.mq = load ptr, ptr %i.x, align 8
  %i.mr = zext nneg i32 %i.mo to i64
  %i.ms = getelementptr i8, ptr %i.mq, i64 %i.mr
  %i.mt = add nuw nsw i32 %i.mo, 8
  store i32 %i.mt, ptr %2, align 8
  br label %bb.dv

bb.du:                                            ; preds = %bb.ds
  %i.mu = load ptr, ptr %i.w, align 8             ; 2 uses
  %i.mv = getelementptr i8, ptr %i.mu, i64 8
  store ptr %i.mv, ptr %i.w, align 8
  br label %bb.dv

bb.dv:                                            ; preds = %bb.du, %bb.dt
  %i.mw = phi ptr [ %i.ms, %bb.dt ], [ %i.mu, %bb.du ]
  %i.mx = load i64, ptr %i.mw, align 8, !tbaa !11
  br label %15

bb.dw:                                            ; preds = %.loopexit1042
  %i.my = and i32 %.6552, 64
  %.not646 = icmp eq i32 %i.my, 0
  %i.mz = load i32, ptr %2, align 8               ; 5 uses
  %i.na = icmp ult i32 %i.mz, 41                  ; 2 uses
  br i1 %.not646, label %bb.eb, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  br i1 %i.na, label %bb.dy, label %bb.dz

bb.dy:                                            ; preds = %bb.dx
  %i.nb = load ptr, ptr %i.x, align 8
  %i.nc = zext nneg i32 %i.mz to i64
  %i.nd = getelementptr i8, ptr %i.nb, i64 %i.nc
  %i.ne = add nuw nsw i32 %i.mz, 8
  store i32 %i.ne, ptr %2, align 8
  br label %bb.ea

bb.dz:                                            ; preds = %bb.dx
  %i.nf = load ptr, ptr %i.w, align 8             ; 2 uses
  %i.ng = getelementptr i8, ptr %i.nf, i64 8
  store ptr %i.ng, ptr %i.w, align 8
  br label %bb.ea

bb.ea:                                            ; preds = %bb.dz, %bb.dy
  %i.nh = phi ptr [ %i.nd, %bb.dy ], [ %i.nf, %bb.dz ]
  %i.ni = load i32, ptr %i.nh, align 4, !tbaa !7
  %i.nj = and i32 %i.ni, 65535
  %i.nk = zext nneg i32 %i.nj to i64
  br label %15

bb.eb:                                            ; preds = %bb.dw
  br i1 %i.na, label %bb.ec, label %bb.ed

bb.ec:                                            ; preds = %bb.eb
  %i.nl = load ptr, ptr %i.x, align 8
  %i.nm = zext nneg i32 %i.mz to i64
  %i.nn = getelementptr i8, ptr %i.nl, i64 %i.nm
  %i.no = add nuw nsw i32 %i.mz, 8
  store i32 %i.no, ptr %2, align 8
  br label %bb.ee

bb.ed:                                            ; preds = %bb.eb
  %i.np = load ptr, ptr %i.w, align 8             ; 2 uses
  %i.nq = getelementptr i8, ptr %i.np, i64 8
  store ptr %i.nq, ptr %i.w, align 8
  br label %bb.ee

bb.ee:                                            ; preds = %bb.ed, %bb.ec
  %i.nr = phi ptr [ %i.nn, %bb.ec ], [ %i.np, %bb.ed ]
  %i.ns = load i32, ptr %i.nr, align 4, !tbaa !7
  %i.nt = zext i32 %i.ns to i64
  br label %15

bb.ef:                                            ; preds = %._crit_edge
  %i.nu = load i32, ptr %2, align 8               ; 3 uses
  %i.nv = icmp ult i32 %i.nu, 41
  br i1 %i.nv, label %bb.eg, label %bb.eh

bb.eg:                                            ; preds = %bb.ef
  %i.nw = load ptr, ptr %i.x, align 8
  %i.nx = zext nneg i32 %i.nu to i64
  %i.ny = getelementptr i8, ptr %i.nw, i64 %i.nx
  %i.nz = add nuw nsw i32 %i.nu, 8
  store i32 %i.nz, ptr %2, align 8
  br label %bb.ei

bb.eh:                                            ; preds = %bb.ef
  %i.oa = load ptr, ptr %i.w, align 8             ; 2 uses
  %i.ob = getelementptr i8, ptr %i.oa, i64 8
  store ptr %i.ob, ptr %i.w, align 8
  br label %bb.ei

bb.ei:                                            ; preds = %bb.eh, %bb.eg
  %i.oc = phi ptr [ %i.ny, %bb.eg ], [ %i.oa, %bb.eh ]
  %i.od = load ptr, ptr %i.oc, align 8, !tbaa !111
  %i.oe = ptrtoint ptr %i.od to i64               ; 2 uses
  store i64 %i.oe, ptr %i.h, align 8, !tbaa !11
  store i8 0, ptr %i.e, align 1, !tbaa !15
  %5 = and i32 %.0546, -131
  %i.of = or disjoint i32 %5, 2
  br label %bb.fv

bb.ej:                                            ; preds = %._crit_edge
  %.1536.fr.le2947 = freeze i32 %.1536            ; 3 uses
  %i.og = load i32, ptr %2, align 8               ; 3 uses
  %i.oh = icmp ult i32 %i.og, 41
  br i1 %i.oh, label %bb.ek, label %bb.el

bb.ek:                                            ; preds = %bb.ej
  %i.oi = load ptr, ptr %i.x, align 8
  %i.oj = zext nneg i32 %i.og to i64
  %i.ok = getelementptr i8, ptr %i.oi, i64 %i.oj
  %i.ol = add nuw nsw i32 %i.og, 8
  store i32 %i.ol, ptr %2, align 8
  br label %bb.em

bb.el:                                            ; preds = %bb.ej
  %i.om = load ptr, ptr %i.w, align 8             ; 2 uses
  %i.on = getelementptr i8, ptr %i.om, i64 8
  store ptr %i.on, ptr %i.w, align 8
  br label %bb.em

bb.em:                                            ; preds = %bb.el, %bb.ek
  %i.oo = phi ptr [ %i.ok, %bb.ek ], [ %i.om, %bb.el ]
  %i.op = load ptr, ptr %i.oo, align 8, !tbaa !99 ; 2 uses
  %i.oq = icmp eq ptr %i.op, null
  %spec.store.select = select i1 %i.oq, ptr @.str.44, ptr %i.op ; 5 uses
  %i.or = icmp sgt i32 %.1536.fr.le2947, -1
  br i1 %i.or, label %bb.en, label %bb.eo

bb.en:                                            ; preds = %bb.em
  %i.os = zext nneg i32 %.1536.fr.le2947 to i64   ; 2 uses
  %i.ot = call ptr @memchr(ptr noundef nonnull %spec.store.select, i32 noundef 0, i64 noundef %i.os) #22 ; 2 uses
  %.not644 = icmp eq ptr %i.ot, null
  %i.ou = ptrtoint ptr %i.ot to i64
  %i.ov = ptrtoint ptr %spec.store.select to i64
  %i.ow = sub i64 %i.ou, %i.ov
  %spec.select7601035 = call i64 @llvm.smin.i64(i64 %i.ow, i64 %i.os)
  %spec.select760 = trunc i64 %spec.select7601035 to i32
  %.1511 = select i1 %.not644, i32 %.1536.fr.le2947, i32 %spec.select760
  store i8 0, ptr %i.e, align 1, !tbaa !15
  br label %bb.gd

bb.eo:                                            ; preds = %bb.em
  %i.ox = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %spec.store.select) #22
  br label %.sink.split

bb.ep:                                            ; preds = %._crit_edge
  %.1536.fr.le2945 = freeze i32 %.1536
  %i.oy = or i32 %.0546, 16
  br label %.loopexit1043

.loopexit1043.loopexit:                           ; preds = %._crit_edge
  %.1536.fr.le2943 = freeze i32 %.1536
  br label %.loopexit1043

.loopexit1043:                                    ; preds = %.loopexit1043.loopexit, %bb.ep
  %.1536.fr2657 = phi i32 [ %.1536.fr.le2945, %bb.ep ], [ %.1536.fr.le2943, %.loopexit1043.loopexit ]
  %.7553 = phi i32 [ %i.oy, %bb.ep ], [ %.0546, %.loopexit1043.loopexit ] ; 3 uses
  %i.oz = and i32 %.7553, 16
  %.not642 = icmp eq i32 %i.oz, 0
  br i1 %.not642, label %bb.eu, label %bb.eq

bb.eq:                                            ; preds = %.loopexit1043
  %i.pa = load i32, ptr %2, align 8               ; 3 uses
  %i.pb = icmp ult i32 %i.pa, 41
  br i1 %i.pb, label %bb.er, label %bb.es

bb.er:                                            ; preds = %bb.eq
  %i.pc = load ptr, ptr %i.x, align 8
  %i.pd = zext nneg i32 %i.pa to i64
  %i.pe = getelementptr i8, ptr %i.pc, i64 %i.pd
  %i.pf = add nuw nsw i32 %i.pa, 8
  store i32 %i.pf, ptr %2, align 8
  br label %bb.et

bb.es:                                            ; preds = %bb.eq
  %i.pg = load ptr, ptr %i.w, align 8             ; 2 uses
  %i.ph = getelementptr i8, ptr %i.pg, i64 8
  store ptr %i.ph, ptr %i.w, align 8
  br label %bb.et

bb.et:                                            ; preds = %bb.es, %bb.er
  %i.pi = phi ptr [ %i.pe, %bb.er ], [ %i.pg, %bb.es ]
  %i.pj = load i64, ptr %i.pi, align 8, !tbaa !11
  br label %bb.fr

bb.eu:                                            ; preds = %.loopexit1043
  %i.pk = and i32 %.7553, 64
  %.not643 = icmp eq i32 %i.pk, 0
  %i.pl = load i32, ptr %2, align 8               ; 5 uses
  %i.pm = icmp ult i32 %i.pl, 41                  ; 2 uses
  br i1 %.not643, label %bb.ez, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  br i1 %i.pm, label %bb.ew, label %bb.ex

bb.ew:                                            ; preds = %bb.ev
  %i.pn = load ptr, ptr %i.x, align 8
  %i.po = zext nneg i32 %i.pl to i64
  %i.pp = getelementptr i8, ptr %i.pn, i64 %i.po
  %i.pq = add nuw nsw i32 %i.pl, 8
  store i32 %i.pq, ptr %2, align 8
  br label %bb.ey

bb.ex:                                            ; preds = %bb.ev
  %i.pr = load ptr, ptr %i.w, align 8             ; 2 uses
  %i.ps = getelementptr i8, ptr %i.pr, i64 8
  store ptr %i.ps, ptr %i.w, align 8
  br label %bb.ey

bb.ey:                                            ; preds = %bb.ex, %bb.ew
  %i.pt = phi ptr [ %i.pp, %bb.ew ], [ %i.pr, %bb.ex ]
  %i.pu = load i32, ptr %i.pt, align 4, !tbaa !7
  %i.pv = and i32 %i.pu, 65535
  %i.pw = zext nneg i32 %i.pv to i64
  br label %bb.fr

bb.ez:                                            ; preds = %bb.eu
  br i1 %i.pm, label %bb.fa, label %bb.fb

bb.fa:                                            ; preds = %bb.ez
  %i.px = load ptr, ptr %i.x, align 8
  %i.py = zext nneg i32 %i.pl to i64
  %i.pz = getelementptr i8, ptr %i.px, i64 %i.py
  %i.qa = add nuw nsw i32 %i.pl, 8
  store i32 %i.qa, ptr %2, align 8
  br label %bb.fc

bb.fb:                                            ; preds = %bb.ez
  %i.qb = load ptr, ptr %i.w, align 8             ; 2 uses
  %i.qc = getelementptr i8, ptr %i.qb, i64 8
  store ptr %i.qc, ptr %i.w, align 8
  br label %bb.fc

bb.fc:                                            ; preds = %bb.fb, %bb.fa
  %i.qd = phi ptr [ %i.pz, %bb.fa ], [ %i.qb, %bb.fb ]
  %i.qe = load i32, ptr %i.qd, align 4, !tbaa !7
  %i.qf = zext i32 %i.qe to i64
  br label %bb.fr

bb.fd:                                            ; preds = %._crit_edge
  %.1536.fr.le = freeze i32 %.1536
  br label %.loopexit1044

.loopexit1044.loopexit:                           ; preds = %._crit_edge
  %.1536.fr.le2941 = freeze i32 %.1536
  br label %.loopexit1044

.loopexit1044:                                    ; preds = %.loopexit1044.loopexit, %bb.fd
  %.1536.fr2660 = phi i32 [ %.1536.fr.le, %bb.fd ], [ %.1536.fr.le2941, %.loopexit1044.loopexit ] ; 3 uses
  %.1504 = phi ptr [ @ruby_hexdigits, %bb.fd ], [ getelementptr (i8, ptr @ruby_hexdigits, i64 16), %.loopexit1044.loopexit ]
  %i.qg = and i32 %.0546, 16
  %.not640 = icmp eq i32 %i.qg, 0
  br i1 %.not640, label %bb.fi, label %bb.fe

bb.fe:                                            ; preds = %.loopexit1044
  %i.qh = load i32, ptr %2, align 8               ; 3 uses
  %i.qi = icmp ult i32 %i.qh, 41
  br i1 %i.qi, label %bb.ff, label %bb.fg

bb.ff:                                            ; preds = %bb.fe
  %i.qj = load ptr, ptr %i.x, align 8
  %i.qk = zext nneg i32 %i.qh to i64
  %i.ql = getelementptr i8, ptr %i.qj, i64 %i.qk
  %i.qm = add nuw nsw i32 %i.qh, 8
  store i32 %i.qm, ptr %2, align 8
  br label %bb.fh

bb.fg:                                            ; preds = %bb.fe
  %i.qn = load ptr, ptr %i.w, align 8             ; 2 uses
  %i.qo = getelementptr i8, ptr %i.qn, i64 8
  store ptr %i.qo, ptr %i.w, align 8
  br label %bb.fh

bb.fh:                                            ; preds = %bb.fg, %bb.ff
  %i.qp = phi ptr [ %i.ql, %bb.ff ], [ %i.qn, %bb.fg ]
  %i.qq = load i64, ptr %i.qp, align 8, !tbaa !11
  br label %bb.ft

bb.fi:                                            ; preds = %.loopexit1044
  %i.qr = and i32 %.0546, 64
  %.not641 = icmp eq i32 %i.qr, 0
  %i.qs = load i32, ptr %2, align 8               ; 5 uses
  %i.qt = icmp ult i32 %i.qs, 41                  ; 2 uses
  br i1 %.not641, label %bb.fn, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  br i1 %i.qt, label %bb.fk, label %bb.fl

bb.fk:                                            ; preds = %bb.fj
  %i.qu = load ptr, ptr %i.x, align 8
  %i.qv = zext nneg i32 %i.qs to i64
  %i.qw = getelementptr i8, ptr %i.qu, i64 %i.qv
  %i.qx = add nuw nsw i32 %i.qs, 8
  store i32 %i.qx, ptr %2, align 8
  br label %bb.fm

bb.fl:                                            ; preds = %bb.fj
  %i.qy = load ptr, ptr %i.w, align 8             ; 2 uses
  %i.qz = getelementptr i8, ptr %i.qy, i64 8
  store ptr %i.qz, ptr %i.w, align 8
  br label %bb.fm

bb.fm:                                            ; preds = %bb.fl, %bb.fk
  %i.ra = phi ptr [ %i.qw, %bb.fk ], [ %i.qy, %bb.fl ]
  %i.rb = load i32, ptr %i.ra, align 4, !tbaa !7
  %i.rc = and i32 %i.rb, 65535
  %i.rd = zext nneg i32 %i.rc to i64
  br label %bb.ft

bb.fn:                                            ; preds = %bb.fi
  br i1 %i.qt, label %bb.fo, label %bb.fp

bb.fo:                                            ; preds = %bb.fn
  %i.re = load ptr, ptr %i.x, align 8
  %i.rf = zext nneg i32 %i.qs to i64
  %i.rg = getelementptr i8, ptr %i.re, i64 %i.rf
  %i.rh = add nuw nsw i32 %i.qs, 8
  store i32 %i.rh, ptr %2, align 8
  br label %bb.fq

bb.fp:                                            ; preds = %bb.fn
  %i.ri = load ptr, ptr %i.w, align 8             ; 2 uses
  %i.rj = getelementptr i8, ptr %i.ri, i64 8
  store ptr %i.rj, ptr %i.w, align 8
  br label %bb.fq

bb.fq:                                            ; preds = %bb.fp, %bb.fo
  %i.rk = phi ptr [ %i.rg, %bb.fo ], [ %i.ri, %bb.fp ]
  %i.rl = load i32, ptr %i.rk, align 4, !tbaa !7
  %i.rm = zext i32 %i.rl to i64
  br label %bb.ft

bb.fr:                                            ; preds = %bb.et, %bb.fc, %bb.ey
  %i.rn = phi i64 [ %i.pj, %bb.et ], [ %i.pw, %bb.ey ], [ %i.qf, %bb.fc ] ; 2 uses
  store i64 %i.rn, ptr %i.h, align 8, !tbaa !11
  store i8 0, ptr %i.e, align 1, !tbaa !15
  br label %bb.fs

bb.fs:                                            ; preds = %bb.bf, %bb.fr
  %.1536.fr2655 = phi i32 [ %.1536.fr2657, %bb.fr ], [ %.1536.fr2656, %bb.bf ] ; 3 uses
  %.pre15781604.jt10 = phi i8 [ 0, %bb.fr ], [ %i.bd, %bb.bf ] ; 2 uses
  %6 = phi i64 [ %i.rn, %bb.fr ], [ %i.fy, %bb.bf ] ; 2 uses
  %.9.jt10 = phi i32 [ %.7553, %bb.fr ], [ %.1547, %bb.bf ] ; 2 uses
  %7 = and i32 %.9.jt10, -129
  %8 = icmp slt i32 %.1536.fr2655, 0
  %spec.select747.jt10 = select i1 %8, i32 %.9.jt10, i32 %7 ; 2 uses
  %9 = icmp ne i64 %6, 0
  %10 = icmp ne i32 %.1536.fr2655, 0
  %or.cond9.jt10 = or i1 %10, %9
  br i1 %or.cond9.jt10, label %22, label %BSD__ultoa.exit

bb.ft:                                            ; preds = %bb.fh, %bb.fq, %bb.fm
  %11 = phi i64 [ %i.qq, %bb.fh ], [ %i.rd, %bb.fm ], [ %i.rm, %bb.fq ] ; 4 uses
  store i64 %11, ptr %i.h, align 8, !tbaa !11
  %12 = trunc i32 %.0546 to i1
  %13 = icmp ne i64 %11, 0
  %or.cond7 = and i1 %13, %12
  %14 = or i32 %.0546, 2
  %spec.select746 = select i1 %or.cond7, i32 %14, i32 %.0546 ; 2 uses
  store i8 0, ptr %i.e, align 1, !tbaa !15
  %i.ro = and i32 %spec.select746, -129
  %i.rp = icmp slt i32 %.1536.fr2660, 0
  %spec.select747 = select i1 %i.rp, i32 %spec.select746, i32 %i.ro ; 2 uses
  %i.rq = icmp ne i64 %11, 0
  %i.rr = icmp ne i32 %.1536.fr2660, 0
  %or.cond9 = or i1 %i.rr, %i.rq
  br i1 %or.cond9, label %bb.fv, label %BSD__ultoa.exit

15:                                               ; preds = %bb.ea, %bb.ee, %bb.dv
  %16 = phi i64 [ %i.mx, %bb.dv ], [ %i.nk, %bb.ea ], [ %i.nt, %bb.ee ] ; 3 uses
  store i64 %16, ptr %i.h, align 8, !tbaa !11
  store i8 0, ptr %i.e, align 1, !tbaa !15
  %17 = and i32 %.6552, -129
  %18 = icmp slt i32 %.1536.fr2659, 0
  %spec.select747.jt8 = select i1 %18, i32 %.6552, i32 %17 ; 4 uses
  %19 = icmp ne i64 %16, 0
  %20 = icmp ne i32 %.1536.fr2659, 0
  %or.cond9.jt8 = or i1 %20, %19
  br i1 %or.cond9.jt8, label %bb.fu, label %BSD__ultoa.exit

bb.fu:                                            ; preds = %15
  %i.rs = and i32 %spec.select747.jt8, 1
  br label %.preheader.i785

bb.fv:                                            ; preds = %bb.ft, %bb.ei
  %21 = phi i32 [ %i.of, %bb.ei ], [ %spec.select747, %bb.ft ]
  %i.rt = phi i64 [ %i.oe, %bb.ei ], [ %11, %bb.ft ]
  %.453917191737 = phi i32 [ 16, %bb.ei ], [ %.1536.fr2660, %bb.ft ]
  %.350617221736 = phi ptr [ @ruby_hexdigits, %bb.ei ], [ %.1504, %bb.ft ]
  %spec.select74717261734 = phi i32 [ 120, %bb.ei ], [ %.0494, %bb.ft ]
  br label %.preheader39.i

22:                                               ; preds = %bb.fs, %.thread1727
  %.1536.fr2654 = phi i32 [ %.1536.fr2656, %.thread1727 ], [ %.1536.fr2655, %bb.fs ] ; 2 uses
  %spec.select747.jt101730 = phi i32 [ %spec.select7471714, %.thread1727 ], [ %spec.select747.jt10, %bb.fs ] ; 2 uses
  %23 = phi i64 [ %i.ga, %.thread1727 ], [ %6, %bb.fs ] ; 6 uses
  %.pre15781604.jt101722 = phi i8 [ 45, %.thread1727 ], [ %.pre15781604.jt10, %bb.fs ] ; 2 uses
  %24 = icmp ult i64 %23, 10
  br i1 %24, label %bb.fw, label %bb.fx

bb.fw:                                            ; preds = %22
  %i.ru = trunc nuw nsw i64 %23 to i8
  %i.rv = or disjoint i8 %i.ru, 48
  store i8 %i.rv, ptr %i.ag, align 2, !tbaa !15
  br label %BSD__ultoa.exit

bb.fx:                                            ; preds = %22
  %i.rw = icmp slt i64 %23, 0
  br i1 %i.rw, label %bb.fy, label %.preheader2267

bb.fy:                                            ; preds = %bb.fx
  %i.rx = urem i64 %23, 10
  %i.ry = trunc nuw nsw i64 %i.rx to i8
  %i.rz = or disjoint i8 %i.ry, 48
  store i8 %i.rz, ptr %i.ag, align 2, !tbaa !15
  %i.sa = udiv i64 %23, 10
  br label %.preheader2267

.preheader2267:                                   ; preds = %bb.fy, %bb.fx
  %.129.i.ph = phi ptr [ %i.l, %bb.fx ], [ %i.ag, %bb.fy ]
  %.1.i.ph = phi i64 [ %23, %bb.fx ], [ %i.sa, %bb.fy ]
  br label %bb.fz

bb.fz:                                            ; preds = %.preheader2267, %bb.fz
  %.129.i = phi ptr [ %i.se, %bb.fz ], [ %.129.i.ph, %.preheader2267 ]
  %.1.i = phi i64 [ %i.sf, %bb.fz ], [ %.1.i.ph, %.preheader2267 ] ; 3 uses
  %i.sb = urem i64 %.1.i, 10
  %i.sc = trunc nuw nsw i64 %i.sb to i8
  %i.sd = or disjoint i8 %i.sc, 48
  %i.se = getelementptr i8, ptr %.129.i, i64 -1   ; 3 uses
  store i8 %i.sd, ptr %i.se, align 1, !tbaa !15
  %i.sf = udiv i64 %.1.i, 10
  %.not38.i = icmp samesign ult i64 %.1.i, 10
  br i1 %.not38.i, label %BSD__ultoa.exit, label %bb.fz, !llvm.loop !47

.preheader.i785:                                  ; preds = %bb.fu, %.preheader.i785
  %.031.i = phi i64 [ %i.sk, %.preheader.i785 ], [ %16, %bb.fu ] ; 2 uses
  %.2.i786 = phi ptr [ %i.sj, %.preheader.i785 ], [ %i.l, %bb.fu ] ; 2 uses
  %i.sg = trunc i64 %.031.i to i8
  %i.sh = and i8 %i.sg, 7                         ; 2 uses
  %i.si = or disjoint i8 %i.sh, 48
  %i.sj = getelementptr i8, ptr %.2.i786, i64 -1  ; 3 uses
  store i8 %i.si, ptr %i.sj, align 1, !tbaa !15
  %i.sk = lshr i64 %.031.i, 3                     ; 2 uses
  %.not35.i = icmp eq i64 %i.sk, 0
  br i1 %.not35.i, label %bb.ga, label %.preheader.i785, !llvm.loop !112

bb.ga:                                            ; preds = %.preheader.i785
  %.not36.i = icmp eq i32 %i.rs, 0
  %.not37.i = icmp eq i8 %i.sh, 0
  %or.cond.i = or i1 %.not36.i, %.not37.i
  br i1 %or.cond.i, label %BSD__ultoa.exit, label %bb.gb

bb.gb:                                            ; preds = %bb.ga
  %i.sl = getelementptr i8, ptr %.2.i786, i64 -2  ; 2 uses
  store i8 48, ptr %i.sl, align 1, !tbaa !15
  br label %BSD__ultoa.exit

.preheader39.i:                                   ; preds = %bb.fv, %.preheader39.i
  %.132.i = phi i64 [ %i.sq, %.preheader39.i ], [ %i.rt, %bb.fv ] ; 2 uses
  %.3.i783 = phi ptr [ %i.sp, %.preheader39.i ], [ %i.l, %bb.fv ]
  %i.sm = and i64 %.132.i, 15
  %i.sn = getelementptr i8, ptr %.350617221736, i64 %i.sm
  %i.so = load i8, ptr %i.sn, align 1, !tbaa !15
  %i.sp = getelementptr i8, ptr %.3.i783, i64 -1  ; 3 uses
  store i8 %i.so, ptr %i.sp, align 1, !tbaa !15
  %i.sq = lshr i64 %.132.i, 4                     ; 2 uses
  %.not.i784 = icmp eq i64 %i.sq, 0
  br i1 %.not.i784, label %BSD__ultoa.exit, label %.preheader39.i, !llvm.loop !113

BSD__ultoa.exit:                                  ; preds = %.preheader39.i, %bb.fz, %bb.fs, %bb.ft, %15, %bb.gb, %bb.ga, %bb.fw
  %spec.select7471712 = phi i32 [ %spec.select747.jt10, %bb.fs ], [ %spec.select747, %bb.ft ], [ %spec.select747.jt8, %15 ], [ %spec.select747.jt101730, %bb.fw ], [ %spec.select747.jt101730, %bb.fz ], [ %spec.select747.jt8, %bb.gb ], [ %spec.select747.jt8, %bb.ga ], [ %21, %.preheader39.i ]
  %.65001711 = phi i32 [ %.0494, %bb.fs ], [ %.0494, %bb.ft ], [ %.0494, %15 ], [ %.0494, %bb.fw ], [ %.0494, %bb.fz ], [ %.0494, %bb.gb ], [ %.0494, %bb.ga ], [ %spec.select74717261734, %.preheader39.i ]
  %.45391709 = phi i32 [ 0, %bb.fs ], [ 0, %bb.ft ], [ 0, %15 ], [ %.1536.fr2654, %bb.fw ], [ %.1536.fr2654, %bb.fz ], [ %.1536.fr2659, %bb.gb ], [ %.1536.fr2659, %bb.ga ], [ %.453917191737, %.preheader39.i ]
  %.pre157816041708 = phi i8 [ %.pre15781604.jt10, %bb.fs ], [ 0, %bb.ft ], [ 0, %15 ], [ %.pre15781604.jt101722, %bb.fw ], [ %.pre15781604.jt101722, %bb.fz ], [ 0, %bb.gb ], [ 0, %bb.ga ], [ 0, %.preheader39.i ]
  %.0568 = phi ptr [ %i.l, %bb.fs ], [ %i.l, %bb.ft ], [ %i.l, %15 ], [ %i.ag, %bb.fw ], [ %i.se, %bb.fz ], [ %i.sl, %bb.gb ], [ %i.sj, %bb.ga ], [ %i.sp, %.preheader39.i ] ; 2 uses
  %i.sr = ptrtoint ptr %.0568 to i64
  %i.ss = sub i64 %i.ah, %i.sr
  %i.st = trunc i64 %i.ss to i32
  %i.su = sext i32 %.45391709 to i64
  br label %bb.gd

bb.gc:                                            ; preds = %._crit_edge
  %i.sv = trunc nsw i32 %.0494 to i8
  store i8 %i.sv, ptr %i.j, align 16, !tbaa !15
  store i8 0, ptr %i.e, align 1, !tbaa !15
  br label %bb.gd

bb.gd:                                            ; preds = %._crit_edge1602, %bb.bq, %bb.bo, %bb.bp, %bb.dc, %bb.gc, %BSD__ultoa.exit, %bb.en, %bb.aq, %bb.ah
  %.pre1578 = phi i8 [ 0, %bb.gc ], [ 0, %bb.ah ], [ 0, %bb.aq ], [ %.pre157816041708, %BSD__ultoa.exit ], [ 45, %bb.bp ], [ %i.bd, %bb.bo ], [ %i.bd, %bb.bq ], [ %.pre1578.pre, %._crit_edge1602 ], [ 45, %bb.dc ], [ 0, %bb.en ]
  %.1904 = phi i32 [ %.0903.ph, %bb.gc ], [ %.0903.ph, %bb.ah ], [ %.0903.ph, %bb.aq ], [ %.0903.ph, %BSD__ultoa.exit ], [ %.0903.ph, %bb.bp ], [ %.0903.ph, %bb.bo ], [ %.0903.ph, %bb.bq ], [ %i.il, %._crit_edge1602 ], [ %i.il, %bb.dc ], [ %.0903.ph, %bb.en ]
  %.1569 = phi ptr [ %i.j, %bb.gc ], [ %i.j, %bb.ah ], [ %i.el, %bb.aq ], [ %.0568, %BSD__ultoa.exit ], [ @.str.30, %bb.bp ], [ @.str.30, %bb.bo ], [ @.str.29, %bb.bq ], [ %i.j, %._crit_edge1602 ], [ %i.j, %bb.dc ], [ %spec.store.select, %bb.en ]
  %.3558 = phi ptr [ %.2557, %bb.gc ], [ %.2557, %bb.ah ], [ %4, %bb.aq ], [ %.2557, %BSD__ultoa.exit ], [ %.2557, %bb.bp ], [ %.2557, %bb.bo ], [ %.2557, %bb.bq ], [ %.2557, %._crit_edge1602 ], [ %.2557, %bb.dc ], [ %.2557, %bb.en ]
  %.11 = phi i32 [ %.0546, %bb.gc ], [ %.0546, %bb.ah ], [ %.0546, %bb.aq ], [ %spec.select7471712, %BSD__ultoa.exit ], [ %.4550, %bb.bp ], [ %.4550, %bb.bo ], [ %.4550, %bb.bq ], [ %.5551, %._crit_edge1602 ], [ %.5551, %bb.dc ], [ %.0546, %bb.en ]
  %.1532 = phi double [ %.0531.ph, %bb.gc ], [ %.0531.ph, %bb.ah ], [ %.0531.ph, %bb.aq ], [ %.0531.ph, %BSD__ultoa.exit ], [ %i.gv, %bb.bp ], [ %i.gv, %bb.bo ], [ %i.gv, %bb.bq ], [ %i.gv, %._crit_edge1602 ], [ %i.gv, %bb.dc ], [ %.0531.ph, %bb.en ]
  %.2528 = phi i32 [ %.0526.ph, %bb.gc ], [ %.0526.ph, %bb.ah ], [ %.0526.ph, %bb.aq ], [ %.0526.ph, %BSD__ultoa.exit ], [ %.0526.ph, %bb.bp ], [ %.0526.ph, %bb.bo ], [ %.0526.ph, %bb.bq ], [ %.1527, %._crit_edge1602 ], [ %.1527, %bb.dc ], [ %.0526.ph, %bb.en ]
  %.4523 = phi i32 [ %.0519.ph, %bb.gc ], [ %.0519.ph, %bb.ah ], [ %.0519.ph, %bb.aq ], [ %.0519.ph, %BSD__ultoa.exit ], [ %.2521, %bb.bp ], [ %.2521, %bb.bo ], [ %.2521, %bb.bq ], [ %.3522, %._crit_edge1602 ], [ %.3522, %bb.dc ], [ %.0519.ph, %bb.en ]
  %.0515 = phi i64 [ 0, %bb.gc ], [ 0, %bb.ah ], [ 0, %bb.aq ], [ %i.su, %BSD__ultoa.exit ], [ 0, %bb.bp ], [ 0, %bb.bo ], [ 0, %bb.bq ], [ 0, %._crit_edge1602 ], [ 0, %bb.dc ], [ 0, %bb.en ]
  %.2512 = phi i32 [ 1, %bb.gc ], [ 1, %bb.ah ], [ %i.ep, %bb.aq ], [ %i.st, %BSD__ultoa.exit ], [ 3, %bb.bp ], [ 3, %bb.bo ], [ 3, %bb.bq ], [ %.0510, %._crit_edge1602 ], [ %.0510, %bb.dc ], [ %.1511, %bb.en ]
  %.7501 = phi i32 [ %.0494, %bb.gc ], [ 99, %bb.ah ], [ 105, %bb.aq ], [ %.65001711, %BSD__ultoa.exit ], [ %.0494, %bb.bp ], [ %.0494, %bb.bo ], [ %.0494, %bb.bq ], [ %.4498, %._crit_edge1602 ], [ %.4498, %bb.dc ], [ 115, %bb.en ]
  %.6 = phi ptr [ %.3, %bb.gc ], [ %.3, %bb.ah ], [ %i.du, %bb.aq ], [ %.3, %BSD__ultoa.exit ], [ %.3, %bb.bp ], [ %.3, %bb.bo ], [ %.3, %bb.bq ], [ %.3, %._crit_edge1602 ], [ %.3, %bb.dc ], [ %.3, %bb.en ]
  %i.sw = sext i32 %.2512 to i64
  br label %.sink.split

.sink.split:                                      ; preds = %bb.eo, %bb.gd
  %.sink = phi i64 [ %i.sw, %bb.gd ], [ %i.ox, %bb.eo ] ; 2 uses
  %.ph = phi i8 [ %.pre1578, %bb.gd ], [ %i.bd, %bb.eo ]
  %.2905.ph = phi i32 [ %.1904, %bb.gd ], [ %.0903.ph, %bb.eo ]
  %.2570.ph = phi ptr [ %.1569, %bb.gd ], [ %spec.store.select, %bb.eo ]
  %.4559.ph = phi ptr [ %.3558, %bb.gd ], [ %.2557, %bb.eo ]
  %.12.ph = phi i32 [ %.11, %bb.gd ], [ %.0546, %bb.eo ]
  %.2533.ph = phi double [ %.1532, %bb.gd ], [ %.0531.ph, %bb.eo ]
  %.3529.ph = phi i32 [ %.2528, %bb.gd ], [ %.0526.ph, %bb.eo ]
  %.5524.ph = phi i32 [ %.4523, %bb.gd ], [ %.0519.ph, %bb.eo ]
  %.1516.ph = phi i64 [ %.0515, %bb.gd ], [ 0, %bb.eo ]
  %.8502.ph = phi i32 [ %.7501, %bb.gd ], [ 115, %bb.eo ]
  %.7.ph = phi ptr [ %.6, %bb.gd ], [ %.3, %bb.eo ]
  store i64 %.sink, ptr %i.i, align 8, !tbaa !11
  %i.sx = icmp ne i8 %.ph, 0
  %i.sy = zext i1 %i.sx to i64
  br label %bb.ge

bb.ge:                                            ; preds = %.sink.split, %bb.ap
  %.not669 = phi i64 [ 0, %bb.ap ], [ %i.sy, %.sink.split ]
  %i.sz = phi i64 [ %.pre1577, %bb.ap ], [ %.sink, %.sink.split ]
  %.2905 = phi i32 [ %.0903.ph, %bb.ap ], [ %.2905.ph, %.sink.split ] ; 20 uses
  %.2570 = phi ptr [ %i.el, %bb.ap ], [ %.2570.ph, %.sink.split ] ; 10 uses
  %.4559 = phi ptr [ %4, %bb.ap ], [ %.4559.ph, %.sink.split ] ; 4 uses
  %.12 = phi i32 [ %.0546, %bb.ap ], [ %.12.ph, %.sink.split ] ; 8 uses
  %.2533 = phi double [ %.0531.ph, %bb.ap ], [ %.2533.ph, %.sink.split ] ; 3 uses
  %.3529 = phi i32 [ %.0526.ph, %bb.ap ], [ %.3529.ph, %.sink.split ] ; 3 uses
  %.5524 = phi i32 [ %.0519.ph, %bb.ap ], [ %.5524.ph, %.sink.split ] ; 7 uses
  %.1516 = phi i64 [ 0, %bb.ap ], [ %.1516.ph, %.sink.split ] ; 2 uses
  %.8502 = phi i32 [ 105, %bb.ap ], [ %.8502.ph, %.sink.split ] ; 5 uses
  %.7 = phi ptr [ %i.du, %bb.ap ], [ %.7.ph, %.sink.split ]
  %i.ta = call i64 @llvm.smax.i64(i64 %.1516, i64 %i.sz)
  %i.tb = and i32 %.12, 2                         ; 2 uses
  %.not670 = icmp eq i32 %i.tb, 0                 ; 2 uses
  %i.tc = zext nneg i32 %i.tb to i64
  %spec.select748 = add i64 %i.ta, %i.tc
  %.1514 = add i64 %spec.select748, %.not669      ; 6 uses
  %i.td = and i32 %.12, 132                       ; 2 uses
  %i.te = icmp eq i32 %i.td, 0
  br i1 %i.te, label %bb.gf, label %bb.gk

bb.gf:                                            ; preds = %bb.ge
  %i.tf = sext i32 %.1541.ph to i64
  %i.tg = sub i64 %i.tf, %.1514                   ; 4 uses
  %i.th = add i64 %i.tg, 2147483648
  %.not672 = icmp ult i64 %i.th, 4294967296
  br i1 %.not672, label %bb.gg, label %.thread1011.sink.split

bb.gg:                                            ; preds = %bb.gf
  %i.ti = icmp sgt i64 %i.tg, 0
  br i1 %i.ti, label %.preheader1066, label %bb.gk

.preheader1066:                                   ; preds = %bb.gg
  %i.tj = trunc nsw i64 %i.tg to i32              ; 2 uses
  %i.tk = icmp ugt i64 %i.tg, 16
  %.pre1582 = load i64, ptr %i.t, align 8, !tbaa !83 ; 2 uses
  %.pre1584 = load i32, ptr %i.u, align 8, !tbaa !93 ; 2 uses
  br i1 %i.tk, label %.lr.ph1290, label %._crit_edge1291

.lr.ph1290:                                       ; preds = %.preheader1066, %bb.gi
  %i.tl = phi i32 [ %.pre1583, %bb.gi ], [ %.pre1584, %.preheader1066 ]
  %i.tm = phi i64 [ %.pre1581, %bb.gi ], [ %.pre1582, %.preheader1066 ]
  %.55601289 = phi ptr [ %.6561, %bb.gi ], [ %.4559, %.preheader1066 ] ; 3 uses
  %.25731288 = phi i32 [ %i.tv, %bb.gi ], [ %i.tj, %.preheader1066 ] ; 2 uses
  store ptr @BSD_vfprintf.blanks, ptr %.55601289, align 8, !tbaa !87
  %i.tn = getelementptr i8, ptr %.55601289, i64 8
  store i64 16, ptr %i.tn, align 8, !tbaa !89
  %i.to = add i64 %i.tm, 16                       ; 3 uses
  store i64 %i.to, ptr %i.t, align 8, !tbaa !83
  %i.tp = getelementptr i8, ptr %.55601289, i64 16
  %i.tq = add i32 %i.tl, 1                        ; 3 uses
  store i32 %i.tq, ptr %i.u, align 8, !tbaa !93
  %i.tr = icmp sgt i32 %i.tq, 7
  br i1 %i.tr, label %bb.gh, label %bb.gi

bb.gh:                                            ; preds = %.lr.ph1290
  %i.ts = icmp eq i64 %i.to, 0
  br i1 %i.ts, label %BSD__sprint.exit789.thread, label %BSD__sprint.exit789

BSD__sprint.exit789.thread:                       ; preds = %bb.gh
  store i32 0, ptr %i.u, align 8, !tbaa !93
  br label %bb.gi

BSD__sprint.exit789:                              ; preds = %bb.gh
  %i.tt = load ptr, ptr %i.v, align 8, !tbaa !71
  %i.tu = call i32 %i.tt(ptr noundef nonnull %0, ptr noundef nonnull %3) #20, !inline_history !95
  store i64 0, ptr %i.t, align 8, !tbaa !83
  store i32 0, ptr %i.u, align 8, !tbaa !93
  %.not735 = icmp eq i32 %i.tu, 0
  br i1 %.not735, label %bb.gi, label %.thread1011

bb.gi:                                            ; preds = %BSD__sprint.exit789.thread, %BSD__sprint.exit789, %.lr.ph1290
  %.pre1581 = phi i64 [ %i.to, %.lr.ph1290 ], [ 0, %BSD__sprint.exit789 ], [ 0, %BSD__sprint.exit789.thread ] ; 2 uses
  %.pre1583 = phi i32 [ %i.tq, %.lr.ph1290 ], [ 0, %BSD__sprint.exit789 ], [ 0, %BSD__sprint.exit789.thread ] ; 2 uses
  %.6561 = phi ptr [ %i.tp, %.lr.ph1290 ], [ %4, %BSD__sprint.exit789 ], [ %4, %BSD__sprint.exit789.thread ] ; 2 uses
  %i.tv = add nsw i32 %.25731288, -16             ; 2 uses
  %i.tw = icmp sgt i32 %.25731288, 32
  br i1 %i.tw, label %.lr.ph1290, label %._crit_edge1291, !llvm.loop !114

._crit_edge1291:                                  ; preds = %bb.gi, %.preheader1066
  %i.tx = phi i32 [ %.pre1584, %.preheader1066 ], [ %.pre1583, %bb.gi ]
  %i.ty = phi i64 [ %.pre1582, %.preheader1066 ], [ %.pre1581, %bb.gi ]
  %.2573.lcssa = phi i32 [ %i.tj, %.preheader1066 ], [ %i.tv, %bb.gi ]
  %.5560.lcssa = phi ptr [ %.4559, %.preheader1066 ], [ %.6561, %bb.gi ] ; 3 uses
  store ptr @BSD_vfprintf.blanks, ptr %.5560.lcssa, align 8, !tbaa !87
  %i.tz = zext nneg i32 %.2573.lcssa to i64       ; 2 uses
  %i.ua = getelementptr i8, ptr %.5560.lcssa, i64 8
  store i64 %i.tz, ptr %i.ua, align 8, !tbaa !89
  %i.ub = add i64 %i.ty, %i.tz                    ; 2 uses
  store i64 %i.ub, ptr %i.t, align 8, !tbaa !83
  %i.uc = getelementptr i8, ptr %.5560.lcssa, i64 16
  %i.ud = add i32 %i.tx, 1                        ; 2 uses
  store i32 %i.ud, ptr %i.u, align 8, !tbaa !93
  %i.ue = icmp sgt i32 %i.ud, 7
  br i1 %i.ue, label %bb.gj, label %bb.gk

bb.gj:                                            ; preds = %._crit_edge1291
  %i.uf = icmp eq i64 %i.ub, 0
  br i1 %i.uf, label %BSD__sprint.exit791.thread, label %BSD__sprint.exit791

BSD__sprint.exit791.thread:                       ; preds = %bb.gj
  store i32 0, ptr %i.u, align 8, !tbaa !93
  br label %bb.gk

BSD__sprint.exit791:                              ; preds = %bb.gj
  %i.ug = load ptr, ptr %i.v, align 8, !tbaa !71
  %i.uh = call i32 %i.ug(ptr noundef nonnull %0, ptr noundef nonnull %3) #20, !inline_history !95
  store i64 0, ptr %i.t, align 8, !tbaa !83
  store i32 0, ptr %i.u, align 8, !tbaa !93
  %.not673 = icmp eq i32 %i.uh, 0
  br i1 %.not673, label %bb.gk, label %.thread1011

bb.gk:                                            ; preds = %BSD__sprint.exit791.thread, %BSD__sprint.exit791, %bb.gg, %._crit_edge1291, %bb.ge
  %.7562 = phi ptr [ %.4559, %bb.gg ], [ %i.uc, %._crit_edge1291 ], [ %.4559, %bb.ge ], [ %4, %BSD__sprint.exit791 ], [ %4, %BSD__sprint.exit791.thread ] ; 4 uses
  %i.ui = load i8, ptr %i.e, align 1, !tbaa !15
  %.not674 = icmp eq i8 %i.ui, 0
  br i1 %.not674, label %bb.gn, label %bb.gl

bb.gl:                                            ; preds = %bb.gk
  store ptr %i.e, ptr %.7562, align 8, !tbaa !87
  %i.uj = getelementptr i8, ptr %.7562, i64 8
  store i64 1, ptr %i.uj, align 8, !tbaa !89
  %i.uk = load i64, ptr %i.t, align 8, !tbaa !83
  %i.ul = add i64 %i.uk, 1                        ; 2 uses
  store i64 %i.ul, ptr %i.t, align 8, !tbaa !83
  %i.um = getelementptr i8, ptr %.7562, i64 16
  %i.un = load i32, ptr %i.u, align 8, !tbaa !93
  %i.uo = add i32 %i.un, 1                        ; 2 uses
  store i32 %i.uo, ptr %i.u, align 8, !tbaa !93
  %i.up = icmp sgt i32 %i.uo, 7
  br i1 %i.up, label %bb.gm, label %bb.gn

bb.gm:                                            ; preds = %bb.gl
  %i.uq = icmp eq i64 %i.ul, 0
  br i1 %i.uq, label %BSD__sprint.exit793.thread, label %BSD__sprint.exit793

BSD__sprint.exit793.thread:                       ; preds = %bb.gm
  store i32 0, ptr %i.u, align 8, !tbaa !93
  br label %bb.gn

BSD__sprint.exit793:                              ; preds = %bb.gm
  %i.ur = load ptr, ptr %i.v, align 8, !tbaa !71
  %i.us = call i32 %i.ur(ptr noundef nonnull %0, ptr noundef nonnull %3) #20, !inline_history !95
  store i64 0, ptr %i.t, align 8, !tbaa !83
  store i32 0, ptr %i.u, align 8, !tbaa !93
  %.not675 = icmp eq i32 %i.us, 0
  br i1 %.not675, label %bb.gn, label %.thread1011

bb.gn:                                            ; preds = %BSD__sprint.exit793.thread, %BSD__sprint.exit793, %bb.gl, %bb.gk
  %.8563 = phi ptr [ %.7562, %bb.gk ], [ %i.um, %bb.gl ], [ %4, %BSD__sprint.exit793 ], [ %4, %BSD__sprint.exit793.thread ] ; 4 uses
  br i1 %.not670, label %bb.gq, label %bb.go

bb.go:                                            ; preds = %bb.gn
  store i8 48, ptr %i.k, align 1, !tbaa !15
  %i.ut = trunc i32 %.8502 to i8
  store i8 %i.ut, ptr %i.ai, align 1, !tbaa !15
  store ptr %i.k, ptr %.8563, align 8, !tbaa !87
  %i.uu = getelementptr i8, ptr %.8563, i64 8
  store i64 2, ptr %i.uu, align 8, !tbaa !89
  %i.uv = load i64, ptr %i.t, align 8, !tbaa !83
  %i.uw = add i64 %i.uv, 2                        ; 2 uses
  store i64 %i.uw, ptr %i.t, align 8, !tbaa !83
  %i.ux = getelementptr i8, ptr %.8563, i64 16
  %i.uy = load i32, ptr %i.u, align 8, !tbaa !93
  %i.uz = add i32 %i.uy, 1                        ; 2 uses
  store i32 %i.uz, ptr %i.u, align 8, !tbaa !93
  %i.va = icmp sgt i32 %i.uz, 7
  br i1 %i.va, label %bb.gp, label %bb.gq

bb.gp:                                            ; preds = %bb.go
  %i.vb = icmp eq i64 %i.uw, 0
  br i1 %i.vb, label %BSD__sprint.exit795.thread, label %BSD__sprint.exit795

BSD__sprint.exit795.thread:                       ; preds = %bb.gp
  store i32 0, ptr %i.u, align 8, !tbaa !93
  br label %bb.gq

BSD__sprint.exit795:                              ; preds = %bb.gp
  %i.vc = load ptr, ptr %i.v, align 8, !tbaa !71
  %i.vd = call i32 %i.vc(ptr noundef nonnull %0, ptr noundef nonnull %3) #20, !inline_history !95
  store i64 0, ptr %i.t, align 8, !tbaa !83
  store i32 0, ptr %i.u, align 8, !tbaa !93
  %.not676 = icmp eq i32 %i.vd, 0
  br i1 %.not676, label %bb.gq, label %.thread1011

bb.gq:                                            ; preds = %BSD__sprint.exit795.thread, %BSD__sprint.exit795, %bb.go, %bb.gn
  %.9564 = phi ptr [ %.8563, %bb.gn ], [ %i.ux, %bb.go ], [ %4, %BSD__sprint.exit795 ], [ %4, %BSD__sprint.exit795.thread ] ; 4 uses
  %i.ve = icmp eq i32 %i.td, 128
  br i1 %i.ve, label %bb.gr, label %bb.gw

bb.gr:                                            ; preds = %bb.gq
  %i.vf = sext i32 %.1541.ph to i64
  %i.vg = sub i64 %i.vf, %.1514                   ; 4 uses
  %i.vh = add i64 %i.vg, 2147483648
  %.not678 = icmp ult i64 %i.vh, 4294967296
  br i1 %.not678, label %bb.gs, label %.thread1011.sink.split

bb.gs:                                            ; preds = %bb.gr
  %i.vi = icmp sgt i64 %i.vg, 0
  br i1 %i.vi, label %.preheader1064, label %bb.gw

.preheader1064:                                   ; preds = %bb.gs
  %i.vj = trunc nsw i64 %i.vg to i32              ; 2 uses
  %i.vk = icmp ugt i64 %i.vg, 16
  %.pre1588 = load i64, ptr %i.t, align 8, !tbaa !83 ; 2 uses
  %.pre1590 = load i32, ptr %i.u, align 8, !tbaa !93 ; 2 uses
  br i1 %i.vk, label %.lr.ph1296, label %._crit_edge1297

.lr.ph1296:                                       ; preds = %.preheader1064, %bb.gu
end_hunk_1
