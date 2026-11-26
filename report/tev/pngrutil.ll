Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/pngrutil?download=true
inline.NumInlined: 132
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 16
begin_hunk_0_@png_read_filter_row_avg:bb.a
  %.tr.1 = trunc nuw i16 %i.ds to i8
  %.narrow.1 = add i8 %i.dk, %.tr.1
  store i8 %.narrow.1, ptr %i.dj, align 1, !tbaa !10
  %i.dt = getelementptr inbounds nuw i8, ptr %.12132, i64 2
  %i.du = add nuw i64 %.12331, 2                  ; 2 uses
  %exitcond37.not.1 = icmp eq i64 %i.du, %i.h
  br i1 %exitcond37.not.1, label %._crit_edge, label %vec.epilog.scalar.ph91, !llvm.loop !333

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph91.prol.loopexit, %vec.epilog.scalar.ph91, %middle.block87, %vec.epilog.middle.block104, %.preheader
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @png_read_filter_row_paeth_1byte_pixel(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(address) %1, ptr nofree noundef readonly captures(none) %2) #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !72   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %i.b
  %i.d = load i8, ptr %2, align 1, !tbaa !10
  %i.e = zext i8 %i.d to i32                      ; 2 uses
  %i.f = load i8, ptr %1, align 1, !tbaa !10
  %i.g = zext i8 %i.f to i32
  %i.h = add nuw nsw i32 %i.g, %i.e               ; 2 uses
  %i.i = trunc i32 %i.h to i8
  store i8 %i.i, ptr %1, align 1, !tbaa !10
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
  %i.l = load i8, ptr %.040, align 1, !tbaa !10
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
  %i.v = load i8, ptr %.04151, align 1, !tbaa !10
  %i.w = zext i8 %i.v to i32
  %i.x = add nuw nsw i32 %.2, %i.w                ; 2 uses
  %i.y = trunc i32 %i.x to i8
  store i8 %i.y, ptr %.04151, align 1, !tbaa !10
  %.041 = getelementptr inbounds nuw i8, ptr %.04151, i64 1 ; 2 uses
  %i.z = icmp ult ptr %.041, %i.c
  br i1 %i.z, label %.lr.ph, label %._crit_edge, !llvm.loop !340

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @png_read_filter_row_paeth_multibyte_pixel(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(address) %1, ptr nofree noundef readonly captures(none) %2) #7 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 19
  %i.c = load i8, ptr %i.b, align 1, !tbaa !71
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
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !10, !alias.scope !355, !noalias !356
  %wide.load72 = load <16 x i8>, ptr %i.t, align 1, !tbaa !10, !alias.scope !355, !noalias !356
  %i.u = getelementptr i8, ptr %next.gep71, i64 16
  %wide.load73 = load <16 x i8>, ptr %next.gep71, align 1, !tbaa !10, !alias.scope !356
  %wide.load74 = load <16 x i8>, ptr %i.u, align 1, !tbaa !10, !alias.scope !356
  %i.v = add <16 x i8> %wide.load73, %wide.load
  %i.w = add <16 x i8> %wide.load74, %wide.load72
  store <16 x i8> %i.v, ptr %next.gep, align 1, !tbaa !10, !alias.scope !355, !noalias !356
  store <16 x i8> %i.w, ptr %i.t, align 1, !tbaa !10, !alias.scope !355, !noalias !356
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !344

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.j, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.q, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !99

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
  %wide.load79 = load <8 x i8>, ptr %next.gep77, align 1, !tbaa !10, !alias.scope !355, !noalias !356
  %wide.load80 = load <8 x i8>, ptr %next.gep78, align 1, !tbaa !10, !alias.scope !356
  %i.aa = add <8 x i8> %wide.load80, %wide.load79
  store <8 x i8> %i.aa, ptr %next.gep77, align 1, !tbaa !10, !alias.scope !355, !noalias !356
  %index.next81 = add nuw i64 %index76, 8         ; 2 uses
  %i.ab = icmp eq i64 %index.next81, %n.vec75
  br i1 %i.ab, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !345

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
  %i.ac = load i8, ptr %.04656, align 1, !tbaa !10
  %i.ad = getelementptr inbounds nuw i8, ptr %.04855, i64 1 ; 2 uses
  %i.ae = load i8, ptr %.04855, align 1, !tbaa !10
  %i.af = add i8 %i.ae, %i.ac
  %i.ag = getelementptr inbounds nuw i8, ptr %.04656, i64 1 ; 3 uses
  store i8 %i.af, ptr %.04656, align 1, !tbaa !10
  %i.ah = icmp ult ptr %i.ag, %i.g
  br i1 %i.ah, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !346

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
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !72 ; 3 uses
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
  %wide.load120 = load <16 x i8>, ptr %i.az, align 1, !tbaa !10, !alias.scope !357 ; 2 uses
  %i.ba = zext <16 x i8> %wide.load120 to <16 x i32> ; 2 uses
  %i.bb = getelementptr inbounds i8, ptr %next.gep118, i64 %i.am
  %wide.load121 = load <16 x i8>, ptr %i.bb, align 1, !tbaa !10, !alias.scope !358 ; 2 uses
  %i.bc = zext <16 x i8> %wide.load121 to <16 x i32>
  %wide.load122 = load <16 x i8>, ptr %next.gep119, align 1, !tbaa !10, !alias.scope !359 ; 2 uses
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
  %wide.load123 = load <16 x i8>, ptr %next.gep118, align 1, !tbaa !10, !alias.scope !360, !noalias !361
  %i.bp = add <16 x i8> %i.bo, %wide.load123
  store <16 x i8> %i.bp, ptr %next.gep118, align 1, !tbaa !10, !alias.scope !360, !noalias !361
  %index.next124 = add nuw i64 %index117, 16      ; 2 uses
  %i.bq = icmp eq i64 %index.next124, %n.vec115
  br i1 %i.bq, label %middle.block125, label %vector.body116, !llvm.loop !352

middle.block125:                                  ; preds = %vector.body116
  %cmp.n126 = icmp eq i64 %i.ao, %n.vec115
  br i1 %cmp.n126, label %._crit_edge62, label %vec.epilog.iter.check128

vec.epilog.iter.check128:                         ; preds = %middle.block125
  %min.epilog.iters.check130 = icmp eq i64 %i.aw, 0
  br i1 %min.epilog.iters.check130, label %vec.epilog.scalar.ph129.preheader, label %vec.epilog.ph131, !prof !69

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
  %wide.load138 = load <4 x i8>, ptr %i.bt, align 1, !tbaa !10, !alias.scope !357 ; 2 uses
  %i.bu = zext <4 x i8> %wide.load138 to <4 x i32> ; 2 uses
  %i.bv = getelementptr inbounds i8, ptr %next.gep136, i64 %i.am
  %wide.load139 = load <4 x i8>, ptr %i.bv, align 1, !tbaa !10, !alias.scope !358 ; 2 uses
  %i.bw = zext <4 x i8> %wide.load139 to <4 x i32>
  %wide.load140 = load <4 x i8>, ptr %next.gep137, align 1, !tbaa !10, !alias.scope !359 ; 2 uses
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
  %wide.load141 = load <4 x i8>, ptr %next.gep136, align 1, !tbaa !10, !alias.scope !360, !noalias !361
  %i.cj = add <4 x i8> %i.ci, %wide.load141
  store <4 x i8> %i.cj, ptr %next.gep136, align 1, !tbaa !10, !alias.scope !360, !noalias !361
  %index.next142 = add nuw i64 %index135, 4       ; 2 uses
  %i.ck = icmp eq i64 %index.next142, %n.vec133
  br i1 %i.ck, label %vec.epilog.middle.block143, label %vec.epilog.vector.body134, !llvm.loop !353

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
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !10  ; 2 uses
  %i.cn = zext i8 %i.cm to i32                    ; 2 uses
  %i.co = getelementptr inbounds i8, ptr %.14759, i64 %i.am
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !10  ; 2 uses
  %i.cq = zext i8 %i.cp to i32
  %i.cr = getelementptr inbounds nuw i8, ptr %.14958, i64 1
  %i.cs = load i8, ptr %.14958, align 1, !tbaa !10 ; 2 uses
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
  %i.dc = load i8, ptr %.14759, align 1, !tbaa !10
  %i.dd = add i8 %.1, %i.dc
  %i.de = getelementptr inbounds nuw i8, ptr %.14759, i64 1 ; 2 uses
  store i8 %i.dd, ptr %.14759, align 1, !tbaa !10
  %exitcond.not = icmp eq ptr %i.de, %scevgep
  br i1 %exitcond.not, label %._crit_edge62, label %vec.epilog.scalar.ph129, !llvm.loop !354

._crit_edge62:                                    ; preds = %vec.epilog.scalar.ph129, %middle.block125, %vec.epilog.middle.block143, %._crit_edge
  ret void
}

declare void @png_target_init_filter_functions(ptr noundef, i32 noundef) local_unnamed_addr #4

declare i64 @png_safecat(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

declare i32 @inflateReset2(ptr noundef, i32 noundef) local_unnamed_addr #4

declare i32 @inflateInit2_(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.experimental.cttz.elts.i64.v16i1(<16 x i1>, i1 immarg) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i32> @llvm.abs.v16i32(<16 x i32>, i1 immarg) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i32> @llvm.umin.v16i32(<16 x i32>, <16 x i32>) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.abs.v4i32(<4 x i32>, i1 immarg) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umin.v4i32(<4 x i32>, <4 x i32>) #10

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
end_hunk_0
begin_hunk_1_@llvm.umin.v4i32
!161 = distinct !{!161, !30}
!162 = distinct !{!162, !30}
!163 = distinct !{!163, !30}
!164 = distinct !{!164, !30}
!165 = distinct !{!165, !30}
!166 = distinct !{!166, !30}
!167 = distinct !{!167, !66}
!168 = distinct !{!168, !30}
!169 = !{!70, !7, i64 0}
!170 = distinct !{!170, i1 true, !"png_init_filter_functions"}
!171 = distinct !{!171, !170, !"png_init_filter_functions: argument 0"}
!172 = !{!11, !11, i64 0}
!173 = !{!171}
!174 = distinct !{!174, i1 true, !"png_crc_finish_critical"}
!175 = distinct !{!175, !174, !"png_crc_finish_critical: argument 0"}
!176 = distinct !{!176, i1 true, !"png_crc_error"}
!177 = distinct !{!177, !176, !"png_crc_error: argument 0:thread"}
!178 = distinct !{!178, i1 true, !"png_crc_error"}
!179 = distinct !{!179, !178, !"png_crc_error: argument 0"}
!180 = distinct !{!180, i1 true, !"png_read_chunk_header"}
!181 = distinct !{!181, !180, !"png_read_chunk_header: argument 0"}
!182 = distinct !{!182, i1 true, !"png_get_uint_31"}
!183 = distinct !{!183, !182, !"png_get_uint_31: argument 0"}
!184 = distinct !{!184, !30}
!185 = distinct !{!185, i1 true, !"png_read_buffer"}
!186 = distinct !{!186, !185, !"png_read_buffer: argument 0"}
!187 = distinct !{!187, i1 true, !"png_zlib_inflate"}
!188 = distinct !{!188, !187, !"png_zlib_inflate: argument 0"}
!189 = !{!175}
!190 = !{!177, !175}
!191 = !{!179, !175}
!192 = !{!181}
!193 = !{!183, !181}
!194 = !{!26, !7, i64 1200}
!195 = !{!186}
!196 = !{!188}
!197 = distinct !{!197, !30}
!198 = distinct !{!198, i1 true, !"png_read_finish_IDAT"}
!199 = distinct !{!199, !198, !"png_read_finish_IDAT: argument 0"}
!200 = !{!199}
!201 = !{!26, !6, i64 296}
!202 = !{!26, !6, i64 297}
!203 = !{!26, !6, i64 630}
!204 = !{!26, !13, i64 1176}
!205 = !{!26, !14, i64 1088}
!206 = !{!26, !14, i64 1208}
!207 = !{!26, !7, i64 960}
!208 = distinct !{!208, i1 true, !"png_get_uint_31"}
!209 = distinct !{!209, !208, !"png_get_uint_31: argument 0"}
!210 = distinct !{!210, i1 true, !"png_get_uint_31"}
!211 = distinct !{!211, !210, !"png_get_uint_31: argument 0"}
!212 = !{!209}
!213 = !{!211}
!214 = !{!26, !7, i64 1024}
!215 = !{!26, !7, i64 1028}
!216 = !{!26, !6, i64 1012}
!217 = !{!26, !6, i64 1120}
!218 = distinct !{!218, !30}
!219 = !{!20, !6, i64 0}
!220 = !{!44, !19, i64 32}
!221 = !{!26, !18, i64 600}
!222 = !{!20, !19, i64 2}
!223 = !{!20, !19, i64 4}
!224 = !{!20, !19, i64 6}
!225 = !{!20, !19, i64 8}
!226 = distinct !{!226, i1 true, !"png_read_buffer"}
!227 = distinct !{!227, !226, !"png_read_buffer: argument 0"}
!228 = !{!227}
!229 = distinct !{!229, !30}
!230 = distinct !{!230, !30, !65, !64}
!231 = !{!44, !14, i64 56}
!232 = !{!44, !7, i64 72}
!233 = !{!44, !14, i64 64}
!234 = !{!44, !7, i64 252}
!235 = distinct !{!235, i1 true, !"png_read_buffer"}
!236 = distinct !{!236, !235, !"png_read_buffer: argument 0"}
!237 = distinct !{!237, !30}
!238 = distinct !{!238, !30}
!239 = distinct !{!239, !30}
!240 = !{!236}
!241 = !{!94, !14, i64 40}
!242 = !{!94, !14, i64 48}
!243 = !{!94, !13, i64 32}
!244 = distinct !{!244, i1 true, !"png_read_buffer"}
!245 = distinct !{!245, !244, !"png_read_buffer: argument 0"}
!246 = distinct !{!246, !30}
!247 = distinct !{!247, !30}
!248 = !{!245}
!249 = !{!14, !14, i64 0}
!250 = distinct !{!250, !30}
!251 = !{!26, !6, i64 787}
!252 = !{!26, !6, i64 784}
!253 = !{!26, !6, i64 785}
!254 = !{!26, !6, i64 786}
!255 = !{!26, !6, i64 788}
!256 = distinct !{!256, i1 true, !"png_read_buffer"}
!257 = distinct !{!257, !256, !"png_read_buffer: argument 0"}
!258 = !{!257}
!259 = distinct !{!259, i1 true, !"png_read_buffer"}
!260 = distinct !{!260, !259, !"png_read_buffer: argument 0"}
!261 = distinct !{!261, !30}
!262 = !{!260}
!263 = !{!"p1 _ZTS21png_sPLT_entry_struct", !11, i64 0}
!264 = !{!"png_sPLT_struct", !14, i64 0, !6, i64 8, !263, i64 16, !7, i64 24}
!265 = !{!264, !6, i64 8}
!266 = !{!264, !7, i64 24}
!267 = !{!264, !263, i64 16}
!268 = !{!"png_sPLT_entry_struct", !19, i64 0, !19, i64 2, !19, i64 4, !19, i64 6, !19, i64 8}
!269 = !{!268, !19, i64 0}
!270 = !{!268, !19, i64 2}
!271 = !{!268, !19, i64 4}
!272 = !{!268, !19, i64 6}
!273 = !{!268, !19, i64 8}
!274 = !{!264, !14, i64 0}
!275 = distinct !{!275, i1 true, !"png_read_buffer"}
!276 = distinct !{!276, !275, !"png_read_buffer: argument 0"}
!277 = !{!276}
!278 = !{!39, !6, i64 6}
!279 = !{!39, !19, i64 0}
!280 = !{!26, !19, i64 816}
!281 = !{!26, !19, i64 810}
!282 = !{!26, !19, i64 812}
!283 = !{!26, !19, i64 814}
!284 = distinct !{!284, i1 true, !"png_read_buffer"}
!285 = distinct !{!285, !284, !"png_read_buffer: argument 0"}
!286 = distinct !{!286, !30}
!287 = !{!285}
!288 = distinct !{!288, i1 true, !"png_zlib_inflate"}
!289 = distinct !{!289, !288, !"png_zlib_inflate: argument 0"}
!290 = !{!289}
!291 = distinct !{!291, i1 true, !"png_zlib_inflate"}
!292 = distinct !{!292, !291, !"png_zlib_inflate: argument 0:Peel0"}
!293 = distinct !{!293, i1 true, !"png_zlib_inflate"}
!294 = distinct !{!294, !293, !"png_zlib_inflate: argument 0:Peel0"}
!295 = distinct !{!295, i1 true, !"png_zlib_inflate"}
!296 = distinct !{!296, !295, !"png_zlib_inflate: argument 0"}
!297 = distinct !{!297, !30, !302}
!298 = distinct !{!298, !30, !302}
!299 = !{!292}
!300 = !{!294}
!301 = !{!296}
!302 = !{!"llvm.loop.peeled.count", i32 1}
!303 = distinct !{!303, i1 false, !"LVerDomain"}
!304 = distinct !{!304, !303}
!305 = distinct !{!305, !303}
!306 = distinct !{!306, !30, !64, !65}
!307 = distinct !{!307, !30, !64, !65}
!308 = distinct !{!308, !66}
!309 = distinct !{!309, !30, !64}
!310 = !{!304}
!311 = !{!305}
!312 = distinct !{!312, i1 false, !"LVerDomain"}
!313 = distinct !{!313, !312}
!314 = distinct !{!314, !312}
!315 = distinct !{!315, !30, !64, !65}
!316 = distinct !{!316, !30, !64, !65}
!317 = distinct !{!317, !66}
!318 = distinct !{!318, !30, !64}
!319 = !{!313}
!320 = !{!314}
!321 = distinct !{!321, i1 false, !"LVerDomain"}
!322 = distinct !{!322, !321}
!323 = distinct !{!323, !321}
!324 = distinct !{!324, !30, !64, !65}
!325 = distinct !{!325, !66}
!326 = distinct !{!326, i1 false, !"LVerDomain"}
!327 = distinct !{!327, !326}
!328 = distinct !{!328, !326}
!329 = distinct !{!329, !326}
!330 = distinct !{!330, !30, !64, !65}
!331 = distinct !{!331, !30, !64, !65}
!332 = distinct !{!332, !30, !64}
!333 = distinct !{!333, !30, !64}
!334 = !{!322}
!335 = !{!323}
!336 = !{!327}
!337 = !{!329, !328}
!338 = !{!329}
!339 = !{!328}
!340 = distinct !{!340, !30}
!341 = distinct !{!341, i1 false, !"LVerDomain"}
!342 = distinct !{!342, !341}
!343 = distinct !{!343, !341}
!344 = distinct !{!344, !30, !64, !65}
!345 = distinct !{!345, !30, !64, !65}
!346 = distinct !{!346, !30, !64}
!347 = distinct !{!347, i1 false, !"LVerDomain"}
!348 = distinct !{!348, !347}
!349 = distinct !{!349, !347}
!350 = distinct !{!350, !347}
!351 = distinct !{!351, !347}
!352 = distinct !{!352, !30, !64, !65}
!353 = distinct !{!353, !30, !64, !65}
!354 = distinct !{!354, !30, !64}
!355 = !{!342}
!356 = !{!343}
!357 = !{!348}
!358 = !{!349}
!359 = !{!350}
!360 = !{!351}
!361 = !{!350, !348, !349}
end_hunk_1
