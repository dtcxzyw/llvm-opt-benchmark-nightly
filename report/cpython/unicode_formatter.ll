inline.NumInlined: 99
inline.NumDeleted: 26
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@InsertThousandsGrouping_fill:bb.a
  %i.g = and i32 %i.f, 7                          ; 2 uses
  %switch.selectcmp.i = icmp eq i32 %i.g, 2
  %switch.select.i = select i1 %switch.selectcmp.i, i32 65535, i32 1114111
  %switch.selectcmp5.i = icmp eq i32 %i.g, 1
  %switch.select6.i = select i1 %switch.selectcmp5.i, i32 255, i32 %switch.select.i
  br label %PyUnicode_MAX_CHAR_VALUE.exit

PyUnicode_MAX_CHAR_VALUE.exit:                    ; preds = %bb.c, %bb.d
  %.0.i = phi i32 [ %switch.select6.i, %bb.d ], [ 127, %bb.c ]
  store i32 %.0.i, ptr %8, align 4, !tbaa !7
  br label %_PyUnicode_Fill.exit

bb.e:                                             ; preds = %bb.a
  %.not52 = icmp eq ptr %6, null
  %.not54 = icmp eq i32 %9, 0                     ; 2 uses
  br i1 %.not52, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  br i1 %.not54, label %.thread, label %.thread78

.thread:                                          ; preds = %bb.f
  %i.h = load i64, ptr %1, align 8, !tbaa !43
  %i.i = sub i64 %i.h, %7                         ; 2 uses
  store i64 %i.i, ptr %1, align 8, !tbaa !43
  %i.j = load ptr, ptr %0, align 8, !tbaa !34
  tail call void @_PyUnicode_FastCopyCharacters(ptr noundef %i.j, i64 noundef %i.i, ptr noundef nonnull %6, i64 noundef 0, i64 noundef %7) #10
  br label %bb.h

.thread78:                                        ; preds = %bb.f
  %i.k = load ptr, ptr %0, align 8, !tbaa !34
  %i.l = load i64, ptr %1, align 8, !tbaa !43
  tail call void @_PyUnicode_FastCopyCharacters(ptr noundef %i.k, i64 noundef %i.l, ptr noundef nonnull %6, i64 noundef 0, i64 noundef %7) #10
  %i.m = load i64, ptr %1, align 8, !tbaa !43
  %i.n = add i64 %i.m, %7                         ; 2 uses
  store i64 %i.n, ptr %1, align 8, !tbaa !43
  br label %.thread96

bb.g:                                             ; preds = %bb.e
  br i1 %.not54, label %bb.h, label %..critedge57_crit_edge

..critedge57_crit_edge:                           ; preds = %bb.g
  %.pre = load i64, ptr %1, align 8, !tbaa !43
  br label %.thread96

bb.h:                                             ; preds = %bb.g, %.thread
  %i.o = load i64, ptr %1, align 8, !tbaa !43
  %i.p = sub i64 %i.o, %4
  store i64 %i.p, ptr %1, align 8, !tbaa !43
  %i.q = load i64, ptr %3, align 8, !tbaa !43
  %i.r = sub i64 %i.q, %4                         ; 2 uses
  store i64 %i.r, ptr %3, align 8, !tbaa !43
  %i.s = load ptr, ptr %0, align 8, !tbaa !34
  %i.t = load i64, ptr %1, align 8, !tbaa !43
  tail call void @_PyUnicode_FastCopyCharacters(ptr noundef %i.s, i64 noundef %i.t, ptr noundef %2, i64 noundef %i.r, i64 noundef %4) #10
  %.not55 = icmp eq i64 %5, 0
  br i1 %.not55, label %_PyUnicode_Fill.exit, label %bb.i

.thread96:                                        ; preds = %.thread78, %..critedge57_crit_edge
  %i.u = phi i64 [ %.pre, %..critedge57_crit_edge ], [ %i.n, %.thread78 ]
  %i.v = load ptr, ptr %0, align 8, !tbaa !34
  %i.w = load i64, ptr %3, align 8, !tbaa !43
  tail call void @_PyUnicode_FastCopyCharacters(ptr noundef %i.v, i64 noundef %i.u, ptr noundef %2, i64 noundef %i.w, i64 noundef %4) #10
  %i.x = load i64, ptr %1, align 8, !tbaa !43
  %i.y = add i64 %i.x, %4
  store i64 %i.y, ptr %1, align 8, !tbaa !43
  %i.z = load i64, ptr %3, align 8, !tbaa !43
  %i.aa = add i64 %i.z, %4
  store i64 %i.aa, ptr %3, align 8, !tbaa !43
  %.not5598 = icmp eq i64 %5, 0
  br i1 %.not5598, label %_PyUnicode_Fill.exit, label %.critedge59

bb.i:                                             ; preds = %bb.h
  %i.ab = load i64, ptr %1, align 8, !tbaa !43    ; 6 uses
  %i.ac = sub i64 %i.ab, %5                       ; 4 uses
  store i64 %i.ac, ptr %1, align 8, !tbaa !43
  %i.ad = load ptr, ptr %0, align 8, !tbaa !34    ; 3 uses
  %i.ae = getelementptr i8, ptr %i.ad, i64 32
  %i.af = load i32, ptr %i.ae, align 8            ; 3 uses
  %i.ag = lshr i32 %i.af, 2
  %i.ah = and i32 %i.ag, 7
  %i.ai = and i32 %i.af, 32
  %.not.i60 = icmp eq i32 %i.ai, 0
  br i1 %.not.i60, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aj = and i32 %i.af, 64
  %.not.i.i = icmp eq i32 %i.aj, 0
  %.0.v.i.i = select i1 %.not.i.i, i64 56, i64 40
  %.0.i.i = getelementptr i8, ptr %i.ad, i64 %.0.v.i.i
  br label %_PyUnicode_DATA.exit

bb.k:                                             ; preds = %bb.i
  %i.ak = getelementptr i8, ptr %i.ad, i64 56
  %.val4.i = load ptr, ptr %i.ak, align 8, !tbaa !15
  br label %_PyUnicode_DATA.exit

_PyUnicode_DATA.exit:                             ; preds = %bb.j, %bb.k
  %.0.i61 = phi ptr [ %.0.i.i, %bb.j ], [ %.val4.i, %bb.k ] ; 7 uses
  %.0.i61136 = ptrtoaddr ptr %.0.i61 to i64       ; 2 uses
  switch i32 %i.ah, label %bb.o [
    i32 1, label %bb.l
    i32 2, label %bb.m
    i32 4, label %bb.n
  ]

bb.l:                                             ; preds = %_PyUnicode_DATA.exit
  %i.al = getelementptr i8, ptr %.0.i61, i64 %i.ac
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.al, i8 48, i64 range(i64 1, 0) %5, i1 false)
  br label %_PyUnicode_Fill.exit

bb.m:                                             ; preds = %_PyUnicode_DATA.exit
  %i.am = getelementptr [2 x i8], ptr %.0.i61, i64 %i.ac ; 6 uses
  %i.an = getelementptr [2 x i8], ptr %.0.i61, i64 %i.ab ; 2 uses
  %i.ao = icmp ult ptr %i.am, %i.an
  br i1 %i.ao, label %iter.check152, label %_PyUnicode_Fill.exit

iter.check152:                                    ; preds = %bb.m
  %i.ap = shl i64 %i.ab, 1                        ; 2 uses
  %i.aq = add i64 %i.ap, %.0.i61136               ; 2 uses
  %i.ar = add i64 %i.aq, 2
  %i.as = shl i64 %5, 1                           ; 2 uses
  %i.at = sub i64 %i.ar, %i.as
  %umax137 = tail call i64 @llvm.umax.i64(i64 %i.at, i64 %i.aq)
  %i.au = add i64 %umax137, %i.as
  %i.av = xor i64 %.0.i61136, -1
  %i.aw = add i64 %i.au, %i.av
  %i.ax = sub i64 %i.aw, %i.ap                    ; 3 uses
  %i.ay = lshr i64 %i.ax, 1
  %i.az = add nuw i64 %i.ay, 1                    ; 5 uses
  %min.iters.check139 = icmp ult i64 %i.ax, 6
  br i1 %min.iters.check139, label %.lr.ph30.i.preheader, label %vector.main.loop.iter.check140

vector.main.loop.iter.check140:                   ; preds = %iter.check152
  %min.iters.check141 = icmp ult i64 %i.ax, 30
  br i1 %min.iters.check141, label %vec.epilog.ph156, label %vector.ph142

vector.ph142:                                     ; preds = %vector.main.loop.iter.check140
  %i.ba = and i64 %i.az, 12
  %n.vec143 = and i64 %i.az, -16                  ; 4 uses
  %i.bb = shl i64 %n.vec143, 1
  %i.bc = getelementptr i8, ptr %i.am, i64 %i.bb
  br label %vector.body144

vector.body144:                                   ; preds = %vector.body144, %vector.ph142
  %index145 = phi i64 [ 0, %vector.ph142 ], [ %index.next147, %vector.body144 ] ; 2 uses
  %i.bd = shl i64 %index145, 1
  %next.gep146 = getelementptr i8, ptr %i.am, i64 %i.bd ; 2 uses
  %i.be = getelementptr i8, ptr %next.gep146, i64 16
  store <8 x i16> splat (i16 48), ptr %next.gep146, align 2, !tbaa !47
  store <8 x i16> splat (i16 48), ptr %i.be, align 2, !tbaa !47
  %index.next147 = add nuw i64 %index145, 16      ; 2 uses
  %i.bf = icmp eq i64 %index.next147, %n.vec143
  br i1 %i.bf, label %middle.block148, label %vector.body144, !llvm.loop !79

middle.block148:                                  ; preds = %vector.body144
  %cmp.n149 = icmp eq i64 %i.az, %n.vec143
  br i1 %cmp.n149, label %_PyUnicode_Fill.exit, label %vec.epilog.iter.check154

vec.epilog.iter.check154:                         ; preds = %middle.block148
  %min.epilog.iters.check155 = icmp eq i64 %i.ba, 0
  br i1 %min.epilog.iters.check155, label %.lr.ph30.i.preheader, label %vec.epilog.ph156, !prof !82

vec.epilog.ph156:                                 ; preds = %vector.main.loop.iter.check140, %vec.epilog.iter.check154
  %vec.epilog.resume.val150 = phi i64 [ %n.vec143, %vec.epilog.iter.check154 ], [ 0, %vector.main.loop.iter.check140 ]
  %n.vec157 = and i64 %i.az, -4                   ; 3 uses
  %i.bg = shl i64 %n.vec157, 1
  %i.bh = getelementptr i8, ptr %i.am, i64 %i.bg
  br label %vec.epilog.vector.body158

vec.epilog.vector.body158:                        ; preds = %vec.epilog.vector.body158, %vec.epilog.ph156
  %index159 = phi i64 [ %vec.epilog.resume.val150, %vec.epilog.ph156 ], [ %index.next161, %vec.epilog.vector.body158 ] ; 2 uses
  %i.bi = shl i64 %index159, 1
  %next.gep160 = getelementptr i8, ptr %i.am, i64 %i.bi
  store <4 x i16> splat (i16 48), ptr %next.gep160, align 2, !tbaa !47
  %index.next161 = add nuw i64 %index159, 4       ; 2 uses
  %i.bj = icmp eq i64 %index.next161, %n.vec157
  br i1 %i.bj, label %vec.epilog.middle.block162, label %vec.epilog.vector.body158, !llvm.loop !83

vec.epilog.middle.block162:                       ; preds = %vec.epilog.vector.body158
  %cmp.n163 = icmp eq i64 %i.az, %n.vec157
  br i1 %cmp.n163, label %_PyUnicode_Fill.exit, label %.lr.ph30.i.preheader

.lr.ph30.i.preheader:                             ; preds = %iter.check152, %vec.epilog.iter.check154, %vec.epilog.middle.block162
  %.029.i.ph = phi ptr [ %i.am, %iter.check152 ], [ %i.bc, %vec.epilog.iter.check154 ], [ %i.bh, %vec.epilog.middle.block162 ]
  br label %.lr.ph30.i

.lr.ph30.i:                                       ; preds = %.lr.ph30.i.preheader, %.lr.ph30.i
  %.029.i = phi ptr [ %i.bk, %.lr.ph30.i ], [ %.029.i.ph, %.lr.ph30.i.preheader ] ; 2 uses
  store i16 48, ptr %.029.i, align 2, !tbaa !47
  %i.bk = getelementptr i8, ptr %.029.i, i64 2    ; 2 uses
  %i.bl = icmp ult ptr %i.bk, %i.an
  br i1 %i.bl, label %.lr.ph30.i, label %_PyUnicode_Fill.exit, !llvm.loop !84

bb.n:                                             ; preds = %_PyUnicode_DATA.exit
  %i.bm = getelementptr [4 x i8], ptr %.0.i61, i64 %i.ac ; 4 uses
  %i.bn = getelementptr [4 x i8], ptr %.0.i61, i64 %i.ab ; 2 uses
  %i.bo = icmp ult ptr %i.bm, %i.bn
  br i1 %i.bo, label %.lr.ph.i.preheader, label %_PyUnicode_Fill.exit

.lr.ph.i.preheader:                               ; preds = %bb.n
  %i.bp = ptrtoaddr ptr %.0.i61 to i64            ; 2 uses
  %i.bq = shl i64 %i.ab, 2
  %10 = add i64 %i.bq, %i.bp                      ; 2 uses
  %i.br = add i64 %10, 4
  %11 = shl i64 %5, 2
  %12 = sub i64 %i.br, %11
  %i.bs = tail call i64 @llvm.umax.i64(i64 %12, i64 %10)
  %i.bt = shl i64 %5, 2
  %13 = add i64 %i.bs, %i.bt
  %14 = xor i64 %i.bp, -1
  %15 = add i64 %13, %14
  %16 = shl i64 %i.ab, 2
  %17 = sub i64 %15, %16                          ; 2 uses
  %i.bu = lshr i64 %17, 2
  %i.bv = add nuw nsw i64 %i.bu, 1                ; 2 uses
  %min.iters.check126 = icmp ult i64 %17, 28
  br i1 %min.iters.check126, label %.lr.ph.i.preheader165, label %vector.ph127

vector.ph127:                                     ; preds = %.lr.ph.i.preheader
  %n.vec128 = and i64 %i.bv, 9223372036854775800  ; 3 uses
  %i.bw = shl i64 %n.vec128, 2
  %i.bx = getelementptr i8, ptr %i.bm, i64 %i.bw
  br label %vector.body129

vector.body129:                                   ; preds = %vector.body129, %vector.ph127
  %index130 = phi i64 [ 0, %vector.ph127 ], [ %index.next132, %vector.body129 ] ; 2 uses
  %i.by = shl i64 %index130, 2
  %next.gep131 = getelementptr i8, ptr %i.bm, i64 %i.by ; 2 uses
  %i.bz = getelementptr i8, ptr %next.gep131, i64 16
  store <4 x i32> splat (i32 48), ptr %next.gep131, align 4, !tbaa !7
  store <4 x i32> splat (i32 48), ptr %i.bz, align 4, !tbaa !7
  %index.next132 = add nuw i64 %index130, 8       ; 2 uses
  %i.ca = icmp eq i64 %index.next132, %n.vec128
  br i1 %i.ca, label %middle.block133, label %vector.body129, !llvm.loop !85

middle.block133:                                  ; preds = %vector.body129
  %cmp.n134 = icmp eq i64 %i.bv, %n.vec128
  br i1 %cmp.n134, label %_PyUnicode_Fill.exit, label %.lr.ph.i.preheader165

.lr.ph.i.preheader165:                            ; preds = %.lr.ph.i.preheader, %middle.block133
  %.02628.i.ph = phi ptr [ %i.bm, %.lr.ph.i.preheader ], [ %i.bx, %middle.block133 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader165, %.lr.ph.i
  %.02628.i = phi ptr [ %i.cb, %.lr.ph.i ], [ %.02628.i.ph, %.lr.ph.i.preheader165 ] ; 2 uses
  store i32 48, ptr %.02628.i, align 4, !tbaa !7
  %i.cb = getelementptr i8, ptr %.02628.i, i64 4  ; 2 uses
  %i.cc = icmp ult ptr %i.cb, %i.bn
  br i1 %i.cc, label %.lr.ph.i, label %_PyUnicode_Fill.exit, !llvm.loop !86

bb.o:                                             ; preds = %_PyUnicode_DATA.exit
  unreachable

.critedge59:                                      ; preds = %.thread96
  %i.cd = load ptr, ptr %0, align 8, !tbaa !34    ; 3 uses
  %i.ce = getelementptr i8, ptr %i.cd, i64 32
  %i.cf = load i32, ptr %i.ce, align 8            ; 3 uses
  %i.cg = lshr i32 %i.cf, 2
  %i.ch = and i32 %i.cg, 7
  %i.ci = and i32 %i.cf, 32
  %.not.i63 = icmp eq i32 %i.ci, 0
  br i1 %.not.i63, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.critedge59
  %i.cj = and i32 %i.cf, 64
  %.not.i.i64 = icmp eq i32 %i.cj, 0
  %.0.v.i.i65 = select i1 %.not.i.i64, i64 56, i64 40
  %.0.i.i66 = getelementptr i8, ptr %i.cd, i64 %.0.v.i.i65
  br label %_PyUnicode_DATA.exit69

bb.q:                                             ; preds = %.critedge59
  %i.ck = getelementptr i8, ptr %i.cd, i64 56
  %.val4.i68 = load ptr, ptr %i.ck, align 8, !tbaa !15
  br label %_PyUnicode_DATA.exit69

_PyUnicode_DATA.exit69:                           ; preds = %bb.p, %bb.q
  %.0.i67 = phi ptr [ %.0.i.i66, %bb.p ], [ %.val4.i68, %bb.q ] ; 5 uses
  %.0.i67106 = ptrtoaddr ptr %.0.i67 to i64       ; 2 uses
  %i.cl = load i64, ptr %1, align 8, !tbaa !43    ; 13 uses
  switch i32 %i.ch, label %bb.u [
    i32 1, label %bb.r
    i32 2, label %bb.s
    i32 4, label %bb.t
  ]

bb.r:                                             ; preds = %_PyUnicode_DATA.exit69
  %i.cm = getelementptr i8, ptr %.0.i67, i64 %i.cl
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.cm, i8 48, i64 range(i64 1, 0) %5, i1 false)
  %.pre85 = load i64, ptr %1, align 8, !tbaa !43
  br label %_PyUnicode_Fill.exit74

bb.s:                                             ; preds = %_PyUnicode_DATA.exit69
  %i.cn = getelementptr [2 x i8], ptr %.0.i67, i64 %i.cl ; 7 uses
  %i.co = getelementptr [2 x i8], ptr %i.cn, i64 %5 ; 2 uses
  %i.cp = icmp ult ptr %i.cn, %i.co
  br i1 %i.cp, label %iter.check, label %_PyUnicode_Fill.exit74

iter.check:                                       ; preds = %bb.s
  %i.cq = shl i64 %i.cl, 1                        ; 2 uses
  %i.cr = add i64 %i.cq, %.0.i67106               ; 2 uses
  %i.cs = shl i64 %5, 1
  %i.ct = add i64 %i.cr, %i.cs
  %i.cu = add i64 %i.cr, 2
  %umax = tail call i64 @llvm.umax.i64(i64 %i.ct, i64 %i.cu)
  %i.cv = xor i64 %.0.i67106, -1
  %i.cw = add i64 %umax, %i.cv
  %i.cx = sub i64 %i.cw, %i.cq                    ; 3 uses
  %i.cy = lshr i64 %i.cx, 1
  %i.cz = add nuw i64 %i.cy, 1                    ; 5 uses
  %min.iters.check108 = icmp ult i64 %i.cx, 6
  br i1 %min.iters.check108, label %.lr.ph30.i72.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check109 = icmp ult i64 %i.cx, 30
  br i1 %min.iters.check109, label %vec.epilog.ph, label %vector.ph110

vector.ph110:                                     ; preds = %vector.main.loop.iter.check
  %i.da = and i64 %i.cz, 12
  %n.vec111 = and i64 %i.cz, -16                  ; 4 uses
  %i.db = shl i64 %n.vec111, 1
  %i.dc = getelementptr i8, ptr %i.cn, i64 %i.db
  br label %vector.body112

vector.body112:                                   ; preds = %vector.body112, %vector.ph110
  %index113 = phi i64 [ 0, %vector.ph110 ], [ %index.next115, %vector.body112 ] ; 2 uses
  %i.dd = shl i64 %index113, 1
  %next.gep114 = getelementptr i8, ptr %i.cn, i64 %i.dd ; 2 uses
  %i.de = getelementptr i8, ptr %next.gep114, i64 16
  store <8 x i16> splat (i16 48), ptr %next.gep114, align 2, !tbaa !47
  store <8 x i16> splat (i16 48), ptr %i.de, align 2, !tbaa !47
  %index.next115 = add nuw i64 %index113, 16      ; 2 uses
  %i.df = icmp eq i64 %index.next115, %n.vec111
  br i1 %i.df, label %middle.block116, label %vector.body112, !llvm.loop !87

middle.block116:                                  ; preds = %vector.body112
  %cmp.n117 = icmp eq i64 %i.cz, %n.vec111
  br i1 %cmp.n117, label %_PyUnicode_Fill.exit74, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block116
  %min.epilog.iters.check = icmp eq i64 %i.da, 0
  br i1 %min.epilog.iters.check, label %.lr.ph30.i72.preheader, label %vec.epilog.ph, !prof !82

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec111, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec119 = and i64 %i.cz, -4                   ; 3 uses
  %i.dg = shl i64 %n.vec119, 1
  %i.dh = getelementptr i8, ptr %i.cn, i64 %i.dg
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index120 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next122, %vec.epilog.vector.body ] ; 2 uses
  %i.di = shl i64 %index120, 1
  %next.gep121 = getelementptr i8, ptr %i.cn, i64 %i.di
  store <4 x i16> splat (i16 48), ptr %next.gep121, align 2, !tbaa !47
  %index.next122 = add nuw i64 %index120, 4       ; 2 uses
  %i.dj = icmp eq i64 %index.next122, %n.vec119
  br i1 %i.dj, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !88

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n123 = icmp eq i64 %i.cz, %n.vec119
  br i1 %cmp.n123, label %_PyUnicode_Fill.exit74, label %.lr.ph30.i72.preheader

.lr.ph30.i72.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.029.i73.ph = phi ptr [ %i.cn, %iter.check ], [ %i.dc, %vec.epilog.iter.check ], [ %i.dh, %vec.epilog.middle.block ]
  br label %.lr.ph30.i72

.lr.ph30.i72:                                     ; preds = %.lr.ph30.i72.preheader, %.lr.ph30.i72
  %.029.i73 = phi ptr [ %i.dk, %.lr.ph30.i72 ], [ %.029.i73.ph, %.lr.ph30.i72.preheader ] ; 2 uses
  store i16 48, ptr %.029.i73, align 2, !tbaa !47
  %i.dk = getelementptr i8, ptr %.029.i73, i64 2  ; 2 uses
  %i.dl = icmp ult ptr %i.dk, %i.co
  br i1 %i.dl, label %.lr.ph30.i72, label %_PyUnicode_Fill.exit74, !llvm.loop !89

bb.t:                                             ; preds = %_PyUnicode_DATA.exit69
  %i.dm = getelementptr [4 x i8], ptr %.0.i67, i64 %i.cl ; 5 uses
  %i.dn = getelementptr [4 x i8], ptr %i.dm, i64 %5 ; 2 uses
  %i.do = icmp ult ptr %i.dm, %i.dn
  br i1 %i.do, label %.lr.ph.i70.preheader, label %_PyUnicode_Fill.exit74

.lr.ph.i70.preheader:                             ; preds = %bb.t
  %i.dp = ptrtoaddr ptr %.0.i67 to i64            ; 2 uses
  %i.dq = shl i64 %i.cl, 2
  %i.dr = shl i64 %5, 2
  %i.ds = add i64 %i.dq, %i.dp                    ; 2 uses
  %i.dt = add i64 %i.ds, %i.dr
  %i.du = add i64 %i.ds, 4
  %i.dv = tail call i64 @llvm.umax.i64(i64 %i.dt, i64 %i.du)
  %18 = xor i64 %i.dp, -1
  %i.dw = add i64 %i.dv, %18
  %19 = shl i64 %i.cl, 2
  %20 = sub i64 %i.dw, %19                        ; 2 uses
  %i.dx = lshr i64 %20, 2
  %i.dy = add nuw nsw i64 %i.dx, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %20, 28
  br i1 %min.iters.check, label %.lr.ph.i70.preheader167, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i70.preheader
  %n.vec = and i64 %i.dy, 9223372036854775800     ; 3 uses
  %i.dz = shl i64 %n.vec, 2
  %i.ea = getelementptr i8, ptr %i.dm, i64 %i.dz
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.eb = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.dm, i64 %i.eb ; 2 uses
  %i.ec = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> splat (i32 48), ptr %next.gep, align 4, !tbaa !7
  store <4 x i32> splat (i32 48), ptr %i.ec, align 4, !tbaa !7
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ed = icmp eq i64 %index.next, %n.vec
  br i1 %i.ed, label %middle.block, label %vector.body, !llvm.loop !90

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dy, %n.vec
  br i1 %cmp.n, label %_PyUnicode_Fill.exit74, label %.lr.ph.i70.preheader167

.lr.ph.i70.preheader167:                          ; preds = %.lr.ph.i70.preheader, %middle.block
  %.02628.i71.ph = phi ptr [ %i.dm, %.lr.ph.i70.preheader ], [ %i.ea, %middle.block ]
  br label %.lr.ph.i70

.lr.ph.i70:                                       ; preds = %.lr.ph.i70.preheader167, %.lr.ph.i70
  %.02628.i71 = phi ptr [ %i.ee, %.lr.ph.i70 ], [ %.02628.i71.ph, %.lr.ph.i70.preheader167 ] ; 2 uses
  store i32 48, ptr %.02628.i71, align 4, !tbaa !7
  %i.ee = getelementptr i8, ptr %.02628.i71, i64 4 ; 2 uses
  %i.ef = icmp ult ptr %i.ee, %i.dn
  br i1 %i.ef, label %.lr.ph.i70, label %_PyUnicode_Fill.exit74, !llvm.loop !91

bb.u:                                             ; preds = %_PyUnicode_DATA.exit69
  unreachable

_PyUnicode_Fill.exit74:                           ; preds = %.lr.ph.i70, %.lr.ph30.i72, %middle.block, %middle.block116, %vec.epilog.middle.block, %bb.r, %bb.s, %bb.t
  %i.eg = phi i64 [ %i.cl, %middle.block116 ], [ %i.cl, %bb.t ], [ %.pre85, %bb.r ], [ %i.cl, %bb.s ], [ %i.cl, %middle.block ], [ %i.cl, %vec.epilog.middle.block ], [ %i.cl, %.lr.ph30.i72 ], [ %i.cl, %.lr.ph.i70 ]
  %i.eh = add i64 %i.eg, %5
  store i64 %i.eh, ptr %1, align 8, !tbaa !43
  br label %_PyUnicode_Fill.exit

_PyUnicode_Fill.exit:                             ; preds = %.lr.ph.i, %.lr.ph30.i, %middle.block133, %middle.block148, %vec.epilog.middle.block162, %.thread96, %bb.n, %bb.m, %bb.l, %_PyUnicode_Fill.exit74, %bb.b, %PyUnicode_MAX_CHAR_VALUE.exit, %bb.h
  ret void
}

declare void @PyMem_Free(ptr noundef) local_unnamed_addr #2

declare double @PyFloat_AsDouble(ptr noundef) local_unnamed_addr #2

declare ptr @PyOS_double_to_string(double noundef, i8 noundef signext, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #6

declare i32 @_PyUnicodeWriter_WriteASCIIString(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @_PyUnicode_FromASCII(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @parse_number(ptr nofree noundef nonnull readonly captures(none) %0, i64 noundef range(i64 0, 2) %1, i64 noundef %2, ptr nofree noundef nonnull writeonly captures(none) %3, ptr nofree noundef nonnull writeonly captures(none) %4, ptr nofree noundef nonnull writeonly captures(none) %5) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 8              ; 3 uses
  %i.c = lshr i32 %i.b, 2
  %i.d = and i32 %i.c, 7                          ; 3 uses
  %i.e = and i32 %i.b, 32
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = and i32 %i.b, 64
  %.not.i.i = icmp eq i32 %i.f, 0
  %.0.v.i.i = select i1 %.not.i.i, i64 56, i64 40
  %.0.i.i = getelementptr i8, ptr %0, i64 %.0.v.i.i
  br label %_PyUnicode_DATA.exit

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %0, i64 56
  %.val4.i = load ptr, ptr %i.g, align 8, !tbaa !15
  br label %_PyUnicode_DATA.exit

_PyUnicode_DATA.exit:                             ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %.0.i.i, %bb.b ], [ %.val4.i, %bb.c ] ; 9 uses
  %i.h = icmp slt i64 %1, %2
  br i1 %i.h, label %.lr.ph, label %.critedge33.thread

.lr.ph:                                           ; preds = %_PyUnicode_DATA.exit
  switch i32 %i.d, label %PyUnicode_READ.exit [
    i32 1, label %PyUnicode_READ.exit.us
    i32 2, label %PyUnicode_READ.exit.us45
  ]

PyUnicode_READ.exit.us:                           ; preds = %.lr.ph, %bb.d
  %.041.us = phi i64 [ %i.o, %bb.d ], [ %1, %.lr.ph ] ; 3 uses
  %i.i = getelementptr i8, ptr %.0.i, i64 %.041.us
  %i.j = load i8, ptr %i.i, align 1, !tbaa !15
  %i.k = zext i8 %i.j to i64
  %i.l = getelementptr [4 x i8], ptr @_Py_ctype_table, i64 %i.k
  %i.m = load i32, ptr %i.l, align 4, !tbaa !7
  %i.n = and i32 %i.m, 4
  %.not.us = icmp eq i32 %i.n, 0
  br i1 %.not.us, label %.critedge, label %bb.d

bb.d:                                             ; preds = %PyUnicode_READ.exit.us
  %i.o = add nuw i64 %.041.us, 1                  ; 2 uses
  %exitcond80.not = icmp eq i64 %i.o, %2
  br i1 %exitcond80.not, label %.critedge33.thread, label %PyUnicode_READ.exit.us, !llvm.loop !92

PyUnicode_READ.exit.us45:                         ; preds = %.lr.ph, %bb.e
  %.041.us44 = phi i64 [ %i.w, %bb.e ], [ %1, %.lr.ph ] ; 3 uses
  %i.p = getelementptr [2 x i8], ptr %.0.i, i64 %.041.us44
  %i.q = load i16, ptr %i.p, align 2, !tbaa !47
  %i.r = and i16 %i.q, 255
  %i.s = zext nneg i16 %i.r to i64
  %i.t = getelementptr [4 x i8], ptr @_Py_ctype_table, i64 %i.s
  %i.u = load i32, ptr %i.t, align 4, !tbaa !7
  %i.v = and i32 %i.u, 4
  %.not.us47 = icmp eq i32 %i.v, 0
  br i1 %.not.us47, label %.critedge, label %bb.e

bb.e:                                             ; preds = %PyUnicode_READ.exit.us45
  %i.w = add nuw i64 %.041.us44, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.w, %2
  br i1 %exitcond.not, label %.critedge33.thread, label %PyUnicode_READ.exit.us45, !llvm.loop !92

.critedge33.thread:                               ; preds = %bb.e, %bb.d, %bb.f, %_PyUnicode_DATA.exit
  %.0.lcssa = phi i64 [ %1, %_PyUnicode_DATA.exit ], [ %2, %bb.d ], [ %2, %bb.f ], [ %2, %bb.e ]
  store i32 0, ptr %5, align 4, !tbaa !7
  br label %bb.j

PyUnicode_READ.exit:                              ; preds = %.lr.ph, %bb.f
  %.041 = phi i64 [ %i.ae, %bb.f ], [ %1, %.lr.ph ] ; 3 uses
  %i.x = getelementptr [4 x i8], ptr %.0.i, i64 %.041
  %i.y = load i32, ptr %i.x, align 4, !tbaa !7
  %i.z = and i32 %i.y, 255
  %i.aa = zext nneg i32 %i.z to i64
  %i.ab = getelementptr [4 x i8], ptr @_Py_ctype_table, i64 %i.aa
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !7
  %i.ad = and i32 %i.ac, 4
  %.not = icmp eq i32 %i.ad, 0
  br i1 %.not, label %.critedge, label %bb.f

bb.f:                                             ; preds = %PyUnicode_READ.exit
  %i.ae = add nuw i64 %.041, 1                    ; 2 uses
  %exitcond81.not = icmp eq i64 %i.ae, %2
  br i1 %exitcond81.not, label %.critedge33.thread, label %PyUnicode_READ.exit, !llvm.loop !92

.critedge:                                        ; preds = %PyUnicode_READ.exit.us45, %PyUnicode_READ.exit.us, %PyUnicode_READ.exit
  %.us-phi = phi i64 [ %.041.us, %PyUnicode_READ.exit.us ], [ %.041, %PyUnicode_READ.exit ], [ %.041.us44, %PyUnicode_READ.exit.us45 ] ; 4 uses
  switch i32 %i.d, label %bb.i [
    i32 1, label %bb.g
    i32 2, label %bb.h
  ]

bb.g:                                             ; preds = %.critedge
  %i.af = getelementptr i8, ptr %.0.i, i64 %.us-phi
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !15
  %i.ah = zext i8 %i.ag to i32
  br label %.critedge33

bb.h:                                             ; preds = %.critedge
  %i.ai = getelementptr [2 x i8], ptr %.0.i, i64 %.us-phi
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !47
  %i.ak = zext i16 %i.aj to i32
  br label %.critedge33

bb.i:                                             ; preds = %.critedge
  %i.al = getelementptr [4 x i8], ptr %.0.i, i64 %.us-phi
  %i.am = load i32, ptr %i.al, align 4, !tbaa !7
  br label %.critedge33

.critedge33:                                      ; preds = %bb.i, %bb.h, %bb.g
  %.0.i35 = phi i32 [ %i.ah, %bb.g ], [ %i.ak, %bb.h ], [ %i.am, %bb.i ]
  %.0.i35.fr = freeze i32 %.0.i35
  %i.an = icmp eq i32 %.0.i35.fr, 46              ; 2 uses
  %i.ao = zext i1 %i.an to i32
  store i32 %i.ao, ptr %5, align 4, !tbaa !7
  %i.ap = zext i1 %i.an to i64
  %spec.select = add nuw nsw i64 %.us-phi, %i.ap
  br label %bb.j

bb.j:                                             ; preds = %.critedge33, %.critedge33.thread
  %i.aq = phi i64 [ %.0.lcssa, %.critedge33.thread ], [ %spec.select, %.critedge33 ] ; 6 uses
  %i.ar = icmp slt i64 %i.aq, %2
  br i1 %i.ar, label %.lr.ph53, label %.critedge2

.lr.ph53:                                         ; preds = %bb.j
  switch i32 %i.d, label %PyUnicode_READ.exit38 [
    i32 1, label %PyUnicode_READ.exit38.us
    i32 2, label %PyUnicode_READ.exit38.us60
  ]

PyUnicode_READ.exit38.us:                         ; preds = %.lr.ph53, %bb.k
  %.252.us = phi i64 [ %i.ay, %bb.k ], [ %i.aq, %.lr.ph53 ] ; 3 uses
  %i.as = getelementptr i8, ptr %.0.i, i64 %.252.us
  %i.at = load i8, ptr %i.as, align 1, !tbaa !15
  %i.au = zext i8 %i.at to i64
  %i.av = getelementptr [4 x i8], ptr @_Py_ctype_table, i64 %i.au
end_hunk_0
