Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/kaslr?download=true
inline.NumInlined: 37
inline.NumDeleted: 23
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@choose_random_location:bb.a
  br i1 %i.hi, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %.lr.ph40.split.i.i
  %i.hj = getelementptr inbounds nuw i8, ptr %i.gg, i64 %i.hg ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 8
  %i.hl = load i64, ptr %i.hk, align 8
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hj, i64 24
  %i.hn = load i64, ptr %i.hm, align 8
  %i.ho = shl i64 %i.hn, 12
  %i.hp = call fastcc zeroext i1 @process_mem_region(i64 %i.hl, i64 %i.ho, i64 noundef range(i64 0, -2097151) %i.fl, i64 noundef %3) #13
  %i.hq = add nuw nsw i32 %.138.i.i, 1            ; 2 uses
  %i.hr = icmp uge i32 %i.hq, %i.gf
  %or.cond47.not.i.i = select i1 %i.hp, i1 true, i1 %i.hr
  br i1 %or.cond47.not.i.i, label %process_e820_entries.exit.i, label %..lr.ph40.split.backedge_crit_edge.i.i

..lr.ph40.split.backedge_crit_edge.i.i:           ; preds = %bb.cd
  %.pre.pre.i.i = load i32, ptr %i.gd, align 4
  br label %.lr.ph40.split.i.i.outer, !llvm.loop !23

.lr.ph40.split.i.i.outer:                         ; preds = %._crit_edge.i.i, %..lr.ph40.split.backedge_crit_edge.i.i
  %.pre54.i.i.ph = phi i32 [ %.pre.pre.i.i, %..lr.ph40.split.backedge_crit_edge.i.i ], [ %i.ge, %._crit_edge.i.i ]
  %.138.i.i.ph = phi i32 [ %i.hq, %..lr.ph40.split.backedge_crit_edge.i.i ], [ 0, %._crit_edge.i.i ]
  br label %.lr.ph40.split.i.i

bb.ce:                                            ; preds = %.lr.ph40.split.i.i
  %.old45.i.i = add nuw nsw i32 %.138.i.i, 1      ; 2 uses
  %.old46.i.i = icmp ult i32 %.old45.i.i, %i.gf
  br i1 %.old46.i.i, label %.lr.ph40.split.i.i, label %process_e820_entries.exit.i, !llvm.loop !23

process_efi_entries.exit.i:                       ; preds = %bb.by
  %i.hs = load ptr, ptr @boot_params_ptr, align 8 ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 488
  %i.hu = load i8, ptr %i.ht, align 1
  %.not10.i.i = icmp eq i8 %i.hu, 0
  br i1 %.not10.i.i, label %process_e820_entries.exit.i, label %.lr.ph.i15.i

.lr.ph.i15.i:                                     ; preds = %process_efi_entries.exit.i, %bb.cg
  %i.hv = phi ptr [ %i.ie, %bb.cg ], [ %i.hs, %process_efi_entries.exit.i ] ; 2 uses
  %indvars.iv.i16.i = phi i64 [ %indvars.iv.next.i18.i, %bb.cg ], [ 0, %process_efi_entries.exit.i ] ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 720
  %i.hx = getelementptr inbounds nuw [20 x i8], ptr %i.hw, i64 %indvars.iv.i16.i ; 3 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 16
  %i.hz = load i32, ptr %i.hy, align 1
  %.not.i17.i = icmp eq i32 %i.hz, 1
  br i1 %.not.i17.i, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %.lr.ph.i15.i
  %i.ia = load i64, ptr %i.hx, align 1
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hx, i64 8
  %i.ic = load i64, ptr %i.ib, align 1
  %i.id = call fastcc zeroext i1 @process_mem_region(i64 %i.ia, i64 %i.ic, i64 noundef range(i64 0, -2097151) %i.fl, i64 noundef %3) #13
  br i1 %i.id, label %process_e820_entries.exit.i, label %._crit_edge12.i.i

._crit_edge12.i.i:                                ; preds = %bb.cf
  %.pre.i20.i = load ptr, ptr @boot_params_ptr, align 8
  br label %bb.cg

bb.cg:                                            ; preds = %._crit_edge12.i.i, %.lr.ph.i15.i
  %i.ie = phi ptr [ %.pre.i20.i, %._crit_edge12.i.i ], [ %i.hv, %.lr.ph.i15.i ] ; 2 uses
  %indvars.iv.next.i18.i = add nuw nsw i64 %indvars.iv.i16.i, 1 ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 488
  %i.ig = load i8, ptr %i.if, align 1
  %i.ih = zext i8 %i.ig to i64
  %i.ii = icmp samesign ult i64 %indvars.iv.next.i18.i, %i.ih
  br i1 %i.ii, label %.lr.ph.i15.i, label %process_e820_entries.exit.i, !llvm.loop !24

process_e820_entries.exit.i:                      ; preds = %bb.cg, %bb.cf, %bb.cc, %bb.cb, %bb.ce, %bb.cd, %process_efi_entries.exit.i, %bb.bz
  %i.ij = load i64, ptr @slot_max, align 8
  %i.ik = icmp eq i64 %i.ij, 0
  br i1 %i.ik, label %slots_fetch_random.exit.i, label %bb.ch

bb.ch:                                            ; preds = %process_e820_entries.exit.i
  %i.il = call i64 @kaslr_get_random_long(ptr noundef nonnull @.str.24) #13
  %i.im = load i32, ptr @slot_area_index, align 4 ; 2 uses
  %.not21.i.i22 = icmp eq i32 %i.im, 0
  br i1 %.not21.i.i22, label %._crit_edge.i26.i, label %.lr.ph.preheader.i21.i

.lr.ph.preheader.i21.i:                           ; preds = %bb.ch
  %i.in = load i64, ptr @slot_max, align 8
  %i.io = urem i64 %i.il, %i.in
  %wide.trip.count.i.i = zext i32 %i.im to i64
  br label %.lr.ph.i22.i

.lr.ph.i22.i:                                     ; preds = %bb.ci, %.lr.ph.preheader.i21.i
  %indvars.iv.i23.i = phi i64 [ 0, %.lr.ph.preheader.i21.i ], [ %indvars.iv.next.i25.i, %bb.ci ] ; 2 uses
  %.01018.i.i = phi i64 [ %i.io, %.lr.ph.preheader.i21.i ], [ %i.is, %bb.ci ] ; 3 uses
  %i.ip = getelementptr inbounds nuw [16 x i8], ptr @slot_areas, i64 %indvars.iv.i23.i ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 8
  %i.ir = load i64, ptr %i.iq, align 8            ; 2 uses
  %.not.i24.i = icmp ult i64 %.01018.i.i, %i.ir
  br i1 %.not.i24.i, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %.lr.ph.i22.i
  %i.is = sub nuw i64 %.01018.i.i, %i.ir
  %indvars.iv.next.i25.i = add nuw nsw i64 %indvars.iv.i23.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i25.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge.i26.i, label %.lr.ph.i22.i, !llvm.loop !25

bb.cj:                                            ; preds = %.lr.ph.i22.i
  %i.it = load i64, ptr %i.ip, align 16
  %i.iu = shl i64 %.01018.i.i, 21
  %i.iv = add i64 %i.it, %i.iu
  br label %slots_fetch_random.exit.i

._crit_edge.i26.i:                                ; preds = %bb.ci, %bb.ch
  call void @__putstr(ptr noundef nonnull @.str.25) #9
  br label %slots_fetch_random.exit.i

slots_fetch_random.exit.i:                        ; preds = %._crit_edge.i26.i, %bb.cj, %process_e820_entries.exit.i
  %.011.i.i = phi i64 [ 0, %process_e820_entries.exit.i ], [ %i.iv, %bb.cj ], [ 0, %._crit_edge.i26.i ] ; 5 uses
  %i.iw = icmp ult i64 %.011.i.i, %i.fl
  br i1 %i.iw, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %slots_fetch_random.exit.i
  %i.ix = add i64 %.011.i.i, %3
  %i.iy = load i64, ptr @mem_limit, align 8
  %i.iz = icmp ugt i64 %i.ix, %i.iy
  br i1 %i.iz, label %bb.cl, label %find_random_phys_addr.exit

bb.cl:                                            ; preds = %bb.ck, %slots_fetch_random.exit.i
  call void @warn(ptr noundef nonnull @.str.20) #9
  br label %find_random_phys_addr.exit.thread

find_random_phys_addr.exit:                       ; preds = %bb.ck
  %.not19 = icmp eq i64 %.011.i.i, 0
  br i1 %.not19, label %find_random_phys_addr.exit.thread, label %bb.cm

find_random_phys_addr.exit.thread:                ; preds = %bb.cl, %bb.bw, %mem_avoid_init.exit, %find_random_phys_addr.exit
  call void @warn(ptr noundef nonnull @.str.8) #9
  br label %bb.co

bb.cm:                                            ; preds = %find_random_phys_addr.exit
  %i.ja = load i64, ptr %2, align 8
  %.not20 = icmp eq i64 %i.ja, %.011.i.i
  br i1 %.not20, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  store i64 %.011.i.i, ptr %2, align 8
  br label %bb.co

bb.co:                                            ; preds = %bb.cm, %bb.cn, %find_random_phys_addr.exit.thread
  %i.jb = sub i64 1056964608, %3
  %i.jc = lshr i64 %i.jb, 21
  %i.jd = add nuw nsw i64 %i.jc, 1
  %i.je = call i64 @kaslr_get_random_long(ptr noundef nonnull @.str.26) #13
  %i.jf = urem i64 %i.je, %i.jd
  %i.jg = shl nuw i64 %i.jf, 21
  %i.jh = add i64 %i.jg, 16777216
  store i64 %i.jh, ptr %4, align 8
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.b
  ret void
}

; Function Attrs: noredzone
declare hidden i32 @cmdline_find_option_bool(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone
declare hidden void @warn(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

; Function Attrs: noredzone
declare hidden i64 @simple_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone
declare hidden i64 @get_cmd_line_ptr() local_unnamed_addr #2

; Function Attrs: noredzone
declare hidden i64 @strnlen(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noredzone
declare hidden ptr @malloc(i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone noreturn
declare hidden void @error(ptr noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: noredzone
declare hidden i32 @strcmp(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone
declare hidden ptr @strstr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone
declare hidden void @free(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone
declare hidden ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone
declare hidden i32 @boot_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define internal fastcc noundef zeroext i1 @process_mem_region(i64 %.0.val, i64 %.8.val, i64 noundef range(i64 0, -2097151) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = add i64 %.8.val, %.0.val
  %i.b = load i64, ptr @mem_limit, align 8
  %i.c = tail call i64 @llvm.umin.i64(i64 %i.a, i64 %i.b) ; 13 uses
  %i.d = load i32, ptr @slot_area_index, align 4  ; 3 uses
  %i.e = icmp ult i32 %i.d, 100
  br i1 %i.e, label %.lr.ph.preheader.i, label %__process_mem_region.exit

.lr.ph.preheader.i:                               ; preds = %bb.a
  %i.f = tail call i64 @llvm.umax.i64(i64 %.0.val, i64 range(i64 0, -2097151) %0)
  %i.g = load i64, ptr @mem_avoid, align 16       ; 4 uses
  %.not.i.i.i = icmp ugt i64 %i.c, %i.g
  %i.h = load i64, ptr getelementptr inbounds nuw (i8, ptr @mem_avoid, i64 8), align 8 ; 2 uses
  %i.i = add i64 %i.h, %i.g
  %i.j = load i64, ptr getelementptr inbounds nuw (i8, ptr @mem_avoid, i64 16), align 16 ; 5 uses
  %.not.i.1.i.i = icmp ugt i64 %i.c, %i.j
  %i.k = load i64, ptr getelementptr inbounds nuw (i8, ptr @mem_avoid, i64 24), align 8 ; 2 uses
  %i.l = add i64 %i.k, %i.j
  %i.m = load i64, ptr getelementptr inbounds nuw (i8, ptr @mem_avoid, i64 32), align 16 ; 5 uses
  %.not.i.2.i.i = icmp ugt i64 %i.c, %i.m
  %i.n = load i64, ptr getelementptr inbounds nuw (i8, ptr @mem_avoid, i64 40), align 8 ; 2 uses
  %i.o = add i64 %i.n, %i.m
  %i.p = load i64, ptr getelementptr inbounds nuw (i8, ptr @mem_avoid, i64 48), align 16 ; 5 uses
  %.not.i.3.i.i = icmp ugt i64 %i.c, %i.p
  %i.q = load i64, ptr getelementptr inbounds nuw (i8, ptr @mem_avoid, i64 56), align 8 ; 2 uses
  %i.r = add i64 %i.q, %i.p
  %i.s = load i64, ptr getelementptr inbounds nuw (i8, ptr @mem_avoid, i64 64), align 16 ; 5 uses
  %.not.i.4.i.i = icmp ugt i64 %i.c, %i.s
  %i.t = load i64, ptr getelementptr inbounds nuw (i8, ptr @mem_avoid, i64 72), align 8 ; 2 uses
  %i.u = add i64 %i.t, %i.s
  %i.v = load i64, ptr getelementptr inbounds nuw (i8, ptr @mem_avoid, i64 80), align 16 ; 5 uses
  %.not.i.5.i.i = icmp ugt i64 %i.c, %i.v
  %i.w = load i64, ptr getelementptr inbounds nuw (i8, ptr @mem_avoid, i64 88), align 8 ; 2 uses
  %i.x = add i64 %i.w, %i.v
  %i.y = load i64, ptr getelementptr inbounds nuw (i8, ptr @mem_avoid, i64 96), align 16 ; 5 uses
  %.not.i.6.i.i = icmp ugt i64 %i.c, %i.y
  %i.z = load i64, ptr getelementptr inbounds nuw (i8, ptr @mem_avoid, i64 104), align 8 ; 2 uses
  %i.aa = add i64 %i.z, %i.y
  %i.ab = load i64, ptr getelementptr inbounds nuw (i8, ptr @mem_avoid, i64 112), align 16 ; 5 uses
  %.not.i.7.i.i = icmp ugt i64 %i.c, %i.ab
  %i.ac = load i64, ptr getelementptr inbounds nuw (i8, ptr @mem_avoid, i64 120), align 8 ; 2 uses
  %i.ad = add i64 %i.ac, %i.ab
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.s, %.lr.ph.preheader.i
  %i.ae = phi i32 [ %i.bm, %bb.s ], [ %i.d, %.lr.ph.preheader.i ]
  %.sroa.0.052.i = phi i64 [ %.sroa.0.12.i, %bb.s ], [ undef, %.lr.ph.preheader.i ]
  %.sroa.22.051.i = phi i64 [ %.sroa.22.12.i, %bb.s ], [ undef, %.lr.ph.preheader.i ]
  %.sroa.024.050.i = phi i64 [ %i.bn, %bb.s ], [ %i.f, %.lr.ph.preheader.i ]
  %i.af = add i64 %.sroa.024.050.i, 2097151
  %i.ag = and i64 %i.af, -2097152                 ; 16 uses
  %i.ah = icmp ugt i64 %i.ag, %i.c
  br i1 %i.ah, label %__process_mem_region.exit.thread.a, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.ai = sub nuw i64 %i.c, %i.ag                 ; 2 uses
  %i.aj = icmp ult i64 %i.ai, %1
  br i1 %i.aj, label %__process_mem_region.exit.thread.a, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not8.i.i.i = icmp ult i64 %i.ag, %i.i
  %or.cond = select i1 %.not.i.i.i, i1 %.not8.i.i.i, i1 false
  br i1 %or.cond, label %bb.d, label %mem_overlaps.exit.thread.i.i

bb.d:                                             ; preds = %bb.c
  br label %mem_overlaps.exit.thread.i.i

mem_overlaps.exit.thread.i.i:                     ; preds = %bb.d, %bb.c
  %.sroa.22.1.i = phi i64 [ %i.h, %bb.d ], [ %.sroa.22.051.i, %bb.c ] ; 2 uses
  %.sroa.0.1.i = phi i64 [ %i.g, %bb.d ], [ %.sroa.0.052.i, %bb.c ] ; 2 uses
  %.128.i.i = phi i64 [ %i.g, %bb.d ], [ %i.c, %bb.c ] ; 3 uses
  %.1.i.i = phi i1 [ true, %bb.d ], [ false, %bb.c ] ; 2 uses
  br i1 %.not.i.1.i.i, label %mem_overlaps.exit.1.i.i, label %mem_overlaps.exit.thread.1.i.i

mem_overlaps.exit.1.i.i:                          ; preds = %mem_overlaps.exit.thread.i.i
  %.not8.i.1.i.i = icmp ult i64 %i.ag, %i.l
  %i.ak = icmp ult i64 %i.j, %.128.i.i
  %or.cond63.1.i.i = select i1 %.not8.i.1.i.i, i1 %i.ak, i1 false
  br i1 %or.cond63.1.i.i, label %bb.e, label %mem_overlaps.exit.thread.1.i.i

bb.e:                                             ; preds = %mem_overlaps.exit.1.i.i
  br label %mem_overlaps.exit.thread.1.i.i

mem_overlaps.exit.thread.1.i.i:                   ; preds = %bb.e, %mem_overlaps.exit.1.i.i, %mem_overlaps.exit.thread.i.i
  %.sroa.22.2.i = phi i64 [ %i.k, %bb.e ], [ %.sroa.22.1.i, %mem_overlaps.exit.1.i.i ], [ %.sroa.22.1.i, %mem_overlaps.exit.thread.i.i ] ; 2 uses
  %.sroa.0.2.i = phi i64 [ %i.j, %bb.e ], [ %.sroa.0.1.i, %mem_overlaps.exit.1.i.i ], [ %.sroa.0.1.i, %mem_overlaps.exit.thread.i.i ] ; 2 uses
  %.128.1.i.i = phi i64 [ %i.j, %bb.e ], [ %.128.i.i, %mem_overlaps.exit.1.i.i ], [ %.128.i.i, %mem_overlaps.exit.thread.i.i ] ; 3 uses
  %.1.1.i.i = phi i1 [ true, %bb.e ], [ %.1.i.i, %mem_overlaps.exit.1.i.i ], [ %.1.i.i, %mem_overlaps.exit.thread.i.i ] ; 2 uses
  br i1 %.not.i.2.i.i, label %mem_overlaps.exit.2.i.i, label %mem_overlaps.exit.thread.2.i.i

mem_overlaps.exit.2.i.i:                          ; preds = %mem_overlaps.exit.thread.1.i.i
  %.not8.i.2.i.i = icmp ult i64 %i.ag, %i.o
  %i.al = icmp ult i64 %i.m, %.128.1.i.i
  %or.cond63.2.i.i = select i1 %.not8.i.2.i.i, i1 %i.al, i1 false
  br i1 %or.cond63.2.i.i, label %bb.f, label %mem_overlaps.exit.thread.2.i.i

bb.f:                                             ; preds = %mem_overlaps.exit.2.i.i
  br label %mem_overlaps.exit.thread.2.i.i

mem_overlaps.exit.thread.2.i.i:                   ; preds = %bb.f, %mem_overlaps.exit.2.i.i, %mem_overlaps.exit.thread.1.i.i
  %.sroa.22.3.i = phi i64 [ %i.n, %bb.f ], [ %.sroa.22.2.i, %mem_overlaps.exit.2.i.i ], [ %.sroa.22.2.i, %mem_overlaps.exit.thread.1.i.i ] ; 2 uses
  %.sroa.0.3.i = phi i64 [ %i.m, %bb.f ], [ %.sroa.0.2.i, %mem_overlaps.exit.2.i.i ], [ %.sroa.0.2.i, %mem_overlaps.exit.thread.1.i.i ] ; 2 uses
  %.128.2.i.i = phi i64 [ %i.m, %bb.f ], [ %.128.1.i.i, %mem_overlaps.exit.2.i.i ], [ %.128.1.i.i, %mem_overlaps.exit.thread.1.i.i ] ; 3 uses
  %.1.2.i.i = phi i1 [ true, %bb.f ], [ %.1.1.i.i, %mem_overlaps.exit.2.i.i ], [ %.1.1.i.i, %mem_overlaps.exit.thread.1.i.i ] ; 2 uses
  br i1 %.not.i.3.i.i, label %mem_overlaps.exit.3.i.i, label %mem_overlaps.exit.thread.3.i.i

mem_overlaps.exit.3.i.i:                          ; preds = %mem_overlaps.exit.thread.2.i.i
  %.not8.i.3.i.i = icmp ult i64 %i.ag, %i.r
  %i.am = icmp ult i64 %i.p, %.128.2.i.i
  %or.cond63.3.i.i = select i1 %.not8.i.3.i.i, i1 %i.am, i1 false
  br i1 %or.cond63.3.i.i, label %bb.g, label %mem_overlaps.exit.thread.3.i.i

bb.g:                                             ; preds = %mem_overlaps.exit.3.i.i
  br label %mem_overlaps.exit.thread.3.i.i

mem_overlaps.exit.thread.3.i.i:                   ; preds = %bb.g, %mem_overlaps.exit.3.i.i, %mem_overlaps.exit.thread.2.i.i
  %.sroa.22.4.i = phi i64 [ %i.q, %bb.g ], [ %.sroa.22.3.i, %mem_overlaps.exit.3.i.i ], [ %.sroa.22.3.i, %mem_overlaps.exit.thread.2.i.i ] ; 2 uses
  %.sroa.0.4.i = phi i64 [ %i.p, %bb.g ], [ %.sroa.0.3.i, %mem_overlaps.exit.3.i.i ], [ %.sroa.0.3.i, %mem_overlaps.exit.thread.2.i.i ] ; 2 uses
  %.128.3.i.i = phi i64 [ %i.p, %bb.g ], [ %.128.2.i.i, %mem_overlaps.exit.3.i.i ], [ %.128.2.i.i, %mem_overlaps.exit.thread.2.i.i ] ; 3 uses
  %.1.3.i.i = phi i1 [ true, %bb.g ], [ %.1.2.i.i, %mem_overlaps.exit.3.i.i ], [ %.1.2.i.i, %mem_overlaps.exit.thread.2.i.i ] ; 2 uses
  br i1 %.not.i.4.i.i, label %mem_overlaps.exit.4.i.i, label %mem_overlaps.exit.thread.4.i.i

mem_overlaps.exit.4.i.i:                          ; preds = %mem_overlaps.exit.thread.3.i.i
  %.not8.i.4.i.i = icmp ult i64 %i.ag, %i.u
  %i.an = icmp ult i64 %i.s, %.128.3.i.i
  %or.cond63.4.i.i = select i1 %.not8.i.4.i.i, i1 %i.an, i1 false
  br i1 %or.cond63.4.i.i, label %bb.h, label %mem_overlaps.exit.thread.4.i.i

bb.h:                                             ; preds = %mem_overlaps.exit.4.i.i
  br label %mem_overlaps.exit.thread.4.i.i

mem_overlaps.exit.thread.4.i.i:                   ; preds = %bb.h, %mem_overlaps.exit.4.i.i, %mem_overlaps.exit.thread.3.i.i
  %.sroa.22.5.i = phi i64 [ %i.t, %bb.h ], [ %.sroa.22.4.i, %mem_overlaps.exit.4.i.i ], [ %.sroa.22.4.i, %mem_overlaps.exit.thread.3.i.i ] ; 2 uses
  %.sroa.0.5.i = phi i64 [ %i.s, %bb.h ], [ %.sroa.0.4.i, %mem_overlaps.exit.4.i.i ], [ %.sroa.0.4.i, %mem_overlaps.exit.thread.3.i.i ] ; 2 uses
  %.128.4.i.i = phi i64 [ %i.s, %bb.h ], [ %.128.3.i.i, %mem_overlaps.exit.4.i.i ], [ %.128.3.i.i, %mem_overlaps.exit.thread.3.i.i ] ; 3 uses
  %.1.4.i.i = phi i1 [ true, %bb.h ], [ %.1.3.i.i, %mem_overlaps.exit.4.i.i ], [ %.1.3.i.i, %mem_overlaps.exit.thread.3.i.i ] ; 2 uses
  br i1 %.not.i.5.i.i, label %mem_overlaps.exit.5.i.i, label %mem_overlaps.exit.thread.5.i.i

mem_overlaps.exit.5.i.i:                          ; preds = %mem_overlaps.exit.thread.4.i.i
  %.not8.i.5.i.i = icmp ult i64 %i.ag, %i.x
  %i.ao = icmp ult i64 %i.v, %.128.4.i.i
  %or.cond63.5.i.i = select i1 %.not8.i.5.i.i, i1 %i.ao, i1 false
  br i1 %or.cond63.5.i.i, label %bb.i, label %mem_overlaps.exit.thread.5.i.i

bb.i:                                             ; preds = %mem_overlaps.exit.5.i.i
  br label %mem_overlaps.exit.thread.5.i.i

mem_overlaps.exit.thread.5.i.i:                   ; preds = %bb.i, %mem_overlaps.exit.5.i.i, %mem_overlaps.exit.thread.4.i.i
  %.sroa.22.6.i = phi i64 [ %i.w, %bb.i ], [ %.sroa.22.5.i, %mem_overlaps.exit.5.i.i ], [ %.sroa.22.5.i, %mem_overlaps.exit.thread.4.i.i ] ; 2 uses
  %.sroa.0.6.i = phi i64 [ %i.v, %bb.i ], [ %.sroa.0.5.i, %mem_overlaps.exit.5.i.i ], [ %.sroa.0.5.i, %mem_overlaps.exit.thread.4.i.i ] ; 2 uses
  %.128.5.i.i = phi i64 [ %i.v, %bb.i ], [ %.128.4.i.i, %mem_overlaps.exit.5.i.i ], [ %.128.4.i.i, %mem_overlaps.exit.thread.4.i.i ] ; 3 uses
  %.1.5.i.i = phi i1 [ true, %bb.i ], [ %.1.4.i.i, %mem_overlaps.exit.5.i.i ], [ %.1.4.i.i, %mem_overlaps.exit.thread.4.i.i ] ; 2 uses
  br i1 %.not.i.6.i.i, label %mem_overlaps.exit.6.i.i, label %mem_overlaps.exit.thread.6.i.i

mem_overlaps.exit.6.i.i:                          ; preds = %mem_overlaps.exit.thread.5.i.i
  %.not8.i.6.i.i = icmp ult i64 %i.ag, %i.aa
  %i.ap = icmp ult i64 %i.y, %.128.5.i.i
  %or.cond63.6.i.i = select i1 %.not8.i.6.i.i, i1 %i.ap, i1 false
  br i1 %or.cond63.6.i.i, label %bb.j, label %mem_overlaps.exit.thread.6.i.i

bb.j:                                             ; preds = %mem_overlaps.exit.6.i.i
  br label %mem_overlaps.exit.thread.6.i.i

mem_overlaps.exit.thread.6.i.i:                   ; preds = %bb.j, %mem_overlaps.exit.6.i.i, %mem_overlaps.exit.thread.5.i.i
  %.sroa.22.7.i = phi i64 [ %i.z, %bb.j ], [ %.sroa.22.6.i, %mem_overlaps.exit.6.i.i ], [ %.sroa.22.6.i, %mem_overlaps.exit.thread.5.i.i ] ; 2 uses
  %.sroa.0.7.i = phi i64 [ %i.y, %bb.j ], [ %.sroa.0.6.i, %mem_overlaps.exit.6.i.i ], [ %.sroa.0.6.i, %mem_overlaps.exit.thread.5.i.i ] ; 2 uses
  %.128.6.i.i = phi i64 [ %i.y, %bb.j ], [ %.128.5.i.i, %mem_overlaps.exit.6.i.i ], [ %.128.5.i.i, %mem_overlaps.exit.thread.5.i.i ] ; 3 uses
  %.1.6.i.i = phi i1 [ true, %bb.j ], [ %.1.5.i.i, %mem_overlaps.exit.6.i.i ], [ %.1.5.i.i, %mem_overlaps.exit.thread.5.i.i ] ; 2 uses
  br i1 %.not.i.7.i.i, label %mem_overlaps.exit.7.i.i, label %mem_overlaps.exit.thread.7.i.i

mem_overlaps.exit.7.i.i:                          ; preds = %mem_overlaps.exit.thread.6.i.i
  %.not8.i.7.i.i = icmp ult i64 %i.ag, %i.ad
  %i.aq = icmp ult i64 %i.ab, %.128.6.i.i
  %or.cond63.7.i.i = select i1 %.not8.i.7.i.i, i1 %i.aq, i1 false
  br i1 %or.cond63.7.i.i, label %bb.k, label %mem_overlaps.exit.thread.7.i.i

bb.k:                                             ; preds = %mem_overlaps.exit.7.i.i
  br label %mem_overlaps.exit.thread.7.i.i

mem_overlaps.exit.thread.7.i.i:                   ; preds = %bb.k, %mem_overlaps.exit.7.i.i, %mem_overlaps.exit.thread.6.i.i
  %.sroa.22.8.i = phi i64 [ %i.ac, %bb.k ], [ %.sroa.22.7.i, %mem_overlaps.exit.7.i.i ], [ %.sroa.22.7.i, %mem_overlaps.exit.thread.6.i.i ] ; 2 uses
  %.sroa.0.8.i = phi i64 [ %i.ab, %bb.k ], [ %.sroa.0.7.i, %mem_overlaps.exit.7.i.i ], [ %.sroa.0.7.i, %mem_overlaps.exit.thread.6.i.i ] ; 2 uses
  %.128.7.i.i = phi i64 [ %i.ab, %bb.k ], [ %.128.6.i.i, %mem_overlaps.exit.7.i.i ], [ %.128.6.i.i, %mem_overlaps.exit.thread.6.i.i ]
  %.1.7.i.i = phi i1 [ true, %bb.k ], [ %.1.6.i.i, %mem_overlaps.exit.7.i.i ], [ %.1.6.i.i, %mem_overlaps.exit.thread.6.i.i ] ; 2 uses
  %i.ar = load ptr, ptr @boot_params_ptr, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 592
  %.032.in67.i.i = load i64, ptr %i.as, align 1   ; 2 uses
  %.not69.i.i = icmp eq i64 %.032.in67.i.i, 0
  br i1 %.not69.i.i, label %mem_avoid_overlap.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %mem_overlaps.exit.thread.7.i.i, %mem_overlaps.exit50.thread.i.i
  %.sroa.22.9.i = phi i64 [ %.sroa.22.11.i, %mem_overlaps.exit50.thread.i.i ], [ %.sroa.22.8.i, %mem_overlaps.exit.thread.7.i.i ] ; 2 uses
  %.sroa.0.9.i = phi i64 [ %.sroa.0.11.i, %mem_overlaps.exit50.thread.i.i ], [ %.sroa.0.8.i, %mem_overlaps.exit.thread.7.i.i ] ; 2 uses
  %.032.in72.i.i = phi i64 [ %.032.in.i.i, %mem_overlaps.exit50.thread.i.i ], [ %.032.in67.i.i, %mem_overlaps.exit.thread.7.i.i ] ; 6 uses
  %.271.i.i = phi i1 [ %.4.i.i, %mem_overlaps.exit50.thread.i.i ], [ %.1.7.i.i, %mem_overlaps.exit.thread.7.i.i ] ; 2 uses
  %.22970.i.i = phi i64 [ %.431.i.i, %mem_overlaps.exit50.thread.i.i ], [ %.128.7.i.i, %mem_overlaps.exit.thread.7.i.i ] ; 3 uses
  %.03273.i.i = inttoptr i64 %.032.in72.i.i to ptr ; 6 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.03273.i.i, i64 12
  %i.au = load i32, ptr %i.at, align 4
  %i.av = zext i32 %i.au to i64
  %i.aw = add nuw nsw i64 %i.av, 16               ; 2 uses
  %.not.i43.i.i = icmp ugt i64 %i.c, %.032.in72.i.i
  br i1 %.not.i43.i.i, label %mem_overlaps.exit46.i.i, label %mem_overlaps.exit46.thread.i.i

mem_overlaps.exit46.i.i:                          ; preds = %.lr.ph.i.i
  %i.ax = add i64 %i.aw, %.032.in72.i.i
  %.not8.i45.i.i = icmp ult i64 %i.ag, %i.ax
  %i.ay = icmp ult i64 %.032.in72.i.i, %.22970.i.i
  %or.cond.i.i = select i1 %.not8.i45.i.i, i1 %i.ay, i1 false
  br i1 %or.cond.i.i, label %bb.l, label %mem_overlaps.exit46.thread.i.i

bb.l:                                             ; preds = %mem_overlaps.exit46.i.i
  br label %mem_overlaps.exit46.thread.i.i

mem_overlaps.exit46.thread.i.i:                   ; preds = %bb.l, %mem_overlaps.exit46.i.i, %.lr.ph.i.i
  %.sroa.22.10.i = phi i64 [ %i.aw, %bb.l ], [ %.sroa.22.9.i, %mem_overlaps.exit46.i.i ], [ %.sroa.22.9.i, %.lr.ph.i.i ] ; 4 uses
  %.sroa.0.10.i = phi i64 [ %.032.in72.i.i, %bb.l ], [ %.sroa.0.9.i, %mem_overlaps.exit46.i.i ], [ %.sroa.0.9.i, %.lr.ph.i.i ] ; 4 uses
  %.330.i.i = phi i64 [ %.032.in72.i.i, %bb.l ], [ %.22970.i.i, %mem_overlaps.exit46.i.i ], [ %.22970.i.i, %.lr.ph.i.i ] ; 5 uses
  %.3.i.i = phi i1 [ true, %bb.l ], [ %.271.i.i, %mem_overlaps.exit46.i.i ], [ %.271.i.i, %.lr.ph.i.i ] ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.03273.i.i, i64 8
  %i.ba = load i32, ptr %i.az, align 8
  %i.bb = icmp eq i32 %i.ba, -2147483648
  br i1 %i.bb, label %bb.m, label %mem_overlaps.exit50.thread.i.i

bb.m:                                             ; preds = %mem_overlaps.exit46.thread.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %.03273.i.i, i64 16
  %i.bd = load i32, ptr %i.bc, align 8
  %.not34.i.i = icmp eq i32 %i.bd, -2147483648
  br i1 %.not34.i.i, label %mem_overlaps.exit50.thread.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.be = getelementptr inbounds nuw i8, ptr %.03273.i.i, i64 32
  %i.bf = load i64, ptr %i.be, align 8            ; 5 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.03273.i.i, i64 24
  %i.bh = load i64, ptr %i.bg, align 8            ; 2 uses
  %.not.i47.i.i = icmp ugt i64 %i.c, %i.bf
  br i1 %.not.i47.i.i, label %mem_overlaps.exit50.i.i, label %mem_overlaps.exit50.thread.i.i

mem_overlaps.exit50.i.i:                          ; preds = %bb.n
  %i.bi = add i64 %i.bh, %i.bf
  %.not8.i49.i.i = icmp ult i64 %i.ag, %i.bi
  %i.bj = icmp ult i64 %i.bf, %.330.i.i
  %or.cond37.i.i = select i1 %.not8.i49.i.i, i1 %i.bj, i1 false
  br i1 %or.cond37.i.i, label %bb.o, label %mem_overlaps.exit50.thread.i.i

bb.o:                                             ; preds = %mem_overlaps.exit50.i.i
  br label %mem_overlaps.exit50.thread.i.i

mem_overlaps.exit50.thread.i.i:                   ; preds = %bb.o, %mem_overlaps.exit50.i.i, %bb.n, %bb.m, %mem_overlaps.exit46.thread.i.i
  %.sroa.22.11.i = phi i64 [ %.sroa.22.10.i, %bb.m ], [ %i.bh, %bb.o ], [ %.sroa.22.10.i, %mem_overlaps.exit50.i.i ], [ %.sroa.22.10.i, %bb.n ], [ %.sroa.22.10.i, %mem_overlaps.exit46.thread.i.i ] ; 2 uses
  %.sroa.0.11.i = phi i64 [ %.sroa.0.10.i, %bb.m ], [ %i.bf, %bb.o ], [ %.sroa.0.10.i, %mem_overlaps.exit50.i.i ], [ %.sroa.0.10.i, %bb.n ], [ %.sroa.0.10.i, %mem_overlaps.exit46.thread.i.i ] ; 2 uses
  %.431.i.i = phi i64 [ %.330.i.i, %bb.m ], [ %i.bf, %bb.o ], [ %.330.i.i, %mem_overlaps.exit50.i.i ], [ %.330.i.i, %bb.n ], [ %.330.i.i, %mem_overlaps.exit46.thread.i.i ]
  %.4.i.i = phi i1 [ %.3.i.i, %bb.m ], [ true, %bb.o ], [ %.3.i.i, %mem_overlaps.exit50.i.i ], [ %.3.i.i, %bb.n ], [ %.3.i.i, %mem_overlaps.exit46.thread.i.i ] ; 2 uses
  %.032.in.i.i = load i64, ptr %.03273.i.i, align 8 ; 2 uses
  %.not.i.i = icmp eq i64 %.032.in.i.i, 0
  br i1 %.not.i.i, label %mem_avoid_overlap.exit.i, label %.lr.ph.i.i, !llvm.loop !26

mem_avoid_overlap.exit.i:                         ; preds = %mem_overlaps.exit50.thread.i.i, %mem_overlaps.exit.thread.7.i.i
  %.sroa.22.12.i = phi i64 [ %.sroa.22.8.i, %mem_overlaps.exit.thread.7.i.i ], [ %.sroa.22.11.i, %mem_overlaps.exit50.thread.i.i ] ; 2 uses
  %.sroa.0.12.i = phi i64 [ %.sroa.0.8.i, %mem_overlaps.exit.thread.7.i.i ], [ %.sroa.0.11.i, %mem_overlaps.exit50.thread.i.i ] ; 4 uses
  %.2.lcssa.i.i = phi i1 [ %.1.7.i.i, %mem_overlaps.exit.thread.7.i.i ], [ %.4.i.i, %mem_overlaps.exit50.thread.i.i ]
  br i1 %.2.lcssa.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %mem_avoid_overlap.exit.i
  tail call fastcc void @process_gb_huge_pages(i64 %i.ag, i64 %i.ai, i64 noundef %1) #13
  %.pr.pre = load i32, ptr @slot_area_index, align 4
  br label %__process_mem_region.exit

bb.q:                                             ; preds = %mem_avoid_overlap.exit.i
  %i.bk = add i64 %i.ag, %1
  %.not.i = icmp ult i64 %.sroa.0.12.i, %i.bk
  br i1 %.not.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bl = sub i64 %.sroa.0.12.i, %i.ag
  tail call fastcc void @process_gb_huge_pages(i64 %i.ag, i64 %i.bl, i64 noundef %1) #13
  %.pre.i = load i32, ptr @slot_area_index, align 4
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bm = phi i32 [ %.pre.i, %bb.r ], [ %i.ae, %bb.q ] ; 3 uses
  %i.bn = add i64 %.sroa.0.12.i, %.sroa.22.12.i
  %i.bo = icmp ult i32 %i.bm, 100
  br i1 %i.bo, label %.lr.ph.i, label %__process_mem_region.exit, !llvm.loop !27

__process_mem_region.exit:                        ; preds = %bb.s, %bb.p, %bb.a
  %i.bp = phi i32 [ %i.d, %bb.a ], [ %.pr.pre, %bb.p ], [ %i.bm, %bb.s ]
  %i.bq = icmp eq i32 %i.bp, 100
  br i1 %i.bq, label %bb.t, label %__process_mem_region.exit.thread.a

bb.t:                                             ; preds = %__process_mem_region.exit
  tail call void @__putstr(ptr noundef nonnull @.str.23) #9
  br label %__process_mem_region.exit.thread.a

__process_mem_region.exit.thread.a:               ; preds = %bb.b, %.lr.ph.i, %__process_mem_region.exit, %bb.t
  %2 = phi i1 [ true, %bb.t ], [ false, %__process_mem_region.exit ], [ false, %.lr.ph.i ], [ false, %bb.b ]
  ret i1 %2
}

; Function Attrs: mustprogress nofree norecurse noredzone nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none)
define internal fastcc void @process_gb_huge_pages(i64 %.0.val, i64 %.8.val, i64 noundef %0) unnamed_addr #7 {
bb.a:
  %i.a = load i64, ptr @max_gb_huge_pages, align 8 ; 4 uses
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr @slot_area_index, align 4  ; 2 uses
  %i.c = icmp eq i32 %i.b, 100
  br i1 %i.c, label %store_slot_info.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = sub i64 %.8.val, %0
  br label %store_slot_info.exit.sink.split

bb.d:                                             ; preds = %bb.a
  %i.e = add i64 %.0.val, 1073741823
  %i.f = and i64 %i.e, -1073741824                ; 5 uses
  %i.g = add i64 %.8.val, %.0.val                 ; 4 uses
  %i.h = and i64 %i.g, -1073741824                ; 2 uses
  %.not33 = icmp ult i64 %i.f, %i.h
  br i1 %.not33, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = load i32, ptr @slot_area_index, align 4  ; 2 uses
  %i.j = icmp eq i32 %i.i, 100
  br i1 %i.j, label %store_slot_info.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = sub i64 %.8.val, %0
  br label %store_slot_info.exit.sink.split

bb.g:                                             ; preds = %bb.d
  %i.l = add i64 %0, %.0.val                      ; 2 uses
  %.not34 = icmp ult i64 %i.f, %i.l
  br i1 %.not34, label %store_slot_info.exit39, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = load i32, ptr @slot_area_index, align 4  ; 3 uses
  %i.n = icmp eq i32 %i.m, 100
  br i1 %i.n, label %store_slot_info.exit39, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = sub i64 %i.f, %i.l
  %i.p = lshr i64 %i.o, 21
  %i.q = add nuw nsw i64 %i.p, 1                  ; 2 uses
  %i.r = add i32 %i.m, 1
  store i32 %i.r, ptr @slot_area_index, align 4
  %i.s = zext i32 %i.m to i64
  %i.t = getelementptr inbounds nuw [16 x i8], ptr @slot_areas, i64 %i.s ; 2 uses
  store i64 %.0.val, ptr %i.t, align 16
  %.sroa.4.0..sroa_idx.i38 = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i64 %i.q, ptr %.sroa.4.0..sroa_idx.i38, align 8
  %i.u = load i64, ptr @slot_max, align 8
  %i.v = add i64 %i.u, %i.q
  store i64 %i.v, ptr @slot_max, align 8
  br label %store_slot_info.exit39

store_slot_info.exit39:                           ; preds = %bb.i, %bb.h, %bb.g
  %i.w = sub i64 %i.g, %i.f
  %i.x = lshr i64 %i.w, 30                        ; 2 uses
  %i.y = icmp ugt i64 %i.x, %i.a
  %i.z = shl nuw i64 %i.a, 30
  %i.aa = add i64 %i.z, %i.f
  %storemerge = tail call i64 @llvm.usub.sat.i64(i64 %i.a, i64 %i.x)
  %.0 = select i1 %i.y, i64 %i.aa, i64 %i.h       ; 2 uses
  store i64 %storemerge, ptr @max_gb_huge_pages, align 8
  %i.ab = add i64 %.0, %0                         ; 2 uses
  %.not35 = icmp ult i64 %i.g, %i.ab
  br i1 %.not35, label %store_slot_info.exit, label %bb.j

bb.j:                                             ; preds = %store_slot_info.exit39
  %i.ac = load i32, ptr @slot_area_index, align 4 ; 2 uses
  %i.ad = icmp eq i32 %i.ac, 100
  br i1 %i.ad, label %store_slot_info.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ae = sub i64 %i.g, %i.ab
  br label %store_slot_info.exit.sink.split

store_slot_info.exit.sink.split:                  ; preds = %bb.c, %bb.f, %bb.k
  %.sink = phi i64 [ %i.ae, %bb.k ], [ %i.k, %bb.f ], [ %i.d, %bb.c ]
  %.sink22 = phi i32 [ %i.ac, %bb.k ], [ %i.i, %bb.f ], [ %i.b, %bb.c ] ; 2 uses
  %.0.sink = phi i64 [ %.0, %bb.k ], [ %.0.val, %bb.f ], [ %.0.val, %bb.c ]
  %i.af = lshr i64 %.sink, 21
  %i.ag = add nuw nsw i64 %i.af, 1                ; 2 uses
  %i.ah = add i32 %.sink22, 1
  store i32 %i.ah, ptr @slot_area_index, align 4
  %i.ai = zext i32 %.sink22 to i64
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr @slot_areas, i64 %i.ai ; 2 uses
  store i64 %.0.sink, ptr %i.aj, align 16
  %.sroa.4.0..sroa_idx.i40 = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store i64 %i.ag, ptr %.sroa.4.0..sroa_idx.i40, align 8
  %i.ak = load i64, ptr @slot_max, align 8
  %i.al = add i64 %i.ak, %i.ag
  store i64 %i.al, ptr @slot_max, align 8
  br label %store_slot_info.exit

store_slot_info.exit:                             ; preds = %store_slot_info.exit.sink.split, %bb.j, %bb.e, %bb.b, %store_slot_info.exit39
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #8

attributes #0 = { noredzone nounwind "min-legal-vector-width"="0" "no-builtins" "no-jump-tables"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+x87,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noredzone "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+x87,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse noredzone nosync nounwind memory(argmem: read) "min-legal-vector-width"="0" "no-builtins" "no-jump-tables"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+x87,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse noredzone nosync nounwind memory(argmem: readwrite) "min-legal-vector-width"="0" "no-builtins" "no-jump-tables"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+x87,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #6 = { noredzone noreturn "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+x87,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse noredzone nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) "min-legal-vector-width"="0" "no-builtins" "no-jump-tables"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+x87,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nobuiltin noredzone nounwind "no-builtins" }
attributes #10 = { nounwind }
attributes #11 = { nounwind memory(read) }
attributes #12 = { nobuiltin noredzone noreturn nounwind "no-builtins" }
attributes #13 = { nobuiltin noredzone "no-builtins" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 1, !"Code Model", i32 1}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = !{i64 8561847}
!8 = distinct !{!8, !6}
!9 = !{i64 1922333}
!10 = distinct !{null}
!11 = distinct !{!11, !6}
!12 = !{i64 2156055359}
!13 = distinct !{!13, !6}
!14 = distinct !{!14, !6}
!15 = !{!"branch_weights", i32 984844658, i32 1162638990}
!16 = !{!"branch_weights", !"expected", i32 2000, i32 1}
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
end_hunk_0
