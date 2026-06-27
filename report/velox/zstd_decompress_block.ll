inline.NumInlined: 579
inline.NumDeleted: 38
begin_hunk_0_@ZSTD_execSequenceEnd:bb.a
  %i.bu = ptrtoint ptr %5 to i64                  ; 2 uses
  %i.bv = sub i64 %i.bt, %i.bu
  %i.bw = icmp ugt i64 %i.i, %i.bv
  br i1 %i.bw, label %bb.m, label %bb.q

bb.m:                                             ; preds = %ZSTD_safecopy.exit
  %i.bx = ptrtoint ptr %6 to i64
  %i.by = sub i64 %i.bt, %i.bx
  %i.bz = icmp ugt i64 %i.i, %i.by
  br i1 %i.bz, label %bb.r, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ca = ptrtoint ptr %i.k to i64
  %.neg = sub i64 %i.ca, %i.bu                    ; 3 uses
  %i.cb = getelementptr inbounds i8, ptr %7, i64 %.neg ; 2 uses
  %i.cc = add nsw i64 %.neg, %i.d                 ; 2 uses
  %.not = icmp sgt i64 %i.cc, 0
  br i1 %.not, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.b, ptr align 1 %i.cb, i64 %i.d, i1 false)
  br label %bb.r

bb.p:                                             ; preds = %bb.n
  %gepdiff = sub nsw i64 0, %.neg                 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.b, ptr align 1 %i.cb, i64 %gepdiff, i1 false)
  %i.cd = getelementptr inbounds nuw i8, ptr %i.b, i64 %gepdiff
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %ZSTD_safecopy.exit
  %i.ce = phi i64 [ %i.cc, %bb.p ], [ %i.d, %ZSTD_safecopy.exit ]
  %.041 = phi ptr [ %5, %bb.p ], [ %i.k, %ZSTD_safecopy.exit ]
  %.040 = phi ptr [ %i.cd, %bb.p ], [ %i.b, %ZSTD_safecopy.exit ]
  tail call fastcc void @ZSTD_safecopy(ptr noundef %.040, ptr noundef nonnull %i.l, ptr noundef %.041, i64 noundef %i.ce, i32 noundef 1)
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
  br i1 %i.g, label %iter.check169, label %ZSTD_wildcopy.exit27

iter.check169:                                    ; preds = %.preheader
  %i.h = add i64 %3, %i.b
  %i.i = add i64 %i.b, 1
  %umax149 = tail call i64 @llvm.umax.i64(i64 %i.h, i64 %i.i)
  %i.j = sub i64 %umax149, %i.b                   ; 7 uses
  %min.iters.check151 = icmp ult i64 %i.j, 4
  %i.k = sub i64 %i.b, %i.c
  %diff.check148 = icmp ult i64 %i.k, 32
  %or.cond = or i1 %min.iters.check151, %diff.check148
  br i1 %or.cond, label %.lr.ph74.preheader, label %vector.main.loop.iter.check152

vector.main.loop.iter.check152:                   ; preds = %iter.check169
  %min.iters.check153 = icmp ult i64 %i.j, 32
  br i1 %min.iters.check153, label %vec.epilog.ph173, label %vector.ph154

vector.ph154:                                     ; preds = %vector.main.loop.iter.check152
  %n.mod.vf155 = and i64 %i.j, 28
  %n.vec156 = and i64 %i.j, -32                   ; 5 uses
  %i.l = getelementptr i8, ptr %2, i64 %n.vec156
  %i.m = getelementptr i8, ptr %0, i64 %n.vec156
  br label %vector.body157

vector.body157:                                   ; preds = %vector.body157, %vector.ph154
  %index158 = phi i64 [ 0, %vector.ph154 ], [ %index.next163, %vector.body157 ] ; 3 uses
  %next.gep159 = getelementptr i8, ptr %2, i64 %index158 ; 2 uses
  %next.gep160 = getelementptr i8, ptr %0, i64 %index158 ; 2 uses
  %i.n = getelementptr i8, ptr %next.gep159, i64 16
  %wide.load161 = load <16 x i8>, ptr %next.gep159, align 1, !tbaa !9
  %wide.load162 = load <16 x i8>, ptr %i.n, align 1, !tbaa !9
  %i.o = getelementptr i8, ptr %next.gep160, i64 16
  store <16 x i8> %wide.load161, ptr %next.gep160, align 1, !tbaa !9
  store <16 x i8> %wide.load162, ptr %i.o, align 1, !tbaa !9
  %index.next163 = add nuw i64 %index158, 32      ; 2 uses
  %i.p = icmp eq i64 %index.next163, %n.vec156
  br i1 %i.p, label %middle.block164, label %vector.body157, !llvm.loop !199

middle.block164:                                  ; preds = %vector.body157
  %cmp.n165 = icmp eq i64 %i.j, %n.vec156
  br i1 %cmp.n165, label %ZSTD_wildcopy.exit27, label %vec.epilog.iter.check171

vec.epilog.iter.check171:                         ; preds = %middle.block164
  %min.epilog.iters.check172 = icmp eq i64 %n.mod.vf155, 0
  br i1 %min.epilog.iters.check172, label %.lr.ph74.preheader, label %vec.epilog.ph173, !prof !95

vec.epilog.ph173:                                 ; preds = %vector.main.loop.iter.check152, %vec.epilog.iter.check171
  %vec.epilog.resume.val166 = phi i64 [ %n.vec156, %vec.epilog.iter.check171 ], [ 0, %vector.main.loop.iter.check152 ]
  %n.vec175 = and i64 %i.j, -4                    ; 4 uses
  %i.q = getelementptr i8, ptr %2, i64 %n.vec175
  %i.r = getelementptr i8, ptr %0, i64 %n.vec175
  br label %vec.epilog.vector.body176

vec.epilog.vector.body176:                        ; preds = %vec.epilog.vector.body176, %vec.epilog.ph173
  %index177 = phi i64 [ %vec.epilog.resume.val166, %vec.epilog.ph173 ], [ %index.next181, %vec.epilog.vector.body176 ] ; 3 uses
  %next.gep178 = getelementptr i8, ptr %2, i64 %index177
  %next.gep179 = getelementptr i8, ptr %0, i64 %index177
  %wide.load180 = load <4 x i8>, ptr %next.gep178, align 1, !tbaa !9
  store <4 x i8> %wide.load180, ptr %next.gep179, align 1, !tbaa !9
  %index.next181 = add nuw i64 %index177, 4       ; 2 uses
  %i.s = icmp eq i64 %index.next181, %n.vec175
  br i1 %i.s, label %vec.epilog.middle.block182, label %vec.epilog.vector.body176, !llvm.loop !200

vec.epilog.middle.block182:                       ; preds = %vec.epilog.vector.body176
  %cmp.n183 = icmp eq i64 %i.j, %n.vec175
  br i1 %cmp.n183, label %ZSTD_wildcopy.exit27, label %.lr.ph74.preheader

.lr.ph74.preheader:                               ; preds = %iter.check169, %vec.epilog.iter.check171, %vec.epilog.middle.block182
  %.05973.ph = phi ptr [ %2, %iter.check169 ], [ %i.l, %vec.epilog.iter.check171 ], [ %i.q, %vec.epilog.middle.block182 ]
  %.06072.ph = phi ptr [ %0, %iter.check169 ], [ %i.m, %vec.epilog.iter.check171 ], [ %i.r, %vec.epilog.middle.block182 ]
  br label %.lr.ph74

.lr.ph74:                                         ; preds = %.lr.ph74.preheader, %.lr.ph74
  %.05973 = phi ptr [ %i.t, %.lr.ph74 ], [ %.05973.ph, %.lr.ph74.preheader ] ; 2 uses
  %.06072 = phi ptr [ %i.v, %.lr.ph74 ], [ %.06072.ph, %.lr.ph74.preheader ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.05973, i64 1
  %i.u = load i8, ptr %.05973, align 1, !tbaa !9
  %i.v = getelementptr inbounds nuw i8, ptr %.06072, i64 1 ; 2 uses
  store i8 %i.u, ptr %.06072, align 1, !tbaa !9
  %i.w = icmp ult ptr %i.v, %i.e
  br i1 %i.w, label %.lr.ph74, label %ZSTD_wildcopy.exit27, !llvm.loop !201

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
  %.val31 = load i32, ptr %i.an, align 1
  store i32 %.val31, ptr %i.ao, align 1
  %i.ap = sext i32 %i.z to i64
  %i.aq = sub nsw i64 0, %i.ap
  %i.ar = getelementptr inbounds i8, ptr %i.an, i64 %i.aq
  br label %ZSTD_overlapCopy8.exit

bb.e:                                             ; preds = %bb.c
  %.val32 = load i64, ptr %2, align 1
  store i64 %.val32, ptr %0, align 1
  br label %ZSTD_overlapCopy8.exit

ZSTD_overlapCopy8.exit:                           ; preds = %bb.d, %bb.e
  %.4 = phi ptr [ %i.ar, %bb.d ], [ %2, %bb.e ]
  %i.as = getelementptr inbounds nuw i8, ptr %.4, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.au = add nsw i64 %3, -8
  br label %bb.f

bb.f:                                             ; preds = %ZSTD_overlapCopy8.exit, %bb.b
  %.161 = phi ptr [ %0, %bb.b ], [ %i.at, %ZSTD_overlapCopy8.exit ] ; 18 uses
  %.1 = phi ptr [ %2, %bb.b ], [ %i.as, %ZSTD_overlapCopy8.exit ] ; 15 uses
  %.0 = phi i64 [ %3, %bb.b ], [ %i.au, %ZSTD_overlapCopy8.exit ] ; 3 uses
  %.161118 = ptrtoint ptr %.161 to i64
  %.161115 = ptrtoaddr ptr %.161 to i64
  %.1116 = ptrtoaddr ptr %.1 to i64
  %.not19 = icmp ugt ptr %i.e, %1
  br i1 %.not19, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.av = ptrtoint ptr %.161 to i64               ; 5 uses
  %i.aw = ptrtoint ptr %.1 to i64                 ; 2 uses
  %i.ax = sub i64 %i.av, %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %.161, i64 %.0 ; 2 uses
  %5 = trunc nuw i32 %4 to i1
  %i.az = icmp slt i64 %i.ax, 16
  %or.cond.i21 = and i1 %i.az, %5
  br i1 %or.cond.i21, label %.preheader67.preheader, label %bb.h

.preheader67.preheader:                           ; preds = %bb.g
  %i.ba = add i64 %.0, %i.av
  %i.bb = add i64 %i.av, 8
  %umax = tail call i64 @llvm.umax.i64(i64 %i.ba, i64 %i.bb)
  %i.bc = xor i64 %i.av, -1
  %i.bd = add i64 %umax, %i.bc                    ; 2 uses
  %i.be = lshr i64 %i.bd, 3
  %i.bf = add nuw nsw i64 %i.be, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bd, 56
  %i.bg = sub i64 %i.av, %i.aw
  %diff.check = icmp ult i64 %i.bg, 32
  %or.cond186 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond186, label %.preheader67.preheader192, label %vector.ph

vector.ph:                                        ; preds = %.preheader67.preheader
  %n.vec = and i64 %i.bf, 4611686018427387900     ; 3 uses
  %i.bh = shl i64 %n.vec, 3                       ; 2 uses
  %i.bi = getelementptr i8, ptr %.161, i64 %i.bh
  %i.bj = getelementptr i8, ptr %.1, i64 %i.bh
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bk = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.161, i64 %i.bk ; 2 uses
  %next.gep92 = getelementptr i8, ptr %.1, i64 %i.bk ; 2 uses
  %i.bl = getelementptr i8, ptr %next.gep92, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep92, align 1
  %wide.load93 = load <2 x i64>, ptr %i.bl, align 1
  %i.bm = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 1
  store <2 x i64> %wide.load93, ptr %i.bm, align 1
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bn = icmp eq i64 %index.next, %n.vec
  br i1 %i.bn, label %middle.block, label %vector.body, !llvm.loop !202

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bf, %n.vec
  br i1 %cmp.n, label %ZSTD_wildcopy.exit27, label %.preheader67.preheader192

.preheader67.preheader192:                        ; preds = %.preheader67.preheader, %middle.block
  %.029.i25.ph = phi ptr [ %.161, %.preheader67.preheader ], [ %i.bi, %middle.block ]
  %.0.i26.ph = phi ptr [ %.1, %.preheader67.preheader ], [ %i.bj, %middle.block ]
  br label %.preheader67

.preheader67:                                     ; preds = %.preheader67.preheader192, %.preheader67
  %.029.i25 = phi ptr [ %i.bo, %.preheader67 ], [ %.029.i25.ph, %.preheader67.preheader192 ] ; 2 uses
  %.0.i26 = phi ptr [ %i.bp, %.preheader67 ], [ %.0.i26.ph, %.preheader67.preheader192 ] ; 2 uses
  %.0.i26.val = load i64, ptr %.0.i26, align 1
  store i64 %.0.i26.val, ptr %.029.i25, align 1
  %i.bo = getelementptr inbounds nuw i8, ptr %.029.i25, i64 8 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.0.i26, i64 8
  %i.bq = icmp ult ptr %i.bo, %i.ay
  br i1 %i.bq, label %.preheader67, label %ZSTD_wildcopy.exit27, !llvm.loop !203

bb.h:                                             ; preds = %bb.g
  %.val28 = load <2 x i64>, ptr %.1, align 1, !tbaa !9
  store <2 x i64> %.val28, ptr %.161, align 1, !tbaa !9
  %i.br = icmp samesign ult i64 %.0, 17
  br i1 %i.br, label %ZSTD_wildcopy.exit27, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bs = getelementptr inbounds nuw i8, ptr %.161, i64 16
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %bb.i
  %.130.i22 = phi ptr [ %i.bs, %bb.i ], [ %i.bv, %bb.j ] ; 3 uses
  %.pn.i23 = phi ptr [ %.1, %bb.i ], [ %i.bu, %bb.j ] ; 2 uses
  %.1.i24 = getelementptr inbounds nuw i8, ptr %.pn.i23, i64 16
  %.1.i24.val = load <2 x i64>, ptr %.1.i24, align 1, !tbaa !9
  store <2 x i64> %.1.i24.val, ptr %.130.i22, align 1, !tbaa !9
  %i.bt = getelementptr inbounds nuw i8, ptr %.130.i22, i64 16
  %i.bu = getelementptr inbounds nuw i8, ptr %.pn.i23, i64 32 ; 2 uses
  %.val = load <2 x i64>, ptr %i.bu, align 1, !tbaa !9
  store <2 x i64> %.val, ptr %i.bt, align 1, !tbaa !9
  %i.bv = getelementptr inbounds nuw i8, ptr %.130.i22, i64 32 ; 2 uses
  %i.bw = icmp ult ptr %i.bv, %i.ay
  br i1 %i.bw, label %bb.j, label %ZSTD_wildcopy.exit27, !llvm.loop !98

bb.k:                                             ; preds = %bb.f
  %.not20 = icmp ugt ptr %.161, %1
  br i1 %.not20, label %bb.p, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bx = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.by = ptrtoint ptr %.161 to i64               ; 5 uses
  %i.bz = sub i64 %i.bx, %i.by                    ; 3 uses
  %i.ca = ptrtoint ptr %.1 to i64                 ; 2 uses
  %i.cb = sub i64 %i.by, %i.ca
  %i.cc = getelementptr inbounds i8, ptr %.161, i64 %i.bz
  %6 = trunc nuw i32 %4 to i1
  %i.cd = icmp slt i64 %i.cb, 16
  %or.cond.i = and i1 %i.cd, %6
  br i1 %or.cond.i, label %.preheader65.preheader, label %bb.m

.preheader65.preheader:                           ; preds = %bb.l
  %i.ce = add i64 %i.by, 8
  %umax97 = tail call i64 @llvm.umax.i64(i64 %i.bx, i64 %i.ce)
  %i.cf = xor i64 %i.by, -1
  %i.cg = add i64 %umax97, %i.cf                  ; 2 uses
  %i.ch = lshr i64 %i.cg, 3
  %i.ci = add nuw nsw i64 %i.ch, 1                ; 2 uses
  %min.iters.check99 = icmp ult i64 %i.cg, 56
  %i.cj = sub i64 %i.by, %i.ca
  %diff.check96 = icmp ult i64 %i.cj, 32
  %or.cond187 = or i1 %min.iters.check99, %diff.check96
  br i1 %or.cond187, label %.preheader65.preheader190, label %vector.ph100

vector.ph100:                                     ; preds = %.preheader65.preheader
  %n.vec102 = and i64 %i.ci, 4611686018427387900  ; 3 uses
  %i.ck = shl i64 %n.vec102, 3                    ; 2 uses
  %i.cl = getelementptr i8, ptr %.161, i64 %i.ck
  %i.cm = getelementptr i8, ptr %.1, i64 %i.ck
  br label %vector.body103

vector.body103:                                   ; preds = %vector.body103, %vector.ph100
  %index104 = phi i64 [ 0, %vector.ph100 ], [ %index.next109, %vector.body103 ] ; 2 uses
  %i.cn = shl i64 %index104, 3                    ; 2 uses
  %next.gep105 = getelementptr i8, ptr %.161, i64 %i.cn ; 2 uses
  %next.gep106 = getelementptr i8, ptr %.1, i64 %i.cn ; 2 uses
  %i.co = getelementptr i8, ptr %next.gep106, i64 16
  %wide.load107 = load <2 x i64>, ptr %next.gep106, align 1
  %wide.load108 = load <2 x i64>, ptr %i.co, align 1
  %i.cp = getelementptr i8, ptr %next.gep105, i64 16
  store <2 x i64> %wide.load107, ptr %next.gep105, align 1
  store <2 x i64> %wide.load108, ptr %i.cp, align 1
  %index.next109 = add nuw i64 %index104, 4       ; 2 uses
  %i.cq = icmp eq i64 %index.next109, %n.vec102
  br i1 %i.cq, label %middle.block110, label %vector.body103, !llvm.loop !204

middle.block110:                                  ; preds = %vector.body103
  %cmp.n111 = icmp eq i64 %i.ci, %n.vec102
  br i1 %cmp.n111, label %ZSTD_wildcopy.exit, label %.preheader65.preheader190

.preheader65.preheader190:                        ; preds = %.preheader65.preheader, %middle.block110
  %.029.i.ph = phi ptr [ %.161, %.preheader65.preheader ], [ %i.cl, %middle.block110 ]
  %.0.i.ph = phi ptr [ %.1, %.preheader65.preheader ], [ %i.cm, %middle.block110 ]
  br label %.preheader65

.preheader65:                                     ; preds = %.preheader65.preheader190, %.preheader65
  %.029.i = phi ptr [ %i.cr, %.preheader65 ], [ %.029.i.ph, %.preheader65.preheader190 ] ; 2 uses
  %.0.i = phi ptr [ %i.cs, %.preheader65 ], [ %.0.i.ph, %.preheader65.preheader190 ] ; 2 uses
  %.0.i.val = load i64, ptr %.0.i, align 1
  store i64 %.0.i.val, ptr %.029.i, align 1
  %i.cr = getelementptr inbounds nuw i8, ptr %.029.i, i64 8 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.ct = icmp ult ptr %i.cr, %1
  br i1 %i.ct, label %.preheader65, label %ZSTD_wildcopy.exit, !llvm.loop !205

bb.m:                                             ; preds = %bb.l
  %.val30 = load <2 x i64>, ptr %.1, align 1, !tbaa !9
  store <2 x i64> %.val30, ptr %.161, align 1, !tbaa !9
  %i.cu = icmp slt i64 %i.bz, 17
  br i1 %i.cu, label %ZSTD_wildcopy.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cv = getelementptr inbounds nuw i8, ptr %.161, i64 16
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %bb.n
  %.130.i = phi ptr [ %i.cv, %bb.n ], [ %i.cy, %bb.o ] ; 3 uses
  %.pn.i = phi ptr [ %.1, %bb.n ], [ %i.cx, %bb.o ] ; 2 uses
  %.1.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 16
  %.1.i.val = load <2 x i64>, ptr %.1.i, align 1, !tbaa !9
  store <2 x i64> %.1.i.val, ptr %.130.i, align 1, !tbaa !9
  %i.cw = getelementptr inbounds nuw i8, ptr %.130.i, i64 16
  %i.cx = getelementptr inbounds nuw i8, ptr %.pn.i, i64 32 ; 2 uses
  %.val29 = load <2 x i64>, ptr %i.cx, align 1, !tbaa !9
  store <2 x i64> %.val29, ptr %i.cw, align 1, !tbaa !9
  %i.cy = getelementptr inbounds nuw i8, ptr %.130.i, i64 32 ; 2 uses
  %i.cz = icmp ult ptr %i.cy, %1
  br i1 %i.cz, label %bb.o, label %ZSTD_wildcopy.exit, !llvm.loop !98

ZSTD_wildcopy.exit:                               ; preds = %bb.o, %.preheader65, %middle.block110, %bb.m
  %i.da = getelementptr inbounds i8, ptr %.1, i64 %i.bz
  br label %bb.p

bb.p:                                             ; preds = %ZSTD_wildcopy.exit, %bb.k
  %.262 = phi ptr [ %.161, %bb.k ], [ %i.cc, %ZSTD_wildcopy.exit ] ; 6 uses
  %.2 = phi ptr [ %.1, %bb.k ], [ %i.da, %ZSTD_wildcopy.exit ] ; 5 uses
  %i.db = icmp ult ptr %.262, %i.e
  br i1 %i.db, label %iter.check, label %ZSTD_wildcopy.exit27

iter.check:                                       ; preds = %bb.p
  %i.dc = add i64 %3, %i.b
  %umax119 = tail call i64 @llvm.umax.i64(i64 %.161118, i64 %i.a)
  %i.dd = sub i64 %i.dc, %umax119                 ; 7 uses
  %min.iters.check121 = icmp ult i64 %i.dd, 4
  %i.de = sub i64 %.161115, %.1116
  %diff.check117 = icmp ult i64 %i.de, 32
  %or.cond188 = select i1 %min.iters.check121, i1 true, i1 %diff.check117
  br i1 %or.cond188, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check122 = icmp ult i64 %i.dd, 32
  br i1 %min.iters.check122, label %vec.epilog.ph, label %vector.ph123

vector.ph123:                                     ; preds = %vector.main.loop.iter.check
  %n.mod.vf124 = and i64 %i.dd, 28
  %n.vec125 = and i64 %i.dd, -32                  ; 5 uses
  %i.df = getelementptr i8, ptr %.2, i64 %n.vec125
  %i.dg = getelementptr i8, ptr %.262, i64 %n.vec125
  br label %vector.body126

vector.body126:                                   ; preds = %vector.body126, %vector.ph123
  %index127 = phi i64 [ 0, %vector.ph123 ], [ %index.next132, %vector.body126 ] ; 3 uses
  %next.gep128 = getelementptr i8, ptr %.2, i64 %index127 ; 2 uses
  %next.gep129 = getelementptr i8, ptr %.262, i64 %index127 ; 2 uses
  %i.dh = getelementptr i8, ptr %next.gep128, i64 16
  %wide.load130 = load <16 x i8>, ptr %next.gep128, align 1, !tbaa !9
  %wide.load131 = load <16 x i8>, ptr %i.dh, align 1, !tbaa !9
  %i.di = getelementptr i8, ptr %next.gep129, i64 16
  store <16 x i8> %wide.load130, ptr %next.gep129, align 1, !tbaa !9
  store <16 x i8> %wide.load131, ptr %i.di, align 1, !tbaa !9
  %index.next132 = add nuw i64 %index127, 32      ; 2 uses
  %i.dj = icmp eq i64 %index.next132, %n.vec125
  br i1 %i.dj, label %middle.block133, label %vector.body126, !llvm.loop !206

middle.block133:                                  ; preds = %vector.body126
  %cmp.n134 = icmp eq i64 %i.dd, %n.vec125
  br i1 %cmp.n134, label %ZSTD_wildcopy.exit27, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block133
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf124, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !95

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec125, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec138 = and i64 %i.dd, -4                   ; 4 uses
  %i.dk = getelementptr i8, ptr %.2, i64 %n.vec138
  %i.dl = getelementptr i8, ptr %.262, i64 %n.vec138
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index139 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next143, %vec.epilog.vector.body ] ; 3 uses
  %next.gep140 = getelementptr i8, ptr %.2, i64 %index139
  %next.gep141 = getelementptr i8, ptr %.262, i64 %index139
  %wide.load142 = load <4 x i8>, ptr %next.gep140, align 1, !tbaa !9
  store <4 x i8> %wide.load142, ptr %next.gep141, align 1, !tbaa !9
  %index.next143 = add nuw i64 %index139, 4       ; 2 uses
  %i.dm = icmp eq i64 %index.next143, %n.vec138
  br i1 %i.dm, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !207

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n144 = icmp eq i64 %i.dd, %n.vec138
  br i1 %cmp.n144, label %ZSTD_wildcopy.exit27, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.371.ph = phi ptr [ %.2, %iter.check ], [ %i.df, %vec.epilog.iter.check ], [ %i.dk, %vec.epilog.middle.block ]
  %.36370.ph = phi ptr [ %.262, %iter.check ], [ %i.dg, %vec.epilog.iter.check ], [ %i.dl, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.371 = phi ptr [ %i.dn, %.lr.ph ], [ %.371.ph, %.lr.ph.preheader ] ; 2 uses
  %.36370 = phi ptr [ %i.dp, %.lr.ph ], [ %.36370.ph, %.lr.ph.preheader ] ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.371, i64 1
  %i.do = load i8, ptr %.371, align 1, !tbaa !9
  %i.dp = getelementptr inbounds nuw i8, ptr %.36370, i64 1 ; 2 uses
  store i8 %i.do, ptr %.36370, align 1, !tbaa !9
  %i.dq = icmp ult ptr %i.dp, %i.e
  br i1 %i.dq, label %.lr.ph, label %ZSTD_wildcopy.exit27, !llvm.loop !208

ZSTD_wildcopy.exit27:                             ; preds = %bb.j, %.preheader67, %.lr.ph, %.lr.ph74, %middle.block, %middle.block133, %vec.epilog.middle.block, %middle.block164, %vec.epilog.middle.block182, %bb.p, %.preheader, %bb.h
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i64 @ZSTD_execSequenceEndSplitLitBuffer(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly byval(%struct.seq_t) align 8 captures(none) %3, ptr nofree noundef nonnull captures(none) %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr nofree noundef readonly captures(none) %8) unnamed_addr #12 {
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
