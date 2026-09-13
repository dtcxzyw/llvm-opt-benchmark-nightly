Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/destructors?download=true
begin_hunk_0_@par_for___local_laplacian_local_laplacian.s0.v4.v264:entry
  %f6.stride.1 = load i32, ptr %i.u, align 4      ; 12 uses
  %i.v = getelementptr inbounds nuw i8, ptr %closure, i64 68
  %f6.v3.extent_realized.s = load i32, ptr %i.v, align 4 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %closure, i64 72
  %f6.v3.min_realized = load i32, ptr %i.w, align 4 ; 20 uses
  %i.x = getelementptr inbounds nuw i8, ptr %closure, i64 76
  %f6.v4.min_realized = load i32, ptr %i.x, align 4 ; 10 uses
  %i.y = getelementptr inbounds nuw i8, ptr %closure, i64 80
  %f7.stride.1 = load i32, ptr %i.y, align 4      ; 12 uses
  %i.z = getelementptr inbounds nuw i8, ptr %closure, i64 84
  %f7.v3.extent_realized.s = load i32, ptr %i.z, align 4 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %closure, i64 88
  %f7.v3.min_realized = load i32, ptr %i.aa, align 4 ; 20 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %closure, i64 92
  %f7.v4.min_realized = load i32, ptr %i.ab, align 4 ; 10 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %closure, i64 96
  %f72.v3.extent_realized.s = load i32, ptr %i.ac, align 4 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %closure, i64 100
  %f72.v3.min_realized = load i32, ptr %i.ad, align 4 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %closure, i64 104
  %f72.v4.min_realized = load i32, ptr %i.ae, align 4 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %closure, i64 108
  %f73.v3.extent_realized.s = load i32, ptr %i.af, align 4 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %closure, i64 112
  %f73.v3.min_realized = load i32, ptr %i.ag, align 4 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %closure, i64 116
  %f73.v4.min_realized = load i32, ptr %i.ah, align 4 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %closure, i64 120
  %f74.v3.extent_realized.s = load i32, ptr %i.ai, align 4 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %closure, i64 124
  %f74.v3.min_realized = load i32, ptr %i.aj, align 4 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %closure, i64 128
  %f74.v4.min_realized = load i32, ptr %i.ak, align 4 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %closure, i64 132
  %f75.v3.extent_realized.s = load i32, ptr %i.al, align 4 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %closure, i64 136
  %f75.v3.min_realized = load i32, ptr %i.am, align 4 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %closure, i64 140
  %f75.v4.min_realized = load i32, ptr %i.an, align 4 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %closure, i64 144
  %f8.stride.2 = load i32, ptr %i.ao, align 4     ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %closure, i64 148
  %f8.v3.extent_realized.s = load i32, ptr %i.ap, align 4 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %closure, i64 152
  %f8.v3.min_realized = load i32, ptr %i.aq, align 4 ; 16 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %closure, i64 156
  %f8.v4.min_realized = load i32, ptr %i.ar, align 4 ; 6 uses
  %i.as = getelementptr inbounds nuw i8, ptr %closure, i64 160
  %input.extent.0 = load i32, ptr %i.as, align 4  ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %closure, i64 164
  %input.extent.1 = load i32, ptr %i.at, align 4
  %i.au = getelementptr inbounds nuw i8, ptr %closure, i64 168
  %input.extent.2 = load i32, ptr %i.au, align 4  ; 4 uses
  %i.av = sext i32 %input.extent.2 to i64
  %i.aw = getelementptr inbounds nuw i8, ptr %closure, i64 172
  %input.min.0 = load i32, ptr %i.aw, align 4     ; 11 uses
  %i.ax = sext i32 %input.min.0 to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %closure, i64 176
  %b1148 = load i32, ptr %i.ay, align 4           ; 6 uses
  %i.az = sext i32 %b1148 to i64
  %i.ba = getelementptr inbounds nuw i8, ptr %closure, i64 180
  %b1146 = load i32, ptr %i.ba, align 4           ; 12 uses
  %b1037 = sext i32 %b1146 to i64                 ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %closure, i64 184
  %input.stride.1 = load i32, ptr %i.bb, align 4  ; 8 uses
  %i.bc = sext i32 %input.stride.1 to i64         ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %closure, i64 188
  %input.stride.2 = load i32, ptr %i.bd, align 4  ; 8 uses
  %i.be = sext i32 %input.stride.2 to i64         ; 5 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %closure, i64 192
  %levels = load i32, ptr %i.bf, align 4          ; 7 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %closure, i64 196
  %local_laplacian.extent.0 = load i32, ptr %i.bg, align 4 ; 5 uses
  %i.bh = sext i32 %local_laplacian.extent.0 to i64
  %i.bi = getelementptr inbounds nuw i8, ptr %closure, i64 200
  %local_laplacian.extent.1 = load i32, ptr %i.bi, align 4
  %i.bj = getelementptr inbounds nuw i8, ptr %closure, i64 204
  %local_laplacian.extent.2 = load i32, ptr %i.bj, align 4 ; 7 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %closure, i64 208
  %local_laplacian.min.0 = load i32, ptr %i.bk, align 4 ; 10 uses
  %i.bl = sext i32 %local_laplacian.min.0 to i64  ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %closure, i64 212
  %a1120 = load i32, ptr %i.bm, align 4           ; 19 uses
  %i.bn = sext i32 %a1120 to i64
  %i.bo = getelementptr inbounds nuw i8, ptr %closure, i64 216
  %local_laplacian.min.1 = load i32, ptr %i.bo, align 4 ; 3 uses
  %i.bp = sext i32 %local_laplacian.min.1 to i64  ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %closure, i64 220
  %local_laplacian.min.1.required = load i32, ptr %i.bq, align 4 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %closure, i64 224
  %b1028 = load i32, ptr %i.br, align 4           ; 9 uses
  %i.bs = sext i32 %b1028 to i64                  ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %closure, i64 228
  %local_laplacian.s0.v4.v264.epilogue = load i32, ptr %i.bt, align 4
  %i.bu = getelementptr inbounds nuw i8, ptr %closure, i64 232
  %local_laplacian.s0.v4.v264.prologue = load i32, ptr %i.bu, align 4
  %i.bv = getelementptr inbounds nuw i8, ptr %closure, i64 236
  %local_laplacian.stride.1 = load i32, ptr %i.bv, align 4
  %i.bw = sext i32 %local_laplacian.stride.1 to i64 ; 7 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %closure, i64 240
  %local_laplacian.stride.2 = load i32, ptr %i.bx, align 4
  %i.by = sext i32 %local_laplacian.stride.2 to i64 ; 6 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %closure, i64 248
  %f0.host = load ptr, ptr %i.bz, align 8         ; 64 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %closure, i64 264
  %f130.host = load ptr, ptr %i.ca, align 8       ; 16 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %closure, i64 280
  %f2.host = load ptr, ptr %i.cb, align 8         ; 10 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %closure, i64 296
  %f4.host = load ptr, ptr %i.cc, align 8         ; 320 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %closure, i64 312
  %f5.host = load ptr, ptr %i.cd, align 8         ; 320 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %closure, i64 328
  %f6.host = load ptr, ptr %i.ce, align 8         ; 320 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %closure, i64 344
  %f7.host = load ptr, ptr %i.cf, align 8         ; 320 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %closure, i64 360
  %f72.host = load ptr, ptr %i.cg, align 8        ; 4 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %closure, i64 376
  %f73.host = load ptr, ptr %i.ch, align 8        ; 4 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %closure, i64 392
  %f74.host = load ptr, ptr %i.ci, align 8        ; 4 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %closure, i64 408
  %f75.host = load ptr, ptr %i.cj, align 8        ; 4 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %closure, i64 424
  %f8.host = load ptr, ptr %i.ck, align 8         ; 256 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %closure, i64 440
  %input.host = load ptr, ptr %i.cl, align 8      ; 35 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %closure, i64 456
  %local_laplacian.host = load ptr, ptr %i.cm, align 8 ; 7 uses
  %i.cn = icmp sgt i32 %local_laplacian.s0.v4.v264.epilogue, %local_laplacian.s0.v4.v264
  %i.co = icmp sle i32 %local_laplacian.s0.v4.v264.prologue, %local_laplacian.s0.v4.v264
  %i.cp = and i1 %i.cn, %i.co
  %i.cq = shl nsw i32 %local_laplacian.s0.v4.v264, 6
  %a782 = add nsw i32 %local_laplacian.min.1, %i.cq
  %i.cr = add i32 %local_laplacian.extent.1, -64
  %b784 = add i32 %i.cr, %local_laplacian.min.1
  %local_laplacian.s0.v4.v4.base = tail call i32 @llvm.smin.i32(i32 %b784, i32 %a782) ; 21 uses
  %a784 = add nsw i32 %a1120, -14                 ; 2 uses
  %i.cs = add nsw i32 %local_laplacian.min.0, %local_laplacian.extent.0 ; 24 uses
  %b786 = add nsw i32 %i.cs, -43                  ; 3 uses
  %i.ct = tail call i32 @llvm.smin.i32(i32 %b786, i32 %a784) ; 3 uses
  %i.cu = ashr i32 %i.ct, 4
  %a783 = add nsw i32 %i.cu, -1
  %a785 = add nsw i32 %a1120, -30                 ; 2 uses
  %b787 = add nsw i32 %i.cs, -83                  ; 3 uses
  %i.cv = tail call i32 @llvm.smin.i32(i32 %b787, i32 %a785)
  %b785 = ashr i32 %i.cv, 4
  %f129.v3.min_realized = tail call i32 @llvm.smin.i32(i32 %b785, i32 %a783) ; 3 uses
  %i.cw = ashr i32 %a784, 3                       ; 9 uses
  %i.cx = add nsw i32 %i.cs, 13
  %i.cy = ashr i32 %i.cx, 3                       ; 2 uses
  %i.cz = sub nsw i32 %i.cy, %i.cw                ; 3 uses
  %i.da = ashr i32 %i.cz, 3                       ; 5 uses
  %i.db = and i32 %i.cz, -8
  %a790 = add nsw i32 %i.db, %i.cw
  %b792 = ashr i32 %b786, 3                       ; 9 uses
  %i.dc = tail call i32 @llvm.smin.i32(i32 %b792, i32 %a790) ; 3 uses
  %i.dd = add nsw i32 %i.dc, 9
  %a789 = ashr i32 %i.dd, 1
  %i.de = ashr i32 %a785, 4                       ; 9 uses
  %i.df = add nsw i32 %i.cs, 29
  %i.dg = ashr i32 %i.df, 4                       ; 2 uses
  %i.dh = sub nsw i32 %i.dg, %i.de                ; 3 uses
  %i.di = ashr i32 %i.dh, 3                       ; 5 uses
  %i.dj = and i32 %i.dh, -8
  %a791 = add nsw i32 %i.dj, %i.de
  %b793 = ashr i32 %b787, 4                       ; 9 uses
  %i.dk = tail call i32 @llvm.smin.i32(i32 %b793, i32 %a791)
  %b791 = add nsw i32 %i.dk, 7
  %i.dl = tail call i32 @llvm.smax.i32(i32 %a789, i32 %b791)
  %f129.v3.extent_realized.s = sub nsw i32 %i.dl, %f129.v3.min_realized ; 3 uses
  %i.dm = add nsw i32 %local_laplacian.s0.v4.v4.base, 2 ; 3 uses
  %t3087 = and i32 %i.dm, 15                      ; 2 uses
  %i.dn = add nuw nsw i32 %t3087, 139
  %i.do = lshr i32 %i.dn, 4
  %i.dp = zext nneg i32 %i.do to i64
  %i.dq = add nsw i32 %f129.v3.extent_realized.s, 1 ; 9 uses
  %i.dr = zext i32 %i.dq to i64
  %i.ds = shl nuw nsw i64 %i.dr, 2
  %i.dt = mul nuw nsw i64 %i.ds, %i.dp            ; 5 uses
  %i.du = icmp samesign ult i64 %i.dt, 2147483648 ; 2 uses
  br i1 %i.cp, label %true_bb, label %false_bb

true_bb:                                          ; preds = %entry
  br i1 %i.du, label %"assert succeeded", label %"assert failed", !prof !5

false_bb:                                         ; preds = %entry
  br i1 %i.du, label %"assert succeeded113", label %"assert failed112", !prof !5

"assert failed":                                  ; preds = %true_bb
  %i.dv = tail call i32 @halide_error_buffer_allocation_too_large(ptr %__user_context, ptr nonnull @str.28, i64 %i.dt, i64 2147483647) #3
  br label %destructor_block.thread

"assert succeeded":                               ; preds = %true_bb
  %i.dw = add nuw nsw i64 %i.dt, 4
  %i.dx = tail call ptr @halide_malloc(ptr %__user_context, i64 %i.dw) ; 26 uses
  %.not138 = icmp eq ptr %i.dx, null
  br i1 %.not138, label %"assert failed1", label %"assert succeeded2", !prof !4

destructor_block.thread:                          ; preds = %if.then.i265, %"assert failed73", %"assert failed112", %"assert failed17", %"assert failed15", %"assert failed13", %"assert failed11", %"assert failed9", %"assert failed7", %"assert failed5", %"assert failed3", %"assert failed1", %"assert failed", %"assert failed114", %if.then.i271, %"assert failed137", %"assert failed135", %"assert failed129", %"assert failed127", %"assert failed121", %"assert failed119"
  %.029.ph = phi ptr [ null, %"assert failed119" ], [ null, %"assert failed121" ], [ null, %"assert failed127" ], [ null, %"assert failed129" ], [ %i.nqd, %"assert failed135" ], [ %i.nqd, %"assert failed137" ], [ null, %if.then.i271 ], [ null, %"assert failed114" ], [ null, %"assert failed" ], [ null, %"assert failed1" ], [ null, %"assert failed3" ], [ null, %"assert failed5" ], [ null, %"assert failed7" ], [ null, %"assert failed9" ], [ null, %"assert failed11" ], [ null, %"assert failed13" ], [ null, %"assert failed15" ], [ null, %"assert failed17" ], [ null, %"assert failed112" ], [ null, %"assert failed73" ], [ null, %if.then.i265 ]
  %.028.ph = phi ptr [ null, %"assert failed119" ], [ null, %"assert failed121" ], [ %i.nor, %"assert failed127" ], [ %i.nor, %"assert failed129" ], [ %i.nor, %"assert failed135" ], [ %i.nor, %"assert failed137" ], [ null, %if.then.i271 ], [ null, %"assert failed114" ], [ null, %"assert failed" ], [ null, %"assert failed1" ], [ null, %"assert failed3" ], [ null, %"assert failed5" ], [ null, %"assert failed7" ], [ null, %"assert failed9" ], [ null, %"assert failed11" ], [ null, %"assert failed13" ], [ null, %"assert failed15" ], [ null, %"assert failed17" ], [ null, %"assert failed112" ], [ null, %"assert failed73" ], [ null, %if.then.i265 ]
  %.027.ph = phi ptr [ %i.nnu, %"assert failed119" ], [ %i.nnu, %"assert failed121" ], [ %i.nnu, %"assert failed127" ], [ %i.nnu, %"assert failed129" ], [ %i.nnu, %"assert failed135" ], [ %i.nnu, %"assert failed137" ], [ null, %if.then.i271 ], [ null, %"assert failed114" ], [ null, %"assert failed" ], [ null, %"assert failed1" ], [ null, %"assert failed3" ], [ null, %"assert failed5" ], [ null, %"assert failed7" ], [ null, %"assert failed9" ], [ null, %"assert failed11" ], [ null, %"assert failed13" ], [ null, %"assert failed15" ], [ null, %"assert failed17" ], [ null, %"assert failed112" ], [ null, %"assert failed73" ], [ null, %if.then.i265 ]
  %.024.ph = phi ptr [ null, %"assert failed119" ], [ null, %"assert failed121" ], [ null, %"assert failed127" ], [ null, %"assert failed129" ], [ null, %"assert failed135" ], [ null, %"assert failed137" ], [ null, %if.then.i271 ], [ null, %"assert failed114" ], [ null, %"assert failed" ], [ null, %"assert failed1" ], [ null, %"assert failed3" ], [ null, %"assert failed5" ], [ null, %"assert failed7" ], [ null, %"assert failed9" ], [ null, %"assert failed11" ], [ null, %"assert failed13" ], [ %i.hm, %"assert failed15" ], [ %i.hm, %"assert failed17" ], [ null, %"assert failed112" ], [ %i.hm, %"assert failed73" ], [ null, %if.then.i265 ]
  %.023.ph = phi ptr [ null, %"assert failed119" ], [ null, %"assert failed121" ], [ null, %"assert failed127" ], [ null, %"assert failed129" ], [ null, %"assert failed135" ], [ null, %"assert failed137" ], [ null, %if.then.i271 ], [ null, %"assert failed114" ], [ null, %"assert failed" ], [ null, %"assert failed1" ], [ null, %"assert failed3" ], [ null, %"assert failed5" ], [ null, %"assert failed7" ], [ null, %"assert failed9" ], [ %i.gj, %"assert failed11" ], [ %i.gj, %"assert failed13" ], [ %i.gj, %"assert failed15" ], [ %i.gj, %"assert failed17" ], [ null, %"assert failed112" ], [ %i.gj, %"assert failed73" ], [ null, %if.then.i265 ]
  %.022.ph = phi ptr [ null, %"assert failed119" ], [ null, %"assert failed121" ], [ null, %"assert failed127" ], [ null, %"assert failed129" ], [ null, %"assert failed135" ], [ null, %"assert failed137" ], [ null, %if.then.i271 ], [ null, %"assert failed114" ], [ null, %"assert failed" ], [ null, %"assert failed1" ], [ null, %"assert failed3" ], [ null, %"assert failed5" ], [ %i.ex, %"assert failed7" ], [ %i.ex, %"assert failed9" ], [ %i.ex, %"assert failed11" ], [ %i.ex, %"assert failed13" ], [ %i.ex, %"assert failed15" ], [ %i.ex, %"assert failed17" ], [ null, %"assert failed112" ], [ %i.ex, %"assert failed73" ], [ null, %if.then.i265 ]
  %.0.ph = phi ptr [ null, %"assert failed119" ], [ null, %"assert failed121" ], [ null, %"assert failed127" ], [ null, %"assert failed129" ], [ null, %"assert failed135" ], [ null, %"assert failed137" ], [ null, %if.then.i271 ], [ null, %"assert failed114" ], [ null, %"assert failed" ], [ null, %"assert failed1" ], [ %i.dx, %"assert failed3" ], [ %i.dx, %"assert failed5" ], [ %i.dx, %"assert failed7" ], [ %i.dx, %"assert failed9" ], [ %i.dx, %"assert failed11" ], [ %i.dx, %"assert failed13" ], [ %i.dx, %"assert failed15" ], [ %i.dx, %"assert failed17" ], [ null, %"assert failed112" ], [ %i.dx, %"assert failed73" ], [ null, %if.then.i265 ]
  %.ph = phi i32 [ %i.nop, %"assert failed119" ], [ %i.nos, %"assert failed121" ], [ %i.nqb, %"assert failed127" ], [ %i.nqe, %"assert failed129" ], [ %i.nre, %"assert failed135" ], [ %i.nrh, %"assert failed137" ], [ 0, %if.then.i271 ], [ %i.nnv, %"assert failed114" ], [ %i.dv, %"assert failed" ], [ %i.eb, %"assert failed1" ], [ %i.ev, %"assert failed3" ], [ %i.ey, %"assert failed5" ], [ %i.gh, %"assert failed7" ], [ %i.gk, %"assert failed9" ], [ %i.hk, %"assert failed11" ], [ %i.hn, %"assert failed13" ], [ %i.dah, %"assert failed15" ], [ %i.dak, %"assert failed17" ], [ %i.nns, %"assert failed112" ], [ %i.llx, %"assert failed73" ], [ 0, %if.then.i265 ] ; 2 uses
  %.not242251 = icmp eq i32 %.ph, 0
  br label %call_destructor.exit206

destructor_block:                                 ; preds = %"assert failed186", %"assert failed184"
  %i.dy = phi i32 [ %i.rmb, %"assert failed186" ], [ %i.rlz, %"assert failed184" ] ; 2 uses
  %.not242 = icmp eq i32 %i.dy, 0
  br i1 %.not242, label %call_destructor.exit251, label %if.then.i205

if.then.i205:                                     ; preds = %destructor_block
  tail call void @halide_free(ptr %__user_context, ptr nonnull %i.nrg) #6
  br label %call_destructor.exit206

call_destructor.exit206:                          ; preds = %destructor_block.thread, %if.then.i205
  %.not242261 = phi i1 [ %.not242251, %destructor_block.thread ], [ false, %if.then.i205 ] ; 7 uses
  %i.dz = phi i32 [ %.ph, %destructor_block.thread ], [ %i.dy, %if.then.i205 ] ; 2 uses
  %.0260 = phi ptr [ %.0.ph, %destructor_block.thread ], [ null, %if.then.i205 ] ; 2 uses
  %.022259 = phi ptr [ %.022.ph, %destructor_block.thread ], [ null, %if.then.i205 ] ; 2 uses
  %.023258 = phi ptr [ %.023.ph, %destructor_block.thread ], [ null, %if.then.i205 ] ; 2 uses
  %.024257 = phi ptr [ %.024.ph, %destructor_block.thread ], [ null, %if.then.i205 ] ; 2 uses
  %.027256 = phi ptr [ %.027.ph, %destructor_block.thread ], [ %i.nnu, %if.then.i205 ] ; 2 uses
  %.028255 = phi ptr [ %.028.ph, %destructor_block.thread ], [ %i.nor, %if.then.i205 ] ; 2 uses
  %.029254 = phi ptr [ %.029.ph, %destructor_block.thread ], [ %i.nqd, %if.then.i205 ] ; 2 uses
  %tobool.i207 = icmp eq ptr %.029254, null
  %brmerge.i209 = or i1 %.not242261, %tobool.i207
  br i1 %brmerge.i209, label %call_destructor.exit211, label %if.then.i210

if.then.i210:                                     ; preds = %call_destructor.exit206
  tail call void @halide_free(ptr %__user_context, ptr nonnull %.029254) #6
  br label %call_destructor.exit211

call_destructor.exit211:                          ; preds = %if.then.i210, %call_destructor.exit206
  %tobool.i212 = icmp eq ptr %.028255, null
  %brmerge.i214 = or i1 %.not242261, %tobool.i212
  br i1 %brmerge.i214, label %call_destructor.exit216, label %if.then.i215

if.then.i215:                                     ; preds = %call_destructor.exit211
  tail call void @halide_free(ptr %__user_context, ptr nonnull %.028255) #6
  br label %call_destructor.exit216

call_destructor.exit216:                          ; preds = %if.then.i215, %call_destructor.exit211
  %tobool.i217 = icmp eq ptr %.027256, null
  %brmerge.i219 = or i1 %.not242261, %tobool.i217
  br i1 %brmerge.i219, label %call_destructor.exit231, label %if.then.i220

if.then.i220:                                     ; preds = %call_destructor.exit216
  tail call void @halide_free(ptr %__user_context, ptr nonnull %.027256) #6
  br label %call_destructor.exit231

call_destructor.exit231:                          ; preds = %if.then.i220, %call_destructor.exit216
  %tobool.i232 = icmp eq ptr %.024257, null
  %brmerge.i234 = or i1 %.not242261, %tobool.i232
  br i1 %brmerge.i234, label %call_destructor.exit236, label %if.then.i235

if.then.i235:                                     ; preds = %call_destructor.exit231
  tail call void @halide_free(ptr %__user_context, ptr nonnull %.024257) #6
  br label %call_destructor.exit236

call_destructor.exit236:                          ; preds = %if.then.i235, %call_destructor.exit231
  %tobool.i237 = icmp eq ptr %.023258, null
  %brmerge.i239 = or i1 %.not242261, %tobool.i237
  br i1 %brmerge.i239, label %call_destructor.exit241, label %if.then.i240

if.then.i240:                                     ; preds = %call_destructor.exit236
  tail call void @halide_free(ptr %__user_context, ptr nonnull %.023258) #6
  br label %call_destructor.exit241

call_destructor.exit241:                          ; preds = %if.then.i240, %call_destructor.exit236
  %tobool.i242 = icmp eq ptr %.022259, null
  %brmerge.i244 = or i1 %.not242261, %tobool.i242
  br i1 %brmerge.i244, label %call_destructor.exit246, label %if.then.i245

if.then.i245:                                     ; preds = %call_destructor.exit241
  tail call void @halide_free(ptr %__user_context, ptr nonnull %.022259) #6
  br label %call_destructor.exit246

call_destructor.exit246:                          ; preds = %if.then.i245, %call_destructor.exit241
  %tobool.i247 = icmp eq ptr %.0260, null
  %brmerge.i249 = or i1 %.not242261, %tobool.i247
  br i1 %brmerge.i249, label %call_destructor.exit251, label %if.then.i250

if.then.i250:                                     ; preds = %call_destructor.exit246
  tail call void @halide_free(ptr %__user_context, ptr nonnull %.0260) #6
  br label %call_destructor.exit251

call_destructor.exit251:                          ; preds = %destructor_block, %if.then.i250, %call_destructor.exit246
  %i.ea = phi i32 [ %i.dz, %call_destructor.exit246 ], [ %i.dz, %if.then.i250 ], [ 0, %destructor_block ]
  ret i32 %i.ea

"assert failed1":                                 ; preds = %"assert succeeded"
  %i.eb = tail call i32 @halide_error_out_of_memory(ptr %__user_context) #3
  br label %destructor_block.thread

"assert succeeded2":                              ; preds = %"assert succeeded"
  %a793 = add nsw i32 %a1120, -6                  ; 2 uses
  %b795 = add nsw i32 %i.cs, -23                  ; 3 uses
  %i.ec = tail call i32 @llvm.smin.i32(i32 %b795, i32 %a793) ; 2 uses
  %i.ed = ashr i32 %i.ec, 3
  %a792 = add nsw i32 %i.ed, -1
  %b794 = ashr i32 %i.ct, 3
  %f128.v3.min_realized = tail call i32 @llvm.smin.i32(i32 %b794, i32 %a792) ; 2 uses
  %i.ee = ashr i32 %a793, 2                       ; 8 uses
  %i.ef = add nsw i32 %i.cs, 5
  %i.eg = ashr i32 %i.ef, 2                       ; 2 uses
  %i.eh = sub nsw i32 %i.eg, %i.ee                ; 3 uses
  %i.ei = ashr i32 %i.eh, 3                       ; 3 uses
  %i.ej = and i32 %i.eh, -8
  %a799 = add nsw i32 %i.ej, %i.ee
  %b801 = ashr i32 %b795, 2                       ; 8 uses
  %i.ek = tail call i32 @llvm.smin.i32(i32 %b801, i32 %a799) ; 2 uses
  %i.el = add nsw i32 %i.ek, 9
  %a798 = ashr i32 %i.el, 1
  %b800 = add nsw i32 %i.dc, 7
  %i.em = tail call i32 @llvm.smax.i32(i32 %a798, i32 %b800)
  %f128.v3.extent_realized.s = sub nsw i32 %i.em, %f128.v3.min_realized ; 2 uses
  %t3088 = and i32 %i.dm, 7                       ; 2 uses
  %i.en = add nuw nsw i32 %t3088, 99
  %i.eo = lshr i32 %i.en, 3
  %i.ep = zext nneg i32 %i.eo to i64
  %i.eq = add nsw i32 %f128.v3.extent_realized.s, 1 ; 7 uses
  %i.er = zext i32 %i.eq to i64
  %i.es = shl nuw nsw i64 %i.er, 2
  %i.et = mul nuw nsw i64 %i.es, %i.ep            ; 3 uses
  %i.eu = icmp samesign ult i64 %i.et, 2147483648
  br i1 %i.eu, label %"assert succeeded4", label %"assert failed3", !prof !5

"assert failed3":                                 ; preds = %"assert succeeded2"
  %i.ev = tail call i32 @halide_error_buffer_allocation_too_large(ptr %__user_context, ptr nonnull @str.29, i64 %i.et, i64 2147483647) #3
  br label %destructor_block.thread

"assert succeeded4":                              ; preds = %"assert succeeded2"
  %i.ew = add nuw nsw i64 %i.et, 4
  %i.ex = tail call ptr @halide_malloc(ptr %__user_context, i64 %i.ew) ; 24 uses
  %.not143 = icmp eq ptr %i.ex, null
  br i1 %.not143, label %"assert failed5", label %"assert succeeded6", !prof !4

"assert failed5":                                 ; preds = %"assert succeeded4"
  %i.ey = tail call i32 @halide_error_out_of_memory(ptr %__user_context) #3
  br label %destructor_block.thread

"assert succeeded6":                              ; preds = %"assert succeeded4"
  %i.ez = ashr i32 %local_laplacian.s0.v4.v4.base, 1 ; 6 uses
  %a802 = add nsw i32 %i.ez, -1
  %i.fa = add nsw i32 %local_laplacian.s0.v4.v4.base, 3
  %b804 = ashr i32 %i.fa, 1
  %i.fb = tail call i32 @llvm.smin.i32(i32 %b804, i32 %a802) ; 8 uses
  %i.fc = ashr i32 %i.fb, 1
  %a801 = add nsw i32 %i.fc, -1
  %i.fd = add nsw i32 %local_laplacian.s0.v4.v4.base, -6
  %b803 = ashr i32 %i.fd, 2                       ; 3 uses
  %f127.v4.min_realized = tail call i32 @llvm.smin.i32(i32 %b803, i32 %a801) ; 6 uses
  %i.fe = ashr i32 %a1120, 1                      ; 13 uses
  %a804 = add nsw i32 %i.fe, -1                   ; 2 uses
  %i.ff = add nsw i32 %i.cs, -13                  ; 3 uses
  %b806 = ashr i32 %i.ff, 1                       ; 8 uses
  %i.fg = tail call i32 @llvm.smin.i32(i32 %b806, i32 %a804) ; 2 uses
  %i.fh = ashr i32 %i.fg, 1
  %a803 = add nsw i32 %i.fh, -1
  %b805 = ashr i32 %i.ec, 2
  %f127.v3.min_realized = tail call i32 @llvm.smin.i32(i32 %b805, i32 %a803) ; 2 uses
  %i.fi = add nsw i32 %i.cs, 1
  %i.fj = ashr i32 %i.fi, 1                       ; 2 uses
  %i.fk = sub nsw i32 %i.fj, %i.fe                ; 3 uses
  %i.fl = add nsw i32 %i.fk, 1
  %i.fm = and i32 %i.fl, -8
  %a810 = add i32 %a804, %i.fm
  %i.fn = tail call i32 @llvm.smin.i32(i32 %b806, i32 %a810) ; 2 uses
  %i.fo = add nsw i32 %i.fn, 9
  %a809 = ashr i32 %i.fo, 1
  %b811 = add nsw i32 %i.ek, 7
  %i.fp = tail call i32 @llvm.smax.i32(i32 %a809, i32 %b811)
  %f127.v3.extent_realized.s = sub nsw i32 %i.fp, %f127.v3.min_realized ; 2 uses
  %i.fq = add nsw i32 %local_laplacian.s0.v4.v4.base, 69
  %i.fr = ashr i32 %i.fq, 2
  %t3089 = add nsw i32 %i.fr, 1
  %i.fs = sub nsw i32 %t3089, %f127.v4.min_realized
  %i.ft = zext i32 %i.fs to i64                   ; 3 uses
  %i.fu = add nsw i32 %f127.v3.extent_realized.s, 1 ; 7 uses
  %i.fv = zext i32 %i.fu to i64                   ; 2 uses
  %i.fw = shl nuw nsw i64 %i.fv, 2                ; 2 uses
  %i.fx = mul i64 %i.fw, %i.ft                    ; 3 uses
  %i.fy = icmp ult i64 %i.fx, 2147483648
  %i.fz = and i64 %i.fw, 4294967292
  %i.ga = mul nuw i64 %i.fz, %i.ft
  %i.gb = lshr i64 %i.ga, 32
  %i.gc = lshr i64 %i.fv, 30
  %i.gd = mul nuw nsw i64 %i.gc, %i.ft
  %i.ge = add nuw nsw i64 %i.gb, %i.gd
  %i.gf = icmp samesign ult i64 %i.ge, 4294967296
  %i.gg = and i1 %i.fy, %i.gf
  br i1 %i.gg, label %"assert succeeded8", label %"assert failed7", !prof !5

"assert failed7":                                 ; preds = %"assert succeeded6"
  %i.gh = tail call i32 @halide_error_buffer_allocation_too_large(ptr %__user_context, ptr nonnull @str.30, i64 %i.fx, i64 2147483647) #3
  br label %destructor_block.thread

"assert succeeded8":                              ; preds = %"assert succeeded6"
  %i.gi = add nuw nsw i64 %i.fx, 4
  %i.gj = tail call ptr @halide_malloc(ptr %__user_context, i64 %i.gi) ; 22 uses
  %.not147 = icmp eq ptr %i.gj, null
  br i1 %.not147, label %"assert failed9", label %"assert succeeded10", !prof !4
end_hunk_0
