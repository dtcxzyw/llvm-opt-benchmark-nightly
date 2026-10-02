Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/flac/original/md5?download=true
inline.NumInlined: 4
inline.NumDeleted: 4
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 14
begin_hunk_0_@FLAC__MD5Transform:bb.a
  %i.te = add i32 %i.td, %i.sw                    ; 3 uses
  %i.tf = xor i32 %i.so, -1
  %i.tg = or i32 %i.te, %i.tf
  %i.th = xor i32 %i.tg, %i.sw
  %i.ti = add i32 %i.cw, -343485551
  %i.tj = add i32 %i.ti, %i.sg
  %i.tk = add i32 %i.tj, %i.th                    ; 2 uses
  %i.tl = tail call i32 @llvm.fshl.i32(i32 %i.tk, i32 %i.tk, i32 21)
  %i.tm = add i32 %i.so, %i.a
  store i32 %i.tm, ptr %0, align 4, !tbaa !8
  %i.tn = add i32 %i.te, %i.c
  %i.to = add i32 %i.tn, %i.tl
  store i32 %i.to, ptr %i.b, align 4, !tbaa !8
  %i.tp = add i32 %i.te, %i.e
  store i32 %i.tp, ptr %i.d, align 4, !tbaa !8
  %i.tq = add i32 %i.sw, %i.g
  store i32 %i.tq, ptr %i.f, align 4, !tbaa !8
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong memory(readwrite, target_mem: none) uwtable
define hidden range(i32 0, 2) i32 @FLAC__MD5Accumulate(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #1 {
bb.a:
  %i.a = zext i32 %2 to i64                       ; 9 uses
  %i.b = zext i32 %3 to i64                       ; 45 uses
  %i.c = zext i32 %4 to i64
  %i.d = mul nuw i64 %i.c, %i.a                   ; 2 uses
  %i.e = mul i64 %i.d, %i.b                       ; 6 uses
  %mul = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.b, i64 %i.d)
  %mul.ov = extractvalue { i64, i1 } %mul, 1
  br i1 %mul.ov, label %FLAC__MD5Update.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !52
  %i.h = icmp ult i64 %i.g, %i.e
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !9    ; 3 uses
  br i1 %i.h, label %bb.c, label %._crit_edge

bb.c:                                             ; preds = %bb.b
  %i.k = tail call ptr @realloc(ptr noundef %i.j, i64 noundef %i.e) #11 ; 3 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.d, label %safe_realloc_.exit

safe_realloc_.exit:                               ; preds = %bb.c
  store ptr %i.k, ptr %i.i, align 8, !tbaa !9
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef %i.j) #10
  %i.m = tail call noalias noundef ptr @malloc(i64 noundef %i.e) #12 ; 3 uses
  store ptr %i.m, ptr %i.i, align 8, !tbaa !9
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i64 0, ptr %i.f, align 8, !tbaa !52
  br label %FLAC__MD5Update.exit

bb.f:                                             ; preds = %safe_realloc_.exit, %bb.d
  %.val82 = phi ptr [ %i.k, %safe_realloc_.exit ], [ %i.m, %bb.d ]
  store i64 %i.e, ptr %i.f, align 8, !tbaa !52
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.b, %bb.f
  %.val = phi ptr [ %.val82, %bb.f ], [ %i.j, %bb.b ] ; 43 uses
  %.val155 = ptrtoaddr ptr %.val to i64
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.p = mul i32 %4, 100
  %i.q = add i32 %i.p, %2
  switch i32 %i.q, label %bb.r [
    i32 101, label %.preheader11.i
    i32 102, label %.preheader13.i
    i32 104, label %.preheader15.i
    i32 106, label %.preheader17.i
    i32 108, label %.preheader19.i
    i32 201, label %.preheader21.i
    i32 202, label %.preheader23.i
    i32 204, label %.preheader25.i
    i32 206, label %.preheader27.i
    i32 208, label %.preheader29.i
    i32 301, label %.preheader31.i
    i32 302, label %.preheader33.i
    i32 401, label %.preheader35.i
    i32 402, label %.preheader37.i
    i32 404, label %.preheader39.i
    i32 406, label %.preheader41.i
    i32 408, label %.preheader43.i
  ]

.preheader43.i:                                   ; preds = %._crit_edge
  %.not.i = icmp eq i32 %3, 0
  br i1 %.not.i, label %format_input_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader43.i
  %i.r = load ptr, ptr %1, align 8, !tbaa !55
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !55
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !55
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !55
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !55
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !55
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !55
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !55
  br label %bb.q

.preheader41.i:                                   ; preds = %._crit_edge
  %.not124.i = icmp eq i32 %3, 0
  br i1 %.not124.i, label %format_input_.exit, label %.lr.ph49.i

.lr.ph49.i:                                       ; preds = %.preheader41.i
  %i.ag = load ptr, ptr %1, align 8, !tbaa !55    ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !55 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !55 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !55 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !55 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !55 ; 3 uses
  %xtraiter = and i64 %i.b, 1
  %i.ar = icmp eq i32 %3, 1
  br i1 %i.ar, label %.epil.preheader, label %.lr.ph49.i.new

.lr.ph49.i.new:                                   ; preds = %.lr.ph49.i
  %unroll_iter = and i64 %i.b, 4294967294
  br label %bb.p

.preheader39.i:                                   ; preds = %._crit_edge
  %.not125.i = icmp eq i32 %3, 0
  br i1 %.not125.i, label %format_input_.exit, label %.lr.ph52.i

.lr.ph52.i:                                       ; preds = %.preheader39.i
  %i.as = load ptr, ptr %1, align 8, !tbaa !55    ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !55 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !55 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !55 ; 3 uses
  %xtraiter227 = and i64 %i.b, 1
  %i.az = icmp eq i32 %3, 1
  br i1 %i.az, label %.epil.preheader226, label %.lr.ph52.i.new

.lr.ph52.i.new:                                   ; preds = %.lr.ph52.i
  %unroll_iter230 = and i64 %i.b, 4294967294
  br label %bb.o

.preheader37.i:                                   ; preds = %._crit_edge
  %.not126.i = icmp eq i32 %3, 0
  br i1 %.not126.i, label %format_input_.exit, label %.lr.ph55.i

.lr.ph55.i:                                       ; preds = %.preheader37.i
  %i.ba = load ptr, ptr %1, align 8, !tbaa !55    ; 8 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !55 ; 8 uses
  %min.iters.check = icmp ult i32 %3, 16
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph55.i
  %i.bd = shl nuw nsw i64 %i.b, 3
  %i.be = getelementptr i8, ptr %.val, i64 %i.bd  ; 2 uses
  %i.bf = shl nuw nsw i64 %i.b, 2                 ; 2 uses
  %i.bg = getelementptr i8, ptr %i.ba, i64 %i.bf
  %i.bh = getelementptr i8, ptr %i.bc, i64 %i.bf
  %bound0 = icmp ult ptr %.val, %i.bg
  %bound1 = icmp ult ptr %i.ba, %i.be
  %found.conflict = and i1 %bound0, %bound1
  %bound0145 = icmp ult ptr %.val, %i.bh
  %bound1146 = icmp ult ptr %i.bc, %i.be
  %found.conflict147 = and i1 %bound0145, %bound1146
  %conflict.rdx = or i1 %found.conflict, %found.conflict147
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.b, 4294967292               ; 4 uses
  %i.bi = shl nuw nsw i64 %n.vec, 3
  %i.bj = getelementptr i8, ptr %.val, i64 %i.bi
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.bk = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.val, i64 %i.bk
  %i.bl = getelementptr i8, ptr %.val, i64 %i.bk
  %next.gep148 = getelementptr i8, ptr %i.bl, i64 16
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %index ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %wide.load = load <2 x i32>, ptr %i.bm, align 4, !tbaa !8, !alias.scope !68
  %wide.load149 = load <2 x i32>, ptr %i.bn, align 4, !tbaa !8, !alias.scope !68
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %index ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %wide.load150 = load <2 x i32>, ptr %i.bo, align 4, !tbaa !8, !alias.scope !70
  %wide.load151 = load <2 x i32>, ptr %i.bp, align 4, !tbaa !8, !alias.scope !70
  %interleaved.vec = shufflevector <2 x i32> %wide.load, <2 x i32> %wide.load150, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec, ptr %next.gep, align 4, !tbaa !8, !alias.scope !72, !noalias !73
  %interleaved.vec152 = shufflevector <2 x i32> %wide.load149, <2 x i32> %wide.load151, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec152, ptr %next.gep148, align 4, !tbaa !8, !alias.scope !72, !noalias !73
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bq = icmp eq i64 %index.next, %n.vec
  br i1 %i.bq, label %middle.block, label %vector.body, !llvm.loop !14

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.b
  br i1 %cmp.n, label %format_input_.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph55.i, %middle.block
  %indvars.iv174.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph55.i ], [ %n.vec, %middle.block ] ; 3 uses
  %.132753.i.ph = phi ptr [ %.val, %vector.memcheck ], [ %.val, %.lr.ph55.i ], [ %i.bj, %middle.block ] ; 2 uses
  %xtraiter232 = and i64 %i.b, 3                  ; 2 uses
  %lcmp.mod233.not = icmp eq i64 %xtraiter232, 0
  br i1 %lcmp.mod233.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv174.i.prol = phi i64 [ %indvars.iv.next175.i.prol, %scalar.ph.prol ], [ %indvars.iv174.i.ph, %scalar.ph.preheader ] ; 3 uses
  %.132753.i.prol = phi ptr [ %i.bw, %scalar.ph.prol ], [ %.132753.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv174.i.prol
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !8
  %i.bt = getelementptr inbounds nuw i8, ptr %.132753.i.prol, i64 4
  store i32 %i.bs, ptr %.132753.i.prol, align 4, !tbaa !8
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %indvars.iv174.i.prol
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !8
  %i.bw = getelementptr inbounds nuw i8, ptr %.132753.i.prol, i64 8 ; 2 uses
  store i32 %i.bv, ptr %i.bt, align 4, !tbaa !8
  %indvars.iv.next175.i.prol = add nuw nsw i64 %indvars.iv174.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter232
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !15

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv174.i.unr = phi i64 [ %indvars.iv174.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next175.i.prol, %scalar.ph.prol ]
  %.132753.i.unr = phi ptr [ %.132753.i.ph, %scalar.ph.preheader ], [ %i.bw, %scalar.ph.prol ]
  %i.bx = sub nsw i64 %indvars.iv174.i.ph, %i.b
  %i.by = icmp ugt i64 %i.bx, -4
  br i1 %i.by, label %format_input_.exit, label %scalar.ph

.preheader35.i:                                   ; preds = %._crit_edge
  %.not127.i = icmp eq i32 %3, 0
  br i1 %.not127.i, label %format_input_.exit, label %.lr.ph58.i

.lr.ph58.i:                                       ; preds = %.preheader35.i
  %i.bz = load ptr, ptr %1, align 8, !tbaa !55    ; 11 uses
  %min.iters.check157 = icmp ult i32 %3, 8
  %i.ca = ptrtoaddr ptr %i.bz to i64
  %i.cb = sub i64 %i.ca, %.val155
  %diff.check = icmp ugt i64 %i.cb, -32
  %or.cond = select i1 %min.iters.check157, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph156.preheader, label %vector.ph158

vector.ph158:                                     ; preds = %.lr.ph58.i
  %n.vec159 = and i64 %i.b, 4294967288            ; 4 uses
  %i.cc = shl nuw nsw i64 %n.vec159, 2
  %i.cd = getelementptr i8, ptr %.val, i64 %i.cc
  br label %vector.body160

vector.body160:                                   ; preds = %vector.body160, %vector.ph158
  %index161 = phi i64 [ 0, %vector.ph158 ], [ %index.next165, %vector.body160 ] ; 3 uses
  %i.ce = shl i64 %index161, 2
  %next.gep162 = getelementptr i8, ptr %.val, i64 %i.ce ; 2 uses
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %index161 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %wide.load163 = load <4 x i32>, ptr %i.cf, align 4, !tbaa !8
  %wide.load164 = load <4 x i32>, ptr %i.cg, align 4, !tbaa !8
  %i.ch = getelementptr i8, ptr %next.gep162, i64 16
  store <4 x i32> %wide.load163, ptr %next.gep162, align 4, !tbaa !8
  store <4 x i32> %wide.load164, ptr %i.ch, align 4, !tbaa !8
  %index.next165 = add nuw i64 %index161, 8       ; 2 uses
  %i.ci = icmp eq i64 %index.next165, %n.vec159
  br i1 %i.ci, label %middle.block166, label %vector.body160, !llvm.loop !16

middle.block166:                                  ; preds = %vector.body160
  %cmp.n167 = icmp eq i64 %n.vec159, %i.b
  br i1 %cmp.n167, label %format_input_.exit, label %scalar.ph156.preheader

scalar.ph156.preheader:                           ; preds = %.lr.ph58.i, %middle.block166
  %indvars.iv179.i.ph = phi i64 [ 0, %.lr.ph58.i ], [ %n.vec159, %middle.block166 ] ; 3 uses
  %.032656.i.ph = phi ptr [ %.val, %.lr.ph58.i ], [ %i.cd, %middle.block166 ] ; 2 uses
  %xtraiter234 = and i64 %i.b, 7                  ; 2 uses
  %lcmp.mod235.not = icmp eq i64 %xtraiter234, 0
  br i1 %lcmp.mod235.not, label %scalar.ph156.prol.loopexit, label %scalar.ph156.prol

scalar.ph156.prol:                                ; preds = %scalar.ph156.preheader, %scalar.ph156.prol
  %indvars.iv179.i.prol = phi i64 [ %indvars.iv.next180.i.prol, %scalar.ph156.prol ], [ %indvars.iv179.i.ph, %scalar.ph156.preheader ] ; 2 uses
  %.032656.i.prol = phi ptr [ %i.cl, %scalar.ph156.prol ], [ %.032656.i.ph, %scalar.ph156.preheader ] ; 2 uses
  %prol.iter236 = phi i64 [ %prol.iter236.next, %scalar.ph156.prol ], [ 0, %scalar.ph156.preheader ]
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %indvars.iv179.i.prol
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !8
  %i.cl = getelementptr inbounds nuw i8, ptr %.032656.i.prol, i64 4 ; 2 uses
  store i32 %i.ck, ptr %.032656.i.prol, align 4, !tbaa !8
  %indvars.iv.next180.i.prol = add nuw nsw i64 %indvars.iv179.i.prol, 1 ; 2 uses
  %prol.iter236.next = add i64 %prol.iter236, 1   ; 2 uses
  %prol.iter236.cmp.not = icmp eq i64 %prol.iter236.next, %xtraiter234
  br i1 %prol.iter236.cmp.not, label %scalar.ph156.prol.loopexit, label %scalar.ph156.prol, !llvm.loop !17

scalar.ph156.prol.loopexit:                       ; preds = %scalar.ph156.prol, %scalar.ph156.preheader
  %indvars.iv179.i.unr = phi i64 [ %indvars.iv179.i.ph, %scalar.ph156.preheader ], [ %indvars.iv.next180.i.prol, %scalar.ph156.prol ]
  %.032656.i.unr = phi ptr [ %.032656.i.ph, %scalar.ph156.preheader ], [ %i.cl, %scalar.ph156.prol ]
  %i.cm = sub nsw i64 %indvars.iv179.i.ph, %i.b
  %i.cn = icmp ugt i64 %i.cm, -8
  br i1 %i.cn, label %format_input_.exit, label %scalar.ph156

.preheader33.i:                                   ; preds = %._crit_edge
  %.not128.i = icmp eq i32 %3, 0
  br i1 %.not128.i, label %format_input_.exit, label %.lr.ph61.i

.lr.ph61.i:                                       ; preds = %.preheader33.i
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.n

.preheader31.i:                                   ; preds = %._crit_edge
  %.not129.i = icmp eq i32 %3, 0
  br i1 %.not129.i, label %format_input_.exit, label %.lr.ph64.i.preheader

.lr.ph64.i.preheader:                             ; preds = %.preheader31.i
  %xtraiter237 = and i64 %i.b, 1
  %i.cp = icmp eq i32 %3, 1
  br i1 %i.cp, label %.lr.ph64.i.epil.preheader, label %.lr.ph64.i.preheader.new

.lr.ph64.i.preheader.new:                         ; preds = %.lr.ph64.i.preheader
  %unroll_iter240 = and i64 %i.b, 4294967294
  br label %.lr.ph64.i

.preheader29.i:                                   ; preds = %._crit_edge
  %.not130.i = icmp eq i32 %3, 0
  br i1 %.not130.i, label %format_input_.exit, label %.lr.ph67.i

.lr.ph67.i:                                       ; preds = %.preheader29.i
  %i.cq = load ptr, ptr %1, align 8, !tbaa !55
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !55
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !55
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !55
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !55
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !55
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !55
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !55
  br label %bb.m

.preheader27.i:                                   ; preds = %._crit_edge
  %.not131.i = icmp eq i32 %3, 0
  br i1 %.not131.i, label %format_input_.exit, label %.lr.ph70.i

.lr.ph70.i:                                       ; preds = %.preheader27.i
  %i.df = load ptr, ptr %1, align 8, !tbaa !55    ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !55 ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !55 ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !55 ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !55 ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !55 ; 3 uses
  %xtraiter243 = and i64 %i.b, 1
  %i.dq = icmp eq i32 %3, 1
  br i1 %i.dq, label %.epil.preheader242, label %.lr.ph70.i.new

.lr.ph70.i.new:                                   ; preds = %.lr.ph70.i
  %unroll_iter246 = and i64 %i.b, 4294967294
  br label %bb.l

.preheader25.i:                                   ; preds = %._crit_edge
  %.not132.i = icmp eq i32 %3, 0
  br i1 %.not132.i, label %format_input_.exit, label %.lr.ph73.i

.lr.ph73.i:                                       ; preds = %.preheader25.i
  %i.dr = load ptr, ptr %1, align 8, !tbaa !55    ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !55 ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !55 ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !55 ; 3 uses
  %xtraiter249 = and i64 %i.b, 1
  %i.dy = icmp eq i32 %3, 1
  br i1 %i.dy, label %.epil.preheader248, label %.lr.ph73.i.new

.lr.ph73.i.new:                                   ; preds = %.lr.ph73.i
  %unroll_iter252 = and i64 %i.b, 4294967294
  br label %bb.k

.preheader23.i:                                   ; preds = %._crit_edge
  %.not133.i = icmp eq i32 %3, 0
  br i1 %.not133.i, label %format_input_.exit, label %.lr.ph76.i

.lr.ph76.i:                                       ; preds = %.preheader23.i
  %i.dz = load ptr, ptr %1, align 8, !tbaa !55    ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !55 ; 2 uses
  %min.iters.check171 = icmp ult i32 %3, 4
end_hunk_0
begin_hunk_1_@FLAC__MD5Accumulate:bb.a
  %i.afk = load i32, ptr %i.afj, align 4, !tbaa !8
  %i.afl = trunc i32 %i.afk to i16
  store i16 %i.afl, ptr %i.afi, align 2, !tbaa !65
  br label %format_input_.exit

format_input_.exit.loopexit218.unr-lcssa:         ; preds = %.lr.ph64.i
  %lcmp.mod238.not = icmp eq i64 %xtraiter237, 0
  br i1 %lcmp.mod238.not, label %format_input_.exit, label %.lr.ph64.i.epil.preheader

.lr.ph64.i.epil.preheader:                        ; preds = %format_input_.exit.loopexit218.unr-lcssa, %.lr.ph64.i.preheader
  %indvars.iv189.i.epil.init = phi i64 [ 0, %.lr.ph64.i.preheader ], [ %indvars.iv.next190.i.1, %format_input_.exit.loopexit218.unr-lcssa ]
  %.534562.i.epil.init = phi ptr [ %.val, %.lr.ph64.i.preheader ], [ %i.ra, %format_input_.exit.loopexit218.unr-lcssa ] ; 3 uses
  %lcmp.mod239 = trunc i32 %3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod239)
  %i.afm = load ptr, ptr %1, align 8, !tbaa !55
  %i.afn = getelementptr inbounds nuw [4 x i8], ptr %i.afm, i64 %indvars.iv189.i.epil.init
  %i.afo = load i32, ptr %i.afn, align 4, !tbaa !8 ; 3 uses
  %i.afp = trunc i32 %i.afo to i8
  %i.afq = getelementptr inbounds nuw i8, ptr %.534562.i.epil.init, i64 1
  store i8 %i.afp, ptr %.534562.i.epil.init, align 1, !tbaa !9
  %i.afr = lshr i32 %i.afo, 8
  %i.afs = trunc i32 %i.afr to i8
  %i.aft = getelementptr inbounds nuw i8, ptr %.534562.i.epil.init, i64 2
  store i8 %i.afs, ptr %i.afq, align 1, !tbaa !9
  %i.afu = lshr i32 %i.afo, 16
  %i.afv = trunc i32 %i.afu to i8
  store i8 %i.afv, ptr %i.aft, align 1, !tbaa !9
  br label %format_input_.exit

format_input_.exit.loopexit222.unr-lcssa:         ; preds = %bb.o
  %lcmp.mod228.not = icmp eq i64 %xtraiter227, 0
  br i1 %lcmp.mod228.not, label %format_input_.exit, label %.epil.preheader226

.epil.preheader226:                               ; preds = %format_input_.exit.loopexit222.unr-lcssa, %.lr.ph52.i
  %indvars.iv169.i.epil.init = phi i64 [ 0, %.lr.ph52.i ], [ %indvars.iv.next170.i.1, %format_input_.exit.loopexit222.unr-lcssa ] ; 4 uses
  %.232850.i.epil.init = phi ptr [ %.val, %.lr.ph52.i ], [ %i.ux, %format_input_.exit.loopexit222.unr-lcssa ] ; 4 uses
  %lcmp.mod229 = trunc i32 %3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod229)
  %i.afw = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %indvars.iv169.i.epil.init
  %i.afx = load i32, ptr %i.afw, align 4, !tbaa !8
  %i.afy = getelementptr inbounds nuw i8, ptr %.232850.i.epil.init, i64 4
  store i32 %i.afx, ptr %.232850.i.epil.init, align 4, !tbaa !8
  %i.afz = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %indvars.iv169.i.epil.init
  %i.aga = load i32, ptr %i.afz, align 4, !tbaa !8
  %i.agb = getelementptr inbounds nuw i8, ptr %.232850.i.epil.init, i64 8
  store i32 %i.aga, ptr %i.afy, align 4, !tbaa !8
  %i.agc = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %indvars.iv169.i.epil.init
  %i.agd = load i32, ptr %i.agc, align 4, !tbaa !8
  %i.age = getelementptr inbounds nuw i8, ptr %.232850.i.epil.init, i64 12
  store i32 %i.agd, ptr %i.agb, align 4, !tbaa !8
  %i.agf = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv169.i.epil.init
  %i.agg = load i32, ptr %i.agf, align 4, !tbaa !8
  store i32 %i.agg, ptr %i.age, align 4, !tbaa !8
  br label %format_input_.exit

format_input_.exit.loopexit223.unr-lcssa:         ; preds = %bb.p
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %format_input_.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %format_input_.exit.loopexit223.unr-lcssa, %.lr.ph49.i
  %indvars.iv164.i.epil.init = phi i64 [ 0, %.lr.ph49.i ], [ %indvars.iv.next165.i.1, %format_input_.exit.loopexit223.unr-lcssa ] ; 6 uses
  %.332947.i.epil.init = phi ptr [ %.val, %.lr.ph49.i ], [ %i.wh, %format_input_.exit.loopexit223.unr-lcssa ] ; 6 uses
  %lcmp.mod225 = trunc i32 %3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod225)
  %i.agh = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %indvars.iv164.i.epil.init
  %i.agi = load i32, ptr %i.agh, align 4, !tbaa !8
  %i.agj = getelementptr inbounds nuw i8, ptr %.332947.i.epil.init, i64 4
  store i32 %i.agi, ptr %.332947.i.epil.init, align 4, !tbaa !8
  %i.agk = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv164.i.epil.init
  %i.agl = load i32, ptr %i.agk, align 4, !tbaa !8
  %i.agm = getelementptr inbounds nuw i8, ptr %.332947.i.epil.init, i64 8
  store i32 %i.agl, ptr %i.agj, align 4, !tbaa !8
  %i.agn = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv164.i.epil.init
  %i.ago = load i32, ptr %i.agn, align 4, !tbaa !8
  %i.agp = getelementptr inbounds nuw i8, ptr %.332947.i.epil.init, i64 12
  store i32 %i.ago, ptr %i.agm, align 4, !tbaa !8
  %i.agq = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %indvars.iv164.i.epil.init
  %i.agr = load i32, ptr %i.agq, align 4, !tbaa !8
  %i.ags = getelementptr inbounds nuw i8, ptr %.332947.i.epil.init, i64 16
  store i32 %i.agr, ptr %i.agp, align 4, !tbaa !8
  %i.agt = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv164.i.epil.init
  %i.agu = load i32, ptr %i.agt, align 4, !tbaa !8
  %i.agv = getelementptr inbounds nuw i8, ptr %.332947.i.epil.init, i64 20
  store i32 %i.agu, ptr %i.ags, align 4, !tbaa !8
  %i.agw = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv164.i.epil.init
  %i.agx = load i32, ptr %i.agw, align 4, !tbaa !8
  store i32 %i.agx, ptr %i.agv, align 4, !tbaa !8
  br label %format_input_.exit

format_input_.exit:                               ; preds = %bb.q, %.epil.preheader, %format_input_.exit.loopexit223.unr-lcssa, %.epil.preheader226, %format_input_.exit.loopexit222.unr-lcssa, %scalar.ph.prol.loopexit, %scalar.ph, %scalar.ph156.prol.loopexit, %scalar.ph156, %bb.n, %.lr.ph64.i.epil.preheader, %format_input_.exit.loopexit218.unr-lcssa, %bb.m, %.epil.preheader242, %format_input_.exit.loopexit216.unr-lcssa, %.epil.preheader248, %format_input_.exit.loopexit215.unr-lcssa, %scalar.ph170, %scalar.ph185, %bb.j, %bb.i, %.epil.preheader254, %format_input_.exit.loopexit210.unr-lcssa, %.epil.preheader260, %format_input_.exit.loopexit209.unr-lcssa, %format_input_.exit.loopexit208.unr-lcssa, %.lr.ph94.i.epil, %._crit_edge.i, %._crit_edge103.i, %._crit_edge110.i, %._crit_edge117.i, %middle.block, %middle.block166, %middle.block181, %middle.block195, %.preheader43.i, %.preheader41.i, %.preheader39.i, %.preheader37.i, %.preheader35.i, %.preheader33.i, %.preheader31.i, %.preheader29.i, %.preheader27.i, %.preheader25.i, %.preheader23.i, %.preheader21.i, %.preheader19.i, %.preheader17.i, %.preheader15.i, %.preheader13.i, %.preheader11.i, %bb.r, %.preheader9.i, %.preheader6.i, %.preheader3.i, %.preheader1.i
  %i.agy = load ptr, ptr %i.o, align 8, !tbaa !9  ; 3 uses
  %i.agz = trunc i64 %i.e to i32                  ; 3 uses
  %i.aha = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.ahb = load i32, ptr %i.aha, align 8, !tbaa !8 ; 3 uses
  %i.ahc = add i32 %i.ahb, %i.agz                 ; 2 uses
  store i32 %i.ahc, ptr %i.aha, align 8, !tbaa !8
  %i.ahd = icmp ult i32 %i.ahc, %i.ahb
  br i1 %i.ahd, label %bb.v, label %bb.w

bb.v:                                             ; preds = %format_input_.exit
  %i.ahe = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.ahf = load i32, ptr %i.ahe, align 4, !tbaa !8
  %i.ahg = add i32 %i.ahf, 1
  store i32 %i.ahg, ptr %i.ahe, align 4, !tbaa !8
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %format_input_.exit
  %i.ahh = and i32 %i.ahb, 63
  %i.ahi = sub nuw nsw i32 64, %i.ahh             ; 3 uses
  %i.ahj = icmp ugt i32 %i.ahi, %i.agz
  %i.ahk = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.ahl = zext nneg i32 %i.ahi to i64            ; 3 uses
  %i.ahm = sub nsw i64 0, %i.ahl
  %i.ahn = getelementptr inbounds i8, ptr %i.ahk, i64 %i.ahm ; 2 uses
  br i1 %i.ahj, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.aho = and i64 %i.e, 4294967295
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.ahn, ptr noundef nonnull readonly align 1 %i.agy, i64 noundef range(i64 0, 65) %i.aho, i1 noundef false) #10
  br label %FLAC__MD5Update.exit

bb.y:                                             ; preds = %bb.w
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ahn, ptr noundef nonnull readonly align 1 dereferenceable(1) %i.agy, i64 noundef range(i64 0, 65) %i.ahl, i1 noundef false) #10
  tail call fastcc void @FLAC__MD5Transform(ptr noundef nonnull %i.ahk, ptr noundef nonnull %0)
  %i.ahp = getelementptr inbounds nuw i8, ptr %i.agy, i64 %i.ahl ; 2 uses
  %i.ahq = sub nuw i32 %i.agz, %i.ahi             ; 3 uses
  %i.ahr = icmp ugt i32 %i.ahq, 63
  br i1 %i.ahr, label %.lr.ph.i30, label %._crit_edge.i29

.lr.ph.i30:                                       ; preds = %bb.y, %.lr.ph.i30
  %.037.i = phi i32 [ %i.aht, %.lr.ph.i30 ], [ %i.ahq, %bb.y ]
  %.03236.i = phi ptr [ %i.ahs, %.lr.ph.i30 ], [ %i.ahp, %bb.y ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 1 dereferenceable(64) %.03236.i, i64 noundef 64, i1 noundef false) #10
  tail call fastcc void @FLAC__MD5Transform(ptr noundef nonnull %i.ahk, ptr noundef nonnull %0)
  %i.ahs = getelementptr inbounds nuw i8, ptr %.03236.i, i64 64 ; 2 uses
  %i.aht = add i32 %.037.i, -64                   ; 3 uses
  %i.ahu = icmp ugt i32 %i.aht, 63
  br i1 %i.ahu, label %.lr.ph.i30, label %._crit_edge.i29, !llvm.loop !49

._crit_edge.i29:                                  ; preds = %.lr.ph.i30, %bb.y
  %.032.lcssa.i = phi ptr [ %i.ahp, %bb.y ], [ %i.ahs, %.lr.ph.i30 ]
  %.0.lcssa.i = phi i32 [ %i.ahq, %bb.y ], [ %i.aht, %.lr.ph.i30 ]
  %i.ahv = zext nneg i32 %.0.lcssa.i to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 1 %.032.lcssa.i, i64 noundef range(i64 0, 65) %i.ahv, i1 noundef false) #10
  br label %FLAC__MD5Update.exit

FLAC__MD5Update.exit:                             ; preds = %._crit_edge.i29, %bb.x, %bb.a, %bb.e
  %.0 = phi i32 [ 0, %bb.a ], [ 0, %bb.e ], [ 1, %bb.x ], [ 1, %._crit_edge.i29 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

attributes #0 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind sspstrong memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nounwind }
attributes #11 = { nounwind allocsize(1) }
attributes #12 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!5, !5, i64 0}
!9 = !{!4, !4, i64 0}
!14 = distinct !{!14, !60, !61, !62}
!15 = distinct !{!15, !63}
!16 = distinct !{!16, !60, !61, !62}
!17 = distinct !{!17, !63}
!18 = distinct !{!18, !60, !61, !62}
!19 = distinct !{!19, !60, !61, !62}
!20 = distinct !{!20, !60}
!21 = distinct !{!21, !60}
!22 = distinct !{!22, !60}
!23 = distinct !{!23, !60}
!24 = distinct !{!24, !60}
!25 = distinct !{!25, !60, !62, !61}
!26 = distinct !{!26, !60, !62, !61}
!27 = distinct !{!27, !60}
!28 = distinct !{!28, !60}
!29 = distinct !{!29, !60}
!30 = distinct !{!30, !60}
!31 = distinct !{!31, !60}
!32 = distinct !{!32, !60, !61}
!33 = distinct !{!33, !60, !61}
!34 = distinct !{!34, !60}
!35 = distinct !{!35, !60}
!36 = distinct !{!36, !60}
!37 = distinct !{!37, !60}
!38 = distinct !{!38, !63}
!39 = distinct !{!39, !60}
!40 = distinct !{!40, !60}
!41 = distinct !{!41, !63}
!42 = distinct !{!42, !60}
!43 = distinct !{!43, !60}
!44 = distinct !{!44, !60}
!45 = distinct !{!45, !60}
!46 = distinct !{!46, !63}
!47 = distinct !{!47, !60}
!48 = distinct !{!48, !63}
!49 = distinct !{!49, !60}
!50 = !{!"long", !4, i64 0}
!51 = !{!"", !4, i64 0, !4, i64 64, !4, i64 80, !4, i64 88, !50, i64 96}
!52 = !{!51, !50, i64 96}
!53 = !{!"any pointer", !4, i64 0}
!54 = !{!"p1 int", !53, i64 0}
!55 = !{!54, !54, i64 0}
!60 = !{!"llvm.loop.mustprogress"}
!61 = !{!"llvm.loop.isvectorized", i32 1}
!62 = !{!"llvm.loop.unroll.runtime.disable"}
!63 = !{!"llvm.loop.unroll.disable"}
!64 = !{!"short", !4, i64 0}
!65 = !{!64, !64, i64 0}
!66 = distinct !{!66, i1 false, !"LVerDomain"}
!67 = distinct !{!67, !66}
!68 = !{!67}
!69 = distinct !{!69, !66}
!70 = !{!69}
!71 = distinct !{!71, !66}
!72 = !{!71}
!73 = !{!67, !69}
end_hunk_1
