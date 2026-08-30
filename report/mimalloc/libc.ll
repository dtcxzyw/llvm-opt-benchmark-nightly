Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mimalloc/original/libc?download=true
inline.NumInlined: 33
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_mi_atomic_once_release:bb.a
  store atomic i64 1, ptr %0 release, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.c) #15 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: noinline nooutline nounwind uwtable
define hidden noundef zeroext i1 @_mi_pthread_key_create(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #7 {
bb.a:
  %i.a = tail call i32 @pthread_key_create(ptr noundef %0, ptr noundef %1) #15 ; 2 uses
  %.not = icmp eq i32 %i.a, 0                     ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b, !prof !17

bb.b:                                             ; preds = %bb.a
  store i32 -1, ptr %0, align 4, !tbaa !18
  tail call void (i32, ptr, ...) @_mi_error_message(i32 noundef 12, ptr noundef nonnull @.str, i32 noundef %i.a) #15
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %.not10 = icmp eq ptr %2, null
  br i1 %.not10, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.b = load i32, ptr %0, align 4, !tbaa !18
  %i.c = tail call i32 @pthread_setspecific(i32 noundef %i.b, ptr noundef nonnull %2) #15 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  ret i1 %.not
}

; Function Attrs: nounwind
declare i32 @pthread_key_create(ptr noundef, ptr noundef) local_unnamed_addr #8

declare void @_mi_error_message(i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @pthread_setspecific(i32 noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: nooutline nounwind uwtable
define hidden void @_mi_detect_cpu_features() local_unnamed_addr #4 {
bb.a:
  %i.a = tail call { i32, i32, i32, i32 } asm sideeffect "cpuid", "={ax},={bx},={cx},={dx},{ax},{cx},~{dirflag},~{fpsr},~{flags}"(i32 0, i32 0) #17, !srcloc !19
  %i.b = extractvalue { i32, i32, i32, i32 } %i.a, 2
  %i.c = icmp eq i32 %i.b, 1145913699
  %i.d = tail call { i32, i32, i32, i32 } asm sideeffect "cpuid", "={ax},={bx},={cx},={dx},{ax},{cx},~{dirflag},~{fpsr},~{flags}"(i32 7, i32 0) #17, !srcloc !19
  %i.e = extractvalue { i32, i32, i32, i32 } %i.d, 3
  %i.f = and i32 %i.e, 16
  %i.g = icmp ne i32 %i.f, 0                      ; 2 uses
  %i.h = tail call { i32, i32, i32, i32 } asm sideeffect "cpuid", "={ax},={bx},={cx},={dx},{ax},{cx},~{dirflag},~{fpsr},~{flags}"(i32 7, i32 1) #17, !srcloc !19
  %i.i = extractvalue { i32, i32, i32, i32 } %i.h, 1
  %i.j = and i32 %i.i, 2048
  %.not = icmp ne i32 %i.j, 0
  %i.k = tail call { i32, i32, i32, i32 } asm sideeffect "cpuid", "={ax},={bx},={cx},={dx},{ax},{cx},~{dirflag},~{fpsr},~{flags}"(i32 1, i32 0) #17, !srcloc !19
  %i.l = extractvalue { i32, i32, i32, i32 } %i.k, 2
  %i.m = lshr i32 %i.l, 23
  %i.n = trunc i32 %i.m to i8
  %i.o = and i8 %i.n, 1
  store i8 %i.o, ptr @_mi_cpu_has_popcnt, align 64, !tbaa !20
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 127, ptr @_mi_cpu_movsb_max, align 64, !tbaa !22
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %or.cond = select i1 %i.c, i1 %i.g, i1 false
  %or.cond7 = select i1 %.not, i1 true, i1 %or.cond
  br i1 %or.cond7, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i64 127, ptr @_mi_cpu_stosb_max, align 64, !tbaa !22
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  ret void
}

; Function Attrs: nofree nooutline norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef i32 @_mi_vsnprintf(ptr noundef %0, i64 noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #9 {
bb.a:
  %i.a = alloca [160 x i8], align 16              ; 8 uses
  %i.b = alloca [160 x i8], align 16              ; 8 uses
  %i.c = icmp eq ptr %0, null
  %i.d = icmp eq i64 %1, 0
  %or.cond = or i1 %i.c, %i.d
  %i.e = icmp eq ptr %2, null
  %or.cond3 = or i1 %or.cond, %i.e
  br i1 %or.cond3, label %bb.dm, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %0, i64 %1
  %i.g = getelementptr i8, ptr %i.f, i64 -1       ; 26 uses
  store i8 0, ptr %i.g, align 1, !tbaa !8
  %.not377 = icmp ult ptr %0, %i.g
  br i1 %.not377, label %.lr.ph, label %mi_out_alignright.exit.thread365

.lr.ph:                                           ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 24 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 12 uses
  %i.j = ptrtoaddr ptr %i.g to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %mi_out_alignright.exit
  %.0211379 = phi ptr [ %2, %.lr.ph ], [ %.9, %mi_out_alignright.exit ] ; 5 uses
  %.0342378 = phi ptr [ %0, %.lr.ph ], [ %.4346, %mi_out_alignright.exit ] ; 59 uses
  %i.k = load i8, ptr %.0211379, align 1, !tbaa !8 ; 5 uses
  %i.l = icmp eq i8 %i.k, 0
  br i1 %i.l, label %mi_out_alignright.exit.thread365, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %.0211379, i64 1 ; 4 uses
  switch i8 %i.k, label %bb.g [
    i8 37, label %bb.h
    i8 92, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.n = load i8, ptr %i.m, align 1, !tbaa !8     ; 2 uses
  %i.o = icmp eq i8 %i.n, 0
  br i1 %i.o, label %mi_out_alignright.exit.thread365, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %.0211379, i64 2 ; 6 uses
  switch i8 %i.n, label %mi_out_alignright.exit [
    i8 101, label %mi_outc.exit
    i8 116, label %mi_outc.exit276
    i8 110, label %mi_outc.exit278
    i8 114, label %mi_outc.exit280
    i8 92, label %mi_outc.exit282
  ]

mi_outc.exit:                                     ; preds = %bb.f
  store i8 27, ptr %.0342378, align 1, !tbaa !8
  %i.q = getelementptr inbounds nuw i8, ptr %.0342378, i64 1
  br label %mi_out_alignright.exit

mi_outc.exit276:                                  ; preds = %bb.f
  store i8 9, ptr %.0342378, align 1, !tbaa !8
  %i.r = getelementptr inbounds nuw i8, ptr %.0342378, i64 1
  br label %mi_out_alignright.exit

mi_outc.exit278:                                  ; preds = %bb.f
  store i8 10, ptr %.0342378, align 1, !tbaa !8
  %i.s = getelementptr inbounds nuw i8, ptr %.0342378, i64 1
  br label %mi_out_alignright.exit

mi_outc.exit280:                                  ; preds = %bb.f
  store i8 13, ptr %.0342378, align 1, !tbaa !8
  %i.t = getelementptr inbounds nuw i8, ptr %.0342378, i64 1
  br label %mi_out_alignright.exit

mi_outc.exit282:                                  ; preds = %bb.f
  store i8 92, ptr %.0342378, align 1, !tbaa !8
  %i.u = getelementptr inbounds nuw i8, ptr %.0342378, i64 1
  br label %mi_out_alignright.exit

bb.g:                                             ; preds = %bb.d
  %i.v = add i8 %i.k, -32
  %or.cond6 = icmp ult i8 %i.v, 95
  br i1 %or.cond6, label %mi_outc.exit284, label %switch.early.test

switch.early.test:                                ; preds = %bb.g
  switch i8 %i.k, label %mi_out_alignright.exit [
    i8 27, label %mi_outc.exit284
    i8 13, label %mi_outc.exit284
    i8 10, label %mi_outc.exit284
    i8 9, label %mi_outc.exit284
  ]

mi_outc.exit284:                                  ; preds = %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %bb.g
  store i8 %i.k, ptr %.0342378, align 1, !tbaa !8
  %i.w = getelementptr inbounds nuw i8, ptr %.0342378, i64 1
  br label %mi_out_alignright.exit

bb.h:                                             ; preds = %bb.d
  %i.x = load i8, ptr %i.m, align 1, !tbaa !8     ; 4 uses
  %i.y = icmp eq i8 %i.x, 0
  br i1 %i.y, label %mi_out_alignright.exit.thread365, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %.0211379, i64 2 ; 2 uses
  switch i8 %i.x, label %bb.l [
    i8 43, label %bb.j
    i8 32, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i, %bb.i
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !8    ; 2 uses
  %i.ab = icmp eq i8 %i.aa, 0
  br i1 %i.ab, label %mi_out_alignright.exit.thread365, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = getelementptr inbounds nuw i8, ptr %.0211379, i64 3
  br label %bb.l

bb.l:                                             ; preds = %bb.i, %bb.k
  %.1231 = phi ptr [ %i.ac, %bb.k ], [ %i.z, %bb.i ] ; 3 uses
  %.0214.a = phi i8 [ %i.aa, %bb.k ], [ %i.x, %bb.i ] ; 2 uses
  %.0214 = phi i8 [ %i.x, %bb.k ], [ 0, %bb.i ]   ; 7 uses
  %.not269 = icmp eq i8 %.0214.a, 45              ; 3 uses
  br i1 %.not269, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.ad = load i8, ptr %.1231, align 1, !tbaa !8  ; 2 uses
  %i.ae = icmp eq i8 %i.ad, 0
  br i1 %i.ae, label %mi_out_alignright.exit.thread365, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.af = getelementptr inbounds nuw i8, ptr %.1231, i64 1
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.l
  %.2232 = phi ptr [ %i.af, %bb.n ], [ %.1231, %bb.l ] ; 3 uses
  %.1224 = phi i8 [ %i.ad, %bb.n ], [ %.0214.a, %bb.l ] ; 2 uses
  %i.ag = icmp eq i8 %.1224, 48
  br i1 %i.ag, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.ah = load i8, ptr %.2232, align 1, !tbaa !8  ; 2 uses
  %i.ai = icmp eq i8 %i.ah, 0
  br i1 %i.ai, label %mi_out_alignright.exit.thread365, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aj = getelementptr inbounds nuw i8, ptr %.2232, i64 1
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.o
  %.3233 = phi ptr [ %i.aj, %bb.q ], [ %.2232, %bb.o ] ; 3 uses
  %.2216 = phi i8 [ %i.ah, %bb.q ], [ %.1224, %bb.o ] ; 3 uses
  %.0218 = phi i8 [ 48, %bb.q ], [ 32, %bb.o ]    ; 13 uses
  %i.ak = add i8 %.2216, -49
  %or.cond24 = icmp ult i8 %i.ak, 9
  br i1 %or.cond24, label %bb.s, label %.loopexit

bb.s:                                             ; preds = %bb.r
  %i.al = load i8, ptr %.3233, align 1, !tbaa !8  ; 2 uses
  %i.am = icmp eq i8 %i.al, 0
  br i1 %i.am, label %mi_out_alignright.exit.thread365, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.an = and i8 %.2216, 15
  %i.ao = zext nneg i8 %i.an to i64
  br label %bb.u

bb.u:                                             ; preds = %bb.v, %bb.t
  %.3233.pn = phi ptr [ %.3233, %bb.t ], [ %.4.a, %bb.v ]
  %.3217 = phi i8 [ %i.al, %bb.t ], [ %i.av, %bb.v ] ; 2 uses
  %.0216 = phi i64 [ %i.ao, %bb.t ], [ %.1227, %bb.v ] ; 4 uses
  %.4.a = getelementptr inbounds nuw i8, ptr %.3233.pn, i64 1 ; 3 uses
  %i.ap = add i8 %.3217, -48                      ; 2 uses
  %i.aq = icmp ult i8 %i.ap, 10
  br i1 %i.aq, label %bb.v, label %.loopexit

bb.v:                                             ; preds = %bb.u
  %i.ar = icmp ult i64 %.0216, 18014398509481983
  %i.as = mul nuw nsw i64 %.0216, 10
  %i.at = zext nneg i8 %i.ap to i64
  %i.au = add nuw nsw i64 %i.as, %i.at
  %.1227 = select i1 %i.ar, i64 %i.au, i64 %.0216
  %i.av = load i8, ptr %.4.a, align 1, !tbaa !8   ; 2 uses
  %i.aw = icmp eq i8 %i.av, 0
  br i1 %i.aw, label %mi_out_alignright.exit.thread365, label %bb.u, !llvm.loop !24

.loopexit:                                        ; preds = %bb.u, %bb.r
  %.5235 = phi ptr [ %.3233, %bb.r ], [ %.4.a, %bb.u ] ; 6 uses
  %.5219 = phi i8 [ %.2216, %bb.r ], [ %.3217, %bb.u ] ; 4 uses
  %.3 = phi i64 [ 0, %bb.r ], [ %.0216, %bb.u ]   ; 16 uses
  %i.ax = add i8 %.5219, -76                      ; 2 uses
  %i.ay = tail call i8 @llvm.fshl.i8(i8 %i.ax, i8 %i.ax, i8 7)
  switch i8 %i.ay, label %bb.ac [
    i8 23, label %bb.w
    i8 20, label %bb.w
    i8 0, label %bb.w
    i8 16, label %bb.y
  ]

bb.w:                                             ; preds = %.loopexit, %.loopexit, %.loopexit
  %i.az = load i8, ptr %.5235, align 1, !tbaa !8  ; 2 uses
  %i.ba = icmp eq i8 %i.az, 0
  br i1 %i.ba, label %mi_out_alignright.exit.thread365, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bb = getelementptr inbounds nuw i8, ptr %.5235, i64 1
  br label %bb.ac

bb.y:                                             ; preds = %.loopexit
  %i.bc = load i8, ptr %.5235, align 1, !tbaa !8  ; 3 uses
  %i.bd = icmp eq i8 %i.bc, 0
  br i1 %i.bd, label %mi_out_alignright.exit.thread365, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.be = getelementptr inbounds nuw i8, ptr %.5235, i64 1 ; 2 uses
  %i.bf = icmp eq i8 %i.bc, 108
  br i1 %i.bf, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.bg = load i8, ptr %i.be, align 1, !tbaa !8   ; 2 uses
  %i.bh = icmp eq i8 %i.bg, 0
  br i1 %i.bh, label %mi_out_alignright.exit.thread365, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bi = getelementptr inbounds nuw i8, ptr %.5235, i64 2
  br label %bb.ac

bb.ac:                                            ; preds = %.loopexit, %bb.ab, %bb.z, %bb.x
  %.6236 = phi ptr [ %i.bb, %bb.x ], [ %i.bi, %bb.ab ], [ %i.be, %bb.z ], [ %.5235, %.loopexit ] ; 4 uses
  %.6220 = phi i8 [ %i.az, %bb.x ], [ %i.bg, %bb.ab ], [ %i.bc, %bb.z ], [ %.5219, %.loopexit ] ; 7 uses
  %.0215 = phi i8 [ %.5219, %bb.x ], [ 76, %bb.ab ], [ %.5219, %bb.z ], [ 100, %.loopexit ] ; 2 uses
  switch i8 %.6220, label %bb.ai [
    i8 37, label %mi_outc.exit286
    i8 115, label %bb.ad
  ]

mi_outc.exit286:                                  ; preds = %bb.ac
  store i8 37, ptr %.0342378, align 1, !tbaa !8
  %i.bj = getelementptr inbounds nuw i8, ptr %.0342378, i64 1
  br label %mi_outs.exit

bb.ad:                                            ; preds = %bb.ac
  %i.bk = load i32, ptr %3, align 8               ; 3 uses
  %i.bl = icmp ult i32 %i.bk, 41
  br i1 %i.bl, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.bm = load ptr, ptr %i.i, align 8
  %i.bn = zext nneg i32 %i.bk to i64
  %i.bo = getelementptr i8, ptr %i.bm, i64 %i.bn
  %i.bp = add nuw nsw i32 %i.bk, 8
  store i32 %i.bp, ptr %3, align 8
  br label %bb.ag

bb.af:                                            ; preds = %bb.ad
  %i.bq = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.br = getelementptr i8, ptr %i.bq, i64 8
  store ptr %i.br, ptr %i.h, align 8
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.bs = phi ptr [ %i.bo, %bb.ae ], [ %i.bq, %bb.af ]
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !25 ; 3 uses
  %i.bu = icmp eq ptr %i.bt, null
  br i1 %i.bu, label %mi_outs.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.bv = load i8, ptr %i.bt, align 1, !tbaa !8   ; 2 uses
  %.not369 = icmp eq i8 %i.bv, 0
  br i1 %.not369, label %mi_outs.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ah, %.lr.ph.i
  %i.bw = phi i8 [ %i.bz, %.lr.ph.i ], [ %i.bv, %bb.ah ]
  %.012.i = phi ptr [ %i.by, %.lr.ph.i ], [ %.0342378, %bb.ah ] ; 2 uses
  %.0911.i = phi ptr [ %i.bx, %.lr.ph.i ], [ %i.bt, %bb.ah ]
  %i.bx = getelementptr inbounds nuw i8, ptr %.0911.i, i64 1 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.012.i, i64 1 ; 3 uses
  store i8 %i.bw, ptr %.012.i, align 1, !tbaa !8
  %i.bz = load i8, ptr %i.bx, align 1, !tbaa !8   ; 2 uses
  %i.ca = icmp ne i8 %i.bz, 0
  %i.cb = icmp ult ptr %i.by, %i.g
  %i.cc = select i1 %i.ca, i1 %i.cb, i1 false
  br i1 %i.cc, label %.lr.ph.i, label %mi_outs.exit, !llvm.loop !28

bb.ai:                                            ; preds = %bb.ac
  %i.cd = icmp eq i8 %.6220, 112                  ; 2 uses
  %i.ce = icmp eq i8 %.6220, 120
  switch i8 %.6220, label %bb.di [
    i8 120, label %bb.aj
    i8 117, label %bb.aj
    i8 112, label %bb.be
    i8 105, label %bb.by
    i8 100, label %bb.by
  ]

bb.aj:                                            ; preds = %bb.ai, %bb.ai
  %i.cf = add i8 %.0215, -76                      ; 2 uses
  %i.cg = tail call i8 @llvm.fshl.i8(i8 %i.cf, i8 %i.cf, i8 7)
  %i.ch = load i32, ptr %3, align 8               ; 11 uses
  %i.ci = icmp ult i32 %i.ch, 41                  ; 5 uses
  switch i8 %i.cg, label %bb.ba [
    i8 23, label %bb.ak
    i8 20, label %bb.ao
    i8 0, label %bb.as
    i8 16, label %bb.aw
  ]

bb.ak:                                            ; preds = %bb.aj
  br i1 %i.ci, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.cj = load ptr, ptr %i.i, align 8
  %i.ck = zext nneg i32 %i.ch to i64
  %i.cl = getelementptr i8, ptr %i.cj, i64 %i.ck
  %i.cm = add nuw nsw i32 %i.ch, 8
  store i32 %i.cm, ptr %3, align 8
  br label %bb.an

bb.am:                                            ; preds = %bb.ak
  %i.cn = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.co = getelementptr i8, ptr %i.cn, i64 8
  store ptr %i.co, ptr %i.h, align 8
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.cp = phi ptr [ %i.cl, %bb.al ], [ %i.cn, %bb.am ]
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !22
  br label %bb.bh

bb.ao:                                            ; preds = %bb.aj
  br i1 %i.ci, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.cr = load ptr, ptr %i.i, align 8
  %i.cs = zext nneg i32 %i.ch to i64
  %i.ct = getelementptr i8, ptr %i.cr, i64 %i.cs
  %i.cu = add nuw nsw i32 %i.ch, 8
  store i32 %i.cu, ptr %3, align 8
  br label %bb.ar

bb.aq:                                            ; preds = %bb.ao
  %i.cv = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.cw = getelementptr i8, ptr %i.cv, i64 8
  store ptr %i.cw, ptr %i.h, align 8
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.cx = phi ptr [ %i.ct, %bb.ap ], [ %i.cv, %bb.aq ]
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !22
  br label %bb.bh

bb.as:                                            ; preds = %bb.aj
  br i1 %i.ci, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.cz = load ptr, ptr %i.i, align 8
  %i.da = zext nneg i32 %i.ch to i64
  %i.db = getelementptr i8, ptr %i.cz, i64 %i.da
  %i.dc = add nuw nsw i32 %i.ch, 8
  store i32 %i.dc, ptr %3, align 8
  br label %bb.av

bb.au:                                            ; preds = %bb.as
  %i.dd = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.de = getelementptr i8, ptr %i.dd, i64 8
  store ptr %i.de, ptr %i.h, align 8
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %i.df = phi ptr [ %i.db, %bb.at ], [ %i.dd, %bb.au ]
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !29
  br label %bb.bh

bb.aw:                                            ; preds = %bb.aj
  br i1 %i.ci, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.dh = load ptr, ptr %i.i, align 8
  %i.di = zext nneg i32 %i.ch to i64
  %i.dj = getelementptr i8, ptr %i.dh, i64 %i.di
  %i.dk = add nuw nsw i32 %i.ch, 8
  store i32 %i.dk, ptr %3, align 8
  br label %bb.az

bb.ay:                                            ; preds = %bb.aw
  %i.dl = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.dm = getelementptr i8, ptr %i.dl, i64 8
  store ptr %i.dm, ptr %i.h, align 8
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %i.dn = phi ptr [ %i.dj, %bb.ax ], [ %i.dl, %bb.ay ]
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !22
  br label %bb.bh

bb.ba:                                            ; preds = %bb.aj
  br i1 %i.ci, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.dp = load ptr, ptr %i.i, align 8
  %i.dq = zext nneg i32 %i.ch to i64
  %i.dr = getelementptr i8, ptr %i.dp, i64 %i.dq
  %i.ds = add nuw nsw i32 %i.ch, 8
  store i32 %i.ds, ptr %3, align 8
  br label %bb.bd

bb.bc:                                            ; preds = %bb.ba
  %i.dt = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.du = getelementptr i8, ptr %i.dt, i64 8
  store ptr %i.du, ptr %i.h, align 8
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %i.dv = phi ptr [ %i.dr, %bb.bb ], [ %i.dt, %bb.bc ]
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !18
  %i.dx = zext i32 %i.dw to i64
  br label %bb.bh

bb.be:                                            ; preds = %bb.ai
  %i.dy = load i32, ptr %3, align 8               ; 3 uses
  %i.dz = icmp ult i32 %i.dy, 41
  br i1 %i.dz, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.ea = load ptr, ptr %i.i, align 8
  %i.eb = zext nneg i32 %i.dy to i64
  %i.ec = getelementptr i8, ptr %i.ea, i64 %i.eb
  %i.ed = add nuw nsw i32 %i.dy, 8
  store i32 %i.ed, ptr %3, align 8
  br label %.lr.ph.i289

bb.bg:                                            ; preds = %bb.be
  %i.ee = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.ef = getelementptr i8, ptr %i.ee, i64 8
  store ptr %i.ef, ptr %i.h, align 8
  br label %.lr.ph.i289

.lr.ph.i289:                                      ; preds = %bb.bg, %bb.bf
  %i.eg = phi ptr [ %i.ec, %bb.bf ], [ %i.ee, %bb.bg ]
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !31
  %i.ei = getelementptr inbounds nuw i8, ptr %.0342378, i64 1 ; 3 uses
  store i8 48, ptr %.0342378, align 1, !tbaa !8
  %i.ej = icmp ult ptr %i.ei, %i.g
  br i1 %i.ej, label %.lr.ph.i289.1, label %mi_outs.exit292

.lr.ph.i289.1:                                    ; preds = %.lr.ph.i289
  %i.ek = getelementptr inbounds nuw i8, ptr %.0342378, i64 2
  store i8 120, ptr %i.ei, align 1, !tbaa !8
  br label %mi_outs.exit292

mi_outs.exit292:                                  ; preds = %.lr.ph.i289.1, %.lr.ph.i289
  %.lcssa466 = phi ptr [ %i.ei, %.lr.ph.i289 ], [ %i.ek, %.lr.ph.i289.1 ]
  %i.el = ptrtoint ptr %i.eh to i64
  %i.em = tail call i64 @llvm.usub.sat.i64(i64 %.3, i64 2)
  br label %bb.bh

bb.bh:                                            ; preds = %mi_outs.exit292, %bb.an, %bb.av, %bb.bd, %bb.az, %bb.ar
  %.1343 = phi ptr [ %.0342378, %bb.bd ], [ %.0342378, %bb.an ], [ %.0342378, %bb.ar ], [ %.0342378, %bb.av ], [ %.0342378, %bb.az ], [ %.lcssa466, %mi_outs.exit292 ] ; 12 uses
  %.4230 = phi i64 [ %.3, %bb.bd ], [ %.3, %bb.an ], [ %.3, %bb.ar ], [ %.3, %bb.av ], [ %.3, %bb.az ], [ %i.em, %mi_outs.exit292 ] ; 2 uses
  %.0213 = phi i64 [ %i.dx, %bb.bd ], [ %i.cq, %bb.an ], [ %i.cy, %bb.ar ], [ %i.dg, %bb.av ], [ %i.do, %bb.az ], [ %i.el, %mi_outs.exit292 ] ; 4 uses
  %i.en = icmp eq i64 %.4230, 0
  br i1 %i.en, label %bb.bi, label %bb.bk

bb.bi:                                            ; preds = %bb.bh
  switch i8 %.6220, label %bb.bk [
    i8 120, label %bb.bj
    i8 112, label %bb.bj
  ]

bb.bj:                                            ; preds = %bb.bi, %bb.bi
  %i.eo = icmp ult i64 %.0213, 4294967296
  %i.ep = icmp ult i64 %.0213, 281474976710656
  %i.eq = select i1 %i.ep, i64 12, i64 16
  %i.er = select i1 %i.eo, i64 8, i64 %i.eq
  %spec.store.select = select i1 %i.cd, i64 %i.er, i64 2
  %spec.select274 = select i1 %.not269, i8 %.0218, i8 48
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi, %bb.bh
  %.1235 = phi i8 [ %.0218, %bb.bh ], [ %spec.select274, %bb.bj ], [ %.0218, %bb.bi ] ; 3 uses
  %.6232 = phi i64 [ %.4230, %bb.bh ], [ %spec.store.select, %bb.bj ], [ 0, %bb.bi ] ; 3 uses
  %i.es = or i1 %i.ce, %i.cd
  %i.et = select i1 %i.es, i64 16, i64 10         ; 3 uses
  %i.eu = icmp eq i64 %.0213, 0
  br i1 %i.eu, label %bb.bl, label %bb.bo

bb.bl:                                            ; preds = %bb.bk
  %.not35.i = icmp ne i8 %.0214, 0
  %.not.i.i = icmp ult ptr %.1343, %i.g
  %or.cond.i = select i1 %.not35.i, i1 %.not.i.i, i1 false
  br i1 %or.cond.i, label %bb.bm, label %mi_outc.exit.i

bb.bm:                                            ; preds = %bb.bl
  store i8 %.0214, ptr %.1343, align 1, !tbaa !8
  %i.ev = getelementptr inbounds nuw i8, ptr %.1343, i64 1
  br label %mi_outc.exit.i

mi_outc.exit.i:                                   ; preds = %bb.bm, %bb.bl
  %.18 = phi ptr [ %i.ev, %bb.bm ], [ %.1343, %bb.bl ] ; 4 uses
  %.not.i36.i = icmp ult ptr %.18, %i.g
  br i1 %.not.i36.i, label %bb.bn, label %mi_outs.exit

bb.bn:                                            ; preds = %mi_outc.exit.i
  store i8 48, ptr %.18, align 1, !tbaa !8
  %i.ew = getelementptr inbounds nuw i8, ptr %.18, i64 1
  br label %mi_outs.exit

bb.bo:                                            ; preds = %bb.bk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bp, %bb.bo
  %indvars.iv47.i = phi i64 [ 1, %bb.bo ], [ %indvars.iv.next48.i, %bb.bp ] ; 5 uses
  %indvars.iv.i = phi i64 [ 0, %bb.bo ], [ %indvars.iv.next.i, %bb.bp ] ; 4 uses
  %.043.i = phi i64 [ %.0213, %bb.bo ], [ %i.fe, %bb.bp ] ; 3 uses
  %i.ex = urem i64 %.043.i, %i.et                 ; 2 uses
  %i.ey = trunc nuw nsw i64 %i.ex to i8           ; 2 uses
  %i.ez = icmp samesign ult i64 %i.ex, 10
  %i.fa = or disjoint i8 %i.ey, 48
  %i.fb = add nuw nsw i8 %i.ey, 55
  %i.fc = select i1 %i.ez, i8 %i.fa, i8 %i.fb
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %i.fd = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.i
  store i8 %i.fc, ptr %i.fd, align 1, !tbaa !8
  %i.fe = udiv i64 %.043.i, %i.et
  %i.ff = icmp ule i64 %i.et, %.043.i
  %i.fg = icmp samesign ult i64 %indvars.iv.i, 159
  %i.fh = select i1 %i.ff, i1 %i.fg, i1 false
  %indvars.iv.next48.i = add nuw nsw i64 %indvars.iv47.i, 1
  br i1 %i.fh, label %bb.bp, label %bb.bq, !llvm.loop !32

bb.bq:                                            ; preds = %bb.bp
  %i.fi = icmp samesign ugt i64 %indvars.iv.i, 158
  br i1 %i.fi, label %.loopexit.i, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %.not.i293 = icmp ne i8 %.0214, 0
  %.not.i38.i = icmp ult ptr %.1343, %i.g
  %or.cond59.i = select i1 %.not.i293, i1 %.not.i38.i, i1 false
  br i1 %or.cond59.i, label %bb.bs, label %mi_outc.exit39.i

bb.bs:                                            ; preds = %bb.br
  store i8 %.0214, ptr %.1343, align 1, !tbaa !8
  %i.fj = getelementptr inbounds nuw i8, ptr %.1343, i64 1
  br label %mi_outc.exit39.i

mi_outc.exit39.i:                                 ; preds = %bb.bs, %bb.br
  %.14 = phi ptr [ %i.fj, %bb.bs ], [ %.1343, %bb.br ] ; 6 uses
  %i.fk = icmp ult ptr %.14, %i.g
  br i1 %i.fk, label %mi_outc.exit39.split.i.preheader, label %.loopexit.i

mi_outc.exit39.split.i.preheader:                 ; preds = %mi_outc.exit39.i
  %xtraiter468 = and i64 %indvars.iv47.i, 3       ; 2 uses
  %lcmp.mod469.not = icmp eq i64 %xtraiter468, 0
  br i1 %lcmp.mod469.not, label %mi_outc.exit39.split.i.prol.loopexit, label %mi_outc.exit39.split.i.prol

mi_outc.exit39.split.i.prol:                      ; preds = %mi_outc.exit39.split.i.preheader, %mi_outc.exit41.i.prol
  %.16.prol = phi ptr [ %.17.prol, %mi_outc.exit41.i.prol ], [ %.14, %mi_outc.exit39.split.i.preheader ]
  %i.fl = phi ptr [ %i.fp, %mi_outc.exit41.i.prol ], [ %.14, %mi_outc.exit39.split.i.preheader ] ; 4 uses
  %indvars.iv49.i.prol = phi i64 [ %indvars.iv.next50.i.prol, %mi_outc.exit41.i.prol ], [ %indvars.iv47.i, %mi_outc.exit39.split.i.preheader ]
  %prol.iter470 = phi i64 [ %prol.iter470.next, %mi_outc.exit41.i.prol ], [ 0, %mi_outc.exit39.split.i.preheader ]
  %indvars.iv.next50.i.prol = add nsw i64 %indvars.iv49.i.prol, -1 ; 3 uses
  %.not.i40.i.prol = icmp ult ptr %i.fl, %i.g
  br i1 %.not.i40.i.prol, label %bb.bt, label %mi_outc.exit41.i.prol

bb.bt:                                            ; preds = %mi_outc.exit39.split.i.prol
  %i.fm = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.next50.i.prol
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !8
  store i8 %i.fn, ptr %i.fl, align 1, !tbaa !8
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fl, i64 1 ; 2 uses
  br label %mi_outc.exit41.i.prol

mi_outc.exit41.i.prol:                            ; preds = %bb.bt, %mi_outc.exit39.split.i.prol
  %.17.prol = phi ptr [ %i.fo, %bb.bt ], [ %.16.prol, %mi_outc.exit39.split.i.prol ] ; 3 uses
  %i.fp = phi ptr [ %i.fo, %bb.bt ], [ %i.fl, %mi_outc.exit39.split.i.prol ] ; 2 uses
  %prol.iter470.next = add i64 %prol.iter470, 1   ; 2 uses
  %prol.iter470.cmp.not = icmp eq i64 %prol.iter470.next, %xtraiter468
  br i1 %prol.iter470.cmp.not, label %mi_outc.exit39.split.i.prol.loopexit, label %mi_outc.exit39.split.i.prol, !llvm.loop !33

mi_outc.exit39.split.i.prol.loopexit:             ; preds = %mi_outc.exit41.i.prol, %mi_outc.exit39.split.i.preheader
  %.16.unr = phi ptr [ %.14, %mi_outc.exit39.split.i.preheader ], [ %.17.prol, %mi_outc.exit41.i.prol ]
  %.unr471 = phi ptr [ %.14, %mi_outc.exit39.split.i.preheader ], [ %i.fp, %mi_outc.exit41.i.prol ]
  %indvars.iv49.i.unr = phi i64 [ %indvars.iv47.i, %mi_outc.exit39.split.i.preheader ], [ %indvars.iv.next50.i.prol, %mi_outc.exit41.i.prol ]
  %.17.lcssa.unr = phi ptr [ poison, %mi_outc.exit39.split.i.preheader ], [ %.17.prol, %mi_outc.exit41.i.prol ]
  %i.fq = icmp samesign ult i64 %indvars.iv47.i, 4
  br i1 %i.fq, label %.loopexit.i, label %mi_outc.exit39.split.i

mi_outc.exit39.split.i:                           ; preds = %mi_outc.exit39.split.i.prol.loopexit, %mi_outc.exit41.i.3
  %.16 = phi ptr [ %.17.3, %mi_outc.exit41.i.3 ], [ %.16.unr, %mi_outc.exit39.split.i.prol.loopexit ]
  %i.fr = phi ptr [ %i.gk, %mi_outc.exit41.i.3 ], [ %.unr471, %mi_outc.exit39.split.i.prol.loopexit ] ; 4 uses
  %indvars.iv49.i = phi i64 [ %indvars.iv.next50.i.3, %mi_outc.exit41.i.3 ], [ %indvars.iv49.i.unr, %mi_outc.exit39.split.i.prol.loopexit ] ; 5 uses
  %.not.i40.i = icmp ult ptr %i.fr, %i.g
  br i1 %.not.i40.i, label %bb.bu, label %mi_outc.exit41.i

bb.bu:                                            ; preds = %mi_outc.exit39.split.i
  %i.fs = getelementptr i8, ptr %i.b, i64 %indvars.iv49.i
  %i.ft = getelementptr i8, ptr %i.fs, i64 -1
  %i.fu = load i8, ptr %i.ft, align 1, !tbaa !8
  store i8 %i.fu, ptr %i.fr, align 1, !tbaa !8
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fr, i64 1 ; 2 uses
  br label %mi_outc.exit41.i

mi_outc.exit41.i:                                 ; preds = %bb.bu, %mi_outc.exit39.split.i
  %.17 = phi ptr [ %i.fv, %bb.bu ], [ %.16, %mi_outc.exit39.split.i ]
  %i.fw = phi ptr [ %i.fv, %bb.bu ], [ %i.fr, %mi_outc.exit39.split.i ] ; 4 uses
  %.not.i40.i.1 = icmp ult ptr %i.fw, %i.g
  br i1 %.not.i40.i.1, label %bb.bv, label %mi_outc.exit41.i.1

bb.bv:                                            ; preds = %mi_outc.exit41.i
  %i.fx = getelementptr i8, ptr %i.b, i64 %indvars.iv49.i
  %i.fy = getelementptr i8, ptr %i.fx, i64 -2
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !8
  store i8 %i.fz, ptr %i.fw, align 1, !tbaa !8
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fw, i64 1 ; 2 uses
  br label %mi_outc.exit41.i.1

mi_outc.exit41.i.1:                               ; preds = %bb.bv, %mi_outc.exit41.i
  %.17.1 = phi ptr [ %i.ga, %bb.bv ], [ %.17, %mi_outc.exit41.i ]
  %i.gb = phi ptr [ %i.ga, %bb.bv ], [ %i.fw, %mi_outc.exit41.i ] ; 4 uses
  %.not.i40.i.2 = icmp ult ptr %i.gb, %i.g
  br i1 %.not.i40.i.2, label %bb.bw, label %mi_outc.exit41.i.2

bb.bw:                                            ; preds = %mi_outc.exit41.i.1
  %i.gc = getelementptr i8, ptr %i.b, i64 %indvars.iv49.i
  %i.gd = getelementptr i8, ptr %i.gc, i64 -3
  %i.ge = load i8, ptr %i.gd, align 1, !tbaa !8
  store i8 %i.ge, ptr %i.gb, align 1, !tbaa !8
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gb, i64 1 ; 2 uses
  br label %mi_outc.exit41.i.2

mi_outc.exit41.i.2:                               ; preds = %bb.bw, %mi_outc.exit41.i.1
  %.17.2 = phi ptr [ %i.gf, %bb.bw ], [ %.17.1, %mi_outc.exit41.i.1 ]
  %i.gg = phi ptr [ %i.gf, %bb.bw ], [ %i.gb, %mi_outc.exit41.i.1 ] ; 4 uses
  %indvars.iv.next50.i.3 = add nsw i64 %indvars.iv49.i, -4 ; 2 uses
  %.not.i40.i.3 = icmp ult ptr %i.gg, %i.g
  br i1 %.not.i40.i.3, label %bb.bx, label %mi_outc.exit41.i.3

bb.bx:                                            ; preds = %mi_outc.exit41.i.2
  %i.gh = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.next50.i.3
  %i.gi = load i8, ptr %i.gh, align 1, !tbaa !8
  store i8 %i.gi, ptr %i.gg, align 1, !tbaa !8
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gg, i64 1 ; 2 uses
  br label %mi_outc.exit41.i.3

mi_outc.exit41.i.3:                               ; preds = %bb.bx, %mi_outc.exit41.i.2
  %.17.3 = phi ptr [ %i.gj, %bb.bx ], [ %.17.2, %mi_outc.exit41.i.2 ] ; 2 uses
  %i.gk = phi ptr [ %i.gj, %bb.bx ], [ %i.gg, %mi_outc.exit41.i.2 ]
  %i.gl = icmp sgt i64 %indvars.iv49.i, 4
  br i1 %i.gl, label %mi_outc.exit39.split.i, label %.loopexit.i, !llvm.loop !35

.loopexit.i:                                      ; preds = %mi_outc.exit39.split.i.prol.loopexit, %mi_outc.exit41.i.3, %mi_outc.exit39.i, %bb.bq
  %.15 = phi ptr [ %.1343, %bb.bq ], [ %.14, %mi_outc.exit39.i ], [ %.17.lcssa.unr, %mi_outc.exit39.split.i.prol.loopexit ], [ %.17.3, %mi_outc.exit41.i.3 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  br label %mi_outs.exit

bb.by:                                            ; preds = %bb.ai, %bb.ai
  %i.gm = add i8 %.0215, -76                      ; 2 uses
  %i.gn = tail call i8 @llvm.fshl.i8(i8 %i.gm, i8 %i.gm, i8 7)
  %i.go = load i32, ptr %3, align 8               ; 11 uses
  %i.gp = icmp ult i32 %i.go, 41                  ; 5 uses
  switch i8 %i.gn, label %bb.cp [
    i8 23, label %bb.bz
    i8 20, label %bb.cd
    i8 0, label %bb.ch
    i8 16, label %bb.cl
  ]

bb.bz:                                            ; preds = %bb.by
  br i1 %i.gp, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.gq = load ptr, ptr %i.i, align 8
  %i.gr = zext nneg i32 %i.go to i64
  %i.gs = getelementptr i8, ptr %i.gq, i64 %i.gr
  %i.gt = add nuw nsw i32 %i.go, 8
  store i32 %i.gt, ptr %3, align 8
  br label %bb.cc

bb.cb:                                            ; preds = %bb.bz
  %i.gu = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.gv = getelementptr i8, ptr %i.gu, i64 8
  store ptr %i.gv, ptr %i.h, align 8
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca
  %i.gw = phi ptr [ %i.gs, %bb.ca ], [ %i.gu, %bb.cb ]
  %i.gx = load i64, ptr %i.gw, align 8, !tbaa !22
  br label %bb.ct

bb.cd:                                            ; preds = %bb.by
  br i1 %i.gp, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %i.gy = load ptr, ptr %i.i, align 8
  %i.gz = zext nneg i32 %i.go to i64
  %i.ha = getelementptr i8, ptr %i.gy, i64 %i.gz
  %i.hb = add nuw nsw i32 %i.go, 8
  store i32 %i.hb, ptr %3, align 8
  br label %bb.cg

bb.cf:                                            ; preds = %bb.cd
  %i.hc = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.hd = getelementptr i8, ptr %i.hc, i64 8
  store ptr %i.hd, ptr %i.h, align 8
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.ce
  %i.he = phi ptr [ %i.ha, %bb.ce ], [ %i.hc, %bb.cf ]
  %i.hf = load i64, ptr %i.he, align 8, !tbaa !22
  br label %bb.ct

bb.ch:                                            ; preds = %bb.by
  br i1 %i.gp, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  %i.hg = load ptr, ptr %i.i, align 8
  %i.hh = zext nneg i32 %i.go to i64
  %i.hi = getelementptr i8, ptr %i.hg, i64 %i.hh
  %i.hj = add nuw nsw i32 %i.go, 8
  store i32 %i.hj, ptr %3, align 8
  br label %bb.ck

bb.cj:                                            ; preds = %bb.ch
  %i.hk = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.hl = getelementptr i8, ptr %i.hk, i64 8
  store ptr %i.hl, ptr %i.h, align 8
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  %i.hm = phi ptr [ %i.hi, %bb.ci ], [ %i.hk, %bb.cj ]
  %i.hn = load i64, ptr %i.hm, align 8, !tbaa !29
  br label %bb.ct

bb.cl:                                            ; preds = %bb.by
  br i1 %i.gp, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  %i.ho = load ptr, ptr %i.i, align 8
  %i.hp = zext nneg i32 %i.go to i64
  %i.hq = getelementptr i8, ptr %i.ho, i64 %i.hp
  %i.hr = add nuw nsw i32 %i.go, 8
  store i32 %i.hr, ptr %3, align 8
  br label %bb.co

bb.cn:                                            ; preds = %bb.cl
  %i.hs = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.ht = getelementptr i8, ptr %i.hs, i64 8
  store ptr %i.ht, ptr %i.h, align 8
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.cm
  %i.hu = phi ptr [ %i.hq, %bb.cm ], [ %i.hs, %bb.cn ]
  %i.hv = load i64, ptr %i.hu, align 8, !tbaa !22
  br label %bb.ct

bb.cp:                                            ; preds = %bb.by
  br i1 %i.gp, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  %i.hw = load ptr, ptr %i.i, align 8
  %i.hx = zext nneg i32 %i.go to i64
  %i.hy = getelementptr i8, ptr %i.hw, i64 %i.hx
  %i.hz = add nuw nsw i32 %i.go, 8
  store i32 %i.hz, ptr %3, align 8
  br label %bb.cs

bb.cr:                                            ; preds = %bb.cp
  %i.ia = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.ib = getelementptr i8, ptr %i.ia, i64 8
  store ptr %i.ib, ptr %i.h, align 8
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.cq
  %i.ic = phi ptr [ %i.hy, %bb.cq ], [ %i.ia, %bb.cr ]
  %i.id = load i32, ptr %i.ic, align 4, !tbaa !18
  %i.ie = sext i32 %i.id to i64
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cg, %bb.co, %bb.cs, %bb.ck, %bb.cc
  %.0210 = phi i64 [ %i.gx, %bb.cc ], [ %i.hf, %bb.cg ], [ %i.hn, %bb.ck ], [ %i.hv, %bb.co ], [ %i.ie, %bb.cs ] ; 4 uses
  %i.if = icmp slt i64 %.0210, 0
  br i1 %i.if, label %.thread353, label %bb.cu

.thread353:                                       ; preds = %bb.ct
  %i.ig = sub i64 0, %.0210
  br label %bb.cy

bb.cu:                                            ; preds = %bb.ct
  %i.ih = icmp eq i64 %.0210, 0
  br i1 %i.ih, label %bb.cv, label %bb.cy

bb.cv:                                            ; preds = %bb.cu
  %.not35.i310.not = icmp eq i8 %.0214, 0
  br i1 %.not35.i310.not, label %mi_outc.exit.i314, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  store i8 %.0214, ptr %.0342378, align 1, !tbaa !8
  %i.ii = getelementptr inbounds nuw i8, ptr %.0342378, i64 1
  br label %mi_outc.exit.i314

mi_outc.exit.i314:                                ; preds = %bb.cw, %bb.cv
  %.24 = phi ptr [ %i.ii, %bb.cw ], [ %.0342378, %bb.cv ] ; 4 uses
  %.not.i36.i315 = icmp ult ptr %.24, %i.g
  br i1 %.not.i36.i315, label %bb.cx, label %mi_outs.exit

bb.cx:                                            ; preds = %mi_outc.exit.i314
  store i8 48, ptr %.24, align 1, !tbaa !8
  %i.ij = getelementptr inbounds nuw i8, ptr %.24, i64 1
  br label %mi_outs.exit

bb.cy:                                            ; preds = %.thread353, %bb.cu
  %.0209357 = phi i8 [ 45, %.thread353 ], [ %.0214, %bb.cu ] ; 2 uses
  %.1356 = phi i64 [ %i.ig, %.thread353 ], [ %.0210, %bb.cu ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cz, %bb.cy
  %indvars.iv47.i294 = phi i64 [ 1, %bb.cy ], [ %indvars.iv.next48.i298, %bb.cz ] ; 5 uses
  %indvars.iv.i295 = phi i64 [ 0, %bb.cy ], [ %indvars.iv.next.i297, %bb.cz ] ; 4 uses
  %.043.i296 = phi i64 [ %.1356, %bb.cy ], [ %i.io, %bb.cz ] ; 3 uses
  %i.ik = urem i64 %.043.i296, 10
  %i.il = trunc nuw nsw i64 %i.ik to i8
  %i.im = or disjoint i8 %i.il, 48
  %indvars.iv.next.i297 = add nuw nsw i64 %indvars.iv.i295, 1
  %i.in = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i295
  store i8 %i.im, ptr %i.in, align 1, !tbaa !8
  %i.io = udiv i64 %.043.i296, 10
  %i.ip = icmp ugt i64 %.043.i296, 9
  %i.iq = icmp samesign ult i64 %indvars.iv.i295, 159
  %i.ir = select i1 %i.ip, i1 %i.iq, i1 false
  %indvars.iv.next48.i298 = add nuw nsw i64 %indvars.iv47.i294, 1
  br i1 %i.ir, label %bb.cz, label %bb.da, !llvm.loop !32

bb.da:                                            ; preds = %bb.cz
  %i.is = icmp samesign ugt i64 %indvars.iv.i295, 158
  br i1 %i.is, label %.loopexit.i304, label %bb.db

bb.db:                                            ; preds = %bb.da
  %.not.i299.not = icmp eq i8 %.0209357, 0
  br i1 %.not.i299.not, label %mi_outc.exit39.i303, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  store i8 %.0209357, ptr %.0342378, align 1, !tbaa !8
  %i.it = getelementptr inbounds nuw i8, ptr %.0342378, i64 1
  br label %mi_outc.exit39.i303

mi_outc.exit39.i303:                              ; preds = %bb.dc, %bb.db
  %.20 = phi ptr [ %i.it, %bb.dc ], [ %.0342378, %bb.db ] ; 6 uses
  %i.iu = icmp ult ptr %.20, %i.g
  br i1 %i.iu, label %mi_outc.exit39.split.i305.preheader, label %.loopexit.i304

mi_outc.exit39.split.i305.preheader:              ; preds = %mi_outc.exit39.i303
  %xtraiter = and i64 %indvars.iv47.i294, 3       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %mi_outc.exit39.split.i305.prol.loopexit, label %mi_outc.exit39.split.i305.prol

mi_outc.exit39.split.i305.prol:                   ; preds = %mi_outc.exit39.split.i305.preheader, %mi_outc.exit41.i309.prol
  %.22.prol = phi ptr [ %.23.prol, %mi_outc.exit41.i309.prol ], [ %.20, %mi_outc.exit39.split.i305.preheader ]
  %i.iv = phi ptr [ %i.iz, %mi_outc.exit41.i309.prol ], [ %.20, %mi_outc.exit39.split.i305.preheader ] ; 4 uses
  %indvars.iv49.i306.prol = phi i64 [ %indvars.iv.next50.i307.prol, %mi_outc.exit41.i309.prol ], [ %indvars.iv47.i294, %mi_outc.exit39.split.i305.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %mi_outc.exit41.i309.prol ], [ 0, %mi_outc.exit39.split.i305.preheader ]
  %indvars.iv.next50.i307.prol = add nsw i64 %indvars.iv49.i306.prol, -1 ; 3 uses
  %.not.i40.i308.prol = icmp ult ptr %i.iv, %i.g
  br i1 %.not.i40.i308.prol, label %bb.dd, label %mi_outc.exit41.i309.prol

bb.dd:                                            ; preds = %mi_outc.exit39.split.i305.prol
  %i.iw = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.next50.i307.prol
  %i.ix = load i8, ptr %i.iw, align 1, !tbaa !8
  store i8 %i.ix, ptr %i.iv, align 1, !tbaa !8
  %i.iy = getelementptr inbounds nuw i8, ptr %i.iv, i64 1 ; 2 uses
  br label %mi_outc.exit41.i309.prol

mi_outc.exit41.i309.prol:                         ; preds = %bb.dd, %mi_outc.exit39.split.i305.prol
  %.23.prol = phi ptr [ %i.iy, %bb.dd ], [ %.22.prol, %mi_outc.exit39.split.i305.prol ] ; 3 uses
  %i.iz = phi ptr [ %i.iy, %bb.dd ], [ %i.iv, %mi_outc.exit39.split.i305.prol ] ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %mi_outc.exit39.split.i305.prol.loopexit, label %mi_outc.exit39.split.i305.prol, !llvm.loop !37

mi_outc.exit39.split.i305.prol.loopexit:          ; preds = %mi_outc.exit41.i309.prol, %mi_outc.exit39.split.i305.preheader
  %.22.unr = phi ptr [ %.20, %mi_outc.exit39.split.i305.preheader ], [ %.23.prol, %mi_outc.exit41.i309.prol ]
  %.unr = phi ptr [ %.20, %mi_outc.exit39.split.i305.preheader ], [ %i.iz, %mi_outc.exit41.i309.prol ]
  %indvars.iv49.i306.unr = phi i64 [ %indvars.iv47.i294, %mi_outc.exit39.split.i305.preheader ], [ %indvars.iv.next50.i307.prol, %mi_outc.exit41.i309.prol ]
  %.23.lcssa.unr = phi ptr [ poison, %mi_outc.exit39.split.i305.preheader ], [ %.23.prol, %mi_outc.exit41.i309.prol ]
  %i.ja = icmp samesign ult i64 %indvars.iv47.i294, 4
  br i1 %i.ja, label %.loopexit.i304, label %mi_outc.exit39.split.i305

mi_outc.exit39.split.i305:                        ; preds = %mi_outc.exit39.split.i305.prol.loopexit, %mi_outc.exit41.i309.3
  %.22 = phi ptr [ %.23.3, %mi_outc.exit41.i309.3 ], [ %.22.unr, %mi_outc.exit39.split.i305.prol.loopexit ]
  %i.jb = phi ptr [ %i.ju, %mi_outc.exit41.i309.3 ], [ %.unr, %mi_outc.exit39.split.i305.prol.loopexit ] ; 4 uses
  %indvars.iv49.i306 = phi i64 [ %indvars.iv.next50.i307.3, %mi_outc.exit41.i309.3 ], [ %indvars.iv49.i306.unr, %mi_outc.exit39.split.i305.prol.loopexit ] ; 5 uses
  %.not.i40.i308 = icmp ult ptr %i.jb, %i.g
  br i1 %.not.i40.i308, label %bb.de, label %mi_outc.exit41.i309

bb.de:                                            ; preds = %mi_outc.exit39.split.i305
  %i.jc = getelementptr i8, ptr %i.a, i64 %indvars.iv49.i306
  %i.jd = getelementptr i8, ptr %i.jc, i64 -1
  %i.je = load i8, ptr %i.jd, align 1, !tbaa !8
  store i8 %i.je, ptr %i.jb, align 1, !tbaa !8
  %i.jf = getelementptr inbounds nuw i8, ptr %i.jb, i64 1 ; 2 uses
  br label %mi_outc.exit41.i309

mi_outc.exit41.i309:                              ; preds = %bb.de, %mi_outc.exit39.split.i305
  %.23 = phi ptr [ %i.jf, %bb.de ], [ %.22, %mi_outc.exit39.split.i305 ]
  %i.jg = phi ptr [ %i.jf, %bb.de ], [ %i.jb, %mi_outc.exit39.split.i305 ] ; 4 uses
  %.not.i40.i308.1 = icmp ult ptr %i.jg, %i.g
  br i1 %.not.i40.i308.1, label %bb.df, label %mi_outc.exit41.i309.1

bb.df:                                            ; preds = %mi_outc.exit41.i309
  %i.jh = getelementptr i8, ptr %i.a, i64 %indvars.iv49.i306
  %i.ji = getelementptr i8, ptr %i.jh, i64 -2
  %i.jj = load i8, ptr %i.ji, align 1, !tbaa !8
  store i8 %i.jj, ptr %i.jg, align 1, !tbaa !8
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jg, i64 1 ; 2 uses
  br label %mi_outc.exit41.i309.1

mi_outc.exit41.i309.1:                            ; preds = %bb.df, %mi_outc.exit41.i309
  %.23.1 = phi ptr [ %i.jk, %bb.df ], [ %.23, %mi_outc.exit41.i309 ]
  %i.jl = phi ptr [ %i.jk, %bb.df ], [ %i.jg, %mi_outc.exit41.i309 ] ; 4 uses
  %.not.i40.i308.2 = icmp ult ptr %i.jl, %i.g
  br i1 %.not.i40.i308.2, label %bb.dg, label %mi_outc.exit41.i309.2

bb.dg:                                            ; preds = %mi_outc.exit41.i309.1
  %i.jm = getelementptr i8, ptr %i.a, i64 %indvars.iv49.i306
  %i.jn = getelementptr i8, ptr %i.jm, i64 -3
  %i.jo = load i8, ptr %i.jn, align 1, !tbaa !8
  store i8 %i.jo, ptr %i.jl, align 1, !tbaa !8
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jl, i64 1 ; 2 uses
  br label %mi_outc.exit41.i309.2

mi_outc.exit41.i309.2:                            ; preds = %bb.dg, %mi_outc.exit41.i309.1
  %.23.2 = phi ptr [ %i.jp, %bb.dg ], [ %.23.1, %mi_outc.exit41.i309.1 ]
  %i.jq = phi ptr [ %i.jp, %bb.dg ], [ %i.jl, %mi_outc.exit41.i309.1 ] ; 4 uses
  %indvars.iv.next50.i307.3 = add nsw i64 %indvars.iv49.i306, -4 ; 2 uses
  %.not.i40.i308.3 = icmp ult ptr %i.jq, %i.g
  br i1 %.not.i40.i308.3, label %bb.dh, label %mi_outc.exit41.i309.3

bb.dh:                                            ; preds = %mi_outc.exit41.i309.2
  %i.jr = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.next50.i307.3
  %i.js = load i8, ptr %i.jr, align 1, !tbaa !8
  store i8 %i.js, ptr %i.jq, align 1, !tbaa !8
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jq, i64 1 ; 2 uses
  br label %mi_outc.exit41.i309.3

mi_outc.exit41.i309.3:                            ; preds = %bb.dh, %mi_outc.exit41.i309.2
  %.23.3 = phi ptr [ %i.jt, %bb.dh ], [ %.23.2, %mi_outc.exit41.i309.2 ] ; 2 uses
  %i.ju = phi ptr [ %i.jt, %bb.dh ], [ %i.jq, %mi_outc.exit41.i309.2 ]
  %i.jv = icmp sgt i64 %indvars.iv49.i306, 4
  br i1 %i.jv, label %mi_outc.exit39.split.i305, label %.loopexit.i304, !llvm.loop !35

.loopexit.i304:                                   ; preds = %mi_outc.exit39.split.i305.prol.loopexit, %mi_outc.exit41.i309.3, %mi_outc.exit39.i303, %bb.da
  %.21 = phi ptr [ %.0342378, %bb.da ], [ %.20, %mi_outc.exit39.i303 ], [ %.23.lcssa.unr, %mi_outc.exit39.split.i305.prol.loopexit ], [ %.23.3, %mi_outc.exit41.i309.3 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %mi_outs.exit

bb.di:                                            ; preds = %bb.ai
  %i.jw = add i8 %.6220, -32
  %or.cond48 = icmp ult i8 %i.jw, 95
  br i1 %or.cond48, label %mi_outc.exit318, label %mi_outs.exit

mi_outc.exit318:                                  ; preds = %bb.di
  store i8 37, ptr %.0342378, align 1, !tbaa !8
  %i.jx = getelementptr inbounds nuw i8, ptr %.0342378, i64 1 ; 3 uses
  %.not.i319 = icmp ult ptr %i.jx, %i.g
  br i1 %.not.i319, label %bb.dj, label %mi_outs.exit

bb.dj:                                            ; preds = %mi_outc.exit318
  store i8 %.6220, ptr %i.jx, align 1, !tbaa !8
  %i.jy = getelementptr inbounds nuw i8, ptr %.0342378, i64 2
  br label %mi_outs.exit

mi_outs.exit:                                     ; preds = %.lr.ph.i, %bb.dj, %mi_outc.exit318, %.loopexit.i304, %bb.cx, %mi_outc.exit.i314, %.loopexit.i, %bb.bn, %mi_outc.exit.i, %bb.ag, %bb.ah, %bb.di, %mi_outc.exit286
  %.2344 = phi ptr [ %.21, %.loopexit.i304 ], [ %.0342378, %bb.di ], [ %i.jx, %mi_outc.exit318 ], [ %.15, %.loopexit.i ], [ %i.bj, %mi_outc.exit286 ], [ %.0342378, %bb.ag ], [ %.0342378, %bb.ah ], [ %i.ew, %bb.bn ], [ %.18, %mi_outc.exit.i ], [ %i.ij, %bb.cx ], [ %.24, %mi_outc.exit.i314 ], [ %i.jy, %bb.dj ], [ %i.by, %.lr.ph.i ]
  %.2236 = phi i8 [ %.0218, %.loopexit.i304 ], [ %.0218, %bb.di ], [ %.0218, %mi_outc.exit318 ], [ %.1235, %.loopexit.i ], [ %.0218, %mi_outc.exit286 ], [ %.0218, %bb.ag ], [ %.0218, %bb.ah ], [ %.1235, %bb.bn ], [ %.1235, %mi_outc.exit.i ], [ %.0218, %bb.cx ], [ %.0218, %mi_outc.exit.i314 ], [ %.0218, %bb.dj ], [ %.0218, %.lr.ph.i ] ; 2 uses
  %.7233 = phi i64 [ %.3, %.loopexit.i304 ], [ %.3, %bb.di ], [ %.3, %mi_outc.exit318 ], [ %.6232, %.loopexit.i ], [ %.3, %mi_outc.exit286 ], [ %.3, %bb.ag ], [ %.3, %bb.ah ], [ %.6232, %bb.bn ], [ %.6232, %mi_outc.exit.i ], [ %.3, %bb.cx ], [ %.3, %mi_outc.exit.i314 ], [ %.3, %bb.dj ], [ %.3, %.lr.ph.i ] ; 7 uses
  %.1222 = phi ptr [ %.0342378, %.loopexit.i304 ], [ %.0342378, %bb.di ], [ %.0342378, %mi_outc.exit318 ], [ %.1343, %.loopexit.i ], [ %.0342378, %mi_outc.exit286 ], [ %.0342378, %bb.ag ], [ %.0342378, %bb.ah ], [ %.1343, %bb.bn ], [ %.1343, %mi_outc.exit.i ], [ %.0342378, %bb.cx ], [ %.0342378, %mi_outc.exit.i314 ], [ %.0342378, %bb.dj ], [ %.0342378, %.lr.ph.i ] ; 10 uses
  %.fr.i = freeze ptr %.2344                      ; 7 uses
  %i.jz = ptrtoint ptr %.fr.i to i64              ; 3 uses
  %i.ka = ptrtoint ptr %.1222 to i64              ; 2 uses
  %i.kb = sub i64 %i.jz, %i.ka                    ; 13 uses
  %i.kc = icmp ult i64 %i.kb, %.7233
  br i1 %i.kc, label %bb.dk, label %mi_out_alignright.exit

bb.dk:                                            ; preds = %mi_outs.exit
  %i.kd = sub nuw i64 %.7233, %i.kb               ; 2 uses
  %i.ke = icmp ult ptr %.fr.i, %i.g
  br i1 %i.ke, label %.lr.ph.preheader.i, label %mi_out_fill.exit

.lr.ph.preheader.i:                               ; preds = %bb.dk
  %i.kf = xor i64 %i.jz, -1
  %i.kg = add i64 %i.kf, %i.j
  %i.kh = add i64 %i.kd, -1
  %umin.i = tail call i64 @llvm.umin.i64(i64 %i.kg, i64 %i.kh)
  %i.ki = add nuw i64 %umin.i, 1                  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.fr.i, i8 range(i8 32, 49) %.2236, i64 %i.ki, i1 false), !tbaa !8
  %scevgep.i = getelementptr i8, ptr %.fr.i, i64 %i.ki
  br label %mi_out_fill.exit

mi_out_fill.exit:                                 ; preds = %bb.dk, %.lr.ph.preheader.i
  %.09.lcssa.i = phi ptr [ %.fr.i, %bb.dk ], [ %scevgep.i, %.lr.ph.preheader.i ] ; 4 uses
  %.not270 = icmp ugt ptr %.09.lcssa.i, %i.g
  %or.cond272 = select i1 %.not269, i1 true, i1 %.not270
  br i1 %or.cond272, label %mi_out_alignright.exit, label %bb.dl

bb.dl:                                            ; preds = %mi_out_fill.exit
  %i.kj = icmp ne ptr %.fr.i, %.1222
  %i.kk = getelementptr inbounds nuw i8, ptr %.1222, i64 %.7233
  %.not.i322 = icmp ult ptr %i.kk, %i.g
  %or.cond27.i = select i1 %i.kj, i1 %.not.i322, i1 false
  br i1 %or.cond27.i, label %iter.check, label %mi_out_alignright.exit

iter.check:                                       ; preds = %bb.dl
  %min.iters.check = icmp ult i64 %i.kb, 8
  br i1 %min.iters.check, label %.preheader31.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.kl = add i64 %.7233, %i.ka
  %i.km = sub i64 %i.kl, %i.jz
  %diff.check = icmp ugt i64 %i.km, -32
  br i1 %diff.check, label %.preheader31.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check454 = icmp ult i64 %i.kb, 32
  br i1 %min.iters.check454, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.kn = and i64 %i.kb, 24
  %n.vec = and i64 %i.kb, -32                     ; 4 uses
  %i.ko = or disjoint i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.kp = or disjoint i64 %index, 1               ; 2 uses
  %i.kq = sub nuw i64 %i.kb, %i.kp
  %i.kr = getelementptr inbounds nuw i8, ptr %.1222, i64 %i.kq ; 2 uses
  %i.ks = getelementptr inbounds i8, ptr %i.kr, i64 -15
  %i.kt = getelementptr inbounds i8, ptr %i.kr, i64 -31
  %wide.load = load <16 x i8>, ptr %i.ks, align 1, !tbaa !8
  %wide.load455 = load <16 x i8>, ptr %i.kt, align 1, !tbaa !8
  %i.ku = sub i64 %.7233, %i.kp
  %i.kv = getelementptr inbounds nuw i8, ptr %.1222, i64 %i.ku ; 2 uses
  %i.kw = getelementptr inbounds i8, ptr %i.kv, i64 -15
  %i.kx = getelementptr inbounds i8, ptr %i.kv, i64 -31
  store <16 x i8> %wide.load, ptr %i.kw, align 1, !tbaa !8
  store <16 x i8> %wide.load455, ptr %i.kx, align 1, !tbaa !8
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ky = icmp eq i64 %index.next, %n.vec
  br i1 %i.ky, label %middle.block, label %vector.body, !llvm.loop !38

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.kb, %n.vec
  br i1 %cmp.n, label %.preheader.preheader.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.kn, 0
  br i1 %min.epilog.iters.check, label %.preheader31.i.preheader, label %vec.epilog.ph, !prof !41

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec456 = and i64 %i.kb, -8                   ; 3 uses
  %i.kz = or disjoint i64 %n.vec456, 1
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index457 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next459, %vec.epilog.vector.body ] ; 2 uses
  %i.la = or disjoint i64 %index457, 1            ; 2 uses
  %i.lb = sub nuw i64 %i.kb, %i.la
  %i.lc = getelementptr inbounds nuw i8, ptr %.1222, i64 %i.lb
  %i.ld = getelementptr inbounds i8, ptr %i.lc, i64 -7
  %wide.load458 = load <8 x i8>, ptr %i.ld, align 1, !tbaa !8
  %i.le = sub i64 %.7233, %i.la
  %i.lf = getelementptr inbounds nuw i8, ptr %.1222, i64 %i.le
  %i.lg = getelementptr inbounds i8, ptr %i.lf, i64 -7
  store <8 x i8> %wide.load458, ptr %i.lg, align 1, !tbaa !8
  %index.next459 = add nuw i64 %index457, 8       ; 2 uses
  %i.lh = icmp eq i64 %index.next459, %n.vec456
  br i1 %i.lh, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !42

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n460 = icmp eq i64 %i.kb, %n.vec456
  br i1 %cmp.n460, label %.preheader.preheader.i, label %.preheader31.i.preheader

.preheader31.i.preheader:                         ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.02232.i.ph = phi i64 [ 1, %iter.check ], [ 1, %vector.memcheck ], [ %i.ko, %vec.epilog.iter.check ], [ %i.kz, %vec.epilog.middle.block ]
  br label %.preheader31.i

.preheader31.i:                                   ; preds = %.preheader31.i.preheader, %.preheader31.i
  %.02232.i = phi i64 [ %i.ln, %.preheader31.i ], [ %.02232.i.ph, %.preheader31.i.preheader ] ; 4 uses
  %i.li = sub nuw i64 %i.kb, %.02232.i
  %i.lj = getelementptr inbounds nuw i8, ptr %.1222, i64 %i.li
  %i.lk = load i8, ptr %i.lj, align 1, !tbaa !8
  %i.ll = sub i64 %.7233, %.02232.i
  %i.lm = getelementptr inbounds nuw i8, ptr %.1222, i64 %i.ll
  store i8 %i.lk, ptr %i.lm, align 1, !tbaa !8
  %i.ln = add nuw i64 %.02232.i, 1
  %exitcond.i = icmp eq i64 %.02232.i, %i.kb
  br i1 %exitcond.i, label %.preheader.preheader.i, label %.preheader31.i, !llvm.loop !43

.preheader.preheader.i:                           ; preds = %.preheader31.i, %vec.epilog.middle.block, %middle.block
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %.1222, i8 range(i8 32, 49) %.2236, i64 %i.kd, i1 false), !tbaa !8
  br label %mi_out_alignright.exit

mi_out_alignright.exit:                           ; preds = %mi_out_fill.exit, %mi_outs.exit, %bb.dl, %.preheader.preheader.i, %mi_outc.exit284, %mi_outc.exit, %mi_outc.exit276, %mi_outc.exit278, %mi_outc.exit280, %mi_outc.exit282, %bb.f, %switch.early.test
  %.4346 = phi ptr [ %.09.lcssa.i, %mi_out_fill.exit ], [ %i.w, %mi_outc.exit284 ], [ %.0342378, %switch.early.test ], [ %.09.lcssa.i, %.preheader.preheader.i ], [ %i.u, %mi_outc.exit282 ], [ %.fr.i, %mi_outs.exit ], [ %.0342378, %bb.f ], [ %i.q, %mi_outc.exit ], [ %i.r, %mi_outc.exit276 ], [ %i.s, %mi_outc.exit278 ], [ %i.t, %mi_outc.exit280 ], [ %.09.lcssa.i, %bb.dl ] ; 3 uses
  %.9 = phi ptr [ %.6236, %mi_out_fill.exit ], [ %i.m, %mi_outc.exit284 ], [ %i.m, %switch.early.test ], [ %.6236, %.preheader.preheader.i ], [ %i.p, %mi_outc.exit282 ], [ %.6236, %mi_outs.exit ], [ %i.p, %bb.f ], [ %i.p, %mi_outc.exit ], [ %i.p, %mi_outc.exit276 ], [ %i.p, %mi_outc.exit278 ], [ %i.p, %mi_outc.exit280 ], [ %.6236, %bb.dl ]
  %.not = icmp ult ptr %.4346, %i.g
  br i1 %.not, label %bb.c, label %mi_out_alignright.exit.thread365

mi_out_alignright.exit.thread365:                 ; preds = %mi_out_alignright.exit, %bb.c, %bb.h, %bb.e, %bb.y, %bb.j, %bb.m, %bb.p, %bb.s, %bb.aa, %bb.w, %bb.v, %bb.b
  %.0342376 = phi ptr [ %.0342378, %bb.v ], [ %0, %bb.b ], [ %.4346, %mi_out_alignright.exit ], [ %.0342378, %bb.c ], [ %.0342378, %bb.h ], [ %.0342378, %bb.e ], [ %.0342378, %bb.y ], [ %.0342378, %bb.j ], [ %.0342378, %bb.m ], [ %.0342378, %bb.p ], [ %.0342378, %bb.s ], [ %.0342378, %bb.aa ], [ %.0342378, %bb.w ] ; 2 uses
  store i8 0, ptr %.0342376, align 1, !tbaa !8
  %i.lo = ptrtoint ptr %.0342376 to i64
  %i.lp = ptrtoint ptr %0 to i64
  %i.lq = sub i64 %i.lo, %i.lp
  %i.lr = trunc i64 %i.lq to i32
  br label %bb.dm

bb.dm:                                            ; preds = %bb.a, %mi_out_alignright.exit.thread365
  %.0 = phi i32 [ %i.lr, %mi_out_alignright.exit.thread365 ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nofree nooutline norecurse nosync nounwind uwtable
define hidden noundef i32 @_mi_snprintf(ptr noundef %0, i64 noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, ...) local_unnamed_addr #10 {
bb.a:
  %3 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  call void @llvm.va_start.p0(ptr nonnull %3)
  %i.a = call i32 @_mi_vsnprintf(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef nonnull %3) #16
  call void @llvm.va_end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  ret i32 %i.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #11

; Function Attrs: mustprogress nofree noinline nooutline norecurse nosync nounwind willreturn memory(none) uwtable
define hidden range(i64 0, 65) i64 @_mi_popcount_generic(i64 noundef %0) local_unnamed_addr #12 {
bb.a:
  %i.a = icmp ult i64 %0, 2
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i64 %0, -1
  br i1 %i.b, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 range(i64 2, 0) %0)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i64 [ %i.c, %bb.c ], [ %0, %bb.a ], [ 64, %bb.b ]
  ret i64 %.0
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.fshl.i8(i8, i8, i8) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #13

attributes #0 = { mustprogress nofree nooutline norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-builtin-malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nooutline norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-builtin-malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nooutline norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-builtin-malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nooutline nounwind uwtable "min-legal-vector-width"="0" "no-builtin-malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-builtin-malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint nooutline nounwind uwtable "min-legal-vector-width"="0" "no-builtin-malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline nooutline nounwind uwtable "min-legal-vector-width"="0" "no-builtin-malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind "no-builtin-malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nooutline norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-builtin-malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nooutline norecurse nosync nounwind uwtable "min-legal-vector-width"="0" "no-builtin-malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn }
attributes #12 = { mustprogress nofree noinline nooutline norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-builtin-malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #15 = { nounwind "no-builtin-malloc" }
attributes #16 = { "no-builtin-malloc" }
attributes #17 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!6, !6, i64 0}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = distinct !{!11, !10}
!12 = distinct !{!12, !10}
!13 = distinct !{!13, !10}
!14 = distinct !{!14, !10}
!15 = distinct !{!15, !10}
!16 = distinct !{!16, !10}
!17 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!18 = !{!5, !5, i64 0}
!19 = !{i64 5974}
!20 = !{!21, !21, i64 0}
!21 = !{!"_Bool", !6, i64 0}
!22 = !{!23, !23, i64 0}
!23 = !{!"long", !6, i64 0}
!24 = distinct !{!24, !10}
!25 = !{!26, !26, i64 0}
!26 = !{!"p1 omnipotent char", !27, i64 0}
!27 = !{!"any pointer", !6, i64 0}
!28 = distinct !{!28, !10}
!29 = !{!30, !30, i64 0}
!30 = !{!"long long", !6, i64 0}
!31 = !{!27, !27, i64 0}
!32 = distinct !{!32, !10}
!33 = distinct !{!33, !34}
!34 = !{!"llvm.loop.unroll.disable"}
!35 = distinct !{!35, !10, !36}
!36 = !{!"llvm.loop.unswitch.partial.disable"}
!37 = distinct !{!37, !34}
!38 = distinct !{!38, !10, !39, !40}
!39 = !{!"llvm.loop.isvectorized", i32 1}
!40 = !{!"llvm.loop.unroll.runtime.disable"}
!41 = !{!"branch_weights", i32 8, i32 24}
!42 = distinct !{!42, !10, !39, !40}
!43 = distinct !{!43, !10, !39}
end_hunk_0
