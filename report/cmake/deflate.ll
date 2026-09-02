Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/deflate?download=true
inline.NumInlined: 41
inline.NumDeleted: 4
begin_hunk_0_@cm_zlib_deflateSetDictionary:bb.a
    i32 1, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g
  %.not = icmp eq i32 %i.m, 42
  br i1 %.not, label %bb.i, label %deflateStateCheck.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 180 ; 3 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !64
  %.not84 = icmp eq i32 %i.r, 0
  br i1 %.not84, label %.thread90.thread, label %deflateStateCheck.exit.thread

.thread:                                          ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 180 ; 4 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !64
  %.not8489 = icmp eq i32 %i.t, 0
  br i1 %.not8489, label %.thread90, label %deflateStateCheck.exit.thread

.thread90:                                        ; preds = %.thread
  store i32 0, ptr %i.o, align 8, !tbaa !30
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 80 ; 2 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !33   ; 2 uses
  %.not85 = icmp ult i32 %2, %i.v
  br i1 %.not85, label %bb.l, label %bb.j

.thread90.thread:                                 ; preds = %bb.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !70
  %i.y = tail call i64 @cm_zlib_adler32(i64 noundef %i.x, ptr noundef nonnull %1, i32 noundef %2) #11
  store i64 %i.y, ptr %i.w, align 8, !tbaa !70
  store i32 0, ptr %i.o, align 8, !tbaa !30
  %i.z = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !33  ; 2 uses
  %.not85102 = icmp ult i32 %2, %i.aa
  br i1 %.not85102, label %bb.l, label %.thread103

bb.j:                                             ; preds = %.thread90
  %i.ab = icmp eq i32 %i.p, 0
  br i1 %i.ab, label %bb.k, label %.thread103

bb.k:                                             ; preds = %bb.j
  %i.ac = getelementptr inbounds nuw i8, ptr %i.i, i64 120
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !41 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.i, i64 132
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !36
  %i.ag = add i32 %i.af, -1
  %i.ah = zext i32 %i.ag to i64                   ; 2 uses
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %i.ad, i64 %i.ah
  store i16 0, ptr %i.ai, align 2, !tbaa !52
  %i.aj = shl nuw nsw i64 %i.ah, 1
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ad, i8 0, i64 %i.aj, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.i, i64 172
  store i32 0, ptr %i.ak, align 4, !tbaa !62
  %i.al = getelementptr inbounds nuw i8, ptr %i.i, i64 152
  store i64 0, ptr %i.al, align 8, !tbaa !63
  %i.am = getelementptr inbounds nuw i8, ptr %i.i, i64 5932
  store i32 0, ptr %i.am, align 4, !tbaa !65
  %.pre = load i32, ptr %i.u, align 8, !tbaa !33
  br label %.thread103

.thread103:                                       ; preds = %.thread90.thread, %bb.k, %bb.j
  %i.an = phi ptr [ %i.s, %bb.k ], [ %i.s, %bb.j ], [ %i.q, %.thread90.thread ]
  %i.ao = phi i32 [ %.pre, %bb.k ], [ %i.v, %bb.j ], [ %i.aa, %.thread90.thread ] ; 2 uses
  %i.ap = sub i32 %2, %i.ao
  %i.aq = zext i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 %i.aq
  br label %bb.l

bb.l:                                             ; preds = %.thread90.thread, %.thread103, %.thread90
  %i.as = phi ptr [ %i.an, %.thread103 ], [ %i.s, %.thread90 ], [ %i.q, %.thread90.thread ] ; 4 uses
  %.077 = phi ptr [ %i.ar, %.thread103 ], [ %1, %.thread90 ], [ %1, %.thread90.thread ]
  %.076 = phi i32 [ %i.ao, %.thread103 ], [ %2, %.thread90 ], [ %2, %.thread90.thread ]
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.au = load i32, ptr %i.at, align 8, !tbaa !71
  %i.av = load ptr, ptr %0, align 8, !tbaa !72
  store i32 %.076, ptr %i.at, align 8, !tbaa !71
  store ptr %.077, ptr %0, align 8, !tbaa !72
  tail call fastcc void @fill_window(ptr noundef nonnull %i.i)
  %i.aw = load i32, ptr %i.as, align 4, !tbaa !64 ; 3 uses
  %i.ax = icmp ugt i32 %i.aw, 2
  br i1 %i.ax, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.l
  %i.ay = getelementptr inbounds nuw i8, ptr %i.i, i64 172 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.i, i64 128 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.i, i64 144
  %i.bb = getelementptr inbounds nuw i8, ptr %i.i, i64 96
  %i.bc = getelementptr inbounds nuw i8, ptr %i.i, i64 140
  %i.bd = getelementptr inbounds nuw i8, ptr %i.i, i64 120
  %i.be = getelementptr inbounds nuw i8, ptr %i.i, i64 112
  %i.bf = getelementptr inbounds nuw i8, ptr %i.i, i64 88
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph, %bb.o
  %i.bg = phi i32 [ %i.aw, %.lr.ph ], [ %i.ch, %bb.o ]
  %i.bh = load i32, ptr %i.ay, align 4, !tbaa !62
  %i.bi = add i32 %i.bg, -2
  %i.bj = load i32, ptr %i.ba, align 8, !tbaa !38
  %i.bk = load ptr, ptr %i.bb, align 8, !tbaa !39
  %i.bl = load i32, ptr %i.bc, align 4, !tbaa !37
  %i.bm = load ptr, ptr %i.bd, align 8, !tbaa !41
  %i.bn = load ptr, ptr %i.be, align 8, !tbaa !40
  %i.bo = load i32, ptr %i.bf, align 8, !tbaa !34
  %.promoted = load i32, ptr %i.az, align 8, !tbaa !69
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %bb.m
  %i.bp = phi i32 [ %.promoted, %bb.m ], [ %i.bx, %bb.n ]
  %.075 = phi i32 [ %i.bh, %bb.m ], [ %i.cf, %bb.n ] ; 4 uses
  %.0 = phi i32 [ %i.bi, %bb.m ], [ %i.cg, %bb.n ]
  %i.bq = shl i32 %i.bp, %i.bj
  %i.br = add i32 %.075, 2
  %i.bs = zext i32 %i.br to i64
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !9
  %i.bv = zext i8 %i.bu to i32
  %i.bw = xor i32 %i.bq, %i.bv
  %i.bx = and i32 %i.bw, %i.bl                    ; 3 uses
  store i32 %i.bx, ptr %i.az, align 8, !tbaa !69
  %i.by = zext i32 %i.bx to i64
  %i.bz = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %i.by ; 2 uses
  %i.ca = load i16, ptr %i.bz, align 2, !tbaa !52
  %i.cb = and i32 %i.bo, %.075
  %i.cc = zext i32 %i.cb to i64
  %i.cd = getelementptr inbounds nuw [2 x i8], ptr %i.bn, i64 %i.cc
  store i16 %i.ca, ptr %i.cd, align 2, !tbaa !52
  %i.ce = trunc i32 %.075 to i16
  store i16 %i.ce, ptr %i.bz, align 2, !tbaa !52
  %i.cf = add i32 %.075, 1                        ; 2 uses
  %i.cg = add i32 %.0, -1                         ; 2 uses
  %.not86 = icmp eq i32 %i.cg, 0
  br i1 %.not86, label %bb.o, label %bb.n, !llvm.loop !96

bb.o:                                             ; preds = %bb.n
  store i32 %i.cf, ptr %i.ay, align 4, !tbaa !62
  store i32 2, ptr %i.as, align 4, !tbaa !64
  tail call fastcc void @fill_window(ptr noundef nonnull %i.i)
  %i.ch = load i32, ptr %i.as, align 4, !tbaa !64 ; 3 uses
  %i.ci = icmp ugt i32 %i.ch, 2
  br i1 %i.ci, label %bb.m, label %._crit_edge, !llvm.loop !97

._crit_edge:                                      ; preds = %bb.o, %bb.l
  %.lcssa91 = phi i32 [ %i.aw, %bb.l ], [ %i.ch, %bb.o ] ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.i, i64 172 ; 2 uses
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !62
  %i.cl = add i32 %i.ck, %.lcssa91                ; 2 uses
  store i32 %i.cl, ptr %i.cj, align 4, !tbaa !62
  %i.cm = zext i32 %i.cl to i64
  %i.cn = getelementptr inbounds nuw i8, ptr %i.i, i64 152
  store i64 %i.cm, ptr %i.cn, align 8, !tbaa !63
  %i.co = getelementptr inbounds nuw i8, ptr %i.i, i64 5932
  store i32 %.lcssa91, ptr %i.co, align 4, !tbaa !65
  store i32 0, ptr %i.as, align 4, !tbaa !64
  %i.cp = getelementptr inbounds nuw i8, ptr %i.i, i64 184
  store i32 2, ptr %i.cp, align 8, !tbaa !66
  %i.cq = getelementptr inbounds nuw i8, ptr %i.i, i64 160
  store i32 2, ptr %i.cq, align 8, !tbaa !67
  %i.cr = getelementptr inbounds nuw i8, ptr %i.i, i64 168
  store i32 0, ptr %i.cr, align 8, !tbaa !68
  store ptr %i.av, ptr %0, align 8, !tbaa !72
  store i32 %i.au, ptr %i.at, align 8, !tbaa !71
  store i32 %i.p, ptr %i.o, align 8, !tbaa !30
  br label %deflateStateCheck.exit.thread

deflateStateCheck.exit.thread:                    ; preds = %bb.g, %bb.d, %bb.e, %bb.f, %bb.b, %bb.c, %bb.a, %.thread, %bb.h, %bb.i, %deflateStateCheck.exit, %._crit_edge
  %.078 = phi i32 [ 0, %._crit_edge ], [ -2, %deflateStateCheck.exit ], [ -2, %bb.i ], [ -2, %bb.h ], [ -2, %bb.g ], [ -2, %.thread ], [ -2, %bb.a ], [ -2, %bb.c ], [ -2, %bb.b ], [ -2, %bb.f ], [ -2, %bb.e ], [ -2, %bb.d ]
  ret i32 %.078
}

declare i64 @cm_zlib_adler32(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @fill_window(ptr nofree noundef captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !33   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 180 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 172 ; 5 uses
  %i.f = add i32 %i.b, -262
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 5 uses
  %i.h = zext i32 %i.b to i64                     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 5932 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.pre = load i32, ptr %i.d, align 4, !tbaa !64
  %i.r = insertelement <2 x i32> poison, i32 %i.b, i64 0
  %i.s = shufflevector <2 x i32> %i.r, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %bb.b

bb.b:                                             ; preds = %bb.o, %bb.a
  %i.t = phi i32 [ %i.dj, %bb.o ], [ %.pre, %bb.a ]
  %i.u = load i64, ptr %i.c, align 8, !tbaa !51
  %i.v = load i32, ptr %i.e, align 4, !tbaa !62   ; 3 uses
  %1 = trunc i64 %i.u to i32
  %2 = add i32 %i.t, %i.v
  %3 = sub i32 %1, %2                             ; 3 uses
  %i.w = load i32, ptr %i.a, align 8, !tbaa !33
  %i.x = add i32 %i.f, %i.w
  %.not = icmp ult i32 %i.v, %i.x
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.y = load ptr, ptr %i.g, align 8, !tbaa !39   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.h
  %i.aa = sub i32 %i.b, %3
  %i.ab = zext i32 %i.aa to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.y, ptr align 1 %i.z, i64 %i.ab, i1 false)
  %i.ac = load <2 x i32>, ptr %i.e, align 4, !tbaa !74
  %i.ad = sub <2 x i32> %i.ac, %i.s               ; 2 uses
  store <2 x i32> %i.ad, ptr %i.e, align 4, !tbaa !74
  %i.ae = load i64, ptr %i.i, align 8, !tbaa !63
  %i.af = sub nsw i64 %i.ae, %i.h
  store i64 %i.af, ptr %i.i, align 8, !tbaa !63
  %i.ag = load i32, ptr %i.j, align 4, !tbaa !65
  %i.ah = extractelement <2 x i32> %i.ad, i64 0   ; 3 uses
  %i.ai = icmp ugt i32 %i.ag, %i.ah
  br i1 %i.ai, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 %i.ah, ptr %i.j, align 4, !tbaa !65
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.aj = load i32, ptr %i.a, align 8, !tbaa !33  ; 8 uses
  %i.ak = load i32, ptr %i.k, align 4, !tbaa !36  ; 4 uses
  %i.al = load ptr, ptr %i.l, align 8, !tbaa !41
  %i.am = zext i32 %i.ak to i64
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %i.al, i64 %i.am ; 3 uses
  %i.ao = add i32 %i.ak, -1                       ; 2 uses
  %i.ap = zext i32 %i.ao to i64
  %i.aq = add nuw nsw i64 %i.ap, 1                ; 2 uses
  %min.iters.check122 = icmp ult i32 %i.ao, 7
  br i1 %min.iters.check122, label %scalar.ph121.preheader, label %vector.ph123

vector.ph123:                                     ; preds = %bb.e
  %n.vec124 = and i64 %i.aq, 8589934584           ; 4 uses
  %i.ar = trunc i64 %n.vec124 to i32
  %i.as = sub i32 %i.ak, %i.ar
  %i.at = mul nsw i64 %n.vec124, -2
  %i.au = getelementptr i8, ptr %i.an, i64 %i.at
  %broadcast.splatinsert125 = insertelement <8 x i32> poison, i32 %i.aj, i64 0
  %i.av = shufflevector <8 x i32> %broadcast.splatinsert125, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body127

vector.body127:                                   ; preds = %vector.body127, %vector.ph123
  %index128 = phi i64 [ 0, %vector.ph123 ], [ %index.next133, %vector.body127 ] ; 2 uses
  %i.aw = mul i64 %index128, -2
  %next.gep129 = getelementptr i8, ptr %i.an, i64 %i.aw
  %i.ax = getelementptr inbounds i8, ptr %next.gep129, i64 -16 ; 2 uses
  %wide.load130 = load <8 x i16>, ptr %i.ax, align 2, !tbaa !52
  %i.ay = zext <8 x i16> %wide.load130 to <8 x i32>
  %i.az = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %i.ay, <8 x i32> %i.av)
  %reverse132 = trunc nuw <8 x i32> %i.az to <8 x i16>
  store <8 x i16> %reverse132, ptr %i.ax, align 2, !tbaa !52
  %index.next133 = add nuw i64 %index128, 8       ; 2 uses
  %i.ba = icmp eq i64 %index.next133, %n.vec124
  br i1 %i.ba, label %middle.block134, label %vector.body127, !llvm.loop !98

middle.block134:                                  ; preds = %vector.body127
  %cmp.n135 = icmp eq i64 %i.aq, %n.vec124
  br i1 %cmp.n135, label %.loopexit138, label %scalar.ph121.preheader

scalar.ph121.preheader:                           ; preds = %bb.e, %middle.block134
  %.020.i.ph = phi i32 [ %i.ak, %bb.e ], [ %i.as, %middle.block134 ]
  %.0.i.ph = phi ptr [ %i.an, %bb.e ], [ %i.au, %middle.block134 ]
  br label %scalar.ph121

scalar.ph121:                                     ; preds = %scalar.ph121.preheader, %scalar.ph121
  %.020.i = phi i32 [ %i.bg, %scalar.ph121 ], [ %.020.i.ph, %scalar.ph121.preheader ]
  %.0.i = phi ptr [ %i.bb, %scalar.ph121 ], [ %.0.i.ph, %scalar.ph121.preheader ]
  %i.bb = getelementptr inbounds i8, ptr %.0.i, i64 -2 ; 3 uses
  %i.bc = load i16, ptr %i.bb, align 2, !tbaa !52
  %i.bd = zext i16 %i.bc to i32
  %i.be = tail call i32 @llvm.usub.sat.i32(i32 %i.bd, i32 %i.aj)
  %i.bf = trunc nuw i32 %i.be to i16
  store i16 %i.bf, ptr %i.bb, align 2, !tbaa !52
  %i.bg = add i32 %.020.i, -1                     ; 2 uses
  %.not.i = icmp eq i32 %i.bg, 0
  br i1 %.not.i, label %.loopexit138, label %scalar.ph121, !llvm.loop !99

.loopexit138:                                     ; preds = %scalar.ph121, %middle.block134
  %i.bh = load ptr, ptr %i.m, align 8, !tbaa !40
  %i.bi = zext i32 %i.aj to i64
  %i.bj = getelementptr inbounds nuw [2 x i8], ptr %i.bh, i64 %i.bi ; 3 uses
  %i.bk = add i32 %i.aj, -1                       ; 2 uses
  %i.bl = zext i32 %i.bk to i64
  %i.bm = add nuw nsw i64 %i.bl, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.bk, 7
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.loopexit138
  %n.vec = and i64 %i.bm, 8589934584              ; 4 uses
  %i.bn = trunc i64 %n.vec to i32
  %i.bo = sub i32 %i.aj, %i.bn
  %i.bp = mul nsw i64 %n.vec, -2
  %i.bq = getelementptr i8, ptr %i.bj, i64 %i.bp
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.aj, i64 0
  %i.br = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bs = mul i64 %index, -2
  %next.gep = getelementptr i8, ptr %i.bj, i64 %i.bs
  %i.bt = getelementptr inbounds i8, ptr %next.gep, i64 -16 ; 2 uses
  %wide.load = load <8 x i16>, ptr %i.bt, align 2, !tbaa !52
  %i.bu = zext <8 x i16> %wide.load to <8 x i32>
  %i.bv = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %i.bu, <8 x i32> %i.br)
  %reverse119 = trunc nuw <8 x i32> %i.bv to <8 x i16>
  store <8 x i16> %reverse119, ptr %i.bt, align 2, !tbaa !52
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bw = icmp eq i64 %index.next, %n.vec
  br i1 %i.bw, label %middle.block, label %vector.body, !llvm.loop !100

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bm, %n.vec
  br i1 %cmp.n, label %slide_hash.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.loopexit138, %middle.block
  %.121.i.ph = phi i32 [ %i.aj, %.loopexit138 ], [ %i.bo, %middle.block ]
  %.1.i.ph = phi ptr [ %i.bj, %.loopexit138 ], [ %i.bq, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.121.i = phi i32 [ %i.cc, %scalar.ph ], [ %.121.i.ph, %scalar.ph.preheader ]
  %.1.i = phi ptr [ %i.bx, %scalar.ph ], [ %.1.i.ph, %scalar.ph.preheader ]
  %i.bx = getelementptr inbounds i8, ptr %.1.i, i64 -2 ; 3 uses
  %i.by = load i16, ptr %i.bx, align 2, !tbaa !52
  %i.bz = zext i16 %i.by to i32
  %i.ca = tail call i32 @llvm.usub.sat.i32(i32 %i.bz, i32 %i.aj)
  %i.cb = trunc nuw i32 %i.ca to i16
  store i16 %i.cb, ptr %i.bx, align 2, !tbaa !52
  %i.cc = add i32 %.121.i, -1                     ; 2 uses
  %.not23.i = icmp eq i32 %i.cc, 0
  br i1 %.not23.i, label %slide_hash.exit, label %scalar.ph, !llvm.loop !101

slide_hash.exit:                                  ; preds = %scalar.ph, %middle.block
  %i.cd = add i32 %3, %i.b
  br label %bb.f

bb.f:                                             ; preds = %slide_hash.exit, %bb.b
  %i.ce = phi i32 [ %i.ah, %slide_hash.exit ], [ %i.v, %bb.b ]
  %.096 = phi i32 [ %i.cd, %slide_hash.exit ], [ %3, %bb.b ] ; 2 uses
  %i.cf = load ptr, ptr %0, align 8, !tbaa !28    ; 8 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8 ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !71 ; 3 uses
  %i.ci = icmp eq i32 %i.ch, 0
  br i1 %i.ci, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cj = load ptr, ptr %i.g, align 8, !tbaa !39
  %i.ck = zext i32 %i.ce to i64
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.ck
  %i.cm = load i32, ptr %i.d, align 4, !tbaa !64  ; 2 uses
  %i.cn = zext i32 %i.cm to i64
  %i.co = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.cn ; 3 uses
  %spec.select.i = tail call i32 @llvm.umin.i32(i32 %i.ch, i32 %.096) ; 5 uses
  %i.cp = icmp eq i32 %.096, 0
  br i1 %i.cp, label %read_buf.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cq = sub nuw i32 %i.ch, %spec.select.i
  store i32 %i.cq, ptr %i.cg, align 8, !tbaa !71
  %i.cr = load ptr, ptr %i.cf, align 8, !tbaa !72
  %i.cs = zext i32 %spec.select.i to i64          ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.co, ptr align 1 %i.cr, i64 %i.cs, i1 false)
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cf, i64 56
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !19
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 48
  %i.cw = load i32, ptr %i.cv, align 8, !tbaa !30
  switch i32 %i.cw, label %bb.k [
    i32 1, label %bb.i
    i32 2, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cf, i64 96 ; 2 uses
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !70
  %i.cz = tail call i64 @cm_zlib_adler32(i64 noundef %i.cy, ptr noundef %i.co, i32 noundef %spec.select.i) #11
  store i64 %i.cz, ptr %i.cx, align 8, !tbaa !70
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.da = getelementptr inbounds nuw i8, ptr %i.cf, i64 96 ; 2 uses
  %i.db = load i64, ptr %i.da, align 8, !tbaa !70
  %i.dc = tail call i64 @cm_zlib_crc32(i64 noundef %i.db, ptr noundef %i.co, i32 noundef %spec.select.i) #11
  store i64 %i.dc, ptr %i.da, align 8, !tbaa !70
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %i.dd = load ptr, ptr %i.cf, align 8, !tbaa !72
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.cs
  store ptr %i.de, ptr %i.cf, align 8, !tbaa !72
  %i.df = getelementptr inbounds nuw i8, ptr %i.cf, i64 16 ; 2 uses
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !77
  %i.dh = add i64 %i.dg, %i.cs
  store i64 %i.dh, ptr %i.df, align 8, !tbaa !77
  %.pre110 = load i32, ptr %i.d, align 4, !tbaa !64
  br label %read_buf.exit

read_buf.exit:                                    ; preds = %bb.g, %bb.k
  %i.di = phi i32 [ %i.cm, %bb.g ], [ %.pre110, %bb.k ]
  %i.dj = add i32 %i.di, %spec.select.i           ; 5 uses
  store i32 %i.dj, ptr %i.d, align 4, !tbaa !64
  %i.dk = load i32, ptr %i.j, align 4, !tbaa !65  ; 3 uses
  %i.dl = add i32 %i.dk, %i.dj
  %i.dm = icmp ugt i32 %i.dl, 2
  br i1 %i.dm, label %bb.l, label %.loopexit

bb.l:                                             ; preds = %read_buf.exit
  %i.dn = load i32, ptr %i.e, align 4, !tbaa !62
  %i.do = sub i32 %i.dn, %i.dk                    ; 3 uses
  %i.dp = load ptr, ptr %i.g, align 8, !tbaa !39  ; 3 uses
  %i.dq = zext i32 %i.do to i64
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.dq
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !9
  %i.dt = zext i8 %i.ds to i32                    ; 2 uses
  store i32 %i.dt, ptr %i.n, align 8, !tbaa !69
  %i.du = load i32, ptr %i.o, align 8, !tbaa !38  ; 2 uses
  %i.dv = shl i32 %i.dt, %i.du
  %i.dw = add i32 %i.do, 1
  %i.dx = zext i32 %i.dw to i64
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.dx
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !9
  %i.ea = zext i8 %i.dz to i32
  %i.eb = xor i32 %i.dv, %i.ea
  %i.ec = load i32, ptr %i.p, align 4, !tbaa !37  ; 2 uses
  %i.ed = and i32 %i.eb, %i.ec                    ; 2 uses
  store i32 %i.ed, ptr %i.n, align 8, !tbaa !69
  br label %bb.m

bb.m:                                             ; preds = %bb.n, %bb.l
  %i.ee = phi i32 [ %i.en, %bb.n ], [ %i.ed, %bb.l ]
  %i.ef = phi i32 [ %i.ez, %bb.n ], [ %i.dk, %bb.l ] ; 2 uses
  %.095 = phi i32 [ %i.ey, %bb.n ], [ %i.do, %bb.l ] ; 4 uses
  %.not104 = icmp eq i32 %i.ef, 0
  br i1 %.not104, label %.loopexit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.eg = shl i32 %i.ee, %i.du
  %i.eh = add i32 %.095, 2
  %i.ei = zext i32 %i.eh to i64
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.ei
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !9
  %i.el = zext i8 %i.ek to i32
  %i.em = xor i32 %i.eg, %i.el
  %i.en = and i32 %i.em, %i.ec                    ; 3 uses
  store i32 %i.en, ptr %i.n, align 8, !tbaa !69
  %i.eo = load ptr, ptr %i.l, align 8, !tbaa !41
  %i.ep = zext i32 %i.en to i64
  %i.eq = getelementptr inbounds nuw [2 x i8], ptr %i.eo, i64 %i.ep ; 2 uses
  %i.er = load i16, ptr %i.eq, align 2, !tbaa !52
  %i.es = load ptr, ptr %i.m, align 8, !tbaa !40
  %i.et = load i32, ptr %i.q, align 8, !tbaa !34
  %i.eu = and i32 %i.et, %.095
  %i.ev = zext i32 %i.eu to i64
  %i.ew = getelementptr inbounds nuw [2 x i8], ptr %i.es, i64 %i.ev
  store i16 %i.er, ptr %i.ew, align 2, !tbaa !52
  %i.ex = trunc i32 %.095 to i16
  store i16 %i.ex, ptr %i.eq, align 2, !tbaa !52
  %i.ey = add i32 %.095, 1
  %i.ez = add i32 %i.ef, -1                       ; 3 uses
  store i32 %i.ez, ptr %i.j, align 4, !tbaa !65
  %i.fa = add i32 %i.ez, %i.dj
  %i.fb = icmp ult i32 %i.fa, 3
  br i1 %i.fb, label %.loopexit, label %bb.m, !llvm.loop !102

.loopexit:                                        ; preds = %bb.m, %bb.n, %read_buf.exit
  %i.fc = icmp ult i32 %i.dj, 262
  br i1 %i.fc, label %bb.o, label %.critedge

bb.o:                                             ; preds = %.loopexit
  %i.fd = load ptr, ptr %0, align 8, !tbaa !28
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  %i.ff = load i32, ptr %i.fe, align 8, !tbaa !71
  %.not105 = icmp eq i32 %i.ff, 0
  br i1 %.not105, label %.critedge, label %bb.b, !llvm.loop !103

.critedge:                                        ; preds = %.loopexit, %bb.f, %bb.o
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 5944 ; 3 uses
  %i.fh = load i64, ptr %i.fg, align 8, !tbaa !42 ; 5 uses
  %i.fi = load i64, ptr %i.c, align 8, !tbaa !51  ; 3 uses
  %i.fj = icmp ult i64 %i.fh, %i.fi
  br i1 %i.fj, label %bb.p, label %bb.t

bb.p:                                             ; preds = %.critedge
  %i.fk = load i32, ptr %i.e, align 4, !tbaa !62
  %i.fl = zext i32 %i.fk to i64
  %i.fm = load i32, ptr %i.d, align 4, !tbaa !64
  %i.fn = zext i32 %i.fm to i64
  %i.fo = add nuw nsw i64 %i.fn, %i.fl            ; 5 uses
  %i.fp = icmp ult i64 %i.fh, %i.fo
  br i1 %i.fp, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.fq = sub i64 %i.fi, %i.fo
  %spec.store.select = tail call i64 @llvm.umin.i64(i64 %i.fq, i64 258) ; 2 uses
  %i.fr = load ptr, ptr %i.g, align 8, !tbaa !39
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 %i.fo
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.fs, i8 0, i64 %spec.store.select, i1 false)
  %i.ft = add nuw nsw i64 %spec.store.select, %i.fo
  br label %.sink.split

bb.r:                                             ; preds = %bb.p
  %i.fu = add nuw nsw i64 %i.fo, 258              ; 2 uses
  %i.fv = icmp ult i64 %i.fh, %i.fu
  br i1 %i.fv, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.fw = tail call i64 @llvm.umin.i64(i64 %i.fu, i64 %i.fi)
  %spec.select = sub nuw nsw i64 %i.fw, %i.fh     ; 2 uses
  %i.fx = load ptr, ptr %i.g, align 8, !tbaa !39
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 %i.fh
  %i.fz = and i64 %spec.select, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.fy, i8 0, i64 %i.fz, i1 false)
  %i.ga = load i64, ptr %i.fg, align 8, !tbaa !42
  %i.gb = add i64 %i.ga, %spec.select
  br label %.sink.split

.sink.split:                                      ; preds = %bb.s, %bb.q
  %.sink = phi i64 [ %i.ft, %bb.q ], [ %i.gb, %bb.s ]
  store i64 %.sink, ptr %i.fg, align 8, !tbaa !42
  br label %bb.t

bb.t:                                             ; preds = %.sink.split, %bb.r, %.critedge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 -2, 1) i32 @cm_zlib_deflateGetDictionary(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %deflateStateCheck.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !16
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %deflateStateCheck.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !18
end_hunk_0
