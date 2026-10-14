Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/snappy?download=true
inline.NumInlined: 514
inline.NumDeleted: 215
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN13duckdb_snappy12_GLOBAL__N_115IncrementalCopyEPKcPcS3_S3_:bb.a
vector.main.loop.iter.check145:                   ; preds = %iter.check160
  %min.iters.check146 = icmp ult i64 %i.k, 16
  br i1 %min.iters.check146, label %vec.epilog.ph164, label %vector.ph147

vector.ph147:                                     ; preds = %vector.main.loop.iter.check145
  %i.m = and i64 %i.k, 12
  %n.vec148 = and i64 %i.k, -16                   ; 5 uses
  %i.n = getelementptr i8, ptr %0, i64 %n.vec148
  %i.o = getelementptr i8, ptr %1, i64 %n.vec148
  br label %vector.body149

vector.body149:                                   ; preds = %vector.ph147, %vector.body149
  %index150 = phi i64 [ 0, %vector.ph147 ], [ %index.next154, %vector.body149 ] ; 3 uses
  %next.gep151 = getelementptr i8, ptr %0, i64 %index150
  %next.gep152 = getelementptr i8, ptr %1, i64 %index150
  %wide.load153 = load <16 x i8>, ptr %next.gep151, align 1, !tbaa !11
  store <16 x i8> %wide.load153, ptr %next.gep152, align 1, !tbaa !11
  %index.next154 = add nuw i64 %index150, 16      ; 2 uses
  %i.p = icmp eq i64 %index.next154, %n.vec148
  br i1 %i.p, label %middle.block155, label %vector.body149, !llvm.loop !164

middle.block155:                                  ; preds = %vector.body149
  %cmp.n156 = icmp eq i64 %i.k, %n.vec148
  br i1 %cmp.n156, label %_ZN13duckdb_snappy12_GLOBAL__N_119IncrementalCopySlowEPKcPcS3_.exit, label %vec.epilog.iter.check162

vec.epilog.iter.check162:                         ; preds = %middle.block155
  %min.epilog.iters.check163 = icmp eq i64 %i.m, 0
  br i1 %min.epilog.iters.check163, label %.lr.ph.i.preheader, label %vec.epilog.ph164, !prof !115

vec.epilog.ph164:                                 ; preds = %vector.main.loop.iter.check145, %vec.epilog.iter.check162
  %vec.epilog.resume.val157 = phi i64 [ %n.vec148, %vec.epilog.iter.check162 ], [ 0, %vector.main.loop.iter.check145 ]
  %n.vec165 = and i64 %i.k, -4                    ; 4 uses
  %i.q = getelementptr i8, ptr %0, i64 %n.vec165
  %i.r = getelementptr i8, ptr %1, i64 %n.vec165
  br label %vec.epilog.vector.body166

vec.epilog.vector.body166:                        ; preds = %vec.epilog.vector.body166, %vec.epilog.ph164
  %index167 = phi i64 [ %vec.epilog.resume.val157, %vec.epilog.ph164 ], [ %index.next171, %vec.epilog.vector.body166 ] ; 3 uses
  %next.gep168 = getelementptr i8, ptr %0, i64 %index167
  %next.gep169 = getelementptr i8, ptr %1, i64 %index167
  %wide.load170 = load <4 x i8>, ptr %next.gep168, align 1, !tbaa !11
  store <4 x i8> %wide.load170, ptr %next.gep169, align 1, !tbaa !11
  %index.next171 = add nuw i64 %index167, 4       ; 2 uses
  %i.s = icmp eq i64 %index.next171, %n.vec165
  br i1 %i.s, label %vec.epilog.middle.block172, label %vec.epilog.vector.body166, !llvm.loop !165

vec.epilog.middle.block172:                       ; preds = %vec.epilog.vector.body166
  %cmp.n173 = icmp eq i64 %i.k, %n.vec165
  br i1 %cmp.n173, label %_ZN13duckdb_snappy12_GLOBAL__N_119IncrementalCopySlowEPKcPcS3_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check160, %vec.epilog.iter.check162, %vec.epilog.middle.block172
  %.08.i.ph = phi ptr [ %0, %iter.check160 ], [ %i.n, %vec.epilog.iter.check162 ], [ %i.q, %vec.epilog.middle.block172 ]
  %.057.i.ph = phi ptr [ %1, %iter.check160 ], [ %i.o, %vec.epilog.iter.check162 ], [ %i.r, %vec.epilog.middle.block172 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.08.i = phi ptr [ %i.t, %.lr.ph.i ], [ %.08.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.057.i = phi ptr [ %i.v, %.lr.ph.i ], [ %.057.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.08.i, i64 1
  %i.u = load i8, ptr %.08.i, align 1, !tbaa !11
  %i.v = getelementptr inbounds nuw i8, ptr %.057.i, i64 1 ; 2 uses
  store i8 %i.u, ptr %.057.i, align 1, !tbaa !11
  %exitcond.not.i = icmp eq ptr %i.v, %2
  br i1 %exitcond.not.i, label %_ZN13duckdb_snappy12_GLOBAL__N_119IncrementalCopySlowEPKcPcS3_.exit, label %.lr.ph.i, !llvm.loop !166

bb.d:                                             ; preds = %._crit_edge, %bb.a
  %.157 = phi ptr [ %i.g, %._crit_edge ], [ %1, %bb.a ] ; 16 uses
  %i.w = getelementptr inbounds i8, ptr %3, i64 -15
  %.not68 = icmp ugt ptr %2, %i.w
  br i1 %.not68, label %bb.k, label %bb.e, !prof !23

bb.e:                                             ; preds = %bb.d
  %.val4.i = load i64, ptr %0, align 1
  store i64 %.val4.i, ptr %.157, align 1
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %.157, i64 8
  %.val.i = load i64, ptr %i.x, align 1
  store i64 %.val.i, ptr %i.y, align 1
  %i.z = getelementptr inbounds nuw i8, ptr %.157, i64 16 ; 2 uses
  %i.aa = icmp ult ptr %i.z, %2
  br i1 %i.aa, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val4.i71 = load i64, ptr %i.ab, align 1
  store i64 %.val4.i71, ptr %i.z, align 1
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ad = getelementptr inbounds nuw i8, ptr %.157, i64 24
  %.val.i72 = load i64, ptr %i.ac, align 1
  store i64 %.val.i72, ptr %i.ad, align 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %.157, i64 32 ; 2 uses
  %i.af = icmp ult ptr %i.ae, %2
  br i1 %i.af, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val4.i73 = load i64, ptr %i.ag, align 1
  store i64 %.val4.i73, ptr %i.ae, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ai = getelementptr inbounds nuw i8, ptr %.157, i64 40
  %.val.i74 = load i64, ptr %i.ah, align 1
  store i64 %.val.i74, ptr %i.ai, align 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %.157, i64 48 ; 2 uses
  %i.ak = icmp ult ptr %i.aj, %2
  br i1 %i.ak, label %bb.j, label %_ZN13duckdb_snappy12_GLOBAL__N_119IncrementalCopySlowEPKcPcS3_.exit

bb.j:                                             ; preds = %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val4.i75 = load i64, ptr %i.al, align 1
  store i64 %.val4.i75, ptr %i.aj, align 1
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.an = getelementptr inbounds nuw i8, ptr %.157, i64 56
  %.val.i76 = load i64, ptr %i.am, align 1
  store i64 %.val.i76, ptr %i.an, align 1
  br label %_ZN13duckdb_snappy12_GLOBAL__N_119IncrementalCopySlowEPKcPcS3_.exit

bb.k:                                             ; preds = %bb.d
  %i.ao = getelementptr inbounds i8, ptr %3, i64 -16 ; 2 uses
  %i.ap = icmp ult ptr %.157, %i.ao
  br i1 %i.ap, label %.lr.ph90.preheader, label %._crit_edge91

.lr.ph90.preheader:                               ; preds = %bb.k
  %i.aq = ptrtoaddr ptr %3 to i64
  %i.ar = ptrtoaddr ptr %.157 to i64
  %i.as = add i64 %i.aq, -17
  %i.at = sub i64 %i.as, %i.ar                    ; 4 uses
  %i.au = lshr i64 %i.at, 4
  %min.iters.check = icmp ult i64 %i.at, 208
  br i1 %min.iters.check, label %.lr.ph90.preheader178, label %vector.memcheck

.lr.ph90.preheader178:                            ; preds = %vector.memcheck, %.lr.ph90.preheader
  br label %.lr.ph90

vector.memcheck:                                  ; preds = %.lr.ph90.preheader
  %i.av = and i64 %i.at, -16
  %i.aw = add i64 %i.av, 16                       ; 2 uses
  %i.ax = getelementptr i8, ptr %.157, i64 %i.aw
  %i.ay = getelementptr i8, ptr %0, i64 %i.aw
  %bound0 = icmp ult ptr %.157, %i.ay
  %bound1 = icmp ult ptr %0, %i.ax
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph90.preheader178, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.az = and i64 %i.at, -16
  %i.ba = add i64 %i.az, 16                       ; 2 uses
  %i.bb = getelementptr i8, ptr %0, i64 %i.ba
  %i.bc = getelementptr i8, ptr %.157, i64 %i.ba
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bd = shl i64 %index, 4                       ; 2 uses
  %next.gep = getelementptr i8, ptr %0, i64 %i.bd
  %next.gep112 = getelementptr i8, ptr %.157, i64 %i.bd
  %wide.load = load <2 x i64>, ptr %next.gep, align 1, !alias.scope !175
  store <2 x i64> %wide.load, ptr %next.gep112, align 1, !alias.scope !176, !noalias !175
  %index.next = add nuw i64 %index, 1
  %i.be = icmp eq i64 %index, %i.au
  br i1 %i.be, label %._crit_edge91, label %vector.body, !llvm.loop !170

._crit_edge91:                                    ; preds = %vector.body, %.lr.ph90, %bb.k
  %.2.lcssa = phi ptr [ %.157, %bb.k ], [ %i.bh, %.lr.ph90 ], [ %i.bc, %vector.body ] ; 5 uses
  %.054.lcssa = phi ptr [ %0, %bb.k ], [ %i.bi, %.lr.ph90 ], [ %i.bb, %vector.body ] ; 3 uses
  %.not69 = icmp ult ptr %.2.lcssa, %2
  br i1 %.not69, label %bb.l, label %_ZN13duckdb_snappy12_GLOBAL__N_119IncrementalCopySlowEPKcPcS3_.exit

.lr.ph90:                                         ; preds = %.lr.ph90.preheader178, %.lr.ph90
  %.05488 = phi ptr [ %i.bi, %.lr.ph90 ], [ %0, %.lr.ph90.preheader178 ] ; 3 uses
  %.287 = phi ptr [ %i.bh, %.lr.ph90 ], [ %.157, %.lr.ph90.preheader178 ] ; 3 uses
  %.val4.i77 = load i64, ptr %.05488, align 1
  store i64 %.val4.i77, ptr %.287, align 1
  %i.bf = getelementptr inbounds nuw i8, ptr %.05488, i64 8
  %i.bg = getelementptr inbounds nuw i8, ptr %.287, i64 8
  %.val.i78 = load i64, ptr %i.bf, align 1
  store i64 %.val.i78, ptr %i.bg, align 1
  %i.bh = getelementptr inbounds nuw i8, ptr %.287, i64 16 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.05488, i64 16 ; 2 uses
  %i.bj = icmp ult ptr %i.bh, %i.ao
  br i1 %i.bj, label %.lr.ph90, label %._crit_edge91, !llvm.loop !171

bb.l:                                             ; preds = %._crit_edge91
  %i.bk = getelementptr inbounds i8, ptr %3, i64 -8
  %.not70 = icmp ugt ptr %.2.lcssa, %i.bk
  br i1 %.not70, label %bb.n, label %bb.m, !prof !20

bb.m:                                             ; preds = %bb.l
  %.054.val = load i64, ptr %.054.lcssa, align 1
  store i64 %.054.val, ptr %.2.lcssa, align 1
  %i.bl = getelementptr inbounds nuw i8, ptr %.054.lcssa, i64 8
  %i.bm = getelementptr inbounds nuw i8, ptr %.2.lcssa, i64 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.3 = phi ptr [ %i.bm, %bb.m ], [ %.2.lcssa, %bb.l ] ; 8 uses
  %.155 = phi ptr [ %i.bl, %bb.m ], [ %.054.lcssa, %bb.l ] ; 6 uses
  %i.bn = icmp ult ptr %.3, %2
  br i1 %i.bn, label %iter.check, label %_ZN13duckdb_snappy12_GLOBAL__N_119IncrementalCopySlowEPKcPcS3_.exit

iter.check:                                       ; preds = %bb.n
  %.3115 = ptrtoaddr ptr %.3 to i64
  %i.bo = sub i64 %i.a, %.3115                    ; 7 uses
  %min.iters.check118 = icmp ult i64 %i.bo, 4
  %4 = ptrtoaddr ptr %.3 to i64
  %5 = ptrtoaddr ptr %.155 to i64
  %i.bp = sub i64 %5, %4
  %diff.check = icmp ugt i64 %i.bp, -16
  %or.cond176 = select i1 %min.iters.check118, i1 true, i1 %diff.check
  br i1 %or.cond176, label %.lr.ph.i79.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check119 = icmp ult i64 %i.bo, 16
  br i1 %min.iters.check119, label %vec.epilog.ph, label %vector.ph120

vector.ph120:                                     ; preds = %vector.main.loop.iter.check
  %i.bq = and i64 %i.bo, 12
  %n.vec121 = and i64 %i.bo, -16                  ; 5 uses
  %i.br = getelementptr i8, ptr %.155, i64 %n.vec121
  %i.bs = getelementptr i8, ptr %.3, i64 %n.vec121
  br label %vector.body122

vector.body122:                                   ; preds = %vector.ph120, %vector.body122
  %index123 = phi i64 [ 0, %vector.ph120 ], [ %index.next127, %vector.body122 ] ; 3 uses
  %next.gep124 = getelementptr i8, ptr %.155, i64 %index123
  %next.gep125 = getelementptr i8, ptr %.3, i64 %index123
  %wide.load126 = load <16 x i8>, ptr %next.gep124, align 1, !tbaa !11
  store <16 x i8> %wide.load126, ptr %next.gep125, align 1, !tbaa !11
  %index.next127 = add nuw i64 %index123, 16      ; 2 uses
  %i.bt = icmp eq i64 %index.next127, %n.vec121
  br i1 %i.bt, label %middle.block128, label %vector.body122, !llvm.loop !172

middle.block128:                                  ; preds = %vector.body122
  %cmp.n129 = icmp eq i64 %i.bo, %n.vec121
  br i1 %cmp.n129, label %_ZN13duckdb_snappy12_GLOBAL__N_119IncrementalCopySlowEPKcPcS3_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block128
  %min.epilog.iters.check = icmp eq i64 %i.bq, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i79.preheader, label %vec.epilog.ph, !prof !115

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec121, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec132 = and i64 %i.bo, -4                   ; 4 uses
  %i.bu = getelementptr i8, ptr %.155, i64 %n.vec132
  %i.bv = getelementptr i8, ptr %.3, i64 %n.vec132
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index133 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next137, %vec.epilog.vector.body ] ; 3 uses
  %next.gep134 = getelementptr i8, ptr %.155, i64 %index133
  %next.gep135 = getelementptr i8, ptr %.3, i64 %index133
  %wide.load136 = load <4 x i8>, ptr %next.gep134, align 1, !tbaa !11
  store <4 x i8> %wide.load136, ptr %next.gep135, align 1, !tbaa !11
  %index.next137 = add nuw i64 %index133, 4       ; 2 uses
  %i.bw = icmp eq i64 %index.next137, %n.vec132
  br i1 %i.bw, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !173

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n138 = icmp eq i64 %i.bo, %n.vec132
  br i1 %cmp.n138, label %_ZN13duckdb_snappy12_GLOBAL__N_119IncrementalCopySlowEPKcPcS3_.exit, label %.lr.ph.i79.preheader

.lr.ph.i79.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.08.i80.ph = phi ptr [ %.155, %iter.check ], [ %i.br, %vec.epilog.iter.check ], [ %i.bu, %vec.epilog.middle.block ]
  %.057.i81.ph = phi ptr [ %.3, %iter.check ], [ %i.bs, %vec.epilog.iter.check ], [ %i.bv, %vec.epilog.middle.block ]
  br label %.lr.ph.i79

.lr.ph.i79:                                       ; preds = %.lr.ph.i79.preheader, %.lr.ph.i79
  %.08.i80 = phi ptr [ %i.bx, %.lr.ph.i79 ], [ %.08.i80.ph, %.lr.ph.i79.preheader ] ; 2 uses
  %.057.i81 = phi ptr [ %i.bz, %.lr.ph.i79 ], [ %.057.i81.ph, %.lr.ph.i79.preheader ] ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.08.i80, i64 1
  %i.by = load i8, ptr %.08.i80, align 1, !tbaa !11
  %i.bz = getelementptr inbounds nuw i8, ptr %.057.i81, i64 1 ; 2 uses
  store i8 %i.by, ptr %.057.i81, align 1, !tbaa !11
  %exitcond.not.i82 = icmp eq ptr %i.bz, %2
  br i1 %exitcond.not.i82, label %_ZN13duckdb_snappy12_GLOBAL__N_119IncrementalCopySlowEPKcPcS3_.exit, label %.lr.ph.i79, !llvm.loop !174

_ZN13duckdb_snappy12_GLOBAL__N_119IncrementalCopySlowEPKcPcS3_.exit: ; preds = %.lr.ph.i79, %.lr.ph.i, %middle.block128, %vec.epilog.middle.block, %middle.block155, %vec.epilog.middle.block172, %bb.n, %bb.c, %bb.j, %bb.i, %._crit_edge91, %._crit_edge
  ret ptr %2
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN13duckdb_snappy18SnappyDecompressor17DecompressAllTagsINS_28SnappyDecompressionValidatorEEEvPT_(ptr noundef nonnull align 8 dereferenceable(42) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 32 prefalign(32) {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !37   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !38   ; 2 uses
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  %.sroa.speculated.i = tail call i64 @llvm.smin.i64(i64 %i.h, i64 4)
  %i.i = sub i64 0, %.sroa.speculated.i
  %i.j = getelementptr inbounds i8, ptr %i.e, i64 %i.i ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  store ptr %i.j, ptr %i.k, align 8, !tbaa !108
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !72   ; 2 uses
  %.not = icmp ult ptr %i.c, %i.j
  br i1 %.not, label %bb.d, label %bb.b, !prof !20

bb.b:                                             ; preds = %bb.a
  %i.n = tail call noundef zeroext i1 @_ZN13duckdb_snappy18SnappyDecompressor9RefillTagEv(ptr noundef nonnull align 8 dereferenceable(42) %0)
  br i1 %i.n, label %bb.c, label %.thread192, !prof !20

bb.c:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !37   ; 2 uses
  %i.p = load ptr, ptr %i.d, align 8, !tbaa !38   ; 2 uses
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.o to i64
  %i.s = sub i64 %i.q, %i.r
  %.sroa.speculated.i124 = tail call i64 @llvm.smin.i64(i64 %i.s, i64 4)
  %i.t = sub i64 0, %.sroa.speculated.i124
  %i.u = getelementptr inbounds i8, ptr %i.p, i64 %i.t
  store ptr %i.u, ptr %i.k, align 8, !tbaa !108
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.091 = phi ptr [ %i.o, %bb.c ], [ %i.c, %bb.a ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.backedge, %bb.d
  %.0144 = phi i64 [ %i.m, %bb.d ], [ %.0144.be, %.loopexit.backedge ]
  %.1 = phi ptr [ %.091, %bb.d ], [ %.1.be, %.loopexit.backedge ]
  %i.w = load ptr, ptr %i.d, align 8, !tbaa !38
  %i.x = add i64 %.0144, -1
  %i.y = call { ptr, i64 } @_ZN13duckdb_snappy20DecompressBranchlessImEESt4pairIPKhlES3_S3_lT_l(ptr noundef %.1, ptr noundef %i.w, i64 noundef %i.x, i64 noundef 1, i64 noundef 9223372036854775744) ; 2 uses
  %i.z = extractvalue { ptr, i64 } %i.y, 0        ; 3 uses
  %i.aa = extractvalue { ptr, i64 } %i.y, 1
  %i.ab = add i64 %i.aa, 1                        ; 9 uses
  %i.ac = load ptr, ptr %i.k, align 8, !tbaa !108 ; 2 uses
  %.not116 = icmp ult ptr %i.z, %i.ac
  br i1 %.not116, label %bb.g, label %bb.e, !prof !20

bb.e:                                             ; preds = %.loopexit
  store ptr %i.z, ptr %i.b, align 8, !tbaa !37
  %i.ad = call noundef zeroext i1 @_ZN13duckdb_snappy18SnappyDecompressor9RefillTagEv(ptr noundef nonnull align 8 dereferenceable(42) %0)
  br i1 %i.ad, label %bb.f, label %.thread192, !prof !20

bb.f:                                             ; preds = %bb.e
  %i.ae = load ptr, ptr %i.b, align 8, !tbaa !37  ; 2 uses
  %i.af = load ptr, ptr %i.d, align 8, !tbaa !38  ; 2 uses
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = ptrtoint ptr %i.ae to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %.sroa.speculated.i125 = call i64 @llvm.smin.i64(i64 %i.ai, i64 4)
  %i.aj = sub i64 0, %.sroa.speculated.i125
  %i.ak = getelementptr inbounds i8, ptr %i.af, i64 %i.aj ; 2 uses
  store ptr %i.ak, ptr %i.k, align 8, !tbaa !108
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.loopexit
  %i.al = phi ptr [ %i.ak, %bb.f ], [ %i.ac, %.loopexit ] ; 3 uses
  %.2 = phi ptr [ %i.ae, %bb.f ], [ %i.z, %.loopexit ] ; 3 uses
  %i.am = load i8, ptr %.2, align 1, !tbaa !11    ; 3 uses
  %i.an = zext i8 %i.am to i32                    ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.2, i64 1 ; 6 uses
  %i.ap = and i32 %i.an, 3                        ; 3 uses
  switch i32 %i.ap, label %bb.p [
    i32 0, label %bb.h
    i32 3, label %bb.o
  ], !prof !110

bb.h:                                             ; preds = %bb.g
  %i.aq = lshr exact i32 %i.an, 2
  %i.ar = add nuw nsw i32 %i.aq, 1
  %i.as = zext nneg i32 %i.ar to i64              ; 2 uses
  %i.at = load ptr, ptr %i.d, align 8, !tbaa !38
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = icmp ugt i8 %i.am, -20
  br i1 %i.av, label %bb.i, label %bb.j, !prof !23

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
  %.0213 = phi i64 [ %i.bw, %bb.l ], [ %i.bh, %bb.j ] ; 2 uses
  %.193211 = phi i64 [ %i.by, %bb.l ], [ %.092, %bb.j ]
  %.2146210 = phi i64 [ %i.bj, %bb.l ], [ %i.ab, %bb.j ]
  %i.bj = add i64 %.0213, %.2146210               ; 5 uses
  %i.bk = load i64, ptr %1, align 8, !tbaa !71
  %.not199 = icmp ugt i64 %i.bj, %i.bk
  br i1 %.not199, label %.thread192, label %bb.k

bb.k:                                             ; preds = %.lr.ph
  %i.bl = load ptr, ptr %0, align 8, !tbaa !39    ; 2 uses
  %i.bm = load i32, ptr %i.v, align 8, !tbaa !40
end_hunk_0
