Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/mballoc?download=true
inline.NumInlined: 1079
inline.NumDeleted: 244
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@ext4_discard_preallocations:bb.a
  call void asm sideeffect "1656: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1656b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1656) #14, !srcloc !46
  call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.33, ptr @.str.34, i32 5142, i32 0, i64 16) #14, !srcloc !47
  unreachable

bb.ag:                                            ; preds = %bb.ae
  %i.dl = getelementptr i8, ptr %.pn.in105, i64 24
  %i.dm = load i32, ptr %i.dl, align 8
  %i.dn = icmp eq i32 %i.dm, 0
  br i1 %i.dn, label %bb.ah, label %ext4_mb_pa_free.exit, !prof !21

bb.ah:                                            ; preds = %bb.ag
  call void asm sideeffect "1657: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1657b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1657) #14, !srcloc !48
  call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.33, ptr @.str.34, i32 5143, i32 0, i64 16) #14, !srcloc !49
  unreachable

ext4_mb_pa_free.exit:                             ; preds = %bb.ag
  %i.do = load ptr, ptr @ext4_pspace_cachep, align 8
  call void @kmem_cache_free(ptr noundef %i.do, ptr noundef nonnull %.0106) #15
  br label %ext4_mb_unload_buddy.exit

ext4_mb_unload_buddy.exit:                        ; preds = %bb.w, %bb.v, %folio_put.exit.i, %ext4_mb_pa_free.exit, %bb.q
  %.not95 = icmp eq ptr %.pn107, %1
  br i1 %.not95, label %.loopexit, label %bb.n, !llvm.loop !122

.loopexit:                                        ; preds = %ext4_mb_unload_buddy.exit, %rb_first.exit._crit_edge, %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @_raw_write_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @_raw_write_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @schedule_timeout_uninterruptible(i64 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @rb_erase(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @rb_next(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @ext4_get_group_number(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noinline noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc i32 @ext4_mb_load_buddy_gfp(ptr noundef %0, i32 noundef %1, ptr nofree noundef captures(none) %2, i32 noundef range(i32 3136, 35905) %3) unnamed_addr #4 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 864
  %.val = load ptr, ptr %i.a, align 32
  %i.b = getelementptr i8, ptr %.val, i64 720
  %i.c = load ptr, ptr %i.b, align 16             ; 2 uses
  %i.d = tail call i32 @__SCT__might_resched() #15 ; 0 uses
  %i.e = tail call ptr @ext4_get_group_info(ptr noundef %0, i32 noundef %1) #15 ; 3 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.an, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %0, i64 20
  %i.g = load i8, ptr %i.f, align 4
  %i.h = zext i8 %i.g to i16
  %i.i = getelementptr i8, ptr %2, i64 48
  store i16 %i.h, ptr %i.i, align 8
  %i.j = getelementptr i8, ptr %2, i64 32
  store ptr %i.e, ptr %i.j, align 8
  %i.k = getelementptr i8, ptr %2, i64 40
  store ptr %0, ptr %i.k, align 8
  %i.l = getelementptr i8, ptr %2, i64 52
  store i32 %1, ptr %i.l, align 4
  store ptr null, ptr %2, align 8
  %i.m = getelementptr i8, ptr %2, i64 16         ; 3 uses
  store ptr null, ptr %i.m, align 8
  %i.n = load volatile i64, ptr %i.e, align 8
  %i.o = and i64 %i.n, 1
  %.not172 = icmp eq i64 %i.o, 0
  br i1 %.not172, label %bb.d, label %bb.c, !prof !20

bb.c:                                             ; preds = %bb.b
  %i.p = tail call fastcc i32 @ext4_mb_init_group(ptr noundef %0, i32 noundef %1, i32 noundef %3) #16, !srcloc !133 ; 2 uses
  %.not137 = icmp eq i32 %i.p, 0
  br i1 %.not137, label %bb.d, label %bb.an

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.q = shl i32 %1, 1                            ; 2 uses
  %i.r = sext i32 %i.q to i64                     ; 2 uses
  %i.s = getelementptr i8, ptr %i.c, i64 134      ; 4 uses
  %i.t = load i8, ptr %i.s, align 2
  %i.u = zext nneg i8 %i.t to i64
  %i.v = shl i64 %i.r, %i.u
  %i.w = getelementptr i8, ptr %i.c, i64 48       ; 6 uses
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = shl i64 %i.v, 20
  %i.z = ashr i64 %i.y, 32                        ; 2 uses
  %i.aa = tail call ptr @__filemap_get_folio_mpol(ptr noundef %i.x, i64 noundef range(i64 -2147483648, 2147483648) %i.z, i32 noundef 1, i32 noundef 0, ptr noundef null) #15 ; 6 uses
  %i.ab = icmp ugt ptr %i.aa, inttoptr (i64 -4096 to ptr)
  br i1 %i.ab, label %folio_test_uptodate.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = load volatile i64, ptr %i.aa, align 8
  %i.ad = and i64 %i.ac, 8
  %.not174 = icmp eq i64 %i.ad, 0
  br i1 %.not174, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !22
  %i.ae = load volatile i64, ptr %i.aa, align 8
  %i.af = and i64 %i.ae, 1
  %.not175 = icmp eq i64 %i.af, 0
  br i1 %.not175, label %bb.n, label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.ag = getelementptr i8, ptr %i.aa, i64 52     ; 2 uses
  %i.ah = tail call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock decl $0", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.ag, ptr elementtype(i32) %i.ag) #14, !srcloc !23 ; 2 uses
  %i.ai = icmp ult i8 %i.ah, 2
  tail call void @llvm.assume(i1 %i.ai)
  %.not.i147 = icmp eq i8 %i.ah, 0
  br i1 %.not.i147, label %folio_test_uptodate.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @__folio_put(ptr noundef %i.aa) #15
  br label %folio_test_uptodate.exit

folio_test_uptodate.exit:                         ; preds = %bb.h, %bb.g, %bb.d
  %i.aj = load ptr, ptr %i.w, align 8
  %i.ak = tail call ptr @__filemap_get_folio_mpol(ptr noundef %i.aj, i64 noundef range(i64 -2147483648, 2147483648) %i.z, i32 noundef 7, i32 noundef range(i32 0, 35905) %3, ptr noundef null) #15 ; 12 uses
  %i.al = icmp ugt ptr %i.ak, inttoptr (i64 -4096 to ptr)
  br i1 %i.al, label %bb.n, label %bb.i

bb.i:                                             ; preds = %folio_test_uptodate.exit
  %i.am = getelementptr i8, ptr %i.ak, i64 24
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = load ptr, ptr %i.w, align 8
  %.not138 = icmp eq ptr %i.an, %i.ao
  br i1 %.not138, label %.critedge143, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ap = tail call i32 @___ratelimit(ptr noundef @ext4_mb_load_buddy_gfp._rs, ptr noundef @__func__.ext4_mb_load_buddy_gfp) #15
  %.not176 = icmp eq i32 %i.ap, 0
  br i1 %.not176, label %.critedge, label %bb.k, !prof !20

bb.k:                                             ; preds = %bb.j
  %i.aq = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.76, ptr @.str.34, i32 1736, i32 2321, i64 16) #14, !srcloc !134
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.aq) #15
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !135
  br label %.critedge

.critedge:                                        ; preds = %bb.j, %bb.k
  tail call void @folio_unlock(ptr noundef %i.ak) #15
  br label %folio_test_uptodate.exit149

.critedge143:                                     ; preds = %bb.i
  %i.ar = load volatile i64, ptr %i.ak, align 8
  %i.as = and i64 %i.ar, 8
  %.not177 = icmp eq i64 %i.as, 0
  br i1 %.not177, label %folio_test_uptodate.exit148, label %folio_test_uptodate.exit148.thread

folio_test_uptodate.exit148.thread:               ; preds = %.critedge143
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !22
  br label %folio_size.exit

folio_test_uptodate.exit148:                      ; preds = %.critedge143
  %i.at = tail call fastcc i32 @ext4_mb_init_cache(ptr noundef %i.ak, ptr noundef null, i32 noundef %3) #16, !srcloc !136 ; 2 uses
  %.not139 = icmp eq i32 %i.at, 0
  br i1 %.not139, label %bb.m, label %bb.l

bb.l:                                             ; preds = %folio_test_uptodate.exit148
  tail call void @folio_unlock(ptr noundef %i.ak) #15
  br label %folio_test_uptodate.exit149

bb.m:                                             ; preds = %folio_test_uptodate.exit148
  %i.au = load volatile i64, ptr %i.ak, align 8   ; 0 uses
  br label %folio_size.exit

folio_size.exit:                                  ; preds = %bb.m, %folio_test_uptodate.exit148.thread
  tail call void @folio_unlock(ptr noundef %i.ak) #15
  br label %bb.n

bb.n:                                             ; preds = %folio_test_uptodate.exit, %folio_size.exit, %bb.f
  %.0130 = phi ptr [ %i.ak, %folio_test_uptodate.exit ], [ %i.ak, %folio_size.exit ], [ %i.aa, %bb.f ] ; 14 uses
  %i.av = icmp ugt ptr %.0130, inttoptr (i64 -4096 to ptr)
  br i1 %i.av, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.aw = ptrtoint ptr %.0130 to i64
  %i.ax = trunc i64 %i.aw to i32
  br label %folio_test_uptodate.exit149

bb.p:                                             ; preds = %bb.n
  %i.ay = load volatile i64, ptr %.0130, align 8
  %i.az = and i64 %i.ay, 8
  %.not178 = icmp eq i64 %i.az, 0
  br i1 %.not178, label %folio_test_uptodate.exit149, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !22
  store ptr %.0130, ptr %i.m, align 8
  %i.ba = load i64, ptr @vmemmap_base, align 8
  %i.bb = ptrtoint ptr %.0130 to i64
  %i.bc = sub i64 %i.bb, %i.ba
  %i.bd = shl i64 %i.bc, 6
  %i.be = load i64, ptr @page_offset_base, align 8
  %i.bf = add i64 %i.bd, %i.be
  %i.bg = inttoptr i64 %i.bf to ptr
  %i.bh = load i8, ptr %i.s, align 2
  %i.bi = zext nneg i8 %i.bh to i64
  %i.bj = shl i64 %i.r, %i.bi
  %i.bk = load volatile i64, ptr %.0130, align 8
  %i.bl = and i64 %i.bk, 64
  %.not.i.i150 = icmp eq i64 %i.bl, 0
  br i1 %.not.i.i150, label %folio_size.exit153, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bm = getelementptr i8, ptr %.0130, i64 64
  %.val.i.i151 = load i64, ptr %i.bm, align 16
  %i.bn = and i64 %.val.i.i151, 255
  br label %folio_size.exit153

folio_size.exit153:                               ; preds = %bb.q, %bb.r
  %.0.i.i152 = phi i64 [ %i.bn, %bb.r ], [ 0, %bb.q ]
  %i.bo = shl i64 4096, %.0.i.i152
  %i.bp = add i64 %i.bo, -2
  %i.bq = and i64 %i.bp, %i.bj
  %i.br = getelementptr i8, ptr %i.bg, i64 %i.bq
  %i.bs = getelementptr i8, ptr %2, i64 24        ; 2 uses
  store ptr %i.br, ptr %i.bs, align 8
  %i.bt = or disjoint i32 %i.q, 1
  %i.bu = sext i32 %i.bt to i64                   ; 2 uses
  %i.bv = load i8, ptr %i.s, align 2
  %i.bw = zext nneg i8 %i.bv to i64
  %i.bx = shl i64 %i.bu, %i.bw
  %i.by = shl i64 %i.bx, 20
  %i.bz = ashr i64 %i.by, 32                      ; 3 uses
  %i.ca = getelementptr i8, ptr %.0130, i64 32
  %i.cb = load i64, ptr %i.ca, align 16
  %i.cc = load volatile i64, ptr %.0130, align 16
  %i.cd = and i64 %i.cc, 64
  %.not.i.i154 = icmp eq i64 %i.cd, 0
  br i1 %.not.i.i154, label %folio_contains.exit, label %bb.s

bb.s:                                             ; preds = %folio_size.exit153
  %i.ce = getelementptr i8, ptr %.0130, i64 64
  %.val.i.i155 = load i64, ptr %i.ce, align 16
  %i.cf = and i64 %.val.i.i155, 255
  %i.cg = shl nuw i64 1, %i.cf
  br label %folio_contains.exit

folio_contains.exit:                              ; preds = %folio_size.exit153, %bb.s
  %.0.i.i156 = phi i64 [ %i.cg, %bb.s ], [ 1, %folio_size.exit153 ]
  %i.ch = sub i64 %i.bz, %i.cb
  %i.ci = icmp ult i64 %i.ch, %.0.i.i156
  br i1 %i.ci, label %bb.t, label %bb.u

bb.t:                                             ; preds = %folio_contains.exit
  %i.cj = getelementptr i8, ptr %.0130, i64 52    ; 2 uses
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock incl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.cj, ptr elementtype(i32) %i.cj) #14, !srcloc !50
  br label %bb.ah

bb.u:                                             ; preds = %folio_contains.exit
  %i.ck = load ptr, ptr %i.w, align 8
  %i.cl = tail call ptr @__filemap_get_folio_mpol(ptr noundef %i.ck, i64 noundef range(i64 -2147483648, 2147483648) %i.bz, i32 noundef 1, i32 noundef 0, ptr noundef null) #15 ; 6 uses
  %i.cm = icmp ugt ptr %i.cl, inttoptr (i64 -4096 to ptr)
  br i1 %i.cm, label %folio_test_uptodate.exit157, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cn = load volatile i64, ptr %i.cl, align 8
  %i.co = and i64 %i.cn, 8
  %.not179 = icmp eq i64 %i.co, 0
  br i1 %.not179, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !22
  %i.cp = load volatile i64, ptr %i.cl, align 8
  %i.cq = and i64 %i.cp, 1
  %.not180 = icmp eq i64 %i.cq, 0
  br i1 %.not180, label %bb.ae, label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w
  %i.cr = getelementptr i8, ptr %i.cl, i64 52     ; 2 uses
  %i.cs = tail call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock decl $0", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.cr, ptr elementtype(i32) %i.cr) #14, !srcloc !23 ; 2 uses
  %i.ct = icmp ult i8 %i.cs, 2
  tail call void @llvm.assume(i1 %i.ct)
  %.not.i158 = icmp eq i8 %i.cs, 0
  br i1 %.not.i158, label %folio_test_uptodate.exit157, label %bb.y

bb.y:                                             ; preds = %bb.x
  tail call void @__folio_put(ptr noundef %i.cl) #15
  br label %folio_test_uptodate.exit157

folio_test_uptodate.exit157:                      ; preds = %bb.y, %bb.x, %bb.u
  %i.cu = load ptr, ptr %i.w, align 8
  %i.cv = tail call ptr @__filemap_get_folio_mpol(ptr noundef %i.cu, i64 noundef range(i64 -2147483648, 2147483648) %i.bz, i32 noundef 7, i32 noundef range(i32 0, 35905) %3, ptr noundef null) #15 ; 11 uses
  %i.cw = icmp ugt ptr %i.cv, inttoptr (i64 -4096 to ptr)
  br i1 %i.cw, label %bb.ae, label %bb.z

bb.z:                                             ; preds = %folio_test_uptodate.exit157
  %i.cx = getelementptr i8, ptr %i.cv, i64 24
  %i.cy = load ptr, ptr %i.cx, align 8
  %i.cz = load ptr, ptr %i.w, align 8
  %.not140 = icmp eq ptr %i.cy, %i.cz
  br i1 %.not140, label %.critedge146, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.da = tail call i32 @___ratelimit(ptr noundef @ext4_mb_load_buddy_gfp._rs.77, ptr noundef @__func__.ext4_mb_load_buddy_gfp) #15
  %.not181 = icmp eq i32 %i.da, 0
  br i1 %.not181, label %.critedge145, label %bb.ab, !prof !20

bb.ab:                                            ; preds = %bb.aa
  %i.db = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.78, ptr @.str.34, i32 1786, i32 2321, i64 16) #14, !srcloc !137
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.db) #15
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !138
  br label %.critedge145

.critedge145:                                     ; preds = %bb.aa, %bb.ab
  tail call void @folio_unlock(ptr noundef %i.cv) #15
  br label %folio_test_uptodate.exit149

.critedge146:                                     ; preds = %bb.z
  %i.dc = load volatile i64, ptr %i.cv, align 8
  %i.dd = and i64 %i.dc, 8
  %.not182 = icmp eq i64 %i.dd, 0
  br i1 %.not182, label %folio_test_uptodate.exit160, label %folio_test_uptodate.exit160.thread

folio_test_uptodate.exit160.thread:               ; preds = %.critedge146
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !22
  br label %bb.ad

folio_test_uptodate.exit160:                      ; preds = %.critedge146
  %i.de = load ptr, ptr %i.bs, align 8
  %i.df = tail call fastcc i32 @ext4_mb_init_cache(ptr noundef %i.cv, ptr noundef %i.de, i32 noundef %3) #16, !srcloc !139 ; 2 uses
  %.not141 = icmp eq i32 %i.df, 0
  br i1 %.not141, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %folio_test_uptodate.exit160
  tail call void @folio_unlock(ptr noundef %i.cv) #15
  br label %folio_test_uptodate.exit149

bb.ad:                                            ; preds = %folio_test_uptodate.exit160.thread, %folio_test_uptodate.exit160
  tail call void @folio_unlock(ptr noundef %i.cv) #15
  br label %bb.ae

bb.ae:                                            ; preds = %folio_test_uptodate.exit157, %bb.ad, %bb.w
  %.1 = phi ptr [ %i.cv, %folio_test_uptodate.exit157 ], [ %i.cv, %bb.ad ], [ %i.cl, %bb.w ] ; 6 uses
  %i.dg = icmp ugt ptr %.1, inttoptr (i64 -4096 to ptr)
  br i1 %i.dg, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.dh = ptrtoint ptr %.1 to i64
  %i.di = trunc i64 %i.dh to i32
  br label %folio_test_uptodate.exit149

bb.ag:                                            ; preds = %bb.ae
  %i.dj = load volatile i64, ptr %.1, align 8
  %i.dk = and i64 %i.dj, 8
  %.not183 = icmp eq i64 %i.dk, 0
  br i1 %.not183, label %folio_test_uptodate.exit149, label %folio_test_uptodate.exit161.thread

folio_test_uptodate.exit161.thread:               ; preds = %bb.ag
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !22
  br label %bb.ah

bb.ah:                                            ; preds = %folio_test_uptodate.exit161.thread, %bb.t
  %.2 = phi ptr [ %.0130, %bb.t ], [ %.1, %folio_test_uptodate.exit161.thread ] ; 4 uses
  %.pre-phi = ptrtoint ptr %.2 to i64
  store ptr %.2, ptr %2, align 8
  %i.dl = load i64, ptr @vmemmap_base, align 8
  %i.dm = sub i64 %.pre-phi, %i.dl
  %i.dn = shl i64 %i.dm, 6
  %i.do = load i64, ptr @page_offset_base, align 8
  %i.dp = add i64 %i.dn, %i.do
  %i.dq = inttoptr i64 %i.dp to ptr
  %i.dr = load i8, ptr %i.s, align 2
  %i.ds = zext nneg i8 %i.dr to i64
  %i.dt = shl i64 %i.bu, %i.ds
  %i.du = load volatile i64, ptr %.2, align 8
  %i.dv = and i64 %i.du, 64
  %.not.i.i162 = icmp eq i64 %i.dv, 0
  br i1 %.not.i.i162, label %folio_size.exit165, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dw = getelementptr i8, ptr %.2, i64 64
  %.val.i.i163 = load i64, ptr %i.dw, align 16
  %i.dx = and i64 %.val.i.i163, 255
  br label %folio_size.exit165

folio_size.exit165:                               ; preds = %bb.ah, %bb.ai
  %.0.i.i164 = phi i64 [ %i.dx, %bb.ai ], [ 0, %bb.ah ]
  %i.dy = shl i64 4096, %.0.i.i164
  %i.dz = add i64 %i.dy, -1
  %i.ea = and i64 %i.dz, %i.dt
  %i.eb = getelementptr i8, ptr %i.dq, i64 %i.ea
  br label %.sink.split

folio_test_uptodate.exit149:                      ; preds = %bb.ag, %bb.p, %bb.af, %bb.ac, %.critedge145, %bb.o, %bb.l, %.critedge
  %.0131 = phi i32 [ %i.ax, %bb.o ], [ %i.di, %bb.af ], [ -5, %bb.p ], [ -22, %.critedge145 ], [ %i.df, %bb.ac ], [ %i.at, %bb.l ], [ -22, %.critedge ], [ -5, %bb.ag ]
  %.3 = phi ptr [ %.0130, %bb.o ], [ %.1, %bb.af ], [ %.0130, %bb.p ], [ %i.cv, %.critedge145 ], [ %i.cv, %bb.ac ], [ %i.ak, %bb.l ], [ %i.ak, %.critedge ], [ %.1, %bb.ag ] ; 4 uses
  %.not.i = icmp eq ptr %.3, null
  %i.ec = icmp ugt ptr %.3, inttoptr (i64 -4096 to ptr)
  %spec.select.i = or i1 %.not.i, %i.ec
  br i1 %spec.select.i, label %folio_put.exit167, label %bb.aj

bb.aj:                                            ; preds = %folio_test_uptodate.exit149
  %i.ed = getelementptr i8, ptr %.3, i64 52       ; 2 uses
  %i.ee = tail call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock decl $0", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.ed, ptr elementtype(i32) %i.ed) #14, !srcloc !23 ; 2 uses
  %i.ef = icmp ult i8 %i.ee, 2
  tail call void @llvm.assume(i1 %i.ef)
  %.not.i166 = icmp eq i8 %i.ee, 0
  br i1 %.not.i166, label %folio_put.exit167, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  tail call void @__folio_put(ptr noundef nonnull %.3) #15
  br label %folio_put.exit167

folio_put.exit167:                                ; preds = %bb.ak, %bb.aj, %folio_test_uptodate.exit149
  %i.eg = load ptr, ptr %i.m, align 8             ; 3 uses
  %.not142 = icmp eq ptr %i.eg, null
  br i1 %.not142, label %folio_put.exit169, label %bb.al

bb.al:                                            ; preds = %folio_put.exit167
  %i.eh = getelementptr i8, ptr %i.eg, i64 52     ; 2 uses
  %i.ei = tail call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock decl $0", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.eh, ptr elementtype(i32) %i.eh) #14, !srcloc !23 ; 2 uses
  %i.ej = icmp ult i8 %i.ei, 2
  tail call void @llvm.assume(i1 %i.ej)
  %.not.i168 = icmp eq i8 %i.ei, 0
  br i1 %.not.i168, label %folio_put.exit169, label %bb.am

bb.am:                                            ; preds = %bb.al
  tail call void @__folio_put(ptr noundef nonnull %i.eg) #15
  br label %folio_put.exit169

folio_put.exit169:                                ; preds = %bb.am, %bb.al, %folio_put.exit167
  %i.ek = getelementptr i8, ptr %2, i64 8
  store ptr null, ptr %i.ek, align 8
  br label %.sink.split

.sink.split:                                      ; preds = %folio_size.exit165, %folio_put.exit169
  %.sink196 = phi i64 [ 24, %folio_put.exit169 ], [ 8, %folio_size.exit165 ]
  %.sink = phi ptr [ null, %folio_put.exit169 ], [ %i.eb, %folio_size.exit165 ]
  %.0.ph = phi i32 [ %.0131, %folio_put.exit169 ], [ 0, %folio_size.exit165 ]
  %i.el = getelementptr i8, ptr %2, i64 %.sink196
  store ptr %.sink, ptr %i.el, align 8
  br label %bb.an

bb.an:                                            ; preds = %.sink.split, %bb.c, %bb.a
  %.0 = phi i32 [ -117, %bb.a ], [ %i.p, %bb.c ], [ %.0.ph, %.sink.split ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @ext4_mb_unload_buddy(ptr nofree noundef readonly captures(none) %0) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %folio_put.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %i.b, i64 52       ; 2 uses
  %i.d = tail call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock decl $0", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.c, ptr elementtype(i32) %i.c) #14, !srcloc !23 ; 2 uses
  %i.e = icmp ult i8 %i.d, 2
  tail call void @llvm.assume(i1 %i.e)
  %.not.i = icmp eq i8 %i.d, 0
  br i1 %.not.i, label %folio_put.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @__folio_put(ptr noundef nonnull %i.b) #15
  br label %folio_put.exit

folio_put.exit:                                   ; preds = %bb.c, %bb.b, %bb.a
  %i.f = load ptr, ptr %0, align 8                ; 3 uses
  %.not5 = icmp eq ptr %i.f, null
  br i1 %.not5, label %folio_put.exit7, label %bb.d

bb.d:                                             ; preds = %folio_put.exit
  %i.g = getelementptr i8, ptr %i.f, i64 52       ; 2 uses
  %i.h = tail call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock decl $0", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.g, ptr elementtype(i32) %i.g) #14, !srcloc !23 ; 2 uses
  %i.i = icmp ult i8 %i.h, 2
  tail call void @llvm.assume(i1 %i.i)
  %.not.i6 = icmp eq i8 %i.h, 0
  br i1 %.not.i6, label %folio_put.exit7, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @__folio_put(ptr noundef nonnull %i.f) #15
  br label %folio_put.exit7

folio_put.exit7:                                  ; preds = %bb.e, %bb.d, %folio_put.exit
  ret void
}

; Function Attrs: fn_ret_thunk_extern noinline noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @ext4_mb_release_inode_pa(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) unnamed_addr #4 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  %i.b = alloca i32, align 4                      ; 10 uses
  %i.c = getelementptr i8, ptr %0, i64 40         ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 4 uses
  %i.e = getelementptr i8, ptr %i.d, i64 864
  %.val = load ptr, ptr %i.e, align 32            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %i.f = getelementptr i8, ptr %2, i64 64
  %i.g = load i32, ptr %i.f, align 8
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.b, label %bb.c, !prof !21

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "1671: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1671b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1671) #14, !srcloc !141
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.33, ptr @.str.34, i32 5429, i32 0, i64 16) #14, !srcloc !142
  unreachable

bb.c:                                             ; preds = %bb.a
  store i32 0, ptr %i.a, align 4, !annotation !19
  store i32 0, ptr %i.b, align 4, !annotation !19
  %i.i = getelementptr i8, ptr %2, i64 72         ; 3 uses
  %i.j = load i64, ptr %i.i, align 8
  call void @ext4_get_group_no_and_offset(ptr noundef %i.d, i64 noundef %i.j, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #15
  %i.k = load i64, ptr %i.i, align 8
  %i.l = load i32, ptr %i.b, align 4              ; 4 uses
  %i.m = getelementptr i8, ptr %.val, i64 84      ; 2 uses
  %i.n = load i32, ptr %i.m, align 4
  %i.o = shl i32 %i.l, %i.n
  %i.p = sext i32 %i.o to i64
  %i.q = sub i64 %i.k, %i.p
  %i.r = load i32, ptr %i.a, align 4
  %i.s = getelementptr i8, ptr %0, i64 52
  %i.t = load i32, ptr %i.s, align 4
  %.not = icmp eq i32 %i.r, %i.t
  %.phi.trans.insert = getelementptr i8, ptr %2, i64 84
  %.pre = load i32, ptr %.phi.trans.insert, align 4 ; 2 uses
  br i1 %.not, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not50 = icmp eq i32 %.pre, 0
  br i1 %.not50, label %.critedge, label %bb.e, !prof !20

bb.e:                                             ; preds = %bb.d
  call void asm sideeffect "1672: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1672b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1672) #14, !srcloc !143
  call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.33, ptr @.str.34, i32 5432, i32 0, i64 16) #14, !srcloc !144
  unreachable

.critedge:                                        ; preds = %bb.c, %bb.d
  %i.u = phi i32 [ 0, %bb.d ], [ %.pre, %bb.c ]
  %i.v = getelementptr i8, ptr %2, i64 84
  %i.w = add i32 %i.u, %i.l                       ; 7 uses
  %i.x = icmp ult i32 %i.l, %i.w
  br i1 %i.x, label %.lr.ph, label %mb_find_next_zero_bit.exit._crit_edge

.lr.ph:                                           ; preds = %.critedge
  %i.y = getelementptr i8, ptr %1, i64 40         ; 2 uses
  %i.z = getelementptr i8, ptr %2, i64 104
  br label %mb_find_next_zero_bit.exit

mb_find_next_zero_bit.exit:                       ; preds = %.lr.ph, %trace_ext4_mb_release_inode_pa.exit
  %i.aa = phi i32 [ %i.l, %.lr.ph ], [ %i.cj, %trace_ext4_mb_release_inode_pa.exit ]
  %.051 = phi i32 [ 0, %.lr.ph ], [ %i.bc, %trace_ext4_mb_release_inode_pa.exit ] ; 2 uses
  %i.ab = load ptr, ptr %i.y, align 8
  %i.ac = ptrtoint ptr %i.ab to i64               ; 2 uses
  %.tr.i.i = trunc i64 %i.ac to i32
  %i.ad = shl i32 %.tr.i.i, 3
  %i.ae = and i32 %i.ad, 56                       ; 3 uses
  %i.af = add i32 %i.ae, %i.aa
  %i.ag = sext i32 %i.af to i64
  %i.ah = add i32 %i.ae, %i.w
  %i.ai = sext i32 %i.ah to i64
end_hunk_0
