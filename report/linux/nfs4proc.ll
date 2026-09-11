Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/nfs4proc?download=true
inline.NumInlined: 1515
inline.NumDeleted: 411
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@nfs4_proc_set_acl:bb.a
  %i.af = getelementptr i8, ptr %.val.i, i64 864
  %.val.val.i = load ptr, ptr %i.af, align 32     ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  store ptr %i.b, ptr %i.f, align 8
  store i32 %3, ptr %i.g, align 8
  store i32 0, ptr %i.h, align 4
  store i64 %2, ptr %i.i, align 8
  store ptr %i.a, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  store ptr getelementptr (i8, ptr @nfs4_procedures, i64 1584), ptr %8, align 8
  store ptr %6, ptr %i.k, align 8
  store ptr %7, ptr %i.l, align 8
  store ptr null, ptr %i.m, align 8
  br i1 %i.o, label %__nfs4_proc_set_acl.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.a, i8 0, i64 128, i1 false), !annotation !49
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %7, i8 0, i64 40, i1 false), !annotation !49
  switch i32 %3, label %bb.d [
    i32 2, label %bb.e
    i32 3, label %bb.f
  ]

bb.d:                                             ; preds = %bb.c
  %i.ag = getelementptr i8, ptr %.val.val.i, i64 304
  %i.ah = load i32, ptr %i.ag, align 8
  %i.ai = and i32 %i.ah, 4096
  br label %nfs4_server_supports_acls.exit.i

bb.e:                                             ; preds = %bb.c
  %i.aj = getelementptr i8, ptr %.val.val.i, i64 308
  %i.ak = load i32, ptr %i.aj, align 4
  %i.al = and i32 %i.ak, 67108864
  br label %nfs4_server_supports_acls.exit.i

bb.f:                                             ; preds = %bb.c
  %i.am = getelementptr i8, ptr %.val.val.i, i64 308
  %i.an = load i32, ptr %i.am, align 4
  %i.ao = and i32 %i.an, 134217728
  br label %nfs4_server_supports_acls.exit.i

nfs4_server_supports_acls.exit.i:                 ; preds = %bb.f, %bb.e, %bb.d
  %.0.in.i.i = phi i32 [ %i.ai, %bb.d ], [ %i.al, %bb.e ], [ %i.ao, %bb.f ]
  %.0.i.not.i = icmp eq i32 %.0.in.i.i, 0         ; 2 uses
  %brmerge = select i1 %.0.i.not.i, i1 true, i1 %i.q
  %.mux = select i1 %.0.i.not.i, i32 -95, i32 -34
  br i1 %brmerge, label %__nfs4_proc_set_acl.exit, label %.preheader.i

.preheader.i:                                     ; preds = %nfs4_server_supports_acls.exit.i, %bb.g
  %indvars.iv.i = phi i32 [ %indvars.iv.next.i, %bb.g ], [ 1, %nfs4_server_supports_acls.exit.i ] ; 2 uses
  %.031.i.i = phi i32 [ %i.be, %bb.g ], [ 0, %nfs4_server_supports_acls.exit.i ] ; 3 uses
  %.030.i.i = phi ptr [ %i.bd, %bb.g ], [ %i.a, %nfs4_server_supports_acls.exit.i ] ; 2 uses
  %.029.i.i = phi i64 [ %i.bc, %bb.g ], [ %2, %nfs4_server_supports_acls.exit.i ] ; 2 uses
  %.027.i.i = phi ptr [ %i.bb, %bb.g ], [ %1, %nfs4_server_supports_acls.exit.i ] ; 2 uses
  %i.ap = call ptr @alloc_pages_noprof(i32 noundef 3264, i32 noundef 0) #19 ; 3 uses
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %.preheader.i.i, label %bb.g

.preheader.i.i:                                   ; preds = %.preheader.i
  %i.ar = icmp sgt i32 %.031.i.i, 0
  br i1 %i.ar, label %.lr.ph.preheader.i.i, label %__nfs4_proc_set_acl.exit

.lr.ph.preheader.i.i:                             ; preds = %.preheader.i.i
  %i.as = zext nneg i32 %.031.i.i to i64
  br label %.lr.ph.i.i

bb.g:                                             ; preds = %.preheader.i
  %i.at = call i64 @llvm.umin.i64(i64 %.029.i.i, i64 4096) ; 3 uses
  %i.au = load i64, ptr @vmemmap_base, align 8
  %i.av = ptrtoint ptr %i.ap to i64
  %i.aw = sub i64 %i.av, %i.au
  %i.ax = shl i64 %i.aw, 6
  %i.ay = load i64, ptr @page_offset_base, align 8
  %i.az = add i64 %i.ax, %i.ay
  %i.ba = inttoptr i64 %i.az to ptr
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ba, ptr align 1 %.027.i.i, i64 %i.at, i1 false)
  %i.bb = getelementptr i8, ptr %.027.i.i, i64 %i.at
  %i.bc = sub nuw i64 %.029.i.i, %i.at            ; 2 uses
  %i.bd = getelementptr i8, ptr %.030.i.i, i64 8
  store ptr %i.ap, ptr %.030.i.i, align 8
  %i.be = add i32 %.031.i.i, 1                    ; 4 uses
  %.not.i.i = icmp eq i64 %i.bc, 0
  %indvars.iv.next.i = add i32 %indvars.iv.i, 1
  br i1 %.not.i.i, label %nfs4_buf_to_pages_noslab.exit.i, label %.preheader.i, !llvm.loop !1

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ %i.as, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %.lr.ph.i.i ] ; 3 uses
  %i.bf = getelementptr [8 x i8], ptr %i.a, i64 %indvars.iv.i.i
  %i.bg = getelementptr i8, ptr %i.bf, i64 -8
  %i.bh = load ptr, ptr %i.bg, align 8
  call void @__free_pages(ptr noundef %i.bh, i32 noundef 0) #19
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1
  %i.bi = icmp samesign ugt i64 %indvars.iv.i.i, 1
  br i1 %i.bi, label %.lr.ph.i.i, label %__nfs4_proc_set_acl.exit, !llvm.loop !2

nfs4_buf_to_pages_noslab.exit.i:                  ; preds = %bb.g
  %i.bj = icmp slt i32 %i.be, 0
  br i1 %i.bj, label %__nfs4_proc_set_acl.exit, label %bb.h

bb.h:                                             ; preds = %nfs4_buf_to_pages_noslab.exit.i
  call void @nfs4_inode_make_writeable(ptr noundef %0) #19
  %i.bk = getelementptr i8, ptr %.val.val.i, i64 40
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = load ptr, ptr %.val.val.i, align 8
  store ptr null, ptr %6, align 8
  %i.bn = load i8, ptr %i.r, align 8
  %i.bo = and i8 %i.bn, -4
  %i.bp = or disjoint i8 %i.bo, 1
  store i8 %i.bp, ptr %i.r, align 8
  store ptr null, ptr %i.s, align 8
  %i.bq = getelementptr i8, ptr %i.bm, i64 664    ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = getelementptr i8, ptr %i.br, i64 80
  %i.bt = load ptr, ptr %i.bs, align 8
  store ptr %i.bt, ptr %7, align 8
  %i.bu = getelementptr i8, ptr %.val.val.i, i64 116
  %i.bv = load i32, ptr %i.bu, align 4
  %.not.i.i.i = icmp sgt i32 %i.bv, -1
  %spec.store.select.i.i.i = select i1 %.not.i.i.i, i16 0, i16 4
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  store ptr %.val.val.i, ptr %4, align 8
  store ptr %6, ptr %i.t, align 8
  store ptr %7, ptr %i.u, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  store i64 0, ptr %5, align 8
  store ptr %i.bl, ptr %i.v, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.w, i8 0, i64 16, i1 false)
  store ptr %8, ptr %i.x, align 8
  %i.bw = load ptr, ptr %i.bq, align 8
  %i.bx = getelementptr i8, ptr %i.bw, i64 72
  %i.by = load ptr, ptr %i.bx, align 8
  store ptr %i.by, ptr %i.y, align 8
  store ptr %4, ptr %i.z, align 8
  store ptr null, ptr %i.aa, align 8
  store i16 %spec.store.select.i.i.i, ptr %i.ab, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %i.ac, i8 0, i64 6, i1 false)
  %i.bz = call ptr @rpc_run_task(ptr noundef nonnull %5) #19 ; 4 uses
  %i.ca = icmp ugt ptr %i.bz, inttoptr (i64 -4096 to ptr)
  br i1 %i.ca, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cb = ptrtoint ptr %i.bz to i64
  %i.cc = trunc i64 %i.cb to i32
  br label %nfs4_call_sync.exit.i

bb.j:                                             ; preds = %bb.h
  %i.cd = getelementptr i8, ptr %i.bz, i64 4
  %i.ce = load i32, ptr %i.cd, align 4
  call void @rpc_put_task(ptr noundef %i.bz) #19
  br label %nfs4_call_sync.exit.i

nfs4_call_sync.exit.i:                            ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i = phi i32 [ %i.cc, %bb.i ], [ %i.ce, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %.not.i = icmp eq i32 %i.be, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %nfs4_call_sync.exit.i
  %i.cf = zext i32 %indvars.iv.i to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %put_page.exit.i, %.lr.ph.preheader.i
  %indvars.iv35.i = phi i64 [ %i.cf, %.lr.ph.preheader.i ], [ %indvars.iv.next36.i, %put_page.exit.i ] ; 3 uses
  %i.cg = getelementptr [8 x i8], ptr %i.a, i64 %indvars.iv35.i
  %i.ch = getelementptr i8, ptr %i.cg, i64 -8
  %i.ci = load ptr, ptr %i.ch, align 8            ; 2 uses
  %i.cj = getelementptr i8, ptr %i.ci, i64 8
  %i.ck = load volatile i64, ptr %i.cj, align 8   ; 2 uses
  %i.cl = ptrtoint ptr %i.ci to i64
  %i.cm = and i64 %i.ck, 1
  %i.cn = add nsw i64 %i.cm, -1
  %i.co = or i64 %i.cn, %i.ck
  %i.cp = and i64 %i.co, %i.cl
  %i.cq = inttoptr i64 %i.cp to ptr               ; 3 uses
  %i.cr = getelementptr i8, ptr %i.cq, i64 48
  %i.cs = load i32, ptr %i.cr, align 16
  %.mask.i.i.i = and i32 %i.cs, -16777216
  switch i32 %.mask.i.i.i, label %bb.k [
    i32 -184549376, label %put_page.exit.i
    i32 -134217728, label %put_page.exit.i
  ]

bb.k:                                             ; preds = %.lr.ph.i
  %i.ct = getelementptr i8, ptr %i.cq, i64 52     ; 2 uses
  %i.cu = call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock decl $0", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.ct, ptr elementtype(i32) %i.ct) #21, !srcloc !62 ; 2 uses
  %i.cv = icmp ult i8 %i.cu, 2
  call void @llvm.assume(i1 %i.cv)
  %.not.i.i29.i = icmp eq i8 %i.cu, 0
  br i1 %.not.i.i29.i, label %put_page.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @__folio_put(ptr noundef %i.cq) #19
  br label %put_page.exit.i

put_page.exit.i:                                  ; preds = %bb.l, %bb.k, %.lr.ph.i, %.lr.ph.i
  %indvars.iv.next36.i = add nsw i64 %indvars.iv35.i, -1
  %10 = trunc nuw i64 %indvars.iv35.i to i32
  %i.cw = icmp sgt i32 %10, 1
  br i1 %i.cw, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !278

._crit_edge.i:                                    ; preds = %put_page.exit.i, %nfs4_call_sync.exit.i
  call void @_raw_spin_lock(ptr noundef %i.ad) #19
  call void @nfs_set_cache_invalid(ptr noundef %0, i64 noundef 832) #19
  call void @_raw_spin_unlock(ptr noundef %i.ad) #19
  call void @nfs_access_zap_cache(ptr noundef %0) #19
  call void @nfs_zap_acl_cache(ptr noundef %0) #19
  br label %__nfs4_proc_set_acl.exit

__nfs4_proc_set_acl.exit:                         ; preds = %.lr.ph.i.i, %nfs4_server_supports_acls.exit.i, %bb.b, %.preheader.i.i, %nfs4_buf_to_pages_noslab.exit.i, %._crit_edge.i
  %.025.i = phi i32 [ -22, %bb.b ], [ %.mux, %nfs4_server_supports_acls.exit.i ], [ -12, %.preheader.i.i ], [ %.0.i.i.i.i.i, %._crit_edge.i ], [ %i.be, %nfs4_buf_to_pages_noslab.exit.i ], [ -12, %.lr.ph.i.i ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_nfs4_set_acl, i64 8), i1 false) #21
          to label %trace_nfs4_set_acl.exit [label %cpumask_test_cpu.exit.i.i], !srcloc !24

cpumask_test_cpu.exit.i.i:                        ; preds = %__nfs4_proc_set_acl.exit
  %i.cx = call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @cpu_number) #21, !srcloc !280
  %i.cy = zext i32 %i.cx to i64
  %i.cz = call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.cy) #21, !srcloc !28 ; 2 uses
  %i.da = icmp ult i8 %i.cz, 2
  call void @llvm.assume(i1 %i.da)
  %i.db = trunc nuw i8 %i.cz to i1
  br i1 %i.db, label %bb.m, label %trace_nfs4_set_acl.exit

bb.m:                                             ; preds = %cpumask_test_cpu.exit.i.i
  %i.dc = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.dc, ptr elementtype(i64) %i.dc) #21, !srcloc !29
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !30
  %i.dd = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_nfs4_set_acl, i64 56), align 8 ; 2 uses
  %.not.i.i15 = icmp eq ptr %i.dd, null
  br i1 %.not.i.i15, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.de = getelementptr i8, ptr %i.dd, i64 8
  %i.df = load ptr, ptr %i.de, align 8
  %i.dg = call i32 @__SCT__tp_func_nfs4_set_acl(ptr noundef %i.df, ptr noundef %0, i32 noundef %.025.i) #19 ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !31
  %i.dh = getelementptr i8, ptr %i.dc, i64 8      ; 2 uses
  call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.dh, ptr elementtype(i64) %i.dh) #21, !srcloc !32
  br label %trace_nfs4_set_acl.exit

trace_nfs4_set_acl.exit:                          ; preds = %__nfs4_proc_set_acl.exit, %cpumask_test_cpu.exit.i.i, %bb.o
  switch i32 %.025.i, label %bb.p [
    i32 -10039, label %.loopexit
    i32 -10041, label %.loopexit
  ]

bb.p:                                             ; preds = %trace_nfs4_set_acl.exit
  %.val = load ptr, ptr %i.e, align 8
  %i.di = getelementptr i8, ptr %.val, i64 864
  %.val.val = load ptr, ptr %i.di, align 32
  %i.dj = call i32 @nfs4_handle_exception(ptr noundef %.val.val, i32 noundef %.025.i, ptr noundef nonnull %9) #18
  %i.dk = load i8, ptr %i.ae, align 2
  %i.dl = and i8 %i.dk, 8
  %.not = icmp eq i8 %i.dl, 0
  br i1 %.not, label %.loopexit, label %bb.b, !llvm.loop !279

.loopexit:                                        ; preds = %bb.p, %trace_nfs4_set_acl.exit, %trace_nfs4_set_acl.exit, %bb.a
  %.013 = phi i32 [ -61, %bb.a ], [ -22, %trace_nfs4_set_acl.exit ], [ -22, %trace_nfs4_set_acl.exit ], [ %i.dj, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  ret i32 %.013
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @nfs_access_zap_cache(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__tp_func_nfs4_set_acl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none)
define internal zeroext i1 @nfs4_xattr_list_nfs4_dacl(ptr nofree noundef readonly captures(none) %0) #6 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 864
  %.val = load ptr, ptr %i.c, align 32
  %i.d = getelementptr i8, ptr %.val, i64 308
  %i.e = load i32, ptr %i.d, align 4
  %i.f = and i32 %i.e, 67108864
  %.0.i = icmp ne i32 %i.f, 0
  ret i1 %.0.i
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @nfs4_xattr_get_nfs4_dacl(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, ptr noundef %2, ptr nofree readnone captures(none) %3, ptr noundef %4, i64 noundef %5) #0 align 16 prefalign(16) {
bb.a:
  %i.a = tail call fastcc i64 @nfs4_proc_get_acl(ptr noundef %2, ptr noundef %4, i64 noundef %5, i32 noundef 2) #18, !srcloc !281
  %i.b = trunc nsw i64 %i.a to i32
  ret i32 %i.b
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @nfs4_xattr_set_nfs4_dacl(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, ptr noundef %3, ptr nofree readnone captures(none) %4, ptr nofree noundef readonly captures(none) %5, i64 noundef %6, i32 %7) #0 align 16 prefalign(16) {
bb.a:
  %i.a = tail call fastcc i32 @nfs4_proc_set_acl(ptr noundef %3, ptr noundef %5, i64 noundef %6, i32 noundef 2) #18, !srcloc !282
  ret i32 %i.a
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none)
define internal zeroext i1 @nfs4_xattr_list_nfs4_sacl(ptr nofree noundef readonly captures(none) %0) #6 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 864
  %.val = load ptr, ptr %i.c, align 32
  %i.d = getelementptr i8, ptr %.val, i64 308
  %i.e = load i32, ptr %i.d, align 4
  %i.f = and i32 %i.e, 134217728
  %.0.i = icmp ne i32 %i.f, 0
  ret i1 %.0.i
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @nfs4_xattr_get_nfs4_sacl(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, ptr noundef %2, ptr nofree readnone captures(none) %3, ptr noundef %4, i64 noundef %5) #0 align 16 prefalign(16) {
bb.a:
  %i.a = tail call fastcc i64 @nfs4_proc_get_acl(ptr noundef %2, ptr noundef %4, i64 noundef %5, i32 noundef 3) #18, !srcloc !283
  %i.b = trunc nsw i64 %i.a to i32
  ret i32 %i.b
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @nfs4_xattr_set_nfs4_sacl(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, ptr noundef %3, ptr nofree readnone captures(none) %4, ptr nofree noundef readonly captures(none) %5, i64 noundef %6, i32 %7) #0 align 16 prefalign(16) {
bb.a:
  %i.a = tail call fastcc i32 @nfs4_proc_set_acl(ptr noundef %3, ptr noundef %5, i64 noundef %6, i32 noundef 3) #18, !srcloc !284
  ret i32 %i.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umax.i16(i16, i16) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #10

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #5 = { fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #6 = { fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #7 = { fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(readwrite, target_mem: none) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #8 = { cold noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { noredzone null_pointer_is_valid allocsize(0) "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { noredzone null_pointer_is_valid allocsize(2) "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree noredzone nosync nounwind null_pointer_is_valid willreturn memory(argmem: read) "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #16 = { nocallback nounwind }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #18 = { noredzone "no-builtin-wcslen" }
attributes #19 = { noredzone nounwind "no-builtin-wcslen" }
attributes #20 = { nounwind memory(none) }
attributes #21 = { nounwind }
attributes #22 = { cold noredzone nounwind "no-builtin-wcslen" }
attributes #23 = { noredzone nounwind allocsize(2) "no-builtin-wcslen" }
attributes #24 = { noredzone nounwind allocsize(0) "no-builtin-wcslen" }

!llvm.named.register.rsp = !{!10}
!llvm.module.flags = !{!11, !12, !13, !14, !15, !16, !17, !18, !19}
!llvm.ident = !{!20}

!0 = distinct !{null}
!1 = distinct !{!1, !44}
!2 = distinct !{!2, !44}
!3 = distinct !{!3, !44}
!4 = distinct !{!4, !44}
!5 = distinct !{!5, !44}
!6 = distinct !{null}
!7 = distinct !{null}
!8 = distinct !{!8, !44}
!9 = distinct !{null, null, null}
!10 = !{!"rsp"}
!11 = !{i32 1, !"wchar_size", i32 2}
!12 = !{i32 8, !"cf-protection-branch", i32 1}
!13 = !{i32 4, !"function_return_thunk_extern", i32 1}
!14 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!15 = !{i32 1, !"Code Model", i32 2}
!16 = !{i32 1, !"stack-protector-guard-reg", !"gs"}
!17 = !{i32 1, !"stack-protector-guard-symbol", !"__ref_stack_chk_guard"}
!18 = !{i32 1, !"override-stack-alignment", i32 8}
!19 = !{i32 4, !"SkipRaxSetup", i32 1}
!20 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
end_hunk_0
