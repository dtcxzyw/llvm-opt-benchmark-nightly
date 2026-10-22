Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/trace_probe?download=true
inline.NumInlined: 131
inline.NumDeleted: 60
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@finalize_fetch_insn:bb.a
  store i32 %i.ai, ptr %i.aj, align 8
  br label %bb.t

bb.p:                                             ; preds = %bb.n
  store i32 15, ptr %0, align 8
  %i.ak = load ptr, ptr %i.b, align 8
  %i.al = getelementptr i8, ptr %i.ak, i64 8
  %i.am = load i64, ptr %i.al, align 8
  %i.an = trunc i64 %i.am to i32
  %i.ao = getelementptr i8, ptr %0, i64 8
  store i32 %i.an, ptr %i.ao, align 8
  br label %bb.t

bb.q:                                             ; preds = %bb.n
  %i.ap = getelementptr i8, ptr %0, i64 16        ; 3 uses
  %i.aq = load i32, ptr %i.ap, align 8
  %.not = icmp eq i32 %i.aq, 0
  br i1 %.not, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ar = getelementptr i8, ptr %4, i64 92
  %i.as = load i32, ptr %i.ar, align 4
  tail call void @__trace_probe_log_err(i32 noundef %i.as, i32 noundef 34) #16
  br label %bb.ai

bb.s:                                             ; preds = %bb.q
  store i32 13, ptr %i.ap, align 8
  %i.at = load ptr, ptr %i.b, align 8
  %i.au = getelementptr i8, ptr %i.at, i64 8
  %i.av = load i64, ptr %i.au, align 8
  %i.aw = trunc i64 %i.av to i32
  %i.ax = getelementptr i8, ptr %0, i64 24
  store i32 %i.aw, ptr %i.ax, align 8
  br label %bb.t

bb.t:                                             ; preds = %bb.o, %bb.s, %bb.p, %bb.m
  %.1 = phi ptr [ %.07689, %bb.m ], [ %i.ap, %bb.s ], [ %0, %bb.o ], [ %0, %bb.p ] ; 7 uses
  %.not57 = icmp eq ptr %2, null
  br i1 %.not57, label %bb.ab, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ay = load ptr, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.az = load i8, ptr %2, align 1
  %.not.i = icmp eq i8 %i.az, 98
  br i1 %.not.i, label %bb.v, label %__parse_bitfield_probe_arg.exit

bb.v:                                             ; preds = %bb.u
  store ptr null, ptr %i.a, align 8, !annotation !14
  %i.ba = getelementptr i8, ptr %2, i64 1
  %i.bb = call i64 @simple_strtoul(ptr noundef %i.ba, ptr noundef nonnull %i.a, i32 noundef 0) #14 ; 3 uses
  %i.bc = icmp eq i64 %i.bb, 0
  br i1 %i.bc, label %select.unfold, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bd = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.be = load i8, ptr %i.bd, align 1
  %.not25.i = icmp eq i8 %i.be, 64
  br i1 %.not25.i, label %bb.x, label %select.unfold

bb.x:                                             ; preds = %bb.w
  %i.bf = getelementptr i8, ptr %i.bd, i64 1      ; 2 uses
  %i.bg = call i64 @simple_strtoul(ptr noundef %i.bf, ptr noundef nonnull %i.a, i32 noundef 0) #14
  %i.bh = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.bi = icmp eq ptr %i.bh, %i.bf
  br i1 %i.bi, label %select.unfold, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bj = load i8, ptr %i.bh, align 1
  %.not26.i = icmp eq i8 %i.bj, 47
  br i1 %.not26.i, label %bb.z, label %select.unfold

bb.z:                                             ; preds = %bb.y
  %i.bk = getelementptr i8, ptr %.1, i64 16       ; 3 uses
  %i.bl = load i32, ptr %i.bk, align 8
  %.not27.i = icmp eq i32 %i.bl, 0
  br i1 %.not27.i, label %bb.aa, label %select.unfold

bb.aa:                                            ; preds = %bb.z
  store i32 20, ptr %i.bk, align 8
  %i.bm = getelementptr i8, ptr %i.ay, i64 8      ; 4 uses
  %i.bn = load i64, ptr %i.bm, align 8
  %i.bo = shl i64 %i.bn, 3
  %i.bp = add i64 %i.bg, %i.bb                    ; 2 uses
  %i.bq = sub i64 %i.bo, %i.bp
  %i.br = trunc i64 %i.bq to i8
  %i.bs = getelementptr i8, ptr %.1, i64 24
  %i.bt = getelementptr i8, ptr %.1, i64 25
  store i8 %i.br, ptr %i.bt, align 1
  %i.bu = load i64, ptr %i.bm, align 8
  %i.bv = shl i64 %i.bu, 3
  %i.bw = sub i64 %i.bv, %i.bb
  %i.bx = trunc i64 %i.bw to i8
  %i.by = getelementptr i8, ptr %.1, i64 26
  store i8 %i.bx, ptr %i.by, align 2
  %i.bz = load i64, ptr %i.bm, align 8
  %i.ca = trunc i64 %i.bz to i8
  store i8 %i.ca, ptr %i.bs, align 8
  %i.cb = load i64, ptr %i.bm, align 8
  %i.cc = shl i64 %i.cb, 3
  %i.cd = icmp ult i64 %i.cc, %i.bp
  br i1 %i.cd, label %select.unfold, label %__parse_bitfield_probe_arg.exit

__parse_bitfield_probe_arg.exit:                  ; preds = %bb.aa, %bb.u
  %.4 = phi ptr [ %i.bk, %bb.aa ], [ %.1, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %bb.ab

select.unfold:                                    ; preds = %bb.aa, %bb.v, %bb.x, %bb.w, %bb.y, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %i.ce = getelementptr i8, ptr %4, i64 92
  %i.cf = load i32, ptr %i.ce, align 4
  %i.cg = add i32 %i.cf, %3
  call void @__trace_probe_log_err(i32 noundef %i.cg, i32 noundef 47) #16
  br label %bb.ai

bb.ab:                                            ; preds = %__parse_bitfield_probe_arg.exit, %bb.t
  %.2 = phi ptr [ %.1, %bb.t ], [ %.4, %__parse_bitfield_probe_arg.exit ] ; 3 uses
  %i.ch = getelementptr i8, ptr %1, i64 16        ; 2 uses
  %i.ci = load i32, ptr %i.ch, align 8
  %.not59 = icmp eq i32 %i.ci, 0
  br i1 %.not59, label %bb.ah, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cj = load i32, ptr %.1, align 8
  switch i32 %i.cj, label %bb.ad [
    i32 14, label %bb.ae
    i32 16, label %bb.ae
    i32 17, label %bb.ae
  ]

bb.ad:                                            ; preds = %bb.ac
  %i.ck = getelementptr i8, ptr %4, i64 92
  %i.cl = load i32, ptr %i.ck, align 4
  %i.cm = add i32 %i.cl, %3
  call void @__trace_probe_log_err(i32 noundef %i.cm, i32 noundef 45) #16
  br label %bb.ai

bb.ae:                                            ; preds = %bb.ac, %bb.ac, %bb.ac
  %i.cn = getelementptr i8, ptr %.2, i64 16       ; 3 uses
  %i.co = load i32, ptr %i.cn, align 8
  %.not63 = icmp eq i32 %i.co, 0
  br i1 %.not63, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cp = getelementptr i8, ptr %4, i64 92
  %i.cq = load i32, ptr %i.cp, align 4
  call void @__trace_probe_log_err(i32 noundef %i.cq, i32 noundef 34) #16
  br label %bb.ai

bb.ag:                                            ; preds = %bb.ae
  store i32 21, ptr %i.cn, align 8
  %i.cr = load i32, ptr %i.ch, align 8
  %i.cs = getelementptr i8, ptr %.2, i64 24
  store i32 %i.cr, ptr %i.cs, align 8
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.ab
  %.3 = phi ptr [ %.2, %bb.ab ], [ %i.cn, %bb.ag ]
  %i.ct = getelementptr i8, ptr %.3, i64 16
  store i32 23, ptr %i.ct, align 8
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.af, %bb.ad, %select.unfold, %bb.r, %bb.h, %bb.f, %bb.d
  %.0 = phi i32 [ -22, %bb.f ], [ -22, %bb.h ], [ -22, %select.unfold ], [ -22, %bb.ad ], [ -7, %bb.af ], [ 0, %bb.ah ], [ -22, %bb.d ], [ -7, %bb.r ]
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc ptr @find_fetch_type(ptr noundef %0, i64 noundef range(i64 0, 4294967296) %1) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = and i64 %1, 16
  %.not25 = icmp eq i64 %i.b, 0
  br i1 %.not25, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef dereferenceable(7) @.str.114) #14
  %.not26 = icmp eq i32 %i.c, 0
  br i1 %.not26, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef dereferenceable(7) @.str.115) #14
  %.not27 = icmp eq i32 %i.d, 0
  br i1 %.not27, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b, %bb.a
  %spec.store.select = phi ptr [ %0, %bb.d ], [ %0, %bb.b ], [ @.str.116, %bb.a ] ; 19 uses
  %i.e = load i8, ptr %spec.store.select, align 1
  %i.f = icmp eq i8 %i.e, 98
  br i1 %i.f, label %bb.f, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.e
  %i.g = tail call i32 @strcmp(ptr noundef %spec.store.select, ptr noundef dereferenceable(7) @.str.113) #14
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %.loopexit, label %.preheader.1

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i64 0, ptr %i.a, align 8, !annotation !14
  %i.i = tail call ptr @strchr(ptr noundef %spec.store.select, i32 noundef 47) #14 ; 2 uses
  %.not29 = icmp eq ptr %i.i, null
  br i1 %.not29, label %.loopexit.sink.split, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = getelementptr i8, ptr %i.i, i64 1
  %i.k = call i32 @kstrtoull(ptr noundef %i.j, i32 noundef 0, ptr noundef nonnull %i.a) #14
  %.not30 = icmp eq i32 %i.k, 0
  br i1 %.not30, label %bb.h, label %.loopexit.sink.split

bb.h:                                             ; preds = %bb.g
  %i.l = load i64, ptr %i.a, align 8              ; 2 uses
  %i.m = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.l)
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %.split, label %.loopexit.sink.split

.split:                                           ; preds = %bb.h
  %i.o = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.l, i1 true)
  switch i64 %i.o, label %.loopexit.sink.split [
    i64 3, label %bb.l
    i64 4, label %bb.i
    i64 5, label %bb.j
    i64 6, label %bb.k
  ]

bb.i:                                             ; preds = %.split
  br label %bb.l

bb.j:                                             ; preds = %.split
  br label %bb.l

bb.k:                                             ; preds = %.split
  br label %bb.l

bb.l:                                             ; preds = %.split, %bb.k, %bb.j, %bb.i
  %.str.120.sink = phi ptr [ @.str.120, %bb.k ], [ @.str.119, %bb.j ], [ @.str.118, %bb.i ], [ @.str.117, %.split ]
  %i.p = call fastcc ptr @find_fetch_type(ptr noundef %.str.120.sink, i64 noundef %1) #16
  br label %.loopexit.sink.split

.preheader.1:                                     ; preds = %.preheader.preheader
  %i.q = tail call i32 @strcmp(ptr noundef %spec.store.select, ptr noundef dereferenceable(8) @.str.122) #14
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %.loopexit, label %.preheader.2

.preheader.2:                                     ; preds = %.preheader.1
  %i.s = tail call i32 @strcmp(ptr noundef %spec.store.select, ptr noundef dereferenceable(7) @.str.115) #14
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %.loopexit, label %.preheader.3

.preheader.3:                                     ; preds = %.preheader.2
  %i.u = tail call i32 @strcmp(ptr noundef %spec.store.select, ptr noundef dereferenceable(3) @.str.117) #14
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %.loopexit, label %.preheader.4

.preheader.4:                                     ; preds = %.preheader.3
  %i.w = tail call i32 @strcmp(ptr noundef %spec.store.select, ptr noundef dereferenceable(4) @.str.118) #14
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %.loopexit, label %.preheader.5

.preheader.5:                                     ; preds = %.preheader.4
  %i.y = tail call i32 @strcmp(ptr noundef %spec.store.select, ptr noundef dereferenceable(4) @.str.119) #14
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %.loopexit, label %.preheader.6

.preheader.6:                                     ; preds = %.preheader.5
  %i.aa = tail call i32 @strcmp(ptr noundef %spec.store.select, ptr noundef dereferenceable(4) @.str.120) #14
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %.loopexit, label %.preheader.7

.preheader.7:                                     ; preds = %.preheader.6
  %i.ac = tail call i32 @strcmp(ptr noundef %spec.store.select, ptr noundef dereferenceable(3) @.str.123) #14
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %.loopexit, label %.preheader.8

.preheader.8:                                     ; preds = %.preheader.7
  %i.ae = tail call i32 @strcmp(ptr noundef %spec.store.select, ptr noundef dereferenceable(4) @.str.124) #14
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %.loopexit, label %.preheader.9

.preheader.9:                                     ; preds = %.preheader.8
  %i.ag = tail call i32 @strcmp(ptr noundef %spec.store.select, ptr noundef dereferenceable(4) @.str.125) #14
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %.loopexit, label %.preheader.10

.preheader.10:                                    ; preds = %.preheader.9
  %i.ai = tail call i32 @strcmp(ptr noundef %spec.store.select, ptr noundef dereferenceable(4) @.str.126) #14
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %.loopexit, label %.preheader.11

.preheader.11:                                    ; preds = %.preheader.10
  %i.ak = tail call i32 @strcmp(ptr noundef %spec.store.select, ptr noundef dereferenceable(3) @.str.127) #14
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %.loopexit, label %.preheader.12

.preheader.12:                                    ; preds = %.preheader.11
  %i.am = tail call i32 @strcmp(ptr noundef %spec.store.select, ptr noundef dereferenceable(4) @.str.128) #14
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %.loopexit, label %.preheader.13

.preheader.13:                                    ; preds = %.preheader.12
  %i.ao = tail call i32 @strcmp(ptr noundef %spec.store.select, ptr noundef dereferenceable(4) @.str.129) #14
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %.loopexit, label %.preheader.14

.preheader.14:                                    ; preds = %.preheader.13
  %i.aq = tail call i32 @strcmp(ptr noundef %spec.store.select, ptr noundef dereferenceable(4) @.str.116) #14
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %.loopexit, label %.preheader.15

.preheader.15:                                    ; preds = %.preheader.14
  %i.as = tail call i32 @strcmp(ptr noundef %spec.store.select, ptr noundef dereferenceable(5) @.str.130) #14
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %.loopexit, label %.preheader.16

.preheader.16:                                    ; preds = %.preheader.15
  %i.au = tail call i32 @strcmp(ptr noundef %spec.store.select, ptr noundef dereferenceable(7) @.str.114) #14
  %i.av = icmp eq i32 %i.au, 0
  %spec.select = select i1 %i.av, ptr getelementptr inbounds nuw (i8, ptr @probe_fetch_types, i64 768), ptr null
  br label %.loopexit

.loopexit.sink.split:                             ; preds = %.split, %bb.h, %bb.g, %bb.f, %bb.l
  %.1.ph = phi ptr [ %i.p, %bb.l ], [ null, %bb.f ], [ null, %bb.g ], [ null, %bb.h ], [ null, %.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader.16, %.loopexit.sink.split, %.preheader.preheader, %.preheader.1, %.preheader.2, %.preheader.3, %.preheader.4, %.preheader.5, %.preheader.6, %.preheader.7, %.preheader.8, %.preheader.9, %.preheader.10, %.preheader.11, %.preheader.12, %.preheader.13, %.preheader.14, %.preheader.15, %bb.c, %bb.d
  %.1 = phi ptr [ getelementptr inbounds nuw (i8, ptr @probe_fetch_types, i64 384), %.preheader.8 ], [ %.1.ph, %.loopexit.sink.split ], [ null, %bb.c ], [ null, %bb.d ], [ @probe_fetch_types, %.preheader.preheader ], [ getelementptr inbounds nuw (i8, ptr @probe_fetch_types, i64 528), %.preheader.11 ], [ getelementptr inbounds nuw (i8, ptr @probe_fetch_types, i64 48), %.preheader.1 ], [ %spec.select, %.preheader.16 ], [ getelementptr inbounds nuw (i8, ptr @probe_fetch_types, i64 96), %.preheader.2 ], [ getelementptr inbounds nuw (i8, ptr @probe_fetch_types, i64 432), %.preheader.9 ], [ getelementptr inbounds nuw (i8, ptr @probe_fetch_types, i64 144), %.preheader.3 ], [ getelementptr inbounds nuw (i8, ptr @probe_fetch_types, i64 720), %.preheader.15 ], [ getelementptr inbounds nuw (i8, ptr @probe_fetch_types, i64 192), %.preheader.4 ], [ getelementptr inbounds nuw (i8, ptr @probe_fetch_types, i64 576), %.preheader.12 ], [ getelementptr inbounds nuw (i8, ptr @probe_fetch_types, i64 240), %.preheader.5 ], [ getelementptr inbounds nuw (i8, ptr @probe_fetch_types, i64 672), %.preheader.14 ], [ getelementptr inbounds nuw (i8, ptr @probe_fetch_types, i64 288), %.preheader.6 ], [ getelementptr inbounds nuw (i8, ptr @probe_fetch_types, i64 480), %.preheader.10 ], [ getelementptr inbounds nuw (i8, ptr @probe_fetch_types, i64 336), %.preheader.7 ], [ getelementptr inbounds nuw (i8, ptr @probe_fetch_types, i64 624), %.preheader.13 ]
  ret ptr %.1
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @kstrtoull(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @regs_query_register_offset(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree noredzone nosync nounwind null_pointer_is_valid willreturn memory(argmem: read)
declare dso_local ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc i32 @__store_entry_arg(ptr nofree noundef captures(none) %0, i32 noundef %1) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 40         ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %_kzalloc_noprof.exit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.c = load i32, ptr %i.b, align 8
  %i.d = add i32 %i.c, -1                         ; 2 uses
  %.not95 = icmp eq i32 %i.d, 0
  br i1 %.not95, label %.critedge79, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.e = getelementptr i8, ptr %i.b, i64 8        ; 2 uses
  br label %bb.d

_kzalloc_noprof.exit:                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %i.g = load i32, ptr %i.f, align 8
  %i.h = shl i32 %i.g, 1
  %i.i = or disjoint i32 %i.h, 1
  %i.j = zext i32 %i.i to i64
  %i.k = shl nuw nsw i64 %i.j, 4
  %i.l = or disjoint i64 %i.k, 8
  %i.m = tail call noalias align 8 ptr @__kmalloc_noprof(i64 noundef %i.l, i32 noundef 3520) #15 ; 8 uses
  %.not70 = icmp eq ptr %i.m, null
  br i1 %.not70, label %.critedge79, label %.lr.ph94

.lr.ph94:                                         ; preds = %_kzalloc_noprof.exit
  %i.n = load i32, ptr %i.f, align 8
  %i.o = shl i32 %i.n, 1                          ; 4 uses
  %i.p = or disjoint i32 %i.o, 1
  store i32 %i.p, ptr %i.m, align 8
  %i.q = getelementptr i8, ptr %i.m, i64 8        ; 5 uses
  %i.r = and i32 %i.o, 2
  %i.s = icmp ult i32 %i.o, 3
  br i1 %i.s, label %.epil.preheader, label %.lr.ph94.new

.lr.ph94.new:                                     ; preds = %.lr.ph94
  %unroll_iter = and i32 %i.o, -4
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph94.new
  %.06593 = phi i32 [ 0, %.lr.ph94.new ], [ %i.ae, %bb.b ] ; 5 uses
  %niter = phi i32 [ 0, %.lr.ph94.new ], [ %niter.next.3, %bb.b ]
  %i.t = sext i32 %.06593 to i64
  %i.u = getelementptr [16 x i8], ptr %i.q, i64 %i.t
  store i32 23, ptr %i.u, align 8
  %i.v = sext i32 %.06593 to i64
  %i.w = getelementptr [16 x i8], ptr %i.q, i64 %i.v
  %i.x = getelementptr i8, ptr %i.w, i64 16
  store i32 23, ptr %i.x, align 8
  %i.y = sext i32 %.06593 to i64
  %i.z = getelementptr [16 x i8], ptr %i.q, i64 %i.y
  %i.aa = getelementptr i8, ptr %i.z, i64 32
  store i32 23, ptr %i.aa, align 8
  %i.ab = sext i32 %.06593 to i64
  %i.ac = getelementptr [16 x i8], ptr %i.q, i64 %i.ab
  %i.ad = getelementptr i8, ptr %i.ac, i64 48
  store i32 23, ptr %i.ad, align 8
  %i.ae = add nuw i32 %.06593, 4                  ; 2 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3.not = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %.epil.preheader, label %bb.b, !llvm.loop !51

.epil.preheader:                                  ; preds = %bb.b, %.lr.ph94
  %.06593.epil.init = phi i32 [ 0, %.lr.ph94 ], [ %i.ae, %bb.b ]
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %.06593.epil = phi i32 [ %.06593.epil.init, %.epil.preheader ], [ %i.ah, %bb.c ] ; 2 uses
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ] ; 2 uses
  %i.af = sext i32 %.06593.epil to i64
  %i.ag = getelementptr [16 x i8], ptr %i.q, i64 %i.af
  store i32 23, ptr %i.ag, align 8
  %i.ah = add nuw i32 %.06593.epil, 1
  %epil.iter.next = add i32 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i32 %epil.iter, %i.r
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.c, !llvm.loop !52

._crit_edge:                                      ; preds = %bb.c
  store ptr %i.m, ptr %i.a, align 8
  %i.ai = getelementptr i8, ptr %i.m, i64 8
  store i32 7, ptr %i.ai, align 8
  %i.aj = getelementptr i8, ptr %i.m, i64 16
  store i32 %1, ptr %i.aj, align 8
  %i.ak = getelementptr i8, ptr %i.m, i64 24
  store i32 19, ptr %i.ak, align 8
  %i.al = getelementptr i8, ptr %i.m, i64 36
  store i32 0, ptr %i.al, align 4
  br label %.critedge79

bb.d:                                             ; preds = %.lr.ph, %bb.h
  %.192 = phi i32 [ 0, %.lr.ph ], [ %i.av, %bb.h ] ; 4 uses
  %i.am = sext i32 %.192 to i64
  %i.an = getelementptr [16 x i8], ptr %i.e, i64 %i.am ; 8 uses
  %i.ao = load i32, ptr %i.an, align 8
  switch i32 %i.ao, label %bb.e [
    i32 23, label %bb.i
    i32 7, label %.critedge81
  ], !prof !55

bb.e:                                             ; preds = %bb.d
  tail call void asm sideeffect "662: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 662b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 662) #17, !srcloc !56
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.11, ptr @.str.137, i32 983, i32 2307, i64 16) #17, !srcloc !57
  tail call void asm sideeffect "663: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 663b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 663) #17, !srcloc !58
  br label %.critedge79

.critedge81:                                      ; preds = %bb.d
  %i.ap = getelementptr i8, ptr %i.an, i64 8
  %i.aq = load i32, ptr %i.ap, align 8
  %.not76 = icmp eq i32 %i.aq, %1
  br i1 %.not76, label %bb.f, label %bb.h

bb.f:                                             ; preds = %.critedge81
  %i.ar = getelementptr i8, ptr %i.an, i64 16
  %i.as = load i32, ptr %i.ar, align 8
  %.not77 = icmp eq i32 %i.as, 19
  br i1 %.not77, label %.critedge83, label %bb.g, !prof !17

bb.g:                                             ; preds = %bb.f
  tail call void asm sideeffect "664: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 664b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 664) #17, !srcloc !59
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.11, ptr @.str.137, i32 989, i32 2307, i64 16) #17, !srcloc !60
  tail call void asm sideeffect "665: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 665b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 665) #17, !srcloc !61
  br label %.critedge79

.critedge83:                                      ; preds = %bb.f
  %i.at = getelementptr i8, ptr %i.an, i64 28
  %i.au = load i32, ptr %i.at, align 4
  br label %.critedge79

bb.h:                                             ; preds = %.critedge81
  %i.av = add i32 %.192, 2                        ; 2 uses
  %i.aw = icmp ult i32 %i.av, %i.d
  br i1 %i.aw, label %bb.d, label %.critedge79, !llvm.loop !53

bb.i:                                             ; preds = %bb.d
  %.not73 = icmp eq i32 %.192, 0
  br i1 %.not73, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ax = add i32 %.192, -1
  %i.ay = sext i32 %i.ax to i64
  %i.az = getelementptr [16 x i8], ptr %i.e, i64 %i.ay ; 2 uses
  %i.ba = load i32, ptr %i.az, align 8
  %.not74 = icmp eq i32 %i.ba, 19
  br i1 %.not74, label %.critedge85, label %bb.k, !prof !17

bb.k:                                             ; preds = %bb.j
  tail call void asm sideeffect "666: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 666b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 666) #17, !srcloc !62
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.11, ptr @.str.137, i32 1000, i32 2307, i64 16) #17, !srcloc !63
  tail call void asm sideeffect "667: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 667b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 667) #17, !srcloc !64
  br label %.critedge79

.critedge85:                                      ; preds = %bb.j
  %i.bb = getelementptr i8, ptr %i.az, i64 12
  %i.bc = load i32, ptr %i.bb, align 4
  %i.bd = add i32 %i.bc, 8
  br label %bb.l

bb.l:                                             ; preds = %.critedge85, %bb.i
  %.066 = phi i32 [ %i.bd, %.critedge85 ], [ 8, %bb.i ] ; 2 uses
  store i32 7, ptr %i.an, align 8
  %i.be = getelementptr i8, ptr %i.an, i64 8
  store i32 %1, ptr %i.be, align 8
  %i.bf = getelementptr i8, ptr %i.an, i64 16
  store i32 19, ptr %i.bf, align 8
  %i.bg = getelementptr i8, ptr %i.an, i64 28
  store i32 %.066, ptr %i.bg, align 4
  br label %.critedge79

.critedge79:                                      ; preds = %bb.h, %.preheader, %bb.k, %bb.g, %bb.e, %_kzalloc_noprof.exit, %bb.l, %.critedge83, %._crit_edge
  %.0 = phi i32 [ -22, %bb.k ], [ -22, %bb.e ], [ %i.au, %.critedge83 ], [ -22, %bb.g ], [ -12, %_kzalloc_noprof.exit ], [ %.066, %bb.l ], [ 0, %._crit_edge ], [ -28, %.preheader ], [ -28, %bb.h ]
  ret i32 %.0
}
end_hunk_0
