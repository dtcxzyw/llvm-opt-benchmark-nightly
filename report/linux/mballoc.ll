Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/mballoc?download=true
inline.NumInlined: 1079
inline.NumDeleted: 244
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@ext4_mballoc_query_range:bb.a
.lr.ph:                                           ; preds = %arch_atomic_try_cmpxchg.exit.i.i95, %.lr.ph.i.i93, %raw_atomic_fetch_add_unless.exit.i102, %bb.f, %ext4_lock_group.exit105
  %.165151 = phi i32 [ %i.ah, %ext4_lock_group.exit105 ], [ %spec.select, %bb.f ], [ %spec.select, %raw_atomic_fetch_add_unless.exit.i102 ], [ %spec.select, %.lr.ph.i.i93 ], [ %spec.select, %arch_atomic_try_cmpxchg.exit.i.i95 ]
  %i.bo = add i32 %.067, 1                        ; 3 uses
  %i.bp = ptrtoint ptr %i.c to i64                ; 2 uses
  %.tr.i.i = trunc i64 %i.bp to i32
  %i.bq = shl i32 %.tr.i.i, 3
  %i.br = and i32 %i.bq, 56                       ; 5 uses
  %i.bs = and i64 %i.bp, -8
  %i.bt = inttoptr i64 %i.bs to ptr               ; 2 uses
  %i.bu = add i32 %i.bo, %i.br
  %i.bv = sext i32 %i.bu to i64                   ; 2 uses
  br label %mb_find_next_zero_bit.exit

mb_find_next_zero_bit.exit:                       ; preds = %ext4_lock_group.exit124, %.lr.ph
  %.266127 = phi i32 [ %.165151, %.lr.ph ], [ %i.di, %ext4_lock_group.exit124 ]
  %i.bw = add i32 %.266127, %i.br
  %i.bx = sext i32 %i.bw to i64
  %i.by = tail call i64 @_find_next_zero_bit(ptr noundef %i.bt, i64 noundef range(i64 -2147483648, 2147483648) %i.bv, i64 noundef range(i64 -2147483648, 2147483648) %i.bx) #15
  %i.bz = trunc i64 %i.by to i32
  %i.ca = sub i32 %i.bz, %i.br
  %..i = tail call i32 @llvm.smin.i32(i32 %i.ca, i32 %i.bo) ; 4 uses
  %i.cb = icmp sgt i32 %..i, %.067
  br i1 %i.cb, label %mb_find_next_zero_bit.exit._crit_edge, label %mb_find_next_bit.exit

mb_find_next_bit.exit:                            ; preds = %mb_find_next_zero_bit.exit
  %i.cc = add i32 %..i, %i.br
  %i.cd = sext i32 %i.cc to i64
  %i.ce = tail call i64 @_find_next_bit(ptr noundef %i.bt, i64 noundef range(i64 -2147483648, 2147483648) %i.bv, i64 noundef range(i64 -2147483648, 2147483648) %i.cd) #15
  %i.cf = trunc i64 %i.ce to i32
  %i.cg = sub i32 %i.cf, %i.br
  %..i107 = tail call i32 @llvm.smin.i32(i32 %i.cg, i32 %i.bo) ; 2 uses
  %.val87 = load ptr, ptr %i.d, align 32
  %i.ch = getelementptr i8, ptr %.val87, i64 424
  %.val87.val = load ptr, ptr %i.ch, align 8
  %i.ci = getelementptr [64 x i8], ptr %.val87.val, i64 %i.g
  tail call void @_raw_spin_unlock(ptr noundef %i.ci) #15
  %i.cj = sub i32 %..i107, %..i
  %i.ck = tail call i32 %5(ptr noundef %0, i32 noundef %1, i32 noundef %..i, i32 noundef %i.cj, ptr noundef %6) #15 ; 2 uses
  %.not84 = icmp eq i32 %i.ck, 0
  br i1 %.not84, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %mb_find_next_bit.exit
  %.val3.i.i108 = load ptr, ptr %i.d, align 32
  %i.cl = getelementptr i8, ptr %.val3.i.i108, i64 424
  %.val3.val.i.i109 = load ptr, ptr %i.cl, align 8
  %i.cm = getelementptr [64 x i8], ptr %.val3.val.i.i109, i64 %i.g
  %i.cn = tail call i32 @_raw_spin_trylock(ptr noundef %i.cm) #15
  %.not.i.not.i110 = icmp eq i32 %i.cn, 0
  %.val.i111 = load ptr, ptr %i.d, align 32       ; 2 uses
  %i.co = getelementptr i8, ptr %.val.i111, i64 1148 ; 5 uses
  %i.cp = load volatile i32, ptr %i.co, align 4   ; 4 uses
  br i1 %.not.i.not.i110, label %ext4_try_lock_group.exit.thread7.i115, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cq = icmp eq i32 %i.cp, 0
  br i1 %i.cq, label %ext4_lock_group.exit124, label %.lr.ph.i.i112, !prof !57

.lr.ph.i.i112:                                    ; preds = %bb.h, %arch_atomic_try_cmpxchg.exit.i.i114
  %.07.i.i113 = phi i32 [ %i.cw, %arch_atomic_try_cmpxchg.exit.i.i114 ], [ %i.cp, %bb.h ] ; 2 uses
  %i.cr = add i32 %.07.i.i113, -1
  %i.cs = tail call { i8, i32 } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock cmpxchgl $3, $1", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.co, i32 %i.cr, ptr elementtype(i32) %i.co, i32 %.07.i.i113) #14, !srcloc !58 ; 2 uses
  %i.ct = extractvalue { i8, i32 } %i.cs, 0       ; 2 uses
  %i.cu = icmp ult i8 %i.ct, 2
  tail call void @llvm.assume(i1 %i.cu)
  %i.cv = trunc nuw i8 %i.ct to i1
  br i1 %i.cv, label %ext4_lock_group.exit124, label %arch_atomic_try_cmpxchg.exit.i.i114, !prof !20

arch_atomic_try_cmpxchg.exit.i.i114:              ; preds = %.lr.ph.i.i112
  %i.cw = extractvalue { i8, i32 } %i.cs, 1       ; 2 uses
  %i.cx = icmp eq i32 %i.cw, 0
  br i1 %i.cx, label %ext4_lock_group.exit124, label %.lr.ph.i.i112, !prof !59

ext4_try_lock_group.exit.thread7.i115:            ; preds = %bb.g
  %i.cy = icmp eq i32 %i.cp, 8
  br i1 %i.cy, label %raw_atomic_fetch_add_unless.exit.i121, label %.lr.ph.i116, !prof !57

.lr.ph.i116:                                      ; preds = %ext4_try_lock_group.exit.thread7.i115, %arch_atomic_try_cmpxchg.exit.i118
  %.09.i117 = phi i32 [ %i.de, %arch_atomic_try_cmpxchg.exit.i118 ], [ %i.cp, %ext4_try_lock_group.exit.thread7.i115 ] ; 2 uses
  %i.cz = add i32 %.09.i117, 1
  %i.da = tail call { i8, i32 } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock cmpxchgl $3, $1", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.co, i32 %i.cz, ptr elementtype(i32) %i.co, i32 %.09.i117) #14, !srcloc !58 ; 2 uses
  %i.db = extractvalue { i8, i32 } %i.da, 0       ; 2 uses
  %i.dc = icmp ult i8 %i.db, 2
  tail call void @llvm.assume(i1 %i.dc)
  %i.dd = trunc nuw i8 %i.db to i1
  br i1 %i.dd, label %raw_atomic_fetch_add_unless.exit.loopexit.i119, label %arch_atomic_try_cmpxchg.exit.i118, !prof !20

arch_atomic_try_cmpxchg.exit.i118:                ; preds = %.lr.ph.i116
  %i.de = extractvalue { i8, i32 } %i.da, 1       ; 2 uses
  %i.df = icmp eq i32 %i.de, 8
  br i1 %i.df, label %raw_atomic_fetch_add_unless.exit.loopexit.i119, label %.lr.ph.i116, !prof !59

raw_atomic_fetch_add_unless.exit.loopexit.i119:   ; preds = %arch_atomic_try_cmpxchg.exit.i118, %.lr.ph.i116
  %.val4.pre.i120 = load ptr, ptr %i.d, align 32
  br label %raw_atomic_fetch_add_unless.exit.i121

raw_atomic_fetch_add_unless.exit.i121:            ; preds = %raw_atomic_fetch_add_unless.exit.loopexit.i119, %ext4_try_lock_group.exit.thread7.i115
  %.val4.i122 = phi ptr [ %.val4.pre.i120, %raw_atomic_fetch_add_unless.exit.loopexit.i119 ], [ %.val.i111, %ext4_try_lock_group.exit.thread7.i115 ]
  %i.dg = getelementptr i8, ptr %.val4.i122, i64 424
  %.val4.val.i123 = load ptr, ptr %i.dg, align 8
  %i.dh = getelementptr [64 x i8], ptr %.val4.val.i123, i64 %i.g
  tail call void @_raw_spin_lock(ptr noundef %i.dh) #15
  br label %ext4_lock_group.exit124

ext4_lock_group.exit124:                          ; preds = %.lr.ph.i.i112, %arch_atomic_try_cmpxchg.exit.i.i114, %bb.h, %raw_atomic_fetch_add_unless.exit.i121
  %i.di = add i32 %..i107, 1                      ; 2 uses
  %.not83 = icmp sgt i32 %i.di, %.067
  br i1 %.not83, label %mb_find_next_zero_bit.exit._crit_edge, label %mb_find_next_zero_bit.exit, !llvm.loop !256

mb_find_next_zero_bit.exit._crit_edge:            ; preds = %ext4_lock_group.exit124, %mb_find_next_zero_bit.exit, %ext4_lock_group.exit105
  %.val86 = load ptr, ptr %i.d, align 32
  %i.dj = getelementptr i8, ptr %.val86, i64 424
  %.val86.val = load ptr, ptr %i.dj, align 8
  %i.dk = getelementptr [64 x i8], ptr %.val86.val, i64 %i.g
  tail call void @_raw_spin_unlock(ptr noundef %i.dk) #15
  br label %.loopexit

.loopexit:                                        ; preds = %mb_find_next_bit.exit, %bb.d, %mb_find_next_zero_bit.exit._crit_edge
  %.2 = phi i32 [ %i.aq, %bb.d ], [ 0, %mb_find_next_zero_bit.exit._crit_edge ], [ %i.ck, %mb_find_next_bit.exit ] ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.dm = load ptr, ptr %i.dl, align 8            ; 3 uses
  %.not.i = icmp eq ptr %i.dm, null
  br i1 %.not.i, label %folio_put.exit.i, label %bb.i

bb.i:                                             ; preds = %.loopexit
  %i.dn = getelementptr i8, ptr %i.dm, i64 52     ; 2 uses
  %i.do = tail call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock decl $0", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.dn, ptr elementtype(i32) %i.dn) #14, !srcloc !35 ; 2 uses
  %i.dp = icmp ult i8 %i.do, 2
  tail call void @llvm.assume(i1 %i.dp)
  %.not.i.i125 = icmp eq i8 %i.do, 0
  br i1 %.not.i.i125, label %folio_put.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @__folio_put(ptr noundef nonnull %i.dm) #15
  br label %folio_put.exit.i

folio_put.exit.i:                                 ; preds = %bb.j, %bb.i, %.loopexit
  %i.dq = load ptr, ptr %7, align 8               ; 3 uses
  %.not5.i = icmp eq ptr %i.dq, null
  br i1 %.not5.i, label %ext4_mb_unload_buddy.exit, label %bb.k

bb.k:                                             ; preds = %folio_put.exit.i
  %i.dr = getelementptr i8, ptr %i.dq, i64 52     ; 2 uses
  %i.ds = tail call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock decl $0", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.dr, ptr elementtype(i32) %i.dr) #14, !srcloc !35 ; 2 uses
  %i.dt = icmp ult i8 %i.ds, 2
  tail call void @llvm.assume(i1 %i.dt)
  %.not.i6.i = icmp eq i8 %i.ds, 0
  br i1 %.not.i6.i, label %ext4_mb_unload_buddy.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @__folio_put(ptr noundef nonnull %i.dq) #15
  br label %ext4_mb_unload_buddy.exit

ext4_mb_unload_buddy.exit:                        ; preds = %bb.l, %bb.k, %folio_put.exit.i, %bb.a
  %.0 = phi i32 [ %i.a, %bb.a ], [ %.2, %folio_put.exit.i ], [ %.2, %bb.k ], [ %.2, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc i32 @ext4_mb_init_cache(ptr noundef %0, ptr noundef %1, i32 noundef range(i32 3136, 35905) %2) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store ptr null, ptr %i.a, align 8, !annotation !14
  %i.b = getelementptr i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr i8, ptr %i.d, i64 40
  %i.f = load ptr, ptr %i.e, align 8              ; 10 uses
  %i.g = getelementptr i8, ptr %i.f, i64 864      ; 8 uses
  %.val = load ptr, ptr %i.g, align 32
  %i.h = getelementptr i8, ptr %.val, i64 64
  %.val.val = load i32, ptr %i.h, align 64        ; 3 uses
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !13
  %i.i = getelementptr i8, ptr %i.d, i64 134      ; 3 uses
  %.val168 = load i8, ptr %i.i, align 2           ; 2 uses
  %i.j = zext nneg i8 %.val168 to i32             ; 2 uses
  %i.k = shl nuw i32 1, %i.j
  %i.l = load volatile i64, ptr %0, align 8
  %i.m = and i64 %i.l, 64
  %.not.i.i = icmp eq i64 %i.m, 0
  br i1 %.not.i.i, label %folio_size.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr i8, ptr %0, i64 64
  %.val.i.i = load i64, ptr %i.n, align 16
  %i.o = and i64 %.val.i.i, 255
  br label %folio_size.exit

folio_size.exit:                                  ; preds = %bb.a, %bb.b
  %.0.i.i = phi i64 [ %i.o, %bb.b ], [ 0, %bb.a ]
  %i.p = shl i64 4096, %.0.i.i
  %i.q = zext i32 %i.k to i64                     ; 2 uses
  %i.r = zext nneg i8 %.val168 to i64
  %i.s = lshr i64 %i.p, %i.r
  %i.t = trunc i64 %i.s to i32                    ; 4 uses
  %.not = icmp eq i32 %i.t, 0
  br i1 %.not, label %.thread, label %bb.c, !prof !23

.thread:                                          ; preds = %folio_size.exit
  tail call void asm sideeffect "1521: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1521b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1521) #14, !srcloc !257
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.33, ptr nonnull @.str.34, i32 1396, i32 2307, i64 16) #14, !srcloc !258
  tail call void asm sideeffect "1522: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1522b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1522) #14, !srcloc !259
  br label %bb.d

bb.c:                                             ; preds = %folio_size.exit
  %i.u = add i32 %i.t, 1                          ; 2 uses
  %i.v = sdiv i32 %i.u, 2                         ; 3 uses
  %i.w = icmp sgt i32 %i.u, 3
  br i1 %i.w, label %_kzalloc_noprof.exit, label %bb.d

_kzalloc_noprof.exit:                             ; preds = %bb.c
  %i.x = or i32 %2, 256
  %i.y = shl i32 %i.v, 3
  %i.z = sext i32 %i.y to i64
  %i.aa = tail call noalias align 8 ptr @__kmalloc_noprof(i64 noundef range(i64 -2147483648, 68719476721) %i.z, i32 noundef range(i32 3136, 36352) %i.x) #18 ; 2 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %bb.ah, label %bb.d

bb.d:                                             ; preds = %.thread, %bb.c, %_kzalloc_noprof.exit
  %i.ac = phi i32 [ %i.v, %_kzalloc_noprof.exit ], [ %i.v, %bb.c ], [ 0, %.thread ] ; 4 uses
  %.0149 = phi ptr [ %i.aa, %_kzalloc_noprof.exit ], [ %i.a, %bb.c ], [ %i.a, %.thread ] ; 8 uses
  %i.ad = getelementptr i8, ptr %0, i64 32        ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 16
  %i.af = shl i64 %i.ae, 12
  %i.ag = load i8, ptr %i.i, align 2
  %i.ah = zext nneg i8 %i.ag to i64
  %i.ai = ashr i64 %i.af, %i.ah
  %i.aj = sdiv i64 %i.ai, 2
  %i.ak = trunc i64 %i.aj to i32                  ; 4 uses
  %i.al = icmp sgt i32 %i.ac, 0                   ; 3 uses
  %.not156202 = icmp ugt i32 %.val.val, %i.ak
  %or.cond203 = select i1 %i.al, i1 %.not156202, i1 false
  br i1 %or.cond203, label %.lr.ph.preheader, label %.preheader

.lr.ph.preheader:                                 ; preds = %bb.d
  %i.am = zext nneg i32 %i.ac to i64
  br label %.lr.ph

.preheader:                                       ; preds = %bb.i, %bb.d
  br i1 %i.al, label %.lr.ph210.preheader, label %._crit_edge

.lr.ph210.preheader:                              ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %i.ac to i64
  br label %.lr.ph210

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.i
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.i ] ; 4 uses
  %.0147204 = phi i32 [ %i.ak, %.lr.ph.preheader ], [ %i.az, %bb.i ] ; 3 uses
  %i.an = tail call ptr @ext4_get_group_info(ptr noundef %i.f, i32 noundef %.0147204) #15 ; 2 uses
  %.not157 = icmp eq ptr %i.an, null
  br i1 %.not157, label %bb.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.ao = load volatile i64, ptr %0, align 16
  %i.ap = and i64 %i.ao, 8
  %.not194 = icmp eq i64 %i.ap, 0
  br i1 %.not194, label %folio_test_uptodate.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !33
  %i.aq = load volatile i64, ptr %i.an, align 8
  %i.ar = and i64 %i.aq, 1
  %.not195 = icmp eq i64 %i.ar, 0
  br i1 %.not195, label %bb.g, label %folio_test_uptodate.exit

bb.g:                                             ; preds = %bb.f
  %i.as = getelementptr [8 x i8], ptr %.0149, i64 %indvars.iv
  store ptr null, ptr %i.as, align 8
  br label %bb.i

folio_test_uptodate.exit:                         ; preds = %bb.e, %bb.f
  %i.at = tail call ptr @ext4_read_block_bitmap_nowait(ptr noundef %i.f, i32 noundef %.0147204, i1 noundef zeroext false) #15 ; 3 uses
  %i.au = getelementptr [8 x i8], ptr %.0149, i64 %indvars.iv
  store ptr %i.at, ptr %i.au, align 8
  %i.av = icmp ugt ptr %i.at, inttoptr (i64 -4096 to ptr)
  br i1 %i.av, label %bb.h, label %bb.i

bb.h:                                             ; preds = %folio_test_uptodate.exit
  %i.aw = getelementptr [8 x i8], ptr %.0149, i64 %indvars.iv
  %i.ax = ptrtoint ptr %i.at to i64
  %i.ay = trunc i64 %i.ax to i32
  store ptr null, ptr %i.aw, align 8
  br label %.loopexit

bb.i:                                             ; preds = %folio_test_uptodate.exit, %.lr.ph, %bb.g
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.az = add nuw i32 %.0147204, 1                ; 2 uses
  %i.ba = icmp samesign ult i64 %indvars.iv.next, %i.am
  %.not156 = icmp ult i32 %i.az, %.val.val
  %or.cond = select i1 %i.ba, i1 %.not156, i1 false
  br i1 %or.cond, label %.lr.ph, label %.preheader, !llvm.loop !260

.lr.ph210:                                        ; preds = %.lr.ph210.preheader, %bb.k
  %indvars.iv226 = phi i64 [ 0, %.lr.ph210.preheader ], [ %indvars.iv.next227, %bb.k ] ; 2 uses
  %.0140209 = phi i32 [ 0, %.lr.ph210.preheader ], [ %.2, %bb.k ] ; 3 uses
  %.1148207 = phi i32 [ %i.ak, %.lr.ph210.preheader ], [ %i.be, %bb.k ] ; 2 uses
  %i.bb = getelementptr [8 x i8], ptr %.0149, i64 %indvars.iv226
  %i.bc = load ptr, ptr %i.bb, align 8            ; 2 uses
  %.not166 = icmp eq ptr %i.bc, null
  br i1 %.not166, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph210
  %i.bd = tail call i32 @ext4_wait_block_bitmap(ptr noundef %i.f, i32 noundef %.1148207, ptr noundef nonnull %i.bc) #15
  %.not167 = icmp eq i32 %.0140209, 0
  %spec.select = select i1 %.not167, i32 %i.bd, i32 %.0140209
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph210, %bb.j
  %.2 = phi i32 [ %spec.select, %bb.j ], [ %.0140209, %.lr.ph210 ] ; 2 uses
  %indvars.iv.next227 = add nuw nsw i64 %indvars.iv226, 1 ; 2 uses
  %i.be = add i32 %.1148207, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next227, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph210, !llvm.loop !261

._crit_edge:                                      ; preds = %bb.k, %.preheader
  %.0140.lcssa = phi i32 [ 0, %.preheader ], [ %.2, %bb.k ] ; 2 uses
  %i.bf = load i64, ptr %i.ad, align 16
  %i.bg = shl i64 %i.bf, 12
  %i.bh = load i8, ptr %i.i, align 2
  %i.bi = zext nneg i8 %i.bh to i64
  %i.bj = ashr i64 %i.bg, %i.bi
  %i.bk = trunc i64 %i.bj to i32
  %i.bl = icmp sgt i32 %i.t, 0
  br i1 %i.bl, label %.lr.ph215, label %._crit_edge216

.lr.ph215:                                        ; preds = %._crit_edge
  %i.bm = ptrtoint ptr %0 to i64
  %i.bn = getelementptr i8, ptr %i.f, i64 20
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph215, %bb.ae
  %.0139213 = phi ptr [ %1, %.lr.ph215 ], [ %.1, %bb.ae ] ; 4 uses
  %.3212 = phi i32 [ %.0140.lcssa, %.lr.ph215 ], [ %.4, %bb.ae ] ; 3 uses
  %.2144211 = phi i32 [ 0, %.lr.ph215 ], [ %3, %bb.ae ] ; 3 uses
  %i.bo = add i32 %.2144211, %i.bk                ; 2 uses
  %i.bp = ashr i32 %i.bo, 1                       ; 9 uses
  %.not158 = icmp ult i32 %i.bp, %.val.val
  br i1 %.not158, label %bb.m, label %._crit_edge216

bb.m:                                             ; preds = %bb.l
  %i.bq = sub i32 %i.bp, %i.ak
  %i.br = zext i32 %i.bq to i64
  %i.bs = getelementptr [8 x i8], ptr %.0149, i64 %i.br
  %i.bt = load ptr, ptr %i.bs, align 8            ; 3 uses
  %.not159 = icmp eq ptr %i.bt, null
  br i1 %.not159, label %bb.ae, label %buffer_verified.exit

buffer_verified.exit:                             ; preds = %bb.m
  %i.bu = load volatile i64, ptr %i.bt, align 8
  %i.bv = and i64 %i.bu, 33554432
  %.not160 = icmp eq i64 %i.bv, 0
  br i1 %.not160, label %bb.ae, label %bb.n

bb.n:                                             ; preds = %buffer_verified.exit
  %i.bw = load i64, ptr @vmemmap_base, align 8
  %i.bx = sub i64 %i.bm, %i.bw
  %i.by = shl i64 %i.bx, 6
  %i.bz = load i64, ptr @page_offset_base, align 8
  %i.ca = add i64 %i.by, %i.bz
  %i.cb = inttoptr i64 %i.ca to ptr
  %i.cc = shl i32 %.2144211, %i.j
  %i.cd = zext i32 %i.cc to i64
  %i.ce = getelementptr i8, ptr %i.cb, i64 %i.cd  ; 6 uses
  %i.cf = getelementptr i8, ptr %i.bt, i64 40
  %i.cg = load ptr, ptr %i.cf, align 8
  %i.ch = tail call ptr @ext4_get_group_info(ptr noundef %i.f, i32 noundef %i.bp) #15 ; 5 uses
  %.not161 = icmp eq ptr %i.ch, null
  br i1 %.not161, label %.loopexit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ci = and i32 %i.bo, 1
  %.not162 = icmp eq i32 %i.ci, 0
  %.not163 = icmp eq ptr %.0139213, null          ; 2 uses
  br i1 %.not162, label %bb.w, label %bb.p

bb.p:                                             ; preds = %bb.o
  br i1 %.not163, label %bb.q, label %bb.r, !prof !23

bb.q:                                             ; preds = %bb.p
  tail call void asm sideeffect "1523: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1523b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1523) #14, !srcloc !262
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.33, ptr nonnull @.str.34, i32 1485, i32 0, i64 16) #14, !srcloc !263
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.cj = zext i32 %i.bp to i64
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_ext4_mb_buddy_bitmap_load, i64 8), i1 false) #14
          to label %trace_ext4_mb_buddy_bitmap_load.exit [label %cpumask_test_cpu.exit.i.i], !srcloc !81

cpumask_test_cpu.exit.i.i:                        ; preds = %bb.r
  %i.ck = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @cpu_number) #14, !srcloc !264
  %i.cl = zext i32 %i.ck to i64
  %i.cm = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) @__cpu_online_mask, i64 range(i64 -2147483648, 4294967296) %i.cl) #14, !srcloc !75 ; 2 uses
  %i.cn = icmp ult i8 %i.cm, 2
  tail call void @llvm.assume(i1 %i.cn)
  %i.co = trunc nuw i8 %i.cm to i1
  br i1 %i.co, label %bb.s, label %trace_ext4_mb_buddy_bitmap_load.exit

bb.s:                                             ; preds = %cpumask_test_cpu.exit.i.i
  %i.cp = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.cp, ptr elementtype(i64) %i.cp) #14, !srcloc !83
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !84
  %i.cq = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_ext4_mb_buddy_bitmap_load, i64 56), align 8 ; 2 uses
  %.not.i.i172 = icmp eq ptr %i.cq, null
  br i1 %.not.i.i172, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cr = getelementptr i8, ptr %i.cq, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8
  %i.ct = tail call i32 @__SCT__tp_func_ext4_mb_buddy_bitmap_load(ptr noundef %i.cs, ptr noundef %i.f, i64 noundef range(i64 0, 4294967296) %i.cj) #15 ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !85
  %i.cu = getelementptr i8, ptr %i.cp, i64 8      ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.cu, ptr elementtype(i64) %i.cu) #14, !srcloc !86
  br label %trace_ext4_mb_buddy_bitmap_load.exit

trace_ext4_mb_buddy_bitmap_load.exit:             ; preds = %bb.r, %cpumask_test_cpu.exit.i.i, %bb.u
  %i.cv = getelementptr i8, ptr %i.ch, i64 24
  store i32 0, ptr %i.cv, align 8
  %i.cw = getelementptr i8, ptr %i.ch, i64 88
  %i.cx = load i8, ptr %i.bn, align 4
  %i.cy = zext i8 %i.cx to i64
  %i.cz = shl nuw nsw i64 %i.cy, 2
  %i.da = add nuw nsw i64 %i.cz, 8
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 %i.cw, i8 0, i64 %i.da, i1 false)
  %.val3.i.i = load ptr, ptr %i.g, align 32
  %i.db = getelementptr i8, ptr %.val3.i.i, i64 424
  %.val3.val.i.i = load ptr, ptr %i.db, align 8
  %i.dc = and i32 %i.bp, 127
  %i.dd = zext nneg i32 %i.dc to i64              ; 3 uses
  %i.de = getelementptr [64 x i8], ptr %.val3.val.i.i, i64 %i.dd
  %i.df = tail call i32 @_raw_spin_trylock(ptr noundef %i.de) #15
  %.not.i.not.i = icmp eq i32 %i.df, 0
  %.val.i = load ptr, ptr %i.g, align 32          ; 2 uses
  %i.dg = getelementptr i8, ptr %.val.i, i64 1148 ; 5 uses
  %i.dh = load volatile i32, ptr %i.dg, align 4   ; 4 uses
  br i1 %.not.i.not.i, label %ext4_try_lock_group.exit.thread7.i, label %bb.v

bb.v:                                             ; preds = %trace_ext4_mb_buddy_bitmap_load.exit
  %i.di = icmp eq i32 %i.dh, 0
  br i1 %i.di, label %ext4_lock_group.exit, label %.lr.ph.i.i, !prof !57

.lr.ph.i.i:                                       ; preds = %bb.v, %arch_atomic_try_cmpxchg.exit.i.i
  %.07.i.i = phi i32 [ %i.do, %arch_atomic_try_cmpxchg.exit.i.i ], [ %i.dh, %bb.v ] ; 2 uses
  %i.dj = add i32 %.07.i.i, -1
  %i.dk = tail call { i8, i32 } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock cmpxchgl $3, $1", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.dg, i32 %i.dj, ptr elementtype(i32) %i.dg, i32 %.07.i.i) #14, !srcloc !58 ; 2 uses
  %i.dl = extractvalue { i8, i32 } %i.dk, 0       ; 2 uses
  %i.dm = icmp ult i8 %i.dl, 2
  tail call void @llvm.assume(i1 %i.dm)
  %i.dn = trunc nuw i8 %i.dl to i1
  br i1 %i.dn, label %ext4_lock_group.exit, label %arch_atomic_try_cmpxchg.exit.i.i, !prof !20

arch_atomic_try_cmpxchg.exit.i.i:                 ; preds = %.lr.ph.i.i
  %i.do = extractvalue { i8, i32 } %i.dk, 1       ; 2 uses
  %i.dp = icmp eq i32 %i.do, 0
  br i1 %i.dp, label %ext4_lock_group.exit, label %.lr.ph.i.i, !prof !59

ext4_try_lock_group.exit.thread7.i:               ; preds = %trace_ext4_mb_buddy_bitmap_load.exit
  %i.dq = icmp eq i32 %i.dh, 8
  br i1 %i.dq, label %raw_atomic_fetch_add_unless.exit.i, label %.lr.ph.i, !prof !57

.lr.ph.i:                                         ; preds = %ext4_try_lock_group.exit.thread7.i, %arch_atomic_try_cmpxchg.exit.i
  %.09.i = phi i32 [ %i.dw, %arch_atomic_try_cmpxchg.exit.i ], [ %i.dh, %ext4_try_lock_group.exit.thread7.i ] ; 2 uses
  %i.dr = add i32 %.09.i, 1
  %i.ds = tail call { i8, i32 } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock cmpxchgl $3, $1", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.dg, i32 %i.dr, ptr elementtype(i32) %i.dg, i32 %.09.i) #14, !srcloc !58 ; 2 uses
  %i.dt = extractvalue { i8, i32 } %i.ds, 0       ; 2 uses
  %i.du = icmp ult i8 %i.dt, 2
  tail call void @llvm.assume(i1 %i.du)
  %i.dv = trunc nuw i8 %i.dt to i1
  br i1 %i.dv, label %raw_atomic_fetch_add_unless.exit.loopexit.i, label %arch_atomic_try_cmpxchg.exit.i, !prof !20

arch_atomic_try_cmpxchg.exit.i:                   ; preds = %.lr.ph.i
  %i.dw = extractvalue { i8, i32 } %i.ds, 1       ; 2 uses
  %i.dx = icmp eq i32 %i.dw, 8
  br i1 %i.dx, label %raw_atomic_fetch_add_unless.exit.loopexit.i, label %.lr.ph.i, !prof !59

raw_atomic_fetch_add_unless.exit.loopexit.i:      ; preds = %arch_atomic_try_cmpxchg.exit.i, %.lr.ph.i
  %.val4.pre.i = load ptr, ptr %i.g, align 32
  br label %raw_atomic_fetch_add_unless.exit.i

raw_atomic_fetch_add_unless.exit.i:               ; preds = %raw_atomic_fetch_add_unless.exit.loopexit.i, %ext4_try_lock_group.exit.thread7.i
  %.val4.i = phi ptr [ %.val4.pre.i, %raw_atomic_fetch_add_unless.exit.loopexit.i ], [ %.val.i, %ext4_try_lock_group.exit.thread7.i ]
  %i.dy = getelementptr i8, ptr %.val4.i, i64 424
  %.val4.val.i = load ptr, ptr %i.dy, align 8
  %i.dz = getelementptr [64 x i8], ptr %.val4.val.i, i64 %i.dd
  tail call void @_raw_spin_lock(ptr noundef %i.dz) #15
  br label %ext4_lock_group.exit

ext4_lock_group.exit:                             ; preds = %.lr.ph.i.i, %arch_atomic_try_cmpxchg.exit.i.i, %bb.v, %raw_atomic_fetch_add_unless.exit.i
  tail call void @llvm.memset.p0.i64(ptr noundef align 1 %i.ce, i8 -1, i64 %i.q, i1 false)
  tail call fastcc void @ext4_mb_generate_buddy(ptr noundef %i.f, ptr noundef %i.ce, ptr noundef nonnull %.0139213, i32 noundef %i.bp, ptr noundef nonnull %i.ch) #16, !srcloc !265
  br label %.sink.split

bb.w:                                             ; preds = %bb.o
  br i1 %.not163, label %bb.y, label %bb.x, !prof !20

bb.x:                                             ; preds = %bb.w
  tail call void asm sideeffect "1524: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1524b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1524) #14, !srcloc !266
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.33, ptr nonnull @.str.34, i32 1504, i32 0, i64 16) #14, !srcloc !267
  unreachable

bb.y:                                             ; preds = %bb.w
  %i.ea = zext i32 %i.bp to i64
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_ext4_mb_bitmap_load, i64 8), i1 false) #14
          to label %trace_ext4_mb_bitmap_load.exit [label %cpumask_test_cpu.exit.i.i173], !srcloc !81

cpumask_test_cpu.exit.i.i173:                     ; preds = %bb.y
  %i.eb = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @cpu_number) #14, !srcloc !268
  %i.ec = zext i32 %i.eb to i64
  %i.ed = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) @__cpu_online_mask, i64 range(i64 -2147483648, 4294967296) %i.ec) #14, !srcloc !75 ; 2 uses
  %i.ee = icmp ult i8 %i.ed, 2
  tail call void @llvm.assume(i1 %i.ee)
  %i.ef = trunc nuw i8 %i.ed to i1
  br i1 %i.ef, label %bb.z, label %trace_ext4_mb_bitmap_load.exit

bb.z:                                             ; preds = %cpumask_test_cpu.exit.i.i173
  %i.eg = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.eg, ptr elementtype(i64) %i.eg) #14, !srcloc !83
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !84
  %i.eh = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_ext4_mb_bitmap_load, i64 56), align 8 ; 2 uses
  %.not.i.i174 = icmp eq ptr %i.eh, null
  br i1 %.not.i.i174, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ei = getelementptr i8, ptr %i.eh, i64 8
  %i.ej = load ptr, ptr %i.ei, align 8
  %i.ek = tail call i32 @__SCT__tp_func_ext4_mb_bitmap_load(ptr noundef %i.ej, ptr noundef %i.f, i64 noundef range(i64 0, 4294967296) %i.ea) #15 ; 0 uses
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !85
  %i.el = getelementptr i8, ptr %i.eg, i64 8      ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.el, ptr elementtype(i64) %i.el) #14, !srcloc !86
  br label %trace_ext4_mb_bitmap_load.exit

trace_ext4_mb_bitmap_load.exit:                   ; preds = %bb.y, %cpumask_test_cpu.exit.i.i173, %bb.ab
  %.val3.i.i177 = load ptr, ptr %i.g, align 32
  %i.em = getelementptr i8, ptr %.val3.i.i177, i64 424
  %.val3.val.i.i178 = load ptr, ptr %i.em, align 8
  %i.en = and i32 %i.bp, 127
  %i.eo = zext nneg i32 %i.en to i64              ; 4 uses
  %i.ep = getelementptr [64 x i8], ptr %.val3.val.i.i178, i64 %i.eo
  %i.eq = tail call i32 @_raw_spin_trylock(ptr noundef %i.ep) #15
  %.not.i.not.i179 = icmp eq i32 %i.eq, 0
  %.val.i180 = load ptr, ptr %i.g, align 32       ; 2 uses
  %i.er = getelementptr i8, ptr %.val.i180, i64 1148 ; 5 uses
  %i.es = load volatile i32, ptr %i.er, align 4   ; 4 uses
  br i1 %.not.i.not.i179, label %ext4_try_lock_group.exit.thread7.i184, label %bb.ac

bb.ac:                                            ; preds = %trace_ext4_mb_bitmap_load.exit
  %i.et = icmp eq i32 %i.es, 0
  br i1 %i.et, label %ext4_lock_group.exit193, label %.lr.ph.i.i181, !prof !57

.lr.ph.i.i181:                                    ; preds = %bb.ac, %arch_atomic_try_cmpxchg.exit.i.i183
  %.07.i.i182 = phi i32 [ %i.ez, %arch_atomic_try_cmpxchg.exit.i.i183 ], [ %i.es, %bb.ac ] ; 2 uses
  %i.eu = add i32 %.07.i.i182, -1
  %i.ev = tail call { i8, i32 } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock cmpxchgl $3, $1", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.er, i32 %i.eu, ptr elementtype(i32) %i.er, i32 %.07.i.i182) #14, !srcloc !58 ; 2 uses
  %i.ew = extractvalue { i8, i32 } %i.ev, 0       ; 2 uses
  %i.ex = icmp ult i8 %i.ew, 2
  tail call void @llvm.assume(i1 %i.ex)
  %i.ey = trunc nuw i8 %i.ew to i1
  br i1 %i.ey, label %ext4_lock_group.exit193, label %arch_atomic_try_cmpxchg.exit.i.i183, !prof !20

arch_atomic_try_cmpxchg.exit.i.i183:              ; preds = %.lr.ph.i.i181
  %i.ez = extractvalue { i8, i32 } %i.ev, 1       ; 2 uses
  %i.fa = icmp eq i32 %i.ez, 0
  br i1 %i.fa, label %ext4_lock_group.exit193, label %.lr.ph.i.i181, !prof !59

ext4_try_lock_group.exit.thread7.i184:            ; preds = %trace_ext4_mb_bitmap_load.exit
  %i.fb = icmp eq i32 %i.es, 8
  br i1 %i.fb, label %raw_atomic_fetch_add_unless.exit.i190, label %.lr.ph.i185, !prof !57

.lr.ph.i185:                                      ; preds = %ext4_try_lock_group.exit.thread7.i184, %arch_atomic_try_cmpxchg.exit.i187
  %.09.i186 = phi i32 [ %i.fh, %arch_atomic_try_cmpxchg.exit.i187 ], [ %i.es, %ext4_try_lock_group.exit.thread7.i184 ] ; 2 uses
  %i.fc = add i32 %.09.i186, 1
  %i.fd = tail call { i8, i32 } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock cmpxchgl $3, $1", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.er, i32 %i.fc, ptr elementtype(i32) %i.er, i32 %.09.i186) #14, !srcloc !58 ; 2 uses
  %i.fe = extractvalue { i8, i32 } %i.fd, 0       ; 2 uses
  %i.ff = icmp ult i8 %i.fe, 2
  tail call void @llvm.assume(i1 %i.ff)
  %i.fg = trunc nuw i8 %i.fe to i1
  br i1 %i.fg, label %raw_atomic_fetch_add_unless.exit.loopexit.i188, label %arch_atomic_try_cmpxchg.exit.i187, !prof !20

arch_atomic_try_cmpxchg.exit.i187:                ; preds = %.lr.ph.i185
  %i.fh = extractvalue { i8, i32 } %i.fd, 1       ; 2 uses
  %i.fi = icmp eq i32 %i.fh, 8
  br i1 %i.fi, label %raw_atomic_fetch_add_unless.exit.loopexit.i188, label %.lr.ph.i185, !prof !59

raw_atomic_fetch_add_unless.exit.loopexit.i188:   ; preds = %arch_atomic_try_cmpxchg.exit.i187, %.lr.ph.i185
  %.val4.pre.i189 = load ptr, ptr %i.g, align 32
  br label %raw_atomic_fetch_add_unless.exit.i190

raw_atomic_fetch_add_unless.exit.i190:            ; preds = %raw_atomic_fetch_add_unless.exit.loopexit.i188, %ext4_try_lock_group.exit.thread7.i184
  %.val4.i191 = phi ptr [ %.val4.pre.i189, %raw_atomic_fetch_add_unless.exit.loopexit.i188 ], [ %.val.i180, %ext4_try_lock_group.exit.thread7.i184 ]
  %i.fj = getelementptr i8, ptr %.val4.i191, i64 424
  %.val4.val.i192 = load ptr, ptr %i.fj, align 8
  %i.fk = getelementptr [64 x i8], ptr %.val4.val.i192, i64 %i.eo
  tail call void @_raw_spin_lock(ptr noundef %i.fk) #15
  br label %ext4_lock_group.exit193

ext4_lock_group.exit193:                          ; preds = %.lr.ph.i.i181, %arch_atomic_try_cmpxchg.exit.i.i183, %bb.ac, %raw_atomic_fetch_add_unless.exit.i190
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 %i.ce, ptr noundef align 1 %i.cg, i64 %i.q, i1 false)
  tail call fastcc void @ext4_mb_generate_from_pa(ptr noundef %i.f, ptr noundef %i.ce, i32 noundef %i.bp) #16, !srcloc !269
  %i.fl = getelementptr i8, ptr %i.ch, i64 8
  %i.fm = load volatile ptr, ptr %i.fl, align 8
  %.not164 = icmp eq ptr %i.fm, null
  br i1 %.not164, label %.sink.split, label %bb.ad, !prof !20

bb.ad:                                            ; preds = %ext4_lock_group.exit193
  tail call void asm sideeffect "1526: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1526b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1526) #14, !srcloc !270
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.33, ptr nonnull @.str.34, i32 1515, i32 2307, i64 16) #14, !srcloc !271
  tail call void asm sideeffect "1527: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1527b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1527) #14, !srcloc !272
  br label %.sink.split

.sink.split:                                      ; preds = %ext4_lock_group.exit193, %bb.ad, %ext4_lock_group.exit
  %.sink262 = phi i64 [ %i.dd, %ext4_lock_group.exit ], [ %i.eo, %bb.ad ], [ %i.eo, %ext4_lock_group.exit193 ]
  %.1.ph = phi ptr [ null, %ext4_lock_group.exit ], [ %i.ce, %bb.ad ], [ %i.ce, %ext4_lock_group.exit193 ]
  %.val170 = load ptr, ptr %i.g, align 32
  %i.fn = getelementptr i8, ptr %.val170, i64 424
  %.val170.val = load ptr, ptr %i.fn, align 8
  %i.fo = getelementptr [64 x i8], ptr %.val170.val, i64 %.sink262
  tail call void @_raw_spin_unlock(ptr noundef %i.fo) #15
  br label %bb.ae

bb.ae:                                            ; preds = %.sink.split, %buffer_verified.exit, %bb.m
  %.4 = phi i32 [ %.3212, %buffer_verified.exit ], [ %.3212, %bb.m ], [ 0, %.sink.split ] ; 2 uses
  %.1 = phi ptr [ %.0139213, %buffer_verified.exit ], [ %.0139213, %bb.m ], [ %.1.ph, %.sink.split ]
  %3 = add nuw nsw i32 %.2144211, 1               ; 2 uses
  %exitcond229.not = icmp eq i32 %3, %i.t
  br i1 %exitcond229.not, label %._crit_edge216, label %bb.l, !llvm.loop !273

._crit_edge216:                                   ; preds = %bb.ae, %bb.l, %._crit_edge
  %.3.lcssa = phi i32 [ %.0140.lcssa, %._crit_edge ], [ %.3212, %bb.l ], [ %.4, %bb.ae ]
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !274
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %0, i32 8, ptr elementtype(i8) %0) #14, !srcloc !44
  br label %.loopexit

.loopexit:                                        ; preds = %bb.n, %bb.h, %._crit_edge216
  %.5 = phi i32 [ %.3.lcssa, %._crit_edge216 ], [ %i.ay, %bb.h ], [ -117, %bb.n ] ; 2 uses
  br i1 %i.al, label %.lr.ph222.preheader, label %._crit_edge223

.lr.ph222.preheader:                              ; preds = %.loopexit
  %wide.trip.count233 = zext nneg i32 %i.ac to i64
  br label %.lr.ph222

.lr.ph222:                                        ; preds = %.lr.ph222.preheader, %brelse.exit
  %indvars.iv230 = phi i64 [ 0, %.lr.ph222.preheader ], [ %indvars.iv.next231, %brelse.exit ] ; 2 uses
  %i.fp = getelementptr [8 x i8], ptr %.0149, i64 %indvars.iv230
  %i.fq = load ptr, ptr %i.fp, align 8            ; 2 uses
  %.not.i = icmp eq ptr %i.fq, null
  br i1 %.not.i, label %brelse.exit, label %bb.af

bb.af:                                            ; preds = %.lr.ph222
  tail call void @__brelse(ptr noundef nonnull %i.fq) #15
  br label %brelse.exit

brelse.exit:                                      ; preds = %.lr.ph222, %bb.af
  %indvars.iv.next231 = add nuw nsw i64 %indvars.iv230, 1 ; 2 uses
  %exitcond234.not = icmp eq i64 %indvars.iv.next231, %wide.trip.count233
  br i1 %exitcond234.not, label %._crit_edge223, label %.lr.ph222, !llvm.loop !275

._crit_edge223:                                   ; preds = %brelse.exit, %.loopexit
  %.not165 = icmp eq ptr %.0149, %i.a
  br i1 %.not165, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %._crit_edge223
  call void @kfree(ptr noundef nonnull %.0149) #15
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %._crit_edge223, %_kzalloc_noprof.exit
  %.0 = phi i32 [ -12, %_kzalloc_noprof.exit ], [ %.5, %._crit_edge223 ], [ %.5, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @__filemap_get_folio_mpol(ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @ext4_wait_block_bitmap(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noinline noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @ext4_mb_generate_buddy(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef initializes((16, 20)) %4) unnamed_addr #4 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 864        ; 2 uses
  %.val56 = load ptr, ptr %i.a, align 32          ; 3 uses
  %i.b = getelementptr i8, ptr %.val56, i64 24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = trunc i64 %i.c to i32                    ; 7 uses
  callbr void asm sideeffect "# ALT: oldinstr\0A771:\0A\09# ALT: oldinstr\0A771:\0A\09jmp 6f\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 3*32+21)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09jmp ${4:l}\0A775:\0A.popsection\0A\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ${0:c}\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09\0A775:\0A.popsection\0A.pushsection .altinstr_aux,\22ax\22\0A6:\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A testb $1, ${2:a}\0A jnz ${3:l}\0A jmp ${4:l}\0A.popsection\0A", "i,i,i,!i,!i,~{dirflag},~{fpsr},~{flags}"(i16 4, i32 16, ptr nonnull getelementptr inbounds nuw (i8, ptr @boot_cpu_data, i64 48)) #14
          to label %bb.b [label %bb.b, label %get_cycles.exit], !srcloc !276

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.e = tail call { i64, i64 } asm sideeffect "rdtsc", "={ax},={dx},~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !277 ; 2 uses
  %i.f = extractvalue { i64, i64 } %i.e, 0
  %i.g = extractvalue { i64, i64 } %i.e, 1
  %i.h = shl i64 %i.g, 32
  %i.i = or i64 %i.h, %i.f
  br label %get_cycles.exit

get_cycles.exit:                                  ; preds = %bb.a, %bb.b
  %.0.i = phi i64 [ %i.i, %bb.b ], [ 0, %bb.a ]
  %i.j = ptrtoint ptr %2 to i64                   ; 2 uses
  %.tr.i.i = trunc i64 %i.j to i32
  %i.k = shl i32 %.tr.i.i, 3
  %i.l = and i32 %i.k, 56                         ; 7 uses
  %i.m = and i64 %i.j, -8
  %i.n = inttoptr i64 %i.m to ptr                 ; 3 uses
  %i.o = add i32 %i.l, %i.d
  %i.p = sext i32 %i.o to i64                     ; 3 uses
  %i.q = zext nneg i32 %i.l to i64
  %i.r = tail call i64 @_find_next_zero_bit(ptr noundef %i.n, i64 noundef range(i64 -2147483648, 2147483648) %i.p, i64 noundef range(i64 -2147483648, 2147483648) %i.q) #15
  %i.s = trunc i64 %i.r to i32
  %i.t = sub i32 %i.s, %i.l                       ; 2 uses
  %..i = tail call i32 @llvm.smin.i32(i32 %i.t, i32 %i.d) ; 2 uses
  %i.u = getelementptr i8, ptr %4, i64 16
  store i32 %..i, ptr %i.u, align 8
  %i.v = icmp slt i32 %i.t, %i.d
  br i1 %i.v, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %get_cycles.exit
  %i.w = getelementptr i8, ptr %4, i64 88         ; 3 uses
  %i.x = getelementptr i8, ptr %0, i64 20
  br label %mb_find_next_bit.exit

mb_find_next_bit.exit:                            ; preds = %.lr.ph, %bb.g
  %.071 = phi i32 [ 0, %.lr.ph ], [ %i.y, %bb.g ]
  %.04970 = phi i32 [ 0, %.lr.ph ], [ %i.af, %bb.g ]
  %.05069 = phi i32 [ %..i, %.lr.ph ], [ %.1, %bb.g ] ; 3 uses
  %i.y = add i32 %.071, 1                         ; 2 uses
  %i.z = add i32 %.05069, %i.l
  %i.aa = sext i32 %i.z to i64
  %i.ab = tail call i64 @_find_next_bit(ptr noundef %i.n, i64 noundef range(i64 -2147483648, 2147483648) %i.p, i64 noundef range(i64 -2147483648, 2147483648) %i.aa) #15
  %i.ac = trunc i64 %i.ab to i32
  %i.ad = sub i32 %i.ac, %i.l                     ; 2 uses
  %..i58 = tail call i32 @llvm.smin.i32(i32 %i.ad, i32 %i.d) ; 3 uses
  %i.ae = sub i32 %..i58, %.05069                 ; 4 uses
  %i.af = add i32 %i.ae, %.04970                  ; 2 uses
  %i.ag = icmp sgt i32 %i.ae, 1
  br i1 %i.ag, label %bb.c, label %bb.f

bb.c:                                             ; preds = %mb_find_next_bit.exit
  %.val31.i = load ptr, ptr %i.a, align 32        ; 2 uses
  %i.ah = zext nneg i32 %i.ae to i64
  %i.ai = getelementptr i8, ptr %.val31.i, i64 24
  %i.aj = load i64, ptr %i.ai, align 8
  %i.ak = icmp ult i64 %i.aj, %i.ah
  br i1 %i.ak, label %bb.d, label %.lr.ph.i, !prof !23

bb.d:                                             ; preds = %bb.c
  tail call void asm sideeffect "1512: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1512b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1512) #14, !srcloc !278
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.33, ptr nonnull @.str.34, i32 817, i32 0, i64 16) #14, !srcloc !279
  unreachable

.lr.ph.i:                                         ; preds = %bb.c
  %i.al = load i8, ptr %i.x, align 4
  %i.am = zext nneg i8 %i.al to i32
  %i.an = shl i32 2, %i.am
  %i.ao = getelementptr i8, ptr %.val31.i, i64 736
  br label %fls.exit.i

fls.exit.i:                                       ; preds = %.lr.ph.i, %mb_clear_bit.exit.i
  %.02733.i = phi i32 [ %.05069, %.lr.ph.i ], [ %i.bm, %mb_clear_bit.exit.i ] ; 3 uses
  %.02832.i = phi i32 [ %i.ae, %.lr.ph.i ], [ %i.bl, %mb_clear_bit.exit.i ] ; 2 uses
  %i.ap = or i32 %.02733.i, %i.an
  %i.aq = tail call i32 asm "bsfl $1,$0", "=r,r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.ap, i32 -1) #17, !srcloc !280
  %i.ar = tail call i32 asm "bsrl $1,$0", "=r,r,0,~{dirflag},~{fpsr},~{flags}"(i32 %.02832.i, i32 -1) #17, !srcloc !145
  %spec.select.i = tail call i32 @llvm.smin.i32(i32 %i.aq, i32 %i.ar) ; 4 uses
  %i.as = shl nuw i32 1, %spec.select.i           ; 2 uses
  %i.at = sext i32 %spec.select.i to i64          ; 2 uses
  %i.au = getelementptr [4 x i8], ptr %i.w, i64 %i.at ; 2 uses
  %i.av = load i32, ptr %i.au, align 4
  %i.aw = add i32 %i.av, 1
  store i32 %i.aw, ptr %i.au, align 4
  %i.ax = icmp sgt i32 %spec.select.i, 0
  br i1 %i.ax, label %bb.e, label %mb_clear_bit.exit.i

bb.e:                                             ; preds = %fls.exit.i
  %i.ay = load ptr, ptr %i.ao, align 32
  %i.az = getelementptr [2 x i8], ptr %i.ay, i64 %i.at
  %i.ba = load i16, ptr %i.az, align 2
  %i.bb = zext i16 %i.ba to i64
  %i.bc = getelementptr i8, ptr %1, i64 %i.bb
  %i.bd = ptrtoint ptr %i.bc to i64               ; 2 uses
  %i.be = and i64 %i.bd, -8
  %i.bf = inttoptr i64 %i.be to ptr
  %.tr.i.i.i = trunc i64 %i.bd to i32
  %i.bg = shl i32 %.tr.i.i.i, 3
  %i.bh = and i32 %i.bg, 56
  %i.bi = ashr i32 %.02733.i, %spec.select.i
  %i.bj = add nsw i32 %i.bh, %i.bi
  %i.bk = sext i32 %i.bj to i64
  tail call void asm sideeffect " btrq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.bf, i64 range(i64 -2147483648, 2147483648) %i.bk) #14, !srcloc !78
  br label %mb_clear_bit.exit.i

mb_clear_bit.exit.i:                              ; preds = %bb.e, %fls.exit.i
  %i.bl = sub i32 %.02832.i, %i.as                ; 2 uses
  %i.bm = add i32 %i.as, %.02733.i
  %i.bn = icmp sgt i32 %i.bl, 0
  br i1 %i.bn, label %fls.exit.i, label %ext4_mb_mark_free_simple.exit, !llvm.loop !281

bb.f:                                             ; preds = %mb_find_next_bit.exit
  %i.bo = load i32, ptr %i.w, align 8
  %i.bp = add i32 %i.bo, 1
  store i32 %i.bp, ptr %i.w, align 8
  br label %ext4_mb_mark_free_simple.exit

ext4_mb_mark_free_simple.exit:                    ; preds = %mb_clear_bit.exit.i, %bb.f
  %i.bq = icmp slt i32 %i.ad, %i.d
  br i1 %i.bq, label %mb_find_next_zero_bit.exit64, label %bb.g

mb_find_next_zero_bit.exit64:                     ; preds = %ext4_mb_mark_free_simple.exit
  %i.br = add i32 %..i58, %i.l
  %i.bs = sext i32 %i.br to i64
  %i.bt = tail call i64 @_find_next_zero_bit(ptr noundef %i.n, i64 noundef range(i64 -2147483648, 2147483648) %i.p, i64 noundef range(i64 -2147483648, 2147483648) %i.bs) #15
  %i.bu = trunc i64 %i.bt to i32
  %i.bv = sub i32 %i.bu, %i.l
  %..i62 = tail call i32 @llvm.smin.i32(i32 %i.bv, i32 %i.d)
  br label %bb.g

bb.g:                                             ; preds = %mb_find_next_zero_bit.exit64, %ext4_mb_mark_free_simple.exit
  %.1 = phi i32 [ %..i62, %mb_find_next_zero_bit.exit64 ], [ %..i58, %ext4_mb_mark_free_simple.exit ] ; 2 uses
  %i.bw = icmp slt i32 %.1, %i.d
  br i1 %i.bw, label %mb_find_next_bit.exit, label %._crit_edge, !llvm.loop !282

._crit_edge:                                      ; preds = %bb.g, %get_cycles.exit
  %.049.lcssa = phi i32 [ 0, %get_cycles.exit ], [ %i.af, %bb.g ] ; 3 uses
  %.0.lcssa = phi i32 [ 0, %get_cycles.exit ], [ %i.y, %bb.g ]
  %i.bx = getelementptr i8, ptr %4, i64 24
end_hunk_0
