Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/pngrutil?download=true
inline.NumInlined: 112
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 16
begin_hunk_0_@png_read_filter_row_avg:bb.a
  %.tr.1 = trunc nuw i16 %i.ds to i8
  %.narrow.1 = add i8 %i.dk, %.tr.1
  store i8 %.narrow.1, ptr %i.dj, align 1, !tbaa !71
  %i.dt = getelementptr inbounds nuw i8, ptr %.12132, i64 2
  %i.du = add nuw i64 %.12331, 2                  ; 2 uses
  %exitcond37.not.1 = icmp eq i64 %i.du, %i.h
  br i1 %exitcond37.not.1, label %._crit_edge, label %vec.epilog.scalar.ph91, !llvm.loop !413

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph91.prol.loopexit, %vec.epilog.scalar.ph91, %middle.block87, %vec.epilog.middle.block104, %.preheader
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @png_read_filter_row_paeth_1byte_pixel(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(address) %1, ptr nofree noundef readonly captures(none) %2) #5 !guid !422 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !116  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %i.b
  %i.d = load i8, ptr %2, align 1, !tbaa !71
  %i.e = zext i8 %i.d to i32                      ; 2 uses
  %i.f = load i8, ptr %1, align 1, !tbaa !71
  %i.g = zext i8 %i.f to i32
  %i.h = add nuw nsw i32 %i.g, %i.e               ; 2 uses
  %i.i = trunc i32 %i.h to i8
  store i8 %i.i, ptr %1, align 1, !tbaa !71
  %i.j = icmp samesign ugt i64 %i.b, 1
  br i1 %i.j, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %.04147 = getelementptr inbounds nuw i8, ptr %1, i64 1
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.04151 = phi ptr [ %.041, %.lr.ph ], [ %.04147, %.lr.ph.preheader ] ; 3 uses
  %.03850 = phi i32 [ %i.m, %.lr.ph ], [ %i.e, %.lr.ph.preheader ] ; 3 uses
  %.03949 = phi i32 [ %i.x, %.lr.ph ], [ %i.h, %.lr.ph.preheader ]
  %.pn48 = phi ptr [ %.040, %.lr.ph ], [ %2, %.lr.ph.preheader ]
  %.040 = getelementptr inbounds nuw i8, ptr %.pn48, i64 1 ; 2 uses
  %i.k = and i32 %.03949, 255                     ; 2 uses
  %i.l = load i8, ptr %.040, align 1, !tbaa !71
  %i.m = zext i8 %i.l to i32                      ; 3 uses
  %i.n = sub nsw i32 %i.m, %.03850                ; 2 uses
  %i.o = sub nsw i32 %i.k, %.03850                ; 2 uses
  %i.p = tail call i32 @llvm.abs.i32(i32 %i.n, i1 true) ; 2 uses
  %i.q = tail call i32 @llvm.abs.i32(i32 %i.o, i1 true) ; 2 uses
  %i.r = add nsw i32 %i.n, %i.o
  %i.s = tail call i32 @llvm.abs.i32(i32 %i.r, i1 true)
  %i.t = icmp samesign ult i32 %i.q, %i.p
  %.1 = select i1 %i.t, i32 %i.m, i32 %i.k
  %.0 = tail call i32 @llvm.umin.i32(i32 %i.q, i32 %i.p)
  %i.u = icmp samesign ult i32 %i.s, %.0
  %.2 = select i1 %i.u, i32 %.03850, i32 %.1
  %i.v = load i8, ptr %.04151, align 1, !tbaa !71
  %i.w = zext i8 %i.v to i32
  %i.x = add nuw nsw i32 %.2, %i.w                ; 2 uses
  %i.y = trunc i32 %i.x to i8
  store i8 %i.y, ptr %.04151, align 1, !tbaa !71
  %.041 = getelementptr inbounds nuw i8, ptr %.04151, i64 1 ; 2 uses
  %i.z = icmp ult ptr %.041, %i.c
  br i1 %i.z, label %.lr.ph, label %._crit_edge, !llvm.loop !421

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @png_read_filter_row_paeth_multibyte_pixel(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(address) %1, ptr nofree noundef readonly captures(none) %2) #5 !guid !437 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 19
  %i.c = load i8, ptr %i.b, align 1, !tbaa !115
  %i.d = zext i8 %i.c to i64
  %i.e = add nuw nsw i64 %i.d, 7
  %i.f = lshr i64 %i.e, 3                         ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 %i.f
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %bb.a
  %i.h = add i64 %i.f, %i.a
  %i.i = add i64 %i.a, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.h, i64 %i.i)
  %i.j = sub i64 %umax, %i.a                      ; 7 uses
  %min.iters.check = icmp ult i64 %i.j, 8
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.k = add i64 %i.f, %i.a
  %i.l = add i64 %i.a, 1
  %i.m = tail call i64 @llvm.umax.i64(i64 %i.k, i64 %i.l)
  %i.n = sub i64 %i.m, %i.a                       ; 2 uses
  %i.o = getelementptr i8, ptr %1, i64 %i.n
  %i.p = getelementptr i8, ptr %2, i64 %i.n
  %bound0 = icmp ult ptr %1, %i.p
  %bound1 = icmp ult ptr %2, %i.o
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check70 = icmp ult i64 %i.j, 32
  br i1 %min.iters.check70, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.q = and i64 %i.j, 24
  %n.vec = and i64 %i.j, -32                      ; 5 uses
  %i.r = getelementptr i8, ptr %1, i64 %n.vec     ; 2 uses
  %i.s = getelementptr i8, ptr %2, i64 %n.vec     ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %1, i64 %index ; 3 uses
  %next.gep71 = getelementptr i8, ptr %2, i64 %index ; 2 uses
  %i.t = getelementptr i8, ptr %next.gep, i64 16  ; 2 uses
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !71, !alias.scope !438, !noalias !439
  %wide.load72 = load <16 x i8>, ptr %i.t, align 1, !tbaa !71, !alias.scope !438, !noalias !439
  %i.u = getelementptr i8, ptr %next.gep71, i64 16
  %wide.load73 = load <16 x i8>, ptr %next.gep71, align 1, !tbaa !71, !alias.scope !439
  %wide.load74 = load <16 x i8>, ptr %i.u, align 1, !tbaa !71, !alias.scope !439
  %i.v = add <16 x i8> %wide.load73, %wide.load
  %i.w = add <16 x i8> %wide.load74, %wide.load72
  store <16 x i8> %i.v, ptr %next.gep, align 1, !tbaa !71, !alias.scope !438, !noalias !439
  store <16 x i8> %i.w, ptr %i.t, align 1, !tbaa !71, !alias.scope !438, !noalias !439
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !426

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.j, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.q, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !152

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec75 = and i64 %i.j, -8                     ; 4 uses
  %i.y = getelementptr i8, ptr %1, i64 %n.vec75   ; 2 uses
  %i.z = getelementptr i8, ptr %2, i64 %n.vec75   ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index76 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next81, %vec.epilog.vector.body ] ; 3 uses
  %next.gep77 = getelementptr i8, ptr %1, i64 %index76 ; 2 uses
  %next.gep78 = getelementptr i8, ptr %2, i64 %index76
  %wide.load79 = load <8 x i8>, ptr %next.gep77, align 1, !tbaa !71, !alias.scope !438, !noalias !439
  %wide.load80 = load <8 x i8>, ptr %next.gep78, align 1, !tbaa !71, !alias.scope !439
  %i.aa = add <8 x i8> %wide.load80, %wide.load79
  store <8 x i8> %i.aa, ptr %next.gep77, align 1, !tbaa !71, !alias.scope !438, !noalias !439
  %index.next81 = add nuw i64 %index76, 8         ; 2 uses
  %i.ab = icmp eq i64 %index.next81, %n.vec75
  br i1 %i.ab, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !427

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n82 = icmp eq i64 %i.j, %n.vec75
  br i1 %cmp.n82, label %._crit_edge.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.04656.ph = phi ptr [ %1, %iter.check ], [ %1, %vector.memcheck ], [ %i.r, %vec.epilog.iter.check ], [ %i.y, %vec.epilog.middle.block ]
  %.04855.ph = phi ptr [ %2, %iter.check ], [ %2, %vector.memcheck ], [ %i.s, %vec.epilog.iter.check ], [ %i.z, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.04656 = phi ptr [ %i.ag, %.lr.ph ], [ %.04656.ph, %.lr.ph.preheader ] ; 3 uses
  %.04855 = phi ptr [ %i.ad, %.lr.ph ], [ %.04855.ph, %.lr.ph.preheader ] ; 2 uses
  %i.ac = load i8, ptr %.04656, align 1, !tbaa !71
  %i.ad = getelementptr inbounds nuw i8, ptr %.04855, i64 1 ; 2 uses
  %i.ae = load i8, ptr %.04855, align 1, !tbaa !71
  %i.af = add i8 %i.ae, %i.ac
  %i.ag = getelementptr inbounds nuw i8, ptr %.04656, i64 1 ; 3 uses
  store i8 %i.af, ptr %.04656, align 1, !tbaa !71
  %i.ah = icmp ult ptr %i.ag, %i.g
  br i1 %i.ah, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !428

._crit_edge.loopexit:                             ; preds = %.lr.ph, %vec.epilog.middle.block, %middle.block
  %.lcssa67 = phi ptr [ %i.z, %vec.epilog.middle.block ], [ %i.s, %middle.block ], [ %i.ad, %.lr.ph ]
  %.lcssa = phi ptr [ %i.y, %vec.epilog.middle.block ], [ %i.r, %middle.block ], [ %i.ag, %.lr.ph ] ; 2 uses
  %.pre = ptrtoaddr ptr %.lcssa to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.046.lcssa64.pre-phi = phi i64 [ %.pre, %._crit_edge.loopexit ], [ %i.a, %bb.a ] ; 2 uses
  %.048.lcssa = phi ptr [ %.lcssa67, %._crit_edge.loopexit ], [ %2, %bb.a ] ; 10 uses
  %.046.lcssa = phi ptr [ %.lcssa, %._crit_edge.loopexit ], [ %1, %bb.a ] ; 13 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !116 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 %i.aj
  %i.al = icmp ult ptr %.046.lcssa, %i.ak
  br i1 %i.al, label %iter.check127, label %._crit_edge62

iter.check127:                                    ; preds = %._crit_edge
  %i.am = sub nsw i64 0, %i.f                     ; 8 uses
  %i.an = add i64 %i.aj, %i.a
  %i.ao = sub i64 %i.an, %.046.lcssa64.pre-phi    ; 9 uses
  %scevgep = getelementptr i8, ptr %.046.lcssa, i64 %i.ao ; 4 uses
  %min.iters.check100 = icmp ult i64 %i.ao, 4
  br i1 %min.iters.check100, label %vec.epilog.scalar.ph129.preheader, label %vector.memcheck101

vector.memcheck101:                               ; preds = %iter.check127
  %3 = getelementptr i8, ptr %.048.lcssa, i64 %i.ao
  %i.ap = getelementptr i8, ptr %.048.lcssa, i64 %i.am
  %i.aq = add i64 %i.aj, %i.a
  %i.ar = add i64 %.046.lcssa64.pre-phi, %i.f
  %i.as = sub i64 %i.aq, %i.ar                    ; 2 uses
  %i.at = getelementptr i8, ptr %.048.lcssa, i64 %i.as
  %i.au = getelementptr i8, ptr %.046.lcssa, i64 %i.am
  %i.av = getelementptr i8, ptr %.046.lcssa, i64 %i.as
  %bound0102 = icmp ult ptr %.046.lcssa, %3
  %bound1103 = icmp ult ptr %.048.lcssa, %scevgep
  %found.conflict104 = and i1 %bound0102, %bound1103
  %bound0105 = icmp ult ptr %.046.lcssa, %i.at
  %bound1106 = icmp ult ptr %i.ap, %scevgep
  %found.conflict107 = and i1 %bound0105, %bound1106
  %conflict.rdx = or i1 %found.conflict104, %found.conflict107
  %bound0108 = icmp ult ptr %.046.lcssa, %i.av
  %bound1109 = icmp ult ptr %i.au, %scevgep
  %found.conflict110 = and i1 %bound0108, %bound1109
  %conflict.rdx111 = or i1 %conflict.rdx, %found.conflict110
  br i1 %conflict.rdx111, label %vec.epilog.scalar.ph129.preheader, label %vector.main.loop.iter.check112

vector.main.loop.iter.check112:                   ; preds = %vector.memcheck101
  %min.iters.check113 = icmp ult i64 %i.ao, 16
  br i1 %min.iters.check113, label %vec.epilog.ph131, label %vector.ph114

vector.ph114:                                     ; preds = %vector.main.loop.iter.check112
  %i.aw = and i64 %i.ao, 12
  %n.vec115 = and i64 %i.ao, -16                  ; 5 uses
  %i.ax = getelementptr i8, ptr %.046.lcssa, i64 %n.vec115
  %i.ay = getelementptr i8, ptr %.048.lcssa, i64 %n.vec115
  br label %vector.body116

vector.body116:                                   ; preds = %vector.ph114, %vector.body116
  %index117 = phi i64 [ 0, %vector.ph114 ], [ %index.next124, %vector.body116 ] ; 3 uses
  %next.gep118 = getelementptr i8, ptr %.046.lcssa, i64 %index117 ; 3 uses
  %next.gep119 = getelementptr i8, ptr %.048.lcssa, i64 %index117 ; 2 uses
  %i.az = getelementptr inbounds i8, ptr %next.gep119, i64 %i.am
  %wide.load120 = load <16 x i8>, ptr %i.az, align 1, !tbaa !71, !alias.scope !440 ; 2 uses
  %i.ba = zext <16 x i8> %wide.load120 to <16 x i32> ; 2 uses
  %i.bb = getelementptr inbounds i8, ptr %next.gep118, i64 %i.am
  %wide.load121 = load <16 x i8>, ptr %i.bb, align 1, !tbaa !71, !alias.scope !441 ; 2 uses
  %i.bc = zext <16 x i8> %wide.load121 to <16 x i32>
  %wide.load122 = load <16 x i8>, ptr %next.gep119, align 1, !tbaa !71, !alias.scope !442 ; 2 uses
  %i.bd = zext <16 x i8> %wide.load122 to <16 x i32>
  %i.be = sub nsw <16 x i32> %i.bd, %i.ba         ; 2 uses
  %i.bf = sub nsw <16 x i32> %i.bc, %i.ba         ; 2 uses
  %i.bg = tail call <16 x i32> @llvm.abs.v16i32(<16 x i32> %i.be, i1 true) ; 2 uses
  %i.bh = tail call <16 x i32> @llvm.abs.v16i32(<16 x i32> %i.bf, i1 true) ; 2 uses
  %i.bi = add nsw <16 x i32> %i.be, %i.bf
  %i.bj = tail call <16 x i32> @llvm.abs.v16i32(<16 x i32> %i.bi, i1 true)
  %i.bk = icmp samesign ult <16 x i32> %i.bh, %i.bg
  %i.bl = select <16 x i1> %i.bk, <16 x i8> %wide.load122, <16 x i8> %wide.load121
  %i.bm = tail call <16 x i32> @llvm.umin.v16i32(<16 x i32> %i.bh, <16 x i32> %i.bg)
  %i.bn = icmp samesign ult <16 x i32> %i.bj, %i.bm
  %i.bo = select <16 x i1> %i.bn, <16 x i8> %wide.load120, <16 x i8> %i.bl
  %wide.load123 = load <16 x i8>, ptr %next.gep118, align 1, !tbaa !71, !alias.scope !443, !noalias !444
  %i.bp = add <16 x i8> %i.bo, %wide.load123
  store <16 x i8> %i.bp, ptr %next.gep118, align 1, !tbaa !71, !alias.scope !443, !noalias !444
  %index.next124 = add nuw i64 %index117, 16      ; 2 uses
  %i.bq = icmp eq i64 %index.next124, %n.vec115
  br i1 %i.bq, label %middle.block125, label %vector.body116, !llvm.loop !434

middle.block125:                                  ; preds = %vector.body116
  %cmp.n126 = icmp eq i64 %i.ao, %n.vec115
  br i1 %cmp.n126, label %._crit_edge62, label %vec.epilog.iter.check128

vec.epilog.iter.check128:                         ; preds = %middle.block125
  %min.epilog.iters.check130 = icmp eq i64 %i.aw, 0
  br i1 %min.epilog.iters.check130, label %vec.epilog.scalar.ph129.preheader, label %vec.epilog.ph131, !prof !113

vec.epilog.ph131:                                 ; preds = %vector.main.loop.iter.check112, %vec.epilog.iter.check128
  %vec.epilog.resume.val132 = phi i64 [ %n.vec115, %vec.epilog.iter.check128 ], [ 0, %vector.main.loop.iter.check112 ]
  %n.vec133 = and i64 %i.ao, -4                   ; 4 uses
  %i.br = getelementptr i8, ptr %.046.lcssa, i64 %n.vec133
  %i.bs = getelementptr i8, ptr %.048.lcssa, i64 %n.vec133
  br label %vec.epilog.vector.body134

vec.epilog.vector.body134:                        ; preds = %vec.epilog.vector.body134, %vec.epilog.ph131
  %index135 = phi i64 [ %vec.epilog.resume.val132, %vec.epilog.ph131 ], [ %index.next142, %vec.epilog.vector.body134 ] ; 3 uses
  %next.gep136 = getelementptr i8, ptr %.046.lcssa, i64 %index135 ; 3 uses
  %next.gep137 = getelementptr i8, ptr %.048.lcssa, i64 %index135 ; 2 uses
  %i.bt = getelementptr inbounds i8, ptr %next.gep137, i64 %i.am
  %wide.load138 = load <4 x i8>, ptr %i.bt, align 1, !tbaa !71, !alias.scope !440 ; 2 uses
  %i.bu = zext <4 x i8> %wide.load138 to <4 x i32> ; 2 uses
  %i.bv = getelementptr inbounds i8, ptr %next.gep136, i64 %i.am
  %wide.load139 = load <4 x i8>, ptr %i.bv, align 1, !tbaa !71, !alias.scope !441 ; 2 uses
  %i.bw = zext <4 x i8> %wide.load139 to <4 x i32>
  %wide.load140 = load <4 x i8>, ptr %next.gep137, align 1, !tbaa !71, !alias.scope !442 ; 2 uses
  %i.bx = zext <4 x i8> %wide.load140 to <4 x i32>
  %i.by = sub nsw <4 x i32> %i.bx, %i.bu          ; 2 uses
  %i.bz = sub nsw <4 x i32> %i.bw, %i.bu          ; 2 uses
  %i.ca = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.by, i1 true) ; 2 uses
  %i.cb = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.bz, i1 true) ; 2 uses
  %i.cc = add nsw <4 x i32> %i.by, %i.bz
  %i.cd = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.cc, i1 true)
  %i.ce = icmp samesign ult <4 x i32> %i.cb, %i.ca
  %i.cf = select <4 x i1> %i.ce, <4 x i8> %wide.load140, <4 x i8> %wide.load139
  %i.cg = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.cb, <4 x i32> %i.ca)
  %i.ch = icmp samesign ult <4 x i32> %i.cd, %i.cg
  %i.ci = select <4 x i1> %i.ch, <4 x i8> %wide.load138, <4 x i8> %i.cf
  %wide.load141 = load <4 x i8>, ptr %next.gep136, align 1, !tbaa !71, !alias.scope !443, !noalias !444
  %i.cj = add <4 x i8> %i.ci, %wide.load141
  store <4 x i8> %i.cj, ptr %next.gep136, align 1, !tbaa !71, !alias.scope !443, !noalias !444
  %index.next142 = add nuw i64 %index135, 4       ; 2 uses
  %i.ck = icmp eq i64 %index.next142, %n.vec133
  br i1 %i.ck, label %vec.epilog.middle.block143, label %vec.epilog.vector.body134, !llvm.loop !435

vec.epilog.middle.block143:                       ; preds = %vec.epilog.vector.body134
  %cmp.n144 = icmp eq i64 %i.ao, %n.vec133
  br i1 %cmp.n144, label %._crit_edge62, label %vec.epilog.scalar.ph129.preheader

vec.epilog.scalar.ph129.preheader:                ; preds = %iter.check127, %vector.memcheck101, %vec.epilog.iter.check128, %vec.epilog.middle.block143
  %.14759.ph = phi ptr [ %.046.lcssa, %iter.check127 ], [ %.046.lcssa, %vector.memcheck101 ], [ %i.ax, %vec.epilog.iter.check128 ], [ %i.br, %vec.epilog.middle.block143 ]
  %.14958.ph = phi ptr [ %.048.lcssa, %iter.check127 ], [ %.048.lcssa, %vector.memcheck101 ], [ %i.ay, %vec.epilog.iter.check128 ], [ %i.bs, %vec.epilog.middle.block143 ]
  br label %vec.epilog.scalar.ph129

vec.epilog.scalar.ph129:                          ; preds = %vec.epilog.scalar.ph129.preheader, %vec.epilog.scalar.ph129
  %.14759 = phi ptr [ %i.de, %vec.epilog.scalar.ph129 ], [ %.14759.ph, %vec.epilog.scalar.ph129.preheader ] ; 4 uses
  %.14958 = phi ptr [ %i.cr, %vec.epilog.scalar.ph129 ], [ %.14958.ph, %vec.epilog.scalar.ph129.preheader ] ; 3 uses
  %i.cl = getelementptr inbounds i8, ptr %.14958, i64 %i.am
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !71  ; 2 uses
  %i.cn = zext i8 %i.cm to i32                    ; 2 uses
  %i.co = getelementptr inbounds i8, ptr %.14759, i64 %i.am
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !71  ; 2 uses
  %i.cq = zext i8 %i.cp to i32
  %i.cr = getelementptr inbounds nuw i8, ptr %.14958, i64 1
  %i.cs = load i8, ptr %.14958, align 1, !tbaa !71 ; 2 uses
  %i.ct = zext i8 %i.cs to i32
  %i.cu = sub nsw i32 %i.ct, %i.cn                ; 2 uses
  %i.cv = sub nsw i32 %i.cq, %i.cn                ; 2 uses
  %i.cw = tail call i32 @llvm.abs.i32(i32 %i.cu, i1 true) ; 2 uses
  %i.cx = tail call i32 @llvm.abs.i32(i32 %i.cv, i1 true) ; 2 uses
  %i.cy = add nsw i32 %i.cu, %i.cv
  %i.cz = tail call i32 @llvm.abs.i32(i32 %i.cy, i1 true)
  %i.da = icmp samesign ult i32 %i.cx, %i.cw
  %.045 = select i1 %i.da, i8 %i.cs, i8 %i.cp
  %.0 = tail call i32 @llvm.umin.i32(i32 %i.cx, i32 %i.cw)
  %i.db = icmp samesign ult i32 %i.cz, %.0
  %.1 = select i1 %i.db, i8 %i.cm, i8 %.045
  %i.dc = load i8, ptr %.14759, align 1, !tbaa !71
  %i.dd = add i8 %.1, %i.dc
  %i.de = getelementptr inbounds nuw i8, ptr %.14759, i64 1 ; 2 uses
  store i8 %i.dd, ptr %.14759, align 1, !tbaa !71
  %exitcond.not = icmp eq ptr %i.de, %scevgep
  br i1 %exitcond.not, label %._crit_edge62, label %vec.epilog.scalar.ph129, !llvm.loop !436

._crit_edge62:                                    ; preds = %vec.epilog.scalar.ph129, %middle.block125, %vec.epilog.middle.block143, %._crit_edge
  ret void
}

declare void @png_init_filter_functions_sse2(ptr noundef, i32 noundef) local_unnamed_addr #4

declare i64 @png_safecat(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

declare i32 @inflateReset2(ptr noundef, i32 noundef) local_unnamed_addr #4

declare i32 @inflateInit2_(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.experimental.cttz.elts.i64.v16i1(<16 x i1>, i1 immarg) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i32> @llvm.abs.v16i32(<16 x i32>, i1 immarg) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i32> @llvm.umin.v16i32(<16 x i32>, <16 x i32>) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.abs.v4i32(<4 x i32>, i1 immarg) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umin.v4i32(<4 x i32>, <4 x i32>) #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { noreturn nounwind }
end_hunk_0
begin_hunk_1_@llvm.umin.v4i32
!244 = !{i64 127432968789740556}
!245 = distinct !{!245, !91}
!246 = distinct !{!246, i1 true, !"png_read_finish_IDAT"}
!247 = distinct !{!247, !246, !"png_read_finish_IDAT: argument 0"}
!248 = !{i64 1933192841335728520}
!249 = !{!87, !5, i64 540}
!250 = !{!247}
!251 = !{i64 -1556250311081739835}
!252 = !{!87, !4, i64 296}
!253 = !{!87, !4, i64 297}
!254 = !{!87, !4, i64 630}
!255 = !{!87, !74, i64 1168}
!256 = !{!87, !75, i64 1080}
!257 = !{!87, !75, i64 1200}
!258 = !{i64 -6353404850115905249}
!259 = !{!87, !5, i64 960}
!260 = distinct !{!260, i1 true, !"png_get_uint_31"}
!261 = distinct !{!261, !260, !"png_get_uint_31: argument 0"}
!262 = distinct !{!262, i1 true, !"png_get_uint_31"}
!263 = distinct !{!263, !262, !"png_get_uint_31: argument 0"}
!264 = !{i64 7941815961295188055}
!265 = !{!261}
!266 = !{!263}
!267 = !{!87, !4, i64 1052}
!268 = !{!87, !4, i64 1112}
!269 = distinct !{!269, !91}
!270 = !{i64 -8542527463541214767}
!271 = !{i64 -5302418032668461560}
!272 = !{i64 -5661567321081023039}
!273 = !{!81, !4, i64 0}
!274 = !{!143, !80, i64 32}
!275 = !{!87, !79, i64 600}
!276 = !{!81, !80, i64 2}
!277 = !{!81, !80, i64 4}
!278 = !{!81, !80, i64 6}
!279 = !{!81, !80, i64 8}
!280 = !{i64 6076894593706902351}
!281 = !{i64 7293648396928861721}
!282 = !{i64 -1694996084904604558}
!283 = distinct !{!283, i1 true, !"png_read_buffer"}
!284 = distinct !{!284, !283, !"png_read_buffer: argument 0"}
!285 = !{i64 7873692241700409394}
!286 = !{!284}
!287 = !{i64 -6391684270448099982}
!288 = distinct !{!288, !91}
!289 = !{i64 -2866086346570981471}
!290 = distinct !{!290, !91, !109, !108}
!291 = !{i64 7546518932516862927}
!292 = !{!143, !75, i64 56}
!293 = !{!143, !5, i64 72}
!294 = !{!143, !75, i64 64}
!295 = !{!143, !5, i64 252}
!296 = !{!143, !5, i64 8}
!297 = distinct !{!297, i1 true, !"png_read_buffer"}
!298 = distinct !{!298, !297, !"png_read_buffer: argument 0"}
!299 = distinct !{!299, !91}
!300 = distinct !{!300, !91}
!301 = distinct !{!301, !91}
!302 = !{i64 4471445299237920496}
!303 = !{!298}
!304 = !{!147, !75, i64 40}
!305 = !{!147, !75, i64 48}
!306 = !{!147, !74, i64 32}
!307 = !{i64 -2476382310385466101}
!308 = !{i64 -5229567040871285582}
!309 = distinct !{!309, i1 true, !"png_read_buffer"}
!310 = distinct !{!310, !309, !"png_read_buffer: argument 0"}
!311 = distinct !{!311, !91}
!312 = distinct !{!312, !91}
!313 = !{i64 -5104190928671529357}
!314 = !{!310}
!315 = !{!75, !75, i64 0}
!316 = !{i64 -8005539145072673855}
!317 = distinct !{!317, !91}
!318 = !{i64 4027313589771173782}
!319 = !{!87, !4, i64 787}
!320 = !{!87, !4, i64 784}
!321 = !{!87, !4, i64 785}
!322 = !{!87, !4, i64 786}
!323 = !{!87, !4, i64 788}
!324 = distinct !{!324, i1 true, !"png_read_buffer"}
!325 = distinct !{!325, !324, !"png_read_buffer: argument 0"}
!326 = !{i64 4539342261085593178}
!327 = !{!325}
!328 = distinct !{!328, i1 true, !"png_read_buffer"}
!329 = distinct !{!329, !328, !"png_read_buffer: argument 0"}
!330 = distinct !{!330, !91}
!331 = !{i64 1564959681396243118}
!332 = !{!329}
!333 = !{!"p1 _ZTS21png_sPLT_entry_struct", !72, i64 0}
!334 = !{!"png_sPLT_struct", !75, i64 0, !4, i64 8, !333, i64 16, !5, i64 24}
!335 = !{!334, !4, i64 8}
!336 = !{!334, !5, i64 24}
!337 = !{!334, !333, i64 16}
!338 = !{!"png_sPLT_entry_struct", !80, i64 0, !80, i64 2, !80, i64 4, !80, i64 6, !80, i64 8}
!339 = !{!338, !80, i64 0}
!340 = !{!338, !80, i64 2}
!341 = !{!338, !80, i64 4}
!342 = !{!338, !80, i64 6}
!343 = !{!338, !80, i64 8}
!344 = !{!334, !75, i64 0}
!345 = !{i64 3847297093042494111}
!346 = distinct !{!346, i1 true, !"png_read_buffer"}
!347 = distinct !{!347, !346, !"png_read_buffer: argument 0"}
!348 = !{i64 -1498253565775302153}
!349 = !{!347}
!350 = !{i64 -1123316465401388502}
!351 = !{!138, !4, i64 6}
!352 = !{!138, !80, i64 0}
!353 = !{i64 -3670364264867367878}
!354 = !{!87, !80, i64 816}
!355 = !{!87, !80, i64 810}
!356 = !{!87, !80, i64 812}
!357 = !{!87, !80, i64 814}
!358 = distinct !{!358, i1 true, !"png_read_buffer"}
!359 = distinct !{!359, !358, !"png_read_buffer: argument 0"}
!360 = distinct !{!360, !91}
!361 = !{i64 1546724912328294241}
!362 = !{!359}
!363 = distinct !{!363, i1 true, !"png_zlib_inflate"}
!364 = distinct !{!364, !363, !"png_zlib_inflate: argument 0"}
!365 = !{i64 1790308348458729432}
!366 = !{!364}
!367 = !{i64 6177695818043177421}
!368 = distinct !{!368, i1 true, !"png_zlib_inflate"}
!369 = distinct !{!369, !368, !"png_zlib_inflate: argument 0:Peel0"}
!370 = distinct !{!370, i1 true, !"png_zlib_inflate"}
!371 = distinct !{!371, !370, !"png_zlib_inflate: argument 0:Peel0"}
!372 = distinct !{!372, i1 true, !"png_zlib_inflate"}
!373 = distinct !{!373, !372, !"png_zlib_inflate: argument 0"}
!374 = distinct !{!374, !91, !380}
!375 = distinct !{!375, !91, !380}
!376 = !{i64 7311984902803412623}
!377 = !{!369}
!378 = !{!371}
!379 = !{!373}
!380 = !{!"llvm.loop.peeled.count", i32 1}
!381 = distinct !{!381, i1 false, !"LVerDomain"}
!382 = distinct !{!382, !381}
!383 = distinct !{!383, !381}
!384 = distinct !{!384, !91, !108, !109}
!385 = distinct !{!385, !91, !108, !109}
!386 = distinct !{!386, !110}
!387 = distinct !{!387, !91, !108}
!388 = !{i64 3402077123676491641}
!389 = !{!382}
!390 = !{!383}
!391 = distinct !{!391, i1 false, !"LVerDomain"}
!392 = distinct !{!392, !391}
!393 = distinct !{!393, !391}
!394 = distinct !{!394, !91, !108, !109}
!395 = distinct !{!395, !91, !108, !109}
!396 = distinct !{!396, !110}
!397 = distinct !{!397, !91, !108}
!398 = !{i64 4660783007382190690}
!399 = !{!392}
!400 = !{!393}
!401 = distinct !{!401, i1 false, !"LVerDomain"}
!402 = distinct !{!402, !401}
!403 = distinct !{!403, !401}
!404 = distinct !{!404, !91, !108, !109}
!405 = distinct !{!405, !110}
!406 = distinct !{!406, i1 false, !"LVerDomain"}
!407 = distinct !{!407, !406}
!408 = distinct !{!408, !406}
!409 = distinct !{!409, !406}
!410 = distinct !{!410, !91, !108, !109}
!411 = distinct !{!411, !91, !108, !109}
!412 = distinct !{!412, !91, !108}
!413 = distinct !{!413, !91, !108}
!414 = !{i64 -1991605682182737352}
!415 = !{!402}
!416 = !{!403}
!417 = !{!407}
!418 = !{!409, !408}
!419 = !{!409}
!420 = !{!408}
!421 = distinct !{!421, !91}
!422 = !{i64 -737609992047165608}
!423 = distinct !{!423, i1 false, !"LVerDomain"}
!424 = distinct !{!424, !423}
!425 = distinct !{!425, !423}
!426 = distinct !{!426, !91, !108, !109}
!427 = distinct !{!427, !91, !108, !109}
!428 = distinct !{!428, !91, !108}
!429 = distinct !{!429, i1 false, !"LVerDomain"}
!430 = distinct !{!430, !429}
!431 = distinct !{!431, !429}
!432 = distinct !{!432, !429}
!433 = distinct !{!433, !429}
!434 = distinct !{!434, !91, !108, !109}
!435 = distinct !{!435, !91, !108, !109}
!436 = distinct !{!436, !91, !108}
!437 = !{i64 5566751953060750837}
!438 = !{!424}
!439 = !{!425}
!440 = !{!430}
!441 = !{!431}
!442 = !{!432}
!443 = !{!433}
!444 = !{!432, !430, !431}
end_hunk_1
