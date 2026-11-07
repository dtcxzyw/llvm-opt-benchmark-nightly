Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/regcomp?download=true
inline.NumInlined: 213
inline.NumDeleted: 79
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@add_mem_num:bb.a
bb.e:                                             ; preds = %bb.d
  store i32 %i.d, ptr %i.b, align 8, !tbaa !104
  br label %.critedge

.critedge:                                        ; preds = %bb.e, %bb.d, %bb.b
  %i.t = phi i32 [ -5, %bb.b ], [ 0, %bb.d ], [ 0, %bb.e ]
  ret i32 %i.t
}

; Function Attrs: nounwind sspstrong memory(readwrite, target_mem: none) uwtable
define internal fastcc void @add_compile_string(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i64 noundef %2, ptr nofree noundef captures(none) %3, i32 noundef range(i32 0, 2) %4) unnamed_addr #13 !guid !387 {
bb.a:
  %i.a = sext i32 %1 to i64                       ; 3 uses
  %i.b = add nsw i64 %i.a, -1
  %i.c = add i64 %i.b, %2
  %i.d = udiv i64 %i.c, %i.a                      ; 3 uses
  %.not.i = icmp eq i32 %4, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %cond.i = icmp eq i64 %i.d, 1
  %..i = select i1 %cond.i, i32 14, i32 15
  br label %select_str_opcode.exit

bb.c:                                             ; preds = %bb.a
  switch i32 %1, label %bb.f [
    i32 1, label %bb.d
    i32 2, label %bb.e
    i32 3, label %select_str_opcode.exit
  ]

bb.d:                                             ; preds = %bb.c
  %switch.tableidx.i = add i64 %i.d, -1           ; 2 uses
  %i.e = icmp ult i64 %switch.tableidx.i, 5
  br i1 %i.e, label %switch.lookup.i, label %select_str_opcode.exit

bb.e:                                             ; preds = %bb.c
  %switch.tableidx9.i = add i64 %i.d, -1          ; 2 uses
  %i.f = icmp ult i64 %switch.tableidx9.i, 3
  br i1 %i.f, label %switch.lookup10.i, label %select_str_opcode.exit

bb.f:                                             ; preds = %bb.c
  br label %select_str_opcode.exit

switch.lookup.i:                                  ; preds = %bb.d
  %switch.idx.cast.i = trunc nuw nsw i64 %switch.tableidx.i to i32
  %switch.offset.i = add nuw nsw i32 %switch.idx.cast.i, 2
  br label %select_str_opcode.exit

switch.lookup10.i:                                ; preds = %bb.e
  %switch.idx.cast11.i = trunc nuw nsw i64 %switch.tableidx9.i to i32
  %switch.offset12.i = or disjoint i32 %switch.idx.cast11.i, 8
  br label %select_str_opcode.exit

select_str_opcode.exit:                           ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %switch.lookup.i, %switch.lookup10.i
  %.0.i = phi i32 [ %..i, %bb.b ], [ %switch.offset12.i, %switch.lookup10.i ], [ 13, %bb.f ], [ 7, %bb.d ], [ %switch.offset.i, %switch.lookup.i ], [ 12, %bb.c ], [ 11, %bb.e ] ; 2 uses
  %i.g = getelementptr i8, ptr %3, i64 8          ; 20 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !104  ; 2 uses
  %i.i = add i32 %i.h, 1                          ; 4 uses
  %i.j = getelementptr i8, ptr %3, i64 12         ; 10 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !49   ; 2 uses
  %i.l = icmp ult i32 %i.k, %i.i
  br i1 %i.l, label %.preheader.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %select_str_opcode.exit
  %.pre.i = load ptr, ptr %3, align 8, !tbaa !34
  br label %bb.i

.preheader.i:                                     ; preds = %select_str_opcode.exit, %.preheader.i
  %i.m = phi i32 [ %i.n, %.preheader.i ], [ %i.k, %select_str_opcode.exit ]
  %i.n = shl i32 %i.m, 1                          ; 4 uses
  %i.o = icmp ult i32 %i.n, %i.i
  br i1 %i.o, label %.preheader.i, label %bb.g, !llvm.loop !0

bb.g:                                             ; preds = %.preheader.i
  store i32 %i.n, ptr %i.j, align 4, !tbaa !49
  %i.p = load ptr, ptr %3, align 8, !tbaa !34
  %i.q = zext i32 %i.n to i64
  %i.r = tail call ptr @realloc(ptr noundef %i.p, i64 noundef %i.q) #23 ; 3 uses
  %.not.i28 = icmp eq ptr %i.r, null
  br i1 %.not.i28, label %add_opcode.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  store ptr %i.r, ptr %3, align 8, !tbaa !34
  %.pre28.i = load i32, ptr %i.g, align 8, !tbaa !104
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge.i
  %i.s = phi i32 [ %i.h, %._crit_edge.i ], [ %.pre28.i, %bb.h ]
  %i.t = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.r, %bb.h ]
  %i.u = trunc nuw nsw i32 %.0.i to i8
  %i.v = zext i32 %i.s to i64
  %i.w = getelementptr i8, ptr %i.t, i64 %i.v
  store i8 %i.u, ptr %i.w, align 1, !tbaa !46
  %i.x = load i32, ptr %i.g, align 8, !tbaa !104
  %i.y = icmp ult i32 %i.x, %i.i
  br i1 %i.y, label %bb.j, label %add_opcode.exit

bb.j:                                             ; preds = %bb.i
  store i32 %i.i, ptr %i.g, align 8, !tbaa !104
  br label %add_opcode.exit

add_opcode.exit:                                  ; preds = %bb.g, %bb.i, %bb.j
  switch i32 %.0.i, label %add_length.exit38 [
    i32 13, label %bb.k
    i32 15, label %bb.p
    i32 7, label %.thread
    i32 11, label %.thread
    i32 12, label %.thread
  ]

bb.k:                                             ; preds = %add_opcode.exit
  %i.z = load i32, ptr %i.g, align 8, !tbaa !104  ; 2 uses
  %i.aa = add i32 %i.z, 4                         ; 4 uses
  %i.ab = load i32, ptr %i.j, align 4, !tbaa !49  ; 2 uses
  %i.ac = icmp ult i32 %i.ab, %i.aa
  br i1 %i.ac, label %.preheader.i31, label %._crit_edge.i29

._crit_edge.i29:                                  ; preds = %bb.k
  %.pre.i30 = load ptr, ptr %3, align 8, !tbaa !34
  br label %bb.n

.preheader.i31:                                   ; preds = %bb.k, %.preheader.i31
  %i.ad = phi i32 [ %i.ae, %.preheader.i31 ], [ %i.ab, %bb.k ]
  %i.ae = shl i32 %i.ad, 1                        ; 4 uses
  %i.af = icmp ult i32 %i.ae, %i.aa
  br i1 %i.af, label %.preheader.i31, label %bb.l, !llvm.loop !5

bb.l:                                             ; preds = %.preheader.i31
  store i32 %i.ae, ptr %i.j, align 4, !tbaa !49
  %i.ag = load ptr, ptr %3, align 8, !tbaa !34
  %i.ah = zext i32 %i.ae to i64
  %i.ai = tail call ptr @realloc(ptr noundef %i.ag, i64 noundef %i.ah) #23 ; 3 uses
  %.not.i32 = icmp eq ptr %i.ai, null
  br i1 %.not.i32, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  store ptr %i.ai, ptr %3, align 8, !tbaa !34
  %.pre29.i = load i32, ptr %i.g, align 8, !tbaa !104
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge.i29
  %i.aj = phi i32 [ %i.z, %._crit_edge.i29 ], [ %.pre29.i, %bb.m ]
  %i.ak = phi ptr [ %.pre.i30, %._crit_edge.i29 ], [ %i.ai, %bb.m ]
  %i.al = zext i32 %i.aj to i64
  %i.am = getelementptr i8, ptr %i.ak, i64 %i.al
  store i32 %1, ptr %i.am, align 1
  %i.an = load i32, ptr %i.g, align 8, !tbaa !104
  %i.ao = icmp ult i32 %i.an, %i.aa
  br i1 %i.ao, label %bb.o, label %.thread

bb.o:                                             ; preds = %bb.n
  store i32 %i.aa, ptr %i.g, align 8, !tbaa !104
  br label %.thread

bb.p:                                             ; preds = %add_opcode.exit
  %i.ap = trunc i64 %2 to i32
  %i.aq = load i32, ptr %i.g, align 8, !tbaa !104 ; 2 uses
  %i.ar = add i32 %i.aq, 4                        ; 4 uses
  %i.as = load i32, ptr %i.j, align 4, !tbaa !49  ; 2 uses
  %i.at = icmp ult i32 %i.as, %i.ar
  br i1 %i.at, label %.preheader.i35, label %._crit_edge.i33

._crit_edge.i33:                                  ; preds = %bb.p
  %.pre.i34 = load ptr, ptr %3, align 8, !tbaa !34
  br label %bb.s

.preheader.i35:                                   ; preds = %bb.p, %.preheader.i35
  %i.au = phi i32 [ %i.av, %.preheader.i35 ], [ %i.as, %bb.p ]
  %i.av = shl i32 %i.au, 1                        ; 4 uses
  %i.aw = icmp ult i32 %i.av, %i.ar
  br i1 %i.aw, label %.preheader.i35, label %bb.q, !llvm.loop !5

bb.q:                                             ; preds = %.preheader.i35
  store i32 %i.av, ptr %i.j, align 4, !tbaa !49
  %i.ax = load ptr, ptr %3, align 8, !tbaa !34
  %i.ay = zext i32 %i.av to i64
  %i.az = tail call ptr @realloc(ptr noundef %i.ax, i64 noundef %i.ay) #23 ; 3 uses
  %.not.i36 = icmp eq ptr %i.az, null
  br i1 %.not.i36, label %add_length.exit38, label %bb.r

bb.r:                                             ; preds = %bb.q
  store ptr %i.az, ptr %3, align 8, !tbaa !34
  %.pre29.i37 = load i32, ptr %i.g, align 8, !tbaa !104
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %._crit_edge.i33
  %i.ba = phi i32 [ %i.aq, %._crit_edge.i33 ], [ %.pre29.i37, %bb.r ]
  %i.bb = phi ptr [ %.pre.i34, %._crit_edge.i33 ], [ %i.az, %bb.r ]
  %i.bc = zext i32 %i.ba to i64
  %i.bd = getelementptr i8, ptr %i.bb, i64 %i.bc
  store i32 %i.ap, ptr %i.bd, align 1
  %i.be = load i32, ptr %i.g, align 8, !tbaa !104
  %i.bf = icmp ult i32 %i.be, %i.ar
  br i1 %i.bf, label %bb.t, label %add_length.exit38

bb.t:                                             ; preds = %bb.s
  store i32 %i.ar, ptr %i.g, align 8, !tbaa !104
  br label %add_length.exit38

.thread:                                          ; preds = %bb.o, %bb.n, %bb.l, %add_opcode.exit, %add_opcode.exit, %add_opcode.exit
  %i.bg = udiv i64 %2, %i.a
  %i.bh = trunc i64 %i.bg to i32
  %i.bi = load i32, ptr %i.g, align 8, !tbaa !104 ; 2 uses
  %i.bj = add i32 %i.bi, 4                        ; 4 uses
  %i.bk = load i32, ptr %i.j, align 4, !tbaa !49  ; 2 uses
  %i.bl = icmp ult i32 %i.bk, %i.bj
  br i1 %i.bl, label %.preheader.i41, label %._crit_edge.i39

._crit_edge.i39:                                  ; preds = %.thread
  %.pre.i40 = load ptr, ptr %3, align 8, !tbaa !34
  br label %bb.w

.preheader.i41:                                   ; preds = %.thread, %.preheader.i41
  %i.bm = phi i32 [ %i.bn, %.preheader.i41 ], [ %i.bk, %.thread ]
  %i.bn = shl i32 %i.bm, 1                        ; 4 uses
  %i.bo = icmp ult i32 %i.bn, %i.bj
  br i1 %i.bo, label %.preheader.i41, label %bb.u, !llvm.loop !5

bb.u:                                             ; preds = %.preheader.i41
  store i32 %i.bn, ptr %i.j, align 4, !tbaa !49
  %i.bp = load ptr, ptr %3, align 8, !tbaa !34
  %i.bq = zext i32 %i.bn to i64
  %i.br = tail call ptr @realloc(ptr noundef %i.bp, i64 noundef %i.bq) #23 ; 3 uses
  %.not.i42 = icmp eq ptr %i.br, null
  br i1 %.not.i42, label %add_length.exit38, label %bb.v

bb.v:                                             ; preds = %bb.u
  store ptr %i.br, ptr %3, align 8, !tbaa !34
  %.pre29.i43 = load i32, ptr %i.g, align 8, !tbaa !104
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %._crit_edge.i39
  %i.bs = phi i32 [ %i.bi, %._crit_edge.i39 ], [ %.pre29.i43, %bb.v ]
  %i.bt = phi ptr [ %.pre.i40, %._crit_edge.i39 ], [ %i.br, %bb.v ]
  %i.bu = zext i32 %i.bs to i64
  %i.bv = getelementptr i8, ptr %i.bt, i64 %i.bu
  store i32 %i.bh, ptr %i.bv, align 1
  %i.bw = load i32, ptr %i.g, align 8, !tbaa !104
  %i.bx = icmp ult i32 %i.bw, %i.bj
  br i1 %i.bx, label %bb.x, label %add_length.exit38

bb.x:                                             ; preds = %bb.w
  store i32 %i.bj, ptr %i.g, align 8, !tbaa !104
  br label %add_length.exit38

add_length.exit38:                                ; preds = %bb.x, %bb.w, %bb.u, %bb.t, %bb.s, %bb.q, %add_opcode.exit
  %i.by = load i32, ptr %i.g, align 8, !tbaa !104 ; 2 uses
  %i.bz = trunc i64 %2 to i32
  %i.ca = add i32 %i.by, %i.bz                    ; 4 uses
  %i.cb = load i32, ptr %i.j, align 4, !tbaa !49  ; 2 uses
  %i.cc = icmp ult i32 %i.cb, %i.ca
  br i1 %i.cc, label %.preheader.i47, label %._crit_edge.i45

._crit_edge.i45:                                  ; preds = %add_length.exit38
  %.pre.i46 = load ptr, ptr %3, align 8, !tbaa !34
  br label %bb.aa

.preheader.i47:                                   ; preds = %add_length.exit38, %.preheader.i47
  %i.cd = phi i32 [ %i.ce, %.preheader.i47 ], [ %i.cb, %add_length.exit38 ]
  %i.ce = shl i32 %i.cd, 1                        ; 4 uses
  %i.cf = icmp ult i32 %i.ce, %i.ca
  br i1 %i.cf, label %.preheader.i47, label %bb.y, !llvm.loop !6

bb.y:                                             ; preds = %.preheader.i47
  store i32 %i.ce, ptr %i.j, align 4, !tbaa !49
  %i.cg = load ptr, ptr %3, align 8, !tbaa !34
  %i.ch = zext i32 %i.ce to i64
  %i.ci = tail call ptr @realloc(ptr noundef %i.cg, i64 noundef %i.ch) #23 ; 3 uses
  %.not.i48 = icmp eq ptr %i.ci, null
  br i1 %.not.i48, label %add_bytes.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  store ptr %i.ci, ptr %3, align 8, !tbaa !34
  %.pre30.i = load i32, ptr %i.g, align 8, !tbaa !104
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %._crit_edge.i45
  %i.cj = phi i32 [ %i.by, %._crit_edge.i45 ], [ %.pre30.i, %bb.z ]
  %i.ck = phi ptr [ %.pre.i46, %._crit_edge.i45 ], [ %i.ci, %bb.z ]
  %i.cl = zext i32 %i.cj to i64
  %i.cm = getelementptr i8, ptr %i.ck, i64 %i.cl
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.cm, ptr noundef nonnull readonly align 1 %0, i64 noundef %2, i1 noundef false) #22
  %i.cn = load i32, ptr %i.g, align 8, !tbaa !104
  %i.co = icmp ult i32 %i.cn, %i.ca
  br i1 %i.co, label %bb.ab, label %add_bytes.exit

bb.ab:                                            ; preds = %bb.aa
  store i32 %i.ca, ptr %i.g, align 8, !tbaa !104
  br label %add_bytes.exit

add_bytes.exit:                                   ; preds = %bb.y, %bb.aa, %bb.ab
  ret void
}

; Function Attrs: nounwind sspstrong memory(readwrite, target_mem: none) uwtable
define internal fastcc range(i32 -5, 1) i32 @add_bytes(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) unnamed_addr #13 !guid !388 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8          ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !104  ; 2 uses
  %i.c = trunc i64 %2 to i32
  %i.d = add i32 %i.b, %i.c                       ; 4 uses
  %i.e = getelementptr i8, ptr %0, i64 12         ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !49   ; 2 uses
  %i.g = icmp ult i32 %i.f, %i.d
  br i1 %i.g, label %.preheader, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.pre = load ptr, ptr %0, align 8, !tbaa !34
  br label %bb.d

.preheader:                                       ; preds = %bb.a, %.preheader
  %i.h = phi i32 [ %i.i, %.preheader ], [ %i.f, %bb.a ]
  %i.i = shl i32 %i.h, 1                          ; 4 uses
  %i.j = icmp ult i32 %i.i, %i.d
  br i1 %i.j, label %.preheader, label %bb.b, !llvm.loop !6

bb.b:                                             ; preds = %.preheader
  store i32 %i.i, ptr %i.e, align 4, !tbaa !49
  %i.k = load ptr, ptr %0, align 8, !tbaa !34
  %i.l = zext i32 %i.i to i64
  %i.m = tail call ptr @realloc(ptr noundef %i.k, i64 noundef %i.l) #23 ; 3 uses
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %i.m, ptr %0, align 8, !tbaa !34
  %.pre30 = load i32, ptr %i.a, align 8, !tbaa !104
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.c
  %i.n = phi i32 [ %i.b, %._crit_edge ], [ %.pre30, %bb.c ]
  %i.o = phi ptr [ %.pre, %._crit_edge ], [ %i.m, %bb.c ]
  %i.p = zext i32 %i.n to i64
  %i.q = getelementptr i8, ptr %i.o, i64 %i.p
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.q, ptr noundef nonnull align 1 %1, i64 noundef %2, i1 noundef false) #22
  %i.r = load i32, ptr %i.a, align 8, !tbaa !104
  %i.s = icmp ult i32 %i.r, %i.d
  br i1 %i.s, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  store i32 %i.d, ptr %i.a, align 8, !tbaa !104
  br label %.critedge

.critedge:                                        ; preds = %bb.e, %bb.d, %bb.b
  %i.t = phi i32 [ -5, %bb.b ], [ 0, %bb.d ], [ 0, %bb.e ]
  ret i32 %i.t
}

; Function Attrs: nounwind sspstrong memory(readwrite, target_mem: none) uwtable
define internal fastcc range(i32 -5, 1) i32 @add_multi_byte_cclass(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) unnamed_addr #13 !guid !389 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !28
  %i.c = getelementptr i8, ptr %1, i64 8          ; 7 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !104  ; 2 uses
  %i.e = add i32 %i.d, 4                          ; 5 uses
  %i.f = getelementptr i8, ptr %1, i64 12         ; 4 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !49   ; 2 uses
  %i.h = icmp ult i32 %i.g, %i.e
  br i1 %i.h, label %.preheader.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.a
  %.pre.i = load ptr, ptr %1, align 8, !tbaa !34
  br label %bb.d

.preheader.i:                                     ; preds = %bb.a, %.preheader.i
  %i.i = phi i32 [ %i.j, %.preheader.i ], [ %i.g, %bb.a ]
  %i.j = shl i32 %i.i, 1                          ; 4 uses
  %i.k = icmp ult i32 %i.j, %i.e
  br i1 %i.k, label %.preheader.i, label %bb.b, !llvm.loop !5

bb.b:                                             ; preds = %.preheader.i
  store i32 %i.j, ptr %i.f, align 4, !tbaa !49
  %i.l = load ptr, ptr %1, align 8, !tbaa !34
  %i.m = zext i32 %i.j to i64
  %i.n = tail call ptr @realloc(ptr noundef %i.l, i64 noundef %i.m) #23 ; 3 uses
  %.not.i = icmp eq ptr %i.n, null
  %.pre = load i32, ptr %i.c, align 8, !tbaa !104 ; 2 uses
  br i1 %.not.i, label %add_length.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %i.n, ptr %1, align 8, !tbaa !34
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge.i
  %i.o = phi i32 [ %i.d, %._crit_edge.i ], [ %.pre, %bb.c ]
  %i.p = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.n, %bb.c ]
  %i.q = zext i32 %i.o to i64
  %i.r = getelementptr i8, ptr %i.p, i64 %i.q
  store i32 %i.b, ptr %i.r, align 1
  %i.s = load i32, ptr %i.c, align 8, !tbaa !104  ; 2 uses
  %i.t = icmp ult i32 %i.s, %i.e
  br i1 %i.t, label %bb.e, label %add_length.exit

bb.e:                                             ; preds = %bb.d
  store i32 %i.e, ptr %i.c, align 8, !tbaa !104
  br label %add_length.exit

add_length.exit:                                  ; preds = %bb.b, %bb.d, %bb.e
  %i.u = phi i32 [ %.pre, %bb.b ], [ %i.s, %bb.d ], [ %i.e, %bb.e ] ; 2 uses
end_hunk_0
