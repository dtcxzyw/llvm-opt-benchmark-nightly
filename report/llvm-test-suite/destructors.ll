Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/destructors?download=true
begin_hunk_0_@__local_laplacian:entry
  br label %call_destructor.exit210.thread823

"assert succeeded82":                             ; preds = %"assert succeeded80"
  %i.fe = icmp slt i64 %input.total_extent.1, 2147483648
  br i1 %i.fe, label %"assert succeeded84", label %"assert failed83", !prof !5

"assert failed83":                                ; preds = %"assert succeeded82"
  %i.ff = tail call i32 @halide_error_buffer_extents_too_large(ptr null, ptr nonnull @str, i64 %input.total_extent.1, i64 2147483647) #3
  br label %call_destructor.exit210.thread823

"assert succeeded84":                             ; preds = %"assert succeeded82"
  %x4 = mul nsw i64 %i.e, %i.c
  %i.fg = tail call i64 @llvm.abs.i64(i64 %x4, i1 true) ; 2 uses
  %i.fh = icmp samesign ult i64 %i.fg, 2147483648
  br i1 %i.fh, label %"assert succeeded86", label %"assert failed85", !prof !5

"assert failed85":                                ; preds = %"assert succeeded84"
  %i.fi = tail call i32 @halide_error_buffer_allocation_too_large(ptr null, ptr nonnull @str, i64 %i.fg, i64 2147483647) #3
  br label %call_destructor.exit210.thread823

"assert succeeded86":                             ; preds = %"assert succeeded84"
  %i.fj = mul nsw i64 %input.total_extent.1, %i.c ; 2 uses
  %i.fk = icmp slt i64 %i.fj, 2147483648
  br i1 %i.fk, label %"assert succeeded88", label %"assert failed87", !prof !5

"assert failed87":                                ; preds = %"assert succeeded86"
  %i.fl = tail call i32 @halide_error_buffer_extents_too_large(ptr null, ptr nonnull @str, i64 %i.fj, i64 2147483647) #3
  br label %call_destructor.exit210.thread823

"assert succeeded88":                             ; preds = %"assert succeeded86"
  %i.fm = add nsw i64 %x7, 2147483647
  %i.fn = icmp ult i64 %i.fm, 4294967295
  br i1 %i.fn, label %"assert succeeded90", label %"assert failed89", !prof !5

"assert failed89":                                ; preds = %"assert succeeded88"
  %i.fo = tail call i32 @halide_error_buffer_allocation_too_large(ptr null, ptr nonnull @str.2, i64 2147483648, i64 2147483647) #3
  br label %call_destructor.exit210.thread823

"assert succeeded90":                             ; preds = %"assert succeeded88"
  %x8 = mul nsw i64 %i.r, %i.p
  %i.fp = tail call i64 @llvm.abs.i64(i64 %x8, i1 true) ; 2 uses
  %i.fq = icmp samesign ult i64 %i.fp, 2147483648
  br i1 %i.fq, label %"assert succeeded92", label %"assert failed91", !prof !5

"assert failed91":                                ; preds = %"assert succeeded90"
  %i.fr = tail call i32 @halide_error_buffer_allocation_too_large(ptr null, ptr nonnull @str.2, i64 %i.fp, i64 2147483647) #3
  br label %call_destructor.exit210.thread823

"assert succeeded92":                             ; preds = %"assert succeeded90"
  %i.fs = icmp slt i64 %local_laplacian.total_extent.1, 2147483648
  br i1 %i.fs, label %"assert succeeded94", label %"assert failed93", !prof !5

"assert failed93":                                ; preds = %"assert succeeded92"
  %i.ft = tail call i32 @halide_error_buffer_extents_too_large(ptr null, ptr nonnull @str.2, i64 %local_laplacian.total_extent.1, i64 2147483647) #3
  br label %call_destructor.exit210.thread823

"assert succeeded94":                             ; preds = %"assert succeeded92"
  %x10 = mul nsw i64 %i.s, %i.q
  %i.fu = tail call i64 @llvm.abs.i64(i64 %x10, i1 true) ; 2 uses
  %i.fv = icmp samesign ult i64 %i.fu, 2147483648
  br i1 %i.fv, label %"assert succeeded96", label %"assert failed95", !prof !5

"assert failed95":                                ; preds = %"assert succeeded94"
  %i.fw = tail call i32 @halide_error_buffer_allocation_too_large(ptr null, ptr nonnull @str.2, i64 %i.fu, i64 2147483647) #3
  br label %call_destructor.exit210.thread823

"assert succeeded96":                             ; preds = %"assert succeeded94"
  %i.fx = mul nsw i64 %local_laplacian.total_extent.1, %i.q ; 2 uses
  %i.fy = icmp slt i64 %i.fx, 2147483648
  br i1 %i.fy, label %"assert succeeded98", label %"assert failed97", !prof !5

"assert failed97":                                ; preds = %"assert succeeded96"
  %i.fz = tail call i32 @halide_error_buffer_extents_too_large(ptr null, ptr nonnull @str.2, i64 %i.fx, i64 2147483647) #3
  br label %call_destructor.exit210.thread823

"assert succeeded98":                             ; preds = %"assert succeeded96"
  %i.ga = shl i32 %i.cs, 8
  %i.gb = add nuw nsw i32 %i.cv, 257
  %i.gc = add i32 %i.ga, %b121
  %i.gd = sub i32 %i.gb, %i.gc                    ; 7 uses
  %i.ge = zext i32 %i.gd to i64
  %i.gf = shl nuw nsw i64 %i.ge, 2                ; 2 uses
  %i.gg = icmp ult i32 %i.gd, 536870912
  br i1 %i.gg, label %"assert succeeded100", label %"assert failed99", !prof !5

"assert failed99":                                ; preds = %"assert succeeded98"
  %i.gh = tail call i32 @halide_error_buffer_allocation_too_large(ptr null, ptr nonnull @str.9, i64 %i.gf, i64 2147483647) #3
  br label %call_destructor.exit210.thread823

"assert succeeded100":                            ; preds = %"assert succeeded98"
  %i.gi = add nuw nsw i64 %i.gf, 4
  %i.gj = tail call ptr @halide_malloc(ptr null, i64 %i.gi) ; 51 uses
  %.not282 = icmp eq ptr %i.gj, null
  br i1 %.not282, label %"assert failed101", label %"produce f0", !prof !4

"assert failed101":                               ; preds = %"assert succeeded100"
  %i.gk = tail call i32 @halide_error_out_of_memory(ptr null) #3
  br label %call_destructor.exit210.thread823

"produce f0":                                     ; preds = %"assert succeeded100"
  %.not283 = icmp eq i32 %i.gd, 0
  br i1 %.not283, label %"consume f0", label %"for f0.s0.v3.preheader", !prof !4

"for f0.s0.v3.preheader":                         ; preds = %"produce f0"
  %i.gl = add nsw i32 %b121, -256                 ; 2 uses
  %i.gm = sext i32 %b121 to i64
  %i.gn = shl nsw i64 %i.gm, 2
  %i.go = sub nsw i64 1024, %i.gn
  %scevgep480 = getelementptr i8, ptr %i.gj, i64 %i.go ; 2 uses
  %i.gp = sext i32 %i.gl to i64                   ; 3 uses
  %i.gq = zext nneg i32 %i.gd to i64              ; 2 uses
  %min.iters.check = icmp ult i32 %i.gd, 4
  br i1 %min.iters.check, label %"for f0.s0.v3.preheader1480", label %vector.ph

vector.ph:                                        ; preds = %"for f0.s0.v3.preheader"
  %n.vec = and i64 %i.gq, 536870908               ; 4 uses
  %i.gr = add nsw i64 %n.vec, %i.gp
  %i.gs = trunc nuw nsw i64 %n.vec to i32
  %i.gt = sub nsw i32 %i.gd, %i.gs
  %broadcast.splatinsert = insertelement <4 x float> poison, float %alpha, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1348 = insertelement <4 x i32> poison, i32 %i.gl, i64 0
  %broadcast.splat1349 = shufflevector <4 x i32> %broadcast.splatinsert1348, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction = add <4 x i32> %broadcast.splat1349, <i32 0, i32 1, i32 2, i32 3>
  %invariant.gep1481 = getelementptr [4 x i8], ptr %scevgep480, i64 %i.gp
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.gu = sitofp <4 x i32> %vec.ind to <4 x float> ; 3 uses
  %i.gv = fmul nnan <4 x float> %i.gu, splat (float 3.906250e-03)
  %i.gw = fsub nnan <4 x float> zeroinitializer, %i.gv
  %i.gx = fmul <4 x float> %i.gw, %i.gu
  %i.gy = fmul <4 x float> %i.gx, splat (float f0x3B000000) ; 2 uses
  %i.gz = fmul <4 x float> %i.gy, splat (float f0x3FB8AA3B)
  %i.ha = tail call <4 x float> @llvm.floor.v4f32(<4 x float> %i.gz) ; 3 uses
  %i.hb = fptosi <4 x float> %i.ha to <4 x i32>   ; 3 uses
  %i.hc = fmul <4 x float> %i.ha, splat (float f0x35BFBE8E)
  %i.hd = fmul <4 x float> %i.ha, splat (float f0x3F317200)
  %i.he = fsub <4 x float> %i.gy, %i.hd
  %i.hf = fsub <4 x float> %i.he, %i.hc           ; 3 uses
  %i.hg = fmul <4 x float> %i.hf, %i.hf           ; 6 uses
  %i.hh = shl <4 x i32> %i.hb, splat (i32 23)
  %i.hi = add <4 x i32> %i.hh, splat (i32 1065353216)
  %i.hj = bitcast <4 x i32> %i.hi to <4 x float>
  %i.hk = fmul <4 x float> %i.hg, splat (float f0x3A9C2E66)
  %i.hl = fadd <4 x float> %i.hk, splat (float f0x3D2A66BC)
  %i.hm = fmul <4 x float> %i.hg, %i.hl
  %i.hn = fadd <4 x float> %i.hm, splat (float 4.999990e-01)
  %i.ho = fmul <4 x float> %i.hg, %i.hn
  %i.hp = fadd <4 x float> %i.ho, splat (float 1.000000e+00)
  %i.hq = fmul <4 x float> %i.hg, splat (float f0x39A797F3)
  %i.hr = fadd <4 x float> %i.hq, splat (float f0x3C0B192A)
  %i.hs = fmul <4 x float> %i.hg, %i.hr
  %i.ht = fadd <4 x float> %i.hs, splat (float f0x3E2AAE1F)
  %i.hu = fmul <4 x float> %i.hg, %i.ht
  %i.hv = fadd <4 x float> %i.hu, splat (float 1.000000e+00)
  %i.hw = fmul <4 x float> %i.hf, %i.hv
  %i.hx = fadd <4 x float> %i.hp, %i.hw
  %i.hy = fmul <4 x float> %i.hx, %i.hj
  %i.hz = icmp slt <4 x i32> %i.hb, splat (i32 128)
  %i.ia = select <4 x i1> %i.hz, <4 x float> %i.hy, <4 x float> splat (float +inf)
  %i.ib = icmp sgt <4 x i32> %i.hb, splat (i32 -127)
  %i.ic = select <4 x i1> %i.ib, <4 x float> %i.ia, <4 x float> zeroinitializer
  %i.id = fmul <4 x float> %broadcast.splat, %i.gu
  %i.ie = fmul <4 x float> %i.id, splat (float 3.906250e-03)
  %i.if = fmul <4 x float> %i.ie, %i.ic
  %gep1482 = getelementptr [4 x i8], ptr %invariant.gep1481, i64 %index
  store <4 x float> %i.if, ptr %gep1482, align 4, !tbaa !8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 4)
  %i.ig = icmp eq i64 %index.next, %n.vec
  br i1 %i.ig, label %middle.block, label %vector.body, !llvm.loop !39

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.gq
  br i1 %cmp.n, label %"consume f0", label %"for f0.s0.v3.preheader1480"

"for f0.s0.v3.preheader1480":                     ; preds = %"for f0.s0.v3.preheader", %middle.block
  %lsr.iv482.ph = phi i64 [ %i.gp, %"for f0.s0.v3.preheader" ], [ %i.gr, %middle.block ]
  %lsr.iv478.ph = phi i32 [ %i.gd, %"for f0.s0.v3.preheader" ], [ %i.gt, %middle.block ]
  br label %"for f0.s0.v3"

"for f0.s0.v3":                                   ; preds = %"for f0.s0.v3.preheader1480", %"for f0.s0.v3"
  %lsr.iv482 = phi i64 [ %lsr.iv.next483, %"for f0.s0.v3" ], [ %lsr.iv482.ph, %"for f0.s0.v3.preheader1480" ] ; 3 uses
  %lsr.iv478 = phi i32 [ %lsr.iv.next479, %"for f0.s0.v3" ], [ %lsr.iv478.ph, %"for f0.s0.v3.preheader1480" ]
  %tmp487 = trunc i64 %lsr.iv482 to i32
  %i.ih = sitofp i32 %tmp487 to float             ; 3 uses
  %i.ii = fmul nnan float %i.ih, 3.906250e-03
  %i.ij = fsub nnan float 0.000000e+00, %i.ii
  %t3062 = fmul float %i.ij, %i.ih
  %i.ik = fmul float %t3062, f0x3B000000          ; 2 uses
  %i.il = fmul float %i.ik, f0x3FB8AA3B
  %y.i = tail call float @llvm.floor.f32(float %i.il) #7 ; 3 uses
  %t3064 = fptosi float %y.i to i32               ; 3 uses
  %i.im = fmul float %y.i, f0x35BFBE8E
  %i.in = fmul float %y.i, f0x3F317200
  %i.io = fsub float %i.ik, %i.in
  %t3065 = fsub float %i.io, %i.im                ; 3 uses
  %t3066 = fmul float %t3065, %t3065              ; 6 uses
  %i.ip = shl i32 %t3064, 23
  %i.iq = add i32 %i.ip, 1065353216
  %i.ir = bitcast i32 %i.iq to float
  %13 = fmul float %t3066, f0x3A9C2E66
  %14 = fadd float %13, f0x3D2A66BC
  %15 = fmul float %t3066, %14
  %16 = fadd float %15, 4.999990e-01
  %17 = fmul float %t3066, %16
  %18 = fadd float %17, 1.000000e+00
  %19 = fmul float %t3066, f0x39A797F3
  %20 = fadd float %19, f0x3C0B192A
  %21 = fmul float %t3066, %20
  %22 = fadd float %21, f0x3E2AAE1F
  %i.is = fmul float %t3066, %22
  %23 = fadd float %i.is, 1.000000e+00
  %24 = fmul float %t3065, %23
  %i.it = fadd float %18, %24
  %i.iu = fmul float %i.it, %i.ir
  %i.iv = icmp slt i32 %t3064, 128
  %i.iw = select i1 %i.iv, float %i.iu, float +inf
  %i.ix = icmp sgt i32 %t3064, -127
  %i.iy = select i1 %i.ix, float %i.iw, float 0.000000e+00
  %i.iz = fmul float %alpha, %i.ih
  %i.ja = fmul float %i.iz, 3.906250e-03
  %i.jb = fmul float %i.ja, %i.iy
  %scevgep484 = getelementptr [4 x i8], ptr %scevgep480, i64 %lsr.iv482
  store float %i.jb, ptr %scevgep484, align 4, !tbaa !8
  %lsr.iv.next479 = add nsw i32 %lsr.iv478, -1    ; 2 uses
  %lsr.iv.next483 = add nsw i64 %lsr.iv482, 1
  %.not284 = icmp eq i32 %lsr.iv.next479, 0
  br i1 %.not284, label %"consume f0", label %"for f0.s0.v3", !llvm.loop !40

"consume f0":                                     ; preds = %"for f0.s0.v3", %middle.block, %"produce f0"
  %a127 = add nsw i32 %f72.s0.v4.min.s, -1
  %b129 = add nsw i32 %b448, -31
  %b135 = tail call i32 @llvm.smin.i32(i32 %b129, i32 %a127) ; 3 uses
  %a134 = add nsw i32 %f4.s0.v4.min.s, -1
  %b136 = add nsw i32 %b448, -7
  %a133 = tail call i32 @llvm.smin.i32(i32 %b136, i32 %a134) ; 2 uses
  %i.jc = tail call i32 @llvm.smin.i32(i32 %b135, i32 %a133)
  %i.jd = shl nsw i32 %i.jc, 1
  %a132 = add nsw i32 %i.jd, -1                   ; 2 uses
  %b134 = shl nsw i32 %b135, 1                    ; 3 uses
  %b133 = or disjoint i32 %b134, 1
  %i.je = icmp slt i32 %b134, %a132
  %a130 = select i1 %i.je, i32 %b133, i32 %a132
  %b132 = add nsw i32 %b134, 2
  %a129 = tail call i32 @llvm.smin.i32(i32 %b132, i32 %a130)
  %a128 = tail call i32 @llvm.smin.i32(i32 %b89, i32 %a129)
  %f2.v4.min_realized = tail call i32 @llvm.smin.i32(i32 %a87, i32 %a128) ; 5 uses
  %i.jf = sub nsw i32 %b448, %f72.s0.v4.min.s     ; 2 uses
  %i.jg = add nsw i32 %i.jf, 1
  %i.jh = and i32 %i.jg, -32
  %i.ji = add nsw i32 %f72.s0.v4.min.s, 30
  %a136 = add i32 %i.ji, %i.jh
  %t1938 = tail call i32 @llvm.smin.i32(i32 %b448, i32 %a136) ; 2 uses
  %i.jj = sub nsw i32 %b448, %f4.s0.v4.min.s      ; 2 uses
  %i.jk = add nsw i32 %i.jj, 1
  %i.jl = and i32 %i.jk, -8
  %i.jm = add nsw i32 %f4.s0.v4.min.s, 6
  %a154 = add i32 %i.jm, %i.jl
  %i.jn = tail call i32 @llvm.smin.i32(i32 %b448, i32 %a154) ; 2 uses
  %i.jo = shl nsw i32 %i.jn, 1
  %a153 = add nsw i32 %i.jo, 2                    ; 2 uses
  %i.jp = shl nsw i32 %t1938, 1                   ; 3 uses
  %i.jq = tail call i32 @llvm.smax.i32(i32 %a153, i32 %i.jp)
  %b153 = or disjoint i32 %i.jp, 1                ; 2 uses
  %.not301 = icmp sgt i32 %a153, %b153
  %a150 = select i1 %.not301, i32 %i.jq, i32 %b153
  %b152 = add nsw i32 %i.jp, 2
  %b150 = tail call i32 @llvm.smax.i32(i32 %a150, i32 %b152)
  %b148 = tail call i32 @llvm.smax.i32(i32 %b94, i32 %b150)
  %i.jr = tail call i32 @llvm.smax.i32(i32 %a92, i32 %b148)
  %a155 = add nsw i32 %f72.s0.v3.min.s, -1
  %b157 = add nsw i32 %b465, -7                   ; 2 uses
  %b165 = tail call i32 @llvm.smin.i32(i32 %b157, i32 %a155) ; 3 uses
  %a164 = add nsw i32 %f4.s0.v3.min.s, -1
  %a163 = tail call i32 @llvm.smin.i32(i32 %b157, i32 %a164) ; 2 uses
  %i.js = tail call i32 @llvm.smin.i32(i32 %b165, i32 %a163)
  %i.jt = shl nsw i32 %i.js, 1
  %a162 = add nsw i32 %i.jt, -1                   ; 2 uses
  %b164 = shl nsw i32 %b165, 1                    ; 4 uses
  %b163 = or disjoint i32 %b164, 1
  %i.ju = icmp slt i32 %b164, %a162
  %a160 = select i1 %i.ju, i32 %b163, i32 %a162   ; 2 uses
  %b162 = add nsw i32 %b164, 2
  %a159 = tail call i32 @llvm.smin.i32(i32 %b162, i32 %a160)
  %b161 = add nsw i32 %b164, -1                   ; 2 uses
  %.not314 = icmp slt i32 %a160, %b161
  %a158 = select i1 %.not314, i32 %a159, i32 %b161
  %i.jv = icmp slt i32 %local_laplacian.extent.0, 9
  %a165 = select i1 %i.jv, i32 %i.dg, i32 %a286
  %b160 = tail call i32 @llvm.smin.i32(i32 %b76, i32 %a165) ; 2 uses
  %b159 = tail call i32 @llvm.smin.i32(i32 %b160, i32 %a158)
  %a156 = tail call i32 @llvm.smin.i32(i32 %b159, i32 %b74)
  %f2.v3.min_realized = tail call i32 @llvm.smin.i32(i32 %a72, i32 %a156) ; 5 uses
  %reass.sub990 = sub i32 %b465, %f72.s0.v3.min.s
  %i.jw = add i32 %reass.sub990, 1
  %i.jx = and i32 %i.jw, -8
  %i.jy = add nsw i32 %f72.s0.v3.min.s, 6
  %a168 = add i32 %i.jy, %i.jx
  %t1943 = tail call i32 @llvm.smin.i32(i32 %b465, i32 %a168) ; 2 uses
  %reass.sub991 = sub i32 %b465, %f4.s0.v3.min.s
  %i.jz = add i32 %reass.sub991, 1
  %i.ka = and i32 %i.jz, -8
  %i.kb = add nsw i32 %f4.s0.v3.min.s, 6
  %a191 = add i32 %i.kb, %i.ka
  %i.kc = tail call i32 @llvm.smin.i32(i32 %b465, i32 %a191) ; 2 uses
  %i.kd = shl nsw i32 %i.kc, 1
  %a190 = add nsw i32 %i.kd, 2                    ; 2 uses
  %i.ke = shl nsw i32 %t1943, 1                   ; 3 uses
  %i.kf = tail call i32 @llvm.smax.i32(i32 %a190, i32 %i.ke)
  %b190 = or disjoint i32 %i.ke, 1                ; 2 uses
  %.not331 = icmp sgt i32 %a190, %b190
  %a187 = select i1 %.not331, i32 %i.kf, i32 %b190
  %b189 = add nsw i32 %i.ke, 2
  %a186 = tail call i32 @llvm.smax.i32(i32 %a187, i32 %b189)
  %i.kg = and i32 %local_laplacian.extent.0.required.s, -8
  %a192 = add nsw i32 %i.kg, %b74
  %b194 = tail call i32 @llvm.smin.i32(i32 %b76, i32 %i.dg)
  %i.kh = tail call i32 @llvm.smin.i32(i32 %b194, i32 %a192) ; 2 uses
  %b188 = add nsw i32 %i.kh, 7                    ; 2 uses
  %b186 = tail call i32 @llvm.smax.i32(i32 %a186, i32 %b188)
  %b184 = tail call i32 @llvm.smax.i32(i32 %b79, i32 %b186)
  %i.ki = tail call i32 @llvm.smax.i32(i32 %a77, i32 %b184)
  %f2.v3.extent_realized.s = sub nsw i32 %i.ki, %f2.v3.min_realized ; 5 uses
  %reass.sub992 = sub i32 %i.jr, %f2.v4.min_realized
  %i.kj = add i32 %reass.sub992, 1
  %i.kk = zext i32 %i.kj to i64                   ; 3 uses
  %i.kl = add nsw i32 %f2.v3.extent_realized.s, 1
  %i.km = zext i32 %i.kl to i64                   ; 2 uses
  %i.kn = shl nuw nsw i64 %i.km, 2                ; 2 uses
  %i.ko = mul i64 %i.kn, %i.kk                    ; 3 uses
  %i.kp = icmp ult i64 %i.ko, 2147483648
  %i.kq = and i64 %i.kn, 4294967292
  %i.kr = mul nuw i64 %i.kq, %i.kk
  %i.ks = lshr i64 %i.kr, 32
  %i.kt = lshr i64 %i.km, 30
  %i.ku = mul nuw nsw i64 %i.kt, %i.kk
  %i.kv = add nuw nsw i64 %i.ks, %i.ku
  %i.kw = icmp samesign ult i64 %i.kv, 4294967296
  %i.kx = and i1 %i.kp, %i.kw
  br i1 %i.kx, label %"assert succeeded104", label %"assert failed103", !prof !5

"assert failed103":                               ; preds = %"consume f0"
  %i.ky = tail call i32 @halide_error_buffer_allocation_too_large(ptr null, ptr nonnull @str.10, i64 %i.ko, i64 2147483647) #3
  br label %call_destructor.exit210.thread823

"assert succeeded104":                            ; preds = %"consume f0"
  %i.kz = add nuw nsw i64 %i.ko, 4
  %i.la = tail call ptr @halide_malloc(ptr null, i64 %i.kz) ; 50 uses
  %.not343 = icmp eq ptr %i.la, null
  br i1 %.not343, label %"assert failed105", label %"produce f2", !prof !4

"assert failed105":                               ; preds = %"assert succeeded104"
  %i.lb = tail call i32 @halide_error_out_of_memory(ptr null) #3
  br label %call_destructor.exit210.thread823

"produce f2":                                     ; preds = %"assert succeeded104"
  %i.lc = add i32 %b97, 31
  %i.ld = sub i32 %i.lc, %a145
  %a195 = ashr i32 %i.ld, 5
  %i.le = tail call i32 @llvm.smax.i32(i32 %a195, i32 0) ; 2 uses
  %b196 = add nsw i32 %i.dl, 1                    ; 2 uses
  %i.lf = icmp slt i32 %i.dl, %i.le
  %f2.s0.v4.v4.prologue = select i1 %i.lf, i32 %b196, i32 %i.le ; 2 uses
  %i.lg = sub nsw i32 %i.di, %a145
  %i.lh = ashr i32 %i.lg, 5
  %a200 = add nsw i32 %i.lh, -1
  %i.li = tail call i32 @llvm.smin.i32(i32 %b88, i32 %b90)
  %i.lj = sub nsw i32 %i.li, %a145
  %b202 = ashr i32 %i.lj, 5
  %a199 = tail call i32 @llvm.smin.i32(i32 %b202, i32 %a200)
  %i.lk = tail call i32 @llvm.smin.i32(i32 %i.dl, i32 %a199)
  %b198 = add nsw i32 %i.lk, 1
  %f2.s0.v4.v4.epilogue = tail call i32 @llvm.smax.i32(i32 %f2.s0.v4.v4.prologue, i32 %b198)
  store i32 %b185, ptr %12, align 8
  %i.ll = getelementptr inbounds nuw i8, ptr %12, i64 4
  store i32 %a181, ptr %i.ll, align 4
  %i.lm = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i32 %b149, ptr %i.lm, align 8
  %i.ln = getelementptr inbounds nuw i8, ptr %12, i64 12
  store i32 %a145, ptr %i.ln, align 4
  %i.lo = getelementptr inbounds nuw i8, ptr %12, i64 16
  store i32 %f2.s0.v4.v4.epilogue, ptr %i.lo, align 8
  %i.lp = getelementptr inbounds nuw i8, ptr %12, i64 20
  store i32 %f2.s0.v4.v4.prologue, ptr %i.lp, align 4
  %i.lq = getelementptr inbounds nuw i8, ptr %12, i64 24
  store i32 %f2.v3.extent_realized.s, ptr %i.lq, align 8
  %i.lr = getelementptr inbounds nuw i8, ptr %12, i64 28
  store i32 %f2.v3.min_realized, ptr %i.lr, align 4
  %i.ls = getelementptr inbounds nuw i8, ptr %12, i64 32
  store i32 %f2.v4.min_realized, ptr %i.ls, align 8
  %i.lt = getelementptr inbounds nuw i8, ptr %12, i64 36
  store i32 %input.extent.0, ptr %i.lt, align 4
  %i.lu = getelementptr inbounds nuw i8, ptr %12, i64 40
  store i32 %input.extent.1, ptr %i.lu, align 8
  %i.lv = getelementptr inbounds nuw i8, ptr %12, i64 44
  store i32 %input.extent.2, ptr %i.lv, align 4
  %i.lw = getelementptr inbounds nuw i8, ptr %12, i64 48
  store i32 %b82, ptr %i.lw, align 8
  %i.lx = getelementptr inbounds nuw i8, ptr %12, i64 52
  store i32 %b97, ptr %i.lx, align 4
  %i.ly = getelementptr inbounds nuw i8, ptr %12, i64 56
  store i32 %b108, ptr %i.ly, align 8
  %i.lz = getelementptr inbounds nuw i8, ptr %12, i64 60
  store i32 %input.stride.1, ptr %i.lz, align 4
  %i.ma = getelementptr inbounds nuw i8, ptr %12, i64 64
  store i32 %input.stride.2, ptr %i.ma, align 8
  %i.mb = getelementptr inbounds nuw i8, ptr %12, i64 72
  store ptr %i.la, ptr %i.mb, align 8
  %i.mc = getelementptr inbounds nuw i8, ptr %12, i64 80
  store ptr null, ptr %i.mc, align 8
  %i.md = getelementptr inbounds nuw i8, ptr %12, i64 88
  store ptr %input.host, ptr %i.md, align 8
  %i.me = getelementptr inbounds nuw i8, ptr %12, i64 96
  store ptr %input.buffer, ptr %i.me, align 8
end_hunk_0
