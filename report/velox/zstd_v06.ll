inline.NumInlined: 337
inline.NumDeleted: 52
begin_hunk_0_@ZSTDv06_decompressBlock_internal:bb.a
  %i.yr = getelementptr inbounds nuw [4 x i8], ptr @ZSTDv06_execSequence.dec32table, i64 %i.sc
  %i.ys = load i32, ptr %i.yr, align 4, !tbaa !3
  %i.yt = zext i32 %i.ys to i64
  %i.yu = getelementptr inbounds nuw i8, ptr %.294.i.i, i64 %i.yt ; 2 uses
  %i.yv = getelementptr inbounds nuw i8, ptr %.2.i118.i, i64 4
  %.val.i119.i = load i32, ptr %i.yu, align 1
  store i32 %.val.i119.i, ptr %i.yv, align 1
  %i.yw = sext i32 %i.yg to i64
  %i.yx = sub nsw i64 0, %i.yw
  %i.yy = getelementptr inbounds i8, ptr %i.yu, i64 %i.yx
  br label %bb.co

bb.cn:                                            ; preds = %.thread.i117.i
  %.294.val.i.i = load i64, ptr %.294.i.i, align 1
  store i64 %.294.val.i.i, ptr %.2.i118.i, align 1
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.cm
  %.395.i.i = phi ptr [ %i.yy, %bb.cm ], [ %.294.i.i, %bb.cn ] ; 2 uses
  %.395.i.i137 = ptrtoaddr ptr %.395.i.i to i64   ; 2 uses
  %i.yz = getelementptr inbounds nuw i8, ptr %.2.i118.i, i64 8 ; 11 uses
  %i.za = getelementptr inbounds nuw i8, ptr %.395.i.i, i64 8 ; 10 uses
  %i.zb = icmp ugt ptr %i.vs, %i.pf
  br i1 %i.zb, label %bb.cp, label %bb.cr

bb.cp:                                            ; preds = %bb.co
  %i.zc = icmp ult ptr %i.yz, %i.pa
  br i1 %i.zc, label %.preheader.i.preheader, label %bb.cq

.preheader.i.preheader:                           ; preds = %bb.cp
  %umax139 = tail call i64 @llvm.umax.i64(i64 %i.sc, i64 %i.wy) ; 2 uses
  %i.zd = add i64 %i.pm, %umax139
  %umax140 = tail call i64 @llvm.umax.i64(i64 %i.pg, i64 %i.zd)
  %i.ze = add i64 %umax140, -9
  %i.zf = add i64 %umax139, %i.pd
  %i.zg = sub i64 %i.ze, %i.zf                    ; 2 uses
  %i.zh = lshr i64 %i.zg, 3
  %i.zi = add nuw nsw i64 %i.zh, 1                ; 2 uses
  %min.iters.check141 = icmp ult i64 %i.zg, 72
  br i1 %min.iters.check141, label %.preheader.i.preheader235, label %vector.memcheck135

vector.memcheck135:                               ; preds = %.preheader.i.preheader
  %i.zj = sub i64 %i.th, %i.pd
  %i.zk = add i64 %i.zj, %i.vw
  %i.zl = add i64 %i.zk, %i.sv
  %umax136 = tail call i64 @llvm.umax.i64(i64 %i.sc, i64 %i.zl)
  %i.zm = add i64 %umax136, %i.pd
  %i.zn = sub i64 %i.zm, %.395.i.i137
  %diff.check138 = icmp ult i64 %i.zn, 32
  br i1 %diff.check138, label %.preheader.i.preheader235, label %vector.ph142

vector.ph142:                                     ; preds = %vector.memcheck135
  %n.vec144 = and i64 %i.zi, 4611686018427387900  ; 3 uses
  %i.zo = shl i64 %n.vec144, 3                    ; 2 uses
  %i.zp = getelementptr i8, ptr %i.yz, i64 %i.zo
  %i.zq = getelementptr i8, ptr %i.za, i64 %i.zo
  br label %vector.body145

vector.body145:                                   ; preds = %vector.body145, %vector.ph142
  %index146 = phi i64 [ 0, %vector.ph142 ], [ %index.next151, %vector.body145 ] ; 2 uses
  %i.zr = shl i64 %index146, 3                    ; 2 uses
  %next.gep147 = getelementptr i8, ptr %i.yz, i64 %i.zr ; 2 uses
  %next.gep148 = getelementptr i8, ptr %i.za, i64 %i.zr ; 2 uses
  %i.zs = getelementptr i8, ptr %next.gep148, i64 16
  %wide.load149 = load <2 x i64>, ptr %next.gep148, align 1
  %wide.load150 = load <2 x i64>, ptr %i.zs, align 1
  %i.zt = getelementptr i8, ptr %next.gep147, i64 16
  store <2 x i64> %wide.load149, ptr %next.gep147, align 1
  store <2 x i64> %wide.load150, ptr %i.zt, align 1
  %index.next151 = add nuw i64 %index146, 4       ; 2 uses
  %i.zu = icmp eq i64 %index.next151, %n.vec144
  br i1 %i.zu, label %middle.block152, label %vector.body145, !llvm.loop !118

middle.block152:                                  ; preds = %vector.body145
  %cmp.n153 = icmp eq i64 %i.zi, %n.vec144
  br i1 %cmp.n153, label %ZSTDv06_wildcopy.exit114.i.i, label %.preheader.i.preheader235

.preheader.i.preheader235:                        ; preds = %vector.memcheck135, %.preheader.i.preheader, %middle.block152
  %.09.i111.i.i.ph = phi ptr [ %i.yz, %vector.memcheck135 ], [ %i.yz, %.preheader.i.preheader ], [ %i.zp, %middle.block152 ]
  %.0.i112.i.i.ph = phi ptr [ %i.za, %vector.memcheck135 ], [ %i.za, %.preheader.i.preheader ], [ %i.zq, %middle.block152 ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader235, %.preheader.i
  %.09.i111.i.i = phi ptr [ %i.zv, %.preheader.i ], [ %.09.i111.i.i.ph, %.preheader.i.preheader235 ] ; 2 uses
  %.0.i112.i.i = phi ptr [ %i.zw, %.preheader.i ], [ %.0.i112.i.i.ph, %.preheader.i.preheader235 ] ; 2 uses
  %.0.val.i113.i.i = load i64, ptr %.0.i112.i.i, align 1
  store i64 %.0.val.i113.i.i, ptr %.09.i111.i.i, align 1
  %i.zv = getelementptr inbounds nuw i8, ptr %.09.i111.i.i, i64 8 ; 2 uses
  %i.zw = getelementptr inbounds nuw i8, ptr %.0.i112.i.i, i64 8
  %i.zx = icmp ult ptr %i.zv, %i.pa
  br i1 %i.zx, label %.preheader.i, label %ZSTDv06_wildcopy.exit114.i.i, !llvm.loop !119

ZSTDv06_wildcopy.exit114.i.i:                     ; preds = %.preheader.i, %middle.block152
  %i.zy = ptrtoint ptr %i.yz to i64
  %i.zz = sub i64 %i.pg, %i.zy
  %i.aaa = getelementptr inbounds i8, ptr %i.za, i64 %i.zz
  br label %bb.cq

bb.cq:                                            ; preds = %ZSTDv06_wildcopy.exit114.i.i, %bb.cp
  %.496.i.i = phi ptr [ %i.aaa, %ZSTDv06_wildcopy.exit114.i.i ], [ %i.za, %bb.cp ] ; 7 uses
  %.3.i.i = phi ptr [ %i.pa, %ZSTDv06_wildcopy.exit114.i.i ], [ %i.yz, %bb.cp ] ; 7 uses
  %.496.i.i118 = ptrtoaddr ptr %.496.i.i to i64
  %i.aab = icmp ult ptr %.3.i.i, %i.vs
  br i1 %i.aab, label %iter.check, label %ZSTDv06_execSequence.exit.i

iter.check:                                       ; preds = %bb.cq
  %i.aac = add i64 %i.sr, %i.th
  %i.aad = add i64 %i.aac, %i.vw
  %i.aae = add i64 %i.aad, %i.sv
  %i.aaf = add i64 %i.aae, %i.sg
  %umax119 = tail call i64 @llvm.umax.i64(i64 %i.sc, i64 %i.wy)
  %i.aag = add i64 %i.pl, %umax119
  %umax120 = tail call i64 @llvm.umax.i64(i64 %i.pg, i64 %i.aag)
  %i.aah = sub i64 %i.aaf, %umax120               ; 7 uses
  %min.iters.check = icmp ult i64 %i.aah, 4
  br i1 %min.iters.check, label %.lr.ph128.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.aai = sub i64 %i.th, %i.pd
  %i.aaj = add i64 %i.aai, %i.vw
  %i.aak = add i64 %i.aaj, %i.sv
  %umax = tail call i64 @llvm.umax.i64(i64 %i.sc, i64 %i.aak)
  %i.aal = add i64 %i.pk, %umax
  %umax117 = tail call i64 @llvm.umax.i64(i64 %i.pj, i64 %i.aal)
  %i.aam = sub i64 %umax117, %.496.i.i118
  %diff.check = icmp ult i64 %i.aam, 32
  br i1 %diff.check, label %.lr.ph128.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check121 = icmp ult i64 %i.aah, 32
  br i1 %min.iters.check121, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.aah, 28
  %n.vec = and i64 %i.aah, -32                    ; 5 uses
  %i.aan = getelementptr i8, ptr %.3.i.i, i64 %n.vec
  %i.aao = getelementptr i8, ptr %.496.i.i, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.3.i.i, i64 %index ; 2 uses
  %next.gep122 = getelementptr i8, ptr %.496.i.i, i64 %index ; 2 uses
  %i.aap = getelementptr i8, ptr %next.gep122, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep122, align 1, !tbaa !27
  %wide.load123 = load <16 x i8>, ptr %i.aap, align 1, !tbaa !27
  %i.aaq = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !27
  store <16 x i8> %wide.load123, ptr %i.aaq, align 1, !tbaa !27
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.aar = icmp eq i64 %index.next, %n.vec
  br i1 %i.aar, label %middle.block, label %vector.body, !llvm.loop !120

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aah, %n.vec
  br i1 %cmp.n, label %ZSTDv06_execSequence.exit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph128.i.i.preheader, label %vec.epilog.ph, !prof !115

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec126 = and i64 %i.aah, -4                  ; 4 uses
  %i.aas = getelementptr i8, ptr %.3.i.i, i64 %n.vec126
  %i.aat = getelementptr i8, ptr %.496.i.i, i64 %n.vec126
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index127 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next131, %vec.epilog.vector.body ] ; 3 uses
  %next.gep128 = getelementptr i8, ptr %.3.i.i, i64 %index127
  %next.gep129 = getelementptr i8, ptr %.496.i.i, i64 %index127
  %wide.load130 = load <4 x i8>, ptr %next.gep129, align 1, !tbaa !27
  store <4 x i8> %wide.load130, ptr %next.gep128, align 1, !tbaa !27
  %index.next131 = add nuw i64 %index127, 4       ; 2 uses
  %i.aau = icmp eq i64 %index.next131, %n.vec126
  br i1 %i.aau, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !121

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n132 = icmp eq i64 %i.aah, %n.vec126
  br i1 %cmp.n132, label %ZSTDv06_execSequence.exit.i, label %.lr.ph128.i.i.preheader

.lr.ph128.i.i.preheader:                          ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.4127.i.i.ph = phi ptr [ %.3.i.i, %iter.check ], [ %.3.i.i, %vector.memcheck ], [ %i.aan, %vec.epilog.iter.check ], [ %i.aas, %vec.epilog.middle.block ]
  %.5126.i.i.ph = phi ptr [ %.496.i.i, %iter.check ], [ %.496.i.i, %vector.memcheck ], [ %i.aao, %vec.epilog.iter.check ], [ %i.aat, %vec.epilog.middle.block ]
  br label %.lr.ph128.i.i

.lr.ph128.i.i:                                    ; preds = %.lr.ph128.i.i.preheader, %.lr.ph128.i.i
  %.4127.i.i = phi ptr [ %i.aax, %.lr.ph128.i.i ], [ %.4127.i.i.ph, %.lr.ph128.i.i.preheader ] ; 2 uses
  %.5126.i.i = phi ptr [ %i.aav, %.lr.ph128.i.i ], [ %.5126.i.i.ph, %.lr.ph128.i.i.preheader ] ; 2 uses
  %i.aav = getelementptr inbounds nuw i8, ptr %.5126.i.i, i64 1
  %i.aaw = load i8, ptr %.5126.i.i, align 1, !tbaa !27
  %i.aax = getelementptr inbounds nuw i8, ptr %.4127.i.i, i64 1 ; 2 uses
  store i8 %i.aaw, ptr %.4127.i.i, align 1, !tbaa !27
  %i.aay = icmp ult ptr %i.aax, %i.vs
  br i1 %i.aay, label %.lr.ph128.i.i, label %ZSTDv06_execSequence.exit.i, !llvm.loop !122

bb.cr:                                            ; preds = %bb.co
  %i.aaz = getelementptr i8, ptr %.2.i118.i, i64 %i.yd
  %i.aba = add i64 %i.sr, %i.pd
  %i.abb = add i64 %i.sc, %i.wy
  %umax158 = tail call i64 @llvm.umax.i64(i64 %i.sc, i64 %i.wy) ; 2 uses
  %i.abc = add i64 %i.aba, %i.abb
  %i.abd = add i64 %i.abc, %i.sg
  %i.abe = sub i64 %i.abd, %i.sc
  %i.abf = add i64 %i.pn, %umax158
  %umax159 = tail call i64 @llvm.umax.i64(i64 %i.abe, i64 %i.abf)
  %i.abg = add i64 %umax159, -9
  %i.abh = add i64 %umax158, %i.pd
  %i.abi = sub i64 %i.abg, %i.abh                 ; 2 uses
  %i.abj = lshr i64 %i.abi, 3
  %i.abk = add nuw nsw i64 %i.abj, 1              ; 2 uses
  %min.iters.check161 = icmp ult i64 %i.abi, 72
  br i1 %min.iters.check161, label %scalar.ph160.preheader, label %vector.memcheck155

vector.memcheck155:                               ; preds = %bb.cr
  %i.abl = sub i64 %i.th, %i.pd
  %i.abm = add i64 %i.abl, %i.vw
  %i.abn = add i64 %i.abm, %i.sv
  %umax156 = tail call i64 @llvm.umax.i64(i64 %i.sc, i64 %i.abn)
  %i.abo = add i64 %umax156, %i.pd
  %i.abp = sub i64 %i.abo, %.395.i.i137
  %diff.check157 = icmp ult i64 %i.abp, 32
  br i1 %diff.check157, label %scalar.ph160.preheader, label %vector.ph162

vector.ph162:                                     ; preds = %vector.memcheck155
  %n.vec164 = and i64 %i.abk, 4611686018427387900 ; 3 uses
  %i.abq = shl i64 %n.vec164, 3                   ; 2 uses
  %i.abr = getelementptr i8, ptr %i.yz, i64 %i.abq
  %i.abs = getelementptr i8, ptr %i.za, i64 %i.abq
  br label %vector.body165

vector.body165:                                   ; preds = %vector.body165, %vector.ph162
  %index166 = phi i64 [ 0, %vector.ph162 ], [ %index.next171, %vector.body165 ] ; 2 uses
  %i.abt = shl i64 %index166, 3                   ; 2 uses
  %next.gep167 = getelementptr i8, ptr %i.yz, i64 %i.abt ; 2 uses
  %next.gep168 = getelementptr i8, ptr %i.za, i64 %i.abt ; 2 uses
  %i.abu = getelementptr i8, ptr %next.gep168, i64 16
  %wide.load169 = load <2 x i64>, ptr %next.gep168, align 1
  %wide.load170 = load <2 x i64>, ptr %i.abu, align 1
  %i.abv = getelementptr i8, ptr %next.gep167, i64 16
  store <2 x i64> %wide.load169, ptr %next.gep167, align 1
  store <2 x i64> %wide.load170, ptr %i.abv, align 1
  %index.next171 = add nuw i64 %index166, 4       ; 2 uses
  %i.abw = icmp eq i64 %index.next171, %n.vec164
  br i1 %i.abw, label %middle.block172, label %vector.body165, !llvm.loop !123

middle.block172:                                  ; preds = %vector.body165
  %cmp.n173 = icmp eq i64 %i.abk, %n.vec164
  br i1 %cmp.n173, label %ZSTDv06_execSequence.exit.i, label %scalar.ph160.preheader

scalar.ph160.preheader:                           ; preds = %vector.memcheck155, %bb.cr, %middle.block172
  %.09.i115.i.i.ph = phi ptr [ %i.yz, %vector.memcheck155 ], [ %i.yz, %bb.cr ], [ %i.abr, %middle.block172 ]
  %.0.i116.i.i.ph = phi ptr [ %i.za, %vector.memcheck155 ], [ %i.za, %bb.cr ], [ %i.abs, %middle.block172 ]
  br label %scalar.ph160

scalar.ph160:                                     ; preds = %scalar.ph160.preheader, %scalar.ph160
  %.09.i115.i.i = phi ptr [ %i.abx, %scalar.ph160 ], [ %.09.i115.i.i.ph, %scalar.ph160.preheader ] ; 2 uses
  %.0.i116.i.i = phi ptr [ %i.aby, %scalar.ph160 ], [ %.0.i116.i.i.ph, %scalar.ph160.preheader ] ; 2 uses
  %.0.val.i117.i.i = load i64, ptr %.0.i116.i.i, align 1
  store i64 %.0.val.i117.i.i, ptr %.09.i115.i.i, align 1
  %i.abx = getelementptr inbounds nuw i8, ptr %.09.i115.i.i, i64 8 ; 2 uses
  %i.aby = getelementptr inbounds nuw i8, ptr %.0.i116.i.i, i64 8
  %i.abz = icmp ult ptr %i.abx, %i.aaz
  br i1 %i.abz, label %scalar.ph160, label %ZSTDv06_execSequence.exit.i, !llvm.loop !124

ZSTDv06_execSequence.exit.i:                      ; preds = %.lr.ph.i.i, %scalar.ph160, %.lr.ph128.i.i, %middle.block193, %vec.epilog.middle.block211, %middle.block172, %middle.block, %vec.epilog.middle.block, %bb.cq, %.preheader.i.i, %bb.ck
  %i.aca = icmp ult i64 %i.vr, -119
  br i1 %i.aca, label %bb.bn, label %.thread154.i, !llvm.loop !125

.thread154.i:                                     ; preds = %ZSTDv06_execSequence.exit.i, %bb.ci, %bb.ch, %bb.cg, %bb.cf, %ZSTDv06_decodeSequence.exit.i, %BITv06_initDStream.exit.i, %bb.az, %bb.ar, %bb.ap
  %.4.ph.i = phi i64 [ -20, %bb.ar ], [ -20, %bb.az ], [ -20, %BITv06_initDStream.exit.i ], [ -20, %bb.ap ], [ %i.vr, %ZSTDv06_execSequence.exit.i ], [ -20, %bb.ci ], [ -20, %bb.ch ], [ -70, %bb.cg ], [ -20, %bb.cf ], [ -70, %ZSTDv06_decodeSequence.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %ZSTDv06_decompressSequences.exit

.loopexit.i:                                      ; preds = %bb.bn
  %.not262.i = icmp eq i32 %.0.i, 0
  br i1 %.not262.i, label %.thread250.i, label %bb.cs

.thread250.i:                                     ; preds = %BITv06_reloadDStream.exit.i, %.loopexit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %bb.ct

bb.cs:                                            ; preds = %.loopexit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %ZSTDv06_decompressSequences.exit

bb.ct:                                            ; preds = %.thread250.i, %bb.ao, %.thread.i22
  %.2126.i = phi ptr [ %i.fq, %bb.ao ], [ %.0124.i20, %.thread250.i ], [ %i.fq, %.thread.i22 ] ; 4 uses
  %.371.i = phi ptr [ %1, %bb.ao ], [ %.068.i, %.thread250.i ], [ %1, %.thread.i22 ] ; 3 uses
  %i.acb = ptrtoint ptr %i.fv to i64
  %i.acc = ptrtoint ptr %.2126.i to i64
  %i.acd = sub i64 %i.acb, %i.acc                 ; 2 uses
  %i.ace = icmp ugt ptr %.2126.i, %i.fv
  br i1 %i.ace, label %ZSTDv06_decompressSequences.exit, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.acf = getelementptr inbounds nuw i8, ptr %.371.i, i64 %i.acd ; 2 uses
  %i.acg = icmp ugt ptr %i.acf, %i.fu
  br i1 %i.acg, label %ZSTDv06_decompressSequences.exit, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %.not86.i = icmp eq ptr %i.fv, %.2126.i
  br i1 %.not86.i, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.371.i, ptr align 1 %.2126.i, i64 %i.acd, i1 false)
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.cv
  %.573.ph.i = phi ptr [ %.371.i, %bb.cv ], [ %i.acf, %bb.cw ]
  %i.ach = ptrtoint ptr %.573.ph.i to i64
  %i.aci = ptrtoint ptr %1 to i64
  %i.acj = sub i64 %i.ach, %i.aci
  br label %ZSTDv06_decompressSequences.exit

ZSTDv06_decompressSequences.exit:                 ; preds = %.thread.i, %bb.ab, %bb.o, %bb.m, %bb.l, %bb.g, %bb.f, %bb.d, %bb.n, %bb.j, %bb.b, %bb.v, %bb.cx, %bb.cu, %bb.ct, %bb.cs, %.thread154.i, %ZSTDv06_decodeSeqHeaders.exit.i, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.ai, %bb.ag, %bb.ac, %bb.a
  %.1 = phi i64 [ -20, %bb.am ], [ -72, %bb.a ], [ %i.acj, %bb.cx ], [ %.4.ph.i, %.thread154.i ], [ -20, %bb.cs ], [ %i.hy, %ZSTDv06_decodeSeqHeaders.exit.i ], [ -20, %bb.ct ], [ -70, %bb.cu ], [ -20, %bb.al ], [ -72, %bb.ag ], [ -72, %bb.ai ], [ -72, %bb.ak ], [ -20, %bb.an ], [ -72, %bb.ac ], [ -20, %.thread.i ], [ -20, %bb.ab ], [ -20, %bb.o ], [ -30, %bb.m ], [ -20, %bb.l ], [ -20, %bb.g ], [ -20, %bb.f ], [ -20, %bb.d ], [ -20, %bb.n ], [ -20, %bb.j ], [ -20, %bb.b ], [ -20, %bb.v ]
  ret i64 %.1
}

; Function Attrs: nounwind uwtable
define i64 @ZSTDv06_decompress_usingPreparedDCtx(ptr noundef initializes((0, 21619)) %0, ptr noundef readonly captures(none) %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, i64 noundef %5) local_unnamed_addr #1 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(21619) %0, ptr noundef nonnull readonly align 8 dereferenceable(21619) %1, i64 21619, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 21520 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !103  ; 3 uses
  %.not.i = icmp eq ptr %2, %i.b
  br i1 %.not.i, label %ZSTDv06_checkContinuity.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 21544
  store ptr %i.b, ptr %i.c, align 8, !tbaa !104
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 21528 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !105
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = ptrtoint ptr %i.e to i64
  %.neg.i = sub i64 %i.g, %i.f
  %i.h = getelementptr inbounds i8, ptr %2, i64 %.neg.i
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 21536
  store ptr %i.h, ptr %i.i, align 8, !tbaa !106
  store ptr %2, ptr %i.d, align 8, !tbaa !105
  store ptr %2, ptr %i.a, align 8, !tbaa !103
  br label %ZSTDv06_checkContinuity.exit

ZSTDv06_checkContinuity.exit:                     ; preds = %bb.a, %bb.b
  %i.j = tail call fastcc i64 @ZSTDv06_decompressFrame(ptr noundef nonnull %0, ptr noundef %2, i64 noundef %3, ptr noundef %4, i64 noundef %5)
  ret i64 %i.j
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @ZSTDv06_decompressFrame(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 %4
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %i.c = icmp ult i64 %4, 8
  br i1 %i.c, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !27
  %i.f = lshr i8 %i.e, 6
  %i.g = zext nneg i8 %i.f to i64
  %i.h = getelementptr inbounds nuw [8 x i8], ptr @ZSTDv06_fcs_fieldSize, i64 %i.g
  %i.i = load i64, ptr %i.h, align 8, !tbaa !100  ; 2 uses
  %i.j = add i64 %i.i, 5                          ; 4 uses
  %i.k = icmp ult i64 %i.j, -119
  br i1 %i.k, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.l = add i64 %i.i, 8
  %i.m = icmp ult i64 %4, %i.l
  br i1 %i.m, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 21568 ; 2 uses
  %.val.i.i = load i32, ptr %3, align 1
  %.not.i.i = icmp eq i32 %.val.i.i, -47205082
  br i1 %.not.i.i, label %ZSTDv06_frameHeaderSize.exit.i.i, label %.thread

ZSTDv06_frameHeaderSize.exit.i.i:                 ; preds = %bb.d
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i8 0, i64 16, i1 false)
  %i.o = load i8, ptr %i.d, align 1, !tbaa !27
  %i.p = zext i8 %i.o to i32                      ; 3 uses
  %i.q = and i32 %i.p, 15
  %i.r = add nuw nsw i32 %i.q, 12
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 21576
  store i32 %i.r, ptr %i.s, align 8, !tbaa !101
  %i.t = and i32 %i.p, 32
  %.not27.i.i = icmp eq i32 %i.t, 0
  br i1 %.not27.i.i, label %bb.e, label %.thread

bb.e:                                             ; preds = %ZSTDv06_frameHeaderSize.exit.i.i
  %i.u = lshr i32 %i.p, 6
  switch i32 %i.u, label %default.unreachable [
    i32 0, label %bb.i
    i32 1, label %bb.f
    i32 2, label %bb.g
    i32 3, label %bb.h
  ]

default.unreachable:                              ; preds = %bb.m, %bb.e
  unreachable
end_hunk_0
