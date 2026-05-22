inline.NumInlined: 73
inline.NumDeleted: 21
begin_hunk_0_@_mi_os_alloc_aligned:bb.a
  br i1 %i.t, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ae = sub i64 0, %i.r
  %i.af = and i64 %i.ad, %i.ae
  br label %_mi_align_up.exit.i

bb.o:                                             ; preds = %bb.m
  %i.ag = urem i64 %i.ad, %i.r
  %i.ah = sub nuw i64 %i.ad, %i.ag
  br label %_mi_align_up.exit.i

_mi_align_up.exit.i:                              ; preds = %bb.o, %bb.n
  %.0.i.i = phi i64 [ %i.af, %bb.n ], [ %i.ah, %bb.o ] ; 13 uses
  %i.ai = load i64, ptr getelementptr inbounds nuw (i8, ptr @mi_os_mem_config, i64 16), align 8, !tbaa !26
  %i.aj = icmp ule i64 %.0.i20, %i.ai
  %i.ak = lshr i64 %.0.i.i, 3
  %i.al = icmp ugt i64 %.0.i20, %i.ak
  %i.am = select i1 %i.aj, i1 true, i1 %i.al
  br i1 %i.am, label %bb.p, label %.thread118.i

bb.p:                                             ; preds = %_mi_align_up.exit.i
  %i.an = call fastcc ptr @mi_os_prim_alloc(i64 noundef %.0.i.i, i64 noundef %.0.i20, i1 noundef zeroext %2, i1 noundef zeroext %spec.select.i, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) ; 7 uses
  %.not88.i = icmp eq ptr %i.an, null
  br i1 %.not88.i, label %.thread121.i, label %bb.q

.thread121.i:                                     ; preds = %bb.p
  %i.ao = zext i1 %2 to i32
  call void (ptr, ...) @_mi_warning_message(ptr noundef nonnull @.str.10, i64 noundef %.0.i.i, ptr noundef null, i64 noundef %.0.i20, i32 noundef %i.ao) #9
  br label %.thread118.i

bb.q:                                             ; preds = %bb.p
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = add i64 %.0.i20, -1
  %i.ar = and i64 %i.aq, %i.ap
  %i.as = icmp eq i64 %i.ar, 0
  br i1 %i.as, label %mi_os_prim_alloc_aligned.exit.thread27, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.at = zext i1 %2 to i32
  call void (ptr, ...) @_mi_warning_message(ptr noundef nonnull @.str.10, i64 noundef %.0.i.i, ptr noundef nonnull %i.an, i64 noundef %.0.i20, i32 noundef %i.at) #9
  %i.au = select i1 %2, i64 %.0.i.i, i64 0        ; 2 uses
  %i.av = call i32 @_mi_prim_free(ptr noundef nonnull %i.an, i64 noundef %.0.i.i) #9 ; 3 uses
  %.not.i.i = icmp eq i32 %i.av, 0
  br i1 %.not.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void (ptr, ...) @_mi_warning_message(ptr noundef nonnull @.str.8, i32 noundef %i.av, i32 noundef %i.av, i64 noundef %.0.i.i, ptr noundef nonnull %i.an) #9
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.aw = call ptr @_mi_subproc() #9              ; 2 uses
  %.not17.i.i = icmp eq i64 %i.au, 0
  br i1 %.not17.i.i, label %mi_os_prim_free.exit.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 2064
  call void @__mi_stat_decrease_mt(ptr noundef nonnull %i.ax, i64 noundef %i.au) #9
  br label %mi_os_prim_free.exit.i

mi_os_prim_free.exit.i:                           ; preds = %bb.u, %bb.t
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 2040
  call void @__mi_stat_decrease_mt(ptr noundef nonnull %i.ay, i64 noundef %.0.i.i) #9
  br label %.thread118.i

.thread118.i:                                     ; preds = %mi_os_prim_free.exit.i, %.thread121.i, %_mi_align_up.exit.i
  %i.az = xor i64 %.0.i20, -1
  %.not89.i = icmp ult i64 %.0.i.i, %i.az
  br i1 %.not89.i, label %bb.v, label %mi_os_prim_alloc_aligned.exit.thread

bb.v:                                             ; preds = %.thread118.i
  %i.ba = add i64 %.0.i.i, %.0.i20                ; 5 uses
  %i.bb = load i8, ptr getelementptr inbounds nuw (i8, ptr @mi_os_mem_config, i64 41), align 1, !tbaa !27, !range !11, !noundef !12
  %i.bc = trunc nuw i8 %i.bb to i1
  br i1 %i.bc, label %bb.z, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bd = call fastcc ptr @mi_os_prim_alloc(i64 noundef %i.ba, i64 noundef 1, i1 noundef zeroext false, i1 noundef zeroext false, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) ; 5 uses
  %i.be = icmp eq ptr %i.bd, null
  br i1 %i.be, label %mi_os_prim_alloc_aligned.exit.thread, label %_mi_align_up_ptr.exit.i

_mi_align_up_ptr.exit.i:                          ; preds = %bb.w
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = add i64 %.0.i20, -1
  %i.bh = add i64 %i.bg, %i.bf
  %i.bi = sub i64 0, %.0.i20
  %i.bj = and i64 %i.bh, %i.bi
  %i.bk = inttoptr i64 %i.bj to ptr               ; 3 uses
  br i1 %2, label %bb.x, label %mi_os_prim_alloc_aligned.exit

bb.x:                                             ; preds = %_mi_align_up_ptr.exit.i
  %i.bl = call noundef zeroext i1 @_mi_os_commit_ex(ptr noundef %i.bk, i64 noundef %.0.i.i, ptr noundef null, i64 noundef %.0.i.i)
  br i1 %i.bl, label %mi_os_prim_alloc_aligned.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  call fastcc void @mi_os_prim_free(ptr noundef nonnull %i.bd, i64 noundef %i.ba, i64 noundef 0, ptr noundef null)
  br label %mi_os_prim_alloc_aligned.exit.thread

bb.z:                                             ; preds = %bb.v
  %i.bm = call fastcc ptr @mi_os_prim_alloc(i64 noundef %i.ba, i64 noundef 1, i1 noundef zeroext %2, i1 noundef zeroext false, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) ; 5 uses
  %i.bn = icmp eq ptr %i.bm, null
  br i1 %i.bn, label %mi_os_prim_alloc_aligned.exit.thread, label %_mi_align_up_ptr.exit96.i

_mi_align_up_ptr.exit96.i:                        ; preds = %bb.z
  %i.bo = ptrtoint ptr %i.bm to i64               ; 2 uses
  %i.bp = add i64 %.0.i20, -1
  %i.bq = add i64 %i.bp, %i.bo
  %i.br = sub i64 0, %.0.i20
  %i.bs = and i64 %i.bq, %i.br                    ; 3 uses
  %i.bt = inttoptr i64 %i.bs to ptr               ; 8 uses
  %i.bu = sub i64 %i.bs, %i.bo                    ; 5 uses
  %i.bv = load i64, ptr @mi_os_mem_config, align 8, !tbaa !14 ; 4 uses
  %i.bw = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.bv)
  %i.bx = icmp samesign ult i64 %i.bw, 2
  %i.by = add i64 %.0.i.i, -1
  %i.bz = add i64 %i.by, %i.bv                    ; 3 uses
  br i1 %i.bx, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %_mi_align_up_ptr.exit96.i
  %i.ca = sub i64 0, %i.bv
  %i.cb = and i64 %i.bz, %i.ca
  br label %_mi_align_up.exit98.i

bb.ab:                                            ; preds = %_mi_align_up_ptr.exit96.i
  %i.cc = urem i64 %i.bz, %i.bv
  %i.cd = sub nuw i64 %i.bz, %i.cc
  br label %_mi_align_up.exit98.i

_mi_align_up.exit98.i:                            ; preds = %bb.ab, %bb.aa
  %.0.i97.i = phi i64 [ %i.cb, %bb.aa ], [ %i.cd, %bb.ab ] ; 2 uses
  %i.ce = add i64 %.0.i97.i, %i.bu                ; 2 uses
  %i.cf = sub i64 %i.ba, %i.ce                    ; 4 uses
  %.not90.i = icmp eq ptr %i.bm, %i.bt
  br i1 %.not90.i, label %bb.ag, label %bb.ac

bb.ac:                                            ; preds = %_mi_align_up.exit98.i
  %i.cg = select i1 %2, i64 %i.bu, i64 0          ; 2 uses
  %i.ch = call i32 @_mi_prim_free(ptr noundef nonnull %i.bm, i64 noundef %i.bu) #9 ; 3 uses
  %.not.i99.i = icmp eq i32 %i.ch, 0
  br i1 %.not.i99.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void (ptr, ...) @_mi_warning_message(ptr noundef nonnull @.str.8, i32 noundef %i.ch, i32 noundef %i.ch, i64 noundef %i.bu, ptr noundef nonnull %i.bm) #9
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.ci = call ptr @_mi_subproc() #9              ; 2 uses
  %.not17.i101.i = icmp eq i64 %i.cg, 0
  br i1 %.not17.i101.i, label %mi_os_prim_free.exit102.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 2064
  call void @__mi_stat_decrease_mt(ptr noundef nonnull %i.cj, i64 noundef %i.cg) #9
  br label %mi_os_prim_free.exit102.i

mi_os_prim_free.exit102.i:                        ; preds = %bb.af, %bb.ae
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 2040
  call void @__mi_stat_decrease_mt(ptr noundef nonnull %i.ck, i64 noundef %i.bu) #9
  br label %bb.ag

bb.ag:                                            ; preds = %mi_os_prim_free.exit102.i, %_mi_align_up.exit98.i
  %.not91.i = icmp eq i64 %i.ba, %i.ce
  br i1 %.not91.i, label %mi_os_prim_alloc_aligned.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bt, i64 %.0.i97.i ; 2 uses
  %i.cm = select i1 %2, i64 %i.cf, i64 0          ; 2 uses
  %i.cn = icmp eq i64 %i.bs, 0
  br i1 %i.cn, label %mi_os_prim_alloc_aligned.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.co = call i32 @_mi_prim_free(ptr noundef nonnull %i.cl, i64 noundef %i.cf) #9 ; 3 uses
  %.not.i103.i = icmp eq i32 %i.co, 0
  br i1 %.not.i103.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void (ptr, ...) @_mi_warning_message(ptr noundef nonnull @.str.8, i32 noundef %i.co, i32 noundef %i.co, i64 noundef %i.cf, ptr noundef nonnull %i.cl) #9
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.cp = call ptr @_mi_subproc() #9              ; 2 uses
  %.not17.i105.i = icmp eq i64 %i.cm, 0
  br i1 %.not17.i105.i, label %bb.am, label %bb.al

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

mi_os_prim_alloc_aligned.exit.thread27:           ; preds = %bb.am, %bb.q, %mi_os_prim_alloc_aligned.exit
  %.2.i31 = phi ptr [ %.2.i, %mi_os_prim_alloc_aligned.exit ], [ %i.bt, %bb.am ], [ %i.an, %bb.q ] ; 2 uses
  %.02330 = phi ptr [ %.023, %mi_os_prim_alloc_aligned.exit ], [ %i.bt, %bb.am ], [ %i.an, %bb.q ] ; 2 uses
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

mi_os_prim_alloc_aligned.exit.thread:             ; preds = %bb.w, %bb.z, %bb.y, %.thread118.i, %_mi_align_up.exit, %mi_os_prim_alloc_aligned.exit, %mi_os_prim_alloc_aligned.exit.thread27
  %.0 = phi ptr [ %.2.i31, %mi_os_prim_alloc_aligned.exit.thread27 ], [ null, %mi_os_prim_alloc_aligned.exit ], [ null, %_mi_align_up.exit ], [ null, %.thread118.i ], [ null, %bb.y ], [ null, %bb.z ], [ null, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.an

bb.an:                                            ; preds = %bb.a, %mi_os_prim_alloc_aligned.exit.thread
  %.1 = phi ptr [ %.0, %mi_os_prim_alloc_aligned.exit.thread ], [ null, %bb.a ]
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define hidden ptr @_mi_os_zalloc(i64 noundef %0, ptr noundef writeonly captures(none) initializes((0, 24)) %1) local_unnamed_addr #2 {
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
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 22
  call void @llvm.assume(i1 true) [ "align"(ptr %i.r, i64 8) ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.r, i8 0, i64 range(i64 1, 0) %0, i1 false)
  store i8 1, ptr %i.w, align 2, !tbaa !28
  br label %mi_os_ensure_zero.exit

mi_os_ensure_zero.exit:                           ; preds = %bb.a, %_mi_os_alloc.exit.thread7, %bb.k, %bb.l
  %.1.i4 = phi ptr [ null, %_mi_os_alloc.exit.thread7 ], [ null, %bb.a ], [ %i.r, %bb.l ], [ %i.r, %bb.k ]
  ret ptr %.1.i4
}

; Function Attrs: nounwind uwtable
define hidden ptr @_mi_os_alloc_aligned_at_offset(i64 noundef %0, i64 noundef %1, i64 noundef %2, i1 noundef zeroext %3, i1 noundef zeroext %4, ptr noundef writeonly captures(none) initializes((0, 24)) %5) local_unnamed_addr #2 {
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
end_hunk_0
