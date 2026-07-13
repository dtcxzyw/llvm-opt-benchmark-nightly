inline.NumInlined: 289
inline.NumDeleted: 63
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 15
begin_hunk_0_@ZSTD_decompressBlock:bb.a
  %i.wp = zext i8 %.sroa.4.0.copyload.i94.i.i to i64
  %i.wq = icmp eq i8 %.sroa.4.0.copyload.i94.i.i, 127
  br i1 %i.wq, label %bb.ck, label %ZSTD_decodeSequence.exit.i

bb.ck:                                            ; preds = %bb.cj
  %i.wr = icmp ult ptr %.3.i.i, %i.ds
  br i1 %i.wr, label %bb.cl, label %.thread102.i.i

bb.cl:                                            ; preds = %bb.ck
  %i.ws = getelementptr inbounds nuw i8, ptr %.3.i.i, i64 1 ; 3 uses
  %i.wt = load i8, ptr %.3.i.i, align 1, !tbaa !9 ; 2 uses
  %i.wu = zext i8 %i.wt to i64
  %.not78.i.i = icmp eq i8 %i.wt, -1
  br i1 %.not78.i.i, label %bb.cm, label %.thread102.i.i

.thread102.i.i:                                   ; preds = %bb.cl, %bb.ck
  %i.wv = phi i64 [ %i.wu, %bb.cl ], [ 0, %bb.ck ]
  %.4105.i.i = phi ptr [ %i.ws, %bb.cl ], [ %.3.i.i, %bb.ck ]
  %narrow80.i.i = add nuw nsw i64 %i.wv, 127
  br label %bb.co

bb.cm:                                            ; preds = %bb.cl
  %i.ww = getelementptr inbounds nuw i8, ptr %.3.i.i, i64 4 ; 2 uses
  %.not79.i.i = icmp ugt ptr %i.ww, %i.ds
  br i1 %.not79.i.i, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %.4.val.i.i = load i16, ptr %i.ws, align 1
  %i.wx = getelementptr i8, ptr %.3.i.i, i64 3
  %.4.val83.i.i = load i8, ptr %i.wx, align 1, !tbaa !9
  %i.wy = zext i16 %.4.val.i.i to i64
  %i.wz = zext i8 %.4.val83.i.i to i64
  %i.xa = shl nuw nsw i64 %i.wz, 16
  %i.xb = or disjoint i64 %i.xa, %i.wy
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.cm, %.thread102.i.i
  %.5.i.i = phi ptr [ %.4105.i.i, %.thread102.i.i ], [ %i.ww, %bb.cn ], [ %i.ws, %bb.cm ] ; 2 uses
  %.059.shrunk.i.i = phi i64 [ %narrow80.i.i, %.thread102.i.i ], [ %i.xb, %bb.cn ], [ 127, %bb.cm ]
  %.not81.i.i = icmp ult ptr %.5.i.i, %i.ds
  %spec.select82.i.i = select i1 %.not81.i.i, ptr %.5.i.i, ptr %i.te
  br label %ZSTD_decodeSequence.exit.i

ZSTD_decodeSequence.exit.i:                       ; preds = %bb.co, %bb.cj
  %.7.i98.i = phi ptr [ %spec.select82.i.i, %bb.co ], [ %.3.i.i, %bb.cj ]
  %.160.i.i = phi i64 [ %.059.shrunk.i.i, %bb.co ], [ %i.wp, %bb.cj ] ; 3 uses
  %i.xc = and i32 %i.vs, 63
  %i.xd = zext nneg i32 %i.xc to i64
  %i.xe = shl i64 %.sroa.0.6.i, %i.xd
  %i.xf = lshr i64 %i.xe, 1
  %i.xg = and i32 %spec.store.select.i.i, 63
  %i.xh = xor i32 %i.xg, 63
  %i.xi = zext nneg i32 %i.xh to i64
  %i.xj = lshr i64 %i.xf, %i.xi
  %i.xk = add i64 %i.xj, %i.wa
  %.058.i.i = select i1 %i.vx, i64 %.sroa.speculated.i, i64 %i.xk ; 7 uses
  %i.xl = add nuw nsw i64 %.160.i.i, 4            ; 2 uses
  %i.xm = getelementptr inbounds nuw i8, ptr %.060202.i, i64 %.1.i.i ; 12 uses
  %i.xn = getelementptr i8, ptr %i.xm, i64 %i.xl  ; 5 uses
  %i.xo = getelementptr inbounds nuw i8, ptr %.0138199.i, i64 %.1.i.i ; 2 uses
  %i.xp = add nuw nsw i64 %i.xl, %.1.i.i          ; 2 uses
  %i.xq = ptrtoint ptr %.060202.i to i64          ; 14 uses
  %i.xr = sub i64 %i.tg, %i.xq
  %i.xs = icmp ugt i64 %i.xp, %i.xr
  br i1 %i.xs, label %ZSTD_decompressSequences.exit, label %bb.cp

bb.cp:                                            ; preds = %ZSTD_decodeSequence.exit.i
  %i.xt = ptrtoint ptr %.0138199.i to i64         ; 2 uses
  %i.xu = sub i64 %i.th, %i.xt
  %i.xv = icmp ugt i64 %.1.i.i, %i.xu
  br i1 %i.xv, label %ZSTD_decompressSequences.exit, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.xw = icmp ugt ptr %i.xm, %i.tf
  br i1 %i.xw, label %ZSTD_decompressSequences.exit, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.xx = ptrtoint ptr %i.xm to i64               ; 3 uses
  %i.xy = sub i64 %i.xx, %i.ti
  %i.xz = and i64 %i.xy, 4294967295
  %i.ya = icmp ugt i64 %.058.i.i, %i.xz
  br i1 %i.ya, label %ZSTD_decompressSequences.exit, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.yb = icmp ugt ptr %i.xn, %i.ck
  br i1 %i.yb, label %ZSTD_decompressSequences.exit, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.yc = icmp ugt ptr %i.xo, %i.cl
  br i1 %i.yc, label %ZSTD_decompressSequences.exit, label %.preheader.i.i.preheader

.preheader.i.i.preheader:                         ; preds = %bb.ct
  %i.yd = add i64 %i.xq, 8
  %umax156 = tail call i64 @llvm.umax.i64(i64 %i.xx, i64 %i.yd)
  %i.ye = xor i64 %i.xq, -1
  %i.yf = add i64 %umax156, %i.ye                 ; 2 uses
  %i.yg = lshr i64 %i.yf, 3
  %i.yh = add nuw nsw i64 %i.yg, 1                ; 2 uses
  %min.iters.check158 = icmp ult i64 %i.yf, 24
  %i.yi = sub i64 %i.xt, %i.xq
  %diff.check155 = icmp ugt i64 %i.yi, -32
  %or.cond = or i1 %min.iters.check158, %diff.check155
  br i1 %or.cond, label %.preheader.i.i.preheader176, label %vector.ph159

vector.ph159:                                     ; preds = %.preheader.i.i.preheader
  %n.vec161 = and i64 %i.yh, 4611686018427387900  ; 3 uses
  %i.yj = shl i64 %n.vec161, 3                    ; 2 uses
  %i.yk = getelementptr i8, ptr %.060202.i, i64 %i.yj
  %i.yl = getelementptr i8, ptr %.0138199.i, i64 %i.yj
  br label %vector.body162

vector.body162:                                   ; preds = %vector.body162, %vector.ph159
  %index163 = phi i64 [ 0, %vector.ph159 ], [ %index.next168, %vector.body162 ] ; 2 uses
  %i.ym = shl i64 %index163, 3                    ; 2 uses
  %next.gep164 = getelementptr i8, ptr %.060202.i, i64 %i.ym ; 2 uses
  %next.gep165 = getelementptr i8, ptr %.0138199.i, i64 %i.ym ; 2 uses
  %i.yn = getelementptr i8, ptr %next.gep165, i64 16
  %wide.load166 = load <2 x i64>, ptr %next.gep165, align 1
  %wide.load167 = load <2 x i64>, ptr %i.yn, align 1
  %i.yo = getelementptr i8, ptr %next.gep164, i64 16
  store <2 x i64> %wide.load166, ptr %next.gep164, align 1
  store <2 x i64> %wide.load167, ptr %i.yo, align 1
  %index.next168 = add nuw i64 %index163, 4       ; 2 uses
  %i.yp = icmp eq i64 %index.next168, %n.vec161
  br i1 %i.yp, label %middle.block169, label %vector.body162, !llvm.loop !43

middle.block169:                                  ; preds = %vector.body162
  %cmp.n170 = icmp eq i64 %i.yh, %n.vec161
  br i1 %cmp.n170, label %ZSTD_wildcopy.exit.i.i, label %.preheader.i.i.preheader176

.preheader.i.i.preheader176:                      ; preds = %.preheader.i.i.preheader, %middle.block169
  %.09.i.i.i.ph = phi ptr [ %.060202.i, %.preheader.i.i.preheader ], [ %i.yk, %middle.block169 ]
  %.0.i.i.i.ph = phi ptr [ %.0138199.i, %.preheader.i.i.preheader ], [ %i.yl, %middle.block169 ]
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.preheader176, %.preheader.i.i
  %.09.i.i.i = phi ptr [ %i.yq, %.preheader.i.i ], [ %.09.i.i.i.ph, %.preheader.i.i.preheader176 ] ; 2 uses
  %.0.i.i.i = phi ptr [ %i.yr, %.preheader.i.i ], [ %.0.i.i.i.ph, %.preheader.i.i.preheader176 ] ; 2 uses
  %.0.val.i.i.i = load i64, ptr %.0.i.i.i, align 1
  store i64 %.0.val.i.i.i, ptr %.09.i.i.i, align 1
  %i.yq = getelementptr inbounds nuw i8, ptr %.09.i.i.i, i64 8 ; 2 uses
  %i.yr = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 8
  %i.ys = icmp ult ptr %i.yq, %i.xm
  br i1 %i.ys, label %.preheader.i.i, label %ZSTD_wildcopy.exit.i.i, !llvm.loop !46

ZSTD_wildcopy.exit.i.i:                           ; preds = %.preheader.i.i, %middle.block169
  %i.yt = sub nsw i64 0, %.058.i.i
  %i.yu = getelementptr inbounds i8, ptr %i.xm, i64 %i.yt ; 8 uses
  %i.yv = icmp ugt i64 %.058.i.i, %i.xx
  %i.yw = icmp ult ptr %i.yu, %i.cp
  %or.cond.i.i16 = select i1 %i.yv, i1 true, i1 %i.yw
  br i1 %or.cond.i.i16, label %ZSTD_decompressSequences.exit, label %bb.cu

bb.cu:                                            ; preds = %ZSTD_wildcopy.exit.i.i
  %i.yx = icmp samesign ult i64 %.058.i.i, 8
  br i1 %i.yx, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %bb.cu
  %i.yy = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_execSequence.dec64table, i64 %.058.i.i
  %i.yz = load i32, ptr %i.yy, align 4, !tbaa !3
  %i.za = load i8, ptr %i.yu, align 1, !tbaa !9
  store i8 %i.za, ptr %i.xm, align 1, !tbaa !9
  %i.zb = getelementptr inbounds nuw i8, ptr %i.yu, i64 1
  %i.zc = load i8, ptr %i.zb, align 1, !tbaa !9
  %i.zd = getelementptr inbounds nuw i8, ptr %i.xm, i64 1
  store i8 %i.zc, ptr %i.zd, align 1, !tbaa !9
  %i.ze = getelementptr inbounds nuw i8, ptr %i.yu, i64 2
  %i.zf = load i8, ptr %i.ze, align 1, !tbaa !9
  %i.zg = getelementptr inbounds nuw i8, ptr %i.xm, i64 2
  store i8 %i.zf, ptr %i.zg, align 1, !tbaa !9
  %i.zh = getelementptr inbounds nuw i8, ptr %i.yu, i64 3
  %i.zi = load i8, ptr %i.zh, align 1, !tbaa !9
  %i.zj = getelementptr inbounds nuw i8, ptr %i.xm, i64 3
  store i8 %i.zi, ptr %i.zj, align 1, !tbaa !9
  %i.zk = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_execSequence.dec32table, i64 %.058.i.i
  %i.zl = load i32, ptr %i.zk, align 4, !tbaa !3
  %i.zm = sext i32 %i.zl to i64
  %i.zn = getelementptr inbounds i8, ptr %i.yu, i64 %i.zm ; 2 uses
  %i.zo = getelementptr inbounds nuw i8, ptr %i.xm, i64 4
  %.val79.i.i = load i32, ptr %i.zn, align 1
  store i32 %.val79.i.i, ptr %i.zo, align 1
  %i.zp = sext i32 %i.yz to i64
  %i.zq = sub nsw i64 0, %i.zp
  %i.zr = getelementptr inbounds i8, ptr %i.zn, i64 %i.zq
  br label %bb.cx

bb.cw:                                            ; preds = %bb.cu
  %.val.i100.i = load i64, ptr %i.yu, align 1
  store i64 %.val.i100.i, ptr %i.xm, align 1
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.cv
  %.065.i.i = phi ptr [ %i.zr, %bb.cv ], [ %i.yu, %bb.cw ] ; 2 uses
  %.065.i.i118 = ptrtoaddr ptr %.065.i.i to i64   ; 2 uses
  %i.zs = getelementptr inbounds nuw i8, ptr %i.xm, i64 8 ; 11 uses
  %i.zt = getelementptr inbounds nuw i8, ptr %.065.i.i, i64 8 ; 10 uses
  %i.zu = icmp ugt ptr %i.xn, %i.tj
  br i1 %i.zu, label %bb.cy, label %.preheader186.i.preheader

.preheader186.i.preheader:                        ; preds = %bb.cx
  %i.zv = add nsw i64 %.1.i.i, 4
  %i.zw = add nsw i64 %i.zv, %.160.i.i
  %i.zx = add i64 %i.zw, %i.xq
  %i.zy = add nsw i64 %.1.i.i, 16
  %i.zz = add i64 %i.zy, %i.xq
  %umax137 = tail call i64 @llvm.umax.i64(i64 %i.zx, i64 %i.zz)
  %i.aaa = add i64 %umax137, -9
  %5 = add i64 %.1.i.i, %i.xq
  %6 = sub i64 %i.aaa, %5                         ; 2 uses
  %i.aab = lshr i64 %6, 3
  %i.aac = add nuw nsw i64 %i.aab, 1              ; 2 uses
  %min.iters.check139 = icmp ult i64 %6, 56
  br i1 %min.iters.check139, label %.preheader186.i.preheader174, label %vector.memcheck135

vector.memcheck135:                               ; preds = %.preheader186.i.preheader
  %i.aad = add i64 %.1.i.i, %i.xq
  %i.aae = sub i64 %.065.i.i118, %i.aad
  %diff.check136 = icmp ugt i64 %i.aae, -32
  br i1 %diff.check136, label %.preheader186.i.preheader174, label %vector.ph140

vector.ph140:                                     ; preds = %vector.memcheck135
  %n.vec142 = and i64 %i.aac, 4611686018427387900 ; 3 uses
  %i.aaf = shl i64 %n.vec142, 3                   ; 2 uses
  %i.aag = getelementptr i8, ptr %i.zs, i64 %i.aaf
  %i.aah = getelementptr i8, ptr %i.zt, i64 %i.aaf
  br label %vector.body143

vector.body143:                                   ; preds = %vector.body143, %vector.ph140
  %index144 = phi i64 [ 0, %vector.ph140 ], [ %index.next149, %vector.body143 ] ; 2 uses
  %i.aai = shl i64 %index144, 3                   ; 2 uses
  %next.gep145 = getelementptr i8, ptr %i.zs, i64 %i.aai ; 2 uses
  %next.gep146 = getelementptr i8, ptr %i.zt, i64 %i.aai ; 2 uses
  %i.aaj = getelementptr i8, ptr %next.gep146, i64 16
  %wide.load147 = load <2 x i64>, ptr %next.gep146, align 1
  %wide.load148 = load <2 x i64>, ptr %i.aaj, align 1
  %i.aak = getelementptr i8, ptr %next.gep145, i64 16
  store <2 x i64> %wide.load147, ptr %next.gep145, align 1
  store <2 x i64> %wide.load148, ptr %i.aak, align 1
  %index.next149 = add nuw i64 %index144, 4       ; 2 uses
  %i.aal = icmp eq i64 %index.next149, %n.vec142
  br i1 %i.aal, label %middle.block150, label %vector.body143, !llvm.loop !47

middle.block150:                                  ; preds = %vector.body143
  %cmp.n151 = icmp eq i64 %i.aac, %n.vec142
  br i1 %cmp.n151, label %ZSTD_execSequence.exit.i, label %.preheader186.i.preheader174

.preheader186.i.preheader174:                     ; preds = %vector.memcheck135, %.preheader186.i.preheader, %middle.block150
  %.09.i84.i.i.ph = phi ptr [ %i.zs, %vector.memcheck135 ], [ %i.zs, %.preheader186.i.preheader ], [ %i.aag, %middle.block150 ]
  %.0.i85.i.i.ph = phi ptr [ %i.zt, %vector.memcheck135 ], [ %i.zt, %.preheader186.i.preheader ], [ %i.aah, %middle.block150 ]
  br label %.preheader186.i

bb.cy:                                            ; preds = %bb.cx
  %i.aam = icmp ult ptr %i.zs, %i.tf
  br i1 %i.aam, label %.preheader.i.preheader, label %bb.cz

.preheader.i.preheader:                           ; preds = %bb.cy
  %i.aan = add nsw i64 %.1.i.i, 16
  %i.aao = add i64 %i.aan, %i.xq
  %umax120 = tail call i64 @llvm.umax.i64(i64 %i.tk, i64 %i.aao)
  %i.aap = add i64 %umax120, -9
  %7 = add i64 %.1.i.i, %i.xq
  %8 = sub i64 %i.aap, %7                         ; 2 uses
  %i.aaq = lshr i64 %8, 3
  %i.aar = add nuw nsw i64 %i.aaq, 1              ; 2 uses
  %min.iters.check121 = icmp ult i64 %8, 56
  br i1 %min.iters.check121, label %.preheader.i.preheader173, label %vector.memcheck117

vector.memcheck117:                               ; preds = %.preheader.i.preheader
  %i.aas = add i64 %.1.i.i, %i.xq
  %i.aat = sub i64 %.065.i.i118, %i.aas
  %diff.check119 = icmp ugt i64 %i.aat, -32
  br i1 %diff.check119, label %.preheader.i.preheader173, label %vector.ph122

vector.ph122:                                     ; preds = %vector.memcheck117
  %n.vec124 = and i64 %i.aar, 4611686018427387900 ; 3 uses
  %i.aau = shl i64 %n.vec124, 3                   ; 2 uses
  %i.aav = getelementptr i8, ptr %i.zs, i64 %i.aau
  %i.aaw = getelementptr i8, ptr %i.zt, i64 %i.aau
  br label %vector.body125

vector.body125:                                   ; preds = %vector.body125, %vector.ph122
  %index126 = phi i64 [ 0, %vector.ph122 ], [ %index.next131, %vector.body125 ] ; 2 uses
  %i.aax = shl i64 %index126, 3                   ; 2 uses
  %next.gep127.a = getelementptr i8, ptr %i.zs, i64 %i.aax ; 2 uses
  %next.gep128 = getelementptr i8, ptr %i.zt, i64 %i.aax ; 2 uses
  %i.aay = getelementptr i8, ptr %next.gep128, i64 16
  %wide.load129.a = load <2 x i64>, ptr %next.gep128, align 1
  %wide.load130 = load <2 x i64>, ptr %i.aay, align 1
  %i.aaz = getelementptr i8, ptr %next.gep127.a, i64 16
  store <2 x i64> %wide.load129.a, ptr %next.gep127.a, align 1
  store <2 x i64> %wide.load130, ptr %i.aaz, align 1
  %index.next131 = add nuw i64 %index126, 4       ; 2 uses
  %i.aba = icmp eq i64 %index.next131, %n.vec124
  br i1 %i.aba, label %middle.block132, label %vector.body125, !llvm.loop !48

middle.block132:                                  ; preds = %vector.body125
  %cmp.n133 = icmp eq i64 %i.aar, %n.vec124
  br i1 %cmp.n133, label %ZSTD_wildcopy.exit83.i.i, label %.preheader.i.preheader173

.preheader.i.preheader173:                        ; preds = %vector.memcheck117, %.preheader.i.preheader, %middle.block132
  %.09.i80.i.i.ph = phi ptr [ %i.zs, %vector.memcheck117 ], [ %i.zs, %.preheader.i.preheader ], [ %i.aav, %middle.block132 ]
  %.0.i81.i.i.ph = phi ptr [ %i.zt, %vector.memcheck117 ], [ %i.zt, %.preheader.i.preheader ], [ %i.aaw, %middle.block132 ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader173, %.preheader.i
  %.09.i80.i.i = phi ptr [ %i.abb, %.preheader.i ], [ %.09.i80.i.i.ph, %.preheader.i.preheader173 ] ; 2 uses
  %.0.i81.i.i = phi ptr [ %i.abc, %.preheader.i ], [ %.0.i81.i.i.ph, %.preheader.i.preheader173 ] ; 2 uses
  %.0.val.i82.i.i = load i64, ptr %.0.i81.i.i, align 1
  store i64 %.0.val.i82.i.i, ptr %.09.i80.i.i, align 1
  %i.abb = getelementptr inbounds nuw i8, ptr %.09.i80.i.i, i64 8 ; 2 uses
  %i.abc = getelementptr inbounds nuw i8, ptr %.0.i81.i.i, i64 8
  %i.abd = icmp ult ptr %i.abb, %i.tf
  br i1 %i.abd, label %.preheader.i, label %ZSTD_wildcopy.exit83.i.i, !llvm.loop !49

ZSTD_wildcopy.exit83.i.i:                         ; preds = %.preheader.i, %middle.block132
  %i.abe = ptrtoint ptr %i.zs to i64
  %i.abf = sub i64 %i.tk, %i.abe
  %i.abg = getelementptr inbounds i8, ptr %i.zt, i64 %i.abf
  br label %bb.cz

bb.cz:                                            ; preds = %ZSTD_wildcopy.exit83.i.i, %bb.cy
  %.068.i.i = phi ptr [ %i.tf, %ZSTD_wildcopy.exit83.i.i ], [ %i.zs, %bb.cy ] ; 7 uses
  %.166.i.i = phi ptr [ %i.abg, %ZSTD_wildcopy.exit83.i.i ], [ %i.zt, %bb.cy ] ; 7 uses
  %.166.i.i101 = ptrtoaddr ptr %.166.i.i to i64
  %i.abh = icmp ult ptr %.068.i.i, %i.xn
  br i1 %i.abh, label %iter.check, label %ZSTD_execSequence.exit.i

iter.check:                                       ; preds = %bb.cz
  %i.abi = add nsw i64 %.1.i.i, 4
  %i.abj = add nsw i64 %i.abi, %.160.i.i
  %i.abk = add i64 %i.abj, %i.xq
  %i.abl = add nsw i64 %.1.i.i, 8
  %i.abm = add i64 %i.abl, %i.xq
  %umax102 = tail call i64 @llvm.umax.i64(i64 %i.tk, i64 %i.abm)
  %i.abn = sub i64 %i.abk, %umax102               ; 7 uses
  %min.iters.check = icmp ult i64 %i.abn, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.abo = add nsw i64 %.1.i.i, 8
  %i.abp = add i64 %i.abo, %i.xq
  %umax = tail call i64 @llvm.umax.i64(i64 %i.tm, i64 %i.abp)
  %i.abq = sub i64 %.166.i.i101, %umax
  %diff.check = icmp ugt i64 %i.abq, -32
  br i1 %diff.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check103 = icmp ult i64 %i.abn, 32
  br i1 %min.iters.check103, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.abn, 28
  %n.vec = and i64 %i.abn, -32                    ; 5 uses
  %i.abr = getelementptr i8, ptr %.166.i.i, i64 %n.vec
  %i.abs = getelementptr i8, ptr %.068.i.i, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.166.i.i, i64 %index ; 2 uses
  %next.gep104 = getelementptr i8, ptr %.068.i.i, i64 %index ; 2 uses
  %i.abt = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !9
  %wide.load105 = load <16 x i8>, ptr %i.abt, align 1, !tbaa !9
  %i.abu = getelementptr i8, ptr %next.gep104, i64 16
  store <16 x i8> %wide.load, ptr %next.gep104, align 1, !tbaa !9
  store <16 x i8> %wide.load105, ptr %i.abu, align 1, !tbaa !9
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.abv = icmp eq i64 %index.next, %n.vec
  br i1 %i.abv, label %middle.block, label %vector.body, !llvm.loop !50

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.abn, %n.vec
  br i1 %cmp.n, label %ZSTD_execSequence.exit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !51

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec108 = and i64 %i.abn, -4                  ; 4 uses
  %i.abw = getelementptr i8, ptr %.166.i.i, i64 %n.vec108
  %i.abx = getelementptr i8, ptr %.068.i.i, i64 %n.vec108
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index109 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next113, %vec.epilog.vector.body ] ; 3 uses
  %next.gep110 = getelementptr i8, ptr %.166.i.i, i64 %index109
  %next.gep111 = getelementptr i8, ptr %.068.i.i, i64 %index109
  %wide.load112 = load <4 x i8>, ptr %next.gep110, align 1, !tbaa !9
  store <4 x i8> %wide.load112, ptr %next.gep111, align 1, !tbaa !9
  %index.next113 = add nuw i64 %index109, 4       ; 2 uses
  %i.aby = icmp eq i64 %index.next113, %n.vec108
  br i1 %i.aby, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !52

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n114 = icmp eq i64 %i.abn, %n.vec108
  br i1 %cmp.n114, label %ZSTD_execSequence.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.291.i.i.ph = phi ptr [ %.166.i.i, %iter.check ], [ %.166.i.i, %vector.memcheck ], [ %i.abr, %vec.epilog.iter.check ], [ %i.abw, %vec.epilog.middle.block ]
  %.16990.i.i.ph = phi ptr [ %.068.i.i, %iter.check ], [ %.068.i.i, %vector.memcheck ], [ %i.abs, %vec.epilog.iter.check ], [ %i.abx, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.291.i.i = phi ptr [ %i.abz, %.lr.ph.i.i ], [ %.291.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.16990.i.i = phi ptr [ %i.acb, %.lr.ph.i.i ], [ %.16990.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.abz = getelementptr inbounds nuw i8, ptr %.291.i.i, i64 1
  %i.aca = load i8, ptr %.291.i.i, align 1, !tbaa !9
  %i.acb = getelementptr inbounds nuw i8, ptr %.16990.i.i, i64 1 ; 2 uses
  store i8 %i.aca, ptr %.16990.i.i, align 1, !tbaa !9
  %i.acc = icmp ult ptr %i.acb, %i.xn
  br i1 %i.acc, label %.lr.ph.i.i, label %ZSTD_execSequence.exit.i, !llvm.loop !53

.preheader186.i:                                  ; preds = %.preheader186.i.preheader174, %.preheader186.i
  %.09.i84.i.i = phi ptr [ %i.acd, %.preheader186.i ], [ %.09.i84.i.i.ph, %.preheader186.i.preheader174 ] ; 2 uses
  %.0.i85.i.i = phi ptr [ %i.ace, %.preheader186.i ], [ %.0.i85.i.i.ph, %.preheader186.i.preheader174 ] ; 2 uses
  %.0.val.i86.i.i = load i64, ptr %.0.i85.i.i, align 1
  store i64 %.0.val.i86.i.i, ptr %.09.i84.i.i, align 1
  %i.acd = getelementptr inbounds nuw i8, ptr %.09.i84.i.i, i64 8 ; 2 uses
  %i.ace = getelementptr inbounds nuw i8, ptr %.0.i85.i.i, i64 8
  %i.acf = icmp ult ptr %i.acd, %i.xn
  br i1 %i.acf, label %.preheader186.i, label %ZSTD_execSequence.exit.i, !llvm.loop !54

ZSTD_execSequence.exit.i:                         ; preds = %.preheader186.i, %.lr.ph.i.i, %middle.block150, %middle.block, %vec.epilog.middle.block, %bb.cz
  %i.acg = getelementptr inbounds nuw i8, ptr %.060202.i, i64 %i.xp
  %i.ach = icmp ugt i32 %i.wm, 64
  br i1 %i.ach, label %ZSTD_decompressSequences.exit, label %bb.bz

BIT_reloadDStream.exit.thread.i:                  ; preds = %BIT_reloadDStream.exit.i
  %i.aci = icmp ne i32 %.sroa.20.8.i, 64
  %i.acj = icmp ne ptr %.sroa.42112.8.i, %.786120.i.i
  %brmerge.i = select i1 %i.acj, i1 true, i1 %i.aci
  br i1 %brmerge.i, label %ZSTD_decompressSequences.exit, label %bb.da

bb.da:                                            ; preds = %BIT_reloadDStream.exit.thread.i
  %i.ack = ptrtoint ptr %.0138199.i to i64
  %i.acl = sub i64 %i.th, %i.ack                  ; 2 uses
  %i.acm = icmp ugt ptr %.0138199.i, %i.cl
  br i1 %i.acm, label %ZSTD_decompressSequences.exit, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.acn = getelementptr inbounds nuw i8, ptr %.060202.i, i64 %i.acl ; 3 uses
  %i.aco = icmp ugt ptr %i.acn, %i.ck
  br i1 %i.aco, label %ZSTD_decompressSequences.exit, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %.not71.i = icmp eq ptr %i.cl, %.0138199.i
  br i1 %.not71.i, label %bb.df, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %.not72.i = icmp eq ptr %.060202.i, %.0138199.i
  br i1 %.not72.i, label %bb.df, label %bb.de

bb.de:                                            ; preds = %bb.dd
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.060202.i, ptr align 1 %.0138199.i, i64 %i.acl, i1 false)
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %bb.dd, %bb.dc
  %.464.i = phi ptr [ %i.acn, %bb.dd ], [ %.060202.i, %bb.dc ], [ %i.acn, %bb.de ]
  %i.acp = ptrtoint ptr %.464.i to i64
end_hunk_0
