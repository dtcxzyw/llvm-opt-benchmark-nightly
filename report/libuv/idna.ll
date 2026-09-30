Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libuv/original/idna?download=true
inline.NumInlined: 12
inline.NumDeleted: 3
begin_hunk_0_@uv_wtf8_to_utf16:bb.a
  %i.ap = getelementptr inbounds nuw i8, ptr %.08, i64 2
  store i16 %i.ao, ptr %.08, align 2
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %uv__wtf8_decode1.exit.thread
  %.11417 = phi ptr [ %i.v, %bb.k ], [ %.11418, %uv__wtf8_decode1.exit.thread ] ; 2 uses
  %.19 = phi ptr [ %i.an, %bb.k ], [ %i.ap, %uv__wtf8_decode1.exit.thread ]
  %i.aq = getelementptr inbounds nuw i8, ptr %.11417, i64 1
  %i.ar = load i8, ptr %.11417, align 1
  %.not = icmp eq i8 %i.ar, 0
  br i1 %.not, label %bb.m, label %bb.b, !llvm.loop !14

bb.m:                                             ; preds = %bb.l
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local i64 @uv_utf16_length_as_wtf8(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #2 {
bb.a:
  %.not37 = icmp eq i64 %1, 0
  br i1 %.not37, label %uv__get_surrogate_value.exit._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.h
  %.040 = phi i64 [ %.1, %bb.h ], [ 0, %bb.a ]    ; 5 uses
  %.01939 = phi i64 [ %spec.select24, %bb.h ], [ %1, %bb.a ] ; 7 uses
  %.02138 = phi ptr [ %i.q, %bb.h ], [ %0, %bb.a ] ; 5 uses
  %i.a = load i16, ptr %.02138, align 2           ; 4 uses
  %i.b = and i16 %i.a, -1024
  %or.cond.i = icmp eq i16 %i.b, -10240
  %i.c = icmp ne i64 %.01939, 1
  %or.cond4.i = and i1 %i.c, %or.cond.i
  br i1 %or.cond4.i, label %bb.b, label %uv__get_surrogate_value.exit

bb.b:                                             ; preds = %.lr.ph
  %i.d = getelementptr inbounds nuw i8, ptr %.02138, i64 2 ; 2 uses
  %i.e = load i16, ptr %i.d, align 2
  %i.f = and i16 %i.e, -1024
  %or.cond7.i = icmp eq i16 %i.f, -9216
  br i1 %or.cond7.i, label %bb.g, label %.thread35

uv__get_surrogate_value.exit:                     ; preds = %.lr.ph
  %i.g = icmp slt i64 %.01939, 0
  %i.h = icmp eq i16 %i.a, 0
  %or.cond = and i1 %i.g, %i.h
  br i1 %or.cond, label %uv__get_surrogate_value.exit._crit_edge, label %bb.c

bb.c:                                             ; preds = %uv__get_surrogate_value.exit
  %i.i = icmp ult i16 %i.a, 128
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = add i64 %.040, 1
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.k = icmp ult i16 %i.a, 2048
  br i1 %i.k, label %bb.f, label %.thread35

bb.f:                                             ; preds = %bb.e
  %i.l = add i64 %.040, 2
  br label %bb.h

bb.g:                                             ; preds = %bb.b
  %i.m = add i64 %.040, 4
  %i.n = icmp sgt i64 %.01939, 0
  %i.o = sext i1 %i.n to i64
  %spec.select = add nsw i64 %.01939, %i.o
  br label %bb.h

.thread35:                                        ; preds = %bb.e, %bb.b
  %i.p = add i64 %.040, 3
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %.thread35, %bb.d
  %.122 = phi ptr [ %.02138, %bb.d ], [ %.02138, %bb.f ], [ %.02138, %.thread35 ], [ %i.d, %bb.g ]
  %.120 = phi i64 [ %.01939, %bb.d ], [ %.01939, %bb.f ], [ %.01939, %.thread35 ], [ %spec.select, %bb.g ] ; 2 uses
  %.1 = phi i64 [ %i.j, %bb.d ], [ %i.l, %bb.f ], [ %i.p, %.thread35 ], [ %i.m, %bb.g ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.122, i64 2
  %i.r = icmp sgt i64 %.120, 0
  %i.s = sext i1 %i.r to i64
  %spec.select24 = add nsw i64 %.120, %i.s        ; 2 uses
  %.not = icmp eq i64 %spec.select24, 0
  br i1 %.not, label %uv__get_surrogate_value.exit._crit_edge, label %.lr.ph, !llvm.loop !0

uv__get_surrogate_value.exit._crit_edge:          ; preds = %bb.h, %uv__get_surrogate_value.exit, %bb.a
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %.040, %uv__get_surrogate_value.exit ], [ %.1, %bb.h ]
  ret i64 %.0.lcssa
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -105, 1) i32 @uv_utf16_to_wtf8(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef captures(address_is_null) %2, ptr nofree noundef captures(address_is_null) %3) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp eq ptr %2, null                     ; 2 uses
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %2, align 8                ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %.thread145

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not37.i = icmp eq i64 %1, 0
  br i1 %.not37.i, label %uv_utf16_length_as_wtf8.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %bb.j
  %.040.i = phi i64 [ %.1.i, %bb.j ], [ 0, %bb.c ] ; 5 uses
  %.01939.i = phi i64 [ %spec.select24.i, %bb.j ], [ %1, %bb.c ] ; 7 uses
  %.02138.i = phi ptr [ %i.t, %bb.j ], [ %0, %bb.c ] ; 5 uses
  %i.d = load i16, ptr %.02138.i, align 2         ; 4 uses
  %i.e = and i16 %i.d, -1024
  %or.cond.i.i = icmp eq i16 %i.e, -10240
  %i.f = icmp ne i64 %.01939.i, 1
  %or.cond4.i.i = and i1 %i.f, %or.cond.i.i
  br i1 %or.cond4.i.i, label %bb.d, label %uv__get_surrogate_value.exit.i

bb.d:                                             ; preds = %.lr.ph.i
  %i.g = getelementptr inbounds nuw i8, ptr %.02138.i, i64 2 ; 2 uses
  %i.h = load i16, ptr %i.g, align 2
  %i.i = and i16 %i.h, -1024
  %or.cond7.i.i = icmp eq i16 %i.i, -9216
  br i1 %or.cond7.i.i, label %bb.i, label %.thread35.i

uv__get_surrogate_value.exit.i:                   ; preds = %.lr.ph.i
  %i.j = icmp slt i64 %.01939.i, 0
  %i.k = icmp eq i16 %i.d, 0
  %or.cond.i = and i1 %i.j, %i.k
  br i1 %or.cond.i, label %uv_utf16_length_as_wtf8.exit, label %bb.e

bb.e:                                             ; preds = %uv__get_surrogate_value.exit.i
  %i.l = icmp ult i16 %i.d, 128
  br i1 %i.l, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.m = add i64 %.040.i, 1
  br label %bb.j

bb.g:                                             ; preds = %bb.e
  %i.n = icmp ult i16 %i.d, 2048
  br i1 %i.n, label %bb.h, label %.thread35.i

bb.h:                                             ; preds = %bb.g
  %i.o = add i64 %.040.i, 2
  br label %bb.j

bb.i:                                             ; preds = %bb.d
  %i.p = add i64 %.040.i, 4
  %i.q = icmp sgt i64 %.01939.i, 0
  %i.r = sext i1 %i.q to i64
  %spec.select.i = add nsw i64 %.01939.i, %i.r
  br label %bb.j

.thread35.i:                                      ; preds = %bb.g, %bb.d
  %i.s = add i64 %.040.i, 3
  br label %bb.j

bb.j:                                             ; preds = %.thread35.i, %bb.i, %bb.h, %bb.f
  %.122.i = phi ptr [ %.02138.i, %bb.f ], [ %.02138.i, %bb.h ], [ %.02138.i, %.thread35.i ], [ %i.g, %bb.i ]
  %.120.i = phi i64 [ %.01939.i, %bb.f ], [ %.01939.i, %bb.h ], [ %.01939.i, %.thread35.i ], [ %spec.select.i, %bb.i ] ; 2 uses
  %.1.i = phi i64 [ %i.m, %bb.f ], [ %i.o, %bb.h ], [ %i.s, %.thread35.i ], [ %i.p, %bb.i ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.122.i, i64 2
  %i.u = icmp sgt i64 %.120.i, 0
  %i.v = sext i1 %i.u to i64
  %spec.select24.i = add nsw i64 %.120.i, %i.v    ; 2 uses
  %.not.i = icmp eq i64 %spec.select24.i, 0
  br i1 %.not.i, label %uv_utf16_length_as_wtf8.exit, label %.lr.ph.i, !llvm.loop !0

uv_utf16_length_as_wtf8.exit:                     ; preds = %uv__get_surrogate_value.exit.i, %bb.j, %bb.c
  %.0.lcssa.i = phi i64 [ 0, %bb.c ], [ %.1.i, %bb.j ], [ %.040.i, %uv__get_surrogate_value.exit.i ] ; 4 uses
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.l, label %bb.k

bb.k:                                             ; preds = %uv_utf16_length_as_wtf8.exit
  store i64 %.0.lcssa.i, ptr %3, align 8
  br label %bb.l

.thread145:                                       ; preds = %bb.b
  %i.w = load i64, ptr %3, align 8
  br label %bb.p

bb.l:                                             ; preds = %uv_utf16_length_as_wtf8.exit, %bb.k
  br i1 %i.a, label %bb.ao, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.pr = load ptr, ptr %2, align 8                ; 2 uses
  %i.x = icmp eq ptr %.pr, null
  br i1 %i.x, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.y = add i64 %.0.lcssa.i, 1
  %i.z = tail call ptr @uv__malloc(i64 noundef %i.y) #7 ; 3 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.ao, label %bb.o

bb.o:                                             ; preds = %bb.n
  store ptr %i.z, ptr %2, align 8
  br label %bb.p

bb.p:                                             ; preds = %.thread145, %bb.m, %bb.o
  %.087144147 = phi i64 [ %.0.lcssa.i, %bb.o ], [ %.0.lcssa.i, %bb.m ], [ %i.w, %.thread145 ] ; 4 uses
  %.0 = phi ptr [ %i.z, %bb.o ], [ %.pr, %bb.m ], [ %i.b, %.thread145 ] ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.0, i64 %.087144147 ; 8 uses
  %i.ac = icmp samesign ne i64 %.087144147, 0
  %i.ad = icmp ne i64 %1, 0
  %i.ae = and i1 %i.ac, %i.ad
  br i1 %i.ae, label %.lr.ph, label %uv__get_surrogate_value.exit._crit_edge

.lr.ph:                                           ; preds = %bb.p, %bb.ac
  %.1165 = phi ptr [ %.2, %bb.ac ], [ %.0, %bb.p ] ; 15 uses
  %.188164 = phi i64 [ %i.cu, %bb.ac ], [ %.087144147, %bb.p ] ; 7 uses
  %.090163 = phi ptr [ %i.cv, %bb.ac ], [ %0, %bb.p ] ; 12 uses
  %.092162 = phi i64 [ %spec.select119, %bb.ac ], [ %1, %bb.p ] ; 13 uses
  %i.af = load i16, ptr %.090163, align 2         ; 11 uses
  %i.ag = zext i16 %i.af to i32
  %i.ah = and i16 %i.af, -1024
  %or.cond.i123 = icmp eq i16 %i.ah, -10240
  %i.ai = icmp ne i64 %.092162, 1
  %or.cond4.i = and i1 %i.ai, %or.cond.i123
  br i1 %or.cond4.i, label %bb.q, label %uv__get_surrogate_value.exit

bb.q:                                             ; preds = %.lr.ph
  %i.aj = getelementptr inbounds nuw i8, ptr %.090163, i64 2 ; 2 uses
  %i.ak = load i16, ptr %i.aj, align 2            ; 3 uses
  %i.al = and i16 %i.ak, -1024
  %or.cond7.i = icmp eq i16 %i.al, -9216
  br i1 %or.cond7.i, label %bb.w, label %.thread160

uv__get_surrogate_value.exit:                     ; preds = %.lr.ph
  %i.am = icmp slt i64 %.092162, 0
  %i.an = icmp eq i16 %i.af, 0
  %or.cond = and i1 %i.am, %i.an
  br i1 %or.cond, label %uv__get_surrogate_value.exit._crit_edge, label %bb.r

bb.r:                                             ; preds = %uv__get_surrogate_value.exit
  %i.ao = icmp ult i16 %i.af, 128
  br i1 %i.ao, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ap = trunc nuw nsw i16 %i.af to i8
  %i.aq = getelementptr inbounds nuw i8, ptr %.1165, i64 1
  store i8 %i.ap, ptr %.1165, align 1
  br label %bb.ac

bb.t:                                             ; preds = %bb.r
  %i.ar = icmp ult i16 %i.af, 2048
  br i1 %i.ar, label %bb.u, label %.thread160

bb.u:                                             ; preds = %bb.t
  %i.as = lshr i16 %i.af, 6
  %i.at = trunc nuw nsw i16 %i.as to i8
  %i.au = or disjoint i8 %i.at, -64
  %i.av = getelementptr inbounds nuw i8, ptr %.1165, i64 1 ; 3 uses
  store i8 %i.au, ptr %.1165, align 1
  %i.aw = icmp eq ptr %i.av, %i.ab
  br i1 %i.aw, label %uv__get_surrogate_value.exit._crit_edge, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ax = trunc i16 %i.af to i8
  %i.ay = and i8 %i.ax, 63
  %i.az = or disjoint i8 %i.ay, -128
  %i.ba = getelementptr inbounds nuw i8, ptr %.1165, i64 2
  store i8 %i.az, ptr %i.av, align 1
  br label %bb.ac

bb.w:                                             ; preds = %bb.q
  %i.bb = zext i16 %i.ak to i32
  %i.bc = shl nuw nsw i32 %i.ag, 10
  %i.bd = add nsw i32 %i.bc, -56613888
  %i.be = add nuw nsw i32 %i.bd, %i.bb            ; 3 uses
  %i.bf = lshr i32 %i.be, 18
  %i.bg = trunc nuw nsw i32 %i.bf to i8
  %i.bh = or disjoint i8 %i.bg, -16
  %i.bi = getelementptr inbounds nuw i8, ptr %.1165, i64 1 ; 3 uses
  store i8 %i.bh, ptr %.1165, align 1
  %i.bj = icmp eq ptr %i.bi, %i.ab
  br i1 %i.bj, label %uv__get_surrogate_value.exit._crit_edge, label %bb.z

.thread160:                                       ; preds = %bb.t, %bb.q
  %i.bk = lshr i16 %i.af, 12
  %i.bl = trunc nuw nsw i16 %i.bk to i8
  %i.bm = or disjoint i8 %i.bl, -32
  %i.bn = getelementptr inbounds nuw i8, ptr %.1165, i64 1 ; 3 uses
  store i8 %i.bm, ptr %.1165, align 1
  %i.bo = icmp eq ptr %i.bn, %i.ab
  br i1 %i.bo, label %uv__get_surrogate_value.exit._crit_edge, label %bb.x

bb.x:                                             ; preds = %.thread160
  %i.bp = lshr i16 %i.af, 6
  %i.bq = trunc i16 %i.bp to i8
  %i.br = and i8 %i.bq, 63
  %i.bs = or disjoint i8 %i.br, -128
  %i.bt = getelementptr inbounds nuw i8, ptr %.1165, i64 2 ; 3 uses
  store i8 %i.bs, ptr %i.bn, align 1
  %i.bu = icmp eq ptr %i.bt, %i.ab
  br i1 %i.bu, label %uv__get_surrogate_value.exit._crit_edge, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bv = trunc i16 %i.af to i8
  %i.bw = and i8 %i.bv, 63
  %i.bx = or disjoint i8 %i.bw, -128
  %i.by = getelementptr inbounds nuw i8, ptr %.1165, i64 3
  store i8 %i.bx, ptr %i.bt, align 1
  br label %bb.ac

bb.z:                                             ; preds = %bb.w
  %i.bz = lshr i32 %i.be, 12
  %i.ca = trunc i32 %i.bz to i8
  %i.cb = and i8 %i.ca, 63
  %i.cc = or disjoint i8 %i.cb, -128
  %i.cd = getelementptr inbounds nuw i8, ptr %.1165, i64 2 ; 3 uses
  store i8 %i.cc, ptr %i.bi, align 1
  %i.ce = icmp eq ptr %i.cd, %i.ab
  br i1 %i.ce, label %uv__get_surrogate_value.exit._crit_edge, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cf = lshr i32 %i.be, 6
  %i.cg = trunc i32 %i.cf to i8
  %i.ch = and i8 %i.cg, 63
  %i.ci = or disjoint i8 %i.ch, -128
  %i.cj = getelementptr inbounds nuw i8, ptr %.1165, i64 3 ; 3 uses
  store i8 %i.ci, ptr %i.cd, align 1
  %i.ck = icmp eq ptr %i.cj, %i.ab
  br i1 %i.ck, label %uv__get_surrogate_value.exit._crit_edge, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cl = trunc i16 %i.ak to i8
  %i.cm = and i8 %i.cl, 63
  %i.cn = or disjoint i8 %i.cm, -128
  %i.co = getelementptr inbounds nuw i8, ptr %.1165, i64 4
  store i8 %i.cn, ptr %i.cj, align 1
  %i.cp = icmp sgt i64 %.092162, 0
  %i.cq = sext i1 %i.cp to i64
  %spec.select = add nsw i64 %.092162, %i.cq
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.v, %bb.y, %bb.s
  %.193 = phi i64 [ %.092162, %bb.s ], [ %.092162, %bb.v ], [ %.092162, %bb.y ], [ %spec.select, %bb.ab ] ; 2 uses
  %.191 = phi ptr [ %.090163, %bb.s ], [ %.090163, %bb.v ], [ %.090163, %bb.y ], [ %i.aj, %bb.ab ]
  %.2 = phi ptr [ %i.aq, %bb.s ], [ %i.ba, %bb.v ], [ %i.by, %bb.y ], [ %i.co, %bb.ab ] ; 4 uses
  %i.cr = load ptr, ptr %2, align 8
  %i.cs = ptrtoint ptr %.2 to i64
  %i.ct = ptrtoint ptr %i.cr to i64
  %i.cu = sub i64 %i.cs, %i.ct                    ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.191, i64 2 ; 2 uses
  %i.cw = icmp sgt i64 %.193, 0
  %i.cx = sext i1 %i.cw to i64
  %spec.select119 = add nsw i64 %.193, %i.cx      ; 3 uses
  %i.cy = icmp ne ptr %.2, %i.ab
  %i.cz = icmp ne i64 %spec.select119, 0
  %i.da = select i1 %i.cy, i1 %i.cz, i1 false
  br i1 %i.da, label %.lr.ph, label %uv__get_surrogate_value.exit._crit_edge, !llvm.loop !15

uv__get_surrogate_value.exit._crit_edge:          ; preds = %bb.ac, %bb.u, %.thread160, %bb.x, %bb.w, %bb.z, %bb.aa, %uv__get_surrogate_value.exit, %bb.p
  %.090.lcssa = phi ptr [ %0, %bb.p ], [ %.090163, %uv__get_surrogate_value.exit ], [ %.090163, %bb.aa ], [ %.090163, %bb.z ], [ %.090163, %bb.w ], [ %.090163, %bb.x ], [ %.090163, %.thread160 ], [ %.090163, %bb.u ], [ %i.cv, %bb.ac ] ; 2 uses
  %.188.lcssa = phi i64 [ %.087144147, %bb.p ], [ %.188164, %uv__get_surrogate_value.exit ], [ %.188164, %bb.aa ], [ %.188164, %bb.z ], [ %.188164, %bb.w ], [ %.188164, %bb.x ], [ %.188164, %.thread160 ], [ %.188164, %bb.u ], [ %i.cu, %bb.ac ]
  %.395 = phi i64 [ %1, %bb.p ], [ 0, %uv__get_surrogate_value.exit ], [ %.092162, %bb.aa ], [ %.092162, %bb.z ], [ %.092162, %bb.w ], [ %.092162, %bb.x ], [ %.092162, %.thread160 ], [ %.092162, %bb.u ], [ %spec.select119, %bb.ac ] ; 3 uses
  %.3 = phi ptr [ %.0, %bb.p ], [ %.1165, %uv__get_surrogate_value.exit ], [ %i.cj, %bb.aa ], [ %i.cd, %bb.z ], [ %i.bi, %bb.w ], [ %i.bt, %bb.x ], [ %i.bn, %.thread160 ], [ %i.av, %bb.u ], [ %.2, %bb.ac ] ; 3 uses
  %i.db = icmp ne ptr %.3, %i.ab                  ; 2 uses
  %i.dc = icmp ne ptr %3, null                    ; 2 uses
  %or.cond3 = and i1 %i.dc, %i.db
  br i1 %or.cond3, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %uv__get_surrogate_value.exit._crit_edge
  %i.dd = load ptr, ptr %2, align 8
  %i.de = ptrtoint ptr %.3 to i64
  %i.df = ptrtoint ptr %i.dd to i64
  %i.dg = sub i64 %i.de, %i.df
  store i64 %i.dg, ptr %3, align 8
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %uv__get_surrogate_value.exit._crit_edge
  %4 = icmp sgt i64 %.395, -1
  %or.cond120.not = or i1 %4, %i.db
  br i1 %or.cond120.not, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dh = load i16, ptr %.090.lcssa, align 2
  %i.di = icmp eq i16 %i.dh, 0
  %spec.select121 = select i1 %i.di, i64 0, i64 %.395
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.4 = phi i64 [ %.395, %bb.ae ], [ %spec.select121, %bb.af ] ; 2 uses
  store i8 0, ptr %.3, align 1
  %.not118 = icmp ne i64 %.4, 0                   ; 2 uses
  %brmerge.not = and i1 %i.dc, %.not118
  %.mux = select i1 %.not118, i32 -105, i32 0
  br i1 %brmerge.not, label %.lr.ph.i125, label %bb.ao

.lr.ph.i125:                                      ; preds = %bb.ag, %bb.an
  %.040.i126 = phi i64 [ %.1.i136, %bb.an ], [ 0, %bb.ag ] ; 5 uses
  %.01939.i127 = phi i64 [ %spec.select24.i137, %bb.an ], [ %.4, %bb.ag ] ; 7 uses
  %.02138.i128 = phi ptr [ %i.dz, %bb.an ], [ %.090.lcssa, %bb.ag ] ; 5 uses
  %i.dj = load i16, ptr %.02138.i128, align 2     ; 4 uses
  %i.dk = and i16 %i.dj, -1024
  %or.cond.i.i129 = icmp eq i16 %i.dk, -10240
  %i.dl = icmp ne i64 %.01939.i127, 1
  %or.cond4.i.i130 = and i1 %i.dl, %or.cond.i.i129
  br i1 %or.cond4.i.i130, label %bb.ah, label %uv__get_surrogate_value.exit.i131

bb.ah:                                            ; preds = %.lr.ph.i125
  %i.dm = getelementptr inbounds nuw i8, ptr %.02138.i128, i64 2 ; 2 uses
  %i.dn = load i16, ptr %i.dm, align 2
  %i.do = and i16 %i.dn, -1024
  %or.cond7.i.i140 = icmp eq i16 %i.do, -9216
  br i1 %or.cond7.i.i140, label %bb.am, label %.thread35.i133

uv__get_surrogate_value.exit.i131:                ; preds = %.lr.ph.i125
  %i.dp = icmp slt i64 %.01939.i127, 0
  %i.dq = icmp eq i16 %i.dj, 0
  %or.cond.i132 = and i1 %i.dp, %i.dq
  br i1 %or.cond.i132, label %uv_utf16_length_as_wtf8.exit142, label %bb.ai

bb.ai:                                            ; preds = %uv__get_surrogate_value.exit.i131
  %i.dr = icmp ult i16 %i.dj, 128
  br i1 %i.dr, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.ds = add i64 %.040.i126, 1
  br label %bb.an

bb.ak:                                            ; preds = %bb.ai
  %i.dt = icmp ult i16 %i.dj, 2048
  br i1 %i.dt, label %bb.al, label %.thread35.i133

bb.al:                                            ; preds = %bb.ak
  %i.du = add i64 %.040.i126, 2
  br label %bb.an

bb.am:                                            ; preds = %bb.ah
  %i.dv = add i64 %.040.i126, 4
  %i.dw = icmp sgt i64 %.01939.i127, 0
  %i.dx = sext i1 %i.dw to i64
  %spec.select.i141 = add nsw i64 %.01939.i127, %i.dx
  br label %bb.an

.thread35.i133:                                   ; preds = %bb.ak, %bb.ah
  %i.dy = add i64 %.040.i126, 3
  br label %bb.an

bb.an:                                            ; preds = %.thread35.i133, %bb.am, %bb.al, %bb.aj
  %.122.i134 = phi ptr [ %.02138.i128, %bb.aj ], [ %.02138.i128, %bb.al ], [ %.02138.i128, %.thread35.i133 ], [ %i.dm, %bb.am ]
  %.120.i135 = phi i64 [ %.01939.i127, %bb.aj ], [ %.01939.i127, %bb.al ], [ %.01939.i127, %.thread35.i133 ], [ %spec.select.i141, %bb.am ] ; 2 uses
  %.1.i136 = phi i64 [ %i.ds, %bb.aj ], [ %i.du, %bb.al ], [ %i.dy, %.thread35.i133 ], [ %i.dv, %bb.am ] ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.122.i134, i64 2
  %i.ea = icmp sgt i64 %.120.i135, 0
  %i.eb = sext i1 %i.ea to i64
  %spec.select24.i137 = add nsw i64 %.120.i135, %i.eb ; 2 uses
  %.not.i138 = icmp eq i64 %spec.select24.i137, 0
  br i1 %.not.i138, label %uv_utf16_length_as_wtf8.exit142, label %.lr.ph.i125, !llvm.loop !0

uv_utf16_length_as_wtf8.exit142:                  ; preds = %uv__get_surrogate_value.exit.i131, %bb.an
  %.0.lcssa.i139 = phi i64 [ %.1.i136, %bb.an ], [ %.040.i126, %uv__get_surrogate_value.exit.i131 ]
  %i.ec = add i64 %.0.lcssa.i139, %.188.lcssa
  store i64 %i.ec, ptr %3, align 8
  br label %bb.ao

bb.ao:                                            ; preds = %bb.ag, %uv_utf16_length_as_wtf8.exit142, %bb.n, %bb.l
  %.089 = phi i32 [ %.mux, %bb.ag ], [ 0, %bb.l ], [ -12, %bb.n ], [ -105, %uv_utf16_length_as_wtf8.exit142 ]
  ret i32 %.089
}

declare ptr @uv__malloc(i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #6

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}

!0 = distinct !{!0, !5}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
!10 = distinct !{!10, !5}
!11 = distinct !{!11, !5}
!12 = distinct !{!12, !5}
!13 = distinct !{!13, !5}
!14 = distinct !{!14, !5}
!15 = distinct !{!15, !5}
end_hunk_0
