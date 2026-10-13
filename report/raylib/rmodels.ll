Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/rmodels?download=true
inline.NumInlined: 1421
inline.NumDeleted: 227
loop-unroll.NumCompletelyUnrolled: 83
loop-unroll.NumRuntimeUnrolled: 99
loop-unroll.NumUnrolled: 188
begin_hunk_0_@cgltf_accessor_read_float:bb.a
; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc ptr @cgltf_find_sparse_index(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %bb.b, label %cgltf_buffer_view_data.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %.not10.i = icmp eq ptr %i.i, null
  br i1 %.not10.i, label %cgltf_buffer_view_data.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.k = load i64, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.k
  br label %cgltf_buffer_view_data.exit

cgltf_buffer_view_data.exit:                      ; preds = %bb.a, %bb.b, %bb.c
  %.0.i = phi ptr [ %i.e, %bb.a ], [ %i.l, %bb.c ], [ null, %bb.b ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.n = load ptr, ptr %i.m, align 8              ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  %.not.i40 = icmp eq ptr %i.p, null
  br i1 %.not.i40, label %bb.d, label %cgltf_buffer_view_data.exit43

bb.d:                                             ; preds = %cgltf_buffer_view_data.exit
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8              ; 2 uses
  %.not10.i42 = icmp eq ptr %i.t, null
  br i1 %.not10.i42, label %cgltf_buffer_view_data.exit43.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.v = load i64, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.v
  br label %cgltf_buffer_view_data.exit43

cgltf_buffer_view_data.exit43:                    ; preds = %cgltf_buffer_view_data.exit, %bb.e
  %.0.i41 = phi ptr [ %i.p, %cgltf_buffer_view_data.exit ], [ %i.w, %bb.e ]
  %i.x = icmp eq ptr %.0.i, null
  br i1 %i.x, label %cgltf_buffer_view_data.exit43.thread, label %bb.f

bb.f:                                             ; preds = %cgltf_buffer_view_data.exit43
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.i, i64 %i.z ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.i41, i64 %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.af = load i32, ptr %i.ae, align 8            ; 3 uses
  %switch.tableidx = add i32 %i.af, -1            ; 2 uses
  %i.ag = icmp ult i32 %switch.tableidx, 6
  br i1 %i.ag, label %switch.lookup, label %cgltf_component_size.exit

switch.lookup:                                    ; preds = %bb.f
  %i.ah = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.cgltf_accessor_unpack_indices.31, i64 %i.ah
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  br label %cgltf_component_size.exit

cgltf_component_size.exit:                        ; preds = %bb.f, %switch.lookup
  %.0.i44 = phi i64 [ %switch.ext, %switch.lookup ], [ 0, %bb.f ] ; 4 uses
  %i.ai = load i64, ptr %i.a, align 8             ; 6 uses
  %.not50 = icmp eq i64 %i.ai, 0
  br i1 %.not50, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %cgltf_component_size.exit
  switch i32 %i.af, label %.lr.ph.split [
    i32 4, label %cgltf_component_read_index.exit.us
    i32 5, label %cgltf_component_read_index.exit.us56
    i32 2, label %cgltf_component_read_index.exit.us64
  ]

cgltf_component_read_index.exit.us:               ; preds = %.lr.ph, %cgltf_component_read_index.exit.us
  %.03652.us = phi i64 [ %i.ak, %cgltf_component_read_index.exit.us ], [ %i.ai, %.lr.ph ] ; 2 uses
  %.03751.us = phi i64 [ %i.at, %cgltf_component_read_index.exit.us ], [ 0, %.lr.ph ] ; 2 uses
  %i.aj = and i64 %.03652.us, 1
  %i.ak = lshr i64 %.03652.us, 1                  ; 4 uses
  %i.al = add i64 %i.ak, %.03751.us
  %i.am = mul i64 %i.al, %.0.i44
  %i.an = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.am
  %i.ao = load i16, ptr %i.an, align 2
  %i.ap = zext i16 %i.ao to i64
  %i.aq = icmp ugt i64 %1, %i.ap
  %i.ar = add nuw i64 %i.ak, %i.aj
  %i.as = select i1 %i.aq, i64 %i.ar, i64 0
  %i.at = add i64 %i.as, %.03751.us               ; 2 uses
  %.not.us = icmp eq i64 %i.ak, 0
  br i1 %.not.us, label %._crit_edge, label %cgltf_component_read_index.exit.us

cgltf_component_read_index.exit.us56:             ; preds = %.lr.ph, %cgltf_component_read_index.exit.us56
  %.03652.us54 = phi i64 [ %i.av, %cgltf_component_read_index.exit.us56 ], [ %i.ai, %.lr.ph ] ; 2 uses
  %.03751.us55 = phi i64 [ %i.be, %cgltf_component_read_index.exit.us56 ], [ 0, %.lr.ph ] ; 2 uses
  %i.au = and i64 %.03652.us54, 1
  %i.av = lshr i64 %.03652.us54, 1                ; 4 uses
  %i.aw = add i64 %i.av, %.03751.us55
  %i.ax = mul i64 %i.aw, %.0.i44
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 4
  %i.ba = zext i32 %i.az to i64
  %i.bb = icmp ugt i64 %1, %i.ba
  %i.bc = add nuw i64 %i.av, %i.au
  %i.bd = select i1 %i.bb, i64 %i.bc, i64 0
  %i.be = add i64 %i.bd, %.03751.us55             ; 2 uses
  %.not.us58 = icmp eq i64 %i.av, 0
  br i1 %.not.us58, label %._crit_edge, label %cgltf_component_read_index.exit.us56

cgltf_component_read_index.exit.us64:             ; preds = %.lr.ph, %cgltf_component_read_index.exit.us64
  %.03652.us62 = phi i64 [ %i.bg, %cgltf_component_read_index.exit.us64 ], [ %i.ai, %.lr.ph ] ; 2 uses
  %.03751.us63 = phi i64 [ %i.bp, %cgltf_component_read_index.exit.us64 ], [ 0, %.lr.ph ] ; 2 uses
  %i.bf = and i64 %.03652.us62, 1
  %i.bg = lshr i64 %.03652.us62, 1                ; 4 uses
  %i.bh = add i64 %i.bg, %.03751.us63
  %i.bi = mul i64 %i.bh, %.0.i44
  %i.bj = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.bi
  %i.bk = load i8, ptr %i.bj, align 1
  %i.bl = zext i8 %i.bk to i64
  %i.bm = icmp ugt i64 %1, %i.bl
  %i.bn = add nuw i64 %i.bg, %i.bf
  %i.bo = select i1 %i.bm, i64 %i.bn, i64 0
  %i.bp = add i64 %i.bo, %.03751.us63             ; 2 uses
  %.not.us66 = icmp eq i64 %i.bg, 0
  br i1 %.not.us66, label %._crit_edge, label %cgltf_component_read_index.exit.us64

.lr.ph.split:                                     ; preds = %.lr.ph
  %.not75 = icmp eq i64 %1, 0
  br i1 %.not75, label %._crit_edge, label %cgltf_component_read_index.exit.us69

cgltf_component_read_index.exit.us69:             ; preds = %.lr.ph.split, %cgltf_component_read_index.exit.us69
  %.03652.us70 = phi i64 [ %i.br, %cgltf_component_read_index.exit.us69 ], [ %i.ai, %.lr.ph.split ] ; 2 uses
  %.03751.us71 = phi i64 [ %i.bt, %cgltf_component_read_index.exit.us69 ], [ 0, %.lr.ph.split ]
  %i.bq = and i64 %.03652.us70, 1
  %i.br = lshr i64 %.03652.us70, 1                ; 3 uses
  %i.bs = add nuw i64 %i.br, %i.bq
  %i.bt = add i64 %i.bs, %.03751.us71             ; 2 uses
  %.not.us72 = icmp eq i64 %i.br, 0
  br i1 %.not.us72, label %._crit_edge, label %cgltf_component_read_index.exit.us69

._crit_edge:                                      ; preds = %cgltf_component_read_index.exit.us64, %cgltf_component_read_index.exit.us56, %cgltf_component_read_index.exit.us, %cgltf_component_read_index.exit.us69, %.lr.ph.split, %cgltf_component_size.exit
  %.037.lcssa = phi i64 [ 0, %cgltf_component_size.exit ], [ 0, %.lr.ph.split ], [ %i.bt, %cgltf_component_read_index.exit.us69 ], [ %i.at, %cgltf_component_read_index.exit.us ], [ %i.be, %cgltf_component_read_index.exit.us56 ], [ %i.bp, %cgltf_component_read_index.exit.us64 ] ; 3 uses
  %i.bu = icmp eq i64 %.037.lcssa, %i.ai
  br i1 %i.bu, label %cgltf_buffer_view_data.exit43.thread, label %bb.g

bb.g:                                             ; preds = %._crit_edge
  %i.bv = mul i64 %.037.lcssa, %.0.i44
  %i.bw = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.bv ; 3 uses
  switch i32 %i.af, label %cgltf_component_read_index.exit47 [
    i32 4, label %bb.h
    i32 5, label %bb.i
    i32 2, label %bb.j
  ]

bb.h:                                             ; preds = %bb.g
  %i.bx = load i16, ptr %i.bw, align 2
  %i.by = zext i16 %i.bx to i64
  br label %cgltf_component_read_index.exit47

bb.i:                                             ; preds = %bb.g
  %i.bz = load i32, ptr %i.bw, align 4
  %i.ca = zext i32 %i.bz to i64
  br label %cgltf_component_read_index.exit47

bb.j:                                             ; preds = %bb.g
  %i.cb = load i8, ptr %i.bw, align 1
  %i.cc = zext i8 %i.cb to i64
  br label %cgltf_component_read_index.exit47

cgltf_component_read_index.exit47:                ; preds = %bb.g, %bb.h, %bb.i, %bb.j
  %.0.i46 = phi i64 [ %i.cc, %bb.j ], [ %i.by, %bb.h ], [ %i.ca, %bb.i ], [ 0, %bb.g ]
  %i.cd = icmp eq i64 %.0.i46, %1
  br i1 %i.cd, label %bb.k, label %cgltf_buffer_view_data.exit43.thread

bb.k:                                             ; preds = %cgltf_component_read_index.exit47
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cf = load i64, ptr %i.ce, align 8
  %i.cg = mul i64 %i.cf, %.037.lcssa
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.cg
  br label %cgltf_buffer_view_data.exit43.thread

cgltf_buffer_view_data.exit43.thread:             ; preds = %bb.d, %._crit_edge, %cgltf_component_read_index.exit47, %bb.k, %cgltf_buffer_view_data.exit43
  %.1 = phi ptr [ null, %cgltf_buffer_view_data.exit43 ], [ null, %._crit_edge ], [ %i.ch, %bb.k ], [ null, %cgltf_component_read_index.exit47 ], [ null, %bb.d ]
  ret ptr %.1
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc range(i32 0, 2) i32 @cgltf_element_read_float(ptr nofree noundef nonnull readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef writeonly captures(none) %4, i64 noundef %5) unnamed_addr #13 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 13 uses
  %i.b = ptrtoaddr ptr %4 to i64                  ; 13 uses
  switch i32 %1, label %bb.f [
    i32 2, label %cgltf_num_components.exit
    i32 3, label %bb.b
    i32 4, label %bb.c
    i32 5, label %bb.c
    i32 6, label %bb.d
    i32 7, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  br label %cgltf_num_components.exit

bb.c:                                             ; preds = %bb.a, %bb.a
  br label %cgltf_num_components.exit

bb.d:                                             ; preds = %bb.a
  br label %cgltf_num_components.exit

bb.e:                                             ; preds = %bb.a
  br label %cgltf_num_components.exit

bb.f:                                             ; preds = %bb.a
  br label %cgltf_num_components.exit

cgltf_num_components.exit:                        ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f
  %min.iters.check = phi i1 [ true, %bb.f ], [ false, %bb.e ], [ true, %bb.b ], [ true, %bb.c ], [ true, %bb.a ], [ false, %bb.d ]
  %min.iters.check685 = phi i1 [ true, %bb.f ], [ false, %bb.e ], [ true, %bb.b ], [ false, %bb.c ], [ true, %bb.a ], [ false, %bb.d ]
  %.0.i = phi i64 [ 1, %bb.f ], [ 16, %bb.e ], [ 3, %bb.b ], [ 4, %bb.c ], [ 2, %bb.a ], [ 9, %bb.d ] ; 36 uses
  %i.c = icmp ult i64 %5, %.0.i
  br i1 %i.c, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %cgltf_num_components.exit
  switch i32 %2, label %.preheader.split [
    i32 1, label %cgltf_component_size.exit
    i32 2, label %cgltf_component_size.exit
    i32 3, label %bb.v
    i32 4, label %bb.v
    i32 6, label %cgltf_component_read_float.exit226.us.preheader
    i32 5, label %.preheader.split.fold.split
  ]

cgltf_component_read_float.exit226.us.preheader:  ; preds = %bb.g
  %i.d = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.d, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %cgltf_component_read_float.exit226.us.preheader802, label %vector.ph

vector.ph:                                        ; preds = %cgltf_component_read_float.exit226.us.preheader
  %n.vec = and i64 %.0.i, 24                      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.e = shl nuw nsw i64 %index, 2
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %i.e ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %wide.load = load <4 x float>, ptr %i.f, align 4
  %wide.load681 = load <4 x float>, ptr %i.g, align 4
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store <4 x float> %wide.load, ptr %i.h, align 4
  store <4 x float> %wide.load681, ptr %i.i, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.j = icmp eq i64 %index.next, %n.vec
  br i1 %i.j, label %middle.block, label %vector.body, !llvm.loop !32

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.0.i, %n.vec
  br i1 %cmp.n, label %.loopexit, label %cgltf_component_read_float.exit226.us.preheader802

cgltf_component_read_float.exit226.us.preheader802: ; preds = %cgltf_component_read_float.exit226.us.preheader, %middle.block
  %.0628.us.ph = phi i64 [ 0, %cgltf_component_read_float.exit226.us.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %.0.i, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %cgltf_component_read_float.exit226.us.prol.loopexit, label %cgltf_component_read_float.exit226.us.prol

cgltf_component_read_float.exit226.us.prol:       ; preds = %cgltf_component_read_float.exit226.us.preheader802, %cgltf_component_read_float.exit226.us.prol
  %.0628.us.prol = phi i64 [ %i.o, %cgltf_component_read_float.exit226.us.prol ], [ %.0628.us.ph, %cgltf_component_read_float.exit226.us.preheader802 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %cgltf_component_read_float.exit226.us.prol ], [ 0, %cgltf_component_read_float.exit226.us.preheader802 ]
  %i.k = shl nuw nsw i64 %.0628.us.prol, 2
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %i.k
  %i.m = load float, ptr %i.l, align 4
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.0628.us.prol
  store float %i.m, ptr %i.n, align 4
  %i.o = add nuw nsw i64 %.0628.us.prol, 1        ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %cgltf_component_read_float.exit226.us.prol.loopexit, label %cgltf_component_read_float.exit226.us.prol, !llvm.loop !33

cgltf_component_read_float.exit226.us.prol.loopexit: ; preds = %cgltf_component_read_float.exit226.us.prol, %cgltf_component_read_float.exit226.us.preheader802
  %.0628.us.unr = phi i64 [ %.0628.us.ph, %cgltf_component_read_float.exit226.us.preheader802 ], [ %i.o, %cgltf_component_read_float.exit226.us.prol ]
  %i.p = sub nsw i64 %.0628.us.ph, %.0.i
  %i.q = icmp ugt i64 %i.p, -4
  br i1 %i.q, label %.loopexit, label %cgltf_component_read_float.exit226.us

cgltf_component_size.exit:                        ; preds = %bb.g, %bb.g
  switch i32 %1, label %.preheader.split [
    i32 5, label %bb.h
    i32 6, label %bb.o
  ]

bb.h:                                             ; preds = %cgltf_component_size.exit
  %.not.i = icmp eq i32 %3, 0
  %i.r = icmp eq i32 %2, 2                        ; 2 uses
  %i.s = load i8, ptr %0, align 1                 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 5 ; 4 uses
  br i1 %.not.i, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  br i1 %i.r, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.y = sitofp i8 %i.s to float
  %i.z = fdiv float %i.y, 1.270000e+02
  store float %i.z, ptr %4, align 4
  %i.aa = load i8, ptr %i.t, align 1
  %i.ab = sitofp i8 %i.aa to float
  %i.ac = fdiv float %i.ab, 1.270000e+02
  store float %i.ac, ptr %i.u, align 4
  %i.ad = load i8, ptr %i.v, align 1
  %i.ae = sitofp i8 %i.ad to float
  %i.af = fdiv float %i.ae, 1.270000e+02
  store float %i.af, ptr %i.w, align 4
  %i.ag = load i8, ptr %i.x, align 1
  %i.ah = sitofp i8 %i.ag to float
  %i.ai = fdiv float %i.ah, 1.270000e+02
  br label %cgltf_component_read_float.exit131

bb.k:                                             ; preds = %bb.h
  br i1 %i.r, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aj = sitofp i8 %i.s to float
  store float %i.aj, ptr %4, align 4
  %i.ak = load i8, ptr %i.t, align 1
  %i.al = sitofp i8 %i.ak to float
  store float %i.al, ptr %i.u, align 4
  %i.am = load i8, ptr %i.v, align 1
  %i.an = sitofp i8 %i.am to float
  store float %i.an, ptr %i.w, align 4
  %i.ao = load i8, ptr %i.x, align 1
  %i.ap = sext i8 %i.ao to i64
  br label %cgltf_component_read_integer.exit.i129

bb.m:                                             ; preds = %bb.i
  %i.aq = uitofp i8 %i.s to float
  %i.ar = fdiv float %i.aq, 2.550000e+02
  store float %i.ar, ptr %4, align 4
  %i.as = load i8, ptr %i.t, align 1
  %i.at = uitofp i8 %i.as to float
  %i.au = fdiv float %i.at, 2.550000e+02
  store float %i.au, ptr %i.u, align 4
  %i.av = load i8, ptr %i.v, align 1
  %i.aw = uitofp i8 %i.av to float
  %i.ax = fdiv float %i.aw, 2.550000e+02
  store float %i.ax, ptr %i.w, align 4
  %i.ay = load i8, ptr %i.x, align 1
  %i.az = uitofp i8 %i.ay to float
  %i.ba = fdiv float %i.az, 2.550000e+02
  br label %cgltf_component_read_float.exit131

bb.n:                                             ; preds = %bb.k
  %i.bb = uitofp i8 %i.s to float
  store float %i.bb, ptr %4, align 4
  %i.bc = load i8, ptr %i.t, align 1
  %i.bd = uitofp i8 %i.bc to float
  store float %i.bd, ptr %i.u, align 4
  %i.be = load i8, ptr %i.v, align 1
  %i.bf = uitofp i8 %i.be to float
  store float %i.bf, ptr %i.w, align 4
  %i.bg = load i8, ptr %i.x, align 1
  %i.bh = zext i8 %i.bg to i64
  br label %cgltf_component_read_integer.exit.i129

cgltf_component_read_integer.exit.i129:           ; preds = %bb.n, %bb.l
  %.0.i.i130 = phi i64 [ %i.bh, %bb.n ], [ %i.ap, %bb.l ]
  %i.bi = sitofp i64 %.0.i.i130 to float
  br label %cgltf_component_read_float.exit131

cgltf_component_read_float.exit131:               ; preds = %bb.j, %bb.m, %cgltf_component_read_integer.exit.i129
  %.0.i128 = phi float [ %i.ba, %bb.m ], [ %i.bi, %cgltf_component_read_integer.exit.i129 ], [ %i.ai, %bb.j ]
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 12
  store float %.0.i128, ptr %i.bj, align 4
  br label %.loopexit

bb.o:                                             ; preds = %cgltf_component_size.exit
  %.not.i132 = icmp eq i32 %3, 0
  %i.bk = icmp eq i32 %2, 2                       ; 2 uses
  %i.bl = load i8, ptr %0, align 1                ; 6 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 6 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 6 uses
  %i.br = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 5 ; 6 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 6 ; 4 uses
  br i1 %.not.i132, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  br i1 %i.bk, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bv = add i64 %i.b, 32
  %i.bw = add i64 %i.a, 1
  %i.bx = add i64 %i.a, 11
  %rt.bound0769 = icmp ugt i64 %i.bx, %i.b
  %rt.bound1770 = icmp ult i64 %i.bw, %i.bv
  %rt.conflict771 = and i1 %rt.bound0769, %rt.bound1770
  br i1 %rt.conflict771, label %.rtscalar767, label %.rtvec766, !prof !14

bb.r:                                             ; preds = %bb.o
  %i.by = getelementptr inbounds nuw i8, ptr %4, i64 20 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 2 uses
  br i1 %i.bk, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cc = sitofp i8 %i.bl to float
  store float %i.cc, ptr %4, align 4
  %i.cd = load i8, ptr %i.bm, align 1
  %i.ce = sitofp i8 %i.cd to float
  store float %i.ce, ptr %i.bn, align 4
  %i.cf = load i8, ptr %i.bo, align 1
  %i.cg = sitofp i8 %i.cf to float
  store float %i.cg, ptr %i.bp, align 4
  %i.ch = load i8, ptr %i.bq, align 1
  %i.ci = sitofp i8 %i.ch to float
  store float %i.ci, ptr %i.br, align 4
  %i.cj = load i8, ptr %i.bs, align 1
  %i.ck = sitofp i8 %i.cj to float
  store float %i.ck, ptr %i.bt, align 4
  %i.cl = load i8, ptr %i.bu, align 1
  %i.cm = sitofp i8 %i.cl to float
  store float %i.cm, ptr %i.by, align 4
  %i.cn = load i8, ptr %i.bz, align 1
  %i.co = sitofp i8 %i.cn to float
end_hunk_0
