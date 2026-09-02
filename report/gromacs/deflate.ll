Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/deflate?download=true
inline.NumInlined: 29
inline.NumDeleted: 3
begin_hunk_0_@deflateSetDictionary:bb.a
  %.not8790 = icmp eq i32 %i.m, 0
  br i1 %.not8790, label %.thread91, label %bb.l

.thread91:                                        ; preds = %.thread
  store i32 0, ptr %i.f, align 4, !tbaa !28
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 68 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !31   ; 2 uses
  %.not88 = icmp ult i32 %2, %i.o
  br i1 %.not88, label %bb.h, label %bb.f

.thread91.thread:                                 ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !54
  %i.r = tail call i64 @adler32(i64 noundef %i.q, ptr noundef nonnull %1, i32 noundef %2) #11
  store i64 %i.r, ptr %i.p, align 8, !tbaa !54
  store i32 0, ptr %i.f, align 4, !tbaa !28
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 68
  %i.t = load i32, ptr %i.s, align 4, !tbaa !31   ; 2 uses
  %.not88103 = icmp ult i32 %2, %i.t
  br i1 %.not88103, label %bb.h, label %.thread104

bb.f:                                             ; preds = %.thread91
  %i.u = icmp eq i32 %i.g, 0
  br i1 %i.u, label %bb.g, label %.thread104

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !39   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 116
  %i.y = load i32, ptr %i.x, align 4, !tbaa !34
  %i.z = add i32 %i.y, -1
  %i.aa = zext i32 %i.z to i64                    ; 2 uses
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.aa
  store i16 0, ptr %i.ab, align 2, !tbaa !57
  %i.ac = shl nuw nsw i64 %i.aa, 1
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.w, i8 0, i64 %i.ac, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 156
  store i32 0, ptr %i.ad, align 4, !tbaa !67
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 136
  store i64 0, ptr %i.ae, align 8, !tbaa !68
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 5916
  store i32 0, ptr %i.af, align 4, !tbaa !70
  %.pre = load i32, ptr %i.n, align 4, !tbaa !31
  br label %.thread104

.thread104:                                       ; preds = %.thread91.thread, %bb.g, %bb.f
  %i.ag = phi ptr [ %i.l, %bb.g ], [ %i.l, %bb.f ], [ %i.j, %.thread91.thread ]
  %i.ah = phi i32 [ %.pre, %bb.g ], [ %i.o, %bb.f ], [ %i.t, %.thread91.thread ] ; 2 uses
  %i.ai = sub i32 %2, %i.ah
  %i.aj = zext i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 %i.aj
  br label %bb.h

bb.h:                                             ; preds = %.thread91.thread, %.thread104, %.thread91
  %i.al = phi ptr [ %i.ag, %.thread104 ], [ %i.l, %.thread91 ], [ %i.j, %.thread91.thread ] ; 4 uses
  %.078 = phi ptr [ %i.ak, %.thread104 ], [ %1, %.thread91 ], [ %1, %.thread91.thread ]
  %.077 = phi i32 [ %i.ah, %.thread104 ], [ %2, %.thread91 ], [ %2, %.thread91.thread ]
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.an = load i32, ptr %i.am, align 8, !tbaa !75
  %i.ao = load ptr, ptr %0, align 8, !tbaa !76
  store i32 %.077, ptr %i.am, align 8, !tbaa !75
  store ptr %.078, ptr %0, align 8, !tbaa !76
  tail call fastcc void @fill_window(ptr noundef nonnull %i.c)
  %i.ap = load i32, ptr %i.al, align 4, !tbaa !69 ; 3 uses
  %i.aq = icmp ugt i32 %i.ap, 2
  br i1 %i.aq, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.h
  %i.ar = getelementptr inbounds nuw i8, ptr %i.c, i64 156 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.c, i64 112 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  %i.au = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 124
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %i.ax = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.ay = getelementptr inbounds nuw i8, ptr %i.c, i64 76
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.k
  %i.az = phi i32 [ %i.ap, %.lr.ph ], [ %i.ca, %bb.k ]
  %i.ba = load i32, ptr %i.ar, align 4, !tbaa !67
  %i.bb = add i32 %i.az, -2
  %i.bc = load i32, ptr %i.at, align 8, !tbaa !36
  %i.bd = load ptr, ptr %i.au, align 8, !tbaa !37
  %i.be = load i32, ptr %i.av, align 4, !tbaa !35
  %i.bf = load ptr, ptr %i.aw, align 8, !tbaa !39
  %i.bg = load ptr, ptr %i.ax, align 8, !tbaa !38
  %i.bh = load i32, ptr %i.ay, align 4, !tbaa !32
  %.promoted = load i32, ptr %i.as, align 8, !tbaa !74
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %bb.i
  %i.bi = phi i32 [ %.promoted, %bb.i ], [ %i.bq, %bb.j ]
  %.076 = phi i32 [ %i.ba, %bb.i ], [ %i.by, %bb.j ] ; 4 uses
  %.0 = phi i32 [ %i.bb, %bb.i ], [ %i.bz, %bb.j ]
  %i.bj = shl i32 %i.bi, %i.bc
  %i.bk = add i32 %.076, 2
  %i.bl = zext i32 %i.bk to i64
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.bl
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !8
  %i.bo = zext i8 %i.bn to i32
  %i.bp = xor i32 %i.bj, %i.bo
  %i.bq = and i32 %i.bp, %i.be                    ; 3 uses
  store i32 %i.bq, ptr %i.as, align 8, !tbaa !74
  %i.br = zext i32 %i.bq to i64
  %i.bs = getelementptr inbounds nuw [2 x i8], ptr %i.bf, i64 %i.br ; 2 uses
  %i.bt = load i16, ptr %i.bs, align 2, !tbaa !57
  %i.bu = and i32 %i.bh, %.076
  %i.bv = zext i32 %i.bu to i64
  %i.bw = getelementptr inbounds nuw [2 x i8], ptr %i.bg, i64 %i.bv
  store i16 %i.bt, ptr %i.bw, align 2, !tbaa !57
  %i.bx = trunc i32 %.076 to i16
  store i16 %i.bx, ptr %i.bs, align 2, !tbaa !57
  %i.by = add i32 %.076, 1                        ; 2 uses
  %i.bz = add i32 %.0, -1                         ; 2 uses
  %.not89 = icmp eq i32 %i.bz, 0
  br i1 %.not89, label %bb.k, label %bb.j, !llvm.loop !93

bb.k:                                             ; preds = %bb.j
  store i32 %i.by, ptr %i.ar, align 4, !tbaa !67
  store i32 2, ptr %i.al, align 4, !tbaa !69
  tail call fastcc void @fill_window(ptr noundef nonnull %i.c)
  %i.ca = load i32, ptr %i.al, align 4, !tbaa !69 ; 3 uses
  %i.cb = icmp ugt i32 %i.ca, 2
  br i1 %i.cb, label %bb.i, label %._crit_edge, !llvm.loop !94

._crit_edge:                                      ; preds = %bb.k, %bb.h
  %.lcssa92 = phi i32 [ %i.ap, %bb.h ], [ %i.ca, %bb.k ] ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.c, i64 156 ; 2 uses
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !67
  %i.ce = add i32 %i.cd, %.lcssa92                ; 2 uses
  store i32 %i.ce, ptr %i.cc, align 4, !tbaa !67
  %i.cf = zext i32 %i.ce to i64
  %i.cg = getelementptr inbounds nuw i8, ptr %i.c, i64 136
  store i64 %i.cf, ptr %i.cg, align 8, !tbaa !68
  %i.ch = getelementptr inbounds nuw i8, ptr %i.c, i64 5916
  store i32 %.lcssa92, ptr %i.ch, align 4, !tbaa !70
  store i32 0, ptr %i.al, align 4, !tbaa !69
  %i.ci = getelementptr inbounds nuw i8, ptr %i.c, i64 168
  store i32 2, ptr %i.ci, align 8, !tbaa !71
  %i.cj = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  store i32 2, ptr %i.cj, align 8, !tbaa !72
  %i.ck = getelementptr inbounds nuw i8, ptr %i.c, i64 152
  store i32 0, ptr %i.ck, align 8, !tbaa !73
  store ptr %i.ao, ptr %0, align 8, !tbaa !76
  store i32 %i.an, ptr %i.am, align 8, !tbaa !75
  store i32 %i.g, ptr %i.f, align 4, !tbaa !28
  br label %bb.l

bb.l:                                             ; preds = %bb.c, %.thread, %bb.d, %bb.e, %bb.a, %bb.b, %._crit_edge
  %.079 = phi i32 [ 0, %._crit_edge ], [ -2, %bb.a ], [ -2, %bb.b ], [ -2, %bb.e ], [ -2, %bb.d ], [ -2, %bb.c ], [ -2, %.thread ]
  ret i32 %.079
}

declare i64 @adler32(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: nounwind uwtable
define internal fastcc void @fill_window(ptr nofree noundef captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !31   ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 164 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 156 ; 5 uses
  %i.f = add i32 %i.b, -262
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 5 uses
  %i.h = zext i32 %i.b to i64                     ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 5916 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 76
  %.pre = load i32, ptr %i.d, align 4, !tbaa !69
  %i.r = insertelement <2 x i32> poison, i32 %i.b, i64 0
  %i.s = shufflevector <2 x i32> %i.r, <2 x i32> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert146 = insertelement <8 x i32> poison, i32 %i.b, i64 0
  %i.t = shufflevector <8 x i32> %broadcast.splatinsert146, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.u = add i32 %i.b, -1                         ; 2 uses
  %i.v = zext i32 %i.u to i64
  %i.w = add nuw nsw i64 %i.v, 1                  ; 2 uses
  %min.iters.check = icmp ult i32 %i.u, 7
  %n.vec = and i64 %i.w, 8589934584               ; 4 uses
  %i.x = trunc i64 %n.vec to i32
  %i.y = sub i32 %i.b, %i.x
  %i.z = mul nsw i64 %n.vec, -2
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.b, i64 0
  %i.aa = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %i.w, %n.vec
  br label %bb.b

bb.b:                                             ; preds = %bb.m, %bb.a
  %i.ab = phi i32 [ %i.dd, %bb.m ], [ %.pre, %bb.a ]
  %i.ac = load i64, ptr %i.c, align 8, !tbaa !56
  %i.ad = load i32, ptr %i.e, align 4, !tbaa !67  ; 3 uses
  %1 = trunc i64 %i.ac to i32
  %2 = add i32 %i.ab, %i.ad
  %3 = sub i32 %1, %2                             ; 2 uses
  %i.ae = load i32, ptr %i.a, align 4, !tbaa !31
  %i.af = add i32 %i.f, %i.ae
  %.not = icmp ult i32 %i.ad, %i.af
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ag = load ptr, ptr %i.g, align 8, !tbaa !37  ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.h
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ag, ptr align 1 %i.ah, i64 %i.h, i1 false)
  %i.ai = load <2 x i32>, ptr %i.e, align 4, !tbaa !78
  %i.aj = sub <2 x i32> %i.ai, %i.s               ; 2 uses
  store <2 x i32> %i.aj, ptr %i.e, align 4, !tbaa !78
  %i.ak = load i64, ptr %i.i, align 8, !tbaa !68
  %i.al = sub nsw i64 %i.ak, %i.h
  store i64 %i.al, ptr %i.i, align 8, !tbaa !68
  %i.am = load i32, ptr %i.j, align 4, !tbaa !34  ; 4 uses
  %i.an = load ptr, ptr %i.k, align 8, !tbaa !39
  %i.ao = zext i32 %i.am to i64
  %i.ap = getelementptr inbounds nuw [2 x i8], ptr %i.an, i64 %i.ao ; 3 uses
  %i.aq = add i32 %i.am, -1                       ; 2 uses
  %i.ar = zext i32 %i.aq to i64
  %i.as = add nuw nsw i64 %i.ar, 1                ; 2 uses
  %min.iters.check143 = icmp ult i32 %i.aq, 7
  br i1 %min.iters.check143, label %scalar.ph142.preheader, label %vector.ph144

vector.ph144:                                     ; preds = %bb.c
  %n.vec145 = and i64 %i.as, 8589934584           ; 4 uses
  %i.at = trunc i64 %n.vec145 to i32
  %i.au = sub i32 %i.am, %i.at
  %i.av = mul nsw i64 %n.vec145, -2
  %i.aw = getelementptr i8, ptr %i.ap, i64 %i.av
  br label %vector.body148

vector.body148:                                   ; preds = %vector.body148, %vector.ph144
  %index149 = phi i64 [ 0, %vector.ph144 ], [ %index.next154, %vector.body148 ] ; 2 uses
  %i.ax = mul i64 %index149, -2
  %next.gep150 = getelementptr i8, ptr %i.ap, i64 %i.ax
  %i.ay = getelementptr inbounds i8, ptr %next.gep150, i64 -16 ; 2 uses
  %wide.load151 = load <8 x i16>, ptr %i.ay, align 2, !tbaa !57
  %i.az = zext <8 x i16> %wide.load151 to <8 x i32>
  %i.ba = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %i.az, <8 x i32> %i.t)
  %reverse153 = trunc nuw <8 x i32> %i.ba to <8 x i16>
  store <8 x i16> %reverse153, ptr %i.ay, align 2, !tbaa !57
  %index.next154 = add nuw i64 %index149, 8       ; 2 uses
  %i.bb = icmp eq i64 %index.next154, %n.vec145
  br i1 %i.bb, label %middle.block155, label %vector.body148, !llvm.loop !95

middle.block155:                                  ; preds = %vector.body148
  %cmp.n156 = icmp eq i64 %i.as, %n.vec145
  br i1 %cmp.n156, label %.loopexit160, label %scalar.ph142.preheader

scalar.ph142.preheader:                           ; preds = %bb.c, %middle.block155
  %.0112.ph = phi i32 [ %i.am, %bb.c ], [ %i.au, %middle.block155 ]
  %.0111.ph = phi ptr [ %i.ap, %bb.c ], [ %i.aw, %middle.block155 ]
  br label %scalar.ph142

scalar.ph142:                                     ; preds = %scalar.ph142.preheader, %scalar.ph142
  %.0112 = phi i32 [ %i.bh, %scalar.ph142 ], [ %.0112.ph, %scalar.ph142.preheader ]
  %.0111 = phi ptr [ %i.bc, %scalar.ph142 ], [ %.0111.ph, %scalar.ph142.preheader ]
  %i.bc = getelementptr inbounds i8, ptr %.0111, i64 -2 ; 3 uses
  %i.bd = load i16, ptr %i.bc, align 2, !tbaa !57
  %i.be = zext i16 %i.bd to i32
  %i.bf = tail call i32 @llvm.usub.sat.i32(i32 %i.be, i32 %i.b)
  %i.bg = trunc nuw i32 %i.bf to i16
  store i16 %i.bg, ptr %i.bc, align 2, !tbaa !57
  %i.bh = add i32 %.0112, -1                      ; 2 uses
  %.not122 = icmp eq i32 %i.bh, 0
  br i1 %.not122, label %.loopexit160, label %scalar.ph142, !llvm.loop !96

.loopexit160:                                     ; preds = %scalar.ph142, %middle.block155
  %i.bi = load ptr, ptr %i.l, align 8, !tbaa !38
  %i.bj = getelementptr inbounds nuw [2 x i8], ptr %i.bi, i64 %i.h ; 3 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.loopexit160
  %i.bk = getelementptr i8, ptr %i.bj, i64 %i.z
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bl = mul i64 %index, -2
  %next.gep = getelementptr i8, ptr %i.bj, i64 %i.bl
  %i.bm = getelementptr inbounds i8, ptr %next.gep, i64 -16 ; 2 uses
  %wide.load = load <8 x i16>, ptr %i.bm, align 2, !tbaa !57
  %i.bn = zext <8 x i16> %wide.load to <8 x i32>
  %i.bo = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %i.bn, <8 x i32> %i.aa)
  %reverse140 = trunc nuw <8 x i32> %i.bo to <8 x i16>
  store <8 x i16> %reverse140, ptr %i.bm, align 2, !tbaa !57
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bp = icmp eq i64 %index.next, %n.vec
  br i1 %i.bp, label %middle.block, label %vector.body, !llvm.loop !97

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.loopexit159, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.loopexit160, %middle.block
  %.1113.ph = phi i32 [ %i.b, %.loopexit160 ], [ %i.y, %middle.block ]
  %.1.ph = phi ptr [ %i.bj, %.loopexit160 ], [ %i.bk, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.1113 = phi i32 [ %i.bv, %scalar.ph ], [ %.1113.ph, %scalar.ph.preheader ]
  %.1 = phi ptr [ %i.bq, %scalar.ph ], [ %.1.ph, %scalar.ph.preheader ]
  %i.bq = getelementptr inbounds i8, ptr %.1, i64 -2 ; 3 uses
  %i.br = load i16, ptr %i.bq, align 2, !tbaa !57
  %i.bs = zext i16 %i.br to i32
  %i.bt = tail call i32 @llvm.usub.sat.i32(i32 %i.bs, i32 %i.b)
  %i.bu = trunc nuw i32 %i.bt to i16
  store i16 %i.bu, ptr %i.bq, align 2, !tbaa !57
  %i.bv = add i32 %.1113, -1                      ; 2 uses
  %.not124 = icmp eq i32 %i.bv, 0
  br i1 %.not124, label %.loopexit159, label %scalar.ph, !llvm.loop !98

.loopexit159:                                     ; preds = %scalar.ph, %middle.block
  %i.bw = add i32 %3, %i.b
  %i.bx = extractelement <2 x i32> %i.aj, i64 0
  br label %bb.d

bb.d:                                             ; preds = %.loopexit159, %bb.b
  %i.by = phi i32 [ %i.bx, %.loopexit159 ], [ %i.ad, %bb.b ]
  %.0110 = phi i32 [ %i.bw, %.loopexit159 ], [ %3, %bb.b ] ; 2 uses
  %i.bz = load ptr, ptr %0, align 8, !tbaa !27    ; 8 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8 ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !75 ; 3 uses
  %i.cc = icmp eq i32 %i.cb, 0
  br i1 %i.cc, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.cd = load ptr, ptr %i.g, align 8, !tbaa !37
  %i.ce = zext i32 %i.by to i64
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.ce
  %i.cg = load i32, ptr %i.d, align 4, !tbaa !69  ; 2 uses
  %i.ch = zext i32 %i.cg to i64
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.ch ; 3 uses
  %spec.select.i = tail call i32 @llvm.umin.i32(i32 %i.cb, i32 %.0110) ; 5 uses
  %i.cj = icmp eq i32 %.0110, 0
  br i1 %i.cj, label %read_buf.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ck = sub nuw i32 %i.cb, %spec.select.i
  store i32 %i.ck, ptr %i.ca, align 8, !tbaa !75
  %i.cl = load ptr, ptr %i.bz, align 8, !tbaa !76
  %i.cm = zext i32 %spec.select.i to i64          ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ci, ptr align 1 %i.cl, i64 %i.cm, i1 false)
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bz, i64 56
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !18
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 44
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !28
  switch i32 %i.cq, label %bb.i [
    i32 1, label %bb.g
    i32 2, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bz, i64 96 ; 2 uses
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !54
  %i.ct = tail call i64 @adler32(i64 noundef %i.cs, ptr noundef %i.ci, i32 noundef %spec.select.i) #11
  store i64 %i.ct, ptr %i.cr, align 8, !tbaa !54
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bz, i64 96 ; 2 uses
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !54
  %i.cw = tail call i64 @crc32(i64 noundef %i.cv, ptr noundef %i.ci, i32 noundef %spec.select.i) #11
  store i64 %i.cw, ptr %i.cu, align 8, !tbaa !54
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %i.cx = load ptr, ptr %i.bz, align 8, !tbaa !76
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.cm
  store ptr %i.cy, ptr %i.bz, align 8, !tbaa !76
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bz, i64 16 ; 2 uses
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !50
  %i.db = add i64 %i.da, %i.cm
  store i64 %i.db, ptr %i.cz, align 8, !tbaa !50
  %.pre131 = load i32, ptr %i.d, align 4, !tbaa !69
  br label %read_buf.exit

read_buf.exit:                                    ; preds = %bb.e, %bb.i
  %i.dc = phi i32 [ %i.cg, %bb.e ], [ %.pre131, %bb.i ]
  %i.dd = add i32 %i.dc, %spec.select.i           ; 5 uses
  store i32 %i.dd, ptr %i.d, align 4, !tbaa !69
  %i.de = load i32, ptr %i.m, align 4, !tbaa !70  ; 3 uses
  %i.df = add i32 %i.de, %i.dd
  %i.dg = icmp ugt i32 %i.df, 2
  br i1 %i.dg, label %bb.j, label %.loopexit

bb.j:                                             ; preds = %read_buf.exit
  %i.dh = load i32, ptr %i.e, align 4, !tbaa !67
  %i.di = sub i32 %i.dh, %i.de                    ; 3 uses
  %i.dj = load ptr, ptr %i.g, align 8, !tbaa !37  ; 3 uses
  %i.dk = zext i32 %i.di to i64
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.dk
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !8
  %i.dn = zext i8 %i.dm to i32                    ; 2 uses
  store i32 %i.dn, ptr %i.n, align 8, !tbaa !74
  %i.do = load i32, ptr %i.o, align 8, !tbaa !36  ; 2 uses
  %i.dp = shl i32 %i.dn, %i.do
  %i.dq = add i32 %i.di, 1
  %i.dr = zext i32 %i.dq to i64
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.dr
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !8
  %i.du = zext i8 %i.dt to i32
  %i.dv = xor i32 %i.dp, %i.du
  %i.dw = load i32, ptr %i.p, align 4, !tbaa !35  ; 2 uses
  %i.dx = and i32 %i.dv, %i.dw                    ; 2 uses
  store i32 %i.dx, ptr %i.n, align 8, !tbaa !74
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %bb.j
  %i.dy = phi i32 [ %i.eh, %bb.l ], [ %i.dx, %bb.j ]
  %i.dz = phi i32 [ %i.et, %bb.l ], [ %i.de, %bb.j ] ; 2 uses
  %.0109 = phi i32 [ %i.es, %bb.l ], [ %i.di, %bb.j ] ; 4 uses
  %.not125 = icmp eq i32 %i.dz, 0
  br i1 %.not125, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ea = shl i32 %i.dy, %i.do
  %i.eb = add i32 %.0109, 2
  %i.ec = zext i32 %i.eb to i64
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.ec
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !8
  %i.ef = zext i8 %i.ee to i32
  %i.eg = xor i32 %i.ea, %i.ef
  %i.eh = and i32 %i.eg, %i.dw                    ; 3 uses
  store i32 %i.eh, ptr %i.n, align 8, !tbaa !74
  %i.ei = load ptr, ptr %i.k, align 8, !tbaa !39
  %i.ej = zext i32 %i.eh to i64
  %i.ek = getelementptr inbounds nuw [2 x i8], ptr %i.ei, i64 %i.ej ; 2 uses
  %i.el = load i16, ptr %i.ek, align 2, !tbaa !57
  %i.em = load ptr, ptr %i.l, align 8, !tbaa !38
  %i.en = load i32, ptr %i.q, align 4, !tbaa !32
  %i.eo = and i32 %i.en, %.0109
  %i.ep = zext i32 %i.eo to i64
  %i.eq = getelementptr inbounds nuw [2 x i8], ptr %i.em, i64 %i.ep
  store i16 %i.el, ptr %i.eq, align 2, !tbaa !57
  %i.er = trunc i32 %.0109 to i16
  store i16 %i.er, ptr %i.ek, align 2, !tbaa !57
  %i.es = add i32 %.0109, 1
  %i.et = add i32 %i.dz, -1                       ; 3 uses
  store i32 %i.et, ptr %i.m, align 4, !tbaa !70
  %i.eu = add i32 %i.et, %i.dd
  %i.ev = icmp ult i32 %i.eu, 3
  br i1 %i.ev, label %.loopexit, label %bb.k, !llvm.loop !99

.loopexit:                                        ; preds = %bb.k, %bb.l, %read_buf.exit
  %i.ew = icmp ult i32 %i.dd, 262
  br i1 %i.ew, label %bb.m, label %.critedge

bb.m:                                             ; preds = %.loopexit
  %i.ex = load ptr, ptr %0, align 8, !tbaa !27
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  %i.ez = load i32, ptr %i.ey, align 8, !tbaa !75
  %.not126 = icmp eq i32 %i.ez, 0
  br i1 %.not126, label %.critedge, label %bb.b, !llvm.loop !100

.critedge:                                        ; preds = %.loopexit, %bb.d, %bb.m
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 5928 ; 3 uses
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !40 ; 5 uses
  %i.fc = load i64, ptr %i.c, align 8, !tbaa !56  ; 3 uses
  %i.fd = icmp ult i64 %i.fb, %i.fc
  br i1 %i.fd, label %bb.n, label %bb.r

bb.n:                                             ; preds = %.critedge
  %i.fe = load i32, ptr %i.e, align 4, !tbaa !67
  %i.ff = zext i32 %i.fe to i64
  %i.fg = load i32, ptr %i.d, align 4, !tbaa !69
  %i.fh = zext i32 %i.fg to i64
  %i.fi = add nuw nsw i64 %i.fh, %i.ff            ; 5 uses
  %i.fj = icmp ult i64 %i.fb, %i.fi
  br i1 %i.fj, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.fk = sub i64 %i.fc, %i.fi
  %spec.store.select = tail call i64 @llvm.umin.i64(i64 %i.fk, i64 258) ; 2 uses
  %i.fl = load ptr, ptr %i.g, align 8, !tbaa !37
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 %i.fi
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.fm, i8 0, i64 %spec.store.select, i1 false)
  %i.fn = add nuw nsw i64 %spec.store.select, %i.fi
  br label %.sink.split

bb.p:                                             ; preds = %bb.n
  %i.fo = add nuw nsw i64 %i.fi, 258              ; 2 uses
  %i.fp = icmp ult i64 %i.fb, %i.fo
  br i1 %i.fp, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.fq = tail call i64 @llvm.umin.i64(i64 %i.fo, i64 %i.fc)
  %spec.select = sub nuw nsw i64 %i.fq, %i.fb     ; 2 uses
  %i.fr = load ptr, ptr %i.g, align 8, !tbaa !37
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 %i.fb
  %i.ft = and i64 %spec.select, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.fs, i8 0, i64 %i.ft, i1 false)
  %i.fu = load i64, ptr %i.fa, align 8, !tbaa !40
  %i.fv = add i64 %i.fu, %spec.select
  br label %.sink.split

.sink.split:                                      ; preds = %bb.q, %bb.o
  %.sink = phi i64 [ %i.fn, %bb.o ], [ %i.fv, %bb.q ]
  store i64 %.sink, ptr %i.fa, align 8, !tbaa !40
  br label %bb.r

bb.r:                                             ; preds = %.sink.split, %bb.p, %.critedge
  ret void
}

; Function Attrs: nounwind uwtable
define range(i32 -2, 1) i32 @deflateResetKeep(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !18   ; 8 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !15
end_hunk_0
