Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/json-dictionary?download=true
inline.NumInlined: 6
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@process_field:bb.a
  store ptr %i.bf, ptr %i.x, align 8
  %i.bg = getelementptr i8, ptr %.0129160, i64 48
  %.0129179 = load ptr, ptr %i.bg, align 8        ; 2 uses
  %.not149180 = icmp eq ptr %.0129179, null
  br i1 %.not149180, label %._crit_edge.thread, label %.lr.ph.outer, !llvm.loop !30

._crit_edge:                                      ; preds = %bb.o
  br i1 %.0128159.ph, label %._crit_edge.thread, label %.critedge

.critedge:                                        ; preds = %bb.l, %._crit_edge
  %i.bh = call noalias dereferenceable_or_null(104) ptr @g_malloc0(i64 noundef 104) #13 ; 8 uses
  %i.bi = load ptr, ptr %i.q, align 8
  %i.bj = call ptr @xmlStrdup(ptr noundef %i.bi)
  store ptr %i.bj, ptr %i.bh, align 8
  %i.bk = call ptr @wmem_epan_scope()
  %i.bl = call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef %i.bk, ptr noundef @.str.51, ptr noundef %.0132)
  %i.bm = call ptr @xmlStrdup(ptr noundef %i.bl)
  %i.bn = getelementptr i8, ptr %i.bh, i64 8
  store ptr %i.bm, ptr %i.bn, align 8
  %.not150 = icmp eq ptr %i.at, null
  br i1 %.not150, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.critedge
  %i.bo = call ptr @xmlStrdup(ptr noundef nonnull %i.at)
  br label %bb.q

bb.q:                                             ; preds = %.critedge, %bb.p
  %i.bp = phi ptr [ %i.bo, %bb.p ], [ null, %.critedge ]
  %i.bq = getelementptr i8, ptr %i.bh, i64 16
  store ptr %i.bp, ptr %i.bq, align 8
  %i.br = call ptr @xmlStrdup(ptr noundef @.str.52)
  %i.bs = getelementptr i8, ptr %i.bh, i64 24
  store ptr %i.br, ptr %i.bs, align 8
  %i.bt = getelementptr i8, ptr %i.bh, i64 56
  store i8 1, ptr %i.bt, align 8
  %i.bu = getelementptr i8, ptr %i.bh, i64 32
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(16) %i.bu, i8 0, i64 16, i1 false)
  %i.bv = call ptr @xmlStrdup(ptr noundef %i.au)
  %i.bw = getelementptr i8, ptr %i.bh, i64 64
  store ptr %i.bv, ptr %i.bw, align 8
  %i.bx = load ptr, ptr %i.x, align 8
  %i.by = call ptr @g_slist_append(ptr noundef %i.bx, ptr noundef %i.bh)
  store ptr %i.by, ptr %i.x, align 8
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %.thread, %bb.q, %._crit_edge
  %i.bz = load ptr, ptr @xmlFree, align 8
  call void %i.bz(ptr noundef %i.at)
  %.not151 = icmp eq ptr %i.au, null
  br i1 %.not151, label %bb.y, label %bb.r

bb.r:                                             ; preds = %._crit_edge.thread
  %i.ca = load ptr, ptr @xmlFree, align 8
  call void %i.ca(ptr noundef nonnull %i.au)
  br label %bb.y

bb.s:                                             ; preds = %bb.k
  %i.cb = load ptr, ptr %i.aj, align 8
  %i.cc = call i32 @xmlStrcmp(ptr noundef %i.cb, ptr noundef @.str.53)
  %i.cd = icmp eq i32 %i.cc, 0
  br i1 %i.cd, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store i32 0, ptr %i.a, align 4
  %i.ce = call ptr @xmlGetProp(ptr noundef nonnull %.0131163, ptr noundef @.str.32) ; 3 uses
  %i.cf = call ptr @xmlGetProp(ptr noundef nonnull %.0131163, ptr noundef @.str.55) ; 4 uses
  %i.cg = call ptr @xmlGetProp(ptr noundef nonnull %.0131163, ptr noundef @.str.45) ; 2 uses
  %i.ch = icmp ne ptr %i.ce, null
  %i.ci = icmp ne ptr %i.cf, null
  %or.cond.i = select i1 %i.ch, i1 %i.ci, i1 false
  br i1 %or.cond.i, label %process_enum.exit, label %process_enum.exit.thread

process_enum.exit.thread:                         ; preds = %bb.t
  %i.cj = load ptr, ptr @xmlFree, align 8
  call void %i.cj(ptr noundef %i.ce), !inline_history !31
  %i.ck = load ptr, ptr @xmlFree, align 8
  call void %i.ck(ptr noundef %i.cf), !inline_history !31
  %i.cl = load ptr, ptr @xmlFree, align 8
  call void %i.cl(ptr noundef %i.cg), !inline_history !31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.y

process_enum.exit:                                ; preds = %bb.t
  %i.cm = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %i.cf, ptr noundef @.str.40, ptr noundef nonnull %i.a) #11 ; 0 uses
  %i.cn = load ptr, ptr @xmlFree, align 8
  call void %i.cn(ptr noundef nonnull %i.cf), !inline_history !31
  %i.co = call noalias dereferenceable_or_null(24) ptr @g_malloc0(i64 noundef 24) #13 ; 5 uses
  store ptr %i.ce, ptr %i.co, align 8
  %i.cp = load i32, ptr %i.a, align 4
  %i.cq = getelementptr i8, ptr %i.co, i64 8
  store i32 %i.cp, ptr %i.cq, align 8
  %i.cr = getelementptr i8, ptr %i.co, i64 16
  store ptr %i.cg, ptr %i.cr, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %.not148 = icmp eq ptr %i.co, null
  br i1 %.not148, label %bb.y, label %bb.u

bb.u:                                             ; preds = %process_enum.exit
  %i.cs = call ptr @g_slist_append(ptr noundef %i.ag, ptr noundef nonnull %i.co) ; 2 uses
  store ptr %i.cs, ptr %i.y, align 8
  br label %bb.y

bb.v:                                             ; preds = %bb.s
  %i.ct = load ptr, ptr %i.aj, align 8
  %i.cu = call i32 @xmlStrcmp(ptr noundef %i.ct, ptr noundef @.str.54)
  %i.cv = icmp eq i32 %i.cu, 0
  br i1 %i.cv, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.cw = call fastcc ptr @process_wildcardfield(ptr noundef %.0131163, ptr noundef %.0132) ; 2 uses
  %.not147 = icmp eq ptr %i.cw, null
  br i1 %.not147, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cx = load ptr, ptr %i.af, align 8
  %i.cy = call ptr @g_slist_append(ptr noundef %i.cx, ptr noundef nonnull %i.cw)
  store ptr %i.cy, ptr %i.af, align 8
  br label %bb.y

bb.y:                                             ; preds = %process_enum.exit.thread, %bb.w, %bb.x, %process_enum.exit, %bb.u, %._crit_edge.thread, %bb.r, %bb.i, %bb.j, %bb.v, %bb.g
  %i.cz = phi ptr [ %i.ag, %process_enum.exit.thread ], [ %i.ag, %bb.w ], [ %i.ag, %bb.x ], [ %i.ag, %process_enum.exit ], [ %i.cs, %bb.u ], [ %i.ag, %._crit_edge.thread ], [ %i.ag, %bb.r ], [ %i.ag, %bb.i ], [ %i.ag, %bb.j ], [ %i.ag, %bb.v ], [ %i.ag, %bb.g ]
  %i.da = getelementptr i8, ptr %.0131163, i64 48
  %.0131 = load ptr, ptr %i.da, align 8           ; 2 uses
  %.not145 = icmp eq ptr %.0131, null
  br i1 %.not145, label %.loopexit, label %bb.g, !llvm.loop !32

.loopexit:                                        ; preds = %bb.y, %bb.f, %bb.c
  %.0 = phi ptr [ null, %bb.c ], [ %i.q, %bb.f ], [ %i.q, %bb.y ]
  ret ptr %.0
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc noundef ptr @create_json_field(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef captures(none) %3, ptr noundef %4) unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.hf_register_info, align 8   ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not192 = icmp eq ptr %i.b, null
  %spec.store.select = select i1 %.not192, ptr @.str.60, ptr %i.b ; 3 uses
  %.not193 = icmp eq ptr %4, null
  br i1 %.not193, label %.preheader.preheader.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call ptr @g_hash_table_lookup(ptr noundef nonnull %4, ptr noundef nonnull %spec.store.select) ; 3 uses
  %.not194 = icmp eq ptr %i.c, null
  br i1 %.not194, label %.preheader.preheader.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr i8, ptr %i.c, i64 16
  %i.g = load ptr, ptr %i.f, align 8              ; 7 uses
  %.not195 = icmp eq ptr %i.g, null
  br i1 %.not195, label %parse_display_type.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.g, ptr noundef dereferenceable(5) @.str.65) #12
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %parse_display_type.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.g, ptr noundef dereferenceable(5) @.str.66) #12
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %parse_display_type.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.g, ptr noundef dereferenceable(6) @.str.67) #12
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %parse_display_type.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.g, ptr noundef dereferenceable(14) @.str.68) #12
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %parse_display_type.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.g, ptr noundef dereferenceable(14) @.str.69) #12
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %parse_display_type.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.r = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.g, ptr noundef dereferenceable(8) @.str.70) #12
  %i.s = icmp eq i32 %i.r, 0
  %..i = select i1 %i.s, i32 6, i32 0
  br label %parse_display_type.exit

parse_display_type.exit:                          ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d
  %.0172 = phi i32 [ 4, %bb.h ], [ 0, %bb.d ], [ %..i, %bb.j ], [ 5, %bb.i ], [ 1, %bb.e ], [ 2, %bb.f ], [ 3, %bb.g ] ; 2 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %lookup_base_type.exit, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.b, %bb.c, %parse_display_type.exit
  %.0172225 = phi i32 [ %.0172, %parse_display_type.exit ], [ 0, %bb.c ], [ 0, %bb.b ] ; 10 uses
  %.0175224 = phi ptr [ %i.e, %parse_display_type.exit ], [ %spec.store.select, %bb.c ], [ %spec.store.select, %bb.b ] ; 10 uses
  %i.t = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %.0175224, ptr noundef nonnull dereferenceable(7) @.str.60) #12
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %lookup_base_type.exit, label %.preheader.1.i

.preheader.1.i:                                   ; preds = %.preheader.preheader.i
  %i.v = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %.0175224, ptr noundef nonnull dereferenceable(6) @.str.71) #12
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %lookup_base_type.exit, label %.preheader.2.i

.preheader.2.i:                                   ; preds = %.preheader.1.i
  %i.x = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %.0175224, ptr noundef nonnull dereferenceable(7) @.str.72) #12
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %lookup_base_type.exit, label %.preheader.3.i

.preheader.3.i:                                   ; preds = %.preheader.2.i
  %i.z = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %.0175224, ptr noundef nonnull dereferenceable(6) @.str.73) #12
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %lookup_base_type.exit, label %.preheader.4.i

.preheader.4.i:                                   ; preds = %.preheader.3.i
  %i.ab = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %.0175224, ptr noundef nonnull dereferenceable(7) @.str.74) #12
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %lookup_base_type.exit, label %.preheader.5.i

.preheader.5.i:                                   ; preds = %.preheader.4.i
  %i.ad = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %.0175224, ptr noundef nonnull dereferenceable(7) @.str.75) #12
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %lookup_base_type.exit, label %.preheader.6.i

.preheader.6.i:                                   ; preds = %.preheader.5.i
  %i.af = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %.0175224, ptr noundef nonnull dereferenceable(6) @.str.76) #12
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %lookup_base_type.exit, label %.preheader.7.i

.preheader.7.i:                                   ; preds = %.preheader.6.i
  %i.ah = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %.0175224, ptr noundef nonnull dereferenceable(8) @.str.77) #12
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %lookup_base_type.exit, label %.preheader.8.i

.preheader.8.i:                                   ; preds = %.preheader.7.i
  %i.aj = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %.0175224, ptr noundef nonnull dereferenceable(7) @.str.78) #12
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %lookup_base_type.exit, label %.preheader.9.i

.preheader.9.i:                                   ; preds = %.preheader.8.i
  %i.al = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %.0175224, ptr noundef nonnull dereferenceable(6) @.str.79) #12
  %i.am = icmp eq i32 %i.al, 0
  %spec.select.i = select i1 %i.am, ptr getelementptr inbounds nuw (i8, ptr @base_type_mappings, i64 216), ptr @base_type_mappings
  br label %lookup_base_type.exit

lookup_base_type.exit:                            ; preds = %parse_display_type.exit, %.preheader.preheader.i, %.preheader.1.i, %.preheader.2.i, %.preheader.3.i, %.preheader.4.i, %.preheader.5.i, %.preheader.6.i, %.preheader.7.i, %.preheader.8.i, %.preheader.9.i
  %.0172226 = phi i32 [ %.0172, %parse_display_type.exit ], [ %.0172225, %.preheader.preheader.i ], [ %.0172225, %.preheader.5.i ], [ %.0172225, %.preheader.1.i ], [ %.0172225, %.preheader.9.i ], [ %.0172225, %.preheader.2.i ], [ %.0172225, %.preheader.7.i ], [ %.0172225, %.preheader.3.i ], [ %.0172225, %.preheader.8.i ], [ %.0172225, %.preheader.4.i ], [ %.0172225, %.preheader.6.i ] ; 2 uses
  %.06.i = phi ptr [ @base_type_mappings, %parse_display_type.exit ], [ @base_type_mappings, %.preheader.preheader.i ], [ getelementptr inbounds nuw (i8, ptr @base_type_mappings, i64 120), %.preheader.5.i ], [ getelementptr inbounds nuw (i8, ptr @base_type_mappings, i64 24), %.preheader.1.i ], [ %spec.select.i, %.preheader.9.i ], [ getelementptr inbounds nuw (i8, ptr @base_type_mappings, i64 48), %.preheader.2.i ], [ getelementptr inbounds nuw (i8, ptr @base_type_mappings, i64 168), %.preheader.7.i ], [ getelementptr inbounds nuw (i8, ptr @base_type_mappings, i64 72), %.preheader.3.i ], [ getelementptr inbounds nuw (i8, ptr @base_type_mappings, i64 192), %.preheader.8.i ], [ getelementptr inbounds nuw (i8, ptr @base_type_mappings, i64 96), %.preheader.4.i ], [ getelementptr inbounds nuw (i8, ptr @base_type_mappings, i64 144), %.preheader.6.i ] ; 3 uses
  %i.an = getelementptr i8, ptr %.06.i, i64 12
  %i.ao = load i32, ptr %i.an, align 4            ; 4 uses
  %i.ap = getelementptr i8, ptr %.06.i, i64 16
  %i.aq = load i32, ptr %i.ap, align 8            ; 3 uses
  switch i32 %.0172226, label %bb.o [
    i32 1, label %.thread227
    i32 2, label %bb.k
    i32 3, label %bb.l
    i32 4, label %bb.m
    i32 5, label %bb.n
    i32 6, label %bb.r
  ]

bb.k:                                             ; preds = %lookup_base_type.exit
  br label %.thread227

bb.l:                                             ; preds = %lookup_base_type.exit
  br label %.thread227

bb.m:                                             ; preds = %lookup_base_type.exit
  br label %.thread227

bb.n:                                             ; preds = %lookup_base_type.exit
  br label %.thread227

bb.o:                                             ; preds = %lookup_base_type.exit
  %i.ar = getelementptr i8, ptr %0, i64 40
  %i.as = load ptr, ptr %i.ar, align 8
  %.not196 = icmp eq ptr %i.as, null
  br i1 %.not196, label %.thread227, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.at = icmp eq i32 %i.ao, 19
  br i1 %i.at, label %.thread227, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.au = icmp eq i32 %i.ao, 11
  %spec.store.select1 = select i1 %i.au, i32 7, i32 %i.ao
  br label %.thread227

bb.r:                                             ; preds = %lookup_base_type.exit
  %i.av = getelementptr i8, ptr %0, i64 40
  %i.aw = load ptr, ptr %i.av, align 8
  %.not197 = icmp eq ptr %i.aw, null
  %spec.select = select i1 %.not197, i32 11, i32 7
  br label %.thread227

.thread227:                                       ; preds = %bb.l, %bb.n, %bb.o, %bb.q, %bb.m, %bb.k, %lookup_base_type.exit, %bb.p, %bb.r
  %.0168230 = phi i32 [ 4, %bb.r ], [ %i.aq, %bb.p ], [ %i.aq, %bb.q ], [ 0, %lookup_base_type.exit ], [ 0, %bb.n ], [ 18, %bb.m ], [ 0, %bb.l ], [ 0, %bb.k ], [ %i.aq, %bb.o ]
  %.1170 = phi i32 [ %spec.select, %bb.r ], [ 15, %bb.p ], [ %spec.store.select1, %bb.q ], [ 32, %lookup_base_type.exit ], [ 25, %bb.n ], [ 24, %bb.m ], [ 29, %bb.l ], [ 33, %bb.k ], [ %i.ao, %bb.o ]
  %i.ax = tail call ptr @wmem_epan_scope()
  %i.ay = tail call noalias dereferenceable_or_null(112) ptr @wmem_alloc0(ptr noundef %i.ax, i64 noundef 112) #14 ; 19 uses
  %i.az = getelementptr i8, ptr %0, i64 80        ; 3 uses
  %i.ba = load ptr, ptr %i.az, align 8
  %.not198 = icmp eq ptr %i.ba, null
  %i.bb = tail call ptr @wmem_epan_scope()        ; 2 uses
  %i.bc = load ptr, ptr %0, align 8               ; 2 uses
  br i1 %.not198, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.thread227
  %i.bd = tail call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef %i.bb, ptr noundef @.str.61, ptr noundef %i.bc)
  br label %bb.u

bb.t:                                             ; preds = %.thread227
  %i.be = tail call noalias ptr @wmem_strdup(ptr noundef %i.bb, ptr noundef %i.bc)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %storemerge = phi ptr [ %i.be, %bb.t ], [ %i.bd, %bb.s ]
  store ptr %storemerge, ptr %i.ay, align 8
  %i.bf = tail call ptr @wmem_epan_scope()
  %i.bg = getelementptr i8, ptr %0, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = tail call noalias ptr @wmem_strdup(ptr noundef %i.bf, ptr noundef %i.bh) ; 3 uses
  %i.bj = getelementptr i8, ptr %i.ay, i64 8      ; 2 uses
  store ptr %i.bi, ptr %i.bj, align 8
  %i.bk = getelementptr i8, ptr %i.ay, i64 16
  store i32 0, ptr %i.bk, align 8
  %i.bl = getelementptr i8, ptr %.06.i, i64 8
  %i.bm = load i32, ptr %i.bl, align 8
  %i.bn = getelementptr i8, ptr %i.ay, i64 20     ; 3 uses
  store i32 %i.bm, ptr %i.bn, align 4
  %i.bo = getelementptr i8, ptr %i.ay, i64 24
  store i32 %.0172226, ptr %i.bo, align 8
  %i.bp = getelementptr i8, ptr %i.ay, i64 28     ; 2 uses
  store i32 -1, ptr %i.bp, align 4
  %i.bq = getelementptr i8, ptr %i.ay, i64 32     ; 2 uses
  %i.br = getelementptr i8, ptr %i.ay, i64 40     ; 2 uses
  %i.bs = getelementptr i8, ptr %i.ay, i64 48     ; 2 uses
  %i.bt = getelementptr i8, ptr %0, i64 64        ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(32) %i.bq, i8 0, i64 32, i1 false)
  %i.bu = load ptr, ptr %i.bt, align 8
  %.not199 = icmp eq ptr %i.bu, null
  br i1 %.not199, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bv = tail call ptr @wmem_epan_scope()
  %i.bw = load ptr, ptr %i.bt, align 8
  %i.bx = tail call noalias ptr @wmem_strdup(ptr noundef %i.bv, ptr noundef %i.bw)
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v
  %i.by = phi ptr [ %i.bx, %bb.v ], [ null, %bb.u ]
  %i.bz = getelementptr i8, ptr %i.ay, i64 64
  store ptr %i.by, ptr %i.bz, align 8
  %i.ca = load ptr, ptr %i.az, align 8
  %.not200 = icmp eq ptr %i.ca, null
  br i1 %.not200, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cb = tail call ptr @wmem_epan_scope()
  %i.cc = load ptr, ptr %i.az, align 8
  %i.cd = tail call noalias ptr @wmem_strdup(ptr noundef %i.cb, ptr noundef %i.cc)
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x
  %i.ce = phi ptr [ %i.cd, %bb.x ], [ null, %bb.w ]
  %i.cf = getelementptr i8, ptr %i.ay, i64 72
  store ptr %i.ce, ptr %i.cf, align 8
  %i.cg = getelementptr i8, ptr %0, i64 88        ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8
  %.not201 = icmp eq ptr %i.ch, null
  br i1 %.not201, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ci = tail call ptr @wmem_epan_scope()
  %i.cj = load ptr, ptr %i.cg, align 8
  %i.ck = tail call noalias ptr @wmem_strdup(ptr noundef %i.ci, ptr noundef %i.cj)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.z
  %i.cl = phi ptr [ %i.ck, %bb.z ], [ null, %bb.y ]
  %i.cm = getelementptr i8, ptr %i.ay, i64 80
  store ptr %i.cl, ptr %i.cm, align 8
  %i.cn = getelementptr i8, ptr %i.ay, i64 88
  store ptr null, ptr %i.cn, align 8
  %i.co = getelementptr i8, ptr %i.ay, i64 96     ; 4 uses
  store i8 0, ptr %i.co, align 8
  %i.cp = getelementptr i8, ptr %0, i64 96        ; 3 uses
  %i.cq = load ptr, ptr %i.cp, align 8            ; 2 uses
  %.not202 = icmp eq ptr %i.cq, null
  br i1 %.not202, label %bb.ag, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cr = tail call i32 @g_ascii_strcasecmp(ptr noundef nonnull %i.cq, ptr noundef @.str.24)
  %i.cs = icmp eq i32 %i.cr, 0
  br i1 %i.cs, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  store i8 1, ptr %i.co, align 8
  %i.ct = getelementptr i8, ptr %3, i64 24
  store i8 1, ptr %i.ct, align 8
  br label %bb.ag

bb.ad:                                            ; preds = %bb.ab
  %i.cu = load ptr, ptr %i.cp, align 8
  %i.cv = tail call i32 @g_ascii_strcasecmp(ptr noundef %i.cu, ptr noundef @.str.62)
  %i.cw = icmp eq i32 %i.cv, 0
  br i1 %i.cw, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  store i8 0, ptr %i.co, align 8
  br label %bb.ag

bb.af:                                            ; preds = %bb.ad
  %i.cx = load ptr, ptr %i.cp, align 8
  tail call void (ptr, i32, ptr, i64, ptr, ptr, ...) @ws_log_full(ptr noundef @.str.5, i32 noundef 5, ptr noundef @.str.25, i64 noundef 780, ptr noundef @__func__.create_json_field, ptr noundef @.str.63, ptr noundef %i.cx, ptr noundef %i.bi)
  store i8 0, ptr %i.co, align 8
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ac, %bb.af, %bb.ae, %bb.aa
  %i.cy = getelementptr i8, ptr %0, i64 72        ; 2 uses
  %i.cz = load ptr, ptr %i.cy, align 8
  %.not203 = icmp eq ptr %i.cz, null
  %i.da = tail call ptr @wmem_epan_scope()        ; 2 uses
  br i1 %.not203, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.db = load ptr, ptr %i.cy, align 8
  %i.dc = tail call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef %i.da, ptr noundef @.str.20, ptr noundef %i.db)
  br label %bb.av

bb.ai:                                            ; preds = %bb.ag
  %i.dd = tail call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef %i.da, ptr noundef @.str.20, ptr noundef %i.bi) ; 5 uses
  br label %bb.aj

bb.aj:                                            ; preds = %bb.al, %bb.ai
  %.0167 = phi ptr [ %i.dd, %bb.ai ], [ %i.dg, %bb.al ] ; 2 uses
  %.0166 = phi ptr [ %i.dd, %bb.ai ], [ %.1, %bb.al ] ; 5 uses
  %i.de = load i8, ptr %.0167, align 1            ; 2 uses
  switch i8 %i.de, label %bb.ak [
    i8 0, label %bb.am
    i8 91, label %bb.al
end_hunk_0
