Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/intel_lrc?download=true
inline.NumInlined: 161
inline.NumDeleted: 87
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@lrc_alloc:bb.a
bb.n:                                             ; preds = %bb.k
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !21
  tail call void @drm_gem_object_free(ptr noundef %.025.i) #13, !callees !22, !inline_history !23
  br label %__lrc_alloc_state.exit

__lrc_alloc_state.exit:                           ; preds = %bb.g, %bb.j, %bb.l, %bb.m, %bb.n
  %.026.i = phi ptr [ %i.al, %bb.j ], [ %i.ac, %bb.g ], [ %i.al, %bb.l ], [ %i.al, %bb.m ], [ %i.al, %bb.n ] ; 4 uses
  %i.aq = icmp ugt ptr %.026.i, inttoptr (i64 -4096 to ptr)
  br i1 %i.aq, label %bb.o, label %bb.p

bb.o:                                             ; preds = %__lrc_alloc_state.exit
  %i.ar = ptrtoint ptr %.026.i to i64
  %i.as = trunc i64 %i.ar to i32
  br label %i915_vma_put.exit

bb.p:                                             ; preds = %__lrc_alloc_state.exit
  %i.at = getelementptr i8, ptr %0, i64 104
  %i.au = load i32, ptr %i.at, align 8
  %i.av = tail call ptr @intel_engine_create_ring(ptr noundef %1, i32 noundef %i.au) #13 ; 7 uses
  %i.aw = icmp ugt ptr %i.av, inttoptr (i64 -4096 to ptr)
  br i1 %i.aw, label %intel_ring_put.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ax = getelementptr i8, ptr %0, i64 120       ; 3 uses
  %i.ay = load ptr, ptr %i.ax, align 8            ; 3 uses
  %.not = icmp ult ptr %i.ay, inttoptr (i64 4096 to ptr)
  br i1 %.not, label %bb.r, label %bb.v

bb.r:                                             ; preds = %bb.q
  %.not33 = icmp eq ptr %i.ay, null
  br i1 %.not33, label %bb.t, label %bb.s, !prof !24

bb.s:                                             ; preds = %bb.r
  store ptr null, ptr %i.ax, align 8
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = trunc i64 %i.az to i32
  %i.bb = and i32 %i.ba, 4095
  %i.bc = tail call ptr @intel_timeline_create_from_engine(ptr noundef %1, i32 noundef %i.bb) #13
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.bd = getelementptr i8, ptr %1, i64 8
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = tail call ptr @__intel_timeline_create(ptr noundef %i.be, ptr noundef null, i32 noundef 0) #13
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.0 = phi ptr [ %i.bc, %bb.s ], [ %i.bf, %bb.t ] ; 5 uses
  %i.bg = icmp ugt ptr %.0, inttoptr (i64 -4096 to ptr)
  br i1 %i.bg, label %bb.w, label %.thread

.thread:                                          ; preds = %bb.u
  store ptr %.0, ptr %i.ax, align 8
  br label %bb.v

bb.v:                                             ; preds = %.thread, %bb.q
  %i.bh = getelementptr i8, ptr %0, i64 112
  store ptr %i.av, ptr %i.bh, align 8
  %i.bi = getelementptr i8, ptr %0, i64 96
  store ptr %.026.i, ptr %i.bi, align 8
  br label %i915_vma_put.exit

bb.w:                                             ; preds = %bb.u
  %i.bj = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.av, i32 -1, ptr elementtype(i32) %i.av) #14, !srcloc !19 ; 2 uses
  %i.bk = icmp eq i32 %i.bj, 1
  br i1 %i.bk, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bl = icmp slt i32 %i.bj, 1
  br i1 %i.bl, label %bb.y, label %intel_ring_put.exit, !prof !20

bb.y:                                             ; preds = %bb.x
  tail call void @refcount_warn_saturate(ptr noundef %i.av, i32 noundef 3) #13
  br label %intel_ring_put.exit

bb.z:                                             ; preds = %bb.w
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !21
  tail call void @intel_ring_free(ptr noundef %i.av) #13, !callees !22, !inline_history !23
  br label %intel_ring_put.exit

intel_ring_put.exit:                              ; preds = %bb.p, %bb.z, %bb.y, %bb.x
  %.1.in.in = phi ptr [ %.0, %bb.z ], [ %.0, %bb.x ], [ %.0, %bb.y ], [ %i.av, %bb.p ]
  %.1.in = ptrtoint ptr %.1.in.in to i64
  %.1 = trunc i64 %.1.in to i32                   ; 3 uses
  %i.bm = getelementptr i8, ptr %.026.i, i64 184
  %.val = load ptr, ptr %i.bm, align 8            ; 4 uses
  %i.bn = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %.val, i32 -1, ptr elementtype(i32) %.val) #14, !srcloc !19 ; 2 uses
  %i.bo = icmp eq i32 %i.bn, 1
  br i1 %i.bo, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %intel_ring_put.exit
  %i.bp = icmp slt i32 %i.bn, 1
  br i1 %i.bp, label %bb.ab, label %i915_vma_put.exit, !prof !20

bb.ab:                                            ; preds = %bb.aa
  tail call void @refcount_warn_saturate(ptr noundef %.val, i32 noundef 3) #13
  br label %i915_vma_put.exit

bb.ac:                                            ; preds = %intel_ring_put.exit
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !21
  tail call void @drm_gem_object_free(ptr noundef %.val) #13, !callees !22, !inline_history !23
  br label %i915_vma_put.exit

i915_vma_put.exit:                                ; preds = %bb.ac, %bb.ab, %bb.aa, %bb.v, %bb.o
  %.030 = phi i32 [ %i.as, %bb.o ], [ 0, %bb.v ], [ %.1, %bb.aa ], [ %.1, %bb.ab ], [ %.1, %bb.ac ]
  ret i32 %.030
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @intel_engine_create_ring(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @lrc_reset(ptr noundef %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 112        ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 36
  %i.d = load i32, ptr %i.c, align 4
  tail call void @intel_ring_reset(ptr noundef %i.b, i32 noundef %i.d) #13
  %i.e = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr i8, ptr %0, i64 152
  %i.h = load ptr, ptr %i.g, align 8
  tail call fastcc void @__lrc_init_regs(ptr noundef %i.h, ptr noundef %0, ptr noundef readonly %i.f, i1 noundef zeroext true) #12, !srcloc !10
  %i.i = load ptr, ptr %i.e, align 8
  %i.j = load ptr, ptr %i.a, align 8
  %i.k = getelementptr i8, ptr %i.j, i64 32
  %i.l = load i32, ptr %i.k, align 8
  %i.m = tail call i32 @lrc_update_regs(ptr noundef %0, ptr noundef %i.i, i32 noundef %i.l) #12
  %i.n = getelementptr i8, ptr %0, i64 160
  store i32 %i.m, ptr %i.n, align 8
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @intel_ring_reset(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 265, 0) i32 @lrc_update_regs(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 112
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr i8, ptr %0, i64 152        ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 5 uses
  %i.e = getelementptr i8, ptr %i.b, i64 8
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr i8, ptr %i.f, i64 8
  %.val = load i64, ptr %i.g, align 8
  %i.h = getelementptr i8, ptr %i.f, i64 248
  %.val23 = load i32, ptr %i.h, align 8
  %i.i = trunc i64 %.val to i32
  %i.j = add i32 %.val23, %i.i
  %i.k = getelementptr i8, ptr %i.d, i64 36
  store i32 %i.j, ptr %i.k, align 4
  %i.l = getelementptr i8, ptr %i.d, i64 20
  store i32 %2, ptr %i.l, align 4
  %i.m = getelementptr i8, ptr %i.b, i64 32
  %i.n = load i32, ptr %i.m, align 8
  %i.o = getelementptr i8, ptr %i.d, i64 28
  store i32 %i.n, ptr %i.o, align 4
  %i.p = getelementptr i8, ptr %i.b, i64 44
  %i.q = load i32, ptr %i.p, align 4
  %i.r = or i32 %i.q, 1
  %i.s = add i32 %i.r, -4096
  %i.t = getelementptr i8, ptr %i.d, i64 44
  store i32 %i.s, ptr %i.t, align 4
  %i.u = getelementptr i8, ptr %1, i64 56         ; 4 uses
  %i.v = load i8, ptr %i.u, align 8
  %i.w = icmp eq i8 %i.v, 0
  br i1 %i.w, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.x = getelementptr i8, ptr %1, i64 8
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = getelementptr i8, ptr %0, i64 400
  %i.aa = tail call i32 @intel_sseu_make_rpcs(ptr noundef %i.y, ptr noundef %i.z) #13
  %i.ab = getelementptr i8, ptr %i.d, i64 268
  store i32 %i.aa, ptr %i.ab, align 4
  tail call void @i915_oa_init_reg_state(ptr noundef %0, ptr noundef %1) #13
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.ac = getelementptr i8, ptr %0, i64 424       ; 6 uses
  %i.ad = load i8, ptr %i.ac, align 8             ; 2 uses
  %.not = icmp eq i8 %i.ad, 0
  br i1 %.not, label %bb.n, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ae = getelementptr i8, ptr %0, i64 16        ; 3 uses
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = getelementptr i8, ptr %i.af, i64 56
  %i.ah = load i8, ptr %i.ag, align 8
  %i.ai = icmp eq i8 %i.ah, 0
  %spec.store.select = select i1 %i.ai, ptr @gen12_emit_indirect_ctx_rcs, ptr @gen12_emit_indirect_ctx_xcs
  %.val.i = load ptr, ptr %i.c, align 8
  %i.aj = getelementptr i8, ptr %.val.i, i64 -4096
  %i.ak = zext i8 %i.ad to i64
  %i.al = shl nuw nsw i64 %i.ak, 12
  %i.am = getelementptr i8, ptr %i.aj, i64 %i.al  ; 13 uses
  %i.an = tail call ptr %spec.store.select(ptr noundef %0, ptr noundef %i.am) #13, !callees !25, !inline_history !26 ; 2 uses
  %i.ao = ptrtoint ptr %i.an to i64               ; 2 uses
  %i.ap = and i64 %i.ao, 63
  %.not15.i = icmp eq i64 %i.ap, 0
  br i1 %.not15.i, label %._crit_edge.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.d, %.lr.ph.preheader.i
  %.016.i = phi ptr [ %3, %.lr.ph.preheader.i ], [ %i.an, %bb.d ] ; 2 uses
  %3 = getelementptr i8, ptr %.016.i, i64 4       ; 2 uses
  store i32 0, ptr %.016.i, align 4
  %4 = ptrtoint ptr %3 to i64                     ; 2 uses
  %5 = and i64 %4, 63
  %.not.i = icmp eq i64 %5, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.preheader.i, !llvm.loop !27

._crit_edge.i:                                    ; preds = %.lr.ph.preheader.i, %bb.d
  %.lcssa.i = phi i64 [ %i.ao, %bb.d ], [ %4, %.lr.ph.preheader.i ]
  %i.aq = getelementptr i8, ptr %i.am, i64 2048
  %i.ar = getelementptr i8, ptr %i.am, i64 2052
  store i32 272629762, ptr %i.aq, align 4
  %i.as = getelementptr i8, ptr %0, i64 96        ; 4 uses
  %i.at = load ptr, ptr %i.as, align 8            ; 2 uses
  %i.au = getelementptr i8, ptr %i.at, i64 8
  %.val.i.i.i = load i64, ptr %i.au, align 8
  %i.av = getelementptr i8, ptr %i.at, i64 248
  %.val2.i.i.i = load i32, ptr %i.av, align 8
  %i.aw = trunc i64 %.val.i.i.i to i32
  %.val3.i.i.i = load i8, ptr %i.ac, align 8
  %i.ax = zext i8 %.val3.i.i.i to i32
  %i.ay = shl nuw nsw i32 %i.ax, 12
  %i.az = add i32 %i.aw, 4088
  %i.ba = add i32 %i.az, %.val2.i.i.i
  %i.bb = add i32 %i.ba, %i.ay
  %i.bc = getelementptr i8, ptr %i.am, i64 2056
  store i32 %i.bb, ptr %i.ar, align 4
  %i.bd = getelementptr i8, ptr %i.am, i64 2060
  store i32 0, ptr %i.bc, align 4
  %i.be = getelementptr i8, ptr %i.am, i64 2064
  store i32 0, ptr %i.bd, align 4
  %i.bf = getelementptr i8, ptr %i.am, i64 2068
  store i32 83918848, ptr %i.be, align 4
  %i.bg = getelementptr i8, ptr %i.am, i64 2072
  store i32 8388608, ptr %i.bf, align 4
  %i.bh = getelementptr i8, ptr %i.am, i64 2076
  store i32 272629762, ptr %i.bg, align 4
  %i.bi = load ptr, ptr %i.as, align 8            ; 2 uses
  %i.bj = getelementptr i8, ptr %i.bi, i64 8
  %.val.i14.i.i = load i64, ptr %i.bj, align 8
  %i.bk = getelementptr i8, ptr %i.bi, i64 248
  %.val2.i15.i.i = load i32, ptr %i.bk, align 8
  %i.bl = trunc i64 %.val.i14.i.i to i32
  %.val3.i16.i.i = load i8, ptr %i.ac, align 8
  %i.bm = zext i8 %.val3.i16.i.i to i32
  %i.bn = shl nuw nsw i32 %i.bm, 12
  %i.bo = add i32 %i.bl, 4088
  %i.bp = add i32 %i.bo, %.val2.i15.i.i
  %i.bq = add i32 %i.bp, %i.bn
  %i.br = getelementptr i8, ptr %i.am, i64 2080
  store i32 %i.bq, ptr %i.bh, align 4
  %i.bs = getelementptr i8, ptr %i.am, i64 2084
  store i32 0, ptr %i.br, align 4
  %i.bt = getelementptr i8, ptr %i.am, i64 2088
  store i32 1, ptr %i.bs, align 4
  store i32 83886080, ptr %i.bt, align 4
  %i.bu = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.bv = load ptr, ptr %i.as, align 8            ; 2 uses
  %i.bw = getelementptr i8, ptr %i.bv, i64 8
  %.val.i.i = load i64, ptr %i.bw, align 8
  %i.bx = getelementptr i8, ptr %i.bv, i64 248
  %.val2.i.i = load i32, ptr %i.bx, align 8
  %i.by = trunc i64 %.val.i.i to i32
  %i.bz = add i32 %.val2.i.i, %i.by
  %.val3.i.i = load i8, ptr %i.ac, align 8
  %i.ca = zext i8 %.val3.i.i to i32
  %i.cb = shl nuw nsw i32 %i.ca, 12
  %i.cc = add i32 %i.bz, %i.cb
  %i.cd = ptrtoint ptr %i.am to i64
  %i.ce = sub i64 %.lcssa.i, %i.cd
  %i.cf = trunc i64 %i.ce to i32
  %i.cg = lshr i32 %i.cf, 6
  %i.ch = or i32 %i.cc, %i.cg
  %i.ci = load ptr, ptr %1, align 8
  %i.cj = getelementptr i8, ptr %i.ci, i64 1656
  %i.ck = load i8, ptr %i.cj, align 8             ; 2 uses
  %i.cl = icmp ugt i8 %i.ck, 11
  br i1 %i.cl, label %lrc_ring_indirect_ptr.exit.i.i, label %bb.e

bb.e:                                             ; preds = %._crit_edge.i
  %i.cm = icmp samesign ugt i8 %i.ck, 8
  br i1 %i.cm, label %lrc_ring_indirect_ptr.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cn = load i8, ptr %i.u, align 8
  %i.co = icmp eq i8 %i.cn, 0
  %i.cp = select i1 %i.co, i64 26, i64 -1
  br label %lrc_ring_indirect_ptr.exit.i.i

lrc_ring_indirect_ptr.exit.i.i:                   ; preds = %bb.f, %bb.e, %._crit_edge.i
  %i.cq = phi i64 [ %i.cp, %bb.f ], [ 26, %bb.e ], [ 20, %._crit_edge.i ]
  %i.cr = getelementptr [4 x i8], ptr %i.bu, i64 %i.cq
  %i.cs = getelementptr i8, ptr %i.cr, i64 4
  store i32 %i.ch, ptr %i.cs, align 4
  %.val.i14.i = load ptr, ptr %1, align 8
  %i.ct = getelementptr i8, ptr %.val.i14.i, i64 1656
  %.val.val.i.i = load i8, ptr %i.ct, align 8     ; 4 uses
  %i.cu = icmp ugt i8 %.val.val.i.i, 11
  br i1 %i.cu, label %setup_indirect_ctx_bb.exit, label %bb.g

bb.g:                                             ; preds = %lrc_ring_indirect_ptr.exit.i.i
  %i.cv = icmp eq i8 %.val.val.i.i, 11
  br i1 %i.cv, label %setup_indirect_ctx_bb.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cw = icmp samesign ugt i8 %.val.val.i.i, 8
  br i1 %i.cw, label %setup_indirect_ctx_bb.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cx = icmp eq i8 %.val.val.i.i, 8
  %..i.i.i = select i1 %i.cx, i32 1472, i32 0
  %i.cy = load i8, ptr %i.u, align 8
  %i.cz = icmp eq i8 %i.cy, 0
  %i.da = select i1 %i.cz, i64 29, i64 0
  br label %setup_indirect_ctx_bb.exit

setup_indirect_ctx_bb.exit:                       ; preds = %lrc_ring_indirect_ptr.exit.i.i, %bb.g, %bb.h, %bb.i
  %i.db = phi i32 [ %..i.i.i, %bb.i ], [ 832, %lrc_ring_indirect_ptr.exit.i.i ], [ 2432, %bb.h ], [ 1664, %bb.g ]
  %i.dc = phi i64 [ %i.da, %bb.i ], [ 23, %lrc_ring_indirect_ptr.exit.i.i ], [ 29, %bb.h ], [ 29, %bb.g ]
  %i.dd = getelementptr [4 x i8], ptr %i.bu, i64 %i.dc
  store i32 %i.db, ptr %i.dd, align 4
  %.val.i28 = load ptr, ptr %i.c, align 8
  %.val8.i = load i8, ptr %i.ac, align 8
  %i.de = zext i8 %.val8.i to i64
  %i.df = shl nuw nsw i64 %i.de, 12
  %i.dg = getelementptr i8, ptr %.val.i28, i64 %i.df ; 14 uses
  %i.dh = load ptr, ptr %i.ae, align 8
  %i.di = getelementptr i8, ptr %i.dh, i64 8
  %i.dj = load ptr, ptr %i.di, align 8
  %i.dk = tail call zeroext i1 @intel_gt_needs_wa_16018031267(ptr noundef %i.dj) #13
  br i1 %i.dk, label %bb.j, label %xehp_emit_per_ctx_bb.exit.i

bb.j:                                             ; preds = %setup_indirect_ctx_bb.exit
  %i.dl = load ptr, ptr %i.ae, align 8            ; 3 uses
  %i.dm = getelementptr i8, ptr %i.dl, i64 56
  %i.dn = load i8, ptr %i.dm, align 8
  %i.do = icmp eq i8 %i.dn, 3
  br i1 %i.do, label %bb.k, label %xehp_emit_per_ctx_bb.exit.i

bb.k:                                             ; preds = %bb.j
  %i.dp = getelementptr i8, ptr %i.dl, i64 57
  %i.dq = load i8, ptr %i.dp, align 1
  %i.dr = icmp eq i8 %i.dq, 0
  br i1 %i.dr, label %xehp_emit_fastcolor_blt_wabb.exit.i.i, label %xehp_emit_per_ctx_bb.exit.i

xehp_emit_fastcolor_blt_wabb.exit.i.i:            ; preds = %bb.k
  %i.ds = getelementptr i8, ptr %i.dl, i64 8
  %i.dt = load ptr, ptr %i.ds, align 8
  %i.du = getelementptr i8, ptr %i.dt, i64 5152
  %i.dv = load i8, ptr %i.du, align 8
  store i32 1358954510, ptr %i.dg, align 4
  %i.dw = zext i8 %i.dv to i32
  %i.dx = getelementptr i8, ptr %i.dg, i64 4
  %i.dy = shl nuw nsw i32 %i.dw, 22
  %i.dz = and i32 %i.dy, 264241152
  %i.ea = or disjoint i32 %i.dz, 63
  %i.eb = getelementptr i8, ptr %i.dg, i64 8
  store i32 %i.ea, ptr %i.dx, align 4
  %i.ec = getelementptr i8, ptr %i.dg, i64 12
  store i32 0, ptr %i.eb, align 4
  %i.ed = getelementptr i8, ptr %i.dg, i64 16
  store i32 262145, ptr %i.ec, align 4
  %i.ee = getelementptr i8, ptr %0, i64 32        ; 2 uses
  %i.ef = load ptr, ptr %i.ee, align 8
  %i.eg = getelementptr i8, ptr %i.ef, i64 288
  %i.eh = load ptr, ptr %i.eg, align 8            ; 2 uses
  %i.ei = getelementptr i8, ptr %i.eh, i64 8
  %.val27.i.i.i = load i64, ptr %i.ei, align 8
  %i.ej = getelementptr i8, ptr %i.eh, i64 248
  %.val28.i.i.i = load i32, ptr %i.ej, align 8
  %i.ek = trunc i64 %.val27.i.i.i to i32
  %i.el = add i32 %.val28.i.i.i, %i.ek
  %i.em = getelementptr i8, ptr %i.dg, i64 20
  store i32 %i.el, ptr %i.ed, align 4
  %i.en = load ptr, ptr %i.ee, align 8
  %i.eo = getelementptr i8, ptr %i.en, i64 288
  %i.ep = load ptr, ptr %i.eo, align 8            ; 2 uses
  %i.eq = getelementptr i8, ptr %i.ep, i64 8
  %.val.i.i.i32 = load i64, ptr %i.eq, align 8
  %i.er = getelementptr i8, ptr %i.ep, i64 248
  %.val26.i.i.i = load i32, ptr %i.er, align 8
  %i.es = zext i32 %.val26.i.i.i to i64
  %i.et = add i64 %.val.i.i.i32, %i.es
  %i.eu = lshr i64 %i.et, 32
  %i.ev = trunc nuw i64 %i.eu to i32
  %i.ew = getelementptr i8, ptr %i.dg, i64 24
  store i32 %i.ev, ptr %i.em, align 4
  %i.ex = getelementptr i8, ptr %i.dg, i64 52
  %i.ey = getelementptr i8, ptr %i.dg, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(28) %i.ew, i8 0, i64 28, i1 false)
  store i32 536887300, ptr %i.ex, align 4
  %i.ez = getelementptr i8, ptr %i.dg, i64 60
  store i32 16, ptr %i.ey, align 4
  %i.fa = getelementptr i8, ptr %i.dg, i64 64
  store i32 0, ptr %i.ez, align 4
  br label %xehp_emit_per_ctx_bb.exit.i

xehp_emit_per_ctx_bb.exit.i:                      ; preds = %xehp_emit_fastcolor_blt_wabb.exit.i.i, %bb.k, %bb.j, %setup_indirect_ctx_bb.exit
  %.0.i.i = phi ptr [ %i.fa, %xehp_emit_fastcolor_blt_wabb.exit.i.i ], [ %i.dg, %bb.k ], [ %i.dg, %bb.j ], [ %i.dg, %setup_indirect_ctx_bb.exit ]
  store i32 83886080, ptr %.0.i.i, align 4
  %i.fb = load ptr, ptr %i.c, align 8
  %i.fc = load ptr, ptr %i.as, align 8            ; 2 uses
  %i.fd = getelementptr i8, ptr %i.fc, i64 8
  %.val.i.i29 = load i64, ptr %i.fd, align 8
  %i.fe = getelementptr i8, ptr %i.fc, i64 248
  %.val2.i.i30 = load i32, ptr %i.fe, align 8
  %.val3.i.i31 = load i8, ptr %i.ac, align 8
  %i.ff = load ptr, ptr %1, align 8
  %i.fg = getelementptr i8, ptr %i.ff, i64 1656
  %i.fh = load i8, ptr %i.fg, align 8             ; 2 uses
  %i.fi = icmp ugt i8 %i.fh, 11
  br i1 %i.fi, label %setup_per_ctx_bb.exit, label %bb.l

bb.l:                                             ; preds = %xehp_emit_per_ctx_bb.exit.i
  %i.fj = icmp samesign ugt i8 %i.fh, 8
  br i1 %i.fj, label %setup_per_ctx_bb.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.fk = load i8, ptr %i.u, align 8
  %i.fl = icmp eq i8 %i.fk, 0
  %i.fm = select i1 %i.fl, i64 24, i64 -1
  br label %setup_per_ctx_bb.exit

setup_per_ctx_bb.exit:                            ; preds = %xehp_emit_per_ctx_bb.exit.i, %bb.l, %bb.m
  %.0.i.i.i = phi i64 [ 24, %bb.l ], [ 18, %xehp_emit_per_ctx_bb.exit.i ], [ %i.fm, %bb.m ]
  %i.fn = trunc i64 %.val.i.i29 to i32
  %i.fo = add i32 %.val2.i.i30, %i.fn
  %i.fp = zext i8 %.val3.i.i31 to i32
  %i.fq = shl nuw nsw i32 %i.fp, 12
  %i.fr = add i32 %i.fo, %i.fq
  %i.fs = or i32 %i.fr, 5
  %i.ft = add i32 %i.fs, 4096
  %i.fu = getelementptr [4 x i8], ptr %i.fb, i64 %.0.i.i.i
  %i.fv = getelementptr i8, ptr %i.fu, i64 4
  store i32 %i.ft, ptr %i.fv, align 4
  br label %bb.n

bb.n:                                             ; preds = %setup_per_ctx_bb.exit, %bb.c
  %i.fw = getelementptr i8, ptr %0, i64 32
  %.val24 = load ptr, ptr %i.fw, align 8          ; 2 uses
  %i.fx = getelementptr i8, ptr %0, i64 96
  %.val25 = load ptr, ptr %i.fx, align 8          ; 2 uses
  %i.fy = getelementptr i8, ptr %.val24, i64 304
  %.val24.val = load ptr, ptr %i.fy, align 8
  %i.fz = getelementptr i8, ptr %.val24, i64 328
  %.val24.val26 = load i64, ptr %i.fz, align 8
  %i.ga = getelementptr i8, ptr %.val25, i64 8
  %.val25.val = load i64, ptr %i.ga, align 8
  %i.gb = getelementptr i8, ptr %.val25, i64 248
  %.val25.val27 = load i32, ptr %i.gb, align 8
  %i.gc = getelementptr i8, ptr %.val24.val, i64 1656
  %.val24.val.val = load i8, ptr %i.gc, align 8
  %i.gd = add i64 %.val24.val26, -4294967297
  %i.ge = icmp ult i64 %i.gd, -4294967296
  %spec.select.i = select i1 %i.ge, i32 281, i32 265 ; 2 uses
  %i.gf = icmp eq i8 %.val24.val.val, 8
  %i.gg = or disjoint i32 %spec.select.i, 32
  %.1.i = select i1 %i.gf, i32 %i.gg, i32 %spec.select.i
  %i.gh = trunc i64 %.val25.val to i32
  %i.gi = add i32 %.val25.val27, %i.gh
  %i.gj = or i32 %i.gi, %.1.i
  %i.gk = or i32 %i.gj, 4
  ret i32 %i.gk
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @lrc_pre_pin(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readnone captures(none) %2, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %3) local_unnamed_addr #0 align 16 prefalign(16) {
PTR_ERR_OR_ZERO.exit:
  %i.a = getelementptr i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 184
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call i32 @intel_gt_coherent_map_type(ptr noundef %i.h, ptr noundef %i.d, i1 noundef zeroext false) #13
  %i.j = or i32 %i.i, -2147483648
  %i.k = tail call ptr @i915_gem_object_pin_map(ptr noundef %i.d, i32 noundef %i.j) #13 ; 3 uses
  store ptr %i.k, ptr %3, align 8
  %i.l = icmp ugt ptr %i.k, inttoptr (i64 -4096 to ptr)
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = trunc i64 %i.m to i32
  %.0.i = select i1 %i.l, i32 %i.n, i32 0
  ret i32 %.0.i
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @i915_gem_object_pin_map(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @intel_gt_coherent_map_type(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local noundef i32 @lrc_pin(ptr noundef initializes((152, 160)) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %2, i64 4096       ; 2 uses
  %i.b = getelementptr i8, ptr %0, i64 152
  store ptr %i.a, ptr %i.b, align 8
  %i.c = getelementptr i8, ptr %0, i64 136        ; 2 uses
  %i.d = tail call i8 asm " btsq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.c, i64 2) #14, !srcloc !28 ; 2 uses
  %i.e = icmp ult i8 %i.d, 2
  tail call void @llvm.assume(i1 %i.e)
  %i.f = trunc nuw i8 %i.d to i1
  br i1 %i.f, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %0, i64 48
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.h, null                ; 2 uses
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr i8, ptr %1, i64 68
  %i.j = load i32, ptr %i.i, align 4
  %i.k = zext i32 %i.j to i64
  %i.l = tail call i32 @shmem_read(ptr noundef nonnull %i.h, i64 noundef 0, ptr noundef %2, i64 noundef %i.k) #13 ; 0 uses
  tail call void asm sideeffect " btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.c, i64 3) #14, !srcloc !17
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef align 1 dereferenceable(4096) %2, i8 0, i64 4096, i1 false)
  %i.m = getelementptr i8, ptr %0, i64 424
  %i.n = load i8, ptr %i.m, align 8               ; 2 uses
  %.not22.i = icmp eq i8 %i.n, 0
  br i1 %.not22.i, label %lrc_init_state.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = zext i8 %i.n to i64
  %i.p = shl nuw nsw i64 %i.o, 12
  %i.q = getelementptr i8, ptr %2, i64 %i.p
  tail call void @llvm.memset.p0.i64(ptr noundef align 1 dereferenceable(4096) %i.q, i8 0, i64 4096, i1 false)
  br label %lrc_init_state.exit

lrc_init_state.exit:                              ; preds = %bb.d, %bb.e
  tail call fastcc void @__lrc_init_regs(ptr noundef %i.a, ptr noundef %0, ptr noundef readonly %1, i1 noundef zeroext %.not.i) #12, !srcloc !18
  br label %bb.f

bb.f:                                             ; preds = %lrc_init_state.exit, %bb.a
  %i.r = getelementptr i8, ptr %0, i64 112
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = getelementptr i8, ptr %i.s, i64 32
  %i.u = load i32, ptr %i.t, align 8
  %i.v = tail call i32 @lrc_update_regs(ptr noundef %0, ptr noundef %1, i32 noundef %i.u) #12
  %i.w = getelementptr i8, ptr %0, i64 160
  store i32 %i.v, ptr %i.w, align 8
  ret i32 0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @lrc_unpin(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 688        ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b, !prof !24

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @i915_request_put(ptr noundef %i.b) #12, !srcloc !29
  store ptr null, ptr %i.a, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @i915_request_put(ptr noundef nonnull %0) unnamed_addr #6 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 56         ; 4 uses
  %i.b = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.a, i32 -1, ptr elementtype(i32) %i.a) #14, !srcloc !19 ; 2 uses
  %i.c = icmp eq i32 %i.b, 1
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp slt i32 %i.b, 1
  br i1 %i.d, label %bb.c, label %dma_fence_put.exit, !prof !20

bb.c:                                             ; preds = %bb.b
  tail call void @refcount_warn_saturate(ptr noundef %i.a, i32 noundef 3) #13
  br label %dma_fence_put.exit

bb.d:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !21
  tail call void @dma_fence_release(ptr noundef %i.a) #13, !callees !22, !inline_history !23
  br label %dma_fence_put.exit

dma_fence_put.exit:                               ; preds = %bb.b, %bb.c, %bb.d
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @lrc_post_unpin(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 184
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr i8, ptr %i.d, i64 688      ; 2 uses
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock decl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.e, ptr elementtype(i32) %i.e) #14, !srcloc !30
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @lrc_fini(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 96         ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %i915_vma_put.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 112        ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 4 uses
  store ptr null, ptr %i.c, align 8
  %i.e = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.d, i32 -1, ptr elementtype(i32) %i.d) #14, !srcloc !19 ; 2 uses
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = icmp slt i32 %i.e, 1
  br i1 %i.g, label %bb.d, label %intel_ring_put.exit, !prof !20

bb.d:                                             ; preds = %bb.c
  tail call void @refcount_warn_saturate(ptr noundef %i.d, i32 noundef 3) #13
  br label %intel_ring_put.exit

bb.e:                                             ; preds = %bb.b
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !21
  tail call void @intel_ring_free(ptr noundef %i.d) #13, !callees !22, !inline_history !23
  br label %intel_ring_put.exit

intel_ring_put.exit:                              ; preds = %bb.c, %bb.d, %bb.e
  %i.h = load ptr, ptr %i.a, align 8
  store ptr null, ptr %i.a, align 8
  %i.i = getelementptr i8, ptr %i.h, i64 184
  %.val = load ptr, ptr %i.i, align 8             ; 4 uses
  %i.j = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %.val, i32 -1, ptr elementtype(i32) %.val) #14, !srcloc !19 ; 2 uses
  %i.k = icmp eq i32 %i.j, 1
  br i1 %i.k, label %bb.h, label %bb.f

bb.f:                                             ; preds = %intel_ring_put.exit
  %i.l = icmp slt i32 %i.j, 1
  br i1 %i.l, label %bb.g, label %i915_vma_put.exit, !prof !20

bb.g:                                             ; preds = %bb.f
  tail call void @refcount_warn_saturate(ptr noundef %.val, i32 noundef 3) #13
  br label %i915_vma_put.exit

bb.h:                                             ; preds = %intel_ring_put.exit
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !21
  tail call void @drm_gem_object_free(ptr noundef %.val) #13, !callees !22, !inline_history !23
  br label %i915_vma_put.exit

i915_vma_put.exit:                                ; preds = %bb.h, %bb.g, %bb.f, %bb.a
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @lrc_destroy(ptr noundef %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 96         ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %lrc_fini.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 112        ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 4 uses
  store ptr null, ptr %i.c, align 8
  %i.e = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.d, i32 -1, ptr elementtype(i32) %i.d) #14, !srcloc !19 ; 2 uses
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = icmp slt i32 %i.e, 1
  br i1 %i.g, label %bb.d, label %intel_ring_put.exit.i, !prof !20

bb.d:                                             ; preds = %bb.c
  tail call void @refcount_warn_saturate(ptr noundef %i.d, i32 noundef 3) #13
  br label %intel_ring_put.exit.i

bb.e:                                             ; preds = %bb.b
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !21
  tail call void @intel_ring_free(ptr noundef %i.d) #13, !callees !22, !inline_history !23
  br label %intel_ring_put.exit.i

intel_ring_put.exit.i:                            ; preds = %bb.e, %bb.d, %bb.c
  %i.h = load ptr, ptr %i.a, align 8
  store ptr null, ptr %i.a, align 8
  %i.i = getelementptr i8, ptr %i.h, i64 184
  %.val.i = load ptr, ptr %i.i, align 8           ; 4 uses
  %i.j = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %.val.i, i32 -1, ptr elementtype(i32) %.val.i) #14, !srcloc !19 ; 2 uses
  %i.k = icmp eq i32 %i.j, 1
  br i1 %i.k, label %bb.h, label %bb.f

bb.f:                                             ; preds = %intel_ring_put.exit.i
  %i.l = icmp slt i32 %i.j, 1
  br i1 %i.l, label %bb.g, label %lrc_fini.exit, !prof !20

bb.g:                                             ; preds = %bb.f
  tail call void @refcount_warn_saturate(ptr noundef %.val.i, i32 noundef 3) #13
  br label %lrc_fini.exit

bb.h:                                             ; preds = %intel_ring_put.exit.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !21
  tail call void @drm_gem_object_free(ptr noundef %.val.i) #13, !callees !22, !inline_history !23
  br label %lrc_fini.exit

lrc_fini.exit:                                    ; preds = %bb.a, %bb.f, %bb.g, %bb.h
  tail call void @intel_context_fini(ptr noundef %0) #13
  tail call void @intel_context_free(ptr noundef %0) #13
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @intel_context_fini(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @intel_context_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @intel_sseu_make_rpcs(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @i915_oa_init_reg_state(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @gen12_emit_indirect_ctx_xcs(ptr nofree noundef readonly captures(none) %0, ptr noundef initializes((0, 56)) %1) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 4
  store i32 348651522, ptr %1, align 4
  %i.b = getelementptr i8, ptr %1, i64 8
  store i32 1536, ptr %i.a, align 4
  %i.c = getelementptr i8, ptr %0, i64 96         ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr i8, ptr %i.d, i64 8
  %.val.i = load i64, ptr %i.e, align 8
  %i.f = getelementptr i8, ptr %i.d, i64 248
  %.val16.i = load i32, ptr %i.f, align 8
  %i.g = trunc i64 %.val.i to i32
  %i.h = add i32 %i.g, 4236
  %i.i = add i32 %i.h, %.val16.i
  %i.j = getelementptr i8, ptr %1, i64 12
  store i32 %i.i, ptr %i.b, align 4
  %i.k = getelementptr i8, ptr %1, i64 16
  store i32 0, ptr %i.j, align 4
  %i.l = getelementptr i8, ptr %1, i64 20
  store i32 353107969, ptr %i.k, align 4
  %i.m = getelementptr i8, ptr %1, i64 24
  store i32 1536, ptr %i.l, align 4
  %i.n = getelementptr i8, ptr %1, i64 28
  store i32 936, ptr %i.m, align 4
  %i.o = getelementptr i8, ptr %1, i64 32
  store i32 353107969, ptr %i.n, align 4
  %i.p = getelementptr i8, ptr %1, i64 36
  store i32 1536, ptr %i.o, align 4
  %i.q = getelementptr i8, ptr %1, i64 40
  store i32 936, ptr %i.p, align 4
  %i.r = getelementptr i8, ptr %1, i64 44
  store i32 348651522, ptr %i.q, align 4
  store i32 1536, ptr %i.r, align 4
  %i.s = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.t = getelementptr i8, ptr %i.s, i64 8
  %.val.i9 = load i64, ptr %i.t, align 8
  %i.u = getelementptr i8, ptr %i.s, i64 248
  %.val7.i = load i32, ptr %i.u, align 8
  %i.v = getelementptr i8, ptr %0, i64 16         ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8              ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8              ; 2 uses
  %i.y = getelementptr i8, ptr %i.x, i64 1656
  %i.z = load i8, ptr %i.y, align 8               ; 3 uses
  %i.aa = zext i8 %i.z to i32
  %i.ab = shl nuw nsw i32 %i.aa, 8
  %i.ac = getelementptr i8, ptr %i.x, i64 1657
  %i.ad = load i8, ptr %i.ac, align 1
  %i.ae = zext i8 %i.ad to i32
  %i.af = or disjoint i32 %i.ab, %i.ae
  %i.ag = icmp samesign ugt i32 %i.af, 3126
  br i1 %i.ag, label %gen12_emit_restore_scratch.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ah = icmp ugt i8 %i.z, 11
  br i1 %i.ah, label %gen12_emit_restore_scratch.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ai = icmp samesign ugt i8 %i.z, 8
  br i1 %i.ai, label %gen12_emit_restore_scratch.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aj = getelementptr i8, ptr %i.w, i64 56
  %i.ak = load i8, ptr %i.aj, align 8
  %i.al = icmp eq i8 %i.ak, 0
  %..i.i = select i1 %i.al, i32 864, i32 -4
  br label %gen12_emit_restore_scratch.exit

gen12_emit_restore_scratch.exit:                  ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %.0.i.i = phi i32 [ 416, %bb.c ], [ 528, %bb.a ], [ 464, %bb.b ], [ %..i.i, %bb.d ]
  %i.am = trunc i64 %.val.i9 to i32
  %i.an = getelementptr i8, ptr %1, i64 48
end_hunk_0
begin_hunk_1_@gen12_emit_indirect_ctx_rcs:bb.a
  %i.v = getelementptr i8, ptr %0, i64 16         ; 12 uses
  %i.w = load ptr, ptr %i.v, align 8              ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8              ; 2 uses
  %i.y = getelementptr i8, ptr %i.x, i64 1656
  %i.z = load i8, ptr %i.y, align 8               ; 3 uses
  %i.aa = zext i8 %i.z to i32
  %i.ab = shl nuw nsw i32 %i.aa, 8
  %i.ac = getelementptr i8, ptr %i.x, i64 1657
  %i.ad = load i8, ptr %i.ac, align 1
  %i.ae = zext i8 %i.ad to i32
  %i.af = or disjoint i32 %i.ab, %i.ae
  %i.ag = icmp samesign ugt i32 %i.af, 3126
  br i1 %i.ag, label %gen12_emit_cmd_buf_wa.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ah = getelementptr i8, ptr %i.w, i64 56
  %i.ai = load i8, ptr %i.ah, align 8
  %.not.i.i = icmp eq i8 %i.ai, 0
  br i1 %.not.i.i, label %bb.c, label %gen12_emit_cmd_buf_wa.exit

bb.c:                                             ; preds = %bb.b
  %i.aj = icmp ugt i8 %i.z, 11
  br i1 %i.aj, label %gen12_emit_cmd_buf_wa.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ak = icmp eq i8 %i.z, 11
  %..i.i = select i1 %i.ak, i32 680, i32 -4
  br label %gen12_emit_cmd_buf_wa.exit

gen12_emit_cmd_buf_wa.exit:                       ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %.0.i.i = phi i32 [ 728, %bb.c ], [ 792, %bb.a ], [ -4, %bb.b ], [ %..i.i, %bb.d ]
  %i.al = trunc i64 %.val.i72 to i32
  %i.am = getelementptr i8, ptr %1, i64 48
  %i.an = add i32 %i.al, 4100
  %i.ao = add i32 %i.an, %.val12.i
  %i.ap = add i32 %i.ao, %.0.i.i
  %i.aq = getelementptr i8, ptr %1, i64 52
  store i32 %i.ap, ptr %i.am, align 4
  %i.ar = getelementptr i8, ptr %1, i64 56
  store i32 0, ptr %i.aq, align 4
  %i.as = getelementptr i8, ptr %1, i64 60
  store i32 353107969, ptr %i.ar, align 4
  %i.at = getelementptr i8, ptr %1, i64 64
  store i32 1536, ptr %i.as, align 4
  %i.au = getelementptr i8, ptr %1, i64 68
  store i32 132, ptr %i.at, align 4
  %i.av = getelementptr i8, ptr %1, i64 72
  store i32 348651522, ptr %i.au, align 4
  store i32 1536, ptr %i.av, align 4
  %i.aw = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.ax = getelementptr i8, ptr %i.aw, i64 8
  %.val.i73 = load i64, ptr %i.ax, align 8
  %i.ay = getelementptr i8, ptr %i.aw, i64 248
  %.val7.i = load i32, ptr %i.ay, align 8
  %i.az = load ptr, ptr %i.v, align 8             ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8            ; 2 uses
  %i.bb = getelementptr i8, ptr %i.ba, i64 1656
  %i.bc = load i8, ptr %i.bb, align 8             ; 3 uses
  %i.bd = zext i8 %i.bc to i32
  %i.be = shl nuw nsw i32 %i.bd, 8
  %i.bf = getelementptr i8, ptr %i.ba, i64 1657
  %i.bg = load i8, ptr %i.bf, align 1
  %i.bh = zext i8 %i.bg to i32
  %i.bi = or disjoint i32 %i.be, %i.bh
  %i.bj = icmp samesign ugt i32 %i.bi, 3126
  br i1 %i.bj, label %gen12_emit_restore_scratch.exit, label %bb.e

bb.e:                                             ; preds = %gen12_emit_cmd_buf_wa.exit
  %i.bk = icmp ugt i8 %i.bc, 11
  br i1 %i.bk, label %gen12_emit_restore_scratch.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bl = icmp samesign ugt i8 %i.bc, 8
  br i1 %i.bl, label %gen12_emit_restore_scratch.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bm = getelementptr i8, ptr %i.az, i64 56
  %i.bn = load i8, ptr %i.bm, align 8
  %i.bo = icmp eq i8 %i.bn, 0
  %..i.i74 = select i1 %i.bo, i32 864, i32 -4
  br label %gen12_emit_restore_scratch.exit

gen12_emit_restore_scratch.exit:                  ; preds = %gen12_emit_cmd_buf_wa.exit, %bb.e, %bb.f, %bb.g
  %.0.i.i75 = phi i32 [ 416, %bb.f ], [ 528, %gen12_emit_cmd_buf_wa.exit ], [ 464, %bb.e ], [ %..i.i74, %bb.g ]
  %i.bp = trunc i64 %.val.i73 to i32
  %i.bq = getelementptr i8, ptr %1, i64 76
  %i.br = add i32 %i.bp, 4100
  %i.bs = add i32 %i.br, %.val7.i
  %i.bt = add i32 %i.bs, %.0.i.i75
  %i.bu = getelementptr i8, ptr %1, i64 80
  store i32 %i.bt, ptr %i.bq, align 4
  %i.bv = getelementptr i8, ptr %1, i64 84        ; 2 uses
  store i32 0, ptr %i.bu, align 4
  %i.bw = load ptr, ptr %i.v, align 8             ; 2 uses
  %i.bx = load ptr, ptr %i.bw, align 8
  %i.by = getelementptr i8, ptr %i.bx, i64 1668
  %i.bz = load i32, ptr %i.by, align 4            ; 2 uses
  %i.ca = shl i32 %i.bz, 19
  %i.cb = shl i32 %i.bz, 30
  %i.cc = and i32 %i.ca, %i.cb
  %i.cd = icmp slt i32 %i.cc, 0
  br i1 %i.cd, label %bb.h, label %bb.i

bb.h:                                             ; preds = %gen12_emit_restore_scratch.exit
  %i.ce = getelementptr i8, ptr %1, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ce, i8 0, i64 12, i1 false)
  store i32 2046820356, ptr %i.bv, align 4
  %i.cf = getelementptr i8, ptr %1, i64 88
  store i32 2048, ptr %i.cf, align 4
  %i.cg = getelementptr i8, ptr %1, i64 92
  store i32 0, ptr %i.cg, align 4
  %i.ch = getelementptr i8, ptr %1, i64 108
  %.pre = load ptr, ptr %i.v, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %gen12_emit_restore_scratch.exit
  %i.ci = phi ptr [ %.pre, %bb.h ], [ %i.bw, %gen12_emit_restore_scratch.exit ]
  %.0 = phi ptr [ %i.ch, %bb.h ], [ %i.bv, %gen12_emit_restore_scratch.exit ]
  %i.cj = tail call ptr @gen12_emit_aux_table_inv(ptr noundef %i.ci, ptr noundef %.0) #13 ; 7 uses
  %i.ck = load ptr, ptr %i.v, align 8             ; 4 uses
  %i.cl = getelementptr i8, ptr %i.ck, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8            ; 4 uses
  %i.cn = getelementptr i8, ptr %i.cm, i64 16
  %i.co = load i32, ptr %i.cn, align 8
  %.not = icmp eq i32 %i.co, 2
  br i1 %.not, label %.critedge71, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cp = load ptr, ptr %i.cm, align 8            ; 3 uses
  %i.cq = getelementptr i8, ptr %i.cp, i64 1656
  %i.cr = load i8, ptr %i.cq, align 8             ; 2 uses
  %i.cs = icmp ugt i8 %i.cr, 11
  br i1 %i.cs, label %bb.k, label %.critedge.thread

bb.k:                                             ; preds = %bb.j
  %i.ct = zext i8 %i.cr to i32
  %i.cu = shl nuw nsw i32 %i.ct, 8
  %i.cv = getelementptr i8, ptr %i.cp, i64 1657
  %i.cw = load i8, ptr %i.cv, align 1
  %i.cx = zext i8 %i.cw to i32
  %i.cy = or disjoint i32 %i.cu, %i.cx
  %i.cz = icmp samesign ult i32 %i.cy, 3083
  br i1 %i.cz, label %.critedge, label %.critedge.threadthread-pre-split

.critedge:                                        ; preds = %bb.k
  %i.da = getelementptr i8, ptr %i.cj, i64 4
  store i32 285212673, ptr %i.cj, align 4
  %i.db = getelementptr i8, ptr %i.cj, i64 8
  store i32 8408, ptr %i.da, align 4
  %i.dc = getelementptr i8, ptr %i.cj, i64 12     ; 2 uses
  store i32 4194368, ptr %i.db, align 4
  %.pre105 = load ptr, ptr %i.v, align 8          ; 3 uses
  %.phi.trans.insert = getelementptr i8, ptr %.pre105, i64 8
  %.pre106 = load ptr, ptr %.phi.trans.insert, align 8 ; 2 uses
  %.phi.trans.insert107 = getelementptr i8, ptr %.pre106, i64 16
  %.pre108 = load i32, ptr %.phi.trans.insert107, align 8
  %i.dd = icmp eq i32 %.pre108, 2
  br i1 %i.dd, label %.critedge71, label %.critedge.threadthread-pre-split

.critedge.threadthread-pre-split:                 ; preds = %.critedge, %bb.k
  %.1140.ph = phi ptr [ %i.cj, %bb.k ], [ %i.dc, %.critedge ]
  %.ph = phi ptr [ %i.ck, %bb.k ], [ %.pre105, %.critedge ]
  %.ph154 = phi ptr [ %i.cm, %bb.k ], [ %.pre106, %.critedge ] ; 2 uses
  %.pr = load ptr, ptr %.ph154, align 8
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %.critedge.threadthread-pre-split, %bb.j
  %i.de = phi ptr [ %.pr, %.critedge.threadthread-pre-split ], [ %i.cp, %bb.j ] ; 5 uses
  %.1140 = phi ptr [ %.1140.ph, %.critedge.threadthread-pre-split ], [ %i.cj, %bb.j ] ; 5 uses
  %i.df = phi ptr [ %.ph, %.critedge.threadthread-pre-split ], [ %i.ck, %bb.j ] ; 2 uses
  %i.dg = phi ptr [ %.ph154, %.critedge.threadthread-pre-split ], [ %i.cm, %bb.j ] ; 2 uses
  %i.dh = getelementptr i8, ptr %i.de, i64 1656
  %i.di = load i8, ptr %i.dh, align 8
  %i.dj = zext i8 %i.di to i32
  %i.dk = shl nuw nsw i32 %i.dj, 8
  %i.dl = getelementptr i8, ptr %i.de, i64 1657
  %i.dm = load i8, ptr %i.dl, align 1
  %i.dn = zext i8 %i.dm to i32
  %i.do = or disjoint i32 %i.dk, %i.dn
  %i.dp = icmp eq i32 %i.do, 3142
  br i1 %i.dp, label %bb.l, label %.critedge66.thread150

bb.l:                                             ; preds = %.critedge.thread
  %i.dq = getelementptr i8, ptr %i.de, i64 1674
  %i.dr = load i8, ptr %i.dq, align 2             ; 2 uses
  %i.ds = icmp eq i8 %i.dr, 0
  br i1 %i.ds, label %bb.m, label %.critedge64, !prof !20

bb.m:                                             ; preds = %bb.l
  %.not.i = icmp eq ptr %i.de, null
  br i1 %.not.i, label %__drm_to_dev.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dt = getelementptr i8, ptr %i.de, i64 8
  %i.du = load ptr, ptr %i.dt, align 8
  br label %__drm_to_dev.exit

__drm_to_dev.exit:                                ; preds = %bb.m, %bb.n
  %i.dv = phi ptr [ %i.du, %bb.n ], [ null, %bb.m ]
  %i.dw = tail call ptr @dev_driver_string(ptr noundef %i.dv) #13 ; 0 uses
  %i.dx = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.6, ptr nonnull @.str.4, i32 1369, i32 2321, i64 16) #14, !srcloc !31
  %i.dy = load ptr, ptr %i.v, align 8
  %i.dz = getelementptr i8, ptr %i.dy, i64 8
  %i.ea = load ptr, ptr %i.dz, align 8
  %i.eb = load ptr, ptr %i.ea, align 8            ; 2 uses
  %.not.i80 = icmp eq ptr %i.eb, null
  br i1 %.not.i80, label %__drm_to_dev.exit81, label %bb.o

bb.o:                                             ; preds = %__drm_to_dev.exit
  %i.ec = getelementptr i8, ptr %i.eb, i64 8
  %i.ed = load ptr, ptr %i.ec, align 8
  br label %__drm_to_dev.exit81

__drm_to_dev.exit81:                              ; preds = %__drm_to_dev.exit, %bb.o
  %i.ee = phi ptr [ %i.ed, %bb.o ], [ null, %__drm_to_dev.exit ]
  %i.ef = tail call ptr @dev_driver_string(ptr noundef %i.ee) #13
  %i.eg = load ptr, ptr %i.v, align 8
  %i.eh = getelementptr i8, ptr %i.eg, i64 8
  %i.ei = load ptr, ptr %i.eh, align 8
  %i.ej = load ptr, ptr %i.ei, align 8            ; 2 uses
  %.not.i82 = icmp eq ptr %i.ej, null
  br i1 %.not.i82, label %__drm_to_dev.exit83, label %bb.p

bb.p:                                             ; preds = %__drm_to_dev.exit81
  %i.ek = getelementptr i8, ptr %i.ej, i64 8
  %i.el = load ptr, ptr %i.ek, align 8
  br label %__drm_to_dev.exit83

__drm_to_dev.exit83:                              ; preds = %__drm_to_dev.exit81, %bb.p
  %i.em = phi ptr [ %i.el, %bb.p ], [ null, %__drm_to_dev.exit81 ] ; 2 uses
  %i.en = getelementptr i8, ptr %i.em, i64 80
  %i.eo = load ptr, ptr %i.en, align 8            ; 2 uses
  %.not.i84 = icmp eq ptr %i.eo, null
  br i1 %.not.i84, label %bb.q, label %dev_name.exit87

bb.q:                                             ; preds = %__drm_to_dev.exit83
  %.val.i86 = load ptr, ptr %i.em, align 8
  br label %dev_name.exit87

dev_name.exit87:                                  ; preds = %__drm_to_dev.exit83, %bb.q
  %.0.i85 = phi ptr [ %.val.i86, %bb.q ], [ %i.eo, %__drm_to_dev.exit83 ]
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.dx, ptr noundef %i.ef, ptr noundef %.0.i85, ptr noundef nonnull @.str.7) #13
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !32
  %.pre109 = load ptr, ptr %i.v, align 8          ; 2 uses
  %.phi.trans.insert110 = getelementptr i8, ptr %.pre109, i64 8
  %.pre111 = load ptr, ptr %.phi.trans.insert110, align 8 ; 2 uses
  %.pre112 = load ptr, ptr %.pre111, align 8
  %.phi.trans.insert113 = getelementptr i8, ptr %.pre112, i64 1674
  %.pre114 = load i8, ptr %.phi.trans.insert113, align 2
  br label %.critedge64

.critedge64:                                      ; preds = %dev_name.exit87, %bb.l
  %i.ep = phi i8 [ %.pre114, %dev_name.exit87 ], [ %i.dr, %bb.l ]
  %i.eq = phi ptr [ %.pre111, %dev_name.exit87 ], [ %i.dg, %bb.l ] ; 2 uses
  %i.er = phi ptr [ %.pre109, %dev_name.exit87 ], [ %i.df, %bb.l ] ; 2 uses
  %i.es = add i8 %i.ep, -1
  %spec.select65 = icmp ult i8 %i.es, 4
  br i1 %spec.select65, label %bb.x, label %.critedge66

.critedge66:                                      ; preds = %.critedge64
  %.phi.trans.insert115 = getelementptr i8, ptr %i.eq, i64 16
  %.pre116 = load i32, ptr %.phi.trans.insert115, align 8
  %i.et = icmp eq i32 %.pre116, 2
  br i1 %i.et, label %.critedge71, label %.critedge66.thread150

.critedge66.thread150:                            ; preds = %.critedge.thread, %.critedge66
  %i.eu = phi ptr [ %i.er, %.critedge66 ], [ %i.df, %.critedge.thread ] ; 2 uses
  %i.ev = phi ptr [ %i.eq, %.critedge66 ], [ %i.dg, %.critedge.thread ]
  %i.ew = load ptr, ptr %i.ev, align 8            ; 5 uses
  %i.ex = getelementptr i8, ptr %i.ew, i64 1656
  %i.ey = load i8, ptr %i.ex, align 8
  %i.ez = zext i8 %i.ey to i32
  %i.fa = shl nuw nsw i32 %i.ez, 8
  %i.fb = getelementptr i8, ptr %i.ew, i64 1657
  %i.fc = load i8, ptr %i.fb, align 1
  %i.fd = zext i8 %i.fc to i32
  %i.fe = or disjoint i32 %i.fa, %i.fd
  %i.ff = icmp eq i32 %i.fe, 3143
  br i1 %i.ff, label %bb.r, label %.critedge71

bb.r:                                             ; preds = %.critedge66.thread150
  %i.fg = getelementptr i8, ptr %i.ew, i64 1674
  %i.fh = load i8, ptr %i.fg, align 2             ; 2 uses
  %i.fi = icmp eq i8 %i.fh, 0
  br i1 %i.fi, label %bb.s, label %.critedge69, !prof !20

bb.s:                                             ; preds = %bb.r
  %.not.i88 = icmp eq ptr %i.ew, null
  br i1 %.not.i88, label %__drm_to_dev.exit89, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.fj = getelementptr i8, ptr %i.ew, i64 8
  %i.fk = load ptr, ptr %i.fj, align 8
  br label %__drm_to_dev.exit89

__drm_to_dev.exit89:                              ; preds = %bb.s, %bb.t
  %i.fl = phi ptr [ %i.fk, %bb.t ], [ null, %bb.s ]
  %i.fm = tail call ptr @dev_driver_string(ptr noundef %i.fl) #13 ; 0 uses
  %i.fn = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.6, ptr nonnull @.str.4, i32 1370, i32 2321, i64 16) #14, !srcloc !33
  %i.fo = load ptr, ptr %i.v, align 8
  %i.fp = getelementptr i8, ptr %i.fo, i64 8
  %i.fq = load ptr, ptr %i.fp, align 8
  %i.fr = load ptr, ptr %i.fq, align 8            ; 2 uses
  %.not.i96 = icmp eq ptr %i.fr, null
  br i1 %.not.i96, label %__drm_to_dev.exit97, label %bb.u

bb.u:                                             ; preds = %__drm_to_dev.exit89
  %i.fs = getelementptr i8, ptr %i.fr, i64 8
  %i.ft = load ptr, ptr %i.fs, align 8
  br label %__drm_to_dev.exit97

__drm_to_dev.exit97:                              ; preds = %__drm_to_dev.exit89, %bb.u
  %i.fu = phi ptr [ %i.ft, %bb.u ], [ null, %__drm_to_dev.exit89 ]
  %i.fv = tail call ptr @dev_driver_string(ptr noundef %i.fu) #13
  %i.fw = load ptr, ptr %i.v, align 8
  %i.fx = getelementptr i8, ptr %i.fw, i64 8
  %i.fy = load ptr, ptr %i.fx, align 8
  %i.fz = load ptr, ptr %i.fy, align 8            ; 2 uses
  %.not.i98 = icmp eq ptr %i.fz, null
  br i1 %.not.i98, label %__drm_to_dev.exit99, label %bb.v

bb.v:                                             ; preds = %__drm_to_dev.exit97
  %i.ga = getelementptr i8, ptr %i.fz, i64 8
  %i.gb = load ptr, ptr %i.ga, align 8
  br label %__drm_to_dev.exit99

__drm_to_dev.exit99:                              ; preds = %__drm_to_dev.exit97, %bb.v
  %i.gc = phi ptr [ %i.gb, %bb.v ], [ null, %__drm_to_dev.exit97 ] ; 2 uses
  %i.gd = getelementptr i8, ptr %i.gc, i64 80
  %i.ge = load ptr, ptr %i.gd, align 8            ; 2 uses
  %.not.i100 = icmp eq ptr %i.ge, null
  br i1 %.not.i100, label %bb.w, label %dev_name.exit103

bb.w:                                             ; preds = %__drm_to_dev.exit99
  %.val.i102 = load ptr, ptr %i.gc, align 8
  br label %dev_name.exit103

dev_name.exit103:                                 ; preds = %__drm_to_dev.exit99, %bb.w
  %.0.i101 = phi ptr [ %.val.i102, %bb.w ], [ %i.ge, %__drm_to_dev.exit99 ]
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.fn, ptr noundef %i.fv, ptr noundef %.0.i101, ptr noundef nonnull @.str.7) #13
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !34
  %.pre117 = load ptr, ptr %i.v, align 8          ; 2 uses
  %.phi.trans.insert118 = getelementptr i8, ptr %.pre117, i64 8
  %.pre119 = load ptr, ptr %.phi.trans.insert118, align 8
  %.pre120 = load ptr, ptr %.pre119, align 8
  %.phi.trans.insert121 = getelementptr i8, ptr %.pre120, i64 1674
  %.pre122 = load i8, ptr %.phi.trans.insert121, align 2
  br label %.critedge69

.critedge69:                                      ; preds = %dev_name.exit103, %bb.r
  %i.gf = phi i8 [ %.pre122, %dev_name.exit103 ], [ %i.fh, %bb.r ]
  %i.gg = phi ptr [ %.pre117, %dev_name.exit103 ], [ %i.eu, %bb.r ]
  %i.gh = add i8 %i.gf, -1
  %spec.select70 = icmp ult i8 %i.gh, 4
  br i1 %spec.select70, label %bb.x, label %.critedge71

.critedge71:                                      ; preds = %bb.i, %.critedge, %.critedge66.thread150, %.critedge66, %.critedge69
  %.1141149 = phi ptr [ %.1140, %.critedge66.thread150 ], [ %.1140, %.critedge66 ], [ %.1140, %.critedge69 ], [ %i.dc, %.critedge ], [ %i.cj, %bb.i ] ; 2 uses
  %i.gi = phi ptr [ %i.eu, %.critedge66.thread150 ], [ %i.er, %.critedge66 ], [ %i.gg, %.critedge69 ], [ %.pre105, %.critedge ], [ %i.ck, %bb.i ]
  %i.gj = load ptr, ptr %i.gi, align 8
  %i.gk = getelementptr i8, ptr %i.gj, i64 1668
  %i.gl = load i32, ptr %i.gk, align 4
  %i.gm = and i32 %i.gl, 4096
  %.not104 = icmp eq i32 %i.gm, 0
  br i1 %.not104, label %bb.y, label %bb.x

bb.x:                                             ; preds = %.critedge71, %.critedge69, %.critedge64
  %.1142 = phi ptr [ %.1141149, %.critedge71 ], [ %.1140, %.critedge69 ], [ %.1140, %.critedge64 ] ; 4 uses
  %i.gn = getelementptr i8, ptr %.1142, i64 4
  store i32 285212673, ptr %.1142, align 4
  %i.go = getelementptr i8, ptr %.1142, i64 8
  store i32 9920, ptr %i.gn, align 4
  %i.gp = getelementptr i8, ptr %.1142, i64 12
  store i32 1023, ptr %i.go, align 4
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %.critedge71
  %.2 = phi ptr [ %i.gp, %bb.x ], [ %.1141149, %.critedge71 ]
  ret ptr %.2
}

; Function Attrs: fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none)
define dso_local void @lrc_update_offsets(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #7 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 152
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %1, i64 1240
  %i.d = load i32, ptr %i.c, align 8
  %i.e = and i32 %i.d, 512
  %.not.i = icmp eq i32 %i.e, 0
  %i.f = load ptr, ptr %1, align 8                ; 2 uses
  %i.g = getelementptr i8, ptr %i.f, i64 1656
  %i.h = load i8, ptr %i.g, align 8               ; 6 uses
  %i.i = zext i8 %i.h to i32
  %i.j = shl nuw nsw i32 %i.i, 8
  %i.k = getelementptr i8, ptr %i.f, i64 1657
  %i.l = load i8, ptr %i.k, align 1
  %i.m = zext i8 %i.l to i32
  %i.n = or disjoint i32 %i.j, %i.m               ; 3 uses
  br i1 %.not.i, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = icmp samesign ugt i32 %i.n, 3141
  br i1 %i.o, label %reg_offsets.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = icmp samesign ugt i32 %i.n, 3126
  br i1 %i.p, label %reg_offsets.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = icmp ugt i8 %i.h, 11
  br i1 %i.q, label %reg_offsets.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = icmp eq i8 %i.h, 11
  br i1 %i.r, label %reg_offsets.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = icmp samesign ugt i8 %i.h, 8
  %gen9_rcs_offsets.gen8_rcs_offsets.i = select i1 %i.s, ptr @gen9_rcs_offsets, ptr @gen8_rcs_offsets
  br label %reg_offsets.exit

bb.g:                                             ; preds = %bb.a
  %i.t = icmp samesign ugt i32 %i.n, 3126
  br i1 %i.t, label %reg_offsets.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = icmp ugt i8 %i.h, 11
  br i1 %i.u, label %reg_offsets.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = icmp samesign ugt i8 %i.h, 8
  %gen9_xcs_offsets.gen8_xcs_offsets.i = select i1 %i.v, ptr @gen9_xcs_offsets, ptr @gen8_xcs_offsets
  br label %reg_offsets.exit

reg_offsets.exit:                                 ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i
  %.0.i = phi ptr [ @gen12_xcs_offsets, %bb.h ], [ @mtl_rcs_offsets, %bb.b ], [ @dg2_rcs_offsets, %bb.c ], [ @gen12_rcs_offsets, %bb.d ], [ %gen9_rcs_offsets.gen8_rcs_offsets.i, %bb.f ], [ @gen11_rcs_offsets, %bb.e ], [ %gen9_xcs_offsets.gen8_xcs_offsets.i, %bb.i ], [ @dg2_xcs_offsets, %bb.g ] ; 2 uses
  %i.w = getelementptr i8, ptr %1, i64 72
  %i.x = load i32, ptr %i.w, align 8              ; 3 uses
  %i.y = load i8, ptr %.0.i, align 1              ; 2 uses
  %.not42.i = icmp eq i8 %i.y, 0
  br i1 %.not42.i, label %set_offsets.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %reg_offsets.exit, %.loopexit.i
  %i.z = phi i8 [ %i.bt, %.loopexit.i ], [ %i.y, %reg_offsets.exit ] ; 5 uses
  %.03044.i = phi ptr [ %.2.i, %.loopexit.i ], [ %i.b, %reg_offsets.exit ] ; 5 uses
  %.03143.i = phi ptr [ %.3.i, %.loopexit.i ], [ %.0.i, %reg_offsets.exit ] ; 2 uses
  %.not36.i = icmp sgt i8 %i.z, -1
  br i1 %.not36.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i
  %i.aa = getelementptr i8, ptr %.03143.i, i64 1
  %i.ab = and i8 %i.z, 127
  %i.ac = zext nneg i8 %i.ab to i64
  %i.ad = getelementptr [4 x i8], ptr %.03044.i, i64 %i.ac
  br label %.loopexit.i, !llvm.loop !11

bb.k:                                             ; preds = %.lr.ph.i
  %i.ae = and i8 %i.z, 63                         ; 4 uses
  %i.af = getelementptr i8, ptr %.03143.i, i64 1  ; 2 uses
  %i.ag = shl nuw nsw i8 %i.ae, 1
  %i.ah = zext nneg i8 %i.ag to i32
  %i.ai = add nsw i32 %i.ah, -1
  %.not37.i = icmp samesign ult i8 %i.z, 64
  %spec.select.v.i = select i1 %.not37.i, i32 285212672, i32 285216768
  %spec.select.i = or i32 %i.ai, %spec.select.v.i ; 2 uses
  store i32 %spec.select.i, ptr %.03044.i, align 4
  %i.aj = load ptr, ptr %1, align 8
  %i.ak = getelementptr i8, ptr %i.aj, i64 1656
  %i.al = load i8, ptr %i.ak, align 8
  %i.am = icmp ugt i8 %i.al, 10
  br i1 %i.am, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.an = or i32 %spec.select.i, 524288
  store i32 %i.an, ptr %.03044.i, align 4
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ao = getelementptr i8, ptr %.03044.i, i64 4  ; 2 uses
  %xtraiter = and i8 %i.z, 1
  %lcmp.mod.not = icmp eq i8 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.m, %.prol.preheader
  %.233.i.prol = phi ptr [ %i.ap, %.prol.preheader ], [ %i.af, %bb.m ] ; 2 uses
  %.0.i4.prol = phi i32 [ %i.au, %.prol.preheader ], [ 0, %bb.m ]
  %i.ap = getelementptr i8, ptr %.233.i.prol, i64 1 ; 3 uses
  %i.aq = load i8, ptr %.233.i.prol, align 1      ; 2 uses
  %i.ar = shl i32 %.0.i4.prol, 7
  %i.as = and i8 %i.aq, 127
  %i.at = zext nneg i8 %i.as to i32
  %i.au = or disjoint i32 %i.ar, %i.at            ; 2 uses
  %.not38.i.prol = icmp sgt i8 %i.aq, -1
  br i1 %.not38.i.prol, label %.prol.loopexit.unr-lcssa, label %.prol.preheader, !llvm.loop !13

.prol.loopexit.unr-lcssa:                         ; preds = %.prol.preheader
  %i.av = shl i32 %i.au, 2
  %i.aw = add i32 %i.av, %i.x
  store i32 %i.aw, ptr %i.ao, align 4
  %i.ax = getelementptr i8, ptr %.03044.i, i64 12 ; 2 uses
  %i.ay = add nsw i8 %i.ae, -1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %bb.m
  %.lcssa20.unr = phi ptr [ poison, %bb.m ], [ %i.ax, %.prol.loopexit.unr-lcssa ]
  %.lcssa19.lcssa.unr = phi ptr [ poison, %bb.m ], [ %i.ap, %.prol.loopexit.unr-lcssa ]
  %.132.i.unr = phi ptr [ %i.af, %bb.m ], [ %i.ap, %.prol.loopexit.unr-lcssa ]
  %.1.i.unr = phi ptr [ %i.ao, %bb.m ], [ %i.ax, %.prol.loopexit.unr-lcssa ]
  %.029.i.unr = phi i8 [ %i.ae, %bb.m ], [ %i.ay, %.prol.loopexit.unr-lcssa ]
  %i.az = icmp eq i8 %i.ae, 1
  br i1 %i.az, label %.loopexit.i, label %.new

.new:                                             ; preds = %.prol.loopexit, %bb.q
  %.132.i = phi ptr [ %i.bj, %bb.q ], [ %.132.i.unr, %.prol.loopexit ]
  %.1.i = phi ptr [ %i.br, %bb.q ], [ %.1.i.unr, %.prol.loopexit ] ; 3 uses
  %.029.i = phi i8 [ %i.bs, %bb.q ], [ %.029.i.unr, %.prol.loopexit ]
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %.new
  %.233.i = phi ptr [ %.132.i, %.new ], [ %i.ba, %bb.n ] ; 2 uses
  %.0.i4 = phi i32 [ 0, %.new ], [ %i.bf, %bb.n ]
  %i.ba = getelementptr i8, ptr %.233.i, i64 1    ; 2 uses
  %i.bb = load i8, ptr %.233.i, align 1           ; 2 uses
  %i.bc = shl i32 %.0.i4, 7
  %i.bd = and i8 %i.bb, 127
  %i.be = zext nneg i8 %i.bd to i32
  %i.bf = or disjoint i32 %i.bc, %i.be            ; 2 uses
  %.not38.i = icmp sgt i8 %i.bb, -1
  br i1 %.not38.i, label %bb.o, label %bb.n, !llvm.loop !13

bb.o:                                             ; preds = %bb.n
  %i.bg = shl i32 %i.bf, 2
  %i.bh = add i32 %i.bg, %i.x
  store i32 %i.bh, ptr %.1.i, align 4
  %i.bi = getelementptr i8, ptr %.1.i, i64 8
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %bb.o
  %.233.i.1 = phi ptr [ %i.ba, %bb.o ], [ %i.bj, %bb.p ] ; 2 uses
  %.0.i4.1 = phi i32 [ 0, %bb.o ], [ %i.bo, %bb.p ]
  %i.bj = getelementptr i8, ptr %.233.i.1, i64 1  ; 3 uses
  %i.bk = load i8, ptr %.233.i.1, align 1         ; 2 uses
  %i.bl = shl i32 %.0.i4.1, 7
  %i.bm = and i8 %i.bk, 127
  %i.bn = zext nneg i8 %i.bm to i32
  %i.bo = or disjoint i32 %i.bl, %i.bn            ; 2 uses
  %.not38.i.1 = icmp sgt i8 %i.bk, -1
  br i1 %.not38.i.1, label %bb.q, label %bb.p, !llvm.loop !13

bb.q:                                             ; preds = %bb.p
  %i.bp = shl i32 %i.bo, 2
  %i.bq = add i32 %i.bp, %i.x
  store i32 %i.bq, ptr %i.bi, align 4
  %i.br = getelementptr i8, ptr %.1.i, i64 16     ; 2 uses
  %i.bs = add i8 %.029.i, -2                      ; 2 uses
  %.not39.i.1 = icmp eq i8 %i.bs, 0
  br i1 %.not39.i.1, label %.loopexit.i, label %.new, !llvm.loop !14

.loopexit.i:                                      ; preds = %.prol.loopexit, %bb.q, %bb.j
  %.3.i = phi ptr [ %i.aa, %bb.j ], [ %.lcssa19.lcssa.unr, %.prol.loopexit ], [ %i.bj, %bb.q ] ; 2 uses
  %.2.i = phi ptr [ %i.ad, %bb.j ], [ %.lcssa20.unr, %.prol.loopexit ], [ %i.br, %bb.q ]
  %i.bt = load i8, ptr %.3.i, align 1             ; 2 uses
  %.not.i3 = icmp eq i8 %i.bt, 0
  br i1 %.not.i3, label %set_offsets.exit, label %.lr.ph.i

set_offsets.exit:                                 ; preds = %.loopexit.i, %reg_offsets.exit
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @lrc_check_regs(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 112
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 152
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.e = getelementptr i8, ptr %i.d, i64 36       ; 2 uses
  %i.f = load i32, ptr %i.e, align 4              ; 2 uses
  %i.g = getelementptr i8, ptr %i.b, i64 8        ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr i8, ptr %i.h, i64 8
  %.val45 = load i64, ptr %i.i, align 8
  %i.j = getelementptr i8, ptr %i.h, i64 248
  %.val46 = load i32, ptr %i.j, align 8
  %i.k = trunc i64 %.val45 to i32
  %i.l = add i32 %.val46, %i.k                    ; 2 uses
  %.not = icmp eq i32 %i.f, %i.l                  ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr i8, ptr %1, i64 24
  %i.n = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %i.m, i32 noundef %i.f, i32 noundef %i.l) #15 ; 0 uses
  %i.o = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.p = getelementptr i8, ptr %i.o, i64 8
  %.val = load i64, ptr %i.p, align 8
  %i.q = getelementptr i8, ptr %i.o, i64 248
  %.val42 = load i32, ptr %i.q, align 8
  %i.r = trunc i64 %.val to i32
  %i.s = add i32 %.val42, %i.r
  store i32 %i.s, ptr %i.e, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.t = getelementptr i8, ptr %i.d, i64 44       ; 2 uses
  %i.u = load i32, ptr %i.t, align 4              ; 2 uses
  %i.v = and i32 %i.u, -3073
  %i.w = zext i32 %i.v to i64
  %i.x = getelementptr i8, ptr %i.b, i64 44       ; 2 uses
  %i.y = load i32, ptr %i.x, align 4
  %i.z = or i32 %i.y, 1
  %i.aa = zext i32 %i.z to i64
  %i.ab = add nsw i64 %i.aa, -4096                ; 2 uses
  %.not39 = icmp eq i64 %i.ab, %i.w
  br i1 %.not39, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ac = getelementptr i8, ptr %1, i64 24
  %i.ad = trunc i64 %i.ab to i32
  %i.ae = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %i.ac, i32 noundef %i.u, i32 noundef %i.ad) #15 ; 0 uses
  %i.af = load i32, ptr %i.x, align 4
  %i.ag = or i32 %i.af, 1
  %i.ah = add i32 %i.ag, -4096
  store i32 %i.ah, ptr %i.t, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.1 = phi i1 [ false, %bb.d ], [ %.not, %bb.c ]
  %i.ai = load ptr, ptr %1, align 8               ; 2 uses
  %i.aj = getelementptr i8, ptr %i.ai, i64 1656
  %i.ak = load i8, ptr %i.aj, align 8             ; 3 uses
  %i.al = zext i8 %i.ak to i32
  %i.am = shl nuw nsw i32 %i.al, 8
  %i.an = getelementptr i8, ptr %i.ai, i64 1657
  %i.ao = load i8, ptr %i.an, align 1
  %i.ap = zext i8 %i.ao to i32
  %i.aq = or disjoint i32 %i.am, %i.ap
  %i.ar = icmp samesign ugt i32 %i.aq, 3126
  br i1 %i.ar, label %select.unfold, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.as = icmp ugt i8 %i.ak, 11
  br i1 %i.as, label %select.unfold, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.at = icmp samesign ugt i8 %i.ak, 8
  br i1 %i.at, label %select.unfold, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.au = getelementptr i8, ptr %1, i64 56
  %i.av = load i8, ptr %i.au, align 8
  %i.aw = icmp eq i8 %i.av, 0
  br i1 %i.aw, label %select.unfold, label %lrc_ring_mi_mode.exit

select.unfold:                                    ; preds = %bb.h, %bb.g, %bb.e, %bb.f
  %.0.i.ph = phi i64 [ 84, %bb.g ], [ 96, %bb.f ], [ 112, %bb.e ], [ 88, %bb.h ]
  %i.ax = getelementptr [4 x i8], ptr %i.d, i64 %.0.i.ph
  %i.ay = getelementptr i8, ptr %i.ax, i64 4      ; 3 uses
  %i.az = load i32, ptr %i.ay, align 4            ; 3 uses
  %i.ba = lshr i32 %i.az, 16
  %i.bb = and i32 %i.az, 256
  %i.bc = and i32 %i.bb, %i.ba
  %.not41 = icmp eq i32 %i.bc, 0
  br i1 %.not41, label %lrc_ring_mi_mode.exit, label %.critedge

.critedge:                                        ; preds = %select.unfold
  %i.bd = getelementptr i8, ptr %1, i64 24
  %i.be = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %i.bd, i32 noundef %i.az) #15 ; 0 uses
  %i.bf = load i32, ptr %i.ay, align 4
  %i.bg = and i32 %i.bf, -16777473
  %i.bh = or disjoint i32 %i.bg, 16777216
  store i32 %i.bh, ptr %i.ay, align 4
  br label %bb.i

lrc_ring_mi_mode.exit:                            ; preds = %bb.h, %select.unfold
  br i1 %.1, label %bb.j, label %bb.i, !prof !24

bb.i:                                             ; preds = %.critedge, %lrc_ring_mi_mode.exit
  %i.bi = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.3, ptr nonnull @.str.4, i32 1619, i32 2323, i64 16) #14, !srcloc !35
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.bi, ptr noundef %2) #13
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !36
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %lrc_ring_mi_mode.exit
  ret void
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__SCT__WARN_trap(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @lrc_fini_wa_ctx(ptr noundef %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 624
  tail call void @i915_vma_unpin_and_release(ptr noundef %i.a, i32 noundef 0) #13
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @i915_vma_unpin_and_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @lrc_init_wa_ctx(ptr noundef %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %1 = alloca %struct.i915_gem_ww_ctx, align 8    ; 14 uses
  %i.a = getelementptr i8, ptr %0, i64 608        ; 3 uses
  %i.b = getelementptr i8, ptr %0, i64 616
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %1, i8 0, i64 56, i1 false), !annotation !37
  %i.c = load ptr, ptr %0, align 8                ; 2 uses
  %i.d = getelementptr i8, ptr %i.c, i64 1656
  %i.e = load i8, ptr %i.d, align 8               ; 2 uses
  %i.f = icmp ugt i8 %i.e, 10
  br i1 %i.f, label %bb.ai, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %0, i64 1240
  %i.h = load i32, ptr %i.g, align 8
  %i.i = and i32 %i.h, 512
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.ai, label %bb.c

bb.c:                                             ; preds = %bb.b
  switch i8 %i.e, label %bb.f [
    i8 9, label %bb.d
    i8 8, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e, %bb.d
  %.not56 = phi i1 [ true, %bb.c ], [ false, %bb.d ], [ false, %bb.e ]
  %.sroa.0.0 = phi ptr [ null, %bb.c ], [ @gen9_init_indirectctx_bb, %bb.d ], [ @gen8_init_indirectctx_bb, %bb.e ]
  %i.j = tail call ptr @i915_gem_object_create_shmem(ptr noundef %i.c, i64 noundef 4096) #13 ; 7 uses
  %i.k = icmp ugt ptr %i.j, inttoptr (i64 -4096 to ptr)
  br i1 %i.k, label %lrc_create_wa_ctx.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = getelementptr i8, ptr %i.m, i64 32
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call ptr @i915_vma_instance(ptr noundef %i.j, ptr noundef %i.o, ptr noundef null) #13 ; 6 uses
  %i.q = icmp ugt ptr %i.p, inttoptr (i64 -4096 to ptr)
  br i1 %i.q, label %bb.h, label %lrc_create_wa_ctx.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.r = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.j, i32 -1, ptr elementtype(i32) %i.j) #14, !srcloc !19 ; 2 uses
  %i.s = icmp eq i32 %i.r, 1
  br i1 %i.s, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = icmp slt i32 %i.r, 1
  br i1 %i.t, label %bb.j, label %lrc_create_wa_ctx.exit, !prof !20

bb.j:                                             ; preds = %bb.i
  tail call void @refcount_warn_saturate(ptr noundef %i.j, i32 noundef 3) #13
  br label %lrc_create_wa_ctx.exit

bb.k:                                             ; preds = %bb.h
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !21
  tail call void @drm_gem_object_free(ptr noundef %i.j) #13, !callees !22, !inline_history !23
  br label %lrc_create_wa_ctx.exit

lrc_create_wa_ctx.exit.thread:                    ; preds = %bb.g
  %i.u = getelementptr i8, ptr %0, i64 624
  store ptr %i.p, ptr %i.u, align 8
  br label %bb.n

lrc_create_wa_ctx.exit:                           ; preds = %bb.f, %bb.i, %bb.j, %bb.k
  %.0.i.in.in = phi ptr [ %i.p, %bb.j ], [ %i.p, %bb.k ], [ %i.p, %bb.i ], [ %i.j, %bb.f ]
  %.0.i.in = ptrtoint ptr %.0.i.in.in to i64
  %.0.i = trunc i64 %.0.i.in to i32               ; 2 uses
  %.not52 = icmp eq i32 %.0.i, 0
  br i1 %.not52, label %lrc_create_wa_ctx.exit._crit_edge, label %bb.l

lrc_create_wa_ctx.exit._crit_edge:                ; preds = %lrc_create_wa_ctx.exit
  %.phi.trans.insert = getelementptr i8, ptr %0, i64 624
  %.pre = load ptr, ptr %.phi.trans.insert, align 8
  br label %bb.n

bb.l:                                             ; preds = %lrc_create_wa_ctx.exit
  %i.v = load ptr, ptr %0, align 8                ; 2 uses
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %__drm_to_dev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.w = getelementptr i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8
  br label %__drm_to_dev.exit

__drm_to_dev.exit:                                ; preds = %bb.l, %bb.m
  %i.y = phi ptr [ %i.x, %bb.m ], [ null, %bb.l ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.y, ptr noundef nonnull @.str.5, i32 noundef %.0.i) #15
  br label %bb.ai

bb.n:                                             ; preds = %lrc_create_wa_ctx.exit._crit_edge, %lrc_create_wa_ctx.exit.thread
  %i.z = phi ptr [ %.pre, %lrc_create_wa_ctx.exit._crit_edge ], [ %i.p, %lrc_create_wa_ctx.exit.thread ]
  %i.aa = getelementptr i8, ptr %0, i64 624       ; 7 uses
  %.not53 = icmp eq ptr %i.z, null
  br i1 %.not53, label %bb.ai, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @i915_gem_ww_ctx_init(ptr noundef nonnull %1, i1 noundef zeroext true) #13
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 40
  br label %bb.p

bb.p:                                             ; preds = %bb.ad, %bb.o
  %i.af = load ptr, ptr %i.aa, align 8
  %i.ag = getelementptr i8, ptr %i.af, i64 184
  %i.ah = load ptr, ptr %i.ag, align 8            ; 10 uses
  %i.ai = load i8, ptr %i.ab, align 8, !range !15, !noundef !16
  %i.aj = trunc nuw i8 %i.ai to i1
  %i.ak = getelementptr i8, ptr %i.ah, i64 248
  %i.al = load ptr, ptr %i.ak, align 8            ; 2 uses
  br i1 %i.aj, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.am = call i32 @ww_mutex_lock_interruptible(ptr noundef %i.al, ptr noundef nonnull %1) #13
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.an = call i32 @ww_mutex_lock(ptr noundef %i.al, ptr noundef nonnull %1) #13
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.0.i.i = phi i32 [ %i.am, %bb.q ], [ %i.an, %bb.r ] ; 4 uses
  %i.ao = icmp eq i32 %.0.i.i, 0
  br i1 %i.ao, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.ap = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.ah, i32 1, ptr elementtype(i32) %i.ah) #14, !srcloc !19 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %i.ap, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %.sink.split.i.i.i.i.i.i.i.i, label %bb.u, !prof !20

bb.u:                                             ; preds = %bb.t
  %i.aq = add i32 %i.ap, 1
  %i.ar = or i32 %i.aq, %i.ap
  %.not10.i.i.i.i.i.i.i.i = icmp sgt i32 %i.ar, -1
  br i1 %.not10.i.i.i.i.i.i.i.i, label %i915_gem_object_get.exit.i.i, label %.sink.split.i.i.i.i.i.i.i.i, !prof !24

.sink.split.i.i.i.i.i.i.i.i:                      ; preds = %bb.u, %bb.t
  %.sink.i.i.i.i.i.i.i.i = phi i32 [ 2, %bb.t ], [ 1, %bb.u ]
  call void @refcount_warn_saturate(ptr noundef %i.ah, i32 noundef %.sink.i.i.i.i.i.i.i.i) #13
  br label %i915_gem_object_get.exit.i.i

i915_gem_object_get.exit.i.i:                     ; preds = %.sink.split.i.i.i.i.i.i.i.i, %bb.u
  %i.as = getelementptr i8, ptr %i.ah, i64 544    ; 3 uses
  %i.at = load ptr, ptr %i.ad, align 8            ; 2 uses
  store ptr %i.as, ptr %i.ad, align 8
  store ptr %i.ac, ptr %i.as, align 8
  %i.au = getelementptr i8, ptr %i.ah, i64 552
  store ptr %i.at, ptr %i.au, align 8
  store volatile ptr %i.as, ptr %i.at, align 8
  br label %bb.v

bb.v:                                             ; preds = %i915_gem_object_get.exit.i.i, %bb.s
  %i.av = icmp eq i32 %.0.i.i, -114
  %spec.store.select.i6.i = select i1 %i.av, i32 0, i32 %.0.i.i
  switch i32 %spec.store.select.i6.i, label %.thread [
    i32 -35, label %bb.w
    i32 0, label %bb.y
  ]

bb.w:                                             ; preds = %bb.v
  %i.aw = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.ah, i32 1, ptr elementtype(i32) %i.ah) #14, !srcloc !19 ; 3 uses
  %.not.i.i.i.i.i.i19.i7.i = icmp eq i32 %i.aw, 0
  br i1 %.not.i.i.i.i.i.i19.i7.i, label %.sink.split.i.i.i.i.i.i21.i9.i, label %bb.x, !prof !20

bb.x:                                             ; preds = %bb.w
  %i.ax = add i32 %i.aw, 1
  %i.ay = or i32 %i.ax, %i.aw
  %.not10.i.i.i.i.i.i20.i8.i = icmp sgt i32 %i.ay, -1
  br i1 %.not10.i.i.i.i.i.i20.i8.i, label %.thread72, label %.sink.split.i.i.i.i.i.i21.i9.i, !prof !24

.sink.split.i.i.i.i.i.i21.i9.i:                   ; preds = %bb.x, %bb.w
  %.sink.i.i.i.i.i.i22.i10.i = phi i32 [ 2, %bb.w ], [ 1, %bb.x ]
  call void @refcount_warn_saturate(ptr noundef %i.ah, i32 noundef %.sink.i.i.i.i.i.i22.i10.i) #13
  br label %.thread72

.thread72:                                        ; preds = %bb.x, %.sink.split.i.i.i.i.i.i21.i9.i
  store ptr %i.ah, ptr %i.ae, align 8
  br label %bb.ad

bb.y:                                             ; preds = %bb.v
  %i.az = load ptr, ptr %i.aa, align 8
  %i.ba = call i32 @i915_ggtt_pin(ptr noundef %i.az, ptr noundef nonnull %1, i32 noundef 0, i32 noundef 32) #13 ; 2 uses
  %.not55 = icmp eq i32 %i.ba, 0
  br i1 %.not55, label %bb.z, label %.thread

bb.z:                                             ; preds = %bb.y
  %i.bb = load ptr, ptr %i.aa, align 8
  %i.bc = getelementptr i8, ptr %i.bb, i64 184
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = call ptr @i915_gem_object_pin_map(ptr noundef %i.bd, i32 noundef 0) #13 ; 5 uses
  %i.bf = icmp ugt ptr %i.be, inttoptr (i64 -4096 to ptr)
  %i.bg = ptrtoint ptr %i.be to i64               ; 3 uses
  br i1 %i.bf, label %bb.ab, label %.preheader

.preheader:                                       ; preds = %bb.z
  store i32 0, ptr %i.a, align 8
  br i1 %.not56, label %.thread67, label %bb.aa

bb.aa:                                            ; preds = %.preheader
  %i.bh = call ptr %.sroa.0.0(ptr noundef %0, ptr noundef %i.be) #13
  %.pre87 = load i32, ptr %i.a, align 8
  %.pre89 = ptrtoint ptr %i.bh to i64
  %i.bi = zext i32 %.pre87 to i64
  br label %.thread67

.thread67:                                        ; preds = %bb.aa, %.preheader
  %.pre-phi = phi i64 [ %.pre89, %bb.aa ], [ %i.bg, %.preheader ] ; 3 uses
  %i.bj = phi i64 [ %i.bi, %bb.aa ], [ 0, %.preheader ]
  %i.bk = getelementptr i8, ptr %i.be, i64 %i.bj
  %i.bl = ptrtoint ptr %i.bk to i64
  %i.bm = sub i64 %.pre-phi, %i.bl
  %i.bn = trunc i64 %i.bm to i32
  %i.bo = getelementptr i8, ptr %0, i64 612
  store i32 %i.bn, ptr %i.bo, align 4
  %i.bp = sub i64 %.pre-phi, %i.bg                ; 3 uses
  %i.bq = trunc i64 %i.bp to i32
  store i32 %i.bq, ptr %i.b, align 8
  %.pre88 = load ptr, ptr %i.aa, align 8
  %i.br = and i64 %i.bp, 4294967295
  %i.bs = getelementptr i8, ptr %i.be, i64 %i.br
  %i.bt = ptrtoint ptr %i.bs to i64
  %i.bu = sub i64 %.pre-phi, %i.bt
  %i.bv = trunc i64 %i.bu to i32
  %i.bw = getelementptr i8, ptr %0, i64 620
  store i32 %i.bv, ptr %i.bw, align 4
  %i.bx = getelementptr i8, ptr %.pre88, i64 184
  %i.by = load ptr, ptr %i.bx, align 8
  call void @__i915_gem_object_flush_map(ptr noundef %i.by, i64 noundef 0, i64 noundef %i.bp) #13
  %i.bz = load ptr, ptr %i.aa, align 8
  %i.ca = getelementptr i8, ptr %i.bz, i64 184
  %i.cb = load ptr, ptr %i.ca, align 8
  call void @__i915_gem_object_release_map(ptr noundef %i.cb) #13
  br label %.loopexit

bb.ab:                                            ; preds = %bb.z
  %i.cc = trunc i64 %i.bg to i32                  ; 2 uses
  %.not57 = icmp eq i32 %i.cc, 0
  br i1 %.not57, label %.loopexit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cd = load ptr, ptr %i.aa, align 8
  %i.ce = getelementptr i8, ptr %i.cd, i64 268    ; 2 uses
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock decl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.ce, ptr elementtype(i32) %i.ce) #14, !srcloc !30
  br label %.thread

.thread:                                          ; preds = %bb.v, %bb.ac, %bb.y
  %.2 = phi i32 [ %i.ba, %bb.y ], [ %i.cc, %bb.ac ], [ %.0.i.i, %bb.v ]
  %i.cf = icmp eq i32 %.2, -35
  br i1 %i.cf, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %.thread72, %.thread
  %i.cg = call i32 @i915_gem_ww_ctx_backoff(ptr noundef nonnull %1) #13
  %.not58 = icmp eq i32 %i.cg, 0
  br i1 %.not58, label %bb.p, label %bb.ae

.loopexit:                                        ; preds = %bb.ab, %.thread67
  call void @i915_gem_ww_ctx_fini(ptr noundef nonnull %1) #13
  br label %bb.ai

bb.ae:                                            ; preds = %bb.ad, %.thread
  call void @i915_gem_ww_ctx_fini(ptr noundef nonnull %1) #13
  %i.ch = load ptr, ptr %i.aa, align 8
  %i.ci = getelementptr i8, ptr %i.ch, i64 184
  %.val = load ptr, ptr %i.ci, align 8            ; 4 uses
  %i.cj = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %.val, i32 -1, ptr elementtype(i32) %.val) #14, !srcloc !19 ; 2 uses
  %i.ck = icmp eq i32 %i.cj, 1
  br i1 %i.ck, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cl = icmp slt i32 %i.cj, 1
  br i1 %i.cl, label %bb.ag, label %i915_vma_put.exit, !prof !20

bb.ag:                                            ; preds = %bb.af
  call void @refcount_warn_saturate(ptr noundef %.val, i32 noundef 3) #13
  br label %i915_vma_put.exit

bb.ah:                                            ; preds = %bb.ae
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !21
  call void @drm_gem_object_free(ptr noundef %.val) #13, !callees !22, !inline_history !23
  br label %i915_vma_put.exit

i915_vma_put.exit:                                ; preds = %bb.af, %bb.ag, %bb.ah
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  br label %bb.ai

bb.ai:                                            ; preds = %.loopexit, %i915_vma_put.exit, %bb.n, %bb.a, %bb.b, %__drm_to_dev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  ret void
}

; Function Attrs: fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none)
define internal noundef ptr @gen9_init_indirectctx_bb(ptr nofree noundef readonly captures(none) %0, ptr noundef initializes((0, 128)) %1) unnamed_addr #9 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 4
  store i32 67108864, ptr %1, align 4
  %i.b = getelementptr i8, ptr %1, i64 8
  store i32 306184194, ptr %i.a, align 4
  %i.c = getelementptr i8, ptr %1, i64 12
  store i32 45336, ptr %i.b, align 4
  %i.d = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr i8, ptr %i.e, i64 4848
  %.val17.i = load ptr, ptr %i.f, align 8         ; 2 uses
  %i.g = getelementptr i8, ptr %.val17.i, i64 8
  %.val17.val.i = load i64, ptr %i.g, align 8
  %i.h = getelementptr i8, ptr %.val17.i, i64 248
  %.val17.val18.i = load i32, ptr %i.h, align 8
  %i.i = trunc i64 %.val17.val.i to i32
  %i.j = add i32 %i.i, 256
  %i.k = add i32 %i.j, %.val17.val18.i
  %i.l = getelementptr i8, ptr %1, i64 16
  store i32 %i.k, ptr %i.c, align 4
  %i.m = getelementptr i8, ptr %1, i64 20
  store i32 0, ptr %i.l, align 4
  %i.n = getelementptr i8, ptr %1, i64 24
  store i32 285212673, ptr %i.m, align 4
  %i.o = getelementptr i8, ptr %1, i64 28
  store i32 45336, ptr %i.n, align 4
  %i.p = getelementptr i8, ptr %1, i64 32
  store i32 1080033280, ptr %i.o, align 4
  %i.q = getelementptr i8, ptr %1, i64 44
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.q, i8 0, i64 12, i1 false)
  store i32 2046820356, ptr %i.p, align 4
  %i.r = getelementptr i8, ptr %1, i64 36
  store i32 1048608, ptr %i.r, align 4
  %i.s = getelementptr i8, ptr %1, i64 40
  store i32 0, ptr %i.s, align 4
  %i.t = getelementptr i8, ptr %1, i64 56
  %i.u = getelementptr i8, ptr %1, i64 60
  store i32 348127234, ptr %i.t, align 4
  %i.v = getelementptr i8, ptr %1, i64 64
  store i32 45336, ptr %i.u, align 4
  %i.w = load ptr, ptr %i.d, align 8
  %i.x = getelementptr i8, ptr %i.w, i64 4848
  %.val.i = load ptr, ptr %i.x, align 8           ; 2 uses
  %i.y = getelementptr i8, ptr %.val.i, i64 8
  %.val.val.i = load i64, ptr %i.y, align 8
  %i.z = getelementptr i8, ptr %.val.i, i64 248
  %.val.val19.i = load i32, ptr %i.z, align 8
  %i.aa = trunc i64 %.val.val.i to i32
  %i.ab = add i32 %i.aa, 256
  %i.ac = add i32 %i.ab, %.val.val19.i
  %i.ad = getelementptr i8, ptr %1, i64 68
  store i32 %i.ac, ptr %i.v, align 4
  %i.ae = getelementptr i8, ptr %1, i64 72
  store i32 0, ptr %i.ad, align 4
  %i.af = getelementptr i8, ptr %1, i64 84
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.af, i8 0, i64 12, i1 false)
  store i32 2046820356, ptr %i.ae, align 4
  %i.ag = getelementptr i8, ptr %1, i64 76
  store i32 137379840, ptr %i.ag, align 4
  %i.ah = getelementptr i8, ptr %1, i64 80
  store i32 208, ptr %i.ah, align 4
  %i.ai = getelementptr i8, ptr %1, i64 96
  %i.aj = getelementptr i8, ptr %1, i64 100
  store i32 285212677, ptr %i.ai, align 4
  %i.ak = getelementptr i8, ptr %1, i64 104
  store i32 28692, ptr %i.aj, align 4
  %i.al = getelementptr i8, ptr %1, i64 108
  store i32 268435456, ptr %i.ak, align 4
  %i.am = getelementptr i8, ptr %1, i64 112
  store i32 8328, ptr %i.al, align 4
  %i.an = getelementptr i8, ptr %1, i64 116
  store i32 131074, ptr %i.am, align 4
  %i.ao = getelementptr i8, ptr %1, i64 120
  store i32 8336, ptr %i.an, align 4
  %i.ap = getelementptr i8, ptr %1, i64 124
  store i32 268439552, ptr %i.ao, align 4
  %i.aq = getelementptr i8, ptr %1, i64 128       ; 2 uses
  store i32 0, ptr %i.ap, align 4
  %i.ar = load ptr, ptr %0, align 8
  %i.as = getelementptr i8, ptr %i.ar, i64 1688
  %i.at = load i8, ptr %i.as, align 8, !range !15, !noundef !16
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.av = getelementptr i8, ptr %1, i64 132
  store i32 1879375876, ptr %i.aq, align 4
  %i.aw = getelementptr i8, ptr %1, i64 136
  store i32 -2147483648, ptr %i.av, align 4
  %i.ax = getelementptr i8, ptr %1, i64 140
  store i32 7827456, ptr %i.aw, align 4
  %i.ay = getelementptr i8, ptr %1, i64 144
  store i32 0, ptr %i.ax, align 4
  %i.az = getelementptr i8, ptr %1, i64 148
  store i32 0, ptr %i.ay, align 4
  %i.ba = getelementptr i8, ptr %1, i64 152
  store i32 0, ptr %i.az, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %i.ba, %bb.b ], [ %i.aq, %bb.a ] ; 2 uses
  store i32 67108865, ptr %.0, align 4
  %.116 = getelementptr i8, ptr %.0, i64 4        ; 3 uses
  %i.bb = ptrtoint ptr %.116 to i64
  %i.bc = and i64 %i.bb, 63
  %.not17 = icmp eq i64 %i.bc, 0
  br i1 %.not17, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c, %.lr.ph.preheader
  %.118 = phi ptr [ %.1, %.lr.ph.preheader ], [ %.116, %bb.c ] ; 2 uses
  store i32 0, ptr %.118, align 4
  %.1 = getelementptr i8, ptr %.118, i64 4        ; 3 uses
  %2 = ptrtoint ptr %.1 to i64
  %3 = and i64 %2, 63
  %.not = icmp eq i64 %3, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader, !llvm.loop !38

._crit_edge:                                      ; preds = %.lr.ph.preheader, %bb.c
  %.1.lcssa = phi ptr [ %.116, %bb.c ], [ %.1, %.lr.ph.preheader ]
  ret ptr %.1.lcssa
}

; Function Attrs: fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none)
define internal noundef ptr @gen8_init_indirectctx_bb(ptr nofree noundef readonly captures(none) %0, ptr noundef initializes((0, 4)) %1) unnamed_addr #9 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 4          ; 2 uses
  store i32 67108864, ptr %1, align 4
  %i.b = load ptr, ptr %0, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 1664
  %i.d = load i32, ptr %i.c, align 4
  %i.e = and i32 %i.d, 16777216
  %.not9 = icmp eq i32 %i.e, 0
  br i1 %.not9, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %1, i64 8
  store i32 306184194, ptr %i.a, align 4
  %i.g = getelementptr i8, ptr %1, i64 12
  store i32 45336, ptr %i.f, align 4
  %i.h = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr i8, ptr %i.i, i64 4848
  %.val17.i = load ptr, ptr %i.j, align 8         ; 2 uses
  %i.k = getelementptr i8, ptr %.val17.i, i64 8
  %.val17.val.i = load i64, ptr %i.k, align 8
  %i.l = getelementptr i8, ptr %.val17.i, i64 248
  %.val17.val18.i = load i32, ptr %i.l, align 8
  %i.m = trunc i64 %.val17.val.i to i32
  %i.n = add i32 %i.m, 256
  %i.o = add i32 %i.n, %.val17.val18.i
  %i.p = getelementptr i8, ptr %1, i64 16
  store i32 %i.o, ptr %i.g, align 4
  %i.q = getelementptr i8, ptr %1, i64 20
  store i32 0, ptr %i.p, align 4
  %i.r = getelementptr i8, ptr %1, i64 24
  store i32 285212673, ptr %i.q, align 4
  %i.s = getelementptr i8, ptr %1, i64 28
  store i32 45336, ptr %i.r, align 4
  %i.t = getelementptr i8, ptr %1, i64 32
  store i32 1080033280, ptr %i.s, align 4
  %i.u = getelementptr i8, ptr %1, i64 44
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.u, i8 0, i64 12, i1 false)
  store i32 2046820356, ptr %i.t, align 4
  %i.v = getelementptr i8, ptr %1, i64 36
  store i32 1048608, ptr %i.v, align 4
  %i.w = getelementptr i8, ptr %1, i64 40
  store i32 0, ptr %i.w, align 4
  %i.x = getelementptr i8, ptr %1, i64 56
  %i.y = getelementptr i8, ptr %1, i64 60
  store i32 348127234, ptr %i.x, align 4
  %i.z = getelementptr i8, ptr %1, i64 64
  store i32 45336, ptr %i.y, align 4
  %i.aa = load ptr, ptr %i.h, align 8
  %i.ab = getelementptr i8, ptr %i.aa, i64 4848
  %.val.i = load ptr, ptr %i.ab, align 8          ; 2 uses
  %i.ac = getelementptr i8, ptr %.val.i, i64 8
  %.val.val.i = load i64, ptr %i.ac, align 8
  %i.ad = getelementptr i8, ptr %.val.i, i64 248
  %.val.val19.i = load i32, ptr %i.ad, align 8
  %i.ae = trunc i64 %.val.val.i to i32
  %i.af = add i32 %i.ae, 256
  %i.ag = add i32 %i.af, %.val.val19.i
  %i.ah = getelementptr i8, ptr %1, i64 68
  store i32 %i.ag, ptr %i.z, align 4
  %i.ai = getelementptr i8, ptr %1, i64 72
  store i32 0, ptr %i.ah, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %i.ai, %bb.b ], [ %i.a, %bb.a ] ; 6 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.0, i64 12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.aj, i8 0, i64 12, i1 false)
  store i32 2046820356, ptr %.0, align 4
  %i.ak = getelementptr i8, ptr %.0, i64 4
  store i32 137379840, ptr %i.ak, align 4
  %i.al = getelementptr i8, ptr %.0, i64 8
  store i32 208, ptr %i.al, align 4
  %i.am = getelementptr i8, ptr %.0, i64 24
  store i32 67108865, ptr %i.am, align 4
  %.110 = getelementptr i8, ptr %.0, i64 28       ; 3 uses
  %i.an = ptrtoint ptr %.110 to i64
  %i.ao = and i64 %i.an, 63
  %.not11 = icmp eq i64 %i.ao, 0
  br i1 %.not11, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c, %.lr.ph.preheader
  %.112 = phi ptr [ %.1, %.lr.ph.preheader ], [ %.110, %bb.c ] ; 2 uses
  store i32 0, ptr %.112, align 4
  %.1 = getelementptr i8, ptr %.112, i64 4        ; 3 uses
  %2 = ptrtoint ptr %.1 to i64
  %3 = and i64 %2, 63
  %.not = icmp eq i64 %3, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader, !llvm.loop !39

._crit_edge:                                      ; preds = %.lr.ph.preheader, %bb.c
  %.1.lcssa = phi ptr [ %.110, %bb.c ], [ %.1, %.lr.ph.preheader ]
  ret ptr %.1.lcssa
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @i915_gem_ww_ctx_init(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @i915_ggtt_pin(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__i915_gem_object_flush_map(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__i915_gem_object_release_map(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @i915_gem_ww_ctx_backoff(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @i915_gem_ww_ctx_fini(ptr noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(readwrite, target_mem: none)
define dso_local void @lrc_update_runtime(ptr nofree noundef captures(address) %0) local_unnamed_addr #10 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 184        ; 2 uses
  %i.b = getelementptr i8, ptr %0, i64 200        ; 2 uses
  %i.c = load i32, ptr %i.b, align 8              ; 2 uses
  %i.d = getelementptr i8, ptr %0, i64 152
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr i8, ptr %i.e, i64 140
  %i.g = load volatile i32, ptr %i.f, align 4     ; 3 uses
  store i32 %i.g, ptr %i.b, align 8
  %i.h = sub i32 %i.g, %i.c                       ; 2 uses
  %.not = icmp eq i32 %i.g, %i.c
  %i.i = icmp slt i32 %i.h, 0
  %or.cond = or i1 %.not, %i.i
  br i1 %or.cond, label %bb.e, label %bb.b, !prof !40

bb.b:                                             ; preds = %bb.a
  %i.j = zext nneg i32 %i.h to i64                ; 3 uses
  %i.k = load volatile i64, ptr %i.a, align 8     ; 2 uses
  %.not.i = icmp eq i64 %i.k, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = mul i64 %i.k, 7
  %i.m = lshr i64 %i.l, 3
  %i.n = add nuw nsw i64 %i.m, %i.j
  %i.o = and i64 %i.n, 2305843009213693951
  br label %ewma_runtime_add.exit

bb.d:                                             ; preds = %bb.b
  %i.p = shl nuw nsw i64 %i.j, 3
  br label %ewma_runtime_add.exit

ewma_runtime_add.exit:                            ; preds = %bb.c, %bb.d
  %i.q = phi i64 [ %i.o, %bb.c ], [ %i.p, %bb.d ]
  store volatile i64 %i.q, ptr %i.a, align 8
  %i.r = getelementptr i8, ptr %0, i64 192        ; 2 uses
  %i.s = load i64, ptr %i.r, align 8
  %i.t = add i64 %i.s, %i.j
  store i64 %i.t, ptr %i.r, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %ewma_runtime_add.exit
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__rcu_read_lock() local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__rcu_read_unlock() local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @__px_dma(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @i915_gem_object_create_lmem(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @i915_gem_object_create_shmem(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @intel_gt_needs_wa_22016122933(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @i915_gem_object_set_cache_coherency(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @i915_vma_instance(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @drm_gem_object_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @intel_timeline_create_from_engine(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @__intel_timeline_create(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @intel_ring_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @dma_fence_release(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @gen12_emit_aux_table_inv(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @intel_gt_needs_wa_16018031267(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @ww_mutex_lock_interruptible(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @ww_mutex_lock(ptr noundef, ptr noundef) local_unnamed_addr #3

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #1 = { fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #6 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #7 = { fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #8 = { cold noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #10 = { fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(readwrite, target_mem: none) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { noredzone "no-builtin-wcslen" }
attributes #13 = { noredzone nounwind "no-builtin-wcslen" }
attributes #14 = { nounwind }
attributes #15 = { cold noredzone nounwind "no-builtin-wcslen" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 8, !"cf-protection-branch", i32 1}
!2 = !{i32 4, !"function_return_thunk_extern", i32 1}
!3 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!4 = !{i32 1, !"Code Model", i32 2}
!5 = !{i32 1, !"stack-protector-guard-reg", !"gs"}
!6 = !{i32 1, !"stack-protector-guard-symbol", !"__ref_stack_chk_guard"}
!7 = !{i32 1, !"override-stack-alignment", i32 8}
!8 = !{i32 4, !"SkipRaxSetup", i32 1}
!9 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!10 = !{i64 18181}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = distinct !{!13, !12}
!14 = distinct !{!14, !12}
!15 = !{i8 0, i8 2}
!16 = !{}
!17 = !{i64 2148520676}
!18 = !{i64 20202}
!19 = !{i64 2148929322, i64 2148929361, i64 2148929382, i64 2148929419, i64 2148929442, i64 2148929451}
!20 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!21 = !{i64 2151371370}
!22 = !{ptr @dma_fence_release, ptr @drm_gem_object_free, ptr @intel_ring_free}
!23 = distinct !{null}
!24 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!25 = !{ptr @gen12_emit_indirect_ctx_rcs, ptr @gen12_emit_indirect_ctx_xcs}
!26 = distinct !{null}
!27 = distinct !{!27, !12}
!28 = !{i64 2148526958}
!29 = !{i64 24858}
!30 = !{i64 2148919491, i64 2148919530, i64 2148919551, i64 2148919588, i64 2148919611, i64 2148919482}
!31 = !{i64 2162233700, i64 2162233727, i64 2162234108, i64 2162234141, i64 2162234176, i64 2162234192, i64 2162235033, i64 2162235091, i64 2162235140, i64 2162234950, i64 2162234251, i64 2162234283}
!32 = !{i64 2162231639}
!33 = !{i64 2162242303, i64 2162242330, i64 2162242711, i64 2162242744, i64 2162242779, i64 2162242795, i64 2162243636, i64 2162243694, i64 2162243743, i64 2162243553, i64 2162242854, i64 2162242886}
!34 = !{i64 2162240242}
!35 = !{i64 2162363703, i64 2162363730, i64 2162364132, i64 2162364165, i64 2162364200, i64 2162364216, i64 2162369118, i64 2162369176, i64 2162369225, i64 2162369035, i64 2162364275, i64 2162364307}
!36 = !{i64 2162362052}
!37 = !{!"auto-init"}
!38 = distinct !{!38, !12}
!39 = distinct !{!39, !12}
!40 = !{!"branch_weights", i32 2002, i32 2000}
end_hunk_1
