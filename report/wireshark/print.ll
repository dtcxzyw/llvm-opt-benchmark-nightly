Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/print?download=true
inline.NumInlined: 65
inline.NumDeleted: 24
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@write_json_proto_node_no_value:bb.a

bb.f:                                             ; preds = %bb.c, %bb.d, %bb.e
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind null_pointer_is_valid memory(argmem: readwrite)
declare ptr @__memcpy_chk(ptr noalias noundef writeonly, ptr noalias noundef readonly captures(none), i64 noundef, i64 noundef) local_unnamed_addr #17

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @json_write_field_hex_value(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [512 x i8], align 16              ; 9 uses
  %i.b = load ptr, ptr %1, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 32
  %i.d = load i64, ptr %i.c, align 8
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %1, i64 48         ; 5 uses
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call i32 @fvalue_type_ftenum(ptr noundef %i.f)
  switch i32 %i.g, label %bb.g [
    i32 12, label %bb.c
    i32 13, label %bb.c
    i32 14, label %bb.c
    i32 15, label %bb.c
    i32 3, label %bb.d
    i32 4, label %bb.d
    i32 5, label %bb.d
    i32 6, label %bb.d
    i32 7, label %bb.d
    i32 16, label %bb.e
    i32 17, label %bb.e
    i32 18, label %bb.e
    i32 19, label %bb.e
    i32 8, label %bb.f
    i32 9, label %bb.f
    i32 10, label %bb.f
    i32 11, label %bb.f
    i32 2, label %bb.f
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.h = getelementptr i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = load ptr, ptr %i.e, align 8
  %i.k = tail call i32 @fvalue_get_sinteger(ptr noundef %i.j)
  tail call void (ptr, ptr, ...) @json_dumper_value_anyf(ptr noundef %i.i, ptr noundef nonnull @.str.88, i32 noundef %i.k)
  br label %bb.u

bb.d:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.b
  %i.l = getelementptr i8, ptr %0, i64 32
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = load ptr, ptr %i.e, align 8
  %i.o = tail call i32 @fvalue_get_uinteger(ptr noundef %i.n)
  tail call void (ptr, ptr, ...) @json_dumper_value_anyf(ptr noundef %i.m, ptr noundef nonnull @.str.88, i32 noundef %i.o)
  br label %bb.u

bb.e:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.p = getelementptr i8, ptr %0, i64 32
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = load ptr, ptr %i.e, align 8
  %i.s = tail call i64 @fvalue_get_sinteger64(ptr noundef %i.r)
  tail call void (ptr, ptr, ...) @json_dumper_value_anyf(ptr noundef %i.q, ptr noundef nonnull @.str.89, i64 noundef %i.s)
  br label %bb.u

bb.f:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.b
  %i.t = getelementptr i8, ptr %0, i64 32
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = load ptr, ptr %i.e, align 8
  %i.w = tail call i64 @fvalue_get_uinteger64(ptr noundef %i.v)
  tail call void (ptr, ptr, ...) @json_dumper_value_anyf(ptr noundef %i.u, ptr noundef nonnull @.str.89, i64 noundef %i.w)
  br label %bb.u

bb.g:                                             ; preds = %bb.b
  tail call void (ptr, i32, ptr, i64, ptr, ptr, ...) @ws_log_fatal_full(ptr noundef nonnull @.str.58, i32 noundef 7, ptr noundef nonnull @.str.73, i64 noundef 2076, ptr noundef nonnull @__func__.json_write_field_hex_value, ptr noundef nonnull @.str.74) #25
  unreachable

bb.h:                                             ; preds = %bb.a
  %i.x = getelementptr i8, ptr %1, i64 40         ; 4 uses
  %i.y = load ptr, ptr %i.x, align 8              ; 2 uses
  %.not52 = icmp eq ptr %i.y, null
  br i1 %.not52, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.z = getelementptr i8, ptr %0, i64 32
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void @json_dumper_value_string_noesc(ptr noundef %i.aa, ptr noundef nonnull @.str.58, i64 noundef 0)
  br label %bb.u

bb.j:                                             ; preds = %bb.h
  %i.ab = getelementptr i8, ptr %1, i64 12        ; 3 uses
  %i.ac = load i32, ptr %i.ab, align 4
  %i.ad = getelementptr i8, ptr %1, i64 8         ; 3 uses
  %i.ae = load i32, ptr %i.ad, align 8
  %i.af = tail call i32 @tvb_captured_length_remaining(ptr noundef nonnull %i.y, i32 noundef %i.ae)
  %i.ag = icmp ugt i32 %i.ac, %i.af
  br i1 %i.ag, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ah = getelementptr i8, ptr %0, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8
  tail call void @json_dumper_value_string_noesc(ptr noundef %i.ai, ptr noundef nonnull @.str.80, i64 noundef 21)
  br label %bb.u

bb.l:                                             ; preds = %bb.j
  %i.aj = load ptr, ptr %0, align 8               ; 2 uses
  %i.ak = getelementptr i8, ptr %0, i64 48        ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8            ; 2 uses
  %.not.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.am = load ptr, ptr %i.x, align 8
  %i.an = getelementptr i8, ptr %0, i64 40
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = icmp eq ptr %i.am, %i.ao
  br i1 %i.ap, label %get_field_data_source_cached.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.not16.i.i.i = icmp eq ptr %i.aj, null
  br i1 %.not16.i.i.i, label %get_field_data_cached.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.n, %bb.o
  %.018.i.i.i = phi i32 [ %i.au, %bb.o ], [ 0, %bb.n ] ; 2 uses
  %.01117.i.i.i = phi ptr [ %i.aw, %bb.o ], [ %i.aj, %bb.n ] ; 2 uses
  %i.aq = load ptr, ptr %.01117.i.i.i, align 8    ; 4 uses
  %i.ar = load ptr, ptr %i.x, align 8
  %i.as = tail call ptr @get_data_source_tvb(ptr noundef %i.aq)
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %get_field_data_source.exit.i.i, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i.i.i
  %i.au = add i32 %.018.i.i.i, 1
  %i.av = getelementptr i8, ptr %.01117.i.i.i, i64 8
  %i.aw = load ptr, ptr %i.av, align 8            ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.i, label %get_field_data_cached.exit.thread, label %.lr.ph.i.i.i, !llvm.loop !8

get_field_data_source.exit.i.i:                   ; preds = %.lr.ph.i.i.i
  %.not21.i.i = icmp eq ptr %i.aq, null
  br i1 %.not21.i.i, label %get_field_data_cached.exit.thread, label %bb.p

bb.p:                                             ; preds = %get_field_data_source.exit.i.i
  %i.ax = load ptr, ptr %i.x, align 8
  %i.ay = getelementptr i8, ptr %0, i64 40
  store ptr %i.ax, ptr %i.ay, align 8
  store ptr %i.aq, ptr %i.ak, align 8
  %i.az = getelementptr i8, ptr %0, i64 56
  store i32 %.018.i.i.i, ptr %i.az, align 8
  br label %get_field_data_source_cached.exit.i

get_field_data_source_cached.exit.i:              ; preds = %bb.p, %bb.m
  %.0.i.i = phi ptr [ %i.aq, %bb.p ], [ %i.al, %bb.m ]
  %i.ba = tail call ptr @get_data_source_tvb(ptr noundef nonnull %.0.i.i) ; 2 uses
  %i.bb = load i32, ptr %i.ad, align 8
  %i.bc = tail call i32 @tvb_captured_length_remaining(ptr noundef %i.ba, i32 noundef %i.bb) ; 2 uses
  %i.bd = icmp slt i32 %i.bc, 0
  br i1 %i.bd, label %get_field_data_cached.exit.thread, label %get_field_data_cached.exit

get_field_data_cached.exit:                       ; preds = %get_field_data_source_cached.exit.i
  %i.be = load i32, ptr %i.ab, align 4
  %spec.select.i = tail call i32 @llvm.smin.i32(i32 %i.be, i32 %i.bc)
  %i.bf = load i32, ptr %i.ad, align 8
  %i.bg = tail call ptr @tvb_get_ptr(ptr noundef %i.ba, i32 noundef %i.bf, i32 noundef %spec.select.i) ; 7 uses
  %.not53 = icmp eq ptr %i.bg, null
  br i1 %.not53, label %get_field_data_cached.exit.thread, label %bb.q

bb.q:                                             ; preds = %get_field_data_cached.exit
  %i.bh = load i32, ptr %i.ab, align 4            ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.bi = icmp ult i32 %i.bh, 256
  br i1 %i.bi, label %.preheader, label %.new

.preheader:                                       ; preds = %bb.q
  %.not60 = icmp eq i32 %i.bh, 0
  br i1 %.not60, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %wide.trip.count67 = zext nneg i32 %i.bh to i64 ; 2 uses
  %xtraiter83 = and i64 %wide.trip.count67, 1
  %i.bj = icmp eq i32 %i.bh, 1
  br i1 %i.bj, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter86 = and i64 %wide.trip.count67, 254
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv64 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next65.1, %.lr.ph ] ; 4 uses
  %niter87 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter87.next.1, %.lr.ph ]
  %i.bk = getelementptr i8, ptr %i.bg, i64 %indvars.iv64
  %i.bl = load i8, ptr %i.bk, align 1
  %i.bm = zext i8 %i.bl to i32                    ; 2 uses
  %i.bn = lshr i32 %i.bm, 4
  %i.bo = zext nneg i32 %i.bn to i64
  %i.bp = getelementptr i8, ptr @json_write_field_hex_value.hex, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1
  %i.br = trunc nuw i64 %indvars.iv64 to i32
  %i.bs = shl nuw nsw i32 %i.br, 1                ; 2 uses
  %i.bt = zext nneg i32 %i.bs to i64
  %i.bu = getelementptr i8, ptr %i.a, i64 %i.bt
  store i8 %i.bq, ptr %i.bu, align 4
  %i.bv = and i32 %i.bm, 15
  %i.bw = zext nneg i32 %i.bv to i64
  %i.bx = getelementptr i8, ptr @json_write_field_hex_value.hex, i64 %i.bw
  %i.by = load i8, ptr %i.bx, align 1
  %2 = zext nneg i32 %i.bs to i64
  %3 = getelementptr i8, ptr %i.a, i64 %2
  %i.bz = getelementptr i8, ptr %3, i64 1
  store i8 %i.by, ptr %i.bz, align 1
  %indvars.iv.next65 = or disjoint i64 %indvars.iv64, 1 ; 2 uses
  %i.ca = getelementptr i8, ptr %i.bg, i64 %indvars.iv.next65
  %i.cb = load i8, ptr %i.ca, align 1
  %i.cc = zext i8 %i.cb to i32                    ; 2 uses
  %i.cd = lshr i32 %i.cc, 4
  %i.ce = zext nneg i32 %i.cd to i64
  %i.cf = getelementptr i8, ptr @json_write_field_hex_value.hex, i64 %i.ce
  %i.cg = load i8, ptr %i.cf, align 1
  %i.ch = trunc nuw i64 %indvars.iv.next65 to i32
  %i.ci = shl nuw nsw i32 %i.ch, 1                ; 2 uses
  %i.cj = zext nneg i32 %i.ci to i64
  %i.ck = getelementptr i8, ptr %i.a, i64 %i.cj
  store i8 %i.cg, ptr %i.ck, align 2
  %i.cl = and i32 %i.cc, 15
  %i.cm = zext nneg i32 %i.cl to i64
  %i.cn = getelementptr i8, ptr @json_write_field_hex_value.hex, i64 %i.cm
  %i.co = load i8, ptr %i.cn, align 1
  %4 = zext nneg i32 %i.ci to i64
  %5 = getelementptr i8, ptr %i.a, i64 %4
  %i.cp = getelementptr i8, ptr %5, i64 1
  store i8 %i.co, ptr %i.cp, align 1
  %indvars.iv.next65.1 = add nuw nsw i64 %indvars.iv64, 2 ; 2 uses
  %niter87.next.1 = add nuw i64 %niter87, 2       ; 2 uses
  %niter87.ncmp.1 = icmp eq i64 %niter87.next.1, %unroll_iter86
  br i1 %niter87.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !68

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod84.not = icmp eq i64 %xtraiter83, 0
  br i1 %lcmp.mod84.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv64.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next65.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod85 = trunc i32 %i.bh to i1
  tail call void @llvm.assume(i1 %lcmp.mod85)
  %i.cq = getelementptr i8, ptr %i.bg, i64 %indvars.iv64.epil.init
  %i.cr = load i8, ptr %i.cq, align 1
  %i.cs = zext i8 %i.cr to i32                    ; 2 uses
  %i.ct = lshr i32 %i.cs, 4
  %i.cu = zext nneg i32 %i.ct to i64
  %i.cv = getelementptr i8, ptr @json_write_field_hex_value.hex, i64 %i.cu
  %i.cw = load i8, ptr %i.cv, align 1
  %i.cx = trunc nuw i64 %indvars.iv64.epil.init to i32
  %i.cy = shl i32 %i.cx, 1                        ; 2 uses
  %i.cz = zext i32 %i.cy to i64
  %i.da = getelementptr i8, ptr %i.a, i64 %i.cz
  store i8 %i.cw, ptr %i.da, align 2
  %i.db = and i32 %i.cs, 15
  %i.dc = zext nneg i32 %i.db to i64
  %i.dd = getelementptr i8, ptr @json_write_field_hex_value.hex, i64 %i.dc
  %i.de = load i8, ptr %i.dd, align 1
  %i.df = or disjoint i32 %i.cy, 1
  %i.dg = zext i32 %i.df to i64
  %i.dh = getelementptr i8, ptr %i.a, i64 %i.dg
  store i8 %i.de, ptr %i.dh, align 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %.preheader
  %i.di = getelementptr i8, ptr %0, i64 32
  %i.dj = load ptr, ptr %i.di, align 8
  %i.dk = shl nuw nsw i32 %i.bh, 1
  %i.dl = zext nneg i32 %i.dk to i64
  call void @json_dumper_value_string_noesc(ptr noundef %i.dj, ptr noundef nonnull %i.a, i64 noundef %i.dl)
  br label %bb.t

.new:                                             ; preds = %bb.q
  %i.dm = shl i32 %i.bh, 1
  %i.dn = zext i32 %i.dm to i64                   ; 2 uses
  %i.do = tail call noalias ptr @g_malloc(i64 noundef %i.dn) #27 ; 8 uses
  %wide.trip.count = zext i32 %i.bh to i64        ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %unroll_iter = and i64 %wide.trip.count, 4294967294
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %.new
  %indvars.iv = phi i64 [ 0, %.new ], [ %indvars.iv.next.1, %bb.r ] ; 4 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.r ]
  %i.dp = getelementptr i8, ptr %i.bg, i64 %indvars.iv
  %i.dq = load i8, ptr %i.dp, align 1
  %i.dr = zext i8 %i.dq to i32                    ; 2 uses
  %i.ds = lshr i32 %i.dr, 4
  %i.dt = zext nneg i32 %i.ds to i64
  %i.du = getelementptr i8, ptr @json_write_field_hex_value.hex, i64 %i.dt
  %i.dv = load i8, ptr %i.du, align 1
  %i.dw = trunc nuw i64 %indvars.iv to i32
  %i.dx = shl i32 %i.dw, 1                        ; 2 uses
  %i.dy = zext i32 %i.dx to i64
  %i.dz = getelementptr i8, ptr %i.do, i64 %i.dy
  store i8 %i.dv, ptr %i.dz, align 1
  %i.ea = and i32 %i.dr, 15
  %i.eb = zext nneg i32 %i.ea to i64
  %i.ec = getelementptr i8, ptr @json_write_field_hex_value.hex, i64 %i.eb
  %i.ed = load i8, ptr %i.ec, align 1
  %i.ee = or disjoint i32 %i.dx, 1
  %i.ef = zext i32 %i.ee to i64
  %i.eg = getelementptr i8, ptr %i.do, i64 %i.ef
  store i8 %i.ed, ptr %i.eg, align 1
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.eh = getelementptr i8, ptr %i.bg, i64 %indvars.iv.next
  %i.ei = load i8, ptr %i.eh, align 1
  %i.ej = zext i8 %i.ei to i32                    ; 2 uses
  %i.ek = lshr i32 %i.ej, 4
  %i.el = zext nneg i32 %i.ek to i64
  %i.em = getelementptr i8, ptr @json_write_field_hex_value.hex, i64 %i.el
  %i.en = load i8, ptr %i.em, align 1
  %i.eo = trunc nuw i64 %indvars.iv.next to i32
  %i.ep = shl i32 %i.eo, 1                        ; 2 uses
  %i.eq = zext i32 %i.ep to i64
  %i.er = getelementptr i8, ptr %i.do, i64 %i.eq
  store i8 %i.en, ptr %i.er, align 1
  %i.es = and i32 %i.ej, 15
  %i.et = zext nneg i32 %i.es to i64
  %i.eu = getelementptr i8, ptr @json_write_field_hex_value.hex, i64 %i.et
  %i.ev = load i8, ptr %i.eu, align 1
  %i.ew = or disjoint i32 %i.ep, 1
  %i.ex = zext i32 %i.ew to i64
  %i.ey = getelementptr i8, ptr %i.do, i64 %i.ex
  store i8 %i.ev, ptr %i.ey, align 1
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %bb.r, !llvm.loop !69

.unr-lcssa:                                       ; preds = %bb.r
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb.s, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa
  %lcmp.mod82 = trunc i32 %i.bh to i1
  tail call void @llvm.assume(i1 %lcmp.mod82)
  %i.ez = getelementptr i8, ptr %i.bg, i64 %indvars.iv.next.1
  %i.fa = load i8, ptr %i.ez, align 1
  %i.fb = zext i8 %i.fa to i32                    ; 2 uses
  %i.fc = lshr i32 %i.fb, 4
  %i.fd = zext nneg i32 %i.fc to i64
  %i.fe = getelementptr i8, ptr @json_write_field_hex_value.hex, i64 %i.fd
  %i.ff = load i8, ptr %i.fe, align 1
  %i.fg = trunc nuw i64 %indvars.iv.next.1 to i32
  %i.fh = shl i32 %i.fg, 1                        ; 2 uses
  %i.fi = zext i32 %i.fh to i64
  %i.fj = getelementptr i8, ptr %i.do, i64 %i.fi
  store i8 %i.ff, ptr %i.fj, align 1
  %i.fk = and i32 %i.fb, 15
  %i.fl = zext nneg i32 %i.fk to i64
  %i.fm = getelementptr i8, ptr @json_write_field_hex_value.hex, i64 %i.fl
  %i.fn = load i8, ptr %i.fm, align 1
  %i.fo = or disjoint i32 %i.fh, 1
  %i.fp = zext i32 %i.fo to i64
  %i.fq = getelementptr i8, ptr %i.do, i64 %i.fp
  store i8 %i.fn, ptr %i.fq, align 1
  br label %bb.s

bb.s:                                             ; preds = %.unr-lcssa, %.epil.preheader
  %i.fr = getelementptr i8, ptr %0, i64 32
  %i.fs = load ptr, ptr %i.fr, align 8
  tail call void @json_dumper_value_string_noesc(ptr noundef %i.fs, ptr noundef %i.do, i64 noundef %i.dn)
  tail call void @g_free(ptr noundef %i.do)
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.u

get_field_data_cached.exit.thread:                ; preds = %bb.o, %get_field_data_source.exit.i.i, %bb.n, %get_field_data_source_cached.exit.i, %get_field_data_cached.exit
  %i.ft = getelementptr i8, ptr %0, i64 32
  %i.fu = load ptr, ptr %i.ft, align 8
  tail call void @json_dumper_value_string_noesc(ptr noundef %i.fu, ptr noundef nonnull @.str.58, i64 noundef 0)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %get_field_data_cached.exit.thread, %bb.k, %bb.i, %bb.f, %bb.e, %bb.d, %bb.c
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @json_dumper_value_int(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @json_dumper_value_uint(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @json_dumper_value_literal(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @write_json_proto_node(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 4 uses
  %i.b = load ptr, ptr %0, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 40
  %.val = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.d = load ptr, ptr %.val, align 8             ; 2 uses
  %i.e = getelementptr i8, ptr %i.d, i64 48
  %i.f = load i32, ptr %i.e, align 8
  %i.g = load i32, ptr @hf_text_only, align 4
  %.not.i = icmp eq i32 %i.f, %i.g
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr i8, ptr %i.d, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  br label %proto_node_to_json_key.exit

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr i8, ptr %.val, i64 32
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %.not6.i = icmp eq ptr %i.k, null
  %.str.58..i = select i1 %.not6.i, ptr @.str.58, ptr %i.k
  br label %proto_node_to_json_key.exit

proto_node_to_json_key.exit:                      ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.i, %bb.b ], [ %.str.58..i, %bb.c ] ; 3 uses
  %i.l = load i8, ptr %1, align 1
  %i.m = icmp eq i8 %i.l, 0
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %proto_node_to_json_key.exit
  %i.n = getelementptr i8, ptr %3, i64 32
  %i.o = load ptr, ptr %i.n, align 8
  tail call void @json_dumper_set_member_name(ptr noundef %i.o, ptr noundef %.0.i)
  br label %bb.j

bb.e:                                             ; preds = %proto_node_to_json_key.exit
end_hunk_0
