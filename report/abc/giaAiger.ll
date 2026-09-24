Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/giaAiger?download=true
inline.NumInlined: 617
inline.NumDeleted: 77
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 10
begin_hunk_0_@Gia_AigerWriteIntoMemoryStrPart:bb.a
  %i.ip = zext nneg i32 %spec.select.i.i241 to i64 ; 2 uses
  br i1 %.not9.i10.i.i244, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.iq = tail call ptr @realloc(ptr noundef nonnull %.pre8.i243, i64 noundef %i.ip) #30
  br label %Vec_StrGrow.exit11.sink.split.i.i245

bb.bq:                                            ; preds = %bb.bo
  %i.ir = tail call noalias ptr @malloc(i64 noundef %i.ip) #28
  br label %Vec_StrGrow.exit11.sink.split.i.i245

Vec_StrGrow.exit11.sink.split.i.i245:             ; preds = %bb.bq, %bb.bp, %bb.bm, %bb.bl
  %i.is = phi ptr [ %i.im, %bb.bm ], [ %i.il, %bb.bl ], [ %i.iq, %bb.bp ], [ %i.ir, %bb.bq ] ; 2 uses
  %spec.select.sink.i.i246 = phi i32 [ 16, %bb.bm ], [ 16, %bb.bl ], [ %spec.select.i.i241, %bb.bp ], [ %spec.select.i.i241, %bb.bq ]
  store ptr %i.is, ptr %i.ck, align 8, !tbaa !46
  store i32 %spec.select.sink.i.i246, ptr %i.cc, align 8, !tbaa !45
  br label %Vec_StrPush.exit.i238

Vec_StrPush.exit.i238:                            ; preds = %Vec_StrGrow.exit11.sink.split.i.i245, %bb.bn, %.Vec_StrPush.exit_crit_edge.i236
  %i.it = phi ptr [ %.pre.i237, %.Vec_StrPush.exit_crit_edge.i236 ], [ %.pre8.i243, %bb.bn ], [ %i.is, %Vec_StrGrow.exit11.sink.split.i.i245 ]
  %i.iu = add nsw i32 %i.ig, 1
  store i32 %i.iu, ptr %i.ce, align 4, !tbaa !44
  %i.iv = sext i32 %i.ig to i64
  %i.iw = getelementptr inbounds i8, ptr %i.it, i64 %i.iv
  store i8 10, ptr %i.iw, align 1, !tbaa !12
  %.val119.pre = load i32, ptr %i.gd, align 4, !tbaa !37
  br label %Vec_StrPrintStr.exit249

Vec_StrPrintStr.exit249:                          ; preds = %Vec_StrPush.exit.i238, %bb.bi
  %.val119 = phi i32 [ %.val119.pre, %Vec_StrPush.exit.i238 ], [ %.val119324, %bb.bi ] ; 3 uses
  %indvars.iv.next316 = add nuw nsw i64 %indvars.iv315, 1 ; 2 uses
  %i.ix = sext i32 %.val119 to i64
  %i.iy = icmp slt i64 %indvars.iv.next316, %i.ix
  br i1 %i.iy, label %.lr.ph296, label %.critedge4, !llvm.loop !170

.critedge4:                                       ; preds = %.lr.ph296, %Vec_StrPrintStr.exit249
  %.val117297 = phi i32 [ %.val119324, %.lr.ph296 ], [ %.val119, %Vec_StrPrintStr.exit249 ] ; 2 uses
  %i.iz = icmp sgt i32 %.val117297, 0
  br i1 %i.iz, label %.lr.ph300, label %.critedge6

.lr.ph300:                                        ; preds = %.critedge4, %Vec_StrPrintStr.exit266
  %.val117328 = phi i32 [ %.val117, %Vec_StrPrintStr.exit266 ], [ %.val117297, %.critedge4 ] ; 2 uses
  %indvars.iv318 = phi i64 [ %indvars.iv.next319, %Vec_StrPrintStr.exit266 ], [ 0, %.critedge4 ] ; 3 uses
  %.val128 = load ptr, ptr %i.hn, align 8, !tbaa !39
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %.val128, i64 %indvars.iv318
  %i.jb = load i32, ptr %i.ja, align 4, !tbaa !41
  %.val133 = load ptr, ptr %i.a, align 8, !tbaa !40 ; 2 uses
  %i.jc = sext i32 %i.jb to i64
  %i.jd = getelementptr inbounds [12 x i8], ptr %.val133, i64 %i.jc ; 2 uses
  %.not112 = icmp eq ptr %.val133, null
  br i1 %.not112, label %.critedge6, label %bb.br

bb.br:                                            ; preds = %.lr.ph300
  %i.je = sub nsw i32 %.val117328, %4
  %i.jf = sext i32 %i.je to i64
  %.not114 = icmp slt i64 %indvars.iv318, %i.jf
  br i1 %.not114, label %.lr.ph.i250, label %Vec_StrPrintStr.exit266

.lr.ph.i250:                                      ; preds = %bb.br
  %i.jg = load i64, ptr %i.jd, align 4            ; 2 uses
  %i.jh = and i64 %i.jg, 536870911
  %i.ji = sub nsw i64 0, %i.jh
  %i.jj = getelementptr inbounds [12 x i8], ptr %i.jd, i64 %i.ji
  %i.jk = getelementptr i8, ptr %i.jj, i64 8
  %.val146 = load i32, ptr %i.jk, align 4, !tbaa !84
  %i.jl = trunc i64 %i.jg to i32
  %i.jm = lshr i32 %i.jl, 29
  %i.jn = and i32 %i.jm, 1
  %i.jo = shl nsw i32 %.val146, 1
  %i.jp = or disjoint i32 %i.jn, %i.jo
  tail call fastcc void @Vec_StrPrintNum(ptr noundef nonnull %i.cc, i32 noundef %i.jp)
  %i.jq = load i32, ptr %i.ce, align 4, !tbaa !44 ; 7 uses
  %i.jr = load i32, ptr %i.cc, align 8, !tbaa !45
  %i.js = icmp eq i32 %i.jq, %i.jr
  br i1 %i.js, label %bb.bs, label %.Vec_StrPush.exit_crit_edge.i253

.Vec_StrPush.exit_crit_edge.i253:                 ; preds = %.lr.ph.i250
  %.pre.i254 = load ptr, ptr %i.ck, align 8, !tbaa !46
  br label %Vec_StrPush.exit.i255

bb.bs:                                            ; preds = %.lr.ph.i250
  %i.jt = icmp slt i32 %i.jq, 16
  br i1 %i.jt, label %bb.bt, label %bb.bw

bb.bt:                                            ; preds = %bb.bs
  %i.ju = load ptr, ptr %i.ck, align 8, !tbaa !46 ; 2 uses
  %.not9.i.i.i265 = icmp eq ptr %i.ju, null
  br i1 %.not9.i.i.i265, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.jv = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.ju, i64 noundef 16) #30
  br label %Vec_StrGrow.exit11.sink.split.i.i262

bb.bv:                                            ; preds = %bb.bt
  %i.jw = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #28
  br label %Vec_StrGrow.exit11.sink.split.i.i262

bb.bw:                                            ; preds = %bb.bs
  %i.jx = icmp samesign ult i32 %i.jq, 1073741823
  %i.jy = shl nuw nsw i32 %i.jq, 1
  %spec.select.i.i258 = select i1 %i.jx, i32 %i.jy, i32 2147483647 ; 4 uses
  %.not.i9.i.i259 = icmp samesign ult i32 %i.jq, %spec.select.i.i258
  %.pre8.i260 = load ptr, ptr %i.ck, align 8, !tbaa !46 ; 3 uses
  br i1 %.not.i9.i.i259, label %bb.bx, label %Vec_StrPush.exit.i255

bb.bx:                                            ; preds = %bb.bw
  %.not9.i10.i.i261 = icmp eq ptr %.pre8.i260, null
  %i.jz = zext nneg i32 %spec.select.i.i258 to i64 ; 2 uses
  br i1 %.not9.i10.i.i261, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.ka = tail call ptr @realloc(ptr noundef nonnull %.pre8.i260, i64 noundef %i.jz) #30
  br label %Vec_StrGrow.exit11.sink.split.i.i262

bb.bz:                                            ; preds = %bb.bx
  %i.kb = tail call noalias ptr @malloc(i64 noundef %i.jz) #28
  br label %Vec_StrGrow.exit11.sink.split.i.i262

Vec_StrGrow.exit11.sink.split.i.i262:             ; preds = %bb.bz, %bb.by, %bb.bv, %bb.bu
  %i.kc = phi ptr [ %i.jw, %bb.bv ], [ %i.jv, %bb.bu ], [ %i.ka, %bb.by ], [ %i.kb, %bb.bz ] ; 2 uses
  %spec.select.sink.i.i263 = phi i32 [ 16, %bb.bv ], [ 16, %bb.bu ], [ %spec.select.i.i258, %bb.by ], [ %spec.select.i.i258, %bb.bz ]
  store ptr %i.kc, ptr %i.ck, align 8, !tbaa !46
  store i32 %spec.select.sink.i.i263, ptr %i.cc, align 8, !tbaa !45
  br label %Vec_StrPush.exit.i255

Vec_StrPush.exit.i255:                            ; preds = %Vec_StrGrow.exit11.sink.split.i.i262, %bb.bw, %.Vec_StrPush.exit_crit_edge.i253
  %i.kd = phi ptr [ %.pre.i254, %.Vec_StrPush.exit_crit_edge.i253 ], [ %.pre8.i260, %bb.bw ], [ %i.kc, %Vec_StrGrow.exit11.sink.split.i.i262 ]
  %i.ke = add nsw i32 %i.jq, 1
  store i32 %i.ke, ptr %i.ce, align 4, !tbaa !44
  %i.kf = sext i32 %i.jq to i64
  %i.kg = getelementptr inbounds i8, ptr %i.kd, i64 %i.kf
  store i8 10, ptr %i.kg, align 1, !tbaa !12
  %.val117.pre = load i32, ptr %i.gd, align 4, !tbaa !37
  br label %Vec_StrPrintStr.exit266

Vec_StrPrintStr.exit266:                          ; preds = %Vec_StrPush.exit.i255, %bb.br
  %.val117 = phi i32 [ %.val117.pre, %Vec_StrPush.exit.i255 ], [ %.val117328, %bb.br ] ; 2 uses
  %indvars.iv.next319 = add nuw nsw i64 %indvars.iv318, 1 ; 2 uses
  %i.kh = sext i32 %.val117 to i64
  %i.ki = icmp slt i64 %indvars.iv.next319, %i.kh
  br i1 %i.ki, label %.lr.ph300, label %.critedge6, !llvm.loop !171

.critedge6:                                       ; preds = %.lr.ph300, %Vec_StrPrintStr.exit266, %Vec_StrPush.exit.i221, %.critedge4
  %.val302 = load i32, ptr %i.n, align 4, !tbaa !37
  %i.kj = icmp sgt i32 %.val302, 0
  br i1 %i.kj, label %.lr.ph304, label %.lr.ph.i267

.lr.ph304:                                        ; preds = %.critedge6
  %i.kk = getelementptr i8, ptr %2, i64 8
  br label %bb.ca

bb.ca:                                            ; preds = %.lr.ph304, %bb.cb
  %indvars.iv321 = phi i64 [ 0, %.lr.ph304 ], [ %indvars.iv.next322, %bb.cb ] ; 2 uses
  %.val132 = load ptr, ptr %i.a, align 8, !tbaa !40 ; 2 uses
  %.not113 = icmp eq ptr %.val132, null
  br i1 %.not113, label %.lr.ph.i267, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %.val127 = load ptr, ptr %i.kk, align 8, !tbaa !39
  %i.kl = getelementptr inbounds nuw [4 x i8], ptr %.val127, i64 %indvars.iv321
  %i.km = load i32, ptr %i.kl, align 4, !tbaa !41
  %i.kn = sext i32 %i.km to i64
  %i.ko = getelementptr inbounds [12 x i8], ptr %.val132, i64 %i.kn ; 4 uses
  %i.kp = getelementptr i8, ptr %i.ko, i64 8
  %.val145 = load i32, ptr %i.kp, align 4, !tbaa !84
  %i.kq = shl nsw i32 %.val145, 1
  %i.kr = load i64, ptr %i.ko, align 4            ; 4 uses
  %i.ks = and i64 %i.kr, 536870911
  %i.kt = sub nsw i64 0, %i.ks
  %i.ku = getelementptr inbounds [12 x i8], ptr %i.ko, i64 %i.kt
  %i.kv = getelementptr i8, ptr %i.ku, i64 8
  %.val144 = load i32, ptr %i.kv, align 4, !tbaa !84
  %i.kw = trunc i64 %i.kr to i32
  %i.kx = lshr i32 %i.kw, 29
  %i.ky = and i32 %i.kx, 1
  %i.kz = shl nsw i32 %.val144, 1
  %i.la = or disjoint i32 %i.ky, %i.kz            ; 2 uses
  %i.lb = lshr i64 %i.kr, 32
  %i.lc = and i64 %i.lb, 536870911
  %i.ld = sub nsw i64 0, %i.lc
  %i.le = getelementptr inbounds [12 x i8], ptr %i.ko, i64 %i.ld
  %i.lf = getelementptr i8, ptr %i.le, i64 8
  %.val143 = load i32, ptr %i.lf, align 4, !tbaa !84
  %i.lg = lshr i64 %i.kr, 61
  %i.lh = trunc nuw nsw i64 %i.lg to i32
  %i.li = and i32 %i.lh, 1
  %i.lj = shl nsw i32 %.val143, 1
  %i.lk = or disjoint i32 %i.lj, %i.li            ; 2 uses
  %spec.select = tail call i32 @llvm.smin.i32(i32 %i.la, i32 %i.lk)
  %spec.select115 = tail call i32 @llvm.smax.i32(i32 %i.la, i32 %i.lk) ; 2 uses
  %i.ll = sub nsw i32 %i.kq, %spec.select115
  tail call fastcc void @Gia_AigerWriteUnsigned(ptr noundef nonnull %i.cc, i32 noundef %i.ll)
  %i.lm = sub nsw i32 %spec.select115, %spec.select
  tail call fastcc void @Gia_AigerWriteUnsigned(ptr noundef nonnull %i.cc, i32 noundef %i.lm)
  %indvars.iv.next322 = add nuw nsw i64 %indvars.iv321, 1 ; 2 uses
  %.val = load i32, ptr %i.n, align 4, !tbaa !37
  %i.ln = sext i32 %.val to i64
  %i.lo = icmp slt i64 %indvars.iv.next322, %i.ln
  br i1 %i.lo, label %bb.ca, label %.lr.ph.i267, !llvm.loop !172

.lr.ph.i267:                                      ; preds = %bb.cb, %bb.ca, %.critedge6
  %i.lp = load i32, ptr %i.ce, align 4, !tbaa !44 ; 7 uses
  %i.lq = load i32, ptr %i.cc, align 8, !tbaa !45
  %i.lr = icmp eq i32 %i.lp, %i.lq
  br i1 %i.lr, label %bb.cc, label %.Vec_StrPush.exit_crit_edge.i270

.Vec_StrPush.exit_crit_edge.i270:                 ; preds = %.lr.ph.i267
  %.pre.i271 = load ptr, ptr %i.ck, align 8, !tbaa !46
  br label %Vec_StrPush.exit.i272

bb.cc:                                            ; preds = %.lr.ph.i267
  %i.ls = icmp slt i32 %i.lp, 16
  br i1 %i.ls, label %bb.cd, label %bb.cg

bb.cd:                                            ; preds = %bb.cc
  %i.lt = load ptr, ptr %i.ck, align 8, !tbaa !46 ; 2 uses
  %.not9.i.i.i282 = icmp eq ptr %i.lt, null
  br i1 %.not9.i.i.i282, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.lu = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.lt, i64 noundef 16) #30
  br label %Vec_StrGrow.exit11.sink.split.i.i279

bb.cf:                                            ; preds = %bb.cd
  %i.lv = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #28
  br label %Vec_StrGrow.exit11.sink.split.i.i279

bb.cg:                                            ; preds = %bb.cc
  %i.lw = icmp samesign ult i32 %i.lp, 1073741823
  %i.lx = shl nuw nsw i32 %i.lp, 1
  %spec.select.i.i275 = select i1 %i.lw, i32 %i.lx, i32 2147483647 ; 4 uses
  %.not.i9.i.i276 = icmp samesign ult i32 %i.lp, %spec.select.i.i275
  %.pre8.i277 = load ptr, ptr %i.ck, align 8, !tbaa !46 ; 3 uses
  br i1 %.not.i9.i.i276, label %bb.ch, label %Vec_StrPush.exit.i272

bb.ch:                                            ; preds = %bb.cg
  %.not9.i10.i.i278 = icmp eq ptr %.pre8.i277, null
  %i.ly = zext nneg i32 %spec.select.i.i275 to i64 ; 2 uses
  br i1 %.not9.i10.i.i278, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.lz = tail call ptr @realloc(ptr noundef nonnull %.pre8.i277, i64 noundef %i.ly) #30
  br label %Vec_StrGrow.exit11.sink.split.i.i279

bb.cj:                                            ; preds = %bb.ch
  %i.ma = tail call noalias ptr @malloc(i64 noundef %i.ly) #28
  br label %Vec_StrGrow.exit11.sink.split.i.i279

Vec_StrGrow.exit11.sink.split.i.i279:             ; preds = %bb.cj, %bb.ci, %bb.cf, %bb.ce
  %i.mb = phi ptr [ %i.lv, %bb.cf ], [ %i.lu, %bb.ce ], [ %i.lz, %bb.ci ], [ %i.ma, %bb.cj ] ; 2 uses
  %spec.select.sink.i.i280 = phi i32 [ 16, %bb.cf ], [ 16, %bb.ce ], [ %spec.select.i.i275, %bb.ci ], [ %spec.select.i.i275, %bb.cj ]
  store ptr %i.mb, ptr %i.ck, align 8, !tbaa !46
  store i32 %spec.select.sink.i.i280, ptr %i.cc, align 8, !tbaa !45
  br label %Vec_StrPush.exit.i272

Vec_StrPush.exit.i272:                            ; preds = %Vec_StrGrow.exit11.sink.split.i.i279, %bb.cg, %.Vec_StrPush.exit_crit_edge.i270
  %i.mc = phi ptr [ %.pre.i271, %.Vec_StrPush.exit_crit_edge.i270 ], [ %.pre8.i277, %bb.cg ], [ %i.mb, %Vec_StrGrow.exit11.sink.split.i.i279 ]
  %i.md = add nsw i32 %i.lp, 1
  store i32 %i.md, ptr %i.ce, align 4, !tbaa !44
  %i.me = sext i32 %i.lp to i64
  %i.mf = getelementptr inbounds i8, ptr %i.mc, i64 %i.me
  store i8 99, ptr %i.mf, align 1, !tbaa !12
  ret ptr %i.cc
}

; Function Attrs: nounwind uwtable
define void @Gia_AigerWriteS(ptr noundef %0, ptr noundef %1, i32 %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #8 {
bb.a:
  %i.a = alloca [5 x i8], align 1                 ; 7 uses
  %i.b = alloca [5 x i8], align 1                 ; 7 uses
  %i.c = alloca [5 x i8], align 1                 ; 7 uses
  %i.d = alloca [5 x i8], align 1                 ; 7 uses
  %i.e = alloca [5 x i8], align 1                 ; 7 uses
  %i.f = alloca [5 x i8], align 1                 ; 7 uses
  %i.g = alloca [5 x i8], align 1                 ; 7 uses
  %i.h = alloca [5 x i8], align 1                 ; 7 uses
  %i.i = alloca [5 x i8], align 1                 ; 7 uses
  %i.j = alloca [5 x i8], align 4                 ; 4 uses
  %i.k = alloca [5 x i8], align 4                 ; 4 uses
  %i.l = alloca [5 x i8], align 4                 ; 4 uses
  %i.m = alloca [5 x i8], align 4                 ; 4 uses
  %i.n = alloca [5 x i8], align 4                 ; 4 uses
  %i.o = alloca [5 x i8], align 4                 ; 4 uses
  %i.p = alloca [5 x i8], align 4                 ; 4 uses
  %i.q = alloca [5 x i8], align 4                 ; 4 uses
  %i.r = alloca [5 x i8], align 1                 ; 7 uses
  %i.s = alloca [5 x i8], align 1                 ; 7 uses
  %i.t = alloca [5 x i8], align 1                 ; 7 uses
  %i.u = alloca [5 x i8], align 1                 ; 7 uses
  %i.v = alloca [5 x i8], align 1                 ; 7 uses
  %i.w = alloca [5 x i8], align 1                 ; 7 uses
  %i.x = alloca [5 x i8], align 1                 ; 7 uses
  %i.y = alloca [5 x i8], align 1                 ; 7 uses
  %i.z = alloca [5 x i8], align 1                 ; 7 uses
  %i.aa = alloca [5 x i8], align 1                ; 7 uses
  %i.ab = alloca [5 x i8], align 1                ; 7 uses
  %i.ac = alloca [5 x i8], align 1                ; 7 uses
  %i.ad = alloca [5 x i8], align 1                ; 7 uses
  %i.ae = alloca [5 x i8], align 1                ; 7 uses
  %i.af = alloca [5 x i8], align 1                ; 7 uses
  %i.ag = alloca [5 x i8], align 1                ; 7 uses
  %i.ah = alloca [5 x i8], align 1                ; 7 uses
  %i.ai = alloca [5 x i8], align 1                ; 7 uses
  %i.aj = alloca [5 x i8], align 1                ; 7 uses
  %i.ak = alloca [5 x i8], align 1                ; 7 uses
  %i.al = alloca [5 x i8], align 1                ; 7 uses
  %i.am = alloca [5 x i8], align 1                ; 7 uses
  %i.an = alloca [5 x i8], align 1                ; 7 uses
  %i.ao = alloca [5 x i8], align 1                ; 7 uses
  %i.ap = alloca [5 x i8], align 4                ; 4 uses
  %i.aq = alloca [5 x i8], align 1                ; 7 uses
  %i.ar = alloca [5 x i8], align 4                ; 4 uses
  %i.as = alloca [5 x i8], align 1                ; 7 uses
  %i.at = getelementptr i8, ptr %0, i64 72
  %.val698 = load ptr, ptr %i.at, align 8, !tbaa !36
  %i.au = getelementptr i8, ptr %.val698, i64 4
  %.val698.val = load i32, ptr %i.au, align 4, !tbaa !37
  %i.av = icmp eq i32 %.val698.val, 0
  br i1 %i.av, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %puts593 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.8) ; 0 uses
  br label %bb.db

bb.c:                                             ; preds = %bb.a
  %i.aw = tail call noalias ptr @fopen(ptr noundef %1, ptr noundef nonnull @.str.58) ; 105 uses
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ay = load ptr, ptr @stdout, align 8, !tbaa !48
  %i.az = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ay, ptr noundef nonnull @.str.59, ptr noundef %1) #29 ; 0 uses
  br label %bb.db

bb.e:                                             ; preds = %bb.c
  %i.ba = tail call i32 @Gia_ManIsNormalized(ptr noundef nonnull %0) #29
  %.not = icmp eq i32 %i.ba, 0
  br i1 %.not, label %bb.f, label %._crit_edge894

._crit_edge894:                                   ; preds = %bb.e
  %.phi.trans.insert = getelementptr i8, ptr %0, i64 172
  %.0473.val702.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !49
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bb = tail call ptr @Gia_ManDupNormalize(ptr noundef nonnull %0, i32 noundef 0) #29 ; 5 uses
  tail call void @Gia_ManTransferMapping(ptr noundef %i.bb, ptr noundef nonnull %0) #29
  tail call void @Gia_ManTransferPacking(ptr noundef %i.bb, ptr noundef nonnull %0) #29
  tail call void @Gia_ManTransferTiming(ptr noundef %i.bb, ptr noundef nonnull %0) #29
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 172
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !49 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 172
  store i32 %i.bd, ptr %i.be, align 4, !tbaa !49
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge894, %bb.f
  %.0473.val702 = phi i32 [ %i.bd, %bb.f ], [ %.0473.val702.pre, %._crit_edge894 ]
  %.0473 = phi ptr [ %i.bb, %bb.f ], [ %0, %._crit_edge894 ] ; 45 uses
  %.not494 = icmp eq i32 %3, 0                    ; 2 uses
  %i.bf = select i1 %.not494, ptr @.str.62, ptr @.str.61
  %i.bg = getelementptr i8, ptr %.0473, i64 64    ; 5 uses
  %.0473.val697 = load ptr, ptr %i.bg, align 8, !tbaa !50
  %i.bh = getelementptr i8, ptr %.0473.val697, i64 4
  %.0473.val697.val = load i32, ptr %i.bh, align 4, !tbaa !37 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.0473, i64 24 ; 17 uses
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !57
  %i.bk = getelementptr inbounds nuw i8, ptr %.0473, i64 72 ; 8 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !36
  %i.bm = getelementptr i8, ptr %i.bl, i64 4
  %.val.i = load i32, ptr %i.bm, align 4, !tbaa !37 ; 2 uses
  %i.bn = add i32 %.val.i, %.0473.val697.val
  %i.bo = xor i32 %i.bn, -1
  %i.bp = add i32 %i.bj, %i.bo                    ; 2 uses
  %i.bq = add nsw i32 %i.bp, %.0473.val697.val
  %i.br = getelementptr i8, ptr %.0473, i64 16    ; 13 uses
  %.0473.val686 = load i32, ptr %i.br, align 8, !tbaa !35 ; 3 uses
  %i.bs = sub nsw i32 %.0473.val697.val, %.0473.val686
  %i.bt = getelementptr i8, ptr %.0473, i64 172   ; 3 uses
  %.not495 = icmp eq i32 %.0473.val702, 0
  %i.bu = sub nsw i32 %.val.i, %.0473.val686
  %spec.select = select i1 %.not495, i32 %i.bu, i32 0
  %i.bv = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.aw, ptr noundef nonnull @.str.60, ptr noundef nonnull %i.bf, i32 noundef %i.bq, i32 noundef %i.bs, i32 noundef %.0473.val686, i32 noundef %spec.select, i32 noundef %i.bp) #29 ; 0 uses
  %.0473.val701 = load i32, ptr %i.bt, align 4, !tbaa !49 ; 3 uses
  %.not496 = icmp eq i32 %.0473.val701, 0
  br i1 %.not496, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.0473.val614 = load i32, ptr %i.br, align 8, !tbaa !35
  %.0473.val615 = load ptr, ptr %i.bk, align 8, !tbaa !36
  %i.bw = getelementptr i8, ptr %.0473.val615, i64 4
  %.0473.val615.val = load i32, ptr %i.bw, align 4, !tbaa !37
  %i.bx = add i32 %.0473.val614, %.0473.val701
  %i.by = sub i32 %.0473.val615.val, %i.bx
  %i.bz = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.aw, ptr noundef nonnull @.str.63, i32 noundef %i.by, i32 noundef %.0473.val701) #29 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %fputc = tail call i32 @fputc(i32 10, ptr nonnull %i.aw) ; 0 uses
  tail call void @Gia_ManInvertConstraints(ptr noundef nonnull %.0473) #29
  br i1 %.not494, label %.preheader767, label %bb.l

end_hunk_0
