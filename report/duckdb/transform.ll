inline.NumInlined: 2
inline.NumDeleted: 1
begin_hunk_0_@_ZN13duckdb_brotli29BrotliTransformDictionaryWordEPhPKhiPKNS_16BrotliTransformsEi:bb.a
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.m
  %i.o = load i16, ptr %i.n, align 2, !tbaa !16
  %i.p = zext i16 %i.o to i64                     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.p ; 20 uses
  %i.r = getelementptr i8, ptr %i.k, i64 1
  %i.s = load i8, ptr %i.r, align 1, !tbaa !15    ; 4 uses
  %i.t = getelementptr i8, ptr %i.k, i64 2
end_hunk_0
begin_hunk_1_@_ZN13duckdb_brotli29BrotliTransformDictionaryWordEPhPKhiPKNS_16BrotliTransformsEi:bb.a
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.v
  %i.x = load i16, ptr %i.w, align 2, !tbaa !16
  %i.y = zext i16 %i.x to i64                     ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.y ; 20 uses
  %i.aa = load i8, ptr %i.q, align 1, !tbaa !15   ; 5 uses
  %.not97 = icmp eq i8 %i.aa, 0
  br i1 %.not97, label %._crit_edge, label %.lr.ph.preheader.a

.lr.ph.preheader.a:                               ; preds = %bb.a
  %i.ab = zext i8 %i.aa to i32                    ; 4 uses
  %i.ac = zext i8 %i.aa to i64                    ; 5 uses
  %min.iters.check = icmp ult i8 %i.aa, 4
  br i1 %min.iters.check, label %.lr.ph.preheader188, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader.a
  %i.ad = sub i64 %i.d, %i.a
  %i.ae = add i64 %i.ad, %i.p
  %diff.check = icmp ugt i64 %i.ae, -33
  br i1 %diff.check, label %.lr.ph.preheader188, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check143 = icmp ult i8 %i.aa, 32
  br i1 %min.iters.check143, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.ac, 28
  %n.vec = and i64 %i.ac, 224                     ; 12 uses
  %i.af = getelementptr i8, ptr %i.q, i64 %n.vec
  %.cast = trunc nuw nsw i64 %n.vec to i32
  %i.ag = sub nsw i32 %i.ab, %.cast
end_hunk_1
begin_hunk_2_@_ZN13duckdb_brotli29BrotliTransformDictionaryWordEPhPKhiPKNS_16BrotliTransformsEi:bb.a
  store <16 x i8> %wide.load, ptr %0, align 1, !tbaa !15
  store <16 x i8> %wide.load143, ptr %i.aj, align 1, !tbaa !15
  %i.ak = icmp eq i64 %n.vec, 32
  br i1 %i.ak, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %vector.ph
  %i.al = getelementptr i8, ptr %i.q, i64 33
end_hunk_2
begin_hunk_3_@_ZN13duckdb_brotli29BrotliTransformDictionaryWordEPhPKhiPKNS_16BrotliTransformsEi:bb.a
  store <16 x i8> %wide.load.1, ptr %i.an, align 1, !tbaa !15
  store <16 x i8> %wide.load143.1, ptr %i.ao, align 1, !tbaa !15
  %i.ap = icmp eq i64 %n.vec, 64
  br i1 %i.ap, label %middle.block, label %vector.body.2

vector.body.2:                                    ; preds = %vector.body.1
  %i.aq = getelementptr i8, ptr %i.q, i64 65
end_hunk_3
begin_hunk_4_@_ZN13duckdb_brotli29BrotliTransformDictionaryWordEPhPKhiPKNS_16BrotliTransformsEi:bb.a
  store <16 x i8> %wide.load.2, ptr %i.as, align 1, !tbaa !15
  store <16 x i8> %wide.load143.2, ptr %i.at, align 1, !tbaa !15
  %i.au = icmp eq i64 %n.vec, 96
  br i1 %i.au, label %middle.block, label %vector.body.3

vector.body.3:                                    ; preds = %vector.body.2
  %i.av = getelementptr i8, ptr %i.q, i64 97
end_hunk_4
begin_hunk_5_@_ZN13duckdb_brotli29BrotliTransformDictionaryWordEPhPKhiPKNS_16BrotliTransformsEi:bb.a
  store <16 x i8> %wide.load.3, ptr %i.ax, align 1, !tbaa !15
  store <16 x i8> %wide.load143.3, ptr %i.ay, align 1, !tbaa !15
  %i.az = icmp eq i64 %n.vec, 128
  br i1 %i.az, label %middle.block, label %vector.body.4

vector.body.4:                                    ; preds = %vector.body.3
  %i.ba = getelementptr i8, ptr %i.q, i64 129
end_hunk_5
begin_hunk_6_@_ZN13duckdb_brotli29BrotliTransformDictionaryWordEPhPKhiPKNS_16BrotliTransformsEi:bb.a
  store <16 x i8> %wide.load.4, ptr %i.bc, align 1, !tbaa !15
  store <16 x i8> %wide.load143.4, ptr %i.bd, align 1, !tbaa !15
  %i.be = icmp eq i64 %n.vec, 160
  br i1 %i.be, label %middle.block, label %vector.body.5

vector.body.5:                                    ; preds = %vector.body.4
  %i.bf = getelementptr i8, ptr %i.q, i64 161
end_hunk_6
begin_hunk_7_@_ZN13duckdb_brotli29BrotliTransformDictionaryWordEPhPKhiPKNS_16BrotliTransformsEi:bb.a
  store <16 x i8> %wide.load.5, ptr %i.bh, align 1, !tbaa !15
  store <16 x i8> %wide.load143.5, ptr %i.bi, align 1, !tbaa !15
  %i.bj = icmp eq i64 %n.vec, 192
  br i1 %i.bj, label %middle.block, label %vector.body.6

vector.body.6:                                    ; preds = %vector.body.5
  %i.bk = getelementptr i8, ptr %i.q, i64 193
end_hunk_7
begin_hunk_8_@_ZN13duckdb_brotli29BrotliTransformDictionaryWordEPhPKhiPKNS_16BrotliTransformsEi:bb.a
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 208
  store <16 x i8> %wide.load.6, ptr %i.bm, align 1, !tbaa !15
  store <16 x i8> %wide.load143.6, ptr %i.bn, align 1, !tbaa !15
  br label %middle.block

middle.block:                                     ; preds = %vector.body.6, %vector.body.5, %vector.body.4, %vector.body.3, %vector.body.2, %vector.body.1, %vector.ph
  %cmp.n = icmp eq i64 %n.vec, %i.ac
  br i1 %cmp.n, label %._crit_edge.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader188, label %vec.epilog.ph, !prof !17

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec147 = and i64 %i.ac, 252                  ; 6 uses
  %5 = getelementptr i8, ptr %i.q, i64 %n.vec147
  %.cast148 = trunc nuw nsw i64 %n.vec147 to i32
  %6 = sub nsw i32 %i.ab, %.cast148
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index149 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next152, %vec.epilog.vector.body ] ; 3 uses
  %next.gep150 = getelementptr i8, ptr %i.q, i64 %index149
  %7 = getelementptr inbounds nuw i8, ptr %next.gep150, i64 1
  %wide.load151 = load <4 x i8>, ptr %7, align 1, !tbaa !15
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 %index149
  store <4 x i8> %wide.load151, ptr %8, align 1, !tbaa !15
  %index.next152 = add nuw i64 %index149, 4       ; 2 uses
  %9 = icmp eq i64 %index.next152, %n.vec147
  br i1 %9, label %middle.block.a, label %vec.epilog.vector.body, !llvm.loop !18

middle.block.a:                                   ; preds = %vec.epilog.vector.body
  %cmp.n.a = icmp eq i64 %n.vec147, %i.ac
  br i1 %cmp.n.a, label %._crit_edge.loopexit, label %.lr.ph.preheader188

.lr.ph.preheader188:                              ; preds = %vector.memcheck, %.lr.ph.preheader.a, %vec.epilog.iter.check, %middle.block.a
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader.a ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec147, %middle.block.a ] ; 2 uses
  %.pn9299.ph = phi ptr [ %i.q, %.lr.ph.preheader.a ], [ %i.q, %vector.memcheck ], [ %i.af, %vec.epilog.iter.check ], [ %5, %middle.block.a ] ; 2 uses
  %.08898.ph = phi i32 [ %i.ab, %.lr.ph.preheader.a ], [ %i.ab, %vector.memcheck ], [ %i.ag, %vec.epilog.iter.check ], [ %6, %middle.block.a ] ; 4 uses
  %i.bo = add nsw i32 %.08898.ph, -1
  %xtraiter = and i32 %.08898.ph, 3               ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
end_hunk_8
begin_hunk_9_@_ZN13duckdb_brotli29BrotliTransformDictionaryWordEPhPKhiPKNS_16BrotliTransformsEi:bb.a
  store i8 %i.bq, ptr %i.br, align 1, !tbaa !15
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !22

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader188
  %indvars.iv.next.lcssa189.unr = phi i64 [ poison, %.lr.ph.preheader188 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
end_hunk_9
begin_hunk_10_@_ZN13duckdb_brotli29BrotliTransformDictionaryWordEPhPKhiPKNS_16BrotliTransformsEi:bb.a
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 3
  store i8 %i.cc, ptr %i.ce, align 1, !tbaa !15
  %.not.3 = icmp eq i32 %i.cb, 0
  br i1 %.not.3, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !24

._crit_edge.loopexit:                             ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block.a, %middle.block
  %indvars.iv.next.lcssa = phi i64 [ %n.vec147, %middle.block.a ], [ %n.vec, %middle.block ], [ %indvars.iv.next.lcssa189.unr, %.lr.ph.prol.loopexit ], [ %indvars.iv.next.3, %.lr.ph ]
  %i.cf = trunc nuw nsw i64 %indvars.iv.next.lcssa to i32
  br label %._crit_edge

end_hunk_10
begin_hunk_11_@_ZN13duckdb_brotli29BrotliTransformDictionaryWordEPhPKhiPKNS_16BrotliTransformsEi:bb.a
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.080 = phi i32 [ %i.ci, %bb.b ], [ %i.cn, %bb.d ], [ %2, %bb.c ] ; 11 uses
  %.078 = phi ptr [ %1, %bb.b ], [ %i.cm, %bb.d ], [ %1, %bb.c ] ; 8 uses
  %.078147 = ptrtoaddr ptr %.078 to i64
  %i.co = icmp sgt i32 %.080, 0                   ; 3 uses
  br i1 %i.co, label %.lr.ph104.preheader.a, label %._crit_edge105

.lr.ph104.preheader.a:                            ; preds = %bb.e
  %i.cp = zext i32 %.081.lcssa to i64             ; 7 uses
  %wide.trip.count = zext nneg i32 %.080 to i64   ; 8 uses
  %min.iters.check150 = icmp ult i32 %.080, 4
  br i1 %min.iters.check150, label %.lr.ph104.preheader186, label %vector.memcheck146

vector.memcheck146:                               ; preds = %.lr.ph104.preheader.a
  %i.cq = add i64 %i.a, %i.cp
  %i.cr = sub i64 %i.cq, %.078147
  %diff.check148 = icmp ult i64 %i.cr, 32
  br i1 %diff.check148, label %.lr.ph104.preheader186, label %vector.main.loop.iter.check161

vector.main.loop.iter.check161:                   ; preds = %vector.memcheck146
  %min.iters.check162 = icmp ult i32 %.080, 32
  br i1 %min.iters.check162, label %vec.epilog.ph178, label %vector.ph151

vector.ph151:                                     ; preds = %vector.main.loop.iter.check161
  %n.mod.vf164 = and i64 %wide.trip.count, 28
  %n.vec153 = and i64 %wide.trip.count, 2147483616 ; 5 uses
  %i.cs = add nuw nsw i64 %n.vec153, %i.cp        ; 2 uses
  %invariant.gep = getelementptr i8, ptr %0, i64 %i.cp
  br label %vector.body154
end_hunk_11
begin_hunk_12_@_ZN13duckdb_brotli29BrotliTransformDictionaryWordEPhPKhiPKNS_16BrotliTransformsEi:bb.a
  store <16 x i8> %wide.load157, ptr %i.cv, align 1, !tbaa !15
  %index.next158 = add nuw i64 %index155, 32      ; 2 uses
  %i.cw = icmp eq i64 %index.next158, %n.vec153
  br i1 %i.cw, label %middle.block171, label %vector.body154, !llvm.loop !25

middle.block171:                                  ; preds = %vector.body154
  %cmp.n172 = icmp eq i64 %n.vec153, %wide.trip.count
  br i1 %cmp.n172, label %._crit_edge105.loopexit, label %vec.epilog.iter.check176

vec.epilog.iter.check176:                         ; preds = %middle.block171
  %min.epilog.iters.check177 = icmp eq i64 %n.mod.vf164, 0
  br i1 %min.epilog.iters.check177, label %.lr.ph104.preheader186, label %vec.epilog.ph178, !prof !17

vec.epilog.ph178:                                 ; preds = %vector.main.loop.iter.check161, %vec.epilog.iter.check176
  %vec.epilog.resume.val173 = phi i64 [ %n.vec153, %vec.epilog.iter.check176 ], [ 0, %vector.main.loop.iter.check161 ]
  %n.vec180 = and i64 %wide.trip.count, 2147483644 ; 4 uses
  %10 = add nuw nsw i64 %n.vec180, %i.cp          ; 2 uses
  %invariant.gep239 = getelementptr i8, ptr %0, i64 %i.cp
  br label %vec.epilog.vector.body181

vec.epilog.vector.body181:                        ; preds = %vec.epilog.vector.body181, %vec.epilog.ph178
  %index182 = phi i64 [ %vec.epilog.resume.val173, %vec.epilog.ph178 ], [ %index.next184, %vec.epilog.vector.body181 ] ; 3 uses
  %11 = getelementptr inbounds nuw i8, ptr %.078, i64 %index182
  %wide.load183 = load <4 x i8>, ptr %11, align 1, !tbaa !15
  %gep240 = getelementptr i8, ptr %invariant.gep239, i64 %index182
  store <4 x i8> %wide.load183, ptr %gep240, align 1, !tbaa !15
  %index.next184 = add nuw i64 %index182, 4       ; 2 uses
  %12 = icmp eq i64 %index.next184, %n.vec180
  br i1 %12, label %middle.block159, label %vec.epilog.vector.body181, !llvm.loop !26

middle.block159:                                  ; preds = %vec.epilog.vector.body181
  %cmp.n160 = icmp eq i64 %n.vec180, %wide.trip.count
  br i1 %cmp.n160, label %._crit_edge105.loopexit, label %.lr.ph104.preheader186

.lr.ph104.preheader186:                           ; preds = %vector.memcheck146, %.lr.ph104.preheader.a, %vec.epilog.iter.check176, %middle.block159
  %indvars.iv128.ph = phi i64 [ 0, %.lr.ph104.preheader.a ], [ 0, %vector.memcheck146 ], [ %n.vec153, %vec.epilog.iter.check176 ], [ %n.vec180, %middle.block159 ] ; 3 uses
  %indvars.iv126.ph = phi i64 [ %i.cp, %.lr.ph104.preheader.a ], [ %i.cp, %vector.memcheck146 ], [ %i.cs, %vec.epilog.iter.check176 ], [ %10, %middle.block159 ] ; 2 uses
  %xtraiter190 = and i64 %wide.trip.count, 3      ; 2 uses
  %lcmp.mod191.not = icmp eq i64 %xtraiter190, 0
  br i1 %lcmp.mod191.not, label %.lr.ph104.prol.loopexit, label %.lr.ph104.prol
end_hunk_12
begin_hunk_13_@_ZN13duckdb_brotli29BrotliTransformDictionaryWordEPhPKhiPKNS_16BrotliTransformsEi:bb.a
  store i8 %i.cy, ptr %i.cz, align 1, !tbaa !15
  %prol.iter192.next = add i64 %prol.iter192, 1   ; 2 uses
  %prol.iter192.cmp.not = icmp eq i64 %prol.iter192.next, %xtraiter190
  br i1 %prol.iter192.cmp.not, label %.lr.ph104.prol.loopexit, label %.lr.ph104.prol, !llvm.loop !27

.lr.ph104.prol.loopexit:                          ; preds = %.lr.ph104.prol, %.lr.ph104.preheader186
  %indvars.iv.next127.lcssa187.unr = phi i64 [ poison, %.lr.ph104.preheader186 ], [ %indvars.iv.next127.prol, %.lr.ph104.prol ]
end_hunk_13
begin_hunk_14_@_ZN13duckdb_brotli29BrotliTransformDictionaryWordEPhPKhiPKNS_16BrotliTransformsEi:bb.a
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 3
  store i8 %i.dr, ptr %i.dt, align 1, !tbaa !15
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next129.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge105.loopexit, label %.lr.ph104, !llvm.loop !28

._crit_edge105.loopexit:                          ; preds = %.lr.ph104.prol.loopexit, %.lr.ph104, %middle.block159, %middle.block171
  %indvars.iv.next127.lcssa = phi i64 [ %10, %middle.block159 ], [ %i.cs, %middle.block171 ], [ %indvars.iv.next127.lcssa187.unr, %.lr.ph104.prol.loopexit ], [ %indvars.iv.next127.3, %.lr.ph104 ]
  %i.du = trunc nuw i64 %indvars.iv.next127.lcssa to i32
  br label %._crit_edge105

end_hunk_14
begin_hunk_15_@_ZN13duckdb_brotli29BrotliTransformDictionaryWordEPhPKhiPKNS_16BrotliTransformsEi:bb.a
  %i.ey = getelementptr inbounds nuw i8, ptr %.085111, i64 %i.ex
  %i.ez = sub nsw i32 %.1112, %.0.i93             ; 2 uses
  %i.fa = icmp sgt i32 %i.ez, 0
  br i1 %i.fa, label %.lr.ph114, label %_ZL11ToUpperCasePh.exit, !llvm.loop !29

bb.r:                                             ; preds = %._crit_edge105
  %i.fb = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !30
  %i.fd = shl nsw i32 %4, 1
  %i.fe = sext i32 %i.fd to i64
  %i.ff = getelementptr inbounds i8, ptr %i.fc, i64 %i.fe
end_hunk_15
begin_hunk_16_@_ZN13duckdb_brotli29BrotliTransformDictionaryWordEPhPKhiPKNS_16BrotliTransformsEi:bb.a

bb.s:                                             ; preds = %._crit_edge105
  %i.fl = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !30
  %i.fn = shl nsw i32 %4, 1
  %i.fo = sext i32 %i.fn to i64
  %i.fp = getelementptr inbounds i8, ptr %i.fm, i64 %i.fo
end_hunk_16
begin_hunk_17_@_ZN13duckdb_brotli29BrotliTransformDictionaryWordEPhPKhiPKNS_16BrotliTransformsEi:bb.a
  %i.fw = getelementptr inbounds i8, ptr %.079108, i64 %i.fv
  %i.fx = sub nsw i32 %.2107, %i.fu               ; 2 uses
  %i.fy = icmp sgt i32 %i.fx, 0
  br i1 %i.fy, label %.lr.ph110, label %_ZL11ToUpperCasePh.exit, !llvm.loop !31

_ZL11ToUpperCasePh.exit:                          ; preds = %.lr.ph110, %_ZL11ToUpperCasePh.exit95, %bb.s, %bb.l, %bb.k, %bb.j, %bb.h, %bb.g, %._crit_edge105, %bb.r
  %i.fz = load i8, ptr %i.z, align 1, !tbaa !15   ; 5 uses
  %.not91115 = icmp eq i8 %i.fz, 0
  br i1 %.not91115, label %._crit_edge120, label %.lr.ph119.preheader.a

.lr.ph119.preheader.a:                            ; preds = %_ZL11ToUpperCasePh.exit
  %i.ga = zext i8 %i.fz to i32                    ; 4 uses
  %i.gb = zext i32 %.182.lcssa to i64             ; 13 uses
  %i.gc = zext i8 %i.fz to i64                    ; 5 uses
  %min.iters.check166 = icmp ult i8 %i.fz, 4
  br i1 %min.iters.check166, label %.lr.ph119.preheader183, label %vector.memcheck163

vector.memcheck163:                               ; preds = %.lr.ph119.preheader.a
end_hunk_17
begin_hunk_18_@_ZN13duckdb_brotli29BrotliTransformDictionaryWordEPhPKhiPKNS_16BrotliTransformsEi:bb.a
  %i.ge = sub i64 %i.d, %i.gd
  %i.gf = add i64 %i.ge, %i.y
  %diff.check164 = icmp ugt i64 %i.gf, -33
  br i1 %diff.check164, label %.lr.ph119.preheader183, label %vector.main.loop.iter.check192

vector.main.loop.iter.check192:                   ; preds = %vector.memcheck163
  %min.iters.check193 = icmp ult i8 %i.fz, 32
  br i1 %min.iters.check193, label %vec.epilog.ph214, label %vector.ph167

vector.ph167:                                     ; preds = %vector.main.loop.iter.check192
  %n.mod.vf195 = and i64 %i.gc, 28
  %n.vec169 = and i64 %i.gc, 224                  ; 11 uses
  %i.gg = add nuw nsw i64 %n.vec169, %i.gb        ; 2 uses
  %.cast170 = trunc nuw nsw i64 %n.vec169 to i32
  %i.gh = sub nsw i32 %i.ga, %.cast170
end_hunk_18
begin_hunk_19_@_ZN13duckdb_brotli29BrotliTransformDictionaryWordEPhPKhiPKNS_16BrotliTransformsEi:bb.a
  store <16 x i8> %wide.load175, ptr %i.gl, align 1, !tbaa !15
  store <16 x i8> %wide.load176, ptr %i.gm, align 1, !tbaa !15
  %i.gn = icmp eq i64 %n.vec169, 32
  br i1 %i.gn, label %middle.block205, label %vector.body171.1

vector.body171.1:                                 ; preds = %vector.ph167
  %i.go = getelementptr i8, ptr %i.z, i64 33
end_hunk_19
begin_hunk_20_@_ZN13duckdb_brotli29BrotliTransformDictionaryWordEPhPKhiPKNS_16BrotliTransformsEi:bb.a
  store <16 x i8> %wide.load175.1, ptr %i.gr, align 1, !tbaa !15
  store <16 x i8> %wide.load176.1, ptr %i.gs, align 1, !tbaa !15
  %i.gt = icmp eq i64 %n.vec169, 64
  br i1 %i.gt, label %middle.block205, label %vector.body171.2

vector.body171.2:                                 ; preds = %vector.body171.1
  %i.gu = getelementptr i8, ptr %i.z, i64 65
end_hunk_20
begin_hunk_21_@_ZN13duckdb_brotli29BrotliTransformDictionaryWordEPhPKhiPKNS_16BrotliTransformsEi:bb.a
  store <16 x i8> %wide.load175.2, ptr %i.gx, align 1, !tbaa !15
  store <16 x i8> %wide.load176.2, ptr %i.gy, align 1, !tbaa !15
  %i.gz = icmp eq i64 %n.vec169, 96
  br i1 %i.gz, label %middle.block205, label %vector.body171.3

vector.body171.3:                                 ; preds = %vector.body171.2
  %i.ha = getelementptr i8, ptr %i.z, i64 97
end_hunk_21
begin_hunk_22_@_ZN13duckdb_brotli29BrotliTransformDictionaryWordEPhPKhiPKNS_16BrotliTransformsEi:bb.a
  store <16 x i8> %wide.load175.3, ptr %i.hd, align 1, !tbaa !15
  store <16 x i8> %wide.load176.3, ptr %i.he, align 1, !tbaa !15
  %i.hf = icmp eq i64 %n.vec169, 128
  br i1 %i.hf, label %middle.block205, label %vector.body171.4

vector.body171.4:                                 ; preds = %vector.body171.3
  %i.hg = getelementptr i8, ptr %i.z, i64 129
end_hunk_22
begin_hunk_23_@_ZN13duckdb_brotli29BrotliTransformDictionaryWordEPhPKhiPKNS_16BrotliTransformsEi:bb.a
  store <16 x i8> %wide.load175.4, ptr %i.hj, align 1, !tbaa !15
  store <16 x i8> %wide.load176.4, ptr %i.hk, align 1, !tbaa !15
  %i.hl = icmp eq i64 %n.vec169, 160
  br i1 %i.hl, label %middle.block205, label %vector.body171.5

vector.body171.5:                                 ; preds = %vector.body171.4
  %i.hm = getelementptr i8, ptr %i.z, i64 161
end_hunk_23
begin_hunk_24_@_ZN13duckdb_brotli29BrotliTransformDictionaryWordEPhPKhiPKNS_16BrotliTransformsEi:bb.a
  store <16 x i8> %wide.load175.5, ptr %i.hp, align 1, !tbaa !15
  store <16 x i8> %wide.load176.5, ptr %i.hq, align 1, !tbaa !15
  %i.hr = icmp eq i64 %n.vec169, 192
  br i1 %i.hr, label %middle.block205, label %vector.body171.6

vector.body171.6:                                 ; preds = %vector.body171.5
  %i.hs = getelementptr i8, ptr %i.z, i64 193
end_hunk_24
begin_hunk_25_@_ZN13duckdb_brotli29BrotliTransformDictionaryWordEPhPKhiPKNS_16BrotliTransformsEi:bb.a
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 16
  store <16 x i8> %wide.load175.6, ptr %i.hv, align 1, !tbaa !15
  store <16 x i8> %wide.load176.6, ptr %i.hw, align 1, !tbaa !15
  br label %middle.block205

middle.block205:                                  ; preds = %vector.body171.6, %vector.body171.5, %vector.body171.4, %vector.body171.3, %vector.body171.2, %vector.body171.1, %vector.ph167
  %cmp.n206 = icmp eq i64 %n.vec169, %i.gc
  br i1 %cmp.n206, label %._crit_edge120.loopexit, label %vec.epilog.iter.check212

vec.epilog.iter.check212:                         ; preds = %middle.block205
  %min.epilog.iters.check213 = icmp eq i64 %n.mod.vf195, 0
  br i1 %min.epilog.iters.check213, label %.lr.ph119.preheader183, label %vec.epilog.ph214, !prof !17

vec.epilog.ph214:                                 ; preds = %vector.main.loop.iter.check192, %vec.epilog.iter.check212
  %vec.epilog.resume.val207 = phi i64 [ %n.vec169, %vec.epilog.iter.check212 ], [ 0, %vector.main.loop.iter.check192 ]
  %n.vec216 = and i64 %i.gc, 252                  ; 5 uses
  %13 = add nuw nsw i64 %n.vec216, %i.gb          ; 2 uses
  %.cast217 = trunc nuw nsw i64 %n.vec216 to i32
  %14 = sub nsw i32 %i.ga, %.cast217
  %15 = getelementptr i8, ptr %i.z, i64 %n.vec216
  %invariant.gep241 = getelementptr i8, ptr %0, i64 %i.gb
  br label %vec.epilog.vector.body218

vec.epilog.vector.body218:                        ; preds = %vec.epilog.vector.body218, %vec.epilog.ph214
  %index219 = phi i64 [ %vec.epilog.resume.val207, %vec.epilog.ph214 ], [ %index.next222, %vec.epilog.vector.body218 ] ; 3 uses
  %next.gep220 = getelementptr i8, ptr %i.z, i64 %index219
  %16 = getelementptr inbounds nuw i8, ptr %next.gep220, i64 1
  %wide.load221 = load <4 x i8>, ptr %16, align 1, !tbaa !15
  %gep242 = getelementptr i8, ptr %invariant.gep241, i64 %index219
  store <4 x i8> %wide.load221, ptr %gep242, align 1, !tbaa !15
  %index.next222 = add nuw i64 %index219, 4       ; 2 uses
  %17 = icmp eq i64 %index.next222, %n.vec216
  br i1 %17, label %middle.block178, label %vec.epilog.vector.body218, !llvm.loop !32

middle.block178:                                  ; preds = %vec.epilog.vector.body218
  %cmp.n179 = icmp eq i64 %n.vec216, %i.gc
  br i1 %cmp.n179, label %._crit_edge120.loopexit, label %.lr.ph119.preheader183

.lr.ph119.preheader183:                           ; preds = %vector.memcheck163, %.lr.ph119.preheader.a, %vec.epilog.iter.check212, %middle.block178
  %indvars.iv134.ph = phi i64 [ %i.gb, %.lr.ph119.preheader.a ], [ %i.gb, %vector.memcheck163 ], [ %i.gg, %vec.epilog.iter.check212 ], [ %13, %middle.block178 ] ; 2 uses
  %.0118.ph = phi i32 [ %i.ga, %.lr.ph119.preheader.a ], [ %i.ga, %vector.memcheck163 ], [ %i.gh, %vec.epilog.iter.check212 ], [ %14, %middle.block178 ] ; 4 uses
  %.pn116.ph = phi ptr [ %i.z, %.lr.ph119.preheader.a ], [ %i.z, %vector.memcheck163 ], [ %i.gi, %vec.epilog.iter.check212 ], [ %15, %middle.block178 ] ; 2 uses
  %i.hx = add nsw i32 %.0118.ph, -1
  %xtraiter193 = and i32 %.0118.ph, 3             ; 2 uses
  %lcmp.mod194.not = icmp eq i32 %xtraiter193, 0
end_hunk_25
begin_hunk_26_@_ZN13duckdb_brotli29BrotliTransformDictionaryWordEPhPKhiPKNS_16BrotliTransformsEi:bb.a
  store i8 %i.hz, ptr %i.ia, align 1, !tbaa !15
  %prol.iter195.next = add i32 %prol.iter195, 1   ; 2 uses
  %prol.iter195.cmp.not = icmp eq i32 %prol.iter195.next, %xtraiter193
  br i1 %prol.iter195.cmp.not, label %.lr.ph119.prol.loopexit, label %.lr.ph119.prol, !llvm.loop !33

.lr.ph119.prol.loopexit:                          ; preds = %.lr.ph119.prol, %.lr.ph119.preheader183
  %indvars.iv.next135.lcssa184.unr = phi i64 [ poison, %.lr.ph119.preheader183 ], [ %indvars.iv.next135.prol, %.lr.ph119.prol ]
end_hunk_26
begin_hunk_27_@_ZN13duckdb_brotli29BrotliTransformDictionaryWordEPhPKhiPKNS_16BrotliTransformsEi:bb.a
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 3
  store i8 %i.il, ptr %i.in, align 1, !tbaa !15
  %.not91.3 = icmp eq i32 %i.ik, 0
  br i1 %.not91.3, label %._crit_edge120.loopexit, label %.lr.ph119, !llvm.loop !34

._crit_edge120.loopexit:                          ; preds = %.lr.ph119.prol.loopexit, %.lr.ph119, %middle.block178, %middle.block205
  %indvars.iv.next135.lcssa = phi i64 [ %13, %middle.block178 ], [ %i.gg, %middle.block205 ], [ %indvars.iv.next135.lcssa184.unr, %.lr.ph119.prol.loopexit ], [ %indvars.iv.next135.3, %.lr.ph119 ]
  %i.io = trunc nuw i64 %indvars.iv.next135.lcssa to i32
  br label %._crit_edge120

end_hunk_27
begin_hunk_28_@_ZL5ShiftPhit:bb.a
!14 = !{!8, !10, i64 32}
!15 = !{!5, !5, i64 0}
!16 = !{!9, !9, i64 0}
!17 = !{!"branch_weights", i32 4, i32 28}
!18 = distinct !{!18, !19, !20, !21}
!19 = !{!"llvm.loop.mustprogress"}
!20 = !{!"llvm.loop.isvectorized", i32 1}
!21 = !{!"llvm.loop.unroll.runtime.disable"}
!22 = distinct !{!22, !23}
!23 = !{!"llvm.loop.unroll.disable"}
!24 = distinct !{!24, !19, !20}
!25 = distinct !{!25, !19, !20, !21}
!26 = distinct !{!26, !19, !20, !21}
!27 = distinct !{!27, !23}
!28 = distinct !{!28, !19, !20}
!29 = distinct !{!29, !19}
!30 = !{!8, !10, i64 40}
!31 = distinct !{!31, !19}
!32 = distinct !{!32, !19, !20, !21}
!33 = distinct !{!33, !23}
!34 = distinct !{!34, !19, !20}
end_hunk_28
