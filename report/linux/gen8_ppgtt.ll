Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/gen8_ppgtt?download=true
inline.NumInlined: 146
inline.NumDeleted: 47
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 16

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local ptr @gen8_ppgtt_create(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @kmalloc_caches, i64 80), align 16
  %i.b = tail call noalias noundef align 8 dereferenceable_or_null(688) ptr @__kmalloc_cache_noprof(ptr noundef %i.a, i32 noundef 3520, i64 noundef 688) #5 ; 52 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %gen8_init_rsvd.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @ppgtt_init(ptr noundef nonnull %i.b, ptr noundef %0, i64 noundef %1) #6
  %i.c = getelementptr i8, ptr %i.b, i64 328      ; 5 uses
  %.val60 = load i64, ptr %i.c, align 8
  %i.d = add i64 %.val60, -4294967297
  %i.e = icmp ult i64 %i.d, -4294967296
  %i.f = select i1 %i.e, i8 3, i8 2
  %i.g = getelementptr i8, ptr %i.b, i64 521      ; 6 uses
  store i8 %i.f, ptr %i.g, align 1
  %i.h = getelementptr i8, ptr %i.b, i64 522
  store i8 21, ptr %i.h, align 2
  %i.i = load ptr, ptr %0, align 8                ; 2 uses
  %i.j = getelementptr i8, ptr %i.i, i64 1656     ; 2 uses
  %i.k = load i8, ptr %i.j, align 8
  %i.l = add i8 %i.k, -11
  %i.m = icmp ult i8 %i.l, 2                      ; 2 uses
  %i.n = select i1 %i.m, i8 0, i8 4
  %i.o = getelementptr i8, ptr %i.b, i64 520      ; 3 uses
  %i.p = load i8, ptr %i.o, align 8
  %i.q = and i8 %i.p, -5
  %i.r = or disjoint i8 %i.n, %i.q
  store i8 %i.r, ptr %i.o, align 8
  %i.s = getelementptr i8, ptr %i.i, i64 1648     ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = getelementptr i8, ptr %i.t, i64 24
  %i.v = load i32, ptr %i.u, align 8
  %i.w = and i32 %i.v, 2
  %.not55 = icmp eq i32 %i.w, 0
  %spec.select = select i1 %.not55, ptr @alloc_pt_dma, ptr @alloc_pt_lmem
  %i.x = getelementptr i8, ptr %i.b, i64 552      ; 3 uses
  store ptr %spec.select, ptr %i.x, align 8
  %i.y = getelementptr i8, ptr %i.b, i64 560
  store ptr @alloc_pt_dma, ptr %i.y, align 8
  %i.z = load i8, ptr %i.j, align 8
  %i.aa = icmp ugt i8 %i.z, 11
  %gen8_pte_encode.sink = select i1 %i.aa, ptr @gen12_pte_encode, ptr @gen8_pte_encode
  %i.ab = getelementptr i8, ptr %i.b, i64 568     ; 2 uses
  store ptr %gen8_pte_encode.sink, ptr %i.ab, align 8
  %i.ac = getelementptr i8, ptr %i.b, i64 376
  store i32 2048, ptr %i.ac, align 8
  %i.ad = getelementptr i8, ptr %i.b, i64 616
  store ptr @gen8_ppgtt_insert, ptr %i.ad, align 8
  %i.ae = load ptr, ptr %i.s, align 8
  %i.af = getelementptr i8, ptr %i.ae, i64 28
  %i.ag = load i64, ptr %i.af, align 4
  %i.ah = and i64 %i.ag, 16
  %.not56 = icmp eq i64 %i.ah, 0
  %xehp_ppgtt_insert_entry.sink = select i1 %.not56, ptr @gen8_ppgtt_insert_entry, ptr @xehp_ppgtt_insert_entry
  %i.ai = getelementptr i8, ptr %i.b, i64 608
  store ptr %xehp_ppgtt_insert_entry.sink, ptr %i.ai, align 8
  %i.aj = getelementptr i8, ptr %i.b, i64 584
  store ptr @gen8_ppgtt_alloc, ptr %i.aj, align 8
  %i.ak = getelementptr i8, ptr %i.b, i64 592
  store ptr @gen8_ppgtt_clear, ptr %i.ak, align 8
  %i.al = getelementptr i8, ptr %i.b, i64 656
  store ptr @gen8_ppgtt_foreach, ptr %i.al, align 8
  %i.am = getelementptr i8, ptr %i.b, i64 648
  store ptr @gen8_ppgtt_cleanup, ptr %i.am, align 8
  br i1 %i.m, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.an = getelementptr i8, ptr %i.b, i64 296
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = getelementptr i8, ptr %i.ao, i64 4680
  %i.aq = load ptr, ptr %i.ap, align 8            ; 4 uses
  %.not63.i = icmp eq ptr %i.aq, null
  br i1 %.not63.i, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ar = getelementptr i8, ptr %i.aq, i64 520
  %i.as = load i8, ptr %i.ar, align 8
  %i.at = trunc i8 %i.as to i1
  br i1 %i.at, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.au = getelementptr i8, ptr %i.aq, i64 523
  %i.av = load i8, ptr %i.au, align 1
  %i.aw = getelementptr i8, ptr %i.b, i64 523
  store i8 %i.av, ptr %i.aw, align 1
  %i.ax = getelementptr i8, ptr %i.aq, i64 456
  %i.ay = getelementptr i8, ptr %i.b, i64 456
  br label %bb.f

bb.f:                                             ; preds = %i915_gem_object_get.exit.i, %bb.e
  %indvars.iv.i = phi i64 [ 0, %bb.e ], [ %indvars.iv.next.i, %i915_gem_object_get.exit.i ] ; 4 uses
  %i.az = getelementptr [8 x i8], ptr %i.ax, i64 %indvars.iv.i
  %i.ba = load ptr, ptr %i.az, align 8            ; 4 uses
  %i.bb = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.ba, i32 1, ptr elementtype(i32) %i.ba) #7, !srcloc !11 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.bb, 0
  br i1 %.not.i.i.i.i.i.i.i, label %.sink.split.i.i.i.i.i.i.i, label %bb.g, !prof !12

bb.g:                                             ; preds = %bb.f
  %i.bc = add i32 %i.bb, 1
  %i.bd = or i32 %i.bc, %i.bb
  %.not10.i.i.i.i.i.i.i = icmp sgt i32 %i.bd, -1
  br i1 %.not10.i.i.i.i.i.i.i, label %i915_gem_object_get.exit.i, label %.sink.split.i.i.i.i.i.i.i, !prof !13

.sink.split.i.i.i.i.i.i.i:                        ; preds = %bb.g, %bb.f
  %.sink.i.i.i.i.i.i.i = phi i32 [ 2, %bb.f ], [ 1, %bb.g ]
  tail call void @refcount_warn_saturate(ptr noundef %i.ba, i32 noundef %.sink.i.i.i.i.i.i.i) #6
  br label %i915_gem_object_get.exit.i

i915_gem_object_get.exit.i:                       ; preds = %.sink.split.i.i.i.i.i.i.i, %bb.g
  %i.be = getelementptr [8 x i8], ptr %i.ay, i64 %indvars.iv.i
  store ptr %i.ba, ptr %i.be, align 8
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %i.bf = load i8, ptr %i.g, align 1              ; 2 uses
  %i.bg = zext i8 %i.bf to i64
  %.not64.not.i = icmp samesign ult i64 %indvars.iv.i, %i.bg
  br i1 %.not64.not.i, label %bb.f, label %gen8_init_scratch.exit.thread, !llvm.loop !21

bb.h:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.bh = tail call i32 @setup_scratch_page(ptr noundef nonnull %i.b) #6 ; 2 uses
  %.not65.i = icmp eq i32 %i.bh, 0
  br i1 %.not65.i, label %bb.i, label %gen8_init_scratch.exit.thread69

bb.i:                                             ; preds = %bb.h
  %i.bi = load i8, ptr %i.o, align 8
  %i.bj = lshr i8 %i.bi, 2
  %.lobit.i = and i8 %i.bj, 1                     ; 2 uses
  %i.bk = getelementptr i8, ptr %i.b, i64 456     ; 6 uses
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = tail call zeroext i1 @i915_gem_object_is_lmem(ptr noundef %i.bl) #6
  %i.bn = or disjoint i8 %.lobit.i, 2
  %spec.select.i = select i1 %i.bm, i8 %i.bn, i8 %.lobit.i
  %.055.i = zext nneg i8 %spec.select.i to i32
  %i.bo = load ptr, ptr %i.ab, align 8
  %i.bp = load ptr, ptr %i.bk, align 8
  %i.bq = tail call i64 @__px_dma(ptr noundef %i.bp) #6
  %i.br = getelementptr i8, ptr %i.b, i64 304
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = tail call i32 @i915_gem_get_pat_index(ptr noundef %i.bs, i32 noundef 0) #6
  %i.bu = tail call i64 %i.bo(i64 noundef %i.bq, i32 noundef %i.bt, i32 noundef %.055.i) #6, !inline_history !22
  %i.bv = load ptr, ptr %i.bk, align 8
  %i.bw = getelementptr i8, ptr %i.bv, i64 1024
  store i64 %i.bu, ptr %i.bw, align 8
  %i.bx = load i8, ptr %i.g, align 1
  %.not6679.i = icmp eq i8 %i.bx, 0
  br i1 %.not6679.i, label %gen8_init_scratch.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.i, %bb.p
  %indvars.iv91.i = phi i64 [ %indvars.iv.next92.i, %bb.p ], [ 1, %bb.i ] ; 4 uses
  %i.by = load ptr, ptr %i.x, align 8
  %i.bz = tail call ptr %i.by(ptr noundef nonnull %i.b, i32 noundef 4096) #6, !inline_history !22 ; 11 uses
  %i.ca = icmp ugt ptr %i.bz, inttoptr (i64 -4096 to ptr)
  br i1 %i.ca, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.lr.ph.i
  %i.cb = ptrtoint ptr %i.bz to i64
  %i.cc = trunc i64 %i.cb to i32
  br label %i915_gem_object_put.exit.i

bb.k:                                             ; preds = %.lr.ph.i
  %i.cd = tail call i32 @map_pt_dma(ptr noundef nonnull %i.b, ptr noundef %i.bz) #6 ; 4 uses
  %.not67.i = icmp eq i32 %i.cd, 0
  br i1 %.not67.i, label %bb.p, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ce = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.bz, i32 -1, ptr elementtype(i32) %i.bz) #7, !srcloc !11 ; 2 uses
  %i.cf = icmp eq i32 %i.ce, 1
  br i1 %i.cf, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cg = icmp slt i32 %i.ce, 1
  br i1 %i.cg, label %bb.n, label %i915_gem_object_put.exit.i, !prof !12

bb.n:                                             ; preds = %bb.m
  tail call void @refcount_warn_saturate(ptr noundef %i.bz, i32 noundef 3) #6
  br label %i915_gem_object_put.exit.i

bb.o:                                             ; preds = %bb.l
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !srcloc !15
  tail call void @drm_gem_object_free(ptr noundef %i.bz) #6, !callees !16, !inline_history !0
  br label %i915_gem_object_put.exit.i

i915_gem_object_put.exit.i:                       ; preds = %bb.o, %bb.n, %bb.m, %bb.j
  %.056.i = phi i32 [ %i.cc, %bb.j ], [ %i.cd, %bb.o ], [ %i.cd, %bb.m ], [ %i.cd, %bb.n ] ; 2 uses
  br label %bb.q

bb.p:                                             ; preds = %bb.k
  %i.ch = getelementptr [8 x i8], ptr %i.bk, i64 %indvars.iv91.i ; 2 uses
  %i.ci = getelementptr i8, ptr %i.ch, i64 -8
  %i.cj = load ptr, ptr %i.ci, align 8
  %i.ck = getelementptr i8, ptr %i.cj, i64 1024
  %i.cl = load i64, ptr %i.ck, align 8
  tail call void @fill_page_dma(ptr noundef %i.bz, i64 noundef %i.cl, i32 noundef 512) #6
  %i.cm = tail call i64 @__px_dma(ptr noundef %i.bz) #6
  %.0.i.i = or i64 %i.cm, 27
  %i.cn = getelementptr i8, ptr %i.bz, i64 1024
  store i64 %.0.i.i, ptr %i.cn, align 8
  store ptr %i.bz, ptr %i.ch, align 8
  %indvars.iv.next92.i = add nuw nsw i64 %indvars.iv91.i, 1
  %i.co = load i8, ptr %i.g, align 1              ; 2 uses
  %i.cp = zext i8 %i.co to i64
  %.not66.not.i = icmp samesign ult i64 %indvars.iv91.i, %i.cp
  br i1 %.not66.not.i, label %.lr.ph.i, label %gen8_init_scratch.exit.thread, !llvm.loop !23

bb.q:                                             ; preds = %i915_gem_object_put.exit69.i, %i915_gem_object_put.exit.i
  %indvars.iv94.i = phi i64 [ %indvars.iv91.i, %i915_gem_object_put.exit.i ], [ %indvars.iv.next95.i, %i915_gem_object_put.exit69.i ]
  %indvars.iv.next95.i = add nsw i64 %indvars.iv94.i, -1 ; 3 uses
  %i.cq = getelementptr [8 x i8], ptr %i.bk, i64 %indvars.iv.next95.i
  %i.cr = load ptr, ptr %i.cq, align 8            ; 4 uses
  %i.cs = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.cr, i32 -1, ptr elementtype(i32) %i.cr) #7, !srcloc !11 ; 2 uses
  %i.ct = icmp eq i32 %i.cs, 1
  br i1 %i.ct, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cu = icmp slt i32 %i.cs, 1
  br i1 %i.cu, label %bb.s, label %i915_gem_object_put.exit69.i, !prof !12

bb.s:                                             ; preds = %bb.r
  tail call void @refcount_warn_saturate(ptr noundef %i.cr, i32 noundef 3) #6
  br label %i915_gem_object_put.exit69.i

bb.t:                                             ; preds = %bb.q
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !srcloc !15
  tail call void @drm_gem_object_free(ptr noundef %i.cr) #6, !callees !16, !inline_history !0
  br label %i915_gem_object_put.exit69.i

i915_gem_object_put.exit69.i:                     ; preds = %bb.t, %bb.s, %bb.r
  %.not68.i = icmp eq i64 %indvars.iv.next95.i, 0
  br i1 %.not68.i, label %gen8_init_scratch.exit, label %bb.q, !llvm.loop !24

gen8_init_scratch.exit:                           ; preds = %i915_gem_object_put.exit69.i
  store ptr null, ptr %i.bk, align 8
  %.not57 = icmp eq i32 %.056.i, 0
  br i1 %.not57, label %gen8_init_scratch.exit.gen8_init_scratch.exit.thread_crit_edge, label %gen8_init_scratch.exit.thread69

gen8_init_scratch.exit.gen8_init_scratch.exit.thread_crit_edge: ; preds = %gen8_init_scratch.exit
  %.val30.i.pre = load i8, ptr %i.g, align 1
  br label %gen8_init_scratch.exit.thread

gen8_init_scratch.exit.thread:                    ; preds = %i915_gem_object_get.exit.i, %bb.p, %gen8_init_scratch.exit.gen8_init_scratch.exit.thread_crit_edge, %bb.i
  %.val30.i = phi i8 [ %.val30.i.pre, %gen8_init_scratch.exit.gen8_init_scratch.exit.thread_crit_edge ], [ %i.co, %bb.p ], [ 0, %bb.i ], [ %i.bf, %i915_gem_object_get.exit.i ]
  %.val.i = load i64, ptr %i.c, align 8
  %i.cv = zext i8 %.val30.i to i64
  %i.cw = mul nuw nsw i64 %i.cv, 9                ; 2 uses
  %i.cx = add nuw nsw i64 %i.cw, 12
  %i.cy = shl nuw i64 4096, %i.cw
  %i.cz = add i64 %.val.i, -1
  %i.da = add i64 %i.cz, %i.cy
  %i.db = lshr i64 %i.da, %i.cx
  %i.dc = trunc i64 %i.db to i32                  ; 2 uses
  %i.dd = tail call ptr @__alloc_pd(i32 noundef %i.dc) #6 ; 7 uses
  %.not.i61 = icmp eq ptr %i.dd, null
  br i1 %.not.i61, label %gen8_alloc_top_pd.exit.thread, label %bb.u, !prof !12

bb.u:                                             ; preds = %gen8_init_scratch.exit.thread
  %i.de = load ptr, ptr %i.x, align 8
  %i.df = tail call ptr %i.de(ptr noundef nonnull %i.b, i32 noundef 4096) #6, !inline_history !25 ; 4 uses
  store ptr %i.df, ptr %i.dd, align 8
  %i.dg = icmp ugt ptr %i.df, inttoptr (i64 -4096 to ptr)
  br i1 %i.dg, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.dh = ptrtoint ptr %i.df to i64
  %i.di = trunc i64 %i.dh to i32
  store ptr null, ptr %i.dd, align 8
  br label %bb.y

bb.w:                                             ; preds = %bb.u
  %i.dj = tail call i32 @map_pt_dma(ptr noundef nonnull %i.b, ptr noundef %i.df) #6 ; 2 uses
  %.not29.i = icmp eq i32 %i.dj, 0
  br i1 %.not29.i, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.dk = load ptr, ptr %i.dd, align 8
  %i.dl = getelementptr i8, ptr %i.b, i64 456
  %i.dm = load i8, ptr %i.g, align 1
  %i.dn = zext i8 %i.dm to i64
  %i.do = getelementptr [8 x i8], ptr %i.dl, i64 %i.dn
  %i.dp = load ptr, ptr %i.do, align 8
  %i.dq = getelementptr i8, ptr %i.dp, i64 1024
  %i.dr = load i64, ptr %i.dq, align 8
  tail call void @fill_page_dma(ptr noundef %i.dk, i64 noundef %i.dr, i32 noundef %i.dc) #6
  %i.ds = getelementptr i8, ptr %i.dd, i64 8      ; 2 uses
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock incl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.ds, ptr elementtype(i32) %i.ds) #7, !srcloc !17
  br label %gen8_alloc_top_pd.exit

bb.y:                                             ; preds = %bb.w, %bb.v
  %.027.i = phi i32 [ %i.di, %bb.v ], [ %i.dj, %bb.w ]
  tail call void @free_px(ptr noundef nonnull %i.b, ptr noundef nonnull %i.dd, i32 noundef 1) #6
  %i.dt = sext i32 %.027.i to i64
  %i.du = inttoptr i64 %i.dt to ptr
  br label %gen8_alloc_top_pd.exit

gen8_alloc_top_pd.exit:                           ; preds = %bb.x, %bb.y
  %.0.i62 = phi ptr [ %i.dd, %bb.x ], [ %i.du, %bb.y ] ; 7 uses
  %i.dv = icmp ugt ptr %.0.i62, inttoptr (i64 -4096 to ptr)
  br i1 %i.dv, label %gen8_alloc_top_pd.exit.thread, label %bb.z

gen8_alloc_top_pd.exit.thread:                    ; preds = %gen8_init_scratch.exit.thread, %gen8_alloc_top_pd.exit
  %.0.i6273 = phi ptr [ %.0.i62, %gen8_alloc_top_pd.exit ], [ inttoptr (i64 -12 to ptr), %gen8_init_scratch.exit.thread ]
  %i.dw = ptrtoint ptr %.0.i6273 to i64
  %i.dx = trunc i64 %i.dw to i32
  br label %gen8_init_scratch.exit.thread69

bb.z:                                             ; preds = %gen8_alloc_top_pd.exit
  %i.dy = getelementptr i8, ptr %i.b, i64 680
  store ptr %.0.i62, ptr %i.dy, align 8
  %.val = load i64, ptr %i.c, align 8
  %i.dz = add i64 %.val, -4294967297
  %i.ea = icmp ult i64 %i.dz, -4294967296
  br i1 %i.ea, label %bb.ai, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.eb = getelementptr i8, ptr %i.b, i64 464     ; 4 uses
  %i.ec = tail call ptr @alloc_pd(ptr noundef nonnull %i.b) #6 ; 7 uses
  %i.ed = icmp ugt ptr %i.ec, inttoptr (i64 -4096 to ptr)
  br i1 %i.ed, label %gen8_preallocate_top_level_pdp.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ee = load ptr, ptr %i.ec, align 8
  %i.ef = tail call i32 @map_pt_dma(ptr noundef nonnull %i.b, ptr noundef %i.ee) #6 ; 2 uses
  %.not.i63 = icmp eq i32 %i.ef, 0
  br i1 %.not.i63, label %bb.ac, label %gen8_preallocate_top_level_pdp.exit.thread76

gen8_preallocate_top_level_pdp.exit.thread76:     ; preds = %bb.ab, %bb.ad, %bb.af, %bb.ah
  %.lcssa38.i = phi i32 [ %i.ef, %bb.ab ], [ %i.eo, %bb.ad ], [ %i.ex, %bb.af ], [ %i.fg, %bb.ah ]
  %.lcssa36.i = phi ptr [ %i.ec, %bb.ab ], [ %i.el, %bb.ad ], [ %i.eu, %bb.af ], [ %i.fd, %bb.ah ]
  tail call void @free_px(ptr noundef nonnull %i.b, ptr noundef %.lcssa36.i, i32 noundef 1) #6
  br label %gen8_init_scratch.exit.thread69

bb.ac:                                            ; preds = %bb.ab
  %i.eg = load ptr, ptr %i.ec, align 8
  %i.eh = load ptr, ptr %i.eb, align 8
  %i.ei = getelementptr i8, ptr %i.eh, i64 1024
  %i.ej = load i64, ptr %i.ei, align 8
  tail call void @fill_page_dma(ptr noundef %i.eg, i64 noundef %i.ej, i32 noundef 512) #6
  tail call void @__set_pd_entry(ptr noundef %.0.i62, i16 noundef zeroext 0, ptr noundef %i.ec, ptr noundef nonnull @gen8_pde_encode) #6
  %i.ek = getelementptr i8, ptr %i.ec, i64 8      ; 2 uses
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock incl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.ek, ptr elementtype(i32) %i.ek) #7, !srcloc !17
  %i.el = tail call ptr @alloc_pd(ptr noundef nonnull %i.b) #6 ; 7 uses
  %i.em = icmp ugt ptr %i.el, inttoptr (i64 -4096 to ptr)
  br i1 %i.em, label %gen8_preallocate_top_level_pdp.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.en = load ptr, ptr %i.el, align 8
  %i.eo = tail call i32 @map_pt_dma(ptr noundef nonnull %i.b, ptr noundef %i.en) #6 ; 2 uses
  %.not.1.i = icmp eq i32 %i.eo, 0
  br i1 %.not.1.i, label %bb.ae, label %gen8_preallocate_top_level_pdp.exit.thread76

bb.ae:                                            ; preds = %bb.ad
  %i.ep = load ptr, ptr %i.el, align 8
  %i.eq = load ptr, ptr %i.eb, align 8
  %i.er = getelementptr i8, ptr %i.eq, i64 1024
  %i.es = load i64, ptr %i.er, align 8
  tail call void @fill_page_dma(ptr noundef %i.ep, i64 noundef %i.es, i32 noundef 512) #6
  tail call void @__set_pd_entry(ptr noundef %.0.i62, i16 noundef zeroext 1, ptr noundef %i.el, ptr noundef nonnull @gen8_pde_encode) #6
  %i.et = getelementptr i8, ptr %i.el, i64 8      ; 2 uses
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock incl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.et, ptr elementtype(i32) %i.et) #7, !srcloc !17
  %i.eu = tail call ptr @alloc_pd(ptr noundef nonnull %i.b) #6 ; 7 uses
  %i.ev = icmp ugt ptr %i.eu, inttoptr (i64 -4096 to ptr)
  br i1 %i.ev, label %gen8_preallocate_top_level_pdp.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ew = load ptr, ptr %i.eu, align 8
  %i.ex = tail call i32 @map_pt_dma(ptr noundef nonnull %i.b, ptr noundef %i.ew) #6 ; 2 uses
  %.not.2.i = icmp eq i32 %i.ex, 0
  br i1 %.not.2.i, label %bb.ag, label %gen8_preallocate_top_level_pdp.exit.thread76

bb.ag:                                            ; preds = %bb.af
  %i.ey = load ptr, ptr %i.eu, align 8
  %i.ez = load ptr, ptr %i.eb, align 8
  %i.fa = getelementptr i8, ptr %i.ez, i64 1024
  %i.fb = load i64, ptr %i.fa, align 8
  tail call void @fill_page_dma(ptr noundef %i.ey, i64 noundef %i.fb, i32 noundef 512) #6
  tail call void @__set_pd_entry(ptr noundef %.0.i62, i16 noundef zeroext 2, ptr noundef %i.eu, ptr noundef nonnull @gen8_pde_encode) #6
  %i.fc = getelementptr i8, ptr %i.eu, i64 8      ; 2 uses
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock incl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.fc, ptr elementtype(i32) %i.fc) #7, !srcloc !17
  %i.fd = tail call ptr @alloc_pd(ptr noundef nonnull %i.b) #6 ; 7 uses
  %i.fe = icmp ugt ptr %i.fd, inttoptr (i64 -4096 to ptr)
  br i1 %i.fe, label %gen8_preallocate_top_level_pdp.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ff = load ptr, ptr %i.fd, align 8
  %i.fg = tail call i32 @map_pt_dma(ptr noundef nonnull %i.b, ptr noundef %i.ff) #6 ; 2 uses
  %.not.3.i = icmp eq i32 %i.fg, 0
  br i1 %.not.3.i, label %gen8_preallocate_top_level_pdp.exit.thread, label %gen8_preallocate_top_level_pdp.exit.thread76

gen8_preallocate_top_level_pdp.exit.thread:       ; preds = %bb.ah
  %i.fh = load ptr, ptr %i.fd, align 8
  %i.fi = load ptr, ptr %i.eb, align 8
  %i.fj = getelementptr i8, ptr %i.fi, i64 1024
  %i.fk = load i64, ptr %i.fj, align 8
  tail call void @fill_page_dma(ptr noundef %i.fh, i64 noundef %i.fk, i32 noundef 512) #6
  tail call void @__set_pd_entry(ptr noundef %.0.i62, i16 noundef zeroext 3, ptr noundef %i.fd, ptr noundef nonnull @gen8_pde_encode) #6
  %i.fl = getelementptr i8, ptr %i.fd, i64 8      ; 2 uses
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock incl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.fl, ptr elementtype(i32) %i.fl) #7, !srcloc !17
  tail call void asm sideeffect "sfence", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !srcloc !26
  br label %bb.ai

gen8_preallocate_top_level_pdp.exit:              ; preds = %bb.aa, %bb.ac, %bb.ae, %bb.ag
  %.lcssa.i = phi ptr [ %i.ec, %bb.aa ], [ %i.el, %bb.ac ], [ %i.eu, %bb.ae ], [ %i.fd, %bb.ag ]
  %i.fm = ptrtoint ptr %.lcssa.i to i64
  %i.fn = trunc i64 %i.fm to i32                  ; 2 uses
  %.not58 = icmp eq i32 %i.fn, 0
  br i1 %.not58, label %bb.ai, label %gen8_init_scratch.exit.thread69

bb.ai:                                            ; preds = %gen8_preallocate_top_level_pdp.exit.thread, %gen8_preallocate_top_level_pdp.exit, %bb.z
  %i.fo = load ptr, ptr %0, align 8
  %i.fp = tail call zeroext i1 @intel_vgpu_active(ptr noundef %i.fo) #6
  br i1 %i.fp, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  tail call fastcc void @gen8_ppgtt_notify_vgt(ptr noundef nonnull %i.b, i1 noundef zeroext true) #8, !srcloc !27
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.fq = getelementptr i8, ptr %i.b, i64 304
  %i.fr = load ptr, ptr %i.fq, align 8            ; 2 uses
  %i.fs = getelementptr i8, ptr %i.b, i64 296
  %i.ft = load ptr, ptr %i.fs, align 8
  %i.fu = tail call zeroext i1 @intel_gt_needs_wa_16018031267(ptr noundef %i.ft) #6
  br i1 %i.fu, label %bb.al, label %gen8_init_rsvd.exit.thread

bb.al:                                            ; preds = %bb.ak
  %i.fv = tail call ptr @i915_gem_object_create_lmem(ptr noundef %i.fr, i64 noundef 4096, i32 noundef 66) #6 ; 2 uses
  %i.fw = icmp ugt ptr %i.fv, inttoptr (i64 -4096 to ptr)
  br i1 %i.fw, label %bb.am, label %bb.an

end_hunk_0
