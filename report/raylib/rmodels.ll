Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/rmodels?download=true
inline.NumInlined: 1421
inline.NumDeleted: 227
loop-unroll.NumCompletelyUnrolled: 83
loop-unroll.NumRuntimeUnrolled: 98
loop-unroll.NumUnrolled: 187
begin_hunk_0_@cgltf_element_read_float:bb.a
  %i.ow = uitofp i16 %i.ov to float
  %i.ox = fdiv float %i.ow, 6.553500e+04
  store float %i.ox, ptr %i.nd, align 4
  %i.oy = load i16, ptr %i.ne, align 2
  %i.oz = uitofp i16 %i.oy to float
  %i.pa = fdiv float %i.oz, 6.553500e+04
  store float %i.pa, ptr %i.nf, align 4
  %i.pb = load i16, ptr %i.ng, align 2
  %i.pc = uitofp i16 %i.pb to float
  %i.pd = fdiv float %i.pc, 6.553500e+04
  %i.pe = getelementptr inbounds nuw i8, ptr %4, i64 20
  store float %i.pd, ptr %i.pe, align 4
  %i.pf = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.pg = load i16, ptr %i.pf, align 2
  %i.ph = uitofp i16 %i.pg to float
  %i.pi = fdiv float %i.ph, 6.553500e+04
  %i.pj = getelementptr inbounds nuw i8, ptr %4, i64 24
  store float %i.pi, ptr %i.pj, align 4
  %i.pk = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.pl = load i16, ptr %i.pk, align 2
  %i.pm = uitofp i16 %i.pl to float
  %i.pn = fdiv float %i.pm, 6.553500e+04
  %i.po = getelementptr inbounds nuw i8, ptr %4, i64 28
  store float %i.pn, ptr %i.po, align 4
  %i.pp = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.pq = load i16, ptr %i.pp, align 2
  %i.pr = uitofp i16 %i.pq to float
  %i.ps = fdiv float %i.pr, 6.553500e+04
  br label %cgltf_component_read_float.exit221

bb.ad:                                            ; preds = %bb.ab
  %i.pt = getelementptr inbounds nuw i8, ptr %4, i64 20 ; 2 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.pw = getelementptr inbounds nuw i8, ptr %0, i64 18 ; 2 uses
  br i1 %i.mw, label %.thread447, label %.thread449

.thread447:                                       ; preds = %bb.ad
  %i.px = sitofp i16 %i.mx to float
  store float %i.px, ptr %4, align 4
  %i.py = load i16, ptr %i.my, align 2
  %i.pz = sitofp i16 %i.py to float
  store float %i.pz, ptr %i.mz, align 4
  %i.qa = load i16, ptr %i.na, align 2
  %i.qb = sitofp i16 %i.qa to float
  store float %i.qb, ptr %i.nb, align 4
  %i.qc = load i16, ptr %i.nc, align 2
  %i.qd = sitofp i16 %i.qc to float
  store float %i.qd, ptr %i.nd, align 4
  %i.qe = load i16, ptr %i.ne, align 2
  %i.qf = sitofp i16 %i.qe to float
  store float %i.qf, ptr %i.nf, align 4
  %i.qg = load i16, ptr %i.ng, align 2
  %i.qh = sitofp i16 %i.qg to float
  store float %i.qh, ptr %i.pt, align 4
  %i.qi = load i16, ptr %i.pu, align 2
  %i.qj = sitofp i16 %i.qi to float
  store float %i.qj, ptr %i.pv, align 4
  %i.qk = load i16, ptr %i.pw, align 2
  %i.ql = sitofp i16 %i.qk to float
  %i.qm = getelementptr inbounds nuw i8, ptr %4, i64 28
  store float %i.ql, ptr %i.qm, align 4
  %i.qn = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.qo = load i16, ptr %i.qn, align 2
  %i.qp = sext i16 %i.qo to i64
  br label %cgltf_component_read_integer.exit.i219

.thread449:                                       ; preds = %bb.ad
  %i.qq = uitofp i16 %i.mx to float
  store float %i.qq, ptr %4, align 4
  %i.qr = load i16, ptr %i.my, align 2
  %i.qs = uitofp i16 %i.qr to float
  store float %i.qs, ptr %i.mz, align 4
  %i.qt = load i16, ptr %i.na, align 2
  %i.qu = uitofp i16 %i.qt to float
  store float %i.qu, ptr %i.nb, align 4
  %i.qv = load i16, ptr %i.nc, align 2
  %i.qw = uitofp i16 %i.qv to float
  store float %i.qw, ptr %i.nd, align 4
  %i.qx = load i16, ptr %i.ne, align 2
  %i.qy = uitofp i16 %i.qx to float
  store float %i.qy, ptr %i.nf, align 4
  %i.qz = load i16, ptr %i.ng, align 2
  %i.ra = uitofp i16 %i.qz to float
  store float %i.ra, ptr %i.pt, align 4
  %i.rb = load i16, ptr %i.pu, align 2
  %i.rc = uitofp i16 %i.rb to float
  store float %i.rc, ptr %i.pv, align 4
  %i.rd = load i16, ptr %i.pw, align 2
  %i.re = uitofp i16 %i.rd to float
  %i.rf = getelementptr inbounds nuw i8, ptr %4, i64 28
  store float %i.re, ptr %i.rf, align 4
  %i.rg = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.rh = load i16, ptr %i.rg, align 2
  %i.ri = zext i16 %i.rh to i64
  br label %cgltf_component_read_integer.exit.i219

cgltf_component_read_integer.exit.i219:           ; preds = %.thread449, %.thread447
  %.0.i.i220 = phi i64 [ %i.ri, %.thread449 ], [ %i.qp, %.thread447 ]
  %i.rj = sitofp i64 %.0.i.i220 to float
  br label %cgltf_component_read_float.exit221

cgltf_component_read_float.exit221:               ; preds = %.thread439, %.thread441, %cgltf_component_read_integer.exit.i219
  %.0.i218 = phi float [ %i.ps, %.thread441 ], [ %i.rj, %cgltf_component_read_integer.exit.i219 ], [ %i.om, %.thread439 ]
  %i.rk = getelementptr inbounds nuw i8, ptr %4, i64 32
  store float %.0.i218, ptr %i.rk, align 4
  br label %.loopexit

.loopexit:                                        ; preds = %cgltf_component_read_float.exit226.us.prol.loopexit, %cgltf_component_read_float.exit226.us, %cgltf_component_read_float.exit226.us645.prol.loopexit, %cgltf_component_read_float.exit226.us645, %cgltf_component_read_float.exit226.us641.prol.loopexit, %cgltf_component_read_float.exit226.us641, %cgltf_component_read_float.exit226.us637.prol.loopexit, %cgltf_component_read_float.exit226.us637, %cgltf_component_read_float.exit226.us633.prol.loopexit, %cgltf_component_read_float.exit226.us633, %cgltf_component_read_integer.exit.i224.us, %middle.block, %middle.block692, %middle.block711, %middle.block729, %middle.block747, %cgltf_component_read_float.exit226.preheader, %cgltf_component_read_float.exit131, %cgltf_component_read_float.exit176, %cgltf_component_read_float.exit221, %cgltf_num_components.exit
  %.1 = phi i32 [ 0, %cgltf_num_components.exit ], [ 1, %cgltf_component_read_float.exit131 ], [ 1, %cgltf_component_read_float.exit221 ], [ 1, %cgltf_component_read_float.exit176 ], [ 1, %middle.block692 ], [ 1, %middle.block ], [ 1, %middle.block711 ], [ 1, %middle.block747 ], [ 1, %middle.block729 ], [ 1, %cgltf_component_read_float.exit226.preheader ], [ 1, %cgltf_component_read_float.exit226.us645.prol.loopexit ], [ 1, %cgltf_component_read_integer.exit.i224.us ], [ 1, %cgltf_component_read_float.exit226.us633.prol.loopexit ], [ 1, %cgltf_component_read_float.exit226.us637.prol.loopexit ], [ 1, %cgltf_component_read_float.exit226.us641.prol.loopexit ], [ 1, %cgltf_component_read_float.exit226.us633 ], [ 1, %cgltf_component_read_float.exit226.us637 ], [ 1, %cgltf_component_read_float.exit226.us641 ], [ 1, %cgltf_component_read_float.exit226.us645 ], [ 1, %cgltf_component_read_float.exit226.us ], [ 1, %cgltf_component_read_float.exit226.us.prol.loopexit ]
  ret i32 %.1
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden i64 @cgltf_accessor_unpack_floats(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(address_is_null) %1, i64 noundef %2) local_unnamed_addr #22 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8
  %switch.tableidx = add i32 %i.b, -2             ; 2 uses
  %i.c = icmp ult i32 %switch.tableidx, 6
  br i1 %i.c, label %switch.lookup, label %cgltf_num_components.exit

switch.lookup:                                    ; preds = %bb.a
  %i.d = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.cgltf_accessor_unpack_indices, i64 %i.d
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  br label %cgltf_num_components.exit

cgltf_num_components.exit:                        ; preds = %bb.a, %switch.lookup
  %.0.i = phi i64 [ %switch.ext, %switch.lookup ], [ 1, %bb.a ] ; 10 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load i64, ptr %i.e, align 8
  %i.g = mul i64 %i.f, %.0.i                      ; 2 uses
  %i.h = icmp eq ptr %1, null
  br i1 %i.h, label %.critedge, label %bb.b

bb.b:                                             ; preds = %cgltf_num_components.exit
  %i.i = tail call i64 @llvm.umin.i64(i64 %i.g, i64 %2) ; 2 uses
  %i.j = udiv i64 %i.i, %.0.i                     ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.l = load ptr, ptr %i.k, align 8              ; 4 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = shl nuw nsw i64 %.0.i, 2
  %i.o = mul i64 %i.n, %i.j
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %1, i8 0, i64 %i.o, i1 false)
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.q, null
  br i1 %.not.i, label %bb.e, label %cgltf_buffer_view_data.exit.thread118

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load ptr, ptr %i.t, align 8              ; 2 uses
  %.not10.i = icmp eq ptr %i.u, null
  br i1 %.not10.i, label %.critedge, label %cgltf_buffer_view_data.exit

cgltf_buffer_view_data.exit:                      ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.w = load i64, ptr %i.v, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.w
  br label %cgltf_buffer_view_data.exit.thread118

cgltf_buffer_view_data.exit.thread118:            ; preds = %cgltf_buffer_view_data.exit, %bb.d
  %.0.i106120 = phi ptr [ %i.x, %cgltf_buffer_view_data.exit ], [ %i.q, %bb.d ]
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.i106120, i64 %i.z ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 8
  %i.ad = icmp eq i32 %i.ac, 6
  br i1 %i.ad, label %bb.f, label %bb.h

bb.f:                                             ; preds = %cgltf_buffer_view_data.exit.thread118
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.af = load i64, ptr %i.ae, align 8            ; 2 uses
  %i.ag = shl nuw nsw i64 %.0.i, 2
  %i.ah = icmp eq i64 %i.af, %i.ag
  br i1 %i.ah, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ai = mul i64 %i.af, %i.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %1, ptr nonnull align 1 %i.aa, i64 %i.ai, i1 false)
  br label %.loopexit

bb.h:                                             ; preds = %bb.f, %cgltf_buffer_view_data.exit.thread118
  %.not100128.not = icmp ugt i64 %.0.i, %i.i
  br i1 %.not100128.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.j
  %.086131 = phi i64 [ 0, %.lr.ph ], [ %i.ap, %bb.j ]
  %.087130 = phi ptr [ %1, %.lr.ph ], [ %i.aq, %bb.j ] ; 2 uses
  %.088129 = phi ptr [ %i.aa, %.lr.ph ], [ %i.as, %bb.j ] ; 2 uses
  %i.al = load i32, ptr %i.a, align 8
  %i.am = load i32, ptr %i.ab, align 8
  %i.an = load i32, ptr %i.aj, align 4
  %i.ao = tail call fastcc i32 @cgltf_element_read_float(ptr noundef %.088129, i32 noundef %i.al, i32 noundef %i.am, i32 noundef %i.an, ptr noundef nonnull %.087130, i64 noundef %.0.i)
  %.not = icmp eq i32 %i.ao, 0
  br i1 %.not, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ap = add nuw i64 %.086131, 1                 ; 2 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %.087130, i64 %.0.i
  %i.ar = load i64, ptr %i.ak, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %.088129, i64 %i.ar
  %exitcond.not = icmp eq i64 %i.ap, %i.j
  br i1 %exitcond.not, label %.loopexit, label %bb.i

.loopexit:                                        ; preds = %bb.j, %bb.h, %bb.g, %bb.c
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.au = load i32, ptr %i.at, align 8
  %.not101 = icmp eq i32 %i.au, 0
  br i1 %.not101, label %.critedge105, label %bb.k

bb.k:                                             ; preds = %.loopexit
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ax = load ptr, ptr %i.aw, align 8            ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 48
  %i.az = load ptr, ptr %i.ay, align 8            ; 2 uses
  %.not.i107 = icmp eq ptr %i.az, null
  br i1 %.not.i107, label %bb.l, label %cgltf_buffer_view_data.exit110

bb.l:                                             ; preds = %bb.k
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8            ; 2 uses
  %.not10.i109 = icmp eq ptr %i.bd, null
  br i1 %.not10.i109, label %cgltf_buffer_view_data.exit110, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.be = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.bf = load i64, ptr %i.be, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.bf
  br label %cgltf_buffer_view_data.exit110

cgltf_buffer_view_data.exit110:                   ; preds = %bb.k, %bb.l, %bb.m
  %.0.i108 = phi ptr [ %i.az, %bb.k ], [ %i.bg, %bb.m ], [ null, %bb.l ] ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.bi = load ptr, ptr %i.bh, align 8            ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 48
  %i.bk = load ptr, ptr %i.bj, align 8            ; 2 uses
  %.not.i111 = icmp eq ptr %i.bk, null
  br i1 %.not.i111, label %bb.n, label %cgltf_buffer_view_data.exit114

bb.n:                                             ; preds = %cgltf_buffer_view_data.exit110
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8            ; 2 uses
  %.not10.i113 = icmp eq ptr %i.bo, null
  br i1 %.not10.i113, label %.critedge, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bq = load i64, ptr %i.bp, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bq
  br label %cgltf_buffer_view_data.exit114

cgltf_buffer_view_data.exit114:                   ; preds = %cgltf_buffer_view_data.exit110, %bb.o
  %.0.i112 = phi ptr [ %i.bk, %cgltf_buffer_view_data.exit110 ], [ %i.br, %bb.o ]
  %i.bs = icmp eq ptr %.0.i108, null
  br i1 %i.bs, label %.critedge, label %bb.p

bb.p:                                             ; preds = %cgltf_buffer_view_data.exit114
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.bu = load i64, ptr %i.bt, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %.0.i108, i64 %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.bx = load i64, ptr %i.bw, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %.0.i112, i64 %i.bx
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 8
  %switch.tableidx150 = add i32 %i.ca, -1         ; 2 uses
  %i.cb = icmp ult i32 %switch.tableidx150, 6
  br i1 %i.cb, label %switch.lookup151, label %cgltf_component_size.exit

switch.lookup151:                                 ; preds = %bb.p
  %i.cc = zext nneg i32 %switch.tableidx150 to i64
  %switch.gep152 = getelementptr inbounds nuw i8, ptr @switch.table.cgltf_accessor_unpack_indices.31, i64 %i.cc
  %switch.load153 = load i8, ptr %switch.gep152, align 1
  %switch.ext154 = zext i8 %switch.load153 to i64
  br label %cgltf_component_size.exit

cgltf_component_size.exit:                        ; preds = %bb.p, %switch.lookup151
  %.0.i115 = phi i64 [ %switch.ext154, %switch.lookup151 ], [ 0, %bb.p ]
  %i.cd = load i64, ptr %i.av, align 8
  %.not103.not132.not = icmp eq i64 %i.cd, 0
  br i1 %.not103.not132.not, label %.critedge105, label %.lr.ph136

.lr.ph136:                                        ; preds = %cgltf_component_size.exit
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph136, %bb.u
  %.0135 = phi i64 [ 0, %.lr.ph136 ], [ %i.cu, %bb.u ]
  %.084134 = phi ptr [ %i.by, %.lr.ph136 ], [ %i.cx, %bb.u ] ; 2 uses
  %.085133 = phi ptr [ %i.bv, %.lr.ph136 ], [ %i.cv, %bb.u ] ; 4 uses
  %i.ch = load i32, ptr %i.bz, align 8
  switch i32 %i.ch, label %cgltf_component_read_index.exit [
    i32 4, label %bb.r
    i32 5, label %bb.s
    i32 2, label %bb.t
  ]

bb.r:                                             ; preds = %bb.q
  %i.ci = load i16, ptr %.085133, align 2
  %i.cj = zext i16 %i.ci to i64
  br label %cgltf_component_read_index.exit

bb.s:                                             ; preds = %bb.q
  %i.ck = load i32, ptr %.085133, align 4
  %i.cl = zext i32 %i.ck to i64
  br label %cgltf_component_read_index.exit

bb.t:                                             ; preds = %bb.q
  %i.cm = load i8, ptr %.085133, align 1
  %i.cn = zext i8 %i.cm to i64
  br label %cgltf_component_read_index.exit

cgltf_component_read_index.exit:                  ; preds = %bb.q, %bb.r, %bb.s, %bb.t
  %.0.i116 = phi i64 [ %i.cn, %bb.t ], [ %i.cj, %bb.r ], [ %i.cl, %bb.s ], [ 0, %bb.q ]
  %i.co = mul nuw nsw i64 %.0.i116, %.0.i
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.co
  %i.cq = load i32, ptr %i.a, align 8
  %i.cr = load i32, ptr %i.ce, align 8
  %i.cs = load i32, ptr %i.cf, align 4
  %i.ct = tail call fastcc i32 @cgltf_element_read_float(ptr noundef %.084134, i32 noundef %i.cq, i32 noundef %i.cr, i32 noundef %i.cs, ptr noundef nonnull %i.cp, i64 noundef %.0.i)
  %.not102.not = icmp eq i32 %i.ct, 0
  br i1 %.not102.not, label %.critedge, label %bb.u

bb.u:                                             ; preds = %cgltf_component_read_index.exit
  %i.cu = add nuw i64 %.0135, 1                   ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.085133, i64 %.0.i115
  %i.cw = load i64, ptr %i.cg, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %.084134, i64 %i.cw
  %i.cy = load i64, ptr %i.av, align 8
  %.not103.not = icmp ult i64 %i.cu, %i.cy
  br i1 %.not103.not, label %bb.q, label %.critedge105

.critedge105:                                     ; preds = %bb.u, %cgltf_component_size.exit, %.loopexit
  %i.cz = mul i64 %i.j, %.0.i
  br label %.critedge

.critedge:                                        ; preds = %bb.i, %cgltf_component_read_index.exit, %bb.n, %bb.e, %.critedge105, %cgltf_buffer_view_data.exit114, %cgltf_num_components.exit
  %.9 = phi i64 [ %i.g, %cgltf_num_components.exit ], [ %i.cz, %.critedge105 ], [ 0, %cgltf_component_read_index.exit ], [ 0, %bb.e ], [ 0, %cgltf_buffer_view_data.exit114 ], [ 0, %bb.n ], [ 0, %bb.i ]
  ret i64 %.9
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden range(i64 1, 17) i64 @cgltf_num_components(i32 noundef %0) local_unnamed_addr #15 {
bb.a:
  %switch.tableidx = add i32 %0, -2               ; 2 uses
  %i.a = icmp ult i32 %switch.tableidx, 6
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.cgltf_accessor_unpack_indices, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.0 = phi i64 [ %switch.ext, %switch.lookup ], [ 1, %bb.a ]
  ret i64 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden range(i32 0, 2) i32 @cgltf_accessor_read_uint(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) local_unnamed_addr #22 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.b = load i32, ptr %i.a, align 8
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc ptr @cgltf_find_sparse_index(ptr noundef nonnull %0, i64 noundef %1) ; 2 uses
  %.not28.not = icmp eq ptr %i.c, null
  br i1 %.not28.not, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i32, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i32, ptr %i.f, align 8
  %i.h = tail call fastcc i32 @cgltf_element_read_uint(ptr noundef %i.c, i32 noundef %i.e, i32 noundef %i.g, ptr noundef %2, i64 noundef %3)
  br label %cgltf_buffer_view_data.exit.thread

.thread:                                          ; preds = %bb.b, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = load ptr, ptr %i.i, align 8              ; 4 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.thread
  %i.l = shl i64 %3, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %2, i8 0, i64 %i.l, i1 false)
  br label %cgltf_buffer_view_data.exit.thread

bb.e:                                             ; preds = %.thread
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
end_hunk_0
begin_hunk_1_@_m3dstbi__png_load:bb.a
  %or.cond.i.i = select i1 %i.lu, i1 true, i1 %i.lv
  br i1 %or.cond.i.i, label %bb.bc, label %_m3dstbi__parse_png_file.exit.thread.sink.split.i

bb.bc:                                            ; preds = %bb.bb
  %i.lw = add i32 %i.de, %.0214.i.i               ; 4 uses
  %i.lx = icmp slt i32 %i.lw, %.0214.i.i
  br i1 %i.lx, label %_m3dstbi__parse_png_file.exit.thread.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.ly = icmp ugt i32 %i.lw, %.0210.i.i
  br i1 %i.ly, label %bb.be, label %bb.bi

bb.be:                                            ; preds = %bb.bd
  %i.lz = icmp eq i32 %.0210.i.i, 0
  %i.ma = tail call i32 @llvm.umax.i32(i32 %i.de, i32 4096)
  %.1211.i.i = select i1 %i.lz, i32 %i.ma, i32 %.0210.i.i
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bf, %bb.be
  %.2212.i.i = phi i32 [ %.1211.i.i, %bb.be ], [ %i.mc, %bb.bf ] ; 4 uses
  %i.mb = icmp ugt i32 %i.lw, %.2212.i.i
  %i.mc = shl nuw i32 %.2212.i.i, 1
  br i1 %i.mb, label %bb.bf, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.md = zext i32 %.2212.i.i to i64
  %i.me = tail call ptr @realloc(ptr noundef %i.aw, i64 noundef %i.md) #52 ; 3 uses
  %.not248.i.i = icmp eq ptr %i.me, null
  br i1 %.not248.i.i, label %_m3dstbi__parse_png_file.exit.thread.sink.split.i, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  store ptr %i.me, ptr %i.f, align 8
  %.pre.i.i = load ptr, ptr %i.h, align 8
  %.pre787.i.i = load ptr, ptr %i.i, align 8
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bd
  %i.mf = phi ptr [ %i.me, %bb.bh ], [ %i.aw, %bb.bd ] ; 2 uses
  %i.mg = phi ptr [ %.pre787.i.i, %bb.bh ], [ %i.ax, %bb.bd ]
  %i.mh = phi ptr [ %.pre.i.i, %bb.bh ], [ %i.dc, %bb.bd ] ; 2 uses
  %.3213.i.i = phi i32 [ %.2212.i.i, %bb.bh ], [ %.0210.i.i, %bb.bd ]
  %i.mi = sext i32 %i.de to i64                   ; 3 uses
  %i.mj = getelementptr inbounds i8, ptr %i.mh, i64 %i.mi
  %.not.i.i.i = icmp ugt ptr %i.mj, %i.mg
  br i1 %.not.i.i.i, label %_m3dstbi__parse_png_file.exit.thread.sink.split.i, label %_m3dstbi__getn.exit.i.i

_m3dstbi__getn.exit.i.i:                          ; preds = %bb.bi
  %i.mk = zext nneg i32 %.0214.i.i to i64
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mf, i64 %i.mk
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ml, ptr align 1 %i.mh, i64 %i.mi, i1 false)
  %i.mm = load ptr, ptr %i.h, align 8
  %i.mn = getelementptr inbounds i8, ptr %i.mm, i64 %i.mi ; 3 uses
  store ptr %i.mn, ptr %i.h, align 8
  %.pre788.i.i = load ptr, ptr %i.i, align 8      ; 2 uses
  br label %_m3dstbi__skip.exit.i.i

bb.bj:                                            ; preds = %_m3dstbi__get_chunk_header.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #54
  %.not240.i.i = icmp ne i32 %.0201.i.i, 0
  %i.mo = icmp eq ptr %i.aw, null
  %or.cond33 = select i1 %.not240.i.i, i1 true, i1 %i.mo
  br i1 %or.cond33, label %_m3dstbi__parse_png_file.exit.thread51.i, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.mp = load i32, ptr %0, align 8
  %i.mq = mul i32 %i.av, %i.mp
  %i.mr = add i32 %i.mq, 7
  %i.ms = lshr i32 %i.mr, 3
  %i.mt = load i32, ptr %i.ao, align 4            ; 2 uses
  %i.mu = load i32, ptr %i.am, align 8
  %i.mv = mul i32 %i.mu, %i.mt
  %i.mw = mul i32 %i.mv, %i.ms
  %i.mx = add i32 %i.mw, %i.mt                    ; 2 uses
  store i32 %i.mx, ptr %i.d, align 4
  %i.my = call ptr @_m3dstbi_zlib_decode_malloc_guesssize_headerflag(ptr noundef nonnull %i.aw, i32 noundef %.0214.i.i, i32 noundef %i.mx, ptr noundef nonnull %i.d, i32 noundef 1) ; 4 uses
  store ptr %i.my, ptr %i.e, align 8
  %i.mz = icmp eq ptr %i.my, null
  br i1 %i.mz, label %_m3dstbi__parse_png_file.exit.thread51.i, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  call void @free(ptr noundef nonnull %i.aw) #54
  store ptr null, ptr %i.f, align 8
  %i.na = load i32, ptr %i.am, align 8            ; 2 uses
  %i.nb = add nsw i32 %i.na, 1                    ; 2 uses
  %i.nc = icmp eq i32 %i.nb, 0
  %i.nd = icmp eq i8 %.0220.i.i, 0                ; 3 uses
  %or.cond7.not243.i.i = select i1 %i.nc, i1 %i.nd, i1 false
  %i.ne = icmp ne i8 %.0217.i.i, 0
  %or.cond10.i.i = select i1 %or.cond7.not243.i.i, i1 true, i1 %i.ne
  %spec.select1067.i.i = select i1 %or.cond10.i.i, i32 %i.nb, i32 %i.na ; 4 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  store i32 %spec.select1067.i.i, ptr %i.nf, align 4
  %i.ng = load i32, ptr %i.d, align 4             ; 2 uses
  %i.nh = icmp eq i32 %i.av, 16
  %i.ni = zext i1 %i.nh to i32
  %i.nj = shl i32 %spec.select1067.i.i, %i.ni     ; 6 uses
  %.not.i309.i.i = icmp eq i32 %.0195.i.i, 0
  %i.nk = load i32, ptr %0, align 8               ; 4 uses
  %i.nl = load i32, ptr %i.ao, align 4            ; 5 uses
  br i1 %.not.i309.i.i, label %_m3dstbi__create_png_image.exit.i.i, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.nm = or i32 %i.nl, %i.nk
  %or.cond.not.i.i.i.i.i.i = icmp sgt i32 %i.nm, -1
  br i1 %or.cond.not.i.i.i.i.i.i, label %bb.bn, label %_m3dstbi__malloc_mad3.exit.i.i.i

bb.bn:                                            ; preds = %bb.bm
  %i.nn = icmp eq i32 %i.nl, 0
  br i1 %i.nn, label %_m3dstbi__mul2sizes_valid.exit.thread15.i.i.i.i.i, label %_m3dstbi__mul2sizes_valid.exit.i.i.i.i.i

_m3dstbi__mul2sizes_valid.exit.i.i.i.i.i:         ; preds = %bb.bn
  %i.no = udiv i32 2147483647, %i.nl
  %.not23.i.i.i.i.i = icmp sgt i32 %i.nk, %i.no
  br i1 %.not23.i.i.i.i.i, label %_m3dstbi__malloc_mad3.exit.i.i.i, label %_m3dstbi__mul2sizes_valid.exit.thread15.i.i.i.i.i

_m3dstbi__mul2sizes_valid.exit.thread15.i.i.i.i.i: ; preds = %_m3dstbi__mul2sizes_valid.exit.i.i.i.i.i, %bb.bn
  %i.np = mul nsw i32 %i.nl, %i.nk                ; 3 uses
  %i.nq = or i32 %i.nj, %i.np
  %or.cond.not.i10.i.i.i.i.i = icmp sgt i32 %i.nq, -1
  br i1 %or.cond.not.i10.i.i.i.i.i, label %bb.bo, label %_m3dstbi__malloc_mad3.exit.i.i.i

bb.bo:                                            ; preds = %_m3dstbi__mul2sizes_valid.exit.thread15.i.i.i.i.i
  %i.nr = icmp eq i32 %i.nj, 0
  br i1 %i.nr, label %_m3dstbi__mad3sizes_valid.exit.i.i.i.i, label %_m3dstbi__mul2sizes_valid.exit12.i.i.i.i.i

_m3dstbi__mul2sizes_valid.exit12.i.i.i.i.i:       ; preds = %bb.bo
  %i.ns = udiv i32 2147483647, %i.nj
  %.not.i.i.i.i.i = icmp sgt i32 %i.np, %i.ns
  br i1 %.not.i.i.i.i.i, label %_m3dstbi__malloc_mad3.exit.i.i.i, label %_m3dstbi__mad3sizes_valid.exit.i.i.i.i

_m3dstbi__mad3sizes_valid.exit.i.i.i.i:           ; preds = %_m3dstbi__mul2sizes_valid.exit12.i.i.i.i.i, %bb.bo
  %i.nt = mul nsw i32 %i.nj, %i.np
  %i.nu = sext i32 %i.nt to i64
  %i.nv = call noalias noundef ptr @malloc(i64 noundef range(i64 -2147483648, 2147483648) %i.nu) #56
  br label %_m3dstbi__malloc_mad3.exit.i.i.i

_m3dstbi__malloc_mad3.exit.i.i.i:                 ; preds = %_m3dstbi__mad3sizes_valid.exit.i.i.i.i, %_m3dstbi__mul2sizes_valid.exit12.i.i.i.i.i, %_m3dstbi__mul2sizes_valid.exit.thread15.i.i.i.i.i, %_m3dstbi__mul2sizes_valid.exit.i.i.i.i.i, %bb.bm
  %.0.i.i310.i.i = phi ptr [ %i.nv, %_m3dstbi__mad3sizes_valid.exit.i.i.i.i ], [ null, %_m3dstbi__mul2sizes_valid.exit12.i.i.i.i.i ], [ null, %_m3dstbi__mul2sizes_valid.exit.i.i.i.i.i ], [ null, %bb.bm ], [ null, %_m3dstbi__mul2sizes_valid.exit.thread15.i.i.i.i.i ] ; 3 uses
  %i.nw = sext i32 %i.nj to i64                   ; 9 uses
  %.pre51 = load ptr, ptr %5, align 8
  br label %bb.bp

bb.bp:                                            ; preds = %bb.br, %_m3dstbi__malloc_mad3.exit.i.i.i
  %i.nx = phi ptr [ %.pre51, %_m3dstbi__malloc_mad3.exit.i.i.i ], [ %i.qn, %bb.br ] ; 4 uses
  %indvars.iv106.i.i.i = phi i64 [ 0, %_m3dstbi__malloc_mad3.exit.i.i.i ], [ %indvars.iv.next107.i.i.i, %bb.br ] ; 5 uses
  %.075100.i.i.i = phi ptr [ %i.my, %_m3dstbi__malloc_mad3.exit.i.i.i ], [ %.378.i.i.i, %bb.br ] ; 3 uses
  %.08498.i.i.i = phi i32 [ %i.ng, %_m3dstbi__malloc_mad3.exit.i.i.i ], [ %.387.i.i.i, %bb.br ] ; 3 uses
  %i.ny = load i32, ptr %i.nx, align 8
  %i.nz = getelementptr inbounds nuw [4 x i8], ptr @__const._m3dstbi__create_png_image.xorig, i64 %indvars.iv106.i.i.i
  %i.oa = load i32, ptr %i.nz, align 4            ; 2 uses
  %i.ob = getelementptr inbounds nuw [4 x i8], ptr @__const._m3dstbi__create_png_image.xspc, i64 %indvars.iv106.i.i.i
  %i.oc = load i32, ptr %i.ob, align 4            ; 4 uses
  %i.od = xor i32 %i.oa, -1
  %i.oe = add i32 %i.ny, %i.od
  %i.of = add i32 %i.oe, %i.oc                    ; 2 uses
  %i.og = udiv i32 %i.of, %i.oc                   ; 6 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %i.nx, i64 4
  %i.oi = load i32, ptr %i.oh, align 4
  %i.oj = getelementptr inbounds nuw [4 x i8], ptr @__const._m3dstbi__create_png_image.yorig, i64 %indvars.iv106.i.i.i
  %i.ok = load i32, ptr %i.oj, align 4            ; 2 uses
  %i.ol = getelementptr inbounds nuw [4 x i8], ptr @__const._m3dstbi__create_png_image.yspc, i64 %indvars.iv106.i.i.i
  %i.om = load i32, ptr %i.ol, align 4            ; 4 uses
  %i.on = xor i32 %i.ok, -1
  %i.oo = add i32 %i.oi, %i.on
  %i.op = add i32 %i.oo, %i.om                    ; 2 uses
  %i.oq = udiv i32 %i.op, %i.om                   ; 4 uses
  %i.or = icmp ule i32 %i.oc, %i.of
  %i.os = icmp ule i32 %i.om, %i.op
  %or.cond.i311.i.i = select i1 %i.or, i1 %i.os, i1 false
  br i1 %or.cond.i311.i.i, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.ot = getelementptr inbounds nuw i8, ptr %i.nx, i64 8
  %i.ou = load i32, ptr %i.ot, align 8
  %i.ov = mul i32 %i.og, %i.av
  %i.ow = mul i32 %i.ov, %i.ou
  %i.ox = add nsw i32 %i.ow, 7
  %i.oy = ashr i32 %i.ox, 3
  %i.oz = add nsw i32 %i.oy, 1
  %i.pa = mul nsw i32 %i.oz, %i.oq                ; 2 uses
  %i.pb = call fastcc i32 @_m3dstbi__create_png_image_raw(ptr noundef nonnull %5, ptr noundef %.075100.i.i.i, i32 noundef %.08498.i.i.i, i32 noundef %spec.select1067.i.i, i32 noundef %i.og, i32 noundef %i.oq, i32 noundef %i.av, i32 noundef range(i32 0, 256) %.0191.i.i)
  %.not90.not.i.i.i = icmp eq i32 %i.pb, 0
  %.pre = load ptr, ptr %5, align 8               ; 2 uses
  br i1 %.not90.not.i.i.i, label %_m3dstbi__create_png_image.exit.thread.i.i, label %.preheader94.i.i.i

.preheader94.i.i.i:                               ; preds = %bb.bq
  %i.pc = icmp sgt i32 %i.oq, 0
  %i.pd = icmp sgt i32 %i.og, 0
  %or.cond101.i.i.i = and i1 %i.pd, %i.pc
  %.pre109.i.i.i = load ptr, ptr %i.g, align 8    ; 4 uses
  br i1 %or.cond101.i.i.i, label %.preheader.lr.ph.split.i.i.i, label %._crit_edge97.split.i.i.i

.preheader.lr.ph.split.i.i.i:                     ; preds = %.preheader94.i.i.i
  %i.pe = sext i32 %i.oc to i64                   ; 3 uses
  %i.pf = sext i32 %i.oa to i64                   ; 3 uses
  %i.pg = zext nneg i32 %i.og to i64              ; 3 uses
  %i.ph = zext nneg i32 %i.oq to i64
  %.pre.pre.i.i.i = load i32, ptr %.pre, align 8
  %factor.op.mul.i.i.i = mul i32 %.pre.pre.i.i.i, %i.nj
  %xtraiter91 = and i64 %i.pg, 1
  %6 = icmp eq i32 %i.og, 1
  %unroll_iter94 = and i64 %i.pg, 2147483646
  %lcmp.mod92.not = icmp eq i64 %xtraiter91, 0
  %lcmp.mod93 = trunc i32 %i.og to i1
  br label %.preheader.i.i.i

_m3dstbi__create_png_image.exit.thread.i.i:       ; preds = %bb.bq
  call void @free(ptr noundef %.0.i.i310.i.i) #54
  br label %_m3dstbi__parse_png_file.exit.thread51.i

.preheader.i.i.i:                                 ; preds = %._crit_edge.i.i.i, %.preheader.lr.ph.split.i.i.i
  %indvars.iv103.i.i.i = phi i64 [ 0, %.preheader.lr.ph.split.i.i.i ], [ %indvars.iv.next104.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.pi = trunc i64 %indvars.iv103.i.i.i to i32
  %i.pj = mul i32 %i.om, %i.pi
  %i.pk = add i32 %i.pj, %i.ok
  %.reass.i.i.i = mul i32 %factor.op.mul.i.i.i, %i.pk
  %i.pl = mul nuw nsw i64 %indvars.iv103.i.i.i, %i.pg ; 3 uses
  %i.pm = zext i32 %.reass.i.i.i to i64
  %i.pn = getelementptr inbounds nuw i8, ptr %.0.i.i310.i.i, i64 %i.pm ; 3 uses
  br i1 %6, label %.epil.preheader90, label %.preheader.i.i.i.new

.preheader.i.i.i.new:                             ; preds = %.preheader.i.i.i, %.preheader.i.i.i.new
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.1, %.preheader.i.i.i.new ], [ 0, %.preheader.i.i.i ] ; 4 uses
  %niter95 = phi i64 [ %niter95.next.1, %.preheader.i.i.i.new ], [ 0, %.preheader.i.i.i ]
  %i.po = mul nsw i64 %indvars.iv.i.i.i, %i.pe
  %i.pp = add nsw i64 %i.po, %i.pf
  %i.pq = mul nsw i64 %i.pp, %i.nw
  %i.pr = getelementptr inbounds i8, ptr %i.pn, i64 %i.pq
  %i.ps = add nuw nsw i64 %indvars.iv.i.i.i, %i.pl
  %i.pt = mul nsw i64 %i.ps, %i.nw
  %i.pu = getelementptr inbounds i8, ptr %.pre109.i.i.i, i64 %i.pt
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.pr, ptr align 1 %i.pu, i64 %i.nw, i1 false)
  %indvars.iv.next.i.i.i = or disjoint i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.pv = mul nsw i64 %indvars.iv.next.i.i.i, %i.pe
  %i.pw = add nsw i64 %i.pv, %i.pf
  %i.px = mul nsw i64 %i.pw, %i.nw
  %i.py = getelementptr inbounds i8, ptr %i.pn, i64 %i.px
  %i.pz = add nuw nsw i64 %indvars.iv.next.i.i.i, %i.pl
  %i.qa = mul nsw i64 %i.pz, %i.nw
  %i.qb = getelementptr inbounds i8, ptr %.pre109.i.i.i, i64 %i.qa
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.py, ptr align 1 %i.qb, i64 %i.nw, i1 false)
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %niter95.next.1 = add i64 %niter95, 2           ; 2 uses
  %niter95.ncmp.1.not = icmp eq i64 %niter95.next.1, %unroll_iter94
  br i1 %niter95.ncmp.1.not, label %._crit_edge.i.i.i.unr-lcssa, label %.preheader.i.i.i.new

._crit_edge.i.i.i.unr-lcssa:                      ; preds = %.preheader.i.i.i.new
  br i1 %lcmp.mod92.not, label %._crit_edge.i.i.i, label %.epil.preheader90

.epil.preheader90:                                ; preds = %._crit_edge.i.i.i.unr-lcssa, %.preheader.i.i.i
  %indvars.iv.i.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.i ], [ %indvars.iv.next.i.i.i.1, %._crit_edge.i.i.i.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod93)
  %i.qc = mul nsw i64 %indvars.iv.i.i.i.epil.init, %i.pe
  %i.qd = add nsw i64 %i.qc, %i.pf
  %i.qe = mul nsw i64 %i.qd, %i.nw
  %i.qf = getelementptr inbounds i8, ptr %i.pn, i64 %i.qe
  %i.qg = add nuw nsw i64 %indvars.iv.i.i.i.epil.init, %i.pl
  %i.qh = mul nsw i64 %i.qg, %i.nw
  %i.qi = getelementptr inbounds i8, ptr %.pre109.i.i.i, i64 %i.qh
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.qf, ptr align 1 %i.qi, i64 %i.nw, i1 false)
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.i.i.i.unr-lcssa, %.epil.preheader90
  %indvars.iv.next104.i.i.i = add nuw nsw i64 %indvars.iv103.i.i.i, 1 ; 2 uses
  %i.qj = icmp samesign ult i64 %indvars.iv.next104.i.i.i, %i.ph
  br i1 %i.qj, label %.preheader.i.i.i, label %._crit_edge97.split.i.i.i

._crit_edge97.split.i.i.i:                        ; preds = %._crit_edge.i.i.i, %.preheader94.i.i.i
  call void @free(ptr noundef %.pre109.i.i.i) #54
  %i.qk = zext i32 %i.pa to i64
  %i.ql = getelementptr inbounds nuw i8, ptr %.075100.i.i.i, i64 %i.qk
  %i.qm = sub i32 %.08498.i.i.i, %i.pa
  br label %bb.br

bb.br:                                            ; preds = %._crit_edge97.split.i.i.i, %bb.bp
  %i.qn = phi ptr [ %i.nx, %bb.bp ], [ %.pre, %._crit_edge97.split.i.i.i ]
  %.387.i.i.i = phi i32 [ %.08498.i.i.i, %bb.bp ], [ %i.qm, %._crit_edge97.split.i.i.i ]
  %.378.i.i.i = phi ptr [ %.075100.i.i.i, %bb.bp ], [ %i.ql, %._crit_edge97.split.i.i.i ]
  %indvars.iv.next107.i.i.i = add nuw nsw i64 %indvars.iv106.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next107.i.i.i, 7
  br i1 %exitcond.not.i.i.i, label %_m3dstbi__create_png_image.exit.thread368.i.i, label %bb.bp

_m3dstbi__create_png_image.exit.thread368.i.i:    ; preds = %bb.br
  store ptr %.0.i.i310.i.i, ptr %i.g, align 8
  br label %bb.bs

_m3dstbi__create_png_image.exit.i.i:              ; preds = %bb.bl
  %i.qo = call fastcc i32 @_m3dstbi__create_png_image_raw(ptr noundef nonnull %5, ptr noundef nonnull readonly %i.my, i32 noundef %i.ng, i32 noundef %spec.select1067.i.i, i32 noundef %i.nk, i32 noundef %i.nl, i32 noundef %i.av, i32 noundef range(i32 0, 256) %.0191.i.i)
  %.not244.i.i = icmp eq i32 %i.qo, 0
  br i1 %.not244.i.i, label %_m3dstbi__parse_png_file.exit.thread51.i, label %bb.bs

bb.bs:                                            ; preds = %_m3dstbi__create_png_image.exit.i.i, %_m3dstbi__create_png_image.exit.thread368.i.i
  %.not245.i.i = icmp eq i8 %.0217.i.i, 0
  br i1 %.not245.i.i, label %_m3dstbi__compute_transparency16.exit.thread.i.i, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.qp = load i32, ptr %i.an, align 8
  %i.qq = icmp eq i32 %i.qp, 16
  %i.qr = load i32, ptr %i.nf, align 4
  %.val.i.i = load ptr, ptr %5, align 8           ; 4 uses
  %.val274.i.i = load ptr, ptr %i.g, align 8      ; 10 uses
  %.val.val.i.i = load i32, ptr %.val.i.i, align 8
  %i.qs = getelementptr i8, ptr %.val.i.i, i64 4
  %.val.val275.i.i = load i32, ptr %i.qs, align 4
  %i.qt = mul i32 %.val.val275.i.i, %.val.val.i.i ; 15 uses
  %i.qu = icmp eq i32 %i.qr, 2                    ; 2 uses
  %.not8.i.i.i = icmp eq i32 %i.qt, 0             ; 4 uses
  br i1 %i.qq, label %bb.bu, label %bb.ce

bb.bu:                                            ; preds = %bb.bt
  br i1 %i.qu, label %.preheader.i313.i.i, label %.preheader1.i.i.i

.preheader1.i.i.i:                                ; preds = %bb.bu
  br i1 %.not8.i.i.i, label %_m3dstbi__compute_transparency16.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader1.i.i.i
  %i.qv = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  %i.qw = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.qx = load i16, ptr %i.c, align 2             ; 3 uses
  %i.qy = load i16, ptr %i.qv, align 2            ; 3 uses
  %i.qz = load i16, ptr %i.qw, align 2            ; 3 uses
  %xtraiter108 = and i32 %i.qt, 1
  %i.ra = icmp eq i32 %i.qt, 1
  br i1 %i.ra, label %.epil.preheader107, label %.lr.ph.i.i.i.new

.lr.ph.i.i.i.new:                                 ; preds = %.lr.ph.i.i.i
  %unroll_iter112 = and i32 %i.qt, -2
  br label %bb.bv

.preheader.i313.i.i:                              ; preds = %bb.bu
  br i1 %.not8.i.i.i, label %_m3dstbi__compute_transparency16.exit.i.i, label %.lr.ph7.i.preheader.i.i

.lr.ph7.i.preheader.i.i:                          ; preds = %.preheader.i313.i.i
  %i.rb = load i16, ptr %i.c, align 2             ; 5 uses
  %xtraiter114 = and i32 %i.qt, 3                 ; 3 uses
  %i.rc = icmp ult i32 %i.qt, 4
  br i1 %i.rc, label %.lr.ph7.i.i.i.epil.preheader, label %.lr.ph7.i.preheader.i.i.new

.lr.ph7.i.preheader.i.i.new:                      ; preds = %.lr.ph7.i.preheader.i.i
  %unroll_iter118 = and i32 %i.qt, -4
  br label %.lr.ph7.i.i.i

.lr.ph7.i.i.i:                                    ; preds = %.lr.ph7.i.i.i, %.lr.ph7.i.preheader.i.i.new
  %.06.i.i.i = phi ptr [ %.val274.i.i, %.lr.ph7.i.preheader.i.i.new ], [ %i.rw, %.lr.ph7.i.i.i ] ; 9 uses
  %niter119 = phi i32 [ 0, %.lr.ph7.i.preheader.i.i.new ], [ %niter119.next.3, %.lr.ph7.i.i.i ]
  %i.rd = load i16, ptr %.06.i.i.i, align 2
  %i.re = icmp ne i16 %i.rd, %i.rb
  %i.rf = sext i1 %i.re to i16
  %i.rg = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 2
  store i16 %i.rf, ptr %i.rg, align 2
  %i.rh = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 4
  %i.ri = load i16, ptr %i.rh, align 2
  %i.rj = icmp ne i16 %i.ri, %i.rb
  %i.rk = sext i1 %i.rj to i16
  %i.rl = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 6
  store i16 %i.rk, ptr %i.rl, align 2
  %i.rm = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 8
  %i.rn = load i16, ptr %i.rm, align 2
  %i.ro = icmp ne i16 %i.rn, %i.rb
  %i.rp = sext i1 %i.ro to i16
  %i.rq = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 10
  store i16 %i.rp, ptr %i.rq, align 2
  %i.rr = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 12
  %i.rs = load i16, ptr %i.rr, align 2
  %i.rt = icmp ne i16 %i.rs, %i.rb
  %i.ru = sext i1 %i.rt to i16
  %i.rv = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 14
  store i16 %i.ru, ptr %i.rv, align 2
  %i.rw = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 16 ; 2 uses
  %niter119.next.3 = add i32 %niter119, 4         ; 2 uses
  %niter119.ncmp.3 = icmp eq i32 %niter119.next.3, %unroll_iter118
  br i1 %niter119.ncmp.3, label %_m3dstbi__compute_transparency16.exit.i.i.loopexit.unr-lcssa, label %.lr.ph7.i.i.i

bb.bv:                                            ; preds = %bb.cd, %.lr.ph.i.i.i.new
  %.14.i.i.i = phi ptr [ %.val274.i.i, %.lr.ph.i.i.i.new ], [ %i.sq, %bb.cd ] ; 9 uses
  %niter113 = phi i32 [ 0, %.lr.ph.i.i.i.new ], [ %niter113.next.1, %bb.cd ]
  %i.rx = load i16, ptr %.14.i.i.i, align 2
  %i.ry = icmp eq i16 %i.rx, %i.qx
  br i1 %i.ry, label %bb.bw, label %bb.bz

bb.bw:                                            ; preds = %bb.bv
  %i.rz = getelementptr inbounds nuw i8, ptr %.14.i.i.i, i64 2
  %i.sa = load i16, ptr %i.rz, align 2
  %i.sb = icmp eq i16 %i.sa, %i.qy
  br i1 %i.sb, label %bb.bx, label %bb.bz

bb.bx:                                            ; preds = %bb.bw
  %i.sc = getelementptr inbounds nuw i8, ptr %.14.i.i.i, i64 4
  %i.sd = load i16, ptr %i.sc, align 2
  %i.se = icmp eq i16 %i.sd, %i.qz
  br i1 %i.se, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.sf = getelementptr inbounds nuw i8, ptr %.14.i.i.i, i64 6
  store i16 0, ptr %i.sf, align 2
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx, %bb.bw, %bb.bv
  %i.sg = getelementptr inbounds nuw i8, ptr %.14.i.i.i, i64 8
  %i.sh = load i16, ptr %i.sg, align 2
  %i.si = icmp eq i16 %i.sh, %i.qx
end_hunk_1
