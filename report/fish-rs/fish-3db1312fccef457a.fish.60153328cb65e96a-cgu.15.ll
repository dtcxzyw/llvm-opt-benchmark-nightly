Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fish-rs/original/fish-3db1312fccef457a.fish.60153328cb65e96a-cgu.15?download=true
inline.NumInlined: 2884
inline.NumDeleted: 1261
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_RNvNtNtCs8frGy5WneL6_4fish8builtins4math4math:bb.a
  %.val50 = load i64, ptr %i.ch, align 8, !range !19, !noundef !16 ; 2 uses
  %i.zv = icmp sgt i64 %.val50, 0
  br i1 %i.zv, label %bb.kk, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit

bb.kk:                                            ; preds = %bb.kj
  %.val51 = load ptr, ptr %i.kb, align 8, !nonnull !16, !noundef !16
  %i.zw = shl nuw i64 %.val50, 2
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val51, i64 noundef %i.zw, i64 noundef range(i64 1, -9223372036854775807) 4) #31, !noalias !3947
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit

bb.kl:                                            ; preds = %bb.ki, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE7reserveCs8frGy5WneL6_4fish.exit.i.i
  %i.zx = phi i64 [ %i.zq, %bb.ki ], [ %i.zj, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE7reserveCs8frGy5WneL6_4fish.exit.i.i ]
  %i.zy = add nuw nsw i64 %i.zx, %i.zi
  store i64 %i.zy, ptr %.sroa.424.0..sroa_idx, align 8, !alias.scope !3946, !noalias !3945
  %.val48 = load i64, ptr %i.ch, align 8, !range !19, !noundef !16 ; 2 uses
  %i.zz = icmp sgt i64 %.val48, 0
  br i1 %i.zz, label %bb.km, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit83

bb.km:                                            ; preds = %bb.kl
  %.val49 = load ptr, ptr %i.kb, align 8, !nonnull !16, !noundef !16
  %i.aaa = shl nuw i64 %.val48, 2
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val49, i64 noundef %i.aaa, i64 noundef range(i64 1, -9223372036854775807) 4) #31, !noalias !3948
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit83

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit83: ; preds = %bb.km, %bb.kl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ch)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ci)
  br label %bb.bx
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvNtNtCs8frGy5WneL6_4fish8builtins4wait17find_wait_handles(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 captures(address, read_provenance) dereferenceable(432) %1, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 16 uses
  %i.e = load ptr, ptr %0, align 8, !noundef !16  ; 4 uses
  %.not = icmp eq ptr %i.e, null                  ; 3 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 368
  %i.g = load i64, ptr %i.f, align 8, !noundef !16 ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %.loopexit30, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 392
  %i.j = load ptr, ptr %i.i, align 8, !noundef !16
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !noundef !16
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load i64, ptr %i.m, align 8, !noundef !16 ; 2 uses
  %i.o = shl nuw i64 %i.n, 2
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load i32, ptr %i.r, align 8, !range !20, !noundef !16
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 344
  %i.u = tail call noundef ptr @_RNvMs1_NtCs8frGy5WneL6_4fish11wait_handleNtB5_15WaitHandleStore10get_by_pid(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.t, i32 noundef %i.s) ; 5 uses
  %.not21 = icmp eq ptr %i.u, null
  br i1 %.not21, label %.loopexit30, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3975)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.u, ptr %i.c, align 8, !noalias !3975
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !3975, !noundef !16 ; 3 uses
  %i.x = load i64, ptr %2, align 8, !range !27, !alias.scope !3975, !noundef !16
  %i.y = icmp eq i64 %i.w, %i.x
  br i1 %i.y, label %bb.e, label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtB7_2rc2RcNtNtCs8frGy5WneL6_4fish11wait_handle10WaitHandleEE8push_mutBX_.exit

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtB7_2rc2RcNtNtCs8frGy5WneL6_4fish11wait_handle10WaitHandleEE8grow_oneB14_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
          to label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtB7_2rc2RcNtNtCs8frGy5WneL6_4fish11wait_handle10WaitHandleEE8push_mutBX_.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aa = load i64, ptr %i.u, align 8, !noalias !3976, !noundef !16
  %i.ab = add i64 %i.aa, -1                       ; 2 uses
  store i64 %i.ab, ptr %i.u, align 8, !noalias !3976
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %bb.g, label %common.resume

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvMs6_NtCs1xwejQucwHj_5alloc2rcINtB5_2RcNtNtCs8frGy5WneL6_4fish11wait_handle10WaitHandleE9drop_slowBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #29
          to label %common.resume unwind label %bb.h, !noalias !3975

bb.h:                                             ; preds = %bb.g
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34, !noalias !3975
  unreachable

common.resume:                                    ; preds = %bb.aq, %bb.ar, %bb.ai, %.body, %bb.f, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.dt, %bb.ai ], [ %i.z, %bb.f ], [ %i.z, %bb.g ], [ %i.dt, %.body ], [ %i.es, %bb.ar ], [ %i.es, %bb.aq ]
  resume { ptr, i32 } %common.resume.op

_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtB7_2rc2RcNtNtCs8frGy5WneL6_4fish11wait_handle10WaitHandleEE8push_mutBX_.exit: ; preds = %bb.d, %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !alias.scope !3975, !nonnull !16, !noundef !16
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.w
  store ptr %i.u, ptr %i.ag, align 8, !noalias !3975
  %i.ah = add i64 %i.w, 1
  store i64 %i.ah, ptr %i.v, align 8, !alias.scope !3975
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %.loopexit30

.loopexit30:                                      ; preds = %bb.al, %bb.b, %bb.c, %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtB7_2rc2RcNtNtCs8frGy5WneL6_4fish11wait_handle10WaitHandleEE8push_mutBX_.exit
  %.sroa.0.0 = phi i1 [ false, %bb.c ], [ true, %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtB7_2rc2RcNtNtCs8frGy5WneL6_4fish11wait_handle10WaitHandleEE8push_mutBX_.exit ], [ false, %bb.b ], [ %.sroa.0.5, %bb.al ] ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !nonnull !16, !noundef !16 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.al = load i64, ptr %i.ak, align 8, !noundef !16 ; 2 uses
  %.idx = shl nuw nsw i64 %i.al, 3
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.idx
  %i.an = icmp eq i64 %i.al, 0
  br i1 %i.an, label %._crit_edge, label %.lr.ph46

.lr.ph46:                                         ; preds = %.loopexit30
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ap = load i64, ptr %i.ao, align 8            ; 4 uses
  %i.aq = shl nuw i64 %i.ap, 2                    ; 2 uses
  %i.ar = trunc i64 %i.ap to i32                  ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.j

bb.i:                                             ; preds = %.lr.ph, %bb.al
  %.sroa.0.142 = phi i1 [ false, %.lr.ph ], [ %.sroa.0.5, %bb.al ] ; 2 uses
  %.sroa.012.041 = phi i64 [ %i.g, %.lr.ph ], [ %i.au, %bb.al ]
  %.sroa.015.040 = phi ptr [ %i.l, %.lr.ph ], [ %i.aw, %bb.al ] ; 4 uses
  %i.au = add i64 %.sroa.012.041, -1              ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.015.040, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !noundef !16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.015.040) ]
  %i.ax = load ptr, ptr %.sroa.015.040, align 8, !nonnull !16, !noundef !16 ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  %i.az = load i64, ptr %i.ay, align 8, !noundef !16
  %i.ba = icmp eq i64 %i.n, %i.az
  br i1 %i.ba, label %bb.ak, label %bb.al

.loopexit:                                        ; preds = %bb.u, %bb.t, %3
  %.us-phi = phi i1 [ %.sroa.0.3.ph.us.us, %3 ], [ %.sroa.0.3.ph.us, %bb.t ], [ %.sroa.0.3.ph, %bb.u ] ; 2 uses
  %i.bb = icmp eq ptr %i.bc, %i.am
  br i1 %i.bb, label %._crit_edge, label %bb.j

bb.j:                                             ; preds = %.lr.ph46, %.loopexit
  %.sroa.0.245 = phi i1 [ %.sroa.0.0, %.lr.ph46 ], [ %.us-phi, %.loopexit ] ; 3 uses
  %.sroa.04.044 = phi ptr [ %i.aj, %.lr.ph46 ], [ %i.bc, %.loopexit ] ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.04.044, i64 8 ; 2 uses
  %i.bd = load ptr, ptr %.sroa.04.044, align 8, !nonnull !16, !noundef !16
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16 ; 3 uses
  %i.bf = call noundef zeroext i1 @_RNvMs7_NtCs8frGy5WneL6_4fish4procNtB5_3Job14is_constructed(ptr noundef nonnull align 8 %i.be)
  br i1 %i.bf, label %bb.k, label %_RNvNtNtCs8frGy5WneL6_4fish8builtins4wait15can_wait_on_job.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.bg = call noundef zeroext i1 @_RNvMs7_NtCs8frGy5WneL6_4fish4procNtB5_3Job13is_foreground(ptr noundef nonnull align 8 %i.be)
  br i1 %i.bg, label %_RNvNtNtCs8frGy5WneL6_4fish8builtins4wait15can_wait_on_job.exit.thread, label %_RNvNtNtCs8frGy5WneL6_4fish8builtins4wait15can_wait_on_job.exit

_RNvNtNtCs8frGy5WneL6_4fish8builtins4wait15can_wait_on_job.exit.thread: ; preds = %bb.k, %bb.j
  %i.bh = load ptr, ptr %.sroa.04.044, align 8, !nonnull !16, !noundef !16 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 64
  %i.bj = load i64, ptr %i.bi, align 8, !noundef !16
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 40
  %i.bl = load ptr, ptr %i.bk, align 8, !nonnull !16, !noundef !16 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bh, i64 48
  %i.bn = load i64, ptr %i.bm, align 8, !noundef !16
  %i.bo = getelementptr inbounds nuw [224 x i8], ptr %i.bl, i64 %i.bn
  br label %_RNvNtNtCs8frGy5WneL6_4fish8builtins4wait15can_wait_on_job.exit.split.us

_RNvNtNtCs8frGy5WneL6_4fish8builtins4wait15can_wait_on_job.exit: ; preds = %bb.k
  %i.bp = call noundef zeroext i1 @_RNvMs7_NtCs8frGy5WneL6_4fish4procNtB5_3Job10is_stopped(ptr noundef nonnull align 8 %i.be)
  %i.bq = load ptr, ptr %.sroa.04.044, align 8, !nonnull !16, !noundef !16 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 64
  %i.bs = load i64, ptr %i.br, align 8, !noundef !16 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 40
  %i.bu = load ptr, ptr %i.bt, align 8, !nonnull !16, !noundef !16 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bq, i64 48
  %i.bw = load i64, ptr %i.bv, align 8, !noundef !16
  %i.bx = getelementptr inbounds nuw [224 x i8], ptr %i.bu, i64 %i.bw ; 2 uses
  br i1 %i.bp, label %_RNvNtNtCs8frGy5WneL6_4fish8builtins4wait15can_wait_on_job.exit.split.us, label %.outer

_RNvNtNtCs8frGy5WneL6_4fish8builtins4wait15can_wait_on_job.exit.split.us: ; preds = %_RNvNtNtCs8frGy5WneL6_4fish8builtins4wait15can_wait_on_job.exit.thread, %_RNvNtNtCs8frGy5WneL6_4fish8builtins4wait15can_wait_on_job.exit
  %i.by = phi ptr [ %i.bo, %_RNvNtNtCs8frGy5WneL6_4fish8builtins4wait15can_wait_on_job.exit.thread ], [ %i.bx, %_RNvNtNtCs8frGy5WneL6_4fish8builtins4wait15can_wait_on_job.exit ] ; 2 uses
  %i.bz = phi ptr [ %i.bl, %_RNvNtNtCs8frGy5WneL6_4fish8builtins4wait15can_wait_on_job.exit.thread ], [ %i.bu, %_RNvNtNtCs8frGy5WneL6_4fish8builtins4wait15can_wait_on_job.exit ] ; 2 uses
  %i.ca = phi i64 [ %i.bj, %_RNvNtNtCs8frGy5WneL6_4fish8builtins4wait15can_wait_on_job.exit.thread ], [ %i.bs, %_RNvNtNtCs8frGy5WneL6_4fish8builtins4wait15can_wait_on_job.exit ] ; 2 uses
  br i1 %.not, label %.outer.us.us, label %.outer.us

.outer.us.us:                                     ; preds = %_RNvNtNtCs8frGy5WneL6_4fish8builtins4wait15can_wait_on_job.exit.split.us, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish11wait_handle10WaitHandleEEB1a_.exit.us.us
  %.sroa.06.0.ph.us.us = phi ptr [ %i.cb, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish11wait_handle10WaitHandleEEB1a_.exit.us.us ], [ %i.bz, %_RNvNtNtCs8frGy5WneL6_4fish8builtins4wait15can_wait_on_job.exit.split.us ]
  %.sroa.0.3.ph.us.us = phi i1 [ %.sroa.0.3.mux.us.us, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish11wait_handle10WaitHandleEEB1a_.exit.us.us ], [ %.sroa.0.245, %_RNvNtNtCs8frGy5WneL6_4fish8builtins4wait15can_wait_on_job.exit.split.us ] ; 2 uses
  br label %3

3:                                                ; preds = %bb.l, %.outer.us.us
  %.sroa.06.0.us.us = phi ptr [ %i.cb, %bb.l ], [ %.sroa.06.0.ph.us.us, %.outer.us.us ] ; 3 uses
  %4 = icmp eq ptr %.sroa.06.0.us.us, %i.by
  br i1 %4, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %3
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.06.0.us.us, i64 224 ; 2 uses
  %i.cc = call noundef ptr @_RNvMs6_NtCs8frGy5WneL6_4fish4procNtB5_7Process16make_wait_handle(ptr noundef nonnull align 8 %.sroa.06.0.us.us, i64 noundef %i.ca) ; 5 uses
  %.not22.us.us = icmp eq ptr %i.cc, null
  br i1 %.not22.us.us, label %3, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.cc, ptr %i.d, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 56
  %i.ce = load i32, ptr %i.cd, align 8, !range !20, !noundef !16
  %i.cf = icmp eq i32 %i.ce, %i.ar
  %.sroa.0.3.mux.us.us = select i1 %i.cf, i1 true, i1 %.sroa.0.3.ph.us.us
  call void @llvm.experimental.noalias.scope.decl(metadata !3977)
  call void @llvm.experimental.noalias.scope.decl(metadata !3978)
  %i.cg = load i64, ptr %i.cc, align 8, !noalias !3979, !noundef !16
  %i.ch = add i64 %i.cg, -1                       ; 2 uses
  store i64 %i.ch, ptr %i.cc, align 8, !noalias !3979
  %i.ci = icmp eq i64 %i.ch, 0
  br i1 %i.ci, label %bb.n, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish11wait_handle10WaitHandleEEB1a_.exit.us.us

bb.n:                                             ; preds = %bb.m
  call void @_RNvMs6_NtCs1xwejQucwHj_5alloc2rcINtB5_2RcNtNtCs8frGy5WneL6_4fish11wait_handle10WaitHandleE9drop_slowBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #29
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish11wait_handle10WaitHandleEEB1a_.exit.us.us

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish11wait_handle10WaitHandleEEB1a_.exit.us.us: ; preds = %bb.n, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %.outer.us.us

.outer.us:                                        ; preds = %_RNvNtNtCs8frGy5WneL6_4fish8builtins4wait15can_wait_on_job.exit.split.us, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish11wait_handle10WaitHandleEEB1a_.exit.us
  %.sroa.06.0.ph.us = phi ptr [ %i.cj, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish11wait_handle10WaitHandleEEB1a_.exit.us ], [ %i.bz, %_RNvNtNtCs8frGy5WneL6_4fish8builtins4wait15can_wait_on_job.exit.split.us ]
  %.sroa.0.3.ph.us = phi i1 [ %.sroa.0.4.us, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish11wait_handle10WaitHandleEEB1a_.exit.us ], [ %.sroa.0.245, %_RNvNtNtCs8frGy5WneL6_4fish8builtins4wait15can_wait_on_job.exit.split.us ] ; 3 uses
  br label %bb.t

bb.o:                                             ; preds = %bb.t
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.06.0.us, i64 224 ; 2 uses
  %i.ck = call noundef ptr @_RNvMs6_NtCs8frGy5WneL6_4fish4procNtB5_7Process16make_wait_handle(ptr noundef nonnull align 8 %.sroa.06.0.us, i64 noundef %i.ca) ; 6 uses
  %.not22.us = icmp eq ptr %i.ck, null
  br i1 %.not22.us, label %bb.t, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.ck, ptr %i.d, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 32
  %i.cm = load i64, ptr %i.cl, align 8, !noundef !16
  %i.cn = icmp eq i64 %i.ap, %i.cm
  br i1 %i.cn, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.co = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  %i.cp = load ptr, ptr %i.co, align 8, !nonnull !16, !noundef !16
  %bcmp23.us = call i32 @bcmp(ptr nonnull %i.e, ptr nonnull %i.cp, i64 %i.aq)
  %i.cq = icmp eq i32 %bcmp23.us, 0
  %.sroa.0.3.mux.us = select i1 %i.cq, i1 true, i1 %.sroa.0.3.ph.us
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.sroa.0.4.us = phi i1 [ %.sroa.0.3.mux.us, %bb.q ], [ %.sroa.0.3.ph.us, %bb.p ]
  call void @llvm.experimental.noalias.scope.decl(metadata !3977)
  call void @llvm.experimental.noalias.scope.decl(metadata !3978)
  %i.cr = load i64, ptr %i.ck, align 8, !noalias !3979, !noundef !16
  %i.cs = add i64 %i.cr, -1                       ; 2 uses
  store i64 %i.cs, ptr %i.ck, align 8, !noalias !3979
  %i.ct = icmp eq i64 %i.cs, 0
  br i1 %i.ct, label %bb.s, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish11wait_handle10WaitHandleEEB1a_.exit.us

bb.s:                                             ; preds = %bb.r
  call void @_RNvMs6_NtCs1xwejQucwHj_5alloc2rcINtB5_2RcNtNtCs8frGy5WneL6_4fish11wait_handle10WaitHandleE9drop_slowBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #29
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish11wait_handle10WaitHandleEEB1a_.exit.us

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish11wait_handle10WaitHandleEEB1a_.exit.us: ; preds = %bb.s, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %.outer.us

bb.t:                                             ; preds = %bb.o, %.outer.us
  %.sroa.06.0.us = phi ptr [ %i.cj, %bb.o ], [ %.sroa.06.0.ph.us, %.outer.us ] ; 3 uses
  %i.cu = icmp eq ptr %.sroa.06.0.us, %i.by
  br i1 %i.cu, label %.loopexit, label %bb.o

._crit_edge:                                      ; preds = %.loopexit, %.loopexit30
  %.sroa.0.2.lcssa = phi i1 [ %.sroa.0.0, %.loopexit30 ], [ %.us-phi, %.loopexit ]
  ret i1 %.sroa.0.2.lcssa

bb.u:                                             ; preds = %.outer, %bb.v
  %.sroa.06.0 = phi ptr [ %i.cw, %bb.v ], [ %.sroa.06.0.ph, %.outer ] ; 3 uses
  %i.cv = icmp eq ptr %.sroa.06.0, %i.bx
  br i1 %i.cv, label %.loopexit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.06.0, i64 224 ; 2 uses
  %i.cx = call noundef ptr @_RNvMs6_NtCs8frGy5WneL6_4fish4procNtB5_7Process16make_wait_handle(ptr noundef nonnull align 8 %.sroa.06.0, i64 noundef %i.bs) ; 10 uses
  %.not22 = icmp eq ptr %i.cx, null
  br i1 %.not22, label %bb.u, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.cx, ptr %i.d, align 8
  br i1 %.not, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 32
  %i.cz = load i64, ptr %i.cy, align 8, !noundef !16
  %i.da = icmp eq i64 %i.ap, %i.cz
  br i1 %i.da, label %.split, label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.db = getelementptr inbounds nuw i8, ptr %i.cx, i64 56
  %i.dc = load i32, ptr %i.db, align 8, !range !20, !noundef !16
  %i.dd = icmp eq i32 %i.dc, %i.ar
  br i1 %i.dd, label %bb.ab, label %bb.z

.split:                                           ; preds = %bb.x
  %i.de = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  %i.df = load ptr, ptr %i.de, align 8, !nonnull !16, !noundef !16
  %bcmp23 = call i32 @bcmp(ptr nonnull %i.e, ptr nonnull %i.df, i64 %i.aq)
  %i.dg = icmp eq i32 %bcmp23, 0
  br i1 %i.dg, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %.split, %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtB7_2rc2RcNtNtCs8frGy5WneL6_4fish11wait_handle10WaitHandleEE8push_mutBX_.exit26, %bb.y, %bb.x
  %i.dh = phi ptr [ %.pre, %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtB7_2rc2RcNtNtCs8frGy5WneL6_4fish11wait_handle10WaitHandleEE8push_mutBX_.exit26 ], [ %i.cx, %bb.x ], [ %i.cx, %bb.y ], [ %i.cx, %.split ] ; 2 uses
  %.sroa.0.4 = phi i1 [ true, %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtB7_2rc2RcNtNtCs8frGy5WneL6_4fish11wait_handle10WaitHandleEE8push_mutBX_.exit26 ], [ %.sroa.0.3.ph, %bb.x ], [ %.sroa.0.3.ph, %bb.y ], [ %.sroa.0.3.ph, %.split ]
  call void @llvm.experimental.noalias.scope.decl(metadata !3977)
  call void @llvm.experimental.noalias.scope.decl(metadata !3978)
  %i.di = load i64, ptr %i.dh, align 8, !noalias !3979, !noundef !16
  %i.dj = add i64 %i.di, -1                       ; 2 uses
  store i64 %i.dj, ptr %i.dh, align 8, !noalias !3979
  %i.dk = icmp eq i64 %i.dj, 0
  br i1 %i.dk, label %bb.aa, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish11wait_handle10WaitHandleEEB1a_.exit

bb.aa:                                            ; preds = %bb.z
  call void @_RNvMs6_NtCs1xwejQucwHj_5alloc2rcINtB5_2RcNtNtCs8frGy5WneL6_4fish11wait_handle10WaitHandleE9drop_slowBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #29
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish11wait_handle10WaitHandleEEB1a_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish11wait_handle10WaitHandleEEB1a_.exit: ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %.outer

.outer:                                           ; preds = %_RNvNtNtCs8frGy5WneL6_4fish8builtins4wait15can_wait_on_job.exit, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish11wait_handle10WaitHandleEEB1a_.exit
  %.sroa.06.0.ph = phi ptr [ %i.cw, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish11wait_handle10WaitHandleEEB1a_.exit ], [ %i.bu, %_RNvNtNtCs8frGy5WneL6_4fish8builtins4wait15can_wait_on_job.exit ]
  %.sroa.0.3.ph = phi i1 [ %.sroa.0.4, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish11wait_handle10WaitHandleEEB1a_.exit ], [ %.sroa.0.245, %_RNvNtNtCs8frGy5WneL6_4fish8builtins4wait15can_wait_on_job.exit ] ; 4 uses
  br label %bb.u

bb.ab:                                            ; preds = %.split, %bb.y
  %i.dl = load i64, ptr %i.cx, align 8, !noundef !16 ; 2 uses
  %i.dm = icmp ne i64 %i.dl, 0
  call void @llvm.assume(i1 %i.dm)
  %i.dn = add i64 %i.dl, 1                        ; 2 uses
  store i64 %i.dn, ptr %i.cx, align 8
  %i.do = icmp eq i64 %i.dn, 0
  br i1 %i.do, label %bb.ac, label %bb.ad, !prof !21

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.trap()
  unreachable

bb.ad:                                            ; preds = %bb.ab
  %i.dp = load ptr, ptr %i.d, align 8, !nonnull !16, !noundef !16 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3980)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.dp, ptr %i.b, align 8, !noalias !3980
  %i.dq = load i64, ptr %i.as, align 8, !alias.scope !3980, !noundef !16 ; 3 uses
  %i.dr = load i64, ptr %2, align 8, !range !27, !alias.scope !3980, !noundef !16
  %i.ds = icmp eq i64 %i.dq, %i.dr
  br i1 %i.ds, label %bb.ae, label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtB7_2rc2RcNtNtCs8frGy5WneL6_4fish11wait_handle10WaitHandleEE8push_mutBX_.exit26

bb.ae:                                            ; preds = %bb.ad
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtB7_2rc2RcNtNtCs8frGy5WneL6_4fish11wait_handle10WaitHandleEE8grow_oneB14_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
          to label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtB7_2rc2RcNtNtCs8frGy5WneL6_4fish11wait_handle10WaitHandleEE8push_mutBX_.exit26 unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.du = load i64, ptr %i.dp, align 8, !noalias !3981, !noundef !16
  %i.dv = add i64 %i.du, -1                       ; 2 uses
  store i64 %i.dv, ptr %i.dp, align 8, !noalias !3981
  %i.dw = icmp eq i64 %i.dv, 0
  br i1 %i.dw, label %bb.ag, label %.body

bb.ag:                                            ; preds = %bb.af
  invoke void @_RNvMs6_NtCs1xwejQucwHj_5alloc2rcINtB5_2RcNtNtCs8frGy5WneL6_4fish11wait_handle10WaitHandleE9drop_slowBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #29
          to label %.body unwind label %bb.ah, !noalias !3980

bb.ah:                                            ; preds = %bb.ag
  %i.dx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34, !noalias !3980
  unreachable

_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtB7_2rc2RcNtNtCs8frGy5WneL6_4fish11wait_handle10WaitHandleEE8push_mutBX_.exit26: ; preds = %bb.ad, %bb.ae
  %i.dy = load ptr, ptr %i.at, align 8, !alias.scope !3980, !nonnull !16, !noundef !16
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %i.dq
  store ptr %i.dp, ptr %i.dz, align 8, !noalias !3980
  %i.ea = add i64 %i.dq, 1
  store i64 %i.ea, ptr %i.as, align 8, !alias.scope !3980
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.pre = load ptr, ptr %i.d, align 8, !alias.scope !3979
  br label %bb.z

.body:                                            ; preds = %bb.af, %bb.ag
  call void @llvm.experimental.noalias.scope.decl(metadata !3982)
  call void @llvm.experimental.noalias.scope.decl(metadata !3983)
  %i.eb = load ptr, ptr %i.d, align 8, !alias.scope !3984, !nonnull !16, !noundef !16 ; 2 uses
  %i.ec = load i64, ptr %i.eb, align 8, !noalias !3984, !noundef !16
  %i.ed = add i64 %i.ec, -1                       ; 2 uses
  store i64 %i.ed, ptr %i.eb, align 8, !noalias !3984
  %i.ee = icmp eq i64 %i.ed, 0
  br i1 %i.ee, label %bb.ai, label %common.resume

bb.ai:                                            ; preds = %.body
  invoke void @_RNvMs6_NtCs1xwejQucwHj_5alloc2rcINtB5_2RcNtNtCs8frGy5WneL6_4fish11wait_handle10WaitHandleE9drop_slowBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #29
          to label %common.resume unwind label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ef = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34
  unreachable

bb.ak:                                            ; preds = %bb.i
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.eh = load ptr, ptr %i.eg, align 8, !nonnull !16, !noundef !16
  %bcmp = tail call i32 @bcmp(ptr nonnull %i.e, ptr nonnull %i.eh, i64 %i.o)
  %i.ei = icmp eq i32 %bcmp, 0
  br i1 %i.ei, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.i, %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtB7_2rc2RcNtNtCs8frGy5WneL6_4fish11wait_handle10WaitHandleEE8push_mutBX_.exit29, %bb.ak
  %.sroa.0.5 = phi i1 [ true, %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtB7_2rc2RcNtNtCs8frGy5WneL6_4fish11wait_handle10WaitHandleEE8push_mutBX_.exit29 ], [ %.sroa.0.142, %bb.ak ], [ %.sroa.0.142, %bb.i ] ; 2 uses
  %i.ej = icmp eq i64 %i.au, 0
  br i1 %i.ej, label %.loopexit30, label %bb.i
end_hunk_0
