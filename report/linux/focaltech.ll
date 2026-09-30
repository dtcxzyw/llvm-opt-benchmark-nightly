Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/focaltech?download=true
inline.NumInlined: 35
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@focaltech_init:bb.a
  %i.aq = getelementptr i8, ptr %i.ap, i64 336
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.aq, ptr noundef nonnull %.str.3.sink) #12
  %i.ar = call i32 @ps2_command(ptr noundef %i.d, ptr noundef null, i32 noundef 246) #8 ; 0 uses
  %i.as = call i32 @psmouse_reset(ptr noundef %0) #8 ; 0 uses
  call void @kfree(ptr noundef nonnull %i.c) #8
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %bb.j, %focaltech_set_input_params.exit
  %.0 = phi i32 [ %.029, %bb.j ], [ 0, %focaltech_set_input_params.exit ], [ -12, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @focaltech_reset(ptr noundef %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = tail call i32 @ps2_command(ptr noundef %i.a, ptr noundef null, i32 noundef 246) #8 ; 0 uses
  %i.c = tail call i32 @psmouse_reset(ptr noundef %0) #8 ; 0 uses
  ret void
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc range(i32 -5, 1) i32 @focaltech_switch_protocol(ptr noundef %0) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca [3 x i8], align 1                 ; 10 uses
  %i.b = getelementptr i8, ptr %0, i64 16         ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.a, i8 0, i64 3, i1 false)
  %i.c = call i32 @ps2_command(ptr noundef %i.b, ptr noundef nonnull %i.a, i32 noundef 4344) #8
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.d = call i32 @ps2_command(ptr noundef %i.b, ptr noundef nonnull %i.a, i32 noundef 4344) #8
  %.not7 = icmp eq i32 %i.d, 0
  br i1 %.not7, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.e = call i32 @ps2_command(ptr noundef %i.b, ptr noundef nonnull %i.a, i32 noundef 4344) #8
  %.not8 = icmp eq i32 %i.e, 0
  br i1 %.not8, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  store i8 1, ptr %i.a, align 1
  %i.f = call i32 @ps2_command(ptr noundef %i.b, ptr noundef nonnull %i.a, i32 noundef 4344) #8
  %.not9 = icmp eq i32 %i.f, 0
  br i1 %.not9, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.g = call i32 @ps2_command(ptr noundef %i.b, ptr noundef nonnull %i.a, i32 noundef 230) #8
  %.not10 = icmp eq i32 %i.g, 0
  br i1 %.not10, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.h = call i32 @ps2_command(ptr noundef %i.b, ptr noundef nonnull %i.a, i32 noundef 244) #8
  %.not11 = icmp eq i32 %i.h, 0
  %. = select i1 %.not11, i32 0, i32 -5
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ -5, %bb.e ], [ -5, %bb.a ], [ -5, %bb.b ], [ -5, %bb.c ], [ -5, %bb.d ], [ %., %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i32 1, 3) i32 @focaltech_process_byte(ptr nofree noundef readonly captures(none) %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 177
  %i.b = load i8, ptr %i.a, align 1
  %i.c = icmp ugt i8 %i.b, 5
  br i1 %i.c, label %bb.b, label %bb.aj

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 168        ; 2 uses
  %i.e = load i8, ptr %i.d, align 1               ; 4 uses
  %i.f = zext i8 %i.e to i32                      ; 2 uses
  %i.g = and i32 %i.f, 15
  switch i32 %i.g, label %bb.u [
    i32 3, label %bb.c
    i32 6, label %bb.m
    i32 9, label %bb.p
  ]

bb.c:                                             ; preds = %bb.b
  %.val.i = load ptr, ptr %0, align 8             ; 11 uses
  %i.h = getelementptr i8, ptr %0, i64 169
  %.val12.i = load i8, ptr %i.h, align 1          ; 6 uses
  %i.i = getelementptr i8, ptr %.val.i, i64 8
  %i.j = getelementptr i8, ptr %.val.i, i64 72
  %i.k = lshr i8 %i.e, 4
  %.lobit.i.i = and i8 %i.k, 1
  store i8 %.lobit.i.i, ptr %i.j, align 4
  %i.l = trunc i8 %.val12.i to i1
  %i.m = and i8 %.val12.i, 1
  store i8 %i.m, ptr %i.i, align 4
  br i1 %i.l, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr i8, ptr %.val.i, i64 9
  store i8 0, ptr %i.n, align 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.o = lshr i8 %.val12.i, 1                     ; 2 uses
  %i.p = trunc i8 %i.o to i1
  %i.q = getelementptr i8, ptr %.val.i, i64 20
  %i.r = and i8 %i.o, 1
  store i8 %i.r, ptr %i.q, align 4
  br i1 %i.p, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr i8, ptr %.val.i, i64 21
  store i8 0, ptr %i.s, align 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.t = lshr i8 %.val12.i, 2                     ; 2 uses
  %i.u = trunc i8 %i.t to i1
  %i.v = getelementptr i8, ptr %.val.i, i64 32
  %i.w = and i8 %i.t, 1
  store i8 %i.w, ptr %i.v, align 4
  br i1 %i.u, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr i8, ptr %.val.i, i64 33
  store i8 0, ptr %i.x, align 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.y = lshr i8 %.val12.i, 3                     ; 2 uses
  %i.z = trunc i8 %i.y to i1
  %i.aa = getelementptr i8, ptr %.val.i, i64 44
  %i.ab = and i8 %i.y, 1
  store i8 %i.ab, ptr %i.aa, align 4
  br i1 %i.z, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = getelementptr i8, ptr %.val.i, i64 45
  store i8 0, ptr %i.ac, align 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ad = lshr i8 %.val12.i, 4                    ; 2 uses
  %i.ae = trunc i8 %i.ad to i1
  %i.af = getelementptr i8, ptr %.val.i, i64 56
  %i.ag = and i8 %i.ad, 1
  store i8 %i.ag, ptr %i.af, align 4
  br i1 %i.ae, label %focaltech_process_touch_packet.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ah = getelementptr i8, ptr %.val.i, i64 57
  store i8 0, ptr %i.ah, align 1
  br label %focaltech_process_touch_packet.exit.i

bb.m:                                             ; preds = %bb.b
  %i.ai = getelementptr i8, ptr %0, i64 169       ; 2 uses
  %i.aj = load i8, ptr %i.ai, align 1
  %i.ak = lshr i8 %i.aj, 4
  %i.al = zext nneg i8 %i.ak to i32
  %i.am = add nsw i32 %i.al, -1                   ; 3 uses
  %i.an = icmp ugt i32 %i.am, 4
  br i1 %i.an, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ao = getelementptr i8, ptr %0, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = getelementptr i8, ptr %i.ap, i64 336
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.aq, ptr noundef nonnull @.str.10, i32 noundef %i.am) #12
  br label %focaltech_process_touch_packet.exit.i

bb.o:                                             ; preds = %bb.m
  %i.ar = load ptr, ptr %0, align 8               ; 3 uses
  %i.as = getelementptr i8, ptr %i.ar, i64 8
  %i.at = getelementptr i8, ptr %i.ar, i64 72
  %i.au = lshr i8 %i.e, 4
  %.lobit.i15.i = and i8 %i.au, 1
  store i8 %.lobit.i15.i, ptr %i.at, align 4
  %i.av = load i8, ptr %i.ai, align 1
  %i.aw = and i8 %i.av, 15
  %i.ax = zext nneg i8 %i.aw to i32
  %i.ay = shl nuw nsw i32 %i.ax, 8
  %i.az = getelementptr i8, ptr %0, i64 170
  %i.ba = load i8, ptr %i.az, align 2
  %i.bb = zext i8 %i.ba to i32
  %i.bc = or disjoint i32 %i.ay, %i.bb
  %i.bd = zext nneg i32 %i.am to i64
  %i.be = getelementptr [12 x i8], ptr %i.as, i64 %i.bd ; 3 uses
  %i.bf = getelementptr i8, ptr %i.be, i64 4
  store i32 %i.bc, ptr %i.bf, align 4
  %i.bg = getelementptr i8, ptr %0, i64 171
  %1 = load i8, ptr %i.bg, align 1
  %2 = zext i8 %1 to i32
  %3 = shl nuw nsw i32 %2, 8
  %4 = getelementptr i8, ptr %0, i64 172
  %5 = load i8, ptr %4, align 4
  %i.bh = zext i8 %5 to i32
  %6 = or disjoint i32 %3, %i.bh
  %i.bi = getelementptr i8, ptr %i.be, i64 8
  store i32 %6, ptr %i.bi, align 4
  %i.bj = getelementptr i8, ptr %0, i64 173
  %i.bk = load i8, ptr %i.bj, align 1
  %i.bl = lshr i8 %i.bk, 4
  %i.bm = zext nneg i8 %i.bl to i32
  %i.bn = getelementptr i8, ptr %i.ar, i64 68
  store i32 %i.bm, ptr %i.bn, align 4
  %i.bo = getelementptr i8, ptr %i.be, i64 1
  store i8 1, ptr %i.bo, align 1
  br label %focaltech_process_touch_packet.exit.i

bb.p:                                             ; preds = %bb.b
  %i.bp = load ptr, ptr %0, align 8               ; 2 uses
  %i.bq = getelementptr i8, ptr %i.bp, i64 8      ; 2 uses
  %i.br = getelementptr i8, ptr %i.bp, i64 72
  %.lobit.i16.i = lshr i8 %i.e, 7
  store i8 %.lobit.i16.i, ptr %i.br, align 4
  %i.bs = load i8, ptr %i.d, align 8
  %i.bt = lshr i8 %i.bs, 4
  %i.bu = and i8 %i.bt, 7                         ; 2 uses
  %i.bv = zext nneg i8 %i.bu to i32
  %i.bw = add nsw i32 %i.bv, -1                   ; 2 uses
  %i.bx = icmp samesign ult i8 %i.bu, 6
  br i1 %i.bx, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.by = getelementptr i8, ptr %0, i64 169
  %i.bz = load i8, ptr %i.by, align 1
  %i.ca = sext i8 %i.bz to i32
  %i.cb = sext i32 %i.bw to i64
  %i.cc = getelementptr [12 x i8], ptr %i.bq, i64 %i.cb ; 2 uses
  %i.cd = getelementptr i8, ptr %i.cc, i64 4      ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 4
  %i.cf = add i32 %i.ce, %i.ca
  store i32 %i.cf, ptr %i.cd, align 4
  %i.cg = getelementptr i8, ptr %0, i64 170
  %i.ch = load i8, ptr %i.cg, align 2
  %i.ci = sext i8 %i.ch to i32
  %i.cj = getelementptr i8, ptr %i.cc, i64 8      ; 2 uses
  %i.ck = load i32, ptr %i.cj, align 4
  %i.cl = add i32 %i.ck, %i.ci
  store i32 %i.cl, ptr %i.cj, align 4
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.cm = getelementptr i8, ptr %0, i64 16
  %i.cn = load ptr, ptr %i.cm, align 8
  %i.co = getelementptr i8, ptr %i.cn, i64 336
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.co, ptr noundef nonnull @.str.11, i32 noundef %i.bw) #12
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.cp = getelementptr i8, ptr %0, i64 171
  %i.cq = load i8, ptr %i.cp, align 1
  %i.cr = lshr i8 %i.cq, 4
  %i.cs = and i8 %i.cr, 7                         ; 2 uses
  %i.ct = icmp samesign ult i8 %i.cs, 6
  br i1 %i.ct, label %bb.t, label %focaltech_process_touch_packet.exit.i

bb.t:                                             ; preds = %bb.s
  %i.cu = zext nneg i8 %i.cs to i64
  %i.cv = getelementptr i8, ptr %0, i64 172
  %i.cw = load i8, ptr %i.cv, align 4
  %i.cx = sext i8 %i.cw to i32
  %i.cy = getelementptr [12 x i8], ptr %i.bq, i64 %i.cu ; 2 uses
  %i.cz = getelementptr i8, ptr %i.cy, i64 -8     ; 2 uses
  %i.da = load i32, ptr %i.cz, align 4
  %i.db = add i32 %i.da, %i.cx
  store i32 %i.db, ptr %i.cz, align 4
  %i.dc = getelementptr i8, ptr %0, i64 173
  %i.dd = load i8, ptr %i.dc, align 1
  %i.de = sext i8 %i.dd to i32
  %i.df = getelementptr i8, ptr %i.cy, i64 -4     ; 2 uses
  %i.dg = load i32, ptr %i.df, align 4
  %i.dh = add i32 %i.dg, %i.de
  store i32 %i.dh, ptr %i.df, align 4
  br label %focaltech_process_touch_packet.exit.i

bb.u:                                             ; preds = %bb.b
  %i.di = getelementptr i8, ptr %0, i64 16
  %i.dj = load ptr, ptr %i.di, align 8
  %i.dk = getelementptr i8, ptr %i.dj, i64 336
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.dk, ptr noundef nonnull @.str.9, i32 noundef %i.f) #12
  br label %focaltech_process_touch_packet.exit.i

focaltech_process_touch_packet.exit.i:            ; preds = %bb.u, %bb.t, %bb.s, %bb.o, %bb.n, %bb.l, %bb.k
  %.val13.i = load ptr, ptr %0, align 8           ; 28 uses
  %i.dl = getelementptr i8, ptr %0, i64 8
  %.val14.i = load ptr, ptr %i.dl, align 8        ; 38 uses
  %i.dm = getelementptr i8, ptr %.val13.i, i64 8
  %i.dn = getelementptr i8, ptr %.val13.i, i64 4  ; 10 uses
  %i.do = getelementptr i8, ptr %.val13.i, i64 68 ; 5 uses
  %i.dp = load i8, ptr %i.dm, align 4, !range !14, !noundef !15
  %i.dq = trunc nuw i8 %i.dp to i1
  br i1 %i.dq, label %bb.v, label %.critedge.i.i

bb.v:                                             ; preds = %focaltech_process_touch_packet.exit.i
  %i.dr = getelementptr i8, ptr %.val13.i, i64 9
  %i.ds = load i8, ptr %i.dr, align 1, !range !14, !noundef !15
  %i.dt = trunc nuw i8 %i.ds to i1                ; 2 uses
  tail call void @input_event(ptr noundef %.val14.i, i32 noundef 3, i32 noundef 47, i32 noundef range(i32 -2147483648, 5) 0) #8
  %i.du = tail call zeroext i1 @input_mt_report_slot_state(ptr noundef %.val14.i, i32 noundef 0, i1 noundef zeroext %i.dt) #8 ; 0 uses
  br i1 %i.dt, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.dv = getelementptr i8, ptr %.val13.i, i64 12
  %i.dw = load i32, ptr %i.dv, align 4
  %i.dx = load i32, ptr %.val13.i, align 4
  %i.dy = tail call i32 @llvm.umin.i32(i32 %i.dw, i32 %i.dx)
  %i.dz = getelementptr i8, ptr %.val13.i, i64 16
  %i.ea = load i32, ptr %i.dz, align 4
  %i.eb = load i32, ptr %i.dn, align 4
  %i.ec = tail call i32 @llvm.umin.i32(i32 %i.ea, i32 %i.eb)
  tail call void @input_event(ptr noundef %.val14.i, i32 noundef 3, i32 noundef 53, i32 noundef %i.dy) #8
  %i.ed = load i32, ptr %i.dn, align 4
  %i.ee = sub i32 %i.ed, %i.ec
  tail call void @input_event(ptr noundef %.val14.i, i32 noundef 3, i32 noundef 54, i32 noundef %i.ee) #8
  %i.ef = load i32, ptr %i.do, align 4
  tail call void @input_event(ptr noundef %.val14.i, i32 noundef 3, i32 noundef 28, i32 noundef %i.ef) #8
  br label %bb.x

.critedge.i.i:                                    ; preds = %focaltech_process_touch_packet.exit.i
  tail call void @input_event(ptr noundef %.val14.i, i32 noundef 3, i32 noundef 47, i32 noundef range(i32 -2147483648, 5) 0) #8
  %i.eg = tail call zeroext i1 @input_mt_report_slot_state(ptr noundef %.val14.i, i32 noundef 0, i1 noundef zeroext false) #8 ; 0 uses
  br label %bb.x

bb.x:                                             ; preds = %.critedge.i.i, %bb.w, %bb.v
  %i.eh = getelementptr i8, ptr %.val13.i, i64 20
  %i.ei = load i8, ptr %i.eh, align 4, !range !14, !noundef !15
  %i.ej = trunc nuw i8 %i.ei to i1
  br i1 %i.ej, label %bb.y, label %.critedge.1.i.i

.critedge.1.i.i:                                  ; preds = %bb.x
  tail call void @input_event(ptr noundef %.val14.i, i32 noundef 3, i32 noundef 47, i32 noundef range(i32 -2147483648, 5) 1) #8
  %i.ek = tail call zeroext i1 @input_mt_report_slot_state(ptr noundef %.val14.i, i32 noundef 0, i1 noundef zeroext false) #8 ; 0 uses
  br label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.el = getelementptr i8, ptr %.val13.i, i64 21
  %i.em = load i8, ptr %i.el, align 1, !range !14, !noundef !15
  %i.en = trunc nuw i8 %i.em to i1                ; 2 uses
  tail call void @input_event(ptr noundef %.val14.i, i32 noundef 3, i32 noundef 47, i32 noundef range(i32 -2147483648, 5) 1) #8
  %i.eo = tail call zeroext i1 @input_mt_report_slot_state(ptr noundef %.val14.i, i32 noundef 0, i1 noundef zeroext %i.en) #8 ; 0 uses
  br i1 %i.en, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.ep = getelementptr i8, ptr %.val13.i, i64 24
  %i.eq = load i32, ptr %i.ep, align 4
  %i.er = load i32, ptr %.val13.i, align 4
  %i.es = tail call i32 @llvm.umin.i32(i32 %i.eq, i32 %i.er)
  %i.et = getelementptr i8, ptr %.val13.i, i64 28
  %i.eu = load i32, ptr %i.et, align 4
  %i.ev = load i32, ptr %i.dn, align 4
  %i.ew = tail call i32 @llvm.umin.i32(i32 %i.eu, i32 %i.ev)
  tail call void @input_event(ptr noundef %.val14.i, i32 noundef 3, i32 noundef 53, i32 noundef %i.es) #8
  %i.ex = load i32, ptr %i.dn, align 4
  %i.ey = sub i32 %i.ex, %i.ew
  tail call void @input_event(ptr noundef %.val14.i, i32 noundef 3, i32 noundef 54, i32 noundef %i.ey) #8
  %i.ez = load i32, ptr %i.do, align 4
  tail call void @input_event(ptr noundef %.val14.i, i32 noundef 3, i32 noundef 28, i32 noundef %i.ez) #8
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %.critedge.1.i.i
  %i.fa = getelementptr i8, ptr %.val13.i, i64 32
  %i.fb = load i8, ptr %i.fa, align 4, !range !14, !noundef !15
  %i.fc = trunc nuw i8 %i.fb to i1
  br i1 %i.fc, label %bb.ab, label %.critedge.2.i.i

.critedge.2.i.i:                                  ; preds = %bb.aa
  tail call void @input_event(ptr noundef %.val14.i, i32 noundef 3, i32 noundef 47, i32 noundef range(i32 -2147483648, 5) 2) #8
  %i.fd = tail call zeroext i1 @input_mt_report_slot_state(ptr noundef %.val14.i, i32 noundef 0, i1 noundef zeroext false) #8 ; 0 uses
  br label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %i.fe = getelementptr i8, ptr %.val13.i, i64 33
  %i.ff = load i8, ptr %i.fe, align 1, !range !14, !noundef !15
  %i.fg = trunc nuw i8 %i.ff to i1                ; 2 uses
  tail call void @input_event(ptr noundef %.val14.i, i32 noundef 3, i32 noundef 47, i32 noundef range(i32 -2147483648, 5) 2) #8
  %i.fh = tail call zeroext i1 @input_mt_report_slot_state(ptr noundef %.val14.i, i32 noundef 0, i1 noundef zeroext %i.fg) #8 ; 0 uses
  br i1 %i.fg, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.fi = getelementptr i8, ptr %.val13.i, i64 36
  %i.fj = load i32, ptr %i.fi, align 4
  %i.fk = load i32, ptr %.val13.i, align 4
  %i.fl = tail call i32 @llvm.umin.i32(i32 %i.fj, i32 %i.fk)
  %i.fm = getelementptr i8, ptr %.val13.i, i64 40
  %i.fn = load i32, ptr %i.fm, align 4
  %i.fo = load i32, ptr %i.dn, align 4
  %i.fp = tail call i32 @llvm.umin.i32(i32 %i.fn, i32 %i.fo)
  tail call void @input_event(ptr noundef %.val14.i, i32 noundef 3, i32 noundef 53, i32 noundef %i.fl) #8
  %i.fq = load i32, ptr %i.dn, align 4
  %i.fr = sub i32 %i.fq, %i.fp
  tail call void @input_event(ptr noundef %.val14.i, i32 noundef 3, i32 noundef 54, i32 noundef %i.fr) #8
  %i.fs = load i32, ptr %i.do, align 4
  tail call void @input_event(ptr noundef %.val14.i, i32 noundef 3, i32 noundef 28, i32 noundef %i.fs) #8
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %.critedge.2.i.i
  %i.ft = getelementptr i8, ptr %.val13.i, i64 44
  %i.fu = load i8, ptr %i.ft, align 4, !range !14, !noundef !15
  %i.fv = trunc nuw i8 %i.fu to i1
  br i1 %i.fv, label %bb.ae, label %.critedge.3.i.i

.critedge.3.i.i:                                  ; preds = %bb.ad
  tail call void @input_event(ptr noundef %.val14.i, i32 noundef 3, i32 noundef 47, i32 noundef range(i32 -2147483648, 5) 3) #8
  %i.fw = tail call zeroext i1 @input_mt_report_slot_state(ptr noundef %.val14.i, i32 noundef 0, i1 noundef zeroext false) #8 ; 0 uses
  br label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  %i.fx = getelementptr i8, ptr %.val13.i, i64 45
  %i.fy = load i8, ptr %i.fx, align 1, !range !14, !noundef !15
  %i.fz = trunc nuw i8 %i.fy to i1                ; 2 uses
  tail call void @input_event(ptr noundef %.val14.i, i32 noundef 3, i32 noundef 47, i32 noundef range(i32 -2147483648, 5) 3) #8
  %i.ga = tail call zeroext i1 @input_mt_report_slot_state(ptr noundef %.val14.i, i32 noundef 0, i1 noundef zeroext %i.fz) #8 ; 0 uses
  br i1 %i.fz, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.gb = getelementptr i8, ptr %.val13.i, i64 48
  %i.gc = load i32, ptr %i.gb, align 4
  %i.gd = load i32, ptr %.val13.i, align 4
  %i.ge = tail call i32 @llvm.umin.i32(i32 %i.gc, i32 %i.gd)
  %i.gf = getelementptr i8, ptr %.val13.i, i64 52
  %i.gg = load i32, ptr %i.gf, align 4
  %i.gh = load i32, ptr %i.dn, align 4
  %i.gi = tail call i32 @llvm.umin.i32(i32 %i.gg, i32 %i.gh)
  tail call void @input_event(ptr noundef %.val14.i, i32 noundef 3, i32 noundef 53, i32 noundef %i.ge) #8
  %i.gj = load i32, ptr %i.dn, align 4
  %i.gk = sub i32 %i.gj, %i.gi
  tail call void @input_event(ptr noundef %.val14.i, i32 noundef 3, i32 noundef 54, i32 noundef %i.gk) #8
  %i.gl = load i32, ptr %i.do, align 4
  tail call void @input_event(ptr noundef %.val14.i, i32 noundef 3, i32 noundef 28, i32 noundef %i.gl) #8
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %.critedge.3.i.i
  %i.gm = getelementptr i8, ptr %.val13.i, i64 56
  %i.gn = load i8, ptr %i.gm, align 4, !range !14, !noundef !15
  %i.go = trunc nuw i8 %i.gn to i1
  br i1 %i.go, label %bb.ah, label %.critedge.4.i.i

.critedge.4.i.i:                                  ; preds = %bb.ag
  tail call void @input_event(ptr noundef %.val14.i, i32 noundef 3, i32 noundef 47, i32 noundef range(i32 -2147483648, 5) 4) #8
  %i.gp = tail call zeroext i1 @input_mt_report_slot_state(ptr noundef %.val14.i, i32 noundef 0, i1 noundef zeroext false) #8 ; 0 uses
  br label %focaltech_process_packet.exit

bb.ah:                                            ; preds = %bb.ag
  %i.gq = getelementptr i8, ptr %.val13.i, i64 57
  %i.gr = load i8, ptr %i.gq, align 1, !range !14, !noundef !15
  %i.gs = trunc nuw i8 %i.gr to i1                ; 2 uses
  tail call void @input_event(ptr noundef %.val14.i, i32 noundef 3, i32 noundef 47, i32 noundef range(i32 -2147483648, 5) 4) #8
  %i.gt = tail call zeroext i1 @input_mt_report_slot_state(ptr noundef %.val14.i, i32 noundef 0, i1 noundef zeroext %i.gs) #8 ; 0 uses
  br i1 %i.gs, label %bb.ai, label %focaltech_process_packet.exit

bb.ai:                                            ; preds = %bb.ah
  %i.gu = getelementptr i8, ptr %.val13.i, i64 60
  %i.gv = load i32, ptr %i.gu, align 4
  %i.gw = load i32, ptr %.val13.i, align 4
  %i.gx = tail call i32 @llvm.umin.i32(i32 %i.gv, i32 %i.gw)
  %i.gy = getelementptr i8, ptr %.val13.i, i64 64
  %i.gz = load i32, ptr %i.gy, align 4
  %i.ha = load i32, ptr %i.dn, align 4
  %i.hb = tail call i32 @llvm.umin.i32(i32 %i.gz, i32 %i.ha)
  tail call void @input_event(ptr noundef %.val14.i, i32 noundef 3, i32 noundef 53, i32 noundef %i.gx) #8
  %i.hc = load i32, ptr %i.dn, align 4
  %i.hd = sub i32 %i.hc, %i.hb
  tail call void @input_event(ptr noundef %.val14.i, i32 noundef 3, i32 noundef 54, i32 noundef %i.hd) #8
  %i.he = load i32, ptr %i.do, align 4
  tail call void @input_event(ptr noundef %.val14.i, i32 noundef 3, i32 noundef 28, i32 noundef %i.he) #8
  br label %focaltech_process_packet.exit

focaltech_process_packet.exit:                    ; preds = %.critedge.4.i.i, %bb.ah, %bb.ai
  tail call void @input_mt_report_pointer_emulation(ptr noundef %.val14.i, i1 noundef zeroext true) #8
  %i.hf = getelementptr i8, ptr %.val13.i, i64 72
  %i.hg = load i8, ptr %i.hf, align 4, !range !14, !noundef !15
  %i.hh = zext nneg i8 %i.hg to i32
  tail call void @input_event(ptr noundef %.val14.i, i32 noundef 1, i32 noundef 272, i32 noundef range(i32 0, 2) %i.hh) #8
  tail call void @input_event(ptr noundef %.val14.i, i32 noundef 0, i32 noundef 0, i32 noundef 0) #8
  br label %bb.aj

bb.aj:                                            ; preds = %bb.a, %focaltech_process_packet.exit
  %.0 = phi i32 [ 2, %focaltech_process_packet.exit ], [ 1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @focaltech_disconnect(ptr noundef %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = tail call i32 @ps2_command(ptr noundef %i.a, ptr noundef null, i32 noundef 246) #8 ; 0 uses
  %i.c = tail call i32 @psmouse_reset(ptr noundef %0) #8 ; 0 uses
  %i.d = load ptr, ptr %0, align 8
  tail call void @kfree(ptr noundef %i.d) #8
  store ptr null, ptr %0, align 8
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i32 -5, 1) i32 @focaltech_reconnect(ptr noundef %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.b = tail call i32 @ps2_command(ptr noundef %i.a, ptr noundef null, i32 noundef 246) #8 ; 0 uses
  %i.c = tail call i32 @psmouse_reset(ptr noundef %0) #8 ; 0 uses
  %i.d = tail call fastcc i32 @focaltech_switch_protocol(ptr noundef %0) #11, !srcloc !16 ; 2 uses
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8
  %i.f = getelementptr i8, ptr %i.e, i64 336
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.f, ptr noundef nonnull @.str.3) #12
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i32 %i.d
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none)
define internal void @focaltech_set_resolution(ptr nofree readnone captures(none) %0, i32 %1) #4 align 16 prefalign(16) {
bb.a:
  ret void
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none)
define internal void @focaltech_set_rate(ptr nofree readnone captures(none) %0, i32 %1) #4 align 16 prefalign(16) {
bb.a:
  ret void
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none)
define internal void @focaltech_set_scale(ptr nofree readnone captures(none) %0, i32 %1) #4 align 16 prefalign(16) {
bb.a:
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @__kmalloc_cache_noprof(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @ps2_command(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @psmouse_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @input_set_abs_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @input_mt_init_slots(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @input_mt_report_slot_state(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @input_mt_report_pointer_emulation(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #7

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #1 = { noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { cold noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #5 = { noredzone null_pointer_is_valid allocsize(2) "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { noredzone nounwind "no-builtin-wcslen" }
attributes #9 = { noredzone nounwind allocsize(2) "no-builtin-wcslen" }
attributes #10 = { nounwind }
attributes #11 = { noredzone "no-builtin-wcslen" }
attributes #12 = { cold noredzone nounwind "no-builtin-wcslen" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 8, !"cf-protection-branch", i32 1}
!2 = !{i32 4, !"function_return_thunk_extern", i32 1}
!3 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!4 = !{i32 1, !"Code Model", i32 2}
!5 = !{i32 1, !"stack-protector-guard-reg", !"gs"}
!6 = !{i32 1, !"stack-protector-guard-symbol", !"__ref_stack_chk_guard"}
!7 = !{i32 1, !"override-stack-alignment", i32 8}
!8 = !{i32 4, !"SkipRaxSetup", i32 1}
!9 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!10 = !{!"auto-init"}
!11 = !{i64 10593}
!12 = !{i64 2148463725}
!13 = !{i64 2148462168}
!14 = !{i8 0, i8 2}
!15 = !{}
!16 = !{i64 7996}
end_hunk_0
