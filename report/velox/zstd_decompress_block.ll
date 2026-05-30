inline.NumInlined: 579
inline.NumDeleted: 38
begin_hunk_0_@ZSTD_execSequenceEnd:bb.a
  %i.ca = ptrtoint ptr %5 to i64                  ; 2 uses
  %i.cb = sub i64 %i.bz, %i.ca
  %i.cc = icmp ugt i64 %i.i, %i.cb
  br i1 %i.cc, label %bb.m, label %bb.q

bb.m:                                             ; preds = %ZSTD_safecopy.exit
  %i.cd = ptrtoint ptr %6 to i64
  %i.ce = sub i64 %i.bz, %i.cd
  %i.cf = icmp ugt i64 %i.i, %i.ce
  br i1 %i.cf, label %bb.r, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cg = ptrtoint ptr %i.k to i64
  %.neg = sub i64 %i.cg, %i.ca                    ; 3 uses
  %i.ch = getelementptr inbounds i8, ptr %7, i64 %.neg ; 2 uses
  %i.ci = add nsw i64 %.neg, %i.d                 ; 2 uses
  %.not = icmp sgt i64 %i.ci, 0
  br i1 %.not, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.b, ptr align 1 %i.ch, i64 %i.d, i1 false)
  br label %bb.r

bb.p:                                             ; preds = %bb.n
  %gepdiff = sub nsw i64 0, %.neg                 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.b, ptr align 1 %i.ch, i64 %gepdiff, i1 false)
  %i.cj = getelementptr inbounds nuw i8, ptr %i.b, i64 %gepdiff
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %ZSTD_safecopy.exit
  %i.ck = phi i64 [ %i.ci, %bb.p ], [ %i.d, %ZSTD_safecopy.exit ]
  %.041 = phi ptr [ %5, %bb.p ], [ %i.k, %ZSTD_safecopy.exit ]
  %.040 = phi ptr [ %i.cj, %bb.p ], [ %i.b, %ZSTD_safecopy.exit ]
  tail call fastcc void @ZSTD_safecopy(ptr noundef %.040, ptr noundef nonnull %i.l, ptr noundef %.041, i64 noundef %i.ck, i32 noundef 1)
  br label %bb.r

bb.r:                                             ; preds = %bb.m, %bb.b, %bb.a, %bb.q, %bb.o
  %.0 = phi i64 [ %i.e, %bb.q ], [ -70, %bb.a ], [ -20, %bb.b ], [ %i.e, %bb.o ], [ -20, %bb.m ]
  ret i64 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @ZSTD_safecopy(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef range(i32 0, 2) %4) unnamed_addr #13 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 6 uses
  %i.c = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.d = sub i64 %i.b, %i.c                       ; 3 uses
  %i.e = getelementptr inbounds i8, ptr %0, i64 %3 ; 4 uses
  %i.f = icmp slt i64 %3, 8
  br i1 %i.f, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %i.g = icmp sgt i64 %3, 0
  br i1 %i.g, label %iter.check164, label %ZSTD_wildcopy.exit27

iter.check164:                                    ; preds = %.preheader
  %i.h = add i64 %3, %i.b
  %i.i = add i64 %i.b, 1
  %umax144 = tail call i64 @llvm.umax.i64(i64 %i.h, i64 %i.i)
  %i.j = sub i64 %umax144, %i.b                   ; 7 uses
  %min.iters.check146 = icmp ult i64 %i.j, 4
  %i.k = sub i64 %i.b, %i.c
  %diff.check143 = icmp ult i64 %i.k, 32
  %or.cond = or i1 %min.iters.check146, %diff.check143
  br i1 %or.cond, label %.lr.ph69.preheader, label %vector.main.loop.iter.check147

vector.main.loop.iter.check147:                   ; preds = %iter.check164
  %min.iters.check148 = icmp ult i64 %i.j, 32
  br i1 %min.iters.check148, label %vec.epilog.ph168, label %vector.ph149

vector.ph149:                                     ; preds = %vector.main.loop.iter.check147
  %n.mod.vf150 = and i64 %i.j, 28
  %n.vec151 = and i64 %i.j, -32                   ; 5 uses
  %i.l = getelementptr i8, ptr %2, i64 %n.vec151
  %i.m = getelementptr i8, ptr %0, i64 %n.vec151
  br label %vector.body152

vector.body152:                                   ; preds = %vector.body152, %vector.ph149
  %index153 = phi i64 [ 0, %vector.ph149 ], [ %index.next158, %vector.body152 ] ; 3 uses
  %next.gep154 = getelementptr i8, ptr %2, i64 %index153 ; 2 uses
  %next.gep155 = getelementptr i8, ptr %0, i64 %index153 ; 2 uses
  %i.n = getelementptr i8, ptr %next.gep154, i64 16
  %wide.load156 = load <16 x i8>, ptr %next.gep154, align 1, !tbaa !9
  %wide.load157 = load <16 x i8>, ptr %i.n, align 1, !tbaa !9
  %i.o = getelementptr i8, ptr %next.gep155, i64 16
  store <16 x i8> %wide.load156, ptr %next.gep155, align 1, !tbaa !9
  store <16 x i8> %wide.load157, ptr %i.o, align 1, !tbaa !9
  %index.next158 = add nuw i64 %index153, 32      ; 2 uses
  %i.p = icmp eq i64 %index.next158, %n.vec151
  br i1 %i.p, label %middle.block159, label %vector.body152, !llvm.loop !199

middle.block159:                                  ; preds = %vector.body152
  %cmp.n160 = icmp eq i64 %i.j, %n.vec151
  br i1 %cmp.n160, label %ZSTD_wildcopy.exit27, label %vec.epilog.iter.check166

vec.epilog.iter.check166:                         ; preds = %middle.block159
  %min.epilog.iters.check167 = icmp eq i64 %n.mod.vf150, 0
  br i1 %min.epilog.iters.check167, label %.lr.ph69.preheader, label %vec.epilog.ph168, !prof !95

vec.epilog.ph168:                                 ; preds = %vector.main.loop.iter.check147, %vec.epilog.iter.check166
  %vec.epilog.resume.val161 = phi i64 [ %n.vec151, %vec.epilog.iter.check166 ], [ 0, %vector.main.loop.iter.check147 ]
  %n.vec170 = and i64 %i.j, -4                    ; 4 uses
  %i.q = getelementptr i8, ptr %2, i64 %n.vec170
  %i.r = getelementptr i8, ptr %0, i64 %n.vec170
  br label %vec.epilog.vector.body171

vec.epilog.vector.body171:                        ; preds = %vec.epilog.vector.body171, %vec.epilog.ph168
  %index172 = phi i64 [ %vec.epilog.resume.val161, %vec.epilog.ph168 ], [ %index.next176, %vec.epilog.vector.body171 ] ; 3 uses
  %next.gep173 = getelementptr i8, ptr %2, i64 %index172
  %next.gep174 = getelementptr i8, ptr %0, i64 %index172
  %wide.load175 = load <4 x i8>, ptr %next.gep173, align 1, !tbaa !9
  store <4 x i8> %wide.load175, ptr %next.gep174, align 1, !tbaa !9
  %index.next176 = add nuw i64 %index172, 4       ; 2 uses
  %i.s = icmp eq i64 %index.next176, %n.vec170
  br i1 %i.s, label %vec.epilog.middle.block177, label %vec.epilog.vector.body171, !llvm.loop !200

vec.epilog.middle.block177:                       ; preds = %vec.epilog.vector.body171
  %cmp.n178 = icmp eq i64 %i.j, %n.vec170
  br i1 %cmp.n178, label %ZSTD_wildcopy.exit27, label %.lr.ph69.preheader

.lr.ph69.preheader:                               ; preds = %iter.check164, %vec.epilog.iter.check166, %vec.epilog.middle.block177
  %.05468.ph = phi ptr [ %2, %iter.check164 ], [ %i.l, %vec.epilog.iter.check166 ], [ %i.q, %vec.epilog.middle.block177 ]
  %.05567.ph = phi ptr [ %0, %iter.check164 ], [ %i.m, %vec.epilog.iter.check166 ], [ %i.r, %vec.epilog.middle.block177 ]
  br label %.lr.ph69

.lr.ph69:                                         ; preds = %.lr.ph69.preheader, %.lr.ph69
  %.05468 = phi ptr [ %i.t, %.lr.ph69 ], [ %.05468.ph, %.lr.ph69.preheader ] ; 2 uses
  %.05567 = phi ptr [ %i.v, %.lr.ph69 ], [ %.05567.ph, %.lr.ph69.preheader ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.05468, i64 1
  %i.u = load i8, ptr %.05468, align 1, !tbaa !9
  %i.v = getelementptr inbounds nuw i8, ptr %.05567, i64 1 ; 2 uses
  store i8 %i.u, ptr %.05567, align 1, !tbaa !9
  %i.w = icmp ult ptr %i.v, %i.e
  br i1 %i.w, label %.lr.ph69, label %ZSTD_wildcopy.exit27, !llvm.loop !201

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.x = icmp ult i64 %i.d, 8
  br i1 %i.x, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_overlapCopy8.dec64table, i64 %i.d
  %i.z = load i32, ptr %i.y, align 4, !tbaa !3
  %i.aa = load i8, ptr %2, align 1, !tbaa !9
  store i8 %i.aa, ptr %0, align 1, !tbaa !9
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !9
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.ac, ptr %i.ad, align 1, !tbaa !9
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !9
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.af, ptr %i.ag, align 1, !tbaa !9
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !9
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 3
  store i8 %i.ai, ptr %i.aj, align 1, !tbaa !9
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_overlapCopy8.dec32table, i64 %i.d
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !3
  %i.am = zext i32 %i.al to i64
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 %i.am ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ap = load i32, ptr %i.an, align 1
  store i32 %i.ap, ptr %i.ao, align 1
  %i.aq = sext i32 %i.z to i64
  %i.ar = sub nsw i64 0, %i.aq
  %i.as = getelementptr inbounds i8, ptr %i.an, i64 %i.ar
  br label %ZSTD_overlapCopy8.exit

bb.e:                                             ; preds = %bb.c
  %i.at = load i64, ptr %2, align 1
  store i64 %i.at, ptr %0, align 1
  br label %ZSTD_overlapCopy8.exit

ZSTD_overlapCopy8.exit:                           ; preds = %bb.d, %bb.e
  %.4 = phi ptr [ %i.as, %bb.d ], [ %2, %bb.e ]
  %i.au = getelementptr inbounds nuw i8, ptr %.4, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aw = add nsw i64 %3, -8
  br label %bb.f

bb.f:                                             ; preds = %ZSTD_overlapCopy8.exit, %bb.b
  %.156 = phi ptr [ %0, %bb.b ], [ %i.av, %ZSTD_overlapCopy8.exit ] ; 18 uses
  %.1 = phi ptr [ %2, %bb.b ], [ %i.au, %ZSTD_overlapCopy8.exit ] ; 15 uses
  %.0 = phi i64 [ %3, %bb.b ], [ %i.aw, %ZSTD_overlapCopy8.exit ] ; 3 uses
  %.156113 = ptrtoint ptr %.156 to i64
  %.156110 = ptrtoaddr ptr %.156 to i64
  %.1111 = ptrtoaddr ptr %.1 to i64
  %.not19 = icmp ugt ptr %i.e, %1
  br i1 %.not19, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ax = ptrtoint ptr %.156 to i64               ; 5 uses
  %i.ay = ptrtoint ptr %.1 to i64                 ; 2 uses
  %i.az = sub i64 %i.ax, %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %.156, i64 %.0 ; 2 uses
  %5 = icmp ne i32 %4, 0
  %i.bb = icmp slt i64 %i.az, 16
  %or.cond.i21 = and i1 %5, %i.bb
  br i1 %or.cond.i21, label %.preheader62.preheader, label %bb.h

.preheader62.preheader:                           ; preds = %bb.g
  %i.bc = add i64 %.0, %i.ax
  %i.bd = add i64 %i.ax, 8
  %umax = tail call i64 @llvm.umax.i64(i64 %i.bc, i64 %i.bd)
  %i.be = xor i64 %i.ax, -1
  %i.bf = add i64 %umax, %i.be                    ; 2 uses
  %i.bg = lshr i64 %i.bf, 3
  %i.bh = add nuw nsw i64 %i.bg, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bf, 56
  %i.bi = sub i64 %i.ax, %i.ay
  %diff.check = icmp ult i64 %i.bi, 32
  %or.cond181 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond181, label %.preheader62.preheader187, label %vector.ph

vector.ph:                                        ; preds = %.preheader62.preheader
  %n.vec = and i64 %i.bh, 4611686018427387900     ; 3 uses
  %i.bj = shl i64 %n.vec, 3                       ; 2 uses
  %i.bk = getelementptr i8, ptr %.156, i64 %i.bj
  %i.bl = getelementptr i8, ptr %.1, i64 %i.bj
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bm = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.156, i64 %i.bm ; 2 uses
  %next.gep87 = getelementptr i8, ptr %.1, i64 %i.bm ; 2 uses
  %i.bn = getelementptr i8, ptr %next.gep87, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep87, align 1
  %wide.load88 = load <2 x i64>, ptr %i.bn, align 1
  %i.bo = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 1
  store <2 x i64> %wide.load88, ptr %i.bo, align 1
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bp = icmp eq i64 %index.next, %n.vec
  br i1 %i.bp, label %middle.block, label %vector.body, !llvm.loop !202

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bh, %n.vec
  br i1 %cmp.n, label %ZSTD_wildcopy.exit27, label %.preheader62.preheader187

.preheader62.preheader187:                        ; preds = %.preheader62.preheader, %middle.block
  %.029.i25.ph = phi ptr [ %.156, %.preheader62.preheader ], [ %i.bk, %middle.block ]
  %.0.i26.ph = phi ptr [ %.1, %.preheader62.preheader ], [ %i.bl, %middle.block ]
  br label %.preheader62

.preheader62:                                     ; preds = %.preheader62.preheader187, %.preheader62
  %.029.i25 = phi ptr [ %i.br, %.preheader62 ], [ %.029.i25.ph, %.preheader62.preheader187 ] ; 2 uses
  %.0.i26 = phi ptr [ %i.bs, %.preheader62 ], [ %.0.i26.ph, %.preheader62.preheader187 ] ; 2 uses
  %i.bq = load i64, ptr %.0.i26, align 1
  store i64 %i.bq, ptr %.029.i25, align 1
  %i.br = getelementptr inbounds nuw i8, ptr %.029.i25, i64 8 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.0.i26, i64 8
  %i.bt = icmp ult ptr %i.br, %i.ba
  br i1 %i.bt, label %.preheader62, label %ZSTD_wildcopy.exit27, !llvm.loop !203

bb.h:                                             ; preds = %bb.g
  %i.bu = load <2 x i64>, ptr %.1, align 1, !tbaa !9
  store <2 x i64> %i.bu, ptr %.156, align 1, !tbaa !9
  %i.bv = icmp samesign ult i64 %.0, 17
  br i1 %i.bv, label %ZSTD_wildcopy.exit27, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bw = getelementptr inbounds nuw i8, ptr %.156, i64 16
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %bb.i
  %.130.i22 = phi ptr [ %i.bw, %bb.i ], [ %i.cb, %bb.j ] ; 3 uses
  %.pn.i23 = phi ptr [ %.1, %bb.i ], [ %i.bz, %bb.j ] ; 2 uses
  %.1.i24 = getelementptr inbounds nuw i8, ptr %.pn.i23, i64 16
  %i.bx = load <2 x i64>, ptr %.1.i24, align 1, !tbaa !9
  store <2 x i64> %i.bx, ptr %.130.i22, align 1, !tbaa !9
  %i.by = getelementptr inbounds nuw i8, ptr %.130.i22, i64 16
  %i.bz = getelementptr inbounds nuw i8, ptr %.pn.i23, i64 32 ; 2 uses
  %i.ca = load <2 x i64>, ptr %i.bz, align 1, !tbaa !9
  store <2 x i64> %i.ca, ptr %i.by, align 1, !tbaa !9
  %i.cb = getelementptr inbounds nuw i8, ptr %.130.i22, i64 32 ; 2 uses
  %i.cc = icmp ult ptr %i.cb, %i.ba
  br i1 %i.cc, label %bb.j, label %ZSTD_wildcopy.exit27, !llvm.loop !98

bb.k:                                             ; preds = %bb.f
  %.not20 = icmp ugt ptr %.156, %1
  br i1 %.not20, label %bb.p, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cd = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.ce = ptrtoint ptr %.156 to i64               ; 5 uses
  %i.cf = sub i64 %i.cd, %i.ce                    ; 3 uses
  %i.cg = ptrtoint ptr %.1 to i64                 ; 2 uses
  %i.ch = sub i64 %i.ce, %i.cg
  %i.ci = getelementptr inbounds i8, ptr %.156, i64 %i.cf
  %6 = icmp ne i32 %4, 0
  %i.cj = icmp slt i64 %i.ch, 16
  %or.cond.i = and i1 %6, %i.cj
  br i1 %or.cond.i, label %.preheader60.preheader, label %bb.m

.preheader60.preheader:                           ; preds = %bb.l
  %i.ck = add i64 %i.ce, 8
  %umax92 = tail call i64 @llvm.umax.i64(i64 %i.cd, i64 %i.ck)
  %i.cl = xor i64 %i.ce, -1
  %i.cm = add i64 %umax92, %i.cl                  ; 2 uses
  %i.cn = lshr i64 %i.cm, 3
  %i.co = add nuw nsw i64 %i.cn, 1                ; 2 uses
  %min.iters.check94 = icmp ult i64 %i.cm, 56
  %i.cp = sub i64 %i.ce, %i.cg
  %diff.check91 = icmp ult i64 %i.cp, 32
  %or.cond182 = or i1 %min.iters.check94, %diff.check91
  br i1 %or.cond182, label %.preheader60.preheader185, label %vector.ph95

vector.ph95:                                      ; preds = %.preheader60.preheader
  %n.vec97 = and i64 %i.co, 4611686018427387900   ; 3 uses
  %i.cq = shl i64 %n.vec97, 3                     ; 2 uses
  %i.cr = getelementptr i8, ptr %.156, i64 %i.cq
  %i.cs = getelementptr i8, ptr %.1, i64 %i.cq
  br label %vector.body98

vector.body98:                                    ; preds = %vector.body98, %vector.ph95
  %index99 = phi i64 [ 0, %vector.ph95 ], [ %index.next104, %vector.body98 ] ; 2 uses
  %i.ct = shl i64 %index99, 3                     ; 2 uses
  %next.gep100 = getelementptr i8, ptr %.156, i64 %i.ct ; 2 uses
  %next.gep101 = getelementptr i8, ptr %.1, i64 %i.ct ; 2 uses
  %i.cu = getelementptr i8, ptr %next.gep101, i64 16
  %wide.load102 = load <2 x i64>, ptr %next.gep101, align 1
  %wide.load103 = load <2 x i64>, ptr %i.cu, align 1
  %i.cv = getelementptr i8, ptr %next.gep100, i64 16
  store <2 x i64> %wide.load102, ptr %next.gep100, align 1
  store <2 x i64> %wide.load103, ptr %i.cv, align 1
  %index.next104 = add nuw i64 %index99, 4        ; 2 uses
  %i.cw = icmp eq i64 %index.next104, %n.vec97
  br i1 %i.cw, label %middle.block105, label %vector.body98, !llvm.loop !204

middle.block105:                                  ; preds = %vector.body98
  %cmp.n106 = icmp eq i64 %i.co, %n.vec97
  br i1 %cmp.n106, label %ZSTD_wildcopy.exit, label %.preheader60.preheader185

.preheader60.preheader185:                        ; preds = %.preheader60.preheader, %middle.block105
  %.029.i.ph = phi ptr [ %.156, %.preheader60.preheader ], [ %i.cr, %middle.block105 ]
  %.0.i.ph = phi ptr [ %.1, %.preheader60.preheader ], [ %i.cs, %middle.block105 ]
  br label %.preheader60

.preheader60:                                     ; preds = %.preheader60.preheader185, %.preheader60
  %.029.i = phi ptr [ %i.cy, %.preheader60 ], [ %.029.i.ph, %.preheader60.preheader185 ] ; 2 uses
  %.0.i = phi ptr [ %i.cz, %.preheader60 ], [ %.0.i.ph, %.preheader60.preheader185 ] ; 2 uses
  %i.cx = load i64, ptr %.0.i, align 1
  store i64 %i.cx, ptr %.029.i, align 1
  %i.cy = getelementptr inbounds nuw i8, ptr %.029.i, i64 8 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.da = icmp ult ptr %i.cy, %1
  br i1 %i.da, label %.preheader60, label %ZSTD_wildcopy.exit, !llvm.loop !205

bb.m:                                             ; preds = %bb.l
  %i.db = load <2 x i64>, ptr %.1, align 1, !tbaa !9
  store <2 x i64> %i.db, ptr %.156, align 1, !tbaa !9
  %i.dc = icmp slt i64 %i.cf, 17
  br i1 %i.dc, label %ZSTD_wildcopy.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dd = getelementptr inbounds nuw i8, ptr %.156, i64 16
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %bb.n
  %.130.i = phi ptr [ %i.dd, %bb.n ], [ %i.di, %bb.o ] ; 3 uses
  %.pn.i = phi ptr [ %.1, %bb.n ], [ %i.dg, %bb.o ] ; 2 uses
  %.1.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 16
  %i.de = load <2 x i64>, ptr %.1.i, align 1, !tbaa !9
  store <2 x i64> %i.de, ptr %.130.i, align 1, !tbaa !9
  %i.df = getelementptr inbounds nuw i8, ptr %.130.i, i64 16
  %i.dg = getelementptr inbounds nuw i8, ptr %.pn.i, i64 32 ; 2 uses
  %i.dh = load <2 x i64>, ptr %i.dg, align 1, !tbaa !9
  store <2 x i64> %i.dh, ptr %i.df, align 1, !tbaa !9
  %i.di = getelementptr inbounds nuw i8, ptr %.130.i, i64 32 ; 2 uses
  %i.dj = icmp ult ptr %i.di, %1
  br i1 %i.dj, label %bb.o, label %ZSTD_wildcopy.exit, !llvm.loop !98

ZSTD_wildcopy.exit:                               ; preds = %bb.o, %.preheader60, %middle.block105, %bb.m
  %i.dk = getelementptr inbounds i8, ptr %.1, i64 %i.cf
  br label %bb.p

bb.p:                                             ; preds = %ZSTD_wildcopy.exit, %bb.k
  %.257 = phi ptr [ %.156, %bb.k ], [ %i.ci, %ZSTD_wildcopy.exit ] ; 6 uses
  %.2 = phi ptr [ %.1, %bb.k ], [ %i.dk, %ZSTD_wildcopy.exit ] ; 5 uses
  %i.dl = icmp ult ptr %.257, %i.e
  br i1 %i.dl, label %iter.check, label %ZSTD_wildcopy.exit27

iter.check:                                       ; preds = %bb.p
  %i.dm = add i64 %3, %i.b
  %umax114 = tail call i64 @llvm.umax.i64(i64 %.156113, i64 %i.a)
  %i.dn = sub i64 %i.dm, %umax114                 ; 7 uses
  %min.iters.check116 = icmp ult i64 %i.dn, 4
  %i.do = sub i64 %.156110, %.1111
  %diff.check112 = icmp ult i64 %i.do, 32
  %or.cond183 = select i1 %min.iters.check116, i1 true, i1 %diff.check112
  br i1 %or.cond183, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check117 = icmp ult i64 %i.dn, 32
  br i1 %min.iters.check117, label %vec.epilog.ph, label %vector.ph118

vector.ph118:                                     ; preds = %vector.main.loop.iter.check
  %n.mod.vf119 = and i64 %i.dn, 28
  %n.vec120 = and i64 %i.dn, -32                  ; 5 uses
  %i.dp = getelementptr i8, ptr %.2, i64 %n.vec120
  %i.dq = getelementptr i8, ptr %.257, i64 %n.vec120
  br label %vector.body121

vector.body121:                                   ; preds = %vector.body121, %vector.ph118
  %index122 = phi i64 [ 0, %vector.ph118 ], [ %index.next127, %vector.body121 ] ; 3 uses
  %next.gep123 = getelementptr i8, ptr %.2, i64 %index122 ; 2 uses
  %next.gep124 = getelementptr i8, ptr %.257, i64 %index122 ; 2 uses
  %i.dr = getelementptr i8, ptr %next.gep123, i64 16
  %wide.load125 = load <16 x i8>, ptr %next.gep123, align 1, !tbaa !9
  %wide.load126 = load <16 x i8>, ptr %i.dr, align 1, !tbaa !9
  %i.ds = getelementptr i8, ptr %next.gep124, i64 16
  store <16 x i8> %wide.load125, ptr %next.gep124, align 1, !tbaa !9
  store <16 x i8> %wide.load126, ptr %i.ds, align 1, !tbaa !9
  %index.next127 = add nuw i64 %index122, 32      ; 2 uses
  %i.dt = icmp eq i64 %index.next127, %n.vec120
  br i1 %i.dt, label %middle.block128, label %vector.body121, !llvm.loop !206

middle.block128:                                  ; preds = %vector.body121
  %cmp.n129 = icmp eq i64 %i.dn, %n.vec120
  br i1 %cmp.n129, label %ZSTD_wildcopy.exit27, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block128
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf119, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !95

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec120, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec133 = and i64 %i.dn, -4                   ; 4 uses
  %i.du = getelementptr i8, ptr %.2, i64 %n.vec133
  %i.dv = getelementptr i8, ptr %.257, i64 %n.vec133
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index134 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next138, %vec.epilog.vector.body ] ; 3 uses
  %next.gep135 = getelementptr i8, ptr %.2, i64 %index134
  %next.gep136 = getelementptr i8, ptr %.257, i64 %index134
  %wide.load137 = load <4 x i8>, ptr %next.gep135, align 1, !tbaa !9
  store <4 x i8> %wide.load137, ptr %next.gep136, align 1, !tbaa !9
  %index.next138 = add nuw i64 %index134, 4       ; 2 uses
  %i.dw = icmp eq i64 %index.next138, %n.vec133
  br i1 %i.dw, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !207

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n139 = icmp eq i64 %i.dn, %n.vec133
  br i1 %cmp.n139, label %ZSTD_wildcopy.exit27, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.366.ph = phi ptr [ %.2, %iter.check ], [ %i.dp, %vec.epilog.iter.check ], [ %i.du, %vec.epilog.middle.block ]
  %.35865.ph = phi ptr [ %.257, %iter.check ], [ %i.dq, %vec.epilog.iter.check ], [ %i.dv, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.366 = phi ptr [ %i.dx, %.lr.ph ], [ %.366.ph, %.lr.ph.preheader ] ; 2 uses
  %.35865 = phi ptr [ %i.dz, %.lr.ph ], [ %.35865.ph, %.lr.ph.preheader ] ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.366, i64 1
  %i.dy = load i8, ptr %.366, align 1, !tbaa !9
  %i.dz = getelementptr inbounds nuw i8, ptr %.35865, i64 1 ; 2 uses
  store i8 %i.dy, ptr %.35865, align 1, !tbaa !9
  %i.ea = icmp ult ptr %i.dz, %i.e
  br i1 %i.ea, label %.lr.ph, label %ZSTD_wildcopy.exit27, !llvm.loop !208

ZSTD_wildcopy.exit27:                             ; preds = %bb.j, %.preheader62, %.lr.ph, %.lr.ph69, %middle.block, %middle.block128, %vec.epilog.middle.block, %middle.block159, %vec.epilog.middle.block177, %bb.p, %.preheader, %bb.h
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i64 @ZSTD_execSequenceEndSplitLitBuffer(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef readonly byval(%struct.seq_t) align 8 captures(none) %3, ptr noundef nonnull captures(none) %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef readonly captures(none) %8) unnamed_addr #12 {
bb.a:
  %i.a = load i64, ptr %3, align 8, !tbaa !92     ; 11 uses
  %i.b = getelementptr inbounds i8, ptr %0, i64 %i.a ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !127  ; 4 uses
  %i.e = add i64 %i.d, %i.a                       ; 3 uses
  %i.f = load ptr, ptr %4, align 8, !tbaa !36     ; 12 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.a ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !192  ; 3 uses
  %i.j = sub i64 0, %i.i
  %i.k = getelementptr inbounds i8, ptr %i.b, i64 %i.j ; 2 uses
  %i.l = ptrtoint ptr %1 to i64
  %i.m = ptrtoint ptr %0 to i64                   ; 8 uses
  %i.n = sub i64 %i.l, %i.m
  %i.o = icmp ugt i64 %i.e, %i.n
  br i1 %i.o, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = ptrtoint ptr %5 to i64
  %i.q = ptrtoint ptr %i.f to i64                 ; 3 uses
  %i.r = sub i64 %i.p, %i.q
  %i.s = icmp ugt i64 %i.a, %i.r
  br i1 %i.s, label %bb.n, label %bb.c

end_hunk_0
