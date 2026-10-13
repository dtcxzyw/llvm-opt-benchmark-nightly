Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zstd/original/zstd_decompress_block?download=true
inline.NumInlined: 585
inline.NumDeleted: 38
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 23
begin_hunk_0_@ZSTD_execSequenceEnd:bb.a
  %.36370.i = phi ptr [ %i.bs, %.lr.ph.i ], [ %.36370.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.371.i, i64 1
  %i.br = load i8, ptr %.371.i, align 1, !tbaa !25
  %i.bs = getelementptr inbounds nuw i8, ptr %.36370.i, i64 1 ; 2 uses
  store i8 %i.br, ptr %.36370.i, align 1, !tbaa !25
  %i.bt = icmp ult ptr %i.bs, %i.b
  br i1 %i.bt, label %.lr.ph.i, label %ZSTD_safecopy.exit, !llvm.loop !169

ZSTD_safecopy.exit:                               ; preds = %bb.g, %.lr.ph.i, %.lr.ph74.i, %middle.block, %vec.epilog.middle.block, %middle.block89, %vec.epilog.middle.block105, %.preheader.i, %bb.e, %bb.l
  store ptr %i.g, ptr %3, align 8, !tbaa !46
  %i.bu = ptrtoint ptr %i.b to i64                ; 2 uses
  %i.bv = ptrtoint ptr %5 to i64                  ; 2 uses
  %i.bw = sub i64 %i.bu, %i.bv
  %i.bx = icmp ugt i64 %i.i, %i.bw
  br i1 %i.bx, label %bb.m, label %bb.q

bb.m:                                             ; preds = %ZSTD_safecopy.exit
  %i.by = ptrtoint ptr %6 to i64
  %i.bz = sub i64 %i.bu, %i.by
  %i.ca = icmp ugt i64 %i.i, %i.bz
  br i1 %i.ca, label %bb.r, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cb = ptrtoint ptr %i.k to i64
  %.neg = sub i64 %i.cb, %i.bv                    ; 3 uses
  %i.cc = getelementptr inbounds i8, ptr %7, i64 %.neg ; 2 uses
  %i.cd = add nsw i64 %.neg, %i.d                 ; 2 uses
  %.not = icmp sgt i64 %i.cd, 0
  br i1 %.not, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.b, ptr align 1 %i.cc, i64 %i.d, i1 false)
  br label %bb.r

bb.p:                                             ; preds = %bb.n
  %gepdiff = sub nsw i64 0, %.neg                 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.b, ptr align 1 %i.cc, i64 %gepdiff, i1 false)
  %i.ce = getelementptr inbounds nuw i8, ptr %i.b, i64 %gepdiff
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %ZSTD_safecopy.exit
  %i.cf = phi i64 [ %i.cd, %bb.p ], [ %i.d, %ZSTD_safecopy.exit ]
  %.041 = phi ptr [ %i.ce, %bb.p ], [ %i.b, %ZSTD_safecopy.exit ]
  %.040 = phi ptr [ %5, %bb.p ], [ %i.k, %ZSTD_safecopy.exit ]
  tail call fastcc void @ZSTD_safecopy(ptr noundef %.041, ptr noundef nonnull %i.l, ptr noundef %.040, i64 noundef %i.cf, i32 noundef 1)
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
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %3 ; 4 uses
  %i.f = icmp ult i64 %3, 8
  br i1 %i.f, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %.not75 = icmp eq i64 %3, 0
  br i1 %.not75, label %ZSTD_wildcopy.exit27, label %iter.check128

iter.check128:                                    ; preds = %.preheader
  %i.g = add i64 %3, %i.b
  %i.h = add i64 %i.b, 1
  %umax111 = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %i.h)
  %i.i = sub i64 %umax111, %i.b                   ; 7 uses
  %min.iters.check112 = icmp ult i64 %i.i, 8
  %i.j = add i64 %i.d, -1
  %diff.check110 = icmp ult i64 %i.j, 31
  %or.cond = or i1 %min.iters.check112, %diff.check110
  br i1 %or.cond, label %.lr.ph74.preheader, label %vector.main.loop.iter.check113

vector.main.loop.iter.check113:                   ; preds = %iter.check128
  %min.iters.check114 = icmp ult i64 %i.i, 32
  br i1 %min.iters.check114, label %vec.epilog.ph132, label %vector.ph115

vector.ph115:                                     ; preds = %vector.main.loop.iter.check113
  %i.k = and i64 %i.i, 24
  %n.vec116 = and i64 %i.i, -32                   ; 5 uses
  %i.l = getelementptr i8, ptr %2, i64 %n.vec116
  %i.m = getelementptr i8, ptr %0, i64 %n.vec116
  br label %vector.body117

vector.body117:                                   ; preds = %vector.ph115, %vector.body117
  %index118 = phi i64 [ 0, %vector.ph115 ], [ %index.next123, %vector.body117 ] ; 3 uses
  %next.gep119 = getelementptr i8, ptr %2, i64 %index118 ; 2 uses
  %next.gep120 = getelementptr i8, ptr %0, i64 %index118 ; 2 uses
  %i.n = getelementptr i8, ptr %next.gep119, i64 16
  %wide.load121 = load <16 x i8>, ptr %next.gep119, align 1, !tbaa !25
  %wide.load122 = load <16 x i8>, ptr %i.n, align 1, !tbaa !25
  %i.o = getelementptr i8, ptr %next.gep120, i64 16
  store <16 x i8> %wide.load121, ptr %next.gep120, align 1, !tbaa !25
  store <16 x i8> %wide.load122, ptr %i.o, align 1, !tbaa !25
  %index.next123 = add nuw i64 %index118, 32      ; 2 uses
  %i.p = icmp eq i64 %index.next123, %n.vec116
  br i1 %i.p, label %middle.block124, label %vector.body117, !llvm.loop !170

middle.block124:                                  ; preds = %vector.body117
  %cmp.n125 = icmp eq i64 %i.i, %n.vec116
  br i1 %cmp.n125, label %ZSTD_wildcopy.exit27, label %vec.epilog.iter.check130

vec.epilog.iter.check130:                         ; preds = %middle.block124
  %min.epilog.iters.check131 = icmp eq i64 %i.k, 0
  br i1 %min.epilog.iters.check131, label %.lr.ph74.preheader, label %vec.epilog.ph132, !prof !83

vec.epilog.ph132:                                 ; preds = %vector.main.loop.iter.check113, %vec.epilog.iter.check130
  %vec.epilog.resume.val126 = phi i64 [ %n.vec116, %vec.epilog.iter.check130 ], [ 0, %vector.main.loop.iter.check113 ]
  %n.vec133 = and i64 %i.i, -8                    ; 4 uses
  %i.q = getelementptr i8, ptr %2, i64 %n.vec133
  %i.r = getelementptr i8, ptr %0, i64 %n.vec133
  br label %vec.epilog.vector.body134

vec.epilog.vector.body134:                        ; preds = %vec.epilog.vector.body134, %vec.epilog.ph132
  %index135 = phi i64 [ %vec.epilog.resume.val126, %vec.epilog.ph132 ], [ %index.next139, %vec.epilog.vector.body134 ] ; 3 uses
  %next.gep136 = getelementptr i8, ptr %2, i64 %index135
  %next.gep137 = getelementptr i8, ptr %0, i64 %index135
  %wide.load138 = load <8 x i8>, ptr %next.gep136, align 1, !tbaa !25
  store <8 x i8> %wide.load138, ptr %next.gep137, align 1, !tbaa !25
  %index.next139 = add nuw i64 %index135, 8       ; 2 uses
  %i.s = icmp eq i64 %index.next139, %n.vec133
  br i1 %i.s, label %vec.epilog.middle.block140, label %vec.epilog.vector.body134, !llvm.loop !171

vec.epilog.middle.block140:                       ; preds = %vec.epilog.vector.body134
  %cmp.n141 = icmp eq i64 %i.i, %n.vec133
  br i1 %cmp.n141, label %ZSTD_wildcopy.exit27, label %.lr.ph74.preheader

.lr.ph74.preheader:                               ; preds = %iter.check128, %vec.epilog.iter.check130, %vec.epilog.middle.block140
  %.05973.ph = phi ptr [ %2, %iter.check128 ], [ %i.l, %vec.epilog.iter.check130 ], [ %i.q, %vec.epilog.middle.block140 ]
  %.06072.ph = phi ptr [ %0, %iter.check128 ], [ %i.m, %vec.epilog.iter.check130 ], [ %i.r, %vec.epilog.middle.block140 ]
  br label %.lr.ph74

.lr.ph74:                                         ; preds = %.lr.ph74.preheader, %.lr.ph74
  %.05973 = phi ptr [ %i.t, %.lr.ph74 ], [ %.05973.ph, %.lr.ph74.preheader ] ; 2 uses
  %.06072 = phi ptr [ %i.v, %.lr.ph74 ], [ %.06072.ph, %.lr.ph74.preheader ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.05973, i64 1
  %i.u = load i8, ptr %.05973, align 1, !tbaa !25
  %i.v = getelementptr inbounds nuw i8, ptr %.06072, i64 1 ; 2 uses
  store i8 %i.u, ptr %.06072, align 1, !tbaa !25
  %i.w = icmp ult ptr %i.v, %i.e
  br i1 %i.w, label %.lr.ph74, label %ZSTD_wildcopy.exit27, !llvm.loop !172

bb.b:                                             ; preds = %bb.a
  %.not = icmp ne i32 %4, 0                       ; 3 uses
  br i1 %.not, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.x = icmp ult i64 %i.d, 8
  br i1 %i.x, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_overlapCopy8.dec64table, i64 %i.d
  %i.z = load i32, ptr %i.y, align 4, !tbaa !40
  %i.aa = load i8, ptr %2, align 1, !tbaa !25
  store i8 %i.aa, ptr %0, align 1, !tbaa !25
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !25
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.ac, ptr %i.ad, align 1, !tbaa !25
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !25
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.af, ptr %i.ag, align 1, !tbaa !25
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !25
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 3
  store i8 %i.ai, ptr %i.aj, align 1, !tbaa !25
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_overlapCopy8.dec32table, i64 %i.d
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !40
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
  %i.au = add i64 %3, -8
  br label %bb.f

bb.f:                                             ; preds = %ZSTD_overlapCopy8.exit, %bb.b
  %.161 = phi ptr [ %0, %bb.b ], [ %i.at, %ZSTD_overlapCopy8.exit ] ; 13 uses
  %.1 = phi ptr [ %2, %bb.b ], [ %i.as, %ZSTD_overlapCopy8.exit ] ; 11 uses
  %.0 = phi i64 [ %3, %bb.b ], [ %i.au, %ZSTD_overlapCopy8.exit ] ; 2 uses
  %.16194 = ptrtoaddr ptr %.161 to i64            ; 2 uses
  %.195 = ptrtoaddr ptr %.1 to i64
  %.not19 = icmp ugt ptr %i.e, %1
  br i1 %.not19, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.av = ptrtoint ptr %.161 to i64
  %i.aw = ptrtoint ptr %.1 to i64
  %i.ax = sub i64 %i.av, %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %.161, i64 %.0 ; 2 uses
  %i.az = icmp slt i64 %i.ax, 16
  %or.cond.i21 = and i1 %.not, %i.az
  br i1 %or.cond.i21, label %.preheader67, label %bb.h

.preheader67:                                     ; preds = %bb.g, %.preheader67
  %.029.i25 = phi ptr [ %i.bb, %.preheader67 ], [ %.1, %bb.g ] ; 2 uses
  %.0.i26 = phi ptr [ %i.ba, %.preheader67 ], [ %.161, %bb.g ] ; 2 uses
  %.029.i25.val = load i64, ptr %.029.i25, align 1
  store i64 %.029.i25.val, ptr %.0.i26, align 1
  %i.ba = getelementptr inbounds nuw i8, ptr %.0.i26, i64 8 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.029.i25, i64 8
  %i.bc = icmp ult ptr %i.ba, %i.ay
  br i1 %i.bc, label %.preheader67, label %ZSTD_wildcopy.exit27, !llvm.loop !9

bb.h:                                             ; preds = %bb.g
  %.val28 = load <2 x i64>, ptr %.1, align 1, !tbaa !25
  store <2 x i64> %.val28, ptr %.161, align 1, !tbaa !25
  %i.bd = icmp ult i64 %.0, 17
  br i1 %i.bd, label %ZSTD_wildcopy.exit27, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.be = getelementptr inbounds nuw i8, ptr %.161, i64 16
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %bb.i
  %.pn.i22 = phi ptr [ %.1, %bb.i ], [ %i.bg, %bb.j ] ; 2 uses
  %.1.i23 = phi ptr [ %i.be, %bb.i ], [ %i.bh, %bb.j ] ; 3 uses
  %.130.i24 = getelementptr inbounds nuw i8, ptr %.pn.i22, i64 16
  %.130.i24.val = load <2 x i64>, ptr %.130.i24, align 1, !tbaa !25
  store <2 x i64> %.130.i24.val, ptr %.1.i23, align 1, !tbaa !25
  %i.bf = getelementptr inbounds nuw i8, ptr %.1.i23, i64 16
  %i.bg = getelementptr inbounds nuw i8, ptr %.pn.i22, i64 32 ; 2 uses
  %.val = load <2 x i64>, ptr %i.bg, align 1, !tbaa !25
  store <2 x i64> %.val, ptr %i.bf, align 1, !tbaa !25
  %i.bh = getelementptr inbounds nuw i8, ptr %.1.i23, i64 32 ; 2 uses
  %i.bi = icmp ult ptr %i.bh, %i.ay
  br i1 %i.bi, label %bb.j, label %ZSTD_wildcopy.exit27, !llvm.loop !8

bb.k:                                             ; preds = %bb.f
  %.not20 = icmp ugt ptr %.161, %1
  br i1 %.not20, label %bb.p, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bj = ptrtoint ptr %1 to i64
  %i.bk = ptrtoint ptr %.161 to i64               ; 2 uses
  %i.bl = sub i64 %i.bj, %i.bk                    ; 3 uses
  %i.bm = ptrtoint ptr %.1 to i64
  %i.bn = sub i64 %i.bk, %i.bm
  %i.bo = getelementptr inbounds i8, ptr %.161, i64 %i.bl
  %i.bp = icmp slt i64 %i.bn, 16
  %or.cond.i = and i1 %.not, %i.bp
  br i1 %or.cond.i, label %.preheader65, label %bb.m

.preheader65:                                     ; preds = %bb.l, %.preheader65
  %.029.i = phi ptr [ %i.br, %.preheader65 ], [ %.1, %bb.l ] ; 2 uses
  %.0.i = phi ptr [ %i.bq, %.preheader65 ], [ %.161, %bb.l ] ; 2 uses
  %.029.i.val = load i64, ptr %.029.i, align 1
  store i64 %.029.i.val, ptr %.0.i, align 1
  %i.bq = getelementptr inbounds nuw i8, ptr %.0.i, i64 8 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.029.i, i64 8
  %i.bs = icmp ult ptr %i.bq, %1
  br i1 %i.bs, label %.preheader65, label %ZSTD_wildcopy.exit, !llvm.loop !9

bb.m:                                             ; preds = %bb.l
  %.val30 = load <2 x i64>, ptr %.1, align 1, !tbaa !25
  store <2 x i64> %.val30, ptr %.161, align 1, !tbaa !25
  %i.bt = icmp ult i64 %i.bl, 17
  br i1 %i.bt, label %ZSTD_wildcopy.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bu = getelementptr inbounds nuw i8, ptr %.161, i64 16
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %bb.n
  %.pn.i = phi ptr [ %.1, %bb.n ], [ %i.bw, %bb.o ] ; 2 uses
  %.1.i = phi ptr [ %i.bu, %bb.n ], [ %i.bx, %bb.o ] ; 3 uses
  %.130.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 16
  %.130.i.val = load <2 x i64>, ptr %.130.i, align 1, !tbaa !25
  store <2 x i64> %.130.i.val, ptr %.1.i, align 1, !tbaa !25
  %i.bv = getelementptr inbounds nuw i8, ptr %.1.i, i64 16
  %i.bw = getelementptr inbounds nuw i8, ptr %.pn.i, i64 32 ; 2 uses
  %.val29 = load <2 x i64>, ptr %i.bw, align 1, !tbaa !25
  store <2 x i64> %.val29, ptr %i.bv, align 1, !tbaa !25
  %i.bx = getelementptr inbounds nuw i8, ptr %.1.i, i64 32 ; 2 uses
  %i.by = icmp ult ptr %i.bx, %1
  br i1 %i.by, label %bb.o, label %ZSTD_wildcopy.exit, !llvm.loop !8

ZSTD_wildcopy.exit:                               ; preds = %bb.o, %.preheader65, %bb.m
  %i.bz = getelementptr inbounds i8, ptr %.1, i64 %i.bl
  br label %bb.p

bb.p:                                             ; preds = %ZSTD_wildcopy.exit, %bb.k
  %.262 = phi ptr [ %.161, %bb.k ], [ %i.bo, %ZSTD_wildcopy.exit ] ; 6 uses
  %.2 = phi ptr [ %.1, %bb.k ], [ %i.bz, %ZSTD_wildcopy.exit ] ; 5 uses
  %i.ca = icmp ult ptr %.262, %i.e
  br i1 %i.ca, label %iter.check, label %ZSTD_wildcopy.exit27

iter.check:                                       ; preds = %bb.p
  %i.cb = add i64 %3, %i.b
  %umax = tail call i64 @llvm.umax.i64(i64 %.16194, i64 %i.a)
  %i.cc = sub i64 %i.cb, %umax                    ; 7 uses
  %min.iters.check = icmp ult i64 %i.cc, 8
  %i.cd = sub i64 %.195, %.16194
  %diff.check = icmp ugt i64 %i.cd, -32
  %or.cond144 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond144, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check96 = icmp ult i64 %i.cc, 32
  br i1 %min.iters.check96, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ce = and i64 %i.cc, 24
  %n.vec = and i64 %i.cc, -32                     ; 5 uses
  %i.cf = getelementptr i8, ptr %.2, i64 %n.vec
  %i.cg = getelementptr i8, ptr %.262, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.2, i64 %index ; 2 uses
  %next.gep97 = getelementptr i8, ptr %.262, i64 %index ; 2 uses
  %i.ch = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !25
  %wide.load98 = load <16 x i8>, ptr %i.ch, align 1, !tbaa !25
  %i.ci = getelementptr i8, ptr %next.gep97, i64 16
  store <16 x i8> %wide.load, ptr %next.gep97, align 1, !tbaa !25
  store <16 x i8> %wide.load98, ptr %i.ci, align 1, !tbaa !25
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.cj = icmp eq i64 %index.next, %n.vec
  br i1 %i.cj, label %middle.block, label %vector.body, !llvm.loop !173

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cc, %n.vec
  br i1 %cmp.n, label %ZSTD_wildcopy.exit27, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ce, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !83

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec100 = and i64 %i.cc, -8                   ; 4 uses
  %i.ck = getelementptr i8, ptr %.2, i64 %n.vec100
  %i.cl = getelementptr i8, ptr %.262, i64 %n.vec100
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index101 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next105, %vec.epilog.vector.body ] ; 3 uses
  %next.gep102 = getelementptr i8, ptr %.2, i64 %index101
  %next.gep103 = getelementptr i8, ptr %.262, i64 %index101
  %wide.load104 = load <8 x i8>, ptr %next.gep102, align 1, !tbaa !25
  store <8 x i8> %wide.load104, ptr %next.gep103, align 1, !tbaa !25
  %index.next105 = add nuw i64 %index101, 8       ; 2 uses
  %i.cm = icmp eq i64 %index.next105, %n.vec100
  br i1 %i.cm, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !174

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n106 = icmp eq i64 %i.cc, %n.vec100
  br i1 %cmp.n106, label %ZSTD_wildcopy.exit27, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.371.ph = phi ptr [ %.2, %iter.check ], [ %i.cf, %vec.epilog.iter.check ], [ %i.ck, %vec.epilog.middle.block ]
  %.36370.ph = phi ptr [ %.262, %iter.check ], [ %i.cg, %vec.epilog.iter.check ], [ %i.cl, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.371 = phi ptr [ %i.cn, %.lr.ph ], [ %.371.ph, %.lr.ph.preheader ] ; 2 uses
  %.36370 = phi ptr [ %i.cp, %.lr.ph ], [ %.36370.ph, %.lr.ph.preheader ] ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.371, i64 1
  %i.co = load i8, ptr %.371, align 1, !tbaa !25
  %i.cp = getelementptr inbounds nuw i8, ptr %.36370, i64 1 ; 2 uses
  store i8 %i.co, ptr %.36370, align 1, !tbaa !25
  %i.cq = icmp ult ptr %i.cp, %i.e
  br i1 %i.cq, label %.lr.ph, label %ZSTD_wildcopy.exit27, !llvm.loop !175

ZSTD_wildcopy.exit27:                             ; preds = %bb.j, %.preheader67, %.lr.ph, %.lr.ph74, %middle.block, %vec.epilog.middle.block, %middle.block124, %vec.epilog.middle.block140, %bb.p, %.preheader, %bb.h
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i64 @ZSTD_execSequenceEndSplitLitBuffer(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly byval(%struct.seq_t) align 8 captures(none) %3, ptr nofree noundef nonnull captures(none) %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr nofree noundef readonly captures(none) %8) unnamed_addr #12 {
bb.a:
  %i.a = load i64, ptr %3, align 8, !tbaa !82     ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %i.a ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !86   ; 4 uses
  %i.e = add i64 %i.d, %i.a                       ; 3 uses
  %i.f = load ptr, ptr %4, align 8, !tbaa !46     ; 12 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.a ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !98   ; 3 uses
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
  %i.w = icmp ult i64 %i.a, 8
  %i.x = icmp sgt i64 %i.v, -8
  %or.cond.i = or i1 %i.w, %i.x
  br i1 %or.cond.i, label %.preheader.i, label %bb.e

.preheader.i:                                     ; preds = %bb.d
  %.not.i = icmp eq i64 %i.a, 0
  br i1 %.not.i, label %ZSTD_safecopyDstBeforeSrc.exit, label %iter.check89

iter.check89:                                     ; preds = %.preheader.i
  %i.y = add i64 %i.a, %i.m
  %i.z = add i64 %i.m, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.y, i64 %i.z)
  %i.aa = sub i64 %umax, %i.m                     ; 7 uses
  %min.iters.check73 = icmp ult i64 %i.aa, 8
  %i.ab = add i64 %i.v, -1
  %diff.check72 = icmp ult i64 %i.ab, 31
  %or.cond105 = or i1 %min.iters.check73, %diff.check72
  br i1 %or.cond105, label %.lr.ph41.i.preheader, label %vector.main.loop.iter.check74

vector.main.loop.iter.check74:                    ; preds = %iter.check89
  %min.iters.check75 = icmp ult i64 %i.aa, 32
  br i1 %min.iters.check75, label %vec.epilog.ph93, label %vector.ph76

vector.ph76:                                      ; preds = %vector.main.loop.iter.check74
  %i.ac = and i64 %i.aa, 24
  %n.vec77 = and i64 %i.aa, -32                   ; 5 uses
  %i.ad = getelementptr i8, ptr %0, i64 %n.vec77
  %i.ae = getelementptr i8, ptr %i.f, i64 %n.vec77
  br label %vector.body78

vector.body78:                                    ; preds = %vector.ph76, %vector.body78
  %index79 = phi i64 [ 0, %vector.ph76 ], [ %index.next84, %vector.body78 ] ; 3 uses
  %next.gep80 = getelementptr i8, ptr %0, i64 %index79 ; 2 uses
  %next.gep81 = getelementptr i8, ptr %i.f, i64 %index79 ; 2 uses
  %i.af = getelementptr i8, ptr %next.gep81, i64 16
  %wide.load82 = load <16 x i8>, ptr %next.gep81, align 1, !tbaa !25
  %wide.load83 = load <16 x i8>, ptr %i.af, align 1, !tbaa !25
  %i.ag = getelementptr i8, ptr %next.gep80, i64 16
  store <16 x i8> %wide.load82, ptr %next.gep80, align 1, !tbaa !25
  store <16 x i8> %wide.load83, ptr %i.ag, align 1, !tbaa !25
  %index.next84 = add nuw i64 %index79, 32        ; 2 uses
  %i.ah = icmp eq i64 %index.next84, %n.vec77
  br i1 %i.ah, label %middle.block85, label %vector.body78, !llvm.loop !176

middle.block85:                                   ; preds = %vector.body78
  %cmp.n86 = icmp eq i64 %i.aa, %n.vec77
  br i1 %cmp.n86, label %ZSTD_safecopyDstBeforeSrc.exit, label %vec.epilog.iter.check91

vec.epilog.iter.check91:                          ; preds = %middle.block85
  %min.epilog.iters.check92 = icmp eq i64 %i.ac, 0
  br i1 %min.epilog.iters.check92, label %.lr.ph41.i.preheader, label %vec.epilog.ph93, !prof !83

vec.epilog.ph93:                                  ; preds = %vector.main.loop.iter.check74, %vec.epilog.iter.check91
  %vec.epilog.resume.val87 = phi i64 [ %n.vec77, %vec.epilog.iter.check91 ], [ 0, %vector.main.loop.iter.check74 ]
  %n.vec94 = and i64 %i.aa, -8                    ; 4 uses
  %i.ai = getelementptr i8, ptr %0, i64 %n.vec94
  %i.aj = getelementptr i8, ptr %i.f, i64 %n.vec94
  br label %vec.epilog.vector.body95

vec.epilog.vector.body95:                         ; preds = %vec.epilog.vector.body95, %vec.epilog.ph93
  %index96 = phi i64 [ %vec.epilog.resume.val87, %vec.epilog.ph93 ], [ %index.next100, %vec.epilog.vector.body95 ] ; 3 uses
  %next.gep97 = getelementptr i8, ptr %0, i64 %index96
  %next.gep98 = getelementptr i8, ptr %i.f, i64 %index96
  %wide.load99 = load <8 x i8>, ptr %next.gep98, align 1, !tbaa !25
  store <8 x i8> %wide.load99, ptr %next.gep97, align 1, !tbaa !25
  %index.next100 = add nuw i64 %index96, 8        ; 2 uses
  %i.ak = icmp eq i64 %index.next100, %n.vec94
  br i1 %i.ak, label %vec.epilog.middle.block101, label %vec.epilog.vector.body95, !llvm.loop !177

vec.epilog.middle.block101:                       ; preds = %vec.epilog.vector.body95
  %cmp.n102 = icmp eq i64 %i.aa, %n.vec94
  br i1 %cmp.n102, label %ZSTD_safecopyDstBeforeSrc.exit, label %.lr.ph41.i.preheader

.lr.ph41.i.preheader:                             ; preds = %iter.check89, %vec.epilog.iter.check91, %vec.epilog.middle.block101
  %.040.i.ph = phi ptr [ %0, %iter.check89 ], [ %i.ad, %vec.epilog.iter.check91 ], [ %i.ai, %vec.epilog.middle.block101 ]
  %.02939.i.ph = phi ptr [ %i.f, %iter.check89 ], [ %i.ae, %vec.epilog.iter.check91 ], [ %i.aj, %vec.epilog.middle.block101 ]
  br label %.lr.ph41.i

.lr.ph41.i:                                       ; preds = %.lr.ph41.i.preheader, %.lr.ph41.i
  %.040.i = phi ptr [ %i.an, %.lr.ph41.i ], [ %.040.i.ph, %.lr.ph41.i.preheader ] ; 2 uses
  %.02939.i = phi ptr [ %i.al, %.lr.ph41.i ], [ %.02939.i.ph, %.lr.ph41.i.preheader ] ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.02939.i, i64 1
  %i.am = load i8, ptr %.02939.i, align 1, !tbaa !25
  %i.an = getelementptr inbounds nuw i8, ptr %.040.i, i64 1 ; 2 uses
  store i8 %i.am, ptr %.040.i, align 1, !tbaa !25
  %i.ao = icmp ult ptr %i.an, %i.b
  br i1 %i.ao, label %.lr.ph41.i, label %ZSTD_safecopyDstBeforeSrc.exit, !llvm.loop !178
end_hunk_0
