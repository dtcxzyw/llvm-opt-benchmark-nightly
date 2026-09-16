Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_gamepad?download=true
inline.NumInlined: 83
inline.NumDeleted: 30
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 9
begin_hunk_0_@SDL_PrivateAddGamepadMapping:bb.a
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %bb.s, label %bb.z

bb.s:                                             ; preds = %bb.r
  br i1 %i.ae, label %.thread118, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.av = call i64 @SDL_strlen_REAL(ptr noundef nonnull %.064) #9
  %i.aw = add i64 %i.av, 2                        ; 2 uses
  %i.ax = call noalias ptr @SDL_malloc_REAL(i64 noundef %i.aw) #9 ; 8 uses
  %.not.i106 = icmp eq ptr %i.ax, null
  br i1 %.not.i106, label %.thread125, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ay = call i64 @SDL_strlcpy_REAL(ptr noundef nonnull %i.ax, ptr noundef nonnull %.064, i64 noundef %i.aw) #9 ; 0 uses
  %i.az = call ptr @SDL_strstr_REAL(ptr noundef nonnull %i.ax, ptr noundef nonnull @.str.69) #9 ; 2 uses
  %i.ba = call ptr @SDL_strstr_REAL(ptr noundef nonnull %i.ax, ptr noundef nonnull @.str.70) #9 ; 2 uses
  %i.bb = call ptr @SDL_strstr_REAL(ptr noundef nonnull %i.ax, ptr noundef nonnull @.str.71) #9 ; 2 uses
  %.not22.i = icmp eq ptr %i.az, null
  br i1 %.not22.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 1
  store i8 120, ptr %i.bc, align 1
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.not23.i = icmp eq ptr %i.ba, null
  br i1 %.not23.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 1
  store i8 98, ptr %i.bd, align 1
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.not24.i = icmp eq ptr %i.bb, null
  br i1 %.not24.i, label %.thread118, label %.thread118.sink.split

bb.z:                                             ; preds = %bb.r
  %i.be = call i32 @SDL_strcmp_REAL(ptr noundef nonnull %i.e, ptr noundef nonnull @.str.68) #9
  %i.bf = icmp eq i32 %i.be, 0
  br i1 %i.bf, label %bb.aa, label %bb.al

bb.aa:                                            ; preds = %bb.z
  br i1 %i.ae, label %.thread118, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bg = call i64 @SDL_strlen_REAL(ptr noundef nonnull %.064) #9
  %i.bh = add i64 %i.bg, 2                        ; 2 uses
  %i.bi = call noalias ptr @SDL_malloc_REAL(i64 noundef %i.bh) #9 ; 10 uses
  %.not.i107 = icmp eq ptr %i.bi, null
  br i1 %.not.i107, label %.thread125, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bj = call i64 @SDL_strlcpy_REAL(ptr noundef nonnull %i.bi, ptr noundef nonnull %.064, i64 noundef %i.bh) #9 ; 0 uses
  %i.bk = call ptr @SDL_strstr_REAL(ptr noundef nonnull %i.bi, ptr noundef nonnull @.str.72) #9 ; 2 uses
  %i.bl = call ptr @SDL_strstr_REAL(ptr noundef nonnull %i.bi, ptr noundef nonnull @.str.69) #9 ; 2 uses
  %i.bm = call ptr @SDL_strstr_REAL(ptr noundef nonnull %i.bi, ptr noundef nonnull @.str.70) #9 ; 2 uses
  %i.bn = call ptr @SDL_strstr_REAL(ptr noundef nonnull %i.bi, ptr noundef nonnull @.str.73) #9 ; 2 uses
  %i.bo = call ptr @SDL_strstr_REAL(ptr noundef nonnull %i.bi, ptr noundef nonnull @.str.74) #9 ; 2 uses
  %.not30.i = icmp eq ptr %i.bk, null
  br i1 %.not30.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 1
  store i8 98, ptr %i.bp, align 1
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.not31.i = icmp eq ptr %i.bl, null
  br i1 %.not31.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 1
  store i8 97, ptr %i.bq, align 1
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.not32.i = icmp eq ptr %i.bm, null
  br i1 %.not32.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 1
  store i8 121, ptr %i.br, align 1
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.not33.i = icmp eq ptr %i.bn, null
  br i1 %.not33.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 1
  store i8 120, ptr %i.bs, align 1
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.not34.i = icmp eq ptr %i.bo, null
  br i1 %.not34.i, label %.thread118, label %.thread118.sink.split

bb.al:                                            ; preds = %bb.z
  %i.bt = call ptr @SDL_GetHint_REAL(ptr noundef nonnull %i.e) #9 ; 2 uses
  %.not99 = icmp eq ptr %i.bt, null
  br i1 %.not99, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.bu = call ptr @SDL_getenv_unsafe_REAL(ptr noundef nonnull %i.e) #9
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %.0 = phi ptr [ %i.bt, %bb.al ], [ %i.bu, %bb.am ]
  %i.bv = call zeroext i1 @SDL_GetStringBoolean(ptr noundef %.0, i1 noundef zeroext %.061) #9
  %spec.select104 = xor i1 %i.ae, %i.bv
  br i1 %spec.select104, label %.thread118, label %bb.ao

.thread118.sink.split:                            ; preds = %bb.ak, %bb.y
  %.sink155 = phi ptr [ %i.bb, %bb.y ], [ %i.bo, %bb.ak ] ; 2 uses
  %.177.ph.ph = phi ptr [ %i.ax, %bb.y ], [ %i.bi, %bb.ak ] ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.sink155, i64 5 ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.sink155, i64 6
  %i.by = call i64 @SDL_strlen_REAL(ptr noundef nonnull %i.bw) #9
  %i.bz = add i64 %i.by, 1
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bx, ptr nonnull align 1 %i.bw, i64 %i.bz, i1 false)
  store i8 33, ptr %i.bw, align 1
  br label %.thread118

.thread118:                                       ; preds = %.thread118.sink.split, %bb.aa, %bb.s, %bb.y, %bb.ak, %bb.an
  %.177.ph = phi ptr [ %i.bi, %bb.ak ], [ null, %bb.an ], [ null, %bb.s ], [ null, %bb.aa ], [ %i.ax, %bb.y ], [ %.177.ph.ph, %.thread118.sink.split ]
  %.2.ph = phi ptr [ %i.bi, %bb.ak ], [ %.064, %bb.an ], [ %.064, %bb.s ], [ %.064, %bb.aa ], [ %i.ax, %bb.y ], [ %.177.ph.ph, %.thread118.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #9
  br label %.thread

.thread125:                                       ; preds = %bb.ab, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #9
  br label %bb.au

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #9
  br label %bb.au

.thread:                                          ; preds = %bb.k, %.thread118
  %.4117 = phi ptr [ %.2.ph, %.thread118 ], [ %.064, %bb.k ]
  %.379115 = phi ptr [ %.177.ph, %.thread118 ], [ null, %bb.k ] ; 5 uses
  %i.ca = call fastcc ptr @SDL_PrivateAddMappingForGUID(i64 %i.r, i64 %i.s, ptr noundef %.4117, ptr noundef nonnull %i.d, i32 noundef %1) ; 3 uses
  %.not102 = icmp eq ptr %i.ca, null
  br i1 %.not102, label %bb.au, label %bb.ap

bb.ap:                                            ; preds = %.thread
  %i.cb = load i8, ptr %i.d, align 1, !range !8, !noundef !9
  %i.cc = trunc nuw i8 %i.cb to i1
  br i1 %i.cc, label %bb.au, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  br i1 %.not93, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  store ptr %i.ca, ptr @s_pDefaultMapping, align 8
  br label %bb.au

bb.as:                                            ; preds = %bb.aq
  br i1 %.074, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  store ptr %i.ca, ptr @s_pXInputMapping, align 8
  br label %bb.au

bb.au:                                            ; preds = %bb.ao, %.thread125, %bb.ar, %bb.at, %bb.as, %bb.ap, %.thread
  %.379114 = phi ptr [ null, %bb.ao ], [ %.379115, %bb.ap ], [ %.379115, %.thread ], [ %.379115, %bb.as ], [ %.379115, %bb.at ], [ %.379115, %bb.ar ], [ null, %.thread125 ]
  %.5 = phi i32 [ 0, %bb.ao ], [ 0, %bb.ap ], [ -1, %.thread ], [ 1, %bb.as ], [ 1, %bb.at ], [ 1, %bb.ar ], [ -1, %.thread125 ]
  %i.cd = load ptr, ptr %i.a, align 8
  call void @SDL_free_REAL(ptr noundef %i.cd) #9
  call void @SDL_free_REAL(ptr noundef %.379114) #9
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.e, %bb.b
  %.063 = phi i32 [ -1, %bb.b ], [ %.5, %bb.au ], [ -1, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 %.063
}

; Function Attrs: nounwind uwtable
define hidden ptr @SDL_GetGamepadMappings_REAL(ptr nofree noundef writeonly captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %0, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @SDL_LockJoysticks_REAL() #9
  %.06891 = load ptr, ptr @s_pSupportedGamepads, align 8 ; 2 uses
  %.not7792 = icmp eq ptr %.06891, null
  br i1 %.not7792, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.c
  %.053.lcssa = phi i32 [ 0, %bb.c ], [ %spec.select, %.lr.ph ] ; 6 uses
  %i.a = add nuw nsw i32 %.053.lcssa, 1
  %i.b = zext nneg i32 %i.a to i64                ; 2 uses
  %i.c = tail call noalias ptr @SDL_calloc_REAL(i64 noundef %i.b, i64 noundef 8) #10 ; 5 uses
  %.not78 = icmp eq ptr %i.c, null
  br i1 %.not78, label %.thread87, label %.preheader

.preheader:                                       ; preds = %._crit_edge
  %.05795 = load ptr, ptr @s_pSupportedGamepads, align 8 ; 2 uses
  %.not7996 = icmp eq ptr %.05795, null
  br i1 %.not7996, label %._crit_edge101, label %.lr.ph100

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %.06894 = phi ptr [ %.068, %.lr.ph ], [ %.06891, %bb.c ] ; 2 uses
  %.05393 = phi i32 [ %spec.select, %.lr.ph ], [ 0, %bb.c ]
  %i.d = tail call i32 @SDL_memcmp_REAL(ptr noundef nonnull %.06894, ptr noundef nonnull @s_zeroGUID, i64 noundef 16) #9
  %i.e = icmp ne i32 %i.d, 0
  %i.f = zext i1 %i.e to i32
  %spec.select = add nuw nsw i32 %.05393, %i.f    ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.06894, i64 40
  %.068 = load ptr, ptr %i.g, align 8             ; 2 uses
  %.not77 = icmp eq ptr %.068, null
  br i1 %.not77, label %._crit_edge, label %.lr.ph, !llvm.loop !24

.lr.ph100:                                        ; preds = %.preheader, %bb.f
  %.05799 = phi ptr [ %.057, %bb.f ], [ %.05795, %.preheader ] ; 5 uses
  %.05898 = phi i32 [ %.2, %bb.f ], [ 0, %.preheader ] ; 3 uses
  %.06397 = phi i64 [ %.265, %bb.f ], [ 8, %.preheader ] ; 2 uses
  %i.h = tail call i32 @SDL_memcmp_REAL(ptr noundef nonnull %.05799, ptr noundef nonnull @s_zeroGUID, i64 noundef 16) #9
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %.lr.ph100
  %i.j = load i64, ptr %.05799, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %.05799, i64 8
  %i.l = load i64, ptr %i.k, align 8
  %i.m = tail call fastcc ptr @CreateMappingString(ptr noundef nonnull %.05799, i64 %i.j, i64 %i.l) ; 3 uses
  %.not80.not = icmp eq ptr %i.m, null
  br i1 %.not80.not, label %.thread85, label %bb.e

.thread85:                                        ; preds = %bb.d
  tail call void @SDL_UnlockJoysticks_REAL() #9
  br label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.n = add nsw i32 %.05898, 1
  %i.o = sext i32 %.05898 to i64
  %i.p = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.o
  store ptr %i.m, ptr %i.p, align 8
  %i.q = tail call i64 @SDL_strlen_REAL(ptr noundef nonnull %i.m) #9
  %i.r = add i64 %.06397, 9
  %i.s = add i64 %i.r, %i.q
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph100
  %.265 = phi i64 [ %.06397, %.lr.ph100 ], [ %i.s, %bb.e ] ; 2 uses
  %.2 = phi i32 [ %.05898, %.lr.ph100 ], [ %i.n, %bb.e ]
  %i.t = getelementptr inbounds nuw i8, ptr %.05799, i64 40
  %.057 = load ptr, ptr %i.t, align 8             ; 2 uses
  %.not79 = icmp eq ptr %.057, null
  br i1 %.not79, label %._crit_edge101, label %.lr.ph100, !llvm.loop !25

._crit_edge101:                                   ; preds = %bb.f, %.preheader
  %.063.lcssa = phi i64 [ 8, %.preheader ], [ %.265, %bb.f ] ; 2 uses
  tail call void @SDL_UnlockJoysticks_REAL() #9
  %i.u = tail call noalias ptr @SDL_malloc_REAL(i64 noundef %.063.lcssa) #9 ; 6 uses
  %.not81 = icmp eq ptr %i.u, null
  br i1 %.not81, label %bb.i, label %bb.g

bb.g:                                             ; preds = %._crit_edge101
  %i.v = zext i32 %.053.lcssa to i64              ; 3 uses
  %.not113 = icmp eq i32 %.053.lcssa, 0
  br i1 %.not113, label %._crit_edge108, label %.lr.ph107.preheader

.lr.ph107.preheader:                              ; preds = %bb.g
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.b
  %i.x = shl nuw nsw i64 %i.v, 3
  %.neg = xor i64 %i.x, -1
  %i.y = add i64 %.063.lcssa, %.neg
  br label %.lr.ph107

._crit_edge108:                                   ; preds = %.lr.ph107, %bb.g
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.v
  store ptr null, ptr %i.z, align 8
  br i1 %.not, label %bb.i, label %bb.h

.lr.ph107:                                        ; preds = %.lr.ph107.preheader, %.lr.ph107
  %indvars.iv = phi i64 [ 0, %.lr.ph107.preheader ], [ %indvars.iv.next, %.lr.ph107 ] ; 3 uses
  %.055104 = phi ptr [ %i.w, %.lr.ph107.preheader ], [ %i.ag, %.lr.ph107 ] ; 3 uses
  %.5103 = phi i64 [ %i.y, %.lr.ph107.preheader ], [ %i.af, %.lr.ph107 ] ; 2 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv
  store ptr %.055104, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = tail call i64 @SDL_strlcpy_REAL(ptr noundef %.055104, ptr noundef %i.ac, i64 noundef %.5103) #9
  %i.ae = add i64 %i.ad, 1                        ; 2 uses
  %i.af = sub i64 %.5103, %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %.055104, i64 %i.ae
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.v
  br i1 %exitcond.not, label %._crit_edge108, label %.lr.ph107, !llvm.loop !26

bb.h:                                             ; preds = %._crit_edge108
  store i32 %.053.lcssa, ptr %0, align 4
  br label %bb.i

.thread87:                                        ; preds = %._crit_edge
  tail call void @SDL_UnlockJoysticks_REAL() #9
  br label %bb.j

bb.i:                                             ; preds = %.thread85, %._crit_edge108, %bb.h, %._crit_edge101
  %.069 = phi ptr [ %i.u, %._crit_edge108 ], [ null, %.thread85 ], [ null, %._crit_edge101 ], [ %i.u, %bb.h ]
  %.not114 = icmp eq i32 %.053.lcssa, 0
  br i1 %.not114, label %._crit_edge112, label %.lr.ph111.preheader

.lr.ph111.preheader:                              ; preds = %bb.i
  %wide.trip.count119 = zext i32 %.053.lcssa to i64
  br label %.lr.ph111

._crit_edge112:                                   ; preds = %.lr.ph111, %bb.i
  tail call void @SDL_free_REAL(ptr noundef nonnull %i.c) #9
  br label %bb.j

.lr.ph111:                                        ; preds = %.lr.ph111.preheader, %.lr.ph111
  %indvars.iv116 = phi i64 [ 0, %.lr.ph111.preheader ], [ %indvars.iv.next117, %.lr.ph111 ] ; 2 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv116
  %i.ai = load ptr, ptr %i.ah, align 8
  tail call void @SDL_free_REAL(ptr noundef %i.ai) #9
  %indvars.iv.next117 = add nuw nsw i64 %indvars.iv116, 1 ; 2 uses
  %exitcond120.not = icmp eq i64 %indvars.iv.next117, %wide.trip.count119
  br i1 %exitcond120.not, label %._crit_edge112, label %.lr.ph111, !llvm.loop !27

bb.j:                                             ; preds = %.thread87, %._crit_edge112
  %.06989 = phi ptr [ null, %.thread87 ], [ %.069, %._crit_edge112 ]
  ret ptr %.06989
}

declare i32 @SDL_memcmp_REAL(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: allocsize(0,1)
declare noalias ptr @SDL_calloc_REAL(i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc ptr @CreateMappingString(ptr nofree noundef readonly captures(none) %0, i64 %1, i64 %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [33 x i8], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  tail call void @SDL_AssertJoysticksLocked() #9
  call void @SDL_GUIDToString_REAL(i64 %1, i64 %2, ptr noundef nonnull %i.a, i32 noundef 33) #9
  %i.b = call i64 @SDL_strlen_REAL(ptr noundef nonnull %i.a) #9
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = call i64 @SDL_strlen_REAL(ptr noundef %i.d) #9
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = call i64 @SDL_strlen_REAL(ptr noundef %i.g) #9
  %i.i = add i64 %i.b, 2
  %i.j = add i64 %i.i, %i.e
  %i.k = add i64 %i.j, %i.h                       ; 2 uses
  %i.l = add i64 %i.k, 1                          ; 2 uses
  %i.m = load ptr, ptr %i.f, align 8
  %i.n = call ptr @SDL_strstr_REAL(ptr noundef %i.m, ptr noundef nonnull @.str.1) #9
  %.not = icmp eq ptr %i.n, null                  ; 2 uses
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.p = call i64 @SDL_strlen_REAL(ptr noundef %i.o) #9
  %i.q = getelementptr i8, ptr %i.o, i64 %i.p
  %i.r = getelementptr i8, ptr %i.q, i64 -1
  %i.s = load i8, ptr %i.r, align 1
  %.not38 = icmp eq i8 %i.s, 44
  %i.t = add i64 %i.k, 2
  %spec.select = select i1 %.not38, i64 %i.l, i64 %i.t
  %i.u = call ptr @SDL_GetPlatform_REAL() #9      ; 2 uses
  %i.v = call i64 @SDL_strlen_REAL(ptr noundef nonnull @.str.1) #9
  %i.w = call i64 @SDL_strlen_REAL(ptr noundef %i.u) #9
  %i.x = add i64 %i.v, 1
  %i.y = add i64 %i.x, %spec.select
  %i.z = add i64 %i.y, %i.w
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.1 = phi i64 [ %i.l, %bb.a ], [ %i.z, %bb.b ]  ; 6 uses
  %.0 = phi ptr [ null, %bb.a ], [ %i.u, %bb.b ]
  %i.aa = call noalias ptr @SDL_malloc_REAL(i64 noundef %.1) #9 ; 8 uses
  %.not39 = icmp eq ptr %i.aa, null
  br i1 %.not39, label %bb.k, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = load ptr, ptr %i.c, align 8
  %i.ac = load ptr, ptr %i.f, align 8
  %i.ad = call i32 (ptr, i64, ptr, ...) @SDL_snprintf_REAL(ptr noundef nonnull %i.aa, i64 noundef %.1, ptr noundef nonnull @.str.9, ptr noundef nonnull %i.a, ptr noundef %i.ab, ptr noundef %i.ac) #9 ; 0 uses
  br i1 %.not, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.ae = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.af = call i64 @SDL_strlen_REAL(ptr noundef %i.ae) #9
  %i.ag = getelementptr i8, ptr %i.ae, i64 %i.af
  %i.ah = getelementptr i8, ptr %i.ag, i64 -1
  %i.ai = load i8, ptr %i.ah, align 1
  %.not40 = icmp eq i8 %i.ai, 44
  br i1 %.not40, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aj = call i64 @SDL_strlcat_REAL(ptr noundef nonnull %i.aa, ptr noundef nonnull @.str.75, i64 noundef %.1) #9 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ak = call i64 @SDL_strlcat_REAL(ptr noundef nonnull %i.aa, ptr noundef nonnull @.str.1, i64 noundef %.1) #9 ; 0 uses
  %i.al = call i64 @SDL_strlcat_REAL(ptr noundef nonnull %i.aa, ptr noundef %.0, i64 noundef %.1) #9 ; 0 uses
  %i.am = call i64 @SDL_strlcat_REAL(ptr noundef nonnull %i.aa, ptr noundef nonnull @.str.75, i64 noundef %.1) #9 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  %i.an = call ptr @SDL_strstr_REAL(ptr noundef nonnull %i.aa, ptr noundef nonnull @.str.1) #9 ; 2 uses
  %.not41 = icmp eq ptr %i.an, null
  br i1 %.not41, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 1
  %i.ap = call ptr @SDL_strstr_REAL(ptr noundef nonnull %i.ao, ptr noundef nonnull @.str.1) #9 ; 2 uses
  %.not42 = icmp eq ptr %i.ap, null
  br i1 %.not42, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i8 0, ptr %i.ap, align 1
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.j, %bb.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret ptr %i.aa
}

declare noalias ptr @SDL_malloc_REAL(i64 noundef) local_unnamed_addr #2

declare i64 @SDL_strlcpy_REAL(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden ptr @SDL_GetGamepadMappingForGUID_REAL(i64 %0, i64 %1) local_unnamed_addr #0 {
bb.a:
  tail call void @SDL_LockJoysticks_REAL() #9
  %i.a = tail call fastcc ptr @SDL_PrivateGetGamepadMappingForGUID(i64 %0, i64 %1, i1 noundef zeroext false) ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call fastcc ptr @CreateMappingString(ptr noundef nonnull %i.a, i64 %0, i64 %1)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.3) #9 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ %i.b, %bb.b ], [ null, %bb.c ]
  tail call void @SDL_UnlockJoysticks_REAL() #9
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @SDL_PrivateGetGamepadMappingForGUID(i64 %0, i64 %1, i1 noundef zeroext %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 3 uses
  %i.b = alloca [1024 x i8], align 16             ; 5 uses
  %i.c = alloca i8, align 1                       ; 3 uses
  %i.d = alloca [1024 x i8], align 16             ; 51 uses
  %i.e = alloca i16, align 2                      ; 22 uses
  %i.f = alloca i16, align 2                      ; 24 uses
  %i.g = alloca i16, align 2                      ; 4 uses
  %.fr = freeze i64 %1                            ; 18 uses
  %i.h = tail call fastcc ptr @SDL_PrivateMatchGamepadMappingForGUID(i64 %0, i64 %.fr, i1 noundef zeroext true, i1 noundef zeroext true) ; 2 uses
  %.not = icmp ne ptr %i.h, null
  %brmerge = or i1 %2, %.not
  br i1 %brmerge, label %bb.cr, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = tail call fastcc ptr @SDL_PrivateMatchGamepadMappingForGUID(i64 %0, i64 %.fr, i1 noundef zeroext true, i1 noundef zeroext false) ; 2 uses
  %.not39 = icmp eq ptr %i.i, null
  br i1 %.not39, label %bb.c, label %bb.cr

bb.c:                                             ; preds = %bb.b
  %i.j = tail call zeroext i1 @SDL_JoystickGUIDUsesVersion(i64 %0, i64 %.fr) #9
  br i1 %i.j, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.k = tail call fastcc ptr @SDL_PrivateMatchGamepadMappingForGUID(i64 %0, i64 %.fr, i1 noundef zeroext false, i1 noundef zeroext true) ; 2 uses
  %.not40 = icmp eq ptr %i.k, null
  br i1 %.not40, label %bb.e, label %bb.cr

bb.e:                                             ; preds = %bb.d
  %i.l = tail call fastcc ptr @SDL_PrivateMatchGamepadMappingForGUID(i64 %0, i64 %.fr, i1 noundef zeroext false, i1 noundef zeroext false) ; 2 uses
  %.not41 = icmp eq ptr %i.l, null
  br i1 %.not41, label %bb.f, label %bb.cr

bb.f:                                             ; preds = %bb.e, %bb.c
  %i.m = tail call zeroext i1 @SDL_IsJoystickHIDAPI(i64 %0, i64 %.fr) #9
  br i1 %i.m, label %bb.g, label %bb.cm

bb.g:                                             ; preds = %bb.f
  %.sroa.8.8.extract.shift.i = lshr i64 %.fr, 56  ; 4 uses
  %.sroa.8.8.extract.trunc.i = trunc nuw i64 %.sroa.8.8.extract.shift.i to i8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #9
  %i.n = call i64 @SDL_strlcpy_REAL(ptr noundef nonnull %i.d, ptr noundef nonnull @.str.77, i64 noundef 1024) #9, !inline_history !28 ; 0 uses
  call void @SDL_GetJoystickGUIDInfo_REAL(i64 %0, i64 %.fr, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g, ptr noundef null) #9, !inline_history !28
  %i.o = load i16, ptr %i.e, align 2
  %i.p = load i16, ptr %i.f, align 2
  %i.q = call zeroext i1 @SDL_IsJoystickWheel(i16 noundef zeroext %i.o, i16 noundef zeroext %i.p) #9, !inline_history !28
  br i1 %i.q, label %SDL_CreateMappingForHIDAPIGamepad.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = load i16, ptr %i.e, align 2              ; 4 uses
  %i.s = icmp eq i16 %i.r, 1406                   ; 7 uses
end_hunk_0
begin_hunk_1_@SDL_PrivateParseGamepadElement:bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 1, ptr %i.u, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 20
  store i32 %i.n, ptr %i.v, align 4
  br label %bb.l

bb.l:                                             ; preds = %bb.e, %bb.h, %bb.i, %bb.g, %bb.k
  %i.w = load i8, ptr %2, align 1                 ; 2 uses
  switch i8 %i.w, label %bb.n [
    i8 43, label %bb.m
    i8 45, label %bb.m
  ]

bb.m:                                             ; preds = %bb.l, %bb.l
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.y = zext nneg i8 %i.w to i32
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %.063 = phi i32 [ %i.y, %bb.m ], [ 0, %bb.l ]
  %.058 = phi ptr [ %i.x, %bb.m ], [ %2, %bb.l ]  ; 10 uses
  %i.z = tail call i64 @SDL_strlen_REAL(ptr noundef nonnull %.058) #9
  %i.aa = getelementptr i8, ptr %.058, i64 %i.z
  %i.ab = getelementptr i8, ptr %i.aa, i64 -1
  %i.ac = load i8, ptr %i.ab, align 1
  %i.ad = icmp eq i8 %i.ac, 126
  %i.ae = load i8, ptr %.058, align 1             ; 2 uses
  %i.af = icmp eq i8 %i.ae, 97
  br i1 %i.af, label %bb.o, label %bb.u

bb.o:                                             ; preds = %bb.n
  %i.ag = getelementptr inbounds nuw i8, ptr %.058, i64 1 ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 1
  %i.ai = zext i8 %i.ah to i32
  %i.aj = tail call i32 @SDL_isdigit_REAL(i32 noundef %i.ai) #9
  %.not76 = icmp eq i32 %i.aj, 0
  br i1 %.not76, label %thread-pre-split, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i32 2, ptr %3, align 4
  %i.ak = tail call i32 @SDL_atoi_REAL(ptr noundef nonnull %i.ag) #9
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %i.ak, ptr %i.al, align 4
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 8
  switch i32 %.063, label %bb.r [
    i32 43, label %bb.s
    i32 45, label %bb.q
  ]

bb.q:                                             ; preds = %bb.p
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  br label %bb.s

bb.s:                                             ; preds = %bb.p, %bb.q, %bb.r
  %i.an = phi <2 x i32> [ <i32 -32768, i32 0>, %bb.q ], [ <i32 32767, i32 -32768>, %bb.r ], [ <i32 32767, i32 0>, %bb.p ]
  %i.ao = phi <2 x i32> [ <i32 0, i32 -32768>, %bb.q ], [ <i32 -32768, i32 32767>, %bb.r ], [ <i32 0, i32 32767>, %bb.p ]
  store <2 x i32> %i.ao, ptr %i.am, align 4
  br i1 %i.ad, label %bb.t, label %bb.ac

bb.t:                                             ; preds = %bb.s
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 8
  store <2 x i32> %i.an, ptr %i.ap, align 4
  br label %bb.ac

thread-pre-split:                                 ; preds = %bb.o
  %.pr = load i8, ptr %.058, align 1
  br label %bb.u

bb.u:                                             ; preds = %thread-pre-split, %bb.n
  %i.aq = phi i8 [ %.pr, %thread-pre-split ], [ %i.ae, %bb.n ] ; 2 uses
  %i.ar = icmp eq i8 %i.aq, 98
  br i1 %i.ar, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.as = getelementptr inbounds nuw i8, ptr %.058, i64 1 ; 2 uses
  %i.at = load i8, ptr %i.as, align 1
  %i.au = zext i8 %i.at to i32
  %i.av = tail call i32 @SDL_isdigit_REAL(i32 noundef %i.au) #9
  %.not77 = icmp eq i32 %i.av, 0
  br i1 %.not77, label %._crit_edge87, label %bb.w

._crit_edge87:                                    ; preds = %bb.v
  %.pre = load i8, ptr %.058, align 1
  br label %bb.x

bb.w:                                             ; preds = %bb.v
  store i32 1, ptr %3, align 4
  %i.aw = tail call i32 @SDL_atoi_REAL(ptr noundef nonnull %i.as) #9
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %i.aw, ptr %i.ax, align 4
  br label %bb.ac

bb.x:                                             ; preds = %._crit_edge87, %bb.u
  %i.ay = phi i8 [ %.pre, %._crit_edge87 ], [ %i.aq, %bb.u ]
  %i.az = icmp eq i8 %i.ay, 104
  br i1 %i.az, label %bb.y, label %.loopexit

bb.y:                                             ; preds = %bb.x
  %i.ba = getelementptr inbounds nuw i8, ptr %.058, i64 1 ; 2 uses
  %i.bb = load i8, ptr %i.ba, align 1
  %i.bc = zext i8 %i.bb to i32
  %i.bd = tail call i32 @SDL_isdigit_REAL(i32 noundef %i.bc) #9
  %.not78 = icmp eq i32 %i.bd, 0
  br i1 %.not78, label %.loopexit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.be = getelementptr inbounds nuw i8, ptr %.058, i64 2
  %i.bf = load i8, ptr %i.be, align 1
  %i.bg = icmp eq i8 %i.bf, 46
  br i1 %i.bg, label %bb.aa, label %.loopexit

bb.aa:                                            ; preds = %bb.z
  %i.bh = getelementptr inbounds nuw i8, ptr %.058, i64 3 ; 2 uses
  %i.bi = load i8, ptr %i.bh, align 1
  %i.bj = zext i8 %i.bi to i32
  %i.bk = tail call i32 @SDL_isdigit_REAL(i32 noundef %i.bj) #9
  %.not79 = icmp eq i32 %i.bk, 0
  br i1 %.not79, label %.loopexit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bl = tail call i32 @SDL_atoi_REAL(ptr noundef nonnull %i.ba) #9
  %i.bm = tail call i32 @SDL_atoi_REAL(ptr noundef nonnull %i.bh) #9
  store i32 3, ptr %3, align 4
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %i.bl, ptr %i.bn, align 4
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.bm, ptr %i.bo, align 4
  br label %bb.ac

bb.ac:                                            ; preds = %bb.w, %bb.ab, %bb.s, %bb.t
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.bq = load i32, ptr %i.bp, align 8            ; 2 uses
  %i.br = icmp sgt i32 %i.bq, 0
  br i1 %i.br, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.ac
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ae
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bt = load i32, ptr %i.bp, align 8            ; 2 uses
  %i.bu = sext i32 %i.bt to i64
  %i.bv = icmp slt i64 %indvars.iv.next, %i.bu
  br i1 %i.bv, label %bb.ae, label %._crit_edge, !llvm.loop !68

bb.ae:                                            ; preds = %.lr.ph, %bb.ad
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.ad ] ; 2 uses
  %i.bw = load ptr, ptr %i.bs, align 8
  %i.bx = getelementptr inbounds nuw [32 x i8], ptr %i.bw, i64 %indvars.iv
  %i.by = call i32 @SDL_memcmp_REAL(ptr noundef %i.bx, ptr noundef nonnull %3, i64 noundef 32) #9
  %i.bz = icmp eq i32 %i.by, 0
  br i1 %i.bz, label %.loopexit, label %bb.ad

._crit_edge:                                      ; preds = %bb.ad, %bb.ac
  %.lcssa = phi i32 [ %i.bq, %bb.ac ], [ %i.bt, %bb.ad ]
  %i.ca = add nsw i32 %.lcssa, 1                  ; 2 uses
  store i32 %i.ca, ptr %i.bp, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.cc = load ptr, ptr %i.cb, align 8
  %i.cd = sext i32 %i.ca to i64
  %i.ce = shl nsw i64 %i.cd, 5
  %i.cf = call ptr @SDL_realloc_REAL(ptr noundef %i.cc, i64 noundef %i.ce) #11 ; 3 uses
  %.not80 = icmp eq ptr %i.cf, null
  br i1 %.not80, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %._crit_edge
  %i.cg = load ptr, ptr %i.cb, align 8
  call void @SDL_free_REAL(ptr noundef %i.cg) #9
  store i32 0, ptr %i.bp, align 8
  store ptr null, ptr %i.cb, align 8
  br label %.loopexit

bb.ag:                                            ; preds = %._crit_edge
  store ptr %i.cf, ptr %i.cb, align 8
  %i.ch = load i32, ptr %i.bp, align 8
  %i.ci = sext i32 %i.ch to i64
  %i.cj = getelementptr [32 x i8], ptr %i.cf, i64 %i.ci
  %i.ck = getelementptr i8, ptr %i.cj, i64 -32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.ck, ptr noundef nonnull align 4 dereferenceable(32) %3, i64 32, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.ae, %bb.x, %bb.y, %bb.z, %bb.aa, %bb.j, %bb.ag, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  ret void
}

declare i32 @SDL_isdigit_REAL(i32 noundef) local_unnamed_addr #2

declare i64 @SDL_GetTicks_REAL() local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { allocsize(1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nounwind }
attributes #10 = { nounwind allocsize(0,1) }
attributes #11 = { nounwind allocsize(1) }

!llvm.module.flags = !{!2, !3}
!llvm.ident = !{!4}

!0 = distinct !{ptr @SDL_PrivateGetGamepadMapping, null}
!1 = distinct !{!1, !6}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!5 = !{ptr @SDL_PrivateGetGamepadMapping}
!6 = !{!"llvm.loop.mustprogress"}
!7 = !{ptr @SDL_PrivateGamepadAdded}
!8 = !{i8 0, i8 2}
!9 = !{}
!10 = distinct !{null, ptr @SDL_PrivateGetGamepadMapping}
!11 = distinct !{!11, !6, !13}
!12 = distinct !{!12, !6}
!13 = !{!"llvm.loop.peeled.count", i32 6}
!14 = distinct !{!14, !6}
!15 = distinct !{!15, !6}
!16 = distinct !{!16, !6}
!17 = distinct !{!17, !6}
!18 = distinct !{!18, !6}
!19 = distinct !{!19, !6}
!20 = distinct !{!20, !6}
!21 = distinct !{!21, !6}
!22 = distinct !{!22, !6}
!23 = distinct !{!23, !6}
!24 = distinct !{!24, !6}
!25 = distinct !{!25, !6}
!26 = distinct !{!26, !6}
!27 = distinct !{!27, !6}
!28 = distinct !{null}
!29 = distinct !{null}
!30 = distinct !{!30, !6}
!31 = distinct !{!31, !6}
!32 = distinct !{!32, !6}
!33 = !{ptr @SDL_PrivateGetGamepadMappingForGUID}
!34 = distinct !{!34, !6}
!35 = distinct !{!35, !6}
!36 = distinct !{!36, !6}
!37 = distinct !{!37, !6}
!38 = distinct !{!38, !6}
!39 = distinct !{!39, !6}
!40 = distinct !{!40, !6}
!41 = distinct !{!41, !6}
!42 = distinct !{!42, !6}
!43 = distinct !{!43, !6}
!44 = distinct !{null}
!45 = distinct !{null}
!46 = distinct !{!46, !6}
!47 = distinct !{!47, !6}
!48 = distinct !{!48, !6}
!49 = distinct !{!49, !6}
!50 = distinct !{!50, !6}
!51 = distinct !{!51, !6}
!52 = distinct !{!52, !6}
!53 = distinct !{!53, !6}
!54 = distinct !{!54, !6}
!55 = distinct !{!55, !6}
!56 = distinct !{!56, !6}
!57 = distinct !{!57, !6}
!58 = distinct !{!58, !6}
!59 = distinct !{!59, !6}
!60 = distinct !{!60, !6}
!61 = distinct !{!61, !6}
!62 = distinct !{!62, !6}
!63 = distinct !{!63, !6}
!64 = distinct !{!64, !6}
!65 = distinct !{!65, !6}
!66 = distinct !{!66, !6}
!67 = distinct !{!67, !6}
!68 = distinct !{!68, !6}
end_hunk_1
