Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/p4?download=true
inline.NumInlined: 66
inline.NumDeleted: 31
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@p4_pmu_schedule_events:bb.a

p4_get_escr_idx.exit.2:                           ; preds = %bb.x
  %i.ed = load i32, ptr %i.t, align 4             ; 2 uses
  %.not.2 = icmp eq i32 %i.ed, -1
  br i1 %.not.2, label %bb.ab, label %bb.y

bb.y:                                             ; preds = %p4_get_escr_idx.exit.2
  %i.ee = load i32, ptr @__max_threads_per_core, align 4
  %i.ef = icmp eq i32 %i.ee, 2
  br i1 %i.ef, label %bb.z, label %p4_should_swap_ts.exit.2

bb.z:                                             ; preds = %bb.y
  %i.eg = call i64 asm "movq %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @this_cpu_off) #16, !srcloc !20
  %i.eh = add i64 %i.eg, ptrtoint (ptr @cpu_sibling_map to i64)
  %i.ei = inttoptr i64 %i.eh to ptr
  %i.ej = load i64, ptr %i.ei, align 8            ; 2 uses
  %.not.i.i.i.2 = icmp eq i64 %i.ej, 0
  br i1 %.not.i.i.i.2, label %find_first_bit.exit.i.i.2, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ek = call i64 asm "tzcnt $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 1, 0) %i.ej) #15, !srcloc !13
  %i.el = trunc i64 %i.ek to i32
  br label %find_first_bit.exit.i.i.2

find_first_bit.exit.i.i.2:                        ; preds = %bb.aa, %bb.z
  %i.em = phi i32 [ %i.el, %bb.aa ], [ 64, %bb.z ]
  %i.en = icmp ne i32 %i.c, %i.em
  %i.eo = zext i1 %i.en to i32
  br label %p4_should_swap_ts.exit.2

p4_should_swap_ts.exit.2:                         ; preds = %find_first_bit.exit.i.i.2, %bb.y
  %.0.i.i.2 = phi i32 [ %i.eo, %find_first_bit.exit.i.i.2 ], [ 0, %bb.y ]
  %.lobit.i.i.2 = lshr i64 %i.do, 63
  %i.ep = trunc nuw nsw i64 %.lobit.i.i.2 to i32
  %.not57.2 = icmp eq i32 %.0.i.i.2, %i.ep
  br i1 %.not57.2, label %bb.i, label %bb.ab

bb.ab:                                            ; preds = %p4_should_swap_ts.exit.2, %p4_get_escr_idx.exit.2
  %i.eq = getelementptr i8, ptr %i.dt, i64 20
  %i.er = getelementptr [3 x i8], ptr %i.eq, i64 %.0.i ; 3 uses
  %i.es = load i8, ptr %i.er, align 1             ; 3 uses
  %.not.i66.2 = icmp eq i8 %i.es, -1
  br i1 %.not.i66.2, label %bb.ac, label %arch_test_bit.exit.i.2

arch_test_bit.exit.i.2:                           ; preds = %bb.ab
  %i.et = sext i8 %i.es to i64
  %i.eu = call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) %i.a, i64 range(i64 -2147483648, 2147483648) %i.et) #12, !srcloc !17 ; 2 uses
  %i.ev = icmp ult i8 %i.eu, 2
  call void @llvm.assume(i1 %i.ev)
  %i.ew = trunc nuw i8 %i.eu to i1
  br i1 %i.ew, label %bb.ac, label %p4_next_cntr.exit.2

bb.ac:                                            ; preds = %arch_test_bit.exit.i.2, %bb.ab
  %i.ex = getelementptr i8, ptr %i.er, i64 1
  %i.ey = load i8, ptr %i.ex, align 1             ; 3 uses
  %.not.1.i.2 = icmp eq i8 %i.ey, -1
  br i1 %.not.1.i.2, label %bb.ad, label %arch_test_bit.exit.1.i.2

arch_test_bit.exit.1.i.2:                         ; preds = %bb.ac
  %i.ez = sext i8 %i.ey to i64
  %i.fa = call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) %i.a, i64 range(i64 -2147483648, 2147483648) %i.ez) #12, !srcloc !17 ; 2 uses
  %i.fb = icmp ult i8 %i.fa, 2
  call void @llvm.assume(i1 %i.fb)
  %i.fc = trunc nuw i8 %i.fa to i1
  br i1 %i.fc, label %bb.ad, label %p4_next_cntr.exit.2

bb.ad:                                            ; preds = %arch_test_bit.exit.1.i.2, %bb.ac
  %i.fd = getelementptr i8, ptr %i.er, i64 2
  %i.fe = load i8, ptr %i.fd, align 1             ; 3 uses
  %.not.2.i.2 = icmp eq i8 %i.fe, -1
  br i1 %.not.2.i.2, label %p4_next_cntr.exit.thread.2, label %arch_test_bit.exit.2.i.2

arch_test_bit.exit.2.i.2:                         ; preds = %bb.ad
  %i.ff = sext i8 %i.fe to i64
  %i.fg = call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) %i.a, i64 range(i64 -2147483648, 2147483648) %i.ff) #12, !srcloc !17 ; 2 uses
  %i.fh = icmp ult i8 %i.fg, 2
  call void @llvm.assume(i1 %i.fh)
  %i.fi = trunc nuw i8 %i.fg to i1
  br i1 %i.fi, label %p4_next_cntr.exit.thread.2, label %p4_next_cntr.exit.2

p4_next_cntr.exit.2:                              ; preds = %arch_test_bit.exit.2.i.2, %arch_test_bit.exit.1.i.2, %arch_test_bit.exit.i.2
  %.017.i.in.2 = phi i8 [ %i.fe, %arch_test_bit.exit.2.i.2 ], [ %i.es, %arch_test_bit.exit.i.2 ], [ %i.ey, %arch_test_bit.exit.1.i.2 ]
  %i.fj = call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) %i.b, i64 range(i64 -2147483648, 2147483648) %i.dz) #12, !srcloc !17 ; 2 uses
  %i.fk = icmp ult i8 %i.fj, 2
  call void @llvm.assume(i1 %i.fk)
  %i.fl = trunc nuw i8 %i.fj to i1
  br i1 %i.fl, label %p4_next_cntr.exit.thread.2, label %bb.ag

p4_next_cntr.exit.thread.2:                       ; preds = %p4_next_cntr.exit.2, %arch_test_bit.exit.2.i.2, %bb.ad
  %i.fm = load i64, ptr %i.h, align 8             ; 3 uses
  %i.fn = and i64 %i.fm, 512
  %.not.i67.2 = icmp eq i64 %i.fn, 0
  br i1 %.not.i67.2, label %p4_get_alias_event.exit.thread, label %bb.ae

bb.ae:                                            ; preds = %p4_next_cntr.exit.thread.2
  %i.fo = and i64 %i.fm, 9223371968168591360
  switch i64 %i.fo, label %p4_get_alias_event.exit.thread [
    i64 3458766712843796480, label %p4_get_alias_event.exit.2
    i64 5188707521677492224, label %bb.af
  ], !llvm.loop !48

bb.af:                                            ; preds = %bb.ae
  br label %p4_get_alias_event.exit.2

p4_get_alias_event.exit.2:                        ; preds = %bb.af, %bb.ae
  %.014.i.2 = phi i64 [ 5188707521677492224, %bb.ae ], [ 3458766712843796480, %bb.af ]
  %i.fp = and i64 %i.fm, -9223371968973962752
  %i.fq = or disjoint i64 %.014.i.2, %i.fp
  store i64 %i.fq, ptr %i.h, align 8
  br label %p4_get_alias_event.exit.thread

bb.ag:                                            ; preds = %p4_next_cntr.exit.2, %p4_next_cntr.exit.1, %p4_next_cntr.exit
  %.lcssa163 = phi i64 [ %i.ac, %p4_next_cntr.exit ], [ %i.cb, %p4_next_cntr.exit.1 ], [ %i.dz, %p4_next_cntr.exit.2 ] ; 2 uses
  %.017.i.lcssa.in = phi i8 [ %.017.i.in, %p4_next_cntr.exit ], [ %.017.i.in.1, %p4_next_cntr.exit.1 ], [ %.017.i.in.2, %p4_next_cntr.exit.2 ]
  %.017.i.lcssa = sext i8 %.017.i.lcssa.in to i32 ; 2 uses
  %i.fr = load i64, ptr %i.h, align 8             ; 10 uses
  %i.fs = load i32, ptr @__max_threads_per_core, align 4 ; 2 uses
  %i.ft = icmp eq i32 %i.fs, 2
  br i1 %i.ft, label %bb.ah, label %p4_should_swap_ts.exit73

bb.ah:                                            ; preds = %bb.ag
  %i.fu = call i64 asm "movq %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @this_cpu_off) #16, !srcloc !20
  %i.fv = add i64 %i.fu, ptrtoint (ptr @cpu_sibling_map to i64)
  %i.fw = inttoptr i64 %i.fv to ptr
  %i.fx = load i64, ptr %i.fw, align 8            ; 2 uses
  %.not.i.i.i71 = icmp eq i64 %i.fx, 0
  br i1 %.not.i.i.i71, label %find_first_bit.exit.i.i72, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fy = call i64 asm "tzcnt $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 1, 0) %i.fx) #15, !srcloc !13
  %i.fz = trunc i64 %i.fy to i32
  br label %find_first_bit.exit.i.i72

find_first_bit.exit.i.i72:                        ; preds = %bb.ai, %bb.ah
  %i.ga = phi i32 [ %i.fz, %bb.ai ], [ 64, %bb.ah ]
  %i.gb = icmp ne i32 %i.c, %i.ga
  %i.gc = zext i1 %i.gb to i32
  br label %p4_should_swap_ts.exit73

p4_should_swap_ts.exit73:                         ; preds = %bb.ag, %find_first_bit.exit.i.i72
  %.0.i.i69 = phi i32 [ %i.gc, %find_first_bit.exit.i.i72 ], [ 0, %bb.ag ]
  %.lobit.i.i70 = lshr i64 %i.fr, 63
  %i.gd = trunc nuw nsw i64 %.lobit.i.i70 to i32
  %.not59 = icmp eq i32 %.0.i.i69, %i.gd
  br i1 %.not59, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %p4_should_swap_ts.exit73
  store i32 -1, ptr %i.t, align 4
  %.pre117 = load i32, ptr @__max_threads_per_core, align 4
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %p4_should_swap_ts.exit73
  %i.ge = phi i32 [ %.pre117, %bb.aj ], [ %i.fs, %p4_should_swap_ts.exit73 ]
  %i.gf = icmp eq i32 %i.ge, 2
  br i1 %i.gf, label %bb.al, label %p4_should_swap_ts.exit.thread.i

bb.al:                                            ; preds = %bb.ak
  %i.gg = call i64 asm "movq %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @this_cpu_off) #16, !srcloc !20
  %i.gh = add i64 %i.gg, ptrtoint (ptr @cpu_sibling_map to i64)
  %i.gi = inttoptr i64 %i.gh to ptr
  %i.gj = load i64, ptr %i.gi, align 8            ; 3 uses
  %.not.i.i.i.i = icmp eq i64 %i.gj, 0
  br i1 %.not.i.i.i.i, label %p4_should_swap_ts.exit.i.thread, label %p4_should_swap_ts.exit.i

p4_should_swap_ts.exit.i:                         ; preds = %bb.al
  %i.gk = call i64 asm "tzcnt $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 1, 0) %i.gj) #15, !srcloc !13
  %i.gl = trunc i64 %i.gk to i32
  %i.gm = icmp slt i64 %i.fr, 0
  %i.gn = icmp eq i32 %i.c, %i.gl
  %.not40.i = xor i1 %i.gm, %i.gn
  br i1 %.not40.i, label %p4_pmu_swap_config_ts.exit, label %bb.am

p4_should_swap_ts.exit.i.thread:                  ; preds = %bb.al
  %i.go = icmp slt i64 %i.fr, 0
  %.not40.i81 = xor i1 %i.e, %i.go
  br i1 %.not40.i81, label %p4_pmu_swap_config_ts.exit, label %p4_ht_thread.exit.i

p4_should_swap_ts.exit.thread.i:                  ; preds = %bb.ak
  %.not37.i = icmp sgt i64 %i.fr, -1
  br i1 %.not37.i, label %p4_pmu_swap_config_ts.exit, label %.thread.i

.thread.i:                                        ; preds = %p4_should_swap_ts.exit.thread.i
  %i.gp = lshr i64 %i.fr, 32
  %i.gq = trunc nuw i64 %i.gp to i32
  br label %p4_ht_thread.exit.thread.i

bb.am:                                            ; preds = %p4_should_swap_ts.exit.i
  %i.gr = call i64 asm "tzcnt $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 1, 0) %i.gj) #15, !srcloc !13
  %i.gs = trunc i64 %i.gr to i32
  br label %p4_ht_thread.exit.i

p4_ht_thread.exit.i:                              ; preds = %p4_should_swap_ts.exit.i.thread, %bb.am
  %i.gt = phi i32 [ %i.gs, %bb.am ], [ 64, %p4_should_swap_ts.exit.i.thread ]
  %.in = lshr i64 %i.fr, 32
  %i.gu = trunc nuw i64 %.in to i32               ; 3 uses
  %.not.i75 = icmp eq i32 %i.c, %i.gt
  br i1 %.not.i75, label %p4_ht_thread.exit.thread.i, label %bb.an

bb.an:                                            ; preds = %p4_ht_thread.exit.i
  %i.gv = and i64 %i.fr, 4093640703
  %3 = or disjoint i64 %i.gv, 134217728
  %i.gw = and i64 %i.fr, 34359738368
  %.not33.i = icmp eq i64 %i.gw, 0
  %i.gx = and i32 %i.gu, -11
  %i.gy = or disjoint i32 %i.gx, 2
  %.0.i76 = select i1 %.not33.i, i32 %i.gu, i32 %i.gy ; 3 uses
  %i.gz = and i32 %.0.i76, 4
  %.not34.i = icmp eq i32 %i.gz, 0
  %i.ha = and i32 %.0.i76, -6
  %i.hb = or disjoint i32 %i.ha, 1
  %.1.i = select i1 %.not34.i, i32 %.0.i76, i32 %i.hb
  %i.hc = zext i32 %.1.i to i64
  %i.hd = shl nuw i64 %i.hc, 32
  %i.he = or disjoint i64 %i.hd, %3
  %i.hf = or i64 %i.he, -9223372036854775808
  br label %bb.ao

p4_ht_thread.exit.thread.i:                       ; preds = %p4_ht_thread.exit.i, %.thread.i
  %i.hg = phi i32 [ %i.gu, %p4_ht_thread.exit.i ], [ %i.gq, %.thread.i ] ; 2 uses
  %i.hh = and i64 %i.fr, 4093640703
  %i.hi = and i64 %i.fr, 8589934592
  %.not31.i = icmp eq i64 %i.hi, 0
  %i.hj = and i32 %i.hg, -11
  %i.hk = or disjoint i32 %i.hj, 8
  %.2.i = select i1 %.not31.i, i32 %i.hg, i32 %i.hk ; 3 uses
  %i.hl = and i32 %.2.i, 1
  %.not32.i = icmp eq i32 %i.hl, 0
  %i.hm = and i32 %.2.i, 2147483642
  %i.hn = or disjoint i32 %i.hm, 4
  %.3.i = select i1 %.not32.i, i32 %.2.i, i32 %i.hn
  %i.ho = zext i32 %.3.i to i64
  %i.hp = shl nuw i64 %i.ho, 32
  %.masked.i = and i64 %i.hp, 9223372032559808512
  %i.hq = or disjoint i64 %i.hh, %.masked.i
  %i.hr = or disjoint i64 %i.hq, 67108864
  br label %bb.ao

bb.ao:                                            ; preds = %p4_ht_thread.exit.thread.i, %bb.an
  %storemerge.i = phi i64 [ %i.hr, %p4_ht_thread.exit.thread.i ], [ %i.hf, %bb.an ]
  store i64 %storemerge.i, ptr %i.h, align 8
  br label %p4_pmu_swap_config_ts.exit

p4_pmu_swap_config_ts.exit:                       ; preds = %p4_should_swap_ts.exit.i.thread, %p4_should_swap_ts.exit.i, %p4_should_swap_ts.exit.thread.i, %bb.ao
  br i1 %.not58, label %arch_set_bit.exit, label %.sink.split

.sink.split:                                      ; preds = %p4_pmu_swap_config_ts.exit, %bb.i
  %i.hs = phi i64 [ %.lcssa162, %bb.i ], [ %.lcssa163, %p4_pmu_swap_config_ts.exit ]
  %.017.i.lcssa.sink = phi i32 [ %.lcssa165, %bb.i ], [ %.017.i.lcssa, %p4_pmu_swap_config_ts.exit ] ; 2 uses
  %i.ht = getelementptr [4 x i8], ptr %2, i64 %indvars.iv
  store i32 %.017.i.lcssa.sink, ptr %i.ht, align 4
  br label %arch_set_bit.exit

arch_set_bit.exit:                                ; preds = %bb.i, %p4_pmu_swap_config_ts.exit, %.sink.split
  %i.hu = phi i64 [ %.lcssa162, %bb.i ], [ %.lcssa163, %p4_pmu_swap_config_ts.exit ], [ %i.hs, %.sink.split ]
  %.050 = phi i32 [ %.lcssa165, %bb.i ], [ %.017.i.lcssa, %p4_pmu_swap_config_ts.exit ], [ %.017.i.lcssa.sink, %.sink.split ]
  %i.hv = sext i32 %.050 to i64
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock  btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) %i.a, i64 range(i64 -2147483648, 2147483648) %i.hv) #12, !srcloc !53
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock  btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) %i.b, i64 range(i64 -2147483648, 2147483648) %i.hu) #12, !srcloc !53
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.hw = add i32 %.05199, -1
  %exitcond116.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond116.not, label %p4_get_alias_event.exit.thread.thread, label %bb.b, !llvm.loop !49

p4_get_alias_event.exit.thread:                   ; preds = %p4_next_cntr.exit.thread.2, %bb.ae, %p4_get_alias_event.exit.2, %bb.m, %p4_next_cntr.exit.thread, %p4_next_cntr.exit.thread.1, %bb.v, %p4_get_escr_idx.exit.thread
  %.not62 = icmp eq i32 %.05199, 0
  br i1 %.not62, label %p4_get_alias_event.exit.thread.thread, label %bb.ap

p4_get_alias_event.exit.thread.thread:            ; preds = %arch_set_bit.exit, %bb.a, %p4_get_alias_event.exit.thread
  br label %bb.ap

bb.ap:                                            ; preds = %p4_get_alias_event.exit.thread, %p4_get_alias_event.exit.thread.thread
  %i.hx = phi i32 [ 0, %p4_get_alias_event.exit.thread.thread ], [ -22, %p4_get_alias_event.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i32 %i.hx
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none)
define internal i64 @p4_pmu_event_map(i32 noundef %0) #6 align 16 prefalign(16) {
bb.a:
  %i.a = sext i32 %0 to i64
  %i.b = getelementptr [8 x i8], ptr @p4_general_events, i64 %i.a
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %sum.shift.i = lshr i64 %i.c, 57
  %i.d = and i64 %sum.shift.i, 63                 ; 2 uses
  %i.e = icmp samesign ult i64 %i.d, 46
  %i.f = getelementptr [28 x i8], ptr @p4_event_bind_map, i64 %i.d
  %spec.select.i = select i1 %i.e, ptr %i.f, ptr null
  %i.g = load i32, ptr %spec.select.i, align 4
  %i.h = shl i32 %i.g, 13
  %i.i = and i32 %i.h, 2088960
  %i.j = zext nneg i32 %i.i to i64
  %i.k = or i64 %i.c, %i.j
  ret i64 %i.k
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @x86_get_event_constraints(ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @x86_perf_event_update(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__x86_pmu_set_period(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @perf_event_overflow(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @do_trace_write_msr(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__SCT__apic_call_write(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @__p4_pmu_enable_event(ptr nofree noundef readonly captures(none) %0) unnamed_addr #4 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 368        ; 2 uses
  %i.b = load i64, ptr %i.a, align 8              ; 4 uses
  %.lobit.i = lshr i64 %i.b, 63
  %sum.shift = lshr i64 %i.b, 57
  %i.c = and i64 %sum.shift, 63
  %i.d = getelementptr [28 x i8], ptr @p4_event_bind_map, i64 %i.c ; 2 uses
  %i.e = getelementptr i8, ptr %i.d, i64 4
  %i.f = getelementptr [4 x i8], ptr %i.e, i64 %.lobit.i
  %i.g = load i32, ptr %i.f, align 4              ; 2 uses
  %i.h = and i64 %i.b, 1073741824
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %bb.c, label %bb.b, !prof !18

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "639: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 639b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 639) #12, !srcloc !54
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.5, ptr @.str.6, i32 968, i32 2307, i64 16) #12, !srcloc !55
  tail call void asm sideeffect "640: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 640b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 640) #12, !srcloc !56
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = getelementptr i8, ptr %0, i64 420
  %i.j = load i32, ptr %i.i, align 4
  %i.k = icmp eq i32 %i.j, 1
  br i1 %i.k, label %bb.d, label %bb.e, !prof !21

bb.d:                                             ; preds = %bb.c
  tail call void asm sideeffect "641: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 641b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 641) #12, !srcloc !57
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.5, ptr @.str.6, i32 969, i32 2307, i64 16) #12, !srcloc !58
  tail call void asm sideeffect "642: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 642b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 642) #12, !srcloc !59
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.l = lshr i64 %i.b, 32
  %i.m = and i64 %i.l, 33554431
  %i.n = load i32, ptr %i.d, align 4
  %i.o = shl i32 %i.n, 17
  %i.p = and i32 %i.o, -33554432
  %i.q = zext i32 %i.p to i64
  %i.r = or disjoint i64 %i.m, %i.q               ; 2 uses
  %i.s = load i64, ptr %i.a, align 8              ; 2 uses
  %i.t = and i64 %i.s, 63                         ; 2 uses
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %p4_pmu_enable_pebs.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr [8 x i8], ptr @p4_pebs_bind_map, i64 %i.t ; 2 uses
  %i.w = load i32, ptr %i.v, align 8              ; 2 uses
  %i.x = tail call i32 asm sideeffect "1: wrmsr ; xor $0,$0\0A2:\0A\09 .pushsection __ex_table, \22aM\22, @progbits, 12\0A .balign 4\0A .long (1b) - .\0A .long (2b) - .\0A.macro extable_type_reg type:req reg:req\0A.set .Lfound, 0\0A.set .Lregnr, 0\0A.irp rs,rax,rcx,rdx,rbx,rsp,rbp,rsi,rdi,r8,r9,r10,r11,r12,r13,r14,r15\0A.ifc \\reg, %\\rs\0A.set .Lfound, .Lfound+1\0A.long \\type + (.Lregnr << 8)\0A.endif\0A.set .Lregnr, .Lregnr+1\0A.endr\0A.set .Lregnr, 0\0A.irp rs,eax,ecx,edx,ebx,esp,ebp,esi,edi,r8d,r9d,r10d,r11d,r12d,r13d,r14d,r15d\0A.ifc \\reg, %\\rs\0A.set .Lfound, .Lfound+1\0A.long \\type + (.Lregnr << 8)\0A.endif\0A.set .Lregnr, .Lregnr+1\0A.endr\0A.if (.Lfound != 1)\0A.error \22extable_type_reg: bad register argument\22\0A.endif\0A.endm\0Aextable_type_reg reg=$0, type=10 \0A.purgem extable_type_reg\0A .popsection\0A", "={ax},{cx},0,{dx},~{memory},~{dirflag},~{fpsr},~{flags}"(i32 1009, i32 %i.w, i32 0) #12, !srcloc !14
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_write_msr, i64 8), i1 false) #12
          to label %wrmsrq_safe.exit.i [label %bb.g], !srcloc !12

bb.g:                                             ; preds = %bb.f
  %i.y = zext i32 %i.w to i64
  tail call void @do_trace_write_msr(i32 noundef 1009, i64 noundef range(i64 0, 4294967296) %i.y, i32 noundef %i.x) #13
  br label %wrmsrq_safe.exit.i

wrmsrq_safe.exit.i:                               ; preds = %bb.g, %bb.f
  %i.z = getelementptr i8, ptr %i.v, i64 4
  %i.aa = load i32, ptr %i.z, align 4             ; 2 uses
  %i.ab = tail call i32 asm sideeffect "1: wrmsr ; xor $0,$0\0A2:\0A\09 .pushsection __ex_table, \22aM\22, @progbits, 12\0A .balign 4\0A .long (1b) - .\0A .long (2b) - .\0A.macro extable_type_reg type:req reg:req\0A.set .Lfound, 0\0A.set .Lregnr, 0\0A.irp rs,rax,rcx,rdx,rbx,rsp,rbp,rsi,rdi,r8,r9,r10,r11,r12,r13,r14,r15\0A.ifc \\reg, %\\rs\0A.set .Lfound, .Lfound+1\0A.long \\type + (.Lregnr << 8)\0A.endif\0A.set .Lregnr, .Lregnr+1\0A.endr\0A.set .Lregnr, 0\0A.irp rs,eax,ecx,edx,ebx,esp,ebp,esi,edi,r8d,r9d,r10d,r11d,r12d,r13d,r14d,r15d\0A.ifc \\reg, %\\rs\0A.set .Lfound, .Lfound+1\0A.long \\type + (.Lregnr << 8)\0A.endif\0A.set .Lregnr, .Lregnr+1\0A.endr\0A.if (.Lfound != 1)\0A.error \22extable_type_reg: bad register argument\22\0A.endif\0A.endm\0Aextable_type_reg reg=$0, type=10 \0A.purgem extable_type_reg\0A .popsection\0A", "={ax},{cx},0,{dx},~{memory},~{dirflag},~{fpsr},~{flags}"(i32 1010, i32 %i.aa, i32 0) #12, !srcloc !14
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_write_msr, i64 8), i1 false) #12
          to label %p4_pmu_enable_pebs.exit [label %bb.h], !srcloc !12

bb.h:                                             ; preds = %wrmsrq_safe.exit.i
  %i.ac = zext i32 %i.aa to i64
  tail call void @do_trace_write_msr(i32 noundef 1010, i64 noundef range(i64 0, 4294967296) %i.ac, i32 noundef %i.ab) #13
  br label %p4_pmu_enable_pebs.exit

p4_pmu_enable_pebs.exit:                          ; preds = %bb.e, %wrmsrq_safe.exit.i, %bb.h
  %i.ad = trunc nuw i64 %i.r to i32
  %i.ae = tail call i32 asm sideeffect "1: wrmsr ; xor $0,$0\0A2:\0A\09 .pushsection __ex_table, \22aM\22, @progbits, 12\0A .balign 4\0A .long (1b) - .\0A .long (2b) - .\0A.macro extable_type_reg type:req reg:req\0A.set .Lfound, 0\0A.set .Lregnr, 0\0A.irp rs,rax,rcx,rdx,rbx,rsp,rbp,rsi,rdi,r8,r9,r10,r11,r12,r13,r14,r15\0A.ifc \\reg, %\\rs\0A.set .Lfound, .Lfound+1\0A.long \\type + (.Lregnr << 8)\0A.endif\0A.set .Lregnr, .Lregnr+1\0A.endr\0A.set .Lregnr, 0\0A.irp rs,eax,ecx,edx,ebx,esp,ebp,esi,edi,r8d,r9d,r10d,r11d,r12d,r13d,r14d,r15d\0A.ifc \\reg, %\\rs\0A.set .Lfound, .Lfound+1\0A.long \\type + (.Lregnr << 8)\0A.endif\0A.set .Lregnr, .Lregnr+1\0A.endr\0A.if (.Lfound != 1)\0A.error \22extable_type_reg: bad register argument\22\0A.endif\0A.endm\0Aextable_type_reg reg=$0, type=10 \0A.purgem extable_type_reg\0A .popsection\0A", "={ax},{cx},0,{dx},~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %i.g, i32 %i.ad, i32 0) #12, !srcloc !14
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_write_msr, i64 8), i1 false) #12
          to label %wrmsrq_safe.exit [label %bb.i], !srcloc !12

bb.i:                                             ; preds = %p4_pmu_enable_pebs.exit
  tail call void @do_trace_write_msr(i32 noundef %i.g, i64 noundef range(i64 0, 4294967296) %i.r, i32 noundef %i.ae) #13
  br label %wrmsrq_safe.exit

wrmsrq_safe.exit:                                 ; preds = %p4_pmu_enable_pebs.exit, %bb.i
  %i.af = getelementptr i8, ptr %0, i64 400
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = trunc i64 %i.ag to i32                  ; 2 uses
  %i.ai = and i64 %i.s, 4294959104
  %i.aj = or disjoint i64 %i.ai, 4096             ; 2 uses
  %i.ak = trunc nuw i64 %i.aj to i32
  %i.al = tail call i32 asm sideeffect "1: wrmsr ; xor $0,$0\0A2:\0A\09 .pushsection __ex_table, \22aM\22, @progbits, 12\0A .balign 4\0A .long (1b) - .\0A .long (2b) - .\0A.macro extable_type_reg type:req reg:req\0A.set .Lfound, 0\0A.set .Lregnr, 0\0A.irp rs,rax,rcx,rdx,rbx,rsp,rbp,rsi,rdi,r8,r9,r10,r11,r12,r13,r14,r15\0A.ifc \\reg, %\\rs\0A.set .Lfound, .Lfound+1\0A.long \\type + (.Lregnr << 8)\0A.endif\0A.set .Lregnr, .Lregnr+1\0A.endr\0A.set .Lregnr, 0\0A.irp rs,eax,ecx,edx,ebx,esp,ebp,esi,edi,r8d,r9d,r10d,r11d,r12d,r13d,r14d,r15d\0A.ifc \\reg, %\\rs\0A.set .Lfound, .Lfound+1\0A.long \\type + (.Lregnr << 8)\0A.endif\0A.set .Lregnr, .Lregnr+1\0A.endr\0A.if (.Lfound != 1)\0A.error \22extable_type_reg: bad register argument\22\0A.endif\0A.endm\0Aextable_type_reg reg=$0, type=10 \0A.purgem extable_type_reg\0A .popsection\0A", "={ax},{cx},0,{dx},~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %i.ah, i32 %i.ak, i32 0) #12, !srcloc !14
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_write_msr, i64 8), i1 false) #12
          to label %wrmsrq_safe.exit27 [label %bb.j], !srcloc !12

bb.j:                                             ; preds = %wrmsrq_safe.exit
  tail call void @do_trace_write_msr(i32 noundef %i.ah, i64 noundef range(i64 0, 4294967296) %i.aj, i32 noundef %i.al) #13
  br label %wrmsrq_safe.exit27
end_hunk_0
