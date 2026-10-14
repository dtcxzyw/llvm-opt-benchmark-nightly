Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/snappy/original/snappy?download=true
inline.NumInlined: 501
inline.NumDeleted: 214
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN6snappy12_GLOBAL__N_115IncrementalCopyEPKcPcS3_S3_:bb.a
  %i.n = and i64 %i.l, 12
  %n.vec149 = and i64 %i.l, -16                   ; 5 uses
  %i.o = getelementptr i8, ptr %0, i64 %n.vec149
  %i.p = getelementptr i8, ptr %1, i64 %n.vec149
  br label %vector.body150

vector.body150:                                   ; preds = %vector.ph148, %vector.body150
  %index151 = phi i64 [ 0, %vector.ph148 ], [ %index.next155, %vector.body150 ] ; 3 uses
  %next.gep152 = getelementptr i8, ptr %0, i64 %index151
  %next.gep153 = getelementptr i8, ptr %1, i64 %index151
  %wide.load154 = load <16 x i8>, ptr %next.gep152, align 1, !tbaa !16
  store <16 x i8> %wide.load154, ptr %next.gep153, align 1, !tbaa !16
  %index.next155 = add nuw i64 %index151, 16      ; 2 uses
  %i.q = icmp eq i64 %index.next155, %n.vec149
  br i1 %i.q, label %middle.block156, label %vector.body150, !llvm.loop !179

middle.block156:                                  ; preds = %vector.body150
  %cmp.n157 = icmp eq i64 %i.l, %n.vec149
  br i1 %cmp.n157, label %_ZN6snappy12_GLOBAL__N_119IncrementalCopySlowEPKcPcS3_.exit, label %vec.epilog.iter.check163

vec.epilog.iter.check163:                         ; preds = %middle.block156
  %min.epilog.iters.check164 = icmp eq i64 %i.n, 0
  br i1 %min.epilog.iters.check164, label %.lr.ph.i.preheader, label %vec.epilog.ph165, !prof !121

vec.epilog.ph165:                                 ; preds = %vector.main.loop.iter.check146, %vec.epilog.iter.check163
  %vec.epilog.resume.val158 = phi i64 [ %n.vec149, %vec.epilog.iter.check163 ], [ 0, %vector.main.loop.iter.check146 ]
  %n.vec166 = and i64 %i.l, -4                    ; 4 uses
  %i.r = getelementptr i8, ptr %0, i64 %n.vec166
  %i.s = getelementptr i8, ptr %1, i64 %n.vec166
  br label %vec.epilog.vector.body167

vec.epilog.vector.body167:                        ; preds = %vec.epilog.vector.body167, %vec.epilog.ph165
  %index168 = phi i64 [ %vec.epilog.resume.val158, %vec.epilog.ph165 ], [ %index.next172, %vec.epilog.vector.body167 ] ; 3 uses
  %next.gep169 = getelementptr i8, ptr %0, i64 %index168
  %next.gep170 = getelementptr i8, ptr %1, i64 %index168
  %wide.load171 = load <4 x i8>, ptr %next.gep169, align 1, !tbaa !16
  store <4 x i8> %wide.load171, ptr %next.gep170, align 1, !tbaa !16
  %index.next172 = add nuw i64 %index168, 4       ; 2 uses
  %i.t = icmp eq i64 %index.next172, %n.vec166
  br i1 %i.t, label %vec.epilog.middle.block173, label %vec.epilog.vector.body167, !llvm.loop !180

vec.epilog.middle.block173:                       ; preds = %vec.epilog.vector.body167
  %cmp.n174 = icmp eq i64 %i.l, %n.vec166
  br i1 %cmp.n174, label %_ZN6snappy12_GLOBAL__N_119IncrementalCopySlowEPKcPcS3_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check161, %vec.epilog.iter.check163, %vec.epilog.middle.block173
  %.08.i.ph = phi ptr [ %0, %iter.check161 ], [ %i.o, %vec.epilog.iter.check163 ], [ %i.r, %vec.epilog.middle.block173 ]
  %.057.i.ph = phi ptr [ %1, %iter.check161 ], [ %i.p, %vec.epilog.iter.check163 ], [ %i.s, %vec.epilog.middle.block173 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.08.i = phi ptr [ %i.u, %.lr.ph.i ], [ %.08.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.057.i = phi ptr [ %i.w, %.lr.ph.i ], [ %.057.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.08.i, i64 1
  %i.v = load i8, ptr %.08.i, align 1, !tbaa !16
  %i.w = getelementptr inbounds nuw i8, ptr %.057.i, i64 1 ; 2 uses
  store i8 %i.v, ptr %.057.i, align 1, !tbaa !16
  %exitcond.not.i = icmp eq ptr %i.w, %2
  br i1 %exitcond.not.i, label %_ZN6snappy12_GLOBAL__N_119IncrementalCopySlowEPKcPcS3_.exit, label %.lr.ph.i, !llvm.loop !181

bb.d:                                             ; preds = %._crit_edge, %bb.a
  %.157 = phi ptr [ %i.h, %._crit_edge ], [ %1, %bb.a ] ; 16 uses
  %.157112 = ptrtoaddr ptr %.157 to i64
  %i.x = getelementptr inbounds i8, ptr %3, i64 -15
  %.not68 = icmp ugt ptr %2, %i.x
  br i1 %.not68, label %bb.k, label %bb.e, !prof !29

bb.e:                                             ; preds = %bb.d
  %.val4.i = load i64, ptr %0, align 1
  store i64 %.val4.i, ptr %.157, align 1
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %.157, i64 8
  %.val.i = load i64, ptr %i.y, align 1
  store i64 %.val.i, ptr %i.z, align 1
  %i.aa = getelementptr inbounds nuw i8, ptr %.157, i64 16 ; 2 uses
  %i.ab = icmp ult ptr %i.aa, %2
  br i1 %i.ab, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val4.i71 = load i64, ptr %i.ac, align 1
  store i64 %.val4.i71, ptr %i.aa, align 1
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ae = getelementptr inbounds nuw i8, ptr %.157, i64 24
  %.val.i72 = load i64, ptr %i.ad, align 1
  store i64 %.val.i72, ptr %i.ae, align 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %.157, i64 32 ; 2 uses
  %i.ag = icmp ult ptr %i.af, %2
  br i1 %i.ag, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val4.i73 = load i64, ptr %i.ah, align 1
  store i64 %.val4.i73, ptr %i.af, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aj = getelementptr inbounds nuw i8, ptr %.157, i64 40
  %.val.i74 = load i64, ptr %i.ai, align 1
  store i64 %.val.i74, ptr %i.aj, align 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %.157, i64 48 ; 2 uses
  %i.al = icmp ult ptr %i.ak, %2
  br i1 %i.al, label %bb.j, label %_ZN6snappy12_GLOBAL__N_119IncrementalCopySlowEPKcPcS3_.exit

bb.j:                                             ; preds = %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val4.i75 = load i64, ptr %i.am, align 1
  store i64 %.val4.i75, ptr %i.ak, align 1
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ao = getelementptr inbounds nuw i8, ptr %.157, i64 56
  %.val.i76 = load i64, ptr %i.an, align 1
  store i64 %.val.i76, ptr %i.ao, align 1
  br label %_ZN6snappy12_GLOBAL__N_119IncrementalCopySlowEPKcPcS3_.exit

bb.k:                                             ; preds = %bb.d
  %i.ap = getelementptr inbounds i8, ptr %3, i64 -16 ; 2 uses
  %i.aq = icmp ult ptr %.157, %i.ap
  br i1 %i.aq, label %.lr.ph90.preheader, label %._crit_edge91

.lr.ph90.preheader:                               ; preds = %bb.k
  %i.ar = add i64 %i.b, -17
  %i.as = sub i64 %i.ar, %.157112                 ; 4 uses
  %i.at = lshr i64 %i.as, 4
  %min.iters.check = icmp ult i64 %i.as, 208
  br i1 %min.iters.check, label %.lr.ph90.preheader179, label %vector.memcheck

.lr.ph90.preheader179:                            ; preds = %vector.memcheck, %.lr.ph90.preheader
  br label %.lr.ph90

vector.memcheck:                                  ; preds = %.lr.ph90.preheader
  %i.au = and i64 %i.as, -16
  %i.av = add i64 %i.au, 16                       ; 2 uses
  %i.aw = getelementptr i8, ptr %.157, i64 %i.av
  %i.ax = getelementptr i8, ptr %0, i64 %i.av
  %bound0 = icmp ult ptr %.157, %i.ax
  %bound1 = icmp ult ptr %0, %i.aw
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph90.preheader179, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.ay = and i64 %i.as, -16
  %i.az = add i64 %i.ay, 16                       ; 2 uses
  %i.ba = getelementptr i8, ptr %0, i64 %i.az
  %i.bb = getelementptr i8, ptr %.157, i64 %i.az
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bc = shl i64 %index, 4                       ; 2 uses
  %next.gep = getelementptr i8, ptr %0, i64 %i.bc
  %next.gep113 = getelementptr i8, ptr %.157, i64 %i.bc
  %wide.load = load <2 x i64>, ptr %next.gep, align 1, !alias.scope !190
  store <2 x i64> %wide.load, ptr %next.gep113, align 1, !alias.scope !191, !noalias !190
  %index.next = add nuw i64 %index, 1
  %i.bd = icmp eq i64 %index, %i.at
  br i1 %i.bd, label %._crit_edge91, label %vector.body, !llvm.loop !185

._crit_edge91:                                    ; preds = %vector.body, %.lr.ph90, %bb.k
  %.2.lcssa = phi ptr [ %.157, %bb.k ], [ %i.bg, %.lr.ph90 ], [ %i.bb, %vector.body ] ; 5 uses
  %.054.lcssa = phi ptr [ %0, %bb.k ], [ %i.bh, %.lr.ph90 ], [ %i.ba, %vector.body ] ; 3 uses
  %.not69 = icmp ult ptr %.2.lcssa, %2
  br i1 %.not69, label %bb.l, label %_ZN6snappy12_GLOBAL__N_119IncrementalCopySlowEPKcPcS3_.exit

.lr.ph90:                                         ; preds = %.lr.ph90.preheader179, %.lr.ph90
  %.05488 = phi ptr [ %i.bh, %.lr.ph90 ], [ %0, %.lr.ph90.preheader179 ] ; 3 uses
  %.287 = phi ptr [ %i.bg, %.lr.ph90 ], [ %.157, %.lr.ph90.preheader179 ] ; 3 uses
  %.val4.i77 = load i64, ptr %.05488, align 1
  store i64 %.val4.i77, ptr %.287, align 1
  %i.be = getelementptr inbounds nuw i8, ptr %.05488, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %.287, i64 8
  %.val.i78 = load i64, ptr %i.be, align 1
  store i64 %.val.i78, ptr %i.bf, align 1
  %i.bg = getelementptr inbounds nuw i8, ptr %.287, i64 16 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.05488, i64 16 ; 2 uses
  %i.bi = icmp ult ptr %i.bg, %i.ap
  br i1 %i.bi, label %.lr.ph90, label %._crit_edge91, !llvm.loop !186

bb.l:                                             ; preds = %._crit_edge91
  %i.bj = getelementptr inbounds i8, ptr %3, i64 -8
  %.not70 = icmp ugt ptr %.2.lcssa, %i.bj
  br i1 %.not70, label %bb.n, label %bb.m, !prof !26

bb.m:                                             ; preds = %bb.l
  %.054.val = load i64, ptr %.054.lcssa, align 1
  store i64 %.054.val, ptr %.2.lcssa, align 1
  %i.bk = getelementptr inbounds nuw i8, ptr %.054.lcssa, i64 8
  %i.bl = getelementptr inbounds nuw i8, ptr %.2.lcssa, i64 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.3 = phi ptr [ %i.bl, %bb.m ], [ %.2.lcssa, %bb.l ] ; 7 uses
  %.155 = phi ptr [ %i.bk, %bb.m ], [ %.054.lcssa, %bb.l ] ; 6 uses
  %i.bm = icmp ult ptr %.3, %2
  br i1 %i.bm, label %iter.check, label %_ZN6snappy12_GLOBAL__N_119IncrementalCopySlowEPKcPcS3_.exit

iter.check:                                       ; preds = %bb.n
  %.155117 = ptrtoaddr ptr %.155 to i64
  %.3116 = ptrtoaddr ptr %.3 to i64               ; 2 uses
  %i.bn = sub i64 %i.a, %.3116                    ; 7 uses
  %min.iters.check119 = icmp ult i64 %i.bn, 4
  %i.bo = sub i64 %.155117, %.3116
  %diff.check = icmp ugt i64 %i.bo, -16
  %or.cond177 = select i1 %min.iters.check119, i1 true, i1 %diff.check
  br i1 %or.cond177, label %.lr.ph.i79.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check120 = icmp ult i64 %i.bn, 16
  br i1 %min.iters.check120, label %vec.epilog.ph, label %vector.ph121

vector.ph121:                                     ; preds = %vector.main.loop.iter.check
  %i.bp = and i64 %i.bn, 12
  %n.vec122 = and i64 %i.bn, -16                  ; 5 uses
  %i.bq = getelementptr i8, ptr %.155, i64 %n.vec122
  %i.br = getelementptr i8, ptr %.3, i64 %n.vec122
  br label %vector.body123

vector.body123:                                   ; preds = %vector.ph121, %vector.body123
  %index124 = phi i64 [ 0, %vector.ph121 ], [ %index.next128, %vector.body123 ] ; 3 uses
  %next.gep125 = getelementptr i8, ptr %.155, i64 %index124
  %next.gep126 = getelementptr i8, ptr %.3, i64 %index124
  %wide.load127 = load <16 x i8>, ptr %next.gep125, align 1, !tbaa !16
  store <16 x i8> %wide.load127, ptr %next.gep126, align 1, !tbaa !16
  %index.next128 = add nuw i64 %index124, 16      ; 2 uses
  %i.bs = icmp eq i64 %index.next128, %n.vec122
  br i1 %i.bs, label %middle.block129, label %vector.body123, !llvm.loop !187

middle.block129:                                  ; preds = %vector.body123
  %cmp.n130 = icmp eq i64 %i.bn, %n.vec122
  br i1 %cmp.n130, label %_ZN6snappy12_GLOBAL__N_119IncrementalCopySlowEPKcPcS3_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block129
  %min.epilog.iters.check = icmp eq i64 %i.bp, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i79.preheader, label %vec.epilog.ph, !prof !121

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec122, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec133 = and i64 %i.bn, -4                   ; 4 uses
  %i.bt = getelementptr i8, ptr %.155, i64 %n.vec133
  %i.bu = getelementptr i8, ptr %.3, i64 %n.vec133
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index134 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next138, %vec.epilog.vector.body ] ; 3 uses
  %next.gep135 = getelementptr i8, ptr %.155, i64 %index134
  %next.gep136 = getelementptr i8, ptr %.3, i64 %index134
  %wide.load137 = load <4 x i8>, ptr %next.gep135, align 1, !tbaa !16
  store <4 x i8> %wide.load137, ptr %next.gep136, align 1, !tbaa !16
  %index.next138 = add nuw i64 %index134, 4       ; 2 uses
  %i.bv = icmp eq i64 %index.next138, %n.vec133
  br i1 %i.bv, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !188

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n139 = icmp eq i64 %i.bn, %n.vec133
  br i1 %cmp.n139, label %_ZN6snappy12_GLOBAL__N_119IncrementalCopySlowEPKcPcS3_.exit, label %.lr.ph.i79.preheader

.lr.ph.i79.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.08.i80.ph = phi ptr [ %.155, %iter.check ], [ %i.bq, %vec.epilog.iter.check ], [ %i.bt, %vec.epilog.middle.block ]
  %.057.i81.ph = phi ptr [ %.3, %iter.check ], [ %i.br, %vec.epilog.iter.check ], [ %i.bu, %vec.epilog.middle.block ]
  br label %.lr.ph.i79

.lr.ph.i79:                                       ; preds = %.lr.ph.i79.preheader, %.lr.ph.i79
  %.08.i80 = phi ptr [ %i.bw, %.lr.ph.i79 ], [ %.08.i80.ph, %.lr.ph.i79.preheader ] ; 2 uses
  %.057.i81 = phi ptr [ %i.by, %.lr.ph.i79 ], [ %.057.i81.ph, %.lr.ph.i79.preheader ] ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.08.i80, i64 1
  %i.bx = load i8, ptr %.08.i80, align 1, !tbaa !16
  %i.by = getelementptr inbounds nuw i8, ptr %.057.i81, i64 1 ; 2 uses
  store i8 %i.bx, ptr %.057.i81, align 1, !tbaa !16
  %exitcond.not.i82 = icmp eq ptr %i.by, %2
  br i1 %exitcond.not.i82, label %_ZN6snappy12_GLOBAL__N_119IncrementalCopySlowEPKcPcS3_.exit, label %.lr.ph.i79, !llvm.loop !189

_ZN6snappy12_GLOBAL__N_119IncrementalCopySlowEPKcPcS3_.exit: ; preds = %.lr.ph.i79, %.lr.ph.i, %middle.block129, %vec.epilog.middle.block, %middle.block156, %vec.epilog.middle.block173, %bb.n, %bb.c, %bb.j, %bb.i, %._crit_edge91, %._crit_edge
  ret ptr %2
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6snappy18SnappyDecompressor17DecompressAllTagsINS_28SnappyDecompressionValidatorEEEvPT_(ptr noundef nonnull align 8 dereferenceable(46) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 32 prefalign(32) {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !43   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !44   ; 2 uses
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  %.sroa.speculated.i = tail call i64 @llvm.smin.i64(i64 %i.h, i64 4)
  %i.i = sub i64 0, %.sroa.speculated.i
  %i.j = getelementptr inbounds i8, ptr %i.e, i64 %i.i ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  store ptr %i.j, ptr %i.k, align 8, !tbaa !114
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !78   ; 2 uses
  %.not = icmp ult ptr %i.c, %i.j
  br i1 %.not, label %bb.d, label %bb.b, !prof !26

bb.b:                                             ; preds = %bb.a
  %i.n = tail call noundef zeroext i1 @_ZN6snappy18SnappyDecompressor9RefillTagEv(ptr noundef nonnull align 8 dereferenceable(46) %0)
  br i1 %i.n, label %bb.c, label %.thread192, !prof !26

bb.c:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !43   ; 2 uses
  %i.p = load ptr, ptr %i.d, align 8, !tbaa !44   ; 2 uses
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.o to i64
  %i.s = sub i64 %i.q, %i.r
  %.sroa.speculated.i124 = tail call i64 @llvm.smin.i64(i64 %i.s, i64 4)
  %i.t = sub i64 0, %.sroa.speculated.i124
  %i.u = getelementptr inbounds i8, ptr %i.p, i64 %i.t
  store ptr %i.u, ptr %i.k, align 8, !tbaa !114
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.091 = phi ptr [ %i.o, %bb.c ], [ %i.c, %bb.a ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.backedge, %bb.d
  %.0144 = phi i64 [ %i.m, %bb.d ], [ %.0144.be, %.loopexit.backedge ]
  %.1 = phi ptr [ %.091, %bb.d ], [ %.1.be, %.loopexit.backedge ]
  %i.w = load ptr, ptr %i.d, align 8, !tbaa !44
  %i.x = add i64 %.0144, -1
  %i.y = call { ptr, i64 } @_ZN6snappy20DecompressBranchlessImEESt4pairIPKhlES3_S3_lT_l(ptr noundef %.1, ptr noundef %i.w, i64 noundef %i.x, i64 noundef 1, i64 noundef 9223372036854775744) ; 2 uses
  %i.z = extractvalue { ptr, i64 } %i.y, 0        ; 3 uses
  %i.aa = extractvalue { ptr, i64 } %i.y, 1
  %i.ab = add i64 %i.aa, 1                        ; 9 uses
  %i.ac = load ptr, ptr %i.k, align 8, !tbaa !114 ; 2 uses
  %.not116 = icmp ult ptr %i.z, %i.ac
  br i1 %.not116, label %bb.g, label %bb.e, !prof !26

bb.e:                                             ; preds = %.loopexit
  store ptr %i.z, ptr %i.b, align 8, !tbaa !43
  %i.ad = call noundef zeroext i1 @_ZN6snappy18SnappyDecompressor9RefillTagEv(ptr noundef nonnull align 8 dereferenceable(46) %0)
  br i1 %i.ad, label %bb.f, label %.thread192, !prof !26

bb.f:                                             ; preds = %bb.e
  %i.ae = load ptr, ptr %i.b, align 8, !tbaa !43  ; 2 uses
  %i.af = load ptr, ptr %i.d, align 8, !tbaa !44  ; 2 uses
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = ptrtoint ptr %i.ae to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %.sroa.speculated.i125 = call i64 @llvm.smin.i64(i64 %i.ai, i64 4)
  %i.aj = sub i64 0, %.sroa.speculated.i125
  %i.ak = getelementptr inbounds i8, ptr %i.af, i64 %i.aj ; 2 uses
  store ptr %i.ak, ptr %i.k, align 8, !tbaa !114
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.loopexit
  %i.al = phi ptr [ %i.ak, %bb.f ], [ %i.ac, %.loopexit ] ; 3 uses
  %.2 = phi ptr [ %i.ae, %bb.f ], [ %i.z, %.loopexit ] ; 3 uses
  %i.am = load i8, ptr %.2, align 1, !tbaa !16    ; 3 uses
  %i.an = zext i8 %i.am to i32                    ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.2, i64 1 ; 6 uses
  %i.ap = and i32 %i.an, 3                        ; 3 uses
  switch i32 %i.ap, label %bb.p [
    i32 0, label %bb.h
    i32 3, label %bb.o
  ], !prof !116

bb.h:                                             ; preds = %bb.g
  %i.aq = lshr exact i32 %i.an, 2
  %i.ar = add nuw nsw i32 %i.aq, 1
  %i.as = zext nneg i32 %i.ar to i64              ; 2 uses
  %i.at = load ptr, ptr %i.d, align 8, !tbaa !44
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = icmp ugt i8 %i.am, -20
  br i1 %i.av, label %bb.i, label %bb.j, !prof !29

bb.i:                                             ; preds = %bb.h
  %i.aw = add nsw i64 %i.as, -60                  ; 2 uses
  %.0.copyload.i = load i32, ptr %i.ao, align 1
  %i.ax = shl nsw i64 %i.aw, 3
  %i.ay = and i64 %i.ax, 4294967288
  %i.az = shl nuw i64 4294967295, %i.ay
  %i.ba = trunc i64 %i.az to i32
  %i.bb = xor i32 %i.ba, -1
  %i.bc = and i32 %.0.copyload.i, %i.bb
  %i.bd = add i32 %i.bc, 1
  %i.be = zext i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.aw
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.092 = phi i64 [ %i.be, %bb.i ], [ %i.as, %bb.h ] ; 3 uses
  %.6 = phi ptr [ %i.bf, %bb.i ], [ %i.ao, %bb.h ] ; 2 uses
  %i.bg = ptrtoint ptr %.6 to i64
  %i.bh = sub i64 %i.au, %i.bg                    ; 2 uses
  %i.bi = icmp ult i64 %i.bh, %.092
  br i1 %i.bi, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.j, %bb.l
  %.0213 = phi i64 [ %i.bv, %bb.l ], [ %i.bh, %bb.j ] ; 2 uses
  %.193211 = phi i64 [ %i.bw, %bb.l ], [ %.092, %bb.j ]
  %.2146210 = phi i64 [ %i.bj, %bb.l ], [ %i.ab, %bb.j ]
  %i.bj = add i64 %.0213, %.2146210               ; 5 uses
  %i.bk = load i64, ptr %1, align 8, !tbaa !77
  %.not199 = icmp ugt i64 %i.bj, %i.bk
  br i1 %.not199, label %.thread192, label %bb.k

bb.k:                                             ; preds = %.lr.ph
  %i.bl = load ptr, ptr %0, align 8, !tbaa !45    ; 2 uses
  %i.bm = load i64, ptr %i.v, align 8, !tbaa !46
end_hunk_0
