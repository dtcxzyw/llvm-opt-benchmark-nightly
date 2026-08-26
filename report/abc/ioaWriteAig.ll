Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/ioaWriteAig?download=true
inline.NumInlined: 172
inline.NumDeleted: 33
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@Ioa_WriteAigerIntoMemoryStr:bb.a
  store i32 %spec.select.sink.i.i216, ptr %i.am, align 8, !tbaa !15
  %.pre9.i217 = load i32, ptr %i.ao, align 4, !tbaa !11
  br label %Vec_StrPush.exit.i208

Vec_StrPush.exit.i208:                            ; preds = %Vec_StrGrow.exit11.sink.split.i.i215, %bb.ay, %.Vec_StrPush.exit_crit_edge.i206
  %i.fp = phi i32 [ %i.fc, %.Vec_StrPush.exit_crit_edge.i206 ], [ %i.fc, %bb.ay ], [ %.pre9.i217, %Vec_StrGrow.exit11.sink.split.i.i215 ] ; 2 uses
  %i.fq = phi ptr [ %.pre.i207, %.Vec_StrPush.exit_crit_edge.i206 ], [ %.pre8.i213, %bb.ay ], [ %i.fo, %Vec_StrGrow.exit11.sink.split.i.i215 ]
  %i.fr = add nsw i32 %i.fp, 1
  store i32 %i.fr, ptr %i.ao, align 4, !tbaa !11
  %i.fs = sext i32 %i.fp to i64
  %i.ft = getelementptr inbounds i8, ptr %i.fq, i64 %i.fs
  store i8 32, ptr %i.ft, align 1, !tbaa !8
  %.val146 = load i32, ptr %i.cs, align 4, !tbaa !18
  %.val147 = load i32, ptr %i.ct, align 8, !tbaa !18
  %i.fu = add nsw i32 %.val147, %.val146
  tail call fastcc void @Vec_StrPrintNum(ptr noundef nonnull %i.am, i32 noundef %i.fu)
  %i.fv = load i32, ptr %i.ao, align 4, !tbaa !11 ; 7 uses
  %i.fw = load i32, ptr %i.am, align 8, !tbaa !15
  %i.fx = icmp eq i32 %i.fv, %i.fw
  br i1 %i.fx, label %bb.bc, label %.Vec_StrPush.exit_crit_edge.i223

.Vec_StrPush.exit_crit_edge.i223:                 ; preds = %Vec_StrPush.exit.i208
  %.pre.i224 = load ptr, ptr %i.au, align 8, !tbaa !16
  br label %Vec_StrPush.exit.i225

bb.bc:                                            ; preds = %Vec_StrPush.exit.i208
  %i.fy = icmp slt i32 %i.fv, 16
  br i1 %i.fy, label %bb.bd, label %bb.bg

bb.bd:                                            ; preds = %bb.bc
  %i.fz = load ptr, ptr %i.au, align 8, !tbaa !16 ; 2 uses
  %.not9.i.i.i235 = icmp eq ptr %i.fz, null
  br i1 %.not9.i.i.i235, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ga = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.fz, i64 noundef 16) #14
  br label %Vec_StrGrow.exit11.sink.split.i.i232

bb.bf:                                            ; preds = %bb.bd
  %i.gb = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #15
  br label %Vec_StrGrow.exit11.sink.split.i.i232

bb.bg:                                            ; preds = %bb.bc
  %i.gc = icmp samesign ult i32 %i.fv, 1073741823
  %i.gd = shl nuw nsw i32 %i.fv, 1
  %spec.select.i.i228 = select i1 %i.gc, i32 %i.gd, i32 2147483647 ; 4 uses
  %.not.i9.i.i229 = icmp samesign ult i32 %i.fv, %spec.select.i.i228
  %.pre8.i230 = load ptr, ptr %i.au, align 8, !tbaa !16 ; 3 uses
  br i1 %.not.i9.i.i229, label %bb.bh, label %Vec_StrPush.exit.i225

bb.bh:                                            ; preds = %bb.bg
  %.not9.i10.i.i231 = icmp eq ptr %.pre8.i230, null
  %i.ge = zext nneg i32 %spec.select.i.i228 to i64 ; 2 uses
  br i1 %.not9.i10.i.i231, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.gf = tail call ptr @realloc(ptr noundef nonnull %.pre8.i230, i64 noundef %i.ge) #14
  br label %Vec_StrGrow.exit11.sink.split.i.i232

bb.bj:                                            ; preds = %bb.bh
  %i.gg = tail call noalias ptr @malloc(i64 noundef %i.ge) #15
  br label %Vec_StrGrow.exit11.sink.split.i.i232

Vec_StrGrow.exit11.sink.split.i.i232:             ; preds = %bb.bj, %bb.bi, %bb.bf, %bb.be
  %i.gh = phi ptr [ %i.gb, %bb.bf ], [ %i.ga, %bb.be ], [ %i.gf, %bb.bi ], [ %i.gg, %bb.bj ] ; 2 uses
  %spec.select.sink.i.i233 = phi i32 [ 16, %bb.bf ], [ 16, %bb.be ], [ %spec.select.i.i228, %bb.bi ], [ %spec.select.i.i228, %bb.bj ]
  store ptr %i.gh, ptr %i.au, align 8, !tbaa !16
  store i32 %spec.select.sink.i.i233, ptr %i.am, align 8, !tbaa !15
  %.pre9.i234 = load i32, ptr %i.ao, align 4, !tbaa !11
  br label %Vec_StrPush.exit.i225

Vec_StrPush.exit.i225:                            ; preds = %Vec_StrGrow.exit11.sink.split.i.i232, %bb.bg, %.Vec_StrPush.exit_crit_edge.i223
  %i.gi = phi i32 [ %i.fv, %.Vec_StrPush.exit_crit_edge.i223 ], [ %i.fv, %bb.bg ], [ %.pre9.i234, %Vec_StrGrow.exit11.sink.split.i.i232 ] ; 2 uses
  %i.gj = phi ptr [ %.pre.i224, %.Vec_StrPush.exit_crit_edge.i223 ], [ %.pre8.i230, %bb.bg ], [ %i.gh, %Vec_StrGrow.exit11.sink.split.i.i232 ]
  %i.gk = add nsw i32 %i.gi, 1
  store i32 %i.gk, ptr %i.ao, align 4, !tbaa !11
  %i.gl = sext i32 %i.gi to i64
  %i.gm = getelementptr inbounds i8, ptr %i.gj, i64 %i.gl
  store i8 10, ptr %i.gm, align 1, !tbaa !8
  %.val110 = load i32, ptr %i.fa, align 4, !tbaa !18 ; 2 uses
  %.val113 = load i32, ptr %i.do, align 8, !tbaa !24 ; 2 uses
  %i.gn = sub nsw i32 %.val110, %.val113          ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !37 ; 2 uses
  %i.gq = getelementptr i8, ptr %i.gp, i64 4
  %.val118298 = load i32, ptr %i.gq, align 4, !tbaa !38
  %i.gr = icmp slt i32 %i.gn, %.val118298
  br i1 %i.gr, label %.lr.ph.i237.preheader, label %.critedge4.preheader

.lr.ph.i237.preheader:                            ; preds = %Vec_StrPush.exit.i225
  %i.gs = sext i32 %i.gn to i64
  br label %.lr.ph.i237

.critedge4.preheader.loopexit:                    ; preds = %Vec_StrPush.exit.i242
  %.val300.pre = load i32, ptr %i.fa, align 4, !tbaa !18
  %.val112301.pre = load i32, ptr %i.do, align 8, !tbaa !24
  br label %.critedge4.preheader

.critedge4.preheader:                             ; preds = %.critedge4.preheader.loopexit, %Vec_StrPush.exit.i225
  %.val112301 = phi i32 [ %.val112301.pre, %.critedge4.preheader.loopexit ], [ %.val113, %Vec_StrPush.exit.i225 ]
  %.val300 = phi i32 [ %.val300.pre, %.critedge4.preheader.loopexit ], [ %.val110, %Vec_StrPush.exit.i225 ]
  %i.gt = icmp sgt i32 %.val300, %.val112301
  br i1 %i.gt, label %.lr.ph.i254, label %.critedge6.preheader

.lr.ph.i237:                                      ; preds = %.lr.ph.i237.preheader, %Vec_StrPush.exit.i242
  %indvars.iv311 = phi i64 [ %i.gs, %.lr.ph.i237.preheader ], [ %indvars.iv.next312, %Vec_StrPush.exit.i242 ] ; 2 uses
  %i.gu = phi ptr [ %i.gp, %.lr.ph.i237.preheader ], [ %i.ib, %Vec_StrPush.exit.i242 ]
  %i.gv = getelementptr i8, ptr %i.gu, i64 8
  %.val123 = load ptr, ptr %i.gv, align 8, !tbaa !40
  %i.gw = getelementptr inbounds [8 x i8], ptr %.val123, i64 %indvars.iv311
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !41
  %i.gy = getelementptr i8, ptr %i.gx, i64 8
  %.val128 = load ptr, ptr %i.gy, align 8, !tbaa !42
  %i.gz = ptrtoint ptr %.val128 to i64            ; 2 uses
  %i.ha = and i64 %i.gz, -2
  %i.hb = inttoptr i64 %i.ha to ptr
  %i.hc = getelementptr i8, ptr %i.hb, i64 40
  %.val135 = load i32, ptr %i.hc, align 8, !tbaa !8 ; 2 uses
  %i.hd = trunc i64 %i.gz to i32
  %i.he = and i32 %i.hd, 1
  %i.hf = icmp eq i32 %.val135, 0
  %i.hg = zext i1 %i.hf to i32
  %i.hh = xor i32 %i.he, %i.hg
  %i.hi = shl i32 %.val135, 1
  %i.hj = or disjoint i32 %i.hh, %i.hi
  tail call fastcc void @Vec_StrPrintNum(ptr noundef nonnull %i.am, i32 noundef %i.hj)
  %i.hk = load i32, ptr %i.ao, align 4, !tbaa !11 ; 7 uses
  %i.hl = load i32, ptr %i.am, align 8, !tbaa !15
  %i.hm = icmp eq i32 %i.hk, %i.hl
  br i1 %i.hm, label %bb.bk, label %.Vec_StrPush.exit_crit_edge.i240

.Vec_StrPush.exit_crit_edge.i240:                 ; preds = %.lr.ph.i237
  %.pre.i241 = load ptr, ptr %i.au, align 8, !tbaa !16
  br label %Vec_StrPush.exit.i242

bb.bk:                                            ; preds = %.lr.ph.i237
  %i.hn = icmp slt i32 %i.hk, 16
  br i1 %i.hn, label %bb.bl, label %bb.bo

bb.bl:                                            ; preds = %bb.bk
  %i.ho = load ptr, ptr %i.au, align 8, !tbaa !16 ; 2 uses
  %.not9.i.i.i252 = icmp eq ptr %i.ho, null
  br i1 %.not9.i.i.i252, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.hp = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.ho, i64 noundef 16) #14
  br label %Vec_StrGrow.exit11.sink.split.i.i249

bb.bn:                                            ; preds = %bb.bl
  %i.hq = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #15
  br label %Vec_StrGrow.exit11.sink.split.i.i249

bb.bo:                                            ; preds = %bb.bk
  %i.hr = icmp samesign ult i32 %i.hk, 1073741823
  %i.hs = shl nuw nsw i32 %i.hk, 1
  %spec.select.i.i245 = select i1 %i.hr, i32 %i.hs, i32 2147483647 ; 4 uses
  %.not.i9.i.i246 = icmp samesign ult i32 %i.hk, %spec.select.i.i245
  %.pre8.i247 = load ptr, ptr %i.au, align 8, !tbaa !16 ; 3 uses
  br i1 %.not.i9.i.i246, label %bb.bp, label %Vec_StrPush.exit.i242

bb.bp:                                            ; preds = %bb.bo
  %.not9.i10.i.i248 = icmp eq ptr %.pre8.i247, null
  %i.ht = zext nneg i32 %spec.select.i.i245 to i64 ; 2 uses
  br i1 %.not9.i10.i.i248, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.hu = tail call ptr @realloc(ptr noundef nonnull %.pre8.i247, i64 noundef %i.ht) #14
  br label %Vec_StrGrow.exit11.sink.split.i.i249

bb.br:                                            ; preds = %bb.bp
  %i.hv = tail call noalias ptr @malloc(i64 noundef %i.ht) #15
  br label %Vec_StrGrow.exit11.sink.split.i.i249

Vec_StrGrow.exit11.sink.split.i.i249:             ; preds = %bb.br, %bb.bq, %bb.bn, %bb.bm
  %i.hw = phi ptr [ %i.hq, %bb.bn ], [ %i.hp, %bb.bm ], [ %i.hu, %bb.bq ], [ %i.hv, %bb.br ] ; 2 uses
  %spec.select.sink.i.i250 = phi i32 [ 16, %bb.bn ], [ 16, %bb.bm ], [ %spec.select.i.i245, %bb.bq ], [ %spec.select.i.i245, %bb.br ]
  store ptr %i.hw, ptr %i.au, align 8, !tbaa !16
  store i32 %spec.select.sink.i.i250, ptr %i.am, align 8, !tbaa !15
  br label %Vec_StrPush.exit.i242

Vec_StrPush.exit.i242:                            ; preds = %Vec_StrGrow.exit11.sink.split.i.i249, %bb.bo, %.Vec_StrPush.exit_crit_edge.i240
  %i.hx = phi ptr [ %.pre.i241, %.Vec_StrPush.exit_crit_edge.i240 ], [ %.pre8.i247, %bb.bo ], [ %i.hw, %Vec_StrGrow.exit11.sink.split.i.i249 ]
  %i.hy = add nsw i32 %i.hk, 1
  store i32 %i.hy, ptr %i.ao, align 4, !tbaa !11
  %i.hz = sext i32 %i.hk to i64
  %i.ia = getelementptr inbounds i8, ptr %i.hx, i64 %i.hz
  store i8 10, ptr %i.ia, align 1, !tbaa !8
  %indvars.iv.next312 = add nsw i64 %indvars.iv311, 1 ; 2 uses
  %i.ib = load ptr, ptr %i.go, align 8, !tbaa !37 ; 2 uses
  %i.ic = getelementptr i8, ptr %i.ib, i64 4
  %.val118 = load i32, ptr %i.ic, align 4, !tbaa !38
  %i.id = sext i32 %.val118 to i64
  %i.ie = icmp slt i64 %indvars.iv.next312, %i.id
  br i1 %i.ie, label %.lr.ph.i237, label %.critedge4.preheader.loopexit, !llvm.loop !52

.critedge6.preheader:                             ; preds = %Vec_StrPush.exit.i259, %.critedge4.preheader
  %i.if = load ptr, ptr %i.g, align 8, !tbaa !48  ; 2 uses
  %i.ig = getelementptr i8, ptr %i.if, i64 4
  %.val117303 = load i32, ptr %i.ig, align 4, !tbaa !38
  %i.ih = icmp sgt i32 %.val117303, 0
  br i1 %i.ih, label %.lr.ph305, label %.lr.ph.i272

.lr.ph.i254:                                      ; preds = %.critedge4.preheader, %Vec_StrPush.exit.i259
  %indvars.iv314 = phi i64 [ %indvars.iv.next315, %Vec_StrPush.exit.i259 ], [ 0, %.critedge4.preheader ] ; 2 uses
  %i.ii = load ptr, ptr %i.go, align 8, !tbaa !37
  %i.ij = getelementptr i8, ptr %i.ii, i64 8
  %.val122 = load ptr, ptr %i.ij, align 8, !tbaa !40
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %.val122, i64 %indvars.iv314
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !41
  %i.im = getelementptr i8, ptr %i.il, i64 8
  %.val127 = load ptr, ptr %i.im, align 8, !tbaa !42
  %i.in = ptrtoint ptr %.val127 to i64            ; 2 uses
  %i.io = and i64 %i.in, -2
  %i.ip = inttoptr i64 %i.io to ptr
  %i.iq = getelementptr i8, ptr %i.ip, i64 40
  %.val133 = load i32, ptr %i.iq, align 8, !tbaa !8 ; 2 uses
  %i.ir = trunc i64 %i.in to i32
  %i.is = and i32 %i.ir, 1
  %i.it = icmp eq i32 %.val133, 0
  %i.iu = zext i1 %i.it to i32
  %i.iv = xor i32 %i.is, %i.iu
  %i.iw = shl i32 %.val133, 1
  %i.ix = or disjoint i32 %i.iv, %i.iw
  tail call fastcc void @Vec_StrPrintNum(ptr noundef nonnull %i.am, i32 noundef %i.ix)
  %i.iy = load i32, ptr %i.ao, align 4, !tbaa !11 ; 7 uses
  %i.iz = load i32, ptr %i.am, align 8, !tbaa !15
  %i.ja = icmp eq i32 %i.iy, %i.iz
  br i1 %i.ja, label %bb.bs, label %.Vec_StrPush.exit_crit_edge.i257

.Vec_StrPush.exit_crit_edge.i257:                 ; preds = %.lr.ph.i254
  %.pre.i258 = load ptr, ptr %i.au, align 8, !tbaa !16
  br label %Vec_StrPush.exit.i259

bb.bs:                                            ; preds = %.lr.ph.i254
  %i.jb = icmp slt i32 %i.iy, 16
  br i1 %i.jb, label %bb.bt, label %bb.bw

bb.bt:                                            ; preds = %bb.bs
  %i.jc = load ptr, ptr %i.au, align 8, !tbaa !16 ; 2 uses
  %.not9.i.i.i269 = icmp eq ptr %i.jc, null
  br i1 %.not9.i.i.i269, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.jd = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.jc, i64 noundef 16) #14
  br label %Vec_StrGrow.exit11.sink.split.i.i266

bb.bv:                                            ; preds = %bb.bt
  %i.je = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #15
  br label %Vec_StrGrow.exit11.sink.split.i.i266

bb.bw:                                            ; preds = %bb.bs
  %i.jf = icmp samesign ult i32 %i.iy, 1073741823
  %i.jg = shl nuw nsw i32 %i.iy, 1
  %spec.select.i.i262 = select i1 %i.jf, i32 %i.jg, i32 2147483647 ; 4 uses
  %.not.i9.i.i263 = icmp samesign ult i32 %i.iy, %spec.select.i.i262
  %.pre8.i264 = load ptr, ptr %i.au, align 8, !tbaa !16 ; 3 uses
  br i1 %.not.i9.i.i263, label %bb.bx, label %Vec_StrPush.exit.i259

bb.bx:                                            ; preds = %bb.bw
  %.not9.i10.i.i265 = icmp eq ptr %.pre8.i264, null
  %i.jh = zext nneg i32 %spec.select.i.i262 to i64 ; 2 uses
  br i1 %.not9.i10.i.i265, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.ji = tail call ptr @realloc(ptr noundef nonnull %.pre8.i264, i64 noundef %i.jh) #14
  br label %Vec_StrGrow.exit11.sink.split.i.i266

bb.bz:                                            ; preds = %bb.bx
  %i.jj = tail call noalias ptr @malloc(i64 noundef %i.jh) #15
  br label %Vec_StrGrow.exit11.sink.split.i.i266

Vec_StrGrow.exit11.sink.split.i.i266:             ; preds = %bb.bz, %bb.by, %bb.bv, %bb.bu
  %i.jk = phi ptr [ %i.je, %bb.bv ], [ %i.jd, %bb.bu ], [ %i.ji, %bb.by ], [ %i.jj, %bb.bz ] ; 2 uses
  %spec.select.sink.i.i267 = phi i32 [ 16, %bb.bv ], [ 16, %bb.bu ], [ %spec.select.i.i262, %bb.by ], [ %spec.select.i.i262, %bb.bz ]
  store ptr %i.jk, ptr %i.au, align 8, !tbaa !16
  store i32 %spec.select.sink.i.i267, ptr %i.am, align 8, !tbaa !15
  br label %Vec_StrPush.exit.i259

Vec_StrPush.exit.i259:                            ; preds = %Vec_StrGrow.exit11.sink.split.i.i266, %bb.bw, %.Vec_StrPush.exit_crit_edge.i257
  %i.jl = phi ptr [ %.pre.i258, %.Vec_StrPush.exit_crit_edge.i257 ], [ %.pre8.i264, %bb.bw ], [ %i.jk, %Vec_StrGrow.exit11.sink.split.i.i266 ]
  %i.jm = add nsw i32 %i.iy, 1
  store i32 %i.jm, ptr %i.ao, align 4, !tbaa !11
  %i.jn = sext i32 %i.iy to i64
  %i.jo = getelementptr inbounds i8, ptr %i.jl, i64 %i.jn
  store i8 10, ptr %i.jo, align 1, !tbaa !8
  %indvars.iv.next315 = add nuw nsw i64 %indvars.iv314, 1 ; 2 uses
  %.val = load i32, ptr %i.fa, align 4, !tbaa !18
  %.val112 = load i32, ptr %i.do, align 8, !tbaa !24
  %i.jp = sub nsw i32 %.val, %.val112
  %i.jq = sext i32 %i.jp to i64
  %i.jr = icmp slt i64 %indvars.iv.next315, %i.jq
  br i1 %i.jr, label %.lr.ph.i254, label %.critedge6.preheader, !llvm.loop !53

.lr.ph305:                                        ; preds = %.critedge6.preheader, %.critedge6
  %i.js = phi ptr [ %i.kx, %.critedge6 ], [ %i.if, %.critedge6.preheader ] ; 3 uses
  %indvars.iv317 = phi i64 [ %indvars.iv.next318, %.critedge6 ], [ 0, %.critedge6.preheader ] ; 2 uses
  %i.jt = getelementptr i8, ptr %i.js, i64 8
  %.val121 = load ptr, ptr %i.jt, align 8, !tbaa !40
  %i.ju = getelementptr inbounds nuw [8 x i8], ptr %.val121, i64 %indvars.iv317
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !41 ; 5 uses
  %i.jw = icmp eq ptr %i.jv, null
  br i1 %i.jw, label %.critedge6, label %bb.ca

bb.ca:                                            ; preds = %.lr.ph305
  %i.jx = getelementptr i8, ptr %i.jv, i64 24
  %.val140 = load i64, ptr %i.jx, align 8
  %i.jy = trunc i64 %.val140 to i32
  %i.jz = and i32 %i.jy, 7
  %i.ka = add nsw i32 %i.jz, -7
  %narrow.i271 = icmp ult i32 %i.ka, -2
  br i1 %narrow.i271, label %.critedge6, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.kb = getelementptr i8, ptr %i.jv, i64 40
  %.val131 = load i32, ptr %i.kb, align 8, !tbaa !8
  %i.kc = shl i32 %.val131, 1
  %i.kd = getelementptr i8, ptr %i.jv, i64 8
  %.val126 = load ptr, ptr %i.kd, align 8, !tbaa !42
  %i.ke = ptrtoint ptr %.val126 to i64            ; 2 uses
  %i.kf = and i64 %i.ke, -2
  %i.kg = inttoptr i64 %i.kf to ptr
  %i.kh = getelementptr i8, ptr %i.kg, i64 40
  %.val130 = load i32, ptr %i.kh, align 8, !tbaa !8
  %i.ki = trunc i64 %i.ke to i32
  %i.kj = and i32 %i.ki, 1
  %i.kk = shl i32 %.val130, 1
  %i.kl = or disjoint i32 %i.kj, %i.kk            ; 2 uses
  %i.km = getelementptr i8, ptr %i.jv, i64 16
  %.val150 = load ptr, ptr %i.km, align 8, !tbaa !54
  %i.kn = ptrtoint ptr %.val150 to i64            ; 2 uses
  %i.ko = and i64 %i.kn, -2
  %i.kp = inttoptr i64 %i.ko to ptr
  %i.kq = getelementptr i8, ptr %i.kp, i64 40
  %.val129 = load i32, ptr %i.kq, align 8, !tbaa !8
  %i.kr = trunc i64 %i.kn to i32
  %i.ks = and i32 %i.kr, 1
  %i.kt = shl i32 %.val129, 1
  %i.ku = or disjoint i32 %i.ks, %i.kt            ; 2 uses
  %spec.select = tail call i32 @llvm.smin.i32(i32 %i.kl, i32 %i.ku)
  %spec.select109 = tail call i32 @llvm.smax.i32(i32 %i.kl, i32 %i.ku) ; 2 uses
  %i.kv = sub nsw i32 %i.kc, %spec.select109
  tail call void @Ioa_WriteAigerEncodeStr(ptr noundef nonnull %i.am, i32 noundef %i.kv)
  %i.kw = sub nsw i32 %spec.select109, %spec.select
  tail call void @Ioa_WriteAigerEncodeStr(ptr noundef nonnull %i.am, i32 noundef %i.kw)
  %.pre322 = load ptr, ptr %i.g, align 8, !tbaa !48
  br label %.critedge6

.critedge6:                                       ; preds = %bb.cb, %bb.ca, %.lr.ph305
  %i.kx = phi ptr [ %.pre322, %bb.cb ], [ %i.js, %bb.ca ], [ %i.js, %.lr.ph305 ] ; 2 uses
  %indvars.iv.next318 = add nuw nsw i64 %indvars.iv317, 1 ; 2 uses
  %i.ky = getelementptr i8, ptr %i.kx, i64 4
  %.val117 = load i32, ptr %i.ky, align 4, !tbaa !38
  %i.kz = sext i32 %.val117 to i64
  %i.la = icmp slt i64 %indvars.iv.next318, %i.kz
  br i1 %i.la, label %.lr.ph305, label %.lr.ph.i272, !llvm.loop !55

.lr.ph.i272:                                      ; preds = %.critedge6, %.critedge6.preheader
  %1 = load i32, ptr %i.ao, align 4, !tbaa !11    ; 7 uses
  %2 = load i32, ptr %i.am, align 8, !tbaa !15
  %3 = icmp eq i32 %1, %2
  br i1 %3, label %bb.cc, label %.Vec_StrPush.exit_crit_edge.i275

.Vec_StrPush.exit_crit_edge.i275:                 ; preds = %.lr.ph.i272
  %.pre.i276 = load ptr, ptr %i.au, align 8, !tbaa !16
  br label %Vec_StrPush.exit.i277

bb.cc:                                            ; preds = %.lr.ph.i272
  %i.lb = icmp slt i32 %1, 16
  br i1 %i.lb, label %bb.cd, label %bb.cg

bb.cd:                                            ; preds = %bb.cc
  %i.lc = load ptr, ptr %i.au, align 8, !tbaa !16 ; 2 uses
  %.not9.i.i.i287 = icmp eq ptr %i.lc, null
  br i1 %.not9.i.i.i287, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.ld = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.lc, i64 noundef 16) #14
  br label %Vec_StrGrow.exit11.sink.split.i.i284

bb.cf:                                            ; preds = %bb.cd
  %i.le = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #15
  br label %Vec_StrGrow.exit11.sink.split.i.i284

bb.cg:                                            ; preds = %bb.cc
  %i.lf = icmp samesign ult i32 %1, 1073741823
  %i.lg = shl nuw nsw i32 %1, 1
  %spec.select.i.i280 = select i1 %i.lf, i32 %i.lg, i32 2147483647 ; 4 uses
  %.not.i9.i.i281 = icmp samesign ult i32 %1, %spec.select.i.i280
  %.pre8.i282 = load ptr, ptr %i.au, align 8, !tbaa !16 ; 3 uses
  br i1 %.not.i9.i.i281, label %bb.ch, label %Vec_StrPush.exit.i277

bb.ch:                                            ; preds = %bb.cg
  %.not9.i10.i.i283 = icmp eq ptr %.pre8.i282, null
  %i.lh = zext nneg i32 %spec.select.i.i280 to i64 ; 2 uses
  br i1 %.not9.i10.i.i283, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.li = tail call ptr @realloc(ptr noundef nonnull %.pre8.i282, i64 noundef %i.lh) #14
  br label %Vec_StrGrow.exit11.sink.split.i.i284

bb.cj:                                            ; preds = %bb.ch
  %i.lj = tail call noalias ptr @malloc(i64 noundef %i.lh) #15
  br label %Vec_StrGrow.exit11.sink.split.i.i284

Vec_StrGrow.exit11.sink.split.i.i284:             ; preds = %bb.cj, %bb.ci, %bb.cf, %bb.ce
  %i.lk = phi ptr [ %i.le, %bb.cf ], [ %i.ld, %bb.ce ], [ %i.li, %bb.ci ], [ %i.lj, %bb.cj ] ; 2 uses
  %spec.select.sink.i.i285 = phi i32 [ 16, %bb.cf ], [ 16, %bb.ce ], [ %spec.select.i.i280, %bb.ci ], [ %spec.select.i.i280, %bb.cj ]
  store ptr %i.lk, ptr %i.au, align 8, !tbaa !16
  store i32 %spec.select.sink.i.i285, ptr %i.am, align 8, !tbaa !15
  br label %Vec_StrPush.exit.i277

Vec_StrPush.exit.i277:                            ; preds = %Vec_StrGrow.exit11.sink.split.i.i284, %bb.cg, %.Vec_StrPush.exit_crit_edge.i275
  %i.ll = phi ptr [ %.pre.i276, %.Vec_StrPush.exit_crit_edge.i275 ], [ %.pre8.i282, %bb.cg ], [ %i.lk, %Vec_StrGrow.exit11.sink.split.i.i284 ]
  %i.lm = add nsw i32 %1, 1
  store i32 %i.lm, ptr %i.ao, align 4, !tbaa !11
  %i.ln = sext i32 %1 to i64
  %i.lo = getelementptr inbounds i8, ptr %i.ll, i64 %i.ln
  store i8 99, ptr %i.lo, align 1, !tbaa !8
  ret ptr %i.am
}

; Function Attrs: inlinehint nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc void @Vec_StrPrintNum(ptr nofree noundef captures(none) %0, i32 noundef %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.b = icmp eq i32 %1, 0
  br i1 %i.b, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !11   ; 7 uses
  %i.e = load i32, ptr %0, align 8, !tbaa !15
  %i.f = icmp eq i32 %i.d, %i.e
  br i1 %i.f, label %bb.c, label %Vec_StrPush.exit

bb.c:                                             ; preds = %bb.b
  %i.g = icmp slt i32 %i.d, 16
  br i1 %i.g, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !16   ; 2 uses
  %.not9.i.i = icmp eq ptr %i.i, null
  br i1 %.not9.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.i, i64 noundef 16) #14
  br label %Vec_StrGrow.exit.i

bb.f:                                             ; preds = %bb.d
  %i.k = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #15
  br label %Vec_StrGrow.exit.i

Vec_StrGrow.exit.i:                               ; preds = %bb.f, %bb.e
  %i.l = phi ptr [ %i.j, %bb.e ], [ %i.k, %bb.f ]
  store ptr %i.l, ptr %i.h, align 8, !tbaa !16
  br label %Vec_StrGrow.exit11.sink.split.i

bb.g:                                             ; preds = %bb.c
  %i.m = icmp samesign ult i32 %i.d, 1073741823
  %i.n = shl nuw nsw i32 %i.d, 1
  %spec.select.i = select i1 %i.m, i32 %i.n, i32 2147483647 ; 3 uses
  %.not.i9.i = icmp samesign ult i32 %i.d, %spec.select.i
  br i1 %.not.i9.i, label %bb.h, label %Vec_StrPush.exit

bb.h:                                             ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !16   ; 2 uses
  %.not9.i10.i = icmp eq ptr %i.p, null
  %i.q = zext nneg i32 %spec.select.i to i64      ; 2 uses
  br i1 %.not9.i10.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = tail call ptr @realloc(ptr noundef nonnull %i.p, i64 noundef %i.q) #14
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.s = tail call noalias ptr @malloc(i64 noundef %i.q) #15
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.t = phi ptr [ %i.r, %bb.i ], [ %i.s, %bb.j ]
  store ptr %i.t, ptr %i.o, align 8, !tbaa !16
  br label %Vec_StrGrow.exit11.sink.split.i

Vec_StrGrow.exit11.sink.split.i:                  ; preds = %bb.k, %Vec_StrGrow.exit.i
  %spec.select.sink.i = phi i32 [ %spec.select.i, %bb.k ], [ 16, %Vec_StrGrow.exit.i ]
  store i32 %spec.select.sink.i, ptr %0, align 8, !tbaa !15
  %.pre45 = load i32, ptr %i.c, align 4, !tbaa !11
  br label %Vec_StrPush.exit

Vec_StrPush.exit:                                 ; preds = %bb.b, %bb.g, %Vec_StrGrow.exit11.sink.split.i
  %i.u = phi i32 [ %i.d, %bb.b ], [ %i.d, %bb.g ], [ %.pre45, %Vec_StrGrow.exit11.sink.split.i ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !16
  %i.x = add nsw i32 %i.u, 1
  store i32 %i.x, ptr %i.c, align 4, !tbaa !11
  %i.y = sext i32 %i.u to i64
  %i.z = getelementptr inbounds i8, ptr %i.w, i64 %i.y
  store i8 48, ptr %i.z, align 1, !tbaa !8
  br label %.loopexit

bb.l:                                             ; preds = %bb.a
  %i.aa = icmp slt i32 %1, 0
  br i1 %i.aa, label %bb.m, label %.preheader56

.preheader56:                                     ; preds = %Vec_StrPush.exit24, %bb.l
  %.11533.ph = phi i32 [ %1, %bb.l ], [ %i.az, %Vec_StrPush.exit24 ]
  br label %bb.w

bb.m:                                             ; preds = %bb.l
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !11 ; 7 uses
  %i.ad = load i32, ptr %0, align 8, !tbaa !15
  %i.ae = icmp eq i32 %i.ac, %i.ad
  br i1 %i.ae, label %bb.n, label %Vec_StrPush.exit24

bb.n:                                             ; preds = %bb.m
  %i.af = icmp slt i32 %i.ac, 16
  br i1 %i.af, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !16 ; 2 uses
  %.not9.i.i22 = icmp eq ptr %i.ah, null
  br i1 %.not9.i.i22, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ai = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.ah, i64 noundef 16) #14
  br label %Vec_StrGrow.exit.i23

bb.q:                                             ; preds = %bb.o
  %i.aj = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #15
  br label %Vec_StrGrow.exit.i23

Vec_StrGrow.exit.i23:                             ; preds = %bb.q, %bb.p
  %i.ak = phi ptr [ %i.ai, %bb.p ], [ %i.aj, %bb.q ]
  store ptr %i.ak, ptr %i.ag, align 8, !tbaa !16
  br label %Vec_StrGrow.exit11.sink.split.i20

bb.r:                                             ; preds = %bb.n
  %i.al = icmp samesign ult i32 %i.ac, 1073741823
  %i.am = shl nuw nsw i32 %i.ac, 1
  %spec.select.i17 = select i1 %i.al, i32 %i.am, i32 2147483647 ; 3 uses
  %.not.i9.i18 = icmp samesign ult i32 %i.ac, %spec.select.i17
  br i1 %.not.i9.i18, label %bb.s, label %Vec_StrPush.exit24

bb.s:                                             ; preds = %bb.r
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !16 ; 2 uses
  %.not9.i10.i19 = icmp eq ptr %i.ao, null
  %i.ap = zext nneg i32 %spec.select.i17 to i64   ; 2 uses
  br i1 %.not9.i10.i19, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.aq = tail call ptr @realloc(ptr noundef nonnull %i.ao, i64 noundef %i.ap) #14
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.ar = tail call noalias ptr @malloc(i64 noundef %i.ap) #15
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.as = phi ptr [ %i.aq, %bb.t ], [ %i.ar, %bb.u ]
  store ptr %i.as, ptr %i.an, align 8, !tbaa !16
  br label %Vec_StrGrow.exit11.sink.split.i20
end_hunk_0
