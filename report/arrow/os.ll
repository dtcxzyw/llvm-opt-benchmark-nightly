inline.NumInlined: 73
inline.NumDeleted: 21
begin_hunk_0_@_mi_os_alloc_aligned:bb.a

bb.ab:                                            ; preds = %_mi_align_up_ptr.exit95.i
  %i.cc = urem i64 %i.bz, %i.bv
  %i.cd = sub nuw i64 %i.bz, %i.cc
  br label %_mi_align_up.exit97.i

_mi_align_up.exit97.i:                            ; preds = %bb.ab, %bb.aa
  %.0.i96.i = phi i64 [ %i.cb, %bb.aa ], [ %i.cd, %bb.ab ] ; 2 uses
  %i.ce = add i64 %.0.i96.i, %i.bu                ; 2 uses
  %i.cf = sub i64 %i.ba, %i.ce                    ; 4 uses
  %.not90.i = icmp eq ptr %i.bm, %i.bt
  br i1 %.not90.i, label %bb.ag, label %bb.ac

bb.ac:                                            ; preds = %_mi_align_up.exit97.i
  %i.cg = select i1 %2, i64 %i.bu, i64 0          ; 2 uses
  %i.ch = call i32 @_mi_prim_free(ptr noundef nonnull %i.bm, i64 noundef %i.bu) #9 ; 3 uses
  %.not.i98.i = icmp eq i32 %i.ch, 0
  br i1 %.not.i98.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void (ptr, ...) @_mi_warning_message(ptr noundef nonnull @.str.8, i32 noundef %i.ch, i32 noundef %i.ch, i64 noundef %i.bu, ptr noundef nonnull %i.bm) #9
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.ci = call ptr @_mi_subproc() #9              ; 2 uses
  %.not17.i100.i = icmp eq i64 %i.cg, 0
  br i1 %.not17.i100.i, label %mi_os_prim_free.exit101.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 2064
  call void @__mi_stat_decrease_mt(ptr noundef nonnull %i.cj, i64 noundef %i.cg) #9
  br label %mi_os_prim_free.exit101.i

mi_os_prim_free.exit101.i:                        ; preds = %bb.af, %bb.ae
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 2040
  call void @__mi_stat_decrease_mt(ptr noundef nonnull %i.ck, i64 noundef %i.bu) #9
  br label %bb.ag

bb.ag:                                            ; preds = %mi_os_prim_free.exit101.i, %_mi_align_up.exit97.i
  %.not91.i = icmp eq i64 %i.ba, %i.ce
  br i1 %.not91.i, label %mi_os_prim_alloc_aligned.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bt, i64 %.0.i96.i ; 2 uses
  %i.cm = select i1 %2, i64 %i.cf, i64 0          ; 2 uses
  %i.cn = icmp eq i64 %i.bs, 0
  br i1 %i.cn, label %mi_os_prim_alloc_aligned.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.co = call i32 @_mi_prim_free(ptr noundef nonnull %i.cl, i64 noundef %i.cf) #9 ; 3 uses
  %.not.i102.i = icmp eq i32 %i.co, 0
  br i1 %.not.i102.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void (ptr, ...) @_mi_warning_message(ptr noundef nonnull @.str.8, i32 noundef %i.co, i32 noundef %i.co, i64 noundef %i.cf, ptr noundef nonnull %i.cl) #9
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.cp = call ptr @_mi_subproc() #9              ; 2 uses
  %.not17.i104.i = icmp eq i64 %i.cm, 0
  br i1 %.not17.i104.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 2064
  call void @__mi_stat_decrease_mt(ptr noundef nonnull %i.cq, i64 noundef %i.cm) #9
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 2040
  call void @__mi_stat_decrease_mt(ptr noundef nonnull %i.cr, i64 noundef %i.cf) #9
  br label %mi_os_prim_alloc_aligned.exit.thread27

mi_os_prim_alloc_aligned.exit:                    ; preds = %bb.ag, %bb.ah, %_mi_align_up_ptr.exit.i, %bb.x
  %.023 = phi ptr [ %i.bt, %bb.ah ], [ %i.bd, %_mi_align_up_ptr.exit.i ], [ %i.bt, %bb.ag ], [ %i.bd, %bb.x ]
  %.2.i = phi ptr [ %i.bt, %bb.ah ], [ %i.bk, %_mi_align_up_ptr.exit.i ], [ %i.bt, %bb.ag ], [ %i.bk, %bb.x ] ; 2 uses
  %i.cs = icmp eq ptr %.2.i, null
  br i1 %i.cs, label %mi_os_prim_alloc_aligned.exit.thread, label %mi_os_prim_alloc_aligned.exit.thread27

mi_os_prim_alloc_aligned.exit.thread27:           ; preds = %bb.q, %bb.am, %mi_os_prim_alloc_aligned.exit
  %.2.i31 = phi ptr [ %.2.i, %mi_os_prim_alloc_aligned.exit ], [ %i.an, %bb.q ], [ %i.bt, %bb.am ] ; 2 uses
  %.02330 = phi ptr [ %.023, %mi_os_prim_alloc_aligned.exit ], [ %i.an, %bb.q ], [ %i.bt, %bb.am ] ; 2 uses
  %i.ct = load i8, ptr %i.b, align 1, !tbaa !23, !range !11, !noundef !12
  %i.cu = load i8, ptr %i.a, align 1, !tbaa !23, !range !11, !noundef !12
  %.sroa.5.21.insert.insert = select i1 %2, i64 1099511627780, i64 4
  %.sroa.5.22.insert.ext = zext nneg i8 %i.ct to i64
  %.sroa.5.22.insert.shift = shl nuw nsw i64 %.sroa.5.22.insert.ext, 48
  %.sroa.5.22.insert.insert = or disjoint i64 %.sroa.5.22.insert.shift, %.sroa.5.21.insert.insert
  %.sroa.5.20.insert.ext = zext nneg i8 %i.cu to i64
  %.sroa.5.20.insert.shift = shl nuw nsw i64 %.sroa.5.20.insert.ext, 32
  %.sroa.5.20.insert.insert = or disjoint i64 %.sroa.5.22.insert.insert, %.sroa.5.20.insert.shift
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %.sroa.5.20.insert.insert, ptr %.sroa.5.0..sroa_idx, align 8
  store ptr %.02330, ptr %4, align 8, !tbaa !20
  %i.cv = ptrtoint ptr %.2.i31 to i64
  %i.cw = ptrtoint ptr %.02330 to i64
  %i.cx = add i64 %.010.i, %i.cv
  %i.cy = sub i64 %i.cx, %i.cw
  store i64 %i.cy, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !20
  br label %mi_os_prim_alloc_aligned.exit.thread

mi_os_prim_alloc_aligned.exit.thread:             ; preds = %bb.z, %bb.y, %bb.w, %.thread117.i, %_mi_align_up.exit, %mi_os_prim_alloc_aligned.exit, %mi_os_prim_alloc_aligned.exit.thread27
  %.0 = phi ptr [ %.2.i31, %mi_os_prim_alloc_aligned.exit.thread27 ], [ null, %mi_os_prim_alloc_aligned.exit ], [ null, %_mi_align_up.exit ], [ null, %.thread117.i ], [ null, %bb.w ], [ null, %bb.y ], [ null, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.an

bb.an:                                            ; preds = %bb.a, %mi_os_prim_alloc_aligned.exit.thread
  %.1 = phi ptr [ %.0, %mi_os_prim_alloc_aligned.exit.thread ], [ null, %bb.a ]
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define hidden ptr @_mi_os_zalloc(i64 noundef %0, ptr nofree noundef writeonly captures(none) initializes((0, 24)) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 6 uses
  %i.b = alloca i8, align 1                       ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  %i.c = icmp eq i64 %0, 0
  br i1 %i.c, label %mi_os_ensure_zero.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ult i64 %0, 524288
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = load i64, ptr @mi_os_mem_config, align 8, !tbaa !14
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.f = icmp ult i64 %0, 2097152
  br i1 %i.f, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = icmp ult i64 %0, 8388608
  br i1 %i.g, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = icmp ult i64 %0, 33554432
  %..i.i = select i1 %i.h, i64 1048576, i64 4194304
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c
  %.0.i.i = phi i64 [ %i.e, %bb.c ], [ 262144, %bb.e ], [ 65536, %bb.d ], [ %..i.i, %bb.f ] ; 5 uses
  %i.i = xor i64 %.0.i.i, -1
  %.not.i.i = icmp ult i64 %0, %i.i
  br i1 %.not.i.i, label %bb.h, label %_mi_os_good_alloc_size.exit.i, !prof !17

bb.h:                                             ; preds = %bb.g
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %.0.i.i)
  %i.k = icmp samesign ult i64 %i.j, 2
  %i.l = add i64 %0, -1
  %i.m = add i64 %i.l, %.0.i.i                    ; 3 uses
  br i1 %i.k, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.n = sub i64 0, %.0.i.i
  %i.o = and i64 %i.m, %i.n
  br label %_mi_os_good_alloc_size.exit.i

bb.j:                                             ; preds = %bb.h
  %i.p = urem i64 %i.m, %.0.i.i
  %i.q = sub nuw i64 %i.m, %i.p
  br label %_mi_os_good_alloc_size.exit.i

_mi_os_good_alloc_size.exit.i:                    ; preds = %bb.j, %bb.i, %bb.g
  %.010.i.i = phi i64 [ %0, %bb.g ], [ %i.o, %bb.i ], [ %i.q, %bb.j ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i8 0, ptr %i.a, align 1, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store i8 0, ptr %i.b, align 1, !tbaa !23
  %i.r = call fastcc ptr @mi_os_prim_alloc(i64 noundef %.010.i.i, i64 noundef 0, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef %i.a, ptr noundef %i.b) ; 6 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %_mi_os_alloc.exit.thread7, label %bb.k

_mi_os_alloc.exit.thread7:                        ; preds = %_mi_os_good_alloc_size.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %mi_os_ensure_zero.exit

bb.k:                                             ; preds = %_mi_os_good_alloc_size.exit.i
  %i.t = load i8, ptr %i.b, align 1, !tbaa !23, !range !11, !noundef !12 ; 2 uses
  %i.u = load i8, ptr %i.a, align 1, !tbaa !23, !range !11, !noundef !12
  %.sroa.5.22.insert.ext.i = zext nneg i8 %i.t to i64
  %.sroa.5.22.insert.shift.i = shl nuw nsw i64 %.sroa.5.22.insert.ext.i, 48
  %.sroa.5.20.insert.ext.i = zext nneg i8 %i.u to i64
  %.sroa.5.20.insert.shift.i = shl nuw nsw i64 %.sroa.5.20.insert.ext.i, 32
  %.sroa.5.22.insert.insert.i = or disjoint i64 %.sroa.5.22.insert.shift.i, %.sroa.5.20.insert.shift.i
  %.sroa.5.20.insert.insert.i = or disjoint i64 %.sroa.5.22.insert.insert.i, 1099511627780
  store ptr %i.r, ptr %1, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %.010.i.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !20
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %.sroa.5.20.insert.insert.i, ptr %.sroa.5.0..sroa_idx.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  %i.v = trunc nuw i8 %i.t to i1
  br i1 %i.v, label %mi_os_ensure_zero.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %2 = getelementptr inbounds nuw i8, ptr %1, i64 22
  call void @llvm.assume(i1 true) [ "align"(ptr %i.r, i64 8) ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.r, i8 0, i64 range(i64 1, 0) %0, i1 false)
  store i8 1, ptr %2, align 2, !tbaa !28
  br label %mi_os_ensure_zero.exit

mi_os_ensure_zero.exit:                           ; preds = %bb.a, %_mi_os_alloc.exit.thread7, %bb.k, %bb.l
  %.1.i4 = phi ptr [ null, %_mi_os_alloc.exit.thread7 ], [ null, %bb.a ], [ %i.r, %bb.l ], [ %i.r, %bb.k ]
  ret ptr %.1.i4
}

; Function Attrs: nounwind uwtable
define hidden ptr @_mi_os_alloc_aligned_at_offset(i64 noundef %0, i64 noundef %1, i64 noundef %2, i1 noundef zeroext %3, i1 noundef zeroext %4, ptr nofree noundef writeonly captures(none) initializes((0, 24)) %5) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %i.b = icmp eq i64 %2, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @_mi_os_alloc_aligned(i64 noundef %0, i64 noundef %1, i1 noundef zeroext %3, i1 noundef zeroext %4, ptr noundef nonnull %5)
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.d = add i64 %1, -1
  %i.e = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %1)
  %i.f = icmp samesign ult i64 %i.e, 2
  %i.g = add i64 %i.d, %2                         ; 3 uses
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = sub i64 0, %1
  %i.i = and i64 %i.g, %i.h
  br label %_mi_align_up.exit

bb.e:                                             ; preds = %bb.c
  %i.j = urem i64 %i.g, %1
  %i.k = sub nuw i64 %i.g, %i.j
  br label %_mi_align_up.exit

_mi_align_up.exit:                                ; preds = %bb.d, %bb.e
  %.0.i = phi i64 [ %i.i, %bb.d ], [ %i.k, %bb.e ]
  %i.l = sub i64 %.0.i, %2                        ; 4 uses
  %i.m = add i64 %i.l, %0
  %i.n = tail call ptr @_mi_os_alloc_aligned(i64 noundef %i.m, i64 noundef %1, i1 noundef zeroext %3, i1 noundef zeroext %4, ptr noundef nonnull %5) ; 3 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.l, label %bb.f

bb.f:                                             ; preds = %_mi_align_up.exit
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l ; 3 uses
  %i.q = load i64, ptr @mi_os_mem_config, align 8
  %i.r = icmp ugt i64 %i.l, %i.q
  %or.cond = select i1 %3, i1 %i.r, i1 false
  br i1 %or.cond, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.s = tail call ptr @_mi_subproc() #9
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 2064
  tail call void @__mi_stat_decrease_mt(ptr noundef nonnull %i.t, i64 noundef %i.l) #9
  %i.u = load i64, ptr @mi_os_mem_config, align 8, !tbaa !14 ; 5 uses
  %i.v = ptrtoint ptr %i.n to i64
  %i.w = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.u)
  %i.x = icmp samesign ult i64 %i.w, 2
  %i.y = add i64 %i.v, -1
  %i.z = add i64 %i.y, %i.u                       ; 3 uses
  %i.aa = ptrtoint ptr %i.p to i64                ; 3 uses
  br i1 %i.x, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ab = sub i64 0, %i.u                         ; 2 uses
  %i.ac = and i64 %i.z, %i.ab
  %i.ad = and i64 %i.ab, %i.aa
  br label %mi_align_down_ptr.exit27.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.ae = urem i64 %i.z, %i.u
  %i.af = sub nuw i64 %i.z, %i.ae
  %i.ag = urem i64 %i.aa, %i.u
  %i.ah = sub nuw i64 %i.aa, %i.ag
  br label %mi_align_down_ptr.exit27.i.i.i.i

mi_align_down_ptr.exit27.i.i.i.i:                 ; preds = %bb.i, %bb.h
  %.in.i.i.i.i = phi i64 [ %i.af, %bb.i ], [ %i.ac, %bb.h ] ; 2 uses
  %.in30.i.i.i.i = phi i64 [ %i.ah, %bb.i ], [ %i.ad, %bb.h ]
  %i.ai = sub i64 %.in30.i.i.i.i, %.in.i.i.i.i    ; 3 uses
  %i.aj = icmp slt i64 %i.ai, 1
  br i1 %i.aj, label %_mi_os_decommit.exit, label %bb.j

bb.j:                                             ; preds = %mi_align_down_ptr.exit27.i.i.i.i
  %i.ak = inttoptr i64 %.in.i.i.i.i to ptr        ; 2 uses
  store i8 1, ptr %i.a, align 1, !tbaa !23
  %i.al = call i32 @_mi_prim_decommit(ptr noundef %i.ak, i64 noundef %i.ai, ptr noundef nonnull %i.a) #9 ; 3 uses
  %.not.i.i = icmp eq i32 %i.al, 0
  br i1 %.not.i.i, label %_mi_os_decommit.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void (ptr, ...) @_mi_warning_message(ptr noundef nonnull @.str.11, i32 noundef %i.al, i32 noundef %i.al, ptr noundef %i.ak, i64 noundef %i.ai) #9
  br label %_mi_os_decommit.exit

_mi_os_decommit.exit:                             ; preds = %mi_align_down_ptr.exit27.i.i.i.i, %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.l

bb.l:                                             ; preds = %_mi_align_up.exit, %_mi_os_decommit.exit, %bb.f, %bb.b
  %.1 = phi ptr [ %i.c, %bb.b ], [ null, %_mi_align_up.exit ], [ %i.p, %_mi_os_decommit.exit ], [ %i.p, %bb.f ]
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define hidden noundef zeroext i1 @_mi_os_decommit(ptr noundef %0, i64 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.b = tail call ptr @_mi_subproc() #9
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 2064
  tail call void @__mi_stat_decrease_mt(ptr noundef nonnull %i.c, i64 noundef %1) #9
  %i.d = icmp eq i64 %1, 0
  %i.e = icmp eq ptr %0, null
  %or.cond.i.i.i = or i1 %i.e, %i.d
  br i1 %or.cond.i.i.i, label %mi_os_decommit_ex.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i64, ptr @mi_os_mem_config, align 8, !tbaa !14 ; 5 uses
  %i.g = ptrtoint ptr %0 to i64
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.f)
  %i.i = icmp samesign ult i64 %i.h, 2
  %i.j = add i64 %i.g, -1
  %i.k = add i64 %i.j, %i.f                       ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.m = ptrtoint ptr %i.l to i64                 ; 3 uses
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = sub i64 0, %i.f                          ; 2 uses
  %i.o = and i64 %i.k, %i.n
  %i.p = and i64 %i.n, %i.m
  br label %mi_align_down_ptr.exit27.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.q = urem i64 %i.k, %i.f
  %i.r = sub nuw i64 %i.k, %i.q
  %i.s = urem i64 %i.m, %i.f
  %i.t = sub nuw i64 %i.m, %i.s
  br label %mi_align_down_ptr.exit27.i.i.i

mi_align_down_ptr.exit27.i.i.i:                   ; preds = %bb.d, %bb.c
  %.in.i.i.i = phi i64 [ %i.r, %bb.d ], [ %i.o, %bb.c ] ; 2 uses
  %.in30.i.i.i = phi i64 [ %i.t, %bb.d ], [ %i.p, %bb.c ]
  %i.u = sub i64 %.in30.i.i.i, %.in.i.i.i         ; 3 uses
  %i.v = icmp slt i64 %i.u, 1
  br i1 %i.v, label %mi_os_decommit_ex.exit, label %bb.e

bb.e:                                             ; preds = %mi_align_down_ptr.exit27.i.i.i
  %i.w = inttoptr i64 %.in.i.i.i to ptr           ; 2 uses
  store i8 1, ptr %i.a, align 1, !tbaa !23
  %i.x = call i32 @_mi_prim_decommit(ptr noundef %i.w, i64 noundef %i.u, ptr noundef nonnull %i.a) #9 ; 3 uses
  %.not.i = icmp eq i32 %i.x, 0
  br i1 %.not.i, label %mi_os_decommit_ex.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void (ptr, ...) @_mi_warning_message(ptr noundef nonnull @.str.11, i32 noundef %i.x, i32 noundef %i.x, ptr noundef %i.w, i64 noundef %i.u) #9
  br label %mi_os_decommit_ex.exit

mi_os_decommit_ex.exit:                           ; preds = %bb.a, %mi_align_down_ptr.exit27.i.i.i, %bb.e, %bb.f
  %.0.i = phi i1 [ true, %bb.e ], [ false, %bb.f ], [ true, %bb.a ], [ true, %mi_align_down_ptr.exit27.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i1 %.0.i
}

; Function Attrs: nounwind uwtable
define hidden noundef zeroext i1 @_mi_os_commit_ex(ptr noundef %0, i64 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2, i64 noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = icmp ne ptr %2, null                     ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %2, align 1, !tbaa !23
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = tail call ptr @_mi_subproc() #9
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 2288
  tail call void @__mi_stat_counter_increase_mt(ptr noundef nonnull %i.d, i64 noundef 1) #9
  %i.e = icmp eq i64 %1, 0
  %i.f = icmp eq ptr %0, null
  %or.cond.i = or i1 %i.f, %i.e
  br i1 %or.cond.i, label %mi_os_page_align_areax.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = load i64, ptr @mi_os_mem_config, align 8, !tbaa !14 ; 5 uses
  %i.h = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.i = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.g)
  %i.j = icmp samesign ult i64 %i.i, 2
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = add i64 %i.l, -1
  %i.n = add i64 %i.m, %i.g                       ; 3 uses
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
end_hunk_0
