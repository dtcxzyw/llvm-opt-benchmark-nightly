Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/intel-gtt?download=true
inline.NumInlined: 80
inline.NumDeleted: 43
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@intel_gmch_enable_gtt:bb.a

bb.h:                                             ; preds = %bb.g
  %i.ae = load ptr, ptr getelementptr inbounds nuw (i8, ptr @intel_private, i64 8), align 8
  %i.af = getelementptr i8, ptr %i.ae, i64 200
  %i.ag = call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.w) #10, !srcloc !13
  %i.ah = load i32, ptr getelementptr inbounds nuw (i8, ptr @intel_private, i64 40), align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.af, ptr noundef @.str.1, i32 noundef %i.ag, i32 noundef %i.ah) #12
  br label %bb.k

bb.i:                                             ; preds = %._crit_edge, %bb.f
  %i.ai = phi i32 [ %.pre8, %._crit_edge ], [ %i.z, %bb.f ]
  %i.aj = and i32 %i.ai, 255
  %i.ak = icmp samesign ugt i32 %i.aj, 2
  br i1 %i.ak, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.al = load ptr, ptr getelementptr inbounds nuw (i8, ptr @intel_private, i64 24), align 8
  %i.am = getelementptr i8, ptr %i.al, i64 8560
  call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 0, ptr elementtype(i32) %i.am) #10, !srcloc !12
  br label %bb.k

bb.k:                                             ; preds = %bb.c, %bb.i, %bb.j, %bb.h
  %.1 = phi i1 [ false, %bb.h ], [ false, %bb.c ], [ true, %bb.j ], [ true, %bb.i ]
  ret i1 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @pci_read_config_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @pci_write_config_word(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold noredzone null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @intel_gmch_gtt_insert_page(i64 noundef %0, i32 noundef %1, i32 noundef %2) #0 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr @intel_private, align 8
  %i.b = getelementptr i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(i64 noundef %0, i32 noundef %1, i32 noundef %2) #11
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @intel_private, i64 48), align 8
  %i.e = zext i32 %1 to i64
  %i.f = getelementptr [4 x i8], ptr %i.d, i64 %i.e
  %i.g = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.f) #10, !srcloc !13 ; 0 uses
  %i.h = load ptr, ptr @intel_private, align 8
  %i.i = getelementptr i8, ptr %i.h, i64 48
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void %i.j() #11
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @intel_gmch_gtt_insert_sg_entries(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.b = load i32, ptr %i.a, align 8
  %.not29 = icmp eq i32 %i.b, 0
  br i1 %.not29, label %._crit_edge27, label %.lr.ph26.preheader

.lr.ph26.preheader:                               ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8
  br label %.lr.ph26

.lr.ph26:                                         ; preds = %.lr.ph26.preheader, %sg_next.exit
  %.024 = phi ptr [ %.06.i, %sg_next.exit ], [ %i.c, %.lr.ph26.preheader ] ; 4 uses
  %.01623 = phi i32 [ %.1.lcssa, %sg_next.exit ], [ %1, %.lr.ph26.preheader ] ; 2 uses
  %.01722 = phi i32 [ %i.o, %sg_next.exit ], [ 0, %.lr.ph26.preheader ]
  %i.d = getelementptr i8, ptr %.024, i64 24
  %i.e = load i32, ptr %i.d, align 8
  %i.f = lshr i32 %i.e, 12                        ; 2 uses
  %.not30 = icmp eq i32 %i.f, 0
  br i1 %.not30, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph26
  %i.g = getelementptr i8, ptr %.024, i64 16
  %wide.trip.count = zext nneg i32 %i.f to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %.121 = phi i32 [ %.01623, %.lr.ph ], [ %i.n, %bb.b ] ; 2 uses
  %i.h = load i64, ptr %i.g, align 8
  %i.i = shl nuw nsw i64 %indvars.iv, 12
  %i.j = add i64 %i.h, %i.i
  %i.k = load ptr, ptr @intel_private, align 8
  %i.l = getelementptr i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(i64 noundef %i.j, i32 noundef %.121, i32 noundef %2) #11
  %i.n = add i32 %.121, 1                         ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !19

._crit_edge:                                      ; preds = %bb.b, %.lr.ph26
  %.1.lcssa = phi i32 [ %.01623, %.lr.ph26 ], [ %i.n, %bb.b ] ; 2 uses
  %i.o = add nuw i32 %.01722, 1                   ; 2 uses
  %.val.i = load i64, ptr %.024, align 8
  %i.p = and i64 %.val.i, 2
  %.not.i = icmp eq i64 %i.p, 0
  br i1 %.not.i, label %bb.c, label %sg_next.exit

bb.c:                                             ; preds = %._crit_edge
  %i.q = getelementptr i8, ptr %.024, i64 32      ; 2 uses
  %.val7.i = load i64, ptr %i.q, align 8          ; 2 uses
  %i.r = trunc i64 %.val7.i to i1
  br i1 %i.r, label %bb.d, label %sg_next.exit, !prof !15

bb.d:                                             ; preds = %bb.c
  %i.s = and i64 %.val7.i, -4
  %i.t = inttoptr i64 %i.s to ptr
  br label %sg_next.exit

sg_next.exit:                                     ; preds = %._crit_edge, %bb.c, %bb.d
  %.06.i = phi ptr [ null, %._crit_edge ], [ %i.t, %bb.d ], [ %i.q, %bb.c ]
  %i.u = load i32, ptr %i.a, align 8
  %i.v = icmp ult i32 %i.o, %i.u
  br i1 %i.v, label %.lr.ph26, label %._crit_edge27, !llvm.loop !20

._crit_edge27:                                    ; preds = %sg_next.exit, %bb.a
  %.016.lcssa = phi i32 [ %1, %bb.a ], [ %.1.lcssa, %sg_next.exit ]
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @intel_private, i64 48), align 8
  %i.x = sext i32 %.016.lcssa to i64
  %i.y = getelementptr [4 x i8], ptr %i.w, i64 %i.x
  %i.z = getelementptr i8, ptr %i.y, i64 -4
  %i.aa = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.z) #10, !srcloc !13 ; 0 uses
  %i.ab = load ptr, ptr @intel_private, align 8
  %i.ac = getelementptr i8, ptr %i.ab, i64 48
  %i.ad = load ptr, ptr %i.ac, align 8            ; 2 uses
  %.not = icmp eq ptr %i.ad, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %._crit_edge27
  tail call void %i.ad() #11
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge27
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i64 @intel_gmch_gtt_read_entry(i32 noundef %0, ptr noundef %1, ptr noundef %2) #0 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr @intel_private, align 8
  %i.b = getelementptr i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call i64 %i.c(i32 noundef %0, ptr noundef %1, ptr noundef %2) #11
  ret i64 %i.d
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @intel_gmch_gtt_clear_range(i32 noundef %0, i32 noundef %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = add i32 %1, %0                           ; 2 uses
  %i.b = icmp ult i32 %0, %i.a
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.06 = phi i32 [ %i.g, %.lr.ph ], [ %0, %bb.a ] ; 2 uses
  %i.c = load ptr, ptr @intel_private, align 8
  %i.d = getelementptr i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = load i64, ptr getelementptr inbounds nuw (i8, ptr @intel_private, i64 160), align 8
  tail call void %i.e(i64 noundef %i.f, i32 noundef %.06, i32 noundef 0) #11
  %i.g = add i32 %.06, 1                          ; 2 uses
  %exitcond.not = icmp eq i32 %i.g, %i.a
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !0

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  tail call void asm sideeffect "sfence", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !16
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 0, 2) i32 @intel_gmch_probe(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2) #0 align 16 prefalign(16) {
bb.a:
  %3 = alloca %struct.pci_bus_region, align 8     ; 5 uses
  %i.a = alloca i16, align 2                      ; 5 uses
  %i.b = alloca i16, align 2                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i16, align 2                      ; 5 uses
  %.not25 = icmp eq ptr %1, null
  br i1 %.not25, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.a, %find_gmch.exit.thread.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %find_gmch.exit.thread.us ], [ 0, %bb.a ] ; 2 uses
  %i.e = getelementptr [24 x i8], ptr @intel_gtt_chipsets, i64 %indvars.iv ; 3 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = and i32 %i.f, 65535                      ; 2 uses
  %i.h = tail call ptr @pci_get_device(i32 noundef 32902, i32 noundef %i.g, ptr noundef null) #11 ; 4 uses
  %.not.i.us = icmp eq ptr %i.h, null
  br i1 %.not.i.us, label %find_gmch.exit.thread.us, label %bb.b

bb.b:                                             ; preds = %.split.us
  %i.i = getelementptr i8, ptr %i.h, i64 56
  %i.j = load i32, ptr %i.i, align 8
  %i.k = and i32 %i.j, 7
  %.not9.i.us = icmp eq i32 %i.k, 0
  br i1 %.not9.i.us, label %.split48.us, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = tail call ptr @pci_get_device(i32 noundef 32902, i32 noundef %i.g, ptr noundef nonnull %i.h) #11 ; 2 uses
  %.not10.i.us = icmp eq ptr %i.l, null
  br i1 %.not10.i.us, label %find_gmch.exit.thread.us, label %.split48.us

find_gmch.exit.thread.us:                         ; preds = %bb.c, %.split.us
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.us = icmp eq i64 %indvars.iv.next, 35
  br i1 %.not.us, label %thread-pre-split, label %.split.us, !llvm.loop !21

.split:                                           ; preds = %bb.a
  %i.m = getelementptr i8, ptr %1, i64 62
  %i.n = load i16, ptr %i.m, align 2
  switch i16 %i.n, label %thread-pre-split [
    i16 28961, label %bb.d
    i16 28963, label %.fold.split
    i16 28965, label %.fold.split70
    i16 4402, label %.fold.split71
    i16 13687, label %.fold.split72
    i16 9570, label %.fold.split73
    i16 13710, label %.fold.split74
    i16 13698, label %.fold.split75
    i16 9586, label %.fold.split76
    i16 9610, label %.fold.split77
    i16 9602, label %.fold.split78
    i16 9618, label %.fold.split79
    i16 10098, label %.fold.split80
    i16 10146, label %.fold.split81
    i16 10158, label %.fold.split82
    i16 10610, label %.fold.split83
    i16 10626, label %.fold.split84
    i16 10642, label %.fold.split85
    i16 10658, label %.fold.split86
    i16 10754, label %.fold.split87
    i16 10770, label %.fold.split88
    i16 10690, label %.fold.split89
    i16 10674, label %.fold.split90
    i16 10706, label %.fold.split91
    i16 -24559, label %.fold.split92
    i16 -24575, label %.fold.split93
    i16 10818, label %.fold.split94
    i16 11778, label %.fold.split95
    i16 11794, label %.fold.split96
    i16 11810, label %.fold.split97
    i16 11842, label %.fold.split98
    i16 11922, label %.fold.split99
    i16 11826, label %.fold.split100
    i16 66, label %.fold.split101
    i16 70, label %.fold.split102
  ]

.fold.split:                                      ; preds = %.split
  br label %bb.d

.fold.split70:                                    ; preds = %.split
  br label %bb.d

.fold.split71:                                    ; preds = %.split
  br label %bb.d

.fold.split72:                                    ; preds = %.split
  br label %bb.d

.fold.split73:                                    ; preds = %.split
  br label %bb.d

.fold.split74:                                    ; preds = %.split
  br label %bb.d

.fold.split75:                                    ; preds = %.split
  br label %bb.d

.fold.split76:                                    ; preds = %.split
  br label %bb.d

.fold.split77:                                    ; preds = %.split
  br label %bb.d

.fold.split78:                                    ; preds = %.split
  br label %bb.d

.fold.split79:                                    ; preds = %.split
  br label %bb.d

.fold.split80:                                    ; preds = %.split
  br label %bb.d

.fold.split81:                                    ; preds = %.split
  br label %bb.d

.fold.split82:                                    ; preds = %.split
  br label %bb.d

.fold.split83:                                    ; preds = %.split
  br label %bb.d

.fold.split84:                                    ; preds = %.split
  br label %bb.d

.fold.split85:                                    ; preds = %.split
  br label %bb.d

.fold.split86:                                    ; preds = %.split
  br label %bb.d

.fold.split87:                                    ; preds = %.split
  br label %bb.d

.fold.split88:                                    ; preds = %.split
  br label %bb.d

.fold.split89:                                    ; preds = %.split
  br label %bb.d

.fold.split90:                                    ; preds = %.split
  br label %bb.d

.fold.split91:                                    ; preds = %.split
  br label %bb.d

.fold.split92:                                    ; preds = %.split
  br label %bb.d

.fold.split93:                                    ; preds = %.split
  br label %bb.d

.fold.split94:                                    ; preds = %.split
  br label %bb.d

.fold.split95:                                    ; preds = %.split
  br label %bb.d

.fold.split96:                                    ; preds = %.split
  br label %bb.d

.fold.split97:                                    ; preds = %.split
  br label %bb.d

.fold.split98:                                    ; preds = %.split
  br label %bb.d

.fold.split99:                                    ; preds = %.split
  br label %bb.d

.fold.split100:                                   ; preds = %.split
  br label %bb.d

.fold.split101:                                   ; preds = %.split
  br label %bb.d

.fold.split102:                                   ; preds = %.split
  br label %bb.d

bb.d:                                             ; preds = %.split, %.fold.split102, %.fold.split101, %.fold.split100, %.fold.split99, %.fold.split98, %.fold.split97, %.fold.split96, %.fold.split95, %.fold.split94, %.fold.split93, %.fold.split92, %.fold.split91, %.fold.split90, %.fold.split89, %.fold.split88, %.fold.split87, %.fold.split86, %.fold.split85, %.fold.split84, %.fold.split83, %.fold.split82, %.fold.split81, %.fold.split80, %.fold.split79, %.fold.split78, %.fold.split77, %.fold.split76, %.fold.split75, %.fold.split74, %.fold.split73, %.fold.split72, %.fold.split71, %.fold.split70, %.fold.split
  %.lcssa55 = phi ptr [ @intel_gtt_chipsets, %.split ], [ getelementptr inbounds nuw (i8, ptr @intel_gtt_chipsets, i64 792), %.fold.split101 ], [ getelementptr inbounds nuw (i8, ptr @intel_gtt_chipsets, i64 24), %.fold.split ], [ getelementptr inbounds nuw (i8, ptr @intel_gtt_chipsets, i64 48), %.fold.split70 ], [ getelementptr inbounds nuw (i8, ptr @intel_gtt_chipsets, i64 72), %.fold.split71 ], [ getelementptr inbounds nuw (i8, ptr @intel_gtt_chipsets, i64 96), %.fold.split72 ], [ getelementptr inbounds nuw (i8, ptr @intel_gtt_chipsets, i64 120), %.fold.split73 ], [ getelementptr inbounds nuw (i8, ptr @intel_gtt_chipsets, i64 144), %.fold.split74 ], [ getelementptr inbounds nuw (i8, ptr @intel_gtt_chipsets, i64 168), %.fold.split75 ], [ getelementptr inbounds nuw (i8, ptr @intel_gtt_chipsets, i64 192), %.fold.split76 ], [ getelementptr inbounds nuw (i8, ptr @intel_gtt_chipsets, i64 216), %.fold.split77 ], [ getelementptr inbounds nuw (i8, ptr @intel_gtt_chipsets, i64 240), %.fold.split78 ], [ getelementptr inbounds nuw (i8, ptr @intel_gtt_chipsets, i64 264), %.fold.split79 ], [ getelementptr inbounds nuw (i8, ptr @intel_gtt_chipsets, i64 288), %.fold.split80 ], [ getelementptr inbounds nuw (i8, ptr @intel_gtt_chipsets, i64 312), %.fold.split81 ], [ getelementptr inbounds nuw (i8, ptr @intel_gtt_chipsets, i64 336), %.fold.split82 ], [ getelementptr inbounds nuw (i8, ptr @intel_gtt_chipsets, i64 360), %.fold.split83 ], [ getelementptr inbounds nuw (i8, ptr @intel_gtt_chipsets, i64 384), %.fold.split84 ], [ getelementptr inbounds nuw (i8, ptr @intel_gtt_chipsets, i64 408), %.fold.split85 ], [ getelementptr inbounds nuw (i8, ptr @intel_gtt_chipsets, i64 432), %.fold.split86 ], [ getelementptr inbounds nuw (i8, ptr @intel_gtt_chipsets, i64 456), %.fold.split87 ], [ getelementptr inbounds nuw (i8, ptr @intel_gtt_chipsets, i64 480), %.fold.split88 ], [ getelementptr inbounds nuw (i8, ptr @intel_gtt_chipsets, i64 504), %.fold.split89 ], [ getelementptr inbounds nuw (i8, ptr @intel_gtt_chipsets, i64 528), %.fold.split90 ], [ getelementptr inbounds nuw (i8, ptr @intel_gtt_chipsets, i64 552), %.fold.split91 ], [ getelementptr inbounds nuw (i8, ptr @intel_gtt_chipsets, i64 576), %.fold.split92 ], [ getelementptr inbounds nuw (i8, ptr @intel_gtt_chipsets, i64 600), %.fold.split93 ], [ getelementptr inbounds nuw (i8, ptr @intel_gtt_chipsets, i64 624), %.fold.split94 ], [ getelementptr inbounds nuw (i8, ptr @intel_gtt_chipsets, i64 648), %.fold.split95 ], [ getelementptr inbounds nuw (i8, ptr @intel_gtt_chipsets, i64 672), %.fold.split96 ], [ getelementptr inbounds nuw (i8, ptr @intel_gtt_chipsets, i64 696), %.fold.split97 ], [ getelementptr inbounds nuw (i8, ptr @intel_gtt_chipsets, i64 720), %.fold.split98 ], [ getelementptr inbounds nuw (i8, ptr @intel_gtt_chipsets, i64 744), %.fold.split99 ], [ getelementptr inbounds nuw (i8, ptr @intel_gtt_chipsets, i64 768), %.fold.split100 ], [ getelementptr inbounds nuw (i8, ptr @intel_gtt_chipsets, i64 816), %.fold.split102 ] ; 2 uses
  %4 = getelementptr i8, ptr %.lcssa55, i64 8
  %i.o = tail call ptr @pci_dev_get(ptr noundef nonnull %1) #11
  store ptr %i.o, ptr getelementptr inbounds nuw (i8, ptr @intel_private, i64 8), align 8
  %i.p = getelementptr i8, ptr %.lcssa55, i64 16
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  store ptr %i.q, ptr @intel_private, align 8
  br label %bb.e

.split48.us:                                      ; preds = %bb.b, %bb.c
  %.016.i.us = phi ptr [ %i.l, %bb.c ], [ %i.h, %bb.b ]
  %5 = getelementptr i8, ptr %i.e, i64 8
  store ptr %.016.i.us, ptr getelementptr inbounds nuw (i8, ptr @intel_private, i64 8), align 8
  %i.r = getelementptr i8, ptr %i.e, i64 16
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  store ptr %i.s, ptr @intel_private, align 8
  br label %bb.e

thread-pre-split:                                 ; preds = %find_gmch.exit.thread.us, %.split
  %.pr = load ptr, ptr @intel_private, align 8
  br label %bb.e

bb.e:                                             ; preds = %thread-pre-split, %.split48.us, %bb.d
  %i.t = phi ptr [ getelementptr inbounds nuw (i8, ptr @intel_gtt_chipsets, i64 848), %thread-pre-split ], [ %5, %.split48.us ], [ %4, %bb.d ]
  %i.u = phi ptr [ %.pr, %thread-pre-split ], [ %i.s, %.split48.us ], [ %i.q, %bb.d ] ; 2 uses
  %.not27 = icmp eq ptr %i.u, null
  br i1 %.not27, label %bb.bh, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not28 = icmp eq ptr %2, null                  ; 2 uses
  br i1 %.not28, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = load i32, ptr %i.u, align 8
  %i.w = and i32 %i.v, 254
  %.not29 = icmp eq i32 %i.w, 0
  br i1 %.not29, label %bb.h, label %bb.bh

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr i8, ptr %2, i64 8
  store ptr @intel_fake_agp_driver, ptr %i.x, align 8
  %i.y = getelementptr i8, ptr %2, i64 40
  store ptr @intel_private, ptr %i.y, align 8
  %i.z = getelementptr i8, ptr %2, i64 48
  store ptr %0, ptr %i.z, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f
  %i.aa = load i32, ptr getelementptr inbounds nuw (i8, ptr @intel_private, i64 168), align 8 ; 2 uses
  %i.ab = add i32 %i.aa, 1
  store i32 %i.ab, ptr getelementptr inbounds nuw (i8, ptr @intel_private, i64 168), align 8
  %.not30 = icmp eq i32 %i.aa, 0
  br i1 %.not30, label %bb.j, label %bb.bh

bb.j:                                             ; preds = %bb.i
  %i.ac = tail call ptr @pci_dev_get(ptr noundef %0) #11
  store ptr %i.ac, ptr getelementptr inbounds nuw (i8, ptr @intel_private, i64 16), align 8
  %i.ad = getelementptr i8, ptr %0, i64 200
  %6 = load ptr, ptr %i.t, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %i.ad, ptr noundef @.str.2, ptr noundef %6) #12
  br i1 %.not28, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ae = load ptr, ptr @intel_private, align 8
  %i.af = load i32, ptr %i.ae, align 8
  %i.ag = lshr i32 %i.af, 12
  %i.ah = and i32 %i.ag, 255                      ; 2 uses
  %i.ai = load ptr, ptr getelementptr inbounds nuw (i8, ptr @intel_private, i64 8), align 8
  %i.aj = getelementptr i8, ptr %i.ai, i64 200
  %narrow = sub nsw i32 64, %i.ah
  %i.ak = zext nneg i32 %narrow to i64
  %i.al = lshr i64 -1, %i.ak                      ; 2 uses
  %i.am = tail call i32 @dma_set_mask(ptr noundef %i.aj, i64 noundef %i.al) #11
  %.not31 = icmp eq i32 %i.am, 0
  %i.an = load ptr, ptr getelementptr inbounds nuw (i8, ptr @intel_private, i64 8), align 8
  %i.ao = getelementptr i8, ptr %i.an, i64 200    ; 2 uses
  br i1 %.not31, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.ao, ptr noundef @.str.3, i32 noundef %i.ah) #12
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.ap = tail call i32 @dma_set_coherent_mask(ptr noundef %i.ao, i64 noundef %i.al) #11 ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m, %bb.j
  %i.aq = load ptr, ptr @intel_private, align 8
  %i.ar = getelementptr i8, ptr %i.aq, i64 8
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = tail call i32 %i.as() #11, !inline_history !22
  %.not.i33 = icmp eq i32 %i.at, 0
  br i1 %.not.i33, label %bb.o, label %bb.bg

bb.o:                                             ; preds = %bb.n
  %i.au = load ptr, ptr @intel_private, align 8
  %i.av = load i32, ptr %i.au, align 8
  %trunc.i.i = trunc i32 %i.av to i8
  switch i8 %trunc.i.i, label %bb.r [
    i8 1, label %bb.p
    i8 2, label %bb.q
  ]

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  store i32 0, ptr %i.c, align 4, !annotation !11
  %i.aw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @intel_private, i64 16), align 8
  %i.ax = call i32 @pci_read_config_dword(ptr noundef %i.aw, i32 noundef 112, ptr noundef nonnull %i.c) #11 ; 0 uses
  %i.ay = load i32, ptr %i.c, align 4
  %i.az = and i32 %i.ay, 65536
  %.not3.i.i = icmp eq i32 %i.az, 0
  %..i.i = select i1 %.not3.i.i, i32 67108864, i32 33554432
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  br label %intel_gtt_mappable_entries.exit.i

bb.q:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  store i16 0, ptr %i.d, align 2, !annotation !11
  %i.ba = load ptr, ptr getelementptr inbounds nuw (i8, ptr @intel_private, i64 16), align 8
  %i.bb = call i32 @pci_read_config_word(ptr noundef %i.ba, i32 noundef 82, ptr noundef nonnull %i.d) #11 ; 0 uses
  %i.bc = load i16, ptr %i.d, align 2
  %i.bd = and i16 %i.bc, 1
  %.not2.i.i = icmp eq i16 %i.bd, 0
  %.4.i.i = select i1 %.not2.i.i, i32 134217728, i32 67108864
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  br label %intel_gtt_mappable_entries.exit.i

bb.r:                                             ; preds = %bb.o
  %i.be = load ptr, ptr getelementptr inbounds nuw (i8, ptr @intel_private, i64 8), align 8 ; 2 uses
  %i.bf = getelementptr i8, ptr %i.be, i64 1104
  %i.bg = load i64, ptr %i.bf, align 8            ; 2 uses
  %.not.i.i = icmp eq i64 %i.bg, 0
  br i1 %.not.i.i, label %intel_gtt_mappable_entries.exit.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bh = getelementptr i8, ptr %i.be, i64 1096
  %.val.i.i = load i64, ptr %i.bh, align 8
  %reass.sub.i.i.i = sub i64 %i.bg, %.val.i.i
  %i.bi = trunc i64 %reass.sub.i.i.i to i32
  %i.bj = add i32 %i.bi, 1
  br label %intel_gtt_mappable_entries.exit.i

intel_gtt_mappable_entries.exit.i:                ; preds = %bb.s, %bb.r, %bb.q, %bb.p
  %.2.i.i = phi i32 [ %..i.i, %bb.p ], [ %.4.i.i, %bb.q ], [ %i.bj, %bb.s ], [ 0, %bb.r ]
  %i.bk = lshr i32 %.2.i.i, 12                    ; 2 uses
  store i32 %i.bk, ptr getelementptr inbounds nuw (i8, ptr @intel_private, i64 196), align 4
  %i.bl = load ptr, ptr @intel_private, align 8
  %i.bm = load i32, ptr %i.bl, align 8            ; 2 uses
  %i.bn = and i32 %i.bm, 256
  %.not.i13.i = icmp ne i32 %i.bn, 0
  %i.bo = and i32 %i.bm, 254
  %switch.i.i = icmp eq i32 %i.bo, 4
  %or.cond.i.i = or i1 %.not.i13.i, %switch.i.i
  br i1 %or.cond.i.i, label %bb.t, label %intel_gtt_total_entries.exit.i

bb.t:                                             ; preds = %intel_gtt_mappable_entries.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  store i16 0, ptr %i.b, align 2, !annotation !11
  %i.bp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @intel_private, i64 16), align 8
  %i.bq = call i32 @pci_read_config_word(ptr noundef %i.bp, i32 noundef 82, ptr noundef nonnull %i.b) #11 ; 0 uses
  %i.br = load ptr, ptr @intel_private, align 8
  %i.bs = load i32, ptr %i.br, align 8
  %i.bt = and i32 %i.bs, 255
  %i.bu = icmp eq i32 %i.bt, 5
  br i1 %i.bu, label %bb.u, label %bb.y

bb.u:                                             ; preds = %bb.t
  %i.bv = load i16, ptr %i.b, align 2
  %i.bw = lshr i16 %i.bv, 8
  %i.bx = and i16 %i.bw, 15
  switch i16 %i.bx, label %bb.y [
    i16 1, label %bb.v
    i16 9, label %bb.v
    i16 10, label %bb.w
    i16 3, label %bb.x
    i16 11, label %bb.x
  ]

bb.v:                                             ; preds = %bb.u, %bb.u
  %i.by = load ptr, ptr getelementptr inbounds nuw (i8, ptr @intel_private, i64 24), align 8
  %i.bz = getelementptr i8, ptr %i.by, i64 8388
  %i.ca = call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.bz) #10, !srcloc !13
  %i.cb = and i32 %i.ca, -2
  %i.cc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @intel_private, i64 24), align 8
  %i.cd = getelementptr i8, ptr %i.cc, i64 8388
  call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %i.cb, ptr elementtype(i32) %i.cd) #10, !srcloc !12
  %i.ce = load ptr, ptr getelementptr inbounds nuw (i8, ptr @intel_private, i64 24), align 8
  %i.cf = getelementptr i8, ptr %i.ce, i64 8224
  %i.cg = call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.cf) #10, !srcloc !13
  %i.ch = and i32 %i.cg, -15
  %i.ci = or disjoint i32 %i.ch, 6
  %i.cj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @intel_private, i64 24), align 8
  %i.ck = getelementptr i8, ptr %i.cj, i64 8224
  call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %i.ci, ptr elementtype(i32) %i.ck) #10, !srcloc !12
  br label %bb.y

bb.w:                                             ; preds = %bb.u
  %i.cl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @intel_private, i64 24), align 8
  %i.cm = getelementptr i8, ptr %i.cl, i64 8388
  %i.cn = call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.cm) #10, !srcloc !13
  %i.co = and i32 %i.cn, -2
  %i.cp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @intel_private, i64 24), align 8
  %i.cq = getelementptr i8, ptr %i.cp, i64 8388
  call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %i.co, ptr elementtype(i32) %i.cq) #10, !srcloc !12
  %i.cr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @intel_private, i64 24), align 8
  %i.cs = getelementptr i8, ptr %i.cr, i64 8224
  %i.ct = call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.cs) #10, !srcloc !13
  %i.cu = and i32 %i.ct, -15
  %i.cv = or disjoint i32 %i.cu, 10
  %i.cw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @intel_private, i64 24), align 8
  %i.cx = getelementptr i8, ptr %i.cw, i64 8224
  call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %i.cv, ptr elementtype(i32) %i.cx) #10, !srcloc !12
  br label %bb.y

bb.x:                                             ; preds = %bb.u, %bb.u
  %i.cy = load ptr, ptr getelementptr inbounds nuw (i8, ptr @intel_private, i64 24), align 8
  %i.cz = getelementptr i8, ptr %i.cy, i64 8388
  %i.da = call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.cz) #10, !srcloc !13
  %i.db = and i32 %i.da, -2
  %i.dc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @intel_private, i64 24), align 8
  %i.dd = getelementptr i8, ptr %i.dc, i64 8388
  call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %i.db, ptr elementtype(i32) %i.dd) #10, !srcloc !12
  %i.de = load ptr, ptr getelementptr inbounds nuw (i8, ptr @intel_private, i64 24), align 8
  %i.df = getelementptr i8, ptr %i.de, i64 8224
  %i.dg = call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.df) #10, !srcloc !13
  %i.dh = and i32 %i.dg, -15
  %i.di = or disjoint i32 %i.dh, 8
  %i.dj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @intel_private, i64 24), align 8
  %i.dk = getelementptr i8, ptr %i.dj, i64 8224
  call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %i.di, ptr elementtype(i32) %i.dk) #10, !srcloc !12
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.v, %bb.u, %bb.t
  %i.dl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @intel_private, i64 24), align 8
  %i.dm = getelementptr i8, ptr %i.dl, i64 8224
  %i.dn = call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.dm) #10, !srcloc !13
  %i.do = and i32 %i.dn, 14
  switch i32 %i.do, label %bb.ae [
    i32 4, label %i965_gtt_total_entries.exit.i.i
    i32 2, label %bb.z
    i32 0, label %bb.aa
    i32 6, label %bb.ab
    i32 8, label %bb.ac
    i32 10, label %bb.ad
  ]

bb.z:                                             ; preds = %bb.y
  br label %i965_gtt_total_entries.exit.i.i

bb.aa:                                            ; preds = %bb.y
  br label %i965_gtt_total_entries.exit.i.i

bb.ab:                                            ; preds = %bb.y
  br label %i965_gtt_total_entries.exit.i.i

bb.ac:                                            ; preds = %bb.y
  br label %i965_gtt_total_entries.exit.i.i

bb.ad:                                            ; preds = %bb.y
  br label %i965_gtt_total_entries.exit.i.i
end_hunk_0
