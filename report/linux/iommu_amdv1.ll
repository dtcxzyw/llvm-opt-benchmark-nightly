Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/iommu_amdv1?download=true
inline.NumInlined: 364
inline.NumDeleted: 104
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@__iova_to_phys3:bb.a
amdv1pt_entry_oa.exit.thread.i.i:                 ; preds = %bb.h
  %i.au = xor i64 %i.ar, -1
  %i.av = tail call i64 asm "tzcnt $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 %i.au) #14, !srcloc !17
  %i.aw = and i64 %i.av, 4294967295
  %notmask.i.i.i4 = shl nsw i64 -1, %i.aw
  %i.ax = and i64 %notmask.i.i.i4, %i.ar
  %i.ay = shl nuw nsw i64 %i.ax, 12
  br label %bb.i

amdv1pt_entry_oa.exit.i.i:                        ; preds = %bb.h
  %i.az = shl nuw nsw i64 %i.ar, 12               ; 2 uses
  %i.ba = icmp eq i64 %i.as, 0
  br i1 %i.ba, label %pt_entry_oa_exact.exit.i, label %bb.i

bb.i:                                             ; preds = %amdv1pt_entry_oa.exit.thread.i.i, %amdv1pt_entry_oa.exit.i.i
  %i.bb = phi i64 [ %i.ay, %amdv1pt_entry_oa.exit.thread.i.i ], [ %i.az, %amdv1pt_entry_oa.exit.i.i ]
  %i.bc = lshr i64 %i.ah, 29
  %i.bd = and i64 %i.bc, 4294967295
  %i.be = xor i64 %i.bd, -1
  %i.bf = tail call i64 asm "tzcnt $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 %i.be) #14, !srcloc !17
  %i.bg = add i64 %i.bf, 30
  %i.bh = and i64 %i.bg, 4294967295
  br label %pt_entry_oa_exact.exit.i

pt_entry_oa_exact.exit.i:                         ; preds = %bb.i, %amdv1pt_entry_oa.exit.i.i
  %i.bi = phi i64 [ %i.bb, %bb.i ], [ %i.az, %amdv1pt_entry_oa.exit.i.i ]
  %.0.i.i.i3.i = phi i64 [ %i.bh, %bb.i ], [ 30, %amdv1pt_entry_oa.exit.i.i ]
  %notmask.i.i = shl nsw i64 -1, %.0.i.i.i3.i
  %i.bj = xor i64 %notmask.i.i, -1
  %i.bk = and i64 %i.e, %i.bj
  %i.bl = or i64 %i.bk, %i.bi
  store i64 %i.bl, ptr %1, align 8
  br label %__do_iova_to_phys.exit

bb.j:                                             ; preds = %bb.c
  %i.bm = lshr i64 %i.o, 12
  %i.bn = and i64 %i.bm, 1099511627775            ; 3 uses
  %i.bo = and i64 %i.o, 3584                      ; 2 uses
  %i.bp = icmp eq i64 %i.bo, 3584
  br i1 %i.bp, label %amdv1pt_entry_oa.exit.thread.i, label %amdv1pt_entry_oa.exit.i

amdv1pt_entry_oa.exit.thread.i:                   ; preds = %bb.j
  %i.bq = xor i64 %i.bn, -1
  %i.br = tail call i64 asm "tzcnt $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 %i.bq) #14, !srcloc !17
  %i.bs = and i64 %i.br, 4294967295
  %notmask.i.i6 = shl nsw i64 -1, %i.bs
  %i.bt = and i64 %notmask.i.i6, %i.bn
  %i.bu = shl nuw nsw i64 %i.bt, 12
  br label %bb.k

amdv1pt_entry_oa.exit.i:                          ; preds = %bb.j
  %i.bv = shl nuw nsw i64 %i.bn, 12               ; 2 uses
  %i.bw = icmp eq i64 %i.bo, 0
  br i1 %i.bw, label %pt_entry_oa_exact.exit, label %bb.k

bb.k:                                             ; preds = %amdv1pt_entry_oa.exit.thread.i, %amdv1pt_entry_oa.exit.i
  %i.bx = phi i64 [ %i.bu, %amdv1pt_entry_oa.exit.thread.i ], [ %i.bv, %amdv1pt_entry_oa.exit.i ]
  %i.by = lshr i64 %i.o, 38
  %i.bz = xor i64 %i.by, -1
  %i.ca = tail call i64 asm "tzcnt $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 %i.bz) #14, !srcloc !17
  %i.cb = add i64 %i.ca, 39
  %i.cc = and i64 %i.cb, 4294967295
  br label %pt_entry_oa_exact.exit

pt_entry_oa_exact.exit:                           ; preds = %amdv1pt_entry_oa.exit.i, %bb.k
  %i.cd = phi i64 [ %i.bx, %bb.k ], [ %i.bv, %amdv1pt_entry_oa.exit.i ]
  %.0.i.i.i5 = phi i64 [ %i.cc, %bb.k ], [ 39, %amdv1pt_entry_oa.exit.i ]
  %notmask.i = shl nsw i64 -1, %.0.i.i.i5
  %i.ce = xor i64 %notmask.i, -1
  %i.cf = and i64 %i.e, %i.ce
  %i.cg = or i64 %i.cf, %i.cd
  store i64 %i.cg, ptr %1, align 8
  br label %__do_iova_to_phys.exit

__do_iova_to_phys.exit:                           ; preds = %pt_range_to_index.exit.i, %pt_entry_oa_exact.exit.i, %bb.g, %pt_range_to_index.exit.i.i, %pt_entry_oa_exact.exit
  %.0.i = phi i32 [ -2, %pt_range_to_index.exit.i.i ], [ 0, %pt_entry_oa_exact.exit ], [ %i.ap, %bb.g ], [ 0, %pt_entry_oa_exact.exit.i ], [ -2, %pt_range_to_index.exit.i ]
  ret i32 %.0.i
}

; Function Attrs: fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(argmem: readwrite, inaccessiblemem: readwrite)
define internal void @amdv1_get_info(ptr nofree noundef captures(address) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1) #5 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 144
  %i.b = load volatile i64, ptr %i.a, align 8, !noalias !40 ; 0 uses
  %i.c = getelementptr i8, ptr %0, i64 153
  %i.d = load i8, ptr %i.c, align 1, !noalias !43 ; 6 uses
  %.not12 = icmp ugt i8 %i.d, 12
  br i1 %.not12, label %amdv1pt_possible_sizes.exit, label %amdv1pt_possible_sizes.exit.5

amdv1pt_possible_sizes.exit:                      ; preds = %bb.a
  %.not12.1 = icmp ugt i8 %i.d, 21
  br i1 %.not12.1, label %amdv1pt_possible_sizes.exit.1, label %amdv1pt_possible_sizes.exit.5

amdv1pt_possible_sizes.exit.1:                    ; preds = %amdv1pt_possible_sizes.exit
  %.not12.2 = icmp ugt i8 %i.d, 30
  br i1 %.not12.2, label %amdv1pt_possible_sizes.exit.2, label %amdv1pt_possible_sizes.exit.5

amdv1pt_possible_sizes.exit.2:                    ; preds = %amdv1pt_possible_sizes.exit.1
  %.not12.3 = icmp ugt i8 %i.d, 39
  br i1 %.not12.3, label %amdv1pt_possible_sizes.exit.3, label %amdv1pt_possible_sizes.exit.5

amdv1pt_possible_sizes.exit.3:                    ; preds = %amdv1pt_possible_sizes.exit.2
  %.not12.4 = icmp ugt i8 %i.d, 48
  %spec.select = select i1 %.not12.4, i64 4503049871552512, i64 280925220892672
  br label %amdv1pt_possible_sizes.exit.5

amdv1pt_possible_sizes.exit.5:                    ; preds = %amdv1pt_possible_sizes.exit.3, %amdv1pt_possible_sizes.exit.2, %amdv1pt_possible_sizes.exit.1, %amdv1pt_possible_sizes.exit, %bb.a
  %.0.lcssa = phi i64 [ 549755809792, %amdv1pt_possible_sizes.exit.2 ], [ 0, %bb.a ], [ 2093056, %amdv1pt_possible_sizes.exit ], [ %spec.select, %amdv1pt_possible_sizes.exit.3 ], [ 1073737728, %amdv1pt_possible_sizes.exit.1 ]
  %i.e = zext i8 %i.d to i64
  %i.f = add nuw nsw i64 %i.e, 4294967295
  %i.g = and i64 %i.f, 4294967295
  %notmask = shl nsw i64 -1, %i.g
  %i.h = xor i64 %notmask, -1
  %i.i = and i64 %.0.lcssa, %i.h                  ; 2 uses
  store i64 %i.i, ptr %1, align 8
  %i.j = getelementptr i8, ptr %0, i64 152
  %i.k = load i8, ptr %i.j, align 8
  %i.l = zext nneg i8 %i.k to i64
  %notmask13 = shl nsw i64 -1, %i.l
  %i.m = xor i64 %notmask13, -1
  %i.n = and i64 %i.i, %i.m
  store i64 %i.n, ptr %1, align 8
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @iommu_alloc_pages_node_sz(i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @iommu_free_pages(ptr noundef) local_unnamed_addr #10

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @amdv1_map_range(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr nofree noundef captures(none) %6) #4 align 16 prefalign(16) {
bb.a:
  %7 = alloca %struct.iommu_pages_list, align 8   ; 12 uses
  %8 = alloca %struct.iommu_iotlb_gather, align 8 ; 10 uses
  %9 = alloca %struct.pt_iommu_map_args, align 8  ; 13 uses
  %10 = alloca %struct.pt_range, align 8          ; 13 uses
  %i.a = getelementptr i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr i8, ptr %0, i64 144        ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #13
  store ptr %8, ptr %9, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i64 0, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 3 uses
  store i64 %2, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %9, i64 36 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %9, i64 40
  store i64 0, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #13
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 5 uses
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 41
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.7.0..sroa_idx.i, i8 0, i64 7, i1 false)
  store i64 -1, ptr %8, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.2.0..sroa_idx.i, i8 0, i64 16, i1 false)
  store ptr %i.j, ptr %i.j, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 32
  store ptr %i.j, ptr %.sroa.5.0..sroa_idx.i, align 8
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 40
  store i8 0, ptr %.sroa.6.0..sroa_idx.i, align 8
  %i.k = and i32 %4, 3
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.b, label %.critedge, !prof !21

bb.b:                                             ; preds = %bb.a
  call void asm sideeffect "613: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 613b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 613) #13, !srcloc !46
  call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 947, i32 2305, i64 16) #13, !srcloc !47
  call void asm sideeffect "614: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 614b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 614) #13, !srcloc !48
  br label %check_map_range.exit

.critedge:                                        ; preds = %bb.a
  %i.l = getelementptr i8, ptr %0, i64 152
  %i.m = load i8, ptr %i.l, align 8               ; 2 uses
  %.not51 = icmp eq i8 %i.m, 64
  %i.n = zext nneg i8 %i.m to i64
  %i.o = lshr i64 %2, %i.n
  %.not52 = icmp eq i64 %i.o, 0
  %or.cond = select i1 %.not51, i1 true, i1 %.not52
  br i1 %or.cond, label %bb.c, label %check_map_range.exit

bb.c:                                             ; preds = %.critedge
  %i.p = and i32 %4, 1
  %.not.i = icmp eq i32 %i.p, 0
  %.1.i = select i1 %.not.i, i64 1152921504606846976, i64 3458764513820540928
  %i.q = and i32 %4, 2
  %i.r = zext nneg i32 %i.q to i64
  %i.s = shl nuw nsw i64 %i.r, 61
  %.2.i = or disjoint i64 %.1.i, %i.s             ; 4 uses
  store i64 %.2.i, ptr %i.d, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i32 %5, ptr %i.t, align 8
  %i.u = icmp eq i64 %3, 0
  br i1 %i.u, label %check_map_range.exit, label %bb.d, !prof !21

bb.d:                                             ; preds = %bb.c
  %i.v = add i64 %3, -1                           ; 2 uses
  %i.w = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1, i64 %i.v)
  %i.x = extractvalue { i64, i1 } %i.w, 1
  br i1 %i.x, label %check_map_range.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %11 = add nuw i64 %i.v, %1                      ; 3 uses
  %i.y = load volatile i64, ptr %i.c, align 8, !noalias !49 ; 2 uses
  %i.z = and i64 %i.y, -8
  %i.aa = inttoptr i64 %i.z to ptr
  %i.ab = trunc i64 %i.y to i8
  %i.ac = and i8 %i.ab, 7                         ; 3 uses
  %i.ad = getelementptr i8, ptr %0, i64 153       ; 3 uses
  %i.ae = load i8, ptr %i.ad, align 1, !noalias !52 ; 3 uses
  %.not.i61 = icmp eq i8 %i.ac, 5
  br i1 %.not.i61, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %narrow.i = mul nuw nsw i8 %i.ac, 9
  %narrow17.i = add nuw nsw i8 %narrow.i, 21
  %i.af = call i8 @llvm.umin.i8(i8 %narrow17.i, i8 %i.ae)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pre.i = phi i8 [ %i.af, %bb.f ], [ %i.ae, %bb.e ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %10, i8 0, i64 40, i1 false), !annotation !16
  %.sroa.6.0..sroa_idx.i62 = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %.sroa.7.0..sroa_idx.i63 = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i64 %1, ptr %.sroa.7.0..sroa_idx.i63, align 8
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %10, i64 24
  store i64 %11, ptr %.sroa.10.0..sroa_idx.i, align 8
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 2 uses
  %.sroa.15.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %10, i64 33
  %.sroa.17.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %10, i64 34 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.17.0..sroa_idx.i, i8 0, i64 6, i1 false)
  %i.ag = icmp eq i64 %3, 4096
  %i.ah = and i64 %i.b, 4096
  %.not54 = icmp ne i64 %i.ah, 0
  %or.cond60.not = select i1 %i.ag, i1 %.not54, i1 false, !prof !55 ; 2 uses
  br i1 %or.cond60.not, label %bb.h, label %fls64.exit35.i, !prof !55

bb.h:                                             ; preds = %bb.g
  %i.ai = or i64 %2, %1
  %i.aj = and i64 %i.ai, 4095
  %.not56 = icmp eq i64 %i.aj, 0
  br i1 %.not56, label %bb.i, label %check_map_range.exit

bb.i:                                             ; preds = %bb.h
  store i32 12, ptr %i.g, align 8
  store i32 0, ptr %i.h, align 4
  br label %bb.l

fls64.exit35.i:                                   ; preds = %bb.g
  %i.ak = call i32 asm "bsrq $1,${0:q}", "=r,r,0,~{dirflag},~{fpsr},~{flags}"(i64 %3, i32 -1) #14, !srcloc !56
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = shl nuw i64 1, %i.al
  %i.an = or i64 %2, %i.am
  %i.ao = or i64 %i.an, %1
  %i.ap = call i64 asm "tzcnt $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 %i.ao) #14, !srcloc !17 ; 2 uses
  %i.aq = trunc i64 %i.ap to i32
  %i.ar = icmp ult i32 %i.aq, 63
  %i.as = add i64 %i.ap, 1
  %i.at = and i64 %i.as, 4294967295
  %notmask.i = shl nsw i64 -1, %i.at
  %i.au = xor i64 %notmask.i, -1
  %i.av = select i1 %i.ar, i64 %i.au, i64 -1
  %.032.i = and i64 %i.av, %i.b
  %i.aw = call i32 asm "bsrq $1,${0:q}", "=r,r,0,~{dirflag},~{fpsr},~{flags}"(i64 %.032.i, i32 -1) #14, !srcloc !56
  %i.ax = add i32 %i.aw, 1                        ; 2 uses
  %spec.select.i = call range(i32 0, -1) i32 @llvm.usub.sat.i32(i32 %i.ax, i32 1) ; 4 uses
  store i32 %spec.select.i, ptr %i.g, align 8
  %.not55 = icmp ult i32 %i.ax, 2
  br i1 %.not55, label %check_map_range.exit, label %bb.j

bb.j:                                             ; preds = %fls64.exit35.i
  %i.ay = add i32 %spec.select.i, -12
  %i.az = udiv i32 %i.ay, 9                       ; 2 uses
  store i32 %i.az, ptr %i.h, align 4
  %i.ba = add nuw i32 %spec.select.i, 1
  %i.bb = zext nneg i32 %i.ba to i64
  %notmask.i64 = shl nsw i64 -1, %i.bb
  %i.bc = and i64 %notmask.i64, %i.b              ; 2 uses
  %.not.i65 = icmp eq i64 %i.bc, 0
  br i1 %.not.i65, label %pt_pgsz_count.exit, label %__ffs64.exit.i66

__ffs64.exit.i66:                                 ; preds = %bb.j
  %i.bd = call i64 asm "tzcnt $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 %i.bc) #14, !srcloc !17
  %i.be = xor i64 %1, %2
  %i.bf = and i64 %i.bd, 4294967295
  %notmask21.i = shl nsw i64 -1, %i.bf
  %i.bg = xor i64 %notmask21.i, -1                ; 2 uses
  %i.bh = and i64 %i.be, %i.bg
  %i.bi = icmp eq i64 %i.bh, 0
  br i1 %i.bi, label %bb.k, label %pt_pgsz_count.exit

bb.k:                                             ; preds = %__ffs64.exit.i66
  %.not22.i = xor i64 %1, -1
  %i.bj = and i64 %i.bg, %.not22.i
  %i.bk = add nuw i64 %i.bj, 1
  %i.bl = call i64 @llvm.umin.i64(i64 %3, i64 %i.bk)
  br label %pt_pgsz_count.exit

pt_pgsz_count.exit:                               ; preds = %bb.j, %__ffs64.exit.i66, %bb.k
  %.1.i67 = phi i64 [ %3, %bb.j ], [ %i.bl, %bb.k ], [ %3, %__ffs64.exit.i66 ]
  %i.bm = zext nneg i32 %spec.select.i to i64
  %i.bn = lshr i64 %.1.i67, %i.bm
  br label %bb.l

bb.l:                                             ; preds = %pt_pgsz_count.exit, %bb.i
  %i.bo = phi i32 [ %i.az, %pt_pgsz_count.exit ], [ 0, %bb.i ] ; 2 uses
  %storemerge = phi i64 [ %i.bn, %pt_pgsz_count.exit ], [ 1, %bb.i ]
  store i64 %storemerge, ptr %i.i, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.bq = getelementptr i8, ptr %0, i64 128
  %i.br = getelementptr i8, ptr %0, i64 120       ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %_pt_top_range.exit.i73, %bb.l
  %i.bs = phi i8 [ %i.fr, %_pt_top_range.exit.i73 ], [ %i.ae, %bb.l ]
  %i.bt = phi ptr [ %i.fo, %_pt_top_range.exit.i73 ], [ %i.aa, %bb.l ]
  %i.bu = phi i8 [ %i.fq, %_pt_top_range.exit.i73 ], [ %i.ac, %bb.l ] ; 2 uses
  %i.bv = phi i8 [ %.0.i.in.i74, %_pt_top_range.exit.i73 ], [ %.pre.i, %bb.l ] ; 3 uses
  %i.bw = icmp eq i8 %i.bv, 64                    ; 2 uses
  %i.bx = zext i8 %i.bv to i64                    ; 2 uses
  %i.by = lshr i64 %1, %i.bx
  %i.bz = icmp eq i64 %i.by, 0
  %.0.i15.i.i = select i1 %i.bw, i1 true, i1 %i.bz
  br i1 %.0.i15.i.i, label %bb.n, label %pt_check_range.exit.thread.i

bb.n:                                             ; preds = %bb.m
  %i.ca = lshr i64 %11, %i.bx
  %i.cb = icmp ne i64 %i.ca, 0
  %not. = xor i1 %i.bw, true
  %.0.i16.i.i = select i1 %not., i1 %i.cb, i1 false
  %i.cc = zext nneg i8 %i.bu to i32
  %.not21.i = icmp samesign ugt i32 %i.bo, %i.cc
  %or.cond113 = select i1 %.0.i16.i.i, i1 true, i1 %.not21.i
  br i1 %or.cond113, label %pt_check_range.exit.thread.i, label %bb.z

pt_check_range.exit.thread.i:                     ; preds = %bb.n, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  store ptr %7, ptr %7, align 8
  store ptr %7, ptr %i.bp, align 8
  %i.cd = load volatile i64, ptr %i.c, align 8    ; 3 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.v, %pt_check_range.exit.thread.i
  %i.ce = phi i8 [ %i.bs, %pt_check_range.exit.thread.i ], [ %.pre, %bb.v ] ; 4 uses
  %.047.i.i = phi i64 [ %i.cd, %pt_check_range.exit.thread.i ], [ %i.eq, %bb.v ]
  %.045.i.i = phi ptr [ null, %pt_check_range.exit.thread.i ], [ %spec.select.i.i.i.i, %bb.v ] ; 2 uses
  %.047.fr.i.i = freeze i64 %.047.i.i             ; 4 uses
  %i.cf = and i64 %.047.fr.i.i, -8                ; 2 uses
  %i.cg = trunc i64 %.047.fr.i.i to i8
  %i.ch = and i8 %i.cg, 7                         ; 5 uses
  %.not.i.i = icmp eq i8 %i.ch, 5
  br i1 %.not.i.i, label %_pt_top_range.exit.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %narrow.i.i = mul nuw nsw i8 %i.ch, 9
  %narrow111.i.i = add nuw nsw i8 %narrow.i.i, 21
  %i.ci = call i8 @llvm.umin.i8(i8 %narrow111.i.i, i8 %i.ce)
  br label %_pt_top_range.exit.i.i

_pt_top_range.exit.i.i:                           ; preds = %bb.p, %bb.o
  %.0.i.i.i = phi i8 [ %i.ci, %bb.p ], [ %i.ce, %bb.o ] ; 2 uses
  %i.cj = icmp eq i8 %.0.i.i.i, 64                ; 2 uses
  %i.ck = zext i8 %.0.i.i.i to i64                ; 2 uses
  %i.cl = lshr i64 %1, %i.ck
  %i.cm = icmp eq i64 %i.cl, 0
  %.0.i15.i.i.i = select i1 %i.cj, i1 true, i1 %i.cm
  br i1 %.0.i15.i.i.i, label %bb.q, label %pt_check_range.exit.thread.i.i

bb.q:                                             ; preds = %_pt_top_range.exit.i.i
  %i.cn = lshr i64 %11, %i.ck
  %i.co = icmp ne i64 %i.cn, 0
  %not.115 = xor i1 %i.cj, true
  %.0.i16.i.i.i = select i1 %not.115, i1 %i.co, i1 false
  %i.cp = zext nneg i8 %i.ch to i32               ; 2 uses
  %.not52.i.i = icmp samesign ugt i32 %i.bo, %i.cp
  %or.cond114 = select i1 %.0.i16.i.i.i, i1 true, i1 %.not52.i.i
  br i1 %or.cond114, label %pt_check_range.exit.thread.i.i, label %bb.w

pt_check_range.exit.thread.i.i:                   ; preds = %bb.q, %_pt_top_range.exit.i.i
  %i.cq = add nuw nsw i8 %i.ch, 1                 ; 3 uses
  %i.cr = icmp samesign ugt i8 %i.ch, 4
  br i1 %i.cr, label %increase_top.exit.thread39.i, label %bb.r

bb.r:                                             ; preds = %pt_check_range.exit.thread.i.i
  %narrow112.i.i = mul nuw nsw i8 %i.cq, 9
  %narrow132.i.i = add nuw nsw i8 %narrow112.i.i, 12 ; 2 uses
  %.not53.i.i = icmp ult i8 %narrow132.i.i, %i.ce
  br i1 %.not53.i.i, label %bb.s, label %increase_top.exit.thread39.i

bb.s:                                             ; preds = %bb.r
  %i.cs = zext nneg i8 %i.cq to i64               ; 2 uses
  %.val58.i.i = load i32, ptr %i.bq, align 8
  %narrow.i71 = sub nuw i8 %i.ce, %narrow132.i.i
  %.not.i.i.i.i = icmp eq i8 %i.cq, 5
  %i.ct = call i8 @llvm.umax.i8(i8 %narrow.i71, i8 9)
  %i.cu = zext nneg i8 %i.ct to i64
  %i.cv = shl nuw i64 8, %i.cu
  %i.cw = select i1 %.not.i.i.i.i, i64 %i.cv, i64 4096
  %i.cx = call ptr @iommu_alloc_pages_node_sz(i32 noundef %.val58.i.i, i32 noundef %5, i64 noundef %i.cw) #16 ; 2 uses
  %.not.i4.i.i.i = icmp eq ptr %i.cx, null
  %spec.select.i.i.i.i = select i1 %.not.i4.i.i.i, ptr inttoptr (i64 -12 to ptr), ptr %i.cx ; 8 uses
  %i.cy = icmp ugt ptr %spec.select.i.i.i.i, inttoptr (i64 -4096 to ptr)
  br i1 %i.cy, label %increase_top.exit.i, label %pt_range_to_index.exit.i.i.i

pt_range_to_index.exit.i.i.i:                     ; preds = %bb.s
  %i.cz = load i64, ptr @vmemmap_base, align 8
  %i.da = inttoptr i64 %i.cz to ptr
  %i.db = ptrtoint ptr %spec.select.i.i.i.i to i64 ; 2 uses
  %i.dc = add i64 %i.db, 2147483648
  %i.dd = icmp ugt ptr %spec.select.i.i.i.i, inttoptr (i64 -2147483649 to ptr)
  %i.de = load i64, ptr @phys_base, align 8
  %i.df = load i64, ptr @page_offset_base, align 8
  %i.dg = sub i64 -2147483648, %i.df
  %i.dh = select i1 %i.dd, i64 %i.de, i64 %i.dg
  %i.di = add i64 %i.dc, %i.dh
  %i.dj = lshr i64 %i.di, 12
  %i.dk = getelementptr [64 x i8], ptr %i.da, i64 %i.dj ; 2 uses
  %i.dl = getelementptr i8, ptr %i.dk, i64 8
  %i.dm = load volatile i64, ptr %i.dl, align 8   ; 2 uses
  %i.dn = ptrtoint ptr %i.dk to i64
  %i.do = and i64 %i.dm, 1
  %i.dp = add nsw i64 %i.do, -1
  %i.dq = or i64 %i.dp, %i.dm
  %i.dr = and i64 %i.dq, %i.dn
  %i.ds = inttoptr i64 %i.dr to ptr               ; 2 uses
  %i.dt = getelementptr i8, ptr %i.ds, i64 8      ; 3 uses
  %i.du = load ptr, ptr %i.bp, align 8            ; 2 uses
  store ptr %i.dt, ptr %i.bp, align 8
  store ptr %7, ptr %i.dt, align 8
  %i.dv = getelementptr i8, ptr %i.ds, i64 16
  store ptr %i.du, ptr %i.dv, align 8
  store volatile ptr %i.dt, ptr %i.du, align 8
  %i.dw = load volatile i64, ptr %spec.select.i.i.i.i, align 8 ; 4 uses
  %i.dx = and i64 %i.dw, 1
  %.not.i.i.i.i.i = icmp eq i64 %i.dx, 0
  br i1 %.not.i.i.i.i.i, label %pt_range_to_index.exit.i._crit_edge.i.i, label %bb.t

pt_range_to_index.exit.i._crit_edge.i.i:          ; preds = %pt_range_to_index.exit.i.i.i
  %.pre.i.i = load i64, ptr @page_offset_base, align 8
  br label %bb.v

bb.t:                                             ; preds = %pt_range_to_index.exit.i.i.i
  %i.dy = trunc i64 %i.dw to i32
  %i.dz = lshr i32 %i.dy, 9
  %i.ea = and i32 %i.dz, 7
  %.off.i.i.i.i.i = add nsw i32 %i.ea, -1
  %switch.i.i.i.i.i = icmp ult i32 %.off.i.i.i.i.i, 6
  %.pre128.i.i = load i64, ptr @page_offset_base, align 8 ; 3 uses
  br i1 %switch.i.i.i.i.i, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.eb = and i64 %i.dw, 4503599627366400
  %i.ec = add i64 %.pre128.i.i, %i.eb
  br label %bb.v

bb.v:                                             ; preds = %pt_range_to_index.exit.i._crit_edge.i.i, %bb.t, %bb.u
  %i.ed = phi i64 [ %.pre128.i.i, %bb.u ], [ %.pre128.i.i, %bb.t ], [ %.pre.i.i, %pt_range_to_index.exit.i._crit_edge.i.i ]
  %.sroa.12.0.in.i.i = phi i64 [ %i.ec, %bb.u ], [ %i.cf, %bb.t ], [ %i.cf, %pt_range_to_index.exit.i._crit_edge.i.i ] ; 2 uses
  %i.ee = add i64 %.sroa.12.0.in.i.i, 2147483648
  %i.ef = icmp ugt i64 %.sroa.12.0.in.i.i, -2147483649
  %i.eg = load i64, ptr @phys_base, align 8
  %i.eh = sub i64 4503597479886848, %i.ed
  %i.ei = select i1 %i.ef, i64 %i.eg, i64 %i.eh
  %i.ej = add i64 %i.ee, %i.ei
  %i.ek = shl nuw nsw i64 %i.cs, 9
  %i.el = and i64 %i.ek, 3584
  %i.em = and i64 %i.ej, 4503599627366400
  %i.en = or disjoint i64 %i.el, %i.em
  %i.eo = or disjoint i64 %i.en, 6917529027641081857
  %i.ep = call { i8, i64 } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock cmpxchgq $3, $1", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) %spec.select.i.i.i.i, i64 range(i64 6917529027641081856, 6922032627268452352) %i.eo, ptr nonnull elementtype(i64) %spec.select.i.i.i.i, i64 %i.dw) #13, !srcloc !57 ; 0 uses
  %i.eq = or i64 %i.db, %i.cs
  %.pre = load i8, ptr %i.ad, align 1, !noalias !58
  br label %bb.o

bb.w:                                             ; preds = %bb.q
  %i.er = load ptr, ptr %i.br, align 8
  %i.es = getelementptr i8, ptr %i.er, i64 8
  %i.et = load ptr, ptr %i.es, align 8
  %i.eu = call ptr %i.et(ptr noundef %0) #16, !inline_history !61 ; 3 uses
  %i.ev = call i64 @_raw_spin_lock_irqsave(ptr noundef %i.eu) #16 ; 2 uses
  %i.ew = load i64, ptr %i.c, align 8
  %.not55.i.i = icmp ne i64 %i.ew, %i.cd
  %i.ex = icmp eq i64 %i.cd, %.047.fr.i.i
  %or.cond.i.i = or i1 %i.ex, %.not55.i.i         ; 2 uses
  br i1 %or.cond.i.i, label %increase_top.exit.thread41.i, label %increase_top.exit.thread.i

increase_top.exit.thread41.i:                     ; preds = %bb.w
  call void @_raw_spin_unlock_irqrestore(ptr noundef %i.eu, i64 noundef %i.ev) #16
  call void @iommu_put_pages_list(ptr noundef nonnull %7) #16
  br label %.sink.split.i

increase_top.exit.thread.i:                       ; preds = %bb.w
  %i.ey = load ptr, ptr %i.br, align 8
  %i.ez = load ptr, ptr %i.ey, align 8
  %i.fa = ptrtoint ptr %.045.i.i to i64
  %i.fb = add i64 %i.fa, 2147483648
  %i.fc = icmp ugt ptr %.045.i.i, inttoptr (i64 -2147483649 to ptr)
  %i.fd = load i64, ptr @phys_base, align 8
  %i.fe = load i64, ptr @page_offset_base, align 8
  %i.ff = sub i64 -2147483648, %i.fe
end_hunk_0
begin_hunk_1_@amdv1_map_range:bb.a
  %i.hu = add i64 %i.ht, %i.hs
  %i.hv = inttoptr i64 %i.hu to ptr
  %i.hw = lshr i64 %1, 21
  %i.hx = and i64 %i.hw, 511
  %i.hy = getelementptr [8 x i8], ptr %i.hv, i64 %i.hx
  %i.hz = load volatile i64, ptr %i.hy, align 8   ; 3 uses
  %i.ia = and i64 %i.hz, 1
  %.not.i.i.i.i.i29.i = icmp eq i64 %i.ia, 0
  br i1 %.not.i.i.i.i.i29.i, label %__map_single_page.exit.thread.i.preheader, label %bb.ad

bb.ad:                                            ; preds = %pt_range_to_index.exit.i.i.i28.i
  %i.ib = trunc i64 %i.hz to i32
  %i.ic = lshr i32 %i.ib, 9
  %i.id = and i32 %i.ic, 7
  %.off.i.i.i.i.i.i = add nsw i32 %i.id, -1
  %switch.i.i.i.i.i.i = icmp ult i32 %.off.i.i.i.i.i.i, 6
  br i1 %switch.i.i.i.i.i.i, label %pt_range_to_index.exit.i.i.i.i.i, label %__map_single_page.exit.thread.i.preheader

pt_range_to_index.exit.i.i.i.i.i:                 ; preds = %bb.ad
  %i.ie = and i64 %i.hz, 4503599627366400
  %i.if = add i64 %i.ie, %i.ht
  %i.ig = inttoptr i64 %i.if to ptr
  %i.ih = lshr i64 %1, 12
  %i.ii = and i64 %i.ih, 511
  %i.ij = getelementptr [8 x i8], ptr %i.ig, i64 %i.ii ; 2 uses
  %i.ik = load volatile i64, ptr %i.ij, align 8
  %i.il = and i64 %i.ik, 1
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.il, 0
  br i1 %.not.i.i.i.i.i.i.i, label %amdv1pt_install_leaf_entry.exit.i.i.i.i, label %do_map.exit

amdv1pt_install_leaf_entry.exit.i.i.i.i:          ; preds = %pt_range_to_index.exit.i.i.i.i.i
  %i.im = and i64 %2, 4503599627366400
  %i.in = or disjoint i64 %i.im, %.2.i
  %i.io = or disjoint i64 %i.in, 1
  store volatile i64 %i.io, ptr %i.ij, align 8
  br label %do_map.exit.sink.split

pt_range_to_index.exit.i.i34.i:                   ; preds = %bb.aa
  %i.ip = icmp eq i8 %i.ft, 64
  %i.iq = zext nneg i8 %i.ft to i64
  %notmask.i.i.i.i39.i = shl nsw i64 -1, %i.iq
  %i.ir = xor i64 %notmask.i.i.i.i39.i, -1
  %i.is = select i1 %i.ip, i64 -281474976710656, i64 %i.ir
  %.0.i.i.i.i40.i = and i64 %i.is, %1
  %i.it = lshr i64 %.0.i.i.i.i40.i, 48
  %i.iu = getelementptr [8 x i8], ptr %i.fu, i64 %i.it
  %i.iv = load volatile i64, ptr %i.iu, align 8   ; 3 uses
  %i.iw = and i64 %i.iv, 1
  %.not.i.i.i.i35.i = icmp eq i64 %i.iw, 0
  br i1 %.not.i.i.i.i35.i, label %__map_single_page.exit.thread.i.preheader, label %bb.ae

bb.ae:                                            ; preds = %pt_range_to_index.exit.i.i34.i
  %i.ix = trunc i64 %i.iv to i32
  %i.iy = lshr i32 %i.ix, 9
  %i.iz = and i32 %i.iy, 7
  %.off.i.i.i.i36.i = add nsw i32 %i.iz, -1
  %switch.i.i.i.i37.i = icmp ult i32 %.off.i.i.i.i36.i, 6
  br i1 %switch.i.i.i.i37.i, label %bb.af, label %__map_single_page.exit.thread.i.preheader

bb.af:                                            ; preds = %bb.ae
  %i.ja = and i64 %i.iv, 4503599627366400
  %i.jb = load i64, ptr @page_offset_base, align 8
  %i.jc = add i64 %i.jb, %i.ja
  %i.jd = inttoptr i64 %i.jc to ptr
  br label %__map_single_page.exit.i

bb.ag:                                            ; preds = %bb.aa
  %i.je = icmp eq i8 %i.ft, 64
  %i.jf = zext nneg i8 %i.ft to i64
  %notmask.i.i.i.i52.i = shl nsw i64 -1, %i.jf
  %i.jg = xor i64 %notmask.i.i.i.i52.i, -1
  %i.jh = select i1 %i.je, i64 -144115188075855872, i64 %i.jg
  %.0.i.i.i.i53.i = and i64 %i.jh, %1
  br label %pt_range_to_index.exit.i.i41.i

pt_range_to_index.exit.i.i41.i:                   ; preds = %bb.aa, %bb.ag
  %.0.i.i.in.in.i.i = phi i64 [ %.0.i.i.i.i53.i, %bb.ag ], [ %1, %bb.aa ]
  %.0.i.i.in.i.i = lshr i64 %.0.i.i.in.in.i.i, 57
  %i.ji = getelementptr [8 x i8], ptr %i.fu, i64 %.0.i.i.in.i.i
  %i.jj = load volatile i64, ptr %i.ji, align 8   ; 3 uses
  %i.jk = and i64 %i.jj, 1
  %.not.i.i.i.i42.i = icmp eq i64 %i.jk, 0
  br i1 %.not.i.i.i.i42.i, label %__map_single_page.exit.thread.i.preheader, label %bb.ah

bb.ah:                                            ; preds = %pt_range_to_index.exit.i.i41.i
  %i.jl = trunc i64 %i.jj to i32
  %i.jm = lshr i32 %i.jl, 9
  %i.jn = and i32 %i.jm, 7
  %.off.i.i.i.i43.i = add nsw i32 %i.jn, -1
  %switch.i.i.i.i44.i = icmp ult i32 %.off.i.i.i.i43.i, 6
  br i1 %switch.i.i.i.i44.i, label %pt_range_to_index.exit.i.i.i46.i, label %__map_single_page.exit.thread.i.preheader

pt_range_to_index.exit.i.i.i46.i:                 ; preds = %bb.ah
  %i.jo = and i64 %i.jj, 4503599627366400
  %i.jp = load i64, ptr @page_offset_base, align 8 ; 2 uses
  %i.jq = add i64 %i.jp, %i.jo
  %i.jr = inttoptr i64 %i.jq to ptr
  %i.js = lshr i64 %1, 48
  %i.jt = and i64 %i.js, 511
  %i.ju = getelementptr [8 x i8], ptr %i.jr, i64 %i.jt
  %i.jv = load volatile i64, ptr %i.ju, align 8   ; 3 uses
  %i.jw = and i64 %i.jv, 1
  %.not.i.i.i.i.i47.i = icmp eq i64 %i.jw, 0
  br i1 %.not.i.i.i.i.i47.i, label %__map_single_page.exit.thread.i.preheader, label %bb.ai

bb.ai:                                            ; preds = %pt_range_to_index.exit.i.i.i46.i
  %i.jx = trunc i64 %i.jv to i32
  %i.jy = lshr i32 %i.jx, 9
  %i.jz = and i32 %i.jy, 7
  %.off.i.i.i.i.i48.i = add nsw i32 %i.jz, -1
  %switch.i.i.i.i.i49.i = icmp ult i32 %.off.i.i.i.i.i48.i, 6
  br i1 %switch.i.i.i.i.i49.i, label %bb.aj, label %__map_single_page.exit.thread.i.preheader

bb.aj:                                            ; preds = %bb.ai
  %i.ka = and i64 %i.jv, 4503599627366400
  %i.kb = add i64 %i.ka, %i.jp
  %i.kc = inttoptr i64 %i.kb to ptr
  br label %__map_single_page.exit.i

__map_single_page.exit.i:                         ; preds = %bb.aa, %bb.aj, %bb.af
  %.sink.i = phi ptr [ %i.kc, %bb.aj ], [ %i.jd, %bb.af ], [ %i.fu, %bb.aa ]
  %i.kd = call fastcc i32 @__map_single_page3(ptr noundef nonnull %10, ptr noundef nonnull %9, ptr noundef %.sink.i) #15 ; 2 uses
  %.not.i76 = icmp eq i32 %i.kd, -11
  br i1 %.not.i76, label %__map_single_page.exit.thread.i.preheader, label %do_map.exit

__map_single_page.exit.thread.i.preheader:        ; preds = %__map_single_page.exit.i, %bb.ai, %pt_range_to_index.exit.i.i.i46.i, %bb.ah, %pt_range_to_index.exit.i.i41.i, %bb.ae, %pt_range_to_index.exit.i.i34.i, %bb.ad, %pt_range_to_index.exit.i.i.i28.i, %bb.ac, %pt_range_to_index.exit.i.i21.i, %bb.ab, %pt_range_to_index.exit.i.i16.i, %bb.z
  br label %__map_single_page.exit.thread.i

__map_single_page.exit.thread.i:                  ; preds = %__map_single_page.exit.thread.i.preheader, %bb.am
  %i.ke = load i32, ptr %i.h, align 4             ; 2 uses
  %i.kf = load i8, ptr %.sroa.13.0..sroa_idx.i, align 8
  %i.kg = zext i8 %i.kf to i32                    ; 2 uses
  %i.kh = icmp eq i32 %i.ke, %i.kg
  %i.ki = load ptr, ptr %.sroa.6.0..sroa_idx.i62, align 8 ; 2 uses
  br i1 %i.kh, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %__map_single_page.exit.thread.i
  %i.kj = call fastcc i32 @__map_range_leaf(ptr noundef nonnull %10, ptr noundef nonnull %9, i32 noundef %i.ke, ptr noundef %i.ki) #16, !inline_history !70
  br label %bb.am

bb.al:                                            ; preds = %__map_single_page.exit.thread.i
  %i.kk = call fastcc i32 @__map_range(ptr noundef nonnull %10, ptr noundef nonnull %9, i32 noundef %i.kg, ptr noundef %i.ki) #16, !inline_history !70
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %.0.i75 = phi i32 [ %i.kj, %bb.ak ], [ %i.kk, %bb.al ] ; 2 uses
  %i.kl = icmp eq i32 %.0.i75, -11
  br i1 %i.kl, label %__map_single_page.exit.thread.i, label %do_map.exit, !llvm.loop !71

do_map.exit.sink.split:                           ; preds = %amdv1pt_install_leaf_entry.exit.i.i.i.i, %amdv1pt_install_leaf_entry.exit.i.i.i, %amdv1pt_install_leaf_entry.exit.i.i
  %i.km = add i64 %2, 4096
  store i64 %i.km, ptr %i.f, align 8
  br label %do_map.exit

do_map.exit:                                      ; preds = %bb.am, %do_map.exit.sink.split, %pt_range_to_index.exit.i.i.i79, %pt_range_to_index.exit.i.i.i.i, %pt_range_to_index.exit.i.i.i.i.i, %__map_single_page.exit.i
  %.014.i = phi i32 [ %i.kd, %__map_single_page.exit.i ], [ -98, %pt_range_to_index.exit.i.i.i79 ], [ 0, %do_map.exit.sink.split ], [ -98, %pt_range_to_index.exit.i.i.i.i ], [ -98, %pt_range_to_index.exit.i.i.i.i.i ], [ %.0.i75, %bb.am ]
  %i.kn = load volatile ptr, ptr %i.j, align 8
  %i.ko = icmp eq ptr %i.kn, %i.j
  br i1 %i.ko, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %do_map.exit
  call fastcc void @iommu_iotlb_sync(ptr noundef %0, ptr noundef nonnull %8) #15, !srcloc !72
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %do_map.exit
  %i.kp = load i64, ptr %i.f, align 8
  %i.kq = sub i64 %i.kp, %2
  %i.kr = load i64, ptr %6, align 8
  %i.ks = add i64 %i.kq, %i.kr
  store i64 %i.ks, ptr %6, align 8
  br label %check_map_range.exit

check_map_range.exit:                             ; preds = %increase_top.exit.i, %bb.d, %bb.c, %increase_top.exit.thread39.i, %bb.b, %fls64.exit35.i, %bb.h, %.critedge, %bb.ao
  %.0 = phi i32 [ %.014.i, %bb.ao ], [ -22, %bb.b ], [ -6, %bb.h ], [ -34, %.critedge ], [ -22, %bb.c ], [ -6, %fls64.exit35.i ], [ -34, %increase_top.exit.thread39.i ], [ -75, %bb.d ], [ %i.fj, %increase_top.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @amdv1_unmap_range(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3) #4 align 16 prefalign(16) {
bb.a:
  %4 = alloca %struct.pt_unmap_args, align 8      ; 9 uses
  %5 = alloca %struct.pt_range, align 8           ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  store ptr %3, ptr %4, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 8 uses
  store ptr %i.a, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store ptr %i.a, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  %i.e = getelementptr i8, ptr %0, i64 144        ; 2 uses
  %i.f = icmp eq i64 %2, 0
  br i1 %i.f, label %.critedge, label %bb.b, !prof !21

bb.b:                                             ; preds = %bb.a
  %i.g = add i64 %2, -1                           ; 2 uses
  %i.h = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1, i64 %i.g)
  %i.i = extractvalue { i64, i1 } %i.h, 1
  br i1 %i.i, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %6 = add nuw i64 %i.g, %1                       ; 2 uses
  %i.j = load volatile i64, ptr %i.e, align 8, !noalias !73 ; 2 uses
  %i.k = and i64 %i.j, -8
  %i.l = inttoptr i64 %i.k to ptr                 ; 2 uses
  %i.m = trunc i64 %i.j to i8
  %i.n = and i8 %i.m, 7                           ; 4 uses
  %i.o = getelementptr i8, ptr %0, i64 153
  %i.p = load i8, ptr %i.o, align 1, !noalias !76 ; 2 uses
  %.not.i = icmp eq i8 %i.n, 5
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %narrow.i = mul nuw nsw i8 %i.n, 9
  %narrow17.i = add nuw nsw i8 %narrow.i, 21
  %i.q = call i8 @llvm.umin.i8(i8 %narrow17.i, i8 %i.p)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i.in.i = phi i8 [ %i.q, %bb.d ], [ %i.p, %bb.c ] ; 3 uses
  store ptr %i.e, ptr %5, align 8
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.l, ptr %.sroa.6.0..sroa_idx.i, align 8
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %1, ptr %.sroa.7.0..sroa_idx.i, align 8
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 %6, ptr %.sroa.10.0..sroa_idx.i, align 8
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i8 %i.n, ptr %.sroa.13.0..sroa_idx.i, align 8
  %.sroa.15.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 33
  store i8 %.0.i.in.i, ptr %.sroa.15.0..sroa_idx.i, align 1
  %.sroa.17.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.17.0..sroa_idx.i, i8 0, i64 6, i1 false)
  %i.r = icmp eq i8 %.0.i.in.i, 64                ; 2 uses
  %i.s = zext i8 %.0.i.in.i to i64                ; 2 uses
  %i.t = lshr i64 %1, %i.s
  %i.u = icmp eq i64 %i.t, 0
  %.0.i15.i = select i1 %i.r, i1 true, i1 %i.u
  br i1 %.0.i15.i, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.v = lshr i64 %6, %i.s
  %i.w = icmp eq i64 %i.v, 0
  %.0.i16.i = select i1 %i.r, i1 true, i1 %i.w
  br i1 %.0.i16.i, label %pt_check_range.exit, label %.critedge

pt_check_range.exit:                              ; preds = %bb.f
  %i.x = zext nneg i8 %i.n to i32
  %i.y = call fastcc i32 @__unmap_range(ptr noundef nonnull %5, ptr noundef nonnull %4, i32 noundef %i.x, ptr noundef %i.l) #16, !inline_history !70 ; 0 uses
  %i.z = load i64, ptr %i.d, align 8              ; 2 uses
  %i.aa = load ptr, ptr %4, align 8               ; 14 uses
  %.not.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i, label %iommu_iotlb_gather_queued.exit.thread.i, label %iommu_iotlb_gather_queued.exit.i

iommu_iotlb_gather_queued.exit.i:                 ; preds = %pt_check_range.exit
  %i.ab = getelementptr i8, ptr %i.aa, i64 40
  %i.ac = load i8, ptr %i.ab, align 8, !range !79, !noundef !80
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %iommu_iotlb_gather_add_range.exit.i, label %iommu_iotlb_gather_queued.exit.thread.i

iommu_iotlb_gather_queued.exit.thread.i:          ; preds = %iommu_iotlb_gather_queued.exit.i, %pt_check_range.exit
  %i.ae = getelementptr i8, ptr %0, i64 156
  %i.af = load i32, ptr %i.ae, align 4
  %i.ag = and i32 %i.af, 32
  %.not.i15 = icmp eq i32 %i.ag, 0
  br i1 %.not.i15, label %iommu_iotlb_gather_queued.exit.thread.iommu_iotlb_gather_is_disjoint.exit.thread26_crit_edge.i, label %bb.g

iommu_iotlb_gather_queued.exit.thread.iommu_iotlb_gather_is_disjoint.exit.thread26_crit_edge.i: ; preds = %iommu_iotlb_gather_queued.exit.thread.i
  %.pre.i = load i64, ptr %i.aa, align 8
  br label %iommu_iotlb_gather_is_disjoint.exit.thread26.i

bb.g:                                             ; preds = %iommu_iotlb_gather_queued.exit.thread.i
  %i.ah = getelementptr i8, ptr %i.aa, i64 8      ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8            ; 3 uses
  %.not.i24.i = icmp eq i64 %i.ai, 0
  %.pre28.i = load i64, ptr %i.aa, align 8        ; 4 uses
  br i1 %.not.i24.i, label %iommu_iotlb_gather_is_disjoint.exit.thread26.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = add i64 %i.z, %1
  %i.ak = icmp ult i64 %i.aj, %.pre28.i
  %i.al = add i64 %i.ai, 1
  %i.am = icmp ugt i64 %1, %i.al
  %or.cond.i = or i1 %i.am, %i.ak
  br i1 %or.cond.i, label %iommu_iotlb_gather_is_disjoint.exit.thread.i, label %iommu_iotlb_gather_is_disjoint.exit.thread26.i

iommu_iotlb_gather_is_disjoint.exit.thread.i:     ; preds = %bb.h
  %i.an = getelementptr i8, ptr %0, i64 16
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = getelementptr i8, ptr %i.ao, i64 48
  %i.aq = load ptr, ptr %i.ap, align 8            ; 2 uses
  %.not.i25.i = icmp ne ptr %i.aq, null
  %i.ar = icmp ult i64 %.pre28.i, %i.ai
  %or.cond34.i = select i1 %.not.i25.i, i1 %i.ar, i1 false, !prof !55
  br i1 %or.cond34.i, label %bb.i, label %iommu_iotlb_sync.exit.i, !prof !55

bb.i:                                             ; preds = %iommu_iotlb_gather_is_disjoint.exit.thread.i
  call void %i.aq(ptr noundef %0, ptr noundef %i.aa) #16, !inline_history !81
  br label %iommu_iotlb_sync.exit.i

iommu_iotlb_sync.exit.i:                          ; preds = %bb.i, %iommu_iotlb_gather_is_disjoint.exit.thread.i
  %i.as = getelementptr i8, ptr %i.aa, i64 24     ; 3 uses
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 41
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.7.0..sroa_idx.i.i.i, i8 0, i64 7, i1 false)
  store i64 -1, ptr %i.aa, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i8 0, i64 16, i1 false)
  store ptr %i.as, ptr %i.as, align 8
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  store ptr %i.as, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  store i8 0, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8
  br label %iommu_iotlb_gather_is_disjoint.exit.thread26.i

iommu_iotlb_gather_is_disjoint.exit.thread26.i:   ; preds = %iommu_iotlb_sync.exit.i, %bb.h, %bb.g, %iommu_iotlb_gather_queued.exit.thread.iommu_iotlb_gather_is_disjoint.exit.thread26_crit_edge.i
  %i.at = phi i64 [ %.pre.i, %iommu_iotlb_gather_queued.exit.thread.iommu_iotlb_gather_is_disjoint.exit.thread26_crit_edge.i ], [ %.pre28.i, %bb.h ], [ %.pre28.i, %bb.g ], [ -1, %iommu_iotlb_sync.exit.i ]
  %i.au = add i64 %1, -1
  %i.av = add i64 %i.au, %i.z                     ; 2 uses
  %i.aw = icmp ugt i64 %i.at, %1
  br i1 %i.aw, label %bb.j, label %bb.k

bb.j:                                             ; preds = %iommu_iotlb_gather_is_disjoint.exit.thread26.i
  store i64 %1, ptr %i.aa, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %iommu_iotlb_gather_is_disjoint.exit.thread26.i
  %i.ax = getelementptr i8, ptr %i.aa, i64 8      ; 2 uses
  %i.ay = load i64, ptr %i.ax, align 8
  %i.az = icmp ult i64 %i.ay, %i.av
  br i1 %i.az, label %bb.l, label %iommu_iotlb_gather_add_range.exit.i

bb.l:                                             ; preds = %bb.k
  store i64 %i.av, ptr %i.ax, align 8
  br label %iommu_iotlb_gather_add_range.exit.i

iommu_iotlb_gather_add_range.exit.i:              ; preds = %bb.l, %bb.k, %iommu_iotlb_gather_queued.exit.i
  %i.ba = load volatile ptr, ptr %i.a, align 8    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ba, %i.a
  br i1 %.not.i.i.i, label %gather_range_pending.exit, label %bb.m

bb.m:                                             ; preds = %iommu_iotlb_gather_add_range.exit.i
  %i.bb = getelementptr i8, ptr %i.aa, i64 24     ; 3 uses
  %i.bc = load ptr, ptr %i.bb, align 8            ; 2 uses
  %.val4.i.i.i = load ptr, ptr %i.b, align 8      ; 2 uses
  %i.bd = getelementptr i8, ptr %i.ba, i64 8
  store ptr %i.bb, ptr %i.bd, align 8
  store ptr %i.ba, ptr %i.bb, align 8
  store ptr %i.bc, ptr %.val4.i.i.i, align 8
  %i.be = getelementptr i8, ptr %i.bc, i64 8
  store ptr %.val4.i.i.i, ptr %i.be, align 8
  br label %gather_range_pending.exit

gather_range_pending.exit:                        ; preds = %iommu_iotlb_gather_add_range.exit.i, %bb.m
  store volatile ptr %i.a, ptr %i.a, align 8
  store volatile ptr %i.a, ptr %i.b, align 8
  %i.bf = load i64, ptr %i.d, align 8
  br label %.critedge

.critedge:                                        ; preds = %bb.f, %bb.e, %bb.b, %bb.a, %gather_range_pending.exit
  %.0 = phi i64 [ %i.bf, %gather_range_pending.exit ], [ 0, %bb.b ], [ 0, %bb.a ], [ 0, %bb.e ], [ 0, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  ret i64 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @amdv1_deinit(ptr noundef %0) #4 align 16 prefalign(16) {
bb.a:
  %1 = alloca %struct.pt_range, align 8           ; 10 uses
  %2 = alloca %struct.pt_iommu_collect_args, align 8 ; 7 uses
  %i.a = getelementptr i8, ptr %0, i64 144        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #13
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82)
  %i.b = load volatile i64, ptr %i.a, align 8, !noalias !85 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88)
  store ptr %i.a, ptr %1, align 8, !alias.scope !91
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = and i64 %i.b, -8                         ; 2 uses
  %i.e = inttoptr i64 %i.d to ptr                 ; 2 uses
  store ptr %i.e, ptr %i.c, align 8, !alias.scope !91
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = trunc i64 %i.b to i8
  %i.h = and i8 %i.g, 7                           ; 4 uses
  store i8 %i.h, ptr %i.f, align 8, !alias.scope !91
  %i.i = getelementptr i8, ptr %0, i64 153
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %i.j, i8 0, i64 6, i1 false), !alias.scope !82
  %i.k = load i8, ptr %i.i, align 1, !noalias !91 ; 2 uses
  %.not.i = icmp eq i8 %i.h, 5
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %narrow.i = mul nuw nsw i8 %i.h, 9
  %narrow12.i = add nuw nsw i8 %narrow.i, 21
  %i.l = tail call i8 @llvm.umin.i8(i8 %narrow12.i, i8 %i.k)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0.i.in.i = phi i8 [ %i.l, %bb.b ], [ %i.k, %bb.a ] ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 33
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i8 %.0.i.in.i, ptr %i.m, align 1, !alias.scope !91
end_hunk_1
