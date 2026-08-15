inline.NumInlined: 89
inline.NumDeleted: 49
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@intel_context_migrate_copy:bb.a
  br i1 %.not224, label %.critedge237, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.hh = getelementptr i8, ptr %i.hg, i64 24
  %i.hi = load i32, ptr %i.hh, align 8
  %i.hj = icmp ne i32 %i.hi, 0
  %i.hk = load ptr, ptr %10, align 8              ; 2 uses
  %i.hl = icmp ne ptr %i.hk, null
  %or.cond6 = select i1 %i.hj, i1 %i.hl, i1 false
  br i1 %or.cond6, label %bb.bn, label %.critedge237

bb.bn:                                            ; preds = %bb.bm
  %i.hm = getelementptr i8, ptr %i.hk, i64 24
  %i.hn = load i32, ptr %i.hm, align 8
  %.not225 = icmp ne i32 %i.hn, 0                 ; 2 uses
  %brmerge.not = select i1 %.not225, i1 %i.gz, i1 false
  br i1 %brmerge.not, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.ho = load ptr, ptr %11, align 8              ; 2 uses
  %.not226 = icmp eq ptr %i.ho, null
  br i1 %.not226, label %.critedge237, label %.split

.split:                                           ; preds = %bb.bo
  %i.hp = getelementptr i8, ptr %i.ho, i64 24
  %i.hq = load i32, ptr %i.hp, align 8
  %.not227 = icmp eq i32 %i.hq, 0
  br i1 %.not227, label %.critedge237, label %.critedge, !prof !16

bb.bp:                                            ; preds = %bb.bn
  br i1 %.not225, label %.critedge, label %.critedge237, !prof !19

.critedge237:                                     ; preds = %.split, %bb.bl, %bb.bm, %bb.bo, %bb.bp
  tail call void asm sideeffect "957: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 957b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 957) #8, !srcloc !40
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 905, i32 2305, i64 16) #8, !srcloc !41
  tail call void asm sideeffect "958: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 958b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 958) #8, !srcloc !42
  br label %.loopexit

.critedge:                                        ; preds = %bb.bp, %.split
  %i.hr = tail call i32 @__SCT__cond_resched() #9 ; 0 uses
  %i.hs = tail call ptr @i915_request_create(ptr noundef %0) #9 ; 3 uses
  %i.ht = icmp ugt ptr %i.hs, inttoptr (i64 -4096 to ptr)
  br i1 %i.ht, label %._crit_edge, label %bb.q

.loopexit:                                        ; preds = %i915_request_get.exit, %._crit_edge, %bb.bf, %bb.bj, %bb.bk, %bb.bi, %bb.bg, %bb.bh, %.critedge237
  %.3170.ph = phi i32 [ -22, %.critedge237 ], [ 0, %bb.bh ], [ 0, %bb.bg ], [ 0, %bb.bi ], [ 0, %bb.bk ], [ 0, %bb.bj ], [ 0, %bb.bf ], [ %i.cf, %._crit_edge ], [ %.2169, %i915_request_get.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #8
  ret i32 %.3170.ph
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @i915_request_create(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @i915_request_await_deps(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc i32 @emit_pte(ptr noundef %0, ptr nofree noundef captures(none) %1, i32 noundef %2, i1 noundef zeroext %3, i64 noundef range(i64 0, 16777217) %4, i32 noundef %5) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 1648
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr i8, ptr %i.d, i64 28
  %i.f = load i64, ptr %i.e, align 4
  %i.g = and i64 %i.f, 16
  %.not = icmp eq i64 %i.g, 0                     ; 2 uses
  %i.h = getelementptr i8, ptr %0, i64 88
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr i8, ptr %i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = getelementptr i8, ptr %i.k, i64 568
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = select i1 %3, i32 2, i32 0
  %i.o = tail call i64 %i.m(i64 noundef 0, i32 noundef %2, i32 noundef %i.n) #9 ; 2 uses
  %i.p = getelementptr i8, ptr %0, i64 96         ; 3 uses
  %i.q = load ptr, ptr %i.p, align 8              ; 4 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = lshr i64 %4, 5
  %i.s = and i64 %i.r, 983040
  %i.t = or disjoint i64 %i.s, 25165824
  %spec.select = select i1 %3, i32 64, i32 1024
  %spec.select119 = select i1 %3, i32 65536, i32 4096
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.u = lshr i64 %4, 9
  %i.v = and i64 %i.u, 65528
  %i.w = or disjoint i64 %i.v, 16777216
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.0108 = phi i64 [ %i.w, %bb.c ], [ %i.t, %bb.b ] ; 2 uses
  %.0101 = phi i32 [ 1024, %bb.c ], [ %spec.select, %bb.b ] ; 3 uses
  %.099 = phi i32 [ 4096, %bb.c ], [ %spec.select119, %bb.b ] ; 3 uses
  %i.x = getelementptr i8, ptr %0, i64 80
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = getelementptr i8, ptr %i.y, i64 57
  %i.aa = load i8, ptr %i.z, align 1
  %i.ab = tail call ptr @intel_ring_begin(ptr noundef %0, i32 noundef 6) #9 ; 7 uses
  %i.ac = icmp ugt ptr %i.ab, inttoptr (i64 -4096 to ptr)
  br i1 %i.ac, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = trunc i64 %i.ad to i32
  br label %bb.u

bb.f:                                             ; preds = %bb.d
  %i.af = zext i8 %i.aa to i64
  %i.ag = shl nuw nsw i64 %i.af, 32
  %i.ah = add nuw nsw i64 %i.ag, %.0108           ; 2 uses
  %.val121 = load ptr, ptr %i.p, align 8          ; 3 uses
  %i.ai = getelementptr i8, ptr %0, i64 476       ; 2 uses
  %.val122 = load i32, ptr %i.ai, align 4
  %i.aj = getelementptr i8, ptr %.val121, i64 40
  %i.ak = load i32, ptr %i.aj, align 8
  %i.al = sub i32 %i.ak, %.val122
  %i.am = lshr i32 %i.al, 2
  %narrow.i = add nuw nsw i32 %i.am, 5
  %i.an = tail call i32 @llvm.umin.i32(i32 range(i32 0, 1025) %.0101, i32 %narrow.i)
  %i.ao = getelementptr i8, ptr %.val121, i64 44
  %i.ap = load i32, ptr %i.ao, align 4
  %i.aq = getelementptr i8, ptr %.val121, i64 36
  %i.ar = load i32, ptr %i.aq, align 4
  %i.as = sub i32 %i.ap, %i.ar
  %i.at = lshr i32 %i.as, 2
  %narrow17.i = add nuw nsw i32 %i.at, 5
  %i.au = tail call range(i32 0, 1025) i32 @llvm.umin.i32(i32 %i.an, i32 %narrow17.i)
  %i.av = getelementptr i8, ptr %i.ab, i64 4
  store i32 270532608, ptr %i.ab, align 4
  %i.aw = trunc nuw nsw i64 %.0108 to i32
  %i.ax = getelementptr i8, ptr %i.ab, i64 8
  store i32 %i.aw, ptr %i.av, align 4
  %i.ay = lshr i64 %i.ah, 32
  %i.az = trunc nuw nsw i64 %i.ay to i32
  %i.ba = getelementptr i8, ptr %i.ab, i64 12
  store i32 %i.az, ptr %i.ax, align 4
  %i.bb = getelementptr i8, ptr %i.q, i64 16      ; 2 uses
  %i.bc = getelementptr i8, ptr %i.q, i64 36      ; 2 uses
  %i.bd = tail call range(i32 12, 33) i32 @llvm.cttz.i32(i32 %.099, i1 true)
  %i.be = getelementptr i8, ptr %1, i64 8         ; 5 uses
  %i.bf = zext nneg i32 %.099 to i64
  %i.bg = getelementptr i8, ptr %1, i64 16        ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.t, %bb.f
  %.1109 = phi i64 [ %i.ah, %bb.f ], [ %i.de, %bb.t ] ; 4 uses
  %.0102 = phi i32 [ %i.au, %bb.f ], [ %.2104, %bb.t ] ; 2 uses
  %.0100 = phi i32 [ 0, %bb.f ], [ %i.df, %bb.t ] ; 2 uses
  %.096 = phi ptr [ %i.ab, %bb.f ], [ %.298, %bb.t ] ; 4 uses
  %.095 = phi ptr [ %i.ba, %bb.f ], [ %i.dd, %bb.t ] ; 4 uses
  %i.bh = ptrtoint ptr %.095 to i64
  %i.bi = ptrtoint ptr %.096 to i64
  %i.bj = sub i64 %i.bh, %i.bi
  %i.bk = ashr exact i64 %i.bj, 2                 ; 2 uses
  %i.bl = zext nneg i32 %.0102 to i64
  %.not116 = icmp slt i64 %i.bk, %i.bl
  br i1 %.not116, label %bb.n, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bm = load i32, ptr %.096, align 4
  %i.bn = trunc i64 %i.bk to i32
  %i.bo = add i32 %i.bn, -2
  %i.bp = add i32 %i.bo, %i.bm
  store i32 %i.bp, ptr %.096, align 4
  %i.bq = getelementptr i8, ptr %.095, i64 4
  store i32 0, ptr %.095, align 4
  %i.br = load ptr, ptr %i.bb, align 8
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = ptrtoint ptr %i.br to i64
  %i.bu = sub i64 %i.bs, %i.bt
  %i.bv = trunc i64 %i.bu to i32
  store i32 %i.bv, ptr %i.bc, align 4
  %i.bw = tail call i32 @intel_ring_update_space(ptr noundef %i.q) #9 ; 0 uses
  %i.bx = tail call ptr @intel_ring_begin(ptr noundef %0, i32 noundef 6) #9 ; 6 uses
  %i.by = icmp ugt ptr %i.bx, inttoptr (i64 -4096 to ptr)
  br i1 %i.by, label %.thread, label %bb.i

.thread:                                          ; preds = %bb.h
  %i.bz = ptrtoint ptr %i.bx to i64
  %i.ca = trunc i64 %i.bz to i32
  br label %bb.u

bb.i:                                             ; preds = %bb.h
  br i1 %.not, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cb = and i32 %.0100, 2093056                 ; 2 uses
  %i.cc = icmp eq i32 %i.cb, 0
  br i1 %i.cc, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.cd = add i64 %.1109, -1
  %6 = or i64 %i.cd, 65535
  %7 = add i64 %6, 1
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.ce = sub nuw nsw i32 2097152, %i.cb
  %i.cf = lshr i32 %i.ce, %i.bd
  %i.cg = shl nuw nsw i32 %i.cf, 1
  br label %bb.m

bb.m:                                             ; preds = %bb.i, %bb.l, %bb.k
  %.2110 = phi i64 [ %7, %bb.k ], [ %.1109, %bb.l ], [ %.1109, %bb.i ] ; 2 uses
  %.0 = phi i32 [ %.0101, %bb.k ], [ %i.cg, %bb.l ], [ %.0101, %bb.i ]
  %.val = load ptr, ptr %i.p, align 8             ; 3 uses
  %.val120 = load i32, ptr %i.ai, align 4
  %i.ch = getelementptr i8, ptr %.val, i64 40
  %i.ci = load i32, ptr %i.ch, align 8
  %i.cj = sub i32 %i.ci, %.val120
  %i.ck = lshr i32 %i.cj, 2
  %narrow.i123 = add nuw nsw i32 %i.ck, 5
  %i.cl = tail call i32 @llvm.umin.i32(i32 range(i32 0, 1025) %.0, i32 %narrow.i123)
  %i.cm = getelementptr i8, ptr %.val, i64 44
  %i.cn = load i32, ptr %i.cm, align 4
  %i.co = getelementptr i8, ptr %.val, i64 36
  %i.cp = load i32, ptr %i.co, align 4
  %i.cq = sub i32 %i.cn, %i.cp
  %i.cr = lshr i32 %i.cq, 2
  %narrow17.i124 = add nuw nsw i32 %i.cr, 5
  %i.cs = tail call range(i32 0, 1025) i32 @llvm.umin.i32(i32 %i.cl, i32 %narrow17.i124)
  %i.ct = getelementptr i8, ptr %i.bx, i64 4
  store i32 270532608, ptr %i.bx, align 4
  store i64 %.2110, ptr %i.ct, align 4
  %i.cu = getelementptr i8, ptr %i.bx, i64 12
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.g
  %.4 = phi i64 [ %.2110, %bb.m ], [ %.1109, %bb.g ]
  %.2104 = phi i32 [ %i.cs, %bb.m ], [ %.0102, %bb.g ]
  %.298 = phi ptr [ %i.bx, %bb.m ], [ %.096, %bb.g ] ; 4 uses
  %.2 = phi ptr [ %i.cu, %bb.m ], [ %.095, %bb.g ] ; 4 uses
  %i.cv = load i64, ptr %i.be, align 8
  %i.cw = or i64 %i.cv, %i.o
  %i.cx = trunc i64 %i.cw to i32
  %i.cy = getelementptr i8, ptr %.2, i64 4
  store i32 %i.cx, ptr %.2, align 4
  %i.cz = load i64, ptr %i.be, align 8
  %i.da = or i64 %i.cz, %i.o
  %i.db = lshr i64 %i.da, 32
  %i.dc = trunc nuw i64 %i.db to i32
  %i.dd = getelementptr i8, ptr %.2, i64 8        ; 3 uses
  store i32 %i.dc, ptr %i.cy, align 4
  %i.de = add i64 %.4, 8
  %i.df = add i32 %.0100, %.099                   ; 3 uses
  %i.dg = load i64, ptr %i.be, align 8
  %i.dh = add i64 %i.dg, %i.bf                    ; 2 uses
  store i64 %i.dh, ptr %i.be, align 8
  %i.di = load i64, ptr %i.bg, align 8
  %.not117 = icmp ult i64 %i.dh, %i.di
  br i1 %.not117, label %bb.t, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dj = load ptr, ptr %1, align 8               ; 2 uses
  %.val.i = load i64, ptr %i.dj, align 8
  %i.dk = and i64 %.val.i, 2
  %.not.i = icmp eq i64 %i.dk, 0
  br i1 %.not.i, label %bb.p, label %__sg_next.exit.thread

__sg_next.exit.thread:                            ; preds = %bb.o
  store ptr null, ptr %1, align 8
  br label %.loopexit

bb.p:                                             ; preds = %bb.o
  %i.dl = getelementptr i8, ptr %i.dj, i64 32     ; 2 uses
  %.val.i.i = load i64, ptr %i.dl, align 8        ; 2 uses
  %i.dm = trunc i64 %.val.i.i to i1
  br i1 %i.dm, label %bb.q, label %__sg_next.exit, !prof !16

bb.q:                                             ; preds = %bb.p
  %i.dn = and i64 %.val.i.i, -4
  %i.do = inttoptr i64 %i.dn to ptr
  br label %__sg_next.exit

__sg_next.exit:                                   ; preds = %bb.p, %bb.q
  %i.dp = phi ptr [ %i.dl, %bb.p ], [ %i.do, %bb.q ] ; 4 uses
  store ptr %i.dp, ptr %1, align 8
  %.not118 = icmp eq ptr %i.dp, null
  br i1 %.not118, label %.loopexit, label %bb.r

bb.r:                                             ; preds = %__sg_next.exit
  %i.dq = getelementptr i8, ptr %i.dp, i64 24     ; 2 uses
  %i.dr = load i32, ptr %i.dq, align 8
  %i.ds = icmp eq i32 %i.dr, 0
  br i1 %i.ds, label %.loopexit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dt = getelementptr i8, ptr %i.dp, i64 16
  %i.du = load i64, ptr %i.dt, align 8            ; 2 uses
  store i64 %i.du, ptr %i.be, align 8
  %i.dv = load i32, ptr %i.dq, align 8
  %i.dw = zext i32 %i.dv to i64
  %i.dx = add i64 %i.du, %i.dw
  store i64 %i.dx, ptr %i.bg, align 8
  br label %bb.t

bb.t:                                             ; preds = %bb.n, %bb.s
  %i.dy = icmp ult i32 %i.df, %5
  br i1 %i.dy, label %bb.g, label %.loopexit, !llvm.loop !43

.loopexit:                                        ; preds = %__sg_next.exit, %bb.r, %bb.t, %__sg_next.exit.thread
  %i.dz = ptrtoint ptr %i.dd to i64
  %i.ea = ptrtoint ptr %.298 to i64
  %i.eb = sub i64 %i.dz, %i.ea
  %i.ec = lshr exact i64 %i.eb, 2
  %i.ed = load i32, ptr %.298, align 4
  %i.ee = trunc i64 %i.ec to i32
  %i.ef = add i32 %i.ee, -2
  %i.eg = add i32 %i.ef, %i.ed
  store i32 %i.eg, ptr %.298, align 4
  %i.eh = getelementptr i8, ptr %.2, i64 12
  store i32 0, ptr %i.dd, align 4
  %i.ei = load ptr, ptr %i.bb, align 8
  %i.ej = ptrtoint ptr %i.eh to i64
  %i.ek = ptrtoint ptr %i.ei to i64
  %i.el = sub i64 %i.ej, %i.ek
  %i.em = trunc i64 %i.el to i32
  store i32 %i.em, ptr %i.bc, align 4
  %i.en = tail call i32 @intel_ring_update_space(ptr noundef %i.q) #9 ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %.thread, %.loopexit, %bb.e
  %.3 = phi i32 [ %i.ae, %bb.e ], [ %i.df, %.loopexit ], [ %i.ca, %.thread ]
  ret i32 %.3
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc i32 @emit_copy_ccs(ptr noundef %0, i32 noundef range(i32 0, 16777217) %1, i8 noundef zeroext range(i8 0, 2) %2, i32 noundef range(i32 0, 16777217) %3, i8 noundef zeroext range(i8 0, 2) %4, i32 noundef range(i32 1, -2147483648) %5) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %0, i64 80         ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr i8, ptr %i.f, i64 5152
  %i.h = load i8, ptr %i.g, align 8
  %i.i = zext i8 %i.h to i64
  %i.j = shl nuw nsw i64 %i.i, 26                 ; 2 uses
  %i.k = tail call ptr @intel_ring_begin(ptr noundef %0, i32 noundef 12) #9 ; 14 uses
  %i.l = icmp ugt ptr %i.k, inttoptr (i64 -4096 to ptr)
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = trunc i64 %i.m to i32
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.o = getelementptr i8, ptr %i.b, i64 1648
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = getelementptr i8, ptr %i.p, i64 28
  %i.r = load i64, ptr %i.q, align 4
  %i.s = and i64 %i.r, 256
  %.not = icmp eq i64 %i.s, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = add nuw i32 %5, 255
  %i.u = sdiv i32 %i.t, 256
  %i.v = add nsw i32 %i.u, 255
  %i.w = sdiv i32 %i.v, 256
  %i.x = shl nsw i32 %i.w, 8
  %i.y = add nsw i32 %i.x, 261888
  %i.z = and i32 %i.y, 261888
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.aa = phi i32 [ %i.z, %bb.d ], [ 261888, %bb.c ]
  %i.ab = getelementptr i8, ptr %i.k, i64 4
  store i32 318833153, ptr %i.k, align 4
  %i.ac = getelementptr i8, ptr %i.k, i64 8
  store i32 0, ptr %i.ab, align 4
  %i.ad = getelementptr i8, ptr %i.k, i64 12
  store i32 0, ptr %i.ac, align 4
  %i.ae = zext nneg i8 %4 to i32
  %i.af = shl nuw nsw i32 %i.ae, 21
  %i.ag = zext nneg i8 %2 to i32
  %i.ah = shl nuw nsw i32 %i.ag, 20
  %i.ai = or disjoint i32 %i.af, %i.ah
  %i.aj = or disjoint i32 %i.aa, %i.ai
  %i.ak = or disjoint i32 %i.aj, 1375731715
  %i.al = getelementptr i8, ptr %i.k, i64 16
  store i32 %i.ak, ptr %i.ad, align 4
  store i32 %3, ptr %i.al, align 4
  %i.am = load ptr, ptr %i.c, align 8
  %i.an = getelementptr i8, ptr %i.am, i64 57
  %i.ao = load i8, ptr %i.an, align 1
  %i.ap = zext i8 %i.ao to i64
  %i.aq = getelementptr i8, ptr %i.k, i64 20
  %i.ar = or disjoint i64 %i.j, %i.ap
  %i.as = trunc i64 %i.ar to i32
  %i.at = getelementptr i8, ptr %i.k, i64 24
  store i32 %i.as, ptr %i.aq, align 4
  store i32 %1, ptr %i.at, align 4
  %i.au = load ptr, ptr %i.c, align 8
  %i.av = getelementptr i8, ptr %i.au, i64 57
  %i.aw = load i8, ptr %i.av, align 1
  %i.ax = zext i8 %i.aw to i64
  %i.ay = getelementptr i8, ptr %i.k, i64 28
  %i.az = or disjoint i64 %i.j, %i.ax
  %i.ba = trunc i64 %i.az to i32
  %i.bb = getelementptr i8, ptr %i.k, i64 32
  store i32 %i.ba, ptr %i.ay, align 4
end_hunk_0
