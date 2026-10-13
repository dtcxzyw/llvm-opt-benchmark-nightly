Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openzl/original/zstd_decompress_block?download=true
inline.NumInlined: 579
inline.NumDeleted: 38
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 23
begin_hunk_0_@ZSTD_execSequenceEnd:bb.a

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.371.i = phi ptr [ %i.br, %.lr.ph.i ], [ %.371.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.36370.i = phi ptr [ %i.bt, %.lr.ph.i ], [ %.36370.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.371.i, i64 1
  %i.bs = load i8, ptr %.371.i, align 1, !tbaa !28
  %i.bt = getelementptr inbounds nuw i8, ptr %.36370.i, i64 1 ; 2 uses
  store i8 %i.bs, ptr %.36370.i, align 1, !tbaa !28
  %i.bu = icmp ult ptr %i.bt, %i.b
  br i1 %i.bu, label %.lr.ph.i, label %ZSTD_safecopy.exit, !llvm.loop !172

ZSTD_safecopy.exit:                               ; preds = %bb.g, %.lr.ph.i, %.lr.ph74.i, %middle.block, %vec.epilog.middle.block, %middle.block89, %vec.epilog.middle.block105, %.preheader.i, %bb.e, %bb.l
  store ptr %i.g, ptr %3, align 8, !tbaa !49
  %i.bv = ptrtoint ptr %i.b to i64                ; 2 uses
  %i.bw = ptrtoint ptr %5 to i64                  ; 2 uses
  %i.bx = sub i64 %i.bv, %i.bw
  %i.by = icmp ugt i64 %i.i, %i.bx
  br i1 %i.by, label %bb.m, label %bb.q

bb.m:                                             ; preds = %ZSTD_safecopy.exit
  %i.bz = ptrtoint ptr %6 to i64
  %i.ca = sub i64 %i.bv, %i.bz
  %i.cb = icmp ugt i64 %i.i, %i.ca
  br i1 %i.cb, label %bb.r, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cc = ptrtoint ptr %i.k to i64
  %.neg = sub i64 %i.cc, %i.bw                    ; 3 uses
  %i.cd = getelementptr inbounds i8, ptr %7, i64 %.neg ; 2 uses
  %i.ce = add nsw i64 %.neg, %i.d                 ; 2 uses
  %.not = icmp sgt i64 %i.ce, 0
  br i1 %.not, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.b, ptr align 1 %i.cd, i64 %i.d, i1 false)
  br label %bb.r

bb.p:                                             ; preds = %bb.n
  %gepdiff = sub nsw i64 0, %.neg                 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.b, ptr align 1 %i.cd, i64 %gepdiff, i1 false)
  %i.cf = getelementptr inbounds nuw i8, ptr %i.b, i64 %gepdiff
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %ZSTD_safecopy.exit
  %i.cg = phi i64 [ %i.ce, %bb.p ], [ %i.d, %ZSTD_safecopy.exit ]
  %.041 = phi ptr [ %i.cf, %bb.p ], [ %i.b, %ZSTD_safecopy.exit ]
  %.040 = phi ptr [ %5, %bb.p ], [ %i.k, %ZSTD_safecopy.exit ]
  tail call fastcc void @ZSTD_safecopy(ptr noundef %.041, ptr noundef nonnull %i.l, ptr noundef %.040, i64 noundef %i.cg, i32 noundef 1)
  br label %bb.r

bb.r:                                             ; preds = %bb.m, %bb.b, %bb.a, %bb.q, %bb.o
  %.0 = phi i64 [ %i.e, %bb.q ], [ -70, %bb.a ], [ -20, %bb.b ], [ %i.e, %bb.o ], [ -20, %bb.m ]
  ret i64 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @ZSTD_safecopy(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef range(i32 0, 2) %4) unnamed_addr #13 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 5 uses
  %i.c = ptrtoint ptr %2 to i64
  %i.d = sub i64 %i.b, %i.c                       ; 4 uses
  %i.e = getelementptr inbounds i8, ptr %0, i64 %3 ; 4 uses
  %i.f = icmp slt i64 %3, 8
  br i1 %i.f, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %i.g = icmp sgt i64 %3, 0
  br i1 %i.g, label %iter.check127, label %ZSTD_wildcopy.exit27

iter.check127:                                    ; preds = %.preheader
  %i.h = add i64 %3, %i.b
  %i.i = add i64 %i.b, 1
  %umax110 = tail call i64 @llvm.umax.i64(i64 %i.h, i64 %i.i)
  %i.j = sub i64 %umax110, %i.b                   ; 7 uses
  %min.iters.check111 = icmp ult i64 %i.j, 8
  %i.k = add i64 %i.d, -1
  %diff.check109 = icmp ult i64 %i.k, 31
  %or.cond = or i1 %min.iters.check111, %diff.check109
  br i1 %or.cond, label %.lr.ph74.preheader, label %vector.main.loop.iter.check112

vector.main.loop.iter.check112:                   ; preds = %iter.check127
  %min.iters.check113 = icmp ult i64 %i.j, 32
  br i1 %min.iters.check113, label %vec.epilog.ph131, label %vector.ph114

vector.ph114:                                     ; preds = %vector.main.loop.iter.check112
  %i.l = and i64 %i.j, 24
  %n.vec115 = and i64 %i.j, -32                   ; 5 uses
  %i.m = getelementptr i8, ptr %2, i64 %n.vec115
  %i.n = getelementptr i8, ptr %0, i64 %n.vec115
  br label %vector.body116

vector.body116:                                   ; preds = %vector.ph114, %vector.body116
  %index117 = phi i64 [ 0, %vector.ph114 ], [ %index.next122, %vector.body116 ] ; 3 uses
  %next.gep118 = getelementptr i8, ptr %2, i64 %index117 ; 2 uses
  %next.gep119 = getelementptr i8, ptr %0, i64 %index117 ; 2 uses
  %i.o = getelementptr i8, ptr %next.gep118, i64 16
  %wide.load120 = load <16 x i8>, ptr %next.gep118, align 1, !tbaa !28
  %wide.load121 = load <16 x i8>, ptr %i.o, align 1, !tbaa !28
  %i.p = getelementptr i8, ptr %next.gep119, i64 16
  store <16 x i8> %wide.load120, ptr %next.gep119, align 1, !tbaa !28
  store <16 x i8> %wide.load121, ptr %i.p, align 1, !tbaa !28
  %index.next122 = add nuw i64 %index117, 32      ; 2 uses
  %i.q = icmp eq i64 %index.next122, %n.vec115
  br i1 %i.q, label %middle.block123, label %vector.body116, !llvm.loop !173

middle.block123:                                  ; preds = %vector.body116
  %cmp.n124 = icmp eq i64 %i.j, %n.vec115
  br i1 %cmp.n124, label %ZSTD_wildcopy.exit27, label %vec.epilog.iter.check129

vec.epilog.iter.check129:                         ; preds = %middle.block123
  %min.epilog.iters.check130 = icmp eq i64 %i.l, 0
  br i1 %min.epilog.iters.check130, label %.lr.ph74.preheader, label %vec.epilog.ph131, !prof !86

vec.epilog.ph131:                                 ; preds = %vector.main.loop.iter.check112, %vec.epilog.iter.check129
  %vec.epilog.resume.val125 = phi i64 [ %n.vec115, %vec.epilog.iter.check129 ], [ 0, %vector.main.loop.iter.check112 ]
  %n.vec132 = and i64 %i.j, -8                    ; 4 uses
  %i.r = getelementptr i8, ptr %2, i64 %n.vec132
  %i.s = getelementptr i8, ptr %0, i64 %n.vec132
  br label %vec.epilog.vector.body133

vec.epilog.vector.body133:                        ; preds = %vec.epilog.vector.body133, %vec.epilog.ph131
  %index134 = phi i64 [ %vec.epilog.resume.val125, %vec.epilog.ph131 ], [ %index.next138, %vec.epilog.vector.body133 ] ; 3 uses
  %next.gep135 = getelementptr i8, ptr %2, i64 %index134
  %next.gep136 = getelementptr i8, ptr %0, i64 %index134
  %wide.load137 = load <8 x i8>, ptr %next.gep135, align 1, !tbaa !28
  store <8 x i8> %wide.load137, ptr %next.gep136, align 1, !tbaa !28
  %index.next138 = add nuw i64 %index134, 8       ; 2 uses
  %i.t = icmp eq i64 %index.next138, %n.vec132
  br i1 %i.t, label %vec.epilog.middle.block139, label %vec.epilog.vector.body133, !llvm.loop !174

vec.epilog.middle.block139:                       ; preds = %vec.epilog.vector.body133
  %cmp.n140 = icmp eq i64 %i.j, %n.vec132
  br i1 %cmp.n140, label %ZSTD_wildcopy.exit27, label %.lr.ph74.preheader

.lr.ph74.preheader:                               ; preds = %iter.check127, %vec.epilog.iter.check129, %vec.epilog.middle.block139
  %.05973.ph = phi ptr [ %2, %iter.check127 ], [ %i.m, %vec.epilog.iter.check129 ], [ %i.r, %vec.epilog.middle.block139 ]
  %.06072.ph = phi ptr [ %0, %iter.check127 ], [ %i.n, %vec.epilog.iter.check129 ], [ %i.s, %vec.epilog.middle.block139 ]
  br label %.lr.ph74

.lr.ph74:                                         ; preds = %.lr.ph74.preheader, %.lr.ph74
  %.05973 = phi ptr [ %i.u, %.lr.ph74 ], [ %.05973.ph, %.lr.ph74.preheader ] ; 2 uses
  %.06072 = phi ptr [ %i.w, %.lr.ph74 ], [ %.06072.ph, %.lr.ph74.preheader ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.05973, i64 1
  %i.v = load i8, ptr %.05973, align 1, !tbaa !28
  %i.w = getelementptr inbounds nuw i8, ptr %.06072, i64 1 ; 2 uses
  store i8 %i.v, ptr %.06072, align 1, !tbaa !28
  %i.x = icmp ult ptr %i.w, %i.e
  br i1 %i.x, label %.lr.ph74, label %ZSTD_wildcopy.exit27, !llvm.loop !175

bb.b:                                             ; preds = %bb.a
  %.not = icmp ne i32 %4, 0                       ; 3 uses
  br i1 %.not, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.y = icmp ult i64 %i.d, 8
  br i1 %i.y, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_overlapCopy8.dec64table, i64 %i.d
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !43
  %i.ab = load i8, ptr %2, align 1, !tbaa !28
  store i8 %i.ab, ptr %0, align 1, !tbaa !28
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !28
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.ad, ptr %i.ae, align 1, !tbaa !28
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !28
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.ag, ptr %i.ah, align 1, !tbaa !28
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !28
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 3
  store i8 %i.aj, ptr %i.ak, align 1, !tbaa !28
  %i.al = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_overlapCopy8.dec32table, i64 %i.d
  %i.am = load i32, ptr %i.al, align 4, !tbaa !43
  %i.an = zext i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 %i.an ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.val31 = load i32, ptr %i.ao, align 1
  store i32 %.val31, ptr %i.ap, align 1
  %i.aq = sext i32 %i.aa to i64
  %i.ar = sub nsw i64 0, %i.aq
  %i.as = getelementptr inbounds i8, ptr %i.ao, i64 %i.ar
  br label %ZSTD_overlapCopy8.exit

bb.e:                                             ; preds = %bb.c
  %.val32 = load i64, ptr %2, align 1
  store i64 %.val32, ptr %0, align 1
  br label %ZSTD_overlapCopy8.exit

ZSTD_overlapCopy8.exit:                           ; preds = %bb.d, %bb.e
  %.4 = phi ptr [ %i.as, %bb.d ], [ %2, %bb.e ]
  %i.at = getelementptr inbounds nuw i8, ptr %.4, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.av = add nsw i64 %3, -8
  br label %bb.f

bb.f:                                             ; preds = %ZSTD_overlapCopy8.exit, %bb.b
  %.161 = phi ptr [ %0, %bb.b ], [ %i.au, %ZSTD_overlapCopy8.exit ] ; 14 uses
  %.1 = phi ptr [ %2, %bb.b ], [ %i.at, %ZSTD_overlapCopy8.exit ] ; 11 uses
  %.0 = phi i64 [ %3, %bb.b ], [ %i.av, %ZSTD_overlapCopy8.exit ] ; 2 uses
  %.194 = ptrtoaddr ptr %.161 to i64
  %.not19 = icmp ugt ptr %i.e, %1
  br i1 %.not19, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aw = ptrtoint ptr %.161 to i64
  %i.ax = ptrtoint ptr %.1 to i64
  %i.ay = sub i64 %i.aw, %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %.161, i64 %.0 ; 2 uses
  %i.ba = icmp slt i64 %i.ay, 16
  %or.cond.i21 = and i1 %.not, %i.ba
  br i1 %or.cond.i21, label %.preheader67, label %bb.h

.preheader67:                                     ; preds = %bb.g, %.preheader67
  %.029.i25 = phi ptr [ %i.bc, %.preheader67 ], [ %.1, %bb.g ] ; 2 uses
  %.0.i26 = phi ptr [ %i.bb, %.preheader67 ], [ %.161, %bb.g ] ; 2 uses
  %.029.i25.val = load i64, ptr %.029.i25, align 1
  store i64 %.029.i25.val, ptr %.0.i26, align 1
  %i.bb = getelementptr inbounds nuw i8, ptr %.0.i26, i64 8 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.029.i25, i64 8
  %i.bd = icmp ult ptr %i.bb, %i.az
  br i1 %i.bd, label %.preheader67, label %ZSTD_wildcopy.exit27, !llvm.loop !9

bb.h:                                             ; preds = %bb.g
  %.val28 = load <2 x i64>, ptr %.1, align 1, !tbaa !28
  store <2 x i64> %.val28, ptr %.161, align 1, !tbaa !28
  %i.be = icmp samesign ult i64 %.0, 17
  br i1 %i.be, label %ZSTD_wildcopy.exit27, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bf = getelementptr inbounds nuw i8, ptr %.161, i64 16
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %bb.i
  %.pn.i22 = phi ptr [ %.1, %bb.i ], [ %i.bh, %bb.j ] ; 2 uses
  %.1.i23 = phi ptr [ %i.bf, %bb.i ], [ %i.bi, %bb.j ] ; 3 uses
  %.130.i24 = getelementptr inbounds nuw i8, ptr %.pn.i22, i64 16
  %.130.i24.val = load <2 x i64>, ptr %.130.i24, align 1, !tbaa !28
  store <2 x i64> %.130.i24.val, ptr %.1.i23, align 1, !tbaa !28
  %i.bg = getelementptr inbounds nuw i8, ptr %.1.i23, i64 16
  %i.bh = getelementptr inbounds nuw i8, ptr %.pn.i22, i64 32 ; 2 uses
  %.val = load <2 x i64>, ptr %i.bh, align 1, !tbaa !28
  store <2 x i64> %.val, ptr %i.bg, align 1, !tbaa !28
  %i.bi = getelementptr inbounds nuw i8, ptr %.1.i23, i64 32 ; 2 uses
  %i.bj = icmp ult ptr %i.bi, %i.az
  br i1 %i.bj, label %bb.j, label %ZSTD_wildcopy.exit27, !llvm.loop !8

bb.k:                                             ; preds = %bb.f
  %.not20 = icmp ugt ptr %.161, %1
  br i1 %.not20, label %bb.p, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bk = ptrtoint ptr %1 to i64
  %i.bl = ptrtoint ptr %.161 to i64               ; 2 uses
  %i.bm = sub i64 %i.bk, %i.bl                    ; 3 uses
  %i.bn = ptrtoint ptr %.1 to i64
  %i.bo = sub i64 %i.bl, %i.bn
  %i.bp = getelementptr inbounds i8, ptr %.161, i64 %i.bm
  %i.bq = icmp slt i64 %i.bo, 16
  %or.cond.i = and i1 %.not, %i.bq
  br i1 %or.cond.i, label %.preheader65, label %bb.m

.preheader65:                                     ; preds = %bb.l, %.preheader65
  %.029.i = phi ptr [ %i.bs, %.preheader65 ], [ %.1, %bb.l ] ; 2 uses
  %.0.i = phi ptr [ %i.br, %.preheader65 ], [ %.161, %bb.l ] ; 2 uses
  %.029.i.val = load i64, ptr %.029.i, align 1
  store i64 %.029.i.val, ptr %.0.i, align 1
  %i.br = getelementptr inbounds nuw i8, ptr %.0.i, i64 8 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.029.i, i64 8
  %i.bt = icmp ult ptr %i.br, %1
  br i1 %i.bt, label %.preheader65, label %ZSTD_wildcopy.exit, !llvm.loop !9

bb.m:                                             ; preds = %bb.l
  %.val30 = load <2 x i64>, ptr %.1, align 1, !tbaa !28
  store <2 x i64> %.val30, ptr %.161, align 1, !tbaa !28
  %i.bu = icmp slt i64 %i.bm, 17
  br i1 %i.bu, label %ZSTD_wildcopy.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bv = getelementptr inbounds nuw i8, ptr %.161, i64 16
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %bb.n
  %.pn.i = phi ptr [ %.1, %bb.n ], [ %i.bx, %bb.o ] ; 2 uses
  %.1.i = phi ptr [ %i.bv, %bb.n ], [ %i.by, %bb.o ] ; 3 uses
  %.130.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 16
  %.130.i.val = load <2 x i64>, ptr %.130.i, align 1, !tbaa !28
  store <2 x i64> %.130.i.val, ptr %.1.i, align 1, !tbaa !28
  %i.bw = getelementptr inbounds nuw i8, ptr %.1.i, i64 16
  %i.bx = getelementptr inbounds nuw i8, ptr %.pn.i, i64 32 ; 2 uses
  %.val29 = load <2 x i64>, ptr %i.bx, align 1, !tbaa !28
  store <2 x i64> %.val29, ptr %i.bw, align 1, !tbaa !28
  %i.by = getelementptr inbounds nuw i8, ptr %.1.i, i64 32 ; 2 uses
  %i.bz = icmp ult ptr %i.by, %1
  br i1 %i.bz, label %bb.o, label %ZSTD_wildcopy.exit, !llvm.loop !8

ZSTD_wildcopy.exit:                               ; preds = %bb.o, %.preheader65, %bb.m
  %i.ca = getelementptr inbounds i8, ptr %.1, i64 %i.bm
  br label %bb.p

bb.p:                                             ; preds = %ZSTD_wildcopy.exit, %bb.k
  %.262 = phi ptr [ %.161, %bb.k ], [ %i.bp, %ZSTD_wildcopy.exit ] ; 6 uses
  %.2 = phi ptr [ %.1, %bb.k ], [ %i.ca, %ZSTD_wildcopy.exit ] ; 5 uses
  %i.cb = icmp ult ptr %.262, %i.e
  br i1 %i.cb, label %iter.check, label %ZSTD_wildcopy.exit27

iter.check:                                       ; preds = %bb.p
  %i.cc = add i64 %3, %i.b
  %umax = tail call i64 @llvm.umax.i64(i64 %.194, i64 %i.a)
  %i.cd = sub i64 %i.cc, %umax                    ; 7 uses
  %min.iters.check = icmp ult i64 %i.cd, 8
  %5 = ptrtoaddr ptr %.161 to i64
  %6 = ptrtoaddr ptr %.1 to i64
  %i.ce = sub i64 %6, %5
  %diff.check = icmp ugt i64 %i.ce, -32
  %or.cond143 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond143, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check95 = icmp ult i64 %i.cd, 32
  br i1 %min.iters.check95, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.cf = and i64 %i.cd, 24
  %n.vec = and i64 %i.cd, -32                     ; 5 uses
  %i.cg = getelementptr i8, ptr %.2, i64 %n.vec
  %i.ch = getelementptr i8, ptr %.262, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.2, i64 %index ; 2 uses
  %next.gep96 = getelementptr i8, ptr %.262, i64 %index ; 2 uses
  %i.ci = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !28
  %wide.load97 = load <16 x i8>, ptr %i.ci, align 1, !tbaa !28
  %i.cj = getelementptr i8, ptr %next.gep96, i64 16
  store <16 x i8> %wide.load, ptr %next.gep96, align 1, !tbaa !28
  store <16 x i8> %wide.load97, ptr %i.cj, align 1, !tbaa !28
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ck = icmp eq i64 %index.next, %n.vec
  br i1 %i.ck, label %middle.block, label %vector.body, !llvm.loop !176

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cd, %n.vec
  br i1 %cmp.n, label %ZSTD_wildcopy.exit27, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.cf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !86

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec99 = and i64 %i.cd, -8                    ; 4 uses
  %i.cl = getelementptr i8, ptr %.2, i64 %n.vec99
  %i.cm = getelementptr i8, ptr %.262, i64 %n.vec99
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index100 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next104, %vec.epilog.vector.body ] ; 3 uses
  %next.gep101 = getelementptr i8, ptr %.2, i64 %index100
  %next.gep102 = getelementptr i8, ptr %.262, i64 %index100
  %wide.load103 = load <8 x i8>, ptr %next.gep101, align 1, !tbaa !28
  store <8 x i8> %wide.load103, ptr %next.gep102, align 1, !tbaa !28
  %index.next104 = add nuw i64 %index100, 8       ; 2 uses
  %i.cn = icmp eq i64 %index.next104, %n.vec99
  br i1 %i.cn, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !177

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n105 = icmp eq i64 %i.cd, %n.vec99
  br i1 %cmp.n105, label %ZSTD_wildcopy.exit27, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.371.ph = phi ptr [ %.2, %iter.check ], [ %i.cg, %vec.epilog.iter.check ], [ %i.cl, %vec.epilog.middle.block ]
  %.36370.ph = phi ptr [ %.262, %iter.check ], [ %i.ch, %vec.epilog.iter.check ], [ %i.cm, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.371 = phi ptr [ %i.co, %.lr.ph ], [ %.371.ph, %.lr.ph.preheader ] ; 2 uses
  %.36370 = phi ptr [ %i.cq, %.lr.ph ], [ %.36370.ph, %.lr.ph.preheader ] ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.371, i64 1
  %i.cp = load i8, ptr %.371, align 1, !tbaa !28
  %i.cq = getelementptr inbounds nuw i8, ptr %.36370, i64 1 ; 2 uses
  store i8 %i.cp, ptr %.36370, align 1, !tbaa !28
  %i.cr = icmp ult ptr %i.cq, %i.e
  br i1 %i.cr, label %.lr.ph, label %ZSTD_wildcopy.exit27, !llvm.loop !178

ZSTD_wildcopy.exit27:                             ; preds = %bb.j, %.preheader67, %.lr.ph, %.lr.ph74, %middle.block, %vec.epilog.middle.block, %middle.block123, %vec.epilog.middle.block139, %bb.p, %.preheader, %bb.h
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i64 @ZSTD_execSequenceEndSplitLitBuffer(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly byval(%struct.seq_t) align 8 captures(none) %3, ptr nofree noundef nonnull captures(none) %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr nofree noundef readonly captures(none) %8) unnamed_addr #12 {
bb.a:
  %i.a = load i64, ptr %3, align 8, !tbaa !85     ; 12 uses
  %i.b = getelementptr inbounds i8, ptr %0, i64 %i.a ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !89   ; 4 uses
  %i.e = add i64 %i.d, %i.a                       ; 3 uses
  %i.f = load ptr, ptr %4, align 8, !tbaa !49     ; 12 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.a ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !101  ; 3 uses
  %i.j = sub i64 0, %i.i
  %i.k = getelementptr inbounds i8, ptr %i.b, i64 %i.j ; 2 uses
  %i.l = ptrtoint ptr %1 to i64
  %i.m = ptrtoint ptr %0 to i64                   ; 7 uses
  %i.n = sub i64 %i.l, %i.m
  %i.o = icmp ugt i64 %i.e, %i.n
  br i1 %i.o, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = ptrtoint ptr %5 to i64
  %i.q = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.r = sub i64 %i.p, %i.q
  %i.s = icmp ugt i64 %i.a, %i.r
  br i1 %i.s, label %bb.n, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = icmp ugt ptr %0, %i.f
  %i.u = icmp ult ptr %0, %i.g
  %or.cond = select i1 %i.t, i1 %i.u, i1 false
  br i1 %or.cond, label %bb.n, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = sub i64 %i.m, %i.q                       ; 3 uses
  %i.w = icmp slt i64 %i.a, 8
  %i.x = icmp sgt i64 %i.v, -8
  %or.cond.i = or i1 %i.w, %i.x
  br i1 %or.cond.i, label %.preheader.i, label %bb.e

.preheader.i:                                     ; preds = %bb.d
  %i.y = icmp sgt i64 %i.a, 0
  br i1 %i.y, label %iter.check89, label %ZSTD_safecopyDstBeforeSrc.exit

iter.check89:                                     ; preds = %.preheader.i
  %i.z = add i64 %i.a, %i.m
  %i.aa = add i64 %i.m, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.z, i64 %i.aa)
  %i.ab = sub i64 %umax, %i.m                     ; 7 uses
  %min.iters.check73 = icmp ult i64 %i.ab, 8
  %i.ac = add i64 %i.v, -1
  %diff.check72 = icmp ult i64 %i.ac, 31
  %or.cond105 = or i1 %min.iters.check73, %diff.check72
  br i1 %or.cond105, label %.lr.ph41.i.preheader, label %vector.main.loop.iter.check74

vector.main.loop.iter.check74:                    ; preds = %iter.check89
  %min.iters.check75 = icmp ult i64 %i.ab, 32
  br i1 %min.iters.check75, label %vec.epilog.ph93, label %vector.ph76

vector.ph76:                                      ; preds = %vector.main.loop.iter.check74
  %i.ad = and i64 %i.ab, 24
  %n.vec77 = and i64 %i.ab, -32                   ; 5 uses
  %i.ae = getelementptr i8, ptr %0, i64 %n.vec77
  %i.af = getelementptr i8, ptr %i.f, i64 %n.vec77
  br label %vector.body78

vector.body78:                                    ; preds = %vector.ph76, %vector.body78
  %index79 = phi i64 [ 0, %vector.ph76 ], [ %index.next84, %vector.body78 ] ; 3 uses
  %next.gep80 = getelementptr i8, ptr %0, i64 %index79 ; 2 uses
  %next.gep81 = getelementptr i8, ptr %i.f, i64 %index79 ; 2 uses
  %i.ag = getelementptr i8, ptr %next.gep81, i64 16
  %wide.load82 = load <16 x i8>, ptr %next.gep81, align 1, !tbaa !28
  %wide.load83 = load <16 x i8>, ptr %i.ag, align 1, !tbaa !28
  %i.ah = getelementptr i8, ptr %next.gep80, i64 16
  store <16 x i8> %wide.load82, ptr %next.gep80, align 1, !tbaa !28
  store <16 x i8> %wide.load83, ptr %i.ah, align 1, !tbaa !28
  %index.next84 = add nuw i64 %index79, 32        ; 2 uses
  %i.ai = icmp eq i64 %index.next84, %n.vec77
  br i1 %i.ai, label %middle.block85, label %vector.body78, !llvm.loop !179

middle.block85:                                   ; preds = %vector.body78
  %cmp.n86 = icmp eq i64 %i.ab, %n.vec77
  br i1 %cmp.n86, label %ZSTD_safecopyDstBeforeSrc.exit, label %vec.epilog.iter.check91

vec.epilog.iter.check91:                          ; preds = %middle.block85
  %min.epilog.iters.check92 = icmp eq i64 %i.ad, 0
  br i1 %min.epilog.iters.check92, label %.lr.ph41.i.preheader, label %vec.epilog.ph93, !prof !86

vec.epilog.ph93:                                  ; preds = %vector.main.loop.iter.check74, %vec.epilog.iter.check91
  %vec.epilog.resume.val87 = phi i64 [ %n.vec77, %vec.epilog.iter.check91 ], [ 0, %vector.main.loop.iter.check74 ]
  %n.vec94 = and i64 %i.ab, -8                    ; 4 uses
  %i.aj = getelementptr i8, ptr %0, i64 %n.vec94
  %i.ak = getelementptr i8, ptr %i.f, i64 %n.vec94
  br label %vec.epilog.vector.body95

vec.epilog.vector.body95:                         ; preds = %vec.epilog.vector.body95, %vec.epilog.ph93
  %index96 = phi i64 [ %vec.epilog.resume.val87, %vec.epilog.ph93 ], [ %index.next100, %vec.epilog.vector.body95 ] ; 3 uses
  %next.gep97 = getelementptr i8, ptr %0, i64 %index96
  %next.gep98 = getelementptr i8, ptr %i.f, i64 %index96
  %wide.load99 = load <8 x i8>, ptr %next.gep98, align 1, !tbaa !28
  store <8 x i8> %wide.load99, ptr %next.gep97, align 1, !tbaa !28
  %index.next100 = add nuw i64 %index96, 8        ; 2 uses
  %i.al = icmp eq i64 %index.next100, %n.vec94
  br i1 %i.al, label %vec.epilog.middle.block101, label %vec.epilog.vector.body95, !llvm.loop !180

vec.epilog.middle.block101:                       ; preds = %vec.epilog.vector.body95
  %cmp.n102 = icmp eq i64 %i.ab, %n.vec94
  br i1 %cmp.n102, label %ZSTD_safecopyDstBeforeSrc.exit, label %.lr.ph41.i.preheader

.lr.ph41.i.preheader:                             ; preds = %iter.check89, %vec.epilog.iter.check91, %vec.epilog.middle.block101
  %.040.i.ph = phi ptr [ %0, %iter.check89 ], [ %i.ae, %vec.epilog.iter.check91 ], [ %i.aj, %vec.epilog.middle.block101 ]
  %.02939.i.ph = phi ptr [ %i.f, %iter.check89 ], [ %i.af, %vec.epilog.iter.check91 ], [ %i.ak, %vec.epilog.middle.block101 ]
  br label %.lr.ph41.i

.lr.ph41.i:                                       ; preds = %.lr.ph41.i.preheader, %.lr.ph41.i
  %.040.i = phi ptr [ %i.ao, %.lr.ph41.i ], [ %.040.i.ph, %.lr.ph41.i.preheader ] ; 2 uses
  %.02939.i = phi ptr [ %i.am, %.lr.ph41.i ], [ %.02939.i.ph, %.lr.ph41.i.preheader ] ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.02939.i, i64 1
  %i.an = load i8, ptr %.02939.i, align 1, !tbaa !28
  %i.ao = getelementptr inbounds nuw i8, ptr %.040.i, i64 1 ; 2 uses
  store i8 %i.an, ptr %.040.i, align 1, !tbaa !28
  %i.ap = icmp ult ptr %i.ao, %i.b
  br i1 %i.ap, label %.lr.ph41.i, label %ZSTD_safecopyDstBeforeSrc.exit, !llvm.loop !181
end_hunk_0
