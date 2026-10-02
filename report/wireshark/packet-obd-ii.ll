Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-obd-ii?download=true
inline.NumInlined: 3
inline.NumDeleted: 3
begin_hunk_0_@dissect_obdii_response:bb.a
  %i.c = getelementptr i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr i8, ptr %1, i64 8
  %i.f = load i32, ptr %i.e, align 8
  %i.g = getelementptr i8, ptr %i.b, i64 416
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr i8, ptr %1, i64 13         ; 3 uses
  %i.j = load i8, ptr %i.i, align 1
  %i.k = zext i8 %i.j to i32
  %i.l = tail call ptr @val_to_str(ptr noundef %i.h, i32 noundef %i.k, ptr noundef nonnull @obdii_mode_vals, ptr noundef nonnull @.str.308)
  tail call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.d, i32 noundef 25, ptr noundef nonnull @.str.311, i32 noundef %i.f, ptr noundef %i.l)
  %i.m = load i8, ptr %i.i, align 1
  %i.n = icmp eq i8 %i.m, 4
  %i.o = getelementptr i8, ptr %1, i64 12
  %i.p = load i8, ptr %i.o, align 4               ; 2 uses
  %i.q = icmp eq i8 %i.p, 1
  %or.cond = select i1 %i.n, i1 %i.q, i1 false
  br i1 %or.cond, label %bb.b, label %._crit_edge

bb.b:                                             ; preds = %bb.a
  %i.r = tail call i32 @tvb_captured_length(ptr noundef %0)
  br label %bb.ch

._crit_edge:                                      ; preds = %bb.a
  %i.s = add i8 %i.p, -2                          ; 2 uses
  %i.t = getelementptr i8, ptr %1, i64 14         ; 69 uses
  store i8 %i.s, ptr %i.t, align 2
  %.not = icmp eq i8 %i.s, 0
  br i1 %.not, label %.thread43, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.u = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 2)
  %i.v = getelementptr i8, ptr %1, i64 20
  store i8 %i.u, ptr %i.v, align 4
  %.pr = load i8, ptr %i.t, align 2
  %i.w = icmp ugt i8 %.pr, 1
  br i1 %i.w, label %bb.d, label %.thread43

bb.d:                                             ; preds = %bb.c
  %i.x = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 3)
  %i.y = getelementptr i8, ptr %1, i64 21
  store i8 %i.x, ptr %i.y, align 1
  %.pr37 = load i8, ptr %i.t, align 2
  %i.z = icmp ugt i8 %.pr37, 2
  br i1 %i.z, label %.thread38, label %.thread43

.thread38:                                        ; preds = %bb.d
  %i.aa = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 4)
  %i.ab = getelementptr i8, ptr %1, i64 22
  store i8 %i.aa, ptr %i.ab, align 2
  %.pr39.pr = load i8, ptr %i.t, align 2
  %i.ac = icmp ugt i8 %.pr39.pr, 3
  br i1 %i.ac, label %bb.e, label %.thread43

bb.e:                                             ; preds = %.thread38
  %i.ad = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 5)
  %i.ae = getelementptr i8, ptr %1, i64 23
  store i8 %i.ad, ptr %i.ae, align 1
  %.pr41 = load i8, ptr %i.t, align 2
  %i.af = icmp ugt i8 %.pr41, 4
  br i1 %i.af, label %bb.f, label %.thread43

bb.f:                                             ; preds = %bb.e
  %i.ag = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 6)
  %i.ah = getelementptr i8, ptr %1, i64 24
  store i8 %i.ag, ptr %i.ah, align 8
  br label %.thread43

.thread43:                                        ; preds = %bb.c, %._crit_edge, %bb.d, %.thread38, %bb.f, %bb.e
  %i.ai = load i8, ptr %i.i, align 1
  switch i8 %i.ai, label %dissect_obdii_mode_01.exit [
    i8 1, label %bb.g
    i8 7, label %bb.bw
    i8 9, label %bb.cb
  ]

bb.g:                                             ; preds = %.thread43
  %i.aj = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 1) ; 3 uses
  %i.ak = load ptr, ptr %1, align 8               ; 2 uses
  %i.al = getelementptr i8, ptr %i.ak, i64 8
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = getelementptr i8, ptr %i.ak, i64 416
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = zext i8 %i.aj to i32                    ; 6 uses
  %i.aq = tail call ptr @val_to_str_ext(ptr noundef %i.ao, i32 noundef %i.ap, ptr noundef nonnull @obdii_mode01_pid_vals_ext, ptr noundef nonnull @.str.308)
  tail call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.am, i32 noundef 25, ptr noundef nonnull @.str.312, ptr noundef %i.aq)
  %i.ar = load i32, ptr @hf_obdii_mode01_pid, align 4
  %i.as = tail call ptr @proto_tree_add_uint(ptr noundef %2, i32 noundef %i.ar, ptr noundef %0, i32 noundef 1, i32 noundef 1, i32 noundef %i.ap) ; 0 uses
  %i.at = load i32, ptr @hf_obdii_raw_value, align 4
  %i.au = load i8, ptr %i.t, align 2
  %narrow.i = tail call i8 @llvm.umin.i8(i8 %i.au, i8 4)
  %spec.select.i = zext nneg i8 %narrow.i to i32
  %i.av = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.at, ptr noundef %0, i32 noundef 2, i32 noundef %spec.select.i, i32 noundef 0) ; 0 uses
  %i.aw = getelementptr i8, ptr %1, i64 16        ; 2 uses
  store i32 2, ptr %i.aw, align 8
  switch i8 %i.aj, label %.critedge.i [
    i8 0, label %bb.h
    i8 32, label %bb.h
    i8 64, label %bb.h
    i8 96, label %bb.h
    i8 -128, label %bb.h
    i8 -96, label %bb.h
    i8 -64, label %bb.h
    i8 3, label %bb.n
    i8 4, label %.split559.i
    i8 5, label %.split558.i
    i8 6, label %.split557.i
    i8 7, label %.split556.i
    i8 8, label %.split555.i
    i8 9, label %.split554.i
    i8 10, label %bb.p
    i8 12, label %bb.r
    i8 13, label %bb.t
    i8 14, label %bb.v
    i8 15, label %.split545.i
    i8 16, label %bb.x
    i8 17, label %.split542.i
    i8 18, label %bb.z
    i8 19, label %bb.ab
    i8 29, label %bb.ad
    i8 20, label %bb.af
    i8 21, label %bb.af
    i8 22, label %bb.af
    i8 23, label %bb.af
    i8 24, label %bb.af
    i8 25, label %bb.af
    i8 26, label %bb.af
    i8 27, label %bb.af
    i8 28, label %bb.aj
    i8 31, label %bb.al
    i8 34, label %bb.an
    i8 35, label %.split552.i
    i8 89, label %.split550.i
    i8 36, label %bb.ap
    i8 37, label %bb.ap
    i8 38, label %bb.ap
    i8 39, label %bb.ap
    i8 40, label %bb.ap
    i8 41, label %bb.ap
    i8 42, label %bb.ap
    i8 43, label %bb.ap
    i8 44, label %.split543.i
    i8 45, label %.split540.i
    i8 46, label %.split538.i
    i8 47, label %.split536.i
    i8 48, label %bb.ar
    i8 50, label %bb.at
    i8 51, label %.split.i
    i8 11, label %.split560.i
    i8 52, label %bb.av
    i8 53, label %bb.av
    i8 54, label %bb.av
    i8 55, label %bb.av
    i8 56, label %bb.av
    i8 57, label %bb.av
    i8 58, label %bb.av
    i8 59, label %bb.av
    i8 60, label %bb.ax
    i8 61, label %bb.ax
    i8 62, label %bb.ax
    i8 63, label %bb.ax
    i8 66, label %bb.ba
    i8 67, label %bb.bc
    i8 68, label %bb.be
    i8 69, label %.split532.i
    i8 70, label %bb.bs
    i8 71, label %.split561.i
    i8 72, label %.split553.i
    i8 73, label %.split551.i
    i8 74, label %.split549.i
    i8 75, label %.split547.i
    i8 76, label %.split544.i
    i8 33, label %.split541.i
    i8 49, label %.split539.i
    i8 77, label %.split537.i
    i8 78, label %.split535.i
    i8 81, label %bb.bg
    i8 82, label %.split562.i
    i8 83, label %bb.bi
    i8 85, label %bb.bk
    i8 86, label %bb.bk
    i8 87, label %bb.bk
    i8 88, label %bb.bk
    i8 90, label %.split533.i
    i8 91, label %.split531.i
    i8 92, label %.split534.i
    i8 93, label %bb.bm
    i8 94, label %bb.bo
    i8 97, label %.split546.i
    i8 98, label %.split548.i
    i8 99, label %bb.bq
  ]

bb.h:                                             ; preds = %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g
  %i.ax = load i8, ptr %i.t, align 2
  %i.ay = icmp eq i8 %i.ax, 4
  br i1 %i.ay, label %bb.i, label %.critedge.i

bb.i:                                             ; preds = %bb.h
  %i.az = getelementptr i8, ptr %1, i64 20
  %3 = load i8, ptr %i.az, align 4
  %4 = zext i8 %3 to i32
  %5 = shl nuw i32 %4, 24
  %6 = getelementptr i8, ptr %1, i64 21
  %7 = load i8, ptr %6, align 1
  %8 = zext i8 %7 to i32
  %9 = shl nuw nsw i32 %8, 16
  %10 = or disjoint i32 %9, %5
  %11 = getelementptr i8, ptr %1, i64 22
  %12 = load i8, ptr %11, align 2
  %13 = zext i8 %12 to i32
  %14 = shl nuw nsw i32 %13, 8
  %15 = or disjoint i32 %10, %14
  %16 = getelementptr i8, ptr %1, i64 23
  %17 = load i8, ptr %16, align 1
  %18 = zext i8 %17 to i32
  %19 = or disjoint i32 %15, %18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.ba = add nuw nsw i32 %i.ap, 32
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  br label %bb.j

bb.j:                                             ; preds = %bb.l, %bb.i
  %indvars.iv.i = phi i64 [ 31, %bb.i ], [ %indvars.iv.next.i, %bb.l ] ; 4 uses
  %.0499570.i = phi ptr [ @.str.313, %bb.i ], [ %.1.i, %bb.l ] ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, i8 noundef 46, i64 noundef 32, i1 noundef false) #6
  store i8 0, ptr %i.bb, align 16
  %i.bc = trunc nuw nsw i64 %indvars.iv.i to i32  ; 2 uses
  %i.bd = shl nuw i32 1, %i.bc
  %i.be = and i32 %i.bd, %19
  %.not525.i = icmp eq i32 %i.be, 0
  %i.bf = sub i32 %i.ba, %i.bc                    ; 2 uses
  br i1 %.not525.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bg = load ptr, ptr %1, align 8
  %i.bh = getelementptr i8, ptr %i.bg, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8
  call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.bi, i32 noundef 25, ptr noundef nonnull @.str.314, ptr noundef %.0499570.i, i32 noundef %i.bf)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %hf_obdii_mode01_unsupported_pid.sink.i = phi ptr [ @hf_obdii_mode01_supported_pid, %bb.k ], [ @hf_obdii_mode01_unsupported_pid, %bb.j ]
  %.sink.i = phi i8 [ 49, %bb.k ], [ 48, %bb.j ]
  %.1.i = phi ptr [ @.str.315, %bb.k ], [ %.0499570.i, %bb.j ]
  %i.bj = load i32, ptr %hf_obdii_mode01_unsupported_pid.sink.i, align 4
  %i.bk = load i8, ptr %i.t, align 2
  %i.bl = zext i8 %i.bk to i32
  %i.bm = call ptr @proto_tree_add_uint(ptr noundef %2, i32 noundef %i.bj, ptr noundef %0, i32 noundef 2, i32 noundef %i.bl, i32 noundef %i.bf)
  %i.bn = sub nuw nsw i64 31, %indvars.iv.i
  %i.bo = getelementptr i8, ptr %i.a, i64 %i.bn
  store i8 %.sink.i, ptr %i.bo, align 1
  call void (ptr, ptr, ...) @proto_item_prepend_text(ptr noundef %i.bm, ptr noundef nonnull @.str.316, ptr noundef nonnull %i.a)
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %.not573.i = icmp eq i64 %indvars.iv.i, 0
  br i1 %.not573.i, label %bb.m, label %bb.j, !llvm.loop !6

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %dissect_obdii_mode_01.exit

bb.n:                                             ; preds = %bb.g
  %i.bp = load i8, ptr %i.t, align 2
  %i.bq = icmp eq i8 %i.bp, 2
  br i1 %i.bq, label %bb.o, label %.critedge.i

bb.o:                                             ; preds = %bb.n
  %i.br = getelementptr i8, ptr %1, i64 20
  %i.bs = load i8, ptr %i.br, align 4
  %i.bt = getelementptr i8, ptr %1, i64 21
  %i.bu = load i8, ptr %i.bt, align 1
  %i.bv = load ptr, ptr %1, align 8               ; 2 uses
  %i.bw = getelementptr i8, ptr %i.bv, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8
  %i.by = getelementptr i8, ptr %i.bv, i64 416
  %i.bz = load ptr, ptr %i.by, align 8
  %i.ca = zext i8 %i.bs to i32                    ; 2 uses
  %i.cb = tail call ptr @val_to_str(ptr noundef %i.bz, i32 noundef %i.ca, ptr noundef nonnull @obdii_fuel_system_status_vals, ptr noundef nonnull @.str.318)
  tail call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.bx, i32 noundef 25, ptr noundef nonnull @.str.317, ptr noundef %i.cb)
  %i.cc = load ptr, ptr %1, align 8               ; 2 uses
  %i.cd = getelementptr i8, ptr %i.cc, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8
  %i.cf = getelementptr i8, ptr %i.cc, i64 416
  %i.cg = load ptr, ptr %i.cf, align 8
  %i.ch = zext i8 %i.bu to i32                    ; 2 uses
  %i.ci = tail call ptr @val_to_str(ptr noundef %i.cg, i32 noundef %i.ch, ptr noundef nonnull @obdii_fuel_system_status_vals, ptr noundef nonnull @.str.318)
  tail call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.ce, i32 noundef 25, ptr noundef nonnull @.str.319, ptr noundef %i.ci)
  %i.cj = load i32, ptr @hf_obdii_mode01_fuel_system1_status, align 4
  %i.ck = tail call ptr @proto_tree_add_uint(ptr noundef %2, i32 noundef %i.cj, ptr noundef %0, i32 noundef 2, i32 noundef 1, i32 noundef %i.ca) ; 0 uses
  %i.cl = load i32, ptr @hf_obdii_mode01_fuel_system2_status, align 4
  %i.cm = tail call ptr @proto_tree_add_uint(ptr noundef %2, i32 noundef %i.cl, ptr noundef %0, i32 noundef 3, i32 noundef 1, i32 noundef %i.ch) ; 0 uses
  br label %dissect_obdii_mode_01.exit

.split559.i:                                      ; preds = %bb.g
  %i.cn = load i32, ptr @hf_obdii_mode01_engine_load, align 4
  %i.co = tail call fastcc zeroext i1 @dissect_obdii_common_percent(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %i.cn)
  br i1 %i.co, label %dissect_obdii_mode_01.exit, label %.critedge.i

.split558.i:                                      ; preds = %bb.g
  %i.cp = load i32, ptr @hf_obdii_mode01_engine_coolant_temp, align 4
  %i.cq = tail call fastcc zeroext i1 @dissect_obdii_common_temperature(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %i.cp)
  br i1 %i.cq, label %dissect_obdii_mode_01.exit, label %.critedge.i

.split557.i:                                      ; preds = %bb.g
  %i.cr = load i32, ptr @hf_obdii_mode01_short_term_fuel_bank1, align 4
  %i.cs = tail call fastcc zeroext i1 @dissect_obdii_common_percent_neg(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %i.cr)
  br i1 %i.cs, label %dissect_obdii_mode_01.exit, label %.critedge.i

.split556.i:                                      ; preds = %bb.g
  %i.ct = load i32, ptr @hf_obdii_mode01_long_term_fuel_bank1, align 4
  %i.cu = tail call fastcc zeroext i1 @dissect_obdii_common_percent_neg(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %i.ct)
  br i1 %i.cu, label %dissect_obdii_mode_01.exit, label %.critedge.i

.split555.i:                                      ; preds = %bb.g
  %i.cv = load i32, ptr @hf_obdii_mode01_short_term_fuel_bank2, align 4
  %i.cw = tail call fastcc zeroext i1 @dissect_obdii_common_percent_neg(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %i.cv)
  br i1 %i.cw, label %dissect_obdii_mode_01.exit, label %.critedge.i

.split554.i:                                      ; preds = %bb.g
  %i.cx = load i32, ptr @hf_obdii_mode01_long_term_fuel_bank2, align 4
  %i.cy = tail call fastcc zeroext i1 @dissect_obdii_common_percent_neg(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %i.cx)
  br i1 %i.cy, label %dissect_obdii_mode_01.exit, label %.critedge.i

bb.p:                                             ; preds = %bb.g
  %i.cz = load i8, ptr %i.t, align 2
  %i.da = icmp eq i8 %i.cz, 1
  br i1 %i.da, label %bb.q, label %.critedge.i

bb.q:                                             ; preds = %bb.p
  %i.db = getelementptr i8, ptr %1, i64 20
  %i.dc = load i8, ptr %i.db, align 4
  %i.dd = zext i8 %i.dc to i32
  %i.de = mul nuw nsw i32 %i.dd, 3                ; 2 uses
  %i.df = load ptr, ptr %1, align 8
  %i.dg = getelementptr i8, ptr %i.df, i64 8
  %i.dh = load ptr, ptr %i.dg, align 8
  tail call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.dh, i32 noundef 25, ptr noundef nonnull @.str.320, i32 noundef %i.de)
  %i.di = load i32, ptr @hf_obdii_mode01_fuel_pressure, align 4
  %i.dj = load i8, ptr %i.t, align 2
  %i.dk = zext i8 %i.dj to i32
  %i.dl = tail call ptr @proto_tree_add_uint(ptr noundef %2, i32 noundef %i.di, ptr noundef %0, i32 noundef 2, i32 noundef %i.dk, i32 noundef %i.de) ; 0 uses
  br label %dissect_obdii_mode_01.exit

bb.r:                                             ; preds = %bb.g
  %i.dm = load i8, ptr %i.t, align 2
  %i.dn = icmp eq i8 %i.dm, 2
  br i1 %i.dn, label %bb.s, label %.critedge.i

bb.s:                                             ; preds = %bb.r
  %i.do = getelementptr i8, ptr %1, i64 20
  %i.dp = load i8, ptr %i.do, align 4
  %i.dq = zext i8 %i.dp to i32
  %i.dr = shl nuw nsw i32 %i.dq, 8
  %i.ds = getelementptr i8, ptr %1, i64 21
  %i.dt = load i8, ptr %i.ds, align 1
  %i.du = zext i8 %i.dt to i32
  %i.dv = or disjoint i32 %i.dr, %i.du
  %i.dw = uitofp nneg i32 %i.dv to double
  %i.dx = fmul nnan double %i.dw, 2.500000e-01    ; 2 uses
  %i.dy = load ptr, ptr %1, align 8
  %i.dz = getelementptr i8, ptr %i.dy, i64 8
  %i.ea = load ptr, ptr %i.dz, align 8
  tail call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.ea, i32 noundef 25, ptr noundef nonnull @.str.321, double noundef %i.dx)
  %i.eb = load i32, ptr @hf_obdii_mode01_engine_rpm, align 4
  %i.ec = load i8, ptr %i.t, align 2
  %i.ed = zext i8 %i.ec to i32
  %i.ee = tail call ptr @proto_tree_add_double(ptr noundef %2, i32 noundef %i.eb, ptr noundef %0, i32 noundef 2, i32 noundef %i.ed, double noundef %i.dx) ; 0 uses
  br label %dissect_obdii_mode_01.exit

bb.t:                                             ; preds = %bb.g
  %i.ef = load i8, ptr %i.t, align 2
  %i.eg = icmp eq i8 %i.ef, 1
  br i1 %i.eg, label %bb.u, label %.critedge.i

bb.u:                                             ; preds = %bb.t
  %i.eh = getelementptr i8, ptr %1, i64 20
  %i.ei = load i8, ptr %i.eh, align 4
  %i.ej = load ptr, ptr %1, align 8
  %i.ek = getelementptr i8, ptr %i.ej, i64 8
  %i.el = load ptr, ptr %i.ek, align 8
  %i.em = zext i8 %i.ei to i32                    ; 2 uses
  tail call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.el, i32 noundef 25, ptr noundef nonnull @.str.322, i32 noundef %i.em)
  %i.en = load i32, ptr @hf_obdii_mode01_vehicle_speed, align 4
  %i.eo = load i8, ptr %i.t, align 2
  %i.ep = zext i8 %i.eo to i32
  %i.eq = tail call ptr @proto_tree_add_uint(ptr noundef %2, i32 noundef %i.en, ptr noundef %0, i32 noundef 2, i32 noundef %i.ep, i32 noundef %i.em) ; 0 uses
  br label %dissect_obdii_mode_01.exit

bb.v:                                             ; preds = %bb.g
  %i.er = load i8, ptr %i.t, align 2
  %i.es = icmp eq i8 %i.er, 1
  br i1 %i.es, label %bb.w, label %.critedge.i

bb.w:                                             ; preds = %bb.v
  %i.et = getelementptr i8, ptr %1, i64 20
  %i.eu = load i8, ptr %i.et, align 4
  %i.ev = zext i8 %i.eu to i32
  %i.ew = add nsw i32 %i.ev, -128
  %i.ex = sitofp i32 %i.ew to double
  %i.ey = fmul nnan double %i.ex, 5.000000e-01    ; 2 uses
  %i.ez = load ptr, ptr %1, align 8
  %i.fa = getelementptr i8, ptr %i.ez, i64 8
  %i.fb = load ptr, ptr %i.fa, align 8
  tail call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.fb, i32 noundef 25, ptr noundef nonnull @.str.323, double noundef %i.ey)
  %i.fc = load i32, ptr @hf_obdii_mode01_timing_advance, align 4
  %i.fd = load i8, ptr %i.t, align 2
  %i.fe = zext i8 %i.fd to i32
  %i.ff = tail call ptr @proto_tree_add_double(ptr noundef %2, i32 noundef %i.fc, ptr noundef %0, i32 noundef 2, i32 noundef %i.fe, double noundef %i.ey) ; 0 uses
  br label %dissect_obdii_mode_01.exit

.split545.i:                                      ; preds = %bb.g
  %i.fg = load i32, ptr @hf_obdii_mode01_intake_air_temp, align 4
  %i.fh = tail call fastcc zeroext i1 @dissect_obdii_common_temperature(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %i.fg)
  br i1 %i.fh, label %dissect_obdii_mode_01.exit, label %.critedge.i

bb.x:                                             ; preds = %bb.g
  %i.fi = load i8, ptr %i.t, align 2
  %i.fj = icmp eq i8 %i.fi, 2
  br i1 %i.fj, label %bb.y, label %.critedge.i

bb.y:                                             ; preds = %bb.x
  %i.fk = getelementptr i8, ptr %1, i64 20
  %i.fl = load i8, ptr %i.fk, align 4
  %i.fm = zext i8 %i.fl to i32
  %i.fn = shl nuw nsw i32 %i.fm, 8
  %i.fo = getelementptr i8, ptr %1, i64 21
  %i.fp = load i8, ptr %i.fo, align 1
  %i.fq = zext i8 %i.fp to i32
  %i.fr = or disjoint i32 %i.fn, %i.fq
  %i.fs = uitofp nneg i32 %i.fr to double
end_hunk_0
begin_hunk_1_@dissect_obdii_common_temperature:bb.a
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc noundef zeroext i1 @dissect_obdii_common_percent_neg(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 14         ; 2 uses
  %i.b = load i8, ptr %i.a, align 2
  %i.c = icmp eq i8 %i.b, 1                       ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %1, i64 20
  %i.e = load i8, ptr %i.d, align 4
  %i.f = zext i8 %i.e to i32
  %i.g = mul nuw nsw i32 %i.f, 100
  %i.h = uitofp nneg i32 %i.g to double
  %i.i = fmul nnan double %i.h, 7.812500e-03
  %i.j = fadd double %i.i, -1.000000e+02          ; 2 uses
  %i.k = load ptr, ptr %1, align 8
  %i.l = getelementptr i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8
  tail call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.m, i32 noundef 25, ptr noundef nonnull @.str.359, double noundef %i.j)
  %i.n = getelementptr i8, ptr %1, i64 16
  %i.o = load i32, ptr %i.n, align 8
  %i.p = load i8, ptr %i.a, align 2
  %i.q = zext i8 %i.p to i32
  %i.r = tail call ptr @proto_tree_add_double(ptr noundef %2, i32 noundef %3, ptr noundef %0, i32 noundef %i.o, i32 noundef %i.q, double noundef %i.j) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 %i.c
}

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_double(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, double noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc noundef zeroext i1 @dissect_obdii_common_fuel_rail_pressure(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 14         ; 2 uses
  %i.b = load i8, ptr %i.a, align 2
  %i.c = icmp eq i8 %i.b, 2                       ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %1, i64 20
  %i.e = load i8, ptr %i.d, align 4
  %i.f = zext i8 %i.e to i32
  %i.g = shl nuw nsw i32 %i.f, 8
  %i.h = getelementptr i8, ptr %1, i64 21
  %i.i = load i8, ptr %i.h, align 1
  %i.j = zext i8 %i.i to i32
  %i.k = or disjoint i32 %i.g, %i.j
  %i.l = mul nuw nsw i32 %i.k, 10                 ; 2 uses
  %i.m = load ptr, ptr %1, align 8
  %i.n = getelementptr i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  tail call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.o, i32 noundef 25, ptr noundef nonnull @.str.320, i32 noundef %i.l)
  %i.p = getelementptr i8, ptr %1, i64 16
  %i.q = load i32, ptr %i.p, align 8
  %i.r = load i8, ptr %i.a, align 2
  %i.s = zext i8 %i.r to i32
  %i.t = tail call ptr @proto_tree_add_uint(ptr noundef %2, i32 noundef %3, ptr noundef %0, i32 noundef %i.q, i32 noundef %i.s, i32 noundef %i.l) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 %i.c
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc noundef zeroext i1 @dissect_obdii_common_absolute_pressure(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 14         ; 2 uses
  %i.b = load i8, ptr %i.a, align 2
  %i.c = icmp eq i8 %i.b, 1                       ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %1, i64 20
  %i.e = load i8, ptr %i.d, align 4
  %i.f = load ptr, ptr %1, align 8
  %i.g = getelementptr i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = zext i8 %i.e to i32                      ; 2 uses
  tail call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.h, i32 noundef 25, ptr noundef nonnull @.str.320, i32 noundef %i.i)
  %i.j = getelementptr i8, ptr %1, i64 16
  %i.k = load i32, ptr %i.j, align 8
  %i.l = load i8, ptr %i.a, align 2
  %i.m = zext i8 %i.l to i32
  %i.n = tail call ptr @proto_tree_add_uint(ptr noundef %2, i32 noundef %3, ptr noundef %0, i32 noundef %i.k, i32 noundef %i.m, i32 noundef %i.i) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 %i.c
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc noundef zeroext i1 @dissect_obdii_common_distance_travelled(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 14         ; 2 uses
  %i.b = load i8, ptr %i.a, align 2
  %i.c = icmp eq i8 %i.b, 2                       ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %1, i64 20
  %i.e = load i8, ptr %i.d, align 4
  %i.f = zext i8 %i.e to i32
  %i.g = shl nuw nsw i32 %i.f, 8
  %i.h = getelementptr i8, ptr %1, i64 21
  %i.i = load i8, ptr %i.h, align 1
  %i.j = zext i8 %i.i to i32
  %i.k = or disjoint i32 %i.g, %i.j               ; 2 uses
  %i.l = load ptr, ptr %1, align 8
  %i.m = getelementptr i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  tail call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.n, i32 noundef 25, ptr noundef nonnull @.str.361, i32 noundef %i.k)
  %i.o = getelementptr i8, ptr %1, i64 16
  %i.p = load i32, ptr %i.o, align 8
  %i.q = load i8, ptr %i.a, align 2
  %i.r = zext i8 %i.q to i32
  %i.s = tail call ptr @proto_tree_add_uint(ptr noundef %2, i32 noundef %3, ptr noundef %0, i32 noundef %i.p, i32 noundef %i.r, i32 noundef %i.k) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 %i.c
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc noundef zeroext i1 @dissect_obdii_common_time(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 14         ; 2 uses
  %i.b = load i8, ptr %i.a, align 2
  %i.c = icmp eq i8 %i.b, 2                       ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %1, i64 20
  %i.e = load i8, ptr %i.d, align 4
  %i.f = zext i8 %i.e to i32
  %i.g = shl nuw nsw i32 %i.f, 8
  %i.h = getelementptr i8, ptr %1, i64 21
  %i.i = load i8, ptr %i.h, align 1
  %i.j = zext i8 %i.i to i32
  %i.k = or disjoint i32 %i.g, %i.j               ; 2 uses
  %i.l = load ptr, ptr %1, align 8
  %i.m = getelementptr i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  tail call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.n, i32 noundef 25, ptr noundef nonnull @.str.362, i32 noundef %i.k)
  %i.o = getelementptr i8, ptr %1, i64 16
  %i.p = load i32, ptr %i.o, align 8
  %i.q = load i8, ptr %i.a, align 2
  %i.r = zext i8 %i.q to i32
  %i.s = tail call ptr @proto_tree_add_uint(ptr noundef %2, i32 noundef %3, ptr noundef %0, i32 noundef %i.p, i32 noundef %i.r, i32 noundef %i.k) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 %i.c
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc noundef zeroext i1 @dissect_obdii_common_torque(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 14         ; 2 uses
  %i.b = load i8, ptr %i.a, align 2
  %i.c = icmp eq i8 %i.b, 1                       ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %1, i64 20
  %i.e = load i8, ptr %i.d, align 4
  %i.f = zext i8 %i.e to i32
  %i.g = add nsw i32 %i.f, -125                   ; 2 uses
  %i.h = load ptr, ptr %1, align 8
  %i.i = getelementptr i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  tail call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.j, i32 noundef 25, ptr noundef nonnull @.str.363, i32 noundef %i.g)
  %i.k = getelementptr i8, ptr %1, i64 16
  %i.l = load i32, ptr %i.k, align 8
  %i.m = load i8, ptr %i.a, align 2
  %i.n = zext i8 %i.m to i32
  %i.o = tail call ptr @proto_tree_add_int(ptr noundef %2, i32 noundef %3, ptr noundef %0, i32 noundef %i.l, i32 noundef %i.n, i32 noundef %i.g) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 %i.c
}

; Function Attrs: null_pointer_is_valid
declare void @col_append_str(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_int(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

attributes #0 = { null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nounwind }
attributes #7 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 8, !"cf-protection-return", i32 1}
!1 = !{i32 8, !"cf-protection-branch", i32 1}
!2 = !{i32 4, !"probe-stack", !"inline-asm"}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
end_hunk_1
